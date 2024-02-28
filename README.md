RecipesApp

RecipesApp es una aplicación que permite a los usuarios descubrir y explorar recetas de cocina. Este README proporciona información clave sobre el diseño y las decisiones de desarrollo detrás de la aplicación.

1. Elección de MVVM
Para RecipesApp, opte por la arquitectura MVVM (Model-View-ViewModel) debido a las siguientes razones:

  Separación de Responsabilidades: MVVM permite separar claramente las responsabilidades entre la lógica de presentación (ViewModel), la lógica de negocio y el estado de la aplicación (Model), y la interfaz de usuario (View).

  Pruebas Unitarias Simplificadas: La estructura de MVVM facilita la realización de pruebas unitarias en la lógica de presentación y en el modelo, mejorando la confiabilidad y mantenibilidad del código.

  Escalabilidad y Mantenibilidad: MVVM es escalable y facilita la incorporación de nuevas funcionalidades o modificaciones sin afectar otras partes del código.

2. Proceso de Pensamiento
El desarrollo de RecipesApp se guió por un enfoque iterativo y centrado en el usuario. Algunos de los aspectos clave del proceso de pensamiento incluyeron:

  Diseño Centrado en el Usuario: Se prestó especial atención a la experiencia del usuario (UX) y a la facilidad de uso para garantizar una aplicación intuitiva y atractiva.
  
  Enfoque Modular: Se adoptó un enfoque modular en el diseño para facilitar la incorporación de nuevas funcionalidades y mejorar la mantenibilidad.

3. Pruebas
RecipesApp cuenta con una suite de pruebas para garantizar la calidad y estabilidad del código. Las pruebas incluyen:

  Pruebas Unitarias: Se realizaron pruebas unitarias en las capas de ViewModel y Modelo para garantizar el correcto funcionamiento de la lógica de presentación y de negocio.

  Pruebas de Snapshot: Se realizaron pruebas de snapshot para capturar el estado visual de las vistas y garantizar que no haya cambios no deseados en la interfaz de usuario.

4. Elección de SwiftUI
La elección de SwiftUI como marco de desarrollo se basó en las siguientes razones:

  Declarativo y Moderno: SwiftUI proporciona una sintaxis declarativa y moderna que simplifica el desarrollo de interfaces de usuario, reduciendo la cantidad de código boilerplate.

  Interfaz de Usuario Dinámica: SwiftUI se integra de manera eficiente con las características de la interfaz de usuario dinámica, lo que facilita la adaptación de la aplicación a diferentes tamaños de pantalla y modos de apariencia.

  Desarrollo Rápido y Productivo: La capacidad de vista previa en tiempo real y la depuración instantánea de SwiftUI permiten un desarrollo rápido y productivo.

5. Filtro
El filtro se creo pensando en la experiencia de usuario, el cual puede filtrar por nombre de la receta o bien por los ingredientes que esta posea, además de poder combinarlo, es decir buscar un Pancake y si no se desea con el ingrediente leche, se pueda optar por buscar algún ingrediente alternativo, como ser el agua.
dando un filtro complejo.
