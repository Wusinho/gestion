# Proyecto Gestión

## Objetivos

Criterios de aceptación:
- La aplicación necesita mi nombre, nombre de usuario y correo electrónico.
- No se permiten correos electrónicos duplicados.
- Valida la entrada de correo electrónico.
- La autenticación debe ser sin contraseña (por correo electrónico).

- Como usuario activo, quiero poder crear varios proyectos para poder enfocar mis tareas en un tema común.
    - Esta es una aplicación multiinquilino, lo que significa que puedo crear múltiples proyectos e invitar a otros usuarios a unirse a ellos.
    - El proyecto debe tener atributos de título, slug, descripción y estado.
    - El rol del usuario que crea el proyecto es Propietario.

- Como usuario activo, quiero ver una lista de proyectos de los que soy miembro.
    - Los usuarios deben tener y pertenecer a muchos proyectos.
    - Los usuarios deben tener un rol dentro de un proyecto; los roles son propietario, administrador, miembro.
    - El propietario y el administrador pueden invitar a más usuarios por correo electrónico.

## Descripción del Proyecto

Para el desarrollo del proyecto se utilizaron las siguientes herramientas:

- Rails v 7.0.8
- Ruby 3.1.2
- Postgresql
- Bootstrap v 5.1.3

## Cómo iniciar el proyecto

- Abre tu terminal y navega al directorio donde deseas almacenar el proyecto.
- Ejecuta el siguiente comando en la terminal:

```bash
git clone https://github.com/Wusinho/gestion.git
```

- Cd en el folder que se creo
- Ejecuta $ `bundle install`
- En la terminal, escribe  $ `rails db:create && rails db:migrate && rails db:seed`
- En la terminal, escribe  $ `rails server`

## Autor

👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a star if you :star: like this project!

