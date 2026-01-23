; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297656 () Bool)

(assert start!297656)

(declare-fun b!3178029 () Bool)

(declare-fun b_free!83557 () Bool)

(declare-fun b_next!84261 () Bool)

(assert (=> b!3178029 (= b_free!83557 (not b_next!84261))))

(declare-fun tp!1005206 () Bool)

(declare-fun b_and!209851 () Bool)

(assert (=> b!3178029 (= tp!1005206 b_and!209851)))

(declare-fun b_free!83559 () Bool)

(declare-fun b_next!84263 () Bool)

(assert (=> b!3178029 (= b_free!83559 (not b_next!84263))))

(declare-fun tp!1005200 () Bool)

(declare-fun b_and!209853 () Bool)

(assert (=> b!3178029 (= tp!1005200 b_and!209853)))

(declare-fun b!3178044 () Bool)

(declare-fun b_free!83561 () Bool)

(declare-fun b_next!84265 () Bool)

(assert (=> b!3178044 (= b_free!83561 (not b_next!84265))))

(declare-fun tp!1005207 () Bool)

(declare-fun b_and!209855 () Bool)

(assert (=> b!3178044 (= tp!1005207 b_and!209855)))

(declare-fun b_free!83563 () Bool)

(declare-fun b_next!84267 () Bool)

(assert (=> b!3178044 (= b_free!83563 (not b_next!84267))))

(declare-fun tp!1005209 () Bool)

(declare-fun b_and!209857 () Bool)

(assert (=> b!3178044 (= tp!1005209 b_and!209857)))

(declare-fun b!3178037 () Bool)

(declare-fun b_free!83565 () Bool)

(declare-fun b_next!84269 () Bool)

(assert (=> b!3178037 (= b_free!83565 (not b_next!84269))))

(declare-fun tp!1005208 () Bool)

(declare-fun b_and!209859 () Bool)

(assert (=> b!3178037 (= tp!1005208 b_and!209859)))

(declare-fun b_free!83567 () Bool)

(declare-fun b_next!84271 () Bool)

(assert (=> b!3178037 (= b_free!83567 (not b_next!84271))))

(declare-fun tp!1005204 () Bool)

(declare-fun b_and!209861 () Bool)

(assert (=> b!3178037 (= tp!1005204 b_and!209861)))

(declare-fun b!3178027 () Bool)

(declare-fun res!1291187 () Bool)

(declare-fun e!1979538 () Bool)

(assert (=> b!3178027 (=> (not res!1291187) (not e!1979538))))

(declare-datatypes ((C!19898 0))(
  ( (C!19899 (val!11997 Int)) )
))
(declare-datatypes ((Regex!9856 0))(
  ( (ElementMatch!9856 (c!534012 C!19898)) (Concat!15183 (regOne!20224 Regex!9856) (regTwo!20224 Regex!9856)) (EmptyExpr!9856) (Star!9856 (reg!10185 Regex!9856)) (EmptyLang!9856) (Union!9856 (regOne!20225 Regex!9856) (regTwo!20225 Regex!9856)) )
))
(declare-datatypes ((List!35764 0))(
  ( (Nil!35640) (Cons!35640 (h!41060 (_ BitVec 16)) (t!234867 List!35764)) )
))
(declare-datatypes ((TokenValue!5327 0))(
  ( (FloatLiteralValue!10654 (text!37734 List!35764)) (TokenValueExt!5326 (__x!22871 Int)) (Broken!26635 (value!165700 List!35764)) (Object!5450) (End!5327) (Def!5327) (Underscore!5327) (Match!5327) (Else!5327) (Error!5327) (Case!5327) (If!5327) (Extends!5327) (Abstract!5327) (Class!5327) (Val!5327) (DelimiterValue!10654 (del!5387 List!35764)) (KeywordValue!5333 (value!165701 List!35764)) (CommentValue!10654 (value!165702 List!35764)) (WhitespaceValue!10654 (value!165703 List!35764)) (IndentationValue!5327 (value!165704 List!35764)) (String!39970) (Int32!5327) (Broken!26636 (value!165705 List!35764)) (Boolean!5328) (Unit!50084) (OperatorValue!5330 (op!5387 List!35764)) (IdentifierValue!10654 (value!165706 List!35764)) (IdentifierValue!10655 (value!165707 List!35764)) (WhitespaceValue!10655 (value!165708 List!35764)) (True!10654) (False!10654) (Broken!26637 (value!165709 List!35764)) (Broken!26638 (value!165710 List!35764)) (True!10655) (RightBrace!5327) (RightBracket!5327) (Colon!5327) (Null!5327) (Comma!5327) (LeftBracket!5327) (False!10655) (LeftBrace!5327) (ImaginaryLiteralValue!5327 (text!37735 List!35764)) (StringLiteralValue!15981 (value!165711 List!35764)) (EOFValue!5327 (value!165712 List!35764)) (IdentValue!5327 (value!165713 List!35764)) (DelimiterValue!10655 (value!165714 List!35764)) (DedentValue!5327 (value!165715 List!35764)) (NewLineValue!5327 (value!165716 List!35764)) (IntegerValue!15981 (value!165717 (_ BitVec 32)) (text!37736 List!35764)) (IntegerValue!15982 (value!165718 Int) (text!37737 List!35764)) (Times!5327) (Or!5327) (Equal!5327) (Minus!5327) (Broken!26639 (value!165719 List!35764)) (And!5327) (Div!5327) (LessEqual!5327) (Mod!5327) (Concat!15184) (Not!5327) (Plus!5327) (SpaceValue!5327 (value!165720 List!35764)) (IntegerValue!15983 (value!165721 Int) (text!37738 List!35764)) (StringLiteralValue!15982 (text!37739 List!35764)) (FloatLiteralValue!10655 (text!37740 List!35764)) (BytesLiteralValue!5327 (value!165722 List!35764)) (CommentValue!10655 (value!165723 List!35764)) (StringLiteralValue!15983 (value!165724 List!35764)) (ErrorTokenValue!5327 (msg!5388 List!35764)) )
))
(declare-datatypes ((List!35765 0))(
  ( (Nil!35641) (Cons!35641 (h!41061 C!19898) (t!234868 List!35765)) )
))
(declare-datatypes ((IArray!21143 0))(
  ( (IArray!21144 (innerList!10629 List!35765)) )
))
(declare-datatypes ((Conc!10569 0))(
  ( (Node!10569 (left!27728 Conc!10569) (right!28058 Conc!10569) (csize!21368 Int) (cheight!10780 Int)) (Leaf!16729 (xs!13687 IArray!21143) (csize!21369 Int)) (Empty!10569) )
))
(declare-datatypes ((BalanceConc!20752 0))(
  ( (BalanceConc!20753 (c!534013 Conc!10569)) )
))
(declare-datatypes ((String!39971 0))(
  ( (String!39972 (value!165725 String)) )
))
(declare-datatypes ((TokenValueInjection!10082 0))(
  ( (TokenValueInjection!10083 (toValue!7157 Int) (toChars!7016 Int)) )
))
(declare-datatypes ((Rule!9994 0))(
  ( (Rule!9995 (regex!5097 Regex!9856) (tag!5601 String!39971) (isSeparator!5097 Bool) (transformation!5097 TokenValueInjection!10082)) )
))
(declare-datatypes ((Token!9560 0))(
  ( (Token!9561 (value!165726 TokenValue!5327) (rule!7507 Rule!9994) (size!26926 Int) (originalCharacters!5811 List!35765)) )
))
(declare-fun separatorToken!241 () Token!9560)

(assert (=> b!3178027 (= res!1291187 (isSeparator!5097 (rule!7507 separatorToken!241)))))

(declare-fun b!3178028 () Bool)

(declare-fun tp!1005201 () Bool)

(declare-datatypes ((List!35766 0))(
  ( (Nil!35642) (Cons!35642 (h!41062 Rule!9994) (t!234869 List!35766)) )
))
(declare-fun rules!2135 () List!35766)

(declare-fun e!1979540 () Bool)

(declare-fun e!1979546 () Bool)

(declare-fun inv!48497 (String!39971) Bool)

(declare-fun inv!48500 (TokenValueInjection!10082) Bool)

(assert (=> b!3178028 (= e!1979540 (and tp!1005201 (inv!48497 (tag!5601 (h!41062 rules!2135))) (inv!48500 (transformation!5097 (h!41062 rules!2135))) e!1979546))))

(assert (=> b!3178029 (= e!1979546 (and tp!1005206 tp!1005200))))

(declare-datatypes ((List!35767 0))(
  ( (Nil!35643) (Cons!35643 (h!41063 Token!9560) (t!234870 List!35767)) )
))
(declare-fun tokens!494 () List!35767)

(declare-fun b!3178030 () Bool)

(declare-fun e!1979542 () Bool)

(declare-fun e!1979537 () Bool)

(declare-fun tp!1005202 () Bool)

(declare-fun inv!48501 (Token!9560) Bool)

(assert (=> b!3178030 (= e!1979542 (and (inv!48501 (h!41063 tokens!494)) e!1979537 tp!1005202))))

(declare-fun res!1291189 () Bool)

(assert (=> start!297656 (=> (not res!1291189) (not e!1979538))))

(declare-datatypes ((LexerInterface!4686 0))(
  ( (LexerInterfaceExt!4683 (__x!22872 Int)) (Lexer!4684) )
))
(declare-fun thiss!18206 () LexerInterface!4686)

(assert (=> start!297656 (= res!1291189 (is-Lexer!4684 thiss!18206))))

(assert (=> start!297656 e!1979538))

(assert (=> start!297656 true))

(declare-fun e!1979541 () Bool)

(assert (=> start!297656 e!1979541))

(assert (=> start!297656 e!1979542))

(declare-fun e!1979549 () Bool)

(assert (=> start!297656 (and (inv!48501 separatorToken!241) e!1979549)))

(declare-fun tp!1005210 () Bool)

(declare-fun e!1979548 () Bool)

(declare-fun b!3178031 () Bool)

(declare-fun inv!21 (TokenValue!5327) Bool)

(assert (=> b!3178031 (= e!1979537 (and (inv!21 (value!165726 (h!41063 tokens!494))) e!1979548 tp!1005210))))

(declare-fun b!3178032 () Bool)

(declare-fun res!1291190 () Bool)

(assert (=> b!3178032 (=> (not res!1291190) (not e!1979538))))

(assert (=> b!3178032 (= res!1291190 (and (not (is-Nil!35643 tokens!494)) (is-Nil!35643 (t!234870 tokens!494))))))

(declare-fun b!3178033 () Bool)

(declare-fun tp!1005203 () Bool)

(declare-fun e!1979539 () Bool)

(assert (=> b!3178033 (= e!1979548 (and tp!1005203 (inv!48497 (tag!5601 (rule!7507 (h!41063 tokens!494)))) (inv!48500 (transformation!5097 (rule!7507 (h!41063 tokens!494)))) e!1979539))))

(declare-fun e!1979547 () Bool)

(declare-fun tp!1005199 () Bool)

(declare-fun b!3178034 () Bool)

(assert (=> b!3178034 (= e!1979549 (and (inv!21 (value!165726 separatorToken!241)) e!1979547 tp!1005199))))

(declare-fun b!3178035 () Bool)

(declare-fun res!1291185 () Bool)

(assert (=> b!3178035 (=> (not res!1291185) (not e!1979538))))

(declare-fun lambda!116278 () Int)

(declare-fun forall!7205 (List!35767 Int) Bool)

(assert (=> b!3178035 (= res!1291185 (forall!7205 tokens!494 lambda!116278))))

(declare-fun b!3178036 () Bool)

(declare-fun res!1291188 () Bool)

(assert (=> b!3178036 (=> (not res!1291188) (not e!1979538))))

(declare-fun isEmpty!19778 (List!35766) Bool)

(assert (=> b!3178036 (= res!1291188 (not (isEmpty!19778 rules!2135)))))

(assert (=> b!3178037 (= e!1979539 (and tp!1005208 tp!1005204))))

(declare-fun b!3178038 () Bool)

(declare-fun res!1291182 () Bool)

(assert (=> b!3178038 (=> (not res!1291182) (not e!1979538))))

(declare-fun sepAndNonSepRulesDisjointChars!1291 (List!35766 List!35766) Bool)

(assert (=> b!3178038 (= res!1291182 (sepAndNonSepRulesDisjointChars!1291 rules!2135 rules!2135))))

(declare-fun b!3178039 () Bool)

(declare-fun res!1291186 () Bool)

(assert (=> b!3178039 (=> (not res!1291186) (not e!1979538))))

(declare-fun rulesProduceIndividualToken!2178 (LexerInterface!4686 List!35766 Token!9560) Bool)

(assert (=> b!3178039 (= res!1291186 (rulesProduceIndividualToken!2178 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3178040 () Bool)

(assert (=> b!3178040 (= e!1979538 (not true))))

(declare-fun lt!1068167 () List!35765)

(declare-fun printList!1240 (LexerInterface!4686 List!35767) List!35765)

(assert (=> b!3178040 (= lt!1068167 (printList!1240 thiss!18206 (Cons!35643 (h!41063 tokens!494) Nil!35643)))))

(declare-fun lt!1068168 () List!35765)

(declare-fun lt!1068169 () BalanceConc!20752)

(declare-fun list!12650 (BalanceConc!20752) List!35765)

(assert (=> b!3178040 (= lt!1068168 (list!12650 lt!1068169))))

(declare-datatypes ((IArray!21145 0))(
  ( (IArray!21146 (innerList!10630 List!35767)) )
))
(declare-datatypes ((Conc!10570 0))(
  ( (Node!10570 (left!27729 Conc!10570) (right!28059 Conc!10570) (csize!21370 Int) (cheight!10781 Int)) (Leaf!16730 (xs!13688 IArray!21145) (csize!21371 Int)) (Empty!10570) )
))
(declare-datatypes ((BalanceConc!20754 0))(
  ( (BalanceConc!20755 (c!534014 Conc!10570)) )
))
(declare-fun lt!1068170 () BalanceConc!20754)

(declare-fun printTailRec!1185 (LexerInterface!4686 BalanceConc!20754 Int BalanceConc!20752) BalanceConc!20752)

(assert (=> b!3178040 (= lt!1068169 (printTailRec!1185 thiss!18206 lt!1068170 0 (BalanceConc!20753 Empty!10569)))))

(declare-fun print!1753 (LexerInterface!4686 BalanceConc!20754) BalanceConc!20752)

(assert (=> b!3178040 (= lt!1068169 (print!1753 thiss!18206 lt!1068170))))

(declare-fun singletonSeq!2193 (Token!9560) BalanceConc!20754)

(assert (=> b!3178040 (= lt!1068170 (singletonSeq!2193 (h!41063 tokens!494)))))

(declare-fun e!1979551 () Bool)

(declare-fun tp!1005205 () Bool)

(declare-fun b!3178041 () Bool)

(assert (=> b!3178041 (= e!1979547 (and tp!1005205 (inv!48497 (tag!5601 (rule!7507 separatorToken!241))) (inv!48500 (transformation!5097 (rule!7507 separatorToken!241))) e!1979551))))

(declare-fun b!3178042 () Bool)

(declare-fun tp!1005211 () Bool)

(assert (=> b!3178042 (= e!1979541 (and e!1979540 tp!1005211))))

(declare-fun b!3178043 () Bool)

(declare-fun res!1291183 () Bool)

(assert (=> b!3178043 (=> (not res!1291183) (not e!1979538))))

(declare-fun rulesProduceEachTokenIndividually!1137 (LexerInterface!4686 List!35766 BalanceConc!20754) Bool)

(declare-fun seqFromList!3277 (List!35767) BalanceConc!20754)

(assert (=> b!3178043 (= res!1291183 (rulesProduceEachTokenIndividually!1137 thiss!18206 rules!2135 (seqFromList!3277 tokens!494)))))

(assert (=> b!3178044 (= e!1979551 (and tp!1005207 tp!1005209))))

(declare-fun b!3178045 () Bool)

(declare-fun res!1291184 () Bool)

(assert (=> b!3178045 (=> (not res!1291184) (not e!1979538))))

(declare-fun rulesInvariant!4083 (LexerInterface!4686 List!35766) Bool)

(assert (=> b!3178045 (= res!1291184 (rulesInvariant!4083 thiss!18206 rules!2135))))

(assert (= (and start!297656 res!1291189) b!3178036))

(assert (= (and b!3178036 res!1291188) b!3178045))

(assert (= (and b!3178045 res!1291184) b!3178043))

(assert (= (and b!3178043 res!1291183) b!3178039))

(assert (= (and b!3178039 res!1291186) b!3178027))

(assert (= (and b!3178027 res!1291187) b!3178035))

(assert (= (and b!3178035 res!1291185) b!3178038))

(assert (= (and b!3178038 res!1291182) b!3178032))

(assert (= (and b!3178032 res!1291190) b!3178040))

(assert (= b!3178028 b!3178029))

(assert (= b!3178042 b!3178028))

(assert (= (and start!297656 (is-Cons!35642 rules!2135)) b!3178042))

(assert (= b!3178033 b!3178037))

(assert (= b!3178031 b!3178033))

(assert (= b!3178030 b!3178031))

(assert (= (and start!297656 (is-Cons!35643 tokens!494)) b!3178030))

(assert (= b!3178041 b!3178044))

(assert (= b!3178034 b!3178041))

(assert (= start!297656 b!3178034))

(declare-fun m!3434559 () Bool)

(assert (=> b!3178033 m!3434559))

(declare-fun m!3434561 () Bool)

(assert (=> b!3178033 m!3434561))

(declare-fun m!3434563 () Bool)

(assert (=> b!3178043 m!3434563))

(assert (=> b!3178043 m!3434563))

(declare-fun m!3434565 () Bool)

(assert (=> b!3178043 m!3434565))

(declare-fun m!3434567 () Bool)

(assert (=> b!3178034 m!3434567))

(declare-fun m!3434569 () Bool)

(assert (=> b!3178030 m!3434569))

(declare-fun m!3434571 () Bool)

(assert (=> b!3178031 m!3434571))

(declare-fun m!3434573 () Bool)

(assert (=> b!3178041 m!3434573))

(declare-fun m!3434575 () Bool)

(assert (=> b!3178041 m!3434575))

(declare-fun m!3434577 () Bool)

(assert (=> b!3178038 m!3434577))

(declare-fun m!3434579 () Bool)

(assert (=> b!3178045 m!3434579))

(declare-fun m!3434581 () Bool)

(assert (=> b!3178039 m!3434581))

(declare-fun m!3434583 () Bool)

(assert (=> b!3178036 m!3434583))

(declare-fun m!3434585 () Bool)

(assert (=> b!3178028 m!3434585))

(declare-fun m!3434587 () Bool)

(assert (=> b!3178028 m!3434587))

(declare-fun m!3434589 () Bool)

(assert (=> b!3178035 m!3434589))

(declare-fun m!3434591 () Bool)

(assert (=> b!3178040 m!3434591))

(declare-fun m!3434593 () Bool)

(assert (=> b!3178040 m!3434593))

(declare-fun m!3434595 () Bool)

(assert (=> b!3178040 m!3434595))

(declare-fun m!3434597 () Bool)

(assert (=> b!3178040 m!3434597))

(declare-fun m!3434599 () Bool)

(assert (=> b!3178040 m!3434599))

(declare-fun m!3434601 () Bool)

(assert (=> start!297656 m!3434601))

(push 1)

(assert (not b!3178031))

(assert (not b_next!84269))

(assert (not b!3178042))

(assert (not b!3178030))

(assert (not b!3178028))

(assert (not b!3178043))

(assert (not b!3178041))

(assert (not b!3178034))

(assert b_and!209853)

(assert (not b!3178035))

(assert (not b!3178045))

(assert (not b!3178040))

(assert (not b!3178033))

(assert (not b_next!84267))

(assert (not b_next!84261))

(assert (not b_next!84263))

(assert (not b_next!84265))

(assert b_and!209861)

(assert (not b!3178039))

(assert b_and!209857)

(assert b_and!209855)

(assert (not start!297656))

(assert b_and!209851)

(assert (not b!3178038))

(assert b_and!209859)

(assert (not b_next!84271))

(assert (not b!3178036))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!84269))

(assert b_and!209857)

(assert b_and!209853)

(assert b_and!209855)

(assert b_and!209851)

(assert (not b_next!84267))

(assert (not b_next!84261))

(assert (not b_next!84263))

(assert (not b_next!84265))

(assert b_and!209861)

(assert b_and!209859)

(assert (not b_next!84271))

(check-sat)

(pop 1)

