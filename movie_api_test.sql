-- View the Queries in the Script Output
SET ECHO ON
/

-- Begin Movie Procedure Tests
-- CREATE
BEGIN
  mm_movie_pkg.insert_movie(1, 4, 25, 8, 'Captain Marvel');
END;
/

-- OR EXECUTE insert_movie(1, 5, 14, 7, 'Black Panther');
-- Verify that the Movie has been added
SELECT *
FROM mm_movie
WHERE mm_movie.movie_id = 25;
/

-- READ
DECLARE
  lv_movie_id mm_movie.movie_id%TYPE := 5;
  rec_movie mm_movie%ROWTYPE;
BEGIN
    get_movie(lv_movie_id, rec_movie);
    DBMS_OUTPUT.PUT_LINE('ID: ' || rec_movie.movie_id ||  ' Movie: ' || rec_movie.movie_title);
END;
/

-- UPDATE
BEGIN
mm_movie_api.update_movie(1, 4, 25, 8, 'Captain Toad');
END;
/

-- Verify that the movie has been updated
SELECT *
FROM mm_movie
WHERE mm_movie.movie_id = 25;
/

-- DELETE
EXEC mm_movie_api.delete_movie(25);
/

-- Verify that the movie has been deleted
SELECT *
FROM mm_movie
WHERE mm_movie.movie_id = 25;
/