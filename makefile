MESSAGE = Last Update: $(shell date "+%Y-%m-%d, %H:%M:%S")

.PHONY: auto_commit
auto_commit:
	@git add .
	@git commit -m "$(MESSAGE)"
	@git push
	@printf "\n"
	@git log --oneline -n 10
