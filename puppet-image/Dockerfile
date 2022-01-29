FROM base:latest
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppet
RUN yum install -y https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
RUN yum install -y puppetserver puppetdb-termini puppetdb
COPY database.ini /etc/puppetlabs/puppetdb/conf.d/database.ini
RUN echo -e "*" > /etc/puppetlabs/puppet/autosign.conf
RUN echo "export PATH=$PATH:/opt/puppetlabs/bin" >> /root/.bashrc
RUN /opt/puppetlabs/puppet/bin/gem install r10k
RUN systemctl enable puppetserver
RUN systemctl enable puppetdb
EXPOSE 8041
