# Generate a systemctl command to restart a service and check its status.
SERVICE_NAME="your_service_name"
echo "sudo systemctl restart $SERVICE_NAME"
echo "sudo systemctl status $SERVICE_NAME"