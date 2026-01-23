; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271358 () Bool)

(assert start!271358)

(declare-fun b!2805679 () Bool)

(declare-fun b_free!79821 () Bool)

(declare-fun b_next!80525 () Bool)

(assert (=> b!2805679 (= b_free!79821 (not b_next!80525))))

(declare-fun tp!895151 () Bool)

(declare-fun b_and!204631 () Bool)

(assert (=> b!2805679 (= tp!895151 b_and!204631)))

(declare-fun b_free!79823 () Bool)

(declare-fun b_next!80527 () Bool)

(assert (=> b!2805679 (= b_free!79823 (not b_next!80527))))

(declare-fun tp!895152 () Bool)

(declare-fun b_and!204633 () Bool)

(assert (=> b!2805679 (= tp!895152 b_and!204633)))

(declare-fun b!2805665 () Bool)

(declare-fun b_free!79825 () Bool)

(declare-fun b_next!80529 () Bool)

(assert (=> b!2805665 (= b_free!79825 (not b_next!80529))))

(declare-fun tp!895149 () Bool)

(declare-fun b_and!204635 () Bool)

(assert (=> b!2805665 (= tp!895149 b_and!204635)))

(declare-fun b_free!79827 () Bool)

(declare-fun b_next!80531 () Bool)

(assert (=> b!2805665 (= b_free!79827 (not b_next!80531))))

(declare-fun tp!895147 () Bool)

(declare-fun b_and!204637 () Bool)

(assert (=> b!2805665 (= tp!895147 b_and!204637)))

(declare-fun b!2805666 () Bool)

(declare-fun b_free!79829 () Bool)

(declare-fun b_next!80533 () Bool)

(assert (=> b!2805666 (= b_free!79829 (not b_next!80533))))

(declare-fun tp!895154 () Bool)

(declare-fun b_and!204639 () Bool)

(assert (=> b!2805666 (= tp!895154 b_and!204639)))

(declare-fun b_free!79831 () Bool)

(declare-fun b_next!80535 () Bool)

(assert (=> b!2805666 (= b_free!79831 (not b_next!80535))))

(declare-fun tp!895153 () Bool)

(declare-fun b_and!204641 () Bool)

(assert (=> b!2805666 (= tp!895153 b_and!204641)))

(declare-fun b!2805692 () Bool)

(declare-fun e!1773695 () Bool)

(assert (=> b!2805692 (= e!1773695 true)))

(declare-fun b!2805691 () Bool)

(declare-fun e!1773694 () Bool)

(assert (=> b!2805691 (= e!1773694 e!1773695)))

(declare-fun b!2805690 () Bool)

(declare-fun e!1773693 () Bool)

(assert (=> b!2805690 (= e!1773693 e!1773694)))

(declare-fun b!2805670 () Bool)

(assert (=> b!2805670 e!1773693))

(assert (= b!2805691 b!2805692))

(assert (= b!2805690 b!2805691))

(declare-datatypes ((List!32797 0))(
  ( (Nil!32697) (Cons!32697 (h!38117 (_ BitVec 16)) (t!229127 List!32797)) )
))
(declare-datatypes ((TokenValue!5108 0))(
  ( (FloatLiteralValue!10216 (text!36201 List!32797)) (TokenValueExt!5107 (__x!21873 Int)) (Broken!25540 (value!157136 List!32797)) (Object!5207) (End!5108) (Def!5108) (Underscore!5108) (Match!5108) (Else!5108) (Error!5108) (Case!5108) (If!5108) (Extends!5108) (Abstract!5108) (Class!5108) (Val!5108) (DelimiterValue!10216 (del!5168 List!32797)) (KeywordValue!5114 (value!157137 List!32797)) (CommentValue!10216 (value!157138 List!32797)) (WhitespaceValue!10216 (value!157139 List!32797)) (IndentationValue!5108 (value!157140 List!32797)) (String!35877) (Int32!5108) (Broken!25541 (value!157141 List!32797)) (Boolean!5109) (Unit!46762) (OperatorValue!5111 (op!5168 List!32797)) (IdentifierValue!10216 (value!157142 List!32797)) (IdentifierValue!10217 (value!157143 List!32797)) (WhitespaceValue!10217 (value!157144 List!32797)) (True!10216) (False!10216) (Broken!25542 (value!157145 List!32797)) (Broken!25543 (value!157146 List!32797)) (True!10217) (RightBrace!5108) (RightBracket!5108) (Colon!5108) (Null!5108) (Comma!5108) (LeftBracket!5108) (False!10217) (LeftBrace!5108) (ImaginaryLiteralValue!5108 (text!36202 List!32797)) (StringLiteralValue!15324 (value!157147 List!32797)) (EOFValue!5108 (value!157148 List!32797)) (IdentValue!5108 (value!157149 List!32797)) (DelimiterValue!10217 (value!157150 List!32797)) (DedentValue!5108 (value!157151 List!32797)) (NewLineValue!5108 (value!157152 List!32797)) (IntegerValue!15324 (value!157153 (_ BitVec 32)) (text!36203 List!32797)) (IntegerValue!15325 (value!157154 Int) (text!36204 List!32797)) (Times!5108) (Or!5108) (Equal!5108) (Minus!5108) (Broken!25544 (value!157155 List!32797)) (And!5108) (Div!5108) (LessEqual!5108) (Mod!5108) (Concat!13364) (Not!5108) (Plus!5108) (SpaceValue!5108 (value!157156 List!32797)) (IntegerValue!15326 (value!157157 Int) (text!36205 List!32797)) (StringLiteralValue!15325 (text!36206 List!32797)) (FloatLiteralValue!10217 (text!36207 List!32797)) (BytesLiteralValue!5108 (value!157158 List!32797)) (CommentValue!10217 (value!157159 List!32797)) (StringLiteralValue!15326 (value!157160 List!32797)) (ErrorTokenValue!5108 (msg!5169 List!32797)) )
))
(declare-datatypes ((C!16670 0))(
  ( (C!16671 (val!10269 Int)) )
))
(declare-datatypes ((List!32798 0))(
  ( (Nil!32698) (Cons!32698 (h!38118 C!16670) (t!229128 List!32798)) )
))
(declare-datatypes ((IArray!20241 0))(
  ( (IArray!20242 (innerList!10178 List!32798)) )
))
(declare-datatypes ((Conc!10118 0))(
  ( (Node!10118 (left!24678 Conc!10118) (right!25008 Conc!10118) (csize!20466 Int) (cheight!10329 Int)) (Leaf!15415 (xs!13230 IArray!20241) (csize!20467 Int)) (Empty!10118) )
))
(declare-datatypes ((BalanceConc!19850 0))(
  ( (BalanceConc!19851 (c!454629 Conc!10118)) )
))
(declare-datatypes ((String!35878 0))(
  ( (String!35879 (value!157161 String)) )
))
(declare-datatypes ((TokenValueInjection!9656 0))(
  ( (TokenValueInjection!9657 (toValue!6884 Int) (toChars!6743 Int)) )
))
(declare-datatypes ((Regex!8256 0))(
  ( (ElementMatch!8256 (c!454630 C!16670)) (Concat!13365 (regOne!17024 Regex!8256) (regTwo!17024 Regex!8256)) (EmptyExpr!8256) (Star!8256 (reg!8585 Regex!8256)) (EmptyLang!8256) (Union!8256 (regOne!17025 Regex!8256) (regTwo!17025 Regex!8256)) )
))
(declare-datatypes ((Rule!9572 0))(
  ( (Rule!9573 (regex!4886 Regex!8256) (tag!5390 String!35878) (isSeparator!4886 Bool) (transformation!4886 TokenValueInjection!9656)) )
))
(declare-datatypes ((List!32799 0))(
  ( (Nil!32699) (Cons!32699 (h!38119 Rule!9572) (t!229129 List!32799)) )
))
(declare-fun rules!2540 () List!32799)

(assert (= (and b!2805670 (is-Cons!32699 rules!2540)) b!2805690))

(declare-fun order!17339 () Int)

(declare-fun lambda!103060 () Int)

(declare-fun order!17337 () Int)

(declare-fun dynLambda!13674 (Int Int) Int)

(declare-fun dynLambda!13675 (Int Int) Int)

(assert (=> b!2805692 (< (dynLambda!13674 order!17337 (toValue!6884 (transformation!4886 (h!38119 rules!2540)))) (dynLambda!13675 order!17339 lambda!103060))))

(declare-fun order!17341 () Int)

(declare-fun dynLambda!13676 (Int Int) Int)

(assert (=> b!2805692 (< (dynLambda!13676 order!17341 (toChars!6743 (transformation!4886 (h!38119 rules!2540)))) (dynLambda!13675 order!17339 lambda!103060))))

(assert (=> b!2805670 true))

(declare-fun e!1773684 () Bool)

(assert (=> b!2805665 (= e!1773684 (and tp!895149 tp!895147))))

(declare-fun e!1773677 () Bool)

(assert (=> b!2805666 (= e!1773677 (and tp!895154 tp!895153))))

(declare-datatypes ((Token!9174 0))(
  ( (Token!9175 (value!157162 TokenValue!5108) (rule!7314 Rule!9572) (size!25509 Int) (originalCharacters!5618 List!32798)) )
))
(declare-datatypes ((List!32800 0))(
  ( (Nil!32700) (Cons!32700 (h!38120 Token!9174) (t!229130 List!32800)) )
))
(declare-fun l!5055 () List!32800)

(declare-fun e!1773674 () Bool)

(declare-fun b!2805667 () Bool)

(declare-fun e!1773682 () Bool)

(declare-fun tp!895156 () Bool)

(declare-fun inv!44373 (String!35878) Bool)

(declare-fun inv!44376 (TokenValueInjection!9656) Bool)

(assert (=> b!2805667 (= e!1773674 (and tp!895156 (inv!44373 (tag!5390 (rule!7314 (h!38120 l!5055)))) (inv!44376 (transformation!4886 (rule!7314 (h!38120 l!5055)))) e!1773682))))

(declare-fun b!2805668 () Bool)

(declare-fun res!1168828 () Bool)

(declare-fun e!1773673 () Bool)

(assert (=> b!2805668 (=> (not res!1168828) (not e!1773673))))

(declare-fun contains!6036 (List!32800 Token!9174) Bool)

(assert (=> b!2805668 (= res!1168828 (contains!6036 l!5055 (h!38120 l!5055)))))

(declare-fun b!2805669 () Bool)

(declare-fun e!1773685 () Bool)

(declare-fun e!1773676 () Bool)

(declare-fun tp!895150 () Bool)

(assert (=> b!2805669 (= e!1773685 (and e!1773676 tp!895150))))

(assert (=> b!2805670 (= e!1773673 false)))

(declare-fun lt!1002981 () Bool)

(declare-datatypes ((LexerInterface!4477 0))(
  ( (LexerInterfaceExt!4474 (__x!21874 Int)) (Lexer!4475) )
))
(declare-fun thiss!19710 () LexerInterface!4477)

(declare-fun rulesProduceIndividualToken!2041 (LexerInterface!4477 List!32799 Token!9174) Bool)

(assert (=> b!2805670 (= lt!1002981 (rulesProduceIndividualToken!2041 thiss!19710 rules!2540 (h!38120 l!5055)))))

(declare-datatypes ((Unit!46763 0))(
  ( (Unit!46764) )
))
(declare-fun lt!1002982 () Unit!46763)

(declare-fun forallContained!1060 (List!32800 Int Token!9174) Unit!46763)

(assert (=> b!2805670 (= lt!1002982 (forallContained!1060 l!5055 lambda!103060 (h!38120 l!5055)))))

(declare-fun b!2805672 () Bool)

(declare-fun res!1168823 () Bool)

(assert (=> b!2805672 (=> (not res!1168823) (not e!1773673))))

(declare-fun rulesProduceEachTokenIndividuallyList!1551 (LexerInterface!4477 List!32799 List!32800) Bool)

(assert (=> b!2805672 (= res!1168823 (rulesProduceEachTokenIndividuallyList!1551 thiss!19710 rules!2540 l!5055))))

(declare-fun b!2805673 () Bool)

(declare-fun res!1168824 () Bool)

(assert (=> b!2805673 (=> (not res!1168824) (not e!1773673))))

(declare-fun rulesInvariant!3917 (LexerInterface!4477 List!32799) Bool)

(assert (=> b!2805673 (= res!1168824 (rulesInvariant!3917 thiss!19710 rules!2540))))

(declare-fun b!2805674 () Bool)

(declare-fun res!1168827 () Bool)

(assert (=> b!2805674 (=> (not res!1168827) (not e!1773673))))

(declare-fun isEmpty!18175 (List!32799) Bool)

(assert (=> b!2805674 (= res!1168827 (not (isEmpty!18175 rules!2540)))))

(declare-fun b!2805675 () Bool)

(declare-fun tp!895148 () Bool)

(assert (=> b!2805675 (= e!1773676 (and tp!895148 (inv!44373 (tag!5390 (h!38119 rules!2540))) (inv!44376 (transformation!4886 (h!38119 rules!2540))) e!1773684))))

(declare-fun b!2805676 () Bool)

(declare-fun tp!895157 () Bool)

(declare-fun e!1773672 () Bool)

(declare-fun separatorToken!283 () Token!9174)

(declare-fun e!1773680 () Bool)

(declare-fun inv!21 (TokenValue!5108) Bool)

(assert (=> b!2805676 (= e!1773680 (and (inv!21 (value!157162 separatorToken!283)) e!1773672 tp!895157))))

(declare-fun b!2805677 () Bool)

(declare-fun e!1773681 () Bool)

(declare-fun tp!895155 () Bool)

(assert (=> b!2805677 (= e!1773681 (and (inv!21 (value!157162 (h!38120 l!5055))) e!1773674 tp!895155))))

(declare-fun b!2805678 () Bool)

(declare-fun res!1168825 () Bool)

(assert (=> b!2805678 (=> (not res!1168825) (not e!1773673))))

(assert (=> b!2805678 (= res!1168825 (and (isSeparator!4886 (rule!7314 separatorToken!283)) (is-Cons!32700 l!5055)))))

(assert (=> b!2805679 (= e!1773682 (and tp!895151 tp!895152))))

(declare-fun res!1168826 () Bool)

(assert (=> start!271358 (=> (not res!1168826) (not e!1773673))))

(assert (=> start!271358 (= res!1168826 (is-Lexer!4475 thiss!19710))))

(assert (=> start!271358 e!1773673))

(assert (=> start!271358 true))

(assert (=> start!271358 e!1773685))

(declare-fun e!1773671 () Bool)

(assert (=> start!271358 e!1773671))

(declare-fun inv!44377 (Token!9174) Bool)

(assert (=> start!271358 (and (inv!44377 separatorToken!283) e!1773680)))

(declare-fun b!2805671 () Bool)

(declare-fun tp!895146 () Bool)

(assert (=> b!2805671 (= e!1773671 (and (inv!44377 (h!38120 l!5055)) e!1773681 tp!895146))))

(declare-fun b!2805680 () Bool)

(declare-fun tp!895145 () Bool)

(assert (=> b!2805680 (= e!1773672 (and tp!895145 (inv!44373 (tag!5390 (rule!7314 separatorToken!283))) (inv!44376 (transformation!4886 (rule!7314 separatorToken!283))) e!1773677))))

(declare-fun b!2805681 () Bool)

(declare-fun res!1168829 () Bool)

(assert (=> b!2805681 (=> (not res!1168829) (not e!1773673))))

(assert (=> b!2805681 (= res!1168829 (rulesProduceIndividualToken!2041 thiss!19710 rules!2540 separatorToken!283))))

(assert (= (and start!271358 res!1168826) b!2805674))

(assert (= (and b!2805674 res!1168827) b!2805673))

(assert (= (and b!2805673 res!1168824) b!2805672))

(assert (= (and b!2805672 res!1168823) b!2805681))

(assert (= (and b!2805681 res!1168829) b!2805678))

(assert (= (and b!2805678 res!1168825) b!2805668))

(assert (= (and b!2805668 res!1168828) b!2805670))

(assert (= b!2805675 b!2805665))

(assert (= b!2805669 b!2805675))

(assert (= (and start!271358 (is-Cons!32699 rules!2540)) b!2805669))

(assert (= b!2805667 b!2805679))

(assert (= b!2805677 b!2805667))

(assert (= b!2805671 b!2805677))

(assert (= (and start!271358 (is-Cons!32700 l!5055)) b!2805671))

(assert (= b!2805680 b!2805666))

(assert (= b!2805676 b!2805680))

(assert (= start!271358 b!2805676))

(declare-fun m!3234761 () Bool)

(assert (=> b!2805670 m!3234761))

(declare-fun m!3234763 () Bool)

(assert (=> b!2805670 m!3234763))

(declare-fun m!3234765 () Bool)

(assert (=> b!2805668 m!3234765))

(declare-fun m!3234767 () Bool)

(assert (=> b!2805674 m!3234767))

(declare-fun m!3234769 () Bool)

(assert (=> b!2805676 m!3234769))

(declare-fun m!3234771 () Bool)

(assert (=> start!271358 m!3234771))

(declare-fun m!3234773 () Bool)

(assert (=> b!2805667 m!3234773))

(declare-fun m!3234775 () Bool)

(assert (=> b!2805667 m!3234775))

(declare-fun m!3234777 () Bool)

(assert (=> b!2805673 m!3234777))

(declare-fun m!3234779 () Bool)

(assert (=> b!2805680 m!3234779))

(declare-fun m!3234781 () Bool)

(assert (=> b!2805680 m!3234781))

(declare-fun m!3234783 () Bool)

(assert (=> b!2805671 m!3234783))

(declare-fun m!3234785 () Bool)

(assert (=> b!2805681 m!3234785))

(declare-fun m!3234787 () Bool)

(assert (=> b!2805672 m!3234787))

(declare-fun m!3234789 () Bool)

(assert (=> b!2805677 m!3234789))

(declare-fun m!3234791 () Bool)

(assert (=> b!2805675 m!3234791))

(declare-fun m!3234793 () Bool)

(assert (=> b!2805675 m!3234793))

(push 1)

(assert (not b!2805680))

(assert (not b!2805669))

(assert (not b_next!80525))

(assert (not b_next!80531))

(assert b_and!204641)

(assert (not b!2805681))

(assert (not b!2805676))

(assert (not b_next!80527))

(assert (not b!2805671))

(assert (not b!2805674))

(assert (not b!2805670))

(assert b_and!204637)

(assert (not b!2805690))

(assert b_and!204635)

(assert (not b!2805677))

(assert (not b!2805675))

(assert (not b_next!80533))

(assert (not b!2805667))

(assert (not b!2805673))

(assert b_and!204633)

(assert (not b!2805672))

(assert b_and!204631)

(assert (not b_next!80529))

(assert (not start!271358))

(assert (not b_next!80535))

(assert (not b!2805668))

(assert b_and!204639)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80525))

(assert (not b_next!80531))

(assert b_and!204641)

(assert b_and!204637)

(assert b_and!204635)

(assert (not b_next!80533))

(assert b_and!204633)

(assert (not b_next!80527))

(assert b_and!204631)

(assert (not b_next!80529))

(assert (not b_next!80535))

(assert b_and!204639)

(check-sat)

(pop 1)

