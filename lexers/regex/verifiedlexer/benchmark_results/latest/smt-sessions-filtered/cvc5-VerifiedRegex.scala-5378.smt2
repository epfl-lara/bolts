; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274268 () Bool)

(assert start!274268)

(declare-fun b!2825590 () Bool)

(declare-fun b_free!80989 () Bool)

(declare-fun b_next!81693 () Bool)

(assert (=> b!2825590 (= b_free!80989 (not b_next!81693))))

(declare-fun tp!902512 () Bool)

(declare-fun b_and!206511 () Bool)

(assert (=> b!2825590 (= tp!902512 b_and!206511)))

(declare-fun b_free!80991 () Bool)

(declare-fun b_next!81695 () Bool)

(assert (=> b!2825590 (= b_free!80991 (not b_next!81695))))

(declare-fun tp!902507 () Bool)

(declare-fun b_and!206513 () Bool)

(assert (=> b!2825590 (= tp!902507 b_and!206513)))

(declare-fun b!2825593 () Bool)

(declare-fun b_free!80993 () Bool)

(declare-fun b_next!81697 () Bool)

(assert (=> b!2825593 (= b_free!80993 (not b_next!81697))))

(declare-fun tp!902509 () Bool)

(declare-fun b_and!206515 () Bool)

(assert (=> b!2825593 (= tp!902509 b_and!206515)))

(declare-fun b_free!80995 () Bool)

(declare-fun b_next!81699 () Bool)

(assert (=> b!2825593 (= b_free!80995 (not b_next!81699))))

(declare-fun tp!902513 () Bool)

(declare-fun b_and!206517 () Bool)

(assert (=> b!2825593 (= tp!902513 b_and!206517)))

(declare-fun b!2825617 () Bool)

(declare-fun e!1788172 () Bool)

(assert (=> b!2825617 (= e!1788172 true)))

(declare-fun b!2825616 () Bool)

(declare-fun e!1788171 () Bool)

(assert (=> b!2825616 (= e!1788171 e!1788172)))

(declare-fun b!2825615 () Bool)

(declare-fun e!1788170 () Bool)

(assert (=> b!2825615 (= e!1788170 e!1788171)))

(declare-fun b!2825599 () Bool)

(assert (=> b!2825599 e!1788170))

(assert (= b!2825616 b!2825617))

(assert (= b!2825615 b!2825616))

(declare-datatypes ((String!36477 0))(
  ( (String!36478 (value!160054 String)) )
))
(declare-datatypes ((C!16910 0))(
  ( (C!16911 (val!10435 Int)) )
))
(declare-datatypes ((List!33308 0))(
  ( (Nil!33184) (Cons!33184 (h!38604 (_ BitVec 16)) (t!230939 List!33308)) )
))
(declare-datatypes ((TokenValue!5204 0))(
  ( (FloatLiteralValue!10408 (text!36873 List!33308)) (TokenValueExt!5203 (__x!22081 Int)) (Broken!26020 (value!160055 List!33308)) (Object!5327) (End!5204) (Def!5204) (Underscore!5204) (Match!5204) (Else!5204) (Error!5204) (Case!5204) (If!5204) (Extends!5204) (Abstract!5204) (Class!5204) (Val!5204) (DelimiterValue!10408 (del!5264 List!33308)) (KeywordValue!5210 (value!160056 List!33308)) (CommentValue!10408 (value!160057 List!33308)) (WhitespaceValue!10408 (value!160058 List!33308)) (IndentationValue!5204 (value!160059 List!33308)) (String!36479) (Int32!5204) (Broken!26021 (value!160060 List!33308)) (Boolean!5205) (Unit!47214) (OperatorValue!5207 (op!5264 List!33308)) (IdentifierValue!10408 (value!160061 List!33308)) (IdentifierValue!10409 (value!160062 List!33308)) (WhitespaceValue!10409 (value!160063 List!33308)) (True!10408) (False!10408) (Broken!26022 (value!160064 List!33308)) (Broken!26023 (value!160065 List!33308)) (True!10409) (RightBrace!5204) (RightBracket!5204) (Colon!5204) (Null!5204) (Comma!5204) (LeftBracket!5204) (False!10409) (LeftBrace!5204) (ImaginaryLiteralValue!5204 (text!36874 List!33308)) (StringLiteralValue!15612 (value!160066 List!33308)) (EOFValue!5204 (value!160067 List!33308)) (IdentValue!5204 (value!160068 List!33308)) (DelimiterValue!10409 (value!160069 List!33308)) (DedentValue!5204 (value!160070 List!33308)) (NewLineValue!5204 (value!160071 List!33308)) (IntegerValue!15612 (value!160072 (_ BitVec 32)) (text!36875 List!33308)) (IntegerValue!15613 (value!160073 Int) (text!36876 List!33308)) (Times!5204) (Or!5204) (Equal!5204) (Minus!5204) (Broken!26024 (value!160074 List!33308)) (And!5204) (Div!5204) (LessEqual!5204) (Mod!5204) (Concat!13568) (Not!5204) (Plus!5204) (SpaceValue!5204 (value!160075 List!33308)) (IntegerValue!15614 (value!160076 Int) (text!36877 List!33308)) (StringLiteralValue!15613 (text!36878 List!33308)) (FloatLiteralValue!10409 (text!36879 List!33308)) (BytesLiteralValue!5204 (value!160077 List!33308)) (CommentValue!10409 (value!160078 List!33308)) (StringLiteralValue!15614 (value!160079 List!33308)) (ErrorTokenValue!5204 (msg!5265 List!33308)) )
))
(declare-datatypes ((List!33309 0))(
  ( (Nil!33185) (Cons!33185 (h!38605 C!16910) (t!230940 List!33309)) )
))
(declare-datatypes ((IArray!20611 0))(
  ( (IArray!20612 (innerList!10363 List!33309)) )
))
(declare-datatypes ((Conc!10303 0))(
  ( (Node!10303 (left!25075 Conc!10303) (right!25405 Conc!10303) (csize!20836 Int) (cheight!10514 Int)) (Leaf!15682 (xs!13415 IArray!20611) (csize!20837 Int)) (Empty!10303) )
))
(declare-datatypes ((BalanceConc!20244 0))(
  ( (BalanceConc!20245 (c!457434 Conc!10303)) )
))
(declare-datatypes ((TokenValueInjection!9836 0))(
  ( (TokenValueInjection!9837 (toValue!6996 Int) (toChars!6855 Int)) )
))
(declare-datatypes ((Regex!8364 0))(
  ( (ElementMatch!8364 (c!457435 C!16910)) (Concat!13569 (regOne!17240 Regex!8364) (regTwo!17240 Regex!8364)) (EmptyExpr!8364) (Star!8364 (reg!8693 Regex!8364)) (EmptyLang!8364) (Union!8364 (regOne!17241 Regex!8364) (regTwo!17241 Regex!8364)) )
))
(declare-datatypes ((Rule!9748 0))(
  ( (Rule!9749 (regex!4974 Regex!8364) (tag!5478 String!36477) (isSeparator!4974 Bool) (transformation!4974 TokenValueInjection!9836)) )
))
(declare-datatypes ((List!33310 0))(
  ( (Nil!33186) (Cons!33186 (h!38606 Rule!9748) (t!230941 List!33310)) )
))
(declare-fun rules!4424 () List!33310)

(assert (= (and b!2825599 (is-Cons!33186 rules!4424)) b!2825615))

(declare-fun order!17697 () Int)

(declare-fun order!17699 () Int)

(declare-fun lambda!103798 () Int)

(declare-fun dynLambda!13935 (Int Int) Int)

(declare-fun dynLambda!13936 (Int Int) Int)

(assert (=> b!2825617 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103798))))

(declare-fun order!17701 () Int)

(declare-fun dynLambda!13937 (Int Int) Int)

(assert (=> b!2825617 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103798))))

(declare-fun b!2825586 () Bool)

(declare-fun res!1175889 () Bool)

(declare-fun e!1788162 () Bool)

(assert (=> b!2825586 (=> (not res!1175889) (not e!1788162))))

(declare-datatypes ((LexerInterface!4565 0))(
  ( (LexerInterfaceExt!4562 (__x!22082 Int)) (Lexer!4563) )
))
(declare-fun thiss!27755 () LexerInterface!4565)

(declare-datatypes ((Token!9350 0))(
  ( (Token!9351 (value!160080 TokenValue!5204) (rule!7402 Rule!9748) (size!25847 Int) (originalCharacters!5706 List!33309)) )
))
(declare-datatypes ((List!33311 0))(
  ( (Nil!33187) (Cons!33187 (h!38607 Token!9350) (t!230942 List!33311)) )
))
(declare-fun l!6581 () List!33311)

(declare-fun tokensListTwoByTwoPredicateSeparableList!702 (LexerInterface!4565 List!33311 List!33310) Bool)

(assert (=> b!2825586 (= res!1175889 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (t!230942 l!6581) rules!4424))))

(declare-fun b!2825587 () Bool)

(declare-fun res!1175895 () Bool)

(assert (=> b!2825587 (=> (not res!1175895) (not e!1788162))))

(declare-fun isEmpty!18355 (List!33310) Bool)

(assert (=> b!2825587 (= res!1175895 (not (isEmpty!18355 rules!4424)))))

(declare-fun b!2825588 () Bool)

(declare-fun e!1788154 () Bool)

(declare-fun e!1788161 () Bool)

(declare-fun tp!902510 () Bool)

(assert (=> b!2825588 (= e!1788154 (and e!1788161 tp!902510))))

(declare-fun res!1175894 () Bool)

(assert (=> start!274268 (=> (not res!1175894) (not e!1788162))))

(assert (=> start!274268 (= res!1175894 (is-Lexer!4563 thiss!27755))))

(assert (=> start!274268 e!1788162))

(assert (=> start!274268 true))

(assert (=> start!274268 e!1788154))

(declare-fun e!1788152 () Bool)

(assert (=> start!274268 e!1788152))

(declare-fun e!1788156 () Bool)

(declare-fun b!2825589 () Bool)

(declare-fun tp!902506 () Bool)

(declare-fun inv!45117 (String!36477) Bool)

(declare-fun inv!45120 (TokenValueInjection!9836) Bool)

(assert (=> b!2825589 (= e!1788161 (and tp!902506 (inv!45117 (tag!5478 (h!38606 rules!4424))) (inv!45120 (transformation!4974 (h!38606 rules!4424))) e!1788156))))

(declare-fun e!1788147 () Bool)

(assert (=> b!2825590 (= e!1788147 (and tp!902512 tp!902507))))

(declare-fun e!1788157 () Bool)

(declare-fun b!2825591 () Bool)

(declare-fun tp!902505 () Bool)

(assert (=> b!2825591 (= e!1788157 (and tp!902505 (inv!45117 (tag!5478 (rule!7402 (h!38607 l!6581)))) (inv!45120 (transformation!4974 (rule!7402 (h!38607 l!6581)))) e!1788147))))

(declare-fun b!2825592 () Bool)

(declare-fun res!1175899 () Bool)

(assert (=> b!2825592 (=> (not res!1175899) (not e!1788162))))

(assert (=> b!2825592 (= res!1175899 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 l!6581 rules!4424))))

(assert (=> b!2825593 (= e!1788156 (and tp!902509 tp!902513))))

(declare-fun b!2825594 () Bool)

(declare-fun res!1175890 () Bool)

(assert (=> b!2825594 (=> (not res!1175890) (not e!1788162))))

(declare-fun i!1730 () Int)

(assert (=> b!2825594 (= res!1175890 (and (not (is-Nil!33187 l!6581)) (> i!1730 0)))))

(declare-fun b!2825595 () Bool)

(declare-fun res!1175898 () Bool)

(assert (=> b!2825595 (=> (not res!1175898) (not e!1788162))))

(declare-fun rulesInvariant!3983 (LexerInterface!4565 List!33310) Bool)

(assert (=> b!2825595 (= res!1175898 (rulesInvariant!3983 thiss!27755 rules!4424))))

(declare-fun b!2825596 () Bool)

(declare-fun lt!1008150 () List!33311)

(declare-fun e!1788160 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1617 (LexerInterface!4565 List!33310 List!33311) Bool)

(assert (=> b!2825596 (= e!1788160 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008150)))))

(declare-fun e!1788158 () Bool)

(declare-fun tp!902508 () Bool)

(declare-fun b!2825597 () Bool)

(declare-fun inv!21 (TokenValue!5204) Bool)

(assert (=> b!2825597 (= e!1788158 (and (inv!21 (value!160080 (h!38607 l!6581))) e!1788157 tp!902508))))

(declare-fun b!2825598 () Bool)

(declare-fun e!1788153 () Bool)

(assert (=> b!2825598 (= e!1788153 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 lt!1008150 rules!4424))))

(declare-fun e!1788150 () Bool)

(assert (=> b!2825599 (= e!1788162 (not e!1788150))))

(declare-fun res!1175887 () Bool)

(assert (=> b!2825599 (=> res!1175887 e!1788150)))

(declare-fun forall!6804 (List!33311 Int) Bool)

(assert (=> b!2825599 (= res!1175887 (not (forall!6804 l!6581 lambda!103798)))))

(declare-fun e!1788163 () Bool)

(declare-fun lt!1008151 () List!33311)

(assert (=> b!2825599 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 lt!1008151) e!1788163)))

(declare-fun res!1175892 () Bool)

(assert (=> b!2825599 (=> res!1175892 e!1788163)))

(assert (=> b!2825599 (= res!1175892 (not (is-Cons!33187 lt!1008151)))))

(declare-fun take!568 (List!33311 Int) List!33311)

(assert (=> b!2825599 (= lt!1008151 (take!568 l!6581 i!1730))))

(assert (=> b!2825599 e!1788153))

(declare-fun res!1175888 () Bool)

(assert (=> b!2825599 (=> (not res!1175888) (not e!1788153))))

(assert (=> b!2825599 (= res!1175888 (forall!6804 lt!1008150 lambda!103798))))

(declare-datatypes ((Unit!47215 0))(
  ( (Unit!47216) )
))
(declare-fun lt!1008152 () Unit!47215)

(declare-fun lemmaForallSubseq!234 (List!33311 List!33311 Int) Unit!47215)

(assert (=> b!2825599 (= lt!1008152 (lemmaForallSubseq!234 lt!1008150 (t!230942 l!6581) lambda!103798))))

(declare-fun e!1788159 () Bool)

(assert (=> b!2825599 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 lt!1008150) e!1788159)))

(declare-fun res!1175886 () Bool)

(assert (=> b!2825599 (=> res!1175886 e!1788159)))

(assert (=> b!2825599 (= res!1175886 (not (is-Cons!33187 lt!1008150)))))

(assert (=> b!2825599 (= lt!1008150 (take!568 (t!230942 l!6581) (- i!1730 1)))))

(declare-fun lt!1008153 () Unit!47215)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!57 (LexerInterface!4565 List!33311 Int List!33310) Unit!47215)

(assert (=> b!2825599 (= lt!1008153 (tokensListTwoByTwoPredicateSeparableTokensTakeList!57 thiss!27755 (t!230942 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2825600 () Bool)

(declare-fun e!1788151 () Bool)

(assert (=> b!2825600 (= e!1788163 e!1788151)))

(declare-fun res!1175897 () Bool)

(assert (=> b!2825600 (=> (not res!1175897) (not e!1788151))))

(declare-fun rulesProduceIndividualToken!2103 (LexerInterface!4565 List!33310 Token!9350) Bool)

(assert (=> b!2825600 (= res!1175897 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008151)))))

(declare-fun b!2825601 () Bool)

(declare-fun subseq!458 (List!33311 List!33311) Bool)

(assert (=> b!2825601 (= e!1788150 (subseq!458 lt!1008151 l!6581))))

(declare-fun b!2825602 () Bool)

(declare-fun res!1175891 () Bool)

(assert (=> b!2825602 (=> (not res!1175891) (not e!1788162))))

(assert (=> b!2825602 (= res!1175891 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2825603 () Bool)

(assert (=> b!2825603 (= e!1788151 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008151)))))

(declare-fun b!2825604 () Bool)

(assert (=> b!2825604 (= e!1788159 e!1788160)))

(declare-fun res!1175893 () Bool)

(assert (=> b!2825604 (=> (not res!1175893) (not e!1788160))))

(assert (=> b!2825604 (= res!1175893 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008150)))))

(declare-fun b!2825605 () Bool)

(declare-fun tp!902511 () Bool)

(declare-fun inv!45121 (Token!9350) Bool)

(assert (=> b!2825605 (= e!1788152 (and (inv!45121 (h!38607 l!6581)) e!1788158 tp!902511))))

(declare-fun b!2825606 () Bool)

(declare-fun res!1175896 () Bool)

(assert (=> b!2825606 (=> (not res!1175896) (not e!1788162))))

(assert (=> b!2825606 (= res!1175896 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 l!6581)))))

(assert (= (and start!274268 res!1175894) b!2825587))

(assert (= (and b!2825587 res!1175895) b!2825595))

(assert (= (and b!2825595 res!1175898) b!2825602))

(assert (= (and b!2825602 res!1175891) b!2825592))

(assert (= (and b!2825592 res!1175899) b!2825594))

(assert (= (and b!2825594 res!1175890) b!2825606))

(assert (= (and b!2825606 res!1175896) b!2825586))

(assert (= (and b!2825586 res!1175889) b!2825599))

(assert (= (and b!2825599 (not res!1175886)) b!2825604))

(assert (= (and b!2825604 res!1175893) b!2825596))

(assert (= (and b!2825599 res!1175888) b!2825598))

(assert (= (and b!2825599 (not res!1175892)) b!2825600))

(assert (= (and b!2825600 res!1175897) b!2825603))

(assert (= (and b!2825599 (not res!1175887)) b!2825601))

(assert (= b!2825589 b!2825593))

(assert (= b!2825588 b!2825589))

(assert (= (and start!274268 (is-Cons!33186 rules!4424)) b!2825588))

(assert (= b!2825591 b!2825590))

(assert (= b!2825597 b!2825591))

(assert (= b!2825605 b!2825597))

(assert (= (and start!274268 (is-Cons!33187 l!6581)) b!2825605))

(declare-fun m!3255735 () Bool)

(assert (=> b!2825606 m!3255735))

(declare-fun m!3255737 () Bool)

(assert (=> b!2825599 m!3255737))

(declare-fun m!3255739 () Bool)

(assert (=> b!2825599 m!3255739))

(declare-fun m!3255741 () Bool)

(assert (=> b!2825599 m!3255741))

(declare-fun m!3255743 () Bool)

(assert (=> b!2825599 m!3255743))

(declare-fun m!3255745 () Bool)

(assert (=> b!2825599 m!3255745))

(declare-fun m!3255747 () Bool)

(assert (=> b!2825599 m!3255747))

(declare-fun m!3255749 () Bool)

(assert (=> b!2825599 m!3255749))

(declare-fun m!3255751 () Bool)

(assert (=> b!2825599 m!3255751))

(declare-fun m!3255753 () Bool)

(assert (=> b!2825597 m!3255753))

(declare-fun m!3255755 () Bool)

(assert (=> b!2825587 m!3255755))

(declare-fun m!3255757 () Bool)

(assert (=> b!2825586 m!3255757))

(declare-fun m!3255759 () Bool)

(assert (=> b!2825605 m!3255759))

(declare-fun m!3255761 () Bool)

(assert (=> b!2825589 m!3255761))

(declare-fun m!3255763 () Bool)

(assert (=> b!2825589 m!3255763))

(declare-fun m!3255765 () Bool)

(assert (=> b!2825604 m!3255765))

(declare-fun m!3255767 () Bool)

(assert (=> b!2825602 m!3255767))

(declare-fun m!3255769 () Bool)

(assert (=> b!2825600 m!3255769))

(declare-fun m!3255771 () Bool)

(assert (=> b!2825603 m!3255771))

(declare-fun m!3255773 () Bool)

(assert (=> b!2825601 m!3255773))

(declare-fun m!3255775 () Bool)

(assert (=> b!2825592 m!3255775))

(declare-fun m!3255777 () Bool)

(assert (=> b!2825591 m!3255777))

(declare-fun m!3255779 () Bool)

(assert (=> b!2825591 m!3255779))

(declare-fun m!3255781 () Bool)

(assert (=> b!2825596 m!3255781))

(declare-fun m!3255783 () Bool)

(assert (=> b!2825595 m!3255783))

(declare-fun m!3255785 () Bool)

(assert (=> b!2825598 m!3255785))

(push 1)

(assert (not b_next!81699))

(assert (not b_next!81693))

(assert (not b!2825589))

(assert (not b_next!81697))

(assert (not b!2825591))

(assert (not b!2825592))

(assert (not b!2825596))

(assert (not b!2825605))

(assert (not b!2825598))

(assert b_and!206517)

(assert (not b!2825606))

(assert (not b!2825595))

(assert (not b!2825588))

(assert (not b!2825586))

(assert (not b!2825602))

(assert (not b!2825597))

(assert b_and!206511)

(assert (not b!2825615))

(assert (not b!2825604))

(assert b_and!206513)

(assert (not b!2825603))

(assert (not b_next!81695))

(assert (not b!2825599))

(assert b_and!206515)

(assert (not b!2825601))

(assert (not b!2825587))

(assert (not b!2825600))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81699))

(assert (not b_next!81693))

(assert (not b_next!81697))

(assert b_and!206511)

(assert b_and!206513)

(assert (not b_next!81695))

(assert b_and!206515)

(assert b_and!206517)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!517950 () Bool)

(declare-fun d!820191 () Bool)

(assert (= bs!517950 (and d!820191 b!2825599)))

(declare-fun lambda!103806 () Int)

(assert (=> bs!517950 (= (= thiss!27755 Lexer!4563) (= lambda!103806 lambda!103798))))

(declare-fun b!2825706 () Bool)

(declare-fun e!1788247 () Bool)

(assert (=> b!2825706 (= e!1788247 true)))

(declare-fun b!2825705 () Bool)

(declare-fun e!1788246 () Bool)

(assert (=> b!2825705 (= e!1788246 e!1788247)))

(declare-fun b!2825704 () Bool)

(declare-fun e!1788245 () Bool)

(assert (=> b!2825704 (= e!1788245 e!1788246)))

(assert (=> d!820191 e!1788245))

(assert (= b!2825705 b!2825706))

(assert (= b!2825704 b!2825705))

(assert (= (and d!820191 (is-Cons!33186 rules!4424)) b!2825704))

(assert (=> b!2825706 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103806))))

(assert (=> b!2825706 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103806))))

(assert (=> d!820191 true))

(declare-fun lt!1008168 () Bool)

(assert (=> d!820191 (= lt!1008168 (forall!6804 (t!230942 l!6581) lambda!103806))))

(declare-fun e!1788244 () Bool)

(assert (=> d!820191 (= lt!1008168 e!1788244)))

(declare-fun res!1175957 () Bool)

(assert (=> d!820191 (=> res!1175957 e!1788244)))

(assert (=> d!820191 (= res!1175957 (not (is-Cons!33187 (t!230942 l!6581))))))

(assert (=> d!820191 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820191 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 l!6581)) lt!1008168)))

(declare-fun b!2825702 () Bool)

(declare-fun e!1788243 () Bool)

(assert (=> b!2825702 (= e!1788244 e!1788243)))

(declare-fun res!1175958 () Bool)

(assert (=> b!2825702 (=> (not res!1175958) (not e!1788243))))

(assert (=> b!2825702 (= res!1175958 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 l!6581))))))

(declare-fun b!2825703 () Bool)

(assert (=> b!2825703 (= e!1788243 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 (t!230942 l!6581))))))

(assert (= (and d!820191 (not res!1175957)) b!2825702))

(assert (= (and b!2825702 res!1175958) b!2825703))

(declare-fun m!3255847 () Bool)

(assert (=> d!820191 m!3255847))

(assert (=> d!820191 m!3255755))

(declare-fun m!3255849 () Bool)

(assert (=> b!2825702 m!3255849))

(declare-fun m!3255851 () Bool)

(assert (=> b!2825703 m!3255851))

(assert (=> b!2825606 d!820191))

(declare-fun d!820193 () Bool)

(declare-fun res!1175961 () Bool)

(declare-fun e!1788250 () Bool)

(assert (=> d!820193 (=> (not res!1175961) (not e!1788250))))

(declare-fun rulesValid!1837 (LexerInterface!4565 List!33310) Bool)

(assert (=> d!820193 (= res!1175961 (rulesValid!1837 thiss!27755 rules!4424))))

(assert (=> d!820193 (= (rulesInvariant!3983 thiss!27755 rules!4424) e!1788250)))

(declare-fun b!2825711 () Bool)

(declare-datatypes ((List!33316 0))(
  ( (Nil!33192) (Cons!33192 (h!38612 String!36477) (t!230972 List!33316)) )
))
(declare-fun noDuplicateTag!1833 (LexerInterface!4565 List!33310 List!33316) Bool)

(assert (=> b!2825711 (= e!1788250 (noDuplicateTag!1833 thiss!27755 rules!4424 Nil!33192))))

(assert (= (and d!820193 res!1175961) b!2825711))

(declare-fun m!3255853 () Bool)

(assert (=> d!820193 m!3255853))

(declare-fun m!3255855 () Bool)

(assert (=> b!2825711 m!3255855))

(assert (=> b!2825595 d!820193))

(declare-fun b!2825722 () Bool)

(declare-fun e!1788259 () Bool)

(declare-fun inv!17 (TokenValue!5204) Bool)

(assert (=> b!2825722 (= e!1788259 (inv!17 (value!160080 (h!38607 l!6581))))))

(declare-fun d!820195 () Bool)

(declare-fun c!457442 () Bool)

(assert (=> d!820195 (= c!457442 (is-IntegerValue!15612 (value!160080 (h!38607 l!6581))))))

(declare-fun e!1788258 () Bool)

(assert (=> d!820195 (= (inv!21 (value!160080 (h!38607 l!6581))) e!1788258)))

(declare-fun b!2825723 () Bool)

(declare-fun res!1175964 () Bool)

(declare-fun e!1788257 () Bool)

(assert (=> b!2825723 (=> res!1175964 e!1788257)))

(assert (=> b!2825723 (= res!1175964 (not (is-IntegerValue!15614 (value!160080 (h!38607 l!6581)))))))

(assert (=> b!2825723 (= e!1788259 e!1788257)))

(declare-fun b!2825724 () Bool)

(declare-fun inv!15 (TokenValue!5204) Bool)

(assert (=> b!2825724 (= e!1788257 (inv!15 (value!160080 (h!38607 l!6581))))))

(declare-fun b!2825725 () Bool)

(assert (=> b!2825725 (= e!1788258 e!1788259)))

(declare-fun c!457443 () Bool)

(assert (=> b!2825725 (= c!457443 (is-IntegerValue!15613 (value!160080 (h!38607 l!6581))))))

(declare-fun b!2825726 () Bool)

(declare-fun inv!16 (TokenValue!5204) Bool)

(assert (=> b!2825726 (= e!1788258 (inv!16 (value!160080 (h!38607 l!6581))))))

(assert (= (and d!820195 c!457442) b!2825726))

(assert (= (and d!820195 (not c!457442)) b!2825725))

(assert (= (and b!2825725 c!457443) b!2825722))

(assert (= (and b!2825725 (not c!457443)) b!2825723))

(assert (= (and b!2825723 (not res!1175964)) b!2825724))

(declare-fun m!3255857 () Bool)

(assert (=> b!2825722 m!3255857))

(declare-fun m!3255859 () Bool)

(assert (=> b!2825724 m!3255859))

(declare-fun m!3255861 () Bool)

(assert (=> b!2825726 m!3255861))

(assert (=> b!2825597 d!820195))

(declare-fun d!820197 () Bool)

(declare-fun res!1175978 () Bool)

(declare-fun e!1788278 () Bool)

(assert (=> d!820197 (=> res!1175978 e!1788278)))

(assert (=> d!820197 (= res!1175978 (or (not (is-Cons!33187 (t!230942 l!6581))) (not (is-Cons!33187 (t!230942 (t!230942 l!6581))))))))

(assert (=> d!820197 (= (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (t!230942 l!6581) rules!4424) e!1788278)))

(declare-fun b!2825747 () Bool)

(declare-fun e!1788279 () Bool)

(assert (=> b!2825747 (= e!1788278 e!1788279)))

(declare-fun res!1175977 () Bool)

(assert (=> b!2825747 (=> (not res!1175977) (not e!1788279))))

(declare-fun separableTokensPredicate!907 (LexerInterface!4565 Token!9350 Token!9350 List!33310) Bool)

(assert (=> b!2825747 (= res!1175977 (separableTokensPredicate!907 thiss!27755 (h!38607 (t!230942 l!6581)) (h!38607 (t!230942 (t!230942 l!6581))) rules!4424))))

(declare-fun lt!1008191 () Unit!47215)

(declare-fun Unit!47220 () Unit!47215)

(assert (=> b!2825747 (= lt!1008191 Unit!47220)))

(declare-fun size!25849 (BalanceConc!20244) Int)

(declare-fun charsOf!3082 (Token!9350) BalanceConc!20244)

(assert (=> b!2825747 (> (size!25849 (charsOf!3082 (h!38607 (t!230942 (t!230942 l!6581))))) 0)))

(declare-fun lt!1008189 () Unit!47215)

(declare-fun Unit!47221 () Unit!47215)

(assert (=> b!2825747 (= lt!1008189 Unit!47221)))

(assert (=> b!2825747 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 (t!230942 l!6581))))))

(declare-fun lt!1008193 () Unit!47215)

(declare-fun Unit!47222 () Unit!47215)

(assert (=> b!2825747 (= lt!1008193 Unit!47222)))

(assert (=> b!2825747 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 l!6581)))))

(declare-fun lt!1008188 () Unit!47215)

(declare-fun lt!1008192 () Unit!47215)

(assert (=> b!2825747 (= lt!1008188 lt!1008192)))

(assert (=> b!2825747 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 (t!230942 l!6581))))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 (LexerInterface!4565 List!33310 List!33311 Token!9350) Unit!47215)

(assert (=> b!2825747 (= lt!1008192 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 (t!230942 l!6581) (h!38607 (t!230942 (t!230942 l!6581)))))))

(declare-fun lt!1008190 () Unit!47215)

(declare-fun lt!1008187 () Unit!47215)

(assert (=> b!2825747 (= lt!1008190 lt!1008187)))

(assert (=> b!2825747 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 l!6581)))))

(assert (=> b!2825747 (= lt!1008187 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 (t!230942 l!6581) (h!38607 (t!230942 l!6581))))))

(declare-fun b!2825748 () Bool)

(assert (=> b!2825748 (= e!1788279 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (Cons!33187 (h!38607 (t!230942 (t!230942 l!6581))) (t!230942 (t!230942 (t!230942 l!6581)))) rules!4424))))

(assert (= (and d!820197 (not res!1175978)) b!2825747))

(assert (= (and b!2825747 res!1175977) b!2825748))

(declare-fun m!3255873 () Bool)

(assert (=> b!2825747 m!3255873))

(declare-fun m!3255875 () Bool)

(assert (=> b!2825747 m!3255875))

(declare-fun m!3255877 () Bool)

(assert (=> b!2825747 m!3255877))

(declare-fun m!3255879 () Bool)

(assert (=> b!2825747 m!3255879))

(assert (=> b!2825747 m!3255849))

(assert (=> b!2825747 m!3255877))

(declare-fun m!3255881 () Bool)

(assert (=> b!2825747 m!3255881))

(declare-fun m!3255883 () Bool)

(assert (=> b!2825747 m!3255883))

(declare-fun m!3255885 () Bool)

(assert (=> b!2825748 m!3255885))

(assert (=> b!2825586 d!820197))

(declare-fun bs!517954 () Bool)

(declare-fun d!820203 () Bool)

(assert (= bs!517954 (and d!820203 b!2825599)))

(declare-fun lambda!103811 () Int)

(assert (=> bs!517954 (= (= thiss!27755 Lexer!4563) (= lambda!103811 lambda!103798))))

(declare-fun bs!517955 () Bool)

(assert (= bs!517955 (and d!820203 d!820191)))

(assert (=> bs!517955 (= lambda!103811 lambda!103806)))

(declare-fun b!2825753 () Bool)

(declare-fun e!1788284 () Bool)

(assert (=> b!2825753 (= e!1788284 true)))

(declare-fun b!2825752 () Bool)

(declare-fun e!1788283 () Bool)

(assert (=> b!2825752 (= e!1788283 e!1788284)))

(declare-fun b!2825751 () Bool)

(declare-fun e!1788282 () Bool)

(assert (=> b!2825751 (= e!1788282 e!1788283)))

(assert (=> d!820203 e!1788282))

(assert (= b!2825752 b!2825753))

(assert (= b!2825751 b!2825752))

(assert (= (and d!820203 (is-Cons!33186 rules!4424)) b!2825751))

(assert (=> b!2825753 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103811))))

(assert (=> b!2825753 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103811))))

(assert (=> d!820203 true))

(declare-fun lt!1008194 () Bool)

(assert (=> d!820203 (= lt!1008194 (forall!6804 (t!230942 lt!1008150) lambda!103811))))

(declare-fun e!1788281 () Bool)

(assert (=> d!820203 (= lt!1008194 e!1788281)))

(declare-fun res!1175979 () Bool)

(assert (=> d!820203 (=> res!1175979 e!1788281)))

(assert (=> d!820203 (= res!1175979 (not (is-Cons!33187 (t!230942 lt!1008150))))))

(assert (=> d!820203 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820203 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008150)) lt!1008194)))

(declare-fun b!2825749 () Bool)

(declare-fun e!1788280 () Bool)

(assert (=> b!2825749 (= e!1788281 e!1788280)))

(declare-fun res!1175980 () Bool)

(assert (=> b!2825749 (=> (not res!1175980) (not e!1788280))))

(assert (=> b!2825749 (= res!1175980 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 lt!1008150))))))

(declare-fun b!2825750 () Bool)

(assert (=> b!2825750 (= e!1788280 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 (t!230942 lt!1008150))))))

(assert (= (and d!820203 (not res!1175979)) b!2825749))

(assert (= (and b!2825749 res!1175980) b!2825750))

(declare-fun m!3255887 () Bool)

(assert (=> d!820203 m!3255887))

(assert (=> d!820203 m!3255755))

(declare-fun m!3255889 () Bool)

(assert (=> b!2825749 m!3255889))

(declare-fun m!3255891 () Bool)

(assert (=> b!2825750 m!3255891))

(assert (=> b!2825596 d!820203))

(declare-fun d!820205 () Bool)

(declare-fun res!1175982 () Bool)

(declare-fun e!1788285 () Bool)

(assert (=> d!820205 (=> res!1175982 e!1788285)))

(assert (=> d!820205 (= res!1175982 (or (not (is-Cons!33187 lt!1008150)) (not (is-Cons!33187 (t!230942 lt!1008150)))))))

(assert (=> d!820205 (= (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 lt!1008150 rules!4424) e!1788285)))

(declare-fun b!2825754 () Bool)

(declare-fun e!1788286 () Bool)

(assert (=> b!2825754 (= e!1788285 e!1788286)))

(declare-fun res!1175981 () Bool)

(assert (=> b!2825754 (=> (not res!1175981) (not e!1788286))))

(assert (=> b!2825754 (= res!1175981 (separableTokensPredicate!907 thiss!27755 (h!38607 lt!1008150) (h!38607 (t!230942 lt!1008150)) rules!4424))))

(declare-fun lt!1008201 () Unit!47215)

(declare-fun Unit!47223 () Unit!47215)

(assert (=> b!2825754 (= lt!1008201 Unit!47223)))

(assert (=> b!2825754 (> (size!25849 (charsOf!3082 (h!38607 (t!230942 lt!1008150)))) 0)))

(declare-fun lt!1008199 () Unit!47215)

(declare-fun Unit!47224 () Unit!47215)

(assert (=> b!2825754 (= lt!1008199 Unit!47224)))

(assert (=> b!2825754 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 lt!1008150)))))

(declare-fun lt!1008203 () Unit!47215)

(declare-fun Unit!47225 () Unit!47215)

(assert (=> b!2825754 (= lt!1008203 Unit!47225)))

(assert (=> b!2825754 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008150))))

(declare-fun lt!1008198 () Unit!47215)

(declare-fun lt!1008202 () Unit!47215)

(assert (=> b!2825754 (= lt!1008198 lt!1008202)))

(assert (=> b!2825754 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 lt!1008150)))))

(assert (=> b!2825754 (= lt!1008202 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 lt!1008150 (h!38607 (t!230942 lt!1008150))))))

(declare-fun lt!1008200 () Unit!47215)

(declare-fun lt!1008197 () Unit!47215)

(assert (=> b!2825754 (= lt!1008200 lt!1008197)))

(assert (=> b!2825754 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008150))))

(assert (=> b!2825754 (= lt!1008197 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 lt!1008150 (h!38607 lt!1008150)))))

(declare-fun b!2825755 () Bool)

(assert (=> b!2825755 (= e!1788286 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (Cons!33187 (h!38607 (t!230942 lt!1008150)) (t!230942 (t!230942 lt!1008150))) rules!4424))))

(assert (= (and d!820205 (not res!1175982)) b!2825754))

(assert (= (and b!2825754 res!1175981) b!2825755))

(declare-fun m!3255893 () Bool)

(assert (=> b!2825754 m!3255893))

(declare-fun m!3255895 () Bool)

(assert (=> b!2825754 m!3255895))

(declare-fun m!3255897 () Bool)

(assert (=> b!2825754 m!3255897))

(declare-fun m!3255899 () Bool)

(assert (=> b!2825754 m!3255899))

(assert (=> b!2825754 m!3255765))

(assert (=> b!2825754 m!3255897))

(declare-fun m!3255901 () Bool)

(assert (=> b!2825754 m!3255901))

(assert (=> b!2825754 m!3255889))

(declare-fun m!3255903 () Bool)

(assert (=> b!2825755 m!3255903))

(assert (=> b!2825598 d!820205))

(declare-fun d!820207 () Bool)

(assert (=> d!820207 (= (isEmpty!18355 rules!4424) (is-Nil!33186 rules!4424))))

(assert (=> b!2825587 d!820207))

(declare-fun d!820211 () Bool)

(assert (=> d!820211 (= (inv!45117 (tag!5478 (h!38606 rules!4424))) (= (mod (str.len (value!160054 (tag!5478 (h!38606 rules!4424)))) 2) 0))))

(assert (=> b!2825589 d!820211))

(declare-fun d!820213 () Bool)

(declare-fun res!1175989 () Bool)

(declare-fun e!1788299 () Bool)

(assert (=> d!820213 (=> (not res!1175989) (not e!1788299))))

(declare-fun semiInverseModEq!2067 (Int Int) Bool)

(assert (=> d!820213 (= res!1175989 (semiInverseModEq!2067 (toChars!6855 (transformation!4974 (h!38606 rules!4424))) (toValue!6996 (transformation!4974 (h!38606 rules!4424)))))))

(assert (=> d!820213 (= (inv!45120 (transformation!4974 (h!38606 rules!4424))) e!1788299)))

(declare-fun b!2825768 () Bool)

(declare-fun equivClasses!1966 (Int Int) Bool)

(assert (=> b!2825768 (= e!1788299 (equivClasses!1966 (toChars!6855 (transformation!4974 (h!38606 rules!4424))) (toValue!6996 (transformation!4974 (h!38606 rules!4424)))))))

(assert (= (and d!820213 res!1175989) b!2825768))

(declare-fun m!3255911 () Bool)

(assert (=> d!820213 m!3255911))

(declare-fun m!3255913 () Bool)

(assert (=> b!2825768 m!3255913))

(assert (=> b!2825589 d!820213))

(declare-fun bs!517964 () Bool)

(declare-fun d!820217 () Bool)

(assert (= bs!517964 (and d!820217 b!2825599)))

(declare-fun lambda!103814 () Int)

(assert (=> bs!517964 (= (= thiss!27755 Lexer!4563) (= lambda!103814 lambda!103798))))

(declare-fun bs!517965 () Bool)

(assert (= bs!517965 (and d!820217 d!820191)))

(assert (=> bs!517965 (= lambda!103814 lambda!103806)))

(declare-fun bs!517966 () Bool)

(assert (= bs!517966 (and d!820217 d!820203)))

(assert (=> bs!517966 (= lambda!103814 lambda!103811)))

(declare-fun b!2825773 () Bool)

(declare-fun e!1788304 () Bool)

(assert (=> b!2825773 (= e!1788304 true)))

(declare-fun b!2825772 () Bool)

(declare-fun e!1788303 () Bool)

(assert (=> b!2825772 (= e!1788303 e!1788304)))

(declare-fun b!2825771 () Bool)

(declare-fun e!1788302 () Bool)

(assert (=> b!2825771 (= e!1788302 e!1788303)))

(assert (=> d!820217 e!1788302))

(assert (= b!2825772 b!2825773))

(assert (= b!2825771 b!2825772))

(assert (= (and d!820217 (is-Cons!33186 rules!4424)) b!2825771))

(assert (=> b!2825773 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103814))))

(assert (=> b!2825773 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103814))))

(assert (=> d!820217 true))

(declare-fun lt!1008207 () Bool)

(assert (=> d!820217 (= lt!1008207 (forall!6804 lt!1008150 lambda!103814))))

(declare-fun e!1788301 () Bool)

(assert (=> d!820217 (= lt!1008207 e!1788301)))

(declare-fun res!1175990 () Bool)

(assert (=> d!820217 (=> res!1175990 e!1788301)))

(assert (=> d!820217 (= res!1175990 (not (is-Cons!33187 lt!1008150)))))

(assert (=> d!820217 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820217 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 lt!1008150) lt!1008207)))

(declare-fun b!2825769 () Bool)

(declare-fun e!1788300 () Bool)

(assert (=> b!2825769 (= e!1788301 e!1788300)))

(declare-fun res!1175991 () Bool)

(assert (=> b!2825769 (=> (not res!1175991) (not e!1788300))))

(assert (=> b!2825769 (= res!1175991 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008150)))))

(declare-fun b!2825770 () Bool)

(assert (=> b!2825770 (= e!1788300 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008150)))))

(assert (= (and d!820217 (not res!1175990)) b!2825769))

(assert (= (and b!2825769 res!1175991) b!2825770))

(declare-fun m!3255917 () Bool)

(assert (=> d!820217 m!3255917))

(assert (=> d!820217 m!3255755))

(assert (=> b!2825769 m!3255765))

(assert (=> b!2825770 m!3255781))

(assert (=> b!2825599 d!820217))

(declare-fun d!820221 () Bool)

(assert (=> d!820221 (forall!6804 lt!1008150 lambda!103798)))

(declare-fun lt!1008210 () Unit!47215)

(declare-fun choose!16694 (List!33311 List!33311 Int) Unit!47215)

(assert (=> d!820221 (= lt!1008210 (choose!16694 lt!1008150 (t!230942 l!6581) lambda!103798))))

(assert (=> d!820221 (forall!6804 (t!230942 l!6581) lambda!103798)))

(assert (=> d!820221 (= (lemmaForallSubseq!234 lt!1008150 (t!230942 l!6581) lambda!103798) lt!1008210)))

(declare-fun bs!517967 () Bool)

(assert (= bs!517967 d!820221))

(assert (=> bs!517967 m!3255741))

(declare-fun m!3255919 () Bool)

(assert (=> bs!517967 m!3255919))

(declare-fun m!3255921 () Bool)

(assert (=> bs!517967 m!3255921))

(assert (=> b!2825599 d!820221))

(declare-fun bs!517968 () Bool)

(declare-fun d!820223 () Bool)

(assert (= bs!517968 (and d!820223 b!2825599)))

(declare-fun lambda!103815 () Int)

(assert (=> bs!517968 (= (= thiss!27755 Lexer!4563) (= lambda!103815 lambda!103798))))

(declare-fun bs!517969 () Bool)

(assert (= bs!517969 (and d!820223 d!820191)))

(assert (=> bs!517969 (= lambda!103815 lambda!103806)))

(declare-fun bs!517970 () Bool)

(assert (= bs!517970 (and d!820223 d!820203)))

(assert (=> bs!517970 (= lambda!103815 lambda!103811)))

(declare-fun bs!517971 () Bool)

(assert (= bs!517971 (and d!820223 d!820217)))

(assert (=> bs!517971 (= lambda!103815 lambda!103814)))

(declare-fun b!2825778 () Bool)

(declare-fun e!1788309 () Bool)

(assert (=> b!2825778 (= e!1788309 true)))

(declare-fun b!2825777 () Bool)

(declare-fun e!1788308 () Bool)

(assert (=> b!2825777 (= e!1788308 e!1788309)))

(declare-fun b!2825776 () Bool)

(declare-fun e!1788307 () Bool)

(assert (=> b!2825776 (= e!1788307 e!1788308)))

(assert (=> d!820223 e!1788307))

(assert (= b!2825777 b!2825778))

(assert (= b!2825776 b!2825777))

(assert (= (and d!820223 (is-Cons!33186 rules!4424)) b!2825776))

(assert (=> b!2825778 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103815))))

(assert (=> b!2825778 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103815))))

(assert (=> d!820223 true))

(declare-fun lt!1008211 () Bool)

(assert (=> d!820223 (= lt!1008211 (forall!6804 lt!1008151 lambda!103815))))

(declare-fun e!1788306 () Bool)

(assert (=> d!820223 (= lt!1008211 e!1788306)))

(declare-fun res!1175992 () Bool)

(assert (=> d!820223 (=> res!1175992 e!1788306)))

(assert (=> d!820223 (= res!1175992 (not (is-Cons!33187 lt!1008151)))))

(assert (=> d!820223 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820223 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 lt!1008151) lt!1008211)))

(declare-fun b!2825774 () Bool)

(declare-fun e!1788305 () Bool)

(assert (=> b!2825774 (= e!1788306 e!1788305)))

(declare-fun res!1175993 () Bool)

(assert (=> b!2825774 (=> (not res!1175993) (not e!1788305))))

(assert (=> b!2825774 (= res!1175993 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008151)))))

(declare-fun b!2825775 () Bool)

(assert (=> b!2825775 (= e!1788305 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008151)))))

(assert (= (and d!820223 (not res!1175992)) b!2825774))

(assert (= (and b!2825774 res!1175993) b!2825775))

(declare-fun m!3255923 () Bool)

(assert (=> d!820223 m!3255923))

(assert (=> d!820223 m!3255755))

(assert (=> b!2825774 m!3255769))

(assert (=> b!2825775 m!3255771))

(assert (=> b!2825599 d!820223))

(declare-fun b!2825807 () Bool)

(declare-fun e!1788327 () Int)

(assert (=> b!2825807 (= e!1788327 0)))

(declare-fun b!2825808 () Bool)

(declare-fun e!1788328 () Bool)

(declare-fun lt!1008216 () List!33311)

(declare-fun size!25850 (List!33311) Int)

(assert (=> b!2825808 (= e!1788328 (= (size!25850 lt!1008216) e!1788327))))

(declare-fun c!457458 () Bool)

(assert (=> b!2825808 (= c!457458 (<= (- i!1730 1) 0))))

(declare-fun b!2825809 () Bool)

(declare-fun e!1788329 () List!33311)

(assert (=> b!2825809 (= e!1788329 Nil!33187)))

(declare-fun b!2825810 () Bool)

(declare-fun e!1788326 () Int)

(assert (=> b!2825810 (= e!1788327 e!1788326)))

(declare-fun c!457457 () Bool)

(assert (=> b!2825810 (= c!457457 (>= (- i!1730 1) (size!25850 (t!230942 l!6581))))))

(declare-fun b!2825811 () Bool)

(assert (=> b!2825811 (= e!1788326 (- i!1730 1))))

(declare-fun b!2825812 () Bool)

(assert (=> b!2825812 (= e!1788326 (size!25850 (t!230942 l!6581)))))

(declare-fun d!820225 () Bool)

(assert (=> d!820225 e!1788328))

(declare-fun res!1175998 () Bool)

(assert (=> d!820225 (=> (not res!1175998) (not e!1788328))))

(declare-fun content!4627 (List!33311) (Set Token!9350))

(assert (=> d!820225 (= res!1175998 (set.subset (content!4627 lt!1008216) (content!4627 (t!230942 l!6581))))))

(assert (=> d!820225 (= lt!1008216 e!1788329)))

(declare-fun c!457456 () Bool)

(assert (=> d!820225 (= c!457456 (or (is-Nil!33187 (t!230942 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!820225 (= (take!568 (t!230942 l!6581) (- i!1730 1)) lt!1008216)))

(declare-fun b!2825813 () Bool)

(assert (=> b!2825813 (= e!1788329 (Cons!33187 (h!38607 (t!230942 l!6581)) (take!568 (t!230942 (t!230942 l!6581)) (- (- i!1730 1) 1))))))

(assert (= (and d!820225 c!457456) b!2825809))

(assert (= (and d!820225 (not c!457456)) b!2825813))

(assert (= (and d!820225 res!1175998) b!2825808))

(assert (= (and b!2825808 c!457458) b!2825807))

(assert (= (and b!2825808 (not c!457458)) b!2825810))

(assert (= (and b!2825810 c!457457) b!2825812))

(assert (= (and b!2825810 (not c!457457)) b!2825811))

(declare-fun m!3255925 () Bool)

(assert (=> b!2825810 m!3255925))

(declare-fun m!3255927 () Bool)

(assert (=> b!2825813 m!3255927))

(assert (=> b!2825812 m!3255925))

(declare-fun m!3255929 () Bool)

(assert (=> d!820225 m!3255929))

(declare-fun m!3255931 () Bool)

(assert (=> d!820225 m!3255931))

(declare-fun m!3255933 () Bool)

(assert (=> b!2825808 m!3255933))

(assert (=> b!2825599 d!820225))

(declare-fun d!820227 () Bool)

(declare-fun res!1176004 () Bool)

(declare-fun e!1788338 () Bool)

(assert (=> d!820227 (=> res!1176004 e!1788338)))

(assert (=> d!820227 (= res!1176004 (is-Nil!33187 l!6581))))

(assert (=> d!820227 (= (forall!6804 l!6581 lambda!103798) e!1788338)))

(declare-fun b!2825825 () Bool)

(declare-fun e!1788339 () Bool)

(assert (=> b!2825825 (= e!1788338 e!1788339)))

(declare-fun res!1176005 () Bool)

(assert (=> b!2825825 (=> (not res!1176005) (not e!1788339))))

(declare-fun dynLambda!13941 (Int Token!9350) Bool)

(assert (=> b!2825825 (= res!1176005 (dynLambda!13941 lambda!103798 (h!38607 l!6581)))))

(declare-fun b!2825826 () Bool)

(assert (=> b!2825826 (= e!1788339 (forall!6804 (t!230942 l!6581) lambda!103798))))

(assert (= (and d!820227 (not res!1176004)) b!2825825))

(assert (= (and b!2825825 res!1176005) b!2825826))

(declare-fun b_lambda!84707 () Bool)

(assert (=> (not b_lambda!84707) (not b!2825825)))

(declare-fun m!3255935 () Bool)

(assert (=> b!2825825 m!3255935))

(assert (=> b!2825826 m!3255921))

(assert (=> b!2825599 d!820227))

(declare-fun bs!517972 () Bool)

(declare-fun b!2825852 () Bool)

(assert (= bs!517972 (and b!2825852 d!820217)))

(declare-fun lambda!103820 () Int)

(assert (=> bs!517972 (= (= Lexer!4563 thiss!27755) (= lambda!103820 lambda!103814))))

(declare-fun bs!517973 () Bool)

(assert (= bs!517973 (and b!2825852 b!2825599)))

(assert (=> bs!517973 (= lambda!103820 lambda!103798)))

(declare-fun bs!517974 () Bool)

(assert (= bs!517974 (and b!2825852 d!820223)))

(assert (=> bs!517974 (= (= Lexer!4563 thiss!27755) (= lambda!103820 lambda!103815))))

(declare-fun bs!517975 () Bool)

(assert (= bs!517975 (and b!2825852 d!820203)))

(assert (=> bs!517975 (= (= Lexer!4563 thiss!27755) (= lambda!103820 lambda!103811))))

(declare-fun bs!517976 () Bool)

(assert (= bs!517976 (and b!2825852 d!820191)))

(assert (=> bs!517976 (= (= Lexer!4563 thiss!27755) (= lambda!103820 lambda!103806))))

(declare-fun b!2825856 () Bool)

(declare-fun e!1788366 () Bool)

(assert (=> b!2825856 (= e!1788366 true)))

(declare-fun b!2825855 () Bool)

(declare-fun e!1788365 () Bool)

(assert (=> b!2825855 (= e!1788365 e!1788366)))

(declare-fun b!2825854 () Bool)

(declare-fun e!1788364 () Bool)

(assert (=> b!2825854 (= e!1788364 e!1788365)))

(assert (=> b!2825852 e!1788364))

(assert (= b!2825855 b!2825856))

(assert (= b!2825854 b!2825855))

(assert (= (and b!2825852 (is-Cons!33186 rules!4424)) b!2825854))

(assert (=> b!2825856 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103820))))

(assert (=> b!2825856 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103820))))

(declare-fun d!820229 () Bool)

(declare-fun e!1788361 () Bool)

(assert (=> d!820229 e!1788361))

(declare-fun res!1176025 () Bool)

(assert (=> d!820229 (=> (not res!1176025) (not e!1788361))))

(declare-fun e!1788363 () Bool)

(assert (=> d!820229 (= res!1176025 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (take!568 (t!230942 l!6581) (- i!1730 1))) e!1788363))))

(declare-fun res!1176024 () Bool)

(assert (=> d!820229 (=> res!1176024 e!1788363)))

(declare-fun lt!1008241 () List!33311)

(assert (=> d!820229 (= res!1176024 (not (is-Cons!33187 lt!1008241)))))

(assert (=> d!820229 (= lt!1008241 (take!568 (t!230942 l!6581) (- i!1730 1)))))

(declare-fun lt!1008238 () Unit!47215)

(declare-fun choose!16695 (LexerInterface!4565 List!33311 Int List!33310) Unit!47215)

(assert (=> d!820229 (= lt!1008238 (choose!16695 thiss!27755 (t!230942 l!6581) (- i!1730 1) rules!4424))))

(assert (=> d!820229 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820229 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!57 thiss!27755 (t!230942 l!6581) (- i!1730 1) rules!4424) lt!1008238)))

(declare-fun b!2825851 () Bool)

(declare-fun e!1788360 () Bool)

(assert (=> b!2825851 (= e!1788360 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008241)))))

(declare-fun b!2825850 () Bool)

(assert (=> b!2825850 (= e!1788363 e!1788360)))

(declare-fun res!1176023 () Bool)

(assert (=> b!2825850 (=> (not res!1176023) (not e!1788360))))

(assert (=> b!2825850 (= res!1176023 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008241)))))

(declare-fun b!2825853 () Bool)

(declare-fun e!1788362 () Bool)

(declare-fun lt!1008240 () List!33311)

(assert (=> b!2825853 (= e!1788362 (subseq!458 lt!1008240 (t!230942 l!6581)))))

(assert (=> b!2825852 (= e!1788361 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (take!568 (t!230942 l!6581) (- i!1730 1)) rules!4424))))

(declare-fun lt!1008239 () Unit!47215)

(declare-fun lt!1008237 () Unit!47215)

(assert (=> b!2825852 (= lt!1008239 lt!1008237)))

(assert (=> b!2825852 (forall!6804 lt!1008240 lambda!103820)))

(assert (=> b!2825852 (= lt!1008237 (lemmaForallSubseq!234 lt!1008240 (t!230942 l!6581) lambda!103820))))

(assert (=> b!2825852 e!1788362))

(declare-fun res!1176026 () Bool)

(assert (=> b!2825852 (=> (not res!1176026) (not e!1788362))))

(assert (=> b!2825852 (= res!1176026 (forall!6804 (t!230942 l!6581) lambda!103820))))

(assert (=> b!2825852 (= lt!1008240 (take!568 (t!230942 l!6581) (- i!1730 1)))))

(assert (= (and d!820229 (not res!1176024)) b!2825850))

(assert (= (and b!2825850 res!1176023) b!2825851))

(assert (= (and d!820229 res!1176025) b!2825852))

(assert (= (and b!2825852 res!1176026) b!2825853))

(assert (=> d!820229 m!3255745))

(assert (=> d!820229 m!3255745))

(declare-fun m!3255955 () Bool)

(assert (=> d!820229 m!3255955))

(declare-fun m!3255957 () Bool)

(assert (=> d!820229 m!3255957))

(assert (=> d!820229 m!3255755))

(declare-fun m!3255959 () Bool)

(assert (=> b!2825850 m!3255959))

(assert (=> b!2825852 m!3255745))

(declare-fun m!3255961 () Bool)

(assert (=> b!2825852 m!3255961))

(declare-fun m!3255963 () Bool)

(assert (=> b!2825852 m!3255963))

(assert (=> b!2825852 m!3255745))

(declare-fun m!3255965 () Bool)

(assert (=> b!2825852 m!3255965))

(declare-fun m!3255967 () Bool)

(assert (=> b!2825852 m!3255967))

(declare-fun m!3255969 () Bool)

(assert (=> b!2825853 m!3255969))

(declare-fun m!3255971 () Bool)

(assert (=> b!2825851 m!3255971))

(assert (=> b!2825599 d!820229))

(declare-fun b!2825857 () Bool)

(declare-fun e!1788368 () Int)

(assert (=> b!2825857 (= e!1788368 0)))

(declare-fun b!2825858 () Bool)

(declare-fun e!1788369 () Bool)

(declare-fun lt!1008244 () List!33311)

(assert (=> b!2825858 (= e!1788369 (= (size!25850 lt!1008244) e!1788368))))

(declare-fun c!457467 () Bool)

(assert (=> b!2825858 (= c!457467 (<= i!1730 0))))

(declare-fun b!2825859 () Bool)

(declare-fun e!1788370 () List!33311)

(assert (=> b!2825859 (= e!1788370 Nil!33187)))

(declare-fun b!2825860 () Bool)

(declare-fun e!1788367 () Int)

(assert (=> b!2825860 (= e!1788368 e!1788367)))

(declare-fun c!457466 () Bool)

(assert (=> b!2825860 (= c!457466 (>= i!1730 (size!25850 l!6581)))))

(declare-fun b!2825861 () Bool)

(assert (=> b!2825861 (= e!1788367 i!1730)))

(declare-fun b!2825862 () Bool)

(assert (=> b!2825862 (= e!1788367 (size!25850 l!6581))))

(declare-fun d!820235 () Bool)

(assert (=> d!820235 e!1788369))

(declare-fun res!1176027 () Bool)

(assert (=> d!820235 (=> (not res!1176027) (not e!1788369))))

(assert (=> d!820235 (= res!1176027 (set.subset (content!4627 lt!1008244) (content!4627 l!6581)))))

(assert (=> d!820235 (= lt!1008244 e!1788370)))

(declare-fun c!457465 () Bool)

(assert (=> d!820235 (= c!457465 (or (is-Nil!33187 l!6581) (<= i!1730 0)))))

(assert (=> d!820235 (= (take!568 l!6581 i!1730) lt!1008244)))

(declare-fun b!2825863 () Bool)

(assert (=> b!2825863 (= e!1788370 (Cons!33187 (h!38607 l!6581) (take!568 (t!230942 l!6581) (- i!1730 1))))))

(assert (= (and d!820235 c!457465) b!2825859))

(assert (= (and d!820235 (not c!457465)) b!2825863))

(assert (= (and d!820235 res!1176027) b!2825858))

(assert (= (and b!2825858 c!457467) b!2825857))

(assert (= (and b!2825858 (not c!457467)) b!2825860))

(assert (= (and b!2825860 c!457466) b!2825862))

(assert (= (and b!2825860 (not c!457466)) b!2825861))

(declare-fun m!3255973 () Bool)

(assert (=> b!2825860 m!3255973))

(assert (=> b!2825863 m!3255745))

(assert (=> b!2825862 m!3255973))

(declare-fun m!3255975 () Bool)

(assert (=> d!820235 m!3255975))

(declare-fun m!3255977 () Bool)

(assert (=> d!820235 m!3255977))

(declare-fun m!3255979 () Bool)

(assert (=> b!2825858 m!3255979))

(assert (=> b!2825599 d!820235))

(declare-fun d!820237 () Bool)

(declare-fun res!1176032 () Bool)

(declare-fun e!1788378 () Bool)

(assert (=> d!820237 (=> res!1176032 e!1788378)))

(assert (=> d!820237 (= res!1176032 (is-Nil!33187 lt!1008150))))

(assert (=> d!820237 (= (forall!6804 lt!1008150 lambda!103798) e!1788378)))

(declare-fun b!2825871 () Bool)

(declare-fun e!1788379 () Bool)

(assert (=> b!2825871 (= e!1788378 e!1788379)))

(declare-fun res!1176033 () Bool)

(assert (=> b!2825871 (=> (not res!1176033) (not e!1788379))))

(assert (=> b!2825871 (= res!1176033 (dynLambda!13941 lambda!103798 (h!38607 lt!1008150)))))

(declare-fun b!2825872 () Bool)

(assert (=> b!2825872 (= e!1788379 (forall!6804 (t!230942 lt!1008150) lambda!103798))))

(assert (= (and d!820237 (not res!1176032)) b!2825871))

(assert (= (and b!2825871 res!1176033) b!2825872))

(declare-fun b_lambda!84709 () Bool)

(assert (=> (not b_lambda!84709) (not b!2825871)))

(declare-fun m!3255981 () Bool)

(assert (=> b!2825871 m!3255981))

(declare-fun m!3255983 () Bool)

(assert (=> b!2825872 m!3255983))

(assert (=> b!2825599 d!820237))

(declare-fun b!2825887 () Bool)

(declare-fun e!1788397 () Bool)

(declare-fun e!1788394 () Bool)

(assert (=> b!2825887 (= e!1788397 e!1788394)))

(declare-fun res!1176051 () Bool)

(assert (=> b!2825887 (=> (not res!1176051) (not e!1788394))))

(assert (=> b!2825887 (= res!1176051 (is-Cons!33187 l!6581))))

(declare-fun b!2825889 () Bool)

(declare-fun e!1788395 () Bool)

(assert (=> b!2825889 (= e!1788395 (subseq!458 (t!230942 lt!1008151) (t!230942 l!6581)))))

(declare-fun d!820239 () Bool)

(declare-fun res!1176050 () Bool)

(assert (=> d!820239 (=> res!1176050 e!1788397)))

(assert (=> d!820239 (= res!1176050 (is-Nil!33187 lt!1008151))))

(assert (=> d!820239 (= (subseq!458 lt!1008151 l!6581) e!1788397)))

(declare-fun b!2825890 () Bool)

(declare-fun e!1788396 () Bool)

(assert (=> b!2825890 (= e!1788396 (subseq!458 lt!1008151 (t!230942 l!6581)))))

(declare-fun b!2825888 () Bool)

(assert (=> b!2825888 (= e!1788394 e!1788396)))

(declare-fun res!1176048 () Bool)

(assert (=> b!2825888 (=> res!1176048 e!1788396)))

(assert (=> b!2825888 (= res!1176048 e!1788395)))

(declare-fun res!1176049 () Bool)

(assert (=> b!2825888 (=> (not res!1176049) (not e!1788395))))

(assert (=> b!2825888 (= res!1176049 (= (h!38607 lt!1008151) (h!38607 l!6581)))))

(assert (= (and d!820239 (not res!1176050)) b!2825887))

(assert (= (and b!2825887 res!1176051) b!2825888))

(assert (= (and b!2825888 res!1176049) b!2825889))

(assert (= (and b!2825888 (not res!1176048)) b!2825890))

(declare-fun m!3256009 () Bool)

(assert (=> b!2825889 m!3256009))

(declare-fun m!3256011 () Bool)

(assert (=> b!2825890 m!3256011))

(assert (=> b!2825601 d!820239))

(declare-fun d!820247 () Bool)

(declare-fun lt!1008254 () Bool)

(declare-fun e!1788405 () Bool)

(assert (=> d!820247 (= lt!1008254 e!1788405)))

(declare-fun res!1176062 () Bool)

(assert (=> d!820247 (=> (not res!1176062) (not e!1788405))))

(declare-datatypes ((IArray!20615 0))(
  ( (IArray!20616 (innerList!10365 List!33311)) )
))
(declare-datatypes ((Conc!10305 0))(
  ( (Node!10305 (left!25079 Conc!10305) (right!25409 Conc!10305) (csize!20840 Int) (cheight!10516 Int)) (Leaf!15684 (xs!13417 IArray!20615) (csize!20841 Int)) (Empty!10305) )
))
(declare-datatypes ((BalanceConc!20248 0))(
  ( (BalanceConc!20249 (c!457474 Conc!10305)) )
))
(declare-fun list!12437 (BalanceConc!20248) List!33311)

(declare-datatypes ((tuple2!33418 0))(
  ( (tuple2!33419 (_1!19802 BalanceConc!20248) (_2!19802 BalanceConc!20244)) )
))
(declare-fun lex!2005 (LexerInterface!4565 List!33310 BalanceConc!20244) tuple2!33418)

(declare-fun print!1724 (LexerInterface!4565 BalanceConc!20248) BalanceConc!20244)

(declare-fun singletonSeq!2150 (Token!9350) BalanceConc!20248)

(assert (=> d!820247 (= res!1176062 (= (list!12437 (_1!19802 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008151)))))) (list!12437 (singletonSeq!2150 (h!38607 lt!1008151)))))))

(declare-fun e!1788404 () Bool)

(assert (=> d!820247 (= lt!1008254 e!1788404)))

(declare-fun res!1176061 () Bool)

(assert (=> d!820247 (=> (not res!1176061) (not e!1788404))))

(declare-fun lt!1008255 () tuple2!33418)

(declare-fun size!25851 (BalanceConc!20248) Int)

(assert (=> d!820247 (= res!1176061 (= (size!25851 (_1!19802 lt!1008255)) 1))))

(assert (=> d!820247 (= lt!1008255 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008151)))))))

(assert (=> d!820247 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820247 (= (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008151)) lt!1008254)))

(declare-fun b!2825899 () Bool)

(declare-fun res!1176060 () Bool)

(assert (=> b!2825899 (=> (not res!1176060) (not e!1788404))))

(declare-fun apply!7749 (BalanceConc!20248 Int) Token!9350)

(assert (=> b!2825899 (= res!1176060 (= (apply!7749 (_1!19802 lt!1008255) 0) (h!38607 lt!1008151)))))

(declare-fun b!2825900 () Bool)

(declare-fun isEmpty!18357 (BalanceConc!20244) Bool)

(assert (=> b!2825900 (= e!1788404 (isEmpty!18357 (_2!19802 lt!1008255)))))

(declare-fun b!2825901 () Bool)

(assert (=> b!2825901 (= e!1788405 (isEmpty!18357 (_2!19802 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008151)))))))))

(assert (= (and d!820247 res!1176061) b!2825899))

(assert (= (and b!2825899 res!1176060) b!2825900))

(assert (= (and d!820247 res!1176062) b!2825901))

(declare-fun m!3256013 () Bool)

(assert (=> d!820247 m!3256013))

(assert (=> d!820247 m!3255755))

(declare-fun m!3256015 () Bool)

(assert (=> d!820247 m!3256015))

(declare-fun m!3256017 () Bool)

(assert (=> d!820247 m!3256017))

(declare-fun m!3256019 () Bool)

(assert (=> d!820247 m!3256019))

(assert (=> d!820247 m!3256015))

(declare-fun m!3256021 () Bool)

(assert (=> d!820247 m!3256021))

(assert (=> d!820247 m!3256019))

(assert (=> d!820247 m!3256019))

(declare-fun m!3256023 () Bool)

(assert (=> d!820247 m!3256023))

(declare-fun m!3256025 () Bool)

(assert (=> b!2825899 m!3256025))

(declare-fun m!3256027 () Bool)

(assert (=> b!2825900 m!3256027))

(assert (=> b!2825901 m!3256019))

(assert (=> b!2825901 m!3256019))

(assert (=> b!2825901 m!3256015))

(assert (=> b!2825901 m!3256015))

(assert (=> b!2825901 m!3256017))

(declare-fun m!3256029 () Bool)

(assert (=> b!2825901 m!3256029))

(assert (=> b!2825600 d!820247))

(declare-fun bs!517982 () Bool)

(declare-fun d!820249 () Bool)

(assert (= bs!517982 (and d!820249 d!820217)))

(declare-fun lambda!103822 () Int)

(assert (=> bs!517982 (= lambda!103822 lambda!103814)))

(declare-fun bs!517983 () Bool)

(assert (= bs!517983 (and d!820249 b!2825599)))

(assert (=> bs!517983 (= (= thiss!27755 Lexer!4563) (= lambda!103822 lambda!103798))))

(declare-fun bs!517984 () Bool)

(assert (= bs!517984 (and d!820249 b!2825852)))

(assert (=> bs!517984 (= (= thiss!27755 Lexer!4563) (= lambda!103822 lambda!103820))))

(declare-fun bs!517985 () Bool)

(assert (= bs!517985 (and d!820249 d!820223)))

(assert (=> bs!517985 (= lambda!103822 lambda!103815)))

(declare-fun bs!517986 () Bool)

(assert (= bs!517986 (and d!820249 d!820203)))

(assert (=> bs!517986 (= lambda!103822 lambda!103811)))

(declare-fun bs!517987 () Bool)

(assert (= bs!517987 (and d!820249 d!820191)))

(assert (=> bs!517987 (= lambda!103822 lambda!103806)))

(declare-fun b!2825906 () Bool)

(declare-fun e!1788410 () Bool)

(assert (=> b!2825906 (= e!1788410 true)))

(declare-fun b!2825905 () Bool)

(declare-fun e!1788409 () Bool)

(assert (=> b!2825905 (= e!1788409 e!1788410)))

(declare-fun b!2825904 () Bool)

(declare-fun e!1788408 () Bool)

(assert (=> b!2825904 (= e!1788408 e!1788409)))

(assert (=> d!820249 e!1788408))

(assert (= b!2825905 b!2825906))

(assert (= b!2825904 b!2825905))

(assert (= (and d!820249 (is-Cons!33186 rules!4424)) b!2825904))

(assert (=> b!2825906 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103822))))

(assert (=> b!2825906 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103822))))

(assert (=> d!820249 true))

(declare-fun lt!1008256 () Bool)

(assert (=> d!820249 (= lt!1008256 (forall!6804 l!6581 lambda!103822))))

(declare-fun e!1788407 () Bool)

(assert (=> d!820249 (= lt!1008256 e!1788407)))

(declare-fun res!1176063 () Bool)

(assert (=> d!820249 (=> res!1176063 e!1788407)))

(assert (=> d!820249 (= res!1176063 (not (is-Cons!33187 l!6581)))))

(assert (=> d!820249 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820249 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 l!6581) lt!1008256)))

(declare-fun b!2825902 () Bool)

(declare-fun e!1788406 () Bool)

(assert (=> b!2825902 (= e!1788407 e!1788406)))

(declare-fun res!1176064 () Bool)

(assert (=> b!2825902 (=> (not res!1176064) (not e!1788406))))

(assert (=> b!2825902 (= res!1176064 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 l!6581)))))

(declare-fun b!2825903 () Bool)

(assert (=> b!2825903 (= e!1788406 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 l!6581)))))

(assert (= (and d!820249 (not res!1176063)) b!2825902))

(assert (= (and b!2825902 res!1176064) b!2825903))

(declare-fun m!3256031 () Bool)

(assert (=> d!820249 m!3256031))

(assert (=> d!820249 m!3255755))

(declare-fun m!3256033 () Bool)

(assert (=> b!2825902 m!3256033))

(assert (=> b!2825903 m!3255735))

(assert (=> b!2825602 d!820249))

(declare-fun d!820251 () Bool)

(assert (=> d!820251 (= (inv!45117 (tag!5478 (rule!7402 (h!38607 l!6581)))) (= (mod (str.len (value!160054 (tag!5478 (rule!7402 (h!38607 l!6581))))) 2) 0))))

(assert (=> b!2825591 d!820251))

(declare-fun d!820253 () Bool)

(declare-fun res!1176065 () Bool)

(declare-fun e!1788411 () Bool)

(assert (=> d!820253 (=> (not res!1176065) (not e!1788411))))

(assert (=> d!820253 (= res!1176065 (semiInverseModEq!2067 (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (toValue!6996 (transformation!4974 (rule!7402 (h!38607 l!6581))))))))

(assert (=> d!820253 (= (inv!45120 (transformation!4974 (rule!7402 (h!38607 l!6581)))) e!1788411)))

(declare-fun b!2825907 () Bool)

(assert (=> b!2825907 (= e!1788411 (equivClasses!1966 (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (toValue!6996 (transformation!4974 (rule!7402 (h!38607 l!6581))))))))

(assert (= (and d!820253 res!1176065) b!2825907))

(declare-fun m!3256035 () Bool)

(assert (=> d!820253 m!3256035))

(declare-fun m!3256037 () Bool)

(assert (=> b!2825907 m!3256037))

(assert (=> b!2825591 d!820253))

(declare-fun bs!517988 () Bool)

(declare-fun d!820255 () Bool)

(assert (= bs!517988 (and d!820255 d!820217)))

(declare-fun lambda!103823 () Int)

(assert (=> bs!517988 (= lambda!103823 lambda!103814)))

(declare-fun bs!517989 () Bool)

(assert (= bs!517989 (and d!820255 b!2825599)))

(assert (=> bs!517989 (= (= thiss!27755 Lexer!4563) (= lambda!103823 lambda!103798))))

(declare-fun bs!517990 () Bool)

(assert (= bs!517990 (and d!820255 d!820249)))

(assert (=> bs!517990 (= lambda!103823 lambda!103822)))

(declare-fun bs!517991 () Bool)

(assert (= bs!517991 (and d!820255 b!2825852)))

(assert (=> bs!517991 (= (= thiss!27755 Lexer!4563) (= lambda!103823 lambda!103820))))

(declare-fun bs!517992 () Bool)

(assert (= bs!517992 (and d!820255 d!820223)))

(assert (=> bs!517992 (= lambda!103823 lambda!103815)))

(declare-fun bs!517993 () Bool)

(assert (= bs!517993 (and d!820255 d!820203)))

(assert (=> bs!517993 (= lambda!103823 lambda!103811)))

(declare-fun bs!517994 () Bool)

(assert (= bs!517994 (and d!820255 d!820191)))

(assert (=> bs!517994 (= lambda!103823 lambda!103806)))

(declare-fun b!2825912 () Bool)

(declare-fun e!1788416 () Bool)

(assert (=> b!2825912 (= e!1788416 true)))

(declare-fun b!2825911 () Bool)

(declare-fun e!1788415 () Bool)

(assert (=> b!2825911 (= e!1788415 e!1788416)))

(declare-fun b!2825910 () Bool)

(declare-fun e!1788414 () Bool)

(assert (=> b!2825910 (= e!1788414 e!1788415)))

(assert (=> d!820255 e!1788414))

(assert (= b!2825911 b!2825912))

(assert (= b!2825910 b!2825911))

(assert (= (and d!820255 (is-Cons!33186 rules!4424)) b!2825910))

(assert (=> b!2825912 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103823))))

(assert (=> b!2825912 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 rules!4424)))) (dynLambda!13936 order!17699 lambda!103823))))

(assert (=> d!820255 true))

(declare-fun lt!1008257 () Bool)

(assert (=> d!820255 (= lt!1008257 (forall!6804 (t!230942 lt!1008151) lambda!103823))))

(declare-fun e!1788413 () Bool)

(assert (=> d!820255 (= lt!1008257 e!1788413)))

(declare-fun res!1176066 () Bool)

(assert (=> d!820255 (=> res!1176066 e!1788413)))

(assert (=> d!820255 (= res!1176066 (not (is-Cons!33187 (t!230942 lt!1008151))))))

(assert (=> d!820255 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820255 (= (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 lt!1008151)) lt!1008257)))

(declare-fun b!2825908 () Bool)

(declare-fun e!1788412 () Bool)

(assert (=> b!2825908 (= e!1788413 e!1788412)))

(declare-fun res!1176067 () Bool)

(assert (=> b!2825908 (=> (not res!1176067) (not e!1788412))))

(assert (=> b!2825908 (= res!1176067 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 lt!1008151))))))

(declare-fun b!2825909 () Bool)

(assert (=> b!2825909 (= e!1788412 (rulesProduceEachTokenIndividuallyList!1617 thiss!27755 rules!4424 (t!230942 (t!230942 lt!1008151))))))

(assert (= (and d!820255 (not res!1176066)) b!2825908))

(assert (= (and b!2825908 res!1176067) b!2825909))

(declare-fun m!3256039 () Bool)

(assert (=> d!820255 m!3256039))

(assert (=> d!820255 m!3255755))

(declare-fun m!3256041 () Bool)

(assert (=> b!2825908 m!3256041))

(declare-fun m!3256043 () Bool)

(assert (=> b!2825909 m!3256043))

(assert (=> b!2825603 d!820255))

(declare-fun d!820257 () Bool)

(declare-fun res!1176071 () Bool)

(declare-fun e!1788419 () Bool)

(assert (=> d!820257 (=> res!1176071 e!1788419)))

(assert (=> d!820257 (= res!1176071 (or (not (is-Cons!33187 l!6581)) (not (is-Cons!33187 (t!230942 l!6581)))))))

(assert (=> d!820257 (= (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 l!6581 rules!4424) e!1788419)))

(declare-fun b!2825915 () Bool)

(declare-fun e!1788420 () Bool)

(assert (=> b!2825915 (= e!1788419 e!1788420)))

(declare-fun res!1176070 () Bool)

(assert (=> b!2825915 (=> (not res!1176070) (not e!1788420))))

(assert (=> b!2825915 (= res!1176070 (separableTokensPredicate!907 thiss!27755 (h!38607 l!6581) (h!38607 (t!230942 l!6581)) rules!4424))))

(declare-fun lt!1008274 () Unit!47215)

(declare-fun Unit!47226 () Unit!47215)

(assert (=> b!2825915 (= lt!1008274 Unit!47226)))

(assert (=> b!2825915 (> (size!25849 (charsOf!3082 (h!38607 (t!230942 l!6581)))) 0)))

(declare-fun lt!1008272 () Unit!47215)

(declare-fun Unit!47227 () Unit!47215)

(assert (=> b!2825915 (= lt!1008272 Unit!47227)))

(assert (=> b!2825915 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 l!6581)))))

(declare-fun lt!1008276 () Unit!47215)

(declare-fun Unit!47228 () Unit!47215)

(assert (=> b!2825915 (= lt!1008276 Unit!47228)))

(assert (=> b!2825915 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 l!6581))))

(declare-fun lt!1008271 () Unit!47215)

(declare-fun lt!1008275 () Unit!47215)

(assert (=> b!2825915 (= lt!1008271 lt!1008275)))

(assert (=> b!2825915 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 (t!230942 l!6581)))))

(assert (=> b!2825915 (= lt!1008275 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 l!6581 (h!38607 (t!230942 l!6581))))))

(declare-fun lt!1008273 () Unit!47215)

(declare-fun lt!1008270 () Unit!47215)

(assert (=> b!2825915 (= lt!1008273 lt!1008270)))

(assert (=> b!2825915 (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 l!6581))))

(assert (=> b!2825915 (= lt!1008270 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!721 thiss!27755 rules!4424 l!6581 (h!38607 l!6581)))))

(declare-fun b!2825916 () Bool)

(assert (=> b!2825916 (= e!1788420 (tokensListTwoByTwoPredicateSeparableList!702 thiss!27755 (Cons!33187 (h!38607 (t!230942 l!6581)) (t!230942 (t!230942 l!6581))) rules!4424))))

(assert (= (and d!820257 (not res!1176071)) b!2825915))

(assert (= (and b!2825915 res!1176070) b!2825916))

(declare-fun m!3256045 () Bool)

(assert (=> b!2825915 m!3256045))

(declare-fun m!3256047 () Bool)

(assert (=> b!2825915 m!3256047))

(declare-fun m!3256049 () Bool)

(assert (=> b!2825915 m!3256049))

(declare-fun m!3256051 () Bool)

(assert (=> b!2825915 m!3256051))

(assert (=> b!2825915 m!3256033))

(assert (=> b!2825915 m!3256049))

(declare-fun m!3256053 () Bool)

(assert (=> b!2825915 m!3256053))

(assert (=> b!2825915 m!3255849))

(declare-fun m!3256055 () Bool)

(assert (=> b!2825916 m!3256055))

(assert (=> b!2825592 d!820257))

(declare-fun d!820259 () Bool)

(declare-fun res!1176080 () Bool)

(declare-fun e!1788427 () Bool)

(assert (=> d!820259 (=> (not res!1176080) (not e!1788427))))

(declare-fun isEmpty!18358 (List!33309) Bool)

(assert (=> d!820259 (= res!1176080 (not (isEmpty!18358 (originalCharacters!5706 (h!38607 l!6581)))))))

(assert (=> d!820259 (= (inv!45121 (h!38607 l!6581)) e!1788427)))

(declare-fun b!2825925 () Bool)

(declare-fun res!1176081 () Bool)

(assert (=> b!2825925 (=> (not res!1176081) (not e!1788427))))

(declare-fun list!12438 (BalanceConc!20244) List!33309)

(declare-fun dynLambda!13943 (Int TokenValue!5204) BalanceConc!20244)

(assert (=> b!2825925 (= res!1176081 (= (originalCharacters!5706 (h!38607 l!6581)) (list!12438 (dynLambda!13943 (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (value!160080 (h!38607 l!6581))))))))

(declare-fun b!2825926 () Bool)

(declare-fun size!25854 (List!33309) Int)

(assert (=> b!2825926 (= e!1788427 (= (size!25847 (h!38607 l!6581)) (size!25854 (originalCharacters!5706 (h!38607 l!6581)))))))

(assert (= (and d!820259 res!1176080) b!2825925))

(assert (= (and b!2825925 res!1176081) b!2825926))

(declare-fun b_lambda!84715 () Bool)

(assert (=> (not b_lambda!84715) (not b!2825925)))

(declare-fun t!230961 () Bool)

(declare-fun tb!154021 () Bool)

(assert (=> (and b!2825590 (= (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581))))) t!230961) tb!154021))

(declare-fun b!2825934 () Bool)

(declare-fun e!1788433 () Bool)

(declare-fun tp!902543 () Bool)

(declare-fun inv!45124 (Conc!10303) Bool)

(assert (=> b!2825934 (= e!1788433 (and (inv!45124 (c!457434 (dynLambda!13943 (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (value!160080 (h!38607 l!6581))))) tp!902543))))

(declare-fun result!191878 () Bool)

(declare-fun inv!45125 (BalanceConc!20244) Bool)

(assert (=> tb!154021 (= result!191878 (and (inv!45125 (dynLambda!13943 (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))) (value!160080 (h!38607 l!6581)))) e!1788433))))

(assert (= tb!154021 b!2825934))

(declare-fun m!3256085 () Bool)

(assert (=> b!2825934 m!3256085))

(declare-fun m!3256087 () Bool)

(assert (=> tb!154021 m!3256087))

(assert (=> b!2825925 t!230961))

(declare-fun b_and!206527 () Bool)

(assert (= b_and!206513 (and (=> t!230961 result!191878) b_and!206527)))

(declare-fun t!230963 () Bool)

(declare-fun tb!154023 () Bool)

(assert (=> (and b!2825593 (= (toChars!6855 (transformation!4974 (h!38606 rules!4424))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581))))) t!230963) tb!154023))

(declare-fun result!191882 () Bool)

(assert (= result!191882 result!191878))

(assert (=> b!2825925 t!230963))

(declare-fun b_and!206529 () Bool)

(assert (= b_and!206517 (and (=> t!230963 result!191882) b_and!206529)))

(declare-fun m!3256091 () Bool)

(assert (=> d!820259 m!3256091))

(declare-fun m!3256093 () Bool)

(assert (=> b!2825925 m!3256093))

(assert (=> b!2825925 m!3256093))

(declare-fun m!3256095 () Bool)

(assert (=> b!2825925 m!3256095))

(declare-fun m!3256097 () Bool)

(assert (=> b!2825926 m!3256097))

(assert (=> b!2825605 d!820259))

(declare-fun d!820271 () Bool)

(declare-fun lt!1008293 () Bool)

(declare-fun e!1788435 () Bool)

(assert (=> d!820271 (= lt!1008293 e!1788435)))

(declare-fun res!1176087 () Bool)

(assert (=> d!820271 (=> (not res!1176087) (not e!1788435))))

(assert (=> d!820271 (= res!1176087 (= (list!12437 (_1!19802 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008150)))))) (list!12437 (singletonSeq!2150 (h!38607 lt!1008150)))))))

(declare-fun e!1788434 () Bool)

(assert (=> d!820271 (= lt!1008293 e!1788434)))

(declare-fun res!1176086 () Bool)

(assert (=> d!820271 (=> (not res!1176086) (not e!1788434))))

(declare-fun lt!1008294 () tuple2!33418)

(assert (=> d!820271 (= res!1176086 (= (size!25851 (_1!19802 lt!1008294)) 1))))

(assert (=> d!820271 (= lt!1008294 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008150)))))))

(assert (=> d!820271 (not (isEmpty!18355 rules!4424))))

(assert (=> d!820271 (= (rulesProduceIndividualToken!2103 thiss!27755 rules!4424 (h!38607 lt!1008150)) lt!1008293)))

(declare-fun b!2825935 () Bool)

(declare-fun res!1176085 () Bool)

(assert (=> b!2825935 (=> (not res!1176085) (not e!1788434))))

(assert (=> b!2825935 (= res!1176085 (= (apply!7749 (_1!19802 lt!1008294) 0) (h!38607 lt!1008150)))))

(declare-fun b!2825936 () Bool)

(assert (=> b!2825936 (= e!1788434 (isEmpty!18357 (_2!19802 lt!1008294)))))

(declare-fun b!2825937 () Bool)

(assert (=> b!2825937 (= e!1788435 (isEmpty!18357 (_2!19802 (lex!2005 thiss!27755 rules!4424 (print!1724 thiss!27755 (singletonSeq!2150 (h!38607 lt!1008150)))))))))

(assert (= (and d!820271 res!1176086) b!2825935))

(assert (= (and b!2825935 res!1176085) b!2825936))

(assert (= (and d!820271 res!1176087) b!2825937))

(declare-fun m!3256099 () Bool)

(assert (=> d!820271 m!3256099))

(assert (=> d!820271 m!3255755))

(declare-fun m!3256101 () Bool)

(assert (=> d!820271 m!3256101))

(declare-fun m!3256103 () Bool)

(assert (=> d!820271 m!3256103))

(declare-fun m!3256105 () Bool)

(assert (=> d!820271 m!3256105))

(assert (=> d!820271 m!3256101))

(declare-fun m!3256107 () Bool)

(assert (=> d!820271 m!3256107))

(assert (=> d!820271 m!3256105))

(assert (=> d!820271 m!3256105))

(declare-fun m!3256109 () Bool)

(assert (=> d!820271 m!3256109))

(declare-fun m!3256111 () Bool)

(assert (=> b!2825935 m!3256111))

(declare-fun m!3256113 () Bool)

(assert (=> b!2825936 m!3256113))

(assert (=> b!2825937 m!3256105))

(assert (=> b!2825937 m!3256105))

(assert (=> b!2825937 m!3256101))

(assert (=> b!2825937 m!3256101))

(assert (=> b!2825937 m!3256103))

(declare-fun m!3256115 () Bool)

(assert (=> b!2825937 m!3256115))

(assert (=> b!2825604 d!820271))

(declare-fun b!2825944 () Bool)

(declare-fun e!1788440 () Bool)

(declare-fun tp_is_empty!14481 () Bool)

(declare-fun tp!902546 () Bool)

(assert (=> b!2825944 (= e!1788440 (and tp_is_empty!14481 tp!902546))))

(assert (=> b!2825597 (= tp!902508 e!1788440)))

(assert (= (and b!2825597 (is-Cons!33185 (originalCharacters!5706 (h!38607 l!6581)))) b!2825944))

(declare-fun b!2825962 () Bool)

(declare-fun e!1788449 () Bool)

(declare-fun tp!902559 () Bool)

(declare-fun tp!902561 () Bool)

(assert (=> b!2825962 (= e!1788449 (and tp!902559 tp!902561))))

(assert (=> b!2825589 (= tp!902506 e!1788449)))

(declare-fun b!2825963 () Bool)

(declare-fun tp!902560 () Bool)

(assert (=> b!2825963 (= e!1788449 tp!902560)))

(declare-fun b!2825961 () Bool)

(assert (=> b!2825961 (= e!1788449 tp_is_empty!14481)))

(declare-fun b!2825964 () Bool)

(declare-fun tp!902557 () Bool)

(declare-fun tp!902558 () Bool)

(assert (=> b!2825964 (= e!1788449 (and tp!902557 tp!902558))))

(assert (= (and b!2825589 (is-ElementMatch!8364 (regex!4974 (h!38606 rules!4424)))) b!2825961))

(assert (= (and b!2825589 (is-Concat!13569 (regex!4974 (h!38606 rules!4424)))) b!2825962))

(assert (= (and b!2825589 (is-Star!8364 (regex!4974 (h!38606 rules!4424)))) b!2825963))

(assert (= (and b!2825589 (is-Union!8364 (regex!4974 (h!38606 rules!4424)))) b!2825964))

(declare-fun b!2825984 () Bool)

(declare-fun b_free!81005 () Bool)

(declare-fun b_next!81709 () Bool)

(assert (=> b!2825984 (= b_free!81005 (not b_next!81709))))

(declare-fun tp!902572 () Bool)

(declare-fun b_and!206531 () Bool)

(assert (=> b!2825984 (= tp!902572 b_and!206531)))

(declare-fun b_free!81007 () Bool)

(declare-fun b_next!81711 () Bool)

(assert (=> b!2825984 (= b_free!81007 (not b_next!81711))))

(declare-fun t!230965 () Bool)

(declare-fun tb!154025 () Bool)

(assert (=> (and b!2825984 (= (toChars!6855 (transformation!4974 (h!38606 (t!230941 rules!4424)))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581))))) t!230965) tb!154025))

(declare-fun result!191890 () Bool)

(assert (= result!191890 result!191878))

(assert (=> b!2825925 t!230965))

(declare-fun b_and!206533 () Bool)

(declare-fun tp!902573 () Bool)

(assert (=> b!2825984 (= tp!902573 (and (=> t!230965 result!191890) b_and!206533))))

(declare-fun e!1788469 () Bool)

(assert (=> b!2825984 (= e!1788469 (and tp!902572 tp!902573))))

(declare-fun tp!902570 () Bool)

(declare-fun b!2825983 () Bool)

(declare-fun e!1788468 () Bool)

(assert (=> b!2825983 (= e!1788468 (and tp!902570 (inv!45117 (tag!5478 (h!38606 (t!230941 rules!4424)))) (inv!45120 (transformation!4974 (h!38606 (t!230941 rules!4424)))) e!1788469))))

(declare-fun b!2825982 () Bool)

(declare-fun e!1788470 () Bool)

(declare-fun tp!902571 () Bool)

(assert (=> b!2825982 (= e!1788470 (and e!1788468 tp!902571))))

(assert (=> b!2825588 (= tp!902510 e!1788470)))

(assert (= b!2825983 b!2825984))

(assert (= b!2825982 b!2825983))

(assert (= (and b!2825588 (is-Cons!33186 (t!230941 rules!4424))) b!2825982))

(declare-fun m!3256127 () Bool)

(assert (=> b!2825983 m!3256127))

(declare-fun m!3256129 () Bool)

(assert (=> b!2825983 m!3256129))

(declare-fun b!2825988 () Bool)

(declare-fun e!1788473 () Bool)

(declare-fun tp!902576 () Bool)

(declare-fun tp!902578 () Bool)

(assert (=> b!2825988 (= e!1788473 (and tp!902576 tp!902578))))

(assert (=> b!2825591 (= tp!902505 e!1788473)))

(declare-fun b!2825989 () Bool)

(declare-fun tp!902577 () Bool)

(assert (=> b!2825989 (= e!1788473 tp!902577)))

(declare-fun b!2825987 () Bool)

(assert (=> b!2825987 (= e!1788473 tp_is_empty!14481)))

(declare-fun b!2825990 () Bool)

(declare-fun tp!902574 () Bool)

(declare-fun tp!902575 () Bool)

(assert (=> b!2825990 (= e!1788473 (and tp!902574 tp!902575))))

(assert (= (and b!2825591 (is-ElementMatch!8364 (regex!4974 (rule!7402 (h!38607 l!6581))))) b!2825987))

(assert (= (and b!2825591 (is-Concat!13569 (regex!4974 (rule!7402 (h!38607 l!6581))))) b!2825988))

(assert (= (and b!2825591 (is-Star!8364 (regex!4974 (rule!7402 (h!38607 l!6581))))) b!2825989))

(assert (= (and b!2825591 (is-Union!8364 (regex!4974 (rule!7402 (h!38607 l!6581))))) b!2825990))

(declare-fun b!2826007 () Bool)

(declare-fun b_free!81009 () Bool)

(declare-fun b_next!81713 () Bool)

(assert (=> b!2826007 (= b_free!81009 (not b_next!81713))))

(declare-fun tp!902591 () Bool)

(declare-fun b_and!206535 () Bool)

(assert (=> b!2826007 (= tp!902591 b_and!206535)))

(declare-fun b_free!81011 () Bool)

(declare-fun b_next!81715 () Bool)

(assert (=> b!2826007 (= b_free!81011 (not b_next!81715))))

(declare-fun t!230967 () Bool)

(declare-fun tb!154027 () Bool)

(assert (=> (and b!2826007 (= (toChars!6855 (transformation!4974 (rule!7402 (h!38607 (t!230942 l!6581))))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581))))) t!230967) tb!154027))

(declare-fun result!191894 () Bool)

(assert (= result!191894 result!191878))

(assert (=> b!2825925 t!230967))

(declare-fun b_and!206537 () Bool)

(declare-fun tp!902593 () Bool)

(assert (=> b!2826007 (= tp!902593 (and (=> t!230967 result!191894) b_and!206537))))

(declare-fun e!1788492 () Bool)

(assert (=> b!2826007 (= e!1788492 (and tp!902591 tp!902593))))

(declare-fun e!1788490 () Bool)

(assert (=> b!2825605 (= tp!902511 e!1788490)))

(declare-fun tp!902589 () Bool)

(declare-fun b!2826004 () Bool)

(declare-fun e!1788491 () Bool)

(assert (=> b!2826004 (= e!1788490 (and (inv!45121 (h!38607 (t!230942 l!6581))) e!1788491 tp!902589))))

(declare-fun tp!902592 () Bool)

(declare-fun b!2826005 () Bool)

(declare-fun e!1788494 () Bool)

(assert (=> b!2826005 (= e!1788491 (and (inv!21 (value!160080 (h!38607 (t!230942 l!6581)))) e!1788494 tp!902592))))

(declare-fun tp!902590 () Bool)

(declare-fun b!2826006 () Bool)

(assert (=> b!2826006 (= e!1788494 (and tp!902590 (inv!45117 (tag!5478 (rule!7402 (h!38607 (t!230942 l!6581))))) (inv!45120 (transformation!4974 (rule!7402 (h!38607 (t!230942 l!6581))))) e!1788492))))

(assert (= b!2826006 b!2826007))

(assert (= b!2826005 b!2826006))

(assert (= b!2826004 b!2826005))

(assert (= (and b!2825605 (is-Cons!33187 (t!230942 l!6581))) b!2826004))

(declare-fun m!3256137 () Bool)

(assert (=> b!2826004 m!3256137))

(declare-fun m!3256139 () Bool)

(assert (=> b!2826005 m!3256139))

(declare-fun m!3256141 () Bool)

(assert (=> b!2826006 m!3256141))

(declare-fun m!3256143 () Bool)

(assert (=> b!2826006 m!3256143))

(declare-fun b!2826014 () Bool)

(declare-fun e!1788499 () Bool)

(assert (=> b!2826014 (= e!1788499 true)))

(declare-fun b!2826013 () Bool)

(declare-fun e!1788498 () Bool)

(assert (=> b!2826013 (= e!1788498 e!1788499)))

(declare-fun b!2826012 () Bool)

(declare-fun e!1788497 () Bool)

(assert (=> b!2826012 (= e!1788497 e!1788498)))

(assert (=> b!2825615 e!1788497))

(assert (= b!2826013 b!2826014))

(assert (= b!2826012 b!2826013))

(assert (= (and b!2825615 (is-Cons!33186 (t!230941 rules!4424))) b!2826012))

(assert (=> b!2826014 (< (dynLambda!13935 order!17697 (toValue!6996 (transformation!4974 (h!38606 (t!230941 rules!4424))))) (dynLambda!13936 order!17699 lambda!103798))))

(assert (=> b!2826014 (< (dynLambda!13937 order!17701 (toChars!6855 (transformation!4974 (h!38606 (t!230941 rules!4424))))) (dynLambda!13936 order!17699 lambda!103798))))

(declare-fun b_lambda!84717 () Bool)

(assert (= b_lambda!84715 (or (and b!2825590 b_free!80991) (and b!2825593 b_free!80995 (= (toChars!6855 (transformation!4974 (h!38606 rules!4424))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))))) (and b!2825984 b_free!81007 (= (toChars!6855 (transformation!4974 (h!38606 (t!230941 rules!4424)))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))))) (and b!2826007 b_free!81011 (= (toChars!6855 (transformation!4974 (rule!7402 (h!38607 (t!230942 l!6581))))) (toChars!6855 (transformation!4974 (rule!7402 (h!38607 l!6581)))))) b_lambda!84717)))

(declare-fun b_lambda!84719 () Bool)

(assert (= b_lambda!84709 (or b!2825599 b_lambda!84719)))

(declare-fun bs!518008 () Bool)

(declare-fun d!820279 () Bool)

(assert (= bs!518008 (and d!820279 b!2825599)))

(assert (=> bs!518008 (= (dynLambda!13941 lambda!103798 (h!38607 lt!1008150)) (rulesProduceIndividualToken!2103 Lexer!4563 rules!4424 (h!38607 lt!1008150)))))

(declare-fun m!3256145 () Bool)

(assert (=> bs!518008 m!3256145))

(assert (=> b!2825871 d!820279))

(declare-fun b_lambda!84721 () Bool)

(assert (= b_lambda!84707 (or b!2825599 b_lambda!84721)))

(declare-fun bs!518009 () Bool)

(declare-fun d!820281 () Bool)

(assert (= bs!518009 (and d!820281 b!2825599)))

(assert (=> bs!518009 (= (dynLambda!13941 lambda!103798 (h!38607 l!6581)) (rulesProduceIndividualToken!2103 Lexer!4563 rules!4424 (h!38607 l!6581)))))

(declare-fun m!3256147 () Bool)

(assert (=> bs!518009 m!3256147))

(assert (=> b!2825825 d!820281))

(push 1)

(assert (not b!2825810))

(assert tp_is_empty!14481)

(assert b_and!206527)

(assert (not b!2825769))

(assert b_and!206535)

(assert (not b!2825751))

(assert (not d!820191))

(assert (not b_next!81699))

(assert (not d!820229))

(assert (not b!2825902))

(assert (not b!2825944))

(assert (not b!2825926))

(assert (not b!2825889))

(assert (not b_lambda!84721))

(assert (not b!2825850))

(assert (not b!2825726))

(assert (not b_next!81711))

(assert (not b!2825755))

(assert (not b_next!81693))

(assert (not b!2825812))

(assert (not b!2825776))

(assert (not d!820259))

(assert (not b!2825703))

(assert (not b!2825768))

(assert (not bs!518008))

(assert (not b!2825747))

(assert (not d!820225))

(assert (not d!820223))

(assert (not b!2825853))

(assert (not b_next!81697))

(assert (not b!2825900))

(assert (not b!2825771))

(assert b_and!206533)

(assert b_and!206531)

(assert (not b!2825826))

(assert (not b_next!81709))

(assert (not d!820217))

(assert (not b!2825934))

(assert (not b!2826005))

(assert (not b!2825963))

(assert (not b!2825915))

(assert (not b!2825989))

(assert b_and!206511)

(assert (not b!2825770))

(assert (not b!2825936))

(assert (not b!2825901))

(assert (not d!820235))

(assert (not d!820253))

(assert (not d!820247))

(assert (not tb!154021))

(assert (not b!2825983))

(assert (not b!2825916))

(assert (not b!2825988))

(assert (not b!2825910))

(assert (not b_lambda!84719))

(assert (not b!2826012))

(assert (not b_lambda!84717))

(assert (not b!2825852))

(assert (not d!820249))

(assert (not b_next!81695))

(assert (not b!2825808))

(assert (not b!2825862))

(assert (not b!2825982))

(assert (not b!2825907))

(assert (not b!2825909))

(assert (not b!2825702))

(assert (not b!2825750))

(assert (not b!2825925))

(assert (not b!2825858))

(assert (not b!2826006))

(assert (not bs!518009))

(assert (not b!2825899))

(assert (not b!2825937))

(assert (not b!2825722))

(assert (not b!2825851))

(assert (not b!2825754))

(assert (not d!820271))

(assert (not d!820221))

(assert (not b!2825704))

(assert (not d!820193))

(assert (not b!2825749))

(assert (not b!2825854))

(assert (not b_next!81715))

(assert (not b!2825863))

(assert (not b!2825908))

(assert (not b!2825711))

(assert (not d!820213))

(assert (not b!2825964))

(assert (not b!2825890))

(assert (not b!2825935))

(assert (not b!2825775))

(assert (not b!2825774))

(assert b_and!206515)

(assert (not b!2825813))

(assert (not b!2825903))

(assert (not b_next!81713))

(assert (not b!2826004))

(assert b_and!206537)

(assert (not b!2825724))

(assert (not b!2825904))

(assert b_and!206529)

(assert (not b!2825748))

(assert (not b!2825962))

(assert (not b!2825860))

(assert (not b!2825872))

(assert (not b!2825990))

(assert (not d!820255))

(assert (not d!820203))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206535)

(assert (not b_next!81699))

(assert (not b_next!81697))

(assert b_and!206533)

(assert b_and!206511)

(assert (not b_next!81695))

(assert (not b_next!81715))

(assert b_and!206527)

(assert b_and!206529)

(assert (not b_next!81711))

(assert (not b_next!81693))

(assert b_and!206531)

(assert (not b_next!81709))

(assert b_and!206515)

(assert (not b_next!81713))

(assert b_and!206537)

(check-sat)

(pop 1)

