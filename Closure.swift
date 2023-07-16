/*
CLOSURE
 
 1. Замыкание или замыкающее выражение это безымянная функция.
 2. Виды замыкания:
    - Глобальные функции.
    - Вложенные функции.
    - Замфкающие выажения 99% замыканий.
 3. Замыкание храниться в константах или переменных.
 4. Функциональный тип данных - это ссылочный тип данных то ест все замыкания
    передаются по ссылке на область памяти где оно хранится.
 5. Авто замыкания
     var arrayOfNames = ["Helga", "Bazil", "Alex"]
     func printName(nextName: String ) {
         print(nextName)
     }
     printName(nextName: arrayOfNames.remove(at: 0)) Метод .remove(at:) будет использоваться
                                        в момент вызова функции printName(), и если он не
                                        будет использован внутри этой фукции, тогда это
                                        пустая трата ресурсов.
 
     func printName(nextName: () -> String) {
         // какой-либо код
         print(nextName())              Поскольку теперь параметр nextName - это функция (замыкание)
                                        к ней нужно обращаться добавляя () - скобки.
     }
     printName(nextName: { arrayOfNames.remove(at: 0) }) Авот если передать замыкание
                                        то оно будет испольховаться только в момент его
                                        вызова внутри функции.
 
     func printName(nextName: @autoclosure ()->String) {
         print(nextName())
     }
     printName(nextName: arrayOfNames.remove(at: 0)) А в двнном случае можно избавится от
                                        фигурных скобок.

 6. Сбегающие замыкания. (Так же вместо @escaping можно ставить inout)
     var arrayOfClosures: [()->Int] = []
     func addNewClosureInArray(_ newClosure: ()->Int) {
         arrayOfClosures.append(newClosure)     // ОШИБКА так как newClouser это внутренний
                                                параметр - замыкание поэтому его невозможно
                                                добавить во внешний массив.
 
     func addNewClosureInArray(_ newClosure: @escaping ()->Int){  Теперь можно добавлять.
         arrayOfClosures.append(newClosure)
     }
     addNewClosureInArray({return 100})
     addNewClosureInArray{return 1000}          Вариант без скобок допускается если один параметр.
     arrayOfClosures[0]() // 100
     arrayOfClosures[1]() // 1000

 

 Синтаусис замыкания:
 { (ВходныеПараменты) -> ТипВыходногоЗначения in
    телоЗамыкания
 }
 
 
 let greeting = {                       // Инициализируем безымянную функцию в параметр.
    print("Hello World!")
 
 }
 greeting()                             // Hello World!
 let clouser: (_ num1: Int, _ num2: Int) -> Int = { $0 + $1 }  При явном указании типа
                                        параметра в который инициализируется замыкание
                                        можно обращаться к аргументам замыкания через
                                        индексы, которые начинаются с ноля. А слово
                                        return не используется когда в замыкании одно
                                        выражение.
 
 
 var a = 1
 var b = 2
 let closureSum : () -> Int = { [a, b] in   При помощи квадратных скобок мы можем зафиксировать
                                            значения параметров a и b такими какмими они были
                                            на момент объявления функции.
 a+ b }
 closureSum()                           // 3
 a= 3
 b= 4
 closureSum()                           // 3
 
 
 let massage = { (user: String?, text: String) in
    if let user = user {
        print("\(user), \(text)")
    } else {
        print(text)
    }
 }
 massage("Dmitry", "Don't forget!")
 massage("nil", "Hello every one!")
 
 
 let sum = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
 }
 sum(4, 54)                             // 59
 
 
 let diff = { (num1: Int, num2: Int) -> Int in
    return num1 - num2
 }
 sum(4, 54)                             // -50
 
 
 func operation (_ num1: Int, _ num2: Int, _ action: (Int, Int) -> Int) {
    print("Result is \(action(num1, num2))")
 }
 operation(43, 7, diff)                 // 36      Можем передать конст/перем с замыканием
 operation(43, 7, sum)                  // 50      или
 operation(32, 54, { (a: Int, b: Int) -> Int in    // 1728    любое другое замыкание данного типа.
     return a * b
 })                                                 Раскрыается замыкание нажатием Enter
 operation(32, 54, { a, b in            // 1728    любое другое замыкание данного типа.
     a * b
 })
 operation(32, 54) {$0 * $1}            Если замыкание состоит из одного выражения, можно опустить
                                        имена аргументов и в том числе in. А так же можно вынести
                                        замыкание за скобку.
 
 
 */
