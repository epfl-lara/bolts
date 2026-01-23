; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!225986 () Bool)

(assert start!225986)

(declare-fun b!2299070 () Bool)

(declare-fun b_free!69325 () Bool)

(declare-fun b_next!70029 () Bool)

(assert (=> b!2299070 (= b_free!69325 (not b_next!70029))))

(declare-fun tp!729311 () Bool)

(declare-fun b_and!183009 () Bool)

(assert (=> b!2299070 (= tp!729311 b_and!183009)))

(declare-fun b_free!69327 () Bool)

(declare-fun b_next!70031 () Bool)

(assert (=> b!2299070 (= b_free!69327 (not b_next!70031))))

(declare-fun tp!729296 () Bool)

(declare-fun b_and!183011 () Bool)

(assert (=> b!2299070 (= tp!729296 b_and!183011)))

(declare-fun b!2299068 () Bool)

(declare-fun b_free!69329 () Bool)

(declare-fun b_next!70033 () Bool)

(assert (=> b!2299068 (= b_free!69329 (not b_next!70033))))

(declare-fun tp!729308 () Bool)

(declare-fun b_and!183013 () Bool)

(assert (=> b!2299068 (= tp!729308 b_and!183013)))

(declare-fun b_free!69331 () Bool)

(declare-fun b_next!70035 () Bool)

(assert (=> b!2299068 (= b_free!69331 (not b_next!70035))))

(declare-fun tp!729299 () Bool)

(declare-fun b_and!183015 () Bool)

(assert (=> b!2299068 (= tp!729299 b_and!183015)))

(declare-fun b!2299049 () Bool)

(declare-fun b_free!69333 () Bool)

(declare-fun b_next!70037 () Bool)

(assert (=> b!2299049 (= b_free!69333 (not b_next!70037))))

(declare-fun tp!729295 () Bool)

(declare-fun b_and!183017 () Bool)

(assert (=> b!2299049 (= tp!729295 b_and!183017)))

(declare-fun b_free!69335 () Bool)

(declare-fun b_next!70039 () Bool)

(assert (=> b!2299049 (= b_free!69335 (not b_next!70039))))

(declare-fun tp!729298 () Bool)

(declare-fun b_and!183019 () Bool)

(assert (=> b!2299049 (= tp!729298 b_and!183019)))

(declare-fun b!2299045 () Bool)

(declare-fun b_free!69337 () Bool)

(declare-fun b_next!70041 () Bool)

(assert (=> b!2299045 (= b_free!69337 (not b_next!70041))))

(declare-fun tp!729307 () Bool)

(declare-fun b_and!183021 () Bool)

(assert (=> b!2299045 (= tp!729307 b_and!183021)))

(declare-fun b_free!69339 () Bool)

(declare-fun b_next!70043 () Bool)

(assert (=> b!2299045 (= b_free!69339 (not b_next!70043))))

(declare-fun tp!729300 () Bool)

(declare-fun b_and!183023 () Bool)

(assert (=> b!2299045 (= tp!729300 b_and!183023)))

(declare-fun b!2299040 () Bool)

(declare-fun e!1473297 () Bool)

(declare-fun e!1473314 () Bool)

(assert (=> b!2299040 (= e!1473297 e!1473314)))

(declare-fun res!982920 () Bool)

(assert (=> b!2299040 (=> (not res!982920) (not e!1473314))))

(declare-datatypes ((List!27465 0))(
  ( (Nil!27371) (Cons!27371 (h!32772 (_ BitVec 16)) (t!205629 List!27465)) )
))
(declare-datatypes ((TokenValue!4548 0))(
  ( (FloatLiteralValue!9096 (text!32281 List!27465)) (TokenValueExt!4547 (__x!18156 Int)) (Broken!22740 (value!138796 List!27465)) (Object!4641) (End!4548) (Def!4548) (Underscore!4548) (Match!4548) (Else!4548) (Error!4548) (Case!4548) (If!4548) (Extends!4548) (Abstract!4548) (Class!4548) (Val!4548) (DelimiterValue!9096 (del!4608 List!27465)) (KeywordValue!4554 (value!138797 List!27465)) (CommentValue!9096 (value!138798 List!27465)) (WhitespaceValue!9096 (value!138799 List!27465)) (IndentationValue!4548 (value!138800 List!27465)) (String!29845) (Int32!4548) (Broken!22741 (value!138801 List!27465)) (Boolean!4549) (Unit!40270) (OperatorValue!4551 (op!4608 List!27465)) (IdentifierValue!9096 (value!138802 List!27465)) (IdentifierValue!9097 (value!138803 List!27465)) (WhitespaceValue!9097 (value!138804 List!27465)) (True!9096) (False!9096) (Broken!22742 (value!138805 List!27465)) (Broken!22743 (value!138806 List!27465)) (True!9097) (RightBrace!4548) (RightBracket!4548) (Colon!4548) (Null!4548) (Comma!4548) (LeftBracket!4548) (False!9097) (LeftBrace!4548) (ImaginaryLiteralValue!4548 (text!32282 List!27465)) (StringLiteralValue!13644 (value!138807 List!27465)) (EOFValue!4548 (value!138808 List!27465)) (IdentValue!4548 (value!138809 List!27465)) (DelimiterValue!9097 (value!138810 List!27465)) (DedentValue!4548 (value!138811 List!27465)) (NewLineValue!4548 (value!138812 List!27465)) (IntegerValue!13644 (value!138813 (_ BitVec 32)) (text!32283 List!27465)) (IntegerValue!13645 (value!138814 Int) (text!32284 List!27465)) (Times!4548) (Or!4548) (Equal!4548) (Minus!4548) (Broken!22744 (value!138815 List!27465)) (And!4548) (Div!4548) (LessEqual!4548) (Mod!4548) (Concat!11282) (Not!4548) (Plus!4548) (SpaceValue!4548 (value!138816 List!27465)) (IntegerValue!13646 (value!138817 Int) (text!32285 List!27465)) (StringLiteralValue!13645 (text!32286 List!27465)) (FloatLiteralValue!9097 (text!32287 List!27465)) (BytesLiteralValue!4548 (value!138818 List!27465)) (CommentValue!9097 (value!138819 List!27465)) (StringLiteralValue!13646 (value!138820 List!27465)) (ErrorTokenValue!4548 (msg!4609 List!27465)) )
))
(declare-datatypes ((C!13614 0))(
  ( (C!13615 (val!7855 Int)) )
))
(declare-datatypes ((List!27466 0))(
  ( (Nil!27372) (Cons!27372 (h!32773 C!13614) (t!205630 List!27466)) )
))
(declare-datatypes ((IArray!17845 0))(
  ( (IArray!17846 (innerList!8980 List!27466)) )
))
(declare-datatypes ((Conc!8920 0))(
  ( (Node!8920 (left!20746 Conc!8920) (right!21076 Conc!8920) (csize!18070 Int) (cheight!9131 Int)) (Leaf!13099 (xs!11862 IArray!17845) (csize!18071 Int)) (Empty!8920) )
))
(declare-datatypes ((BalanceConc!17568 0))(
  ( (BalanceConc!17569 (c!364509 Conc!8920)) )
))
(declare-datatypes ((Regex!6734 0))(
  ( (ElementMatch!6734 (c!364510 C!13614)) (Concat!11283 (regOne!13980 Regex!6734) (regTwo!13980 Regex!6734)) (EmptyExpr!6734) (Star!6734 (reg!7063 Regex!6734)) (EmptyLang!6734) (Union!6734 (regOne!13981 Regex!6734) (regTwo!13981 Regex!6734)) )
))
(declare-datatypes ((String!29846 0))(
  ( (String!29847 (value!138821 String)) )
))
(declare-datatypes ((TokenValueInjection!8636 0))(
  ( (TokenValueInjection!8637 (toValue!6192 Int) (toChars!6051 Int)) )
))
(declare-datatypes ((Rule!8572 0))(
  ( (Rule!8573 (regex!4386 Regex!6734) (tag!4876 String!29846) (isSeparator!4386 Bool) (transformation!4386 TokenValueInjection!8636)) )
))
(declare-datatypes ((Token!8250 0))(
  ( (Token!8251 (value!138822 TokenValue!4548) (rule!6730 Rule!8572) (size!21577 Int) (originalCharacters!5156 List!27466)) )
))
(declare-datatypes ((List!27467 0))(
  ( (Nil!27373) (Cons!27373 (h!32774 Token!8250) (t!205631 List!27467)) )
))
(declare-fun tokens!456 () List!27467)

(declare-datatypes ((IArray!17847 0))(
  ( (IArray!17848 (innerList!8981 List!27467)) )
))
(declare-datatypes ((Conc!8921 0))(
  ( (Node!8921 (left!20747 Conc!8921) (right!21077 Conc!8921) (csize!18072 Int) (cheight!9132 Int)) (Leaf!13100 (xs!11863 IArray!17847) (csize!18073 Int)) (Empty!8921) )
))
(declare-datatypes ((BalanceConc!17570 0))(
  ( (BalanceConc!17571 (c!364511 Conc!8921)) )
))
(declare-datatypes ((tuple2!27240 0))(
  ( (tuple2!27241 (_1!16130 BalanceConc!17570) (_2!16130 BalanceConc!17568)) )
))
(declare-fun lt!852876 () tuple2!27240)

(declare-fun suffix!886 () List!27466)

(declare-datatypes ((tuple2!27242 0))(
  ( (tuple2!27243 (_1!16131 List!27467) (_2!16131 List!27466)) )
))
(declare-fun list!10762 (BalanceConc!17570) List!27467)

(declare-fun list!10763 (BalanceConc!17568) List!27466)

(assert (=> b!2299040 (= res!982920 (= (tuple2!27243 (list!10762 (_1!16130 lt!852876)) (list!10763 (_2!16130 lt!852876))) (tuple2!27243 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3983 0))(
  ( (LexerInterfaceExt!3980 (__x!18157 Int)) (Lexer!3981) )
))
(declare-fun thiss!16613 () LexerInterface!3983)

(declare-datatypes ((List!27468 0))(
  ( (Nil!27374) (Cons!27374 (h!32775 Rule!8572) (t!205632 List!27468)) )
))
(declare-fun rules!1750 () List!27468)

(declare-fun input!1722 () List!27466)

(declare-fun lex!1822 (LexerInterface!3983 List!27468 BalanceConc!17568) tuple2!27240)

(declare-fun seqFromList!3090 (List!27466) BalanceConc!17568)

(assert (=> b!2299040 (= lt!852876 (lex!1822 thiss!16613 rules!1750 (seqFromList!3090 input!1722)))))

(declare-fun b!2299041 () Bool)

(declare-fun e!1473299 () Bool)

(declare-fun e!1473315 () Bool)

(assert (=> b!2299041 (= e!1473299 e!1473315)))

(declare-fun res!982909 () Bool)

(assert (=> b!2299041 (=> res!982909 e!1473315)))

(assert (=> b!2299041 (= res!982909 (is-Nil!27373 tokens!456))))

(declare-datatypes ((Unit!40271 0))(
  ( (Unit!40272) )
))
(declare-fun lt!852868 () Unit!40271)

(declare-fun e!1473307 () Unit!40271)

(assert (=> b!2299041 (= lt!852868 e!1473307)))

(declare-fun c!364508 () Bool)

(declare-fun lt!852873 () Int)

(declare-fun lt!852875 () Int)

(assert (=> b!2299041 (= c!364508 (= lt!852873 lt!852875))))

(declare-fun b!2299042 () Bool)

(declare-fun e!1473294 () Bool)

(assert (=> b!2299042 (= e!1473314 e!1473294)))

(declare-fun res!982916 () Bool)

(assert (=> b!2299042 (=> (not res!982916) (not e!1473294))))

(declare-fun e!1473293 () Bool)

(assert (=> b!2299042 (= res!982916 e!1473293)))

(declare-fun res!982924 () Bool)

(assert (=> b!2299042 (=> res!982924 e!1473293)))

(declare-fun lt!852866 () Bool)

(assert (=> b!2299042 (= res!982924 lt!852866)))

(declare-fun isEmpty!15615 (List!27467) Bool)

(assert (=> b!2299042 (= lt!852866 (isEmpty!15615 tokens!456))))

(declare-fun b!2299043 () Bool)

(declare-fun e!1473298 () Bool)

(declare-fun r!2363 () Rule!8572)

(declare-fun matchR!2991 (Regex!6734 List!27466) Bool)

(declare-fun charsOf!2774 (Token!8250) BalanceConc!17568)

(declare-fun head!5025 (List!27467) Token!8250)

(assert (=> b!2299043 (= e!1473298 (not (matchR!2991 (regex!4386 r!2363) (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun e!1473287 () Bool)

(declare-fun b!2299044 () Bool)

(declare-fun tp!729309 () Bool)

(declare-fun e!1473308 () Bool)

(declare-fun inv!21 (TokenValue!4548) Bool)

(assert (=> b!2299044 (= e!1473287 (and (inv!21 (value!138822 (h!32774 tokens!456))) e!1473308 tp!729309))))

(declare-fun e!1473295 () Bool)

(assert (=> b!2299045 (= e!1473295 (and tp!729307 tp!729300))))

(declare-fun b!2299046 () Bool)

(declare-fun res!982921 () Bool)

(assert (=> b!2299046 (=> (not res!982921) (not e!1473297))))

(declare-fun rulesInvariant!3485 (LexerInterface!3983 List!27468) Bool)

(assert (=> b!2299046 (= res!982921 (rulesInvariant!3485 thiss!16613 rules!1750))))

(declare-fun b!2299047 () Bool)

(declare-fun e!1473300 () Bool)

(declare-fun e!1473302 () Bool)

(declare-fun tp!729294 () Bool)

(assert (=> b!2299047 (= e!1473300 (and e!1473302 tp!729294))))

(declare-fun b!2299048 () Bool)

(declare-fun e!1473305 () Bool)

(assert (=> b!2299048 (= e!1473315 e!1473305)))

(declare-fun res!982919 () Bool)

(assert (=> b!2299048 (=> res!982919 e!1473305)))

(declare-fun lt!852874 () List!27466)

(declare-fun isPrefix!2376 (List!27466 List!27466) Bool)

(assert (=> b!2299048 (= res!982919 (not (isPrefix!2376 lt!852874 input!1722)))))

(declare-fun lt!852871 () List!27466)

(declare-fun getSuffix!1155 (List!27466 List!27466) List!27466)

(assert (=> b!2299048 (= lt!852871 (getSuffix!1155 input!1722 lt!852874))))

(declare-fun lt!852870 () List!27466)

(assert (=> b!2299048 (isPrefix!2376 lt!852874 lt!852870)))

(declare-datatypes ((tuple2!27244 0))(
  ( (tuple2!27245 (_1!16132 Token!8250) (_2!16132 List!27466)) )
))
(declare-fun lt!852869 () tuple2!27244)

(declare-fun ++!6696 (List!27466 List!27466) List!27466)

(assert (=> b!2299048 (= lt!852870 (++!6696 lt!852874 (_2!16132 lt!852869)))))

(declare-fun lt!852867 () Unit!40271)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1569 (List!27466 List!27466) Unit!40271)

(assert (=> b!2299048 (= lt!852867 (lemmaConcatTwoListThenFirstIsPrefix!1569 lt!852874 (_2!16132 lt!852869)))))

(assert (=> b!2299048 (= lt!852874 (list!10763 (charsOf!2774 (h!32774 tokens!456))))))

(declare-datatypes ((Option!5380 0))(
  ( (None!5379) (Some!5379 (v!30471 tuple2!27244)) )
))
(declare-fun get!8251 (Option!5380) tuple2!27244)

(declare-fun maxPrefix!2239 (LexerInterface!3983 List!27468 List!27466) Option!5380)

(assert (=> b!2299048 (= lt!852869 (get!8251 (maxPrefix!2239 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1473301 () Bool)

(assert (=> b!2299049 (= e!1473301 (and tp!729295 tp!729298))))

(declare-fun b!2299050 () Bool)

(declare-fun Unit!40273 () Unit!40271)

(assert (=> b!2299050 (= e!1473307 Unit!40273)))

(declare-fun b!2299051 () Bool)

(declare-fun res!982923 () Bool)

(assert (=> b!2299051 (=> (not res!982923) (not e!1473297))))

(declare-fun contains!4770 (List!27468 Rule!8572) Bool)

(assert (=> b!2299051 (= res!982923 (contains!4770 rules!1750 r!2363))))

(declare-fun e!1473309 () Bool)

(declare-fun tp!729303 () Bool)

(declare-fun otherR!12 () Rule!8572)

(declare-fun b!2299052 () Bool)

(declare-fun inv!36994 (String!29846) Bool)

(declare-fun inv!36997 (TokenValueInjection!8636) Bool)

(assert (=> b!2299052 (= e!1473309 (and tp!729303 (inv!36994 (tag!4876 otherR!12)) (inv!36997 (transformation!4386 otherR!12)) e!1473301))))

(declare-fun b!2299053 () Bool)

(declare-fun e!1473313 () Bool)

(assert (=> b!2299053 (= e!1473313 (= (rule!6730 (head!5025 tokens!456)) r!2363))))

(declare-fun b!2299039 () Bool)

(declare-fun res!982911 () Bool)

(assert (=> b!2299039 (=> (not res!982911) (not e!1473297))))

(assert (=> b!2299039 (= res!982911 (contains!4770 rules!1750 otherR!12))))

(declare-fun res!982913 () Bool)

(assert (=> start!225986 (=> (not res!982913) (not e!1473297))))

(assert (=> start!225986 (= res!982913 (is-Lexer!3981 thiss!16613))))

(assert (=> start!225986 e!1473297))

(assert (=> start!225986 true))

(declare-fun e!1473303 () Bool)

(assert (=> start!225986 e!1473303))

(assert (=> start!225986 e!1473309))

(declare-fun e!1473304 () Bool)

(assert (=> start!225986 e!1473304))

(declare-fun e!1473312 () Bool)

(assert (=> start!225986 e!1473312))

(assert (=> start!225986 e!1473300))

(declare-fun e!1473291 () Bool)

(assert (=> start!225986 e!1473291))

(declare-fun e!1473310 () Bool)

(assert (=> start!225986 e!1473310))

(declare-fun b!2299054 () Bool)

(declare-fun res!982915 () Bool)

(assert (=> b!2299054 (=> (not res!982915) (not e!1473294))))

(assert (=> b!2299054 (= res!982915 (not (= r!2363 otherR!12)))))

(declare-fun b!2299055 () Bool)

(declare-fun tp_is_empty!10689 () Bool)

(declare-fun tp!729301 () Bool)

(assert (=> b!2299055 (= e!1473303 (and tp_is_empty!10689 tp!729301))))

(declare-fun tp!729310 () Bool)

(declare-fun b!2299056 () Bool)

(declare-fun e!1473296 () Bool)

(assert (=> b!2299056 (= e!1473302 (and tp!729310 (inv!36994 (tag!4876 (h!32775 rules!1750))) (inv!36997 (transformation!4386 (h!32775 rules!1750))) e!1473296))))

(declare-fun tp!729302 () Bool)

(declare-fun b!2299057 () Bool)

(declare-fun inv!36998 (Token!8250) Bool)

(assert (=> b!2299057 (= e!1473310 (and (inv!36998 (h!32774 tokens!456)) e!1473287 tp!729302))))

(declare-fun tp!729304 () Bool)

(declare-fun b!2299058 () Bool)

(assert (=> b!2299058 (= e!1473308 (and tp!729304 (inv!36994 (tag!4876 (rule!6730 (h!32774 tokens!456)))) (inv!36997 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) e!1473295))))

(declare-fun b!2299059 () Bool)

(declare-fun e!1473311 () Bool)

(assert (=> b!2299059 (= e!1473294 (not e!1473311))))

(declare-fun res!982908 () Bool)

(assert (=> b!2299059 (=> res!982908 e!1473311)))

(assert (=> b!2299059 (= res!982908 e!1473298)))

(declare-fun res!982910 () Bool)

(assert (=> b!2299059 (=> (not res!982910) (not e!1473298))))

(assert (=> b!2299059 (= res!982910 (not lt!852866))))

(declare-fun ruleValid!1476 (LexerInterface!3983 Rule!8572) Bool)

(assert (=> b!2299059 (ruleValid!1476 thiss!16613 r!2363)))

(declare-fun lt!852872 () Unit!40271)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!881 (LexerInterface!3983 Rule!8572 List!27468) Unit!40271)

(assert (=> b!2299059 (= lt!852872 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!881 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2299060 () Bool)

(assert (=> b!2299060 (= e!1473311 e!1473299)))

(declare-fun res!982918 () Bool)

(assert (=> b!2299060 (=> res!982918 e!1473299)))

(assert (=> b!2299060 (= res!982918 (> lt!852873 lt!852875))))

(declare-fun getIndex!399 (List!27468 Rule!8572) Int)

(assert (=> b!2299060 (= lt!852875 (getIndex!399 rules!1750 otherR!12))))

(assert (=> b!2299060 (= lt!852873 (getIndex!399 rules!1750 r!2363))))

(assert (=> b!2299060 (ruleValid!1476 thiss!16613 otherR!12)))

(declare-fun lt!852865 () Unit!40271)

(assert (=> b!2299060 (= lt!852865 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!881 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2299061 () Bool)

(declare-fun tp!729297 () Bool)

(assert (=> b!2299061 (= e!1473304 (and tp_is_empty!10689 tp!729297))))

(declare-fun b!2299062 () Bool)

(declare-fun otherP!12 () List!27466)

(declare-fun size!21578 (BalanceConc!17568) Int)

(declare-fun size!21579 (List!27466) Int)

(assert (=> b!2299062 (= e!1473293 (<= (size!21578 (charsOf!2774 (head!5025 tokens!456))) (size!21579 otherP!12)))))

(declare-fun b!2299063 () Bool)

(declare-fun res!982912 () Bool)

(assert (=> b!2299063 (=> (not res!982912) (not e!1473294))))

(assert (=> b!2299063 (= res!982912 e!1473313)))

(declare-fun res!982917 () Bool)

(assert (=> b!2299063 (=> res!982917 e!1473313)))

(assert (=> b!2299063 (= res!982917 lt!852866)))

(declare-fun b!2299064 () Bool)

(declare-fun tp!729306 () Bool)

(assert (=> b!2299064 (= e!1473312 (and tp_is_empty!10689 tp!729306))))

(declare-fun b!2299065 () Bool)

(declare-fun Unit!40274 () Unit!40271)

(assert (=> b!2299065 (= e!1473307 Unit!40274)))

(declare-fun lt!852877 () Unit!40271)

(declare-fun lemmaSameIndexThenSameElement!179 (List!27468 Rule!8572 Rule!8572) Unit!40271)

(assert (=> b!2299065 (= lt!852877 (lemmaSameIndexThenSameElement!179 rules!1750 r!2363 otherR!12))))

(assert (=> b!2299065 false))

(declare-fun b!2299066 () Bool)

(declare-fun res!982922 () Bool)

(assert (=> b!2299066 (=> (not res!982922) (not e!1473297))))

(declare-fun isEmpty!15616 (List!27468) Bool)

(assert (=> b!2299066 (= res!982922 (not (isEmpty!15616 rules!1750)))))

(declare-fun b!2299067 () Bool)

(declare-fun res!982914 () Bool)

(assert (=> b!2299067 (=> (not res!982914) (not e!1473294))))

(assert (=> b!2299067 (= res!982914 (isPrefix!2376 otherP!12 input!1722))))

(declare-fun e!1473289 () Bool)

(assert (=> b!2299068 (= e!1473289 (and tp!729308 tp!729299))))

(declare-fun tp!729305 () Bool)

(declare-fun b!2299069 () Bool)

(assert (=> b!2299069 (= e!1473291 (and tp!729305 (inv!36994 (tag!4876 r!2363)) (inv!36997 (transformation!4386 r!2363)) e!1473289))))

(assert (=> b!2299070 (= e!1473296 (and tp!729311 tp!729296))))

(declare-fun b!2299071 () Bool)

(assert (=> b!2299071 (= e!1473305 (= lt!852870 input!1722))))

(assert (= (and start!225986 res!982913) b!2299066))

(assert (= (and b!2299066 res!982922) b!2299046))

(assert (= (and b!2299046 res!982921) b!2299051))

(assert (= (and b!2299051 res!982923) b!2299039))

(assert (= (and b!2299039 res!982911) b!2299040))

(assert (= (and b!2299040 res!982920) b!2299042))

(assert (= (and b!2299042 (not res!982924)) b!2299062))

(assert (= (and b!2299042 res!982916) b!2299063))

(assert (= (and b!2299063 (not res!982917)) b!2299053))

(assert (= (and b!2299063 res!982912) b!2299067))

(assert (= (and b!2299067 res!982914) b!2299054))

(assert (= (and b!2299054 res!982915) b!2299059))

(assert (= (and b!2299059 res!982910) b!2299043))

(assert (= (and b!2299059 (not res!982908)) b!2299060))

(assert (= (and b!2299060 (not res!982918)) b!2299041))

(assert (= (and b!2299041 c!364508) b!2299065))

(assert (= (and b!2299041 (not c!364508)) b!2299050))

(assert (= (and b!2299041 (not res!982909)) b!2299048))

(assert (= (and b!2299048 (not res!982919)) b!2299071))

(assert (= (and start!225986 (is-Cons!27372 input!1722)) b!2299055))

(assert (= b!2299052 b!2299049))

(assert (= start!225986 b!2299052))

(assert (= (and start!225986 (is-Cons!27372 suffix!886)) b!2299061))

(assert (= (and start!225986 (is-Cons!27372 otherP!12)) b!2299064))

(assert (= b!2299056 b!2299070))

(assert (= b!2299047 b!2299056))

(assert (= (and start!225986 (is-Cons!27374 rules!1750)) b!2299047))

(assert (= b!2299069 b!2299068))

(assert (= start!225986 b!2299069))

(assert (= b!2299058 b!2299045))

(assert (= b!2299044 b!2299058))

(assert (= b!2299057 b!2299044))

(assert (= (and start!225986 (is-Cons!27373 tokens!456)) b!2299057))

(declare-fun m!2726375 () Bool)

(assert (=> b!2299059 m!2726375))

(declare-fun m!2726377 () Bool)

(assert (=> b!2299059 m!2726377))

(declare-fun m!2726379 () Bool)

(assert (=> b!2299042 m!2726379))

(declare-fun m!2726381 () Bool)

(assert (=> b!2299053 m!2726381))

(declare-fun m!2726383 () Bool)

(assert (=> b!2299056 m!2726383))

(declare-fun m!2726385 () Bool)

(assert (=> b!2299056 m!2726385))

(declare-fun m!2726387 () Bool)

(assert (=> b!2299040 m!2726387))

(declare-fun m!2726389 () Bool)

(assert (=> b!2299040 m!2726389))

(declare-fun m!2726391 () Bool)

(assert (=> b!2299040 m!2726391))

(assert (=> b!2299040 m!2726391))

(declare-fun m!2726393 () Bool)

(assert (=> b!2299040 m!2726393))

(declare-fun m!2726395 () Bool)

(assert (=> b!2299066 m!2726395))

(declare-fun m!2726397 () Bool)

(assert (=> b!2299046 m!2726397))

(declare-fun m!2726399 () Bool)

(assert (=> b!2299065 m!2726399))

(assert (=> b!2299062 m!2726381))

(assert (=> b!2299062 m!2726381))

(declare-fun m!2726401 () Bool)

(assert (=> b!2299062 m!2726401))

(assert (=> b!2299062 m!2726401))

(declare-fun m!2726403 () Bool)

(assert (=> b!2299062 m!2726403))

(declare-fun m!2726405 () Bool)

(assert (=> b!2299062 m!2726405))

(declare-fun m!2726407 () Bool)

(assert (=> b!2299057 m!2726407))

(declare-fun m!2726409 () Bool)

(assert (=> b!2299044 m!2726409))

(assert (=> b!2299043 m!2726381))

(assert (=> b!2299043 m!2726381))

(assert (=> b!2299043 m!2726401))

(assert (=> b!2299043 m!2726401))

(declare-fun m!2726411 () Bool)

(assert (=> b!2299043 m!2726411))

(assert (=> b!2299043 m!2726411))

(declare-fun m!2726413 () Bool)

(assert (=> b!2299043 m!2726413))

(declare-fun m!2726415 () Bool)

(assert (=> b!2299058 m!2726415))

(declare-fun m!2726417 () Bool)

(assert (=> b!2299058 m!2726417))

(declare-fun m!2726419 () Bool)

(assert (=> b!2299039 m!2726419))

(declare-fun m!2726421 () Bool)

(assert (=> b!2299069 m!2726421))

(declare-fun m!2726423 () Bool)

(assert (=> b!2299069 m!2726423))

(declare-fun m!2726425 () Bool)

(assert (=> b!2299067 m!2726425))

(declare-fun m!2726427 () Bool)

(assert (=> b!2299052 m!2726427))

(declare-fun m!2726429 () Bool)

(assert (=> b!2299052 m!2726429))

(declare-fun m!2726431 () Bool)

(assert (=> b!2299048 m!2726431))

(declare-fun m!2726433 () Bool)

(assert (=> b!2299048 m!2726433))

(declare-fun m!2726435 () Bool)

(assert (=> b!2299048 m!2726435))

(assert (=> b!2299048 m!2726433))

(declare-fun m!2726437 () Bool)

(assert (=> b!2299048 m!2726437))

(declare-fun m!2726439 () Bool)

(assert (=> b!2299048 m!2726439))

(declare-fun m!2726441 () Bool)

(assert (=> b!2299048 m!2726441))

(declare-fun m!2726443 () Bool)

(assert (=> b!2299048 m!2726443))

(declare-fun m!2726445 () Bool)

(assert (=> b!2299048 m!2726445))

(assert (=> b!2299048 m!2726439))

(declare-fun m!2726447 () Bool)

(assert (=> b!2299048 m!2726447))

(declare-fun m!2726449 () Bool)

(assert (=> b!2299051 m!2726449))

(declare-fun m!2726451 () Bool)

(assert (=> b!2299060 m!2726451))

(declare-fun m!2726453 () Bool)

(assert (=> b!2299060 m!2726453))

(declare-fun m!2726455 () Bool)

(assert (=> b!2299060 m!2726455))

(declare-fun m!2726457 () Bool)

(assert (=> b!2299060 m!2726457))

(push 1)

(assert (not b!2299046))

(assert (not b!2299039))

(assert (not b!2299059))

(assert (not b!2299062))

(assert b_and!183015)

(assert (not b_next!70031))

(assert b_and!183011)

(assert (not b_next!70029))

(assert (not b!2299061))

(assert (not b!2299053))

(assert (not b!2299043))

(assert (not b_next!70035))

(assert b_and!183009)

(assert tp_is_empty!10689)

(assert (not b!2299069))

(assert b_and!183017)

(assert (not b!2299066))

(assert b_and!183013)

(assert (not b!2299065))

(assert b_and!183019)

(assert (not b_next!70037))

(assert (not b_next!70041))

(assert (not b!2299067))

(assert (not b_next!70043))

(assert (not b!2299044))

(assert (not b_next!70033))

(assert (not b!2299058))

(assert (not b!2299052))

(assert b_and!183023)

(assert (not b!2299057))

(assert (not b!2299042))

(assert b_and!183021)

(assert (not b!2299047))

(assert (not b!2299060))

(assert (not b!2299055))

(assert (not b!2299064))

(assert (not b!2299056))

(assert (not b!2299040))

(assert (not b!2299051))

(assert (not b!2299048))

(assert (not b_next!70039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!183009)

(assert b_and!183017)

(assert b_and!183015)

(assert (not b_next!70031))

(assert b_and!183011)

(assert (not b_next!70029))

(assert b_and!183023)

(assert b_and!183021)

(assert (not b_next!70035))

(assert (not b_next!70039))

(assert b_and!183013)

(assert b_and!183019)

(assert (not b_next!70037))

(assert (not b_next!70041))

(assert (not b_next!70043))

(assert (not b_next!70033))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!680047 () Bool)

(declare-fun lt!852919 () Bool)

(declare-fun content!3680 (List!27468) (Set Rule!8572))

(assert (=> d!680047 (= lt!852919 (set.member r!2363 (content!3680 rules!1750)))))

(declare-fun e!1473410 () Bool)

(assert (=> d!680047 (= lt!852919 e!1473410)))

(declare-fun res!982993 () Bool)

(assert (=> d!680047 (=> (not res!982993) (not e!1473410))))

(assert (=> d!680047 (= res!982993 (is-Cons!27374 rules!1750))))

(assert (=> d!680047 (= (contains!4770 rules!1750 r!2363) lt!852919)))

(declare-fun b!2299175 () Bool)

(declare-fun e!1473411 () Bool)

(assert (=> b!2299175 (= e!1473410 e!1473411)))

(declare-fun res!982994 () Bool)

(assert (=> b!2299175 (=> res!982994 e!1473411)))

(assert (=> b!2299175 (= res!982994 (= (h!32775 rules!1750) r!2363))))

(declare-fun b!2299176 () Bool)

(assert (=> b!2299176 (= e!1473411 (contains!4770 (t!205632 rules!1750) r!2363))))

(assert (= (and d!680047 res!982993) b!2299175))

(assert (= (and b!2299175 (not res!982994)) b!2299176))

(declare-fun m!2726543 () Bool)

(assert (=> d!680047 m!2726543))

(declare-fun m!2726545 () Bool)

(assert (=> d!680047 m!2726545))

(declare-fun m!2726547 () Bool)

(assert (=> b!2299176 m!2726547))

(assert (=> b!2299051 d!680047))

(declare-fun d!680049 () Bool)

(declare-fun lt!852922 () Int)

(assert (=> d!680049 (= lt!852922 (size!21579 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(declare-fun size!21583 (Conc!8920) Int)

(assert (=> d!680049 (= lt!852922 (size!21583 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (=> d!680049 (= (size!21578 (charsOf!2774 (head!5025 tokens!456))) lt!852922)))

(declare-fun bs!457570 () Bool)

(assert (= bs!457570 d!680049))

(assert (=> bs!457570 m!2726401))

(assert (=> bs!457570 m!2726411))

(assert (=> bs!457570 m!2726411))

(declare-fun m!2726549 () Bool)

(assert (=> bs!457570 m!2726549))

(declare-fun m!2726551 () Bool)

(assert (=> bs!457570 m!2726551))

(assert (=> b!2299062 d!680049))

(declare-fun d!680051 () Bool)

(declare-fun lt!852925 () BalanceConc!17568)

(assert (=> d!680051 (= (list!10763 lt!852925) (originalCharacters!5156 (head!5025 tokens!456)))))

(declare-fun dynLambda!11896 (Int TokenValue!4548) BalanceConc!17568)

(assert (=> d!680051 (= lt!852925 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))))

(assert (=> d!680051 (= (charsOf!2774 (head!5025 tokens!456)) lt!852925)))

(declare-fun b_lambda!73233 () Bool)

(assert (=> (not b_lambda!73233) (not d!680051)))

(declare-fun t!205638 () Bool)

(declare-fun tb!137391 () Bool)

(assert (=> (and b!2299070 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205638) tb!137391))

(declare-fun b!2299181 () Bool)

(declare-fun e!1473414 () Bool)

(declare-fun tp!729368 () Bool)

(declare-fun inv!37001 (Conc!8920) Bool)

(assert (=> b!2299181 (= e!1473414 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))) tp!729368))))

(declare-fun result!167478 () Bool)

(declare-fun inv!37002 (BalanceConc!17568) Bool)

(assert (=> tb!137391 (= result!167478 (and (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))) e!1473414))))

(assert (= tb!137391 b!2299181))

(declare-fun m!2726553 () Bool)

(assert (=> b!2299181 m!2726553))

(declare-fun m!2726555 () Bool)

(assert (=> tb!137391 m!2726555))

(assert (=> d!680051 t!205638))

(declare-fun b_and!183041 () Bool)

(assert (= b_and!183011 (and (=> t!205638 result!167478) b_and!183041)))

(declare-fun t!205640 () Bool)

(declare-fun tb!137393 () Bool)

(assert (=> (and b!2299068 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205640) tb!137393))

(declare-fun result!167482 () Bool)

(assert (= result!167482 result!167478))

(assert (=> d!680051 t!205640))

(declare-fun b_and!183043 () Bool)

(assert (= b_and!183015 (and (=> t!205640 result!167482) b_and!183043)))

(declare-fun tb!137395 () Bool)

(declare-fun t!205642 () Bool)

(assert (=> (and b!2299049 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205642) tb!137395))

(declare-fun result!167484 () Bool)

(assert (= result!167484 result!167478))

(assert (=> d!680051 t!205642))

(declare-fun b_and!183045 () Bool)

(assert (= b_and!183019 (and (=> t!205642 result!167484) b_and!183045)))

(declare-fun t!205644 () Bool)

(declare-fun tb!137397 () Bool)

(assert (=> (and b!2299045 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205644) tb!137397))

(declare-fun result!167486 () Bool)

(assert (= result!167486 result!167478))

(assert (=> d!680051 t!205644))

(declare-fun b_and!183047 () Bool)

(assert (= b_and!183023 (and (=> t!205644 result!167486) b_and!183047)))

(declare-fun m!2726557 () Bool)

(assert (=> d!680051 m!2726557))

(declare-fun m!2726559 () Bool)

(assert (=> d!680051 m!2726559))

(assert (=> b!2299062 d!680051))

(declare-fun d!680053 () Bool)

(assert (=> d!680053 (= (head!5025 tokens!456) (h!32774 tokens!456))))

(assert (=> b!2299062 d!680053))

(declare-fun d!680055 () Bool)

(declare-fun lt!852928 () Int)

(assert (=> d!680055 (>= lt!852928 0)))

(declare-fun e!1473417 () Int)

(assert (=> d!680055 (= lt!852928 e!1473417)))

(declare-fun c!364521 () Bool)

(assert (=> d!680055 (= c!364521 (is-Nil!27372 otherP!12))))

(assert (=> d!680055 (= (size!21579 otherP!12) lt!852928)))

(declare-fun b!2299186 () Bool)

(assert (=> b!2299186 (= e!1473417 0)))

(declare-fun b!2299187 () Bool)

(assert (=> b!2299187 (= e!1473417 (+ 1 (size!21579 (t!205630 otherP!12))))))

(assert (= (and d!680055 c!364521) b!2299186))

(assert (= (and d!680055 (not c!364521)) b!2299187))

(declare-fun m!2726561 () Bool)

(assert (=> b!2299187 m!2726561))

(assert (=> b!2299062 d!680055))

(declare-fun d!680057 () Bool)

(assert (=> d!680057 (= (inv!36994 (tag!4876 otherR!12)) (= (mod (str.len (value!138821 (tag!4876 otherR!12))) 2) 0))))

(assert (=> b!2299052 d!680057))

(declare-fun d!680059 () Bool)

(declare-fun res!982997 () Bool)

(declare-fun e!1473420 () Bool)

(assert (=> d!680059 (=> (not res!982997) (not e!1473420))))

(declare-fun semiInverseModEq!1779 (Int Int) Bool)

(assert (=> d!680059 (= res!982997 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 otherR!12))))))

(assert (=> d!680059 (= (inv!36997 (transformation!4386 otherR!12)) e!1473420)))

(declare-fun b!2299190 () Bool)

(declare-fun equivClasses!1698 (Int Int) Bool)

(assert (=> b!2299190 (= e!1473420 (equivClasses!1698 (toChars!6051 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 otherR!12))))))

(assert (= (and d!680059 res!982997) b!2299190))

(declare-fun m!2726563 () Bool)

(assert (=> d!680059 m!2726563))

(declare-fun m!2726565 () Bool)

(assert (=> b!2299190 m!2726565))

(assert (=> b!2299052 d!680059))

(declare-fun d!680061 () Bool)

(assert (=> d!680061 (= (isEmpty!15615 tokens!456) (is-Nil!27373 tokens!456))))

(assert (=> b!2299042 d!680061))

(assert (=> b!2299053 d!680053))

(declare-fun b!2299219 () Bool)

(declare-fun res!983016 () Bool)

(declare-fun e!1473440 () Bool)

(assert (=> b!2299219 (=> (not res!983016) (not e!1473440))))

(declare-fun call!136975 () Bool)

(assert (=> b!2299219 (= res!983016 (not call!136975))))

(declare-fun b!2299220 () Bool)

(declare-fun e!1473439 () Bool)

(declare-fun lt!852931 () Bool)

(assert (=> b!2299220 (= e!1473439 (not lt!852931))))

(declare-fun bm!136970 () Bool)

(declare-fun isEmpty!15619 (List!27466) Bool)

(assert (=> bm!136970 (= call!136975 (isEmpty!15619 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(declare-fun b!2299221 () Bool)

(declare-fun e!1473438 () Bool)

(declare-fun head!5027 (List!27466) C!13614)

(assert (=> b!2299221 (= e!1473438 (not (= (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (c!364510 (regex!4386 r!2363)))))))

(declare-fun d!680063 () Bool)

(declare-fun e!1473441 () Bool)

(assert (=> d!680063 e!1473441))

(declare-fun c!364530 () Bool)

(assert (=> d!680063 (= c!364530 (is-EmptyExpr!6734 (regex!4386 r!2363)))))

(declare-fun e!1473437 () Bool)

(assert (=> d!680063 (= lt!852931 e!1473437)))

(declare-fun c!364529 () Bool)

(assert (=> d!680063 (= c!364529 (isEmpty!15619 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(declare-fun validRegex!2539 (Regex!6734) Bool)

(assert (=> d!680063 (validRegex!2539 (regex!4386 r!2363))))

(assert (=> d!680063 (= (matchR!2991 (regex!4386 r!2363) (list!10763 (charsOf!2774 (head!5025 tokens!456)))) lt!852931)))

(declare-fun b!2299222 () Bool)

(assert (=> b!2299222 (= e!1473440 (= (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (c!364510 (regex!4386 r!2363))))))

(declare-fun b!2299223 () Bool)

(declare-fun e!1473436 () Bool)

(assert (=> b!2299223 (= e!1473436 e!1473438)))

(declare-fun res!983018 () Bool)

(assert (=> b!2299223 (=> res!983018 e!1473438)))

(assert (=> b!2299223 (= res!983018 call!136975)))

(declare-fun b!2299224 () Bool)

(declare-fun res!983017 () Bool)

(assert (=> b!2299224 (=> res!983017 e!1473438)))

(declare-fun tail!3320 (List!27466) List!27466)

(assert (=> b!2299224 (= res!983017 (not (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun b!2299225 () Bool)

(declare-fun nullable!1877 (Regex!6734) Bool)

(assert (=> b!2299225 (= e!1473437 (nullable!1877 (regex!4386 r!2363)))))

(declare-fun b!2299226 () Bool)

(declare-fun res!983020 () Bool)

(assert (=> b!2299226 (=> (not res!983020) (not e!1473440))))

(assert (=> b!2299226 (= res!983020 (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2299227 () Bool)

(assert (=> b!2299227 (= e!1473441 (= lt!852931 call!136975))))

(declare-fun b!2299228 () Bool)

(assert (=> b!2299228 (= e!1473441 e!1473439)))

(declare-fun c!364528 () Bool)

(assert (=> b!2299228 (= c!364528 (is-EmptyLang!6734 (regex!4386 r!2363)))))

(declare-fun b!2299229 () Bool)

(declare-fun derivativeStep!1537 (Regex!6734 C!13614) Regex!6734)

(assert (=> b!2299229 (= e!1473437 (matchR!2991 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2299230 () Bool)

(declare-fun e!1473435 () Bool)

(assert (=> b!2299230 (= e!1473435 e!1473436)))

(declare-fun res!983021 () Bool)

(assert (=> b!2299230 (=> (not res!983021) (not e!1473436))))

(assert (=> b!2299230 (= res!983021 (not lt!852931))))

(declare-fun b!2299231 () Bool)

(declare-fun res!983014 () Bool)

(assert (=> b!2299231 (=> res!983014 e!1473435)))

(assert (=> b!2299231 (= res!983014 (not (is-ElementMatch!6734 (regex!4386 r!2363))))))

(assert (=> b!2299231 (= e!1473439 e!1473435)))

(declare-fun b!2299232 () Bool)

(declare-fun res!983019 () Bool)

(assert (=> b!2299232 (=> res!983019 e!1473435)))

(assert (=> b!2299232 (= res!983019 e!1473440)))

(declare-fun res!983015 () Bool)

(assert (=> b!2299232 (=> (not res!983015) (not e!1473440))))

(assert (=> b!2299232 (= res!983015 lt!852931)))

(assert (= (and d!680063 c!364529) b!2299225))

(assert (= (and d!680063 (not c!364529)) b!2299229))

(assert (= (and d!680063 c!364530) b!2299227))

(assert (= (and d!680063 (not c!364530)) b!2299228))

(assert (= (and b!2299228 c!364528) b!2299220))

(assert (= (and b!2299228 (not c!364528)) b!2299231))

(assert (= (and b!2299231 (not res!983014)) b!2299232))

(assert (= (and b!2299232 res!983015) b!2299219))

(assert (= (and b!2299219 res!983016) b!2299226))

(assert (= (and b!2299226 res!983020) b!2299222))

(assert (= (and b!2299232 (not res!983019)) b!2299230))

(assert (= (and b!2299230 res!983021) b!2299223))

(assert (= (and b!2299223 (not res!983018)) b!2299224))

(assert (= (and b!2299224 (not res!983017)) b!2299221))

(assert (= (or b!2299227 b!2299219 b!2299223) bm!136970))

(assert (=> b!2299221 m!2726411))

(declare-fun m!2726567 () Bool)

(assert (=> b!2299221 m!2726567))

(assert (=> b!2299229 m!2726411))

(assert (=> b!2299229 m!2726567))

(assert (=> b!2299229 m!2726567))

(declare-fun m!2726569 () Bool)

(assert (=> b!2299229 m!2726569))

(assert (=> b!2299229 m!2726411))

(declare-fun m!2726571 () Bool)

(assert (=> b!2299229 m!2726571))

(assert (=> b!2299229 m!2726569))

(assert (=> b!2299229 m!2726571))

(declare-fun m!2726573 () Bool)

(assert (=> b!2299229 m!2726573))

(assert (=> b!2299222 m!2726411))

(assert (=> b!2299222 m!2726567))

(assert (=> b!2299226 m!2726411))

(assert (=> b!2299226 m!2726571))

(assert (=> b!2299226 m!2726571))

(declare-fun m!2726575 () Bool)

(assert (=> b!2299226 m!2726575))

(declare-fun m!2726577 () Bool)

(assert (=> b!2299225 m!2726577))

(assert (=> d!680063 m!2726411))

(declare-fun m!2726579 () Bool)

(assert (=> d!680063 m!2726579))

(declare-fun m!2726581 () Bool)

(assert (=> d!680063 m!2726581))

(assert (=> bm!136970 m!2726411))

(assert (=> bm!136970 m!2726579))

(assert (=> b!2299224 m!2726411))

(assert (=> b!2299224 m!2726571))

(assert (=> b!2299224 m!2726571))

(assert (=> b!2299224 m!2726575))

(assert (=> b!2299043 d!680063))

(declare-fun d!680065 () Bool)

(declare-fun list!10766 (Conc!8920) List!27466)

(assert (=> d!680065 (= (list!10763 (charsOf!2774 (head!5025 tokens!456))) (list!10766 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))

(declare-fun bs!457571 () Bool)

(assert (= bs!457571 d!680065))

(declare-fun m!2726583 () Bool)

(assert (=> bs!457571 m!2726583))

(assert (=> b!2299043 d!680065))

(assert (=> b!2299043 d!680051))

(assert (=> b!2299043 d!680053))

(declare-fun d!680067 () Bool)

(assert (=> d!680067 (= r!2363 otherR!12)))

(declare-fun lt!852934 () Unit!40271)

(declare-fun choose!13418 (List!27468 Rule!8572 Rule!8572) Unit!40271)

(assert (=> d!680067 (= lt!852934 (choose!13418 rules!1750 r!2363 otherR!12))))

(assert (=> d!680067 (contains!4770 rules!1750 r!2363)))

(assert (=> d!680067 (= (lemmaSameIndexThenSameElement!179 rules!1750 r!2363 otherR!12) lt!852934)))

(declare-fun bs!457572 () Bool)

(assert (= bs!457572 d!680067))

(declare-fun m!2726585 () Bool)

(assert (=> bs!457572 m!2726585))

(assert (=> bs!457572 m!2726449))

(assert (=> b!2299065 d!680067))

(declare-fun b!2299243 () Bool)

(declare-fun res!983024 () Bool)

(declare-fun e!1473448 () Bool)

(assert (=> b!2299243 (=> res!983024 e!1473448)))

(assert (=> b!2299243 (= res!983024 (not (is-IntegerValue!13646 (value!138822 (h!32774 tokens!456)))))))

(declare-fun e!1473450 () Bool)

(assert (=> b!2299243 (= e!1473450 e!1473448)))

(declare-fun b!2299244 () Bool)

(declare-fun e!1473449 () Bool)

(declare-fun inv!16 (TokenValue!4548) Bool)

(assert (=> b!2299244 (= e!1473449 (inv!16 (value!138822 (h!32774 tokens!456))))))

(declare-fun b!2299246 () Bool)

(declare-fun inv!17 (TokenValue!4548) Bool)

(assert (=> b!2299246 (= e!1473450 (inv!17 (value!138822 (h!32774 tokens!456))))))

(declare-fun b!2299247 () Bool)

(declare-fun inv!15 (TokenValue!4548) Bool)

(assert (=> b!2299247 (= e!1473448 (inv!15 (value!138822 (h!32774 tokens!456))))))

(declare-fun d!680069 () Bool)

(declare-fun c!364536 () Bool)

(assert (=> d!680069 (= c!364536 (is-IntegerValue!13644 (value!138822 (h!32774 tokens!456))))))

(assert (=> d!680069 (= (inv!21 (value!138822 (h!32774 tokens!456))) e!1473449)))

(declare-fun b!2299245 () Bool)

(assert (=> b!2299245 (= e!1473449 e!1473450)))

(declare-fun c!364535 () Bool)

(assert (=> b!2299245 (= c!364535 (is-IntegerValue!13645 (value!138822 (h!32774 tokens!456))))))

(assert (= (and d!680069 c!364536) b!2299244))

(assert (= (and d!680069 (not c!364536)) b!2299245))

(assert (= (and b!2299245 c!364535) b!2299246))

(assert (= (and b!2299245 (not c!364535)) b!2299243))

(assert (= (and b!2299243 (not res!983024)) b!2299247))

(declare-fun m!2726587 () Bool)

(assert (=> b!2299244 m!2726587))

(declare-fun m!2726589 () Bool)

(assert (=> b!2299246 m!2726589))

(declare-fun m!2726591 () Bool)

(assert (=> b!2299247 m!2726591))

(assert (=> b!2299044 d!680069))

(declare-fun d!680073 () Bool)

(assert (=> d!680073 (= (isEmpty!15616 rules!1750) (is-Nil!27374 rules!1750))))

(assert (=> b!2299066 d!680073))

(declare-fun d!680075 () Bool)

(assert (=> d!680075 (= (inv!36994 (tag!4876 (h!32775 rules!1750))) (= (mod (str.len (value!138821 (tag!4876 (h!32775 rules!1750)))) 2) 0))))

(assert (=> b!2299056 d!680075))

(declare-fun d!680077 () Bool)

(declare-fun res!983025 () Bool)

(declare-fun e!1473451 () Bool)

(assert (=> d!680077 (=> (not res!983025) (not e!1473451))))

(assert (=> d!680077 (= res!983025 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (h!32775 rules!1750)))))))

(assert (=> d!680077 (= (inv!36997 (transformation!4386 (h!32775 rules!1750))) e!1473451)))

(declare-fun b!2299248 () Bool)

(assert (=> b!2299248 (= e!1473451 (equivClasses!1698 (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (h!32775 rules!1750)))))))

(assert (= (and d!680077 res!983025) b!2299248))

(declare-fun m!2726593 () Bool)

(assert (=> d!680077 m!2726593))

(declare-fun m!2726595 () Bool)

(assert (=> b!2299248 m!2726595))

(assert (=> b!2299056 d!680077))

(declare-fun b!2299258 () Bool)

(declare-fun res!983035 () Bool)

(declare-fun e!1473459 () Bool)

(assert (=> b!2299258 (=> (not res!983035) (not e!1473459))))

(assert (=> b!2299258 (= res!983035 (= (head!5027 otherP!12) (head!5027 input!1722)))))

(declare-fun b!2299259 () Bool)

(assert (=> b!2299259 (= e!1473459 (isPrefix!2376 (tail!3320 otherP!12) (tail!3320 input!1722)))))

(declare-fun b!2299260 () Bool)

(declare-fun e!1473458 () Bool)

(assert (=> b!2299260 (= e!1473458 (>= (size!21579 input!1722) (size!21579 otherP!12)))))

(declare-fun b!2299257 () Bool)

(declare-fun e!1473460 () Bool)

(assert (=> b!2299257 (= e!1473460 e!1473459)))

(declare-fun res!983034 () Bool)

(assert (=> b!2299257 (=> (not res!983034) (not e!1473459))))

(assert (=> b!2299257 (= res!983034 (not (is-Nil!27372 input!1722)))))

(declare-fun d!680079 () Bool)

(assert (=> d!680079 e!1473458))

(declare-fun res!983037 () Bool)

(assert (=> d!680079 (=> res!983037 e!1473458)))

(declare-fun lt!852937 () Bool)

(assert (=> d!680079 (= res!983037 (not lt!852937))))

(assert (=> d!680079 (= lt!852937 e!1473460)))

(declare-fun res!983036 () Bool)

(assert (=> d!680079 (=> res!983036 e!1473460)))

(assert (=> d!680079 (= res!983036 (is-Nil!27372 otherP!12))))

(assert (=> d!680079 (= (isPrefix!2376 otherP!12 input!1722) lt!852937)))

(assert (= (and d!680079 (not res!983036)) b!2299257))

(assert (= (and b!2299257 res!983034) b!2299258))

(assert (= (and b!2299258 res!983035) b!2299259))

(assert (= (and d!680079 (not res!983037)) b!2299260))

(declare-fun m!2726597 () Bool)

(assert (=> b!2299258 m!2726597))

(declare-fun m!2726599 () Bool)

(assert (=> b!2299258 m!2726599))

(declare-fun m!2726601 () Bool)

(assert (=> b!2299259 m!2726601))

(declare-fun m!2726603 () Bool)

(assert (=> b!2299259 m!2726603))

(assert (=> b!2299259 m!2726601))

(assert (=> b!2299259 m!2726603))

(declare-fun m!2726605 () Bool)

(assert (=> b!2299259 m!2726605))

(declare-fun m!2726607 () Bool)

(assert (=> b!2299260 m!2726607))

(assert (=> b!2299260 m!2726405))

(assert (=> b!2299067 d!680079))

(declare-fun d!680083 () Bool)

(declare-fun res!983042 () Bool)

(declare-fun e!1473465 () Bool)

(assert (=> d!680083 (=> (not res!983042) (not e!1473465))))

(declare-fun rulesValid!1623 (LexerInterface!3983 List!27468) Bool)

(assert (=> d!680083 (= res!983042 (rulesValid!1623 thiss!16613 rules!1750))))

(assert (=> d!680083 (= (rulesInvariant!3485 thiss!16613 rules!1750) e!1473465)))

(declare-fun b!2299265 () Bool)

(declare-datatypes ((List!27473 0))(
  ( (Nil!27379) (Cons!27379 (h!32780 String!29846) (t!205677 List!27473)) )
))
(declare-fun noDuplicateTag!1621 (LexerInterface!3983 List!27468 List!27473) Bool)

(assert (=> b!2299265 (= e!1473465 (noDuplicateTag!1621 thiss!16613 rules!1750 Nil!27379))))

(assert (= (and d!680083 res!983042) b!2299265))

(declare-fun m!2726609 () Bool)

(assert (=> d!680083 m!2726609))

(declare-fun m!2726611 () Bool)

(assert (=> b!2299265 m!2726611))

(assert (=> b!2299046 d!680083))

(declare-fun d!680085 () Bool)

(declare-fun res!983048 () Bool)

(declare-fun e!1473469 () Bool)

(assert (=> d!680085 (=> (not res!983048) (not e!1473469))))

(assert (=> d!680085 (= res!983048 (not (isEmpty!15619 (originalCharacters!5156 (h!32774 tokens!456)))))))

(assert (=> d!680085 (= (inv!36998 (h!32774 tokens!456)) e!1473469)))

(declare-fun b!2299271 () Bool)

(declare-fun res!983049 () Bool)

(assert (=> b!2299271 (=> (not res!983049) (not e!1473469))))

(assert (=> b!2299271 (= res!983049 (= (originalCharacters!5156 (h!32774 tokens!456)) (list!10763 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(declare-fun b!2299272 () Bool)

(assert (=> b!2299272 (= e!1473469 (= (size!21577 (h!32774 tokens!456)) (size!21579 (originalCharacters!5156 (h!32774 tokens!456)))))))

(assert (= (and d!680085 res!983048) b!2299271))

(assert (= (and b!2299271 res!983049) b!2299272))

(declare-fun b_lambda!73235 () Bool)

(assert (=> (not b_lambda!73235) (not b!2299271)))

(declare-fun t!205646 () Bool)

(declare-fun tb!137399 () Bool)

(assert (=> (and b!2299070 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205646) tb!137399))

(declare-fun b!2299273 () Bool)

(declare-fun e!1473470 () Bool)

(declare-fun tp!729369 () Bool)

(assert (=> b!2299273 (= e!1473470 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))) tp!729369))))

(declare-fun result!167488 () Bool)

(assert (=> tb!137399 (= result!167488 (and (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))) e!1473470))))

(assert (= tb!137399 b!2299273))

(declare-fun m!2726617 () Bool)

(assert (=> b!2299273 m!2726617))

(declare-fun m!2726619 () Bool)

(assert (=> tb!137399 m!2726619))

(assert (=> b!2299271 t!205646))

(declare-fun b_and!183049 () Bool)

(assert (= b_and!183041 (and (=> t!205646 result!167488) b_and!183049)))

(declare-fun t!205648 () Bool)

(declare-fun tb!137401 () Bool)

(assert (=> (and b!2299068 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205648) tb!137401))

(declare-fun result!167490 () Bool)

(assert (= result!167490 result!167488))

(assert (=> b!2299271 t!205648))

(declare-fun b_and!183051 () Bool)

(assert (= b_and!183043 (and (=> t!205648 result!167490) b_and!183051)))

(declare-fun tb!137403 () Bool)

(declare-fun t!205650 () Bool)

(assert (=> (and b!2299049 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205650) tb!137403))

(declare-fun result!167492 () Bool)

(assert (= result!167492 result!167488))

(assert (=> b!2299271 t!205650))

(declare-fun b_and!183053 () Bool)

(assert (= b_and!183045 (and (=> t!205650 result!167492) b_and!183053)))

(declare-fun t!205652 () Bool)

(declare-fun tb!137405 () Bool)

(assert (=> (and b!2299045 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205652) tb!137405))

(declare-fun result!167494 () Bool)

(assert (= result!167494 result!167488))

(assert (=> b!2299271 t!205652))

(declare-fun b_and!183055 () Bool)

(assert (= b_and!183047 (and (=> t!205652 result!167494) b_and!183055)))

(declare-fun m!2726621 () Bool)

(assert (=> d!680085 m!2726621))

(declare-fun m!2726623 () Bool)

(assert (=> b!2299271 m!2726623))

(assert (=> b!2299271 m!2726623))

(declare-fun m!2726625 () Bool)

(assert (=> b!2299271 m!2726625))

(declare-fun m!2726627 () Bool)

(assert (=> b!2299272 m!2726627))

(assert (=> b!2299057 d!680085))

(declare-fun d!680091 () Bool)

(assert (=> d!680091 (= (inv!36994 (tag!4876 (rule!6730 (h!32774 tokens!456)))) (= (mod (str.len (value!138821 (tag!4876 (rule!6730 (h!32774 tokens!456))))) 2) 0))))

(assert (=> b!2299058 d!680091))

(declare-fun d!680093 () Bool)

(declare-fun res!983050 () Bool)

(declare-fun e!1473471 () Bool)

(assert (=> d!680093 (=> (not res!983050) (not e!1473471))))

(assert (=> d!680093 (= res!983050 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))))))

(assert (=> d!680093 (= (inv!36997 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) e!1473471)))

(declare-fun b!2299274 () Bool)

(assert (=> b!2299274 (= e!1473471 (equivClasses!1698 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))))))

(assert (= (and d!680093 res!983050) b!2299274))

(declare-fun m!2726629 () Bool)

(assert (=> d!680093 m!2726629))

(declare-fun m!2726631 () Bool)

(assert (=> b!2299274 m!2726631))

(assert (=> b!2299058 d!680093))

(declare-fun d!680095 () Bool)

(assert (=> d!680095 (= (inv!36994 (tag!4876 r!2363)) (= (mod (str.len (value!138821 (tag!4876 r!2363))) 2) 0))))

(assert (=> b!2299069 d!680095))

(declare-fun d!680097 () Bool)

(declare-fun res!983051 () Bool)

(declare-fun e!1473472 () Bool)

(assert (=> d!680097 (=> (not res!983051) (not e!1473472))))

(assert (=> d!680097 (= res!983051 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 r!2363))))))

(assert (=> d!680097 (= (inv!36997 (transformation!4386 r!2363)) e!1473472)))

(declare-fun b!2299275 () Bool)

(assert (=> b!2299275 (= e!1473472 (equivClasses!1698 (toChars!6051 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 r!2363))))))

(assert (= (and d!680097 res!983051) b!2299275))

(declare-fun m!2726633 () Bool)

(assert (=> d!680097 m!2726633))

(declare-fun m!2726635 () Bool)

(assert (=> b!2299275 m!2726635))

(assert (=> b!2299069 d!680097))

(declare-fun b!2299277 () Bool)

(declare-fun res!983053 () Bool)

(declare-fun e!1473474 () Bool)

(assert (=> b!2299277 (=> (not res!983053) (not e!1473474))))

(assert (=> b!2299277 (= res!983053 (= (head!5027 lt!852874) (head!5027 input!1722)))))

(declare-fun b!2299278 () Bool)

(assert (=> b!2299278 (= e!1473474 (isPrefix!2376 (tail!3320 lt!852874) (tail!3320 input!1722)))))

(declare-fun b!2299279 () Bool)

(declare-fun e!1473473 () Bool)

(assert (=> b!2299279 (= e!1473473 (>= (size!21579 input!1722) (size!21579 lt!852874)))))

(declare-fun b!2299276 () Bool)

(declare-fun e!1473475 () Bool)

(assert (=> b!2299276 (= e!1473475 e!1473474)))

(declare-fun res!983052 () Bool)

(assert (=> b!2299276 (=> (not res!983052) (not e!1473474))))

(assert (=> b!2299276 (= res!983052 (not (is-Nil!27372 input!1722)))))

(declare-fun d!680099 () Bool)

(assert (=> d!680099 e!1473473))

(declare-fun res!983055 () Bool)

(assert (=> d!680099 (=> res!983055 e!1473473)))

(declare-fun lt!852938 () Bool)

(assert (=> d!680099 (= res!983055 (not lt!852938))))

(assert (=> d!680099 (= lt!852938 e!1473475)))

(declare-fun res!983054 () Bool)

(assert (=> d!680099 (=> res!983054 e!1473475)))

(assert (=> d!680099 (= res!983054 (is-Nil!27372 lt!852874))))

(assert (=> d!680099 (= (isPrefix!2376 lt!852874 input!1722) lt!852938)))

(assert (= (and d!680099 (not res!983054)) b!2299276))

(assert (= (and b!2299276 res!983052) b!2299277))

(assert (= (and b!2299277 res!983053) b!2299278))

(assert (= (and d!680099 (not res!983055)) b!2299279))

(declare-fun m!2726637 () Bool)

(assert (=> b!2299277 m!2726637))

(assert (=> b!2299277 m!2726599))

(declare-fun m!2726639 () Bool)

(assert (=> b!2299278 m!2726639))

(assert (=> b!2299278 m!2726603))

(assert (=> b!2299278 m!2726639))

(assert (=> b!2299278 m!2726603))

(declare-fun m!2726641 () Bool)

(assert (=> b!2299278 m!2726641))

(assert (=> b!2299279 m!2726607))

(declare-fun m!2726643 () Bool)

(assert (=> b!2299279 m!2726643))

(assert (=> b!2299048 d!680099))

(declare-fun b!2299281 () Bool)

(declare-fun res!983057 () Bool)

(declare-fun e!1473477 () Bool)

(assert (=> b!2299281 (=> (not res!983057) (not e!1473477))))

(assert (=> b!2299281 (= res!983057 (= (head!5027 lt!852874) (head!5027 lt!852870)))))

(declare-fun b!2299282 () Bool)

(assert (=> b!2299282 (= e!1473477 (isPrefix!2376 (tail!3320 lt!852874) (tail!3320 lt!852870)))))

(declare-fun b!2299283 () Bool)

(declare-fun e!1473476 () Bool)

(assert (=> b!2299283 (= e!1473476 (>= (size!21579 lt!852870) (size!21579 lt!852874)))))

(declare-fun b!2299280 () Bool)

(declare-fun e!1473478 () Bool)

(assert (=> b!2299280 (= e!1473478 e!1473477)))

(declare-fun res!983056 () Bool)

(assert (=> b!2299280 (=> (not res!983056) (not e!1473477))))

(assert (=> b!2299280 (= res!983056 (not (is-Nil!27372 lt!852870)))))

(declare-fun d!680101 () Bool)

(assert (=> d!680101 e!1473476))

(declare-fun res!983059 () Bool)

(assert (=> d!680101 (=> res!983059 e!1473476)))

(declare-fun lt!852939 () Bool)

(assert (=> d!680101 (= res!983059 (not lt!852939))))

(assert (=> d!680101 (= lt!852939 e!1473478)))

(declare-fun res!983058 () Bool)

(assert (=> d!680101 (=> res!983058 e!1473478)))

(assert (=> d!680101 (= res!983058 (is-Nil!27372 lt!852874))))

(assert (=> d!680101 (= (isPrefix!2376 lt!852874 lt!852870) lt!852939)))

(assert (= (and d!680101 (not res!983058)) b!2299280))

(assert (= (and b!2299280 res!983056) b!2299281))

(assert (= (and b!2299281 res!983057) b!2299282))

(assert (= (and d!680101 (not res!983059)) b!2299283))

(assert (=> b!2299281 m!2726637))

(declare-fun m!2726645 () Bool)

(assert (=> b!2299281 m!2726645))

(assert (=> b!2299282 m!2726639))

(declare-fun m!2726647 () Bool)

(assert (=> b!2299282 m!2726647))

(assert (=> b!2299282 m!2726639))

(assert (=> b!2299282 m!2726647))

(declare-fun m!2726649 () Bool)

(assert (=> b!2299282 m!2726649))

(declare-fun m!2726651 () Bool)

(assert (=> b!2299283 m!2726651))

(assert (=> b!2299283 m!2726643))

(assert (=> b!2299048 d!680101))

(declare-fun d!680103 () Bool)

(declare-fun lt!852942 () List!27466)

(assert (=> d!680103 (= (++!6696 lt!852874 lt!852942) input!1722)))

(declare-fun e!1473487 () List!27466)

(assert (=> d!680103 (= lt!852942 e!1473487)))

(declare-fun c!364543 () Bool)

(assert (=> d!680103 (= c!364543 (is-Cons!27372 lt!852874))))

(assert (=> d!680103 (>= (size!21579 input!1722) (size!21579 lt!852874))))

(assert (=> d!680103 (= (getSuffix!1155 input!1722 lt!852874) lt!852942)))

(declare-fun b!2299298 () Bool)

(assert (=> b!2299298 (= e!1473487 (getSuffix!1155 (tail!3320 input!1722) (t!205630 lt!852874)))))

(declare-fun b!2299299 () Bool)

(assert (=> b!2299299 (= e!1473487 input!1722)))

(assert (= (and d!680103 c!364543) b!2299298))

(assert (= (and d!680103 (not c!364543)) b!2299299))

(declare-fun m!2726653 () Bool)

(assert (=> d!680103 m!2726653))

(assert (=> d!680103 m!2726607))

(assert (=> d!680103 m!2726643))

(assert (=> b!2299298 m!2726603))

(assert (=> b!2299298 m!2726603))

(declare-fun m!2726655 () Bool)

(assert (=> b!2299298 m!2726655))

(assert (=> b!2299048 d!680103))

(declare-fun d!680105 () Bool)

(assert (=> d!680105 (isPrefix!2376 lt!852874 (++!6696 lt!852874 (_2!16132 lt!852869)))))

(declare-fun lt!852945 () Unit!40271)

(declare-fun choose!13419 (List!27466 List!27466) Unit!40271)

(assert (=> d!680105 (= lt!852945 (choose!13419 lt!852874 (_2!16132 lt!852869)))))

(assert (=> d!680105 (= (lemmaConcatTwoListThenFirstIsPrefix!1569 lt!852874 (_2!16132 lt!852869)) lt!852945)))

(declare-fun bs!457573 () Bool)

(assert (= bs!457573 d!680105))

(assert (=> bs!457573 m!2726447))

(assert (=> bs!457573 m!2726447))

(declare-fun m!2726657 () Bool)

(assert (=> bs!457573 m!2726657))

(declare-fun m!2726659 () Bool)

(assert (=> bs!457573 m!2726659))

(assert (=> b!2299048 d!680105))

(declare-fun d!680107 () Bool)

(declare-fun lt!852946 () BalanceConc!17568)

(assert (=> d!680107 (= (list!10763 lt!852946) (originalCharacters!5156 (h!32774 tokens!456)))))

(assert (=> d!680107 (= lt!852946 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))

(assert (=> d!680107 (= (charsOf!2774 (h!32774 tokens!456)) lt!852946)))

(declare-fun b_lambda!73237 () Bool)

(assert (=> (not b_lambda!73237) (not d!680107)))

(assert (=> d!680107 t!205646))

(declare-fun b_and!183057 () Bool)

(assert (= b_and!183049 (and (=> t!205646 result!167488) b_and!183057)))

(assert (=> d!680107 t!205648))

(declare-fun b_and!183059 () Bool)

(assert (= b_and!183051 (and (=> t!205648 result!167490) b_and!183059)))

(assert (=> d!680107 t!205650))

(declare-fun b_and!183061 () Bool)

(assert (= b_and!183053 (and (=> t!205650 result!167492) b_and!183061)))

(assert (=> d!680107 t!205652))

(declare-fun b_and!183063 () Bool)

(assert (= b_and!183055 (and (=> t!205652 result!167494) b_and!183063)))

(declare-fun m!2726661 () Bool)

(assert (=> d!680107 m!2726661))

(assert (=> d!680107 m!2726623))

(assert (=> b!2299048 d!680107))

(declare-fun d!680109 () Bool)

(assert (=> d!680109 (= (get!8251 (maxPrefix!2239 thiss!16613 rules!1750 input!1722)) (v!30471 (maxPrefix!2239 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2299048 d!680109))

(declare-fun b!2299339 () Bool)

(declare-fun e!1473507 () Bool)

(declare-fun e!1473508 () Bool)

(assert (=> b!2299339 (= e!1473507 e!1473508)))

(declare-fun res!983085 () Bool)

(assert (=> b!2299339 (=> (not res!983085) (not e!1473508))))

(declare-fun lt!852970 () Option!5380)

(declare-fun isDefined!4239 (Option!5380) Bool)

(assert (=> b!2299339 (= res!983085 (isDefined!4239 lt!852970))))

(declare-fun b!2299340 () Bool)

(declare-fun res!983082 () Bool)

(assert (=> b!2299340 (=> (not res!983082) (not e!1473508))))

(assert (=> b!2299340 (= res!983082 (= (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))) (originalCharacters!5156 (_1!16132 (get!8251 lt!852970)))))))

(declare-fun b!2299341 () Bool)

(declare-fun e!1473506 () Option!5380)

(declare-fun lt!852968 () Option!5380)

(declare-fun lt!852967 () Option!5380)

(assert (=> b!2299341 (= e!1473506 (ite (and (is-None!5379 lt!852968) (is-None!5379 lt!852967)) None!5379 (ite (is-None!5379 lt!852967) lt!852968 (ite (is-None!5379 lt!852968) lt!852967 (ite (>= (size!21577 (_1!16132 (v!30471 lt!852968))) (size!21577 (_1!16132 (v!30471 lt!852967)))) lt!852968 lt!852967)))))))

(declare-fun call!136978 () Option!5380)

(assert (=> b!2299341 (= lt!852968 call!136978)))

(assert (=> b!2299341 (= lt!852967 (maxPrefix!2239 thiss!16613 (t!205632 rules!1750) input!1722))))

(declare-fun d!680111 () Bool)

(assert (=> d!680111 e!1473507))

(declare-fun res!983083 () Bool)

(assert (=> d!680111 (=> res!983083 e!1473507)))

(declare-fun isEmpty!15620 (Option!5380) Bool)

(assert (=> d!680111 (= res!983083 (isEmpty!15620 lt!852970))))

(assert (=> d!680111 (= lt!852970 e!1473506)))

(declare-fun c!364551 () Bool)

(assert (=> d!680111 (= c!364551 (and (is-Cons!27374 rules!1750) (is-Nil!27374 (t!205632 rules!1750))))))

(declare-fun lt!852969 () Unit!40271)

(declare-fun lt!852966 () Unit!40271)

(assert (=> d!680111 (= lt!852969 lt!852966)))

(assert (=> d!680111 (isPrefix!2376 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1506 (List!27466 List!27466) Unit!40271)

(assert (=> d!680111 (= lt!852966 (lemmaIsPrefixRefl!1506 input!1722 input!1722))))

(declare-fun rulesValidInductive!1548 (LexerInterface!3983 List!27468) Bool)

(assert (=> d!680111 (rulesValidInductive!1548 thiss!16613 rules!1750)))

(assert (=> d!680111 (= (maxPrefix!2239 thiss!16613 rules!1750 input!1722) lt!852970)))

(declare-fun b!2299342 () Bool)

(declare-fun res!983086 () Bool)

(assert (=> b!2299342 (=> (not res!983086) (not e!1473508))))

(assert (=> b!2299342 (= res!983086 (= (++!6696 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))) (_2!16132 (get!8251 lt!852970))) input!1722))))

(declare-fun b!2299343 () Bool)

(assert (=> b!2299343 (= e!1473508 (contains!4770 rules!1750 (rule!6730 (_1!16132 (get!8251 lt!852970)))))))

(declare-fun bm!136973 () Bool)

(declare-fun maxPrefixOneRule!1409 (LexerInterface!3983 Rule!8572 List!27466) Option!5380)

(assert (=> bm!136973 (= call!136978 (maxPrefixOneRule!1409 thiss!16613 (h!32775 rules!1750) input!1722))))

(declare-fun b!2299344 () Bool)

(declare-fun res!983084 () Bool)

(assert (=> b!2299344 (=> (not res!983084) (not e!1473508))))

(assert (=> b!2299344 (= res!983084 (matchR!2991 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))) (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun b!2299345 () Bool)

(declare-fun res!983088 () Bool)

(assert (=> b!2299345 (=> (not res!983088) (not e!1473508))))

(assert (=> b!2299345 (= res!983088 (< (size!21579 (_2!16132 (get!8251 lt!852970))) (size!21579 input!1722)))))

(declare-fun b!2299346 () Bool)

(assert (=> b!2299346 (= e!1473506 call!136978)))

(declare-fun b!2299347 () Bool)

(declare-fun res!983087 () Bool)

(assert (=> b!2299347 (=> (not res!983087) (not e!1473508))))

(declare-fun apply!6648 (TokenValueInjection!8636 BalanceConc!17568) TokenValue!4548)

(assert (=> b!2299347 (= res!983087 (= (value!138822 (_1!16132 (get!8251 lt!852970))) (apply!6648 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970)))))))))

(assert (= (and d!680111 c!364551) b!2299346))

(assert (= (and d!680111 (not c!364551)) b!2299341))

(assert (= (or b!2299346 b!2299341) bm!136973))

(assert (= (and d!680111 (not res!983083)) b!2299339))

(assert (= (and b!2299339 res!983085) b!2299340))

(assert (= (and b!2299340 res!983082) b!2299345))

(assert (= (and b!2299345 res!983088) b!2299342))

(assert (= (and b!2299342 res!983086) b!2299347))

(assert (= (and b!2299347 res!983087) b!2299344))

(assert (= (and b!2299344 res!983084) b!2299343))

(declare-fun m!2726687 () Bool)

(assert (=> d!680111 m!2726687))

(declare-fun m!2726689 () Bool)

(assert (=> d!680111 m!2726689))

(declare-fun m!2726691 () Bool)

(assert (=> d!680111 m!2726691))

(declare-fun m!2726693 () Bool)

(assert (=> d!680111 m!2726693))

(declare-fun m!2726695 () Bool)

(assert (=> b!2299340 m!2726695))

(declare-fun m!2726697 () Bool)

(assert (=> b!2299340 m!2726697))

(assert (=> b!2299340 m!2726697))

(declare-fun m!2726699 () Bool)

(assert (=> b!2299340 m!2726699))

(assert (=> b!2299347 m!2726695))

(declare-fun m!2726701 () Bool)

(assert (=> b!2299347 m!2726701))

(assert (=> b!2299347 m!2726701))

(declare-fun m!2726703 () Bool)

(assert (=> b!2299347 m!2726703))

(assert (=> b!2299344 m!2726695))

(assert (=> b!2299344 m!2726697))

(assert (=> b!2299344 m!2726697))

(assert (=> b!2299344 m!2726699))

(assert (=> b!2299344 m!2726699))

(declare-fun m!2726705 () Bool)

(assert (=> b!2299344 m!2726705))

(assert (=> b!2299345 m!2726695))

(declare-fun m!2726707 () Bool)

(assert (=> b!2299345 m!2726707))

(assert (=> b!2299345 m!2726607))

(declare-fun m!2726711 () Bool)

(assert (=> bm!136973 m!2726711))

(assert (=> b!2299342 m!2726695))

(assert (=> b!2299342 m!2726697))

(assert (=> b!2299342 m!2726697))

(assert (=> b!2299342 m!2726699))

(assert (=> b!2299342 m!2726699))

(declare-fun m!2726715 () Bool)

(assert (=> b!2299342 m!2726715))

(assert (=> b!2299343 m!2726695))

(declare-fun m!2726717 () Bool)

(assert (=> b!2299343 m!2726717))

(declare-fun m!2726719 () Bool)

(assert (=> b!2299341 m!2726719))

(declare-fun m!2726721 () Bool)

(assert (=> b!2299339 m!2726721))

(assert (=> b!2299048 d!680111))

(declare-fun d!680129 () Bool)

(assert (=> d!680129 (= (list!10763 (charsOf!2774 (h!32774 tokens!456))) (list!10766 (c!364509 (charsOf!2774 (h!32774 tokens!456)))))))

(declare-fun bs!457575 () Bool)

(assert (= bs!457575 d!680129))

(declare-fun m!2726723 () Bool)

(assert (=> bs!457575 m!2726723))

(assert (=> b!2299048 d!680129))

(declare-fun b!2299360 () Bool)

(declare-fun e!1473515 () List!27466)

(assert (=> b!2299360 (= e!1473515 (Cons!27372 (h!32773 lt!852874) (++!6696 (t!205630 lt!852874) (_2!16132 lt!852869))))))

(declare-fun d!680131 () Bool)

(declare-fun e!1473516 () Bool)

(assert (=> d!680131 e!1473516))

(declare-fun res!983095 () Bool)

(assert (=> d!680131 (=> (not res!983095) (not e!1473516))))

(declare-fun lt!852973 () List!27466)

(declare-fun content!3681 (List!27466) (Set C!13614))

(assert (=> d!680131 (= res!983095 (= (content!3681 lt!852973) (set.union (content!3681 lt!852874) (content!3681 (_2!16132 lt!852869)))))))

(assert (=> d!680131 (= lt!852973 e!1473515)))

(declare-fun c!364554 () Bool)

(assert (=> d!680131 (= c!364554 (is-Nil!27372 lt!852874))))

(assert (=> d!680131 (= (++!6696 lt!852874 (_2!16132 lt!852869)) lt!852973)))

(declare-fun b!2299359 () Bool)

(assert (=> b!2299359 (= e!1473515 (_2!16132 lt!852869))))

(declare-fun b!2299362 () Bool)

(assert (=> b!2299362 (= e!1473516 (or (not (= (_2!16132 lt!852869) Nil!27372)) (= lt!852973 lt!852874)))))

(declare-fun b!2299361 () Bool)

(declare-fun res!983096 () Bool)

(assert (=> b!2299361 (=> (not res!983096) (not e!1473516))))

(assert (=> b!2299361 (= res!983096 (= (size!21579 lt!852973) (+ (size!21579 lt!852874) (size!21579 (_2!16132 lt!852869)))))))

(assert (= (and d!680131 c!364554) b!2299359))

(assert (= (and d!680131 (not c!364554)) b!2299360))

(assert (= (and d!680131 res!983095) b!2299361))

(assert (= (and b!2299361 res!983096) b!2299362))

(declare-fun m!2726733 () Bool)

(assert (=> b!2299360 m!2726733))

(declare-fun m!2726735 () Bool)

(assert (=> d!680131 m!2726735))

(declare-fun m!2726737 () Bool)

(assert (=> d!680131 m!2726737))

(declare-fun m!2726739 () Bool)

(assert (=> d!680131 m!2726739))

(declare-fun m!2726741 () Bool)

(assert (=> b!2299361 m!2726741))

(assert (=> b!2299361 m!2726643))

(declare-fun m!2726743 () Bool)

(assert (=> b!2299361 m!2726743))

(assert (=> b!2299048 d!680131))

(declare-fun d!680135 () Bool)

(declare-fun res!983101 () Bool)

(declare-fun e!1473519 () Bool)

(assert (=> d!680135 (=> (not res!983101) (not e!1473519))))

(assert (=> d!680135 (= res!983101 (validRegex!2539 (regex!4386 r!2363)))))

(assert (=> d!680135 (= (ruleValid!1476 thiss!16613 r!2363) e!1473519)))

(declare-fun b!2299367 () Bool)

(declare-fun res!983102 () Bool)

(assert (=> b!2299367 (=> (not res!983102) (not e!1473519))))

(assert (=> b!2299367 (= res!983102 (not (nullable!1877 (regex!4386 r!2363))))))

(declare-fun b!2299368 () Bool)

(assert (=> b!2299368 (= e!1473519 (not (= (tag!4876 r!2363) (String!29847 ""))))))

(assert (= (and d!680135 res!983101) b!2299367))

(assert (= (and b!2299367 res!983102) b!2299368))

(assert (=> d!680135 m!2726581))

(assert (=> b!2299367 m!2726577))

(assert (=> b!2299059 d!680135))

(declare-fun d!680137 () Bool)

(assert (=> d!680137 (ruleValid!1476 thiss!16613 r!2363)))

(declare-fun lt!852976 () Unit!40271)

(declare-fun choose!13420 (LexerInterface!3983 Rule!8572 List!27468) Unit!40271)

(assert (=> d!680137 (= lt!852976 (choose!13420 thiss!16613 r!2363 rules!1750))))

(assert (=> d!680137 (contains!4770 rules!1750 r!2363)))

(assert (=> d!680137 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!881 thiss!16613 r!2363 rules!1750) lt!852976)))

(declare-fun bs!457576 () Bool)

(assert (= bs!457576 d!680137))

(assert (=> bs!457576 m!2726375))

(declare-fun m!2726745 () Bool)

(assert (=> bs!457576 m!2726745))

(assert (=> bs!457576 m!2726449))

(assert (=> b!2299059 d!680137))

(declare-fun d!680139 () Bool)

(declare-fun lt!852979 () Int)

(assert (=> d!680139 (>= lt!852979 0)))

(declare-fun e!1473526 () Int)

(assert (=> d!680139 (= lt!852979 e!1473526)))

(declare-fun c!364560 () Bool)

(assert (=> d!680139 (= c!364560 (and (is-Cons!27374 rules!1750) (= (h!32775 rules!1750) otherR!12)))))

(assert (=> d!680139 (contains!4770 rules!1750 otherR!12)))

(assert (=> d!680139 (= (getIndex!399 rules!1750 otherR!12) lt!852979)))

(declare-fun b!2299378 () Bool)

(declare-fun e!1473525 () Int)

(assert (=> b!2299378 (= e!1473526 e!1473525)))

(declare-fun c!364559 () Bool)

(assert (=> b!2299378 (= c!364559 (and (is-Cons!27374 rules!1750) (not (= (h!32775 rules!1750) otherR!12))))))

(declare-fun b!2299377 () Bool)

(assert (=> b!2299377 (= e!1473526 0)))

(declare-fun b!2299379 () Bool)

(assert (=> b!2299379 (= e!1473525 (+ 1 (getIndex!399 (t!205632 rules!1750) otherR!12)))))

(declare-fun b!2299380 () Bool)

(assert (=> b!2299380 (= e!1473525 (- 1))))

(assert (= (and d!680139 c!364560) b!2299377))

(assert (= (and d!680139 (not c!364560)) b!2299378))

(assert (= (and b!2299378 c!364559) b!2299379))

(assert (= (and b!2299378 (not c!364559)) b!2299380))

(assert (=> d!680139 m!2726419))

(declare-fun m!2726747 () Bool)

(assert (=> b!2299379 m!2726747))

(assert (=> b!2299060 d!680139))

(declare-fun d!680141 () Bool)

(declare-fun lt!852980 () Int)

(assert (=> d!680141 (>= lt!852980 0)))

(declare-fun e!1473528 () Int)

(assert (=> d!680141 (= lt!852980 e!1473528)))

(declare-fun c!364562 () Bool)

(assert (=> d!680141 (= c!364562 (and (is-Cons!27374 rules!1750) (= (h!32775 rules!1750) r!2363)))))

(assert (=> d!680141 (contains!4770 rules!1750 r!2363)))

(assert (=> d!680141 (= (getIndex!399 rules!1750 r!2363) lt!852980)))

(declare-fun b!2299382 () Bool)

(declare-fun e!1473527 () Int)

(assert (=> b!2299382 (= e!1473528 e!1473527)))

(declare-fun c!364561 () Bool)

(assert (=> b!2299382 (= c!364561 (and (is-Cons!27374 rules!1750) (not (= (h!32775 rules!1750) r!2363))))))

(declare-fun b!2299381 () Bool)

(assert (=> b!2299381 (= e!1473528 0)))

(declare-fun b!2299383 () Bool)

(assert (=> b!2299383 (= e!1473527 (+ 1 (getIndex!399 (t!205632 rules!1750) r!2363)))))

(declare-fun b!2299384 () Bool)

(assert (=> b!2299384 (= e!1473527 (- 1))))

(assert (= (and d!680141 c!364562) b!2299381))

(assert (= (and d!680141 (not c!364562)) b!2299382))

(assert (= (and b!2299382 c!364561) b!2299383))

(assert (= (and b!2299382 (not c!364561)) b!2299384))

(assert (=> d!680141 m!2726449))

(declare-fun m!2726749 () Bool)

(assert (=> b!2299383 m!2726749))

(assert (=> b!2299060 d!680141))

(declare-fun d!680143 () Bool)

(declare-fun res!983103 () Bool)

(declare-fun e!1473529 () Bool)

(assert (=> d!680143 (=> (not res!983103) (not e!1473529))))

(assert (=> d!680143 (= res!983103 (validRegex!2539 (regex!4386 otherR!12)))))

(assert (=> d!680143 (= (ruleValid!1476 thiss!16613 otherR!12) e!1473529)))

(declare-fun b!2299385 () Bool)

(declare-fun res!983104 () Bool)

(assert (=> b!2299385 (=> (not res!983104) (not e!1473529))))

(assert (=> b!2299385 (= res!983104 (not (nullable!1877 (regex!4386 otherR!12))))))

(declare-fun b!2299386 () Bool)

(assert (=> b!2299386 (= e!1473529 (not (= (tag!4876 otherR!12) (String!29847 ""))))))

(assert (= (and d!680143 res!983103) b!2299385))

(assert (= (and b!2299385 res!983104) b!2299386))

(declare-fun m!2726751 () Bool)

(assert (=> d!680143 m!2726751))

(declare-fun m!2726753 () Bool)

(assert (=> b!2299385 m!2726753))

(assert (=> b!2299060 d!680143))

(declare-fun d!680145 () Bool)

(assert (=> d!680145 (ruleValid!1476 thiss!16613 otherR!12)))

(declare-fun lt!852981 () Unit!40271)

(assert (=> d!680145 (= lt!852981 (choose!13420 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!680145 (contains!4770 rules!1750 otherR!12)))

(assert (=> d!680145 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!881 thiss!16613 otherR!12 rules!1750) lt!852981)))

(declare-fun bs!457577 () Bool)

(assert (= bs!457577 d!680145))

(assert (=> bs!457577 m!2726455))

(declare-fun m!2726755 () Bool)

(assert (=> bs!457577 m!2726755))

(assert (=> bs!457577 m!2726419))

(assert (=> b!2299060 d!680145))

(declare-fun d!680147 () Bool)

(declare-fun lt!852984 () Bool)

(assert (=> d!680147 (= lt!852984 (set.member otherR!12 (content!3680 rules!1750)))))

(declare-fun e!1473532 () Bool)

(assert (=> d!680147 (= lt!852984 e!1473532)))

(declare-fun res!983105 () Bool)

(assert (=> d!680147 (=> (not res!983105) (not e!1473532))))

(assert (=> d!680147 (= res!983105 (is-Cons!27374 rules!1750))))

(assert (=> d!680147 (= (contains!4770 rules!1750 otherR!12) lt!852984)))

(declare-fun b!2299391 () Bool)

(declare-fun e!1473533 () Bool)

(assert (=> b!2299391 (= e!1473532 e!1473533)))

(declare-fun res!983106 () Bool)

(assert (=> b!2299391 (=> res!983106 e!1473533)))

(assert (=> b!2299391 (= res!983106 (= (h!32775 rules!1750) otherR!12))))

(declare-fun b!2299392 () Bool)

(assert (=> b!2299392 (= e!1473533 (contains!4770 (t!205632 rules!1750) otherR!12))))

(assert (= (and d!680147 res!983105) b!2299391))

(assert (= (and b!2299391 (not res!983106)) b!2299392))

(assert (=> d!680147 m!2726543))

(declare-fun m!2726757 () Bool)

(assert (=> d!680147 m!2726757))

(declare-fun m!2726759 () Bool)

(assert (=> b!2299392 m!2726759))

(assert (=> b!2299039 d!680147))

(declare-fun d!680149 () Bool)

(declare-fun list!10767 (Conc!8921) List!27467)

(assert (=> d!680149 (= (list!10762 (_1!16130 lt!852876)) (list!10767 (c!364511 (_1!16130 lt!852876))))))

(declare-fun bs!457578 () Bool)

(assert (= bs!457578 d!680149))

(declare-fun m!2726761 () Bool)

(assert (=> bs!457578 m!2726761))

(assert (=> b!2299040 d!680149))

(declare-fun d!680151 () Bool)

(assert (=> d!680151 (= (list!10763 (_2!16130 lt!852876)) (list!10766 (c!364509 (_2!16130 lt!852876))))))

(declare-fun bs!457579 () Bool)

(assert (= bs!457579 d!680151))

(declare-fun m!2726763 () Bool)

(assert (=> bs!457579 m!2726763))

(assert (=> b!2299040 d!680151))

(declare-fun b!2299476 () Bool)

(declare-fun e!1473583 () Bool)

(declare-fun e!1473581 () Bool)

(assert (=> b!2299476 (= e!1473583 e!1473581)))

(declare-fun res!983162 () Bool)

(declare-fun lt!853002 () tuple2!27240)

(assert (=> b!2299476 (= res!983162 (< (size!21578 (_2!16130 lt!853002)) (size!21578 (seqFromList!3090 input!1722))))))

(assert (=> b!2299476 (=> (not res!983162) (not e!1473581))))

(declare-fun b!2299477 () Bool)

(declare-fun e!1473582 () Bool)

(declare-fun lexList!1123 (LexerInterface!3983 List!27468 List!27466) tuple2!27242)

(assert (=> b!2299477 (= e!1473582 (= (list!10763 (_2!16130 lt!853002)) (_2!16131 (lexList!1123 thiss!16613 rules!1750 (list!10763 (seqFromList!3090 input!1722))))))))

(declare-fun b!2299478 () Bool)

(declare-fun isEmpty!15621 (BalanceConc!17570) Bool)

(assert (=> b!2299478 (= e!1473581 (not (isEmpty!15621 (_1!16130 lt!853002))))))

(declare-fun b!2299479 () Bool)

(declare-fun res!983160 () Bool)

(assert (=> b!2299479 (=> (not res!983160) (not e!1473582))))

(assert (=> b!2299479 (= res!983160 (= (list!10762 (_1!16130 lt!853002)) (_1!16131 (lexList!1123 thiss!16613 rules!1750 (list!10763 (seqFromList!3090 input!1722))))))))

(declare-fun d!680153 () Bool)

(assert (=> d!680153 e!1473582))

(declare-fun res!983161 () Bool)

(assert (=> d!680153 (=> (not res!983161) (not e!1473582))))

(assert (=> d!680153 (= res!983161 e!1473583)))

(declare-fun c!364580 () Bool)

(declare-fun size!21584 (BalanceConc!17570) Int)

(assert (=> d!680153 (= c!364580 (> (size!21584 (_1!16130 lt!853002)) 0))))

(declare-fun lexTailRecV2!798 (LexerInterface!3983 List!27468 BalanceConc!17568 BalanceConc!17568 BalanceConc!17568 BalanceConc!17570) tuple2!27240)

(assert (=> d!680153 (= lt!853002 (lexTailRecV2!798 thiss!16613 rules!1750 (seqFromList!3090 input!1722) (BalanceConc!17569 Empty!8920) (seqFromList!3090 input!1722) (BalanceConc!17571 Empty!8921)))))

(assert (=> d!680153 (= (lex!1822 thiss!16613 rules!1750 (seqFromList!3090 input!1722)) lt!853002)))

(declare-fun b!2299480 () Bool)

(assert (=> b!2299480 (= e!1473583 (= (_2!16130 lt!853002) (seqFromList!3090 input!1722)))))

(assert (= (and d!680153 c!364580) b!2299476))

(assert (= (and d!680153 (not c!364580)) b!2299480))

(assert (= (and b!2299476 res!983162) b!2299478))

(assert (= (and d!680153 res!983161) b!2299479))

(assert (= (and b!2299479 res!983160) b!2299477))

(declare-fun m!2726833 () Bool)

(assert (=> b!2299478 m!2726833))

(declare-fun m!2726835 () Bool)

(assert (=> b!2299479 m!2726835))

(assert (=> b!2299479 m!2726391))

(declare-fun m!2726837 () Bool)

(assert (=> b!2299479 m!2726837))

(assert (=> b!2299479 m!2726837))

(declare-fun m!2726839 () Bool)

(assert (=> b!2299479 m!2726839))

(declare-fun m!2726841 () Bool)

(assert (=> d!680153 m!2726841))

(assert (=> d!680153 m!2726391))

(assert (=> d!680153 m!2726391))

(declare-fun m!2726843 () Bool)

(assert (=> d!680153 m!2726843))

(declare-fun m!2726845 () Bool)

(assert (=> b!2299476 m!2726845))

(assert (=> b!2299476 m!2726391))

(declare-fun m!2726847 () Bool)

(assert (=> b!2299476 m!2726847))

(declare-fun m!2726849 () Bool)

(assert (=> b!2299477 m!2726849))

(assert (=> b!2299477 m!2726391))

(assert (=> b!2299477 m!2726837))

(assert (=> b!2299477 m!2726837))

(assert (=> b!2299477 m!2726839))

(assert (=> b!2299040 d!680153))

(declare-fun d!680179 () Bool)

(declare-fun fromListB!1389 (List!27466) BalanceConc!17568)

(assert (=> d!680179 (= (seqFromList!3090 input!1722) (fromListB!1389 input!1722))))

(declare-fun bs!457583 () Bool)

(assert (= bs!457583 d!680179))

(declare-fun m!2726851 () Bool)

(assert (=> bs!457583 m!2726851))

(assert (=> b!2299040 d!680179))

(declare-fun b!2299491 () Bool)

(declare-fun e!1473586 () Bool)

(assert (=> b!2299491 (= e!1473586 tp_is_empty!10689)))

(declare-fun b!2299492 () Bool)

(declare-fun tp!729388 () Bool)

(declare-fun tp!729384 () Bool)

(assert (=> b!2299492 (= e!1473586 (and tp!729388 tp!729384))))

(assert (=> b!2299052 (= tp!729303 e!1473586)))

(declare-fun b!2299493 () Bool)

(declare-fun tp!729387 () Bool)

(assert (=> b!2299493 (= e!1473586 tp!729387)))

(declare-fun b!2299494 () Bool)

(declare-fun tp!729385 () Bool)

(declare-fun tp!729386 () Bool)

(assert (=> b!2299494 (= e!1473586 (and tp!729385 tp!729386))))

(assert (= (and b!2299052 (is-ElementMatch!6734 (regex!4386 otherR!12))) b!2299491))

(assert (= (and b!2299052 (is-Concat!11283 (regex!4386 otherR!12))) b!2299492))

(assert (= (and b!2299052 (is-Star!6734 (regex!4386 otherR!12))) b!2299493))

(assert (= (and b!2299052 (is-Union!6734 (regex!4386 otherR!12))) b!2299494))

(declare-fun b!2299499 () Bool)

(declare-fun e!1473589 () Bool)

(declare-fun tp!729391 () Bool)

(assert (=> b!2299499 (= e!1473589 (and tp_is_empty!10689 tp!729391))))

(assert (=> b!2299064 (= tp!729306 e!1473589)))

(assert (= (and b!2299064 (is-Cons!27372 (t!205630 otherP!12))) b!2299499))

(declare-fun b!2299500 () Bool)

(declare-fun e!1473590 () Bool)

(declare-fun tp!729392 () Bool)

(assert (=> b!2299500 (= e!1473590 (and tp_is_empty!10689 tp!729392))))

(assert (=> b!2299044 (= tp!729309 e!1473590)))

(assert (= (and b!2299044 (is-Cons!27372 (originalCharacters!5156 (h!32774 tokens!456)))) b!2299500))

(declare-fun b!2299501 () Bool)

(declare-fun e!1473591 () Bool)

(declare-fun tp!729393 () Bool)

(assert (=> b!2299501 (= e!1473591 (and tp_is_empty!10689 tp!729393))))

(assert (=> b!2299055 (= tp!729301 e!1473591)))

(assert (= (and b!2299055 (is-Cons!27372 (t!205630 input!1722))) b!2299501))

(declare-fun b!2299502 () Bool)

(declare-fun e!1473592 () Bool)

(assert (=> b!2299502 (= e!1473592 tp_is_empty!10689)))

(declare-fun b!2299503 () Bool)

(declare-fun tp!729398 () Bool)

(declare-fun tp!729394 () Bool)

(assert (=> b!2299503 (= e!1473592 (and tp!729398 tp!729394))))

(assert (=> b!2299056 (= tp!729310 e!1473592)))

(declare-fun b!2299504 () Bool)

(declare-fun tp!729397 () Bool)

(assert (=> b!2299504 (= e!1473592 tp!729397)))

(declare-fun b!2299505 () Bool)

(declare-fun tp!729395 () Bool)

(declare-fun tp!729396 () Bool)

(assert (=> b!2299505 (= e!1473592 (and tp!729395 tp!729396))))

(assert (= (and b!2299056 (is-ElementMatch!6734 (regex!4386 (h!32775 rules!1750)))) b!2299502))

(assert (= (and b!2299056 (is-Concat!11283 (regex!4386 (h!32775 rules!1750)))) b!2299503))

(assert (= (and b!2299056 (is-Star!6734 (regex!4386 (h!32775 rules!1750)))) b!2299504))

(assert (= (and b!2299056 (is-Union!6734 (regex!4386 (h!32775 rules!1750)))) b!2299505))

(declare-fun b!2299519 () Bool)

(declare-fun b_free!69357 () Bool)

(declare-fun b_next!70061 () Bool)

(assert (=> b!2299519 (= b_free!69357 (not b_next!70061))))

(declare-fun tp!729412 () Bool)

(declare-fun b_and!183089 () Bool)

(assert (=> b!2299519 (= tp!729412 b_and!183089)))

(declare-fun b_free!69359 () Bool)

(declare-fun b_next!70063 () Bool)

(assert (=> b!2299519 (= b_free!69359 (not b_next!70063))))

(declare-fun t!205670 () Bool)

(declare-fun tb!137423 () Bool)

(assert (=> (and b!2299519 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205670) tb!137423))

(declare-fun result!167520 () Bool)

(assert (= result!167520 result!167478))

(assert (=> d!680051 t!205670))

(declare-fun t!205672 () Bool)

(declare-fun tb!137425 () Bool)

(assert (=> (and b!2299519 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205672) tb!137425))

(declare-fun result!167522 () Bool)

(assert (= result!167522 result!167488))

(assert (=> b!2299271 t!205672))

(assert (=> d!680107 t!205672))

(declare-fun b_and!183091 () Bool)

(declare-fun tp!729409 () Bool)

(assert (=> b!2299519 (= tp!729409 (and (=> t!205670 result!167520) (=> t!205672 result!167522) b_and!183091))))

(declare-fun b!2299516 () Bool)

(declare-fun e!1473609 () Bool)

(declare-fun e!1473610 () Bool)

(declare-fun tp!729413 () Bool)

(assert (=> b!2299516 (= e!1473610 (and (inv!36998 (h!32774 (t!205631 tokens!456))) e!1473609 tp!729413))))

(declare-fun b!2299517 () Bool)

(declare-fun e!1473605 () Bool)

(declare-fun tp!729410 () Bool)

(assert (=> b!2299517 (= e!1473609 (and (inv!21 (value!138822 (h!32774 (t!205631 tokens!456)))) e!1473605 tp!729410))))

(declare-fun e!1473606 () Bool)

(assert (=> b!2299519 (= e!1473606 (and tp!729412 tp!729409))))

(declare-fun b!2299518 () Bool)

(declare-fun tp!729411 () Bool)

(assert (=> b!2299518 (= e!1473605 (and tp!729411 (inv!36994 (tag!4876 (rule!6730 (h!32774 (t!205631 tokens!456))))) (inv!36997 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) e!1473606))))

(assert (=> b!2299057 (= tp!729302 e!1473610)))

(assert (= b!2299518 b!2299519))

(assert (= b!2299517 b!2299518))

(assert (= b!2299516 b!2299517))

(assert (= (and b!2299057 (is-Cons!27373 (t!205631 tokens!456))) b!2299516))

(declare-fun m!2726853 () Bool)

(assert (=> b!2299516 m!2726853))

(declare-fun m!2726855 () Bool)

(assert (=> b!2299517 m!2726855))

(declare-fun m!2726857 () Bool)

(assert (=> b!2299518 m!2726857))

(declare-fun m!2726859 () Bool)

(assert (=> b!2299518 m!2726859))

(declare-fun b!2299530 () Bool)

(declare-fun b_free!69361 () Bool)

(declare-fun b_next!70065 () Bool)

(assert (=> b!2299530 (= b_free!69361 (not b_next!70065))))

(declare-fun tp!729423 () Bool)

(declare-fun b_and!183093 () Bool)

(assert (=> b!2299530 (= tp!729423 b_and!183093)))

(declare-fun b_free!69363 () Bool)

(declare-fun b_next!70067 () Bool)

(assert (=> b!2299530 (= b_free!69363 (not b_next!70067))))

(declare-fun t!205674 () Bool)

(declare-fun tb!137427 () Bool)

(assert (=> (and b!2299530 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205674) tb!137427))

(declare-fun result!167526 () Bool)

(assert (= result!167526 result!167478))

(assert (=> d!680051 t!205674))

(declare-fun tb!137429 () Bool)

(declare-fun t!205676 () Bool)

(assert (=> (and b!2299530 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205676) tb!137429))

(declare-fun result!167528 () Bool)

(assert (= result!167528 result!167488))

(assert (=> b!2299271 t!205676))

(assert (=> d!680107 t!205676))

(declare-fun tp!729425 () Bool)

(declare-fun b_and!183095 () Bool)

(assert (=> b!2299530 (= tp!729425 (and (=> t!205674 result!167526) (=> t!205676 result!167528) b_and!183095))))

(declare-fun e!1473622 () Bool)

(assert (=> b!2299530 (= e!1473622 (and tp!729423 tp!729425))))

(declare-fun tp!729422 () Bool)

(declare-fun e!1473619 () Bool)

(declare-fun b!2299529 () Bool)

(assert (=> b!2299529 (= e!1473619 (and tp!729422 (inv!36994 (tag!4876 (h!32775 (t!205632 rules!1750)))) (inv!36997 (transformation!4386 (h!32775 (t!205632 rules!1750)))) e!1473622))))

(declare-fun b!2299528 () Bool)

(declare-fun e!1473620 () Bool)

(declare-fun tp!729424 () Bool)

(assert (=> b!2299528 (= e!1473620 (and e!1473619 tp!729424))))

(assert (=> b!2299047 (= tp!729294 e!1473620)))

(assert (= b!2299529 b!2299530))

(assert (= b!2299528 b!2299529))

(assert (= (and b!2299047 (is-Cons!27374 (t!205632 rules!1750))) b!2299528))

(declare-fun m!2726861 () Bool)

(assert (=> b!2299529 m!2726861))

(declare-fun m!2726863 () Bool)

(assert (=> b!2299529 m!2726863))

(declare-fun b!2299531 () Bool)

(declare-fun e!1473623 () Bool)

(assert (=> b!2299531 (= e!1473623 tp_is_empty!10689)))

(declare-fun b!2299532 () Bool)

(declare-fun tp!729430 () Bool)

(declare-fun tp!729426 () Bool)

(assert (=> b!2299532 (= e!1473623 (and tp!729430 tp!729426))))

(assert (=> b!2299058 (= tp!729304 e!1473623)))

(declare-fun b!2299533 () Bool)

(declare-fun tp!729429 () Bool)

(assert (=> b!2299533 (= e!1473623 tp!729429)))

(declare-fun b!2299534 () Bool)

(declare-fun tp!729427 () Bool)

(declare-fun tp!729428 () Bool)

(assert (=> b!2299534 (= e!1473623 (and tp!729427 tp!729428))))

(assert (= (and b!2299058 (is-ElementMatch!6734 (regex!4386 (rule!6730 (h!32774 tokens!456))))) b!2299531))

(assert (= (and b!2299058 (is-Concat!11283 (regex!4386 (rule!6730 (h!32774 tokens!456))))) b!2299532))

(assert (= (and b!2299058 (is-Star!6734 (regex!4386 (rule!6730 (h!32774 tokens!456))))) b!2299533))

(assert (= (and b!2299058 (is-Union!6734 (regex!4386 (rule!6730 (h!32774 tokens!456))))) b!2299534))

(declare-fun b!2299535 () Bool)

(declare-fun e!1473624 () Bool)

(assert (=> b!2299535 (= e!1473624 tp_is_empty!10689)))

(declare-fun b!2299536 () Bool)

(declare-fun tp!729435 () Bool)

(declare-fun tp!729431 () Bool)

(assert (=> b!2299536 (= e!1473624 (and tp!729435 tp!729431))))

(assert (=> b!2299069 (= tp!729305 e!1473624)))

(declare-fun b!2299537 () Bool)

(declare-fun tp!729434 () Bool)

(assert (=> b!2299537 (= e!1473624 tp!729434)))

(declare-fun b!2299538 () Bool)

(declare-fun tp!729432 () Bool)

(declare-fun tp!729433 () Bool)

(assert (=> b!2299538 (= e!1473624 (and tp!729432 tp!729433))))

(assert (= (and b!2299069 (is-ElementMatch!6734 (regex!4386 r!2363))) b!2299535))

(assert (= (and b!2299069 (is-Concat!11283 (regex!4386 r!2363))) b!2299536))

(assert (= (and b!2299069 (is-Star!6734 (regex!4386 r!2363))) b!2299537))

(assert (= (and b!2299069 (is-Union!6734 (regex!4386 r!2363))) b!2299538))

(declare-fun b!2299539 () Bool)

(declare-fun e!1473625 () Bool)

(declare-fun tp!729436 () Bool)

(assert (=> b!2299539 (= e!1473625 (and tp_is_empty!10689 tp!729436))))

(assert (=> b!2299061 (= tp!729297 e!1473625)))

(assert (= (and b!2299061 (is-Cons!27372 (t!205630 suffix!886))) b!2299539))

(declare-fun b_lambda!73245 () Bool)

(assert (= b_lambda!73235 (or (and b!2299068 b_free!69331 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299070 b_free!69327 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299045 b_free!69339) (and b!2299519 b_free!69359 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299049 b_free!69335 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299530 b_free!69363 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) b_lambda!73245)))

(declare-fun b_lambda!73247 () Bool)

(assert (= b_lambda!73237 (or (and b!2299068 b_free!69331 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299070 b_free!69327 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299045 b_free!69339) (and b!2299519 b_free!69359 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299049 b_free!69335 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (and b!2299530 b_free!69363 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) b_lambda!73247)))

(push 1)

(assert (not b!2299274))

(assert (not d!680105))

(assert (not b!2299499))

(assert (not b!2299345))

(assert (not b!2299494))

(assert (not b!2299344))

(assert (not b!2299221))

(assert (not d!680179))

(assert (not b!2299479))

(assert (not b!2299478))

(assert (not b!2299517))

(assert tp_is_empty!10689)

(assert b_and!183059)

(assert b_and!183091)

(assert b_and!183009)

(assert (not d!680149))

(assert (not b!2299504))

(assert b_and!183061)

(assert (not b!2299190))

(assert (not d!680065))

(assert (not d!680151))

(assert (not b!2299229))

(assert b_and!183089)

(assert (not b!2299259))

(assert (not b!2299342))

(assert (not b_next!70065))

(assert (not b!2299477))

(assert (not b_lambda!73245))

(assert (not d!680077))

(assert (not b!2299518))

(assert (not b!2299226))

(assert (not b_next!70067))

(assert b_and!183017)

(assert (not d!680059))

(assert (not b!2299347))

(assert (not d!680141))

(assert (not b!2299260))

(assert b_and!183013)

(assert (not b!2299503))

(assert (not d!680051))

(assert (not b!2299176))

(assert (not b!2299283))

(assert (not b!2299383))

(assert (not b!2299361))

(assert (not b!2299492))

(assert (not b!2299528))

(assert b_and!183095)

(assert (not b!2299181))

(assert (not d!680143))

(assert (not d!680129))

(assert (not b_next!70037))

(assert (not b!2299360))

(assert (not b_next!70041))

(assert (not b!2299265))

(assert (not b!2299533))

(assert (not b!2299258))

(assert (not b!2299539))

(assert (not b!2299392))

(assert (not b!2299537))

(assert (not d!680153))

(assert (not b!2299341))

(assert (not b!2299339))

(assert (not b!2299298))

(assert (not d!680067))

(assert (not b!2299493))

(assert (not b!2299516))

(assert (not d!680145))

(assert (not d!680093))

(assert (not b_lambda!73233))

(assert (not d!680137))

(assert (not b_next!70043))

(assert (not d!680139))

(assert (not b!2299281))

(assert (not b_next!70063))

(assert (not b_next!70033))

(assert (not b!2299275))

(assert b_and!183057)

(assert (not b!2299271))

(assert (not b_next!70031))

(assert (not b!2299278))

(assert (not b!2299501))

(assert (not d!680047))

(assert (not d!680097))

(assert (not b_next!70029))

(assert (not b!2299367))

(assert (not b!2299385))

(assert (not b!2299340))

(assert (not b!2299272))

(assert (not bm!136973))

(assert (not b!2299343))

(assert (not tb!137391))

(assert (not b!2299538))

(assert (not d!680107))

(assert (not d!680147))

(assert (not d!680085))

(assert b_and!183093)

(assert (not d!680131))

(assert (not tb!137399))

(assert (not b!2299529))

(assert (not b!2299532))

(assert (not b!2299246))

(assert (not b!2299505))

(assert (not b!2299244))

(assert (not b!2299500))

(assert (not b!2299536))

(assert (not b!2299273))

(assert (not d!680063))

(assert (not b!2299379))

(assert b_and!183063)

(assert b_and!183021)

(assert (not d!680103))

(assert (not b_next!70061))

(assert (not b!2299225))

(assert (not b!2299279))

(assert (not b!2299277))

(assert (not b!2299224))

(assert (not d!680049))

(assert (not b!2299282))

(assert (not b_next!70035))

(assert (not b!2299247))

(assert (not b!2299534))

(assert (not bm!136970))

(assert (not b!2299222))

(assert (not b!2299476))

(assert (not b!2299248))

(assert (not b_lambda!73247))

(assert (not d!680135))

(assert (not d!680083))

(assert (not b!2299187))

(assert (not d!680111))

(assert (not b_next!70039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!183061)

(assert b_and!183089)

(assert (not b_next!70065))

(assert b_and!183013)

(assert b_and!183095)

(assert (not b_next!70029))

(assert b_and!183093)

(assert (not b_next!70061))

(assert (not b_next!70035))

(assert (not b_next!70039))

(assert b_and!183009)

(assert b_and!183059)

(assert b_and!183091)

(assert (not b_next!70067))

(assert b_and!183017)

(assert (not b_next!70037))

(assert (not b_next!70041))

(assert (not b_next!70043))

(assert (not b_next!70063))

(assert (not b_next!70033))

(assert b_and!183057)

(assert (not b_next!70031))

(assert b_and!183063)

(assert b_and!183021)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!680145 d!680143))

(declare-fun d!680215 () Bool)

(assert (=> d!680215 (ruleValid!1476 thiss!16613 otherR!12)))

(assert (=> d!680215 true))

(declare-fun _$65!1170 () Unit!40271)

(assert (=> d!680215 (= (choose!13420 thiss!16613 otherR!12 rules!1750) _$65!1170)))

(declare-fun bs!457590 () Bool)

(assert (= bs!457590 d!680215))

(assert (=> bs!457590 m!2726455))

(assert (=> d!680145 d!680215))

(assert (=> d!680145 d!680147))

(declare-fun b!2299682 () Bool)

(declare-fun e!1473714 () List!27466)

(assert (=> b!2299682 (= e!1473714 (Cons!27372 (h!32773 (t!205630 lt!852874)) (++!6696 (t!205630 (t!205630 lt!852874)) (_2!16132 lt!852869))))))

(declare-fun d!680217 () Bool)

(declare-fun e!1473715 () Bool)

(assert (=> d!680217 e!1473715))

(declare-fun res!983219 () Bool)

(assert (=> d!680217 (=> (not res!983219) (not e!1473715))))

(declare-fun lt!853037 () List!27466)

(assert (=> d!680217 (= res!983219 (= (content!3681 lt!853037) (set.union (content!3681 (t!205630 lt!852874)) (content!3681 (_2!16132 lt!852869)))))))

(assert (=> d!680217 (= lt!853037 e!1473714)))

(declare-fun c!364595 () Bool)

(assert (=> d!680217 (= c!364595 (is-Nil!27372 (t!205630 lt!852874)))))

(assert (=> d!680217 (= (++!6696 (t!205630 lt!852874) (_2!16132 lt!852869)) lt!853037)))

(declare-fun b!2299681 () Bool)

(assert (=> b!2299681 (= e!1473714 (_2!16132 lt!852869))))

(declare-fun b!2299684 () Bool)

(assert (=> b!2299684 (= e!1473715 (or (not (= (_2!16132 lt!852869) Nil!27372)) (= lt!853037 (t!205630 lt!852874))))))

(declare-fun b!2299683 () Bool)

(declare-fun res!983220 () Bool)

(assert (=> b!2299683 (=> (not res!983220) (not e!1473715))))

(assert (=> b!2299683 (= res!983220 (= (size!21579 lt!853037) (+ (size!21579 (t!205630 lt!852874)) (size!21579 (_2!16132 lt!852869)))))))

(assert (= (and d!680217 c!364595) b!2299681))

(assert (= (and d!680217 (not c!364595)) b!2299682))

(assert (= (and d!680217 res!983219) b!2299683))

(assert (= (and b!2299683 res!983220) b!2299684))

(declare-fun m!2726971 () Bool)

(assert (=> b!2299682 m!2726971))

(declare-fun m!2726973 () Bool)

(assert (=> d!680217 m!2726973))

(declare-fun m!2726975 () Bool)

(assert (=> d!680217 m!2726975))

(assert (=> d!680217 m!2726739))

(declare-fun m!2726977 () Bool)

(assert (=> b!2299683 m!2726977))

(declare-fun m!2726979 () Bool)

(assert (=> b!2299683 m!2726979))

(assert (=> b!2299683 m!2726743))

(assert (=> b!2299360 d!680217))

(declare-fun d!680219 () Bool)

(declare-fun lt!853038 () Int)

(assert (=> d!680219 (>= lt!853038 0)))

(declare-fun e!1473716 () Int)

(assert (=> d!680219 (= lt!853038 e!1473716)))

(declare-fun c!364596 () Bool)

(assert (=> d!680219 (= c!364596 (is-Nil!27372 lt!852870))))

(assert (=> d!680219 (= (size!21579 lt!852870) lt!853038)))

(declare-fun b!2299685 () Bool)

(assert (=> b!2299685 (= e!1473716 0)))

(declare-fun b!2299686 () Bool)

(assert (=> b!2299686 (= e!1473716 (+ 1 (size!21579 (t!205630 lt!852870))))))

(assert (= (and d!680219 c!364596) b!2299685))

(assert (= (and d!680219 (not c!364596)) b!2299686))

(declare-fun m!2726981 () Bool)

(assert (=> b!2299686 m!2726981))

(assert (=> b!2299283 d!680219))

(declare-fun d!680221 () Bool)

(declare-fun lt!853039 () Int)

(assert (=> d!680221 (>= lt!853039 0)))

(declare-fun e!1473717 () Int)

(assert (=> d!680221 (= lt!853039 e!1473717)))

(declare-fun c!364597 () Bool)

(assert (=> d!680221 (= c!364597 (is-Nil!27372 lt!852874))))

(assert (=> d!680221 (= (size!21579 lt!852874) lt!853039)))

(declare-fun b!2299687 () Bool)

(assert (=> b!2299687 (= e!1473717 0)))

(declare-fun b!2299688 () Bool)

(assert (=> b!2299688 (= e!1473717 (+ 1 (size!21579 (t!205630 lt!852874))))))

(assert (= (and d!680221 c!364597) b!2299687))

(assert (= (and d!680221 (not c!364597)) b!2299688))

(assert (=> b!2299688 m!2726979))

(assert (=> b!2299283 d!680221))

(declare-fun b!2299690 () Bool)

(declare-fun res!983222 () Bool)

(declare-fun e!1473719 () Bool)

(assert (=> b!2299690 (=> (not res!983222) (not e!1473719))))

(assert (=> b!2299690 (= res!983222 (= (head!5027 (tail!3320 lt!852874)) (head!5027 (tail!3320 input!1722))))))

(declare-fun b!2299691 () Bool)

(assert (=> b!2299691 (= e!1473719 (isPrefix!2376 (tail!3320 (tail!3320 lt!852874)) (tail!3320 (tail!3320 input!1722))))))

(declare-fun b!2299692 () Bool)

(declare-fun e!1473718 () Bool)

(assert (=> b!2299692 (= e!1473718 (>= (size!21579 (tail!3320 input!1722)) (size!21579 (tail!3320 lt!852874))))))

(declare-fun b!2299689 () Bool)

(declare-fun e!1473720 () Bool)

(assert (=> b!2299689 (= e!1473720 e!1473719)))

(declare-fun res!983221 () Bool)

(assert (=> b!2299689 (=> (not res!983221) (not e!1473719))))

(assert (=> b!2299689 (= res!983221 (not (is-Nil!27372 (tail!3320 input!1722))))))

(declare-fun d!680223 () Bool)

(assert (=> d!680223 e!1473718))

(declare-fun res!983224 () Bool)

(assert (=> d!680223 (=> res!983224 e!1473718)))

(declare-fun lt!853040 () Bool)

(assert (=> d!680223 (= res!983224 (not lt!853040))))

(assert (=> d!680223 (= lt!853040 e!1473720)))

(declare-fun res!983223 () Bool)

(assert (=> d!680223 (=> res!983223 e!1473720)))

(assert (=> d!680223 (= res!983223 (is-Nil!27372 (tail!3320 lt!852874)))))

(assert (=> d!680223 (= (isPrefix!2376 (tail!3320 lt!852874) (tail!3320 input!1722)) lt!853040)))

(assert (= (and d!680223 (not res!983223)) b!2299689))

(assert (= (and b!2299689 res!983221) b!2299690))

(assert (= (and b!2299690 res!983222) b!2299691))

(assert (= (and d!680223 (not res!983224)) b!2299692))

(assert (=> b!2299690 m!2726639))

(declare-fun m!2726983 () Bool)

(assert (=> b!2299690 m!2726983))

(assert (=> b!2299690 m!2726603))

(declare-fun m!2726985 () Bool)

(assert (=> b!2299690 m!2726985))

(assert (=> b!2299691 m!2726639))

(declare-fun m!2726987 () Bool)

(assert (=> b!2299691 m!2726987))

(assert (=> b!2299691 m!2726603))

(declare-fun m!2726989 () Bool)

(assert (=> b!2299691 m!2726989))

(assert (=> b!2299691 m!2726987))

(assert (=> b!2299691 m!2726989))

(declare-fun m!2726991 () Bool)

(assert (=> b!2299691 m!2726991))

(assert (=> b!2299692 m!2726603))

(declare-fun m!2726993 () Bool)

(assert (=> b!2299692 m!2726993))

(assert (=> b!2299692 m!2726639))

(declare-fun m!2726995 () Bool)

(assert (=> b!2299692 m!2726995))

(assert (=> b!2299278 d!680223))

(declare-fun d!680225 () Bool)

(assert (=> d!680225 (= (tail!3320 lt!852874) (t!205630 lt!852874))))

(assert (=> b!2299278 d!680225))

(declare-fun d!680227 () Bool)

(assert (=> d!680227 (= (tail!3320 input!1722) (t!205630 input!1722))))

(assert (=> b!2299278 d!680227))

(declare-fun d!680229 () Bool)

(assert (=> d!680229 (= (isEmpty!15620 lt!852970) (not (is-Some!5379 lt!852970)))))

(assert (=> d!680111 d!680229))

(declare-fun b!2299694 () Bool)

(declare-fun res!983226 () Bool)

(declare-fun e!1473722 () Bool)

(assert (=> b!2299694 (=> (not res!983226) (not e!1473722))))

(assert (=> b!2299694 (= res!983226 (= (head!5027 input!1722) (head!5027 input!1722)))))

(declare-fun b!2299695 () Bool)

(assert (=> b!2299695 (= e!1473722 (isPrefix!2376 (tail!3320 input!1722) (tail!3320 input!1722)))))

(declare-fun b!2299696 () Bool)

(declare-fun e!1473721 () Bool)

(assert (=> b!2299696 (= e!1473721 (>= (size!21579 input!1722) (size!21579 input!1722)))))

(declare-fun b!2299693 () Bool)

(declare-fun e!1473723 () Bool)

(assert (=> b!2299693 (= e!1473723 e!1473722)))

(declare-fun res!983225 () Bool)

(assert (=> b!2299693 (=> (not res!983225) (not e!1473722))))

(assert (=> b!2299693 (= res!983225 (not (is-Nil!27372 input!1722)))))

(declare-fun d!680231 () Bool)

(assert (=> d!680231 e!1473721))

(declare-fun res!983228 () Bool)

(assert (=> d!680231 (=> res!983228 e!1473721)))

(declare-fun lt!853041 () Bool)

(assert (=> d!680231 (= res!983228 (not lt!853041))))

(assert (=> d!680231 (= lt!853041 e!1473723)))

(declare-fun res!983227 () Bool)

(assert (=> d!680231 (=> res!983227 e!1473723)))

(assert (=> d!680231 (= res!983227 (is-Nil!27372 input!1722))))

(assert (=> d!680231 (= (isPrefix!2376 input!1722 input!1722) lt!853041)))

(assert (= (and d!680231 (not res!983227)) b!2299693))

(assert (= (and b!2299693 res!983225) b!2299694))

(assert (= (and b!2299694 res!983226) b!2299695))

(assert (= (and d!680231 (not res!983228)) b!2299696))

(assert (=> b!2299694 m!2726599))

(assert (=> b!2299694 m!2726599))

(assert (=> b!2299695 m!2726603))

(assert (=> b!2299695 m!2726603))

(assert (=> b!2299695 m!2726603))

(assert (=> b!2299695 m!2726603))

(declare-fun m!2726997 () Bool)

(assert (=> b!2299695 m!2726997))

(assert (=> b!2299696 m!2726607))

(assert (=> b!2299696 m!2726607))

(assert (=> d!680111 d!680231))

(declare-fun d!680233 () Bool)

(assert (=> d!680233 (isPrefix!2376 input!1722 input!1722)))

(declare-fun lt!853044 () Unit!40271)

(declare-fun choose!13424 (List!27466 List!27466) Unit!40271)

(assert (=> d!680233 (= lt!853044 (choose!13424 input!1722 input!1722))))

(assert (=> d!680233 (= (lemmaIsPrefixRefl!1506 input!1722 input!1722) lt!853044)))

(declare-fun bs!457591 () Bool)

(assert (= bs!457591 d!680233))

(assert (=> bs!457591 m!2726689))

(declare-fun m!2726999 () Bool)

(assert (=> bs!457591 m!2726999))

(assert (=> d!680111 d!680233))

(declare-fun d!680235 () Bool)

(assert (=> d!680235 true))

(declare-fun lt!853047 () Bool)

(declare-fun lambda!85910 () Int)

(declare-fun forall!5501 (List!27468 Int) Bool)

(assert (=> d!680235 (= lt!853047 (forall!5501 rules!1750 lambda!85910))))

(declare-fun e!1473729 () Bool)

(assert (=> d!680235 (= lt!853047 e!1473729)))

(declare-fun res!983240 () Bool)

(assert (=> d!680235 (=> res!983240 e!1473729)))

(assert (=> d!680235 (= res!983240 (not (is-Cons!27374 rules!1750)))))

(assert (=> d!680235 (= (rulesValidInductive!1548 thiss!16613 rules!1750) lt!853047)))

(declare-fun b!2299701 () Bool)

(declare-fun e!1473728 () Bool)

(assert (=> b!2299701 (= e!1473729 e!1473728)))

(declare-fun res!983241 () Bool)

(assert (=> b!2299701 (=> (not res!983241) (not e!1473728))))

(assert (=> b!2299701 (= res!983241 (ruleValid!1476 thiss!16613 (h!32775 rules!1750)))))

(declare-fun b!2299702 () Bool)

(assert (=> b!2299702 (= e!1473728 (rulesValidInductive!1548 thiss!16613 (t!205632 rules!1750)))))

(assert (= (and d!680235 (not res!983240)) b!2299701))

(assert (= (and b!2299701 res!983241) b!2299702))

(declare-fun m!2727001 () Bool)

(assert (=> d!680235 m!2727001))

(declare-fun m!2727003 () Bool)

(assert (=> b!2299701 m!2727003))

(declare-fun m!2727005 () Bool)

(assert (=> b!2299702 m!2727005))

(assert (=> d!680111 d!680235))

(declare-fun d!680237 () Bool)

(declare-fun lt!853048 () Bool)

(assert (=> d!680237 (= lt!853048 (set.member otherR!12 (content!3680 (t!205632 rules!1750))))))

(declare-fun e!1473730 () Bool)

(assert (=> d!680237 (= lt!853048 e!1473730)))

(declare-fun res!983242 () Bool)

(assert (=> d!680237 (=> (not res!983242) (not e!1473730))))

(assert (=> d!680237 (= res!983242 (is-Cons!27374 (t!205632 rules!1750)))))

(assert (=> d!680237 (= (contains!4770 (t!205632 rules!1750) otherR!12) lt!853048)))

(declare-fun b!2299705 () Bool)

(declare-fun e!1473731 () Bool)

(assert (=> b!2299705 (= e!1473730 e!1473731)))

(declare-fun res!983243 () Bool)

(assert (=> b!2299705 (=> res!983243 e!1473731)))

(assert (=> b!2299705 (= res!983243 (= (h!32775 (t!205632 rules!1750)) otherR!12))))

(declare-fun b!2299706 () Bool)

(assert (=> b!2299706 (= e!1473731 (contains!4770 (t!205632 (t!205632 rules!1750)) otherR!12))))

(assert (= (and d!680237 res!983242) b!2299705))

(assert (= (and b!2299705 (not res!983243)) b!2299706))

(declare-fun m!2727007 () Bool)

(assert (=> d!680237 m!2727007))

(declare-fun m!2727009 () Bool)

(assert (=> d!680237 m!2727009))

(declare-fun m!2727011 () Bool)

(assert (=> b!2299706 m!2727011))

(assert (=> b!2299392 d!680237))

(declare-fun d!680239 () Bool)

(declare-fun lt!853049 () Int)

(assert (=> d!680239 (>= lt!853049 0)))

(declare-fun e!1473732 () Int)

(assert (=> d!680239 (= lt!853049 e!1473732)))

(declare-fun c!364598 () Bool)

(assert (=> d!680239 (= c!364598 (is-Nil!27372 (originalCharacters!5156 (h!32774 tokens!456))))))

(assert (=> d!680239 (= (size!21579 (originalCharacters!5156 (h!32774 tokens!456))) lt!853049)))

(declare-fun b!2299707 () Bool)

(assert (=> b!2299707 (= e!1473732 0)))

(declare-fun b!2299708 () Bool)

(assert (=> b!2299708 (= e!1473732 (+ 1 (size!21579 (t!205630 (originalCharacters!5156 (h!32774 tokens!456))))))))

(assert (= (and d!680239 c!364598) b!2299707))

(assert (= (and d!680239 (not c!364598)) b!2299708))

(declare-fun m!2727013 () Bool)

(assert (=> b!2299708 m!2727013))

(assert (=> b!2299272 d!680239))

(declare-fun d!680241 () Bool)

(assert (=> d!680241 (= (head!5027 lt!852874) (h!32773 lt!852874))))

(assert (=> b!2299281 d!680241))

(declare-fun d!680243 () Bool)

(assert (=> d!680243 (= (head!5027 lt!852870) (h!32773 lt!852870))))

(assert (=> b!2299281 d!680243))

(assert (=> d!680139 d!680147))

(declare-fun d!680245 () Bool)

(assert (=> d!680245 (= (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (h!32773 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (=> b!2299221 d!680245))

(declare-fun b!2299709 () Bool)

(declare-fun res!983244 () Bool)

(declare-fun e!1473733 () Bool)

(assert (=> b!2299709 (=> res!983244 e!1473733)))

(assert (=> b!2299709 (= res!983244 (not (is-IntegerValue!13646 (value!138822 (h!32774 (t!205631 tokens!456))))))))

(declare-fun e!1473735 () Bool)

(assert (=> b!2299709 (= e!1473735 e!1473733)))

(declare-fun b!2299710 () Bool)

(declare-fun e!1473734 () Bool)

(assert (=> b!2299710 (= e!1473734 (inv!16 (value!138822 (h!32774 (t!205631 tokens!456)))))))

(declare-fun b!2299712 () Bool)

(assert (=> b!2299712 (= e!1473735 (inv!17 (value!138822 (h!32774 (t!205631 tokens!456)))))))

(declare-fun b!2299713 () Bool)

(assert (=> b!2299713 (= e!1473733 (inv!15 (value!138822 (h!32774 (t!205631 tokens!456)))))))

(declare-fun d!680247 () Bool)

(declare-fun c!364600 () Bool)

(assert (=> d!680247 (= c!364600 (is-IntegerValue!13644 (value!138822 (h!32774 (t!205631 tokens!456)))))))

(assert (=> d!680247 (= (inv!21 (value!138822 (h!32774 (t!205631 tokens!456)))) e!1473734)))

(declare-fun b!2299711 () Bool)

(assert (=> b!2299711 (= e!1473734 e!1473735)))

(declare-fun c!364599 () Bool)

(assert (=> b!2299711 (= c!364599 (is-IntegerValue!13645 (value!138822 (h!32774 (t!205631 tokens!456)))))))

(assert (= (and d!680247 c!364600) b!2299710))

(assert (= (and d!680247 (not c!364600)) b!2299711))

(assert (= (and b!2299711 c!364599) b!2299712))

(assert (= (and b!2299711 (not c!364599)) b!2299709))

(assert (= (and b!2299709 (not res!983244)) b!2299713))

(declare-fun m!2727015 () Bool)

(assert (=> b!2299710 m!2727015))

(declare-fun m!2727017 () Bool)

(assert (=> b!2299712 m!2727017))

(declare-fun m!2727019 () Bool)

(assert (=> b!2299713 m!2727019))

(assert (=> b!2299517 d!680247))

(declare-fun b!2299725 () Bool)

(declare-fun e!1473741 () List!27466)

(assert (=> b!2299725 (= e!1473741 (++!6696 (list!10766 (left!20746 (c!364509 (charsOf!2774 (h!32774 tokens!456))))) (list!10766 (right!21076 (c!364509 (charsOf!2774 (h!32774 tokens!456)))))))))

(declare-fun d!680249 () Bool)

(declare-fun c!364605 () Bool)

(assert (=> d!680249 (= c!364605 (is-Empty!8920 (c!364509 (charsOf!2774 (h!32774 tokens!456)))))))

(declare-fun e!1473740 () List!27466)

(assert (=> d!680249 (= (list!10766 (c!364509 (charsOf!2774 (h!32774 tokens!456)))) e!1473740)))

(declare-fun b!2299724 () Bool)

(declare-fun list!10770 (IArray!17845) List!27466)

(assert (=> b!2299724 (= e!1473741 (list!10770 (xs!11862 (c!364509 (charsOf!2774 (h!32774 tokens!456))))))))

(declare-fun b!2299722 () Bool)

(assert (=> b!2299722 (= e!1473740 Nil!27372)))

(declare-fun b!2299723 () Bool)

(assert (=> b!2299723 (= e!1473740 e!1473741)))

(declare-fun c!364606 () Bool)

(assert (=> b!2299723 (= c!364606 (is-Leaf!13099 (c!364509 (charsOf!2774 (h!32774 tokens!456)))))))

(assert (= (and d!680249 c!364605) b!2299722))

(assert (= (and d!680249 (not c!364605)) b!2299723))

(assert (= (and b!2299723 c!364606) b!2299724))

(assert (= (and b!2299723 (not c!364606)) b!2299725))

(declare-fun m!2727021 () Bool)

(assert (=> b!2299725 m!2727021))

(declare-fun m!2727023 () Bool)

(assert (=> b!2299725 m!2727023))

(assert (=> b!2299725 m!2727021))

(assert (=> b!2299725 m!2727023))

(declare-fun m!2727025 () Bool)

(assert (=> b!2299725 m!2727025))

(declare-fun m!2727027 () Bool)

(assert (=> b!2299724 m!2727027))

(assert (=> d!680129 d!680249))

(declare-fun d!680251 () Bool)

(declare-fun charsToBigInt!1 (List!27465) Int)

(assert (=> d!680251 (= (inv!17 (value!138822 (h!32774 tokens!456))) (= (charsToBigInt!1 (text!32284 (value!138822 (h!32774 tokens!456)))) (value!138814 (value!138822 (h!32774 tokens!456)))))))

(declare-fun bs!457592 () Bool)

(assert (= bs!457592 d!680251))

(declare-fun m!2727029 () Bool)

(assert (=> bs!457592 m!2727029))

(assert (=> b!2299246 d!680251))

(declare-fun d!680253 () Bool)

(assert (=> d!680253 (= (inv!36994 (tag!4876 (h!32775 (t!205632 rules!1750)))) (= (mod (str.len (value!138821 (tag!4876 (h!32775 (t!205632 rules!1750))))) 2) 0))))

(assert (=> b!2299529 d!680253))

(declare-fun d!680255 () Bool)

(declare-fun res!983245 () Bool)

(declare-fun e!1473742 () Bool)

(assert (=> d!680255 (=> (not res!983245) (not e!1473742))))

(assert (=> d!680255 (= res!983245 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toValue!6192 (transformation!4386 (h!32775 (t!205632 rules!1750))))))))

(assert (=> d!680255 (= (inv!36997 (transformation!4386 (h!32775 (t!205632 rules!1750)))) e!1473742)))

(declare-fun b!2299726 () Bool)

(assert (=> b!2299726 (= e!1473742 (equivClasses!1698 (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toValue!6192 (transformation!4386 (h!32775 (t!205632 rules!1750))))))))

(assert (= (and d!680255 res!983245) b!2299726))

(declare-fun m!2727031 () Bool)

(assert (=> d!680255 m!2727031))

(declare-fun m!2727033 () Bool)

(assert (=> b!2299726 m!2727033))

(assert (=> b!2299529 d!680255))

(declare-fun bs!457593 () Bool)

(declare-fun d!680257 () Bool)

(assert (= bs!457593 (and d!680257 d!680235)))

(declare-fun lambda!85913 () Int)

(assert (=> bs!457593 (= lambda!85913 lambda!85910)))

(assert (=> d!680257 true))

(declare-fun lt!853052 () Bool)

(assert (=> d!680257 (= lt!853052 (rulesValidInductive!1548 thiss!16613 rules!1750))))

(assert (=> d!680257 (= lt!853052 (forall!5501 rules!1750 lambda!85913))))

(assert (=> d!680257 (= (rulesValid!1623 thiss!16613 rules!1750) lt!853052)))

(declare-fun bs!457594 () Bool)

(assert (= bs!457594 d!680257))

(assert (=> bs!457594 m!2726693))

(declare-fun m!2727035 () Bool)

(assert (=> bs!457594 m!2727035))

(assert (=> d!680083 d!680257))

(declare-fun d!680259 () Bool)

(assert (=> d!680259 (= (isDefined!4239 lt!852970) (not (isEmpty!15620 lt!852970)))))

(declare-fun bs!457595 () Bool)

(assert (= bs!457595 d!680259))

(assert (=> bs!457595 m!2726687))

(assert (=> b!2299339 d!680259))

(declare-fun d!680261 () Bool)

(declare-fun charsToInt!0 (List!27465) (_ BitVec 32))

(assert (=> d!680261 (= (inv!16 (value!138822 (h!32774 tokens!456))) (= (charsToInt!0 (text!32283 (value!138822 (h!32774 tokens!456)))) (value!138813 (value!138822 (h!32774 tokens!456)))))))

(declare-fun bs!457596 () Bool)

(assert (= bs!457596 d!680261))

(declare-fun m!2727037 () Bool)

(assert (=> bs!457596 m!2727037))

(assert (=> b!2299244 d!680261))

(declare-fun d!680263 () Bool)

(declare-fun nullableFct!458 (Regex!6734) Bool)

(assert (=> d!680263 (= (nullable!1877 (regex!4386 r!2363)) (nullableFct!458 (regex!4386 r!2363)))))

(declare-fun bs!457597 () Bool)

(assert (= bs!457597 d!680263))

(declare-fun m!2727039 () Bool)

(assert (=> bs!457597 m!2727039))

(assert (=> b!2299367 d!680263))

(declare-fun d!680265 () Bool)

(assert (=> d!680265 true))

(declare-fun order!15261 () Int)

(declare-fun lambda!85916 () Int)

(declare-fun order!15263 () Int)

(declare-fun dynLambda!11898 (Int Int) Int)

(declare-fun dynLambda!11899 (Int Int) Int)

(assert (=> d!680265 (< (dynLambda!11898 order!15261 (toChars!6051 (transformation!4386 (h!32775 rules!1750)))) (dynLambda!11899 order!15263 lambda!85916))))

(assert (=> d!680265 true))

(declare-fun order!15265 () Int)

(declare-fun dynLambda!11900 (Int Int) Int)

(assert (=> d!680265 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 (h!32775 rules!1750)))) (dynLambda!11899 order!15263 lambda!85916))))

(declare-fun Forall!1098 (Int) Bool)

(assert (=> d!680265 (= (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (h!32775 rules!1750)))) (Forall!1098 lambda!85916))))

(declare-fun bs!457598 () Bool)

(assert (= bs!457598 d!680265))

(declare-fun m!2727041 () Bool)

(assert (=> bs!457598 m!2727041))

(assert (=> d!680077 d!680265))

(declare-fun d!680267 () Bool)

(assert (=> d!680267 (= (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (is-Nil!27372 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(assert (=> b!2299226 d!680267))

(declare-fun d!680269 () Bool)

(assert (=> d!680269 (= (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (t!205630 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (=> b!2299226 d!680269))

(declare-fun d!680271 () Bool)

(declare-fun lt!853055 () Bool)

(assert (=> d!680271 (= lt!853055 (isEmpty!15615 (list!10762 (_1!16130 lt!853002))))))

(declare-fun isEmpty!15625 (Conc!8921) Bool)

(assert (=> d!680271 (= lt!853055 (isEmpty!15625 (c!364511 (_1!16130 lt!853002))))))

(assert (=> d!680271 (= (isEmpty!15621 (_1!16130 lt!853002)) lt!853055)))

(declare-fun bs!457599 () Bool)

(assert (= bs!457599 d!680271))

(assert (=> bs!457599 m!2726835))

(assert (=> bs!457599 m!2726835))

(declare-fun m!2727043 () Bool)

(assert (=> bs!457599 m!2727043))

(declare-fun m!2727045 () Bool)

(assert (=> bs!457599 m!2727045))

(assert (=> b!2299478 d!680271))

(declare-fun d!680273 () Bool)

(assert (=> d!680273 true))

(declare-fun lambda!85919 () Int)

(declare-fun order!15267 () Int)

(declare-fun dynLambda!11901 (Int Int) Int)

(assert (=> d!680273 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 otherR!12))) (dynLambda!11901 order!15267 lambda!85919))))

(declare-fun Forall2!715 (Int) Bool)

(assert (=> d!680273 (= (equivClasses!1698 (toChars!6051 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 otherR!12))) (Forall2!715 lambda!85919))))

(declare-fun bs!457600 () Bool)

(assert (= bs!457600 d!680273))

(declare-fun m!2727047 () Bool)

(assert (=> bs!457600 m!2727047))

(assert (=> b!2299190 d!680273))

(assert (=> b!2299224 d!680267))

(assert (=> b!2299224 d!680269))

(declare-fun d!680275 () Bool)

(declare-fun lt!853056 () List!27466)

(assert (=> d!680275 (= (++!6696 (t!205630 lt!852874) lt!853056) (tail!3320 input!1722))))

(declare-fun e!1473745 () List!27466)

(assert (=> d!680275 (= lt!853056 e!1473745)))

(declare-fun c!364607 () Bool)

(assert (=> d!680275 (= c!364607 (is-Cons!27372 (t!205630 lt!852874)))))

(assert (=> d!680275 (>= (size!21579 (tail!3320 input!1722)) (size!21579 (t!205630 lt!852874)))))

(assert (=> d!680275 (= (getSuffix!1155 (tail!3320 input!1722) (t!205630 lt!852874)) lt!853056)))

(declare-fun b!2299735 () Bool)

(assert (=> b!2299735 (= e!1473745 (getSuffix!1155 (tail!3320 (tail!3320 input!1722)) (t!205630 (t!205630 lt!852874))))))

(declare-fun b!2299736 () Bool)

(assert (=> b!2299736 (= e!1473745 (tail!3320 input!1722))))

(assert (= (and d!680275 c!364607) b!2299735))

(assert (= (and d!680275 (not c!364607)) b!2299736))

(declare-fun m!2727049 () Bool)

(assert (=> d!680275 m!2727049))

(assert (=> d!680275 m!2726603))

(assert (=> d!680275 m!2726993))

(assert (=> d!680275 m!2726979))

(assert (=> b!2299735 m!2726603))

(assert (=> b!2299735 m!2726989))

(assert (=> b!2299735 m!2726989))

(declare-fun m!2727051 () Bool)

(assert (=> b!2299735 m!2727051))

(assert (=> b!2299298 d!680275))

(assert (=> b!2299298 d!680227))

(declare-fun d!680277 () Bool)

(declare-fun c!364610 () Bool)

(assert (=> d!680277 (= c!364610 (is-Node!8920 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(declare-fun e!1473750 () Bool)

(assert (=> d!680277 (= (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))) e!1473750)))

(declare-fun b!2299743 () Bool)

(declare-fun inv!37005 (Conc!8920) Bool)

(assert (=> b!2299743 (= e!1473750 (inv!37005 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(declare-fun b!2299744 () Bool)

(declare-fun e!1473751 () Bool)

(assert (=> b!2299744 (= e!1473750 e!1473751)))

(declare-fun res!983250 () Bool)

(assert (=> b!2299744 (= res!983250 (not (is-Leaf!13099 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))))))

(assert (=> b!2299744 (=> res!983250 e!1473751)))

(declare-fun b!2299745 () Bool)

(declare-fun inv!37006 (Conc!8920) Bool)

(assert (=> b!2299745 (= e!1473751 (inv!37006 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(assert (= (and d!680277 c!364610) b!2299743))

(assert (= (and d!680277 (not c!364610)) b!2299744))

(assert (= (and b!2299744 (not res!983250)) b!2299745))

(declare-fun m!2727053 () Bool)

(assert (=> b!2299743 m!2727053))

(declare-fun m!2727055 () Bool)

(assert (=> b!2299745 m!2727055))

(assert (=> b!2299273 d!680277))

(declare-fun d!680279 () Bool)

(declare-fun c!364613 () Bool)

(assert (=> d!680279 (= c!364613 (is-Nil!27372 lt!852973))))

(declare-fun e!1473754 () (Set C!13614))

(assert (=> d!680279 (= (content!3681 lt!852973) e!1473754)))

(declare-fun b!2299750 () Bool)

(assert (=> b!2299750 (= e!1473754 (as set.empty (Set C!13614)))))

(declare-fun b!2299751 () Bool)

(assert (=> b!2299751 (= e!1473754 (set.union (set.insert (h!32773 lt!852973) (as set.empty (Set C!13614))) (content!3681 (t!205630 lt!852973))))))

(assert (= (and d!680279 c!364613) b!2299750))

(assert (= (and d!680279 (not c!364613)) b!2299751))

(declare-fun m!2727057 () Bool)

(assert (=> b!2299751 m!2727057))

(declare-fun m!2727059 () Bool)

(assert (=> b!2299751 m!2727059))

(assert (=> d!680131 d!680279))

(declare-fun d!680281 () Bool)

(declare-fun c!364614 () Bool)

(assert (=> d!680281 (= c!364614 (is-Nil!27372 lt!852874))))

(declare-fun e!1473755 () (Set C!13614))

(assert (=> d!680281 (= (content!3681 lt!852874) e!1473755)))

(declare-fun b!2299752 () Bool)

(assert (=> b!2299752 (= e!1473755 (as set.empty (Set C!13614)))))

(declare-fun b!2299753 () Bool)

(assert (=> b!2299753 (= e!1473755 (set.union (set.insert (h!32773 lt!852874) (as set.empty (Set C!13614))) (content!3681 (t!205630 lt!852874))))))

(assert (= (and d!680281 c!364614) b!2299752))

(assert (= (and d!680281 (not c!364614)) b!2299753))

(declare-fun m!2727061 () Bool)

(assert (=> b!2299753 m!2727061))

(assert (=> b!2299753 m!2726975))

(assert (=> d!680131 d!680281))

(declare-fun d!680283 () Bool)

(declare-fun c!364615 () Bool)

(assert (=> d!680283 (= c!364615 (is-Nil!27372 (_2!16132 lt!852869)))))

(declare-fun e!1473756 () (Set C!13614))

(assert (=> d!680283 (= (content!3681 (_2!16132 lt!852869)) e!1473756)))

(declare-fun b!2299754 () Bool)

(assert (=> b!2299754 (= e!1473756 (as set.empty (Set C!13614)))))

(declare-fun b!2299755 () Bool)

(assert (=> b!2299755 (= e!1473756 (set.union (set.insert (h!32773 (_2!16132 lt!852869)) (as set.empty (Set C!13614))) (content!3681 (t!205630 (_2!16132 lt!852869)))))))

(assert (= (and d!680283 c!364615) b!2299754))

(assert (= (and d!680283 (not c!364615)) b!2299755))

(declare-fun m!2727063 () Bool)

(assert (=> b!2299755 m!2727063))

(declare-fun m!2727065 () Bool)

(assert (=> b!2299755 m!2727065))

(assert (=> d!680131 d!680283))

(declare-fun d!680285 () Bool)

(assert (=> d!680285 (= (list!10763 lt!852946) (list!10766 (c!364509 lt!852946)))))

(declare-fun bs!457601 () Bool)

(assert (= bs!457601 d!680285))

(declare-fun m!2727067 () Bool)

(assert (=> bs!457601 m!2727067))

(assert (=> d!680107 d!680285))

(declare-fun b!2299757 () Bool)

(declare-fun res!983252 () Bool)

(declare-fun e!1473758 () Bool)

(assert (=> b!2299757 (=> (not res!983252) (not e!1473758))))

(assert (=> b!2299757 (= res!983252 (= (head!5027 (tail!3320 otherP!12)) (head!5027 (tail!3320 input!1722))))))

(declare-fun b!2299758 () Bool)

(assert (=> b!2299758 (= e!1473758 (isPrefix!2376 (tail!3320 (tail!3320 otherP!12)) (tail!3320 (tail!3320 input!1722))))))

(declare-fun b!2299759 () Bool)

(declare-fun e!1473757 () Bool)

(assert (=> b!2299759 (= e!1473757 (>= (size!21579 (tail!3320 input!1722)) (size!21579 (tail!3320 otherP!12))))))

(declare-fun b!2299756 () Bool)

(declare-fun e!1473759 () Bool)

(assert (=> b!2299756 (= e!1473759 e!1473758)))

(declare-fun res!983251 () Bool)

(assert (=> b!2299756 (=> (not res!983251) (not e!1473758))))

(assert (=> b!2299756 (= res!983251 (not (is-Nil!27372 (tail!3320 input!1722))))))

(declare-fun d!680287 () Bool)

(assert (=> d!680287 e!1473757))

(declare-fun res!983254 () Bool)

(assert (=> d!680287 (=> res!983254 e!1473757)))

(declare-fun lt!853057 () Bool)

(assert (=> d!680287 (= res!983254 (not lt!853057))))

(assert (=> d!680287 (= lt!853057 e!1473759)))

(declare-fun res!983253 () Bool)

(assert (=> d!680287 (=> res!983253 e!1473759)))

(assert (=> d!680287 (= res!983253 (is-Nil!27372 (tail!3320 otherP!12)))))

(assert (=> d!680287 (= (isPrefix!2376 (tail!3320 otherP!12) (tail!3320 input!1722)) lt!853057)))

(assert (= (and d!680287 (not res!983253)) b!2299756))

(assert (= (and b!2299756 res!983251) b!2299757))

(assert (= (and b!2299757 res!983252) b!2299758))

(assert (= (and d!680287 (not res!983254)) b!2299759))

(assert (=> b!2299757 m!2726601))

(declare-fun m!2727069 () Bool)

(assert (=> b!2299757 m!2727069))

(assert (=> b!2299757 m!2726603))

(assert (=> b!2299757 m!2726985))

(assert (=> b!2299758 m!2726601))

(declare-fun m!2727071 () Bool)

(assert (=> b!2299758 m!2727071))

(assert (=> b!2299758 m!2726603))

(assert (=> b!2299758 m!2726989))

(assert (=> b!2299758 m!2727071))

(assert (=> b!2299758 m!2726989))

(declare-fun m!2727073 () Bool)

(assert (=> b!2299758 m!2727073))

(assert (=> b!2299759 m!2726603))

(assert (=> b!2299759 m!2726993))

(assert (=> b!2299759 m!2726601))

(declare-fun m!2727075 () Bool)

(assert (=> b!2299759 m!2727075))

(assert (=> b!2299259 d!680287))

(declare-fun d!680289 () Bool)

(assert (=> d!680289 (= (tail!3320 otherP!12) (t!205630 otherP!12))))

(assert (=> b!2299259 d!680289))

(assert (=> b!2299259 d!680227))

(declare-fun bs!457602 () Bool)

(declare-fun d!680291 () Bool)

(assert (= bs!457602 (and d!680291 d!680265)))

(declare-fun lambda!85920 () Int)

(assert (=> bs!457602 (= (and (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (h!32775 rules!1750)))) (= (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (h!32775 rules!1750))))) (= lambda!85920 lambda!85916))))

(assert (=> d!680291 true))

(assert (=> d!680291 (< (dynLambda!11898 order!15261 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (dynLambda!11899 order!15263 lambda!85920))))

(assert (=> d!680291 true))

(assert (=> d!680291 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (dynLambda!11899 order!15263 lambda!85920))))

(assert (=> d!680291 (= (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (Forall!1098 lambda!85920))))

(declare-fun bs!457603 () Bool)

(assert (= bs!457603 d!680291))

(declare-fun m!2727077 () Bool)

(assert (=> bs!457603 m!2727077))

(assert (=> d!680093 d!680291))

(declare-fun b!2299760 () Bool)

(declare-fun res!983257 () Bool)

(declare-fun e!1473765 () Bool)

(assert (=> b!2299760 (=> (not res!983257) (not e!1473765))))

(declare-fun call!136985 () Bool)

(assert (=> b!2299760 (= res!983257 (not call!136985))))

(declare-fun b!2299761 () Bool)

(declare-fun e!1473764 () Bool)

(declare-fun lt!853058 () Bool)

(assert (=> b!2299761 (= e!1473764 (not lt!853058))))

(declare-fun bm!136980 () Bool)

(assert (=> bm!136980 (= call!136985 (isEmpty!15619 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun b!2299762 () Bool)

(declare-fun e!1473763 () Bool)

(assert (=> b!2299762 (= e!1473763 (not (= (head!5027 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (c!364510 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))))))))

(declare-fun d!680293 () Bool)

(declare-fun e!1473766 () Bool)

(assert (=> d!680293 e!1473766))

(declare-fun c!364618 () Bool)

(assert (=> d!680293 (= c!364618 (is-EmptyExpr!6734 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun e!1473762 () Bool)

(assert (=> d!680293 (= lt!853058 e!1473762)))

(declare-fun c!364617 () Bool)

(assert (=> d!680293 (= c!364617 (isEmpty!15619 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))

(assert (=> d!680293 (validRegex!2539 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))))

(assert (=> d!680293 (= (matchR!2991 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))) (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) lt!853058)))

(declare-fun b!2299763 () Bool)

(assert (=> b!2299763 (= e!1473765 (= (head!5027 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (c!364510 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))))))

(declare-fun b!2299764 () Bool)

(declare-fun e!1473761 () Bool)

(assert (=> b!2299764 (= e!1473761 e!1473763)))

(declare-fun res!983259 () Bool)

(assert (=> b!2299764 (=> res!983259 e!1473763)))

(assert (=> b!2299764 (= res!983259 call!136985)))

(declare-fun b!2299765 () Bool)

(declare-fun res!983258 () Bool)

(assert (=> b!2299765 (=> res!983258 e!1473763)))

(assert (=> b!2299765 (= res!983258 (not (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))))

(declare-fun b!2299766 () Bool)

(assert (=> b!2299766 (= e!1473762 (nullable!1877 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun b!2299767 () Bool)

(declare-fun res!983261 () Bool)

(assert (=> b!2299767 (=> (not res!983261) (not e!1473765))))

(assert (=> b!2299767 (= res!983261 (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))))))))

(declare-fun b!2299768 () Bool)

(assert (=> b!2299768 (= e!1473766 (= lt!853058 call!136985))))

(declare-fun b!2299769 () Bool)

(assert (=> b!2299769 (= e!1473766 e!1473764)))

(declare-fun c!364616 () Bool)

(assert (=> b!2299769 (= c!364616 (is-EmptyLang!6734 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun b!2299770 () Bool)

(assert (=> b!2299770 (= e!1473762 (matchR!2991 (derivativeStep!1537 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))) (head!5027 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))))) (tail!3320 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))))))))

(declare-fun b!2299771 () Bool)

(declare-fun e!1473760 () Bool)

(assert (=> b!2299771 (= e!1473760 e!1473761)))

(declare-fun res!983262 () Bool)

(assert (=> b!2299771 (=> (not res!983262) (not e!1473761))))

(assert (=> b!2299771 (= res!983262 (not lt!853058))))

(declare-fun b!2299772 () Bool)

(declare-fun res!983255 () Bool)

(assert (=> b!2299772 (=> res!983255 e!1473760)))

(assert (=> b!2299772 (= res!983255 (not (is-ElementMatch!6734 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))))))

(assert (=> b!2299772 (= e!1473764 e!1473760)))

(declare-fun b!2299773 () Bool)

(declare-fun res!983260 () Bool)

(assert (=> b!2299773 (=> res!983260 e!1473760)))

(assert (=> b!2299773 (= res!983260 e!1473765)))

(declare-fun res!983256 () Bool)

(assert (=> b!2299773 (=> (not res!983256) (not e!1473765))))

(assert (=> b!2299773 (= res!983256 lt!853058)))

(assert (= (and d!680293 c!364617) b!2299766))

(assert (= (and d!680293 (not c!364617)) b!2299770))

(assert (= (and d!680293 c!364618) b!2299768))

(assert (= (and d!680293 (not c!364618)) b!2299769))

(assert (= (and b!2299769 c!364616) b!2299761))

(assert (= (and b!2299769 (not c!364616)) b!2299772))

(assert (= (and b!2299772 (not res!983255)) b!2299773))

(assert (= (and b!2299773 res!983256) b!2299760))

(assert (= (and b!2299760 res!983257) b!2299767))

(assert (= (and b!2299767 res!983261) b!2299763))

(assert (= (and b!2299773 (not res!983260)) b!2299771))

(assert (= (and b!2299771 res!983262) b!2299764))

(assert (= (and b!2299764 (not res!983259)) b!2299765))

(assert (= (and b!2299765 (not res!983258)) b!2299762))

(assert (= (or b!2299768 b!2299760 b!2299764) bm!136980))

(assert (=> b!2299762 m!2726699))

(declare-fun m!2727079 () Bool)

(assert (=> b!2299762 m!2727079))

(assert (=> b!2299770 m!2726699))

(assert (=> b!2299770 m!2727079))

(assert (=> b!2299770 m!2727079))

(declare-fun m!2727081 () Bool)

(assert (=> b!2299770 m!2727081))

(assert (=> b!2299770 m!2726699))

(declare-fun m!2727083 () Bool)

(assert (=> b!2299770 m!2727083))

(assert (=> b!2299770 m!2727081))

(assert (=> b!2299770 m!2727083))

(declare-fun m!2727085 () Bool)

(assert (=> b!2299770 m!2727085))

(assert (=> b!2299763 m!2726699))

(assert (=> b!2299763 m!2727079))

(assert (=> b!2299767 m!2726699))

(assert (=> b!2299767 m!2727083))

(assert (=> b!2299767 m!2727083))

(declare-fun m!2727087 () Bool)

(assert (=> b!2299767 m!2727087))

(declare-fun m!2727089 () Bool)

(assert (=> b!2299766 m!2727089))

(assert (=> d!680293 m!2726699))

(declare-fun m!2727091 () Bool)

(assert (=> d!680293 m!2727091))

(declare-fun m!2727093 () Bool)

(assert (=> d!680293 m!2727093))

(assert (=> bm!136980 m!2726699))

(assert (=> bm!136980 m!2727091))

(assert (=> b!2299765 m!2726699))

(assert (=> b!2299765 m!2727083))

(assert (=> b!2299765 m!2727083))

(assert (=> b!2299765 m!2727087))

(assert (=> b!2299344 d!680293))

(declare-fun d!680295 () Bool)

(assert (=> d!680295 (= (get!8251 lt!852970) (v!30471 lt!852970))))

(assert (=> b!2299344 d!680295))

(declare-fun d!680297 () Bool)

(assert (=> d!680297 (= (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))) (list!10766 (c!364509 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun bs!457604 () Bool)

(assert (= bs!457604 d!680297))

(declare-fun m!2727095 () Bool)

(assert (=> bs!457604 m!2727095))

(assert (=> b!2299344 d!680297))

(declare-fun d!680299 () Bool)

(declare-fun lt!853059 () BalanceConc!17568)

(assert (=> d!680299 (= (list!10763 lt!853059) (originalCharacters!5156 (_1!16132 (get!8251 lt!852970))))))

(assert (=> d!680299 (= lt!853059 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))) (value!138822 (_1!16132 (get!8251 lt!852970)))))))

(assert (=> d!680299 (= (charsOf!2774 (_1!16132 (get!8251 lt!852970))) lt!853059)))

(declare-fun b_lambda!73253 () Bool)

(assert (=> (not b_lambda!73253) (not d!680299)))

(declare-fun tb!137439 () Bool)

(declare-fun t!205689 () Bool)

(assert (=> (and b!2299049 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205689) tb!137439))

(declare-fun b!2299774 () Bool)

(declare-fun e!1473767 () Bool)

(declare-fun tp!729500 () Bool)

(assert (=> b!2299774 (= e!1473767 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))) (value!138822 (_1!16132 (get!8251 lt!852970)))))) tp!729500))))

(declare-fun result!167546 () Bool)

(assert (=> tb!137439 (= result!167546 (and (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))) (value!138822 (_1!16132 (get!8251 lt!852970))))) e!1473767))))

(assert (= tb!137439 b!2299774))

(declare-fun m!2727097 () Bool)

(assert (=> b!2299774 m!2727097))

(declare-fun m!2727099 () Bool)

(assert (=> tb!137439 m!2727099))

(assert (=> d!680299 t!205689))

(declare-fun b_and!183105 () Bool)

(assert (= b_and!183061 (and (=> t!205689 result!167546) b_and!183105)))

(declare-fun tb!137441 () Bool)

(declare-fun t!205691 () Bool)

(assert (=> (and b!2299045 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205691) tb!137441))

(declare-fun result!167548 () Bool)

(assert (= result!167548 result!167546))

(assert (=> d!680299 t!205691))

(declare-fun b_and!183107 () Bool)

(assert (= b_and!183063 (and (=> t!205691 result!167548) b_and!183107)))

(declare-fun tb!137443 () Bool)

(declare-fun t!205693 () Bool)

(assert (=> (and b!2299068 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205693) tb!137443))

(declare-fun result!167550 () Bool)

(assert (= result!167550 result!167546))

(assert (=> d!680299 t!205693))

(declare-fun b_and!183109 () Bool)

(assert (= b_and!183059 (and (=> t!205693 result!167550) b_and!183109)))

(declare-fun tb!137445 () Bool)

(declare-fun t!205695 () Bool)

(assert (=> (and b!2299519 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205695) tb!137445))

(declare-fun result!167552 () Bool)

(assert (= result!167552 result!167546))

(assert (=> d!680299 t!205695))

(declare-fun b_and!183111 () Bool)

(assert (= b_and!183091 (and (=> t!205695 result!167552) b_and!183111)))

(declare-fun t!205697 () Bool)

(declare-fun tb!137447 () Bool)

(assert (=> (and b!2299070 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205697) tb!137447))

(declare-fun result!167554 () Bool)

(assert (= result!167554 result!167546))

(assert (=> d!680299 t!205697))

(declare-fun b_and!183113 () Bool)

(assert (= b_and!183057 (and (=> t!205697 result!167554) b_and!183113)))

(declare-fun tb!137449 () Bool)

(declare-fun t!205699 () Bool)

(assert (=> (and b!2299530 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205699) tb!137449))

(declare-fun result!167556 () Bool)

(assert (= result!167556 result!167546))

(assert (=> d!680299 t!205699))

(declare-fun b_and!183115 () Bool)

(assert (= b_and!183095 (and (=> t!205699 result!167556) b_and!183115)))

(declare-fun m!2727101 () Bool)

(assert (=> d!680299 m!2727101))

(declare-fun m!2727103 () Bool)

(assert (=> d!680299 m!2727103))

(assert (=> b!2299344 d!680299))

(declare-fun d!680301 () Bool)

(declare-fun c!364621 () Bool)

(assert (=> d!680301 (= c!364621 (is-Nil!27374 rules!1750))))

(declare-fun e!1473770 () (Set Rule!8572))

(assert (=> d!680301 (= (content!3680 rules!1750) e!1473770)))

(declare-fun b!2299779 () Bool)

(assert (=> b!2299779 (= e!1473770 (as set.empty (Set Rule!8572)))))

(declare-fun b!2299780 () Bool)

(assert (=> b!2299780 (= e!1473770 (set.union (set.insert (h!32775 rules!1750) (as set.empty (Set Rule!8572))) (content!3680 (t!205632 rules!1750))))))

(assert (= (and d!680301 c!364621) b!2299779))

(assert (= (and d!680301 (not c!364621)) b!2299780))

(declare-fun m!2727105 () Bool)

(assert (=> b!2299780 m!2727105))

(assert (=> b!2299780 m!2727007))

(assert (=> d!680147 d!680301))

(declare-fun d!680303 () Bool)

(declare-fun lt!853060 () Bool)

(assert (=> d!680303 (= lt!853060 (set.member (rule!6730 (_1!16132 (get!8251 lt!852970))) (content!3680 rules!1750)))))

(declare-fun e!1473771 () Bool)

(assert (=> d!680303 (= lt!853060 e!1473771)))

(declare-fun res!983263 () Bool)

(assert (=> d!680303 (=> (not res!983263) (not e!1473771))))

(assert (=> d!680303 (= res!983263 (is-Cons!27374 rules!1750))))

(assert (=> d!680303 (= (contains!4770 rules!1750 (rule!6730 (_1!16132 (get!8251 lt!852970)))) lt!853060)))

(declare-fun b!2299781 () Bool)

(declare-fun e!1473772 () Bool)

(assert (=> b!2299781 (= e!1473771 e!1473772)))

(declare-fun res!983264 () Bool)

(assert (=> b!2299781 (=> res!983264 e!1473772)))

(assert (=> b!2299781 (= res!983264 (= (h!32775 rules!1750) (rule!6730 (_1!16132 (get!8251 lt!852970)))))))

(declare-fun b!2299782 () Bool)

(assert (=> b!2299782 (= e!1473772 (contains!4770 (t!205632 rules!1750) (rule!6730 (_1!16132 (get!8251 lt!852970)))))))

(assert (= (and d!680303 res!983263) b!2299781))

(assert (= (and b!2299781 (not res!983264)) b!2299782))

(assert (=> d!680303 m!2726543))

(declare-fun m!2727107 () Bool)

(assert (=> d!680303 m!2727107))

(declare-fun m!2727109 () Bool)

(assert (=> b!2299782 m!2727109))

(assert (=> b!2299343 d!680303))

(assert (=> b!2299343 d!680295))

(declare-fun d!680305 () Bool)

(declare-fun lt!853061 () Int)

(assert (=> d!680305 (>= lt!853061 0)))

(declare-fun e!1473774 () Int)

(assert (=> d!680305 (= lt!853061 e!1473774)))

(declare-fun c!364623 () Bool)

(assert (=> d!680305 (= c!364623 (and (is-Cons!27374 (t!205632 rules!1750)) (= (h!32775 (t!205632 rules!1750)) otherR!12)))))

(assert (=> d!680305 (contains!4770 (t!205632 rules!1750) otherR!12)))

(assert (=> d!680305 (= (getIndex!399 (t!205632 rules!1750) otherR!12) lt!853061)))

(declare-fun b!2299784 () Bool)

(declare-fun e!1473773 () Int)

(assert (=> b!2299784 (= e!1473774 e!1473773)))

(declare-fun c!364622 () Bool)

(assert (=> b!2299784 (= c!364622 (and (is-Cons!27374 (t!205632 rules!1750)) (not (= (h!32775 (t!205632 rules!1750)) otherR!12))))))

(declare-fun b!2299783 () Bool)

(assert (=> b!2299783 (= e!1473774 0)))

(declare-fun b!2299785 () Bool)

(assert (=> b!2299785 (= e!1473773 (+ 1 (getIndex!399 (t!205632 (t!205632 rules!1750)) otherR!12)))))

(declare-fun b!2299786 () Bool)

(assert (=> b!2299786 (= e!1473773 (- 1))))

(assert (= (and d!680305 c!364623) b!2299783))

(assert (= (and d!680305 (not c!364623)) b!2299784))

(assert (= (and b!2299784 c!364622) b!2299785))

(assert (= (and b!2299784 (not c!364622)) b!2299786))

(assert (=> d!680305 m!2726759))

(declare-fun m!2727111 () Bool)

(assert (=> b!2299785 m!2727111))

(assert (=> b!2299379 d!680305))

(declare-fun b!2299787 () Bool)

(declare-fun e!1473776 () Bool)

(declare-fun e!1473777 () Bool)

(assert (=> b!2299787 (= e!1473776 e!1473777)))

(declare-fun res!983268 () Bool)

(assert (=> b!2299787 (=> (not res!983268) (not e!1473777))))

(declare-fun lt!853066 () Option!5380)

(assert (=> b!2299787 (= res!983268 (isDefined!4239 lt!853066))))

(declare-fun b!2299788 () Bool)

(declare-fun res!983265 () Bool)

(assert (=> b!2299788 (=> (not res!983265) (not e!1473777))))

(assert (=> b!2299788 (= res!983265 (= (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!853066)))) (originalCharacters!5156 (_1!16132 (get!8251 lt!853066)))))))

(declare-fun b!2299789 () Bool)

(declare-fun e!1473775 () Option!5380)

(declare-fun lt!853064 () Option!5380)

(declare-fun lt!853063 () Option!5380)

(assert (=> b!2299789 (= e!1473775 (ite (and (is-None!5379 lt!853064) (is-None!5379 lt!853063)) None!5379 (ite (is-None!5379 lt!853063) lt!853064 (ite (is-None!5379 lt!853064) lt!853063 (ite (>= (size!21577 (_1!16132 (v!30471 lt!853064))) (size!21577 (_1!16132 (v!30471 lt!853063)))) lt!853064 lt!853063)))))))

(declare-fun call!136986 () Option!5380)

(assert (=> b!2299789 (= lt!853064 call!136986)))

(assert (=> b!2299789 (= lt!853063 (maxPrefix!2239 thiss!16613 (t!205632 (t!205632 rules!1750)) input!1722))))

(declare-fun d!680307 () Bool)

(assert (=> d!680307 e!1473776))

(declare-fun res!983266 () Bool)

(assert (=> d!680307 (=> res!983266 e!1473776)))

(assert (=> d!680307 (= res!983266 (isEmpty!15620 lt!853066))))

(assert (=> d!680307 (= lt!853066 e!1473775)))

(declare-fun c!364624 () Bool)

(assert (=> d!680307 (= c!364624 (and (is-Cons!27374 (t!205632 rules!1750)) (is-Nil!27374 (t!205632 (t!205632 rules!1750)))))))

(declare-fun lt!853065 () Unit!40271)

(declare-fun lt!853062 () Unit!40271)

(assert (=> d!680307 (= lt!853065 lt!853062)))

(assert (=> d!680307 (isPrefix!2376 input!1722 input!1722)))

(assert (=> d!680307 (= lt!853062 (lemmaIsPrefixRefl!1506 input!1722 input!1722))))

(assert (=> d!680307 (rulesValidInductive!1548 thiss!16613 (t!205632 rules!1750))))

(assert (=> d!680307 (= (maxPrefix!2239 thiss!16613 (t!205632 rules!1750) input!1722) lt!853066)))

(declare-fun b!2299790 () Bool)

(declare-fun res!983269 () Bool)

(assert (=> b!2299790 (=> (not res!983269) (not e!1473777))))

(assert (=> b!2299790 (= res!983269 (= (++!6696 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!853066)))) (_2!16132 (get!8251 lt!853066))) input!1722))))

(declare-fun b!2299791 () Bool)

(assert (=> b!2299791 (= e!1473777 (contains!4770 (t!205632 rules!1750) (rule!6730 (_1!16132 (get!8251 lt!853066)))))))

(declare-fun bm!136981 () Bool)

(assert (=> bm!136981 (= call!136986 (maxPrefixOneRule!1409 thiss!16613 (h!32775 (t!205632 rules!1750)) input!1722))))

(declare-fun b!2299792 () Bool)

(declare-fun res!983267 () Bool)

(assert (=> b!2299792 (=> (not res!983267) (not e!1473777))))

(assert (=> b!2299792 (= res!983267 (matchR!2991 (regex!4386 (rule!6730 (_1!16132 (get!8251 lt!853066)))) (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!853066))))))))

(declare-fun b!2299793 () Bool)

(declare-fun res!983271 () Bool)

(assert (=> b!2299793 (=> (not res!983271) (not e!1473777))))

(assert (=> b!2299793 (= res!983271 (< (size!21579 (_2!16132 (get!8251 lt!853066))) (size!21579 input!1722)))))

(declare-fun b!2299794 () Bool)

(assert (=> b!2299794 (= e!1473775 call!136986)))

(declare-fun b!2299795 () Bool)

(declare-fun res!983270 () Bool)

(assert (=> b!2299795 (=> (not res!983270) (not e!1473777))))

(assert (=> b!2299795 (= res!983270 (= (value!138822 (_1!16132 (get!8251 lt!853066))) (apply!6648 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!853066)))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!853066)))))))))

(assert (= (and d!680307 c!364624) b!2299794))

(assert (= (and d!680307 (not c!364624)) b!2299789))

(assert (= (or b!2299794 b!2299789) bm!136981))

(assert (= (and d!680307 (not res!983266)) b!2299787))

(assert (= (and b!2299787 res!983268) b!2299788))

(assert (= (and b!2299788 res!983265) b!2299793))

(assert (= (and b!2299793 res!983271) b!2299790))

(assert (= (and b!2299790 res!983269) b!2299795))

(assert (= (and b!2299795 res!983270) b!2299792))

(assert (= (and b!2299792 res!983267) b!2299791))

(declare-fun m!2727113 () Bool)

(assert (=> d!680307 m!2727113))

(assert (=> d!680307 m!2726689))

(assert (=> d!680307 m!2726691))

(assert (=> d!680307 m!2727005))

(declare-fun m!2727115 () Bool)

(assert (=> b!2299788 m!2727115))

(declare-fun m!2727117 () Bool)

(assert (=> b!2299788 m!2727117))

(assert (=> b!2299788 m!2727117))

(declare-fun m!2727119 () Bool)

(assert (=> b!2299788 m!2727119))

(assert (=> b!2299795 m!2727115))

(declare-fun m!2727121 () Bool)

(assert (=> b!2299795 m!2727121))

(assert (=> b!2299795 m!2727121))

(declare-fun m!2727123 () Bool)

(assert (=> b!2299795 m!2727123))

(assert (=> b!2299792 m!2727115))

(assert (=> b!2299792 m!2727117))

(assert (=> b!2299792 m!2727117))

(assert (=> b!2299792 m!2727119))

(assert (=> b!2299792 m!2727119))

(declare-fun m!2727125 () Bool)

(assert (=> b!2299792 m!2727125))

(assert (=> b!2299793 m!2727115))

(declare-fun m!2727127 () Bool)

(assert (=> b!2299793 m!2727127))

(assert (=> b!2299793 m!2726607))

(declare-fun m!2727129 () Bool)

(assert (=> bm!136981 m!2727129))

(assert (=> b!2299790 m!2727115))

(assert (=> b!2299790 m!2727117))

(assert (=> b!2299790 m!2727117))

(assert (=> b!2299790 m!2727119))

(assert (=> b!2299790 m!2727119))

(declare-fun m!2727131 () Bool)

(assert (=> b!2299790 m!2727131))

(assert (=> b!2299791 m!2727115))

(declare-fun m!2727133 () Bool)

(assert (=> b!2299791 m!2727133))

(declare-fun m!2727135 () Bool)

(assert (=> b!2299789 m!2727135))

(declare-fun m!2727137 () Bool)

(assert (=> b!2299787 m!2727137))

(assert (=> b!2299341 d!680307))

(declare-fun d!680309 () Bool)

(assert (=> d!680309 (= (isEmpty!15619 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (is-Nil!27372 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (=> d!680063 d!680309))

(declare-fun c!364630 () Bool)

(declare-fun c!364629 () Bool)

(declare-fun bm!136988 () Bool)

(declare-fun call!136993 () Bool)

(assert (=> bm!136988 (= call!136993 (validRegex!2539 (ite c!364629 (reg!7063 (regex!4386 r!2363)) (ite c!364630 (regTwo!13981 (regex!4386 r!2363)) (regOne!13980 (regex!4386 r!2363))))))))

(declare-fun b!2299814 () Bool)

(declare-fun e!1473793 () Bool)

(declare-fun e!1473798 () Bool)

(assert (=> b!2299814 (= e!1473793 e!1473798)))

(declare-fun res!983286 () Bool)

(assert (=> b!2299814 (=> (not res!983286) (not e!1473798))))

(declare-fun call!136994 () Bool)

(assert (=> b!2299814 (= res!983286 call!136994)))

(declare-fun d!680311 () Bool)

(declare-fun res!983285 () Bool)

(declare-fun e!1473794 () Bool)

(assert (=> d!680311 (=> res!983285 e!1473794)))

(assert (=> d!680311 (= res!983285 (is-ElementMatch!6734 (regex!4386 r!2363)))))

(assert (=> d!680311 (= (validRegex!2539 (regex!4386 r!2363)) e!1473794)))

(declare-fun b!2299815 () Bool)

(declare-fun call!136995 () Bool)

(assert (=> b!2299815 (= e!1473798 call!136995)))

(declare-fun b!2299816 () Bool)

(declare-fun res!983284 () Bool)

(declare-fun e!1473796 () Bool)

(assert (=> b!2299816 (=> (not res!983284) (not e!1473796))))

(assert (=> b!2299816 (= res!983284 call!136995)))

(declare-fun e!1473792 () Bool)

(assert (=> b!2299816 (= e!1473792 e!1473796)))

(declare-fun bm!136989 () Bool)

(assert (=> bm!136989 (= call!136995 (validRegex!2539 (ite c!364630 (regOne!13981 (regex!4386 r!2363)) (regTwo!13980 (regex!4386 r!2363)))))))

(declare-fun bm!136990 () Bool)

(assert (=> bm!136990 (= call!136994 call!136993)))

(declare-fun b!2299817 () Bool)

(declare-fun res!983282 () Bool)

(assert (=> b!2299817 (=> res!983282 e!1473793)))

(assert (=> b!2299817 (= res!983282 (not (is-Concat!11283 (regex!4386 r!2363))))))

(assert (=> b!2299817 (= e!1473792 e!1473793)))

(declare-fun b!2299818 () Bool)

(assert (=> b!2299818 (= e!1473796 call!136994)))

(declare-fun b!2299819 () Bool)

(declare-fun e!1473797 () Bool)

(assert (=> b!2299819 (= e!1473797 call!136993)))

(declare-fun b!2299820 () Bool)

(declare-fun e!1473795 () Bool)

(assert (=> b!2299820 (= e!1473795 e!1473792)))

(assert (=> b!2299820 (= c!364630 (is-Union!6734 (regex!4386 r!2363)))))

(declare-fun b!2299821 () Bool)

(assert (=> b!2299821 (= e!1473795 e!1473797)))

(declare-fun res!983283 () Bool)

(assert (=> b!2299821 (= res!983283 (not (nullable!1877 (reg!7063 (regex!4386 r!2363)))))))

(assert (=> b!2299821 (=> (not res!983283) (not e!1473797))))

(declare-fun b!2299822 () Bool)

(assert (=> b!2299822 (= e!1473794 e!1473795)))

(assert (=> b!2299822 (= c!364629 (is-Star!6734 (regex!4386 r!2363)))))

(assert (= (and d!680311 (not res!983285)) b!2299822))

(assert (= (and b!2299822 c!364629) b!2299821))

(assert (= (and b!2299822 (not c!364629)) b!2299820))

(assert (= (and b!2299821 res!983283) b!2299819))

(assert (= (and b!2299820 c!364630) b!2299816))

(assert (= (and b!2299820 (not c!364630)) b!2299817))

(assert (= (and b!2299816 res!983284) b!2299818))

(assert (= (and b!2299817 (not res!983282)) b!2299814))

(assert (= (and b!2299814 res!983286) b!2299815))

(assert (= (or b!2299816 b!2299815) bm!136989))

(assert (= (or b!2299818 b!2299814) bm!136990))

(assert (= (or b!2299819 bm!136990) bm!136988))

(declare-fun m!2727141 () Bool)

(assert (=> bm!136988 m!2727141))

(declare-fun m!2727143 () Bool)

(assert (=> bm!136989 m!2727143))

(declare-fun m!2727145 () Bool)

(assert (=> b!2299821 m!2727145))

(assert (=> d!680063 d!680311))

(declare-fun bs!457606 () Bool)

(declare-fun d!680317 () Bool)

(assert (= bs!457606 (and d!680317 d!680273)))

(declare-fun lambda!85921 () Int)

(assert (=> bs!457606 (= (= (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 otherR!12))) (= lambda!85921 lambda!85919))))

(assert (=> d!680317 true))

(assert (=> d!680317 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (dynLambda!11901 order!15267 lambda!85921))))

(assert (=> d!680317 (= (equivClasses!1698 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (Forall2!715 lambda!85921))))

(declare-fun bs!457607 () Bool)

(assert (= bs!457607 d!680317))

(declare-fun m!2727147 () Bool)

(assert (=> bs!457607 m!2727147))

(assert (=> b!2299274 d!680317))

(assert (=> b!2299347 d!680295))

(declare-fun d!680319 () Bool)

(declare-fun dynLambda!11902 (Int BalanceConc!17568) TokenValue!4548)

(assert (=> d!680319 (= (apply!6648 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970))))) (dynLambda!11902 (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970))))))))

(declare-fun b_lambda!73255 () Bool)

(assert (=> (not b_lambda!73255) (not d!680319)))

(declare-fun t!205701 () Bool)

(declare-fun tb!137451 () Bool)

(assert (=> (and b!2299049 (= (toValue!6192 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205701) tb!137451))

(declare-fun result!167558 () Bool)

(assert (=> tb!137451 (= result!167558 (inv!21 (dynLambda!11902 (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970))))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970)))))))))

(declare-fun m!2727149 () Bool)

(assert (=> tb!137451 m!2727149))

(assert (=> d!680319 t!205701))

(declare-fun b_and!183117 () Bool)

(assert (= b_and!183017 (and (=> t!205701 result!167558) b_and!183117)))

(declare-fun t!205703 () Bool)

(declare-fun tb!137453 () Bool)

(assert (=> (and b!2299519 (= (toValue!6192 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205703) tb!137453))

(declare-fun result!167562 () Bool)

(assert (= result!167562 result!167558))

(assert (=> d!680319 t!205703))

(declare-fun b_and!183119 () Bool)

(assert (= b_and!183089 (and (=> t!205703 result!167562) b_and!183119)))

(declare-fun tb!137455 () Bool)

(declare-fun t!205705 () Bool)

(assert (=> (and b!2299068 (= (toValue!6192 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205705) tb!137455))

(declare-fun result!167564 () Bool)

(assert (= result!167564 result!167558))

(assert (=> d!680319 t!205705))

(declare-fun b_and!183121 () Bool)

(assert (= b_and!183013 (and (=> t!205705 result!167564) b_and!183121)))

(declare-fun tb!137457 () Bool)

(declare-fun t!205707 () Bool)

(assert (=> (and b!2299530 (= (toValue!6192 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205707) tb!137457))

(declare-fun result!167566 () Bool)

(assert (= result!167566 result!167558))

(assert (=> d!680319 t!205707))

(declare-fun b_and!183123 () Bool)

(assert (= b_and!183093 (and (=> t!205707 result!167566) b_and!183123)))

(declare-fun tb!137459 () Bool)

(declare-fun t!205709 () Bool)

(assert (=> (and b!2299045 (= (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205709) tb!137459))

(declare-fun result!167568 () Bool)

(assert (= result!167568 result!167558))

(assert (=> d!680319 t!205709))

(declare-fun b_and!183125 () Bool)

(assert (= b_and!183021 (and (=> t!205709 result!167568) b_and!183125)))

(declare-fun tb!137461 () Bool)

(declare-fun t!205711 () Bool)

(assert (=> (and b!2299070 (= (toValue!6192 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205711) tb!137461))

(declare-fun result!167570 () Bool)

(assert (= result!167570 result!167558))

(assert (=> d!680319 t!205711))

(declare-fun b_and!183127 () Bool)

(assert (= b_and!183009 (and (=> t!205711 result!167570) b_and!183127)))

(assert (=> d!680319 m!2726701))

(declare-fun m!2727151 () Bool)

(assert (=> d!680319 m!2727151))

(assert (=> b!2299347 d!680319))

(declare-fun d!680321 () Bool)

(assert (=> d!680321 (= (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970)))) (fromListB!1389 (originalCharacters!5156 (_1!16132 (get!8251 lt!852970)))))))

(declare-fun bs!457608 () Bool)

(assert (= bs!457608 d!680321))

(declare-fun m!2727153 () Bool)

(assert (=> bs!457608 m!2727153))

(assert (=> b!2299347 d!680321))

(declare-fun d!680323 () Bool)

(declare-fun lt!853067 () Int)

(assert (=> d!680323 (>= lt!853067 0)))

(declare-fun e!1473802 () Int)

(assert (=> d!680323 (= lt!853067 e!1473802)))

(declare-fun c!364631 () Bool)

(assert (=> d!680323 (= c!364631 (is-Nil!27372 lt!852973))))

(assert (=> d!680323 (= (size!21579 lt!852973) lt!853067)))

(declare-fun b!2299825 () Bool)

(assert (=> b!2299825 (= e!1473802 0)))

(declare-fun b!2299826 () Bool)

(assert (=> b!2299826 (= e!1473802 (+ 1 (size!21579 (t!205630 lt!852973))))))

(assert (= (and d!680323 c!364631) b!2299825))

(assert (= (and d!680323 (not c!364631)) b!2299826))

(declare-fun m!2727155 () Bool)

(assert (=> b!2299826 m!2727155))

(assert (=> b!2299361 d!680323))

(assert (=> b!2299361 d!680221))

(declare-fun d!680325 () Bool)

(declare-fun lt!853068 () Int)

(assert (=> d!680325 (>= lt!853068 0)))

(declare-fun e!1473803 () Int)

(assert (=> d!680325 (= lt!853068 e!1473803)))

(declare-fun c!364632 () Bool)

(assert (=> d!680325 (= c!364632 (is-Nil!27372 (_2!16132 lt!852869)))))

(assert (=> d!680325 (= (size!21579 (_2!16132 lt!852869)) lt!853068)))

(declare-fun b!2299827 () Bool)

(assert (=> b!2299827 (= e!1473803 0)))

(declare-fun b!2299828 () Bool)

(assert (=> b!2299828 (= e!1473803 (+ 1 (size!21579 (t!205630 (_2!16132 lt!852869)))))))

(assert (= (and d!680325 c!364632) b!2299827))

(assert (= (and d!680325 (not c!364632)) b!2299828))

(declare-fun m!2727157 () Bool)

(assert (=> b!2299828 m!2727157))

(assert (=> b!2299361 d!680325))

(assert (=> d!680141 d!680047))

(declare-fun d!680327 () Bool)

(declare-fun lt!853069 () Int)

(assert (=> d!680327 (>= lt!853069 0)))

(declare-fun e!1473804 () Int)

(assert (=> d!680327 (= lt!853069 e!1473804)))

(declare-fun c!364633 () Bool)

(assert (=> d!680327 (= c!364633 (is-Nil!27372 input!1722))))

(assert (=> d!680327 (= (size!21579 input!1722) lt!853069)))

(declare-fun b!2299829 () Bool)

(assert (=> b!2299829 (= e!1473804 0)))

(declare-fun b!2299830 () Bool)

(assert (=> b!2299830 (= e!1473804 (+ 1 (size!21579 (t!205630 input!1722))))))

(assert (= (and d!680327 c!364633) b!2299829))

(assert (= (and d!680327 (not c!364633)) b!2299830))

(declare-fun m!2727159 () Bool)

(assert (=> b!2299830 m!2727159))

(assert (=> b!2299260 d!680327))

(assert (=> b!2299260 d!680055))

(declare-fun d!680329 () Bool)

(declare-fun lt!853070 () Int)

(assert (=> d!680329 (>= lt!853070 0)))

(declare-fun e!1473805 () Int)

(assert (=> d!680329 (= lt!853070 e!1473805)))

(declare-fun c!364634 () Bool)

(assert (=> d!680329 (= c!364634 (is-Nil!27372 (_2!16132 (get!8251 lt!852970))))))

(assert (=> d!680329 (= (size!21579 (_2!16132 (get!8251 lt!852970))) lt!853070)))

(declare-fun b!2299831 () Bool)

(assert (=> b!2299831 (= e!1473805 0)))

(declare-fun b!2299832 () Bool)

(assert (=> b!2299832 (= e!1473805 (+ 1 (size!21579 (t!205630 (_2!16132 (get!8251 lt!852970))))))))

(assert (= (and d!680329 c!364634) b!2299831))

(assert (= (and d!680329 (not c!364634)) b!2299832))

(declare-fun m!2727161 () Bool)

(assert (=> b!2299832 m!2727161))

(assert (=> b!2299345 d!680329))

(assert (=> b!2299345 d!680295))

(assert (=> b!2299345 d!680327))

(declare-fun d!680331 () Bool)

(declare-fun isBalanced!2688 (Conc!8920) Bool)

(assert (=> d!680331 (= (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))) (isBalanced!2688 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))))))

(declare-fun bs!457609 () Bool)

(assert (= bs!457609 d!680331))

(declare-fun m!2727163 () Bool)

(assert (=> bs!457609 m!2727163))

(assert (=> tb!137391 d!680331))

(declare-fun bs!457610 () Bool)

(declare-fun d!680333 () Bool)

(assert (= bs!457610 (and d!680333 d!680265)))

(declare-fun lambda!85922 () Int)

(assert (=> bs!457610 (= (and (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (h!32775 rules!1750)))) (= (toValue!6192 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 (h!32775 rules!1750))))) (= lambda!85922 lambda!85916))))

(declare-fun bs!457611 () Bool)

(assert (= bs!457611 (and d!680333 d!680291)))

(assert (=> bs!457611 (= (and (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (= (toValue!6192 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (= lambda!85922 lambda!85920))))

(assert (=> d!680333 true))

(assert (=> d!680333 (< (dynLambda!11898 order!15261 (toChars!6051 (transformation!4386 r!2363))) (dynLambda!11899 order!15263 lambda!85922))))

(assert (=> d!680333 true))

(assert (=> d!680333 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 r!2363))) (dynLambda!11899 order!15263 lambda!85922))))

(assert (=> d!680333 (= (semiInverseModEq!1779 (toChars!6051 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 r!2363))) (Forall!1098 lambda!85922))))

(declare-fun bs!457612 () Bool)

(assert (= bs!457612 d!680333))

(declare-fun m!2727165 () Bool)

(assert (=> bs!457612 m!2727165))

(assert (=> d!680097 d!680333))

(declare-fun b!2299834 () Bool)

(declare-fun res!983288 () Bool)

(declare-fun e!1473807 () Bool)

(assert (=> b!2299834 (=> (not res!983288) (not e!1473807))))

(assert (=> b!2299834 (= res!983288 (= (head!5027 (tail!3320 lt!852874)) (head!5027 (tail!3320 lt!852870))))))

(declare-fun b!2299835 () Bool)

(assert (=> b!2299835 (= e!1473807 (isPrefix!2376 (tail!3320 (tail!3320 lt!852874)) (tail!3320 (tail!3320 lt!852870))))))

(declare-fun b!2299836 () Bool)

(declare-fun e!1473806 () Bool)

(assert (=> b!2299836 (= e!1473806 (>= (size!21579 (tail!3320 lt!852870)) (size!21579 (tail!3320 lt!852874))))))

(declare-fun b!2299833 () Bool)

(declare-fun e!1473808 () Bool)

(assert (=> b!2299833 (= e!1473808 e!1473807)))

(declare-fun res!983287 () Bool)

(assert (=> b!2299833 (=> (not res!983287) (not e!1473807))))

(assert (=> b!2299833 (= res!983287 (not (is-Nil!27372 (tail!3320 lt!852870))))))

(declare-fun d!680335 () Bool)

(assert (=> d!680335 e!1473806))

(declare-fun res!983290 () Bool)

(assert (=> d!680335 (=> res!983290 e!1473806)))

(declare-fun lt!853071 () Bool)

(assert (=> d!680335 (= res!983290 (not lt!853071))))

(assert (=> d!680335 (= lt!853071 e!1473808)))

(declare-fun res!983289 () Bool)

(assert (=> d!680335 (=> res!983289 e!1473808)))

(assert (=> d!680335 (= res!983289 (is-Nil!27372 (tail!3320 lt!852874)))))

(assert (=> d!680335 (= (isPrefix!2376 (tail!3320 lt!852874) (tail!3320 lt!852870)) lt!853071)))

(assert (= (and d!680335 (not res!983289)) b!2299833))

(assert (= (and b!2299833 res!983287) b!2299834))

(assert (= (and b!2299834 res!983288) b!2299835))

(assert (= (and d!680335 (not res!983290)) b!2299836))

(assert (=> b!2299834 m!2726639))

(assert (=> b!2299834 m!2726983))

(assert (=> b!2299834 m!2726647))

(declare-fun m!2727167 () Bool)

(assert (=> b!2299834 m!2727167))

(assert (=> b!2299835 m!2726639))

(assert (=> b!2299835 m!2726987))

(assert (=> b!2299835 m!2726647))

(declare-fun m!2727169 () Bool)

(assert (=> b!2299835 m!2727169))

(assert (=> b!2299835 m!2726987))

(assert (=> b!2299835 m!2727169))

(declare-fun m!2727171 () Bool)

(assert (=> b!2299835 m!2727171))

(assert (=> b!2299836 m!2726647))

(declare-fun m!2727173 () Bool)

(assert (=> b!2299836 m!2727173))

(assert (=> b!2299836 m!2726639))

(assert (=> b!2299836 m!2726995))

(assert (=> b!2299282 d!680335))

(assert (=> b!2299282 d!680225))

(declare-fun d!680337 () Bool)

(assert (=> d!680337 (= (tail!3320 lt!852870) (t!205630 lt!852870))))

(assert (=> b!2299282 d!680337))

(declare-fun d!680339 () Bool)

(declare-fun lt!853074 () Int)

(declare-fun size!21587 (List!27467) Int)

(assert (=> d!680339 (= lt!853074 (size!21587 (list!10762 (_1!16130 lt!853002))))))

(declare-fun size!21588 (Conc!8921) Int)

(assert (=> d!680339 (= lt!853074 (size!21588 (c!364511 (_1!16130 lt!853002))))))

(assert (=> d!680339 (= (size!21584 (_1!16130 lt!853002)) lt!853074)))

(declare-fun bs!457613 () Bool)

(assert (= bs!457613 d!680339))

(assert (=> bs!457613 m!2726835))

(assert (=> bs!457613 m!2726835))

(declare-fun m!2727175 () Bool)

(assert (=> bs!457613 m!2727175))

(declare-fun m!2727177 () Bool)

(assert (=> bs!457613 m!2727177))

(assert (=> d!680153 d!680339))

(declare-fun b!2299851 () Bool)

(declare-fun e!1473819 () tuple2!27240)

(assert (=> b!2299851 (= e!1473819 (tuple2!27241 (BalanceConc!17571 Empty!8921) (seqFromList!3090 input!1722)))))

(declare-fun b!2299852 () Bool)

(declare-fun e!1473820 () tuple2!27240)

(declare-fun lt!853154 () BalanceConc!17568)

(assert (=> b!2299852 (= e!1473820 (tuple2!27241 (BalanceConc!17571 Empty!8921) lt!853154))))

(declare-fun d!680341 () Bool)

(declare-fun e!1473817 () Bool)

(assert (=> d!680341 e!1473817))

(declare-fun res!983293 () Bool)

(assert (=> d!680341 (=> (not res!983293) (not e!1473817))))

(declare-fun lt!853172 () tuple2!27240)

(declare-fun lexRec!548 (LexerInterface!3983 List!27468 BalanceConc!17568) tuple2!27240)

(assert (=> d!680341 (= res!983293 (= (list!10762 (_1!16130 lt!853172)) (list!10762 (_1!16130 (lexRec!548 thiss!16613 rules!1750 (seqFromList!3090 input!1722))))))))

(assert (=> d!680341 (= lt!853172 e!1473819)))

(declare-fun c!364641 () Bool)

(declare-datatypes ((tuple2!27252 0))(
  ( (tuple2!27253 (_1!16136 Token!8250) (_2!16136 BalanceConc!17568)) )
))
(declare-datatypes ((Option!5382 0))(
  ( (None!5381) (Some!5381 (v!30475 tuple2!27252)) )
))
(declare-fun lt!853167 () Option!5382)

(assert (=> d!680341 (= c!364641 (is-Some!5381 lt!853167))))

(declare-fun maxPrefixZipperSequenceV2!418 (LexerInterface!3983 List!27468 BalanceConc!17568 BalanceConc!17568) Option!5382)

(assert (=> d!680341 (= lt!853167 (maxPrefixZipperSequenceV2!418 thiss!16613 rules!1750 (seqFromList!3090 input!1722) (seqFromList!3090 input!1722)))))

(declare-fun lt!853148 () Unit!40271)

(declare-fun lt!853158 () Unit!40271)

(assert (=> d!680341 (= lt!853148 lt!853158)))

(declare-fun lt!853145 () List!27466)

(declare-fun lt!853157 () List!27466)

(declare-fun isSuffix!784 (List!27466 List!27466) Bool)

(assert (=> d!680341 (isSuffix!784 lt!853145 (++!6696 lt!853157 lt!853145))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!478 (List!27466 List!27466) Unit!40271)

(assert (=> d!680341 (= lt!853158 (lemmaConcatTwoListThenFSndIsSuffix!478 lt!853157 lt!853145))))

(assert (=> d!680341 (= lt!853145 (list!10763 (seqFromList!3090 input!1722)))))

(assert (=> d!680341 (= lt!853157 (list!10763 (BalanceConc!17569 Empty!8920)))))

(assert (=> d!680341 (= (lexTailRecV2!798 thiss!16613 rules!1750 (seqFromList!3090 input!1722) (BalanceConc!17569 Empty!8920) (seqFromList!3090 input!1722) (BalanceConc!17571 Empty!8921)) lt!853172)))

(declare-fun b!2299853 () Bool)

(declare-fun lt!853174 () BalanceConc!17568)

(declare-fun append!711 (BalanceConc!17570 Token!8250) BalanceConc!17570)

(assert (=> b!2299853 (= e!1473819 (lexTailRecV2!798 thiss!16613 rules!1750 (seqFromList!3090 input!1722) lt!853174 (_2!16136 (v!30475 lt!853167)) (append!711 (BalanceConc!17571 Empty!8921) (_1!16136 (v!30475 lt!853167)))))))

(declare-fun lt!853169 () tuple2!27240)

(assert (=> b!2299853 (= lt!853169 (lexRec!548 thiss!16613 rules!1750 (_2!16136 (v!30475 lt!853167))))))

(declare-fun lt!853143 () List!27466)

(assert (=> b!2299853 (= lt!853143 (list!10763 (BalanceConc!17569 Empty!8920)))))

(declare-fun lt!853152 () List!27466)

(assert (=> b!2299853 (= lt!853152 (list!10763 (charsOf!2774 (_1!16136 (v!30475 lt!853167)))))))

(declare-fun lt!853160 () List!27466)

(assert (=> b!2299853 (= lt!853160 (list!10763 (_2!16136 (v!30475 lt!853167))))))

(declare-fun lt!853165 () Unit!40271)

(declare-fun lemmaConcatAssociativity!1408 (List!27466 List!27466 List!27466) Unit!40271)

(assert (=> b!2299853 (= lt!853165 (lemmaConcatAssociativity!1408 lt!853143 lt!853152 lt!853160))))

(assert (=> b!2299853 (= (++!6696 (++!6696 lt!853143 lt!853152) lt!853160) (++!6696 lt!853143 (++!6696 lt!853152 lt!853160)))))

(declare-fun lt!853144 () Unit!40271)

(assert (=> b!2299853 (= lt!853144 lt!853165)))

(declare-fun lt!853162 () Option!5382)

(declare-fun maxPrefixZipperSequence!883 (LexerInterface!3983 List!27468 BalanceConc!17568) Option!5382)

(assert (=> b!2299853 (= lt!853162 (maxPrefixZipperSequence!883 thiss!16613 rules!1750 (seqFromList!3090 input!1722)))))

(declare-fun c!364642 () Bool)

(assert (=> b!2299853 (= c!364642 (is-Some!5381 lt!853162))))

(declare-fun e!1473818 () tuple2!27240)

(assert (=> b!2299853 (= (lexRec!548 thiss!16613 rules!1750 (seqFromList!3090 input!1722)) e!1473818)))

(declare-fun lt!853175 () Unit!40271)

(declare-fun Unit!40280 () Unit!40271)

(assert (=> b!2299853 (= lt!853175 Unit!40280)))

(declare-fun lt!853163 () List!27467)

(assert (=> b!2299853 (= lt!853163 (list!10762 (BalanceConc!17571 Empty!8921)))))

(declare-fun lt!853153 () List!27467)

(assert (=> b!2299853 (= lt!853153 (Cons!27373 (_1!16136 (v!30475 lt!853167)) Nil!27373))))

(declare-fun lt!853155 () List!27467)

(assert (=> b!2299853 (= lt!853155 (list!10762 (_1!16130 lt!853169)))))

(declare-fun lt!853170 () Unit!40271)

(declare-fun lemmaConcatAssociativity!1409 (List!27467 List!27467 List!27467) Unit!40271)

(assert (=> b!2299853 (= lt!853170 (lemmaConcatAssociativity!1409 lt!853163 lt!853153 lt!853155))))

(declare-fun ++!6698 (List!27467 List!27467) List!27467)

(assert (=> b!2299853 (= (++!6698 (++!6698 lt!853163 lt!853153) lt!853155) (++!6698 lt!853163 (++!6698 lt!853153 lt!853155)))))

(declare-fun lt!853176 () Unit!40271)

(assert (=> b!2299853 (= lt!853176 lt!853170)))

(declare-fun lt!853173 () List!27466)

(assert (=> b!2299853 (= lt!853173 (++!6696 (list!10763 (BalanceConc!17569 Empty!8920)) (list!10763 (charsOf!2774 (_1!16136 (v!30475 lt!853167))))))))

(declare-fun lt!853168 () List!27466)

(assert (=> b!2299853 (= lt!853168 (list!10763 (_2!16136 (v!30475 lt!853167))))))

(declare-fun lt!853147 () List!27467)

(assert (=> b!2299853 (= lt!853147 (list!10762 (append!711 (BalanceConc!17571 Empty!8921) (_1!16136 (v!30475 lt!853167)))))))

(declare-fun lt!853146 () Unit!40271)

(declare-fun lemmaLexThenLexPrefix!362 (LexerInterface!3983 List!27468 List!27466 List!27466 List!27467 List!27467 List!27466) Unit!40271)

(assert (=> b!2299853 (= lt!853146 (lemmaLexThenLexPrefix!362 thiss!16613 rules!1750 lt!853173 lt!853168 lt!853147 (list!10762 (_1!16130 lt!853169)) (list!10763 (_2!16130 lt!853169))))))

(assert (=> b!2299853 (= (lexList!1123 thiss!16613 rules!1750 lt!853173) (tuple2!27243 lt!853147 Nil!27372))))

(declare-fun lt!853171 () Unit!40271)

(assert (=> b!2299853 (= lt!853171 lt!853146)))

(declare-fun ++!6699 (BalanceConc!17568 BalanceConc!17568) BalanceConc!17568)

(assert (=> b!2299853 (= lt!853154 (++!6699 (BalanceConc!17569 Empty!8920) (charsOf!2774 (_1!16136 (v!30475 lt!853167)))))))

(declare-fun lt!853149 () Option!5382)

(assert (=> b!2299853 (= lt!853149 (maxPrefixZipperSequence!883 thiss!16613 rules!1750 lt!853154))))

(declare-fun c!364643 () Bool)

(assert (=> b!2299853 (= c!364643 (is-Some!5381 lt!853149))))

(assert (=> b!2299853 (= (lexRec!548 thiss!16613 rules!1750 (++!6699 (BalanceConc!17569 Empty!8920) (charsOf!2774 (_1!16136 (v!30475 lt!853167))))) e!1473820)))

(declare-fun lt!853166 () Unit!40271)

(declare-fun Unit!40281 () Unit!40271)

(assert (=> b!2299853 (= lt!853166 Unit!40281)))

(assert (=> b!2299853 (= lt!853174 (++!6699 (BalanceConc!17569 Empty!8920) (charsOf!2774 (_1!16136 (v!30475 lt!853167)))))))

(declare-fun lt!853150 () List!27466)

(assert (=> b!2299853 (= lt!853150 (list!10763 lt!853174))))

(declare-fun lt!853159 () List!27466)

(assert (=> b!2299853 (= lt!853159 (list!10763 (_2!16136 (v!30475 lt!853167))))))

(declare-fun lt!853151 () Unit!40271)

(assert (=> b!2299853 (= lt!853151 (lemmaConcatTwoListThenFSndIsSuffix!478 lt!853150 lt!853159))))

(assert (=> b!2299853 (isSuffix!784 lt!853159 (++!6696 lt!853150 lt!853159))))

(declare-fun lt!853164 () Unit!40271)

(assert (=> b!2299853 (= lt!853164 lt!853151)))

(declare-fun b!2299854 () Bool)

(assert (=> b!2299854 (= e!1473818 (tuple2!27241 (BalanceConc!17571 Empty!8921) (seqFromList!3090 input!1722)))))

(declare-fun b!2299855 () Bool)

(assert (=> b!2299855 (= e!1473817 (= (list!10763 (_2!16130 lt!853172)) (list!10763 (_2!16130 (lexRec!548 thiss!16613 rules!1750 (seqFromList!3090 input!1722))))))))

(declare-fun b!2299856 () Bool)

(declare-fun lt!853161 () tuple2!27240)

(assert (=> b!2299856 (= lt!853161 (lexRec!548 thiss!16613 rules!1750 (_2!16136 (v!30475 lt!853162))))))

(declare-fun prepend!1018 (BalanceConc!17570 Token!8250) BalanceConc!17570)

(assert (=> b!2299856 (= e!1473818 (tuple2!27241 (prepend!1018 (_1!16130 lt!853161) (_1!16136 (v!30475 lt!853162))) (_2!16130 lt!853161)))))

(declare-fun lt!853156 () tuple2!27240)

(declare-fun b!2299857 () Bool)

(assert (=> b!2299857 (= lt!853156 (lexRec!548 thiss!16613 rules!1750 (_2!16136 (v!30475 lt!853149))))))

(assert (=> b!2299857 (= e!1473820 (tuple2!27241 (prepend!1018 (_1!16130 lt!853156) (_1!16136 (v!30475 lt!853149))) (_2!16130 lt!853156)))))

(assert (= (and d!680341 c!364641) b!2299853))

(assert (= (and d!680341 (not c!364641)) b!2299851))

(assert (= (and b!2299853 c!364642) b!2299856))

(assert (= (and b!2299853 (not c!364642)) b!2299854))

(assert (= (and b!2299853 c!364643) b!2299857))

(assert (= (and b!2299853 (not c!364643)) b!2299852))

(assert (= (and d!680341 res!983293) b!2299855))

(declare-fun m!2727179 () Bool)

(assert (=> b!2299855 m!2727179))

(assert (=> b!2299855 m!2726391))

(declare-fun m!2727181 () Bool)

(assert (=> b!2299855 m!2727181))

(declare-fun m!2727183 () Bool)

(assert (=> b!2299855 m!2727183))

(declare-fun m!2727185 () Bool)

(assert (=> b!2299857 m!2727185))

(declare-fun m!2727187 () Bool)

(assert (=> b!2299857 m!2727187))

(declare-fun m!2727189 () Bool)

(assert (=> b!2299856 m!2727189))

(declare-fun m!2727191 () Bool)

(assert (=> b!2299856 m!2727191))

(declare-fun m!2727193 () Bool)

(assert (=> d!680341 m!2727193))

(assert (=> d!680341 m!2726391))

(assert (=> d!680341 m!2727181))

(declare-fun m!2727195 () Bool)

(assert (=> d!680341 m!2727195))

(assert (=> d!680341 m!2726391))

(assert (=> d!680341 m!2726391))

(declare-fun m!2727197 () Bool)

(assert (=> d!680341 m!2727197))

(declare-fun m!2727199 () Bool)

(assert (=> d!680341 m!2727199))

(declare-fun m!2727201 () Bool)

(assert (=> d!680341 m!2727201))

(declare-fun m!2727203 () Bool)

(assert (=> d!680341 m!2727203))

(assert (=> d!680341 m!2727199))

(declare-fun m!2727205 () Bool)

(assert (=> d!680341 m!2727205))

(assert (=> d!680341 m!2726391))

(assert (=> d!680341 m!2726837))

(declare-fun m!2727207 () Bool)

(assert (=> b!2299853 m!2727207))

(declare-fun m!2727209 () Bool)

(assert (=> b!2299853 m!2727209))

(declare-fun m!2727211 () Bool)

(assert (=> b!2299853 m!2727211))

(declare-fun m!2727213 () Bool)

(assert (=> b!2299853 m!2727213))

(assert (=> b!2299853 m!2727195))

(assert (=> b!2299853 m!2726391))

(assert (=> b!2299853 m!2727181))

(declare-fun m!2727215 () Bool)

(assert (=> b!2299853 m!2727215))

(declare-fun m!2727217 () Bool)

(assert (=> b!2299853 m!2727217))

(declare-fun m!2727219 () Bool)

(assert (=> b!2299853 m!2727219))

(declare-fun m!2727221 () Bool)

(assert (=> b!2299853 m!2727221))

(assert (=> b!2299853 m!2727209))

(assert (=> b!2299853 m!2727217))

(declare-fun m!2727223 () Bool)

(assert (=> b!2299853 m!2727223))

(declare-fun m!2727225 () Bool)

(assert (=> b!2299853 m!2727225))

(assert (=> b!2299853 m!2727221))

(declare-fun m!2727227 () Bool)

(assert (=> b!2299853 m!2727227))

(declare-fun m!2727229 () Bool)

(assert (=> b!2299853 m!2727229))

(assert (=> b!2299853 m!2727227))

(declare-fun m!2727231 () Bool)

(assert (=> b!2299853 m!2727231))

(declare-fun m!2727233 () Bool)

(assert (=> b!2299853 m!2727233))

(declare-fun m!2727235 () Bool)

(assert (=> b!2299853 m!2727235))

(assert (=> b!2299853 m!2726391))

(declare-fun m!2727237 () Bool)

(assert (=> b!2299853 m!2727237))

(declare-fun m!2727239 () Bool)

(assert (=> b!2299853 m!2727239))

(assert (=> b!2299853 m!2727195))

(declare-fun m!2727241 () Bool)

(assert (=> b!2299853 m!2727241))

(declare-fun m!2727243 () Bool)

(assert (=> b!2299853 m!2727243))

(assert (=> b!2299853 m!2727237))

(declare-fun m!2727245 () Bool)

(assert (=> b!2299853 m!2727245))

(assert (=> b!2299853 m!2727207))

(declare-fun m!2727247 () Bool)

(assert (=> b!2299853 m!2727247))

(assert (=> b!2299853 m!2727237))

(declare-fun m!2727249 () Bool)

(assert (=> b!2299853 m!2727249))

(assert (=> b!2299853 m!2727213))

(declare-fun m!2727251 () Bool)

(assert (=> b!2299853 m!2727251))

(assert (=> b!2299853 m!2726391))

(declare-fun m!2727253 () Bool)

(assert (=> b!2299853 m!2727253))

(declare-fun m!2727255 () Bool)

(assert (=> b!2299853 m!2727255))

(assert (=> b!2299853 m!2727223))

(assert (=> b!2299853 m!2727241))

(declare-fun m!2727257 () Bool)

(assert (=> b!2299853 m!2727257))

(declare-fun m!2727259 () Bool)

(assert (=> b!2299853 m!2727259))

(declare-fun m!2727261 () Bool)

(assert (=> b!2299853 m!2727261))

(declare-fun m!2727263 () Bool)

(assert (=> b!2299853 m!2727263))

(assert (=> b!2299853 m!2727223))

(assert (=> b!2299853 m!2727233))

(declare-fun m!2727265 () Bool)

(assert (=> b!2299853 m!2727265))

(assert (=> b!2299853 m!2727225))

(declare-fun m!2727267 () Bool)

(assert (=> b!2299853 m!2727267))

(assert (=> d!680153 d!680341))

(assert (=> b!2299279 d!680327))

(assert (=> b!2299279 d!680221))

(declare-fun d!680343 () Bool)

(declare-fun lt!853177 () Int)

(assert (=> d!680343 (= lt!853177 (size!21579 (list!10763 (_2!16130 lt!853002))))))

(assert (=> d!680343 (= lt!853177 (size!21583 (c!364509 (_2!16130 lt!853002))))))

(assert (=> d!680343 (= (size!21578 (_2!16130 lt!853002)) lt!853177)))

(declare-fun bs!457614 () Bool)

(assert (= bs!457614 d!680343))

(assert (=> bs!457614 m!2726849))

(assert (=> bs!457614 m!2726849))

(declare-fun m!2727269 () Bool)

(assert (=> bs!457614 m!2727269))

(declare-fun m!2727271 () Bool)

(assert (=> bs!457614 m!2727271))

(assert (=> b!2299476 d!680343))

(declare-fun d!680345 () Bool)

(declare-fun lt!853178 () Int)

(assert (=> d!680345 (= lt!853178 (size!21579 (list!10763 (seqFromList!3090 input!1722))))))

(assert (=> d!680345 (= lt!853178 (size!21583 (c!364509 (seqFromList!3090 input!1722))))))

(assert (=> d!680345 (= (size!21578 (seqFromList!3090 input!1722)) lt!853178)))

(declare-fun bs!457615 () Bool)

(assert (= bs!457615 d!680345))

(assert (=> bs!457615 m!2726391))

(assert (=> bs!457615 m!2726837))

(assert (=> bs!457615 m!2726837))

(declare-fun m!2727273 () Bool)

(assert (=> bs!457615 m!2727273))

(declare-fun m!2727275 () Bool)

(assert (=> bs!457615 m!2727275))

(assert (=> b!2299476 d!680345))

(declare-fun d!680347 () Bool)

(declare-fun lt!853179 () Int)

(assert (=> d!680347 (>= lt!853179 0)))

(declare-fun e!1473822 () Int)

(assert (=> d!680347 (= lt!853179 e!1473822)))

(declare-fun c!364645 () Bool)

(assert (=> d!680347 (= c!364645 (and (is-Cons!27374 (t!205632 rules!1750)) (= (h!32775 (t!205632 rules!1750)) r!2363)))))

(assert (=> d!680347 (contains!4770 (t!205632 rules!1750) r!2363)))

(assert (=> d!680347 (= (getIndex!399 (t!205632 rules!1750) r!2363) lt!853179)))

(declare-fun b!2299859 () Bool)

(declare-fun e!1473821 () Int)

(assert (=> b!2299859 (= e!1473822 e!1473821)))

(declare-fun c!364644 () Bool)

(assert (=> b!2299859 (= c!364644 (and (is-Cons!27374 (t!205632 rules!1750)) (not (= (h!32775 (t!205632 rules!1750)) r!2363))))))

(declare-fun b!2299858 () Bool)

(assert (=> b!2299858 (= e!1473822 0)))

(declare-fun b!2299860 () Bool)

(assert (=> b!2299860 (= e!1473821 (+ 1 (getIndex!399 (t!205632 (t!205632 rules!1750)) r!2363)))))

(declare-fun b!2299861 () Bool)

(assert (=> b!2299861 (= e!1473821 (- 1))))

(assert (= (and d!680347 c!364645) b!2299858))

(assert (= (and d!680347 (not c!364645)) b!2299859))

(assert (= (and b!2299859 c!364644) b!2299860))

(assert (= (and b!2299859 (not c!364644)) b!2299861))

(assert (=> d!680347 m!2726547))

(declare-fun m!2727277 () Bool)

(assert (=> b!2299860 m!2727277))

(assert (=> b!2299383 d!680347))

(assert (=> b!2299222 d!680245))

(assert (=> b!2299277 d!680241))

(declare-fun d!680349 () Bool)

(assert (=> d!680349 (= (head!5027 input!1722) (h!32773 input!1722))))

(assert (=> b!2299277 d!680349))

(declare-fun d!680351 () Bool)

(declare-fun lt!853180 () Int)

(assert (=> d!680351 (>= lt!853180 0)))

(declare-fun e!1473823 () Int)

(assert (=> d!680351 (= lt!853180 e!1473823)))

(declare-fun c!364646 () Bool)

(assert (=> d!680351 (= c!364646 (is-Nil!27372 (t!205630 otherP!12)))))

(assert (=> d!680351 (= (size!21579 (t!205630 otherP!12)) lt!853180)))

(declare-fun b!2299862 () Bool)

(assert (=> b!2299862 (= e!1473823 0)))

(declare-fun b!2299863 () Bool)

(assert (=> b!2299863 (= e!1473823 (+ 1 (size!21579 (t!205630 (t!205630 otherP!12)))))))

(assert (= (and d!680351 c!364646) b!2299862))

(assert (= (and d!680351 (not c!364646)) b!2299863))

(declare-fun m!2727279 () Bool)

(assert (=> b!2299863 m!2727279))

(assert (=> b!2299187 d!680351))

(declare-fun d!680353 () Bool)

(assert (=> d!680353 (= (inv!36994 (tag!4876 (rule!6730 (h!32774 (t!205631 tokens!456))))) (= (mod (str.len (value!138821 (tag!4876 (rule!6730 (h!32774 (t!205631 tokens!456)))))) 2) 0))))

(assert (=> b!2299518 d!680353))

(declare-fun d!680355 () Bool)

(declare-fun res!983294 () Bool)

(declare-fun e!1473824 () Bool)

(assert (=> d!680355 (=> (not res!983294) (not e!1473824))))

(assert (=> d!680355 (= res!983294 (semiInverseModEq!1779 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))))))

(assert (=> d!680355 (= (inv!36997 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) e!1473824)))

(declare-fun b!2299864 () Bool)

(assert (=> b!2299864 (= e!1473824 (equivClasses!1698 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))))))

(assert (= (and d!680355 res!983294) b!2299864))

(declare-fun m!2727281 () Bool)

(assert (=> d!680355 m!2727281))

(declare-fun m!2727283 () Bool)

(assert (=> b!2299864 m!2727283))

(assert (=> b!2299518 d!680355))

(declare-fun d!680357 () Bool)

(declare-fun lt!853181 () Int)

(assert (=> d!680357 (>= lt!853181 0)))

(declare-fun e!1473825 () Int)

(assert (=> d!680357 (= lt!853181 e!1473825)))

(declare-fun c!364647 () Bool)

(assert (=> d!680357 (= c!364647 (is-Nil!27372 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (=> d!680357 (= (size!21579 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) lt!853181)))

(declare-fun b!2299865 () Bool)

(assert (=> b!2299865 (= e!1473825 0)))

(declare-fun b!2299866 () Bool)

(assert (=> b!2299866 (= e!1473825 (+ 1 (size!21579 (t!205630 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(assert (= (and d!680357 c!364647) b!2299865))

(assert (= (and d!680357 (not c!364647)) b!2299866))

(declare-fun m!2727285 () Bool)

(assert (=> b!2299866 m!2727285))

(assert (=> d!680049 d!680357))

(assert (=> d!680049 d!680065))

(declare-fun d!680359 () Bool)

(declare-fun lt!853184 () Int)

(assert (=> d!680359 (= lt!853184 (size!21579 (list!10766 (c!364509 (charsOf!2774 (head!5025 tokens!456))))))))

(assert (=> d!680359 (= lt!853184 (ite (is-Empty!8920 (c!364509 (charsOf!2774 (head!5025 tokens!456)))) 0 (ite (is-Leaf!13099 (c!364509 (charsOf!2774 (head!5025 tokens!456)))) (csize!18071 (c!364509 (charsOf!2774 (head!5025 tokens!456)))) (csize!18070 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))))

(assert (=> d!680359 (= (size!21583 (c!364509 (charsOf!2774 (head!5025 tokens!456)))) lt!853184)))

(declare-fun bs!457616 () Bool)

(assert (= bs!457616 d!680359))

(assert (=> bs!457616 m!2726583))

(assert (=> bs!457616 m!2726583))

(declare-fun m!2727287 () Bool)

(assert (=> bs!457616 m!2727287))

(assert (=> d!680049 d!680359))

(assert (=> bm!136970 d!680309))

(declare-fun d!680361 () Bool)

(assert (=> d!680361 (= (list!10763 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))) (list!10766 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(declare-fun bs!457617 () Bool)

(assert (= bs!457617 d!680361))

(declare-fun m!2727289 () Bool)

(assert (=> bs!457617 m!2727289))

(assert (=> b!2299271 d!680361))

(declare-fun d!680363 () Bool)

(declare-fun res!983295 () Bool)

(declare-fun e!1473826 () Bool)

(assert (=> d!680363 (=> (not res!983295) (not e!1473826))))

(assert (=> d!680363 (= res!983295 (not (isEmpty!15619 (originalCharacters!5156 (h!32774 (t!205631 tokens!456))))))))

(assert (=> d!680363 (= (inv!36998 (h!32774 (t!205631 tokens!456))) e!1473826)))

(declare-fun b!2299867 () Bool)

(declare-fun res!983296 () Bool)

(assert (=> b!2299867 (=> (not res!983296) (not e!1473826))))

(assert (=> b!2299867 (= res!983296 (= (originalCharacters!5156 (h!32774 (t!205631 tokens!456))) (list!10763 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (value!138822 (h!32774 (t!205631 tokens!456)))))))))

(declare-fun b!2299868 () Bool)

(assert (=> b!2299868 (= e!1473826 (= (size!21577 (h!32774 (t!205631 tokens!456))) (size!21579 (originalCharacters!5156 (h!32774 (t!205631 tokens!456))))))))

(assert (= (and d!680363 res!983295) b!2299867))

(assert (= (and b!2299867 res!983296) b!2299868))

(declare-fun b_lambda!73257 () Bool)

(assert (=> (not b_lambda!73257) (not b!2299867)))

(declare-fun t!205714 () Bool)

(declare-fun tb!137463 () Bool)

(assert (=> (and b!2299519 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205714) tb!137463))

(declare-fun b!2299869 () Bool)

(declare-fun e!1473827 () Bool)

(declare-fun tp!729501 () Bool)

(assert (=> b!2299869 (= e!1473827 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (value!138822 (h!32774 (t!205631 tokens!456)))))) tp!729501))))

(declare-fun result!167572 () Bool)

(assert (=> tb!137463 (= result!167572 (and (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (value!138822 (h!32774 (t!205631 tokens!456))))) e!1473827))))

(assert (= tb!137463 b!2299869))

(declare-fun m!2727291 () Bool)

(assert (=> b!2299869 m!2727291))

(declare-fun m!2727293 () Bool)

(assert (=> tb!137463 m!2727293))

(assert (=> b!2299867 t!205714))

(declare-fun b_and!183129 () Bool)

(assert (= b_and!183111 (and (=> t!205714 result!167572) b_and!183129)))

(declare-fun tb!137465 () Bool)

(declare-fun t!205716 () Bool)

(assert (=> (and b!2299530 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205716) tb!137465))

(declare-fun result!167574 () Bool)

(assert (= result!167574 result!167572))

(assert (=> b!2299867 t!205716))

(declare-fun b_and!183131 () Bool)

(assert (= b_and!183115 (and (=> t!205716 result!167574) b_and!183131)))

(declare-fun tb!137467 () Bool)

(declare-fun t!205718 () Bool)

(assert (=> (and b!2299068 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205718) tb!137467))

(declare-fun result!167576 () Bool)

(assert (= result!167576 result!167572))

(assert (=> b!2299867 t!205718))

(declare-fun b_and!183133 () Bool)

(assert (= b_and!183109 (and (=> t!205718 result!167576) b_and!183133)))

(declare-fun t!205720 () Bool)

(declare-fun tb!137469 () Bool)

(assert (=> (and b!2299049 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205720) tb!137469))

(declare-fun result!167578 () Bool)

(assert (= result!167578 result!167572))

(assert (=> b!2299867 t!205720))

(declare-fun b_and!183135 () Bool)

(assert (= b_and!183105 (and (=> t!205720 result!167578) b_and!183135)))

(declare-fun tb!137471 () Bool)

(declare-fun t!205722 () Bool)

(assert (=> (and b!2299070 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205722) tb!137471))

(declare-fun result!167580 () Bool)

(assert (= result!167580 result!167572))

(assert (=> b!2299867 t!205722))

(declare-fun b_and!183137 () Bool)

(assert (= b_and!183113 (and (=> t!205722 result!167580) b_and!183137)))

(declare-fun t!205724 () Bool)

(declare-fun tb!137473 () Bool)

(assert (=> (and b!2299045 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205724) tb!137473))

(declare-fun result!167582 () Bool)

(assert (= result!167582 result!167572))

(assert (=> b!2299867 t!205724))

(declare-fun b_and!183139 () Bool)

(assert (= b_and!183107 (and (=> t!205724 result!167582) b_and!183139)))

(declare-fun m!2727295 () Bool)

(assert (=> d!680363 m!2727295))

(declare-fun m!2727297 () Bool)

(assert (=> b!2299867 m!2727297))

(assert (=> b!2299867 m!2727297))

(declare-fun m!2727299 () Bool)

(assert (=> b!2299867 m!2727299))

(declare-fun m!2727301 () Bool)

(assert (=> b!2299868 m!2727301))

(assert (=> b!2299516 d!680363))

(declare-fun d!680365 () Bool)

(declare-fun c!364648 () Bool)

(assert (=> d!680365 (= c!364648 (is-Node!8920 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))))))

(declare-fun e!1473828 () Bool)

(assert (=> d!680365 (= (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))) e!1473828)))

(declare-fun b!2299870 () Bool)

(assert (=> b!2299870 (= e!1473828 (inv!37005 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))))))

(declare-fun b!2299871 () Bool)

(declare-fun e!1473829 () Bool)

(assert (=> b!2299871 (= e!1473828 e!1473829)))

(declare-fun res!983297 () Bool)

(assert (=> b!2299871 (= res!983297 (not (is-Leaf!13099 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))))))

(assert (=> b!2299871 (=> res!983297 e!1473829)))

(declare-fun b!2299872 () Bool)

(assert (=> b!2299872 (= e!1473829 (inv!37006 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))))))

(assert (= (and d!680365 c!364648) b!2299870))

(assert (= (and d!680365 (not c!364648)) b!2299871))

(assert (= (and b!2299871 (not res!983297)) b!2299872))

(declare-fun m!2727303 () Bool)

(assert (=> b!2299870 m!2727303))

(declare-fun m!2727305 () Bool)

(assert (=> b!2299872 m!2727305))

(assert (=> b!2299181 d!680365))

(declare-fun d!680367 () Bool)

(assert (=> d!680367 (= r!2363 otherR!12)))

(assert (=> d!680367 true))

(declare-fun _$42!214 () Unit!40271)

(assert (=> d!680367 (= (choose!13418 rules!1750 r!2363 otherR!12) _$42!214)))

(assert (=> d!680067 d!680367))

(assert (=> d!680067 d!680047))

(declare-fun b!2299874 () Bool)

(declare-fun res!983299 () Bool)

(declare-fun e!1473831 () Bool)

(assert (=> b!2299874 (=> (not res!983299) (not e!1473831))))

(assert (=> b!2299874 (= res!983299 (= (head!5027 lt!852874) (head!5027 (++!6696 lt!852874 (_2!16132 lt!852869)))))))

(declare-fun b!2299875 () Bool)

(assert (=> b!2299875 (= e!1473831 (isPrefix!2376 (tail!3320 lt!852874) (tail!3320 (++!6696 lt!852874 (_2!16132 lt!852869)))))))

(declare-fun b!2299876 () Bool)

(declare-fun e!1473830 () Bool)

(assert (=> b!2299876 (= e!1473830 (>= (size!21579 (++!6696 lt!852874 (_2!16132 lt!852869))) (size!21579 lt!852874)))))

(declare-fun b!2299873 () Bool)

(declare-fun e!1473832 () Bool)

(assert (=> b!2299873 (= e!1473832 e!1473831)))

(declare-fun res!983298 () Bool)

(assert (=> b!2299873 (=> (not res!983298) (not e!1473831))))

(assert (=> b!2299873 (= res!983298 (not (is-Nil!27372 (++!6696 lt!852874 (_2!16132 lt!852869)))))))

(declare-fun d!680369 () Bool)

(assert (=> d!680369 e!1473830))

(declare-fun res!983301 () Bool)

(assert (=> d!680369 (=> res!983301 e!1473830)))

(declare-fun lt!853185 () Bool)

(assert (=> d!680369 (= res!983301 (not lt!853185))))

(assert (=> d!680369 (= lt!853185 e!1473832)))

(declare-fun res!983300 () Bool)

(assert (=> d!680369 (=> res!983300 e!1473832)))

(assert (=> d!680369 (= res!983300 (is-Nil!27372 lt!852874))))

(assert (=> d!680369 (= (isPrefix!2376 lt!852874 (++!6696 lt!852874 (_2!16132 lt!852869))) lt!853185)))

(assert (= (and d!680369 (not res!983300)) b!2299873))

(assert (= (and b!2299873 res!983298) b!2299874))

(assert (= (and b!2299874 res!983299) b!2299875))

(assert (= (and d!680369 (not res!983301)) b!2299876))

(assert (=> b!2299874 m!2726637))

(assert (=> b!2299874 m!2726447))

(declare-fun m!2727307 () Bool)

(assert (=> b!2299874 m!2727307))

(assert (=> b!2299875 m!2726639))

(assert (=> b!2299875 m!2726447))

(declare-fun m!2727309 () Bool)

(assert (=> b!2299875 m!2727309))

(assert (=> b!2299875 m!2726639))

(assert (=> b!2299875 m!2727309))

(declare-fun m!2727311 () Bool)

(assert (=> b!2299875 m!2727311))

(assert (=> b!2299876 m!2726447))

(declare-fun m!2727313 () Bool)

(assert (=> b!2299876 m!2727313))

(assert (=> b!2299876 m!2726643))

(assert (=> d!680105 d!680369))

(assert (=> d!680105 d!680131))

(declare-fun d!680371 () Bool)

(assert (=> d!680371 (isPrefix!2376 lt!852874 (++!6696 lt!852874 (_2!16132 lt!852869)))))

(assert (=> d!680371 true))

(declare-fun _$46!1338 () Unit!40271)

(assert (=> d!680371 (= (choose!13419 lt!852874 (_2!16132 lt!852869)) _$46!1338)))

(declare-fun bs!457618 () Bool)

(assert (= bs!457618 d!680371))

(assert (=> bs!457618 m!2726447))

(assert (=> bs!457618 m!2726447))

(assert (=> bs!457618 m!2726657))

(assert (=> d!680105 d!680371))

(declare-fun b!2299877 () Bool)

(declare-fun res!983304 () Bool)

(declare-fun e!1473838 () Bool)

(assert (=> b!2299877 (=> (not res!983304) (not e!1473838))))

(declare-fun call!136996 () Bool)

(assert (=> b!2299877 (= res!983304 (not call!136996))))

(declare-fun b!2299878 () Bool)

(declare-fun e!1473837 () Bool)

(declare-fun lt!853186 () Bool)

(assert (=> b!2299878 (= e!1473837 (not lt!853186))))

(declare-fun bm!136991 () Bool)

(assert (=> bm!136991 (= call!136996 (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2299879 () Bool)

(declare-fun e!1473836 () Bool)

(assert (=> b!2299879 (= e!1473836 (not (= (head!5027 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (c!364510 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))))

(declare-fun d!680373 () Bool)

(declare-fun e!1473839 () Bool)

(assert (=> d!680373 e!1473839))

(declare-fun c!364651 () Bool)

(assert (=> d!680373 (= c!364651 (is-EmptyExpr!6734 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun e!1473835 () Bool)

(assert (=> d!680373 (= lt!853186 e!1473835)))

(declare-fun c!364650 () Bool)

(assert (=> d!680373 (= c!364650 (isEmpty!15619 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(assert (=> d!680373 (validRegex!2539 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(assert (=> d!680373 (= (matchR!2991 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) lt!853186)))

(declare-fun b!2299880 () Bool)

(assert (=> b!2299880 (= e!1473838 (= (head!5027 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (c!364510 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))))

(declare-fun b!2299881 () Bool)

(declare-fun e!1473834 () Bool)

(assert (=> b!2299881 (= e!1473834 e!1473836)))

(declare-fun res!983306 () Bool)

(assert (=> b!2299881 (=> res!983306 e!1473836)))

(assert (=> b!2299881 (= res!983306 call!136996)))

(declare-fun b!2299882 () Bool)

(declare-fun res!983305 () Bool)

(assert (=> b!2299882 (=> res!983305 e!1473836)))

(assert (=> b!2299882 (= res!983305 (not (isEmpty!15619 (tail!3320 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))))

(declare-fun b!2299883 () Bool)

(assert (=> b!2299883 (= e!1473835 (nullable!1877 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun b!2299884 () Bool)

(declare-fun res!983308 () Bool)

(assert (=> b!2299884 (=> (not res!983308) (not e!1473838))))

(assert (=> b!2299884 (= res!983308 (isEmpty!15619 (tail!3320 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun b!2299885 () Bool)

(assert (=> b!2299885 (= e!1473839 (= lt!853186 call!136996))))

(declare-fun b!2299886 () Bool)

(assert (=> b!2299886 (= e!1473839 e!1473837)))

(declare-fun c!364649 () Bool)

(assert (=> b!2299886 (= c!364649 (is-EmptyLang!6734 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun b!2299887 () Bool)

(assert (=> b!2299887 (= e!1473835 (matchR!2991 (derivativeStep!1537 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) (head!5027 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))) (tail!3320 (tail!3320 (list!10763 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun b!2299888 () Bool)

(declare-fun e!1473833 () Bool)

(assert (=> b!2299888 (= e!1473833 e!1473834)))

(declare-fun res!983309 () Bool)

(assert (=> b!2299888 (=> (not res!983309) (not e!1473834))))

(assert (=> b!2299888 (= res!983309 (not lt!853186))))

(declare-fun b!2299889 () Bool)

(declare-fun res!983302 () Bool)

(assert (=> b!2299889 (=> res!983302 e!1473833)))

(assert (=> b!2299889 (= res!983302 (not (is-ElementMatch!6734 (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))))

(assert (=> b!2299889 (= e!1473837 e!1473833)))

(declare-fun b!2299890 () Bool)

(declare-fun res!983307 () Bool)

(assert (=> b!2299890 (=> res!983307 e!1473833)))

(assert (=> b!2299890 (= res!983307 e!1473838)))

(declare-fun res!983303 () Bool)

(assert (=> b!2299890 (=> (not res!983303) (not e!1473838))))

(assert (=> b!2299890 (= res!983303 lt!853186)))

(assert (= (and d!680373 c!364650) b!2299883))

(assert (= (and d!680373 (not c!364650)) b!2299887))

(assert (= (and d!680373 c!364651) b!2299885))

(assert (= (and d!680373 (not c!364651)) b!2299886))

(assert (= (and b!2299886 c!364649) b!2299878))

(assert (= (and b!2299886 (not c!364649)) b!2299889))

(assert (= (and b!2299889 (not res!983302)) b!2299890))

(assert (= (and b!2299890 res!983303) b!2299877))

(assert (= (and b!2299877 res!983304) b!2299884))

(assert (= (and b!2299884 res!983308) b!2299880))

(assert (= (and b!2299890 (not res!983307)) b!2299888))

(assert (= (and b!2299888 res!983309) b!2299881))

(assert (= (and b!2299881 (not res!983306)) b!2299882))

(assert (= (and b!2299882 (not res!983305)) b!2299879))

(assert (= (or b!2299885 b!2299877 b!2299881) bm!136991))

(assert (=> b!2299879 m!2726571))

(declare-fun m!2727315 () Bool)

(assert (=> b!2299879 m!2727315))

(assert (=> b!2299887 m!2726571))

(assert (=> b!2299887 m!2727315))

(assert (=> b!2299887 m!2726569))

(assert (=> b!2299887 m!2727315))

(declare-fun m!2727317 () Bool)

(assert (=> b!2299887 m!2727317))

(assert (=> b!2299887 m!2726571))

(declare-fun m!2727319 () Bool)

(assert (=> b!2299887 m!2727319))

(assert (=> b!2299887 m!2727317))

(assert (=> b!2299887 m!2727319))

(declare-fun m!2727321 () Bool)

(assert (=> b!2299887 m!2727321))

(assert (=> b!2299880 m!2726571))

(assert (=> b!2299880 m!2727315))

(assert (=> b!2299884 m!2726571))

(assert (=> b!2299884 m!2727319))

(assert (=> b!2299884 m!2727319))

(declare-fun m!2727323 () Bool)

(assert (=> b!2299884 m!2727323))

(assert (=> b!2299883 m!2726569))

(declare-fun m!2727325 () Bool)

(assert (=> b!2299883 m!2727325))

(assert (=> d!680373 m!2726571))

(assert (=> d!680373 m!2726575))

(assert (=> d!680373 m!2726569))

(declare-fun m!2727327 () Bool)

(assert (=> d!680373 m!2727327))

(assert (=> bm!136991 m!2726571))

(assert (=> bm!136991 m!2726575))

(assert (=> b!2299882 m!2726571))

(assert (=> b!2299882 m!2727319))

(assert (=> b!2299882 m!2727319))

(assert (=> b!2299882 m!2727323))

(assert (=> b!2299229 d!680373))

(declare-fun b!2299911 () Bool)

(declare-fun c!364665 () Bool)

(assert (=> b!2299911 (= c!364665 (nullable!1877 (regOne!13980 (regex!4386 r!2363))))))

(declare-fun e!1473852 () Regex!6734)

(declare-fun e!1473851 () Regex!6734)

(assert (=> b!2299911 (= e!1473852 e!1473851)))

(declare-fun b!2299912 () Bool)

(declare-fun call!137007 () Regex!6734)

(assert (=> b!2299912 (= e!1473852 (Concat!11283 call!137007 (regex!4386 r!2363)))))

(declare-fun b!2299913 () Bool)

(declare-fun e!1473850 () Regex!6734)

(declare-fun call!137008 () Regex!6734)

(declare-fun call!137006 () Regex!6734)

(assert (=> b!2299913 (= e!1473850 (Union!6734 call!137008 call!137006))))

(declare-fun d!680375 () Bool)

(declare-fun lt!853189 () Regex!6734)

(assert (=> d!680375 (validRegex!2539 lt!853189)))

(declare-fun e!1473854 () Regex!6734)

(assert (=> d!680375 (= lt!853189 e!1473854)))

(declare-fun c!364664 () Bool)

(assert (=> d!680375 (= c!364664 (or (is-EmptyExpr!6734 (regex!4386 r!2363)) (is-EmptyLang!6734 (regex!4386 r!2363))))))

(assert (=> d!680375 (validRegex!2539 (regex!4386 r!2363))))

(assert (=> d!680375 (= (derivativeStep!1537 (regex!4386 r!2363) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))) lt!853189)))

(declare-fun b!2299914 () Bool)

(declare-fun e!1473853 () Regex!6734)

(assert (=> b!2299914 (= e!1473854 e!1473853)))

(declare-fun c!364666 () Bool)

(assert (=> b!2299914 (= c!364666 (is-ElementMatch!6734 (regex!4386 r!2363)))))

(declare-fun bm!137000 () Bool)

(declare-fun call!137005 () Regex!6734)

(assert (=> bm!137000 (= call!137005 call!137007)))

(declare-fun c!364663 () Bool)

(declare-fun bm!137001 () Bool)

(assert (=> bm!137001 (= call!137006 (derivativeStep!1537 (ite c!364663 (regTwo!13981 (regex!4386 r!2363)) (regTwo!13980 (regex!4386 r!2363))) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2299915 () Bool)

(assert (=> b!2299915 (= e!1473854 EmptyLang!6734)))

(declare-fun b!2299916 () Bool)

(assert (=> b!2299916 (= e!1473853 (ite (= (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456)))) (c!364510 (regex!4386 r!2363))) EmptyExpr!6734 EmptyLang!6734))))

(declare-fun bm!137002 () Bool)

(assert (=> bm!137002 (= call!137007 call!137008)))

(declare-fun bm!137003 () Bool)

(declare-fun c!364662 () Bool)

(assert (=> bm!137003 (= call!137008 (derivativeStep!1537 (ite c!364663 (regOne!13981 (regex!4386 r!2363)) (ite c!364662 (reg!7063 (regex!4386 r!2363)) (regOne!13980 (regex!4386 r!2363)))) (head!5027 (list!10763 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2299917 () Bool)

(assert (=> b!2299917 (= e!1473850 e!1473852)))

(assert (=> b!2299917 (= c!364662 (is-Star!6734 (regex!4386 r!2363)))))

(declare-fun b!2299918 () Bool)

(assert (=> b!2299918 (= c!364663 (is-Union!6734 (regex!4386 r!2363)))))

(assert (=> b!2299918 (= e!1473853 e!1473850)))

(declare-fun b!2299919 () Bool)

(assert (=> b!2299919 (= e!1473851 (Union!6734 (Concat!11283 call!137005 (regTwo!13980 (regex!4386 r!2363))) call!137006))))

(declare-fun b!2299920 () Bool)

(assert (=> b!2299920 (= e!1473851 (Union!6734 (Concat!11283 call!137005 (regTwo!13980 (regex!4386 r!2363))) EmptyLang!6734))))

(assert (= (and d!680375 c!364664) b!2299915))

(assert (= (and d!680375 (not c!364664)) b!2299914))

(assert (= (and b!2299914 c!364666) b!2299916))

(assert (= (and b!2299914 (not c!364666)) b!2299918))

(assert (= (and b!2299918 c!364663) b!2299913))

(assert (= (and b!2299918 (not c!364663)) b!2299917))

(assert (= (and b!2299917 c!364662) b!2299912))

(assert (= (and b!2299917 (not c!364662)) b!2299911))

(assert (= (and b!2299911 c!364665) b!2299919))

(assert (= (and b!2299911 (not c!364665)) b!2299920))

(assert (= (or b!2299919 b!2299920) bm!137000))

(assert (= (or b!2299912 bm!137000) bm!137002))

(assert (= (or b!2299913 bm!137002) bm!137003))

(assert (= (or b!2299913 b!2299919) bm!137001))

(declare-fun m!2727329 () Bool)

(assert (=> b!2299911 m!2727329))

(declare-fun m!2727331 () Bool)

(assert (=> d!680375 m!2727331))

(assert (=> d!680375 m!2726581))

(assert (=> bm!137001 m!2726567))

(declare-fun m!2727333 () Bool)

(assert (=> bm!137001 m!2727333))

(assert (=> bm!137003 m!2726567))

(declare-fun m!2727335 () Bool)

(assert (=> bm!137003 m!2727335))

(assert (=> b!2299229 d!680375))

(assert (=> b!2299229 d!680245))

(assert (=> b!2299229 d!680269))

(assert (=> b!2299340 d!680297))

(assert (=> b!2299340 d!680299))

(assert (=> b!2299340 d!680295))

(declare-fun d!680377 () Bool)

(declare-fun res!983314 () Bool)

(declare-fun e!1473859 () Bool)

(assert (=> d!680377 (=> res!983314 e!1473859)))

(assert (=> d!680377 (= res!983314 (is-Nil!27374 rules!1750))))

(assert (=> d!680377 (= (noDuplicateTag!1621 thiss!16613 rules!1750 Nil!27379) e!1473859)))

(declare-fun b!2299925 () Bool)

(declare-fun e!1473860 () Bool)

(assert (=> b!2299925 (= e!1473859 e!1473860)))

(declare-fun res!983315 () Bool)

(assert (=> b!2299925 (=> (not res!983315) (not e!1473860))))

(declare-fun contains!4772 (List!27473 String!29846) Bool)

(assert (=> b!2299925 (= res!983315 (not (contains!4772 Nil!27379 (tag!4876 (h!32775 rules!1750)))))))

(declare-fun b!2299926 () Bool)

(assert (=> b!2299926 (= e!1473860 (noDuplicateTag!1621 thiss!16613 (t!205632 rules!1750) (Cons!27379 (tag!4876 (h!32775 rules!1750)) Nil!27379)))))

(assert (= (and d!680377 (not res!983314)) b!2299925))

(assert (= (and b!2299925 res!983315) b!2299926))

(declare-fun m!2727337 () Bool)

(assert (=> b!2299925 m!2727337))

(declare-fun m!2727339 () Bool)

(assert (=> b!2299926 m!2727339))

(assert (=> b!2299265 d!680377))

(declare-fun b!2299936 () Bool)

(declare-fun e!1473865 () List!27467)

(declare-fun e!1473866 () List!27467)

(assert (=> b!2299936 (= e!1473865 e!1473866)))

(declare-fun c!364672 () Bool)

(assert (=> b!2299936 (= c!364672 (is-Leaf!13100 (c!364511 (_1!16130 lt!852876))))))

(declare-fun b!2299937 () Bool)

(declare-fun list!10771 (IArray!17847) List!27467)

(assert (=> b!2299937 (= e!1473866 (list!10771 (xs!11863 (c!364511 (_1!16130 lt!852876)))))))

(declare-fun b!2299938 () Bool)

(assert (=> b!2299938 (= e!1473866 (++!6698 (list!10767 (left!20747 (c!364511 (_1!16130 lt!852876)))) (list!10767 (right!21077 (c!364511 (_1!16130 lt!852876))))))))

(declare-fun d!680379 () Bool)

(declare-fun c!364671 () Bool)

(assert (=> d!680379 (= c!364671 (is-Empty!8921 (c!364511 (_1!16130 lt!852876))))))

(assert (=> d!680379 (= (list!10767 (c!364511 (_1!16130 lt!852876))) e!1473865)))

(declare-fun b!2299935 () Bool)

(assert (=> b!2299935 (= e!1473865 Nil!27373)))

(assert (= (and d!680379 c!364671) b!2299935))

(assert (= (and d!680379 (not c!364671)) b!2299936))

(assert (= (and b!2299936 c!364672) b!2299937))

(assert (= (and b!2299936 (not c!364672)) b!2299938))

(declare-fun m!2727341 () Bool)

(assert (=> b!2299937 m!2727341))

(declare-fun m!2727343 () Bool)

(assert (=> b!2299938 m!2727343))

(declare-fun m!2727345 () Bool)

(assert (=> b!2299938 m!2727345))

(assert (=> b!2299938 m!2727343))

(assert (=> b!2299938 m!2727345))

(declare-fun m!2727347 () Bool)

(assert (=> b!2299938 m!2727347))

(assert (=> d!680149 d!680379))

(declare-fun call!137009 () Bool)

(declare-fun c!364674 () Bool)

(declare-fun c!364673 () Bool)

(declare-fun bm!137004 () Bool)

(assert (=> bm!137004 (= call!137009 (validRegex!2539 (ite c!364673 (reg!7063 (regex!4386 otherR!12)) (ite c!364674 (regTwo!13981 (regex!4386 otherR!12)) (regOne!13980 (regex!4386 otherR!12))))))))

(declare-fun b!2299939 () Bool)

(declare-fun e!1473868 () Bool)

(declare-fun e!1473873 () Bool)

(assert (=> b!2299939 (= e!1473868 e!1473873)))

(declare-fun res!983320 () Bool)

(assert (=> b!2299939 (=> (not res!983320) (not e!1473873))))

(declare-fun call!137010 () Bool)

(assert (=> b!2299939 (= res!983320 call!137010)))

(declare-fun d!680381 () Bool)

(declare-fun res!983319 () Bool)

(declare-fun e!1473869 () Bool)

(assert (=> d!680381 (=> res!983319 e!1473869)))

(assert (=> d!680381 (= res!983319 (is-ElementMatch!6734 (regex!4386 otherR!12)))))

(assert (=> d!680381 (= (validRegex!2539 (regex!4386 otherR!12)) e!1473869)))

(declare-fun b!2299940 () Bool)

(declare-fun call!137011 () Bool)

(assert (=> b!2299940 (= e!1473873 call!137011)))

(declare-fun b!2299941 () Bool)

(declare-fun res!983318 () Bool)

(declare-fun e!1473871 () Bool)

(assert (=> b!2299941 (=> (not res!983318) (not e!1473871))))

(assert (=> b!2299941 (= res!983318 call!137011)))

(declare-fun e!1473867 () Bool)

(assert (=> b!2299941 (= e!1473867 e!1473871)))

(declare-fun bm!137005 () Bool)

(assert (=> bm!137005 (= call!137011 (validRegex!2539 (ite c!364674 (regOne!13981 (regex!4386 otherR!12)) (regTwo!13980 (regex!4386 otherR!12)))))))

(declare-fun bm!137006 () Bool)

(assert (=> bm!137006 (= call!137010 call!137009)))

(declare-fun b!2299942 () Bool)

(declare-fun res!983316 () Bool)

(assert (=> b!2299942 (=> res!983316 e!1473868)))

(assert (=> b!2299942 (= res!983316 (not (is-Concat!11283 (regex!4386 otherR!12))))))

(assert (=> b!2299942 (= e!1473867 e!1473868)))

(declare-fun b!2299943 () Bool)

(assert (=> b!2299943 (= e!1473871 call!137010)))

(declare-fun b!2299944 () Bool)

(declare-fun e!1473872 () Bool)

(assert (=> b!2299944 (= e!1473872 call!137009)))

(declare-fun b!2299945 () Bool)

(declare-fun e!1473870 () Bool)

(assert (=> b!2299945 (= e!1473870 e!1473867)))

(assert (=> b!2299945 (= c!364674 (is-Union!6734 (regex!4386 otherR!12)))))

(declare-fun b!2299946 () Bool)

(assert (=> b!2299946 (= e!1473870 e!1473872)))

(declare-fun res!983317 () Bool)

(assert (=> b!2299946 (= res!983317 (not (nullable!1877 (reg!7063 (regex!4386 otherR!12)))))))

(assert (=> b!2299946 (=> (not res!983317) (not e!1473872))))

(declare-fun b!2299947 () Bool)

(assert (=> b!2299947 (= e!1473869 e!1473870)))

(assert (=> b!2299947 (= c!364673 (is-Star!6734 (regex!4386 otherR!12)))))

(assert (= (and d!680381 (not res!983319)) b!2299947))

(assert (= (and b!2299947 c!364673) b!2299946))

(assert (= (and b!2299947 (not c!364673)) b!2299945))

(assert (= (and b!2299946 res!983317) b!2299944))

(assert (= (and b!2299945 c!364674) b!2299941))

(assert (= (and b!2299945 (not c!364674)) b!2299942))

(assert (= (and b!2299941 res!983318) b!2299943))

(assert (= (and b!2299942 (not res!983316)) b!2299939))

(assert (= (and b!2299939 res!983320) b!2299940))

(assert (= (or b!2299941 b!2299940) bm!137005))

(assert (= (or b!2299943 b!2299939) bm!137006))

(assert (= (or b!2299944 bm!137006) bm!137004))

(declare-fun m!2727349 () Bool)

(assert (=> bm!137004 m!2727349))

(declare-fun m!2727351 () Bool)

(assert (=> bm!137005 m!2727351))

(declare-fun m!2727353 () Bool)

(assert (=> b!2299946 m!2727353))

(assert (=> d!680143 d!680381))

(declare-fun bs!457619 () Bool)

(declare-fun d!680383 () Bool)

(assert (= bs!457619 (and d!680383 d!680273)))

(declare-fun lambda!85923 () Int)

(assert (=> bs!457619 (= (= (toValue!6192 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 otherR!12))) (= lambda!85923 lambda!85919))))

(declare-fun bs!457620 () Bool)

(assert (= bs!457620 (and d!680383 d!680317)))

(assert (=> bs!457620 (= (= (toValue!6192 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (= lambda!85923 lambda!85921))))

(assert (=> d!680383 true))

(assert (=> d!680383 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 r!2363))) (dynLambda!11901 order!15267 lambda!85923))))

(assert (=> d!680383 (= (equivClasses!1698 (toChars!6051 (transformation!4386 r!2363)) (toValue!6192 (transformation!4386 r!2363))) (Forall2!715 lambda!85923))))

(declare-fun bs!457621 () Bool)

(assert (= bs!457621 d!680383))

(declare-fun m!2727355 () Bool)

(assert (=> bs!457621 m!2727355))

(assert (=> b!2299275 d!680383))

(declare-fun d!680385 () Bool)

(assert (=> d!680385 (= (list!10762 (_1!16130 lt!853002)) (list!10767 (c!364511 (_1!16130 lt!853002))))))

(declare-fun bs!457622 () Bool)

(assert (= bs!457622 d!680385))

(declare-fun m!2727357 () Bool)

(assert (=> bs!457622 m!2727357))

(assert (=> b!2299479 d!680385))

(declare-fun b!2299960 () Bool)

(declare-fun e!1473883 () Bool)

(declare-fun lt!853197 () tuple2!27242)

(assert (=> b!2299960 (= e!1473883 (not (isEmpty!15615 (_1!16131 lt!853197))))))

(declare-fun b!2299961 () Bool)

(declare-fun e!1473884 () Bool)

(assert (=> b!2299961 (= e!1473884 e!1473883)))

(declare-fun res!983325 () Bool)

(assert (=> b!2299961 (= res!983325 (< (size!21579 (_2!16131 lt!853197)) (size!21579 (list!10763 (seqFromList!3090 input!1722)))))))

(assert (=> b!2299961 (=> (not res!983325) (not e!1473883))))

(declare-fun b!2299962 () Bool)

(assert (=> b!2299962 (= e!1473884 (= (_2!16131 lt!853197) (list!10763 (seqFromList!3090 input!1722))))))

(declare-fun b!2299963 () Bool)

(declare-fun e!1473882 () tuple2!27242)

(assert (=> b!2299963 (= e!1473882 (tuple2!27243 Nil!27373 (list!10763 (seqFromList!3090 input!1722))))))

(declare-fun b!2299964 () Bool)

(declare-fun lt!853196 () Option!5380)

(declare-fun lt!853198 () tuple2!27242)

(assert (=> b!2299964 (= e!1473882 (tuple2!27243 (Cons!27373 (_1!16132 (v!30471 lt!853196)) (_1!16131 lt!853198)) (_2!16131 lt!853198)))))

(assert (=> b!2299964 (= lt!853198 (lexList!1123 thiss!16613 rules!1750 (_2!16132 (v!30471 lt!853196))))))

(declare-fun d!680387 () Bool)

(assert (=> d!680387 e!1473884))

(declare-fun c!364679 () Bool)

(assert (=> d!680387 (= c!364679 (> (size!21587 (_1!16131 lt!853197)) 0))))

(assert (=> d!680387 (= lt!853197 e!1473882)))

(declare-fun c!364680 () Bool)

(assert (=> d!680387 (= c!364680 (is-Some!5379 lt!853196))))

(assert (=> d!680387 (= lt!853196 (maxPrefix!2239 thiss!16613 rules!1750 (list!10763 (seqFromList!3090 input!1722))))))

(assert (=> d!680387 (= (lexList!1123 thiss!16613 rules!1750 (list!10763 (seqFromList!3090 input!1722))) lt!853197)))

(assert (= (and d!680387 c!364680) b!2299964))

(assert (= (and d!680387 (not c!364680)) b!2299963))

(assert (= (and d!680387 c!364679) b!2299961))

(assert (= (and d!680387 (not c!364679)) b!2299962))

(assert (= (and b!2299961 res!983325) b!2299960))

(declare-fun m!2727359 () Bool)

(assert (=> b!2299960 m!2727359))

(declare-fun m!2727361 () Bool)

(assert (=> b!2299961 m!2727361))

(assert (=> b!2299961 m!2726837))

(assert (=> b!2299961 m!2727273))

(declare-fun m!2727363 () Bool)

(assert (=> b!2299964 m!2727363))

(declare-fun m!2727365 () Bool)

(assert (=> d!680387 m!2727365))

(assert (=> d!680387 m!2726837))

(declare-fun m!2727367 () Bool)

(assert (=> d!680387 m!2727367))

(assert (=> b!2299479 d!680387))

(declare-fun d!680389 () Bool)

(assert (=> d!680389 (= (list!10763 (seqFromList!3090 input!1722)) (list!10766 (c!364509 (seqFromList!3090 input!1722))))))

(declare-fun bs!457623 () Bool)

(assert (= bs!457623 d!680389))

(declare-fun m!2727369 () Bool)

(assert (=> bs!457623 m!2727369))

(assert (=> b!2299479 d!680389))

(declare-fun d!680391 () Bool)

(declare-fun e!1473889 () Bool)

(assert (=> d!680391 e!1473889))

(declare-fun res!983328 () Bool)

(assert (=> d!680391 (=> (not res!983328) (not e!1473889))))

(declare-fun lt!853202 () BalanceConc!17568)

(assert (=> d!680391 (= res!983328 (= (list!10763 lt!853202) input!1722))))

(declare-fun fromList!545 (List!27466) Conc!8920)

(assert (=> d!680391 (= lt!853202 (BalanceConc!17569 (fromList!545 input!1722)))))

(assert (=> d!680391 (= (fromListB!1389 input!1722) lt!853202)))

(declare-fun b!2299973 () Bool)

(assert (=> b!2299973 (= e!1473889 (isBalanced!2688 (fromList!545 input!1722)))))

(assert (= (and d!680391 res!983328) b!2299973))

(declare-fun m!2727377 () Bool)

(assert (=> d!680391 m!2727377))

(declare-fun m!2727379 () Bool)

(assert (=> d!680391 m!2727379))

(assert (=> b!2299973 m!2727379))

(assert (=> b!2299973 m!2727379))

(declare-fun m!2727381 () Bool)

(assert (=> b!2299973 m!2727381))

(assert (=> d!680179 d!680391))

(assert (=> b!2299225 d!680263))

(declare-fun d!680399 () Bool)

(assert (=> d!680399 (= (list!10763 (_2!16130 lt!853002)) (list!10766 (c!364509 (_2!16130 lt!853002))))))

(declare-fun bs!457626 () Bool)

(assert (= bs!457626 d!680399))

(declare-fun m!2727389 () Bool)

(assert (=> bs!457626 m!2727389))

(assert (=> b!2299477 d!680399))

(assert (=> b!2299477 d!680387))

(assert (=> b!2299477 d!680389))

(declare-fun d!680403 () Bool)

(assert (=> d!680403 (= (isEmpty!15619 (originalCharacters!5156 (h!32774 tokens!456))) (is-Nil!27372 (originalCharacters!5156 (h!32774 tokens!456))))))

(assert (=> d!680085 d!680403))

(declare-fun b!2299979 () Bool)

(declare-fun e!1473893 () List!27466)

(assert (=> b!2299979 (= e!1473893 (++!6696 (list!10766 (left!20746 (c!364509 (_2!16130 lt!852876)))) (list!10766 (right!21076 (c!364509 (_2!16130 lt!852876))))))))

(declare-fun d!680405 () Bool)

(declare-fun c!364684 () Bool)

(assert (=> d!680405 (= c!364684 (is-Empty!8920 (c!364509 (_2!16130 lt!852876))))))

(declare-fun e!1473892 () List!27466)

(assert (=> d!680405 (= (list!10766 (c!364509 (_2!16130 lt!852876))) e!1473892)))

(declare-fun b!2299978 () Bool)

(assert (=> b!2299978 (= e!1473893 (list!10770 (xs!11862 (c!364509 (_2!16130 lt!852876)))))))

(declare-fun b!2299976 () Bool)

(assert (=> b!2299976 (= e!1473892 Nil!27372)))

(declare-fun b!2299977 () Bool)

(assert (=> b!2299977 (= e!1473892 e!1473893)))

(declare-fun c!364685 () Bool)

(assert (=> b!2299977 (= c!364685 (is-Leaf!13099 (c!364509 (_2!16130 lt!852876))))))

(assert (= (and d!680405 c!364684) b!2299976))

(assert (= (and d!680405 (not c!364684)) b!2299977))

(assert (= (and b!2299977 c!364685) b!2299978))

(assert (= (and b!2299977 (not c!364685)) b!2299979))

(declare-fun m!2727391 () Bool)

(assert (=> b!2299979 m!2727391))

(declare-fun m!2727393 () Bool)

(assert (=> b!2299979 m!2727393))

(assert (=> b!2299979 m!2727391))

(assert (=> b!2299979 m!2727393))

(declare-fun m!2727395 () Bool)

(assert (=> b!2299979 m!2727395))

(declare-fun m!2727397 () Bool)

(assert (=> b!2299978 m!2727397))

(assert (=> d!680151 d!680405))

(declare-fun d!680407 () Bool)

(declare-fun lt!853204 () Bool)

(assert (=> d!680407 (= lt!853204 (set.member r!2363 (content!3680 (t!205632 rules!1750))))))

(declare-fun e!1473894 () Bool)

(assert (=> d!680407 (= lt!853204 e!1473894)))

(declare-fun res!983331 () Bool)

(assert (=> d!680407 (=> (not res!983331) (not e!1473894))))

(assert (=> d!680407 (= res!983331 (is-Cons!27374 (t!205632 rules!1750)))))

(assert (=> d!680407 (= (contains!4770 (t!205632 rules!1750) r!2363) lt!853204)))

(declare-fun b!2299980 () Bool)

(declare-fun e!1473895 () Bool)

(assert (=> b!2299980 (= e!1473894 e!1473895)))

(declare-fun res!983332 () Bool)

(assert (=> b!2299980 (=> res!983332 e!1473895)))

(assert (=> b!2299980 (= res!983332 (= (h!32775 (t!205632 rules!1750)) r!2363))))

(declare-fun b!2299981 () Bool)

(assert (=> b!2299981 (= e!1473895 (contains!4770 (t!205632 (t!205632 rules!1750)) r!2363))))

(assert (= (and d!680407 res!983331) b!2299980))

(assert (= (and b!2299980 (not res!983332)) b!2299981))

(assert (=> d!680407 m!2727007))

(declare-fun m!2727401 () Bool)

(assert (=> d!680407 m!2727401))

(declare-fun m!2727403 () Bool)

(assert (=> b!2299981 m!2727403))

(assert (=> b!2299176 d!680407))

(declare-fun b!2299987 () Bool)

(declare-fun e!1473898 () List!27466)

(assert (=> b!2299987 (= e!1473898 (Cons!27372 (h!32773 lt!852874) (++!6696 (t!205630 lt!852874) lt!852942)))))

(declare-fun d!680411 () Bool)

(declare-fun e!1473899 () Bool)

(assert (=> d!680411 e!1473899))

(declare-fun res!983335 () Bool)

(assert (=> d!680411 (=> (not res!983335) (not e!1473899))))

(declare-fun lt!853206 () List!27466)

(assert (=> d!680411 (= res!983335 (= (content!3681 lt!853206) (set.union (content!3681 lt!852874) (content!3681 lt!852942))))))

(assert (=> d!680411 (= lt!853206 e!1473898)))

(declare-fun c!364687 () Bool)

(assert (=> d!680411 (= c!364687 (is-Nil!27372 lt!852874))))

(assert (=> d!680411 (= (++!6696 lt!852874 lt!852942) lt!853206)))

(declare-fun b!2299986 () Bool)

(assert (=> b!2299986 (= e!1473898 lt!852942)))

(declare-fun b!2299989 () Bool)

(assert (=> b!2299989 (= e!1473899 (or (not (= lt!852942 Nil!27372)) (= lt!853206 lt!852874)))))

(declare-fun b!2299988 () Bool)

(declare-fun res!983336 () Bool)

(assert (=> b!2299988 (=> (not res!983336) (not e!1473899))))

(assert (=> b!2299988 (= res!983336 (= (size!21579 lt!853206) (+ (size!21579 lt!852874) (size!21579 lt!852942))))))

(assert (= (and d!680411 c!364687) b!2299986))

(assert (= (and d!680411 (not c!364687)) b!2299987))

(assert (= (and d!680411 res!983335) b!2299988))

(assert (= (and b!2299988 res!983336) b!2299989))

(declare-fun m!2727415 () Bool)

(assert (=> b!2299987 m!2727415))

(declare-fun m!2727417 () Bool)

(assert (=> d!680411 m!2727417))

(assert (=> d!680411 m!2726737))

(declare-fun m!2727421 () Bool)

(assert (=> d!680411 m!2727421))

(declare-fun m!2727423 () Bool)

(assert (=> b!2299988 m!2727423))

(assert (=> b!2299988 m!2726643))

(declare-fun m!2727425 () Bool)

(assert (=> b!2299988 m!2727425))

(assert (=> d!680103 d!680411))

(assert (=> d!680103 d!680327))

(assert (=> d!680103 d!680221))

(declare-fun d!680417 () Bool)

(assert (=> d!680417 (= (list!10763 lt!852925) (list!10766 (c!364509 lt!852925)))))

(declare-fun bs!457629 () Bool)

(assert (= bs!457629 d!680417))

(declare-fun m!2727429 () Bool)

(assert (=> bs!457629 m!2727429))

(assert (=> d!680051 d!680417))

(declare-fun b!2300096 () Bool)

(declare-fun e!1473959 () Bool)

(declare-fun e!1473961 () Bool)

(assert (=> b!2300096 (= e!1473959 e!1473961)))

(declare-fun res!983374 () Bool)

(assert (=> b!2300096 (=> (not res!983374) (not e!1473961))))

(declare-fun lt!853253 () Option!5380)

(assert (=> b!2300096 (= res!983374 (matchR!2991 (regex!4386 (h!32775 rules!1750)) (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!853253))))))))

(declare-fun b!2300097 () Bool)

(declare-fun res!983380 () Bool)

(assert (=> b!2300097 (=> (not res!983380) (not e!1473961))))

(assert (=> b!2300097 (= res!983380 (= (++!6696 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!853253)))) (_2!16132 (get!8251 lt!853253))) input!1722))))

(declare-fun d!680421 () Bool)

(assert (=> d!680421 e!1473959))

(declare-fun res!983375 () Bool)

(assert (=> d!680421 (=> res!983375 e!1473959)))

(assert (=> d!680421 (= res!983375 (isEmpty!15620 lt!853253))))

(declare-fun e!1473960 () Option!5380)

(assert (=> d!680421 (= lt!853253 e!1473960)))

(declare-fun c!364721 () Bool)

(declare-datatypes ((tuple2!27254 0))(
  ( (tuple2!27255 (_1!16137 List!27466) (_2!16137 List!27466)) )
))
(declare-fun lt!853254 () tuple2!27254)

(assert (=> d!680421 (= c!364721 (isEmpty!15619 (_1!16137 lt!853254)))))

(declare-fun findLongestMatch!659 (Regex!6734 List!27466) tuple2!27254)

(assert (=> d!680421 (= lt!853254 (findLongestMatch!659 (regex!4386 (h!32775 rules!1750)) input!1722))))

(assert (=> d!680421 (ruleValid!1476 thiss!16613 (h!32775 rules!1750))))

(assert (=> d!680421 (= (maxPrefixOneRule!1409 thiss!16613 (h!32775 rules!1750) input!1722) lt!853253)))

(declare-fun b!2300098 () Bool)

(declare-fun res!983376 () Bool)

(assert (=> b!2300098 (=> (not res!983376) (not e!1473961))))

(assert (=> b!2300098 (= res!983376 (< (size!21579 (_2!16132 (get!8251 lt!853253))) (size!21579 input!1722)))))

(declare-fun b!2300099 () Bool)

(assert (=> b!2300099 (= e!1473960 (Some!5379 (tuple2!27245 (Token!8251 (apply!6648 (transformation!4386 (h!32775 rules!1750)) (seqFromList!3090 (_1!16137 lt!853254))) (h!32775 rules!1750) (size!21578 (seqFromList!3090 (_1!16137 lt!853254))) (_1!16137 lt!853254)) (_2!16137 lt!853254))))))

(declare-fun lt!853250 () Unit!40271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!703 (Regex!6734 List!27466) Unit!40271)

(assert (=> b!2300099 (= lt!853250 (longestMatchIsAcceptedByMatchOrIsEmpty!703 (regex!4386 (h!32775 rules!1750)) input!1722))))

(declare-fun res!983377 () Bool)

(declare-fun findLongestMatchInner!730 (Regex!6734 List!27466 Int List!27466 List!27466 Int) tuple2!27254)

(assert (=> b!2300099 (= res!983377 (isEmpty!15619 (_1!16137 (findLongestMatchInner!730 (regex!4386 (h!32775 rules!1750)) Nil!27372 (size!21579 Nil!27372) input!1722 input!1722 (size!21579 input!1722)))))))

(declare-fun e!1473958 () Bool)

(assert (=> b!2300099 (=> res!983377 e!1473958)))

(assert (=> b!2300099 e!1473958))

(declare-fun lt!853251 () Unit!40271)

(assert (=> b!2300099 (= lt!853251 lt!853250)))

(declare-fun lt!853252 () Unit!40271)

(declare-fun lemmaSemiInverse!1075 (TokenValueInjection!8636 BalanceConc!17568) Unit!40271)

(assert (=> b!2300099 (= lt!853252 (lemmaSemiInverse!1075 (transformation!4386 (h!32775 rules!1750)) (seqFromList!3090 (_1!16137 lt!853254))))))

(declare-fun b!2300100 () Bool)

(declare-fun res!983379 () Bool)

(assert (=> b!2300100 (=> (not res!983379) (not e!1473961))))

(assert (=> b!2300100 (= res!983379 (= (value!138822 (_1!16132 (get!8251 lt!853253))) (apply!6648 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!853253)))) (seqFromList!3090 (originalCharacters!5156 (_1!16132 (get!8251 lt!853253)))))))))

(declare-fun b!2300101 () Bool)

(assert (=> b!2300101 (= e!1473961 (= (size!21577 (_1!16132 (get!8251 lt!853253))) (size!21579 (originalCharacters!5156 (_1!16132 (get!8251 lt!853253))))))))

(declare-fun b!2300102 () Bool)

(assert (=> b!2300102 (= e!1473958 (matchR!2991 (regex!4386 (h!32775 rules!1750)) (_1!16137 (findLongestMatchInner!730 (regex!4386 (h!32775 rules!1750)) Nil!27372 (size!21579 Nil!27372) input!1722 input!1722 (size!21579 input!1722)))))))

(declare-fun b!2300103 () Bool)

(assert (=> b!2300103 (= e!1473960 None!5379)))

(declare-fun b!2300104 () Bool)

(declare-fun res!983378 () Bool)

(assert (=> b!2300104 (=> (not res!983378) (not e!1473961))))

(assert (=> b!2300104 (= res!983378 (= (rule!6730 (_1!16132 (get!8251 lt!853253))) (h!32775 rules!1750)))))

(assert (= (and d!680421 c!364721) b!2300103))

(assert (= (and d!680421 (not c!364721)) b!2300099))

(assert (= (and b!2300099 (not res!983377)) b!2300102))

(assert (= (and d!680421 (not res!983375)) b!2300096))

(assert (= (and b!2300096 res!983374) b!2300097))

(assert (= (and b!2300097 res!983380) b!2300098))

(assert (= (and b!2300098 res!983376) b!2300104))

(assert (= (and b!2300104 res!983378) b!2300100))

(assert (= (and b!2300100 res!983379) b!2300101))

(declare-fun m!2727559 () Bool)

(assert (=> b!2300104 m!2727559))

(assert (=> b!2300101 m!2727559))

(declare-fun m!2727561 () Bool)

(assert (=> b!2300101 m!2727561))

(declare-fun m!2727563 () Bool)

(assert (=> b!2300102 m!2727563))

(assert (=> b!2300102 m!2726607))

(assert (=> b!2300102 m!2727563))

(assert (=> b!2300102 m!2726607))

(declare-fun m!2727565 () Bool)

(assert (=> b!2300102 m!2727565))

(declare-fun m!2727567 () Bool)

(assert (=> b!2300102 m!2727567))

(assert (=> b!2300098 m!2727559))

(declare-fun m!2727569 () Bool)

(assert (=> b!2300098 m!2727569))

(assert (=> b!2300098 m!2726607))

(assert (=> b!2300097 m!2727559))

(declare-fun m!2727571 () Bool)

(assert (=> b!2300097 m!2727571))

(assert (=> b!2300097 m!2727571))

(declare-fun m!2727573 () Bool)

(assert (=> b!2300097 m!2727573))

(assert (=> b!2300097 m!2727573))

(declare-fun m!2727575 () Bool)

(assert (=> b!2300097 m!2727575))

(assert (=> b!2300100 m!2727559))

(declare-fun m!2727577 () Bool)

(assert (=> b!2300100 m!2727577))

(assert (=> b!2300100 m!2727577))

(declare-fun m!2727579 () Bool)

(assert (=> b!2300100 m!2727579))

(assert (=> b!2300099 m!2727563))

(declare-fun m!2727581 () Bool)

(assert (=> b!2300099 m!2727581))

(assert (=> b!2300099 m!2726607))

(declare-fun m!2727583 () Bool)

(assert (=> b!2300099 m!2727583))

(declare-fun m!2727585 () Bool)

(assert (=> b!2300099 m!2727585))

(declare-fun m!2727587 () Bool)

(assert (=> b!2300099 m!2727587))

(assert (=> b!2300099 m!2727563))

(assert (=> b!2300099 m!2726607))

(assert (=> b!2300099 m!2727565))

(assert (=> b!2300099 m!2727583))

(declare-fun m!2727589 () Bool)

(assert (=> b!2300099 m!2727589))

(assert (=> b!2300099 m!2727583))

(assert (=> b!2300099 m!2727583))

(declare-fun m!2727591 () Bool)

(assert (=> b!2300099 m!2727591))

(assert (=> b!2300096 m!2727559))

(assert (=> b!2300096 m!2727571))

(assert (=> b!2300096 m!2727571))

(assert (=> b!2300096 m!2727573))

(assert (=> b!2300096 m!2727573))

(declare-fun m!2727593 () Bool)

(assert (=> b!2300096 m!2727593))

(declare-fun m!2727595 () Bool)

(assert (=> d!680421 m!2727595))

(declare-fun m!2727597 () Bool)

(assert (=> d!680421 m!2727597))

(declare-fun m!2727599 () Bool)

(assert (=> d!680421 m!2727599))

(assert (=> d!680421 m!2727003))

(assert (=> bm!136973 d!680421))

(declare-fun d!680515 () Bool)

(assert (=> d!680515 (= (head!5027 otherP!12) (h!32773 otherP!12))))

(assert (=> b!2299258 d!680515))

(assert (=> b!2299258 d!680349))

(declare-fun bs!457647 () Bool)

(declare-fun d!680517 () Bool)

(assert (= bs!457647 (and d!680517 d!680265)))

(declare-fun lambda!85935 () Int)

(assert (=> bs!457647 (= (and (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (h!32775 rules!1750)))) (= (toValue!6192 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 (h!32775 rules!1750))))) (= lambda!85935 lambda!85916))))

(declare-fun bs!457649 () Bool)

(assert (= bs!457649 (and d!680517 d!680291)))

(assert (=> bs!457649 (= (and (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (= (toValue!6192 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456)))))) (= lambda!85935 lambda!85920))))

(declare-fun bs!457650 () Bool)

(assert (= bs!457650 (and d!680517 d!680333)))

(assert (=> bs!457650 (= (and (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 r!2363))) (= (toValue!6192 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 r!2363)))) (= lambda!85935 lambda!85922))))

(assert (=> d!680517 true))

(assert (=> d!680517 (< (dynLambda!11898 order!15261 (toChars!6051 (transformation!4386 otherR!12))) (dynLambda!11899 order!15263 lambda!85935))))

(assert (=> d!680517 true))

(assert (=> d!680517 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 otherR!12))) (dynLambda!11899 order!15263 lambda!85935))))

(assert (=> d!680517 (= (semiInverseModEq!1779 (toChars!6051 (transformation!4386 otherR!12)) (toValue!6192 (transformation!4386 otherR!12))) (Forall!1098 lambda!85935))))

(declare-fun bs!457651 () Bool)

(assert (= bs!457651 d!680517))

(declare-fun m!2727605 () Bool)

(assert (=> bs!457651 m!2727605))

(assert (=> d!680059 d!680517))

(declare-fun b!2300116 () Bool)

(declare-fun e!1473965 () List!27466)

(assert (=> b!2300116 (= e!1473965 (Cons!27372 (h!32773 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (++!6696 (t!205630 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (_2!16132 (get!8251 lt!852970)))))))

(declare-fun d!680523 () Bool)

(declare-fun e!1473966 () Bool)

(assert (=> d!680523 e!1473966))

(declare-fun res!983381 () Bool)

(assert (=> d!680523 (=> (not res!983381) (not e!1473966))))

(declare-fun lt!853255 () List!27466)

(assert (=> d!680523 (= res!983381 (= (content!3681 lt!853255) (set.union (content!3681 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (content!3681 (_2!16132 (get!8251 lt!852970))))))))

(assert (=> d!680523 (= lt!853255 e!1473965)))

(declare-fun c!364725 () Bool)

(assert (=> d!680523 (= c!364725 (is-Nil!27372 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))))))

(assert (=> d!680523 (= (++!6696 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))) (_2!16132 (get!8251 lt!852970))) lt!853255)))

(declare-fun b!2300115 () Bool)

(assert (=> b!2300115 (= e!1473965 (_2!16132 (get!8251 lt!852970)))))

(declare-fun b!2300118 () Bool)

(assert (=> b!2300118 (= e!1473966 (or (not (= (_2!16132 (get!8251 lt!852970)) Nil!27372)) (= lt!853255 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970)))))))))

(declare-fun b!2300117 () Bool)

(declare-fun res!983382 () Bool)

(assert (=> b!2300117 (=> (not res!983382) (not e!1473966))))

(assert (=> b!2300117 (= res!983382 (= (size!21579 lt!853255) (+ (size!21579 (list!10763 (charsOf!2774 (_1!16132 (get!8251 lt!852970))))) (size!21579 (_2!16132 (get!8251 lt!852970))))))))

(assert (= (and d!680523 c!364725) b!2300115))

(assert (= (and d!680523 (not c!364725)) b!2300116))

(assert (= (and d!680523 res!983381) b!2300117))

(assert (= (and b!2300117 res!983382) b!2300118))

(declare-fun m!2727609 () Bool)

(assert (=> b!2300116 m!2727609))

(declare-fun m!2727611 () Bool)

(assert (=> d!680523 m!2727611))

(assert (=> d!680523 m!2726699))

(declare-fun m!2727613 () Bool)

(assert (=> d!680523 m!2727613))

(declare-fun m!2727615 () Bool)

(assert (=> d!680523 m!2727615))

(declare-fun m!2727617 () Bool)

(assert (=> b!2300117 m!2727617))

(assert (=> b!2300117 m!2726699))

(declare-fun m!2727619 () Bool)

(assert (=> b!2300117 m!2727619))

(assert (=> b!2300117 m!2726707))

(assert (=> b!2299342 d!680523))

(assert (=> b!2299342 d!680297))

(assert (=> b!2299342 d!680299))

(assert (=> b!2299342 d!680295))

(declare-fun b!2300122 () Bool)

(declare-fun e!1473968 () List!27466)

(assert (=> b!2300122 (= e!1473968 (++!6696 (list!10766 (left!20746 (c!364509 (charsOf!2774 (head!5025 tokens!456))))) (list!10766 (right!21076 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))))

(declare-fun d!680527 () Bool)

(declare-fun c!364726 () Bool)

(assert (=> d!680527 (= c!364726 (is-Empty!8920 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))

(declare-fun e!1473967 () List!27466)

(assert (=> d!680527 (= (list!10766 (c!364509 (charsOf!2774 (head!5025 tokens!456)))) e!1473967)))

(declare-fun b!2300121 () Bool)

(assert (=> b!2300121 (= e!1473968 (list!10770 (xs!11862 (c!364509 (charsOf!2774 (head!5025 tokens!456))))))))

(declare-fun b!2300119 () Bool)

(assert (=> b!2300119 (= e!1473967 Nil!27372)))

(declare-fun b!2300120 () Bool)

(assert (=> b!2300120 (= e!1473967 e!1473968)))

(declare-fun c!364727 () Bool)

(assert (=> b!2300120 (= c!364727 (is-Leaf!13099 (c!364509 (charsOf!2774 (head!5025 tokens!456)))))))

(assert (= (and d!680527 c!364726) b!2300119))

(assert (= (and d!680527 (not c!364726)) b!2300120))

(assert (= (and b!2300120 c!364727) b!2300121))

(assert (= (and b!2300120 (not c!364727)) b!2300122))

(declare-fun m!2727621 () Bool)

(assert (=> b!2300122 m!2727621))

(declare-fun m!2727623 () Bool)

(assert (=> b!2300122 m!2727623))

(assert (=> b!2300122 m!2727621))

(assert (=> b!2300122 m!2727623))

(declare-fun m!2727625 () Bool)

(assert (=> b!2300122 m!2727625))

(declare-fun m!2727627 () Bool)

(assert (=> b!2300121 m!2727627))

(assert (=> d!680065 d!680527))

(declare-fun d!680531 () Bool)

(assert (=> d!680531 (= (nullable!1877 (regex!4386 otherR!12)) (nullableFct!458 (regex!4386 otherR!12)))))

(declare-fun bs!457654 () Bool)

(assert (= bs!457654 d!680531))

(declare-fun m!2727629 () Bool)

(assert (=> bs!457654 m!2727629))

(assert (=> b!2299385 d!680531))

(assert (=> d!680137 d!680135))

(declare-fun d!680533 () Bool)

(assert (=> d!680533 (ruleValid!1476 thiss!16613 r!2363)))

(assert (=> d!680533 true))

(declare-fun _$65!1174 () Unit!40271)

(assert (=> d!680533 (= (choose!13420 thiss!16613 r!2363 rules!1750) _$65!1174)))

(declare-fun bs!457655 () Bool)

(assert (= bs!457655 d!680533))

(assert (=> bs!457655 m!2726375))

(assert (=> d!680137 d!680533))

(assert (=> d!680137 d!680047))

(assert (=> d!680135 d!680311))

(assert (=> d!680047 d!680301))

(declare-fun d!680535 () Bool)

(declare-fun charsToBigInt!0 (List!27465 Int) Int)

(assert (=> d!680535 (= (inv!15 (value!138822 (h!32774 tokens!456))) (= (charsToBigInt!0 (text!32285 (value!138822 (h!32774 tokens!456))) 0) (value!138817 (value!138822 (h!32774 tokens!456)))))))

(declare-fun bs!457657 () Bool)

(assert (= bs!457657 d!680535))

(declare-fun m!2727635 () Bool)

(assert (=> bs!457657 m!2727635))

(assert (=> b!2299247 d!680535))

(declare-fun d!680539 () Bool)

(assert (=> d!680539 (= (inv!37002 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))) (isBalanced!2688 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))))))

(declare-fun bs!457658 () Bool)

(assert (= bs!457658 d!680539))

(declare-fun m!2727637 () Bool)

(assert (=> bs!457658 m!2727637))

(assert (=> tb!137399 d!680539))

(declare-fun bs!457659 () Bool)

(declare-fun d!680541 () Bool)

(assert (= bs!457659 (and d!680541 d!680273)))

(declare-fun lambda!85937 () Int)

(assert (=> bs!457659 (= (= (toValue!6192 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 otherR!12))) (= lambda!85937 lambda!85919))))

(declare-fun bs!457660 () Bool)

(assert (= bs!457660 (and d!680541 d!680317)))

(assert (=> bs!457660 (= (= (toValue!6192 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) (= lambda!85937 lambda!85921))))

(declare-fun bs!457661 () Bool)

(assert (= bs!457661 (and d!680541 d!680383)))

(assert (=> bs!457661 (= (= (toValue!6192 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 r!2363))) (= lambda!85937 lambda!85923))))

(assert (=> d!680541 true))

(assert (=> d!680541 (< (dynLambda!11900 order!15265 (toValue!6192 (transformation!4386 (h!32775 rules!1750)))) (dynLambda!11901 order!15267 lambda!85937))))

(assert (=> d!680541 (= (equivClasses!1698 (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toValue!6192 (transformation!4386 (h!32775 rules!1750)))) (Forall2!715 lambda!85937))))

(declare-fun bs!457662 () Bool)

(assert (= bs!457662 d!680541))

(declare-fun m!2727639 () Bool)

(assert (=> bs!457662 m!2727639))

(assert (=> b!2299248 d!680541))

(declare-fun b!2300123 () Bool)

(declare-fun e!1473969 () Bool)

(declare-fun tp!729503 () Bool)

(assert (=> b!2300123 (= e!1473969 (and tp_is_empty!10689 tp!729503))))

(assert (=> b!2299539 (= tp!729436 e!1473969)))

(assert (= (and b!2299539 (is-Cons!27372 (t!205630 (t!205630 suffix!886)))) b!2300123))

(declare-fun b!2300124 () Bool)

(declare-fun e!1473970 () Bool)

(assert (=> b!2300124 (= e!1473970 tp_is_empty!10689)))

(declare-fun b!2300125 () Bool)

(declare-fun tp!729508 () Bool)

(declare-fun tp!729504 () Bool)

(assert (=> b!2300125 (= e!1473970 (and tp!729508 tp!729504))))

(assert (=> b!2299505 (= tp!729395 e!1473970)))

(declare-fun b!2300126 () Bool)

(declare-fun tp!729507 () Bool)

(assert (=> b!2300126 (= e!1473970 tp!729507)))

(declare-fun b!2300127 () Bool)

(declare-fun tp!729505 () Bool)

(declare-fun tp!729506 () Bool)

(assert (=> b!2300127 (= e!1473970 (and tp!729505 tp!729506))))

(assert (= (and b!2299505 (is-ElementMatch!6734 (regOne!13981 (regex!4386 (h!32775 rules!1750))))) b!2300124))

(assert (= (and b!2299505 (is-Concat!11283 (regOne!13981 (regex!4386 (h!32775 rules!1750))))) b!2300125))

(assert (= (and b!2299505 (is-Star!6734 (regOne!13981 (regex!4386 (h!32775 rules!1750))))) b!2300126))

(assert (= (and b!2299505 (is-Union!6734 (regOne!13981 (regex!4386 (h!32775 rules!1750))))) b!2300127))

(declare-fun b!2300128 () Bool)

(declare-fun e!1473971 () Bool)

(assert (=> b!2300128 (= e!1473971 tp_is_empty!10689)))

(declare-fun b!2300129 () Bool)

(declare-fun tp!729513 () Bool)

(declare-fun tp!729509 () Bool)

(assert (=> b!2300129 (= e!1473971 (and tp!729513 tp!729509))))

(assert (=> b!2299505 (= tp!729396 e!1473971)))

(declare-fun b!2300130 () Bool)

(declare-fun tp!729512 () Bool)

(assert (=> b!2300130 (= e!1473971 tp!729512)))

(declare-fun b!2300131 () Bool)

(declare-fun tp!729510 () Bool)

(declare-fun tp!729511 () Bool)

(assert (=> b!2300131 (= e!1473971 (and tp!729510 tp!729511))))

(assert (= (and b!2299505 (is-ElementMatch!6734 (regTwo!13981 (regex!4386 (h!32775 rules!1750))))) b!2300128))

(assert (= (and b!2299505 (is-Concat!11283 (regTwo!13981 (regex!4386 (h!32775 rules!1750))))) b!2300129))

(assert (= (and b!2299505 (is-Star!6734 (regTwo!13981 (regex!4386 (h!32775 rules!1750))))) b!2300130))

(assert (= (and b!2299505 (is-Union!6734 (regTwo!13981 (regex!4386 (h!32775 rules!1750))))) b!2300131))

(declare-fun b!2300132 () Bool)

(declare-fun e!1473972 () Bool)

(assert (=> b!2300132 (= e!1473972 tp_is_empty!10689)))

(declare-fun b!2300133 () Bool)

(declare-fun tp!729518 () Bool)

(declare-fun tp!729514 () Bool)

(assert (=> b!2300133 (= e!1473972 (and tp!729518 tp!729514))))

(assert (=> b!2299492 (= tp!729388 e!1473972)))

(declare-fun b!2300134 () Bool)

(declare-fun tp!729517 () Bool)

(assert (=> b!2300134 (= e!1473972 tp!729517)))

(declare-fun b!2300135 () Bool)

(declare-fun tp!729515 () Bool)

(declare-fun tp!729516 () Bool)

(assert (=> b!2300135 (= e!1473972 (and tp!729515 tp!729516))))

(assert (= (and b!2299492 (is-ElementMatch!6734 (regOne!13980 (regex!4386 otherR!12)))) b!2300132))

(assert (= (and b!2299492 (is-Concat!11283 (regOne!13980 (regex!4386 otherR!12)))) b!2300133))

(assert (= (and b!2299492 (is-Star!6734 (regOne!13980 (regex!4386 otherR!12)))) b!2300134))

(assert (= (and b!2299492 (is-Union!6734 (regOne!13980 (regex!4386 otherR!12)))) b!2300135))

(declare-fun b!2300136 () Bool)

(declare-fun e!1473973 () Bool)

(assert (=> b!2300136 (= e!1473973 tp_is_empty!10689)))

(declare-fun b!2300137 () Bool)

(declare-fun tp!729523 () Bool)

(declare-fun tp!729519 () Bool)

(assert (=> b!2300137 (= e!1473973 (and tp!729523 tp!729519))))

(assert (=> b!2299492 (= tp!729384 e!1473973)))

(declare-fun b!2300138 () Bool)

(declare-fun tp!729522 () Bool)

(assert (=> b!2300138 (= e!1473973 tp!729522)))

(declare-fun b!2300139 () Bool)

(declare-fun tp!729520 () Bool)

(declare-fun tp!729521 () Bool)

(assert (=> b!2300139 (= e!1473973 (and tp!729520 tp!729521))))

(assert (= (and b!2299492 (is-ElementMatch!6734 (regTwo!13980 (regex!4386 otherR!12)))) b!2300136))

(assert (= (and b!2299492 (is-Concat!11283 (regTwo!13980 (regex!4386 otherR!12)))) b!2300137))

(assert (= (and b!2299492 (is-Star!6734 (regTwo!13980 (regex!4386 otherR!12)))) b!2300138))

(assert (= (and b!2299492 (is-Union!6734 (regTwo!13980 (regex!4386 otherR!12)))) b!2300139))

(declare-fun b!2300140 () Bool)

(declare-fun e!1473974 () Bool)

(assert (=> b!2300140 (= e!1473974 tp_is_empty!10689)))

(declare-fun b!2300141 () Bool)

(declare-fun tp!729528 () Bool)

(declare-fun tp!729524 () Bool)

(assert (=> b!2300141 (= e!1473974 (and tp!729528 tp!729524))))

(assert (=> b!2299533 (= tp!729429 e!1473974)))

(declare-fun b!2300142 () Bool)

(declare-fun tp!729527 () Bool)

(assert (=> b!2300142 (= e!1473974 tp!729527)))

(declare-fun b!2300143 () Bool)

(declare-fun tp!729525 () Bool)

(declare-fun tp!729526 () Bool)

(assert (=> b!2300143 (= e!1473974 (and tp!729525 tp!729526))))

(assert (= (and b!2299533 (is-ElementMatch!6734 (reg!7063 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300140))

(assert (= (and b!2299533 (is-Concat!11283 (reg!7063 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300141))

(assert (= (and b!2299533 (is-Star!6734 (reg!7063 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300142))

(assert (= (and b!2299533 (is-Union!6734 (reg!7063 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300143))

(declare-fun b!2300144 () Bool)

(declare-fun e!1473975 () Bool)

(assert (=> b!2300144 (= e!1473975 tp_is_empty!10689)))

(declare-fun b!2300145 () Bool)

(declare-fun tp!729533 () Bool)

(declare-fun tp!729529 () Bool)

(assert (=> b!2300145 (= e!1473975 (and tp!729533 tp!729529))))

(assert (=> b!2299532 (= tp!729430 e!1473975)))

(declare-fun b!2300146 () Bool)

(declare-fun tp!729532 () Bool)

(assert (=> b!2300146 (= e!1473975 tp!729532)))

(declare-fun b!2300147 () Bool)

(declare-fun tp!729530 () Bool)

(declare-fun tp!729531 () Bool)

(assert (=> b!2300147 (= e!1473975 (and tp!729530 tp!729531))))

(assert (= (and b!2299532 (is-ElementMatch!6734 (regOne!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300144))

(assert (= (and b!2299532 (is-Concat!11283 (regOne!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300145))

(assert (= (and b!2299532 (is-Star!6734 (regOne!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300146))

(assert (= (and b!2299532 (is-Union!6734 (regOne!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300147))

(declare-fun b!2300148 () Bool)

(declare-fun e!1473976 () Bool)

(assert (=> b!2300148 (= e!1473976 tp_is_empty!10689)))

(declare-fun b!2300149 () Bool)

(declare-fun tp!729538 () Bool)

(declare-fun tp!729534 () Bool)

(assert (=> b!2300149 (= e!1473976 (and tp!729538 tp!729534))))

(assert (=> b!2299532 (= tp!729426 e!1473976)))

(declare-fun b!2300150 () Bool)

(declare-fun tp!729537 () Bool)

(assert (=> b!2300150 (= e!1473976 tp!729537)))

(declare-fun b!2300151 () Bool)

(declare-fun tp!729535 () Bool)

(declare-fun tp!729536 () Bool)

(assert (=> b!2300151 (= e!1473976 (and tp!729535 tp!729536))))

(assert (= (and b!2299532 (is-ElementMatch!6734 (regTwo!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300148))

(assert (= (and b!2299532 (is-Concat!11283 (regTwo!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300149))

(assert (= (and b!2299532 (is-Star!6734 (regTwo!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300150))

(assert (= (and b!2299532 (is-Union!6734 (regTwo!13980 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300151))

(declare-fun b!2300152 () Bool)

(declare-fun e!1473977 () Bool)

(declare-fun tp!729539 () Bool)

(assert (=> b!2300152 (= e!1473977 (and tp_is_empty!10689 tp!729539))))

(assert (=> b!2299500 (= tp!729392 e!1473977)))

(assert (= (and b!2299500 (is-Cons!27372 (t!205630 (originalCharacters!5156 (h!32774 tokens!456))))) b!2300152))

(declare-fun b!2300153 () Bool)

(declare-fun e!1473978 () Bool)

(declare-fun tp!729540 () Bool)

(assert (=> b!2300153 (= e!1473978 (and tp_is_empty!10689 tp!729540))))

(assert (=> b!2299517 (= tp!729410 e!1473978)))

(assert (= (and b!2299517 (is-Cons!27372 (originalCharacters!5156 (h!32774 (t!205631 tokens!456))))) b!2300153))

(declare-fun b!2300154 () Bool)

(declare-fun e!1473979 () Bool)

(assert (=> b!2300154 (= e!1473979 tp_is_empty!10689)))

(declare-fun b!2300155 () Bool)

(declare-fun tp!729545 () Bool)

(declare-fun tp!729541 () Bool)

(assert (=> b!2300155 (= e!1473979 (and tp!729545 tp!729541))))

(assert (=> b!2299518 (= tp!729411 e!1473979)))

(declare-fun b!2300156 () Bool)

(declare-fun tp!729544 () Bool)

(assert (=> b!2300156 (= e!1473979 tp!729544)))

(declare-fun b!2300157 () Bool)

(declare-fun tp!729542 () Bool)

(declare-fun tp!729543 () Bool)

(assert (=> b!2300157 (= e!1473979 (and tp!729542 tp!729543))))

(assert (= (and b!2299518 (is-ElementMatch!6734 (regex!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) b!2300154))

(assert (= (and b!2299518 (is-Concat!11283 (regex!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) b!2300155))

(assert (= (and b!2299518 (is-Star!6734 (regex!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) b!2300156))

(assert (= (and b!2299518 (is-Union!6734 (regex!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) b!2300157))

(declare-fun b!2300158 () Bool)

(declare-fun e!1473980 () Bool)

(declare-fun tp!729546 () Bool)

(assert (=> b!2300158 (= e!1473980 (and tp_is_empty!10689 tp!729546))))

(assert (=> b!2299499 (= tp!729391 e!1473980)))

(assert (= (and b!2299499 (is-Cons!27372 (t!205630 (t!205630 otherP!12)))) b!2300158))

(declare-fun b!2300162 () Bool)

(declare-fun b_free!69373 () Bool)

(declare-fun b_next!70077 () Bool)

(assert (=> b!2300162 (= b_free!69373 (not b_next!70077))))

(declare-fun t!205741 () Bool)

(declare-fun tb!137487 () Bool)

(assert (=> (and b!2300162 (= (toValue!6192 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205741) tb!137487))

(declare-fun result!167596 () Bool)

(assert (= result!167596 result!167558))

(assert (=> d!680319 t!205741))

(declare-fun tp!729550 () Bool)

(declare-fun b_and!183153 () Bool)

(assert (=> b!2300162 (= tp!729550 (and (=> t!205741 result!167596) b_and!183153))))

(declare-fun b_free!69375 () Bool)

(declare-fun b_next!70079 () Bool)

(assert (=> b!2300162 (= b_free!69375 (not b_next!70079))))

(declare-fun t!205743 () Bool)

(declare-fun tb!137489 () Bool)

(assert (=> (and b!2300162 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205743) tb!137489))

(declare-fun result!167598 () Bool)

(assert (= result!167598 result!167488))

(assert (=> b!2299271 t!205743))

(declare-fun t!205745 () Bool)

(declare-fun tb!137491 () Bool)

(assert (=> (and b!2300162 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205745) tb!137491))

(declare-fun result!167600 () Bool)

(assert (= result!167600 result!167572))

(assert (=> b!2299867 t!205745))

(declare-fun tb!137493 () Bool)

(declare-fun t!205747 () Bool)

(assert (=> (and b!2300162 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205747) tb!137493))

(declare-fun result!167602 () Bool)

(assert (= result!167602 result!167546))

(assert (=> d!680299 t!205747))

(assert (=> d!680107 t!205743))

(declare-fun t!205749 () Bool)

(declare-fun tb!137495 () Bool)

(assert (=> (and b!2300162 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205749) tb!137495))

(declare-fun result!167604 () Bool)

(assert (= result!167604 result!167478))

(assert (=> d!680051 t!205749))

(declare-fun tp!729547 () Bool)

(declare-fun b_and!183155 () Bool)

(assert (=> b!2300162 (= tp!729547 (and (=> t!205743 result!167598) (=> t!205747 result!167602) (=> t!205749 result!167604) (=> t!205745 result!167600) b_and!183155))))

(declare-fun e!1473986 () Bool)

(declare-fun tp!729551 () Bool)

(declare-fun e!1473985 () Bool)

(declare-fun b!2300159 () Bool)

(assert (=> b!2300159 (= e!1473986 (and (inv!36998 (h!32774 (t!205631 (t!205631 tokens!456)))) e!1473985 tp!729551))))

(declare-fun tp!729548 () Bool)

(declare-fun b!2300160 () Bool)

(declare-fun e!1473981 () Bool)

(assert (=> b!2300160 (= e!1473985 (and (inv!21 (value!138822 (h!32774 (t!205631 (t!205631 tokens!456))))) e!1473981 tp!729548))))

(declare-fun e!1473982 () Bool)

(assert (=> b!2300162 (= e!1473982 (and tp!729550 tp!729547))))

(declare-fun tp!729549 () Bool)

(declare-fun b!2300161 () Bool)

(assert (=> b!2300161 (= e!1473981 (and tp!729549 (inv!36994 (tag!4876 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (inv!36997 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) e!1473982))))

(assert (=> b!2299516 (= tp!729413 e!1473986)))

(assert (= b!2300161 b!2300162))

(assert (= b!2300160 b!2300161))

(assert (= b!2300159 b!2300160))

(assert (= (and b!2299516 (is-Cons!27373 (t!205631 (t!205631 tokens!456)))) b!2300159))

(declare-fun m!2727641 () Bool)

(assert (=> b!2300159 m!2727641))

(declare-fun m!2727643 () Bool)

(assert (=> b!2300160 m!2727643))

(declare-fun m!2727645 () Bool)

(assert (=> b!2300161 m!2727645))

(declare-fun m!2727647 () Bool)

(assert (=> b!2300161 m!2727647))

(declare-fun b!2300171 () Bool)

(declare-fun tp!729559 () Bool)

(declare-fun e!1473991 () Bool)

(declare-fun tp!729558 () Bool)

(assert (=> b!2300171 (= e!1473991 (and (inv!37001 (left!20746 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))) tp!729559 (inv!37001 (right!21076 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))) tp!729558))))

(declare-fun b!2300173 () Bool)

(declare-fun e!1473992 () Bool)

(declare-fun tp!729560 () Bool)

(assert (=> b!2300173 (= e!1473992 tp!729560)))

(declare-fun b!2300172 () Bool)

(declare-fun inv!37009 (IArray!17845) Bool)

(assert (=> b!2300172 (= e!1473991 (and (inv!37009 (xs!11862 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))) e!1473992))))

(assert (=> b!2299181 (= tp!729368 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456))))) e!1473991))))

(assert (= (and b!2299181 (is-Node!8920 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))) b!2300171))

(assert (= b!2300172 b!2300173))

(assert (= (and b!2299181 (is-Leaf!13099 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))) (value!138822 (head!5025 tokens!456)))))) b!2300172))

(declare-fun m!2727649 () Bool)

(assert (=> b!2300171 m!2727649))

(declare-fun m!2727651 () Bool)

(assert (=> b!2300171 m!2727651))

(declare-fun m!2727653 () Bool)

(assert (=> b!2300172 m!2727653))

(assert (=> b!2299181 m!2726553))

(declare-fun b!2300174 () Bool)

(declare-fun e!1473993 () Bool)

(assert (=> b!2300174 (= e!1473993 tp_is_empty!10689)))

(declare-fun b!2300175 () Bool)

(declare-fun tp!729565 () Bool)

(declare-fun tp!729561 () Bool)

(assert (=> b!2300175 (= e!1473993 (and tp!729565 tp!729561))))

(assert (=> b!2299529 (= tp!729422 e!1473993)))

(declare-fun b!2300176 () Bool)

(declare-fun tp!729564 () Bool)

(assert (=> b!2300176 (= e!1473993 tp!729564)))

(declare-fun b!2300177 () Bool)

(declare-fun tp!729562 () Bool)

(declare-fun tp!729563 () Bool)

(assert (=> b!2300177 (= e!1473993 (and tp!729562 tp!729563))))

(assert (= (and b!2299529 (is-ElementMatch!6734 (regex!4386 (h!32775 (t!205632 rules!1750))))) b!2300174))

(assert (= (and b!2299529 (is-Concat!11283 (regex!4386 (h!32775 (t!205632 rules!1750))))) b!2300175))

(assert (= (and b!2299529 (is-Star!6734 (regex!4386 (h!32775 (t!205632 rules!1750))))) b!2300176))

(assert (= (and b!2299529 (is-Union!6734 (regex!4386 (h!32775 (t!205632 rules!1750))))) b!2300177))

(declare-fun b!2300180 () Bool)

(declare-fun b_free!69377 () Bool)

(declare-fun b_next!70081 () Bool)

(assert (=> b!2300180 (= b_free!69377 (not b_next!70081))))

(declare-fun tb!137497 () Bool)

(declare-fun t!205751 () Bool)

(assert (=> (and b!2300180 (= (toValue!6192 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toValue!6192 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205751) tb!137497))

(declare-fun result!167608 () Bool)

(assert (= result!167608 result!167558))

(assert (=> d!680319 t!205751))

(declare-fun tp!729567 () Bool)

(declare-fun b_and!183157 () Bool)

(assert (=> b!2300180 (= tp!729567 (and (=> t!205751 result!167608) b_and!183157))))

(declare-fun b_free!69379 () Bool)

(declare-fun b_next!70083 () Bool)

(assert (=> b!2300180 (= b_free!69379 (not b_next!70083))))

(declare-fun tb!137499 () Bool)

(declare-fun t!205753 () Bool)

(assert (=> (and b!2300180 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456))))) t!205753) tb!137499))

(declare-fun result!167610 () Bool)

(assert (= result!167610 result!167488))

(assert (=> b!2299271 t!205753))

(declare-fun t!205755 () Bool)

(declare-fun tb!137501 () Bool)

(assert (=> (and b!2300180 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456)))))) t!205755) tb!137501))

(declare-fun result!167612 () Bool)

(assert (= result!167612 result!167572))

(assert (=> b!2299867 t!205755))

(declare-fun t!205757 () Bool)

(declare-fun tb!137503 () Bool)

(assert (=> (and b!2300180 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (_1!16132 (get!8251 lt!852970)))))) t!205757) tb!137503))

(declare-fun result!167614 () Bool)

(assert (= result!167614 result!167546))

(assert (=> d!680299 t!205757))

(assert (=> d!680107 t!205753))

(declare-fun tb!137505 () Bool)

(declare-fun t!205759 () Bool)

(assert (=> (and b!2300180 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456))))) t!205759) tb!137505))

(declare-fun result!167616 () Bool)

(assert (= result!167616 result!167478))

(assert (=> d!680051 t!205759))

(declare-fun b_and!183159 () Bool)

(declare-fun tp!729569 () Bool)

(assert (=> b!2300180 (= tp!729569 (and (=> t!205753 result!167610) (=> t!205757 result!167614) (=> t!205759 result!167616) (=> t!205755 result!167612) b_and!183159))))

(declare-fun e!1473997 () Bool)

(assert (=> b!2300180 (= e!1473997 (and tp!729567 tp!729569))))

(declare-fun b!2300179 () Bool)

(declare-fun e!1473994 () Bool)

(declare-fun tp!729566 () Bool)

(assert (=> b!2300179 (= e!1473994 (and tp!729566 (inv!36994 (tag!4876 (h!32775 (t!205632 (t!205632 rules!1750))))) (inv!36997 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) e!1473997))))

(declare-fun b!2300178 () Bool)

(declare-fun e!1473995 () Bool)

(declare-fun tp!729568 () Bool)

(assert (=> b!2300178 (= e!1473995 (and e!1473994 tp!729568))))

(assert (=> b!2299528 (= tp!729424 e!1473995)))

(assert (= b!2300179 b!2300180))

(assert (= b!2300178 b!2300179))

(assert (= (and b!2299528 (is-Cons!27374 (t!205632 (t!205632 rules!1750)))) b!2300178))

(declare-fun m!2727655 () Bool)

(assert (=> b!2300179 m!2727655))

(declare-fun m!2727657 () Bool)

(assert (=> b!2300179 m!2727657))

(declare-fun b!2300181 () Bool)

(declare-fun e!1473998 () Bool)

(assert (=> b!2300181 (= e!1473998 tp_is_empty!10689)))

(declare-fun b!2300182 () Bool)

(declare-fun tp!729574 () Bool)

(declare-fun tp!729570 () Bool)

(assert (=> b!2300182 (= e!1473998 (and tp!729574 tp!729570))))

(assert (=> b!2299494 (= tp!729385 e!1473998)))

(declare-fun b!2300183 () Bool)

(declare-fun tp!729573 () Bool)

(assert (=> b!2300183 (= e!1473998 tp!729573)))

(declare-fun b!2300184 () Bool)

(declare-fun tp!729571 () Bool)

(declare-fun tp!729572 () Bool)

(assert (=> b!2300184 (= e!1473998 (and tp!729571 tp!729572))))

(assert (= (and b!2299494 (is-ElementMatch!6734 (regOne!13981 (regex!4386 otherR!12)))) b!2300181))

(assert (= (and b!2299494 (is-Concat!11283 (regOne!13981 (regex!4386 otherR!12)))) b!2300182))

(assert (= (and b!2299494 (is-Star!6734 (regOne!13981 (regex!4386 otherR!12)))) b!2300183))

(assert (= (and b!2299494 (is-Union!6734 (regOne!13981 (regex!4386 otherR!12)))) b!2300184))

(declare-fun b!2300185 () Bool)

(declare-fun e!1473999 () Bool)

(assert (=> b!2300185 (= e!1473999 tp_is_empty!10689)))

(declare-fun b!2300186 () Bool)

(declare-fun tp!729579 () Bool)

(declare-fun tp!729575 () Bool)

(assert (=> b!2300186 (= e!1473999 (and tp!729579 tp!729575))))

(assert (=> b!2299494 (= tp!729386 e!1473999)))

(declare-fun b!2300187 () Bool)

(declare-fun tp!729578 () Bool)

(assert (=> b!2300187 (= e!1473999 tp!729578)))

(declare-fun b!2300188 () Bool)

(declare-fun tp!729576 () Bool)

(declare-fun tp!729577 () Bool)

(assert (=> b!2300188 (= e!1473999 (and tp!729576 tp!729577))))

(assert (= (and b!2299494 (is-ElementMatch!6734 (regTwo!13981 (regex!4386 otherR!12)))) b!2300185))

(assert (= (and b!2299494 (is-Concat!11283 (regTwo!13981 (regex!4386 otherR!12)))) b!2300186))

(assert (= (and b!2299494 (is-Star!6734 (regTwo!13981 (regex!4386 otherR!12)))) b!2300187))

(assert (= (and b!2299494 (is-Union!6734 (regTwo!13981 (regex!4386 otherR!12)))) b!2300188))

(declare-fun b!2300189 () Bool)

(declare-fun e!1474000 () Bool)

(assert (=> b!2300189 (= e!1474000 tp_is_empty!10689)))

(declare-fun b!2300190 () Bool)

(declare-fun tp!729584 () Bool)

(declare-fun tp!729580 () Bool)

(assert (=> b!2300190 (= e!1474000 (and tp!729584 tp!729580))))

(assert (=> b!2299493 (= tp!729387 e!1474000)))

(declare-fun b!2300191 () Bool)

(declare-fun tp!729583 () Bool)

(assert (=> b!2300191 (= e!1474000 tp!729583)))

(declare-fun b!2300192 () Bool)

(declare-fun tp!729581 () Bool)

(declare-fun tp!729582 () Bool)

(assert (=> b!2300192 (= e!1474000 (and tp!729581 tp!729582))))

(assert (= (and b!2299493 (is-ElementMatch!6734 (reg!7063 (regex!4386 otherR!12)))) b!2300189))

(assert (= (and b!2299493 (is-Concat!11283 (reg!7063 (regex!4386 otherR!12)))) b!2300190))

(assert (= (and b!2299493 (is-Star!6734 (reg!7063 (regex!4386 otherR!12)))) b!2300191))

(assert (= (and b!2299493 (is-Union!6734 (reg!7063 (regex!4386 otherR!12)))) b!2300192))

(declare-fun b!2300193 () Bool)

(declare-fun e!1474001 () Bool)

(assert (=> b!2300193 (= e!1474001 tp_is_empty!10689)))

(declare-fun b!2300194 () Bool)

(declare-fun tp!729589 () Bool)

(declare-fun tp!729585 () Bool)

(assert (=> b!2300194 (= e!1474001 (and tp!729589 tp!729585))))

(assert (=> b!2299534 (= tp!729427 e!1474001)))

(declare-fun b!2300195 () Bool)

(declare-fun tp!729588 () Bool)

(assert (=> b!2300195 (= e!1474001 tp!729588)))

(declare-fun b!2300196 () Bool)

(declare-fun tp!729586 () Bool)

(declare-fun tp!729587 () Bool)

(assert (=> b!2300196 (= e!1474001 (and tp!729586 tp!729587))))

(assert (= (and b!2299534 (is-ElementMatch!6734 (regOne!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300193))

(assert (= (and b!2299534 (is-Concat!11283 (regOne!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300194))

(assert (= (and b!2299534 (is-Star!6734 (regOne!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300195))

(assert (= (and b!2299534 (is-Union!6734 (regOne!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300196))

(declare-fun b!2300197 () Bool)

(declare-fun e!1474002 () Bool)

(assert (=> b!2300197 (= e!1474002 tp_is_empty!10689)))

(declare-fun b!2300198 () Bool)

(declare-fun tp!729594 () Bool)

(declare-fun tp!729590 () Bool)

(assert (=> b!2300198 (= e!1474002 (and tp!729594 tp!729590))))

(assert (=> b!2299534 (= tp!729428 e!1474002)))

(declare-fun b!2300199 () Bool)

(declare-fun tp!729593 () Bool)

(assert (=> b!2300199 (= e!1474002 tp!729593)))

(declare-fun b!2300200 () Bool)

(declare-fun tp!729591 () Bool)

(declare-fun tp!729592 () Bool)

(assert (=> b!2300200 (= e!1474002 (and tp!729591 tp!729592))))

(assert (= (and b!2299534 (is-ElementMatch!6734 (regTwo!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300197))

(assert (= (and b!2299534 (is-Concat!11283 (regTwo!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300198))

(assert (= (and b!2299534 (is-Star!6734 (regTwo!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300199))

(assert (= (and b!2299534 (is-Union!6734 (regTwo!13981 (regex!4386 (rule!6730 (h!32774 tokens!456)))))) b!2300200))

(declare-fun b!2300201 () Bool)

(declare-fun e!1474003 () Bool)

(declare-fun tp!729595 () Bool)

(assert (=> b!2300201 (= e!1474003 (and tp_is_empty!10689 tp!729595))))

(assert (=> b!2299501 (= tp!729393 e!1474003)))

(assert (= (and b!2299501 (is-Cons!27372 (t!205630 (t!205630 input!1722)))) b!2300201))

(declare-fun tp!729596 () Bool)

(declare-fun b!2300202 () Bool)

(declare-fun e!1474004 () Bool)

(declare-fun tp!729597 () Bool)

(assert (=> b!2300202 (= e!1474004 (and (inv!37001 (left!20746 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))) tp!729597 (inv!37001 (right!21076 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))) tp!729596))))

(declare-fun b!2300204 () Bool)

(declare-fun e!1474005 () Bool)

(declare-fun tp!729598 () Bool)

(assert (=> b!2300204 (= e!1474005 tp!729598)))

(declare-fun b!2300203 () Bool)

(assert (=> b!2300203 (= e!1474004 (and (inv!37009 (xs!11862 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))) e!1474005))))

(assert (=> b!2299273 (= tp!729369 (and (inv!37001 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456))))) e!1474004))))

(assert (= (and b!2299273 (is-Node!8920 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))) b!2300202))

(assert (= b!2300203 b!2300204))

(assert (= (and b!2299273 (is-Leaf!13099 (c!364509 (dynLambda!11896 (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (value!138822 (h!32774 tokens!456)))))) b!2300203))

(declare-fun m!2727659 () Bool)

(assert (=> b!2300202 m!2727659))

(declare-fun m!2727661 () Bool)

(assert (=> b!2300202 m!2727661))

(declare-fun m!2727663 () Bool)

(assert (=> b!2300203 m!2727663))

(assert (=> b!2299273 m!2726617))

(declare-fun b!2300205 () Bool)

(declare-fun e!1474006 () Bool)

(assert (=> b!2300205 (= e!1474006 tp_is_empty!10689)))

(declare-fun b!2300206 () Bool)

(declare-fun tp!729603 () Bool)

(declare-fun tp!729599 () Bool)

(assert (=> b!2300206 (= e!1474006 (and tp!729603 tp!729599))))

(assert (=> b!2299537 (= tp!729434 e!1474006)))

(declare-fun b!2300207 () Bool)

(declare-fun tp!729602 () Bool)

(assert (=> b!2300207 (= e!1474006 tp!729602)))

(declare-fun b!2300208 () Bool)

(declare-fun tp!729600 () Bool)

(declare-fun tp!729601 () Bool)

(assert (=> b!2300208 (= e!1474006 (and tp!729600 tp!729601))))

(assert (= (and b!2299537 (is-ElementMatch!6734 (reg!7063 (regex!4386 r!2363)))) b!2300205))

(assert (= (and b!2299537 (is-Concat!11283 (reg!7063 (regex!4386 r!2363)))) b!2300206))

(assert (= (and b!2299537 (is-Star!6734 (reg!7063 (regex!4386 r!2363)))) b!2300207))

(assert (= (and b!2299537 (is-Union!6734 (reg!7063 (regex!4386 r!2363)))) b!2300208))

(declare-fun b!2300209 () Bool)

(declare-fun e!1474007 () Bool)

(assert (=> b!2300209 (= e!1474007 tp_is_empty!10689)))

(declare-fun b!2300210 () Bool)

(declare-fun tp!729608 () Bool)

(declare-fun tp!729604 () Bool)

(assert (=> b!2300210 (= e!1474007 (and tp!729608 tp!729604))))

(assert (=> b!2299538 (= tp!729432 e!1474007)))

(declare-fun b!2300211 () Bool)

(declare-fun tp!729607 () Bool)

(assert (=> b!2300211 (= e!1474007 tp!729607)))

(declare-fun b!2300212 () Bool)

(declare-fun tp!729605 () Bool)

(declare-fun tp!729606 () Bool)

(assert (=> b!2300212 (= e!1474007 (and tp!729605 tp!729606))))

(assert (= (and b!2299538 (is-ElementMatch!6734 (regOne!13981 (regex!4386 r!2363)))) b!2300209))

(assert (= (and b!2299538 (is-Concat!11283 (regOne!13981 (regex!4386 r!2363)))) b!2300210))

(assert (= (and b!2299538 (is-Star!6734 (regOne!13981 (regex!4386 r!2363)))) b!2300211))

(assert (= (and b!2299538 (is-Union!6734 (regOne!13981 (regex!4386 r!2363)))) b!2300212))

(declare-fun b!2300213 () Bool)

(declare-fun e!1474008 () Bool)

(assert (=> b!2300213 (= e!1474008 tp_is_empty!10689)))

(declare-fun b!2300214 () Bool)

(declare-fun tp!729613 () Bool)

(declare-fun tp!729609 () Bool)

(assert (=> b!2300214 (= e!1474008 (and tp!729613 tp!729609))))

(assert (=> b!2299538 (= tp!729433 e!1474008)))

(declare-fun b!2300215 () Bool)

(declare-fun tp!729612 () Bool)

(assert (=> b!2300215 (= e!1474008 tp!729612)))

(declare-fun b!2300216 () Bool)

(declare-fun tp!729610 () Bool)

(declare-fun tp!729611 () Bool)

(assert (=> b!2300216 (= e!1474008 (and tp!729610 tp!729611))))

(assert (= (and b!2299538 (is-ElementMatch!6734 (regTwo!13981 (regex!4386 r!2363)))) b!2300213))

(assert (= (and b!2299538 (is-Concat!11283 (regTwo!13981 (regex!4386 r!2363)))) b!2300214))

(assert (= (and b!2299538 (is-Star!6734 (regTwo!13981 (regex!4386 r!2363)))) b!2300215))

(assert (= (and b!2299538 (is-Union!6734 (regTwo!13981 (regex!4386 r!2363)))) b!2300216))

(declare-fun b!2300217 () Bool)

(declare-fun e!1474009 () Bool)

(assert (=> b!2300217 (= e!1474009 tp_is_empty!10689)))

(declare-fun b!2300218 () Bool)

(declare-fun tp!729618 () Bool)

(declare-fun tp!729614 () Bool)

(assert (=> b!2300218 (= e!1474009 (and tp!729618 tp!729614))))

(assert (=> b!2299504 (= tp!729397 e!1474009)))

(declare-fun b!2300219 () Bool)

(declare-fun tp!729617 () Bool)

(assert (=> b!2300219 (= e!1474009 tp!729617)))

(declare-fun b!2300220 () Bool)

(declare-fun tp!729615 () Bool)

(declare-fun tp!729616 () Bool)

(assert (=> b!2300220 (= e!1474009 (and tp!729615 tp!729616))))

(assert (= (and b!2299504 (is-ElementMatch!6734 (reg!7063 (regex!4386 (h!32775 rules!1750))))) b!2300217))

(assert (= (and b!2299504 (is-Concat!11283 (reg!7063 (regex!4386 (h!32775 rules!1750))))) b!2300218))

(assert (= (and b!2299504 (is-Star!6734 (reg!7063 (regex!4386 (h!32775 rules!1750))))) b!2300219))

(assert (= (and b!2299504 (is-Union!6734 (reg!7063 (regex!4386 (h!32775 rules!1750))))) b!2300220))

(declare-fun b!2300221 () Bool)

(declare-fun e!1474010 () Bool)

(assert (=> b!2300221 (= e!1474010 tp_is_empty!10689)))

(declare-fun b!2300222 () Bool)

(declare-fun tp!729623 () Bool)

(declare-fun tp!729619 () Bool)

(assert (=> b!2300222 (= e!1474010 (and tp!729623 tp!729619))))

(assert (=> b!2299536 (= tp!729435 e!1474010)))

(declare-fun b!2300223 () Bool)

(declare-fun tp!729622 () Bool)

(assert (=> b!2300223 (= e!1474010 tp!729622)))

(declare-fun b!2300224 () Bool)

(declare-fun tp!729620 () Bool)

(declare-fun tp!729621 () Bool)

(assert (=> b!2300224 (= e!1474010 (and tp!729620 tp!729621))))

(assert (= (and b!2299536 (is-ElementMatch!6734 (regOne!13980 (regex!4386 r!2363)))) b!2300221))

(assert (= (and b!2299536 (is-Concat!11283 (regOne!13980 (regex!4386 r!2363)))) b!2300222))

(assert (= (and b!2299536 (is-Star!6734 (regOne!13980 (regex!4386 r!2363)))) b!2300223))

(assert (= (and b!2299536 (is-Union!6734 (regOne!13980 (regex!4386 r!2363)))) b!2300224))

(declare-fun b!2300225 () Bool)

(declare-fun e!1474011 () Bool)

(assert (=> b!2300225 (= e!1474011 tp_is_empty!10689)))

(declare-fun b!2300226 () Bool)

(declare-fun tp!729628 () Bool)

(declare-fun tp!729624 () Bool)

(assert (=> b!2300226 (= e!1474011 (and tp!729628 tp!729624))))

(assert (=> b!2299536 (= tp!729431 e!1474011)))

(declare-fun b!2300227 () Bool)

(declare-fun tp!729627 () Bool)

(assert (=> b!2300227 (= e!1474011 tp!729627)))

(declare-fun b!2300228 () Bool)

(declare-fun tp!729625 () Bool)

(declare-fun tp!729626 () Bool)

(assert (=> b!2300228 (= e!1474011 (and tp!729625 tp!729626))))

(assert (= (and b!2299536 (is-ElementMatch!6734 (regTwo!13980 (regex!4386 r!2363)))) b!2300225))

(assert (= (and b!2299536 (is-Concat!11283 (regTwo!13980 (regex!4386 r!2363)))) b!2300226))

(assert (= (and b!2299536 (is-Star!6734 (regTwo!13980 (regex!4386 r!2363)))) b!2300227))

(assert (= (and b!2299536 (is-Union!6734 (regTwo!13980 (regex!4386 r!2363)))) b!2300228))

(declare-fun b!2300229 () Bool)

(declare-fun e!1474012 () Bool)

(assert (=> b!2300229 (= e!1474012 tp_is_empty!10689)))

(declare-fun b!2300230 () Bool)

(declare-fun tp!729633 () Bool)

(declare-fun tp!729629 () Bool)

(assert (=> b!2300230 (= e!1474012 (and tp!729633 tp!729629))))

(assert (=> b!2299503 (= tp!729398 e!1474012)))

(declare-fun b!2300231 () Bool)

(declare-fun tp!729632 () Bool)

(assert (=> b!2300231 (= e!1474012 tp!729632)))

(declare-fun b!2300232 () Bool)

(declare-fun tp!729630 () Bool)

(declare-fun tp!729631 () Bool)

(assert (=> b!2300232 (= e!1474012 (and tp!729630 tp!729631))))

(assert (= (and b!2299503 (is-ElementMatch!6734 (regOne!13980 (regex!4386 (h!32775 rules!1750))))) b!2300229))

(assert (= (and b!2299503 (is-Concat!11283 (regOne!13980 (regex!4386 (h!32775 rules!1750))))) b!2300230))

(assert (= (and b!2299503 (is-Star!6734 (regOne!13980 (regex!4386 (h!32775 rules!1750))))) b!2300231))

(assert (= (and b!2299503 (is-Union!6734 (regOne!13980 (regex!4386 (h!32775 rules!1750))))) b!2300232))

(declare-fun b!2300233 () Bool)

(declare-fun e!1474013 () Bool)

(assert (=> b!2300233 (= e!1474013 tp_is_empty!10689)))

(declare-fun b!2300234 () Bool)

(declare-fun tp!729638 () Bool)

(declare-fun tp!729634 () Bool)

(assert (=> b!2300234 (= e!1474013 (and tp!729638 tp!729634))))

(assert (=> b!2299503 (= tp!729394 e!1474013)))

(declare-fun b!2300235 () Bool)

(declare-fun tp!729637 () Bool)

(assert (=> b!2300235 (= e!1474013 tp!729637)))

(declare-fun b!2300236 () Bool)

(declare-fun tp!729635 () Bool)

(declare-fun tp!729636 () Bool)

(assert (=> b!2300236 (= e!1474013 (and tp!729635 tp!729636))))

(assert (= (and b!2299503 (is-ElementMatch!6734 (regTwo!13980 (regex!4386 (h!32775 rules!1750))))) b!2300233))

(assert (= (and b!2299503 (is-Concat!11283 (regTwo!13980 (regex!4386 (h!32775 rules!1750))))) b!2300234))

(assert (= (and b!2299503 (is-Star!6734 (regTwo!13980 (regex!4386 (h!32775 rules!1750))))) b!2300235))

(assert (= (and b!2299503 (is-Union!6734 (regTwo!13980 (regex!4386 (h!32775 rules!1750))))) b!2300236))

(declare-fun b_lambda!73261 () Bool)

(assert (= b_lambda!73257 (or (and b!2300162 b_free!69375 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2299070 b_free!69327 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2299519 b_free!69359) (and b!2299045 b_free!69339 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2299049 b_free!69335 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2299530 b_free!69363 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2300180 b_free!69379 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) (and b!2299068 b_free!69331 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))))) b_lambda!73261)))

(declare-fun b_lambda!73263 () Bool)

(assert (= b_lambda!73233 (or (and b!2299070 b_free!69327 (= (toChars!6051 (transformation!4386 (h!32775 rules!1750))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2299530 b_free!69363 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 rules!1750)))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2299519 b_free!69359 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 tokens!456))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2299045 b_free!69339 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 tokens!456)))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2300162 b_free!69375 (= (toChars!6051 (transformation!4386 (rule!6730 (h!32774 (t!205631 (t!205631 tokens!456)))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2299049 b_free!69335 (= (toChars!6051 (transformation!4386 otherR!12)) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2299068 b_free!69331 (= (toChars!6051 (transformation!4386 r!2363)) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) (and b!2300180 b_free!69379 (= (toChars!6051 (transformation!4386 (h!32775 (t!205632 (t!205632 rules!1750))))) (toChars!6051 (transformation!4386 (rule!6730 (head!5025 tokens!456)))))) b_lambda!73263)))

(push 1)

(assert (not b!2299735))

(assert (not b!2300230))

(assert (not b!2300149))

(assert (not d!680305))

(assert (not b!2300139))

(assert (not b!2300226))

(assert (not d!680255))

(assert (not b!2300138))

(assert (not b!2300227))

(assert (not b!2300195))

(assert (not d!680411))

(assert (not d!680347))

(assert (not tb!137451))

(assert (not b!2300228))

(assert (not d!680293))

(assert (not bm!137004))

(assert (not b!2299864))

(assert tp_is_empty!10689)

(assert (not b!2300234))

(assert (not b!2300188))

(assert b_and!183137)

(assert (not d!680285))

(assert (not b!2300129))

(assert (not b!2299757))

(assert (not b!2299725))

(assert (not b_next!70079))

(assert b_and!183127)

(assert (not b!2300097))

(assert (not b!2300157))

(assert b_and!183129)

(assert (not b!2300191))

(assert (not b!2299973))

(assert (not b!2300130))

(assert b_and!183155)

(assert (not d!680321))

(assert (not b!2299938))

(assert (not b!2300145))

(assert (not b!2300152))

(assert (not b!2300236))

(assert (not b!2300204))

(assert (not d!680373))

(assert (not bm!137003))

(assert (not bm!136991))

(assert (not b!2300176))

(assert (not b!2300187))

(assert (not b!2300158))

(assert (not d!680331))

(assert (not b!2299874))

(assert (not b!2299774))

(assert (not b!2299767))

(assert (not b!2299925))

(assert (not b_next!70065))

(assert (not b!2299979))

(assert (not b!2299695))

(assert (not b_lambda!73245))

(assert (not b!2300218))

(assert (not b!2299821))

(assert (not b!2300215))

(assert (not b!2299856))

(assert (not b!2299857))

(assert (not b!2299702))

(assert (not d!680341))

(assert (not b!2300123))

(assert (not b_next!70067))

(assert (not b!2300232))

(assert (not b!2299978))

(assert (not b!2300142))

(assert (not b_next!70083))

(assert (not d!680307))

(assert (not b!2299964))

(assert (not b!2300153))

(assert (not b!2300194))

(assert (not d!680355))

(assert (not b!2299691))

(assert b_and!183159)

(assert (not b!2300173))

(assert (not b!2299701))

(assert (not d!680317))

(assert (not b!2299826))

(assert (not b!2300235))

(assert (not b!2299961))

(assert (not b!2299762))

(assert (not b!2299710))

(assert (not b!2299853))

(assert (not b!2299792))

(assert (not b!2300192))

(assert (not b!2300214))

(assert (not b!2300196))

(assert (not b!2299875))

(assert (not b!2299780))

(assert (not b_lambda!73263))

(assert (not b!2300155))

(assert (not b!2299694))

(assert (not b!2299937))

(assert (not d!680343))

(assert (not d!680291))

(assert (not b!2299946))

(assert (not d!680421))

(assert (not b!2299743))

(assert (not d!680257))

(assert (not b!2300133))

(assert (not b!2300212))

(assert (not b!2300101))

(assert (not b!2300100))

(assert (not b!2299181))

(assert (not b!2299960))

(assert (not d!680417))

(assert (not b!2300178))

(assert (not b_next!70037))

(assert (not b!2300211))

(assert (not b!2300200))

(assert (not b!2299770))

(assert (not d!680371))

(assert (not b_next!70041))

(assert (not b!2299766))

(assert (not b!2300159))

(assert (not d!680275))

(assert (not d!680541))

(assert (not b!2300099))

(assert (not b!2299870))

(assert (not d!680235))

(assert (not b_lambda!73261))

(assert (not b!2299745))

(assert (not b!2299785))

(assert (not b!2299884))

(assert (not b!2300179))

(assert (not b!2299911))

(assert (not b!2300151))

(assert b_and!183123)

(assert b_and!183157)

(assert (not b!2300161))

(assert (not b!2299791))

(assert (not b!2299868))

(assert (not d!680531))

(assert (not d!680251))

(assert (not b!2299981))

(assert (not d!680385))

(assert (not bm!136989))

(assert (not b!2299763))

(assert (not b!2300231))

(assert (not b_next!70043))

(assert (not b!2299758))

(assert b_and!183133)

(assert (not b!2299867))

(assert (not b_next!70063))

(assert (not b_next!70033))

(assert (not b!2299686))

(assert b_and!183131)

(assert (not b!2300184))

(assert (not b!2299855))

(assert (not b_next!70031))

(assert (not d!680303))

(assert (not b!2299724))

(assert (not b!2300098))

(assert (not b_next!70081))

(assert (not b!2299688))

(assert (not b!2300177))

(assert (not b!2300127))

(assert (not d!680263))

(assert (not b!2299751))

(assert (not b!2300150))

(assert (not b_lambda!73255))

(assert (not b!2299683))

(assert (not b!2300175))

(assert (not d!680333))

(assert (not b!2300182))

(assert (not b_lambda!73253))

(assert (not b_next!70029))

(assert (not b!2300122))

(assert (not b!2299706))

(assert (not b!2300208))

(assert (not d!680273))

(assert (not b!2300160))

(assert (not b!2300117))

(assert b_and!183121)

(assert (not b!2299713))

(assert (not d!680535))

(assert (not b!2299787))

(assert (not bm!136981))

(assert (not b!2300216))

(assert (not b!2300172))

(assert (not b!2300203))

(assert (not b!2300156))

(assert (not bm!137001))

(assert (not d!680271))

(assert (not d!680345))

(assert (not b!2299836))

(assert (not b!2300134))

(assert (not d!680265))

(assert (not b!2299712))

(assert (not b!2299830))

(assert (not tb!137463))

(assert (not b!2299765))

(assert (not b!2299789))

(assert (not b!2299788))

(assert (not d!680389))

(assert (not b!2299887))

(assert (not d!680517))

(assert (not b!2299879))

(assert (not b!2299759))

(assert (not b!2300126))

(assert (not tb!137439))

(assert (not b!2300137))

(assert (not d!680217))

(assert (not d!680383))

(assert (not b!2300171))

(assert (not b!2300102))

(assert (not b!2299869))

(assert (not d!680361))

(assert (not d!680261))

(assert (not b!2299273))

(assert (not bm!137005))

(assert (not b!2299696))

(assert (not d!680387))

(assert (not b!2300183))

(assert (not b!2300220))

(assert (not b!2299692))

(assert (not b!2299795))

(assert (not b!2299682))

(assert (not b!2300096))

(assert (not b!2299988))

(assert (not b!2299860))

(assert (not b!2300131))

(assert b_and!183139)

(assert (not d!680391))

(assert (not b!2299782))

(assert (not bm!136988))

(assert (not b!2300186))

(assert (not b!2299835))

(assert (not b!2300224))

(assert (not b!2300210))

(assert (not b!2299690))

(assert (not b_next!70061))

(assert (not b!2299882))

(assert (not b!2300104))

(assert (not d!680297))

(assert b_and!183117)

(assert (not b!2299926))

(assert (not b!2300143))

(assert b_and!183125)

(assert (not d!680339))

(assert (not d!680215))

(assert (not b!2300223))

(assert (not d!680407))

(assert (not d!680523))

(assert (not b!2299863))

(assert (not b!2300207))

(assert (not b!2299876))

(assert (not b!2300202))

(assert (not b!2299793))

(assert (not b!2300219))

(assert b_and!183153)

(assert (not b!2300198))

(assert (not d!680539))

(assert (not b!2300206))

(assert (not b!2300190))

(assert (not d!680299))

(assert (not b!2299790))

(assert (not b!2299755))

(assert (not b!2299753))

(assert (not b!2299880))

(assert b_and!183135)

(assert (not b!2300141))

(assert (not d!680533))

(assert (not b!2299828))

(assert (not b_lambda!73247))

(assert (not b_next!70035))

(assert (not b!2299987))

(assert (not b!2300222))

(assert (not b!2299872))

(assert (not b!2300121))

(assert (not d!680237))

(assert (not b!2300125))

(assert (not b!2299866))

(assert (not b!2300147))

(assert (not b!2299832))

(assert (not b!2299708))

(assert (not b!2299883))

(assert (not b!2299834))

(assert (not d!680363))

(assert (not b!2300135))

(assert (not d!680259))

(assert (not bm!136980))

(assert (not d!680399))

(assert (not b_next!70039))

(assert (not d!680359))

(assert (not b!2300116))

(assert b_and!183119)

(assert (not b!2300201))

(assert (not b!2300146))

(assert (not b!2299726))

(assert (not b!2300199))

(assert (not b_next!70077))

(assert (not d!680233))

(assert (not d!680375))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!70065))

(assert (not b_next!70067))

(assert (not b_next!70083))

(assert b_and!183159)

(assert b_and!183123)

(assert b_and!183157)

(assert (not b_next!70031))

(assert (not b_next!70081))

(assert b_and!183139)

(assert b_and!183125)

(assert b_and!183153)

(assert b_and!183135)

(assert (not b_next!70035))

(assert (not b_next!70039))

(assert b_and!183137)

(assert (not b_next!70079))

(assert b_and!183127)

(assert b_and!183129)

(assert b_and!183155)

(assert (not b_next!70037))

(assert (not b_next!70041))

(assert (not b_next!70043))

(assert b_and!183133)

(assert (not b_next!70063))

(assert (not b_next!70033))

(assert b_and!183131)

(assert (not b_next!70029))

(assert b_and!183121)

(assert (not b_next!70061))

(assert b_and!183117)

(assert b_and!183119)

(assert (not b_next!70077))

(check-sat)

(pop 1)

