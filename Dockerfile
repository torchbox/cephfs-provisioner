FROM centos:7
RUN rpm -Uvh https://download.ceph.com/rpm-jewel/el7/noarch/ceph-release-1-1.el7.noarch.rpm; yum install -y epel-release; yum install -y ceph-common python-cephfs; yum clean all
ADD cephfs-provisioner /usr/local/bin/cephfs-provisioner
ADD cephfs_provisioner/cephfs_provisioner.py /usr/local/bin/cephfs_provisioner
CMD chmod x+o /usr/local/bin/cephfs_provisioner
