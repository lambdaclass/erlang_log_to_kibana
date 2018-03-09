.PHONY: ops dev test default

default:
	@echo "EKL: Elastic Search & Kibana & Logstash"
	@echo "make [<ops>|<test-env1><test-env2>]"
	@echo "make ops: runs EKL in a local dev environment"
	@echo "make test-env[1|2]: runs the test erlang application with different ENV variable set"

ops:
	cd ops/development/ && \
	 sh ensure_default_kibana_configuration.sh &
	cd ops/development && \
	 docker-compose up --build --force-recreate --abort-on-container-exit

test-env1:
	rebar3 shell --name test1@127.0.0.1

test-env2:
	rebar3 shell --name test2@127.0.0.1
