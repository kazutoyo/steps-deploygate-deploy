#!/bin/bash

#!/bin/bash

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

APP_BINARY_PATH="$app_binary_path"
DEPLOYGATE_USER_NAME="$deploy_gate_user_name"
DEPLOYGATE_API_KEY="$deploy_gate_api_key"
DEPLOYGATE_DISTRIBUTION_KEY="$deploy_gate_distribution_key"
DEPLOY_GATE_INSTALL_URL="$deploy_gate_install_url"

echo "***************************"
echo "* Uploading to DeployGate *"
echo "***************************"

echo "curl https://deploygate.com/api/users/$DEPLOYGATE_USER_NAME/apps"
curl https://deploygate.com/api/users/$DEPLOYGATE_USER_NAME/apps \
--form file="@$APP_BINARY_PATH" \
--form-string token="$DEPLOYGATE_API_KEY" \
--form-string distribution_key="$DEPLOYGATE_DISTRIBUTION_KEY" \

envman add --key DEPLOY_GATE_INSTALL_URL --value "${DEPLOY_GATE_INSTALL_URL}"