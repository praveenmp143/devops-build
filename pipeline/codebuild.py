import boto3
import subprocess

def handler(event, context):
    cluster = "my-eks-cluster"
    new_image = event["image"]

    subprocess.run(
        ["aws","eks","update-kubeconfig","--name",cluster],
        check=True
    )
    subprocess.run(
        ["kubectl","set","image","deployment/myapp","myapp="+new_image],
        check=True
    )
    subprocess.run(
        ["kubectl","rollout","status","deployment/myapp"],
        check=True
    )

    return "Deployment completed"
