INSERT INTO genre (name)
VALUES ('Рок')

INSERT INTO genre (name)
VALUES ('Поп')

INSERT INTO genre (name)
VALUES ('Рэп')

INSERT INTO performer (name)
VALUES ('Сплин')

INSERT INTO performer (name)
VALUES ('Linkin Park')

INSERT INTO performer (name)
VALUES ('Jay-Z')

INSERT INTO performer (name)
VALUES ('Eminem')

INSERT INTO performer (name)
VALUES ('Би-2')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('1', '1')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('1', '2')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('2', '1')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('2', '3')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('3', '3')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('4', '1')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('4', '2')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('4', '3')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('5', '1')

INSERT INTO performergenres (performer_id, genre_id)
VALUES ('5', '2')

INSERT INTO album ("name", "year")
VALUES ('Феллини', '2001')

INSERT INTO album ("name", "year")
VALUES ('Collision Course', '2004')

INSERT INTO album ("name", "year")
VALUES ('Curtain Call: The Hits', '2005')

INSERT INTO album ("name", "year")
VALUES ('Вира и майна', '2020')

INSERT INTO performeralbums (performer_id, album_id)
VALUES ('1', '1')

INSERT INTO performeralbums (performer_id, album_id)
VALUES ('1', '4')

INSERT INTO performeralbums  (performer_id, album_id)
VALUES ('5', '1')

INSERT INTO performeralbums  (performer_id, album_id)
VALUES ('2', '2')

INSERT INTO performeralbums  (performer_id, album_id)
VALUES ('3', '2')

INSERT INTO performeralbums  (performer_id, album_id)
VALUES ('4', '3')

INSERT INTO performeralbums  (performer_id, album_id)
VALUES ('3', '3')

INSERT INTO track (name, duration, album_id)
VALUES ('Феллини', '277', '1')

INSERT INTO track (name, duration, album_id)
VALUES ('Izzo', '164', '2')

INSERT INTO track (name, duration, album_id)
VALUES ('Numb', '205', '2')

INSERT INTO track (name, duration, album_id)
VALUES ('Big Pimpin`', '156', '2')

INSERT INTO track (name, duration, album_id)
VALUES ('Rnegade', '337', '3')

INSERT INTO track (name, duration, album_id)
VALUES ('Just Lose It', '248', '3')

INSERT INTO track (name, duration, album_id)
VALUES ('My Name Is', '268', '3')

INSERT INTO track (name, duration, album_id)
VALUES ('Призрак', '253', '4')

INSERT INTO track (name, duration, album_id)
VALUES ('Фаза', '226', '4')

INSERT INTO collection (name, "year")
VALUES ('Сплин: Лучшее', '2005')

INSERT INTO collection (name, "year")
VALUES ('Gold', '2009')

INSERT INTO collection (name, "year")
VALUES ('Best of Eminem', '2016')

INSERT INTO collection (name, "year")
VALUES ('Избранные', '2020')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('1', '1')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('2', '2')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('3', '2')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('4', '2')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('5', '3')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('6', '3')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('1', '4')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('2', '4')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('3', '4')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('4', '4')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('5', '4')

INSERT INTO trackcollection (track_id, collection_id)
VALUES ('6', '4')




