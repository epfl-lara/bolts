; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399934 () Bool)

(assert start!399934)

(declare-fun b!4190442 () Bool)

(declare-fun b_free!121991 () Bool)

(declare-fun b_next!122695 () Bool)

(assert (=> b!4190442 (= b_free!121991 (not b_next!122695))))

(declare-fun tp!1280452 () Bool)

(declare-fun b_and!328321 () Bool)

(assert (=> b!4190442 (= tp!1280452 b_and!328321)))

(declare-fun b_free!121993 () Bool)

(declare-fun b_next!122697 () Bool)

(assert (=> b!4190442 (= b_free!121993 (not b_next!122697))))

(declare-fun tp!1280453 () Bool)

(declare-fun b_and!328323 () Bool)

(assert (=> b!4190442 (= tp!1280453 b_and!328323)))

(declare-fun b!4190447 () Bool)

(declare-fun b_free!121995 () Bool)

(declare-fun b_next!122699 () Bool)

(assert (=> b!4190447 (= b_free!121995 (not b_next!122699))))

(declare-fun tp!1280455 () Bool)

(declare-fun b_and!328325 () Bool)

(assert (=> b!4190447 (= tp!1280455 b_and!328325)))

(declare-fun b_free!121997 () Bool)

(declare-fun b_next!122701 () Bool)

(assert (=> b!4190447 (= b_free!121997 (not b_next!122701))))

(declare-fun tp!1280449 () Bool)

(declare-fun b_and!328327 () Bool)

(assert (=> b!4190447 (= tp!1280449 b_and!328327)))

(declare-fun b!4190418 () Bool)

(declare-fun b_free!121999 () Bool)

(declare-fun b_next!122703 () Bool)

(assert (=> b!4190418 (= b_free!121999 (not b_next!122703))))

(declare-fun tp!1280448 () Bool)

(declare-fun b_and!328329 () Bool)

(assert (=> b!4190418 (= tp!1280448 b_and!328329)))

(declare-fun b_free!122001 () Bool)

(declare-fun b_next!122705 () Bool)

(assert (=> b!4190418 (= b_free!122001 (not b_next!122705))))

(declare-fun tp!1280451 () Bool)

(declare-fun b_and!328331 () Bool)

(assert (=> b!4190418 (= tp!1280451 b_and!328331)))

(declare-fun e!2601300 () Bool)

(assert (=> b!4190418 (= e!2601300 (and tp!1280448 tp!1280451))))

(declare-fun b!4190419 () Bool)

(declare-fun e!2601315 () Bool)

(declare-fun e!2601311 () Bool)

(assert (=> b!4190419 (= e!2601315 (not e!2601311))))

(declare-fun res!1719576 () Bool)

(assert (=> b!4190419 (=> res!1719576 e!2601311)))

(declare-datatypes ((List!46143 0))(
  ( (Nil!46019) (Cons!46019 (h!51439 (_ BitVec 16)) (t!345930 List!46143)) )
))
(declare-datatypes ((TokenValue!7900 0))(
  ( (FloatLiteralValue!15800 (text!55745 List!46143)) (TokenValueExt!7899 (__x!28021 Int)) (Broken!39500 (value!239101 List!46143)) (Object!8023) (End!7900) (Def!7900) (Underscore!7900) (Match!7900) (Else!7900) (Error!7900) (Case!7900) (If!7900) (Extends!7900) (Abstract!7900) (Class!7900) (Val!7900) (DelimiterValue!15800 (del!7960 List!46143)) (KeywordValue!7906 (value!239102 List!46143)) (CommentValue!15800 (value!239103 List!46143)) (WhitespaceValue!15800 (value!239104 List!46143)) (IndentationValue!7900 (value!239105 List!46143)) (String!53365) (Int32!7900) (Broken!39501 (value!239106 List!46143)) (Boolean!7901) (Unit!65100) (OperatorValue!7903 (op!7960 List!46143)) (IdentifierValue!15800 (value!239107 List!46143)) (IdentifierValue!15801 (value!239108 List!46143)) (WhitespaceValue!15801 (value!239109 List!46143)) (True!15800) (False!15800) (Broken!39502 (value!239110 List!46143)) (Broken!39503 (value!239111 List!46143)) (True!15801) (RightBrace!7900) (RightBracket!7900) (Colon!7900) (Null!7900) (Comma!7900) (LeftBracket!7900) (False!15801) (LeftBrace!7900) (ImaginaryLiteralValue!7900 (text!55746 List!46143)) (StringLiteralValue!23700 (value!239112 List!46143)) (EOFValue!7900 (value!239113 List!46143)) (IdentValue!7900 (value!239114 List!46143)) (DelimiterValue!15801 (value!239115 List!46143)) (DedentValue!7900 (value!239116 List!46143)) (NewLineValue!7900 (value!239117 List!46143)) (IntegerValue!23700 (value!239118 (_ BitVec 32)) (text!55747 List!46143)) (IntegerValue!23701 (value!239119 Int) (text!55748 List!46143)) (Times!7900) (Or!7900) (Equal!7900) (Minus!7900) (Broken!39504 (value!239120 List!46143)) (And!7900) (Div!7900) (LessEqual!7900) (Mod!7900) (Concat!20475) (Not!7900) (Plus!7900) (SpaceValue!7900 (value!239121 List!46143)) (IntegerValue!23702 (value!239122 Int) (text!55749 List!46143)) (StringLiteralValue!23701 (text!55750 List!46143)) (FloatLiteralValue!15801 (text!55751 List!46143)) (BytesLiteralValue!7900 (value!239123 List!46143)) (CommentValue!15801 (value!239124 List!46143)) (StringLiteralValue!23702 (value!239125 List!46143)) (ErrorTokenValue!7900 (msg!7961 List!46143)) )
))
(declare-datatypes ((C!25340 0))(
  ( (C!25341 (val!14832 Int)) )
))
(declare-datatypes ((Regex!12575 0))(
  ( (ElementMatch!12575 (c!715044 C!25340)) (Concat!20476 (regOne!25662 Regex!12575) (regTwo!25662 Regex!12575)) (EmptyExpr!12575) (Star!12575 (reg!12904 Regex!12575)) (EmptyLang!12575) (Union!12575 (regOne!25663 Regex!12575) (regTwo!25663 Regex!12575)) )
))
(declare-datatypes ((String!53366 0))(
  ( (String!53367 (value!239126 String)) )
))
(declare-datatypes ((List!46144 0))(
  ( (Nil!46020) (Cons!46020 (h!51440 C!25340) (t!345931 List!46144)) )
))
(declare-datatypes ((IArray!27767 0))(
  ( (IArray!27768 (innerList!13941 List!46144)) )
))
(declare-datatypes ((Conc!13881 0))(
  ( (Node!13881 (left!34282 Conc!13881) (right!34612 Conc!13881) (csize!27992 Int) (cheight!14092 Int)) (Leaf!21459 (xs!17187 IArray!27767) (csize!27993 Int)) (Empty!13881) )
))
(declare-datatypes ((BalanceConc!27356 0))(
  ( (BalanceConc!27357 (c!715045 Conc!13881)) )
))
(declare-datatypes ((TokenValueInjection!15228 0))(
  ( (TokenValueInjection!15229 (toValue!10366 Int) (toChars!10225 Int)) )
))
(declare-datatypes ((Rule!15140 0))(
  ( (Rule!15141 (regex!7670 Regex!12575) (tag!8534 String!53366) (isSeparator!7670 Bool) (transformation!7670 TokenValueInjection!15228)) )
))
(declare-datatypes ((Token!14054 0))(
  ( (Token!14055 (value!239127 TokenValue!7900) (rule!10752 Rule!15140) (size!33807 Int) (originalCharacters!8058 List!46144)) )
))
(declare-datatypes ((tuple2!43818 0))(
  ( (tuple2!43819 (_1!25043 Token!14054) (_2!25043 List!46144)) )
))
(declare-datatypes ((Option!9864 0))(
  ( (None!9863) (Some!9863 (v!40693 tuple2!43818)) )
))
(declare-fun lt!1492500 () Option!9864)

(declare-fun input!3342 () List!46144)

(declare-datatypes ((LexerInterface!7263 0))(
  ( (LexerInterfaceExt!7260 (__x!28022 Int)) (Lexer!7261) )
))
(declare-fun thiss!25986 () LexerInterface!7263)

(declare-fun r!4142 () Rule!15140)

(declare-fun maxPrefixOneRule!3272 (LexerInterface!7263 Rule!15140 List!46144) Option!9864)

(assert (=> b!4190419 (= res!1719576 (not (= (maxPrefixOneRule!3272 thiss!25986 r!4142 input!3342) lt!1492500)))))

(declare-fun p!2959 () List!46144)

(declare-fun lt!1492505 () TokenValue!7900)

(declare-fun lt!1492499 () Int)

(declare-fun getSuffix!2820 (List!46144 List!46144) List!46144)

(assert (=> b!4190419 (= lt!1492500 (Some!9863 (tuple2!43819 (Token!14055 lt!1492505 r!4142 lt!1492499 p!2959) (getSuffix!2820 input!3342 p!2959))))))

(declare-fun size!33808 (List!46144) Int)

(assert (=> b!4190419 (= lt!1492499 (size!33808 p!2959))))

(declare-fun lt!1492492 () BalanceConc!27356)

(declare-fun apply!10635 (TokenValueInjection!15228 BalanceConc!27356) TokenValue!7900)

(assert (=> b!4190419 (= lt!1492505 (apply!10635 (transformation!7670 r!4142) lt!1492492))))

(declare-fun isPrefix!4527 (List!46144 List!46144) Bool)

(assert (=> b!4190419 (isPrefix!4527 input!3342 input!3342)))

(declare-datatypes ((Unit!65101 0))(
  ( (Unit!65102) )
))
(declare-fun lt!1492502 () Unit!65101)

(declare-fun lemmaIsPrefixRefl!2956 (List!46144 List!46144) Unit!65101)

(assert (=> b!4190419 (= lt!1492502 (lemmaIsPrefixRefl!2956 input!3342 input!3342))))

(declare-fun lt!1492496 () Unit!65101)

(declare-fun lemmaSemiInverse!2436 (TokenValueInjection!15228 BalanceConc!27356) Unit!65101)

(assert (=> b!4190419 (= lt!1492496 (lemmaSemiInverse!2436 (transformation!7670 r!4142) lt!1492492))))

(declare-fun seqFromList!5695 (List!46144) BalanceConc!27356)

(assert (=> b!4190419 (= lt!1492492 (seqFromList!5695 p!2959))))

(declare-fun b!4190420 () Bool)

(declare-fun res!1719587 () Bool)

(assert (=> b!4190420 (=> (not res!1719587) (not e!2601315))))

(declare-fun validRegex!5692 (Regex!12575) Bool)

(assert (=> b!4190420 (= res!1719587 (validRegex!5692 (regex!7670 r!4142)))))

(declare-fun b!4190421 () Bool)

(declare-fun res!1719586 () Bool)

(assert (=> b!4190421 (=> (not res!1719586) (not e!2601315))))

(declare-datatypes ((List!46145 0))(
  ( (Nil!46021) (Cons!46021 (h!51441 Rule!15140) (t!345932 List!46145)) )
))
(declare-fun rules!3843 () List!46145)

(declare-fun rBis!167 () Rule!15140)

(declare-fun contains!9479 (List!46145 Rule!15140) Bool)

(assert (=> b!4190421 (= res!1719586 (contains!9479 rules!3843 rBis!167))))

(declare-fun b!4190422 () Bool)

(declare-fun res!1719592 () Bool)

(declare-fun e!2601313 () Bool)

(assert (=> b!4190422 (=> res!1719592 e!2601313)))

(declare-fun lt!1492498 () List!46144)

(assert (=> b!4190422 (= res!1719592 (not (= lt!1492498 input!3342)))))

(declare-fun b!4190423 () Bool)

(declare-fun res!1719581 () Bool)

(assert (=> b!4190423 (=> res!1719581 e!2601313)))

(declare-fun lt!1492504 () Int)

(declare-fun lt!1492493 () List!46144)

(assert (=> b!4190423 (= res!1719581 (<= lt!1492504 (size!33808 lt!1492493)))))

(declare-fun b!4190424 () Bool)

(declare-fun matchR!6314 (Regex!12575 List!46144) Bool)

(assert (=> b!4190424 (= e!2601313 (matchR!6314 (regex!7670 rBis!167) lt!1492493))))

(declare-fun b!4190425 () Bool)

(declare-fun e!2601308 () Bool)

(assert (=> b!4190425 (= e!2601311 e!2601308)))

(declare-fun res!1719577 () Bool)

(assert (=> b!4190425 (=> res!1719577 e!2601308)))

(assert (=> b!4190425 (= res!1719577 (<= lt!1492504 lt!1492499))))

(declare-fun pBis!107 () List!46144)

(assert (=> b!4190425 (= lt!1492504 (size!33808 pBis!107))))

(declare-fun b!4190426 () Bool)

(declare-fun res!1719582 () Bool)

(assert (=> b!4190426 (=> res!1719582 e!2601313)))

(assert (=> b!4190426 (= res!1719582 (not (validRegex!5692 (regex!7670 rBis!167))))))

(declare-fun b!4190427 () Bool)

(declare-fun res!1719578 () Bool)

(assert (=> b!4190427 (=> (not res!1719578) (not e!2601315))))

(assert (=> b!4190427 (= res!1719578 (isPrefix!4527 p!2959 input!3342))))

(declare-fun b!4190428 () Bool)

(declare-fun res!1719583 () Bool)

(assert (=> b!4190428 (=> res!1719583 e!2601313)))

(declare-fun lt!1492494 () BalanceConc!27356)

(declare-fun size!33809 (BalanceConc!27356) Int)

(assert (=> b!4190428 (= res!1719583 (>= (size!33809 lt!1492494) lt!1492504))))

(declare-fun b!4190429 () Bool)

(declare-fun res!1719591 () Bool)

(assert (=> b!4190429 (=> (not res!1719591) (not e!2601315))))

(declare-fun isEmpty!27244 (List!46145) Bool)

(assert (=> b!4190429 (= res!1719591 (not (isEmpty!27244 rules!3843)))))

(declare-fun b!4190430 () Bool)

(declare-fun res!1719572 () Bool)

(assert (=> b!4190430 (=> (not res!1719572) (not e!2601315))))

(assert (=> b!4190430 (= res!1719572 (contains!9479 rules!3843 r!4142))))

(declare-fun b!4190431 () Bool)

(declare-fun res!1719589 () Bool)

(assert (=> b!4190431 (=> (not res!1719589) (not e!2601315))))

(assert (=> b!4190431 (= res!1719589 (isPrefix!4527 pBis!107 input!3342))))

(declare-fun tp!1280447 () Bool)

(declare-fun e!2601305 () Bool)

(declare-fun b!4190432 () Bool)

(declare-fun e!2601304 () Bool)

(declare-fun inv!60567 (String!53366) Bool)

(declare-fun inv!60569 (TokenValueInjection!15228) Bool)

(assert (=> b!4190432 (= e!2601304 (and tp!1280447 (inv!60567 (tag!8534 r!4142)) (inv!60569 (transformation!7670 r!4142)) e!2601305))))

(declare-fun b!4190433 () Bool)

(declare-fun e!2601314 () Bool)

(declare-fun tp_is_empty!22113 () Bool)

(declare-fun tp!1280457 () Bool)

(assert (=> b!4190433 (= e!2601314 (and tp_is_empty!22113 tp!1280457))))

(declare-fun b!4190434 () Bool)

(declare-fun res!1719575 () Bool)

(assert (=> b!4190434 (=> (not res!1719575) (not e!2601315))))

(declare-fun ruleValid!3388 (LexerInterface!7263 Rule!15140) Bool)

(assert (=> b!4190434 (= res!1719575 (ruleValid!3388 thiss!25986 r!4142))))

(declare-fun e!2601309 () Bool)

(declare-fun tp!1280458 () Bool)

(declare-fun b!4190435 () Bool)

(assert (=> b!4190435 (= e!2601309 (and tp!1280458 (inv!60567 (tag!8534 (h!51441 rules!3843))) (inv!60569 (transformation!7670 (h!51441 rules!3843))) e!2601300))))

(declare-fun b!4190436 () Bool)

(declare-fun res!1719590 () Bool)

(assert (=> b!4190436 (=> res!1719590 e!2601313)))

(assert (=> b!4190436 (= res!1719590 (not (isPrefix!4527 lt!1492493 input!3342)))))

(declare-fun b!4190437 () Bool)

(declare-fun res!1719588 () Bool)

(assert (=> b!4190437 (=> (not res!1719588) (not e!2601315))))

(assert (=> b!4190437 (= res!1719588 (matchR!6314 (regex!7670 r!4142) p!2959))))

(declare-fun b!4190438 () Bool)

(declare-fun e!2601307 () Bool)

(declare-fun tp!1280456 () Bool)

(declare-fun e!2601310 () Bool)

(assert (=> b!4190438 (= e!2601307 (and tp!1280456 (inv!60567 (tag!8534 rBis!167)) (inv!60569 (transformation!7670 rBis!167)) e!2601310))))

(declare-fun b!4190439 () Bool)

(declare-fun res!1719573 () Bool)

(assert (=> b!4190439 (=> res!1719573 e!2601308)))

(assert (=> b!4190439 (= res!1719573 (not (ruleValid!3388 thiss!25986 rBis!167)))))

(declare-fun b!4190440 () Bool)

(declare-fun e!2601302 () Bool)

(declare-fun tp!1280446 () Bool)

(assert (=> b!4190440 (= e!2601302 (and tp_is_empty!22113 tp!1280446))))

(declare-fun b!4190441 () Bool)

(declare-fun e!2601299 () Bool)

(declare-fun tp!1280450 () Bool)

(assert (=> b!4190441 (= e!2601299 (and e!2601309 tp!1280450))))

(assert (=> b!4190442 (= e!2601305 (and tp!1280452 tp!1280453))))

(declare-fun b!4190443 () Bool)

(declare-fun res!1719579 () Bool)

(assert (=> b!4190443 (=> (not res!1719579) (not e!2601315))))

(declare-fun rulesInvariant!6476 (LexerInterface!7263 List!46145) Bool)

(assert (=> b!4190443 (= res!1719579 (rulesInvariant!6476 thiss!25986 rules!3843))))

(declare-fun b!4190444 () Bool)

(declare-fun e!2601306 () Bool)

(declare-fun tp!1280454 () Bool)

(assert (=> b!4190444 (= e!2601306 (and tp_is_empty!22113 tp!1280454))))

(declare-fun res!1719574 () Bool)

(assert (=> start!399934 (=> (not res!1719574) (not e!2601315))))

(get-info :version)

(assert (=> start!399934 (= res!1719574 ((_ is Lexer!7261) thiss!25986))))

(assert (=> start!399934 e!2601315))

(assert (=> start!399934 true))

(assert (=> start!399934 e!2601307))

(assert (=> start!399934 e!2601304))

(assert (=> start!399934 e!2601299))

(assert (=> start!399934 e!2601314))

(assert (=> start!399934 e!2601306))

(assert (=> start!399934 e!2601302))

(declare-fun b!4190445 () Bool)

(declare-fun e!2601301 () Bool)

(assert (=> b!4190445 (= e!2601308 e!2601301)))

(declare-fun res!1719580 () Bool)

(assert (=> b!4190445 (=> res!1719580 e!2601301)))

(declare-fun lt!1492503 () Option!9864)

(declare-fun isEmpty!27245 (Option!9864) Bool)

(assert (=> b!4190445 (= res!1719580 (isEmpty!27245 lt!1492503))))

(assert (=> b!4190445 (= lt!1492503 (maxPrefixOneRule!3272 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1492501 () Unit!65101)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2394 (LexerInterface!7263 Rule!15140 List!46145) Unit!65101)

(assert (=> b!4190445 (= lt!1492501 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2394 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4190445 (<= lt!1492504 (size!33808 input!3342))))

(declare-fun lt!1492506 () Unit!65101)

(declare-fun lemmaIsPrefixThenSmallerEqSize!557 (List!46144 List!46144) Unit!65101)

(assert (=> b!4190445 (= lt!1492506 (lemmaIsPrefixThenSmallerEqSize!557 pBis!107 input!3342))))

(declare-fun b!4190446 () Bool)

(declare-fun res!1719584 () Bool)

(assert (=> b!4190446 (=> res!1719584 e!2601308)))

(declare-fun maxPrefix!4311 (LexerInterface!7263 List!46145 List!46144) Option!9864)

(assert (=> b!4190446 (= res!1719584 (not (= (maxPrefix!4311 thiss!25986 rules!3843 input!3342) lt!1492500)))))

(assert (=> b!4190447 (= e!2601310 (and tp!1280455 tp!1280449))))

(declare-fun b!4190448 () Bool)

(assert (=> b!4190448 (= e!2601301 e!2601313)))

(declare-fun res!1719585 () Bool)

(assert (=> b!4190448 (=> res!1719585 e!2601313)))

(assert (=> b!4190448 (= res!1719585 (= lt!1492493 pBis!107))))

(assert (=> b!4190448 (isPrefix!4527 lt!1492493 lt!1492498)))

(declare-fun lt!1492497 () tuple2!43818)

(declare-fun ++!11742 (List!46144 List!46144) List!46144)

(assert (=> b!4190448 (= lt!1492498 (++!11742 lt!1492493 (_2!25043 lt!1492497)))))

(declare-fun lt!1492495 () Unit!65101)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3024 (List!46144 List!46144) Unit!65101)

(assert (=> b!4190448 (= lt!1492495 (lemmaConcatTwoListThenFirstIsPrefix!3024 lt!1492493 (_2!25043 lt!1492497)))))

(declare-fun list!16628 (BalanceConc!27356) List!46144)

(assert (=> b!4190448 (= lt!1492493 (list!16628 lt!1492494))))

(declare-fun charsOf!5105 (Token!14054) BalanceConc!27356)

(assert (=> b!4190448 (= lt!1492494 (charsOf!5105 (_1!25043 lt!1492497)))))

(declare-fun get!14964 (Option!9864) tuple2!43818)

(assert (=> b!4190448 (= lt!1492497 (get!14964 lt!1492503))))

(assert (= (and start!399934 res!1719574) b!4190427))

(assert (= (and b!4190427 res!1719578) b!4190431))

(assert (= (and b!4190431 res!1719589) b!4190429))

(assert (= (and b!4190429 res!1719591) b!4190443))

(assert (= (and b!4190443 res!1719579) b!4190430))

(assert (= (and b!4190430 res!1719572) b!4190421))

(assert (= (and b!4190421 res!1719586) b!4190420))

(assert (= (and b!4190420 res!1719587) b!4190437))

(assert (= (and b!4190437 res!1719588) b!4190434))

(assert (= (and b!4190434 res!1719575) b!4190419))

(assert (= (and b!4190419 (not res!1719576)) b!4190425))

(assert (= (and b!4190425 (not res!1719577)) b!4190439))

(assert (= (and b!4190439 (not res!1719573)) b!4190446))

(assert (= (and b!4190446 (not res!1719584)) b!4190445))

(assert (= (and b!4190445 (not res!1719580)) b!4190448))

(assert (= (and b!4190448 (not res!1719585)) b!4190428))

(assert (= (and b!4190428 (not res!1719583)) b!4190436))

(assert (= (and b!4190436 (not res!1719590)) b!4190422))

(assert (= (and b!4190422 (not res!1719592)) b!4190423))

(assert (= (and b!4190423 (not res!1719581)) b!4190426))

(assert (= (and b!4190426 (not res!1719582)) b!4190424))

(assert (= b!4190438 b!4190447))

(assert (= start!399934 b!4190438))

(assert (= b!4190432 b!4190442))

(assert (= start!399934 b!4190432))

(assert (= b!4190435 b!4190418))

(assert (= b!4190441 b!4190435))

(assert (= (and start!399934 ((_ is Cons!46021) rules!3843)) b!4190441))

(assert (= (and start!399934 ((_ is Cons!46020) input!3342)) b!4190433))

(assert (= (and start!399934 ((_ is Cons!46020) pBis!107)) b!4190444))

(assert (= (and start!399934 ((_ is Cons!46020) p!2959)) b!4190440))

(declare-fun m!4779207 () Bool)

(assert (=> b!4190428 m!4779207))

(declare-fun m!4779209 () Bool)

(assert (=> b!4190424 m!4779209))

(declare-fun m!4779211 () Bool)

(assert (=> b!4190437 m!4779211))

(declare-fun m!4779213 () Bool)

(assert (=> b!4190429 m!4779213))

(declare-fun m!4779215 () Bool)

(assert (=> b!4190443 m!4779215))

(declare-fun m!4779217 () Bool)

(assert (=> b!4190421 m!4779217))

(declare-fun m!4779219 () Bool)

(assert (=> b!4190439 m!4779219))

(declare-fun m!4779221 () Bool)

(assert (=> b!4190425 m!4779221))

(declare-fun m!4779223 () Bool)

(assert (=> b!4190445 m!4779223))

(declare-fun m!4779225 () Bool)

(assert (=> b!4190445 m!4779225))

(declare-fun m!4779227 () Bool)

(assert (=> b!4190445 m!4779227))

(declare-fun m!4779229 () Bool)

(assert (=> b!4190445 m!4779229))

(declare-fun m!4779231 () Bool)

(assert (=> b!4190445 m!4779231))

(declare-fun m!4779233 () Bool)

(assert (=> b!4190432 m!4779233))

(declare-fun m!4779235 () Bool)

(assert (=> b!4190432 m!4779235))

(declare-fun m!4779237 () Bool)

(assert (=> b!4190423 m!4779237))

(declare-fun m!4779239 () Bool)

(assert (=> b!4190435 m!4779239))

(declare-fun m!4779241 () Bool)

(assert (=> b!4190435 m!4779241))

(declare-fun m!4779243 () Bool)

(assert (=> b!4190438 m!4779243))

(declare-fun m!4779245 () Bool)

(assert (=> b!4190438 m!4779245))

(declare-fun m!4779247 () Bool)

(assert (=> b!4190431 m!4779247))

(declare-fun m!4779249 () Bool)

(assert (=> b!4190448 m!4779249))

(declare-fun m!4779251 () Bool)

(assert (=> b!4190448 m!4779251))

(declare-fun m!4779253 () Bool)

(assert (=> b!4190448 m!4779253))

(declare-fun m!4779255 () Bool)

(assert (=> b!4190448 m!4779255))

(declare-fun m!4779257 () Bool)

(assert (=> b!4190448 m!4779257))

(declare-fun m!4779259 () Bool)

(assert (=> b!4190448 m!4779259))

(declare-fun m!4779261 () Bool)

(assert (=> b!4190427 m!4779261))

(declare-fun m!4779263 () Bool)

(assert (=> b!4190434 m!4779263))

(declare-fun m!4779265 () Bool)

(assert (=> b!4190426 m!4779265))

(declare-fun m!4779267 () Bool)

(assert (=> b!4190430 m!4779267))

(declare-fun m!4779269 () Bool)

(assert (=> b!4190420 m!4779269))

(declare-fun m!4779271 () Bool)

(assert (=> b!4190436 m!4779271))

(declare-fun m!4779273 () Bool)

(assert (=> b!4190446 m!4779273))

(declare-fun m!4779275 () Bool)

(assert (=> b!4190419 m!4779275))

(declare-fun m!4779277 () Bool)

(assert (=> b!4190419 m!4779277))

(declare-fun m!4779279 () Bool)

(assert (=> b!4190419 m!4779279))

(declare-fun m!4779281 () Bool)

(assert (=> b!4190419 m!4779281))

(declare-fun m!4779283 () Bool)

(assert (=> b!4190419 m!4779283))

(declare-fun m!4779285 () Bool)

(assert (=> b!4190419 m!4779285))

(declare-fun m!4779287 () Bool)

(assert (=> b!4190419 m!4779287))

(declare-fun m!4779289 () Bool)

(assert (=> b!4190419 m!4779289))

(check-sat (not b!4190448) (not b!4190421) (not b!4190420) (not b!4190431) b_and!328327 (not b!4190440) (not b!4190435) (not b!4190446) (not b!4190426) (not b!4190433) (not b!4190439) (not b_next!122703) (not b_next!122699) b_and!328321 (not b!4190427) (not b!4190436) (not b!4190423) b_and!328329 (not b_next!122701) tp_is_empty!22113 (not b_next!122695) b_and!328325 (not b_next!122697) (not b!4190425) (not b!4190429) b_and!328323 (not b!4190443) (not b!4190444) (not b!4190437) (not b!4190430) (not b!4190445) (not b!4190438) (not b!4190434) (not b!4190419) (not b!4190428) (not b!4190441) b_and!328331 (not b_next!122705) (not b!4190424) (not b!4190432))
(check-sat (not b_next!122695) b_and!328323 b_and!328327 (not b_next!122703) (not b_next!122699) b_and!328321 b_and!328329 (not b_next!122701) b_and!328325 (not b_next!122697) b_and!328331 (not b_next!122705))
(get-model)

(declare-fun b!4190457 () Bool)

(declare-fun e!2601324 () Bool)

(declare-fun e!2601323 () Bool)

(assert (=> b!4190457 (= e!2601324 e!2601323)))

(declare-fun res!1719614 () Bool)

(assert (=> b!4190457 (=> (not res!1719614) (not e!2601323))))

(assert (=> b!4190457 (= res!1719614 (not ((_ is Nil!46020) input!3342)))))

(declare-fun b!4190459 () Bool)

(declare-fun tail!6741 (List!46144) List!46144)

(assert (=> b!4190459 (= e!2601323 (isPrefix!4527 (tail!6741 pBis!107) (tail!6741 input!3342)))))

(declare-fun d!1236070 () Bool)

(declare-fun e!2601325 () Bool)

(assert (=> d!1236070 e!2601325))

(declare-fun res!1719611 () Bool)

(assert (=> d!1236070 (=> res!1719611 e!2601325)))

(declare-fun lt!1492509 () Bool)

(assert (=> d!1236070 (= res!1719611 (not lt!1492509))))

(assert (=> d!1236070 (= lt!1492509 e!2601324)))

(declare-fun res!1719612 () Bool)

(assert (=> d!1236070 (=> res!1719612 e!2601324)))

(assert (=> d!1236070 (= res!1719612 ((_ is Nil!46020) pBis!107))))

(assert (=> d!1236070 (= (isPrefix!4527 pBis!107 input!3342) lt!1492509)))

(declare-fun b!4190460 () Bool)

(assert (=> b!4190460 (= e!2601325 (>= (size!33808 input!3342) (size!33808 pBis!107)))))

(declare-fun b!4190458 () Bool)

(declare-fun res!1719613 () Bool)

(assert (=> b!4190458 (=> (not res!1719613) (not e!2601323))))

(declare-fun head!8894 (List!46144) C!25340)

(assert (=> b!4190458 (= res!1719613 (= (head!8894 pBis!107) (head!8894 input!3342)))))

(assert (= (and d!1236070 (not res!1719612)) b!4190457))

(assert (= (and b!4190457 res!1719614) b!4190458))

(assert (= (and b!4190458 res!1719613) b!4190459))

(assert (= (and d!1236070 (not res!1719611)) b!4190460))

(declare-fun m!4779291 () Bool)

(assert (=> b!4190459 m!4779291))

(declare-fun m!4779293 () Bool)

(assert (=> b!4190459 m!4779293))

(assert (=> b!4190459 m!4779291))

(assert (=> b!4190459 m!4779293))

(declare-fun m!4779295 () Bool)

(assert (=> b!4190459 m!4779295))

(assert (=> b!4190460 m!4779227))

(assert (=> b!4190460 m!4779221))

(declare-fun m!4779297 () Bool)

(assert (=> b!4190458 m!4779297))

(declare-fun m!4779299 () Bool)

(assert (=> b!4190458 m!4779299))

(assert (=> b!4190431 d!1236070))

(declare-fun d!1236072 () Bool)

(declare-fun lt!1492512 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7167 (List!46145) (InoxSet Rule!15140))

(assert (=> d!1236072 (= lt!1492512 (select (content!7167 rules!3843) rBis!167))))

(declare-fun e!2601330 () Bool)

(assert (=> d!1236072 (= lt!1492512 e!2601330)))

(declare-fun res!1719619 () Bool)

(assert (=> d!1236072 (=> (not res!1719619) (not e!2601330))))

(assert (=> d!1236072 (= res!1719619 ((_ is Cons!46021) rules!3843))))

(assert (=> d!1236072 (= (contains!9479 rules!3843 rBis!167) lt!1492512)))

(declare-fun b!4190465 () Bool)

(declare-fun e!2601331 () Bool)

(assert (=> b!4190465 (= e!2601330 e!2601331)))

(declare-fun res!1719620 () Bool)

(assert (=> b!4190465 (=> res!1719620 e!2601331)))

(assert (=> b!4190465 (= res!1719620 (= (h!51441 rules!3843) rBis!167))))

(declare-fun b!4190466 () Bool)

(assert (=> b!4190466 (= e!2601331 (contains!9479 (t!345932 rules!3843) rBis!167))))

(assert (= (and d!1236072 res!1719619) b!4190465))

(assert (= (and b!4190465 (not res!1719620)) b!4190466))

(declare-fun m!4779301 () Bool)

(assert (=> d!1236072 m!4779301))

(declare-fun m!4779303 () Bool)

(assert (=> d!1236072 m!4779303))

(declare-fun m!4779305 () Bool)

(assert (=> b!4190466 m!4779305))

(assert (=> b!4190421 d!1236072))

(declare-fun d!1236078 () Bool)

(assert (=> d!1236078 (= (inv!60567 (tag!8534 r!4142)) (= (mod (str.len (value!239126 (tag!8534 r!4142))) 2) 0))))

(assert (=> b!4190432 d!1236078))

(declare-fun d!1236080 () Bool)

(declare-fun res!1719626 () Bool)

(declare-fun e!2601339 () Bool)

(assert (=> d!1236080 (=> (not res!1719626) (not e!2601339))))

(declare-fun semiInverseModEq!3326 (Int Int) Bool)

(assert (=> d!1236080 (= res!1719626 (semiInverseModEq!3326 (toChars!10225 (transformation!7670 r!4142)) (toValue!10366 (transformation!7670 r!4142))))))

(assert (=> d!1236080 (= (inv!60569 (transformation!7670 r!4142)) e!2601339)))

(declare-fun b!4190476 () Bool)

(declare-fun equivClasses!3225 (Int Int) Bool)

(assert (=> b!4190476 (= e!2601339 (equivClasses!3225 (toChars!10225 (transformation!7670 r!4142)) (toValue!10366 (transformation!7670 r!4142))))))

(assert (= (and d!1236080 res!1719626) b!4190476))

(declare-fun m!4779311 () Bool)

(assert (=> d!1236080 m!4779311))

(declare-fun m!4779313 () Bool)

(assert (=> b!4190476 m!4779313))

(assert (=> b!4190432 d!1236080))

(declare-fun d!1236086 () Bool)

(declare-fun lt!1492518 () List!46144)

(assert (=> d!1236086 (= (++!11742 p!2959 lt!1492518) input!3342)))

(declare-fun e!2601344 () List!46144)

(assert (=> d!1236086 (= lt!1492518 e!2601344)))

(declare-fun c!715051 () Bool)

(assert (=> d!1236086 (= c!715051 ((_ is Cons!46020) p!2959))))

(assert (=> d!1236086 (>= (size!33808 input!3342) (size!33808 p!2959))))

(assert (=> d!1236086 (= (getSuffix!2820 input!3342 p!2959) lt!1492518)))

(declare-fun b!4190484 () Bool)

(assert (=> b!4190484 (= e!2601344 (getSuffix!2820 (tail!6741 input!3342) (t!345931 p!2959)))))

(declare-fun b!4190485 () Bool)

(assert (=> b!4190485 (= e!2601344 input!3342)))

(assert (= (and d!1236086 c!715051) b!4190484))

(assert (= (and d!1236086 (not c!715051)) b!4190485))

(declare-fun m!4779321 () Bool)

(assert (=> d!1236086 m!4779321))

(assert (=> d!1236086 m!4779227))

(assert (=> d!1236086 m!4779283))

(assert (=> b!4190484 m!4779293))

(assert (=> b!4190484 m!4779293))

(declare-fun m!4779323 () Bool)

(assert (=> b!4190484 m!4779323))

(assert (=> b!4190419 d!1236086))

(declare-fun b!4190486 () Bool)

(declare-fun e!2601346 () Bool)

(declare-fun e!2601345 () Bool)

(assert (=> b!4190486 (= e!2601346 e!2601345)))

(declare-fun res!1719631 () Bool)

(assert (=> b!4190486 (=> (not res!1719631) (not e!2601345))))

(assert (=> b!4190486 (= res!1719631 (not ((_ is Nil!46020) input!3342)))))

(declare-fun b!4190488 () Bool)

(assert (=> b!4190488 (= e!2601345 (isPrefix!4527 (tail!6741 input!3342) (tail!6741 input!3342)))))

(declare-fun d!1236094 () Bool)

(declare-fun e!2601347 () Bool)

(assert (=> d!1236094 e!2601347))

(declare-fun res!1719628 () Bool)

(assert (=> d!1236094 (=> res!1719628 e!2601347)))

(declare-fun lt!1492519 () Bool)

(assert (=> d!1236094 (= res!1719628 (not lt!1492519))))

(assert (=> d!1236094 (= lt!1492519 e!2601346)))

(declare-fun res!1719629 () Bool)

(assert (=> d!1236094 (=> res!1719629 e!2601346)))

(assert (=> d!1236094 (= res!1719629 ((_ is Nil!46020) input!3342))))

(assert (=> d!1236094 (= (isPrefix!4527 input!3342 input!3342) lt!1492519)))

(declare-fun b!4190489 () Bool)

(assert (=> b!4190489 (= e!2601347 (>= (size!33808 input!3342) (size!33808 input!3342)))))

(declare-fun b!4190487 () Bool)

(declare-fun res!1719630 () Bool)

(assert (=> b!4190487 (=> (not res!1719630) (not e!2601345))))

(assert (=> b!4190487 (= res!1719630 (= (head!8894 input!3342) (head!8894 input!3342)))))

(assert (= (and d!1236094 (not res!1719629)) b!4190486))

(assert (= (and b!4190486 res!1719631) b!4190487))

(assert (= (and b!4190487 res!1719630) b!4190488))

(assert (= (and d!1236094 (not res!1719628)) b!4190489))

(assert (=> b!4190488 m!4779293))

(assert (=> b!4190488 m!4779293))

(assert (=> b!4190488 m!4779293))

(assert (=> b!4190488 m!4779293))

(declare-fun m!4779325 () Bool)

(assert (=> b!4190488 m!4779325))

(assert (=> b!4190489 m!4779227))

(assert (=> b!4190489 m!4779227))

(assert (=> b!4190487 m!4779299))

(assert (=> b!4190487 m!4779299))

(assert (=> b!4190419 d!1236094))

(declare-fun d!1236096 () Bool)

(declare-fun fromListB!2608 (List!46144) BalanceConc!27356)

(assert (=> d!1236096 (= (seqFromList!5695 p!2959) (fromListB!2608 p!2959))))

(declare-fun bs!596612 () Bool)

(assert (= bs!596612 d!1236096))

(declare-fun m!4779327 () Bool)

(assert (=> bs!596612 m!4779327))

(assert (=> b!4190419 d!1236096))

(declare-fun d!1236098 () Bool)

(assert (=> d!1236098 (isPrefix!4527 input!3342 input!3342)))

(declare-fun lt!1492522 () Unit!65101)

(declare-fun choose!25668 (List!46144 List!46144) Unit!65101)

(assert (=> d!1236098 (= lt!1492522 (choose!25668 input!3342 input!3342))))

(assert (=> d!1236098 (= (lemmaIsPrefixRefl!2956 input!3342 input!3342) lt!1492522)))

(declare-fun bs!596613 () Bool)

(assert (= bs!596613 d!1236098))

(assert (=> bs!596613 m!4779277))

(declare-fun m!4779329 () Bool)

(assert (=> bs!596613 m!4779329))

(assert (=> b!4190419 d!1236098))

(declare-fun b!4190688 () Bool)

(declare-fun e!2601464 () Bool)

(declare-datatypes ((tuple2!43820 0))(
  ( (tuple2!43821 (_1!25044 List!46144) (_2!25044 List!46144)) )
))
(declare-fun findLongestMatchInner!1606 (Regex!12575 List!46144 Int List!46144 List!46144 Int) tuple2!43820)

(assert (=> b!4190688 (= e!2601464 (matchR!6314 (regex!7670 r!4142) (_1!25044 (findLongestMatchInner!1606 (regex!7670 r!4142) Nil!46020 (size!33808 Nil!46020) input!3342 input!3342 (size!33808 input!3342)))))))

(declare-fun b!4190689 () Bool)

(declare-fun e!2601466 () Option!9864)

(assert (=> b!4190689 (= e!2601466 None!9863)))

(declare-fun b!4190691 () Bool)

(declare-fun res!1719769 () Bool)

(declare-fun e!2601467 () Bool)

(assert (=> b!4190691 (=> (not res!1719769) (not e!2601467))))

(declare-fun lt!1492576 () Option!9864)

(assert (=> b!4190691 (= res!1719769 (= (++!11742 (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492576)))) (_2!25043 (get!14964 lt!1492576))) input!3342))))

(declare-fun b!4190692 () Bool)

(assert (=> b!4190692 (= e!2601467 (= (size!33807 (_1!25043 (get!14964 lt!1492576))) (size!33808 (originalCharacters!8058 (_1!25043 (get!14964 lt!1492576))))))))

(declare-fun b!4190693 () Bool)

(declare-fun res!1719774 () Bool)

(assert (=> b!4190693 (=> (not res!1719774) (not e!2601467))))

(assert (=> b!4190693 (= res!1719774 (= (rule!10752 (_1!25043 (get!14964 lt!1492576))) r!4142))))

(declare-fun b!4190694 () Bool)

(declare-fun lt!1492577 () tuple2!43820)

(assert (=> b!4190694 (= e!2601466 (Some!9863 (tuple2!43819 (Token!14055 (apply!10635 (transformation!7670 r!4142) (seqFromList!5695 (_1!25044 lt!1492577))) r!4142 (size!33809 (seqFromList!5695 (_1!25044 lt!1492577))) (_1!25044 lt!1492577)) (_2!25044 lt!1492577))))))

(declare-fun lt!1492580 () Unit!65101)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1579 (Regex!12575 List!46144) Unit!65101)

(assert (=> b!4190694 (= lt!1492580 (longestMatchIsAcceptedByMatchOrIsEmpty!1579 (regex!7670 r!4142) input!3342))))

(declare-fun res!1719773 () Bool)

(declare-fun isEmpty!27247 (List!46144) Bool)

(assert (=> b!4190694 (= res!1719773 (isEmpty!27247 (_1!25044 (findLongestMatchInner!1606 (regex!7670 r!4142) Nil!46020 (size!33808 Nil!46020) input!3342 input!3342 (size!33808 input!3342)))))))

(assert (=> b!4190694 (=> res!1719773 e!2601464)))

(assert (=> b!4190694 e!2601464))

(declare-fun lt!1492578 () Unit!65101)

(assert (=> b!4190694 (= lt!1492578 lt!1492580)))

(declare-fun lt!1492579 () Unit!65101)

(assert (=> b!4190694 (= lt!1492579 (lemmaSemiInverse!2436 (transformation!7670 r!4142) (seqFromList!5695 (_1!25044 lt!1492577))))))

(declare-fun d!1236100 () Bool)

(declare-fun e!2601465 () Bool)

(assert (=> d!1236100 e!2601465))

(declare-fun res!1719775 () Bool)

(assert (=> d!1236100 (=> res!1719775 e!2601465)))

(assert (=> d!1236100 (= res!1719775 (isEmpty!27245 lt!1492576))))

(assert (=> d!1236100 (= lt!1492576 e!2601466)))

(declare-fun c!715081 () Bool)

(assert (=> d!1236100 (= c!715081 (isEmpty!27247 (_1!25044 lt!1492577)))))

(declare-fun findLongestMatch!1519 (Regex!12575 List!46144) tuple2!43820)

(assert (=> d!1236100 (= lt!1492577 (findLongestMatch!1519 (regex!7670 r!4142) input!3342))))

(assert (=> d!1236100 (ruleValid!3388 thiss!25986 r!4142)))

(assert (=> d!1236100 (= (maxPrefixOneRule!3272 thiss!25986 r!4142 input!3342) lt!1492576)))

(declare-fun b!4190690 () Bool)

(declare-fun res!1719771 () Bool)

(assert (=> b!4190690 (=> (not res!1719771) (not e!2601467))))

(assert (=> b!4190690 (= res!1719771 (= (value!239127 (_1!25043 (get!14964 lt!1492576))) (apply!10635 (transformation!7670 (rule!10752 (_1!25043 (get!14964 lt!1492576)))) (seqFromList!5695 (originalCharacters!8058 (_1!25043 (get!14964 lt!1492576)))))))))

(declare-fun b!4190695 () Bool)

(assert (=> b!4190695 (= e!2601465 e!2601467)))

(declare-fun res!1719770 () Bool)

(assert (=> b!4190695 (=> (not res!1719770) (not e!2601467))))

(assert (=> b!4190695 (= res!1719770 (matchR!6314 (regex!7670 r!4142) (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492576))))))))

(declare-fun b!4190696 () Bool)

(declare-fun res!1719772 () Bool)

(assert (=> b!4190696 (=> (not res!1719772) (not e!2601467))))

(assert (=> b!4190696 (= res!1719772 (< (size!33808 (_2!25043 (get!14964 lt!1492576))) (size!33808 input!3342)))))

(assert (= (and d!1236100 c!715081) b!4190689))

(assert (= (and d!1236100 (not c!715081)) b!4190694))

(assert (= (and b!4190694 (not res!1719773)) b!4190688))

(assert (= (and d!1236100 (not res!1719775)) b!4190695))

(assert (= (and b!4190695 res!1719770) b!4190691))

(assert (= (and b!4190691 res!1719769) b!4190696))

(assert (= (and b!4190696 res!1719772) b!4190693))

(assert (= (and b!4190693 res!1719774) b!4190690))

(assert (= (and b!4190690 res!1719771) b!4190692))

(declare-fun m!4779469 () Bool)

(assert (=> b!4190696 m!4779469))

(declare-fun m!4779471 () Bool)

(assert (=> b!4190696 m!4779471))

(assert (=> b!4190696 m!4779227))

(assert (=> b!4190695 m!4779469))

(declare-fun m!4779473 () Bool)

(assert (=> b!4190695 m!4779473))

(assert (=> b!4190695 m!4779473))

(declare-fun m!4779475 () Bool)

(assert (=> b!4190695 m!4779475))

(assert (=> b!4190695 m!4779475))

(declare-fun m!4779477 () Bool)

(assert (=> b!4190695 m!4779477))

(assert (=> b!4190691 m!4779469))

(assert (=> b!4190691 m!4779473))

(assert (=> b!4190691 m!4779473))

(assert (=> b!4190691 m!4779475))

(assert (=> b!4190691 m!4779475))

(declare-fun m!4779479 () Bool)

(assert (=> b!4190691 m!4779479))

(declare-fun m!4779481 () Bool)

(assert (=> b!4190694 m!4779481))

(declare-fun m!4779483 () Bool)

(assert (=> b!4190694 m!4779483))

(declare-fun m!4779485 () Bool)

(assert (=> b!4190694 m!4779485))

(assert (=> b!4190694 m!4779227))

(declare-fun m!4779487 () Bool)

(assert (=> b!4190694 m!4779487))

(declare-fun m!4779489 () Bool)

(assert (=> b!4190694 m!4779489))

(assert (=> b!4190694 m!4779481))

(assert (=> b!4190694 m!4779485))

(assert (=> b!4190694 m!4779481))

(declare-fun m!4779491 () Bool)

(assert (=> b!4190694 m!4779491))

(declare-fun m!4779493 () Bool)

(assert (=> b!4190694 m!4779493))

(assert (=> b!4190694 m!4779227))

(assert (=> b!4190694 m!4779481))

(declare-fun m!4779495 () Bool)

(assert (=> b!4190694 m!4779495))

(declare-fun m!4779497 () Bool)

(assert (=> d!1236100 m!4779497))

(declare-fun m!4779499 () Bool)

(assert (=> d!1236100 m!4779499))

(declare-fun m!4779501 () Bool)

(assert (=> d!1236100 m!4779501))

(assert (=> d!1236100 m!4779263))

(assert (=> b!4190692 m!4779469))

(declare-fun m!4779503 () Bool)

(assert (=> b!4190692 m!4779503))

(assert (=> b!4190693 m!4779469))

(assert (=> b!4190690 m!4779469))

(declare-fun m!4779505 () Bool)

(assert (=> b!4190690 m!4779505))

(assert (=> b!4190690 m!4779505))

(declare-fun m!4779507 () Bool)

(assert (=> b!4190690 m!4779507))

(assert (=> b!4190688 m!4779485))

(assert (=> b!4190688 m!4779227))

(assert (=> b!4190688 m!4779485))

(assert (=> b!4190688 m!4779227))

(assert (=> b!4190688 m!4779487))

(declare-fun m!4779509 () Bool)

(assert (=> b!4190688 m!4779509))

(assert (=> b!4190419 d!1236100))

(declare-fun b!4190719 () Bool)

(declare-fun e!2601483 () Bool)

(assert (=> b!4190719 (= e!2601483 true)))

(declare-fun d!1236146 () Bool)

(assert (=> d!1236146 e!2601483))

(assert (= d!1236146 b!4190719))

(declare-fun order!24351 () Int)

(declare-fun lambda!129481 () Int)

(declare-fun order!24349 () Int)

(declare-fun dynLambda!19800 (Int Int) Int)

(declare-fun dynLambda!19801 (Int Int) Int)

(assert (=> b!4190719 (< (dynLambda!19800 order!24349 (toValue!10366 (transformation!7670 r!4142))) (dynLambda!19801 order!24351 lambda!129481))))

(declare-fun order!24353 () Int)

(declare-fun dynLambda!19802 (Int Int) Int)

(assert (=> b!4190719 (< (dynLambda!19802 order!24353 (toChars!10225 (transformation!7670 r!4142))) (dynLambda!19801 order!24351 lambda!129481))))

(declare-fun dynLambda!19803 (Int TokenValue!7900) BalanceConc!27356)

(declare-fun dynLambda!19804 (Int BalanceConc!27356) TokenValue!7900)

(assert (=> d!1236146 (= (list!16628 (dynLambda!19803 (toChars!10225 (transformation!7670 r!4142)) (dynLambda!19804 (toValue!10366 (transformation!7670 r!4142)) lt!1492492))) (list!16628 lt!1492492))))

(declare-fun lt!1492591 () Unit!65101)

(declare-fun ForallOf!1059 (Int BalanceConc!27356) Unit!65101)

(assert (=> d!1236146 (= lt!1492591 (ForallOf!1059 lambda!129481 lt!1492492))))

(assert (=> d!1236146 (= (lemmaSemiInverse!2436 (transformation!7670 r!4142) lt!1492492) lt!1492591)))

(declare-fun b_lambda!123247 () Bool)

(assert (=> (not b_lambda!123247) (not d!1236146)))

(declare-fun t!345952 () Bool)

(declare-fun tb!251021 () Bool)

(assert (=> (and b!4190442 (= (toChars!10225 (transformation!7670 r!4142)) (toChars!10225 (transformation!7670 r!4142))) t!345952) tb!251021))

(declare-fun tp!1280465 () Bool)

(declare-fun e!2601486 () Bool)

(declare-fun b!4190724 () Bool)

(declare-fun inv!60570 (Conc!13881) Bool)

(assert (=> b!4190724 (= e!2601486 (and (inv!60570 (c!715045 (dynLambda!19803 (toChars!10225 (transformation!7670 r!4142)) (dynLambda!19804 (toValue!10366 (transformation!7670 r!4142)) lt!1492492)))) tp!1280465))))

(declare-fun result!305930 () Bool)

(declare-fun inv!60571 (BalanceConc!27356) Bool)

(assert (=> tb!251021 (= result!305930 (and (inv!60571 (dynLambda!19803 (toChars!10225 (transformation!7670 r!4142)) (dynLambda!19804 (toValue!10366 (transformation!7670 r!4142)) lt!1492492))) e!2601486))))

(assert (= tb!251021 b!4190724))

(declare-fun m!4779537 () Bool)

(assert (=> b!4190724 m!4779537))

(declare-fun m!4779539 () Bool)

(assert (=> tb!251021 m!4779539))

(assert (=> d!1236146 t!345952))

(declare-fun b_and!328357 () Bool)

(assert (= b_and!328323 (and (=> t!345952 result!305930) b_and!328357)))

(declare-fun tb!251023 () Bool)

(declare-fun t!345954 () Bool)

(assert (=> (and b!4190447 (= (toChars!10225 (transformation!7670 rBis!167)) (toChars!10225 (transformation!7670 r!4142))) t!345954) tb!251023))

(declare-fun result!305934 () Bool)

(assert (= result!305934 result!305930))

(assert (=> d!1236146 t!345954))

(declare-fun b_and!328359 () Bool)

(assert (= b_and!328327 (and (=> t!345954 result!305934) b_and!328359)))

(declare-fun tb!251025 () Bool)

(declare-fun t!345956 () Bool)

(assert (=> (and b!4190418 (= (toChars!10225 (transformation!7670 (h!51441 rules!3843))) (toChars!10225 (transformation!7670 r!4142))) t!345956) tb!251025))

(declare-fun result!305936 () Bool)

(assert (= result!305936 result!305930))

(assert (=> d!1236146 t!345956))

(declare-fun b_and!328361 () Bool)

(assert (= b_and!328331 (and (=> t!345956 result!305936) b_and!328361)))

(declare-fun b_lambda!123249 () Bool)

(assert (=> (not b_lambda!123249) (not d!1236146)))

(declare-fun t!345958 () Bool)

(declare-fun tb!251027 () Bool)

(assert (=> (and b!4190442 (= (toValue!10366 (transformation!7670 r!4142)) (toValue!10366 (transformation!7670 r!4142))) t!345958) tb!251027))

(declare-fun result!305938 () Bool)

(declare-fun inv!21 (TokenValue!7900) Bool)

(assert (=> tb!251027 (= result!305938 (inv!21 (dynLambda!19804 (toValue!10366 (transformation!7670 r!4142)) lt!1492492)))))

(declare-fun m!4779541 () Bool)

(assert (=> tb!251027 m!4779541))

(assert (=> d!1236146 t!345958))

(declare-fun b_and!328363 () Bool)

(assert (= b_and!328321 (and (=> t!345958 result!305938) b_and!328363)))

(declare-fun tb!251029 () Bool)

(declare-fun t!345960 () Bool)

(assert (=> (and b!4190447 (= (toValue!10366 (transformation!7670 rBis!167)) (toValue!10366 (transformation!7670 r!4142))) t!345960) tb!251029))

(declare-fun result!305942 () Bool)

(assert (= result!305942 result!305938))

(assert (=> d!1236146 t!345960))

(declare-fun b_and!328365 () Bool)

(assert (= b_and!328325 (and (=> t!345960 result!305942) b_and!328365)))

(declare-fun tb!251031 () Bool)

(declare-fun t!345962 () Bool)

(assert (=> (and b!4190418 (= (toValue!10366 (transformation!7670 (h!51441 rules!3843))) (toValue!10366 (transformation!7670 r!4142))) t!345962) tb!251031))

(declare-fun result!305944 () Bool)

(assert (= result!305944 result!305938))

(assert (=> d!1236146 t!345962))

(declare-fun b_and!328367 () Bool)

(assert (= b_and!328329 (and (=> t!345962 result!305944) b_and!328367)))

(declare-fun m!4779543 () Bool)

(assert (=> d!1236146 m!4779543))

(declare-fun m!4779545 () Bool)

(assert (=> d!1236146 m!4779545))

(assert (=> d!1236146 m!4779545))

(declare-fun m!4779547 () Bool)

(assert (=> d!1236146 m!4779547))

(assert (=> d!1236146 m!4779543))

(declare-fun m!4779549 () Bool)

(assert (=> d!1236146 m!4779549))

(declare-fun m!4779551 () Bool)

(assert (=> d!1236146 m!4779551))

(assert (=> b!4190419 d!1236146))

(declare-fun d!1236160 () Bool)

(assert (=> d!1236160 (= (apply!10635 (transformation!7670 r!4142) lt!1492492) (dynLambda!19804 (toValue!10366 (transformation!7670 r!4142)) lt!1492492))))

(declare-fun b_lambda!123251 () Bool)

(assert (=> (not b_lambda!123251) (not d!1236160)))

(assert (=> d!1236160 t!345958))

(declare-fun b_and!328369 () Bool)

(assert (= b_and!328363 (and (=> t!345958 result!305938) b_and!328369)))

(assert (=> d!1236160 t!345960))

(declare-fun b_and!328371 () Bool)

(assert (= b_and!328365 (and (=> t!345960 result!305942) b_and!328371)))

(assert (=> d!1236160 t!345962))

(declare-fun b_and!328373 () Bool)

(assert (= b_and!328367 (and (=> t!345962 result!305944) b_and!328373)))

(assert (=> d!1236160 m!4779543))

(assert (=> b!4190419 d!1236160))

(declare-fun d!1236162 () Bool)

(declare-fun lt!1492594 () Int)

(assert (=> d!1236162 (>= lt!1492594 0)))

(declare-fun e!2601492 () Int)

(assert (=> d!1236162 (= lt!1492594 e!2601492)))

(declare-fun c!715088 () Bool)

(assert (=> d!1236162 (= c!715088 ((_ is Nil!46020) p!2959))))

(assert (=> d!1236162 (= (size!33808 p!2959) lt!1492594)))

(declare-fun b!4190731 () Bool)

(assert (=> b!4190731 (= e!2601492 0)))

(declare-fun b!4190732 () Bool)

(assert (=> b!4190732 (= e!2601492 (+ 1 (size!33808 (t!345931 p!2959))))))

(assert (= (and d!1236162 c!715088) b!4190731))

(assert (= (and d!1236162 (not c!715088)) b!4190732))

(declare-fun m!4779553 () Bool)

(assert (=> b!4190732 m!4779553))

(assert (=> b!4190419 d!1236162))

(declare-fun d!1236164 () Bool)

(declare-fun lt!1492595 () Bool)

(assert (=> d!1236164 (= lt!1492595 (select (content!7167 rules!3843) r!4142))))

(declare-fun e!2601493 () Bool)

(assert (=> d!1236164 (= lt!1492595 e!2601493)))

(declare-fun res!1719780 () Bool)

(assert (=> d!1236164 (=> (not res!1719780) (not e!2601493))))

(assert (=> d!1236164 (= res!1719780 ((_ is Cons!46021) rules!3843))))

(assert (=> d!1236164 (= (contains!9479 rules!3843 r!4142) lt!1492595)))

(declare-fun b!4190733 () Bool)

(declare-fun e!2601494 () Bool)

(assert (=> b!4190733 (= e!2601493 e!2601494)))

(declare-fun res!1719781 () Bool)

(assert (=> b!4190733 (=> res!1719781 e!2601494)))

(assert (=> b!4190733 (= res!1719781 (= (h!51441 rules!3843) r!4142))))

(declare-fun b!4190734 () Bool)

(assert (=> b!4190734 (= e!2601494 (contains!9479 (t!345932 rules!3843) r!4142))))

(assert (= (and d!1236164 res!1719780) b!4190733))

(assert (= (and b!4190733 (not res!1719781)) b!4190734))

(assert (=> d!1236164 m!4779301))

(declare-fun m!4779555 () Bool)

(assert (=> d!1236164 m!4779555))

(declare-fun m!4779557 () Bool)

(assert (=> b!4190734 m!4779557))

(assert (=> b!4190430 d!1236164))

(declare-fun b!4190753 () Bool)

(declare-fun e!2601511 () Bool)

(declare-fun e!2601510 () Bool)

(assert (=> b!4190753 (= e!2601511 e!2601510)))

(declare-fun res!1719792 () Bool)

(declare-fun nullable!4417 (Regex!12575) Bool)

(assert (=> b!4190753 (= res!1719792 (not (nullable!4417 (reg!12904 (regex!7670 r!4142)))))))

(assert (=> b!4190753 (=> (not res!1719792) (not e!2601510))))

(declare-fun b!4190754 () Bool)

(declare-fun e!2601509 () Bool)

(assert (=> b!4190754 (= e!2601509 e!2601511)))

(declare-fun c!715093 () Bool)

(assert (=> b!4190754 (= c!715093 ((_ is Star!12575) (regex!7670 r!4142)))))

(declare-fun b!4190755 () Bool)

(declare-fun res!1719795 () Bool)

(declare-fun e!2601513 () Bool)

(assert (=> b!4190755 (=> (not res!1719795) (not e!2601513))))

(declare-fun call!292158 () Bool)

(assert (=> b!4190755 (= res!1719795 call!292158)))

(declare-fun e!2601512 () Bool)

(assert (=> b!4190755 (= e!2601512 e!2601513)))

(declare-fun b!4190756 () Bool)

(assert (=> b!4190756 (= e!2601511 e!2601512)))

(declare-fun c!715094 () Bool)

(assert (=> b!4190756 (= c!715094 ((_ is Union!12575) (regex!7670 r!4142)))))

(declare-fun bm!292153 () Bool)

(declare-fun call!292160 () Bool)

(assert (=> bm!292153 (= call!292160 (validRegex!5692 (ite c!715093 (reg!12904 (regex!7670 r!4142)) (ite c!715094 (regTwo!25663 (regex!7670 r!4142)) (regTwo!25662 (regex!7670 r!4142))))))))

(declare-fun b!4190757 () Bool)

(declare-fun e!2601515 () Bool)

(declare-fun call!292159 () Bool)

(assert (=> b!4190757 (= e!2601515 call!292159)))

(declare-fun bm!292154 () Bool)

(assert (=> bm!292154 (= call!292159 call!292160)))

(declare-fun bm!292155 () Bool)

(assert (=> bm!292155 (= call!292158 (validRegex!5692 (ite c!715094 (regOne!25663 (regex!7670 r!4142)) (regOne!25662 (regex!7670 r!4142)))))))

(declare-fun b!4190758 () Bool)

(assert (=> b!4190758 (= e!2601513 call!292159)))

(declare-fun b!4190759 () Bool)

(declare-fun e!2601514 () Bool)

(assert (=> b!4190759 (= e!2601514 e!2601515)))

(declare-fun res!1719794 () Bool)

(assert (=> b!4190759 (=> (not res!1719794) (not e!2601515))))

(assert (=> b!4190759 (= res!1719794 call!292158)))

(declare-fun d!1236166 () Bool)

(declare-fun res!1719793 () Bool)

(assert (=> d!1236166 (=> res!1719793 e!2601509)))

(assert (=> d!1236166 (= res!1719793 ((_ is ElementMatch!12575) (regex!7670 r!4142)))))

(assert (=> d!1236166 (= (validRegex!5692 (regex!7670 r!4142)) e!2601509)))

(declare-fun b!4190760 () Bool)

(declare-fun res!1719796 () Bool)

(assert (=> b!4190760 (=> res!1719796 e!2601514)))

(assert (=> b!4190760 (= res!1719796 (not ((_ is Concat!20476) (regex!7670 r!4142))))))

(assert (=> b!4190760 (= e!2601512 e!2601514)))

(declare-fun b!4190761 () Bool)

(assert (=> b!4190761 (= e!2601510 call!292160)))

(assert (= (and d!1236166 (not res!1719793)) b!4190754))

(assert (= (and b!4190754 c!715093) b!4190753))

(assert (= (and b!4190754 (not c!715093)) b!4190756))

(assert (= (and b!4190753 res!1719792) b!4190761))

(assert (= (and b!4190756 c!715094) b!4190755))

(assert (= (and b!4190756 (not c!715094)) b!4190760))

(assert (= (and b!4190755 res!1719795) b!4190758))

(assert (= (and b!4190760 (not res!1719796)) b!4190759))

(assert (= (and b!4190759 res!1719794) b!4190757))

(assert (= (or b!4190758 b!4190757) bm!292154))

(assert (= (or b!4190755 b!4190759) bm!292155))

(assert (= (or b!4190761 bm!292154) bm!292153))

(declare-fun m!4779559 () Bool)

(assert (=> b!4190753 m!4779559))

(declare-fun m!4779561 () Bool)

(assert (=> bm!292153 m!4779561))

(declare-fun m!4779563 () Bool)

(assert (=> bm!292155 m!4779563))

(assert (=> b!4190420 d!1236166))

(declare-fun d!1236168 () Bool)

(declare-fun res!1719801 () Bool)

(declare-fun e!2601518 () Bool)

(assert (=> d!1236168 (=> (not res!1719801) (not e!2601518))))

(assert (=> d!1236168 (= res!1719801 (validRegex!5692 (regex!7670 rBis!167)))))

(assert (=> d!1236168 (= (ruleValid!3388 thiss!25986 rBis!167) e!2601518)))

(declare-fun b!4190766 () Bool)

(declare-fun res!1719802 () Bool)

(assert (=> b!4190766 (=> (not res!1719802) (not e!2601518))))

(assert (=> b!4190766 (= res!1719802 (not (nullable!4417 (regex!7670 rBis!167))))))

(declare-fun b!4190767 () Bool)

(assert (=> b!4190767 (= e!2601518 (not (= (tag!8534 rBis!167) (String!53367 ""))))))

(assert (= (and d!1236168 res!1719801) b!4190766))

(assert (= (and b!4190766 res!1719802) b!4190767))

(assert (=> d!1236168 m!4779265))

(declare-fun m!4779565 () Bool)

(assert (=> b!4190766 m!4779565))

(assert (=> b!4190439 d!1236168))

(declare-fun d!1236170 () Bool)

(assert (=> d!1236170 (= (isEmpty!27244 rules!3843) ((_ is Nil!46021) rules!3843))))

(assert (=> b!4190429 d!1236170))

(declare-fun b!4190768 () Bool)

(declare-fun e!2601520 () Bool)

(declare-fun e!2601519 () Bool)

(assert (=> b!4190768 (= e!2601520 e!2601519)))

(declare-fun res!1719806 () Bool)

(assert (=> b!4190768 (=> (not res!1719806) (not e!2601519))))

(assert (=> b!4190768 (= res!1719806 (not ((_ is Nil!46020) input!3342)))))

(declare-fun b!4190770 () Bool)

(assert (=> b!4190770 (= e!2601519 (isPrefix!4527 (tail!6741 p!2959) (tail!6741 input!3342)))))

(declare-fun d!1236172 () Bool)

(declare-fun e!2601521 () Bool)

(assert (=> d!1236172 e!2601521))

(declare-fun res!1719803 () Bool)

(assert (=> d!1236172 (=> res!1719803 e!2601521)))

(declare-fun lt!1492596 () Bool)

(assert (=> d!1236172 (= res!1719803 (not lt!1492596))))

(assert (=> d!1236172 (= lt!1492596 e!2601520)))

(declare-fun res!1719804 () Bool)

(assert (=> d!1236172 (=> res!1719804 e!2601520)))

(assert (=> d!1236172 (= res!1719804 ((_ is Nil!46020) p!2959))))

(assert (=> d!1236172 (= (isPrefix!4527 p!2959 input!3342) lt!1492596)))

(declare-fun b!4190771 () Bool)

(assert (=> b!4190771 (= e!2601521 (>= (size!33808 input!3342) (size!33808 p!2959)))))

(declare-fun b!4190769 () Bool)

(declare-fun res!1719805 () Bool)

(assert (=> b!4190769 (=> (not res!1719805) (not e!2601519))))

(assert (=> b!4190769 (= res!1719805 (= (head!8894 p!2959) (head!8894 input!3342)))))

(assert (= (and d!1236172 (not res!1719804)) b!4190768))

(assert (= (and b!4190768 res!1719806) b!4190769))

(assert (= (and b!4190769 res!1719805) b!4190770))

(assert (= (and d!1236172 (not res!1719803)) b!4190771))

(declare-fun m!4779567 () Bool)

(assert (=> b!4190770 m!4779567))

(assert (=> b!4190770 m!4779293))

(assert (=> b!4190770 m!4779567))

(assert (=> b!4190770 m!4779293))

(declare-fun m!4779569 () Bool)

(assert (=> b!4190770 m!4779569))

(assert (=> b!4190771 m!4779227))

(assert (=> b!4190771 m!4779283))

(declare-fun m!4779571 () Bool)

(assert (=> b!4190769 m!4779571))

(assert (=> b!4190769 m!4779299))

(assert (=> b!4190427 d!1236172))

(declare-fun d!1236174 () Bool)

(assert (=> d!1236174 (= (inv!60567 (tag!8534 rBis!167)) (= (mod (str.len (value!239126 (tag!8534 rBis!167))) 2) 0))))

(assert (=> b!4190438 d!1236174))

(declare-fun d!1236176 () Bool)

(declare-fun res!1719807 () Bool)

(declare-fun e!2601522 () Bool)

(assert (=> d!1236176 (=> (not res!1719807) (not e!2601522))))

(assert (=> d!1236176 (= res!1719807 (semiInverseModEq!3326 (toChars!10225 (transformation!7670 rBis!167)) (toValue!10366 (transformation!7670 rBis!167))))))

(assert (=> d!1236176 (= (inv!60569 (transformation!7670 rBis!167)) e!2601522)))

(declare-fun b!4190772 () Bool)

(assert (=> b!4190772 (= e!2601522 (equivClasses!3225 (toChars!10225 (transformation!7670 rBis!167)) (toValue!10366 (transformation!7670 rBis!167))))))

(assert (= (and d!1236176 res!1719807) b!4190772))

(declare-fun m!4779573 () Bool)

(assert (=> d!1236176 m!4779573))

(declare-fun m!4779575 () Bool)

(assert (=> b!4190772 m!4779575))

(assert (=> b!4190438 d!1236176))

(declare-fun d!1236178 () Bool)

(declare-fun lt!1492599 () Int)

(assert (=> d!1236178 (= lt!1492599 (size!33808 (list!16628 lt!1492494)))))

(declare-fun size!33810 (Conc!13881) Int)

(assert (=> d!1236178 (= lt!1492599 (size!33810 (c!715045 lt!1492494)))))

(assert (=> d!1236178 (= (size!33809 lt!1492494) lt!1492599)))

(declare-fun bs!596619 () Bool)

(assert (= bs!596619 d!1236178))

(assert (=> bs!596619 m!4779253))

(assert (=> bs!596619 m!4779253))

(declare-fun m!4779577 () Bool)

(assert (=> bs!596619 m!4779577))

(declare-fun m!4779579 () Bool)

(assert (=> bs!596619 m!4779579))

(assert (=> b!4190428 d!1236178))

(declare-fun b!4190773 () Bool)

(declare-fun e!2601525 () Bool)

(declare-fun e!2601524 () Bool)

(assert (=> b!4190773 (= e!2601525 e!2601524)))

(declare-fun res!1719808 () Bool)

(assert (=> b!4190773 (= res!1719808 (not (nullable!4417 (reg!12904 (regex!7670 rBis!167)))))))

(assert (=> b!4190773 (=> (not res!1719808) (not e!2601524))))

(declare-fun b!4190774 () Bool)

(declare-fun e!2601523 () Bool)

(assert (=> b!4190774 (= e!2601523 e!2601525)))

(declare-fun c!715095 () Bool)

(assert (=> b!4190774 (= c!715095 ((_ is Star!12575) (regex!7670 rBis!167)))))

(declare-fun b!4190775 () Bool)

(declare-fun res!1719811 () Bool)

(declare-fun e!2601527 () Bool)

(assert (=> b!4190775 (=> (not res!1719811) (not e!2601527))))

(declare-fun call!292161 () Bool)

(assert (=> b!4190775 (= res!1719811 call!292161)))

(declare-fun e!2601526 () Bool)

(assert (=> b!4190775 (= e!2601526 e!2601527)))

(declare-fun b!4190776 () Bool)

(assert (=> b!4190776 (= e!2601525 e!2601526)))

(declare-fun c!715096 () Bool)

(assert (=> b!4190776 (= c!715096 ((_ is Union!12575) (regex!7670 rBis!167)))))

(declare-fun call!292163 () Bool)

(declare-fun bm!292156 () Bool)

(assert (=> bm!292156 (= call!292163 (validRegex!5692 (ite c!715095 (reg!12904 (regex!7670 rBis!167)) (ite c!715096 (regTwo!25663 (regex!7670 rBis!167)) (regTwo!25662 (regex!7670 rBis!167))))))))

(declare-fun b!4190777 () Bool)

(declare-fun e!2601529 () Bool)

(declare-fun call!292162 () Bool)

(assert (=> b!4190777 (= e!2601529 call!292162)))

(declare-fun bm!292157 () Bool)

(assert (=> bm!292157 (= call!292162 call!292163)))

(declare-fun bm!292158 () Bool)

(assert (=> bm!292158 (= call!292161 (validRegex!5692 (ite c!715096 (regOne!25663 (regex!7670 rBis!167)) (regOne!25662 (regex!7670 rBis!167)))))))

(declare-fun b!4190778 () Bool)

(assert (=> b!4190778 (= e!2601527 call!292162)))

(declare-fun b!4190779 () Bool)

(declare-fun e!2601528 () Bool)

(assert (=> b!4190779 (= e!2601528 e!2601529)))

(declare-fun res!1719810 () Bool)

(assert (=> b!4190779 (=> (not res!1719810) (not e!2601529))))

(assert (=> b!4190779 (= res!1719810 call!292161)))

(declare-fun d!1236180 () Bool)

(declare-fun res!1719809 () Bool)

(assert (=> d!1236180 (=> res!1719809 e!2601523)))

(assert (=> d!1236180 (= res!1719809 ((_ is ElementMatch!12575) (regex!7670 rBis!167)))))

(assert (=> d!1236180 (= (validRegex!5692 (regex!7670 rBis!167)) e!2601523)))

(declare-fun b!4190780 () Bool)

(declare-fun res!1719812 () Bool)

(assert (=> b!4190780 (=> res!1719812 e!2601528)))

(assert (=> b!4190780 (= res!1719812 (not ((_ is Concat!20476) (regex!7670 rBis!167))))))

(assert (=> b!4190780 (= e!2601526 e!2601528)))

(declare-fun b!4190781 () Bool)

(assert (=> b!4190781 (= e!2601524 call!292163)))

(assert (= (and d!1236180 (not res!1719809)) b!4190774))

(assert (= (and b!4190774 c!715095) b!4190773))

(assert (= (and b!4190774 (not c!715095)) b!4190776))

(assert (= (and b!4190773 res!1719808) b!4190781))

(assert (= (and b!4190776 c!715096) b!4190775))

(assert (= (and b!4190776 (not c!715096)) b!4190780))

(assert (= (and b!4190775 res!1719811) b!4190778))

(assert (= (and b!4190780 (not res!1719812)) b!4190779))

(assert (= (and b!4190779 res!1719810) b!4190777))

(assert (= (or b!4190778 b!4190777) bm!292157))

(assert (= (or b!4190775 b!4190779) bm!292158))

(assert (= (or b!4190781 bm!292157) bm!292156))

(declare-fun m!4779581 () Bool)

(assert (=> b!4190773 m!4779581))

(declare-fun m!4779583 () Bool)

(assert (=> bm!292156 m!4779583))

(declare-fun m!4779585 () Bool)

(assert (=> bm!292158 m!4779585))

(assert (=> b!4190426 d!1236180))

(declare-fun b!4190837 () Bool)

(declare-fun e!2601561 () Bool)

(assert (=> b!4190837 (= e!2601561 (nullable!4417 (regex!7670 r!4142)))))

(declare-fun b!4190838 () Bool)

(declare-fun e!2601562 () Bool)

(declare-fun e!2601556 () Bool)

(assert (=> b!4190838 (= e!2601562 e!2601556)))

(declare-fun c!715106 () Bool)

(assert (=> b!4190838 (= c!715106 ((_ is EmptyLang!12575) (regex!7670 r!4142)))))

(declare-fun b!4190839 () Bool)

(declare-fun e!2601560 () Bool)

(assert (=> b!4190839 (= e!2601560 (not (= (head!8894 p!2959) (c!715044 (regex!7670 r!4142)))))))

(declare-fun b!4190840 () Bool)

(declare-fun lt!1492617 () Bool)

(declare-fun call!292166 () Bool)

(assert (=> b!4190840 (= e!2601562 (= lt!1492617 call!292166))))

(declare-fun b!4190841 () Bool)

(declare-fun derivativeStep!3807 (Regex!12575 C!25340) Regex!12575)

(assert (=> b!4190841 (= e!2601561 (matchR!6314 (derivativeStep!3807 (regex!7670 r!4142) (head!8894 p!2959)) (tail!6741 p!2959)))))

(declare-fun b!4190842 () Bool)

(declare-fun res!1719851 () Bool)

(assert (=> b!4190842 (=> res!1719851 e!2601560)))

(assert (=> b!4190842 (= res!1719851 (not (isEmpty!27247 (tail!6741 p!2959))))))

(declare-fun b!4190843 () Bool)

(declare-fun e!2601559 () Bool)

(declare-fun e!2601557 () Bool)

(assert (=> b!4190843 (= e!2601559 e!2601557)))

(declare-fun res!1719850 () Bool)

(assert (=> b!4190843 (=> (not res!1719850) (not e!2601557))))

(assert (=> b!4190843 (= res!1719850 (not lt!1492617))))

(declare-fun b!4190845 () Bool)

(declare-fun res!1719857 () Bool)

(declare-fun e!2601558 () Bool)

(assert (=> b!4190845 (=> (not res!1719857) (not e!2601558))))

(assert (=> b!4190845 (= res!1719857 (isEmpty!27247 (tail!6741 p!2959)))))

(declare-fun b!4190846 () Bool)

(assert (=> b!4190846 (= e!2601558 (= (head!8894 p!2959) (c!715044 (regex!7670 r!4142))))))

(declare-fun b!4190847 () Bool)

(assert (=> b!4190847 (= e!2601556 (not lt!1492617))))

(declare-fun b!4190848 () Bool)

(declare-fun res!1719855 () Bool)

(assert (=> b!4190848 (=> (not res!1719855) (not e!2601558))))

(assert (=> b!4190848 (= res!1719855 (not call!292166))))

(declare-fun b!4190849 () Bool)

(assert (=> b!4190849 (= e!2601557 e!2601560)))

(declare-fun res!1719856 () Bool)

(assert (=> b!4190849 (=> res!1719856 e!2601560)))

(assert (=> b!4190849 (= res!1719856 call!292166)))

(declare-fun b!4190850 () Bool)

(declare-fun res!1719854 () Bool)

(assert (=> b!4190850 (=> res!1719854 e!2601559)))

(assert (=> b!4190850 (= res!1719854 (not ((_ is ElementMatch!12575) (regex!7670 r!4142))))))

(assert (=> b!4190850 (= e!2601556 e!2601559)))

(declare-fun bm!292161 () Bool)

(assert (=> bm!292161 (= call!292166 (isEmpty!27247 p!2959))))

(declare-fun d!1236182 () Bool)

(assert (=> d!1236182 e!2601562))

(declare-fun c!715108 () Bool)

(assert (=> d!1236182 (= c!715108 ((_ is EmptyExpr!12575) (regex!7670 r!4142)))))

(assert (=> d!1236182 (= lt!1492617 e!2601561)))

(declare-fun c!715107 () Bool)

(assert (=> d!1236182 (= c!715107 (isEmpty!27247 p!2959))))

(assert (=> d!1236182 (validRegex!5692 (regex!7670 r!4142))))

(assert (=> d!1236182 (= (matchR!6314 (regex!7670 r!4142) p!2959) lt!1492617)))

(declare-fun b!4190844 () Bool)

(declare-fun res!1719852 () Bool)

(assert (=> b!4190844 (=> res!1719852 e!2601559)))

(assert (=> b!4190844 (= res!1719852 e!2601558)))

(declare-fun res!1719853 () Bool)

(assert (=> b!4190844 (=> (not res!1719853) (not e!2601558))))

(assert (=> b!4190844 (= res!1719853 lt!1492617)))

(assert (= (and d!1236182 c!715107) b!4190837))

(assert (= (and d!1236182 (not c!715107)) b!4190841))

(assert (= (and d!1236182 c!715108) b!4190840))

(assert (= (and d!1236182 (not c!715108)) b!4190838))

(assert (= (and b!4190838 c!715106) b!4190847))

(assert (= (and b!4190838 (not c!715106)) b!4190850))

(assert (= (and b!4190850 (not res!1719854)) b!4190844))

(assert (= (and b!4190844 res!1719853) b!4190848))

(assert (= (and b!4190848 res!1719855) b!4190845))

(assert (= (and b!4190845 res!1719857) b!4190846))

(assert (= (and b!4190844 (not res!1719852)) b!4190843))

(assert (= (and b!4190843 res!1719850) b!4190849))

(assert (= (and b!4190849 (not res!1719856)) b!4190842))

(assert (= (and b!4190842 (not res!1719851)) b!4190839))

(assert (= (or b!4190840 b!4190848 b!4190849) bm!292161))

(assert (=> b!4190846 m!4779571))

(assert (=> b!4190841 m!4779571))

(assert (=> b!4190841 m!4779571))

(declare-fun m!4779633 () Bool)

(assert (=> b!4190841 m!4779633))

(assert (=> b!4190841 m!4779567))

(assert (=> b!4190841 m!4779633))

(assert (=> b!4190841 m!4779567))

(declare-fun m!4779635 () Bool)

(assert (=> b!4190841 m!4779635))

(assert (=> b!4190845 m!4779567))

(assert (=> b!4190845 m!4779567))

(declare-fun m!4779637 () Bool)

(assert (=> b!4190845 m!4779637))

(assert (=> b!4190842 m!4779567))

(assert (=> b!4190842 m!4779567))

(assert (=> b!4190842 m!4779637))

(declare-fun m!4779639 () Bool)

(assert (=> b!4190837 m!4779639))

(assert (=> b!4190839 m!4779571))

(declare-fun m!4779641 () Bool)

(assert (=> d!1236182 m!4779641))

(assert (=> d!1236182 m!4779269))

(assert (=> bm!292161 m!4779641))

(assert (=> b!4190437 d!1236182))

(declare-fun d!1236190 () Bool)

(declare-fun list!16630 (Conc!13881) List!46144)

(assert (=> d!1236190 (= (list!16628 lt!1492494) (list!16630 (c!715045 lt!1492494)))))

(declare-fun bs!596620 () Bool)

(assert (= bs!596620 d!1236190))

(declare-fun m!4779643 () Bool)

(assert (=> bs!596620 m!4779643))

(assert (=> b!4190448 d!1236190))

(declare-fun d!1236192 () Bool)

(assert (=> d!1236192 (= (get!14964 lt!1492503) (v!40693 lt!1492503))))

(assert (=> b!4190448 d!1236192))

(declare-fun d!1236194 () Bool)

(assert (=> d!1236194 (isPrefix!4527 lt!1492493 (++!11742 lt!1492493 (_2!25043 lt!1492497)))))

(declare-fun lt!1492630 () Unit!65101)

(declare-fun choose!25670 (List!46144 List!46144) Unit!65101)

(assert (=> d!1236194 (= lt!1492630 (choose!25670 lt!1492493 (_2!25043 lt!1492497)))))

(assert (=> d!1236194 (= (lemmaConcatTwoListThenFirstIsPrefix!3024 lt!1492493 (_2!25043 lt!1492497)) lt!1492630)))

(declare-fun bs!596622 () Bool)

(assert (= bs!596622 d!1236194))

(assert (=> bs!596622 m!4779259))

(assert (=> bs!596622 m!4779259))

(declare-fun m!4779647 () Bool)

(assert (=> bs!596622 m!4779647))

(declare-fun m!4779649 () Bool)

(assert (=> bs!596622 m!4779649))

(assert (=> b!4190448 d!1236194))

(declare-fun d!1236200 () Bool)

(declare-fun lt!1492633 () BalanceConc!27356)

(assert (=> d!1236200 (= (list!16628 lt!1492633) (originalCharacters!8058 (_1!25043 lt!1492497)))))

(assert (=> d!1236200 (= lt!1492633 (dynLambda!19803 (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497)))) (value!239127 (_1!25043 lt!1492497))))))

(assert (=> d!1236200 (= (charsOf!5105 (_1!25043 lt!1492497)) lt!1492633)))

(declare-fun b_lambda!123253 () Bool)

(assert (=> (not b_lambda!123253) (not d!1236200)))

(declare-fun tb!251033 () Bool)

(declare-fun t!345964 () Bool)

(assert (=> (and b!4190442 (= (toChars!10225 (transformation!7670 r!4142)) (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497))))) t!345964) tb!251033))

(declare-fun b!4190864 () Bool)

(declare-fun e!2601569 () Bool)

(declare-fun tp!1280466 () Bool)

(assert (=> b!4190864 (= e!2601569 (and (inv!60570 (c!715045 (dynLambda!19803 (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497)))) (value!239127 (_1!25043 lt!1492497))))) tp!1280466))))

(declare-fun result!305946 () Bool)

(assert (=> tb!251033 (= result!305946 (and (inv!60571 (dynLambda!19803 (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497)))) (value!239127 (_1!25043 lt!1492497)))) e!2601569))))

(assert (= tb!251033 b!4190864))

(declare-fun m!4779691 () Bool)

(assert (=> b!4190864 m!4779691))

(declare-fun m!4779693 () Bool)

(assert (=> tb!251033 m!4779693))

(assert (=> d!1236200 t!345964))

(declare-fun b_and!328375 () Bool)

(assert (= b_and!328357 (and (=> t!345964 result!305946) b_and!328375)))

(declare-fun t!345966 () Bool)

(declare-fun tb!251035 () Bool)

(assert (=> (and b!4190447 (= (toChars!10225 (transformation!7670 rBis!167)) (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497))))) t!345966) tb!251035))

(declare-fun result!305948 () Bool)

(assert (= result!305948 result!305946))

(assert (=> d!1236200 t!345966))

(declare-fun b_and!328377 () Bool)

(assert (= b_and!328359 (and (=> t!345966 result!305948) b_and!328377)))

(declare-fun t!345968 () Bool)

(declare-fun tb!251037 () Bool)

(assert (=> (and b!4190418 (= (toChars!10225 (transformation!7670 (h!51441 rules!3843))) (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497))))) t!345968) tb!251037))

(declare-fun result!305950 () Bool)

(assert (= result!305950 result!305946))

(assert (=> d!1236200 t!345968))

(declare-fun b_and!328379 () Bool)

(assert (= b_and!328361 (and (=> t!345968 result!305950) b_and!328379)))

(declare-fun m!4779695 () Bool)

(assert (=> d!1236200 m!4779695))

(declare-fun m!4779697 () Bool)

(assert (=> d!1236200 m!4779697))

(assert (=> b!4190448 d!1236200))

(declare-fun e!2601587 () Bool)

(declare-fun b!4190910 () Bool)

(declare-fun lt!1492640 () List!46144)

(assert (=> b!4190910 (= e!2601587 (or (not (= (_2!25043 lt!1492497) Nil!46020)) (= lt!1492640 lt!1492493)))))

(declare-fun b!4190909 () Bool)

(declare-fun res!1719870 () Bool)

(assert (=> b!4190909 (=> (not res!1719870) (not e!2601587))))

(assert (=> b!4190909 (= res!1719870 (= (size!33808 lt!1492640) (+ (size!33808 lt!1492493) (size!33808 (_2!25043 lt!1492497)))))))

(declare-fun b!4190907 () Bool)

(declare-fun e!2601586 () List!46144)

(assert (=> b!4190907 (= e!2601586 (_2!25043 lt!1492497))))

(declare-fun b!4190908 () Bool)

(assert (=> b!4190908 (= e!2601586 (Cons!46020 (h!51440 lt!1492493) (++!11742 (t!345931 lt!1492493) (_2!25043 lt!1492497))))))

(declare-fun d!1236204 () Bool)

(assert (=> d!1236204 e!2601587))

(declare-fun res!1719869 () Bool)

(assert (=> d!1236204 (=> (not res!1719869) (not e!2601587))))

(declare-fun content!7170 (List!46144) (InoxSet C!25340))

(assert (=> d!1236204 (= res!1719869 (= (content!7170 lt!1492640) ((_ map or) (content!7170 lt!1492493) (content!7170 (_2!25043 lt!1492497)))))))

(assert (=> d!1236204 (= lt!1492640 e!2601586)))

(declare-fun c!715115 () Bool)

(assert (=> d!1236204 (= c!715115 ((_ is Nil!46020) lt!1492493))))

(assert (=> d!1236204 (= (++!11742 lt!1492493 (_2!25043 lt!1492497)) lt!1492640)))

(assert (= (and d!1236204 c!715115) b!4190907))

(assert (= (and d!1236204 (not c!715115)) b!4190908))

(assert (= (and d!1236204 res!1719869) b!4190909))

(assert (= (and b!4190909 res!1719870) b!4190910))

(declare-fun m!4779703 () Bool)

(assert (=> b!4190909 m!4779703))

(assert (=> b!4190909 m!4779237))

(declare-fun m!4779705 () Bool)

(assert (=> b!4190909 m!4779705))

(declare-fun m!4779707 () Bool)

(assert (=> b!4190908 m!4779707))

(declare-fun m!4779709 () Bool)

(assert (=> d!1236204 m!4779709))

(declare-fun m!4779711 () Bool)

(assert (=> d!1236204 m!4779711))

(declare-fun m!4779713 () Bool)

(assert (=> d!1236204 m!4779713))

(assert (=> b!4190448 d!1236204))

(declare-fun b!4190913 () Bool)

(declare-fun e!2601593 () Bool)

(declare-fun e!2601592 () Bool)

(assert (=> b!4190913 (= e!2601593 e!2601592)))

(declare-fun res!1719874 () Bool)

(assert (=> b!4190913 (=> (not res!1719874) (not e!2601592))))

(assert (=> b!4190913 (= res!1719874 (not ((_ is Nil!46020) lt!1492498)))))

(declare-fun b!4190915 () Bool)

(assert (=> b!4190915 (= e!2601592 (isPrefix!4527 (tail!6741 lt!1492493) (tail!6741 lt!1492498)))))

(declare-fun d!1236208 () Bool)

(declare-fun e!2601594 () Bool)

(assert (=> d!1236208 e!2601594))

(declare-fun res!1719871 () Bool)

(assert (=> d!1236208 (=> res!1719871 e!2601594)))

(declare-fun lt!1492641 () Bool)

(assert (=> d!1236208 (= res!1719871 (not lt!1492641))))

(assert (=> d!1236208 (= lt!1492641 e!2601593)))

(declare-fun res!1719872 () Bool)

(assert (=> d!1236208 (=> res!1719872 e!2601593)))

(assert (=> d!1236208 (= res!1719872 ((_ is Nil!46020) lt!1492493))))

(assert (=> d!1236208 (= (isPrefix!4527 lt!1492493 lt!1492498) lt!1492641)))

(declare-fun b!4190916 () Bool)

(assert (=> b!4190916 (= e!2601594 (>= (size!33808 lt!1492498) (size!33808 lt!1492493)))))

(declare-fun b!4190914 () Bool)

(declare-fun res!1719873 () Bool)

(assert (=> b!4190914 (=> (not res!1719873) (not e!2601592))))

(assert (=> b!4190914 (= res!1719873 (= (head!8894 lt!1492493) (head!8894 lt!1492498)))))

(assert (= (and d!1236208 (not res!1719872)) b!4190913))

(assert (= (and b!4190913 res!1719874) b!4190914))

(assert (= (and b!4190914 res!1719873) b!4190915))

(assert (= (and d!1236208 (not res!1719871)) b!4190916))

(declare-fun m!4779715 () Bool)

(assert (=> b!4190915 m!4779715))

(declare-fun m!4779717 () Bool)

(assert (=> b!4190915 m!4779717))

(assert (=> b!4190915 m!4779715))

(assert (=> b!4190915 m!4779717))

(declare-fun m!4779719 () Bool)

(assert (=> b!4190915 m!4779719))

(declare-fun m!4779721 () Bool)

(assert (=> b!4190916 m!4779721))

(assert (=> b!4190916 m!4779237))

(declare-fun m!4779723 () Bool)

(assert (=> b!4190914 m!4779723))

(declare-fun m!4779725 () Bool)

(assert (=> b!4190914 m!4779725))

(assert (=> b!4190448 d!1236208))

(declare-fun d!1236210 () Bool)

(assert (=> d!1236210 (= (inv!60567 (tag!8534 (h!51441 rules!3843))) (= (mod (str.len (value!239126 (tag!8534 (h!51441 rules!3843)))) 2) 0))))

(assert (=> b!4190435 d!1236210))

(declare-fun d!1236212 () Bool)

(declare-fun res!1719875 () Bool)

(declare-fun e!2601597 () Bool)

(assert (=> d!1236212 (=> (not res!1719875) (not e!2601597))))

(assert (=> d!1236212 (= res!1719875 (semiInverseModEq!3326 (toChars!10225 (transformation!7670 (h!51441 rules!3843))) (toValue!10366 (transformation!7670 (h!51441 rules!3843)))))))

(assert (=> d!1236212 (= (inv!60569 (transformation!7670 (h!51441 rules!3843))) e!2601597)))

(declare-fun b!4190919 () Bool)

(assert (=> b!4190919 (= e!2601597 (equivClasses!3225 (toChars!10225 (transformation!7670 (h!51441 rules!3843))) (toValue!10366 (transformation!7670 (h!51441 rules!3843)))))))

(assert (= (and d!1236212 res!1719875) b!4190919))

(declare-fun m!4779727 () Bool)

(assert (=> d!1236212 m!4779727))

(declare-fun m!4779729 () Bool)

(assert (=> b!4190919 m!4779729))

(assert (=> b!4190435 d!1236212))

(declare-fun d!1236214 () Bool)

(declare-fun e!2601611 () Bool)

(assert (=> d!1236214 e!2601611))

(declare-fun res!1719896 () Bool)

(assert (=> d!1236214 (=> res!1719896 e!2601611)))

(declare-fun lt!1492652 () Option!9864)

(assert (=> d!1236214 (= res!1719896 (isEmpty!27245 lt!1492652))))

(declare-fun e!2601610 () Option!9864)

(assert (=> d!1236214 (= lt!1492652 e!2601610)))

(declare-fun c!715118 () Bool)

(assert (=> d!1236214 (= c!715118 (and ((_ is Cons!46021) rules!3843) ((_ is Nil!46021) (t!345932 rules!3843))))))

(declare-fun lt!1492655 () Unit!65101)

(declare-fun lt!1492654 () Unit!65101)

(assert (=> d!1236214 (= lt!1492655 lt!1492654)))

(assert (=> d!1236214 (isPrefix!4527 input!3342 input!3342)))

(assert (=> d!1236214 (= lt!1492654 (lemmaIsPrefixRefl!2956 input!3342 input!3342))))

(declare-fun rulesValidInductive!2832 (LexerInterface!7263 List!46145) Bool)

(assert (=> d!1236214 (rulesValidInductive!2832 thiss!25986 rules!3843)))

(assert (=> d!1236214 (= (maxPrefix!4311 thiss!25986 rules!3843 input!3342) lt!1492652)))

(declare-fun b!4190942 () Bool)

(declare-fun res!1719893 () Bool)

(declare-fun e!2601609 () Bool)

(assert (=> b!4190942 (=> (not res!1719893) (not e!2601609))))

(assert (=> b!4190942 (= res!1719893 (= (++!11742 (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492652)))) (_2!25043 (get!14964 lt!1492652))) input!3342))))

(declare-fun b!4190943 () Bool)

(assert (=> b!4190943 (= e!2601611 e!2601609)))

(declare-fun res!1719891 () Bool)

(assert (=> b!4190943 (=> (not res!1719891) (not e!2601609))))

(declare-fun isDefined!7348 (Option!9864) Bool)

(assert (=> b!4190943 (= res!1719891 (isDefined!7348 lt!1492652))))

(declare-fun b!4190944 () Bool)

(declare-fun res!1719892 () Bool)

(assert (=> b!4190944 (=> (not res!1719892) (not e!2601609))))

(assert (=> b!4190944 (= res!1719892 (= (value!239127 (_1!25043 (get!14964 lt!1492652))) (apply!10635 (transformation!7670 (rule!10752 (_1!25043 (get!14964 lt!1492652)))) (seqFromList!5695 (originalCharacters!8058 (_1!25043 (get!14964 lt!1492652)))))))))

(declare-fun bm!292164 () Bool)

(declare-fun call!292169 () Option!9864)

(assert (=> bm!292164 (= call!292169 (maxPrefixOneRule!3272 thiss!25986 (h!51441 rules!3843) input!3342))))

(declare-fun b!4190945 () Bool)

(assert (=> b!4190945 (= e!2601610 call!292169)))

(declare-fun b!4190946 () Bool)

(assert (=> b!4190946 (= e!2601609 (contains!9479 rules!3843 (rule!10752 (_1!25043 (get!14964 lt!1492652)))))))

(declare-fun b!4190947 () Bool)

(declare-fun res!1719894 () Bool)

(assert (=> b!4190947 (=> (not res!1719894) (not e!2601609))))

(assert (=> b!4190947 (= res!1719894 (= (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492652)))) (originalCharacters!8058 (_1!25043 (get!14964 lt!1492652)))))))

(declare-fun b!4190948 () Bool)

(declare-fun res!1719895 () Bool)

(assert (=> b!4190948 (=> (not res!1719895) (not e!2601609))))

(assert (=> b!4190948 (= res!1719895 (matchR!6314 (regex!7670 (rule!10752 (_1!25043 (get!14964 lt!1492652)))) (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492652))))))))

(declare-fun b!4190949 () Bool)

(declare-fun lt!1492656 () Option!9864)

(declare-fun lt!1492653 () Option!9864)

(assert (=> b!4190949 (= e!2601610 (ite (and ((_ is None!9863) lt!1492656) ((_ is None!9863) lt!1492653)) None!9863 (ite ((_ is None!9863) lt!1492653) lt!1492656 (ite ((_ is None!9863) lt!1492656) lt!1492653 (ite (>= (size!33807 (_1!25043 (v!40693 lt!1492656))) (size!33807 (_1!25043 (v!40693 lt!1492653)))) lt!1492656 lt!1492653)))))))

(assert (=> b!4190949 (= lt!1492656 call!292169)))

(assert (=> b!4190949 (= lt!1492653 (maxPrefix!4311 thiss!25986 (t!345932 rules!3843) input!3342))))

(declare-fun b!4190950 () Bool)

(declare-fun res!1719890 () Bool)

(assert (=> b!4190950 (=> (not res!1719890) (not e!2601609))))

(assert (=> b!4190950 (= res!1719890 (< (size!33808 (_2!25043 (get!14964 lt!1492652))) (size!33808 input!3342)))))

(assert (= (and d!1236214 c!715118) b!4190945))

(assert (= (and d!1236214 (not c!715118)) b!4190949))

(assert (= (or b!4190945 b!4190949) bm!292164))

(assert (= (and d!1236214 (not res!1719896)) b!4190943))

(assert (= (and b!4190943 res!1719891) b!4190947))

(assert (= (and b!4190947 res!1719894) b!4190950))

(assert (= (and b!4190950 res!1719890) b!4190942))

(assert (= (and b!4190942 res!1719893) b!4190944))

(assert (= (and b!4190944 res!1719892) b!4190948))

(assert (= (and b!4190948 res!1719895) b!4190946))

(declare-fun m!4779735 () Bool)

(assert (=> d!1236214 m!4779735))

(assert (=> d!1236214 m!4779277))

(assert (=> d!1236214 m!4779287))

(declare-fun m!4779737 () Bool)

(assert (=> d!1236214 m!4779737))

(declare-fun m!4779739 () Bool)

(assert (=> b!4190950 m!4779739))

(declare-fun m!4779741 () Bool)

(assert (=> b!4190950 m!4779741))

(assert (=> b!4190950 m!4779227))

(assert (=> b!4190946 m!4779739))

(declare-fun m!4779743 () Bool)

(assert (=> b!4190946 m!4779743))

(assert (=> b!4190944 m!4779739))

(declare-fun m!4779745 () Bool)

(assert (=> b!4190944 m!4779745))

(assert (=> b!4190944 m!4779745))

(declare-fun m!4779747 () Bool)

(assert (=> b!4190944 m!4779747))

(declare-fun m!4779749 () Bool)

(assert (=> b!4190949 m!4779749))

(declare-fun m!4779751 () Bool)

(assert (=> bm!292164 m!4779751))

(assert (=> b!4190947 m!4779739))

(declare-fun m!4779753 () Bool)

(assert (=> b!4190947 m!4779753))

(assert (=> b!4190947 m!4779753))

(declare-fun m!4779755 () Bool)

(assert (=> b!4190947 m!4779755))

(assert (=> b!4190948 m!4779739))

(assert (=> b!4190948 m!4779753))

(assert (=> b!4190948 m!4779753))

(assert (=> b!4190948 m!4779755))

(assert (=> b!4190948 m!4779755))

(declare-fun m!4779757 () Bool)

(assert (=> b!4190948 m!4779757))

(assert (=> b!4190942 m!4779739))

(assert (=> b!4190942 m!4779753))

(assert (=> b!4190942 m!4779753))

(assert (=> b!4190942 m!4779755))

(assert (=> b!4190942 m!4779755))

(declare-fun m!4779759 () Bool)

(assert (=> b!4190942 m!4779759))

(declare-fun m!4779761 () Bool)

(assert (=> b!4190943 m!4779761))

(assert (=> b!4190446 d!1236214))

(declare-fun d!1236216 () Bool)

(declare-fun lt!1492657 () Int)

(assert (=> d!1236216 (>= lt!1492657 0)))

(declare-fun e!2601612 () Int)

(assert (=> d!1236216 (= lt!1492657 e!2601612)))

(declare-fun c!715119 () Bool)

(assert (=> d!1236216 (= c!715119 ((_ is Nil!46020) pBis!107))))

(assert (=> d!1236216 (= (size!33808 pBis!107) lt!1492657)))

(declare-fun b!4190951 () Bool)

(assert (=> b!4190951 (= e!2601612 0)))

(declare-fun b!4190952 () Bool)

(assert (=> b!4190952 (= e!2601612 (+ 1 (size!33808 (t!345931 pBis!107))))))

(assert (= (and d!1236216 c!715119) b!4190951))

(assert (= (and d!1236216 (not c!715119)) b!4190952))

(declare-fun m!4779763 () Bool)

(assert (=> b!4190952 m!4779763))

(assert (=> b!4190425 d!1236216))

(declare-fun b!4190953 () Bool)

(declare-fun e!2601614 () Bool)

(declare-fun e!2601613 () Bool)

(assert (=> b!4190953 (= e!2601614 e!2601613)))

(declare-fun res!1719900 () Bool)

(assert (=> b!4190953 (=> (not res!1719900) (not e!2601613))))

(assert (=> b!4190953 (= res!1719900 (not ((_ is Nil!46020) input!3342)))))

(declare-fun b!4190955 () Bool)

(assert (=> b!4190955 (= e!2601613 (isPrefix!4527 (tail!6741 lt!1492493) (tail!6741 input!3342)))))

(declare-fun d!1236218 () Bool)

(declare-fun e!2601615 () Bool)

(assert (=> d!1236218 e!2601615))

(declare-fun res!1719897 () Bool)

(assert (=> d!1236218 (=> res!1719897 e!2601615)))

(declare-fun lt!1492658 () Bool)

(assert (=> d!1236218 (= res!1719897 (not lt!1492658))))

(assert (=> d!1236218 (= lt!1492658 e!2601614)))

(declare-fun res!1719898 () Bool)

(assert (=> d!1236218 (=> res!1719898 e!2601614)))

(assert (=> d!1236218 (= res!1719898 ((_ is Nil!46020) lt!1492493))))

(assert (=> d!1236218 (= (isPrefix!4527 lt!1492493 input!3342) lt!1492658)))

(declare-fun b!4190956 () Bool)

(assert (=> b!4190956 (= e!2601615 (>= (size!33808 input!3342) (size!33808 lt!1492493)))))

(declare-fun b!4190954 () Bool)

(declare-fun res!1719899 () Bool)

(assert (=> b!4190954 (=> (not res!1719899) (not e!2601613))))

(assert (=> b!4190954 (= res!1719899 (= (head!8894 lt!1492493) (head!8894 input!3342)))))

(assert (= (and d!1236218 (not res!1719898)) b!4190953))

(assert (= (and b!4190953 res!1719900) b!4190954))

(assert (= (and b!4190954 res!1719899) b!4190955))

(assert (= (and d!1236218 (not res!1719897)) b!4190956))

(assert (=> b!4190955 m!4779715))

(assert (=> b!4190955 m!4779293))

(assert (=> b!4190955 m!4779715))

(assert (=> b!4190955 m!4779293))

(declare-fun m!4779765 () Bool)

(assert (=> b!4190955 m!4779765))

(assert (=> b!4190956 m!4779227))

(assert (=> b!4190956 m!4779237))

(assert (=> b!4190954 m!4779723))

(assert (=> b!4190954 m!4779299))

(assert (=> b!4190436 d!1236218))

(declare-fun d!1236220 () Bool)

(declare-fun lt!1492659 () Int)

(assert (=> d!1236220 (>= lt!1492659 0)))

(declare-fun e!2601616 () Int)

(assert (=> d!1236220 (= lt!1492659 e!2601616)))

(declare-fun c!715120 () Bool)

(assert (=> d!1236220 (= c!715120 ((_ is Nil!46020) lt!1492493))))

(assert (=> d!1236220 (= (size!33808 lt!1492493) lt!1492659)))

(declare-fun b!4190957 () Bool)

(assert (=> b!4190957 (= e!2601616 0)))

(declare-fun b!4190958 () Bool)

(assert (=> b!4190958 (= e!2601616 (+ 1 (size!33808 (t!345931 lt!1492493))))))

(assert (= (and d!1236220 c!715120) b!4190957))

(assert (= (and d!1236220 (not c!715120)) b!4190958))

(declare-fun m!4779767 () Bool)

(assert (=> b!4190958 m!4779767))

(assert (=> b!4190423 d!1236220))

(declare-fun d!1236222 () Bool)

(declare-fun res!1719901 () Bool)

(declare-fun e!2601617 () Bool)

(assert (=> d!1236222 (=> (not res!1719901) (not e!2601617))))

(assert (=> d!1236222 (= res!1719901 (validRegex!5692 (regex!7670 r!4142)))))

(assert (=> d!1236222 (= (ruleValid!3388 thiss!25986 r!4142) e!2601617)))

(declare-fun b!4190959 () Bool)

(declare-fun res!1719902 () Bool)

(assert (=> b!4190959 (=> (not res!1719902) (not e!2601617))))

(assert (=> b!4190959 (= res!1719902 (not (nullable!4417 (regex!7670 r!4142))))))

(declare-fun b!4190960 () Bool)

(assert (=> b!4190960 (= e!2601617 (not (= (tag!8534 r!4142) (String!53367 ""))))))

(assert (= (and d!1236222 res!1719901) b!4190959))

(assert (= (and b!4190959 res!1719902) b!4190960))

(assert (=> d!1236222 m!4779269))

(assert (=> b!4190959 m!4779639))

(assert (=> b!4190434 d!1236222))

(declare-fun d!1236224 () Bool)

(assert (=> d!1236224 (= (isEmpty!27245 lt!1492503) (not ((_ is Some!9863) lt!1492503)))))

(assert (=> b!4190445 d!1236224))

(declare-fun d!1236226 () Bool)

(assert (=> d!1236226 (ruleValid!3388 thiss!25986 rBis!167)))

(declare-fun lt!1492662 () Unit!65101)

(declare-fun choose!25673 (LexerInterface!7263 Rule!15140 List!46145) Unit!65101)

(assert (=> d!1236226 (= lt!1492662 (choose!25673 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1236226 (contains!9479 rules!3843 rBis!167)))

(assert (=> d!1236226 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2394 thiss!25986 rBis!167 rules!3843) lt!1492662)))

(declare-fun bs!596624 () Bool)

(assert (= bs!596624 d!1236226))

(assert (=> bs!596624 m!4779219))

(declare-fun m!4779769 () Bool)

(assert (=> bs!596624 m!4779769))

(assert (=> bs!596624 m!4779217))

(assert (=> b!4190445 d!1236226))

(declare-fun b!4190961 () Bool)

(declare-fun e!2601618 () Bool)

(assert (=> b!4190961 (= e!2601618 (matchR!6314 (regex!7670 rBis!167) (_1!25044 (findLongestMatchInner!1606 (regex!7670 rBis!167) Nil!46020 (size!33808 Nil!46020) input!3342 input!3342 (size!33808 input!3342)))))))

(declare-fun b!4190962 () Bool)

(declare-fun e!2601620 () Option!9864)

(assert (=> b!4190962 (= e!2601620 None!9863)))

(declare-fun b!4190964 () Bool)

(declare-fun res!1719903 () Bool)

(declare-fun e!2601621 () Bool)

(assert (=> b!4190964 (=> (not res!1719903) (not e!2601621))))

(declare-fun lt!1492663 () Option!9864)

(assert (=> b!4190964 (= res!1719903 (= (++!11742 (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492663)))) (_2!25043 (get!14964 lt!1492663))) input!3342))))

(declare-fun b!4190965 () Bool)

(assert (=> b!4190965 (= e!2601621 (= (size!33807 (_1!25043 (get!14964 lt!1492663))) (size!33808 (originalCharacters!8058 (_1!25043 (get!14964 lt!1492663))))))))

(declare-fun b!4190966 () Bool)

(declare-fun res!1719908 () Bool)

(assert (=> b!4190966 (=> (not res!1719908) (not e!2601621))))

(assert (=> b!4190966 (= res!1719908 (= (rule!10752 (_1!25043 (get!14964 lt!1492663))) rBis!167))))

(declare-fun b!4190967 () Bool)

(declare-fun lt!1492664 () tuple2!43820)

(assert (=> b!4190967 (= e!2601620 (Some!9863 (tuple2!43819 (Token!14055 (apply!10635 (transformation!7670 rBis!167) (seqFromList!5695 (_1!25044 lt!1492664))) rBis!167 (size!33809 (seqFromList!5695 (_1!25044 lt!1492664))) (_1!25044 lt!1492664)) (_2!25044 lt!1492664))))))

(declare-fun lt!1492667 () Unit!65101)

(assert (=> b!4190967 (= lt!1492667 (longestMatchIsAcceptedByMatchOrIsEmpty!1579 (regex!7670 rBis!167) input!3342))))

(declare-fun res!1719907 () Bool)

(assert (=> b!4190967 (= res!1719907 (isEmpty!27247 (_1!25044 (findLongestMatchInner!1606 (regex!7670 rBis!167) Nil!46020 (size!33808 Nil!46020) input!3342 input!3342 (size!33808 input!3342)))))))

(assert (=> b!4190967 (=> res!1719907 e!2601618)))

(assert (=> b!4190967 e!2601618))

(declare-fun lt!1492665 () Unit!65101)

(assert (=> b!4190967 (= lt!1492665 lt!1492667)))

(declare-fun lt!1492666 () Unit!65101)

(assert (=> b!4190967 (= lt!1492666 (lemmaSemiInverse!2436 (transformation!7670 rBis!167) (seqFromList!5695 (_1!25044 lt!1492664))))))

(declare-fun d!1236228 () Bool)

(declare-fun e!2601619 () Bool)

(assert (=> d!1236228 e!2601619))

(declare-fun res!1719909 () Bool)

(assert (=> d!1236228 (=> res!1719909 e!2601619)))

(assert (=> d!1236228 (= res!1719909 (isEmpty!27245 lt!1492663))))

(assert (=> d!1236228 (= lt!1492663 e!2601620)))

(declare-fun c!715121 () Bool)

(assert (=> d!1236228 (= c!715121 (isEmpty!27247 (_1!25044 lt!1492664)))))

(assert (=> d!1236228 (= lt!1492664 (findLongestMatch!1519 (regex!7670 rBis!167) input!3342))))

(assert (=> d!1236228 (ruleValid!3388 thiss!25986 rBis!167)))

(assert (=> d!1236228 (= (maxPrefixOneRule!3272 thiss!25986 rBis!167 input!3342) lt!1492663)))

(declare-fun b!4190963 () Bool)

(declare-fun res!1719905 () Bool)

(assert (=> b!4190963 (=> (not res!1719905) (not e!2601621))))

(assert (=> b!4190963 (= res!1719905 (= (value!239127 (_1!25043 (get!14964 lt!1492663))) (apply!10635 (transformation!7670 (rule!10752 (_1!25043 (get!14964 lt!1492663)))) (seqFromList!5695 (originalCharacters!8058 (_1!25043 (get!14964 lt!1492663)))))))))

(declare-fun b!4190968 () Bool)

(assert (=> b!4190968 (= e!2601619 e!2601621)))

(declare-fun res!1719904 () Bool)

(assert (=> b!4190968 (=> (not res!1719904) (not e!2601621))))

(assert (=> b!4190968 (= res!1719904 (matchR!6314 (regex!7670 rBis!167) (list!16628 (charsOf!5105 (_1!25043 (get!14964 lt!1492663))))))))

(declare-fun b!4190969 () Bool)

(declare-fun res!1719906 () Bool)

(assert (=> b!4190969 (=> (not res!1719906) (not e!2601621))))

(assert (=> b!4190969 (= res!1719906 (< (size!33808 (_2!25043 (get!14964 lt!1492663))) (size!33808 input!3342)))))

(assert (= (and d!1236228 c!715121) b!4190962))

(assert (= (and d!1236228 (not c!715121)) b!4190967))

(assert (= (and b!4190967 (not res!1719907)) b!4190961))

(assert (= (and d!1236228 (not res!1719909)) b!4190968))

(assert (= (and b!4190968 res!1719904) b!4190964))

(assert (= (and b!4190964 res!1719903) b!4190969))

(assert (= (and b!4190969 res!1719906) b!4190966))

(assert (= (and b!4190966 res!1719908) b!4190963))

(assert (= (and b!4190963 res!1719905) b!4190965))

(declare-fun m!4779771 () Bool)

(assert (=> b!4190969 m!4779771))

(declare-fun m!4779773 () Bool)

(assert (=> b!4190969 m!4779773))

(assert (=> b!4190969 m!4779227))

(assert (=> b!4190968 m!4779771))

(declare-fun m!4779775 () Bool)

(assert (=> b!4190968 m!4779775))

(assert (=> b!4190968 m!4779775))

(declare-fun m!4779777 () Bool)

(assert (=> b!4190968 m!4779777))

(assert (=> b!4190968 m!4779777))

(declare-fun m!4779779 () Bool)

(assert (=> b!4190968 m!4779779))

(assert (=> b!4190964 m!4779771))

(assert (=> b!4190964 m!4779775))

(assert (=> b!4190964 m!4779775))

(assert (=> b!4190964 m!4779777))

(assert (=> b!4190964 m!4779777))

(declare-fun m!4779781 () Bool)

(assert (=> b!4190964 m!4779781))

(declare-fun m!4779783 () Bool)

(assert (=> b!4190967 m!4779783))

(declare-fun m!4779785 () Bool)

(assert (=> b!4190967 m!4779785))

(assert (=> b!4190967 m!4779485))

(assert (=> b!4190967 m!4779227))

(declare-fun m!4779787 () Bool)

(assert (=> b!4190967 m!4779787))

(declare-fun m!4779789 () Bool)

(assert (=> b!4190967 m!4779789))

(assert (=> b!4190967 m!4779783))

(assert (=> b!4190967 m!4779485))

(assert (=> b!4190967 m!4779783))

(declare-fun m!4779791 () Bool)

(assert (=> b!4190967 m!4779791))

(declare-fun m!4779793 () Bool)

(assert (=> b!4190967 m!4779793))

(assert (=> b!4190967 m!4779227))

(assert (=> b!4190967 m!4779783))

(declare-fun m!4779795 () Bool)

(assert (=> b!4190967 m!4779795))

(declare-fun m!4779797 () Bool)

(assert (=> d!1236228 m!4779797))

(declare-fun m!4779799 () Bool)

(assert (=> d!1236228 m!4779799))

(declare-fun m!4779801 () Bool)

(assert (=> d!1236228 m!4779801))

(assert (=> d!1236228 m!4779219))

(assert (=> b!4190965 m!4779771))

(declare-fun m!4779803 () Bool)

(assert (=> b!4190965 m!4779803))

(assert (=> b!4190966 m!4779771))

(assert (=> b!4190963 m!4779771))

(declare-fun m!4779805 () Bool)

(assert (=> b!4190963 m!4779805))

(assert (=> b!4190963 m!4779805))

(declare-fun m!4779807 () Bool)

(assert (=> b!4190963 m!4779807))

(assert (=> b!4190961 m!4779485))

(assert (=> b!4190961 m!4779227))

(assert (=> b!4190961 m!4779485))

(assert (=> b!4190961 m!4779227))

(assert (=> b!4190961 m!4779787))

(declare-fun m!4779809 () Bool)

(assert (=> b!4190961 m!4779809))

(assert (=> b!4190445 d!1236228))

(declare-fun d!1236230 () Bool)

(assert (=> d!1236230 (<= (size!33808 pBis!107) (size!33808 input!3342))))

(declare-fun lt!1492670 () Unit!65101)

(declare-fun choose!25675 (List!46144 List!46144) Unit!65101)

(assert (=> d!1236230 (= lt!1492670 (choose!25675 pBis!107 input!3342))))

(assert (=> d!1236230 (isPrefix!4527 pBis!107 input!3342)))

(assert (=> d!1236230 (= (lemmaIsPrefixThenSmallerEqSize!557 pBis!107 input!3342) lt!1492670)))

(declare-fun bs!596625 () Bool)

(assert (= bs!596625 d!1236230))

(assert (=> bs!596625 m!4779221))

(assert (=> bs!596625 m!4779227))

(declare-fun m!4779811 () Bool)

(assert (=> bs!596625 m!4779811))

(assert (=> bs!596625 m!4779247))

(assert (=> b!4190445 d!1236230))

(declare-fun d!1236232 () Bool)

(declare-fun lt!1492671 () Int)

(assert (=> d!1236232 (>= lt!1492671 0)))

(declare-fun e!2601622 () Int)

(assert (=> d!1236232 (= lt!1492671 e!2601622)))

(declare-fun c!715122 () Bool)

(assert (=> d!1236232 (= c!715122 ((_ is Nil!46020) input!3342))))

(assert (=> d!1236232 (= (size!33808 input!3342) lt!1492671)))

(declare-fun b!4190970 () Bool)

(assert (=> b!4190970 (= e!2601622 0)))

(declare-fun b!4190971 () Bool)

(assert (=> b!4190971 (= e!2601622 (+ 1 (size!33808 (t!345931 input!3342))))))

(assert (= (and d!1236232 c!715122) b!4190970))

(assert (= (and d!1236232 (not c!715122)) b!4190971))

(declare-fun m!4779813 () Bool)

(assert (=> b!4190971 m!4779813))

(assert (=> b!4190445 d!1236232))

(declare-fun b!4190972 () Bool)

(declare-fun e!2601628 () Bool)

(assert (=> b!4190972 (= e!2601628 (nullable!4417 (regex!7670 rBis!167)))))

(declare-fun b!4190973 () Bool)

(declare-fun e!2601629 () Bool)

(declare-fun e!2601623 () Bool)

(assert (=> b!4190973 (= e!2601629 e!2601623)))

(declare-fun c!715123 () Bool)

(assert (=> b!4190973 (= c!715123 ((_ is EmptyLang!12575) (regex!7670 rBis!167)))))

(declare-fun b!4190974 () Bool)

(declare-fun e!2601627 () Bool)

(assert (=> b!4190974 (= e!2601627 (not (= (head!8894 lt!1492493) (c!715044 (regex!7670 rBis!167)))))))

(declare-fun b!4190975 () Bool)

(declare-fun lt!1492672 () Bool)

(declare-fun call!292170 () Bool)

(assert (=> b!4190975 (= e!2601629 (= lt!1492672 call!292170))))

(declare-fun b!4190976 () Bool)

(assert (=> b!4190976 (= e!2601628 (matchR!6314 (derivativeStep!3807 (regex!7670 rBis!167) (head!8894 lt!1492493)) (tail!6741 lt!1492493)))))

(declare-fun b!4190977 () Bool)

(declare-fun res!1719911 () Bool)

(assert (=> b!4190977 (=> res!1719911 e!2601627)))

(assert (=> b!4190977 (= res!1719911 (not (isEmpty!27247 (tail!6741 lt!1492493))))))

(declare-fun b!4190978 () Bool)

(declare-fun e!2601626 () Bool)

(declare-fun e!2601624 () Bool)

(assert (=> b!4190978 (= e!2601626 e!2601624)))

(declare-fun res!1719910 () Bool)

(assert (=> b!4190978 (=> (not res!1719910) (not e!2601624))))

(assert (=> b!4190978 (= res!1719910 (not lt!1492672))))

(declare-fun b!4190980 () Bool)

(declare-fun res!1719917 () Bool)

(declare-fun e!2601625 () Bool)

(assert (=> b!4190980 (=> (not res!1719917) (not e!2601625))))

(assert (=> b!4190980 (= res!1719917 (isEmpty!27247 (tail!6741 lt!1492493)))))

(declare-fun b!4190981 () Bool)

(assert (=> b!4190981 (= e!2601625 (= (head!8894 lt!1492493) (c!715044 (regex!7670 rBis!167))))))

(declare-fun b!4190982 () Bool)

(assert (=> b!4190982 (= e!2601623 (not lt!1492672))))

(declare-fun b!4190983 () Bool)

(declare-fun res!1719915 () Bool)

(assert (=> b!4190983 (=> (not res!1719915) (not e!2601625))))

(assert (=> b!4190983 (= res!1719915 (not call!292170))))

(declare-fun b!4190984 () Bool)

(assert (=> b!4190984 (= e!2601624 e!2601627)))

(declare-fun res!1719916 () Bool)

(assert (=> b!4190984 (=> res!1719916 e!2601627)))

(assert (=> b!4190984 (= res!1719916 call!292170)))

(declare-fun b!4190985 () Bool)

(declare-fun res!1719914 () Bool)

(assert (=> b!4190985 (=> res!1719914 e!2601626)))

(assert (=> b!4190985 (= res!1719914 (not ((_ is ElementMatch!12575) (regex!7670 rBis!167))))))

(assert (=> b!4190985 (= e!2601623 e!2601626)))

(declare-fun bm!292165 () Bool)

(assert (=> bm!292165 (= call!292170 (isEmpty!27247 lt!1492493))))

(declare-fun d!1236234 () Bool)

(assert (=> d!1236234 e!2601629))

(declare-fun c!715125 () Bool)

(assert (=> d!1236234 (= c!715125 ((_ is EmptyExpr!12575) (regex!7670 rBis!167)))))

(assert (=> d!1236234 (= lt!1492672 e!2601628)))

(declare-fun c!715124 () Bool)

(assert (=> d!1236234 (= c!715124 (isEmpty!27247 lt!1492493))))

(assert (=> d!1236234 (validRegex!5692 (regex!7670 rBis!167))))

(assert (=> d!1236234 (= (matchR!6314 (regex!7670 rBis!167) lt!1492493) lt!1492672)))

(declare-fun b!4190979 () Bool)

(declare-fun res!1719912 () Bool)

(assert (=> b!4190979 (=> res!1719912 e!2601626)))

(assert (=> b!4190979 (= res!1719912 e!2601625)))

(declare-fun res!1719913 () Bool)

(assert (=> b!4190979 (=> (not res!1719913) (not e!2601625))))

(assert (=> b!4190979 (= res!1719913 lt!1492672)))

(assert (= (and d!1236234 c!715124) b!4190972))

(assert (= (and d!1236234 (not c!715124)) b!4190976))

(assert (= (and d!1236234 c!715125) b!4190975))

(assert (= (and d!1236234 (not c!715125)) b!4190973))

(assert (= (and b!4190973 c!715123) b!4190982))

(assert (= (and b!4190973 (not c!715123)) b!4190985))

(assert (= (and b!4190985 (not res!1719914)) b!4190979))

(assert (= (and b!4190979 res!1719913) b!4190983))

(assert (= (and b!4190983 res!1719915) b!4190980))

(assert (= (and b!4190980 res!1719917) b!4190981))

(assert (= (and b!4190979 (not res!1719912)) b!4190978))

(assert (= (and b!4190978 res!1719910) b!4190984))

(assert (= (and b!4190984 (not res!1719916)) b!4190977))

(assert (= (and b!4190977 (not res!1719911)) b!4190974))

(assert (= (or b!4190975 b!4190983 b!4190984) bm!292165))

(assert (=> b!4190981 m!4779723))

(assert (=> b!4190976 m!4779723))

(assert (=> b!4190976 m!4779723))

(declare-fun m!4779815 () Bool)

(assert (=> b!4190976 m!4779815))

(assert (=> b!4190976 m!4779715))

(assert (=> b!4190976 m!4779815))

(assert (=> b!4190976 m!4779715))

(declare-fun m!4779817 () Bool)

(assert (=> b!4190976 m!4779817))

(assert (=> b!4190980 m!4779715))

(assert (=> b!4190980 m!4779715))

(declare-fun m!4779819 () Bool)

(assert (=> b!4190980 m!4779819))

(assert (=> b!4190977 m!4779715))

(assert (=> b!4190977 m!4779715))

(assert (=> b!4190977 m!4779819))

(assert (=> b!4190972 m!4779565))

(assert (=> b!4190974 m!4779723))

(declare-fun m!4779821 () Bool)

(assert (=> d!1236234 m!4779821))

(assert (=> d!1236234 m!4779265))

(assert (=> bm!292165 m!4779821))

(assert (=> b!4190424 d!1236234))

(declare-fun d!1236236 () Bool)

(declare-fun res!1719920 () Bool)

(declare-fun e!2601632 () Bool)

(assert (=> d!1236236 (=> (not res!1719920) (not e!2601632))))

(declare-fun rulesValid!2994 (LexerInterface!7263 List!46145) Bool)

(assert (=> d!1236236 (= res!1719920 (rulesValid!2994 thiss!25986 rules!3843))))

(assert (=> d!1236236 (= (rulesInvariant!6476 thiss!25986 rules!3843) e!2601632)))

(declare-fun b!4190988 () Bool)

(declare-datatypes ((List!46147 0))(
  ( (Nil!46023) (Cons!46023 (h!51443 String!53366) (t!345982 List!46147)) )
))
(declare-fun noDuplicateTag!3155 (LexerInterface!7263 List!46145 List!46147) Bool)

(assert (=> b!4190988 (= e!2601632 (noDuplicateTag!3155 thiss!25986 rules!3843 Nil!46023))))

(assert (= (and d!1236236 res!1719920) b!4190988))

(declare-fun m!4779823 () Bool)

(assert (=> d!1236236 m!4779823))

(declare-fun m!4779825 () Bool)

(assert (=> b!4190988 m!4779825))

(assert (=> b!4190443 d!1236236))

(declare-fun b!4191000 () Bool)

(declare-fun e!2601635 () Bool)

(declare-fun tp!1280520 () Bool)

(declare-fun tp!1280523 () Bool)

(assert (=> b!4191000 (= e!2601635 (and tp!1280520 tp!1280523))))

(declare-fun b!4191001 () Bool)

(declare-fun tp!1280522 () Bool)

(assert (=> b!4191001 (= e!2601635 tp!1280522)))

(assert (=> b!4190432 (= tp!1280447 e!2601635)))

(declare-fun b!4191002 () Bool)

(declare-fun tp!1280521 () Bool)

(declare-fun tp!1280519 () Bool)

(assert (=> b!4191002 (= e!2601635 (and tp!1280521 tp!1280519))))

(declare-fun b!4190999 () Bool)

(assert (=> b!4190999 (= e!2601635 tp_is_empty!22113)))

(assert (= (and b!4190432 ((_ is ElementMatch!12575) (regex!7670 r!4142))) b!4190999))

(assert (= (and b!4190432 ((_ is Concat!20476) (regex!7670 r!4142))) b!4191000))

(assert (= (and b!4190432 ((_ is Star!12575) (regex!7670 r!4142))) b!4191001))

(assert (= (and b!4190432 ((_ is Union!12575) (regex!7670 r!4142))) b!4191002))

(declare-fun b!4191004 () Bool)

(declare-fun e!2601636 () Bool)

(declare-fun tp!1280525 () Bool)

(declare-fun tp!1280528 () Bool)

(assert (=> b!4191004 (= e!2601636 (and tp!1280525 tp!1280528))))

(declare-fun b!4191005 () Bool)

(declare-fun tp!1280527 () Bool)

(assert (=> b!4191005 (= e!2601636 tp!1280527)))

(assert (=> b!4190435 (= tp!1280458 e!2601636)))

(declare-fun b!4191006 () Bool)

(declare-fun tp!1280526 () Bool)

(declare-fun tp!1280524 () Bool)

(assert (=> b!4191006 (= e!2601636 (and tp!1280526 tp!1280524))))

(declare-fun b!4191003 () Bool)

(assert (=> b!4191003 (= e!2601636 tp_is_empty!22113)))

(assert (= (and b!4190435 ((_ is ElementMatch!12575) (regex!7670 (h!51441 rules!3843)))) b!4191003))

(assert (= (and b!4190435 ((_ is Concat!20476) (regex!7670 (h!51441 rules!3843)))) b!4191004))

(assert (= (and b!4190435 ((_ is Star!12575) (regex!7670 (h!51441 rules!3843)))) b!4191005))

(assert (= (and b!4190435 ((_ is Union!12575) (regex!7670 (h!51441 rules!3843)))) b!4191006))

(declare-fun b!4191017 () Bool)

(declare-fun b_free!122007 () Bool)

(declare-fun b_next!122711 () Bool)

(assert (=> b!4191017 (= b_free!122007 (not b_next!122711))))

(declare-fun tb!251045 () Bool)

(declare-fun t!345976 () Bool)

(assert (=> (and b!4191017 (= (toValue!10366 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toValue!10366 (transformation!7670 r!4142))) t!345976) tb!251045))

(declare-fun result!305968 () Bool)

(assert (= result!305968 result!305938))

(assert (=> d!1236146 t!345976))

(assert (=> d!1236160 t!345976))

(declare-fun b_and!328385 () Bool)

(declare-fun tp!1280537 () Bool)

(assert (=> b!4191017 (= tp!1280537 (and (=> t!345976 result!305968) b_and!328385))))

(declare-fun b_free!122009 () Bool)

(declare-fun b_next!122713 () Bool)

(assert (=> b!4191017 (= b_free!122009 (not b_next!122713))))

(declare-fun t!345978 () Bool)

(declare-fun tb!251047 () Bool)

(assert (=> (and b!4191017 (= (toChars!10225 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toChars!10225 (transformation!7670 r!4142))) t!345978) tb!251047))

(declare-fun result!305970 () Bool)

(assert (= result!305970 result!305930))

(assert (=> d!1236146 t!345978))

(declare-fun t!345980 () Bool)

(declare-fun tb!251049 () Bool)

(assert (=> (and b!4191017 (= (toChars!10225 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toChars!10225 (transformation!7670 (rule!10752 (_1!25043 lt!1492497))))) t!345980) tb!251049))

(declare-fun result!305972 () Bool)

(assert (= result!305972 result!305946))

(assert (=> d!1236200 t!345980))

(declare-fun b_and!328387 () Bool)

(declare-fun tp!1280540 () Bool)

(assert (=> b!4191017 (= tp!1280540 (and (=> t!345978 result!305970) (=> t!345980 result!305972) b_and!328387))))

(declare-fun e!2601646 () Bool)

(assert (=> b!4191017 (= e!2601646 (and tp!1280537 tp!1280540))))

(declare-fun e!2601648 () Bool)

(declare-fun tp!1280539 () Bool)

(declare-fun b!4191016 () Bool)

(assert (=> b!4191016 (= e!2601648 (and tp!1280539 (inv!60567 (tag!8534 (h!51441 (t!345932 rules!3843)))) (inv!60569 (transformation!7670 (h!51441 (t!345932 rules!3843)))) e!2601646))))

(declare-fun b!4191015 () Bool)

(declare-fun e!2601645 () Bool)

(declare-fun tp!1280538 () Bool)

(assert (=> b!4191015 (= e!2601645 (and e!2601648 tp!1280538))))

(assert (=> b!4190441 (= tp!1280450 e!2601645)))

(assert (= b!4191016 b!4191017))

(assert (= b!4191015 b!4191016))

(assert (= (and b!4190441 ((_ is Cons!46021) (t!345932 rules!3843))) b!4191015))

(declare-fun m!4779827 () Bool)

(assert (=> b!4191016 m!4779827))

(declare-fun m!4779829 () Bool)

(assert (=> b!4191016 m!4779829))

(declare-fun b!4191022 () Bool)

(declare-fun e!2601651 () Bool)

(declare-fun tp!1280543 () Bool)

(assert (=> b!4191022 (= e!2601651 (and tp_is_empty!22113 tp!1280543))))

(assert (=> b!4190440 (= tp!1280446 e!2601651)))

(assert (= (and b!4190440 ((_ is Cons!46020) (t!345931 p!2959))) b!4191022))

(declare-fun b!4191024 () Bool)

(declare-fun e!2601652 () Bool)

(declare-fun tp!1280545 () Bool)

(declare-fun tp!1280548 () Bool)

(assert (=> b!4191024 (= e!2601652 (and tp!1280545 tp!1280548))))

(declare-fun b!4191025 () Bool)

(declare-fun tp!1280547 () Bool)

(assert (=> b!4191025 (= e!2601652 tp!1280547)))

(assert (=> b!4190438 (= tp!1280456 e!2601652)))

(declare-fun b!4191026 () Bool)

(declare-fun tp!1280546 () Bool)

(declare-fun tp!1280544 () Bool)

(assert (=> b!4191026 (= e!2601652 (and tp!1280546 tp!1280544))))

(declare-fun b!4191023 () Bool)

(assert (=> b!4191023 (= e!2601652 tp_is_empty!22113)))

(assert (= (and b!4190438 ((_ is ElementMatch!12575) (regex!7670 rBis!167))) b!4191023))

(assert (= (and b!4190438 ((_ is Concat!20476) (regex!7670 rBis!167))) b!4191024))

(assert (= (and b!4190438 ((_ is Star!12575) (regex!7670 rBis!167))) b!4191025))

(assert (= (and b!4190438 ((_ is Union!12575) (regex!7670 rBis!167))) b!4191026))

(declare-fun b!4191027 () Bool)

(declare-fun e!2601653 () Bool)

(declare-fun tp!1280549 () Bool)

(assert (=> b!4191027 (= e!2601653 (and tp_is_empty!22113 tp!1280549))))

(assert (=> b!4190433 (= tp!1280457 e!2601653)))

(assert (= (and b!4190433 ((_ is Cons!46020) (t!345931 input!3342))) b!4191027))

(declare-fun b!4191028 () Bool)

(declare-fun e!2601654 () Bool)

(declare-fun tp!1280550 () Bool)

(assert (=> b!4191028 (= e!2601654 (and tp_is_empty!22113 tp!1280550))))

(assert (=> b!4190444 (= tp!1280454 e!2601654)))

(assert (= (and b!4190444 ((_ is Cons!46020) (t!345931 pBis!107))) b!4191028))

(declare-fun b_lambda!123261 () Bool)

(assert (= b_lambda!123247 (or (and b!4190442 b_free!121993) (and b!4190447 b_free!121997 (= (toChars!10225 (transformation!7670 rBis!167)) (toChars!10225 (transformation!7670 r!4142)))) (and b!4190418 b_free!122001 (= (toChars!10225 (transformation!7670 (h!51441 rules!3843))) (toChars!10225 (transformation!7670 r!4142)))) (and b!4191017 b_free!122009 (= (toChars!10225 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toChars!10225 (transformation!7670 r!4142)))) b_lambda!123261)))

(declare-fun b_lambda!123263 () Bool)

(assert (= b_lambda!123251 (or (and b!4190442 b_free!121991) (and b!4190447 b_free!121995 (= (toValue!10366 (transformation!7670 rBis!167)) (toValue!10366 (transformation!7670 r!4142)))) (and b!4190418 b_free!121999 (= (toValue!10366 (transformation!7670 (h!51441 rules!3843))) (toValue!10366 (transformation!7670 r!4142)))) (and b!4191017 b_free!122007 (= (toValue!10366 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toValue!10366 (transformation!7670 r!4142)))) b_lambda!123263)))

(declare-fun b_lambda!123265 () Bool)

(assert (= b_lambda!123249 (or (and b!4190442 b_free!121991) (and b!4190447 b_free!121995 (= (toValue!10366 (transformation!7670 rBis!167)) (toValue!10366 (transformation!7670 r!4142)))) (and b!4190418 b_free!121999 (= (toValue!10366 (transformation!7670 (h!51441 rules!3843))) (toValue!10366 (transformation!7670 r!4142)))) (and b!4191017 b_free!122007 (= (toValue!10366 (transformation!7670 (h!51441 (t!345932 rules!3843)))) (toValue!10366 (transformation!7670 r!4142)))) b_lambda!123265)))

(check-sat (not b!4190981) (not b!4190696) (not b!4190964) (not bm!292165) (not d!1236222) (not b_next!122701) (not b!4190954) (not b!4190458) (not b!4190958) (not b_next!122695) (not b!4190988) (not b!4191022) (not d!1236072) tp_is_empty!22113 (not b_next!122697) (not d!1236194) (not b!4190839) (not b!4190484) (not d!1236200) (not b!4190766) (not b!4190459) (not d!1236190) (not b!4190690) (not b!4190963) (not d!1236214) b_and!328379 (not d!1236100) (not b!4191027) (not b!4190909) (not b!4190460) (not b!4190980) (not d!1236182) (not d!1236228) (not d!1236086) (not b!4190773) (not b!4190919) (not b!4191024) (not d!1236204) (not d!1236098) (not b!4191026) (not b!4191028) (not b!4190688) b_and!328377 (not b!4190972) (not d!1236230) (not b!4190949) (not b!4190968) (not b!4190915) b_and!328385 (not b_lambda!123261) (not b!4190488) (not b_next!122711) (not d!1236096) (not b!4191004) (not b!4190845) (not b!4190948) (not b!4190846) (not b!4190694) (not b!4190772) (not bm!292156) (not d!1236212) (not bm!292153) (not b!4190769) (not b!4190489) (not b!4190734) (not b!4190837) (not d!1236168) (not tb!251027) (not b!4190955) (not b_lambda!123253) (not b!4190691) (not tb!251021) (not b!4190864) (not b!4190771) b_and!328387 (not b!4191002) (not b!4190961) (not b!4191005) (not b!4190966) (not d!1236080) (not bm!292155) (not b!4190732) (not b!4190753) (not d!1236234) b_and!328369 (not b!4190947) (not b!4190841) (not d!1236226) b_and!328373 (not b!4191025) (not b_lambda!123265) (not bm!292158) (not bm!292164) (not b!4190695) (not b!4190943) (not b!4190692) (not b!4190959) (not b_lambda!123263) (not d!1236164) (not b!4191006) (not b!4190693) (not b!4190969) (not b!4191000) (not b!4190967) (not d!1236176) (not b!4190950) (not b!4191001) (not tb!251033) (not b_next!122703) b_and!328375 (not b!4191016) (not b_next!122699) (not b!4190770) (not b!4190946) b_and!328371 (not b!4190476) (not b!4190977) (not b!4190952) (not d!1236178) (not b!4190976) (not b!4190944) (not b!4190965) (not b_next!122705) (not b!4190914) (not b!4190842) (not bm!292161) (not b!4190956) (not b!4190466) (not b!4190916) (not b!4190487) (not b!4190908) (not b!4191015) (not d!1236146) (not b!4190942) (not b!4190974) (not b!4190971) (not b_next!122713) (not d!1236236) (not b!4190724))
(check-sat (not b_next!122701) (not b_next!122695) (not b_next!122697) b_and!328379 b_and!328377 b_and!328387 b_and!328369 b_and!328373 (not b_next!122705) (not b_next!122713) b_and!328385 (not b_next!122711) (not b_next!122703) b_and!328375 (not b_next!122699) b_and!328371)
