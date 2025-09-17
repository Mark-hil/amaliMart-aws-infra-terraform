data "aws_acm_certificate" "existing" {
  count    = var.create_certificate ? 0 : 1
  domain   = "*.${var.domain_name}"
  statuses = ["ISSUED"]
  most_recent = true
}

resource "aws_acm_certificate" "cert" {
  count             = var.create_certificate ? 1 : 0
  domain_name       = "*.${var.domain_name}"
  validation_method = "DNS"
  
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "${var.project_name}-certificate"
  }
}

locals {
  certificate_arn = var.certificate_arn != "" ? var.certificate_arn : (
    var.create_certificate ? aws_acm_certificate.cert[0].arn : (
      length(data.aws_acm_certificate.existing) > 0 ? data.aws_acm_certificate.existing[0].arn : ""
    )
  )
}

resource "aws_route53_record" "cert_validation" {
  for_each = var.create_certificate ? {
    for dvo in aws_acm_certificate.cert[0].domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  } : {}


  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.this.zone_id
}

resource "aws_acm_certificate_validation" "cert_validation" {
  count                   = var.create_certificate ? 1 : 0
  certificate_arn         = aws_acm_certificate.cert[0].arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
}

data "aws_route53_zone" "this" {
  name         = var.domain_name
  private_zone = false
}
