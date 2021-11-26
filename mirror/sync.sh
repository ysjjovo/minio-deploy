#!/bin/sh
S3_ENDPOINT=http://192.168.111.172:9000
S3_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE
S3_SECURITY_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
S3_BUCKET=aaa
mc alias set devs3 $S3_ENDPOINT $S3_ACCESS_KEY $S3_SECURITY_KEY
mc alias set locals3 http://localhost:9000 minio minio123
mc mirror --preserve devs3/aaa/ locals3/aaa