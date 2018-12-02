FROM jenkins/jenkins:lts
ARG username=jenkinsbuild
USER root
RUN apt-get update && \
	apt-get -y install \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg2 \
		software-properties-common && \
	curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
	add-apt-repository \
		"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
		$(lsb_release -cs) \
		stable" && \
	apt-get update && \
	apt-get -y install docker-ce=18.06.1~ce~3-0~debian
RUN useradd -m -s /usr/sbin/nologin -u 1500 -G docker $username
