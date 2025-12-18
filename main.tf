resource "local_file" "nombre1" {
  content  = "Pau García Esparter ${var.hoy[1]}"
  filename = "${var.path1}/${var.filename[count.index]}.txt"
  count= 2
}
resource "local_file" "nombre2" {
  content  = "${random_pet.pet1.id}"
  filename = "${var.path2}/${var.filename[1]}.txt"
}

resource "random_pet" "pet1" {
  separator = var.separator
  prefix = var.prefixes[0]
}

resource "random_pet" "pet2" {
  separator = var.separator
  prefix = var.prefixes[1]
}
resource "random_pet" "pet3" {
    separator = var.mascota.separator
    prefix    = var.mascota.prefix
    length    = var.mascota.length
    keepers   = var.mascota.keepers
}

output prefix{
    value= random_pet.pet3.prefix
}