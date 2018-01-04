#!/usr/bin/env /bin/exec_sql.sh

SELECT body FROM cgi.header WHERE type = "html";
SELECT body FROM cgi.header WHERE type = "blank";

SELECT html FROM cgi.hello_world WHERE id = 1;
