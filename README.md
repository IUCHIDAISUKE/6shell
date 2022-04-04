# Minishell

As beautiful as a shell.

## contents

- [Minishell](#minishell)
  - [contents](#contents)
  - [Execution environment](#execution-environment)
  - [Material](#material)

## Execution environment
<!-- 
```shell
Mac OS :Big Sur
$clang -v
Apple clang version 12.0.0 (clang-1200.0.32.28)
Target: x86_64-apple-darwin20.2.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

$zsh --version
zsh --version
zsh 5.8 (x86_64-apple-darwin20.0)

$bash --version
bash --version
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin20)
Copyright (C) 2007 Free Software Foundation, Inc.
```

Implementation environment was adapted to bash. -->

## Material

1. Linux man

     - [Linux man pages](https://linux.die.net/man/)  
     - [UNIX/Linuxの部屋](http://x68000.q-e-d.net/~68user/unix/)

2. shell overview

     - [Tutorial - Write a Shell in C](https://brennan.io/2015/01/16/write-a-shell-in-c/)  
     - [C言語の学習にちょうど良いものを見つけた(Tutorial - Write a Shell in C)](https://diary.shuichi.tech/entry/2017/03/31/225633)  
     - [第3章 The Bourne-Again Shell](http://m-takagi.github.io/aosa-ja/aosa.pdf)  
     - [Shell Command Language](https://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html)  
     - [20. Completion System](http://zsh.sourceforge.net/Doc/Release/Completion-System.html)  
     - [Writing Your Own Shell](https://www.cs.purdue.edu/homes/grr/SystemsProgrammingBook/Book/Chapter5-WritingYourOwnShell.pdf)  
     - [EnthusiastiCon - Stefanie Schirmer “OMG building a shell in 10 minutes”](https://www.youtube.com/watch?v=k6TTj4C0LF0)  
     - [Writing Your Own Shell](https://web2.clarkson.edu/class/cs444/labs/lab01/Writing_Your_Own_Shell.html)  
     - [入門シェル実装](https://www.slideshare.net/yusukesangenya/ss-135407412)  
     - [Introduction to Linux Shell and Shell Scripting](https://www.geeksforgeeks.org/introduction-linux-shell-shell-scripting/)  
     - [原理原則で理解するbashの仕組み](https://qiita.com/tajima_taso/items/149ca77a2401bf9bf026)

3. lexer and parser

    - [プログラミング言語 8 字句解析器 (lexer) と構文解析器 (parser)](https://www.eidos.ic.i.u-tokyo.ac.jp/~tau/lecture/programming_languages/gen/slides/pdf/09-lexer-parser.pdf)  
    - [第2章 字句解析](https://docs.oracle.com/cd/E19620-01/805-5827/lex-6/index.html)  
    - [yaccプログラムの書き方](http://www.momo.cs.okayama-u.ac.jp/~sasakura/jikken/2017/yacc-lex/yacc.pdf)  
    - [yacc入門](https://www.tokumaru.org/yacc/)  
    - [プログラミング言語II S5](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2009/PL2/no5.pdf)  
    - [プログラミング言語II S6](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2009/PL2/no6.pdf)  
    - [コンパイラの作成 S1](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2005/ip2/ulisonly/no1.pdf)  
    - [コンパイラの作成 S2](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2005/ip2/ulisonly/no2.pdf)  
    - [コンパイラの作成 S3](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2005/ip2/ulisonly/no3.pdf)  
    - [コンパイラの作成 S4](http://slis.tsukuba.ac.jp/~nakai.hisashi.gt/2005/ip2/ulisonly/no4.pdf)
    - [Create a programming language [part 2] - The Lexer](https://www.youtube.com/watch?v=Tfhm0yQ9P8Q&t)

4. BNF
    - [怖くないバッカスナウア記法(BNF)入門](https://qiita.com/h_sakurai/items/3cc328a6db8941ac6336)  

5. ls

    - [lsっぽいコマンドを作る](https://www.mm2d.net/main/prog/linux/)  

6. touch

    - [touch (open bsd)](https://man.openbsd.org/touch.1)
    - [man touch](https://linuxjm.osdn.jp/html/gnumaniak/man1/touch.1.html)  
    - [FIO06-C. Create files with appropriate access permissions](https://wiki.sei.cmu.edu/confluence/display/c/FIO06-C.+Create+files+with+appropriate+access+permissions)  
    - [fopen vs open](https://stackoverflow.com/questions/1658476/c-fopen-vs-open)  
    - [Linuxのopen(低水準入出力）の使い方やfopenとの違いをまとめていく](https://www.toumasu-program.net/entry/2019/09/17/183545)  
    - [fopen（高水準入出力）とopen（低水準入出力）の違い](https://skyjoker.hatenadiary.org/entry/20130102/1357093289)  

7. cat
    - [cat (open bsd)](https://man.openbsd.org/cat.1)  
    - [man cat](https://linuxjm.osdn.jp/html/gnumaniak/man1/cat.1.html)  

8. pipe

     - [C言語でshellの多段パイプを実装](https://www.haya-programming.com/entry/2018/11/08/185349)  
     - [linux上で動くシェルを自作しています。多段階のパイプを実装方法を教... - Yahoo!知恵袋](https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1451844474)  
     - [シェルの多段パイプを自作してみる](https://keiorogiken.wordpress.com/2017/12/15/シェルの多段パイプを自作してみる/)  

9. text editor

     - [自作エディタをつくる Advent Calendar 2016](https://qiita.com/tinyco/items/c049e42ee3f93aaedc6e)  
     - [C言語1000行以下のエディタ「Kilo」を理解する](https://news.mynavi.jp/series/kilo/)  
     - [Goで作るテキストエディタ](https://buildersbox.corp-sansan.com/entry/2020/07/29/113000)  
     - [IOCTLをつかう](http://www.mech.tohoku-gakuin.ac.jp/rde/contents/linux/drivers/ioctl.html)  
     -[エスケープシーケンス](https://www.mm2d.net/main/legacy/c/c-06.html)

10. bitwise operators
    - [Bitwise Operators in C Programming](https://www.programiz.com/c-programming/bitwise-operators)
    - [ビット演算子](https://www.javadrive.jp/cstart/ope/index6.html)  

11. process in linux
    - [Processes in Linux/Unix](https://www.geeksforgeeks.org/processes-in-linuxunix/)  