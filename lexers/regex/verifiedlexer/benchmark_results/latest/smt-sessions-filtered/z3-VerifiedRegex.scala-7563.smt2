; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398954 () Bool)

(assert start!398954)

(declare-fun b!4182905 () Bool)

(declare-fun b_free!121583 () Bool)

(declare-fun b_next!122287 () Bool)

(assert (=> b!4182905 (= b_free!121583 (not b_next!122287))))

(declare-fun tp!1278403 () Bool)

(declare-fun b_and!327285 () Bool)

(assert (=> b!4182905 (= tp!1278403 b_and!327285)))

(declare-fun b_free!121585 () Bool)

(declare-fun b_next!122289 () Bool)

(assert (=> b!4182905 (= b_free!121585 (not b_next!122289))))

(declare-fun tp!1278411 () Bool)

(declare-fun b_and!327287 () Bool)

(assert (=> b!4182905 (= tp!1278411 b_and!327287)))

(declare-fun b!4182914 () Bool)

(declare-fun b_free!121587 () Bool)

(declare-fun b_next!122291 () Bool)

(assert (=> b!4182914 (= b_free!121587 (not b_next!122291))))

(declare-fun tp!1278407 () Bool)

(declare-fun b_and!327289 () Bool)

(assert (=> b!4182914 (= tp!1278407 b_and!327289)))

(declare-fun b_free!121589 () Bool)

(declare-fun b_next!122293 () Bool)

(assert (=> b!4182914 (= b_free!121589 (not b_next!122293))))

(declare-fun tp!1278413 () Bool)

(declare-fun b_and!327291 () Bool)

(assert (=> b!4182914 (= tp!1278413 b_and!327291)))

(declare-fun b!4182898 () Bool)

(declare-fun b_free!121591 () Bool)

(declare-fun b_next!122295 () Bool)

(assert (=> b!4182898 (= b_free!121591 (not b_next!122295))))

(declare-fun tp!1278402 () Bool)

(declare-fun b_and!327293 () Bool)

(assert (=> b!4182898 (= tp!1278402 b_and!327293)))

(declare-fun b_free!121593 () Bool)

(declare-fun b_next!122297 () Bool)

(assert (=> b!4182898 (= b_free!121593 (not b_next!122297))))

(declare-fun tp!1278406 () Bool)

(declare-fun b_and!327295 () Bool)

(assert (=> b!4182898 (= tp!1278406 b_and!327295)))

(declare-fun b!4182890 () Bool)

(declare-fun e!2596791 () Bool)

(declare-fun e!2596789 () Bool)

(assert (=> b!4182890 (= e!2596791 (not e!2596789))))

(declare-fun res!1715406 () Bool)

(assert (=> b!4182890 (=> res!1715406 e!2596789)))

(declare-datatypes ((C!25284 0))(
  ( (C!25285 (val!14804 Int)) )
))
(declare-datatypes ((List!46043 0))(
  ( (Nil!45919) (Cons!45919 (h!51339 C!25284) (t!345212 List!46043)) )
))
(declare-fun input!3342 () List!46043)

(declare-datatypes ((LexerInterface!7235 0))(
  ( (LexerInterfaceExt!7232 (__x!27965 Int)) (Lexer!7233) )
))
(declare-fun thiss!25986 () LexerInterface!7235)

(declare-datatypes ((List!46044 0))(
  ( (Nil!45920) (Cons!45920 (h!51340 (_ BitVec 16)) (t!345213 List!46044)) )
))
(declare-datatypes ((TokenValue!7872 0))(
  ( (FloatLiteralValue!15744 (text!55549 List!46044)) (TokenValueExt!7871 (__x!27966 Int)) (Broken!39360 (value!238303 List!46044)) (Object!7995) (End!7872) (Def!7872) (Underscore!7872) (Match!7872) (Else!7872) (Error!7872) (Case!7872) (If!7872) (Extends!7872) (Abstract!7872) (Class!7872) (Val!7872) (DelimiterValue!15744 (del!7932 List!46044)) (KeywordValue!7878 (value!238304 List!46044)) (CommentValue!15744 (value!238305 List!46044)) (WhitespaceValue!15744 (value!238306 List!46044)) (IndentationValue!7872 (value!238307 List!46044)) (String!53225) (Int32!7872) (Broken!39361 (value!238308 List!46044)) (Boolean!7873) (Unit!65004) (OperatorValue!7875 (op!7932 List!46044)) (IdentifierValue!15744 (value!238309 List!46044)) (IdentifierValue!15745 (value!238310 List!46044)) (WhitespaceValue!15745 (value!238311 List!46044)) (True!15744) (False!15744) (Broken!39362 (value!238312 List!46044)) (Broken!39363 (value!238313 List!46044)) (True!15745) (RightBrace!7872) (RightBracket!7872) (Colon!7872) (Null!7872) (Comma!7872) (LeftBracket!7872) (False!15745) (LeftBrace!7872) (ImaginaryLiteralValue!7872 (text!55550 List!46044)) (StringLiteralValue!23616 (value!238314 List!46044)) (EOFValue!7872 (value!238315 List!46044)) (IdentValue!7872 (value!238316 List!46044)) (DelimiterValue!15745 (value!238317 List!46044)) (DedentValue!7872 (value!238318 List!46044)) (NewLineValue!7872 (value!238319 List!46044)) (IntegerValue!23616 (value!238320 (_ BitVec 32)) (text!55551 List!46044)) (IntegerValue!23617 (value!238321 Int) (text!55552 List!46044)) (Times!7872) (Or!7872) (Equal!7872) (Minus!7872) (Broken!39364 (value!238322 List!46044)) (And!7872) (Div!7872) (LessEqual!7872) (Mod!7872) (Concat!20419) (Not!7872) (Plus!7872) (SpaceValue!7872 (value!238323 List!46044)) (IntegerValue!23618 (value!238324 Int) (text!55553 List!46044)) (StringLiteralValue!23617 (text!55554 List!46044)) (FloatLiteralValue!15745 (text!55555 List!46044)) (BytesLiteralValue!7872 (value!238325 List!46044)) (CommentValue!15745 (value!238326 List!46044)) (StringLiteralValue!23618 (value!238327 List!46044)) (ErrorTokenValue!7872 (msg!7933 List!46044)) )
))
(declare-datatypes ((Regex!12547 0))(
  ( (ElementMatch!12547 (c!714176 C!25284)) (Concat!20420 (regOne!25606 Regex!12547) (regTwo!25606 Regex!12547)) (EmptyExpr!12547) (Star!12547 (reg!12876 Regex!12547)) (EmptyLang!12547) (Union!12547 (regOne!25607 Regex!12547) (regTwo!25607 Regex!12547)) )
))
(declare-datatypes ((String!53226 0))(
  ( (String!53227 (value!238328 String)) )
))
(declare-datatypes ((IArray!27711 0))(
  ( (IArray!27712 (innerList!13913 List!46043)) )
))
(declare-datatypes ((Conc!13853 0))(
  ( (Node!13853 (left!34208 Conc!13853) (right!34538 Conc!13853) (csize!27936 Int) (cheight!14064 Int)) (Leaf!21417 (xs!17159 IArray!27711) (csize!27937 Int)) (Empty!13853) )
))
(declare-datatypes ((BalanceConc!27300 0))(
  ( (BalanceConc!27301 (c!714177 Conc!13853)) )
))
(declare-datatypes ((TokenValueInjection!15172 0))(
  ( (TokenValueInjection!15173 (toValue!10334 Int) (toChars!10193 Int)) )
))
(declare-datatypes ((Rule!15084 0))(
  ( (Rule!15085 (regex!7642 Regex!12547) (tag!8506 String!53226) (isSeparator!7642 Bool) (transformation!7642 TokenValueInjection!15172)) )
))
(declare-datatypes ((Token!13998 0))(
  ( (Token!13999 (value!238329 TokenValue!7872) (rule!10708 Rule!15084) (size!33723 Int) (originalCharacters!8030 List!46043)) )
))
(declare-datatypes ((tuple2!43730 0))(
  ( (tuple2!43731 (_1!24999 Token!13998) (_2!24999 List!46043)) )
))
(declare-datatypes ((Option!9836 0))(
  ( (None!9835) (Some!9835 (v!40649 tuple2!43730)) )
))
(declare-fun lt!1489547 () Option!9836)

(declare-fun r!4142 () Rule!15084)

(declare-fun maxPrefixOneRule!3244 (LexerInterface!7235 Rule!15084 List!46043) Option!9836)

(assert (=> b!4182890 (= res!1715406 (not (= (maxPrefixOneRule!3244 thiss!25986 r!4142 input!3342) lt!1489547)))))

(declare-fun lt!1489548 () Int)

(declare-fun p!2959 () List!46043)

(declare-fun lt!1489546 () TokenValue!7872)

(declare-fun getSuffix!2792 (List!46043 List!46043) List!46043)

(assert (=> b!4182890 (= lt!1489547 (Some!9835 (tuple2!43731 (Token!13999 lt!1489546 r!4142 lt!1489548 p!2959) (getSuffix!2792 input!3342 p!2959))))))

(declare-fun size!33724 (List!46043) Int)

(assert (=> b!4182890 (= lt!1489548 (size!33724 p!2959))))

(declare-fun lt!1489549 () BalanceConc!27300)

(declare-fun apply!10607 (TokenValueInjection!15172 BalanceConc!27300) TokenValue!7872)

(assert (=> b!4182890 (= lt!1489546 (apply!10607 (transformation!7642 r!4142) lt!1489549))))

(declare-fun isPrefix!4499 (List!46043 List!46043) Bool)

(assert (=> b!4182890 (isPrefix!4499 input!3342 input!3342)))

(declare-datatypes ((Unit!65005 0))(
  ( (Unit!65006) )
))
(declare-fun lt!1489545 () Unit!65005)

(declare-fun lemmaIsPrefixRefl!2928 (List!46043 List!46043) Unit!65005)

(assert (=> b!4182890 (= lt!1489545 (lemmaIsPrefixRefl!2928 input!3342 input!3342))))

(declare-fun lt!1489552 () Unit!65005)

(declare-fun lemmaSemiInverse!2408 (TokenValueInjection!15172 BalanceConc!27300) Unit!65005)

(assert (=> b!4182890 (= lt!1489552 (lemmaSemiInverse!2408 (transformation!7642 r!4142) lt!1489549))))

(declare-fun seqFromList!5667 (List!46043) BalanceConc!27300)

(assert (=> b!4182890 (= lt!1489549 (seqFromList!5667 p!2959))))

(declare-fun b!4182891 () Bool)

(declare-fun res!1715393 () Bool)

(declare-fun e!2596799 () Bool)

(assert (=> b!4182891 (=> res!1715393 e!2596799)))

(declare-datatypes ((List!46045 0))(
  ( (Nil!45921) (Cons!45921 (h!51341 Rule!15084) (t!345214 List!46045)) )
))
(declare-fun rules!3843 () List!46045)

(declare-fun maxPrefix!4283 (LexerInterface!7235 List!46045 List!46043) Option!9836)

(assert (=> b!4182891 (= res!1715393 (not (= (maxPrefix!4283 thiss!25986 rules!3843 input!3342) lt!1489547)))))

(declare-fun b!4182892 () Bool)

(declare-fun res!1715403 () Bool)

(assert (=> b!4182892 (=> (not res!1715403) (not e!2596791))))

(declare-fun contains!9449 (List!46045 Rule!15084) Bool)

(assert (=> b!4182892 (= res!1715403 (contains!9449 rules!3843 r!4142))))

(declare-fun b!4182894 () Bool)

(declare-fun res!1715392 () Bool)

(assert (=> b!4182894 (=> (not res!1715392) (not e!2596791))))

(declare-fun rulesInvariant!6448 (LexerInterface!7235 List!46045) Bool)

(assert (=> b!4182894 (= res!1715392 (rulesInvariant!6448 thiss!25986 rules!3843))))

(declare-fun b!4182895 () Bool)

(declare-fun e!2596795 () Bool)

(assert (=> b!4182895 (= e!2596799 e!2596795)))

(declare-fun res!1715404 () Bool)

(assert (=> b!4182895 (=> res!1715404 e!2596795)))

(declare-fun rBis!167 () Rule!15084)

(declare-fun isEmpty!27172 (Option!9836) Bool)

(assert (=> b!4182895 (= res!1715404 (not (isEmpty!27172 (maxPrefixOneRule!3244 thiss!25986 rBis!167 input!3342))))))

(declare-fun lt!1489544 () Unit!65005)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2366 (LexerInterface!7235 Rule!15084 List!46045) Unit!65005)

(assert (=> b!4182895 (= lt!1489544 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2366 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1489543 () Int)

(assert (=> b!4182895 (<= lt!1489543 (size!33724 input!3342))))

(declare-fun lt!1489550 () Unit!65005)

(declare-fun pBis!107 () List!46043)

(declare-fun lemmaIsPrefixThenSmallerEqSize!529 (List!46043 List!46043) Unit!65005)

(assert (=> b!4182895 (= lt!1489550 (lemmaIsPrefixThenSmallerEqSize!529 pBis!107 input!3342))))

(declare-fun b!4182896 () Bool)

(declare-fun res!1715399 () Bool)

(assert (=> b!4182896 (=> (not res!1715399) (not e!2596791))))

(declare-fun isEmpty!27173 (List!46045) Bool)

(assert (=> b!4182896 (= res!1715399 (not (isEmpty!27173 rules!3843)))))

(declare-fun b!4182897 () Bool)

(declare-fun res!1715395 () Bool)

(assert (=> b!4182897 (=> (not res!1715395) (not e!2596791))))

(declare-fun validRegex!5664 (Regex!12547) Bool)

(assert (=> b!4182897 (= res!1715395 (validRegex!5664 (regex!7642 r!4142)))))

(declare-fun e!2596792 () Bool)

(assert (=> b!4182898 (= e!2596792 (and tp!1278402 tp!1278406))))

(declare-fun b!4182899 () Bool)

(declare-fun res!1715397 () Bool)

(assert (=> b!4182899 (=> (not res!1715397) (not e!2596791))))

(assert (=> b!4182899 (= res!1715397 (isPrefix!4499 p!2959 input!3342))))

(declare-fun b!4182900 () Bool)

(declare-fun e!2596797 () Bool)

(declare-fun tp_is_empty!22057 () Bool)

(declare-fun tp!1278412 () Bool)

(assert (=> b!4182900 (= e!2596797 (and tp_is_empty!22057 tp!1278412))))

(declare-fun b!4182901 () Bool)

(declare-fun res!1715398 () Bool)

(assert (=> b!4182901 (=> res!1715398 e!2596799)))

(declare-fun ruleValid!3360 (LexerInterface!7235 Rule!15084) Bool)

(assert (=> b!4182901 (= res!1715398 (not (ruleValid!3360 thiss!25986 rBis!167)))))

(declare-fun b!4182902 () Bool)

(declare-fun res!1715401 () Bool)

(assert (=> b!4182902 (=> (not res!1715401) (not e!2596791))))

(declare-fun matchR!6286 (Regex!12547 List!46043) Bool)

(assert (=> b!4182902 (= res!1715401 (matchR!6286 (regex!7642 r!4142) p!2959))))

(declare-fun b!4182903 () Bool)

(assert (=> b!4182903 (= e!2596795 true)))

(assert (=> b!4182903 (not (matchR!6286 (regex!7642 rBis!167) pBis!107))))

(declare-fun lt!1489551 () Unit!65005)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!586 (LexerInterface!7235 Rule!15084 List!46043 List!46043) Unit!65005)

(assert (=> b!4182903 (= lt!1489551 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!586 thiss!25986 rBis!167 pBis!107 input!3342))))

(declare-fun b!4182904 () Bool)

(declare-fun e!2596803 () Bool)

(declare-fun e!2596800 () Bool)

(declare-fun tp!1278410 () Bool)

(assert (=> b!4182904 (= e!2596803 (and e!2596800 tp!1278410))))

(declare-fun e!2596788 () Bool)

(assert (=> b!4182905 (= e!2596788 (and tp!1278403 tp!1278411))))

(declare-fun tp!1278404 () Bool)

(declare-fun e!2596804 () Bool)

(declare-fun e!2596802 () Bool)

(declare-fun b!4182906 () Bool)

(declare-fun inv!60458 (String!53226) Bool)

(declare-fun inv!60460 (TokenValueInjection!15172) Bool)

(assert (=> b!4182906 (= e!2596804 (and tp!1278404 (inv!60458 (tag!8506 r!4142)) (inv!60460 (transformation!7642 r!4142)) e!2596802))))

(declare-fun b!4182893 () Bool)

(declare-fun res!1715400 () Bool)

(assert (=> b!4182893 (=> (not res!1715400) (not e!2596791))))

(assert (=> b!4182893 (= res!1715400 (contains!9449 rules!3843 rBis!167))))

(declare-fun res!1715402 () Bool)

(assert (=> start!398954 (=> (not res!1715402) (not e!2596791))))

(get-info :version)

(assert (=> start!398954 (= res!1715402 ((_ is Lexer!7233) thiss!25986))))

(assert (=> start!398954 e!2596791))

(assert (=> start!398954 true))

(declare-fun e!2596793 () Bool)

(assert (=> start!398954 e!2596793))

(assert (=> start!398954 e!2596804))

(assert (=> start!398954 e!2596803))

(declare-fun e!2596794 () Bool)

(assert (=> start!398954 e!2596794))

(assert (=> start!398954 e!2596797))

(declare-fun e!2596796 () Bool)

(assert (=> start!398954 e!2596796))

(declare-fun b!4182907 () Bool)

(declare-fun tp!1278405 () Bool)

(assert (=> b!4182907 (= e!2596794 (and tp_is_empty!22057 tp!1278405))))

(declare-fun tp!1278408 () Bool)

(declare-fun b!4182908 () Bool)

(assert (=> b!4182908 (= e!2596800 (and tp!1278408 (inv!60458 (tag!8506 (h!51341 rules!3843))) (inv!60460 (transformation!7642 (h!51341 rules!3843))) e!2596788))))

(declare-fun b!4182909 () Bool)

(declare-fun tp!1278414 () Bool)

(assert (=> b!4182909 (= e!2596793 (and tp!1278414 (inv!60458 (tag!8506 rBis!167)) (inv!60460 (transformation!7642 rBis!167)) e!2596792))))

(declare-fun b!4182910 () Bool)

(declare-fun res!1715394 () Bool)

(assert (=> b!4182910 (=> (not res!1715394) (not e!2596791))))

(assert (=> b!4182910 (= res!1715394 (ruleValid!3360 thiss!25986 r!4142))))

(declare-fun b!4182911 () Bool)

(assert (=> b!4182911 (= e!2596789 e!2596799)))

(declare-fun res!1715405 () Bool)

(assert (=> b!4182911 (=> res!1715405 e!2596799)))

(assert (=> b!4182911 (= res!1715405 (<= lt!1489543 lt!1489548))))

(assert (=> b!4182911 (= lt!1489543 (size!33724 pBis!107))))

(declare-fun b!4182912 () Bool)

(declare-fun tp!1278409 () Bool)

(assert (=> b!4182912 (= e!2596796 (and tp_is_empty!22057 tp!1278409))))

(declare-fun b!4182913 () Bool)

(declare-fun res!1715396 () Bool)

(assert (=> b!4182913 (=> (not res!1715396) (not e!2596791))))

(assert (=> b!4182913 (= res!1715396 (isPrefix!4499 pBis!107 input!3342))))

(assert (=> b!4182914 (= e!2596802 (and tp!1278407 tp!1278413))))

(assert (= (and start!398954 res!1715402) b!4182899))

(assert (= (and b!4182899 res!1715397) b!4182913))

(assert (= (and b!4182913 res!1715396) b!4182896))

(assert (= (and b!4182896 res!1715399) b!4182894))

(assert (= (and b!4182894 res!1715392) b!4182892))

(assert (= (and b!4182892 res!1715403) b!4182893))

(assert (= (and b!4182893 res!1715400) b!4182897))

(assert (= (and b!4182897 res!1715395) b!4182902))

(assert (= (and b!4182902 res!1715401) b!4182910))

(assert (= (and b!4182910 res!1715394) b!4182890))

(assert (= (and b!4182890 (not res!1715406)) b!4182911))

(assert (= (and b!4182911 (not res!1715405)) b!4182901))

(assert (= (and b!4182901 (not res!1715398)) b!4182891))

(assert (= (and b!4182891 (not res!1715393)) b!4182895))

(assert (= (and b!4182895 (not res!1715404)) b!4182903))

(assert (= b!4182909 b!4182898))

(assert (= start!398954 b!4182909))

(assert (= b!4182906 b!4182914))

(assert (= start!398954 b!4182906))

(assert (= b!4182908 b!4182905))

(assert (= b!4182904 b!4182908))

(assert (= (and start!398954 ((_ is Cons!45921) rules!3843)) b!4182904))

(assert (= (and start!398954 ((_ is Cons!45919) input!3342)) b!4182907))

(assert (= (and start!398954 ((_ is Cons!45919) pBis!107)) b!4182900))

(assert (= (and start!398954 ((_ is Cons!45919) p!2959)) b!4182912))

(declare-fun m!4771613 () Bool)

(assert (=> b!4182897 m!4771613))

(declare-fun m!4771615 () Bool)

(assert (=> b!4182890 m!4771615))

(declare-fun m!4771617 () Bool)

(assert (=> b!4182890 m!4771617))

(declare-fun m!4771619 () Bool)

(assert (=> b!4182890 m!4771619))

(declare-fun m!4771621 () Bool)

(assert (=> b!4182890 m!4771621))

(declare-fun m!4771623 () Bool)

(assert (=> b!4182890 m!4771623))

(declare-fun m!4771625 () Bool)

(assert (=> b!4182890 m!4771625))

(declare-fun m!4771627 () Bool)

(assert (=> b!4182890 m!4771627))

(declare-fun m!4771629 () Bool)

(assert (=> b!4182890 m!4771629))

(declare-fun m!4771631 () Bool)

(assert (=> b!4182899 m!4771631))

(declare-fun m!4771633 () Bool)

(assert (=> b!4182906 m!4771633))

(declare-fun m!4771635 () Bool)

(assert (=> b!4182906 m!4771635))

(declare-fun m!4771637 () Bool)

(assert (=> b!4182893 m!4771637))

(declare-fun m!4771639 () Bool)

(assert (=> b!4182908 m!4771639))

(declare-fun m!4771641 () Bool)

(assert (=> b!4182908 m!4771641))

(declare-fun m!4771643 () Bool)

(assert (=> b!4182901 m!4771643))

(declare-fun m!4771645 () Bool)

(assert (=> b!4182909 m!4771645))

(declare-fun m!4771647 () Bool)

(assert (=> b!4182909 m!4771647))

(declare-fun m!4771649 () Bool)

(assert (=> b!4182891 m!4771649))

(declare-fun m!4771651 () Bool)

(assert (=> b!4182894 m!4771651))

(declare-fun m!4771653 () Bool)

(assert (=> b!4182910 m!4771653))

(declare-fun m!4771655 () Bool)

(assert (=> b!4182895 m!4771655))

(declare-fun m!4771657 () Bool)

(assert (=> b!4182895 m!4771657))

(declare-fun m!4771659 () Bool)

(assert (=> b!4182895 m!4771659))

(assert (=> b!4182895 m!4771659))

(declare-fun m!4771661 () Bool)

(assert (=> b!4182895 m!4771661))

(declare-fun m!4771663 () Bool)

(assert (=> b!4182895 m!4771663))

(declare-fun m!4771665 () Bool)

(assert (=> b!4182911 m!4771665))

(declare-fun m!4771667 () Bool)

(assert (=> b!4182892 m!4771667))

(declare-fun m!4771669 () Bool)

(assert (=> b!4182896 m!4771669))

(declare-fun m!4771671 () Bool)

(assert (=> b!4182902 m!4771671))

(declare-fun m!4771673 () Bool)

(assert (=> b!4182913 m!4771673))

(declare-fun m!4771675 () Bool)

(assert (=> b!4182903 m!4771675))

(declare-fun m!4771677 () Bool)

(assert (=> b!4182903 m!4771677))

(check-sat (not b!4182897) b_and!327295 (not b!4182895) (not b!4182890) (not b!4182911) b_and!327289 (not b_next!122295) (not b!4182900) b_and!327291 (not b_next!122289) (not b!4182892) (not b!4182906) (not b!4182891) (not b!4182899) (not b_next!122293) (not b!4182904) (not b_next!122291) tp_is_empty!22057 (not b!4182901) (not b!4182908) b_and!327287 (not b!4182903) (not b_next!122287) b_and!327285 (not b!4182909) (not b!4182893) (not b!4182907) (not b!4182912) (not b!4182894) (not b!4182910) (not b!4182896) (not b!4182902) (not b_next!122297) (not b!4182913) b_and!327293)
(check-sat b_and!327295 b_and!327287 b_and!327289 (not b_next!122295) b_and!327291 (not b_next!122289) (not b_next!122297) b_and!327293 (not b_next!122293) (not b_next!122291) (not b_next!122287) b_and!327285)
