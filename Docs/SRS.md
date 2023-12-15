# Спецификация требований к системе

## Введение
Этот документ описывает требования к разработке проекта "Сокращатель ссылок". Он предназначен для команды разработчиков, тестировщиков, заказчика и других заинтересованных сторон.

### Назначение:
Целью этого SRS документа является определение функциональных и нефункциональных требований к проекту "Сокращатель ссылок". Он служит основой для разработки, тестирования и утверждения проекта.

### Целевая аудитория и рекомендации по чтению:
Этот документ предназначен для разработчиков, тестировщиков и всех заинтересованных сторон, включая заказчика. Рекомендуется внимательно прочитать документ и обратить внимание на разделы, наиболее интересные для конкретных ролей.

### Скоуп проекта:
Проект "Сокращатель ссылок" разрабатывает расширение для браузера Google Chrome, предоставляющее возможность создания и использования коротких и понятных ссылок для веб-ресурсов. Проект включает в себя фронтенд и бэкенд компоненты, а также функциональность создания, управления и перехода по коротким ссылкам.

## Общее описание:
### Перспектива продукта:
Продукт будет предоставлять возможность пользователям браузера Google Chrome создавать короткие ссылки с говорящими именами для часто посещаемых веб-ресурсов.

### Характеристики продукта:
- Создание коротких ссылок.
- Персонализация коротких ссылок.
- Управление имеющимися короткими ссылками.
- Механизм переадресации при переходе по коротким ссылкам.

### Классы и характеристики пользователей:
1. Обычные пользователи: Используют продукт для создания коротких ссылок и удобного доступа к веб-ресурсам.
2. Разработчики: Могут интегрировать расширение в свои проекты и использовать API для создания коротких ссылок.

### Операционная среда:
Продукт разработан для браузера Google Chrome на различных операционных системах, включая Windows, macOS и Linux.

### Ограничения, связанные с проектированием и внедрением:
Расширение будет доступно только для браузера Google Chrome.
Пользовательские короткие ссылки могут быть доступны только в пределах браузера, в котором они созданы.

## Функциональные требования:
1. Создание коротких ссылок:
    - Пользователь должен иметь возможность создавать короткие ссылки для веб-ресурсов.
    - Короткие ссылки должны быть уникальными и понятными.
2. Управление короткими ссылками:
    - Пользователь должен иметь возможность просматривать, редактировать и удалять имеющиеся короткие ссылки.
3. Переадресация по коротким ссылкам:
    - При переходе по короткой ссылке должна осуществляться переадресация на соответствующий веб-ресурс. Переадресация осуществляется следующим образом:
        - Когда пользователь вводит короткую ссылку, браузер отправляет запрос на сервер ShortLinker.
        - Сервер ищет связанную и добавленную ранее длинную ссылку в базе данных и извлекает соответствующий исходный URL.
        - Затем сервер отправляет ответ с HTTP-перенаправлением 301 или 302 в браузер с исходным URL.
        - Браузер следует этому перенаправлению и открывает нужную веб-страницу.

### Требования к внешнему интерфейсу:
Пользовательские интерфейсы:
1. Интерфейс создания коротких ссылок:
    - Предоставляет поля для ввода длинной ссылки и пользовательской короткой ссылки.
    - Пользователь вводит кастомное имя короткой ссылки и длинную ссылку, на которую должна ссылаться короткая. 
2. Панель управления ссылками:
    - Позволяет просматривать и управлять имеющимися короткими ссылками: например, поменять имя короткой ссылки или изменить адрес длинной.

### Коммуникационные интерфейсы:
Сетевой доступ:
- Для создания коротких ссылок и перехода по ним требуется сетевой доступ к Интернету.

### Нефункциональные требования:
1. Требования к производительности:
    1. Время создания короткой ссылки:
        - Время создания короткой ссылки не должно превышать 1 секунды.
2. Требования безопасности:
    1. Шифрование данных:
        - Все передаваемые данные должны быть защищены протоколом HTTPS.

### Атрибуты качества программного обеспечения:
1. Надежность: Система должна быть надежной и стабильной. Короткие ссылки не должны вести на ошибки или недоступные ресурсы.
2. Удобство использования: Интерфейс должен быть интуитивно понятным для всех категорий пользователей.


## Приложение A: Глоссарий
- **Короткая ссылка:** Пользовательская ссылка, представляющая собой сокращенный вариант оригинального URL.
- **Полная ссылка (длинная ссылка):** Пользовательская ссылка, куда будет переадресована короткая ссылка.