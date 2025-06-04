help: #default
	@echo "Usage: make [help|fmt|fmt-check|infracost|infracost-czk|infracost-usd|infracost-aud|providers-lock]"

fmt:
	terraform fmt -recursive

fmt-check:
	terraform fmt -recursive -check -diff

infracost:
	infracost configure set currency EUR
	infracost breakdown --path . --usage-file infracost-usage.yml

infracost-czk:
	infracost configure set currency CZK
	infracost breakdown --path . --usage-file infracost-usage.yml

infracost-usd:
	infracost configure set currency USD
	infracost breakdown --path . --usage-file infracost-usage.yml

infracost-aud:
	infracost configure set currency AUD
	infracost breakdown --path . --usage-file infracost-usage.yml

providers-lock:
	terraform providers lock -platform=darwin_arm64 -platform=linux_amd64
