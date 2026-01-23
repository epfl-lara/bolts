; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297646 () Bool)

(assert start!297646)

(declare-fun b!3177743 () Bool)

(declare-fun b_free!83497 () Bool)

(declare-fun b_next!84201 () Bool)

(assert (=> b!3177743 (= b_free!83497 (not b_next!84201))))

(declare-fun tp!1005011 () Bool)

(declare-fun b_and!209791 () Bool)

(assert (=> b!3177743 (= tp!1005011 b_and!209791)))

(declare-fun b_free!83499 () Bool)

(declare-fun b_next!84203 () Bool)

(assert (=> b!3177743 (= b_free!83499 (not b_next!84203))))

(declare-fun tp!1005005 () Bool)

(declare-fun b_and!209793 () Bool)

(assert (=> b!3177743 (= tp!1005005 b_and!209793)))

(declare-fun b!3177756 () Bool)

(declare-fun b_free!83501 () Bool)

(declare-fun b_next!84205 () Bool)

(assert (=> b!3177756 (= b_free!83501 (not b_next!84205))))

(declare-fun tp!1005016 () Bool)

(declare-fun b_and!209795 () Bool)

(assert (=> b!3177756 (= tp!1005016 b_and!209795)))

(declare-fun b_free!83503 () Bool)

(declare-fun b_next!84207 () Bool)

(assert (=> b!3177756 (= b_free!83503 (not b_next!84207))))

(declare-fun tp!1005013 () Bool)

(declare-fun b_and!209797 () Bool)

(assert (=> b!3177756 (= tp!1005013 b_and!209797)))

(declare-fun b!3177751 () Bool)

(declare-fun b_free!83505 () Bool)

(declare-fun b_next!84209 () Bool)

(assert (=> b!3177751 (= b_free!83505 (not b_next!84209))))

(declare-fun tp!1005004 () Bool)

(declare-fun b_and!209799 () Bool)

(assert (=> b!3177751 (= tp!1005004 b_and!209799)))

(declare-fun b_free!83507 () Bool)

(declare-fun b_next!84211 () Bool)

(assert (=> b!3177751 (= b_free!83507 (not b_next!84211))))

(declare-fun tp!1005008 () Bool)

(declare-fun b_and!209801 () Bool)

(assert (=> b!3177751 (= tp!1005008 b_and!209801)))

(declare-fun b!3177742 () Bool)

(declare-fun res!1291055 () Bool)

(declare-fun e!1979301 () Bool)

(assert (=> b!3177742 (=> (not res!1291055) (not e!1979301))))

(declare-datatypes ((List!35744 0))(
  ( (Nil!35620) (Cons!35620 (h!41040 (_ BitVec 16)) (t!234847 List!35744)) )
))
(declare-datatypes ((TokenValue!5322 0))(
  ( (FloatLiteralValue!10644 (text!37699 List!35744)) (TokenValueExt!5321 (__x!22861 Int)) (Broken!26610 (value!165556 List!35744)) (Object!5445) (End!5322) (Def!5322) (Underscore!5322) (Match!5322) (Else!5322) (Error!5322) (Case!5322) (If!5322) (Extends!5322) (Abstract!5322) (Class!5322) (Val!5322) (DelimiterValue!10644 (del!5382 List!35744)) (KeywordValue!5328 (value!165557 List!35744)) (CommentValue!10644 (value!165558 List!35744)) (WhitespaceValue!10644 (value!165559 List!35744)) (IndentationValue!5322 (value!165560 List!35744)) (String!39943) (Int32!5322) (Broken!26611 (value!165561 List!35744)) (Boolean!5323) (Unit!50079) (OperatorValue!5325 (op!5382 List!35744)) (IdentifierValue!10644 (value!165562 List!35744)) (IdentifierValue!10645 (value!165563 List!35744)) (WhitespaceValue!10645 (value!165564 List!35744)) (True!10644) (False!10644) (Broken!26612 (value!165565 List!35744)) (Broken!26613 (value!165566 List!35744)) (True!10645) (RightBrace!5322) (RightBracket!5322) (Colon!5322) (Null!5322) (Comma!5322) (LeftBracket!5322) (False!10645) (LeftBrace!5322) (ImaginaryLiteralValue!5322 (text!37700 List!35744)) (StringLiteralValue!15966 (value!165567 List!35744)) (EOFValue!5322 (value!165568 List!35744)) (IdentValue!5322 (value!165569 List!35744)) (DelimiterValue!10645 (value!165570 List!35744)) (DedentValue!5322 (value!165571 List!35744)) (NewLineValue!5322 (value!165572 List!35744)) (IntegerValue!15966 (value!165573 (_ BitVec 32)) (text!37701 List!35744)) (IntegerValue!15967 (value!165574 Int) (text!37702 List!35744)) (Times!5322) (Or!5322) (Equal!5322) (Minus!5322) (Broken!26614 (value!165575 List!35744)) (And!5322) (Div!5322) (LessEqual!5322) (Mod!5322) (Concat!15173) (Not!5322) (Plus!5322) (SpaceValue!5322 (value!165576 List!35744)) (IntegerValue!15968 (value!165577 Int) (text!37703 List!35744)) (StringLiteralValue!15967 (text!37704 List!35744)) (FloatLiteralValue!10645 (text!37705 List!35744)) (BytesLiteralValue!5322 (value!165578 List!35744)) (CommentValue!10645 (value!165579 List!35744)) (StringLiteralValue!15968 (value!165580 List!35744)) (ErrorTokenValue!5322 (msg!5383 List!35744)) )
))
(declare-datatypes ((C!19888 0))(
  ( (C!19889 (val!11992 Int)) )
))
(declare-datatypes ((List!35745 0))(
  ( (Nil!35621) (Cons!35621 (h!41041 C!19888) (t!234848 List!35745)) )
))
(declare-datatypes ((IArray!21123 0))(
  ( (IArray!21124 (innerList!10619 List!35745)) )
))
(declare-datatypes ((Conc!10559 0))(
  ( (Node!10559 (left!27715 Conc!10559) (right!28045 Conc!10559) (csize!21348 Int) (cheight!10770 Int)) (Leaf!16716 (xs!13677 IArray!21123) (csize!21349 Int)) (Empty!10559) )
))
(declare-datatypes ((BalanceConc!20732 0))(
  ( (BalanceConc!20733 (c!533992 Conc!10559)) )
))
(declare-datatypes ((Regex!9851 0))(
  ( (ElementMatch!9851 (c!533993 C!19888)) (Concat!15174 (regOne!20214 Regex!9851) (regTwo!20214 Regex!9851)) (EmptyExpr!9851) (Star!9851 (reg!10180 Regex!9851)) (EmptyLang!9851) (Union!9851 (regOne!20215 Regex!9851) (regTwo!20215 Regex!9851)) )
))
(declare-datatypes ((String!39944 0))(
  ( (String!39945 (value!165581 String)) )
))
(declare-datatypes ((TokenValueInjection!10072 0))(
  ( (TokenValueInjection!10073 (toValue!7152 Int) (toChars!7011 Int)) )
))
(declare-datatypes ((Rule!9984 0))(
  ( (Rule!9985 (regex!5092 Regex!9851) (tag!5596 String!39944) (isSeparator!5092 Bool) (transformation!5092 TokenValueInjection!10072)) )
))
(declare-datatypes ((Token!9550 0))(
  ( (Token!9551 (value!165582 TokenValue!5322) (rule!7502 Rule!9984) (size!26921 Int) (originalCharacters!5806 List!35745)) )
))
(declare-fun separatorToken!241 () Token!9550)

(assert (=> b!3177742 (= res!1291055 (isSeparator!5092 (rule!7502 separatorToken!241)))))

(declare-fun e!1979300 () Bool)

(assert (=> b!3177743 (= e!1979300 (and tp!1005011 tp!1005005))))

(declare-fun tp!1005015 () Bool)

(declare-fun b!3177744 () Bool)

(declare-datatypes ((List!35746 0))(
  ( (Nil!35622) (Cons!35622 (h!41042 Rule!9984) (t!234849 List!35746)) )
))
(declare-fun rules!2135 () List!35746)

(declare-fun e!1979305 () Bool)

(declare-fun inv!48478 (String!39944) Bool)

(declare-fun inv!48481 (TokenValueInjection!10072) Bool)

(assert (=> b!3177744 (= e!1979305 (and tp!1005015 (inv!48478 (tag!5596 (h!41042 rules!2135))) (inv!48481 (transformation!5092 (h!41042 rules!2135))) e!1979300))))

(declare-fun res!1291051 () Bool)

(declare-fun e!1979303 () Bool)

(assert (=> start!297646 (=> (not res!1291051) (not e!1979303))))

(declare-datatypes ((LexerInterface!4681 0))(
  ( (LexerInterfaceExt!4678 (__x!22862 Int)) (Lexer!4679) )
))
(declare-fun thiss!18206 () LexerInterface!4681)

(get-info :version)

(assert (=> start!297646 (= res!1291051 ((_ is Lexer!4679) thiss!18206))))

(assert (=> start!297646 e!1979303))

(assert (=> start!297646 true))

(declare-fun e!1979310 () Bool)

(assert (=> start!297646 e!1979310))

(declare-fun e!1979302 () Bool)

(declare-fun inv!48482 (Token!9550) Bool)

(assert (=> start!297646 (and (inv!48482 separatorToken!241) e!1979302)))

(declare-fun e!1979297 () Bool)

(assert (=> start!297646 e!1979297))

(declare-fun b!3177745 () Bool)

(declare-fun tp!1005007 () Bool)

(declare-fun e!1979307 () Bool)

(declare-fun e!1979296 () Bool)

(assert (=> b!3177745 (= e!1979296 (and tp!1005007 (inv!48478 (tag!5596 (rule!7502 separatorToken!241))) (inv!48481 (transformation!5092 (rule!7502 separatorToken!241))) e!1979307))))

(declare-fun b!3177746 () Bool)

(declare-fun tp!1005014 () Bool)

(assert (=> b!3177746 (= e!1979310 (and e!1979305 tp!1005014))))

(declare-fun b!3177747 () Bool)

(declare-fun res!1291052 () Bool)

(assert (=> b!3177747 (=> (not res!1291052) (not e!1979301))))

(declare-datatypes ((List!35747 0))(
  ( (Nil!35623) (Cons!35623 (h!41043 Token!9550) (t!234850 List!35747)) )
))
(declare-fun tokens!494 () List!35747)

(assert (=> b!3177747 (= res!1291052 ((_ is Nil!35623) tokens!494))))

(declare-fun tp!1005010 () Bool)

(declare-fun b!3177748 () Bool)

(declare-fun e!1979309 () Bool)

(declare-fun e!1979304 () Bool)

(declare-fun inv!21 (TokenValue!5322) Bool)

(assert (=> b!3177748 (= e!1979309 (and (inv!21 (value!165582 (h!41043 tokens!494))) e!1979304 tp!1005010))))

(declare-fun b!3177749 () Bool)

(declare-fun tp!1005009 () Bool)

(declare-fun e!1979311 () Bool)

(assert (=> b!3177749 (= e!1979304 (and tp!1005009 (inv!48478 (tag!5596 (rule!7502 (h!41043 tokens!494)))) (inv!48481 (transformation!5092 (rule!7502 (h!41043 tokens!494)))) e!1979311))))

(declare-fun b!3177750 () Bool)

(declare-fun res!1291050 () Bool)

(assert (=> b!3177750 (=> (not res!1291050) (not e!1979301))))

(declare-fun rulesProduceIndividualToken!2173 (LexerInterface!4681 List!35746 Token!9550) Bool)

(assert (=> b!3177750 (= res!1291050 (rulesProduceIndividualToken!2173 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3177751 (= e!1979311 (and tp!1005004 tp!1005008))))

(declare-fun b!3177752 () Bool)

(declare-fun res!1291054 () Bool)

(assert (=> b!3177752 (=> (not res!1291054) (not e!1979303))))

(declare-fun isEmpty!19773 (List!35746) Bool)

(assert (=> b!3177752 (= res!1291054 (not (isEmpty!19773 rules!2135)))))

(declare-fun b!3177753 () Bool)

(declare-fun res!1291047 () Bool)

(assert (=> b!3177753 (=> (not res!1291047) (not e!1979303))))

(declare-fun rulesInvariant!4078 (LexerInterface!4681 List!35746) Bool)

(assert (=> b!3177753 (= res!1291047 (rulesInvariant!4078 thiss!18206 rules!2135))))

(declare-fun b!3177754 () Bool)

(assert (=> b!3177754 (= e!1979301 false)))

(declare-fun lt!1068145 () BalanceConc!20732)

(declare-datatypes ((IArray!21125 0))(
  ( (IArray!21126 (innerList!10620 List!35747)) )
))
(declare-datatypes ((Conc!10560 0))(
  ( (Node!10560 (left!27716 Conc!10560) (right!28046 Conc!10560) (csize!21350 Int) (cheight!10771 Int)) (Leaf!16717 (xs!13678 IArray!21125) (csize!21351 Int)) (Empty!10560) )
))
(declare-datatypes ((BalanceConc!20734 0))(
  ( (BalanceConc!20735 (c!533994 Conc!10560)) )
))
(declare-fun lt!1068146 () BalanceConc!20734)

(declare-fun printWithSeparatorToken!4 (LexerInterface!4681 BalanceConc!20734 Token!9550) BalanceConc!20732)

(assert (=> b!3177754 (= lt!1068145 (printWithSeparatorToken!4 thiss!18206 lt!1068146 separatorToken!241))))

(declare-fun b!3177755 () Bool)

(assert (=> b!3177755 (= e!1979303 e!1979301)))

(declare-fun res!1291048 () Bool)

(assert (=> b!3177755 (=> (not res!1291048) (not e!1979301))))

(declare-fun rulesProduceEachTokenIndividually!1132 (LexerInterface!4681 List!35746 BalanceConc!20734) Bool)

(assert (=> b!3177755 (= res!1291048 (rulesProduceEachTokenIndividually!1132 thiss!18206 rules!2135 lt!1068146))))

(declare-fun seqFromList!3272 (List!35747) BalanceConc!20734)

(assert (=> b!3177755 (= lt!1068146 (seqFromList!3272 tokens!494))))

(assert (=> b!3177756 (= e!1979307 (and tp!1005016 tp!1005013))))

(declare-fun b!3177757 () Bool)

(declare-fun res!1291049 () Bool)

(assert (=> b!3177757 (=> (not res!1291049) (not e!1979301))))

(declare-fun sepAndNonSepRulesDisjointChars!1286 (List!35746 List!35746) Bool)

(assert (=> b!3177757 (= res!1291049 (sepAndNonSepRulesDisjointChars!1286 rules!2135 rules!2135))))

(declare-fun b!3177758 () Bool)

(declare-fun tp!1005012 () Bool)

(assert (=> b!3177758 (= e!1979297 (and (inv!48482 (h!41043 tokens!494)) e!1979309 tp!1005012))))

(declare-fun tp!1005006 () Bool)

(declare-fun b!3177759 () Bool)

(assert (=> b!3177759 (= e!1979302 (and (inv!21 (value!165582 separatorToken!241)) e!1979296 tp!1005006))))

(declare-fun b!3177760 () Bool)

(declare-fun res!1291053 () Bool)

(assert (=> b!3177760 (=> (not res!1291053) (not e!1979301))))

(declare-fun lambda!116263 () Int)

(declare-fun forall!7200 (List!35747 Int) Bool)

(assert (=> b!3177760 (= res!1291053 (forall!7200 tokens!494 lambda!116263))))

(assert (= (and start!297646 res!1291051) b!3177752))

(assert (= (and b!3177752 res!1291054) b!3177753))

(assert (= (and b!3177753 res!1291047) b!3177755))

(assert (= (and b!3177755 res!1291048) b!3177750))

(assert (= (and b!3177750 res!1291050) b!3177742))

(assert (= (and b!3177742 res!1291055) b!3177760))

(assert (= (and b!3177760 res!1291053) b!3177757))

(assert (= (and b!3177757 res!1291049) b!3177747))

(assert (= (and b!3177747 res!1291052) b!3177754))

(assert (= b!3177744 b!3177743))

(assert (= b!3177746 b!3177744))

(assert (= (and start!297646 ((_ is Cons!35622) rules!2135)) b!3177746))

(assert (= b!3177745 b!3177756))

(assert (= b!3177759 b!3177745))

(assert (= start!297646 b!3177759))

(assert (= b!3177749 b!3177751))

(assert (= b!3177748 b!3177749))

(assert (= b!3177758 b!3177748))

(assert (= (and start!297646 ((_ is Cons!35623) tokens!494)) b!3177758))

(declare-fun m!3434371 () Bool)

(assert (=> b!3177750 m!3434371))

(declare-fun m!3434373 () Bool)

(assert (=> b!3177754 m!3434373))

(declare-fun m!3434375 () Bool)

(assert (=> b!3177748 m!3434375))

(declare-fun m!3434377 () Bool)

(assert (=> b!3177758 m!3434377))

(declare-fun m!3434379 () Bool)

(assert (=> b!3177745 m!3434379))

(declare-fun m!3434381 () Bool)

(assert (=> b!3177745 m!3434381))

(declare-fun m!3434383 () Bool)

(assert (=> b!3177749 m!3434383))

(declare-fun m!3434385 () Bool)

(assert (=> b!3177749 m!3434385))

(declare-fun m!3434387 () Bool)

(assert (=> b!3177755 m!3434387))

(declare-fun m!3434389 () Bool)

(assert (=> b!3177755 m!3434389))

(declare-fun m!3434391 () Bool)

(assert (=> b!3177757 m!3434391))

(declare-fun m!3434393 () Bool)

(assert (=> b!3177760 m!3434393))

(declare-fun m!3434395 () Bool)

(assert (=> b!3177759 m!3434395))

(declare-fun m!3434397 () Bool)

(assert (=> b!3177752 m!3434397))

(declare-fun m!3434399 () Bool)

(assert (=> start!297646 m!3434399))

(declare-fun m!3434401 () Bool)

(assert (=> b!3177744 m!3434401))

(declare-fun m!3434403 () Bool)

(assert (=> b!3177744 m!3434403))

(declare-fun m!3434405 () Bool)

(assert (=> b!3177753 m!3434405))

(check-sat (not b!3177752) (not b!3177759) (not b_next!84209) (not b!3177745) b_and!209793 (not b!3177754) (not b!3177760) (not b!3177744) (not b!3177758) (not b_next!84211) b_and!209799 (not b!3177748) (not b_next!84205) (not b_next!84203) b_and!209795 b_and!209791 (not b_next!84201) (not b!3177746) (not b!3177757) (not b!3177749) (not start!297646) (not b!3177750) b_and!209801 (not b_next!84207) b_and!209797 (not b!3177755) (not b!3177753))
(check-sat (not b_next!84201) (not b_next!84209) b_and!209793 b_and!209797 (not b_next!84211) (not b_next!84205) b_and!209799 (not b_next!84203) b_and!209795 b_and!209791 b_and!209801 (not b_next!84207))
