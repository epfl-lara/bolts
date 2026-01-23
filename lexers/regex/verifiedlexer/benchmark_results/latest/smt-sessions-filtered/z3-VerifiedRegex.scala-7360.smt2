; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391106 () Bool)

(assert start!391106)

(declare-fun b!4123505 () Bool)

(declare-fun b_free!116707 () Bool)

(declare-fun b_next!117411 () Bool)

(assert (=> b!4123505 (= b_free!116707 (not b_next!117411))))

(declare-fun tp!1256587 () Bool)

(declare-fun b_and!319101 () Bool)

(assert (=> b!4123505 (= tp!1256587 b_and!319101)))

(declare-fun b_free!116709 () Bool)

(declare-fun b_next!117413 () Bool)

(assert (=> b!4123505 (= b_free!116709 (not b_next!117413))))

(declare-fun tp!1256588 () Bool)

(declare-fun b_and!319103 () Bool)

(assert (=> b!4123505 (= tp!1256588 b_and!319103)))

(declare-fun b!4123511 () Bool)

(declare-fun b_free!116711 () Bool)

(declare-fun b_next!117415 () Bool)

(assert (=> b!4123511 (= b_free!116711 (not b_next!117415))))

(declare-fun tp!1256580 () Bool)

(declare-fun b_and!319105 () Bool)

(assert (=> b!4123511 (= tp!1256580 b_and!319105)))

(declare-fun b_free!116713 () Bool)

(declare-fun b_next!117417 () Bool)

(assert (=> b!4123511 (= b_free!116713 (not b_next!117417))))

(declare-fun tp!1256590 () Bool)

(declare-fun b_and!319107 () Bool)

(assert (=> b!4123511 (= tp!1256590 b_and!319107)))

(declare-fun b!4123518 () Bool)

(declare-fun b_free!116715 () Bool)

(declare-fun b_next!117419 () Bool)

(assert (=> b!4123518 (= b_free!116715 (not b_next!117419))))

(declare-fun tp!1256586 () Bool)

(declare-fun b_and!319109 () Bool)

(assert (=> b!4123518 (= tp!1256586 b_and!319109)))

(declare-fun b_free!116717 () Bool)

(declare-fun b_next!117421 () Bool)

(assert (=> b!4123518 (= b_free!116717 (not b_next!117421))))

(declare-fun tp!1256583 () Bool)

(declare-fun b_and!319111 () Bool)

(assert (=> b!4123518 (= tp!1256583 b_and!319111)))

(declare-fun b!4123496 () Bool)

(declare-fun res!1685087 () Bool)

(declare-fun e!2558666 () Bool)

(assert (=> b!4123496 (=> (not res!1685087) (not e!2558666))))

(declare-datatypes ((LexerInterface!6881 0))(
  ( (LexerInterfaceExt!6878 (__x!27261 Int)) (Lexer!6879) )
))
(declare-fun thiss!25645 () LexerInterface!6881)

(declare-datatypes ((List!44735 0))(
  ( (Nil!44611) (Cons!44611 (h!50031 (_ BitVec 16)) (t!340944 List!44735)) )
))
(declare-datatypes ((TokenValue!7522 0))(
  ( (FloatLiteralValue!15044 (text!53099 List!44735)) (TokenValueExt!7521 (__x!27262 Int)) (Broken!37610 (value!228350 List!44735)) (Object!7645) (End!7522) (Def!7522) (Underscore!7522) (Match!7522) (Else!7522) (Error!7522) (Case!7522) (If!7522) (Extends!7522) (Abstract!7522) (Class!7522) (Val!7522) (DelimiterValue!15044 (del!7582 List!44735)) (KeywordValue!7528 (value!228351 List!44735)) (CommentValue!15044 (value!228352 List!44735)) (WhitespaceValue!15044 (value!228353 List!44735)) (IndentationValue!7522 (value!228354 List!44735)) (String!51359) (Int32!7522) (Broken!37611 (value!228355 List!44735)) (Boolean!7523) (Unit!63952) (OperatorValue!7525 (op!7582 List!44735)) (IdentifierValue!15044 (value!228356 List!44735)) (IdentifierValue!15045 (value!228357 List!44735)) (WhitespaceValue!15045 (value!228358 List!44735)) (True!15044) (False!15044) (Broken!37612 (value!228359 List!44735)) (Broken!37613 (value!228360 List!44735)) (True!15045) (RightBrace!7522) (RightBracket!7522) (Colon!7522) (Null!7522) (Comma!7522) (LeftBracket!7522) (False!15045) (LeftBrace!7522) (ImaginaryLiteralValue!7522 (text!53100 List!44735)) (StringLiteralValue!22566 (value!228361 List!44735)) (EOFValue!7522 (value!228362 List!44735)) (IdentValue!7522 (value!228363 List!44735)) (DelimiterValue!15045 (value!228364 List!44735)) (DedentValue!7522 (value!228365 List!44735)) (NewLineValue!7522 (value!228366 List!44735)) (IntegerValue!22566 (value!228367 (_ BitVec 32)) (text!53101 List!44735)) (IntegerValue!22567 (value!228368 Int) (text!53102 List!44735)) (Times!7522) (Or!7522) (Equal!7522) (Minus!7522) (Broken!37614 (value!228369 List!44735)) (And!7522) (Div!7522) (LessEqual!7522) (Mod!7522) (Concat!19719) (Not!7522) (Plus!7522) (SpaceValue!7522 (value!228370 List!44735)) (IntegerValue!22568 (value!228371 Int) (text!53103 List!44735)) (StringLiteralValue!22567 (text!53104 List!44735)) (FloatLiteralValue!15045 (text!53105 List!44735)) (BytesLiteralValue!7522 (value!228372 List!44735)) (CommentValue!15045 (value!228373 List!44735)) (StringLiteralValue!22568 (value!228374 List!44735)) (ErrorTokenValue!7522 (msg!7583 List!44735)) )
))
(declare-datatypes ((C!24580 0))(
  ( (C!24581 (val!14400 Int)) )
))
(declare-datatypes ((List!44736 0))(
  ( (Nil!44612) (Cons!44612 (h!50032 C!24580) (t!340945 List!44736)) )
))
(declare-datatypes ((IArray!27011 0))(
  ( (IArray!27012 (innerList!13563 List!44736)) )
))
(declare-datatypes ((Conc!13503 0))(
  ( (Node!13503 (left!33411 Conc!13503) (right!33741 Conc!13503) (csize!27236 Int) (cheight!13714 Int)) (Leaf!20864 (xs!16809 IArray!27011) (csize!27237 Int)) (Empty!13503) )
))
(declare-datatypes ((BalanceConc!26600 0))(
  ( (BalanceConc!26601 (c!707860 Conc!13503)) )
))
(declare-datatypes ((Regex!12197 0))(
  ( (ElementMatch!12197 (c!707861 C!24580)) (Concat!19720 (regOne!24906 Regex!12197) (regTwo!24906 Regex!12197)) (EmptyExpr!12197) (Star!12197 (reg!12526 Regex!12197)) (EmptyLang!12197) (Union!12197 (regOne!24907 Regex!12197) (regTwo!24907 Regex!12197)) )
))
(declare-datatypes ((String!51360 0))(
  ( (String!51361 (value!228375 String)) )
))
(declare-datatypes ((TokenValueInjection!14472 0))(
  ( (TokenValueInjection!14473 (toValue!9944 Int) (toChars!9803 Int)) )
))
(declare-datatypes ((Rule!14384 0))(
  ( (Rule!14385 (regex!7292 Regex!12197) (tag!8152 String!51360) (isSeparator!7292 Bool) (transformation!7292 TokenValueInjection!14472)) )
))
(declare-datatypes ((List!44737 0))(
  ( (Nil!44613) (Cons!44613 (h!50033 Rule!14384) (t!340946 List!44737)) )
))
(declare-fun rules!3756 () List!44737)

(declare-fun rulesInvariant!6178 (LexerInterface!6881 List!44737) Bool)

(assert (=> b!4123496 (= res!1685087 (rulesInvariant!6178 thiss!25645 rules!3756))))

(declare-fun b!4123497 () Bool)

(declare-fun e!2558659 () Bool)

(assert (=> b!4123497 (= e!2558666 e!2558659)))

(declare-fun res!1685086 () Bool)

(assert (=> b!4123497 (=> (not res!1685086) (not e!2558659))))

(declare-fun input!3238 () List!44736)

(declare-fun p!2912 () List!44736)

(declare-fun lt!1471221 () Int)

(declare-fun r!4008 () Rule!14384)

(declare-fun lt!1471222 () TokenValue!7522)

(declare-datatypes ((Token!13514 0))(
  ( (Token!13515 (value!228376 TokenValue!7522) (rule!10372 Rule!14384) (size!33030 Int) (originalCharacters!7788 List!44736)) )
))
(declare-datatypes ((tuple2!43070 0))(
  ( (tuple2!43071 (_1!24669 Token!13514) (_2!24669 List!44736)) )
))
(declare-datatypes ((Option!9600 0))(
  ( (None!9599) (Some!9599 (v!40191 tuple2!43070)) )
))
(declare-fun maxPrefix!4073 (LexerInterface!6881 List!44737 List!44736) Option!9600)

(declare-fun getSuffix!2556 (List!44736 List!44736) List!44736)

(assert (=> b!4123497 (= res!1685086 (= (maxPrefix!4073 thiss!25645 rules!3756 input!3238) (Some!9599 (tuple2!43071 (Token!13515 lt!1471222 r!4008 lt!1471221 p!2912) (getSuffix!2556 input!3238 p!2912)))))))

(declare-fun size!33031 (List!44736) Int)

(assert (=> b!4123497 (= lt!1471221 (size!33031 p!2912))))

(declare-fun lt!1471212 () BalanceConc!26600)

(declare-fun apply!10365 (TokenValueInjection!14472 BalanceConc!26600) TokenValue!7522)

(assert (=> b!4123497 (= lt!1471222 (apply!10365 (transformation!7292 r!4008) lt!1471212))))

(declare-datatypes ((Unit!63953 0))(
  ( (Unit!63954) )
))
(declare-fun lt!1471219 () Unit!63953)

(declare-fun lemmaSemiInverse!2150 (TokenValueInjection!14472 BalanceConc!26600) Unit!63953)

(assert (=> b!4123497 (= lt!1471219 (lemmaSemiInverse!2150 (transformation!7292 r!4008) lt!1471212))))

(declare-fun seqFromList!5409 (List!44736) BalanceConc!26600)

(assert (=> b!4123497 (= lt!1471212 (seqFromList!5409 p!2912))))

(declare-fun b!4123498 () Bool)

(declare-fun e!2558656 () Bool)

(assert (=> b!4123498 (= e!2558659 (not e!2558656))))

(declare-fun res!1685083 () Bool)

(assert (=> b!4123498 (=> res!1685083 e!2558656)))

(declare-fun rBis!149 () Rule!14384)

(get-info :version)

(assert (=> b!4123498 (= res!1685083 (or (not ((_ is Cons!44613) rules!3756)) (not (= (h!50033 rules!3756) rBis!149))))))

(declare-fun lt!1471213 () Unit!63953)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2144 (LexerInterface!6881 Rule!14384 List!44737) Unit!63953)

(assert (=> b!4123498 (= lt!1471213 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2144 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3100 (LexerInterface!6881 Rule!14384) Bool)

(assert (=> b!4123498 (ruleValid!3100 thiss!25645 rBis!149)))

(declare-fun lt!1471211 () Unit!63953)

(assert (=> b!4123498 (= lt!1471211 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2144 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4123499 () Bool)

(declare-fun res!1685089 () Bool)

(assert (=> b!4123499 (=> (not res!1685089) (not e!2558666))))

(declare-fun contains!8964 (List!44737 Rule!14384) Bool)

(assert (=> b!4123499 (= res!1685089 (contains!8964 rules!3756 r!4008))))

(declare-fun b!4123500 () Bool)

(declare-fun res!1685082 () Bool)

(assert (=> b!4123500 (=> (not res!1685082) (not e!2558666))))

(assert (=> b!4123500 (= res!1685082 (contains!8964 rules!3756 rBis!149))))

(declare-fun e!2558655 () Bool)

(declare-fun tp!1256581 () Bool)

(declare-fun b!4123501 () Bool)

(declare-fun e!2558663 () Bool)

(declare-fun inv!59191 (String!51360) Bool)

(declare-fun inv!59193 (TokenValueInjection!14472) Bool)

(assert (=> b!4123501 (= e!2558663 (and tp!1256581 (inv!59191 (tag!8152 r!4008)) (inv!59193 (transformation!7292 r!4008)) e!2558655))))

(declare-fun b!4123503 () Bool)

(declare-fun e!2558664 () Bool)

(assert (=> b!4123503 (= e!2558664 true)))

(declare-fun lt!1471215 () Int)

(assert (=> b!4123503 (= lt!1471215 (size!33031 input!3238))))

(assert (=> b!4123503 (not (= (tag!8152 rBis!149) (tag!8152 r!4008)))))

(declare-fun lt!1471217 () Unit!63953)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!50 (LexerInterface!6881 List!44737 Rule!14384 Rule!14384) Unit!63953)

(assert (=> b!4123503 (= lt!1471217 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!50 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4123504 () Bool)

(declare-fun e!2558658 () Bool)

(declare-fun tp_is_empty!21317 () Bool)

(declare-fun tp!1256582 () Bool)

(assert (=> b!4123504 (= e!2558658 (and tp_is_empty!21317 tp!1256582))))

(assert (=> b!4123505 (= e!2558655 (and tp!1256587 tp!1256588))))

(declare-fun b!4123506 () Bool)

(declare-fun res!1685077 () Bool)

(assert (=> b!4123506 (=> (not res!1685077) (not e!2558659))))

(declare-fun getIndex!640 (List!44737 Rule!14384) Int)

(assert (=> b!4123506 (= res!1685077 (< (getIndex!640 rules!3756 rBis!149) (getIndex!640 rules!3756 r!4008)))))

(declare-fun e!2558662 () Bool)

(declare-fun b!4123507 () Bool)

(declare-fun tp!1256585 () Bool)

(declare-fun e!2558667 () Bool)

(assert (=> b!4123507 (= e!2558662 (and tp!1256585 (inv!59191 (tag!8152 (h!50033 rules!3756))) (inv!59193 (transformation!7292 (h!50033 rules!3756))) e!2558667))))

(declare-fun b!4123508 () Bool)

(declare-fun e!2558653 () Bool)

(declare-fun tp!1256579 () Bool)

(assert (=> b!4123508 (= e!2558653 (and tp_is_empty!21317 tp!1256579))))

(declare-fun b!4123509 () Bool)

(declare-fun res!1685090 () Bool)

(assert (=> b!4123509 (=> (not res!1685090) (not e!2558666))))

(declare-fun isEmpty!26550 (List!44737) Bool)

(assert (=> b!4123509 (= res!1685090 (not (isEmpty!26550 rules!3756)))))

(declare-fun b!4123510 () Bool)

(declare-fun e!2558652 () Bool)

(assert (=> b!4123510 (= e!2558656 e!2558652)))

(declare-fun res!1685085 () Bool)

(assert (=> b!4123510 (=> res!1685085 e!2558652)))

(declare-fun lt!1471218 () Option!9600)

(declare-fun isEmpty!26551 (Option!9600) Bool)

(assert (=> b!4123510 (= res!1685085 (isEmpty!26551 lt!1471218))))

(declare-fun maxPrefixOneRule!3023 (LexerInterface!6881 Rule!14384 List!44736) Option!9600)

(assert (=> b!4123510 (= lt!1471218 (maxPrefixOneRule!3023 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4123510 (not (= rBis!149 r!4008))))

(declare-fun lt!1471220 () Unit!63953)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!32 (LexerInterface!6881 List!44737 Rule!14384 Rule!14384) Unit!63953)

(assert (=> b!4123510 (= lt!1471220 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!32 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6455 (List!44737) List!44737)

(assert (=> b!4123510 (contains!8964 (tail!6455 rules!3756) r!4008)))

(declare-fun lt!1471216 () Unit!63953)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!34 (List!44737 Rule!14384 Rule!14384) Unit!63953)

(assert (=> b!4123510 (= lt!1471216 (lemmaGetIndexBiggerAndHeadEqThenTailContains!34 rules!3756 rBis!149 r!4008))))

(declare-fun e!2558661 () Bool)

(assert (=> b!4123511 (= e!2558661 (and tp!1256580 tp!1256590))))

(declare-fun b!4123512 () Bool)

(assert (=> b!4123512 (= e!2558652 e!2558664)))

(declare-fun res!1685078 () Bool)

(assert (=> b!4123512 (=> res!1685078 e!2558664)))

(declare-fun lt!1471214 () Int)

(assert (=> b!4123512 (= res!1685078 (or (> lt!1471214 lt!1471221) (< lt!1471214 lt!1471221)))))

(declare-fun size!33032 (BalanceConc!26600) Int)

(declare-fun charsOf!4914 (Token!13514) BalanceConc!26600)

(declare-fun get!14556 (Option!9600) tuple2!43070)

(assert (=> b!4123512 (= lt!1471214 (size!33032 (charsOf!4914 (_1!24669 (get!14556 lt!1471218)))))))

(declare-fun b!4123513 () Bool)

(declare-fun e!2558654 () Bool)

(declare-fun tp!1256584 () Bool)

(assert (=> b!4123513 (= e!2558654 (and e!2558662 tp!1256584))))

(declare-fun b!4123514 () Bool)

(declare-fun res!1685081 () Bool)

(assert (=> b!4123514 (=> (not res!1685081) (not e!2558666))))

(declare-fun isPrefix!4227 (List!44736 List!44736) Bool)

(assert (=> b!4123514 (= res!1685081 (isPrefix!4227 p!2912 input!3238))))

(declare-fun b!4123502 () Bool)

(declare-fun res!1685084 () Bool)

(assert (=> b!4123502 (=> (not res!1685084) (not e!2558659))))

(declare-fun matchR!6028 (Regex!12197 List!44736) Bool)

(assert (=> b!4123502 (= res!1685084 (matchR!6028 (regex!7292 r!4008) p!2912))))

(declare-fun res!1685080 () Bool)

(assert (=> start!391106 (=> (not res!1685080) (not e!2558666))))

(assert (=> start!391106 (= res!1685080 ((_ is Lexer!6879) thiss!25645))))

(assert (=> start!391106 e!2558666))

(assert (=> start!391106 e!2558654))

(assert (=> start!391106 e!2558653))

(assert (=> start!391106 true))

(assert (=> start!391106 e!2558663))

(assert (=> start!391106 e!2558658))

(declare-fun e!2558660 () Bool)

(assert (=> start!391106 e!2558660))

(declare-fun b!4123515 () Bool)

(declare-fun res!1685088 () Bool)

(assert (=> b!4123515 (=> (not res!1685088) (not e!2558666))))

(declare-fun isEmpty!26552 (List!44736) Bool)

(assert (=> b!4123515 (= res!1685088 (not (isEmpty!26552 p!2912)))))

(declare-fun tp!1256589 () Bool)

(declare-fun b!4123516 () Bool)

(assert (=> b!4123516 (= e!2558660 (and tp!1256589 (inv!59191 (tag!8152 rBis!149)) (inv!59193 (transformation!7292 rBis!149)) e!2558661))))

(declare-fun b!4123517 () Bool)

(declare-fun res!1685079 () Bool)

(assert (=> b!4123517 (=> (not res!1685079) (not e!2558659))))

(assert (=> b!4123517 (= res!1685079 (ruleValid!3100 thiss!25645 r!4008))))

(assert (=> b!4123518 (= e!2558667 (and tp!1256586 tp!1256583))))

(assert (= (and start!391106 res!1685080) b!4123514))

(assert (= (and b!4123514 res!1685081) b!4123509))

(assert (= (and b!4123509 res!1685090) b!4123496))

(assert (= (and b!4123496 res!1685087) b!4123499))

(assert (= (and b!4123499 res!1685089) b!4123500))

(assert (= (and b!4123500 res!1685082) b!4123515))

(assert (= (and b!4123515 res!1685088) b!4123497))

(assert (= (and b!4123497 res!1685086) b!4123502))

(assert (= (and b!4123502 res!1685084) b!4123506))

(assert (= (and b!4123506 res!1685077) b!4123517))

(assert (= (and b!4123517 res!1685079) b!4123498))

(assert (= (and b!4123498 (not res!1685083)) b!4123510))

(assert (= (and b!4123510 (not res!1685085)) b!4123512))

(assert (= (and b!4123512 (not res!1685078)) b!4123503))

(assert (= b!4123507 b!4123518))

(assert (= b!4123513 b!4123507))

(assert (= (and start!391106 ((_ is Cons!44613) rules!3756)) b!4123513))

(assert (= (and start!391106 ((_ is Cons!44612) p!2912)) b!4123508))

(assert (= b!4123501 b!4123505))

(assert (= start!391106 b!4123501))

(assert (= (and start!391106 ((_ is Cons!44612) input!3238)) b!4123504))

(assert (= b!4123516 b!4123511))

(assert (= start!391106 b!4123516))

(declare-fun m!4722489 () Bool)

(assert (=> b!4123499 m!4722489))

(declare-fun m!4722491 () Bool)

(assert (=> b!4123512 m!4722491))

(declare-fun m!4722493 () Bool)

(assert (=> b!4123512 m!4722493))

(assert (=> b!4123512 m!4722493))

(declare-fun m!4722495 () Bool)

(assert (=> b!4123512 m!4722495))

(declare-fun m!4722497 () Bool)

(assert (=> b!4123507 m!4722497))

(declare-fun m!4722499 () Bool)

(assert (=> b!4123507 m!4722499))

(declare-fun m!4722501 () Bool)

(assert (=> b!4123500 m!4722501))

(declare-fun m!4722503 () Bool)

(assert (=> b!4123496 m!4722503))

(declare-fun m!4722505 () Bool)

(assert (=> b!4123509 m!4722505))

(declare-fun m!4722507 () Bool)

(assert (=> b!4123506 m!4722507))

(declare-fun m!4722509 () Bool)

(assert (=> b!4123506 m!4722509))

(declare-fun m!4722511 () Bool)

(assert (=> b!4123515 m!4722511))

(declare-fun m!4722513 () Bool)

(assert (=> b!4123501 m!4722513))

(declare-fun m!4722515 () Bool)

(assert (=> b!4123501 m!4722515))

(declare-fun m!4722517 () Bool)

(assert (=> b!4123503 m!4722517))

(declare-fun m!4722519 () Bool)

(assert (=> b!4123503 m!4722519))

(declare-fun m!4722521 () Bool)

(assert (=> b!4123516 m!4722521))

(declare-fun m!4722523 () Bool)

(assert (=> b!4123516 m!4722523))

(declare-fun m!4722525 () Bool)

(assert (=> b!4123510 m!4722525))

(declare-fun m!4722527 () Bool)

(assert (=> b!4123510 m!4722527))

(declare-fun m!4722529 () Bool)

(assert (=> b!4123510 m!4722529))

(assert (=> b!4123510 m!4722525))

(declare-fun m!4722531 () Bool)

(assert (=> b!4123510 m!4722531))

(declare-fun m!4722533 () Bool)

(assert (=> b!4123510 m!4722533))

(declare-fun m!4722535 () Bool)

(assert (=> b!4123510 m!4722535))

(declare-fun m!4722537 () Bool)

(assert (=> b!4123514 m!4722537))

(declare-fun m!4722539 () Bool)

(assert (=> b!4123497 m!4722539))

(declare-fun m!4722541 () Bool)

(assert (=> b!4123497 m!4722541))

(declare-fun m!4722543 () Bool)

(assert (=> b!4123497 m!4722543))

(declare-fun m!4722545 () Bool)

(assert (=> b!4123497 m!4722545))

(declare-fun m!4722547 () Bool)

(assert (=> b!4123497 m!4722547))

(declare-fun m!4722549 () Bool)

(assert (=> b!4123497 m!4722549))

(declare-fun m!4722551 () Bool)

(assert (=> b!4123498 m!4722551))

(declare-fun m!4722553 () Bool)

(assert (=> b!4123498 m!4722553))

(declare-fun m!4722555 () Bool)

(assert (=> b!4123498 m!4722555))

(declare-fun m!4722557 () Bool)

(assert (=> b!4123502 m!4722557))

(declare-fun m!4722559 () Bool)

(assert (=> b!4123517 m!4722559))

(check-sat (not b!4123513) tp_is_empty!21317 (not b!4123499) (not b!4123500) (not b!4123497) (not b_next!117415) (not b!4123496) b_and!319109 (not b!4123517) (not b!4123514) (not b!4123498) b_and!319105 b_and!319101 b_and!319103 (not b_next!117413) (not b!4123506) (not b!4123516) b_and!319111 (not b!4123507) (not b!4123502) (not b_next!117411) (not b!4123515) (not b_next!117417) (not b!4123503) (not b!4123508) (not b_next!117421) (not b!4123504) (not b!4123501) (not b!4123509) (not b!4123512) (not b!4123510) b_and!319107 (not b_next!117419))
(check-sat b_and!319111 (not b_next!117411) (not b_next!117417) (not b_next!117415) (not b_next!117421) b_and!319109 b_and!319105 b_and!319101 b_and!319103 (not b_next!117413) b_and!319107 (not b_next!117419))
