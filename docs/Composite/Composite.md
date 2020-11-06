# **Компоновщик (Composite)**


### **Компоновщик** — это структурный паттерн проектирования, который позволяет сгруппировать множество объектов в древовидную структуру, а затем работать с ней так, как будто это единичный объект.

Следует использовать для группировки мелких компонентов в более крупные, которые также могут стать основой для еще более крупных структур.


## Пример использования


**Диаграммы**

![Composite](сomposite.png)

**Код**

```
protocol Renting {
    func rentalBill(amount: Int)
}

extension KidsToyShop: Renting {
    func rentalBill(amount: Int) {
        print("KidsToyShop - I should to pay rent \(amount)")
    }
}

extension SportToyShop: Renting {
    func rentalBill(amount: Int) {
        print("SportToyShop - I should to pay rent \(amount)")
    }
}

class RentingComposite: Renting {
    func addRenter(renter: Renting) {
        renters.append(renter)
    }

    func rentalBill(amount: Int) {
        renters.forEach {
            $0.rentalBill(amount: amount)
        }
    }

    private var renters = [Renting]()
}

class Accountant {
    func sendInvoiceRent(amount: Int, to renter: Renting) {
        renter.rentalBill(amount: amount)
    }
}
```

## Ресурсы

* https://refactoring.guru/ru/design-patterns/composite
* https://refactoring.guru/ru/design-patterns/composite/swift/example
* https://www.youtube.com/watch?v=eZx8eiTntAs
 
