# Terraform with AWS

## Install

```bash
cd ~/Downloads
wget https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_386.zip
unzip terraform_1.6.2_linux_386.zip
sudo mv terraform /usr/local/bin/
sudo rm terraform_1.6.2_linux_386.zip
# verify
terraform --version
# Create alias
alias tf=terraform
```

## Management Credentials

Agregar las credenciales de AWS en el archivo `~/.aws/credentials`:

```bash
[default]
aws_access_key_id = <your_access_key_id>
aws_secret_access_key = <your_secret_access_key>
```

Set credentials on provider

```hcl
provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform"
}
```

- [How to make terraform toread aws credentials](https://stackoverflow.com/questions/64124063/how-to-make-terraform-to-read-aws-credentials-file)
- [Shared Configuration and Credentials Files](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#shared-configuration-and-credentials-files)

## Free Courses

- Udemy:
  - [terraform en 59 minutos](https://www.udemy.com/course/terraform-en-59-minutos/)
  - [curso básico de terraform y aws para devops](https://www.udemy.com/course/curso-basico-de-terraform-y-aws-para-devops/)
  - [terraform 101](https://www.udemy.com/course/terraform-101/)
  - [terraform aws](https://www.udemy.com/course/terraform-aws/)
  - [terraform gcp](https://www.udemy.com/course/terraform-gcp/)
openwebinars:
  - [Curso de Terraform Online](https://openwebinars.net/cursos/terraform/)
- Coursera:
  - [aprendiendo-terraform](https://www.coursera.org/projects/aprendiendo-terraform)
- YouTube
  - [Curso Completo De Terraform - Javier Pinilla](https://www.youtube.com/watch?v=Z94DYoF5ufg)
  - [Curso de Terraform en Español](https://www.youtube.com/watch?v=jV-Br83-QV4)
  - [Curso de Terraform- Cultura DevOps](https://www.youtube.com/watch?v=ht2KJ_SS23Q&list=PLdOotbFwzDIhKD5XPOI0vNeZ9rbzGU0EH)

## References

- [Terraform](https://www.terraform.io/)
- [Install Terraform](https://www.youtube.com/watch?v=aNd6JBnS0us)
- [terraform-aws-foundation](https://github.com/fpco/terraform-aws-foundation/blob/master/examples/ad-ec2/README.md)
