; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15270 () Bool)

(assert start!15270)

(declare-fun b!144681 () Bool)

(declare-fun b_free!5025 () Bool)

(declare-fun b_next!5025 () Bool)

(assert (=> b!144681 (= b_free!5025 (not b_next!5025))))

(declare-fun tp!76315 () Bool)

(declare-fun b_and!7749 () Bool)

(assert (=> b!144681 (= tp!76315 b_and!7749)))

(declare-fun b_free!5027 () Bool)

(declare-fun b_next!5027 () Bool)

(assert (=> b!144681 (= b_free!5027 (not b_next!5027))))

(declare-fun tp!76312 () Bool)

(declare-fun b_and!7751 () Bool)

(assert (=> b!144681 (= tp!76312 b_and!7751)))

(declare-fun b!144676 () Bool)

(declare-fun b_free!5029 () Bool)

(declare-fun b_next!5029 () Bool)

(assert (=> b!144676 (= b_free!5029 (not b_next!5029))))

(declare-fun tp!76303 () Bool)

(declare-fun b_and!7753 () Bool)

(assert (=> b!144676 (= tp!76303 b_and!7753)))

(declare-fun b_free!5031 () Bool)

(declare-fun b_next!5031 () Bool)

(assert (=> b!144676 (= b_free!5031 (not b_next!5031))))

(declare-fun tp!76314 () Bool)

(declare-fun b_and!7755 () Bool)

(assert (=> b!144676 (= tp!76314 b_and!7755)))

(declare-fun b!144683 () Bool)

(declare-fun b_free!5033 () Bool)

(declare-fun b_next!5033 () Bool)

(assert (=> b!144683 (= b_free!5033 (not b_next!5033))))

(declare-fun tp!76307 () Bool)

(declare-fun b_and!7757 () Bool)

(assert (=> b!144683 (= tp!76307 b_and!7757)))

(declare-fun b_free!5035 () Bool)

(declare-fun b_next!5035 () Bool)

(assert (=> b!144683 (= b_free!5035 (not b_next!5035))))

(declare-fun tp!76308 () Bool)

(declare-fun b_and!7759 () Bool)

(assert (=> b!144683 (= tp!76308 b_and!7759)))

(declare-fun b!144670 () Bool)

(declare-fun res!66769 () Bool)

(declare-fun e!85780 () Bool)

(assert (=> b!144670 (=> (not res!66769) (not e!85780))))

(declare-datatypes ((LexerInterface!313 0))(
  ( (LexerInterfaceExt!310 (__x!2385 Int)) (Lexer!311) )
))
(declare-fun thiss!17480 () LexerInterface!313)

(declare-datatypes ((List!2509 0))(
  ( (Nil!2499) (Cons!2499 (h!7896 (_ BitVec 16)) (t!24009 List!2509)) )
))
(declare-datatypes ((TokenValue!449 0))(
  ( (FloatLiteralValue!898 (text!3588 List!2509)) (TokenValueExt!448 (__x!2386 Int)) (Broken!2245 (value!16459 List!2509)) (Object!458) (End!449) (Def!449) (Underscore!449) (Match!449) (Else!449) (Error!449) (Case!449) (If!449) (Extends!449) (Abstract!449) (Class!449) (Val!449) (DelimiterValue!898 (del!509 List!2509)) (KeywordValue!455 (value!16460 List!2509)) (CommentValue!898 (value!16461 List!2509)) (WhitespaceValue!898 (value!16462 List!2509)) (IndentationValue!449 (value!16463 List!2509)) (String!3324) (Int32!449) (Broken!2246 (value!16464 List!2509)) (Boolean!450) (Unit!1853) (OperatorValue!452 (op!509 List!2509)) (IdentifierValue!898 (value!16465 List!2509)) (IdentifierValue!899 (value!16466 List!2509)) (WhitespaceValue!899 (value!16467 List!2509)) (True!898) (False!898) (Broken!2247 (value!16468 List!2509)) (Broken!2248 (value!16469 List!2509)) (True!899) (RightBrace!449) (RightBracket!449) (Colon!449) (Null!449) (Comma!449) (LeftBracket!449) (False!899) (LeftBrace!449) (ImaginaryLiteralValue!449 (text!3589 List!2509)) (StringLiteralValue!1347 (value!16470 List!2509)) (EOFValue!449 (value!16471 List!2509)) (IdentValue!449 (value!16472 List!2509)) (DelimiterValue!899 (value!16473 List!2509)) (DedentValue!449 (value!16474 List!2509)) (NewLineValue!449 (value!16475 List!2509)) (IntegerValue!1347 (value!16476 (_ BitVec 32)) (text!3590 List!2509)) (IntegerValue!1348 (value!16477 Int) (text!3591 List!2509)) (Times!449) (Or!449) (Equal!449) (Minus!449) (Broken!2249 (value!16478 List!2509)) (And!449) (Div!449) (LessEqual!449) (Mod!449) (Concat!1100) (Not!449) (Plus!449) (SpaceValue!449 (value!16479 List!2509)) (IntegerValue!1349 (value!16480 Int) (text!3592 List!2509)) (StringLiteralValue!1348 (text!3593 List!2509)) (FloatLiteralValue!899 (text!3594 List!2509)) (BytesLiteralValue!449 (value!16481 List!2509)) (CommentValue!899 (value!16482 List!2509)) (StringLiteralValue!1349 (value!16483 List!2509)) (ErrorTokenValue!449 (msg!510 List!2509)) )
))
(declare-datatypes ((C!2224 0))(
  ( (C!2225 (val!998 Int)) )
))
(declare-datatypes ((List!2510 0))(
  ( (Nil!2500) (Cons!2500 (h!7897 C!2224) (t!24010 List!2510)) )
))
(declare-datatypes ((IArray!1353 0))(
  ( (IArray!1354 (innerList!734 List!2510)) )
))
(declare-datatypes ((Conc!676 0))(
  ( (Node!676 (left!1888 Conc!676) (right!2218 Conc!676) (csize!1582 Int) (cheight!887 Int)) (Leaf!1229 (xs!3271 IArray!1353) (csize!1583 Int)) (Empty!676) )
))
(declare-datatypes ((BalanceConc!1360 0))(
  ( (BalanceConc!1361 (c!29655 Conc!676)) )
))
(declare-datatypes ((TokenValueInjection!670 0))(
  ( (TokenValueInjection!671 (toValue!1050 Int) (toChars!909 Int)) )
))
(declare-datatypes ((String!3325 0))(
  ( (String!3326 (value!16484 String)) )
))
(declare-datatypes ((Regex!651 0))(
  ( (ElementMatch!651 (c!29656 C!2224)) (Concat!1101 (regOne!1814 Regex!651) (regTwo!1814 Regex!651)) (EmptyExpr!651) (Star!651 (reg!980 Regex!651)) (EmptyLang!651) (Union!651 (regOne!1815 Regex!651) (regTwo!1815 Regex!651)) )
))
(declare-datatypes ((Rule!654 0))(
  ( (Rule!655 (regex!427 Regex!651) (tag!605 String!3325) (isSeparator!427 Bool) (transformation!427 TokenValueInjection!670)) )
))
(declare-datatypes ((List!2511 0))(
  ( (Nil!2501) (Cons!2501 (h!7898 Rule!654) (t!24011 List!2511)) )
))
(declare-fun rules!1920 () List!2511)

(declare-fun rulesInvariant!279 (LexerInterface!313 List!2511) Bool)

(assert (=> b!144670 (= res!66769 (rulesInvariant!279 thiss!17480 rules!1920))))

(declare-fun e!85788 () Bool)

(declare-fun e!85785 () Bool)

(declare-datatypes ((Token!598 0))(
  ( (Token!599 (value!16485 TokenValue!449) (rule!934 Rule!654) (size!2160 Int) (originalCharacters!470 List!2510)) )
))
(declare-datatypes ((List!2512 0))(
  ( (Nil!2502) (Cons!2502 (h!7899 Token!598) (t!24012 List!2512)) )
))
(declare-fun tokens!465 () List!2512)

(declare-fun b!144671 () Bool)

(declare-fun tp!76311 () Bool)

(declare-fun inv!21 (TokenValue!449) Bool)

(assert (=> b!144671 (= e!85788 (and (inv!21 (value!16485 (h!7899 tokens!465))) e!85785 tp!76311))))

(declare-fun e!85775 () Bool)

(declare-fun e!85787 () Bool)

(declare-fun b!144672 () Bool)

(declare-fun separatorToken!170 () Token!598)

(declare-fun tp!76313 () Bool)

(assert (=> b!144672 (= e!85787 (and (inv!21 (value!16485 separatorToken!170)) e!85775 tp!76313))))

(declare-fun res!66771 () Bool)

(assert (=> start!15270 (=> (not res!66771) (not e!85780))))

(get-info :version)

(assert (=> start!15270 (= res!66771 ((_ is Lexer!311) thiss!17480))))

(assert (=> start!15270 e!85780))

(assert (=> start!15270 true))

(declare-fun e!85777 () Bool)

(assert (=> start!15270 e!85777))

(declare-fun inv!3279 (Token!598) Bool)

(assert (=> start!15270 (and (inv!3279 separatorToken!170) e!85787)))

(declare-fun e!85786 () Bool)

(assert (=> start!15270 e!85786))

(declare-fun b!144673 () Bool)

(declare-fun res!66768 () Bool)

(declare-fun e!85774 () Bool)

(assert (=> b!144673 (=> (not res!66768) (not e!85774))))

(declare-fun lambda!3506 () Int)

(declare-fun forall!385 (List!2512 Int) Bool)

(assert (=> b!144673 (= res!66768 (forall!385 tokens!465 lambda!3506))))

(declare-fun e!85776 () Bool)

(declare-fun b!144674 () Bool)

(declare-fun tp!76309 () Bool)

(declare-fun inv!3276 (String!3325) Bool)

(declare-fun inv!3280 (TokenValueInjection!670) Bool)

(assert (=> b!144674 (= e!85785 (and tp!76309 (inv!3276 (tag!605 (rule!934 (h!7899 tokens!465)))) (inv!3280 (transformation!427 (rule!934 (h!7899 tokens!465)))) e!85776))))

(declare-fun b!144675 () Bool)

(assert (=> b!144675 (= e!85780 e!85774)))

(declare-fun res!66774 () Bool)

(assert (=> b!144675 (=> (not res!66774) (not e!85774))))

(declare-datatypes ((IArray!1355 0))(
  ( (IArray!1356 (innerList!735 List!2512)) )
))
(declare-datatypes ((Conc!677 0))(
  ( (Node!677 (left!1889 Conc!677) (right!2219 Conc!677) (csize!1584 Int) (cheight!888 Int)) (Leaf!1230 (xs!3272 IArray!1355) (csize!1585 Int)) (Empty!677) )
))
(declare-datatypes ((BalanceConc!1362 0))(
  ( (BalanceConc!1363 (c!29657 Conc!677)) )
))
(declare-fun lt!41727 () BalanceConc!1362)

(declare-fun rulesProduceEachTokenIndividually!105 (LexerInterface!313 List!2511 BalanceConc!1362) Bool)

(assert (=> b!144675 (= res!66774 (rulesProduceEachTokenIndividually!105 thiss!17480 rules!1920 lt!41727))))

(declare-fun seqFromList!242 (List!2512) BalanceConc!1362)

(assert (=> b!144675 (= lt!41727 (seqFromList!242 tokens!465))))

(declare-fun e!85779 () Bool)

(assert (=> b!144676 (= e!85779 (and tp!76303 tp!76314))))

(declare-fun b!144677 () Bool)

(declare-fun res!66776 () Bool)

(assert (=> b!144677 (=> (not res!66776) (not e!85774))))

(declare-fun sepAndNonSepRulesDisjointChars!16 (List!2511 List!2511) Bool)

(assert (=> b!144677 (= res!66776 (sepAndNonSepRulesDisjointChars!16 rules!1920 rules!1920))))

(declare-fun b!144678 () Bool)

(declare-fun res!66770 () Bool)

(assert (=> b!144678 (=> (not res!66770) (not e!85774))))

(assert (=> b!144678 (= res!66770 (isSeparator!427 (rule!934 separatorToken!170)))))

(declare-fun b!144679 () Bool)

(declare-fun e!85783 () Bool)

(declare-fun tp!76310 () Bool)

(assert (=> b!144679 (= e!85777 (and e!85783 tp!76310))))

(declare-fun tp!76306 () Bool)

(declare-fun b!144680 () Bool)

(assert (=> b!144680 (= e!85783 (and tp!76306 (inv!3276 (tag!605 (h!7898 rules!1920))) (inv!3280 (transformation!427 (h!7898 rules!1920))) e!85779))))

(assert (=> b!144681 (= e!85776 (and tp!76315 tp!76312))))

(declare-fun b!144682 () Bool)

(assert (=> b!144682 (= e!85774 false)))

(declare-fun lt!41728 () Int)

(declare-fun size!2161 (BalanceConc!1362) Int)

(assert (=> b!144682 (= lt!41728 (size!2161 lt!41727))))

(declare-fun lt!41726 () List!2510)

(declare-fun printWithSeparatorTokenWhenNeededList!6 (LexerInterface!313 List!2511 List!2512 Token!598) List!2510)

(assert (=> b!144682 (= lt!41726 (printWithSeparatorTokenWhenNeededList!6 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!85784 () Bool)

(assert (=> b!144683 (= e!85784 (and tp!76307 tp!76308))))

(declare-fun tp!76305 () Bool)

(declare-fun b!144684 () Bool)

(assert (=> b!144684 (= e!85786 (and (inv!3279 (h!7899 tokens!465)) e!85788 tp!76305))))

(declare-fun b!144685 () Bool)

(declare-fun res!66772 () Bool)

(assert (=> b!144685 (=> (not res!66772) (not e!85774))))

(assert (=> b!144685 (= res!66772 ((_ is Cons!2502) tokens!465))))

(declare-fun b!144686 () Bool)

(declare-fun res!66775 () Bool)

(assert (=> b!144686 (=> (not res!66775) (not e!85780))))

(declare-fun isEmpty!966 (List!2511) Bool)

(assert (=> b!144686 (= res!66775 (not (isEmpty!966 rules!1920)))))

(declare-fun b!144687 () Bool)

(declare-fun res!66773 () Bool)

(assert (=> b!144687 (=> (not res!66773) (not e!85774))))

(declare-fun rulesProduceIndividualToken!62 (LexerInterface!313 List!2511 Token!598) Bool)

(assert (=> b!144687 (= res!66773 (rulesProduceIndividualToken!62 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!144688 () Bool)

(declare-fun tp!76304 () Bool)

(assert (=> b!144688 (= e!85775 (and tp!76304 (inv!3276 (tag!605 (rule!934 separatorToken!170))) (inv!3280 (transformation!427 (rule!934 separatorToken!170))) e!85784))))

(assert (= (and start!15270 res!66771) b!144686))

(assert (= (and b!144686 res!66775) b!144670))

(assert (= (and b!144670 res!66769) b!144675))

(assert (= (and b!144675 res!66774) b!144687))

(assert (= (and b!144687 res!66773) b!144678))

(assert (= (and b!144678 res!66770) b!144673))

(assert (= (and b!144673 res!66768) b!144677))

(assert (= (and b!144677 res!66776) b!144685))

(assert (= (and b!144685 res!66772) b!144682))

(assert (= b!144680 b!144676))

(assert (= b!144679 b!144680))

(assert (= (and start!15270 ((_ is Cons!2501) rules!1920)) b!144679))

(assert (= b!144688 b!144683))

(assert (= b!144672 b!144688))

(assert (= start!15270 b!144672))

(assert (= b!144674 b!144681))

(assert (= b!144671 b!144674))

(assert (= b!144684 b!144671))

(assert (= (and start!15270 ((_ is Cons!2502) tokens!465)) b!144684))

(declare-fun m!127349 () Bool)

(assert (=> b!144672 m!127349))

(declare-fun m!127351 () Bool)

(assert (=> b!144677 m!127351))

(declare-fun m!127353 () Bool)

(assert (=> b!144686 m!127353))

(declare-fun m!127355 () Bool)

(assert (=> b!144675 m!127355))

(declare-fun m!127357 () Bool)

(assert (=> b!144675 m!127357))

(declare-fun m!127359 () Bool)

(assert (=> b!144671 m!127359))

(declare-fun m!127361 () Bool)

(assert (=> b!144670 m!127361))

(declare-fun m!127363 () Bool)

(assert (=> b!144687 m!127363))

(declare-fun m!127365 () Bool)

(assert (=> b!144673 m!127365))

(declare-fun m!127367 () Bool)

(assert (=> b!144688 m!127367))

(declare-fun m!127369 () Bool)

(assert (=> b!144688 m!127369))

(declare-fun m!127371 () Bool)

(assert (=> b!144674 m!127371))

(declare-fun m!127373 () Bool)

(assert (=> b!144674 m!127373))

(declare-fun m!127375 () Bool)

(assert (=> b!144684 m!127375))

(declare-fun m!127377 () Bool)

(assert (=> b!144682 m!127377))

(declare-fun m!127379 () Bool)

(assert (=> b!144682 m!127379))

(declare-fun m!127381 () Bool)

(assert (=> b!144680 m!127381))

(declare-fun m!127383 () Bool)

(assert (=> b!144680 m!127383))

(declare-fun m!127385 () Bool)

(assert (=> start!15270 m!127385))

(check-sat b_and!7751 (not b!144674) (not b!144687) (not b!144684) (not b_next!5025) (not b_next!5033) (not b!144688) b_and!7757 b_and!7755 (not b!144673) (not b!144672) (not b!144670) (not b!144679) b_and!7749 b_and!7753 (not b_next!5031) (not start!15270) (not b!144675) (not b_next!5027) (not b!144686) b_and!7759 (not b_next!5035) (not b!144677) (not b!144682) (not b!144680) (not b!144671) (not b_next!5029))
(check-sat b_and!7749 b_and!7751 (not b_next!5027) (not b_next!5025) (not b_next!5033) b_and!7757 (not b_next!5029) b_and!7755 b_and!7753 (not b_next!5031) b_and!7759 (not b_next!5035))
