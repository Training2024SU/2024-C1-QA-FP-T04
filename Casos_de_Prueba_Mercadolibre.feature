Feature: Como cliente de MercadoLibre.com.co
quiero poder buscar en el modulo de busca de inicio de sesion y usar el modulo de compras
para hacer uso de las funcionalidades de la plataforma.

 Background
 Given El cliente esta en la pagina de inicio de MercadoLibre.com.co

@CalculadoraSOAP
#Para efectos del ejercio asumiremos que esta calculadora es un microservicio que se piensa implementar en Mercadolibre
#Y por consiguiente le haremos unas pruebas
@Suma 
 Scenario Suma de dos numeros enteros
 Given Dado que el usuario desea sumar dos numeros
 When ingresa los dos valores
 Then Ver el resultado de la Suma

@Resta 
 Scenario Resta de dos numeros enteros
 Given Dado que el usuario desea restar dos numeros
 When ingresa los dos valores
 Then Ver el resultado de la Suma

 @Multiplicacion
 Scenario Multiplicacion de dos numeros enteros
 Given Dado que el usuario desea mutiplicar dos numeros
 When ingresa los dos valores
 Then Ver el resultado de la Suma


#La nomenclatura Caso de Prueba (CP) sirve como apoyo para las evidencias
@Busquedadeproductopornombre @CP1
    Scenario Buscar un producto por nombre en especifico y logra encontrarlo
      Given el usuario esta en el modulo de busqueda
      When ingresa el nombre del producto en escifico
      And valida en el icono de buscar
      Then el usuario deberia visualizar la listas del produtos
      And visualizar el producto en especifico

@Agregarproductoalcarrito @CP2
Scenario Agregar un producto al carrito de compras
    Given el usuario esta en la pagina del producto deseado
    When el usuario selecciona agregar el carrito
    Then el usuario deberia ver un mensaje de confirmacion

@Listadeproductos @CP3
Scenario Visualizar los elementos y valores del carrito de compras
    When el usuario selecciona el icono de carrito 
    Then deberia de visualizar todos sus articulos
    And visualizar tambien los valores parciales y totales

@Informacionparaenvios @CP4
Scenario Agregar informacion para envios de productos
    Given El cliente esta en la seccion de forma de entrega 
    And no tiene ninguna direccion preseleccionada 
    When el cliente selecciona agregar domicilio 
    And llena todos sus datos de manera correcta
    And valida su informacion
    Then deberia de poder continuar con el proceso de pago

@Seleccionmetododepago @CP5
Background
    Given El usuario ya hizo todo el proceso de seleccion de producto
    And ingreso de informacion de envio y facturacion
Scenario Selccionar el metodo de pago
    Given El usuario esta en la pagina de seleccion de metodo de pago
    When el selecciona un metodo de pago
    
@Registrousuarionuevofallido  @CP6
@Excepcion
    Scenario El usuario trata de crear cuenta con datos incompletos y falla.
    Given El usuario ingresa a la seccion de creacion de usuario.
    When Ingresa los datos de manera incompleta.
    Then El usuario deberia visualizar un mensaje de error.

@Registrousuarionuevoexitoso @CP7
#En esta seccion solo prueba la seccion de nombre con diferentes caracteres tales como @#?>
    Scenario El usuario intenta crear una nueva cuenta con cualquier tipo de caracter en la seccion nombre.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos con diferentes tipos de caracteres.
      Then El usuario deberia poder continuar el registro.

@Registrousuarionuevofallido  @CP8

    Scenario El usuario intenta crear su nueva cuenta sin el @ en el email y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de email, se cambia el @ con 0 
      Then El usuario deberia tener una alerta de email no correcto.


@Registrousuarionuevofallido @CP9
@Excepcion
    Scenario El usuario intenta crear su nueva cuenta sin el punto . en el email y falla
      Given El usuario ingresa a la seccion de creacion de usuario
      When Ingresa los datos de email donde no se incluye el punto
      Then El usuario deberia tener una alerta de email no correcto.

@Registrousuarionuevofallido @CP10
@Excepcion
    Scenario  El usuario intenta crear su nueva cuenta con la contrasena con menos de seis caracteres y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena con menos de seis caracteres.
      Then El usuario deberia tener una alerta de cumplir los requerimientos minimos.

@Registrousuarionuevofallido @CP11
@Excepcion
    Scenario  El usuario intenta crear su nueva cuenta con contrasenas diferentes y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena correctamente
      And valida la contrasena escribiendo una contrasena distinta.
      Then El usuario deberia tener una alerta de que las contrasenas no coinciden.

 @Registrousuarionuevoexitoso @CP12
    Scenario El usuario crea una nueva cuenta de manera correcta.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa todos los datos de manera correcta
      And verifica los datos.
      Then El usuario deberia recibir un codigo de confirmacion en su email.

@Iniciodesesionfallido @CP13
@Excepcion
    Scenario El usuario intenta ingresar sin escribir los datos de entrada y falla.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica sin ingresar ningun dato
      Then El usuario deberia recibir una alerta solicitando los datos de entrada.
    
 @Iniciodesesionfallido @CP14
 @Excepcion
    Scenario El usuario intenta ingresar con la contrasena incorrecta y falla.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente
      But la contrasena incorrecta
      Then El usuario deberia recibir una alerta de contrasena incorrecta.

@Iniciodesesionexistoso @CP15
    Scenario El usuario agrega numero de telefono como respaldo de seguridad exitosamente
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente 
      And verifica la contrasena correctamente
      Then El usuario deberia poder agregar un numero de telefono
      And Confirmarlo con un token de seguridad.

@InciosesionCamposVacios @CP16
Scenario: Iniciar sesion con campos vacios
    When se dejan los campos de nombre de usuario y contrasena vacios
    And se hace clic en el boton de inicio de sesion
    Then deberia visualizar un mensaje de error indicando que los campos son obligatorios

@Iniciodesesionexistoso @CP17 @CP18 @CP19

Scenario Outline: Iniciar sesion con credenciales validas
    When ingreso mi nombre de usuario valido "nombre_usuarioss" y contrasena "contrasena"
    And hago clic en el boton de inicio de sesion
    Then deberia iniciar sesion en mi cuenta con exito

  Examples:
    | nombre_usuarios    | contrasena  |
    | usuario1@gmail.com | password123 |
    | usuario2@gmail.com | mypass456   |
    | usuario3@gmail.com | secreto789  |

@Iniciodesesionfallido @CP20 @Cp21 @CP22
Scenario Outline: Iniciar sesion con credenciales invalidas
    When ingreso un nombre de usuario invalido "nombre_usuario" y contrasena incorrecta "contrasena"
    And hago clic en el boton de inicio de sesion
    Then deberia ver un mensaje de error indicando que las credenciales son incorrectas

  Examples:
    | nombre_usuario              |     contrasena          |
    | usuario_no_valido@gmail.com | password123             |
    | usuario_valido@gmail.com    | contraseña_incorrecta   |
    | usuario1@gmail.com          | claveerronea            |

@Iniciodesesionfallido @CP23
Scenario: Iniciar sesion con nombre de usuario vacio y contrasena valida
    When se deja el campo de nombre de usuario vacio y se ingresa una contrasena valida
    And se hace clic en el boton de inicio de sesion
    Then deberia visualizar un mensaje de error indicando que el nombre de usuario es obligatorio

@Iniciodesesionfallido @CP24
Scenario: Iniciar sesion con nombre de usuario invalido y contrasena valida
    When se ingresa un nombre de usuario invalido "correo_invalido@gmail.com" y una contrasena valida
    And se hace clic en el boton de inicio de sesion
    Then deberia visualizar un mensaje de error indicando que el nombre de usuario es invalido

@Iniciodesesionfallido @CP26
Scenario: Iniciar sesion con contrasena invalida y nombre de usuario valido
    When se ingresa un nombre de usuario valido "miusuario@gmail.com" y una contrasena invalida
    And se hace clic en el boton de inicio de sesion
    Then deberia visualizar un mensaje de error indicando que la contrasena es incorrecta

@ModuloCompras 

  Background Como usuario de MercadoLibre
  Quiere poder realizar compras en el sitio web
  Para adquirir productos de manera segura y conveniente

@Busquedaportermino @CP27 @CP28 @CP29
  Scenario Outline: Busqueda de productos por terminos especificos
    When el usuario busca el termino "termino_busqueda"
    Then deberia ver una lista de resultados relacionados con "termino_busqueda"

  Examples:
    | termino_busqueda  |
    | Mouse Corsair     |
    | Mouse logitech    |
    | Mouse razer       |

@Busquedacategoria @CP30
  Scenario: Buscar un producto por una categoria esfecifica
    When navega a la categoria "Electronicos" desde el menu
    And selecciona la subcategoria "Telefonos Celulares y Smartphones"
    Then deberia ver una lista de productos de telefonos celulares y smartphones

@Agregandoproducto @CP31 @CP32 @CP33
Scenario Outline: Agregar un producto al carrito de compras
    When el usuario busca el producto "nombre_producto" y lo selecciona
    And  decide agregar "cantidad" unidades al carrito
    Then deberia ver que el producto "nombre_producto" se ha agregado al carrito con exito
    And el carrito deberia mostrar un total de "cantidad" unidades del producto "nombre_producto"

  Examples:
    | nombre_producto   | cantidad |
    | iPhone 13         | 1        |
    | Samsung Galaxy    | 2        |
    | PlayStation 5     | 5        |

  