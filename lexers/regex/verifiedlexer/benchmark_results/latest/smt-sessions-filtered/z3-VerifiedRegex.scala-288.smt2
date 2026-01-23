; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6618 () Bool)

(assert start!6618)

(declare-fun b!79369 () Bool)

(declare-fun b_free!2553 () Bool)

(declare-fun b_next!2553 () Bool)

(assert (=> b!79369 (= b_free!2553 (not b_next!2553))))

(declare-fun tp!50271 () Bool)

(declare-fun b_and!3651 () Bool)

(assert (=> b!79369 (= tp!50271 b_and!3651)))

(declare-fun b_free!2555 () Bool)

(declare-fun b_next!2555 () Bool)

(assert (=> b!79369 (= b_free!2555 (not b_next!2555))))

(declare-fun tp!50272 () Bool)

(declare-fun b_and!3653 () Bool)

(assert (=> b!79369 (= tp!50272 b_and!3653)))

(declare-fun b!79366 () Bool)

(declare-fun e!44458 () Bool)

(declare-fun e!44456 () Bool)

(declare-fun tp!50269 () Bool)

(assert (=> b!79366 (= e!44458 (and e!44456 tp!50269))))

(declare-fun b!79367 () Bool)

(declare-fun e!44462 () Bool)

(declare-fun e!44460 () Bool)

(assert (=> b!79367 (= e!44462 e!44460)))

(declare-fun res!41363 () Bool)

(assert (=> b!79367 (=> (not res!41363) (not e!44460))))

(declare-fun lt!17225 () Bool)

(declare-datatypes ((C!1672 0))(
  ( (C!1673 (val!443 Int)) )
))
(declare-datatypes ((List!1410 0))(
  ( (Nil!1404) (Cons!1404 (h!6801 C!1672) (t!20281 List!1410)) )
))
(declare-datatypes ((IArray!833 0))(
  ( (IArray!834 (innerList!474 List!1410)) )
))
(declare-datatypes ((Conc!416 0))(
  ( (Node!416 (left!1066 Conc!416) (right!1396 Conc!416) (csize!1062 Int) (cheight!627 Int)) (Leaf!705 (xs!2995 IArray!833) (csize!1063 Int)) (Empty!416) )
))
(declare-datatypes ((BalanceConc!836 0))(
  ( (BalanceConc!837 (c!20208 Conc!416)) )
))
(declare-datatypes ((List!1411 0))(
  ( (Nil!1405) (Cons!1405 (h!6802 (_ BitVec 16)) (t!20282 List!1411)) )
))
(declare-datatypes ((TokenValue!297 0))(
  ( (FloatLiteralValue!594 (text!2524 List!1411)) (TokenValueExt!296 (__x!1689 Int)) (Broken!1485 (value!11619 List!1411)) (Object!302) (End!297) (Def!297) (Underscore!297) (Match!297) (Else!297) (Error!297) (Case!297) (If!297) (Extends!297) (Abstract!297) (Class!297) (Val!297) (DelimiterValue!594 (del!357 List!1411)) (KeywordValue!303 (value!11620 List!1411)) (CommentValue!594 (value!11621 List!1411)) (WhitespaceValue!594 (value!11622 List!1411)) (IndentationValue!297 (value!11623 List!1411)) (String!1876) (Int32!297) (Broken!1486 (value!11624 List!1411)) (Boolean!298) (Unit!865) (OperatorValue!300 (op!357 List!1411)) (IdentifierValue!594 (value!11625 List!1411)) (IdentifierValue!595 (value!11626 List!1411)) (WhitespaceValue!595 (value!11627 List!1411)) (True!594) (False!594) (Broken!1487 (value!11628 List!1411)) (Broken!1488 (value!11629 List!1411)) (True!595) (RightBrace!297) (RightBracket!297) (Colon!297) (Null!297) (Comma!297) (LeftBracket!297) (False!595) (LeftBrace!297) (ImaginaryLiteralValue!297 (text!2525 List!1411)) (StringLiteralValue!891 (value!11630 List!1411)) (EOFValue!297 (value!11631 List!1411)) (IdentValue!297 (value!11632 List!1411)) (DelimiterValue!595 (value!11633 List!1411)) (DedentValue!297 (value!11634 List!1411)) (NewLineValue!297 (value!11635 List!1411)) (IntegerValue!891 (value!11636 (_ BitVec 32)) (text!2526 List!1411)) (IntegerValue!892 (value!11637 Int) (text!2527 List!1411)) (Times!297) (Or!297) (Equal!297) (Minus!297) (Broken!1489 (value!11638 List!1411)) (And!297) (Div!297) (LessEqual!297) (Mod!297) (Concat!672) (Not!297) (Plus!297) (SpaceValue!297 (value!11639 List!1411)) (IntegerValue!893 (value!11640 Int) (text!2528 List!1411)) (StringLiteralValue!892 (text!2529 List!1411)) (FloatLiteralValue!595 (text!2530 List!1411)) (BytesLiteralValue!297 (value!11641 List!1411)) (CommentValue!595 (value!11642 List!1411)) (StringLiteralValue!893 (value!11643 List!1411)) (ErrorTokenValue!297 (msg!358 List!1411)) )
))
(declare-datatypes ((Regex!375 0))(
  ( (ElementMatch!375 (c!20209 C!1672)) (Concat!673 (regOne!1262 Regex!375) (regTwo!1262 Regex!375)) (EmptyExpr!375) (Star!375 (reg!704 Regex!375)) (EmptyLang!375) (Union!375 (regOne!1263 Regex!375) (regTwo!1263 Regex!375)) )
))
(declare-datatypes ((String!1877 0))(
  ( (String!1878 (value!11644 String)) )
))
(declare-datatypes ((TokenValueInjection!418 0))(
  ( (TokenValueInjection!419 (toValue!822 Int) (toChars!681 Int)) )
))
(declare-datatypes ((Rule!414 0))(
  ( (Rule!415 (regex!307 Regex!375) (tag!485 String!1877) (isSeparator!307 Bool) (transformation!307 TokenValueInjection!418)) )
))
(declare-datatypes ((Token!374 0))(
  ( (Token!375 (value!11645 TokenValue!297) (rule!788 Rule!414) (size!1223 Int) (originalCharacters!358 List!1410)) )
))
(declare-datatypes ((List!1412 0))(
  ( (Nil!1406) (Cons!1406 (h!6803 Token!374) (t!20283 List!1412)) )
))
(declare-fun lt!17221 () List!1412)

(get-info :version)

(assert (=> b!79367 (= res!41363 (and (or lt!17225 (not ((_ is Nil!1406) (t!20283 lt!17221)))) (not lt!17225)))))

(assert (=> b!79367 (= lt!17225 (not ((_ is Cons!1406) lt!17221)))))

(declare-datatypes ((IArray!835 0))(
  ( (IArray!836 (innerList!475 List!1412)) )
))
(declare-datatypes ((Conc!417 0))(
  ( (Node!417 (left!1067 Conc!417) (right!1397 Conc!417) (csize!1064 Int) (cheight!628 Int)) (Leaf!706 (xs!2996 IArray!835) (csize!1065 Int)) (Empty!417) )
))
(declare-datatypes ((BalanceConc!838 0))(
  ( (BalanceConc!839 (c!20210 Conc!417)) )
))
(declare-datatypes ((tuple2!1422 0))(
  ( (tuple2!1423 (_1!918 BalanceConc!838) (_2!918 BalanceConc!836)) )
))
(declare-fun lt!17220 () tuple2!1422)

(declare-fun list!465 (BalanceConc!838) List!1412)

(assert (=> b!79367 (= lt!17221 (list!465 (_1!918 lt!17220)))))

(declare-fun b!79368 () Bool)

(declare-fun e!44461 () Bool)

(assert (=> b!79368 (= e!44461 e!44462)))

(declare-fun res!41362 () Bool)

(assert (=> b!79368 (=> (not res!41362) (not e!44462))))

(declare-fun isEmpty!459 (BalanceConc!836) Bool)

(assert (=> b!79368 (= res!41362 (not (isEmpty!459 (_2!918 lt!17220))))))

(declare-datatypes ((LexerInterface!199 0))(
  ( (LexerInterfaceExt!196 (__x!1690 Int)) (Lexer!197) )
))
(declare-fun thiss!19403 () LexerInterface!199)

(declare-datatypes ((List!1413 0))(
  ( (Nil!1407) (Cons!1407 (h!6804 Rule!414) (t!20284 List!1413)) )
))
(declare-fun rules!2471 () List!1413)

(declare-fun input!2238 () List!1410)

(declare-fun lex!107 (LexerInterface!199 List!1413 BalanceConc!836) tuple2!1422)

(declare-fun seqFromList!126 (List!1410) BalanceConc!836)

(assert (=> b!79368 (= lt!17220 (lex!107 thiss!19403 rules!2471 (seqFromList!126 input!2238)))))

(declare-fun e!44457 () Bool)

(assert (=> b!79369 (= e!44457 (and tp!50271 tp!50272))))

(declare-fun b!79370 () Bool)

(declare-fun e!44455 () Bool)

(declare-fun tp_is_empty!673 () Bool)

(declare-fun tp!50268 () Bool)

(assert (=> b!79370 (= e!44455 (and tp_is_empty!673 tp!50268))))

(declare-fun b!79371 () Bool)

(declare-fun tp!50270 () Bool)

(declare-fun inv!1762 (String!1877) Bool)

(declare-fun inv!1764 (TokenValueInjection!418) Bool)

(assert (=> b!79371 (= e!44456 (and tp!50270 (inv!1762 (tag!485 (h!6804 rules!2471))) (inv!1764 (transformation!307 (h!6804 rules!2471))) e!44457))))

(declare-fun b!79372 () Bool)

(assert (=> b!79372 (= e!44460 (not true))))

(declare-fun lt!17223 () List!1410)

(declare-datatypes ((tuple2!1424 0))(
  ( (tuple2!1425 (_1!919 Token!374) (_2!919 List!1410)) )
))
(declare-fun lt!17215 () tuple2!1424)

(declare-fun ++!138 (List!1410 List!1410) List!1410)

(declare-fun list!466 (BalanceConc!836) List!1410)

(declare-fun charsOf!44 (Token!374) BalanceConc!836)

(assert (=> b!79372 (= lt!17223 (++!138 (list!466 (charsOf!44 (_1!919 lt!17215))) (_2!919 lt!17215)))))

(declare-fun lt!17216 () List!1410)

(declare-fun lt!17218 () List!1410)

(declare-fun lt!17222 () tuple2!1422)

(declare-datatypes ((tuple2!1426 0))(
  ( (tuple2!1427 (_1!920 List!1412) (_2!920 List!1410)) )
))
(declare-fun tail!118 (List!1412) List!1412)

(assert (=> b!79372 (= (tuple2!1427 (list!465 (_1!918 lt!17222)) lt!17218) (tuple2!1427 (tail!118 lt!17221) lt!17216))))

(declare-datatypes ((Unit!866 0))(
  ( (Unit!867) )
))
(declare-fun lt!17219 () Unit!866)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!18 (LexerInterface!199 List!1413 List!1410 List!1412 List!1410) Unit!866)

(assert (=> b!79372 (= lt!17219 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!18 thiss!19403 rules!2471 input!2238 lt!17221 lt!17216))))

(assert (=> b!79372 (= lt!17216 (list!466 (_2!918 lt!17220)))))

(declare-fun lt!17224 () List!1410)

(assert (=> b!79372 (= (++!138 lt!17224 lt!17218) (_2!919 lt!17215))))

(assert (=> b!79372 (= lt!17218 (list!466 (_2!918 lt!17222)))))

(declare-fun print!38 (LexerInterface!199 BalanceConc!838) BalanceConc!836)

(assert (=> b!79372 (= lt!17224 (list!466 (print!38 thiss!19403 (_1!918 lt!17222))))))

(assert (=> b!79372 (= lt!17222 (lex!107 thiss!19403 rules!2471 (seqFromList!126 (_2!919 lt!17215))))))

(declare-fun lt!17226 () Unit!866)

(declare-fun theoremInvertFromString!22 (LexerInterface!199 List!1413 List!1410) Unit!866)

(assert (=> b!79372 (= lt!17226 (theoremInvertFromString!22 thiss!19403 rules!2471 (_2!919 lt!17215)))))

(declare-datatypes ((Option!114 0))(
  ( (None!113) (Some!113 (v!12792 tuple2!1424)) )
))
(declare-fun get!349 (Option!114) tuple2!1424)

(declare-fun maxPrefix!43 (LexerInterface!199 List!1413 List!1410) Option!114)

(assert (=> b!79372 (= lt!17215 (get!349 (maxPrefix!43 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!63 (BalanceConc!838 Token!374) BalanceConc!838)

(declare-fun seqFromList!127 (List!1412) BalanceConc!838)

(assert (=> b!79372 (= lt!17221 (list!465 (prepend!63 (seqFromList!127 (t!20283 lt!17221)) (h!6803 lt!17221))))))

(declare-fun lt!17217 () Unit!866)

(declare-fun seqFromListBHdTlConstructive!30 (Token!374 List!1412 BalanceConc!838) Unit!866)

(assert (=> b!79372 (= lt!17217 (seqFromListBHdTlConstructive!30 (h!6803 lt!17221) (t!20283 lt!17221) (_1!918 lt!17220)))))

(declare-fun res!41364 () Bool)

(assert (=> start!6618 (=> (not res!41364) (not e!44461))))

(assert (=> start!6618 (= res!41364 ((_ is Lexer!197) thiss!19403))))

(assert (=> start!6618 e!44461))

(assert (=> start!6618 true))

(assert (=> start!6618 e!44458))

(assert (=> start!6618 e!44455))

(declare-fun b!79373 () Bool)

(declare-fun res!41361 () Bool)

(assert (=> b!79373 (=> (not res!41361) (not e!44461))))

(declare-fun isEmpty!460 (List!1413) Bool)

(assert (=> b!79373 (= res!41361 (not (isEmpty!460 rules!2471)))))

(declare-fun b!79374 () Bool)

(declare-fun res!41360 () Bool)

(assert (=> b!79374 (=> (not res!41360) (not e!44461))))

(declare-fun rulesInvariant!193 (LexerInterface!199 List!1413) Bool)

(assert (=> b!79374 (= res!41360 (rulesInvariant!193 thiss!19403 rules!2471))))

(assert (= (and start!6618 res!41364) b!79373))

(assert (= (and b!79373 res!41361) b!79374))

(assert (= (and b!79374 res!41360) b!79368))

(assert (= (and b!79368 res!41362) b!79367))

(assert (= (and b!79367 res!41363) b!79372))

(assert (= b!79371 b!79369))

(assert (= b!79366 b!79371))

(assert (= (and start!6618 ((_ is Cons!1407) rules!2471)) b!79366))

(assert (= (and start!6618 ((_ is Cons!1404) input!2238)) b!79370))

(declare-fun m!53618 () Bool)

(assert (=> b!79368 m!53618))

(declare-fun m!53620 () Bool)

(assert (=> b!79368 m!53620))

(assert (=> b!79368 m!53620))

(declare-fun m!53622 () Bool)

(assert (=> b!79368 m!53622))

(declare-fun m!53624 () Bool)

(assert (=> b!79371 m!53624))

(declare-fun m!53626 () Bool)

(assert (=> b!79371 m!53626))

(declare-fun m!53628 () Bool)

(assert (=> b!79374 m!53628))

(declare-fun m!53630 () Bool)

(assert (=> b!79367 m!53630))

(declare-fun m!53632 () Bool)

(assert (=> b!79373 m!53632))

(declare-fun m!53634 () Bool)

(assert (=> b!79372 m!53634))

(declare-fun m!53636 () Bool)

(assert (=> b!79372 m!53636))

(declare-fun m!53638 () Bool)

(assert (=> b!79372 m!53638))

(declare-fun m!53640 () Bool)

(assert (=> b!79372 m!53640))

(declare-fun m!53642 () Bool)

(assert (=> b!79372 m!53642))

(declare-fun m!53644 () Bool)

(assert (=> b!79372 m!53644))

(declare-fun m!53646 () Bool)

(assert (=> b!79372 m!53646))

(declare-fun m!53648 () Bool)

(assert (=> b!79372 m!53648))

(declare-fun m!53650 () Bool)

(assert (=> b!79372 m!53650))

(assert (=> b!79372 m!53648))

(declare-fun m!53652 () Bool)

(assert (=> b!79372 m!53652))

(assert (=> b!79372 m!53634))

(declare-fun m!53654 () Bool)

(assert (=> b!79372 m!53654))

(declare-fun m!53656 () Bool)

(assert (=> b!79372 m!53656))

(declare-fun m!53658 () Bool)

(assert (=> b!79372 m!53658))

(declare-fun m!53660 () Bool)

(assert (=> b!79372 m!53660))

(declare-fun m!53662 () Bool)

(assert (=> b!79372 m!53662))

(assert (=> b!79372 m!53650))

(declare-fun m!53664 () Bool)

(assert (=> b!79372 m!53664))

(assert (=> b!79372 m!53644))

(assert (=> b!79372 m!53660))

(declare-fun m!53666 () Bool)

(assert (=> b!79372 m!53666))

(assert (=> b!79372 m!53642))

(declare-fun m!53668 () Bool)

(assert (=> b!79372 m!53668))

(declare-fun m!53670 () Bool)

(assert (=> b!79372 m!53670))

(assert (=> b!79372 m!53656))

(declare-fun m!53672 () Bool)

(assert (=> b!79372 m!53672))

(check-sat (not b!79368) (not b!79371) (not b!79374) (not b!79367) (not b!79373) b_and!3653 tp_is_empty!673 (not b!79372) (not b_next!2553) (not b!79370) b_and!3651 (not b_next!2555) (not b!79366))
(check-sat b_and!3653 b_and!3651 (not b_next!2555) (not b_next!2553))
