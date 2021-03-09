# UNAJ EMPLEOS

== Instalación
Para poder correr la aplicación localmente

Debe tener instalado ruby <b> ruby '2.5.3' </b>, puede chequear la versión con el comando:

  ruby -v

En caso de no tener instalado <b> ruby </b> puede descargarlo desde {aquí}[https://www.ruby-lang.org/en/news/2018/10/18/ruby-2-5-3-released/]

In <b>Rails 2</b>, add this to your environment.rb file.

  config.gem "cancan"

Alternatively, you can install it as a plugin.

  rails plugin install git://github.com/ryanb/cancan.git


== Getting Started

CanCan expects a +current_user+ method to exist in the controller. First, set up some authentication (such as Authlogic[https://github.com/binarylogic/authlogic] or Devise[https://github.com/plataformatec/devise]). See {Changing Defaults}[https://github.com/ryanb/cancan/wiki/changing-defaults] if you need different behavior.


=== 1. Define Abilities




=== 2. Check Abilities & Authorization
