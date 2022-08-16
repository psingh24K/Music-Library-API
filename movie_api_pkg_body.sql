CREATE OR REPLACE PACKAGE BODY mm_movie_api IS

-- Movie Table Procedures
-- INSERT / CREATE
    PROCEDURE create_movie (
        p_movie_cat_id   IN  mm_movie.movie_cat_id%TYPE,
        p_movie_qty      IN  mm_movie.movie_qty%TYPE DEFAULT NULL,
        p_movie_id       IN  mm_movie.movie_id%TYPE,
        p_movie_value    IN  mm_movie.movie_value%TYPE DEFAULT NULL,
        p_movie_title    IN  mm_movie.movie_title%TYPE DEFAULT NULL
    ) IS
    BEGIN
        INSERT INTO mm_movie (
            movie_cat_id,
            movie_qty,
            movie_id,
            movie_value,
            movie_title
        ) VALUES (
            p_movie_cat_id,
            p_movie_qty,
            p_movie_id,
            p_movie_value,
            p_movie_title
        );

    END;
    
-- UPDATE
    PROCEDURE update_movie (
        p_movie_cat_id   IN  mm_movie.movie_cat_id%TYPE,
        p_movie_qty      IN  mm_movie.movie_qty%TYPE DEFAULT NULL,
        p_movie_id       IN  mm_movie.movie_id%TYPE,
        p_movie_value    IN  mm_movie.movie_value%TYPE DEFAULT NULL,
        p_movie_title    IN  mm_movie.movie_title%TYPE DEFAULT NULL
    ) IS
    BEGIN
        UPDATE mm_movie
        SET
            movie_cat_id = p_movie_cat_id,
            movie_qty = p_movie_qty,
            movie_value = p_movie_value,
            movie_title = p_movie_title
        WHERE
            movie_id = p_movie_id;

    END;
    
-- DELETE
    PROCEDURE delete_movie (
        p_movie_id   IN  mm_movie.movie_id%TYPE
    ) IS
    BEGIN
        DELETE FROM mm_movie
        WHERE
            movie_id = p_movie_id;

    END;
-- End Movie Table Procedures

-- Addtional Tables Should be listed below
END mm_movie_api; -- End Movie API

/
