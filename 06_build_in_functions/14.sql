SELECT peak_name,
       RIGHT(peak_name,4) as positive_right,
       RIGHT(peak_name,-4) as negative_right
FROM peaks
;