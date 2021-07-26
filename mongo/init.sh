# ! update mongodb user for authentication
echo "Creating mongo user..."
sleep 10
export $(sed 's/[[:blank:]]//g; /^#/d' .env | xargs)
docker exec -it mongodb bash -c "mongo $MONGO_DB_NAME \
         -u $MONGO_USERNAME \
         -p $MONGO_PASSWORD \
         --authenticationDatabase admin \
         --eval 'db.createUser({user: \"$MONGO_USERNAME\", pwd: \"$MONGO_PASSWORD\", roles:[{role:\"userAdminAnyDatabase\", db: \"admin\"}]});
                db.grantRolesToUser(\"$MONGO_USERNAME\",[{ role: \"root\", db: \"admin\" }]);'"
echo "Mongo user created."