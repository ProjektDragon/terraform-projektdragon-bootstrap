.PHONY: docs

SERVICE := "terraform-projektdragon-bootstrap"

docs: 
	cat README.template > README.md
	terraform-docs markdown . >> README.md
