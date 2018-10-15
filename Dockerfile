FROM ansible/ansible:default
RUN mkdir /ssh
COPY temp_ansible /ssh
RUN eval `ssh-agent -s` && ssh-add /ssh/temp_ansible
RUN chmod 400 /ssh/temp_ansible
