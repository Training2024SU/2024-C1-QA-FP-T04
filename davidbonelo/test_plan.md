# Plan de pruebas tienda web Ktronix

| Versión | Fecha Actualización | Preparado por | Descripción       |
| ------- | ------------------- | ------------- | ----------------- |
| 1       | 18/03/2024          | David Bonelo  | Documento Inicial |

## Objetivo

Este plan de pruebas se desarrolla con el propósito de evaluar las funcionalidades de la plataforma web de la empresa Ktronix. El objetivo principal es verificar y validar que la plataforma cumple con las expectativas tanto de los clientes como de los usuarios. Además, se busca reducir la probabilidad de que aparezcan defectos en producción, garantizando así una experiencia óptima para los usuarios finales.

Los objetivos específicos de las pruebas son verificar la funcionalidad del sitio web de la tienda Ktronix y del servicio API SOAP. El proyecto se centrará en probar la operación de registro e inicio de sesión en el sitio web, así como las llamadas a la API para obtener información de países y realizar cálculos matemáticos. Se garantizará que estas operaciones puedan funcionar normalmente en el entorno productivo.

# Alcance

A continuación se presentarán las funcionalidades de la web de Ktronix que serán objeto de verificación y validación mediante pruebas funcionales manuales para asegurar el cumplimiento de los requerimientos establecidos:

**Web**

- Correcto registro y acceso al aplicativo
- Visualización de productos disponibles para compra
- Funcionalidades del carrito de compras
- Proceso de compra

**Servicio API SOAP**

- Consulta de información de países
- Conversor y procesador de cálculos básicos

# Fuera de alcance

Además de los aspectos no funcionales del sitio web, las siguientes características no se probarán porque no están incluidas en los requisitos de pruebas.

- Solicitud de devolución de un producto
- Conexiones a APIs de terceros
- Pruebas de rendimiento y carga
- Compatibilidad con otros navegadores o dispositivos
- Seguimiento de la compra
- Pruebas de regresión
- Automatización de pruebas
- Pruebas de seguridad
- Pruebas de localización

# Roles y Responsabilidades

| Cargo         | Tareas                                                                                                                                  | Encargado    |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
| Product Owner | - Aprobar el plan de pruebas y los entregables<br>- Realizar los criterios de aceptación                                                | Juan         |
| Test Manager  | - Gestionar todo el proyecto<br>- Definir direcciones del proyecto<br>- Adquirir los recursos adecuados                                 | David Bonelo |
| Probador      | - Implementar los casos de prueba<br>- Ejecutar las pruebas<br>- Registrar resultados de preubas<br>- Informar los defectos encontrados | David Bonelo |

## Estrategia

El equipo de pruebas realizará pruebas funcionales manuales, siguiendo la metodología ágil de desarrollo dirigido por comportamiento (BDD) debido a que de este modo se promueve la calidad y facilita la comunicación entre el equipo de desarrollo, pruebas y dueño del producto desde las etapas tempranas del desarrollo.

Se realizarán busquedas diréctas de defectos por medio de análisis estáticos de código, utilizando herramientas automáticas para este fin. Las estrategias que se utilizarán para el diseño de las pruebas funcionales son las técnicas de pruebas exploratorias, concecuencia de no tener acceso a la documentación de historias de usuario. También se hará uso de las técnicas de caja negra, particiones de equivalencia y valores frontera, donde se encuentre posibilidad de utilizar diferentes datos de entrada.

### Niveles de prueba

Para el proyecto se realizarán pruebas estáticas de código, pruebas de extremo a extremo para los módulos del sitio web y pruebas de funcionalidad de las API de servicios.

### Datos de prueba

Para verificar el comportamiento, la funcionalidad y la calidad del sistema, los datos de prueba o insumos que se usarán son:

- Cuenta de correo electrónico
- Cuenta de usuario de Katronix con usuario, correo electrónico y contraseña.
- Nombre, referencia y disponibilidad de los productos para la búsqueda y
  navegación.

## Clasificación de errores

- Errores Graves: información crítica presentada erróneamente, información mal registrada en la base de datos, caídas de programas, incumplimiento de objetivos en funciones principales, entre otros.
- Errores Medios (comunes): errores en presentación de datos, incumplimiento de objetivos en funciones secundarias, caídas de programas auxiliares, entre otros.
- Errores Leves: errores en presentación de datos secundarios, no adecuación a estándares, comportamientos correctos pero diferentes en situaciones similares, dificultades de operación, entre otros.

## Entregables

Los entregables que se generarán son:

- Plan de Pruebas
- Casos de prueba
- Matriz de riesgos
- Resultados y evidencia de pruebas
- Cronograma
- Reportes de avance de ejecución
- Informe de gestión de incidentes

## Cronograma

### 18/03/2024

- Elaboración del plan de pruebas
- Diseño y análisis de matriz de riesgos
- Revisión de los requisitos y diseño de los casos de prueba.

### 19/03/2024

- Implementación de las pruebas
- Ejecución casos de pruebas API SOAP
- Ejecución casos de pruebas Web
- Realizar informe de avance

### 20/03/2024

- Elaborar informe de gestión de incidentes
- Análisis estático con SonarQube

## Necesidades, recursos y ambiente

Para el proceso de pruebas del proyecto se requiere de la disponibilidad de las siguientes herramientas y entornos a saber:

El ambiente que usaremos para las pruebas manuales funcionales, es el de producción, el cual está disponible y accesible para los usuarios finales en internet, lo usaremos a través del navegador Mozilla Firefox y la API SOAP a travéz de SoapUI.

### Herramientas de prueba

- Navegador web: Mozilla Firefox
- Insomnia
- SoapUI
- SonarQube

### Entorno de prueba

- Computador con sistema operativo Linux con acceso a internet, procesador Intel i5 y 16GB de RAM
- Aplicativo la tienda Katronix desplegado en la web

## Criterios de Pruebas

### Criterios de suspensión y requisitos de reanudación

- Si los miembros del equipo informan que hay 40% de casos de prueba fracasadas, se suspenderán las pruebas hasta que el equipo de desarrollo solucione todos los casos fallidos.
- De presentarse un error de índole grave (consultar sección 2.4) en cualquier etapa del desarrollo se guiarán los recursos para probar el/los módulos afectados y se retomarán las actividades de prueba habituales al darse confirmación de solución del error.
- Si se agota el presupuesto designado, se deben suspender las pruebas en la página web.
- Si se presentan cambios en el objetivo o alcance de las pruebas, se deben suspender las pruebas temporalmente, para permitir la revisión y actualización del plan de pruebas.

### Criterios de Aprobación

- Se aprobará el proyecto con un 100% de ejecución de la totalidad de las pruebas diseñadas a menos que se dé una razón clara.
- Tasa de tests aprobados del 80%, en el restante 20% pueden existir errores medios o bajos, pero no graves.
- Se cumplió con el objetivo especificado en el plan de pruebas y con las expectativas del cliente.
