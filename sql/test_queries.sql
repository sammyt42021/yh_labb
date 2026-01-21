SELECT k.klass_namn, p.fornamn, p.efternamn
FROM klass k
JOIN utbildningsledare ul ON k.utbildningsledare_id = ul.utbildningsledare_id
JOIN personuppgifter p ON ul.personuppgifter_id = p.personuppgifter_id;
