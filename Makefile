install-py:
	python3 -m venv pyenv
	chmod +x ./pyenv/bin/activate
	# source ./pyenv/bin/activate
	# source ./pyenv/Scripts/activate

clean-py:
	# deactivate
	rm -r pyenv

init-project:
	chmod +x ./tools/setup-k8s.sh
	chmod +x ./tools/cleanup-k8s.sh

kube-up:
	./tools/setup-k8s.sh

kube-down:
	./tools/cleanup-k8s.sh