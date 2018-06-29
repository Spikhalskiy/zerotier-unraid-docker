ZeroTier Docker for [unRaid](https://lime-technology.com/)

# Description

Zerotier is an open source, cross-platform and easy to setup and use virtual LAN / Hamachi alternative available on Android, iOS, Mac, Windows, Linux.

# Usage

This Dockerfile is pushed to [dockerhub](https://hub.docker.com/r/spikhalskiy/zerotier/).

Also, it can be deployed in unRaid using a [template](https://github.com/Spikhalskiy/docker-templates/blob/master/zerotier.xml).

The template is also published in unRaid "Community Applications" store.

# Support and bug reports

This docker has a [support thread](https://lime-technology.com/forums/topic/72030-support-spikhalskiy-zerotier/) on unRaid forum

# Setup

Network and the docker image setup steps:
1. Create a [https://my.zerotier.com/](https://my.zerotier.com/) account and create a Network there.
2. Get an ID of the created network (looks something like b4da7454b271902c).
3. Install this docker image on your unRaid using a [template](https://github.com/Spikhalskiy/docker-templates/blob/master/zerotier.xml). or from Community Applications and put that ID as a NETWORK_ID parameter of the container.
4. After a start of the docker go to https://my.zerotier.com/network/<NETWORK_ID> and check “Auth” checkbox in “Members section” for the new device. Assign a meaningful name, copy an ip from "Managed IPs" column - it will be a static IP of your NAS in your virtual network.
5. Install a Zerotier client to your laptop/phone/other devices, join a network with the same id and repeat the previous step for them.

Now, when you connect Zerotier on any of your devices - a VPN connection will be set up and all connected devices will be available like they are in the same network.
SMB shares/TimeMachine will be autodetected and available like you are in the same network, all UIs will be available on \<ip from the step 4\>:\<usual port\>.
