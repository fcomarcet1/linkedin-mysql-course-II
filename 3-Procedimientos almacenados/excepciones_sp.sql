/*
 * DECLARE action[CONTINUE|EXIT] HANDLER FOR condition_value statement;
 */

DELIMITER $$

CREATE PROCEDURE insert_article_tags_3(IN article_id INT, IN tag_id INT)
BEGIN
    -- declare handlers for exceptions
    DECLARE EXIT HANDLER FOR 1062
        BEGIN
            SELECT 'Duplicate keys error encountered';
        END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            SELECT 'SQLException encountered';
        END;
    DECLARE EXIT HANDLER FOR SQLSTATE '23000'
        BEGIN
            SELECT 'SQLSTATE 23000';
        END;

    DECLARE table_not_found CONDITION for 1051;
    DECLARE EXIT HANDLER FOR  table_not_found
        BEGIN
            SELECT 'Please create table article_tags first';
        END;
    SELECT * FROM article_tags;

    -- insert a new record into article_tags
    INSERT INTO article_tags(article_id,tag_id)
    VALUES(article_id,tag_id);

    -- return tag count for the article
    SELECT COUNT(*) FROM article_tags;

END $$;
DELIMITER ;

