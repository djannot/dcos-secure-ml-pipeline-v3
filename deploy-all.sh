dcos package install --yes --cli dcos-enterprise-cli
./deploy-kubernetes.sh
./deploy-hdfs-zookeeper-kafka-and-spark.sh
./deploy-nifi.sh
./deploy-gitlab.sh
./deploy-jenkins.sh
#./create-model.sh
#./check-spark-jobs-finished.sh
#./generate-messages.sh
./post-deploy-nifi.sh
./deploy-jupyterlab.sh
./post-deploy-jupyterlab.sh
./deploy-edgelb.sh
sleep 15
./post-deploy-kubernetes.sh
./update-etc-hosts-for-nifi.sh
./update-nifi-permissions.sh
./set-quota.sh
