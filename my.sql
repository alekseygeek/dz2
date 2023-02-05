--  Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.

-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

-- Примечание:

-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.

-- Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql

CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  city TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (1, 'Clark', '12','Tula');
INSERT INTO EMPLOYEE VALUES (2, 'Dave', '18','Moscow');
INSERT INTO EMPLOYEE VALUES (4, 'Aba', '56','Tulsa');
INSERT INTO EMPLOYEE VALUES (5, 'Avasa', '29','Moscow');
INSERT INTO EMPLOYEE VALUES (6, 'Avdasa', '33','Baku');
INSERT INTO EMPLOYEE VALUES (7, 'Azereva', '7','Moscow');
INSERT INTO EMPLOYEE VALUES (8, 'Amreva', '78','Moscow');

-- fetch 
SELECT name FROM EMPLOYEE WHERE city = 'Moscow' AND age < 30 AND age > 17;