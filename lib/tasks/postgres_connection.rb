require 'pg'
conn = PG::Connection.open(:rocket_elevator_development => 'test')
res = conn.exec_params('SELECT $1 AS a, $2 AS b, $3 AS c', [1, 2, nil])