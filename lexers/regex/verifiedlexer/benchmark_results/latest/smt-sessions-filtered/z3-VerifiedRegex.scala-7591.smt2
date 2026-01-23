; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401178 () Bool)

(assert start!401178)

(declare-fun b!4199348 () Bool)

(declare-fun b_free!122415 () Bool)

(declare-fun b_next!123119 () Bool)

(assert (=> b!4199348 (= b_free!122415 (not b_next!123119))))

(declare-fun tp!1282680 () Bool)

(declare-fun b_and!329469 () Bool)

(assert (=> b!4199348 (= tp!1282680 b_and!329469)))

(declare-fun b_free!122417 () Bool)

(declare-fun b_next!123121 () Bool)

(assert (=> b!4199348 (= b_free!122417 (not b_next!123121))))

(declare-fun tp!1282686 () Bool)

(declare-fun b_and!329471 () Bool)

(assert (=> b!4199348 (= tp!1282686 b_and!329471)))

(declare-fun b!4199351 () Bool)

(declare-fun b_free!122419 () Bool)

(declare-fun b_next!123123 () Bool)

(assert (=> b!4199351 (= b_free!122419 (not b_next!123123))))

(declare-fun tp!1282681 () Bool)

(declare-fun b_and!329473 () Bool)

(assert (=> b!4199351 (= tp!1282681 b_and!329473)))

(declare-fun b_free!122421 () Bool)

(declare-fun b_next!123125 () Bool)

(assert (=> b!4199351 (= b_free!122421 (not b_next!123125))))

(declare-fun tp!1282679 () Bool)

(declare-fun b_and!329475 () Bool)

(assert (=> b!4199351 (= tp!1282679 b_and!329475)))

(declare-fun b!4199358 () Bool)

(declare-fun b_free!122423 () Bool)

(declare-fun b_next!123127 () Bool)

(assert (=> b!4199358 (= b_free!122423 (not b_next!123127))))

(declare-fun tp!1282677 () Bool)

(declare-fun b_and!329477 () Bool)

(assert (=> b!4199358 (= tp!1282677 b_and!329477)))

(declare-fun b_free!122425 () Bool)

(declare-fun b_next!123129 () Bool)

(assert (=> b!4199358 (= b_free!122425 (not b_next!123129))))

(declare-fun tp!1282685 () Bool)

(declare-fun b_and!329479 () Bool)

(assert (=> b!4199358 (= tp!1282685 b_and!329479)))

(declare-fun b!4199343 () Bool)

(declare-fun res!1724520 () Bool)

(declare-fun e!2606670 () Bool)

(assert (=> b!4199343 (=> (not res!1724520) (not e!2606670))))

(declare-datatypes ((List!46247 0))(
  ( (Nil!46123) (Cons!46123 (h!51543 (_ BitVec 16)) (t!346752 List!46247)) )
))
(declare-datatypes ((TokenValue!7928 0))(
  ( (FloatLiteralValue!15856 (text!55941 List!46247)) (TokenValueExt!7927 (__x!28077 Int)) (Broken!39640 (value!239899 List!46247)) (Object!8051) (End!7928) (Def!7928) (Underscore!7928) (Match!7928) (Else!7928) (Error!7928) (Case!7928) (If!7928) (Extends!7928) (Abstract!7928) (Class!7928) (Val!7928) (DelimiterValue!15856 (del!7988 List!46247)) (KeywordValue!7934 (value!239900 List!46247)) (CommentValue!15856 (value!239901 List!46247)) (WhitespaceValue!15856 (value!239902 List!46247)) (IndentationValue!7928 (value!239903 List!46247)) (String!53505) (Int32!7928) (Broken!39641 (value!239904 List!46247)) (Boolean!7929) (Unit!65230) (OperatorValue!7931 (op!7988 List!46247)) (IdentifierValue!15856 (value!239905 List!46247)) (IdentifierValue!15857 (value!239906 List!46247)) (WhitespaceValue!15857 (value!239907 List!46247)) (True!15856) (False!15856) (Broken!39642 (value!239908 List!46247)) (Broken!39643 (value!239909 List!46247)) (True!15857) (RightBrace!7928) (RightBracket!7928) (Colon!7928) (Null!7928) (Comma!7928) (LeftBracket!7928) (False!15857) (LeftBrace!7928) (ImaginaryLiteralValue!7928 (text!55942 List!46247)) (StringLiteralValue!23784 (value!239910 List!46247)) (EOFValue!7928 (value!239911 List!46247)) (IdentValue!7928 (value!239912 List!46247)) (DelimiterValue!15857 (value!239913 List!46247)) (DedentValue!7928 (value!239914 List!46247)) (NewLineValue!7928 (value!239915 List!46247)) (IntegerValue!23784 (value!239916 (_ BitVec 32)) (text!55943 List!46247)) (IntegerValue!23785 (value!239917 Int) (text!55944 List!46247)) (Times!7928) (Or!7928) (Equal!7928) (Minus!7928) (Broken!39644 (value!239918 List!46247)) (And!7928) (Div!7928) (LessEqual!7928) (Mod!7928) (Concat!20531) (Not!7928) (Plus!7928) (SpaceValue!7928 (value!239919 List!46247)) (IntegerValue!23786 (value!239920 Int) (text!55945 List!46247)) (StringLiteralValue!23785 (text!55946 List!46247)) (FloatLiteralValue!15857 (text!55947 List!46247)) (BytesLiteralValue!7928 (value!239921 List!46247)) (CommentValue!15857 (value!239922 List!46247)) (StringLiteralValue!23786 (value!239923 List!46247)) (ErrorTokenValue!7928 (msg!7989 List!46247)) )
))
(declare-datatypes ((C!25396 0))(
  ( (C!25397 (val!14860 Int)) )
))
(declare-datatypes ((List!46248 0))(
  ( (Nil!46124) (Cons!46124 (h!51544 C!25396) (t!346753 List!46248)) )
))
(declare-datatypes ((IArray!27823 0))(
  ( (IArray!27824 (innerList!13969 List!46248)) )
))
(declare-datatypes ((Conc!13909 0))(
  ( (Node!13909 (left!34364 Conc!13909) (right!34694 Conc!13909) (csize!28048 Int) (cheight!14120 Int)) (Leaf!21501 (xs!17215 IArray!27823) (csize!28049 Int)) (Empty!13909) )
))
(declare-datatypes ((BalanceConc!27412 0))(
  ( (BalanceConc!27413 (c!716136 Conc!13909)) )
))
(declare-datatypes ((Regex!12603 0))(
  ( (ElementMatch!12603 (c!716137 C!25396)) (Concat!20532 (regOne!25718 Regex!12603) (regTwo!25718 Regex!12603)) (EmptyExpr!12603) (Star!12603 (reg!12932 Regex!12603)) (EmptyLang!12603) (Union!12603 (regOne!25719 Regex!12603) (regTwo!25719 Regex!12603)) )
))
(declare-datatypes ((String!53506 0))(
  ( (String!53507 (value!239924 String)) )
))
(declare-datatypes ((TokenValueInjection!15284 0))(
  ( (TokenValueInjection!15285 (toValue!10398 Int) (toChars!10257 Int)) )
))
(declare-datatypes ((Rule!15196 0))(
  ( (Rule!15197 (regex!7698 Regex!12603) (tag!8562 String!53506) (isSeparator!7698 Bool) (transformation!7698 TokenValueInjection!15284)) )
))
(declare-fun r!4142 () Rule!15196)

(declare-fun p!2959 () List!46248)

(declare-fun matchR!6342 (Regex!12603 List!46248) Bool)

(assert (=> b!4199343 (= res!1724520 (matchR!6342 (regex!7698 r!4142) p!2959))))

(declare-fun b!4199344 () Bool)

(declare-fun e!2606672 () Bool)

(declare-fun tp_is_empty!22169 () Bool)

(declare-fun tp!1282682 () Bool)

(assert (=> b!4199344 (= e!2606672 (and tp_is_empty!22169 tp!1282682))))

(declare-fun b!4199345 () Bool)

(declare-fun e!2606660 () Bool)

(declare-fun e!2606667 () Bool)

(assert (=> b!4199345 (= e!2606660 e!2606667)))

(declare-fun res!1724534 () Bool)

(assert (=> b!4199345 (=> res!1724534 e!2606667)))

(declare-fun lt!1496080 () Int)

(declare-fun lt!1496079 () Int)

(assert (=> b!4199345 (= res!1724534 (>= lt!1496080 lt!1496079))))

(declare-datatypes ((Unit!65231 0))(
  ( (Unit!65232) )
))
(declare-fun lt!1496083 () Unit!65231)

(declare-fun e!2606664 () Unit!65231)

(assert (=> b!4199345 (= lt!1496083 e!2606664)))

(declare-fun c!716135 () Bool)

(declare-fun lt!1496090 () List!46248)

(declare-fun size!33911 (List!46248) Int)

(assert (=> b!4199345 (= c!716135 (= lt!1496080 (size!33911 lt!1496090)))))

(declare-fun b!4199346 () Bool)

(declare-fun res!1724529 () Bool)

(assert (=> b!4199346 (=> (not res!1724529) (not e!2606670))))

(declare-fun validRegex!5720 (Regex!12603) Bool)

(assert (=> b!4199346 (= res!1724529 (validRegex!5720 (regex!7698 r!4142)))))

(declare-fun b!4199347 () Bool)

(declare-fun e!2606677 () Bool)

(assert (=> b!4199347 (= e!2606670 (not e!2606677))))

(declare-fun res!1724528 () Bool)

(assert (=> b!4199347 (=> res!1724528 e!2606677)))

(declare-datatypes ((Token!14110 0))(
  ( (Token!14111 (value!239925 TokenValue!7928) (rule!10800 Rule!15196) (size!33912 Int) (originalCharacters!8086 List!46248)) )
))
(declare-datatypes ((tuple2!43914 0))(
  ( (tuple2!43915 (_1!25091 Token!14110) (_2!25091 List!46248)) )
))
(declare-datatypes ((Option!9892 0))(
  ( (None!9891) (Some!9891 (v!40741 tuple2!43914)) )
))
(declare-fun lt!1496087 () Option!9892)

(declare-fun input!3342 () List!46248)

(declare-datatypes ((LexerInterface!7291 0))(
  ( (LexerInterfaceExt!7288 (__x!28078 Int)) (Lexer!7289) )
))
(declare-fun thiss!25986 () LexerInterface!7291)

(declare-fun maxPrefixOneRule!3300 (LexerInterface!7291 Rule!15196 List!46248) Option!9892)

(assert (=> b!4199347 (= res!1724528 (not (= (maxPrefixOneRule!3300 thiss!25986 r!4142 input!3342) lt!1496087)))))

(declare-fun lt!1496075 () Token!14110)

(declare-fun lt!1496085 () List!46248)

(assert (=> b!4199347 (= lt!1496087 (Some!9891 (tuple2!43915 lt!1496075 lt!1496085)))))

(declare-fun getSuffix!2848 (List!46248 List!46248) List!46248)

(assert (=> b!4199347 (= lt!1496085 (getSuffix!2848 input!3342 p!2959))))

(declare-fun lt!1496092 () Int)

(declare-fun lt!1496094 () TokenValue!7928)

(assert (=> b!4199347 (= lt!1496075 (Token!14111 lt!1496094 r!4142 lt!1496092 p!2959))))

(assert (=> b!4199347 (= lt!1496092 (size!33911 p!2959))))

(declare-fun lt!1496082 () BalanceConc!27412)

(declare-fun apply!10663 (TokenValueInjection!15284 BalanceConc!27412) TokenValue!7928)

(assert (=> b!4199347 (= lt!1496094 (apply!10663 (transformation!7698 r!4142) lt!1496082))))

(declare-fun isPrefix!4555 (List!46248 List!46248) Bool)

(assert (=> b!4199347 (isPrefix!4555 input!3342 input!3342)))

(declare-fun lt!1496078 () Unit!65231)

(declare-fun lemmaIsPrefixRefl!2984 (List!46248 List!46248) Unit!65231)

(assert (=> b!4199347 (= lt!1496078 (lemmaIsPrefixRefl!2984 input!3342 input!3342))))

(declare-fun lt!1496093 () Unit!65231)

(declare-fun lemmaSemiInverse!2464 (TokenValueInjection!15284 BalanceConc!27412) Unit!65231)

(assert (=> b!4199347 (= lt!1496093 (lemmaSemiInverse!2464 (transformation!7698 r!4142) lt!1496082))))

(declare-fun seqFromList!5723 (List!46248) BalanceConc!27412)

(assert (=> b!4199347 (= lt!1496082 (seqFromList!5723 p!2959))))

(declare-fun e!2606674 () Bool)

(assert (=> b!4199348 (= e!2606674 (and tp!1282680 tp!1282686))))

(declare-fun b!4199349 () Bool)

(declare-fun res!1724524 () Bool)

(assert (=> b!4199349 (=> (not res!1724524) (not e!2606670))))

(assert (=> b!4199349 (= res!1724524 (isPrefix!4555 p!2959 input!3342))))

(declare-fun b!4199350 () Bool)

(declare-fun e!2606663 () Bool)

(declare-fun e!2606678 () Bool)

(assert (=> b!4199350 (= e!2606663 e!2606678)))

(declare-fun res!1724535 () Bool)

(assert (=> b!4199350 (=> res!1724535 e!2606678)))

(declare-fun lt!1496088 () Option!9892)

(declare-fun isEmpty!27320 (Option!9892) Bool)

(assert (=> b!4199350 (= res!1724535 (isEmpty!27320 lt!1496088))))

(declare-fun rBis!167 () Rule!15196)

(assert (=> b!4199350 (= lt!1496088 (maxPrefixOneRule!3300 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((List!46249 0))(
  ( (Nil!46125) (Cons!46125 (h!51545 Rule!15196) (t!346754 List!46249)) )
))
(declare-fun rules!3843 () List!46249)

(declare-fun lt!1496081 () Unit!65231)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2422 (LexerInterface!7291 Rule!15196 List!46249) Unit!65231)

(assert (=> b!4199350 (= lt!1496081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2422 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4199350 (<= lt!1496080 (size!33911 input!3342))))

(declare-fun lt!1496091 () Unit!65231)

(declare-fun pBis!107 () List!46248)

(declare-fun lemmaIsPrefixThenSmallerEqSize!585 (List!46248 List!46248) Unit!65231)

(assert (=> b!4199350 (= lt!1496091 (lemmaIsPrefixThenSmallerEqSize!585 pBis!107 input!3342))))

(declare-fun e!2606661 () Bool)

(assert (=> b!4199351 (= e!2606661 (and tp!1282681 tp!1282679))))

(declare-fun b!4199352 () Bool)

(declare-fun res!1724523 () Bool)

(assert (=> b!4199352 (=> res!1724523 e!2606663)))

(declare-fun maxPrefix!4339 (LexerInterface!7291 List!46249 List!46248) Option!9892)

(assert (=> b!4199352 (= res!1724523 (not (= (maxPrefix!4339 thiss!25986 rules!3843 input!3342) lt!1496087)))))

(declare-fun b!4199353 () Bool)

(declare-fun e!2606665 () Bool)

(assert (=> b!4199353 (= e!2606665 e!2606660)))

(declare-fun res!1724536 () Bool)

(assert (=> b!4199353 (=> res!1724536 e!2606660)))

(assert (=> b!4199353 (= res!1724536 (< lt!1496079 lt!1496080))))

(declare-fun lt!1496077 () BalanceConc!27412)

(declare-fun size!33913 (BalanceConc!27412) Int)

(assert (=> b!4199353 (= lt!1496079 (size!33913 lt!1496077))))

(declare-fun b!4199354 () Bool)

(declare-fun Unit!65233 () Unit!65231)

(assert (=> b!4199354 (= e!2606664 Unit!65233)))

(declare-fun b!4199355 () Bool)

(assert (=> b!4199355 (= e!2606678 e!2606665)))

(declare-fun res!1724530 () Bool)

(assert (=> b!4199355 (=> res!1724530 e!2606665)))

(assert (=> b!4199355 (= res!1724530 (= lt!1496090 pBis!107))))

(declare-fun lt!1496076 () tuple2!43914)

(declare-fun ++!11770 (List!46248 List!46248) List!46248)

(assert (=> b!4199355 (isPrefix!4555 lt!1496090 (++!11770 lt!1496090 (_2!25091 lt!1496076)))))

(declare-fun lt!1496084 () Unit!65231)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3052 (List!46248 List!46248) Unit!65231)

(assert (=> b!4199355 (= lt!1496084 (lemmaConcatTwoListThenFirstIsPrefix!3052 lt!1496090 (_2!25091 lt!1496076)))))

(declare-fun list!16677 (BalanceConc!27412) List!46248)

(assert (=> b!4199355 (= lt!1496090 (list!16677 lt!1496077))))

(declare-fun charsOf!5133 (Token!14110) BalanceConc!27412)

(assert (=> b!4199355 (= lt!1496077 (charsOf!5133 (_1!25091 lt!1496076)))))

(declare-fun get!15006 (Option!9892) tuple2!43914)

(assert (=> b!4199355 (= lt!1496076 (get!15006 lt!1496088))))

(declare-fun tp!1282678 () Bool)

(declare-fun e!2606659 () Bool)

(declare-fun e!2606666 () Bool)

(declare-fun b!4199356 () Bool)

(declare-fun inv!60683 (String!53506) Bool)

(declare-fun inv!60685 (TokenValueInjection!15284) Bool)

(assert (=> b!4199356 (= e!2606666 (and tp!1282678 (inv!60683 (tag!8562 rBis!167)) (inv!60685 (transformation!7698 rBis!167)) e!2606659))))

(declare-fun b!4199357 () Bool)

(declare-fun e!2606675 () Bool)

(declare-fun tp!1282683 () Bool)

(assert (=> b!4199357 (= e!2606675 (and tp_is_empty!22169 tp!1282683))))

(assert (=> b!4199358 (= e!2606659 (and tp!1282677 tp!1282685))))

(declare-fun b!4199359 () Bool)

(declare-fun res!1724527 () Bool)

(assert (=> b!4199359 (=> res!1724527 e!2606663)))

(declare-fun ruleValid!3416 (LexerInterface!7291 Rule!15196) Bool)

(assert (=> b!4199359 (= res!1724527 (not (ruleValid!3416 thiss!25986 rBis!167)))))

(declare-fun b!4199360 () Bool)

(declare-fun res!1724525 () Bool)

(assert (=> b!4199360 (=> (not res!1724525) (not e!2606670))))

(assert (=> b!4199360 (= res!1724525 (ruleValid!3416 thiss!25986 r!4142))))

(declare-fun b!4199361 () Bool)

(declare-fun e!2606662 () Bool)

(declare-fun tp!1282674 () Bool)

(assert (=> b!4199361 (= e!2606662 (and tp_is_empty!22169 tp!1282674))))

(declare-fun b!4199362 () Bool)

(declare-fun res!1724526 () Bool)

(assert (=> b!4199362 (=> (not res!1724526) (not e!2606670))))

(assert (=> b!4199362 (= res!1724526 (isPrefix!4555 pBis!107 input!3342))))

(declare-fun tp!1282675 () Bool)

(declare-fun b!4199363 () Bool)

(declare-fun e!2606671 () Bool)

(assert (=> b!4199363 (= e!2606671 (and tp!1282675 (inv!60683 (tag!8562 r!4142)) (inv!60685 (transformation!7698 r!4142)) e!2606674))))

(declare-fun b!4199364 () Bool)

(declare-fun res!1724522 () Bool)

(assert (=> b!4199364 (=> (not res!1724522) (not e!2606670))))

(declare-fun rulesInvariant!6504 (LexerInterface!7291 List!46249) Bool)

(assert (=> b!4199364 (= res!1724522 (rulesInvariant!6504 thiss!25986 rules!3843))))

(declare-fun b!4199365 () Bool)

(assert (=> b!4199365 (= e!2606667 (not (matchR!6342 (regex!7698 rBis!167) pBis!107)))))

(assert (=> b!4199365 false))

(declare-fun lt!1496089 () Unit!65231)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!28 (LexerInterface!7291 List!46249 List!46248 Token!14110 List!46248 List!46248 List!46248 List!46248 Rule!15196 Token!14110) Unit!65231)

(assert (=> b!4199365 (= lt!1496089 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!28 thiss!25986 rules!3843 p!2959 lt!1496075 input!3342 lt!1496085 lt!1496090 (_2!25091 lt!1496076) rBis!167 (_1!25091 lt!1496076)))))

(declare-fun b!4199366 () Bool)

(declare-fun e!2606668 () Bool)

(declare-fun e!2606658 () Bool)

(declare-fun tp!1282684 () Bool)

(assert (=> b!4199366 (= e!2606668 (and e!2606658 tp!1282684))))

(declare-fun b!4199367 () Bool)

(declare-fun res!1724519 () Bool)

(assert (=> b!4199367 (=> (not res!1724519) (not e!2606670))))

(declare-fun isEmpty!27321 (List!46249) Bool)

(assert (=> b!4199367 (= res!1724519 (not (isEmpty!27321 rules!3843)))))

(declare-fun b!4199368 () Bool)

(declare-fun res!1724532 () Bool)

(assert (=> b!4199368 (=> (not res!1724532) (not e!2606670))))

(declare-fun contains!9509 (List!46249 Rule!15196) Bool)

(assert (=> b!4199368 (= res!1724532 (contains!9509 rules!3843 rBis!167))))

(declare-fun b!4199369 () Bool)

(declare-fun Unit!65234 () Unit!65231)

(assert (=> b!4199369 (= e!2606664 Unit!65234)))

(declare-fun lt!1496086 () Unit!65231)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1019 (List!46248 List!46248 List!46248) Unit!65231)

(assert (=> b!4199369 (= lt!1496086 (lemmaIsPrefixSameLengthThenSameList!1019 pBis!107 lt!1496090 input!3342))))

(assert (=> b!4199369 false))

(declare-fun res!1724531 () Bool)

(assert (=> start!401178 (=> (not res!1724531) (not e!2606670))))

(get-info :version)

(assert (=> start!401178 (= res!1724531 ((_ is Lexer!7289) thiss!25986))))

(assert (=> start!401178 e!2606670))

(assert (=> start!401178 true))

(assert (=> start!401178 e!2606666))

(assert (=> start!401178 e!2606671))

(assert (=> start!401178 e!2606668))

(assert (=> start!401178 e!2606662))

(assert (=> start!401178 e!2606675))

(assert (=> start!401178 e!2606672))

(declare-fun b!4199370 () Bool)

(declare-fun res!1724521 () Bool)

(assert (=> b!4199370 (=> (not res!1724521) (not e!2606670))))

(assert (=> b!4199370 (= res!1724521 (contains!9509 rules!3843 r!4142))))

(declare-fun b!4199371 () Bool)

(assert (=> b!4199371 (= e!2606677 e!2606663)))

(declare-fun res!1724533 () Bool)

(assert (=> b!4199371 (=> res!1724533 e!2606663)))

(assert (=> b!4199371 (= res!1724533 (<= lt!1496080 lt!1496092))))

(assert (=> b!4199371 (= lt!1496080 (size!33911 pBis!107))))

(declare-fun tp!1282676 () Bool)

(declare-fun b!4199372 () Bool)

(assert (=> b!4199372 (= e!2606658 (and tp!1282676 (inv!60683 (tag!8562 (h!51545 rules!3843))) (inv!60685 (transformation!7698 (h!51545 rules!3843))) e!2606661))))

(assert (= (and start!401178 res!1724531) b!4199349))

(assert (= (and b!4199349 res!1724524) b!4199362))

(assert (= (and b!4199362 res!1724526) b!4199367))

(assert (= (and b!4199367 res!1724519) b!4199364))

(assert (= (and b!4199364 res!1724522) b!4199370))

(assert (= (and b!4199370 res!1724521) b!4199368))

(assert (= (and b!4199368 res!1724532) b!4199346))

(assert (= (and b!4199346 res!1724529) b!4199343))

(assert (= (and b!4199343 res!1724520) b!4199360))

(assert (= (and b!4199360 res!1724525) b!4199347))

(assert (= (and b!4199347 (not res!1724528)) b!4199371))

(assert (= (and b!4199371 (not res!1724533)) b!4199359))

(assert (= (and b!4199359 (not res!1724527)) b!4199352))

(assert (= (and b!4199352 (not res!1724523)) b!4199350))

(assert (= (and b!4199350 (not res!1724535)) b!4199355))

(assert (= (and b!4199355 (not res!1724530)) b!4199353))

(assert (= (and b!4199353 (not res!1724536)) b!4199345))

(assert (= (and b!4199345 c!716135) b!4199369))

(assert (= (and b!4199345 (not c!716135)) b!4199354))

(assert (= (and b!4199345 (not res!1724534)) b!4199365))

(assert (= b!4199356 b!4199358))

(assert (= start!401178 b!4199356))

(assert (= b!4199363 b!4199348))

(assert (= start!401178 b!4199363))

(assert (= b!4199372 b!4199351))

(assert (= b!4199366 b!4199372))

(assert (= (and start!401178 ((_ is Cons!46125) rules!3843)) b!4199366))

(assert (= (and start!401178 ((_ is Cons!46124) input!3342)) b!4199361))

(assert (= (and start!401178 ((_ is Cons!46124) pBis!107)) b!4199357))

(assert (= (and start!401178 ((_ is Cons!46124) p!2959)) b!4199344))

(declare-fun m!4788091 () Bool)

(assert (=> b!4199346 m!4788091))

(declare-fun m!4788093 () Bool)

(assert (=> b!4199356 m!4788093))

(declare-fun m!4788095 () Bool)

(assert (=> b!4199356 m!4788095))

(declare-fun m!4788097 () Bool)

(assert (=> b!4199350 m!4788097))

(declare-fun m!4788099 () Bool)

(assert (=> b!4199350 m!4788099))

(declare-fun m!4788101 () Bool)

(assert (=> b!4199350 m!4788101))

(declare-fun m!4788103 () Bool)

(assert (=> b!4199350 m!4788103))

(declare-fun m!4788105 () Bool)

(assert (=> b!4199350 m!4788105))

(declare-fun m!4788107 () Bool)

(assert (=> b!4199368 m!4788107))

(declare-fun m!4788109 () Bool)

(assert (=> b!4199365 m!4788109))

(declare-fun m!4788111 () Bool)

(assert (=> b!4199365 m!4788111))

(declare-fun m!4788113 () Bool)

(assert (=> b!4199371 m!4788113))

(declare-fun m!4788115 () Bool)

(assert (=> b!4199367 m!4788115))

(declare-fun m!4788117 () Bool)

(assert (=> b!4199352 m!4788117))

(declare-fun m!4788119 () Bool)

(assert (=> b!4199359 m!4788119))

(declare-fun m!4788121 () Bool)

(assert (=> b!4199353 m!4788121))

(declare-fun m!4788123 () Bool)

(assert (=> b!4199364 m!4788123))

(declare-fun m!4788125 () Bool)

(assert (=> b!4199345 m!4788125))

(declare-fun m!4788127 () Bool)

(assert (=> b!4199362 m!4788127))

(declare-fun m!4788129 () Bool)

(assert (=> b!4199343 m!4788129))

(declare-fun m!4788131 () Bool)

(assert (=> b!4199355 m!4788131))

(declare-fun m!4788133 () Bool)

(assert (=> b!4199355 m!4788133))

(assert (=> b!4199355 m!4788131))

(declare-fun m!4788135 () Bool)

(assert (=> b!4199355 m!4788135))

(declare-fun m!4788137 () Bool)

(assert (=> b!4199355 m!4788137))

(declare-fun m!4788139 () Bool)

(assert (=> b!4199355 m!4788139))

(declare-fun m!4788141 () Bool)

(assert (=> b!4199355 m!4788141))

(declare-fun m!4788143 () Bool)

(assert (=> b!4199370 m!4788143))

(declare-fun m!4788145 () Bool)

(assert (=> b!4199360 m!4788145))

(declare-fun m!4788147 () Bool)

(assert (=> b!4199372 m!4788147))

(declare-fun m!4788149 () Bool)

(assert (=> b!4199372 m!4788149))

(declare-fun m!4788151 () Bool)

(assert (=> b!4199347 m!4788151))

(declare-fun m!4788153 () Bool)

(assert (=> b!4199347 m!4788153))

(declare-fun m!4788155 () Bool)

(assert (=> b!4199347 m!4788155))

(declare-fun m!4788157 () Bool)

(assert (=> b!4199347 m!4788157))

(declare-fun m!4788159 () Bool)

(assert (=> b!4199347 m!4788159))

(declare-fun m!4788161 () Bool)

(assert (=> b!4199347 m!4788161))

(declare-fun m!4788163 () Bool)

(assert (=> b!4199347 m!4788163))

(declare-fun m!4788165 () Bool)

(assert (=> b!4199347 m!4788165))

(declare-fun m!4788167 () Bool)

(assert (=> b!4199349 m!4788167))

(declare-fun m!4788169 () Bool)

(assert (=> b!4199369 m!4788169))

(declare-fun m!4788171 () Bool)

(assert (=> b!4199363 m!4788171))

(declare-fun m!4788173 () Bool)

(assert (=> b!4199363 m!4788173))

(check-sat (not b!4199365) b_and!329477 (not b!4199371) (not b!4199367) (not b!4199369) b_and!329471 (not b!4199343) tp_is_empty!22169 (not b!4199359) (not b!4199344) (not b!4199370) (not b!4199363) (not b!4199353) (not b!4199346) (not b_next!123119) (not b_next!123123) b_and!329479 (not b_next!123125) (not b!4199357) (not b!4199361) (not b!4199366) (not b!4199360) (not b!4199362) b_and!329469 (not b!4199349) (not b!4199350) (not b_next!123127) b_and!329473 (not b!4199345) b_and!329475 (not b!4199364) (not b!4199372) (not b_next!123121) (not b_next!123129) (not b!4199356) (not b!4199347) (not b!4199355) (not b!4199352) (not b!4199368))
(check-sat (not b_next!123119) b_and!329477 b_and!329471 (not b_next!123123) b_and!329479 (not b_next!123125) b_and!329469 (not b_next!123127) b_and!329473 b_and!329475 (not b_next!123121) (not b_next!123129))
