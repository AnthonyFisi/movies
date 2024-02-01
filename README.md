#  Prueba técnica - App peliculas

### Resultado del desafío

Lista de películas

![first_screen](https://github.com/AnthonyFisi/movies/assets/55923180/aacab848-4eee-451f-b99d-c81c1a60f3a6)

Detalle de película

![detail_screen](https://github.com/AnthonyFisi/movies/assets/55923180/aa5e8c82-5b52-4163-92ee-4b462768d240)


### Desafío

Aborde el desafío con un previo conocimiento de la patrón de arquitectura de VIPER ya que a partir de ello gira la estructura del aplicativo,
Algunos recursos en internet y libros me dieron claridad de cómo implementarlo de la mejor manera posible. El tener como objetivo que cada capa sea desacoplada
quizás fue una parte difícil de entender al inicio pero logre entender el objetivo del desacoplamiento para poder testear cada capa de forma independiente 
a través de mocks. Con respecto a la cobertura del reto logre culminar la vista de lista de videos y el detalle. Los puntos que faltaron implementar fueron la de
guardar en CoreData pero podría dar una sugerencia tratando de usar la validación de internet en el Presenter y luego en función de la respuesta solicitar a la capa 
Interactor solicita la información de películas desde una llamada a la API de películas o a las películas almacenadas en CoreData.



### Estructura de cada modulo 

Patron de arquitectura VIPER

```
|__Modulo
    |__ Entity
        |__ Entity.swift
    |__ ViewModel
        |__ Model.swift
        |__ Mapper.swift
    |__ Presenter.swift
    |__ Interactor.swift
    |__ View.swift
    |__ Router.swift
```

### Recursos utilizados

* El siguiente recurso lo use para poder gestionar la descarga de imagenes en la lista y detalle de las peliculas.
  (https://swiftpackageindex.com/onevcat/Kingfisher)







