; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17478 () Bool)

(assert start!17478)

(declare-fun b!162030 () Bool)

(declare-fun b_free!6137 () Bool)

(declare-fun b_next!6137 () Bool)

(assert (=> b!162030 (= b_free!6137 (not b_next!6137))))

(declare-fun tp!82123 () Bool)

(declare-fun b_and!10121 () Bool)

(assert (=> b!162030 (= tp!82123 b_and!10121)))

(declare-fun b_free!6139 () Bool)

(declare-fun b_next!6139 () Bool)

(assert (=> b!162030 (= b_free!6139 (not b_next!6139))))

(declare-fun tp!82120 () Bool)

(declare-fun b_and!10123 () Bool)

(assert (=> b!162030 (= tp!82120 b_and!10123)))

(declare-fun b!162022 () Bool)

(declare-fun b_free!6141 () Bool)

(declare-fun b_next!6141 () Bool)

(assert (=> b!162022 (= b_free!6141 (not b_next!6141))))

(declare-fun tp!82131 () Bool)

(declare-fun b_and!10125 () Bool)

(assert (=> b!162022 (= tp!82131 b_and!10125)))

(declare-fun b_free!6143 () Bool)

(declare-fun b_next!6143 () Bool)

(assert (=> b!162022 (= b_free!6143 (not b_next!6143))))

(declare-fun tp!82124 () Bool)

(declare-fun b_and!10127 () Bool)

(assert (=> b!162022 (= tp!82124 b_and!10127)))

(declare-fun b!162029 () Bool)

(declare-fun b_free!6145 () Bool)

(declare-fun b_next!6145 () Bool)

(assert (=> b!162029 (= b_free!6145 (not b_next!6145))))

(declare-fun tp!82125 () Bool)

(declare-fun b_and!10129 () Bool)

(assert (=> b!162029 (= tp!82125 b_and!10129)))

(declare-fun b_free!6147 () Bool)

(declare-fun b_next!6147 () Bool)

(assert (=> b!162029 (= b_free!6147 (not b_next!6147))))

(declare-fun tp!82126 () Bool)

(declare-fun b_and!10131 () Bool)

(assert (=> b!162029 (= tp!82126 b_and!10131)))

(declare-fun b!162007 () Bool)

(declare-fun res!73465 () Bool)

(declare-fun e!97562 () Bool)

(assert (=> b!162007 (=> res!73465 e!97562)))

(declare-datatypes ((List!2797 0))(
  ( (Nil!2787) (Cons!2787 (h!8184 (_ BitVec 16)) (t!26063 List!2797)) )
))
(declare-datatypes ((TokenValue!515 0))(
  ( (FloatLiteralValue!1030 (text!4050 List!2797)) (TokenValueExt!514 (__x!2517 Int)) (Broken!2575 (value!18340 List!2797)) (Object!524) (End!515) (Def!515) (Underscore!515) (Match!515) (Else!515) (Error!515) (Case!515) (If!515) (Extends!515) (Abstract!515) (Class!515) (Val!515) (DelimiterValue!1030 (del!575 List!2797)) (KeywordValue!521 (value!18341 List!2797)) (CommentValue!1030 (value!18342 List!2797)) (WhitespaceValue!1030 (value!18343 List!2797)) (IndentationValue!515 (value!18344 List!2797)) (String!3654) (Int32!515) (Broken!2576 (value!18345 List!2797)) (Boolean!516) (Unit!2297) (OperatorValue!518 (op!575 List!2797)) (IdentifierValue!1030 (value!18346 List!2797)) (IdentifierValue!1031 (value!18347 List!2797)) (WhitespaceValue!1031 (value!18348 List!2797)) (True!1030) (False!1030) (Broken!2577 (value!18349 List!2797)) (Broken!2578 (value!18350 List!2797)) (True!1031) (RightBrace!515) (RightBracket!515) (Colon!515) (Null!515) (Comma!515) (LeftBracket!515) (False!1031) (LeftBrace!515) (ImaginaryLiteralValue!515 (text!4051 List!2797)) (StringLiteralValue!1545 (value!18351 List!2797)) (EOFValue!515 (value!18352 List!2797)) (IdentValue!515 (value!18353 List!2797)) (DelimiterValue!1031 (value!18354 List!2797)) (DedentValue!515 (value!18355 List!2797)) (NewLineValue!515 (value!18356 List!2797)) (IntegerValue!1545 (value!18357 (_ BitVec 32)) (text!4052 List!2797)) (IntegerValue!1546 (value!18358 Int) (text!4053 List!2797)) (Times!515) (Or!515) (Equal!515) (Minus!515) (Broken!2579 (value!18359 List!2797)) (And!515) (Div!515) (LessEqual!515) (Mod!515) (Concat!1232) (Not!515) (Plus!515) (SpaceValue!515 (value!18360 List!2797)) (IntegerValue!1547 (value!18361 Int) (text!4054 List!2797)) (StringLiteralValue!1546 (text!4055 List!2797)) (FloatLiteralValue!1031 (text!4056 List!2797)) (BytesLiteralValue!515 (value!18362 List!2797)) (CommentValue!1031 (value!18363 List!2797)) (StringLiteralValue!1547 (value!18364 List!2797)) (ErrorTokenValue!515 (msg!576 List!2797)) )
))
(declare-datatypes ((C!2356 0))(
  ( (C!2357 (val!1064 Int)) )
))
(declare-datatypes ((List!2798 0))(
  ( (Nil!2788) (Cons!2788 (h!8185 C!2356) (t!26064 List!2798)) )
))
(declare-datatypes ((IArray!1617 0))(
  ( (IArray!1618 (innerList!866 List!2798)) )
))
(declare-datatypes ((Conc!808 0))(
  ( (Node!808 (left!2101 Conc!808) (right!2431 Conc!808) (csize!1846 Int) (cheight!1019 Int)) (Leaf!1394 (xs!3403 IArray!1617) (csize!1847 Int)) (Empty!808) )
))
(declare-datatypes ((BalanceConc!1624 0))(
  ( (BalanceConc!1625 (c!32391 Conc!808)) )
))
(declare-datatypes ((Regex!717 0))(
  ( (ElementMatch!717 (c!32392 C!2356)) (Concat!1233 (regOne!1946 Regex!717) (regTwo!1946 Regex!717)) (EmptyExpr!717) (Star!717 (reg!1046 Regex!717)) (EmptyLang!717) (Union!717 (regOne!1947 Regex!717) (regTwo!1947 Regex!717)) )
))
(declare-datatypes ((String!3655 0))(
  ( (String!3656 (value!18365 String)) )
))
(declare-datatypes ((TokenValueInjection!802 0))(
  ( (TokenValueInjection!803 (toValue!1148 Int) (toChars!1007 Int)) )
))
(declare-datatypes ((Rule!786 0))(
  ( (Rule!787 (regex!493 Regex!717) (tag!671 String!3655) (isSeparator!493 Bool) (transformation!493 TokenValueInjection!802)) )
))
(declare-datatypes ((Token!730 0))(
  ( (Token!731 (value!18366 TokenValue!515) (rule!1000 Rule!786) (size!2339 Int) (originalCharacters!536 List!2798)) )
))
(declare-datatypes ((List!2799 0))(
  ( (Nil!2789) (Cons!2789 (h!8186 Token!730) (t!26065 List!2799)) )
))
(declare-fun tokens!465 () List!2799)

(declare-datatypes ((List!2800 0))(
  ( (Nil!2790) (Cons!2790 (h!8187 Rule!786) (t!26066 List!2800)) )
))
(declare-fun rules!1920 () List!2800)

(declare-datatypes ((LexerInterface!379 0))(
  ( (LexerInterfaceExt!376 (__x!2518 Int)) (Lexer!377) )
))
(declare-fun thiss!17480 () LexerInterface!379)

(declare-fun rulesProduceIndividualToken!128 (LexerInterface!379 List!2800 Token!730) Bool)

(assert (=> b!162007 (= res!73465 (not (rulesProduceIndividualToken!128 thiss!17480 rules!1920 (h!8186 tokens!465))))))

(declare-fun b!162008 () Bool)

(declare-fun res!73461 () Bool)

(declare-fun e!97568 () Bool)

(assert (=> b!162008 (=> (not res!73461) (not e!97568))))

(declare-fun rulesInvariant!345 (LexerInterface!379 List!2800) Bool)

(assert (=> b!162008 (= res!73461 (rulesInvariant!345 thiss!17480 rules!1920))))

(declare-fun b!162009 () Bool)

(declare-fun res!73463 () Bool)

(declare-fun e!97573 () Bool)

(assert (=> b!162009 (=> (not res!73463) (not e!97573))))

(declare-fun sepAndNonSepRulesDisjointChars!82 (List!2800 List!2800) Bool)

(assert (=> b!162009 (= res!73463 (sepAndNonSepRulesDisjointChars!82 rules!1920 rules!1920))))

(declare-fun separatorToken!170 () Token!730)

(declare-fun tp!82128 () Bool)

(declare-fun e!97554 () Bool)

(declare-fun b!162010 () Bool)

(declare-fun e!97558 () Bool)

(declare-fun inv!3603 (String!3655) Bool)

(declare-fun inv!3606 (TokenValueInjection!802) Bool)

(assert (=> b!162010 (= e!97554 (and tp!82128 (inv!3603 (tag!671 (rule!1000 separatorToken!170))) (inv!3606 (transformation!493 (rule!1000 separatorToken!170))) e!97558))))

(declare-fun b!162011 () Bool)

(assert (=> b!162011 (= e!97568 e!97573)))

(declare-fun res!73459 () Bool)

(assert (=> b!162011 (=> (not res!73459) (not e!97573))))

(declare-datatypes ((IArray!1619 0))(
  ( (IArray!1620 (innerList!867 List!2799)) )
))
(declare-datatypes ((Conc!809 0))(
  ( (Node!809 (left!2102 Conc!809) (right!2432 Conc!809) (csize!1848 Int) (cheight!1020 Int)) (Leaf!1395 (xs!3404 IArray!1619) (csize!1849 Int)) (Empty!809) )
))
(declare-datatypes ((BalanceConc!1626 0))(
  ( (BalanceConc!1627 (c!32393 Conc!809)) )
))
(declare-fun lt!49079 () BalanceConc!1626)

(declare-fun rulesProduceEachTokenIndividually!171 (LexerInterface!379 List!2800 BalanceConc!1626) Bool)

(assert (=> b!162011 (= res!73459 (rulesProduceEachTokenIndividually!171 thiss!17480 rules!1920 lt!49079))))

(declare-fun seqFromList!363 (List!2799) BalanceConc!1626)

(assert (=> b!162011 (= lt!49079 (seqFromList!363 tokens!465))))

(declare-fun b!162012 () Bool)

(declare-fun e!97560 () Bool)

(assert (=> b!162012 (= e!97573 e!97560)))

(declare-fun res!73470 () Bool)

(assert (=> b!162012 (=> (not res!73470) (not e!97560))))

(declare-fun lt!49081 () List!2798)

(declare-fun lt!49080 () List!2798)

(assert (=> b!162012 (= res!73470 (= lt!49081 lt!49080))))

(declare-fun list!1003 (BalanceConc!1624) List!2798)

(declare-fun printWithSeparatorTokenWhenNeededRec!62 (LexerInterface!379 List!2800 BalanceConc!1626 Token!730 Int) BalanceConc!1624)

(assert (=> b!162012 (= lt!49080 (list!1003 (printWithSeparatorTokenWhenNeededRec!62 thiss!17480 rules!1920 lt!49079 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!72 (LexerInterface!379 List!2800 List!2799 Token!730) List!2798)

(assert (=> b!162012 (= lt!49081 (printWithSeparatorTokenWhenNeededList!72 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!82121 () Bool)

(declare-fun e!97553 () Bool)

(declare-fun e!97570 () Bool)

(declare-fun b!162013 () Bool)

(assert (=> b!162013 (= e!97553 (and tp!82121 (inv!3603 (tag!671 (rule!1000 (h!8186 tokens!465)))) (inv!3606 (transformation!493 (rule!1000 (h!8186 tokens!465)))) e!97570))))

(declare-fun b!162014 () Bool)

(declare-fun res!73468 () Bool)

(assert (=> b!162014 (=> (not res!73468) (not e!97573))))

(declare-fun lambda!4430 () Int)

(declare-fun forall!519 (List!2799 Int) Bool)

(assert (=> b!162014 (= res!73468 (forall!519 tokens!465 lambda!4430))))

(declare-fun e!97566 () Bool)

(declare-fun b!162015 () Bool)

(declare-fun e!97564 () Bool)

(declare-fun tp!82127 () Bool)

(declare-fun inv!3607 (Token!730) Bool)

(assert (=> b!162015 (= e!97564 (and (inv!3607 (h!8186 tokens!465)) e!97566 tp!82127))))

(declare-fun tp!82122 () Bool)

(declare-fun b!162016 () Bool)

(declare-fun inv!21 (TokenValue!515) Bool)

(assert (=> b!162016 (= e!97566 (and (inv!21 (value!18366 (h!8186 tokens!465))) e!97553 tp!82122))))

(declare-fun e!97559 () Bool)

(declare-fun tp!82119 () Bool)

(declare-fun b!162017 () Bool)

(declare-fun e!97572 () Bool)

(assert (=> b!162017 (= e!97559 (and tp!82119 (inv!3603 (tag!671 (h!8187 rules!1920))) (inv!3606 (transformation!493 (h!8187 rules!1920))) e!97572))))

(declare-fun b!162019 () Bool)

(declare-fun res!73460 () Bool)

(assert (=> b!162019 (=> (not res!73460) (not e!97573))))

(assert (=> b!162019 (= res!73460 (rulesProduceIndividualToken!128 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!162020 () Bool)

(declare-fun e!97565 () Bool)

(declare-fun tp!82129 () Bool)

(assert (=> b!162020 (= e!97565 (and e!97559 tp!82129))))

(declare-fun b!162021 () Bool)

(assert (=> b!162021 (= e!97562 true)))

(declare-fun lt!49084 () BalanceConc!1624)

(declare-fun lt!49076 () List!2798)

(declare-fun seqFromList!364 (List!2798) BalanceConc!1624)

(assert (=> b!162021 (= lt!49084 (seqFromList!364 lt!49076))))

(assert (=> b!162022 (= e!97570 (and tp!82131 tp!82124))))

(declare-fun b!162023 () Bool)

(declare-fun res!73462 () Bool)

(assert (=> b!162023 (=> (not res!73462) (not e!97560))))

(assert (=> b!162023 (= res!73462 (= (list!1003 (seqFromList!364 lt!49081)) lt!49080))))

(declare-fun b!162024 () Bool)

(declare-fun res!73464 () Bool)

(assert (=> b!162024 (=> (not res!73464) (not e!97568))))

(declare-fun isEmpty!1128 (List!2800) Bool)

(assert (=> b!162024 (= res!73464 (not (isEmpty!1128 rules!1920)))))

(declare-fun b!162025 () Bool)

(declare-fun res!73457 () Bool)

(assert (=> b!162025 (=> (not res!73457) (not e!97573))))

(get-info :version)

(assert (=> b!162025 (= res!73457 ((_ is Cons!2789) tokens!465))))

(declare-fun b!162026 () Bool)

(declare-fun e!97556 () Bool)

(assert (=> b!162026 (= e!97556 e!97562)))

(declare-fun res!73466 () Bool)

(assert (=> b!162026 (=> res!73466 e!97562)))

(declare-fun lt!49078 () List!2798)

(declare-fun lt!49070 () List!2798)

(assert (=> b!162026 (= res!73466 (or (not (= lt!49070 lt!49078)) (not (= lt!49078 lt!49076)) (not (= lt!49070 lt!49076))))))

(declare-fun printList!63 (LexerInterface!379 List!2799) List!2798)

(assert (=> b!162026 (= lt!49078 (printList!63 thiss!17480 (Cons!2789 (h!8186 tokens!465) Nil!2789)))))

(declare-fun lt!49083 () BalanceConc!1624)

(assert (=> b!162026 (= lt!49070 (list!1003 lt!49083))))

(declare-fun lt!49075 () BalanceConc!1626)

(declare-fun printTailRec!73 (LexerInterface!379 BalanceConc!1626 Int BalanceConc!1624) BalanceConc!1624)

(assert (=> b!162026 (= lt!49083 (printTailRec!73 thiss!17480 lt!49075 0 (BalanceConc!1625 Empty!808)))))

(declare-fun print!110 (LexerInterface!379 BalanceConc!1626) BalanceConc!1624)

(assert (=> b!162026 (= lt!49083 (print!110 thiss!17480 lt!49075))))

(declare-fun singletonSeq!45 (Token!730) BalanceConc!1626)

(assert (=> b!162026 (= lt!49075 (singletonSeq!45 (h!8186 tokens!465)))))

(declare-fun b!162027 () Bool)

(declare-fun res!73472 () Bool)

(assert (=> b!162027 (=> res!73472 e!97556)))

(declare-fun e!97563 () Bool)

(assert (=> b!162027 (= res!73472 e!97563)))

(declare-fun res!73467 () Bool)

(assert (=> b!162027 (=> (not res!73467) (not e!97563))))

(declare-fun lt!49074 () List!2798)

(assert (=> b!162027 (= res!73467 (not (= lt!49081 lt!49074)))))

(declare-fun res!73458 () Bool)

(assert (=> start!17478 (=> (not res!73458) (not e!97568))))

(assert (=> start!17478 (= res!73458 ((_ is Lexer!377) thiss!17480))))

(assert (=> start!17478 e!97568))

(assert (=> start!17478 true))

(assert (=> start!17478 e!97565))

(declare-fun e!97571 () Bool)

(assert (=> start!17478 (and (inv!3607 separatorToken!170) e!97571)))

(assert (=> start!17478 e!97564))

(declare-fun b!162018 () Bool)

(assert (=> b!162018 (= e!97560 (not e!97556))))

(declare-fun res!73469 () Bool)

(assert (=> b!162018 (=> res!73469 e!97556)))

(declare-fun lt!49077 () List!2798)

(assert (=> b!162018 (= res!73469 (not (= lt!49077 (list!1003 (printWithSeparatorTokenWhenNeededRec!62 thiss!17480 rules!1920 (seqFromList!363 (t!26065 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!49072 () List!2798)

(assert (=> b!162018 (= lt!49072 lt!49074)))

(declare-fun lt!49073 () List!2798)

(declare-fun ++!622 (List!2798 List!2798) List!2798)

(assert (=> b!162018 (= lt!49074 (++!622 lt!49076 lt!49073))))

(declare-fun lt!49071 () List!2798)

(assert (=> b!162018 (= lt!49072 (++!622 (++!622 lt!49076 lt!49071) lt!49077))))

(declare-datatypes ((Unit!2298 0))(
  ( (Unit!2299) )
))
(declare-fun lt!49082 () Unit!2298)

(declare-fun lemmaConcatAssociativity!174 (List!2798 List!2798 List!2798) Unit!2298)

(assert (=> b!162018 (= lt!49082 (lemmaConcatAssociativity!174 lt!49076 lt!49071 lt!49077))))

(declare-fun charsOf!148 (Token!730) BalanceConc!1624)

(assert (=> b!162018 (= lt!49076 (list!1003 (charsOf!148 (h!8186 tokens!465))))))

(assert (=> b!162018 (= lt!49073 (++!622 lt!49071 lt!49077))))

(assert (=> b!162018 (= lt!49077 (printWithSeparatorTokenWhenNeededList!72 thiss!17480 rules!1920 (t!26065 tokens!465) separatorToken!170))))

(assert (=> b!162018 (= lt!49071 (list!1003 (charsOf!148 separatorToken!170)))))

(declare-fun b!162028 () Bool)

(declare-fun tp!82130 () Bool)

(assert (=> b!162028 (= e!97571 (and (inv!21 (value!18366 separatorToken!170)) e!97554 tp!82130))))

(assert (=> b!162029 (= e!97572 (and tp!82125 tp!82126))))

(assert (=> b!162030 (= e!97558 (and tp!82123 tp!82120))))

(declare-fun b!162031 () Bool)

(declare-fun res!73471 () Bool)

(assert (=> b!162031 (=> (not res!73471) (not e!97573))))

(assert (=> b!162031 (= res!73471 (isSeparator!493 (rule!1000 separatorToken!170)))))

(declare-fun b!162032 () Bool)

(assert (=> b!162032 (= e!97563 (not (= lt!49081 (++!622 lt!49076 lt!49077))))))

(assert (= (and start!17478 res!73458) b!162024))

(assert (= (and b!162024 res!73464) b!162008))

(assert (= (and b!162008 res!73461) b!162011))

(assert (= (and b!162011 res!73459) b!162019))

(assert (= (and b!162019 res!73460) b!162031))

(assert (= (and b!162031 res!73471) b!162014))

(assert (= (and b!162014 res!73468) b!162009))

(assert (= (and b!162009 res!73463) b!162025))

(assert (= (and b!162025 res!73457) b!162012))

(assert (= (and b!162012 res!73470) b!162023))

(assert (= (and b!162023 res!73462) b!162018))

(assert (= (and b!162018 (not res!73469)) b!162027))

(assert (= (and b!162027 res!73467) b!162032))

(assert (= (and b!162027 (not res!73472)) b!162026))

(assert (= (and b!162026 (not res!73466)) b!162007))

(assert (= (and b!162007 (not res!73465)) b!162021))

(assert (= b!162017 b!162029))

(assert (= b!162020 b!162017))

(assert (= (and start!17478 ((_ is Cons!2790) rules!1920)) b!162020))

(assert (= b!162010 b!162030))

(assert (= b!162028 b!162010))

(assert (= start!17478 b!162028))

(assert (= b!162013 b!162022))

(assert (= b!162016 b!162013))

(assert (= b!162015 b!162016))

(assert (= (and start!17478 ((_ is Cons!2789) tokens!465)) b!162015))

(declare-fun m!151889 () Bool)

(assert (=> b!162011 m!151889))

(declare-fun m!151891 () Bool)

(assert (=> b!162011 m!151891))

(declare-fun m!151893 () Bool)

(assert (=> b!162026 m!151893))

(declare-fun m!151895 () Bool)

(assert (=> b!162026 m!151895))

(declare-fun m!151897 () Bool)

(assert (=> b!162026 m!151897))

(declare-fun m!151899 () Bool)

(assert (=> b!162026 m!151899))

(declare-fun m!151901 () Bool)

(assert (=> b!162026 m!151901))

(declare-fun m!151903 () Bool)

(assert (=> b!162014 m!151903))

(declare-fun m!151905 () Bool)

(assert (=> b!162012 m!151905))

(assert (=> b!162012 m!151905))

(declare-fun m!151907 () Bool)

(assert (=> b!162012 m!151907))

(declare-fun m!151909 () Bool)

(assert (=> b!162012 m!151909))

(declare-fun m!151911 () Bool)

(assert (=> b!162018 m!151911))

(declare-fun m!151913 () Bool)

(assert (=> b!162018 m!151913))

(declare-fun m!151915 () Bool)

(assert (=> b!162018 m!151915))

(declare-fun m!151917 () Bool)

(assert (=> b!162018 m!151917))

(declare-fun m!151919 () Bool)

(assert (=> b!162018 m!151919))

(declare-fun m!151921 () Bool)

(assert (=> b!162018 m!151921))

(declare-fun m!151923 () Bool)

(assert (=> b!162018 m!151923))

(declare-fun m!151925 () Bool)

(assert (=> b!162018 m!151925))

(declare-fun m!151927 () Bool)

(assert (=> b!162018 m!151927))

(assert (=> b!162018 m!151919))

(declare-fun m!151929 () Bool)

(assert (=> b!162018 m!151929))

(assert (=> b!162018 m!151923))

(declare-fun m!151931 () Bool)

(assert (=> b!162018 m!151931))

(assert (=> b!162018 m!151915))

(assert (=> b!162018 m!151927))

(declare-fun m!151933 () Bool)

(assert (=> b!162018 m!151933))

(assert (=> b!162018 m!151925))

(declare-fun m!151935 () Bool)

(assert (=> b!162018 m!151935))

(declare-fun m!151937 () Bool)

(assert (=> b!162021 m!151937))

(declare-fun m!151939 () Bool)

(assert (=> b!162015 m!151939))

(declare-fun m!151941 () Bool)

(assert (=> b!162009 m!151941))

(declare-fun m!151943 () Bool)

(assert (=> b!162017 m!151943))

(declare-fun m!151945 () Bool)

(assert (=> b!162017 m!151945))

(declare-fun m!151947 () Bool)

(assert (=> b!162007 m!151947))

(declare-fun m!151949 () Bool)

(assert (=> start!17478 m!151949))

(declare-fun m!151951 () Bool)

(assert (=> b!162008 m!151951))

(declare-fun m!151953 () Bool)

(assert (=> b!162032 m!151953))

(declare-fun m!151955 () Bool)

(assert (=> b!162024 m!151955))

(declare-fun m!151957 () Bool)

(assert (=> b!162010 m!151957))

(declare-fun m!151959 () Bool)

(assert (=> b!162010 m!151959))

(declare-fun m!151961 () Bool)

(assert (=> b!162013 m!151961))

(declare-fun m!151963 () Bool)

(assert (=> b!162013 m!151963))

(declare-fun m!151965 () Bool)

(assert (=> b!162023 m!151965))

(assert (=> b!162023 m!151965))

(declare-fun m!151967 () Bool)

(assert (=> b!162023 m!151967))

(declare-fun m!151969 () Bool)

(assert (=> b!162016 m!151969))

(declare-fun m!151971 () Bool)

(assert (=> b!162019 m!151971))

(declare-fun m!151973 () Bool)

(assert (=> b!162028 m!151973))

(check-sat (not b!162023) (not b!162020) (not b!162021) b_and!10125 (not b!162013) (not b!162014) (not b!162009) (not start!17478) b_and!10129 b_and!10121 (not b!162032) (not b!162017) (not b_next!6141) (not b!162011) (not b!162008) b_and!10123 (not b_next!6139) (not b_next!6143) (not b!162007) b_and!10127 (not b!162026) (not b!162010) (not b_next!6145) (not b!162012) (not b!162024) (not b!162018) b_and!10131 (not b!162019) (not b_next!6137) (not b!162015) (not b!162028) (not b!162016) (not b_next!6147))
(check-sat (not b_next!6141) b_and!10125 (not b_next!6143) b_and!10127 (not b_next!6145) b_and!10129 b_and!10131 (not b_next!6137) (not b_next!6147) b_and!10121 b_and!10123 (not b_next!6139))
