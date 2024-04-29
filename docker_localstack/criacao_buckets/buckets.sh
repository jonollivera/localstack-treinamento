#! /bin/bash

ENDPOINT_URL="http://localhost:4566"

create_bucket(){
    aws --endpoint-url="$ENDPOINT_URL" s3 mb s3://$1
}

verify_buckets(){
    aws --endpoint-url="$ENDPOINT_URL" s3 ls
}

echo "Criando Buckets..."
create_bucket "landing-zone"
create_bucket "bronze"
create_bucket "silver"
create_bucket "gold"

echo "Verificando buckets criados"

verify_buckets