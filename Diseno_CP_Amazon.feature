Feature: Seleccion de Producto en una Tienda de Amazon
  Yo como usuario registrado en Amazon
  quiero seleccionar mis productos
  para poder realizar una compra en la tienda

    Background:
      Given el usuario se encuentra logueado en la pagina de inicio de Amazon

    @Busqueda_de_un_producto
      Scenario: Se busca un producto de Amazon
          When Se ingresan los datos en la busqueda por producto <producto>
          Then Deberia de entregar una lista
          And Se deberia ver la cantidad <cantidad> de productos relacionados con la busqueda
      Examples:
        |   producto    | cantidad |
        |   camisa      |    50    |
        |   pantalon    |    51    |
        |   zapatos     |    48    |
        |   gorra       |    52    |
        |   aretes      |    49    |

      #busqueda_por_categoria
      Scenario: Se busca por categoria productos en Amazon
          When Se selecciona una categoria <categoria> de producto
          And Se ingresa el nombre del producto <producto>
          Then Debería de ver todos las productos relacionados con la categoria
      Examples:
        |   categoria       |    producto   |
        |   automotriz      |    camisa     |
        |   electronicos    |    pantalon   |
        |   libros          |    zapato     |
        |   belleza         |    gorra      |
        |   Musica          |    aretes     |

    @Seleccion_de_un_producto
      Scenario: Selecciona un producto de la busqueda en el carrito
        When Se ingresan un producto <producto> al carrito
        Then Debería de guardar el producto con <cantidad>
      Examples:
        |   producto    | cantidad |
        |   camisa      |     1    |
        |   pantalon    |     1    |
        |   zapatos     |     1    |

      #Seleccion_varios_productos
      Scenario: Selecciona varios productos de la busqueda producto en el carrito
        When Se ingresan un producto <producto> al carrito
        And se estable una cantidad mayor a 1
        Then Debería de guardar la cantidad <cantidad> de los productos
        Examples:
          |   producto    | cantidad |
          |   camisa      |     3    |
          |   pantalon    |     2    |
          |   zapatos     |     4    |

Feature: Compra de Producto en Amazon
  Yo como usuario registrado en Amazon
  quiero proceder a confirmar los productos en el carrito
  para poder pagar y finalizar la comprar

  Background:
    Given el usuario registrado se encuentra con los productos seleccionados en el carrito

  @Compra_de_un_producto
        Scenario: los productos ya estan seleccionados en el carrito
          When se confirma la realizacion de la compra de los productos seleccionados
          Then deberia requerir el ingreso de la informacion de envio
          And facturacion
        Examples:
          |   facturacion |   envio  |
          |   camisa      |     3    |
          |   pantalon    |     2    |
          |   zapatos     |     4    |

        Scenario: la informacion de envio esta ingresada
          When se confirma la informacion de envio
          Then Deberia requerir el metodo de pago
          And los datos necesarios para el pago

  #-----------------------------------------------------

Feature: Prueba de servicio Soap de suma
  Yo como usuario registrado en Amazon
  quiero proceder a confirmar los servicios Soap de suma
  para poder verificar la contabilidad

  Background:
    Given el usuario registrado se encuentra el servicio Soap

  @Suma_de_productos
  Scenario: el usuario quiere agregar productos en el carrito
    When se suma la cantidad 1 <cantidad1> y la cantidad 2 <cantidad2>
    Then deberia recibir la suma <suma> de las cantidades
    Examples:
      |   cantidad1 |   cantidad2 | suma |
      |             |             |  ?   |
      |   ?         |     ?       |  ?   |
      |   20        |     30      |  50  |
      |   3         |     4       |  7   |
      |   2000      |     5000    | 7000 |
      | 90000000000 | 70000000000 | 160000000000 |
    
  @Resta_de_productos
  Scenario: el usuario desea quitar productos del carrito
    When se resta la cantidad1 <cantidad1> y la cantidad2 <cantidad2>
    Then Deberia devolver la resta <resta> de los productos
    Examples:
      |   cantidad1 |   cantidad2 | resta |
      |   ?         |     ?       |  ?    |
      |   1         |     2       |  -1   |
      |   30        |     20      |  10   |
      |   4         |     3       |  1    |
      |   5000      |     2000    | 3000  |


