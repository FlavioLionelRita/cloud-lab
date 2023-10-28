# CLI

## AWS CLI

Install:

```sh
cd ~
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# Verify
aws --version
```

## Install Session Manager complement for AWS CLI

```sh
cd ~/Downloads
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb
# Verify
session-manager-plugin
```

## Configure AWS CLI

### Credentials

Se crean clave de acceso y clave secreta en IAM para el usuario devops (/IAM/Users/devops/Security credentials/Access keys)
Set on ~/.aws\credentials

### Config

Se crea la configuración en el archivo ~/.aws/config

```sh
[default]
region=eu-west-1
output=json

[profile user1]
region=eu-west-1
output=json
```

### Verify

```sh
aws s3 ls --profile devops
```

## References

- Install:
  - [Install AWS CLI](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-install.html)
  - [Install Session Manager complement](https://docs.aws.amazon.com/es_es/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
- Configuration:
  - [Configuración de la AWS CLI](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-quickstart.html)
  - [quick start](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-quickstart.html)
  - [Autenticar con credenciales de usuario de IAM](https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-authentication-user.html)
  