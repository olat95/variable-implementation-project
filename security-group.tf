# create security group for the application load balancer
# terraform aws create security group
resource "aws_security_group" "alb_security_group" {
    name        = "ALB_SECURITY_GROUP"
    description = "enable http/https access on port 80/443"
    vpc_id      = aws_vpc.vpc.id

    ingress {
        description      = "http access"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "https access"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0    
        to_port          = 0
        protocol         = -1
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags   = {
        Name = "${var.project_name}-${var.environment}-ALB-SG"
    }
}

# create security group for the bastion host aka jump box
# terraform aws create security group
resource "aws_security_group" "ssh_security_group" {
    name        = "SSH_security_group"
    description = "enable ssh access on port 22"
    vpc_id      = aws_vpc.vpc.id

    ingress {
        description      = "ssh access"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = [var.ssh_location]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = -1
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags   = {
        Name = "${var.project_name}-${var.environment}-SSH-SG"
    }
}

# create security group for the web server
# terraform aws create security group
resource "aws_security_group" "webserver_security_group" {
    name        = "webserver_security_group"
    description = "enable http/https access on port 80/443 via alb sg and access on port 22 via ssh sg"
    vpc_id      = aws_vpc.vpc.id

    ingress {
        description      = "http access"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        security_groups  = [aws_security_group.alb_security_group.id]
    }

    ingress {
        description      = "https access"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        security_groups  = [aws_security_group.alb_security_group.id]
    }

    ingress {
        description      = "ssh access"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        security_groups  = [aws_security_group.ssh_security_group]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = -1
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags   = {
        Name = "${var.project_name}-${var.environment}-webserver-SG"
    }
}

# create security group for the database
# terraform aws create security group
resource "aws_security_group" "database_security_group" {
    name        = "database_security_group"
    description = "enable mysql/aurora access on port 3306"
    vpc_id      = aws_vpc.vpc.id

    ingress {
        description      = 
        from_port        = 
        to_port          = 
        protocol         = 
        security_groups  = 
    }

    egress {
        from_port        = 
        to_port          = 
        protocol         = 
        cidr_blocks      = 
    }

    tags   = {
        Name = 
    }
}