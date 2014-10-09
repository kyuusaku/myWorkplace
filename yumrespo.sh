#date: 2014-9-26

#install 163 repo
#http://mirrors.163.com/.help/centos.html
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget http://mirrors.163.com/.help/CentOS6-Base-163.repo -P `pwd`/tmp/.
mv `pwd`/tmp/CentOS6-Base-163.repo /etc/yum.repos.d/CentOS6-Base-163.repo

#install priority plugin
yum install yum-plugin-priorities.noarch -y

#config 163 repo
#add priority=1 after [base] [updates] [extras]
#add priority=2 after [centosplus] [contrib]

#vim /etc/yum.repos.d/CentOS6-Base-163.repo

#install 3rd repo
#install epel repo
#http://mirrors.ustc.edu.cn/epel/
wget http://mirrors.ustc.edu.cn/epel/6/x86_64/epel-release-6-8.noarch.rpm -P `pwd`/tmp/.
rpm -ivh `pwd`/tmp/epel-release-6-8.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
#add priority=11
#vim /etc/yum.repos.d/epel.repo

#install remi
#http:rpms.famillecollet.com/
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm -P `pwd`/tmp/.
rpm -ivh `pwd`/tmp/remi-release-6.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
#add priority=12
#vim /etc/yum.repos.d/remi.repo

#install rpmforge
#http://repoforge.org/use/
wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm -P `pwd`/tmp/.
rpm -ivh `pwd`/tmp/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-*
#add priority=13
#vim /etc/yum.repos.d/rpmforge.repo

#install rpmfusion
#http://rpmfusion.org/
wget http://download1.rpmfusion.org/free/el/updates/6/i386/rpmfusion-free-release-6-1.noarch.rpm -P `pwd`/tmp/.
rpm -ivh `pwd`/tmp/rpmfusion-free-release-6-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-rpmfusion-free-el-6
#add priority=14
#vim /etc/yum.repos.d/rpmfusion-free-updates.repo
#vim /etc/yum.repos.d/rpmfusion-free-updates-testing.repo

#install centalt
#http://mirror.neu.edu.cn/CentALT/
wget http://mirror.neu.edu.cn/CentALT/6/x86_64/centalt-release-6-1.noarch.rpm -P `pwd`/tmp/.
rpm -ivh `pwd`/tmp/centalt-release-6-1.noarch.rpm
wget http://mirror.neu.edu.cn/CentALT/RPM-GPG-KEY-CentALT -P `pwd`/tmp/.
mv `pwd`/tmp/RPM-GPG-KEY-CentALT /etc/pki/rpm-gpg/.
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentALT
#add priority=15
#vim /etc/yum.repos.d/centalt.repo

ls /etc/yum.repos.d/

yum clean all
yum makecache
