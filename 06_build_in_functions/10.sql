SELECT
    ltrim(peak_name,'M') AS left_trim,
    rtrim(peak_name,'m') AS right_trim
FROM peaks;