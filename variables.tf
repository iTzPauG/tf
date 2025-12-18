variable "path1" {
    default ="carpeta1"
    type = string
}
variable "path2" {
    default ="carpeta2"
    type= string
}
variable "separator" {
    default ="."
    type= string
}

variable "length" {
    default =2
    type= number
}

variable "password_change" {
    default = true
    type = bool
}

variable "hoy" {
    type = list(number)
    default = [18, 6, 2024]
}

variable "prefixes" {
    default = ["Mr", "Ms", "Dr", "Prof"]
    type = list
}

variable "filename" {
    type = list
    default = ["pau", "a10pepo"]
}

variable "mascota" {
    type = object({
      separator = string
      prefix = string
      length = number
      keepers = map(string)
    })
    default = {
      separator = "."
      prefix = "Mr"
      length = 2
        keepers = {
            "keeper1" = "pau"
            "keeper2" = "a10pepo"
        }
    }
}

variable "aplicacion" {
    type = object({
      db_name = string
      servidor = string
      users =list(map(string))
      host = map(string)
    })
    default = {
        db_name ="mi_db"
        servidor = "postgresql"
        users = [
            {
                user = "admin"
                password = "admin"
            },
            {
                user = "user"
                password = "user"
            }
        ]
        host = {
            "address" = "localhost"
            "port" = "1234"
        }
    }
}

variable "password"{
}