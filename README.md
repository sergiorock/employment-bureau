# UNAJ EMPLEOS

## Demo

* https://challenge-empleos-unaj.herokuapp.com/

Credenciales para loguearse como administrador:
  ```
  admin@mail.com
  admin123
  ```

<br>

## Introducción

Challenge para el Departamento de informática de la Universidad Nacional Arturo Jauretche

El desafío consiste en desarrollar un sistema, este debe ser un POC de una bolsa de trabajo online y debe cumplir los siguientes items:

  * Los alumnos de la universidad podrán inscribirse mediante un formulario público (nombre, apellido, tipo y número de documento, fecha de nacimiento, mail personal, carrera, año, y un campo textarea para cargar su experiencia) y quedará en un estado borrador.

  * Las empresas podrán cargar sus datos mediante un formulario público (nombre de la empresa, CUIT, provincia, localidad, dirección, teléfono, mail) y luego las ofertas laborales (descripción del puesto en un campo textarea, fecha de inicio y fin de la convocatoria) en un estado borrador.

  * Desde una pantalla de administración (implementar algún login mínimo, no se pide gestión de usuarios), el personal de la universidad podrá aprobar los alumnos y ofertas laborales cargadas pudiendo visualizar todos los datos cargados.

  * Desde una pantalla pública se podrá listar y buscar los alumnos que buscan trabajo.

  * Desde una pantalla pública se podrá listar y buscar las ofertas laborales.

  * Deberá tener una página de inicio que lleve a los buscadores y a la carga de los formularios.


<br><br>

## Instalación

### Instalando Ruby on Rails
  >Antes de instalar Rails debes asegurarte de que tu sistema tenga estos prerequisitos instalados

  >* Ruby
  >* PostgreSQL
  >* Node.js
  >* Yarn

<br>

### Instalando Ruby
  Podés chequear la versión de Ruby corriendo el siguiente comando desde la terminal
  ```
  ruby --version
  ```

  Rails requiere Ruby 2.7 <br>
  En caso de no tener instalado <b> ruby </b> puede descargarlo desde [aquí](https://www.ruby-lang.org/en/news/2018/10/18/ruby-2-5-3-released/)

<br>

### Instalando PostgreSQL
  Podés chequear la versión de PostgreSQL corriendo el siguiente comando desde la terminal
  ```
  plsql --version
  ```

  En caso de no tener instalado <b> PostgreSQL </b> puede descargarlo desde [aquí](https://www.postgresql.org/download/)

<br>

### Instalando Node.js y Yarn
  Podés chequear la versión de Node corriendo el siguiente comando desde la terminal
  ```
  node --version
  ```

  En caso de no tener instalado <b> Node.js </b> puede descargarlo desde [aquí](https://nodejs.org/es/download/)

  <br>

  Podés chequear la versión de Yarn corriendo el siguiente comando desde la terminal
  ```
  yarn --version
  ```

  En caso de no tener instalado <b> Yarn </b> puede seguir las instrucciones de instalación desde su [web](https://classic.yarnpkg.com/en/docs/install)


<br>

### Instalando Ruby on Rails
  Para instalar Ruby on Rails usa la gema provista por RubyGems
   ```
  gem install rails -v 5.2.4.5
  ```

  Instalar gema bundler
  ```
  gem install bundler
  ```

<br>

### Clonando el repositorio
  Para clonar el repositorio del proyecto ejecute el siguiente comando en la terminal
   ```
  git clone https://github.com/sergiorock/employment-bureau.git
  ```

<br>

### Instalando dependencias
  Posicionarse dentro del repositorio y ejecutar
  ```
  bundle install
  ```

### Configurando Base de Datos
  Asegurese que su archivo database.yml se vea así

  ```
  default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: employment-bureau_development
  username: tu_suario_postgres
  password: tu_contraseña_postgres

test:
  <<: *default
  database: employment-bureau_test
  username: tu_suario_postgres
  password: tu_contraseña_postgres

production:
  <<: *default
  database: employment-bureau_production
  username: employment-bureau
  password: <%= ENV['EMPLOYMENT-BUREAU_DATABASE_PASSWORD'] %>
  ```

### Creando Base de Datos
En la terminal ejecutar el siguiente comando para crear la base de datos
```
rails db:create
```

Luego para correr las migraciones
```
rails db:migrate
```

Y por último para crear las seeds
```
rails db:seed
```

<br>

### Corriendo la aplicación
Para levantar el server ejecutar en la consola
```
rails server
```

  Credenciales para loguearse como administrador:
  ```
  admin@mail.com
  admin123
  ```

