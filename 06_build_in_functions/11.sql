SELECT
    concat(mountains.mountain_range,' ',peaks.peak_name) AS mountain_information,
    length(concat(mountains.mountain_range,' ',peaks.peak_name)) AS characters_length,
    bit_length(concat(mountains.mountain_range,' ',peaks.peak_name)) as bits_of_a_tring
FROM mountains
         JOIN peaks on mountains.id = peaks.mountain_id;