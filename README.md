[![Build Status](https://github.com/shinesolutions/aem-platform-ci/workflows/CI/badge.svg)](https://github.com/shinesolutions/aem-platform-ci/actions?query=workflow%3ACI)

AEM Platform CI
---------------

Ansible playbooks for provisioning AWS [CodeBuild](https://aws.amazon.com/codebuild/) build projects and [CodePipeline](https://aws.amazon.com/codepipeline/) pipelines.

This setup is used for running various internal [AEM OpenCloud](https://shinesolutions.github.io/aem-opencloud/) integration tests against real AEM instances. All public CI builds are available from [Travis CI](https://travis-ci.org/shinesolutions/).

Installation
------------

- Either clone AEM Platform CI `git clone https://github.com/shinesolutions/aem-platform-ci.git` or download one of the [released versions](https://github.com/shinesolutions/aem-platform-ci/releases)
- Install the following required tools:
  * [Python](https://www.python.org/downloads/) version 3.6.x
  * [GNU Make](https://www.gnu.org/software/make/)<br/>

  Alternatively, you can use [AEM Platform BuildEnv](https://github.com/shinesolutions/aem-platform-buildenv) Docker container to run AEM Platform CI build targets.
- Resolve the [Python packages](https://github.com/shinesolutions/aem-platform-ci/blob/master/requirements.txt) dependencies by running `make deps`

Configuration
-------------

GitHub token can be configured in `scm.access_token` property in Ansible inventory and then you can pass it via `config_path`.

Alternatively, you can also pass it via environment variable `AOC_SERVICE_TOKEN`:

    `AOC_SERVICE_TOKEN=<token> make create-packer-aem create-aem-aws-stack-builder config_path=<path/to/config/dir>` 

Usage
-----

- Set up the required [AWS resources](https://github.com/shinesolutions/aem-platform-ci/blob/master/examples/aws/resources.yaml)
- Create [configuration file](https://github.com/shinesolutions/aem-platform-ci/blob/master/docs/configuration.md)
- Create the build projects and pipelines: `make create-packer-aem create-aem-aws-stack-builder config_path=<path/to/config/dir>`
- Delete the build projects and pipelines: `make delete-packer-aem delete-aem-aws-stack-builder config_path=<path/to/config/dir>`
