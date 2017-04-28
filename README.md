# Build

```
git clone git@bitbucket.org:AwesomeCodingNinjaDreamTeamPP/jenkins-docker.git
sudo docker build -t jenkins .
```

# Run

```
sudo docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /home/vagrant/jenkins:/var/jenkins_home -p 8080:8080 --name jenkins jenkins
```

# Find admin password

```
sudo docker logs jenkins
```

```
Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:

056683a5fac74fbebdf2a564d4808b54
```

```
JENKINS_HOST=username:password@localhost:8080
curl -sSL "http://$JENKINS_HOST/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins" | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g'|sed 's/ /:/'
```

