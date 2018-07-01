ci: clean deps lint

clean:
	rm -rf stage

deps:
	pip install -r requirements.txt

lint:
	ansible-lint ansible/playbooks/*.yaml

create-packer-aem:
	scripts/run-playbook.sh packer-aem/create-ci-aws "${config_path}"

create-aem-aws-stack-builder:
	scripts/run-playbook.sh aem-aws-stack-builder/create-ci "${config_path}"

delete-packer-aem:
	scripts/run-playbook.sh packer-aem/delete-ci-aws "${config_path}"

delete-aem-aws-stack-builder:
	scripts/run-playbook.sh aem-aws-stack-builder/delete-ci "${config_path}"

.PHONY: ci clean deps lint create-ci-aws delete-ci-aws
