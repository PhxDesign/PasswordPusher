# Container Release Cheat Sheet

cd pwpush-mysql

docker build --no-cache -t phxdesign/pwpush-mysql:<version> .

docker push phxdesign/pwpush-mysql:<version>

docker tag <tag> phxdesign/pwpush-mysql:latest

docker push phxdesign/pwpush-mysql:latest

cd pwpush-ephemeral
docker build --no-cache -t phxdesign/pwpush-ephemeral:<version> .
docker push phxdesign/pwpush-ephemeral:<version>
docker tag <tag> phxdesign/pwpush-ephemeral:latest
docker push pglombardo/pwpush-ephemeral:latest

docker tag phxdesign/pwpush-ephemeral:1.10.2 pglombardo/pwpush-ephemeral:release
docker tag phxdesign/pwpush-postgres:1.10.2 pglombardo/pwpush-postgres:release
docker tag phxdesign/pwpush-mysql:1.10.2 pglombardo/pwpush-mysql:release
