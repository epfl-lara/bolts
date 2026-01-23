; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297650 () Bool)

(assert start!297650)

(declare-fun b!3177862 () Bool)

(declare-fun b_free!83521 () Bool)

(declare-fun b_next!84225 () Bool)

(assert (=> b!3177862 (= b_free!83521 (not b_next!84225))))

(declare-fun tp!1005088 () Bool)

(declare-fun b_and!209815 () Bool)

(assert (=> b!3177862 (= tp!1005088 b_and!209815)))

(declare-fun b_free!83523 () Bool)

(declare-fun b_next!84227 () Bool)

(assert (=> b!3177862 (= b_free!83523 (not b_next!84227))))

(declare-fun tp!1005085 () Bool)

(declare-fun b_and!209817 () Bool)

(assert (=> b!3177862 (= tp!1005085 b_and!209817)))

(declare-fun b!3177872 () Bool)

(declare-fun b_free!83525 () Bool)

(declare-fun b_next!84229 () Bool)

(assert (=> b!3177872 (= b_free!83525 (not b_next!84229))))

(declare-fun tp!1005092 () Bool)

(declare-fun b_and!209819 () Bool)

(assert (=> b!3177872 (= tp!1005092 b_and!209819)))

(declare-fun b_free!83527 () Bool)

(declare-fun b_next!84231 () Bool)

(assert (=> b!3177872 (= b_free!83527 (not b_next!84231))))

(declare-fun tp!1005084 () Bool)

(declare-fun b_and!209821 () Bool)

(assert (=> b!3177872 (= tp!1005084 b_and!209821)))

(declare-fun b!3177864 () Bool)

(declare-fun b_free!83529 () Bool)

(declare-fun b_next!84233 () Bool)

(assert (=> b!3177864 (= b_free!83529 (not b_next!84233))))

(declare-fun tp!1005086 () Bool)

(declare-fun b_and!209823 () Bool)

(assert (=> b!3177864 (= tp!1005086 b_and!209823)))

(declare-fun b_free!83531 () Bool)

(declare-fun b_next!84235 () Bool)

(assert (=> b!3177864 (= b_free!83531 (not b_next!84235))))

(declare-fun tp!1005091 () Bool)

(declare-fun b_and!209825 () Bool)

(assert (=> b!3177864 (= tp!1005091 b_and!209825)))

(declare-fun b!3177856 () Bool)

(declare-fun e!1979397 () Bool)

(declare-fun e!1979401 () Bool)

(declare-fun tp!1005090 () Bool)

(assert (=> b!3177856 (= e!1979397 (and e!1979401 tp!1005090))))

(declare-fun b!3177857 () Bool)

(declare-fun res!1291106 () Bool)

(declare-fun e!1979398 () Bool)

(assert (=> b!3177857 (=> (not res!1291106) (not e!1979398))))

(declare-datatypes ((C!19892 0))(
  ( (C!19893 (val!11994 Int)) )
))
(declare-datatypes ((Regex!9853 0))(
  ( (ElementMatch!9853 (c!534000 C!19892)) (Concat!15177 (regOne!20218 Regex!9853) (regTwo!20218 Regex!9853)) (EmptyExpr!9853) (Star!9853 (reg!10182 Regex!9853)) (EmptyLang!9853) (Union!9853 (regOne!20219 Regex!9853) (regTwo!20219 Regex!9853)) )
))
(declare-datatypes ((List!35752 0))(
  ( (Nil!35628) (Cons!35628 (h!41048 (_ BitVec 16)) (t!234855 List!35752)) )
))
(declare-datatypes ((TokenValue!5324 0))(
  ( (FloatLiteralValue!10648 (text!37713 List!35752)) (TokenValueExt!5323 (__x!22865 Int)) (Broken!26620 (value!165613 List!35752)) (Object!5447) (End!5324) (Def!5324) (Underscore!5324) (Match!5324) (Else!5324) (Error!5324) (Case!5324) (If!5324) (Extends!5324) (Abstract!5324) (Class!5324) (Val!5324) (DelimiterValue!10648 (del!5384 List!35752)) (KeywordValue!5330 (value!165614 List!35752)) (CommentValue!10648 (value!165615 List!35752)) (WhitespaceValue!10648 (value!165616 List!35752)) (IndentationValue!5324 (value!165617 List!35752)) (String!39953) (Int32!5324) (Broken!26621 (value!165618 List!35752)) (Boolean!5325) (Unit!50081) (OperatorValue!5327 (op!5384 List!35752)) (IdentifierValue!10648 (value!165619 List!35752)) (IdentifierValue!10649 (value!165620 List!35752)) (WhitespaceValue!10649 (value!165621 List!35752)) (True!10648) (False!10648) (Broken!26622 (value!165622 List!35752)) (Broken!26623 (value!165623 List!35752)) (True!10649) (RightBrace!5324) (RightBracket!5324) (Colon!5324) (Null!5324) (Comma!5324) (LeftBracket!5324) (False!10649) (LeftBrace!5324) (ImaginaryLiteralValue!5324 (text!37714 List!35752)) (StringLiteralValue!15972 (value!165624 List!35752)) (EOFValue!5324 (value!165625 List!35752)) (IdentValue!5324 (value!165626 List!35752)) (DelimiterValue!10649 (value!165627 List!35752)) (DedentValue!5324 (value!165628 List!35752)) (NewLineValue!5324 (value!165629 List!35752)) (IntegerValue!15972 (value!165630 (_ BitVec 32)) (text!37715 List!35752)) (IntegerValue!15973 (value!165631 Int) (text!37716 List!35752)) (Times!5324) (Or!5324) (Equal!5324) (Minus!5324) (Broken!26624 (value!165632 List!35752)) (And!5324) (Div!5324) (LessEqual!5324) (Mod!5324) (Concat!15178) (Not!5324) (Plus!5324) (SpaceValue!5324 (value!165633 List!35752)) (IntegerValue!15974 (value!165634 Int) (text!37717 List!35752)) (StringLiteralValue!15973 (text!37718 List!35752)) (FloatLiteralValue!10649 (text!37719 List!35752)) (BytesLiteralValue!5324 (value!165635 List!35752)) (CommentValue!10649 (value!165636 List!35752)) (StringLiteralValue!15974 (value!165637 List!35752)) (ErrorTokenValue!5324 (msg!5385 List!35752)) )
))
(declare-datatypes ((List!35753 0))(
  ( (Nil!35629) (Cons!35629 (h!41049 C!19892) (t!234856 List!35753)) )
))
(declare-datatypes ((IArray!21131 0))(
  ( (IArray!21132 (innerList!10623 List!35753)) )
))
(declare-datatypes ((Conc!10563 0))(
  ( (Node!10563 (left!27720 Conc!10563) (right!28050 Conc!10563) (csize!21356 Int) (cheight!10774 Int)) (Leaf!16721 (xs!13681 IArray!21131) (csize!21357 Int)) (Empty!10563) )
))
(declare-datatypes ((BalanceConc!20740 0))(
  ( (BalanceConc!20741 (c!534001 Conc!10563)) )
))
(declare-datatypes ((String!39954 0))(
  ( (String!39955 (value!165638 String)) )
))
(declare-datatypes ((TokenValueInjection!10076 0))(
  ( (TokenValueInjection!10077 (toValue!7154 Int) (toChars!7013 Int)) )
))
(declare-datatypes ((Rule!9988 0))(
  ( (Rule!9989 (regex!5094 Regex!9853) (tag!5598 String!39954) (isSeparator!5094 Bool) (transformation!5094 TokenValueInjection!10076)) )
))
(declare-datatypes ((List!35754 0))(
  ( (Nil!35630) (Cons!35630 (h!41050 Rule!9988) (t!234857 List!35754)) )
))
(declare-fun rules!2135 () List!35754)

(declare-fun isEmpty!19775 (List!35754) Bool)

(assert (=> b!3177857 (= res!1291106 (not (isEmpty!19775 rules!2135)))))

(declare-fun res!1291101 () Bool)

(assert (=> start!297650 (=> (not res!1291101) (not e!1979398))))

(declare-datatypes ((LexerInterface!4683 0))(
  ( (LexerInterfaceExt!4680 (__x!22866 Int)) (Lexer!4681) )
))
(declare-fun thiss!18206 () LexerInterface!4683)

(get-info :version)

(assert (=> start!297650 (= res!1291101 ((_ is Lexer!4681) thiss!18206))))

(assert (=> start!297650 e!1979398))

(assert (=> start!297650 true))

(assert (=> start!297650 e!1979397))

(declare-fun e!1979404 () Bool)

(assert (=> start!297650 e!1979404))

(declare-datatypes ((Token!9554 0))(
  ( (Token!9555 (value!165639 TokenValue!5324) (rule!7504 Rule!9988) (size!26923 Int) (originalCharacters!5808 List!35753)) )
))
(declare-fun separatorToken!241 () Token!9554)

(declare-fun e!1979406 () Bool)

(declare-fun inv!48488 (Token!9554) Bool)

(assert (=> start!297650 (and (inv!48488 separatorToken!241) e!1979406)))

(declare-fun b!3177858 () Bool)

(declare-fun e!1979405 () Bool)

(declare-fun tp!1005094 () Bool)

(declare-fun inv!48485 (String!39954) Bool)

(declare-fun inv!48489 (TokenValueInjection!10076) Bool)

(assert (=> b!3177858 (= e!1979401 (and tp!1005094 (inv!48485 (tag!5598 (h!41050 rules!2135))) (inv!48489 (transformation!5094 (h!41050 rules!2135))) e!1979405))))

(declare-fun b!3177859 () Bool)

(declare-fun res!1291104 () Bool)

(assert (=> b!3177859 (=> (not res!1291104) (not e!1979398))))

(declare-fun rulesProduceIndividualToken!2175 (LexerInterface!4683 List!35754 Token!9554) Bool)

(assert (=> b!3177859 (= res!1291104 (rulesProduceIndividualToken!2175 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1005089 () Bool)

(declare-datatypes ((List!35755 0))(
  ( (Nil!35631) (Cons!35631 (h!41051 Token!9554) (t!234858 List!35755)) )
))
(declare-fun tokens!494 () List!35755)

(declare-fun e!1979407 () Bool)

(declare-fun b!3177860 () Bool)

(assert (=> b!3177860 (= e!1979404 (and (inv!48488 (h!41051 tokens!494)) e!1979407 tp!1005089))))

(declare-fun b!3177861 () Bool)

(declare-fun res!1291102 () Bool)

(assert (=> b!3177861 (=> (not res!1291102) (not e!1979398))))

(declare-fun sepAndNonSepRulesDisjointChars!1288 (List!35754 List!35754) Bool)

(assert (=> b!3177861 (= res!1291102 (sepAndNonSepRulesDisjointChars!1288 rules!2135 rules!2135))))

(assert (=> b!3177862 (= e!1979405 (and tp!1005088 tp!1005085))))

(declare-fun b!3177863 () Bool)

(assert (=> b!3177863 (= e!1979398 false)))

(declare-datatypes ((IArray!21133 0))(
  ( (IArray!21134 (innerList!10624 List!35755)) )
))
(declare-datatypes ((Conc!10564 0))(
  ( (Node!10564 (left!27721 Conc!10564) (right!28051 Conc!10564) (csize!21358 Int) (cheight!10775 Int)) (Leaf!16722 (xs!13682 IArray!21133) (csize!21359 Int)) (Empty!10564) )
))
(declare-datatypes ((BalanceConc!20742 0))(
  ( (BalanceConc!20743 (c!534002 Conc!10564)) )
))
(declare-fun lt!1068152 () BalanceConc!20742)

(declare-fun singletonSeq!2190 (Token!9554) BalanceConc!20742)

(assert (=> b!3177863 (= lt!1068152 (singletonSeq!2190 (h!41051 tokens!494)))))

(declare-fun e!1979400 () Bool)

(assert (=> b!3177864 (= e!1979400 (and tp!1005086 tp!1005091))))

(declare-fun b!3177865 () Bool)

(declare-fun res!1291109 () Bool)

(assert (=> b!3177865 (=> (not res!1291109) (not e!1979398))))

(declare-fun lambda!116269 () Int)

(declare-fun forall!7202 (List!35755 Int) Bool)

(assert (=> b!3177865 (= res!1291109 (forall!7202 tokens!494 lambda!116269))))

(declare-fun b!3177866 () Bool)

(declare-fun e!1979399 () Bool)

(declare-fun tp!1005093 () Bool)

(declare-fun e!1979393 () Bool)

(assert (=> b!3177866 (= e!1979393 (and tp!1005093 (inv!48485 (tag!5598 (rule!7504 (h!41051 tokens!494)))) (inv!48489 (transformation!5094 (rule!7504 (h!41051 tokens!494)))) e!1979399))))

(declare-fun b!3177867 () Bool)

(declare-fun res!1291108 () Bool)

(assert (=> b!3177867 (=> (not res!1291108) (not e!1979398))))

(declare-fun rulesInvariant!4080 (LexerInterface!4683 List!35754) Bool)

(assert (=> b!3177867 (= res!1291108 (rulesInvariant!4080 thiss!18206 rules!2135))))

(declare-fun b!3177868 () Bool)

(declare-fun res!1291107 () Bool)

(assert (=> b!3177868 (=> (not res!1291107) (not e!1979398))))

(declare-fun rulesProduceEachTokenIndividually!1134 (LexerInterface!4683 List!35754 BalanceConc!20742) Bool)

(declare-fun seqFromList!3274 (List!35755) BalanceConc!20742)

(assert (=> b!3177868 (= res!1291107 (rulesProduceEachTokenIndividually!1134 thiss!18206 rules!2135 (seqFromList!3274 tokens!494)))))

(declare-fun b!3177869 () Bool)

(declare-fun tp!1005087 () Bool)

(declare-fun inv!21 (TokenValue!5324) Bool)

(assert (=> b!3177869 (= e!1979407 (and (inv!21 (value!165639 (h!41051 tokens!494))) e!1979393 tp!1005087))))

(declare-fun b!3177870 () Bool)

(declare-fun res!1291103 () Bool)

(assert (=> b!3177870 (=> (not res!1291103) (not e!1979398))))

(assert (=> b!3177870 (= res!1291103 (isSeparator!5094 (rule!7504 separatorToken!241)))))

(declare-fun b!3177871 () Bool)

(declare-fun tp!1005082 () Bool)

(declare-fun e!1979395 () Bool)

(assert (=> b!3177871 (= e!1979406 (and (inv!21 (value!165639 separatorToken!241)) e!1979395 tp!1005082))))

(assert (=> b!3177872 (= e!1979399 (and tp!1005092 tp!1005084))))

(declare-fun b!3177873 () Bool)

(declare-fun res!1291105 () Bool)

(assert (=> b!3177873 (=> (not res!1291105) (not e!1979398))))

(assert (=> b!3177873 (= res!1291105 (and (not ((_ is Nil!35631) tokens!494)) ((_ is Nil!35631) (t!234858 tokens!494))))))

(declare-fun b!3177874 () Bool)

(declare-fun tp!1005083 () Bool)

(assert (=> b!3177874 (= e!1979395 (and tp!1005083 (inv!48485 (tag!5598 (rule!7504 separatorToken!241))) (inv!48489 (transformation!5094 (rule!7504 separatorToken!241))) e!1979400))))

(assert (= (and start!297650 res!1291101) b!3177857))

(assert (= (and b!3177857 res!1291106) b!3177867))

(assert (= (and b!3177867 res!1291108) b!3177868))

(assert (= (and b!3177868 res!1291107) b!3177859))

(assert (= (and b!3177859 res!1291104) b!3177870))

(assert (= (and b!3177870 res!1291103) b!3177865))

(assert (= (and b!3177865 res!1291109) b!3177861))

(assert (= (and b!3177861 res!1291102) b!3177873))

(assert (= (and b!3177873 res!1291105) b!3177863))

(assert (= b!3177858 b!3177862))

(assert (= b!3177856 b!3177858))

(assert (= (and start!297650 ((_ is Cons!35630) rules!2135)) b!3177856))

(assert (= b!3177866 b!3177872))

(assert (= b!3177869 b!3177866))

(assert (= b!3177860 b!3177869))

(assert (= (and start!297650 ((_ is Cons!35631) tokens!494)) b!3177860))

(assert (= b!3177874 b!3177864))

(assert (= b!3177871 b!3177874))

(assert (= start!297650 b!3177871))

(declare-fun m!3434443 () Bool)

(assert (=> b!3177859 m!3434443))

(declare-fun m!3434445 () Bool)

(assert (=> b!3177868 m!3434445))

(assert (=> b!3177868 m!3434445))

(declare-fun m!3434447 () Bool)

(assert (=> b!3177868 m!3434447))

(declare-fun m!3434449 () Bool)

(assert (=> b!3177865 m!3434449))

(declare-fun m!3434451 () Bool)

(assert (=> b!3177874 m!3434451))

(declare-fun m!3434453 () Bool)

(assert (=> b!3177874 m!3434453))

(declare-fun m!3434455 () Bool)

(assert (=> b!3177867 m!3434455))

(declare-fun m!3434457 () Bool)

(assert (=> b!3177861 m!3434457))

(declare-fun m!3434459 () Bool)

(assert (=> b!3177857 m!3434459))

(declare-fun m!3434461 () Bool)

(assert (=> b!3177863 m!3434461))

(declare-fun m!3434463 () Bool)

(assert (=> start!297650 m!3434463))

(declare-fun m!3434465 () Bool)

(assert (=> b!3177866 m!3434465))

(declare-fun m!3434467 () Bool)

(assert (=> b!3177866 m!3434467))

(declare-fun m!3434469 () Bool)

(assert (=> b!3177871 m!3434469))

(declare-fun m!3434471 () Bool)

(assert (=> b!3177858 m!3434471))

(declare-fun m!3434473 () Bool)

(assert (=> b!3177858 m!3434473))

(declare-fun m!3434475 () Bool)

(assert (=> b!3177869 m!3434475))

(declare-fun m!3434477 () Bool)

(assert (=> b!3177860 m!3434477))

(check-sat (not b!3177861) b_and!209821 (not b!3177860) (not b!3177866) (not b!3177871) (not b_next!84229) (not b_next!84227) (not b!3177859) b_and!209817 b_and!209815 (not b_next!84231) (not b_next!84235) b_and!209819 (not b!3177869) (not b_next!84233) (not b!3177874) b_and!209825 (not b!3177858) (not b!3177868) (not b!3177863) (not b_next!84225) (not b!3177865) (not b!3177857) (not b!3177867) (not b!3177856) b_and!209823 (not start!297650))
(check-sat b_and!209821 (not b_next!84233) (not b_next!84229) b_and!209825 (not b_next!84227) (not b_next!84225) b_and!209817 b_and!209815 b_and!209823 (not b_next!84231) (not b_next!84235) b_and!209819)
