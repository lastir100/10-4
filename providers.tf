terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
    }
  }

  required_version = ">=1.8.4"
}

provider "yandex" {
  # token                    = "do not use!!!"
  zone  = "ru-central1-b"
}
