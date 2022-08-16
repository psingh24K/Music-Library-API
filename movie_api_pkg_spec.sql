CREATE OR REPLACE PACKAGE mm_movie_api IS
    TYPE mm_movie_tapi_rec IS RECORD (
        movie_cat_id mm_movie.movie_cat_id%TYPE,
        movie_qty mm_movie.movie_qty%TYPE,
        movie_id mm_movie.movie_id%TYPE,
        movie_value mm_movie.movie_value%TYPE,
        movie_title mm_movie.movie_title%TYPE
    );
    TYPE mm_movie_tapi_tab IS
        TABLE OF mm_movie_tapi_rec;

-- Movie Table Procedure Specs
-- INSERT / CREATE
    PROCEDURE create_movie (
        p_movie_cat_id   IN  mm_movie.movie_cat_id%TYPE,
        p_movie_qty      IN  mm_movie.movie_qty%TYPE DEFAULT NULL,
        p_movie_id       IN  mm_movie.movie_id%TYPE,
        p_movie_value    IN  mm_movie.movie_value%TYPE DEFAULT NULL,
        p_movie_title    IN  mm_movie.movie_title%TYPE DEFAULT NULL
    );
    
-- UPDATE
    PROCEDURE update_movie (
        p_movie_cat_id   IN  mm_movie.movie_cat_id%TYPE,
        p_movie_qty      IN  mm_movie.movie_qty%TYPE DEFAULT NULL,
        p_movie_id       IN  mm_movie.movie_id%TYPE,
        p_movie_value    IN  mm_movie.movie_value%TYPE DEFAULT NULL,
        p_movie_title    IN  mm_movie.movie_title%TYPE DEFAULT NULL
    );
-- DELETE
    PROCEDURE delete_movie (
        p_movie_id   IN  mm_movie.movie_id%TYPE
    );

-- End Movie Table Procedures

-- Addtional Tables Should be listed below
END mm_movie_api; -- End Movie API
/
