/*
GENERICS
 
 Обобщённый тип (generic) - это
 
 Equatable - это протокол значения которого могут быть равны/неравны.
 Comparable - это протокол значения которого могут сравниваться < > == <= >= !=.
 CustomStringConvertable - это значения которые могут быть представлены в виде строки.
 Numeric - это все числа.
 
 func addInts(a: Int, b: Int) -> Int {
     return a + b
 }
 func addDoubles(a: Double, b: Double) -> Double {
     return a + b
 }

 //Создадим функцию которая принемает значения какого-то типа <Т> и складывает их. Проблема в том, что туда можно поместить много каких типов, включая String или кастомные типы, которые невозможно сложить, по этому в нашем случае для операции сложения мы должны подписать наш тип <T> под проттокол Numeric
 func addNums<T: Numeric>(a: T, b: T) -> T {
     return a + b
 }
 addNums(a: 23, b: 4)       //27
 addNums(a: 23.4, b: 4.56)  //27,96
 addNums(a: 23, b: 4.2)     //27,2

 //Есть протокол хранилище6 который требует два метода, положить в хранилище и достать из него, что-то. Это что-то может быть чем угодно.
 protocol Storage {
     associatedtype Item
     func store(item: Item)
     func retreve(index: Int) -> Item?
 }
 struct Book {
     let title: String
     let author: String
 }
 class BookCase: Storage {
     typealias Item = Book //Псевдоним нужен для того6 что бы обозначить, что будет Item-ом в
     var books = [Book]()  //нашем BookCase. Item может быть как структура так и простой тип.
     func store(item: Book) {    //Прописываем реализацию функции store().
         books.append(item)
     }
     func retreve(index: Int) -> Book? {     //Прописываем реализацию функции retreve().
         guard index < books.count else {
             return nil
         }
         return books[index]
     }
 }

 //Создадим теперь не книжный шкаф, а абстрактное хранилище в котором будет храниться то, что мы туда положим. В нём уже не нужен псевдоним, так как мы хотим, что бы туда можо было посылать значения любого типа.
 class Case<Item>: Storage {
     var items = [Item]()
     func store(item: Item) {
         items.append(item)
     }
     func retreve(index: Int) -> Item? {
         guard index < items.count else {
             return nil
         }
         return items[index]
     }
 }
 struct Clothes {
     let brend: String
     let price: Int
     let size: String
 }
 let tShort = Clothes(brend: "Versachi", price: 1500, size: "L")
 let shose = Clothes(brend: "nike", price: 100, size: "41")
 let clothesCase = Case<Clothes>()
 clothesCase.store(item: tShort)
 clothesCase.store(item: shose)
 clothesCase.items.count
 clothesCase.items.last?.price

 /*Stack - API
  1) Container - массив записей.
  2) push - положить в стек.
  3) pop - забрать из стека.
  4) isEmpty - пустой ли стек.
  5) size - размер стека.
  6) top - верхний элемент стека.
  */
 struct Stack<T> {
     //Container
     private var container = [T]()
     //isEmpty
     var isEmpty: Bool {
         return self.container.isEmpty
     }
     //size
     var size: Int {
         return self.container.count
     }
     //top
     var top: T?  {  //Верхний элемент будет типа Т? так как его может и не быть и тогда nil.
         return self.container.last
     }
     //push
     mutating func push(_ element: T) {
         self.container.append(element)
     }
     //pop
     mutating func pop() -> T? {
         if !self.isEmpty {
             return self.container.removeLast()
         } else {
             return nil
         }
     }
 }

 var stack = Stack<String>()
 stack.push("Каренина")
 stack.push("Леопольд")
 stack.push("Буратино")
 stack.push("Идиот")

 stack.isEmpty   //false
 stack.size      //4
 stack.top       //"Идиот"
 stack.pop()     //"Идиот"
 stack.top       //"Буратино"
 stack.size      //3
 stack.pop()     //"Буратино"
 stack.pop()     //"Леопольд"
 stack.pop()     //"Каренина"
 stack.top       //nil
 stack.size      //0
 stack.isEmpty   //true

 */
