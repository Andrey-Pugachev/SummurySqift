/*
OOP THESIS
 1. В swift всё есть объект! Например число 3 это объект класса Int,
    который обладает своими свойствами и методами. Так например создать
    объект 2 можно с помощью метода .init()
        let num = Int.init(2)                       // 2
            or
        let num = Int(2)                            // 2

 2. ЭКЗЕМПЛЯР - это конкретный объект определенного класса имеющий свои свойства и методы,
    например есть класс building, и есть эеземпляр этого класса cottage^ который в совю
    очередь может иметь такие свойства, как
     cottage.floorsNumber = 2
     cottage.roomsNumber = 6
     cottage.buildingArea = 210
    и такой метод как
     cottage.openDoorWith(identifier:)
 
 3. МОДУЛИ - блоки кода вплодь до библиотек и фреймворков, например Foundation
    (Cocoa's Foundation Framework)
 
 4. ПРОСТРАНСТВО ИМЁН - ???????????????????????????????????????????????
 
 5. Swift API Design Guideline — это своеобразная дорожная карта, собравшая правила,
    благодаря которым синтаксис языка стал четким, понятным и приятным.
 
 
 ЧЕТЫРЕ МЕХАНИЗМА СОЗДАНИЯ ОБЪЕКТОВ====================================
 
 1. Перечисления (enum)
 2. Структуры (struct)
 3. Классы (class)
 4. Протоколы (protocol)
 
 
 ПЕРЕЧИСЛЕНИЯ (ENUM)===================================================
 Перечисление - это тип данных, содержащий множество альтернативных значений, каждое из которых может
 быть проинициализировано некоторому параметру.
 
 
 
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
 
 
 
 Инициализация одного из значений перечисления параметру:
 
 var roubleCurrency: CurrencyUnit = .rouble
 var otherCurrency = CurrencyUnit.euro
 let euroCurrency: AdvancedCurrencyUnit =  .euro(сountries: ["German", "France"], shortName: "EUR")
 let australia: AdvancedCurrencyUnit.DollarCountries = .australia
 
 
 
 Оператор switch для перечислений:
 
 switch dollarCurrency {                                   Досмтуп к ассоциированым параметрам
     case .rouble:                                         осуществляется связыванием значений
         print("Рубль")                                    оператором let.
     case let .euro(countries, shortname):
         print("Евро. Страны: \(countries). Краткое наименование: \(shortname)")
     case .dollar(let nation, let shortname):
         print("Доллар \(nation). Краткое наименование: \(shortname)")
 }
                                                           // Доллар usa. Краткое наименование: USD
 
 
 
 Связанные значения членов перечисления:
 
 enum Smile: String {                               Можно привязать какое-то значение бащового типа
     case joy = ":)"                                к каждому члену перечисления. Связанные значения
     case laugh = ":D"                              должны быть указаны для каждого члена перечисления
     case sorrow = ":("                             и быть однотипными. Одновременное определение
     case surprise = "o_O"                          исходных значений и ассоциированных параметров
 }                                                  запрещено.
 
 
 
 Доступ к связанным значениям (осуществляется через метод rawValue):
 
 let iAmHappy = Smile.joy
 iAmHappy.rawValue                                  // ":)"
 
 
 
 Инициализатор:
 
 enum Planet: Int {
       case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto = 999
 }
    Если тип перечисления Int то связанное значение каждого последующего элемента будет на
    единицу больге предыдущего, если не указанно иное. Начало с нуля         // jupiter = 5
 
 let myPlanet = Planet.init(rawValue: 3)                                     // earth
 var anotherPlanet = Planet.init(rawValue: 11)                               // nil
 
 
 
 Свойства в перечислениях:
 
 
 
 
 
 
 
 
 
 
 
 
 */
