install-py-mac:
	python3 -m venv pyenv
	chmod +x ./pyvenv/bin/activate
	source ./pyvenv/bin/activate

install-py-window:
	python3 -m venv pyenv
	chmod +x ./pyvenv/bin/activate
	pyvenv/bin/activate

clean-py:
	deactivate
	rm -r pyvenv
	

init-project:
	chmod +x ./tools/setup-k8s.sh
	chmod +x  ./tools/cleanup-k8s.sh

kube-up:
	./tools/setup-k8s.sh

kube-down:
	./tools/cleanup-k8s.sh