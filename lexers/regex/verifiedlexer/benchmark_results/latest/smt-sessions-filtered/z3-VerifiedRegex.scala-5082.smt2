; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259894 () Bool)

(assert start!259894)

(declare-fun b!2671593 () Bool)

(declare-fun b_free!75113 () Bool)

(declare-fun b_next!75817 () Bool)

(assert (=> b!2671593 (= b_free!75113 (not b_next!75817))))

(declare-fun tp!844655 () Bool)

(declare-fun b_and!197241 () Bool)

(assert (=> b!2671593 (= tp!844655 b_and!197241)))

(declare-fun b_free!75115 () Bool)

(declare-fun b_next!75819 () Bool)

(assert (=> b!2671593 (= b_free!75115 (not b_next!75819))))

(declare-fun tp!844664 () Bool)

(declare-fun b_and!197243 () Bool)

(assert (=> b!2671593 (= tp!844664 b_and!197243)))

(declare-fun b!2671585 () Bool)

(declare-fun b_free!75117 () Bool)

(declare-fun b_next!75821 () Bool)

(assert (=> b!2671585 (= b_free!75117 (not b_next!75821))))

(declare-fun tp!844661 () Bool)

(declare-fun b_and!197245 () Bool)

(assert (=> b!2671585 (= tp!844661 b_and!197245)))

(declare-fun b_free!75119 () Bool)

(declare-fun b_next!75823 () Bool)

(assert (=> b!2671585 (= b_free!75119 (not b_next!75823))))

(declare-fun tp!844658 () Bool)

(declare-fun b_and!197247 () Bool)

(assert (=> b!2671585 (= tp!844658 b_and!197247)))

(declare-fun b!2671594 () Bool)

(declare-fun b_free!75121 () Bool)

(declare-fun b_next!75825 () Bool)

(assert (=> b!2671594 (= b_free!75121 (not b_next!75825))))

(declare-fun tp!844665 () Bool)

(declare-fun b_and!197249 () Bool)

(assert (=> b!2671594 (= tp!844665 b_and!197249)))

(declare-fun b_free!75123 () Bool)

(declare-fun b_next!75827 () Bool)

(assert (=> b!2671594 (= b_free!75123 (not b_next!75827))))

(declare-fun tp!844662 () Bool)

(declare-fun b_and!197251 () Bool)

(assert (=> b!2671594 (= tp!844662 b_and!197251)))

(declare-fun bs!479546 () Bool)

(declare-fun b!2671582 () Bool)

(declare-fun b!2671587 () Bool)

(assert (= bs!479546 (and b!2671582 b!2671587)))

(declare-fun lambda!99770 () Int)

(declare-fun lambda!99769 () Int)

(assert (=> bs!479546 (not (= lambda!99770 lambda!99769))))

(declare-fun b!2671605 () Bool)

(declare-fun e!1683782 () Bool)

(assert (=> b!2671605 (= e!1683782 true)))

(declare-fun b!2671604 () Bool)

(declare-fun e!1683781 () Bool)

(assert (=> b!2671604 (= e!1683781 e!1683782)))

(declare-fun b!2671603 () Bool)

(declare-fun e!1683780 () Bool)

(assert (=> b!2671603 (= e!1683780 e!1683781)))

(assert (=> b!2671582 e!1683780))

(assert (= b!2671604 b!2671605))

(assert (= b!2671603 b!2671604))

(declare-datatypes ((List!30809 0))(
  ( (Nil!30709) (Cons!30709 (h!36129 (_ BitVec 16)) (t!223308 List!30809)) )
))
(declare-datatypes ((TokenValue!4907 0))(
  ( (FloatLiteralValue!9814 (text!34794 List!30809)) (TokenValueExt!4906 (__x!19647 Int)) (Broken!24535 (value!151101 List!30809)) (Object!5006) (End!4907) (Def!4907) (Underscore!4907) (Match!4907) (Else!4907) (Error!4907) (Case!4907) (If!4907) (Extends!4907) (Abstract!4907) (Class!4907) (Val!4907) (DelimiterValue!9814 (del!4967 List!30809)) (KeywordValue!4913 (value!151102 List!30809)) (CommentValue!9814 (value!151103 List!30809)) (WhitespaceValue!9814 (value!151104 List!30809)) (IndentationValue!4907 (value!151105 List!30809)) (String!34418) (Int32!4907) (Broken!24536 (value!151106 List!30809)) (Boolean!4908) (Unit!44934) (OperatorValue!4910 (op!4967 List!30809)) (IdentifierValue!9814 (value!151107 List!30809)) (IdentifierValue!9815 (value!151108 List!30809)) (WhitespaceValue!9815 (value!151109 List!30809)) (True!9814) (False!9814) (Broken!24537 (value!151110 List!30809)) (Broken!24538 (value!151111 List!30809)) (True!9815) (RightBrace!4907) (RightBracket!4907) (Colon!4907) (Null!4907) (Comma!4907) (LeftBracket!4907) (False!9815) (LeftBrace!4907) (ImaginaryLiteralValue!4907 (text!34795 List!30809)) (StringLiteralValue!14721 (value!151112 List!30809)) (EOFValue!4907 (value!151113 List!30809)) (IdentValue!4907 (value!151114 List!30809)) (DelimiterValue!9815 (value!151115 List!30809)) (DedentValue!4907 (value!151116 List!30809)) (NewLineValue!4907 (value!151117 List!30809)) (IntegerValue!14721 (value!151118 (_ BitVec 32)) (text!34796 List!30809)) (IntegerValue!14722 (value!151119 Int) (text!34797 List!30809)) (Times!4907) (Or!4907) (Equal!4907) (Minus!4907) (Broken!24539 (value!151120 List!30809)) (And!4907) (Div!4907) (LessEqual!4907) (Mod!4907) (Concat!12736) (Not!4907) (Plus!4907) (SpaceValue!4907 (value!151121 List!30809)) (IntegerValue!14723 (value!151122 Int) (text!34798 List!30809)) (StringLiteralValue!14722 (text!34799 List!30809)) (FloatLiteralValue!9815 (text!34800 List!30809)) (BytesLiteralValue!4907 (value!151123 List!30809)) (CommentValue!9815 (value!151124 List!30809)) (StringLiteralValue!14723 (value!151125 List!30809)) (ErrorTokenValue!4907 (msg!4968 List!30809)) )
))
(declare-datatypes ((String!34419 0))(
  ( (String!34420 (value!151126 String)) )
))
(declare-datatypes ((C!15816 0))(
  ( (C!15817 (val!9842 Int)) )
))
(declare-datatypes ((List!30810 0))(
  ( (Nil!30710) (Cons!30710 (h!36130 C!15816) (t!223309 List!30810)) )
))
(declare-datatypes ((IArray!19207 0))(
  ( (IArray!19208 (innerList!9661 List!30810)) )
))
(declare-datatypes ((Conc!9601 0))(
  ( (Node!9601 (left!23751 Conc!9601) (right!24081 Conc!9601) (csize!19432 Int) (cheight!9812 Int)) (Leaf!14684 (xs!12631 IArray!19207) (csize!19433 Int)) (Empty!9601) )
))
(declare-datatypes ((BalanceConc!18816 0))(
  ( (BalanceConc!18817 (c!430615 Conc!9601)) )
))
(declare-datatypes ((Regex!7829 0))(
  ( (ElementMatch!7829 (c!430616 C!15816)) (Concat!12737 (regOne!16170 Regex!7829) (regTwo!16170 Regex!7829)) (EmptyExpr!7829) (Star!7829 (reg!8158 Regex!7829)) (EmptyLang!7829) (Union!7829 (regOne!16171 Regex!7829) (regTwo!16171 Regex!7829)) )
))
(declare-datatypes ((TokenValueInjection!9254 0))(
  ( (TokenValueInjection!9255 (toValue!6627 Int) (toChars!6486 Int)) )
))
(declare-datatypes ((Rule!9170 0))(
  ( (Rule!9171 (regex!4685 Regex!7829) (tag!5187 String!34419) (isSeparator!4685 Bool) (transformation!4685 TokenValueInjection!9254)) )
))
(declare-datatypes ((List!30811 0))(
  ( (Nil!30711) (Cons!30711 (h!36131 Rule!9170) (t!223310 List!30811)) )
))
(declare-fun rules!1712 () List!30811)

(get-info :version)

(assert (= (and b!2671582 ((_ is Cons!30711) rules!1712)) b!2671603))

(declare-fun order!16861 () Int)

(declare-fun order!16859 () Int)

(declare-fun dynLambda!13300 (Int Int) Int)

(declare-fun dynLambda!13301 (Int Int) Int)

(assert (=> b!2671605 (< (dynLambda!13300 order!16859 (toValue!6627 (transformation!4685 (h!36131 rules!1712)))) (dynLambda!13301 order!16861 lambda!99770))))

(declare-fun order!16863 () Int)

(declare-fun dynLambda!13302 (Int Int) Int)

(assert (=> b!2671605 (< (dynLambda!13302 order!16863 (toChars!6486 (transformation!4685 (h!36131 rules!1712)))) (dynLambda!13301 order!16861 lambda!99770))))

(assert (=> b!2671582 true))

(declare-fun e!1683770 () Bool)

(declare-datatypes ((Token!8840 0))(
  ( (Token!8841 (value!151127 TokenValue!4907) (rule!7091 Rule!9170) (size!23757 Int) (originalCharacters!5451 List!30810)) )
))
(declare-fun separatorToken!152 () Token!8840)

(declare-fun tp!844657 () Bool)

(declare-fun b!2671575 () Bool)

(declare-fun e!1683769 () Bool)

(declare-fun inv!41718 (String!34419) Bool)

(declare-fun inv!41721 (TokenValueInjection!9254) Bool)

(assert (=> b!2671575 (= e!1683770 (and tp!844657 (inv!41718 (tag!5187 (rule!7091 separatorToken!152))) (inv!41721 (transformation!4685 (rule!7091 separatorToken!152))) e!1683769))))

(declare-fun b!2671576 () Bool)

(declare-fun res!1123173 () Bool)

(declare-fun e!1683759 () Bool)

(assert (=> b!2671576 (=> (not res!1123173) (not e!1683759))))

(declare-datatypes ((List!30812 0))(
  ( (Nil!30712) (Cons!30712 (h!36132 Token!8840) (t!223311 List!30812)) )
))
(declare-fun l!4335 () List!30812)

(assert (=> b!2671576 (= res!1123173 ((_ is Cons!30712) l!4335))))

(declare-fun b!2671577 () Bool)

(declare-fun res!1123175 () Bool)

(assert (=> b!2671577 (=> (not res!1123175) (not e!1683759))))

(declare-fun isEmpty!17571 (List!30811) Bool)

(assert (=> b!2671577 (= res!1123175 (not (isEmpty!17571 rules!1712)))))

(declare-fun b!2671578 () Bool)

(declare-fun res!1123178 () Bool)

(assert (=> b!2671578 (=> (not res!1123178) (not e!1683759))))

(declare-datatypes ((LexerInterface!4282 0))(
  ( (LexerInterfaceExt!4279 (__x!19648 Int)) (Lexer!4280) )
))
(declare-fun thiss!14116 () LexerInterface!4282)

(declare-fun rulesProduceEachTokenIndividuallyList!1504 (LexerInterface!4282 List!30811 List!30812) Bool)

(assert (=> b!2671578 (= res!1123178 (rulesProduceEachTokenIndividuallyList!1504 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2671579 () Bool)

(declare-fun res!1123177 () Bool)

(assert (=> b!2671579 (=> (not res!1123177) (not e!1683759))))

(declare-fun rulesProduceIndividualToken!1994 (LexerInterface!4282 List!30811 Token!8840) Bool)

(assert (=> b!2671579 (= res!1123177 (rulesProduceIndividualToken!1994 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun e!1683765 () Bool)

(declare-fun b!2671580 () Bool)

(declare-fun tp!844666 () Bool)

(declare-fun inv!21 (TokenValue!4907) Bool)

(assert (=> b!2671580 (= e!1683765 (and (inv!21 (value!151127 separatorToken!152)) e!1683770 tp!844666))))

(declare-fun res!1123179 () Bool)

(assert (=> start!259894 (=> (not res!1123179) (not e!1683759))))

(assert (=> start!259894 (= res!1123179 ((_ is Lexer!4280) thiss!14116))))

(assert (=> start!259894 e!1683759))

(assert (=> start!259894 true))

(declare-fun e!1683773 () Bool)

(assert (=> start!259894 e!1683773))

(declare-fun e!1683758 () Bool)

(assert (=> start!259894 e!1683758))

(declare-fun inv!41722 (Token!8840) Bool)

(assert (=> start!259894 (and (inv!41722 separatorToken!152) e!1683765)))

(declare-fun b!2671581 () Bool)

(declare-fun res!1123171 () Bool)

(assert (=> b!2671581 (=> (not res!1123171) (not e!1683759))))

(declare-fun sepAndNonSepRulesDisjointChars!1258 (List!30811 List!30811) Bool)

(assert (=> b!2671581 (= res!1123171 (sepAndNonSepRulesDisjointChars!1258 rules!1712 rules!1712))))

(assert (=> b!2671582 (= e!1683759 false)))

(declare-fun lt!940863 () Bool)

(declare-fun rulesValidInductive!1631 (LexerInterface!4282 List!30811) Bool)

(assert (=> b!2671582 (= lt!940863 (rulesValidInductive!1631 thiss!14116 rules!1712))))

(declare-fun lt!940862 () List!30810)

(declare-fun ++!7491 (List!30810 List!30810) List!30810)

(declare-fun list!11597 (BalanceConc!18816) List!30810)

(declare-fun charsOf!2950 (Token!8840) BalanceConc!18816)

(declare-fun printWithSeparatorTokenWhenNeededList!678 (LexerInterface!4282 List!30811 List!30812 Token!8840) List!30810)

(assert (=> b!2671582 (= lt!940862 (++!7491 (list!11597 (charsOf!2950 (h!36132 l!4335))) (printWithSeparatorTokenWhenNeededList!678 thiss!14116 rules!1712 (t!223311 l!4335) separatorToken!152)))))

(declare-datatypes ((Unit!44935 0))(
  ( (Unit!44936) )
))
(declare-fun lt!940864 () Unit!44935)

(declare-fun forallContained!1027 (List!30812 Int Token!8840) Unit!44935)

(assert (=> b!2671582 (= lt!940864 (forallContained!1027 l!4335 lambda!99770 (h!36132 l!4335)))))

(declare-fun e!1683762 () Bool)

(declare-fun e!1683772 () Bool)

(declare-fun b!2671583 () Bool)

(declare-fun tp!844654 () Bool)

(assert (=> b!2671583 (= e!1683772 (and tp!844654 (inv!41718 (tag!5187 (rule!7091 (h!36132 l!4335)))) (inv!41721 (transformation!4685 (rule!7091 (h!36132 l!4335)))) e!1683762))))

(declare-fun e!1683767 () Bool)

(declare-fun tp!844656 () Bool)

(declare-fun b!2671584 () Bool)

(assert (=> b!2671584 (= e!1683767 (and (inv!21 (value!151127 (h!36132 l!4335))) e!1683772 tp!844656))))

(assert (=> b!2671585 (= e!1683769 (and tp!844661 tp!844658))))

(declare-fun b!2671586 () Bool)

(declare-fun res!1123170 () Bool)

(assert (=> b!2671586 (=> (not res!1123170) (not e!1683759))))

(declare-fun contains!5897 (List!30812 Token!8840) Bool)

(assert (=> b!2671586 (= res!1123170 (contains!5897 l!4335 (h!36132 l!4335)))))

(declare-fun res!1123176 () Bool)

(assert (=> b!2671587 (=> (not res!1123176) (not e!1683759))))

(declare-fun forall!6500 (List!30812 Int) Bool)

(assert (=> b!2671587 (= res!1123176 (forall!6500 l!4335 lambda!99769))))

(declare-fun tp!844659 () Bool)

(declare-fun b!2671588 () Bool)

(assert (=> b!2671588 (= e!1683758 (and (inv!41722 (h!36132 l!4335)) e!1683767 tp!844659))))

(declare-fun b!2671589 () Bool)

(declare-fun res!1123174 () Bool)

(assert (=> b!2671589 (=> (not res!1123174) (not e!1683759))))

(assert (=> b!2671589 (= res!1123174 (isSeparator!4685 (rule!7091 separatorToken!152)))))

(declare-fun b!2671590 () Bool)

(declare-fun e!1683764 () Bool)

(declare-fun tp!844663 () Bool)

(assert (=> b!2671590 (= e!1683773 (and e!1683764 tp!844663))))

(declare-fun tp!844660 () Bool)

(declare-fun e!1683763 () Bool)

(declare-fun b!2671591 () Bool)

(assert (=> b!2671591 (= e!1683764 (and tp!844660 (inv!41718 (tag!5187 (h!36131 rules!1712))) (inv!41721 (transformation!4685 (h!36131 rules!1712))) e!1683763))))

(declare-fun b!2671592 () Bool)

(declare-fun res!1123172 () Bool)

(assert (=> b!2671592 (=> (not res!1123172) (not e!1683759))))

(declare-fun rulesInvariant!3782 (LexerInterface!4282 List!30811) Bool)

(assert (=> b!2671592 (= res!1123172 (rulesInvariant!3782 thiss!14116 rules!1712))))

(assert (=> b!2671593 (= e!1683762 (and tp!844655 tp!844664))))

(assert (=> b!2671594 (= e!1683763 (and tp!844665 tp!844662))))

(assert (= (and start!259894 res!1123179) b!2671577))

(assert (= (and b!2671577 res!1123175) b!2671592))

(assert (= (and b!2671592 res!1123172) b!2671578))

(assert (= (and b!2671578 res!1123178) b!2671579))

(assert (= (and b!2671579 res!1123177) b!2671589))

(assert (= (and b!2671589 res!1123174) b!2671587))

(assert (= (and b!2671587 res!1123176) b!2671581))

(assert (= (and b!2671581 res!1123171) b!2671576))

(assert (= (and b!2671576 res!1123173) b!2671586))

(assert (= (and b!2671586 res!1123170) b!2671582))

(assert (= b!2671591 b!2671594))

(assert (= b!2671590 b!2671591))

(assert (= (and start!259894 ((_ is Cons!30711) rules!1712)) b!2671590))

(assert (= b!2671583 b!2671593))

(assert (= b!2671584 b!2671583))

(assert (= b!2671588 b!2671584))

(assert (= (and start!259894 ((_ is Cons!30712) l!4335)) b!2671588))

(assert (= b!2671575 b!2671585))

(assert (= b!2671580 b!2671575))

(assert (= start!259894 b!2671580))

(declare-fun m!3037877 () Bool)

(assert (=> b!2671588 m!3037877))

(declare-fun m!3037879 () Bool)

(assert (=> b!2671580 m!3037879))

(declare-fun m!3037881 () Bool)

(assert (=> b!2671587 m!3037881))

(declare-fun m!3037883 () Bool)

(assert (=> b!2671581 m!3037883))

(declare-fun m!3037885 () Bool)

(assert (=> b!2671591 m!3037885))

(declare-fun m!3037887 () Bool)

(assert (=> b!2671591 m!3037887))

(declare-fun m!3037889 () Bool)

(assert (=> b!2671582 m!3037889))

(declare-fun m!3037891 () Bool)

(assert (=> b!2671582 m!3037891))

(assert (=> b!2671582 m!3037891))

(declare-fun m!3037893 () Bool)

(assert (=> b!2671582 m!3037893))

(declare-fun m!3037895 () Bool)

(assert (=> b!2671582 m!3037895))

(declare-fun m!3037897 () Bool)

(assert (=> b!2671582 m!3037897))

(assert (=> b!2671582 m!3037889))

(declare-fun m!3037899 () Bool)

(assert (=> b!2671582 m!3037899))

(assert (=> b!2671582 m!3037893))

(declare-fun m!3037901 () Bool)

(assert (=> b!2671578 m!3037901))

(declare-fun m!3037903 () Bool)

(assert (=> b!2671583 m!3037903))

(declare-fun m!3037905 () Bool)

(assert (=> b!2671583 m!3037905))

(declare-fun m!3037907 () Bool)

(assert (=> b!2671579 m!3037907))

(declare-fun m!3037909 () Bool)

(assert (=> b!2671575 m!3037909))

(declare-fun m!3037911 () Bool)

(assert (=> b!2671575 m!3037911))

(declare-fun m!3037913 () Bool)

(assert (=> b!2671592 m!3037913))

(declare-fun m!3037915 () Bool)

(assert (=> b!2671584 m!3037915))

(declare-fun m!3037917 () Bool)

(assert (=> b!2671586 m!3037917))

(declare-fun m!3037919 () Bool)

(assert (=> b!2671577 m!3037919))

(declare-fun m!3037921 () Bool)

(assert (=> start!259894 m!3037921))

(check-sat (not b!2671584) b_and!197243 (not b!2671580) (not b!2671591) b_and!197245 (not b_next!75821) b_and!197247 (not b!2671579) (not start!259894) b_and!197249 (not b_next!75819) (not b_next!75817) (not b_next!75823) (not b!2671603) (not b!2671582) b_and!197241 (not b!2671575) (not b!2671577) (not b!2671583) (not b!2671587) (not b!2671590) (not b_next!75827) (not b!2671581) (not b!2671586) (not b!2671592) b_and!197251 (not b!2671578) (not b_next!75825) (not b!2671588))
(check-sat b_and!197243 b_and!197245 (not b_next!75821) b_and!197247 (not b_next!75827) b_and!197251 b_and!197249 (not b_next!75819) (not b_next!75817) (not b_next!75823) b_and!197241 (not b_next!75825))
