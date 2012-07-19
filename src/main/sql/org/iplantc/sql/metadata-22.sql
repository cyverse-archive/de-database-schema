\set ON_ERROR_STOP ON

BEGIN;

-- Redefine the rating listing view to eliminate the cross join.
DROP VIEW rating_listing;
CREATE VIEW rating_listing AS
    SELECT row_number() OVER (ORDER BY a.hid, u.id) AS id,
           a.hid AS analysis_id,
           u.id AS user_id,
           ur.comment_id AS comment_id,
           ur.rating AS user_rating
    FROM ratings ur
    JOIN users u ON ur.user_id = u.id
    JOIN transformation_activity a ON a.hid = ur.transformation_activity_id;

COMMIT;
