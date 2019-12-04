SELECT * FROM Rating WHERE Bar=(SELECT Name FROM Bar WHERE City='Tallahassee, FL') AND Rate > 3;
