require 'pg'
conn = PG::Connection.open(:rocket_elevators_development => 'test')
res = conn.exec_params('SELECT $1 AS a, $2 AS b, $3 AS c', [1, 2, nil])
# Equivalent to:
#  res  = conn.exec('SELECT 1 AS a, 2 AS b, NULL AS c')



