


docker run --rm -it -v $PWD:/data -w /data hashicorp/terraform:light init

docker run --rm -it -v $PWD:/data -w /data hashicorp/terraform:light plan

docker run --rm -it -v $PWD:/data -w /data hashicorp/terraform:light apply
