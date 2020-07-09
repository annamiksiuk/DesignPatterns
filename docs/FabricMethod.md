# **Фабричный метод (Factory Method)**


### **Фабричный метод** — это порождающий паттерн проектирования, который определяет общий интерфейс для создания объектов в суперклассе, позволяя подклассам изменять тип создаваемых объектов.

Следует использовать, когда необходимо делегировать создание экземпляров другому классу и заранее неизвестно, экземпляры какого класса будут созданы.


## Пример использования


**Диаграммы**

![Father](../fm_image1.png)

![Toy](../fm_image2.png)

![ToyShop](../fm_image3.png)


**Код**

```
class Father {
    func buyToy(from shop: ToyShop) -> Toy {
        return shop.sellToy()
    }
}

protocol Toy {
    func play()
}

class Doll: Toy {
    func play() {
        print("mama-mama")
    }
}

class Ball: Toy {
    func play() {
        print("play with me")
    }
}

protocol ToyShop {
    func sellToy() -> Toy
}

class SportToyShop: ToyShop {
    func sellToy() -> Toy {
        return Ball()
    }
}

class KidsToyShop: ToyShop {
    func sellToy() -> Toy {
        return Doll()
    }
}
```

## Ресурсы

* https://refactoring.guru/ru/design-patterns/factory-method
* https://refactoring.guru/ru/design-patterns/factory-method/swift/example
* https://lickability.com/blog/understanding-creational-design-patterns/#-the-factory-pattern
* https://www.youtube.com/watch?v=TwIjjTC5g7g 
 
