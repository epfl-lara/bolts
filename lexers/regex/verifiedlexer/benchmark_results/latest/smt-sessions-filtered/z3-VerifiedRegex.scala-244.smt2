; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3654 () Bool)

(assert start!3654)

(declare-fun b_free!1591 () Bool)

(declare-fun b_next!1591 () Bool)

(assert (=> start!3654 (= b_free!1591 (not b_next!1591))))

(declare-fun tp!33591 () Bool)

(declare-fun b_and!1635 () Bool)

(assert (=> start!3654 (= tp!33591 b_and!1635)))

(declare-fun b!50968 () Bool)

(declare-fun b_free!1593 () Bool)

(declare-fun b_next!1593 () Bool)

(assert (=> b!50968 (= b_free!1593 (not b_next!1593))))

(declare-fun tp!33594 () Bool)

(declare-fun b_and!1637 () Bool)

(assert (=> b!50968 (= tp!33594 b_and!1637)))

(declare-fun b_free!1595 () Bool)

(declare-fun b_next!1595 () Bool)

(assert (=> b!50968 (= b_free!1595 (not b_next!1595))))

(declare-fun tp!33593 () Bool)

(declare-fun b_and!1639 () Bool)

(assert (=> b!50968 (= tp!33593 b_and!1639)))

(declare-fun b!50961 () Bool)

(declare-fun res!33523 () Bool)

(declare-fun e!29903 () Bool)

(assert (=> b!50961 (=> res!33523 e!29903)))

(declare-datatypes ((List!1022 0))(
  ( (Nil!1016) (Cons!1016 (h!6413 (_ BitVec 16)) (t!17229 List!1022)) )
))
(declare-datatypes ((TokenValue!209 0))(
  ( (FloatLiteralValue!418 (text!1908 List!1022)) (TokenValueExt!208 (__x!1513 Int)) (Broken!1045 (value!9113 List!1022)) (Object!214) (End!209) (Def!209) (Underscore!209) (Match!209) (Else!209) (Error!209) (Case!209) (If!209) (Extends!209) (Abstract!209) (Class!209) (Val!209) (DelimiterValue!418 (del!269 List!1022)) (KeywordValue!215 (value!9114 List!1022)) (CommentValue!418 (value!9115 List!1022)) (WhitespaceValue!418 (value!9116 List!1022)) (IndentationValue!209 (value!9117 List!1022)) (String!1436) (Int32!209) (Broken!1046 (value!9118 List!1022)) (Boolean!210) (Unit!577) (OperatorValue!212 (op!269 List!1022)) (IdentifierValue!418 (value!9119 List!1022)) (IdentifierValue!419 (value!9120 List!1022)) (WhitespaceValue!419 (value!9121 List!1022)) (True!418) (False!418) (Broken!1047 (value!9122 List!1022)) (Broken!1048 (value!9123 List!1022)) (True!419) (RightBrace!209) (RightBracket!209) (Colon!209) (Null!209) (Comma!209) (LeftBracket!209) (False!419) (LeftBrace!209) (ImaginaryLiteralValue!209 (text!1909 List!1022)) (StringLiteralValue!627 (value!9124 List!1022)) (EOFValue!209 (value!9125 List!1022)) (IdentValue!209 (value!9126 List!1022)) (DelimiterValue!419 (value!9127 List!1022)) (DedentValue!209 (value!9128 List!1022)) (NewLineValue!209 (value!9129 List!1022)) (IntegerValue!627 (value!9130 (_ BitVec 32)) (text!1910 List!1022)) (IntegerValue!628 (value!9131 Int) (text!1911 List!1022)) (Times!209) (Or!209) (Equal!209) (Minus!209) (Broken!1049 (value!9132 List!1022)) (And!209) (Div!209) (LessEqual!209) (Mod!209) (Concat!496) (Not!209) (Plus!209) (SpaceValue!209 (value!9133 List!1022)) (IntegerValue!629 (value!9134 Int) (text!1912 List!1022)) (StringLiteralValue!628 (text!1913 List!1022)) (FloatLiteralValue!419 (text!1914 List!1022)) (BytesLiteralValue!209 (value!9135 List!1022)) (CommentValue!419 (value!9136 List!1022)) (StringLiteralValue!629 (value!9137 List!1022)) (ErrorTokenValue!209 (msg!270 List!1022)) )
))
(declare-datatypes ((C!1496 0))(
  ( (C!1497 (val!355 Int)) )
))
(declare-datatypes ((List!1023 0))(
  ( (Nil!1017) (Cons!1017 (h!6414 C!1496) (t!17230 List!1023)) )
))
(declare-datatypes ((IArray!485 0))(
  ( (IArray!486 (innerList!300 List!1023)) )
))
(declare-datatypes ((Conc!242 0))(
  ( (Node!242 (left!764 Conc!242) (right!1094 Conc!242) (csize!714 Int) (cheight!453 Int)) (Leaf!487 (xs!2821 IArray!485) (csize!715 Int)) (Empty!242) )
))
(declare-datatypes ((Regex!287 0))(
  ( (ElementMatch!287 (c!16645 C!1496)) (Concat!497 (regOne!1086 Regex!287) (regTwo!1086 Regex!287)) (EmptyExpr!287) (Star!287 (reg!616 Regex!287)) (EmptyLang!287) (Union!287 (regOne!1087 Regex!287) (regTwo!1087 Regex!287)) )
))
(declare-datatypes ((String!1437 0))(
  ( (String!1438 (value!9138 String)) )
))
(declare-datatypes ((BalanceConc!488 0))(
  ( (BalanceConc!489 (c!16646 Conc!242)) )
))
(declare-datatypes ((TokenValueInjection!242 0))(
  ( (TokenValueInjection!243 (toValue!698 Int) (toChars!557 Int)) )
))
(declare-datatypes ((Rule!238 0))(
  ( (Rule!239 (regex!219 Regex!287) (tag!397 String!1437) (isSeparator!219 Bool) (transformation!219 TokenValueInjection!242)) )
))
(declare-datatypes ((Token!202 0))(
  ( (Token!203 (value!9139 TokenValue!209) (rule!694 Rule!238) (size!944 Int) (originalCharacters!272 List!1023)) )
))
(declare-datatypes ((List!1024 0))(
  ( (Nil!1018) (Cons!1018 (h!6415 Token!202) (t!17231 List!1024)) )
))
(declare-fun lt!8862 () List!1024)

(declare-fun lt!8863 () Token!202)

(declare-fun contains!104 (List!1024 Token!202) Bool)

(assert (=> b!50961 (= res!33523 (not (contains!104 lt!8862 lt!8863)))))

(declare-fun b!50962 () Bool)

(declare-fun e!29898 () Bool)

(assert (=> b!50962 (= e!29903 e!29898)))

(declare-fun res!33520 () Bool)

(assert (=> b!50962 (=> res!33520 e!29898)))

(declare-fun lt!8858 () Token!202)

(declare-fun pred!6 () Int)

(declare-datatypes ((List!1025 0))(
  ( (Nil!1019) (Cons!1019 (h!6416 Rule!238) (t!17232 List!1025)) )
))
(declare-fun rules!1069 () List!1025)

(declare-fun dynLambda!165 (Int Token!202 Token!202 List!1025) Bool)

(assert (=> b!50962 (= res!33520 (not (dynLambda!165 pred!6 lt!8858 lt!8863 rules!1069)))))

(declare-fun e!29896 () Bool)

(assert (=> b!50962 e!29896))

(declare-fun res!33530 () Bool)

(assert (=> b!50962 (=> (not res!33530) (not e!29896))))

(declare-datatypes ((LexerInterface!111 0))(
  ( (LexerInterfaceExt!108 (__x!1514 Int)) (Lexer!109) )
))
(declare-fun thiss!11059 () LexerInterface!111)

(declare-fun rulesProduceIndividualToken!30 (LexerInterface!111 List!1025 Token!202) Bool)

(assert (=> b!50962 (= res!33530 (rulesProduceIndividualToken!30 thiss!11059 rules!1069 lt!8863))))

(declare-datatypes ((Unit!578 0))(
  ( (Unit!579) )
))
(declare-fun lt!8853 () Unit!578)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!18 (LexerInterface!111 List!1025 List!1024 Token!202) Unit!578)

(assert (=> b!50962 (= lt!8853 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!18 thiss!11059 rules!1069 lt!8862 lt!8863))))

(assert (=> b!50962 (rulesProduceIndividualToken!30 thiss!11059 rules!1069 lt!8858)))

(declare-fun lt!8856 () Unit!578)

(assert (=> b!50962 (= lt!8856 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!18 thiss!11059 rules!1069 lt!8862 lt!8858))))

(declare-fun b!50963 () Bool)

(declare-fun e!29904 () Bool)

(declare-datatypes ((IArray!487 0))(
  ( (IArray!488 (innerList!301 List!1024)) )
))
(declare-datatypes ((Conc!243 0))(
  ( (Node!243 (left!765 Conc!243) (right!1095 Conc!243) (csize!716 Int) (cheight!454 Int)) (Leaf!488 (xs!2822 IArray!487) (csize!717 Int)) (Empty!243) )
))
(declare-datatypes ((BalanceConc!490 0))(
  ( (BalanceConc!491 (c!16647 Conc!243)) )
))
(declare-fun v!6227 () BalanceConc!490)

(declare-fun tp!33592 () Bool)

(declare-fun inv!1341 (Conc!243) Bool)

(assert (=> b!50963 (= e!29904 (and (inv!1341 (c!16647 v!6227)) tp!33592))))

(declare-fun b!50964 () Bool)

(declare-fun res!33521 () Bool)

(declare-fun e!29897 () Bool)

(assert (=> b!50964 (=> (not res!33521) (not e!29897))))

(declare-fun rulesInvariant!105 (LexerInterface!111 List!1025) Bool)

(assert (=> b!50964 (= res!33521 (rulesInvariant!105 thiss!11059 rules!1069))))

(declare-fun b!50965 () Bool)

(declare-fun res!33528 () Bool)

(assert (=> b!50965 (=> (not res!33528) (not e!29897))))

(declare-fun rulesProduceEachTokenIndividually!49 (LexerInterface!111 List!1025 BalanceConc!490) Bool)

(assert (=> b!50965 (= res!33528 (rulesProduceEachTokenIndividually!49 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50966 () Bool)

(declare-fun size!945 (BalanceConc!488) Int)

(declare-fun charsOf!12 (Token!202) BalanceConc!488)

(assert (=> b!50966 (= e!29896 (> (size!945 (charsOf!12 lt!8863)) 0))))

(declare-fun b!50967 () Bool)

(declare-fun e!29901 () Bool)

(assert (=> b!50967 (= e!29897 (not e!29901))))

(declare-fun res!33519 () Bool)

(assert (=> b!50967 (=> res!33519 e!29901)))

(declare-fun contains!105 (BalanceConc!490 Token!202) Bool)

(assert (=> b!50967 (= res!33519 (not (contains!105 v!6227 lt!8858)))))

(declare-fun from!821 () Int)

(declare-fun apply!88 (BalanceConc!490 Int) Token!202)

(assert (=> b!50967 (= lt!8858 (apply!88 v!6227 from!821))))

(declare-fun lt!8861 () List!1024)

(declare-fun tail!61 (List!1024) List!1024)

(declare-fun drop!36 (List!1024 Int) List!1024)

(assert (=> b!50967 (= (tail!61 lt!8861) (drop!36 lt!8862 (+ 2 from!821)))))

(declare-fun lt!8855 () Unit!578)

(declare-fun lemmaDropTail!32 (List!1024 Int) Unit!578)

(assert (=> b!50967 (= lt!8855 (lemmaDropTail!32 lt!8862 (+ 1 from!821)))))

(declare-fun lt!8864 () List!1024)

(assert (=> b!50967 (= (tail!61 lt!8864) lt!8861)))

(declare-fun lt!8857 () Unit!578)

(assert (=> b!50967 (= lt!8857 (lemmaDropTail!32 lt!8862 from!821))))

(declare-fun head!376 (List!1024) Token!202)

(declare-fun apply!89 (List!1024 Int) Token!202)

(assert (=> b!50967 (= (head!376 lt!8861) (apply!89 lt!8862 (+ 1 from!821)))))

(assert (=> b!50967 (= lt!8861 (drop!36 lt!8862 (+ 1 from!821)))))

(declare-fun lt!8854 () Unit!578)

(declare-fun lemmaDropApply!36 (List!1024 Int) Unit!578)

(assert (=> b!50967 (= lt!8854 (lemmaDropApply!36 lt!8862 (+ 1 from!821)))))

(assert (=> b!50967 (= (head!376 lt!8864) (apply!89 lt!8862 from!821))))

(assert (=> b!50967 (= lt!8864 (drop!36 lt!8862 from!821))))

(declare-fun lt!8859 () Unit!578)

(assert (=> b!50967 (= lt!8859 (lemmaDropApply!36 lt!8862 from!821))))

(declare-fun list!260 (BalanceConc!490) List!1024)

(assert (=> b!50967 (= lt!8862 (list!260 v!6227))))

(declare-fun b!50969 () Bool)

(declare-fun res!33525 () Bool)

(assert (=> b!50969 (=> res!33525 e!29901)))

(assert (=> b!50969 (= res!33525 (not (contains!104 lt!8862 lt!8858)))))

(declare-fun b!50970 () Bool)

(declare-fun res!33529 () Bool)

(assert (=> b!50970 (=> (not res!33529) (not e!29897))))

(declare-fun lt!8860 () Int)

(assert (=> b!50970 (= res!33529 (< from!821 (- lt!8860 1)))))

(declare-fun b!50971 () Bool)

(assert (=> b!50971 (= e!29898 (and (>= (+ 1 from!821) 0) (<= (+ 1 from!821) lt!8860)))))

(declare-fun b!50972 () Bool)

(declare-fun res!33522 () Bool)

(assert (=> b!50972 (=> (not res!33522) (not e!29897))))

(declare-fun isEmpty!205 (List!1025) Bool)

(assert (=> b!50972 (= res!33522 (not (isEmpty!205 rules!1069)))))

(declare-fun tp!33596 () Bool)

(declare-fun b!50973 () Bool)

(declare-fun e!29900 () Bool)

(declare-fun e!29899 () Bool)

(declare-fun inv!1337 (String!1437) Bool)

(declare-fun inv!1342 (TokenValueInjection!242) Bool)

(assert (=> b!50973 (= e!29900 (and tp!33596 (inv!1337 (tag!397 (h!6416 rules!1069))) (inv!1342 (transformation!219 (h!6416 rules!1069))) e!29899))))

(declare-fun b!50974 () Bool)

(declare-fun e!29902 () Bool)

(declare-fun tp!33595 () Bool)

(assert (=> b!50974 (= e!29902 (and e!29900 tp!33595))))

(declare-fun b!50975 () Bool)

(declare-fun e!29905 () Bool)

(assert (=> b!50975 (= e!29905 e!29897)))

(declare-fun res!33527 () Bool)

(assert (=> b!50975 (=> (not res!33527) (not e!29897))))

(assert (=> b!50975 (= res!33527 (<= from!821 lt!8860))))

(declare-fun size!946 (BalanceConc!490) Int)

(assert (=> b!50975 (= lt!8860 (size!946 v!6227))))

(declare-fun b!50976 () Bool)

(assert (=> b!50976 (= e!29901 e!29903)))

(declare-fun res!33524 () Bool)

(assert (=> b!50976 (=> res!33524 e!29903)))

(assert (=> b!50976 (= res!33524 (not (contains!105 v!6227 lt!8863)))))

(assert (=> b!50976 (= lt!8863 (apply!88 v!6227 (+ 1 from!821)))))

(assert (=> b!50968 (= e!29899 (and tp!33594 tp!33593))))

(declare-fun res!33526 () Bool)

(assert (=> start!3654 (=> (not res!33526) (not e!29905))))

(get-info :version)

(assert (=> start!3654 (= res!33526 (and ((_ is Lexer!109) thiss!11059) (>= from!821 0)))))

(assert (=> start!3654 e!29905))

(assert (=> start!3654 true))

(assert (=> start!3654 tp!33591))

(declare-fun inv!1343 (BalanceConc!490) Bool)

(assert (=> start!3654 (and (inv!1343 v!6227) e!29904)))

(assert (=> start!3654 e!29902))

(assert (= (and start!3654 res!33526) b!50975))

(assert (= (and b!50975 res!33527) b!50972))

(assert (= (and b!50972 res!33522) b!50964))

(assert (= (and b!50964 res!33521) b!50965))

(assert (= (and b!50965 res!33528) b!50970))

(assert (= (and b!50970 res!33529) b!50967))

(assert (= (and b!50967 (not res!33519)) b!50969))

(assert (= (and b!50969 (not res!33525)) b!50976))

(assert (= (and b!50976 (not res!33524)) b!50961))

(assert (= (and b!50961 (not res!33523)) b!50962))

(assert (= (and b!50962 res!33530) b!50966))

(assert (= (and b!50962 (not res!33520)) b!50971))

(assert (= start!3654 b!50963))

(assert (= b!50973 b!50968))

(assert (= b!50974 b!50973))

(assert (= (and start!3654 ((_ is Cons!1019) rules!1069)) b!50974))

(declare-fun b_lambda!307 () Bool)

(assert (=> (not b_lambda!307) (not b!50962)))

(declare-fun t!17228 () Bool)

(declare-fun tb!45 () Bool)

(assert (=> (and start!3654 (= pred!6 pred!6) t!17228) tb!45))

(declare-fun result!782 () Bool)

(assert (=> tb!45 (= result!782 true)))

(assert (=> b!50962 t!17228))

(declare-fun b_and!1641 () Bool)

(assert (= b_and!1635 (and (=> t!17228 result!782) b_and!1641)))

(declare-fun m!25312 () Bool)

(assert (=> b!50966 m!25312))

(assert (=> b!50966 m!25312))

(declare-fun m!25314 () Bool)

(assert (=> b!50966 m!25314))

(declare-fun m!25316 () Bool)

(assert (=> start!3654 m!25316))

(declare-fun m!25318 () Bool)

(assert (=> b!50965 m!25318))

(declare-fun m!25320 () Bool)

(assert (=> b!50969 m!25320))

(declare-fun m!25322 () Bool)

(assert (=> b!50972 m!25322))

(declare-fun m!25324 () Bool)

(assert (=> b!50973 m!25324))

(declare-fun m!25326 () Bool)

(assert (=> b!50973 m!25326))

(declare-fun m!25328 () Bool)

(assert (=> b!50962 m!25328))

(declare-fun m!25330 () Bool)

(assert (=> b!50962 m!25330))

(declare-fun m!25332 () Bool)

(assert (=> b!50962 m!25332))

(declare-fun m!25334 () Bool)

(assert (=> b!50962 m!25334))

(declare-fun m!25336 () Bool)

(assert (=> b!50962 m!25336))

(declare-fun m!25338 () Bool)

(assert (=> b!50967 m!25338))

(declare-fun m!25340 () Bool)

(assert (=> b!50967 m!25340))

(declare-fun m!25342 () Bool)

(assert (=> b!50967 m!25342))

(declare-fun m!25344 () Bool)

(assert (=> b!50967 m!25344))

(declare-fun m!25346 () Bool)

(assert (=> b!50967 m!25346))

(declare-fun m!25348 () Bool)

(assert (=> b!50967 m!25348))

(declare-fun m!25350 () Bool)

(assert (=> b!50967 m!25350))

(declare-fun m!25352 () Bool)

(assert (=> b!50967 m!25352))

(declare-fun m!25354 () Bool)

(assert (=> b!50967 m!25354))

(declare-fun m!25356 () Bool)

(assert (=> b!50967 m!25356))

(declare-fun m!25358 () Bool)

(assert (=> b!50967 m!25358))

(declare-fun m!25360 () Bool)

(assert (=> b!50967 m!25360))

(declare-fun m!25362 () Bool)

(assert (=> b!50967 m!25362))

(declare-fun m!25364 () Bool)

(assert (=> b!50967 m!25364))

(declare-fun m!25366 () Bool)

(assert (=> b!50967 m!25366))

(declare-fun m!25368 () Bool)

(assert (=> b!50967 m!25368))

(declare-fun m!25370 () Bool)

(assert (=> b!50964 m!25370))

(declare-fun m!25372 () Bool)

(assert (=> b!50961 m!25372))

(declare-fun m!25374 () Bool)

(assert (=> b!50976 m!25374))

(declare-fun m!25376 () Bool)

(assert (=> b!50976 m!25376))

(declare-fun m!25378 () Bool)

(assert (=> b!50975 m!25378))

(declare-fun m!25380 () Bool)

(assert (=> b!50963 m!25380))

(check-sat (not b!50976) (not b_lambda!307) b_and!1639 (not b_next!1591) (not b!50967) b_and!1637 (not b!50963) (not b!50965) (not b!50975) (not b!50969) (not b!50974) (not b_next!1593) (not b_next!1595) (not b!50972) (not b!50964) b_and!1641 (not b!50962) (not b!50966) (not b!50961) (not start!3654) (not b!50973))
(check-sat (not b_next!1593) (not b_next!1595) b_and!1639 b_and!1641 (not b_next!1591) b_and!1637)
