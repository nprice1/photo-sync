docker run \
   --name icloudpd \
   --env TZ=America/Los_Angeles \
   --volume $(pwd)/config:/config \
   --volume $(pwd)/iCloud:/home/user/iCloud \
   icloudpd/icloudpd \
   icloudpd --username senshuponbiki@gmail.com --directory /home/user/iCloud
