; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!6620 () Bool)

(assert start!6620)

(declare-fun b!79403 () Bool)

(declare-fun b_free!2557 () Bool)

(declare-fun b_next!2557 () Bool)

(assert (=> b!79403 (= b_free!2557 (not b_next!2557))))

(declare-fun tp!50284 () Bool)

(declare-fun b_and!3655 () Bool)

(assert (=> b!79403 (= tp!50284 b_and!3655)))

(declare-fun b_free!2559 () Bool)

(declare-fun b_next!2559 () Bool)

(assert (=> b!79403 (= b_free!2559 (not b_next!2559))))

(declare-fun tp!50285 () Bool)

(declare-fun b_and!3657 () Bool)

(assert (=> b!79403 (= tp!50285 b_and!3657)))

(declare-fun b!79396 () Bool)

(declare-fun e!44488 () Bool)

(declare-datatypes ((LexerInterface!200 0))(
  ( (LexerInterfaceExt!197 (__x!1691 Int)) (Lexer!198) )
))
(declare-fun thiss!19403 () LexerInterface!200)

(declare-datatypes ((C!1674 0))(
  ( (C!1675 (val!444 Int)) )
))
(declare-datatypes ((List!1414 0))(
  ( (Nil!1408) (Cons!1408 (h!6805 C!1674) (t!20285 List!1414)) )
))
(declare-datatypes ((IArray!837 0))(
  ( (IArray!838 (innerList!476 List!1414)) )
))
(declare-datatypes ((Conc!418 0))(
  ( (Node!418 (left!1069 Conc!418) (right!1399 Conc!418) (csize!1066 Int) (cheight!629 Int)) (Leaf!708 (xs!2997 IArray!837) (csize!1067 Int)) (Empty!418) )
))
(declare-datatypes ((BalanceConc!840 0))(
  ( (BalanceConc!841 (c!20212 Conc!418)) )
))
(declare-datatypes ((Regex!376 0))(
  ( (ElementMatch!376 (c!20213 C!1674)) (Concat!674 (regOne!1264 Regex!376) (regTwo!1264 Regex!376)) (EmptyExpr!376) (Star!376 (reg!705 Regex!376)) (EmptyLang!376) (Union!376 (regOne!1265 Regex!376) (regTwo!1265 Regex!376)) )
))
(declare-datatypes ((String!1883 0))(
  ( (String!1884 (value!11649 String)) )
))
(declare-datatypes ((List!1415 0))(
  ( (Nil!1409) (Cons!1409 (h!6806 (_ BitVec 16)) (t!20286 List!1415)) )
))
(declare-datatypes ((TokenValue!298 0))(
  ( (FloatLiteralValue!596 (text!2531 List!1415)) (TokenValueExt!297 (__x!1692 Int)) (Broken!1490 (value!11650 List!1415)) (Object!303) (End!298) (Def!298) (Underscore!298) (Match!298) (Else!298) (Error!298) (Case!298) (If!298) (Extends!298) (Abstract!298) (Class!298) (Val!298) (DelimiterValue!596 (del!358 List!1415)) (KeywordValue!304 (value!11651 List!1415)) (CommentValue!596 (value!11652 List!1415)) (WhitespaceValue!596 (value!11653 List!1415)) (IndentationValue!298 (value!11654 List!1415)) (String!1885) (Int32!298) (Broken!1491 (value!11655 List!1415)) (Boolean!299) (Unit!868) (OperatorValue!301 (op!358 List!1415)) (IdentifierValue!596 (value!11656 List!1415)) (IdentifierValue!597 (value!11657 List!1415)) (WhitespaceValue!597 (value!11658 List!1415)) (True!596) (False!596) (Broken!1492 (value!11659 List!1415)) (Broken!1493 (value!11660 List!1415)) (True!597) (RightBrace!298) (RightBracket!298) (Colon!298) (Null!298) (Comma!298) (LeftBracket!298) (False!597) (LeftBrace!298) (ImaginaryLiteralValue!298 (text!2532 List!1415)) (StringLiteralValue!894 (value!11661 List!1415)) (EOFValue!298 (value!11662 List!1415)) (IdentValue!298 (value!11663 List!1415)) (DelimiterValue!597 (value!11664 List!1415)) (DedentValue!298 (value!11665 List!1415)) (NewLineValue!298 (value!11666 List!1415)) (IntegerValue!894 (value!11667 (_ BitVec 32)) (text!2533 List!1415)) (IntegerValue!895 (value!11668 Int) (text!2534 List!1415)) (Times!298) (Or!298) (Equal!298) (Minus!298) (Broken!1494 (value!11669 List!1415)) (And!298) (Div!298) (LessEqual!298) (Mod!298) (Concat!675) (Not!298) (Plus!298) (SpaceValue!298 (value!11670 List!1415)) (IntegerValue!896 (value!11671 Int) (text!2535 List!1415)) (StringLiteralValue!895 (text!2536 List!1415)) (FloatLiteralValue!597 (text!2537 List!1415)) (BytesLiteralValue!298 (value!11672 List!1415)) (CommentValue!597 (value!11673 List!1415)) (StringLiteralValue!896 (value!11674 List!1415)) (ErrorTokenValue!298 (msg!359 List!1415)) )
))
(declare-datatypes ((TokenValueInjection!420 0))(
  ( (TokenValueInjection!421 (toValue!823 Int) (toChars!682 Int)) )
))
(declare-datatypes ((Rule!416 0))(
  ( (Rule!417 (regex!308 Regex!376) (tag!486 String!1883) (isSeparator!308 Bool) (transformation!308 TokenValueInjection!420)) )
))
(declare-datatypes ((List!1416 0))(
  ( (Nil!1410) (Cons!1410 (h!6807 Rule!416) (t!20287 List!1416)) )
))
(declare-fun rules!2471 () List!1416)

(declare-fun rulesValidInductive!39 (LexerInterface!200 List!1416) Bool)

(assert (=> b!79396 (= e!44488 (rulesValidInductive!39 thiss!19403 rules!2471))))

(declare-fun b!79397 () Bool)

(declare-fun e!44489 () Bool)

(declare-fun tp_is_empty!675 () Bool)

(declare-fun tp!50287 () Bool)

(assert (=> b!79397 (= e!44489 (and tp_is_empty!675 tp!50287))))

(declare-fun b!79398 () Bool)

(declare-fun res!41378 () Bool)

(declare-fun e!44481 () Bool)

(assert (=> b!79398 (=> (not res!41378) (not e!44481))))

(declare-fun rulesInvariant!194 (LexerInterface!200 List!1416) Bool)

(assert (=> b!79398 (= res!41378 (rulesInvariant!194 thiss!19403 rules!2471))))

(declare-fun b!79399 () Bool)

(declare-fun e!44485 () Bool)

(assert (=> b!79399 (= e!44485 (not e!44488))))

(declare-fun res!41380 () Bool)

(assert (=> b!79399 (=> res!41380 e!44488)))

(declare-fun input!2238 () List!1414)

(declare-datatypes ((Token!376 0))(
  ( (Token!377 (value!11675 TokenValue!298) (rule!789 Rule!416) (size!1224 Int) (originalCharacters!359 List!1414)) )
))
(declare-datatypes ((tuple2!1428 0))(
  ( (tuple2!1429 (_1!921 Token!376) (_2!921 List!1414)) )
))
(declare-fun lt!17257 () tuple2!1428)

(declare-fun ++!139 (List!1414 List!1414) List!1414)

(declare-fun list!467 (BalanceConc!840) List!1414)

(declare-fun charsOf!45 (Token!376) BalanceConc!840)

(assert (=> b!79399 (= res!41380 (not (= input!2238 (++!139 (list!467 (charsOf!45 (_1!921 lt!17257))) (_2!921 lt!17257)))))))

(declare-datatypes ((List!1417 0))(
  ( (Nil!1411) (Cons!1411 (h!6808 Token!376) (t!20288 List!1417)) )
))
(declare-datatypes ((IArray!839 0))(
  ( (IArray!840 (innerList!477 List!1417)) )
))
(declare-datatypes ((Conc!419 0))(
  ( (Node!419 (left!1070 Conc!419) (right!1400 Conc!419) (csize!1068 Int) (cheight!630 Int)) (Leaf!709 (xs!2998 IArray!839) (csize!1069 Int)) (Empty!419) )
))
(declare-datatypes ((BalanceConc!842 0))(
  ( (BalanceConc!843 (c!20214 Conc!419)) )
))
(declare-datatypes ((tuple2!1430 0))(
  ( (tuple2!1431 (_1!922 BalanceConc!842) (_2!922 BalanceConc!840)) )
))
(declare-fun lt!17258 () tuple2!1430)

(declare-fun lt!17259 () List!1414)

(declare-fun lt!17253 () List!1414)

(declare-fun lt!17250 () List!1417)

(declare-datatypes ((tuple2!1432 0))(
  ( (tuple2!1433 (_1!923 List!1417) (_2!923 List!1414)) )
))
(declare-fun list!468 (BalanceConc!842) List!1417)

(declare-fun tail!119 (List!1417) List!1417)

(assert (=> b!79399 (= (tuple2!1433 (list!468 (_1!922 lt!17258)) lt!17259) (tuple2!1433 (tail!119 lt!17250) lt!17253))))

(declare-datatypes ((Unit!869 0))(
  ( (Unit!870) )
))
(declare-fun lt!17254 () Unit!869)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!19 (LexerInterface!200 List!1416 List!1414 List!1417 List!1414) Unit!869)

(assert (=> b!79399 (= lt!17254 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!19 thiss!19403 rules!2471 input!2238 lt!17250 lt!17253))))

(declare-fun lt!17252 () tuple2!1430)

(assert (=> b!79399 (= lt!17253 (list!467 (_2!922 lt!17252)))))

(declare-fun lt!17255 () List!1414)

(assert (=> b!79399 (= (++!139 lt!17255 lt!17259) (_2!921 lt!17257))))

(assert (=> b!79399 (= lt!17259 (list!467 (_2!922 lt!17258)))))

(declare-fun print!39 (LexerInterface!200 BalanceConc!842) BalanceConc!840)

(assert (=> b!79399 (= lt!17255 (list!467 (print!39 thiss!19403 (_1!922 lt!17258))))))

(declare-fun lex!108 (LexerInterface!200 List!1416 BalanceConc!840) tuple2!1430)

(declare-fun seqFromList!128 (List!1414) BalanceConc!840)

(assert (=> b!79399 (= lt!17258 (lex!108 thiss!19403 rules!2471 (seqFromList!128 (_2!921 lt!17257))))))

(declare-fun lt!17249 () Unit!869)

(declare-fun theoremInvertFromString!23 (LexerInterface!200 List!1416 List!1414) Unit!869)

(assert (=> b!79399 (= lt!17249 (theoremInvertFromString!23 thiss!19403 rules!2471 (_2!921 lt!17257)))))

(declare-datatypes ((Option!115 0))(
  ( (None!114) (Some!114 (v!12793 tuple2!1428)) )
))
(declare-fun get!351 (Option!115) tuple2!1428)

(declare-fun maxPrefix!44 (LexerInterface!200 List!1416 List!1414) Option!115)

(assert (=> b!79399 (= lt!17257 (get!351 (maxPrefix!44 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!64 (BalanceConc!842 Token!376) BalanceConc!842)

(declare-fun seqFromList!129 (List!1417) BalanceConc!842)

(assert (=> b!79399 (= lt!17250 (list!468 (prepend!64 (seqFromList!129 (t!20288 lt!17250)) (h!6808 lt!17250))))))

(declare-fun lt!17251 () Unit!869)

(declare-fun seqFromListBHdTlConstructive!31 (Token!376 List!1417 BalanceConc!842) Unit!869)

(assert (=> b!79399 (= lt!17251 (seqFromListBHdTlConstructive!31 (h!6808 lt!17250) (t!20288 lt!17250) (_1!922 lt!17252)))))

(declare-fun b!79400 () Bool)

(declare-fun e!44482 () Bool)

(assert (=> b!79400 (= e!44482 e!44485)))

(declare-fun res!41377 () Bool)

(assert (=> b!79400 (=> (not res!41377) (not e!44485))))

(declare-fun lt!17256 () Bool)

(assert (=> b!79400 (= res!41377 (and (or lt!17256 (not (is-Nil!1411 (t!20288 lt!17250)))) (not lt!17256)))))

(assert (=> b!79400 (= lt!17256 (not (is-Cons!1411 lt!17250)))))

(assert (=> b!79400 (= lt!17250 (list!468 (_1!922 lt!17252)))))

(declare-fun b!79395 () Bool)

(declare-fun e!44484 () Bool)

(declare-fun e!44486 () Bool)

(declare-fun tp!50283 () Bool)

(assert (=> b!79395 (= e!44484 (and e!44486 tp!50283))))

(declare-fun res!41381 () Bool)

(assert (=> start!6620 (=> (not res!41381) (not e!44481))))

(assert (=> start!6620 (= res!41381 (is-Lexer!198 thiss!19403))))

(assert (=> start!6620 e!44481))

(assert (=> start!6620 true))

(assert (=> start!6620 e!44484))

(assert (=> start!6620 e!44489))

(declare-fun tp!50286 () Bool)

(declare-fun b!79401 () Bool)

(declare-fun e!44483 () Bool)

(declare-fun inv!1765 (String!1883) Bool)

(declare-fun inv!1768 (TokenValueInjection!420) Bool)

(assert (=> b!79401 (= e!44486 (and tp!50286 (inv!1765 (tag!486 (h!6807 rules!2471))) (inv!1768 (transformation!308 (h!6807 rules!2471))) e!44483))))

(declare-fun b!79402 () Bool)

(declare-fun res!41379 () Bool)

(assert (=> b!79402 (=> (not res!41379) (not e!44481))))

(declare-fun isEmpty!461 (List!1416) Bool)

(assert (=> b!79402 (= res!41379 (not (isEmpty!461 rules!2471)))))

(assert (=> b!79403 (= e!44483 (and tp!50284 tp!50285))))

(declare-fun b!79404 () Bool)

(assert (=> b!79404 (= e!44481 e!44482)))

(declare-fun res!41382 () Bool)

(assert (=> b!79404 (=> (not res!41382) (not e!44482))))

(declare-fun isEmpty!462 (BalanceConc!840) Bool)

(assert (=> b!79404 (= res!41382 (not (isEmpty!462 (_2!922 lt!17252))))))

(assert (=> b!79404 (= lt!17252 (lex!108 thiss!19403 rules!2471 (seqFromList!128 input!2238)))))

(assert (= (and start!6620 res!41381) b!79402))

(assert (= (and b!79402 res!41379) b!79398))

(assert (= (and b!79398 res!41378) b!79404))

(assert (= (and b!79404 res!41382) b!79400))

(assert (= (and b!79400 res!41377) b!79399))

(assert (= (and b!79399 (not res!41380)) b!79396))

(assert (= b!79401 b!79403))

(assert (= b!79395 b!79401))

(assert (= (and start!6620 (is-Cons!1410 rules!2471)) b!79395))

(assert (= (and start!6620 (is-Cons!1408 input!2238)) b!79397))

(declare-fun m!53674 () Bool)

(assert (=> b!79398 m!53674))

(declare-fun m!53676 () Bool)

(assert (=> b!79404 m!53676))

(declare-fun m!53678 () Bool)

(assert (=> b!79404 m!53678))

(assert (=> b!79404 m!53678))

(declare-fun m!53680 () Bool)

(assert (=> b!79404 m!53680))

(declare-fun m!53682 () Bool)

(assert (=> b!79402 m!53682))

(declare-fun m!53684 () Bool)

(assert (=> b!79401 m!53684))

(declare-fun m!53686 () Bool)

(assert (=> b!79401 m!53686))

(declare-fun m!53688 () Bool)

(assert (=> b!79399 m!53688))

(declare-fun m!53690 () Bool)

(assert (=> b!79399 m!53690))

(declare-fun m!53692 () Bool)

(assert (=> b!79399 m!53692))

(declare-fun m!53694 () Bool)

(assert (=> b!79399 m!53694))

(assert (=> b!79399 m!53692))

(declare-fun m!53696 () Bool)

(assert (=> b!79399 m!53696))

(declare-fun m!53698 () Bool)

(assert (=> b!79399 m!53698))

(assert (=> b!79399 m!53688))

(declare-fun m!53700 () Bool)

(assert (=> b!79399 m!53700))

(assert (=> b!79399 m!53694))

(declare-fun m!53702 () Bool)

(assert (=> b!79399 m!53702))

(declare-fun m!53704 () Bool)

(assert (=> b!79399 m!53704))

(assert (=> b!79399 m!53698))

(declare-fun m!53706 () Bool)

(assert (=> b!79399 m!53706))

(assert (=> b!79399 m!53704))

(declare-fun m!53708 () Bool)

(assert (=> b!79399 m!53708))

(declare-fun m!53710 () Bool)

(assert (=> b!79399 m!53710))

(declare-fun m!53712 () Bool)

(assert (=> b!79399 m!53712))

(declare-fun m!53714 () Bool)

(assert (=> b!79399 m!53714))

(assert (=> b!79399 m!53708))

(declare-fun m!53716 () Bool)

(assert (=> b!79399 m!53716))

(declare-fun m!53718 () Bool)

(assert (=> b!79399 m!53718))

(declare-fun m!53720 () Bool)

(assert (=> b!79399 m!53720))

(declare-fun m!53722 () Bool)

(assert (=> b!79399 m!53722))

(assert (=> b!79399 m!53706))

(declare-fun m!53724 () Bool)

(assert (=> b!79399 m!53724))

(declare-fun m!53726 () Bool)

(assert (=> b!79399 m!53726))

(declare-fun m!53728 () Bool)

(assert (=> b!79396 m!53728))

(declare-fun m!53730 () Bool)

(assert (=> b!79400 m!53730))

(push 1)

(assert (not b!79401))

(assert (not b!79397))

(assert (not b!79404))

(assert (not b!79400))

(assert tp_is_empty!675)

(assert (not b!79396))

(assert (not b!79398))

(assert (not b!79402))

(assert (not b_next!2557))

(assert b_and!3655)

(assert (not b!79399))

(assert (not b_next!2559))

(assert b_and!3657)

(assert (not b!79395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3657)

(assert b_and!3655)

(assert (not b_next!2559))

(assert (not b_next!2557))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!14758 () Bool)

(assert (=> d!14758 (= (inv!1765 (tag!486 (h!6807 rules!2471))) (= (mod (str.len (value!11649 (tag!486 (h!6807 rules!2471)))) 2) 0))))

(assert (=> b!79401 d!14758))

(declare-fun d!14760 () Bool)

(declare-fun res!41411 () Bool)

(declare-fun e!44519 () Bool)

(assert (=> d!14760 (=> (not res!41411) (not e!44519))))

(declare-fun semiInverseModEq!54 (Int Int) Bool)

(assert (=> d!14760 (= res!41411 (semiInverseModEq!54 (toChars!682 (transformation!308 (h!6807 rules!2471))) (toValue!823 (transformation!308 (h!6807 rules!2471)))))))

(assert (=> d!14760 (= (inv!1768 (transformation!308 (h!6807 rules!2471))) e!44519)))

(declare-fun b!79437 () Bool)

(declare-fun equivClasses!50 (Int Int) Bool)

(assert (=> b!79437 (= e!44519 (equivClasses!50 (toChars!682 (transformation!308 (h!6807 rules!2471))) (toValue!823 (transformation!308 (h!6807 rules!2471)))))))

(assert (= (and d!14760 res!41411) b!79437))

(declare-fun m!53790 () Bool)

(assert (=> d!14760 m!53790))

(declare-fun m!53792 () Bool)

(assert (=> b!79437 m!53792))

(assert (=> b!79401 d!14760))

(declare-fun d!14762 () Bool)

(assert (=> d!14762 true))

(declare-fun lt!17297 () Bool)

(declare-fun lambda!1464 () Int)

(declare-fun forall!189 (List!1416 Int) Bool)

(assert (=> d!14762 (= lt!17297 (forall!189 rules!2471 lambda!1464))))

(declare-fun e!44532 () Bool)

(assert (=> d!14762 (= lt!17297 e!44532)))

(declare-fun res!41424 () Bool)

(assert (=> d!14762 (=> res!41424 e!44532)))

(assert (=> d!14762 (= res!41424 (not (is-Cons!1410 rules!2471)))))

(assert (=> d!14762 (= (rulesValidInductive!39 thiss!19403 rules!2471) lt!17297)))

(declare-fun b!79449 () Bool)

(declare-fun e!44531 () Bool)

(assert (=> b!79449 (= e!44532 e!44531)))

(declare-fun res!41423 () Bool)

(assert (=> b!79449 (=> (not res!41423) (not e!44531))))

(declare-fun ruleValid!21 (LexerInterface!200 Rule!416) Bool)

(assert (=> b!79449 (= res!41423 (ruleValid!21 thiss!19403 (h!6807 rules!2471)))))

(declare-fun b!79450 () Bool)

(assert (=> b!79450 (= e!44531 (rulesValidInductive!39 thiss!19403 (t!20287 rules!2471)))))

(assert (= (and d!14762 (not res!41424)) b!79449))

(assert (= (and b!79449 res!41423) b!79450))

(declare-fun m!53800 () Bool)

(assert (=> d!14762 m!53800))

(declare-fun m!53802 () Bool)

(assert (=> b!79449 m!53802))

(declare-fun m!53804 () Bool)

(assert (=> b!79450 m!53804))

(assert (=> b!79396 d!14762))

(declare-fun d!14770 () Bool)

(declare-fun list!471 (Conc!419) List!1417)

(assert (=> d!14770 (= (list!468 (_1!922 lt!17252)) (list!471 (c!20214 (_1!922 lt!17252))))))

(declare-fun bs!8254 () Bool)

(assert (= bs!8254 d!14770))

(declare-fun m!53806 () Bool)

(assert (=> bs!8254 m!53806))

(assert (=> b!79400 d!14770))

(declare-fun d!14772 () Bool)

(declare-fun res!41427 () Bool)

(declare-fun e!44535 () Bool)

(assert (=> d!14772 (=> (not res!41427) (not e!44535))))

(declare-fun rulesValid!62 (LexerInterface!200 List!1416) Bool)

(assert (=> d!14772 (= res!41427 (rulesValid!62 thiss!19403 rules!2471))))

(assert (=> d!14772 (= (rulesInvariant!194 thiss!19403 rules!2471) e!44535)))

(declare-fun b!79455 () Bool)

(declare-datatypes ((List!1422 0))(
  ( (Nil!1416) (Cons!1416 (h!6813 String!1883) (t!20297 List!1422)) )
))
(declare-fun noDuplicateTag!62 (LexerInterface!200 List!1416 List!1422) Bool)

(assert (=> b!79455 (= e!44535 (noDuplicateTag!62 thiss!19403 rules!2471 Nil!1416))))

(assert (= (and d!14772 res!41427) b!79455))

(declare-fun m!53808 () Bool)

(assert (=> d!14772 m!53808))

(declare-fun m!53810 () Bool)

(assert (=> b!79455 m!53810))

(assert (=> b!79398 d!14772))

(declare-fun d!14774 () Bool)

(declare-fun lt!17300 () Bool)

(declare-fun isEmpty!465 (List!1414) Bool)

(assert (=> d!14774 (= lt!17300 (isEmpty!465 (list!467 (_2!922 lt!17252))))))

(declare-fun isEmpty!466 (Conc!418) Bool)

(assert (=> d!14774 (= lt!17300 (isEmpty!466 (c!20212 (_2!922 lt!17252))))))

(assert (=> d!14774 (= (isEmpty!462 (_2!922 lt!17252)) lt!17300)))

(declare-fun bs!8255 () Bool)

(assert (= bs!8255 d!14774))

(assert (=> bs!8255 m!53712))

(assert (=> bs!8255 m!53712))

(declare-fun m!53812 () Bool)

(assert (=> bs!8255 m!53812))

(declare-fun m!53814 () Bool)

(assert (=> bs!8255 m!53814))

(assert (=> b!79404 d!14774))

(declare-fun e!44543 () Bool)

(declare-fun b!79466 () Bool)

(declare-fun lt!17303 () tuple2!1430)

(declare-fun lexList!42 (LexerInterface!200 List!1416 List!1414) tuple2!1432)

(assert (=> b!79466 (= e!44543 (= (list!467 (_2!922 lt!17303)) (_2!923 (lexList!42 thiss!19403 rules!2471 (list!467 (seqFromList!128 input!2238))))))))

(declare-fun b!79467 () Bool)

(declare-fun e!44542 () Bool)

(declare-fun isEmpty!467 (BalanceConc!842) Bool)

(assert (=> b!79467 (= e!44542 (not (isEmpty!467 (_1!922 lt!17303))))))

(declare-fun b!79468 () Bool)

(declare-fun e!44544 () Bool)

(assert (=> b!79468 (= e!44544 e!44542)))

(declare-fun res!41436 () Bool)

(declare-fun size!1226 (BalanceConc!840) Int)

(assert (=> b!79468 (= res!41436 (< (size!1226 (_2!922 lt!17303)) (size!1226 (seqFromList!128 input!2238))))))

(assert (=> b!79468 (=> (not res!41436) (not e!44542))))

(declare-fun b!79469 () Bool)

(assert (=> b!79469 (= e!44544 (= (_2!922 lt!17303) (seqFromList!128 input!2238)))))

(declare-fun d!14776 () Bool)

(assert (=> d!14776 e!44543))

(declare-fun res!41435 () Bool)

(assert (=> d!14776 (=> (not res!41435) (not e!44543))))

(assert (=> d!14776 (= res!41435 e!44544)))

(declare-fun c!20221 () Bool)

(declare-fun size!1227 (BalanceConc!842) Int)

(assert (=> d!14776 (= c!20221 (> (size!1227 (_1!922 lt!17303)) 0))))

(declare-fun lexTailRecV2!39 (LexerInterface!200 List!1416 BalanceConc!840 BalanceConc!840 BalanceConc!840 BalanceConc!842) tuple2!1430)

(assert (=> d!14776 (= lt!17303 (lexTailRecV2!39 thiss!19403 rules!2471 (seqFromList!128 input!2238) (BalanceConc!841 Empty!418) (seqFromList!128 input!2238) (BalanceConc!843 Empty!419)))))

(assert (=> d!14776 (= (lex!108 thiss!19403 rules!2471 (seqFromList!128 input!2238)) lt!17303)))

(declare-fun b!79470 () Bool)

(declare-fun res!41434 () Bool)

(assert (=> b!79470 (=> (not res!41434) (not e!44543))))

(assert (=> b!79470 (= res!41434 (= (list!468 (_1!922 lt!17303)) (_1!923 (lexList!42 thiss!19403 rules!2471 (list!467 (seqFromList!128 input!2238))))))))

(assert (= (and d!14776 c!20221) b!79468))

(assert (= (and d!14776 (not c!20221)) b!79469))

(assert (= (and b!79468 res!41436) b!79467))

(assert (= (and d!14776 res!41435) b!79470))

(assert (= (and b!79470 res!41434) b!79466))

(declare-fun m!53816 () Bool)

(assert (=> d!14776 m!53816))

(assert (=> d!14776 m!53678))

(assert (=> d!14776 m!53678))

(declare-fun m!53818 () Bool)

(assert (=> d!14776 m!53818))

(declare-fun m!53820 () Bool)

(assert (=> b!79467 m!53820))

(declare-fun m!53822 () Bool)

(assert (=> b!79466 m!53822))

(assert (=> b!79466 m!53678))

(declare-fun m!53824 () Bool)

(assert (=> b!79466 m!53824))

(assert (=> b!79466 m!53824))

(declare-fun m!53826 () Bool)

(assert (=> b!79466 m!53826))

(declare-fun m!53828 () Bool)

(assert (=> b!79468 m!53828))

(assert (=> b!79468 m!53678))

(declare-fun m!53830 () Bool)

(assert (=> b!79468 m!53830))

(declare-fun m!53832 () Bool)

(assert (=> b!79470 m!53832))

(assert (=> b!79470 m!53678))

(assert (=> b!79470 m!53824))

(assert (=> b!79470 m!53824))

(assert (=> b!79470 m!53826))

(assert (=> b!79404 d!14776))

(declare-fun d!14778 () Bool)

(declare-fun fromListB!43 (List!1414) BalanceConc!840)

(assert (=> d!14778 (= (seqFromList!128 input!2238) (fromListB!43 input!2238))))

(declare-fun bs!8256 () Bool)

(assert (= bs!8256 d!14778))

(declare-fun m!53834 () Bool)

(assert (=> bs!8256 m!53834))

(assert (=> b!79404 d!14778))

(declare-fun d!14780 () Bool)

(declare-fun list!472 (Conc!418) List!1414)

(assert (=> d!14780 (= (list!467 (charsOf!45 (_1!921 lt!17257))) (list!472 (c!20212 (charsOf!45 (_1!921 lt!17257)))))))

(declare-fun bs!8257 () Bool)

(assert (= bs!8257 d!14780))

(declare-fun m!53836 () Bool)

(assert (=> bs!8257 m!53836))

(assert (=> b!79399 d!14780))

(declare-fun b!79489 () Bool)

(declare-fun res!41455 () Bool)

(declare-fun e!44553 () Bool)

(assert (=> b!79489 (=> (not res!41455) (not e!44553))))

(declare-fun lt!17314 () Option!115)

(assert (=> b!79489 (= res!41455 (= (list!467 (charsOf!45 (_1!921 (get!351 lt!17314)))) (originalCharacters!359 (_1!921 (get!351 lt!17314)))))))

(declare-fun b!79491 () Bool)

(declare-fun res!41453 () Bool)

(assert (=> b!79491 (=> (not res!41453) (not e!44553))))

(declare-fun matchR!20 (Regex!376 List!1414) Bool)

(assert (=> b!79491 (= res!41453 (matchR!20 (regex!308 (rule!789 (_1!921 (get!351 lt!17314)))) (list!467 (charsOf!45 (_1!921 (get!351 lt!17314))))))))

(declare-fun b!79492 () Bool)

(declare-fun e!44552 () Bool)

(assert (=> b!79492 (= e!44552 e!44553)))

(declare-fun res!41454 () Bool)

(assert (=> b!79492 (=> (not res!41454) (not e!44553))))

(declare-fun isDefined!27 (Option!115) Bool)

(assert (=> b!79492 (= res!41454 (isDefined!27 lt!17314))))

(declare-fun b!79493 () Bool)

(declare-fun contains!210 (List!1416 Rule!416) Bool)

(assert (=> b!79493 (= e!44553 (contains!210 rules!2471 (rule!789 (_1!921 (get!351 lt!17314)))))))

(declare-fun b!79494 () Bool)

(declare-fun res!41457 () Bool)

(assert (=> b!79494 (=> (not res!41457) (not e!44553))))

(assert (=> b!79494 (= res!41457 (= (++!139 (list!467 (charsOf!45 (_1!921 (get!351 lt!17314)))) (_2!921 (get!351 lt!17314))) input!2238))))

(declare-fun b!79495 () Bool)

(declare-fun e!44551 () Option!115)

(declare-fun call!3691 () Option!115)

(assert (=> b!79495 (= e!44551 call!3691)))

(declare-fun b!79496 () Bool)

(declare-fun lt!17315 () Option!115)

(declare-fun lt!17316 () Option!115)

(assert (=> b!79496 (= e!44551 (ite (and (is-None!114 lt!17315) (is-None!114 lt!17316)) None!114 (ite (is-None!114 lt!17316) lt!17315 (ite (is-None!114 lt!17315) lt!17316 (ite (>= (size!1224 (_1!921 (v!12793 lt!17315))) (size!1224 (_1!921 (v!12793 lt!17316)))) lt!17315 lt!17316)))))))

(assert (=> b!79496 (= lt!17315 call!3691)))

(assert (=> b!79496 (= lt!17316 (maxPrefix!44 thiss!19403 (t!20287 rules!2471) input!2238))))

(declare-fun d!14782 () Bool)

(assert (=> d!14782 e!44552))

(declare-fun res!41451 () Bool)

(assert (=> d!14782 (=> res!41451 e!44552)))

(declare-fun isEmpty!468 (Option!115) Bool)

(assert (=> d!14782 (= res!41451 (isEmpty!468 lt!17314))))

(assert (=> d!14782 (= lt!17314 e!44551)))

(declare-fun c!20224 () Bool)

(assert (=> d!14782 (= c!20224 (and (is-Cons!1410 rules!2471) (is-Nil!1410 (t!20287 rules!2471))))))

(declare-fun lt!17317 () Unit!869)

(declare-fun lt!17318 () Unit!869)

(assert (=> d!14782 (= lt!17317 lt!17318)))

(declare-fun isPrefix!18 (List!1414 List!1414) Bool)

(assert (=> d!14782 (isPrefix!18 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!18 (List!1414 List!1414) Unit!869)

(assert (=> d!14782 (= lt!17318 (lemmaIsPrefixRefl!18 input!2238 input!2238))))

(assert (=> d!14782 (rulesValidInductive!39 thiss!19403 rules!2471)))

(assert (=> d!14782 (= (maxPrefix!44 thiss!19403 rules!2471 input!2238) lt!17314)))

(declare-fun b!79490 () Bool)

(declare-fun res!41456 () Bool)

(assert (=> b!79490 (=> (not res!41456) (not e!44553))))

(declare-fun size!1228 (List!1414) Int)

(assert (=> b!79490 (= res!41456 (< (size!1228 (_2!921 (get!351 lt!17314))) (size!1228 input!2238)))))

(declare-fun bm!3686 () Bool)

(declare-fun maxPrefixOneRule!16 (LexerInterface!200 Rule!416 List!1414) Option!115)

(assert (=> bm!3686 (= call!3691 (maxPrefixOneRule!16 thiss!19403 (h!6807 rules!2471) input!2238))))

(declare-fun b!79497 () Bool)

(declare-fun res!41452 () Bool)

(assert (=> b!79497 (=> (not res!41452) (not e!44553))))

(declare-fun apply!192 (TokenValueInjection!420 BalanceConc!840) TokenValue!298)

(assert (=> b!79497 (= res!41452 (= (value!11675 (_1!921 (get!351 lt!17314))) (apply!192 (transformation!308 (rule!789 (_1!921 (get!351 lt!17314)))) (seqFromList!128 (originalCharacters!359 (_1!921 (get!351 lt!17314)))))))))

(assert (= (and d!14782 c!20224) b!79495))

(assert (= (and d!14782 (not c!20224)) b!79496))

(assert (= (or b!79495 b!79496) bm!3686))

(assert (= (and d!14782 (not res!41451)) b!79492))

(assert (= (and b!79492 res!41454) b!79489))

(assert (= (and b!79489 res!41455) b!79490))

(assert (= (and b!79490 res!41456) b!79494))

(assert (= (and b!79494 res!41457) b!79497))

(assert (= (and b!79497 res!41452) b!79491))

(assert (= (and b!79491 res!41453) b!79493))

(declare-fun m!53838 () Bool)

(assert (=> b!79491 m!53838))

(declare-fun m!53840 () Bool)

(assert (=> b!79491 m!53840))

(assert (=> b!79491 m!53840))

(declare-fun m!53842 () Bool)

(assert (=> b!79491 m!53842))

(assert (=> b!79491 m!53842))

(declare-fun m!53844 () Bool)

(assert (=> b!79491 m!53844))

(declare-fun m!53846 () Bool)

(assert (=> bm!3686 m!53846))

(assert (=> b!79490 m!53838))

(declare-fun m!53848 () Bool)

(assert (=> b!79490 m!53848))

(declare-fun m!53850 () Bool)

(assert (=> b!79490 m!53850))

(declare-fun m!53852 () Bool)

(assert (=> b!79496 m!53852))

(assert (=> b!79493 m!53838))

(declare-fun m!53854 () Bool)

(assert (=> b!79493 m!53854))

(assert (=> b!79494 m!53838))

(assert (=> b!79494 m!53840))

(assert (=> b!79494 m!53840))

(assert (=> b!79494 m!53842))

(assert (=> b!79494 m!53842))

(declare-fun m!53856 () Bool)

(assert (=> b!79494 m!53856))

(declare-fun m!53858 () Bool)

(assert (=> b!79492 m!53858))

(declare-fun m!53860 () Bool)

(assert (=> d!14782 m!53860))

(declare-fun m!53862 () Bool)

(assert (=> d!14782 m!53862))

(declare-fun m!53864 () Bool)

(assert (=> d!14782 m!53864))

(assert (=> d!14782 m!53728))

(assert (=> b!79497 m!53838))

(declare-fun m!53866 () Bool)

(assert (=> b!79497 m!53866))

(assert (=> b!79497 m!53866))

(declare-fun m!53868 () Bool)

(assert (=> b!79497 m!53868))

(assert (=> b!79489 m!53838))

(assert (=> b!79489 m!53840))

(assert (=> b!79489 m!53840))

(assert (=> b!79489 m!53842))

(assert (=> b!79399 d!14782))

(declare-fun d!14784 () Bool)

(declare-fun e!44556 () Bool)

(assert (=> d!14784 e!44556))

(declare-fun res!41460 () Bool)

(assert (=> d!14784 (=> (not res!41460) (not e!44556))))

(declare-fun isBalanced!83 (Conc!419) Bool)

(declare-fun prepend!66 (Conc!419 Token!376) Conc!419)

(assert (=> d!14784 (= res!41460 (isBalanced!83 (prepend!66 (c!20214 (seqFromList!129 (t!20288 lt!17250))) (h!6808 lt!17250))))))

(declare-fun lt!17321 () BalanceConc!842)

(assert (=> d!14784 (= lt!17321 (BalanceConc!843 (prepend!66 (c!20214 (seqFromList!129 (t!20288 lt!17250))) (h!6808 lt!17250))))))

(assert (=> d!14784 (= (prepend!64 (seqFromList!129 (t!20288 lt!17250)) (h!6808 lt!17250)) lt!17321)))

(declare-fun b!79500 () Bool)

(assert (=> b!79500 (= e!44556 (= (list!468 lt!17321) (Cons!1411 (h!6808 lt!17250) (list!468 (seqFromList!129 (t!20288 lt!17250))))))))

(assert (= (and d!14784 res!41460) b!79500))

(declare-fun m!53870 () Bool)

(assert (=> d!14784 m!53870))

(assert (=> d!14784 m!53870))

(declare-fun m!53872 () Bool)

(assert (=> d!14784 m!53872))

(declare-fun m!53874 () Bool)

(assert (=> b!79500 m!53874))

(assert (=> b!79500 m!53698))

(declare-fun m!53876 () Bool)

(assert (=> b!79500 m!53876))

(assert (=> b!79399 d!14784))

(declare-fun d!14786 () Bool)

(declare-fun lt!17325 () BalanceConc!840)

(declare-fun printList!14 (LexerInterface!200 List!1417) List!1414)

(assert (=> d!14786 (= (list!467 lt!17325) (printList!14 thiss!19403 (list!468 (_1!922 lt!17258))))))

(declare-fun printTailRec!14 (LexerInterface!200 BalanceConc!842 Int BalanceConc!840) BalanceConc!840)

(assert (=> d!14786 (= lt!17325 (printTailRec!14 thiss!19403 (_1!922 lt!17258) 0 (BalanceConc!841 Empty!418)))))

(assert (=> d!14786 (= (print!39 thiss!19403 (_1!922 lt!17258)) lt!17325)))

(declare-fun bs!8258 () Bool)

(assert (= bs!8258 d!14786))

(declare-fun m!53878 () Bool)

(assert (=> bs!8258 m!53878))

(assert (=> bs!8258 m!53726))

(assert (=> bs!8258 m!53726))

(declare-fun m!53880 () Bool)

(assert (=> bs!8258 m!53880))

(declare-fun m!53882 () Bool)

(assert (=> bs!8258 m!53882))

(assert (=> b!79399 d!14786))

(declare-fun lt!17326 () tuple2!1430)

(declare-fun b!79505 () Bool)

(declare-fun e!44560 () Bool)

(assert (=> b!79505 (= e!44560 (= (list!467 (_2!922 lt!17326)) (_2!923 (lexList!42 thiss!19403 rules!2471 (list!467 (seqFromList!128 (_2!921 lt!17257)))))))))

(declare-fun b!79506 () Bool)

(declare-fun e!44559 () Bool)

(assert (=> b!79506 (= e!44559 (not (isEmpty!467 (_1!922 lt!17326))))))

(declare-fun b!79507 () Bool)

(declare-fun e!44561 () Bool)

(assert (=> b!79507 (= e!44561 e!44559)))

(declare-fun res!41465 () Bool)

(assert (=> b!79507 (= res!41465 (< (size!1226 (_2!922 lt!17326)) (size!1226 (seqFromList!128 (_2!921 lt!17257)))))))

(assert (=> b!79507 (=> (not res!41465) (not e!44559))))

(declare-fun b!79508 () Bool)

(assert (=> b!79508 (= e!44561 (= (_2!922 lt!17326) (seqFromList!128 (_2!921 lt!17257))))))

(declare-fun d!14788 () Bool)

(assert (=> d!14788 e!44560))

(declare-fun res!41464 () Bool)

(assert (=> d!14788 (=> (not res!41464) (not e!44560))))

(assert (=> d!14788 (= res!41464 e!44561)))

(declare-fun c!20226 () Bool)

(assert (=> d!14788 (= c!20226 (> (size!1227 (_1!922 lt!17326)) 0))))

(assert (=> d!14788 (= lt!17326 (lexTailRecV2!39 thiss!19403 rules!2471 (seqFromList!128 (_2!921 lt!17257)) (BalanceConc!841 Empty!418) (seqFromList!128 (_2!921 lt!17257)) (BalanceConc!843 Empty!419)))))

(assert (=> d!14788 (= (lex!108 thiss!19403 rules!2471 (seqFromList!128 (_2!921 lt!17257))) lt!17326)))

(declare-fun b!79509 () Bool)

(declare-fun res!41463 () Bool)

(assert (=> b!79509 (=> (not res!41463) (not e!44560))))

(assert (=> b!79509 (= res!41463 (= (list!468 (_1!922 lt!17326)) (_1!923 (lexList!42 thiss!19403 rules!2471 (list!467 (seqFromList!128 (_2!921 lt!17257)))))))))

(assert (= (and d!14788 c!20226) b!79507))

(assert (= (and d!14788 (not c!20226)) b!79508))

(assert (= (and b!79507 res!41465) b!79506))

(assert (= (and d!14788 res!41464) b!79509))

(assert (= (and b!79509 res!41463) b!79505))

(declare-fun m!53884 () Bool)

(assert (=> d!14788 m!53884))

(assert (=> d!14788 m!53694))

(assert (=> d!14788 m!53694))

(declare-fun m!53886 () Bool)

(assert (=> d!14788 m!53886))

(declare-fun m!53888 () Bool)

(assert (=> b!79506 m!53888))

(declare-fun m!53890 () Bool)

(assert (=> b!79505 m!53890))

(assert (=> b!79505 m!53694))

(declare-fun m!53892 () Bool)

(assert (=> b!79505 m!53892))

(assert (=> b!79505 m!53892))

(declare-fun m!53894 () Bool)

(assert (=> b!79505 m!53894))

(declare-fun m!53896 () Bool)

(assert (=> b!79507 m!53896))

(assert (=> b!79507 m!53694))

(declare-fun m!53898 () Bool)

(assert (=> b!79507 m!53898))

(declare-fun m!53900 () Bool)

(assert (=> b!79509 m!53900))

(assert (=> b!79509 m!53694))

(assert (=> b!79509 m!53892))

(assert (=> b!79509 m!53892))

(assert (=> b!79509 m!53894))

(assert (=> b!79399 d!14788))

(declare-fun d!14790 () Bool)

(assert (=> d!14790 (= (tail!119 lt!17250) (t!20288 lt!17250))))

(assert (=> b!79399 d!14790))

(declare-fun d!14794 () Bool)

(assert (=> d!14794 (= (seqFromList!128 (_2!921 lt!17257)) (fromListB!43 (_2!921 lt!17257)))))

(declare-fun bs!8259 () Bool)

(assert (= bs!8259 d!14794))

(declare-fun m!53908 () Bool)

(assert (=> bs!8259 m!53908))

(assert (=> b!79399 d!14794))

(declare-fun d!14796 () Bool)

(assert (=> d!14796 (= (list!467 (_2!922 lt!17252)) (list!472 (c!20212 (_2!922 lt!17252))))))

(declare-fun bs!8260 () Bool)

(assert (= bs!8260 d!14796))

(declare-fun m!53910 () Bool)

(assert (=> bs!8260 m!53910))

(assert (=> b!79399 d!14796))

(declare-fun d!14798 () Bool)

(assert (=> d!14798 (= (list!467 (print!39 thiss!19403 (_1!922 lt!17258))) (list!472 (c!20212 (print!39 thiss!19403 (_1!922 lt!17258)))))))

(declare-fun bs!8261 () Bool)

(assert (= bs!8261 d!14798))

(declare-fun m!53912 () Bool)

(assert (=> bs!8261 m!53912))

(assert (=> b!79399 d!14798))

(declare-fun d!14800 () Bool)

(declare-fun lt!17335 () tuple2!1430)

(assert (=> d!14800 (= (tuple2!1433 (list!468 (_1!922 lt!17335)) (list!467 (_2!922 lt!17335))) (tuple2!1433 (tail!119 lt!17250) lt!17253))))

(assert (=> d!14800 (= lt!17335 (lex!108 thiss!19403 rules!2471 (seqFromList!128 (_2!921 (get!351 (maxPrefix!44 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!17334 () Unit!869)

(declare-fun choose!1286 (LexerInterface!200 List!1416 List!1414 List!1417 List!1414) Unit!869)

(assert (=> d!14800 (= lt!17334 (choose!1286 thiss!19403 rules!2471 input!2238 lt!17250 lt!17253))))

(assert (=> d!14800 (rulesInvariant!194 thiss!19403 rules!2471)))

(assert (=> d!14800 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!19 thiss!19403 rules!2471 input!2238 lt!17250 lt!17253) lt!17334)))

(declare-fun bs!8263 () Bool)

(assert (= bs!8263 d!14800))

(assert (=> bs!8263 m!53700))

(assert (=> bs!8263 m!53692))

(assert (=> bs!8263 m!53696))

(declare-fun m!53918 () Bool)

(assert (=> bs!8263 m!53918))

(declare-fun m!53920 () Bool)

(assert (=> bs!8263 m!53920))

(declare-fun m!53922 () Bool)

(assert (=> bs!8263 m!53922))

(assert (=> bs!8263 m!53674))

(assert (=> bs!8263 m!53692))

(assert (=> bs!8263 m!53922))

(declare-fun m!53924 () Bool)

(assert (=> bs!8263 m!53924))

(declare-fun m!53926 () Bool)

(assert (=> bs!8263 m!53926))

(assert (=> b!79399 d!14800))

(declare-fun b!79536 () Bool)

(declare-fun e!44575 () Bool)

(declare-fun lt!17341 () List!1414)

(assert (=> b!79536 (= e!44575 (or (not (= (_2!921 lt!17257) Nil!1408)) (= lt!17341 (list!467 (charsOf!45 (_1!921 lt!17257))))))))

(declare-fun b!79535 () Bool)

(declare-fun res!41480 () Bool)

(assert (=> b!79535 (=> (not res!41480) (not e!44575))))

(assert (=> b!79535 (= res!41480 (= (size!1228 lt!17341) (+ (size!1228 (list!467 (charsOf!45 (_1!921 lt!17257)))) (size!1228 (_2!921 lt!17257)))))))

(declare-fun d!14804 () Bool)

(assert (=> d!14804 e!44575))

(declare-fun res!41479 () Bool)

(assert (=> d!14804 (=> (not res!41479) (not e!44575))))

(declare-fun content!71 (List!1414) (Set C!1674))

(assert (=> d!14804 (= res!41479 (= (content!71 lt!17341) (set.union (content!71 (list!467 (charsOf!45 (_1!921 lt!17257)))) (content!71 (_2!921 lt!17257)))))))

(declare-fun e!44576 () List!1414)

(assert (=> d!14804 (= lt!17341 e!44576)))

(declare-fun c!20232 () Bool)

(assert (=> d!14804 (= c!20232 (is-Nil!1408 (list!467 (charsOf!45 (_1!921 lt!17257)))))))

(assert (=> d!14804 (= (++!139 (list!467 (charsOf!45 (_1!921 lt!17257))) (_2!921 lt!17257)) lt!17341)))

(declare-fun b!79533 () Bool)

(assert (=> b!79533 (= e!44576 (_2!921 lt!17257))))

(declare-fun b!79534 () Bool)

(assert (=> b!79534 (= e!44576 (Cons!1408 (h!6805 (list!467 (charsOf!45 (_1!921 lt!17257)))) (++!139 (t!20285 (list!467 (charsOf!45 (_1!921 lt!17257)))) (_2!921 lt!17257))))))

(assert (= (and d!14804 c!20232) b!79533))

(assert (= (and d!14804 (not c!20232)) b!79534))

(assert (= (and d!14804 res!41479) b!79535))

(assert (= (and b!79535 res!41480) b!79536))

(declare-fun m!53946 () Bool)

(assert (=> b!79535 m!53946))

(assert (=> b!79535 m!53708))

(declare-fun m!53948 () Bool)

(assert (=> b!79535 m!53948))

(declare-fun m!53950 () Bool)

(assert (=> b!79535 m!53950))

(declare-fun m!53952 () Bool)

(assert (=> d!14804 m!53952))

(assert (=> d!14804 m!53708))

(declare-fun m!53954 () Bool)

(assert (=> d!14804 m!53954))

(declare-fun m!53956 () Bool)

(assert (=> d!14804 m!53956))

(declare-fun m!53958 () Bool)

(assert (=> b!79534 m!53958))

(assert (=> b!79399 d!14804))

(declare-fun d!14808 () Bool)

(declare-fun fromListB!44 (List!1417) BalanceConc!842)

(assert (=> d!14808 (= (seqFromList!129 (t!20288 lt!17250)) (fromListB!44 (t!20288 lt!17250)))))

(declare-fun bs!8265 () Bool)

(assert (= bs!8265 d!14808))

(declare-fun m!53962 () Bool)

(assert (=> bs!8265 m!53962))

(assert (=> b!79399 d!14808))

(declare-fun d!14812 () Bool)

(declare-fun lt!17344 () BalanceConc!840)

(assert (=> d!14812 (= (list!467 lt!17344) (originalCharacters!359 (_1!921 lt!17257)))))

(declare-fun dynLambda!340 (Int TokenValue!298) BalanceConc!840)

(assert (=> d!14812 (= lt!17344 (dynLambda!340 (toChars!682 (transformation!308 (rule!789 (_1!921 lt!17257)))) (value!11675 (_1!921 lt!17257))))))

(assert (=> d!14812 (= (charsOf!45 (_1!921 lt!17257)) lt!17344)))

(declare-fun b_lambda!901 () Bool)

(assert (=> (not b_lambda!901) (not d!14812)))

(declare-fun t!20294 () Bool)

(declare-fun tb!2447 () Bool)

(assert (=> (and b!79403 (= (toChars!682 (transformation!308 (h!6807 rules!2471))) (toChars!682 (transformation!308 (rule!789 (_1!921 lt!17257))))) t!20294) tb!2447))

(declare-fun b!79544 () Bool)

(declare-fun e!44582 () Bool)

(declare-fun tp!50305 () Bool)

(declare-fun inv!1770 (Conc!418) Bool)

(assert (=> b!79544 (= e!44582 (and (inv!1770 (c!20212 (dynLambda!340 (toChars!682 (transformation!308 (rule!789 (_1!921 lt!17257)))) (value!11675 (_1!921 lt!17257))))) tp!50305))))

(declare-fun result!3520 () Bool)

(declare-fun inv!1771 (BalanceConc!840) Bool)

(assert (=> tb!2447 (= result!3520 (and (inv!1771 (dynLambda!340 (toChars!682 (transformation!308 (rule!789 (_1!921 lt!17257)))) (value!11675 (_1!921 lt!17257)))) e!44582))))

(assert (= tb!2447 b!79544))

(declare-fun m!53968 () Bool)

(assert (=> b!79544 m!53968))

(declare-fun m!53970 () Bool)

(assert (=> tb!2447 m!53970))

(assert (=> d!14812 t!20294))

(declare-fun b_and!3663 () Bool)

(assert (= b_and!3657 (and (=> t!20294 result!3520) b_and!3663)))

(declare-fun m!53972 () Bool)

(assert (=> d!14812 m!53972))

(declare-fun m!53974 () Bool)

(assert (=> d!14812 m!53974))

(assert (=> b!79399 d!14812))

(declare-fun d!14818 () Bool)

(declare-fun lt!17353 () tuple2!1430)

(assert (=> d!14818 (= (++!139 (list!467 (print!39 thiss!19403 (_1!922 lt!17353))) (list!467 (_2!922 lt!17353))) (_2!921 lt!17257))))

(assert (=> d!14818 (= lt!17353 (lex!108 thiss!19403 rules!2471 (seqFromList!128 (_2!921 lt!17257))))))

(declare-fun lt!17352 () Unit!869)

(declare-fun choose!1287 (LexerInterface!200 List!1416 List!1414) Unit!869)

(assert (=> d!14818 (= lt!17352 (choose!1287 thiss!19403 rules!2471 (_2!921 lt!17257)))))

(assert (=> d!14818 (not (isEmpty!461 rules!2471))))

(assert (=> d!14818 (= (theoremInvertFromString!23 thiss!19403 rules!2471 (_2!921 lt!17257)) lt!17352)))

(declare-fun bs!8266 () Bool)

(assert (= bs!8266 d!14818))

(assert (=> bs!8266 m!53694))

(assert (=> bs!8266 m!53702))

(declare-fun m!53990 () Bool)

(assert (=> bs!8266 m!53990))

(declare-fun m!53992 () Bool)

(assert (=> bs!8266 m!53992))

(assert (=> bs!8266 m!53694))

(assert (=> bs!8266 m!53992))

(declare-fun m!53994 () Bool)

(assert (=> bs!8266 m!53994))

(declare-fun m!53996 () Bool)

(assert (=> bs!8266 m!53996))

(declare-fun m!53998 () Bool)

(assert (=> bs!8266 m!53998))

(assert (=> bs!8266 m!53994))

(assert (=> bs!8266 m!53990))

(assert (=> bs!8266 m!53682))

(assert (=> b!79399 d!14818))

(declare-fun d!14824 () Bool)

(assert (=> d!14824 (= (list!468 (_1!922 lt!17258)) (list!471 (c!20214 (_1!922 lt!17258))))))

(declare-fun bs!8267 () Bool)

(assert (= bs!8267 d!14824))

(declare-fun m!54000 () Bool)

(assert (=> bs!8267 m!54000))

(assert (=> b!79399 d!14824))

(declare-fun d!14826 () Bool)

(assert (=> d!14826 (= (get!351 (maxPrefix!44 thiss!19403 rules!2471 input!2238)) (v!12793 (maxPrefix!44 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!79399 d!14826))

(declare-fun d!14828 () Bool)

(assert (=> d!14828 (= (list!468 (_1!922 lt!17252)) (list!468 (prepend!64 (seqFromList!129 (t!20288 lt!17250)) (h!6808 lt!17250))))))

(declare-fun lt!17362 () Unit!869)

(declare-fun choose!1288 (Token!376 List!1417 BalanceConc!842) Unit!869)

(assert (=> d!14828 (= lt!17362 (choose!1288 (h!6808 lt!17250) (t!20288 lt!17250) (_1!922 lt!17252)))))

(declare-fun $colon$colon!20 (List!1417 Token!376) List!1417)

(assert (=> d!14828 (= (list!468 (_1!922 lt!17252)) (list!468 (seqFromList!129 ($colon$colon!20 (t!20288 lt!17250) (h!6808 lt!17250)))))))

(assert (=> d!14828 (= (seqFromListBHdTlConstructive!31 (h!6808 lt!17250) (t!20288 lt!17250) (_1!922 lt!17252)) lt!17362)))

(declare-fun bs!8269 () Bool)

(assert (= bs!8269 d!14828))

(declare-fun m!54012 () Bool)

(assert (=> bs!8269 m!54012))

(assert (=> bs!8269 m!53730))

(assert (=> bs!8269 m!53688))

(assert (=> bs!8269 m!53690))

(declare-fun m!54014 () Bool)

(assert (=> bs!8269 m!54014))

(declare-fun m!54016 () Bool)

(assert (=> bs!8269 m!54016))

(assert (=> bs!8269 m!53698))

(declare-fun m!54018 () Bool)

(assert (=> bs!8269 m!54018))

(assert (=> bs!8269 m!54012))

(assert (=> bs!8269 m!54014))

(assert (=> bs!8269 m!53698))

(assert (=> bs!8269 m!53688))

(assert (=> b!79399 d!14828))

(declare-fun d!14834 () Bool)

(assert (=> d!14834 (= (list!467 (_2!922 lt!17258)) (list!472 (c!20212 (_2!922 lt!17258))))))

(declare-fun bs!8270 () Bool)

(assert (= bs!8270 d!14834))

(declare-fun m!54020 () Bool)

(assert (=> bs!8270 m!54020))

(assert (=> b!79399 d!14834))

(declare-fun b!79560 () Bool)

(declare-fun e!44589 () Bool)

(declare-fun lt!17363 () List!1414)

(assert (=> b!79560 (= e!44589 (or (not (= lt!17259 Nil!1408)) (= lt!17363 lt!17255)))))

(declare-fun b!79559 () Bool)

(declare-fun res!41491 () Bool)

(assert (=> b!79559 (=> (not res!41491) (not e!44589))))

(assert (=> b!79559 (= res!41491 (= (size!1228 lt!17363) (+ (size!1228 lt!17255) (size!1228 lt!17259))))))

(declare-fun d!14836 () Bool)

(assert (=> d!14836 e!44589))

(declare-fun res!41490 () Bool)

(assert (=> d!14836 (=> (not res!41490) (not e!44589))))

(assert (=> d!14836 (= res!41490 (= (content!71 lt!17363) (set.union (content!71 lt!17255) (content!71 lt!17259))))))

(declare-fun e!44590 () List!1414)

(assert (=> d!14836 (= lt!17363 e!44590)))

(declare-fun c!20236 () Bool)

(assert (=> d!14836 (= c!20236 (is-Nil!1408 lt!17255))))

(assert (=> d!14836 (= (++!139 lt!17255 lt!17259) lt!17363)))

(declare-fun b!79557 () Bool)

(assert (=> b!79557 (= e!44590 lt!17259)))

(declare-fun b!79558 () Bool)

(assert (=> b!79558 (= e!44590 (Cons!1408 (h!6805 lt!17255) (++!139 (t!20285 lt!17255) lt!17259)))))

(assert (= (and d!14836 c!20236) b!79557))

(assert (= (and d!14836 (not c!20236)) b!79558))

(assert (= (and d!14836 res!41490) b!79559))

(assert (= (and b!79559 res!41491) b!79560))

(declare-fun m!54022 () Bool)

(assert (=> b!79559 m!54022))

(declare-fun m!54024 () Bool)

(assert (=> b!79559 m!54024))

(declare-fun m!54026 () Bool)

(assert (=> b!79559 m!54026))

(declare-fun m!54028 () Bool)

(assert (=> d!14836 m!54028))

(declare-fun m!54030 () Bool)

(assert (=> d!14836 m!54030))

(declare-fun m!54032 () Bool)

(assert (=> d!14836 m!54032))

(declare-fun m!54034 () Bool)

(assert (=> b!79558 m!54034))

(assert (=> b!79399 d!14836))

(declare-fun d!14838 () Bool)

(assert (=> d!14838 (= (list!468 (prepend!64 (seqFromList!129 (t!20288 lt!17250)) (h!6808 lt!17250))) (list!471 (c!20214 (prepend!64 (seqFromList!129 (t!20288 lt!17250)) (h!6808 lt!17250)))))))

(declare-fun bs!8271 () Bool)

(assert (= bs!8271 d!14838))

(declare-fun m!54036 () Bool)

(assert (=> bs!8271 m!54036))

(assert (=> b!79399 d!14838))

(declare-fun d!14840 () Bool)

(assert (=> d!14840 (= (isEmpty!461 rules!2471) (is-Nil!1410 rules!2471))))

(assert (=> b!79402 d!14840))

(declare-fun b!79571 () Bool)

(declare-fun e!44593 () Bool)

(assert (=> b!79571 (= e!44593 tp_is_empty!675)))

(assert (=> b!79401 (= tp!50286 e!44593)))

(declare-fun b!79572 () Bool)

(declare-fun tp!50318 () Bool)

(declare-fun tp!50319 () Bool)

(assert (=> b!79572 (= e!44593 (and tp!50318 tp!50319))))

(declare-fun b!79573 () Bool)

(declare-fun tp!50317 () Bool)

(assert (=> b!79573 (= e!44593 tp!50317)))

(declare-fun b!79574 () Bool)

(declare-fun tp!50320 () Bool)

(declare-fun tp!50316 () Bool)

(assert (=> b!79574 (= e!44593 (and tp!50320 tp!50316))))

(assert (= (and b!79401 (is-ElementMatch!376 (regex!308 (h!6807 rules!2471)))) b!79571))

(assert (= (and b!79401 (is-Concat!674 (regex!308 (h!6807 rules!2471)))) b!79572))

(assert (= (and b!79401 (is-Star!376 (regex!308 (h!6807 rules!2471)))) b!79573))

(assert (= (and b!79401 (is-Union!376 (regex!308 (h!6807 rules!2471)))) b!79574))

(declare-fun b!79585 () Bool)

(declare-fun b_free!2565 () Bool)

(declare-fun b_next!2565 () Bool)

(assert (=> b!79585 (= b_free!2565 (not b_next!2565))))

(declare-fun tp!50330 () Bool)

(declare-fun b_and!3665 () Bool)

(assert (=> b!79585 (= tp!50330 b_and!3665)))

(declare-fun b_free!2567 () Bool)

(declare-fun b_next!2567 () Bool)

(assert (=> b!79585 (= b_free!2567 (not b_next!2567))))

(declare-fun t!20296 () Bool)

(declare-fun tb!2449 () Bool)

(assert (=> (and b!79585 (= (toChars!682 (transformation!308 (h!6807 (t!20287 rules!2471)))) (toChars!682 (transformation!308 (rule!789 (_1!921 lt!17257))))) t!20296) tb!2449))

(declare-fun result!3528 () Bool)

(assert (= result!3528 result!3520))

(assert (=> d!14812 t!20296))

(declare-fun tp!50329 () Bool)

(declare-fun b_and!3667 () Bool)

(assert (=> b!79585 (= tp!50329 (and (=> t!20296 result!3528) b_and!3667))))

(declare-fun e!44604 () Bool)

(assert (=> b!79585 (= e!44604 (and tp!50330 tp!50329))))

(declare-fun tp!50331 () Bool)

(declare-fun e!44603 () Bool)

(declare-fun b!79584 () Bool)

(assert (=> b!79584 (= e!44603 (and tp!50331 (inv!1765 (tag!486 (h!6807 (t!20287 rules!2471)))) (inv!1768 (transformation!308 (h!6807 (t!20287 rules!2471)))) e!44604))))

(declare-fun b!79583 () Bool)

(declare-fun e!44602 () Bool)

(declare-fun tp!50332 () Bool)

(assert (=> b!79583 (= e!44602 (and e!44603 tp!50332))))

(assert (=> b!79395 (= tp!50283 e!44602)))

(assert (= b!79584 b!79585))

(assert (= b!79583 b!79584))

(assert (= (and b!79395 (is-Cons!1410 (t!20287 rules!2471))) b!79583))

(declare-fun m!54038 () Bool)

(assert (=> b!79584 m!54038))

(declare-fun m!54040 () Bool)

(assert (=> b!79584 m!54040))

(declare-fun b!79590 () Bool)

(declare-fun e!44608 () Bool)

(declare-fun tp!50335 () Bool)

(assert (=> b!79590 (= e!44608 (and tp_is_empty!675 tp!50335))))

(assert (=> b!79397 (= tp!50287 e!44608)))

(assert (= (and b!79397 (is-Cons!1408 (t!20285 input!2238))) b!79590))

(push 1)

(assert (not b!79584))

(assert (not b!79505))

(assert (not d!14776))

(assert (not b!79467))

(assert b_and!3655)

(assert (not d!14812))

(assert (not d!14824))

(assert (not b_lambda!901))

(assert (not b!79494))

(assert (not b!79558))

(assert (not d!14794))

(assert (not b!79559))

(assert (not b_next!2567))

(assert (not b!79493))

(assert (not b!79509))

(assert (not b!79574))

(assert (not d!14800))

(assert (not b!79490))

(assert (not d!14804))

(assert b_and!3667)

(assert (not d!14770))

(assert (not b!79489))

(assert (not d!14838))

(assert tp_is_empty!675)

(assert (not b!79544))

(assert (not b!79470))

(assert (not b!79466))

(assert (not b!79535))

(assert b_and!3665)

(assert (not b!79590))

(assert (not d!14784))

(assert (not d!14818))

(assert (not b!79497))

(assert (not d!14778))

(assert (not d!14786))

(assert (not d!14798))

(assert (not d!14836))

(assert (not b!79500))

(assert (not d!14774))

(assert (not d!14788))

(assert (not b!79573))

(assert (not b!79534))

(assert (not d!14762))

(assert (not d!14834))

(assert (not tb!2447))

(assert (not b!79450))

(assert (not b!79583))

(assert (not bm!3686))

(assert (not b!79496))

(assert b_and!3663)

(assert (not d!14782))

(assert (not d!14828))

(assert (not b!79506))

(assert (not b!79437))

(assert (not d!14760))

(assert (not b!79455))

(assert (not d!14780))

(assert (not b_next!2557))

(assert (not d!14796))

(assert (not b_next!2565))

(assert (not b!79507))

(assert (not d!14808))

(assert (not b!79468))

(assert (not b!79449))

(assert (not b!79572))

(assert (not b_next!2559))

(assert (not d!14772))

(assert (not b!79491))

(assert (not b!79492))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2567))

(assert b_and!3667)

(assert b_and!3665)

(assert b_and!3663)

(assert (not b_next!2557))

(assert b_and!3655)

(assert (not b_next!2565))

(assert (not b_next!2559))

(check-sat)

(pop 1)

