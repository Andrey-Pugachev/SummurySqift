/*
OPTIONALS
 
 1. Переменная опционального типа может как содержать значение, так и е содержать его, то есть содержать nil
    nil - это отсутствие какого-либо значения, а не 0 или "".
 
 Формы записи:
    Optional<тип>
    тип?
    var optionaChar: Optional<Character> = "a"
    let xCoordinate: Int? = 43
    let yCoordinate: Int? = nil
    let zCoordinate: Int?                               Если не задать значение сразу,
                                                        то по умолчанию будет nil.
    var optionalVar = Optional("stringValue")
    var tuple: (code: Int, message: String)? = nil
    let tupleWithoptelements: (Int?, Int) = (nil, 100)
 
 Извдечение опционала unwrapping:
    1. Принудительно (force unwrapping) извлечение/преоброзование опционального типа к
       базовому происходит при помощи (!) Используется только при уверенности, что опционал
       имеет значение. Если на момент извлечения в нём будет nil, будет ошибка.
        var optVar: Int? = 12
        type(of: optVar!) // Optional<Int>.Type
        optVar!
        type(of: optVar!) // Int.Type
 
    2. Косвенное (implicitly unwrapping) извлечение. Только при уверенности, что на момент проведения операции
       в опционале всегда будет значение.
        var wrapInt: Double! = 3.14
        wrapInt + 0.12 // 3.26                          При операциях будет происходить автоматическое
                                                        извлечение.
        type(of: optVar!)                               // Optional<Int>

    3. Опциональное связывание (optional binding) ПРИОРЕТЕТНЫЙ СПОСОБ
        if let userName = userLogin {                   Тело условия выполнится если userLogin не nil и при этом
                                                        его значение запишется в userName и извлечется, то есть станет
                                                        неопциональным типом.
            print("Имя: \(userName)")
        } else {
            print("Имя не введено")
        }
        type(of: userLogin)                             // Optional<String>.Type
        type(of: userName)                              // String.Type
 
        if let x = pointX, let y = pointY {             Можно связывать несколько значений.
            print("Точка установлена на плоскости")
        }
        if let _ = pointX, let _ = pointY {             Поскольку мы ни где не используем константы x и y
                                                        то можем заменить их на _, с целью экономии памяти.
            print("Точка установлена на плоскости")
        }
 
    4. Оператор объединения с nil (nil coalescing) ПРИОРЕТЕТНЫЙ СПОСОБ
        let имяПараметра = имяОпционала ?? значениеПоУмолчанию     Если в опционале не nil и извлечение произошло
                                                                   удачно, то его значение запишется в параметр и
                                                                   будет иметь базовый тип, а если нет то в параметр
                                                                   запишется значение по умолчанию.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
