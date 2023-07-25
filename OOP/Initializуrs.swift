/*
 INITIALEZERS
 
 Инициализатор - это метод объявленный в классе, который используется для создания объекта.
 Любой объект имеет 4 стадии жизненного цикла:
  - Декларирование (объявление)
  - Инициализация [За инициализацию объекта отвечает инициализатор]
  - Использование
  - Удаление
 
 Свойство SELF - это неявное свойство экземпляра, которое хранит в себе ссылку на сам экземпляр.
 
 class Car {
     let brendAndModel: String
     let wheelsCount: Int
     var color = "White"
     
     //MEMBERWISE-ИНИЦИАЛИЗАТОР - это инициализатор который полностью дублирует свои свойства
 //    init(brensAndModel: String, wheelsCount: Int, color: String) {
 //        self.brensAndModel = brensAndModel
 //        self.wheelsCount = wheelsCount
 //        self.color = color
 //    }
     
     //ИНИЦИАЛИЗАТОР ПО УМОЛЧАНИЮ - это когда мы задаём значение одного/нескольких (частичная) или всех (полная) параметров инициализатора по умолчанию, как в нашем случае мы задали параметр wheelsCount: Int = 4, каким либо значением которое будет использовано в том случае если при создании экземпляра этот параметр не будет проинициализирован.
 //    init(brensAndModel: String, wheelsCount: Int = 4) {
 //        self.brensAndModel = brensAndModel
 //        self.wheelsCount = wheelsCount
 //    }
     
     //FAILABLE-ИНИЦИАДИЗАТОР - это инициадизатор,который либо вернёт нам проинициализированый объект, либо nil, тем самым мы устанавливам проверку на коректность инициализируемых значений.
 //    init?(bren: String, model: String, wheelsCount: Int) {
 //        if wheelsCount < 4 {
 //            return nil
 //        } else {
 //            self.wheelsCount = wheelsCount
 //            self.brensAndModel = "\(bren) \(model)"
 //        }
 //    }
     
     //"УДОБНЫЙ" ИНИЦИАЛИЗАТОР - ??????????????????????????????
 //    convenience init(brensAndModel: String, color: String) {
 //        self.init(brendAndModel: brendAndModel)
 //        self.color = color
 //    }
 }
 
 */
