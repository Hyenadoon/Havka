# db/seeds.rb

# puts "Создание пользователей..."
# # Пример пользователя
# user = User.create!(name: "Max", email: "max@example.com", telegram_id: "123456789")

# # --- Овощи ---
# tomato       = Product.create!(name: "Помидор", category: "Овощи", default_unit: "шт", price_per_kg: 200, calories: 18, protein: 0.9, fat: 0.2, carbs: 3.9)
# cucumber     = Product.create!(name: "Огурец", category: "Овощи", default_unit: "шт", price_per_kg: 120, calories: 16, protein: 0.7, fat: 0.1, carbs: 3.6)
# carrot       = Product.create!(name: "Морковь", category: "Овощи", default_unit: "шт", price_per_kg: 100, calories: 41, protein: 0.9, fat: 0.2, carbs: 9.6)
# potato       = Product.create!(name: "Картофель", category: "Овощи", default_unit: "шт", price_per_kg: 80, calories: 77, protein: 2, fat: 0.1, carbs: 17)
# onion        = Product.create!(name: "Лук репчатый", category: "Овощи", default_unit: "шт", price_per_kg: 90, calories: 40, protein: 1.1, fat: 0.1, carbs: 9.3)
# garlic       = Product.create!(name: "Чеснок", category: "Овощи", default_unit: "шт", price_per_kg: 400, calories: 149, protein: 6.4, fat: 0.5, carbs: 33)
# bell_pepper  = Product.create!(name: "Перец сладкий", category: "Овощи", default_unit: "шт", price_per_kg: 250, calories: 31, protein: 1, fat: 0.3, carbs: 6)
# cabbage      = Product.create!(name: "Капуста белокочанная", category: "Овощи", default_unit: "кг", price_per_kg: 60, calories: 25, protein: 1.3, fat: 0.1, carbs: 5.8)
# pumpkin      = Product.create!(name: "Тыква", category: "Овощи", default_unit: "кг", price_per_kg: 70, calories: 26, protein: 1, fat: 0.1, carbs: 6.5)
# beet         = Product.create!(name: "Свёкла", category: "Овощи", default_unit: "кг", price_per_kg: 90, calories: 43, protein: 1.6, fat: 0.2, carbs: 9.6)
# zucchini     = Product.create!(name: "Кабачок", category: "Овощи", default_unit: "шт", price_per_kg: 110, calories: 17, protein: 1.2, fat: 0.3, carbs: 3.1)
# eggplant     = Product.create!(name: "Баклажан", category: "Овощи", default_unit: "шт", price_per_kg: 150, calories: 25, protein: 1, fat: 0.2, carbs: 6)
# radish       = Product.create!(name: "Редис", category: "Овощи", default_unit: "кг", price_per_kg: 80, calories: 16, protein: 0.7, fat: 0.1, carbs: 3.4)
# green_peas   = Product.create!(name: "Зелёный горошек", category: "Овощи", default_unit: "кг", price_per_kg: 250, calories: 81, protein: 5, fat: 0.4, carbs: 14)
# sweet_corn   = Product.create!(name: "Кукуруза", category: "Овощи", default_unit: "кг", price_per_kg: 200, calories: 96, protein: 3.3, fat: 1.5, carbs: 21)
# celery       = Product.create!(name: "Сельдерей", category: "Овощи", default_unit: "кг", price_per_kg: 180, calories: 16, protein: 0.7, fat: 0.2, carbs: 3)
# parsley      = Product.create!(name: "Петрушка", category: "Овощи", default_unit: "кг", price_per_kg: 300, calories: 36, protein: 3, fat: 0.8, carbs: 6)
# dill         = Product.create!(name: "Укроп", category: "Овощи", default_unit: "кг", price_per_kg: 300, calories: 43, protein: 3.5, fat: 1.1, carbs: 7)
# leek         = Product.create!(name: "Лук порей", category: "Овощи", default_unit: "шт", price_per_kg: 120, calories: 61, protein: 1.5, fat: 0.3, carbs: 14)
# kohlrabi     = Product.create!(name: "Кольраби", category: "Овощи", default_unit: "шт", price_per_kg: 200, calories: 27, protein: 1.7, fat: 0.1, carbs: 6.2)
# turnip       = Product.create!(name: "Репа", category: "Овощи", default_unit: "шт", price_per_kg: 90, calories: 28, protein: 1, fat: 0.1, carbs: 6.4)
# broccoli     = Product.create!(name: "Брокколи", category: "Овощи", default_unit: "кг", price_per_kg: 300, calories: 34, protein: 2.8, fat: 0.4, carbs: 7)
# cauliflower  = Product.create!(name: "Цветная капуста", category: "Овощи", default_unit: "кг", price_per_kg: 250, calories: 25, protein: 2, fat: 0.1, carbs: 5)
# brussels_sprouts = Product.create!(name: "Брюссельская капуста", category: "Овощи", default_unit: "кг", price_per_kg: 350, calories: 43, protein: 3.4, fat: 0.3, carbs: 9)
# chili_pepper = Product.create!(name: "Перец острый", category: "Овощи", default_unit: "шт", price_per_kg: 400, calories: 40, protein: 2, fat: 0.4, carbs: 9)
# spinach      = Product.create!(name: "Шпинат", category: "Овощи", default_unit: "кг", price_per_kg: 250, calories: 23, protein: 2.9, fat: 0.4, carbs: 3.6)
# arugula      = Product.create!(name: "Руккола", category: "Овощи", default_unit: "кг", price_per_kg: 300, calories: 25, protein: 2.6, fat: 0.7, carbs: 3.7)
# mizuna       = Product.create!(name: "Мизуна", category: "Овощи", default_unit: "кг", price_per_kg: 350, calories: 27, protein: 2.3, fat: 0.2, carbs: 4)
# bok_choy     = Product.create!(name: "Бок-чой", category: "Овощи", default_unit: "кг", price_per_kg: 400, calories: 13, protein: 1.5, fat: 0.2, carbs: 2)

# parsley_root   = Product.create!(name: "Корень петрушки", category: "Овощи", default_unit: "кг", price_per_kg: 180, calories: 55, protein: 1.5, fat: 0.3, carbs: 13)
# celeriac       = Product.create!(name: "Корень сельдерея", category: "Овощи", default_unit: "кг", price_per_kg: 200, calories: 42, protein: 1.5, fat: 0.3, carbs: 9)
# horseradish    = Product.create!(name: "Хрен", category: "Овощи", default_unit: "кг", price_per_kg: 350, calories: 48, protein: 1.2, fat: 0.2, carbs: 11)
# parsnip        = Product.create!(name: "Пастернак", category: "Овощи", default_unit: "кг", price_per_kg: 220, calories: 75, protein: 1.2, fat: 0.3, carbs: 18)
# rutabaga       = Product.create!(name: "Брюква", category: "Овощи", default_unit: "кг", price_per_kg: 100, calories: 38, protein: 1, fat: 0.1, carbs: 9)
# kale           = Product.create!(name: "Кейл", category: "Овощи", default_unit: "кг", price_per_kg: 400, calories: 49, protein: 4, fat: 0.9, carbs: 9)
# chard          = Product.create!(name: "Мангольд", category: "Овощи", default_unit: "кг", price_per_kg: 350, calories: 19, protein: 1.8, fat: 0.2, carbs: 3.7)
# watercress     = Product.create!(name: "Водяной крес", category: "Овощи", default_unit: "кг", price_per_kg: 500, calories: 11, protein: 2.3, fat: 0.1, carbs: 1.3)
# mustard_greens = Product.create!(name: "Горчица листовая", category: "Овощи", default_unit: "кг", price_per_kg: 300, calories: 27, protein: 2.7, fat: 0.4, carbs: 4.7)
# fennel         = Product.create!(name: "Фенхель", category: "Овощи", default_unit: "кг", price_per_kg: 320, calories: 31, protein: 1.2, fat: 0.2, carbs: 7)
# dandelion      = Product.create!(name: "Одуванчик листовой", category: "Овощи", default_unit: "кг", price_per_kg: 250, calories: 45, protein: 2.7, fat: 0.7, carbs: 9)
# spinach_savoy  = Product.create!(name: "Шпинат курчавый", category: "Овощи", default_unit: "кг", price_per_kg: 270, calories: 23, protein: 2.9, fat: 0.4, carbs: 3.6)
# beetroot_leaf  = Product.create!(name: "Лист свёклы", category: "Овощи", default_unit: "кг", price_per_kg: 180, calories: 22, protein: 2.2, fat: 0.1, carbs: 4)

# # --- Фрукты ---
# apple        = Product.create!(name: "Яблоко", category: "Фрукты", default_unit: "шт", price_per_kg: 200, calories: 52, protein: 0.3, fat: 0.2, carbs: 14)
# pear         = Product.create!(name: "Груша", category: "Фрукты", default_unit: "шт", price_per_kg: 220, calories: 57, protein: 0.4, fat: 0.1, carbs: 15)
# banana       = Product.create!(name: "Банан", category: "Фрукты", default_unit: "шт", price_per_kg: 180, calories: 89, protein: 1.1, fat: 0.3, carbs: 23)
# orange       = Product.create!(name: "Апельсин", category: "Фрукты", default_unit: "шт", price_per_kg: 250, calories: 47, protein: 0.9, fat: 0.1, carbs: 12)
# mandarin     = Product.create!(name: "Мандарин", category: "Фрукты", default_unit: "шт", price_per_kg: 280, calories: 53, protein: 0.8, fat: 0.3, carbs: 13)
# grapefruit   = Product.create!(name: "Грейпфрут", category: "Фрукты", default_unit: "шт", price_per_kg: 300, calories: 42, protein: 0.8, fat: 0.1, carbs: 10)
# kiwi         = Product.create!(name: "Киви", category: "Фрукты", default_unit: "шт", price_per_kg: 400, calories: 61, protein: 1.1, fat: 0.5, carbs: 15)
# pineapple    = Product.create!(name: "Ананас", category: "Фрукты", default_unit: "кг", price_per_kg: 350, calories: 50, protein: 0.5, fat: 0.1, carbs: 13)
# mango        = Product.create!(name: "Манго", category: "Фрукты", default_unit: "шт", price_per_kg: 500, calories: 60, protein: 0.8, fat: 0.4, carbs: 15)
# plum         = Product.create!(name: "Слива", category: "Фрукты", default_unit: "шт", price_per_kg: 250, calories: 46, protein: 0.7, fat: 0.3, carbs: 11)
# cherry       = Product.create!(name: "Вишня", category: "Фрукты", default_unit: "кг", price_per_kg: 450, calories: 50, protein: 1, fat: 0.3, carbs: 12)
# sweet_cherry = Product.create!(name: "Черешня", category: "Фрукты", default_unit: "кг", price_per_kg: 500, calories: 63, protein: 1, fat: 0.2, carbs: 16)
# apricot      = Product.create!(name: "Абрикос", category: "Фрукты", default_unit: "шт", price_per_kg: 300, calories: 48, protein: 0.9, fat: 0.4, carbs: 11)
# peach        = Product.create!(name: "Персик", category: "Фрукты", default_unit: "шт", price_per_kg: 280, calories: 39, protein: 0.9, fat: 0.3, carbs: 10)
# nectarine    = Product.create!(name: "Нектарин", category: "Фрукты", default_unit: "шт", price_per_kg: 300, calories: 44, protein: 0.9, fat: 0.3, carbs: 11)
# grape        = Product.create!(name: "Виноград", category: "Фрукты", default_unit: "кг", price_per_kg: 350, calories: 69, protein: 0.7, fat: 0.2, carbs: 18)
# blueberry    = Product.create!(name: "Черника", category: "Фрукты", default_unit: "кг", price_per_kg: 800, calories: 57, protein: 0.7, fat: 0.3, carbs: 14)
# raspberry    = Product.create!(name: "Малина", category: "Фрукты", default_unit: "кг", price_per_kg: 750, calories: 52, protein: 1.2, fat: 0.7, carbs: 12)
# strawberry   = Product.create!(name: "Клубника", category: "Фрукты", default_unit: "кг", price_per_kg: 600, calories: 32, protein: 0.7, fat: 0.3, carbs: 7.7)
# blackberry   = Product.create!(name: "Ежевика", category: "Фрукты", default_unit: "кг", price_per_kg: 700, calories: 43, protein: 1.4, fat: 0.5, carbs: 10)
# pomegranate  = Product.create!(name: "Гранат", category: "Фрукты", default_unit: "шт", price_per_kg: 400, calories: 83, protein: 1.7, fat: 1.2, carbs: 19)
# lemon        = Product.create!(name: "Лимон", category: "Фрукты", default_unit: "шт", price_per_kg: 300, calories: 29, protein: 1.1, fat: 0.3, carbs: 9)
# lime         = Product.create!(name: "Лайм", category: "Фрукты", default_unit: "шт", price_per_kg: 350, calories: 30, protein: 0.7, fat: 0.2, carbs: 11)
# coconut      = Product.create!(name: "Кокос", category: "Фрукты", default_unit: "шт", price_per_kg: 600, calories: 354, protein: 3.3, fat: 33, carbs: 15)
# fig          = Product.create!(name: "Инжир", category: "Фрукты", default_unit: "шт", price_per_kg: 500, calories: 74, protein: 0.8, fat: 0.3, carbs: 19)
# persimmon    = Product.create!(name: "Хурма", category: "Фрукты", default_unit: "шт", price_per_kg: 450, calories: 81, protein: 0.6, fat: 0.2, carbs: 18)
# melon        = Product.create!(name: "Дыня", category: "Фрукты", default_unit: "кг", price_per_kg: 250, calories: 34, protein: 0.8, fat: 0.2, carbs: 8)
# watermelon   = Product.create!(name: "Арбуз", category: "Фрукты", default_unit: "кг", price_per_kg: 180, calories: 30, protein: 0.6, fat: 0.2, carbs: 8)
# kiwano       = Product.create!(name: "Кивано", category: "Фрукты", default_unit: "шт", price_per_kg: 600, calories: 44, protein: 1.8, fat: 0.2, carbs: 8)
# cranberry    = Product.create!(name: "Клюква", category: "Фрукты", default_unit: "кг", price_per_kg: 900, calories: 46, protein: 0.4, fat: 0.1, carbs: 12)
# gooseberry   = Product.create!(name: "Крыжовник", category: "Фрукты", default_unit: "кг", price_per_kg: 500, calories: 44, protein: 1, fat: 0.6, carbs: 10)

# # --- Мясо ---
# beef          = Product.create!(name: "Говядина", category: "Мясо", default_unit: "кг", price_per_kg: 700, calories: 250, protein: 26, fat: 17, carbs: 0)
# pork          = Product.create!(name: "Свинина", category: "Мясо", default_unit: "кг", price_per_kg: 500, calories: 290, protein: 25, fat: 21, carbs: 0)
# chicken_breast= Product.create!(name: "Куриная грудка", category: "Мясо", default_unit: "кг", price_per_kg: 400, calories: 165, protein: 31, fat: 3.6, carbs: 0)
# chicken_thigh = Product.create!(name: "Куриный окорочок", category: "Мясо", default_unit: "кг", price_per_kg: 380, calories: 209, protein: 26, fat: 10, carbs: 0)
# turkey        = Product.create!(name: "Индейка", category: "Мясо", default_unit: "кг", price_per_kg: 600, calories: 135, protein: 29, fat: 1, carbs: 0)
# lamb          = Product.create!(name: "Баранина", category: "Мясо", default_unit: "кг", price_per_kg: 800, calories: 294, protein: 25, fat: 21, carbs: 0)
# veal          = Product.create!(name: "Телятина", category: "Мясо", default_unit: "кг", price_per_kg: 750, calories: 172, protein: 20, fat: 10, carbs: 0)
# duck          = Product.create!(name: "Утка", category: "Мясо", default_unit: "кг", price_per_kg: 700, calories: 337, protein: 19, fat: 28, carbs: 0)
# goose         = Product.create!(name: "Гусь", category: "Мясо", default_unit: "кг", price_per_kg: 850, calories: 340, protein: 20, fat: 28, carbs: 0)
# rabbit        = Product.create!(name: "Кролик", category: "Мясо", default_unit: "кг", price_per_kg: 650, calories: 173, protein: 33, fat: 3.5, carbs: 0)
# bacon         = Product.create!(name: "Бекон", category: "Мясо", default_unit: "кг", price_per_kg: 900, calories: 541, protein: 37, fat: 42, carbs: 1)
# sausage       = Product.create!(name: "Колбаса варёная", category: "Мясо", default_unit: "кг", price_per_kg: 600, calories: 300, protein: 15, fat: 25, carbs: 2)
# salami        = Product.create!(name: "Салями", category: "Мясо", default_unit: "кг", price_per_kg: 1200, calories: 450, protein: 23, fat: 38, carbs: 3)
# ham           = Product.create!(name: "Ветчина", category: "Мясо", default_unit: "кг", price_per_kg: 700, calories: 145, protein: 20, fat: 6, carbs: 1)
# chicken_wings = Product.create!(name: "Крылышки куриные", category: "Мясо", default_unit: "кг", price_per_kg: 350, calories: 203, protein: 30, fat: 8, carbs: 0)
# chicken_leg   = Product.create!(name: "Ножка куриная", category: "Мясо", default_unit: "кг", price_per_kg: 360, calories: 209, protein: 26, fat: 10, carbs: 0)

# pork_minced      = Product.create!(name: "Фарш свиной", category: "Мясо", default_unit: "кг", price_per_kg: 450, calories: 250, protein: 18, fat: 20, carbs: 0)
# beef_minced      = Product.create!(name: "Фарш говяжий", category: "Мясо", default_unit: "кг", price_per_kg: 500, calories: 220, protein: 20, fat: 15, carbs: 0)
# chicken_minced   = Product.create!(name: "Фарш куриный", category: "Мясо", default_unit: "кг", price_per_kg: 400, calories: 180, protein: 20, fat: 10, carbs: 0)
# turkey_minced    = Product.create!(name: "Фарш индюшиный", category: "Мясо", default_unit: "кг", price_per_kg: 420, calories: 190, protein: 21, fat: 10, carbs: 0)
# mixed_minced     = Product.create!(name: "Фарш смешанный (свинина+говядина)", category: "Мясо", default_unit: "кг", price_per_kg: 480, calories: 230, protein: 19, fat: 17, carbs: 0)

# # --- Сосиски ---
# sausage_pork        = Product.create!(name: "Сосиски свиные", category: "Мясные изделия", default_unit: "кг", price_per_kg: 500, calories: 290, protein: 12, fat: 25, carbs: 2)
# sausage_beef        = Product.create!(name: "Сосиски говяжьи", category: "Мясные изделия", default_unit: "кг", price_per_kg: 550, calories: 280, protein: 13, fat: 24, carbs: 2)
# frankfurter         = Product.create!(name: "Франкфуртеры", category: "Мясные изделия", default_unit: "кг", price_per_kg: 600, calories: 310, protein: 14, fat: 26, carbs: 2)
# cocktail_sausages   = Product.create!(name: "Коктейльные сосиски", category: "Мясные изделия", default_unit: "кг", price_per_kg: 650, calories: 320, protein: 15, fat: 27, carbs: 2)
# cheese_sausage      = Product.create!(name: "Сосиски с сыром", category: "Мясные изделия", default_unit: "кг", price_per_kg: 700, calories: 350, protein: 16, fat: 28, carbs: 3)
# chicken_sausage     = Product.create!(name: "Сосиски куриные", category: "Мясные изделия", default_unit: "кг", price_per_kg: 480, calories: 260, protein: 14, fat: 20, carbs: 2)
# veal_sausage        = Product.create!(name: "Сосиски телячьи", category: "Мясные изделия", default_unit: "кг", price_per_kg: 750, calories: 300, protein: 15, fat: 25, carbs: 2)

# # --- Молочные продукты ---
# milk        = Product.create!(name: "Молоко", category: "Молочка", default_unit: "л", price_per_kg: 120, calories: 60, protein: 3.2, fat: 3.5, carbs: 4.8)
# kefir       = Product.create!(name: "Кефир", category: "Молочка", default_unit: "л", price_per_kg: 100, calories: 52, protein: 3, fat: 2.5, carbs: 4)
# sour_cream  = Product.create!(name: "Сметана 20%", category: "Молочка", default_unit: "кг", price_per_kg: 250, calories: 206, protein: 2.9, fat: 20, carbs: 3.3)
# cottage_cheese = Product.create!(name: "Творог 5%", category: "Молочка", default_unit: "кг", price_per_kg: 300, calories: 130, protein: 18, fat: 5, carbs: 3)
# cream       = Product.create!(name: "Сливки 33%", category: "Молочка", default_unit: "л", price_per_kg: 400, calories: 330, protein: 2.5, fat: 33, carbs: 3)
# butter      = Product.create!(name: "Масло сливочное 82%", category: "Молочка", default_unit: "кг", price_per_kg: 600, calories: 740, protein: 0.5, fat: 82, carbs: 0.5)
# cheese      = Product.create!(name: "Сыр твердый", category: "Молочка", default_unit: "кг", price_per_kg: 700, calories: 350, protein: 25, fat: 28, carbs: 1.5)
# yogurt      = Product.create!(name: "Йогурт натуральный", category: "Молочка", default_unit: "кг", price_per_kg: 200, calories: 60, protein: 3.5, fat: 3, carbs: 4)
# mozzarella  = Product.create!(name: "Моцарелла", category: "Молочка", default_unit: "кг", price_per_kg: 800, calories: 280, protein: 22, fat: 17, carbs: 2)
# ricotta     = Product.create!(name: "Рикотта", category: "Молочка", default_unit: "кг", price_per_kg: 700, calories: 174, protein: 11, fat: 13, carbs: 3)

# # --- Злаки и Крупы ---
# rice_white        = Product.create!(name: "Рис белый", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 120, calories: 350, protein: 7, fat: 0.6, carbs: 78)
# rice_brown        = Product.create!(name: "Рис коричневый", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 150, calories: 360, protein: 7.5, fat: 1.5, carbs: 76)
# buckwheat         = Product.create!(name: "Гречка", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 180, calories: 343, protein: 13, fat: 3.4, carbs: 72)
# oatmeal           = Product.create!(name: "Овсянка", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 200, calories: 389, protein: 17, fat: 7, carbs: 66)
# barley            = Product.create!(name: "Перловка", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 150, calories: 352, protein: 12, fat: 2.3, carbs: 73)
# millet            = Product.create!(name: "Пшено", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 160, calories: 378, protein: 11, fat: 4, carbs: 72)
# wheat_bulgur      = Product.create!(name: "Булгур", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 220, calories: 342, protein: 12, fat: 1.3, carbs: 76)
# corn_grits        = Product.create!(name: "Кукурузная крупа", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 140, calories: 365, protein: 9, fat: 4, carbs: 76)
# semolina          = Product.create!(name: "Манка", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 130, calories: 360, protein: 12, fat: 1.1, carbs: 72)
# rye_flour         = Product.create!(name: "Мука ржаная", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 100, calories: 325, protein: 10, fat: 1.7, carbs: 68)
# wheat_flour       = Product.create!(name: "Мука пшеничная", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 110, calories: 340, protein: 11, fat: 1, carbs: 72)
# oat_flour         = Product.create!(name: "Мука овсяная", category: "Злаки и крупы", default_unit: "кг", price_per_kg: 200, calories: 389, protein: 17, fat: 7, carbs: 66)

# # --- Консервы ---
# canned_tomatoes      = Product.create!(name: "Помидоры консервированные", category: "Консервы", default_unit: "кг", price_per_kg: 200, calories: 18, protein: 0.9, fat: 0.2, carbs: 3.9)
# canned_corn          = Product.create!(name: "Кукуруза консервированная", category: "Консервы", default_unit: "кг", price_per_kg: 180, calories: 96, protein: 3.3, fat: 1.2, carbs: 21)
# canned_peas          = Product.create!(name: "Горох консервированный", category: "Консервы", default_unit: "кг", price_per_kg: 200, calories: 81, protein: 5, fat: 0.4, carbs: 14)
# canned_mushrooms     = Product.create!(name: "Грибы консервированные", category: "Консервы", default_unit: "кг", price_per_kg: 300, calories: 22, protein: 2.5, fat: 0.1, carbs: 3.3)
# canned_beans         = Product.create!(name: "Фасоль консервированная", category: "Консервы", default_unit: "кг", price_per_kg: 220, calories: 127, protein: 7, fat: 0.5, carbs: 22)
# canned_sardines      = Product.create!(name: "Сардины в масле", category: "Консервы", default_unit: "кг", price_per_kg: 800, calories: 208, protein: 25, fat: 12, carbs: 0)
# canned_tuna          = Product.create!(name: "Тунец консервированный", category: "Консервы", default_unit: "кг", price_per_kg: 900, calories: 132, protein: 28, fat: 1, carbs: 0)
# canned_mackerel      = Product.create!(name: "Скумбрия консервированная", category: "Консервы", default_unit: "кг", price_per_kg: 750, calories: 205, protein: 20, fat: 13, carbs: 0)
# canned_pineapple     = Product.create!(name: "Ананас консервированный", category: "Консервы", default_unit: "кг", price_per_kg: 300, calories: 50, protein: 0.5, fat: 0.1, carbs: 13)
# canned_peaches       = Product.create!(name: "Персики консервированные", category: "Консервы", default_unit: "кг", price_per_kg: 320, calories: 50, protein: 0.5, fat: 0.2, carbs: 12)
# canned_milk         = Product.create!(name: "Молоко сгущённое", category: "Консервы", default_unit: "кг", price_per_kg: 400, calories: 321, protein: 7, fat: 8, carbs: 56)
# canned_condensed_soup = Product.create!(name: "Суп консервированный", category: "Консервы", default_unit: "кг", price_per_kg: 250, calories: 60, protein: 2, fat: 2, carbs: 8)
# canned_peas_carrot_mix = Product.create!(name: "Горох и морковь консервированные", category: "Консервы", default_unit: "кг", price_per_kg: 220, calories: 70, protein: 2, fat: 0.3, carbs: 14)
# canned_tomato_paste  = Product.create!(name: "Томатная паста", category: "Консервы", default_unit: "кг", price_per_kg: 180, calories: 82, protein: 4, fat: 0.5, carbs: 18)

# # --- Рыба ---
# salmon        = Product.create!(name: "Лосось", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1200, calories: 208, protein: 20, fat: 13, carbs: 0)
# trout         = Product.create!(name: "Форель", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 900, calories: 148, protein: 20, fat: 7, carbs: 0)
# cod           = Product.create!(name: "Треска", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 700, calories: 82, protein: 18, fat: 0.7, carbs: 0)
# herring       = Product.create!(name: "Сельдь", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 600, calories: 158, protein: 18, fat: 9, carbs: 0)
# mackerel      = Product.create!(name: "Скумбрия", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 800, calories: 205, protein: 20, fat: 13, carbs: 0)
# saithe        = Product.create!(name: "Пикша", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 650, calories: 82, protein: 18, fat: 0.7, carbs: 0)
# carp          = Product.create!(name: "Карп", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 500, calories: 127, protein: 17, fat: 6, carbs: 0)
# perch         = Product.create!(name: "Окунь", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 600, calories: 96, protein: 20, fat: 1, carbs: 0)
# anchovy       = Product.create!(name: "Анчоус", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1200, calories: 210, protein: 29, fat: 10, carbs: 0)
# tuna          = Product.create!(name: "Тунец", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1300, calories: 144, protein: 23, fat: 5, carbs: 0)
# shrimp        = Product.create!(name: "Креветка", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1000, calories: 99, protein: 24, fat: 0.3, carbs: 0.2)
# crab          = Product.create!(name: "Краб", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1500, calories: 97, protein: 19, fat: 1.5, carbs: 0)
# octopus       = Product.create!(name: "Осьминог", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1200, calories: 82, protein: 14, fat: 1, carbs: 2)
# squid         = Product.create!(name: "Кальмар", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 900, calories: 92, protein: 16, fat: 1.4, carbs: 3)
# clams         = Product.create!(name: "Мидии", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1000, calories: 86, protein: 12, fat: 2, carbs: 3)
# salmon_smoked = Product.create!(name: "Лосось копчёный", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 1800, calories: 210, protein: 20, fat: 14, carbs: 0)
# herring_salted = Product.create!(name: "Сельдь солёная", category: "Рыба и морепродукты", default_unit: "кг", price_per_kg: 800, calories: 158, protein: 18, fat: 9, carbs: 0)

# # --- Приправы и Специи ---
# salt           = Product.create!(name: "Соль", category: "Приправы и специи", default_unit: "кг", price_per_kg: 50, calories: 0, protein: 0, fat: 0, carbs: 0)
# sugar          = Product.create!(name: "Сахар", category: "Приправы и специи", default_unit: "кг", price_per_kg: 70, calories: 387, protein: 0, fat: 0, carbs: 100)
# black_pepper   = Product.create!(name: "Чёрный перец", category: "Приправы и специи", default_unit: "г", price_per_kg: 1500, calories: 255, protein: 10, fat: 3.3, carbs: 64)
# red_pepper     = Product.create!(name: "Красный перец", category: "Приправы и специи", default_unit: "г", price_per_kg: 1200, calories: 282, protein: 12, fat: 13, carbs: 54)
# paprika        = Product.create!(name: "Паприка", category: "Приправы и специи", default_unit: "г", price_per_kg: 900, calories: 282, protein: 14, fat: 12, carbs: 54)
# cumin          = Product.create!(name: "Тмин", category: "Приправы и специи", default_unit: "г", price_per_kg: 1000, calories: 375, protein: 18, fat: 22, carbs: 44)
# coriander      = Product.create!(name: "Кориандр", category: "Приправы и специи", default_unit: "г", price_per_kg: 950, calories: 298, protein: 12, fat: 8, carbs: 55)
# turmeric       = Product.create!(name: "Куркума", category: "Приправы и специи", default_unit: "г", price_per_kg: 1200, calories: 312, protein: 9.7, fat: 3.3, carbs: 67)
# ginger         = Product.create!(name: "Имбирь сушёный", category: "Приправы и специи", default_unit: "г", price_per_kg: 1400, calories: 335, protein: 9, fat: 4, carbs: 71)
# garlic_powder   = Product.create!(name: "Чеснок сушёный", category: "Приправы и специи", default_unit: "г", price_per_kg: 1100, calories: 331, protein: 16, fat: 0.7, carbs: 73)
# onion_powder    = Product.create!(name: "Лук сушёный", category: "Приправы и специи", default_unit: "г", price_per_kg: 900, calories: 341, protein: 11, fat: 0.5, carbs: 80)
# oregano         = Product.create!(name: "Орегано", category: "Приправы и специи", default_unit: "г", price_per_kg: 1000, calories: 265, protein: 9, fat: 4, carbs: 69)
# basil           = Product.create!(name: "Базилик сушёный", category: "Приправы и специи", default_unit: "г", price_per_kg: 1200, calories: 251, protein: 10, fat: 4, carbs: 63)
# thyme           = Product.create!(name: "Тимьян", category: "Приправы и специи", default_unit: "г", price_per_kg: 1300, calories: 276, protein: 9, fat: 7, carbs: 63)
# rosemary        = Product.create!(name: "Розмарин", category: "Приправы и специи", default_unit: "г", price_per_kg: 1500, calories: 331, protein: 10, fat: 11, carbs: 65)
# bay_leaf        = Product.create!(name: "Лавровый лист", category: "Приправы и специи", default_unit: "г", price_per_kg: 800, calories: 313, protein: 7.6, fat: 7, carbs: 75)
# mustard_seed    = Product.create!(name: "Семена горчицы", category: "Приправы и специи", default_unit: "г", price_per_kg: 1100, calories: 508, protein: 26, fat: 36, carbs: 28)
# nutmeg          = Product.create!(name: "Мускатный орех", category: "Приправы и специи", default_unit: "г", price_per_kg: 2000, calories: 525, protein: 6, fat: 36, carbs: 49)
# cloves          = Product.create!(name: "Гвоздика", category: "Приправы и специи", default_unit: "г", price_per_kg: 2200, calories: 274, protein: 6, fat: 13, carbs: 66)
# cinnamon        = Product.create!(name: "Корица", category: "Приправы и специи", default_unit: "г", price_per_kg: 1500, calories: 247, protein: 4, fat: 1.2, carbs: 81)
# allspice        = Product.create!(name: "Душистый перец", category: "Приправы и специи", default_unit: "г", price_per_kg: 1800, calories: 263, protein: 6, fat: 7, carbs: 56)
# cayenne_pepper  = Product.create!(name: "Паприка острая", category: "Приправы и специи", default_unit: "г", price_per_kg: 1600, calories: 318, protein: 12, fat: 14, carbs: 56)

# # --- Кулинарные ингредиенты ---
# yeast              = Product.create!(name: "Дрожжи сухие", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 2000, calories: 325, protein: 40, fat: 7, carbs: 45)
# baking_powder      = Product.create!(name: "Разрыхлитель теста", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 600, calories: 53, protein: 0, fat: 0, carbs: 27)
# baking_soda        = Product.create!(name: "Сода пищевая", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 80, calories: 0, protein: 0, fat: 0, carbs: 0)
# corn_starch        = Product.create!(name: "Кукурузный крахмал", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 300, calories: 381, protein: 0.3, fat: 0.1, carbs: 91)
# potato_starch      = Product.create!(name: "Картофельный крахмал", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 250, calories: 338, protein: 0.3, fat: 0, carbs: 83)
# icing_sugar        = Product.create!(name: "Сахарная пудра", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 150, calories: 389, protein: 0, fat: 0, carbs: 100)
# gelatin            = Product.create!(name: "Желатин", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 1200, calories: 350, protein: 85, fat: 0, carbs: 0)
# cocoa_powder       = Product.create!(name: "Какао порошок", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 1000, calories: 228, protein: 20, fat: 14, carbs: 58)
# vanilla_sugar      = Product.create!(name: "Ванильный сахар", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 800, calories: 400, protein: 0, fat: 0, carbs: 100)
# cornflour          = Product.create!(name: "Мука кукурузная", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 200, calories: 370, protein: 7, fat: 1, carbs: 79)
# almond_flour       = Product.create!(name: "Мука миндальная", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 1200, calories: 575, protein: 21, fat: 50, carbs: 20)
# coconut_flour      = Product.create!(name: "Мука кокосовая", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 1100, calories: 400, protein: 20, fat: 10, carbs: 60)
# cornmeal           = Product.create!(name: "Кукурузная мука грубого помола", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 180, calories: 365, protein: 9, fat: 4, carbs: 76)
# powdered_gelatin    = Product.create!(name: "Желатин порошковый", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 1200, calories: 350, protein: 85, fat: 0, carbs: 0)
# pectin             = Product.create!(name: "Пектин", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 1500, calories: 250, protein: 0, fat: 0, carbs: 65)
# agar_agar          = Product.create!(name: "Агар-агар", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 2000, calories: 0, protein: 0, fat: 0, carbs: 0)
# arrowroot_starch   = Product.create!(name: "Крахмал аррорута", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 1500, calories: 357, protein: 0, fat: 0, carbs: 88)
# cream_of_tartar    = Product.create!(name: "Виннокаменная кислота", category: "Кулинарные ингредиенты", default_unit: "г", price_per_kg: 2000, calories: 0, protein: 0, fat: 0, carbs: 0)
# honey              = Product.create!(name: "Мёд", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 1000, calories: 304, protein: 0.3, fat: 0, carbs: 82)
# molasses           = Product.create!(name: "Меласса", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 800, calories: 290, protein: 0, fat: 0, carbs: 75)
# corn_syrup         = Product.create!(name: "Кукурузный сироп", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 700, calories: 310, protein: 0, fat: 0, carbs: 80)
# maple_syrup        = Product.create!(name: "Кленовый сироп", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 2000, calories: 260, protein: 0, fat: 0, carbs: 67)
# brown_sugar        = Product.create!(name: "Коричневый сахар", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 150, calories: 380, protein: 0, fat: 0, carbs: 98)
# rice_syrup         = Product.create!(name: "Рисовый сироп", category: "Кулинарные ингредиенты", default_unit: "кг", price_per_kg: 900, calories: 310, protein: 0, fat: 0, carbs: 80)

# # --- Соусы, масла и уксусы ---
# olive_oil          = Product.create!(name: "Масло оливковое", category: "Масла и уксусы", default_unit: "л", price_per_kg: 1200, calories: 884, protein: 0, fat: 100, carbs: 0)
# sunflower_oil      = Product.create!(name: "Масло подсолнечное", category: "Масла и уксусы", default_unit: "л", price_per_kg: 700, calories: 884, protein: 0, fat: 100, carbs: 0)
# rapeseed_oil       = Product.create!(name: "Масло рапсовое", category: "Масла и уксусы", default_unit: "л", price_per_kg: 800, calories: 884, protein: 0, fat: 100, carbs: 0)
# sesame_oil         = Product.create!(name: "Масло кунжутное", category: "Масла и уксусы", default_unit: "л", price_per_kg: 1500, calories: 884, protein: 0, fat: 100, carbs: 0)
# coconut_oil        = Product.create!(name: "Масло кокосовое", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1200, calories: 862, protein: 0, fat: 100, carbs: 0)
# vinegar_wine       = Product.create!(name: "Винный уксус", category: "Масла и уксусы", default_unit: "л", price_per_kg: 300, calories: 22, protein: 0, fat: 0, carbs: 0.9)
# vinegar_balsamic   = Product.create!(name: "Бальзамический уксус", category: "Масла и уксусы", default_unit: "л", price_per_kg: 1200, calories: 88, protein: 0, fat: 0, carbs: 17)
# vinegar_apple      = Product.create!(name: "Яблочный уксус", category: "Масла и уксусы", default_unit: "л", price_per_kg: 400, calories: 21, protein: 0, fat: 0, carbs: 0.9)
# soy_sauce          = Product.create!(name: "Соевый соус", category: "Масла и уксусы", default_unit: "л", price_per_kg: 1000, calories: 53, protein: 8, fat: 0, carbs: 4)
# sesame_paste       = Product.create!(name: "Тахини (кунжутная паста)", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1500, calories: 595, protein: 17, fat: 53, carbs: 19)
# mayonnaise         = Product.create!(name: "Майонез", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 500, calories: 680, protein: 1, fat: 75, carbs: 2)
# mustard            = Product.create!(name: "Горчица", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 600, calories: 66, protein: 4, fat: 4, carbs: 5)
# tomato_sauce        = Product.create!(name: "Томатный соус", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 250, calories: 29, protein: 1, fat: 0, carbs: 7)
# ketchup             = Product.create!(name: "Кетчуп", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 200, calories: 100, protein: 1, fat: 0, carbs: 25)
# barbecue_sauce      = Product.create!(name: "Барбекю соус", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 400, calories: 120, protein: 1, fat: 0, carbs: 28)
# hot_sauce           = Product.create!(name: "Острый соус чили", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 500, calories: 50, protein: 1, fat: 0, carbs: 12)
# teriyaki_sauce      = Product.create!(name: "Соус Терияки", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1200, calories: 89, protein: 1, fat: 0, carbs: 20)
# worcestershire_sauce = Product.create!(name: "Вустерширский соус", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1300, calories: 78, protein: 1, fat: 0, carbs: 18)
# hoisin_sauce        = Product.create!(name: "Соус Хойсин", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1400, calories: 220, protein: 2, fat: 0, carbs: 52)
# pesto               = Product.create!(name: "Соус Песто", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1500, calories: 450, protein: 5, fat: 45, carbs: 3)
# teriyaki_marinade   = Product.create!(name: "Маринад Терияки", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1200, calories: 85, protein: 1, fat: 0, carbs: 18)
# sesame_sauce        = Product.create!(name: "Кунжутный соус", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1600, calories: 595, protein: 17, fat: 53, carbs: 19)
# tahini_sauce        = Product.create!(name: "Соус Тахини", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1500, calories: 595, protein: 17, fat: 53, carbs: 19)
# mayonnaise_light    = Product.create!(name: "Лёгкий майонез", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 450, calories: 350, protein: 1, fat: 30, carbs: 2)
# mustard_dijon       = Product.create!(name: "Горчица Дижон", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 650, calories: 66, protein: 4, fat: 4, carbs: 5)
# ranch_sauce         = Product.create!(name: "Соус Ранч", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 700, calories: 330, protein: 2, fat: 30, carbs: 3)
# blue_cheese_sauce   = Product.create!(name: "Соус с голубым сыром", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 1200, calories: 350, protein: 5, fat: 32, carbs: 4)
# sour_cream_sauce    = Product.create!(name: "Сметанный соус", category: "Масла и уксусы", default_unit: "кг", price_per_kg: 600, calories: 200, protein: 3, fat: 20, carbs: 4)

# puts "Создание калибров для продуктов..."

# # Овощи
# tomato.product_calibers.create!(name: "маленький", weight_g: 80)
# tomato.product_calibers.create!(name: "средний",   weight_g: 120)
# tomato.product_calibers.create!(name: "большой",   weight_g: 150)

# cucumber.product_calibers.create!(name: "маленький", weight_g: 100)
# cucumber.product_calibers.create!(name: "средний",   weight_g: 150)
# cucumber.product_calibers.create!(name: "большой",   weight_g: 200)

# carrot.product_calibers.create!(name: "маленькая", weight_g: 50)
# carrot.product_calibers.create!(name: "средняя",   weight_g: 100)
# carrot.product_calibers.create!(name: "большая",   weight_g: 150)

# potato.product_calibers.create!(name: "маленькая", weight_g: 80)
# potato.product_calibers.create!(name: "средняя",   weight_g: 150)
# potato.product_calibers.create!(name: "большая",   weight_g: 250)

# onion.product_calibers.create!(name: "маленькая", weight_g: 50)
# onion.product_calibers.create!(name: "средняя",   weight_g: 100)
# onion.product_calibers.create!(name: "большая",   weight_g: 150)

# garlic.product_calibers.create!(name: "малый зубчик", weight_g: 3)
# garlic.product_calibers.create!(name: "средний зубчик", weight_g: 5)
# garlic.product_calibers.create!(name: "большой зубчик", weight_g: 7)

# bell_pepper.product_calibers.create!(name: "маленький", weight_g: 100)
# bell_pepper.product_calibers.create!(name: "средний",   weight_g: 150)
# bell_pepper.product_calibers.create!(name: "большой",   weight_g: 200)

# radish.product_calibers.create!(name: "маленький", weight_g: 10)
# radish.product_calibers.create!(name: "средний",   weight_g: 20)
# radish.product_calibers.create!(name: "большой",   weight_g: 30)

# zucchini.product_calibers.create!(name: "маленький", weight_g: 150)
# zucchini.product_calibers.create!(name: "средний",   weight_g: 250)
# zucchini.product_calibers.create!(name: "большой",   weight_g: 350)

# eggplant.product_calibers.create!(name: "маленький", weight_g: 150)
# eggplant.product_calibers.create!(name: "средний",   weight_g: 300)
# eggplant.product_calibers.create!(name: "большой",   weight_g: 500)

# turnip.product_calibers.create!(name: "маленький", weight_g: 100)
# turnip.product_calibers.create!(name: "средний",   weight_g: 200)
# turnip.product_calibers.create!(name: "большой",   weight_g: 300)

# kohlrabi.product_calibers.create!(name: "маленький", weight_g: 150)
# kohlrabi.product_calibers.create!(name: "средний",   weight_g: 250)
# kohlrabi.product_calibers.create!(name: "большой",   weight_g: 350)

# chili_pepper.product_calibers.create!(name: "маленький", weight_g: 5)
# chili_pepper.product_calibers.create!(name: "средний",   weight_g: 10)
# chili_pepper.product_calibers.create!(name: "большой",   weight_g: 15)

# # Фрукты

# apple.product_calibers.create!(name: "маленький", weight_g: 120)
# apple.product_calibers.create!(name: "средний", weight_g: 180)
# apple.product_calibers.create!(name: "большой", weight_g: 250)

# banana.product_calibers.create!(name: "маленький", weight_g: 80)
# banana.product_calibers.create!(name: "средний", weight_g: 120)
# banana.product_calibers.create!(name: "большой", weight_g: 150)

# orange.product_calibers.create!(name: "маленький", weight_g: 100)
# orange.product_calibers.create!(name: "средний", weight_g: 150)
# orange.product_calibers.create!(name: "большой", weight_g: 200)

# pear.product_calibers.create!(name: "маленький", weight_g: 120)
# pear.product_calibers.create!(name: "средний", weight_g: 170)
# pear.product_calibers.create!(name: "большой", weight_g: 220)

# grape.product_calibers.create!(name: "крупная гроздь", weight_g: 400)
# grape.product_calibers.create!(name: "средняя гроздь", weight_g: 250)
# grape.product_calibers.create!(name: "маленькая гроздь", weight_g: 150)

# kiwi.product_calibers.create!(name: "маленький", weight_g: 70)
# kiwi.product_calibers.create!(name: "средний", weight_g: 100)
# kiwi.product_calibers.create!(name: "большой", weight_g: 150)

# mango.product_calibers.create!(name: "маленький", weight_g: 200)
# mango.product_calibers.create!(name: "средний", weight_g: 300)
# mango.product_calibers.create!(name: "большой", weight_g: 400)

# pineapple.product_calibers.create!(name: "маленький", weight_g: 800)
# pineapple.product_calibers.create!(name: "средний", weight_g: 1200)
# pineapple.product_calibers.create!(name: "большой", weight_g: 2000)

# peach.product_calibers.create!(name: "маленький", weight_g: 100)
# peach.product_calibers.create!(name: "средний", weight_g: 150)
# peach.product_calibers.create!(name: "большой", weight_g: 200)

# plum.product_calibers.create!(name: "маленький", weight_g: 50)
# plum.product_calibers.create!(name: "средний", weight_g: 80)
# plum.product_calibers.create!(name: "большой", weight_g: 120)

# cherry.product_calibers.create!(name: "мелкая", weight_g: 5)
# cherry.product_calibers.create!(name: "средняя", weight_g: 7)
# cherry.product_calibers.create!(name: "крупная", weight_g: 10)

# lemon.product_calibers.create!(name: "маленький", weight_g: 80)
# lemon.product_calibers.create!(name: "средний", weight_g: 120)
# lemon.product_calibers.create!(name: "большой", weight_g: 160)

# #Мясо 

# # Свинина
# pork_minced.product_calibers.create!(name: "малый кусок", weight_g: 150)
# pork_minced.product_calibers.create!(name: "средний кусок", weight_g: 250)
# pork_minced.product_calibers.create!(name: "большой кусок", weight_g: 350)

# # Говядина
# beef_minced.product_calibers.create!(name: "малый кусок", weight_g: 150)
# beef_minced.product_calibers.create!(name: "средний кусок", weight_g: 250)
# beef_minced.product_calibers.create!(name: "большой кусок", weight_g: 350)

# beef.product_calibers.create!(name: "малый стейк", weight_g: 180)
# beef.product_calibers.create!(name: "средний стейк", weight_g: 250)
# beef.product_calibers.create!(name: "большой стейк", weight_g: 350)

# # Курица
# chicken_breast.product_calibers.create!(name: "малое филе", weight_g: 120)
# chicken_breast.product_calibers.create!(name: "среднее филе", weight_g: 180)
# chicken_breast.product_calibers.create!(name: "большое филе", weight_g: 250)

# chicken_leg.product_calibers.create!(name: "малый окорочок", weight_g: 150)
# chicken_leg.product_calibers.create!(name: "средний окорочок", weight_g: 220)
# chicken_leg.product_calibers.create!(name: "большой окорочок", weight_g: 300)

# # Индейка
# turkey.product_calibers.create!(name: "малое филе", weight_g: 150)
# turkey.product_calibers.create!(name: "среднее филе", weight_g: 250)
# turkey.product_calibers.create!(name: "большое филе", weight_g: 350)

# turkey.product_calibers.create!(name: "малый окорочок", weight_g: 200)
# turkey.product_calibers.create!(name: "средний окорочок", weight_g: 300)
# turkey.product_calibers.create!(name: "большой окорочок", weight_g: 400)

# # Сосиски / сардельки
# sausage_pork.product_calibers.create!(name: "маленькая", weight_g: 50)
# sausage_pork.product_calibers.create!(name: "средняя", weight_g: 80)
# sausage_pork.product_calibers.create!(name: "большая", weight_g: 100)

# sausage_beef.product_calibers.create!(name: "маленькая", weight_g: 50)
# sausage_beef.product_calibers.create!(name: "средняя", weight_g: 80)
# sausage_beef.product_calibers.create!(name: "большая", weight_g: 100)

# frankfurter.product_calibers.create!(name: "маленькая", weight_g: 50)
# frankfurter.product_calibers.create!(name: "средняя", weight_g: 80)
# frankfurter.product_calibers.create!(name: "большая", weight_g: 100)

# chicken_sausage.product_calibers.create!(name: "маленькая", weight_g: 50)
# chicken_sausage.product_calibers.create!(name: "средняя", weight_g: 80)
# chicken_sausage.product_calibers.create!(name: "большая", weight_g: 100)

# # Фарш
# pork_minced.product_calibers.create!(name: "малый кусок", weight_g: 200)
# pork_minced.product_calibers.create!(name: "средний кусок", weight_g: 400)
# pork_minced.product_calibers.create!(name: "большой кусок", weight_g: 600)

# beef_minced.product_calibers.create!(name: "малый кусок", weight_g: 200)
# beef_minced.product_calibers.create!(name: "средний кусок", weight_g: 400)
# beef_minced.product_calibers.create!(name: "большой кусок", weight_g: 600)

# chicken_minced.product_calibers.create!(name: "малый кусок", weight_g: 200)
# chicken_minced.product_calibers.create!(name: "средний кусок", weight_g: 400)
# chicken_minced.product_calibers.create!(name: "большой кусок", weight_g: 600)

# #Рыба

# salmon.product_calibers.create!(name: "малый стейк", weight_g: 150)
# salmon.product_calibers.create!(name: "средний стейк", weight_g: 250)
# salmon.product_calibers.create!(name: "большой стейк", weight_g: 350)

# trout.product_calibers.create!(name: "малый стейк", weight_g: 120)
# trout.product_calibers.create!(name: "средний стейк", weight_g: 200)
# trout.product_calibers.create!(name: "большой стейк", weight_g: 300)

# cod.product_calibers.create!(name: "малый кусок", weight_g: 150)
# cod.product_calibers.create!(name: "средний кусок", weight_g: 250)
# cod.product_calibers.create!(name: "большой кусок", weight_g: 350)

# herring.product_calibers.create!(name: "маленькая", weight_g: 100)
# herring.product_calibers.create!(name: "средняя", weight_g: 200)
# herring.product_calibers.create!(name: "большая", weight_g: 300)

# mackerel.product_calibers.create!(name: "маленькая", weight_g: 150)
# mackerel.product_calibers.create!(name: "средняя", weight_g: 250)
# mackerel.product_calibers.create!(name: "большая", weight_g: 350)

# tuna.product_calibers.create!(name: "малый стейк", weight_g: 150)
# tuna.product_calibers.create!(name: "средний стейк", weight_g: 250)
# tuna.product_calibers.create!(name: "большой стейк", weight_g: 350)

# salmon.product_calibers.create!(name: "малое филе", weight_g: 100)
# salmon.product_calibers.create!(name: "среднее филе", weight_g: 200)
# salmon.product_calibers.create!(name: "большое филе", weight_g: 300)

# trout.product_calibers.create!(name: "малое филе", weight_g: 100)
# trout.product_calibers.create!(name: "среднее филе", weight_g: 180)
# trout.product_calibers.create!(name: "большое филе", weight_g: 250)

# shrimp.product_calibers.create!(name: "маленькая креветка", weight_g: 5)
# shrimp.product_calibers.create!(name: "средняя креветка", weight_g: 10)
# shrimp.product_calibers.create!(name: "крупная креветка", weight_g: 20)

# squid.product_calibers.create!(name: "малый кусок", weight_g: 50)
# squid.product_calibers.create!(name: "средний кусок", weight_g: 100)
# squid.product_calibers.create!(name: "большой кусок", weight_g: 200)

# salmon_smoked.product_calibers.create!(name: "малый кусок", weight_g: 50)
# salmon_smoked.product_calibers.create!(name: "средний кусок", weight_g: 100)
# salmon_smoked.product_calibers.create!(name: "большой кусок", weight_g: 200)

# carp.product_calibers.create!(name: "маленькая рыба", weight_g: 500)
# carp.product_calibers.create!(name: "средняя рыба", weight_g: 1000)
# carp.product_calibers.create!(name: "большая рыба", weight_g: 1500)

# perch.product_calibers.create!(name: "малый стейк", weight_g: 150)
# perch.product_calibers.create!(name: "средний стейк", weight_g: 250)
# perch.product_calibers.create!(name: "большой стейк", weight_g: 350)

# octopus.product_calibers.create!(name: "малый кусок", weight_g: 100)
# octopus.product_calibers.create!(name: "средний кусок", weight_g: 200)
# octopus.product_calibers.create!(name: "большой кусок", weight_g: 400)

# clams.product_calibers.create!(name: "маленькая ракушка", weight_g: 10)
# clams.product_calibers.create!(name: "средняя ракушка", weight_g: 25)
# clams.product_calibers.create!(name: "крупная ракушка", weight_g: 40)

# #кулинарные ингридиенты 

# yeast.product_calibers.create!(name: "малый пакет", weight_g: 5)
# yeast.product_calibers.create!(name: "средний пакет", weight_g: 10)
# yeast.product_calibers.create!(name: "большой пакет", weight_g: 50)

# baking_powder.product_calibers.create!(name: "малый пакет", weight_g: 10)
# baking_powder.product_calibers.create!(name: "средний пакет", weight_g: 50)
# baking_powder.product_calibers.create!(name: "большой пакет", weight_g: 100)

# baking_soda.product_calibers.create!(name: "малый пакет", weight_g: 10)
# baking_soda.product_calibers.create!(name: "средний пакет", weight_g: 50)
# baking_soda.product_calibers.create!(name: "большой пакет", weight_g: 100)

# corn_starch.product_calibers.create!(name: "малый пакет", weight_g: 50)
# corn_starch.product_calibers.create!(name: "средний пакет", weight_g: 100)
# corn_starch.product_calibers.create!(name: "большой пакет", weight_g: 500)

# potato_starch.product_calibers.create!(name: "малый пакет", weight_g: 50)
# potato_starch.product_calibers.create!(name: "средний пакет", weight_g: 100)
# potato_starch.product_calibers.create!(name: "большой пакет", weight_g: 500)

# icing_sugar.product_calibers.create!(name: "малый пакет", weight_g: 50)
# icing_sugar.product_calibers.create!(name: "средний пакет", weight_g: 100)
# icing_sugar.product_calibers.create!(name: "большой пакет", weight_g: 500)

# gelatin.product_calibers.create!(name: "малый пакет", weight_g: 10)
# gelatin.product_calibers.create!(name: "средний пакет", weight_g: 50)
# gelatin.product_calibers.create!(name: "большой пакет", weight_g: 100)

# cocoa_powder.product_calibers.create!(name: "малый пакет", weight_g: 50)
# cocoa_powder.product_calibers.create!(name: "средний пакет", weight_g: 100)
# cocoa_powder.product_calibers.create!(name: "большой пакет", weight_g: 500)

# vanilla_sugar.product_calibers.create!(name: "малый пакет", weight_g: 5)
# vanilla_sugar.product_calibers.create!(name: "средний пакет", weight_g: 10)
# vanilla_sugar.product_calibers.create!(name: "большой пакет", weight_g: 50)

# cornflour.product_calibers.create!(name: "малый пакет", weight_g: 100)
# cornflour.product_calibers.create!(name: "средний пакет", weight_g: 250)
# cornflour.product_calibers.create!(name: "большой пакет", weight_g: 1000)

# almond_flour.product_calibers.create!(name: "малый пакет", weight_g: 100)
# almond_flour.product_calibers.create!(name: "средний пакет", weight_g: 250)
# almond_flour.product_calibers.create!(name: "большой пакет", weight_g: 500)

# coconut_flour.product_calibers.create!(name: "малый пакет", weight_g: 100)
# coconut_flour.product_calibers.create!(name: "средний пакет", weight_g: 250)
# coconut_flour.product_calibers.create!(name: "большой пакет", weight_g: 500)

# cornmeal.product_calibers.create!(name: "малый пакет", weight_g: 100)
# cornmeal.product_calibers.create!(name: "средний пакет", weight_g: 250)
# cornmeal.product_calibers.create!(name: "большой пакет", weight_g: 1000)

# powdered_gelatin.product_calibers.create!(name: "малый пакет", weight_g: 10)
# powdered_gelatin.product_calibers.create!(name: "средний пакет", weight_g: 50)
# powdered_gelatin.product_calibers.create!(name: "большой пакет", weight_g: 100)

# pectin.product_calibers.create!(name: "малый пакет", weight_g: 10)
# pectin.product_calibers.create!(name: "средний пакет", weight_g: 50)
# pectin.product_calibers.create!(name: "большой пакет", weight_g: 100)

# agar_agar.product_calibers.create!(name: "малый пакет", weight_g: 10)
# agar_agar.product_calibers.create!(name: "средний пакет", weight_g: 50)
# agar_agar.product_calibers.create!(name: "большой пакет", weight_g: 100)

# arrowroot_starch.product_calibers.create!(name: "малый пакет", weight_g: 50)
# arrowroot_starch.product_calibers.create!(name: "средний пакет", weight_g: 100)
# arrowroot_starch.product_calibers.create!(name: "большой пакет", weight_g: 500)

# cream_of_tartar.product_calibers.create!(name: "малый пакет", weight_g: 10)
# cream_of_tartar.product_calibers.create!(name: "средний пакет", weight_g: 50)
# cream_of_tartar.product_calibers.create!(name: "большой пакет", weight_g: 100)

# honey.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# honey.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# honey.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# molasses.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# molasses.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# molasses.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# corn_syrup.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# corn_syrup.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# corn_syrup.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# maple_syrup.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# maple_syrup.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# maple_syrup.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# brown_sugar.product_calibers.create!(name: "малый пакет", weight_g: 100)
# brown_sugar.product_calibers.create!(name: "средний пакет", weight_g: 250)
# brown_sugar.product_calibers.create!(name: "большой пакет", weight_g: 1000)

# rice_syrup.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# rice_syrup.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# rice_syrup.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# #Соусы и прочее

# # Масла
# olive_oil.product_calibers.create!(name: "малая бутылка", weight_g: 250)
# olive_oil.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# olive_oil.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# sunflower_oil.product_calibers.create!(name: "малая бутылка", weight_g: 250)
# sunflower_oil.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# sunflower_oil.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# rapeseed_oil.product_calibers.create!(name: "малая бутылка", weight_g: 250)
# rapeseed_oil.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# rapeseed_oil.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# butter.product_calibers.create!(name: "малый кусок", weight_g: 100)
# butter.product_calibers.create!(name: "средний кусок", weight_g: 250)
# butter.product_calibers.create!(name: "большой кусок", weight_g: 500)

# sesame_oil.product_calibers.create!(name: "малая бутылка", weight_g: 250)
# sesame_oil.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# sesame_oil.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# coconut_oil.product_calibers.create!(name: "малый кусок", weight_g: 100)
# coconut_oil.product_calibers.create!(name: "средний кусок", weight_g: 250)
# coconut_oil.product_calibers.create!(name: "большой кусок", weight_g: 500)

# # Уксусы
# vinegar_wine.product_calibers.create!(name: "маленькая бутылка", weight_g: 250)
# vinegar_wine.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# vinegar_wine.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# vinegar_balsamic.product_calibers.create!(name: "маленькая бутылка", weight_g: 250)
# vinegar_balsamic.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# vinegar_balsamic.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# vinegar_apple.product_calibers.create!(name: "маленькая бутылка", weight_g: 250)
# vinegar_apple.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# vinegar_apple.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# # Соусы
# soy_sauce.product_calibers.create!(name: "маленькая бутылка", weight_g: 250)
# soy_sauce.product_calibers.create!(name: "средняя бутылка", weight_g: 500)
# soy_sauce.product_calibers.create!(name: "большая бутылка", weight_g: 1000)

# mayonnaise.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# mayonnaise.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# mayonnaise.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# mustard.product_calibers.create!(name: "малый тюбик", weight_g: 50)
# mustard.product_calibers.create!(name: "средний тюбик", weight_g: 100)
# mustard.product_calibers.create!(name: "большой тюбик", weight_g: 200)

# ketchup.product_calibers.create!(name: "малый тюбик", weight_g: 200)
# ketchup.product_calibers.create!(name: "средний тюбик", weight_g: 500)
# ketchup.product_calibers.create!(name: "большой тюбик", weight_g: 1000)

# barbecue_sauce.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# barbecue_sauce.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# barbecue_sauce.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# hot_sauce.product_calibers.create!(name: "малый флакон", weight_g: 50)
# hot_sauce.product_calibers.create!(name: "средний флакон", weight_g: 150)
# hot_sauce.product_calibers.create!(name: "большой флакон", weight_g: 300)

# pesto.product_calibers.create!(name: "малая баночка", weight_g: 100)
# pesto.product_calibers.create!(name: "средняя баночка", weight_g: 200)
# pesto.product_calibers.create!(name: "большая баночка", weight_g: 500)

# teriyaki_sauce.product_calibers.create!(name: "малый флакон", weight_g: 100)
# teriyaki_sauce.product_calibers.create!(name: "средний флакон", weight_g: 250)
# teriyaki_sauce.product_calibers.create!(name: "большой флакон", weight_g: 500)

# worcestershire_sauce.product_calibers.create!(name: "малый флакон", weight_g: 100)
# worcestershire_sauce.product_calibers.create!(name: "средний флакон", weight_g: 250)
# worcestershire_sauce.product_calibers.create!(name: "большой флакон", weight_g: 500)

# hoisin_sauce.product_calibers.create!(name: "малый флакон", weight_g: 100)
# hoisin_sauce.product_calibers.create!(name: "средний флакон", weight_g: 250)
# hoisin_sauce.product_calibers.create!(name: "большой флакон", weight_g: 500)

# teriyaki_marinade.product_calibers.create!(name: "малый контейнер", weight_g: 200)
# teriyaki_marinade.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# teriyaki_marinade.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# sesame_sauce.product_calibers.create!(name: "малый флакон", weight_g: 100)
# sesame_sauce.product_calibers.create!(name: "средний флакон", weight_g: 250)
# sesame_sauce.product_calibers.create!(name: "большой флакон", weight_g: 500)

# tahini_sauce.product_calibers.create!(name: "малая баночка", weight_g: 100)
# tahini_sauce.product_calibers.create!(name: "средняя баночка", weight_g: 250)
# tahini_sauce.product_calibers.create!(name: "большая баночка", weight_g: 500)

# mayonnaise_light.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# mayonnaise_light.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# mayonnaise_light.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# mustard_dijon.product_calibers.create!(name: "малый тюбик", weight_g: 50)
# mustard_dijon.product_calibers.create!(name: "средний тюбик", weight_g: 100)
# mustard_dijon.product_calibers.create!(name: "большой тюбик", weight_g: 200)

# ranch_sauce.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# ranch_sauce.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# ranch_sauce.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# blue_cheese_sauce.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# blue_cheese_sauce.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# blue_cheese_sauce.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# sour_cream_sauce.product_calibers.create!(name: "малый контейнер", weight_g: 250)
# sour_cream_sauce.product_calibers.create!(name: "средний контейнер", weight_g: 500)
# sour_cream_sauce.product_calibers.create!(name: "большой контейнер", weight_g: 1000)

# puts "Создание рецептов..."
# ragout = Recipe.create!(name: "Рагу из говядины", description: "Тушёное мясо с овощами", total_time: 60)
# salad  = Recipe.create!(name: "Овощной салат", description: "Лёгкий салат из свежих овощей", total_time: 15)

# puts "Создание ингредиентов рецептов..."
# RecipeIngredient.create!([
#   { recipe: ragout, product: beef, quantity: 0.3, unit: "кг" },  # 300 г
#   { recipe: ragout, product: tomato, quantity: 5, unit: "шт" },
#   { recipe: ragout, product: onion, quantity: 1, unit: "шт" },
#   { recipe: ragout, product: potato, quantity: 10, unit: "шт" },
#   { recipe: ragout, product: carrot, quantity: 2, unit: "шт" },

#   { recipe: salad, product: tomato, quantity: 3, unit: "шт" },
#   { recipe: salad, product: cucumber, quantity: 2, unit: "шт" },
#   { recipe: salad, product: onion, quantity: 1, unit: "шт" },
#   { recipe: salad, product: carrot, quantity: 1, unit: "шт" }
# ])

# puts "Создание инвентаря пользователя (пример с сессией)..."

# puts "Сиды успешно загружены!"

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

puts "[Seeds] Создаем заглушки для калибров..."
Product.left_outer_joins(:product_calibers)
       .where(product_calibers: { id: nil })
       .find_each do |p|
  p.product_calibers.create!(name: "стандарт", weight_g: 100)
end
puts "[Seeds] Готово!"