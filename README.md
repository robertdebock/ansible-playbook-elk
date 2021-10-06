# Elasticsearch Logstash Kibana

An ELK stack.

## Overview

```text
\O/    +--- kibana ---+     + --- elasticsearch ---+
 | --> |              | --> |                      |
/ \    +--------------+     +----------------------+
```

## Prepare

Download or update the Ansible roles.

```shell
ansible-galaxy install -r roles/requirements.yml -f
```

The state of the used roles:

|Role name|GitHub Action|GitLab CI|Version|
|---------|-------------|---------|-------|
|[bootstrap](https://galaxy.ansible.com/robertdebock/bootstrap)|[![github](https://github.com/robertdebock/ansible-role-bootstrap/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-bootstrap/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-bootstrap/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-bootstrap)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-bootstrap/latest.svg)](https://github.com/robertdebock/ansible-role-bootstrap/releases)|
|[core_dependencies](https://galaxy.ansible.com/robertdebock/core_dependencies)|[![github](https://github.com/robertdebock/ansible-role-core_dependencies/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-core_dependencies/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-core_dependencies/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-core_dependencies)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-core_dependencies/latest.svg)](https://github.com/robertdebock/ansible-role-core_dependencies/releases)|
|[elastic_repo](https://galaxy.ansible.com/robertdebock/elastic_repo)|[![github](https://github.com/robertdebock/ansible-role-elastic_repo/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-elastic_repo/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-elastic_repo/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-elastic_repo)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-elastic_repo/latest.svg)](https://github.com/robertdebock/ansible-role-elastic_repo/releases)|
|[logstash](https://galaxy.ansible.com/robertdebock/logstash)|[![github](https://github.com/robertdebock/ansible-role-logstash/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-logstash/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-logstash/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-logstash)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-logstash/latest.svg)](https://github.com/robertdebock/ansible-role-logstash/releases)|
|[elasticsearch](https://galaxy.ansible.com/robertdebock/elasticsearch)|[![github](https://github.com/robertdebock/ansible-role-elasticsearch/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-elasticsearch/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-elasticsearch/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-elasticsearch)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-elasticsearch/latest.svg)](https://github.com/robertdebock/ansible-role-elasticsearch/releases)|
|[kibana](https://galaxy.ansible.com/robertdebock/kibana)|[![github](https://github.com/robertdebock/ansible-role-kibana/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-kibana/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-kibana/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-kibana)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-kibana/latest.svg)](https://github.com/robertdebock/ansible-role-kibana/releases)|
|[metricbeat](https://galaxy.ansible.com/robertdebock/metricbeat)|[![github](https://github.com/robertdebock/ansible-role-metricbeat/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/ansible-role-metricbeat/actions)|[![gitlab](https://gitlab.com/robertdebock/ansible-role-metricbeat/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/ansible-role-metricbeat)|[![version](https://img.shields.io/github/commits-since/robertdebock/ansible-role-metricbeat/latest.svg)](https://github.com/robertdebock/ansible-role-metricbeat/releases)|

## Test

```shell
ansible-playbook playbook.yml
```

## Troubleshoot

Login to individual hosts using this command:

```shell
ssh -i files/id_rsa root@{{ fqdn }}
```

## Cleanup

Throw away the machines.

```shell
cd terraform
terraform destroy
```
