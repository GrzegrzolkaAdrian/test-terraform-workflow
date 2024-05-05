terraform {
	backend "local" {
		path = "/.terraform.tfstate"
	}
}

resource "local_file" "Function_Hello" {
	content = "print('${var.message}')"
	filename ="${var.file_path}"
}
