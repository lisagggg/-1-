﻿#language: ru

@tree

Функционал: проверка заполнения полей в документе Заказ покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заполнения полей в документе Заказ покупателя

И я закрываю все окна клиентского приложения

* Создание документа и заполнение поля Партнер
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я перехожу к строке:
		| "Наименование"            |
		| "Клиент 1 (1 соглашение)" |
	Когда открылось окно "Партнеры"
	И я нажимаю на кнопку с именем 'FormChoose'

* Проверка заполнения поля Партнер

	Тогда элемент формы с именем 'Partner' стал равен "Клиент 1 (1 соглашение)"

* Проверка заполнения поля Соглашение
	Тогда элемент формы с именем 'Agreement' стал равен "Соглашение с клиентами (расчет по документам + кредитный лимит)"

* Очищаем поле Партнер
	Когда открылось окно "Заказ покупателя (создание) *"
	И в поле с именем 'Partner' я ввожу текст ""
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'

* Проверка на блокировку поля Контрагент
	И элемент формы с именем 'LegalName' не доступен
								