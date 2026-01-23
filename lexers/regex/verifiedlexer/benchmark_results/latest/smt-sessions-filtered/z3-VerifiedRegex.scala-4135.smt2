; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221756 () Bool)

(assert start!221756)

(declare-fun b!2269134 () Bool)

(declare-fun b_free!67389 () Bool)

(declare-fun b_next!68093 () Bool)

(assert (=> b!2269134 (= b_free!67389 (not b_next!68093))))

(declare-fun tp!718160 () Bool)

(declare-fun b_and!178721 () Bool)

(assert (=> b!2269134 (= tp!718160 b_and!178721)))

(declare-fun b_free!67391 () Bool)

(declare-fun b_next!68095 () Bool)

(assert (=> b!2269134 (= b_free!67391 (not b_next!68095))))

(declare-fun tp!718151 () Bool)

(declare-fun b_and!178723 () Bool)

(assert (=> b!2269134 (= tp!718151 b_and!178723)))

(declare-fun b!2269123 () Bool)

(declare-fun b_free!67393 () Bool)

(declare-fun b_next!68097 () Bool)

(assert (=> b!2269123 (= b_free!67393 (not b_next!68097))))

(declare-fun tp!718150 () Bool)

(declare-fun b_and!178725 () Bool)

(assert (=> b!2269123 (= tp!718150 b_and!178725)))

(declare-fun b_free!67395 () Bool)

(declare-fun b_next!68099 () Bool)

(assert (=> b!2269123 (= b_free!67395 (not b_next!68099))))

(declare-fun tp!718154 () Bool)

(declare-fun b_and!178727 () Bool)

(assert (=> b!2269123 (= tp!718154 b_and!178727)))

(declare-fun b!2269116 () Bool)

(declare-fun b_free!67397 () Bool)

(declare-fun b_next!68101 () Bool)

(assert (=> b!2269116 (= b_free!67397 (not b_next!68101))))

(declare-fun tp!718167 () Bool)

(declare-fun b_and!178729 () Bool)

(assert (=> b!2269116 (= tp!718167 b_and!178729)))

(declare-fun b_free!67399 () Bool)

(declare-fun b_next!68103 () Bool)

(assert (=> b!2269116 (= b_free!67399 (not b_next!68103))))

(declare-fun tp!718153 () Bool)

(declare-fun b_and!178731 () Bool)

(assert (=> b!2269116 (= tp!718153 b_and!178731)))

(declare-fun b!2269117 () Bool)

(declare-fun b_free!67401 () Bool)

(declare-fun b_next!68105 () Bool)

(assert (=> b!2269117 (= b_free!67401 (not b_next!68105))))

(declare-fun tp!718163 () Bool)

(declare-fun b_and!178733 () Bool)

(assert (=> b!2269117 (= tp!718163 b_and!178733)))

(declare-fun b_free!67403 () Bool)

(declare-fun b_next!68107 () Bool)

(assert (=> b!2269117 (= b_free!67403 (not b_next!68107))))

(declare-fun tp!718158 () Bool)

(declare-fun b_and!178735 () Bool)

(assert (=> b!2269117 (= tp!718158 b_and!178735)))

(declare-fun b!2269109 () Bool)

(declare-fun res!970159 () Bool)

(declare-fun e!1453340 () Bool)

(assert (=> b!2269109 (=> (not res!970159) (not e!1453340))))

(declare-fun e!1453335 () Bool)

(assert (=> b!2269109 (= res!970159 e!1453335)))

(declare-fun res!970158 () Bool)

(assert (=> b!2269109 (=> res!970158 e!1453335)))

(declare-fun lt!843045 () Bool)

(assert (=> b!2269109 (= res!970158 lt!843045)))

(declare-fun b!2269110 () Bool)

(declare-fun res!970162 () Bool)

(assert (=> b!2269110 (=> (not res!970162) (not e!1453340))))

(declare-datatypes ((List!27077 0))(
  ( (Nil!26983) (Cons!26983 (h!32384 (_ BitVec 16)) (t!202385 List!27077)) )
))
(declare-datatypes ((TokenValue!4463 0))(
  ( (FloatLiteralValue!8926 (text!31686 List!27077)) (TokenValueExt!4462 (__x!17986 Int)) (Broken!22315 (value!136372 List!27077)) (Object!4556) (End!4463) (Def!4463) (Underscore!4463) (Match!4463) (Else!4463) (Error!4463) (Case!4463) (If!4463) (Extends!4463) (Abstract!4463) (Class!4463) (Val!4463) (DelimiterValue!8926 (del!4523 List!27077)) (KeywordValue!4469 (value!136373 List!27077)) (CommentValue!8926 (value!136374 List!27077)) (WhitespaceValue!8926 (value!136375 List!27077)) (IndentationValue!4463 (value!136376 List!27077)) (String!29418) (Int32!4463) (Broken!22316 (value!136377 List!27077)) (Boolean!4464) (Unit!39931) (OperatorValue!4466 (op!4523 List!27077)) (IdentifierValue!8926 (value!136378 List!27077)) (IdentifierValue!8927 (value!136379 List!27077)) (WhitespaceValue!8927 (value!136380 List!27077)) (True!8926) (False!8926) (Broken!22317 (value!136381 List!27077)) (Broken!22318 (value!136382 List!27077)) (True!8927) (RightBrace!4463) (RightBracket!4463) (Colon!4463) (Null!4463) (Comma!4463) (LeftBracket!4463) (False!8927) (LeftBrace!4463) (ImaginaryLiteralValue!4463 (text!31687 List!27077)) (StringLiteralValue!13389 (value!136383 List!27077)) (EOFValue!4463 (value!136384 List!27077)) (IdentValue!4463 (value!136385 List!27077)) (DelimiterValue!8927 (value!136386 List!27077)) (DedentValue!4463 (value!136387 List!27077)) (NewLineValue!4463 (value!136388 List!27077)) (IntegerValue!13389 (value!136389 (_ BitVec 32)) (text!31688 List!27077)) (IntegerValue!13390 (value!136390 Int) (text!31689 List!27077)) (Times!4463) (Or!4463) (Equal!4463) (Minus!4463) (Broken!22319 (value!136391 List!27077)) (And!4463) (Div!4463) (LessEqual!4463) (Mod!4463) (Concat!11112) (Not!4463) (Plus!4463) (SpaceValue!4463 (value!136392 List!27077)) (IntegerValue!13391 (value!136393 Int) (text!31690 List!27077)) (StringLiteralValue!13390 (text!31691 List!27077)) (FloatLiteralValue!8927 (text!31692 List!27077)) (BytesLiteralValue!4463 (value!136394 List!27077)) (CommentValue!8927 (value!136395 List!27077)) (StringLiteralValue!13391 (value!136396 List!27077)) (ErrorTokenValue!4463 (msg!4524 List!27077)) )
))
(declare-datatypes ((C!13444 0))(
  ( (C!13445 (val!7770 Int)) )
))
(declare-datatypes ((List!27078 0))(
  ( (Nil!26984) (Cons!26984 (h!32385 C!13444) (t!202386 List!27078)) )
))
(declare-datatypes ((IArray!17505 0))(
  ( (IArray!17506 (innerList!8810 List!27078)) )
))
(declare-datatypes ((Conc!8750 0))(
  ( (Node!8750 (left!20473 Conc!8750) (right!20803 Conc!8750) (csize!17730 Int) (cheight!8961 Int)) (Leaf!12886 (xs!11692 IArray!17505) (csize!17731 Int)) (Empty!8750) )
))
(declare-datatypes ((BalanceConc!17228 0))(
  ( (BalanceConc!17229 (c!360296 Conc!8750)) )
))
(declare-datatypes ((Regex!6649 0))(
  ( (ElementMatch!6649 (c!360297 C!13444)) (Concat!11113 (regOne!13810 Regex!6649) (regTwo!13810 Regex!6649)) (EmptyExpr!6649) (Star!6649 (reg!6978 Regex!6649)) (EmptyLang!6649) (Union!6649 (regOne!13811 Regex!6649) (regTwo!13811 Regex!6649)) )
))
(declare-datatypes ((String!29419 0))(
  ( (String!29420 (value!136397 String)) )
))
(declare-datatypes ((TokenValueInjection!8466 0))(
  ( (TokenValueInjection!8467 (toValue!6059 Int) (toChars!5918 Int)) )
))
(declare-datatypes ((Rule!8402 0))(
  ( (Rule!8403 (regex!4301 Regex!6649) (tag!4791 String!29419) (isSeparator!4301 Bool) (transformation!4301 TokenValueInjection!8466)) )
))
(declare-fun r!2363 () Rule!8402)

(declare-fun otherR!12 () Rule!8402)

(assert (=> b!2269110 (= res!970162 (not (= r!2363 otherR!12)))))

(declare-fun b!2269111 () Bool)

(declare-datatypes ((LexerInterface!3898 0))(
  ( (LexerInterfaceExt!3895 (__x!17987 Int)) (Lexer!3896) )
))
(declare-fun thiss!16613 () LexerInterface!3898)

(declare-datatypes ((List!27079 0))(
  ( (Nil!26985) (Cons!26985 (h!32386 Rule!8402) (t!202387 List!27079)) )
))
(declare-fun rules!1750 () List!27079)

(declare-fun rulesValidInductive!1501 (LexerInterface!3898 List!27079) Bool)

(assert (=> b!2269111 (= e!1453340 (not (rulesValidInductive!1501 thiss!16613 rules!1750)))))

(declare-fun b!2269112 () Bool)

(declare-fun e!1453328 () Bool)

(declare-datatypes ((Token!8080 0))(
  ( (Token!8081 (value!136398 TokenValue!4463) (rule!6619 Rule!8402) (size!21172 Int) (originalCharacters!5071 List!27078)) )
))
(declare-datatypes ((List!27080 0))(
  ( (Nil!26986) (Cons!26986 (h!32387 Token!8080) (t!202388 List!27080)) )
))
(declare-fun tokens!456 () List!27080)

(declare-fun otherP!12 () List!27078)

(declare-fun size!21173 (BalanceConc!17228) Int)

(declare-fun charsOf!2689 (Token!8080) BalanceConc!17228)

(declare-fun head!4892 (List!27080) Token!8080)

(declare-fun size!21174 (List!27078) Int)

(assert (=> b!2269112 (= e!1453328 (<= (size!21173 (charsOf!2689 (head!4892 tokens!456))) (size!21174 otherP!12)))))

(declare-fun b!2269113 () Bool)

(declare-fun tp!718165 () Bool)

(declare-fun e!1453326 () Bool)

(declare-fun e!1453338 () Bool)

(declare-fun inv!36530 (String!29419) Bool)

(declare-fun inv!36533 (TokenValueInjection!8466) Bool)

(assert (=> b!2269113 (= e!1453326 (and tp!718165 (inv!36530 (tag!4791 (rule!6619 (h!32387 tokens!456)))) (inv!36533 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) e!1453338))))

(declare-fun b!2269114 () Bool)

(declare-fun res!970154 () Bool)

(declare-fun e!1453330 () Bool)

(assert (=> b!2269114 (=> (not res!970154) (not e!1453330))))

(declare-fun contains!4661 (List!27079 Rule!8402) Bool)

(assert (=> b!2269114 (= res!970154 (contains!4661 rules!1750 r!2363))))

(declare-fun res!970155 () Bool)

(assert (=> start!221756 (=> (not res!970155) (not e!1453330))))

(get-info :version)

(assert (=> start!221756 (= res!970155 ((_ is Lexer!3896) thiss!16613))))

(assert (=> start!221756 e!1453330))

(assert (=> start!221756 true))

(declare-fun e!1453332 () Bool)

(assert (=> start!221756 e!1453332))

(declare-fun e!1453345 () Bool)

(assert (=> start!221756 e!1453345))

(declare-fun e!1453329 () Bool)

(assert (=> start!221756 e!1453329))

(declare-fun e!1453346 () Bool)

(assert (=> start!221756 e!1453346))

(declare-fun e!1453336 () Bool)

(assert (=> start!221756 e!1453336))

(declare-fun e!1453334 () Bool)

(assert (=> start!221756 e!1453334))

(declare-fun e!1453325 () Bool)

(assert (=> start!221756 e!1453325))

(declare-fun b!2269115 () Bool)

(declare-fun e!1453333 () Bool)

(declare-fun e!1453347 () Bool)

(declare-fun tp!718159 () Bool)

(assert (=> b!2269115 (= e!1453347 (and tp!718159 (inv!36530 (tag!4791 (h!32386 rules!1750))) (inv!36533 (transformation!4301 (h!32386 rules!1750))) e!1453333))))

(assert (=> b!2269116 (= e!1453338 (and tp!718167 tp!718153))))

(declare-fun e!1453331 () Bool)

(assert (=> b!2269117 (= e!1453331 (and tp!718163 tp!718158))))

(declare-fun b!2269118 () Bool)

(declare-fun tp!718161 () Bool)

(declare-fun e!1453339 () Bool)

(declare-fun inv!36534 (Token!8080) Bool)

(assert (=> b!2269118 (= e!1453325 (and (inv!36534 (h!32387 tokens!456)) e!1453339 tp!718161))))

(declare-fun b!2269119 () Bool)

(declare-fun tp_is_empty!10519 () Bool)

(declare-fun tp!718164 () Bool)

(assert (=> b!2269119 (= e!1453346 (and tp_is_empty!10519 tp!718164))))

(declare-fun b!2269120 () Bool)

(declare-fun res!970160 () Bool)

(assert (=> b!2269120 (=> (not res!970160) (not e!1453330))))

(declare-fun isEmpty!15277 (List!27079) Bool)

(assert (=> b!2269120 (= res!970160 (not (isEmpty!15277 rules!1750)))))

(declare-fun b!2269121 () Bool)

(declare-fun e!1453343 () Bool)

(assert (=> b!2269121 (= e!1453330 e!1453343)))

(declare-fun res!970163 () Bool)

(assert (=> b!2269121 (=> (not res!970163) (not e!1453343))))

(declare-fun suffix!886 () List!27078)

(declare-datatypes ((IArray!17507 0))(
  ( (IArray!17508 (innerList!8811 List!27080)) )
))
(declare-datatypes ((Conc!8751 0))(
  ( (Node!8751 (left!20474 Conc!8751) (right!20804 Conc!8751) (csize!17732 Int) (cheight!8962 Int)) (Leaf!12887 (xs!11693 IArray!17507) (csize!17733 Int)) (Empty!8751) )
))
(declare-datatypes ((BalanceConc!17230 0))(
  ( (BalanceConc!17231 (c!360298 Conc!8751)) )
))
(declare-datatypes ((tuple2!26644 0))(
  ( (tuple2!26645 (_1!15832 BalanceConc!17230) (_2!15832 BalanceConc!17228)) )
))
(declare-fun lt!843046 () tuple2!26644)

(declare-datatypes ((tuple2!26646 0))(
  ( (tuple2!26647 (_1!15833 List!27080) (_2!15833 List!27078)) )
))
(declare-fun list!10449 (BalanceConc!17230) List!27080)

(declare-fun list!10450 (BalanceConc!17228) List!27078)

(assert (=> b!2269121 (= res!970163 (= (tuple2!26647 (list!10449 (_1!15832 lt!843046)) (list!10450 (_2!15832 lt!843046))) (tuple2!26647 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27078)

(declare-fun lex!1737 (LexerInterface!3898 List!27079 BalanceConc!17228) tuple2!26644)

(declare-fun seqFromList!3005 (List!27078) BalanceConc!17228)

(assert (=> b!2269121 (= lt!843046 (lex!1737 thiss!16613 rules!1750 (seqFromList!3005 input!1722)))))

(declare-fun b!2269122 () Bool)

(assert (=> b!2269122 (= e!1453343 e!1453340)))

(declare-fun res!970161 () Bool)

(assert (=> b!2269122 (=> (not res!970161) (not e!1453340))))

(assert (=> b!2269122 (= res!970161 e!1453328)))

(declare-fun res!970164 () Bool)

(assert (=> b!2269122 (=> res!970164 e!1453328)))

(assert (=> b!2269122 (= res!970164 lt!843045)))

(declare-fun isEmpty!15278 (List!27080) Bool)

(assert (=> b!2269122 (= lt!843045 (isEmpty!15278 tokens!456))))

(declare-fun e!1453341 () Bool)

(assert (=> b!2269123 (= e!1453341 (and tp!718150 tp!718154))))

(declare-fun b!2269124 () Bool)

(declare-fun res!970153 () Bool)

(assert (=> b!2269124 (=> (not res!970153) (not e!1453330))))

(declare-fun rulesInvariant!3400 (LexerInterface!3898 List!27079) Bool)

(assert (=> b!2269124 (= res!970153 (rulesInvariant!3400 thiss!16613 rules!1750))))

(declare-fun b!2269125 () Bool)

(declare-fun tp!718156 () Bool)

(assert (=> b!2269125 (= e!1453329 (and tp_is_empty!10519 tp!718156))))

(declare-fun tp!718162 () Bool)

(declare-fun b!2269126 () Bool)

(assert (=> b!2269126 (= e!1453345 (and tp!718162 (inv!36530 (tag!4791 otherR!12)) (inv!36533 (transformation!4301 otherR!12)) e!1453331))))

(declare-fun b!2269127 () Bool)

(declare-fun tp!718166 () Bool)

(assert (=> b!2269127 (= e!1453334 (and tp!718166 (inv!36530 (tag!4791 r!2363)) (inv!36533 (transformation!4301 r!2363)) e!1453341))))

(declare-fun b!2269128 () Bool)

(declare-fun res!970156 () Bool)

(assert (=> b!2269128 (=> (not res!970156) (not e!1453340))))

(declare-fun isPrefix!2291 (List!27078 List!27078) Bool)

(assert (=> b!2269128 (= res!970156 (isPrefix!2291 otherP!12 input!1722))))

(declare-fun b!2269129 () Bool)

(assert (=> b!2269129 (= e!1453335 (= (rule!6619 (head!4892 tokens!456)) r!2363))))

(declare-fun b!2269130 () Bool)

(declare-fun res!970157 () Bool)

(assert (=> b!2269130 (=> (not res!970157) (not e!1453330))))

(assert (=> b!2269130 (= res!970157 (contains!4661 rules!1750 otherR!12))))

(declare-fun tp!718155 () Bool)

(declare-fun b!2269131 () Bool)

(declare-fun inv!21 (TokenValue!4463) Bool)

(assert (=> b!2269131 (= e!1453339 (and (inv!21 (value!136398 (h!32387 tokens!456))) e!1453326 tp!718155))))

(declare-fun b!2269132 () Bool)

(declare-fun tp!718152 () Bool)

(assert (=> b!2269132 (= e!1453332 (and tp_is_empty!10519 tp!718152))))

(declare-fun b!2269133 () Bool)

(declare-fun tp!718157 () Bool)

(assert (=> b!2269133 (= e!1453336 (and e!1453347 tp!718157))))

(assert (=> b!2269134 (= e!1453333 (and tp!718160 tp!718151))))

(assert (= (and start!221756 res!970155) b!2269120))

(assert (= (and b!2269120 res!970160) b!2269124))

(assert (= (and b!2269124 res!970153) b!2269114))

(assert (= (and b!2269114 res!970154) b!2269130))

(assert (= (and b!2269130 res!970157) b!2269121))

(assert (= (and b!2269121 res!970163) b!2269122))

(assert (= (and b!2269122 (not res!970164)) b!2269112))

(assert (= (and b!2269122 res!970161) b!2269109))

(assert (= (and b!2269109 (not res!970158)) b!2269129))

(assert (= (and b!2269109 res!970159) b!2269128))

(assert (= (and b!2269128 res!970156) b!2269110))

(assert (= (and b!2269110 res!970162) b!2269111))

(assert (= (and start!221756 ((_ is Cons!26984) input!1722)) b!2269132))

(assert (= b!2269126 b!2269117))

(assert (= start!221756 b!2269126))

(assert (= (and start!221756 ((_ is Cons!26984) suffix!886)) b!2269125))

(assert (= (and start!221756 ((_ is Cons!26984) otherP!12)) b!2269119))

(assert (= b!2269115 b!2269134))

(assert (= b!2269133 b!2269115))

(assert (= (and start!221756 ((_ is Cons!26985) rules!1750)) b!2269133))

(assert (= b!2269127 b!2269123))

(assert (= start!221756 b!2269127))

(assert (= b!2269113 b!2269116))

(assert (= b!2269131 b!2269113))

(assert (= b!2269118 b!2269131))

(assert (= (and start!221756 ((_ is Cons!26986) tokens!456)) b!2269118))

(declare-fun m!2698017 () Bool)

(assert (=> b!2269124 m!2698017))

(declare-fun m!2698019 () Bool)

(assert (=> b!2269111 m!2698019))

(declare-fun m!2698021 () Bool)

(assert (=> b!2269118 m!2698021))

(declare-fun m!2698023 () Bool)

(assert (=> b!2269128 m!2698023))

(declare-fun m!2698025 () Bool)

(assert (=> b!2269112 m!2698025))

(assert (=> b!2269112 m!2698025))

(declare-fun m!2698027 () Bool)

(assert (=> b!2269112 m!2698027))

(assert (=> b!2269112 m!2698027))

(declare-fun m!2698029 () Bool)

(assert (=> b!2269112 m!2698029))

(declare-fun m!2698031 () Bool)

(assert (=> b!2269112 m!2698031))

(declare-fun m!2698033 () Bool)

(assert (=> b!2269120 m!2698033))

(declare-fun m!2698035 () Bool)

(assert (=> b!2269114 m!2698035))

(declare-fun m!2698037 () Bool)

(assert (=> b!2269122 m!2698037))

(declare-fun m!2698039 () Bool)

(assert (=> b!2269121 m!2698039))

(declare-fun m!2698041 () Bool)

(assert (=> b!2269121 m!2698041))

(declare-fun m!2698043 () Bool)

(assert (=> b!2269121 m!2698043))

(assert (=> b!2269121 m!2698043))

(declare-fun m!2698045 () Bool)

(assert (=> b!2269121 m!2698045))

(declare-fun m!2698047 () Bool)

(assert (=> b!2269113 m!2698047))

(declare-fun m!2698049 () Bool)

(assert (=> b!2269113 m!2698049))

(declare-fun m!2698051 () Bool)

(assert (=> b!2269130 m!2698051))

(declare-fun m!2698053 () Bool)

(assert (=> b!2269115 m!2698053))

(declare-fun m!2698055 () Bool)

(assert (=> b!2269115 m!2698055))

(declare-fun m!2698057 () Bool)

(assert (=> b!2269131 m!2698057))

(declare-fun m!2698059 () Bool)

(assert (=> b!2269127 m!2698059))

(declare-fun m!2698061 () Bool)

(assert (=> b!2269127 m!2698061))

(assert (=> b!2269129 m!2698025))

(declare-fun m!2698063 () Bool)

(assert (=> b!2269126 m!2698063))

(declare-fun m!2698065 () Bool)

(assert (=> b!2269126 m!2698065))

(check-sat (not b!2269119) (not b!2269113) (not b!2269114) b_and!178731 (not b_next!68103) (not b!2269128) b_and!178721 (not b_next!68107) (not b!2269127) (not b!2269125) (not b_next!68099) (not b!2269132) (not b_next!68097) (not b!2269133) b_and!178735 (not b!2269121) b_and!178723 (not b!2269124) (not b_next!68105) (not b!2269118) (not b!2269115) (not b_next!68095) (not b_next!68101) (not b!2269111) (not b!2269130) b_and!178725 (not b!2269131) b_and!178729 (not b!2269120) b_and!178727 (not b!2269122) tp_is_empty!10519 (not b!2269126) (not b!2269112) b_and!178733 (not b!2269129) (not b_next!68093))
(check-sat (not b_next!68099) (not b_next!68097) b_and!178735 b_and!178723 (not b_next!68105) b_and!178725 b_and!178731 b_and!178729 b_and!178727 (not b_next!68103) b_and!178733 (not b_next!68093) b_and!178721 (not b_next!68107) (not b_next!68095) (not b_next!68101))
(get-model)

(declare-fun d!671660 () Bool)

(declare-fun lt!843049 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3598 (List!27079) (InoxSet Rule!8402))

(assert (=> d!671660 (= lt!843049 (select (content!3598 rules!1750) r!2363))))

(declare-fun e!1453353 () Bool)

(assert (=> d!671660 (= lt!843049 e!1453353)))

(declare-fun res!970174 () Bool)

(assert (=> d!671660 (=> (not res!970174) (not e!1453353))))

(assert (=> d!671660 (= res!970174 ((_ is Cons!26985) rules!1750))))

(assert (=> d!671660 (= (contains!4661 rules!1750 r!2363) lt!843049)))

(declare-fun b!2269139 () Bool)

(declare-fun e!1453352 () Bool)

(assert (=> b!2269139 (= e!1453353 e!1453352)))

(declare-fun res!970173 () Bool)

(assert (=> b!2269139 (=> res!970173 e!1453352)))

(assert (=> b!2269139 (= res!970173 (= (h!32386 rules!1750) r!2363))))

(declare-fun b!2269140 () Bool)

(assert (=> b!2269140 (= e!1453352 (contains!4661 (t!202387 rules!1750) r!2363))))

(assert (= (and d!671660 res!970174) b!2269139))

(assert (= (and b!2269139 (not res!970173)) b!2269140))

(declare-fun m!2698067 () Bool)

(assert (=> d!671660 m!2698067))

(declare-fun m!2698069 () Bool)

(assert (=> d!671660 m!2698069))

(declare-fun m!2698071 () Bool)

(assert (=> b!2269140 m!2698071))

(assert (=> b!2269114 d!671660))

(declare-fun d!671662 () Bool)

(declare-fun res!970178 () Bool)

(declare-fun e!1453356 () Bool)

(assert (=> d!671662 (=> (not res!970178) (not e!1453356))))

(declare-fun rulesValid!1576 (LexerInterface!3898 List!27079) Bool)

(assert (=> d!671662 (= res!970178 (rulesValid!1576 thiss!16613 rules!1750))))

(assert (=> d!671662 (= (rulesInvariant!3400 thiss!16613 rules!1750) e!1453356)))

(declare-fun b!2269143 () Bool)

(declare-datatypes ((List!27082 0))(
  ( (Nil!26988) (Cons!26988 (h!32389 String!29419) (t!202438 List!27082)) )
))
(declare-fun noDuplicateTag!1574 (LexerInterface!3898 List!27079 List!27082) Bool)

(assert (=> b!2269143 (= e!1453356 (noDuplicateTag!1574 thiss!16613 rules!1750 Nil!26988))))

(assert (= (and d!671662 res!970178) b!2269143))

(declare-fun m!2698073 () Bool)

(assert (=> d!671662 m!2698073))

(declare-fun m!2698075 () Bool)

(assert (=> b!2269143 m!2698075))

(assert (=> b!2269124 d!671662))

(declare-fun d!671664 () Bool)

(assert (=> d!671664 (= (inv!36530 (tag!4791 (rule!6619 (h!32387 tokens!456)))) (= (mod (str.len (value!136397 (tag!4791 (rule!6619 (h!32387 tokens!456))))) 2) 0))))

(assert (=> b!2269113 d!671664))

(declare-fun d!671666 () Bool)

(declare-fun res!970186 () Bool)

(declare-fun e!1453361 () Bool)

(assert (=> d!671666 (=> (not res!970186) (not e!1453361))))

(declare-fun semiInverseModEq!1732 (Int Int) Bool)

(assert (=> d!671666 (= res!970186 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))))))

(assert (=> d!671666 (= (inv!36533 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) e!1453361)))

(declare-fun b!2269148 () Bool)

(declare-fun equivClasses!1651 (Int Int) Bool)

(assert (=> b!2269148 (= e!1453361 (equivClasses!1651 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))))))

(assert (= (and d!671666 res!970186) b!2269148))

(declare-fun m!2698077 () Bool)

(assert (=> d!671666 m!2698077))

(declare-fun m!2698079 () Bool)

(assert (=> b!2269148 m!2698079))

(assert (=> b!2269113 d!671666))

(declare-fun d!671672 () Bool)

(declare-fun lt!843052 () Int)

(assert (=> d!671672 (= lt!843052 (size!21174 (list!10450 (charsOf!2689 (head!4892 tokens!456)))))))

(declare-fun size!21177 (Conc!8750) Int)

(assert (=> d!671672 (= lt!843052 (size!21177 (c!360296 (charsOf!2689 (head!4892 tokens!456)))))))

(assert (=> d!671672 (= (size!21173 (charsOf!2689 (head!4892 tokens!456))) lt!843052)))

(declare-fun bs!455848 () Bool)

(assert (= bs!455848 d!671672))

(assert (=> bs!455848 m!2698027))

(declare-fun m!2698085 () Bool)

(assert (=> bs!455848 m!2698085))

(assert (=> bs!455848 m!2698085))

(declare-fun m!2698087 () Bool)

(assert (=> bs!455848 m!2698087))

(declare-fun m!2698089 () Bool)

(assert (=> bs!455848 m!2698089))

(assert (=> b!2269112 d!671672))

(declare-fun d!671678 () Bool)

(declare-fun lt!843057 () BalanceConc!17228)

(assert (=> d!671678 (= (list!10450 lt!843057) (originalCharacters!5071 (head!4892 tokens!456)))))

(declare-fun dynLambda!11691 (Int TokenValue!4463) BalanceConc!17228)

(assert (=> d!671678 (= lt!843057 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))))

(assert (=> d!671678 (= (charsOf!2689 (head!4892 tokens!456)) lt!843057)))

(declare-fun b_lambda!72313 () Bool)

(assert (=> (not b_lambda!72313) (not d!671678)))

(declare-fun tb!134607 () Bool)

(declare-fun t!202390 () Bool)

(assert (=> (and b!2269134 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202390) tb!134607))

(declare-fun b!2269158 () Bool)

(declare-fun e!1453369 () Bool)

(declare-fun tp!718170 () Bool)

(declare-fun inv!36537 (Conc!8750) Bool)

(assert (=> b!2269158 (= e!1453369 (and (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))) tp!718170))))

(declare-fun result!164114 () Bool)

(declare-fun inv!36538 (BalanceConc!17228) Bool)

(assert (=> tb!134607 (= result!164114 (and (inv!36538 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))) e!1453369))))

(assert (= tb!134607 b!2269158))

(declare-fun m!2698091 () Bool)

(assert (=> b!2269158 m!2698091))

(declare-fun m!2698093 () Bool)

(assert (=> tb!134607 m!2698093))

(assert (=> d!671678 t!202390))

(declare-fun b_and!178737 () Bool)

(assert (= b_and!178723 (and (=> t!202390 result!164114) b_and!178737)))

(declare-fun t!202392 () Bool)

(declare-fun tb!134609 () Bool)

(assert (=> (and b!2269123 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202392) tb!134609))

(declare-fun result!164118 () Bool)

(assert (= result!164118 result!164114))

(assert (=> d!671678 t!202392))

(declare-fun b_and!178739 () Bool)

(assert (= b_and!178727 (and (=> t!202392 result!164118) b_and!178739)))

(declare-fun t!202394 () Bool)

(declare-fun tb!134611 () Bool)

(assert (=> (and b!2269116 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202394) tb!134611))

(declare-fun result!164120 () Bool)

(assert (= result!164120 result!164114))

(assert (=> d!671678 t!202394))

(declare-fun b_and!178741 () Bool)

(assert (= b_and!178731 (and (=> t!202394 result!164120) b_and!178741)))

(declare-fun t!202396 () Bool)

(declare-fun tb!134613 () Bool)

(assert (=> (and b!2269117 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202396) tb!134613))

(declare-fun result!164122 () Bool)

(assert (= result!164122 result!164114))

(assert (=> d!671678 t!202396))

(declare-fun b_and!178743 () Bool)

(assert (= b_and!178735 (and (=> t!202396 result!164122) b_and!178743)))

(declare-fun m!2698095 () Bool)

(assert (=> d!671678 m!2698095))

(declare-fun m!2698097 () Bool)

(assert (=> d!671678 m!2698097))

(assert (=> b!2269112 d!671678))

(declare-fun d!671680 () Bool)

(assert (=> d!671680 (= (head!4892 tokens!456) (h!32387 tokens!456))))

(assert (=> b!2269112 d!671680))

(declare-fun d!671682 () Bool)

(declare-fun lt!843060 () Int)

(assert (=> d!671682 (>= lt!843060 0)))

(declare-fun e!1453372 () Int)

(assert (=> d!671682 (= lt!843060 e!1453372)))

(declare-fun c!360301 () Bool)

(assert (=> d!671682 (= c!360301 ((_ is Nil!26984) otherP!12))))

(assert (=> d!671682 (= (size!21174 otherP!12) lt!843060)))

(declare-fun b!2269163 () Bool)

(assert (=> b!2269163 (= e!1453372 0)))

(declare-fun b!2269164 () Bool)

(assert (=> b!2269164 (= e!1453372 (+ 1 (size!21174 (t!202386 otherP!12))))))

(assert (= (and d!671682 c!360301) b!2269163))

(assert (= (and d!671682 (not c!360301)) b!2269164))

(declare-fun m!2698099 () Bool)

(assert (=> b!2269164 m!2698099))

(assert (=> b!2269112 d!671682))

(declare-fun d!671684 () Bool)

(assert (=> d!671684 (= (isEmpty!15278 tokens!456) ((_ is Nil!26986) tokens!456))))

(assert (=> b!2269122 d!671684))

(declare-fun d!671686 () Bool)

(assert (=> d!671686 true))

(declare-fun lt!843079 () Bool)

(declare-fun lambda!85431 () Int)

(declare-fun forall!5478 (List!27079 Int) Bool)

(assert (=> d!671686 (= lt!843079 (forall!5478 rules!1750 lambda!85431))))

(declare-fun e!1453404 () Bool)

(assert (=> d!671686 (= lt!843079 e!1453404)))

(declare-fun res!970217 () Bool)

(assert (=> d!671686 (=> res!970217 e!1453404)))

(assert (=> d!671686 (= res!970217 (not ((_ is Cons!26985) rules!1750)))))

(assert (=> d!671686 (= (rulesValidInductive!1501 thiss!16613 rules!1750) lt!843079)))

(declare-fun b!2269208 () Bool)

(declare-fun e!1453403 () Bool)

(assert (=> b!2269208 (= e!1453404 e!1453403)))

(declare-fun res!970216 () Bool)

(assert (=> b!2269208 (=> (not res!970216) (not e!1453403))))

(declare-fun ruleValid!1391 (LexerInterface!3898 Rule!8402) Bool)

(assert (=> b!2269208 (= res!970216 (ruleValid!1391 thiss!16613 (h!32386 rules!1750)))))

(declare-fun b!2269209 () Bool)

(assert (=> b!2269209 (= e!1453403 (rulesValidInductive!1501 thiss!16613 (t!202387 rules!1750)))))

(assert (= (and d!671686 (not res!970217)) b!2269208))

(assert (= (and b!2269208 res!970216) b!2269209))

(declare-fun m!2698157 () Bool)

(assert (=> d!671686 m!2698157))

(declare-fun m!2698159 () Bool)

(assert (=> b!2269208 m!2698159))

(declare-fun m!2698161 () Bool)

(assert (=> b!2269209 m!2698161))

(assert (=> b!2269111 d!671686))

(declare-fun d!671712 () Bool)

(declare-fun list!10453 (Conc!8751) List!27080)

(assert (=> d!671712 (= (list!10449 (_1!15832 lt!843046)) (list!10453 (c!360298 (_1!15832 lt!843046))))))

(declare-fun bs!455853 () Bool)

(assert (= bs!455853 d!671712))

(declare-fun m!2698163 () Bool)

(assert (=> bs!455853 m!2698163))

(assert (=> b!2269121 d!671712))

(declare-fun d!671714 () Bool)

(declare-fun list!10454 (Conc!8750) List!27078)

(assert (=> d!671714 (= (list!10450 (_2!15832 lt!843046)) (list!10454 (c!360296 (_2!15832 lt!843046))))))

(declare-fun bs!455854 () Bool)

(assert (= bs!455854 d!671714))

(declare-fun m!2698177 () Bool)

(assert (=> bs!455854 m!2698177))

(assert (=> b!2269121 d!671714))

(declare-fun b!2269320 () Bool)

(declare-fun e!1453480 () Bool)

(declare-fun e!1453482 () Bool)

(assert (=> b!2269320 (= e!1453480 e!1453482)))

(declare-fun res!970251 () Bool)

(declare-fun lt!843086 () tuple2!26644)

(assert (=> b!2269320 (= res!970251 (< (size!21173 (_2!15832 lt!843086)) (size!21173 (seqFromList!3005 input!1722))))))

(assert (=> b!2269320 (=> (not res!970251) (not e!1453482))))

(declare-fun b!2269321 () Bool)

(assert (=> b!2269321 (= e!1453480 (= (_2!15832 lt!843086) (seqFromList!3005 input!1722)))))

(declare-fun d!671720 () Bool)

(declare-fun e!1453481 () Bool)

(assert (=> d!671720 e!1453481))

(declare-fun res!970252 () Bool)

(assert (=> d!671720 (=> (not res!970252) (not e!1453481))))

(assert (=> d!671720 (= res!970252 e!1453480)))

(declare-fun c!360316 () Bool)

(declare-fun size!21178 (BalanceConc!17230) Int)

(assert (=> d!671720 (= c!360316 (> (size!21178 (_1!15832 lt!843086)) 0))))

(declare-fun lexTailRecV2!751 (LexerInterface!3898 List!27079 BalanceConc!17228 BalanceConc!17228 BalanceConc!17228 BalanceConc!17230) tuple2!26644)

(assert (=> d!671720 (= lt!843086 (lexTailRecV2!751 thiss!16613 rules!1750 (seqFromList!3005 input!1722) (BalanceConc!17229 Empty!8750) (seqFromList!3005 input!1722) (BalanceConc!17231 Empty!8751)))))

(assert (=> d!671720 (= (lex!1737 thiss!16613 rules!1750 (seqFromList!3005 input!1722)) lt!843086)))

(declare-fun b!2269322 () Bool)

(declare-fun isEmpty!15281 (BalanceConc!17230) Bool)

(assert (=> b!2269322 (= e!1453482 (not (isEmpty!15281 (_1!15832 lt!843086))))))

(declare-fun b!2269323 () Bool)

(declare-fun res!970250 () Bool)

(assert (=> b!2269323 (=> (not res!970250) (not e!1453481))))

(declare-fun lexList!1076 (LexerInterface!3898 List!27079 List!27078) tuple2!26646)

(assert (=> b!2269323 (= res!970250 (= (list!10449 (_1!15832 lt!843086)) (_1!15833 (lexList!1076 thiss!16613 rules!1750 (list!10450 (seqFromList!3005 input!1722))))))))

(declare-fun b!2269324 () Bool)

(assert (=> b!2269324 (= e!1453481 (= (list!10450 (_2!15832 lt!843086)) (_2!15833 (lexList!1076 thiss!16613 rules!1750 (list!10450 (seqFromList!3005 input!1722))))))))

(assert (= (and d!671720 c!360316) b!2269320))

(assert (= (and d!671720 (not c!360316)) b!2269321))

(assert (= (and b!2269320 res!970251) b!2269322))

(assert (= (and d!671720 res!970252) b!2269323))

(assert (= (and b!2269323 res!970250) b!2269324))

(declare-fun m!2698225 () Bool)

(assert (=> b!2269324 m!2698225))

(assert (=> b!2269324 m!2698043))

(declare-fun m!2698227 () Bool)

(assert (=> b!2269324 m!2698227))

(assert (=> b!2269324 m!2698227))

(declare-fun m!2698229 () Bool)

(assert (=> b!2269324 m!2698229))

(declare-fun m!2698231 () Bool)

(assert (=> b!2269322 m!2698231))

(declare-fun m!2698233 () Bool)

(assert (=> d!671720 m!2698233))

(assert (=> d!671720 m!2698043))

(assert (=> d!671720 m!2698043))

(declare-fun m!2698235 () Bool)

(assert (=> d!671720 m!2698235))

(declare-fun m!2698237 () Bool)

(assert (=> b!2269323 m!2698237))

(assert (=> b!2269323 m!2698043))

(assert (=> b!2269323 m!2698227))

(assert (=> b!2269323 m!2698227))

(assert (=> b!2269323 m!2698229))

(declare-fun m!2698239 () Bool)

(assert (=> b!2269320 m!2698239))

(assert (=> b!2269320 m!2698043))

(declare-fun m!2698241 () Bool)

(assert (=> b!2269320 m!2698241))

(assert (=> b!2269121 d!671720))

(declare-fun d!671736 () Bool)

(declare-fun fromListB!1342 (List!27078) BalanceConc!17228)

(assert (=> d!671736 (= (seqFromList!3005 input!1722) (fromListB!1342 input!1722))))

(declare-fun bs!455855 () Bool)

(assert (= bs!455855 d!671736))

(declare-fun m!2698243 () Bool)

(assert (=> bs!455855 m!2698243))

(assert (=> b!2269121 d!671736))

(declare-fun b!2269335 () Bool)

(declare-fun res!970255 () Bool)

(declare-fun e!1453491 () Bool)

(assert (=> b!2269335 (=> res!970255 e!1453491)))

(assert (=> b!2269335 (= res!970255 (not ((_ is IntegerValue!13391) (value!136398 (h!32387 tokens!456)))))))

(declare-fun e!1453490 () Bool)

(assert (=> b!2269335 (= e!1453490 e!1453491)))

(declare-fun b!2269336 () Bool)

(declare-fun inv!17 (TokenValue!4463) Bool)

(assert (=> b!2269336 (= e!1453490 (inv!17 (value!136398 (h!32387 tokens!456))))))

(declare-fun b!2269337 () Bool)

(declare-fun inv!15 (TokenValue!4463) Bool)

(assert (=> b!2269337 (= e!1453491 (inv!15 (value!136398 (h!32387 tokens!456))))))

(declare-fun d!671738 () Bool)

(declare-fun c!360321 () Bool)

(assert (=> d!671738 (= c!360321 ((_ is IntegerValue!13389) (value!136398 (h!32387 tokens!456))))))

(declare-fun e!1453489 () Bool)

(assert (=> d!671738 (= (inv!21 (value!136398 (h!32387 tokens!456))) e!1453489)))

(declare-fun b!2269338 () Bool)

(assert (=> b!2269338 (= e!1453489 e!1453490)))

(declare-fun c!360322 () Bool)

(assert (=> b!2269338 (= c!360322 ((_ is IntegerValue!13390) (value!136398 (h!32387 tokens!456))))))

(declare-fun b!2269339 () Bool)

(declare-fun inv!16 (TokenValue!4463) Bool)

(assert (=> b!2269339 (= e!1453489 (inv!16 (value!136398 (h!32387 tokens!456))))))

(assert (= (and d!671738 c!360321) b!2269339))

(assert (= (and d!671738 (not c!360321)) b!2269338))

(assert (= (and b!2269338 c!360322) b!2269336))

(assert (= (and b!2269338 (not c!360322)) b!2269335))

(assert (= (and b!2269335 (not res!970255)) b!2269337))

(declare-fun m!2698245 () Bool)

(assert (=> b!2269336 m!2698245))

(declare-fun m!2698247 () Bool)

(assert (=> b!2269337 m!2698247))

(declare-fun m!2698249 () Bool)

(assert (=> b!2269339 m!2698249))

(assert (=> b!2269131 d!671738))

(declare-fun d!671740 () Bool)

(assert (=> d!671740 (= (isEmpty!15277 rules!1750) ((_ is Nil!26985) rules!1750))))

(assert (=> b!2269120 d!671740))

(declare-fun d!671742 () Bool)

(declare-fun lt!843087 () Bool)

(assert (=> d!671742 (= lt!843087 (select (content!3598 rules!1750) otherR!12))))

(declare-fun e!1453493 () Bool)

(assert (=> d!671742 (= lt!843087 e!1453493)))

(declare-fun res!970257 () Bool)

(assert (=> d!671742 (=> (not res!970257) (not e!1453493))))

(assert (=> d!671742 (= res!970257 ((_ is Cons!26985) rules!1750))))

(assert (=> d!671742 (= (contains!4661 rules!1750 otherR!12) lt!843087)))

(declare-fun b!2269340 () Bool)

(declare-fun e!1453492 () Bool)

(assert (=> b!2269340 (= e!1453493 e!1453492)))

(declare-fun res!970256 () Bool)

(assert (=> b!2269340 (=> res!970256 e!1453492)))

(assert (=> b!2269340 (= res!970256 (= (h!32386 rules!1750) otherR!12))))

(declare-fun b!2269341 () Bool)

(assert (=> b!2269341 (= e!1453492 (contains!4661 (t!202387 rules!1750) otherR!12))))

(assert (= (and d!671742 res!970257) b!2269340))

(assert (= (and b!2269340 (not res!970256)) b!2269341))

(assert (=> d!671742 m!2698067))

(declare-fun m!2698251 () Bool)

(assert (=> d!671742 m!2698251))

(declare-fun m!2698253 () Bool)

(assert (=> b!2269341 m!2698253))

(assert (=> b!2269130 d!671742))

(assert (=> b!2269129 d!671680))

(declare-fun d!671744 () Bool)

(declare-fun res!970262 () Bool)

(declare-fun e!1453496 () Bool)

(assert (=> d!671744 (=> (not res!970262) (not e!1453496))))

(declare-fun isEmpty!15282 (List!27078) Bool)

(assert (=> d!671744 (= res!970262 (not (isEmpty!15282 (originalCharacters!5071 (h!32387 tokens!456)))))))

(assert (=> d!671744 (= (inv!36534 (h!32387 tokens!456)) e!1453496)))

(declare-fun b!2269346 () Bool)

(declare-fun res!970263 () Bool)

(assert (=> b!2269346 (=> (not res!970263) (not e!1453496))))

(assert (=> b!2269346 (= res!970263 (= (originalCharacters!5071 (h!32387 tokens!456)) (list!10450 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(declare-fun b!2269347 () Bool)

(assert (=> b!2269347 (= e!1453496 (= (size!21172 (h!32387 tokens!456)) (size!21174 (originalCharacters!5071 (h!32387 tokens!456)))))))

(assert (= (and d!671744 res!970262) b!2269346))

(assert (= (and b!2269346 res!970263) b!2269347))

(declare-fun b_lambda!72321 () Bool)

(assert (=> (not b_lambda!72321) (not b!2269346)))

(declare-fun tb!134639 () Bool)

(declare-fun t!202423 () Bool)

(assert (=> (and b!2269134 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202423) tb!134639))

(declare-fun b!2269348 () Bool)

(declare-fun e!1453497 () Bool)

(declare-fun tp!718238 () Bool)

(assert (=> b!2269348 (= e!1453497 (and (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))) tp!718238))))

(declare-fun result!164158 () Bool)

(assert (=> tb!134639 (= result!164158 (and (inv!36538 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))) e!1453497))))

(assert (= tb!134639 b!2269348))

(declare-fun m!2698255 () Bool)

(assert (=> b!2269348 m!2698255))

(declare-fun m!2698257 () Bool)

(assert (=> tb!134639 m!2698257))

(assert (=> b!2269346 t!202423))

(declare-fun b_and!178769 () Bool)

(assert (= b_and!178737 (and (=> t!202423 result!164158) b_and!178769)))

(declare-fun tb!134641 () Bool)

(declare-fun t!202425 () Bool)

(assert (=> (and b!2269123 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202425) tb!134641))

(declare-fun result!164160 () Bool)

(assert (= result!164160 result!164158))

(assert (=> b!2269346 t!202425))

(declare-fun b_and!178771 () Bool)

(assert (= b_and!178739 (and (=> t!202425 result!164160) b_and!178771)))

(declare-fun t!202427 () Bool)

(declare-fun tb!134643 () Bool)

(assert (=> (and b!2269116 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202427) tb!134643))

(declare-fun result!164162 () Bool)

(assert (= result!164162 result!164158))

(assert (=> b!2269346 t!202427))

(declare-fun b_and!178773 () Bool)

(assert (= b_and!178741 (and (=> t!202427 result!164162) b_and!178773)))

(declare-fun tb!134645 () Bool)

(declare-fun t!202429 () Bool)

(assert (=> (and b!2269117 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202429) tb!134645))

(declare-fun result!164164 () Bool)

(assert (= result!164164 result!164158))

(assert (=> b!2269346 t!202429))

(declare-fun b_and!178775 () Bool)

(assert (= b_and!178743 (and (=> t!202429 result!164164) b_and!178775)))

(declare-fun m!2698259 () Bool)

(assert (=> d!671744 m!2698259))

(declare-fun m!2698261 () Bool)

(assert (=> b!2269346 m!2698261))

(assert (=> b!2269346 m!2698261))

(declare-fun m!2698263 () Bool)

(assert (=> b!2269346 m!2698263))

(declare-fun m!2698265 () Bool)

(assert (=> b!2269347 m!2698265))

(assert (=> b!2269118 d!671744))

(declare-fun d!671746 () Bool)

(declare-fun e!1453504 () Bool)

(assert (=> d!671746 e!1453504))

(declare-fun res!970274 () Bool)

(assert (=> d!671746 (=> res!970274 e!1453504)))

(declare-fun lt!843090 () Bool)

(assert (=> d!671746 (= res!970274 (not lt!843090))))

(declare-fun e!1453506 () Bool)

(assert (=> d!671746 (= lt!843090 e!1453506)))

(declare-fun res!970273 () Bool)

(assert (=> d!671746 (=> res!970273 e!1453506)))

(assert (=> d!671746 (= res!970273 ((_ is Nil!26984) otherP!12))))

(assert (=> d!671746 (= (isPrefix!2291 otherP!12 input!1722) lt!843090)))

(declare-fun b!2269360 () Bool)

(assert (=> b!2269360 (= e!1453504 (>= (size!21174 input!1722) (size!21174 otherP!12)))))

(declare-fun b!2269358 () Bool)

(declare-fun res!970275 () Bool)

(declare-fun e!1453505 () Bool)

(assert (=> b!2269358 (=> (not res!970275) (not e!1453505))))

(declare-fun head!4894 (List!27078) C!13444)

(assert (=> b!2269358 (= res!970275 (= (head!4894 otherP!12) (head!4894 input!1722)))))

(declare-fun b!2269357 () Bool)

(assert (=> b!2269357 (= e!1453506 e!1453505)))

(declare-fun res!970272 () Bool)

(assert (=> b!2269357 (=> (not res!970272) (not e!1453505))))

(assert (=> b!2269357 (= res!970272 (not ((_ is Nil!26984) input!1722)))))

(declare-fun b!2269359 () Bool)

(declare-fun tail!3273 (List!27078) List!27078)

(assert (=> b!2269359 (= e!1453505 (isPrefix!2291 (tail!3273 otherP!12) (tail!3273 input!1722)))))

(assert (= (and d!671746 (not res!970273)) b!2269357))

(assert (= (and b!2269357 res!970272) b!2269358))

(assert (= (and b!2269358 res!970275) b!2269359))

(assert (= (and d!671746 (not res!970274)) b!2269360))

(declare-fun m!2698267 () Bool)

(assert (=> b!2269360 m!2698267))

(assert (=> b!2269360 m!2698031))

(declare-fun m!2698269 () Bool)

(assert (=> b!2269358 m!2698269))

(declare-fun m!2698271 () Bool)

(assert (=> b!2269358 m!2698271))

(declare-fun m!2698273 () Bool)

(assert (=> b!2269359 m!2698273))

(declare-fun m!2698275 () Bool)

(assert (=> b!2269359 m!2698275))

(assert (=> b!2269359 m!2698273))

(assert (=> b!2269359 m!2698275))

(declare-fun m!2698277 () Bool)

(assert (=> b!2269359 m!2698277))

(assert (=> b!2269128 d!671746))

(declare-fun d!671748 () Bool)

(assert (=> d!671748 (= (inv!36530 (tag!4791 r!2363)) (= (mod (str.len (value!136397 (tag!4791 r!2363))) 2) 0))))

(assert (=> b!2269127 d!671748))

(declare-fun d!671750 () Bool)

(declare-fun res!970276 () Bool)

(declare-fun e!1453507 () Bool)

(assert (=> d!671750 (=> (not res!970276) (not e!1453507))))

(assert (=> d!671750 (= res!970276 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 r!2363))))))

(assert (=> d!671750 (= (inv!36533 (transformation!4301 r!2363)) e!1453507)))

(declare-fun b!2269361 () Bool)

(assert (=> b!2269361 (= e!1453507 (equivClasses!1651 (toChars!5918 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 r!2363))))))

(assert (= (and d!671750 res!970276) b!2269361))

(declare-fun m!2698279 () Bool)

(assert (=> d!671750 m!2698279))

(declare-fun m!2698281 () Bool)

(assert (=> b!2269361 m!2698281))

(assert (=> b!2269127 d!671750))

(declare-fun d!671752 () Bool)

(assert (=> d!671752 (= (inv!36530 (tag!4791 otherR!12)) (= (mod (str.len (value!136397 (tag!4791 otherR!12))) 2) 0))))

(assert (=> b!2269126 d!671752))

(declare-fun d!671754 () Bool)

(declare-fun res!970277 () Bool)

(declare-fun e!1453508 () Bool)

(assert (=> d!671754 (=> (not res!970277) (not e!1453508))))

(assert (=> d!671754 (= res!970277 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 otherR!12)) (toValue!6059 (transformation!4301 otherR!12))))))

(assert (=> d!671754 (= (inv!36533 (transformation!4301 otherR!12)) e!1453508)))

(declare-fun b!2269362 () Bool)

(assert (=> b!2269362 (= e!1453508 (equivClasses!1651 (toChars!5918 (transformation!4301 otherR!12)) (toValue!6059 (transformation!4301 otherR!12))))))

(assert (= (and d!671754 res!970277) b!2269362))

(declare-fun m!2698283 () Bool)

(assert (=> d!671754 m!2698283))

(declare-fun m!2698285 () Bool)

(assert (=> b!2269362 m!2698285))

(assert (=> b!2269126 d!671754))

(declare-fun d!671756 () Bool)

(assert (=> d!671756 (= (inv!36530 (tag!4791 (h!32386 rules!1750))) (= (mod (str.len (value!136397 (tag!4791 (h!32386 rules!1750)))) 2) 0))))

(assert (=> b!2269115 d!671756))

(declare-fun d!671758 () Bool)

(declare-fun res!970278 () Bool)

(declare-fun e!1453509 () Bool)

(assert (=> d!671758 (=> (not res!970278) (not e!1453509))))

(assert (=> d!671758 (= res!970278 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 (h!32386 rules!1750)))))))

(assert (=> d!671758 (= (inv!36533 (transformation!4301 (h!32386 rules!1750))) e!1453509)))

(declare-fun b!2269363 () Bool)

(assert (=> b!2269363 (= e!1453509 (equivClasses!1651 (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 (h!32386 rules!1750)))))))

(assert (= (and d!671758 res!970278) b!2269363))

(declare-fun m!2698287 () Bool)

(assert (=> d!671758 m!2698287))

(declare-fun m!2698289 () Bool)

(assert (=> b!2269363 m!2698289))

(assert (=> b!2269115 d!671758))

(declare-fun b!2269368 () Bool)

(declare-fun e!1453512 () Bool)

(declare-fun tp!718241 () Bool)

(assert (=> b!2269368 (= e!1453512 (and tp_is_empty!10519 tp!718241))))

(assert (=> b!2269125 (= tp!718156 e!1453512)))

(assert (= (and b!2269125 ((_ is Cons!26984) (t!202386 suffix!886))) b!2269368))

(declare-fun b!2269379 () Bool)

(declare-fun e!1453515 () Bool)

(assert (=> b!2269379 (= e!1453515 tp_is_empty!10519)))

(declare-fun b!2269381 () Bool)

(declare-fun tp!718255 () Bool)

(assert (=> b!2269381 (= e!1453515 tp!718255)))

(declare-fun b!2269382 () Bool)

(declare-fun tp!718252 () Bool)

(declare-fun tp!718253 () Bool)

(assert (=> b!2269382 (= e!1453515 (and tp!718252 tp!718253))))

(assert (=> b!2269113 (= tp!718165 e!1453515)))

(declare-fun b!2269380 () Bool)

(declare-fun tp!718256 () Bool)

(declare-fun tp!718254 () Bool)

(assert (=> b!2269380 (= e!1453515 (and tp!718256 tp!718254))))

(assert (= (and b!2269113 ((_ is ElementMatch!6649) (regex!4301 (rule!6619 (h!32387 tokens!456))))) b!2269379))

(assert (= (and b!2269113 ((_ is Concat!11113) (regex!4301 (rule!6619 (h!32387 tokens!456))))) b!2269380))

(assert (= (and b!2269113 ((_ is Star!6649) (regex!4301 (rule!6619 (h!32387 tokens!456))))) b!2269381))

(assert (= (and b!2269113 ((_ is Union!6649) (regex!4301 (rule!6619 (h!32387 tokens!456))))) b!2269382))

(declare-fun b!2269393 () Bool)

(declare-fun b_free!67413 () Bool)

(declare-fun b_next!68117 () Bool)

(assert (=> b!2269393 (= b_free!67413 (not b_next!68117))))

(declare-fun tp!718266 () Bool)

(declare-fun b_and!178777 () Bool)

(assert (=> b!2269393 (= tp!718266 b_and!178777)))

(declare-fun b_free!67415 () Bool)

(declare-fun b_next!68119 () Bool)

(assert (=> b!2269393 (= b_free!67415 (not b_next!68119))))

(declare-fun t!202431 () Bool)

(declare-fun tb!134647 () Bool)

(assert (=> (and b!2269393 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202431) tb!134647))

(declare-fun result!164172 () Bool)

(assert (= result!164172 result!164114))

(assert (=> d!671678 t!202431))

(declare-fun tb!134649 () Bool)

(declare-fun t!202433 () Bool)

(assert (=> (and b!2269393 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202433) tb!134649))

(declare-fun result!164174 () Bool)

(assert (= result!164174 result!164158))

(assert (=> b!2269346 t!202433))

(declare-fun b_and!178779 () Bool)

(declare-fun tp!718267 () Bool)

(assert (=> b!2269393 (= tp!718267 (and (=> t!202431 result!164172) (=> t!202433 result!164174) b_and!178779))))

(declare-fun e!1453526 () Bool)

(assert (=> b!2269393 (= e!1453526 (and tp!718266 tp!718267))))

(declare-fun tp!718268 () Bool)

(declare-fun b!2269392 () Bool)

(declare-fun e!1453527 () Bool)

(assert (=> b!2269392 (= e!1453527 (and tp!718268 (inv!36530 (tag!4791 (h!32386 (t!202387 rules!1750)))) (inv!36533 (transformation!4301 (h!32386 (t!202387 rules!1750)))) e!1453526))))

(declare-fun b!2269391 () Bool)

(declare-fun e!1453525 () Bool)

(declare-fun tp!718265 () Bool)

(assert (=> b!2269391 (= e!1453525 (and e!1453527 tp!718265))))

(assert (=> b!2269133 (= tp!718157 e!1453525)))

(assert (= b!2269392 b!2269393))

(assert (= b!2269391 b!2269392))

(assert (= (and b!2269133 ((_ is Cons!26985) (t!202387 rules!1750))) b!2269391))

(declare-fun m!2698291 () Bool)

(assert (=> b!2269392 m!2698291))

(declare-fun m!2698293 () Bool)

(assert (=> b!2269392 m!2698293))

(declare-fun b!2269394 () Bool)

(declare-fun e!1453528 () Bool)

(declare-fun tp!718269 () Bool)

(assert (=> b!2269394 (= e!1453528 (and tp_is_empty!10519 tp!718269))))

(assert (=> b!2269132 (= tp!718152 e!1453528)))

(assert (= (and b!2269132 ((_ is Cons!26984) (t!202386 input!1722))) b!2269394))

(declare-fun b!2269395 () Bool)

(declare-fun e!1453529 () Bool)

(declare-fun tp!718270 () Bool)

(assert (=> b!2269395 (= e!1453529 (and tp_is_empty!10519 tp!718270))))

(assert (=> b!2269131 (= tp!718155 e!1453529)))

(assert (= (and b!2269131 ((_ is Cons!26984) (originalCharacters!5071 (h!32387 tokens!456)))) b!2269395))

(declare-fun b!2269396 () Bool)

(declare-fun e!1453530 () Bool)

(declare-fun tp!718271 () Bool)

(assert (=> b!2269396 (= e!1453530 (and tp_is_empty!10519 tp!718271))))

(assert (=> b!2269119 (= tp!718164 e!1453530)))

(assert (= (and b!2269119 ((_ is Cons!26984) (t!202386 otherP!12))) b!2269396))

(declare-fun b!2269410 () Bool)

(declare-fun b_free!67417 () Bool)

(declare-fun b_next!68121 () Bool)

(assert (=> b!2269410 (= b_free!67417 (not b_next!68121))))

(declare-fun tp!718285 () Bool)

(declare-fun b_and!178781 () Bool)

(assert (=> b!2269410 (= tp!718285 b_and!178781)))

(declare-fun b_free!67419 () Bool)

(declare-fun b_next!68123 () Bool)

(assert (=> b!2269410 (= b_free!67419 (not b_next!68123))))

(declare-fun t!202435 () Bool)

(declare-fun tb!134651 () Bool)

(assert (=> (and b!2269410 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202435) tb!134651))

(declare-fun result!164178 () Bool)

(assert (= result!164178 result!164114))

(assert (=> d!671678 t!202435))

(declare-fun t!202437 () Bool)

(declare-fun tb!134653 () Bool)

(assert (=> (and b!2269410 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202437) tb!134653))

(declare-fun result!164180 () Bool)

(assert (= result!164180 result!164158))

(assert (=> b!2269346 t!202437))

(declare-fun b_and!178783 () Bool)

(declare-fun tp!718286 () Bool)

(assert (=> b!2269410 (= tp!718286 (and (=> t!202435 result!164178) (=> t!202437 result!164180) b_and!178783))))

(declare-fun e!1453545 () Bool)

(declare-fun b!2269409 () Bool)

(declare-fun tp!718283 () Bool)

(declare-fun e!1453543 () Bool)

(assert (=> b!2269409 (= e!1453543 (and tp!718283 (inv!36530 (tag!4791 (rule!6619 (h!32387 (t!202388 tokens!456))))) (inv!36533 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) e!1453545))))

(declare-fun e!1453544 () Bool)

(declare-fun b!2269407 () Bool)

(declare-fun tp!718284 () Bool)

(declare-fun e!1453546 () Bool)

(assert (=> b!2269407 (= e!1453544 (and (inv!36534 (h!32387 (t!202388 tokens!456))) e!1453546 tp!718284))))

(declare-fun b!2269408 () Bool)

(declare-fun tp!718282 () Bool)

(assert (=> b!2269408 (= e!1453546 (and (inv!21 (value!136398 (h!32387 (t!202388 tokens!456)))) e!1453543 tp!718282))))

(assert (=> b!2269410 (= e!1453545 (and tp!718285 tp!718286))))

(assert (=> b!2269118 (= tp!718161 e!1453544)))

(assert (= b!2269409 b!2269410))

(assert (= b!2269408 b!2269409))

(assert (= b!2269407 b!2269408))

(assert (= (and b!2269118 ((_ is Cons!26986) (t!202388 tokens!456))) b!2269407))

(declare-fun m!2698295 () Bool)

(assert (=> b!2269409 m!2698295))

(declare-fun m!2698297 () Bool)

(assert (=> b!2269409 m!2698297))

(declare-fun m!2698299 () Bool)

(assert (=> b!2269407 m!2698299))

(declare-fun m!2698301 () Bool)

(assert (=> b!2269408 m!2698301))

(declare-fun b!2269411 () Bool)

(declare-fun e!1453549 () Bool)

(assert (=> b!2269411 (= e!1453549 tp_is_empty!10519)))

(declare-fun b!2269413 () Bool)

(declare-fun tp!718290 () Bool)

(assert (=> b!2269413 (= e!1453549 tp!718290)))

(declare-fun b!2269414 () Bool)

(declare-fun tp!718287 () Bool)

(declare-fun tp!718288 () Bool)

(assert (=> b!2269414 (= e!1453549 (and tp!718287 tp!718288))))

(assert (=> b!2269127 (= tp!718166 e!1453549)))

(declare-fun b!2269412 () Bool)

(declare-fun tp!718291 () Bool)

(declare-fun tp!718289 () Bool)

(assert (=> b!2269412 (= e!1453549 (and tp!718291 tp!718289))))

(assert (= (and b!2269127 ((_ is ElementMatch!6649) (regex!4301 r!2363))) b!2269411))

(assert (= (and b!2269127 ((_ is Concat!11113) (regex!4301 r!2363))) b!2269412))

(assert (= (and b!2269127 ((_ is Star!6649) (regex!4301 r!2363))) b!2269413))

(assert (= (and b!2269127 ((_ is Union!6649) (regex!4301 r!2363))) b!2269414))

(declare-fun b!2269415 () Bool)

(declare-fun e!1453550 () Bool)

(assert (=> b!2269415 (= e!1453550 tp_is_empty!10519)))

(declare-fun b!2269417 () Bool)

(declare-fun tp!718295 () Bool)

(assert (=> b!2269417 (= e!1453550 tp!718295)))

(declare-fun b!2269418 () Bool)

(declare-fun tp!718292 () Bool)

(declare-fun tp!718293 () Bool)

(assert (=> b!2269418 (= e!1453550 (and tp!718292 tp!718293))))

(assert (=> b!2269126 (= tp!718162 e!1453550)))

(declare-fun b!2269416 () Bool)

(declare-fun tp!718296 () Bool)

(declare-fun tp!718294 () Bool)

(assert (=> b!2269416 (= e!1453550 (and tp!718296 tp!718294))))

(assert (= (and b!2269126 ((_ is ElementMatch!6649) (regex!4301 otherR!12))) b!2269415))

(assert (= (and b!2269126 ((_ is Concat!11113) (regex!4301 otherR!12))) b!2269416))

(assert (= (and b!2269126 ((_ is Star!6649) (regex!4301 otherR!12))) b!2269417))

(assert (= (and b!2269126 ((_ is Union!6649) (regex!4301 otherR!12))) b!2269418))

(declare-fun b!2269419 () Bool)

(declare-fun e!1453551 () Bool)

(assert (=> b!2269419 (= e!1453551 tp_is_empty!10519)))

(declare-fun b!2269421 () Bool)

(declare-fun tp!718300 () Bool)

(assert (=> b!2269421 (= e!1453551 tp!718300)))

(declare-fun b!2269422 () Bool)

(declare-fun tp!718297 () Bool)

(declare-fun tp!718298 () Bool)

(assert (=> b!2269422 (= e!1453551 (and tp!718297 tp!718298))))

(assert (=> b!2269115 (= tp!718159 e!1453551)))

(declare-fun b!2269420 () Bool)

(declare-fun tp!718301 () Bool)

(declare-fun tp!718299 () Bool)

(assert (=> b!2269420 (= e!1453551 (and tp!718301 tp!718299))))

(assert (= (and b!2269115 ((_ is ElementMatch!6649) (regex!4301 (h!32386 rules!1750)))) b!2269419))

(assert (= (and b!2269115 ((_ is Concat!11113) (regex!4301 (h!32386 rules!1750)))) b!2269420))

(assert (= (and b!2269115 ((_ is Star!6649) (regex!4301 (h!32386 rules!1750)))) b!2269421))

(assert (= (and b!2269115 ((_ is Union!6649) (regex!4301 (h!32386 rules!1750)))) b!2269422))

(declare-fun b_lambda!72323 () Bool)

(assert (= b_lambda!72321 (or (and b!2269123 b_free!67395 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (and b!2269393 b_free!67415 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (and b!2269117 b_free!67403 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (and b!2269410 b_free!67419 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (and b!2269134 b_free!67391 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (and b!2269116 b_free!67399) b_lambda!72323)))

(check-sat (not b!2269396) (not b!2269391) (not b!2269421) (not b!2269418) (not b!2269414) (not b!2269363) (not b!2269336) (not b_next!68099) (not d!671744) b_and!178769 (not d!671686) (not d!671736) (not d!671758) (not b!2269361) (not b!2269346) (not d!671720) (not b_next!68097) (not b_next!68123) (not b!2269417) (not b!2269362) b_and!178775 b_and!178773 (not b!2269407) (not b!2269394) (not b!2269368) (not b!2269320) (not d!671754) (not d!671712) (not b_next!68105) (not d!671742) b_and!178771 b_and!178783 (not d!671660) (not b!2269416) (not b!2269382) (not b_next!68095) (not b!2269140) (not b_next!68101) (not b_lambda!72323) (not tb!134639) (not b!2269339) (not b!2269409) b_and!178725 (not b!2269408) (not b!2269381) (not d!671672) (not b!2269392) (not b!2269420) b_and!178779 (not tb!134607) b_and!178729 (not b!2269412) (not b_next!68103) (not b_next!68121) (not b!2269148) tp_is_empty!10519 (not d!671662) (not b!2269360) (not b_next!68119) (not b!2269348) (not b!2269413) (not b!2269347) (not b!2269341) b_and!178733 (not b!2269323) (not d!671714) (not b!2269324) b_and!178777 b_and!178781 (not b!2269380) (not b!2269422) (not b_next!68117) (not b_next!68093) (not b_lambda!72313) (not d!671750) (not b!2269208) b_and!178721 (not b!2269358) (not b!2269164) (not b!2269143) (not b!2269209) (not d!671666) (not b!2269158) (not d!671678) (not b!2269337) (not b!2269395) (not b_next!68107) (not b!2269322) (not b!2269359))
(check-sat (not b_next!68099) b_and!178769 b_and!178775 b_and!178773 b_and!178783 b_and!178725 b_and!178779 b_and!178729 (not b_next!68103) (not b_next!68121) (not b_next!68119) b_and!178733 b_and!178777 b_and!178781 b_and!178721 (not b_next!68107) (not b_next!68097) (not b_next!68123) (not b_next!68105) b_and!178771 (not b_next!68095) (not b_next!68101) (not b_next!68117) (not b_next!68093))
(get-model)

(declare-fun d!671760 () Bool)

(declare-fun res!970286 () Bool)

(declare-fun e!1453556 () Bool)

(assert (=> d!671760 (=> res!970286 e!1453556)))

(assert (=> d!671760 (= res!970286 ((_ is Nil!26985) rules!1750))))

(assert (=> d!671760 (= (noDuplicateTag!1574 thiss!16613 rules!1750 Nil!26988) e!1453556)))

(declare-fun b!2269427 () Bool)

(declare-fun e!1453557 () Bool)

(assert (=> b!2269427 (= e!1453556 e!1453557)))

(declare-fun res!970287 () Bool)

(assert (=> b!2269427 (=> (not res!970287) (not e!1453557))))

(declare-fun contains!4662 (List!27082 String!29419) Bool)

(assert (=> b!2269427 (= res!970287 (not (contains!4662 Nil!26988 (tag!4791 (h!32386 rules!1750)))))))

(declare-fun b!2269428 () Bool)

(assert (=> b!2269428 (= e!1453557 (noDuplicateTag!1574 thiss!16613 (t!202387 rules!1750) (Cons!26988 (tag!4791 (h!32386 rules!1750)) Nil!26988)))))

(assert (= (and d!671760 (not res!970286)) b!2269427))

(assert (= (and b!2269427 res!970287) b!2269428))

(declare-fun m!2698303 () Bool)

(assert (=> b!2269427 m!2698303))

(declare-fun m!2698305 () Bool)

(assert (=> b!2269428 m!2698305))

(assert (=> b!2269143 d!671760))

(declare-fun d!671762 () Bool)

(assert (=> d!671762 true))

(declare-fun lambda!85434 () Int)

(declare-fun order!15033 () Int)

(declare-fun order!15035 () Int)

(declare-fun dynLambda!11692 (Int Int) Int)

(declare-fun dynLambda!11693 (Int Int) Int)

(assert (=> d!671762 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 otherR!12))) (dynLambda!11693 order!15035 lambda!85434))))

(declare-fun Forall2!691 (Int) Bool)

(assert (=> d!671762 (= (equivClasses!1651 (toChars!5918 (transformation!4301 otherR!12)) (toValue!6059 (transformation!4301 otherR!12))) (Forall2!691 lambda!85434))))

(declare-fun bs!455856 () Bool)

(assert (= bs!455856 d!671762))

(declare-fun m!2698307 () Bool)

(assert (=> bs!455856 m!2698307))

(assert (=> b!2269362 d!671762))

(declare-fun b!2269433 () Bool)

(declare-fun res!970291 () Bool)

(declare-fun e!1453562 () Bool)

(assert (=> b!2269433 (=> res!970291 e!1453562)))

(assert (=> b!2269433 (= res!970291 (not ((_ is IntegerValue!13391) (value!136398 (h!32387 (t!202388 tokens!456))))))))

(declare-fun e!1453561 () Bool)

(assert (=> b!2269433 (= e!1453561 e!1453562)))

(declare-fun b!2269434 () Bool)

(assert (=> b!2269434 (= e!1453561 (inv!17 (value!136398 (h!32387 (t!202388 tokens!456)))))))

(declare-fun b!2269435 () Bool)

(assert (=> b!2269435 (= e!1453562 (inv!15 (value!136398 (h!32387 (t!202388 tokens!456)))))))

(declare-fun d!671764 () Bool)

(declare-fun c!360323 () Bool)

(assert (=> d!671764 (= c!360323 ((_ is IntegerValue!13389) (value!136398 (h!32387 (t!202388 tokens!456)))))))

(declare-fun e!1453560 () Bool)

(assert (=> d!671764 (= (inv!21 (value!136398 (h!32387 (t!202388 tokens!456)))) e!1453560)))

(declare-fun b!2269436 () Bool)

(assert (=> b!2269436 (= e!1453560 e!1453561)))

(declare-fun c!360324 () Bool)

(assert (=> b!2269436 (= c!360324 ((_ is IntegerValue!13390) (value!136398 (h!32387 (t!202388 tokens!456)))))))

(declare-fun b!2269437 () Bool)

(assert (=> b!2269437 (= e!1453560 (inv!16 (value!136398 (h!32387 (t!202388 tokens!456)))))))

(assert (= (and d!671764 c!360323) b!2269437))

(assert (= (and d!671764 (not c!360323)) b!2269436))

(assert (= (and b!2269436 c!360324) b!2269434))

(assert (= (and b!2269436 (not c!360324)) b!2269433))

(assert (= (and b!2269433 (not res!970291)) b!2269435))

(declare-fun m!2698309 () Bool)

(assert (=> b!2269434 m!2698309))

(declare-fun m!2698311 () Bool)

(assert (=> b!2269435 m!2698311))

(declare-fun m!2698313 () Bool)

(assert (=> b!2269437 m!2698313))

(assert (=> b!2269408 d!671764))

(declare-fun d!671766 () Bool)

(assert (=> d!671766 (= (inv!36530 (tag!4791 (rule!6619 (h!32387 (t!202388 tokens!456))))) (= (mod (str.len (value!136397 (tag!4791 (rule!6619 (h!32387 (t!202388 tokens!456)))))) 2) 0))))

(assert (=> b!2269409 d!671766))

(declare-fun d!671768 () Bool)

(declare-fun res!970293 () Bool)

(declare-fun e!1453563 () Bool)

(assert (=> d!671768 (=> (not res!970293) (not e!1453563))))

(assert (=> d!671768 (= res!970293 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))))))

(assert (=> d!671768 (= (inv!36533 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) e!1453563)))

(declare-fun b!2269438 () Bool)

(assert (=> b!2269438 (= e!1453563 (equivClasses!1651 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))))))

(assert (= (and d!671768 res!970293) b!2269438))

(declare-fun m!2698315 () Bool)

(assert (=> d!671768 m!2698315))

(declare-fun m!2698317 () Bool)

(assert (=> b!2269438 m!2698317))

(assert (=> b!2269409 d!671768))

(declare-fun d!671770 () Bool)

(declare-fun lt!843091 () Int)

(assert (=> d!671770 (>= lt!843091 0)))

(declare-fun e!1453564 () Int)

(assert (=> d!671770 (= lt!843091 e!1453564)))

(declare-fun c!360325 () Bool)

(assert (=> d!671770 (= c!360325 ((_ is Nil!26984) (list!10450 (charsOf!2689 (head!4892 tokens!456)))))))

(assert (=> d!671770 (= (size!21174 (list!10450 (charsOf!2689 (head!4892 tokens!456)))) lt!843091)))

(declare-fun b!2269439 () Bool)

(assert (=> b!2269439 (= e!1453564 0)))

(declare-fun b!2269440 () Bool)

(assert (=> b!2269440 (= e!1453564 (+ 1 (size!21174 (t!202386 (list!10450 (charsOf!2689 (head!4892 tokens!456)))))))))

(assert (= (and d!671770 c!360325) b!2269439))

(assert (= (and d!671770 (not c!360325)) b!2269440))

(declare-fun m!2698319 () Bool)

(assert (=> b!2269440 m!2698319))

(assert (=> d!671672 d!671770))

(declare-fun d!671772 () Bool)

(assert (=> d!671772 (= (list!10450 (charsOf!2689 (head!4892 tokens!456))) (list!10454 (c!360296 (charsOf!2689 (head!4892 tokens!456)))))))

(declare-fun bs!455857 () Bool)

(assert (= bs!455857 d!671772))

(declare-fun m!2698321 () Bool)

(assert (=> bs!455857 m!2698321))

(assert (=> d!671672 d!671772))

(declare-fun d!671774 () Bool)

(declare-fun lt!843094 () Int)

(assert (=> d!671774 (= lt!843094 (size!21174 (list!10454 (c!360296 (charsOf!2689 (head!4892 tokens!456))))))))

(assert (=> d!671774 (= lt!843094 (ite ((_ is Empty!8750) (c!360296 (charsOf!2689 (head!4892 tokens!456)))) 0 (ite ((_ is Leaf!12886) (c!360296 (charsOf!2689 (head!4892 tokens!456)))) (csize!17731 (c!360296 (charsOf!2689 (head!4892 tokens!456)))) (csize!17730 (c!360296 (charsOf!2689 (head!4892 tokens!456)))))))))

(assert (=> d!671774 (= (size!21177 (c!360296 (charsOf!2689 (head!4892 tokens!456)))) lt!843094)))

(declare-fun bs!455858 () Bool)

(assert (= bs!455858 d!671774))

(assert (=> bs!455858 m!2698321))

(assert (=> bs!455858 m!2698321))

(declare-fun m!2698323 () Bool)

(assert (=> bs!455858 m!2698323))

(assert (=> d!671672 d!671774))

(declare-fun bs!455859 () Bool)

(declare-fun d!671776 () Bool)

(assert (= bs!455859 (and d!671776 d!671686)))

(declare-fun lambda!85435 () Int)

(assert (=> bs!455859 (= lambda!85435 lambda!85431)))

(assert (=> d!671776 true))

(declare-fun lt!843095 () Bool)

(assert (=> d!671776 (= lt!843095 (forall!5478 (t!202387 rules!1750) lambda!85435))))

(declare-fun e!1453566 () Bool)

(assert (=> d!671776 (= lt!843095 e!1453566)))

(declare-fun res!970295 () Bool)

(assert (=> d!671776 (=> res!970295 e!1453566)))

(assert (=> d!671776 (= res!970295 (not ((_ is Cons!26985) (t!202387 rules!1750))))))

(assert (=> d!671776 (= (rulesValidInductive!1501 thiss!16613 (t!202387 rules!1750)) lt!843095)))

(declare-fun b!2269441 () Bool)

(declare-fun e!1453565 () Bool)

(assert (=> b!2269441 (= e!1453566 e!1453565)))

(declare-fun res!970294 () Bool)

(assert (=> b!2269441 (=> (not res!970294) (not e!1453565))))

(assert (=> b!2269441 (= res!970294 (ruleValid!1391 thiss!16613 (h!32386 (t!202387 rules!1750))))))

(declare-fun b!2269442 () Bool)

(assert (=> b!2269442 (= e!1453565 (rulesValidInductive!1501 thiss!16613 (t!202387 (t!202387 rules!1750))))))

(assert (= (and d!671776 (not res!970295)) b!2269441))

(assert (= (and b!2269441 res!970294) b!2269442))

(declare-fun m!2698325 () Bool)

(assert (=> d!671776 m!2698325))

(declare-fun m!2698327 () Bool)

(assert (=> b!2269441 m!2698327))

(declare-fun m!2698329 () Bool)

(assert (=> b!2269442 m!2698329))

(assert (=> b!2269209 d!671776))

(declare-fun d!671778 () Bool)

(declare-fun res!970296 () Bool)

(declare-fun e!1453567 () Bool)

(assert (=> d!671778 (=> (not res!970296) (not e!1453567))))

(assert (=> d!671778 (= res!970296 (not (isEmpty!15282 (originalCharacters!5071 (h!32387 (t!202388 tokens!456))))))))

(assert (=> d!671778 (= (inv!36534 (h!32387 (t!202388 tokens!456))) e!1453567)))

(declare-fun b!2269443 () Bool)

(declare-fun res!970297 () Bool)

(assert (=> b!2269443 (=> (not res!970297) (not e!1453567))))

(assert (=> b!2269443 (= res!970297 (= (originalCharacters!5071 (h!32387 (t!202388 tokens!456))) (list!10450 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (value!136398 (h!32387 (t!202388 tokens!456)))))))))

(declare-fun b!2269444 () Bool)

(assert (=> b!2269444 (= e!1453567 (= (size!21172 (h!32387 (t!202388 tokens!456))) (size!21174 (originalCharacters!5071 (h!32387 (t!202388 tokens!456))))))))

(assert (= (and d!671778 res!970296) b!2269443))

(assert (= (and b!2269443 res!970297) b!2269444))

(declare-fun b_lambda!72325 () Bool)

(assert (=> (not b_lambda!72325) (not b!2269443)))

(declare-fun t!202441 () Bool)

(declare-fun tb!134655 () Bool)

(assert (=> (and b!2269134 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202441) tb!134655))

(declare-fun b!2269445 () Bool)

(declare-fun e!1453568 () Bool)

(declare-fun tp!718302 () Bool)

(assert (=> b!2269445 (= e!1453568 (and (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (value!136398 (h!32387 (t!202388 tokens!456)))))) tp!718302))))

(declare-fun result!164182 () Bool)

(assert (=> tb!134655 (= result!164182 (and (inv!36538 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (value!136398 (h!32387 (t!202388 tokens!456))))) e!1453568))))

(assert (= tb!134655 b!2269445))

(declare-fun m!2698331 () Bool)

(assert (=> b!2269445 m!2698331))

(declare-fun m!2698333 () Bool)

(assert (=> tb!134655 m!2698333))

(assert (=> b!2269443 t!202441))

(declare-fun b_and!178785 () Bool)

(assert (= b_and!178769 (and (=> t!202441 result!164182) b_and!178785)))

(declare-fun tb!134657 () Bool)

(declare-fun t!202443 () Bool)

(assert (=> (and b!2269117 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202443) tb!134657))

(declare-fun result!164184 () Bool)

(assert (= result!164184 result!164182))

(assert (=> b!2269443 t!202443))

(declare-fun b_and!178787 () Bool)

(assert (= b_and!178775 (and (=> t!202443 result!164184) b_and!178787)))

(declare-fun t!202445 () Bool)

(declare-fun tb!134659 () Bool)

(assert (=> (and b!2269123 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202445) tb!134659))

(declare-fun result!164186 () Bool)

(assert (= result!164186 result!164182))

(assert (=> b!2269443 t!202445))

(declare-fun b_and!178789 () Bool)

(assert (= b_and!178771 (and (=> t!202445 result!164186) b_and!178789)))

(declare-fun t!202447 () Bool)

(declare-fun tb!134661 () Bool)

(assert (=> (and b!2269410 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202447) tb!134661))

(declare-fun result!164188 () Bool)

(assert (= result!164188 result!164182))

(assert (=> b!2269443 t!202447))

(declare-fun b_and!178791 () Bool)

(assert (= b_and!178783 (and (=> t!202447 result!164188) b_and!178791)))

(declare-fun tb!134663 () Bool)

(declare-fun t!202449 () Bool)

(assert (=> (and b!2269393 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202449) tb!134663))

(declare-fun result!164190 () Bool)

(assert (= result!164190 result!164182))

(assert (=> b!2269443 t!202449))

(declare-fun b_and!178793 () Bool)

(assert (= b_and!178779 (and (=> t!202449 result!164190) b_and!178793)))

(declare-fun t!202451 () Bool)

(declare-fun tb!134665 () Bool)

(assert (=> (and b!2269116 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202451) tb!134665))

(declare-fun result!164192 () Bool)

(assert (= result!164192 result!164182))

(assert (=> b!2269443 t!202451))

(declare-fun b_and!178795 () Bool)

(assert (= b_and!178773 (and (=> t!202451 result!164192) b_and!178795)))

(declare-fun m!2698335 () Bool)

(assert (=> d!671778 m!2698335))

(declare-fun m!2698337 () Bool)

(assert (=> b!2269443 m!2698337))

(assert (=> b!2269443 m!2698337))

(declare-fun m!2698339 () Bool)

(assert (=> b!2269443 m!2698339))

(declare-fun m!2698341 () Bool)

(assert (=> b!2269444 m!2698341))

(assert (=> b!2269407 d!671778))

(declare-fun d!671780 () Bool)

(assert (=> d!671780 true))

(declare-fun lambda!85438 () Int)

(declare-fun order!15037 () Int)

(declare-fun order!15039 () Int)

(declare-fun dynLambda!11694 (Int Int) Int)

(declare-fun dynLambda!11695 (Int Int) Int)

(assert (=> d!671780 (< (dynLambda!11694 order!15037 (toChars!5918 (transformation!4301 otherR!12))) (dynLambda!11695 order!15039 lambda!85438))))

(assert (=> d!671780 true))

(assert (=> d!671780 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 otherR!12))) (dynLambda!11695 order!15039 lambda!85438))))

(declare-fun Forall!1074 (Int) Bool)

(assert (=> d!671780 (= (semiInverseModEq!1732 (toChars!5918 (transformation!4301 otherR!12)) (toValue!6059 (transformation!4301 otherR!12))) (Forall!1074 lambda!85438))))

(declare-fun bs!455860 () Bool)

(assert (= bs!455860 d!671780))

(declare-fun m!2698343 () Bool)

(assert (=> bs!455860 m!2698343))

(assert (=> d!671754 d!671780))

(declare-fun d!671782 () Bool)

(declare-fun res!970302 () Bool)

(declare-fun e!1453571 () Bool)

(assert (=> d!671782 (=> (not res!970302) (not e!1453571))))

(declare-fun validRegex!2491 (Regex!6649) Bool)

(assert (=> d!671782 (= res!970302 (validRegex!2491 (regex!4301 (h!32386 rules!1750))))))

(assert (=> d!671782 (= (ruleValid!1391 thiss!16613 (h!32386 rules!1750)) e!1453571)))

(declare-fun b!2269454 () Bool)

(declare-fun res!970303 () Bool)

(assert (=> b!2269454 (=> (not res!970303) (not e!1453571))))

(declare-fun nullable!1829 (Regex!6649) Bool)

(assert (=> b!2269454 (= res!970303 (not (nullable!1829 (regex!4301 (h!32386 rules!1750)))))))

(declare-fun b!2269455 () Bool)

(assert (=> b!2269455 (= e!1453571 (not (= (tag!4791 (h!32386 rules!1750)) (String!29420 ""))))))

(assert (= (and d!671782 res!970302) b!2269454))

(assert (= (and b!2269454 res!970303) b!2269455))

(declare-fun m!2698345 () Bool)

(assert (=> d!671782 m!2698345))

(declare-fun m!2698347 () Bool)

(assert (=> b!2269454 m!2698347))

(assert (=> b!2269208 d!671782))

(declare-fun d!671784 () Bool)

(assert (=> d!671784 (= (inv!36530 (tag!4791 (h!32386 (t!202387 rules!1750)))) (= (mod (str.len (value!136397 (tag!4791 (h!32386 (t!202387 rules!1750))))) 2) 0))))

(assert (=> b!2269392 d!671784))

(declare-fun d!671788 () Bool)

(declare-fun res!970304 () Bool)

(declare-fun e!1453572 () Bool)

(assert (=> d!671788 (=> (not res!970304) (not e!1453572))))

(assert (=> d!671788 (= res!970304 (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toValue!6059 (transformation!4301 (h!32386 (t!202387 rules!1750))))))))

(assert (=> d!671788 (= (inv!36533 (transformation!4301 (h!32386 (t!202387 rules!1750)))) e!1453572)))

(declare-fun b!2269456 () Bool)

(assert (=> b!2269456 (= e!1453572 (equivClasses!1651 (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toValue!6059 (transformation!4301 (h!32386 (t!202387 rules!1750))))))))

(assert (= (and d!671788 res!970304) b!2269456))

(declare-fun m!2698349 () Bool)

(assert (=> d!671788 m!2698349))

(declare-fun m!2698351 () Bool)

(assert (=> b!2269456 m!2698351))

(assert (=> b!2269392 d!671788))

(declare-fun d!671790 () Bool)

(declare-fun c!360329 () Bool)

(assert (=> d!671790 (= c!360329 ((_ is Nil!26985) rules!1750))))

(declare-fun e!1453576 () (InoxSet Rule!8402))

(assert (=> d!671790 (= (content!3598 rules!1750) e!1453576)))

(declare-fun b!2269463 () Bool)

(assert (=> b!2269463 (= e!1453576 ((as const (Array Rule!8402 Bool)) false))))

(declare-fun b!2269464 () Bool)

(assert (=> b!2269464 (= e!1453576 ((_ map or) (store ((as const (Array Rule!8402 Bool)) false) (h!32386 rules!1750) true) (content!3598 (t!202387 rules!1750))))))

(assert (= (and d!671790 c!360329) b!2269463))

(assert (= (and d!671790 (not c!360329)) b!2269464))

(declare-fun m!2698357 () Bool)

(assert (=> b!2269464 m!2698357))

(declare-fun m!2698359 () Bool)

(assert (=> b!2269464 m!2698359))

(assert (=> d!671742 d!671790))

(declare-fun d!671796 () Bool)

(declare-fun c!360333 () Bool)

(assert (=> d!671796 (= c!360333 ((_ is Node!8750) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(declare-fun e!1453582 () Bool)

(assert (=> d!671796 (= (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))) e!1453582)))

(declare-fun b!2269473 () Bool)

(declare-fun inv!36539 (Conc!8750) Bool)

(assert (=> b!2269473 (= e!1453582 (inv!36539 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(declare-fun b!2269474 () Bool)

(declare-fun e!1453583 () Bool)

(assert (=> b!2269474 (= e!1453582 e!1453583)))

(declare-fun res!970307 () Bool)

(assert (=> b!2269474 (= res!970307 (not ((_ is Leaf!12886) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))))))

(assert (=> b!2269474 (=> res!970307 e!1453583)))

(declare-fun b!2269475 () Bool)

(declare-fun inv!36540 (Conc!8750) Bool)

(assert (=> b!2269475 (= e!1453583 (inv!36540 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(assert (= (and d!671796 c!360333) b!2269473))

(assert (= (and d!671796 (not c!360333)) b!2269474))

(assert (= (and b!2269474 (not res!970307)) b!2269475))

(declare-fun m!2698365 () Bool)

(assert (=> b!2269473 m!2698365))

(declare-fun m!2698367 () Bool)

(assert (=> b!2269475 m!2698367))

(assert (=> b!2269348 d!671796))

(declare-fun d!671802 () Bool)

(declare-fun isBalanced!2664 (Conc!8750) Bool)

(assert (=> d!671802 (= (inv!36538 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))) (isBalanced!2664 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))))))

(declare-fun bs!455865 () Bool)

(assert (= bs!455865 d!671802))

(declare-fun m!2698371 () Bool)

(assert (=> bs!455865 m!2698371))

(assert (=> tb!134607 d!671802))

(declare-fun d!671806 () Bool)

(declare-fun res!970312 () Bool)

(declare-fun e!1453588 () Bool)

(assert (=> d!671806 (=> res!970312 e!1453588)))

(assert (=> d!671806 (= res!970312 ((_ is Nil!26985) rules!1750))))

(assert (=> d!671806 (= (forall!5478 rules!1750 lambda!85431) e!1453588)))

(declare-fun b!2269482 () Bool)

(declare-fun e!1453589 () Bool)

(assert (=> b!2269482 (= e!1453588 e!1453589)))

(declare-fun res!970313 () Bool)

(assert (=> b!2269482 (=> (not res!970313) (not e!1453589))))

(declare-fun dynLambda!11699 (Int Rule!8402) Bool)

(assert (=> b!2269482 (= res!970313 (dynLambda!11699 lambda!85431 (h!32386 rules!1750)))))

(declare-fun b!2269483 () Bool)

(assert (=> b!2269483 (= e!1453589 (forall!5478 (t!202387 rules!1750) lambda!85431))))

(assert (= (and d!671806 (not res!970312)) b!2269482))

(assert (= (and b!2269482 res!970313) b!2269483))

(declare-fun b_lambda!72327 () Bool)

(assert (=> (not b_lambda!72327) (not b!2269482)))

(declare-fun m!2698375 () Bool)

(assert (=> b!2269482 m!2698375))

(declare-fun m!2698377 () Bool)

(assert (=> b!2269483 m!2698377))

(assert (=> d!671686 d!671806))

(declare-fun d!671810 () Bool)

(declare-fun lt!843105 () Bool)

(assert (=> d!671810 (= lt!843105 (select (content!3598 (t!202387 rules!1750)) r!2363))))

(declare-fun e!1453594 () Bool)

(assert (=> d!671810 (= lt!843105 e!1453594)))

(declare-fun res!970319 () Bool)

(assert (=> d!671810 (=> (not res!970319) (not e!1453594))))

(assert (=> d!671810 (= res!970319 ((_ is Cons!26985) (t!202387 rules!1750)))))

(assert (=> d!671810 (= (contains!4661 (t!202387 rules!1750) r!2363) lt!843105)))

(declare-fun b!2269490 () Bool)

(declare-fun e!1453593 () Bool)

(assert (=> b!2269490 (= e!1453594 e!1453593)))

(declare-fun res!970318 () Bool)

(assert (=> b!2269490 (=> res!970318 e!1453593)))

(assert (=> b!2269490 (= res!970318 (= (h!32386 (t!202387 rules!1750)) r!2363))))

(declare-fun b!2269491 () Bool)

(assert (=> b!2269491 (= e!1453593 (contains!4661 (t!202387 (t!202387 rules!1750)) r!2363))))

(assert (= (and d!671810 res!970319) b!2269490))

(assert (= (and b!2269490 (not res!970318)) b!2269491))

(assert (=> d!671810 m!2698359))

(declare-fun m!2698379 () Bool)

(assert (=> d!671810 m!2698379))

(declare-fun m!2698381 () Bool)

(assert (=> b!2269491 m!2698381))

(assert (=> b!2269140 d!671810))

(declare-fun bs!455867 () Bool)

(declare-fun d!671812 () Bool)

(assert (= bs!455867 (and d!671812 d!671762)))

(declare-fun lambda!85445 () Int)

(assert (=> bs!455867 (= (= (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 otherR!12))) (= lambda!85445 lambda!85434))))

(assert (=> d!671812 true))

(assert (=> d!671812 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (dynLambda!11693 order!15035 lambda!85445))))

(assert (=> d!671812 (= (equivClasses!1651 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (Forall2!691 lambda!85445))))

(declare-fun bs!455868 () Bool)

(assert (= bs!455868 d!671812))

(declare-fun m!2698397 () Bool)

(assert (=> bs!455868 m!2698397))

(assert (=> b!2269148 d!671812))

(declare-fun d!671820 () Bool)

(assert (=> d!671820 (= (inv!36538 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))) (isBalanced!2664 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(declare-fun bs!455869 () Bool)

(assert (= bs!455869 d!671820))

(declare-fun m!2698399 () Bool)

(assert (=> bs!455869 m!2698399))

(assert (=> tb!134639 d!671820))

(declare-fun d!671822 () Bool)

(declare-fun c!360334 () Bool)

(assert (=> d!671822 (= c!360334 ((_ is Node!8750) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))))))

(declare-fun e!1453595 () Bool)

(assert (=> d!671822 (= (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))) e!1453595)))

(declare-fun b!2269492 () Bool)

(assert (=> b!2269492 (= e!1453595 (inv!36539 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))))))

(declare-fun b!2269493 () Bool)

(declare-fun e!1453596 () Bool)

(assert (=> b!2269493 (= e!1453595 e!1453596)))

(declare-fun res!970320 () Bool)

(assert (=> b!2269493 (= res!970320 (not ((_ is Leaf!12886) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))))))

(assert (=> b!2269493 (=> res!970320 e!1453596)))

(declare-fun b!2269494 () Bool)

(assert (=> b!2269494 (= e!1453596 (inv!36540 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))))))

(assert (= (and d!671822 c!360334) b!2269492))

(assert (= (and d!671822 (not c!360334)) b!2269493))

(assert (= (and b!2269493 (not res!970320)) b!2269494))

(declare-fun m!2698401 () Bool)

(assert (=> b!2269492 m!2698401))

(declare-fun m!2698403 () Bool)

(assert (=> b!2269494 m!2698403))

(assert (=> b!2269158 d!671822))

(declare-fun d!671824 () Bool)

(declare-fun lt!843106 () Int)

(assert (=> d!671824 (>= lt!843106 0)))

(declare-fun e!1453597 () Int)

(assert (=> d!671824 (= lt!843106 e!1453597)))

(declare-fun c!360335 () Bool)

(assert (=> d!671824 (= c!360335 ((_ is Nil!26984) input!1722))))

(assert (=> d!671824 (= (size!21174 input!1722) lt!843106)))

(declare-fun b!2269495 () Bool)

(assert (=> b!2269495 (= e!1453597 0)))

(declare-fun b!2269496 () Bool)

(assert (=> b!2269496 (= e!1453597 (+ 1 (size!21174 (t!202386 input!1722))))))

(assert (= (and d!671824 c!360335) b!2269495))

(assert (= (and d!671824 (not c!360335)) b!2269496))

(declare-fun m!2698405 () Bool)

(assert (=> b!2269496 m!2698405))

(assert (=> b!2269360 d!671824))

(assert (=> b!2269360 d!671682))

(declare-fun d!671826 () Bool)

(declare-fun e!1453598 () Bool)

(assert (=> d!671826 e!1453598))

(declare-fun res!970323 () Bool)

(assert (=> d!671826 (=> res!970323 e!1453598)))

(declare-fun lt!843107 () Bool)

(assert (=> d!671826 (= res!970323 (not lt!843107))))

(declare-fun e!1453600 () Bool)

(assert (=> d!671826 (= lt!843107 e!1453600)))

(declare-fun res!970322 () Bool)

(assert (=> d!671826 (=> res!970322 e!1453600)))

(assert (=> d!671826 (= res!970322 ((_ is Nil!26984) (tail!3273 otherP!12)))))

(assert (=> d!671826 (= (isPrefix!2291 (tail!3273 otherP!12) (tail!3273 input!1722)) lt!843107)))

(declare-fun b!2269500 () Bool)

(assert (=> b!2269500 (= e!1453598 (>= (size!21174 (tail!3273 input!1722)) (size!21174 (tail!3273 otherP!12))))))

(declare-fun b!2269498 () Bool)

(declare-fun res!970324 () Bool)

(declare-fun e!1453599 () Bool)

(assert (=> b!2269498 (=> (not res!970324) (not e!1453599))))

(assert (=> b!2269498 (= res!970324 (= (head!4894 (tail!3273 otherP!12)) (head!4894 (tail!3273 input!1722))))))

(declare-fun b!2269497 () Bool)

(assert (=> b!2269497 (= e!1453600 e!1453599)))

(declare-fun res!970321 () Bool)

(assert (=> b!2269497 (=> (not res!970321) (not e!1453599))))

(assert (=> b!2269497 (= res!970321 (not ((_ is Nil!26984) (tail!3273 input!1722))))))

(declare-fun b!2269499 () Bool)

(assert (=> b!2269499 (= e!1453599 (isPrefix!2291 (tail!3273 (tail!3273 otherP!12)) (tail!3273 (tail!3273 input!1722))))))

(assert (= (and d!671826 (not res!970322)) b!2269497))

(assert (= (and b!2269497 res!970321) b!2269498))

(assert (= (and b!2269498 res!970324) b!2269499))

(assert (= (and d!671826 (not res!970323)) b!2269500))

(assert (=> b!2269500 m!2698275))

(declare-fun m!2698409 () Bool)

(assert (=> b!2269500 m!2698409))

(assert (=> b!2269500 m!2698273))

(declare-fun m!2698411 () Bool)

(assert (=> b!2269500 m!2698411))

(assert (=> b!2269498 m!2698273))

(declare-fun m!2698413 () Bool)

(assert (=> b!2269498 m!2698413))

(assert (=> b!2269498 m!2698275))

(declare-fun m!2698415 () Bool)

(assert (=> b!2269498 m!2698415))

(assert (=> b!2269499 m!2698273))

(declare-fun m!2698417 () Bool)

(assert (=> b!2269499 m!2698417))

(assert (=> b!2269499 m!2698275))

(declare-fun m!2698419 () Bool)

(assert (=> b!2269499 m!2698419))

(assert (=> b!2269499 m!2698417))

(assert (=> b!2269499 m!2698419))

(declare-fun m!2698421 () Bool)

(assert (=> b!2269499 m!2698421))

(assert (=> b!2269359 d!671826))

(declare-fun d!671830 () Bool)

(assert (=> d!671830 (= (tail!3273 otherP!12) (t!202386 otherP!12))))

(assert (=> b!2269359 d!671830))

(declare-fun d!671832 () Bool)

(assert (=> d!671832 (= (tail!3273 input!1722) (t!202386 input!1722))))

(assert (=> b!2269359 d!671832))

(assert (=> d!671660 d!671790))

(declare-fun bs!455871 () Bool)

(declare-fun d!671834 () Bool)

(assert (= bs!455871 (and d!671834 d!671762)))

(declare-fun lambda!85446 () Int)

(assert (=> bs!455871 (= (= (toValue!6059 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 otherR!12))) (= lambda!85446 lambda!85434))))

(declare-fun bs!455872 () Bool)

(assert (= bs!455872 (and d!671834 d!671812)))

(assert (=> bs!455872 (= (= (toValue!6059 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (= lambda!85446 lambda!85445))))

(assert (=> d!671834 true))

(assert (=> d!671834 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 (h!32386 rules!1750)))) (dynLambda!11693 order!15035 lambda!85446))))

(assert (=> d!671834 (= (equivClasses!1651 (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 (h!32386 rules!1750)))) (Forall2!691 lambda!85446))))

(declare-fun bs!455873 () Bool)

(assert (= bs!455873 d!671834))

(declare-fun m!2698423 () Bool)

(assert (=> bs!455873 m!2698423))

(assert (=> b!2269363 d!671834))

(declare-fun bs!455874 () Bool)

(declare-fun d!671836 () Bool)

(assert (= bs!455874 (and d!671836 d!671762)))

(declare-fun lambda!85447 () Int)

(assert (=> bs!455874 (= (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 otherR!12))) (= lambda!85447 lambda!85434))))

(declare-fun bs!455876 () Bool)

(assert (= bs!455876 (and d!671836 d!671812)))

(assert (=> bs!455876 (= (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (= lambda!85447 lambda!85445))))

(declare-fun bs!455877 () Bool)

(assert (= bs!455877 (and d!671836 d!671834)))

(assert (=> bs!455877 (= (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 (h!32386 rules!1750)))) (= lambda!85447 lambda!85446))))

(assert (=> d!671836 true))

(assert (=> d!671836 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 r!2363))) (dynLambda!11693 order!15035 lambda!85447))))

(assert (=> d!671836 (= (equivClasses!1651 (toChars!5918 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 r!2363))) (Forall2!691 lambda!85447))))

(declare-fun bs!455878 () Bool)

(assert (= bs!455878 d!671836))

(declare-fun m!2698429 () Bool)

(assert (=> bs!455878 m!2698429))

(assert (=> b!2269361 d!671836))

(declare-fun d!671840 () Bool)

(assert (=> d!671840 (= (isEmpty!15282 (originalCharacters!5071 (h!32387 tokens!456))) ((_ is Nil!26984) (originalCharacters!5071 (h!32387 tokens!456))))))

(assert (=> d!671744 d!671840))

(declare-fun b!2269519 () Bool)

(declare-fun e!1453610 () List!27078)

(declare-fun list!10456 (IArray!17505) List!27078)

(assert (=> b!2269519 (= e!1453610 (list!10456 (xs!11692 (c!360296 (_2!15832 lt!843046)))))))

(declare-fun b!2269520 () Bool)

(declare-fun ++!6575 (List!27078 List!27078) List!27078)

(assert (=> b!2269520 (= e!1453610 (++!6575 (list!10454 (left!20473 (c!360296 (_2!15832 lt!843046)))) (list!10454 (right!20803 (c!360296 (_2!15832 lt!843046))))))))

(declare-fun d!671844 () Bool)

(declare-fun c!360344 () Bool)

(assert (=> d!671844 (= c!360344 ((_ is Empty!8750) (c!360296 (_2!15832 lt!843046))))))

(declare-fun e!1453609 () List!27078)

(assert (=> d!671844 (= (list!10454 (c!360296 (_2!15832 lt!843046))) e!1453609)))

(declare-fun b!2269517 () Bool)

(assert (=> b!2269517 (= e!1453609 Nil!26984)))

(declare-fun b!2269518 () Bool)

(assert (=> b!2269518 (= e!1453609 e!1453610)))

(declare-fun c!360345 () Bool)

(assert (=> b!2269518 (= c!360345 ((_ is Leaf!12886) (c!360296 (_2!15832 lt!843046))))))

(assert (= (and d!671844 c!360344) b!2269517))

(assert (= (and d!671844 (not c!360344)) b!2269518))

(assert (= (and b!2269518 c!360345) b!2269519))

(assert (= (and b!2269518 (not c!360345)) b!2269520))

(declare-fun m!2698433 () Bool)

(assert (=> b!2269519 m!2698433))

(declare-fun m!2698435 () Bool)

(assert (=> b!2269520 m!2698435))

(declare-fun m!2698437 () Bool)

(assert (=> b!2269520 m!2698437))

(assert (=> b!2269520 m!2698435))

(assert (=> b!2269520 m!2698437))

(declare-fun m!2698443 () Bool)

(assert (=> b!2269520 m!2698443))

(assert (=> d!671714 d!671844))

(declare-fun d!671846 () Bool)

(assert (=> d!671846 (= (head!4894 otherP!12) (h!32385 otherP!12))))

(assert (=> b!2269358 d!671846))

(declare-fun d!671850 () Bool)

(assert (=> d!671850 (= (head!4894 input!1722) (h!32385 input!1722))))

(assert (=> b!2269358 d!671850))

(declare-fun d!671852 () Bool)

(declare-fun lt!843111 () Int)

(assert (=> d!671852 (>= lt!843111 0)))

(declare-fun e!1453613 () Int)

(assert (=> d!671852 (= lt!843111 e!1453613)))

(declare-fun c!360348 () Bool)

(assert (=> d!671852 (= c!360348 ((_ is Nil!26984) (t!202386 otherP!12)))))

(assert (=> d!671852 (= (size!21174 (t!202386 otherP!12)) lt!843111)))

(declare-fun b!2269525 () Bool)

(assert (=> b!2269525 (= e!1453613 0)))

(declare-fun b!2269526 () Bool)

(assert (=> b!2269526 (= e!1453613 (+ 1 (size!21174 (t!202386 (t!202386 otherP!12)))))))

(assert (= (and d!671852 c!360348) b!2269525))

(assert (= (and d!671852 (not c!360348)) b!2269526))

(declare-fun m!2698449 () Bool)

(assert (=> b!2269526 m!2698449))

(assert (=> b!2269164 d!671852))

(declare-fun b!2269539 () Bool)

(declare-fun e!1453621 () List!27080)

(assert (=> b!2269539 (= e!1453621 Nil!26986)))

(declare-fun d!671858 () Bool)

(declare-fun c!360355 () Bool)

(assert (=> d!671858 (= c!360355 ((_ is Empty!8751) (c!360298 (_1!15832 lt!843046))))))

(assert (=> d!671858 (= (list!10453 (c!360298 (_1!15832 lt!843046))) e!1453621)))

(declare-fun b!2269541 () Bool)

(declare-fun e!1453622 () List!27080)

(declare-fun list!10457 (IArray!17507) List!27080)

(assert (=> b!2269541 (= e!1453622 (list!10457 (xs!11693 (c!360298 (_1!15832 lt!843046)))))))

(declare-fun b!2269542 () Bool)

(declare-fun ++!6576 (List!27080 List!27080) List!27080)

(assert (=> b!2269542 (= e!1453622 (++!6576 (list!10453 (left!20474 (c!360298 (_1!15832 lt!843046)))) (list!10453 (right!20804 (c!360298 (_1!15832 lt!843046))))))))

(declare-fun b!2269540 () Bool)

(assert (=> b!2269540 (= e!1453621 e!1453622)))

(declare-fun c!360356 () Bool)

(assert (=> b!2269540 (= c!360356 ((_ is Leaf!12887) (c!360298 (_1!15832 lt!843046))))))

(assert (= (and d!671858 c!360355) b!2269539))

(assert (= (and d!671858 (not c!360355)) b!2269540))

(assert (= (and b!2269540 c!360356) b!2269541))

(assert (= (and b!2269540 (not c!360356)) b!2269542))

(declare-fun m!2698455 () Bool)

(assert (=> b!2269541 m!2698455))

(declare-fun m!2698457 () Bool)

(assert (=> b!2269542 m!2698457))

(declare-fun m!2698459 () Bool)

(assert (=> b!2269542 m!2698459))

(assert (=> b!2269542 m!2698457))

(assert (=> b!2269542 m!2698459))

(declare-fun m!2698461 () Bool)

(assert (=> b!2269542 m!2698461))

(assert (=> d!671712 d!671858))

(declare-fun bs!455883 () Bool)

(declare-fun d!671864 () Bool)

(assert (= bs!455883 (and d!671864 d!671780)))

(declare-fun lambda!85449 () Int)

(assert (=> bs!455883 (= (and (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 otherR!12))) (= (toValue!6059 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 otherR!12)))) (= lambda!85449 lambda!85438))))

(assert (=> d!671864 true))

(assert (=> d!671864 (< (dynLambda!11694 order!15037 (toChars!5918 (transformation!4301 (h!32386 rules!1750)))) (dynLambda!11695 order!15039 lambda!85449))))

(assert (=> d!671864 true))

(assert (=> d!671864 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 (h!32386 rules!1750)))) (dynLambda!11695 order!15039 lambda!85449))))

(assert (=> d!671864 (= (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toValue!6059 (transformation!4301 (h!32386 rules!1750)))) (Forall!1074 lambda!85449))))

(declare-fun bs!455884 () Bool)

(assert (= bs!455884 d!671864))

(declare-fun m!2698471 () Bool)

(assert (=> bs!455884 m!2698471))

(assert (=> d!671758 d!671864))

(declare-fun bs!455885 () Bool)

(declare-fun d!671870 () Bool)

(assert (= bs!455885 (and d!671870 d!671780)))

(declare-fun lambda!85450 () Int)

(assert (=> bs!455885 (= (and (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 otherR!12))) (= (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 otherR!12)))) (= lambda!85450 lambda!85438))))

(declare-fun bs!455886 () Bool)

(assert (= bs!455886 (and d!671870 d!671864)))

(assert (=> bs!455886 (= (and (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (h!32386 rules!1750)))) (= (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 (h!32386 rules!1750))))) (= lambda!85450 lambda!85449))))

(assert (=> d!671870 true))

(assert (=> d!671870 (< (dynLambda!11694 order!15037 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (dynLambda!11695 order!15039 lambda!85450))))

(assert (=> d!671870 true))

(assert (=> d!671870 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (dynLambda!11695 order!15039 lambda!85450))))

(assert (=> d!671870 (= (semiInverseModEq!1732 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (Forall!1074 lambda!85450))))

(declare-fun bs!455887 () Bool)

(assert (= bs!455887 d!671870))

(declare-fun m!2698473 () Bool)

(assert (=> bs!455887 m!2698473))

(assert (=> d!671666 d!671870))

(declare-fun d!671872 () Bool)

(declare-fun lt!843118 () Int)

(declare-fun size!21180 (List!27080) Int)

(assert (=> d!671872 (= lt!843118 (size!21180 (list!10449 (_1!15832 lt!843086))))))

(declare-fun size!21182 (Conc!8751) Int)

(assert (=> d!671872 (= lt!843118 (size!21182 (c!360298 (_1!15832 lt!843086))))))

(assert (=> d!671872 (= (size!21178 (_1!15832 lt!843086)) lt!843118)))

(declare-fun bs!455888 () Bool)

(assert (= bs!455888 d!671872))

(assert (=> bs!455888 m!2698237))

(assert (=> bs!455888 m!2698237))

(declare-fun m!2698475 () Bool)

(assert (=> bs!455888 m!2698475))

(declare-fun m!2698477 () Bool)

(assert (=> bs!455888 m!2698477))

(assert (=> d!671720 d!671872))

(declare-fun lt!843207 () tuple2!26644)

(declare-datatypes ((tuple2!26650 0))(
  ( (tuple2!26651 (_1!15835 Token!8080) (_2!15835 BalanceConc!17228)) )
))
(declare-datatypes ((Option!5279 0))(
  ( (None!5278) (Some!5278 (v!30324 tuple2!26650)) )
))
(declare-fun lt!843213 () Option!5279)

(declare-fun b!2269580 () Bool)

(declare-fun lexRec!525 (LexerInterface!3898 List!27079 BalanceConc!17228) tuple2!26644)

(assert (=> b!2269580 (= lt!843207 (lexRec!525 thiss!16613 rules!1750 (_2!15835 (v!30324 lt!843213))))))

(declare-fun e!1453647 () tuple2!26644)

(declare-fun prepend!994 (BalanceConc!17230 Token!8080) BalanceConc!17230)

(assert (=> b!2269580 (= e!1453647 (tuple2!26645 (prepend!994 (_1!15832 lt!843207) (_1!15835 (v!30324 lt!843213))) (_2!15832 lt!843207)))))

(declare-fun e!1453646 () Bool)

(declare-fun b!2269581 () Bool)

(declare-fun lt!843216 () tuple2!26644)

(assert (=> b!2269581 (= e!1453646 (= (list!10450 (_2!15832 lt!843216)) (list!10450 (_2!15832 (lexRec!525 thiss!16613 rules!1750 (seqFromList!3005 input!1722))))))))

(declare-fun d!671874 () Bool)

(assert (=> d!671874 e!1453646))

(declare-fun res!970336 () Bool)

(assert (=> d!671874 (=> (not res!970336) (not e!1453646))))

(assert (=> d!671874 (= res!970336 (= (list!10449 (_1!15832 lt!843216)) (list!10449 (_1!15832 (lexRec!525 thiss!16613 rules!1750 (seqFromList!3005 input!1722))))))))

(declare-fun e!1453648 () tuple2!26644)

(assert (=> d!671874 (= lt!843216 e!1453648)))

(declare-fun c!360371 () Bool)

(declare-fun lt!843209 () Option!5279)

(assert (=> d!671874 (= c!360371 ((_ is Some!5278) lt!843209))))

(declare-fun maxPrefixZipperSequenceV2!394 (LexerInterface!3898 List!27079 BalanceConc!17228 BalanceConc!17228) Option!5279)

(assert (=> d!671874 (= lt!843209 (maxPrefixZipperSequenceV2!394 thiss!16613 rules!1750 (seqFromList!3005 input!1722) (seqFromList!3005 input!1722)))))

(declare-datatypes ((Unit!39934 0))(
  ( (Unit!39935) )
))
(declare-fun lt!843220 () Unit!39934)

(declare-fun lt!843228 () Unit!39934)

(assert (=> d!671874 (= lt!843220 lt!843228)))

(declare-fun lt!843231 () List!27078)

(declare-fun lt!843203 () List!27078)

(declare-fun isSuffix!760 (List!27078 List!27078) Bool)

(assert (=> d!671874 (isSuffix!760 lt!843231 (++!6575 lt!843203 lt!843231))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!454 (List!27078 List!27078) Unit!39934)

(assert (=> d!671874 (= lt!843228 (lemmaConcatTwoListThenFSndIsSuffix!454 lt!843203 lt!843231))))

(assert (=> d!671874 (= lt!843231 (list!10450 (seqFromList!3005 input!1722)))))

(assert (=> d!671874 (= lt!843203 (list!10450 (BalanceConc!17229 Empty!8750)))))

(assert (=> d!671874 (= (lexTailRecV2!751 thiss!16613 rules!1750 (seqFromList!3005 input!1722) (BalanceConc!17229 Empty!8750) (seqFromList!3005 input!1722) (BalanceConc!17231 Empty!8751)) lt!843216)))

(declare-fun b!2269582 () Bool)

(declare-fun lt!843229 () BalanceConc!17228)

(declare-fun append!688 (BalanceConc!17230 Token!8080) BalanceConc!17230)

(assert (=> b!2269582 (= e!1453648 (lexTailRecV2!751 thiss!16613 rules!1750 (seqFromList!3005 input!1722) lt!843229 (_2!15835 (v!30324 lt!843209)) (append!688 (BalanceConc!17231 Empty!8751) (_1!15835 (v!30324 lt!843209)))))))

(declare-fun lt!843221 () tuple2!26644)

(assert (=> b!2269582 (= lt!843221 (lexRec!525 thiss!16613 rules!1750 (_2!15835 (v!30324 lt!843209))))))

(declare-fun lt!843222 () List!27078)

(assert (=> b!2269582 (= lt!843222 (list!10450 (BalanceConc!17229 Empty!8750)))))

(declare-fun lt!843225 () List!27078)

(assert (=> b!2269582 (= lt!843225 (list!10450 (charsOf!2689 (_1!15835 (v!30324 lt!843209)))))))

(declare-fun lt!843202 () List!27078)

(assert (=> b!2269582 (= lt!843202 (list!10450 (_2!15835 (v!30324 lt!843209))))))

(declare-fun lt!843212 () Unit!39934)

(declare-fun lemmaConcatAssociativity!1362 (List!27078 List!27078 List!27078) Unit!39934)

(assert (=> b!2269582 (= lt!843212 (lemmaConcatAssociativity!1362 lt!843222 lt!843225 lt!843202))))

(assert (=> b!2269582 (= (++!6575 (++!6575 lt!843222 lt!843225) lt!843202) (++!6575 lt!843222 (++!6575 lt!843225 lt!843202)))))

(declare-fun lt!843206 () Unit!39934)

(assert (=> b!2269582 (= lt!843206 lt!843212)))

(declare-fun lt!843217 () Option!5279)

(declare-fun maxPrefixZipperSequence!860 (LexerInterface!3898 List!27079 BalanceConc!17228) Option!5279)

(assert (=> b!2269582 (= lt!843217 (maxPrefixZipperSequence!860 thiss!16613 rules!1750 (seqFromList!3005 input!1722)))))

(declare-fun c!360372 () Bool)

(assert (=> b!2269582 (= c!360372 ((_ is Some!5278) lt!843217))))

(declare-fun e!1453645 () tuple2!26644)

(assert (=> b!2269582 (= (lexRec!525 thiss!16613 rules!1750 (seqFromList!3005 input!1722)) e!1453645)))

(declare-fun lt!843234 () Unit!39934)

(declare-fun Unit!39937 () Unit!39934)

(assert (=> b!2269582 (= lt!843234 Unit!39937)))

(declare-fun lt!843214 () List!27080)

(assert (=> b!2269582 (= lt!843214 (list!10449 (BalanceConc!17231 Empty!8751)))))

(declare-fun lt!843227 () List!27080)

(assert (=> b!2269582 (= lt!843227 (Cons!26986 (_1!15835 (v!30324 lt!843209)) Nil!26986))))

(declare-fun lt!843224 () List!27080)

(assert (=> b!2269582 (= lt!843224 (list!10449 (_1!15832 lt!843221)))))

(declare-fun lt!843226 () Unit!39934)

(declare-fun lemmaConcatAssociativity!1363 (List!27080 List!27080 List!27080) Unit!39934)

(assert (=> b!2269582 (= lt!843226 (lemmaConcatAssociativity!1363 lt!843214 lt!843227 lt!843224))))

(assert (=> b!2269582 (= (++!6576 (++!6576 lt!843214 lt!843227) lt!843224) (++!6576 lt!843214 (++!6576 lt!843227 lt!843224)))))

(declare-fun lt!843232 () Unit!39934)

(assert (=> b!2269582 (= lt!843232 lt!843226)))

(declare-fun lt!843211 () List!27078)

(assert (=> b!2269582 (= lt!843211 (++!6575 (list!10450 (BalanceConc!17229 Empty!8750)) (list!10450 (charsOf!2689 (_1!15835 (v!30324 lt!843209))))))))

(declare-fun lt!843219 () List!27078)

(assert (=> b!2269582 (= lt!843219 (list!10450 (_2!15835 (v!30324 lt!843209))))))

(declare-fun lt!843233 () List!27080)

(assert (=> b!2269582 (= lt!843233 (list!10449 (append!688 (BalanceConc!17231 Empty!8751) (_1!15835 (v!30324 lt!843209)))))))

(declare-fun lt!843215 () Unit!39934)

(declare-fun lemmaLexThenLexPrefix!339 (LexerInterface!3898 List!27079 List!27078 List!27078 List!27080 List!27080 List!27078) Unit!39934)

(assert (=> b!2269582 (= lt!843215 (lemmaLexThenLexPrefix!339 thiss!16613 rules!1750 lt!843211 lt!843219 lt!843233 (list!10449 (_1!15832 lt!843221)) (list!10450 (_2!15832 lt!843221))))))

(assert (=> b!2269582 (= (lexList!1076 thiss!16613 rules!1750 lt!843211) (tuple2!26647 lt!843233 Nil!26984))))

(declare-fun lt!843205 () Unit!39934)

(assert (=> b!2269582 (= lt!843205 lt!843215)))

(declare-fun lt!843230 () BalanceConc!17228)

(declare-fun ++!6579 (BalanceConc!17228 BalanceConc!17228) BalanceConc!17228)

(assert (=> b!2269582 (= lt!843230 (++!6579 (BalanceConc!17229 Empty!8750) (charsOf!2689 (_1!15835 (v!30324 lt!843209)))))))

(assert (=> b!2269582 (= lt!843213 (maxPrefixZipperSequence!860 thiss!16613 rules!1750 lt!843230))))

(declare-fun c!360370 () Bool)

(assert (=> b!2269582 (= c!360370 ((_ is Some!5278) lt!843213))))

(assert (=> b!2269582 (= (lexRec!525 thiss!16613 rules!1750 (++!6579 (BalanceConc!17229 Empty!8750) (charsOf!2689 (_1!15835 (v!30324 lt!843209))))) e!1453647)))

(declare-fun lt!843208 () Unit!39934)

(declare-fun Unit!39939 () Unit!39934)

(assert (=> b!2269582 (= lt!843208 Unit!39939)))

(assert (=> b!2269582 (= lt!843229 (++!6579 (BalanceConc!17229 Empty!8750) (charsOf!2689 (_1!15835 (v!30324 lt!843209)))))))

(declare-fun lt!843210 () List!27078)

(assert (=> b!2269582 (= lt!843210 (list!10450 lt!843229))))

(declare-fun lt!843235 () List!27078)

(assert (=> b!2269582 (= lt!843235 (list!10450 (_2!15835 (v!30324 lt!843209))))))

(declare-fun lt!843223 () Unit!39934)

(assert (=> b!2269582 (= lt!843223 (lemmaConcatTwoListThenFSndIsSuffix!454 lt!843210 lt!843235))))

(assert (=> b!2269582 (isSuffix!760 lt!843235 (++!6575 lt!843210 lt!843235))))

(declare-fun lt!843218 () Unit!39934)

(assert (=> b!2269582 (= lt!843218 lt!843223)))

(declare-fun b!2269583 () Bool)

(assert (=> b!2269583 (= e!1453647 (tuple2!26645 (BalanceConc!17231 Empty!8751) lt!843230))))

(declare-fun b!2269584 () Bool)

(assert (=> b!2269584 (= e!1453645 (tuple2!26645 (BalanceConc!17231 Empty!8751) (seqFromList!3005 input!1722)))))

(declare-fun b!2269585 () Bool)

(assert (=> b!2269585 (= e!1453648 (tuple2!26645 (BalanceConc!17231 Empty!8751) (seqFromList!3005 input!1722)))))

(declare-fun lt!843204 () tuple2!26644)

(declare-fun b!2269586 () Bool)

(assert (=> b!2269586 (= lt!843204 (lexRec!525 thiss!16613 rules!1750 (_2!15835 (v!30324 lt!843217))))))

(assert (=> b!2269586 (= e!1453645 (tuple2!26645 (prepend!994 (_1!15832 lt!843204) (_1!15835 (v!30324 lt!843217))) (_2!15832 lt!843204)))))

(assert (= (and d!671874 c!360371) b!2269582))

(assert (= (and d!671874 (not c!360371)) b!2269585))

(assert (= (and b!2269582 c!360372) b!2269586))

(assert (= (and b!2269582 (not c!360372)) b!2269584))

(assert (= (and b!2269582 c!360370) b!2269580))

(assert (= (and b!2269582 (not c!360370)) b!2269583))

(assert (= (and d!671874 res!970336) b!2269581))

(declare-fun m!2698515 () Bool)

(assert (=> d!671874 m!2698515))

(declare-fun m!2698517 () Bool)

(assert (=> d!671874 m!2698517))

(assert (=> d!671874 m!2698043))

(assert (=> d!671874 m!2698043))

(declare-fun m!2698519 () Bool)

(assert (=> d!671874 m!2698519))

(assert (=> d!671874 m!2698517))

(declare-fun m!2698521 () Bool)

(assert (=> d!671874 m!2698521))

(declare-fun m!2698523 () Bool)

(assert (=> d!671874 m!2698523))

(declare-fun m!2698525 () Bool)

(assert (=> d!671874 m!2698525))

(assert (=> d!671874 m!2698043))

(assert (=> d!671874 m!2698227))

(declare-fun m!2698527 () Bool)

(assert (=> d!671874 m!2698527))

(assert (=> d!671874 m!2698043))

(declare-fun m!2698529 () Bool)

(assert (=> d!671874 m!2698529))

(declare-fun m!2698531 () Bool)

(assert (=> b!2269581 m!2698531))

(assert (=> b!2269581 m!2698043))

(assert (=> b!2269581 m!2698529))

(declare-fun m!2698533 () Bool)

(assert (=> b!2269581 m!2698533))

(declare-fun m!2698535 () Bool)

(assert (=> b!2269582 m!2698535))

(declare-fun m!2698537 () Bool)

(assert (=> b!2269582 m!2698537))

(declare-fun m!2698539 () Bool)

(assert (=> b!2269582 m!2698539))

(declare-fun m!2698541 () Bool)

(assert (=> b!2269582 m!2698541))

(declare-fun m!2698543 () Bool)

(assert (=> b!2269582 m!2698543))

(declare-fun m!2698545 () Bool)

(assert (=> b!2269582 m!2698545))

(declare-fun m!2698547 () Bool)

(assert (=> b!2269582 m!2698547))

(declare-fun m!2698549 () Bool)

(assert (=> b!2269582 m!2698549))

(declare-fun m!2698551 () Bool)

(assert (=> b!2269582 m!2698551))

(assert (=> b!2269582 m!2698539))

(declare-fun m!2698553 () Bool)

(assert (=> b!2269582 m!2698553))

(declare-fun m!2698555 () Bool)

(assert (=> b!2269582 m!2698555))

(declare-fun m!2698557 () Bool)

(assert (=> b!2269582 m!2698557))

(assert (=> b!2269582 m!2698555))

(declare-fun m!2698559 () Bool)

(assert (=> b!2269582 m!2698559))

(declare-fun m!2698561 () Bool)

(assert (=> b!2269582 m!2698561))

(declare-fun m!2698563 () Bool)

(assert (=> b!2269582 m!2698563))

(assert (=> b!2269582 m!2698561))

(assert (=> b!2269582 m!2698043))

(assert (=> b!2269582 m!2698541))

(declare-fun m!2698565 () Bool)

(assert (=> b!2269582 m!2698565))

(assert (=> b!2269582 m!2698515))

(assert (=> b!2269582 m!2698043))

(assert (=> b!2269582 m!2698529))

(declare-fun m!2698567 () Bool)

(assert (=> b!2269582 m!2698567))

(assert (=> b!2269582 m!2698551))

(declare-fun m!2698569 () Bool)

(assert (=> b!2269582 m!2698569))

(declare-fun m!2698571 () Bool)

(assert (=> b!2269582 m!2698571))

(declare-fun m!2698573 () Bool)

(assert (=> b!2269582 m!2698573))

(assert (=> b!2269582 m!2698537))

(declare-fun m!2698575 () Bool)

(assert (=> b!2269582 m!2698575))

(declare-fun m!2698577 () Bool)

(assert (=> b!2269582 m!2698577))

(declare-fun m!2698579 () Bool)

(assert (=> b!2269582 m!2698579))

(assert (=> b!2269582 m!2698043))

(declare-fun m!2698581 () Bool)

(assert (=> b!2269582 m!2698581))

(assert (=> b!2269582 m!2698541))

(declare-fun m!2698583 () Bool)

(assert (=> b!2269582 m!2698583))

(assert (=> b!2269582 m!2698535))

(declare-fun m!2698585 () Bool)

(assert (=> b!2269582 m!2698585))

(assert (=> b!2269582 m!2698569))

(declare-fun m!2698587 () Bool)

(assert (=> b!2269582 m!2698587))

(assert (=> b!2269582 m!2698547))

(declare-fun m!2698589 () Bool)

(assert (=> b!2269582 m!2698589))

(declare-fun m!2698591 () Bool)

(assert (=> b!2269582 m!2698591))

(assert (=> b!2269582 m!2698535))

(assert (=> b!2269582 m!2698557))

(declare-fun m!2698593 () Bool)

(assert (=> b!2269582 m!2698593))

(assert (=> b!2269582 m!2698515))

(assert (=> b!2269582 m!2698585))

(declare-fun m!2698595 () Bool)

(assert (=> b!2269582 m!2698595))

(declare-fun m!2698597 () Bool)

(assert (=> b!2269580 m!2698597))

(declare-fun m!2698599 () Bool)

(assert (=> b!2269580 m!2698599))

(declare-fun m!2698601 () Bool)

(assert (=> b!2269586 m!2698601))

(declare-fun m!2698603 () Bool)

(assert (=> b!2269586 m!2698603))

(assert (=> d!671720 d!671874))

(declare-fun d!671898 () Bool)

(declare-fun lt!843236 () Int)

(assert (=> d!671898 (>= lt!843236 0)))

(declare-fun e!1453649 () Int)

(assert (=> d!671898 (= lt!843236 e!1453649)))

(declare-fun c!360373 () Bool)

(assert (=> d!671898 (= c!360373 ((_ is Nil!26984) (originalCharacters!5071 (h!32387 tokens!456))))))

(assert (=> d!671898 (= (size!21174 (originalCharacters!5071 (h!32387 tokens!456))) lt!843236)))

(declare-fun b!2269587 () Bool)

(assert (=> b!2269587 (= e!1453649 0)))

(declare-fun b!2269588 () Bool)

(assert (=> b!2269588 (= e!1453649 (+ 1 (size!21174 (t!202386 (originalCharacters!5071 (h!32387 tokens!456))))))))

(assert (= (and d!671898 c!360373) b!2269587))

(assert (= (and d!671898 (not c!360373)) b!2269588))

(declare-fun m!2698605 () Bool)

(assert (=> b!2269588 m!2698605))

(assert (=> b!2269347 d!671898))

(declare-fun bs!455896 () Bool)

(declare-fun d!671900 () Bool)

(assert (= bs!455896 (and d!671900 d!671780)))

(declare-fun lambda!85454 () Int)

(assert (=> bs!455896 (= (and (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 otherR!12))) (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 otherR!12)))) (= lambda!85454 lambda!85438))))

(declare-fun bs!455897 () Bool)

(assert (= bs!455897 (and d!671900 d!671864)))

(assert (=> bs!455897 (= (and (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (h!32386 rules!1750)))) (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 (h!32386 rules!1750))))) (= lambda!85454 lambda!85449))))

(declare-fun bs!455898 () Bool)

(assert (= bs!455898 (and d!671900 d!671870)))

(assert (=> bs!455898 (= (and (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) (= (toValue!6059 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 (rule!6619 (h!32387 tokens!456)))))) (= lambda!85454 lambda!85450))))

(assert (=> d!671900 true))

(assert (=> d!671900 (< (dynLambda!11694 order!15037 (toChars!5918 (transformation!4301 r!2363))) (dynLambda!11695 order!15039 lambda!85454))))

(assert (=> d!671900 true))

(assert (=> d!671900 (< (dynLambda!11692 order!15033 (toValue!6059 (transformation!4301 r!2363))) (dynLambda!11695 order!15039 lambda!85454))))

(assert (=> d!671900 (= (semiInverseModEq!1732 (toChars!5918 (transformation!4301 r!2363)) (toValue!6059 (transformation!4301 r!2363))) (Forall!1074 lambda!85454))))

(declare-fun bs!455899 () Bool)

(assert (= bs!455899 d!671900))

(declare-fun m!2698607 () Bool)

(assert (=> bs!455899 m!2698607))

(assert (=> d!671750 d!671900))

(declare-fun d!671902 () Bool)

(assert (=> d!671902 (= (list!10450 (_2!15832 lt!843086)) (list!10454 (c!360296 (_2!15832 lt!843086))))))

(declare-fun bs!455900 () Bool)

(assert (= bs!455900 d!671902))

(declare-fun m!2698609 () Bool)

(assert (=> bs!455900 m!2698609))

(assert (=> b!2269324 d!671902))

(declare-fun b!2269613 () Bool)

(declare-fun e!1453664 () Bool)

(declare-fun lt!843313 () tuple2!26646)

(assert (=> b!2269613 (= e!1453664 (not (isEmpty!15278 (_1!15833 lt!843313))))))

(declare-fun b!2269614 () Bool)

(declare-fun e!1453666 () tuple2!26646)

(assert (=> b!2269614 (= e!1453666 (tuple2!26647 Nil!26986 (list!10450 (seqFromList!3005 input!1722))))))

(declare-fun b!2269615 () Bool)

(declare-datatypes ((tuple2!26654 0))(
  ( (tuple2!26655 (_1!15837 Token!8080) (_2!15837 List!27078)) )
))
(declare-datatypes ((Option!5281 0))(
  ( (None!5280) (Some!5280 (v!30326 tuple2!26654)) )
))
(declare-fun lt!843311 () Option!5281)

(declare-fun lt!843312 () tuple2!26646)

(assert (=> b!2269615 (= e!1453666 (tuple2!26647 (Cons!26986 (_1!15837 (v!30326 lt!843311)) (_1!15833 lt!843312)) (_2!15833 lt!843312)))))

(assert (=> b!2269615 (= lt!843312 (lexList!1076 thiss!16613 rules!1750 (_2!15837 (v!30326 lt!843311))))))

(declare-fun b!2269616 () Bool)

(declare-fun e!1453665 () Bool)

(assert (=> b!2269616 (= e!1453665 e!1453664)))

(declare-fun res!970341 () Bool)

(assert (=> b!2269616 (= res!970341 (< (size!21174 (_2!15833 lt!843313)) (size!21174 (list!10450 (seqFromList!3005 input!1722)))))))

(assert (=> b!2269616 (=> (not res!970341) (not e!1453664))))

(declare-fun d!671904 () Bool)

(assert (=> d!671904 e!1453665))

(declare-fun c!360385 () Bool)

(assert (=> d!671904 (= c!360385 (> (size!21180 (_1!15833 lt!843313)) 0))))

(assert (=> d!671904 (= lt!843313 e!1453666)))

(declare-fun c!360384 () Bool)

(assert (=> d!671904 (= c!360384 ((_ is Some!5280) lt!843311))))

(declare-fun maxPrefix!2170 (LexerInterface!3898 List!27079 List!27078) Option!5281)

(assert (=> d!671904 (= lt!843311 (maxPrefix!2170 thiss!16613 rules!1750 (list!10450 (seqFromList!3005 input!1722))))))

(assert (=> d!671904 (= (lexList!1076 thiss!16613 rules!1750 (list!10450 (seqFromList!3005 input!1722))) lt!843313)))

(declare-fun b!2269617 () Bool)

(assert (=> b!2269617 (= e!1453665 (= (_2!15833 lt!843313) (list!10450 (seqFromList!3005 input!1722))))))

(assert (= (and d!671904 c!360384) b!2269615))

(assert (= (and d!671904 (not c!360384)) b!2269614))

(assert (= (and d!671904 c!360385) b!2269616))

(assert (= (and d!671904 (not c!360385)) b!2269617))

(assert (= (and b!2269616 res!970341) b!2269613))

(declare-fun m!2698611 () Bool)

(assert (=> b!2269613 m!2698611))

(declare-fun m!2698613 () Bool)

(assert (=> b!2269615 m!2698613))

(declare-fun m!2698615 () Bool)

(assert (=> b!2269616 m!2698615))

(assert (=> b!2269616 m!2698227))

(declare-fun m!2698617 () Bool)

(assert (=> b!2269616 m!2698617))

(declare-fun m!2698619 () Bool)

(assert (=> d!671904 m!2698619))

(assert (=> d!671904 m!2698227))

(declare-fun m!2698621 () Bool)

(assert (=> d!671904 m!2698621))

(assert (=> b!2269324 d!671904))

(declare-fun d!671906 () Bool)

(assert (=> d!671906 (= (list!10450 (seqFromList!3005 input!1722)) (list!10454 (c!360296 (seqFromList!3005 input!1722))))))

(declare-fun bs!455901 () Bool)

(assert (= bs!455901 d!671906))

(declare-fun m!2698623 () Bool)

(assert (=> bs!455901 m!2698623))

(assert (=> b!2269324 d!671906))

(declare-fun d!671908 () Bool)

(declare-fun charsToInt!0 (List!27077) (_ BitVec 32))

(assert (=> d!671908 (= (inv!16 (value!136398 (h!32387 tokens!456))) (= (charsToInt!0 (text!31688 (value!136398 (h!32387 tokens!456)))) (value!136389 (value!136398 (h!32387 tokens!456)))))))

(declare-fun bs!455902 () Bool)

(assert (= bs!455902 d!671908))

(declare-fun m!2698625 () Bool)

(assert (=> bs!455902 m!2698625))

(assert (=> b!2269339 d!671908))

(declare-fun d!671910 () Bool)

(assert (=> d!671910 (= (list!10450 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))) (list!10454 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))))))

(declare-fun bs!455903 () Bool)

(assert (= bs!455903 d!671910))

(declare-fun m!2698627 () Bool)

(assert (=> bs!455903 m!2698627))

(assert (=> b!2269346 d!671910))

(declare-fun d!671912 () Bool)

(declare-fun e!1453669 () Bool)

(assert (=> d!671912 e!1453669))

(declare-fun res!970344 () Bool)

(assert (=> d!671912 (=> (not res!970344) (not e!1453669))))

(declare-fun lt!843316 () BalanceConc!17228)

(assert (=> d!671912 (= res!970344 (= (list!10450 lt!843316) input!1722))))

(declare-fun fromList!522 (List!27078) Conc!8750)

(assert (=> d!671912 (= lt!843316 (BalanceConc!17229 (fromList!522 input!1722)))))

(assert (=> d!671912 (= (fromListB!1342 input!1722) lt!843316)))

(declare-fun b!2269620 () Bool)

(assert (=> b!2269620 (= e!1453669 (isBalanced!2664 (fromList!522 input!1722)))))

(assert (= (and d!671912 res!970344) b!2269620))

(declare-fun m!2698629 () Bool)

(assert (=> d!671912 m!2698629))

(declare-fun m!2698631 () Bool)

(assert (=> d!671912 m!2698631))

(assert (=> b!2269620 m!2698631))

(assert (=> b!2269620 m!2698631))

(declare-fun m!2698633 () Bool)

(assert (=> b!2269620 m!2698633))

(assert (=> d!671736 d!671912))

(declare-fun d!671914 () Bool)

(declare-fun lt!843317 () Bool)

(assert (=> d!671914 (= lt!843317 (select (content!3598 (t!202387 rules!1750)) otherR!12))))

(declare-fun e!1453671 () Bool)

(assert (=> d!671914 (= lt!843317 e!1453671)))

(declare-fun res!970346 () Bool)

(assert (=> d!671914 (=> (not res!970346) (not e!1453671))))

(assert (=> d!671914 (= res!970346 ((_ is Cons!26985) (t!202387 rules!1750)))))

(assert (=> d!671914 (= (contains!4661 (t!202387 rules!1750) otherR!12) lt!843317)))

(declare-fun b!2269621 () Bool)

(declare-fun e!1453670 () Bool)

(assert (=> b!2269621 (= e!1453671 e!1453670)))

(declare-fun res!970345 () Bool)

(assert (=> b!2269621 (=> res!970345 e!1453670)))

(assert (=> b!2269621 (= res!970345 (= (h!32386 (t!202387 rules!1750)) otherR!12))))

(declare-fun b!2269622 () Bool)

(assert (=> b!2269622 (= e!1453670 (contains!4661 (t!202387 (t!202387 rules!1750)) otherR!12))))

(assert (= (and d!671914 res!970346) b!2269621))

(assert (= (and b!2269621 (not res!970345)) b!2269622))

(assert (=> d!671914 m!2698359))

(declare-fun m!2698635 () Bool)

(assert (=> d!671914 m!2698635))

(declare-fun m!2698637 () Bool)

(assert (=> b!2269622 m!2698637))

(assert (=> b!2269341 d!671914))

(declare-fun d!671916 () Bool)

(assert (=> d!671916 (= (list!10449 (_1!15832 lt!843086)) (list!10453 (c!360298 (_1!15832 lt!843086))))))

(declare-fun bs!455904 () Bool)

(assert (= bs!455904 d!671916))

(declare-fun m!2698639 () Bool)

(assert (=> bs!455904 m!2698639))

(assert (=> b!2269323 d!671916))

(assert (=> b!2269323 d!671904))

(assert (=> b!2269323 d!671906))

(declare-fun d!671918 () Bool)

(declare-fun lt!843320 () Bool)

(assert (=> d!671918 (= lt!843320 (isEmpty!15278 (list!10449 (_1!15832 lt!843086))))))

(declare-fun isEmpty!15284 (Conc!8751) Bool)

(assert (=> d!671918 (= lt!843320 (isEmpty!15284 (c!360298 (_1!15832 lt!843086))))))

(assert (=> d!671918 (= (isEmpty!15281 (_1!15832 lt!843086)) lt!843320)))

(declare-fun bs!455905 () Bool)

(assert (= bs!455905 d!671918))

(assert (=> bs!455905 m!2698237))

(assert (=> bs!455905 m!2698237))

(declare-fun m!2698641 () Bool)

(assert (=> bs!455905 m!2698641))

(declare-fun m!2698643 () Bool)

(assert (=> bs!455905 m!2698643))

(assert (=> b!2269322 d!671918))

(declare-fun d!671920 () Bool)

(declare-fun charsToBigInt!0 (List!27077 Int) Int)

(assert (=> d!671920 (= (inv!15 (value!136398 (h!32387 tokens!456))) (= (charsToBigInt!0 (text!31690 (value!136398 (h!32387 tokens!456))) 0) (value!136393 (value!136398 (h!32387 tokens!456)))))))

(declare-fun bs!455906 () Bool)

(assert (= bs!455906 d!671920))

(declare-fun m!2698645 () Bool)

(assert (=> bs!455906 m!2698645))

(assert (=> b!2269337 d!671920))

(declare-fun d!671922 () Bool)

(assert (=> d!671922 (= (list!10450 lt!843057) (list!10454 (c!360296 lt!843057)))))

(declare-fun bs!455907 () Bool)

(assert (= bs!455907 d!671922))

(declare-fun m!2698647 () Bool)

(assert (=> bs!455907 m!2698647))

(assert (=> d!671678 d!671922))

(declare-fun d!671924 () Bool)

(declare-fun charsToBigInt!1 (List!27077) Int)

(assert (=> d!671924 (= (inv!17 (value!136398 (h!32387 tokens!456))) (= (charsToBigInt!1 (text!31689 (value!136398 (h!32387 tokens!456)))) (value!136390 (value!136398 (h!32387 tokens!456)))))))

(declare-fun bs!455908 () Bool)

(assert (= bs!455908 d!671924))

(declare-fun m!2698671 () Bool)

(assert (=> bs!455908 m!2698671))

(assert (=> b!2269336 d!671924))

(declare-fun bs!455909 () Bool)

(declare-fun d!671926 () Bool)

(assert (= bs!455909 (and d!671926 d!671686)))

(declare-fun lambda!85458 () Int)

(assert (=> bs!455909 (= lambda!85458 lambda!85431)))

(declare-fun bs!455911 () Bool)

(assert (= bs!455911 (and d!671926 d!671776)))

(assert (=> bs!455911 (= lambda!85458 lambda!85435)))

(assert (=> d!671926 true))

(declare-fun lt!843357 () Bool)

(assert (=> d!671926 (= lt!843357 (rulesValidInductive!1501 thiss!16613 rules!1750))))

(assert (=> d!671926 (= lt!843357 (forall!5478 rules!1750 lambda!85458))))

(assert (=> d!671926 (= (rulesValid!1576 thiss!16613 rules!1750) lt!843357)))

(declare-fun bs!455913 () Bool)

(assert (= bs!455913 d!671926))

(assert (=> bs!455913 m!2698019))

(declare-fun m!2698741 () Bool)

(assert (=> bs!455913 m!2698741))

(assert (=> d!671662 d!671926))

(declare-fun d!671930 () Bool)

(declare-fun lt!843358 () Int)

(assert (=> d!671930 (= lt!843358 (size!21174 (list!10450 (_2!15832 lt!843086))))))

(assert (=> d!671930 (= lt!843358 (size!21177 (c!360296 (_2!15832 lt!843086))))))

(assert (=> d!671930 (= (size!21173 (_2!15832 lt!843086)) lt!843358)))

(declare-fun bs!455915 () Bool)

(assert (= bs!455915 d!671930))

(assert (=> bs!455915 m!2698225))

(assert (=> bs!455915 m!2698225))

(declare-fun m!2698745 () Bool)

(assert (=> bs!455915 m!2698745))

(declare-fun m!2698747 () Bool)

(assert (=> bs!455915 m!2698747))

(assert (=> b!2269320 d!671930))

(declare-fun d!671934 () Bool)

(declare-fun lt!843359 () Int)

(assert (=> d!671934 (= lt!843359 (size!21174 (list!10450 (seqFromList!3005 input!1722))))))

(assert (=> d!671934 (= lt!843359 (size!21177 (c!360296 (seqFromList!3005 input!1722))))))

(assert (=> d!671934 (= (size!21173 (seqFromList!3005 input!1722)) lt!843359)))

(declare-fun bs!455916 () Bool)

(assert (= bs!455916 d!671934))

(assert (=> bs!455916 m!2698043))

(assert (=> bs!455916 m!2698227))

(assert (=> bs!455916 m!2698227))

(assert (=> bs!455916 m!2698617))

(declare-fun m!2698749 () Bool)

(assert (=> bs!455916 m!2698749))

(assert (=> b!2269320 d!671934))

(declare-fun b!2269630 () Bool)

(declare-fun e!1453676 () Bool)

(assert (=> b!2269630 (= e!1453676 tp_is_empty!10519)))

(declare-fun b!2269632 () Bool)

(declare-fun tp!718306 () Bool)

(assert (=> b!2269632 (= e!1453676 tp!718306)))

(declare-fun b!2269633 () Bool)

(declare-fun tp!718303 () Bool)

(declare-fun tp!718304 () Bool)

(assert (=> b!2269633 (= e!1453676 (and tp!718303 tp!718304))))

(assert (=> b!2269381 (= tp!718255 e!1453676)))

(declare-fun b!2269631 () Bool)

(declare-fun tp!718307 () Bool)

(declare-fun tp!718305 () Bool)

(assert (=> b!2269631 (= e!1453676 (and tp!718307 tp!718305))))

(assert (= (and b!2269381 ((_ is ElementMatch!6649) (reg!6978 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269630))

(assert (= (and b!2269381 ((_ is Concat!11113) (reg!6978 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269631))

(assert (= (and b!2269381 ((_ is Star!6649) (reg!6978 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269632))

(assert (= (and b!2269381 ((_ is Union!6649) (reg!6978 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269633))

(declare-fun b!2269634 () Bool)

(declare-fun e!1453677 () Bool)

(assert (=> b!2269634 (= e!1453677 tp_is_empty!10519)))

(declare-fun b!2269636 () Bool)

(declare-fun tp!718311 () Bool)

(assert (=> b!2269636 (= e!1453677 tp!718311)))

(declare-fun b!2269637 () Bool)

(declare-fun tp!718308 () Bool)

(declare-fun tp!718309 () Bool)

(assert (=> b!2269637 (= e!1453677 (and tp!718308 tp!718309))))

(assert (=> b!2269414 (= tp!718287 e!1453677)))

(declare-fun b!2269635 () Bool)

(declare-fun tp!718312 () Bool)

(declare-fun tp!718310 () Bool)

(assert (=> b!2269635 (= e!1453677 (and tp!718312 tp!718310))))

(assert (= (and b!2269414 ((_ is ElementMatch!6649) (regOne!13811 (regex!4301 r!2363)))) b!2269634))

(assert (= (and b!2269414 ((_ is Concat!11113) (regOne!13811 (regex!4301 r!2363)))) b!2269635))

(assert (= (and b!2269414 ((_ is Star!6649) (regOne!13811 (regex!4301 r!2363)))) b!2269636))

(assert (= (and b!2269414 ((_ is Union!6649) (regOne!13811 (regex!4301 r!2363)))) b!2269637))

(declare-fun b!2269638 () Bool)

(declare-fun e!1453678 () Bool)

(assert (=> b!2269638 (= e!1453678 tp_is_empty!10519)))

(declare-fun b!2269640 () Bool)

(declare-fun tp!718316 () Bool)

(assert (=> b!2269640 (= e!1453678 tp!718316)))

(declare-fun b!2269641 () Bool)

(declare-fun tp!718313 () Bool)

(declare-fun tp!718314 () Bool)

(assert (=> b!2269641 (= e!1453678 (and tp!718313 tp!718314))))

(assert (=> b!2269414 (= tp!718288 e!1453678)))

(declare-fun b!2269639 () Bool)

(declare-fun tp!718317 () Bool)

(declare-fun tp!718315 () Bool)

(assert (=> b!2269639 (= e!1453678 (and tp!718317 tp!718315))))

(assert (= (and b!2269414 ((_ is ElementMatch!6649) (regTwo!13811 (regex!4301 r!2363)))) b!2269638))

(assert (= (and b!2269414 ((_ is Concat!11113) (regTwo!13811 (regex!4301 r!2363)))) b!2269639))

(assert (= (and b!2269414 ((_ is Star!6649) (regTwo!13811 (regex!4301 r!2363)))) b!2269640))

(assert (= (and b!2269414 ((_ is Union!6649) (regTwo!13811 (regex!4301 r!2363)))) b!2269641))

(declare-fun b!2269642 () Bool)

(declare-fun e!1453679 () Bool)

(assert (=> b!2269642 (= e!1453679 tp_is_empty!10519)))

(declare-fun b!2269644 () Bool)

(declare-fun tp!718321 () Bool)

(assert (=> b!2269644 (= e!1453679 tp!718321)))

(declare-fun b!2269645 () Bool)

(declare-fun tp!718318 () Bool)

(declare-fun tp!718319 () Bool)

(assert (=> b!2269645 (= e!1453679 (and tp!718318 tp!718319))))

(assert (=> b!2269413 (= tp!718290 e!1453679)))

(declare-fun b!2269643 () Bool)

(declare-fun tp!718322 () Bool)

(declare-fun tp!718320 () Bool)

(assert (=> b!2269643 (= e!1453679 (and tp!718322 tp!718320))))

(assert (= (and b!2269413 ((_ is ElementMatch!6649) (reg!6978 (regex!4301 r!2363)))) b!2269642))

(assert (= (and b!2269413 ((_ is Concat!11113) (reg!6978 (regex!4301 r!2363)))) b!2269643))

(assert (= (and b!2269413 ((_ is Star!6649) (reg!6978 (regex!4301 r!2363)))) b!2269644))

(assert (= (and b!2269413 ((_ is Union!6649) (reg!6978 (regex!4301 r!2363)))) b!2269645))

(declare-fun b!2269646 () Bool)

(declare-fun e!1453680 () Bool)

(assert (=> b!2269646 (= e!1453680 tp_is_empty!10519)))

(declare-fun b!2269648 () Bool)

(declare-fun tp!718326 () Bool)

(assert (=> b!2269648 (= e!1453680 tp!718326)))

(declare-fun b!2269649 () Bool)

(declare-fun tp!718323 () Bool)

(declare-fun tp!718324 () Bool)

(assert (=> b!2269649 (= e!1453680 (and tp!718323 tp!718324))))

(assert (=> b!2269380 (= tp!718256 e!1453680)))

(declare-fun b!2269647 () Bool)

(declare-fun tp!718327 () Bool)

(declare-fun tp!718325 () Bool)

(assert (=> b!2269647 (= e!1453680 (and tp!718327 tp!718325))))

(assert (= (and b!2269380 ((_ is ElementMatch!6649) (regOne!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269646))

(assert (= (and b!2269380 ((_ is Concat!11113) (regOne!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269647))

(assert (= (and b!2269380 ((_ is Star!6649) (regOne!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269648))

(assert (= (and b!2269380 ((_ is Union!6649) (regOne!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269649))

(declare-fun b!2269654 () Bool)

(declare-fun e!1453685 () Bool)

(assert (=> b!2269654 (= e!1453685 tp_is_empty!10519)))

(declare-fun b!2269656 () Bool)

(declare-fun tp!718331 () Bool)

(assert (=> b!2269656 (= e!1453685 tp!718331)))

(declare-fun b!2269657 () Bool)

(declare-fun tp!718328 () Bool)

(declare-fun tp!718329 () Bool)

(assert (=> b!2269657 (= e!1453685 (and tp!718328 tp!718329))))

(assert (=> b!2269380 (= tp!718254 e!1453685)))

(declare-fun b!2269655 () Bool)

(declare-fun tp!718332 () Bool)

(declare-fun tp!718330 () Bool)

(assert (=> b!2269655 (= e!1453685 (and tp!718332 tp!718330))))

(assert (= (and b!2269380 ((_ is ElementMatch!6649) (regTwo!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269654))

(assert (= (and b!2269380 ((_ is Concat!11113) (regTwo!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269655))

(assert (= (and b!2269380 ((_ is Star!6649) (regTwo!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269656))

(assert (= (and b!2269380 ((_ is Union!6649) (regTwo!13810 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269657))

(declare-fun b!2269658 () Bool)

(declare-fun e!1453686 () Bool)

(assert (=> b!2269658 (= e!1453686 tp_is_empty!10519)))

(declare-fun b!2269660 () Bool)

(declare-fun tp!718336 () Bool)

(assert (=> b!2269660 (= e!1453686 tp!718336)))

(declare-fun b!2269661 () Bool)

(declare-fun tp!718333 () Bool)

(declare-fun tp!718334 () Bool)

(assert (=> b!2269661 (= e!1453686 (and tp!718333 tp!718334))))

(assert (=> b!2269422 (= tp!718297 e!1453686)))

(declare-fun b!2269659 () Bool)

(declare-fun tp!718337 () Bool)

(declare-fun tp!718335 () Bool)

(assert (=> b!2269659 (= e!1453686 (and tp!718337 tp!718335))))

(assert (= (and b!2269422 ((_ is ElementMatch!6649) (regOne!13811 (regex!4301 (h!32386 rules!1750))))) b!2269658))

(assert (= (and b!2269422 ((_ is Concat!11113) (regOne!13811 (regex!4301 (h!32386 rules!1750))))) b!2269659))

(assert (= (and b!2269422 ((_ is Star!6649) (regOne!13811 (regex!4301 (h!32386 rules!1750))))) b!2269660))

(assert (= (and b!2269422 ((_ is Union!6649) (regOne!13811 (regex!4301 (h!32386 rules!1750))))) b!2269661))

(declare-fun b!2269662 () Bool)

(declare-fun e!1453687 () Bool)

(assert (=> b!2269662 (= e!1453687 tp_is_empty!10519)))

(declare-fun b!2269664 () Bool)

(declare-fun tp!718341 () Bool)

(assert (=> b!2269664 (= e!1453687 tp!718341)))

(declare-fun b!2269665 () Bool)

(declare-fun tp!718338 () Bool)

(declare-fun tp!718339 () Bool)

(assert (=> b!2269665 (= e!1453687 (and tp!718338 tp!718339))))

(assert (=> b!2269422 (= tp!718298 e!1453687)))

(declare-fun b!2269663 () Bool)

(declare-fun tp!718342 () Bool)

(declare-fun tp!718340 () Bool)

(assert (=> b!2269663 (= e!1453687 (and tp!718342 tp!718340))))

(assert (= (and b!2269422 ((_ is ElementMatch!6649) (regTwo!13811 (regex!4301 (h!32386 rules!1750))))) b!2269662))

(assert (= (and b!2269422 ((_ is Concat!11113) (regTwo!13811 (regex!4301 (h!32386 rules!1750))))) b!2269663))

(assert (= (and b!2269422 ((_ is Star!6649) (regTwo!13811 (regex!4301 (h!32386 rules!1750))))) b!2269664))

(assert (= (and b!2269422 ((_ is Union!6649) (regTwo!13811 (regex!4301 (h!32386 rules!1750))))) b!2269665))

(declare-fun b!2269666 () Bool)

(declare-fun e!1453688 () Bool)

(declare-fun tp!718343 () Bool)

(assert (=> b!2269666 (= e!1453688 (and tp_is_empty!10519 tp!718343))))

(assert (=> b!2269408 (= tp!718282 e!1453688)))

(assert (= (and b!2269408 ((_ is Cons!26984) (originalCharacters!5071 (h!32387 (t!202388 tokens!456))))) b!2269666))

(declare-fun b!2269667 () Bool)

(declare-fun e!1453689 () Bool)

(assert (=> b!2269667 (= e!1453689 tp_is_empty!10519)))

(declare-fun b!2269669 () Bool)

(declare-fun tp!718347 () Bool)

(assert (=> b!2269669 (= e!1453689 tp!718347)))

(declare-fun b!2269670 () Bool)

(declare-fun tp!718344 () Bool)

(declare-fun tp!718345 () Bool)

(assert (=> b!2269670 (= e!1453689 (and tp!718344 tp!718345))))

(assert (=> b!2269409 (= tp!718283 e!1453689)))

(declare-fun b!2269668 () Bool)

(declare-fun tp!718348 () Bool)

(declare-fun tp!718346 () Bool)

(assert (=> b!2269668 (= e!1453689 (and tp!718348 tp!718346))))

(assert (= (and b!2269409 ((_ is ElementMatch!6649) (regex!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) b!2269667))

(assert (= (and b!2269409 ((_ is Concat!11113) (regex!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) b!2269668))

(assert (= (and b!2269409 ((_ is Star!6649) (regex!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) b!2269669))

(assert (= (and b!2269409 ((_ is Union!6649) (regex!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) b!2269670))

(declare-fun b!2269671 () Bool)

(declare-fun e!1453690 () Bool)

(assert (=> b!2269671 (= e!1453690 tp_is_empty!10519)))

(declare-fun b!2269673 () Bool)

(declare-fun tp!718352 () Bool)

(assert (=> b!2269673 (= e!1453690 tp!718352)))

(declare-fun b!2269674 () Bool)

(declare-fun tp!718349 () Bool)

(declare-fun tp!718350 () Bool)

(assert (=> b!2269674 (= e!1453690 (and tp!718349 tp!718350))))

(assert (=> b!2269421 (= tp!718300 e!1453690)))

(declare-fun b!2269672 () Bool)

(declare-fun tp!718353 () Bool)

(declare-fun tp!718351 () Bool)

(assert (=> b!2269672 (= e!1453690 (and tp!718353 tp!718351))))

(assert (= (and b!2269421 ((_ is ElementMatch!6649) (reg!6978 (regex!4301 (h!32386 rules!1750))))) b!2269671))

(assert (= (and b!2269421 ((_ is Concat!11113) (reg!6978 (regex!4301 (h!32386 rules!1750))))) b!2269672))

(assert (= (and b!2269421 ((_ is Star!6649) (reg!6978 (regex!4301 (h!32386 rules!1750))))) b!2269673))

(assert (= (and b!2269421 ((_ is Union!6649) (reg!6978 (regex!4301 (h!32386 rules!1750))))) b!2269674))

(declare-fun b!2269680 () Bool)

(declare-fun b_free!67421 () Bool)

(declare-fun b_next!68125 () Bool)

(assert (=> b!2269680 (= b_free!67421 (not b_next!68125))))

(declare-fun tp!718357 () Bool)

(declare-fun b_and!178797 () Bool)

(assert (=> b!2269680 (= tp!718357 b_and!178797)))

(declare-fun b_free!67423 () Bool)

(declare-fun b_next!68127 () Bool)

(assert (=> b!2269680 (= b_free!67423 (not b_next!68127))))

(declare-fun t!202457 () Bool)

(declare-fun tb!134667 () Bool)

(assert (=> (and b!2269680 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202457) tb!134667))

(declare-fun result!164194 () Bool)

(assert (= result!164194 result!164114))

(assert (=> d!671678 t!202457))

(declare-fun t!202459 () Bool)

(declare-fun tb!134669 () Bool)

(assert (=> (and b!2269680 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202459) tb!134669))

(declare-fun result!164196 () Bool)

(assert (= result!164196 result!164158))

(assert (=> b!2269346 t!202459))

(declare-fun t!202461 () Bool)

(declare-fun tb!134671 () Bool)

(assert (=> (and b!2269680 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202461) tb!134671))

(declare-fun result!164198 () Bool)

(assert (= result!164198 result!164182))

(assert (=> b!2269443 t!202461))

(declare-fun tp!718358 () Bool)

(declare-fun b_and!178799 () Bool)

(assert (=> b!2269680 (= tp!718358 (and (=> t!202457 result!164194) (=> t!202459 result!164196) (=> t!202461 result!164198) b_and!178799))))

(declare-fun b!2269679 () Bool)

(declare-fun tp!718355 () Bool)

(declare-fun e!1453693 () Bool)

(declare-fun e!1453695 () Bool)

(assert (=> b!2269679 (= e!1453693 (and tp!718355 (inv!36530 (tag!4791 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (inv!36533 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) e!1453695))))

(declare-fun e!1453696 () Bool)

(declare-fun tp!718356 () Bool)

(declare-fun b!2269677 () Bool)

(declare-fun e!1453694 () Bool)

(assert (=> b!2269677 (= e!1453694 (and (inv!36534 (h!32387 (t!202388 (t!202388 tokens!456)))) e!1453696 tp!718356))))

(declare-fun tp!718354 () Bool)

(declare-fun b!2269678 () Bool)

(assert (=> b!2269678 (= e!1453696 (and (inv!21 (value!136398 (h!32387 (t!202388 (t!202388 tokens!456))))) e!1453693 tp!718354))))

(assert (=> b!2269680 (= e!1453695 (and tp!718357 tp!718358))))

(assert (=> b!2269407 (= tp!718284 e!1453694)))

(assert (= b!2269679 b!2269680))

(assert (= b!2269678 b!2269679))

(assert (= b!2269677 b!2269678))

(assert (= (and b!2269407 ((_ is Cons!26986) (t!202388 (t!202388 tokens!456)))) b!2269677))

(declare-fun m!2698755 () Bool)

(assert (=> b!2269679 m!2698755))

(declare-fun m!2698757 () Bool)

(assert (=> b!2269679 m!2698757))

(declare-fun m!2698759 () Bool)

(assert (=> b!2269677 m!2698759))

(declare-fun m!2698761 () Bool)

(assert (=> b!2269678 m!2698761))

(declare-fun b!2269681 () Bool)

(declare-fun e!1453699 () Bool)

(assert (=> b!2269681 (= e!1453699 tp_is_empty!10519)))

(declare-fun b!2269683 () Bool)

(declare-fun tp!718362 () Bool)

(assert (=> b!2269683 (= e!1453699 tp!718362)))

(declare-fun b!2269684 () Bool)

(declare-fun tp!718359 () Bool)

(declare-fun tp!718360 () Bool)

(assert (=> b!2269684 (= e!1453699 (and tp!718359 tp!718360))))

(assert (=> b!2269412 (= tp!718291 e!1453699)))

(declare-fun b!2269682 () Bool)

(declare-fun tp!718363 () Bool)

(declare-fun tp!718361 () Bool)

(assert (=> b!2269682 (= e!1453699 (and tp!718363 tp!718361))))

(assert (= (and b!2269412 ((_ is ElementMatch!6649) (regOne!13810 (regex!4301 r!2363)))) b!2269681))

(assert (= (and b!2269412 ((_ is Concat!11113) (regOne!13810 (regex!4301 r!2363)))) b!2269682))

(assert (= (and b!2269412 ((_ is Star!6649) (regOne!13810 (regex!4301 r!2363)))) b!2269683))

(assert (= (and b!2269412 ((_ is Union!6649) (regOne!13810 (regex!4301 r!2363)))) b!2269684))

(declare-fun b!2269685 () Bool)

(declare-fun e!1453700 () Bool)

(assert (=> b!2269685 (= e!1453700 tp_is_empty!10519)))

(declare-fun b!2269687 () Bool)

(declare-fun tp!718367 () Bool)

(assert (=> b!2269687 (= e!1453700 tp!718367)))

(declare-fun b!2269688 () Bool)

(declare-fun tp!718364 () Bool)

(declare-fun tp!718365 () Bool)

(assert (=> b!2269688 (= e!1453700 (and tp!718364 tp!718365))))

(assert (=> b!2269412 (= tp!718289 e!1453700)))

(declare-fun b!2269686 () Bool)

(declare-fun tp!718368 () Bool)

(declare-fun tp!718366 () Bool)

(assert (=> b!2269686 (= e!1453700 (and tp!718368 tp!718366))))

(assert (= (and b!2269412 ((_ is ElementMatch!6649) (regTwo!13810 (regex!4301 r!2363)))) b!2269685))

(assert (= (and b!2269412 ((_ is Concat!11113) (regTwo!13810 (regex!4301 r!2363)))) b!2269686))

(assert (= (and b!2269412 ((_ is Star!6649) (regTwo!13810 (regex!4301 r!2363)))) b!2269687))

(assert (= (and b!2269412 ((_ is Union!6649) (regTwo!13810 (regex!4301 r!2363)))) b!2269688))

(declare-fun b!2269689 () Bool)

(declare-fun e!1453701 () Bool)

(assert (=> b!2269689 (= e!1453701 tp_is_empty!10519)))

(declare-fun b!2269691 () Bool)

(declare-fun tp!718372 () Bool)

(assert (=> b!2269691 (= e!1453701 tp!718372)))

(declare-fun b!2269692 () Bool)

(declare-fun tp!718369 () Bool)

(declare-fun tp!718370 () Bool)

(assert (=> b!2269692 (= e!1453701 (and tp!718369 tp!718370))))

(assert (=> b!2269392 (= tp!718268 e!1453701)))

(declare-fun b!2269690 () Bool)

(declare-fun tp!718373 () Bool)

(declare-fun tp!718371 () Bool)

(assert (=> b!2269690 (= e!1453701 (and tp!718373 tp!718371))))

(assert (= (and b!2269392 ((_ is ElementMatch!6649) (regex!4301 (h!32386 (t!202387 rules!1750))))) b!2269689))

(assert (= (and b!2269392 ((_ is Concat!11113) (regex!4301 (h!32386 (t!202387 rules!1750))))) b!2269690))

(assert (= (and b!2269392 ((_ is Star!6649) (regex!4301 (h!32386 (t!202387 rules!1750))))) b!2269691))

(assert (= (and b!2269392 ((_ is Union!6649) (regex!4301 (h!32386 (t!202387 rules!1750))))) b!2269692))

(declare-fun b!2269697 () Bool)

(declare-fun b_free!67425 () Bool)

(declare-fun b_next!68129 () Bool)

(assert (=> b!2269697 (= b_free!67425 (not b_next!68129))))

(declare-fun tp!718375 () Bool)

(declare-fun b_and!178801 () Bool)

(assert (=> b!2269697 (= tp!718375 b_and!178801)))

(declare-fun b_free!67427 () Bool)

(declare-fun b_next!68131 () Bool)

(assert (=> b!2269697 (= b_free!67427 (not b_next!68131))))

(declare-fun t!202463 () Bool)

(declare-fun tb!134673 () Bool)

(assert (=> (and b!2269697 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456))))) t!202463) tb!134673))

(declare-fun result!164200 () Bool)

(assert (= result!164200 result!164114))

(assert (=> d!671678 t!202463))

(declare-fun t!202465 () Bool)

(declare-fun tb!134675 () Bool)

(assert (=> (and b!2269697 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456))))) t!202465) tb!134675))

(declare-fun result!164202 () Bool)

(assert (= result!164202 result!164158))

(assert (=> b!2269346 t!202465))

(declare-fun t!202467 () Bool)

(declare-fun tb!134677 () Bool)

(assert (=> (and b!2269697 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456)))))) t!202467) tb!134677))

(declare-fun result!164204 () Bool)

(assert (= result!164204 result!164182))

(assert (=> b!2269443 t!202467))

(declare-fun b_and!178803 () Bool)

(declare-fun tp!718376 () Bool)

(assert (=> b!2269697 (= tp!718376 (and (=> t!202463 result!164200) (=> t!202465 result!164202) (=> t!202467 result!164204) b_and!178803))))

(declare-fun e!1453706 () Bool)

(assert (=> b!2269697 (= e!1453706 (and tp!718375 tp!718376))))

(declare-fun b!2269696 () Bool)

(declare-fun tp!718377 () Bool)

(declare-fun e!1453707 () Bool)

(assert (=> b!2269696 (= e!1453707 (and tp!718377 (inv!36530 (tag!4791 (h!32386 (t!202387 (t!202387 rules!1750))))) (inv!36533 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) e!1453706))))

(declare-fun b!2269695 () Bool)

(declare-fun e!1453705 () Bool)

(declare-fun tp!718374 () Bool)

(assert (=> b!2269695 (= e!1453705 (and e!1453707 tp!718374))))

(assert (=> b!2269391 (= tp!718265 e!1453705)))

(assert (= b!2269696 b!2269697))

(assert (= b!2269695 b!2269696))

(assert (= (and b!2269391 ((_ is Cons!26985) (t!202387 (t!202387 rules!1750)))) b!2269695))

(declare-fun m!2698771 () Bool)

(assert (=> b!2269696 m!2698771))

(declare-fun m!2698773 () Bool)

(assert (=> b!2269696 m!2698773))

(declare-fun tp!718386 () Bool)

(declare-fun b!2269710 () Bool)

(declare-fun tp!718385 () Bool)

(declare-fun e!1453716 () Bool)

(assert (=> b!2269710 (= e!1453716 (and (inv!36537 (left!20473 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))) tp!718385 (inv!36537 (right!20803 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))) tp!718386))))

(declare-fun b!2269714 () Bool)

(declare-fun e!1453717 () Bool)

(declare-fun tp!718384 () Bool)

(assert (=> b!2269714 (= e!1453717 tp!718384)))

(declare-fun b!2269712 () Bool)

(declare-fun inv!36543 (IArray!17505) Bool)

(assert (=> b!2269712 (= e!1453716 (and (inv!36543 (xs!11692 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))) e!1453717))))

(assert (=> b!2269348 (= tp!718238 (and (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456))))) e!1453716))))

(assert (= (and b!2269348 ((_ is Node!8750) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))) b!2269710))

(assert (= b!2269712 b!2269714))

(assert (= (and b!2269348 ((_ is Leaf!12886) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (value!136398 (h!32387 tokens!456)))))) b!2269712))

(declare-fun m!2698777 () Bool)

(assert (=> b!2269710 m!2698777))

(declare-fun m!2698781 () Bool)

(assert (=> b!2269710 m!2698781))

(declare-fun m!2698783 () Bool)

(assert (=> b!2269712 m!2698783))

(assert (=> b!2269348 m!2698255))

(declare-fun b!2269715 () Bool)

(declare-fun e!1453720 () Bool)

(assert (=> b!2269715 (= e!1453720 tp_is_empty!10519)))

(declare-fun b!2269717 () Bool)

(declare-fun tp!718390 () Bool)

(assert (=> b!2269717 (= e!1453720 tp!718390)))

(declare-fun b!2269718 () Bool)

(declare-fun tp!718387 () Bool)

(declare-fun tp!718388 () Bool)

(assert (=> b!2269718 (= e!1453720 (and tp!718387 tp!718388))))

(assert (=> b!2269420 (= tp!718301 e!1453720)))

(declare-fun b!2269716 () Bool)

(declare-fun tp!718391 () Bool)

(declare-fun tp!718389 () Bool)

(assert (=> b!2269716 (= e!1453720 (and tp!718391 tp!718389))))

(assert (= (and b!2269420 ((_ is ElementMatch!6649) (regOne!13810 (regex!4301 (h!32386 rules!1750))))) b!2269715))

(assert (= (and b!2269420 ((_ is Concat!11113) (regOne!13810 (regex!4301 (h!32386 rules!1750))))) b!2269716))

(assert (= (and b!2269420 ((_ is Star!6649) (regOne!13810 (regex!4301 (h!32386 rules!1750))))) b!2269717))

(assert (= (and b!2269420 ((_ is Union!6649) (regOne!13810 (regex!4301 (h!32386 rules!1750))))) b!2269718))

(declare-fun b!2269720 () Bool)

(declare-fun e!1453722 () Bool)

(assert (=> b!2269720 (= e!1453722 tp_is_empty!10519)))

(declare-fun b!2269722 () Bool)

(declare-fun tp!718395 () Bool)

(assert (=> b!2269722 (= e!1453722 tp!718395)))

(declare-fun b!2269723 () Bool)

(declare-fun tp!718392 () Bool)

(declare-fun tp!718393 () Bool)

(assert (=> b!2269723 (= e!1453722 (and tp!718392 tp!718393))))

(assert (=> b!2269420 (= tp!718299 e!1453722)))

(declare-fun b!2269721 () Bool)

(declare-fun tp!718396 () Bool)

(declare-fun tp!718394 () Bool)

(assert (=> b!2269721 (= e!1453722 (and tp!718396 tp!718394))))

(assert (= (and b!2269420 ((_ is ElementMatch!6649) (regTwo!13810 (regex!4301 (h!32386 rules!1750))))) b!2269720))

(assert (= (and b!2269420 ((_ is Concat!11113) (regTwo!13810 (regex!4301 (h!32386 rules!1750))))) b!2269721))

(assert (= (and b!2269420 ((_ is Star!6649) (regTwo!13810 (regex!4301 (h!32386 rules!1750))))) b!2269722))

(assert (= (and b!2269420 ((_ is Union!6649) (regTwo!13810 (regex!4301 (h!32386 rules!1750))))) b!2269723))

(declare-fun b!2269724 () Bool)

(declare-fun e!1453723 () Bool)

(declare-fun tp!718397 () Bool)

(assert (=> b!2269724 (= e!1453723 (and tp_is_empty!10519 tp!718397))))

(assert (=> b!2269396 (= tp!718271 e!1453723)))

(assert (= (and b!2269396 ((_ is Cons!26984) (t!202386 (t!202386 otherP!12)))) b!2269724))

(declare-fun tp!718399 () Bool)

(declare-fun b!2269725 () Bool)

(declare-fun tp!718400 () Bool)

(declare-fun e!1453724 () Bool)

(assert (=> b!2269725 (= e!1453724 (and (inv!36537 (left!20473 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))) tp!718399 (inv!36537 (right!20803 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))) tp!718400))))

(declare-fun b!2269727 () Bool)

(declare-fun e!1453725 () Bool)

(declare-fun tp!718398 () Bool)

(assert (=> b!2269727 (= e!1453725 tp!718398)))

(declare-fun b!2269726 () Bool)

(assert (=> b!2269726 (= e!1453724 (and (inv!36543 (xs!11692 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))) e!1453725))))

(assert (=> b!2269158 (= tp!718170 (and (inv!36537 (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456))))) e!1453724))))

(assert (= (and b!2269158 ((_ is Node!8750) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))) b!2269725))

(assert (= b!2269726 b!2269727))

(assert (= (and b!2269158 ((_ is Leaf!12886) (c!360296 (dynLambda!11691 (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))) (value!136398 (head!4892 tokens!456)))))) b!2269726))

(declare-fun m!2698789 () Bool)

(assert (=> b!2269725 m!2698789))

(declare-fun m!2698791 () Bool)

(assert (=> b!2269725 m!2698791))

(declare-fun m!2698793 () Bool)

(assert (=> b!2269726 m!2698793))

(assert (=> b!2269158 m!2698091))

(declare-fun b!2269728 () Bool)

(declare-fun e!1453726 () Bool)

(declare-fun tp!718401 () Bool)

(assert (=> b!2269728 (= e!1453726 (and tp_is_empty!10519 tp!718401))))

(assert (=> b!2269395 (= tp!718270 e!1453726)))

(assert (= (and b!2269395 ((_ is Cons!26984) (t!202386 (originalCharacters!5071 (h!32387 tokens!456))))) b!2269728))

(declare-fun b!2269729 () Bool)

(declare-fun e!1453727 () Bool)

(assert (=> b!2269729 (= e!1453727 tp_is_empty!10519)))

(declare-fun b!2269731 () Bool)

(declare-fun tp!718405 () Bool)

(assert (=> b!2269731 (= e!1453727 tp!718405)))

(declare-fun b!2269732 () Bool)

(declare-fun tp!718402 () Bool)

(declare-fun tp!718403 () Bool)

(assert (=> b!2269732 (= e!1453727 (and tp!718402 tp!718403))))

(assert (=> b!2269418 (= tp!718292 e!1453727)))

(declare-fun b!2269730 () Bool)

(declare-fun tp!718406 () Bool)

(declare-fun tp!718404 () Bool)

(assert (=> b!2269730 (= e!1453727 (and tp!718406 tp!718404))))

(assert (= (and b!2269418 ((_ is ElementMatch!6649) (regOne!13811 (regex!4301 otherR!12)))) b!2269729))

(assert (= (and b!2269418 ((_ is Concat!11113) (regOne!13811 (regex!4301 otherR!12)))) b!2269730))

(assert (= (and b!2269418 ((_ is Star!6649) (regOne!13811 (regex!4301 otherR!12)))) b!2269731))

(assert (= (and b!2269418 ((_ is Union!6649) (regOne!13811 (regex!4301 otherR!12)))) b!2269732))

(declare-fun b!2269733 () Bool)

(declare-fun e!1453728 () Bool)

(assert (=> b!2269733 (= e!1453728 tp_is_empty!10519)))

(declare-fun b!2269735 () Bool)

(declare-fun tp!718410 () Bool)

(assert (=> b!2269735 (= e!1453728 tp!718410)))

(declare-fun b!2269736 () Bool)

(declare-fun tp!718407 () Bool)

(declare-fun tp!718408 () Bool)

(assert (=> b!2269736 (= e!1453728 (and tp!718407 tp!718408))))

(assert (=> b!2269418 (= tp!718293 e!1453728)))

(declare-fun b!2269734 () Bool)

(declare-fun tp!718411 () Bool)

(declare-fun tp!718409 () Bool)

(assert (=> b!2269734 (= e!1453728 (and tp!718411 tp!718409))))

(assert (= (and b!2269418 ((_ is ElementMatch!6649) (regTwo!13811 (regex!4301 otherR!12)))) b!2269733))

(assert (= (and b!2269418 ((_ is Concat!11113) (regTwo!13811 (regex!4301 otherR!12)))) b!2269734))

(assert (= (and b!2269418 ((_ is Star!6649) (regTwo!13811 (regex!4301 otherR!12)))) b!2269735))

(assert (= (and b!2269418 ((_ is Union!6649) (regTwo!13811 (regex!4301 otherR!12)))) b!2269736))

(declare-fun b!2269737 () Bool)

(declare-fun e!1453729 () Bool)

(assert (=> b!2269737 (= e!1453729 tp_is_empty!10519)))

(declare-fun b!2269739 () Bool)

(declare-fun tp!718415 () Bool)

(assert (=> b!2269739 (= e!1453729 tp!718415)))

(declare-fun b!2269740 () Bool)

(declare-fun tp!718412 () Bool)

(declare-fun tp!718413 () Bool)

(assert (=> b!2269740 (= e!1453729 (and tp!718412 tp!718413))))

(assert (=> b!2269416 (= tp!718296 e!1453729)))

(declare-fun b!2269738 () Bool)

(declare-fun tp!718416 () Bool)

(declare-fun tp!718414 () Bool)

(assert (=> b!2269738 (= e!1453729 (and tp!718416 tp!718414))))

(assert (= (and b!2269416 ((_ is ElementMatch!6649) (regOne!13810 (regex!4301 otherR!12)))) b!2269737))

(assert (= (and b!2269416 ((_ is Concat!11113) (regOne!13810 (regex!4301 otherR!12)))) b!2269738))

(assert (= (and b!2269416 ((_ is Star!6649) (regOne!13810 (regex!4301 otherR!12)))) b!2269739))

(assert (= (and b!2269416 ((_ is Union!6649) (regOne!13810 (regex!4301 otherR!12)))) b!2269740))

(declare-fun b!2269741 () Bool)

(declare-fun e!1453730 () Bool)

(assert (=> b!2269741 (= e!1453730 tp_is_empty!10519)))

(declare-fun b!2269743 () Bool)

(declare-fun tp!718420 () Bool)

(assert (=> b!2269743 (= e!1453730 tp!718420)))

(declare-fun b!2269744 () Bool)

(declare-fun tp!718417 () Bool)

(declare-fun tp!718418 () Bool)

(assert (=> b!2269744 (= e!1453730 (and tp!718417 tp!718418))))

(assert (=> b!2269416 (= tp!718294 e!1453730)))

(declare-fun b!2269742 () Bool)

(declare-fun tp!718421 () Bool)

(declare-fun tp!718419 () Bool)

(assert (=> b!2269742 (= e!1453730 (and tp!718421 tp!718419))))

(assert (= (and b!2269416 ((_ is ElementMatch!6649) (regTwo!13810 (regex!4301 otherR!12)))) b!2269741))

(assert (= (and b!2269416 ((_ is Concat!11113) (regTwo!13810 (regex!4301 otherR!12)))) b!2269742))

(assert (= (and b!2269416 ((_ is Star!6649) (regTwo!13810 (regex!4301 otherR!12)))) b!2269743))

(assert (= (and b!2269416 ((_ is Union!6649) (regTwo!13810 (regex!4301 otherR!12)))) b!2269744))

(declare-fun b!2269745 () Bool)

(declare-fun e!1453731 () Bool)

(assert (=> b!2269745 (= e!1453731 tp_is_empty!10519)))

(declare-fun b!2269747 () Bool)

(declare-fun tp!718425 () Bool)

(assert (=> b!2269747 (= e!1453731 tp!718425)))

(declare-fun b!2269748 () Bool)

(declare-fun tp!718422 () Bool)

(declare-fun tp!718423 () Bool)

(assert (=> b!2269748 (= e!1453731 (and tp!718422 tp!718423))))

(assert (=> b!2269417 (= tp!718295 e!1453731)))

(declare-fun b!2269746 () Bool)

(declare-fun tp!718426 () Bool)

(declare-fun tp!718424 () Bool)

(assert (=> b!2269746 (= e!1453731 (and tp!718426 tp!718424))))

(assert (= (and b!2269417 ((_ is ElementMatch!6649) (reg!6978 (regex!4301 otherR!12)))) b!2269745))

(assert (= (and b!2269417 ((_ is Concat!11113) (reg!6978 (regex!4301 otherR!12)))) b!2269746))

(assert (= (and b!2269417 ((_ is Star!6649) (reg!6978 (regex!4301 otherR!12)))) b!2269747))

(assert (= (and b!2269417 ((_ is Union!6649) (reg!6978 (regex!4301 otherR!12)))) b!2269748))

(declare-fun b!2269749 () Bool)

(declare-fun e!1453732 () Bool)

(declare-fun tp!718427 () Bool)

(assert (=> b!2269749 (= e!1453732 (and tp_is_empty!10519 tp!718427))))

(assert (=> b!2269368 (= tp!718241 e!1453732)))

(assert (= (and b!2269368 ((_ is Cons!26984) (t!202386 (t!202386 suffix!886)))) b!2269749))

(declare-fun b!2269750 () Bool)

(declare-fun e!1453733 () Bool)

(declare-fun tp!718428 () Bool)

(assert (=> b!2269750 (= e!1453733 (and tp_is_empty!10519 tp!718428))))

(assert (=> b!2269394 (= tp!718269 e!1453733)))

(assert (= (and b!2269394 ((_ is Cons!26984) (t!202386 (t!202386 input!1722)))) b!2269750))

(declare-fun b!2269751 () Bool)

(declare-fun e!1453734 () Bool)

(assert (=> b!2269751 (= e!1453734 tp_is_empty!10519)))

(declare-fun b!2269753 () Bool)

(declare-fun tp!718432 () Bool)

(assert (=> b!2269753 (= e!1453734 tp!718432)))

(declare-fun b!2269754 () Bool)

(declare-fun tp!718429 () Bool)

(declare-fun tp!718430 () Bool)

(assert (=> b!2269754 (= e!1453734 (and tp!718429 tp!718430))))

(assert (=> b!2269382 (= tp!718252 e!1453734)))

(declare-fun b!2269752 () Bool)

(declare-fun tp!718433 () Bool)

(declare-fun tp!718431 () Bool)

(assert (=> b!2269752 (= e!1453734 (and tp!718433 tp!718431))))

(assert (= (and b!2269382 ((_ is ElementMatch!6649) (regOne!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269751))

(assert (= (and b!2269382 ((_ is Concat!11113) (regOne!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269752))

(assert (= (and b!2269382 ((_ is Star!6649) (regOne!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269753))

(assert (= (and b!2269382 ((_ is Union!6649) (regOne!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269754))

(declare-fun b!2269755 () Bool)

(declare-fun e!1453735 () Bool)

(assert (=> b!2269755 (= e!1453735 tp_is_empty!10519)))

(declare-fun b!2269757 () Bool)

(declare-fun tp!718437 () Bool)

(assert (=> b!2269757 (= e!1453735 tp!718437)))

(declare-fun b!2269758 () Bool)

(declare-fun tp!718434 () Bool)

(declare-fun tp!718435 () Bool)

(assert (=> b!2269758 (= e!1453735 (and tp!718434 tp!718435))))

(assert (=> b!2269382 (= tp!718253 e!1453735)))

(declare-fun b!2269756 () Bool)

(declare-fun tp!718438 () Bool)

(declare-fun tp!718436 () Bool)

(assert (=> b!2269756 (= e!1453735 (and tp!718438 tp!718436))))

(assert (= (and b!2269382 ((_ is ElementMatch!6649) (regTwo!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269755))

(assert (= (and b!2269382 ((_ is Concat!11113) (regTwo!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269756))

(assert (= (and b!2269382 ((_ is Star!6649) (regTwo!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269757))

(assert (= (and b!2269382 ((_ is Union!6649) (regTwo!13811 (regex!4301 (rule!6619 (h!32387 tokens!456)))))) b!2269758))

(declare-fun b_lambda!72331 () Bool)

(assert (= b_lambda!72325 (or (and b!2269410 b_free!67419) (and b!2269697 b_free!67427 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269123 b_free!67395 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269117 b_free!67403 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269680 b_free!67423 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269116 b_free!67399 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269393 b_free!67415 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) (and b!2269134 b_free!67391 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))))) b_lambda!72331)))

(declare-fun b_lambda!72333 () Bool)

(assert (= b_lambda!72313 (or (and b!2269134 b_free!67391 (= (toChars!5918 (transformation!4301 (h!32386 rules!1750))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269680 b_free!67423 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 (t!202388 tokens!456)))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269123 b_free!67395 (= (toChars!5918 (transformation!4301 r!2363)) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269697 b_free!67427 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 (t!202387 rules!1750))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269410 b_free!67419 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 (t!202388 tokens!456))))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269116 b_free!67399 (= (toChars!5918 (transformation!4301 (rule!6619 (h!32387 tokens!456)))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269117 b_free!67403 (= (toChars!5918 (transformation!4301 otherR!12)) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) (and b!2269393 b_free!67415 (= (toChars!5918 (transformation!4301 (h!32386 (t!202387 rules!1750)))) (toChars!5918 (transformation!4301 (rule!6619 (head!4892 tokens!456)))))) b_lambda!72333)))

(declare-fun b_lambda!72335 () Bool)

(assert (= b_lambda!72327 (or d!671686 b_lambda!72335)))

(declare-fun bs!455921 () Bool)

(declare-fun d!671948 () Bool)

(assert (= bs!455921 (and d!671948 d!671686)))

(assert (=> bs!455921 (= (dynLambda!11699 lambda!85431 (h!32386 rules!1750)) (ruleValid!1391 thiss!16613 (h!32386 rules!1750)))))

(assert (=> bs!455921 m!2698159))

(assert (=> b!2269482 d!671948))

(check-sat (not b!2269735) (not d!671900) (not b!2269749) (not b!2269666) (not b!2269581) (not b!2269683) (not b!2269661) (not b!2269586) (not b!2269500) (not b!2269670) (not b!2269442) (not b!2269637) (not b_next!68099) (not b_lambda!72333) (not d!671916) (not d!671864) (not d!671910) (not b!2269659) (not b!2269622) (not b!2269491) (not b!2269684) (not d!671870) (not b!2269718) (not d!671926) (not b!2269499) (not b!2269541) (not b!2269620) (not d!671772) (not b_next!68097) (not b_next!68123) (not b!2269639) (not d!671914) (not b!2269435) (not b!2269734) (not b!2269641) (not b!2269716) (not b!2269690) (not b!2269520) b_and!178793 (not b!2269445) (not b!2269444) (not d!671834) b_and!178795 (not b_next!68129) (not b!2269427) (not bs!455921) (not b!2269473) (not b!2269673) b_and!178785 (not d!671908) (not b!2269498) (not b!2269674) (not b!2269428) (not b!2269660) (not b!2269677) (not b!2269640) (not b!2269580) (not b!2269454) (not b!2269655) (not b_next!68105) (not b!2269696) (not b!2269739) (not b_next!68125) (not b!2269730) (not d!671924) (not d!671788) (not b!2269743) (not tb!134655) (not b!2269496) (not b_next!68095) (not b!2269434) (not b!2269732) (not b_next!68101) (not b_lambda!72323) (not b!2269645) (not b!2269756) b_and!178725 (not d!671918) (not d!671762) (not d!671922) (not b!2269679) (not d!671820) (not b!2269643) (not b!2269456) (not d!671912) b_and!178801 (not b!2269438) (not b!2269464) (not b!2269542) (not b!2269752) (not d!671780) (not d!671782) (not b!2269664) (not b!2269747) (not b!2269717) (not d!671906) (not b!2269678) (not b!2269632) (not b!2269758) b_and!178791 (not b!2269682) (not b!2269731) (not b_next!68127) (not b!2269688) (not b!2269744) b_and!178729 (not b_lambda!72331) (not d!671768) (not b!2269526) (not d!671810) (not b!2269757) (not b!2269443) (not b_lambda!72335) (not d!671930) (not b!2269644) (not b_next!68103) (not b!2269724) (not d!671802) b_and!178803 (not b!2269691) (not b!2269748) (not b_next!68131) (not b!2269686) (not d!671934) (not b_next!68121) (not b!2269616) (not d!671778) (not b!2269475) b_and!178797 (not b!2269588) (not b!2269742) (not d!671902) b_and!178799 tp_is_empty!10519 (not b!2269633) (not b!2269648) (not b!2269672) (not b!2269440) (not b!2269710) (not d!671874) (not b_next!68119) (not b!2269348) (not b!2269722) (not b!2269736) (not b!2269721) (not d!671920) (not b!2269494) (not b!2269492) b_and!178733 (not b!2269582) (not b!2269649) b_and!178777 (not b!2269663) (not d!671904) (not b!2269483) (not b!2269723) b_and!178781 (not b!2269726) (not b!2269519) (not d!671776) (not b!2269714) (not b!2269615) (not b!2269753) (not b!2269636) (not b!2269692) (not b_next!68117) (not b_next!68093) (not b!2269613) b_and!178721 (not b!2269657) (not b!2269437) (not b!2269665) (not b!2269669) (not b!2269441) (not b!2269635) (not d!671774) (not b!2269158) (not d!671812) (not b!2269695) (not b!2269754) (not b!2269738) b_and!178787 (not b!2269647) (not d!671872) (not b!2269687) (not b_next!68107) (not b!2269668) (not b!2269631) b_and!178789 (not b!2269725) (not b!2269746) (not b!2269712) (not b!2269740) (not d!671836) (not b!2269656) (not b!2269727) (not b!2269750) (not b!2269728))
(check-sat (not b_next!68099) b_and!178793 b_and!178785 b_and!178725 b_and!178801 b_and!178791 (not b_next!68119) b_and!178733 b_and!178777 b_and!178781 b_and!178721 b_and!178787 (not b_next!68097) (not b_next!68123) b_and!178795 (not b_next!68129) (not b_next!68105) (not b_next!68125) (not b_next!68095) (not b_next!68101) (not b_next!68127) b_and!178729 (not b_next!68131) (not b_next!68103) b_and!178803 (not b_next!68121) b_and!178797 b_and!178799 (not b_next!68117) (not b_next!68093) (not b_next!68107) b_and!178789)
