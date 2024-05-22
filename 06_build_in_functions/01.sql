CREATE VIEW view_river_info AS
SELECT concat('The river',
              ' ',
              river_name,
              ' ',
              'flows into the',
              ' ',
              outflow,
              ' ',
              'and is',
              ' ',
              "length",
              ' ',
              'kilometers long.') as "River Information"
FROM rivers
ORDER BY river_name;
