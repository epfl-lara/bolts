; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390634 () Bool)

(assert start!390634)

(declare-fun b!4120176 () Bool)

(declare-fun b_free!116435 () Bool)

(declare-fun b_next!117139 () Bool)

(assert (=> b!4120176 (= b_free!116435 (not b_next!117139))))

(declare-fun tp!1255507 () Bool)

(declare-fun b_and!318637 () Bool)

(assert (=> b!4120176 (= tp!1255507 b_and!318637)))

(declare-fun b_free!116437 () Bool)

(declare-fun b_next!117141 () Bool)

(assert (=> b!4120176 (= b_free!116437 (not b_next!117141))))

(declare-fun tp!1255502 () Bool)

(declare-fun b_and!318639 () Bool)

(assert (=> b!4120176 (= tp!1255502 b_and!318639)))

(declare-fun b!4120160 () Bool)

(declare-fun b_free!116439 () Bool)

(declare-fun b_next!117143 () Bool)

(assert (=> b!4120160 (= b_free!116439 (not b_next!117143))))

(declare-fun tp!1255500 () Bool)

(declare-fun b_and!318641 () Bool)

(assert (=> b!4120160 (= tp!1255500 b_and!318641)))

(declare-fun b_free!116441 () Bool)

(declare-fun b_next!117145 () Bool)

(assert (=> b!4120160 (= b_free!116441 (not b_next!117145))))

(declare-fun tp!1255499 () Bool)

(declare-fun b_and!318643 () Bool)

(assert (=> b!4120160 (= tp!1255499 b_and!318643)))

(declare-fun b!4120175 () Bool)

(declare-fun b_free!116443 () Bool)

(declare-fun b_next!117147 () Bool)

(assert (=> b!4120175 (= b_free!116443 (not b_next!117147))))

(declare-fun tp!1255503 () Bool)

(declare-fun b_and!318645 () Bool)

(assert (=> b!4120175 (= tp!1255503 b_and!318645)))

(declare-fun b_free!116445 () Bool)

(declare-fun b_next!117149 () Bool)

(assert (=> b!4120175 (= b_free!116445 (not b_next!117149))))

(declare-fun tp!1255504 () Bool)

(declare-fun b_and!318647 () Bool)

(assert (=> b!4120175 (= tp!1255504 b_and!318647)))

(declare-fun e!2556537 () Bool)

(assert (=> b!4120160 (= e!2556537 (and tp!1255500 tp!1255499))))

(declare-fun e!2556528 () Bool)

(declare-fun tp!1255509 () Bool)

(declare-fun e!2556538 () Bool)

(declare-fun b!4120161 () Bool)

(declare-datatypes ((List!44665 0))(
  ( (Nil!44541) (Cons!44541 (h!49961 (_ BitVec 16)) (t!340680 List!44665)) )
))
(declare-datatypes ((TokenValue!7502 0))(
  ( (FloatLiteralValue!15004 (text!52959 List!44665)) (TokenValueExt!7501 (__x!27221 Int)) (Broken!37510 (value!227780 List!44665)) (Object!7625) (End!7502) (Def!7502) (Underscore!7502) (Match!7502) (Else!7502) (Error!7502) (Case!7502) (If!7502) (Extends!7502) (Abstract!7502) (Class!7502) (Val!7502) (DelimiterValue!15004 (del!7562 List!44665)) (KeywordValue!7508 (value!227781 List!44665)) (CommentValue!15004 (value!227782 List!44665)) (WhitespaceValue!15004 (value!227783 List!44665)) (IndentationValue!7502 (value!227784 List!44665)) (String!51259) (Int32!7502) (Broken!37511 (value!227785 List!44665)) (Boolean!7503) (Unit!63892) (OperatorValue!7505 (op!7562 List!44665)) (IdentifierValue!15004 (value!227786 List!44665)) (IdentifierValue!15005 (value!227787 List!44665)) (WhitespaceValue!15005 (value!227788 List!44665)) (True!15004) (False!15004) (Broken!37512 (value!227789 List!44665)) (Broken!37513 (value!227790 List!44665)) (True!15005) (RightBrace!7502) (RightBracket!7502) (Colon!7502) (Null!7502) (Comma!7502) (LeftBracket!7502) (False!15005) (LeftBrace!7502) (ImaginaryLiteralValue!7502 (text!52960 List!44665)) (StringLiteralValue!22506 (value!227791 List!44665)) (EOFValue!7502 (value!227792 List!44665)) (IdentValue!7502 (value!227793 List!44665)) (DelimiterValue!15005 (value!227794 List!44665)) (DedentValue!7502 (value!227795 List!44665)) (NewLineValue!7502 (value!227796 List!44665)) (IntegerValue!22506 (value!227797 (_ BitVec 32)) (text!52961 List!44665)) (IntegerValue!22507 (value!227798 Int) (text!52962 List!44665)) (Times!7502) (Or!7502) (Equal!7502) (Minus!7502) (Broken!37514 (value!227799 List!44665)) (And!7502) (Div!7502) (LessEqual!7502) (Mod!7502) (Concat!19679) (Not!7502) (Plus!7502) (SpaceValue!7502 (value!227800 List!44665)) (IntegerValue!22508 (value!227801 Int) (text!52963 List!44665)) (StringLiteralValue!22507 (text!52964 List!44665)) (FloatLiteralValue!15005 (text!52965 List!44665)) (BytesLiteralValue!7502 (value!227802 List!44665)) (CommentValue!15005 (value!227803 List!44665)) (StringLiteralValue!22508 (value!227804 List!44665)) (ErrorTokenValue!7502 (msg!7563 List!44665)) )
))
(declare-datatypes ((C!24540 0))(
  ( (C!24541 (val!14380 Int)) )
))
(declare-datatypes ((List!44666 0))(
  ( (Nil!44542) (Cons!44542 (h!49962 C!24540) (t!340681 List!44666)) )
))
(declare-datatypes ((IArray!26971 0))(
  ( (IArray!26972 (innerList!13543 List!44666)) )
))
(declare-datatypes ((Conc!13483 0))(
  ( (Node!13483 (left!33365 Conc!13483) (right!33695 Conc!13483) (csize!27196 Int) (cheight!13694 Int)) (Leaf!20834 (xs!16789 IArray!26971) (csize!27197 Int)) (Empty!13483) )
))
(declare-datatypes ((BalanceConc!26560 0))(
  ( (BalanceConc!26561 (c!707526 Conc!13483)) )
))
(declare-datatypes ((String!51260 0))(
  ( (String!51261 (value!227805 String)) )
))
(declare-datatypes ((Regex!12177 0))(
  ( (ElementMatch!12177 (c!707527 C!24540)) (Concat!19680 (regOne!24866 Regex!12177) (regTwo!24866 Regex!12177)) (EmptyExpr!12177) (Star!12177 (reg!12506 Regex!12177)) (EmptyLang!12177) (Union!12177 (regOne!24867 Regex!12177) (regTwo!24867 Regex!12177)) )
))
(declare-datatypes ((TokenValueInjection!14432 0))(
  ( (TokenValueInjection!14433 (toValue!9924 Int) (toChars!9783 Int)) )
))
(declare-datatypes ((Rule!14344 0))(
  ( (Rule!14345 (regex!7272 Regex!12177) (tag!8132 String!51260) (isSeparator!7272 Bool) (transformation!7272 TokenValueInjection!14432)) )
))
(declare-fun r!4008 () Rule!14344)

(declare-fun inv!59125 (String!51260) Bool)

(declare-fun inv!59127 (TokenValueInjection!14432) Bool)

(assert (=> b!4120161 (= e!2556528 (and tp!1255509 (inv!59125 (tag!8132 r!4008)) (inv!59127 (transformation!7272 r!4008)) e!2556538))))

(declare-fun b!4120162 () Bool)

(declare-fun res!1683209 () Bool)

(declare-fun e!2556534 () Bool)

(assert (=> b!4120162 (=> (not res!1683209) (not e!2556534))))

(declare-datatypes ((LexerInterface!6861 0))(
  ( (LexerInterfaceExt!6858 (__x!27222 Int)) (Lexer!6859) )
))
(declare-fun thiss!25645 () LexerInterface!6861)

(declare-datatypes ((List!44667 0))(
  ( (Nil!44543) (Cons!44543 (h!49963 Rule!14344) (t!340682 List!44667)) )
))
(declare-fun rules!3756 () List!44667)

(declare-fun rulesInvariant!6158 (LexerInterface!6861 List!44667) Bool)

(assert (=> b!4120162 (= res!1683209 (rulesInvariant!6158 thiss!25645 rules!3756))))

(declare-fun b!4120163 () Bool)

(declare-fun e!2556533 () Bool)

(declare-fun e!2556535 () Bool)

(assert (=> b!4120163 (= e!2556533 e!2556535)))

(declare-fun res!1683199 () Bool)

(assert (=> b!4120163 (=> res!1683199 e!2556535)))

(declare-datatypes ((Token!13474 0))(
  ( (Token!13475 (value!227806 TokenValue!7502) (rule!10344 Rule!14344) (size!32962 Int) (originalCharacters!7768 List!44666)) )
))
(declare-datatypes ((tuple2!43014 0))(
  ( (tuple2!43015 (_1!24641 Token!13474) (_2!24641 List!44666)) )
))
(declare-datatypes ((Option!9580 0))(
  ( (None!9579) (Some!9579 (v!40163 tuple2!43014)) )
))
(declare-fun lt!1469826 () Option!9580)

(declare-fun isEmpty!26490 (Option!9580) Bool)

(assert (=> b!4120163 (= res!1683199 (isEmpty!26490 lt!1469826))))

(declare-fun input!3238 () List!44666)

(declare-fun rBis!149 () Rule!14344)

(declare-fun maxPrefixOneRule!3003 (LexerInterface!6861 Rule!14344 List!44666) Option!9580)

(assert (=> b!4120163 (= lt!1469826 (maxPrefixOneRule!3003 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4120163 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!63893 0))(
  ( (Unit!63894) )
))
(declare-fun lt!1469830 () Unit!63893)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!12 (LexerInterface!6861 List!44667 Rule!14344 Rule!14344) Unit!63893)

(assert (=> b!4120163 (= lt!1469830 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!12 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!8944 (List!44667 Rule!14344) Bool)

(declare-fun tail!6427 (List!44667) List!44667)

(assert (=> b!4120163 (contains!8944 (tail!6427 rules!3756) r!4008)))

(declare-fun lt!1469825 () Unit!63893)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!14 (List!44667 Rule!14344 Rule!14344) Unit!63893)

(assert (=> b!4120163 (= lt!1469825 (lemmaGetIndexBiggerAndHeadEqThenTailContains!14 rules!3756 rBis!149 r!4008))))

(declare-fun b!4120165 () Bool)

(declare-fun e!2556529 () Bool)

(declare-fun tp_is_empty!21277 () Bool)

(declare-fun tp!1255510 () Bool)

(assert (=> b!4120165 (= e!2556529 (and tp_is_empty!21277 tp!1255510))))

(declare-fun b!4120166 () Bool)

(declare-fun res!1683200 () Bool)

(assert (=> b!4120166 (=> (not res!1683200) (not e!2556534))))

(assert (=> b!4120166 (= res!1683200 (contains!8944 rules!3756 r!4008))))

(declare-fun b!4120167 () Bool)

(declare-fun res!1683205 () Bool)

(assert (=> b!4120167 (=> (not res!1683205) (not e!2556534))))

(declare-fun p!2912 () List!44666)

(declare-fun isEmpty!26491 (List!44666) Bool)

(assert (=> b!4120167 (= res!1683205 (not (isEmpty!26491 p!2912)))))

(declare-fun tp!1255506 () Bool)

(declare-fun e!2556536 () Bool)

(declare-fun b!4120168 () Bool)

(assert (=> b!4120168 (= e!2556536 (and tp!1255506 (inv!59125 (tag!8132 rBis!149)) (inv!59127 (transformation!7272 rBis!149)) e!2556537))))

(declare-fun b!4120169 () Bool)

(declare-fun res!1683210 () Bool)

(assert (=> b!4120169 (=> res!1683210 e!2556535)))

(declare-fun lt!1469827 () Int)

(declare-fun size!32963 (BalanceConc!26560) Int)

(declare-fun charsOf!4894 (Token!13474) BalanceConc!26560)

(declare-fun get!14526 (Option!9580) tuple2!43014)

(assert (=> b!4120169 (= res!1683210 (<= (size!32963 (charsOf!4894 (_1!24641 (get!14526 lt!1469826)))) lt!1469827))))

(declare-fun b!4120170 () Bool)

(declare-fun res!1683204 () Bool)

(declare-fun e!2556539 () Bool)

(assert (=> b!4120170 (=> (not res!1683204) (not e!2556539))))

(declare-fun matchR!6008 (Regex!12177 List!44666) Bool)

(assert (=> b!4120170 (= res!1683204 (matchR!6008 (regex!7272 r!4008) p!2912))))

(declare-fun b!4120171 () Bool)

(declare-fun res!1683212 () Bool)

(assert (=> b!4120171 (=> (not res!1683212) (not e!2556534))))

(declare-fun isPrefix!4207 (List!44666 List!44666) Bool)

(assert (=> b!4120171 (= res!1683212 (isPrefix!4207 p!2912 input!3238))))

(declare-fun b!4120172 () Bool)

(assert (=> b!4120172 (= e!2556534 e!2556539)))

(declare-fun res!1683201 () Bool)

(assert (=> b!4120172 (=> (not res!1683201) (not e!2556539))))

(declare-fun lt!1469824 () TokenValue!7502)

(declare-fun maxPrefix!4053 (LexerInterface!6861 List!44667 List!44666) Option!9580)

(declare-fun getSuffix!2536 (List!44666 List!44666) List!44666)

(assert (=> b!4120172 (= res!1683201 (= (maxPrefix!4053 thiss!25645 rules!3756 input!3238) (Some!9579 (tuple2!43015 (Token!13475 lt!1469824 r!4008 lt!1469827 p!2912) (getSuffix!2536 input!3238 p!2912)))))))

(declare-fun size!32964 (List!44666) Int)

(assert (=> b!4120172 (= lt!1469827 (size!32964 p!2912))))

(declare-fun lt!1469823 () BalanceConc!26560)

(declare-fun apply!10345 (TokenValueInjection!14432 BalanceConc!26560) TokenValue!7502)

(assert (=> b!4120172 (= lt!1469824 (apply!10345 (transformation!7272 r!4008) lt!1469823))))

(declare-fun lt!1469828 () Unit!63893)

(declare-fun lemmaSemiInverse!2130 (TokenValueInjection!14432 BalanceConc!26560) Unit!63893)

(assert (=> b!4120172 (= lt!1469828 (lemmaSemiInverse!2130 (transformation!7272 r!4008) lt!1469823))))

(declare-fun seqFromList!5389 (List!44666) BalanceConc!26560)

(assert (=> b!4120172 (= lt!1469823 (seqFromList!5389 p!2912))))

(declare-fun b!4120173 () Bool)

(declare-fun res!1683203 () Bool)

(assert (=> b!4120173 (=> (not res!1683203) (not e!2556534))))

(declare-fun isEmpty!26492 (List!44667) Bool)

(assert (=> b!4120173 (= res!1683203 (not (isEmpty!26492 rules!3756)))))

(declare-fun b!4120174 () Bool)

(declare-fun res!1683211 () Bool)

(assert (=> b!4120174 (=> (not res!1683211) (not e!2556539))))

(declare-fun ruleValid!3080 (LexerInterface!6861 Rule!14344) Bool)

(assert (=> b!4120174 (= res!1683211 (ruleValid!3080 thiss!25645 r!4008))))

(assert (=> b!4120175 (= e!2556538 (and tp!1255503 tp!1255504))))

(declare-fun e!2556527 () Bool)

(assert (=> b!4120176 (= e!2556527 (and tp!1255507 tp!1255502))))

(declare-fun b!4120164 () Bool)

(assert (=> b!4120164 (= e!2556539 (not e!2556533))))

(declare-fun res!1683206 () Bool)

(assert (=> b!4120164 (=> res!1683206 e!2556533)))

(get-info :version)

(assert (=> b!4120164 (= res!1683206 (or (not ((_ is Cons!44543) rules!3756)) (not (= (h!49963 rules!3756) rBis!149))))))

(declare-fun lt!1469822 () Unit!63893)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2124 (LexerInterface!6861 Rule!14344 List!44667) Unit!63893)

(assert (=> b!4120164 (= lt!1469822 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2124 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4120164 (ruleValid!3080 thiss!25645 rBis!149)))

(declare-fun lt!1469821 () Unit!63893)

(assert (=> b!4120164 (= lt!1469821 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2124 thiss!25645 rBis!149 rules!3756))))

(declare-fun res!1683202 () Bool)

(assert (=> start!390634 (=> (not res!1683202) (not e!2556534))))

(assert (=> start!390634 (= res!1683202 ((_ is Lexer!6859) thiss!25645))))

(assert (=> start!390634 e!2556534))

(declare-fun e!2556532 () Bool)

(assert (=> start!390634 e!2556532))

(declare-fun e!2556540 () Bool)

(assert (=> start!390634 e!2556540))

(assert (=> start!390634 true))

(assert (=> start!390634 e!2556528))

(assert (=> start!390634 e!2556529))

(assert (=> start!390634 e!2556536))

(declare-fun b!4120177 () Bool)

(declare-fun e!2556530 () Bool)

(declare-fun tp!1255508 () Bool)

(assert (=> b!4120177 (= e!2556532 (and e!2556530 tp!1255508))))

(declare-fun b!4120178 () Bool)

(declare-fun res!1683207 () Bool)

(assert (=> b!4120178 (=> (not res!1683207) (not e!2556534))))

(assert (=> b!4120178 (= res!1683207 (contains!8944 rules!3756 rBis!149))))

(declare-fun b!4120179 () Bool)

(declare-fun tp!1255501 () Bool)

(assert (=> b!4120179 (= e!2556540 (and tp_is_empty!21277 tp!1255501))))

(declare-fun b!4120180 () Bool)

(declare-fun tp!1255505 () Bool)

(assert (=> b!4120180 (= e!2556530 (and tp!1255505 (inv!59125 (tag!8132 (h!49963 rules!3756))) (inv!59127 (transformation!7272 (h!49963 rules!3756))) e!2556527))))

(declare-fun b!4120181 () Bool)

(assert (=> b!4120181 (= e!2556535 true)))

(declare-fun lt!1469829 () Int)

(assert (=> b!4120181 (= lt!1469829 (size!32964 input!3238))))

(declare-fun b!4120182 () Bool)

(declare-fun res!1683208 () Bool)

(assert (=> b!4120182 (=> (not res!1683208) (not e!2556539))))

(declare-fun getIndex!620 (List!44667 Rule!14344) Int)

(assert (=> b!4120182 (= res!1683208 (< (getIndex!620 rules!3756 rBis!149) (getIndex!620 rules!3756 r!4008)))))

(assert (= (and start!390634 res!1683202) b!4120171))

(assert (= (and b!4120171 res!1683212) b!4120173))

(assert (= (and b!4120173 res!1683203) b!4120162))

(assert (= (and b!4120162 res!1683209) b!4120166))

(assert (= (and b!4120166 res!1683200) b!4120178))

(assert (= (and b!4120178 res!1683207) b!4120167))

(assert (= (and b!4120167 res!1683205) b!4120172))

(assert (= (and b!4120172 res!1683201) b!4120170))

(assert (= (and b!4120170 res!1683204) b!4120182))

(assert (= (and b!4120182 res!1683208) b!4120174))

(assert (= (and b!4120174 res!1683211) b!4120164))

(assert (= (and b!4120164 (not res!1683206)) b!4120163))

(assert (= (and b!4120163 (not res!1683199)) b!4120169))

(assert (= (and b!4120169 (not res!1683210)) b!4120181))

(assert (= b!4120180 b!4120176))

(assert (= b!4120177 b!4120180))

(assert (= (and start!390634 ((_ is Cons!44543) rules!3756)) b!4120177))

(assert (= (and start!390634 ((_ is Cons!44542) p!2912)) b!4120179))

(assert (= b!4120161 b!4120175))

(assert (= start!390634 b!4120161))

(assert (= (and start!390634 ((_ is Cons!44542) input!3238)) b!4120165))

(assert (= b!4120168 b!4120160))

(assert (= start!390634 b!4120168))

(declare-fun m!4719351 () Bool)

(assert (=> b!4120174 m!4719351))

(declare-fun m!4719353 () Bool)

(assert (=> b!4120171 m!4719353))

(declare-fun m!4719355 () Bool)

(assert (=> b!4120166 m!4719355))

(declare-fun m!4719357 () Bool)

(assert (=> b!4120169 m!4719357))

(declare-fun m!4719359 () Bool)

(assert (=> b!4120169 m!4719359))

(assert (=> b!4120169 m!4719359))

(declare-fun m!4719361 () Bool)

(assert (=> b!4120169 m!4719361))

(declare-fun m!4719363 () Bool)

(assert (=> b!4120168 m!4719363))

(declare-fun m!4719365 () Bool)

(assert (=> b!4120168 m!4719365))

(declare-fun m!4719367 () Bool)

(assert (=> b!4120164 m!4719367))

(declare-fun m!4719369 () Bool)

(assert (=> b!4120164 m!4719369))

(declare-fun m!4719371 () Bool)

(assert (=> b!4120164 m!4719371))

(declare-fun m!4719373 () Bool)

(assert (=> b!4120182 m!4719373))

(declare-fun m!4719375 () Bool)

(assert (=> b!4120182 m!4719375))

(declare-fun m!4719377 () Bool)

(assert (=> b!4120163 m!4719377))

(declare-fun m!4719379 () Bool)

(assert (=> b!4120163 m!4719379))

(assert (=> b!4120163 m!4719377))

(declare-fun m!4719381 () Bool)

(assert (=> b!4120163 m!4719381))

(declare-fun m!4719383 () Bool)

(assert (=> b!4120163 m!4719383))

(declare-fun m!4719385 () Bool)

(assert (=> b!4120163 m!4719385))

(declare-fun m!4719387 () Bool)

(assert (=> b!4120163 m!4719387))

(declare-fun m!4719389 () Bool)

(assert (=> b!4120167 m!4719389))

(declare-fun m!4719391 () Bool)

(assert (=> b!4120172 m!4719391))

(declare-fun m!4719393 () Bool)

(assert (=> b!4120172 m!4719393))

(declare-fun m!4719395 () Bool)

(assert (=> b!4120172 m!4719395))

(declare-fun m!4719397 () Bool)

(assert (=> b!4120172 m!4719397))

(declare-fun m!4719399 () Bool)

(assert (=> b!4120172 m!4719399))

(declare-fun m!4719401 () Bool)

(assert (=> b!4120172 m!4719401))

(declare-fun m!4719403 () Bool)

(assert (=> b!4120162 m!4719403))

(declare-fun m!4719405 () Bool)

(assert (=> b!4120170 m!4719405))

(declare-fun m!4719407 () Bool)

(assert (=> b!4120178 m!4719407))

(declare-fun m!4719409 () Bool)

(assert (=> b!4120181 m!4719409))

(declare-fun m!4719411 () Bool)

(assert (=> b!4120180 m!4719411))

(declare-fun m!4719413 () Bool)

(assert (=> b!4120180 m!4719413))

(declare-fun m!4719415 () Bool)

(assert (=> b!4120161 m!4719415))

(declare-fun m!4719417 () Bool)

(assert (=> b!4120161 m!4719417))

(declare-fun m!4719419 () Bool)

(assert (=> b!4120173 m!4719419))

(check-sat (not b!4120167) (not b!4120174) (not b!4120177) (not b!4120161) b_and!318645 (not b!4120181) (not b_next!117149) (not b!4120170) (not b!4120172) (not b!4120179) b_and!318637 b_and!318639 (not b!4120168) (not b_next!117147) (not b_next!117143) (not b!4120163) (not b!4120169) (not b_next!117141) (not b!4120182) (not b!4120162) b_and!318641 (not b!4120173) (not b!4120178) (not b!4120180) b_and!318643 b_and!318647 (not b!4120166) (not b!4120164) tp_is_empty!21277 (not b!4120165) (not b_next!117145) (not b!4120171) (not b_next!117139))
(check-sat (not b_next!117147) (not b_next!117143) (not b_next!117141) b_and!318645 (not b_next!117149) b_and!318641 b_and!318637 b_and!318639 b_and!318643 b_and!318647 (not b_next!117145) (not b_next!117139))
