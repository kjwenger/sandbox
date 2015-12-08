@REM call m3 -T 4 clean
@CALL m3 -T 4 install
@CALL m3 -T 4 -DskipTests=true site:site
@CALL m3 -T 4 -DskipTests=true site:site -rf :sandbox.jersey.webapp
@CALL m3 -T 4 site:stage
