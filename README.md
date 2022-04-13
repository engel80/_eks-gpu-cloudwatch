# eks-gpu-cloudwatch

Reference
https://aws.amazon.com/ko/blogs/machine-learning/monitoring-gpu-utilization-with-amazon-cloudwatch/


apt install git -y


apt update
apt install vim -y

mkdir gpumon
cd gpumon
wget https://raw.githubusercontent.com/engel80/eks-gpu-cloudwatch/metric-test/gpumon.py
wget https://raw.githubusercontent.com/engel80/eks-gpu-cloudwatch/metric-test/requirements.txt
pip install -r requirements.txt
python gpumon.py

