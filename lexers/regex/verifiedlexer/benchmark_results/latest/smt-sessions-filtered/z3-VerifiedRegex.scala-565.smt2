; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16070 () Bool)

(assert start!16070)

(declare-fun b!150639 () Bool)

(declare-fun b_free!5465 () Bool)

(declare-fun b_next!5465 () Bool)

(assert (=> b!150639 (= b_free!5465 (not b_next!5465))))

(declare-fun tp!78597 () Bool)

(declare-fun b_and!8613 () Bool)

(assert (=> b!150639 (= tp!78597 b_and!8613)))

(declare-fun b_free!5467 () Bool)

(declare-fun b_next!5467 () Bool)

(assert (=> b!150639 (= b_free!5467 (not b_next!5467))))

(declare-fun tp!78600 () Bool)

(declare-fun b_and!8615 () Bool)

(assert (=> b!150639 (= tp!78600 b_and!8615)))

(declare-fun b!150643 () Bool)

(declare-fun b_free!5469 () Bool)

(declare-fun b_next!5469 () Bool)

(assert (=> b!150643 (= b_free!5469 (not b_next!5469))))

(declare-fun tp!78594 () Bool)

(declare-fun b_and!8617 () Bool)

(assert (=> b!150643 (= tp!78594 b_and!8617)))

(declare-fun b_free!5471 () Bool)

(declare-fun b_next!5471 () Bool)

(assert (=> b!150643 (= b_free!5471 (not b_next!5471))))

(declare-fun tp!78598 () Bool)

(declare-fun b_and!8619 () Bool)

(assert (=> b!150643 (= tp!78598 b_and!8619)))

(declare-fun b!150637 () Bool)

(declare-fun b_free!5473 () Bool)

(declare-fun b_next!5473 () Bool)

(assert (=> b!150637 (= b_free!5473 (not b_next!5473))))

(declare-fun tp!78589 () Bool)

(declare-fun b_and!8621 () Bool)

(assert (=> b!150637 (= tp!78589 b_and!8621)))

(declare-fun b_free!5475 () Bool)

(declare-fun b_next!5475 () Bool)

(assert (=> b!150637 (= b_free!5475 (not b_next!5475))))

(declare-fun tp!78592 () Bool)

(declare-fun b_and!8623 () Bool)

(assert (=> b!150637 (= tp!78592 b_and!8623)))

(declare-fun tp!78595 () Bool)

(declare-datatypes ((List!2623 0))(
  ( (Nil!2613) (Cons!2613 (h!8010 (_ BitVec 16)) (t!24759 List!2623)) )
))
(declare-datatypes ((TokenValue!475 0))(
  ( (FloatLiteralValue!950 (text!3770 List!2623)) (TokenValueExt!474 (__x!2437 Int)) (Broken!2375 (value!17200 List!2623)) (Object!484) (End!475) (Def!475) (Underscore!475) (Match!475) (Else!475) (Error!475) (Case!475) (If!475) (Extends!475) (Abstract!475) (Class!475) (Val!475) (DelimiterValue!950 (del!535 List!2623)) (KeywordValue!481 (value!17201 List!2623)) (CommentValue!950 (value!17202 List!2623)) (WhitespaceValue!950 (value!17203 List!2623)) (IndentationValue!475 (value!17204 List!2623)) (String!3454) (Int32!475) (Broken!2376 (value!17205 List!2623)) (Boolean!476) (Unit!1983) (OperatorValue!478 (op!535 List!2623)) (IdentifierValue!950 (value!17206 List!2623)) (IdentifierValue!951 (value!17207 List!2623)) (WhitespaceValue!951 (value!17208 List!2623)) (True!950) (False!950) (Broken!2377 (value!17209 List!2623)) (Broken!2378 (value!17210 List!2623)) (True!951) (RightBrace!475) (RightBracket!475) (Colon!475) (Null!475) (Comma!475) (LeftBracket!475) (False!951) (LeftBrace!475) (ImaginaryLiteralValue!475 (text!3771 List!2623)) (StringLiteralValue!1425 (value!17211 List!2623)) (EOFValue!475 (value!17212 List!2623)) (IdentValue!475 (value!17213 List!2623)) (DelimiterValue!951 (value!17214 List!2623)) (DedentValue!475 (value!17215 List!2623)) (NewLineValue!475 (value!17216 List!2623)) (IntegerValue!1425 (value!17217 (_ BitVec 32)) (text!3772 List!2623)) (IntegerValue!1426 (value!17218 Int) (text!3773 List!2623)) (Times!475) (Or!475) (Equal!475) (Minus!475) (Broken!2379 (value!17219 List!2623)) (And!475) (Div!475) (LessEqual!475) (Mod!475) (Concat!1152) (Not!475) (Plus!475) (SpaceValue!475 (value!17220 List!2623)) (IntegerValue!1427 (value!17221 Int) (text!3774 List!2623)) (StringLiteralValue!1426 (text!3775 List!2623)) (FloatLiteralValue!951 (text!3776 List!2623)) (BytesLiteralValue!475 (value!17222 List!2623)) (CommentValue!951 (value!17223 List!2623)) (StringLiteralValue!1427 (value!17224 List!2623)) (ErrorTokenValue!475 (msg!536 List!2623)) )
))
(declare-datatypes ((C!2276 0))(
  ( (C!2277 (val!1024 Int)) )
))
(declare-datatypes ((List!2624 0))(
  ( (Nil!2614) (Cons!2614 (h!8011 C!2276) (t!24760 List!2624)) )
))
(declare-datatypes ((IArray!1457 0))(
  ( (IArray!1458 (innerList!786 List!2624)) )
))
(declare-datatypes ((Conc!728 0))(
  ( (Node!728 (left!1973 Conc!728) (right!2303 Conc!728) (csize!1686 Int) (cheight!939 Int)) (Leaf!1294 (xs!3323 IArray!1457) (csize!1687 Int)) (Empty!728) )
))
(declare-datatypes ((BalanceConc!1464 0))(
  ( (BalanceConc!1465 (c!30485 Conc!728)) )
))
(declare-datatypes ((Regex!677 0))(
  ( (ElementMatch!677 (c!30486 C!2276)) (Concat!1153 (regOne!1866 Regex!677) (regTwo!1866 Regex!677)) (EmptyExpr!677) (Star!677 (reg!1006 Regex!677)) (EmptyLang!677) (Union!677 (regOne!1867 Regex!677) (regTwo!1867 Regex!677)) )
))
(declare-datatypes ((String!3455 0))(
  ( (String!3456 (value!17225 String)) )
))
(declare-datatypes ((TokenValueInjection!722 0))(
  ( (TokenValueInjection!723 (toValue!1088 Int) (toChars!947 Int)) )
))
(declare-datatypes ((Rule!706 0))(
  ( (Rule!707 (regex!453 Regex!677) (tag!631 String!3455) (isSeparator!453 Bool) (transformation!453 TokenValueInjection!722)) )
))
(declare-datatypes ((Token!650 0))(
  ( (Token!651 (value!17226 TokenValue!475) (rule!960 Rule!706) (size!2235 Int) (originalCharacters!496 List!2624)) )
))
(declare-datatypes ((List!2625 0))(
  ( (Nil!2615) (Cons!2615 (h!8012 Token!650) (t!24761 List!2625)) )
))
(declare-fun tokens!465 () List!2625)

(declare-fun e!89919 () Bool)

(declare-fun b!150628 () Bool)

(declare-fun e!89924 () Bool)

(declare-fun inv!3408 (Token!650) Bool)

(assert (=> b!150628 (= e!89924 (and (inv!3408 (h!8012 tokens!465)) e!89919 tp!78595))))

(declare-fun b!150629 () Bool)

(declare-fun res!69080 () Bool)

(declare-fun e!89920 () Bool)

(assert (=> b!150629 (=> (not res!69080) (not e!89920))))

(declare-fun lambda!3856 () Int)

(declare-fun forall!441 (List!2625 Int) Bool)

(assert (=> b!150629 (= res!69080 (forall!441 tokens!465 lambda!3856))))

(declare-fun tp!78591 () Bool)

(declare-fun b!150630 () Bool)

(declare-fun e!89918 () Bool)

(declare-fun inv!21 (TokenValue!475) Bool)

(assert (=> b!150630 (= e!89919 (and (inv!21 (value!17226 (h!8012 tokens!465))) e!89918 tp!78591))))

(declare-fun b!150631 () Bool)

(declare-fun res!69073 () Bool)

(assert (=> b!150631 (=> (not res!69073) (not e!89920))))

(get-info :version)

(assert (=> b!150631 (= res!69073 ((_ is Cons!2615) tokens!465))))

(declare-fun b!150632 () Bool)

(declare-fun e!89931 () Bool)

(assert (=> b!150632 (= e!89931 e!89920)))

(declare-fun res!69077 () Bool)

(assert (=> b!150632 (=> (not res!69077) (not e!89920))))

(declare-datatypes ((List!2626 0))(
  ( (Nil!2616) (Cons!2616 (h!8013 Rule!706) (t!24762 List!2626)) )
))
(declare-fun rules!1920 () List!2626)

(declare-datatypes ((IArray!1459 0))(
  ( (IArray!1460 (innerList!787 List!2625)) )
))
(declare-datatypes ((Conc!729 0))(
  ( (Node!729 (left!1974 Conc!729) (right!2304 Conc!729) (csize!1688 Int) (cheight!940 Int)) (Leaf!1295 (xs!3324 IArray!1459) (csize!1689 Int)) (Empty!729) )
))
(declare-datatypes ((BalanceConc!1466 0))(
  ( (BalanceConc!1467 (c!30487 Conc!729)) )
))
(declare-fun lt!43890 () BalanceConc!1466)

(declare-datatypes ((LexerInterface!339 0))(
  ( (LexerInterfaceExt!336 (__x!2438 Int)) (Lexer!337) )
))
(declare-fun thiss!17480 () LexerInterface!339)

(declare-fun rulesProduceEachTokenIndividually!131 (LexerInterface!339 List!2626 BalanceConc!1466) Bool)

(assert (=> b!150632 (= res!69077 (rulesProduceEachTokenIndividually!131 thiss!17480 rules!1920 lt!43890))))

(declare-fun seqFromList!283 (List!2625) BalanceConc!1466)

(assert (=> b!150632 (= lt!43890 (seqFromList!283 tokens!465))))

(declare-fun separatorToken!170 () Token!650)

(declare-fun e!89930 () Bool)

(declare-fun e!89921 () Bool)

(declare-fun b!150633 () Bool)

(declare-fun tp!78590 () Bool)

(assert (=> b!150633 (= e!89930 (and (inv!21 (value!17226 separatorToken!170)) e!89921 tp!78590))))

(declare-fun b!150634 () Bool)

(declare-fun tp!78593 () Bool)

(declare-fun e!89929 () Bool)

(declare-fun inv!3405 (String!3455) Bool)

(declare-fun inv!3409 (TokenValueInjection!722) Bool)

(assert (=> b!150634 (= e!89921 (and tp!78593 (inv!3405 (tag!631 (rule!960 separatorToken!170))) (inv!3409 (transformation!453 (rule!960 separatorToken!170))) e!89929))))

(declare-fun b!150635 () Bool)

(declare-fun res!69076 () Bool)

(assert (=> b!150635 (=> (not res!69076) (not e!89920))))

(declare-fun rulesProduceIndividualToken!88 (LexerInterface!339 List!2626 Token!650) Bool)

(assert (=> b!150635 (= res!69076 (rulesProduceIndividualToken!88 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!150636 () Bool)

(declare-fun res!69078 () Bool)

(assert (=> b!150636 (=> (not res!69078) (not e!89931))))

(declare-fun rulesInvariant!305 (LexerInterface!339 List!2626) Bool)

(assert (=> b!150636 (= res!69078 (rulesInvariant!305 thiss!17480 rules!1920))))

(declare-fun res!69074 () Bool)

(assert (=> start!16070 (=> (not res!69074) (not e!89931))))

(assert (=> start!16070 (= res!69074 ((_ is Lexer!337) thiss!17480))))

(assert (=> start!16070 e!89931))

(assert (=> start!16070 true))

(declare-fun e!89928 () Bool)

(assert (=> start!16070 e!89928))

(assert (=> start!16070 (and (inv!3408 separatorToken!170) e!89930)))

(assert (=> start!16070 e!89924))

(assert (=> b!150637 (= e!89929 (and tp!78589 tp!78592))))

(declare-fun b!150638 () Bool)

(declare-fun res!69082 () Bool)

(assert (=> b!150638 (=> (not res!69082) (not e!89920))))

(assert (=> b!150638 (= res!69082 (isSeparator!453 (rule!960 separatorToken!170)))))

(declare-fun e!89933 () Bool)

(assert (=> b!150639 (= e!89933 (and tp!78597 tp!78600))))

(declare-fun b!150640 () Bool)

(declare-fun res!69079 () Bool)

(assert (=> b!150640 (=> (not res!69079) (not e!89920))))

(declare-fun sepAndNonSepRulesDisjointChars!42 (List!2626 List!2626) Bool)

(assert (=> b!150640 (= res!69079 (sepAndNonSepRulesDisjointChars!42 rules!1920 rules!1920))))

(declare-fun b!150641 () Bool)

(declare-fun e!89927 () Bool)

(declare-fun tp!78601 () Bool)

(assert (=> b!150641 (= e!89928 (and e!89927 tp!78601))))

(declare-fun b!150642 () Bool)

(declare-fun res!69081 () Bool)

(declare-fun e!89923 () Bool)

(assert (=> b!150642 (=> (not res!69081) (not e!89923))))

(declare-fun lt!43889 () List!2624)

(declare-fun lt!43891 () List!2624)

(declare-fun list!915 (BalanceConc!1464) List!2624)

(declare-fun seqFromList!284 (List!2624) BalanceConc!1464)

(assert (=> b!150642 (= res!69081 (= (list!915 (seqFromList!284 lt!43889)) lt!43891))))

(declare-fun e!89925 () Bool)

(assert (=> b!150643 (= e!89925 (and tp!78594 tp!78598))))

(declare-fun b!150644 () Bool)

(declare-fun res!69075 () Bool)

(assert (=> b!150644 (=> (not res!69075) (not e!89931))))

(declare-fun isEmpty!1030 (List!2626) Bool)

(assert (=> b!150644 (= res!69075 (not (isEmpty!1030 rules!1920)))))

(declare-fun b!150645 () Bool)

(assert (=> b!150645 (= e!89923 false)))

(declare-fun lt!43888 () List!2624)

(declare-fun charsOf!108 (Token!650) BalanceConc!1464)

(assert (=> b!150645 (= lt!43888 (list!915 (charsOf!108 (h!8012 tokens!465))))))

(declare-fun lt!43892 () List!2624)

(declare-fun ++!558 (List!2624 List!2624) List!2624)

(declare-fun printWithSeparatorTokenWhenNeededList!32 (LexerInterface!339 List!2626 List!2625 Token!650) List!2624)

(assert (=> b!150645 (= lt!43892 (++!558 (list!915 (charsOf!108 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!32 thiss!17480 rules!1920 (t!24761 tokens!465) separatorToken!170)))))

(declare-fun b!150646 () Bool)

(assert (=> b!150646 (= e!89920 e!89923)))

(declare-fun res!69083 () Bool)

(assert (=> b!150646 (=> (not res!69083) (not e!89923))))

(assert (=> b!150646 (= res!69083 (= lt!43889 lt!43891))))

(declare-fun printWithSeparatorTokenWhenNeededRec!22 (LexerInterface!339 List!2626 BalanceConc!1466 Token!650 Int) BalanceConc!1464)

(assert (=> b!150646 (= lt!43891 (list!915 (printWithSeparatorTokenWhenNeededRec!22 thiss!17480 rules!1920 lt!43890 separatorToken!170 0)))))

(assert (=> b!150646 (= lt!43889 (printWithSeparatorTokenWhenNeededList!32 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!78599 () Bool)

(declare-fun b!150647 () Bool)

(assert (=> b!150647 (= e!89918 (and tp!78599 (inv!3405 (tag!631 (rule!960 (h!8012 tokens!465)))) (inv!3409 (transformation!453 (rule!960 (h!8012 tokens!465)))) e!89925))))

(declare-fun tp!78596 () Bool)

(declare-fun b!150648 () Bool)

(assert (=> b!150648 (= e!89927 (and tp!78596 (inv!3405 (tag!631 (h!8013 rules!1920))) (inv!3409 (transformation!453 (h!8013 rules!1920))) e!89933))))

(assert (= (and start!16070 res!69074) b!150644))

(assert (= (and b!150644 res!69075) b!150636))

(assert (= (and b!150636 res!69078) b!150632))

(assert (= (and b!150632 res!69077) b!150635))

(assert (= (and b!150635 res!69076) b!150638))

(assert (= (and b!150638 res!69082) b!150629))

(assert (= (and b!150629 res!69080) b!150640))

(assert (= (and b!150640 res!69079) b!150631))

(assert (= (and b!150631 res!69073) b!150646))

(assert (= (and b!150646 res!69083) b!150642))

(assert (= (and b!150642 res!69081) b!150645))

(assert (= b!150648 b!150639))

(assert (= b!150641 b!150648))

(assert (= (and start!16070 ((_ is Cons!2616) rules!1920)) b!150641))

(assert (= b!150634 b!150637))

(assert (= b!150633 b!150634))

(assert (= start!16070 b!150633))

(assert (= b!150647 b!150643))

(assert (= b!150630 b!150647))

(assert (= b!150628 b!150630))

(assert (= (and start!16070 ((_ is Cons!2615) tokens!465)) b!150628))

(declare-fun m!134491 () Bool)

(assert (=> b!150648 m!134491))

(declare-fun m!134493 () Bool)

(assert (=> b!150648 m!134493))

(declare-fun m!134495 () Bool)

(assert (=> b!150646 m!134495))

(assert (=> b!150646 m!134495))

(declare-fun m!134497 () Bool)

(assert (=> b!150646 m!134497))

(declare-fun m!134499 () Bool)

(assert (=> b!150646 m!134499))

(declare-fun m!134501 () Bool)

(assert (=> b!150634 m!134501))

(declare-fun m!134503 () Bool)

(assert (=> b!150634 m!134503))

(declare-fun m!134505 () Bool)

(assert (=> b!150632 m!134505))

(declare-fun m!134507 () Bool)

(assert (=> b!150632 m!134507))

(declare-fun m!134509 () Bool)

(assert (=> b!150644 m!134509))

(declare-fun m!134511 () Bool)

(assert (=> b!150630 m!134511))

(declare-fun m!134513 () Bool)

(assert (=> b!150645 m!134513))

(declare-fun m!134515 () Bool)

(assert (=> b!150645 m!134515))

(declare-fun m!134517 () Bool)

(assert (=> b!150645 m!134517))

(assert (=> b!150645 m!134515))

(assert (=> b!150645 m!134517))

(assert (=> b!150645 m!134513))

(declare-fun m!134519 () Bool)

(assert (=> b!150645 m!134519))

(declare-fun m!134521 () Bool)

(assert (=> b!150645 m!134521))

(declare-fun m!134523 () Bool)

(assert (=> b!150645 m!134523))

(assert (=> b!150645 m!134521))

(declare-fun m!134525 () Bool)

(assert (=> b!150629 m!134525))

(declare-fun m!134527 () Bool)

(assert (=> b!150640 m!134527))

(declare-fun m!134529 () Bool)

(assert (=> b!150633 m!134529))

(declare-fun m!134531 () Bool)

(assert (=> b!150628 m!134531))

(declare-fun m!134533 () Bool)

(assert (=> b!150635 m!134533))

(declare-fun m!134535 () Bool)

(assert (=> b!150636 m!134535))

(declare-fun m!134537 () Bool)

(assert (=> start!16070 m!134537))

(declare-fun m!134539 () Bool)

(assert (=> b!150647 m!134539))

(declare-fun m!134541 () Bool)

(assert (=> b!150647 m!134541))

(declare-fun m!134543 () Bool)

(assert (=> b!150642 m!134543))

(assert (=> b!150642 m!134543))

(declare-fun m!134545 () Bool)

(assert (=> b!150642 m!134545))

(check-sat (not b_next!5467) (not b!150645) (not b!150630) (not b!150635) (not b!150629) (not start!16070) (not b!150628) (not b!150636) (not b_next!5475) (not b_next!5471) (not b!150642) (not b!150644) (not b!150632) (not b!150648) b_and!8621 (not b!150633) b_and!8615 (not b!150641) b_and!8619 (not b!150634) (not b!150647) (not b!150640) (not b_next!5469) (not b!150646) b_and!8623 b_and!8613 (not b_next!5465) b_and!8617 (not b_next!5473))
(check-sat (not b_next!5467) b_and!8619 (not b_next!5469) (not b_next!5475) (not b_next!5471) b_and!8621 b_and!8615 b_and!8623 b_and!8613 (not b_next!5465) b_and!8617 (not b_next!5473))
