; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6710 () Bool)

(assert start!6710)

(declare-fun b!79716 () Bool)

(declare-fun b_free!2577 () Bool)

(declare-fun b_next!2577 () Bool)

(assert (=> b!79716 (= b_free!2577 (not b_next!2577))))

(declare-fun tp!50395 () Bool)

(declare-fun b_and!3679 () Bool)

(assert (=> b!79716 (= tp!50395 b_and!3679)))

(declare-fun b_free!2579 () Bool)

(declare-fun b_next!2579 () Bool)

(assert (=> b!79716 (= b_free!2579 (not b_next!2579))))

(declare-fun tp!50398 () Bool)

(declare-fun b_and!3681 () Bool)

(assert (=> b!79716 (= tp!50398 b_and!3681)))

(declare-fun res!41552 () Bool)

(declare-fun e!44699 () Bool)

(assert (=> start!6710 (=> (not res!41552) (not e!44699))))

(declare-datatypes ((LexerInterface!203 0))(
  ( (LexerInterfaceExt!200 (__x!1697 Int)) (Lexer!201) )
))
(declare-fun thiss!19403 () LexerInterface!203)

(get-info :version)

(assert (=> start!6710 (= res!41552 ((_ is Lexer!201) thiss!19403))))

(assert (=> start!6710 e!44699))

(assert (=> start!6710 true))

(declare-fun e!44695 () Bool)

(assert (=> start!6710 e!44695))

(declare-fun e!44693 () Bool)

(assert (=> start!6710 e!44693))

(declare-fun b!79715 () Bool)

(declare-fun e!44692 () Bool)

(assert (=> b!79715 (= e!44699 e!44692)))

(declare-fun res!41554 () Bool)

(assert (=> b!79715 (=> (not res!41554) (not e!44692))))

(declare-datatypes ((C!1680 0))(
  ( (C!1681 (val!447 Int)) )
))
(declare-datatypes ((List!1428 0))(
  ( (Nil!1422) (Cons!1422 (h!6819 C!1680) (t!20307 List!1428)) )
))
(declare-datatypes ((IArray!849 0))(
  ( (IArray!850 (innerList!482 List!1428)) )
))
(declare-datatypes ((Conc!424 0))(
  ( (Node!424 (left!1080 Conc!424) (right!1410 Conc!424) (csize!1078 Int) (cheight!635 Int)) (Leaf!715 (xs!3003 IArray!849) (csize!1079 Int)) (Empty!424) )
))
(declare-datatypes ((BalanceConc!852 0))(
  ( (BalanceConc!853 (c!20248 Conc!424)) )
))
(declare-datatypes ((List!1429 0))(
  ( (Nil!1423) (Cons!1423 (h!6820 (_ BitVec 16)) (t!20308 List!1429)) )
))
(declare-datatypes ((TokenValue!301 0))(
  ( (FloatLiteralValue!602 (text!2552 List!1429)) (TokenValueExt!300 (__x!1698 Int)) (Broken!1505 (value!11733 List!1429)) (Object!306) (End!301) (Def!301) (Underscore!301) (Match!301) (Else!301) (Error!301) (Case!301) (If!301) (Extends!301) (Abstract!301) (Class!301) (Val!301) (DelimiterValue!602 (del!361 List!1429)) (KeywordValue!307 (value!11734 List!1429)) (CommentValue!602 (value!11735 List!1429)) (WhitespaceValue!602 (value!11736 List!1429)) (IndentationValue!301 (value!11737 List!1429)) (String!1896) (Int32!301) (Broken!1506 (value!11738 List!1429)) (Boolean!302) (Unit!877) (OperatorValue!304 (op!361 List!1429)) (IdentifierValue!602 (value!11739 List!1429)) (IdentifierValue!603 (value!11740 List!1429)) (WhitespaceValue!603 (value!11741 List!1429)) (True!602) (False!602) (Broken!1507 (value!11742 List!1429)) (Broken!1508 (value!11743 List!1429)) (True!603) (RightBrace!301) (RightBracket!301) (Colon!301) (Null!301) (Comma!301) (LeftBracket!301) (False!603) (LeftBrace!301) (ImaginaryLiteralValue!301 (text!2553 List!1429)) (StringLiteralValue!903 (value!11744 List!1429)) (EOFValue!301 (value!11745 List!1429)) (IdentValue!301 (value!11746 List!1429)) (DelimiterValue!603 (value!11747 List!1429)) (DedentValue!301 (value!11748 List!1429)) (NewLineValue!301 (value!11749 List!1429)) (IntegerValue!903 (value!11750 (_ BitVec 32)) (text!2554 List!1429)) (IntegerValue!904 (value!11751 Int) (text!2555 List!1429)) (Times!301) (Or!301) (Equal!301) (Minus!301) (Broken!1509 (value!11752 List!1429)) (And!301) (Div!301) (LessEqual!301) (Mod!301) (Concat!680) (Not!301) (Plus!301) (SpaceValue!301 (value!11753 List!1429)) (IntegerValue!905 (value!11754 Int) (text!2556 List!1429)) (StringLiteralValue!904 (text!2557 List!1429)) (FloatLiteralValue!603 (text!2558 List!1429)) (BytesLiteralValue!301 (value!11755 List!1429)) (CommentValue!603 (value!11756 List!1429)) (StringLiteralValue!905 (value!11757 List!1429)) (ErrorTokenValue!301 (msg!362 List!1429)) )
))
(declare-datatypes ((Regex!379 0))(
  ( (ElementMatch!379 (c!20249 C!1680)) (Concat!681 (regOne!1270 Regex!379) (regTwo!1270 Regex!379)) (EmptyExpr!379) (Star!379 (reg!708 Regex!379)) (EmptyLang!379) (Union!379 (regOne!1271 Regex!379) (regTwo!1271 Regex!379)) )
))
(declare-datatypes ((String!1897 0))(
  ( (String!1898 (value!11758 String)) )
))
(declare-datatypes ((TokenValueInjection!426 0))(
  ( (TokenValueInjection!427 (toValue!826 Int) (toChars!685 Int)) )
))
(declare-datatypes ((Rule!422 0))(
  ( (Rule!423 (regex!311 Regex!379) (tag!489 String!1897) (isSeparator!311 Bool) (transformation!311 TokenValueInjection!426)) )
))
(declare-datatypes ((Token!382 0))(
  ( (Token!383 (value!11759 TokenValue!301) (rule!792 Rule!422) (size!1233 Int) (originalCharacters!362 List!1428)) )
))
(declare-datatypes ((List!1430 0))(
  ( (Nil!1424) (Cons!1424 (h!6821 Token!382) (t!20309 List!1430)) )
))
(declare-datatypes ((IArray!851 0))(
  ( (IArray!852 (innerList!483 List!1430)) )
))
(declare-datatypes ((Conc!425 0))(
  ( (Node!425 (left!1081 Conc!425) (right!1411 Conc!425) (csize!1080 Int) (cheight!636 Int)) (Leaf!716 (xs!3004 IArray!851) (csize!1081 Int)) (Empty!425) )
))
(declare-datatypes ((BalanceConc!854 0))(
  ( (BalanceConc!855 (c!20250 Conc!425)) )
))
(declare-datatypes ((tuple2!1446 0))(
  ( (tuple2!1447 (_1!930 BalanceConc!854) (_2!930 BalanceConc!852)) )
))
(declare-fun lt!17468 () tuple2!1446)

(declare-fun isEmpty!475 (BalanceConc!852) Bool)

(assert (=> b!79715 (= res!41554 (not (isEmpty!475 (_2!930 lt!17468))))))

(declare-datatypes ((List!1431 0))(
  ( (Nil!1425) (Cons!1425 (h!6822 Rule!422) (t!20310 List!1431)) )
))
(declare-fun rules!2471 () List!1431)

(declare-fun input!2238 () List!1428)

(declare-fun lex!111 (LexerInterface!203 List!1431 BalanceConc!852) tuple2!1446)

(declare-fun seqFromList!134 (List!1428) BalanceConc!852)

(assert (=> b!79715 (= lt!17468 (lex!111 thiss!19403 rules!2471 (seqFromList!134 input!2238)))))

(declare-fun e!44700 () Bool)

(assert (=> b!79716 (= e!44700 (and tp!50395 tp!50398))))

(declare-fun b!79717 () Bool)

(declare-fun e!44698 () Bool)

(declare-fun e!44696 () Bool)

(assert (=> b!79717 (= e!44698 (not e!44696))))

(declare-fun res!41551 () Bool)

(assert (=> b!79717 (=> res!41551 e!44696)))

(declare-datatypes ((tuple2!1448 0))(
  ( (tuple2!1449 (_1!931 Token!382) (_2!931 List!1428)) )
))
(declare-fun lt!17464 () tuple2!1448)

(declare-fun ++!142 (List!1428 List!1428) List!1428)

(declare-fun list!477 (BalanceConc!852) List!1428)

(declare-fun charsOf!48 (Token!382) BalanceConc!852)

(assert (=> b!79717 (= res!41551 (not (= input!2238 (++!142 (list!477 (charsOf!48 (_1!931 lt!17464))) (_2!931 lt!17464)))))))

(declare-fun lt!17459 () tuple2!1446)

(declare-fun lt!17460 () List!1428)

(declare-fun lt!17466 () List!1428)

(declare-fun lt!17469 () List!1430)

(declare-datatypes ((tuple2!1450 0))(
  ( (tuple2!1451 (_1!932 List!1430) (_2!932 List!1428)) )
))
(declare-fun list!478 (BalanceConc!854) List!1430)

(declare-fun tail!122 (List!1430) List!1430)

(assert (=> b!79717 (= (tuple2!1451 (list!478 (_1!930 lt!17459)) lt!17460) (tuple2!1451 (tail!122 lt!17469) lt!17466))))

(declare-datatypes ((Unit!878 0))(
  ( (Unit!879) )
))
(declare-fun lt!17465 () Unit!878)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!22 (LexerInterface!203 List!1431 List!1428 List!1430 List!1428) Unit!878)

(assert (=> b!79717 (= lt!17465 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!22 thiss!19403 rules!2471 input!2238 lt!17469 lt!17466))))

(assert (=> b!79717 (= lt!17466 (list!477 (_2!930 lt!17468)))))

(declare-fun lt!17462 () List!1428)

(assert (=> b!79717 (= (++!142 lt!17462 lt!17460) (_2!931 lt!17464))))

(assert (=> b!79717 (= lt!17460 (list!477 (_2!930 lt!17459)))))

(declare-fun print!42 (LexerInterface!203 BalanceConc!854) BalanceConc!852)

(assert (=> b!79717 (= lt!17462 (list!477 (print!42 thiss!19403 (_1!930 lt!17459))))))

(assert (=> b!79717 (= lt!17459 (lex!111 thiss!19403 rules!2471 (seqFromList!134 (_2!931 lt!17464))))))

(declare-fun lt!17463 () Unit!878)

(declare-fun theoremInvertFromString!26 (LexerInterface!203 List!1431 List!1428) Unit!878)

(assert (=> b!79717 (= lt!17463 (theoremInvertFromString!26 thiss!19403 rules!2471 (_2!931 lt!17464)))))

(declare-datatypes ((Option!118 0))(
  ( (None!117) (Some!117 (v!12800 tuple2!1448)) )
))
(declare-fun get!355 (Option!118) tuple2!1448)

(declare-fun maxPrefix!47 (LexerInterface!203 List!1431 List!1428) Option!118)

(assert (=> b!79717 (= lt!17464 (get!355 (maxPrefix!47 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!69 (BalanceConc!854 Token!382) BalanceConc!854)

(declare-fun seqFromList!135 (List!1430) BalanceConc!854)

(assert (=> b!79717 (= lt!17469 (list!478 (prepend!69 (seqFromList!135 (t!20309 lt!17469)) (h!6821 lt!17469))))))

(declare-fun lt!17461 () Unit!878)

(declare-fun seqFromListBHdTlConstructive!34 (Token!382 List!1430 BalanceConc!854) Unit!878)

(assert (=> b!79717 (= lt!17461 (seqFromListBHdTlConstructive!34 (h!6821 lt!17469) (t!20309 lt!17469) (_1!930 lt!17468)))))

(declare-fun tp!50394 () Bool)

(declare-fun b!79718 () Bool)

(declare-fun e!44697 () Bool)

(declare-fun inv!1774 (String!1897) Bool)

(declare-fun inv!1776 (TokenValueInjection!426) Bool)

(assert (=> b!79718 (= e!44697 (and tp!50394 (inv!1774 (tag!489 (h!6822 rules!2471))) (inv!1776 (transformation!311 (h!6822 rules!2471))) e!44700))))

(declare-fun b!79719 () Bool)

(declare-fun tp_is_empty!681 () Bool)

(declare-fun tp!50396 () Bool)

(assert (=> b!79719 (= e!44693 (and tp_is_empty!681 tp!50396))))

(declare-fun b!79720 () Bool)

(assert (=> b!79720 (= e!44696 true)))

(declare-fun lt!17470 () Bool)

(declare-fun rulesValidInductive!42 (LexerInterface!203 List!1431) Bool)

(assert (=> b!79720 (= lt!17470 (rulesValidInductive!42 thiss!19403 rules!2471))))

(declare-fun b!79721 () Bool)

(declare-fun res!41553 () Bool)

(assert (=> b!79721 (=> (not res!41553) (not e!44699))))

(declare-fun isEmpty!476 (List!1431) Bool)

(assert (=> b!79721 (= res!41553 (not (isEmpty!476 rules!2471)))))

(declare-fun b!79722 () Bool)

(declare-fun tp!50397 () Bool)

(assert (=> b!79722 (= e!44695 (and e!44697 tp!50397))))

(declare-fun b!79723 () Bool)

(declare-fun res!41555 () Bool)

(assert (=> b!79723 (=> (not res!41555) (not e!44699))))

(declare-fun rulesInvariant!197 (LexerInterface!203 List!1431) Bool)

(assert (=> b!79723 (= res!41555 (rulesInvariant!197 thiss!19403 rules!2471))))

(declare-fun b!79724 () Bool)

(assert (=> b!79724 (= e!44692 e!44698)))

(declare-fun res!41556 () Bool)

(assert (=> b!79724 (=> (not res!41556) (not e!44698))))

(declare-fun lt!17467 () Bool)

(assert (=> b!79724 (= res!41556 (and (or lt!17467 (not ((_ is Nil!1424) (t!20309 lt!17469)))) (not lt!17467)))))

(assert (=> b!79724 (= lt!17467 (not ((_ is Cons!1424) lt!17469)))))

(assert (=> b!79724 (= lt!17469 (list!478 (_1!930 lt!17468)))))

(assert (= (and start!6710 res!41552) b!79721))

(assert (= (and b!79721 res!41553) b!79723))

(assert (= (and b!79723 res!41555) b!79715))

(assert (= (and b!79715 res!41554) b!79724))

(assert (= (and b!79724 res!41556) b!79717))

(assert (= (and b!79717 (not res!41551)) b!79720))

(assert (= b!79718 b!79716))

(assert (= b!79722 b!79718))

(assert (= (and start!6710 ((_ is Cons!1425) rules!2471)) b!79722))

(assert (= (and start!6710 ((_ is Cons!1422) input!2238)) b!79719))

(declare-fun m!54224 () Bool)

(assert (=> b!79723 m!54224))

(declare-fun m!54226 () Bool)

(assert (=> b!79715 m!54226))

(declare-fun m!54228 () Bool)

(assert (=> b!79715 m!54228))

(assert (=> b!79715 m!54228))

(declare-fun m!54230 () Bool)

(assert (=> b!79715 m!54230))

(declare-fun m!54232 () Bool)

(assert (=> b!79724 m!54232))

(declare-fun m!54234 () Bool)

(assert (=> b!79718 m!54234))

(declare-fun m!54236 () Bool)

(assert (=> b!79718 m!54236))

(declare-fun m!54238 () Bool)

(assert (=> b!79717 m!54238))

(declare-fun m!54240 () Bool)

(assert (=> b!79717 m!54240))

(declare-fun m!54242 () Bool)

(assert (=> b!79717 m!54242))

(declare-fun m!54244 () Bool)

(assert (=> b!79717 m!54244))

(declare-fun m!54246 () Bool)

(assert (=> b!79717 m!54246))

(declare-fun m!54248 () Bool)

(assert (=> b!79717 m!54248))

(assert (=> b!79717 m!54244))

(declare-fun m!54250 () Bool)

(assert (=> b!79717 m!54250))

(declare-fun m!54252 () Bool)

(assert (=> b!79717 m!54252))

(declare-fun m!54254 () Bool)

(assert (=> b!79717 m!54254))

(declare-fun m!54256 () Bool)

(assert (=> b!79717 m!54256))

(declare-fun m!54258 () Bool)

(assert (=> b!79717 m!54258))

(declare-fun m!54260 () Bool)

(assert (=> b!79717 m!54260))

(declare-fun m!54262 () Bool)

(assert (=> b!79717 m!54262))

(declare-fun m!54264 () Bool)

(assert (=> b!79717 m!54264))

(assert (=> b!79717 m!54240))

(declare-fun m!54266 () Bool)

(assert (=> b!79717 m!54266))

(declare-fun m!54268 () Bool)

(assert (=> b!79717 m!54268))

(declare-fun m!54270 () Bool)

(assert (=> b!79717 m!54270))

(assert (=> b!79717 m!54268))

(assert (=> b!79717 m!54238))

(assert (=> b!79717 m!54252))

(declare-fun m!54272 () Bool)

(assert (=> b!79717 m!54272))

(declare-fun m!54274 () Bool)

(assert (=> b!79717 m!54274))

(assert (=> b!79717 m!54266))

(declare-fun m!54276 () Bool)

(assert (=> b!79717 m!54276))

(assert (=> b!79717 m!54248))

(declare-fun m!54278 () Bool)

(assert (=> b!79720 m!54278))

(declare-fun m!54280 () Bool)

(assert (=> b!79721 m!54280))

(check-sat (not b!79722) (not b!79723) b_and!3679 (not b!79719) (not b_next!2579) (not b!79717) (not b!79724) (not b_next!2577) (not b!79720) (not b!79718) b_and!3681 (not b!79715) (not b!79721) tp_is_empty!681)
(check-sat b_and!3681 b_and!3679 (not b_next!2579) (not b_next!2577))
