-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2018 г., 08:16
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bakerella`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ingredient`
--

INSERT INTO `ingredient` (`id`, `name`) VALUES
(1, 'Апельсины'),
(2, 'Бананы'),
(3, 'Ванильный сахар'),
(4, 'Какао-порошок'),
(5, 'Карамель'),
(6, 'Кофе'),
(7, 'Лимоны'),
(8, 'Мандарины'),
(9, 'Маргарин'),
(10, 'Мед'),
(11, 'Молоко'),
(12, 'Мука'),
(13, 'Орехи'),
(14, 'Печенье'),
(15, 'Разрыхлитель'),
(16, 'Сахар'),
(17, 'Сахарная пудра'),
(18, 'Сгущенное молоко'),
(19, 'Сливки'),
(20, 'Сливочное масло'),
(21, 'Сливочный сыр'),
(22, 'Соль'),
(23, 'Сода пищевая'),
(24, 'Шоколад молочный'),
(25, 'Шоколад темный'),
(26, 'Яблоки'),
(27, 'Яйца'),
(28, 'Клубника'),
(29, 'Джем'),
(30, 'Черника');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `method` text NOT NULL,
  `cook_time` varchar(45) DEFAULT NULL,
  `serving_size` int(11) DEFAULT NULL,
  `difficulty` varchar(45) DEFAULT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`id`, `name`, `method`, `cook_time`, `serving_size`, `difficulty`, `photo`) VALUES
(1, 'Лимонный торт', 'Разогрейте духовку до 180ºC.\r\nВ миске взбейте маргарин с сахаром в течение 5 минут, пока он не станет светлее и \"пушистее\".\r\nРазбейте в миску яйца, а также мелко натрите и добавьте цедру 2 лимонов и 1 апельсина, затем хорошо всё перемешайте.\r\nПросейте муку и разрыхлитель в миску, аккуратно перемешайте. Добавьте сок 1 лимона и ½ апельсина и перемешайте до однородности.\r\nВылейте смесь в форму для запекания и выпекайте в течение 35 минут или до тех пор, пока торт не станет золотистым.\r\nОставьте торт остывать, пока вы делаете глазурь.\r\nСмешайте сахарную пудру с цедрой и соком из ½ лимона и ¼ апельсина. Как только торт полностью остынет, полейте его сверху глазурью. Посыпьте немного тертой лимонной и апельсиновой цедры и подавайте.', '1 час 10 минут', 12, 'Низкая', '/images/1115_1_1439300324.jpg'),
(2, 'Лимонное печенье', 'Взбейте масло и сахар в миске электрическим миксером. Добавьте яйцо и взбивайте, пока смесь не станет легкой и \"пушистой\". Добавьте муку, лимонную цедру, разрыхлитель и соль и перемешайте, пока у вас не получится шарик теста. Покройте его пленкой и поместите в холодильник на 2 часа.\r\nРазогрейте духовку до 180°C. Посыпьте поверхность мукой и раскатайте тесто до ½ см толщиной. Вырежьте круглые фигурки из теста и разместите их на покрытом пергаментной бумагой противне. Посыпьте сверху фигурки сахаром и выпекайте в течение 10-12 минут, пока края не станут светло-коричневыми. Оставьте для охлаждения.', '25 минут', 30, 'Низкая', '/images/311_1_1436805247.jpg'),
(3, 'Печенье с яблоками', 'Разогрейте духовку до 200ºC. Выложите два противня пергаментной бумагой. Измельчите яблоки в кухонном комбайне на мелкие кусочки, затем добавьте муку, разрыхлитель, порезанное кубиками масло, сахар и щепотку соли. Измельчайте смесь в комбайне до мелких крошек в течение минуты, затем отложите 3 столовые ложки крошек на потом. В оставшуюся смесь добавьте яйцо и хорошо взбейте.\r\nРазделите на 24 части, скатайте в шарики, затем слегка сдавите их, пока они не станут примерно 4 см в диаметре, выложите их на ранее приготовленные противни. Посыпьте сверху ранее отложенную крошку, слегка вдавливая её в печенье. Выпекайте от 8 до 10 минут или до слегка золотистого цвета.', '24 минуты', 24, 'Средняя', '/images/55846348.jpg'),
(4, 'Карамельный щербет', 'Растопите 200 г сахара в кастрюле на среднем огне до золотистого цвета, затем добавьте еще 400 г вместе со сливками, маслом и 1 чайной ложкой соли, хорошо перемешивая.\r\nГотовьте, помешивая, на среднем огне, пока температура не достигнет 118ºC на термометре.\r\nВыключите печь, взбейте карамель электрическим миксером до густой консистенции. Вылейте в покрытую пергаментной бумагой форму 20 см x 20 см и равномерно распределите лопаткой.\r\nОставьте на охлаждение, затем охлаждайте в холодильнике в течение 2 - 3 часов, чтобы щербет застыл. Посыпьте щепоткой соли, нарежьте 2 - 3 см кубиками и подавайте.', '30 минут', 40, 'Средняя', '/images/7bXBFF9XKjY9Jxq2lvq36_.jpg'),
(5, 'Шоколадно-карамельный пирог с орехами', 'Чтобы приготовить тесто, просейте муку, какао и сахарную пудру в чашку. Затем добавьте 120 г сливочного масла и растирайте его, пока оно не станет походить на мелкие хлебные крошки, добавьте щепотку соли.\r\nДобавьте яичный желток и 45 мл воды и, перемешивая, сформируйте тесто, добавляйте больше муки, если это необходимо. Оберните тесто в пленку и оставьте в холодильнике на 30 минут.\r\nРазогрейте духовку до 190ºC.\r\nВыложите тесто в форму для пирога диаметром 25 см. Сверху распределите пергаментную бумагу и заполните форму рисом. Поставьте форму на противень и оставьте его в холодильнике на 30 минут.\r\nПеренесите противень с формой в духовку на 15 минут. В это время прожарьте орехи, пока они не станут золотисто-коричневыми. Уберите пергаментную бумагу и рис из формы и верните ее в духовку на 5 минут или до тех пор, пока база не будет готова. Отложите.\r\nЧтобы сделать начинку, поместите 300 г сахара и мед в кастрюлю и нагревайте на среднем огне. Как только сахар начнет растапливаться, начните мешать круговыми движениями, пока смесь не станет золотистой. Снимите с огня, добавьте сливки и оставшиеся 45 г сливочного масла, параллельно взбивая. Верните кастрюлю на плиту и взбивайте, пока карамель не станет золотисто-коричневой. Уберите с огня и влейте в форму с приготовленным тестом, отложите.\r\nЧтобы сделать орехи хрупкими, выложите противень пергаментной бумагой, положите 100 г сахара в кастрюлю и поместите в кастрюлю термометр. Установите на средний огонь. Подготовьте жареные орехи.\r\nКогда сахар начнет слегка пузыриться по краям, наклоните кастрюлю, чтобы обеспечить равномерность таяния сахара. Вскоре (около 3 минут) весь сахар расплавится. Когда температура достигнет 150ºC, снимите кастрюлю с огня и вмешайте орехи. Быстро вылейте смесь на противень и отставьте в сторону.\r\nКогда орехи охладятся, измельчите их на мелкие кусочки. Посыпьте кусочки орехов поверх готового пирога.\r\nЧтобы украсить пирог сахарными нитями, нагрейте оставшиеся 100 г сахара и 50 мл воды в той же кастрюле, на среднем огне. Дайте сахару расплавиться, перемешайте до однородной консистенции. Нагревайте в течение 8-10 минут, до 150ºC, затем уберите с огня и быстро поместите в чашку со льдом, чтобы остановить процесс и отложите.\r\nВозьмите две вилки и вытащите сахар, поворачивая вилки, чтобы формировать длинные сахарные нити в \"гнезда\". Используйте их, чтобы украсить верх пирога.', '2 часа 10 минут', 12, 'Высокая', '/images/46260149.jpg'),
(6, 'Брауни с соленой карамелью', 'Начните с создания карамели. Поместите ванильный сахар в кастрюлю. Добавьте сливки, 8 г масла и чайную ложку соли. Готовьте, помешивая, на медленном огне в течение примерно 2 - 3 минут, пока смесь не начнет закипать, затем снимите с огня и отложите.\r\nПоместите 60 г сахара и мед в кастрюлю на медленный огонь. Не мешайте, просто осторожно наклоняйте кастрюлю, чтобы помочь сахару растопиться.\r\nПовысьте огонь до среднего и продолжайте покачивать кастрюлю круговыми движениями, пока сахар не превратится в золотую карамель.\r\nУберите кастрюлю с огня. Добавьте приготовленную карамель в ранее приготовленную сливочную смесь и перемешайте деревянной ложкой.\r\nВерните смесь на медленный огонь,и добавьте еще 7 грамм масла, перемешайте и отставьте в сторону.\r\nСкомкайте большой кусок пергаментной бумаги, намочите (стряхните излишки воды), затем выложите ее в форму  размером 20 см х 30 см.\r\nВлейте в карамель, посыпьте щепоткой соли и поместите форму в холодильник на 30 минут, пока она не загустеет.\r\nПосле того как карамель охладилась в течение 15 минут, начинайте готовить брауни. Разогрейте духовку до 180ºC. Смажьте маслом и выложите пергаментной бумагой другую форму размером 20 см х 30 см.\r\nРастопите 225 г масла в кастрюле на медленном огне. Измельчите и добавьте в шоколад, перемешивайте до тех пор, пока он не растает, затем уберите с огня и добавьте 225 г сахара, перемешайте.\r\nКогда смесь немного остынет, добавьте яйца и хорошо взбейте, затем просейте и вмешайте муку до однородной консистенции. Вылейте смесь в приготовленную форму.\r\nДостаньте карамель из холодильника и поместите несколько полных ложек карамели в брауни. Как только у вас останется третья часть карамели, налейте ее сверху.\r\nВыпекайте брауни в духовке в течение примерно 25 минут или до готовности.\r\nОставьте остывать в течение 1 часа, разрежьте на квадраты и подавайте.', '55 минут', 16, 'Средняя', '/images/46264330.jpg'),
(7, 'Печенье с шоколадной крошкой', 'Разогрейте духовку до 170ºC. Выложите 2 противня пергаментной бумагой для выпечки.\r\nВзбивайте масло с сахаром в большой чашке, пока масло не станет очень светлым. Добавьте яйцо, ванильный сахар и хорошо перемешайте. Просейте и добавьте муку, разрыхлитель и соль. Перемешайте. Поломайте шоколад и добавьте в тесто.\r\nСкатайте столовые ложки теста в шарики и поместите на противни. Накройте пленкой и охлаждайте в холодильнике в течение 15 минут.\r\nСлегка сдавите шарики пальцами, затем поместите их в горячую духовку на 10-12 минут или до слегка золотистой поверхности. Оставьте остывать, затем подавайте.', '20 минут', 20, 'Низкая', '/images/1469_2_1435330498.jpg'),
(8, 'Шоколадные лавовые чашки', 'Разогрейте духовку до 160ºC.\r\nРазломайте шоколад в жаростойкую чашку, добавьте масло и щепотку соли и поместите чашку поверх кастрюли с кипящей водой, помешивайте до тех пор, пока шоколад полностью не растает и смесь не станет однородной. Снимите с плиты и оставьте на 15 минут.\r\nВ отдельной миске взбейте сахар и яйца, пока они не станут густыми и \"пушистыми\". Не переставая перемешивать, влейте шоколадную смесь в яйца.\r\nРазделите между 12 небольшими жаропрочными чашками или формочками, затем поместите их в большой, глубокий поддон. Поместите его в духовку, затем аккуратно налейте кипящей воды в поддон до уровня половины высоты чашки.\r\nВыпекайте в течение 25 минут, затем осторожно выньте чашки из поддона и оставьте их остывать.\r\nМежду тем, сделайте сироп, выжмите сок мандаринов через сито в маленькую кастрюлю.\r\nДобавьте сахар и доведите до кипения, затем уменьшите огонь до слабого кипения и варите в течение 15 минут или до тех пор, пока сироп не начнет загустевать.\r\nСнимите с огня и оставьте для охлаждения до комнатной температуры. Для максимального удовольствия наслаждайтесь шоколадными чашками при комнатной температуре - если они горячие, они будут слишком жидкими, а если убрать их в холодильник, они станут слишком твердыми. Подавать с мандариновым сиропом.', '1 час 10 минут', 12, 'Средняя', '/images/51137621.jpg'),
(9, 'Шоколадный торт без муки', 'Разогрейте духовку до 160ºC. Смажьте 20-сантиметровую круглую форму для торта небольшим количеством масла и выложите пергаментной бумагой.\r\nПоместите среднюю жаростойкую чашку поверх кастрюли с кипящей водой на среднем огне. Разломайте шоколад, нарежьте небольшими кусочками и добавьте масло, затем дайте им расплавиться, периодически помешивая, пока смесь не станет гладкой и глянцевой.\r\nОсторожно снимите чашку с огня, добавьте кофе и отставьте, чтобы дать смеси остыть.\r\nРазделите яичные желтки и белки между двумя большими чашами. Взбивайте яичные белки в течение 1-2 минут или пока не образуются мягкие пики.\r\nДобавьте сахар в желтки и взбивайте в течение 7 минут или пока они не станут очень светлыми. Просейте и добавьте какао-порошок и щепотку соли, осторожно перемешивая.\r\nДобавьте шоколадную смесь, затем, осторожно перемешивая, добавьте яичные белки.\r\nВылейте тесто в подготовленную форму и поместите в горячую духовку на 1 час или до тех пор, пока зубочистка, воткнутая в середину торта, не выйдет чистой.\r\nДать торту полностью остыть, затем подавать с посыпанным сверху какао-порошком и свежими ягодами.', '1 час 10 минут', 10, 'Средняя', '/images/1574_2_1437662214.jpg'),
(10, 'Замороженный баноффи чизкейк', 'Смажьте основание круглой формы для торта диаметром 20 см маслом и выложите пергаментной бумагой, затем также протрите маслом бумагу сверху. Растопите 50 г шоколада в термостойкой чашке над кастрюлей с кипящей водой. Разломайте печенье в кухонный комбайн или блендер и измельчите вместе с 2 столовыми ложками подсолнечного (или оливкового) масла. Вылейте к печенью расплавленный шоколад, затем снова перемешайте. Выложите данную смесь на дно формы слоем толщиной 1 см.\r\nОчистите бананы, разломайте и положите в кухонный комбайн или блендер, добавьте сливочный сыр и карамель, хорошо измельчите до однородной и гладкой консистенции, затем вылейте на основу чизкейка. Поставьте чизкейк замораживаться в течение ночи или до тех пор, пока он не понадобится, достав его из холодильника за 2 часа перед подачей.\r\nОслабьте края формы ножом, и достаньте чизкейк из формы. Натрите оставшийся шоколад поверх чизкейка и подавайте.', '18 минут', 10, 'Средняя', '/images/55846367.jpg'),
(11, 'Шоколадное печенье с мягким шоколадным центром', 'Смажьте большой противень для выпечки маслом. Взбейте масло и сахар вместе, пока масло не станет очень светлым. Добавьте яичные желтки, муку, разрыхлитель и какао-порошок, хорошо перемешайте, чтобы сделать тесто. Выложите тесто на поверхность и месите, а затем поместите его в холодильник на некоторое время. Разогрейте духовку до 190ºC.\r\nНа слегка посыпанной мукой поверхности раскатайте примерно одну треть теста, затем вырежьте около 30 кругов с маленьким диаметром (вы можете сделать меньше, если хотите больше печенья). Разложите их на противне и поместите по дольке шоколада посредине каждого из них - убедитесь, что вы использовали весь шоколад, сколько бы вы кругов ни делали. Затем раскатайте оставшуюся часть теста. Вырежьте такое же количество кругов с большим диаметром и положите их поверх маленьких кругов с шоколадом, осторожно нажимая, чтобы склеить края и сохранить шоколад внутри между кругами.\r\nВыпекайте в духовке в течение 10 минут.', '30 минут', 30, 'Низкая', '/images/133_1_1441120256.jpg'),
(12, 'Ванильные кексы', 'Разогрейте духовку до 170ºC.\r\nРазложите бумажные формы для кексов в форму для кексов с 12 отверстиями.\r\nВ кухонном комбайне или вручную взбейте 225 г масла и сахар до легкой и \"пушистой\" консистенции.\r\nОдин за другим, добавьте яйца, убедившись, что вы хорошо взбили каждое из них, прежде чем добавить следующее.\r\nДобавьте ванильный сахар и перемешайте.\r\nПросейте и добавьте муку и разрыхлитель, затем аккуратно перемешайте вручную.\r\nИспользуя две чайные ложки, разделите смесь равномерно между бумажными формами.\r\nВыпекайте в течение 15 минут или до тех пор, пока кексы не станут золотистыми или пока вставляемая зубочистка не выйдет чистой.\r\nДостаньте форму из духовки и оставьте кексы полностью остыть.\r\nЧтобы сделать крем, взбивайте масло в течение нескольких минут, пока оно не станет очень светлым.\r\nПостепенно просеивайте и добавляйте сахарную пудру к маслу, перемешивая, до получения однородной массы, при необходимости добавьте пару столовых ложек молока.\r\nЗатем, либо положите крем в кондитерский мешок и с помощью него нанесите крем на кексы, либо просто распределите крем по кексам с помощью лопатки или ложки.', '30 минут', 24, 'Средняя', '/images/3NPHekN0aOjBaKLtSy36D6.jpg'),
(13, 'Бисквит королевы Виктории', 'Разогрейте духовку до 180ºC. Смажьте маслом и выложите пергаментной бумагой основы двух круглых 20-сантиметровых форм для торта.\r\nПорежьте сливочное масло кубиками и взбейте вместе с сахаром в большой чашке до светлой и \"пушистой\" консистенции. Добавьте 1 чайную ложку ванильного сахара.\r\nВзбейте яйца, затем постепенно вмешивайте их в сливочное масло с сахаром. Просейте и добавьте муку, разрыхлитель и ¼ чайной ложки соли. Аккуратно перемешивайте до тех пор, пока всё хорошо не смешается (не переусердствуйте).\r\nДобавьте молока, затем равномерно разделите тесто между 2-мя формами.\r\nВыпекайте бисквиты в духовке в течение 22-25 минут или до тех пор, пока поверхность не станет золотистой. Чтобы проверить, вставьте зубочистку в середину пирога; он готов, когда зубочистка выходит чистой. Оставьте бисквиты, чтобы те полностью охладились.\r\nПосле полного охлаждения, вылейте сливки в большую чашку, добавьте оставшийся ванильный сахар и взбивайте до тех пор, пока не получаться мягкие пики.\r\nПросейте и добавьте сахарную пудру и аккуратно перемешайте. Поместите один из бисквитов на выбранную вами тарелку или подставку для торта и нанесите ванильный крем, держась подальше от краев, иначе он позже польется.\r\nОтрежьте хвостики у клубники и нарежьте её ломтиками, а затем разложите поверх крема. Сверху положите второй бисквит.При желании посыпьте торт сверху сахарной пудрой и украсьте дополнительно клубникой.', '50 минут', 14, 'Средняя', '/images/6enK0UcnKWp8Zx3cZ_Pa_P.jpg'),
(14, 'Джемовый торт', 'Разогрейте духовку до 180ºC. Смажьте сливочным маслом основание и боковые части формы для торта диаметром 23 см.\r\nТонко нарежьте 2 апельсина. Посыпьте основание формы 40 г сахара, затем разложите ломтики апельсина слегка перекрывая ими друг друга.\r\nВзбейте масло и сахар до тех пор, пока масло не станет светлым и \"пушистым\", затем добавьте и взбейте 3 столовых ложки джема, а затем добавьте яйца. Перемешайте.\r\nДобавьте и аккуратно перемешайте муку, разрыхлитель, измельченные орехи и щепотку соли. Мелко натрите цедру оставшихся апельсинов и выжмете весь их сок и добавьте к тесту.\r\nОсторожно вылейте его в форму. Поместите форму в духовку и выпекайте в течение приблизительно 50 минут, или до тех пор, пока поверхность не станет золотистой.\r\nВыньте торт из духовки и подождите несколько минут. Очень осторожно, пока он еще немного теплый, выньте торт из формы на сервировочную тарелку.\r\nСделайте несколько отверстий в торте с помощью зубочистки. Сделайте глазурь, нагрев оставшуюся часть джема в кастрюле с небольшим количеством воды. Полейте глазурью торт.\r\nПодавайте теплым или комнатной температуры с йогуртом, кремом или мороженым.', '1 час 10 минут', 10, 'Средняя', '/images/9wDQe_gOqdtBdtgxzkZkhp.jpg'),
(15, 'Кофейно-ореховый торт', 'Разогрейте духовку до 180ºC. Смажьте и выложите пергаментной бумагой основы 2 круглых форм для торта диаметром 20 см.\r\nВ кухонном комбайне или блендере измельчите треть орехов в порошок. Нарежьте 175 г масла кубиками, затем взбейте в чашке с сахаром до легкой и \"пушистой\" консистенции. Постепенно добавляйте яйца, затем добавьте измельченные орехи и перемешайте.\r\nДобавьте и аккуратно перемешайте муку, разрыхлитель и щепотку соли пока все хорошо не перемешается.\r\nПорубите остальную часть орехов и добавьте к тесту вместе с 50 мл холодного кофе.\r\nРавномерно разделите смесь между формами и запекайте в духовке в течение 20-25 минут или до слегка золотистого цвета или пока зубочистка, воткнутая в центр торта, не выйдет чистой.\r\nДайте тортам полностью охладиться.\r\nДля начинки, нарежьте кубиками оставшееся масло и положите в чашку. Просейте и добавьте сахарную пудру, взбейте до \"пушистой\" консистенции, затем влейте 40 мл кофе.\r\nДля глазури просейте сахарную пудру в чашку и добавьте оставшиеся 20 мл кофе, чтобы сделать густую гладкую глазурь.\r\nПоместите один из тортов на тарелку или доску и распределите кофейную начинку поверх. Накройте  сверху вторым тортом и полейте глазурью.\r\nУкрасьте торт оставшимися цельными орехами.', '45 минут', 12, 'Средняя', '/images/5XKwffPHaG9AmrM6YyGhvx.jpg'),
(16, 'Банановый хлеб', 'Разогрейте духовку до 180ºC.\r\nСмажьте основу и боковые стенки 1-литровой хлебной формы маслом.\r\nПосыпьте слегка боковые стенки мукой, затем стряхните лишнее.\r\nОчистите и положите бананы в чашку.\r\nИспользуя вилку, разотрите бананы до гладкой и однородной массы. Добавьте сок двух яблок и перемешайте.\r\nВ отдельной чашке растопите масло.\r\nДобавьте к нему яйца по одному, взбивая каждое в чашке перед добавлением следующего.\r\nДобавьте муку, разрыхлитель, мед и банановую смесь, стараясь не перемешивать слишком сильно.\r\nКрупно порубите орехи на разделочной доске и добавьте к тесту.\r\nВылейте тесто в форму, затем выпекайте в горячей духовке около 40 минут или до золотистого цвета.\r\nДайте хлебу полностью охладиться.\r\nЗатем переместите на тарелку, нарежьте ломтиками и подавайте.', '1 час 15 минут', 12, 'Средняя', '/images/1103_6_1421684817.jpg'),
(17, 'Шоколадно-черничные маффины', 'Разогрейте духовку до 180ºC. Разложите бумажные формы для кексов в форму для кексов с 12 отверстиями.\r\nРастопите масло в небольшой кастрюле на среднем огне, затем оставьте слегка остыть. Между тем, просейте муку в чашку, затем добавьте измельченные орехи и сахар. Добавьте растопленное масло и ванильный сахар, а затем перемешайте.\r\nВ другой чашке отделите яичные белки от желтков (приберегите желтки на другой день). Взбивайте белки в течение 1-2 минут или пока они не начнут пениться. Затем, используя металлическую ложку, медленно вмешайте яичные белки в тесто - попытайтесь сохранить белки как можно более легкими и воздушными. Поломайте и добавьте молочный шоколад вместе с половиной черники в тесто, затем слегка перемешайте.\r\nРазделите смесь между бумажными формами, затем посыпьте оставшуюся чернику сверху. Поместите на среднюю полку горячей духовки на 15-20 минут, или пока кексы не станут золотистыми. Оставьте кексы охладиться, затем подавайте.', '40 минут', 12, 'Низкая', '/images/1110_1_1439300233.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `amount` float DEFAULT NULL,
  `measurement` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`id`, `recipe_id`, `ingredient_id`, `amount`, `measurement`) VALUES
(1, 1, 9, 300, 'г'),
(2, 1, 12, 300, 'г'),
(3, 1, 16, 300, 'г'),
(4, 1, 27, 4, 'шт.'),
(5, 1, 7, 3, 'шт.'),
(6, 1, 1, 2, 'шт.'),
(7, 1, 15, 2, 'ч.л.'),
(8, 1, 17, 100, 'г'),
(16, 2, 20, 125, 'г'),
(17, 2, 16, 100, 'г'),
(18, 2, 27, 1, 'шт.'),
(19, 2, 12, 200, 'г'),
(20, 2, 7, 2, 'шт.'),
(21, 2, 15, 0.25, 'ч.л.'),
(22, 2, 22, 0.5, 'ч.л.'),
(23, 3, 26, 100, 'г'),
(24, 3, 12, 200, 'г'),
(25, 3, 15, 0.5, 'ч.л.'),
(26, 3, 20, 100, 'г'),
(27, 3, 16, 100, 'г'),
(28, 3, 27, 1, 'шт.'),
(29, 4, 16, 600, 'г'),
(30, 4, 19, 250, 'мл'),
(31, 4, 20, 50, 'г'),
(32, 4, 22, NULL, ''),
(33, 5, 12, 150, 'г'),
(34, 5, 4, 40, 'г'),
(35, 5, 17, 25, 'г'),
(36, 5, 20, 165, 'г'),
(37, 5, 27, 1, 'шт.'),
(38, 5, 16, 500, 'г'),
(39, 5, 10, 60, 'мл'),
(40, 5, 19, 300, 'мл'),
(41, 5, 13, 50, 'г'),
(42, 6, 20, 240, 'г'),
(43, 6, 25, 250, 'г'),
(44, 6, 16, 285, 'г'),
(45, 6, 27, 4, 'шт.'),
(46, 6, 12, 150, 'г'),
(47, 6, 3, 1, 'ч.л.'),
(48, 6, 19, 40, 'мл'),
(49, 6, 10, 40, 'мл'),
(50, 6, 22, NULL, ''),
(51, 7, 20, 100, 'г'),
(52, 7, 16, 125, 'г'),
(53, 7, 27, 1, 'шт.'),
(54, 7, 3, 1, 'ч.л.'),
(55, 7, 12, 200, 'г'),
(56, 7, 15, 0.5, 'ч.л.'),
(57, 7, 22, NULL, ''),
(58, 7, 24, 50, 'г'),
(59, 7, 25, 50, 'г'),
(60, 8, 25, 300, 'г'),
(61, 8, 20, 200, 'г'),
(62, 8, 16, 320, 'г'),
(63, 8, 27, 5, 'шт.'),
(64, 8, 8, 8, 'шт.'),
(65, 9, 20, 200, 'г'),
(66, 9, 25, 200, 'г'),
(67, 9, 6, 1, 'ст.л.'),
(68, 9, 27, 6, 'шт.'),
(69, 9, 16, 250, 'г'),
(70, 9, 4, 70, 'г'),
(71, 10, 25, 150, 'г'),
(72, 10, 14, 300, 'г'),
(73, 10, 2, 8, 'шт.'),
(74, 10, 21, 500, 'г'),
(75, 10, 5, 225, 'г'),
(76, 11, 20, 140, 'г'),
(77, 11, 16, 140, 'г'),
(78, 11, 27, 2, 'шт.'),
(79, 11, 12, 255, 'г'),
(80, 11, 15, 0.5, 'ч.л.'),
(81, 11, 4, 30, 'г'),
(82, 11, 24, 200, 'г'),
(83, 12, 20, 475, 'г'),
(84, 12, 16, 225, 'г'),
(85, 12, 27, 4, 'шт.'),
(86, 12, 3, 2, 'ч.л.'),
(87, 12, 12, 225, 'г'),
(88, 12, 15, 1, 'ч.л.'),
(89, 12, 17, 400, 'г'),
(90, 12, 11, 2, 'ст.л.'),
(91, 13, 20, 225, 'г'),
(92, 13, 16, 225, 'г'),
(93, 13, 3, 3, 'ч.л.'),
(94, 13, 27, 4, 'шт.'),
(95, 13, 12, 225, 'г'),
(96, 13, 15, 1, 'ч.л.'),
(97, 13, 11, 2, 'ст.л.'),
(98, 13, 19, 200, 'мл'),
(99, 13, 17, 1.5, 'ст.л.'),
(100, 13, 28, 250, 'г'),
(101, 14, 20, 200, 'г'),
(102, 14, 1, 4, 'шт.'),
(103, 14, 16, 240, 'г'),
(104, 14, 29, 6, 'ст.л.'),
(105, 14, 27, 4, 'шт.'),
(106, 14, 12, 200, 'г'),
(107, 14, 15, 0.5, 'ч.л.'),
(108, 14, 13, 50, 'г'),
(109, 15, 20, 240, 'г'),
(110, 15, 13, 75, 'г'),
(111, 15, 16, 175, 'г'),
(112, 15, 27, 3, 'шт.'),
(113, 15, 12, 150, 'г'),
(114, 15, 15, 0.75, 'ч.л.'),
(115, 15, 6, 110, 'мл'),
(116, 15, 17, 225, 'г'),
(117, 16, 12, 250, 'г'),
(118, 16, 15, 0.5, 'ч.л.'),
(119, 16, 2, 3, 'шт.'),
(120, 16, 26, 2, 'шт.'),
(121, 16, 20, 125, 'г'),
(122, 16, 27, 2, 'шт.'),
(123, 16, 10, 2, 'ст.л.'),
(124, 16, 13, 50, 'г'),
(125, 17, 12, 50, 'г'),
(126, 17, 13, 175, 'г'),
(127, 17, 16, 250, 'г'),
(128, 17, 3, 1, 'ч.л.'),
(129, 17, 27, 6, 'шт.'),
(130, 17, 24, 50, 'г'),
(131, 17, 30, 200, 'г'),
(132, 17, 20, 200, 'г');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ingredient_idx` (`ingredient_id`),
  ADD KEY `fk_recipe` (`recipe_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `fk_ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
