; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6390 () Bool)

(assert start!6390)

(declare-fun b!78419 () Bool)

(declare-fun b_free!2529 () Bool)

(declare-fun b_next!2529 () Bool)

(assert (=> b!78419 (= b_free!2529 (not b_next!2529))))

(declare-fun tp!50084 () Bool)

(declare-fun b_and!3607 () Bool)

(assert (=> b!78419 (= tp!50084 b_and!3607)))

(declare-fun b_free!2531 () Bool)

(declare-fun b_next!2531 () Bool)

(assert (=> b!78419 (= b_free!2531 (not b_next!2531))))

(declare-fun tp!50086 () Bool)

(declare-fun b_and!3609 () Bool)

(assert (=> b!78419 (= tp!50086 b_and!3609)))

(declare-fun b!78414 () Bool)

(declare-fun e!43920 () Bool)

(declare-fun e!43916 () Bool)

(declare-fun tp!50085 () Bool)

(assert (=> b!78414 (= e!43920 (and e!43916 tp!50085))))

(declare-fun res!40946 () Bool)

(declare-fun e!43918 () Bool)

(assert (=> start!6390 (=> (not res!40946) (not e!43918))))

(declare-datatypes ((LexerInterface!197 0))(
  ( (LexerInterfaceExt!194 (__x!1685 Int)) (Lexer!195) )
))
(declare-fun thiss!19403 () LexerInterface!197)

(get-info :version)

(assert (=> start!6390 (= res!40946 ((_ is Lexer!195) thiss!19403))))

(assert (=> start!6390 e!43918))

(assert (=> start!6390 true))

(assert (=> start!6390 e!43920))

(declare-fun e!43921 () Bool)

(assert (=> start!6390 e!43921))

(declare-fun b!78415 () Bool)

(declare-fun tp_is_empty!669 () Bool)

(declare-fun tp!50082 () Bool)

(assert (=> b!78415 (= e!43921 (and tp_is_empty!669 tp!50082))))

(declare-fun b!78416 () Bool)

(declare-fun e!43917 () Bool)

(declare-fun e!43915 () Bool)

(assert (=> b!78416 (= e!43917 e!43915)))

(declare-fun res!40945 () Bool)

(assert (=> b!78416 (=> (not res!40945) (not e!43915))))

(declare-fun lt!16549 () Bool)

(declare-datatypes ((C!1668 0))(
  ( (C!1669 (val!441 Int)) )
))
(declare-datatypes ((List!1400 0))(
  ( (Nil!1394) (Cons!1394 (h!6791 C!1668) (t!20223 List!1400)) )
))
(declare-datatypes ((IArray!825 0))(
  ( (IArray!826 (innerList!470 List!1400)) )
))
(declare-datatypes ((Conc!412 0))(
  ( (Node!412 (left!1057 Conc!412) (right!1387 Conc!412) (csize!1054 Int) (cheight!623 Int)) (Leaf!700 (xs!2991 IArray!825) (csize!1055 Int)) (Empty!412) )
))
(declare-datatypes ((BalanceConc!828 0))(
  ( (BalanceConc!829 (c!20014 Conc!412)) )
))
(declare-datatypes ((List!1401 0))(
  ( (Nil!1395) (Cons!1395 (h!6792 (_ BitVec 16)) (t!20224 List!1401)) )
))
(declare-datatypes ((TokenValue!295 0))(
  ( (FloatLiteralValue!590 (text!2510 List!1401)) (TokenValueExt!294 (__x!1686 Int)) (Broken!1475 (value!11562 List!1401)) (Object!300) (End!295) (Def!295) (Underscore!295) (Match!295) (Else!295) (Error!295) (Case!295) (If!295) (Extends!295) (Abstract!295) (Class!295) (Val!295) (DelimiterValue!590 (del!355 List!1401)) (KeywordValue!301 (value!11563 List!1401)) (CommentValue!590 (value!11564 List!1401)) (WhitespaceValue!590 (value!11565 List!1401)) (IndentationValue!295 (value!11566 List!1401)) (String!1866) (Int32!295) (Broken!1476 (value!11567 List!1401)) (Boolean!296) (Unit!851) (OperatorValue!298 (op!355 List!1401)) (IdentifierValue!590 (value!11568 List!1401)) (IdentifierValue!591 (value!11569 List!1401)) (WhitespaceValue!591 (value!11570 List!1401)) (True!590) (False!590) (Broken!1477 (value!11571 List!1401)) (Broken!1478 (value!11572 List!1401)) (True!591) (RightBrace!295) (RightBracket!295) (Colon!295) (Null!295) (Comma!295) (LeftBracket!295) (False!591) (LeftBrace!295) (ImaginaryLiteralValue!295 (text!2511 List!1401)) (StringLiteralValue!885 (value!11573 List!1401)) (EOFValue!295 (value!11574 List!1401)) (IdentValue!295 (value!11575 List!1401)) (DelimiterValue!591 (value!11576 List!1401)) (DedentValue!295 (value!11577 List!1401)) (NewLineValue!295 (value!11578 List!1401)) (IntegerValue!885 (value!11579 (_ BitVec 32)) (text!2512 List!1401)) (IntegerValue!886 (value!11580 Int) (text!2513 List!1401)) (Times!295) (Or!295) (Equal!295) (Minus!295) (Broken!1479 (value!11581 List!1401)) (And!295) (Div!295) (LessEqual!295) (Mod!295) (Concat!668) (Not!295) (Plus!295) (SpaceValue!295 (value!11582 List!1401)) (IntegerValue!887 (value!11583 Int) (text!2514 List!1401)) (StringLiteralValue!886 (text!2515 List!1401)) (FloatLiteralValue!591 (text!2516 List!1401)) (BytesLiteralValue!295 (value!11584 List!1401)) (CommentValue!591 (value!11585 List!1401)) (StringLiteralValue!887 (value!11586 List!1401)) (ErrorTokenValue!295 (msg!356 List!1401)) )
))
(declare-datatypes ((Regex!373 0))(
  ( (ElementMatch!373 (c!20015 C!1668)) (Concat!669 (regOne!1258 Regex!373) (regTwo!1258 Regex!373)) (EmptyExpr!373) (Star!373 (reg!702 Regex!373)) (EmptyLang!373) (Union!373 (regOne!1259 Regex!373) (regTwo!1259 Regex!373)) )
))
(declare-datatypes ((String!1867 0))(
  ( (String!1868 (value!11587 String)) )
))
(declare-datatypes ((TokenValueInjection!414 0))(
  ( (TokenValueInjection!415 (toValue!816 Int) (toChars!675 Int)) )
))
(declare-datatypes ((Rule!410 0))(
  ( (Rule!411 (regex!305 Regex!373) (tag!483 String!1867) (isSeparator!305 Bool) (transformation!305 TokenValueInjection!414)) )
))
(declare-datatypes ((Token!370 0))(
  ( (Token!371 (value!11588 TokenValue!295) (rule!784 Rule!410) (size!1209 Int) (originalCharacters!356 List!1400)) )
))
(declare-datatypes ((List!1402 0))(
  ( (Nil!1396) (Cons!1396 (h!6793 Token!370) (t!20225 List!1402)) )
))
(declare-fun lt!16546 () List!1402)

(assert (=> b!78416 (= res!40945 (and (or lt!16549 (not ((_ is Nil!1396) (t!20225 lt!16546)))) (not lt!16549)))))

(assert (=> b!78416 (= lt!16549 (not ((_ is Cons!1396) lt!16546)))))

(declare-datatypes ((IArray!827 0))(
  ( (IArray!828 (innerList!471 List!1402)) )
))
(declare-datatypes ((Conc!413 0))(
  ( (Node!413 (left!1058 Conc!413) (right!1388 Conc!413) (csize!1056 Int) (cheight!624 Int)) (Leaf!701 (xs!2992 IArray!827) (csize!1057 Int)) (Empty!413) )
))
(declare-datatypes ((BalanceConc!830 0))(
  ( (BalanceConc!831 (c!20016 Conc!413)) )
))
(declare-datatypes ((tuple2!1402 0))(
  ( (tuple2!1403 (_1!908 BalanceConc!830) (_2!908 BalanceConc!828)) )
))
(declare-fun lt!16538 () tuple2!1402)

(declare-fun list!453 (BalanceConc!830) List!1402)

(assert (=> b!78416 (= lt!16546 (list!453 (_1!908 lt!16538)))))

(declare-fun b!78417 () Bool)

(declare-fun res!40947 () Bool)

(assert (=> b!78417 (=> (not res!40947) (not e!43918))))

(declare-datatypes ((List!1403 0))(
  ( (Nil!1397) (Cons!1397 (h!6794 Rule!410) (t!20226 List!1403)) )
))
(declare-fun rules!2471 () List!1403)

(declare-fun rulesInvariant!191 (LexerInterface!197 List!1403) Bool)

(assert (=> b!78417 (= res!40947 (rulesInvariant!191 thiss!19403 rules!2471))))

(declare-fun b!78418 () Bool)

(declare-fun e!43919 () Bool)

(declare-fun tp!50083 () Bool)

(declare-fun inv!1747 (String!1867) Bool)

(declare-fun inv!1749 (TokenValueInjection!414) Bool)

(assert (=> b!78418 (= e!43916 (and tp!50083 (inv!1747 (tag!483 (h!6794 rules!2471))) (inv!1749 (transformation!305 (h!6794 rules!2471))) e!43919))))

(assert (=> b!78419 (= e!43919 (and tp!50084 tp!50086))))

(declare-fun b!78420 () Bool)

(assert (=> b!78420 (= e!43918 e!43917)))

(declare-fun res!40949 () Bool)

(assert (=> b!78420 (=> (not res!40949) (not e!43917))))

(declare-fun isEmpty!443 (BalanceConc!828) Bool)

(assert (=> b!78420 (= res!40949 (not (isEmpty!443 (_2!908 lt!16538))))))

(declare-fun input!2238 () List!1400)

(declare-fun lex!105 (LexerInterface!197 List!1403 BalanceConc!828) tuple2!1402)

(declare-fun seqFromList!122 (List!1400) BalanceConc!828)

(assert (=> b!78420 (= lt!16538 (lex!105 thiss!19403 rules!2471 (seqFromList!122 input!2238)))))

(declare-fun b!78421 () Bool)

(declare-datatypes ((tuple2!1404 0))(
  ( (tuple2!1405 (_1!909 Token!370) (_2!909 List!1400)) )
))
(declare-datatypes ((Option!110 0))(
  ( (None!109) (Some!109 (v!12778 tuple2!1404)) )
))
(declare-fun lt!16542 () Option!110)

(declare-fun isDefined!26 (Option!110) Bool)

(assert (=> b!78421 (= e!43915 (not (isDefined!26 lt!16542)))))

(declare-fun lt!16544 () List!1400)

(declare-fun lt!16550 () tuple2!1404)

(declare-fun list!454 (BalanceConc!828) List!1400)

(declare-fun charsOf!42 (Token!370) BalanceConc!828)

(assert (=> b!78421 (= lt!16544 (list!454 (charsOf!42 (_1!909 lt!16550))))))

(declare-fun lt!16548 () tuple2!1402)

(declare-fun lt!16541 () List!1400)

(declare-fun lt!16540 () List!1400)

(declare-datatypes ((tuple2!1406 0))(
  ( (tuple2!1407 (_1!910 List!1402) (_2!910 List!1400)) )
))
(declare-fun tail!114 (List!1402) List!1402)

(assert (=> b!78421 (= (tuple2!1407 (list!453 (_1!908 lt!16548)) lt!16541) (tuple2!1407 (tail!114 lt!16546) lt!16540))))

(declare-datatypes ((Unit!852 0))(
  ( (Unit!853) )
))
(declare-fun lt!16539 () Unit!852)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!16 (LexerInterface!197 List!1403 List!1400 List!1402 List!1400) Unit!852)

(assert (=> b!78421 (= lt!16539 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!16 thiss!19403 rules!2471 input!2238 lt!16546 lt!16540))))

(assert (=> b!78421 (= lt!16540 (list!454 (_2!908 lt!16538)))))

(declare-fun lt!16545 () List!1400)

(declare-fun ++!130 (List!1400 List!1400) List!1400)

(assert (=> b!78421 (= (++!130 lt!16545 lt!16541) (_2!909 lt!16550))))

(assert (=> b!78421 (= lt!16541 (list!454 (_2!908 lt!16548)))))

(declare-fun print!36 (LexerInterface!197 BalanceConc!830) BalanceConc!828)

(assert (=> b!78421 (= lt!16545 (list!454 (print!36 thiss!19403 (_1!908 lt!16548))))))

(assert (=> b!78421 (= lt!16548 (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun lt!16547 () Unit!852)

(declare-fun theoremInvertFromString!20 (LexerInterface!197 List!1403 List!1400) Unit!852)

(assert (=> b!78421 (= lt!16547 (theoremInvertFromString!20 thiss!19403 rules!2471 (_2!909 lt!16550)))))

(declare-fun get!346 (Option!110) tuple2!1404)

(assert (=> b!78421 (= lt!16550 (get!346 lt!16542))))

(declare-fun maxPrefix!41 (LexerInterface!197 List!1403 List!1400) Option!110)

(assert (=> b!78421 (= lt!16542 (maxPrefix!41 thiss!19403 rules!2471 input!2238))))

(declare-fun prepend!59 (BalanceConc!830 Token!370) BalanceConc!830)

(declare-fun seqFromList!123 (List!1402) BalanceConc!830)

(assert (=> b!78421 (= lt!16546 (list!453 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))))))

(declare-fun lt!16543 () Unit!852)

(declare-fun seqFromListBHdTlConstructive!28 (Token!370 List!1402 BalanceConc!830) Unit!852)

(assert (=> b!78421 (= lt!16543 (seqFromListBHdTlConstructive!28 (h!6793 lt!16546) (t!20225 lt!16546) (_1!908 lt!16538)))))

(declare-fun b!78422 () Bool)

(declare-fun res!40948 () Bool)

(assert (=> b!78422 (=> (not res!40948) (not e!43918))))

(declare-fun isEmpty!444 (List!1403) Bool)

(assert (=> b!78422 (= res!40948 (not (isEmpty!444 rules!2471)))))

(assert (= (and start!6390 res!40946) b!78422))

(assert (= (and b!78422 res!40948) b!78417))

(assert (= (and b!78417 res!40947) b!78420))

(assert (= (and b!78420 res!40949) b!78416))

(assert (= (and b!78416 res!40945) b!78421))

(assert (= b!78418 b!78419))

(assert (= b!78414 b!78418))

(assert (= (and start!6390 ((_ is Cons!1397) rules!2471)) b!78414))

(assert (= (and start!6390 ((_ is Cons!1394) input!2238)) b!78415))

(declare-fun m!51870 () Bool)

(assert (=> b!78417 m!51870))

(declare-fun m!51872 () Bool)

(assert (=> b!78422 m!51872))

(declare-fun m!51874 () Bool)

(assert (=> b!78418 m!51874))

(declare-fun m!51876 () Bool)

(assert (=> b!78418 m!51876))

(declare-fun m!51878 () Bool)

(assert (=> b!78421 m!51878))

(declare-fun m!51880 () Bool)

(assert (=> b!78421 m!51880))

(declare-fun m!51882 () Bool)

(assert (=> b!78421 m!51882))

(declare-fun m!51884 () Bool)

(assert (=> b!78421 m!51884))

(assert (=> b!78421 m!51880))

(declare-fun m!51886 () Bool)

(assert (=> b!78421 m!51886))

(assert (=> b!78421 m!51882))

(declare-fun m!51888 () Bool)

(assert (=> b!78421 m!51888))

(declare-fun m!51890 () Bool)

(assert (=> b!78421 m!51890))

(declare-fun m!51892 () Bool)

(assert (=> b!78421 m!51892))

(declare-fun m!51894 () Bool)

(assert (=> b!78421 m!51894))

(declare-fun m!51896 () Bool)

(assert (=> b!78421 m!51896))

(assert (=> b!78421 m!51892))

(declare-fun m!51898 () Bool)

(assert (=> b!78421 m!51898))

(declare-fun m!51900 () Bool)

(assert (=> b!78421 m!51900))

(declare-fun m!51902 () Bool)

(assert (=> b!78421 m!51902))

(declare-fun m!51904 () Bool)

(assert (=> b!78421 m!51904))

(declare-fun m!51906 () Bool)

(assert (=> b!78421 m!51906))

(assert (=> b!78421 m!51904))

(declare-fun m!51908 () Bool)

(assert (=> b!78421 m!51908))

(declare-fun m!51910 () Bool)

(assert (=> b!78421 m!51910))

(assert (=> b!78421 m!51908))

(declare-fun m!51912 () Bool)

(assert (=> b!78421 m!51912))

(declare-fun m!51914 () Bool)

(assert (=> b!78421 m!51914))

(declare-fun m!51916 () Bool)

(assert (=> b!78421 m!51916))

(declare-fun m!51918 () Bool)

(assert (=> b!78416 m!51918))

(declare-fun m!51920 () Bool)

(assert (=> b!78420 m!51920))

(declare-fun m!51922 () Bool)

(assert (=> b!78420 m!51922))

(assert (=> b!78420 m!51922))

(declare-fun m!51924 () Bool)

(assert (=> b!78420 m!51924))

(check-sat (not b!78415) (not b!78416) (not b!78414) (not b!78421) (not b_next!2529) (not b!78422) tp_is_empty!669 (not b_next!2531) b_and!3609 (not b!78418) b_and!3607 (not b!78420) (not b!78417))
(check-sat b_and!3609 b_and!3607 (not b_next!2531) (not b_next!2529))
(get-model)

(declare-fun d!14312 () Bool)

(declare-fun list!457 (Conc!413) List!1402)

(assert (=> d!14312 (= (list!453 (_1!908 lt!16538)) (list!457 (c!20016 (_1!908 lt!16538))))))

(declare-fun bs!8140 () Bool)

(assert (= bs!8140 d!14312))

(declare-fun m!51936 () Bool)

(assert (=> bs!8140 m!51936))

(assert (=> b!78416 d!14312))

(declare-fun d!14314 () Bool)

(declare-fun isEmpty!449 (Option!110) Bool)

(assert (=> d!14314 (= (isDefined!26 lt!16542) (not (isEmpty!449 lt!16542)))))

(declare-fun bs!8141 () Bool)

(assert (= bs!8141 d!14314))

(declare-fun m!51938 () Bool)

(assert (=> bs!8141 m!51938))

(assert (=> b!78421 d!14314))

(declare-fun b!78467 () Bool)

(declare-fun res!40992 () Bool)

(declare-fun e!43948 () Bool)

(assert (=> b!78467 (=> (not res!40992) (not e!43948))))

(declare-fun lt!16571 () Option!110)

(declare-fun size!1213 (List!1400) Int)

(assert (=> b!78467 (= res!40992 (< (size!1213 (_2!909 (get!346 lt!16571))) (size!1213 input!2238)))))

(declare-fun b!78468 () Bool)

(declare-fun res!40987 () Bool)

(assert (=> b!78468 (=> (not res!40987) (not e!43948))))

(assert (=> b!78468 (= res!40987 (= (++!130 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))) (_2!909 (get!346 lt!16571))) input!2238))))

(declare-fun d!14316 () Bool)

(declare-fun e!43949 () Bool)

(assert (=> d!14316 e!43949))

(declare-fun res!40989 () Bool)

(assert (=> d!14316 (=> res!40989 e!43949)))

(assert (=> d!14316 (= res!40989 (isEmpty!449 lt!16571))))

(declare-fun e!43947 () Option!110)

(assert (=> d!14316 (= lt!16571 e!43947)))

(declare-fun c!20022 () Bool)

(assert (=> d!14316 (= c!20022 (and ((_ is Cons!1397) rules!2471) ((_ is Nil!1397) (t!20226 rules!2471))))))

(declare-fun lt!16570 () Unit!852)

(declare-fun lt!16568 () Unit!852)

(assert (=> d!14316 (= lt!16570 lt!16568)))

(declare-fun isPrefix!17 (List!1400 List!1400) Bool)

(assert (=> d!14316 (isPrefix!17 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!17 (List!1400 List!1400) Unit!852)

(assert (=> d!14316 (= lt!16568 (lemmaIsPrefixRefl!17 input!2238 input!2238))))

(declare-fun rulesValidInductive!38 (LexerInterface!197 List!1403) Bool)

(assert (=> d!14316 (rulesValidInductive!38 thiss!19403 rules!2471)))

(assert (=> d!14316 (= (maxPrefix!41 thiss!19403 rules!2471 input!2238) lt!16571)))

(declare-fun call!3677 () Option!110)

(declare-fun bm!3672 () Bool)

(declare-fun maxPrefixOneRule!15 (LexerInterface!197 Rule!410 List!1400) Option!110)

(assert (=> bm!3672 (= call!3677 (maxPrefixOneRule!15 thiss!19403 (h!6794 rules!2471) input!2238))))

(declare-fun b!78469 () Bool)

(declare-fun lt!16567 () Option!110)

(declare-fun lt!16569 () Option!110)

(assert (=> b!78469 (= e!43947 (ite (and ((_ is None!109) lt!16567) ((_ is None!109) lt!16569)) None!109 (ite ((_ is None!109) lt!16569) lt!16567 (ite ((_ is None!109) lt!16567) lt!16569 (ite (>= (size!1209 (_1!909 (v!12778 lt!16567))) (size!1209 (_1!909 (v!12778 lt!16569)))) lt!16567 lt!16569)))))))

(assert (=> b!78469 (= lt!16567 call!3677)))

(assert (=> b!78469 (= lt!16569 (maxPrefix!41 thiss!19403 (t!20226 rules!2471) input!2238))))

(declare-fun b!78470 () Bool)

(declare-fun res!40991 () Bool)

(assert (=> b!78470 (=> (not res!40991) (not e!43948))))

(declare-fun matchR!19 (Regex!373 List!1400) Bool)

(assert (=> b!78470 (= res!40991 (matchR!19 (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))) (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))))))

(declare-fun b!78471 () Bool)

(assert (=> b!78471 (= e!43947 call!3677)))

(declare-fun b!78472 () Bool)

(declare-fun res!40990 () Bool)

(assert (=> b!78472 (=> (not res!40990) (not e!43948))))

(assert (=> b!78472 (= res!40990 (= (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))) (originalCharacters!356 (_1!909 (get!346 lt!16571)))))))

(declare-fun b!78473 () Bool)

(declare-fun contains!207 (List!1403 Rule!410) Bool)

(assert (=> b!78473 (= e!43948 (contains!207 rules!2471 (rule!784 (_1!909 (get!346 lt!16571)))))))

(declare-fun b!78474 () Bool)

(assert (=> b!78474 (= e!43949 e!43948)))

(declare-fun res!40993 () Bool)

(assert (=> b!78474 (=> (not res!40993) (not e!43948))))

(assert (=> b!78474 (= res!40993 (isDefined!26 lt!16571))))

(declare-fun b!78475 () Bool)

(declare-fun res!40988 () Bool)

(assert (=> b!78475 (=> (not res!40988) (not e!43948))))

(declare-fun apply!187 (TokenValueInjection!414 BalanceConc!828) TokenValue!295)

(assert (=> b!78475 (= res!40988 (= (value!11588 (_1!909 (get!346 lt!16571))) (apply!187 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16571)))))))))

(assert (= (and d!14316 c!20022) b!78471))

(assert (= (and d!14316 (not c!20022)) b!78469))

(assert (= (or b!78471 b!78469) bm!3672))

(assert (= (and d!14316 (not res!40989)) b!78474))

(assert (= (and b!78474 res!40993) b!78472))

(assert (= (and b!78472 res!40990) b!78467))

(assert (= (and b!78467 res!40992) b!78468))

(assert (= (and b!78468 res!40987) b!78475))

(assert (= (and b!78475 res!40988) b!78470))

(assert (= (and b!78470 res!40991) b!78473))

(declare-fun m!51970 () Bool)

(assert (=> b!78474 m!51970))

(declare-fun m!51972 () Bool)

(assert (=> b!78472 m!51972))

(declare-fun m!51974 () Bool)

(assert (=> b!78472 m!51974))

(assert (=> b!78472 m!51974))

(declare-fun m!51976 () Bool)

(assert (=> b!78472 m!51976))

(declare-fun m!51978 () Bool)

(assert (=> bm!3672 m!51978))

(assert (=> b!78473 m!51972))

(declare-fun m!51980 () Bool)

(assert (=> b!78473 m!51980))

(assert (=> b!78470 m!51972))

(assert (=> b!78470 m!51974))

(assert (=> b!78470 m!51974))

(assert (=> b!78470 m!51976))

(assert (=> b!78470 m!51976))

(declare-fun m!51982 () Bool)

(assert (=> b!78470 m!51982))

(assert (=> b!78468 m!51972))

(assert (=> b!78468 m!51974))

(assert (=> b!78468 m!51974))

(assert (=> b!78468 m!51976))

(assert (=> b!78468 m!51976))

(declare-fun m!51984 () Bool)

(assert (=> b!78468 m!51984))

(assert (=> b!78475 m!51972))

(declare-fun m!51986 () Bool)

(assert (=> b!78475 m!51986))

(assert (=> b!78475 m!51986))

(declare-fun m!51988 () Bool)

(assert (=> b!78475 m!51988))

(declare-fun m!51990 () Bool)

(assert (=> d!14316 m!51990))

(declare-fun m!51992 () Bool)

(assert (=> d!14316 m!51992))

(declare-fun m!51994 () Bool)

(assert (=> d!14316 m!51994))

(declare-fun m!51996 () Bool)

(assert (=> d!14316 m!51996))

(assert (=> b!78467 m!51972))

(declare-fun m!51998 () Bool)

(assert (=> b!78467 m!51998))

(declare-fun m!52000 () Bool)

(assert (=> b!78467 m!52000))

(declare-fun m!52002 () Bool)

(assert (=> b!78469 m!52002))

(assert (=> b!78421 d!14316))

(declare-fun d!14326 () Bool)

(assert (=> d!14326 (= (list!453 (_1!908 lt!16538)) (list!453 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))))))

(declare-fun lt!16574 () Unit!852)

(declare-fun choose!1281 (Token!370 List!1402 BalanceConc!830) Unit!852)

(assert (=> d!14326 (= lt!16574 (choose!1281 (h!6793 lt!16546) (t!20225 lt!16546) (_1!908 lt!16538)))))

(declare-fun $colon$colon!19 (List!1402 Token!370) List!1402)

(assert (=> d!14326 (= (list!453 (_1!908 lt!16538)) (list!453 (seqFromList!123 ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546)))))))

(assert (=> d!14326 (= (seqFromListBHdTlConstructive!28 (h!6793 lt!16546) (t!20225 lt!16546) (_1!908 lt!16538)) lt!16574)))

(declare-fun bs!8144 () Bool)

(assert (= bs!8144 d!14326))

(declare-fun m!52004 () Bool)

(assert (=> bs!8144 m!52004))

(declare-fun m!52006 () Bool)

(assert (=> bs!8144 m!52006))

(declare-fun m!52008 () Bool)

(assert (=> bs!8144 m!52008))

(assert (=> bs!8144 m!51880))

(assert (=> bs!8144 m!51882))

(assert (=> bs!8144 m!51880))

(assert (=> bs!8144 m!51882))

(assert (=> bs!8144 m!51888))

(assert (=> bs!8144 m!51918))

(assert (=> bs!8144 m!52004))

(assert (=> bs!8144 m!52006))

(declare-fun m!52010 () Bool)

(assert (=> bs!8144 m!52010))

(assert (=> b!78421 d!14326))

(declare-fun d!14328 () Bool)

(declare-fun list!458 (Conc!412) List!1400)

(assert (=> d!14328 (= (list!454 (charsOf!42 (_1!909 lt!16550))) (list!458 (c!20014 (charsOf!42 (_1!909 lt!16550)))))))

(declare-fun bs!8145 () Bool)

(assert (= bs!8145 d!14328))

(declare-fun m!52012 () Bool)

(assert (=> bs!8145 m!52012))

(assert (=> b!78421 d!14328))

(declare-fun d!14330 () Bool)

(declare-fun lt!16577 () BalanceConc!828)

(assert (=> d!14330 (= (list!454 lt!16577) (originalCharacters!356 (_1!909 lt!16550)))))

(declare-fun dynLambda!329 (Int TokenValue!295) BalanceConc!828)

(assert (=> d!14330 (= lt!16577 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))))

(assert (=> d!14330 (= (charsOf!42 (_1!909 lt!16550)) lt!16577)))

(declare-fun b_lambda!887 () Bool)

(assert (=> (not b_lambda!887) (not d!14330)))

(declare-fun t!20230 () Bool)

(declare-fun tb!2413 () Bool)

(assert (=> (and b!78419 (= (toChars!675 (transformation!305 (h!6794 rules!2471))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550))))) t!20230) tb!2413))

(declare-fun b!78480 () Bool)

(declare-fun e!43952 () Bool)

(declare-fun tp!50092 () Bool)

(declare-fun inv!1752 (Conc!412) Bool)

(assert (=> b!78480 (= e!43952 (and (inv!1752 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))) tp!50092))))

(declare-fun result!3464 () Bool)

(declare-fun inv!1753 (BalanceConc!828) Bool)

(assert (=> tb!2413 (= result!3464 (and (inv!1753 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))) e!43952))))

(assert (= tb!2413 b!78480))

(declare-fun m!52014 () Bool)

(assert (=> b!78480 m!52014))

(declare-fun m!52016 () Bool)

(assert (=> tb!2413 m!52016))

(assert (=> d!14330 t!20230))

(declare-fun b_and!3613 () Bool)

(assert (= b_and!3609 (and (=> t!20230 result!3464) b_and!3613)))

(declare-fun m!52018 () Bool)

(assert (=> d!14330 m!52018))

(declare-fun m!52020 () Bool)

(assert (=> d!14330 m!52020))

(assert (=> b!78421 d!14330))

(declare-fun d!14332 () Bool)

(declare-fun fromListB!41 (List!1400) BalanceConc!828)

(assert (=> d!14332 (= (seqFromList!122 (_2!909 lt!16550)) (fromListB!41 (_2!909 lt!16550)))))

(declare-fun bs!8146 () Bool)

(assert (= bs!8146 d!14332))

(declare-fun m!52022 () Bool)

(assert (=> bs!8146 m!52022))

(assert (=> b!78421 d!14332))

(declare-fun d!14334 () Bool)

(declare-fun e!43958 () Bool)

(assert (=> d!14334 e!43958))

(declare-fun res!40999 () Bool)

(assert (=> d!14334 (=> (not res!40999) (not e!43958))))

(declare-fun lt!16580 () List!1400)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!68 (List!1400) (InoxSet C!1668))

(assert (=> d!14334 (= res!40999 (= (content!68 lt!16580) ((_ map or) (content!68 lt!16545) (content!68 lt!16541))))))

(declare-fun e!43957 () List!1400)

(assert (=> d!14334 (= lt!16580 e!43957)))

(declare-fun c!20025 () Bool)

(assert (=> d!14334 (= c!20025 ((_ is Nil!1394) lt!16545))))

(assert (=> d!14334 (= (++!130 lt!16545 lt!16541) lt!16580)))

(declare-fun b!78491 () Bool)

(declare-fun res!40998 () Bool)

(assert (=> b!78491 (=> (not res!40998) (not e!43958))))

(assert (=> b!78491 (= res!40998 (= (size!1213 lt!16580) (+ (size!1213 lt!16545) (size!1213 lt!16541))))))

(declare-fun b!78490 () Bool)

(assert (=> b!78490 (= e!43957 (Cons!1394 (h!6791 lt!16545) (++!130 (t!20223 lt!16545) lt!16541)))))

(declare-fun b!78492 () Bool)

(assert (=> b!78492 (= e!43958 (or (not (= lt!16541 Nil!1394)) (= lt!16580 lt!16545)))))

(declare-fun b!78489 () Bool)

(assert (=> b!78489 (= e!43957 lt!16541)))

(assert (= (and d!14334 c!20025) b!78489))

(assert (= (and d!14334 (not c!20025)) b!78490))

(assert (= (and d!14334 res!40999) b!78491))

(assert (= (and b!78491 res!40998) b!78492))

(declare-fun m!52024 () Bool)

(assert (=> d!14334 m!52024))

(declare-fun m!52026 () Bool)

(assert (=> d!14334 m!52026))

(declare-fun m!52028 () Bool)

(assert (=> d!14334 m!52028))

(declare-fun m!52030 () Bool)

(assert (=> b!78491 m!52030))

(declare-fun m!52032 () Bool)

(assert (=> b!78491 m!52032))

(declare-fun m!52034 () Bool)

(assert (=> b!78491 m!52034))

(declare-fun m!52036 () Bool)

(assert (=> b!78490 m!52036))

(assert (=> b!78421 d!14334))

(declare-fun d!14336 () Bool)

(declare-fun e!43961 () Bool)

(assert (=> d!14336 e!43961))

(declare-fun res!41002 () Bool)

(assert (=> d!14336 (=> (not res!41002) (not e!43961))))

(declare-fun isBalanced!80 (Conc!413) Bool)

(declare-fun prepend!61 (Conc!413 Token!370) Conc!413)

(assert (=> d!14336 (= res!41002 (isBalanced!80 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))))))

(declare-fun lt!16589 () BalanceConc!830)

(assert (=> d!14336 (= lt!16589 (BalanceConc!831 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))))))

(assert (=> d!14336 (= (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)) lt!16589)))

(declare-fun b!78495 () Bool)

(assert (=> b!78495 (= e!43961 (= (list!453 lt!16589) (Cons!1396 (h!6793 lt!16546) (list!453 (seqFromList!123 (t!20225 lt!16546))))))))

(assert (= (and d!14336 res!41002) b!78495))

(declare-fun m!52052 () Bool)

(assert (=> d!14336 m!52052))

(assert (=> d!14336 m!52052))

(declare-fun m!52054 () Bool)

(assert (=> d!14336 m!52054))

(declare-fun m!52056 () Bool)

(assert (=> b!78495 m!52056))

(assert (=> b!78495 m!51880))

(declare-fun m!52058 () Bool)

(assert (=> b!78495 m!52058))

(assert (=> b!78421 d!14336))

(declare-fun d!14342 () Bool)

(declare-fun lt!16616 () tuple2!1402)

(assert (=> d!14342 (= (++!130 (list!454 (print!36 thiss!19403 (_1!908 lt!16616))) (list!454 (_2!908 lt!16616))) (_2!909 lt!16550))))

(assert (=> d!14342 (= lt!16616 (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun lt!16615 () Unit!852)

(declare-fun choose!1282 (LexerInterface!197 List!1403 List!1400) Unit!852)

(assert (=> d!14342 (= lt!16615 (choose!1282 thiss!19403 rules!2471 (_2!909 lt!16550)))))

(assert (=> d!14342 (not (isEmpty!444 rules!2471))))

(assert (=> d!14342 (= (theoremInvertFromString!20 thiss!19403 rules!2471 (_2!909 lt!16550)) lt!16615)))

(declare-fun bs!8154 () Bool)

(assert (= bs!8154 d!14342))

(declare-fun m!52116 () Bool)

(assert (=> bs!8154 m!52116))

(declare-fun m!52118 () Bool)

(assert (=> bs!8154 m!52118))

(assert (=> bs!8154 m!51872))

(declare-fun m!52120 () Bool)

(assert (=> bs!8154 m!52120))

(assert (=> bs!8154 m!52118))

(declare-fun m!52122 () Bool)

(assert (=> bs!8154 m!52122))

(assert (=> bs!8154 m!52122))

(assert (=> bs!8154 m!52120))

(declare-fun m!52124 () Bool)

(assert (=> bs!8154 m!52124))

(assert (=> bs!8154 m!51908))

(assert (=> bs!8154 m!51910))

(assert (=> bs!8154 m!51908))

(assert (=> b!78421 d!14342))

(declare-fun lt!16635 () tuple2!1402)

(declare-fun e!44009 () Bool)

(declare-fun b!78583 () Bool)

(declare-fun lexList!41 (LexerInterface!197 List!1403 List!1400) tuple2!1406)

(assert (=> b!78583 (= e!44009 (= (list!454 (_2!908 lt!16635)) (_2!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 lt!16550)))))))))

(declare-fun b!78584 () Bool)

(declare-fun e!44008 () Bool)

(declare-fun e!44007 () Bool)

(assert (=> b!78584 (= e!44008 e!44007)))

(declare-fun res!41044 () Bool)

(declare-fun size!1214 (BalanceConc!828) Int)

(assert (=> b!78584 (= res!41044 (< (size!1214 (_2!908 lt!16635)) (size!1214 (seqFromList!122 (_2!909 lt!16550)))))))

(assert (=> b!78584 (=> (not res!41044) (not e!44007))))

(declare-fun d!14358 () Bool)

(assert (=> d!14358 e!44009))

(declare-fun res!41043 () Bool)

(assert (=> d!14358 (=> (not res!41043) (not e!44009))))

(assert (=> d!14358 (= res!41043 e!44008)))

(declare-fun c!20037 () Bool)

(declare-fun size!1215 (BalanceConc!830) Int)

(assert (=> d!14358 (= c!20037 (> (size!1215 (_1!908 lt!16635)) 0))))

(declare-fun lexTailRecV2!38 (LexerInterface!197 List!1403 BalanceConc!828 BalanceConc!828 BalanceConc!828 BalanceConc!830) tuple2!1402)

(assert (=> d!14358 (= lt!16635 (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)) (BalanceConc!829 Empty!412) (seqFromList!122 (_2!909 lt!16550)) (BalanceConc!831 Empty!413)))))

(assert (=> d!14358 (= (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))) lt!16635)))

(declare-fun b!78585 () Bool)

(declare-fun isEmpty!450 (BalanceConc!830) Bool)

(assert (=> b!78585 (= e!44007 (not (isEmpty!450 (_1!908 lt!16635))))))

(declare-fun b!78586 () Bool)

(declare-fun res!41042 () Bool)

(assert (=> b!78586 (=> (not res!41042) (not e!44009))))

(assert (=> b!78586 (= res!41042 (= (list!453 (_1!908 lt!16635)) (_1!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 lt!16550)))))))))

(declare-fun b!78587 () Bool)

(assert (=> b!78587 (= e!44008 (= (_2!908 lt!16635) (seqFromList!122 (_2!909 lt!16550))))))

(assert (= (and d!14358 c!20037) b!78584))

(assert (= (and d!14358 (not c!20037)) b!78587))

(assert (= (and b!78584 res!41044) b!78585))

(assert (= (and d!14358 res!41043) b!78586))

(assert (= (and b!78586 res!41042) b!78583))

(declare-fun m!52190 () Bool)

(assert (=> d!14358 m!52190))

(assert (=> d!14358 m!51908))

(assert (=> d!14358 m!51908))

(declare-fun m!52192 () Bool)

(assert (=> d!14358 m!52192))

(declare-fun m!52194 () Bool)

(assert (=> b!78584 m!52194))

(assert (=> b!78584 m!51908))

(declare-fun m!52196 () Bool)

(assert (=> b!78584 m!52196))

(declare-fun m!52198 () Bool)

(assert (=> b!78583 m!52198))

(assert (=> b!78583 m!51908))

(declare-fun m!52200 () Bool)

(assert (=> b!78583 m!52200))

(assert (=> b!78583 m!52200))

(declare-fun m!52202 () Bool)

(assert (=> b!78583 m!52202))

(declare-fun m!52204 () Bool)

(assert (=> b!78585 m!52204))

(declare-fun m!52206 () Bool)

(assert (=> b!78586 m!52206))

(assert (=> b!78586 m!51908))

(assert (=> b!78586 m!52200))

(assert (=> b!78586 m!52200))

(assert (=> b!78586 m!52202))

(assert (=> b!78421 d!14358))

(declare-fun d!14378 () Bool)

(assert (=> d!14378 (= (tail!114 lt!16546) (t!20225 lt!16546))))

(assert (=> b!78421 d!14378))

(declare-fun d!14380 () Bool)

(assert (=> d!14380 (= (list!453 (_1!908 lt!16548)) (list!457 (c!20016 (_1!908 lt!16548))))))

(declare-fun bs!8161 () Bool)

(assert (= bs!8161 d!14380))

(declare-fun m!52208 () Bool)

(assert (=> bs!8161 m!52208))

(assert (=> b!78421 d!14380))

(declare-fun d!14382 () Bool)

(assert (=> d!14382 (= (list!453 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))) (list!457 (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)))))))

(declare-fun bs!8162 () Bool)

(assert (= bs!8162 d!14382))

(declare-fun m!52210 () Bool)

(assert (=> bs!8162 m!52210))

(assert (=> b!78421 d!14382))

(declare-fun d!14384 () Bool)

(declare-fun fromListB!42 (List!1402) BalanceConc!830)

(assert (=> d!14384 (= (seqFromList!123 (t!20225 lt!16546)) (fromListB!42 (t!20225 lt!16546)))))

(declare-fun bs!8163 () Bool)

(assert (= bs!8163 d!14384))

(declare-fun m!52212 () Bool)

(assert (=> bs!8163 m!52212))

(assert (=> b!78421 d!14384))

(declare-fun d!14386 () Bool)

(assert (=> d!14386 (= (get!346 lt!16542) (v!12778 lt!16542))))

(assert (=> b!78421 d!14386))

(declare-fun d!14388 () Bool)

(assert (=> d!14388 (= (list!454 (_2!908 lt!16548)) (list!458 (c!20014 (_2!908 lt!16548))))))

(declare-fun bs!8164 () Bool)

(assert (= bs!8164 d!14388))

(declare-fun m!52214 () Bool)

(assert (=> bs!8164 m!52214))

(assert (=> b!78421 d!14388))

(declare-fun d!14390 () Bool)

(assert (=> d!14390 (= (list!454 (print!36 thiss!19403 (_1!908 lt!16548))) (list!458 (c!20014 (print!36 thiss!19403 (_1!908 lt!16548)))))))

(declare-fun bs!8165 () Bool)

(assert (= bs!8165 d!14390))

(declare-fun m!52216 () Bool)

(assert (=> bs!8165 m!52216))

(assert (=> b!78421 d!14390))

(declare-fun d!14392 () Bool)

(declare-fun lt!16638 () BalanceConc!828)

(declare-fun printList!13 (LexerInterface!197 List!1402) List!1400)

(assert (=> d!14392 (= (list!454 lt!16638) (printList!13 thiss!19403 (list!453 (_1!908 lt!16548))))))

(declare-fun printTailRec!13 (LexerInterface!197 BalanceConc!830 Int BalanceConc!828) BalanceConc!828)

(assert (=> d!14392 (= lt!16638 (printTailRec!13 thiss!19403 (_1!908 lt!16548) 0 (BalanceConc!829 Empty!412)))))

(assert (=> d!14392 (= (print!36 thiss!19403 (_1!908 lt!16548)) lt!16638)))

(declare-fun bs!8166 () Bool)

(assert (= bs!8166 d!14392))

(declare-fun m!52218 () Bool)

(assert (=> bs!8166 m!52218))

(assert (=> bs!8166 m!51884))

(assert (=> bs!8166 m!51884))

(declare-fun m!52220 () Bool)

(assert (=> bs!8166 m!52220))

(declare-fun m!52222 () Bool)

(assert (=> bs!8166 m!52222))

(assert (=> b!78421 d!14392))

(declare-fun d!14394 () Bool)

(declare-fun lt!16644 () tuple2!1402)

(assert (=> d!14394 (= (tuple2!1407 (list!453 (_1!908 lt!16644)) (list!454 (_2!908 lt!16644))) (tuple2!1407 (tail!114 lt!16546) lt!16540))))

(assert (=> d!14394 (= lt!16644 (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!16643 () Unit!852)

(declare-fun choose!1283 (LexerInterface!197 List!1403 List!1400 List!1402 List!1400) Unit!852)

(assert (=> d!14394 (= lt!16643 (choose!1283 thiss!19403 rules!2471 input!2238 lt!16546 lt!16540))))

(assert (=> d!14394 (rulesInvariant!191 thiss!19403 rules!2471)))

(assert (=> d!14394 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!16 thiss!19403 rules!2471 input!2238 lt!16546 lt!16540) lt!16643)))

(declare-fun bs!8167 () Bool)

(assert (= bs!8167 d!14394))

(assert (=> bs!8167 m!51870))

(assert (=> bs!8167 m!51878))

(declare-fun m!52224 () Bool)

(assert (=> bs!8167 m!52224))

(assert (=> bs!8167 m!51878))

(declare-fun m!52226 () Bool)

(assert (=> bs!8167 m!52226))

(declare-fun m!52228 () Bool)

(assert (=> bs!8167 m!52228))

(assert (=> bs!8167 m!51916))

(declare-fun m!52230 () Bool)

(assert (=> bs!8167 m!52230))

(declare-fun m!52232 () Bool)

(assert (=> bs!8167 m!52232))

(declare-fun m!52234 () Bool)

(assert (=> bs!8167 m!52234))

(assert (=> bs!8167 m!52232))

(assert (=> b!78421 d!14394))

(declare-fun d!14396 () Bool)

(assert (=> d!14396 (= (list!454 (_2!908 lt!16538)) (list!458 (c!20014 (_2!908 lt!16538))))))

(declare-fun bs!8168 () Bool)

(assert (= bs!8168 d!14396))

(declare-fun m!52236 () Bool)

(assert (=> bs!8168 m!52236))

(assert (=> b!78421 d!14396))

(declare-fun d!14398 () Bool)

(declare-fun res!41047 () Bool)

(declare-fun e!44012 () Bool)

(assert (=> d!14398 (=> (not res!41047) (not e!44012))))

(declare-fun rulesValid!61 (LexerInterface!197 List!1403) Bool)

(assert (=> d!14398 (= res!41047 (rulesValid!61 thiss!19403 rules!2471))))

(assert (=> d!14398 (= (rulesInvariant!191 thiss!19403 rules!2471) e!44012)))

(declare-fun b!78590 () Bool)

(declare-datatypes ((List!1405 0))(
  ( (Nil!1399) (Cons!1399 (h!6796 String!1867) (t!20236 List!1405)) )
))
(declare-fun noDuplicateTag!61 (LexerInterface!197 List!1403 List!1405) Bool)

(assert (=> b!78590 (= e!44012 (noDuplicateTag!61 thiss!19403 rules!2471 Nil!1399))))

(assert (= (and d!14398 res!41047) b!78590))

(declare-fun m!52238 () Bool)

(assert (=> d!14398 m!52238))

(declare-fun m!52240 () Bool)

(assert (=> b!78590 m!52240))

(assert (=> b!78417 d!14398))

(declare-fun d!14400 () Bool)

(assert (=> d!14400 (= (isEmpty!444 rules!2471) ((_ is Nil!1397) rules!2471))))

(assert (=> b!78422 d!14400))

(declare-fun d!14402 () Bool)

(assert (=> d!14402 (= (inv!1747 (tag!483 (h!6794 rules!2471))) (= (mod (str.len (value!11587 (tag!483 (h!6794 rules!2471)))) 2) 0))))

(assert (=> b!78418 d!14402))

(declare-fun d!14404 () Bool)

(declare-fun res!41050 () Bool)

(declare-fun e!44015 () Bool)

(assert (=> d!14404 (=> (not res!41050) (not e!44015))))

(declare-fun semiInverseModEq!53 (Int Int) Bool)

(assert (=> d!14404 (= res!41050 (semiInverseModEq!53 (toChars!675 (transformation!305 (h!6794 rules!2471))) (toValue!816 (transformation!305 (h!6794 rules!2471)))))))

(assert (=> d!14404 (= (inv!1749 (transformation!305 (h!6794 rules!2471))) e!44015)))

(declare-fun b!78593 () Bool)

(declare-fun equivClasses!49 (Int Int) Bool)

(assert (=> b!78593 (= e!44015 (equivClasses!49 (toChars!675 (transformation!305 (h!6794 rules!2471))) (toValue!816 (transformation!305 (h!6794 rules!2471)))))))

(assert (= (and d!14404 res!41050) b!78593))

(declare-fun m!52242 () Bool)

(assert (=> d!14404 m!52242))

(declare-fun m!52244 () Bool)

(assert (=> b!78593 m!52244))

(assert (=> b!78418 d!14404))

(declare-fun d!14406 () Bool)

(declare-fun lt!16647 () Bool)

(declare-fun isEmpty!451 (List!1400) Bool)

(assert (=> d!14406 (= lt!16647 (isEmpty!451 (list!454 (_2!908 lt!16538))))))

(declare-fun isEmpty!452 (Conc!412) Bool)

(assert (=> d!14406 (= lt!16647 (isEmpty!452 (c!20014 (_2!908 lt!16538))))))

(assert (=> d!14406 (= (isEmpty!443 (_2!908 lt!16538)) lt!16647)))

(declare-fun bs!8169 () Bool)

(assert (= bs!8169 d!14406))

(assert (=> bs!8169 m!51902))

(assert (=> bs!8169 m!51902))

(declare-fun m!52246 () Bool)

(assert (=> bs!8169 m!52246))

(declare-fun m!52248 () Bool)

(assert (=> bs!8169 m!52248))

(assert (=> b!78420 d!14406))

(declare-fun lt!16648 () tuple2!1402)

(declare-fun e!44018 () Bool)

(declare-fun b!78594 () Bool)

(assert (=> b!78594 (= e!44018 (= (list!454 (_2!908 lt!16648)) (_2!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 input!2238))))))))

(declare-fun b!78595 () Bool)

(declare-fun e!44017 () Bool)

(declare-fun e!44016 () Bool)

(assert (=> b!78595 (= e!44017 e!44016)))

(declare-fun res!41053 () Bool)

(assert (=> b!78595 (= res!41053 (< (size!1214 (_2!908 lt!16648)) (size!1214 (seqFromList!122 input!2238))))))

(assert (=> b!78595 (=> (not res!41053) (not e!44016))))

(declare-fun d!14408 () Bool)

(assert (=> d!14408 e!44018))

(declare-fun res!41052 () Bool)

(assert (=> d!14408 (=> (not res!41052) (not e!44018))))

(assert (=> d!14408 (= res!41052 e!44017)))

(declare-fun c!20038 () Bool)

(assert (=> d!14408 (= c!20038 (> (size!1215 (_1!908 lt!16648)) 0))))

(assert (=> d!14408 (= lt!16648 (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 input!2238) (BalanceConc!829 Empty!412) (seqFromList!122 input!2238) (BalanceConc!831 Empty!413)))))

(assert (=> d!14408 (= (lex!105 thiss!19403 rules!2471 (seqFromList!122 input!2238)) lt!16648)))

(declare-fun b!78596 () Bool)

(assert (=> b!78596 (= e!44016 (not (isEmpty!450 (_1!908 lt!16648))))))

(declare-fun b!78597 () Bool)

(declare-fun res!41051 () Bool)

(assert (=> b!78597 (=> (not res!41051) (not e!44018))))

(assert (=> b!78597 (= res!41051 (= (list!453 (_1!908 lt!16648)) (_1!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 input!2238))))))))

(declare-fun b!78598 () Bool)

(assert (=> b!78598 (= e!44017 (= (_2!908 lt!16648) (seqFromList!122 input!2238)))))

(assert (= (and d!14408 c!20038) b!78595))

(assert (= (and d!14408 (not c!20038)) b!78598))

(assert (= (and b!78595 res!41053) b!78596))

(assert (= (and d!14408 res!41052) b!78597))

(assert (= (and b!78597 res!41051) b!78594))

(declare-fun m!52250 () Bool)

(assert (=> d!14408 m!52250))

(assert (=> d!14408 m!51922))

(assert (=> d!14408 m!51922))

(declare-fun m!52252 () Bool)

(assert (=> d!14408 m!52252))

(declare-fun m!52254 () Bool)

(assert (=> b!78595 m!52254))

(assert (=> b!78595 m!51922))

(declare-fun m!52256 () Bool)

(assert (=> b!78595 m!52256))

(declare-fun m!52258 () Bool)

(assert (=> b!78594 m!52258))

(assert (=> b!78594 m!51922))

(declare-fun m!52260 () Bool)

(assert (=> b!78594 m!52260))

(assert (=> b!78594 m!52260))

(declare-fun m!52262 () Bool)

(assert (=> b!78594 m!52262))

(declare-fun m!52264 () Bool)

(assert (=> b!78596 m!52264))

(declare-fun m!52266 () Bool)

(assert (=> b!78597 m!52266))

(assert (=> b!78597 m!51922))

(assert (=> b!78597 m!52260))

(assert (=> b!78597 m!52260))

(assert (=> b!78597 m!52262))

(assert (=> b!78420 d!14408))

(declare-fun d!14410 () Bool)

(assert (=> d!14410 (= (seqFromList!122 input!2238) (fromListB!41 input!2238))))

(declare-fun bs!8170 () Bool)

(assert (= bs!8170 d!14410))

(declare-fun m!52268 () Bool)

(assert (=> bs!8170 m!52268))

(assert (=> b!78420 d!14410))

(declare-fun b!78612 () Bool)

(declare-fun e!44021 () Bool)

(declare-fun tp!50137 () Bool)

(declare-fun tp!50133 () Bool)

(assert (=> b!78612 (= e!44021 (and tp!50137 tp!50133))))

(assert (=> b!78418 (= tp!50083 e!44021)))

(declare-fun b!78611 () Bool)

(declare-fun tp!50136 () Bool)

(assert (=> b!78611 (= e!44021 tp!50136)))

(declare-fun b!78609 () Bool)

(assert (=> b!78609 (= e!44021 tp_is_empty!669)))

(declare-fun b!78610 () Bool)

(declare-fun tp!50135 () Bool)

(declare-fun tp!50134 () Bool)

(assert (=> b!78610 (= e!44021 (and tp!50135 tp!50134))))

(assert (= (and b!78418 ((_ is ElementMatch!373) (regex!305 (h!6794 rules!2471)))) b!78609))

(assert (= (and b!78418 ((_ is Concat!669) (regex!305 (h!6794 rules!2471)))) b!78610))

(assert (= (and b!78418 ((_ is Star!373) (regex!305 (h!6794 rules!2471)))) b!78611))

(assert (= (and b!78418 ((_ is Union!373) (regex!305 (h!6794 rules!2471)))) b!78612))

(declare-fun b!78617 () Bool)

(declare-fun e!44024 () Bool)

(declare-fun tp!50140 () Bool)

(assert (=> b!78617 (= e!44024 (and tp_is_empty!669 tp!50140))))

(assert (=> b!78415 (= tp!50082 e!44024)))

(assert (= (and b!78415 ((_ is Cons!1394) (t!20223 input!2238))) b!78617))

(declare-fun b!78628 () Bool)

(declare-fun b_free!2537 () Bool)

(declare-fun b_next!2537 () Bool)

(assert (=> b!78628 (= b_free!2537 (not b_next!2537))))

(declare-fun tp!50150 () Bool)

(declare-fun b_and!3619 () Bool)

(assert (=> b!78628 (= tp!50150 b_and!3619)))

(declare-fun b_free!2539 () Bool)

(declare-fun b_next!2539 () Bool)

(assert (=> b!78628 (= b_free!2539 (not b_next!2539))))

(declare-fun t!20235 () Bool)

(declare-fun tb!2417 () Bool)

(assert (=> (and b!78628 (= (toChars!675 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550))))) t!20235) tb!2417))

(declare-fun result!3482 () Bool)

(assert (= result!3482 result!3464))

(assert (=> d!14330 t!20235))

(declare-fun b_and!3621 () Bool)

(declare-fun tp!50151 () Bool)

(assert (=> b!78628 (= tp!50151 (and (=> t!20235 result!3482) b_and!3621))))

(declare-fun e!44036 () Bool)

(assert (=> b!78628 (= e!44036 (and tp!50150 tp!50151))))

(declare-fun b!78627 () Bool)

(declare-fun tp!50152 () Bool)

(declare-fun e!44034 () Bool)

(assert (=> b!78627 (= e!44034 (and tp!50152 (inv!1747 (tag!483 (h!6794 (t!20226 rules!2471)))) (inv!1749 (transformation!305 (h!6794 (t!20226 rules!2471)))) e!44036))))

(declare-fun b!78626 () Bool)

(declare-fun e!44033 () Bool)

(declare-fun tp!50149 () Bool)

(assert (=> b!78626 (= e!44033 (and e!44034 tp!50149))))

(assert (=> b!78414 (= tp!50085 e!44033)))

(assert (= b!78627 b!78628))

(assert (= b!78626 b!78627))

(assert (= (and b!78414 ((_ is Cons!1397) (t!20226 rules!2471))) b!78626))

(declare-fun m!52270 () Bool)

(assert (=> b!78627 m!52270))

(declare-fun m!52272 () Bool)

(assert (=> b!78627 m!52272))

(check-sat (not b!78473) (not d!14314) (not b!78474) (not b!78590) (not b!78612) (not d!14404) (not d!14394) (not d!14358) (not d!14390) (not b!78490) (not b!78593) tp_is_empty!669 (not b!78468) (not d!14312) (not b!78585) (not b!78586) (not d!14410) (not b!78467) (not b!78596) (not d!14326) (not b!78611) (not b!78597) (not b!78626) (not b!78472) (not b!78595) (not b!78470) (not d!14408) (not d!14396) (not b!78469) (not d!14332) (not d!14342) (not b!78480) (not b!78594) (not d!14380) b_and!3613 (not b_lambda!887) b_and!3619 (not d!14392) (not b!78491) b_and!3621 (not b!78475) (not b_next!2537) (not b!78584) (not bm!3672) (not b!78610) (not b_next!2539) (not d!14382) (not b_next!2531) (not d!14398) (not b!78495) (not d!14406) (not b!78617) (not b!78627) (not d!14388) (not d!14316) (not b_next!2529) (not d!14330) (not d!14328) (not d!14336) b_and!3607 (not d!14334) (not d!14384) (not b!78583) (not tb!2413))
(check-sat b_and!3613 b_and!3619 (not b_next!2539) (not b_next!2531) (not b_next!2529) b_and!3607 b_and!3621 (not b_next!2537))
(get-model)

(declare-fun b!78679 () Bool)

(declare-fun e!44062 () List!1402)

(declare-fun list!460 (IArray!827) List!1402)

(assert (=> b!78679 (= e!44062 (list!460 (xs!2992 (c!20016 (_1!908 lt!16538)))))))

(declare-fun b!78677 () Bool)

(declare-fun e!44061 () List!1402)

(assert (=> b!78677 (= e!44061 Nil!1396)))

(declare-fun d!14430 () Bool)

(declare-fun c!20050 () Bool)

(assert (=> d!14430 (= c!20050 ((_ is Empty!413) (c!20016 (_1!908 lt!16538))))))

(assert (=> d!14430 (= (list!457 (c!20016 (_1!908 lt!16538))) e!44061)))

(declare-fun b!78678 () Bool)

(assert (=> b!78678 (= e!44061 e!44062)))

(declare-fun c!20051 () Bool)

(assert (=> b!78678 (= c!20051 ((_ is Leaf!701) (c!20016 (_1!908 lt!16538))))))

(declare-fun b!78680 () Bool)

(declare-fun ++!133 (List!1402 List!1402) List!1402)

(assert (=> b!78680 (= e!44062 (++!133 (list!457 (left!1058 (c!20016 (_1!908 lt!16538)))) (list!457 (right!1388 (c!20016 (_1!908 lt!16538))))))))

(assert (= (and d!14430 c!20050) b!78677))

(assert (= (and d!14430 (not c!20050)) b!78678))

(assert (= (and b!78678 c!20051) b!78679))

(assert (= (and b!78678 (not c!20051)) b!78680))

(declare-fun m!52332 () Bool)

(assert (=> b!78679 m!52332))

(declare-fun m!52334 () Bool)

(assert (=> b!78680 m!52334))

(declare-fun m!52336 () Bool)

(assert (=> b!78680 m!52336))

(assert (=> b!78680 m!52334))

(assert (=> b!78680 m!52336))

(declare-fun m!52338 () Bool)

(assert (=> b!78680 m!52338))

(assert (=> d!14312 d!14430))

(declare-fun d!14432 () Bool)

(declare-fun c!20054 () Bool)

(assert (=> d!14432 (= c!20054 ((_ is Node!412) (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))))))

(declare-fun e!44067 () Bool)

(assert (=> d!14432 (= (inv!1752 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))) e!44067)))

(declare-fun b!78687 () Bool)

(declare-fun inv!1754 (Conc!412) Bool)

(assert (=> b!78687 (= e!44067 (inv!1754 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))))))

(declare-fun b!78688 () Bool)

(declare-fun e!44068 () Bool)

(assert (=> b!78688 (= e!44067 e!44068)))

(declare-fun res!41091 () Bool)

(assert (=> b!78688 (= res!41091 (not ((_ is Leaf!700) (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))))))

(assert (=> b!78688 (=> res!41091 e!44068)))

(declare-fun b!78689 () Bool)

(declare-fun inv!1755 (Conc!412) Bool)

(assert (=> b!78689 (= e!44068 (inv!1755 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))))))

(assert (= (and d!14432 c!20054) b!78687))

(assert (= (and d!14432 (not c!20054)) b!78688))

(assert (= (and b!78688 (not res!41091)) b!78689))

(declare-fun m!52340 () Bool)

(assert (=> b!78687 m!52340))

(declare-fun m!52342 () Bool)

(assert (=> b!78689 m!52342))

(assert (=> b!78480 d!14432))

(declare-fun b!78701 () Bool)

(declare-fun e!44074 () List!1400)

(assert (=> b!78701 (= e!44074 (++!130 (list!458 (left!1057 (c!20014 (_2!908 lt!16538)))) (list!458 (right!1387 (c!20014 (_2!908 lt!16538))))))))

(declare-fun d!14434 () Bool)

(declare-fun c!20059 () Bool)

(assert (=> d!14434 (= c!20059 ((_ is Empty!412) (c!20014 (_2!908 lt!16538))))))

(declare-fun e!44073 () List!1400)

(assert (=> d!14434 (= (list!458 (c!20014 (_2!908 lt!16538))) e!44073)))

(declare-fun b!78699 () Bool)

(assert (=> b!78699 (= e!44073 e!44074)))

(declare-fun c!20060 () Bool)

(assert (=> b!78699 (= c!20060 ((_ is Leaf!700) (c!20014 (_2!908 lt!16538))))))

(declare-fun b!78700 () Bool)

(declare-fun list!461 (IArray!825) List!1400)

(assert (=> b!78700 (= e!44074 (list!461 (xs!2991 (c!20014 (_2!908 lt!16538)))))))

(declare-fun b!78698 () Bool)

(assert (=> b!78698 (= e!44073 Nil!1394)))

(assert (= (and d!14434 c!20059) b!78698))

(assert (= (and d!14434 (not c!20059)) b!78699))

(assert (= (and b!78699 c!20060) b!78700))

(assert (= (and b!78699 (not c!20060)) b!78701))

(declare-fun m!52344 () Bool)

(assert (=> b!78701 m!52344))

(declare-fun m!52346 () Bool)

(assert (=> b!78701 m!52346))

(assert (=> b!78701 m!52344))

(assert (=> b!78701 m!52346))

(declare-fun m!52348 () Bool)

(assert (=> b!78701 m!52348))

(declare-fun m!52350 () Bool)

(assert (=> b!78700 m!52350))

(assert (=> d!14396 d!14434))

(declare-fun b!78704 () Bool)

(declare-fun e!44076 () List!1402)

(assert (=> b!78704 (= e!44076 (list!460 (xs!2992 (c!20016 (_1!908 lt!16548)))))))

(declare-fun b!78702 () Bool)

(declare-fun e!44075 () List!1402)

(assert (=> b!78702 (= e!44075 Nil!1396)))

(declare-fun d!14436 () Bool)

(declare-fun c!20061 () Bool)

(assert (=> d!14436 (= c!20061 ((_ is Empty!413) (c!20016 (_1!908 lt!16548))))))

(assert (=> d!14436 (= (list!457 (c!20016 (_1!908 lt!16548))) e!44075)))

(declare-fun b!78703 () Bool)

(assert (=> b!78703 (= e!44075 e!44076)))

(declare-fun c!20062 () Bool)

(assert (=> b!78703 (= c!20062 ((_ is Leaf!701) (c!20016 (_1!908 lt!16548))))))

(declare-fun b!78705 () Bool)

(assert (=> b!78705 (= e!44076 (++!133 (list!457 (left!1058 (c!20016 (_1!908 lt!16548)))) (list!457 (right!1388 (c!20016 (_1!908 lt!16548))))))))

(assert (= (and d!14436 c!20061) b!78702))

(assert (= (and d!14436 (not c!20061)) b!78703))

(assert (= (and b!78703 c!20062) b!78704))

(assert (= (and b!78703 (not c!20062)) b!78705))

(declare-fun m!52352 () Bool)

(assert (=> b!78704 m!52352))

(declare-fun m!52354 () Bool)

(assert (=> b!78705 m!52354))

(declare-fun m!52356 () Bool)

(assert (=> b!78705 m!52356))

(assert (=> b!78705 m!52354))

(assert (=> b!78705 m!52356))

(declare-fun m!52358 () Bool)

(assert (=> b!78705 m!52358))

(assert (=> d!14380 d!14436))

(declare-fun d!14438 () Bool)

(declare-fun lt!16664 () Int)

(declare-fun size!1218 (List!1402) Int)

(assert (=> d!14438 (= lt!16664 (size!1218 (list!453 (_1!908 lt!16648))))))

(declare-fun size!1219 (Conc!413) Int)

(assert (=> d!14438 (= lt!16664 (size!1219 (c!20016 (_1!908 lt!16648))))))

(assert (=> d!14438 (= (size!1215 (_1!908 lt!16648)) lt!16664)))

(declare-fun bs!8175 () Bool)

(assert (= bs!8175 d!14438))

(assert (=> bs!8175 m!52266))

(assert (=> bs!8175 m!52266))

(declare-fun m!52360 () Bool)

(assert (=> bs!8175 m!52360))

(declare-fun m!52362 () Bool)

(assert (=> bs!8175 m!52362))

(assert (=> d!14408 d!14438))

(declare-fun b!78720 () Bool)

(declare-fun e!44086 () Bool)

(declare-fun lt!16747 () tuple2!1402)

(declare-fun lexRec!24 (LexerInterface!197 List!1403 BalanceConc!828) tuple2!1402)

(assert (=> b!78720 (= e!44086 (= (list!454 (_2!908 lt!16747)) (list!454 (_2!908 (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 input!2238))))))))

(declare-datatypes ((tuple2!1410 0))(
  ( (tuple2!1411 (_1!912 Token!370) (_2!912 BalanceConc!828)) )
))
(declare-datatypes ((Option!112 0))(
  ( (None!111) (Some!111 (v!12790 tuple2!1410)) )
))
(declare-fun lt!16767 () Option!112)

(declare-fun lt!16760 () BalanceConc!828)

(declare-fun e!44088 () tuple2!1402)

(declare-fun b!78721 () Bool)

(declare-fun append!25 (BalanceConc!830 Token!370) BalanceConc!830)

(assert (=> b!78721 (= e!44088 (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 input!2238) lt!16760 (_2!912 (v!12790 lt!16767)) (append!25 (BalanceConc!831 Empty!413) (_1!912 (v!12790 lt!16767)))))))

(declare-fun lt!16757 () tuple2!1402)

(assert (=> b!78721 (= lt!16757 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!16767))))))

(declare-fun lt!16764 () List!1400)

(assert (=> b!78721 (= lt!16764 (list!454 (BalanceConc!829 Empty!412)))))

(declare-fun lt!16739 () List!1400)

(assert (=> b!78721 (= lt!16739 (list!454 (charsOf!42 (_1!912 (v!12790 lt!16767)))))))

(declare-fun lt!16742 () List!1400)

(assert (=> b!78721 (= lt!16742 (list!454 (_2!912 (v!12790 lt!16767))))))

(declare-fun lt!16738 () Unit!852)

(declare-fun lemmaConcatAssociativity!42 (List!1400 List!1400 List!1400) Unit!852)

(assert (=> b!78721 (= lt!16738 (lemmaConcatAssociativity!42 lt!16764 lt!16739 lt!16742))))

(assert (=> b!78721 (= (++!130 (++!130 lt!16764 lt!16739) lt!16742) (++!130 lt!16764 (++!130 lt!16739 lt!16742)))))

(declare-fun lt!16748 () Unit!852)

(assert (=> b!78721 (= lt!16748 lt!16738)))

(declare-fun lt!16749 () Option!112)

(declare-fun maxPrefixZipperSequence!22 (LexerInterface!197 List!1403 BalanceConc!828) Option!112)

(assert (=> b!78721 (= lt!16749 (maxPrefixZipperSequence!22 thiss!19403 rules!2471 (seqFromList!122 input!2238)))))

(declare-fun c!20071 () Bool)

(assert (=> b!78721 (= c!20071 ((_ is Some!111) lt!16749))))

(declare-fun e!44085 () tuple2!1402)

(assert (=> b!78721 (= (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 input!2238)) e!44085)))

(declare-fun lt!16744 () Unit!852)

(declare-fun Unit!856 () Unit!852)

(assert (=> b!78721 (= lt!16744 Unit!856)))

(declare-fun lt!16746 () List!1402)

(assert (=> b!78721 (= lt!16746 (list!453 (BalanceConc!831 Empty!413)))))

(declare-fun lt!16754 () List!1402)

(assert (=> b!78721 (= lt!16754 (Cons!1396 (_1!912 (v!12790 lt!16767)) Nil!1396))))

(declare-fun lt!16741 () List!1402)

(assert (=> b!78721 (= lt!16741 (list!453 (_1!908 lt!16757)))))

(declare-fun lt!16740 () Unit!852)

(declare-fun lemmaConcatAssociativity!43 (List!1402 List!1402 List!1402) Unit!852)

(assert (=> b!78721 (= lt!16740 (lemmaConcatAssociativity!43 lt!16746 lt!16754 lt!16741))))

(assert (=> b!78721 (= (++!133 (++!133 lt!16746 lt!16754) lt!16741) (++!133 lt!16746 (++!133 lt!16754 lt!16741)))))

(declare-fun lt!16745 () Unit!852)

(assert (=> b!78721 (= lt!16745 lt!16740)))

(declare-fun lt!16756 () List!1400)

(assert (=> b!78721 (= lt!16756 (++!130 (list!454 (BalanceConc!829 Empty!412)) (list!454 (charsOf!42 (_1!912 (v!12790 lt!16767))))))))

(declare-fun lt!16765 () List!1400)

(assert (=> b!78721 (= lt!16765 (list!454 (_2!912 (v!12790 lt!16767))))))

(declare-fun lt!16770 () List!1402)

(assert (=> b!78721 (= lt!16770 (list!453 (append!25 (BalanceConc!831 Empty!413) (_1!912 (v!12790 lt!16767)))))))

(declare-fun lt!16737 () Unit!852)

(declare-fun lemmaLexThenLexPrefix!19 (LexerInterface!197 List!1403 List!1400 List!1400 List!1402 List!1402 List!1400) Unit!852)

(assert (=> b!78721 (= lt!16737 (lemmaLexThenLexPrefix!19 thiss!19403 rules!2471 lt!16756 lt!16765 lt!16770 (list!453 (_1!908 lt!16757)) (list!454 (_2!908 lt!16757))))))

(assert (=> b!78721 (= (lexList!41 thiss!19403 rules!2471 lt!16756) (tuple2!1407 lt!16770 Nil!1394))))

(declare-fun lt!16763 () Unit!852)

(assert (=> b!78721 (= lt!16763 lt!16737)))

(declare-fun lt!16750 () BalanceConc!828)

(declare-fun ++!135 (BalanceConc!828 BalanceConc!828) BalanceConc!828)

(assert (=> b!78721 (= lt!16750 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!16767)))))))

(declare-fun lt!16759 () Option!112)

(assert (=> b!78721 (= lt!16759 (maxPrefixZipperSequence!22 thiss!19403 rules!2471 lt!16750))))

(declare-fun c!20070 () Bool)

(assert (=> b!78721 (= c!20070 ((_ is Some!111) lt!16759))))

(declare-fun e!44087 () tuple2!1402)

(assert (=> b!78721 (= (lexRec!24 thiss!19403 rules!2471 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!16767))))) e!44087)))

(declare-fun lt!16752 () Unit!852)

(declare-fun Unit!857 () Unit!852)

(assert (=> b!78721 (= lt!16752 Unit!857)))

(assert (=> b!78721 (= lt!16760 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!16767)))))))

(declare-fun lt!16761 () List!1400)

(assert (=> b!78721 (= lt!16761 (list!454 lt!16760))))

(declare-fun lt!16753 () List!1400)

(assert (=> b!78721 (= lt!16753 (list!454 (_2!912 (v!12790 lt!16767))))))

(declare-fun lt!16762 () Unit!852)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!19 (List!1400 List!1400) Unit!852)

(assert (=> b!78721 (= lt!16762 (lemmaConcatTwoListThenFSndIsSuffix!19 lt!16761 lt!16753))))

(declare-fun isSuffix!19 (List!1400 List!1400) Bool)

(assert (=> b!78721 (isSuffix!19 lt!16753 (++!130 lt!16761 lt!16753))))

(declare-fun lt!16751 () Unit!852)

(assert (=> b!78721 (= lt!16751 lt!16762)))

(declare-fun b!78722 () Bool)

(declare-fun lt!16743 () tuple2!1402)

(assert (=> b!78722 (= lt!16743 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!16749))))))

(assert (=> b!78722 (= e!44085 (tuple2!1403 (prepend!59 (_1!908 lt!16743) (_1!912 (v!12790 lt!16749))) (_2!908 lt!16743)))))

(declare-fun b!78723 () Bool)

(assert (=> b!78723 (= e!44085 (tuple2!1403 (BalanceConc!831 Empty!413) (seqFromList!122 input!2238)))))

(declare-fun lt!16758 () tuple2!1402)

(declare-fun b!78724 () Bool)

(assert (=> b!78724 (= lt!16758 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!16759))))))

(assert (=> b!78724 (= e!44087 (tuple2!1403 (prepend!59 (_1!908 lt!16758) (_1!912 (v!12790 lt!16759))) (_2!908 lt!16758)))))

(declare-fun b!78726 () Bool)

(assert (=> b!78726 (= e!44087 (tuple2!1403 (BalanceConc!831 Empty!413) lt!16750))))

(declare-fun b!78725 () Bool)

(assert (=> b!78725 (= e!44088 (tuple2!1403 (BalanceConc!831 Empty!413) (seqFromList!122 input!2238)))))

(declare-fun d!14440 () Bool)

(assert (=> d!14440 e!44086))

(declare-fun res!41094 () Bool)

(assert (=> d!14440 (=> (not res!41094) (not e!44086))))

(assert (=> d!14440 (= res!41094 (= (list!453 (_1!908 lt!16747)) (list!453 (_1!908 (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 input!2238))))))))

(assert (=> d!14440 (= lt!16747 e!44088)))

(declare-fun c!20069 () Bool)

(assert (=> d!14440 (= c!20069 ((_ is Some!111) lt!16767))))

(declare-fun maxPrefixZipperSequenceV2!19 (LexerInterface!197 List!1403 BalanceConc!828 BalanceConc!828) Option!112)

(assert (=> d!14440 (= lt!16767 (maxPrefixZipperSequenceV2!19 thiss!19403 rules!2471 (seqFromList!122 input!2238) (seqFromList!122 input!2238)))))

(declare-fun lt!16766 () Unit!852)

(declare-fun lt!16769 () Unit!852)

(assert (=> d!14440 (= lt!16766 lt!16769)))

(declare-fun lt!16768 () List!1400)

(declare-fun lt!16755 () List!1400)

(assert (=> d!14440 (isSuffix!19 lt!16768 (++!130 lt!16755 lt!16768))))

(assert (=> d!14440 (= lt!16769 (lemmaConcatTwoListThenFSndIsSuffix!19 lt!16755 lt!16768))))

(assert (=> d!14440 (= lt!16768 (list!454 (seqFromList!122 input!2238)))))

(assert (=> d!14440 (= lt!16755 (list!454 (BalanceConc!829 Empty!412)))))

(assert (=> d!14440 (= (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 input!2238) (BalanceConc!829 Empty!412) (seqFromList!122 input!2238) (BalanceConc!831 Empty!413)) lt!16747)))

(assert (= (and d!14440 c!20069) b!78721))

(assert (= (and d!14440 (not c!20069)) b!78725))

(assert (= (and b!78721 c!20071) b!78722))

(assert (= (and b!78721 (not c!20071)) b!78723))

(assert (= (and b!78721 c!20070) b!78724))

(assert (= (and b!78721 (not c!20070)) b!78726))

(assert (= (and d!14440 res!41094) b!78720))

(declare-fun m!52380 () Bool)

(assert (=> b!78721 m!52380))

(declare-fun m!52382 () Bool)

(assert (=> b!78721 m!52382))

(assert (=> b!78721 m!51922))

(declare-fun m!52384 () Bool)

(assert (=> b!78721 m!52384))

(declare-fun m!52386 () Bool)

(assert (=> b!78721 m!52386))

(declare-fun m!52388 () Bool)

(assert (=> b!78721 m!52388))

(declare-fun m!52390 () Bool)

(assert (=> b!78721 m!52390))

(declare-fun m!52392 () Bool)

(assert (=> b!78721 m!52392))

(assert (=> b!78721 m!52386))

(declare-fun m!52394 () Bool)

(assert (=> b!78721 m!52394))

(assert (=> b!78721 m!51922))

(declare-fun m!52396 () Bool)

(assert (=> b!78721 m!52396))

(declare-fun m!52398 () Bool)

(assert (=> b!78721 m!52398))

(declare-fun m!52400 () Bool)

(assert (=> b!78721 m!52400))

(declare-fun m!52402 () Bool)

(assert (=> b!78721 m!52402))

(assert (=> b!78721 m!52388))

(declare-fun m!52404 () Bool)

(assert (=> b!78721 m!52404))

(assert (=> b!78721 m!51922))

(assert (=> b!78721 m!52398))

(declare-fun m!52406 () Bool)

(assert (=> b!78721 m!52406))

(declare-fun m!52408 () Bool)

(assert (=> b!78721 m!52408))

(declare-fun m!52410 () Bool)

(assert (=> b!78721 m!52410))

(declare-fun m!52412 () Bool)

(assert (=> b!78721 m!52412))

(declare-fun m!52414 () Bool)

(assert (=> b!78721 m!52414))

(declare-fun m!52416 () Bool)

(assert (=> b!78721 m!52416))

(declare-fun m!52418 () Bool)

(assert (=> b!78721 m!52418))

(declare-fun m!52420 () Bool)

(assert (=> b!78721 m!52420))

(declare-fun m!52422 () Bool)

(assert (=> b!78721 m!52422))

(assert (=> b!78721 m!52410))

(declare-fun m!52424 () Bool)

(assert (=> b!78721 m!52424))

(declare-fun m!52426 () Bool)

(assert (=> b!78721 m!52426))

(declare-fun m!52428 () Bool)

(assert (=> b!78721 m!52428))

(declare-fun m!52430 () Bool)

(assert (=> b!78721 m!52430))

(assert (=> b!78721 m!52408))

(assert (=> b!78721 m!52390))

(assert (=> b!78721 m!52398))

(declare-fun m!52432 () Bool)

(assert (=> b!78721 m!52432))

(declare-fun m!52434 () Bool)

(assert (=> b!78721 m!52434))

(declare-fun m!52436 () Bool)

(assert (=> b!78721 m!52436))

(assert (=> b!78721 m!52434))

(assert (=> b!78721 m!52402))

(assert (=> b!78721 m!52436))

(declare-fun m!52438 () Bool)

(assert (=> b!78721 m!52438))

(declare-fun m!52440 () Bool)

(assert (=> b!78721 m!52440))

(assert (=> b!78721 m!52426))

(declare-fun m!52442 () Bool)

(assert (=> b!78721 m!52442))

(declare-fun m!52444 () Bool)

(assert (=> b!78721 m!52444))

(assert (=> b!78721 m!52428))

(assert (=> b!78721 m!52434))

(assert (=> b!78721 m!52414))

(declare-fun m!52446 () Bool)

(assert (=> b!78720 m!52446))

(assert (=> b!78720 m!51922))

(assert (=> b!78720 m!52396))

(declare-fun m!52448 () Bool)

(assert (=> b!78720 m!52448))

(declare-fun m!52450 () Bool)

(assert (=> d!14440 m!52450))

(assert (=> d!14440 m!51922))

(assert (=> d!14440 m!52260))

(assert (=> d!14440 m!51922))

(assert (=> d!14440 m!52396))

(assert (=> d!14440 m!51922))

(assert (=> d!14440 m!51922))

(declare-fun m!52452 () Bool)

(assert (=> d!14440 m!52452))

(declare-fun m!52454 () Bool)

(assert (=> d!14440 m!52454))

(declare-fun m!52456 () Bool)

(assert (=> d!14440 m!52456))

(declare-fun m!52458 () Bool)

(assert (=> d!14440 m!52458))

(assert (=> d!14440 m!52402))

(assert (=> d!14440 m!52456))

(declare-fun m!52460 () Bool)

(assert (=> d!14440 m!52460))

(declare-fun m!52462 () Bool)

(assert (=> b!78722 m!52462))

(declare-fun m!52464 () Bool)

(assert (=> b!78722 m!52464))

(declare-fun m!52466 () Bool)

(assert (=> b!78724 m!52466))

(declare-fun m!52468 () Bool)

(assert (=> b!78724 m!52468))

(assert (=> d!14408 d!14440))

(declare-fun d!14448 () Bool)

(declare-fun isBalanced!82 (Conc!412) Bool)

(assert (=> d!14448 (= (inv!1753 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))) (isBalanced!82 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))))))

(declare-fun bs!8179 () Bool)

(assert (= bs!8179 d!14448))

(declare-fun m!52470 () Bool)

(assert (=> bs!8179 m!52470))

(assert (=> tb!2413 d!14448))

(declare-fun d!14450 () Bool)

(assert (=> d!14450 true))

(declare-fun lambda!1443 () Int)

(declare-fun order!533 () Int)

(declare-fun order!531 () Int)

(declare-fun dynLambda!333 (Int Int) Int)

(declare-fun dynLambda!334 (Int Int) Int)

(assert (=> d!14450 (< (dynLambda!333 order!531 (toChars!675 (transformation!305 (h!6794 rules!2471)))) (dynLambda!334 order!533 lambda!1443))))

(assert (=> d!14450 true))

(declare-fun order!535 () Int)

(declare-fun dynLambda!335 (Int Int) Int)

(assert (=> d!14450 (< (dynLambda!335 order!535 (toValue!816 (transformation!305 (h!6794 rules!2471)))) (dynLambda!334 order!533 lambda!1443))))

(declare-fun Forall!41 (Int) Bool)

(assert (=> d!14450 (= (semiInverseModEq!53 (toChars!675 (transformation!305 (h!6794 rules!2471))) (toValue!816 (transformation!305 (h!6794 rules!2471)))) (Forall!41 lambda!1443))))

(declare-fun bs!8187 () Bool)

(assert (= bs!8187 d!14450))

(declare-fun m!52502 () Bool)

(assert (=> bs!8187 m!52502))

(assert (=> d!14404 d!14450))

(declare-fun d!14472 () Bool)

(declare-fun lt!16789 () Int)

(assert (=> d!14472 (= lt!16789 (size!1213 (list!454 (_2!908 lt!16635))))))

(declare-fun size!1220 (Conc!412) Int)

(assert (=> d!14472 (= lt!16789 (size!1220 (c!20014 (_2!908 lt!16635))))))

(assert (=> d!14472 (= (size!1214 (_2!908 lt!16635)) lt!16789)))

(declare-fun bs!8188 () Bool)

(assert (= bs!8188 d!14472))

(assert (=> bs!8188 m!52198))

(assert (=> bs!8188 m!52198))

(declare-fun m!52504 () Bool)

(assert (=> bs!8188 m!52504))

(declare-fun m!52506 () Bool)

(assert (=> bs!8188 m!52506))

(assert (=> b!78584 d!14472))

(declare-fun d!14474 () Bool)

(declare-fun lt!16790 () Int)

(assert (=> d!14474 (= lt!16790 (size!1213 (list!454 (seqFromList!122 (_2!909 lt!16550)))))))

(assert (=> d!14474 (= lt!16790 (size!1220 (c!20014 (seqFromList!122 (_2!909 lt!16550)))))))

(assert (=> d!14474 (= (size!1214 (seqFromList!122 (_2!909 lt!16550))) lt!16790)))

(declare-fun bs!8189 () Bool)

(assert (= bs!8189 d!14474))

(assert (=> bs!8189 m!51908))

(assert (=> bs!8189 m!52200))

(assert (=> bs!8189 m!52200))

(declare-fun m!52508 () Bool)

(assert (=> bs!8189 m!52508))

(declare-fun m!52510 () Bool)

(assert (=> bs!8189 m!52510))

(assert (=> b!78584 d!14474))

(declare-fun d!14476 () Bool)

(assert (=> d!14476 (= (list!453 (_1!908 lt!16635)) (list!457 (c!20016 (_1!908 lt!16635))))))

(declare-fun bs!8190 () Bool)

(assert (= bs!8190 d!14476))

(declare-fun m!52512 () Bool)

(assert (=> bs!8190 m!52512))

(assert (=> b!78586 d!14476))

(declare-fun b!78782 () Bool)

(declare-fun e!44116 () Bool)

(declare-fun lt!16888 () tuple2!1406)

(declare-fun isEmpty!455 (List!1402) Bool)

(assert (=> b!78782 (= e!44116 (not (isEmpty!455 (_1!910 lt!16888))))))

(declare-fun d!14478 () Bool)

(declare-fun e!44117 () Bool)

(assert (=> d!14478 e!44117))

(declare-fun c!20093 () Bool)

(assert (=> d!14478 (= c!20093 (> (size!1218 (_1!910 lt!16888)) 0))))

(declare-fun e!44115 () tuple2!1406)

(assert (=> d!14478 (= lt!16888 e!44115)))

(declare-fun c!20092 () Bool)

(declare-fun lt!16887 () Option!110)

(assert (=> d!14478 (= c!20092 ((_ is Some!109) lt!16887))))

(assert (=> d!14478 (= lt!16887 (maxPrefix!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 lt!16550)))))))

(assert (=> d!14478 (= (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 lt!16550)))) lt!16888)))

(declare-fun b!78783 () Bool)

(assert (=> b!78783 (= e!44117 e!44116)))

(declare-fun res!41102 () Bool)

(assert (=> b!78783 (= res!41102 (< (size!1213 (_2!910 lt!16888)) (size!1213 (list!454 (seqFromList!122 (_2!909 lt!16550))))))))

(assert (=> b!78783 (=> (not res!41102) (not e!44116))))

(declare-fun b!78784 () Bool)

(assert (=> b!78784 (= e!44115 (tuple2!1407 Nil!1396 (list!454 (seqFromList!122 (_2!909 lt!16550)))))))

(declare-fun b!78785 () Bool)

(assert (=> b!78785 (= e!44117 (= (_2!910 lt!16888) (list!454 (seqFromList!122 (_2!909 lt!16550)))))))

(declare-fun b!78786 () Bool)

(declare-fun lt!16889 () tuple2!1406)

(assert (=> b!78786 (= e!44115 (tuple2!1407 (Cons!1396 (_1!909 (v!12778 lt!16887)) (_1!910 lt!16889)) (_2!910 lt!16889)))))

(assert (=> b!78786 (= lt!16889 (lexList!41 thiss!19403 rules!2471 (_2!909 (v!12778 lt!16887))))))

(assert (= (and d!14478 c!20092) b!78786))

(assert (= (and d!14478 (not c!20092)) b!78784))

(assert (= (and d!14478 c!20093) b!78783))

(assert (= (and d!14478 (not c!20093)) b!78785))

(assert (= (and b!78783 res!41102) b!78782))

(declare-fun m!52604 () Bool)

(assert (=> b!78782 m!52604))

(declare-fun m!52606 () Bool)

(assert (=> d!14478 m!52606))

(assert (=> d!14478 m!52200))

(declare-fun m!52608 () Bool)

(assert (=> d!14478 m!52608))

(declare-fun m!52610 () Bool)

(assert (=> b!78783 m!52610))

(assert (=> b!78783 m!52200))

(assert (=> b!78783 m!52508))

(declare-fun m!52612 () Bool)

(assert (=> b!78786 m!52612))

(assert (=> b!78586 d!14478))

(declare-fun d!14482 () Bool)

(assert (=> d!14482 (= (list!454 (seqFromList!122 (_2!909 lt!16550))) (list!458 (c!20014 (seqFromList!122 (_2!909 lt!16550)))))))

(declare-fun bs!8191 () Bool)

(assert (= bs!8191 d!14482))

(declare-fun m!52614 () Bool)

(assert (=> bs!8191 m!52614))

(assert (=> b!78586 d!14482))

(declare-fun d!14484 () Bool)

(assert (=> d!14484 (= (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))) (list!458 (c!20014 (charsOf!42 (_1!909 (get!346 lt!16571))))))))

(declare-fun bs!8192 () Bool)

(assert (= bs!8192 d!14484))

(declare-fun m!52616 () Bool)

(assert (=> bs!8192 m!52616))

(assert (=> b!78472 d!14484))

(declare-fun d!14486 () Bool)

(declare-fun lt!16890 () BalanceConc!828)

(assert (=> d!14486 (= (list!454 lt!16890) (originalCharacters!356 (_1!909 (get!346 lt!16571))))))

(assert (=> d!14486 (= lt!16890 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571))))) (value!11588 (_1!909 (get!346 lt!16571)))))))

(assert (=> d!14486 (= (charsOf!42 (_1!909 (get!346 lt!16571))) lt!16890)))

(declare-fun b_lambda!889 () Bool)

(assert (=> (not b_lambda!889) (not d!14486)))

(declare-fun tb!2419 () Bool)

(declare-fun t!20244 () Bool)

(assert (=> (and b!78419 (= (toChars!675 (transformation!305 (h!6794 rules!2471))) (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20244) tb!2419))

(declare-fun b!78787 () Bool)

(declare-fun e!44118 () Bool)

(declare-fun tp!50153 () Bool)

(assert (=> b!78787 (= e!44118 (and (inv!1752 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571))))) (value!11588 (_1!909 (get!346 lt!16571)))))) tp!50153))))

(declare-fun result!3484 () Bool)

(assert (=> tb!2419 (= result!3484 (and (inv!1753 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571))))) (value!11588 (_1!909 (get!346 lt!16571))))) e!44118))))

(assert (= tb!2419 b!78787))

(declare-fun m!52618 () Bool)

(assert (=> b!78787 m!52618))

(declare-fun m!52620 () Bool)

(assert (=> tb!2419 m!52620))

(assert (=> d!14486 t!20244))

(declare-fun b_and!3623 () Bool)

(assert (= b_and!3613 (and (=> t!20244 result!3484) b_and!3623)))

(declare-fun t!20246 () Bool)

(declare-fun tb!2421 () Bool)

(assert (=> (and b!78628 (= (toChars!675 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20246) tb!2421))

(declare-fun result!3486 () Bool)

(assert (= result!3486 result!3484))

(assert (=> d!14486 t!20246))

(declare-fun b_and!3625 () Bool)

(assert (= b_and!3621 (and (=> t!20246 result!3486) b_and!3625)))

(declare-fun m!52622 () Bool)

(assert (=> d!14486 m!52622))

(declare-fun m!52624 () Bool)

(assert (=> d!14486 m!52624))

(assert (=> b!78472 d!14486))

(declare-fun d!14488 () Bool)

(assert (=> d!14488 (= (get!346 lt!16571) (v!12778 lt!16571))))

(assert (=> b!78472 d!14488))

(declare-fun d!14490 () Bool)

(assert (=> d!14490 (= (isEmpty!451 (list!454 (_2!908 lt!16538))) ((_ is Nil!1394) (list!454 (_2!908 lt!16538))))))

(assert (=> d!14406 d!14490))

(assert (=> d!14406 d!14396))

(declare-fun d!14492 () Bool)

(declare-fun lt!16899 () Bool)

(assert (=> d!14492 (= lt!16899 (isEmpty!451 (list!458 (c!20014 (_2!908 lt!16538)))))))

(assert (=> d!14492 (= lt!16899 (= (size!1220 (c!20014 (_2!908 lt!16538))) 0))))

(assert (=> d!14492 (= (isEmpty!452 (c!20014 (_2!908 lt!16538))) lt!16899)))

(declare-fun bs!8194 () Bool)

(assert (= bs!8194 d!14492))

(assert (=> bs!8194 m!52236))

(assert (=> bs!8194 m!52236))

(declare-fun m!52634 () Bool)

(assert (=> bs!8194 m!52634))

(declare-fun m!52638 () Bool)

(assert (=> bs!8194 m!52638))

(assert (=> d!14406 d!14492))

(declare-fun d!14498 () Bool)

(declare-fun e!44129 () Bool)

(assert (=> d!14498 e!44129))

(declare-fun res!41111 () Bool)

(assert (=> d!14498 (=> (not res!41111) (not e!44129))))

(declare-fun lt!16904 () BalanceConc!828)

(assert (=> d!14498 (= res!41111 (= (list!454 lt!16904) (_2!909 lt!16550)))))

(declare-fun fromList!24 (List!1400) Conc!412)

(assert (=> d!14498 (= lt!16904 (BalanceConc!829 (fromList!24 (_2!909 lt!16550))))))

(assert (=> d!14498 (= (fromListB!41 (_2!909 lt!16550)) lt!16904)))

(declare-fun b!78800 () Bool)

(assert (=> b!78800 (= e!44129 (isBalanced!82 (fromList!24 (_2!909 lt!16550))))))

(assert (= (and d!14498 res!41111) b!78800))

(declare-fun m!52652 () Bool)

(assert (=> d!14498 m!52652))

(declare-fun m!52654 () Bool)

(assert (=> d!14498 m!52654))

(assert (=> b!78800 m!52654))

(assert (=> b!78800 m!52654))

(declare-fun m!52656 () Bool)

(assert (=> b!78800 m!52656))

(assert (=> d!14332 d!14498))

(declare-fun d!14504 () Bool)

(declare-fun lt!16905 () Int)

(assert (=> d!14504 (= lt!16905 (size!1213 (list!454 (_2!908 lt!16648))))))

(assert (=> d!14504 (= lt!16905 (size!1220 (c!20014 (_2!908 lt!16648))))))

(assert (=> d!14504 (= (size!1214 (_2!908 lt!16648)) lt!16905)))

(declare-fun bs!8196 () Bool)

(assert (= bs!8196 d!14504))

(assert (=> bs!8196 m!52258))

(assert (=> bs!8196 m!52258))

(declare-fun m!52658 () Bool)

(assert (=> bs!8196 m!52658))

(declare-fun m!52660 () Bool)

(assert (=> bs!8196 m!52660))

(assert (=> b!78595 d!14504))

(declare-fun d!14506 () Bool)

(declare-fun lt!16907 () Int)

(assert (=> d!14506 (= lt!16907 (size!1213 (list!454 (seqFromList!122 input!2238))))))

(assert (=> d!14506 (= lt!16907 (size!1220 (c!20014 (seqFromList!122 input!2238))))))

(assert (=> d!14506 (= (size!1214 (seqFromList!122 input!2238)) lt!16907)))

(declare-fun bs!8197 () Bool)

(assert (= bs!8197 d!14506))

(assert (=> bs!8197 m!51922))

(assert (=> bs!8197 m!52260))

(assert (=> bs!8197 m!52260))

(declare-fun m!52668 () Bool)

(assert (=> bs!8197 m!52668))

(declare-fun m!52670 () Bool)

(assert (=> bs!8197 m!52670))

(assert (=> b!78595 d!14506))

(declare-fun d!14510 () Bool)

(assert (=> d!14510 (= (isDefined!26 lt!16571) (not (isEmpty!449 lt!16571)))))

(declare-fun bs!8199 () Bool)

(assert (= bs!8199 d!14510))

(assert (=> bs!8199 m!51990))

(assert (=> b!78474 d!14510))

(declare-fun d!14514 () Bool)

(declare-fun e!44139 () Bool)

(assert (=> d!14514 e!44139))

(declare-fun res!41115 () Bool)

(assert (=> d!14514 (=> (not res!41115) (not e!44139))))

(declare-fun lt!16910 () BalanceConc!830)

(assert (=> d!14514 (= res!41115 (= (list!453 lt!16910) (t!20225 lt!16546)))))

(declare-fun fromList!25 (List!1402) Conc!413)

(assert (=> d!14514 (= lt!16910 (BalanceConc!831 (fromList!25 (t!20225 lt!16546))))))

(assert (=> d!14514 (= (fromListB!42 (t!20225 lt!16546)) lt!16910)))

(declare-fun b!78816 () Bool)

(assert (=> b!78816 (= e!44139 (isBalanced!80 (fromList!25 (t!20225 lt!16546))))))

(assert (= (and d!14514 res!41115) b!78816))

(declare-fun m!52680 () Bool)

(assert (=> d!14514 m!52680))

(declare-fun m!52682 () Bool)

(assert (=> d!14514 m!52682))

(assert (=> b!78816 m!52682))

(assert (=> b!78816 m!52682))

(declare-fun m!52686 () Bool)

(assert (=> b!78816 m!52686))

(assert (=> d!14384 d!14514))

(declare-fun d!14518 () Bool)

(declare-fun lt!16915 () Int)

(assert (=> d!14518 (>= lt!16915 0)))

(declare-fun e!44145 () Int)

(assert (=> d!14518 (= lt!16915 e!44145)))

(declare-fun c!20109 () Bool)

(assert (=> d!14518 (= c!20109 ((_ is Nil!1394) (_2!909 (get!346 lt!16571))))))

(assert (=> d!14518 (= (size!1213 (_2!909 (get!346 lt!16571))) lt!16915)))

(declare-fun b!78826 () Bool)

(assert (=> b!78826 (= e!44145 0)))

(declare-fun b!78827 () Bool)

(assert (=> b!78827 (= e!44145 (+ 1 (size!1213 (t!20223 (_2!909 (get!346 lt!16571))))))))

(assert (= (and d!14518 c!20109) b!78826))

(assert (= (and d!14518 (not c!20109)) b!78827))

(declare-fun m!52706 () Bool)

(assert (=> b!78827 m!52706))

(assert (=> b!78467 d!14518))

(assert (=> b!78467 d!14488))

(declare-fun d!14524 () Bool)

(declare-fun lt!16916 () Int)

(assert (=> d!14524 (>= lt!16916 0)))

(declare-fun e!44146 () Int)

(assert (=> d!14524 (= lt!16916 e!44146)))

(declare-fun c!20110 () Bool)

(assert (=> d!14524 (= c!20110 ((_ is Nil!1394) input!2238))))

(assert (=> d!14524 (= (size!1213 input!2238) lt!16916)))

(declare-fun b!78828 () Bool)

(assert (=> b!78828 (= e!44146 0)))

(declare-fun b!78829 () Bool)

(assert (=> b!78829 (= e!44146 (+ 1 (size!1213 (t!20223 input!2238))))))

(assert (= (and d!14524 c!20110) b!78828))

(assert (= (and d!14524 (not c!20110)) b!78829))

(declare-fun m!52712 () Bool)

(assert (=> b!78829 m!52712))

(assert (=> b!78467 d!14524))

(declare-fun b!78913 () Bool)

(declare-fun res!41155 () Bool)

(declare-fun e!44193 () Bool)

(assert (=> b!78913 (=> (not res!41155) (not e!44193))))

(declare-fun lt!16985 () Option!110)

(assert (=> b!78913 (= res!41155 (= (++!130 (list!454 (charsOf!42 (_1!909 (get!346 lt!16985)))) (_2!909 (get!346 lt!16985))) input!2238))))

(declare-fun b!78914 () Bool)

(declare-fun e!44192 () Option!110)

(declare-datatypes ((tuple2!1412 0))(
  ( (tuple2!1413 (_1!913 List!1400) (_2!913 List!1400)) )
))
(declare-fun lt!16983 () tuple2!1412)

(assert (=> b!78914 (= e!44192 (Some!109 (tuple2!1405 (Token!371 (apply!187 (transformation!305 (h!6794 rules!2471)) (seqFromList!122 (_1!913 lt!16983))) (h!6794 rules!2471) (size!1214 (seqFromList!122 (_1!913 lt!16983))) (_1!913 lt!16983)) (_2!913 lt!16983))))))

(declare-fun lt!16982 () Unit!852)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!9 (Regex!373 List!1400) Unit!852)

(assert (=> b!78914 (= lt!16982 (longestMatchIsAcceptedByMatchOrIsEmpty!9 (regex!305 (h!6794 rules!2471)) input!2238))))

(declare-fun res!41157 () Bool)

(declare-fun findLongestMatchInner!8 (Regex!373 List!1400 Int List!1400 List!1400 Int) tuple2!1412)

(assert (=> b!78914 (= res!41157 (isEmpty!451 (_1!913 (findLongestMatchInner!8 (regex!305 (h!6794 rules!2471)) Nil!1394 (size!1213 Nil!1394) input!2238 input!2238 (size!1213 input!2238)))))))

(declare-fun e!44195 () Bool)

(assert (=> b!78914 (=> res!41157 e!44195)))

(assert (=> b!78914 e!44195))

(declare-fun lt!16981 () Unit!852)

(assert (=> b!78914 (= lt!16981 lt!16982)))

(declare-fun lt!16984 () Unit!852)

(declare-fun lemmaSemiInverse!7 (TokenValueInjection!414 BalanceConc!828) Unit!852)

(assert (=> b!78914 (= lt!16984 (lemmaSemiInverse!7 (transformation!305 (h!6794 rules!2471)) (seqFromList!122 (_1!913 lt!16983))))))

(declare-fun b!78915 () Bool)

(assert (=> b!78915 (= e!44195 (matchR!19 (regex!305 (h!6794 rules!2471)) (_1!913 (findLongestMatchInner!8 (regex!305 (h!6794 rules!2471)) Nil!1394 (size!1213 Nil!1394) input!2238 input!2238 (size!1213 input!2238)))))))

(declare-fun b!78916 () Bool)

(declare-fun res!41158 () Bool)

(assert (=> b!78916 (=> (not res!41158) (not e!44193))))

(assert (=> b!78916 (= res!41158 (= (rule!784 (_1!909 (get!346 lt!16985))) (h!6794 rules!2471)))))

(declare-fun b!78917 () Bool)

(assert (=> b!78917 (= e!44193 (= (size!1209 (_1!909 (get!346 lt!16985))) (size!1213 (originalCharacters!356 (_1!909 (get!346 lt!16985))))))))

(declare-fun d!14530 () Bool)

(declare-fun e!44194 () Bool)

(assert (=> d!14530 e!44194))

(declare-fun res!41156 () Bool)

(assert (=> d!14530 (=> res!41156 e!44194)))

(assert (=> d!14530 (= res!41156 (isEmpty!449 lt!16985))))

(assert (=> d!14530 (= lt!16985 e!44192)))

(declare-fun c!20134 () Bool)

(assert (=> d!14530 (= c!20134 (isEmpty!451 (_1!913 lt!16983)))))

(declare-fun findLongestMatch!7 (Regex!373 List!1400) tuple2!1412)

(assert (=> d!14530 (= lt!16983 (findLongestMatch!7 (regex!305 (h!6794 rules!2471)) input!2238))))

(declare-fun ruleValid!19 (LexerInterface!197 Rule!410) Bool)

(assert (=> d!14530 (ruleValid!19 thiss!19403 (h!6794 rules!2471))))

(assert (=> d!14530 (= (maxPrefixOneRule!15 thiss!19403 (h!6794 rules!2471) input!2238) lt!16985)))

(declare-fun b!78918 () Bool)

(assert (=> b!78918 (= e!44192 None!109)))

(declare-fun b!78919 () Bool)

(declare-fun res!41153 () Bool)

(assert (=> b!78919 (=> (not res!41153) (not e!44193))))

(assert (=> b!78919 (= res!41153 (= (value!11588 (_1!909 (get!346 lt!16985))) (apply!187 (transformation!305 (rule!784 (_1!909 (get!346 lt!16985)))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16985)))))))))

(declare-fun b!78920 () Bool)

(assert (=> b!78920 (= e!44194 e!44193)))

(declare-fun res!41154 () Bool)

(assert (=> b!78920 (=> (not res!41154) (not e!44193))))

(assert (=> b!78920 (= res!41154 (matchR!19 (regex!305 (h!6794 rules!2471)) (list!454 (charsOf!42 (_1!909 (get!346 lt!16985))))))))

(declare-fun b!78921 () Bool)

(declare-fun res!41159 () Bool)

(assert (=> b!78921 (=> (not res!41159) (not e!44193))))

(assert (=> b!78921 (= res!41159 (< (size!1213 (_2!909 (get!346 lt!16985))) (size!1213 input!2238)))))

(assert (= (and d!14530 c!20134) b!78918))

(assert (= (and d!14530 (not c!20134)) b!78914))

(assert (= (and b!78914 (not res!41157)) b!78915))

(assert (= (and d!14530 (not res!41156)) b!78920))

(assert (= (and b!78920 res!41154) b!78913))

(assert (= (and b!78913 res!41155) b!78921))

(assert (= (and b!78921 res!41159) b!78916))

(assert (= (and b!78916 res!41158) b!78919))

(assert (= (and b!78919 res!41153) b!78917))

(declare-fun m!52912 () Bool)

(assert (=> b!78914 m!52912))

(declare-fun m!52914 () Bool)

(assert (=> b!78914 m!52914))

(assert (=> b!78914 m!52914))

(declare-fun m!52916 () Bool)

(assert (=> b!78914 m!52916))

(assert (=> b!78914 m!52914))

(declare-fun m!52918 () Bool)

(assert (=> b!78914 m!52918))

(assert (=> b!78914 m!52914))

(declare-fun m!52920 () Bool)

(assert (=> b!78914 m!52920))

(declare-fun m!52922 () Bool)

(assert (=> b!78914 m!52922))

(assert (=> b!78914 m!52000))

(declare-fun m!52924 () Bool)

(assert (=> b!78914 m!52924))

(assert (=> b!78914 m!52922))

(assert (=> b!78914 m!52000))

(declare-fun m!52926 () Bool)

(assert (=> b!78914 m!52926))

(declare-fun m!52928 () Bool)

(assert (=> b!78916 m!52928))

(assert (=> b!78917 m!52928))

(declare-fun m!52930 () Bool)

(assert (=> b!78917 m!52930))

(assert (=> b!78921 m!52928))

(declare-fun m!52932 () Bool)

(assert (=> b!78921 m!52932))

(assert (=> b!78921 m!52000))

(assert (=> b!78919 m!52928))

(declare-fun m!52934 () Bool)

(assert (=> b!78919 m!52934))

(assert (=> b!78919 m!52934))

(declare-fun m!52936 () Bool)

(assert (=> b!78919 m!52936))

(declare-fun m!52938 () Bool)

(assert (=> d!14530 m!52938))

(declare-fun m!52940 () Bool)

(assert (=> d!14530 m!52940))

(declare-fun m!52942 () Bool)

(assert (=> d!14530 m!52942))

(declare-fun m!52944 () Bool)

(assert (=> d!14530 m!52944))

(assert (=> b!78915 m!52922))

(assert (=> b!78915 m!52000))

(assert (=> b!78915 m!52922))

(assert (=> b!78915 m!52000))

(assert (=> b!78915 m!52924))

(declare-fun m!52946 () Bool)

(assert (=> b!78915 m!52946))

(assert (=> b!78913 m!52928))

(declare-fun m!52948 () Bool)

(assert (=> b!78913 m!52948))

(assert (=> b!78913 m!52948))

(declare-fun m!52950 () Bool)

(assert (=> b!78913 m!52950))

(assert (=> b!78913 m!52950))

(declare-fun m!52952 () Bool)

(assert (=> b!78913 m!52952))

(assert (=> b!78920 m!52928))

(assert (=> b!78920 m!52948))

(assert (=> b!78920 m!52948))

(assert (=> b!78920 m!52950))

(assert (=> b!78920 m!52950))

(declare-fun m!52954 () Bool)

(assert (=> b!78920 m!52954))

(assert (=> bm!3672 d!14530))

(declare-fun d!14578 () Bool)

(assert (=> d!14578 true))

(declare-fun order!539 () Int)

(declare-fun lambda!1449 () Int)

(declare-fun dynLambda!337 (Int Int) Int)

(assert (=> d!14578 (< (dynLambda!335 order!535 (toValue!816 (transformation!305 (h!6794 rules!2471)))) (dynLambda!337 order!539 lambda!1449))))

(declare-fun Forall2!29 (Int) Bool)

(assert (=> d!14578 (= (equivClasses!49 (toChars!675 (transformation!305 (h!6794 rules!2471))) (toValue!816 (transformation!305 (h!6794 rules!2471)))) (Forall2!29 lambda!1449))))

(declare-fun bs!8209 () Bool)

(assert (= bs!8209 d!14578))

(declare-fun m!52990 () Bool)

(assert (=> bs!8209 m!52990))

(assert (=> b!78593 d!14578))

(declare-fun b!78942 () Bool)

(declare-fun e!44207 () List!1400)

(assert (=> b!78942 (= e!44207 (++!130 (list!458 (left!1057 (c!20014 (_2!908 lt!16548)))) (list!458 (right!1387 (c!20014 (_2!908 lt!16548))))))))

(declare-fun d!14584 () Bool)

(declare-fun c!20140 () Bool)

(assert (=> d!14584 (= c!20140 ((_ is Empty!412) (c!20014 (_2!908 lt!16548))))))

(declare-fun e!44206 () List!1400)

(assert (=> d!14584 (= (list!458 (c!20014 (_2!908 lt!16548))) e!44206)))

(declare-fun b!78940 () Bool)

(assert (=> b!78940 (= e!44206 e!44207)))

(declare-fun c!20141 () Bool)

(assert (=> b!78940 (= c!20141 ((_ is Leaf!700) (c!20014 (_2!908 lt!16548))))))

(declare-fun b!78941 () Bool)

(assert (=> b!78941 (= e!44207 (list!461 (xs!2991 (c!20014 (_2!908 lt!16548)))))))

(declare-fun b!78939 () Bool)

(assert (=> b!78939 (= e!44206 Nil!1394)))

(assert (= (and d!14584 c!20140) b!78939))

(assert (= (and d!14584 (not c!20140)) b!78940))

(assert (= (and b!78940 c!20141) b!78941))

(assert (= (and b!78940 (not c!20141)) b!78942))

(declare-fun m!52992 () Bool)

(assert (=> b!78942 m!52992))

(declare-fun m!52994 () Bool)

(assert (=> b!78942 m!52994))

(assert (=> b!78942 m!52992))

(assert (=> b!78942 m!52994))

(declare-fun m!52996 () Bool)

(assert (=> b!78942 m!52996))

(declare-fun m!52998 () Bool)

(assert (=> b!78941 m!52998))

(assert (=> d!14388 d!14584))

(declare-fun d!14586 () Bool)

(assert (=> d!14586 (= (isEmpty!449 lt!16542) (not ((_ is Some!109) lt!16542)))))

(assert (=> d!14314 d!14586))

(declare-fun b!79001 () Bool)

(declare-fun res!41199 () Bool)

(declare-fun e!44251 () Bool)

(assert (=> b!79001 (=> res!41199 e!44251)))

(declare-fun tail!115 (List!1400) List!1400)

(assert (=> b!79001 (= res!41199 (not (isEmpty!451 (tail!115 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))))))))

(declare-fun b!79002 () Bool)

(declare-fun e!44250 () Bool)

(declare-fun lt!17020 () Bool)

(assert (=> b!79002 (= e!44250 (not lt!17020))))

(declare-fun b!79003 () Bool)

(declare-fun e!44249 () Bool)

(assert (=> b!79003 (= e!44249 e!44251)))

(declare-fun res!41200 () Bool)

(assert (=> b!79003 (=> res!41200 e!44251)))

(declare-fun call!3684 () Bool)

(assert (=> b!79003 (= res!41200 call!3684)))

(declare-fun b!79004 () Bool)

(declare-fun e!44248 () Bool)

(declare-fun derivativeStep!13 (Regex!373 C!1668) Regex!373)

(declare-fun head!417 (List!1400) C!1668)

(assert (=> b!79004 (= e!44248 (matchR!19 (derivativeStep!13 (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))) (head!417 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))))) (tail!115 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))))))))

(declare-fun b!79005 () Bool)

(declare-fun e!44246 () Bool)

(assert (=> b!79005 (= e!44246 e!44249)))

(declare-fun res!41204 () Bool)

(assert (=> b!79005 (=> (not res!41204) (not e!44249))))

(assert (=> b!79005 (= res!41204 (not lt!17020))))

(declare-fun b!79006 () Bool)

(declare-fun res!41205 () Bool)

(assert (=> b!79006 (=> res!41205 e!44246)))

(declare-fun e!44247 () Bool)

(assert (=> b!79006 (= res!41205 e!44247)))

(declare-fun res!41203 () Bool)

(assert (=> b!79006 (=> (not res!41203) (not e!44247))))

(assert (=> b!79006 (= res!41203 lt!17020)))

(declare-fun b!79008 () Bool)

(declare-fun e!44245 () Bool)

(assert (=> b!79008 (= e!44245 (= lt!17020 call!3684))))

(declare-fun b!79009 () Bool)

(declare-fun res!41206 () Bool)

(assert (=> b!79009 (=> res!41206 e!44246)))

(assert (=> b!79009 (= res!41206 (not ((_ is ElementMatch!373) (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))))))))

(assert (=> b!79009 (= e!44250 e!44246)))

(declare-fun bm!3679 () Bool)

(assert (=> bm!3679 (= call!3684 (isEmpty!451 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))))))

(declare-fun b!79010 () Bool)

(declare-fun nullable!31 (Regex!373) Bool)

(assert (=> b!79010 (= e!44248 (nullable!31 (regex!305 (rule!784 (_1!909 (get!346 lt!16571))))))))

(declare-fun b!79011 () Bool)

(declare-fun res!41201 () Bool)

(assert (=> b!79011 (=> (not res!41201) (not e!44247))))

(assert (=> b!79011 (= res!41201 (not call!3684))))

(declare-fun b!79012 () Bool)

(assert (=> b!79012 (= e!44251 (not (= (head!417 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (c!20015 (regex!305 (rule!784 (_1!909 (get!346 lt!16571))))))))))

(declare-fun b!79007 () Bool)

(assert (=> b!79007 (= e!44245 e!44250)))

(declare-fun c!20154 () Bool)

(assert (=> b!79007 (= c!20154 ((_ is EmptyLang!373) (regex!305 (rule!784 (_1!909 (get!346 lt!16571))))))))

(declare-fun d!14594 () Bool)

(assert (=> d!14594 e!44245))

(declare-fun c!20153 () Bool)

(assert (=> d!14594 (= c!20153 ((_ is EmptyExpr!373) (regex!305 (rule!784 (_1!909 (get!346 lt!16571))))))))

(assert (=> d!14594 (= lt!17020 e!44248)))

(declare-fun c!20155 () Bool)

(assert (=> d!14594 (= c!20155 (isEmpty!451 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))))))

(declare-fun validRegex!38 (Regex!373) Bool)

(assert (=> d!14594 (validRegex!38 (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))))))

(assert (=> d!14594 (= (matchR!19 (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))) (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) lt!17020)))

(declare-fun b!79013 () Bool)

(declare-fun res!41202 () Bool)

(assert (=> b!79013 (=> (not res!41202) (not e!44247))))

(assert (=> b!79013 (= res!41202 (isEmpty!451 (tail!115 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))))))))

(declare-fun b!79014 () Bool)

(assert (=> b!79014 (= e!44247 (= (head!417 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (c!20015 (regex!305 (rule!784 (_1!909 (get!346 lt!16571)))))))))

(assert (= (and d!14594 c!20155) b!79010))

(assert (= (and d!14594 (not c!20155)) b!79004))

(assert (= (and d!14594 c!20153) b!79008))

(assert (= (and d!14594 (not c!20153)) b!79007))

(assert (= (and b!79007 c!20154) b!79002))

(assert (= (and b!79007 (not c!20154)) b!79009))

(assert (= (and b!79009 (not res!41206)) b!79006))

(assert (= (and b!79006 res!41203) b!79011))

(assert (= (and b!79011 res!41201) b!79013))

(assert (= (and b!79013 res!41202) b!79014))

(assert (= (and b!79006 (not res!41205)) b!79005))

(assert (= (and b!79005 res!41204) b!79003))

(assert (= (and b!79003 (not res!41200)) b!79001))

(assert (= (and b!79001 (not res!41199)) b!79012))

(assert (= (or b!79008 b!79003 b!79011) bm!3679))

(assert (=> b!79004 m!51976))

(declare-fun m!53028 () Bool)

(assert (=> b!79004 m!53028))

(assert (=> b!79004 m!53028))

(declare-fun m!53030 () Bool)

(assert (=> b!79004 m!53030))

(assert (=> b!79004 m!51976))

(declare-fun m!53032 () Bool)

(assert (=> b!79004 m!53032))

(assert (=> b!79004 m!53030))

(assert (=> b!79004 m!53032))

(declare-fun m!53034 () Bool)

(assert (=> b!79004 m!53034))

(assert (=> b!79013 m!51976))

(assert (=> b!79013 m!53032))

(assert (=> b!79013 m!53032))

(declare-fun m!53036 () Bool)

(assert (=> b!79013 m!53036))

(assert (=> bm!3679 m!51976))

(declare-fun m!53040 () Bool)

(assert (=> bm!3679 m!53040))

(assert (=> b!79012 m!51976))

(assert (=> b!79012 m!53028))

(assert (=> d!14594 m!51976))

(assert (=> d!14594 m!53040))

(declare-fun m!53042 () Bool)

(assert (=> d!14594 m!53042))

(assert (=> b!79001 m!51976))

(assert (=> b!79001 m!53032))

(assert (=> b!79001 m!53032))

(assert (=> b!79001 m!53036))

(declare-fun m!53044 () Bool)

(assert (=> b!79010 m!53044))

(assert (=> b!79014 m!51976))

(assert (=> b!79014 m!53028))

(assert (=> b!78470 d!14594))

(assert (=> b!78470 d!14488))

(assert (=> b!78470 d!14484))

(assert (=> b!78470 d!14486))

(declare-fun d!14614 () Bool)

(declare-fun e!44253 () Bool)

(assert (=> d!14614 e!44253))

(declare-fun res!41208 () Bool)

(assert (=> d!14614 (=> (not res!41208) (not e!44253))))

(declare-fun lt!17024 () List!1400)

(assert (=> d!14614 (= res!41208 (= (content!68 lt!17024) ((_ map or) (content!68 (t!20223 lt!16545)) (content!68 lt!16541))))))

(declare-fun e!44252 () List!1400)

(assert (=> d!14614 (= lt!17024 e!44252)))

(declare-fun c!20156 () Bool)

(assert (=> d!14614 (= c!20156 ((_ is Nil!1394) (t!20223 lt!16545)))))

(assert (=> d!14614 (= (++!130 (t!20223 lt!16545) lt!16541) lt!17024)))

(declare-fun b!79017 () Bool)

(declare-fun res!41207 () Bool)

(assert (=> b!79017 (=> (not res!41207) (not e!44253))))

(assert (=> b!79017 (= res!41207 (= (size!1213 lt!17024) (+ (size!1213 (t!20223 lt!16545)) (size!1213 lt!16541))))))

(declare-fun b!79016 () Bool)

(assert (=> b!79016 (= e!44252 (Cons!1394 (h!6791 (t!20223 lt!16545)) (++!130 (t!20223 (t!20223 lt!16545)) lt!16541)))))

(declare-fun b!79018 () Bool)

(assert (=> b!79018 (= e!44253 (or (not (= lt!16541 Nil!1394)) (= lt!17024 (t!20223 lt!16545))))))

(declare-fun b!79015 () Bool)

(assert (=> b!79015 (= e!44252 lt!16541)))

(assert (= (and d!14614 c!20156) b!79015))

(assert (= (and d!14614 (not c!20156)) b!79016))

(assert (= (and d!14614 res!41208) b!79017))

(assert (= (and b!79017 res!41207) b!79018))

(declare-fun m!53046 () Bool)

(assert (=> d!14614 m!53046))

(declare-fun m!53048 () Bool)

(assert (=> d!14614 m!53048))

(assert (=> d!14614 m!52028))

(declare-fun m!53050 () Bool)

(assert (=> b!79017 m!53050))

(declare-fun m!53052 () Bool)

(assert (=> b!79017 m!53052))

(assert (=> b!79017 m!52034))

(declare-fun m!53054 () Bool)

(assert (=> b!79016 m!53054))

(assert (=> b!78490 d!14614))

(declare-fun d!14616 () Bool)

(declare-fun res!41217 () Bool)

(declare-fun e!44262 () Bool)

(assert (=> d!14616 (=> res!41217 e!44262)))

(assert (=> d!14616 (= res!41217 ((_ is Nil!1397) rules!2471))))

(assert (=> d!14616 (= (noDuplicateTag!61 thiss!19403 rules!2471 Nil!1399) e!44262)))

(declare-fun b!79027 () Bool)

(declare-fun e!44263 () Bool)

(assert (=> b!79027 (= e!44262 e!44263)))

(declare-fun res!41218 () Bool)

(assert (=> b!79027 (=> (not res!41218) (not e!44263))))

(declare-fun contains!208 (List!1405 String!1867) Bool)

(assert (=> b!79027 (= res!41218 (not (contains!208 Nil!1399 (tag!483 (h!6794 rules!2471)))))))

(declare-fun b!79028 () Bool)

(assert (=> b!79028 (= e!44263 (noDuplicateTag!61 thiss!19403 (t!20226 rules!2471) (Cons!1399 (tag!483 (h!6794 rules!2471)) Nil!1399)))))

(assert (= (and d!14616 (not res!41217)) b!79027))

(assert (= (and b!79027 res!41218) b!79028))

(declare-fun m!53056 () Bool)

(assert (=> b!79027 m!53056))

(declare-fun m!53058 () Bool)

(assert (=> b!79028 m!53058))

(assert (=> b!78590 d!14616))

(declare-fun d!14618 () Bool)

(assert (=> d!14618 (= (inv!1747 (tag!483 (h!6794 (t!20226 rules!2471)))) (= (mod (str.len (value!11587 (tag!483 (h!6794 (t!20226 rules!2471))))) 2) 0))))

(assert (=> b!78627 d!14618))

(declare-fun d!14620 () Bool)

(declare-fun res!41221 () Bool)

(declare-fun e!44266 () Bool)

(assert (=> d!14620 (=> (not res!41221) (not e!44266))))

(assert (=> d!14620 (= res!41221 (semiInverseModEq!53 (toChars!675 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toValue!816 (transformation!305 (h!6794 (t!20226 rules!2471))))))))

(assert (=> d!14620 (= (inv!1749 (transformation!305 (h!6794 (t!20226 rules!2471)))) e!44266)))

(declare-fun b!79031 () Bool)

(assert (=> b!79031 (= e!44266 (equivClasses!49 (toChars!675 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toValue!816 (transformation!305 (h!6794 (t!20226 rules!2471))))))))

(assert (= (and d!14620 res!41221) b!79031))

(declare-fun m!53060 () Bool)

(assert (=> d!14620 m!53060))

(declare-fun m!53062 () Bool)

(assert (=> b!79031 m!53062))

(assert (=> b!78627 d!14620))

(declare-fun d!14622 () Bool)

(declare-fun lt!17034 () tuple2!1402)

(assert (=> d!14622 (= (++!130 (list!454 (print!36 thiss!19403 (_1!908 lt!17034))) (list!454 (_2!908 lt!17034))) (_2!909 lt!16550))))

(assert (=> d!14622 (= lt!17034 (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))))))

(assert (=> d!14622 true))

(declare-fun _$31!94 () Unit!852)

(assert (=> d!14622 (= (choose!1282 thiss!19403 rules!2471 (_2!909 lt!16550)) _$31!94)))

(declare-fun bs!8215 () Bool)

(assert (= bs!8215 d!14622))

(declare-fun m!53090 () Bool)

(assert (=> bs!8215 m!53090))

(declare-fun m!53094 () Bool)

(assert (=> bs!8215 m!53094))

(declare-fun m!53096 () Bool)

(assert (=> bs!8215 m!53096))

(assert (=> bs!8215 m!51908))

(declare-fun m!53098 () Bool)

(assert (=> bs!8215 m!53098))

(assert (=> bs!8215 m!53098))

(assert (=> bs!8215 m!53090))

(assert (=> bs!8215 m!51908))

(assert (=> bs!8215 m!51910))

(assert (=> bs!8215 m!53094))

(assert (=> d!14342 d!14622))

(declare-fun d!14636 () Bool)

(assert (=> d!14636 (= (list!454 (print!36 thiss!19403 (_1!908 lt!16616))) (list!458 (c!20014 (print!36 thiss!19403 (_1!908 lt!16616)))))))

(declare-fun bs!8218 () Bool)

(assert (= bs!8218 d!14636))

(declare-fun m!53104 () Bool)

(assert (=> bs!8218 m!53104))

(assert (=> d!14342 d!14636))

(declare-fun d!14640 () Bool)

(declare-fun e!44273 () Bool)

(assert (=> d!14640 e!44273))

(declare-fun res!41226 () Bool)

(assert (=> d!14640 (=> (not res!41226) (not e!44273))))

(declare-fun lt!17035 () List!1400)

(assert (=> d!14640 (= res!41226 (= (content!68 lt!17035) ((_ map or) (content!68 (list!454 (print!36 thiss!19403 (_1!908 lt!16616)))) (content!68 (list!454 (_2!908 lt!16616))))))))

(declare-fun e!44272 () List!1400)

(assert (=> d!14640 (= lt!17035 e!44272)))

(declare-fun c!20160 () Bool)

(assert (=> d!14640 (= c!20160 ((_ is Nil!1394) (list!454 (print!36 thiss!19403 (_1!908 lt!16616)))))))

(assert (=> d!14640 (= (++!130 (list!454 (print!36 thiss!19403 (_1!908 lt!16616))) (list!454 (_2!908 lt!16616))) lt!17035)))

(declare-fun b!79045 () Bool)

(declare-fun res!41225 () Bool)

(assert (=> b!79045 (=> (not res!41225) (not e!44273))))

(assert (=> b!79045 (= res!41225 (= (size!1213 lt!17035) (+ (size!1213 (list!454 (print!36 thiss!19403 (_1!908 lt!16616)))) (size!1213 (list!454 (_2!908 lt!16616))))))))

(declare-fun b!79044 () Bool)

(assert (=> b!79044 (= e!44272 (Cons!1394 (h!6791 (list!454 (print!36 thiss!19403 (_1!908 lt!16616)))) (++!130 (t!20223 (list!454 (print!36 thiss!19403 (_1!908 lt!16616)))) (list!454 (_2!908 lt!16616)))))))

(declare-fun b!79046 () Bool)

(assert (=> b!79046 (= e!44273 (or (not (= (list!454 (_2!908 lt!16616)) Nil!1394)) (= lt!17035 (list!454 (print!36 thiss!19403 (_1!908 lt!16616))))))))

(declare-fun b!79043 () Bool)

(assert (=> b!79043 (= e!44272 (list!454 (_2!908 lt!16616)))))

(assert (= (and d!14640 c!20160) b!79043))

(assert (= (and d!14640 (not c!20160)) b!79044))

(assert (= (and d!14640 res!41226) b!79045))

(assert (= (and b!79045 res!41225) b!79046))

(declare-fun m!53114 () Bool)

(assert (=> d!14640 m!53114))

(assert (=> d!14640 m!52122))

(declare-fun m!53116 () Bool)

(assert (=> d!14640 m!53116))

(assert (=> d!14640 m!52120))

(declare-fun m!53118 () Bool)

(assert (=> d!14640 m!53118))

(declare-fun m!53120 () Bool)

(assert (=> b!79045 m!53120))

(assert (=> b!79045 m!52122))

(declare-fun m!53122 () Bool)

(assert (=> b!79045 m!53122))

(assert (=> b!79045 m!52120))

(declare-fun m!53124 () Bool)

(assert (=> b!79045 m!53124))

(assert (=> b!79044 m!52120))

(declare-fun m!53126 () Bool)

(assert (=> b!79044 m!53126))

(assert (=> d!14342 d!14640))

(assert (=> d!14342 d!14332))

(assert (=> d!14342 d!14400))

(declare-fun d!14644 () Bool)

(declare-fun lt!17036 () BalanceConc!828)

(assert (=> d!14644 (= (list!454 lt!17036) (printList!13 thiss!19403 (list!453 (_1!908 lt!16616))))))

(assert (=> d!14644 (= lt!17036 (printTailRec!13 thiss!19403 (_1!908 lt!16616) 0 (BalanceConc!829 Empty!412)))))

(assert (=> d!14644 (= (print!36 thiss!19403 (_1!908 lt!16616)) lt!17036)))

(declare-fun bs!8219 () Bool)

(assert (= bs!8219 d!14644))

(declare-fun m!53128 () Bool)

(assert (=> bs!8219 m!53128))

(declare-fun m!53130 () Bool)

(assert (=> bs!8219 m!53130))

(assert (=> bs!8219 m!53130))

(declare-fun m!53132 () Bool)

(assert (=> bs!8219 m!53132))

(declare-fun m!53134 () Bool)

(assert (=> bs!8219 m!53134))

(assert (=> d!14342 d!14644))

(declare-fun d!14646 () Bool)

(assert (=> d!14646 (= (list!454 (_2!908 lt!16616)) (list!458 (c!20014 (_2!908 lt!16616))))))

(declare-fun bs!8220 () Bool)

(assert (= bs!8220 d!14646))

(declare-fun m!53136 () Bool)

(assert (=> bs!8220 m!53136))

(assert (=> d!14342 d!14646))

(assert (=> d!14342 d!14358))

(declare-fun d!14648 () Bool)

(assert (=> d!14648 (= (isEmpty!449 lt!16571) (not ((_ is Some!109) lt!16571)))))

(assert (=> d!14316 d!14648))

(declare-fun b!79060 () Bool)

(declare-fun res!41236 () Bool)

(declare-fun e!44284 () Bool)

(assert (=> b!79060 (=> (not res!41236) (not e!44284))))

(assert (=> b!79060 (= res!41236 (= (head!417 input!2238) (head!417 input!2238)))))

(declare-fun b!79059 () Bool)

(declare-fun e!44283 () Bool)

(assert (=> b!79059 (= e!44283 e!44284)))

(declare-fun res!41238 () Bool)

(assert (=> b!79059 (=> (not res!41238) (not e!44284))))

(assert (=> b!79059 (= res!41238 (not ((_ is Nil!1394) input!2238)))))

(declare-fun d!14650 () Bool)

(declare-fun e!44282 () Bool)

(assert (=> d!14650 e!44282))

(declare-fun res!41235 () Bool)

(assert (=> d!14650 (=> res!41235 e!44282)))

(declare-fun lt!17043 () Bool)

(assert (=> d!14650 (= res!41235 (not lt!17043))))

(assert (=> d!14650 (= lt!17043 e!44283)))

(declare-fun res!41237 () Bool)

(assert (=> d!14650 (=> res!41237 e!44283)))

(assert (=> d!14650 (= res!41237 ((_ is Nil!1394) input!2238))))

(assert (=> d!14650 (= (isPrefix!17 input!2238 input!2238) lt!17043)))

(declare-fun b!79061 () Bool)

(assert (=> b!79061 (= e!44284 (isPrefix!17 (tail!115 input!2238) (tail!115 input!2238)))))

(declare-fun b!79062 () Bool)

(assert (=> b!79062 (= e!44282 (>= (size!1213 input!2238) (size!1213 input!2238)))))

(assert (= (and d!14650 (not res!41237)) b!79059))

(assert (= (and b!79059 res!41238) b!79060))

(assert (= (and b!79060 res!41236) b!79061))

(assert (= (and d!14650 (not res!41235)) b!79062))

(declare-fun m!53154 () Bool)

(assert (=> b!79060 m!53154))

(assert (=> b!79060 m!53154))

(declare-fun m!53156 () Bool)

(assert (=> b!79061 m!53156))

(assert (=> b!79061 m!53156))

(assert (=> b!79061 m!53156))

(assert (=> b!79061 m!53156))

(declare-fun m!53158 () Bool)

(assert (=> b!79061 m!53158))

(assert (=> b!79062 m!52000))

(assert (=> b!79062 m!52000))

(assert (=> d!14316 d!14650))

(declare-fun d!14660 () Bool)

(assert (=> d!14660 (isPrefix!17 input!2238 input!2238)))

(declare-fun lt!17047 () Unit!852)

(declare-fun choose!1284 (List!1400 List!1400) Unit!852)

(assert (=> d!14660 (= lt!17047 (choose!1284 input!2238 input!2238))))

(assert (=> d!14660 (= (lemmaIsPrefixRefl!17 input!2238 input!2238) lt!17047)))

(declare-fun bs!8226 () Bool)

(assert (= bs!8226 d!14660))

(assert (=> bs!8226 m!51992))

(declare-fun m!53162 () Bool)

(assert (=> bs!8226 m!53162))

(assert (=> d!14316 d!14660))

(declare-fun d!14664 () Bool)

(assert (=> d!14664 true))

(declare-fun lt!17050 () Bool)

(declare-fun lambda!1458 () Int)

(declare-fun forall!187 (List!1403 Int) Bool)

(assert (=> d!14664 (= lt!17050 (forall!187 rules!2471 lambda!1458))))

(declare-fun e!44289 () Bool)

(assert (=> d!14664 (= lt!17050 e!44289)))

(declare-fun res!41244 () Bool)

(assert (=> d!14664 (=> res!41244 e!44289)))

(assert (=> d!14664 (= res!41244 (not ((_ is Cons!1397) rules!2471)))))

(assert (=> d!14664 (= (rulesValidInductive!38 thiss!19403 rules!2471) lt!17050)))

(declare-fun b!79067 () Bool)

(declare-fun e!44290 () Bool)

(assert (=> b!79067 (= e!44289 e!44290)))

(declare-fun res!41243 () Bool)

(assert (=> b!79067 (=> (not res!41243) (not e!44290))))

(assert (=> b!79067 (= res!41243 (ruleValid!19 thiss!19403 (h!6794 rules!2471)))))

(declare-fun b!79068 () Bool)

(assert (=> b!79068 (= e!44290 (rulesValidInductive!38 thiss!19403 (t!20226 rules!2471)))))

(assert (= (and d!14664 (not res!41244)) b!79067))

(assert (= (and b!79067 res!41243) b!79068))

(declare-fun m!53164 () Bool)

(assert (=> d!14664 m!53164))

(assert (=> b!79067 m!52944))

(declare-fun m!53166 () Bool)

(assert (=> b!79068 m!53166))

(assert (=> d!14316 d!14664))

(declare-fun d!14666 () Bool)

(assert (=> d!14666 (= (list!454 lt!16638) (list!458 (c!20014 lt!16638)))))

(declare-fun bs!8227 () Bool)

(assert (= bs!8227 d!14666))

(declare-fun m!53168 () Bool)

(assert (=> bs!8227 m!53168))

(assert (=> d!14392 d!14666))

(declare-fun d!14668 () Bool)

(declare-fun c!20165 () Bool)

(assert (=> d!14668 (= c!20165 ((_ is Cons!1396) (list!453 (_1!908 lt!16548))))))

(declare-fun e!44293 () List!1400)

(assert (=> d!14668 (= (printList!13 thiss!19403 (list!453 (_1!908 lt!16548))) e!44293)))

(declare-fun b!79075 () Bool)

(assert (=> b!79075 (= e!44293 (++!130 (list!454 (charsOf!42 (h!6793 (list!453 (_1!908 lt!16548))))) (printList!13 thiss!19403 (t!20225 (list!453 (_1!908 lt!16548))))))))

(declare-fun b!79076 () Bool)

(assert (=> b!79076 (= e!44293 Nil!1394)))

(assert (= (and d!14668 c!20165) b!79075))

(assert (= (and d!14668 (not c!20165)) b!79076))

(declare-fun m!53170 () Bool)

(assert (=> b!79075 m!53170))

(assert (=> b!79075 m!53170))

(declare-fun m!53172 () Bool)

(assert (=> b!79075 m!53172))

(declare-fun m!53174 () Bool)

(assert (=> b!79075 m!53174))

(assert (=> b!79075 m!53172))

(assert (=> b!79075 m!53174))

(declare-fun m!53176 () Bool)

(assert (=> b!79075 m!53176))

(assert (=> d!14392 d!14668))

(assert (=> d!14392 d!14380))

(declare-fun d!14670 () Bool)

(declare-fun lt!17066 () BalanceConc!828)

(declare-fun printListTailRec!8 (LexerInterface!197 List!1402 List!1400) List!1400)

(declare-fun dropList!16 (BalanceConc!830 Int) List!1402)

(assert (=> d!14670 (= (list!454 lt!17066) (printListTailRec!8 thiss!19403 (dropList!16 (_1!908 lt!16548) 0) (list!454 (BalanceConc!829 Empty!412))))))

(declare-fun e!44299 () BalanceConc!828)

(assert (=> d!14670 (= lt!17066 e!44299)))

(declare-fun c!20168 () Bool)

(assert (=> d!14670 (= c!20168 (>= 0 (size!1215 (_1!908 lt!16548))))))

(declare-fun e!44298 () Bool)

(assert (=> d!14670 e!44298))

(declare-fun res!41247 () Bool)

(assert (=> d!14670 (=> (not res!41247) (not e!44298))))

(assert (=> d!14670 (= res!41247 (>= 0 0))))

(assert (=> d!14670 (= (printTailRec!13 thiss!19403 (_1!908 lt!16548) 0 (BalanceConc!829 Empty!412)) lt!17066)))

(declare-fun b!79083 () Bool)

(assert (=> b!79083 (= e!44298 (<= 0 (size!1215 (_1!908 lt!16548))))))

(declare-fun b!79084 () Bool)

(assert (=> b!79084 (= e!44299 (BalanceConc!829 Empty!412))))

(declare-fun b!79085 () Bool)

(declare-fun apply!190 (BalanceConc!830 Int) Token!370)

(assert (=> b!79085 (= e!44299 (printTailRec!13 thiss!19403 (_1!908 lt!16548) (+ 0 1) (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (apply!190 (_1!908 lt!16548) 0)))))))

(declare-fun lt!17069 () List!1402)

(assert (=> b!79085 (= lt!17069 (list!453 (_1!908 lt!16548)))))

(declare-fun lt!17070 () Unit!852)

(declare-fun lemmaDropApply!72 (List!1402 Int) Unit!852)

(assert (=> b!79085 (= lt!17070 (lemmaDropApply!72 lt!17069 0))))

(declare-fun head!419 (List!1402) Token!370)

(declare-fun drop!74 (List!1402 Int) List!1402)

(declare-fun apply!191 (List!1402 Int) Token!370)

(assert (=> b!79085 (= (head!419 (drop!74 lt!17069 0)) (apply!191 lt!17069 0))))

(declare-fun lt!17071 () Unit!852)

(assert (=> b!79085 (= lt!17071 lt!17070)))

(declare-fun lt!17065 () List!1402)

(assert (=> b!79085 (= lt!17065 (list!453 (_1!908 lt!16548)))))

(declare-fun lt!17067 () Unit!852)

(declare-fun lemmaDropTail!64 (List!1402 Int) Unit!852)

(assert (=> b!79085 (= lt!17067 (lemmaDropTail!64 lt!17065 0))))

(assert (=> b!79085 (= (tail!114 (drop!74 lt!17065 0)) (drop!74 lt!17065 (+ 0 1)))))

(declare-fun lt!17068 () Unit!852)

(assert (=> b!79085 (= lt!17068 lt!17067)))

(assert (= (and d!14670 res!41247) b!79083))

(assert (= (and d!14670 c!20168) b!79084))

(assert (= (and d!14670 (not c!20168)) b!79085))

(declare-fun m!53178 () Bool)

(assert (=> d!14670 m!53178))

(declare-fun m!53180 () Bool)

(assert (=> d!14670 m!53180))

(assert (=> d!14670 m!52402))

(declare-fun m!53182 () Bool)

(assert (=> d!14670 m!53182))

(declare-fun m!53184 () Bool)

(assert (=> d!14670 m!53184))

(assert (=> d!14670 m!52402))

(assert (=> d!14670 m!53180))

(assert (=> b!79083 m!53178))

(declare-fun m!53186 () Bool)

(assert (=> b!79085 m!53186))

(declare-fun m!53188 () Bool)

(assert (=> b!79085 m!53188))

(declare-fun m!53190 () Bool)

(assert (=> b!79085 m!53190))

(declare-fun m!53192 () Bool)

(assert (=> b!79085 m!53192))

(declare-fun m!53194 () Bool)

(assert (=> b!79085 m!53194))

(declare-fun m!53196 () Bool)

(assert (=> b!79085 m!53196))

(assert (=> b!79085 m!53190))

(assert (=> b!79085 m!53188))

(declare-fun m!53198 () Bool)

(assert (=> b!79085 m!53198))

(declare-fun m!53200 () Bool)

(assert (=> b!79085 m!53200))

(declare-fun m!53202 () Bool)

(assert (=> b!79085 m!53202))

(assert (=> b!79085 m!53198))

(assert (=> b!79085 m!53200))

(declare-fun m!53204 () Bool)

(assert (=> b!79085 m!53204))

(assert (=> b!79085 m!51884))

(assert (=> b!79085 m!53204))

(declare-fun m!53206 () Bool)

(assert (=> b!79085 m!53206))

(declare-fun m!53208 () Bool)

(assert (=> b!79085 m!53208))

(assert (=> d!14392 d!14670))

(declare-fun d!14672 () Bool)

(declare-fun e!44300 () Bool)

(assert (=> d!14672 e!44300))

(declare-fun res!41248 () Bool)

(assert (=> d!14672 (=> (not res!41248) (not e!44300))))

(declare-fun lt!17072 () BalanceConc!828)

(assert (=> d!14672 (= res!41248 (= (list!454 lt!17072) input!2238))))

(assert (=> d!14672 (= lt!17072 (BalanceConc!829 (fromList!24 input!2238)))))

(assert (=> d!14672 (= (fromListB!41 input!2238) lt!17072)))

(declare-fun b!79086 () Bool)

(assert (=> b!79086 (= e!44300 (isBalanced!82 (fromList!24 input!2238)))))

(assert (= (and d!14672 res!41248) b!79086))

(declare-fun m!53210 () Bool)

(assert (=> d!14672 m!53210))

(declare-fun m!53212 () Bool)

(assert (=> d!14672 m!53212))

(assert (=> b!79086 m!53212))

(assert (=> b!79086 m!53212))

(declare-fun m!53214 () Bool)

(assert (=> b!79086 m!53214))

(assert (=> d!14410 d!14672))

(declare-fun d!14674 () Bool)

(assert (=> d!14674 (= (list!453 (_1!908 lt!16648)) (list!457 (c!20016 (_1!908 lt!16648))))))

(declare-fun bs!8228 () Bool)

(assert (= bs!8228 d!14674))

(declare-fun m!53216 () Bool)

(assert (=> bs!8228 m!53216))

(assert (=> b!78597 d!14674))

(declare-fun b!79087 () Bool)

(declare-fun e!44302 () Bool)

(declare-fun lt!17074 () tuple2!1406)

(assert (=> b!79087 (= e!44302 (not (isEmpty!455 (_1!910 lt!17074))))))

(declare-fun d!14676 () Bool)

(declare-fun e!44303 () Bool)

(assert (=> d!14676 e!44303))

(declare-fun c!20170 () Bool)

(assert (=> d!14676 (= c!20170 (> (size!1218 (_1!910 lt!17074)) 0))))

(declare-fun e!44301 () tuple2!1406)

(assert (=> d!14676 (= lt!17074 e!44301)))

(declare-fun c!20169 () Bool)

(declare-fun lt!17073 () Option!110)

(assert (=> d!14676 (= c!20169 ((_ is Some!109) lt!17073))))

(assert (=> d!14676 (= lt!17073 (maxPrefix!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 input!2238))))))

(assert (=> d!14676 (= (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 input!2238))) lt!17074)))

(declare-fun b!79088 () Bool)

(assert (=> b!79088 (= e!44303 e!44302)))

(declare-fun res!41249 () Bool)

(assert (=> b!79088 (= res!41249 (< (size!1213 (_2!910 lt!17074)) (size!1213 (list!454 (seqFromList!122 input!2238)))))))

(assert (=> b!79088 (=> (not res!41249) (not e!44302))))

(declare-fun b!79089 () Bool)

(assert (=> b!79089 (= e!44301 (tuple2!1407 Nil!1396 (list!454 (seqFromList!122 input!2238))))))

(declare-fun b!79090 () Bool)

(assert (=> b!79090 (= e!44303 (= (_2!910 lt!17074) (list!454 (seqFromList!122 input!2238))))))

(declare-fun b!79091 () Bool)

(declare-fun lt!17075 () tuple2!1406)

(assert (=> b!79091 (= e!44301 (tuple2!1407 (Cons!1396 (_1!909 (v!12778 lt!17073)) (_1!910 lt!17075)) (_2!910 lt!17075)))))

(assert (=> b!79091 (= lt!17075 (lexList!41 thiss!19403 rules!2471 (_2!909 (v!12778 lt!17073))))))

(assert (= (and d!14676 c!20169) b!79091))

(assert (= (and d!14676 (not c!20169)) b!79089))

(assert (= (and d!14676 c!20170) b!79088))

(assert (= (and d!14676 (not c!20170)) b!79090))

(assert (= (and b!79088 res!41249) b!79087))

(declare-fun m!53218 () Bool)

(assert (=> b!79087 m!53218))

(declare-fun m!53220 () Bool)

(assert (=> d!14676 m!53220))

(assert (=> d!14676 m!52260))

(declare-fun m!53222 () Bool)

(assert (=> d!14676 m!53222))

(declare-fun m!53224 () Bool)

(assert (=> b!79088 m!53224))

(assert (=> b!79088 m!52260))

(assert (=> b!79088 m!52668))

(declare-fun m!53226 () Bool)

(assert (=> b!79091 m!53226))

(assert (=> b!78597 d!14676))

(declare-fun d!14678 () Bool)

(assert (=> d!14678 (= (list!454 (seqFromList!122 input!2238)) (list!458 (c!20014 (seqFromList!122 input!2238))))))

(declare-fun bs!8229 () Bool)

(assert (= bs!8229 d!14678))

(declare-fun m!53228 () Bool)

(assert (=> bs!8229 m!53228))

(assert (=> b!78597 d!14678))

(declare-fun d!14680 () Bool)

(assert (=> d!14680 (= (list!453 lt!16589) (list!457 (c!20016 lt!16589)))))

(declare-fun bs!8230 () Bool)

(assert (= bs!8230 d!14680))

(declare-fun m!53230 () Bool)

(assert (=> bs!8230 m!53230))

(assert (=> b!78495 d!14680))

(declare-fun d!14682 () Bool)

(assert (=> d!14682 (= (list!453 (seqFromList!123 (t!20225 lt!16546))) (list!457 (c!20016 (seqFromList!123 (t!20225 lt!16546)))))))

(declare-fun bs!8231 () Bool)

(assert (= bs!8231 d!14682))

(declare-fun m!53232 () Bool)

(assert (=> bs!8231 m!53232))

(assert (=> b!78495 d!14682))

(declare-fun d!14684 () Bool)

(assert (=> d!14684 (= (list!453 (_1!908 lt!16644)) (list!457 (c!20016 (_1!908 lt!16644))))))

(declare-fun bs!8232 () Bool)

(assert (= bs!8232 d!14684))

(declare-fun m!53234 () Bool)

(assert (=> bs!8232 m!53234))

(assert (=> d!14394 d!14684))

(assert (=> d!14394 d!14316))

(assert (=> d!14394 d!14398))

(declare-fun d!14686 () Bool)

(assert (=> d!14686 (= (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))) (fromListB!41 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!8233 () Bool)

(assert (= bs!8233 d!14686))

(declare-fun m!53236 () Bool)

(assert (=> bs!8233 m!53236))

(assert (=> d!14394 d!14686))

(declare-fun d!14688 () Bool)

(declare-fun lt!17096 () tuple2!1402)

(assert (=> d!14688 (= (tuple2!1407 (list!453 (_1!908 lt!17096)) (list!454 (_2!908 lt!17096))) (tuple2!1407 (tail!114 lt!16546) lt!16540))))

(assert (=> d!14688 (= lt!17096 (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!14688 true))

(declare-fun _$54!150 () Unit!852)

(assert (=> d!14688 (= (choose!1283 thiss!19403 rules!2471 input!2238 lt!16546 lt!16540) _$54!150)))

(declare-fun bs!8235 () Bool)

(assert (= bs!8235 d!14688))

(declare-fun m!53308 () Bool)

(assert (=> bs!8235 m!53308))

(assert (=> bs!8235 m!51916))

(assert (=> bs!8235 m!51878))

(assert (=> bs!8235 m!52232))

(assert (=> bs!8235 m!52234))

(assert (=> bs!8235 m!51878))

(assert (=> bs!8235 m!52226))

(assert (=> bs!8235 m!52232))

(declare-fun m!53310 () Bool)

(assert (=> bs!8235 m!53310))

(assert (=> d!14394 d!14688))

(declare-fun d!14694 () Bool)

(assert (=> d!14694 (= (list!454 (_2!908 lt!16644)) (list!458 (c!20014 (_2!908 lt!16644))))))

(declare-fun bs!8236 () Bool)

(assert (= bs!8236 d!14694))

(declare-fun m!53312 () Bool)

(assert (=> bs!8236 m!53312))

(assert (=> d!14394 d!14694))

(declare-fun e!44356 () Bool)

(declare-fun b!79200 () Bool)

(declare-fun lt!17097 () tuple2!1402)

(assert (=> b!79200 (= e!44356 (= (list!454 (_2!908 lt!17097)) (_2!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!79201 () Bool)

(declare-fun e!44355 () Bool)

(declare-fun e!44354 () Bool)

(assert (=> b!79201 (= e!44355 e!44354)))

(declare-fun res!41297 () Bool)

(assert (=> b!79201 (= res!41297 (< (size!1214 (_2!908 lt!17097)) (size!1214 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!79201 (=> (not res!41297) (not e!44354))))

(declare-fun d!14696 () Bool)

(assert (=> d!14696 e!44356))

(declare-fun res!41296 () Bool)

(assert (=> d!14696 (=> (not res!41296) (not e!44356))))

(assert (=> d!14696 (= res!41296 e!44355)))

(declare-fun c!20183 () Bool)

(assert (=> d!14696 (= c!20183 (> (size!1215 (_1!908 lt!17097)) 0))))

(assert (=> d!14696 (= lt!17097 (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))) (BalanceConc!829 Empty!412) (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))) (BalanceConc!831 Empty!413)))))

(assert (=> d!14696 (= (lex!105 thiss!19403 rules!2471 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238))))) lt!17097)))

(declare-fun b!79202 () Bool)

(assert (=> b!79202 (= e!44354 (not (isEmpty!450 (_1!908 lt!17097))))))

(declare-fun b!79203 () Bool)

(declare-fun res!41295 () Bool)

(assert (=> b!79203 (=> (not res!41295) (not e!44356))))

(assert (=> b!79203 (= res!41295 (= (list!453 (_1!908 lt!17097)) (_1!910 (lexList!41 thiss!19403 rules!2471 (list!454 (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!79204 () Bool)

(assert (=> b!79204 (= e!44355 (= (_2!908 lt!17097) (seqFromList!122 (_2!909 (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238))))))))

(assert (= (and d!14696 c!20183) b!79201))

(assert (= (and d!14696 (not c!20183)) b!79204))

(assert (= (and b!79201 res!41297) b!79202))

(assert (= (and d!14696 res!41296) b!79203))

(assert (= (and b!79203 res!41295) b!79200))

(declare-fun m!53314 () Bool)

(assert (=> d!14696 m!53314))

(assert (=> d!14696 m!52232))

(assert (=> d!14696 m!52232))

(declare-fun m!53316 () Bool)

(assert (=> d!14696 m!53316))

(declare-fun m!53318 () Bool)

(assert (=> b!79201 m!53318))

(assert (=> b!79201 m!52232))

(declare-fun m!53320 () Bool)

(assert (=> b!79201 m!53320))

(declare-fun m!53322 () Bool)

(assert (=> b!79200 m!53322))

(assert (=> b!79200 m!52232))

(declare-fun m!53324 () Bool)

(assert (=> b!79200 m!53324))

(assert (=> b!79200 m!53324))

(declare-fun m!53326 () Bool)

(assert (=> b!79200 m!53326))

(declare-fun m!53328 () Bool)

(assert (=> b!79202 m!53328))

(declare-fun m!53330 () Bool)

(assert (=> b!79203 m!53330))

(assert (=> b!79203 m!52232))

(assert (=> b!79203 m!53324))

(assert (=> b!79203 m!53324))

(assert (=> b!79203 m!53326))

(assert (=> d!14394 d!14696))

(assert (=> d!14394 d!14378))

(declare-fun d!14698 () Bool)

(assert (=> d!14698 (= (get!346 (maxPrefix!41 thiss!19403 rules!2471 input!2238)) (v!12778 (maxPrefix!41 thiss!19403 rules!2471 input!2238)))))

(assert (=> d!14394 d!14698))

(declare-fun d!14700 () Bool)

(assert (=> d!14700 (= (list!454 (_2!908 lt!16635)) (list!458 (c!20014 (_2!908 lt!16635))))))

(declare-fun bs!8237 () Bool)

(assert (= bs!8237 d!14700))

(declare-fun m!53332 () Bool)

(assert (=> bs!8237 m!53332))

(assert (=> b!78583 d!14700))

(assert (=> b!78583 d!14478))

(assert (=> b!78583 d!14482))

(declare-fun d!14702 () Bool)

(declare-fun lt!17100 () Bool)

(assert (=> d!14702 (= lt!17100 (isEmpty!455 (list!453 (_1!908 lt!16635))))))

(declare-fun isEmpty!456 (Conc!413) Bool)

(assert (=> d!14702 (= lt!17100 (isEmpty!456 (c!20016 (_1!908 lt!16635))))))

(assert (=> d!14702 (= (isEmpty!450 (_1!908 lt!16635)) lt!17100)))

(declare-fun bs!8238 () Bool)

(assert (= bs!8238 d!14702))

(assert (=> bs!8238 m!52206))

(assert (=> bs!8238 m!52206))

(declare-fun m!53334 () Bool)

(assert (=> bs!8238 m!53334))

(declare-fun m!53336 () Bool)

(assert (=> bs!8238 m!53336))

(assert (=> b!78585 d!14702))

(declare-fun d!14704 () Bool)

(declare-fun c!20186 () Bool)

(assert (=> d!14704 (= c!20186 ((_ is Nil!1394) lt!16580))))

(declare-fun e!44359 () (InoxSet C!1668))

(assert (=> d!14704 (= (content!68 lt!16580) e!44359)))

(declare-fun b!79209 () Bool)

(assert (=> b!79209 (= e!44359 ((as const (Array C!1668 Bool)) false))))

(declare-fun b!79210 () Bool)

(assert (=> b!79210 (= e!44359 ((_ map or) (store ((as const (Array C!1668 Bool)) false) (h!6791 lt!16580) true) (content!68 (t!20223 lt!16580))))))

(assert (= (and d!14704 c!20186) b!79209))

(assert (= (and d!14704 (not c!20186)) b!79210))

(declare-fun m!53338 () Bool)

(assert (=> b!79210 m!53338))

(declare-fun m!53340 () Bool)

(assert (=> b!79210 m!53340))

(assert (=> d!14334 d!14704))

(declare-fun d!14706 () Bool)

(declare-fun c!20187 () Bool)

(assert (=> d!14706 (= c!20187 ((_ is Nil!1394) lt!16545))))

(declare-fun e!44360 () (InoxSet C!1668))

(assert (=> d!14706 (= (content!68 lt!16545) e!44360)))

(declare-fun b!79211 () Bool)

(assert (=> b!79211 (= e!44360 ((as const (Array C!1668 Bool)) false))))

(declare-fun b!79212 () Bool)

(assert (=> b!79212 (= e!44360 ((_ map or) (store ((as const (Array C!1668 Bool)) false) (h!6791 lt!16545) true) (content!68 (t!20223 lt!16545))))))

(assert (= (and d!14706 c!20187) b!79211))

(assert (= (and d!14706 (not c!20187)) b!79212))

(declare-fun m!53342 () Bool)

(assert (=> b!79212 m!53342))

(assert (=> b!79212 m!53048))

(assert (=> d!14334 d!14706))

(declare-fun d!14708 () Bool)

(declare-fun c!20188 () Bool)

(assert (=> d!14708 (= c!20188 ((_ is Nil!1394) lt!16541))))

(declare-fun e!44361 () (InoxSet C!1668))

(assert (=> d!14708 (= (content!68 lt!16541) e!44361)))

(declare-fun b!79213 () Bool)

(assert (=> b!79213 (= e!44361 ((as const (Array C!1668 Bool)) false))))

(declare-fun b!79214 () Bool)

(assert (=> b!79214 (= e!44361 ((_ map or) (store ((as const (Array C!1668 Bool)) false) (h!6791 lt!16541) true) (content!68 (t!20223 lt!16541))))))

(assert (= (and d!14708 c!20188) b!79213))

(assert (= (and d!14708 (not c!20188)) b!79214))

(declare-fun m!53344 () Bool)

(assert (=> b!79214 m!53344))

(declare-fun m!53346 () Bool)

(assert (=> b!79214 m!53346))

(assert (=> d!14334 d!14708))

(declare-fun b!79218 () Bool)

(declare-fun e!44363 () List!1400)

(assert (=> b!79218 (= e!44363 (++!130 (list!458 (left!1057 (c!20014 (print!36 thiss!19403 (_1!908 lt!16548))))) (list!458 (right!1387 (c!20014 (print!36 thiss!19403 (_1!908 lt!16548)))))))))

(declare-fun d!14710 () Bool)

(declare-fun c!20189 () Bool)

(assert (=> d!14710 (= c!20189 ((_ is Empty!412) (c!20014 (print!36 thiss!19403 (_1!908 lt!16548)))))))

(declare-fun e!44362 () List!1400)

(assert (=> d!14710 (= (list!458 (c!20014 (print!36 thiss!19403 (_1!908 lt!16548)))) e!44362)))

(declare-fun b!79216 () Bool)

(assert (=> b!79216 (= e!44362 e!44363)))

(declare-fun c!20190 () Bool)

(assert (=> b!79216 (= c!20190 ((_ is Leaf!700) (c!20014 (print!36 thiss!19403 (_1!908 lt!16548)))))))

(declare-fun b!79217 () Bool)

(assert (=> b!79217 (= e!44363 (list!461 (xs!2991 (c!20014 (print!36 thiss!19403 (_1!908 lt!16548))))))))

(declare-fun b!79215 () Bool)

(assert (=> b!79215 (= e!44362 Nil!1394)))

(assert (= (and d!14710 c!20189) b!79215))

(assert (= (and d!14710 (not c!20189)) b!79216))

(assert (= (and b!79216 c!20190) b!79217))

(assert (= (and b!79216 (not c!20190)) b!79218))

(declare-fun m!53348 () Bool)

(assert (=> b!79218 m!53348))

(declare-fun m!53350 () Bool)

(assert (=> b!79218 m!53350))

(assert (=> b!79218 m!53348))

(assert (=> b!79218 m!53350))

(declare-fun m!53352 () Bool)

(assert (=> b!79218 m!53352))

(declare-fun m!53354 () Bool)

(assert (=> b!79217 m!53354))

(assert (=> d!14390 d!14710))

(declare-fun d!14712 () Bool)

(declare-fun lt!17103 () Bool)

(declare-fun content!70 (List!1403) (InoxSet Rule!410))

(assert (=> d!14712 (= lt!17103 (select (content!70 rules!2471) (rule!784 (_1!909 (get!346 lt!16571)))))))

(declare-fun e!44369 () Bool)

(assert (=> d!14712 (= lt!17103 e!44369)))

(declare-fun res!41303 () Bool)

(assert (=> d!14712 (=> (not res!41303) (not e!44369))))

(assert (=> d!14712 (= res!41303 ((_ is Cons!1397) rules!2471))))

(assert (=> d!14712 (= (contains!207 rules!2471 (rule!784 (_1!909 (get!346 lt!16571)))) lt!17103)))

(declare-fun b!79223 () Bool)

(declare-fun e!44368 () Bool)

(assert (=> b!79223 (= e!44369 e!44368)))

(declare-fun res!41302 () Bool)

(assert (=> b!79223 (=> res!41302 e!44368)))

(assert (=> b!79223 (= res!41302 (= (h!6794 rules!2471) (rule!784 (_1!909 (get!346 lt!16571)))))))

(declare-fun b!79224 () Bool)

(assert (=> b!79224 (= e!44368 (contains!207 (t!20226 rules!2471) (rule!784 (_1!909 (get!346 lt!16571)))))))

(assert (= (and d!14712 res!41303) b!79223))

(assert (= (and b!79223 (not res!41302)) b!79224))

(declare-fun m!53356 () Bool)

(assert (=> d!14712 m!53356))

(declare-fun m!53358 () Bool)

(assert (=> d!14712 m!53358))

(declare-fun m!53360 () Bool)

(assert (=> b!79224 m!53360))

(assert (=> b!78473 d!14712))

(assert (=> b!78473 d!14488))

(declare-fun d!14714 () Bool)

(assert (=> d!14714 (= (list!454 (_2!908 lt!16648)) (list!458 (c!20014 (_2!908 lt!16648))))))

(declare-fun bs!8239 () Bool)

(assert (= bs!8239 d!14714))

(declare-fun m!53362 () Bool)

(assert (=> bs!8239 m!53362))

(assert (=> b!78594 d!14714))

(assert (=> b!78594 d!14676))

(assert (=> b!78594 d!14678))

(declare-fun d!14716 () Bool)

(assert (=> d!14716 (= (list!454 lt!16577) (list!458 (c!20014 lt!16577)))))

(declare-fun bs!8240 () Bool)

(assert (= bs!8240 d!14716))

(declare-fun m!53364 () Bool)

(assert (=> bs!8240 m!53364))

(assert (=> d!14330 d!14716))

(declare-fun d!14718 () Bool)

(declare-fun lt!17104 () Bool)

(assert (=> d!14718 (= lt!17104 (isEmpty!455 (list!453 (_1!908 lt!16648))))))

(assert (=> d!14718 (= lt!17104 (isEmpty!456 (c!20016 (_1!908 lt!16648))))))

(assert (=> d!14718 (= (isEmpty!450 (_1!908 lt!16648)) lt!17104)))

(declare-fun bs!8241 () Bool)

(assert (= bs!8241 d!14718))

(assert (=> bs!8241 m!52266))

(assert (=> bs!8241 m!52266))

(declare-fun m!53366 () Bool)

(assert (=> bs!8241 m!53366))

(declare-fun m!53368 () Bool)

(assert (=> bs!8241 m!53368))

(assert (=> b!78596 d!14718))

(assert (=> b!78475 d!14488))

(declare-fun d!14720 () Bool)

(declare-fun dynLambda!339 (Int BalanceConc!828) TokenValue!295)

(assert (=> d!14720 (= (apply!187 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16571))))) (dynLambda!339 (toValue!816 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571))))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16571))))))))

(declare-fun b_lambda!897 () Bool)

(assert (=> (not b_lambda!897) (not d!14720)))

(declare-fun t!20265 () Bool)

(declare-fun tb!2437 () Bool)

(assert (=> (and b!78419 (= (toValue!816 (transformation!305 (h!6794 rules!2471))) (toValue!816 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20265) tb!2437))

(declare-fun result!3506 () Bool)

(declare-fun inv!21 (TokenValue!295) Bool)

(assert (=> tb!2437 (= result!3506 (inv!21 (dynLambda!339 (toValue!816 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571))))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16571)))))))))

(declare-fun m!53370 () Bool)

(assert (=> tb!2437 m!53370))

(assert (=> d!14720 t!20265))

(declare-fun b_and!3639 () Bool)

(assert (= b_and!3607 (and (=> t!20265 result!3506) b_and!3639)))

(declare-fun tb!2439 () Bool)

(declare-fun t!20267 () Bool)

(assert (=> (and b!78628 (= (toValue!816 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toValue!816 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20267) tb!2439))

(declare-fun result!3510 () Bool)

(assert (= result!3510 result!3506))

(assert (=> d!14720 t!20267))

(declare-fun b_and!3641 () Bool)

(assert (= b_and!3619 (and (=> t!20267 result!3510) b_and!3641)))

(assert (=> d!14720 m!51986))

(declare-fun m!53372 () Bool)

(assert (=> d!14720 m!53372))

(assert (=> b!78475 d!14720))

(declare-fun d!14722 () Bool)

(assert (=> d!14722 (= (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!16571)))) (fromListB!41 (originalCharacters!356 (_1!909 (get!346 lt!16571)))))))

(declare-fun bs!8242 () Bool)

(assert (= bs!8242 d!14722))

(declare-fun m!53374 () Bool)

(assert (=> bs!8242 m!53374))

(assert (=> b!78475 d!14722))

(declare-fun b!79239 () Bool)

(declare-fun res!41316 () Bool)

(declare-fun e!44378 () Bool)

(assert (=> b!79239 (=> (not res!41316) (not e!44378))))

(assert (=> b!79239 (= res!41316 (not (isEmpty!456 (left!1058 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))))))))

(declare-fun b!79240 () Bool)

(declare-fun res!41320 () Bool)

(assert (=> b!79240 (=> (not res!41320) (not e!44378))))

(assert (=> b!79240 (= res!41320 (isBalanced!80 (left!1058 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))))))

(declare-fun d!14724 () Bool)

(declare-fun res!41317 () Bool)

(declare-fun e!44377 () Bool)

(assert (=> d!14724 (=> res!41317 e!44377)))

(assert (=> d!14724 (= res!41317 (not ((_ is Node!413) (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))))))

(assert (=> d!14724 (= (isBalanced!80 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))) e!44377)))

(declare-fun b!79241 () Bool)

(assert (=> b!79241 (= e!44377 e!44378)))

(declare-fun res!41321 () Bool)

(assert (=> b!79241 (=> (not res!41321) (not e!44378))))

(declare-fun height!28 (Conc!413) Int)

(assert (=> b!79241 (= res!41321 (<= (- 1) (- (height!28 (left!1058 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))) (height!28 (right!1388 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))))))))

(declare-fun b!79242 () Bool)

(declare-fun res!41319 () Bool)

(assert (=> b!79242 (=> (not res!41319) (not e!44378))))

(assert (=> b!79242 (= res!41319 (isBalanced!80 (right!1388 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))))))

(declare-fun b!79243 () Bool)

(assert (=> b!79243 (= e!44378 (not (isEmpty!456 (right!1388 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))))))))

(declare-fun b!79244 () Bool)

(declare-fun res!41318 () Bool)

(assert (=> b!79244 (=> (not res!41318) (not e!44378))))

(assert (=> b!79244 (= res!41318 (<= (- (height!28 (left!1058 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)))) (height!28 (right!1388 (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546))))) 1))))

(assert (= (and d!14724 (not res!41317)) b!79241))

(assert (= (and b!79241 res!41321) b!79244))

(assert (= (and b!79244 res!41318) b!79240))

(assert (= (and b!79240 res!41320) b!79242))

(assert (= (and b!79242 res!41319) b!79239))

(assert (= (and b!79239 res!41316) b!79243))

(declare-fun m!53376 () Bool)

(assert (=> b!79242 m!53376))

(declare-fun m!53378 () Bool)

(assert (=> b!79239 m!53378))

(declare-fun m!53380 () Bool)

(assert (=> b!79243 m!53380))

(declare-fun m!53382 () Bool)

(assert (=> b!79244 m!53382))

(declare-fun m!53384 () Bool)

(assert (=> b!79244 m!53384))

(declare-fun m!53386 () Bool)

(assert (=> b!79240 m!53386))

(assert (=> b!79241 m!53382))

(assert (=> b!79241 m!53384))

(assert (=> d!14336 d!14724))

(declare-fun d!14726 () Bool)

(declare-fun e!44381 () Bool)

(assert (=> d!14726 e!44381))

(declare-fun res!41324 () Bool)

(assert (=> d!14726 (=> (not res!41324) (not e!44381))))

(declare-fun lt!17107 () Conc!413)

(assert (=> d!14726 (= res!41324 (isBalanced!80 lt!17107))))

(declare-fun ++!136 (Conc!413 Conc!413) Conc!413)

(declare-fun fill!13 (Int Token!370) IArray!827)

(assert (=> d!14726 (= lt!17107 (++!136 (Leaf!701 (fill!13 1 (h!6793 lt!16546)) 1) (c!20016 (seqFromList!123 (t!20225 lt!16546)))))))

(assert (=> d!14726 (isBalanced!80 (c!20016 (seqFromList!123 (t!20225 lt!16546))))))

(assert (=> d!14726 (= (prepend!61 (c!20016 (seqFromList!123 (t!20225 lt!16546))) (h!6793 lt!16546)) lt!17107)))

(declare-fun b!79247 () Bool)

(assert (=> b!79247 (= e!44381 (= (list!457 lt!17107) (Cons!1396 (h!6793 lt!16546) (list!457 (c!20016 (seqFromList!123 (t!20225 lt!16546)))))))))

(assert (= (and d!14726 res!41324) b!79247))

(declare-fun m!53388 () Bool)

(assert (=> d!14726 m!53388))

(declare-fun m!53390 () Bool)

(assert (=> d!14726 m!53390))

(declare-fun m!53392 () Bool)

(assert (=> d!14726 m!53392))

(declare-fun m!53394 () Bool)

(assert (=> d!14726 m!53394))

(declare-fun m!53396 () Bool)

(assert (=> b!79247 m!53396))

(assert (=> b!79247 m!53232))

(assert (=> d!14336 d!14726))

(declare-fun d!14728 () Bool)

(declare-fun lt!17108 () Int)

(assert (=> d!14728 (= lt!17108 (size!1218 (list!453 (_1!908 lt!16635))))))

(assert (=> d!14728 (= lt!17108 (size!1219 (c!20016 (_1!908 lt!16635))))))

(assert (=> d!14728 (= (size!1215 (_1!908 lt!16635)) lt!17108)))

(declare-fun bs!8243 () Bool)

(assert (= bs!8243 d!14728))

(assert (=> bs!8243 m!52206))

(assert (=> bs!8243 m!52206))

(declare-fun m!53398 () Bool)

(assert (=> bs!8243 m!53398))

(declare-fun m!53400 () Bool)

(assert (=> bs!8243 m!53400))

(assert (=> d!14358 d!14728))

(declare-fun lt!17119 () tuple2!1402)

(declare-fun e!44383 () Bool)

(declare-fun b!79248 () Bool)

(assert (=> b!79248 (= e!44383 (= (list!454 (_2!908 lt!17119)) (list!454 (_2!908 (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)))))))))

(declare-fun e!44385 () tuple2!1402)

(declare-fun b!79249 () Bool)

(declare-fun lt!17132 () BalanceConc!828)

(declare-fun lt!17139 () Option!112)

(assert (=> b!79249 (= e!44385 (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)) lt!17132 (_2!912 (v!12790 lt!17139)) (append!25 (BalanceConc!831 Empty!413) (_1!912 (v!12790 lt!17139)))))))

(declare-fun lt!17129 () tuple2!1402)

(assert (=> b!79249 (= lt!17129 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!17139))))))

(declare-fun lt!17136 () List!1400)

(assert (=> b!79249 (= lt!17136 (list!454 (BalanceConc!829 Empty!412)))))

(declare-fun lt!17111 () List!1400)

(assert (=> b!79249 (= lt!17111 (list!454 (charsOf!42 (_1!912 (v!12790 lt!17139)))))))

(declare-fun lt!17114 () List!1400)

(assert (=> b!79249 (= lt!17114 (list!454 (_2!912 (v!12790 lt!17139))))))

(declare-fun lt!17110 () Unit!852)

(assert (=> b!79249 (= lt!17110 (lemmaConcatAssociativity!42 lt!17136 lt!17111 lt!17114))))

(assert (=> b!79249 (= (++!130 (++!130 lt!17136 lt!17111) lt!17114) (++!130 lt!17136 (++!130 lt!17111 lt!17114)))))

(declare-fun lt!17120 () Unit!852)

(assert (=> b!79249 (= lt!17120 lt!17110)))

(declare-fun lt!17121 () Option!112)

(assert (=> b!79249 (= lt!17121 (maxPrefixZipperSequence!22 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun c!20193 () Bool)

(assert (=> b!79249 (= c!20193 ((_ is Some!111) lt!17121))))

(declare-fun e!44382 () tuple2!1402)

(assert (=> b!79249 (= (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550))) e!44382)))

(declare-fun lt!17116 () Unit!852)

(declare-fun Unit!860 () Unit!852)

(assert (=> b!79249 (= lt!17116 Unit!860)))

(declare-fun lt!17118 () List!1402)

(assert (=> b!79249 (= lt!17118 (list!453 (BalanceConc!831 Empty!413)))))

(declare-fun lt!17126 () List!1402)

(assert (=> b!79249 (= lt!17126 (Cons!1396 (_1!912 (v!12790 lt!17139)) Nil!1396))))

(declare-fun lt!17113 () List!1402)

(assert (=> b!79249 (= lt!17113 (list!453 (_1!908 lt!17129)))))

(declare-fun lt!17112 () Unit!852)

(assert (=> b!79249 (= lt!17112 (lemmaConcatAssociativity!43 lt!17118 lt!17126 lt!17113))))

(assert (=> b!79249 (= (++!133 (++!133 lt!17118 lt!17126) lt!17113) (++!133 lt!17118 (++!133 lt!17126 lt!17113)))))

(declare-fun lt!17117 () Unit!852)

(assert (=> b!79249 (= lt!17117 lt!17112)))

(declare-fun lt!17128 () List!1400)

(assert (=> b!79249 (= lt!17128 (++!130 (list!454 (BalanceConc!829 Empty!412)) (list!454 (charsOf!42 (_1!912 (v!12790 lt!17139))))))))

(declare-fun lt!17137 () List!1400)

(assert (=> b!79249 (= lt!17137 (list!454 (_2!912 (v!12790 lt!17139))))))

(declare-fun lt!17142 () List!1402)

(assert (=> b!79249 (= lt!17142 (list!453 (append!25 (BalanceConc!831 Empty!413) (_1!912 (v!12790 lt!17139)))))))

(declare-fun lt!17109 () Unit!852)

(assert (=> b!79249 (= lt!17109 (lemmaLexThenLexPrefix!19 thiss!19403 rules!2471 lt!17128 lt!17137 lt!17142 (list!453 (_1!908 lt!17129)) (list!454 (_2!908 lt!17129))))))

(assert (=> b!79249 (= (lexList!41 thiss!19403 rules!2471 lt!17128) (tuple2!1407 lt!17142 Nil!1394))))

(declare-fun lt!17135 () Unit!852)

(assert (=> b!79249 (= lt!17135 lt!17109)))

(declare-fun lt!17122 () BalanceConc!828)

(assert (=> b!79249 (= lt!17122 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!17139)))))))

(declare-fun lt!17131 () Option!112)

(assert (=> b!79249 (= lt!17131 (maxPrefixZipperSequence!22 thiss!19403 rules!2471 lt!17122))))

(declare-fun c!20192 () Bool)

(assert (=> b!79249 (= c!20192 ((_ is Some!111) lt!17131))))

(declare-fun e!44384 () tuple2!1402)

(assert (=> b!79249 (= (lexRec!24 thiss!19403 rules!2471 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!17139))))) e!44384)))

(declare-fun lt!17124 () Unit!852)

(declare-fun Unit!861 () Unit!852)

(assert (=> b!79249 (= lt!17124 Unit!861)))

(assert (=> b!79249 (= lt!17132 (++!135 (BalanceConc!829 Empty!412) (charsOf!42 (_1!912 (v!12790 lt!17139)))))))

(declare-fun lt!17133 () List!1400)

(assert (=> b!79249 (= lt!17133 (list!454 lt!17132))))

(declare-fun lt!17125 () List!1400)

(assert (=> b!79249 (= lt!17125 (list!454 (_2!912 (v!12790 lt!17139))))))

(declare-fun lt!17134 () Unit!852)

(assert (=> b!79249 (= lt!17134 (lemmaConcatTwoListThenFSndIsSuffix!19 lt!17133 lt!17125))))

(assert (=> b!79249 (isSuffix!19 lt!17125 (++!130 lt!17133 lt!17125))))

(declare-fun lt!17123 () Unit!852)

(assert (=> b!79249 (= lt!17123 lt!17134)))

(declare-fun b!79250 () Bool)

(declare-fun lt!17115 () tuple2!1402)

(assert (=> b!79250 (= lt!17115 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!17121))))))

(assert (=> b!79250 (= e!44382 (tuple2!1403 (prepend!59 (_1!908 lt!17115) (_1!912 (v!12790 lt!17121))) (_2!908 lt!17115)))))

(declare-fun b!79251 () Bool)

(assert (=> b!79251 (= e!44382 (tuple2!1403 (BalanceConc!831 Empty!413) (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun lt!17130 () tuple2!1402)

(declare-fun b!79252 () Bool)

(assert (=> b!79252 (= lt!17130 (lexRec!24 thiss!19403 rules!2471 (_2!912 (v!12790 lt!17131))))))

(assert (=> b!79252 (= e!44384 (tuple2!1403 (prepend!59 (_1!908 lt!17130) (_1!912 (v!12790 lt!17131))) (_2!908 lt!17130)))))

(declare-fun b!79254 () Bool)

(assert (=> b!79254 (= e!44384 (tuple2!1403 (BalanceConc!831 Empty!413) lt!17122))))

(declare-fun b!79253 () Bool)

(assert (=> b!79253 (= e!44385 (tuple2!1403 (BalanceConc!831 Empty!413) (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun d!14730 () Bool)

(assert (=> d!14730 e!44383))

(declare-fun res!41325 () Bool)

(assert (=> d!14730 (=> (not res!41325) (not e!44383))))

(assert (=> d!14730 (= res!41325 (= (list!453 (_1!908 lt!17119)) (list!453 (_1!908 (lexRec!24 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)))))))))

(assert (=> d!14730 (= lt!17119 e!44385)))

(declare-fun c!20191 () Bool)

(assert (=> d!14730 (= c!20191 ((_ is Some!111) lt!17139))))

(assert (=> d!14730 (= lt!17139 (maxPrefixZipperSequenceV2!19 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)) (seqFromList!122 (_2!909 lt!16550))))))

(declare-fun lt!17138 () Unit!852)

(declare-fun lt!17141 () Unit!852)

(assert (=> d!14730 (= lt!17138 lt!17141)))

(declare-fun lt!17140 () List!1400)

(declare-fun lt!17127 () List!1400)

(assert (=> d!14730 (isSuffix!19 lt!17140 (++!130 lt!17127 lt!17140))))

(assert (=> d!14730 (= lt!17141 (lemmaConcatTwoListThenFSndIsSuffix!19 lt!17127 lt!17140))))

(assert (=> d!14730 (= lt!17140 (list!454 (seqFromList!122 (_2!909 lt!16550))))))

(assert (=> d!14730 (= lt!17127 (list!454 (BalanceConc!829 Empty!412)))))

(assert (=> d!14730 (= (lexTailRecV2!38 thiss!19403 rules!2471 (seqFromList!122 (_2!909 lt!16550)) (BalanceConc!829 Empty!412) (seqFromList!122 (_2!909 lt!16550)) (BalanceConc!831 Empty!413)) lt!17119)))

(assert (= (and d!14730 c!20191) b!79249))

(assert (= (and d!14730 (not c!20191)) b!79253))

(assert (= (and b!79249 c!20193) b!79250))

(assert (= (and b!79249 (not c!20193)) b!79251))

(assert (= (and b!79249 c!20192) b!79252))

(assert (= (and b!79249 (not c!20192)) b!79254))

(assert (= (and d!14730 res!41325) b!79248))

(assert (=> b!79249 m!52380))

(declare-fun m!53402 () Bool)

(assert (=> b!79249 m!53402))

(assert (=> b!79249 m!51908))

(declare-fun m!53404 () Bool)

(assert (=> b!79249 m!53404))

(declare-fun m!53406 () Bool)

(assert (=> b!79249 m!53406))

(declare-fun m!53408 () Bool)

(assert (=> b!79249 m!53408))

(declare-fun m!53410 () Bool)

(assert (=> b!79249 m!53410))

(declare-fun m!53412 () Bool)

(assert (=> b!79249 m!53412))

(assert (=> b!79249 m!53406))

(declare-fun m!53414 () Bool)

(assert (=> b!79249 m!53414))

(assert (=> b!79249 m!51908))

(declare-fun m!53416 () Bool)

(assert (=> b!79249 m!53416))

(declare-fun m!53418 () Bool)

(assert (=> b!79249 m!53418))

(declare-fun m!53420 () Bool)

(assert (=> b!79249 m!53420))

(assert (=> b!79249 m!52402))

(assert (=> b!79249 m!53408))

(declare-fun m!53422 () Bool)

(assert (=> b!79249 m!53422))

(assert (=> b!79249 m!51908))

(assert (=> b!79249 m!53418))

(declare-fun m!53424 () Bool)

(assert (=> b!79249 m!53424))

(declare-fun m!53426 () Bool)

(assert (=> b!79249 m!53426))

(declare-fun m!53428 () Bool)

(assert (=> b!79249 m!53428))

(declare-fun m!53430 () Bool)

(assert (=> b!79249 m!53430))

(declare-fun m!53432 () Bool)

(assert (=> b!79249 m!53432))

(declare-fun m!53434 () Bool)

(assert (=> b!79249 m!53434))

(declare-fun m!53436 () Bool)

(assert (=> b!79249 m!53436))

(declare-fun m!53438 () Bool)

(assert (=> b!79249 m!53438))

(declare-fun m!53440 () Bool)

(assert (=> b!79249 m!53440))

(assert (=> b!79249 m!53428))

(declare-fun m!53442 () Bool)

(assert (=> b!79249 m!53442))

(declare-fun m!53444 () Bool)

(assert (=> b!79249 m!53444))

(declare-fun m!53446 () Bool)

(assert (=> b!79249 m!53446))

(declare-fun m!53448 () Bool)

(assert (=> b!79249 m!53448))

(assert (=> b!79249 m!53426))

(assert (=> b!79249 m!53410))

(assert (=> b!79249 m!53418))

(declare-fun m!53450 () Bool)

(assert (=> b!79249 m!53450))

(declare-fun m!53452 () Bool)

(assert (=> b!79249 m!53452))

(declare-fun m!53454 () Bool)

(assert (=> b!79249 m!53454))

(assert (=> b!79249 m!53452))

(assert (=> b!79249 m!52402))

(assert (=> b!79249 m!53454))

(declare-fun m!53456 () Bool)

(assert (=> b!79249 m!53456))

(declare-fun m!53458 () Bool)

(assert (=> b!79249 m!53458))

(assert (=> b!79249 m!53444))

(declare-fun m!53460 () Bool)

(assert (=> b!79249 m!53460))

(declare-fun m!53462 () Bool)

(assert (=> b!79249 m!53462))

(assert (=> b!79249 m!53446))

(assert (=> b!79249 m!53452))

(assert (=> b!79249 m!53432))

(declare-fun m!53464 () Bool)

(assert (=> b!79248 m!53464))

(assert (=> b!79248 m!51908))

(assert (=> b!79248 m!53416))

(declare-fun m!53466 () Bool)

(assert (=> b!79248 m!53466))

(declare-fun m!53468 () Bool)

(assert (=> d!14730 m!53468))

(assert (=> d!14730 m!51908))

(assert (=> d!14730 m!52200))

(assert (=> d!14730 m!51908))

(assert (=> d!14730 m!53416))

(assert (=> d!14730 m!51908))

(assert (=> d!14730 m!51908))

(declare-fun m!53470 () Bool)

(assert (=> d!14730 m!53470))

(declare-fun m!53472 () Bool)

(assert (=> d!14730 m!53472))

(declare-fun m!53474 () Bool)

(assert (=> d!14730 m!53474))

(declare-fun m!53476 () Bool)

(assert (=> d!14730 m!53476))

(assert (=> d!14730 m!52402))

(assert (=> d!14730 m!53474))

(declare-fun m!53478 () Bool)

(assert (=> d!14730 m!53478))

(declare-fun m!53480 () Bool)

(assert (=> b!79250 m!53480))

(declare-fun m!53482 () Bool)

(assert (=> b!79250 m!53482))

(declare-fun m!53484 () Bool)

(assert (=> b!79252 m!53484))

(declare-fun m!53486 () Bool)

(assert (=> b!79252 m!53486))

(assert (=> d!14358 d!14730))

(declare-fun b!79258 () Bool)

(declare-fun e!44387 () List!1400)

(assert (=> b!79258 (= e!44387 (++!130 (list!458 (left!1057 (c!20014 (charsOf!42 (_1!909 lt!16550))))) (list!458 (right!1387 (c!20014 (charsOf!42 (_1!909 lt!16550)))))))))

(declare-fun d!14732 () Bool)

(declare-fun c!20194 () Bool)

(assert (=> d!14732 (= c!20194 ((_ is Empty!412) (c!20014 (charsOf!42 (_1!909 lt!16550)))))))

(declare-fun e!44386 () List!1400)

(assert (=> d!14732 (= (list!458 (c!20014 (charsOf!42 (_1!909 lt!16550)))) e!44386)))

(declare-fun b!79256 () Bool)

(assert (=> b!79256 (= e!44386 e!44387)))

(declare-fun c!20195 () Bool)

(assert (=> b!79256 (= c!20195 ((_ is Leaf!700) (c!20014 (charsOf!42 (_1!909 lt!16550)))))))

(declare-fun b!79257 () Bool)

(assert (=> b!79257 (= e!44387 (list!461 (xs!2991 (c!20014 (charsOf!42 (_1!909 lt!16550))))))))

(declare-fun b!79255 () Bool)

(assert (=> b!79255 (= e!44386 Nil!1394)))

(assert (= (and d!14732 c!20194) b!79255))

(assert (= (and d!14732 (not c!20194)) b!79256))

(assert (= (and b!79256 c!20195) b!79257))

(assert (= (and b!79256 (not c!20195)) b!79258))

(declare-fun m!53488 () Bool)

(assert (=> b!79258 m!53488))

(declare-fun m!53490 () Bool)

(assert (=> b!79258 m!53490))

(assert (=> b!79258 m!53488))

(assert (=> b!79258 m!53490))

(declare-fun m!53492 () Bool)

(assert (=> b!79258 m!53492))

(declare-fun m!53494 () Bool)

(assert (=> b!79257 m!53494))

(assert (=> d!14328 d!14732))

(declare-fun d!14734 () Bool)

(declare-fun e!44389 () Bool)

(assert (=> d!14734 e!44389))

(declare-fun res!41327 () Bool)

(assert (=> d!14734 (=> (not res!41327) (not e!44389))))

(declare-fun lt!17143 () List!1400)

(assert (=> d!14734 (= res!41327 (= (content!68 lt!17143) ((_ map or) (content!68 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (content!68 (_2!909 (get!346 lt!16571))))))))

(declare-fun e!44388 () List!1400)

(assert (=> d!14734 (= lt!17143 e!44388)))

(declare-fun c!20196 () Bool)

(assert (=> d!14734 (= c!20196 ((_ is Nil!1394) (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))))))

(assert (=> d!14734 (= (++!130 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))) (_2!909 (get!346 lt!16571))) lt!17143)))

(declare-fun b!79261 () Bool)

(declare-fun res!41326 () Bool)

(assert (=> b!79261 (=> (not res!41326) (not e!44389))))

(assert (=> b!79261 (= res!41326 (= (size!1213 lt!17143) (+ (size!1213 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (size!1213 (_2!909 (get!346 lt!16571))))))))

(declare-fun b!79260 () Bool)

(assert (=> b!79260 (= e!44388 (Cons!1394 (h!6791 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (++!130 (t!20223 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571))))) (_2!909 (get!346 lt!16571)))))))

(declare-fun b!79262 () Bool)

(assert (=> b!79262 (= e!44389 (or (not (= (_2!909 (get!346 lt!16571)) Nil!1394)) (= lt!17143 (list!454 (charsOf!42 (_1!909 (get!346 lt!16571)))))))))

(declare-fun b!79259 () Bool)

(assert (=> b!79259 (= e!44388 (_2!909 (get!346 lt!16571)))))

(assert (= (and d!14734 c!20196) b!79259))

(assert (= (and d!14734 (not c!20196)) b!79260))

(assert (= (and d!14734 res!41327) b!79261))

(assert (= (and b!79261 res!41326) b!79262))

(declare-fun m!53496 () Bool)

(assert (=> d!14734 m!53496))

(assert (=> d!14734 m!51976))

(declare-fun m!53498 () Bool)

(assert (=> d!14734 m!53498))

(declare-fun m!53500 () Bool)

(assert (=> d!14734 m!53500))

(declare-fun m!53502 () Bool)

(assert (=> b!79261 m!53502))

(assert (=> b!79261 m!51976))

(declare-fun m!53504 () Bool)

(assert (=> b!79261 m!53504))

(assert (=> b!79261 m!51998))

(declare-fun m!53506 () Bool)

(assert (=> b!79260 m!53506))

(assert (=> b!78468 d!14734))

(assert (=> b!78468 d!14484))

(assert (=> b!78468 d!14486))

(assert (=> b!78468 d!14488))

(declare-fun b!79263 () Bool)

(declare-fun res!41333 () Bool)

(declare-fun e!44391 () Bool)

(assert (=> b!79263 (=> (not res!41333) (not e!44391))))

(declare-fun lt!17148 () Option!110)

(assert (=> b!79263 (= res!41333 (< (size!1213 (_2!909 (get!346 lt!17148))) (size!1213 input!2238)))))

(declare-fun b!79264 () Bool)

(declare-fun res!41328 () Bool)

(assert (=> b!79264 (=> (not res!41328) (not e!44391))))

(assert (=> b!79264 (= res!41328 (= (++!130 (list!454 (charsOf!42 (_1!909 (get!346 lt!17148)))) (_2!909 (get!346 lt!17148))) input!2238))))

(declare-fun d!14736 () Bool)

(declare-fun e!44392 () Bool)

(assert (=> d!14736 e!44392))

(declare-fun res!41330 () Bool)

(assert (=> d!14736 (=> res!41330 e!44392)))

(assert (=> d!14736 (= res!41330 (isEmpty!449 lt!17148))))

(declare-fun e!44390 () Option!110)

(assert (=> d!14736 (= lt!17148 e!44390)))

(declare-fun c!20197 () Bool)

(assert (=> d!14736 (= c!20197 (and ((_ is Cons!1397) (t!20226 rules!2471)) ((_ is Nil!1397) (t!20226 (t!20226 rules!2471)))))))

(declare-fun lt!17147 () Unit!852)

(declare-fun lt!17145 () Unit!852)

(assert (=> d!14736 (= lt!17147 lt!17145)))

(assert (=> d!14736 (isPrefix!17 input!2238 input!2238)))

(assert (=> d!14736 (= lt!17145 (lemmaIsPrefixRefl!17 input!2238 input!2238))))

(assert (=> d!14736 (rulesValidInductive!38 thiss!19403 (t!20226 rules!2471))))

(assert (=> d!14736 (= (maxPrefix!41 thiss!19403 (t!20226 rules!2471) input!2238) lt!17148)))

(declare-fun call!3688 () Option!110)

(declare-fun bm!3683 () Bool)

(assert (=> bm!3683 (= call!3688 (maxPrefixOneRule!15 thiss!19403 (h!6794 (t!20226 rules!2471)) input!2238))))

(declare-fun b!79265 () Bool)

(declare-fun lt!17144 () Option!110)

(declare-fun lt!17146 () Option!110)

(assert (=> b!79265 (= e!44390 (ite (and ((_ is None!109) lt!17144) ((_ is None!109) lt!17146)) None!109 (ite ((_ is None!109) lt!17146) lt!17144 (ite ((_ is None!109) lt!17144) lt!17146 (ite (>= (size!1209 (_1!909 (v!12778 lt!17144))) (size!1209 (_1!909 (v!12778 lt!17146)))) lt!17144 lt!17146)))))))

(assert (=> b!79265 (= lt!17144 call!3688)))

(assert (=> b!79265 (= lt!17146 (maxPrefix!41 thiss!19403 (t!20226 (t!20226 rules!2471)) input!2238))))

(declare-fun b!79266 () Bool)

(declare-fun res!41332 () Bool)

(assert (=> b!79266 (=> (not res!41332) (not e!44391))))

(assert (=> b!79266 (= res!41332 (matchR!19 (regex!305 (rule!784 (_1!909 (get!346 lt!17148)))) (list!454 (charsOf!42 (_1!909 (get!346 lt!17148))))))))

(declare-fun b!79267 () Bool)

(assert (=> b!79267 (= e!44390 call!3688)))

(declare-fun b!79268 () Bool)

(declare-fun res!41331 () Bool)

(assert (=> b!79268 (=> (not res!41331) (not e!44391))))

(assert (=> b!79268 (= res!41331 (= (list!454 (charsOf!42 (_1!909 (get!346 lt!17148)))) (originalCharacters!356 (_1!909 (get!346 lt!17148)))))))

(declare-fun b!79269 () Bool)

(assert (=> b!79269 (= e!44391 (contains!207 (t!20226 rules!2471) (rule!784 (_1!909 (get!346 lt!17148)))))))

(declare-fun b!79270 () Bool)

(assert (=> b!79270 (= e!44392 e!44391)))

(declare-fun res!41334 () Bool)

(assert (=> b!79270 (=> (not res!41334) (not e!44391))))

(assert (=> b!79270 (= res!41334 (isDefined!26 lt!17148))))

(declare-fun b!79271 () Bool)

(declare-fun res!41329 () Bool)

(assert (=> b!79271 (=> (not res!41329) (not e!44391))))

(assert (=> b!79271 (= res!41329 (= (value!11588 (_1!909 (get!346 lt!17148))) (apply!187 (transformation!305 (rule!784 (_1!909 (get!346 lt!17148)))) (seqFromList!122 (originalCharacters!356 (_1!909 (get!346 lt!17148)))))))))

(assert (= (and d!14736 c!20197) b!79267))

(assert (= (and d!14736 (not c!20197)) b!79265))

(assert (= (or b!79267 b!79265) bm!3683))

(assert (= (and d!14736 (not res!41330)) b!79270))

(assert (= (and b!79270 res!41334) b!79268))

(assert (= (and b!79268 res!41331) b!79263))

(assert (= (and b!79263 res!41333) b!79264))

(assert (= (and b!79264 res!41328) b!79271))

(assert (= (and b!79271 res!41329) b!79266))

(assert (= (and b!79266 res!41332) b!79269))

(declare-fun m!53508 () Bool)

(assert (=> b!79270 m!53508))

(declare-fun m!53510 () Bool)

(assert (=> b!79268 m!53510))

(declare-fun m!53512 () Bool)

(assert (=> b!79268 m!53512))

(assert (=> b!79268 m!53512))

(declare-fun m!53514 () Bool)

(assert (=> b!79268 m!53514))

(declare-fun m!53516 () Bool)

(assert (=> bm!3683 m!53516))

(assert (=> b!79269 m!53510))

(declare-fun m!53518 () Bool)

(assert (=> b!79269 m!53518))

(assert (=> b!79266 m!53510))

(assert (=> b!79266 m!53512))

(assert (=> b!79266 m!53512))

(assert (=> b!79266 m!53514))

(assert (=> b!79266 m!53514))

(declare-fun m!53520 () Bool)

(assert (=> b!79266 m!53520))

(assert (=> b!79264 m!53510))

(assert (=> b!79264 m!53512))

(assert (=> b!79264 m!53512))

(assert (=> b!79264 m!53514))

(assert (=> b!79264 m!53514))

(declare-fun m!53522 () Bool)

(assert (=> b!79264 m!53522))

(assert (=> b!79271 m!53510))

(declare-fun m!53524 () Bool)

(assert (=> b!79271 m!53524))

(assert (=> b!79271 m!53524))

(declare-fun m!53526 () Bool)

(assert (=> b!79271 m!53526))

(declare-fun m!53528 () Bool)

(assert (=> d!14736 m!53528))

(assert (=> d!14736 m!51992))

(assert (=> d!14736 m!51994))

(assert (=> d!14736 m!53166))

(assert (=> b!79263 m!53510))

(declare-fun m!53530 () Bool)

(assert (=> b!79263 m!53530))

(assert (=> b!79263 m!52000))

(declare-fun m!53532 () Bool)

(assert (=> b!79265 m!53532))

(assert (=> b!78469 d!14736))

(declare-fun d!14738 () Bool)

(assert (=> d!14738 (= (list!453 (_1!908 lt!16538)) (list!453 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))))))

(assert (=> d!14738 true))

(declare-fun _$1!9856 () Unit!852)

(assert (=> d!14738 (= (choose!1281 (h!6793 lt!16546) (t!20225 lt!16546) (_1!908 lt!16538)) _$1!9856)))

(declare-fun bs!8244 () Bool)

(assert (= bs!8244 d!14738))

(assert (=> bs!8244 m!51918))

(assert (=> bs!8244 m!51880))

(assert (=> bs!8244 m!51880))

(assert (=> bs!8244 m!51882))

(assert (=> bs!8244 m!51882))

(assert (=> bs!8244 m!51888))

(assert (=> d!14326 d!14738))

(declare-fun d!14740 () Bool)

(assert (=> d!14740 (= (seqFromList!123 ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546))) (fromListB!42 ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546))))))

(declare-fun bs!8245 () Bool)

(assert (= bs!8245 d!14740))

(assert (=> bs!8245 m!52004))

(declare-fun m!53534 () Bool)

(assert (=> bs!8245 m!53534))

(assert (=> d!14326 d!14740))

(assert (=> d!14326 d!14312))

(declare-fun d!14742 () Bool)

(assert (=> d!14742 (= ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546)) (Cons!1396 (h!6793 lt!16546) (t!20225 lt!16546)))))

(assert (=> d!14326 d!14742))

(assert (=> d!14326 d!14336))

(declare-fun d!14744 () Bool)

(assert (=> d!14744 (= (list!453 (seqFromList!123 ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546)))) (list!457 (c!20016 (seqFromList!123 ($colon$colon!19 (t!20225 lt!16546) (h!6793 lt!16546))))))))

(declare-fun bs!8246 () Bool)

(assert (= bs!8246 d!14744))

(declare-fun m!53536 () Bool)

(assert (=> bs!8246 m!53536))

(assert (=> d!14326 d!14744))

(assert (=> d!14326 d!14382))

(assert (=> d!14326 d!14384))

(declare-fun bs!8247 () Bool)

(declare-fun d!14746 () Bool)

(assert (= bs!8247 (and d!14746 d!14664)))

(declare-fun lambda!1461 () Int)

(assert (=> bs!8247 (= lambda!1461 lambda!1458)))

(assert (=> d!14746 true))

(declare-fun lt!17151 () Bool)

(assert (=> d!14746 (= lt!17151 (rulesValidInductive!38 thiss!19403 rules!2471))))

(assert (=> d!14746 (= lt!17151 (forall!187 rules!2471 lambda!1461))))

(assert (=> d!14746 (= (rulesValid!61 thiss!19403 rules!2471) lt!17151)))

(declare-fun bs!8248 () Bool)

(assert (= bs!8248 d!14746))

(assert (=> bs!8248 m!51996))

(declare-fun m!53538 () Bool)

(assert (=> bs!8248 m!53538))

(assert (=> d!14398 d!14746))

(declare-fun b!79274 () Bool)

(declare-fun e!44394 () List!1402)

(assert (=> b!79274 (= e!44394 (list!460 (xs!2992 (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))))))))

(declare-fun b!79272 () Bool)

(declare-fun e!44393 () List!1402)

(assert (=> b!79272 (= e!44393 Nil!1396)))

(declare-fun d!14748 () Bool)

(declare-fun c!20198 () Bool)

(assert (=> d!14748 (= c!20198 ((_ is Empty!413) (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)))))))

(assert (=> d!14748 (= (list!457 (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)))) e!44393)))

(declare-fun b!79273 () Bool)

(assert (=> b!79273 (= e!44393 e!44394)))

(declare-fun c!20199 () Bool)

(assert (=> b!79273 (= c!20199 ((_ is Leaf!701) (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)))))))

(declare-fun b!79275 () Bool)

(assert (=> b!79275 (= e!44394 (++!133 (list!457 (left!1058 (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546))))) (list!457 (right!1388 (c!20016 (prepend!59 (seqFromList!123 (t!20225 lt!16546)) (h!6793 lt!16546)))))))))

(assert (= (and d!14748 c!20198) b!79272))

(assert (= (and d!14748 (not c!20198)) b!79273))

(assert (= (and b!79273 c!20199) b!79274))

(assert (= (and b!79273 (not c!20199)) b!79275))

(declare-fun m!53540 () Bool)

(assert (=> b!79274 m!53540))

(declare-fun m!53542 () Bool)

(assert (=> b!79275 m!53542))

(declare-fun m!53544 () Bool)

(assert (=> b!79275 m!53544))

(assert (=> b!79275 m!53542))

(assert (=> b!79275 m!53544))

(declare-fun m!53546 () Bool)

(assert (=> b!79275 m!53546))

(assert (=> d!14382 d!14748))

(declare-fun d!14750 () Bool)

(declare-fun lt!17152 () Int)

(assert (=> d!14750 (>= lt!17152 0)))

(declare-fun e!44395 () Int)

(assert (=> d!14750 (= lt!17152 e!44395)))

(declare-fun c!20200 () Bool)

(assert (=> d!14750 (= c!20200 ((_ is Nil!1394) lt!16580))))

(assert (=> d!14750 (= (size!1213 lt!16580) lt!17152)))

(declare-fun b!79276 () Bool)

(assert (=> b!79276 (= e!44395 0)))

(declare-fun b!79277 () Bool)

(assert (=> b!79277 (= e!44395 (+ 1 (size!1213 (t!20223 lt!16580))))))

(assert (= (and d!14750 c!20200) b!79276))

(assert (= (and d!14750 (not c!20200)) b!79277))

(declare-fun m!53548 () Bool)

(assert (=> b!79277 m!53548))

(assert (=> b!78491 d!14750))

(declare-fun d!14752 () Bool)

(declare-fun lt!17153 () Int)

(assert (=> d!14752 (>= lt!17153 0)))

(declare-fun e!44396 () Int)

(assert (=> d!14752 (= lt!17153 e!44396)))

(declare-fun c!20201 () Bool)

(assert (=> d!14752 (= c!20201 ((_ is Nil!1394) lt!16545))))

(assert (=> d!14752 (= (size!1213 lt!16545) lt!17153)))

(declare-fun b!79278 () Bool)

(assert (=> b!79278 (= e!44396 0)))

(declare-fun b!79279 () Bool)

(assert (=> b!79279 (= e!44396 (+ 1 (size!1213 (t!20223 lt!16545))))))

(assert (= (and d!14752 c!20201) b!79278))

(assert (= (and d!14752 (not c!20201)) b!79279))

(assert (=> b!79279 m!53052))

(assert (=> b!78491 d!14752))

(declare-fun d!14754 () Bool)

(declare-fun lt!17154 () Int)

(assert (=> d!14754 (>= lt!17154 0)))

(declare-fun e!44397 () Int)

(assert (=> d!14754 (= lt!17154 e!44397)))

(declare-fun c!20202 () Bool)

(assert (=> d!14754 (= c!20202 ((_ is Nil!1394) lt!16541))))

(assert (=> d!14754 (= (size!1213 lt!16541) lt!17154)))

(declare-fun b!79280 () Bool)

(assert (=> b!79280 (= e!44397 0)))

(declare-fun b!79281 () Bool)

(assert (=> b!79281 (= e!44397 (+ 1 (size!1213 (t!20223 lt!16541))))))

(assert (= (and d!14754 c!20202) b!79280))

(assert (= (and d!14754 (not c!20202)) b!79281))

(declare-fun m!53550 () Bool)

(assert (=> b!79281 m!53550))

(assert (=> b!78491 d!14754))

(declare-fun b!79285 () Bool)

(declare-fun e!44398 () Bool)

(declare-fun tp!50203 () Bool)

(declare-fun tp!50199 () Bool)

(assert (=> b!79285 (= e!44398 (and tp!50203 tp!50199))))

(assert (=> b!78611 (= tp!50136 e!44398)))

(declare-fun b!79284 () Bool)

(declare-fun tp!50202 () Bool)

(assert (=> b!79284 (= e!44398 tp!50202)))

(declare-fun b!79282 () Bool)

(assert (=> b!79282 (= e!44398 tp_is_empty!669)))

(declare-fun b!79283 () Bool)

(declare-fun tp!50201 () Bool)

(declare-fun tp!50200 () Bool)

(assert (=> b!79283 (= e!44398 (and tp!50201 tp!50200))))

(assert (= (and b!78611 ((_ is ElementMatch!373) (reg!702 (regex!305 (h!6794 rules!2471))))) b!79282))

(assert (= (and b!78611 ((_ is Concat!669) (reg!702 (regex!305 (h!6794 rules!2471))))) b!79283))

(assert (= (and b!78611 ((_ is Star!373) (reg!702 (regex!305 (h!6794 rules!2471))))) b!79284))

(assert (= (and b!78611 ((_ is Union!373) (reg!702 (regex!305 (h!6794 rules!2471))))) b!79285))

(declare-fun b!79286 () Bool)

(declare-fun e!44399 () Bool)

(declare-fun tp!50204 () Bool)

(assert (=> b!79286 (= e!44399 (and tp_is_empty!669 tp!50204))))

(assert (=> b!78617 (= tp!50140 e!44399)))

(assert (= (and b!78617 ((_ is Cons!1394) (t!20223 (t!20223 input!2238)))) b!79286))

(declare-fun b!79289 () Bool)

(declare-fun b_free!2545 () Bool)

(declare-fun b_next!2545 () Bool)

(assert (=> b!79289 (= b_free!2545 (not b_next!2545))))

(declare-fun t!20272 () Bool)

(declare-fun tb!2441 () Bool)

(assert (=> (and b!79289 (= (toValue!816 (transformation!305 (h!6794 (t!20226 (t!20226 rules!2471))))) (toValue!816 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20272) tb!2441))

(declare-fun result!3512 () Bool)

(assert (= result!3512 result!3506))

(assert (=> d!14720 t!20272))

(declare-fun tp!50206 () Bool)

(declare-fun b_and!3643 () Bool)

(assert (=> b!79289 (= tp!50206 (and (=> t!20272 result!3512) b_and!3643))))

(declare-fun b_free!2547 () Bool)

(declare-fun b_next!2547 () Bool)

(assert (=> b!79289 (= b_free!2547 (not b_next!2547))))

(declare-fun t!20274 () Bool)

(declare-fun tb!2443 () Bool)

(assert (=> (and b!79289 (= (toChars!675 (transformation!305 (h!6794 (t!20226 (t!20226 rules!2471))))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550))))) t!20274) tb!2443))

(declare-fun result!3514 () Bool)

(assert (= result!3514 result!3464))

(assert (=> d!14330 t!20274))

(declare-fun tb!2445 () Bool)

(declare-fun t!20276 () Bool)

(assert (=> (and b!79289 (= (toChars!675 (transformation!305 (h!6794 (t!20226 (t!20226 rules!2471))))) (toChars!675 (transformation!305 (rule!784 (_1!909 (get!346 lt!16571)))))) t!20276) tb!2445))

(declare-fun result!3516 () Bool)

(assert (= result!3516 result!3484))

(assert (=> d!14486 t!20276))

(declare-fun tp!50207 () Bool)

(declare-fun b_and!3645 () Bool)

(assert (=> b!79289 (= tp!50207 (and (=> t!20274 result!3514) (=> t!20276 result!3516) b_and!3645))))

(declare-fun e!44403 () Bool)

(assert (=> b!79289 (= e!44403 (and tp!50206 tp!50207))))

(declare-fun b!79288 () Bool)

(declare-fun e!44401 () Bool)

(declare-fun tp!50208 () Bool)

(assert (=> b!79288 (= e!44401 (and tp!50208 (inv!1747 (tag!483 (h!6794 (t!20226 (t!20226 rules!2471))))) (inv!1749 (transformation!305 (h!6794 (t!20226 (t!20226 rules!2471))))) e!44403))))

(declare-fun b!79287 () Bool)

(declare-fun e!44400 () Bool)

(declare-fun tp!50205 () Bool)

(assert (=> b!79287 (= e!44400 (and e!44401 tp!50205))))

(assert (=> b!78626 (= tp!50149 e!44400)))

(assert (= b!79288 b!79289))

(assert (= b!79287 b!79288))

(assert (= (and b!78626 ((_ is Cons!1397) (t!20226 (t!20226 rules!2471)))) b!79287))

(declare-fun m!53552 () Bool)

(assert (=> b!79288 m!53552))

(declare-fun m!53554 () Bool)

(assert (=> b!79288 m!53554))

(declare-fun e!44408 () Bool)

(declare-fun tp!50215 () Bool)

(declare-fun tp!50217 () Bool)

(declare-fun b!79298 () Bool)

(assert (=> b!79298 (= e!44408 (and (inv!1752 (left!1057 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))) tp!50215 (inv!1752 (right!1387 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))) tp!50217))))

(declare-fun b!79300 () Bool)

(declare-fun e!44409 () Bool)

(declare-fun tp!50216 () Bool)

(assert (=> b!79300 (= e!44409 tp!50216)))

(declare-fun b!79299 () Bool)

(declare-fun inv!1759 (IArray!825) Bool)

(assert (=> b!79299 (= e!44408 (and (inv!1759 (xs!2991 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))) e!44409))))

(assert (=> b!78480 (= tp!50092 (and (inv!1752 (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550))))) e!44408))))

(assert (= (and b!78480 ((_ is Node!412) (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))) b!79298))

(assert (= b!79299 b!79300))

(assert (= (and b!78480 ((_ is Leaf!700) (c!20014 (dynLambda!329 (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))) (value!11588 (_1!909 lt!16550)))))) b!79299))

(declare-fun m!53556 () Bool)

(assert (=> b!79298 m!53556))

(declare-fun m!53558 () Bool)

(assert (=> b!79298 m!53558))

(declare-fun m!53560 () Bool)

(assert (=> b!79299 m!53560))

(assert (=> b!78480 m!52014))

(declare-fun b!79304 () Bool)

(declare-fun e!44410 () Bool)

(declare-fun tp!50222 () Bool)

(declare-fun tp!50218 () Bool)

(assert (=> b!79304 (= e!44410 (and tp!50222 tp!50218))))

(assert (=> b!78627 (= tp!50152 e!44410)))

(declare-fun b!79303 () Bool)

(declare-fun tp!50221 () Bool)

(assert (=> b!79303 (= e!44410 tp!50221)))

(declare-fun b!79301 () Bool)

(assert (=> b!79301 (= e!44410 tp_is_empty!669)))

(declare-fun b!79302 () Bool)

(declare-fun tp!50220 () Bool)

(declare-fun tp!50219 () Bool)

(assert (=> b!79302 (= e!44410 (and tp!50220 tp!50219))))

(assert (= (and b!78627 ((_ is ElementMatch!373) (regex!305 (h!6794 (t!20226 rules!2471))))) b!79301))

(assert (= (and b!78627 ((_ is Concat!669) (regex!305 (h!6794 (t!20226 rules!2471))))) b!79302))

(assert (= (and b!78627 ((_ is Star!373) (regex!305 (h!6794 (t!20226 rules!2471))))) b!79303))

(assert (= (and b!78627 ((_ is Union!373) (regex!305 (h!6794 (t!20226 rules!2471))))) b!79304))

(declare-fun b!79308 () Bool)

(declare-fun e!44411 () Bool)

(declare-fun tp!50227 () Bool)

(declare-fun tp!50223 () Bool)

(assert (=> b!79308 (= e!44411 (and tp!50227 tp!50223))))

(assert (=> b!78612 (= tp!50137 e!44411)))

(declare-fun b!79307 () Bool)

(declare-fun tp!50226 () Bool)

(assert (=> b!79307 (= e!44411 tp!50226)))

(declare-fun b!79305 () Bool)

(assert (=> b!79305 (= e!44411 tp_is_empty!669)))

(declare-fun b!79306 () Bool)

(declare-fun tp!50225 () Bool)

(declare-fun tp!50224 () Bool)

(assert (=> b!79306 (= e!44411 (and tp!50225 tp!50224))))

(assert (= (and b!78612 ((_ is ElementMatch!373) (regOne!1259 (regex!305 (h!6794 rules!2471))))) b!79305))

(assert (= (and b!78612 ((_ is Concat!669) (regOne!1259 (regex!305 (h!6794 rules!2471))))) b!79306))

(assert (= (and b!78612 ((_ is Star!373) (regOne!1259 (regex!305 (h!6794 rules!2471))))) b!79307))

(assert (= (and b!78612 ((_ is Union!373) (regOne!1259 (regex!305 (h!6794 rules!2471))))) b!79308))

(declare-fun b!79312 () Bool)

(declare-fun e!44412 () Bool)

(declare-fun tp!50232 () Bool)

(declare-fun tp!50228 () Bool)

(assert (=> b!79312 (= e!44412 (and tp!50232 tp!50228))))

(assert (=> b!78612 (= tp!50133 e!44412)))

(declare-fun b!79311 () Bool)

(declare-fun tp!50231 () Bool)

(assert (=> b!79311 (= e!44412 tp!50231)))

(declare-fun b!79309 () Bool)

(assert (=> b!79309 (= e!44412 tp_is_empty!669)))

(declare-fun b!79310 () Bool)

(declare-fun tp!50230 () Bool)

(declare-fun tp!50229 () Bool)

(assert (=> b!79310 (= e!44412 (and tp!50230 tp!50229))))

(assert (= (and b!78612 ((_ is ElementMatch!373) (regTwo!1259 (regex!305 (h!6794 rules!2471))))) b!79309))

(assert (= (and b!78612 ((_ is Concat!669) (regTwo!1259 (regex!305 (h!6794 rules!2471))))) b!79310))

(assert (= (and b!78612 ((_ is Star!373) (regTwo!1259 (regex!305 (h!6794 rules!2471))))) b!79311))

(assert (= (and b!78612 ((_ is Union!373) (regTwo!1259 (regex!305 (h!6794 rules!2471))))) b!79312))

(declare-fun b!79316 () Bool)

(declare-fun e!44413 () Bool)

(declare-fun tp!50237 () Bool)

(declare-fun tp!50233 () Bool)

(assert (=> b!79316 (= e!44413 (and tp!50237 tp!50233))))

(assert (=> b!78610 (= tp!50135 e!44413)))

(declare-fun b!79315 () Bool)

(declare-fun tp!50236 () Bool)

(assert (=> b!79315 (= e!44413 tp!50236)))

(declare-fun b!79313 () Bool)

(assert (=> b!79313 (= e!44413 tp_is_empty!669)))

(declare-fun b!79314 () Bool)

(declare-fun tp!50235 () Bool)

(declare-fun tp!50234 () Bool)

(assert (=> b!79314 (= e!44413 (and tp!50235 tp!50234))))

(assert (= (and b!78610 ((_ is ElementMatch!373) (regOne!1258 (regex!305 (h!6794 rules!2471))))) b!79313))

(assert (= (and b!78610 ((_ is Concat!669) (regOne!1258 (regex!305 (h!6794 rules!2471))))) b!79314))

(assert (= (and b!78610 ((_ is Star!373) (regOne!1258 (regex!305 (h!6794 rules!2471))))) b!79315))

(assert (= (and b!78610 ((_ is Union!373) (regOne!1258 (regex!305 (h!6794 rules!2471))))) b!79316))

(declare-fun b!79320 () Bool)

(declare-fun e!44414 () Bool)

(declare-fun tp!50242 () Bool)

(declare-fun tp!50238 () Bool)

(assert (=> b!79320 (= e!44414 (and tp!50242 tp!50238))))

(assert (=> b!78610 (= tp!50134 e!44414)))

(declare-fun b!79319 () Bool)

(declare-fun tp!50241 () Bool)

(assert (=> b!79319 (= e!44414 tp!50241)))

(declare-fun b!79317 () Bool)

(assert (=> b!79317 (= e!44414 tp_is_empty!669)))

(declare-fun b!79318 () Bool)

(declare-fun tp!50240 () Bool)

(declare-fun tp!50239 () Bool)

(assert (=> b!79318 (= e!44414 (and tp!50240 tp!50239))))

(assert (= (and b!78610 ((_ is ElementMatch!373) (regTwo!1258 (regex!305 (h!6794 rules!2471))))) b!79317))

(assert (= (and b!78610 ((_ is Concat!669) (regTwo!1258 (regex!305 (h!6794 rules!2471))))) b!79318))

(assert (= (and b!78610 ((_ is Star!373) (regTwo!1258 (regex!305 (h!6794 rules!2471))))) b!79319))

(assert (= (and b!78610 ((_ is Union!373) (regTwo!1258 (regex!305 (h!6794 rules!2471))))) b!79320))

(declare-fun b_lambda!899 () Bool)

(assert (= b_lambda!887 (or (and b!78419 b_free!2531 (= (toChars!675 (transformation!305 (h!6794 rules!2471))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))))) (and b!78628 b_free!2539 (= (toChars!675 (transformation!305 (h!6794 (t!20226 rules!2471)))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))))) (and b!79289 b_free!2547 (= (toChars!675 (transformation!305 (h!6794 (t!20226 (t!20226 rules!2471))))) (toChars!675 (transformation!305 (rule!784 (_1!909 lt!16550)))))) b_lambda!899)))

(check-sat (not b!79306) (not d!14492) (not b!79014) (not d!14714) (not b!79269) (not b!79217) (not b!79274) (not b!79027) (not b!79045) (not b!79088) tp_is_empty!669 (not d!14700) (not b!78800) (not b!79285) (not b!78721) (not b!78915) (not d!14640) (not b!79304) (not b!79243) (not b!78919) (not d!14686) (not b!79083) (not b!78942) (not b!79250) (not d!14730) (not d!14486) (not b!79241) (not b!79203) (not d!14746) (not b!79260) (not d!14722) (not b!79257) (not b_next!2547) (not b!79314) (not b!79087) (not b!79242) (not d!14712) (not d!14476) (not b!78916) (not d!14684) (not b!79028) (not b!79248) (not b!79300) (not b!79001) (not b!79202) (not tb!2437) (not b_lambda!889) (not b!78705) (not d!14578) (not b!79283) b_and!3623 (not d!14622) (not b!79286) b_and!3641 (not b!79287) (not d!14620) (not b!79012) (not d!14510) (not tb!2419) (not b!79320) (not b!79224) (not d!14482) (not d!14678) (not b!79261) (not b!79258) (not b!79060) (not b!79086) (not b!79075) (not b!78914) (not b!79265) (not d!14438) (not d!14674) (not d!14680) (not b!79212) (not b!78480) (not b!78920) (not b!79252) (not b!79319) (not d!14660) (not b!78720) (not b!78701) (not b!79044) (not b!79279) (not b!79268) (not d!14670) (not b!79312) (not d!14728) b_and!3639 (not b!79315) (not b!79214) (not b!79244) (not b_next!2537) (not d!14594) (not b!79017) (not d!14530) (not d!14498) (not d!14696) (not b!79085) b_and!3645 (not b_lambda!899) (not b!79210) (not b!78913) (not d!14474) (not d!14448) (not d!14682) (not b!79266) (not b!79308) (not b!78689) (not d!14664) (not d!14472) (not b!79239) (not d!14676) (not b!79299) (not b!79307) (not b!79263) (not d!14636) (not d!14744) (not b!79200) (not d!14736) (not b!78941) (not b!79013) (not b!78783) (not b_next!2539) (not b!79201) (not b!79271) (not d!14450) (not d!14614) (not d!14718) (not b!79284) (not b!78829) (not b_next!2531) (not d!14484) (not b!78704) (not b!79004) (not b!79010) (not b!79298) (not b!78787) (not b!79310) (not b!79318) (not bm!3679) (not b!78782) (not d!14514) b_and!3625 (not b!79275) (not d!14672) (not b!78917) (not d!14702) (not b!78921) (not b!79031) (not b!78827) (not d!14688) (not d!14694) (not b!79068) (not bm!3683) (not b!78687) (not b!78680) (not d!14506) (not b_next!2529) (not b!79247) (not d!14478) (not d!14644) (not d!14738) (not b!79281) (not b_lambda!897) (not d!14440) (not b!78816) (not b!78722) (not d!14666) (not b!79016) (not b!79288) (not b!79316) (not b!78786) (not b!79062) (not b_next!2545) (not b!78724) (not b!79067) (not b!79061) (not b!79270) (not d!14726) (not d!14504) (not d!14646) (not d!14740) (not b!79091) b_and!3643 (not d!14734) (not b!79277) (not b!79240) (not b!79249) (not b!79264) (not b!78700) (not d!14716) (not b!79218) (not b!79303) (not b!79311) (not b!79302) (not b!78679))
(check-sat (not b_next!2547) b_and!3623 b_and!3641 b_and!3645 (not b_next!2539) (not b_next!2531) b_and!3625 (not b_next!2529) (not b_next!2545) b_and!3643 b_and!3639 (not b_next!2537))
