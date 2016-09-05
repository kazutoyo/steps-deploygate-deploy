#!/bin/bash

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "==== VARIABLE ======"
echo $APP_BINARY_PATH
echo $DEPLOYGATE_USER_NAME
echo $DEPLOYGATE_API_KEY
echo $DEPLOYGATE_DISTRIBUTION_KEY
echo $DEPLOYGATE_INSTALL_URL
echo "==================="

echo "***************************"
echo "* Uploading to DeployGate *"
echo "***************************"

echo "curl https://deploygate.com/api/users/$DEPLOYGATE_USER_NAME/apps"
curl https://deploygate.com/api/users/$DEPLOYGATE_USER_NAME/apps \
--form file="@$APP_BINARY_PATH" \
--form-string token="$DEPLOYGATE_API_KEY" \
--form-string distribution_key="$DEPLOYGATE_DISTRIBUTION_KEY" \

envman add --key DEPLOY_GATE_INSTALL_URL --value "${DEPLOY_GATE_INSTALL_URL}"