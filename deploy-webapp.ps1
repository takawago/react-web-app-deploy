LOCATION=japaneast
WEBAPP_NAME=takawago-webapp-210602
ASP_NAME=takawago-plan-210602
RESOURCE_GROUP_NAME=00-react-210602

az group create --name $RESOURCE_GROUP_NAME  --location $LOCATION
az appservice plan create --name $ASP_NAME --resource-group $RESOURCE_GROUP_NAME --sku P1V2
az webapp create --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP_NAME --plan $ASP_NAME