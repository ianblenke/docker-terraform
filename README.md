# ianblenke/terraform

## What is terraform

Terraform provides a common configuration to launch infrastructure — from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

[http://www.terraform.io/](http://www.terraform.io/)

## Dockerfile

[**Trusted Build**](https://registry.hub.docker.com/u/ianblenke/terraform/)

This Docker image is based on the [progrium/busybox](https://registry.hub.docker.com/u/progrium/busybox/) base image.

## How to use this image

```
docker run -rm ianblenke/terraform <additional param>
```

## Using

**Please note: Create by your Terraform configuration files (.tf) is `/data` directory**

### terraform plan

```
docker run -v /etc/ssl/certs:/etc/ssl/certs:ro -v /data:/data ianblenke/terraform plan
```

### terraform apply

```
docker run -v /etc/ssl/certs:/etc/ssl/certs:ro -v /data:/data ianblenke/terraform apply
```

### terraform show

```
docker run -v /data:/data ianblenke/terraform show terraform.tfstate
```

### terraform graph

```
docker run -v /data:/data ianblenke/terraform graph
```

### terraform output

```
docker run -v /data:/data ianblenke/terraform output [options] NAME
```

### terraform refresh

```
docker run -v /etc/ssl/certs:/etc/ssl/certs:ro -v /data:/data ianblenke/terraform refresh
```

### terraform version

```
docker run ianblenke/terraform version
```

