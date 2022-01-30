FROM base:latest
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppet
RUN yum install -y https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
RUN yum install -y puppetserver puppetdb-termini puppetdb
COPY files/database.ini /etc/puppetlabs/puppetdb/conf.d/database.ini
COPY files/puppet.conf files/puppetdb.conf files/routes.yaml /etc/puppetlabs/puppet/
RUN /opt/puppetlabs/bin/puppetserver ca setup
RUN /opt/puppetlabs/bin/puppetserver generate puppet.local
RUN /opt/puppetlabs/bin/puppetdb ssl-setup -f
RUN echo -e "*" > /etc/puppetlabs/puppet/autosign.conf
RUN echo "export PATH=$PATH:/opt/puppetlabs/bin" >> /root/.bashrc
RUN /opt/puppetlabs/puppet/bin/gem install r10k
RUN systemctl enable puppetserver
RUN systemctl enable puppetdb
EXPOSE 8041
