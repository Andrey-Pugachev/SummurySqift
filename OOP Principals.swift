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
 
 Полиморфизм- это способность классов переопределять методы, свойства и инициализаторы классов родителей.
 В рамках полиморфзма мы можем переопределять только:
    1) ВЫЧИСЛЯЕМЫЕ свойства (При этом тип этого свойства не должен меняться!).
    2) Инициализаторы (При этом название тип всех его аргументов не должен меняться!).
    3) Методы. (При этом функциональный тип этого метода не должен меняться!)
 
 //СОЗДАНИЕ РОДИТЕЛЬСКОГО КЛАССА
 class Teacher {
     let name: String
     var description: String {
         return "hello my name is \(name)."
     }
     init (name: String) {
         self.name = name
     }
     func teach() {
         print("I teach students right now!")
     }
 }
 //let teacher = Teacher(name: "Andrey")
 //teacher.name
 //teacher.description
 //teacher.teach()


 //СОЗДАНИЕ КЛАССА НАСЛЕДНИКА ОТ КЛАССА Teacher
 //class IOSTeacher: Teacher {
 //    let speciality: String
 //
 //    init (name: String, speciality: String) {
 //        self.speciality = speciality
 //        super.init(name: name)
 //    }
 //
 //    func iosCoding() {
 //        print("I code new application right now!")
 //    }
 //}
 //let iosTeacher = IOSTeacher(name: "Fedya", speciality: "IOS")
 //iosTeacher.speciality
 //iosTeacher.name
 //iosTeacher.teach()
 //iosTeacher.iosCoding()
 //iosTeacher.description


 //ПЕРЕОПРЕДЕЛЕНИЕ РОДИТЕЛЬСКОГО СВОЙСТВА В КЛАССЕ НАСЛЕДНИКЕ
 //class IOSTeacher: Teacher {
 //    let speciality: String
 //    override var description: String {        //Переопределяем свойство description.
 //        return "hello my name is \(name). I'am \(speciality) teacher."
 //    }
 //    init (name: String, speciality: String) {
 //        self.speciality = speciality
 //        super.init(name: name)
 //    }
 //    func iosCoding() {
 //        print("I code new application right now!")
 //    }
 //}
 //iosTeacher.description


 //ПЕРЕОПРЕДЕЛЕНИЕ ИНИЦИАЛИЗАТОРА В КЛАССЕ НАСЛЕДНИКЕ
 //class IOSTeacher: Teacher {
 //    let speciality: String
 //    override var description: String {
 //        return "hello my name is \(name). I'am \(speciality) teacher."
 //    }
 //    init (name: String, speciality: String) {
 //        self.speciality = speciality
 //        super.init(name: name)
 //    }
 //    override init(name: String) {
 //        self.speciality = "IOS"     //Переопределяем свойство speciality в инициализаторе.
 //        super.init(name: name)      //Теперь через экземпляр данного класса мы будем иметь
 //    }                               //доступ к двум инициализаторам.
 //    func iosCoding() {
 //        print("I code new application right now!")
 //    }
 //}
 ////При инициализации значеения константе через переопределенный инициализатор где есть только параметр name: String, параметр speciality: String будет задаваться автоматически "Front".
 //let iosTeacher2 = IOSTeacher(name: "Andrey")
 //iosTeacher2.description
 ////При инициализации значеения константе через переопределенный инициализатор где есть и параметр name: String, и параметр speciality: String оба они будут задаваться при инициализации значения.
 //let iosTeacher3 = IOSTeacher(name: "Evgeniy", speciality: "Front")
 //iosTeacher3.description


 ////ПЕРЕОПРЕДЕЛЕНИЕ МЕТОДА В КЛАССЕ НАСЛЕДНИКЕ
 //class IOSTeacher: Teacher {
 //    let speciality: String
 //    //Переопределение родительского ВЫЧИСЛЯЕМОГО свойства.
 //    override var description: String {
 //        return "hello my name is \(name). I'am \(speciality) teacher."
 //    }
 //
 //    init (name: String, speciality: String) {
 //        self.speciality = speciality
 //        super.init(name: name)
 //    }
 //    //Переопределение родительского инициализатора.
 //    override init(name: String) {
 //        self.speciality = "IOS"
 //        super.init(name: name)
 //    }
 //
 //    func iosCoding() {
 //        print("I code new application right now!")
 //    }
 //    //Переопределение родительской функции.
 //    override func teach() {
 //        print("I teach students \(speciality) development right now!")
 //    }
 //
 //    //ПЕРЕГРУЗКА ФУНКЦИИ - мы создаю вторую функцию с именем teach(), но с другим функциональным типом и теперь при обращении к методу с данным именем через имя экземпляра класса у нас будет выбор между teach() и teach(hours:)
 //    func teach(hours: Int) {
 //        print("I teach students \(speciality) development for \(hours) hours!")
 //    }
 //}
 //let iosTeacher3 = IOSTeacher(name: "Vitaliy", speciality: "AbraKadabra")
 //iosTeacher3.teach()
 //iosTeacher3.teach(hours: 5)
 
 
 
 ИНКАПСУЛЯЦИЯ (ENCAPSULATION)=======================================================
 
 Инкапсуляция - это принцып размещения данных и методов работы с этими данными в одном объекты и регламентирование доступа к этим данным по средством определенных ключевиков.
 
 //class Wallet {
 ////    var balance = 0           //У нас есть общедоступное свойство balance c которым мы
 //                                //можем сделать всё, что кгодно
 ////    func add(cash: Int) {
 ////        self.balance += cash
 ////        print(self.balance)
 ////    }
 ////    func withdraw(cash: Int) -> Int {
 ////        guard cash <= balance else {
 ////            return 0
 ////        }
 ////        balance -= cash
 ////        return cash
 ////    }
 ////}
 ////var wallet = Wallet()
 ////wallet.balance = 5000     //Безконтрольно создаём баланс.
 ////wallet.balance -= 10000   //Беконтрольно меняем его.
 //
 //
 ////ИНКАПСУЛЯЦИЯ СВОЙСТВА - что бы избежать безконтрольного обращения к баланcу нашего кошелька, делаем его приватным при поможи ключевика privat.
 ////class Wallet {
 ////    privat var balance = 0  //Теперь мы не можем обращаться к приватному свойству balance
 //                              //что бы теперь осуществлять манипуляции с balance мы должны
 //                              //обращаться ни к самому свойству balance, а к методам по
 //                              //по работе с ним: add(), withdraw() и getBalance().
 ////    func add(cash: Int) {
 ////        self.balance += cash
 ////        print(self.balance)
 ////    }
 ////    func withdraw(cash: Int) -> Int {
 ////        guard cash <= balance else {
 ////            return 0
 ////        }
 ////        balance -= cash
 ////        return cash
 ////    }
 ////    func getBalance() -> Int {
 ////        return self.balance
 ////    }
 ////}
 //
 //
 ////ИНКАПСУЛЯЦИЯ ИНИЦИАЛИЗАТОРА - осуществляется для того, что бы нельзя было осуществлять создание экземпляров кокого-либо класса из вне этого класса.
 //
 //class Wallet {
 //    static let shared = Wallet()      //Складываем экземпляр класса Wallet в статическое свойство shared (общепринятое название).теперь есть один общий на всех кошелёк.
 //    private init() { }      //Эта запись значит6 что данным инициализатором мы можем пользоваться только внутри класса Wallet и мы им воспользовались один раз когда создали экземпляр класса Wallet  и полодили его в свойство shared. С наруже инициализатор не доступен и соответственно создано новые эезеп=мпляры класса Wakket из вне невозможно.
 //    private var balance = 0
 //    func add(cash: Int) {
 //        self.balance += cash
 //        print(self.balance)
 //    }
 //    func withdraw(cash: Int) -> Int {
 //        guard cash <= balance else {
 //            return 0
 //        }
 //        balance -= cash
 //        return cash
 //    }
 //    func getBalance() -> Int {
 //        return self.balance
 //    }
 //}
 ////class Shop {
 ////    var wallet = Wallet() //В даном случае это разные кошельки в каждом классе.
 ////}
 ////class Job {
 ////    var wallet = Wallet() //В даном случае это разные кошельки в каждом классе.
 ////}
 ////Для того, что бы у нас был один единый Экземпляр класса Wallet мы должны воспользоваться микропаттерном singleTone (одиночка) а для этого обявляем статическое свойство shared и  кидаем туда экземпляр класса Wallet. а после этого мы можем обращаться именно к этому экземпляру класса Wallet в любой часли программы, через свойство shared.
 ////class Shop {
 ////    var wallet = Wallet.shared //Ссылка на общий кашелек.
 ////}
 ////class Job {
 ////    var wallet = Wallet.shared //Ссылка на общий кашелек.
 ////}
 ////Но мы всё еще можем создать другой экземпляр класс Wallet и что бы запретить это делать нам надосделать приватный инициализатор. private init() { }. Теперь из вне мы не можем создать экземпляр класса Wallet.
 ////var aushan = Shop()
 ////var factory = Job()
 //
 //
 ////ИНКАПСУЛЯЦИЯ МЕТОДА - позволяет сркыть метод от использования вне его класса, и использовать только внутри этого класса.
 //
 //class Person {
 //    let wallet = Wallet.shared
 //    var goods = [String]()
 //    private func get(goods: String) {       //Что бы нельзя было образаться в этим функциям
 //        self.goods.append(goods)            //из вне мы их инкапсулируем, их можно
 //        print("Good \(goods) is bought.")   //использовать только внутри этого класса.
 //    }
 //    private func give(money: Int) {         //Что бы нельзя было образаться в этим функциям
 //        self.wallet.withdraw(cash: money)   //из вне мы их инкапсулируем, их можно
 //        print("Check is \(money).")         //использовать только внутри этого класса.
 //    }
 //    func buy(good: String, forMonye: Int) {             //Тут мы будем испольховать наши
 //        guard forMonye <= wallet.getBalance() else {    //приватные функции, а не вне этого
 //            return                                      //класса.
 //        }
 //        get(goods: good)
 //        give(money: forMonye)
 //    }
 //}
 //let vasya = Person()
 //vasya.wallet.add(cash: 80000)
 //vasya.buy(good: "Iphone13 mini", forMonye: 69990)
 //vasya.wallet.getBalance()

 */
