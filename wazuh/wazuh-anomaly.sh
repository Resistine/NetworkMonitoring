curl https://artifacts.opensearch.org/releases/bundle/opensearch-dashboards/2.6.0/opensearch-dashboards-2.6.0-linux-x64.tar.gz -o opensearch-dashboards.tar.gz

tar -xvzf opensearch-dashboards.tar.gz

cp -r opensearch-dashboards-2.6.0/plugins/anomalyDetectionDashboards/ /usr/share/wazuh-dashboard/plugins/

rm -rf opensearch-dashboards-2.6.0/ opensearch-dashboards.tar.gz

chown -R wazuh-dashboard:wazuh-dashboard /usr/share/wazuh-dashboard/plugins/anomalyDetectionDashboards/
chmod -R 750 /usr/share/wazuh-dashboard/plugins/anomalyDetectionDashboards/

systemctl restart wazuh-dashboard

sudo -u wazuh-dashboard /usr/share/wazuh-dashboard/bin/opensearch-dashboards-plugin list