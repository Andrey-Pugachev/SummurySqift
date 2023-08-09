//import UIKit
//import Foundation

//НАЙТИ ВСЕ ЭЛЕМЕНТЫ МАССИВА, КОТОРЫЕ БОЛЬШЕ ПРЕДЫДУЩЕГО.
//var arr = [Int]()
//var resultArr = [Int]()
//for _ in 0...29 {
//    arr.append((1...100).randomElement()!)
//}
//print(arr)
//
////Метод enumerated() возвращает картеж из (индексаЭлемента, самогоЭлемента) соответственно что получить доступ к обоим из них мы пишем картеж (index, number) после for.
//if !arr.isEmpty {
//    for (index, nummber) in arr.enumerated() {
//        if index > 0 {
//            if arr[index] > arr[index - 1] {
//                resultArr.append(nummber)
//            }
//        }
//    }
//}
//print(resultArr)


//РАЗДЕЛИТЬ ВСЕ ЭЛЕМЕНТЫ МАССИВА НА МАКСИМАЛЬНЫЙ.
//var arr = [Int]()
//for _ in 0...29 {
//    arr.append((1...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var result = arr.map { number in
//        Double(number) / Double(arr.max()!)
//    }
//    print(result)
//}


//ПОМЕНЯТЬ МЕСТАМИ МАКСИМАЛЬНЫЙ И МИНИМАЛЬНЫЙ ЭЛЕМЕНТЫ МАССИВА
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var maxElement = arr.max()
//    var minElement = arr.min()
//    var result = [Int]()
//    for num in arr {
//        switch num {
//        case maxElement: result.append(minElement!)
//        case minElement: result.append(maxElement!)
//        default: result.append(num)
//        }
//    }
//    print(result)
//}


//НАЙТИ СУММУ ЧЁТНЫХ ОТРИЦАТЕЛЬНЫХ ЭЛЛЕМЕНТОВ МАССИВА
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var result: Int = 0
//    for num in arr where (num < 0) && (num % 2 == 0) {
//        result += num
//    }
//    print(result)
//}


//НАЙТИ МИНИМАЛЬНЫЙ ИЗ ЭЛЕМЕНТОВ МАССИВА С ЧЕТНЫМИ ИНДЕКСАМИ
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var minElement = Int.max
//    for (index, number) in arr.enumerated() where (index % 2 == 0) && index > 0 {
//        if number < minElement {
//            minElement = number
//        }
//    }
//    print(minElement)
//}


//ВЫВЕСТИ ИНДЕКСЫ ЭЛЕМЕНТОВ МАССИВА ЗНАЧЕНИЯ КОТОРЫХ НАХОДЯЬСЯ В УКАЗАННОМ ДИАПАЗОНЕ
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var indexArr = [Int]()
//    let range = -50...50
//    for (index, value) in arr.enumerated() where range ~= value) { //~= это ператор
//        indexArr.append(index)                                     //принадлежности
//    }                                                              //диапазону, можно
//    print(indexArr)                                                //заменить на
//}                                                                  //range.contains(value)


//НАЙТИ ДВА МАКСИМАЛЬНЫХ ЭЛЕМЕНТА МАССИВА
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var firstMaxElement = Int.min
//    var secondMaxElement = Int.min
//    for num in arr {
//        if num > firstMaxElement {
//            secondMaxElement = firstMaxElement
//            firstMaxElement = num
//        }
//        if num > secondMaxElement && num != firstMaxElement {
//            secondMaxElement = num
//        }
//    }
//    print ("\(firstMaxElement) \(secondMaxElement)")
//}


//ОПРЕДЕЛИТЬ КОЛЛИЧЕСТВО ЭЛЛЕМЕНТОВ МАССИВА, ЗНАЧЕНИЕ КОТОРЫХ БОЛЬШЕ ЗНАЧЕНИЯ СОСЕДНИХ ЭЛЕМЕНТОВ
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if arr.count >= 3 {
//    var amountOfelements = 0
//    for (index, value) in arr.enumerated() where index > 0 && index < (arr.count - 1) {
//        if value > arr[index - 1] && value > arr[index + 1] {
//            amountOfelements += 1
//        }
//    }
//    print(amountOfelements)
//}


//НАЙТИ СРЕДНЕЕ АРИФМЕТИЧЕСКОЕ ЧЁТНЫХ ПОЛОЖИТЕЛЬНЫХ ЭЛЕМЕНТОВ МАССИВА, СТОЯЩИХ НА НЕЧЕТНЫХ ПОЗИЦИЯХ
//var arr = [Int]()
//for _ in 0...9 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var elementsCount = 0
//    var sumOfsuitableElements = 0
//    for (index, value) in arr.enumerated() where index % 2 != 0 && value > 0 && value % 2 == 0 {
//        sumOfsuitableElements += value
//        elementsCount += 1
//    }
//    print(Double(sumOfsuitableElements) / Double(elementsCount))
//}


//ВЫВЕСТИ МАССИВ СОСТОЯЩИЙ ИЗ УНИКАЛЬНЫХ ЗНАЧЕНИЙ ВАШЕГО МАССИВА
//var arr = [Int]()
//for _ in 0...19 {
//    arr.append((-100...100).randomElement()!)
//}
//print(arr)
//if !arr.isEmpty {
//    var resultArr = [Int]()
//    for i in 0...arr.count - 1 {
//        var isSingle: Bool = true
//        for j in 0...arr.count - 1 {
//            if arr[i] == arr[j] && i != j {
//                isSingle = false
//                break
//            }
//        }
//        if isSingle {
//            resultArr.append(arr[i])
//        }
//    }
//    print(resultArr)
//}


//==========================================================================


//НАПЕЧАТАТЬ МИНИМАЛЬНОЕ ЧИСЛО , КОТОРОЕ БОЛЬШЕ 200 И ДЕЛИТСЯ НАЦЕЛО НА 17
//var num: Int = 200
//while num % 17 != 0 {
//    num += 1
//}
//print(num)

//НАЙТИ МАКСИМАЛЬНОЕ ИЗ НАТУРАЛЬНЫХ ЧИСЕЛ, НЕ ПРИВЫШАЮЩЕЕ 5000, КОТОРОЕ НАЦЕЛО ДЕЛИТСЯ НА 39
//var num: Int = 5000
//while num % 39 != 0 {
//    num -= 1
//}
//print(num)


//ГРАЖДАНИН ПЕРВОГО МАРТА ОТКРЫЛ СЧЁТ В БАНКЕ, ВЛОЖИВ 1000Р СТАВКА ПО ВКЛАДУ 2%. ОПРЕДЕЛИТЬ 1) ЗА КАКОЙ МЕСЯЦ ВЕЛИЧИНА ЕЖЕМЕСЯЧНОГО УВЕЛИЧЕНИЯ ВКЛАДА ПРЕВЫСИТ 30Р      2) ЧЕРЕЗ СКОЛЬКО МЕСЯЦЕВ РАЗМЕР ВКЛАДА ПРИВЫСИТ 1200Р
//var deposit: Double = 1000
//var difference: Double = 0
//var exDeposit: Double = deposit
//var monthCount: Int = 0
//var depCondition: Bool = true
//var difCondition: Bool = true
//while deposit <= 1200 || difference <= 30 {
//    monthCount += 1
//    exDeposit = deposit
//    deposit *= 1.02
//    difference = deposit - exDeposit
//    if deposit > 1200 && depCondition {
//        print("\(monthCount) month. Deposit is more than 1200rur now!")
//        depCondition = false
//    }
//    if difference > 30 && difCondition {
//        print("\(monthCount) month. Difference is more than 30rur now!")
//        difCondition = false
//    }
//}


//НАЧАВ ТРЕНИРОВКИ ЛЫЖНИК В ПЕРВЫЙ ДЕНЬ, ЛЫЖНИК ПРОБЕЖАЛ 10КМ, КАЖДЫЙ СЛЕДУЮЩЙ ДЕНЬ ОН УВЕЛИЧИВАЛ ПРОБЕГ НА 10% ОТ ПРОБЕГА ПРЕДЫДУЩЕГО ДНЯ 1) ВКАКОЙ ДЕНЬ ОН ПРОБЕЖИТ БОЛЬШЕ 20КМ       2) В КАКОЙ ДЕНЬ СУМАРНЫЙ ПРОБЕГ ПРЕВЫСИТ 100КМ
//var milage: Double = 10
//var difference: Double = 0
//var exMilage: Double = milage
//var dayCount: Int = 0
//var milCondition: Bool = true
//var difCondition: Bool = true
//while milage <= 100 || difference <= 20 {
//    dayCount += 1
//    exMilage = milage
//    milage *= 1.10
//    difference = milage - exMilage
//    if milage > 100 && milCondition {
//        print("\(dayCount) month. Deposit is more than 1200rur now!")
//        milCondition = false
//    }
//    if difference > 20 && difCondition {
//        print("\(dayCount) month. Difference is more than 30rur now!")
//        difCondition = false
//    }
//}


//В НЕКОТОРОМ ГОДУ (НАЗОВЁМ ЕГО УСЛОВНО ПЕРВЫМ) НА УЧАСТКЕ 100ГА СРЕДНЯЯ УРОЖАЙНОСТЬ ЕЧМЕНЯ СОСТАВИЛА 20 ЦЕНТНЕРОВ С ГА. ПОСЛЕ ЭТОГО КАЖДЫЙ ГОД ПЛОЩАДЬ УЧАСТКА УВЕЛИЧИВАЛАСЬ НА 5% , А СРЕДНЯЯ УРОЖАЙНОСТЬ НА 2%.   1) ОПРЕДЕЛИТЬ В КАКОМ ГОДУ УРОЖАЙНОСТЬ ПРЕВЫСИТ 22 ЦЕНТНЕРА С ГА.   2) В КАКОМ ГОДУ ПЛОЩАДЬ УЧАСТКА СТАНЕТ БОЛЬШЕ 120      3) В КАКОМ ГОДУ ОБЩИЙ УРОЖАЙ СОБРАННЫЙ ЗА ВСЁ ВРЕМЯ НАЧИНАЯ С ПЕРВОГО ГОДА ПРЕВЫСИТ 800 ЦЕНТНЕРОВ.
//var agriculturalLand: Double = 100
//var harvestAmount: Double = 20 * 100
//var totalHarvestAmount: Double = harvestAmount
//var yearCount: Int = 0
//var harvestCondition: Bool = true
//var landCondition: Bool = true
//var totalCondition: Bool = true
//while agriculturalLand <= 120 || harvestAmount <= 22 || totalHarvestAmount <= 800 {
//    yearCount += 1
//    agriculturalLand *= 1.05
//    harvestAmount *= 1.02 * agriculturalLand
//    totalHarvestAmount += harvestAmount
//    if harvestAmount / agriculturalLand > 22 && harvestCondition {
//        print("\(yearCount) year. More than 22")
//        harvestCondition = false
//    }
//    if agriculturalLand > 120 && landCondition {
//        print("\(yearCount) year. More than 120")
//        landCondition = false
//    }
//    if totalHarvestAmount > 800 && totalCondition {
//        print("\(yearCount) year. More than 800")
//        totalCondition = false
//    }
//}


//==========================================================================


//Два человека соревнуются в троеборь, кторотое состоит из подтягивания, подъёмов туловища и приседаний. Результаты записываются в виде кортежей отдельно для каждого игрока. За одно подтягивание атлет получает 70 очков, за подёём туловища 45, а за приседание 50 очков. Создайте такие кортежи и заполните их значениями. Определите победителя в состязании.
//var playerOneScore = (pullUps: 24, press: 80, sits: 90)
//var playerTwoScore = (pullUps: 20, press: 80, sits: 106)
//var pullUpsPoints = 70
//var pressPoints = 45
//var sitsPoints = 50
//var pOne = playerOneScore.pullUps * pullUpsPoints + playerOneScore.press * pressPoints + playerOneScore.sits * sitsPoints
//var pTwo = playerTwoScore.pullUps * pullUpsPoints + playerTwoScore.press * pressPoints + playerTwoScore.sits * sitsPoints
//print("Player \(pOne > pTwo ? "one" : "two") win!")


//Данные об успеваемости учеников хранятся в массиве кортежей в формате фамилия - оценка. Требуется: 1) отсортеровать массив по успеваемости от лучшего к худшему.      2) Отсортировать массив в обратном алфавитном порядке.      3) Сформировать массив проблемных учеников, оценки которых ниже 4.      4) Найт средний балл в классе.
//var ivanov = (fam: "Ivanov", score: 3)
//var petrov = (fam: "Petrov", score: 5)
//var sidorov = (fam: "Sidorov", score: 4)
//var naumov = (fam: "Naumov", score: 5)
//var ignatov = (fam: "Ignatov", score: 2)
//typealias PupleNote = (fam: String, score: Int)
//var studentList: [PupleNote] = []
//studentList.append(ivanov)
//studentList.append(petrov)
//studentList.append(sidorov)
//studentList.append(naumov)
//studentList.append(ignatov)

//var firstBestNotes = studentList.sorted { firstPuple, lastPuple in
//    firstPuple.score > lastPuple.score
//}
//print(firstBestNotes)

//var invertAlphabet = studentList.sorted { first, last in
//    first.fam > last.fam
//}
//print(invertAlphabet)

//var problemStudents: [PupleNote] = []
//for person in studentList {
//    if person.score < 4 {
//        problemStudents.append(person)
//    }
//}
////OR
//problemStudents = studentList.filter { puple in
//    puple.score < 4
//}
//print(problemStudents)

//var middleScore: Double = 0
//for person in studentList {
//    middleScore += Double(person.score)
//}
//middleScore /= Double(studentList.count)
//print(middleScore)


//Покупатель стоит на кассе с корзиной продуктов, корзина представленна в виде массива. Элемент массива кортеж содержащий в себе название, цену, колличество продукта.      1) Посчитать стоимость продектов в корзине.     2) Определить за какой из продуктоа покупатель заплатит больше всего.       3) Отсортировать продукты в порядке убывания стоимости.     4) Преобразуйте корзину в массив строковых описаний в виде "Молоко 3 шт. на 270 р."
//typealias FoodBasket = (tytle: String, price: Int, count: Int)
//var foodBusket: [FoodBasket] = [
//    (tytle: "cheese", price: 34, count: 2),
//    (tytle: "bread", price: 12, count: 1),
//    (tytle: "carrot", price: 2, count: 6),
//    (tytle: "milk", price: 10, count: 3),
//    (tytle: "water", price: 4, count: 2),
//]

//var totalPrice = 0
//for thing in foodBusket {
//    totalPrice += thing.price * thing.count
//}
//print(totalPrice)

//var mostExpansive = Int.min
//for thing in foodBusket {
//    if thing.price * thing.count > mostExpansive {
//        mostExpansive = thing.price * thing.count
//    }
//}
//print(mostExpansive)

//var invertPrice = foodBusket.sorted { first, last in
//    first.price > last.price
//}
//print(invertPrice)

//var strArr = [String]()
//for position in foodBusket {
//    strArr.append("\(position.tytle) \(position.count) шт. на сумму \(position.count * position.price) р.")
//}
//print(strArr)


//==========================================================================


//Буквы оцениваются так:
/*
 А В Е И Н О Р С Т - 1
 Д К Л М П У - 2
 Б Г Ё Ь Я - 3
 Й Ы - 4
 Ж З Х Ц Ч - 5
 Ш Э Ю - 8
 Ф Щ Ъ - 10
 */
//Написать программу, которая вычисояет стоимость слова заданного зарание.
//let word: String = "Жесть"
//var totalScore: Int = 0
//let charPrice: [String: Int] = [
//    "а": 1, "в": 1, "е": 1, "и": 1, "н": 1, "о": 1, "р": 1, "с": 1, "т": 1,
//    "д": 2, "к": 2, "л": 2, "м": 2, "п": 2, "у": 2,
//    "б": 3, "г": 3, "ё": 3, "ь": 3, "я": 3,
//    "й": 4, "ы": 4,
//    "ж": 5, "з": 5, "х": 5, "ц": 5, "ч": 5,
//    "ш": 8, "э": 8, "ю": 8,
//    "ф": 10, "щ": 10, "ъ": 10
//]
//for char in word {
//    if let score = charPrice[char.lowercased()] {
//        totalScore += score
//    }
//}
//print(totalScore)


//Турист собирается в поход, он сможет нести N кг вещей, но вещей, которые он запланировал уложиьб в рюкзак оказалось оказалось намного больше. необходимо определить какие веши от наиболее тяжелых к самым лёгким поместятся в рюкзак.
//let maxWeight = 30.0
//var stuff: [String: Double] = [
//    "палатка" : 6,
//    "спальник" : 12,
//    "носки" : 0.2,
//    "котелок" : 1.5,
//    "нож" : 1,
//    "каремат" : 3.4,
//    "гамак" : 7.9,
//    "топор" : 5,
//    "еда" : 4,
//    "вода" : 2.7
//]
//let sortedStuff = stuff.sorted { first, last in //метод sorted вернул нам массив, так как
//    first.value > last.value                    //словать не может быть упорядоченым.
//}
//var bag = [String]()
//var currentWaight = 0.0
//var freeSpace = maxWeight
//for stuff in sortedStuff {
//    if stuff.value < freeSpace {
//        bag.append(stuff.key)
//        currentWaight += stuff.value
//        freeSpace -= stuff.value
//    }
//}
//print(bag)
//print(currentWaight)


//Данные о email- адресах студентов хранятся в словаре
//let emails = ["mgu.edu": ["andrei_serov", "alexander_pushkin", "elena_belova", "kirill_stepanov"], "gmail.com": ["alena.semyonova", "ivan.polekhin", "marina_abrabova"], "yandex.ru": ["ekaterina_ivanova", "glebova_nastya"]]
////Вывести в консоль email адресс учеников в классичском формате.
//for email in emails {
//    for addres in email.value {
//        print("\(addres)@\(email.key)")
//    }
//}


//Существует риестр файлов над каждым из которых можно совершать определенный действия: чтение, изменение, удаление. файлы представленны в виде строк с названием файла и операцией ["review.doc R W", "note.txt R W X", "log.txt R"]  R - доступен для чтения, W - для записи, X - для удаления. на вход программы подается имя файла и код операции в виде строки read, write или delete. Необходимо вывести статус завершении операции - ОК, если операция выполнена успешно или revoke, если операция не может быть выполнена с этим файлом.
//let files = ["review.doc R W", "note.txt R W X", "log.txt R"]
//let commands = ["R": "read", "W": "write", "X": "delete"]
//func command(file: String, operation: String) -> String {
//    let components = file.components(separatedBy: " ")
//    print(components)
//    var ops = [String]()
//    for component in components {
//        if let command = commands[component] {
//            ops.append(command)
//        }
//    }
//    print(ops)
//    if ops.contains(operation) {
//        return "OK"
//    } else {
//        return "revoke"
//    }
//}
//command(file: "note.txt R W X", operation: "delete")

//Задание про логин пароль и имя, а так же добавление нового пользователя.
//var users: [String: (pwd: String, name: String)] = [
//    "Einarr": ("1234", "Andrey"),
//    "Strocc": ("4321", "Evgeny"),
//    "Paul": ("1111", "Oleg"),
//    "Lady": ("4444", "Valya")
//]
//func logining(login: String, Password: String) {
//    let usersLogsArr = users.keys
//    if usersLogsArr.contains(login) {
//        if users[login]!.pwd == Password {
//            print("Hello, \(users[login]!.name)")
//        } else {
//            print("Incorrect password, try again!")
//        }
//    } else {
//        print("There is no user with \(login) name!")
//    }
//}
//func addNewUser(login: String, pwd: String, name: String) {
//    users.updateValue((pwd: pwd, name: name), forKey: login)
//}
//addNewUser(login: "Popka", pwd: "0000", name: "Durak")
//logining(login: "Lady", Password: "4444")


//==========================================================================


//Представил банк в котором алгоритм начисления процента по вкладам зависит от суммы вклада. В функциб в качестве параметра будет подаваться суммв вклада, а так же колличетво лет. При значении меньше 10000р будет начислятся 5% ежегодно, 10000р - 50000р то 7% ежегодго, больге 50000р 10% ежегодгно. Сработав функция должна вернуть общую сумму с процентами.
//func moneyMultiplier(money: Double, years: UInt8) -> Double {
//    var totalBill = money
//    for _ in 1...years {
//        if totalBill < 10000 {
//            totalBill *= 1.05
//        } else if totalBill > 50000 {
//            totalBill *= 1.1
//        } else {
//            totalBill *= 1.07
//        }
//    }
//    return totalBill
//}
//print(moneyMultiplier(money: 5000, years: 100))

//Стрелок стреляет в мишень, радиус 10-ки - 1см., толщина каждого кольца мишени 1см. Всего областей мишени 10 (9 колец и один круг, совмещенный с центром координатной плоскости). Известны координаты 5 попаданий.
//var dropResults = [(Int8, Int8)]()
//for _ in 0...4 {
//    dropResults.append((Int8.random(in: -10...10) ,Int8.random(in: -10...10)))
//}
//print(dropResults)
//var score: UInt8 = 0
//func scoreCount(result: [(Int8, Int8)]) -> UInt8 {
//    for i in 0...4 {
//        let dropRemovalFromCenter: Float = sqrt(pow(Float(dropResults[i].0) , 2) + pow(Float(dropResults[i].1), 2))
//        switch dropRemovalFromCenter {
//        case 0..<1 : score += 10
//        case 1..<2 : score += 9
//        case 2..<3 : score += 8
//        case 3..<4 : score += 7
//        case 4..<5 : score += 6
//        case 5..<6 : score += 5
//        case 6..<7 : score += 4
//        case 7..<8 : score += 3
//        case 8..<9 : score += 2
//        case 9..<10 : score += 1
//        default : break
//        }
//    }
//    return score
//}
//print(scoreCount(result: dropResults))

//Функция возвращающая процент от числа
//func percentFor(num: Double, of: Double) -> Double {
//    return num / 100 * of
//}
//print(percentFor(num: 111, of: 8))

//Функция считающая колличество пробелов в строке
//func spaceAmountIn(string: String) -> UInt {
//    var amountOfSpaces: UInt = 0
//    for char in string where char == " " {
//        amountOfSpaces += 1
//    }
//    return amountOfSpaces
//}
//print(spaceAmountIn(string: "Wellcome on board my friend!"))

//Функция, которая возвращает две суммы массива, которые имеют чётные и нечётные значения.
//func sums(arr: [Int]) -> (odds: Int, notOdds: Int) {
//    var result: (Int, Int) = (0, 0)
//    for num in arr {
//        if num % 2 != 0 {
//            result.1 += num
//        } else {
//            result.0 += num
//        }
//    }
//    return result
//}
//var array = [Int]()
//for _ in 1...10 {
//    array.append(Int.random(in: -100...100))
//}
//print(array)
//print(sums(arr: array))

//Функция возвращает true если число простое и false если нет
//func isPrime(num: Int) -> Bool {
//    if 0...3 ~= num {
//        return true
//    }
//    for number in 2..<num where num % number == 0 {
//        return false
//    }
//    return true
//}
//isPrime(num: 59)


//ЗАМЫКАНИЯ=================================================================


//Рализовать три замыкания, которые принемают два числа и возвращают bool.   1) Может ли быть первое число на цело поделено на второе?      2) Имеют ли они хотябы один общий делитель отличный от 1 и самих себя?      3) Чётная ли сумма этих двух чисел?     Реализовать функцию которая принимает такого типа замыкание и два числа и реализует его внутри себя.
//let isDivided = { (num1: Int, num2: Int) -> Bool in return num1 % num2 == 0 }
//let isShareDivider = { (num1: Int, num2: Int) -> Bool in
//    for num in 2..<Int(num1 < num2 ? num1 : num2) where num1 % num == 0 && num2 % num == 0 {
//        print(num)
//        return true
//    }
//    return false
//}
//let isSumOdd = { (num1: Int, num2: Int) -> Bool in return (num1 + num2) % 2 == 0 }
//func twoNumsCheck(_ n1: Int, _ n2: Int, action: (Int, Int) -> Bool) -> Bool {
//    return action(n1, n2)
//}
//twoNumsCheck(15, 3, action: isDivided)
//twoNumsCheck(15, 4, action: isDivided)
//twoNumsCheck(15, 3, action: isSumOdd)
//twoNumsCheck(15, 4, action: isSumOdd)
//twoNumsCheck(15, 8, action: isShareDivider)
//twoNumsCheck(15, 30, action: isShareDivider)

//Задача абра кадабра.
//let abraKadabra = { () -> ([Int]) in
//    var nums = [Int]()
//    for num in 1000...9999 where num % 133 == 125 && num % 134 == 111 {
//        nums.append(num)
//    }
//    return nums
//}
//print(abraKadabra())

//Создать замыкание, которое определит можноли из слов первого более длинного слова, составить второе, одинаковых букв должно быть ровно столько, сколько их в слове.
//let isFited = { (big: String, small: String) -> Bool in
//    let big = big.lowercased()
//    let small = small.lowercased()
//    var arrOfBig = [Character]()
//    big.forEach { char in
//        arrOfBig.append(char)
//    }
//    for char in small {
//        if !(arrOfBig.contains(char)) {
//            return false
//        } else {
//            var i = 0
//            while arrOfBig[i] != char {
//                i += 1
//            }
//            arrOfBig.remove(at: i)
//        }
//    }
//    return true
//}
//let bigWord = "Магнит"
//let smallWord = "магит"
//isFited(bigWord, smallWord)

//Создать функцию, которая принемает в себя строку и замыкание типа (String) -> Bool, реализующее внутри себя принятое замыкание и печатающее в консоль результат:     1) Проверяет чётное ли колличество символов в строке кроме пробелов.    2) проверяет является ди строка полиндромом.    3) Проверяет есть ли в строке символы кроме букв и пробелов.    Вызвать функцию и протестировать её с разными строками и замыканиями.
//let isOddChar = { (str: String) -> Bool in
//    var arrOfStr = [Character]()
//    str.forEach { char in
//        if char != " " {
//            arrOfStr.append(char)
//        }
//    }
//    return arrOfStr.count % 2 == 0 ? true : false
//}
//let isPolyndrom = { (str: String) -> Bool in
//    let copyOfStr = str.lowercased()
//    var invertedStr = [Character]()
//    copyOfStr.forEach { char in
//        invertedStr.insert(char, at: 0)
//    }
//    return copyOfStr == String(invertedStr) ? true : false
//}
//let isOtherCharExist = { (str: String) -> Bool in
//    let copyOfStr = str.lowercased()
//    for char in copyOfStr {
//        guard ("a"..."z").contains(char) || char == " " else {
//            return true
//        }
//    }
//    return false
//}
//
//
//func multyFunc(_ str: String, _ action: (String) -> Bool) {
//    print(action(str))
//}
//multyFunc("qwerreq", isPolyndrom)

//Создать функцию принемающую в себя число Double и возаращающее Double. Создать замыкание типа (Double) -> Double    1) Возвращает площадь граней куба.    2) Периметр квадрата.   3) Объём шара с радиусом.     4) Площадь сферы с диаметром.     Если передано отрицательное число поменять знака. протестировать функцию.
//let cubeSquare = { (num: Double) -> Double in
//    return pow(num, 2) * 6
//}
//let squarePerimetr = { (num: Double) -> Double in
//    return num * 4.0
//}
//let sphereVolume = { (num: Double) -> Double in
//    return (4 * pow(num, 3) * Double.pi) / 3.0
//}
//let sphereSquare = { (num: Double) -> Double in
//    return 4.0 * pow(num / 2.0, 2) * Double.pi
//}
//
//func multyFunc(_ num: Double, _ action: (Double) -> Double) -> Double {
//    return action(num)
//}
//multyFunc(2.5, sphereVolume)


