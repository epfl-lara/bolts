; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!63550 () Bool)

(assert start!63550)

(declare-fun b!647650 () Bool)

(declare-fun e!397660 () Bool)

(declare-fun e!397661 () Bool)

(assert (=> b!647650 (= e!397660 e!397661)))

(declare-fun res!283601 () Bool)

(assert (=> b!647650 (=> (not res!283601) (not e!397661))))

(declare-datatypes ((List!6956 0))(
  ( (Nil!6942) (Cons!6942 (h!12343 (_ BitVec 16)) (t!85519 List!6956)) )
))
(declare-datatypes ((TokenValue!1421 0))(
  ( (FloatLiteralValue!2842 (text!10392 List!6956)) (TokenValueExt!1420 (__x!4955 Int)) (Broken!7105 (value!44656 List!6956)) (Object!1434) (End!1421) (Def!1421) (Underscore!1421) (Match!1421) (Else!1421) (Error!1421) (Case!1421) (If!1421) (Extends!1421) (Abstract!1421) (Class!1421) (Val!1421) (DelimiterValue!2842 (del!1481 List!6956)) (KeywordValue!1427 (value!44657 List!6956)) (CommentValue!2842 (value!44658 List!6956)) (WhitespaceValue!2842 (value!44659 List!6956)) (IndentationValue!1421 (value!44660 List!6956)) (String!8844) (Int32!1421) (Broken!7106 (value!44661 List!6956)) (Boolean!1422) (Unit!12110) (OperatorValue!1424 (op!1481 List!6956)) (IdentifierValue!2842 (value!44662 List!6956)) (IdentifierValue!2843 (value!44663 List!6956)) (WhitespaceValue!2843 (value!44664 List!6956)) (True!2842) (False!2842) (Broken!7107 (value!44665 List!6956)) (Broken!7108 (value!44666 List!6956)) (True!2843) (RightBrace!1421) (RightBracket!1421) (Colon!1421) (Null!1421) (Comma!1421) (LeftBracket!1421) (False!2843) (LeftBrace!1421) (ImaginaryLiteralValue!1421 (text!10393 List!6956)) (StringLiteralValue!4263 (value!44667 List!6956)) (EOFValue!1421 (value!44668 List!6956)) (IdentValue!1421 (value!44669 List!6956)) (DelimiterValue!2843 (value!44670 List!6956)) (DedentValue!1421 (value!44671 List!6956)) (NewLineValue!1421 (value!44672 List!6956)) (IntegerValue!4263 (value!44673 (_ BitVec 32)) (text!10394 List!6956)) (IntegerValue!4264 (value!44674 Int) (text!10395 List!6956)) (Times!1421) (Or!1421) (Equal!1421) (Minus!1421) (Broken!7109 (value!44675 List!6956)) (And!1421) (Div!1421) (LessEqual!1421) (Mod!1421) (Concat!3143) (Not!1421) (Plus!1421) (SpaceValue!1421 (value!44676 List!6956)) (IntegerValue!4265 (value!44677 Int) (text!10396 List!6956)) (StringLiteralValue!4264 (text!10397 List!6956)) (FloatLiteralValue!2843 (text!10398 List!6956)) (BytesLiteralValue!1421 (value!44678 List!6956)) (CommentValue!2843 (value!44679 List!6956)) (StringLiteralValue!4265 (value!44680 List!6956)) (ErrorTokenValue!1421 (msg!1482 List!6956)) )
))
(declare-datatypes ((Regex!1722 0))(
  ( (ElementMatch!1722 (c!117738 (_ BitVec 16))) (Concat!3144 (regOne!3956 Regex!1722) (regTwo!3956 Regex!1722)) (EmptyExpr!1722) (Star!1722 (reg!2051 Regex!1722)) (EmptyLang!1722) (Union!1722 (regOne!3957 Regex!1722) (regTwo!3957 Regex!1722)) )
))
(declare-datatypes ((String!8845 0))(
  ( (String!8846 (value!44681 String)) )
))
(declare-datatypes ((IArray!4713 0))(
  ( (IArray!4714 (innerList!2414 List!6956)) )
))
(declare-datatypes ((Conc!2356 0))(
  ( (Node!2356 (left!5517 Conc!2356) (right!5847 Conc!2356) (csize!4942 Int) (cheight!2567 Int)) (Leaf!3566 (xs!4997 IArray!4713) (csize!4943 Int)) (Empty!2356) )
))
(declare-datatypes ((BalanceConc!4724 0))(
  ( (BalanceConc!4725 (c!117739 Conc!2356)) )
))
(declare-datatypes ((TokenValueInjection!2594 0))(
  ( (TokenValueInjection!2595 (toValue!2328 Int) (toChars!2187 Int)) )
))
(declare-datatypes ((Rule!2574 0))(
  ( (Rule!2575 (regex!1387 Regex!1722) (tag!1649 String!8845) (isSeparator!1387 Bool) (transformation!1387 TokenValueInjection!2594)) )
))
(declare-datatypes ((List!6957 0))(
  ( (Nil!6943) (Cons!6943 (h!12344 Rule!2574) (t!85520 List!6957)) )
))
(declare-fun lt!277702 () List!6957)

(declare-fun isEmpty!4742 (List!6957) Bool)

(assert (=> b!647650 (= res!283601 (not (isEmpty!4742 lt!277702)))))

(declare-datatypes ((JsonLexer!208 0))(
  ( (JsonLexer!209) )
))
(declare-fun rules!109 (JsonLexer!208) List!6957)

(assert (=> b!647650 (= lt!277702 (rules!109 JsonLexer!209))))

(declare-datatypes ((Token!2496 0))(
  ( (Token!2497 (value!44682 TokenValue!1421) (rule!2182 Rule!2574) (size!5501 Int) (originalCharacters!1419 List!6956)) )
))
(declare-datatypes ((List!6958 0))(
  ( (Nil!6944) (Cons!6944 (h!12345 Token!2496) (t!85521 List!6958)) )
))
(declare-datatypes ((IArray!4715 0))(
  ( (IArray!4716 (innerList!2415 List!6958)) )
))
(declare-datatypes ((Conc!2357 0))(
  ( (Node!2357 (left!5518 Conc!2357) (right!5848 Conc!2357) (csize!4944 Int) (cheight!2568 Int)) (Leaf!3567 (xs!4998 IArray!4715) (csize!4945 Int)) (Empty!2357) )
))
(declare-datatypes ((BalanceConc!4726 0))(
  ( (BalanceConc!4727 (c!117740 Conc!2357)) )
))
(declare-datatypes ((PrintableTokens!154 0))(
  ( (PrintableTokens!155 (rules!8241 List!6957) (tokens!1226 BalanceConc!4726)) )
))
(declare-datatypes ((tuple2!7510 0))(
  ( (tuple2!7511 (_1!4111 Int) (_2!4111 PrintableTokens!154)) )
))
(declare-datatypes ((List!6959 0))(
  ( (Nil!6945) (Cons!6945 (h!12346 tuple2!7510) (t!85522 List!6959)) )
))
(declare-datatypes ((IArray!4717 0))(
  ( (IArray!4718 (innerList!2416 List!6959)) )
))
(declare-datatypes ((Conc!2358 0))(
  ( (Node!2358 (left!5519 Conc!2358) (right!5849 Conc!2358) (csize!4946 Int) (cheight!2569 Int)) (Leaf!3568 (xs!4999 IArray!4717) (csize!4947 Int)) (Empty!2358) )
))
(declare-datatypes ((BalanceConc!4728 0))(
  ( (BalanceConc!4729 (c!117741 Conc!2358)) )
))
(declare-fun lt!277710 () BalanceConc!4728)

(declare-fun b!647651 () Bool)

(declare-fun lambda!19714 () Int)

(declare-fun lambda!19713 () Int)

(declare-datatypes ((List!6960 0))(
  ( (Nil!6946) (Cons!6946 (h!12347 PrintableTokens!154) (t!85523 List!6960)) )
))
(declare-datatypes ((IArray!4719 0))(
  ( (IArray!4720 (innerList!2417 List!6960)) )
))
(declare-datatypes ((Conc!2359 0))(
  ( (Node!2359 (left!5520 Conc!2359) (right!5850 Conc!2359) (csize!4948 Int) (cheight!2570 Int)) (Leaf!3569 (xs!5000 IArray!4719) (csize!4949 Int)) (Empty!2359) )
))
(declare-datatypes ((BalanceConc!4730 0))(
  ( (BalanceConc!4731 (c!117742 Conc!2359)) )
))
(declare-fun forall!1809 (BalanceConc!4730 Int) Bool)

(declare-fun map!1547 (BalanceConc!4728 Int) BalanceConc!4730)

(assert (=> b!647651 (= e!397661 (not (forall!1809 (map!1547 lt!277710 lambda!19713) lambda!19714)))))

(declare-datatypes ((Unit!12111 0))(
  ( (Unit!12112) )
))
(declare-fun lt!277706 () Unit!12111)

(declare-fun lt!277708 () List!6959)

(declare-fun mapPred!67 (List!6959 Int Int) Unit!12111)

(assert (=> b!647651 (= lt!277706 (mapPred!67 lt!277708 lambda!19713 lambda!19714))))

(declare-fun lt!277709 () Unit!12111)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6959) Unit!12111)

(assert (=> b!647651 (= lt!277709 (lemmaRemoveIdsPreservesRules!0 lt!277708))))

(declare-fun list!2960 (BalanceConc!4728) List!6959)

(assert (=> b!647651 (= lt!277708 (list!2960 lt!277710))))

(declare-fun lt!277701 () BalanceConc!4730)

(declare-fun lambda!19711 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4728) BalanceConc!4728)

(declare-fun map!1548 (BalanceConc!4730 Int) BalanceConc!4728)

(assert (=> b!647651 (= lt!277710 (sortObjectsByID!0 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lambda!19712 () Int)

(declare-fun lt!277705 () Unit!12111)

(declare-fun lt!277703 () List!6960)

(declare-fun mapPred!68 (List!6960 Int Int) Unit!12111)

(assert (=> b!647651 (= lt!277705 (mapPred!68 lt!277703 lambda!19711 lambda!19712))))

(declare-fun lt!277704 () Unit!12111)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6960) Unit!12111)

(assert (=> b!647651 (= lt!277704 (lemmaAddIdsPreservesRules!0 lt!277703))))

(declare-fun list!2961 (BalanceConc!4730) List!6960)

(assert (=> b!647651 (= lt!277703 (list!2961 lt!277701))))

(declare-fun printableTokens!2 () PrintableTokens!154)

(declare-fun lt!277707 () Int)

(declare-datatypes ((List!6961 0))(
  ( (Nil!6947) (Cons!6947 (h!12348 Int) (t!85524 List!6961)) )
))
(declare-datatypes ((IArray!4721 0))(
  ( (IArray!4722 (innerList!2418 List!6961)) )
))
(declare-datatypes ((Conc!2360 0))(
  ( (Node!2360 (left!5521 Conc!2360) (right!5851 Conc!2360) (csize!4950 Int) (cheight!2571 Int)) (Leaf!3570 (xs!5001 IArray!4721) (csize!4951 Int)) (Empty!2360) )
))
(declare-datatypes ((BalanceConc!4732 0))(
  ( (BalanceConc!4733 (c!117743 Conc!2360)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!154 Int BalanceConc!4732 BalanceConc!4730) BalanceConc!4730)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4726 Int Int BalanceConc!4732) BalanceConc!4732)

(assert (=> b!647651 (= lt!277701 (slicesMulti!0 printableTokens!2 lt!277707 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)) (BalanceConc!4731 Empty!2359)))))

(declare-fun b!647652 () Bool)

(declare-fun res!283603 () Bool)

(assert (=> b!647652 (=> (not res!283603) (not e!397661))))

(declare-fun usesJsonRules!0 (PrintableTokens!154) Bool)

(assert (=> b!647652 (= res!283603 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!647653 () Bool)

(declare-fun res!283602 () Bool)

(assert (=> b!647653 (=> (not res!283602) (not e!397661))))

(declare-datatypes ((LexerInterface!1261 0))(
  ( (LexerInterfaceExt!1258 (__x!4956 Int)) (Lexer!1259) )
))
(declare-fun rulesInvariant!1196 (LexerInterface!1261 List!6957) Bool)

(assert (=> b!647653 (= res!283602 (rulesInvariant!1196 Lexer!1259 lt!277702))))

(declare-fun b!647654 () Bool)

(declare-fun tp!200034 () Bool)

(declare-fun e!397662 () Bool)

(declare-fun e!397663 () Bool)

(declare-fun inv!8780 (BalanceConc!4726) Bool)

(assert (=> b!647654 (= e!397662 (and tp!200034 (inv!8780 (tokens!1226 printableTokens!2)) e!397663))))

(declare-fun b!647655 () Bool)

(declare-fun tp!200035 () Bool)

(declare-fun inv!8781 (Conc!2357) Bool)

(assert (=> b!647655 (= e!397663 (and (inv!8781 (c!117740 (tokens!1226 printableTokens!2))) tp!200035))))

(declare-fun res!283600 () Bool)

(assert (=> start!63550 (=> (not res!283600) (not e!397660))))

(assert (=> start!63550 (= res!283600 (> lt!277707 0))))

(declare-fun size!5502 (PrintableTokens!154) Int)

(assert (=> start!63550 (= lt!277707 (size!5502 printableTokens!2))))

(assert (=> start!63550 e!397660))

(declare-fun inv!8782 (PrintableTokens!154) Bool)

(assert (=> start!63550 (and (inv!8782 printableTokens!2) e!397662)))

(assert (= (and start!63550 res!283600) b!647650))

(assert (= (and b!647650 res!283601) b!647653))

(assert (= (and b!647653 res!283602) b!647652))

(assert (= (and b!647652 res!283603) b!647651))

(assert (= b!647654 b!647655))

(assert (= start!63550 b!647654))

(declare-fun m!918441 () Bool)

(assert (=> b!647653 m!918441))

(declare-fun m!918443 () Bool)

(assert (=> b!647651 m!918443))

(declare-fun m!918445 () Bool)

(assert (=> b!647651 m!918445))

(declare-fun m!918447 () Bool)

(assert (=> b!647651 m!918447))

(declare-fun m!918449 () Bool)

(assert (=> b!647651 m!918449))

(declare-fun m!918451 () Bool)

(assert (=> b!647651 m!918451))

(declare-fun m!918453 () Bool)

(assert (=> b!647651 m!918453))

(declare-fun m!918455 () Bool)

(assert (=> b!647651 m!918455))

(declare-fun m!918457 () Bool)

(assert (=> b!647651 m!918457))

(assert (=> b!647651 m!918447))

(declare-fun m!918459 () Bool)

(assert (=> b!647651 m!918459))

(assert (=> b!647651 m!918453))

(declare-fun m!918461 () Bool)

(assert (=> b!647651 m!918461))

(declare-fun m!918463 () Bool)

(assert (=> b!647651 m!918463))

(declare-fun m!918465 () Bool)

(assert (=> b!647651 m!918465))

(assert (=> b!647651 m!918443))

(declare-fun m!918467 () Bool)

(assert (=> b!647652 m!918467))

(declare-fun m!918469 () Bool)

(assert (=> b!647654 m!918469))

(declare-fun m!918471 () Bool)

(assert (=> b!647650 m!918471))

(declare-fun m!918473 () Bool)

(assert (=> b!647650 m!918473))

(declare-fun m!918475 () Bool)

(assert (=> b!647655 m!918475))

(declare-fun m!918477 () Bool)

(assert (=> start!63550 m!918477))

(declare-fun m!918479 () Bool)

(assert (=> start!63550 m!918479))

(push 1)

(assert (not b!647650))

(assert (not b!647651))

(assert (not start!63550))

(assert (not b!647655))

(assert (not b!647652))

(assert (not b!647654))

(assert (not b!647653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!224342 () Bool)

(declare-fun res!283622 () Bool)

(declare-fun e!397678 () Bool)

(assert (=> d!224342 (=> (not res!283622) (not e!397678))))

(declare-fun rulesValid!512 (LexerInterface!1261 List!6957) Bool)

(assert (=> d!224342 (= res!283622 (rulesValid!512 Lexer!1259 lt!277702))))

(assert (=> d!224342 (= (rulesInvariant!1196 Lexer!1259 lt!277702) e!397678)))

(declare-fun b!647676 () Bool)

(declare-datatypes ((List!6968 0))(
  ( (Nil!6954) (Cons!6954 (h!12355 String!8845) (t!85644 List!6968)) )
))
(declare-fun noDuplicateTag!512 (LexerInterface!1261 List!6957 List!6968) Bool)

(assert (=> b!647676 (= e!397678 (noDuplicateTag!512 Lexer!1259 lt!277702 Nil!6954))))

(assert (= (and d!224342 res!283622) b!647676))

(declare-fun m!918521 () Bool)

(assert (=> d!224342 m!918521))

(declare-fun m!918523 () Bool)

(assert (=> b!647676 m!918523))

(assert (=> b!647653 d!224342))

(declare-fun d!224344 () Bool)

(declare-fun size!5509 (BalanceConc!4726) Int)

(assert (=> d!224344 (= (size!5502 printableTokens!2) (size!5509 (tokens!1226 printableTokens!2)))))

(declare-fun bs!84601 () Bool)

(assert (= bs!84601 d!224344))

(declare-fun m!918525 () Bool)

(assert (=> bs!84601 m!918525))

(assert (=> start!63550 d!224344))

(declare-fun d!224346 () Bool)

(declare-fun res!283633 () Bool)

(declare-fun e!397681 () Bool)

(assert (=> d!224346 (=> (not res!283633) (not e!397681))))

(assert (=> d!224346 (= res!283633 (not (isEmpty!4742 (rules!8241 printableTokens!2))))))

(assert (=> d!224346 (= (inv!8782 printableTokens!2) e!397681)))

(declare-fun b!647683 () Bool)

(declare-fun res!283634 () Bool)

(assert (=> b!647683 (=> (not res!283634) (not e!397681))))

(assert (=> b!647683 (= res!283634 (rulesInvariant!1196 Lexer!1259 (rules!8241 printableTokens!2)))))

(declare-fun b!647684 () Bool)

(declare-fun res!283635 () Bool)

(assert (=> b!647684 (=> (not res!283635) (not e!397681))))

(declare-fun rulesProduceEachTokenIndividually!583 (LexerInterface!1261 List!6957 BalanceConc!4726) Bool)

(assert (=> b!647684 (= res!283635 (rulesProduceEachTokenIndividually!583 Lexer!1259 (rules!8241 printableTokens!2) (tokens!1226 printableTokens!2)))))

(declare-fun b!647685 () Bool)

(declare-fun separableTokens!33 (LexerInterface!1261 BalanceConc!4726 List!6957) Bool)

(assert (=> b!647685 (= e!397681 (separableTokens!33 Lexer!1259 (tokens!1226 printableTokens!2) (rules!8241 printableTokens!2)))))

(assert (= (and d!224346 res!283633) b!647683))

(assert (= (and b!647683 res!283634) b!647684))

(assert (= (and b!647684 res!283635) b!647685))

(declare-fun m!918527 () Bool)

(assert (=> d!224346 m!918527))

(declare-fun m!918529 () Bool)

(assert (=> b!647683 m!918529))

(declare-fun m!918531 () Bool)

(assert (=> b!647684 m!918531))

(declare-fun m!918533 () Bool)

(assert (=> b!647685 m!918533))

(assert (=> start!63550 d!224346))

(declare-fun d!224350 () Bool)

(assert (=> d!224350 (= (usesJsonRules!0 printableTokens!2) (= (rules!8241 printableTokens!2) (rules!109 JsonLexer!209)))))

(declare-fun bs!84602 () Bool)

(assert (= bs!84602 d!224350))

(assert (=> bs!84602 m!918473))

(assert (=> b!647652 d!224350))

(declare-fun d!224352 () Bool)

(declare-fun isBalanced!631 (Conc!2357) Bool)

(assert (=> d!224352 (= (inv!8780 (tokens!1226 printableTokens!2)) (isBalanced!631 (c!117740 (tokens!1226 printableTokens!2))))))

(declare-fun bs!84603 () Bool)

(assert (= bs!84603 d!224352))

(declare-fun m!918535 () Bool)

(assert (=> bs!84603 m!918535))

(assert (=> b!647654 d!224352))

(declare-fun d!224354 () Bool)

(assert (=> d!224354 (= (isEmpty!4742 lt!277702) (is-Nil!6943 lt!277702))))

(assert (=> b!647650 d!224354))

(declare-fun d!224356 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!208) Rule!2574)

(declare-fun integerLiteralRule!0 (JsonLexer!208) Rule!2574)

(declare-fun floatLiteralRule!0 (JsonLexer!208) Rule!2574)

(declare-fun trueRule!0 (JsonLexer!208) Rule!2574)

(declare-fun falseRule!0 (JsonLexer!208) Rule!2574)

(declare-fun nullRule!0 (JsonLexer!208) Rule!2574)

(declare-fun jsonstringRule!0 (JsonLexer!208) Rule!2574)

(declare-fun lBraceRule!0 (JsonLexer!208) Rule!2574)

(declare-fun rBraceRule!0 (JsonLexer!208) Rule!2574)

(declare-fun lBracketRule!0 (JsonLexer!208) Rule!2574)

(declare-fun rBracketRule!0 (JsonLexer!208) Rule!2574)

(declare-fun colonRule!0 (JsonLexer!208) Rule!2574)

(declare-fun commaRule!0 (JsonLexer!208) Rule!2574)

(declare-fun eofRule!0 (JsonLexer!208) Rule!2574)

(assert (=> d!224356 (= (rules!109 JsonLexer!209) (Cons!6943 (whitespaceRule!0 JsonLexer!209) (Cons!6943 (integerLiteralRule!0 JsonLexer!209) (Cons!6943 (floatLiteralRule!0 JsonLexer!209) (Cons!6943 (trueRule!0 JsonLexer!209) (Cons!6943 (falseRule!0 JsonLexer!209) (Cons!6943 (nullRule!0 JsonLexer!209) (Cons!6943 (jsonstringRule!0 JsonLexer!209) (Cons!6943 (lBraceRule!0 JsonLexer!209) (Cons!6943 (rBraceRule!0 JsonLexer!209) (Cons!6943 (lBracketRule!0 JsonLexer!209) (Cons!6943 (rBracketRule!0 JsonLexer!209) (Cons!6943 (colonRule!0 JsonLexer!209) (Cons!6943 (commaRule!0 JsonLexer!209) (Cons!6943 (eofRule!0 JsonLexer!209) Nil!6943)))))))))))))))))

(declare-fun bs!84605 () Bool)

(assert (= bs!84605 d!224356))

(declare-fun m!918543 () Bool)

(assert (=> bs!84605 m!918543))

(declare-fun m!918545 () Bool)

(assert (=> bs!84605 m!918545))

(declare-fun m!918547 () Bool)

(assert (=> bs!84605 m!918547))

(declare-fun m!918549 () Bool)

(assert (=> bs!84605 m!918549))

(declare-fun m!918551 () Bool)

(assert (=> bs!84605 m!918551))

(declare-fun m!918553 () Bool)

(assert (=> bs!84605 m!918553))

(declare-fun m!918555 () Bool)

(assert (=> bs!84605 m!918555))

(declare-fun m!918557 () Bool)

(assert (=> bs!84605 m!918557))

(declare-fun m!918559 () Bool)

(assert (=> bs!84605 m!918559))

(declare-fun m!918561 () Bool)

(assert (=> bs!84605 m!918561))

(declare-fun m!918563 () Bool)

(assert (=> bs!84605 m!918563))

(declare-fun m!918565 () Bool)

(assert (=> bs!84605 m!918565))

(declare-fun m!918567 () Bool)

(assert (=> bs!84605 m!918567))

(declare-fun m!918569 () Bool)

(assert (=> bs!84605 m!918569))

(assert (=> b!647650 d!224356))

(declare-fun d!224360 () Bool)

(declare-fun c!117755 () Bool)

(assert (=> d!224360 (= c!117755 (is-Node!2357 (c!117740 (tokens!1226 printableTokens!2))))))

(declare-fun e!397689 () Bool)

(assert (=> d!224360 (= (inv!8781 (c!117740 (tokens!1226 printableTokens!2))) e!397689)))

(declare-fun b!647698 () Bool)

(declare-fun inv!8786 (Conc!2357) Bool)

(assert (=> b!647698 (= e!397689 (inv!8786 (c!117740 (tokens!1226 printableTokens!2))))))

(declare-fun b!647699 () Bool)

(declare-fun e!397690 () Bool)

(assert (=> b!647699 (= e!397689 e!397690)))

(declare-fun res!283638 () Bool)

(assert (=> b!647699 (= res!283638 (not (is-Leaf!3567 (c!117740 (tokens!1226 printableTokens!2)))))))

(assert (=> b!647699 (=> res!283638 e!397690)))

(declare-fun b!647700 () Bool)

(declare-fun inv!8787 (Conc!2357) Bool)

(assert (=> b!647700 (= e!397690 (inv!8787 (c!117740 (tokens!1226 printableTokens!2))))))

(assert (= (and d!224360 c!117755) b!647698))

(assert (= (and d!224360 (not c!117755)) b!647699))

(assert (= (and b!647699 (not res!283638)) b!647700))

(declare-fun m!918571 () Bool)

(assert (=> b!647698 m!918571))

(declare-fun m!918573 () Bool)

(assert (=> b!647700 m!918573))

(assert (=> b!647655 d!224360))

(declare-fun lt!277749 () Bool)

(declare-fun d!224362 () Bool)

(declare-fun forall!1811 (List!6960 Int) Bool)

(assert (=> d!224362 (= lt!277749 (forall!1811 (list!2961 (map!1547 lt!277710 lambda!19713)) lambda!19714))))

(declare-fun forall!1812 (Conc!2359 Int) Bool)

(assert (=> d!224362 (= lt!277749 (forall!1812 (c!117742 (map!1547 lt!277710 lambda!19713)) lambda!19714))))

(assert (=> d!224362 (= (forall!1809 (map!1547 lt!277710 lambda!19713) lambda!19714) lt!277749)))

(declare-fun bs!84606 () Bool)

(assert (= bs!84606 d!224362))

(assert (=> bs!84606 m!918447))

(declare-fun m!918575 () Bool)

(assert (=> bs!84606 m!918575))

(assert (=> bs!84606 m!918575))

(declare-fun m!918577 () Bool)

(assert (=> bs!84606 m!918577))

(declare-fun m!918579 () Bool)

(assert (=> bs!84606 m!918579))

(assert (=> b!647651 d!224362))

(declare-fun bs!84607 () Bool)

(declare-fun d!224364 () Bool)

(assert (= bs!84607 (and d!224364 b!647651)))

(declare-fun lambda!19741 () Int)

(assert (=> bs!84607 (not (= lambda!19741 lambda!19714))))

(assert (=> d!224364 true))

(declare-fun order!5219 () Int)

(declare-fun order!5217 () Int)

(declare-fun dynLambda!3784 (Int Int) Int)

(declare-fun dynLambda!3785 (Int Int) Int)

(assert (=> d!224364 (< (dynLambda!3784 order!5217 lambda!19711) (dynLambda!3785 order!5219 lambda!19741))))

(assert (=> d!224364 true))

(declare-fun order!5221 () Int)

(declare-fun dynLambda!3786 (Int Int) Int)

(assert (=> d!224364 (< (dynLambda!3786 order!5221 lambda!19712) (dynLambda!3785 order!5219 lambda!19741))))

(declare-fun forall!1813 (List!6959 Int) Bool)

(declare-fun map!1551 (List!6960 Int) List!6959)

(assert (=> d!224364 (forall!1813 (map!1551 lt!277703 lambda!19711) lambda!19712)))

(declare-fun lt!277752 () Unit!12111)

(declare-fun choose!4656 (List!6960 Int Int) Unit!12111)

(assert (=> d!224364 (= lt!277752 (choose!4656 lt!277703 lambda!19711 lambda!19712))))

(assert (=> d!224364 (forall!1811 lt!277703 lambda!19741)))

(assert (=> d!224364 (= (mapPred!68 lt!277703 lambda!19711 lambda!19712) lt!277752)))

(declare-fun bs!84608 () Bool)

(assert (= bs!84608 d!224364))

(declare-fun m!918581 () Bool)

(assert (=> bs!84608 m!918581))

(assert (=> bs!84608 m!918581))

(declare-fun m!918583 () Bool)

(assert (=> bs!84608 m!918583))

(declare-fun m!918585 () Bool)

(assert (=> bs!84608 m!918585))

(declare-fun m!918587 () Bool)

(assert (=> bs!84608 m!918587))

(assert (=> b!647651 d!224364))

(declare-fun bs!84611 () Bool)

(declare-fun d!224366 () Bool)

(assert (= bs!84611 (and d!224366 b!647651)))

(declare-fun lambda!19752 () Int)

(assert (=> bs!84611 (= lambda!19752 lambda!19714)))

(declare-fun bs!84612 () Bool)

(assert (= bs!84612 (and d!224366 d!224364)))

(assert (=> bs!84612 (not (= lambda!19752 lambda!19741))))

(declare-fun lambda!19753 () Int)

(assert (=> bs!84611 (not (= lambda!19753 lambda!19714))))

(assert (=> bs!84612 (not (= lambda!19753 lambda!19741))))

(assert (=> d!224366 (not (= lambda!19753 lambda!19752))))

(assert (=> d!224366 (forall!1811 lt!277703 lambda!19753)))

(declare-fun lt!277769 () Unit!12111)

(declare-fun e!397708 () Unit!12111)

(assert (=> d!224366 (= lt!277769 e!397708)))

(declare-fun c!117767 () Bool)

(assert (=> d!224366 (= c!117767 (is-Nil!6946 lt!277703))))

(assert (=> d!224366 (forall!1811 lt!277703 lambda!19752)))

(assert (=> d!224366 (= (lemmaAddIdsPreservesRules!0 lt!277703) lt!277769)))

(declare-fun b!647735 () Bool)

(declare-fun Unit!12116 () Unit!12111)

(assert (=> b!647735 (= e!397708 Unit!12116)))

(declare-fun b!647736 () Bool)

(declare-fun Unit!12117 () Unit!12111)

(assert (=> b!647736 (= e!397708 Unit!12117)))

(declare-fun lt!277770 () Unit!12111)

(assert (=> b!647736 (= lt!277770 (lemmaAddIdsPreservesRules!0 (t!85523 lt!277703)))))

(assert (= (and d!224366 c!117767) b!647735))

(assert (= (and d!224366 (not c!117767)) b!647736))

(declare-fun m!918613 () Bool)

(assert (=> d!224366 m!918613))

(declare-fun m!918615 () Bool)

(assert (=> d!224366 m!918615))

(declare-fun m!918617 () Bool)

(assert (=> b!647736 m!918617))

(assert (=> b!647651 d!224366))

(declare-fun bs!84613 () Bool)

(declare-fun d!224372 () Bool)

(assert (= bs!84613 (and d!224372 b!647651)))

(declare-fun lambda!19758 () Int)

(assert (=> bs!84613 (not (= lambda!19758 lambda!19712))))

(assert (=> d!224372 true))

(declare-fun order!5223 () Int)

(declare-fun dynLambda!3787 (Int Int) Int)

(assert (=> d!224372 (< (dynLambda!3787 order!5223 lambda!19713) (dynLambda!3786 order!5221 lambda!19758))))

(assert (=> d!224372 true))

(assert (=> d!224372 (< (dynLambda!3785 order!5219 lambda!19714) (dynLambda!3786 order!5221 lambda!19758))))

(declare-fun map!1552 (List!6959 Int) List!6960)

(assert (=> d!224372 (forall!1811 (map!1552 lt!277708 lambda!19713) lambda!19714)))

(declare-fun lt!277773 () Unit!12111)

(declare-fun choose!4657 (List!6959 Int Int) Unit!12111)

(assert (=> d!224372 (= lt!277773 (choose!4657 lt!277708 lambda!19713 lambda!19714))))

(assert (=> d!224372 (forall!1813 lt!277708 lambda!19758)))

(assert (=> d!224372 (= (mapPred!67 lt!277708 lambda!19713 lambda!19714) lt!277773)))

(declare-fun bs!84614 () Bool)

(assert (= bs!84614 d!224372))

(declare-fun m!918619 () Bool)

(assert (=> bs!84614 m!918619))

(assert (=> bs!84614 m!918619))

(declare-fun m!918621 () Bool)

(assert (=> bs!84614 m!918621))

(declare-fun m!918623 () Bool)

(assert (=> bs!84614 m!918623))

(declare-fun m!918625 () Bool)

(assert (=> bs!84614 m!918625))

(assert (=> b!647651 d!224372))

(declare-fun bs!84621 () Bool)

(declare-fun b!647761 () Bool)

(assert (= bs!84621 (and b!647761 b!647651)))

(declare-fun lambda!19767 () Int)

(assert (=> bs!84621 (= lambda!19767 lambda!19714)))

(declare-fun bs!84622 () Bool)

(assert (= bs!84622 (and b!647761 d!224364)))

(assert (=> bs!84622 (not (= lambda!19767 lambda!19741))))

(declare-fun bs!84623 () Bool)

(assert (= bs!84623 (and b!647761 d!224366)))

(assert (=> bs!84623 (= lambda!19767 lambda!19752)))

(assert (=> bs!84623 (not (= lambda!19767 lambda!19753))))

(declare-fun bs!84624 () Bool)

(declare-fun d!224374 () Bool)

(assert (= bs!84624 (and d!224374 d!224366)))

(declare-fun lambda!19768 () Int)

(assert (=> bs!84624 (not (= lambda!19768 lambda!19753))))

(declare-fun bs!84625 () Bool)

(assert (= bs!84625 (and d!224374 d!224364)))

(assert (=> bs!84625 (not (= lambda!19768 lambda!19741))))

(assert (=> bs!84624 (= lambda!19768 lambda!19752)))

(declare-fun bs!84626 () Bool)

(assert (= bs!84626 (and d!224374 b!647651)))

(assert (=> bs!84626 (= lambda!19768 lambda!19714)))

(declare-fun bs!84627 () Bool)

(assert (= bs!84627 (and d!224374 b!647761)))

(assert (=> bs!84627 (= lambda!19768 lambda!19767)))

(declare-fun b!647760 () Bool)

(declare-fun e!397716 () BalanceConc!4730)

(assert (=> b!647760 (= e!397716 (BalanceConc!4731 Empty!2359))))

(declare-fun call!41997 () PrintableTokens!154)

(declare-fun lt!277794 () Int)

(declare-fun lt!277797 () Int)

(declare-fun bm!41992 () Bool)

(declare-fun c!117773 () Bool)

(declare-fun slice!49 (PrintableTokens!154 Int Int) PrintableTokens!154)

(assert (=> bm!41992 (= call!41997 (slice!49 printableTokens!2 (ite c!117773 lt!277797 lt!277794) (ite c!117773 (+ lt!277794 1) (+ lt!277797 1))))))

(declare-fun lt!277796 () BalanceConc!4730)

(assert (=> d!224374 (forall!1809 lt!277796 lambda!19768)))

(assert (=> d!224374 (= lt!277796 e!397716)))

(declare-fun c!117774 () Bool)

(declare-fun size!5510 (BalanceConc!4732) Int)

(assert (=> d!224374 (= c!117774 (>= (size!5510 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360))) 2))))

(assert (=> d!224374 (= (size!5502 printableTokens!2) lt!277707)))

(assert (=> d!224374 (= (slicesMulti!0 printableTokens!2 lt!277707 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)) (BalanceConc!4731 Empty!2359)) lt!277796)))

(declare-fun lt!277795 () PrintableTokens!154)

(declare-fun tail!923 (BalanceConc!4732) BalanceConc!4732)

(declare-fun append!234 (BalanceConc!4730 PrintableTokens!154) BalanceConc!4730)

(assert (=> b!647761 (= e!397716 (slicesMulti!0 printableTokens!2 lt!277707 (tail!923 (tail!923 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)))) (append!234 (BalanceConc!4731 Empty!2359) lt!277795)))))

(declare-fun apply!1664 (BalanceConc!4732 Int) Int)

(assert (=> b!647761 (= lt!277797 (apply!1664 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)) 0))))

(assert (=> b!647761 (= lt!277794 (apply!1664 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)) 1))))

(assert (=> b!647761 (= c!117773 (<= lt!277797 lt!277794))))

(declare-fun e!397717 () PrintableTokens!154)

(assert (=> b!647761 (= lt!277795 e!397717)))

(declare-fun lt!277793 () Unit!12111)

(declare-fun lemmaConcatPreservesForall!60 (List!6960 List!6960 Int) Unit!12111)

(assert (=> b!647761 (= lt!277793 (lemmaConcatPreservesForall!60 (list!2961 (BalanceConc!4731 Empty!2359)) (Cons!6946 lt!277795 Nil!6946) lambda!19767))))

(declare-fun b!647762 () Bool)

(assert (=> b!647762 (= e!397717 call!41997)))

(declare-fun b!647763 () Bool)

(assert (=> b!647763 (= e!397717 call!41997)))

(assert (= (and d!224374 c!117774) b!647761))

(assert (= (and d!224374 (not c!117774)) b!647760))

(assert (= (and b!647761 c!117773) b!647763))

(assert (= (and b!647761 (not c!117773)) b!647762))

(assert (= (or b!647763 b!647762) bm!41992))

(declare-fun m!918653 () Bool)

(assert (=> bm!41992 m!918653))

(declare-fun m!918655 () Bool)

(assert (=> d!224374 m!918655))

(assert (=> d!224374 m!918453))

(declare-fun m!918657 () Bool)

(assert (=> d!224374 m!918657))

(assert (=> d!224374 m!918477))

(declare-fun m!918659 () Bool)

(assert (=> b!647761 m!918659))

(declare-fun m!918661 () Bool)

(assert (=> b!647761 m!918661))

(assert (=> b!647761 m!918453))

(declare-fun m!918663 () Bool)

(assert (=> b!647761 m!918663))

(assert (=> b!647761 m!918661))

(declare-fun m!918665 () Bool)

(assert (=> b!647761 m!918665))

(assert (=> b!647761 m!918453))

(declare-fun m!918667 () Bool)

(assert (=> b!647761 m!918667))

(declare-fun m!918669 () Bool)

(assert (=> b!647761 m!918669))

(assert (=> b!647761 m!918659))

(declare-fun m!918671 () Bool)

(assert (=> b!647761 m!918671))

(assert (=> b!647761 m!918453))

(declare-fun m!918673 () Bool)

(assert (=> b!647761 m!918673))

(assert (=> b!647761 m!918667))

(assert (=> b!647761 m!918669))

(assert (=> b!647651 d!224374))

(declare-fun bs!84635 () Bool)

(declare-fun d!224384 () Bool)

(assert (= bs!84635 (and d!224384 b!647651)))

(declare-fun lambda!19779 () Int)

(assert (=> bs!84635 (= lambda!19779 lambda!19712)))

(declare-fun bs!84636 () Bool)

(assert (= bs!84636 (and d!224384 d!224372)))

(assert (=> bs!84636 (not (= lambda!19779 lambda!19758))))

(declare-fun lambda!19780 () Int)

(assert (=> bs!84635 (not (= lambda!19780 lambda!19712))))

(assert (=> bs!84636 (not (= lambda!19780 lambda!19758))))

(assert (=> d!224384 (not (= lambda!19780 lambda!19779))))

(assert (=> d!224384 (forall!1813 lt!277708 lambda!19780)))

(declare-fun lt!277817 () Unit!12111)

(declare-fun e!397726 () Unit!12111)

(assert (=> d!224384 (= lt!277817 e!397726)))

(declare-fun c!117783 () Bool)

(assert (=> d!224384 (= c!117783 (is-Nil!6945 lt!277708))))

(assert (=> d!224384 (forall!1813 lt!277708 lambda!19779)))

(assert (=> d!224384 (= (lemmaRemoveIdsPreservesRules!0 lt!277708) lt!277817)))

(declare-fun b!647780 () Bool)

(declare-fun Unit!12118 () Unit!12111)

(assert (=> b!647780 (= e!397726 Unit!12118)))

(declare-fun b!647781 () Bool)

(declare-fun Unit!12119 () Unit!12111)

(assert (=> b!647781 (= e!397726 Unit!12119)))

(declare-fun lt!277818 () Unit!12111)

(assert (=> b!647781 (= lt!277818 (lemmaRemoveIdsPreservesRules!0 (t!85522 lt!277708)))))

(assert (= (and d!224384 c!117783) b!647780))

(assert (= (and d!224384 (not c!117783)) b!647781))

(declare-fun m!918697 () Bool)

(assert (=> d!224384 m!918697))

(declare-fun m!918699 () Bool)

(assert (=> d!224384 m!918699))

(declare-fun m!918701 () Bool)

(assert (=> b!647781 m!918701))

(assert (=> b!647651 d!224384))

(declare-fun d!224388 () Bool)

(declare-fun e!397729 () Bool)

(assert (=> d!224388 e!397729))

(declare-fun res!283650 () Bool)

(assert (=> d!224388 (=> (not res!283650) (not e!397729))))

(declare-fun lt!277821 () BalanceConc!4728)

(assert (=> d!224388 (= res!283650 (= (list!2960 lt!277821) (map!1551 (list!2961 lt!277701) lambda!19711)))))

(declare-fun map!1553 (Conc!2359 Int) Conc!2358)

(assert (=> d!224388 (= lt!277821 (BalanceConc!4729 (map!1553 (c!117742 lt!277701) lambda!19711)))))

(assert (=> d!224388 (= (map!1548 lt!277701 lambda!19711) lt!277821)))

(declare-fun b!647784 () Bool)

(declare-fun isBalanced!632 (Conc!2358) Bool)

(assert (=> b!647784 (= e!397729 (isBalanced!632 (map!1553 (c!117742 lt!277701) lambda!19711)))))

(assert (= (and d!224388 res!283650) b!647784))

(declare-fun m!918703 () Bool)

(assert (=> d!224388 m!918703))

(assert (=> d!224388 m!918463))

(assert (=> d!224388 m!918463))

(declare-fun m!918705 () Bool)

(assert (=> d!224388 m!918705))

(declare-fun m!918707 () Bool)

(assert (=> d!224388 m!918707))

(assert (=> b!647784 m!918707))

(assert (=> b!647784 m!918707))

(declare-fun m!918709 () Bool)

(assert (=> b!647784 m!918709))

(assert (=> b!647651 d!224388))

(declare-fun bs!84642 () Bool)

(declare-fun b!647861 () Bool)

(assert (= bs!84642 (and b!647861 b!647651)))

(declare-fun lambda!19878 () Int)

(assert (=> bs!84642 (not (= lambda!19878 lambda!19712))))

(declare-fun bs!84643 () Bool)

(assert (= bs!84643 (and b!647861 d!224372)))

(assert (=> bs!84643 (not (= lambda!19878 lambda!19758))))

(declare-fun bs!84645 () Bool)

(assert (= bs!84645 (and b!647861 d!224384)))

(assert (=> bs!84645 (not (= lambda!19878 lambda!19779))))

(assert (=> bs!84645 (not (= lambda!19878 lambda!19780))))

(declare-fun b!647879 () Bool)

(declare-fun e!397790 () Bool)

(assert (=> b!647879 (= e!397790 true)))

(declare-fun b!647878 () Bool)

(declare-fun e!397789 () Bool)

(assert (=> b!647878 (= e!397789 e!397790)))

(assert (=> b!647861 e!397789))

(assert (= b!647878 b!647879))

(assert (= b!647861 b!647878))

(declare-fun lambda!19879 () Int)

(assert (=> bs!84643 (not (= lambda!19879 lambda!19758))))

(assert (=> bs!84645 (not (= lambda!19879 lambda!19780))))

(assert (=> bs!84642 (not (= lambda!19879 lambda!19712))))

(assert (=> b!647861 (not (= lambda!19879 lambda!19878))))

(assert (=> bs!84645 (not (= lambda!19879 lambda!19779))))

(declare-fun b!647881 () Bool)

(declare-fun e!397792 () Bool)

(assert (=> b!647881 (= e!397792 true)))

(declare-fun b!647880 () Bool)

(declare-fun e!397791 () Bool)

(assert (=> b!647880 (= e!397791 e!397792)))

(assert (=> b!647861 e!397791))

(assert (= b!647880 b!647881))

(assert (= b!647861 b!647880))

(declare-fun lambda!19880 () Int)

(assert (=> bs!84643 (not (= lambda!19880 lambda!19758))))

(assert (=> bs!84645 (not (= lambda!19880 lambda!19780))))

(assert (=> bs!84642 (not (= lambda!19880 lambda!19712))))

(assert (=> b!647861 (not (= lambda!19880 lambda!19879))))

(assert (=> b!647861 (not (= lambda!19880 lambda!19878))))

(assert (=> bs!84645 (not (= lambda!19880 lambda!19779))))

(declare-fun b!647883 () Bool)

(declare-fun e!397794 () Bool)

(assert (=> b!647883 (= e!397794 true)))

(declare-fun b!647882 () Bool)

(declare-fun e!397793 () Bool)

(assert (=> b!647882 (= e!397793 e!397794)))

(assert (=> b!647861 e!397793))

(assert (= b!647882 b!647883))

(assert (= b!647861 b!647882))

(declare-fun lambda!19881 () Int)

(assert (=> bs!84643 (not (= lambda!19881 lambda!19758))))

(assert (=> bs!84645 (not (= lambda!19881 lambda!19780))))

(assert (=> b!647861 (not (= lambda!19881 lambda!19880))))

(assert (=> bs!84642 (= lambda!19881 lambda!19712)))

(assert (=> b!647861 (not (= lambda!19881 lambda!19879))))

(assert (=> b!647861 (not (= lambda!19881 lambda!19878))))

(assert (=> bs!84645 (= lambda!19881 lambda!19779)))

(declare-fun bs!84646 () Bool)

(declare-fun d!224390 () Bool)

(assert (= bs!84646 (and d!224390 d!224372)))

(declare-fun lambda!19882 () Int)

(assert (=> bs!84646 (not (= lambda!19882 lambda!19758))))

(declare-fun bs!84647 () Bool)

(assert (= bs!84647 (and d!224390 d!224384)))

(assert (=> bs!84647 (not (= lambda!19882 lambda!19780))))

(declare-fun bs!84648 () Bool)

(assert (= bs!84648 (and d!224390 b!647861)))

(assert (=> bs!84648 (not (= lambda!19882 lambda!19880))))

(declare-fun bs!84649 () Bool)

(assert (= bs!84649 (and d!224390 b!647651)))

(assert (=> bs!84649 (= lambda!19882 lambda!19712)))

(assert (=> bs!84648 (not (= lambda!19882 lambda!19878))))

(assert (=> bs!84647 (= lambda!19882 lambda!19779)))

(assert (=> bs!84648 (not (= lambda!19882 lambda!19879))))

(assert (=> bs!84648 (= lambda!19882 lambda!19881)))

(declare-fun b!647857 () Bool)

(declare-fun e!397781 () BalanceConc!4728)

(assert (=> b!647857 (= e!397781 (map!1548 lt!277701 lambda!19711))))

(declare-fun b!647858 () Bool)

(declare-fun e!397775 () Unit!12111)

(declare-fun Unit!12120 () Unit!12111)

(assert (=> b!647858 (= e!397775 Unit!12120)))

(declare-fun lt!278019 () BalanceConc!4728)

(declare-fun forall!1814 (BalanceConc!4728 Int) Bool)

(assert (=> d!224390 (forall!1814 lt!278019 lambda!19882)))

(assert (=> d!224390 (= lt!278019 e!397781)))

(declare-fun c!117811 () Bool)

(declare-fun size!5511 (BalanceConc!4728) Int)

(assert (=> d!224390 (= c!117811 (<= (size!5511 (map!1548 lt!277701 lambda!19711)) 1))))

(assert (=> d!224390 (= (sortObjectsByID!0 (map!1548 lt!277701 lambda!19711)) lt!278019)))

(declare-fun b!647859 () Bool)

(assert (=> b!647859 true))

(declare-fun lt!278029 () Unit!12111)

(declare-fun lt!278036 () tuple2!7510)

(declare-fun forallContained!468 (List!6959 Int tuple2!7510) Unit!12111)

(assert (=> b!647859 (= lt!278029 (forallContained!468 (list!2960 (map!1548 lt!277701 lambda!19711)) lambda!19878 lt!278036))))

(declare-fun e!397776 () Unit!12111)

(declare-fun err!732 () Unit!12111)

(assert (=> b!647859 (= e!397776 err!732)))

(declare-fun b!647860 () Bool)

(assert (=> b!647860 true))

(declare-fun lt!278014 () BalanceConc!4728)

(declare-fun lt!278027 () Unit!12111)

(assert (=> b!647860 (= lt!278027 (forallContained!468 (list!2960 lt!278014) lambda!19880 lt!278036))))

(declare-fun err!731 () Unit!12111)

(assert (=> b!647860 (= e!397775 err!731)))

(declare-fun lt!278020 () BalanceConc!4728)

(declare-fun lt!278008 () BalanceConc!4728)

(declare-fun ++!1865 (BalanceConc!4728 BalanceConc!4728) BalanceConc!4728)

(assert (=> b!647861 (= e!397781 (++!1865 (++!1865 (sortObjectsByID!0 lt!278020) lt!278008) (sortObjectsByID!0 lt!278014)))))

(declare-fun apply!1665 (BalanceConc!4728 Int) tuple2!7510)

(assert (=> b!647861 (= lt!278036 (apply!1665 (map!1548 lt!277701 lambda!19711) (ite (>= (size!5511 (map!1548 lt!277701 lambda!19711)) 0) (div (size!5511 (map!1548 lt!277701 lambda!19711)) 2) (- (div (- (size!5511 (map!1548 lt!277701 lambda!19711))) 2)))))))

(declare-fun filter!143 (BalanceConc!4728 Int) BalanceConc!4728)

(assert (=> b!647861 (= lt!278020 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19878))))

(assert (=> b!647861 (= lt!278008 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19879))))

(assert (=> b!647861 (= lt!278014 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19880))))

(declare-fun c!117810 () Bool)

(declare-fun contains!1546 (BalanceConc!4728 tuple2!7510) Bool)

(assert (=> b!647861 (= c!117810 (contains!1546 lt!278020 lt!278036))))

(declare-fun lt!278010 () Unit!12111)

(declare-fun e!397780 () Unit!12111)

(assert (=> b!647861 (= lt!278010 e!397780)))

(declare-fun c!117813 () Bool)

(assert (=> b!647861 (= c!117813 (forall!1814 (map!1548 lt!277701 lambda!19711) lambda!19878))))

(declare-fun lt!278016 () Unit!12111)

(assert (=> b!647861 (= lt!278016 e!397776)))

(declare-fun lt!278011 () List!6959)

(assert (=> b!647861 (= lt!278011 (list!2960 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lt!278018 () Unit!12111)

(declare-fun lemmaNotForallFilterShorter!16 (List!6959 Int) Unit!12111)

(assert (=> b!647861 (= lt!278018 (lemmaNotForallFilterShorter!16 lt!278011 lambda!19878))))

(declare-fun res!283662 () Bool)

(declare-fun isEmpty!4744 (List!6959) Bool)

(assert (=> b!647861 (= res!283662 (isEmpty!4744 lt!278011))))

(declare-fun e!397777 () Bool)

(assert (=> b!647861 (=> res!283662 e!397777)))

(assert (=> b!647861 e!397777))

(declare-fun lt!278015 () Unit!12111)

(assert (=> b!647861 (= lt!278015 lt!278018)))

(declare-fun c!117814 () Bool)

(assert (=> b!647861 (= c!117814 (contains!1546 lt!278014 lt!278036))))

(declare-fun lt!278037 () Unit!12111)

(assert (=> b!647861 (= lt!278037 e!397775)))

(declare-fun c!117812 () Bool)

(assert (=> b!647861 (= c!117812 (forall!1814 (map!1548 lt!277701 lambda!19711) lambda!19880))))

(declare-fun lt!278023 () Unit!12111)

(declare-fun e!397779 () Unit!12111)

(assert (=> b!647861 (= lt!278023 e!397779)))

(declare-fun lt!278024 () List!6959)

(assert (=> b!647861 (= lt!278024 (list!2960 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lt!278025 () Unit!12111)

(assert (=> b!647861 (= lt!278025 (lemmaNotForallFilterShorter!16 lt!278024 lambda!19880))))

(declare-fun res!283661 () Bool)

(assert (=> b!647861 (= res!283661 (isEmpty!4744 lt!278024))))

(declare-fun e!397778 () Bool)

(assert (=> b!647861 (=> res!283661 e!397778)))

(assert (=> b!647861 e!397778))

(declare-fun lt!278035 () Unit!12111)

(assert (=> b!647861 (= lt!278035 lt!278025)))

(declare-fun lt!278026 () Unit!12111)

(declare-fun filterSubseq!16 (List!6959 Int) Unit!12111)

(assert (=> b!647861 (= lt!278026 (filterSubseq!16 (list!2960 (map!1548 lt!277701 lambda!19711)) lambda!19878))))

(declare-fun lt!278007 () Unit!12111)

(assert (=> b!647861 (= lt!278007 (filterSubseq!16 (list!2960 (map!1548 lt!277701 lambda!19711)) lambda!19879))))

(declare-fun lt!278004 () Unit!12111)

(assert (=> b!647861 (= lt!278004 (filterSubseq!16 (list!2960 (map!1548 lt!277701 lambda!19711)) lambda!19880))))

(declare-fun lt!278031 () List!6959)

(assert (=> b!647861 (= lt!278031 (list!2960 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19878)))))

(declare-fun lt!278021 () List!6959)

(assert (=> b!647861 (= lt!278021 (list!2960 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lt!278012 () Unit!12111)

(declare-fun lemmaForallSubseq!25 (List!6959 List!6959 Int) Unit!12111)

(assert (=> b!647861 (= lt!278012 (lemmaForallSubseq!25 lt!278031 lt!278021 lambda!19881))))

(assert (=> b!647861 (forall!1813 lt!278031 lambda!19881)))

(declare-fun lt!278033 () Unit!12111)

(assert (=> b!647861 (= lt!278033 lt!278012)))

(declare-fun lt!278022 () List!6959)

(assert (=> b!647861 (= lt!278022 (list!2960 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19879)))))

(declare-fun lt!278034 () List!6959)

(assert (=> b!647861 (= lt!278034 (list!2960 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lt!278028 () Unit!12111)

(assert (=> b!647861 (= lt!278028 (lemmaForallSubseq!25 lt!278022 lt!278034 lambda!19881))))

(assert (=> b!647861 (forall!1813 lt!278022 lambda!19881)))

(declare-fun lt!278005 () Unit!12111)

(assert (=> b!647861 (= lt!278005 lt!278028)))

(declare-fun lt!278032 () List!6959)

(assert (=> b!647861 (= lt!278032 (list!2960 (filter!143 (map!1548 lt!277701 lambda!19711) lambda!19880)))))

(declare-fun lt!278017 () List!6959)

(assert (=> b!647861 (= lt!278017 (list!2960 (map!1548 lt!277701 lambda!19711)))))

(declare-fun lt!278030 () Unit!12111)

(assert (=> b!647861 (= lt!278030 (lemmaForallSubseq!25 lt!278032 lt!278017 lambda!19881))))

(assert (=> b!647861 (forall!1813 lt!278032 lambda!19881)))

(declare-fun lt!278013 () Unit!12111)

(assert (=> b!647861 (= lt!278013 lt!278030)))

(declare-fun lt!278003 () Unit!12111)

(declare-fun lemmaConcatPreservesForall!61 (List!6959 List!6959 Int) Unit!12111)

(assert (=> b!647861 (= lt!278003 (lemmaConcatPreservesForall!61 (list!2960 (sortObjectsByID!0 lt!278020)) (list!2960 lt!278008) lambda!19881))))

(declare-fun lt!278002 () Unit!12111)

(declare-fun ++!1866 (List!6959 List!6959) List!6959)

(assert (=> b!647861 (= lt!278002 (lemmaConcatPreservesForall!61 (++!1866 (list!2960 (sortObjectsByID!0 lt!278020)) (list!2960 lt!278008)) (list!2960 (sortObjectsByID!0 lt!278014)) lambda!19881))))

(declare-fun b!647862 () Bool)

(declare-fun size!5512 (List!6959) Int)

(declare-fun filter!144 (List!6959 Int) List!6959)

(assert (=> b!647862 (= e!397778 (< (size!5512 (filter!144 lt!278024 lambda!19880)) (size!5512 lt!278024)))))

(declare-fun b!647863 () Bool)

(assert (=> b!647863 (= e!397777 (< (size!5512 (filter!144 lt!278011 lambda!19878)) (size!5512 lt!278011)))))

(declare-fun b!647864 () Bool)

(declare-fun Unit!12121 () Unit!12111)

(assert (=> b!647864 (= e!397776 Unit!12121)))

(declare-fun b!647865 () Bool)

(declare-fun Unit!12122 () Unit!12111)

(assert (=> b!647865 (= e!397780 Unit!12122)))

(declare-fun b!647866 () Bool)

(assert (=> b!647866 true))

(declare-fun lt!278009 () Unit!12111)

(assert (=> b!647866 (= lt!278009 (forallContained!468 (list!2960 lt!278020) lambda!19878 lt!278036))))

(declare-fun err!733 () Unit!12111)

(assert (=> b!647866 (= e!397780 err!733)))

(declare-fun b!647867 () Bool)

(declare-fun Unit!12123 () Unit!12111)

(assert (=> b!647867 (= e!397779 Unit!12123)))

(declare-fun b!647868 () Bool)

(assert (=> b!647868 true))

(declare-fun lt!278006 () Unit!12111)

(assert (=> b!647868 (= lt!278006 (forallContained!468 (list!2960 (map!1548 lt!277701 lambda!19711)) lambda!19880 lt!278036))))

(declare-fun err!730 () Unit!12111)

(assert (=> b!647868 (= e!397779 err!730)))

(assert (= (and d!224390 c!117811) b!647857))

(assert (= (and d!224390 (not c!117811)) b!647861))

(assert (= (and b!647861 c!117810) b!647866))

(assert (= (and b!647861 (not c!117810)) b!647865))

(assert (= (and b!647861 c!117813) b!647859))

(assert (= (and b!647861 (not c!117813)) b!647864))

(assert (= (and b!647861 (not res!283662)) b!647863))

(assert (= (and b!647861 c!117814) b!647860))

(assert (= (and b!647861 (not c!117814)) b!647858))

(assert (= (and b!647861 c!117812) b!647868))

(assert (= (and b!647861 (not c!117812)) b!647867))

(assert (= (and b!647861 (not res!283661)) b!647862))

(declare-fun m!918819 () Bool)

(assert (=> b!647862 m!918819))

(assert (=> b!647862 m!918819))

(declare-fun m!918821 () Bool)

(assert (=> b!647862 m!918821))

(declare-fun m!918823 () Bool)

(assert (=> b!647862 m!918823))

(declare-fun m!918825 () Bool)

(assert (=> b!647866 m!918825))

(assert (=> b!647866 m!918825))

(declare-fun m!918827 () Bool)

(assert (=> b!647866 m!918827))

(assert (=> b!647859 m!918443))

(declare-fun m!918829 () Bool)

(assert (=> b!647859 m!918829))

(assert (=> b!647859 m!918829))

(declare-fun m!918831 () Bool)

(assert (=> b!647859 m!918831))

(declare-fun m!918833 () Bool)

(assert (=> d!224390 m!918833))

(assert (=> d!224390 m!918443))

(declare-fun m!918835 () Bool)

(assert (=> d!224390 m!918835))

(declare-fun m!918837 () Bool)

(assert (=> b!647861 m!918837))

(assert (=> b!647861 m!918443))

(declare-fun m!918839 () Bool)

(assert (=> b!647861 m!918839))

(declare-fun m!918841 () Bool)

(assert (=> b!647861 m!918841))

(declare-fun m!918843 () Bool)

(assert (=> b!647861 m!918843))

(declare-fun m!918845 () Bool)

(assert (=> b!647861 m!918845))

(assert (=> b!647861 m!918829))

(declare-fun m!918847 () Bool)

(assert (=> b!647861 m!918847))

(declare-fun m!918849 () Bool)

(assert (=> b!647861 m!918849))

(declare-fun m!918851 () Bool)

(assert (=> b!647861 m!918851))

(declare-fun m!918853 () Bool)

(assert (=> b!647861 m!918853))

(declare-fun m!918855 () Bool)

(assert (=> b!647861 m!918855))

(assert (=> b!647861 m!918443))

(declare-fun m!918857 () Bool)

(assert (=> b!647861 m!918857))

(declare-fun m!918859 () Bool)

(assert (=> b!647861 m!918859))

(declare-fun m!918861 () Bool)

(assert (=> b!647861 m!918861))

(declare-fun m!918863 () Bool)

(assert (=> b!647861 m!918863))

(declare-fun m!918865 () Bool)

(assert (=> b!647861 m!918865))

(assert (=> b!647861 m!918859))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918851))

(assert (=> b!647861 m!918839))

(declare-fun m!918867 () Bool)

(assert (=> b!647861 m!918867))

(assert (=> b!647861 m!918865))

(declare-fun m!918869 () Bool)

(assert (=> b!647861 m!918869))

(declare-fun m!918871 () Bool)

(assert (=> b!647861 m!918871))

(assert (=> b!647861 m!918443))

(declare-fun m!918873 () Bool)

(assert (=> b!647861 m!918873))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918829))

(declare-fun m!918875 () Bool)

(assert (=> b!647861 m!918875))

(assert (=> b!647861 m!918863))

(declare-fun m!918877 () Bool)

(assert (=> b!647861 m!918877))

(declare-fun m!918879 () Bool)

(assert (=> b!647861 m!918879))

(assert (=> b!647861 m!918829))

(declare-fun m!918881 () Bool)

(assert (=> b!647861 m!918881))

(declare-fun m!918883 () Bool)

(assert (=> b!647861 m!918883))

(assert (=> b!647861 m!918443))

(declare-fun m!918885 () Bool)

(assert (=> b!647861 m!918885))

(assert (=> b!647861 m!918443))

(declare-fun m!918887 () Bool)

(assert (=> b!647861 m!918887))

(declare-fun m!918889 () Bool)

(assert (=> b!647861 m!918889))

(declare-fun m!918891 () Bool)

(assert (=> b!647861 m!918891))

(declare-fun m!918893 () Bool)

(assert (=> b!647861 m!918893))

(assert (=> b!647861 m!918873))

(declare-fun m!918895 () Bool)

(assert (=> b!647861 m!918895))

(assert (=> b!647861 m!918843))

(assert (=> b!647861 m!918877))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918839))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918873))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918835))

(assert (=> b!647861 m!918865))

(assert (=> b!647861 m!918841))

(assert (=> b!647861 m!918829))

(declare-fun m!918897 () Bool)

(assert (=> b!647861 m!918897))

(declare-fun m!918899 () Bool)

(assert (=> b!647861 m!918899))

(declare-fun m!918901 () Bool)

(assert (=> b!647861 m!918901))

(assert (=> b!647861 m!918861))

(assert (=> b!647861 m!918443))

(assert (=> b!647861 m!918851))

(assert (=> b!647861 m!918843))

(assert (=> b!647861 m!918859))

(assert (=> b!647861 m!918861))

(declare-fun m!918903 () Bool)

(assert (=> b!647861 m!918903))

(assert (=> b!647868 m!918443))

(assert (=> b!647868 m!918829))

(assert (=> b!647868 m!918829))

(declare-fun m!918905 () Bool)

(assert (=> b!647868 m!918905))

(declare-fun m!918907 () Bool)

(assert (=> b!647860 m!918907))

(assert (=> b!647860 m!918907))

(declare-fun m!918909 () Bool)

(assert (=> b!647860 m!918909))

(declare-fun m!918911 () Bool)

(assert (=> b!647863 m!918911))

(assert (=> b!647863 m!918911))

(declare-fun m!918913 () Bool)

(assert (=> b!647863 m!918913))

(declare-fun m!918915 () Bool)

(assert (=> b!647863 m!918915))

(assert (=> b!647651 d!224390))

(declare-fun d!224398 () Bool)

(declare-fun list!2964 (Conc!2358) List!6959)

(assert (=> d!224398 (= (list!2960 lt!277710) (list!2964 (c!117741 lt!277710)))))

(declare-fun bs!84650 () Bool)

(assert (= bs!84650 d!224398))

(declare-fun m!918917 () Bool)

(assert (=> bs!84650 m!918917))

(assert (=> b!647651 d!224398))

(declare-fun d!224400 () Bool)

(declare-fun e!397797 () Bool)

(assert (=> d!224400 e!397797))

(declare-fun res!283668 () Bool)

(assert (=> d!224400 (=> (not res!283668) (not e!397797))))

(declare-fun lt!278043 () BalanceConc!4730)

(assert (=> d!224400 (= res!283668 (= (list!2961 lt!278043) (map!1552 (list!2960 lt!277710) lambda!19713)))))

(declare-fun map!1554 (Conc!2358 Int) Conc!2359)

(assert (=> d!224400 (= lt!278043 (BalanceConc!4731 (map!1554 (c!117741 lt!277710) lambda!19713)))))

(assert (=> d!224400 (= (map!1547 lt!277710 lambda!19713) lt!278043)))

(declare-fun b!647886 () Bool)

(declare-fun isBalanced!633 (Conc!2359) Bool)

(assert (=> b!647886 (= e!397797 (isBalanced!633 (map!1554 (c!117741 lt!277710) lambda!19713)))))

(assert (= (and d!224400 res!283668) b!647886))

(declare-fun m!918919 () Bool)

(assert (=> d!224400 m!918919))

(assert (=> d!224400 m!918449))

(assert (=> d!224400 m!918449))

(declare-fun m!918921 () Bool)

(assert (=> d!224400 m!918921))

(declare-fun m!918923 () Bool)

(assert (=> d!224400 m!918923))

(assert (=> b!647886 m!918923))

(assert (=> b!647886 m!918923))

(declare-fun m!918925 () Bool)

(assert (=> b!647886 m!918925))

(assert (=> b!647651 d!224400))

(declare-fun d!224402 () Bool)

(declare-fun list!2965 (Conc!2359) List!6960)

(assert (=> d!224402 (= (list!2961 lt!277701) (list!2965 (c!117742 lt!277701)))))

(declare-fun bs!84651 () Bool)

(assert (= bs!84651 d!224402))

(declare-fun m!918927 () Bool)

(assert (=> bs!84651 m!918927))

(assert (=> b!647651 d!224402))

(declare-fun b!647913 () Bool)

(assert (=> b!647913 true))

(declare-fun bs!84657 () Bool)

(declare-fun d!224404 () Bool)

(assert (= bs!84657 (and d!224404 b!647913)))

(declare-fun lambda!19894 () Int)

(declare-fun lambda!19893 () Int)

(assert (=> bs!84657 (= lambda!19894 lambda!19893)))

(assert (=> d!224404 true))

(declare-fun b!647909 () Bool)

(declare-fun e!397812 () BalanceConc!4732)

(declare-fun append!235 (BalanceConc!4732 Int) BalanceConc!4732)

(assert (=> b!647909 (= e!397812 (append!235 (BalanceConc!4733 Empty!2360) 0))))

(declare-fun b!647910 () Bool)

(declare-fun e!397814 () Bool)

(declare-fun lt!278056 () Token!2496)

(declare-fun isKeywordValue!0 (Token!2496 TokenValue!1421) Bool)

(assert (=> b!647910 (= e!397814 (isKeywordValue!0 lt!278056 RightBrace!1421))))

(declare-fun b!647911 () Bool)

(declare-fun e!397813 () BalanceConc!4732)

(assert (=> b!647911 (= e!397813 (BalanceConc!4733 Empty!2360))))

(declare-fun b!647912 () Bool)

(declare-fun e!397811 () BalanceConc!4732)

(declare-fun call!42003 () BalanceConc!4732)

(assert (=> b!647912 (= e!397811 call!42003)))

(declare-fun lt!278057 () Unit!12111)

(declare-fun lemmaConcatPreservesForall!62 (List!6961 List!6961 Int) Unit!12111)

(declare-fun list!2966 (BalanceConc!4732) List!6961)

(assert (=> b!647913 (= lt!278057 (lemmaConcatPreservesForall!62 (list!2966 (BalanceConc!4733 Empty!2360)) (Cons!6947 0 Nil!6947) lambda!19893))))

(assert (=> b!647913 (= e!397811 call!42003)))

(declare-fun lt!278058 () BalanceConc!4732)

(declare-fun forall!1815 (BalanceConc!4732 Int) Bool)

(assert (=> d!224404 (forall!1815 lt!278058 lambda!19894)))

(assert (=> d!224404 (= lt!278058 e!397813)))

(declare-fun c!117828 () Bool)

(assert (=> d!224404 (= c!117828 (>= 0 (size!5509 (tokens!1226 printableTokens!2))))))

(declare-fun e!397815 () Bool)

(assert (=> d!224404 e!397815))

(declare-fun res!283674 () Bool)

(assert (=> d!224404 (=> (not res!283674) (not e!397815))))

(assert (=> d!224404 (= res!283674 (>= 0 0))))

(assert (=> d!224404 (= (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 0 (BalanceConc!4733 Empty!2360)) lt!278058)))

(declare-fun b!647914 () Bool)

(assert (=> b!647914 (= e!397813 e!397811)))

(declare-fun apply!1666 (BalanceConc!4726 Int) Token!2496)

(assert (=> b!647914 (= lt!278056 (apply!1666 (tokens!1226 printableTokens!2) 0))))

(declare-fun res!283673 () Bool)

(assert (=> b!647914 (= res!283673 (isKeywordValue!0 lt!278056 LeftBrace!1421))))

(assert (=> b!647914 (=> res!283673 e!397814)))

(declare-fun c!117826 () Bool)

(assert (=> b!647914 (= c!117826 e!397814)))

(declare-fun b!647915 () Bool)

(assert (=> b!647915 (= e!397812 (BalanceConc!4733 Empty!2360))))

(declare-fun bm!41998 () Bool)

(declare-fun c!117827 () Bool)

(assert (=> bm!41998 (= c!117827 c!117826)))

(assert (=> bm!41998 (= call!42003 (indicesOfOpenBraces!0 (tokens!1226 printableTokens!2) lt!277707 (+ 0 1) e!397812))))

(declare-fun b!647916 () Bool)

(assert (=> b!647916 (= e!397815 (<= 0 (size!5509 (tokens!1226 printableTokens!2))))))

(assert (= (and d!224404 res!283674) b!647916))

(assert (= (and d!224404 c!117828) b!647911))

(assert (= (and d!224404 (not c!117828)) b!647914))

(assert (= (and b!647914 (not res!283673)) b!647910))

(assert (= (and b!647914 c!117826) b!647913))

(assert (= (and b!647914 (not c!117826)) b!647912))

(assert (= (or b!647913 b!647912) bm!41998))

(assert (= (and bm!41998 c!117827) b!647909))

(assert (= (and bm!41998 (not c!117827)) b!647915))

(declare-fun m!918937 () Bool)

(assert (=> d!224404 m!918937))

(assert (=> d!224404 m!918525))

(declare-fun m!918939 () Bool)

(assert (=> b!647913 m!918939))

(assert (=> b!647913 m!918939))

(declare-fun m!918941 () Bool)

(assert (=> b!647913 m!918941))

(declare-fun m!918943 () Bool)

(assert (=> bm!41998 m!918943))

(declare-fun m!918945 () Bool)

(assert (=> b!647910 m!918945))

(declare-fun m!918947 () Bool)

(assert (=> b!647914 m!918947))

(declare-fun m!918949 () Bool)

(assert (=> b!647914 m!918949))

(declare-fun m!918951 () Bool)

(assert (=> b!647909 m!918951))

(assert (=> b!647916 m!918525))

(assert (=> b!647651 d!224404))

(declare-fun b!647929 () Bool)

(declare-fun b_free!18905 () Bool)

(declare-fun b_next!18961 () Bool)

(assert (=> b!647929 (= b_free!18905 (not b_next!18961))))

(declare-fun tp!200048 () Bool)

(declare-fun b_and!62699 () Bool)

(assert (=> b!647929 (= tp!200048 b_and!62699)))

(declare-fun b_free!18907 () Bool)

(declare-fun b_next!18963 () Bool)

(assert (=> b!647929 (= b_free!18907 (not b_next!18963))))

(declare-fun tp!200049 () Bool)

(declare-fun b_and!62701 () Bool)

(assert (=> b!647929 (= tp!200049 b_and!62701)))

(declare-fun e!397826 () Bool)

(assert (=> b!647929 (= e!397826 (and tp!200048 tp!200049))))

(declare-fun b!647928 () Bool)

(declare-fun e!397825 () Bool)

(declare-fun inv!8777 (String!8845) Bool)

(declare-fun inv!8788 (TokenValueInjection!2594) Bool)

(assert (=> b!647928 (= e!397825 (and (inv!8777 (tag!1649 (h!12344 (rules!8241 printableTokens!2)))) (inv!8788 (transformation!1387 (h!12344 (rules!8241 printableTokens!2)))) e!397826))))

(declare-fun b!647927 () Bool)

(declare-fun e!397824 () Bool)

(declare-fun tp!200050 () Bool)

(assert (=> b!647927 (= e!397824 (and e!397825 tp!200050))))

(assert (=> b!647654 (= tp!200034 e!397824)))

(assert (= b!647928 b!647929))

(assert (= b!647927 b!647928))

(assert (= (and b!647654 (is-Cons!6943 (rules!8241 printableTokens!2))) b!647927))

(declare-fun m!918953 () Bool)

(assert (=> b!647928 m!918953))

(declare-fun m!918955 () Bool)

(assert (=> b!647928 m!918955))

(declare-fun tp!200059 () Bool)

(declare-fun tp!200058 () Bool)

(declare-fun b!647938 () Bool)

(declare-fun e!397833 () Bool)

(assert (=> b!647938 (= e!397833 (and (inv!8781 (left!5518 (c!117740 (tokens!1226 printableTokens!2)))) tp!200058 (inv!8781 (right!5848 (c!117740 (tokens!1226 printableTokens!2)))) tp!200059))))

(declare-fun b!647940 () Bool)

(declare-fun e!397832 () Bool)

(declare-fun tp!200057 () Bool)

(assert (=> b!647940 (= e!397832 tp!200057)))

(declare-fun b!647939 () Bool)

(declare-fun inv!8789 (IArray!4715) Bool)

(assert (=> b!647939 (= e!397833 (and (inv!8789 (xs!4998 (c!117740 (tokens!1226 printableTokens!2)))) e!397832))))

(assert (=> b!647655 (= tp!200035 (and (inv!8781 (c!117740 (tokens!1226 printableTokens!2))) e!397833))))

(assert (= (and b!647655 (is-Node!2357 (c!117740 (tokens!1226 printableTokens!2)))) b!647938))

(assert (= b!647939 b!647940))

(assert (= (and b!647655 (is-Leaf!3567 (c!117740 (tokens!1226 printableTokens!2)))) b!647939))

(declare-fun m!918957 () Bool)

(assert (=> b!647938 m!918957))

(declare-fun m!918959 () Bool)

(assert (=> b!647938 m!918959))

(declare-fun m!918961 () Bool)

(assert (=> b!647939 m!918961))

(assert (=> b!647655 m!918475))

(push 1)

(assert (not b!647868))

(assert (not b!647916))

(assert (not b!647859))

(assert (not b!647880))

(assert (not d!224350))

(assert (not d!224344))

(assert (not b!647913))

(assert (not d!224374))

(assert (not d!224388))

(assert (not b!647882))

(assert (not d!224346))

(assert (not d!224352))

(assert (not d!224364))

(assert (not b!647736))

(assert (not b!647784))

(assert (not d!224400))

(assert (not b!647879))

(assert b_and!62699)

(assert (not b!647685))

(assert (not d!224342))

(assert (not d!224384))

(assert (not d!224356))

(assert (not b!647655))

(assert (not b!647683))

(assert (not b!647914))

(assert (not b!647886))

(assert (not b!647863))

(assert (not b!647909))

(assert (not b!647698))

(assert (not d!224366))

(assert (not b!647866))

(assert (not d!224404))

(assert (not d!224390))

(assert (not b!647781))

(assert (not b!647927))

(assert (not d!224372))

(assert b_and!62701)

(assert (not b!647939))

(assert (not b_next!18963))

(assert (not b!647938))

(assert (not b!647940))

(assert (not bm!41998))

(assert (not d!224398))

(assert (not b!647676))

(assert (not b!647861))

(assert (not b!647860))

(assert (not b!647862))

(assert (not d!224402))

(assert (not d!224362))

(assert (not b!647910))

(assert (not b!647881))

(assert (not b_next!18961))

(assert (not b!647878))

(assert (not b!647684))

(assert (not b!647883))

(assert (not b!647700))

(assert (not bm!41992))

(assert (not b!647761))

(assert (not b!647928))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62701)

(assert b_and!62699)

(assert (not b_next!18963))

(assert (not b_next!18961))

(check-sat)

(pop 1)

