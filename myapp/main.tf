terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}


resource "aws_instance" "serveur_web" {
  ami           = "ami-00c711575ca15c507" 
  instance_type = "t3.micro"              

  
  tags = {
    Name = "MonServeurDevOpsJunior"
  }
  
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              # Ici, vous pourriez ajouter la commande pour lancer votre conteneur Docker
              EOF
}

output "adresse_ip_publique" {
  value       = aws_instance.serveur_web.public_ip
  description = "L'adresse IP pour se connecter au serveur"
}