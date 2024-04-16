#resource "aws_route53_zone" "Route53HostedZone" {
#    name = "elections.meraid.pk."
#}


resource "aws_route53_record" "Route53RecordSet6" {
    name = "dev1.elections.meraid.pk."
    type = "A"
    alias {
        name = aws_cloudfront_distribution.s3_distribution.domain_name
        zone_id = "Z2FDTNDATAQYW2"
        evaluate_target_health = false
    }
    zone_id = "Z08362553I37GX9WM59IB"
}

resource "aws_route53_record" "Route53RecordSet7" {
    name = "dev2.elections.meraid.pk."
    type = "A"
    alias {
        name = aws_cloudfront_distribution.elections_dev1_distribution.domain_name
        zone_id = "Z2FDTNDATAQYW2"
        evaluate_target_health = false
    }
    zone_id = "Z08362553I37GX9WM59IB"
}

resource "aws_route53_record" "Route53RecordSet8" {
    name = "dev3.elections.meraid.pk."
    type = "A"
    alias {
        name = aws_cloudfront_distribution.elections_dev2_distribution.domain_name
        zone_id = "Z2FDTNDATAQYW2"
        evaluate_target_health = false
    }
    zone_id = "Z08362553I37GX9WM59IB"
}

resource "aws_route53_record" "Route53RecordSet9" {
    name = "dev4.elections.meraid.pk."
    type = "A"
    alias {
        name = aws_cloudfront_distribution.elections_dev3_distribution.domain_name
        zone_id = "Z2FDTNDATAQYW2"
        evaluate_target_health = false
    }
    zone_id = "Z08362553I37GX9WM59IB"
}