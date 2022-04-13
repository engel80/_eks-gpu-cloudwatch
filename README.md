# eks-gpu-cloudwatch

Reference: 
https://aws.amazon.com/ko/blogs/machine-learning/monitoring-gpu-utilization-with-amazon-cloudwatch/

# Changes

lib2 to urllib.request for Python3


# Build

```bash
export AWS_REGION="ap-northeast-2"
export ACCOUNT_ID="123456789"

docker build -t gpu-cloudwatch-exporter .

docker tag gpu-cloudwatch-exporter:latest <account-id>.dkr.ecr.<region>.amazonaws.com/gpu-cloudwatch-exporter:latest

aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com

docker push <account-id>.dkr.ecr.<region>.amazonaws.com/gpu-cloudwatch-exporter:latest
```

# DaemonSet Deployment  


```bash
kubectl apply -f gpu-cloudwatch-exporter.yaml
```


* [gpu-cloudwatch-exporter.yaml](./gpu-cloudwatch-exporter.yaml)


# Test on GPU node


```bash
apt update
apt install git -y
apt install vim -y

mkdir gpumon
cd gpumon
wget https://raw.githubusercontent.com/engel80/eks-gpu-cloudwatch/metric-test/gpumon.py
wget https://raw.githubusercontent.com/engel80/eks-gpu-cloudwatch/metric-test/requirements.txt
pip install -r requirements.txt
python gpumon.py
```
