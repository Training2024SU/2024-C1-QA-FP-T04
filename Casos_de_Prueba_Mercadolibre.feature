Feature: Como cliente de Mercadolibre
quiero poder buscar en el modulo de busca de producto y usar el modulo de compras
para hacer uso de las funcionalidades de la plataforma.

 Background
 Given El cliente esta logueado en la pagina de inicio de Mercadolibre.com

#La nomenclatura Caso de Prueba (CP) sirve como apoyo para las evidencias

@Busquedadeproductopornombre @CP1
    Scenario Buscar un producto por nombre en especifico y logra encontrarlo
      Given el usuario esta en el modulo de busqueda
      When ingresa el nombre del producto en escifico
      And valida en el icono de buscar
      Then el usuario debería visualizar la listas del produtos
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

  Scenario: Iniciar sesión con campos vacíos
    When se dejan los campos de nombre de usuario y contraseña vacíos
    And se hace clic en el botón de inicio de sesión
    Then debería visualizar un mensaje de error indicando que los campos son obligatorios

  Scenario: Iniciar sesión con nombre de usuario válido y contraseña vacía
    When se ingresa un nombre de usuario válido "miusuario@gmail.com" y se deja el campo de contraseña vacío
    And se hace clic en el botón de inicio de sesión
    Then debería visualizar un mensaje de error indicando que la contraseña es obligatoria

  Scenario: Iniciar sesión con nombre de usuario vacío y contraseña válida
    When se deja el campo de nombre de usuario vacío y se ingresa una contraseña válida
    And se hace clic en el botón de inicio de sesión
    Then debería visualizar un mensaje de error indicando que el nombre de usuario es obligatorio

  Scenario: Iniciar sesión con nombre de usuario inválido y contraseña válida
    When se ingresa un nombre de usuario inválido "correo_invalido@gmail.com" y una contraseña válida
    And se hace clic en el botón de inicio de sesión
    Then debería visualizar un mensaje de error indicando que el nombre de usuario es inválido

  Scenario: Iniciar sesión con contraseña inválida y nombre de usuario válido
    When se ingresa un nombre de usuario válido "miusuario@gmail.com" y una contraseña inválida
    And se hace clic en el botón de inicio de sesión
    Then debería visualizar un mensaje de error indicando que la contraseña es incorrecta

  Scenario: Iniciar sesión con credenciales sensibles (contraseña visible)
    When se ingresa el nombre de usuario y la contraseña
    And la contraseña es visible en el campo correspondiente
    And se hace clic en el botón de inicio de sesión
    Then debería iniciar sesión en la cuenta

  Scenario: Iniciar sesión con caracteres especiales en el nombre de usuario
    When se ingresa un nombre de usuario con caracteres especiales "@usuario$"
    And una contraseña válida
    And se hace clic en el botón de inicio de sesión
    Then debería iniciar sesión en la cuenta

  Scenario: Iniciar sesión con caracteres especiales en la contraseña
    When se ingresa un nombre de usuario válido
    And una contraseña con caracteres especiales "#contraseña$123"
    And se hace clic en el botón de inicio de sesión
    Then debería iniciar sesión en la cuenta

  Scenario: Iniciar sesión con letras mayúsculas en el nombre de usuario y contraseña
    When se ingresa un nombre de usuario en letras mayúsculas "MIUSUARIO@GMAIL.COM"
    And una contraseña en letras mayúsculas "CONTRASEÑA123"
    And se hace clic en el botón de inicio de sesión
    Then debería iniciar sesión en la cuenta

  Scenario: Iniciar sesión con letras minúsculas en el nombre de usuario y contraseña
  When se ingresa un nombre de usuario en letras minúsculas "miusuario@gmail.com"
    And una contraseña en letras minúsculas "contraseña123"
    And se hace clic en el botón de inicio de sesión
    Then debería iniciar sesión en la cuenta

    






