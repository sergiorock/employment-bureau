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
  En caso de no tener instalado <b> ruby </b> puede descargarlo desde [aquí](https://www.ruby-lang.org/es/downloads/)

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
  username: tu_usuario
  password: tu_contraseña

test:
  <<: *default
  database: employment-bureau_test
  username: tu_usuario
  password: tu_contraseña

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

Luego, para correr las migraciones
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


## USO
1. **Público General**

El público general podrá acceder a la pantalla home del sistema, dónde se encuentran links a la sección de registración y listados de alumnos, empresas y ofertas laborales.

[![Screen-Shot-2021-03-10-at-15-33-57.png](https://i.postimg.cc/L6tBP3mQ/Screen-Shot-2021-03-10-at-15-33-57.png)](https://postimg.cc/N50HqT9R)

1.1 **Registración**

1.1.1 **Registrar Alumno**

 Cualquier usuario del sistema puede registrarse como alumno haciendo clic en el link de registro, que se encuentra en la barra de navegación, luego en *registrar alumno*. Este link lo llevará a un formulario donde podrá cargar los datos.
El Alumno creado quedará en estado de borrador hasta que un admnistrador lo apruebe.

[![Screen-Shot-2021-03-10-at-15-52-46.png](https://i.postimg.cc/sgSXxTy1/Screen-Shot-2021-03-10-at-15-52-46.png)](https://postimg.cc/WdNjf6dP)

[![Screen-Shot-2021-03-10-at-15-59-15.png](https://i.postimg.cc/FFLsDPdp/Screen-Shot-2021-03-10-at-15-59-15.png)](https://postimg.cc/23CD57xL)

[![Screen-Shot-2021-03-10-at-16-07-56.png](https://i.postimg.cc/rwSr3VDh/Screen-Shot-2021-03-10-at-16-07-56.png)](https://postimg.cc/jDS2JrQN)

[![Screen-Shot-2021-03-10-at-16-08-08.png](https://i.postimg.cc/zfvgx9gv/Screen-Shot-2021-03-10-at-16-08-08.png)](https://postimg.cc/cKqCHkTG)

1.1.2 **Registrar Empresa**

Cualquier usuario del sistema puede registrar una empresa haciendo clic en el link de registro, que se encuentra en la barra de navegación, luego en *registrar empresa*. Este link lo llevará a un formulario donde podrá cargar los datos.
En este caso a empresa se creará inmediatamente.

[![Screen-Shot-2021-03-10-at-16-16-37.png](https://i.postimg.cc/fLbBj2wf/Screen-Shot-2021-03-10-at-16-16-37.png)](https://postimg.cc/yJwm7T3D)


1.2 **Crear Oferta Laboral**

Luego de creada una empresa, el sistema te redirigirá al detalle de la misma.
Esta pantalla está dividida en dos. Del *lado izquierdo* se encuentran los datos de la empresa y un botón que te llevará al formulario para cargar una oferta laboral.
La Oferta Laboral creada quedará en estado de borrador hasta que un admnistrador la apruebe.
Del lado derecho las ofertas laborales activas pertenecientes a la empresa.

[![Screen-Shot-2021-03-10-at-16-16-49.png](https://i.postimg.cc/vTNwMxm5/Screen-Shot-2021-03-10-at-16-16-49.png)](https://postimg.cc/tnWMNTWg)

[![Screen-Shot-2021-03-10-at-16-27-38.png](https://i.postimg.cc/prrVvHP5/Screen-Shot-2021-03-10-at-16-27-38.png)](https://postimg.cc/sGFCPbQ3)

[![Screen-Shot-2021-03-10-at-16-28-57.png](https://i.postimg.cc/vZFyq9xV/Screen-Shot-2021-03-10-at-16-28-57.png)](https://postimg.cc/tY587s5q)

1.3 **Vistas**

El público general podrá ver los listados de Alumnos(activos), empresas y ofertas laborales(activas).
Los listados de las entidades mencionados poseen un buscador para poder hacer búsquedas más específicas.

[![Screen-Shot-2021-03-10-at-16-40-08.png](https://i.postimg.cc/pVKy22Qz/Screen-Shot-2021-03-10-at-16-40-08.png)](https://postimg.cc/xqT95V41)

[![Screen-Shot-2021-03-10-at-18-06-01.png](https://i.postimg.cc/QN5ZBmMW/Screen-Shot-2021-03-10-at-18-06-01.png)](https://postimg.cc/z3Jc6nKJ)

[![Screen-Shot-2021-03-10-at-18-05-14.png](https://i.postimg.cc/NMKYPwYN/Screen-Shot-2021-03-10-at-18-05-14.png)](https://postimg.cc/zbY9V6yW)

También se pueden ver las ofertas laborales en el detalle de cada empresa. Donde se verán solo las publicadas por esta.

[![Screen-Shot-2021-03-10-at-18-02-44.png](https://i.postimg.cc/xj7V87YQ/Screen-Shot-2021-03-10-at-18-02-44.png)](https://postimg.cc/0rpBHVbX)

1. **Administrador**

2.1 **Login**
 Un administrador del sistema puede loguearse haciendo clic en el link *Ingresar*, que se encuentra en la barra de navegación. Este link lo llevará a un formulario de login.

[![Screen-Shot-2021-03-10-at-17-48-35.png](https://i.postimg.cc/tCDwKMTW/Screen-Shot-2021-03-10-at-17-48-35.png)](https://postimg.cc/6y2MRzCp)

[![Screen-Shot-2021-03-10-at-17-49-54.png](https://i.postimg.cc/C57rVRFS/Screen-Shot-2021-03-10-at-17-49-54.png)](https://postimg.cc/tn1N3CZM)

2.2 **Aprobación, Modificación y eliminación**

El administrador del sistema puede ver, habilitar y deshabilitar usuarios y ofertas de trabajo desde los listados de las mismas.
Al loguearse como administrador también se le hablitarán los botones de  editar y eliminar usuarios y empresas.

[![Screen-Shot-2021-03-10-at-16-48-47.png](https://i.postimg.cc/QtSr4yG4/Screen-Shot-2021-03-10-at-16-48-47.png)](https://postimg.cc/hzJwhMGT)

[![Screen-Shot-2021-03-10-at-16-53-34.png](https://i.postimg.cc/PqkKLfpZ/Screen-Shot-2021-03-10-at-16-53-34.png)](https://postimg.cc/ZWV62SLK)

2.3  **Vistas**
El administrador tendrá disponibles todas las vistas y botones de acción sin restricción alguna.