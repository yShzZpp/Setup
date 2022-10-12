查看g++默认的include目录
`g++ -print-prog-name=cc1plus` -v		

将.o文件 转为静态库文件
ar -srv libtest.a libtest.o

不小心删了libc.so 文件
ldconfig -l -v /usr/lib/libc-2.17.so


