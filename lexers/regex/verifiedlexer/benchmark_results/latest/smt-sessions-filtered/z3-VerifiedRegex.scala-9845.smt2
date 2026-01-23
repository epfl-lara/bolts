; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515504 () Bool)

(assert start!515504)

(declare-fun b!4911713 () Bool)

(declare-fun b_free!132003 () Bool)

(declare-fun b_next!132793 () Bool)

(assert (=> b!4911713 (= b_free!132003 (not b_next!132793))))

(declare-fun tp!1381127 () Bool)

(declare-fun b_and!346783 () Bool)

(assert (=> b!4911713 (= tp!1381127 b_and!346783)))

(declare-fun b_free!132005 () Bool)

(declare-fun b_next!132795 () Bool)

(assert (=> b!4911713 (= b_free!132005 (not b_next!132795))))

(declare-fun tp!1381129 () Bool)

(declare-fun b_and!346785 () Bool)

(assert (=> b!4911713 (= tp!1381129 b_and!346785)))

(declare-fun b!4911731 () Bool)

(declare-fun e!3070082 () Bool)

(assert (=> b!4911731 (= e!3070082 true)))

(declare-fun b!4911730 () Bool)

(declare-fun e!3070081 () Bool)

(assert (=> b!4911730 (= e!3070081 e!3070082)))

(declare-fun b!4911715 () Bool)

(assert (=> b!4911715 e!3070081))

(assert (= b!4911730 b!4911731))

(assert (= b!4911715 b!4911730))

(declare-fun order!25931 () Int)

(declare-fun order!25929 () Int)

(declare-fun lambda!244764 () Int)

(declare-datatypes ((C!26864 0))(
  ( (C!26865 (val!22766 Int)) )
))
(declare-datatypes ((Regex!13333 0))(
  ( (ElementMatch!13333 (c!834889 C!26864)) (Concat!21901 (regOne!27178 Regex!13333) (regTwo!27178 Regex!13333)) (EmptyExpr!13333) (Star!13333 (reg!13662 Regex!13333)) (EmptyLang!13333) (Union!13333 (regOne!27179 Regex!13333) (regTwo!27179 Regex!13333)) )
))
(declare-datatypes ((String!64281 0))(
  ( (String!64282 (value!264457 String)) )
))
(declare-datatypes ((List!56714 0))(
  ( (Nil!56590) (Cons!56590 (h!63038 (_ BitVec 16)) (t!367080 List!56714)) )
))
(declare-datatypes ((TokenValue!8568 0))(
  ( (FloatLiteralValue!17136 (text!60421 List!56714)) (TokenValueExt!8567 (__x!34429 Int)) (Broken!42840 (value!264458 List!56714)) (Object!8691) (End!8568) (Def!8568) (Underscore!8568) (Match!8568) (Else!8568) (Error!8568) (Case!8568) (If!8568) (Extends!8568) (Abstract!8568) (Class!8568) (Val!8568) (DelimiterValue!17136 (del!8628 List!56714)) (KeywordValue!8574 (value!264459 List!56714)) (CommentValue!17136 (value!264460 List!56714)) (WhitespaceValue!17136 (value!264461 List!56714)) (IndentationValue!8568 (value!264462 List!56714)) (String!64283) (Int32!8568) (Broken!42841 (value!264463 List!56714)) (Boolean!8569) (Unit!146865) (OperatorValue!8571 (op!8628 List!56714)) (IdentifierValue!17136 (value!264464 List!56714)) (IdentifierValue!17137 (value!264465 List!56714)) (WhitespaceValue!17137 (value!264466 List!56714)) (True!17136) (False!17136) (Broken!42842 (value!264467 List!56714)) (Broken!42843 (value!264468 List!56714)) (True!17137) (RightBrace!8568) (RightBracket!8568) (Colon!8568) (Null!8568) (Comma!8568) (LeftBracket!8568) (False!17137) (LeftBrace!8568) (ImaginaryLiteralValue!8568 (text!60422 List!56714)) (StringLiteralValue!25704 (value!264469 List!56714)) (EOFValue!8568 (value!264470 List!56714)) (IdentValue!8568 (value!264471 List!56714)) (DelimiterValue!17137 (value!264472 List!56714)) (DedentValue!8568 (value!264473 List!56714)) (NewLineValue!8568 (value!264474 List!56714)) (IntegerValue!25704 (value!264475 (_ BitVec 32)) (text!60423 List!56714)) (IntegerValue!25705 (value!264476 Int) (text!60424 List!56714)) (Times!8568) (Or!8568) (Equal!8568) (Minus!8568) (Broken!42844 (value!264477 List!56714)) (And!8568) (Div!8568) (LessEqual!8568) (Mod!8568) (Concat!21902) (Not!8568) (Plus!8568) (SpaceValue!8568 (value!264478 List!56714)) (IntegerValue!25706 (value!264479 Int) (text!60425 List!56714)) (StringLiteralValue!25705 (text!60426 List!56714)) (FloatLiteralValue!17137 (text!60427 List!56714)) (BytesLiteralValue!8568 (value!264480 List!56714)) (CommentValue!17137 (value!264481 List!56714)) (StringLiteralValue!25706 (value!264482 List!56714)) (ErrorTokenValue!8568 (msg!8629 List!56714)) )
))
(declare-datatypes ((List!56715 0))(
  ( (Nil!56591) (Cons!56591 (h!63039 C!26864) (t!367081 List!56715)) )
))
(declare-datatypes ((IArray!29713 0))(
  ( (IArray!29714 (innerList!14914 List!56715)) )
))
(declare-datatypes ((Conc!14826 0))(
  ( (Node!14826 (left!41245 Conc!14826) (right!41575 Conc!14826) (csize!29882 Int) (cheight!15037 Int)) (Leaf!24672 (xs!18142 IArray!29713) (csize!29883 Int)) (Empty!14826) )
))
(declare-datatypes ((BalanceConc!29082 0))(
  ( (BalanceConc!29083 (c!834890 Conc!14826)) )
))
(declare-datatypes ((TokenValueInjection!16444 0))(
  ( (TokenValueInjection!16445 (toValue!11205 Int) (toChars!11064 Int)) )
))
(declare-datatypes ((Rule!16316 0))(
  ( (Rule!16317 (regex!8258 Regex!13333) (tag!9122 String!64281) (isSeparator!8258 Bool) (transformation!8258 TokenValueInjection!16444)) )
))
(declare-fun rule!164 () Rule!16316)

(declare-fun dynLambda!22965 (Int Int) Int)

(declare-fun dynLambda!22966 (Int Int) Int)

(assert (=> b!4911731 (< (dynLambda!22965 order!25929 (toValue!11205 (transformation!8258 rule!164))) (dynLambda!22966 order!25931 lambda!244764))))

(declare-fun order!25933 () Int)

(declare-fun dynLambda!22967 (Int Int) Int)

(assert (=> b!4911731 (< (dynLambda!22967 order!25933 (toChars!11064 (transformation!8258 rule!164))) (dynLambda!22966 order!25931 lambda!244764))))

(declare-fun b!4911710 () Bool)

(declare-fun e!3070071 () Bool)

(declare-datatypes ((Token!15040 0))(
  ( (Token!15041 (value!264483 TokenValue!8568) (rule!11474 Rule!16316) (size!37363 Int) (originalCharacters!8551 List!56715)) )
))
(declare-fun lt!2016317 () Token!15040)

(declare-fun inv!73181 (Token!15040) Bool)

(assert (=> b!4911710 (= e!3070071 (inv!73181 lt!2016317))))

(declare-fun res!2098134 () Bool)

(declare-fun e!3070073 () Bool)

(assert (=> start!515504 (=> (not res!2098134) (not e!3070073))))

(declare-datatypes ((LexerInterface!7850 0))(
  ( (LexerInterfaceExt!7847 (__x!34430 Int)) (Lexer!7848) )
))
(declare-fun thiss!15943 () LexerInterface!7850)

(get-info :version)

(assert (=> start!515504 (= res!2098134 ((_ is Lexer!7848) thiss!15943))))

(assert (=> start!515504 e!3070073))

(assert (=> start!515504 true))

(declare-fun e!3070075 () Bool)

(assert (=> start!515504 e!3070075))

(declare-fun input!1509 () BalanceConc!29082)

(declare-fun e!3070066 () Bool)

(declare-fun inv!73182 (BalanceConc!29082) Bool)

(assert (=> start!515504 (and (inv!73182 input!1509) e!3070066)))

(declare-fun b!4911711 () Bool)

(declare-fun e!3070072 () Bool)

(declare-fun e!3070070 () Bool)

(assert (=> b!4911711 (= e!3070072 (not e!3070070))))

(declare-fun res!2098131 () Bool)

(assert (=> b!4911711 (=> res!2098131 e!3070070)))

(declare-fun semiInverseModEq!3659 (Int Int) Bool)

(assert (=> b!4911711 (= res!2098131 (not (semiInverseModEq!3659 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164)))))))

(declare-datatypes ((Unit!146866 0))(
  ( (Unit!146867) )
))
(declare-fun lt!2016316 () Unit!146866)

(declare-fun lemmaInv!1300 (TokenValueInjection!16444) Unit!146866)

(assert (=> b!4911711 (= lt!2016316 (lemmaInv!1300 (transformation!8258 rule!164)))))

(declare-fun e!3070074 () Bool)

(assert (=> b!4911711 e!3070074))

(declare-fun res!2098128 () Bool)

(assert (=> b!4911711 (=> res!2098128 e!3070074)))

(declare-datatypes ((tuple2!60978 0))(
  ( (tuple2!60979 (_1!33792 List!56715) (_2!33792 List!56715)) )
))
(declare-fun lt!2016329 () tuple2!60978)

(declare-fun isEmpty!30519 (List!56715) Bool)

(assert (=> b!4911711 (= res!2098128 (isEmpty!30519 (_1!33792 lt!2016329)))))

(declare-fun lt!2016319 () List!56715)

(declare-fun findLongestMatchInner!1819 (Regex!13333 List!56715 Int List!56715 List!56715 Int) tuple2!60978)

(declare-fun size!37364 (List!56715) Int)

(assert (=> b!4911711 (= lt!2016329 (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)))))

(declare-fun lt!2016330 () Unit!146866)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1782 (Regex!13333 List!56715) Unit!146866)

(assert (=> b!4911711 (= lt!2016330 (longestMatchIsAcceptedByMatchOrIsEmpty!1782 (regex!8258 rule!164) lt!2016319))))

(declare-fun list!17866 (BalanceConc!29082) List!56715)

(assert (=> b!4911711 (= lt!2016319 (list!17866 input!1509))))

(declare-fun b!4911712 () Bool)

(declare-fun e!3070067 () Bool)

(assert (=> b!4911712 (= e!3070067 e!3070071)))

(declare-fun res!2098132 () Bool)

(assert (=> b!4911712 (=> res!2098132 e!3070071)))

(declare-fun lt!2016328 () Int)

(declare-fun lt!2016322 () List!56715)

(declare-fun lt!2016331 () TokenValue!8568)

(declare-datatypes ((tuple2!60980 0))(
  ( (tuple2!60981 (_1!33793 Token!15040) (_2!33793 List!56715)) )
))
(declare-fun lt!2016320 () tuple2!60980)

(assert (=> b!4911712 (= res!2098132 (or (not (= (value!264483 (_1!33793 lt!2016320)) lt!2016331)) (not (= (rule!11474 (_1!33793 lt!2016320)) rule!164)) (not (= (size!37363 (_1!33793 lt!2016320)) lt!2016328)) (not (= (originalCharacters!8551 (_1!33793 lt!2016320)) lt!2016322))))))

(declare-datatypes ((Option!14145 0))(
  ( (None!14144) (Some!14144 (v!50106 tuple2!60980)) )
))
(declare-fun lt!2016327 () Option!14145)

(declare-fun get!19595 (Option!14145) tuple2!60980)

(assert (=> b!4911712 (= lt!2016320 (get!19595 lt!2016327))))

(declare-fun e!3070068 () Bool)

(assert (=> b!4911713 (= e!3070068 (and tp!1381127 tp!1381129))))

(declare-fun b!4911714 () Bool)

(declare-fun res!2098133 () Bool)

(declare-fun e!3070076 () Bool)

(assert (=> b!4911714 (=> res!2098133 e!3070076)))

(declare-fun lt!2016326 () BalanceConc!29082)

(assert (=> b!4911714 (= res!2098133 (not (= (list!17866 lt!2016326) lt!2016322)))))

(declare-fun res!2098130 () Bool)

(assert (=> b!4911715 (=> res!2098130 e!3070070)))

(declare-fun Forall!1753 (Int) Bool)

(assert (=> b!4911715 (= res!2098130 (not (Forall!1753 lambda!244764)))))

(declare-fun b!4911716 () Bool)

(assert (=> b!4911716 (= e!3070073 e!3070072)))

(declare-fun res!2098124 () Bool)

(assert (=> b!4911716 (=> (not res!2098124) (not e!3070072))))

(declare-datatypes ((tuple2!60982 0))(
  ( (tuple2!60983 (_1!33794 BalanceConc!29082) (_2!33794 BalanceConc!29082)) )
))
(declare-fun lt!2016324 () tuple2!60982)

(declare-fun isEmpty!30520 (BalanceConc!29082) Bool)

(assert (=> b!4911716 (= res!2098124 (not (isEmpty!30520 (_1!33794 lt!2016324))))))

(declare-fun findLongestMatchWithZipperSequence!346 (Regex!13333 BalanceConc!29082) tuple2!60982)

(assert (=> b!4911716 (= lt!2016324 (findLongestMatchWithZipperSequence!346 (regex!8258 rule!164) input!1509))))

(declare-fun b!4911717 () Bool)

(declare-fun res!2098129 () Bool)

(assert (=> b!4911717 (=> res!2098129 e!3070076)))

(declare-fun lt!2016318 () Bool)

(assert (=> b!4911717 (= res!2098129 (not lt!2016318))))

(declare-fun b!4911718 () Bool)

(assert (=> b!4911718 (= e!3070076 e!3070067)))

(declare-fun res!2098125 () Bool)

(assert (=> b!4911718 (=> res!2098125 e!3070067)))

(declare-fun apply!13600 (TokenValueInjection!16444 BalanceConc!29082) TokenValue!8568)

(assert (=> b!4911718 (= res!2098125 (not (= (apply!13600 (transformation!8258 rule!164) lt!2016326) lt!2016331)))))

(declare-fun lt!2016325 () Unit!146866)

(declare-fun lemmaEqSameImage!1134 (TokenValueInjection!16444 BalanceConc!29082 BalanceConc!29082) Unit!146866)

(assert (=> b!4911718 (= lt!2016325 (lemmaEqSameImage!1134 (transformation!8258 rule!164) (_1!33794 lt!2016324) lt!2016326))))

(declare-fun b!4911719 () Bool)

(declare-fun tp!1381126 () Bool)

(declare-fun inv!73176 (String!64281) Bool)

(declare-fun inv!73183 (TokenValueInjection!16444) Bool)

(assert (=> b!4911719 (= e!3070075 (and tp!1381126 (inv!73176 (tag!9122 rule!164)) (inv!73183 (transformation!8258 rule!164)) e!3070068))))

(declare-fun b!4911720 () Bool)

(declare-fun tp!1381128 () Bool)

(declare-fun inv!73184 (Conc!14826) Bool)

(assert (=> b!4911720 (= e!3070066 (and (inv!73184 (c!834890 input!1509)) tp!1381128))))

(declare-fun b!4911721 () Bool)

(assert (=> b!4911721 (= e!3070070 e!3070076)))

(declare-fun res!2098127 () Bool)

(assert (=> b!4911721 (=> res!2098127 e!3070076)))

(declare-fun isDefined!11152 (Option!14145) Bool)

(assert (=> b!4911721 (= res!2098127 (not (= lt!2016318 (isDefined!11152 lt!2016327))))))

(declare-datatypes ((tuple2!60984 0))(
  ( (tuple2!60985 (_1!33795 Token!15040) (_2!33795 BalanceConc!29082)) )
))
(declare-datatypes ((Option!14146 0))(
  ( (None!14145) (Some!14145 (v!50107 tuple2!60984)) )
))
(declare-fun isDefined!11153 (Option!14146) Bool)

(assert (=> b!4911721 (= lt!2016318 (isDefined!11153 (Some!14145 (tuple2!60985 lt!2016317 (_2!33794 lt!2016324)))))))

(declare-fun maxPrefixOneRule!3591 (LexerInterface!7850 Rule!16316 List!56715) Option!14145)

(assert (=> b!4911721 (= lt!2016327 (maxPrefixOneRule!3591 thiss!15943 rule!164 lt!2016319))))

(assert (=> b!4911721 (= lt!2016317 (Token!15041 lt!2016331 rule!164 lt!2016328 lt!2016322))))

(declare-fun size!37365 (BalanceConc!29082) Int)

(assert (=> b!4911721 (= lt!2016328 (size!37365 (_1!33794 lt!2016324)))))

(assert (=> b!4911721 (= lt!2016331 (apply!13600 (transformation!8258 rule!164) (_1!33794 lt!2016324)))))

(declare-fun lt!2016321 () Unit!146866)

(declare-fun ForallOf!1193 (Int BalanceConc!29082) Unit!146866)

(assert (=> b!4911721 (= lt!2016321 (ForallOf!1193 lambda!244764 lt!2016326))))

(declare-fun seqFromList!5998 (List!56715) BalanceConc!29082)

(assert (=> b!4911721 (= lt!2016326 (seqFromList!5998 lt!2016322))))

(assert (=> b!4911721 (= lt!2016322 (list!17866 (_1!33794 lt!2016324)))))

(declare-fun lt!2016323 () Unit!146866)

(assert (=> b!4911721 (= lt!2016323 (ForallOf!1193 lambda!244764 (_1!33794 lt!2016324)))))

(declare-fun b!4911722 () Bool)

(declare-fun res!2098126 () Bool)

(assert (=> b!4911722 (=> (not res!2098126) (not e!3070073))))

(declare-fun ruleValid!3755 (LexerInterface!7850 Rule!16316) Bool)

(assert (=> b!4911722 (= res!2098126 (ruleValid!3755 thiss!15943 rule!164))))

(declare-fun b!4911723 () Bool)

(declare-fun matchR!6598 (Regex!13333 List!56715) Bool)

(assert (=> b!4911723 (= e!3070074 (matchR!6598 (regex!8258 rule!164) (_1!33792 lt!2016329)))))

(assert (= (and start!515504 res!2098134) b!4911722))

(assert (= (and b!4911722 res!2098126) b!4911716))

(assert (= (and b!4911716 res!2098124) b!4911711))

(assert (= (and b!4911711 (not res!2098128)) b!4911723))

(assert (= (and b!4911711 (not res!2098131)) b!4911715))

(assert (= (and b!4911715 (not res!2098130)) b!4911721))

(assert (= (and b!4911721 (not res!2098127)) b!4911717))

(assert (= (and b!4911717 (not res!2098129)) b!4911714))

(assert (= (and b!4911714 (not res!2098133)) b!4911718))

(assert (= (and b!4911718 (not res!2098125)) b!4911712))

(assert (= (and b!4911712 (not res!2098132)) b!4911710))

(assert (= b!4911719 b!4911713))

(assert (= start!515504 b!4911719))

(assert (= start!515504 b!4911720))

(declare-fun m!5921508 () Bool)

(assert (=> b!4911712 m!5921508))

(declare-fun m!5921510 () Bool)

(assert (=> b!4911721 m!5921510))

(declare-fun m!5921512 () Bool)

(assert (=> b!4911721 m!5921512))

(declare-fun m!5921514 () Bool)

(assert (=> b!4911721 m!5921514))

(declare-fun m!5921516 () Bool)

(assert (=> b!4911721 m!5921516))

(declare-fun m!5921518 () Bool)

(assert (=> b!4911721 m!5921518))

(declare-fun m!5921520 () Bool)

(assert (=> b!4911721 m!5921520))

(declare-fun m!5921522 () Bool)

(assert (=> b!4911721 m!5921522))

(declare-fun m!5921524 () Bool)

(assert (=> b!4911721 m!5921524))

(declare-fun m!5921526 () Bool)

(assert (=> b!4911721 m!5921526))

(declare-fun m!5921528 () Bool)

(assert (=> start!515504 m!5921528))

(declare-fun m!5921530 () Bool)

(assert (=> b!4911716 m!5921530))

(declare-fun m!5921532 () Bool)

(assert (=> b!4911716 m!5921532))

(declare-fun m!5921534 () Bool)

(assert (=> b!4911719 m!5921534))

(declare-fun m!5921536 () Bool)

(assert (=> b!4911719 m!5921536))

(declare-fun m!5921538 () Bool)

(assert (=> b!4911711 m!5921538))

(declare-fun m!5921540 () Bool)

(assert (=> b!4911711 m!5921540))

(assert (=> b!4911711 m!5921540))

(declare-fun m!5921542 () Bool)

(assert (=> b!4911711 m!5921542))

(declare-fun m!5921544 () Bool)

(assert (=> b!4911711 m!5921544))

(declare-fun m!5921546 () Bool)

(assert (=> b!4911711 m!5921546))

(assert (=> b!4911711 m!5921542))

(declare-fun m!5921548 () Bool)

(assert (=> b!4911711 m!5921548))

(declare-fun m!5921550 () Bool)

(assert (=> b!4911711 m!5921550))

(declare-fun m!5921552 () Bool)

(assert (=> b!4911711 m!5921552))

(declare-fun m!5921554 () Bool)

(assert (=> b!4911723 m!5921554))

(declare-fun m!5921556 () Bool)

(assert (=> b!4911710 m!5921556))

(declare-fun m!5921558 () Bool)

(assert (=> b!4911720 m!5921558))

(declare-fun m!5921560 () Bool)

(assert (=> b!4911715 m!5921560))

(declare-fun m!5921562 () Bool)

(assert (=> b!4911718 m!5921562))

(declare-fun m!5921564 () Bool)

(assert (=> b!4911718 m!5921564))

(declare-fun m!5921566 () Bool)

(assert (=> b!4911722 m!5921566))

(declare-fun m!5921568 () Bool)

(assert (=> b!4911714 m!5921568))

(check-sat (not b!4911711) (not b!4911722) (not b!4911712) (not b!4911718) (not b_next!132795) (not b!4911723) b_and!346785 (not b!4911719) (not b!4911710) (not b!4911721) (not b_next!132793) (not b!4911714) (not b!4911716) (not start!515504) (not b!4911715) (not b!4911720) b_and!346783)
(check-sat b_and!346785 b_and!346783 (not b_next!132795) (not b_next!132793))
(get-model)

(declare-fun d!1578390 () Bool)

(declare-fun lt!2016343 () Bool)

(assert (=> d!1578390 (= lt!2016343 (isEmpty!30519 (list!17866 (_1!33794 lt!2016324))))))

(declare-fun isEmpty!30522 (Conc!14826) Bool)

(assert (=> d!1578390 (= lt!2016343 (isEmpty!30522 (c!834890 (_1!33794 lt!2016324))))))

(assert (=> d!1578390 (= (isEmpty!30520 (_1!33794 lt!2016324)) lt!2016343)))

(declare-fun bs!1177515 () Bool)

(assert (= bs!1177515 d!1578390))

(assert (=> bs!1177515 m!5921510))

(assert (=> bs!1177515 m!5921510))

(declare-fun m!5921600 () Bool)

(assert (=> bs!1177515 m!5921600))

(declare-fun m!5921602 () Bool)

(assert (=> bs!1177515 m!5921602))

(assert (=> b!4911716 d!1578390))

(declare-fun d!1578394 () Bool)

(declare-fun lt!2016349 () tuple2!60982)

(declare-fun findLongestMatch!1686 (Regex!13333 List!56715) tuple2!60978)

(assert (=> d!1578394 (= (tuple2!60979 (list!17866 (_1!33794 lt!2016349)) (list!17866 (_2!33794 lt!2016349))) (findLongestMatch!1686 (regex!8258 rule!164) (list!17866 input!1509)))))

(declare-fun choose!35938 (Regex!13333 BalanceConc!29082) tuple2!60982)

(assert (=> d!1578394 (= lt!2016349 (choose!35938 (regex!8258 rule!164) input!1509))))

(declare-fun validRegex!5924 (Regex!13333) Bool)

(assert (=> d!1578394 (validRegex!5924 (regex!8258 rule!164))))

(assert (=> d!1578394 (= (findLongestMatchWithZipperSequence!346 (regex!8258 rule!164) input!1509) lt!2016349)))

(declare-fun bs!1177518 () Bool)

(assert (= bs!1177518 d!1578394))

(assert (=> bs!1177518 m!5921550))

(declare-fun m!5921636 () Bool)

(assert (=> bs!1177518 m!5921636))

(declare-fun m!5921638 () Bool)

(assert (=> bs!1177518 m!5921638))

(assert (=> bs!1177518 m!5921550))

(declare-fun m!5921640 () Bool)

(assert (=> bs!1177518 m!5921640))

(declare-fun m!5921642 () Bool)

(assert (=> bs!1177518 m!5921642))

(declare-fun m!5921644 () Bool)

(assert (=> bs!1177518 m!5921644))

(assert (=> b!4911716 d!1578394))

(declare-fun d!1578412 () Bool)

(declare-fun dynLambda!22971 (Int BalanceConc!29082) TokenValue!8568)

(assert (=> d!1578412 (= (apply!13600 (transformation!8258 rule!164) lt!2016326) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326))))

(declare-fun b_lambda!196021 () Bool)

(assert (=> (not b_lambda!196021) (not d!1578412)))

(declare-fun t!367089 () Bool)

(declare-fun tb!260097 () Bool)

(assert (=> (and b!4911713 (= (toValue!11205 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))) t!367089) tb!260097))

(declare-fun result!324028 () Bool)

(declare-fun inv!21 (TokenValue!8568) Bool)

(assert (=> tb!260097 (= result!324028 (inv!21 (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326)))))

(declare-fun m!5921646 () Bool)

(assert (=> tb!260097 m!5921646))

(assert (=> d!1578412 t!367089))

(declare-fun b_and!346795 () Bool)

(assert (= b_and!346783 (and (=> t!367089 result!324028) b_and!346795)))

(declare-fun m!5921648 () Bool)

(assert (=> d!1578412 m!5921648))

(assert (=> b!4911718 d!1578412))

(declare-fun b!4911814 () Bool)

(declare-fun e!3070135 () Bool)

(assert (=> b!4911814 (= e!3070135 true)))

(declare-fun d!1578414 () Bool)

(assert (=> d!1578414 e!3070135))

(assert (= d!1578414 b!4911814))

(declare-fun order!25937 () Int)

(declare-fun lambda!244770 () Int)

(declare-fun dynLambda!22972 (Int Int) Int)

(assert (=> b!4911814 (< (dynLambda!22965 order!25929 (toValue!11205 (transformation!8258 rule!164))) (dynLambda!22972 order!25937 lambda!244770))))

(assert (=> b!4911814 (< (dynLambda!22967 order!25933 (toChars!11064 (transformation!8258 rule!164))) (dynLambda!22972 order!25937 lambda!244770))))

(assert (=> d!1578414 (= (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326))))

(declare-fun lt!2016352 () Unit!146866)

(declare-fun Forall2of!470 (Int BalanceConc!29082 BalanceConc!29082) Unit!146866)

(assert (=> d!1578414 (= lt!2016352 (Forall2of!470 lambda!244770 (_1!33794 lt!2016324) lt!2016326))))

(assert (=> d!1578414 (= (list!17866 (_1!33794 lt!2016324)) (list!17866 lt!2016326))))

(assert (=> d!1578414 (= (lemmaEqSameImage!1134 (transformation!8258 rule!164) (_1!33794 lt!2016324) lt!2016326) lt!2016352)))

(declare-fun b_lambda!196023 () Bool)

(assert (=> (not b_lambda!196023) (not d!1578414)))

(declare-fun t!367091 () Bool)

(declare-fun tb!260099 () Bool)

(assert (=> (and b!4911713 (= (toValue!11205 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))) t!367091) tb!260099))

(declare-fun result!324032 () Bool)

(assert (=> tb!260099 (= result!324032 (inv!21 (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324))))))

(declare-fun m!5921650 () Bool)

(assert (=> tb!260099 m!5921650))

(assert (=> d!1578414 t!367091))

(declare-fun b_and!346797 () Bool)

(assert (= b_and!346795 (and (=> t!367091 result!324032) b_and!346797)))

(declare-fun b_lambda!196025 () Bool)

(assert (=> (not b_lambda!196025) (not d!1578414)))

(assert (=> d!1578414 t!367089))

(declare-fun b_and!346799 () Bool)

(assert (= b_and!346797 (and (=> t!367089 result!324028) b_and!346799)))

(assert (=> d!1578414 m!5921510))

(assert (=> d!1578414 m!5921648))

(declare-fun m!5921652 () Bool)

(assert (=> d!1578414 m!5921652))

(declare-fun m!5921654 () Bool)

(assert (=> d!1578414 m!5921654))

(assert (=> d!1578414 m!5921568))

(assert (=> b!4911718 d!1578414))

(declare-fun d!1578416 () Bool)

(assert (=> d!1578416 (= (inv!73176 (tag!9122 rule!164)) (= (mod (str.len (value!264457 (tag!9122 rule!164))) 2) 0))))

(assert (=> b!4911719 d!1578416))

(declare-fun d!1578418 () Bool)

(declare-fun res!2098181 () Bool)

(declare-fun e!3070139 () Bool)

(assert (=> d!1578418 (=> (not res!2098181) (not e!3070139))))

(assert (=> d!1578418 (= res!2098181 (semiInverseModEq!3659 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))))))

(assert (=> d!1578418 (= (inv!73183 (transformation!8258 rule!164)) e!3070139)))

(declare-fun b!4911817 () Bool)

(declare-fun equivClasses!3509 (Int Int) Bool)

(assert (=> b!4911817 (= e!3070139 (equivClasses!3509 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))))))

(assert (= (and d!1578418 res!2098181) b!4911817))

(assert (=> d!1578418 m!5921538))

(declare-fun m!5921656 () Bool)

(assert (=> b!4911817 m!5921656))

(assert (=> b!4911719 d!1578418))

(declare-fun d!1578420 () Bool)

(declare-fun c!834905 () Bool)

(assert (=> d!1578420 (= c!834905 ((_ is Node!14826) (c!834890 input!1509)))))

(declare-fun e!3070144 () Bool)

(assert (=> d!1578420 (= (inv!73184 (c!834890 input!1509)) e!3070144)))

(declare-fun b!4911824 () Bool)

(declare-fun inv!73187 (Conc!14826) Bool)

(assert (=> b!4911824 (= e!3070144 (inv!73187 (c!834890 input!1509)))))

(declare-fun b!4911825 () Bool)

(declare-fun e!3070145 () Bool)

(assert (=> b!4911825 (= e!3070144 e!3070145)))

(declare-fun res!2098184 () Bool)

(assert (=> b!4911825 (= res!2098184 (not ((_ is Leaf!24672) (c!834890 input!1509))))))

(assert (=> b!4911825 (=> res!2098184 e!3070145)))

(declare-fun b!4911826 () Bool)

(declare-fun inv!73188 (Conc!14826) Bool)

(assert (=> b!4911826 (= e!3070145 (inv!73188 (c!834890 input!1509)))))

(assert (= (and d!1578420 c!834905) b!4911824))

(assert (= (and d!1578420 (not c!834905)) b!4911825))

(assert (= (and b!4911825 (not res!2098184)) b!4911826))

(declare-fun m!5921658 () Bool)

(assert (=> b!4911824 m!5921658))

(declare-fun m!5921660 () Bool)

(assert (=> b!4911826 m!5921660))

(assert (=> b!4911720 d!1578420))

(declare-fun d!1578422 () Bool)

(declare-fun res!2098189 () Bool)

(declare-fun e!3070148 () Bool)

(assert (=> d!1578422 (=> (not res!2098189) (not e!3070148))))

(assert (=> d!1578422 (= res!2098189 (not (isEmpty!30519 (originalCharacters!8551 lt!2016317))))))

(assert (=> d!1578422 (= (inv!73181 lt!2016317) e!3070148)))

(declare-fun b!4911831 () Bool)

(declare-fun res!2098190 () Bool)

(assert (=> b!4911831 (=> (not res!2098190) (not e!3070148))))

(declare-fun dynLambda!22973 (Int TokenValue!8568) BalanceConc!29082)

(assert (=> b!4911831 (= res!2098190 (= (originalCharacters!8551 lt!2016317) (list!17866 (dynLambda!22973 (toChars!11064 (transformation!8258 (rule!11474 lt!2016317))) (value!264483 lt!2016317)))))))

(declare-fun b!4911832 () Bool)

(assert (=> b!4911832 (= e!3070148 (= (size!37363 lt!2016317) (size!37364 (originalCharacters!8551 lt!2016317))))))

(assert (= (and d!1578422 res!2098189) b!4911831))

(assert (= (and b!4911831 res!2098190) b!4911832))

(declare-fun b_lambda!196027 () Bool)

(assert (=> (not b_lambda!196027) (not b!4911831)))

(declare-fun t!367093 () Bool)

(declare-fun tb!260101 () Bool)

(assert (=> (and b!4911713 (= (toChars!11064 (transformation!8258 rule!164)) (toChars!11064 (transformation!8258 (rule!11474 lt!2016317)))) t!367093) tb!260101))

(declare-fun b!4911837 () Bool)

(declare-fun e!3070151 () Bool)

(declare-fun tp!1381135 () Bool)

(assert (=> b!4911837 (= e!3070151 (and (inv!73184 (c!834890 (dynLambda!22973 (toChars!11064 (transformation!8258 (rule!11474 lt!2016317))) (value!264483 lt!2016317)))) tp!1381135))))

(declare-fun result!324034 () Bool)

(assert (=> tb!260101 (= result!324034 (and (inv!73182 (dynLambda!22973 (toChars!11064 (transformation!8258 (rule!11474 lt!2016317))) (value!264483 lt!2016317))) e!3070151))))

(assert (= tb!260101 b!4911837))

(declare-fun m!5921662 () Bool)

(assert (=> b!4911837 m!5921662))

(declare-fun m!5921664 () Bool)

(assert (=> tb!260101 m!5921664))

(assert (=> b!4911831 t!367093))

(declare-fun b_and!346801 () Bool)

(assert (= b_and!346785 (and (=> t!367093 result!324034) b_and!346801)))

(declare-fun m!5921666 () Bool)

(assert (=> d!1578422 m!5921666))

(declare-fun m!5921668 () Bool)

(assert (=> b!4911831 m!5921668))

(assert (=> b!4911831 m!5921668))

(declare-fun m!5921670 () Bool)

(assert (=> b!4911831 m!5921670))

(declare-fun m!5921672 () Bool)

(assert (=> b!4911832 m!5921672))

(assert (=> b!4911710 d!1578422))

(declare-fun d!1578424 () Bool)

(declare-fun fromListB!2724 (List!56715) BalanceConc!29082)

(assert (=> d!1578424 (= (seqFromList!5998 lt!2016322) (fromListB!2724 lt!2016322))))

(declare-fun bs!1177519 () Bool)

(assert (= bs!1177519 d!1578424))

(declare-fun m!5921674 () Bool)

(assert (=> bs!1177519 m!5921674))

(assert (=> b!4911721 d!1578424))

(declare-fun d!1578426 () Bool)

(declare-fun isEmpty!30525 (Option!14146) Bool)

(assert (=> d!1578426 (= (isDefined!11153 (Some!14145 (tuple2!60985 lt!2016317 (_2!33794 lt!2016324)))) (not (isEmpty!30525 (Some!14145 (tuple2!60985 lt!2016317 (_2!33794 lt!2016324))))))))

(declare-fun bs!1177520 () Bool)

(assert (= bs!1177520 d!1578426))

(declare-fun m!5921676 () Bool)

(assert (=> bs!1177520 m!5921676))

(assert (=> b!4911721 d!1578426))

(declare-fun b!4911916 () Bool)

(declare-fun e!3070195 () Bool)

(assert (=> b!4911916 (= e!3070195 (matchR!6598 (regex!8258 rule!164) (_1!33792 (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)))))))

(declare-fun b!4911917 () Bool)

(declare-fun res!2098218 () Bool)

(declare-fun e!3070197 () Bool)

(assert (=> b!4911917 (=> (not res!2098218) (not e!3070197))))

(declare-fun lt!2016458 () Option!14145)

(assert (=> b!4911917 (= res!2098218 (= (rule!11474 (_1!33793 (get!19595 lt!2016458))) rule!164))))

(declare-fun b!4911918 () Bool)

(declare-fun e!3070194 () Bool)

(assert (=> b!4911918 (= e!3070194 e!3070197)))

(declare-fun res!2098217 () Bool)

(assert (=> b!4911918 (=> (not res!2098217) (not e!3070197))))

(declare-fun charsOf!5407 (Token!15040) BalanceConc!29082)

(assert (=> b!4911918 (= res!2098217 (matchR!6598 (regex!8258 rule!164) (list!17866 (charsOf!5407 (_1!33793 (get!19595 lt!2016458))))))))

(declare-fun b!4911919 () Bool)

(declare-fun res!2098221 () Bool)

(assert (=> b!4911919 (=> (not res!2098221) (not e!3070197))))

(assert (=> b!4911919 (= res!2098221 (< (size!37364 (_2!33793 (get!19595 lt!2016458))) (size!37364 lt!2016319)))))

(declare-fun b!4911920 () Bool)

(assert (=> b!4911920 (= e!3070197 (= (size!37363 (_1!33793 (get!19595 lt!2016458))) (size!37364 (originalCharacters!8551 (_1!33793 (get!19595 lt!2016458))))))))

(declare-fun b!4911921 () Bool)

(declare-fun res!2098223 () Bool)

(assert (=> b!4911921 (=> (not res!2098223) (not e!3070197))))

(declare-fun ++!12283 (List!56715 List!56715) List!56715)

(assert (=> b!4911921 (= res!2098223 (= (++!12283 (list!17866 (charsOf!5407 (_1!33793 (get!19595 lt!2016458)))) (_2!33793 (get!19595 lt!2016458))) lt!2016319))))

(declare-fun d!1578428 () Bool)

(assert (=> d!1578428 e!3070194))

(declare-fun res!2098222 () Bool)

(assert (=> d!1578428 (=> res!2098222 e!3070194)))

(declare-fun isEmpty!30526 (Option!14145) Bool)

(assert (=> d!1578428 (= res!2098222 (isEmpty!30526 lt!2016458))))

(declare-fun e!3070196 () Option!14145)

(assert (=> d!1578428 (= lt!2016458 e!3070196)))

(declare-fun c!834930 () Bool)

(declare-fun lt!2016460 () tuple2!60978)

(assert (=> d!1578428 (= c!834930 (isEmpty!30519 (_1!33792 lt!2016460)))))

(assert (=> d!1578428 (= lt!2016460 (findLongestMatch!1686 (regex!8258 rule!164) lt!2016319))))

(assert (=> d!1578428 (ruleValid!3755 thiss!15943 rule!164)))

(assert (=> d!1578428 (= (maxPrefixOneRule!3591 thiss!15943 rule!164 lt!2016319) lt!2016458)))

(declare-fun b!4911922 () Bool)

(declare-fun res!2098219 () Bool)

(assert (=> b!4911922 (=> (not res!2098219) (not e!3070197))))

(assert (=> b!4911922 (= res!2098219 (= (value!264483 (_1!33793 (get!19595 lt!2016458))) (apply!13600 (transformation!8258 (rule!11474 (_1!33793 (get!19595 lt!2016458)))) (seqFromList!5998 (originalCharacters!8551 (_1!33793 (get!19595 lt!2016458)))))))))

(declare-fun b!4911923 () Bool)

(assert (=> b!4911923 (= e!3070196 None!14144)))

(declare-fun b!4911924 () Bool)

(assert (=> b!4911924 (= e!3070196 (Some!14144 (tuple2!60981 (Token!15041 (apply!13600 (transformation!8258 rule!164) (seqFromList!5998 (_1!33792 lt!2016460))) rule!164 (size!37365 (seqFromList!5998 (_1!33792 lt!2016460))) (_1!33792 lt!2016460)) (_2!33792 lt!2016460))))))

(declare-fun lt!2016461 () Unit!146866)

(assert (=> b!4911924 (= lt!2016461 (longestMatchIsAcceptedByMatchOrIsEmpty!1782 (regex!8258 rule!164) lt!2016319))))

(declare-fun res!2098220 () Bool)

(assert (=> b!4911924 (= res!2098220 (isEmpty!30519 (_1!33792 (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)))))))

(assert (=> b!4911924 (=> res!2098220 e!3070195)))

(assert (=> b!4911924 e!3070195))

(declare-fun lt!2016459 () Unit!146866)

(assert (=> b!4911924 (= lt!2016459 lt!2016461)))

(declare-fun lt!2016457 () Unit!146866)

(declare-fun lemmaSemiInverse!2595 (TokenValueInjection!16444 BalanceConc!29082) Unit!146866)

(assert (=> b!4911924 (= lt!2016457 (lemmaSemiInverse!2595 (transformation!8258 rule!164) (seqFromList!5998 (_1!33792 lt!2016460))))))

(assert (= (and d!1578428 c!834930) b!4911923))

(assert (= (and d!1578428 (not c!834930)) b!4911924))

(assert (= (and b!4911924 (not res!2098220)) b!4911916))

(assert (= (and d!1578428 (not res!2098222)) b!4911918))

(assert (= (and b!4911918 res!2098217) b!4911921))

(assert (= (and b!4911921 res!2098223) b!4911919))

(assert (= (and b!4911919 res!2098221) b!4911917))

(assert (= (and b!4911917 res!2098218) b!4911922))

(assert (= (and b!4911922 res!2098219) b!4911920))

(assert (=> b!4911916 m!5921540))

(assert (=> b!4911916 m!5921542))

(assert (=> b!4911916 m!5921540))

(assert (=> b!4911916 m!5921542))

(assert (=> b!4911916 m!5921544))

(declare-fun m!5921746 () Bool)

(assert (=> b!4911916 m!5921746))

(declare-fun m!5921748 () Bool)

(assert (=> b!4911918 m!5921748))

(declare-fun m!5921750 () Bool)

(assert (=> b!4911918 m!5921750))

(assert (=> b!4911918 m!5921750))

(declare-fun m!5921752 () Bool)

(assert (=> b!4911918 m!5921752))

(assert (=> b!4911918 m!5921752))

(declare-fun m!5921754 () Bool)

(assert (=> b!4911918 m!5921754))

(declare-fun m!5921756 () Bool)

(assert (=> d!1578428 m!5921756))

(declare-fun m!5921758 () Bool)

(assert (=> d!1578428 m!5921758))

(declare-fun m!5921760 () Bool)

(assert (=> d!1578428 m!5921760))

(assert (=> d!1578428 m!5921566))

(declare-fun m!5921762 () Bool)

(assert (=> b!4911924 m!5921762))

(assert (=> b!4911924 m!5921762))

(declare-fun m!5921764 () Bool)

(assert (=> b!4911924 m!5921764))

(assert (=> b!4911924 m!5921540))

(assert (=> b!4911924 m!5921762))

(declare-fun m!5921766 () Bool)

(assert (=> b!4911924 m!5921766))

(assert (=> b!4911924 m!5921542))

(assert (=> b!4911924 m!5921540))

(assert (=> b!4911924 m!5921542))

(assert (=> b!4911924 m!5921544))

(assert (=> b!4911924 m!5921762))

(declare-fun m!5921768 () Bool)

(assert (=> b!4911924 m!5921768))

(assert (=> b!4911924 m!5921546))

(declare-fun m!5921770 () Bool)

(assert (=> b!4911924 m!5921770))

(assert (=> b!4911919 m!5921748))

(declare-fun m!5921772 () Bool)

(assert (=> b!4911919 m!5921772))

(assert (=> b!4911919 m!5921542))

(assert (=> b!4911917 m!5921748))

(assert (=> b!4911920 m!5921748))

(declare-fun m!5921774 () Bool)

(assert (=> b!4911920 m!5921774))

(assert (=> b!4911922 m!5921748))

(declare-fun m!5921776 () Bool)

(assert (=> b!4911922 m!5921776))

(assert (=> b!4911922 m!5921776))

(declare-fun m!5921778 () Bool)

(assert (=> b!4911922 m!5921778))

(assert (=> b!4911921 m!5921748))

(assert (=> b!4911921 m!5921750))

(assert (=> b!4911921 m!5921750))

(assert (=> b!4911921 m!5921752))

(assert (=> b!4911921 m!5921752))

(declare-fun m!5921780 () Bool)

(assert (=> b!4911921 m!5921780))

(assert (=> b!4911721 d!1578428))

(declare-fun d!1578446 () Bool)

(declare-fun list!17868 (Conc!14826) List!56715)

(assert (=> d!1578446 (= (list!17866 (_1!33794 lt!2016324)) (list!17868 (c!834890 (_1!33794 lt!2016324))))))

(declare-fun bs!1177524 () Bool)

(assert (= bs!1177524 d!1578446))

(declare-fun m!5921782 () Bool)

(assert (=> bs!1177524 m!5921782))

(assert (=> b!4911721 d!1578446))

(declare-fun d!1578448 () Bool)

(assert (=> d!1578448 (= (isDefined!11152 lt!2016327) (not (isEmpty!30526 lt!2016327)))))

(declare-fun bs!1177525 () Bool)

(assert (= bs!1177525 d!1578448))

(declare-fun m!5921784 () Bool)

(assert (=> bs!1177525 m!5921784))

(assert (=> b!4911721 d!1578448))

(declare-fun d!1578450 () Bool)

(assert (=> d!1578450 (= (apply!13600 (transformation!8258 rule!164) (_1!33794 lt!2016324)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324)))))

(declare-fun b_lambda!196029 () Bool)

(assert (=> (not b_lambda!196029) (not d!1578450)))

(assert (=> d!1578450 t!367091))

(declare-fun b_and!346803 () Bool)

(assert (= b_and!346799 (and (=> t!367091 result!324032) b_and!346803)))

(assert (=> d!1578450 m!5921654))

(assert (=> b!4911721 d!1578450))

(declare-fun d!1578452 () Bool)

(declare-fun lt!2016474 () Int)

(assert (=> d!1578452 (= lt!2016474 (size!37364 (list!17866 (_1!33794 lt!2016324))))))

(declare-fun size!37367 (Conc!14826) Int)

(assert (=> d!1578452 (= lt!2016474 (size!37367 (c!834890 (_1!33794 lt!2016324))))))

(assert (=> d!1578452 (= (size!37365 (_1!33794 lt!2016324)) lt!2016474)))

(declare-fun bs!1177526 () Bool)

(assert (= bs!1177526 d!1578452))

(assert (=> bs!1177526 m!5921510))

(assert (=> bs!1177526 m!5921510))

(declare-fun m!5921786 () Bool)

(assert (=> bs!1177526 m!5921786))

(declare-fun m!5921788 () Bool)

(assert (=> bs!1177526 m!5921788))

(assert (=> b!4911721 d!1578452))

(declare-fun d!1578454 () Bool)

(declare-fun dynLambda!22975 (Int BalanceConc!29082) Bool)

(assert (=> d!1578454 (dynLambda!22975 lambda!244764 lt!2016326)))

(declare-fun lt!2016482 () Unit!146866)

(declare-fun choose!35940 (Int BalanceConc!29082) Unit!146866)

(assert (=> d!1578454 (= lt!2016482 (choose!35940 lambda!244764 lt!2016326))))

(assert (=> d!1578454 (Forall!1753 lambda!244764)))

(assert (=> d!1578454 (= (ForallOf!1193 lambda!244764 lt!2016326) lt!2016482)))

(declare-fun b_lambda!196031 () Bool)

(assert (=> (not b_lambda!196031) (not d!1578454)))

(declare-fun bs!1177527 () Bool)

(assert (= bs!1177527 d!1578454))

(declare-fun m!5921804 () Bool)

(assert (=> bs!1177527 m!5921804))

(declare-fun m!5921810 () Bool)

(assert (=> bs!1177527 m!5921810))

(assert (=> bs!1177527 m!5921560))

(assert (=> b!4911721 d!1578454))

(declare-fun d!1578456 () Bool)

(assert (=> d!1578456 (dynLambda!22975 lambda!244764 (_1!33794 lt!2016324))))

(declare-fun lt!2016483 () Unit!146866)

(assert (=> d!1578456 (= lt!2016483 (choose!35940 lambda!244764 (_1!33794 lt!2016324)))))

(assert (=> d!1578456 (Forall!1753 lambda!244764)))

(assert (=> d!1578456 (= (ForallOf!1193 lambda!244764 (_1!33794 lt!2016324)) lt!2016483)))

(declare-fun b_lambda!196033 () Bool)

(assert (=> (not b_lambda!196033) (not d!1578456)))

(declare-fun bs!1177528 () Bool)

(assert (= bs!1177528 d!1578456))

(declare-fun m!5921822 () Bool)

(assert (=> bs!1177528 m!5921822))

(declare-fun m!5921824 () Bool)

(assert (=> bs!1177528 m!5921824))

(assert (=> bs!1177528 m!5921560))

(assert (=> b!4911721 d!1578456))

(declare-fun d!1578458 () Bool)

(assert (=> d!1578458 (= (list!17866 input!1509) (list!17868 (c!834890 input!1509)))))

(declare-fun bs!1177529 () Bool)

(assert (= bs!1177529 d!1578458))

(declare-fun m!5921828 () Bool)

(assert (=> bs!1177529 m!5921828))

(assert (=> b!4911711 d!1578458))

(declare-fun d!1578460 () Bool)

(declare-fun e!3070224 () Bool)

(assert (=> d!1578460 e!3070224))

(declare-fun res!2098253 () Bool)

(assert (=> d!1578460 (=> res!2098253 e!3070224)))

(assert (=> d!1578460 (= res!2098253 (isEmpty!30519 (_1!33792 (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)))))))

(declare-fun lt!2016490 () Unit!146866)

(declare-fun choose!35941 (Regex!13333 List!56715) Unit!146866)

(assert (=> d!1578460 (= lt!2016490 (choose!35941 (regex!8258 rule!164) lt!2016319))))

(assert (=> d!1578460 (validRegex!5924 (regex!8258 rule!164))))

(assert (=> d!1578460 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1782 (regex!8258 rule!164) lt!2016319) lt!2016490)))

(declare-fun b!4911985 () Bool)

(assert (=> b!4911985 (= e!3070224 (matchR!6598 (regex!8258 rule!164) (_1!33792 (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)))))))

(assert (= (and d!1578460 (not res!2098253)) b!4911985))

(assert (=> d!1578460 m!5921540))

(assert (=> d!1578460 m!5921770))

(declare-fun m!5921854 () Bool)

(assert (=> d!1578460 m!5921854))

(assert (=> d!1578460 m!5921542))

(assert (=> d!1578460 m!5921644))

(assert (=> d!1578460 m!5921540))

(assert (=> d!1578460 m!5921542))

(assert (=> d!1578460 m!5921544))

(assert (=> b!4911985 m!5921540))

(assert (=> b!4911985 m!5921542))

(assert (=> b!4911985 m!5921540))

(assert (=> b!4911985 m!5921542))

(assert (=> b!4911985 m!5921544))

(assert (=> b!4911985 m!5921746))

(assert (=> b!4911711 d!1578460))

(declare-fun d!1578480 () Bool)

(declare-fun e!3070229 () Bool)

(assert (=> d!1578480 e!3070229))

(declare-fun res!2098256 () Bool)

(assert (=> d!1578480 (=> (not res!2098256) (not e!3070229))))

(assert (=> d!1578480 (= res!2098256 (semiInverseModEq!3659 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))))))

(declare-fun Unit!146872 () Unit!146866)

(assert (=> d!1578480 (= (lemmaInv!1300 (transformation!8258 rule!164)) Unit!146872)))

(declare-fun b!4911990 () Bool)

(assert (=> b!4911990 (= e!3070229 (equivClasses!3509 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))))))

(assert (= (and d!1578480 res!2098256) b!4911990))

(assert (=> d!1578480 m!5921538))

(assert (=> b!4911990 m!5921656))

(assert (=> b!4911711 d!1578480))

(declare-fun d!1578484 () Bool)

(declare-fun lt!2016493 () Int)

(assert (=> d!1578484 (>= lt!2016493 0)))

(declare-fun e!3070232 () Int)

(assert (=> d!1578484 (= lt!2016493 e!3070232)))

(declare-fun c!834936 () Bool)

(assert (=> d!1578484 (= c!834936 ((_ is Nil!56591) lt!2016319))))

(assert (=> d!1578484 (= (size!37364 lt!2016319) lt!2016493)))

(declare-fun b!4911995 () Bool)

(assert (=> b!4911995 (= e!3070232 0)))

(declare-fun b!4911996 () Bool)

(assert (=> b!4911996 (= e!3070232 (+ 1 (size!37364 (t!367081 lt!2016319))))))

(assert (= (and d!1578484 c!834936) b!4911995))

(assert (= (and d!1578484 (not c!834936)) b!4911996))

(declare-fun m!5921872 () Bool)

(assert (=> b!4911996 m!5921872))

(assert (=> b!4911711 d!1578484))

(declare-fun d!1578486 () Bool)

(declare-fun lt!2016494 () Int)

(assert (=> d!1578486 (>= lt!2016494 0)))

(declare-fun e!3070233 () Int)

(assert (=> d!1578486 (= lt!2016494 e!3070233)))

(declare-fun c!834937 () Bool)

(assert (=> d!1578486 (= c!834937 ((_ is Nil!56591) Nil!56591))))

(assert (=> d!1578486 (= (size!37364 Nil!56591) lt!2016494)))

(declare-fun b!4911997 () Bool)

(assert (=> b!4911997 (= e!3070233 0)))

(declare-fun b!4911998 () Bool)

(assert (=> b!4911998 (= e!3070233 (+ 1 (size!37364 (t!367081 Nil!56591))))))

(assert (= (and d!1578486 c!834937) b!4911997))

(assert (= (and d!1578486 (not c!834937)) b!4911998))

(declare-fun m!5921874 () Bool)

(assert (=> b!4911998 m!5921874))

(assert (=> b!4911711 d!1578486))

(declare-fun d!1578488 () Bool)

(assert (=> d!1578488 (= (isEmpty!30519 (_1!33792 lt!2016329)) ((_ is Nil!56591) (_1!33792 lt!2016329)))))

(assert (=> b!4911711 d!1578488))

(declare-fun bs!1177538 () Bool)

(declare-fun d!1578490 () Bool)

(assert (= bs!1177538 (and d!1578490 b!4911715)))

(declare-fun lambda!244776 () Int)

(assert (=> bs!1177538 (= lambda!244776 lambda!244764)))

(assert (=> d!1578490 true))

(assert (=> d!1578490 (< (dynLambda!22967 order!25933 (toChars!11064 (transformation!8258 rule!164))) (dynLambda!22966 order!25931 lambda!244776))))

(assert (=> d!1578490 true))

(assert (=> d!1578490 (< (dynLambda!22965 order!25929 (toValue!11205 (transformation!8258 rule!164))) (dynLambda!22966 order!25931 lambda!244776))))

(assert (=> d!1578490 (= (semiInverseModEq!3659 (toChars!11064 (transformation!8258 rule!164)) (toValue!11205 (transformation!8258 rule!164))) (Forall!1753 lambda!244776))))

(declare-fun bs!1177539 () Bool)

(assert (= bs!1177539 d!1578490))

(declare-fun m!5921876 () Bool)

(assert (=> bs!1177539 m!5921876))

(assert (=> b!4911711 d!1578490))

(declare-fun b!4912031 () Bool)

(declare-fun e!3070252 () Unit!146866)

(declare-fun Unit!146873 () Unit!146866)

(assert (=> b!4912031 (= e!3070252 Unit!146873)))

(declare-fun lt!2016559 () Unit!146866)

(declare-fun call!341134 () Unit!146866)

(assert (=> b!4912031 (= lt!2016559 call!341134)))

(declare-fun call!341132 () Bool)

(assert (=> b!4912031 call!341132))

(declare-fun lt!2016564 () Unit!146866)

(assert (=> b!4912031 (= lt!2016564 lt!2016559)))

(declare-fun lt!2016553 () Unit!146866)

(declare-fun call!341133 () Unit!146866)

(assert (=> b!4912031 (= lt!2016553 call!341133)))

(assert (=> b!4912031 (= lt!2016319 Nil!56591)))

(declare-fun lt!2016575 () Unit!146866)

(assert (=> b!4912031 (= lt!2016575 lt!2016553)))

(assert (=> b!4912031 false))

(declare-fun bm!341125 () Bool)

(declare-fun call!341135 () List!56715)

(declare-fun tail!9643 (List!56715) List!56715)

(assert (=> bm!341125 (= call!341135 (tail!9643 lt!2016319))))

(declare-fun b!4912032 () Bool)

(declare-fun e!3070253 () tuple2!60978)

(assert (=> b!4912032 (= e!3070253 (tuple2!60979 Nil!56591 lt!2016319))))

(declare-fun b!4912033 () Bool)

(declare-fun e!3070254 () Bool)

(declare-fun e!3070257 () Bool)

(assert (=> b!4912033 (= e!3070254 e!3070257)))

(declare-fun res!2098262 () Bool)

(assert (=> b!4912033 (=> res!2098262 e!3070257)))

(declare-fun lt!2016569 () tuple2!60978)

(assert (=> b!4912033 (= res!2098262 (isEmpty!30519 (_1!33792 lt!2016569)))))

(declare-fun d!1578492 () Bool)

(assert (=> d!1578492 e!3070254))

(declare-fun res!2098261 () Bool)

(assert (=> d!1578492 (=> (not res!2098261) (not e!3070254))))

(assert (=> d!1578492 (= res!2098261 (= (++!12283 (_1!33792 lt!2016569) (_2!33792 lt!2016569)) lt!2016319))))

(declare-fun e!3070255 () tuple2!60978)

(assert (=> d!1578492 (= lt!2016569 e!3070255)))

(declare-fun c!834954 () Bool)

(declare-fun lostCause!1123 (Regex!13333) Bool)

(assert (=> d!1578492 (= c!834954 (lostCause!1123 (regex!8258 rule!164)))))

(declare-fun lt!2016570 () Unit!146866)

(declare-fun Unit!146874 () Unit!146866)

(assert (=> d!1578492 (= lt!2016570 Unit!146874)))

(declare-fun getSuffix!2924 (List!56715 List!56715) List!56715)

(assert (=> d!1578492 (= (getSuffix!2924 lt!2016319 Nil!56591) lt!2016319)))

(declare-fun lt!2016572 () Unit!146866)

(declare-fun lt!2016577 () Unit!146866)

(assert (=> d!1578492 (= lt!2016572 lt!2016577)))

(declare-fun lt!2016552 () List!56715)

(assert (=> d!1578492 (= lt!2016319 lt!2016552)))

(declare-fun lemmaSamePrefixThenSameSuffix!2340 (List!56715 List!56715 List!56715 List!56715 List!56715) Unit!146866)

(assert (=> d!1578492 (= lt!2016577 (lemmaSamePrefixThenSameSuffix!2340 Nil!56591 lt!2016319 Nil!56591 lt!2016552 lt!2016319))))

(assert (=> d!1578492 (= lt!2016552 (getSuffix!2924 lt!2016319 Nil!56591))))

(declare-fun lt!2016571 () Unit!146866)

(declare-fun lt!2016563 () Unit!146866)

(assert (=> d!1578492 (= lt!2016571 lt!2016563)))

(declare-fun isPrefix!4936 (List!56715 List!56715) Bool)

(assert (=> d!1578492 (isPrefix!4936 Nil!56591 (++!12283 Nil!56591 lt!2016319))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3160 (List!56715 List!56715) Unit!146866)

(assert (=> d!1578492 (= lt!2016563 (lemmaConcatTwoListThenFirstIsPrefix!3160 Nil!56591 lt!2016319))))

(assert (=> d!1578492 (validRegex!5924 (regex!8258 rule!164))))

(assert (=> d!1578492 (= (findLongestMatchInner!1819 (regex!8258 rule!164) Nil!56591 (size!37364 Nil!56591) lt!2016319 lt!2016319 (size!37364 lt!2016319)) lt!2016569)))

(declare-fun bm!341126 () Bool)

(declare-fun call!341137 () tuple2!60978)

(declare-fun lt!2016560 () List!56715)

(declare-fun call!341136 () Regex!13333)

(assert (=> bm!341126 (= call!341137 (findLongestMatchInner!1819 call!341136 lt!2016560 (+ (size!37364 Nil!56591) 1) call!341135 lt!2016319 (size!37364 lt!2016319)))))

(declare-fun b!4912034 () Bool)

(declare-fun e!3070251 () tuple2!60978)

(declare-fun e!3070256 () tuple2!60978)

(assert (=> b!4912034 (= e!3070251 e!3070256)))

(declare-fun lt!2016562 () tuple2!60978)

(assert (=> b!4912034 (= lt!2016562 call!341137)))

(declare-fun c!834955 () Bool)

(assert (=> b!4912034 (= c!834955 (isEmpty!30519 (_1!33792 lt!2016562)))))

(declare-fun b!4912035 () Bool)

(assert (=> b!4912035 (= e!3070256 (tuple2!60979 Nil!56591 lt!2016319))))

(declare-fun b!4912036 () Bool)

(declare-fun c!834951 () Bool)

(declare-fun call!341131 () Bool)

(assert (=> b!4912036 (= c!834951 call!341131)))

(declare-fun lt!2016551 () Unit!146866)

(declare-fun lt!2016561 () Unit!146866)

(assert (=> b!4912036 (= lt!2016551 lt!2016561)))

(assert (=> b!4912036 (= lt!2016319 Nil!56591)))

(assert (=> b!4912036 (= lt!2016561 call!341133)))

(declare-fun lt!2016567 () Unit!146866)

(declare-fun lt!2016574 () Unit!146866)

(assert (=> b!4912036 (= lt!2016567 lt!2016574)))

(assert (=> b!4912036 call!341132))

(assert (=> b!4912036 (= lt!2016574 call!341134)))

(declare-fun e!3070250 () tuple2!60978)

(assert (=> b!4912036 (= e!3070250 e!3070253)))

(declare-fun b!4912037 () Bool)

(declare-fun c!834953 () Bool)

(assert (=> b!4912037 (= c!834953 call!341131)))

(declare-fun lt!2016576 () Unit!146866)

(declare-fun lt!2016557 () Unit!146866)

(assert (=> b!4912037 (= lt!2016576 lt!2016557)))

(declare-fun lt!2016566 () C!26864)

(declare-fun lt!2016578 () List!56715)

(assert (=> b!4912037 (= (++!12283 (++!12283 Nil!56591 (Cons!56591 lt!2016566 Nil!56591)) lt!2016578) lt!2016319)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1367 (List!56715 C!26864 List!56715 List!56715) Unit!146866)

(assert (=> b!4912037 (= lt!2016557 (lemmaMoveElementToOtherListKeepsConcatEq!1367 Nil!56591 lt!2016566 lt!2016578 lt!2016319))))

(assert (=> b!4912037 (= lt!2016578 (tail!9643 lt!2016319))))

(declare-fun head!10496 (List!56715) C!26864)

(assert (=> b!4912037 (= lt!2016566 (head!10496 lt!2016319))))

(declare-fun lt!2016554 () Unit!146866)

(declare-fun lt!2016555 () Unit!146866)

(assert (=> b!4912037 (= lt!2016554 lt!2016555)))

(assert (=> b!4912037 (isPrefix!4936 (++!12283 Nil!56591 (Cons!56591 (head!10496 (getSuffix!2924 lt!2016319 Nil!56591)) Nil!56591)) lt!2016319)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!749 (List!56715 List!56715) Unit!146866)

(assert (=> b!4912037 (= lt!2016555 (lemmaAddHeadSuffixToPrefixStillPrefix!749 Nil!56591 lt!2016319))))

(declare-fun lt!2016558 () Unit!146866)

(declare-fun lt!2016573 () Unit!146866)

(assert (=> b!4912037 (= lt!2016558 lt!2016573)))

(assert (=> b!4912037 (= lt!2016573 (lemmaAddHeadSuffixToPrefixStillPrefix!749 Nil!56591 lt!2016319))))

(assert (=> b!4912037 (= lt!2016560 (++!12283 Nil!56591 (Cons!56591 (head!10496 lt!2016319) Nil!56591)))))

(declare-fun lt!2016568 () Unit!146866)

(assert (=> b!4912037 (= lt!2016568 e!3070252)))

(declare-fun c!834950 () Bool)

(assert (=> b!4912037 (= c!834950 (= (size!37364 Nil!56591) (size!37364 lt!2016319)))))

(declare-fun lt!2016565 () Unit!146866)

(declare-fun lt!2016556 () Unit!146866)

(assert (=> b!4912037 (= lt!2016565 lt!2016556)))

(assert (=> b!4912037 (<= (size!37364 Nil!56591) (size!37364 lt!2016319))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!661 (List!56715 List!56715) Unit!146866)

(assert (=> b!4912037 (= lt!2016556 (lemmaIsPrefixThenSmallerEqSize!661 Nil!56591 lt!2016319))))

(assert (=> b!4912037 (= e!3070250 e!3070251)))

(declare-fun bm!341127 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1095 (List!56715 List!56715 List!56715) Unit!146866)

(assert (=> bm!341127 (= call!341133 (lemmaIsPrefixSameLengthThenSameList!1095 lt!2016319 Nil!56591 lt!2016319))))

(declare-fun bm!341128 () Bool)

(declare-fun call!341130 () C!26864)

(assert (=> bm!341128 (= call!341130 (head!10496 lt!2016319))))

(declare-fun bm!341129 () Bool)

(declare-fun lemmaIsPrefixRefl!3333 (List!56715 List!56715) Unit!146866)

(assert (=> bm!341129 (= call!341134 (lemmaIsPrefixRefl!3333 lt!2016319 lt!2016319))))

(declare-fun b!4912038 () Bool)

(assert (=> b!4912038 (= e!3070257 (>= (size!37364 (_1!33792 lt!2016569)) (size!37364 Nil!56591)))))

(declare-fun b!4912039 () Bool)

(assert (=> b!4912039 (= e!3070251 call!341137)))

(declare-fun b!4912040 () Bool)

(assert (=> b!4912040 (= e!3070253 (tuple2!60979 Nil!56591 Nil!56591))))

(declare-fun bm!341130 () Bool)

(declare-fun derivativeStep!3915 (Regex!13333 C!26864) Regex!13333)

(assert (=> bm!341130 (= call!341136 (derivativeStep!3915 (regex!8258 rule!164) call!341130))))

(declare-fun b!4912041 () Bool)

(assert (=> b!4912041 (= e!3070255 e!3070250)))

(declare-fun c!834952 () Bool)

(assert (=> b!4912041 (= c!834952 (= (size!37364 Nil!56591) (size!37364 lt!2016319)))))

(declare-fun b!4912042 () Bool)

(assert (=> b!4912042 (= e!3070255 (tuple2!60979 Nil!56591 lt!2016319))))

(declare-fun b!4912043 () Bool)

(declare-fun Unit!146875 () Unit!146866)

(assert (=> b!4912043 (= e!3070252 Unit!146875)))

(declare-fun bm!341131 () Bool)

(declare-fun nullable!4597 (Regex!13333) Bool)

(assert (=> bm!341131 (= call!341131 (nullable!4597 (regex!8258 rule!164)))))

(declare-fun b!4912044 () Bool)

(assert (=> b!4912044 (= e!3070256 lt!2016562)))

(declare-fun bm!341132 () Bool)

(assert (=> bm!341132 (= call!341132 (isPrefix!4936 lt!2016319 lt!2016319))))

(assert (= (and d!1578492 c!834954) b!4912042))

(assert (= (and d!1578492 (not c!834954)) b!4912041))

(assert (= (and b!4912041 c!834952) b!4912036))

(assert (= (and b!4912041 (not c!834952)) b!4912037))

(assert (= (and b!4912036 c!834951) b!4912040))

(assert (= (and b!4912036 (not c!834951)) b!4912032))

(assert (= (and b!4912037 c!834950) b!4912031))

(assert (= (and b!4912037 (not c!834950)) b!4912043))

(assert (= (and b!4912037 c!834953) b!4912034))

(assert (= (and b!4912037 (not c!834953)) b!4912039))

(assert (= (and b!4912034 c!834955) b!4912035))

(assert (= (and b!4912034 (not c!834955)) b!4912044))

(assert (= (or b!4912034 b!4912039) bm!341128))

(assert (= (or b!4912034 b!4912039) bm!341125))

(assert (= (or b!4912034 b!4912039) bm!341130))

(assert (= (or b!4912034 b!4912039) bm!341126))

(assert (= (or b!4912036 b!4912031) bm!341132))

(assert (= (or b!4912036 b!4912031) bm!341129))

(assert (= (or b!4912036 b!4912031) bm!341127))

(assert (= (or b!4912036 b!4912037) bm!341131))

(assert (= (and d!1578492 res!2098261) b!4912033))

(assert (= (and b!4912033 (not res!2098262)) b!4912038))

(declare-fun m!5921878 () Bool)

(assert (=> bm!341129 m!5921878))

(declare-fun m!5921880 () Bool)

(assert (=> d!1578492 m!5921880))

(declare-fun m!5921882 () Bool)

(assert (=> d!1578492 m!5921882))

(declare-fun m!5921884 () Bool)

(assert (=> d!1578492 m!5921884))

(declare-fun m!5921886 () Bool)

(assert (=> d!1578492 m!5921886))

(assert (=> d!1578492 m!5921644))

(declare-fun m!5921888 () Bool)

(assert (=> d!1578492 m!5921888))

(assert (=> d!1578492 m!5921884))

(declare-fun m!5921890 () Bool)

(assert (=> d!1578492 m!5921890))

(declare-fun m!5921892 () Bool)

(assert (=> d!1578492 m!5921892))

(declare-fun m!5921894 () Bool)

(assert (=> b!4912034 m!5921894))

(declare-fun m!5921896 () Bool)

(assert (=> b!4912037 m!5921896))

(declare-fun m!5921898 () Bool)

(assert (=> b!4912037 m!5921898))

(declare-fun m!5921900 () Bool)

(assert (=> b!4912037 m!5921900))

(assert (=> b!4912037 m!5921888))

(declare-fun m!5921902 () Bool)

(assert (=> b!4912037 m!5921902))

(declare-fun m!5921904 () Bool)

(assert (=> b!4912037 m!5921904))

(assert (=> b!4912037 m!5921888))

(declare-fun m!5921906 () Bool)

(assert (=> b!4912037 m!5921906))

(declare-fun m!5921908 () Bool)

(assert (=> b!4912037 m!5921908))

(declare-fun m!5921910 () Bool)

(assert (=> b!4912037 m!5921910))

(assert (=> b!4912037 m!5921896))

(assert (=> b!4912037 m!5921542))

(assert (=> b!4912037 m!5921910))

(declare-fun m!5921912 () Bool)

(assert (=> b!4912037 m!5921912))

(declare-fun m!5921914 () Bool)

(assert (=> b!4912037 m!5921914))

(assert (=> b!4912037 m!5921540))

(declare-fun m!5921916 () Bool)

(assert (=> b!4912037 m!5921916))

(declare-fun m!5921918 () Bool)

(assert (=> b!4912033 m!5921918))

(declare-fun m!5921920 () Bool)

(assert (=> bm!341131 m!5921920))

(assert (=> bm!341126 m!5921542))

(declare-fun m!5921922 () Bool)

(assert (=> bm!341126 m!5921922))

(declare-fun m!5921924 () Bool)

(assert (=> bm!341130 m!5921924))

(assert (=> bm!341125 m!5921900))

(declare-fun m!5921926 () Bool)

(assert (=> bm!341132 m!5921926))

(declare-fun m!5921928 () Bool)

(assert (=> bm!341127 m!5921928))

(assert (=> bm!341128 m!5921902))

(declare-fun m!5921930 () Bool)

(assert (=> b!4912038 m!5921930))

(assert (=> b!4912038 m!5921540))

(assert (=> b!4911711 d!1578492))

(declare-fun d!1578494 () Bool)

(declare-fun res!2098267 () Bool)

(declare-fun e!3070260 () Bool)

(assert (=> d!1578494 (=> (not res!2098267) (not e!3070260))))

(assert (=> d!1578494 (= res!2098267 (validRegex!5924 (regex!8258 rule!164)))))

(assert (=> d!1578494 (= (ruleValid!3755 thiss!15943 rule!164) e!3070260)))

(declare-fun b!4912049 () Bool)

(declare-fun res!2098268 () Bool)

(assert (=> b!4912049 (=> (not res!2098268) (not e!3070260))))

(assert (=> b!4912049 (= res!2098268 (not (nullable!4597 (regex!8258 rule!164))))))

(declare-fun b!4912050 () Bool)

(assert (=> b!4912050 (= e!3070260 (not (= (tag!9122 rule!164) (String!64282 ""))))))

(assert (= (and d!1578494 res!2098267) b!4912049))

(assert (= (and b!4912049 res!2098268) b!4912050))

(assert (=> d!1578494 m!5921644))

(assert (=> b!4912049 m!5921920))

(assert (=> b!4911722 d!1578494))

(declare-fun d!1578496 () Bool)

(assert (=> d!1578496 (= (get!19595 lt!2016327) (v!50106 lt!2016327))))

(assert (=> b!4911712 d!1578496))

(declare-fun b!4912079 () Bool)

(declare-fun e!3070280 () Bool)

(declare-fun lt!2016581 () Bool)

(declare-fun call!341140 () Bool)

(assert (=> b!4912079 (= e!3070280 (= lt!2016581 call!341140))))

(declare-fun b!4912080 () Bool)

(declare-fun e!3070278 () Bool)

(assert (=> b!4912080 (= e!3070278 (= (head!10496 (_1!33792 lt!2016329)) (c!834889 (regex!8258 rule!164))))))

(declare-fun b!4912081 () Bool)

(declare-fun res!2098286 () Bool)

(declare-fun e!3070281 () Bool)

(assert (=> b!4912081 (=> res!2098286 e!3070281)))

(assert (=> b!4912081 (= res!2098286 (not ((_ is ElementMatch!13333) (regex!8258 rule!164))))))

(declare-fun e!3070276 () Bool)

(assert (=> b!4912081 (= e!3070276 e!3070281)))

(declare-fun bm!341135 () Bool)

(assert (=> bm!341135 (= call!341140 (isEmpty!30519 (_1!33792 lt!2016329)))))

(declare-fun b!4912082 () Bool)

(declare-fun e!3070279 () Bool)

(assert (=> b!4912082 (= e!3070279 (nullable!4597 (regex!8258 rule!164)))))

(declare-fun b!4912083 () Bool)

(declare-fun e!3070277 () Bool)

(assert (=> b!4912083 (= e!3070277 (not (= (head!10496 (_1!33792 lt!2016329)) (c!834889 (regex!8258 rule!164)))))))

(declare-fun b!4912084 () Bool)

(assert (=> b!4912084 (= e!3070280 e!3070276)))

(declare-fun c!834963 () Bool)

(assert (=> b!4912084 (= c!834963 ((_ is EmptyLang!13333) (regex!8258 rule!164)))))

(declare-fun b!4912085 () Bool)

(assert (=> b!4912085 (= e!3070279 (matchR!6598 (derivativeStep!3915 (regex!8258 rule!164) (head!10496 (_1!33792 lt!2016329))) (tail!9643 (_1!33792 lt!2016329))))))

(declare-fun b!4912086 () Bool)

(declare-fun e!3070275 () Bool)

(assert (=> b!4912086 (= e!3070275 e!3070277)))

(declare-fun res!2098292 () Bool)

(assert (=> b!4912086 (=> res!2098292 e!3070277)))

(assert (=> b!4912086 (= res!2098292 call!341140)))

(declare-fun b!4912087 () Bool)

(assert (=> b!4912087 (= e!3070281 e!3070275)))

(declare-fun res!2098287 () Bool)

(assert (=> b!4912087 (=> (not res!2098287) (not e!3070275))))

(assert (=> b!4912087 (= res!2098287 (not lt!2016581))))

(declare-fun b!4912088 () Bool)

(declare-fun res!2098291 () Bool)

(assert (=> b!4912088 (=> (not res!2098291) (not e!3070278))))

(assert (=> b!4912088 (= res!2098291 (not call!341140))))

(declare-fun b!4912089 () Bool)

(declare-fun res!2098285 () Bool)

(assert (=> b!4912089 (=> (not res!2098285) (not e!3070278))))

(assert (=> b!4912089 (= res!2098285 (isEmpty!30519 (tail!9643 (_1!33792 lt!2016329))))))

(declare-fun b!4912090 () Bool)

(assert (=> b!4912090 (= e!3070276 (not lt!2016581))))

(declare-fun d!1578498 () Bool)

(assert (=> d!1578498 e!3070280))

(declare-fun c!834962 () Bool)

(assert (=> d!1578498 (= c!834962 ((_ is EmptyExpr!13333) (regex!8258 rule!164)))))

(assert (=> d!1578498 (= lt!2016581 e!3070279)))

(declare-fun c!834964 () Bool)

(assert (=> d!1578498 (= c!834964 (isEmpty!30519 (_1!33792 lt!2016329)))))

(assert (=> d!1578498 (validRegex!5924 (regex!8258 rule!164))))

(assert (=> d!1578498 (= (matchR!6598 (regex!8258 rule!164) (_1!33792 lt!2016329)) lt!2016581)))

(declare-fun b!4912091 () Bool)

(declare-fun res!2098290 () Bool)

(assert (=> b!4912091 (=> res!2098290 e!3070277)))

(assert (=> b!4912091 (= res!2098290 (not (isEmpty!30519 (tail!9643 (_1!33792 lt!2016329)))))))

(declare-fun b!4912092 () Bool)

(declare-fun res!2098289 () Bool)

(assert (=> b!4912092 (=> res!2098289 e!3070281)))

(assert (=> b!4912092 (= res!2098289 e!3070278)))

(declare-fun res!2098288 () Bool)

(assert (=> b!4912092 (=> (not res!2098288) (not e!3070278))))

(assert (=> b!4912092 (= res!2098288 lt!2016581)))

(assert (= (and d!1578498 c!834964) b!4912082))

(assert (= (and d!1578498 (not c!834964)) b!4912085))

(assert (= (and d!1578498 c!834962) b!4912079))

(assert (= (and d!1578498 (not c!834962)) b!4912084))

(assert (= (and b!4912084 c!834963) b!4912090))

(assert (= (and b!4912084 (not c!834963)) b!4912081))

(assert (= (and b!4912081 (not res!2098286)) b!4912092))

(assert (= (and b!4912092 res!2098288) b!4912088))

(assert (= (and b!4912088 res!2098291) b!4912089))

(assert (= (and b!4912089 res!2098285) b!4912080))

(assert (= (and b!4912092 (not res!2098289)) b!4912087))

(assert (= (and b!4912087 res!2098287) b!4912086))

(assert (= (and b!4912086 (not res!2098292)) b!4912091))

(assert (= (and b!4912091 (not res!2098290)) b!4912083))

(assert (= (or b!4912079 b!4912086 b!4912088) bm!341135))

(assert (=> b!4912082 m!5921920))

(declare-fun m!5921932 () Bool)

(assert (=> b!4912083 m!5921932))

(declare-fun m!5921934 () Bool)

(assert (=> b!4912091 m!5921934))

(assert (=> b!4912091 m!5921934))

(declare-fun m!5921936 () Bool)

(assert (=> b!4912091 m!5921936))

(assert (=> b!4912089 m!5921934))

(assert (=> b!4912089 m!5921934))

(assert (=> b!4912089 m!5921936))

(assert (=> bm!341135 m!5921548))

(assert (=> d!1578498 m!5921548))

(assert (=> d!1578498 m!5921644))

(assert (=> b!4912085 m!5921932))

(assert (=> b!4912085 m!5921932))

(declare-fun m!5921938 () Bool)

(assert (=> b!4912085 m!5921938))

(assert (=> b!4912085 m!5921934))

(assert (=> b!4912085 m!5921938))

(assert (=> b!4912085 m!5921934))

(declare-fun m!5921940 () Bool)

(assert (=> b!4912085 m!5921940))

(assert (=> b!4912080 m!5921932))

(assert (=> b!4911723 d!1578498))

(declare-fun d!1578500 () Bool)

(declare-fun isBalanced!4054 (Conc!14826) Bool)

(assert (=> d!1578500 (= (inv!73182 input!1509) (isBalanced!4054 (c!834890 input!1509)))))

(declare-fun bs!1177540 () Bool)

(assert (= bs!1177540 d!1578500))

(declare-fun m!5921942 () Bool)

(assert (=> bs!1177540 m!5921942))

(assert (=> start!515504 d!1578500))

(declare-fun d!1578502 () Bool)

(assert (=> d!1578502 (= (list!17866 lt!2016326) (list!17868 (c!834890 lt!2016326)))))

(declare-fun bs!1177541 () Bool)

(assert (= bs!1177541 d!1578502))

(declare-fun m!5921944 () Bool)

(assert (=> bs!1177541 m!5921944))

(assert (=> b!4911714 d!1578502))

(declare-fun d!1578504 () Bool)

(declare-fun choose!35942 (Int) Bool)

(assert (=> d!1578504 (= (Forall!1753 lambda!244764) (choose!35942 lambda!244764))))

(declare-fun bs!1177542 () Bool)

(assert (= bs!1177542 d!1578504))

(declare-fun m!5921946 () Bool)

(assert (=> bs!1177542 m!5921946))

(assert (=> b!4911715 d!1578504))

(declare-fun b!4912103 () Bool)

(declare-fun e!3070284 () Bool)

(declare-fun tp_is_empty!35871 () Bool)

(assert (=> b!4912103 (= e!3070284 tp_is_empty!35871)))

(declare-fun b!4912105 () Bool)

(declare-fun tp!1381172 () Bool)

(assert (=> b!4912105 (= e!3070284 tp!1381172)))

(declare-fun b!4912104 () Bool)

(declare-fun tp!1381176 () Bool)

(declare-fun tp!1381173 () Bool)

(assert (=> b!4912104 (= e!3070284 (and tp!1381176 tp!1381173))))

(declare-fun b!4912106 () Bool)

(declare-fun tp!1381175 () Bool)

(declare-fun tp!1381174 () Bool)

(assert (=> b!4912106 (= e!3070284 (and tp!1381175 tp!1381174))))

(assert (=> b!4911719 (= tp!1381126 e!3070284)))

(assert (= (and b!4911719 ((_ is ElementMatch!13333) (regex!8258 rule!164))) b!4912103))

(assert (= (and b!4911719 ((_ is Concat!21901) (regex!8258 rule!164))) b!4912104))

(assert (= (and b!4911719 ((_ is Star!13333) (regex!8258 rule!164))) b!4912105))

(assert (= (and b!4911719 ((_ is Union!13333) (regex!8258 rule!164))) b!4912106))

(declare-fun e!3070289 () Bool)

(declare-fun b!4912115 () Bool)

(declare-fun tp!1381185 () Bool)

(declare-fun tp!1381184 () Bool)

(assert (=> b!4912115 (= e!3070289 (and (inv!73184 (left!41245 (c!834890 input!1509))) tp!1381185 (inv!73184 (right!41575 (c!834890 input!1509))) tp!1381184))))

(declare-fun b!4912117 () Bool)

(declare-fun e!3070290 () Bool)

(declare-fun tp!1381183 () Bool)

(assert (=> b!4912117 (= e!3070290 tp!1381183)))

(declare-fun b!4912116 () Bool)

(declare-fun inv!73190 (IArray!29713) Bool)

(assert (=> b!4912116 (= e!3070289 (and (inv!73190 (xs!18142 (c!834890 input!1509))) e!3070290))))

(assert (=> b!4911720 (= tp!1381128 (and (inv!73184 (c!834890 input!1509)) e!3070289))))

(assert (= (and b!4911720 ((_ is Node!14826) (c!834890 input!1509))) b!4912115))

(assert (= b!4912116 b!4912117))

(assert (= (and b!4911720 ((_ is Leaf!24672) (c!834890 input!1509))) b!4912116))

(declare-fun m!5921948 () Bool)

(assert (=> b!4912115 m!5921948))

(declare-fun m!5921950 () Bool)

(assert (=> b!4912115 m!5921950))

(declare-fun m!5921952 () Bool)

(assert (=> b!4912116 m!5921952))

(assert (=> b!4911720 m!5921558))

(declare-fun b_lambda!196061 () Bool)

(assert (= b_lambda!196029 (or (and b!4911713 b_free!132003) b_lambda!196061)))

(declare-fun b_lambda!196063 () Bool)

(assert (= b_lambda!196025 (or (and b!4911713 b_free!132003) b_lambda!196063)))

(declare-fun b_lambda!196065 () Bool)

(assert (= b_lambda!196023 (or (and b!4911713 b_free!132003) b_lambda!196065)))

(declare-fun b_lambda!196067 () Bool)

(assert (= b_lambda!196031 (or b!4911715 b_lambda!196067)))

(declare-fun bs!1177543 () Bool)

(declare-fun d!1578506 () Bool)

(assert (= bs!1177543 (and d!1578506 b!4911715)))

(assert (=> bs!1177543 (= (dynLambda!22975 lambda!244764 lt!2016326) (= (list!17866 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326))) (list!17866 lt!2016326)))))

(declare-fun b_lambda!196073 () Bool)

(assert (=> (not b_lambda!196073) (not bs!1177543)))

(declare-fun t!367099 () Bool)

(declare-fun tb!260107 () Bool)

(assert (=> (and b!4911713 (= (toChars!11064 (transformation!8258 rule!164)) (toChars!11064 (transformation!8258 rule!164))) t!367099) tb!260107))

(declare-fun tp!1381186 () Bool)

(declare-fun e!3070291 () Bool)

(declare-fun b!4912118 () Bool)

(assert (=> b!4912118 (= e!3070291 (and (inv!73184 (c!834890 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326)))) tp!1381186))))

(declare-fun result!324050 () Bool)

(assert (=> tb!260107 (= result!324050 (and (inv!73182 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) lt!2016326))) e!3070291))))

(assert (= tb!260107 b!4912118))

(declare-fun m!5921954 () Bool)

(assert (=> b!4912118 m!5921954))

(declare-fun m!5921956 () Bool)

(assert (=> tb!260107 m!5921956))

(assert (=> bs!1177543 t!367099))

(declare-fun b_and!346815 () Bool)

(assert (= b_and!346801 (and (=> t!367099 result!324050) b_and!346815)))

(declare-fun b_lambda!196075 () Bool)

(assert (=> (not b_lambda!196075) (not bs!1177543)))

(assert (=> bs!1177543 t!367089))

(declare-fun b_and!346817 () Bool)

(assert (= b_and!346803 (and (=> t!367089 result!324028) b_and!346817)))

(assert (=> bs!1177543 m!5921648))

(declare-fun m!5921958 () Bool)

(assert (=> bs!1177543 m!5921958))

(declare-fun m!5921960 () Bool)

(assert (=> bs!1177543 m!5921960))

(assert (=> bs!1177543 m!5921648))

(assert (=> bs!1177543 m!5921958))

(assert (=> bs!1177543 m!5921568))

(assert (=> d!1578454 d!1578506))

(declare-fun b_lambda!196069 () Bool)

(assert (= b_lambda!196021 (or (and b!4911713 b_free!132003) b_lambda!196069)))

(declare-fun b_lambda!196071 () Bool)

(assert (= b_lambda!196033 (or b!4911715 b_lambda!196071)))

(declare-fun bs!1177544 () Bool)

(declare-fun d!1578508 () Bool)

(assert (= bs!1177544 (and d!1578508 b!4911715)))

(assert (=> bs!1177544 (= (dynLambda!22975 lambda!244764 (_1!33794 lt!2016324)) (= (list!17866 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324)))) (list!17866 (_1!33794 lt!2016324))))))

(declare-fun b_lambda!196077 () Bool)

(assert (=> (not b_lambda!196077) (not bs!1177544)))

(declare-fun t!367101 () Bool)

(declare-fun tb!260109 () Bool)

(assert (=> (and b!4911713 (= (toChars!11064 (transformation!8258 rule!164)) (toChars!11064 (transformation!8258 rule!164))) t!367101) tb!260109))

(declare-fun b!4912119 () Bool)

(declare-fun e!3070292 () Bool)

(declare-fun tp!1381187 () Bool)

(assert (=> b!4912119 (= e!3070292 (and (inv!73184 (c!834890 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324))))) tp!1381187))))

(declare-fun result!324052 () Bool)

(assert (=> tb!260109 (= result!324052 (and (inv!73182 (dynLambda!22973 (toChars!11064 (transformation!8258 rule!164)) (dynLambda!22971 (toValue!11205 (transformation!8258 rule!164)) (_1!33794 lt!2016324)))) e!3070292))))

(assert (= tb!260109 b!4912119))

(declare-fun m!5921962 () Bool)

(assert (=> b!4912119 m!5921962))

(declare-fun m!5921964 () Bool)

(assert (=> tb!260109 m!5921964))

(assert (=> bs!1177544 t!367101))

(declare-fun b_and!346819 () Bool)

(assert (= b_and!346815 (and (=> t!367101 result!324052) b_and!346819)))

(declare-fun b_lambda!196079 () Bool)

(assert (=> (not b_lambda!196079) (not bs!1177544)))

(assert (=> bs!1177544 t!367091))

(declare-fun b_and!346821 () Bool)

(assert (= b_and!346817 (and (=> t!367091 result!324032) b_and!346821)))

(assert (=> bs!1177544 m!5921654))

(declare-fun m!5921966 () Bool)

(assert (=> bs!1177544 m!5921966))

(declare-fun m!5921968 () Bool)

(assert (=> bs!1177544 m!5921968))

(assert (=> bs!1177544 m!5921654))

(assert (=> bs!1177544 m!5921966))

(assert (=> bs!1177544 m!5921510))

(assert (=> d!1578456 d!1578508))

(check-sat (not b!4912105) (not b!4911919) (not b!4912080) (not tb!260097) (not d!1578424) (not b_lambda!196067) (not b_lambda!196065) (not d!1578498) (not bm!341131) (not b!4911831) (not b!4911920) (not b!4911826) (not b!4912034) (not b!4912082) (not tb!260107) (not d!1578394) (not b!4912118) (not b!4911916) (not b!4911832) (not d!1578456) (not d!1578500) (not b!4911837) b_and!346821 (not bm!341126) (not b!4912038) (not bm!341130) (not b_lambda!196077) (not d!1578494) (not b!4911917) (not d!1578446) (not b!4911998) (not d!1578390) (not b_lambda!196069) (not b!4911918) (not d!1578452) (not b!4912037) (not b_lambda!196075) (not d!1578490) (not d!1578454) (not d!1578480) (not b!4911921) (not d!1578418) (not bm!341129) (not b!4911990) (not bs!1177544) (not b!4911924) (not b_lambda!196027) (not d!1578492) (not d!1578458) (not bm!341127) (not b!4912116) (not b!4911922) (not b_next!132795) (not b!4911824) (not b_lambda!196071) (not d!1578504) (not b!4912104) (not tb!260101) (not b!4912091) (not d!1578414) (not bm!341128) b_and!346819 (not d!1578428) (not d!1578422) (not d!1578448) (not b!4911985) (not b_lambda!196079) (not bm!341125) (not bs!1177543) (not d!1578502) (not tb!260099) (not b!4912089) tp_is_empty!35871 (not b!4911817) (not b!4912049) (not b!4912033) (not b!4912083) (not b!4912085) (not tb!260109) (not d!1578426) (not b_lambda!196063) (not b!4912119) (not d!1578460) (not b_lambda!196061) (not b!4911720) (not b_lambda!196073) (not b!4911996) (not bm!341132) (not b!4912115) (not bm!341135) (not b!4912106) (not b_next!132793) (not b!4912117))
(check-sat b_and!346819 b_and!346821 (not b_next!132795) (not b_next!132793))
