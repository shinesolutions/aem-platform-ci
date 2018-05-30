ci: clean deps lint

clean:
	rm -rf stage

deps:
	pip install -r requirements.txt

lint:
	ansible-lint ansible/playbooks/*.yaml

create-ci-aws:
	scripts/run-playbook.sh create-ci-aws "${config_path}"

delete-ci-aws:
	scripts/run-playbook.sh delete-ci-aws "${config_path}"

.PHONY: ci clean deps lint create-ci-aws delete-ci-aws
