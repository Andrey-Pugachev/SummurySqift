/*
CLASS
 
 Класс - это ссылочный тип данных то есть параметры данного класса содержат ссылку на экземпляр класса то есть объект. Класс состоит из свойств, методов, инициализаторы.
 
 Инициализировать класс - значит сообщить классу его первоначальное значение. Если бы не было инициализатора6 нам пришлось бы задавать всем свойствам значения по умолчанию и в таком случае изменяемые совйсва должны были быть переменными, а это не правильно (например имя должно быть константой)
     class Player {
         let name0: String
         var lvl: Int = 0           //Если мы задаём значение по умолчанию, то данное свойство
                                    //не обязательно указывать в инициализаторе.
 
         func printInfo() {         //Создаём метод выводящий информацию об игроке.
             print("Player's name is \(name0) and his level is \(lvl).")
         }
         func lvlUp(count: Int) {
             self.lvl += 1
         }
         init(name1: String) {      //При помощи инициализатора мы сообщаем классу что свойство
             self.name0 = name1     //данного класса name0 будет равно параметру функции init -
         }                          //name1.
     }
 
 Дефолтная инициализация - указание значения свойства класса по умолчанию, если не указано иное
    init(name: String = "Guest") {  В данном случае если при создании объекта класса мы не
        self.name = name            укажем параметр name, то он будет задан по дефолту Guest.
    }
 
 
 
 Свойства:
 
 class SalesManager {
     
     //Хранимые свойства. СВОЙСТВА ЭКЗЕМПЛЯРА
     var salaryBase: Int = 15000
     var calls: Int = 0
     var sanctionsAmount: Int = 0
     //Наблюдатели свойств - это механизмы willSet{} и didSet{}
     var salesAmount: Int = 0 {
         willSet { //salesAmount будет равен старому значению, а новое будет в newValue
             print("Вы продали товара на \(newValue), предыдущее значение \(salesAmount)")
         }
         didSet { //salesAmount будет равен новому значению, а старое будет в oldValue
             print("Вы продали товара на \(salesAmount), предыдущее значение \(oldValue)")
         }
     }
     
     //Вычисляемые свойства (могут быть только переменными, на то они и вычисляемые [замыкания]). СВОЙСТВА ЭКЗЕМПЛЯРА
     var motivation: Int {
         if  calls >= 130 && salesAmount >= 300000 {
             let motiv = self.calls * 50 + salesAmount * 12 / 100
             return motiv
         } else {
             return 0
         }
         
     }
     var salary: Int {
         let result = salaryBase + motivation - sanctionsAmount
         return result < salaryBase / 2 ? salaryBase / 2 : result
     }
     
     //Ленивые свойства - инициализируются в момент первого использования. СВОЙСТВА ЭКЗЕМПЛЯРА
     lazy var userAva = UIImage()
     
     //СВОЙСТВО ТИПА - задаются через ключевик static и могут быть либо var либо let. Изменить свойство типа можно только всему типу, а не каждому экземпляру по отдельности.
     static var phoneModel = "IPhone SE2"    //Статическое свойство могут быть хранимые
                                             //(и вычисляемые ???????)
     class var companyTitle: String { return "Zara" } //Классовые свойства могут быть только
                                                      //у класса и могут быть только
                                                      //вычисляемыми.
                                            
 }

 let fedya = SalesManager()

 //Доступ к СВОЙСТВАМ ЭКЗЕМПЛЯРА осуществляется через экземпляр.
 fedya.motivation
 fedya.salaryBase
 fedya.salary
 fedya.calls
 fedya.salesAmount
 fedya.sanctionsAmount
 fedya.userAva           //Мы обратились к ленивому свойству и лиш сейчас оно
                         //проинициализировалось так поступают с тяжелыми обектами
                         //для экономии ресурса.


 //Доступ к СВОЙСТВАМ ТИПА осуществляется через имя типа.
 SalesManager.phoneModel
 SalesManager.companyTitle
 
 */
