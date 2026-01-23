; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6386 () Bool)

(assert start!6386)

(declare-fun b!78363 () Bool)

(declare-fun b_free!2521 () Bool)

(declare-fun b_next!2521 () Bool)

(assert (=> b!78363 (= b_free!2521 (not b_next!2521))))

(declare-fun tp!50055 () Bool)

(declare-fun b_and!3599 () Bool)

(assert (=> b!78363 (= tp!50055 b_and!3599)))

(declare-fun b_free!2523 () Bool)

(declare-fun b_next!2523 () Bool)

(assert (=> b!78363 (= b_free!2523 (not b_next!2523))))

(declare-fun tp!50054 () Bool)

(declare-fun b_and!3601 () Bool)

(assert (=> b!78363 (= tp!50054 b_and!3601)))

(declare-fun b!78360 () Bool)

(declare-fun e!43871 () Bool)

(declare-fun e!43868 () Bool)

(assert (=> b!78360 (= e!43871 e!43868)))

(declare-fun res!40917 () Bool)

(assert (=> b!78360 (=> (not res!40917) (not e!43868))))

(declare-fun lt!16465 () Bool)

(declare-datatypes ((C!1664 0))(
  ( (C!1665 (val!439 Int)) )
))
(declare-datatypes ((List!1392 0))(
  ( (Nil!1386) (Cons!1386 (h!6783 C!1664) (t!20215 List!1392)) )
))
(declare-datatypes ((IArray!817 0))(
  ( (IArray!818 (innerList!466 List!1392)) )
))
(declare-datatypes ((Conc!408 0))(
  ( (Node!408 (left!1052 Conc!408) (right!1382 Conc!408) (csize!1046 Int) (cheight!619 Int)) (Leaf!695 (xs!2987 IArray!817) (csize!1047 Int)) (Empty!408) )
))
(declare-datatypes ((BalanceConc!820 0))(
  ( (BalanceConc!821 (c!20006 Conc!408)) )
))
(declare-datatypes ((String!1856 0))(
  ( (String!1857 (value!11505 String)) )
))
(declare-datatypes ((List!1393 0))(
  ( (Nil!1387) (Cons!1387 (h!6784 (_ BitVec 16)) (t!20216 List!1393)) )
))
(declare-datatypes ((TokenValue!293 0))(
  ( (FloatLiteralValue!586 (text!2496 List!1393)) (TokenValueExt!292 (__x!1681 Int)) (Broken!1465 (value!11506 List!1393)) (Object!298) (End!293) (Def!293) (Underscore!293) (Match!293) (Else!293) (Error!293) (Case!293) (If!293) (Extends!293) (Abstract!293) (Class!293) (Val!293) (DelimiterValue!586 (del!353 List!1393)) (KeywordValue!299 (value!11507 List!1393)) (CommentValue!586 (value!11508 List!1393)) (WhitespaceValue!586 (value!11509 List!1393)) (IndentationValue!293 (value!11510 List!1393)) (String!1858) (Int32!293) (Broken!1466 (value!11511 List!1393)) (Boolean!294) (Unit!845) (OperatorValue!296 (op!353 List!1393)) (IdentifierValue!586 (value!11512 List!1393)) (IdentifierValue!587 (value!11513 List!1393)) (WhitespaceValue!587 (value!11514 List!1393)) (True!586) (False!586) (Broken!1467 (value!11515 List!1393)) (Broken!1468 (value!11516 List!1393)) (True!587) (RightBrace!293) (RightBracket!293) (Colon!293) (Null!293) (Comma!293) (LeftBracket!293) (False!587) (LeftBrace!293) (ImaginaryLiteralValue!293 (text!2497 List!1393)) (StringLiteralValue!879 (value!11517 List!1393)) (EOFValue!293 (value!11518 List!1393)) (IdentValue!293 (value!11519 List!1393)) (DelimiterValue!587 (value!11520 List!1393)) (DedentValue!293 (value!11521 List!1393)) (NewLineValue!293 (value!11522 List!1393)) (IntegerValue!879 (value!11523 (_ BitVec 32)) (text!2498 List!1393)) (IntegerValue!880 (value!11524 Int) (text!2499 List!1393)) (Times!293) (Or!293) (Equal!293) (Minus!293) (Broken!1469 (value!11525 List!1393)) (And!293) (Div!293) (LessEqual!293) (Mod!293) (Concat!664) (Not!293) (Plus!293) (SpaceValue!293 (value!11526 List!1393)) (IntegerValue!881 (value!11527 Int) (text!2500 List!1393)) (StringLiteralValue!880 (text!2501 List!1393)) (FloatLiteralValue!587 (text!2502 List!1393)) (BytesLiteralValue!293 (value!11528 List!1393)) (CommentValue!587 (value!11529 List!1393)) (StringLiteralValue!881 (value!11530 List!1393)) (ErrorTokenValue!293 (msg!354 List!1393)) )
))
(declare-datatypes ((Regex!371 0))(
  ( (ElementMatch!371 (c!20007 C!1664)) (Concat!665 (regOne!1254 Regex!371) (regTwo!1254 Regex!371)) (EmptyExpr!371) (Star!371 (reg!700 Regex!371)) (EmptyLang!371) (Union!371 (regOne!1255 Regex!371) (regTwo!1255 Regex!371)) )
))
(declare-datatypes ((TokenValueInjection!410 0))(
  ( (TokenValueInjection!411 (toValue!814 Int) (toChars!673 Int)) )
))
(declare-datatypes ((Rule!406 0))(
  ( (Rule!407 (regex!303 Regex!371) (tag!481 String!1856) (isSeparator!303 Bool) (transformation!303 TokenValueInjection!410)) )
))
(declare-datatypes ((Token!366 0))(
  ( (Token!367 (value!11531 TokenValue!293) (rule!782 Rule!406) (size!1207 Int) (originalCharacters!354 List!1392)) )
))
(declare-datatypes ((List!1394 0))(
  ( (Nil!1388) (Cons!1388 (h!6785 Token!366) (t!20217 List!1394)) )
))
(declare-fun lt!16469 () List!1394)

(get-info :version)

(assert (=> b!78360 (= res!40917 (and (or lt!16465 (not ((_ is Nil!1388) (t!20217 lt!16469)))) (not lt!16465)))))

(assert (=> b!78360 (= lt!16465 (not ((_ is Cons!1388) lt!16469)))))

(declare-datatypes ((IArray!819 0))(
  ( (IArray!820 (innerList!467 List!1394)) )
))
(declare-datatypes ((Conc!409 0))(
  ( (Node!409 (left!1053 Conc!409) (right!1383 Conc!409) (csize!1048 Int) (cheight!620 Int)) (Leaf!696 (xs!2988 IArray!819) (csize!1049 Int)) (Empty!409) )
))
(declare-datatypes ((BalanceConc!822 0))(
  ( (BalanceConc!823 (c!20008 Conc!409)) )
))
(declare-datatypes ((tuple2!1390 0))(
  ( (tuple2!1391 (_1!902 BalanceConc!822) (_2!902 BalanceConc!820)) )
))
(declare-fun lt!16472 () tuple2!1390)

(declare-fun list!449 (BalanceConc!822) List!1394)

(assert (=> b!78360 (= lt!16469 (list!449 (_1!902 lt!16472)))))

(declare-fun b!78361 () Bool)

(declare-fun res!40919 () Bool)

(declare-fun e!43867 () Bool)

(assert (=> b!78361 (=> (not res!40919) (not e!43867))))

(declare-datatypes ((List!1395 0))(
  ( (Nil!1389) (Cons!1389 (h!6786 Rule!406) (t!20218 List!1395)) )
))
(declare-fun rules!2471 () List!1395)

(declare-fun isEmpty!439 (List!1395) Bool)

(assert (=> b!78361 (= res!40919 (not (isEmpty!439 rules!2471)))))

(declare-fun b!78362 () Bool)

(assert (=> b!78362 (= e!43867 e!43871)))

(declare-fun res!40916 () Bool)

(assert (=> b!78362 (=> (not res!40916) (not e!43871))))

(declare-fun isEmpty!440 (BalanceConc!820) Bool)

(assert (=> b!78362 (= res!40916 (not (isEmpty!440 (_2!902 lt!16472))))))

(declare-datatypes ((LexerInterface!195 0))(
  ( (LexerInterfaceExt!192 (__x!1682 Int)) (Lexer!193) )
))
(declare-fun thiss!19403 () LexerInterface!195)

(declare-fun input!2238 () List!1392)

(declare-fun lex!103 (LexerInterface!195 List!1395 BalanceConc!820) tuple2!1390)

(declare-fun seqFromList!118 (List!1392) BalanceConc!820)

(assert (=> b!78362 (= lt!16472 (lex!103 thiss!19403 rules!2471 (seqFromList!118 input!2238)))))

(declare-fun e!43869 () Bool)

(assert (=> b!78363 (= e!43869 (and tp!50055 tp!50054))))

(declare-fun b!78364 () Bool)

(assert (=> b!78364 (= e!43868 (not true))))

(declare-fun lt!16471 () Bool)

(declare-fun rulesValidInductive!36 (LexerInterface!195 List!1395) Bool)

(assert (=> b!78364 (= lt!16471 (rulesValidInductive!36 thiss!19403 rules!2471))))

(declare-fun lt!16460 () List!1392)

(declare-datatypes ((tuple2!1392 0))(
  ( (tuple2!1393 (_1!903 Token!366) (_2!903 List!1392)) )
))
(declare-fun lt!16467 () tuple2!1392)

(declare-fun list!450 (BalanceConc!820) List!1392)

(declare-fun charsOf!40 (Token!366) BalanceConc!820)

(assert (=> b!78364 (= lt!16460 (list!450 (charsOf!40 (_1!903 lt!16467))))))

(declare-fun lt!16468 () List!1392)

(declare-fun lt!16466 () tuple2!1390)

(declare-fun lt!16463 () List!1392)

(declare-datatypes ((tuple2!1394 0))(
  ( (tuple2!1395 (_1!904 List!1394) (_2!904 List!1392)) )
))
(declare-fun tail!112 (List!1394) List!1394)

(assert (=> b!78364 (= (tuple2!1395 (list!449 (_1!902 lt!16466)) lt!16463) (tuple2!1395 (tail!112 lt!16469) lt!16468))))

(declare-datatypes ((Unit!846 0))(
  ( (Unit!847) )
))
(declare-fun lt!16464 () Unit!846)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!14 (LexerInterface!195 List!1395 List!1392 List!1394 List!1392) Unit!846)

(assert (=> b!78364 (= lt!16464 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!14 thiss!19403 rules!2471 input!2238 lt!16469 lt!16468))))

(assert (=> b!78364 (= lt!16468 (list!450 (_2!902 lt!16472)))))

(declare-fun lt!16461 () List!1392)

(declare-fun ++!128 (List!1392 List!1392) List!1392)

(assert (=> b!78364 (= (++!128 lt!16461 lt!16463) (_2!903 lt!16467))))

(assert (=> b!78364 (= lt!16463 (list!450 (_2!902 lt!16466)))))

(declare-fun print!34 (LexerInterface!195 BalanceConc!822) BalanceConc!820)

(assert (=> b!78364 (= lt!16461 (list!450 (print!34 thiss!19403 (_1!902 lt!16466))))))

(assert (=> b!78364 (= lt!16466 (lex!103 thiss!19403 rules!2471 (seqFromList!118 (_2!903 lt!16467))))))

(declare-fun lt!16462 () Unit!846)

(declare-fun theoremInvertFromString!18 (LexerInterface!195 List!1395 List!1392) Unit!846)

(assert (=> b!78364 (= lt!16462 (theoremInvertFromString!18 thiss!19403 rules!2471 (_2!903 lt!16467)))))

(declare-datatypes ((Option!108 0))(
  ( (None!107) (Some!107 (v!12776 tuple2!1392)) )
))
(declare-fun get!343 (Option!108) tuple2!1392)

(declare-fun maxPrefix!39 (LexerInterface!195 List!1395 List!1392) Option!108)

(assert (=> b!78364 (= lt!16467 (get!343 (maxPrefix!39 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!57 (BalanceConc!822 Token!366) BalanceConc!822)

(declare-fun seqFromList!119 (List!1394) BalanceConc!822)

(assert (=> b!78364 (= lt!16469 (list!449 (prepend!57 (seqFromList!119 (t!20217 lt!16469)) (h!6785 lt!16469))))))

(declare-fun lt!16470 () Unit!846)

(declare-fun seqFromListBHdTlConstructive!26 (Token!366 List!1394 BalanceConc!822) Unit!846)

(assert (=> b!78364 (= lt!16470 (seqFromListBHdTlConstructive!26 (h!6785 lt!16469) (t!20217 lt!16469) (_1!902 lt!16472)))))

(declare-fun tp!50052 () Bool)

(declare-fun b!78365 () Bool)

(declare-fun e!43874 () Bool)

(declare-fun inv!1742 (String!1856) Bool)

(declare-fun inv!1744 (TokenValueInjection!410) Bool)

(assert (=> b!78365 (= e!43874 (and tp!50052 (inv!1742 (tag!481 (h!6786 rules!2471))) (inv!1744 (transformation!303 (h!6786 rules!2471))) e!43869))))

(declare-fun b!78366 () Bool)

(declare-fun e!43870 () Bool)

(declare-fun tp_is_empty!665 () Bool)

(declare-fun tp!50056 () Bool)

(assert (=> b!78366 (= e!43870 (and tp_is_empty!665 tp!50056))))

(declare-fun b!78367 () Bool)

(declare-fun res!40915 () Bool)

(assert (=> b!78367 (=> (not res!40915) (not e!43867))))

(declare-fun rulesInvariant!189 (LexerInterface!195 List!1395) Bool)

(assert (=> b!78367 (= res!40915 (rulesInvariant!189 thiss!19403 rules!2471))))

(declare-fun res!40918 () Bool)

(assert (=> start!6386 (=> (not res!40918) (not e!43867))))

(assert (=> start!6386 (= res!40918 ((_ is Lexer!193) thiss!19403))))

(assert (=> start!6386 e!43867))

(assert (=> start!6386 true))

(declare-fun e!43872 () Bool)

(assert (=> start!6386 e!43872))

(assert (=> start!6386 e!43870))

(declare-fun b!78368 () Bool)

(declare-fun tp!50053 () Bool)

(assert (=> b!78368 (= e!43872 (and e!43874 tp!50053))))

(assert (= (and start!6386 res!40918) b!78361))

(assert (= (and b!78361 res!40919) b!78367))

(assert (= (and b!78367 res!40915) b!78362))

(assert (= (and b!78362 res!40916) b!78360))

(assert (= (and b!78360 res!40917) b!78364))

(assert (= b!78365 b!78363))

(assert (= b!78368 b!78365))

(assert (= (and start!6386 ((_ is Cons!1389) rules!2471)) b!78368))

(assert (= (and start!6386 ((_ is Cons!1386) input!2238)) b!78366))

(declare-fun m!51758 () Bool)

(assert (=> b!78364 m!51758))

(declare-fun m!51760 () Bool)

(assert (=> b!78364 m!51760))

(assert (=> b!78364 m!51758))

(declare-fun m!51762 () Bool)

(assert (=> b!78364 m!51762))

(declare-fun m!51764 () Bool)

(assert (=> b!78364 m!51764))

(declare-fun m!51766 () Bool)

(assert (=> b!78364 m!51766))

(declare-fun m!51768 () Bool)

(assert (=> b!78364 m!51768))

(declare-fun m!51770 () Bool)

(assert (=> b!78364 m!51770))

(declare-fun m!51772 () Bool)

(assert (=> b!78364 m!51772))

(declare-fun m!51774 () Bool)

(assert (=> b!78364 m!51774))

(assert (=> b!78364 m!51770))

(declare-fun m!51776 () Bool)

(assert (=> b!78364 m!51776))

(declare-fun m!51778 () Bool)

(assert (=> b!78364 m!51778))

(declare-fun m!51780 () Bool)

(assert (=> b!78364 m!51780))

(declare-fun m!51782 () Bool)

(assert (=> b!78364 m!51782))

(declare-fun m!51784 () Bool)

(assert (=> b!78364 m!51784))

(declare-fun m!51786 () Bool)

(assert (=> b!78364 m!51786))

(declare-fun m!51788 () Bool)

(assert (=> b!78364 m!51788))

(assert (=> b!78364 m!51772))

(declare-fun m!51790 () Bool)

(assert (=> b!78364 m!51790))

(assert (=> b!78364 m!51768))

(declare-fun m!51792 () Bool)

(assert (=> b!78364 m!51792))

(assert (=> b!78364 m!51786))

(declare-fun m!51794 () Bool)

(assert (=> b!78364 m!51794))

(assert (=> b!78364 m!51764))

(declare-fun m!51796 () Bool)

(assert (=> b!78364 m!51796))

(declare-fun m!51798 () Bool)

(assert (=> b!78362 m!51798))

(declare-fun m!51800 () Bool)

(assert (=> b!78362 m!51800))

(assert (=> b!78362 m!51800))

(declare-fun m!51802 () Bool)

(assert (=> b!78362 m!51802))

(declare-fun m!51804 () Bool)

(assert (=> b!78365 m!51804))

(declare-fun m!51806 () Bool)

(assert (=> b!78365 m!51806))

(declare-fun m!51808 () Bool)

(assert (=> b!78360 m!51808))

(declare-fun m!51810 () Bool)

(assert (=> b!78367 m!51810))

(declare-fun m!51812 () Bool)

(assert (=> b!78361 m!51812))

(check-sat (not b!78360) (not b!78365) b_and!3601 (not b_next!2521) (not b_next!2523) (not b!78367) (not b!78361) b_and!3599 (not b!78364) tp_is_empty!665 (not b!78366) (not b!78362) (not b!78368))
(check-sat b_and!3601 b_and!3599 (not b_next!2523) (not b_next!2521))
