; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390862 () Bool)

(assert start!390862)

(declare-fun b!4121799 () Bool)

(declare-fun b_free!116571 () Bool)

(declare-fun b_next!117275 () Bool)

(assert (=> b!4121799 (= b_free!116571 (not b_next!117275))))

(declare-fun tp!1256050 () Bool)

(declare-fun b_and!318869 () Bool)

(assert (=> b!4121799 (= tp!1256050 b_and!318869)))

(declare-fun b_free!116573 () Bool)

(declare-fun b_next!117277 () Bool)

(assert (=> b!4121799 (= b_free!116573 (not b_next!117277))))

(declare-fun tp!1256042 () Bool)

(declare-fun b_and!318871 () Bool)

(assert (=> b!4121799 (= tp!1256042 b_and!318871)))

(declare-fun b!4121789 () Bool)

(declare-fun b_free!116575 () Bool)

(declare-fun b_next!117279 () Bool)

(assert (=> b!4121789 (= b_free!116575 (not b_next!117279))))

(declare-fun tp!1256044 () Bool)

(declare-fun b_and!318873 () Bool)

(assert (=> b!4121789 (= tp!1256044 b_and!318873)))

(declare-fun b_free!116577 () Bool)

(declare-fun b_next!117281 () Bool)

(assert (=> b!4121789 (= b_free!116577 (not b_next!117281))))

(declare-fun tp!1256049 () Bool)

(declare-fun b_and!318875 () Bool)

(assert (=> b!4121789 (= tp!1256049 b_and!318875)))

(declare-fun b!4121795 () Bool)

(declare-fun b_free!116579 () Bool)

(declare-fun b_next!117283 () Bool)

(assert (=> b!4121795 (= b_free!116579 (not b_next!117283))))

(declare-fun tp!1256041 () Bool)

(declare-fun b_and!318877 () Bool)

(assert (=> b!4121795 (= tp!1256041 b_and!318877)))

(declare-fun b_free!116581 () Bool)

(declare-fun b_next!117285 () Bool)

(assert (=> b!4121795 (= b_free!116581 (not b_next!117285))))

(declare-fun tp!1256040 () Bool)

(declare-fun b_and!318879 () Bool)

(assert (=> b!4121795 (= tp!1256040 b_and!318879)))

(declare-fun b!4121782 () Bool)

(declare-fun res!1684111 () Bool)

(declare-fun e!2557578 () Bool)

(assert (=> b!4121782 (=> (not res!1684111) (not e!2557578))))

(declare-datatypes ((List!44699 0))(
  ( (Nil!44575) (Cons!44575 (h!49995 (_ BitVec 16)) (t!340810 List!44699)) )
))
(declare-datatypes ((TokenValue!7512 0))(
  ( (FloatLiteralValue!15024 (text!53029 List!44699)) (TokenValueExt!7511 (__x!27241 Int)) (Broken!37560 (value!228065 List!44699)) (Object!7635) (End!7512) (Def!7512) (Underscore!7512) (Match!7512) (Else!7512) (Error!7512) (Case!7512) (If!7512) (Extends!7512) (Abstract!7512) (Class!7512) (Val!7512) (DelimiterValue!15024 (del!7572 List!44699)) (KeywordValue!7518 (value!228066 List!44699)) (CommentValue!15024 (value!228067 List!44699)) (WhitespaceValue!15024 (value!228068 List!44699)) (IndentationValue!7512 (value!228069 List!44699)) (String!51309) (Int32!7512) (Broken!37561 (value!228070 List!44699)) (Boolean!7513) (Unit!63922) (OperatorValue!7515 (op!7572 List!44699)) (IdentifierValue!15024 (value!228071 List!44699)) (IdentifierValue!15025 (value!228072 List!44699)) (WhitespaceValue!15025 (value!228073 List!44699)) (True!15024) (False!15024) (Broken!37562 (value!228074 List!44699)) (Broken!37563 (value!228075 List!44699)) (True!15025) (RightBrace!7512) (RightBracket!7512) (Colon!7512) (Null!7512) (Comma!7512) (LeftBracket!7512) (False!15025) (LeftBrace!7512) (ImaginaryLiteralValue!7512 (text!53030 List!44699)) (StringLiteralValue!22536 (value!228076 List!44699)) (EOFValue!7512 (value!228077 List!44699)) (IdentValue!7512 (value!228078 List!44699)) (DelimiterValue!15025 (value!228079 List!44699)) (DedentValue!7512 (value!228080 List!44699)) (NewLineValue!7512 (value!228081 List!44699)) (IntegerValue!22536 (value!228082 (_ BitVec 32)) (text!53031 List!44699)) (IntegerValue!22537 (value!228083 Int) (text!53032 List!44699)) (Times!7512) (Or!7512) (Equal!7512) (Minus!7512) (Broken!37564 (value!228084 List!44699)) (And!7512) (Div!7512) (LessEqual!7512) (Mod!7512) (Concat!19699) (Not!7512) (Plus!7512) (SpaceValue!7512 (value!228085 List!44699)) (IntegerValue!22538 (value!228086 Int) (text!53033 List!44699)) (StringLiteralValue!22537 (text!53034 List!44699)) (FloatLiteralValue!15025 (text!53035 List!44699)) (BytesLiteralValue!7512 (value!228087 List!44699)) (CommentValue!15025 (value!228088 List!44699)) (StringLiteralValue!22538 (value!228089 List!44699)) (ErrorTokenValue!7512 (msg!7573 List!44699)) )
))
(declare-datatypes ((C!24560 0))(
  ( (C!24561 (val!14390 Int)) )
))
(declare-datatypes ((List!44700 0))(
  ( (Nil!44576) (Cons!44576 (h!49996 C!24560) (t!340811 List!44700)) )
))
(declare-datatypes ((IArray!26991 0))(
  ( (IArray!26992 (innerList!13553 List!44700)) )
))
(declare-datatypes ((Conc!13493 0))(
  ( (Node!13493 (left!33388 Conc!13493) (right!33718 Conc!13493) (csize!27216 Int) (cheight!13704 Int)) (Leaf!20849 (xs!16799 IArray!26991) (csize!27217 Int)) (Empty!13493) )
))
(declare-datatypes ((BalanceConc!26580 0))(
  ( (BalanceConc!26581 (c!707684 Conc!13493)) )
))
(declare-datatypes ((Regex!12187 0))(
  ( (ElementMatch!12187 (c!707685 C!24560)) (Concat!19700 (regOne!24886 Regex!12187) (regTwo!24886 Regex!12187)) (EmptyExpr!12187) (Star!12187 (reg!12516 Regex!12187)) (EmptyLang!12187) (Union!12187 (regOne!24887 Regex!12187) (regTwo!24887 Regex!12187)) )
))
(declare-datatypes ((String!51310 0))(
  ( (String!51311 (value!228090 String)) )
))
(declare-datatypes ((TokenValueInjection!14452 0))(
  ( (TokenValueInjection!14453 (toValue!9934 Int) (toChars!9793 Int)) )
))
(declare-datatypes ((Rule!14364 0))(
  ( (Rule!14365 (regex!7282 Regex!12187) (tag!8142 String!51310) (isSeparator!7282 Bool) (transformation!7282 TokenValueInjection!14452)) )
))
(declare-datatypes ((List!44701 0))(
  ( (Nil!44577) (Cons!44577 (h!49997 Rule!14364) (t!340812 List!44701)) )
))
(declare-fun rules!3756 () List!44701)

(declare-fun r!4008 () Rule!14364)

(declare-fun contains!8954 (List!44701 Rule!14364) Bool)

(assert (=> b!4121782 (= res!1684111 (contains!8954 rules!3756 r!4008))))

(declare-fun res!1684112 () Bool)

(assert (=> start!390862 (=> (not res!1684112) (not e!2557578))))

(declare-datatypes ((LexerInterface!6871 0))(
  ( (LexerInterfaceExt!6868 (__x!27242 Int)) (Lexer!6869) )
))
(declare-fun thiss!25645 () LexerInterface!6871)

(get-info :version)

(assert (=> start!390862 (= res!1684112 ((_ is Lexer!6869) thiss!25645))))

(assert (=> start!390862 e!2557578))

(declare-fun e!2557579 () Bool)

(assert (=> start!390862 e!2557579))

(declare-fun e!2557573 () Bool)

(assert (=> start!390862 e!2557573))

(assert (=> start!390862 true))

(declare-fun e!2557584 () Bool)

(assert (=> start!390862 e!2557584))

(declare-fun e!2557588 () Bool)

(assert (=> start!390862 e!2557588))

(declare-fun e!2557583 () Bool)

(assert (=> start!390862 e!2557583))

(declare-fun b!4121783 () Bool)

(declare-fun tp!1256045 () Bool)

(declare-fun e!2557582 () Bool)

(declare-fun inv!59158 (String!51310) Bool)

(declare-fun inv!59160 (TokenValueInjection!14452) Bool)

(assert (=> b!4121783 (= e!2557584 (and tp!1256045 (inv!59158 (tag!8142 r!4008)) (inv!59160 (transformation!7282 r!4008)) e!2557582))))

(declare-fun b!4121784 () Bool)

(declare-fun e!2557571 () Bool)

(declare-fun e!2557576 () Bool)

(assert (=> b!4121784 (= e!2557571 e!2557576)))

(declare-fun res!1684122 () Bool)

(assert (=> b!4121784 (=> res!1684122 e!2557576)))

(declare-fun rBis!149 () Rule!14364)

(declare-fun p!2912 () List!44700)

(declare-fun matchR!6018 (Regex!12187 List!44700) Bool)

(assert (=> b!4121784 (= res!1684122 (matchR!6018 (regex!7282 rBis!149) p!2912))))

(declare-fun e!2557572 () Bool)

(assert (=> b!4121784 e!2557572))

(declare-fun res!1684113 () Bool)

(assert (=> b!4121784 (=> (not res!1684113) (not e!2557572))))

(declare-fun lt!1470514 () List!44700)

(declare-fun lt!1470510 () Int)

(declare-fun size!32996 (List!44700) Int)

(assert (=> b!4121784 (= res!1684113 (<= (size!32996 lt!1470514) lt!1470510))))

(declare-fun lt!1470508 () List!44700)

(declare-datatypes ((Token!13494 0))(
  ( (Token!13495 (value!228091 TokenValue!7512) (rule!10358 Rule!14364) (size!32997 Int) (originalCharacters!7778 List!44700)) )
))
(declare-datatypes ((tuple2!43042 0))(
  ( (tuple2!43043 (_1!24655 Token!13494) (_2!24655 List!44700)) )
))
(declare-fun lt!1470519 () tuple2!43042)

(declare-datatypes ((Unit!63923 0))(
  ( (Unit!63924) )
))
(declare-fun lt!1470522 () Unit!63923)

(declare-fun lt!1470509 () Token!13494)

(declare-fun input!3238 () List!44700)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!4 (LexerInterface!6871 List!44701 List!44700 Token!13494 List!44700 List!44700 List!44700 List!44700 Rule!14364 Token!13494) Unit!63923)

(declare-fun getSuffix!2546 (List!44700 List!44700) List!44700)

(assert (=> b!4121784 (= lt!1470522 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!4 thiss!25645 rules!3756 p!2912 lt!1470509 input!3238 lt!1470508 lt!1470514 (getSuffix!2546 input!3238 lt!1470514) rBis!149 (_1!24655 lt!1470519)))))

(declare-fun lt!1470521 () BalanceConc!26580)

(declare-fun list!16357 (BalanceConc!26580) List!44700)

(assert (=> b!4121784 (= lt!1470514 (list!16357 lt!1470521))))

(declare-fun b!4121785 () Bool)

(declare-fun res!1684118 () Bool)

(assert (=> b!4121785 (=> (not res!1684118) (not e!2557578))))

(declare-fun isEmpty!26520 (List!44700) Bool)

(assert (=> b!4121785 (= res!1684118 (not (isEmpty!26520 p!2912)))))

(declare-fun b!4121786 () Bool)

(declare-fun res!1684123 () Bool)

(declare-fun e!2557575 () Bool)

(assert (=> b!4121786 (=> (not res!1684123) (not e!2557575))))

(declare-fun getIndex!630 (List!44701 Rule!14364) Int)

(assert (=> b!4121786 (= res!1684123 (< (getIndex!630 rules!3756 rBis!149) (getIndex!630 rules!3756 r!4008)))))

(declare-fun b!4121787 () Bool)

(declare-fun e!2557581 () Bool)

(declare-fun tp!1256047 () Bool)

(declare-fun e!2557570 () Bool)

(assert (=> b!4121787 (= e!2557570 (and tp!1256047 (inv!59158 (tag!8142 (h!49997 rules!3756))) (inv!59160 (transformation!7282 (h!49997 rules!3756))) e!2557581))))

(declare-fun b!4121788 () Bool)

(declare-fun res!1684117 () Bool)

(assert (=> b!4121788 (=> (not res!1684117) (not e!2557578))))

(declare-fun isPrefix!4217 (List!44700 List!44700) Bool)

(assert (=> b!4121788 (= res!1684117 (isPrefix!4217 p!2912 input!3238))))

(declare-fun e!2557580 () Bool)

(assert (=> b!4121789 (= e!2557580 (and tp!1256044 tp!1256049))))

(declare-fun b!4121790 () Bool)

(declare-fun tp!1256048 () Bool)

(assert (=> b!4121790 (= e!2557579 (and e!2557570 tp!1256048))))

(declare-fun b!4121791 () Bool)

(declare-fun validRegex!5478 (Regex!12187) Bool)

(assert (=> b!4121791 (= e!2557576 (validRegex!5478 (regex!7282 rBis!149)))))

(declare-fun b!4121792 () Bool)

(declare-fun tp!1256039 () Bool)

(assert (=> b!4121792 (= e!2557583 (and tp!1256039 (inv!59158 (tag!8142 rBis!149)) (inv!59160 (transformation!7282 rBis!149)) e!2557580))))

(declare-fun b!4121793 () Bool)

(declare-fun tp_is_empty!21297 () Bool)

(declare-fun tp!1256046 () Bool)

(assert (=> b!4121793 (= e!2557588 (and tp_is_empty!21297 tp!1256046))))

(declare-fun b!4121794 () Bool)

(declare-fun e!2557577 () Bool)

(assert (=> b!4121794 (= e!2557577 e!2557571)))

(declare-fun res!1684115 () Bool)

(assert (=> b!4121794 (=> res!1684115 e!2557571)))

(declare-fun size!32998 (BalanceConc!26580) Int)

(assert (=> b!4121794 (= res!1684115 (<= (size!32998 lt!1470521) lt!1470510))))

(declare-fun charsOf!4904 (Token!13494) BalanceConc!26580)

(assert (=> b!4121794 (= lt!1470521 (charsOf!4904 (_1!24655 lt!1470519)))))

(declare-datatypes ((Option!9590 0))(
  ( (None!9589) (Some!9589 (v!40177 tuple2!43042)) )
))
(declare-fun lt!1470516 () Option!9590)

(declare-fun get!14541 (Option!9590) tuple2!43042)

(assert (=> b!4121794 (= lt!1470519 (get!14541 lt!1470516))))

(assert (=> b!4121795 (= e!2557582 (and tp!1256041 tp!1256040))))

(declare-fun b!4121796 () Bool)

(declare-fun res!1684109 () Bool)

(assert (=> b!4121796 (=> (not res!1684109) (not e!2557575))))

(assert (=> b!4121796 (= res!1684109 (matchR!6018 (regex!7282 r!4008) p!2912))))

(declare-fun b!4121797 () Bool)

(declare-fun res!1684119 () Bool)

(assert (=> b!4121797 (=> (not res!1684119) (not e!2557578))))

(declare-fun isEmpty!26521 (List!44701) Bool)

(assert (=> b!4121797 (= res!1684119 (not (isEmpty!26521 rules!3756)))))

(declare-fun b!4121798 () Bool)

(declare-fun res!1684124 () Bool)

(assert (=> b!4121798 (=> (not res!1684124) (not e!2557578))))

(assert (=> b!4121798 (= res!1684124 (contains!8954 rules!3756 rBis!149))))

(assert (=> b!4121799 (= e!2557581 (and tp!1256050 tp!1256042))))

(declare-fun b!4121800 () Bool)

(assert (=> b!4121800 (= e!2557578 e!2557575)))

(declare-fun res!1684114 () Bool)

(assert (=> b!4121800 (=> (not res!1684114) (not e!2557575))))

(declare-fun maxPrefix!4063 (LexerInterface!6871 List!44701 List!44700) Option!9590)

(assert (=> b!4121800 (= res!1684114 (= (maxPrefix!4063 thiss!25645 rules!3756 input!3238) (Some!9589 (tuple2!43043 lt!1470509 lt!1470508))))))

(assert (=> b!4121800 (= lt!1470508 (getSuffix!2546 input!3238 p!2912))))

(declare-fun lt!1470520 () TokenValue!7512)

(assert (=> b!4121800 (= lt!1470509 (Token!13495 lt!1470520 r!4008 lt!1470510 p!2912))))

(assert (=> b!4121800 (= lt!1470510 (size!32996 p!2912))))

(declare-fun lt!1470512 () BalanceConc!26580)

(declare-fun apply!10355 (TokenValueInjection!14452 BalanceConc!26580) TokenValue!7512)

(assert (=> b!4121800 (= lt!1470520 (apply!10355 (transformation!7282 r!4008) lt!1470512))))

(declare-fun lt!1470518 () Unit!63923)

(declare-fun lemmaSemiInverse!2140 (TokenValueInjection!14452 BalanceConc!26580) Unit!63923)

(assert (=> b!4121800 (= lt!1470518 (lemmaSemiInverse!2140 (transformation!7282 r!4008) lt!1470512))))

(declare-fun seqFromList!5399 (List!44700) BalanceConc!26580)

(assert (=> b!4121800 (= lt!1470512 (seqFromList!5399 p!2912))))

(declare-fun b!4121801 () Bool)

(declare-fun e!2557574 () Bool)

(assert (=> b!4121801 (= e!2557574 e!2557577)))

(declare-fun res!1684116 () Bool)

(assert (=> b!4121801 (=> res!1684116 e!2557577)))

(declare-fun isEmpty!26522 (Option!9590) Bool)

(assert (=> b!4121801 (= res!1684116 (isEmpty!26522 lt!1470516))))

(declare-fun maxPrefixOneRule!3013 (LexerInterface!6871 Rule!14364 List!44700) Option!9590)

(assert (=> b!4121801 (= lt!1470516 (maxPrefixOneRule!3013 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4121801 (not (= rBis!149 r!4008))))

(declare-fun lt!1470511 () Unit!63923)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!22 (LexerInterface!6871 List!44701 Rule!14364 Rule!14364) Unit!63923)

(assert (=> b!4121801 (= lt!1470511 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!22 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6441 (List!44701) List!44701)

(assert (=> b!4121801 (contains!8954 (tail!6441 rules!3756) r!4008)))

(declare-fun lt!1470515 () Unit!63923)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!24 (List!44701 Rule!14364 Rule!14364) Unit!63923)

(assert (=> b!4121801 (= lt!1470515 (lemmaGetIndexBiggerAndHeadEqThenTailContains!24 rules!3756 rBis!149 r!4008))))

(declare-fun b!4121802 () Bool)

(declare-fun res!1684120 () Bool)

(assert (=> b!4121802 (=> (not res!1684120) (not e!2557578))))

(declare-fun rulesInvariant!6168 (LexerInterface!6871 List!44701) Bool)

(assert (=> b!4121802 (= res!1684120 (rulesInvariant!6168 thiss!25645 rules!3756))))

(declare-fun b!4121803 () Bool)

(assert (=> b!4121803 (= e!2557572 false)))

(declare-fun b!4121804 () Bool)

(declare-fun tp!1256043 () Bool)

(assert (=> b!4121804 (= e!2557573 (and tp_is_empty!21297 tp!1256043))))

(declare-fun b!4121805 () Bool)

(assert (=> b!4121805 (= e!2557575 (not e!2557574))))

(declare-fun res!1684110 () Bool)

(assert (=> b!4121805 (=> res!1684110 e!2557574)))

(assert (=> b!4121805 (= res!1684110 (or (not ((_ is Cons!44577) rules!3756)) (not (= (h!49997 rules!3756) rBis!149))))))

(declare-fun lt!1470513 () Unit!63923)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2134 (LexerInterface!6871 Rule!14364 List!44701) Unit!63923)

(assert (=> b!4121805 (= lt!1470513 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2134 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3090 (LexerInterface!6871 Rule!14364) Bool)

(assert (=> b!4121805 (ruleValid!3090 thiss!25645 rBis!149)))

(declare-fun lt!1470517 () Unit!63923)

(assert (=> b!4121805 (= lt!1470517 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2134 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4121806 () Bool)

(declare-fun res!1684121 () Bool)

(assert (=> b!4121806 (=> (not res!1684121) (not e!2557575))))

(assert (=> b!4121806 (= res!1684121 (ruleValid!3090 thiss!25645 r!4008))))

(assert (= (and start!390862 res!1684112) b!4121788))

(assert (= (and b!4121788 res!1684117) b!4121797))

(assert (= (and b!4121797 res!1684119) b!4121802))

(assert (= (and b!4121802 res!1684120) b!4121782))

(assert (= (and b!4121782 res!1684111) b!4121798))

(assert (= (and b!4121798 res!1684124) b!4121785))

(assert (= (and b!4121785 res!1684118) b!4121800))

(assert (= (and b!4121800 res!1684114) b!4121796))

(assert (= (and b!4121796 res!1684109) b!4121786))

(assert (= (and b!4121786 res!1684123) b!4121806))

(assert (= (and b!4121806 res!1684121) b!4121805))

(assert (= (and b!4121805 (not res!1684110)) b!4121801))

(assert (= (and b!4121801 (not res!1684116)) b!4121794))

(assert (= (and b!4121794 (not res!1684115)) b!4121784))

(assert (= (and b!4121784 res!1684113) b!4121803))

(assert (= (and b!4121784 (not res!1684122)) b!4121791))

(assert (= b!4121787 b!4121799))

(assert (= b!4121790 b!4121787))

(assert (= (and start!390862 ((_ is Cons!44577) rules!3756)) b!4121790))

(assert (= (and start!390862 ((_ is Cons!44576) p!2912)) b!4121804))

(assert (= b!4121783 b!4121795))

(assert (= start!390862 b!4121783))

(assert (= (and start!390862 ((_ is Cons!44576) input!3238)) b!4121793))

(assert (= b!4121792 b!4121789))

(assert (= start!390862 b!4121792))

(declare-fun m!4720881 () Bool)

(assert (=> b!4121783 m!4720881))

(declare-fun m!4720883 () Bool)

(assert (=> b!4121783 m!4720883))

(declare-fun m!4720885 () Bool)

(assert (=> b!4121800 m!4720885))

(declare-fun m!4720887 () Bool)

(assert (=> b!4121800 m!4720887))

(declare-fun m!4720889 () Bool)

(assert (=> b!4121800 m!4720889))

(declare-fun m!4720891 () Bool)

(assert (=> b!4121800 m!4720891))

(declare-fun m!4720893 () Bool)

(assert (=> b!4121800 m!4720893))

(declare-fun m!4720895 () Bool)

(assert (=> b!4121800 m!4720895))

(declare-fun m!4720897 () Bool)

(assert (=> b!4121788 m!4720897))

(declare-fun m!4720899 () Bool)

(assert (=> b!4121784 m!4720899))

(declare-fun m!4720901 () Bool)

(assert (=> b!4121784 m!4720901))

(declare-fun m!4720903 () Bool)

(assert (=> b!4121784 m!4720903))

(declare-fun m!4720905 () Bool)

(assert (=> b!4121784 m!4720905))

(assert (=> b!4121784 m!4720905))

(declare-fun m!4720907 () Bool)

(assert (=> b!4121784 m!4720907))

(declare-fun m!4720909 () Bool)

(assert (=> b!4121801 m!4720909))

(declare-fun m!4720911 () Bool)

(assert (=> b!4121801 m!4720911))

(declare-fun m!4720913 () Bool)

(assert (=> b!4121801 m!4720913))

(assert (=> b!4121801 m!4720909))

(declare-fun m!4720915 () Bool)

(assert (=> b!4121801 m!4720915))

(declare-fun m!4720917 () Bool)

(assert (=> b!4121801 m!4720917))

(declare-fun m!4720919 () Bool)

(assert (=> b!4121801 m!4720919))

(declare-fun m!4720921 () Bool)

(assert (=> b!4121806 m!4720921))

(declare-fun m!4720923 () Bool)

(assert (=> b!4121786 m!4720923))

(declare-fun m!4720925 () Bool)

(assert (=> b!4121786 m!4720925))

(declare-fun m!4720927 () Bool)

(assert (=> b!4121782 m!4720927))

(declare-fun m!4720929 () Bool)

(assert (=> b!4121802 m!4720929))

(declare-fun m!4720931 () Bool)

(assert (=> b!4121805 m!4720931))

(declare-fun m!4720933 () Bool)

(assert (=> b!4121805 m!4720933))

(declare-fun m!4720935 () Bool)

(assert (=> b!4121805 m!4720935))

(declare-fun m!4720937 () Bool)

(assert (=> b!4121792 m!4720937))

(declare-fun m!4720939 () Bool)

(assert (=> b!4121792 m!4720939))

(declare-fun m!4720941 () Bool)

(assert (=> b!4121787 m!4720941))

(declare-fun m!4720943 () Bool)

(assert (=> b!4121787 m!4720943))

(declare-fun m!4720945 () Bool)

(assert (=> b!4121785 m!4720945))

(declare-fun m!4720947 () Bool)

(assert (=> b!4121794 m!4720947))

(declare-fun m!4720949 () Bool)

(assert (=> b!4121794 m!4720949))

(declare-fun m!4720951 () Bool)

(assert (=> b!4121794 m!4720951))

(declare-fun m!4720953 () Bool)

(assert (=> b!4121791 m!4720953))

(declare-fun m!4720955 () Bool)

(assert (=> b!4121797 m!4720955))

(declare-fun m!4720957 () Bool)

(assert (=> b!4121796 m!4720957))

(declare-fun m!4720959 () Bool)

(assert (=> b!4121798 m!4720959))

(check-sat (not b!4121783) (not b!4121804) b_and!318869 b_and!318877 b_and!318875 (not b!4121805) b_and!318879 (not b!4121782) (not b!4121792) (not b!4121806) b_and!318873 (not b!4121796) (not b!4121802) (not b!4121798) (not b!4121800) (not b!4121791) (not b!4121788) b_and!318871 (not b!4121794) (not b!4121793) (not b_next!117279) (not b_next!117275) (not b!4121797) (not b_next!117281) (not b!4121787) (not b!4121785) (not b_next!117277) (not b!4121786) (not b!4121790) tp_is_empty!21297 (not b_next!117285) (not b!4121801) (not b!4121784) (not b_next!117283))
(check-sat b_and!318869 b_and!318877 b_and!318875 (not b_next!117275) b_and!318879 (not b_next!117281) b_and!318873 (not b_next!117277) (not b_next!117285) (not b_next!117283) b_and!318871 (not b_next!117279))
