# UNAJ EMPLEOS

## Introducción

Challenge para el Departamento de informatica de la Universidad Nacional Arturo Jauretche

El desafío consiste en desarrollar un sistema, este debe ser un POC de una bolsa de trabajo online y debe cumplir los siguientes items:

  * Los alumnos de la universidad podrán inscribirse mediante un formulario público (nombre, apellido, tipo y número de documento, fecha de nacimiento, mail personal, carrera, año, y un campo textarea para cargar su experiencia) y quedará en un estado borrador.

  * Las empresas podrán cargar sus datos mediante un formulario público (nombre de la empresa, CUIT, provincia, localidad, dirección, teléfono, mail) y luego las ofertas laborales (descripción del puesto en un campo textarea, fecha de inicio y fin de la convocatoria) en un estado borrador.

  * Desde una pantalla de administración (implementar algún login mínimo, no se pide gestión de usuarios), el personal de la universidad podrá aprobar los alumnos y ofertas laborales cargadas pudiendo visualizar todos los datos cargados.

  * Desde una pantalla pública se podrá listar y buscar los alumnos que buscan trabajo.

  * Desde una pantalla pública se podrá listar y buscar las ofertas laborales.

  * Deberá tener una página de inicio que lleve a los buscadores y a la carga de los formularios.

## Instalación
Para poder correr la aplicación localmente

Debe tener instalado ruby <b> ruby '2.5.3' </b>, puede chequear la versión con el comando:

  ruby -v

En caso de no tener instalado <b> ruby </b> puede descargarlo desde [aquí](https://www.ruby-lang.org/en/news/2018/10/18/ruby-2-5-3-released)

In <b>Rails 2</b>, add this to your environment.rb file.

  config.gem "cancan"

Alternatively, you can install it as a plugin.

  rails plugin install git://github.com/ryanb/cancan.git


== Getting Started

CanCan expects a +current_user+ method to exist in the controller. First, set up some authentication (such as Authlogic[https://github.com/binarylogic/authlogic] or Devise[https://github.com/plataformatec/devise]). See {Changing Defaults}[https://github.com/ryanb/cancan/wiki/changing-defaults] if you need different behavior.


=== 1. Define Abilities




=== 2. Check Abilities & Authorization
