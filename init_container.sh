#! /bin/bash
docker pull boredazfcuk/icloudpd
docker create \
   --name icloudpd \
   --env TZ=America/Los_Angeles \
   --volume $(pwd)/config:/config \
   --volume $(pwd)/iCloud:/home/user/iCloud \
   boredazfcuk/icloudpd
