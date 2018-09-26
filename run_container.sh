ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /tmp/admin.key admin@comparedfared.corp.gq1.yahoo.com 'sudo docker rm -f poc-alpr-webapp' 2>&1
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /tmp/admin.key admin@comparedfared.corp.gq1.yahoo.com 'sudo docker run -d -e "HOST_HOSTNAME=$(hostname)" -e "CAMERA_URL=$(sudo cat /etc/peg_cam_url)" --entrypoint /app/app.py -p 80:80 --name poc-alpr-webapp docker-registry.ops.yahoo.com:4443/mec/poc-alpr-webapp' 2>&1