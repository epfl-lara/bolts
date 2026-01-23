; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513620 () Bool)

(assert start!513620)

(declare-fun b!4902453 () Bool)

(declare-fun b_free!131827 () Bool)

(declare-fun b_next!132617 () Bool)

(assert (=> b!4902453 (= b_free!131827 (not b_next!132617))))

(declare-fun tp!1379415 () Bool)

(declare-fun b_and!346219 () Bool)

(assert (=> b!4902453 (= tp!1379415 b_and!346219)))

(declare-fun b_free!131829 () Bool)

(declare-fun b_next!132619 () Bool)

(assert (=> b!4902453 (= b_free!131829 (not b_next!132619))))

(declare-fun tp!1379414 () Bool)

(declare-fun b_and!346221 () Bool)

(assert (=> b!4902453 (= tp!1379414 b_and!346221)))

(declare-fun b!4902471 () Bool)

(declare-fun e!3064580 () Bool)

(assert (=> b!4902471 (= e!3064580 true)))

(declare-fun b!4902470 () Bool)

(declare-fun e!3064579 () Bool)

(assert (=> b!4902470 (= e!3064579 e!3064580)))

(declare-fun b!4902463 () Bool)

(assert (=> b!4902463 e!3064579))

(assert (= b!4902470 b!4902471))

(assert (= b!4902463 b!4902470))

(declare-fun lambda!244332 () Int)

(declare-datatypes ((C!26776 0))(
  ( (C!26777 (val!22722 Int)) )
))
(declare-datatypes ((Regex!13289 0))(
  ( (ElementMatch!13289 (c!833193 C!26776)) (Concat!21813 (regOne!27090 Regex!13289) (regTwo!27090 Regex!13289)) (EmptyExpr!13289) (Star!13289 (reg!13618 Regex!13289)) (EmptyLang!13289) (Union!13289 (regOne!27091 Regex!13289) (regTwo!27091 Regex!13289)) )
))
(declare-datatypes ((String!64061 0))(
  ( (String!64062 (value!263209 String)) )
))
(declare-datatypes ((List!56626 0))(
  ( (Nil!56502) (Cons!56502 (h!62950 (_ BitVec 16)) (t!366718 List!56626)) )
))
(declare-datatypes ((TokenValue!8524 0))(
  ( (FloatLiteralValue!17048 (text!60113 List!56626)) (TokenValueExt!8523 (__x!34341 Int)) (Broken!42620 (value!263210 List!56626)) (Object!8647) (End!8524) (Def!8524) (Underscore!8524) (Match!8524) (Else!8524) (Error!8524) (Case!8524) (If!8524) (Extends!8524) (Abstract!8524) (Class!8524) (Val!8524) (DelimiterValue!17048 (del!8584 List!56626)) (KeywordValue!8530 (value!263211 List!56626)) (CommentValue!17048 (value!263212 List!56626)) (WhitespaceValue!17048 (value!263213 List!56626)) (IndentationValue!8524 (value!263214 List!56626)) (String!64063) (Int32!8524) (Broken!42621 (value!263215 List!56626)) (Boolean!8525) (Unit!146610) (OperatorValue!8527 (op!8584 List!56626)) (IdentifierValue!17048 (value!263216 List!56626)) (IdentifierValue!17049 (value!263217 List!56626)) (WhitespaceValue!17049 (value!263218 List!56626)) (True!17048) (False!17048) (Broken!42622 (value!263219 List!56626)) (Broken!42623 (value!263220 List!56626)) (True!17049) (RightBrace!8524) (RightBracket!8524) (Colon!8524) (Null!8524) (Comma!8524) (LeftBracket!8524) (False!17049) (LeftBrace!8524) (ImaginaryLiteralValue!8524 (text!60114 List!56626)) (StringLiteralValue!25572 (value!263221 List!56626)) (EOFValue!8524 (value!263222 List!56626)) (IdentValue!8524 (value!263223 List!56626)) (DelimiterValue!17049 (value!263224 List!56626)) (DedentValue!8524 (value!263225 List!56626)) (NewLineValue!8524 (value!263226 List!56626)) (IntegerValue!25572 (value!263227 (_ BitVec 32)) (text!60115 List!56626)) (IntegerValue!25573 (value!263228 Int) (text!60116 List!56626)) (Times!8524) (Or!8524) (Equal!8524) (Minus!8524) (Broken!42624 (value!263229 List!56626)) (And!8524) (Div!8524) (LessEqual!8524) (Mod!8524) (Concat!21814) (Not!8524) (Plus!8524) (SpaceValue!8524 (value!263230 List!56626)) (IntegerValue!25574 (value!263231 Int) (text!60117 List!56626)) (StringLiteralValue!25573 (text!60118 List!56626)) (FloatLiteralValue!17049 (text!60119 List!56626)) (BytesLiteralValue!8524 (value!263232 List!56626)) (CommentValue!17049 (value!263233 List!56626)) (StringLiteralValue!25574 (value!263234 List!56626)) (ErrorTokenValue!8524 (msg!8585 List!56626)) )
))
(declare-datatypes ((List!56627 0))(
  ( (Nil!56503) (Cons!56503 (h!62951 C!26776) (t!366719 List!56627)) )
))
(declare-datatypes ((IArray!29625 0))(
  ( (IArray!29626 (innerList!14870 List!56627)) )
))
(declare-datatypes ((Conc!14782 0))(
  ( (Node!14782 (left!41095 Conc!14782) (right!41425 Conc!14782) (csize!29794 Int) (cheight!14993 Int)) (Leaf!24606 (xs!18098 IArray!29625) (csize!29795 Int)) (Empty!14782) )
))
(declare-datatypes ((BalanceConc!28994 0))(
  ( (BalanceConc!28995 (c!833194 Conc!14782)) )
))
(declare-datatypes ((TokenValueInjection!16356 0))(
  ( (TokenValueInjection!16357 (toValue!11125 Int) (toChars!10984 Int)) )
))
(declare-datatypes ((Rule!16228 0))(
  ( (Rule!16229 (regex!8214 Regex!13289) (tag!9078 String!64061) (isSeparator!8214 Bool) (transformation!8214 TokenValueInjection!16356)) )
))
(declare-fun rule!164 () Rule!16228)

(declare-fun order!25635 () Int)

(declare-fun order!25633 () Int)

(declare-fun dynLambda!22750 (Int Int) Int)

(declare-fun dynLambda!22751 (Int Int) Int)

(assert (=> b!4902471 (< (dynLambda!22750 order!25633 (toValue!11125 (transformation!8214 rule!164))) (dynLambda!22751 order!25635 lambda!244332))))

(declare-fun order!25637 () Int)

(declare-fun dynLambda!22752 (Int Int) Int)

(assert (=> b!4902471 (< (dynLambda!22752 order!25637 (toChars!10984 (transformation!8214 rule!164))) (dynLambda!22751 order!25635 lambda!244332))))

(declare-fun e!3064566 () Bool)

(assert (=> b!4902453 (= e!3064566 (and tp!1379415 tp!1379414))))

(declare-fun b!4902454 () Bool)

(declare-fun e!3064568 () Bool)

(declare-fun e!3064565 () Bool)

(assert (=> b!4902454 (= e!3064568 e!3064565)))

(declare-fun res!2094091 () Bool)

(assert (=> b!4902454 (=> res!2094091 e!3064565)))

(declare-fun lt!2010513 () TokenValue!8524)

(declare-fun lt!2010521 () BalanceConc!28994)

(declare-fun apply!13562 (TokenValueInjection!16356 BalanceConc!28994) TokenValue!8524)

(assert (=> b!4902454 (= res!2094091 (not (= (apply!13562 (transformation!8214 rule!164) lt!2010521) lt!2010513)))))

(declare-datatypes ((tuple2!60660 0))(
  ( (tuple2!60661 (_1!33633 BalanceConc!28994) (_2!33633 BalanceConc!28994)) )
))
(declare-fun lt!2010517 () tuple2!60660)

(declare-datatypes ((Unit!146611 0))(
  ( (Unit!146612) )
))
(declare-fun lt!2010515 () Unit!146611)

(declare-fun lemmaEqSameImage!1106 (TokenValueInjection!16356 BalanceConc!28994 BalanceConc!28994) Unit!146611)

(assert (=> b!4902454 (= lt!2010515 (lemmaEqSameImage!1106 (transformation!8214 rule!164) (_1!33633 lt!2010517) lt!2010521))))

(declare-fun b!4902455 () Bool)

(declare-fun e!3064574 () Bool)

(assert (=> b!4902455 (= e!3064574 e!3064568)))

(declare-fun res!2094095 () Bool)

(assert (=> b!4902455 (=> res!2094095 e!3064568)))

(declare-fun lt!2010518 () Bool)

(declare-fun lt!2010516 () Bool)

(assert (=> b!4902455 (= res!2094095 (or (not (= lt!2010518 lt!2010516)) (not lt!2010518)))))

(declare-datatypes ((Token!14964 0))(
  ( (Token!14965 (value!263235 TokenValue!8524) (rule!11414 Rule!16228) (size!37222 Int) (originalCharacters!8513 List!56627)) )
))
(declare-datatypes ((tuple2!60662 0))(
  ( (tuple2!60663 (_1!33634 Token!14964) (_2!33634 List!56627)) )
))
(declare-datatypes ((Option!14073 0))(
  ( (None!14072) (Some!14072 (v!50034 tuple2!60662)) )
))
(declare-fun lt!2010507 () Option!14073)

(declare-fun isDefined!11082 (Option!14073) Bool)

(assert (=> b!4902455 (= lt!2010516 (isDefined!11082 lt!2010507))))

(declare-fun lt!2010506 () List!56627)

(declare-fun lt!2010520 () Int)

(declare-datatypes ((tuple2!60664 0))(
  ( (tuple2!60665 (_1!33635 Token!14964) (_2!33635 BalanceConc!28994)) )
))
(declare-datatypes ((Option!14074 0))(
  ( (None!14073) (Some!14073 (v!50035 tuple2!60664)) )
))
(declare-fun isDefined!11083 (Option!14074) Bool)

(assert (=> b!4902455 (= lt!2010518 (isDefined!11083 (Some!14073 (tuple2!60665 (Token!14965 lt!2010513 rule!164 lt!2010520 lt!2010506) (_2!33633 lt!2010517)))))))

(declare-fun lt!2010519 () List!56627)

(declare-datatypes ((LexerInterface!7806 0))(
  ( (LexerInterfaceExt!7803 (__x!34342 Int)) (Lexer!7804) )
))
(declare-fun thiss!15943 () LexerInterface!7806)

(declare-fun maxPrefixOneRule!3555 (LexerInterface!7806 Rule!16228 List!56627) Option!14073)

(assert (=> b!4902455 (= lt!2010507 (maxPrefixOneRule!3555 thiss!15943 rule!164 lt!2010519))))

(declare-fun size!37223 (BalanceConc!28994) Int)

(assert (=> b!4902455 (= lt!2010520 (size!37223 (_1!33633 lt!2010517)))))

(assert (=> b!4902455 (= lt!2010513 (apply!13562 (transformation!8214 rule!164) (_1!33633 lt!2010517)))))

(declare-fun lt!2010510 () Unit!146611)

(declare-fun ForallOf!1155 (Int BalanceConc!28994) Unit!146611)

(assert (=> b!4902455 (= lt!2010510 (ForallOf!1155 lambda!244332 lt!2010521))))

(declare-fun seqFromList!5960 (List!56627) BalanceConc!28994)

(assert (=> b!4902455 (= lt!2010521 (seqFromList!5960 lt!2010506))))

(declare-fun list!17784 (BalanceConc!28994) List!56627)

(assert (=> b!4902455 (= lt!2010506 (list!17784 (_1!33633 lt!2010517)))))

(declare-fun lt!2010508 () Unit!146611)

(assert (=> b!4902455 (= lt!2010508 (ForallOf!1155 lambda!244332 (_1!33633 lt!2010517)))))

(declare-fun b!4902456 () Bool)

(declare-fun lt!2010512 () tuple2!60662)

(assert (=> b!4902456 (= e!3064565 (or (not (= (value!263235 (_1!33634 lt!2010512)) lt!2010513)) (not (= (rule!11414 (_1!33634 lt!2010512)) rule!164)) lt!2010516))))

(declare-fun get!19527 (Option!14073) tuple2!60662)

(assert (=> b!4902456 (= lt!2010512 (get!19527 lt!2010507))))

(declare-fun b!4902457 () Bool)

(declare-fun tp!1379413 () Bool)

(declare-fun e!3064572 () Bool)

(declare-fun inv!72890 (String!64061) Bool)

(declare-fun inv!72894 (TokenValueInjection!16356) Bool)

(assert (=> b!4902457 (= e!3064572 (and tp!1379413 (inv!72890 (tag!9078 rule!164)) (inv!72894 (transformation!8214 rule!164)) e!3064566))))

(declare-fun b!4902458 () Bool)

(declare-fun e!3064569 () Bool)

(declare-datatypes ((tuple2!60666 0))(
  ( (tuple2!60667 (_1!33636 List!56627) (_2!33636 List!56627)) )
))
(declare-fun lt!2010511 () tuple2!60666)

(declare-fun matchR!6556 (Regex!13289 List!56627) Bool)

(assert (=> b!4902458 (= e!3064569 (matchR!6556 (regex!8214 rule!164) (_1!33636 lt!2010511)))))

(declare-fun b!4902459 () Bool)

(declare-fun res!2094088 () Bool)

(assert (=> b!4902459 (=> res!2094088 e!3064568)))

(assert (=> b!4902459 (= res!2094088 (not (= (list!17784 lt!2010521) lt!2010506)))))

(declare-fun b!4902460 () Bool)

(declare-fun e!3064571 () Bool)

(assert (=> b!4902460 (= e!3064571 (not e!3064574))))

(declare-fun res!2094090 () Bool)

(assert (=> b!4902460 (=> res!2094090 e!3064574)))

(declare-fun semiInverseModEq!3615 (Int Int) Bool)

(assert (=> b!4902460 (= res!2094090 (not (semiInverseModEq!3615 (toChars!10984 (transformation!8214 rule!164)) (toValue!11125 (transformation!8214 rule!164)))))))

(declare-fun lt!2010514 () Unit!146611)

(declare-fun lemmaInv!1260 (TokenValueInjection!16356) Unit!146611)

(assert (=> b!4902460 (= lt!2010514 (lemmaInv!1260 (transformation!8214 rule!164)))))

(assert (=> b!4902460 e!3064569))

(declare-fun res!2094092 () Bool)

(assert (=> b!4902460 (=> res!2094092 e!3064569)))

(declare-fun isEmpty!30363 (List!56627) Bool)

(assert (=> b!4902460 (= res!2094092 (isEmpty!30363 (_1!33636 lt!2010511)))))

(declare-fun findLongestMatchInner!1777 (Regex!13289 List!56627 Int List!56627 List!56627 Int) tuple2!60666)

(declare-fun size!37224 (List!56627) Int)

(assert (=> b!4902460 (= lt!2010511 (findLongestMatchInner!1777 (regex!8214 rule!164) Nil!56503 (size!37224 Nil!56503) lt!2010519 lt!2010519 (size!37224 lt!2010519)))))

(declare-fun lt!2010509 () Unit!146611)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1740 (Regex!13289 List!56627) Unit!146611)

(assert (=> b!4902460 (= lt!2010509 (longestMatchIsAcceptedByMatchOrIsEmpty!1740 (regex!8214 rule!164) lt!2010519))))

(declare-fun input!1509 () BalanceConc!28994)

(assert (=> b!4902460 (= lt!2010519 (list!17784 input!1509))))

(declare-fun b!4902461 () Bool)

(declare-fun res!2094094 () Bool)

(declare-fun e!3064573 () Bool)

(assert (=> b!4902461 (=> (not res!2094094) (not e!3064573))))

(declare-fun ruleValid!3711 (LexerInterface!7806 Rule!16228) Bool)

(assert (=> b!4902461 (= res!2094094 (ruleValid!3711 thiss!15943 rule!164))))

(declare-fun b!4902462 () Bool)

(assert (=> b!4902462 (= e!3064573 e!3064571)))

(declare-fun res!2094093 () Bool)

(assert (=> b!4902462 (=> (not res!2094093) (not e!3064571))))

(declare-fun isEmpty!30364 (BalanceConc!28994) Bool)

(assert (=> b!4902462 (= res!2094093 (not (isEmpty!30364 (_1!33633 lt!2010517))))))

(declare-fun findLongestMatchWithZipperSequence!302 (Regex!13289 BalanceConc!28994) tuple2!60660)

(assert (=> b!4902462 (= lt!2010517 (findLongestMatchWithZipperSequence!302 (regex!8214 rule!164) input!1509))))

(declare-fun res!2094096 () Bool)

(assert (=> b!4902463 (=> res!2094096 e!3064574)))

(declare-fun Forall!1711 (Int) Bool)

(assert (=> b!4902463 (= res!2094096 (not (Forall!1711 lambda!244332)))))

(declare-fun b!4902452 () Bool)

(declare-fun e!3064567 () Bool)

(declare-fun tp!1379412 () Bool)

(declare-fun inv!72895 (Conc!14782) Bool)

(assert (=> b!4902452 (= e!3064567 (and (inv!72895 (c!833194 input!1509)) tp!1379412))))

(declare-fun res!2094089 () Bool)

(assert (=> start!513620 (=> (not res!2094089) (not e!3064573))))

(get-info :version)

(assert (=> start!513620 (= res!2094089 ((_ is Lexer!7804) thiss!15943))))

(assert (=> start!513620 e!3064573))

(assert (=> start!513620 true))

(assert (=> start!513620 e!3064572))

(declare-fun inv!72896 (BalanceConc!28994) Bool)

(assert (=> start!513620 (and (inv!72896 input!1509) e!3064567)))

(assert (= (and start!513620 res!2094089) b!4902461))

(assert (= (and b!4902461 res!2094094) b!4902462))

(assert (= (and b!4902462 res!2094093) b!4902460))

(assert (= (and b!4902460 (not res!2094092)) b!4902458))

(assert (= (and b!4902460 (not res!2094090)) b!4902463))

(assert (= (and b!4902463 (not res!2094096)) b!4902455))

(assert (= (and b!4902455 (not res!2094095)) b!4902459))

(assert (= (and b!4902459 (not res!2094088)) b!4902454))

(assert (= (and b!4902454 (not res!2094091)) b!4902456))

(assert (= b!4902457 b!4902453))

(assert (= start!513620 b!4902457))

(assert (= start!513620 b!4902452))

(declare-fun m!5911234 () Bool)

(assert (=> b!4902456 m!5911234))

(declare-fun m!5911236 () Bool)

(assert (=> b!4902458 m!5911236))

(declare-fun m!5911238 () Bool)

(assert (=> b!4902462 m!5911238))

(declare-fun m!5911240 () Bool)

(assert (=> b!4902462 m!5911240))

(declare-fun m!5911242 () Bool)

(assert (=> b!4902461 m!5911242))

(declare-fun m!5911244 () Bool)

(assert (=> b!4902452 m!5911244))

(declare-fun m!5911246 () Bool)

(assert (=> b!4902459 m!5911246))

(declare-fun m!5911248 () Bool)

(assert (=> b!4902454 m!5911248))

(declare-fun m!5911250 () Bool)

(assert (=> b!4902454 m!5911250))

(declare-fun m!5911252 () Bool)

(assert (=> b!4902460 m!5911252))

(declare-fun m!5911254 () Bool)

(assert (=> b!4902460 m!5911254))

(declare-fun m!5911256 () Bool)

(assert (=> b!4902460 m!5911256))

(declare-fun m!5911258 () Bool)

(assert (=> b!4902460 m!5911258))

(declare-fun m!5911260 () Bool)

(assert (=> b!4902460 m!5911260))

(declare-fun m!5911262 () Bool)

(assert (=> b!4902460 m!5911262))

(assert (=> b!4902460 m!5911254))

(assert (=> b!4902460 m!5911256))

(declare-fun m!5911264 () Bool)

(assert (=> b!4902460 m!5911264))

(declare-fun m!5911266 () Bool)

(assert (=> b!4902460 m!5911266))

(declare-fun m!5911268 () Bool)

(assert (=> b!4902463 m!5911268))

(declare-fun m!5911270 () Bool)

(assert (=> b!4902457 m!5911270))

(declare-fun m!5911272 () Bool)

(assert (=> b!4902457 m!5911272))

(declare-fun m!5911274 () Bool)

(assert (=> b!4902455 m!5911274))

(declare-fun m!5911276 () Bool)

(assert (=> b!4902455 m!5911276))

(declare-fun m!5911278 () Bool)

(assert (=> b!4902455 m!5911278))

(declare-fun m!5911280 () Bool)

(assert (=> b!4902455 m!5911280))

(declare-fun m!5911282 () Bool)

(assert (=> b!4902455 m!5911282))

(declare-fun m!5911284 () Bool)

(assert (=> b!4902455 m!5911284))

(declare-fun m!5911286 () Bool)

(assert (=> b!4902455 m!5911286))

(declare-fun m!5911288 () Bool)

(assert (=> b!4902455 m!5911288))

(declare-fun m!5911290 () Bool)

(assert (=> b!4902455 m!5911290))

(declare-fun m!5911292 () Bool)

(assert (=> start!513620 m!5911292))

(check-sat (not b!4902454) (not b!4902452) b_and!346219 (not b!4902458) b_and!346221 (not b!4902460) (not start!513620) (not b!4902456) (not b_next!132617) (not b!4902455) (not b!4902459) (not b!4902463) (not b_next!132619) (not b!4902461) (not b!4902457) (not b!4902462))
(check-sat b_and!346221 b_and!346219 (not b_next!132619) (not b_next!132617))
