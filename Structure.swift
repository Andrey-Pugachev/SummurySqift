/*
STRUCT===================================================================================
 
 Структура - это значимый тип данных в swift. Внутри структуры не обязательно прописывать инициализатор в отличии от класса. Структуры могут содержать свойства и методы.
 При создании экземпляра структуры в обязательном порядке должны быть проинициализированны все значения
 Доступ к элементам структуры осуществляется через точку.
 В структуре уже есть собственный инициализатор под капотом, но если нас он не устраивает мы можем определить свой, при этом встроенный инициализатор будет удалён. Каждая структура может содрежать несколько инициализаторов каждый из которых должен обладать своим уникальным набором параметров.
 
 Объявление структуры:
 
 struct MilitaryUnit {
     let name: String
     var age: Int
     var lengthOfService: Int = 0    Значение по умолчанию.
     var baseMilOccupation: String
 }
    =================================
 struct MilitaryUnit2 {
     let name: String
     var age: Int
     var baseMilOccupation: String = "Sniper"
     init(name: Strint, age: Int) {     При создании собственного инициализатора который
         self.name = name               инициализирует не все элементы класса, те элементы,
         self.age = age                 которые не инициализируются должны иметь значение
     }                                  по умолчанию. var baseMilOccupation: String = "Sniper"
 }
    =================================
 struct MilitaryUnit {
     let name: String
     var age: Int
     var lengthOfService: Int = 0    Значение по умолчанию.
     var baseMilOccupation: String
 
     func description() {            Создание метода описывающего свойства экземпляра.
         print("Fighter with name \(self.name), occupation \(self.baseMilOccupation) and length of military service \(self.lengthOfService).")
     }
 
     mutating func addAgeByOneYear() {   Что бы метод мог менять свойства структуры, перед
         self.age += 1                   ним нужно указать ключевик mutating.
     }
 }
 
 Создание и инициализация переменной типа MilitaryUnit
 
 let marine1 = MilitaryUnit(name: "Andre", age: 35, baseMilOccupation: "AntiAirDefense")
 marine1.age = 36   Вызовет ошибку так как marine1 задана как константа и структура это
                    значемый тип данных, соответственно все значения заданные однажды уже
                    нельза менять.
 
 var specOps1 = MilitaryUnit(name: "Vitaliy", age: 37, baseMilOccupation: "Sniper")
 specOps1.age = 38  А так можно.
 
 let marine2 = MilitaryUnit.init(name: "Alexey", age: 35, lengthOfService: 5, baseMilOccupation: "AntiAirDefense")
 let marine3 = MilitaryUnit.init(name: "Roman", age: 30, baseMilOccupation: "AntiAirDefense")
                    Значения структуры имеющие значение по умолчанию, можно не
                    инициализировать при создании класса.
    =================================
 let marine4 = MilitaryUnit(name: "Vlad", age: 31)
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
