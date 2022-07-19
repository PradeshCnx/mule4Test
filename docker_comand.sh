docker run \
	--volume=/var/lib/drone:/data \
	--env=DRONE_GITHUB_CLIENT_ID=34f5ad51fd6e27591149 \
	--env=DRONE_GITHUB_CLIENT_SECRET=f961bb28aa105ba5669440aebeaaae71d2bd6490 \
	--env=DRONE_RPC_SECRET=4c5cc359c70b2588bdcd40398ee9ff43 \
	--env=DRONE_SERVER_HOST=ec2-35-161-1-70.us-west-2.compute.amazonaws.com \
	--publish=80:80 \
	--publish=443:443 \
	--restart=always \
	--detach=true \
	--name=drone1 \
	drone/drone:latest
