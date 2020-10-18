﻿
#Область ОбработчикиСобытий

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ПодготовитьНастройки();
	ПодготовитьПараметрыЗапросов();
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	Попытка
		ОбновитьСтатусСервиса();
	Исключение
		Сообщить(ПодробноеПредставлениеОшибки(ИнформацияОбОшибке()));
	КонецПопытки;
	
КонецПроцедуры

&НаКлиенте
Процедура ОбработкаВыбора(ВыбранноеЗначение, ИсточникВыбора)
	Если ЗначениеЗаполнено(ВыбранноеЗначение) Тогда
		Если ВыбранноеЗначение.ИмяФормы = "ПомощникПодключения" Тогда
			Объект.IdInstance = ВыбранноеЗначение.IdInstance;
			Объект.ApiToken = ВыбранноеЗначение.ApiToken;
		ИначеЕсли ВыбранноеЗначение.ИмяФормы = "ВыборСсылкиНаФайл" Тогда
			ВыбратьСсылкуДляОтправкиСервер(ВыбранноеЗначение.АдресФайла, ВыбранноеЗначение.ИмяФайла);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиРеквизитовКомандФормы

&НаКлиенте
Процедура ПолучитьКонтакты(Команда)
	КомандаПолучитьКонтакты();
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьНаличиеWhatsApp(Команда)
	КомандаПроверитьНаличиеWhatsApp();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьАватарКонтакта(Команда)
	КомандаПолучитьАватарКонтакта();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьИнформациюОбУстройстве(Команда)
	КомандаПолучитьИнформациюОбУстройстве();
КонецПроцедуры

&НаКлиенте
Процедура ОтметитьЧатПрочитанным(Команда)
	КомандаОтметитьЧатПрочитанным();
КонецПроцедуры

&НаКлиенте
Процедура ВыйтиИзГруппы(Команда)
	КомандаВыйтиИзГруппы();
КонецПроцедуры

&НаКлиенте
Процедура ОтозватьПраваАдминистратораГруппы(Команда)
	КомандаОтозватьПраваАдминистратораГруппы();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьИнформациюОГруппе(Команда)
	КомандаПолучитьИнформациюОГруппе();
КонецПроцедуры

&НаКлиенте
Процедура ДобавитьУчастникаВГруппу(Команда)
	КомандаДобавитьУчастникаВГруппу();
КонецПроцедуры

&НаКлиенте
Процедура УдалитьУчастникаИзГруппы(Команда)
	КомандаУдалитьУчастникаИзГруппы();
КонецПроцедуры

&НаКлиенте
Процедура НазначитьПраваАдминистратораГруппы(Команда)
	КомандаНазначитьПраваАдминистратораГруппы();
КонецПроцедуры

&НаКлиенте
Процедура СоздатьГруппу(Команда)
	КомандаСоздатьГруппу();
КонецПроцедуры

&НаКлиенте
Процедура ИзменитьИмяГруппы(Команда)
	КомандаИзменитьИмяГруппы();
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьОчередьСообщенийКОтправке(Команда)
	КомандаОчиститьОчередьСообщенийКОтправке();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьОчередьСообщенийКОтправке(Команда)
	КомандаПолучитьОчередьСообщенийКОтправке();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьЖурналОтправленныхСообщений(Команда)
	КомандаПолучитьЖурналОтправленныхСообщений();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьЖурналВходящихСообщений(Команда)
	КомандаПолучитьЖурналВходящихСообщений();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьQRКод(Команда)
	КомандаПолучитьQRКод();
КонецПроцедуры

&НаКлиенте
Процедура РазлогинитьАккаунт(Команда)
	КомандаРазлогинитьАккаунт();
КонецПроцедуры

&НаКлиенте
Процедура ПерезапуститьАккаунт(Команда)
	КомандаПерезапуститьАккаунт();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьСостояниеАккаунта(Команда)
	КомандаПолучитьСостояниеАккаунта();
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьПодключение(Команда)
	ОбновитьСтатусСервиса();
	Элементы.СтатусПроверки.Видимость = Истина;
КонецПроцедуры

&НаКлиенте
Процедура ПолучатьВходящиеУведомленияПриИзменении(Элемент)
	ПолучатьВходящиеУведомленияПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ОбновитьСтатус(Команда)
	
	ОбновитьСтатусСервиса();
	
КонецПроцедуры

&НаКлиенте
Процедура УстановитьСтандартныеНастройки(Команда)
	Если ЗначениеЗаполнено(webhookUrl) Тогда
		Оповещение = Новый ОписаниеОповещения("ЗавершитьПоказСтандартныхНастроек", ЭтотОбъект);
		ТекстВопроса = "Будут установлены стандартные настройки. Получение входящих уведомлений на текущий адрес " + webhookUrl + " будет отключено.";
		КнопкиВопроса = Новый СписокЗначений;
		КнопкиВопроса.Добавить("Установить стандартные настройки");
		КнопкиВопроса.Добавить("Отмена");
		ПоказатьВопрос(Оповещение, ТекстВопроса, КнопкиВопроса);
	Иначе
		УстановитьНастройкиСервисаПоДефолтуСервер();
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьСообщение(Команда)
	
	Если Не ЗначениеЗаполнено(НомерТелефона) Тогда
		Сообщить("Номер телефона не заполнен");
		Возврат;
	КонецЕсли;
	
	Если Не ЗначениеЗаполнено(ТекстСообщения) Тогда
		Сообщить("Текст сообщения не заполнен");
		Возврат;
	КонецЕсли;
	
	ОтправитьСообщениеWhatsApp();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьСообщениеЧерезВебхук(Команда)
	СтатусПолучениеСообщения = "Ожидание сообщения в течение 20 сек...";
	Элементы.ПолученФайл.Видимость = Ложь;
	Объект.ТекстПолученноеСообщение = "";
	Объект.ПолученФайл = "";
	ПодключитьОбработчикОжидания("Подключаемый_ПолучитьСообщениеЧерезВебхук", 0.1, Истина);
КонецПроцедуры

&НаКлиенте
Процедура ПолучатьВходящиеСообщенияИФайлыПриИзменении(Элемент)
	ПолучатьВходящиеСообщенияИФайлыПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ПолучатьСтатусыОтправленныхСообщенийПриИзменении(Элемент)
	ПолучатьСтатусыОтправленныхСообщенийПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ПолучатьУведомленииОСостоянииТелефонаПриИзменении(Элемент)
	ПолучатьУведомленииОСостоянииТелефонаПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ПолучатьУведомленияОСостоянииАккаунтаПриИзменении(Элемент)
	ПолучатьУведомленияОСостоянииАккаунтаПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ОтмечатьВходящиеСообщенияПрочитаннымиПриИзменении(Элемент)
	ОтмечатьВходящиеСообщенияПрочитаннымиПриИзмененииСервер();
КонецПроцедуры

&НаКлиенте
Процедура ИнтервалОтправкиСообщенийПриИзменении(Элемент)
	ИнтервалОтправкиСообщенийПриИзмененииСервер();
	
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьФайл(Команда)
	Диалог = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.Открытие);
	Оповещение = Новый ОписаниеОповещения("ВыбратьФайлДляОтправки", ЭтотОбъект);
	Диалог.Показать(Оповещение);
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьФайлПоСсылке(Команда)
	ОткрытьФормуОбработки("ВыборСсылкиНаФайл");
КонецПроцедуры

&НаКлиенте
Процедура СсылкаОтправитьТекстНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/sending/SendMessage/");
КонецПроцедуры

&НаКлиенте
Процедура СсылкаОтправитьФайлНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);	
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/sending/SendFileByUpload/");
КонецПроцедуры

&НаКлиенте
Процедура СсылкаОтправитьФайлПоСсылкеНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);	
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/sending/SendFileByUrl/");
КонецПроцедуры

&НаКлиенте
Процедура КнопкаПомощник(Команда)
	
	ОткрытьФормуОбработки("ПомощникПодключения");
	
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьНастройкиАккаунта(Команда)
	КомандаПолучитьНастройкиАккаунтаСервер();
КонецПроцедуры

&НаКлиенте
Процедура УстановитьНастройкиАккаунта(Команда)
	КомандаУстановитьНастройкиАккаунтаСервер();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ЗавершитьЗапускПриложенияGR(КодВозврата, ДополнительныеПараметры) Экспорт
	
	// Действия не требуются
	
КонецПроцедуры

&НаКлиенте
Процедура Подключаемый_ПолучитьСообщениеЧерезВебхук() Экспорт
	ПолучитьСообщениеЧерезВебхукСервер();
	СтатусПолучениеСообщения = "";
КонецПроцедуры

&НаСервере
Процедура ВыбратьСсылкуДляОтправкиСервер(АдресФайла, ИмяФайла)
	
	Ответ = ОбработкаОбъект().ОтправитьВидеоАудиоИзображениеДокументПоURL(НомерТелефона, АдресФайла, ИмяФайла, ТекстСообщения);
	Сообщить("Файл отправлен успешно. idMessage=" + Ответ.idMessage);
	
КонецПроцедуры

&НаКлиенте
Процедура ВыбратьФайлДляОтправки(ВыбранныеФайлы, ДопПараметры) Экспорт
	
	Если ВыбранныеФайлы = Неопределено Или ВыбранныеФайлы.Количество() = 0 Тогда
		Возврат;
	КонецЕсли;
	
	ВыбратьФайлДляОтправкиСервер(ВыбранныеФайлы[0]);
	
КонецПроцедуры

&НаСервере
Процедура ВыбратьФайлДляОтправкиСервер(ИмяФайла)
	
	Ответ = ОбработкаОбъект().ОтправитьВидеоАудиоИзображениеДокумент(НомерТелефона, ИмяФайла, ТекстСообщения);
	Сообщить("Файл отправлен успешно. idMessage=" + Ответ.idMessage);
	
КонецПроцедуры

&НаСервере
Процедура ПолучатьВходящиеУведомленияПриИзмененииСервер()
	
	Если ПолучатьВходящиеУведомления Тогда
		webhookUrl = ОбработкаОбъект().ХостВебхуковПоУмолчанию();
	Иначе
		webhookUrl = "";
	КонецЕсли;
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("webhookUrl", webhookUrl);
	ОбновитьСтатусСервиса();
	
КонецПроцедуры

&НаСервере
Процедура ОтправитьСообщениеWhatsApp()
	Ответ = ОбработкаОбъект().ОтправитьТекст(НомерТелефона, ТекстСообщения);
	Сообщить("Сообщение отправлено успешно. idMessage=" + Ответ.idMessage);
КонецПроцедуры

&НаСервере
Процедура ОбновитьСтатусСервиса()
	
	Если Не ЭтотОбъект.ПроверитьЗаполнение() Тогда
		Возврат;
	КонецЕсли;
	
	СтатусСервиса = ОбработкаОбъект().ПолучитьСтатусСервиса();
	
	Если СтатусСервиса Тогда
		НастройкиСервиса = ОбработкаОбъект().ПолучитьНастройкиАккаунта();

		ПолучатьВходящиеУведомления = ЗначениеЗаполнено(НастройкиСервиса.webhookUrl) И НастройкиСервиса.webhookUrl = ОбработкаОбъект().ХостВебхуковПоУмолчанию();
		webhookUrl = НастройкиСервиса.webhookUrl;
		ПолучатьВходящиеСообщенияИФайлы = НастройкиСервиса.incomingWebhook = "yes";
		ПолучатьСтатусыОтправленныхСообщений = НастройкиСервиса.outgoingWebhook = "yes";
		ПолучатьУведомленииОСостоянииТелефона = НастройкиСервиса.deviceWebhook = "yes";
		ПолучатьУведомленияОСостоянииАккаунта = НастройкиСервиса.stateWebhook = "yes";
		ОтмечатьВходящиеСообщенияПрочитанными = НастройкиСервиса.markIncomingMessagesReaded = "yes";
		ИнтервалОтправкиСообщений = Макс(НастройкиСервиса.delaySendMessagesMilliseconds, ИнтервалОтправкиСообщений);
		
		ЕстьНестадантныенастройки = Не (ЗначениеЗаполнено(НастройкиСервиса.webhookUrl) И НастройкиСервиса.webhookUrl = ОбработкаОбъект().ХостВебхуковПоУмолчанию());
		Элементы.ДеталиПредупреждениеСтандартныеНастройки.Видимость = ЕстьНестадантныенастройки;
		Элементы.ПолучатьВходящиеУведомления.Видимость = Не ЕстьНестадантныенастройки;
		Элементы.ДеталиНастройкиУведомлений.Видимость = Не ЕстьНестадантныенастройки;
		Элементы.ГруппаНестандартныеНастройки.Видимость = ЕстьНестадантныенастройки;
		Элементы.ДеталиПредупреждениеСтандартныеНастройки.Видимость = ЕстьНестадантныенастройки;
		Элементы.ДекорацияНастройкиНедоступны.Видимость = Ложь;
	Иначе
		Элементы.ДеталиПредупреждениеСтандартныеНастройки.Видимость = Ложь;
		Элементы.ПолучатьВходящиеУведомления.Видимость = Ложь;
		Элементы.ДеталиНастройкиУведомлений.Видимость = Ложь;
		Элементы.ГруппаНестандартныеНастройки.Видимость = Ложь;
		Элементы.ДекорацияНастройкиНедоступны.Видимость = Истина;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЗавершитьПоказСтандартныхНастроек(РезультатВопроса, ДополнительныеПараметры) Экспорт
	
	Если РезультатВопроса = "Установить стандартные настройки" Тогда
		УстановитьНастройкиСервисаПоДефолтуСервер();
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ПодготовитьНастройки()
	
	ТекстСообщения = "Hello world!";
	ЭтотОбъект.Заголовок = ОбработкаОбъект().ВерсияОбработки();
	ИнтервалОтправкиСообщений = 500;
	
КонецПроцедуры

&НаСервере
Функция ПолучитьТекстИзМакета(ИмяМакета)
	Об = ОбработкаОбъект();
	ОбластьМакета = Об.ПолучитьМакет(ИмяМакета);
	Возврат ОбластьМакета.ТекущаяОбласть.Текст;
КонецФункции

&НаСервере
Функция ОбработкаОбъект() 
	Возврат РеквизитФормыВЗначение("Объект");
КонецФункции

&НаСервере
Процедура ПолучатьВходящиеСообщенияИФайлыПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("incomingWebhook", 
		? (ПолучатьВходящиеСообщенияИФайлы, "yes", "no"));
	
КонецПроцедуры

&НаСервере
Процедура ПолучатьСтатусыОтправленныхСообщенийПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("outgoingWebhook", 
		? (ПолучатьВходящиеСообщенияИФайлы, "yes", "no"));
	
КонецПроцедуры

&НаСервере
Процедура ПолучатьУведомленииОСостоянииТелефонаПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("deviceWebhook", 
		? (ПолучатьВходящиеСообщенияИФайлы, "yes", "no"));
	
КонецПроцедуры

&НаСервере
Процедура ПолучатьУведомленияОСостоянииАккаунтаПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("stateWebhook", 
		? (ПолучатьВходящиеСообщенияИФайлы, "yes", "no"));
	
КонецПроцедуры

&НаСервере
Процедура ОтмечатьВходящиеСообщенияПрочитаннымиПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("markIncomingMessagesReaded", 
		? (ОтмечатьВходящиеСообщенияПрочитанными, "yes", "no"));
	
КонецПроцедуры

&НаСервере
Процедура ИнтервалОтправкиСообщенийПриИзмененииСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("delaySendMessagesMilliseconds", ИнтервалОтправкиСообщений);
	
КонецПроцедуры

&НаСервере
Процедура ПолучитьСообщениеЧерезВебхукСервер()
	
	ОбработкаОбъект = ОбработкаОбъект();
	ОбработкаОбъект.ПолучитьСообщение();
	ЗначениеВРеквизитФормы(ОбработкаОбъект, "Объект");
	Элементы.ПолученФайл.Видимость = ЗначениеЗаполнено(Объект.ПолученФайл); 
	
КонецПроцедуры

&НаСервере
Процедура УстановитьНастройкиСервисаПоДефолтуСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкиСервисаПоДефолту();
	ОбновитьСтатусСервиса();
	
КонецПроцедуры

&НаСервере
Процедура УстановитьНастройкуСервисаСервер()
	
	НастройкиСохранены = ОбработкаОбъект().УстановитьНастройкуСервиса("webhookUrl", ОбработкаОбъект().ХостВебхуковПоУмолчанию());
	ОбновитьСтатусСервиса();
	
КонецПроцедуры

&НаКлиенте
Процедура ПолученФайлОткрытие(Элемент, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	Если ЗначениеЗаполнено(Объект.ПолученФайл) Тогда
		Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);	
		НачатьЗапускПриложения(Оповещение, Объект.ПолученФайл);
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура СсылкаФорматВходящихУведомленийНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/receiving/notifications-format/");
КонецПроцедуры

&НаКлиенте
Процедура СсылкаПолучитьУведомлениеНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);	
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/receiving/technology-http-api/ReceiveNotification/");
КонецПроцедуры

&НаКлиенте
Процедура СсылкаУдалитьУведомлениеНажатие(Элемент)
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);
	НачатьЗапускПриложения(Оповещение, "https://green-api.com/docs/api/receiving/technology-http-api/DeleteNotification/");
КонецПроцедуры

&НаКлиенте
Процедура ПолученФайлНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ПолноеИмяФайла = СтрЗаменить(Объект.ПолученФайл, "\", "//");
	КаталогФайла = Лев(ПолноеИмяФайла, СтрНайти(ПолноеИмяФайла, "//", НаправлениеПоиска.СКонца));
	СтандартнаяОбработка = Ложь;
	Оповещение = Новый ОписаниеОповещения("ЗавершитьЗапускПриложенияGR", ЭтотОбъект);
	НачатьЗапускПриложения(Оповещение, КаталогФайла);
КонецПроцедуры

&НаСервере
Функция ЭтоВнешняяОбработкаОтчет() Экспорт
	ПолноеИмяМетаданных = ОбработкаОбъект().Метаданные().ПолноеИмя();
	Возврат Метаданные.НайтиПоПолномуИмени(ПолноеИмяМетаданных) = Неопределено
КонецФункции

&НаКлиенте
Функция ОткрытьФормуОбработки(ИмяФормы)
	
	Если ЭтоВнешняяОбработкаОтчет() Тогда
		ИмяОткрФормы = "ВнешняяОбработка.GreenAPI.Форма." + ИмяФормы;
	Иначе
		ИмяОткрФормы = "Обработка.GreenAPI.Форма." + ИмяФормы;
	КонецЕсли;
		
	ОткрытьФорму(ИмяОткрФормы, Новый Структура("IdInstance,ApiToken", Объект.IdInstance, Объект.ApiToken), ЭтотОбъект,,,,, 
		РежимОткрытияОкнаФормы.БлокироватьОкноВладельца);

	
КонецФункции

&НаСервере
Функция СтруктураИзJSON(JSON)
	
	Чтение = Новый ЧтениеJSON();
	Чтение.УстановитьСтроку(JSON);
	Конв = ПрочитатьJSON(Чтение);
	Чтение.Закрыть();
	Возврат Конв;
КонецФункции

&НаСервере
Функция СтруктураВJSONСтроку(Структура)
	Запись = Новый ЗаписьJSON();
	Запись.УстановитьСтроку();
	ЗаписатьJSON(Запись, Структура);
	Возврат Запись.Закрыть();
КонецФункции

&НаСервере
Функция ЗначениеВМассив(Значение)
	
	Массив = Новый Массив;
	Массив.Добавить(Значение);
	Возврат Массив;
	
КонецФункции

&НаСервере
Процедура ПодготовитьПараметрыЗапросов()
	
	ПараметрУстановитьНастройкиАккаунта = "{
	|    ""countryInstance"": ""ru"",
	|    ""webhookUrl"": ""https://mysite.com/webhook/green-api/"",
	|    ""delaySendMessagesMilliseconds"": 1000,
	|    ""markIncomingMessagesReaded"": ""no"",
	|    ""proxyInstance"": ""100.100.100.100:3535:login:password"",
	|    ""outgoingWebhook"": ""yes"",
	|    ""stateWebhook"": ""yes"",
	|    ""incomingWebhook"": ""yes"",
	|    ""deviceWebhook"": ""no""
	|}";
	
	ПараметрИмяГруппы = "Group created by Green API";
	ПараметрНомерТелефона = "79001234568";
	ПараметрИдГруппы = "79001234567-1587570015@g.us";
	ПараметрИдУчастника = "79001234565@c.us";
	ПараметрИдЧата = "79001234567@c.us";
	ПараметрИдСообщения = "B275A7AA0D6EF89BB9245169BDF174E6";
	
КонецПроцедуры

#КонецОбласти

#Область Аккаунт

&НаСервере
Процедура КомандаПолучитьНастройкиАккаунтаСервер()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьНастройкиАккаунта());
КонецПроцедуры

&НаСервере
Процедура КомандаУстановитьНастройкиАккаунтаСервер()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().УстановитьНастройкиАккаунта(СтруктураИзJSON(ПараметрУстановитьНастройкиАккаунта)));
КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьСостояниеАккаунта()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьСостояниеАккаунта());
КонецПроцедуры

&НаСервере
Процедура КомандаПерезапуститьАккаунт()
	
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПерезапуститьАккаунт());
	
КонецПроцедуры

&НаСервере
Процедура КомандаРазлогинитьАккаунт()
	
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().РазлогинитьАккаунт());
	
КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьQRКод()
	
	Ответ = ОбработкаОбъект().ПолучитьQRКод();
	Консоль = СтруктураВJSONСтроку(Ответ);
	СтатусQRКода = Ответ.type;
	Если Ответ.type = "qrCode" Тогда
		QRКод = ПолучитьТекстИзМакета("QRМакет");
		QRКод = СтрЗаменить(QRКод, "%QR_DATA%", Ответ.message);
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Область Журналы
&НаСервере
Процедура КомандаПолучитьЖурналВходящихСообщений()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьЖурналВходящихСообщений());
КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьЖурналОтправленныхСообщений()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьЖурналОтправленныхСообщений());
КонецПроцедуры

#КонецОбласти

#Область Очереди

&НаСервере
Процедура КомандаПолучитьОчередьСообщенийКОтправке()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьОчередьСообщенийКОтправке());
КонецПроцедуры

&НаСервере
Процедура КомандаОчиститьОчередьСообщенийКОтправке()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьОчередьСообщенийКОтправке());
КонецПроцедуры

#КонецОбласти

#Область Группы

&НаСервере
Процедура КомандаСоздатьГруппу()
	
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().СоздатьГруппу(ПараметрИмяГруппы, ЗначениеВМассив(ПараметрНомерТелефона)));
	
КонецПроцедуры

&НаСервере
Процедура КомандаИзменитьИмяГруппы()
	
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ИзменитьИмяГруппы(ПараметрИдГруппы, ПараметрИмяГруппы));
	
КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьИнформациюОГруппе()
	
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьИнформациюОГруппе(ПараметрИдГруппы));
	
КонецПроцедуры

&НаСервере
Процедура КомандаДобавитьУчастникаВГруппу()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ДобавитьУчастникаВГруппу(ПараметрИдГруппы, ПараметрИдУчастника));

КонецПроцедуры

&НаСервере
Процедура КомандаУдалитьУчастникаИзГруппы()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().УдалитьУчастникаИзГруппы(ПараметрИдГруппы, ПараметрИдУчастника));

КонецПроцедуры

&НаСервере
Процедура КомандаНазначитьПраваАдминистратораГруппы()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().НазначитьПраваАдминистратораГруппы(ПараметрИдГруппы, ПараметрИдУчастника));

КонецПроцедуры

&НаСервере
Процедура КомандаОтозватьПраваАдминистратораГруппы()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ОтозватьПраваАдминистратораГруппы(ПараметрИдГруппы, ПараметрИдУчастника));

КонецПроцедуры

&НаСервере
Процедура КомандаВыйтиИзГруппы()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ВыйтиИзГруппы(ПараметрИдГруппы));

КонецПроцедуры

#КонецОбласти

#Область ОтметкаПрочтения

Процедура КомандаОтметитьЧатПрочитанным()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ОтметитьЧатПрочитанным(ПараметрИдЧата, ПараметрИдСообщения));

КонецПроцедуры

#КонецОбласти

#Область ИнформацияОбУстройстве

&НаСервере
Процедура КомандаПолучитьИнформациюОбУстройстве()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьИнформациюОбУстройстве());

КонецПроцедуры

#КонецОбласти

#Область СервисныеМетоды

&НаСервере
Процедура КомандаПроверитьНаличиеWhatsApp()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПроверитьНаличиеWhatsApp(Число(ПараметрНомерТелефона)));

КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьАватарКонтакта()

	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьАватарКонтакта(ПараметрИдЧата));

КонецПроцедуры

&НаСервере
Процедура КомандаПолучитьКонтакты()
	Консоль = СтруктураВJSONСтроку(ОбработкаОбъект().ПолучитьКонтакты());
КонецПроцедуры

#КонецОбласти

