/*
 OOP PRINCIPALS
 
 НСЛЕДОВАНИЕ (INHERITANCE)========================================================
 Наследование - это принцып ООП позволяющий создавать классы наследники, которые будут иметь помимо своих собственных свойств и методов, свойства и методы всех родительских классов.
 
 class Vihecle {            //Создаём класс Vihecle
     let brend: String
     let massa: Int
     init (brend: String, massa: Int) {
         self.brend = brend
         self.massa = massa
     }
     func go() {
         print("It's going!")
     }
 }

 //Создаём класс наследник Car от класса Vihecle, который будет содержать все свойства и методы родительского класса Vihecle, а так же иметь свои собственные свойства и методы.
 class Car: Vihecle {
     let carType: String
     let enginePower: Int
     //Первыми аргументами в инициализаторе всегода пишем собственные свойства класса наследника carType: String и enginePower: Int.
     init(carType: String, enginePower: Int, brend: String, massa: Int) {
         self.carType = carType
         self.enginePower = enginePower
         super.init(brend: brend, massa: massa) //super.init образается к инициализатору
     }                                          //родительского класса, которые так же
                                                // нужно проинициализировать.
     func klakson() {
         print("Bip, bip!")
     }
 }

 //Создаём класс наследник SportCar от класса Car, который будет содержать все свойства и методы родительского класса Car, а соответственно и его родительского класса Vihecle, а так же иметь свои собственные свойства и методы.
 final class SportCar: Car {     //Ключ final делает данный класс конечным и запрещает
     let maxSpeed: Int           //создавать от него наследников.
     //Так как в инициализаторе класса Car есть обращение к классу Vihecle, то наш super.init будет включать и инициализатор класса Car и через его super.init инициализатор класса Vihecle
     init(maxSpeed: Int, enginePower: Int, brend: String, massa: Int) {
         self.maxSpeed = maxSpeed
         super.init(carType: "Sport Car", enginePower: enginePower, brend: brend, massa: massa)
     }
     func accelerator() {
         print("I'am increase speed")
     }
 }

 let vehicle = Vihecle(brend: "Forward", massa: 12)
 vehicle.brend           //Экземпляр класса Vihecle будет иметь свои методв и свойства
 vehicle.massa           //но не иметь методы и войства классов наследников.
 vehicle.go()

 let bmw = Car(carType: "BMW", enginePower: 1500, brend: "City", massa: 300)
 let audi = Car(carType: "AUDI", enginePower: 1600, brend: "City", massa: 220)
 bmw.carType             //Экземпляр класса Car будет иметь как свои методы и свойства
 bmw.enginePower         //так и методы и свойства всех родительских классов по цепочке.
 bmw.klakson()
 bmw.brend
 bmw.massa
 bmw.go()

 let ferrari = SportCar(maxSpeed: 340, enginePower: 1800, brend: "Ferrari", massa: 1300)
 let porche = SportCar(maxSpeed: 350, enginePower: 1900, brend: "Porche", massa: 1400)
 ferrari.maxSpeed
 ferrari.brend
 ferrari.carType
 ferrari.enginePower
 ferrari.massa
 ferrari.go()
 ferrari.klakson()
 ferrari.accelerator()

 var cars: [Car] = [bmw, audi]   //Создали массив класса Car
 cars.append(ferrari)            //Добавили в массив класса Car экземпляр класса SuperCar
 cars.append(porche)             //Добавили в массив класса Car экземпляр класса SuperCar
 //Вызов методов и свойств класса SportCar у экземпляра класса SportCar при обращение к нему через массив класса Car - НЕВОЗМОЖНО!!! Так как сам массив класса Car.
 //cars[3].maxSpeed  -   ERROR
 //(cars[3] as! SportCar).ferrari.accelerator()  -   ERROR

 //Что бы обратить к свойствам или методам класса через массив другого класса, нужно его скастить, НО НУЖНО БЫТЬ ОСТОРОЖНЫМ, И БЫТЬ УВЕРЕННЫМ, ЧТО МЫ ОБРАЩАЕМСЯ ВНУТРИ МАССИВА ИМЕННО К ТОМУ ЭЛЕМЕНТУ, КЛАСС КОТОРОГО ИМЕЕТ ВЫЗЫВАЕМЫЕ МЕТОДВ И СВОЙСТВА ИНАЧЕ БУДЕТ ОШИБКА.
 (cars[3] as! SportCar).maxSpeed
 // Что бы избежать этой ошибки можено сделать проверку типа. Например в цикле.
 var sportCars = [SportCar]()
 for car in cars {
     if car is SportCar {                         //Проверяем тип элемента и если он нас
         sportCars.append((car as! SportCar))     //устраивает добавляем его в массив.
     }                                            //как элемент класса SportCar.
 }
 for sportCar in sportCars {
     print(sportCar.brend)
 }

 
 
 ПОЛИМОРФИЗМ (POLYMORPHISM)=======================================================
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
