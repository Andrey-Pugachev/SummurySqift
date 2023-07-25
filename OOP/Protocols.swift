/*
PROTOCOLS

 Протоколы - это абстрактный тип данных в swift, то есть не существует явных экземпляров данного типа6 существуют только экземпляры которые могут соответствовать данному типу или правельнее сказать быть на него подписанными. Внутри протокола декларируются определенный правила который должны соответствовать подписанные под этот протокол объекты.
 
 protocol FullyNamed {
     //Создадим свойство fullName, внутри протокола мы даём значение свойствам. Мы лишь указываем, что это свойство может быть либо { get } - получаться, либо { get set } - получаться и устанавливаться.
     var fullName: String { get }
 }
 struct Person: FullyNamed {  //Подписав структуру под протокол FullyName мы тем самым
     var fullName: String     //что в нём должно быть свойство fullName.
     var age: Int
     var phoneNumber: Int     //Так же ззадаём собственные  свойства.
 }
 class Company: FullyNamed {                     //В классе в отличии от протокола мы должны
     var fullName: String                        //проинициализировать все свойства, которые
     var director = "Tim Cook"                   //не определены сразу.
     init (prefix: String, title: String) {
         self.fullName = "\(prefix) \(title)"
     }
 }
 class Bank: Company {               //Класс Bank подписываем под класс Company и
     var clients = [FullyNamed]()    //соответственно он будет подписан и под протокол
 }                                   //FullyName.

 let misha = Person(fullName: "Misha", age: 29, phoneNumber: 9999999990)
 let alisa = Person(fullName: "Alisa", age: 30, phoneNumber: 9999999991)
 let apple = Company(prefix: "LLC", title: "Apple")
 let google = Company(prefix: "LLC", title: "Google")
 google.director = "Vasya Pupkin"

 let alphaBank = Bank(prefix: "ООО", title: "Альфа-Банк")
 alphaBank.clients.append(misha)   //Заталкиваем всех наших клиентов в Альфа-банк
 alphaBank.clients.append(alisa)
 alphaBank.clients.append(apple)
 alphaBank.clients.append(google)

 //Мы можем распечатать только то, что указано в протоколе FullyName^ то есть только fullname, так как мы сейчас рассматриваем клиентов Альфа-бфнка: misha, alisa, apple и google, как экземпляры Протокола, а не как экземпляры классов Person и Company.
 //for client in alphaBank.clients {
 //    print(client.fullName)
 //}
 //Что бы получить доступ к свойствам классов Person и Conpany надо привести тип и определить clients, как Person и Company&
 for client in alphaBank.clients {
     print(client.fullName)
     if client is Person {
         print((client as! Person).phoneNumber)
     } else if client is Company {
         print((client as! Company).director)
     }
 }

 enum Speciality {
     case iOS, android, python, java
 }
 protocol Human {
     var name :String { get }
 }
 protocol Developer {
     var speciality: Speciality { get }
     var expInYear: Int { get }
 }
 protocol Teacher {
     var speciality: Speciality { get }
     func teach(theme: String)//При объявлении методов в протоколе, мы не пишем их реализацию.
 }
 struct DevTeacher: Human, Developer, Teacher { //Подписав структуру DevTeacher под протоколы
     var name: String                           //Human, Developer, Teacher, выведуться их
     var speciality: Speciality                 //свойства в единственном экземпляре. Вместо
     var expInYear: Int                         //двух одинаковых свойств speciality будет                                           //один. Это мезанизм - композиция протоколов.
     func teach(theme: String) {
         print("Teach Human. Lesson's theme is \(theme)")
     }
 }
 let vlad = DevTeacher(name: "Vlad", speciality: .iOS, expInYear: 6) //speciality -> enum.
 vlad.teach(theme: "protocols")

 protocol Named {
     var title: String { get }
 }
 protocol Location {
     var lat: Double { get }
     var lon: Double { get }
 }
 struct City: Location, Named {
     var lat: Double
     var lon: Double
     var title: String
 }
 struct Club: Location, Named {
     var lat: Double
     var lon: Double
     var title: String
 }
 struct Brend: Named {
     var title: String
 }
 //Создадим функцию concert подпишим параметр place под протоколы Location и Named при помощи оператора &. Соответственно аргумент place будет содержать в себе свойства title, lat, lon и доступ к ним будет осуществлятся через точку place.title, place.lat, place.lon.
 func concert (place: Location & Named, band: String) {
     print("\(band) band will play in \(place.title). The place coordinate is \(place.lat),\(place.lon)")
 }
 let moscow = City(lat: 54.543234, lon: 76.543234, title: "Moscow")
 let glavClub = Club(lat: 76.543234, lon: 54.543234, title: "Glav club")
 concert(place: moscow, band: "Uta")
 concert(place: glavClub, band: "A-ha")

 
 
 ПАТТЕРН ДЕЛЕГАТ=========================================================
 - Делегатор - это тот, кто ставит задачу.
 - Тип Делегата - это протокол, который описывает, какими свойствами и методамид должен обладать Делегат.
 - Делегат - это тот  кто исполняет задачу.
 
 Прихожу в кофейью и прошу сварить мне кофе, в кофейне есть барись, который принимает деньги и варит мне кофе, то есть я делегатор (даю задачу сварить мне кофе), а барист делегат (пинимает мои деньги и варит мне кофе). При этом в протоколе описывается что должен уметь делать баристо (принемать деньги, варить и отдавать мне кофе в определенном колличестве и отдавать мне сдачу)
 
 protocol CoffeeMakerDelegate {             //Протокол описывающий свойства и методы
     func makeCoffee(amount: Int) -> Int    //К/М, у нас это функция делать кофе.
 }
 class Client {                             //Создаёмм класс клиент.
     var name = "Andrey"
     var coffeeMaker: CoffeeMakerDelegate?  //Свойство в котором будет храниться текущий К/М
     func visitCoffeeHouse(coffeeMaker: CoffeeMakerDelegate) { //вход в кофейню и передача в
         self.coffeeMaker = coffeeMaker                        //аргументе текущего К/М.
     }
     func goOutCoffeeHouse() {          //Покидание кофейни и соответственно замена текущего
         self.coffeeMaker = nil         //К/М нилом.
     }
     func buyCoffee(amount: Int) {                   //Покупка кофе с проверкой наличия
         guard let delegate = coffeeMaker else {     //текущего К/М.
             print("You are not at a coffee house!")
             return
         }
         let count = delegate.makeCoffee(amount: amount)
         print("You bought \(count) cups of coffee.")
     }
 }
 struct Officiant: CoffeeMakerDelegate {     //Подписываем структуру Officiant под протокол
     func makeCoffee(amount: Int) -> Int {   //CoffeeMakerDelegate => она содержит метод
         let price = 350                     //деланья кофе с определенной ценой.
         let count = amount / price
         return count
     }
 }
 struct Barista: CoffeeMakerDelegate {       //Подписываем структуру Barista под протокол
     func makeCoffee(amount: Int) -> Int {   //CoffeeMakerDelegate => она содержит метод
         let price = 100                     //деланья кофе с определенной ценой.
         let count = amount / price
         return count
     }

 }

 let officiant = Officiant()     //Создаём экземпляры.
 let client = Client()
 let barista = Barista()

 client.visitCoffeeHouse(coffeeMaker: officiant) //Вошли в кофейню где К/М officiant.
 client.buyCoffee(amount: 2000)                  //Купили кофе на 2000.
 client.goOutCoffeeHouse()                       //Покинули кофейню.
 client.visitCoffeeHouse(coffeeMaker: barista)   //Вошли в кофейню где К/М barista.
 client.buyCoffee(amount: 400)                   //Купили кофе на 2000.
 client.goOutCoffeeHouse()                       //Покинули кофейню.
 client.buyCoffee(amount: 600)                   //Попытались купить кофе на 2000, но
                                                 //поскольку мы не в кофейне, получили отказ.
 
 */
