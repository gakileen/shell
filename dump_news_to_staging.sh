#!/bin/sh

echo "dump prod news"
scp deployer@ldkjserver0014:/home/deployer/chendx/mongo_dump/recs/*news* /Users/acmac/xxx/mongo_dump/recs/

echo "restore cn.news to staging"
mongorestore --host localhost --port 27017 --db recs --collection cn.news mongo_dump/recs/cn.news.bson

echo "restore en.news to staging"
mongorestore --host localhost --port 27017 --db recs --collection en.news mongo_dump/recs/en.news.bson
