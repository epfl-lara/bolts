; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!6296 () Bool)

(assert start!6296)

(declare-fun b!78058 () Bool)

(declare-fun b_free!2501 () Bool)

(declare-fun b_next!2501 () Bool)

(assert (=> b!78058 (= b_free!2501 (not b_next!2501))))

(declare-fun tp!49945 () Bool)

(declare-fun b_and!3575 () Bool)

(assert (=> b!78058 (= tp!49945 b_and!3575)))

(declare-fun b_free!2503 () Bool)

(declare-fun b_next!2503 () Bool)

(assert (=> b!78058 (= b_free!2503 (not b_next!2503))))

(declare-fun tp!49943 () Bool)

(declare-fun b_and!3577 () Bool)

(assert (=> b!78058 (= tp!49943 b_and!3577)))

(declare-fun b!78057 () Bool)

(declare-fun res!40756 () Bool)

(declare-fun e!43671 () Bool)

(assert (=> b!78057 (=> (not res!40756) (not e!43671))))

(declare-datatypes ((LexerInterface!192 0))(
  ( (LexerInterfaceExt!189 (__x!1675 Int)) (Lexer!190) )
))
(declare-fun thiss!19403 () LexerInterface!192)

(declare-datatypes ((C!1658 0))(
  ( (C!1659 (val!436 Int)) )
))
(declare-datatypes ((List!1378 0))(
  ( (Nil!1372) (Cons!1372 (h!6769 C!1658) (t!20193 List!1378)) )
))
(declare-datatypes ((IArray!805 0))(
  ( (IArray!806 (innerList!460 List!1378)) )
))
(declare-datatypes ((Conc!402 0))(
  ( (Node!402 (left!1041 Conc!402) (right!1371 Conc!402) (csize!1034 Int) (cheight!613 Int)) (Leaf!688 (xs!2981 IArray!805) (csize!1035 Int)) (Empty!402) )
))
(declare-datatypes ((BalanceConc!808 0))(
  ( (BalanceConc!809 (c!19972 Conc!402)) )
))
(declare-datatypes ((Regex!368 0))(
  ( (ElementMatch!368 (c!19973 C!1658)) (Concat!658 (regOne!1248 Regex!368) (regTwo!1248 Regex!368)) (EmptyExpr!368) (Star!368 (reg!697 Regex!368)) (EmptyLang!368) (Union!368 (regOne!1249 Regex!368) (regTwo!1249 Regex!368)) )
))
(declare-datatypes ((String!1843 0))(
  ( (String!1844 (value!11421 String)) )
))
(declare-datatypes ((List!1379 0))(
  ( (Nil!1373) (Cons!1373 (h!6770 (_ BitVec 16)) (t!20194 List!1379)) )
))
(declare-datatypes ((TokenValue!290 0))(
  ( (FloatLiteralValue!580 (text!2475 List!1379)) (TokenValueExt!289 (__x!1676 Int)) (Broken!1450 (value!11422 List!1379)) (Object!295) (End!290) (Def!290) (Underscore!290) (Match!290) (Else!290) (Error!290) (Case!290) (If!290) (Extends!290) (Abstract!290) (Class!290) (Val!290) (DelimiterValue!580 (del!350 List!1379)) (KeywordValue!296 (value!11423 List!1379)) (CommentValue!580 (value!11424 List!1379)) (WhitespaceValue!580 (value!11425 List!1379)) (IndentationValue!290 (value!11426 List!1379)) (String!1845) (Int32!290) (Broken!1451 (value!11427 List!1379)) (Boolean!291) (Unit!836) (OperatorValue!293 (op!350 List!1379)) (IdentifierValue!580 (value!11428 List!1379)) (IdentifierValue!581 (value!11429 List!1379)) (WhitespaceValue!581 (value!11430 List!1379)) (True!580) (False!580) (Broken!1452 (value!11431 List!1379)) (Broken!1453 (value!11432 List!1379)) (True!581) (RightBrace!290) (RightBracket!290) (Colon!290) (Null!290) (Comma!290) (LeftBracket!290) (False!581) (LeftBrace!290) (ImaginaryLiteralValue!290 (text!2476 List!1379)) (StringLiteralValue!870 (value!11433 List!1379)) (EOFValue!290 (value!11434 List!1379)) (IdentValue!290 (value!11435 List!1379)) (DelimiterValue!581 (value!11436 List!1379)) (DedentValue!290 (value!11437 List!1379)) (NewLineValue!290 (value!11438 List!1379)) (IntegerValue!870 (value!11439 (_ BitVec 32)) (text!2477 List!1379)) (IntegerValue!871 (value!11440 Int) (text!2478 List!1379)) (Times!290) (Or!290) (Equal!290) (Minus!290) (Broken!1454 (value!11441 List!1379)) (And!290) (Div!290) (LessEqual!290) (Mod!290) (Concat!659) (Not!290) (Plus!290) (SpaceValue!290 (value!11442 List!1379)) (IntegerValue!872 (value!11443 Int) (text!2479 List!1379)) (StringLiteralValue!871 (text!2480 List!1379)) (FloatLiteralValue!581 (text!2481 List!1379)) (BytesLiteralValue!290 (value!11444 List!1379)) (CommentValue!581 (value!11445 List!1379)) (StringLiteralValue!872 (value!11446 List!1379)) (ErrorTokenValue!290 (msg!351 List!1379)) )
))
(declare-datatypes ((TokenValueInjection!404 0))(
  ( (TokenValueInjection!405 (toValue!811 Int) (toChars!670 Int)) )
))
(declare-datatypes ((Rule!400 0))(
  ( (Rule!401 (regex!300 Regex!368) (tag!478 String!1843) (isSeparator!300 Bool) (transformation!300 TokenValueInjection!404)) )
))
(declare-datatypes ((List!1380 0))(
  ( (Nil!1374) (Cons!1374 (h!6771 Rule!400) (t!20195 List!1380)) )
))
(declare-fun rules!2471 () List!1380)

(declare-fun rulesInvariant!186 (LexerInterface!192 List!1380) Bool)

(assert (=> b!78057 (= res!40756 (rulesInvariant!186 thiss!19403 rules!2471))))

(declare-fun res!40758 () Bool)

(assert (=> start!6296 (=> (not res!40758) (not e!43671))))

(assert (=> start!6296 (= res!40758 (is-Lexer!190 thiss!19403))))

(assert (=> start!6296 e!43671))

(assert (=> start!6296 true))

(declare-fun e!43674 () Bool)

(assert (=> start!6296 e!43674))

(declare-fun e!43675 () Bool)

(assert (=> start!6296 e!43675))

(declare-fun e!43673 () Bool)

(assert (=> b!78058 (= e!43673 (and tp!49945 tp!49943))))

(declare-fun b!78059 () Bool)

(declare-fun e!43669 () Bool)

(assert (=> b!78059 (= e!43671 e!43669)))

(declare-fun res!40755 () Bool)

(assert (=> b!78059 (=> (not res!40755) (not e!43669))))

(declare-datatypes ((Token!360 0))(
  ( (Token!361 (value!11447 TokenValue!290) (rule!779 Rule!400) (size!1200 Int) (originalCharacters!351 List!1378)) )
))
(declare-datatypes ((List!1381 0))(
  ( (Nil!1375) (Cons!1375 (h!6772 Token!360) (t!20196 List!1381)) )
))
(declare-datatypes ((IArray!807 0))(
  ( (IArray!808 (innerList!461 List!1381)) )
))
(declare-datatypes ((Conc!403 0))(
  ( (Node!403 (left!1042 Conc!403) (right!1372 Conc!403) (csize!1036 Int) (cheight!614 Int)) (Leaf!689 (xs!2982 IArray!807) (csize!1037 Int)) (Empty!403) )
))
(declare-datatypes ((BalanceConc!810 0))(
  ( (BalanceConc!811 (c!19974 Conc!403)) )
))
(declare-datatypes ((tuple2!1372 0))(
  ( (tuple2!1373 (_1!893 BalanceConc!810) (_2!893 BalanceConc!808)) )
))
(declare-fun lt!16243 () tuple2!1372)

(declare-fun isEmpty!428 (BalanceConc!808) Bool)

(assert (=> b!78059 (= res!40755 (not (isEmpty!428 (_2!893 lt!16243))))))

(declare-fun input!2238 () List!1378)

(declare-fun lex!100 (LexerInterface!192 List!1380 BalanceConc!808) tuple2!1372)

(declare-fun seqFromList!112 (List!1378) BalanceConc!808)

(assert (=> b!78059 (= lt!16243 (lex!100 thiss!19403 rules!2471 (seqFromList!112 input!2238)))))

(declare-fun b!78060 () Bool)

(declare-fun e!43676 () Bool)

(declare-fun rulesValidInductive!33 (LexerInterface!192 List!1380) Bool)

(assert (=> b!78060 (= e!43676 (not (rulesValidInductive!33 thiss!19403 rules!2471)))))

(declare-fun lt!16246 () List!1378)

(declare-datatypes ((tuple2!1374 0))(
  ( (tuple2!1375 (_1!894 Token!360) (_2!894 List!1378)) )
))
(declare-fun lt!16252 () tuple2!1374)

(declare-fun list!440 (BalanceConc!808) List!1378)

(declare-fun charsOf!37 (Token!360) BalanceConc!808)

(assert (=> b!78060 (= lt!16246 (list!440 (charsOf!37 (_1!894 lt!16252))))))

(declare-fun lt!16248 () List!1378)

(declare-fun lt!16253 () List!1381)

(declare-fun lt!16247 () tuple2!1372)

(declare-fun lt!16249 () List!1378)

(declare-datatypes ((tuple2!1376 0))(
  ( (tuple2!1377 (_1!895 List!1381) (_2!895 List!1378)) )
))
(declare-fun list!441 (BalanceConc!810) List!1381)

(declare-fun tail!109 (List!1381) List!1381)

(assert (=> b!78060 (= (tuple2!1377 (list!441 (_1!893 lt!16247)) lt!16248) (tuple2!1377 (tail!109 lt!16253) lt!16249))))

(declare-datatypes ((Unit!837 0))(
  ( (Unit!838) )
))
(declare-fun lt!16245 () Unit!837)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!11 (LexerInterface!192 List!1380 List!1378 List!1381 List!1378) Unit!837)

(assert (=> b!78060 (= lt!16245 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!11 thiss!19403 rules!2471 input!2238 lt!16253 lt!16249))))

(assert (=> b!78060 (= lt!16249 (list!440 (_2!893 lt!16243)))))

(declare-fun lt!16250 () List!1378)

(declare-fun ++!125 (List!1378 List!1378) List!1378)

(assert (=> b!78060 (= (++!125 lt!16250 lt!16248) (_2!894 lt!16252))))

(assert (=> b!78060 (= lt!16248 (list!440 (_2!893 lt!16247)))))

(declare-fun print!31 (LexerInterface!192 BalanceConc!810) BalanceConc!808)

(assert (=> b!78060 (= lt!16250 (list!440 (print!31 thiss!19403 (_1!893 lt!16247))))))

(assert (=> b!78060 (= lt!16247 (lex!100 thiss!19403 rules!2471 (seqFromList!112 (_2!894 lt!16252))))))

(declare-fun lt!16251 () Unit!837)

(declare-fun theoremInvertFromString!15 (LexerInterface!192 List!1380 List!1378) Unit!837)

(assert (=> b!78060 (= lt!16251 (theoremInvertFromString!15 thiss!19403 rules!2471 (_2!894 lt!16252)))))

(declare-datatypes ((Option!105 0))(
  ( (None!104) (Some!104 (v!12769 tuple2!1374)) )
))
(declare-fun get!339 (Option!105) tuple2!1374)

(declare-fun maxPrefix!36 (LexerInterface!192 List!1380 List!1378) Option!105)

(assert (=> b!78060 (= lt!16252 (get!339 (maxPrefix!36 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!53 (BalanceConc!810 Token!360) BalanceConc!810)

(declare-fun seqFromList!113 (List!1381) BalanceConc!810)

(assert (=> b!78060 (= lt!16253 (list!441 (prepend!53 (seqFromList!113 (t!20196 lt!16253)) (h!6772 lt!16253))))))

(declare-fun lt!16244 () Unit!837)

(declare-fun seqFromListBHdTlConstructive!23 (Token!360 List!1381 BalanceConc!810) Unit!837)

(assert (=> b!78060 (= lt!16244 (seqFromListBHdTlConstructive!23 (h!6772 lt!16253) (t!20196 lt!16253) (_1!893 lt!16243)))))

(declare-fun b!78061 () Bool)

(declare-fun e!43670 () Bool)

(declare-fun tp!49944 () Bool)

(declare-fun inv!1733 (String!1843) Bool)

(declare-fun inv!1736 (TokenValueInjection!404) Bool)

(assert (=> b!78061 (= e!43670 (and tp!49944 (inv!1733 (tag!478 (h!6771 rules!2471))) (inv!1736 (transformation!300 (h!6771 rules!2471))) e!43673))))

(declare-fun b!78062 () Bool)

(assert (=> b!78062 (= e!43669 e!43676)))

(declare-fun res!40754 () Bool)

(assert (=> b!78062 (=> (not res!40754) (not e!43676))))

(declare-fun lt!16254 () Bool)

(assert (=> b!78062 (= res!40754 (and (or lt!16254 (not (is-Nil!1375 (t!20196 lt!16253)))) (not lt!16254)))))

(assert (=> b!78062 (= lt!16254 (not (is-Cons!1375 lt!16253)))))

(assert (=> b!78062 (= lt!16253 (list!441 (_1!893 lt!16243)))))

(declare-fun b!78063 () Bool)

(declare-fun res!40757 () Bool)

(assert (=> b!78063 (=> (not res!40757) (not e!43671))))

(declare-fun isEmpty!429 (List!1380) Bool)

(assert (=> b!78063 (= res!40757 (not (isEmpty!429 rules!2471)))))

(declare-fun b!78064 () Bool)

(declare-fun tp_is_empty!659 () Bool)

(declare-fun tp!49941 () Bool)

(assert (=> b!78064 (= e!43675 (and tp_is_empty!659 tp!49941))))

(declare-fun b!78065 () Bool)

(declare-fun tp!49942 () Bool)

(assert (=> b!78065 (= e!43674 (and e!43670 tp!49942))))

(assert (= (and start!6296 res!40758) b!78063))

(assert (= (and b!78063 res!40757) b!78057))

(assert (= (and b!78057 res!40756) b!78059))

(assert (= (and b!78059 res!40755) b!78062))

(assert (= (and b!78062 res!40754) b!78060))

(assert (= b!78061 b!78058))

(assert (= b!78065 b!78061))

(assert (= (and start!6296 (is-Cons!1374 rules!2471)) b!78065))

(assert (= (and start!6296 (is-Cons!1372 input!2238)) b!78064))

(declare-fun m!51242 () Bool)

(assert (=> b!78059 m!51242))

(declare-fun m!51244 () Bool)

(assert (=> b!78059 m!51244))

(assert (=> b!78059 m!51244))

(declare-fun m!51246 () Bool)

(assert (=> b!78059 m!51246))

(declare-fun m!51248 () Bool)

(assert (=> b!78057 m!51248))

(declare-fun m!51250 () Bool)

(assert (=> b!78063 m!51250))

(declare-fun m!51252 () Bool)

(assert (=> b!78060 m!51252))

(declare-fun m!51254 () Bool)

(assert (=> b!78060 m!51254))

(declare-fun m!51256 () Bool)

(assert (=> b!78060 m!51256))

(declare-fun m!51258 () Bool)

(assert (=> b!78060 m!51258))

(declare-fun m!51260 () Bool)

(assert (=> b!78060 m!51260))

(declare-fun m!51262 () Bool)

(assert (=> b!78060 m!51262))

(declare-fun m!51264 () Bool)

(assert (=> b!78060 m!51264))

(declare-fun m!51266 () Bool)

(assert (=> b!78060 m!51266))

(declare-fun m!51268 () Bool)

(assert (=> b!78060 m!51268))

(assert (=> b!78060 m!51264))

(declare-fun m!51270 () Bool)

(assert (=> b!78060 m!51270))

(declare-fun m!51272 () Bool)

(assert (=> b!78060 m!51272))

(declare-fun m!51274 () Bool)

(assert (=> b!78060 m!51274))

(declare-fun m!51276 () Bool)

(assert (=> b!78060 m!51276))

(assert (=> b!78060 m!51276))

(declare-fun m!51278 () Bool)

(assert (=> b!78060 m!51278))

(assert (=> b!78060 m!51256))

(assert (=> b!78060 m!51266))

(declare-fun m!51280 () Bool)

(assert (=> b!78060 m!51280))

(declare-fun m!51282 () Bool)

(assert (=> b!78060 m!51282))

(declare-fun m!51284 () Bool)

(assert (=> b!78060 m!51284))

(assert (=> b!78060 m!51260))

(declare-fun m!51286 () Bool)

(assert (=> b!78060 m!51286))

(assert (=> b!78060 m!51252))

(declare-fun m!51288 () Bool)

(assert (=> b!78060 m!51288))

(declare-fun m!51290 () Bool)

(assert (=> b!78060 m!51290))

(declare-fun m!51292 () Bool)

(assert (=> b!78062 m!51292))

(declare-fun m!51294 () Bool)

(assert (=> b!78061 m!51294))

(declare-fun m!51296 () Bool)

(assert (=> b!78061 m!51296))

(push 1)

(assert tp_is_empty!659)

(assert (not b_next!2503))

(assert (not b!78057))

(assert (not b!78064))

(assert b_and!3575)

(assert (not b!78061))

(assert (not b!78060))

(assert b_and!3577)

(assert (not b!78062))

(assert (not b!78065))

(assert (not b!78059))

(assert (not b!78063))

(assert (not b_next!2501))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3577)

(assert b_and!3575)

(assert (not b_next!2503))

(assert (not b_next!2501))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14186 () Bool)

(assert (=> d!14186 (= (inv!1733 (tag!478 (h!6771 rules!2471))) (= (mod (str.len (value!11421 (tag!478 (h!6771 rules!2471)))) 2) 0))))

(assert (=> b!78061 d!14186))

(declare-fun d!14188 () Bool)

(declare-fun res!40784 () Bool)

(declare-fun e!43703 () Bool)

(assert (=> d!14188 (=> (not res!40784) (not e!43703))))

(declare-fun semiInverseModEq!50 (Int Int) Bool)

(assert (=> d!14188 (= res!40784 (semiInverseModEq!50 (toChars!670 (transformation!300 (h!6771 rules!2471))) (toValue!811 (transformation!300 (h!6771 rules!2471)))))))

(assert (=> d!14188 (= (inv!1736 (transformation!300 (h!6771 rules!2471))) e!43703)))

(declare-fun b!78095 () Bool)

(declare-fun equivClasses!46 (Int Int) Bool)

(assert (=> b!78095 (= e!43703 (equivClasses!46 (toChars!670 (transformation!300 (h!6771 rules!2471))) (toValue!811 (transformation!300 (h!6771 rules!2471)))))))

(assert (= (and d!14188 res!40784) b!78095))

(declare-fun m!51354 () Bool)

(assert (=> d!14188 m!51354))

(declare-fun m!51356 () Bool)

(assert (=> b!78095 m!51356))

(assert (=> b!78061 d!14188))

(declare-fun d!14190 () Bool)

(declare-fun list!444 (Conc!402) List!1378)

(assert (=> d!14190 (= (list!440 (_2!893 lt!16247)) (list!444 (c!19972 (_2!893 lt!16247))))))

(declare-fun bs!8105 () Bool)

(assert (= bs!8105 d!14190))

(declare-fun m!51358 () Bool)

(assert (=> bs!8105 m!51358))

(assert (=> b!78060 d!14190))

(declare-fun d!14192 () Bool)

(declare-fun lt!16293 () BalanceConc!808)

(declare-fun printList!11 (LexerInterface!192 List!1381) List!1378)

(assert (=> d!14192 (= (list!440 lt!16293) (printList!11 thiss!19403 (list!441 (_1!893 lt!16247))))))

(declare-fun printTailRec!11 (LexerInterface!192 BalanceConc!810 Int BalanceConc!808) BalanceConc!808)

(assert (=> d!14192 (= lt!16293 (printTailRec!11 thiss!19403 (_1!893 lt!16247) 0 (BalanceConc!809 Empty!402)))))

(assert (=> d!14192 (= (print!31 thiss!19403 (_1!893 lt!16247)) lt!16293)))

(declare-fun bs!8106 () Bool)

(assert (= bs!8106 d!14192))

(declare-fun m!51360 () Bool)

(assert (=> bs!8106 m!51360))

(assert (=> bs!8106 m!51290))

(assert (=> bs!8106 m!51290))

(declare-fun m!51362 () Bool)

(assert (=> bs!8106 m!51362))

(declare-fun m!51364 () Bool)

(assert (=> bs!8106 m!51364))

(assert (=> b!78060 d!14192))

(declare-fun d!14194 () Bool)

(declare-fun list!445 (Conc!403) List!1381)

(assert (=> d!14194 (= (list!441 (prepend!53 (seqFromList!113 (t!20196 lt!16253)) (h!6772 lt!16253))) (list!445 (c!19974 (prepend!53 (seqFromList!113 (t!20196 lt!16253)) (h!6772 lt!16253)))))))

(declare-fun bs!8107 () Bool)

(assert (= bs!8107 d!14194))

(declare-fun m!51366 () Bool)

(assert (=> bs!8107 m!51366))

(assert (=> b!78060 d!14194))

(declare-fun d!14196 () Bool)

(declare-fun lt!16299 () tuple2!1372)

(assert (=> d!14196 (= (++!125 (list!440 (print!31 thiss!19403 (_1!893 lt!16299))) (list!440 (_2!893 lt!16299))) (_2!894 lt!16252))))

(assert (=> d!14196 (= lt!16299 (lex!100 thiss!19403 rules!2471 (seqFromList!112 (_2!894 lt!16252))))))

(declare-fun lt!16298 () Unit!837)

(declare-fun choose!1275 (LexerInterface!192 List!1380 List!1378) Unit!837)

(assert (=> d!14196 (= lt!16298 (choose!1275 thiss!19403 rules!2471 (_2!894 lt!16252)))))

(assert (=> d!14196 (not (isEmpty!429 rules!2471))))

(assert (=> d!14196 (= (theoremInvertFromString!15 thiss!19403 rules!2471 (_2!894 lt!16252)) lt!16298)))

(declare-fun bs!8109 () Bool)

(assert (= bs!8109 d!14196))

(declare-fun m!51378 () Bool)

(assert (=> bs!8109 m!51378))

(assert (=> bs!8109 m!51250))

(declare-fun m!51380 () Bool)

(assert (=> bs!8109 m!51380))

(assert (=> bs!8109 m!51378))

(declare-fun m!51382 () Bool)

(assert (=> bs!8109 m!51382))

(declare-fun m!51384 () Bool)

(assert (=> bs!8109 m!51384))

(declare-fun m!51386 () Bool)

(assert (=> bs!8109 m!51386))

(assert (=> bs!8109 m!51260))

(assert (=> bs!8109 m!51286))

(assert (=> bs!8109 m!51260))

(assert (=> bs!8109 m!51384))

(assert (=> bs!8109 m!51380))

(assert (=> b!78060 d!14196))

(declare-fun d!14210 () Bool)

(assert (=> d!14210 (= (list!440 (_2!893 lt!16243)) (list!444 (c!19972 (_2!893 lt!16243))))))

(declare-fun bs!8110 () Bool)

(assert (= bs!8110 d!14210))

(declare-fun m!51388 () Bool)

(assert (=> bs!8110 m!51388))

(assert (=> b!78060 d!14210))

(declare-fun d!14212 () Bool)

(declare-fun fromListB!37 (List!1381) BalanceConc!810)

(assert (=> d!14212 (= (seqFromList!113 (t!20196 lt!16253)) (fromListB!37 (t!20196 lt!16253)))))

(declare-fun bs!8111 () Bool)

(assert (= bs!8111 d!14212))

(declare-fun m!51390 () Bool)

(assert (=> bs!8111 m!51390))

(assert (=> b!78060 d!14212))

(declare-fun d!14214 () Bool)

(assert (=> d!14214 (= (tail!109 lt!16253) (t!20196 lt!16253))))

(assert (=> b!78060 d!14214))

(declare-fun b!78144 () Bool)

(declare-fun e!43728 () Bool)

(declare-fun e!43729 () Bool)

(assert (=> b!78144 (= e!43728 e!43729)))

(declare-fun res!40820 () Bool)

(declare-fun lt!16323 () tuple2!1372)

(declare-fun size!1202 (BalanceConc!808) Int)

(assert (=> b!78144 (= res!40820 (< (size!1202 (_2!893 lt!16323)) (size!1202 (seqFromList!112 (_2!894 lt!16252)))))))

(assert (=> b!78144 (=> (not res!40820) (not e!43729))))

(declare-fun d!14216 () Bool)

(declare-fun e!43730 () Bool)

(assert (=> d!14216 e!43730))

(declare-fun res!40819 () Bool)

(assert (=> d!14216 (=> (not res!40819) (not e!43730))))

(assert (=> d!14216 (= res!40819 e!43728)))

(declare-fun c!19984 () Bool)

(declare-fun size!1203 (BalanceConc!810) Int)

(assert (=> d!14216 (= c!19984 (> (size!1203 (_1!893 lt!16323)) 0))))

(declare-fun lexTailRecV2!36 (LexerInterface!192 List!1380 BalanceConc!808 BalanceConc!808 BalanceConc!808 BalanceConc!810) tuple2!1372)

(assert (=> d!14216 (= lt!16323 (lexTailRecV2!36 thiss!19403 rules!2471 (seqFromList!112 (_2!894 lt!16252)) (BalanceConc!809 Empty!402) (seqFromList!112 (_2!894 lt!16252)) (BalanceConc!811 Empty!403)))))

(assert (=> d!14216 (= (lex!100 thiss!19403 rules!2471 (seqFromList!112 (_2!894 lt!16252))) lt!16323)))

(declare-fun b!78145 () Bool)

(declare-fun isEmpty!432 (BalanceConc!810) Bool)

(assert (=> b!78145 (= e!43729 (not (isEmpty!432 (_1!893 lt!16323))))))

(declare-fun b!78146 () Bool)

(assert (=> b!78146 (= e!43728 (= (_2!893 lt!16323) (seqFromList!112 (_2!894 lt!16252))))))

(declare-fun b!78147 () Bool)

(declare-fun res!40818 () Bool)

(assert (=> b!78147 (=> (not res!40818) (not e!43730))))

(declare-fun lexList!39 (LexerInterface!192 List!1380 List!1378) tuple2!1376)

(assert (=> b!78147 (= res!40818 (= (list!441 (_1!893 lt!16323)) (_1!895 (lexList!39 thiss!19403 rules!2471 (list!440 (seqFromList!112 (_2!894 lt!16252)))))))))

(declare-fun b!78148 () Bool)

(assert (=> b!78148 (= e!43730 (= (list!440 (_2!893 lt!16323)) (_2!895 (lexList!39 thiss!19403 rules!2471 (list!440 (seqFromList!112 (_2!894 lt!16252)))))))))

(assert (= (and d!14216 c!19984) b!78144))

(assert (= (and d!14216 (not c!19984)) b!78146))

(assert (= (and b!78144 res!40820) b!78145))

(assert (= (and d!14216 res!40819) b!78147))

(assert (= (and b!78147 res!40818) b!78148))

(declare-fun m!51440 () Bool)

(assert (=> b!78144 m!51440))

(assert (=> b!78144 m!51260))

(declare-fun m!51442 () Bool)

(assert (=> b!78144 m!51442))

(declare-fun m!51444 () Bool)

(assert (=> b!78147 m!51444))

(assert (=> b!78147 m!51260))

(declare-fun m!51446 () Bool)

(assert (=> b!78147 m!51446))

(assert (=> b!78147 m!51446))

(declare-fun m!51448 () Bool)

(assert (=> b!78147 m!51448))

(declare-fun m!51450 () Bool)

(assert (=> b!78148 m!51450))

(assert (=> b!78148 m!51260))

(assert (=> b!78148 m!51446))

(assert (=> b!78148 m!51446))

(assert (=> b!78148 m!51448))

(declare-fun m!51452 () Bool)

(assert (=> d!14216 m!51452))

(assert (=> d!14216 m!51260))

(assert (=> d!14216 m!51260))

(declare-fun m!51454 () Bool)

(assert (=> d!14216 m!51454))

(declare-fun m!51456 () Bool)

(assert (=> b!78145 m!51456))

(assert (=> b!78060 d!14216))

(declare-fun d!14226 () Bool)

(declare-fun e!43733 () Bool)

(assert (=> d!14226 e!43733))

(declare-fun res!40823 () Bool)

(assert (=> d!14226 (=> (not res!40823) (not e!43733))))

(declare-fun isBalanced!78 (Conc!403) Bool)

(declare-fun prepend!55 (Conc!403 Token!360) Conc!403)

(assert (=> d!14226 (= res!40823 (isBalanced!78 (prepend!55 (c!19974 (seqFromList!113 (t!20196 lt!16253))) (h!6772 lt!16253))))))

(declare-fun lt!16329 () BalanceConc!810)

(assert (=> d!14226 (= lt!16329 (BalanceConc!811 (prepend!55 (c!19974 (seqFromList!113 (t!20196 lt!16253))) (h!6772 lt!16253))))))

(assert (=> d!14226 (= (prepend!53 (seqFromList!113 (t!20196 lt!16253)) (h!6772 lt!16253)) lt!16329)))

(declare-fun b!78151 () Bool)

(assert (=> b!78151 (= e!43733 (= (list!441 lt!16329) (Cons!1375 (h!6772 lt!16253) (list!441 (seqFromList!113 (t!20196 lt!16253))))))))

(assert (= (and d!14226 res!40823) b!78151))

(declare-fun m!51466 () Bool)

(assert (=> d!14226 m!51466))

(assert (=> d!14226 m!51466))

(declare-fun m!51468 () Bool)

(assert (=> d!14226 m!51468))

(declare-fun m!51470 () Bool)

(assert (=> b!78151 m!51470))

(assert (=> b!78151 m!51264))

(declare-fun m!51472 () Bool)

(assert (=> b!78151 m!51472))

(assert (=> b!78060 d!14226))

(declare-fun b!78174 () Bool)

(declare-fun res!40846 () Bool)

(declare-fun e!43744 () Bool)

(assert (=> b!78174 (=> (not res!40846) (not e!43744))))

(declare-fun lt!16345 () Option!105)

(declare-fun apply!184 (TokenValueInjection!404 BalanceConc!808) TokenValue!290)

(assert (=> b!78174 (= res!40846 (= (value!11447 (_1!894 (get!339 lt!16345))) (apply!184 (transformation!300 (rule!779 (_1!894 (get!339 lt!16345)))) (seqFromList!112 (originalCharacters!351 (_1!894 (get!339 lt!16345)))))))))

(declare-fun b!78175 () Bool)

(declare-fun res!40843 () Bool)

(assert (=> b!78175 (=> (not res!40843) (not e!43744))))

(declare-fun matchR!16 (Regex!368 List!1378) Bool)

(assert (=> b!78175 (= res!40843 (matchR!16 (regex!300 (rule!779 (_1!894 (get!339 lt!16345)))) (list!440 (charsOf!37 (_1!894 (get!339 lt!16345))))))))

(declare-fun call!3674 () Option!105)

(declare-fun bm!3669 () Bool)

(declare-fun maxPrefixOneRule!12 (LexerInterface!192 Rule!400 List!1378) Option!105)

(assert (=> bm!3669 (= call!3674 (maxPrefixOneRule!12 thiss!19403 (h!6771 rules!2471) input!2238))))

(declare-fun d!14230 () Bool)

(declare-fun e!43746 () Bool)

(assert (=> d!14230 e!43746))

(declare-fun res!40847 () Bool)

(assert (=> d!14230 (=> res!40847 e!43746)))

(declare-fun isEmpty!433 (Option!105) Bool)

(assert (=> d!14230 (= res!40847 (isEmpty!433 lt!16345))))

(declare-fun e!43745 () Option!105)

(assert (=> d!14230 (= lt!16345 e!43745)))

(declare-fun c!19988 () Bool)

(assert (=> d!14230 (= c!19988 (and (is-Cons!1374 rules!2471) (is-Nil!1374 (t!20195 rules!2471))))))

(declare-fun lt!16343 () Unit!837)

(declare-fun lt!16346 () Unit!837)

(assert (=> d!14230 (= lt!16343 lt!16346)))

(declare-fun isPrefix!15 (List!1378 List!1378) Bool)

(assert (=> d!14230 (isPrefix!15 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!15 (List!1378 List!1378) Unit!837)

(assert (=> d!14230 (= lt!16346 (lemmaIsPrefixRefl!15 input!2238 input!2238))))

(assert (=> d!14230 (rulesValidInductive!33 thiss!19403 rules!2471)))

(assert (=> d!14230 (= (maxPrefix!36 thiss!19403 rules!2471 input!2238) lt!16345)))

(declare-fun b!78176 () Bool)

(declare-fun res!40848 () Bool)

(assert (=> b!78176 (=> (not res!40848) (not e!43744))))

(declare-fun size!1204 (List!1378) Int)

(assert (=> b!78176 (= res!40848 (< (size!1204 (_2!894 (get!339 lt!16345))) (size!1204 input!2238)))))

(declare-fun b!78177 () Bool)

(declare-fun contains!204 (List!1380 Rule!400) Bool)

(assert (=> b!78177 (= e!43744 (contains!204 rules!2471 (rule!779 (_1!894 (get!339 lt!16345)))))))

(declare-fun b!78178 () Bool)

(assert (=> b!78178 (= e!43745 call!3674)))

(declare-fun b!78179 () Bool)

(assert (=> b!78179 (= e!43746 e!43744)))

(declare-fun res!40844 () Bool)

(assert (=> b!78179 (=> (not res!40844) (not e!43744))))

(declare-fun isDefined!24 (Option!105) Bool)

(assert (=> b!78179 (= res!40844 (isDefined!24 lt!16345))))

(declare-fun b!78180 () Bool)

(declare-fun res!40842 () Bool)

(assert (=> b!78180 (=> (not res!40842) (not e!43744))))

(assert (=> b!78180 (= res!40842 (= (++!125 (list!440 (charsOf!37 (_1!894 (get!339 lt!16345)))) (_2!894 (get!339 lt!16345))) input!2238))))

(declare-fun b!78181 () Bool)

(declare-fun res!40845 () Bool)

(assert (=> b!78181 (=> (not res!40845) (not e!43744))))

(assert (=> b!78181 (= res!40845 (= (list!440 (charsOf!37 (_1!894 (get!339 lt!16345)))) (originalCharacters!351 (_1!894 (get!339 lt!16345)))))))

(declare-fun b!78182 () Bool)

(declare-fun lt!16342 () Option!105)

(declare-fun lt!16344 () Option!105)

(assert (=> b!78182 (= e!43745 (ite (and (is-None!104 lt!16342) (is-None!104 lt!16344)) None!104 (ite (is-None!104 lt!16344) lt!16342 (ite (is-None!104 lt!16342) lt!16344 (ite (>= (size!1200 (_1!894 (v!12769 lt!16342))) (size!1200 (_1!894 (v!12769 lt!16344)))) lt!16342 lt!16344)))))))

(assert (=> b!78182 (= lt!16342 call!3674)))

(assert (=> b!78182 (= lt!16344 (maxPrefix!36 thiss!19403 (t!20195 rules!2471) input!2238))))

(assert (= (and d!14230 c!19988) b!78178))

(assert (= (and d!14230 (not c!19988)) b!78182))

(assert (= (or b!78178 b!78182) bm!3669))

(assert (= (and d!14230 (not res!40847)) b!78179))

(assert (= (and b!78179 res!40844) b!78181))

(assert (= (and b!78181 res!40845) b!78176))

(assert (= (and b!78176 res!40848) b!78180))

(assert (= (and b!78180 res!40842) b!78174))

(assert (= (and b!78174 res!40846) b!78175))

(assert (= (and b!78175 res!40843) b!78177))

(declare-fun m!51476 () Bool)

(assert (=> b!78182 m!51476))

(declare-fun m!51478 () Bool)

(assert (=> b!78176 m!51478))

(declare-fun m!51480 () Bool)

(assert (=> b!78176 m!51480))

(declare-fun m!51482 () Bool)

(assert (=> b!78176 m!51482))

(assert (=> b!78180 m!51478))

(declare-fun m!51484 () Bool)

(assert (=> b!78180 m!51484))

(assert (=> b!78180 m!51484))

(declare-fun m!51486 () Bool)

(assert (=> b!78180 m!51486))

(assert (=> b!78180 m!51486))

(declare-fun m!51488 () Bool)

(assert (=> b!78180 m!51488))

(declare-fun m!51490 () Bool)

(assert (=> d!14230 m!51490))

(declare-fun m!51492 () Bool)

(assert (=> d!14230 m!51492))

(declare-fun m!51494 () Bool)

(assert (=> d!14230 m!51494))

(assert (=> d!14230 m!51272))

(assert (=> b!78181 m!51478))

(assert (=> b!78181 m!51484))

(assert (=> b!78181 m!51484))

(assert (=> b!78181 m!51486))

(declare-fun m!51496 () Bool)

(assert (=> bm!3669 m!51496))

(assert (=> b!78174 m!51478))

(declare-fun m!51498 () Bool)

(assert (=> b!78174 m!51498))

(assert (=> b!78174 m!51498))

(declare-fun m!51500 () Bool)

(assert (=> b!78174 m!51500))

(assert (=> b!78177 m!51478))

(declare-fun m!51502 () Bool)

(assert (=> b!78177 m!51502))

(assert (=> b!78175 m!51478))

(assert (=> b!78175 m!51484))

(assert (=> b!78175 m!51484))

(assert (=> b!78175 m!51486))

(assert (=> b!78175 m!51486))

(declare-fun m!51504 () Bool)

(assert (=> b!78175 m!51504))

(declare-fun m!51506 () Bool)

(assert (=> b!78179 m!51506))

(assert (=> b!78060 d!14230))

(declare-fun d!14234 () Bool)

(assert (=> d!14234 (= (list!440 (print!31 thiss!19403 (_1!893 lt!16247))) (list!444 (c!19972 (print!31 thiss!19403 (_1!893 lt!16247)))))))

(declare-fun bs!8116 () Bool)

(assert (= bs!8116 d!14234))

(declare-fun m!51508 () Bool)

(assert (=> bs!8116 m!51508))

(assert (=> b!78060 d!14234))

(declare-fun d!14236 () Bool)

(declare-fun lt!16352 () tuple2!1372)

(assert (=> d!14236 (= (tuple2!1377 (list!441 (_1!893 lt!16352)) (list!440 (_2!893 lt!16352))) (tuple2!1377 (tail!109 lt!16253) lt!16249))))

(assert (=> d!14236 (= lt!16352 (lex!100 thiss!19403 rules!2471 (seqFromList!112 (_2!894 (get!339 (maxPrefix!36 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!16351 () Unit!837)

(declare-fun choose!1276 (LexerInterface!192 List!1380 List!1378 List!1381 List!1378) Unit!837)

(assert (=> d!14236 (= lt!16351 (choose!1276 thiss!19403 rules!2471 input!2238 lt!16253 lt!16249))))

(assert (=> d!14236 (rulesInvariant!186 thiss!19403 rules!2471)))

(assert (=> d!14236 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!11 thiss!19403 rules!2471 input!2238 lt!16253 lt!16249) lt!16351)))

(declare-fun bs!8117 () Bool)

(assert (= bs!8117 d!14236))

(declare-fun m!51510 () Bool)

(assert (=> bs!8117 m!51510))

(declare-fun m!51512 () Bool)

(assert (=> bs!8117 m!51512))

(declare-fun m!51514 () Bool)

(assert (=> bs!8117 m!51514))

(assert (=> bs!8117 m!51274))

(declare-fun m!51516 () Bool)

(assert (=> bs!8117 m!51516))

(assert (=> bs!8117 m!51276))

(assert (=> bs!8117 m!51278))

(assert (=> bs!8117 m!51512))

(declare-fun m!51518 () Bool)

(assert (=> bs!8117 m!51518))

(assert (=> bs!8117 m!51248))

(assert (=> bs!8117 m!51276))

(assert (=> b!78060 d!14236))

(declare-fun d!14238 () Bool)

(assert (=> d!14238 true))

(declare-fun lt!16365 () Bool)

(declare-fun lambda!1437 () Int)

(declare-fun forall!186 (List!1380 Int) Bool)

(assert (=> d!14238 (= lt!16365 (forall!186 rules!2471 lambda!1437))))

(declare-fun e!43772 () Bool)

(assert (=> d!14238 (= lt!16365 e!43772)))

(declare-fun res!40873 () Bool)

(assert (=> d!14238 (=> res!40873 e!43772)))

(assert (=> d!14238 (= res!40873 (not (is-Cons!1374 rules!2471)))))

(assert (=> d!14238 (= (rulesValidInductive!33 thiss!19403 rules!2471) lt!16365)))

(declare-fun b!78221 () Bool)

(declare-fun e!43771 () Bool)

(assert (=> b!78221 (= e!43772 e!43771)))

(declare-fun res!40874 () Bool)

(assert (=> b!78221 (=> (not res!40874) (not e!43771))))

(declare-fun ruleValid!18 (LexerInterface!192 Rule!400) Bool)

(assert (=> b!78221 (= res!40874 (ruleValid!18 thiss!19403 (h!6771 rules!2471)))))

(declare-fun b!78222 () Bool)

(assert (=> b!78222 (= e!43771 (rulesValidInductive!33 thiss!19403 (t!20195 rules!2471)))))

(assert (= (and d!14238 (not res!40873)) b!78221))

(assert (= (and b!78221 res!40874) b!78222))

(declare-fun m!51572 () Bool)

(assert (=> d!14238 m!51572))

(declare-fun m!51574 () Bool)

(assert (=> b!78221 m!51574))

(declare-fun m!51576 () Bool)

(assert (=> b!78222 m!51576))

(assert (=> b!78060 d!14238))

(declare-fun d!14256 () Bool)

(assert (=> d!14256 (= (list!441 (_1!893 lt!16247)) (list!445 (c!19974 (_1!893 lt!16247))))))

(declare-fun bs!8121 () Bool)

(assert (= bs!8121 d!14256))

(declare-fun m!51578 () Bool)

(assert (=> bs!8121 m!51578))

(assert (=> b!78060 d!14256))

(declare-fun d!14258 () Bool)

(assert (=> d!14258 (= (list!440 (charsOf!37 (_1!894 lt!16252))) (list!444 (c!19972 (charsOf!37 (_1!894 lt!16252)))))))

(declare-fun bs!8122 () Bool)

(assert (= bs!8122 d!14258))

(declare-fun m!51580 () Bool)

(assert (=> bs!8122 m!51580))

(assert (=> b!78060 d!14258))

(declare-fun d!14260 () Bool)

(assert (=> d!14260 (= (list!441 (_1!893 lt!16243)) (list!441 (prepend!53 (seqFromList!113 (t!20196 lt!16253)) (h!6772 lt!16253))))))

(declare-fun lt!16368 () Unit!837)

(declare-fun choose!1277 (Token!360 List!1381 BalanceConc!810) Unit!837)

(assert (=> d!14260 (= lt!16368 (choose!1277 (h!6772 lt!16253) (t!20196 lt!16253) (_1!893 lt!16243)))))

(declare-fun $colon$colon!17 (List!1381 Token!360) List!1381)

(assert (=> d!14260 (= (list!441 (_1!893 lt!16243)) (list!441 (seqFromList!113 ($colon$colon!17 (t!20196 lt!16253) (h!6772 lt!16253)))))))

(assert (=> d!14260 (= (seqFromListBHdTlConstructive!23 (h!6772 lt!16253) (t!20196 lt!16253) (_1!893 lt!16243)) lt!16368)))

(declare-fun bs!8123 () Bool)

(assert (= bs!8123 d!14260))

(assert (=> bs!8123 m!51264))

(assert (=> bs!8123 m!51266))

(declare-fun m!51582 () Bool)

(assert (=> bs!8123 m!51582))

(declare-fun m!51584 () Bool)

(assert (=> bs!8123 m!51584))

(assert (=> bs!8123 m!51584))

(declare-fun m!51586 () Bool)

(assert (=> bs!8123 m!51586))

(declare-fun m!51588 () Bool)

(assert (=> bs!8123 m!51588))

(assert (=> bs!8123 m!51266))

(assert (=> bs!8123 m!51280))

(assert (=> bs!8123 m!51582))

(assert (=> bs!8123 m!51292))

(assert (=> bs!8123 m!51264))

(assert (=> b!78060 d!14260))

(declare-fun d!14262 () Bool)

(declare-fun fromListB!38 (List!1378) BalanceConc!808)

(assert (=> d!14262 (= (seqFromList!112 (_2!894 lt!16252)) (fromListB!38 (_2!894 lt!16252)))))

(declare-fun bs!8124 () Bool)

(assert (= bs!8124 d!14262))

(declare-fun m!51590 () Bool)

(assert (=> bs!8124 m!51590))

(assert (=> b!78060 d!14262))

(declare-fun d!14264 () Bool)

(declare-fun lt!16371 () BalanceConc!808)

(assert (=> d!14264 (= (list!440 lt!16371) (originalCharacters!351 (_1!894 lt!16252)))))

(declare-fun dynLambda!327 (Int TokenValue!290) BalanceConc!808)

(assert (=> d!14264 (= lt!16371 (dynLambda!327 (toChars!670 (transformation!300 (rule!779 (_1!894 lt!16252)))) (value!11447 (_1!894 lt!16252))))))

(assert (=> d!14264 (= (charsOf!37 (_1!894 lt!16252)) lt!16371)))

(declare-fun b_lambda!883 () Bool)

(assert (=> (not b_lambda!883) (not d!14264)))

(declare-fun tb!2405 () Bool)

(declare-fun t!20204 () Bool)

(assert (=> (and b!78058 (= (toChars!670 (transformation!300 (h!6771 rules!2471))) (toChars!670 (transformation!300 (rule!779 (_1!894 lt!16252))))) t!20204) tb!2405))

(declare-fun b!78229 () Bool)

(declare-fun e!43775 () Bool)

(declare-fun tp!49966 () Bool)

(declare-fun inv!1738 (Conc!402) Bool)

(assert (=> b!78229 (= e!43775 (and (inv!1738 (c!19972 (dynLambda!327 (toChars!670 (transformation!300 (rule!779 (_1!894 lt!16252)))) (value!11447 (_1!894 lt!16252))))) tp!49966))))

(declare-fun result!3440 () Bool)

(declare-fun inv!1739 (BalanceConc!808) Bool)

(assert (=> tb!2405 (= result!3440 (and (inv!1739 (dynLambda!327 (toChars!670 (transformation!300 (rule!779 (_1!894 lt!16252)))) (value!11447 (_1!894 lt!16252)))) e!43775))))

(assert (= tb!2405 b!78229))

(declare-fun m!51592 () Bool)

(assert (=> b!78229 m!51592))

(declare-fun m!51594 () Bool)

(assert (=> tb!2405 m!51594))

(assert (=> d!14264 t!20204))

(declare-fun b_and!3585 () Bool)

(assert (= b_and!3577 (and (=> t!20204 result!3440) b_and!3585)))

(declare-fun m!51596 () Bool)

(assert (=> d!14264 m!51596))

(declare-fun m!51598 () Bool)

(assert (=> d!14264 m!51598))

(assert (=> b!78060 d!14264))

(declare-fun b!78239 () Bool)

(declare-fun e!43781 () List!1378)

(assert (=> b!78239 (= e!43781 (Cons!1372 (h!6769 lt!16250) (++!125 (t!20193 lt!16250) lt!16248)))))

(declare-fun e!43780 () Bool)

(declare-fun lt!16374 () List!1378)

(declare-fun b!78241 () Bool)

(assert (=> b!78241 (= e!43780 (or (not (= lt!16248 Nil!1372)) (= lt!16374 lt!16250)))))

(declare-fun b!78240 () Bool)

(declare-fun res!40879 () Bool)

(assert (=> b!78240 (=> (not res!40879) (not e!43780))))

(assert (=> b!78240 (= res!40879 (= (size!1204 lt!16374) (+ (size!1204 lt!16250) (size!1204 lt!16248))))))

(declare-fun d!14266 () Bool)

(assert (=> d!14266 e!43780))

(declare-fun res!40880 () Bool)

(assert (=> d!14266 (=> (not res!40880) (not e!43780))))

(declare-fun content!66 (List!1378) (Set C!1658))

(assert (=> d!14266 (= res!40880 (= (content!66 lt!16374) (set.union (content!66 lt!16250) (content!66 lt!16248))))))

(assert (=> d!14266 (= lt!16374 e!43781)))

(declare-fun c!19998 () Bool)

(assert (=> d!14266 (= c!19998 (is-Nil!1372 lt!16250))))

(assert (=> d!14266 (= (++!125 lt!16250 lt!16248) lt!16374)))

(declare-fun b!78238 () Bool)

(assert (=> b!78238 (= e!43781 lt!16248)))

(assert (= (and d!14266 c!19998) b!78238))

(assert (= (and d!14266 (not c!19998)) b!78239))

(assert (= (and d!14266 res!40880) b!78240))

(assert (= (and b!78240 res!40879) b!78241))

(declare-fun m!51600 () Bool)

(assert (=> b!78239 m!51600))

(declare-fun m!51602 () Bool)

(assert (=> b!78240 m!51602))

(declare-fun m!51604 () Bool)

(assert (=> b!78240 m!51604))

(declare-fun m!51606 () Bool)

(assert (=> b!78240 m!51606))

(declare-fun m!51608 () Bool)

(assert (=> d!14266 m!51608))

(declare-fun m!51610 () Bool)

(assert (=> d!14266 m!51610))

(declare-fun m!51612 () Bool)

(assert (=> d!14266 m!51612))

(assert (=> b!78060 d!14266))

(declare-fun d!14268 () Bool)

(assert (=> d!14268 (= (get!339 (maxPrefix!36 thiss!19403 rules!2471 input!2238)) (v!12769 (maxPrefix!36 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!78060 d!14268))

(declare-fun d!14270 () Bool)

(declare-fun lt!16377 () Bool)

(declare-fun isEmpty!434 (List!1378) Bool)

(assert (=> d!14270 (= lt!16377 (isEmpty!434 (list!440 (_2!893 lt!16243))))))

(declare-fun isEmpty!435 (Conc!402) Bool)

(assert (=> d!14270 (= lt!16377 (isEmpty!435 (c!19972 (_2!893 lt!16243))))))

(assert (=> d!14270 (= (isEmpty!428 (_2!893 lt!16243)) lt!16377)))

(declare-fun bs!8125 () Bool)

(assert (= bs!8125 d!14270))

(assert (=> bs!8125 m!51282))

(assert (=> bs!8125 m!51282))

(declare-fun m!51614 () Bool)

(assert (=> bs!8125 m!51614))

(declare-fun m!51616 () Bool)

(assert (=> bs!8125 m!51616))

(assert (=> b!78059 d!14270))

(declare-fun b!78242 () Bool)

(declare-fun e!43782 () Bool)

(declare-fun e!43783 () Bool)

(assert (=> b!78242 (= e!43782 e!43783)))

(declare-fun res!40883 () Bool)

(declare-fun lt!16378 () tuple2!1372)

(assert (=> b!78242 (= res!40883 (< (size!1202 (_2!893 lt!16378)) (size!1202 (seqFromList!112 input!2238))))))

(assert (=> b!78242 (=> (not res!40883) (not e!43783))))

(declare-fun d!14272 () Bool)

(declare-fun e!43784 () Bool)

(assert (=> d!14272 e!43784))

(declare-fun res!40882 () Bool)

(assert (=> d!14272 (=> (not res!40882) (not e!43784))))

(assert (=> d!14272 (= res!40882 e!43782)))

(declare-fun c!19999 () Bool)

(assert (=> d!14272 (= c!19999 (> (size!1203 (_1!893 lt!16378)) 0))))

(assert (=> d!14272 (= lt!16378 (lexTailRecV2!36 thiss!19403 rules!2471 (seqFromList!112 input!2238) (BalanceConc!809 Empty!402) (seqFromList!112 input!2238) (BalanceConc!811 Empty!403)))))

(assert (=> d!14272 (= (lex!100 thiss!19403 rules!2471 (seqFromList!112 input!2238)) lt!16378)))

(declare-fun b!78243 () Bool)

(assert (=> b!78243 (= e!43783 (not (isEmpty!432 (_1!893 lt!16378))))))

(declare-fun b!78244 () Bool)

(assert (=> b!78244 (= e!43782 (= (_2!893 lt!16378) (seqFromList!112 input!2238)))))

(declare-fun b!78245 () Bool)

(declare-fun res!40881 () Bool)

(assert (=> b!78245 (=> (not res!40881) (not e!43784))))

(assert (=> b!78245 (= res!40881 (= (list!441 (_1!893 lt!16378)) (_1!895 (lexList!39 thiss!19403 rules!2471 (list!440 (seqFromList!112 input!2238))))))))

(declare-fun b!78246 () Bool)

(assert (=> b!78246 (= e!43784 (= (list!440 (_2!893 lt!16378)) (_2!895 (lexList!39 thiss!19403 rules!2471 (list!440 (seqFromList!112 input!2238))))))))

(assert (= (and d!14272 c!19999) b!78242))

(assert (= (and d!14272 (not c!19999)) b!78244))

(assert (= (and b!78242 res!40883) b!78243))

(assert (= (and d!14272 res!40882) b!78245))

(assert (= (and b!78245 res!40881) b!78246))

(declare-fun m!51618 () Bool)

(assert (=> b!78242 m!51618))

(assert (=> b!78242 m!51244))

(declare-fun m!51620 () Bool)

(assert (=> b!78242 m!51620))

(declare-fun m!51622 () Bool)

(assert (=> b!78245 m!51622))

(assert (=> b!78245 m!51244))

(declare-fun m!51624 () Bool)

(assert (=> b!78245 m!51624))

(assert (=> b!78245 m!51624))

(declare-fun m!51626 () Bool)

(assert (=> b!78245 m!51626))

(declare-fun m!51628 () Bool)

(assert (=> b!78246 m!51628))

(assert (=> b!78246 m!51244))

(assert (=> b!78246 m!51624))

(assert (=> b!78246 m!51624))

(assert (=> b!78246 m!51626))

(declare-fun m!51630 () Bool)

(assert (=> d!14272 m!51630))

(assert (=> d!14272 m!51244))

(assert (=> d!14272 m!51244))

(declare-fun m!51632 () Bool)

(assert (=> d!14272 m!51632))

(declare-fun m!51634 () Bool)

(assert (=> b!78243 m!51634))

(assert (=> b!78059 d!14272))

(declare-fun d!14274 () Bool)

(assert (=> d!14274 (= (seqFromList!112 input!2238) (fromListB!38 input!2238))))

(declare-fun bs!8126 () Bool)

(assert (= bs!8126 d!14274))

(declare-fun m!51636 () Bool)

(assert (=> bs!8126 m!51636))

(assert (=> b!78059 d!14274))

(declare-fun d!14276 () Bool)

(assert (=> d!14276 (= (isEmpty!429 rules!2471) (is-Nil!1374 rules!2471))))

(assert (=> b!78063 d!14276))

(declare-fun d!14278 () Bool)

(declare-fun res!40886 () Bool)

(declare-fun e!43787 () Bool)

(assert (=> d!14278 (=> (not res!40886) (not e!43787))))

(declare-fun rulesValid!58 (LexerInterface!192 List!1380) Bool)

(assert (=> d!14278 (= res!40886 (rulesValid!58 thiss!19403 rules!2471))))

(assert (=> d!14278 (= (rulesInvariant!186 thiss!19403 rules!2471) e!43787)))

(declare-fun b!78249 () Bool)

(declare-datatypes ((List!1386 0))(
  ( (Nil!1380) (Cons!1380 (h!6777 String!1843) (t!20207 List!1386)) )
))
(declare-fun noDuplicateTag!58 (LexerInterface!192 List!1380 List!1386) Bool)

(assert (=> b!78249 (= e!43787 (noDuplicateTag!58 thiss!19403 rules!2471 Nil!1380))))

(assert (= (and d!14278 res!40886) b!78249))

(declare-fun m!51638 () Bool)

(assert (=> d!14278 m!51638))

(declare-fun m!51640 () Bool)

(assert (=> b!78249 m!51640))

(assert (=> b!78057 d!14278))

(declare-fun d!14280 () Bool)

(assert (=> d!14280 (= (list!441 (_1!893 lt!16243)) (list!445 (c!19974 (_1!893 lt!16243))))))

(declare-fun bs!8127 () Bool)

(assert (= bs!8127 d!14280))

(declare-fun m!51642 () Bool)

(assert (=> bs!8127 m!51642))

(assert (=> b!78062 d!14280))

(declare-fun b!78262 () Bool)

(declare-fun e!43790 () Bool)

(declare-fun tp!49978 () Bool)

(assert (=> b!78262 (= e!43790 tp!49978)))

(declare-fun b!78261 () Bool)

(declare-fun tp!49977 () Bool)

(declare-fun tp!49980 () Bool)

(assert (=> b!78261 (= e!43790 (and tp!49977 tp!49980))))

(declare-fun b!78260 () Bool)

(assert (=> b!78260 (= e!43790 tp_is_empty!659)))

(assert (=> b!78061 (= tp!49944 e!43790)))

(declare-fun b!78263 () Bool)

(declare-fun tp!49981 () Bool)

(declare-fun tp!49979 () Bool)

(assert (=> b!78263 (= e!43790 (and tp!49981 tp!49979))))

(assert (= (and b!78061 (is-ElementMatch!368 (regex!300 (h!6771 rules!2471)))) b!78260))

(assert (= (and b!78061 (is-Concat!658 (regex!300 (h!6771 rules!2471)))) b!78261))

(assert (= (and b!78061 (is-Star!368 (regex!300 (h!6771 rules!2471)))) b!78262))

(assert (= (and b!78061 (is-Union!368 (regex!300 (h!6771 rules!2471)))) b!78263))

(declare-fun b!78274 () Bool)

(declare-fun b_free!2509 () Bool)

(declare-fun b_next!2509 () Bool)

(assert (=> b!78274 (= b_free!2509 (not b_next!2509))))

(declare-fun tp!49992 () Bool)

(declare-fun b_and!3587 () Bool)

(assert (=> b!78274 (= tp!49992 b_and!3587)))

(declare-fun b_free!2511 () Bool)

(declare-fun b_next!2511 () Bool)

(assert (=> b!78274 (= b_free!2511 (not b_next!2511))))

(declare-fun t!20206 () Bool)

(declare-fun tb!2407 () Bool)

(assert (=> (and b!78274 (= (toChars!670 (transformation!300 (h!6771 (t!20195 rules!2471)))) (toChars!670 (transformation!300 (rule!779 (_1!894 lt!16252))))) t!20206) tb!2407))

(declare-fun result!3448 () Bool)

(assert (= result!3448 result!3440))

(assert (=> d!14264 t!20206))

(declare-fun b_and!3589 () Bool)

(declare-fun tp!49991 () Bool)

(assert (=> b!78274 (= tp!49991 (and (=> t!20206 result!3448) b_and!3589))))

(declare-fun e!43802 () Bool)

(assert (=> b!78274 (= e!43802 (and tp!49992 tp!49991))))

(declare-fun b!78273 () Bool)

(declare-fun tp!49990 () Bool)

(declare-fun e!43800 () Bool)

(assert (=> b!78273 (= e!43800 (and tp!49990 (inv!1733 (tag!478 (h!6771 (t!20195 rules!2471)))) (inv!1736 (transformation!300 (h!6771 (t!20195 rules!2471)))) e!43802))))

(declare-fun b!78272 () Bool)

(declare-fun e!43801 () Bool)

(declare-fun tp!49993 () Bool)

(assert (=> b!78272 (= e!43801 (and e!43800 tp!49993))))

(assert (=> b!78065 (= tp!49942 e!43801)))

(assert (= b!78273 b!78274))

(assert (= b!78272 b!78273))

(assert (= (and b!78065 (is-Cons!1374 (t!20195 rules!2471))) b!78272))

(declare-fun m!51644 () Bool)

(assert (=> b!78273 m!51644))

(declare-fun m!51646 () Bool)

(assert (=> b!78273 m!51646))

(declare-fun b!78279 () Bool)

(declare-fun e!43805 () Bool)

(declare-fun tp!49996 () Bool)

(assert (=> b!78279 (= e!43805 (and tp_is_empty!659 tp!49996))))

(assert (=> b!78064 (= tp!49941 e!43805)))

(assert (= (and b!78064 (is-Cons!1372 (t!20193 input!2238))) b!78279))

(push 1)

(assert (not tb!2405))

(assert (not b!78272))

(assert (not b!78148))

(assert (not d!14210))

(assert (not b_next!2501))

(assert (not b!78151))

(assert (not b!78221))

(assert (not d!14230))

(assert (not b!78180))

(assert (not b!78262))

(assert (not b!78249))

(assert (not d!14272))

(assert (not b!78181))

(assert (not b!78242))

(assert (not b!78261))

(assert tp_is_empty!659)

(assert (not b!78179))

(assert (not b!78095))

(assert (not b!78263))

(assert (not d!14236))

(assert (not b!78240))

(assert (not d!14196))

(assert (not b!78182))

(assert (not d!14226))

(assert (not b!78246))

(assert (not d!14258))

(assert (not b_next!2503))

(assert (not b!78239))

(assert (not d!14238))

(assert b_and!3589)

(assert (not d!14234))

(assert (not b!78229))

(assert (not d!14212))

(assert (not b!78176))

(assert (not b!78279))

(assert (not b!78245))

(assert (not d!14216))

(assert (not d!14278))

(assert (not b!78243))

(assert (not b!78174))

(assert (not d!14194))

(assert (not d!14264))

(assert (not b_next!2509))

(assert (not d!14280))

(assert (not d!14190))

(assert (not bm!3669))

(assert (not d!14260))

(assert (not d!14192))

(assert (not b!78145))

(assert (not d!14188))

(assert b_and!3575)

(assert b_and!3585)

(assert b_and!3587)

(assert (not b!78144))

(assert (not b!78273))

(assert (not b!78222))

(assert (not d!14256))

(assert (not b_lambda!883))

(assert (not d!14274))

(assert (not d!14270))

(assert (not d!14262))

(assert (not d!14266))

(assert (not b!78177))

(assert (not b_next!2511))

(assert (not b!78147))

(assert (not b!78175))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2503))

(assert b_and!3589)

(assert (not b_next!2501))

(assert (not b_next!2509))

(assert b_and!3587)

(assert (not b_next!2511))

(assert b_and!3575)

(assert b_and!3585)

(check-sat)

(pop 1)

