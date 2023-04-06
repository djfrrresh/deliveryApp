//
//  OrderData.swift
//  Delivery test app
//
//  Created by Eugene on 05.04.23.
//

import UIKit


struct OrderData {
    var category: OrderCategory
    var name: String
    var description: String
    var image: String
    var price: Int
}

enum OrderCategory: String {
    case pizza = "Пицца"
    case combo = "Комбо"
    case deserts = "Десерты"
    case drinks = "Напитки"
    case allCategories = "Все"
}

class Orders {
    
    static let shared = Orders()
    
    var ordersArray: [OrderCategory: [OrderData]] = [
        .pizza:
            [
                OrderData(category: .pizza, name: "Ветчина и грибы", description: "Ветчина,шампиньоны, увеличинная порция моцареллы, томатный соус", image: "pizza", price: 345),
                OrderData(category: .pizza, name: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", image: "pizza2", price: 345),
                OrderData(category: .pizza, name: "Нежный лосось", description: "Лосось, томаты черри, моцарелла, соус песто", image: "pizza3", price: 345),
                OrderData(category: .pizza, name: "Пицца четыре сыра", description: "Соус Карбонара, Сыр Моцарелла, Сыр Пармезан, Сыр Роккфорти, Сыр Чеддер (тёртый)", image: "pizza4", price: 345)
            ],
        .combo:
            [
                OrderData(category: .combo, name: "Семейное комбо с Коробышами", description: "Маленькая пицца на выбор и Пицца-сказка в уникальной коробке с фигуркой-конструктором, которую можно раскрасить", image: "gift", price: 629),
                OrderData(category: .combo, name: "2 пиццы", description: "Парочка что надо. 2 средние пиццы. Цена комбо зависит от выбранных пицц и может быть увеличена", image: "2pizzas", price: 969),
                OrderData(category: .combo, name: "3 пиццы", description: "Три удовольствия в нашем меню — это 3 средние пиццы на ваш выбор", image: "3pizzas", price: 1099),
                OrderData(category: .combo, name: "4 Закуски", description: "Сытный квартет для маленькой компании. Комбо из четырех закусок на выбор", image: "4snacks", price: 589)
            ],
        .deserts:
            [
                OrderData(category: .deserts, name: "Чизкейк Нью-Йорк", description: "Мы перепробовали тысячу десертов и наконец нашли любимца гостей — нежнейший творожный чизкейк", image: "cheeseCake", price: 139),
                OrderData(category: .deserts, name: "Маффин Три шоколада", description: "Он из натурального какао, а внутри — нежная начинка из кубиков белого и молочного шоколада", image: "muffin2", price: 95),
                OrderData(category: .deserts, name: "Маффин Соленая карамель", description: "Раз откусить — навсегда полюбить! Оцените яркое сочетание соленой карамели и арахиса", image: "muffin", price: 95),
                OrderData(category: .deserts, name: "Рулетики с корицей", description: "Горячие сладкие рулетики с пряной корицей и сахаром", image: "roll", price: 195)
            ],
        .drinks:
            [
                OrderData(category: .drinks, name: "Rich Tea Черный с лимоном", description: "0,5 л", image: "richb", price: 105),
                OrderData(category: .drinks, name: "Rich Tea Зеленый", description: "0,5 л", image: "richg", price: 105),
                OrderData(category: .drinks, name: "Напиток Черноголовка Лимонад", description: "0,5 л", image: "lemonade", price: 105),
                OrderData(category: .drinks, name: "Кофе Американо", description: "0,4 л", image: "coffee", price: 99)
            ]
    ]
    
}
