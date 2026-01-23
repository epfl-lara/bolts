; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351754 () Bool)

(assert start!351754)

(declare-fun b!3746759 () Bool)

(declare-fun b_free!99801 () Bool)

(declare-fun b_next!100505 () Bool)

(assert (=> b!3746759 (= b_free!99801 (not b_next!100505))))

(declare-fun tp!1143013 () Bool)

(declare-fun b_and!278035 () Bool)

(assert (=> b!3746759 (= tp!1143013 b_and!278035)))

(declare-fun b_free!99803 () Bool)

(declare-fun b_next!100507 () Bool)

(assert (=> b!3746759 (= b_free!99803 (not b_next!100507))))

(declare-fun tp!1143010 () Bool)

(declare-fun b_and!278037 () Bool)

(assert (=> b!3746759 (= tp!1143010 b_and!278037)))

(declare-fun b!3746755 () Bool)

(declare-fun b_free!99805 () Bool)

(declare-fun b_next!100509 () Bool)

(assert (=> b!3746755 (= b_free!99805 (not b_next!100509))))

(declare-fun tp!1143012 () Bool)

(declare-fun b_and!278039 () Bool)

(assert (=> b!3746755 (= tp!1143012 b_and!278039)))

(declare-fun b_free!99807 () Bool)

(declare-fun b_next!100511 () Bool)

(assert (=> b!3746755 (= b_free!99807 (not b_next!100511))))

(declare-fun tp!1143005 () Bool)

(declare-fun b_and!278041 () Bool)

(assert (=> b!3746755 (= tp!1143005 b_and!278041)))

(declare-fun b!3746753 () Bool)

(declare-fun b_free!99809 () Bool)

(declare-fun b_next!100513 () Bool)

(assert (=> b!3746753 (= b_free!99809 (not b_next!100513))))

(declare-fun tp!1143009 () Bool)

(declare-fun b_and!278043 () Bool)

(assert (=> b!3746753 (= tp!1143009 b_and!278043)))

(declare-fun b_free!99811 () Bool)

(declare-fun b_next!100515 () Bool)

(assert (=> b!3746753 (= b_free!99811 (not b_next!100515))))

(declare-fun tp!1143006 () Bool)

(declare-fun b_and!278045 () Bool)

(assert (=> b!3746753 (= tp!1143006 b_and!278045)))

(declare-fun b!3746751 () Bool)

(declare-fun e!2316866 () Bool)

(declare-fun e!2316864 () Bool)

(declare-fun tp!1143011 () Bool)

(assert (=> b!3746751 (= e!2316866 (and e!2316864 tp!1143011))))

(declare-fun b!3746752 () Bool)

(declare-fun res!1518686 () Bool)

(declare-fun e!2316859 () Bool)

(assert (=> b!3746752 (=> (not res!1518686) (not e!2316859))))

(declare-datatypes ((List!39950 0))(
  ( (Nil!39826) (Cons!39826 (h!45246 (_ BitVec 16)) (t!302633 List!39950)) )
))
(declare-datatypes ((TokenValue!6306 0))(
  ( (FloatLiteralValue!12612 (text!44587 List!39950)) (TokenValueExt!6305 (__x!24829 Int)) (Broken!31530 (value!193722 List!39950)) (Object!6429) (End!6306) (Def!6306) (Underscore!6306) (Match!6306) (Else!6306) (Error!6306) (Case!6306) (If!6306) (Extends!6306) (Abstract!6306) (Class!6306) (Val!6306) (DelimiterValue!12612 (del!6366 List!39950)) (KeywordValue!6312 (value!193723 List!39950)) (CommentValue!12612 (value!193724 List!39950)) (WhitespaceValue!12612 (value!193725 List!39950)) (IndentationValue!6306 (value!193726 List!39950)) (String!45155) (Int32!6306) (Broken!31531 (value!193727 List!39950)) (Boolean!6307) (Unit!57657) (OperatorValue!6309 (op!6366 List!39950)) (IdentifierValue!12612 (value!193728 List!39950)) (IdentifierValue!12613 (value!193729 List!39950)) (WhitespaceValue!12613 (value!193730 List!39950)) (True!12612) (False!12612) (Broken!31532 (value!193731 List!39950)) (Broken!31533 (value!193732 List!39950)) (True!12613) (RightBrace!6306) (RightBracket!6306) (Colon!6306) (Null!6306) (Comma!6306) (LeftBracket!6306) (False!12613) (LeftBrace!6306) (ImaginaryLiteralValue!6306 (text!44588 List!39950)) (StringLiteralValue!18918 (value!193733 List!39950)) (EOFValue!6306 (value!193734 List!39950)) (IdentValue!6306 (value!193735 List!39950)) (DelimiterValue!12613 (value!193736 List!39950)) (DedentValue!6306 (value!193737 List!39950)) (NewLineValue!6306 (value!193738 List!39950)) (IntegerValue!18918 (value!193739 (_ BitVec 32)) (text!44589 List!39950)) (IntegerValue!18919 (value!193740 Int) (text!44590 List!39950)) (Times!6306) (Or!6306) (Equal!6306) (Minus!6306) (Broken!31534 (value!193741 List!39950)) (And!6306) (Div!6306) (LessEqual!6306) (Mod!6306) (Concat!17287) (Not!6306) (Plus!6306) (SpaceValue!6306 (value!193742 List!39950)) (IntegerValue!18920 (value!193743 Int) (text!44591 List!39950)) (StringLiteralValue!18919 (text!44592 List!39950)) (FloatLiteralValue!12613 (text!44593 List!39950)) (BytesLiteralValue!6306 (value!193744 List!39950)) (CommentValue!12613 (value!193745 List!39950)) (StringLiteralValue!18920 (value!193746 List!39950)) (ErrorTokenValue!6306 (msg!6367 List!39950)) )
))
(declare-datatypes ((C!22148 0))(
  ( (C!22149 (val!13122 Int)) )
))
(declare-datatypes ((List!39951 0))(
  ( (Nil!39827) (Cons!39827 (h!45247 C!22148) (t!302634 List!39951)) )
))
(declare-datatypes ((IArray!24351 0))(
  ( (IArray!24352 (innerList!12233 List!39951)) )
))
(declare-datatypes ((Conc!12173 0))(
  ( (Node!12173 (left!30850 Conc!12173) (right!31180 Conc!12173) (csize!24576 Int) (cheight!12384 Int)) (Leaf!18895 (xs!15375 IArray!24351) (csize!24577 Int)) (Empty!12173) )
))
(declare-datatypes ((BalanceConc!23960 0))(
  ( (BalanceConc!23961 (c!648870 Conc!12173)) )
))
(declare-datatypes ((TokenValueInjection!12040 0))(
  ( (TokenValueInjection!12041 (toValue!8424 Int) (toChars!8283 Int)) )
))
(declare-datatypes ((Regex!10981 0))(
  ( (ElementMatch!10981 (c!648871 C!22148)) (Concat!17288 (regOne!22474 Regex!10981) (regTwo!22474 Regex!10981)) (EmptyExpr!10981) (Star!10981 (reg!11310 Regex!10981)) (EmptyLang!10981) (Union!10981 (regOne!22475 Regex!10981) (regTwo!22475 Regex!10981)) )
))
(declare-datatypes ((String!45156 0))(
  ( (String!45157 (value!193747 String)) )
))
(declare-datatypes ((Rule!11952 0))(
  ( (Rule!11953 (regex!6076 Regex!10981) (tag!6936 String!45156) (isSeparator!6076 Bool) (transformation!6076 TokenValueInjection!12040)) )
))
(declare-fun rNSep!170 () Rule!11952)

(declare-fun rSep!170 () Rule!11952)

(assert (=> b!3746752 (= res!1518686 (and (not (isSeparator!6076 rNSep!170)) (isSeparator!6076 rSep!170)))))

(declare-fun tp!1143008 () Bool)

(declare-fun e!2316865 () Bool)

(declare-fun e!2316863 () Bool)

(declare-fun b!3746754 () Bool)

(declare-fun inv!53347 (String!45156) Bool)

(declare-fun inv!53349 (TokenValueInjection!12040) Bool)

(assert (=> b!3746754 (= e!2316863 (and tp!1143008 (inv!53347 (tag!6936 rNSep!170)) (inv!53349 (transformation!6076 rNSep!170)) e!2316865))))

(assert (=> b!3746755 (= e!2316865 (and tp!1143012 tp!1143005))))

(declare-fun b!3746756 () Bool)

(declare-datatypes ((List!39952 0))(
  ( (Nil!39828) (Cons!39828 (h!45248 Rule!11952) (t!302635 List!39952)) )
))
(declare-fun rules!4213 () List!39952)

(declare-fun tp!1143014 () Bool)

(declare-fun e!2316857 () Bool)

(assert (=> b!3746756 (= e!2316864 (and tp!1143014 (inv!53347 (tag!6936 (h!45248 rules!4213))) (inv!53349 (transformation!6076 (h!45248 rules!4213))) e!2316857))))

(declare-fun b!3746757 () Bool)

(assert (=> b!3746757 (= e!2316859 false)))

(declare-fun lt!1299534 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!949 (Rule!11952 List!39952) Bool)

(assert (=> b!3746757 (= lt!1299534 (ruleDisjointCharsFromAllFromOtherType!949 rNSep!170 rules!4213))))

(declare-fun b!3746758 () Bool)

(declare-fun res!1518684 () Bool)

(assert (=> b!3746758 (=> (not res!1518684) (not e!2316859))))

(declare-fun c!6920 () C!22148)

(declare-fun contains!8111 (List!39951 C!22148) Bool)

(declare-fun usedCharacters!1244 (Regex!10981) List!39951)

(assert (=> b!3746758 (= res!1518684 (contains!8111 (usedCharacters!1244 (regex!6076 rNSep!170)) c!6920))))

(assert (=> b!3746759 (= e!2316857 (and tp!1143013 tp!1143010))))

(declare-fun b!3746760 () Bool)

(declare-fun res!1518683 () Bool)

(assert (=> b!3746760 (=> (not res!1518683) (not e!2316859))))

(declare-fun contains!8112 (List!39952 Rule!11952) Bool)

(assert (=> b!3746760 (= res!1518683 (contains!8112 rules!4213 rSep!170))))

(declare-fun e!2316858 () Bool)

(assert (=> b!3746753 (= e!2316858 (and tp!1143009 tp!1143006))))

(declare-fun res!1518685 () Bool)

(assert (=> start!351754 (=> (not res!1518685) (not e!2316859))))

(declare-datatypes ((LexerInterface!5665 0))(
  ( (LexerInterfaceExt!5662 (__x!24830 Int)) (Lexer!5663) )
))
(declare-fun thiss!27193 () LexerInterface!5665)

(get-info :version)

(assert (=> start!351754 (= res!1518685 ((_ is Lexer!5663) thiss!27193))))

(assert (=> start!351754 e!2316859))

(assert (=> start!351754 e!2316863))

(assert (=> start!351754 e!2316866))

(assert (=> start!351754 true))

(declare-fun tp_is_empty!18977 () Bool)

(assert (=> start!351754 tp_is_empty!18977))

(declare-fun e!2316862 () Bool)

(assert (=> start!351754 e!2316862))

(declare-fun b!3746761 () Bool)

(declare-fun res!1518687 () Bool)

(assert (=> b!3746761 (=> (not res!1518687) (not e!2316859))))

(declare-fun rulesInvariant!5062 (LexerInterface!5665 List!39952) Bool)

(assert (=> b!3746761 (= res!1518687 (rulesInvariant!5062 thiss!27193 rules!4213))))

(declare-fun b!3746762 () Bool)

(declare-fun tp!1143007 () Bool)

(assert (=> b!3746762 (= e!2316862 (and tp!1143007 (inv!53347 (tag!6936 rSep!170)) (inv!53349 (transformation!6076 rSep!170)) e!2316858))))

(assert (= (and start!351754 res!1518685) b!3746761))

(assert (= (and b!3746761 res!1518687) b!3746760))

(assert (= (and b!3746760 res!1518683) b!3746758))

(assert (= (and b!3746758 res!1518684) b!3746752))

(assert (= (and b!3746752 res!1518686) b!3746757))

(assert (= b!3746754 b!3746755))

(assert (= start!351754 b!3746754))

(assert (= b!3746756 b!3746759))

(assert (= b!3746751 b!3746756))

(assert (= (and start!351754 ((_ is Cons!39828) rules!4213)) b!3746751))

(assert (= b!3746762 b!3746753))

(assert (= start!351754 b!3746762))

(declare-fun m!4239171 () Bool)

(assert (=> b!3746762 m!4239171))

(declare-fun m!4239173 () Bool)

(assert (=> b!3746762 m!4239173))

(declare-fun m!4239175 () Bool)

(assert (=> b!3746756 m!4239175))

(declare-fun m!4239177 () Bool)

(assert (=> b!3746756 m!4239177))

(declare-fun m!4239179 () Bool)

(assert (=> b!3746758 m!4239179))

(assert (=> b!3746758 m!4239179))

(declare-fun m!4239181 () Bool)

(assert (=> b!3746758 m!4239181))

(declare-fun m!4239183 () Bool)

(assert (=> b!3746757 m!4239183))

(declare-fun m!4239185 () Bool)

(assert (=> b!3746760 m!4239185))

(declare-fun m!4239187 () Bool)

(assert (=> b!3746754 m!4239187))

(declare-fun m!4239189 () Bool)

(assert (=> b!3746754 m!4239189))

(declare-fun m!4239191 () Bool)

(assert (=> b!3746761 m!4239191))

(check-sat (not b!3746762) (not b_next!100511) (not b!3746758) b_and!278037 (not b!3746756) (not b_next!100515) (not b_next!100513) (not b_next!100509) (not b!3746761) (not b_next!100507) (not b!3746754) (not b!3746757) (not b!3746760) b_and!278045 (not b_next!100505) b_and!278035 b_and!278039 tp_is_empty!18977 b_and!278041 b_and!278043 (not b!3746751))
(check-sat (not b_next!100507) (not b_next!100511) b_and!278045 b_and!278037 (not b_next!100515) (not b_next!100513) (not b_next!100509) b_and!278041 b_and!278043 (not b_next!100505) b_and!278035 b_and!278039)
