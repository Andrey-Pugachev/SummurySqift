/*
 ПЕРЕЧИСЛЕНИЯ (ENUM)
 
 Перечисление - это тип данных, содержащий множество альтернативных значений, каждое из которых может
 быть проинициализировано некоторому параметру.
 
 Перечисление группирует в себе: члены(могут иметь связвнные значения или ассоциированные
  значения), свойства, методы, другие перечисления.
 
 enum ИмяПеречисления {
    caes членперечисления1
    caes членперечисления2
    caes членперечисления3

    var свойство1 { return ... }
    var свойство2 { return ... }
    var свойство3 { return ... }
 
    func метод1 {...}
    func метод2 {...}
    func метод3 {...}
 
    enum ПеречислениеВПеречислени1 {
        ...
    }
    enum ПеречислениеВПеречислени2 {
        ...
    }
    enum ПеречислениеВПеречислени3 {
        ...
    }
 }
 
 
 
 Создание перечисления:
 
     enum CurrencyUnit {
         case rouble
         case euro
     }

     enum CurrencyUnit {
         case rouble, euro
     }
 
     enum AdvancedCurrencyUnit {                                Создадим Ассоциированные параметры
         case rouble(сountries: [String], shortName: String)    каждому члену перечисления, набор
         case euro(сountries: [String], shortName: String)      параметров может быть индивидуальным.
     }                                                          значения ассоциированных параметров
                                                                устанавливаются при инициализации
                                                                члена перечисления параметру.
 
     enum AdvancedCurrencyUnit {                                Можно не указывать имена ассоциированным
         case rouble([String], String)                          параметрам.
         case euro([String], String)
     }
 
     enum AdvancedCurrencyUnit {                                    Членами любого перечисления могут
         enum DollarCountries {                                     быть другие перечисления, причем в
             case usa                                               данном случае область вилимости
             case canada                                            ограничена родительсконо
             case australia                                         перечмсления.
         }
         case rouble(сountries: [String], shortName: String)
         case euro(сountries: [String], shortName: String)
         case dollar(nation: DollarCountries, shortName: String)
     }
 
     enum Pets: String {
         case cat "Васька"
         case dog "Тузик"
        
         var int: Int {return 5}        Мы не можем запихнуть в enum хранимые значения, но мы
     }                                  можем запихнуть туда замыкание6 которое вернёт 5
            
 
 
 Инициализация одного из значений перечисления параметру:
 
 var roubleCurrency: CurrencyUnit = .rouble
 var otherCurrency = CurrencyUnit.euro
 let euroCurrency: AdvancedCurrencyUnit =  .euro(сountries: ["German", "France"], shortName: "EUR")
 let australia: AdvancedCurrencyUnit.DollarCountries = .australia
 
 
 
 Оператор switch для перечислений (При нажатие cmd+b у нас включится автозаполнение со всеми
 вариантами перечисления.):
 
 switch dollarCurrency {                                   Досмтуп к ассоциированым параметрам
     case .rouble:                                         осуществляется связыванием значений
         print("Рубль")                                    оператором let.
     case let .euro(countries, shortname):
         print("Евро. Страны: \(countries). Краткое наименование: \(shortname)")
     case .dollar(let nation, let shortname):
         print("Доллар \(nation). Краткое наименование: \(shortname)")
 }
                                                           // Доллар usa. Краткое наименование: USD
 
 
 
 Связанные значения членов перечисления (Числое Значение):
 
 enum Smile: String {                               Можно привязать какое-то значение бащового типа
     case joy = ":)"                                к каждому члену перечисления. Связанные значения
     case laugh = ":D"                              должны быть указаны для каждого члена перечисления
     case sorrow = ":("                             и быть однотипными. Одновременное определение
     case surprise = "o_O"                          исходных значений и ассоциированных параметров
 }                                                  запрещено.
 
 
 
 Доступ к связанным значениям (осуществляется через метод rawValue):
 
 let iAmHappy = Smile.joy                           // joy
 iAmHappy.rawValue                                  // ":)"
 let iAmHappy2 = Smile.joy.rawValue                 // ":)"
 
 
 
 Протокол CaseIterable
 
 enum MyPetName: String, CaseIterable {   //Мы подписали наше перечисление под протокол
     case cat = "Васька"                  //CaseIterable
     case dog = "Тузик"
     case boa = "Шнурок"
     case parrot = "Попка"
 }

 var myCat = MyPetName.cat                // cat
 var myCatName = myCat.rawValue           // "Васька"
 var myCatName2 = MyPetName.cat.rawValue  // "Васька"

 var myPets = MyPetName.allCases          // cat dog boa parrot При помощи свойства allCases
                                          // мы получем все члены перечисления.
 print(myPets)
 for pet in myPets {                      // Так же вернет нам все чистые значения чденов
     print(pet.rawValue)                  // перечисления.
 }

 
 
 Инициализатор:
 
 enum Planet: Int {
       case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto = 999
 }
    Если тип перечисления Int то связанное значение каждого последующего элемента будет на
    единицу больге предыдущего, если не указанно иное. Начало с нуля         // jupiter = 5
 
 let myPlanet = Planet.init(rawValue: 3)                                     // earth
 var anotherPlanet = Planet.init(rawValue: 11)                               // nil
 
 enum Season: Int {
     case winter = 1, spring, summer, autumn
     var lable: String {
         switch self {
         case .winter:
             return "Зима"
         case .spring:
             return "Весна"
         case .summer:
             return "Лето"
         case .autumn:
             return "Осень"
         }
     }
     init?(_ value: String) {               // Написали свой собственны инициализатор.
         switch value {
         case "Зима": self = .winter
         case "Весна": self = .spring
         case "Лето": self = .summer
         case "Осень": self = .autumn
         default: return nil
         }
     }
 }
 let season = Season("Зима")                // winter Через сырое значение добираемся                                                 // до члена перечисления.
 
 
 
 Свойства в перечислениях:
    Это хранилище, аналогичное переменной или константе, объявленное в пределах
    перечисления, доступ к которому осуществляется через экземпляр перечисления.
    (в качестве значения свойств могут выступать только замыкания(вычисляемые свойства)
    и может быть только переменной var)
 
 enum Smile: String {
     case joy = ":)"
     case laugh = ":D"
     case sorrow = ":("
     case surprise = "o_O"
     var description: String { return self.rawValue } // Вычисляемое свойство.
 }
 let mySmile: Smile = .sorrow               // sorrow
 mySmile.description                        // ":("
 
 
 
 Методы в перечислениях:
 
 enum Smile: String {
     case joy = ":)"
     case laugh = ":D"
     case sorrow = ":("
     case surprise = "o_O"
     var description: String {return self.rawValue}
     func about() {
         print("Перечисление содержит список смайликов")
     }
 }
 var otherSmile = Smile.joy
 otherSmile.about()                         // Перечисление содержит список смайликов
 
 
 
 Оператор self Возвращает текущее конкретный член перечисления проинициализированный оператору.
 
 enum Smile: String {
     case joy = ":)"
     case laugh = ":D"
     case sorrow = ":("
     case surprise = "o_O"
     var description: String { return self.rawValue }
     func about() {
         print("Перечисление содержит список смайликов")
     }
     func descriptionValue() -> Smile {         // Тут происходит возврат self то есть самого
         return self }                             экземпляра.
     func descriptionRawValue() -> String {     // Тут возвращается связное (сырое) значение
         return rawValue                           чдена жанного экземпляра.
     }
 }
 var otherSmile = Smile.joy
 otherSmile.descriptionValue()               // joy
 otherSmile.descriptionRawValue()            // ":)"
 
 Оператор self используется внутри перечисления в двух случаях:
    1) Для доступа к текущему члену перечисления
    2) Для доступа к свойствам и методам перечисления.

 
 
 Рекурсивные перечисления.
 
 enum ArithmeticExpression {
     case addition(Int, Int)
     case substraction(Int, Int)
     func evaluate() -> Int {
         switch self {
         case .addition(let left, let right):
             return left + right
         case .substraction(let left, let right):
             return left - right
         }
 } }
 var expr = ArithmeticExpression.addition(10, 14)
 expr.evaluate()                                    // 24
 
 Данный способ имеет серьезное ограничение: он способен моделировать только
 одноуровневые арифметические выражения: 1 + 5, 6 + 19 и т. д. Что бы это исправить
 нужно, что бы перечисление, описывающее выражение, давало возможность выполнять
 операции само с собой. Это и есть рекурсия. Для этого нужно поставить оператор indirect
 Перед enum или перед case того членав котором нужно предусмотреть возможность
 обращения к перечислению.
 
 enum ArithmeticExpression {
     // указатель на конкретное значение
     case number( Int )
     // указатель на операцию сложения
     indirect case addition( ArithmeticExpression, ArithmeticExpression )
     // указатель на операцию вычитания
     indirect case subtraction( ArithmeticExpression, ArithmeticExpression )
     // метод, проводящий операцию
     func evaluate( _ expression: ArithmeticExpression? = nil ) -> Int {
         // определение типа операнда (значение или операция)
         switch expression ?? self {
             case let .number( value ):
                 return value
             case let .addition( valueLeft, valueRight ):
                 return evaluate( valueLeft ) + evaluate( valueRight )
             case .subtraction( let valueLeft, let valueRight ):
                 return evaluate( valueLeft ) - evaluate( valueRight )
         }
     }
 }
 let hardExpr = ArithmeticExpression.addition( .number(20),
               .subtraction( .number(10), .number(34) ) )
 hardExpr.evaluate() // -4
 
 */



//СОЧИНЕНИЕ ENUM======================================================================
//import UIKit
//
////Создаём перечисление Задиаков
//enum Zodiac: String {
//    case warrior = "Воин"
//    case magician = "Маг"
//    case thief = "Вор"
//    case assasin = "Убийца"
//    case artisan = "Ремесленик"
//    case merchant = "Купец"
//}
//
////Создаём перечисление расс
//enum Race {
//    case elf
//    case ork
//    case slavic
//}
//
////Создаём класс игрока
//class Player {
//    let name: String
//    var weapon: Weapon = Weapon(title: "Кулаки", level: .lower, weaponClass: .melee, attackBase: 5)
//    let zodiac: Zodiac
//    let race: Race
//    var hp = 120
//    init (name: String, zodiac: Zodiac, race: Race) {
//        self.name = name
//        self.zodiac = zodiac
//        self.race = race
//    }
//    func putOnWeapon(_ weapon: Weapon) {
//        self.weapon = weapon
//    }
//    func attack(enemy: Player, dist: Int) -> Int {
//        var attackAmount = Double(weapon.attackBase)
//        let luckyCoefficient = Double.random(in: 0.9...1.1)
//        switch weapon.weaponClass {
//        case .melee:
//            guard dist <= 2 else { return 0 }
//            if self.race == .ork { attackAmount += 13 / 10 }
//            if self.zodiac == .warrior { attackAmount *= 14 / 10 }
//            if self.zodiac == .assasin { attackAmount *= 12 / 10 }
//        case .throwing(minRange: let min, maxRange: let max):
//            guard min...max ~= dist else { return 0 }
//            if self.race == .elf { attackAmount *= 12 / 10 }
//        case .magical(type: _):
//            if self.race == .slavic { attackAmount *= 12 / 10 }
//            if self.zodiac == .magician { attackAmount *= 13 / 10 }
//        }
//        attackAmount *= luckyCoefficient
//        enemy.hp -= Int(attackAmount)
//        return Int(attackAmount)
//    }
//}
//
////Создаём класс оружие
//struct Weapon {
//    let title: String
//    let level: Level
//    let weaponClass: WeaponClass
//    let attackBase: Int
//    enum Level: Int {
//        case lower
//        case begin
//        case middle
//        case high
//        case upper
//    }
//    enum WeaponClass {
//        case melee
//        case throwing(minRange: Int, maxRange: Int)
//        case magical(type: MagicType)
//    }
//    enum MagicType: CustomStringConvertible {
//        case ice, fire, electro
//        var description: String {
//            switch self {
//            case .ice: return "Лёд"
//            case .fire: return "Огонь"
//            case .electro: return "Молния"
//            }
//        }
//    }
//}
//
//
//
//let orcadiy = Player(name: "Оркадий Укупник", zodiac: .warrior, race: .ork)
//let axe = Weapon(title: "Орчий топор", level: .middle, weaponClass: .melee, attackBase: 24)
//
//let elfizaveta = Player(name: "Эльфизавета", zodiac: .assasin, race: .elf)
//let bow = Weapon(title: "Эльфийский лук", level: .high, weaponClass: .throwing(minRange: 4, maxRange: 50), attackBase: 17)
//
//orcadiy.putOnWeapon(axe)
//elfizaveta.putOnWeapon(bow)
//
//print(orcadiy.attack(enemy: elfizaveta, dist: 5))
//print(elfizaveta.attack(enemy: orcadiy, dist: 5))
//
//print(orcadiy.hp)
//print(elfizaveta.hp)



//ENUM SUMMARY
/*
enum ИмяПеречисления {
   caes членперечисления1           Могут содержать связные значения которые задаются
   caes членперечисления2           для каждого члена перечисления, и одного типа.
   caes членперечисления3           Могут иметь ассоиативные заняения, колличество членов
                                    перечисления имеющих ассоциативное значение может быть
                                    любым и структура аасоциативных значений разной.
 
   var свойство1 { return ... }     Свойства могут быть только переменными и не иметь
   var свойство2 { return ... }     фиксированного значения, если требуется запихнуть
   var свойство3 { return ... }     значение то это делается в виде замыкания
                                    { return значение }

   func метод1 {...}
   func метод2 {...}
   func метод3 {...}

   enum ПеречислениеВПеречислени1 {
       ...
   }
   enum ПеречислениеВПеречислени2 {
       ...
   }
   enum ПеречислениеВПеречислени3 {
       ...
   }
}
*/
