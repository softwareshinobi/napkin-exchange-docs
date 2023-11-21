##

echo "printing user list"

curl -X GET http://localhost:4444/account

##

echo "creating sasuke user"

curl -X POST -H "Content-Type: application/json" -d '{"username":"sasuke","email":"linuxize@example.com"}' http://localhost:4444/account/create

##

echo "printing user list"

curl -X GET http://localhost:4444/account

##

echo "print sasuke detail"

curl -X GET http://localhost:4444/account/sasuke

echo  "giving sasuke a milli"

curl -X POST -H "Content-Type: application/json" -d '{"username":"sasuke","amountToAdd":1000000}' http://localhost:4444/account/deposit

echo "print sasuke detail"

curl -X GET http://localhost:4444/account/sasuke

##

echo "going all in on pandora"

curl -X POST -H "Content-Type: application/json" -d '{"username":"sasuke","ticker":"PANDORA","sharesToBuy":100}' http://localhost:4444/api/v1/inventory/buy/market

echo "print sasuke detail"

curl -X GET http://localhost:4444/account/sasuke

##

echo "sell some pandora"

curl -X POST -H "Content-Type: application/json" -d '{"username":"sasuke","ticker":"PANDORA","sharesToSell":100}' http://localhost:4444/api/v1/inventory/sell

echo "print sasuke detail"

curl -X GET http://localhost:4444/account/sasuke
