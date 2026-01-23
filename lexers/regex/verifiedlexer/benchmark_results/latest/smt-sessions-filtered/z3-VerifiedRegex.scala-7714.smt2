; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405350 () Bool)

(assert start!405350)

(declare-fun b!4236289 () Bool)

(declare-fun b_free!125191 () Bool)

(declare-fun b_next!125895 () Bool)

(assert (=> b!4236289 (= b_free!125191 (not b_next!125895))))

(declare-fun tp!1297604 () Bool)

(declare-fun b_and!334613 () Bool)

(assert (=> b!4236289 (= tp!1297604 b_and!334613)))

(declare-fun b_free!125193 () Bool)

(declare-fun b_next!125897 () Bool)

(assert (=> b!4236289 (= b_free!125193 (not b_next!125897))))

(declare-fun tp!1297609 () Bool)

(declare-fun b_and!334615 () Bool)

(assert (=> b!4236289 (= tp!1297609 b_and!334615)))

(declare-fun b!4236291 () Bool)

(declare-fun b_free!125195 () Bool)

(declare-fun b_next!125899 () Bool)

(assert (=> b!4236291 (= b_free!125195 (not b_next!125899))))

(declare-fun tp!1297613 () Bool)

(declare-fun b_and!334617 () Bool)

(assert (=> b!4236291 (= tp!1297613 b_and!334617)))

(declare-fun b_free!125197 () Bool)

(declare-fun b_next!125901 () Bool)

(assert (=> b!4236291 (= b_free!125197 (not b_next!125901))))

(declare-fun tp!1297606 () Bool)

(declare-fun b_and!334619 () Bool)

(assert (=> b!4236291 (= tp!1297606 b_and!334619)))

(declare-fun b!4236292 () Bool)

(declare-fun b_free!125199 () Bool)

(declare-fun b_next!125903 () Bool)

(assert (=> b!4236292 (= b_free!125199 (not b_next!125903))))

(declare-fun tp!1297605 () Bool)

(declare-fun b_and!334621 () Bool)

(assert (=> b!4236292 (= tp!1297605 b_and!334621)))

(declare-fun b_free!125201 () Bool)

(declare-fun b_next!125905 () Bool)

(assert (=> b!4236292 (= b_free!125201 (not b_next!125905))))

(declare-fun tp!1297620 () Bool)

(declare-fun b_and!334623 () Bool)

(assert (=> b!4236292 (= tp!1297620 b_and!334623)))

(declare-fun b!4236282 () Bool)

(declare-fun res!1742271 () Bool)

(declare-fun e!2630565 () Bool)

(assert (=> b!4236282 (=> (not res!1742271) (not e!2630565))))

(declare-datatypes ((List!46942 0))(
  ( (Nil!46818) (Cons!46818 (h!52238 (_ BitVec 16)) (t!349789 List!46942)) )
))
(declare-datatypes ((TokenValue!8142 0))(
  ( (FloatLiteralValue!16284 (text!57439 List!46942)) (TokenValueExt!8141 (__x!28507 Int)) (Broken!40710 (value!246002 List!46942)) (Object!8265) (End!8142) (Def!8142) (Underscore!8142) (Match!8142) (Else!8142) (Error!8142) (Case!8142) (If!8142) (Extends!8142) (Abstract!8142) (Class!8142) (Val!8142) (DelimiterValue!16284 (del!8202 List!46942)) (KeywordValue!8148 (value!246003 List!46942)) (CommentValue!16284 (value!246004 List!46942)) (WhitespaceValue!16284 (value!246005 List!46942)) (IndentationValue!8142 (value!246006 List!46942)) (String!54639) (Int32!8142) (Broken!40711 (value!246007 List!46942)) (Boolean!8143) (Unit!65932) (OperatorValue!8145 (op!8202 List!46942)) (IdentifierValue!16284 (value!246008 List!46942)) (IdentifierValue!16285 (value!246009 List!46942)) (WhitespaceValue!16285 (value!246010 List!46942)) (True!16284) (False!16284) (Broken!40712 (value!246011 List!46942)) (Broken!40713 (value!246012 List!46942)) (True!16285) (RightBrace!8142) (RightBracket!8142) (Colon!8142) (Null!8142) (Comma!8142) (LeftBracket!8142) (False!16285) (LeftBrace!8142) (ImaginaryLiteralValue!8142 (text!57440 List!46942)) (StringLiteralValue!24426 (value!246013 List!46942)) (EOFValue!8142 (value!246014 List!46942)) (IdentValue!8142 (value!246015 List!46942)) (DelimiterValue!16285 (value!246016 List!46942)) (DedentValue!8142 (value!246017 List!46942)) (NewLineValue!8142 (value!246018 List!46942)) (IntegerValue!24426 (value!246019 (_ BitVec 32)) (text!57441 List!46942)) (IntegerValue!24427 (value!246020 Int) (text!57442 List!46942)) (Times!8142) (Or!8142) (Equal!8142) (Minus!8142) (Broken!40714 (value!246021 List!46942)) (And!8142) (Div!8142) (LessEqual!8142) (Mod!8142) (Concat!20959) (Not!8142) (Plus!8142) (SpaceValue!8142 (value!246022 List!46942)) (IntegerValue!24428 (value!246023 Int) (text!57443 List!46942)) (StringLiteralValue!24427 (text!57444 List!46942)) (FloatLiteralValue!16285 (text!57445 List!46942)) (BytesLiteralValue!8142 (value!246024 List!46942)) (CommentValue!16285 (value!246025 List!46942)) (StringLiteralValue!24428 (value!246026 List!46942)) (ErrorTokenValue!8142 (msg!8203 List!46942)) )
))
(declare-datatypes ((C!25832 0))(
  ( (C!25833 (val!15106 Int)) )
))
(declare-datatypes ((Regex!12817 0))(
  ( (ElementMatch!12817 (c!719980 C!25832)) (Concat!20960 (regOne!26146 Regex!12817) (regTwo!26146 Regex!12817)) (EmptyExpr!12817) (Star!12817 (reg!13146 Regex!12817)) (EmptyLang!12817) (Union!12817 (regOne!26147 Regex!12817) (regTwo!26147 Regex!12817)) )
))
(declare-datatypes ((String!54640 0))(
  ( (String!54641 (value!246027 String)) )
))
(declare-datatypes ((List!46943 0))(
  ( (Nil!46819) (Cons!46819 (h!52239 C!25832) (t!349790 List!46943)) )
))
(declare-datatypes ((IArray!28251 0))(
  ( (IArray!28252 (innerList!14183 List!46943)) )
))
(declare-datatypes ((Conc!14123 0))(
  ( (Node!14123 (left!34813 Conc!14123) (right!35143 Conc!14123) (csize!28476 Int) (cheight!14334 Int)) (Leaf!21838 (xs!17429 IArray!28251) (csize!28477 Int)) (Empty!14123) )
))
(declare-datatypes ((BalanceConc!27840 0))(
  ( (BalanceConc!27841 (c!719981 Conc!14123)) )
))
(declare-datatypes ((TokenValueInjection!15712 0))(
  ( (TokenValueInjection!15713 (toValue!10656 Int) (toChars!10515 Int)) )
))
(declare-datatypes ((Rule!15624 0))(
  ( (Rule!15625 (regex!7912 Regex!12817) (tag!8776 String!54640) (isSeparator!7912 Bool) (transformation!7912 TokenValueInjection!15712)) )
))
(declare-datatypes ((Token!14450 0))(
  ( (Token!14451 (value!246028 TokenValue!8142) (rule!11036 Rule!15624) (size!34299 Int) (originalCharacters!8256 List!46943)) )
))
(declare-datatypes ((List!46944 0))(
  ( (Nil!46820) (Cons!46820 (h!52240 Token!14450) (t!349791 List!46944)) )
))
(declare-fun addTokens!17 () List!46944)

(declare-fun isEmpty!27665 (List!46944) Bool)

(assert (=> b!4236282 (= res!1742271 (not (isEmpty!27665 addTokens!17)))))

(declare-fun b!4236283 () Bool)

(declare-fun res!1742270 () Bool)

(assert (=> b!4236283 (=> (not res!1742270) (not e!2630565))))

(declare-fun size!34300 (List!46944) Int)

(assert (=> b!4236283 (= res!1742270 (> (size!34300 addTokens!17) 0))))

(declare-fun b!4236284 () Bool)

(declare-fun res!1742268 () Bool)

(assert (=> b!4236284 (=> (not res!1742268) (not e!2630565))))

(declare-datatypes ((LexerInterface!7507 0))(
  ( (LexerInterfaceExt!7504 (__x!28508 Int)) (Lexer!7505) )
))
(declare-fun thiss!21540 () LexerInterface!7507)

(declare-datatypes ((List!46945 0))(
  ( (Nil!46821) (Cons!46821 (h!52241 Rule!15624) (t!349792 List!46945)) )
))
(declare-fun rules!2932 () List!46945)

(declare-fun rulesInvariant!6618 (LexerInterface!7507 List!46945) Bool)

(assert (=> b!4236284 (= res!1742268 (rulesInvariant!6618 thiss!21540 rules!2932))))

(declare-fun e!2630550 () Bool)

(declare-fun tp!1297619 () Bool)

(declare-fun b!4236285 () Bool)

(declare-fun tokens!581 () List!46944)

(declare-fun e!2630549 () Bool)

(declare-fun inv!61544 (String!54640) Bool)

(declare-fun inv!61547 (TokenValueInjection!15712) Bool)

(assert (=> b!4236285 (= e!2630550 (and tp!1297619 (inv!61544 (tag!8776 (rule!11036 (h!52240 tokens!581)))) (inv!61547 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) e!2630549))))

(declare-fun b!4236286 () Bool)

(declare-fun e!2630553 () Bool)

(declare-fun tp_is_empty!22625 () Bool)

(declare-fun tp!1297612 () Bool)

(assert (=> b!4236286 (= e!2630553 (and tp_is_empty!22625 tp!1297612))))

(declare-fun b!4236287 () Bool)

(declare-fun res!1742267 () Bool)

(assert (=> b!4236287 (=> (not res!1742267) (not e!2630565))))

(declare-fun longerInput!51 () List!46943)

(declare-fun shorterInput!51 () List!46943)

(declare-fun size!34301 (List!46943) Int)

(assert (=> b!4236287 (= res!1742267 (> (size!34301 longerInput!51) (size!34301 shorterInput!51)))))

(declare-fun b!4236288 () Bool)

(declare-fun e!2630548 () Bool)

(assert (=> b!4236288 (= e!2630548 (= addTokens!17 Nil!46820))))

(declare-fun e!2630551 () Bool)

(assert (=> b!4236289 (= e!2630551 (and tp!1297604 tp!1297609))))

(declare-fun b!4236290 () Bool)

(declare-fun e!2630546 () Bool)

(declare-fun tp!1297614 () Bool)

(assert (=> b!4236290 (= e!2630546 (and tp_is_empty!22625 tp!1297614))))

(declare-fun e!2630559 () Bool)

(assert (=> b!4236291 (= e!2630559 (and tp!1297613 tp!1297606))))

(declare-fun res!1742273 () Bool)

(assert (=> start!405350 (=> (not res!1742273) (not e!2630565))))

(get-info :version)

(assert (=> start!405350 (= res!1742273 ((_ is Lexer!7505) thiss!21540))))

(assert (=> start!405350 e!2630565))

(assert (=> start!405350 true))

(declare-fun e!2630555 () Bool)

(assert (=> start!405350 e!2630555))

(declare-fun e!2630560 () Bool)

(assert (=> start!405350 e!2630560))

(declare-fun e!2630562 () Bool)

(assert (=> start!405350 e!2630562))

(assert (=> start!405350 e!2630553))

(declare-fun e!2630552 () Bool)

(assert (=> start!405350 e!2630552))

(assert (=> start!405350 e!2630546))

(assert (=> b!4236292 (= e!2630549 (and tp!1297605 tp!1297620))))

(declare-fun b!4236293 () Bool)

(declare-fun res!1742269 () Bool)

(assert (=> b!4236293 (=> (not res!1742269) (not e!2630548))))

(declare-datatypes ((tuple2!44398 0))(
  ( (tuple2!44399 (_1!25333 Token!14450) (_2!25333 List!46943)) )
))
(declare-datatypes ((Option!10048 0))(
  ( (None!10047) (Some!10047 (v!40995 tuple2!44398)) )
))
(declare-fun lt!1505823 () Option!10048)

(declare-fun ++!11923 (List!46943 List!46943) List!46943)

(declare-fun list!16883 (BalanceConc!27840) List!46943)

(declare-fun charsOf!5268 (Token!14450) BalanceConc!27840)

(assert (=> b!4236293 (= res!1742269 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823)))) (_2!25333 (v!40995 lt!1505823))) longerInput!51))))

(declare-fun b!4236294 () Bool)

(declare-fun tp!1297615 () Bool)

(declare-fun e!2630554 () Bool)

(assert (=> b!4236294 (= e!2630554 (and tp!1297615 (inv!61544 (tag!8776 (h!52241 rules!2932))) (inv!61547 (transformation!7912 (h!52241 rules!2932))) e!2630551))))

(declare-fun b!4236295 () Bool)

(declare-fun res!1742274 () Bool)

(assert (=> b!4236295 (=> (not res!1742274) (not e!2630565))))

(declare-fun isEmpty!27666 (List!46945) Bool)

(assert (=> b!4236295 (= res!1742274 (not (isEmpty!27666 rules!2932)))))

(declare-fun e!2630563 () Bool)

(declare-fun b!4236296 () Bool)

(declare-fun tp!1297616 () Bool)

(declare-fun inv!21 (TokenValue!8142) Bool)

(assert (=> b!4236296 (= e!2630563 (and (inv!21 (value!246028 (h!52240 tokens!581))) e!2630550 tp!1297616))))

(declare-fun b!4236297 () Bool)

(declare-fun res!1742272 () Bool)

(assert (=> b!4236297 (=> (not res!1742272) (not e!2630548))))

(declare-fun lt!1505824 () Option!10048)

(assert (=> b!4236297 (= res!1742272 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824)))) (_2!25333 (v!40995 lt!1505824))) shorterInput!51))))

(declare-fun b!4236298 () Bool)

(assert (=> b!4236298 (= e!2630565 e!2630548)))

(declare-fun res!1742265 () Bool)

(assert (=> b!4236298 (=> (not res!1742265) (not e!2630548))))

(assert (=> b!4236298 (= res!1742265 (and ((_ is Some!10047) lt!1505823) ((_ is Some!10047) lt!1505824)))))

(declare-fun maxPrefix!4465 (LexerInterface!7507 List!46945 List!46943) Option!10048)

(assert (=> b!4236298 (= lt!1505824 (maxPrefix!4465 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4236298 (= lt!1505823 (maxPrefix!4465 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4236299 () Bool)

(declare-fun tp!1297618 () Bool)

(assert (=> b!4236299 (= e!2630555 (and e!2630554 tp!1297618))))

(declare-fun b!4236300 () Bool)

(declare-fun res!1742266 () Bool)

(assert (=> b!4236300 (=> (not res!1742266) (not e!2630565))))

(declare-fun isEmpty!27667 (List!46943) Bool)

(assert (=> b!4236300 (= res!1742266 (not (isEmpty!27667 longerInput!51)))))

(declare-fun b!4236301 () Bool)

(declare-fun res!1742275 () Bool)

(assert (=> b!4236301 (=> (not res!1742275) (not e!2630565))))

(declare-fun suffix!1262 () List!46943)

(declare-datatypes ((tuple2!44400 0))(
  ( (tuple2!44401 (_1!25334 List!46944) (_2!25334 List!46943)) )
))
(declare-fun lexList!2013 (LexerInterface!7507 List!46945 List!46943) tuple2!44400)

(assert (=> b!4236301 (= res!1742275 (= (lexList!2013 thiss!21540 rules!2932 longerInput!51) (tuple2!44401 tokens!581 suffix!1262)))))

(declare-fun e!2630558 () Bool)

(declare-fun tp!1297611 () Bool)

(declare-fun b!4236302 () Bool)

(assert (=> b!4236302 (= e!2630558 (and tp!1297611 (inv!61544 (tag!8776 (rule!11036 (h!52240 addTokens!17)))) (inv!61547 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) e!2630559))))

(declare-fun tp!1297617 () Bool)

(declare-fun b!4236303 () Bool)

(declare-fun e!2630564 () Bool)

(declare-fun inv!61548 (Token!14450) Bool)

(assert (=> b!4236303 (= e!2630560 (and (inv!61548 (h!52240 addTokens!17)) e!2630564 tp!1297617))))

(declare-fun b!4236304 () Bool)

(declare-fun tp!1297607 () Bool)

(assert (=> b!4236304 (= e!2630552 (and (inv!61548 (h!52240 tokens!581)) e!2630563 tp!1297607))))

(declare-fun b!4236305 () Bool)

(declare-fun tp!1297608 () Bool)

(assert (=> b!4236305 (= e!2630562 (and tp_is_empty!22625 tp!1297608))))

(declare-fun b!4236306 () Bool)

(declare-fun tp!1297610 () Bool)

(assert (=> b!4236306 (= e!2630564 (and (inv!21 (value!246028 (h!52240 addTokens!17))) e!2630558 tp!1297610))))

(assert (= (and start!405350 res!1742273) b!4236295))

(assert (= (and b!4236295 res!1742274) b!4236284))

(assert (= (and b!4236284 res!1742268) b!4236300))

(assert (= (and b!4236300 res!1742266) b!4236287))

(assert (= (and b!4236287 res!1742267) b!4236301))

(assert (= (and b!4236301 res!1742275) b!4236282))

(assert (= (and b!4236282 res!1742271) b!4236283))

(assert (= (and b!4236283 res!1742270) b!4236298))

(assert (= (and b!4236298 res!1742265) b!4236293))

(assert (= (and b!4236293 res!1742269) b!4236297))

(assert (= (and b!4236297 res!1742272) b!4236288))

(assert (= b!4236294 b!4236289))

(assert (= b!4236299 b!4236294))

(assert (= (and start!405350 ((_ is Cons!46821) rules!2932)) b!4236299))

(assert (= b!4236302 b!4236291))

(assert (= b!4236306 b!4236302))

(assert (= b!4236303 b!4236306))

(assert (= (and start!405350 ((_ is Cons!46820) addTokens!17)) b!4236303))

(assert (= (and start!405350 ((_ is Cons!46819) shorterInput!51)) b!4236305))

(assert (= (and start!405350 ((_ is Cons!46819) suffix!1262)) b!4236286))

(assert (= b!4236285 b!4236292))

(assert (= b!4236296 b!4236285))

(assert (= b!4236304 b!4236296))

(assert (= (and start!405350 ((_ is Cons!46820) tokens!581)) b!4236304))

(assert (= (and start!405350 ((_ is Cons!46819) longerInput!51)) b!4236290))

(declare-fun m!4821835 () Bool)

(assert (=> b!4236293 m!4821835))

(assert (=> b!4236293 m!4821835))

(declare-fun m!4821837 () Bool)

(assert (=> b!4236293 m!4821837))

(assert (=> b!4236293 m!4821837))

(declare-fun m!4821839 () Bool)

(assert (=> b!4236293 m!4821839))

(declare-fun m!4821841 () Bool)

(assert (=> b!4236297 m!4821841))

(assert (=> b!4236297 m!4821841))

(declare-fun m!4821843 () Bool)

(assert (=> b!4236297 m!4821843))

(assert (=> b!4236297 m!4821843))

(declare-fun m!4821845 () Bool)

(assert (=> b!4236297 m!4821845))

(declare-fun m!4821847 () Bool)

(assert (=> b!4236284 m!4821847))

(declare-fun m!4821849 () Bool)

(assert (=> b!4236282 m!4821849))

(declare-fun m!4821851 () Bool)

(assert (=> b!4236302 m!4821851))

(declare-fun m!4821853 () Bool)

(assert (=> b!4236302 m!4821853))

(declare-fun m!4821855 () Bool)

(assert (=> b!4236285 m!4821855))

(declare-fun m!4821857 () Bool)

(assert (=> b!4236285 m!4821857))

(declare-fun m!4821859 () Bool)

(assert (=> b!4236296 m!4821859))

(declare-fun m!4821861 () Bool)

(assert (=> b!4236295 m!4821861))

(declare-fun m!4821863 () Bool)

(assert (=> b!4236303 m!4821863))

(declare-fun m!4821865 () Bool)

(assert (=> b!4236304 m!4821865))

(declare-fun m!4821867 () Bool)

(assert (=> b!4236301 m!4821867))

(declare-fun m!4821869 () Bool)

(assert (=> b!4236306 m!4821869))

(declare-fun m!4821871 () Bool)

(assert (=> b!4236300 m!4821871))

(declare-fun m!4821873 () Bool)

(assert (=> b!4236294 m!4821873))

(declare-fun m!4821875 () Bool)

(assert (=> b!4236294 m!4821875))

(declare-fun m!4821877 () Bool)

(assert (=> b!4236298 m!4821877))

(declare-fun m!4821879 () Bool)

(assert (=> b!4236298 m!4821879))

(declare-fun m!4821881 () Bool)

(assert (=> b!4236283 m!4821881))

(declare-fun m!4821883 () Bool)

(assert (=> b!4236287 m!4821883))

(declare-fun m!4821885 () Bool)

(assert (=> b!4236287 m!4821885))

(check-sat (not b!4236305) (not b!4236296) (not b!4236300) (not b_next!125899) (not b!4236295) b_and!334623 (not b!4236283) (not b!4236285) (not b!4236290) tp_is_empty!22625 (not b!4236303) b_and!334613 (not b!4236302) (not b!4236306) (not b!4236304) b_and!334619 b_and!334615 (not b!4236282) (not b!4236297) (not b!4236284) (not b!4236298) b_and!334617 (not b_next!125903) (not b!4236294) (not b_next!125901) (not b_next!125895) b_and!334621 (not b_next!125905) (not b!4236299) (not b!4236301) (not b!4236286) (not b!4236287) (not b!4236293) (not b_next!125897))
(check-sat b_and!334619 b_and!334615 (not b_next!125901) (not b_next!125899) b_and!334623 (not b_next!125897) b_and!334613 b_and!334617 (not b_next!125903) (not b_next!125895) b_and!334621 (not b_next!125905))
(get-model)

(declare-fun d!1246371 () Bool)

(declare-fun res!1742283 () Bool)

(declare-fun e!2630569 () Bool)

(assert (=> d!1246371 (=> (not res!1742283) (not e!2630569))))

(declare-fun rulesValid!3064 (LexerInterface!7507 List!46945) Bool)

(assert (=> d!1246371 (= res!1742283 (rulesValid!3064 thiss!21540 rules!2932))))

(assert (=> d!1246371 (= (rulesInvariant!6618 thiss!21540 rules!2932) e!2630569)))

(declare-fun b!4236309 () Bool)

(declare-datatypes ((List!46947 0))(
  ( (Nil!46823) (Cons!46823 (h!52243 String!54640) (t!349890 List!46947)) )
))
(declare-fun noDuplicateTag!3225 (LexerInterface!7507 List!46945 List!46947) Bool)

(assert (=> b!4236309 (= e!2630569 (noDuplicateTag!3225 thiss!21540 rules!2932 Nil!46823))))

(assert (= (and d!1246371 res!1742283) b!4236309))

(declare-fun m!4821887 () Bool)

(assert (=> d!1246371 m!4821887))

(declare-fun m!4821889 () Bool)

(assert (=> b!4236309 m!4821889))

(assert (=> b!4236284 d!1246371))

(declare-fun d!1246373 () Bool)

(assert (=> d!1246373 (= (inv!61544 (tag!8776 (h!52241 rules!2932))) (= (mod (str.len (value!246027 (tag!8776 (h!52241 rules!2932)))) 2) 0))))

(assert (=> b!4236294 d!1246373))

(declare-fun d!1246375 () Bool)

(declare-fun res!1742287 () Bool)

(declare-fun e!2630572 () Bool)

(assert (=> d!1246375 (=> (not res!1742287) (not e!2630572))))

(declare-fun semiInverseModEq!3440 (Int Int) Bool)

(assert (=> d!1246375 (= res!1742287 (semiInverseModEq!3440 (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toValue!10656 (transformation!7912 (h!52241 rules!2932)))))))

(assert (=> d!1246375 (= (inv!61547 (transformation!7912 (h!52241 rules!2932))) e!2630572)))

(declare-fun b!4236312 () Bool)

(declare-fun equivClasses!3339 (Int Int) Bool)

(assert (=> b!4236312 (= e!2630572 (equivClasses!3339 (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toValue!10656 (transformation!7912 (h!52241 rules!2932)))))))

(assert (= (and d!1246375 res!1742287) b!4236312))

(declare-fun m!4821891 () Bool)

(assert (=> d!1246375 m!4821891))

(declare-fun m!4821893 () Bool)

(assert (=> b!4236312 m!4821893))

(assert (=> b!4236294 d!1246375))

(declare-fun d!1246379 () Bool)

(declare-fun lt!1505830 () Int)

(assert (=> d!1246379 (>= lt!1505830 0)))

(declare-fun e!2630578 () Int)

(assert (=> d!1246379 (= lt!1505830 e!2630578)))

(declare-fun c!719987 () Bool)

(assert (=> d!1246379 (= c!719987 ((_ is Nil!46820) addTokens!17))))

(assert (=> d!1246379 (= (size!34300 addTokens!17) lt!1505830)))

(declare-fun b!4236323 () Bool)

(assert (=> b!4236323 (= e!2630578 0)))

(declare-fun b!4236324 () Bool)

(assert (=> b!4236324 (= e!2630578 (+ 1 (size!34300 (t!349791 addTokens!17))))))

(assert (= (and d!1246379 c!719987) b!4236323))

(assert (= (and d!1246379 (not c!719987)) b!4236324))

(declare-fun m!4821897 () Bool)

(assert (=> b!4236324 m!4821897))

(assert (=> b!4236283 d!1246379))

(declare-fun d!1246383 () Bool)

(declare-fun res!1742295 () Bool)

(declare-fun e!2630584 () Bool)

(assert (=> d!1246383 (=> (not res!1742295) (not e!2630584))))

(assert (=> d!1246383 (= res!1742295 (not (isEmpty!27667 (originalCharacters!8256 (h!52240 tokens!581)))))))

(assert (=> d!1246383 (= (inv!61548 (h!52240 tokens!581)) e!2630584)))

(declare-fun b!4236332 () Bool)

(declare-fun res!1742296 () Bool)

(assert (=> b!4236332 (=> (not res!1742296) (not e!2630584))))

(declare-fun dynLambda!20074 (Int TokenValue!8142) BalanceConc!27840)

(assert (=> b!4236332 (= res!1742296 (= (originalCharacters!8256 (h!52240 tokens!581)) (list!16883 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (value!246028 (h!52240 tokens!581))))))))

(declare-fun b!4236333 () Bool)

(assert (=> b!4236333 (= e!2630584 (= (size!34299 (h!52240 tokens!581)) (size!34301 (originalCharacters!8256 (h!52240 tokens!581)))))))

(assert (= (and d!1246383 res!1742295) b!4236332))

(assert (= (and b!4236332 res!1742296) b!4236333))

(declare-fun b_lambda!124683 () Bool)

(assert (=> (not b_lambda!124683) (not b!4236332)))

(declare-fun tb!254039 () Bool)

(declare-fun t!349794 () Bool)

(assert (=> (and b!4236289 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349794) tb!254039))

(declare-fun b!4236342 () Bool)

(declare-fun e!2630589 () Bool)

(declare-fun tp!1297623 () Bool)

(declare-fun inv!61551 (Conc!14123) Bool)

(assert (=> b!4236342 (= e!2630589 (and (inv!61551 (c!719981 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (value!246028 (h!52240 tokens!581))))) tp!1297623))))

(declare-fun result!309892 () Bool)

(declare-fun inv!61552 (BalanceConc!27840) Bool)

(assert (=> tb!254039 (= result!309892 (and (inv!61552 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (value!246028 (h!52240 tokens!581)))) e!2630589))))

(assert (= tb!254039 b!4236342))

(declare-fun m!4821903 () Bool)

(assert (=> b!4236342 m!4821903))

(declare-fun m!4821905 () Bool)

(assert (=> tb!254039 m!4821905))

(assert (=> b!4236332 t!349794))

(declare-fun b_and!334625 () Bool)

(assert (= b_and!334615 (and (=> t!349794 result!309892) b_and!334625)))

(declare-fun t!349796 () Bool)

(declare-fun tb!254041 () Bool)

(assert (=> (and b!4236291 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349796) tb!254041))

(declare-fun result!309896 () Bool)

(assert (= result!309896 result!309892))

(assert (=> b!4236332 t!349796))

(declare-fun b_and!334627 () Bool)

(assert (= b_and!334619 (and (=> t!349796 result!309896) b_and!334627)))

(declare-fun t!349798 () Bool)

(declare-fun tb!254043 () Bool)

(assert (=> (and b!4236292 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349798) tb!254043))

(declare-fun result!309898 () Bool)

(assert (= result!309898 result!309892))

(assert (=> b!4236332 t!349798))

(declare-fun b_and!334629 () Bool)

(assert (= b_and!334623 (and (=> t!349798 result!309898) b_and!334629)))

(declare-fun m!4821907 () Bool)

(assert (=> d!1246383 m!4821907))

(declare-fun m!4821909 () Bool)

(assert (=> b!4236332 m!4821909))

(assert (=> b!4236332 m!4821909))

(declare-fun m!4821911 () Bool)

(assert (=> b!4236332 m!4821911))

(declare-fun m!4821913 () Bool)

(assert (=> b!4236333 m!4821913))

(assert (=> b!4236304 d!1246383))

(declare-fun b!4236365 () Bool)

(declare-fun res!1742305 () Bool)

(declare-fun e!2630600 () Bool)

(assert (=> b!4236365 (=> (not res!1742305) (not e!2630600))))

(declare-fun lt!1505839 () List!46943)

(assert (=> b!4236365 (= res!1742305 (= (size!34301 lt!1505839) (+ (size!34301 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))) (size!34301 (_2!25333 (v!40995 lt!1505823))))))))

(declare-fun d!1246389 () Bool)

(assert (=> d!1246389 e!2630600))

(declare-fun res!1742306 () Bool)

(assert (=> d!1246389 (=> (not res!1742306) (not e!2630600))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7363 (List!46943) (InoxSet C!25832))

(assert (=> d!1246389 (= res!1742306 (= (content!7363 lt!1505839) ((_ map or) (content!7363 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))) (content!7363 (_2!25333 (v!40995 lt!1505823))))))))

(declare-fun e!2630601 () List!46943)

(assert (=> d!1246389 (= lt!1505839 e!2630601)))

(declare-fun c!719996 () Bool)

(assert (=> d!1246389 (= c!719996 ((_ is Nil!46819) (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))))))

(assert (=> d!1246389 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823)))) (_2!25333 (v!40995 lt!1505823))) lt!1505839)))

(declare-fun b!4236364 () Bool)

(assert (=> b!4236364 (= e!2630601 (Cons!46819 (h!52239 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))) (++!11923 (t!349790 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))) (_2!25333 (v!40995 lt!1505823)))))))

(declare-fun b!4236363 () Bool)

(assert (=> b!4236363 (= e!2630601 (_2!25333 (v!40995 lt!1505823)))))

(declare-fun b!4236366 () Bool)

(assert (=> b!4236366 (= e!2630600 (or (not (= (_2!25333 (v!40995 lt!1505823)) Nil!46819)) (= lt!1505839 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823)))))))))

(assert (= (and d!1246389 c!719996) b!4236363))

(assert (= (and d!1246389 (not c!719996)) b!4236364))

(assert (= (and d!1246389 res!1742306) b!4236365))

(assert (= (and b!4236365 res!1742305) b!4236366))

(declare-fun m!4821919 () Bool)

(assert (=> b!4236365 m!4821919))

(assert (=> b!4236365 m!4821837))

(declare-fun m!4821921 () Bool)

(assert (=> b!4236365 m!4821921))

(declare-fun m!4821923 () Bool)

(assert (=> b!4236365 m!4821923))

(declare-fun m!4821925 () Bool)

(assert (=> d!1246389 m!4821925))

(assert (=> d!1246389 m!4821837))

(declare-fun m!4821927 () Bool)

(assert (=> d!1246389 m!4821927))

(declare-fun m!4821929 () Bool)

(assert (=> d!1246389 m!4821929))

(declare-fun m!4821931 () Bool)

(assert (=> b!4236364 m!4821931))

(assert (=> b!4236293 d!1246389))

(declare-fun d!1246395 () Bool)

(declare-fun list!16885 (Conc!14123) List!46943)

(assert (=> d!1246395 (= (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505823)))) (list!16885 (c!719981 (charsOf!5268 (_1!25333 (v!40995 lt!1505823))))))))

(declare-fun bs!598154 () Bool)

(assert (= bs!598154 d!1246395))

(declare-fun m!4821947 () Bool)

(assert (=> bs!598154 m!4821947))

(assert (=> b!4236293 d!1246395))

(declare-fun d!1246399 () Bool)

(declare-fun lt!1505845 () BalanceConc!27840)

(assert (=> d!1246399 (= (list!16883 lt!1505845) (originalCharacters!8256 (_1!25333 (v!40995 lt!1505823))))))

(assert (=> d!1246399 (= lt!1505845 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823))))) (value!246028 (_1!25333 (v!40995 lt!1505823)))))))

(assert (=> d!1246399 (= (charsOf!5268 (_1!25333 (v!40995 lt!1505823))) lt!1505845)))

(declare-fun b_lambda!124685 () Bool)

(assert (=> (not b_lambda!124685) (not d!1246399)))

(declare-fun t!349800 () Bool)

(declare-fun tb!254045 () Bool)

(assert (=> (and b!4236289 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349800) tb!254045))

(declare-fun b!4236371 () Bool)

(declare-fun e!2630604 () Bool)

(declare-fun tp!1297624 () Bool)

(assert (=> b!4236371 (= e!2630604 (and (inv!61551 (c!719981 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823))))) (value!246028 (_1!25333 (v!40995 lt!1505823)))))) tp!1297624))))

(declare-fun result!309900 () Bool)

(assert (=> tb!254045 (= result!309900 (and (inv!61552 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823))))) (value!246028 (_1!25333 (v!40995 lt!1505823))))) e!2630604))))

(assert (= tb!254045 b!4236371))

(declare-fun m!4821951 () Bool)

(assert (=> b!4236371 m!4821951))

(declare-fun m!4821953 () Bool)

(assert (=> tb!254045 m!4821953))

(assert (=> d!1246399 t!349800))

(declare-fun b_and!334631 () Bool)

(assert (= b_and!334625 (and (=> t!349800 result!309900) b_and!334631)))

(declare-fun t!349804 () Bool)

(declare-fun tb!254049 () Bool)

(assert (=> (and b!4236291 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349804) tb!254049))

(declare-fun result!309904 () Bool)

(assert (= result!309904 result!309900))

(assert (=> d!1246399 t!349804))

(declare-fun b_and!334633 () Bool)

(assert (= b_and!334627 (and (=> t!349804 result!309904) b_and!334633)))

(declare-fun tb!254051 () Bool)

(declare-fun t!349806 () Bool)

(assert (=> (and b!4236292 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349806) tb!254051))

(declare-fun result!309906 () Bool)

(assert (= result!309906 result!309900))

(assert (=> d!1246399 t!349806))

(declare-fun b_and!334635 () Bool)

(assert (= b_and!334629 (and (=> t!349806 result!309906) b_and!334635)))

(declare-fun m!4821955 () Bool)

(assert (=> d!1246399 m!4821955))

(declare-fun m!4821957 () Bool)

(assert (=> d!1246399 m!4821957))

(assert (=> b!4236293 d!1246399))

(declare-fun d!1246403 () Bool)

(assert (=> d!1246403 (= (isEmpty!27665 addTokens!17) ((_ is Nil!46820) addTokens!17))))

(assert (=> b!4236282 d!1246403))

(declare-fun d!1246405 () Bool)

(declare-fun res!1742309 () Bool)

(declare-fun e!2630607 () Bool)

(assert (=> d!1246405 (=> (not res!1742309) (not e!2630607))))

(assert (=> d!1246405 (= res!1742309 (not (isEmpty!27667 (originalCharacters!8256 (h!52240 addTokens!17)))))))

(assert (=> d!1246405 (= (inv!61548 (h!52240 addTokens!17)) e!2630607)))

(declare-fun b!4236376 () Bool)

(declare-fun res!1742310 () Bool)

(assert (=> b!4236376 (=> (not res!1742310) (not e!2630607))))

(assert (=> b!4236376 (= res!1742310 (= (originalCharacters!8256 (h!52240 addTokens!17)) (list!16883 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (value!246028 (h!52240 addTokens!17))))))))

(declare-fun b!4236377 () Bool)

(assert (=> b!4236377 (= e!2630607 (= (size!34299 (h!52240 addTokens!17)) (size!34301 (originalCharacters!8256 (h!52240 addTokens!17)))))))

(assert (= (and d!1246405 res!1742309) b!4236376))

(assert (= (and b!4236376 res!1742310) b!4236377))

(declare-fun b_lambda!124689 () Bool)

(assert (=> (not b_lambda!124689) (not b!4236376)))

(declare-fun t!349810 () Bool)

(declare-fun tb!254055 () Bool)

(assert (=> (and b!4236289 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349810) tb!254055))

(declare-fun b!4236379 () Bool)

(declare-fun e!2630609 () Bool)

(declare-fun tp!1297628 () Bool)

(assert (=> b!4236379 (= e!2630609 (and (inv!61551 (c!719981 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (value!246028 (h!52240 addTokens!17))))) tp!1297628))))

(declare-fun result!309912 () Bool)

(assert (=> tb!254055 (= result!309912 (and (inv!61552 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (value!246028 (h!52240 addTokens!17)))) e!2630609))))

(assert (= tb!254055 b!4236379))

(declare-fun m!4821967 () Bool)

(assert (=> b!4236379 m!4821967))

(declare-fun m!4821969 () Bool)

(assert (=> tb!254055 m!4821969))

(assert (=> b!4236376 t!349810))

(declare-fun b_and!334643 () Bool)

(assert (= b_and!334631 (and (=> t!349810 result!309912) b_and!334643)))

(declare-fun t!349814 () Bool)

(declare-fun tb!254059 () Bool)

(assert (=> (and b!4236291 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349814) tb!254059))

(declare-fun result!309916 () Bool)

(assert (= result!309916 result!309912))

(assert (=> b!4236376 t!349814))

(declare-fun b_and!334645 () Bool)

(assert (= b_and!334633 (and (=> t!349814 result!309916) b_and!334645)))

(declare-fun tb!254061 () Bool)

(declare-fun t!349816 () Bool)

(assert (=> (and b!4236292 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349816) tb!254061))

(declare-fun result!309918 () Bool)

(assert (= result!309918 result!309912))

(assert (=> b!4236376 t!349816))

(declare-fun b_and!334647 () Bool)

(assert (= b_and!334635 (and (=> t!349816 result!309918) b_and!334647)))

(declare-fun m!4821971 () Bool)

(assert (=> d!1246405 m!4821971))

(declare-fun m!4821973 () Bool)

(assert (=> b!4236376 m!4821973))

(assert (=> b!4236376 m!4821973))

(declare-fun m!4821975 () Bool)

(assert (=> b!4236376 m!4821975))

(declare-fun m!4821977 () Bool)

(assert (=> b!4236377 m!4821977))

(assert (=> b!4236303 d!1246405))

(declare-fun b!4236382 () Bool)

(declare-fun res!1742311 () Bool)

(declare-fun e!2630610 () Bool)

(assert (=> b!4236382 (=> (not res!1742311) (not e!2630610))))

(declare-fun lt!1505847 () List!46943)

(assert (=> b!4236382 (= res!1742311 (= (size!34301 lt!1505847) (+ (size!34301 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))) (size!34301 (_2!25333 (v!40995 lt!1505824))))))))

(declare-fun d!1246409 () Bool)

(assert (=> d!1246409 e!2630610))

(declare-fun res!1742312 () Bool)

(assert (=> d!1246409 (=> (not res!1742312) (not e!2630610))))

(assert (=> d!1246409 (= res!1742312 (= (content!7363 lt!1505847) ((_ map or) (content!7363 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))) (content!7363 (_2!25333 (v!40995 lt!1505824))))))))

(declare-fun e!2630611 () List!46943)

(assert (=> d!1246409 (= lt!1505847 e!2630611)))

(declare-fun c!719998 () Bool)

(assert (=> d!1246409 (= c!719998 ((_ is Nil!46819) (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))))))

(assert (=> d!1246409 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824)))) (_2!25333 (v!40995 lt!1505824))) lt!1505847)))

(declare-fun b!4236381 () Bool)

(assert (=> b!4236381 (= e!2630611 (Cons!46819 (h!52239 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))) (++!11923 (t!349790 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))) (_2!25333 (v!40995 lt!1505824)))))))

(declare-fun b!4236380 () Bool)

(assert (=> b!4236380 (= e!2630611 (_2!25333 (v!40995 lt!1505824)))))

(declare-fun b!4236383 () Bool)

(assert (=> b!4236383 (= e!2630610 (or (not (= (_2!25333 (v!40995 lt!1505824)) Nil!46819)) (= lt!1505847 (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824)))))))))

(assert (= (and d!1246409 c!719998) b!4236380))

(assert (= (and d!1246409 (not c!719998)) b!4236381))

(assert (= (and d!1246409 res!1742312) b!4236382))

(assert (= (and b!4236382 res!1742311) b!4236383))

(declare-fun m!4821979 () Bool)

(assert (=> b!4236382 m!4821979))

(assert (=> b!4236382 m!4821843))

(declare-fun m!4821981 () Bool)

(assert (=> b!4236382 m!4821981))

(declare-fun m!4821983 () Bool)

(assert (=> b!4236382 m!4821983))

(declare-fun m!4821985 () Bool)

(assert (=> d!1246409 m!4821985))

(assert (=> d!1246409 m!4821843))

(declare-fun m!4821987 () Bool)

(assert (=> d!1246409 m!4821987))

(declare-fun m!4821989 () Bool)

(assert (=> d!1246409 m!4821989))

(declare-fun m!4821991 () Bool)

(assert (=> b!4236381 m!4821991))

(assert (=> b!4236297 d!1246409))

(declare-fun d!1246411 () Bool)

(assert (=> d!1246411 (= (list!16883 (charsOf!5268 (_1!25333 (v!40995 lt!1505824)))) (list!16885 (c!719981 (charsOf!5268 (_1!25333 (v!40995 lt!1505824))))))))

(declare-fun bs!598156 () Bool)

(assert (= bs!598156 d!1246411))

(declare-fun m!4821993 () Bool)

(assert (=> bs!598156 m!4821993))

(assert (=> b!4236297 d!1246411))

(declare-fun d!1246413 () Bool)

(declare-fun lt!1505848 () BalanceConc!27840)

(assert (=> d!1246413 (= (list!16883 lt!1505848) (originalCharacters!8256 (_1!25333 (v!40995 lt!1505824))))))

(assert (=> d!1246413 (= lt!1505848 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824))))) (value!246028 (_1!25333 (v!40995 lt!1505824)))))))

(assert (=> d!1246413 (= (charsOf!5268 (_1!25333 (v!40995 lt!1505824))) lt!1505848)))

(declare-fun b_lambda!124691 () Bool)

(assert (=> (not b_lambda!124691) (not d!1246413)))

(declare-fun t!349818 () Bool)

(declare-fun tb!254063 () Bool)

(assert (=> (and b!4236289 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349818) tb!254063))

(declare-fun b!4236384 () Bool)

(declare-fun e!2630612 () Bool)

(declare-fun tp!1297629 () Bool)

(assert (=> b!4236384 (= e!2630612 (and (inv!61551 (c!719981 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824))))) (value!246028 (_1!25333 (v!40995 lt!1505824)))))) tp!1297629))))

(declare-fun result!309920 () Bool)

(assert (=> tb!254063 (= result!309920 (and (inv!61552 (dynLambda!20074 (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824))))) (value!246028 (_1!25333 (v!40995 lt!1505824))))) e!2630612))))

(assert (= tb!254063 b!4236384))

(declare-fun m!4821995 () Bool)

(assert (=> b!4236384 m!4821995))

(declare-fun m!4821997 () Bool)

(assert (=> tb!254063 m!4821997))

(assert (=> d!1246413 t!349818))

(declare-fun b_and!334649 () Bool)

(assert (= b_and!334643 (and (=> t!349818 result!309920) b_and!334649)))

(declare-fun t!349820 () Bool)

(declare-fun tb!254065 () Bool)

(assert (=> (and b!4236291 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349820) tb!254065))

(declare-fun result!309922 () Bool)

(assert (= result!309922 result!309920))

(assert (=> d!1246413 t!349820))

(declare-fun b_and!334651 () Bool)

(assert (= b_and!334645 (and (=> t!349820 result!309922) b_and!334651)))

(declare-fun t!349822 () Bool)

(declare-fun tb!254067 () Bool)

(assert (=> (and b!4236292 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349822) tb!254067))

(declare-fun result!309924 () Bool)

(assert (= result!309924 result!309920))

(assert (=> d!1246413 t!349822))

(declare-fun b_and!334653 () Bool)

(assert (= b_and!334647 (and (=> t!349822 result!309924) b_and!334653)))

(declare-fun m!4821999 () Bool)

(assert (=> d!1246413 m!4821999))

(declare-fun m!4822001 () Bool)

(assert (=> d!1246413 m!4822001))

(assert (=> b!4236297 d!1246413))

(declare-fun b!4236395 () Bool)

(declare-fun e!2630620 () Bool)

(declare-fun inv!16 (TokenValue!8142) Bool)

(assert (=> b!4236395 (= e!2630620 (inv!16 (value!246028 (h!52240 tokens!581))))))

(declare-fun b!4236396 () Bool)

(declare-fun res!1742315 () Bool)

(declare-fun e!2630619 () Bool)

(assert (=> b!4236396 (=> res!1742315 e!2630619)))

(assert (=> b!4236396 (= res!1742315 (not ((_ is IntegerValue!24428) (value!246028 (h!52240 tokens!581)))))))

(declare-fun e!2630621 () Bool)

(assert (=> b!4236396 (= e!2630621 e!2630619)))

(declare-fun b!4236397 () Bool)

(declare-fun inv!15 (TokenValue!8142) Bool)

(assert (=> b!4236397 (= e!2630619 (inv!15 (value!246028 (h!52240 tokens!581))))))

(declare-fun b!4236398 () Bool)

(declare-fun inv!17 (TokenValue!8142) Bool)

(assert (=> b!4236398 (= e!2630621 (inv!17 (value!246028 (h!52240 tokens!581))))))

(declare-fun b!4236399 () Bool)

(assert (=> b!4236399 (= e!2630620 e!2630621)))

(declare-fun c!720003 () Bool)

(assert (=> b!4236399 (= c!720003 ((_ is IntegerValue!24427) (value!246028 (h!52240 tokens!581))))))

(declare-fun d!1246415 () Bool)

(declare-fun c!720004 () Bool)

(assert (=> d!1246415 (= c!720004 ((_ is IntegerValue!24426) (value!246028 (h!52240 tokens!581))))))

(assert (=> d!1246415 (= (inv!21 (value!246028 (h!52240 tokens!581))) e!2630620)))

(assert (= (and d!1246415 c!720004) b!4236395))

(assert (= (and d!1246415 (not c!720004)) b!4236399))

(assert (= (and b!4236399 c!720003) b!4236398))

(assert (= (and b!4236399 (not c!720003)) b!4236396))

(assert (= (and b!4236396 (not res!1742315)) b!4236397))

(declare-fun m!4822003 () Bool)

(assert (=> b!4236395 m!4822003))

(declare-fun m!4822005 () Bool)

(assert (=> b!4236397 m!4822005))

(declare-fun m!4822007 () Bool)

(assert (=> b!4236398 m!4822007))

(assert (=> b!4236296 d!1246415))

(declare-fun d!1246417 () Bool)

(assert (=> d!1246417 (= (inv!61544 (tag!8776 (rule!11036 (h!52240 tokens!581)))) (= (mod (str.len (value!246027 (tag!8776 (rule!11036 (h!52240 tokens!581))))) 2) 0))))

(assert (=> b!4236285 d!1246417))

(declare-fun d!1246419 () Bool)

(declare-fun res!1742316 () Bool)

(declare-fun e!2630622 () Bool)

(assert (=> d!1246419 (=> (not res!1742316) (not e!2630622))))

(assert (=> d!1246419 (= res!1742316 (semiInverseModEq!3440 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toValue!10656 (transformation!7912 (rule!11036 (h!52240 tokens!581))))))))

(assert (=> d!1246419 (= (inv!61547 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) e!2630622)))

(declare-fun b!4236400 () Bool)

(assert (=> b!4236400 (= e!2630622 (equivClasses!3339 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toValue!10656 (transformation!7912 (rule!11036 (h!52240 tokens!581))))))))

(assert (= (and d!1246419 res!1742316) b!4236400))

(declare-fun m!4822009 () Bool)

(assert (=> d!1246419 m!4822009))

(declare-fun m!4822011 () Bool)

(assert (=> b!4236400 m!4822011))

(assert (=> b!4236285 d!1246419))

(declare-fun b!4236401 () Bool)

(declare-fun e!2630624 () Bool)

(assert (=> b!4236401 (= e!2630624 (inv!16 (value!246028 (h!52240 addTokens!17))))))

(declare-fun b!4236402 () Bool)

(declare-fun res!1742317 () Bool)

(declare-fun e!2630623 () Bool)

(assert (=> b!4236402 (=> res!1742317 e!2630623)))

(assert (=> b!4236402 (= res!1742317 (not ((_ is IntegerValue!24428) (value!246028 (h!52240 addTokens!17)))))))

(declare-fun e!2630625 () Bool)

(assert (=> b!4236402 (= e!2630625 e!2630623)))

(declare-fun b!4236403 () Bool)

(assert (=> b!4236403 (= e!2630623 (inv!15 (value!246028 (h!52240 addTokens!17))))))

(declare-fun b!4236404 () Bool)

(assert (=> b!4236404 (= e!2630625 (inv!17 (value!246028 (h!52240 addTokens!17))))))

(declare-fun b!4236405 () Bool)

(assert (=> b!4236405 (= e!2630624 e!2630625)))

(declare-fun c!720005 () Bool)

(assert (=> b!4236405 (= c!720005 ((_ is IntegerValue!24427) (value!246028 (h!52240 addTokens!17))))))

(declare-fun d!1246421 () Bool)

(declare-fun c!720006 () Bool)

(assert (=> d!1246421 (= c!720006 ((_ is IntegerValue!24426) (value!246028 (h!52240 addTokens!17))))))

(assert (=> d!1246421 (= (inv!21 (value!246028 (h!52240 addTokens!17))) e!2630624)))

(assert (= (and d!1246421 c!720006) b!4236401))

(assert (= (and d!1246421 (not c!720006)) b!4236405))

(assert (= (and b!4236405 c!720005) b!4236404))

(assert (= (and b!4236405 (not c!720005)) b!4236402))

(assert (= (and b!4236402 (not res!1742317)) b!4236403))

(declare-fun m!4822013 () Bool)

(assert (=> b!4236401 m!4822013))

(declare-fun m!4822015 () Bool)

(assert (=> b!4236403 m!4822015))

(declare-fun m!4822017 () Bool)

(assert (=> b!4236404 m!4822017))

(assert (=> b!4236306 d!1246421))

(declare-fun d!1246423 () Bool)

(assert (=> d!1246423 (= (isEmpty!27666 rules!2932) ((_ is Nil!46821) rules!2932))))

(assert (=> b!4236295 d!1246423))

(declare-fun d!1246425 () Bool)

(assert (=> d!1246425 (= (isEmpty!27667 longerInput!51) ((_ is Nil!46819) longerInput!51))))

(assert (=> b!4236300 d!1246425))

(declare-fun b!4236488 () Bool)

(declare-fun e!2630662 () Bool)

(declare-fun e!2630664 () Bool)

(assert (=> b!4236488 (= e!2630662 e!2630664)))

(declare-fun res!1742379 () Bool)

(assert (=> b!4236488 (=> (not res!1742379) (not e!2630664))))

(declare-fun lt!1505883 () Option!10048)

(declare-fun isDefined!7432 (Option!10048) Bool)

(assert (=> b!4236488 (= res!1742379 (isDefined!7432 lt!1505883))))

(declare-fun b!4236489 () Bool)

(declare-fun res!1742380 () Bool)

(assert (=> b!4236489 (=> (not res!1742380) (not e!2630664))))

(declare-fun get!15230 (Option!10048) tuple2!44398)

(declare-fun apply!10744 (TokenValueInjection!15712 BalanceConc!27840) TokenValue!8142)

(declare-fun seqFromList!5804 (List!46943) BalanceConc!27840)

(assert (=> b!4236489 (= res!1742380 (= (value!246028 (_1!25333 (get!15230 lt!1505883))) (apply!10744 (transformation!7912 (rule!11036 (_1!25333 (get!15230 lt!1505883)))) (seqFromList!5804 (originalCharacters!8256 (_1!25333 (get!15230 lt!1505883)))))))))

(declare-fun b!4236490 () Bool)

(declare-fun res!1742377 () Bool)

(assert (=> b!4236490 (=> (not res!1742377) (not e!2630664))))

(assert (=> b!4236490 (= res!1742377 (= (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505883)))) (originalCharacters!8256 (_1!25333 (get!15230 lt!1505883)))))))

(declare-fun d!1246427 () Bool)

(assert (=> d!1246427 e!2630662))

(declare-fun res!1742376 () Bool)

(assert (=> d!1246427 (=> res!1742376 e!2630662)))

(declare-fun isEmpty!27669 (Option!10048) Bool)

(assert (=> d!1246427 (= res!1742376 (isEmpty!27669 lt!1505883))))

(declare-fun e!2630663 () Option!10048)

(assert (=> d!1246427 (= lt!1505883 e!2630663)))

(declare-fun c!720019 () Bool)

(assert (=> d!1246427 (= c!720019 (and ((_ is Cons!46821) rules!2932) ((_ is Nil!46821) (t!349792 rules!2932))))))

(declare-datatypes ((Unit!65935 0))(
  ( (Unit!65936) )
))
(declare-fun lt!1505879 () Unit!65935)

(declare-fun lt!1505882 () Unit!65935)

(assert (=> d!1246427 (= lt!1505879 lt!1505882)))

(declare-fun isPrefix!4717 (List!46943 List!46943) Bool)

(assert (=> d!1246427 (isPrefix!4717 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3114 (List!46943 List!46943) Unit!65935)

(assert (=> d!1246427 (= lt!1505882 (lemmaIsPrefixRefl!3114 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2966 (LexerInterface!7507 List!46945) Bool)

(assert (=> d!1246427 (rulesValidInductive!2966 thiss!21540 rules!2932)))

(assert (=> d!1246427 (= (maxPrefix!4465 thiss!21540 rules!2932 shorterInput!51) lt!1505883)))

(declare-fun b!4236491 () Bool)

(declare-fun contains!9715 (List!46945 Rule!15624) Bool)

(assert (=> b!4236491 (= e!2630664 (contains!9715 rules!2932 (rule!11036 (_1!25333 (get!15230 lt!1505883)))))))

(declare-fun b!4236492 () Bool)

(declare-fun res!1742375 () Bool)

(assert (=> b!4236492 (=> (not res!1742375) (not e!2630664))))

(declare-fun matchR!6439 (Regex!12817 List!46943) Bool)

(assert (=> b!4236492 (= res!1742375 (matchR!6439 (regex!7912 (rule!11036 (_1!25333 (get!15230 lt!1505883)))) (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505883))))))))

(declare-fun b!4236493 () Bool)

(declare-fun res!1742378 () Bool)

(assert (=> b!4236493 (=> (not res!1742378) (not e!2630664))))

(assert (=> b!4236493 (= res!1742378 (< (size!34301 (_2!25333 (get!15230 lt!1505883))) (size!34301 shorterInput!51)))))

(declare-fun b!4236494 () Bool)

(declare-fun lt!1505881 () Option!10048)

(declare-fun lt!1505880 () Option!10048)

(assert (=> b!4236494 (= e!2630663 (ite (and ((_ is None!10047) lt!1505881) ((_ is None!10047) lt!1505880)) None!10047 (ite ((_ is None!10047) lt!1505880) lt!1505881 (ite ((_ is None!10047) lt!1505881) lt!1505880 (ite (>= (size!34299 (_1!25333 (v!40995 lt!1505881))) (size!34299 (_1!25333 (v!40995 lt!1505880)))) lt!1505881 lt!1505880)))))))

(declare-fun call!293791 () Option!10048)

(assert (=> b!4236494 (= lt!1505881 call!293791)))

(assert (=> b!4236494 (= lt!1505880 (maxPrefix!4465 thiss!21540 (t!349792 rules!2932) shorterInput!51))))

(declare-fun b!4236495 () Bool)

(declare-fun res!1742374 () Bool)

(assert (=> b!4236495 (=> (not res!1742374) (not e!2630664))))

(assert (=> b!4236495 (= res!1742374 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505883)))) (_2!25333 (get!15230 lt!1505883))) shorterInput!51))))

(declare-fun b!4236496 () Bool)

(assert (=> b!4236496 (= e!2630663 call!293791)))

(declare-fun bm!293786 () Bool)

(declare-fun maxPrefixOneRule!3442 (LexerInterface!7507 Rule!15624 List!46943) Option!10048)

(assert (=> bm!293786 (= call!293791 (maxPrefixOneRule!3442 thiss!21540 (h!52241 rules!2932) shorterInput!51))))

(assert (= (and d!1246427 c!720019) b!4236496))

(assert (= (and d!1246427 (not c!720019)) b!4236494))

(assert (= (or b!4236496 b!4236494) bm!293786))

(assert (= (and d!1246427 (not res!1742376)) b!4236488))

(assert (= (and b!4236488 res!1742379) b!4236490))

(assert (= (and b!4236490 res!1742377) b!4236493))

(assert (= (and b!4236493 res!1742378) b!4236495))

(assert (= (and b!4236495 res!1742374) b!4236489))

(assert (= (and b!4236489 res!1742380) b!4236492))

(assert (= (and b!4236492 res!1742375) b!4236491))

(declare-fun m!4822115 () Bool)

(assert (=> b!4236489 m!4822115))

(declare-fun m!4822117 () Bool)

(assert (=> b!4236489 m!4822117))

(assert (=> b!4236489 m!4822117))

(declare-fun m!4822119 () Bool)

(assert (=> b!4236489 m!4822119))

(assert (=> b!4236493 m!4822115))

(declare-fun m!4822121 () Bool)

(assert (=> b!4236493 m!4822121))

(assert (=> b!4236493 m!4821885))

(declare-fun m!4822123 () Bool)

(assert (=> d!1246427 m!4822123))

(declare-fun m!4822125 () Bool)

(assert (=> d!1246427 m!4822125))

(declare-fun m!4822127 () Bool)

(assert (=> d!1246427 m!4822127))

(declare-fun m!4822129 () Bool)

(assert (=> d!1246427 m!4822129))

(declare-fun m!4822131 () Bool)

(assert (=> bm!293786 m!4822131))

(assert (=> b!4236495 m!4822115))

(declare-fun m!4822133 () Bool)

(assert (=> b!4236495 m!4822133))

(assert (=> b!4236495 m!4822133))

(declare-fun m!4822135 () Bool)

(assert (=> b!4236495 m!4822135))

(assert (=> b!4236495 m!4822135))

(declare-fun m!4822137 () Bool)

(assert (=> b!4236495 m!4822137))

(declare-fun m!4822139 () Bool)

(assert (=> b!4236488 m!4822139))

(declare-fun m!4822141 () Bool)

(assert (=> b!4236494 m!4822141))

(assert (=> b!4236492 m!4822115))

(assert (=> b!4236492 m!4822133))

(assert (=> b!4236492 m!4822133))

(assert (=> b!4236492 m!4822135))

(assert (=> b!4236492 m!4822135))

(declare-fun m!4822143 () Bool)

(assert (=> b!4236492 m!4822143))

(assert (=> b!4236491 m!4822115))

(declare-fun m!4822145 () Bool)

(assert (=> b!4236491 m!4822145))

(assert (=> b!4236490 m!4822115))

(assert (=> b!4236490 m!4822133))

(assert (=> b!4236490 m!4822133))

(assert (=> b!4236490 m!4822135))

(assert (=> b!4236298 d!1246427))

(declare-fun b!4236497 () Bool)

(declare-fun e!2630665 () Bool)

(declare-fun e!2630667 () Bool)

(assert (=> b!4236497 (= e!2630665 e!2630667)))

(declare-fun res!1742386 () Bool)

(assert (=> b!4236497 (=> (not res!1742386) (not e!2630667))))

(declare-fun lt!1505888 () Option!10048)

(assert (=> b!4236497 (= res!1742386 (isDefined!7432 lt!1505888))))

(declare-fun b!4236498 () Bool)

(declare-fun res!1742387 () Bool)

(assert (=> b!4236498 (=> (not res!1742387) (not e!2630667))))

(assert (=> b!4236498 (= res!1742387 (= (value!246028 (_1!25333 (get!15230 lt!1505888))) (apply!10744 (transformation!7912 (rule!11036 (_1!25333 (get!15230 lt!1505888)))) (seqFromList!5804 (originalCharacters!8256 (_1!25333 (get!15230 lt!1505888)))))))))

(declare-fun b!4236499 () Bool)

(declare-fun res!1742384 () Bool)

(assert (=> b!4236499 (=> (not res!1742384) (not e!2630667))))

(assert (=> b!4236499 (= res!1742384 (= (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505888)))) (originalCharacters!8256 (_1!25333 (get!15230 lt!1505888)))))))

(declare-fun d!1246443 () Bool)

(assert (=> d!1246443 e!2630665))

(declare-fun res!1742383 () Bool)

(assert (=> d!1246443 (=> res!1742383 e!2630665)))

(assert (=> d!1246443 (= res!1742383 (isEmpty!27669 lt!1505888))))

(declare-fun e!2630666 () Option!10048)

(assert (=> d!1246443 (= lt!1505888 e!2630666)))

(declare-fun c!720020 () Bool)

(assert (=> d!1246443 (= c!720020 (and ((_ is Cons!46821) rules!2932) ((_ is Nil!46821) (t!349792 rules!2932))))))

(declare-fun lt!1505884 () Unit!65935)

(declare-fun lt!1505887 () Unit!65935)

(assert (=> d!1246443 (= lt!1505884 lt!1505887)))

(assert (=> d!1246443 (isPrefix!4717 longerInput!51 longerInput!51)))

(assert (=> d!1246443 (= lt!1505887 (lemmaIsPrefixRefl!3114 longerInput!51 longerInput!51))))

(assert (=> d!1246443 (rulesValidInductive!2966 thiss!21540 rules!2932)))

(assert (=> d!1246443 (= (maxPrefix!4465 thiss!21540 rules!2932 longerInput!51) lt!1505888)))

(declare-fun b!4236500 () Bool)

(assert (=> b!4236500 (= e!2630667 (contains!9715 rules!2932 (rule!11036 (_1!25333 (get!15230 lt!1505888)))))))

(declare-fun b!4236501 () Bool)

(declare-fun res!1742382 () Bool)

(assert (=> b!4236501 (=> (not res!1742382) (not e!2630667))))

(assert (=> b!4236501 (= res!1742382 (matchR!6439 (regex!7912 (rule!11036 (_1!25333 (get!15230 lt!1505888)))) (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505888))))))))

(declare-fun b!4236502 () Bool)

(declare-fun res!1742385 () Bool)

(assert (=> b!4236502 (=> (not res!1742385) (not e!2630667))))

(assert (=> b!4236502 (= res!1742385 (< (size!34301 (_2!25333 (get!15230 lt!1505888))) (size!34301 longerInput!51)))))

(declare-fun b!4236503 () Bool)

(declare-fun lt!1505886 () Option!10048)

(declare-fun lt!1505885 () Option!10048)

(assert (=> b!4236503 (= e!2630666 (ite (and ((_ is None!10047) lt!1505886) ((_ is None!10047) lt!1505885)) None!10047 (ite ((_ is None!10047) lt!1505885) lt!1505886 (ite ((_ is None!10047) lt!1505886) lt!1505885 (ite (>= (size!34299 (_1!25333 (v!40995 lt!1505886))) (size!34299 (_1!25333 (v!40995 lt!1505885)))) lt!1505886 lt!1505885)))))))

(declare-fun call!293792 () Option!10048)

(assert (=> b!4236503 (= lt!1505886 call!293792)))

(assert (=> b!4236503 (= lt!1505885 (maxPrefix!4465 thiss!21540 (t!349792 rules!2932) longerInput!51))))

(declare-fun b!4236504 () Bool)

(declare-fun res!1742381 () Bool)

(assert (=> b!4236504 (=> (not res!1742381) (not e!2630667))))

(assert (=> b!4236504 (= res!1742381 (= (++!11923 (list!16883 (charsOf!5268 (_1!25333 (get!15230 lt!1505888)))) (_2!25333 (get!15230 lt!1505888))) longerInput!51))))

(declare-fun b!4236505 () Bool)

(assert (=> b!4236505 (= e!2630666 call!293792)))

(declare-fun bm!293787 () Bool)

(assert (=> bm!293787 (= call!293792 (maxPrefixOneRule!3442 thiss!21540 (h!52241 rules!2932) longerInput!51))))

(assert (= (and d!1246443 c!720020) b!4236505))

(assert (= (and d!1246443 (not c!720020)) b!4236503))

(assert (= (or b!4236505 b!4236503) bm!293787))

(assert (= (and d!1246443 (not res!1742383)) b!4236497))

(assert (= (and b!4236497 res!1742386) b!4236499))

(assert (= (and b!4236499 res!1742384) b!4236502))

(assert (= (and b!4236502 res!1742385) b!4236504))

(assert (= (and b!4236504 res!1742381) b!4236498))

(assert (= (and b!4236498 res!1742387) b!4236501))

(assert (= (and b!4236501 res!1742382) b!4236500))

(declare-fun m!4822147 () Bool)

(assert (=> b!4236498 m!4822147))

(declare-fun m!4822149 () Bool)

(assert (=> b!4236498 m!4822149))

(assert (=> b!4236498 m!4822149))

(declare-fun m!4822151 () Bool)

(assert (=> b!4236498 m!4822151))

(assert (=> b!4236502 m!4822147))

(declare-fun m!4822153 () Bool)

(assert (=> b!4236502 m!4822153))

(assert (=> b!4236502 m!4821883))

(declare-fun m!4822155 () Bool)

(assert (=> d!1246443 m!4822155))

(declare-fun m!4822157 () Bool)

(assert (=> d!1246443 m!4822157))

(declare-fun m!4822159 () Bool)

(assert (=> d!1246443 m!4822159))

(assert (=> d!1246443 m!4822129))

(declare-fun m!4822161 () Bool)

(assert (=> bm!293787 m!4822161))

(assert (=> b!4236504 m!4822147))

(declare-fun m!4822163 () Bool)

(assert (=> b!4236504 m!4822163))

(assert (=> b!4236504 m!4822163))

(declare-fun m!4822165 () Bool)

(assert (=> b!4236504 m!4822165))

(assert (=> b!4236504 m!4822165))

(declare-fun m!4822167 () Bool)

(assert (=> b!4236504 m!4822167))

(declare-fun m!4822169 () Bool)

(assert (=> b!4236497 m!4822169))

(declare-fun m!4822171 () Bool)

(assert (=> b!4236503 m!4822171))

(assert (=> b!4236501 m!4822147))

(assert (=> b!4236501 m!4822163))

(assert (=> b!4236501 m!4822163))

(assert (=> b!4236501 m!4822165))

(assert (=> b!4236501 m!4822165))

(declare-fun m!4822173 () Bool)

(assert (=> b!4236501 m!4822173))

(assert (=> b!4236500 m!4822147))

(declare-fun m!4822175 () Bool)

(assert (=> b!4236500 m!4822175))

(assert (=> b!4236499 m!4822147))

(assert (=> b!4236499 m!4822163))

(assert (=> b!4236499 m!4822163))

(assert (=> b!4236499 m!4822165))

(assert (=> b!4236298 d!1246443))

(declare-fun d!1246445 () Bool)

(declare-fun lt!1505901 () Int)

(assert (=> d!1246445 (>= lt!1505901 0)))

(declare-fun e!2630682 () Int)

(assert (=> d!1246445 (= lt!1505901 e!2630682)))

(declare-fun c!720030 () Bool)

(assert (=> d!1246445 (= c!720030 ((_ is Nil!46819) longerInput!51))))

(assert (=> d!1246445 (= (size!34301 longerInput!51) lt!1505901)))

(declare-fun b!4236530 () Bool)

(assert (=> b!4236530 (= e!2630682 0)))

(declare-fun b!4236531 () Bool)

(assert (=> b!4236531 (= e!2630682 (+ 1 (size!34301 (t!349790 longerInput!51))))))

(assert (= (and d!1246445 c!720030) b!4236530))

(assert (= (and d!1246445 (not c!720030)) b!4236531))

(declare-fun m!4822205 () Bool)

(assert (=> b!4236531 m!4822205))

(assert (=> b!4236287 d!1246445))

(declare-fun d!1246459 () Bool)

(declare-fun lt!1505903 () Int)

(assert (=> d!1246459 (>= lt!1505903 0)))

(declare-fun e!2630683 () Int)

(assert (=> d!1246459 (= lt!1505903 e!2630683)))

(declare-fun c!720031 () Bool)

(assert (=> d!1246459 (= c!720031 ((_ is Nil!46819) shorterInput!51))))

(assert (=> d!1246459 (= (size!34301 shorterInput!51) lt!1505903)))

(declare-fun b!4236532 () Bool)

(assert (=> b!4236532 (= e!2630683 0)))

(declare-fun b!4236533 () Bool)

(assert (=> b!4236533 (= e!2630683 (+ 1 (size!34301 (t!349790 shorterInput!51))))))

(assert (= (and d!1246459 c!720031) b!4236532))

(assert (= (and d!1246459 (not c!720031)) b!4236533))

(declare-fun m!4822207 () Bool)

(assert (=> b!4236533 m!4822207))

(assert (=> b!4236287 d!1246459))

(declare-fun d!1246461 () Bool)

(assert (=> d!1246461 (= (inv!61544 (tag!8776 (rule!11036 (h!52240 addTokens!17)))) (= (mod (str.len (value!246027 (tag!8776 (rule!11036 (h!52240 addTokens!17))))) 2) 0))))

(assert (=> b!4236302 d!1246461))

(declare-fun d!1246463 () Bool)

(declare-fun res!1742394 () Bool)

(declare-fun e!2630685 () Bool)

(assert (=> d!1246463 (=> (not res!1742394) (not e!2630685))))

(assert (=> d!1246463 (= res!1742394 (semiInverseModEq!3440 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toValue!10656 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))))))

(assert (=> d!1246463 (= (inv!61547 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) e!2630685)))

(declare-fun b!4236535 () Bool)

(assert (=> b!4236535 (= e!2630685 (equivClasses!3339 (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toValue!10656 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))))))

(assert (= (and d!1246463 res!1742394) b!4236535))

(declare-fun m!4822217 () Bool)

(assert (=> d!1246463 m!4822217))

(declare-fun m!4822221 () Bool)

(assert (=> b!4236535 m!4822221))

(assert (=> b!4236302 d!1246463))

(declare-fun b!4236612 () Bool)

(declare-fun e!2630744 () Bool)

(declare-fun e!2630745 () Bool)

(assert (=> b!4236612 (= e!2630744 e!2630745)))

(declare-fun res!1742399 () Bool)

(declare-fun lt!1505911 () tuple2!44400)

(assert (=> b!4236612 (= res!1742399 (< (size!34301 (_2!25334 lt!1505911)) (size!34301 longerInput!51)))))

(assert (=> b!4236612 (=> (not res!1742399) (not e!2630745))))

(declare-fun d!1246469 () Bool)

(assert (=> d!1246469 e!2630744))

(declare-fun c!720039 () Bool)

(assert (=> d!1246469 (= c!720039 (> (size!34300 (_1!25334 lt!1505911)) 0))))

(declare-fun e!2630746 () tuple2!44400)

(assert (=> d!1246469 (= lt!1505911 e!2630746)))

(declare-fun c!720038 () Bool)

(declare-fun lt!1505910 () Option!10048)

(assert (=> d!1246469 (= c!720038 ((_ is Some!10047) lt!1505910))))

(assert (=> d!1246469 (= lt!1505910 (maxPrefix!4465 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1246469 (= (lexList!2013 thiss!21540 rules!2932 longerInput!51) lt!1505911)))

(declare-fun b!4236613 () Bool)

(assert (=> b!4236613 (= e!2630744 (= (_2!25334 lt!1505911) longerInput!51))))

(declare-fun b!4236614 () Bool)

(declare-fun lt!1505912 () tuple2!44400)

(assert (=> b!4236614 (= e!2630746 (tuple2!44401 (Cons!46820 (_1!25333 (v!40995 lt!1505910)) (_1!25334 lt!1505912)) (_2!25334 lt!1505912)))))

(assert (=> b!4236614 (= lt!1505912 (lexList!2013 thiss!21540 rules!2932 (_2!25333 (v!40995 lt!1505910))))))

(declare-fun b!4236615 () Bool)

(assert (=> b!4236615 (= e!2630746 (tuple2!44401 Nil!46820 longerInput!51))))

(declare-fun b!4236616 () Bool)

(assert (=> b!4236616 (= e!2630745 (not (isEmpty!27665 (_1!25334 lt!1505911))))))

(assert (= (and d!1246469 c!720038) b!4236614))

(assert (= (and d!1246469 (not c!720038)) b!4236615))

(assert (= (and d!1246469 c!720039) b!4236612))

(assert (= (and d!1246469 (not c!720039)) b!4236613))

(assert (= (and b!4236612 res!1742399) b!4236616))

(declare-fun m!4822251 () Bool)

(assert (=> b!4236612 m!4822251))

(assert (=> b!4236612 m!4821883))

(declare-fun m!4822253 () Bool)

(assert (=> d!1246469 m!4822253))

(assert (=> d!1246469 m!4821879))

(declare-fun m!4822255 () Bool)

(assert (=> b!4236614 m!4822255))

(declare-fun m!4822257 () Bool)

(assert (=> b!4236616 m!4822257))

(assert (=> b!4236301 d!1246469))

(declare-fun b!4236621 () Bool)

(declare-fun e!2630749 () Bool)

(declare-fun tp!1297699 () Bool)

(assert (=> b!4236621 (= e!2630749 (and tp_is_empty!22625 tp!1297699))))

(assert (=> b!4236305 (= tp!1297608 e!2630749)))

(assert (= (and b!4236305 ((_ is Cons!46819) (t!349790 shorterInput!51))) b!4236621))

(declare-fun b!4236632 () Bool)

(declare-fun e!2630752 () Bool)

(assert (=> b!4236632 (= e!2630752 tp_is_empty!22625)))

(declare-fun b!4236633 () Bool)

(declare-fun tp!1297711 () Bool)

(declare-fun tp!1297712 () Bool)

(assert (=> b!4236633 (= e!2630752 (and tp!1297711 tp!1297712))))

(assert (=> b!4236294 (= tp!1297615 e!2630752)))

(declare-fun b!4236634 () Bool)

(declare-fun tp!1297714 () Bool)

(assert (=> b!4236634 (= e!2630752 tp!1297714)))

(declare-fun b!4236635 () Bool)

(declare-fun tp!1297713 () Bool)

(declare-fun tp!1297710 () Bool)

(assert (=> b!4236635 (= e!2630752 (and tp!1297713 tp!1297710))))

(assert (= (and b!4236294 ((_ is ElementMatch!12817) (regex!7912 (h!52241 rules!2932)))) b!4236632))

(assert (= (and b!4236294 ((_ is Concat!20960) (regex!7912 (h!52241 rules!2932)))) b!4236633))

(assert (= (and b!4236294 ((_ is Star!12817) (regex!7912 (h!52241 rules!2932)))) b!4236634))

(assert (= (and b!4236294 ((_ is Union!12817) (regex!7912 (h!52241 rules!2932)))) b!4236635))

(declare-fun b!4236649 () Bool)

(declare-fun b_free!125215 () Bool)

(declare-fun b_next!125919 () Bool)

(assert (=> b!4236649 (= b_free!125215 (not b_next!125919))))

(declare-fun tp!1297725 () Bool)

(declare-fun b_and!334685 () Bool)

(assert (=> b!4236649 (= tp!1297725 b_and!334685)))

(declare-fun b_free!125217 () Bool)

(declare-fun b_next!125921 () Bool)

(assert (=> b!4236649 (= b_free!125217 (not b_next!125921))))

(declare-fun t!349867 () Bool)

(declare-fun tb!254111 () Bool)

(assert (=> (and b!4236649 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349867) tb!254111))

(declare-fun result!309982 () Bool)

(assert (= result!309982 result!309892))

(assert (=> b!4236332 t!349867))

(declare-fun t!349869 () Bool)

(declare-fun tb!254113 () Bool)

(assert (=> (and b!4236649 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349869) tb!254113))

(declare-fun result!309984 () Bool)

(assert (= result!309984 result!309900))

(assert (=> d!1246399 t!349869))

(declare-fun t!349871 () Bool)

(declare-fun tb!254115 () Bool)

(assert (=> (and b!4236649 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349871) tb!254115))

(declare-fun result!309986 () Bool)

(assert (= result!309986 result!309912))

(assert (=> b!4236376 t!349871))

(declare-fun t!349873 () Bool)

(declare-fun tb!254117 () Bool)

(assert (=> (and b!4236649 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349873) tb!254117))

(declare-fun result!309988 () Bool)

(assert (= result!309988 result!309920))

(assert (=> d!1246413 t!349873))

(declare-fun b_and!334687 () Bool)

(declare-fun tp!1297727 () Bool)

(assert (=> b!4236649 (= tp!1297727 (and (=> t!349867 result!309982) (=> t!349869 result!309984) (=> t!349871 result!309986) (=> t!349873 result!309988) b_and!334687))))

(declare-fun tp!1297726 () Bool)

(declare-fun b!4236647 () Bool)

(declare-fun e!2630766 () Bool)

(declare-fun e!2630768 () Bool)

(assert (=> b!4236647 (= e!2630766 (and (inv!21 (value!246028 (h!52240 (t!349791 tokens!581)))) e!2630768 tp!1297726))))

(declare-fun b!4236646 () Bool)

(declare-fun tp!1297729 () Bool)

(declare-fun e!2630769 () Bool)

(assert (=> b!4236646 (= e!2630769 (and (inv!61548 (h!52240 (t!349791 tokens!581))) e!2630766 tp!1297729))))

(assert (=> b!4236304 (= tp!1297607 e!2630769)))

(declare-fun tp!1297728 () Bool)

(declare-fun b!4236648 () Bool)

(declare-fun e!2630765 () Bool)

(assert (=> b!4236648 (= e!2630768 (and tp!1297728 (inv!61544 (tag!8776 (rule!11036 (h!52240 (t!349791 tokens!581))))) (inv!61547 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) e!2630765))))

(assert (=> b!4236649 (= e!2630765 (and tp!1297725 tp!1297727))))

(assert (= b!4236648 b!4236649))

(assert (= b!4236647 b!4236648))

(assert (= b!4236646 b!4236647))

(assert (= (and b!4236304 ((_ is Cons!46820) (t!349791 tokens!581))) b!4236646))

(declare-fun m!4822259 () Bool)

(assert (=> b!4236647 m!4822259))

(declare-fun m!4822261 () Bool)

(assert (=> b!4236646 m!4822261))

(declare-fun m!4822263 () Bool)

(assert (=> b!4236648 m!4822263))

(declare-fun m!4822265 () Bool)

(assert (=> b!4236648 m!4822265))

(declare-fun b!4236653 () Bool)

(declare-fun b_free!125219 () Bool)

(declare-fun b_next!125923 () Bool)

(assert (=> b!4236653 (= b_free!125219 (not b_next!125923))))

(declare-fun tp!1297730 () Bool)

(declare-fun b_and!334689 () Bool)

(assert (=> b!4236653 (= tp!1297730 b_and!334689)))

(declare-fun b_free!125221 () Bool)

(declare-fun b_next!125925 () Bool)

(assert (=> b!4236653 (= b_free!125221 (not b_next!125925))))

(declare-fun t!349875 () Bool)

(declare-fun tb!254119 () Bool)

(assert (=> (and b!4236653 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349875) tb!254119))

(declare-fun result!309990 () Bool)

(assert (= result!309990 result!309892))

(assert (=> b!4236332 t!349875))

(declare-fun tb!254121 () Bool)

(declare-fun t!349877 () Bool)

(assert (=> (and b!4236653 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349877) tb!254121))

(declare-fun result!309992 () Bool)

(assert (= result!309992 result!309900))

(assert (=> d!1246399 t!349877))

(declare-fun t!349879 () Bool)

(declare-fun tb!254123 () Bool)

(assert (=> (and b!4236653 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349879) tb!254123))

(declare-fun result!309994 () Bool)

(assert (= result!309994 result!309912))

(assert (=> b!4236376 t!349879))

(declare-fun tb!254125 () Bool)

(declare-fun t!349881 () Bool)

(assert (=> (and b!4236653 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349881) tb!254125))

(declare-fun result!309996 () Bool)

(assert (= result!309996 result!309920))

(assert (=> d!1246413 t!349881))

(declare-fun tp!1297732 () Bool)

(declare-fun b_and!334691 () Bool)

(assert (=> b!4236653 (= tp!1297732 (and (=> t!349875 result!309990) (=> t!349877 result!309992) (=> t!349879 result!309994) (=> t!349881 result!309996) b_and!334691))))

(declare-fun e!2630772 () Bool)

(declare-fun e!2630774 () Bool)

(declare-fun b!4236651 () Bool)

(declare-fun tp!1297731 () Bool)

(assert (=> b!4236651 (= e!2630772 (and (inv!21 (value!246028 (h!52240 (t!349791 addTokens!17)))) e!2630774 tp!1297731))))

(declare-fun b!4236650 () Bool)

(declare-fun tp!1297734 () Bool)

(declare-fun e!2630775 () Bool)

(assert (=> b!4236650 (= e!2630775 (and (inv!61548 (h!52240 (t!349791 addTokens!17))) e!2630772 tp!1297734))))

(assert (=> b!4236303 (= tp!1297617 e!2630775)))

(declare-fun b!4236652 () Bool)

(declare-fun tp!1297733 () Bool)

(declare-fun e!2630771 () Bool)

(assert (=> b!4236652 (= e!2630774 (and tp!1297733 (inv!61544 (tag!8776 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (inv!61547 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) e!2630771))))

(assert (=> b!4236653 (= e!2630771 (and tp!1297730 tp!1297732))))

(assert (= b!4236652 b!4236653))

(assert (= b!4236651 b!4236652))

(assert (= b!4236650 b!4236651))

(assert (= (and b!4236303 ((_ is Cons!46820) (t!349791 addTokens!17))) b!4236650))

(declare-fun m!4822267 () Bool)

(assert (=> b!4236651 m!4822267))

(declare-fun m!4822269 () Bool)

(assert (=> b!4236650 m!4822269))

(declare-fun m!4822271 () Bool)

(assert (=> b!4236652 m!4822271))

(declare-fun m!4822273 () Bool)

(assert (=> b!4236652 m!4822273))

(declare-fun b!4236654 () Bool)

(declare-fun e!2630777 () Bool)

(declare-fun tp!1297735 () Bool)

(assert (=> b!4236654 (= e!2630777 (and tp_is_empty!22625 tp!1297735))))

(assert (=> b!4236286 (= tp!1297612 e!2630777)))

(assert (= (and b!4236286 ((_ is Cons!46819) (t!349790 suffix!1262))) b!4236654))

(declare-fun b!4236655 () Bool)

(declare-fun e!2630778 () Bool)

(declare-fun tp!1297736 () Bool)

(assert (=> b!4236655 (= e!2630778 (and tp_is_empty!22625 tp!1297736))))

(assert (=> b!4236296 (= tp!1297616 e!2630778)))

(assert (= (and b!4236296 ((_ is Cons!46819) (originalCharacters!8256 (h!52240 tokens!581)))) b!4236655))

(declare-fun b!4236656 () Bool)

(declare-fun e!2630779 () Bool)

(assert (=> b!4236656 (= e!2630779 tp_is_empty!22625)))

(declare-fun b!4236657 () Bool)

(declare-fun tp!1297738 () Bool)

(declare-fun tp!1297739 () Bool)

(assert (=> b!4236657 (= e!2630779 (and tp!1297738 tp!1297739))))

(assert (=> b!4236285 (= tp!1297619 e!2630779)))

(declare-fun b!4236658 () Bool)

(declare-fun tp!1297741 () Bool)

(assert (=> b!4236658 (= e!2630779 tp!1297741)))

(declare-fun b!4236659 () Bool)

(declare-fun tp!1297740 () Bool)

(declare-fun tp!1297737 () Bool)

(assert (=> b!4236659 (= e!2630779 (and tp!1297740 tp!1297737))))

(assert (= (and b!4236285 ((_ is ElementMatch!12817) (regex!7912 (rule!11036 (h!52240 tokens!581))))) b!4236656))

(assert (= (and b!4236285 ((_ is Concat!20960) (regex!7912 (rule!11036 (h!52240 tokens!581))))) b!4236657))

(assert (= (and b!4236285 ((_ is Star!12817) (regex!7912 (rule!11036 (h!52240 tokens!581))))) b!4236658))

(assert (= (and b!4236285 ((_ is Union!12817) (regex!7912 (rule!11036 (h!52240 tokens!581))))) b!4236659))

(declare-fun b!4236660 () Bool)

(declare-fun e!2630780 () Bool)

(declare-fun tp!1297742 () Bool)

(assert (=> b!4236660 (= e!2630780 (and tp_is_empty!22625 tp!1297742))))

(assert (=> b!4236306 (= tp!1297610 e!2630780)))

(assert (= (and b!4236306 ((_ is Cons!46819) (originalCharacters!8256 (h!52240 addTokens!17)))) b!4236660))

(declare-fun b!4236671 () Bool)

(declare-fun b_free!125223 () Bool)

(declare-fun b_next!125927 () Bool)

(assert (=> b!4236671 (= b_free!125223 (not b_next!125927))))

(declare-fun tp!1297753 () Bool)

(declare-fun b_and!334693 () Bool)

(assert (=> b!4236671 (= tp!1297753 b_and!334693)))

(declare-fun b_free!125225 () Bool)

(declare-fun b_next!125929 () Bool)

(assert (=> b!4236671 (= b_free!125225 (not b_next!125929))))

(declare-fun tb!254127 () Bool)

(declare-fun t!349883 () Bool)

(assert (=> (and b!4236671 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581))))) t!349883) tb!254127))

(declare-fun result!310000 () Bool)

(assert (= result!310000 result!309892))

(assert (=> b!4236332 t!349883))

(declare-fun tb!254129 () Bool)

(declare-fun t!349885 () Bool)

(assert (=> (and b!4236671 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505823)))))) t!349885) tb!254129))

(declare-fun result!310002 () Bool)

(assert (= result!310002 result!309900))

(assert (=> d!1246399 t!349885))

(declare-fun t!349887 () Bool)

(declare-fun tb!254131 () Bool)

(assert (=> (and b!4236671 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17))))) t!349887) tb!254131))

(declare-fun result!310004 () Bool)

(assert (= result!310004 result!309912))

(assert (=> b!4236376 t!349887))

(declare-fun tb!254133 () Bool)

(declare-fun t!349889 () Bool)

(assert (=> (and b!4236671 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (_1!25333 (v!40995 lt!1505824)))))) t!349889) tb!254133))

(declare-fun result!310006 () Bool)

(assert (= result!310006 result!309920))

(assert (=> d!1246413 t!349889))

(declare-fun b_and!334695 () Bool)

(declare-fun tp!1297754 () Bool)

(assert (=> b!4236671 (= tp!1297754 (and (=> t!349883 result!310000) (=> t!349885 result!310002) (=> t!349887 result!310004) (=> t!349889 result!310006) b_and!334695))))

(declare-fun e!2630792 () Bool)

(assert (=> b!4236671 (= e!2630792 (and tp!1297753 tp!1297754))))

(declare-fun tp!1297751 () Bool)

(declare-fun e!2630789 () Bool)

(declare-fun b!4236670 () Bool)

(assert (=> b!4236670 (= e!2630789 (and tp!1297751 (inv!61544 (tag!8776 (h!52241 (t!349792 rules!2932)))) (inv!61547 (transformation!7912 (h!52241 (t!349792 rules!2932)))) e!2630792))))

(declare-fun b!4236669 () Bool)

(declare-fun e!2630790 () Bool)

(declare-fun tp!1297752 () Bool)

(assert (=> b!4236669 (= e!2630790 (and e!2630789 tp!1297752))))

(assert (=> b!4236299 (= tp!1297618 e!2630790)))

(assert (= b!4236670 b!4236671))

(assert (= b!4236669 b!4236670))

(assert (= (and b!4236299 ((_ is Cons!46821) (t!349792 rules!2932))) b!4236669))

(declare-fun m!4822275 () Bool)

(assert (=> b!4236670 m!4822275))

(declare-fun m!4822277 () Bool)

(assert (=> b!4236670 m!4822277))

(declare-fun b!4236672 () Bool)

(declare-fun e!2630793 () Bool)

(assert (=> b!4236672 (= e!2630793 tp_is_empty!22625)))

(declare-fun b!4236673 () Bool)

(declare-fun tp!1297756 () Bool)

(declare-fun tp!1297757 () Bool)

(assert (=> b!4236673 (= e!2630793 (and tp!1297756 tp!1297757))))

(assert (=> b!4236302 (= tp!1297611 e!2630793)))

(declare-fun b!4236674 () Bool)

(declare-fun tp!1297759 () Bool)

(assert (=> b!4236674 (= e!2630793 tp!1297759)))

(declare-fun b!4236675 () Bool)

(declare-fun tp!1297758 () Bool)

(declare-fun tp!1297755 () Bool)

(assert (=> b!4236675 (= e!2630793 (and tp!1297758 tp!1297755))))

(assert (= (and b!4236302 ((_ is ElementMatch!12817) (regex!7912 (rule!11036 (h!52240 addTokens!17))))) b!4236672))

(assert (= (and b!4236302 ((_ is Concat!20960) (regex!7912 (rule!11036 (h!52240 addTokens!17))))) b!4236673))

(assert (= (and b!4236302 ((_ is Star!12817) (regex!7912 (rule!11036 (h!52240 addTokens!17))))) b!4236674))

(assert (= (and b!4236302 ((_ is Union!12817) (regex!7912 (rule!11036 (h!52240 addTokens!17))))) b!4236675))

(declare-fun b!4236676 () Bool)

(declare-fun e!2630794 () Bool)

(declare-fun tp!1297760 () Bool)

(assert (=> b!4236676 (= e!2630794 (and tp_is_empty!22625 tp!1297760))))

(assert (=> b!4236290 (= tp!1297614 e!2630794)))

(assert (= (and b!4236290 ((_ is Cons!46819) (t!349790 longerInput!51))) b!4236676))

(declare-fun b_lambda!124703 () Bool)

(assert (= b_lambda!124689 (or (and b!4236671 b_free!125225 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))))) (and b!4236289 b_free!125193 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))))) (and b!4236292 b_free!125201 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))))) (and b!4236649 b_free!125217 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))))) (and b!4236653 b_free!125221 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))))) (and b!4236291 b_free!125197) b_lambda!124703)))

(declare-fun b_lambda!124705 () Bool)

(assert (= b_lambda!124683 (or (and b!4236671 b_free!125225 (= (toChars!10515 (transformation!7912 (h!52241 (t!349792 rules!2932)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))))) (and b!4236289 b_free!125193 (= (toChars!10515 (transformation!7912 (h!52241 rules!2932))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))))) (and b!4236291 b_free!125197 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 addTokens!17)))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))))) (and b!4236649 b_free!125217 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 tokens!581))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))))) (and b!4236653 b_free!125221 (= (toChars!10515 (transformation!7912 (rule!11036 (h!52240 (t!349791 addTokens!17))))) (toChars!10515 (transformation!7912 (rule!11036 (h!52240 tokens!581)))))) (and b!4236292 b_free!125201) b_lambda!124705)))

(check-sat (not b!4236646) (not b_next!125923) b_and!334689 (not b!4236504) (not b!4236492) (not b!4236657) b_and!334685 (not b!4236398) (not b!4236332) b_and!334695 (not b!4236497) (not b!4236675) (not b!4236324) (not b!4236489) (not bm!293786) (not b!4236503) (not b!4236669) (not d!1246399) (not b!4236501) (not b!4236377) (not b!4236658) (not d!1246443) (not b!4236401) b_and!334617 (not b_next!125903) b_and!334651 (not b!4236614) (not d!1246371) (not b!4236365) (not b!4236400) (not bm!293787) (not b_next!125901) (not b_next!125895) b_and!334621 (not b!4236674) (not b!4236364) (not b_next!125905) (not b!4236500) (not b!4236333) b_and!334649 (not d!1246395) (not b_lambda!124703) (not b!4236403) (not b!4236673) (not b!4236651) (not d!1246427) (not b_next!125899) (not d!1246409) (not b!4236309) (not b_next!125927) (not b!4236655) (not b!4236342) b_and!334693 (not b!4236621) (not b_next!125919) (not b!4236404) (not d!1246413) (not tb!254039) (not b!4236654) (not b!4236660) (not b!4236652) b_and!334691 (not b!4236498) (not b_lambda!124691) (not b!4236494) (not b!4236490) (not b!4236493) (not tb!254045) (not b!4236495) (not d!1246419) (not b!4236371) (not b_next!125929) (not b!4236670) (not b!4236531) (not b!4236635) (not d!1246469) (not tb!254063) (not b!4236395) (not b!4236397) (not b!4236650) (not b!4236648) (not b_next!125897) (not b!4236633) (not b!4236491) (not b!4236376) (not b!4236381) (not b_next!125925) (not b!4236379) (not b!4236647) (not b!4236499) b_and!334653 (not b_lambda!124685) (not d!1246411) (not d!1246463) (not b!4236616) (not d!1246405) tp_is_empty!22625 (not b!4236488) (not b!4236535) (not b!4236612) (not b!4236382) (not tb!254055) (not d!1246375) (not b!4236659) (not d!1246389) (not b_lambda!124705) (not b!4236676) (not b_next!125921) b_and!334613 (not d!1246383) (not b!4236312) (not b!4236634) (not b!4236502) (not b!4236384) b_and!334687 (not b!4236533))
(check-sat (not b_next!125901) b_and!334649 (not b_next!125899) (not b_next!125919) (not b_next!125923) b_and!334691 b_and!334689 (not b_next!125929) (not b_next!125897) (not b_next!125925) b_and!334653 b_and!334687 b_and!334695 b_and!334685 b_and!334617 (not b_next!125903) b_and!334651 (not b_next!125895) b_and!334621 (not b_next!125905) (not b_next!125927) b_and!334693 (not b_next!125921) b_and!334613)
