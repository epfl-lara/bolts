; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390326 () Bool)

(assert start!390326)

(declare-fun b!4118114 () Bool)

(declare-fun b_free!116291 () Bool)

(declare-fun b_next!116995 () Bool)

(assert (=> b!4118114 (= b_free!116291 (not b_next!116995))))

(declare-fun tp!1254877 () Bool)

(declare-fun b_and!318373 () Bool)

(assert (=> b!4118114 (= tp!1254877 b_and!318373)))

(declare-fun b_free!116293 () Bool)

(declare-fun b_next!116997 () Bool)

(assert (=> b!4118114 (= b_free!116293 (not b_next!116997))))

(declare-fun tp!1254876 () Bool)

(declare-fun b_and!318375 () Bool)

(assert (=> b!4118114 (= tp!1254876 b_and!318375)))

(declare-fun b!4118126 () Bool)

(declare-fun b_free!116295 () Bool)

(declare-fun b_next!116999 () Bool)

(assert (=> b!4118126 (= b_free!116295 (not b_next!116999))))

(declare-fun tp!1254878 () Bool)

(declare-fun b_and!318377 () Bool)

(assert (=> b!4118126 (= tp!1254878 b_and!318377)))

(declare-fun b_free!116297 () Bool)

(declare-fun b_next!117001 () Bool)

(assert (=> b!4118126 (= b_free!116297 (not b_next!117001))))

(declare-fun tp!1254879 () Bool)

(declare-fun b_and!318379 () Bool)

(assert (=> b!4118126 (= tp!1254879 b_and!318379)))

(declare-fun b!4118124 () Bool)

(declare-fun b_free!116299 () Bool)

(declare-fun b_next!117003 () Bool)

(assert (=> b!4118124 (= b_free!116299 (not b_next!117003))))

(declare-fun tp!1254873 () Bool)

(declare-fun b_and!318381 () Bool)

(assert (=> b!4118124 (= tp!1254873 b_and!318381)))

(declare-fun b_free!116301 () Bool)

(declare-fun b_next!117005 () Bool)

(assert (=> b!4118124 (= b_free!116301 (not b_next!117005))))

(declare-fun tp!1254881 () Bool)

(declare-fun b_and!318383 () Bool)

(assert (=> b!4118124 (= tp!1254881 b_and!318383)))

(declare-fun b!4118106 () Bool)

(declare-fun res!1682091 () Bool)

(declare-fun e!2555272 () Bool)

(assert (=> b!4118106 (=> (not res!1682091) (not e!2555272))))

(declare-datatypes ((LexerInterface!6851 0))(
  ( (LexerInterfaceExt!6848 (__x!27201 Int)) (Lexer!6849) )
))
(declare-fun thiss!25645 () LexerInterface!6851)

(declare-datatypes ((List!44629 0))(
  ( (Nil!44505) (Cons!44505 (h!49925 (_ BitVec 16)) (t!340532 List!44629)) )
))
(declare-datatypes ((TokenValue!7492 0))(
  ( (FloatLiteralValue!14984 (text!52889 List!44629)) (TokenValueExt!7491 (__x!27202 Int)) (Broken!37460 (value!227495 List!44629)) (Object!7615) (End!7492) (Def!7492) (Underscore!7492) (Match!7492) (Else!7492) (Error!7492) (Case!7492) (If!7492) (Extends!7492) (Abstract!7492) (Class!7492) (Val!7492) (DelimiterValue!14984 (del!7552 List!44629)) (KeywordValue!7498 (value!227496 List!44629)) (CommentValue!14984 (value!227497 List!44629)) (WhitespaceValue!14984 (value!227498 List!44629)) (IndentationValue!7492 (value!227499 List!44629)) (String!51209) (Int32!7492) (Broken!37461 (value!227500 List!44629)) (Boolean!7493) (Unit!63862) (OperatorValue!7495 (op!7552 List!44629)) (IdentifierValue!14984 (value!227501 List!44629)) (IdentifierValue!14985 (value!227502 List!44629)) (WhitespaceValue!14985 (value!227503 List!44629)) (True!14984) (False!14984) (Broken!37462 (value!227504 List!44629)) (Broken!37463 (value!227505 List!44629)) (True!14985) (RightBrace!7492) (RightBracket!7492) (Colon!7492) (Null!7492) (Comma!7492) (LeftBracket!7492) (False!14985) (LeftBrace!7492) (ImaginaryLiteralValue!7492 (text!52890 List!44629)) (StringLiteralValue!22476 (value!227506 List!44629)) (EOFValue!7492 (value!227507 List!44629)) (IdentValue!7492 (value!227508 List!44629)) (DelimiterValue!14985 (value!227509 List!44629)) (DedentValue!7492 (value!227510 List!44629)) (NewLineValue!7492 (value!227511 List!44629)) (IntegerValue!22476 (value!227512 (_ BitVec 32)) (text!52891 List!44629)) (IntegerValue!22477 (value!227513 Int) (text!52892 List!44629)) (Times!7492) (Or!7492) (Equal!7492) (Minus!7492) (Broken!37464 (value!227514 List!44629)) (And!7492) (Div!7492) (LessEqual!7492) (Mod!7492) (Concat!19659) (Not!7492) (Plus!7492) (SpaceValue!7492 (value!227515 List!44629)) (IntegerValue!22478 (value!227516 Int) (text!52893 List!44629)) (StringLiteralValue!22477 (text!52894 List!44629)) (FloatLiteralValue!14985 (text!52895 List!44629)) (BytesLiteralValue!7492 (value!227517 List!44629)) (CommentValue!14985 (value!227518 List!44629)) (StringLiteralValue!22478 (value!227519 List!44629)) (ErrorTokenValue!7492 (msg!7553 List!44629)) )
))
(declare-datatypes ((C!24520 0))(
  ( (C!24521 (val!14370 Int)) )
))
(declare-datatypes ((List!44630 0))(
  ( (Nil!44506) (Cons!44506 (h!49926 C!24520) (t!340533 List!44630)) )
))
(declare-datatypes ((IArray!26951 0))(
  ( (IArray!26952 (innerList!13533 List!44630)) )
))
(declare-datatypes ((Conc!13473 0))(
  ( (Node!13473 (left!33338 Conc!13473) (right!33668 Conc!13473) (csize!27176 Int) (cheight!13684 Int)) (Leaf!20819 (xs!16779 IArray!26951) (csize!27177 Int)) (Empty!13473) )
))
(declare-datatypes ((BalanceConc!26540 0))(
  ( (BalanceConc!26541 (c!707296 Conc!13473)) )
))
(declare-datatypes ((Regex!12167 0))(
  ( (ElementMatch!12167 (c!707297 C!24520)) (Concat!19660 (regOne!24846 Regex!12167) (regTwo!24846 Regex!12167)) (EmptyExpr!12167) (Star!12167 (reg!12496 Regex!12167)) (EmptyLang!12167) (Union!12167 (regOne!24847 Regex!12167) (regTwo!24847 Regex!12167)) )
))
(declare-datatypes ((String!51210 0))(
  ( (String!51211 (value!227520 String)) )
))
(declare-datatypes ((TokenValueInjection!14412 0))(
  ( (TokenValueInjection!14413 (toValue!9914 Int) (toChars!9773 Int)) )
))
(declare-datatypes ((Rule!14324 0))(
  ( (Rule!14325 (regex!7262 Regex!12167) (tag!8122 String!51210) (isSeparator!7262 Bool) (transformation!7262 TokenValueInjection!14412)) )
))
(declare-fun r!4008 () Rule!14324)

(declare-fun ruleValid!3070 (LexerInterface!6851 Rule!14324) Bool)

(assert (=> b!4118106 (= res!1682091 (ruleValid!3070 thiss!25645 r!4008))))

(declare-fun b!4118107 () Bool)

(declare-fun res!1682099 () Bool)

(declare-fun e!2555280 () Bool)

(assert (=> b!4118107 (=> (not res!1682099) (not e!2555280))))

(declare-datatypes ((List!44631 0))(
  ( (Nil!44507) (Cons!44507 (h!49927 Rule!14324) (t!340534 List!44631)) )
))
(declare-fun rules!3756 () List!44631)

(declare-fun contains!8934 (List!44631 Rule!14324) Bool)

(assert (=> b!4118107 (= res!1682099 (contains!8934 rules!3756 r!4008))))

(declare-fun b!4118108 () Bool)

(declare-fun res!1682101 () Bool)

(assert (=> b!4118108 (=> (not res!1682101) (not e!2555280))))

(declare-fun isEmpty!26463 (List!44631) Bool)

(assert (=> b!4118108 (= res!1682101 (not (isEmpty!26463 rules!3756)))))

(declare-fun res!1682090 () Bool)

(assert (=> start!390326 (=> (not res!1682090) (not e!2555280))))

(get-info :version)

(assert (=> start!390326 (= res!1682090 ((_ is Lexer!6849) thiss!25645))))

(assert (=> start!390326 e!2555280))

(declare-fun e!2555279 () Bool)

(assert (=> start!390326 e!2555279))

(declare-fun e!2555268 () Bool)

(assert (=> start!390326 e!2555268))

(assert (=> start!390326 true))

(declare-fun e!2555274 () Bool)

(assert (=> start!390326 e!2555274))

(declare-fun e!2555276 () Bool)

(assert (=> start!390326 e!2555276))

(declare-fun e!2555275 () Bool)

(assert (=> start!390326 e!2555275))

(declare-fun b!4118109 () Bool)

(declare-fun e!2555278 () Bool)

(assert (=> b!4118109 (= e!2555272 (not e!2555278))))

(declare-fun res!1682095 () Bool)

(assert (=> b!4118109 (=> res!1682095 e!2555278)))

(declare-fun rBis!149 () Rule!14324)

(assert (=> b!4118109 (= res!1682095 (or (not ((_ is Cons!44507) rules!3756)) (not (= (h!49927 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!63863 0))(
  ( (Unit!63864) )
))
(declare-fun lt!1469175 () Unit!63863)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2114 (LexerInterface!6851 Rule!14324 List!44631) Unit!63863)

(assert (=> b!4118109 (= lt!1469175 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2114 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4118109 (ruleValid!3070 thiss!25645 rBis!149)))

(declare-fun lt!1469178 () Unit!63863)

(assert (=> b!4118109 (= lt!1469178 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2114 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4118110 () Bool)

(declare-fun res!1682093 () Bool)

(assert (=> b!4118110 (=> (not res!1682093) (not e!2555272))))

(declare-fun p!2912 () List!44630)

(declare-fun matchR!5998 (Regex!12167 List!44630) Bool)

(assert (=> b!4118110 (= res!1682093 (matchR!5998 (regex!7262 r!4008) p!2912))))

(declare-fun b!4118111 () Bool)

(declare-fun res!1682094 () Bool)

(assert (=> b!4118111 (=> (not res!1682094) (not e!2555272))))

(declare-fun getIndex!610 (List!44631 Rule!14324) Int)

(assert (=> b!4118111 (= res!1682094 (< (getIndex!610 rules!3756 rBis!149) (getIndex!610 rules!3756 r!4008)))))

(declare-fun b!4118112 () Bool)

(declare-fun res!1682100 () Bool)

(assert (=> b!4118112 (=> (not res!1682100) (not e!2555280))))

(declare-fun isEmpty!26464 (List!44630) Bool)

(assert (=> b!4118112 (= res!1682100 (not (isEmpty!26464 p!2912)))))

(declare-fun b!4118113 () Bool)

(declare-fun res!1682096 () Bool)

(assert (=> b!4118113 (=> (not res!1682096) (not e!2555280))))

(declare-fun rulesInvariant!6148 (LexerInterface!6851 List!44631) Bool)

(assert (=> b!4118113 (= res!1682096 (rulesInvariant!6148 thiss!25645 rules!3756))))

(declare-fun e!2555266 () Bool)

(assert (=> b!4118114 (= e!2555266 (and tp!1254877 tp!1254876))))

(declare-fun b!4118115 () Bool)

(declare-fun e!2555277 () Bool)

(declare-fun tp!1254882 () Bool)

(assert (=> b!4118115 (= e!2555279 (and e!2555277 tp!1254882))))

(declare-fun b!4118116 () Bool)

(declare-fun tp!1254875 () Bool)

(declare-fun e!2555267 () Bool)

(declare-fun inv!59088 (String!51210) Bool)

(declare-fun inv!59090 (TokenValueInjection!14412) Bool)

(assert (=> b!4118116 (= e!2555277 (and tp!1254875 (inv!59088 (tag!8122 (h!49927 rules!3756))) (inv!59090 (transformation!7262 (h!49927 rules!3756))) e!2555267))))

(declare-fun b!4118117 () Bool)

(assert (=> b!4118117 (= e!2555280 e!2555272)))

(declare-fun res!1682092 () Bool)

(assert (=> b!4118117 (=> (not res!1682092) (not e!2555272))))

(declare-fun input!3238 () List!44630)

(declare-fun lt!1469174 () BalanceConc!26540)

(declare-datatypes ((Token!13454 0))(
  ( (Token!13455 (value!227521 TokenValue!7492) (rule!10328 Rule!14324) (size!32933 Int) (originalCharacters!7758 List!44630)) )
))
(declare-datatypes ((tuple2!42982 0))(
  ( (tuple2!42983 (_1!24625 Token!13454) (_2!24625 List!44630)) )
))
(declare-datatypes ((Option!9570 0))(
  ( (None!9569) (Some!9569 (v!40147 tuple2!42982)) )
))
(declare-fun maxPrefix!4043 (LexerInterface!6851 List!44631 List!44630) Option!9570)

(declare-fun apply!10335 (TokenValueInjection!14412 BalanceConc!26540) TokenValue!7492)

(declare-fun size!32934 (List!44630) Int)

(declare-fun getSuffix!2526 (List!44630 List!44630) List!44630)

(assert (=> b!4118117 (= res!1682092 (= (maxPrefix!4043 thiss!25645 rules!3756 input!3238) (Some!9569 (tuple2!42983 (Token!13455 (apply!10335 (transformation!7262 r!4008) lt!1469174) r!4008 (size!32934 p!2912) p!2912) (getSuffix!2526 input!3238 p!2912)))))))

(declare-fun lt!1469177 () Unit!63863)

(declare-fun lemmaSemiInverse!2120 (TokenValueInjection!14412 BalanceConc!26540) Unit!63863)

(assert (=> b!4118117 (= lt!1469177 (lemmaSemiInverse!2120 (transformation!7262 r!4008) lt!1469174))))

(declare-fun seqFromList!5379 (List!44630) BalanceConc!26540)

(assert (=> b!4118117 (= lt!1469174 (seqFromList!5379 p!2912))))

(declare-fun b!4118118 () Bool)

(declare-fun res!1682098 () Bool)

(assert (=> b!4118118 (=> (not res!1682098) (not e!2555280))))

(assert (=> b!4118118 (= res!1682098 (contains!8934 rules!3756 rBis!149))))

(declare-fun b!4118119 () Bool)

(declare-fun tp!1254880 () Bool)

(assert (=> b!4118119 (= e!2555274 (and tp!1254880 (inv!59088 (tag!8122 r!4008)) (inv!59090 (transformation!7262 r!4008)) e!2555266))))

(declare-fun b!4118120 () Bool)

(declare-fun e!2555269 () Bool)

(declare-fun tp!1254884 () Bool)

(assert (=> b!4118120 (= e!2555275 (and tp!1254884 (inv!59088 (tag!8122 rBis!149)) (inv!59090 (transformation!7262 rBis!149)) e!2555269))))

(declare-fun b!4118121 () Bool)

(declare-fun res!1682097 () Bool)

(assert (=> b!4118121 (=> (not res!1682097) (not e!2555280))))

(declare-fun isPrefix!4197 (List!44630 List!44630) Bool)

(assert (=> b!4118121 (= res!1682097 (isPrefix!4197 p!2912 input!3238))))

(declare-fun b!4118122 () Bool)

(declare-fun tp_is_empty!21257 () Bool)

(declare-fun tp!1254883 () Bool)

(assert (=> b!4118122 (= e!2555276 (and tp_is_empty!21257 tp!1254883))))

(declare-fun b!4118123 () Bool)

(assert (=> b!4118123 (= e!2555278 true)))

(assert (=> b!4118123 (not (= rBis!149 r!4008))))

(declare-fun lt!1469176 () Unit!63863)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!2 (LexerInterface!6851 List!44631 Rule!14324 Rule!14324) Unit!63863)

(assert (=> b!4118123 (= lt!1469176 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!2 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6411 (List!44631) List!44631)

(assert (=> b!4118123 (contains!8934 (tail!6411 rules!3756) r!4008)))

(declare-fun lt!1469173 () Unit!63863)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!4 (List!44631 Rule!14324 Rule!14324) Unit!63863)

(assert (=> b!4118123 (= lt!1469173 (lemmaGetIndexBiggerAndHeadEqThenTailContains!4 rules!3756 rBis!149 r!4008))))

(assert (=> b!4118124 (= e!2555267 (and tp!1254873 tp!1254881))))

(declare-fun b!4118125 () Bool)

(declare-fun tp!1254874 () Bool)

(assert (=> b!4118125 (= e!2555268 (and tp_is_empty!21257 tp!1254874))))

(assert (=> b!4118126 (= e!2555269 (and tp!1254878 tp!1254879))))

(assert (= (and start!390326 res!1682090) b!4118121))

(assert (= (and b!4118121 res!1682097) b!4118108))

(assert (= (and b!4118108 res!1682101) b!4118113))

(assert (= (and b!4118113 res!1682096) b!4118107))

(assert (= (and b!4118107 res!1682099) b!4118118))

(assert (= (and b!4118118 res!1682098) b!4118112))

(assert (= (and b!4118112 res!1682100) b!4118117))

(assert (= (and b!4118117 res!1682092) b!4118110))

(assert (= (and b!4118110 res!1682093) b!4118111))

(assert (= (and b!4118111 res!1682094) b!4118106))

(assert (= (and b!4118106 res!1682091) b!4118109))

(assert (= (and b!4118109 (not res!1682095)) b!4118123))

(assert (= b!4118116 b!4118124))

(assert (= b!4118115 b!4118116))

(assert (= (and start!390326 ((_ is Cons!44507) rules!3756)) b!4118115))

(assert (= (and start!390326 ((_ is Cons!44506) p!2912)) b!4118125))

(assert (= b!4118119 b!4118114))

(assert (= start!390326 b!4118119))

(assert (= (and start!390326 ((_ is Cons!44506) input!3238)) b!4118122))

(assert (= b!4118120 b!4118126))

(assert (= start!390326 b!4118120))

(declare-fun m!4717619 () Bool)

(assert (=> b!4118112 m!4717619))

(declare-fun m!4717621 () Bool)

(assert (=> b!4118121 m!4717621))

(declare-fun m!4717623 () Bool)

(assert (=> b!4118116 m!4717623))

(declare-fun m!4717625 () Bool)

(assert (=> b!4118116 m!4717625))

(declare-fun m!4717627 () Bool)

(assert (=> b!4118107 m!4717627))

(declare-fun m!4717629 () Bool)

(assert (=> b!4118110 m!4717629))

(declare-fun m!4717631 () Bool)

(assert (=> b!4118120 m!4717631))

(declare-fun m!4717633 () Bool)

(assert (=> b!4118120 m!4717633))

(declare-fun m!4717635 () Bool)

(assert (=> b!4118118 m!4717635))

(declare-fun m!4717637 () Bool)

(assert (=> b!4118123 m!4717637))

(declare-fun m!4717639 () Bool)

(assert (=> b!4118123 m!4717639))

(assert (=> b!4118123 m!4717639))

(declare-fun m!4717641 () Bool)

(assert (=> b!4118123 m!4717641))

(declare-fun m!4717643 () Bool)

(assert (=> b!4118123 m!4717643))

(declare-fun m!4717645 () Bool)

(assert (=> b!4118111 m!4717645))

(declare-fun m!4717647 () Bool)

(assert (=> b!4118111 m!4717647))

(declare-fun m!4717649 () Bool)

(assert (=> b!4118106 m!4717649))

(declare-fun m!4717651 () Bool)

(assert (=> b!4118108 m!4717651))

(declare-fun m!4717653 () Bool)

(assert (=> b!4118113 m!4717653))

(declare-fun m!4717655 () Bool)

(assert (=> b!4118119 m!4717655))

(declare-fun m!4717657 () Bool)

(assert (=> b!4118119 m!4717657))

(declare-fun m!4717659 () Bool)

(assert (=> b!4118117 m!4717659))

(declare-fun m!4717661 () Bool)

(assert (=> b!4118117 m!4717661))

(declare-fun m!4717663 () Bool)

(assert (=> b!4118117 m!4717663))

(declare-fun m!4717665 () Bool)

(assert (=> b!4118117 m!4717665))

(declare-fun m!4717667 () Bool)

(assert (=> b!4118117 m!4717667))

(declare-fun m!4717669 () Bool)

(assert (=> b!4118117 m!4717669))

(declare-fun m!4717671 () Bool)

(assert (=> b!4118109 m!4717671))

(declare-fun m!4717673 () Bool)

(assert (=> b!4118109 m!4717673))

(declare-fun m!4717675 () Bool)

(assert (=> b!4118109 m!4717675))

(check-sat b_and!318377 (not b!4118118) (not b!4118117) b_and!318381 (not b!4118121) (not b!4118110) (not b!4118116) (not b!4118109) (not b!4118115) (not b!4118120) (not b!4118107) (not b_next!117003) b_and!318383 (not b_next!117001) b_and!318373 (not b!4118125) (not b!4118111) (not b!4118106) (not b!4118119) (not b_next!116999) (not b!4118113) (not b!4118122) (not b_next!117005) (not b!4118112) (not b!4118108) b_and!318379 (not b_next!116995) (not b!4118123) (not b_next!116997) tp_is_empty!21257 b_and!318375)
(check-sat b_and!318377 b_and!318373 b_and!318381 (not b_next!116999) (not b_next!117003) b_and!318383 (not b_next!116997) (not b_next!117001) b_and!318375 (not b_next!117005) b_and!318379 (not b_next!116995))
