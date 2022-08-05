fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -recursive -check -diff

infracost:
	infracost breakdown --path . --usage-file infracost-usage.yml

providers-lock:
	terraform providers lock -platform=darwin_arm64 -platform=linux_amd64
