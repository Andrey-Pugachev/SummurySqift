/*
DIFFERENT METHODS======================================
 1. type(of: параметр)
        Возвращает тип переданного параметра.
 2. zip (seq1, seq2)
        Возвращает последовательность кортежей состоящей из двух последовательностей seq1 и seq2
        При этом если одна из передоывемых в фунецию последовательностей короче дугой, то итогова
        последовательность будет наикроточайшей длинны.
 3. arc4random_uniform(числоВUint32)
        Возвращает случайное значенние типа Uint32, в диапазоне от 0 до числоВUint32
 4. коллекция.randomElement()
        Возвращает рандомный элемент из коллекции или nil если коллекция пуста.
 5. UInt8.random(in: 1...250)
        Возвращает случайное число от 1 до 250
 
 
 NUMBERS METHODS=======================================
 1. целое/дробноеЧисло.truncatingRemainder(dividingBy: целое/дробноеЧисло)
        Возвращает остаток от деления у целого или дробного числа.
 2. целоеЧислою1.isMultiple(of: целоеЧисло2)
        Возвращает true если число1 кратно чуслу2 и false если нет.
 3. Тип(значение)
        Метод приводит к данному типу данное значение.
    Int(3.14)                               // 3
    Double(13)                              // 13.0
 
 
 map(_:)
    Позволяет применить переданное в него замыкание к каждому элементц коллекции.
 let Array = [2, 4, 5, 7]
 array.map{$0}                            // [2, 4, 5, 7]
 array.map{$0*$0}                         // [4, 16, 25, 49]
 array.map{$0 > 4}                        // [false, false, true, true]
 stringArray.map() { Int($0) }            // [1, 2, 3, nil, 5]
    let arr = [1, 2, 3, 4]
 arr.map { Array(repeating: $0, count: $0) } // [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]
                                               Создаём многомерный массив.
    let milesToDest = ["Moscow":120.0,"Dubai":50.0,"Paris":70.0]
 milesToDest.map { name,miles in [name:miles * 1.6093] }
                        // [["Dubai": 80.465], ["Paris": 112.651], ["Moscow": 193.116]]
 
 mapValues(_:)
    Позволяет обработать значения каждого элемента словаря, при этом ключи элементов
    останутся в исходном состоянии.
    let mappedCloseStars = ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37]
 mappedCloseStars.mapValues{ $0+1 }
                            // ["Proxima Centauri": "5.24", "Alpha Centauri A": "5.37]
 
 flatMap(_:)
    Всегда возвращает плоский одно- мерный массив.
    let numbersArray = [1, 2, 3, 4]
 numbersArray.flatMap { Array(repeating: $0, count: $0) }
                            // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
 
 compactMap(_:)
    Позволяет произвести те же действия, что и map(_:), разница лишь в реакции на ситуацию,
    когда преобразование не может быть произведено (все неудачные преоброзования игнорятся).
    let stringArray = ["1", "2", "3", "four", "5"]
 stringArray.compactMap() { Int($0) }        // [1, 2, 3, 5]
 
 filter(_:)
    Используется, когда требуется отфильтровать элементы кол- лекции по определенному правилу.
    let numArray = [1, 4, 10, 15]
 numArray.filter{ $0 % 2 == 0 }              // [4, 10]
    let starDistanceDict = ["Wolf 359": 7.78, "Alpha Centauri B": 4.37, "Barnard's Star": 5.96]
 starDistanceDict.filter { $0.value < 5.0 }  // ["Alpha Centauri B": 4.37]
 
 reduce(_:_:)
    Позволяет объединить все элементы коллекции в одно зна- чение в соответствии
    с переданным замыканием (первый аргумент первоначальное значение от которого работаем,
    а второй аргумент замыкание). Замыкание, производящее операцию, может быть
    произвольным — главное, что- бы оно обрабатывало операцию для двух входящих параметров.
    let cash = [10, 50, 100, 500]
 let total = cash.reduce(210, +)             // 870
 
                            
 
 
                            
 
 
 
 
 
 
 
 
 
 */
