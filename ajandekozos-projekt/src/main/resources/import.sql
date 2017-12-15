INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (0, 0, 'admin', '$2a$10$Vi76q6P5HRwbH.cSnP7JGO1lLW9laqNDObgKAH7sp2TIAl/MFJE7S', 'Admin', 'Admin', 'admin@gmail.com', 'ADMIN');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (1, 0, 'nagyon', 'durva', 'pistike', 'ver', 'xxxshadowninjawarriorxxx@freemail.hu', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (2, 0, 'negrut', 'gyere', 'akos', 'negrut', 'negrut@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (3, 0, 'geri', '$2a$10$eBJf5XJtPqNDrC3EwMuOp.XP1lNHcqrToDWuO6OG9xgIel3azFKzK', 'gergely', 'jakab', 'jakab@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (4, 0, 'szilagyi', 'ferenc', 'ferenc', 'szilagyi', 'szilagyi@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (5, 0, 'kosa', 'kosa', 'lajos', 'kosa', 'kosa@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (6, 0, 'javor', 'javor', 'erika', 'javor', 'javor@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (7, 0, 'nincsbaratteszt', '$2a$10$NVFPRU07/Of3xkKJyH667ePITzMs5PHS9BfYnEhzD9XT6WU9VAVTi', 'nofriends', 'nolists', 'nofriendsorlists@gmail.com', 'USER');
INSERT INTO USER (ID, VERSION, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES (8, 0, 'nincsbaratteszt2', 'nincslista2', 'nofriends2', 'nolists2', 'nofriendsorlists2@gmail.com', 'USER');

INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (1, 2);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (1, 3);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (1, 4);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (1, 5);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (1, 6);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (2, 1);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (3, 1);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (4, 1);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (5, 1);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (6, 1);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (2, 3);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (2, 4);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (2, 5);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (2, 6);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (3, 2);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (4, 2);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (5, 2);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (6, 2);

INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (3, 4);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (3, 5);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (3, 6);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (4, 3);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (5, 3);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (6, 3);

INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (4, 5);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (4, 6);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (5, 4);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (6, 4);

INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (5, 6);
INSERT INTO FRIENDS (USER_ID, FRIEND_ID) VALUES (6, 5);

INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (0, 0, 'Amit szeretnek decemberre', 0);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (1, 0, 'Amit szeretnek karacsonyra', 1);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (2, 0, 'Lopjatok nekem', 2);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (3, 0, 'Kincskereso kincskodmon', 3);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (7, 0, 'Teszt lista', 3);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (4, 0, 'Szokik a malna', 4);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (5, 0, 'Amit nem hozott el a mikulas', 5);
INSERT INTO WISHLIST (ID, VERSION, TITLE, USER_ID) VALUES (6, 0, 'Tolem loptak el ezeket', 6);

INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (13, 0, 'Liszt', 1100, 'www.google.hu', 0, 0, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (14, 0, 'Cukor', 1000, 'www.google.hu', 0, 0, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (1, 0, 'Vonatjegy', 1200, 'www.google.hu', 2, 1, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (2, 0, 'Keztorlo', 600, 'www.google.hu', null, 1, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (3, 0, 'Kenyer', 200, 'www.google.hu', null, 2, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (4, 0, 'Langszoro', 12000, 'www.google.hu', 3, 2, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (5, 0, 'Utlevel', 2400, 'www.google.hu', null, 3, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (6, 0, 'Gyogyszer', 2300, 'www.google.hu', 4, 3 ,false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (7, 0, 'Fenykepezogep', 22500, 'www.google.hu', null, 4, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (8, 0, 'Zsebkendo', 400, 'www.google.hu', 5, 4, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (9, 0, 'Kabat', 7400, 'www.google.hu', null, 5, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (10, 0, 'Konyv', 900, 'www.google.hu', 6, 5, false);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (11, 0, 'Lancfuresz', 8000, null, null, 6, true);
INSERT INTO PRESENT (ID, VERSION, NAME, PRICE, LINK, USER_ID, LIST_ID, HIDDEN) VALUES (12, 0, 'Kerekpar', 120000, null, null, 6, true);

INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (1, 0, 'Eleg tre!', '2016-11-24', 1, 3);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (2, 0, 'Micsoda?', '2015-01-10', 2, 5);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (3, 0, 'Kicsoda?', '2014-02-24', 3, 7);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (4, 0, 'Vegyel egyet', '2013-10-02', 4, 1);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (5, 0, 'KappaPride', '2017-02-14', 5, 2);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (6, 0, 'Ez lopott!', '2012-05-11', 6, 10);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (7, 0, 'Hozd vissza!', '2007-10-01', 1, 5);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (8, 0, 'Kernek szepen egyet...', '2001-10-30', 2, 12);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (9, 0, 'Egy zsak borso?', '2011-03-05', 3, 11);
INSERT INTO COMMENT (ID, VERSION, TEXT, TIMESTAMP, USER_ID, PRESENT_ID) VALUES (10, 0, 'Az meg messze van...', '2016-04-25', 4, 11);

INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (0, 0, 7, 2)
INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (1, 0, 2, 3)
INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (3, 0, 7, 4)
INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (4, 0, 7, 5)
INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (5, 0, 3, 7)
INSERT INTO FRIENDREQUEST (ID, VERSION, REQUESTEE_ID, REQUESTER_ID) VALUES (6, 0, 3, 8)