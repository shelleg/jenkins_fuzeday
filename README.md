This repo will help you create and run jenkins  under a docker container, containing the required plugins.

Required steps:
1. build your image: 
```sudo docker build -t k8s_jenkins .```

2. run the container:
```sudo docker run -d --name k8s_jenkins -p 8080:8080 -p 50000:50000 -v /home/admin/jenkins_data:/var/jenkins_home k8s_jenkins```

3. disable security:
open config.xml, Look for the ```<useSecurity>true</useSecurity>``` and change it to false, then restart jenkins.
