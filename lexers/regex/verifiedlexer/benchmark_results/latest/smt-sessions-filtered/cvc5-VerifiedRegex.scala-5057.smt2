; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!255760 () Bool)

(assert start!255760)

(declare-fun b!2630770 () Bool)

(declare-fun b_free!74173 () Bool)

(declare-fun b_next!74877 () Bool)

(assert (=> b!2630770 (= b_free!74173 (not b_next!74877))))

(declare-fun tp!834124 () Bool)

(declare-fun b_and!192739 () Bool)

(assert (=> b!2630770 (= tp!834124 b_and!192739)))

(declare-fun b_free!74175 () Bool)

(declare-fun b_next!74879 () Bool)

(assert (=> b!2630770 (= b_free!74175 (not b_next!74879))))

(declare-fun tp!834119 () Bool)

(declare-fun b_and!192741 () Bool)

(assert (=> b!2630770 (= tp!834119 b_and!192741)))

(declare-fun b!2630756 () Bool)

(declare-fun b_free!74177 () Bool)

(declare-fun b_next!74881 () Bool)

(assert (=> b!2630756 (= b_free!74177 (not b_next!74881))))

(declare-fun tp!834121 () Bool)

(declare-fun b_and!192743 () Bool)

(assert (=> b!2630756 (= tp!834121 b_and!192743)))

(declare-fun b_free!74179 () Bool)

(declare-fun b_next!74883 () Bool)

(assert (=> b!2630756 (= b_free!74179 (not b_next!74883))))

(declare-fun tp!834122 () Bool)

(declare-fun b_and!192745 () Bool)

(assert (=> b!2630756 (= tp!834122 b_and!192745)))

(declare-fun b!2630753 () Bool)

(declare-fun e!1659901 () Bool)

(declare-fun e!1659899 () Bool)

(declare-fun tp!834120 () Bool)

(assert (=> b!2630753 (= e!1659901 (and e!1659899 tp!834120))))

(declare-datatypes ((List!30575 0))(
  ( (Nil!30475) (Cons!30475 (h!35895 (_ BitVec 16)) (t!216364 List!30575)) )
))
(declare-datatypes ((C!15714 0))(
  ( (C!15715 (val!9791 Int)) )
))
(declare-datatypes ((TokenValue!4856 0))(
  ( (FloatLiteralValue!9712 (text!34437 List!30575)) (TokenValueExt!4855 (__x!19545 Int)) (Broken!24280 (value!149649 List!30575)) (Object!4955) (End!4856) (Def!4856) (Underscore!4856) (Match!4856) (Else!4856) (Error!4856) (Case!4856) (If!4856) (Extends!4856) (Abstract!4856) (Class!4856) (Val!4856) (DelimiterValue!9712 (del!4916 List!30575)) (KeywordValue!4862 (value!149650 List!30575)) (CommentValue!9712 (value!149651 List!30575)) (WhitespaceValue!9712 (value!149652 List!30575)) (IndentationValue!4856 (value!149653 List!30575)) (String!34165) (Int32!4856) (Broken!24281 (value!149654 List!30575)) (Boolean!4857) (Unit!44487) (OperatorValue!4859 (op!4916 List!30575)) (IdentifierValue!9712 (value!149655 List!30575)) (IdentifierValue!9713 (value!149656 List!30575)) (WhitespaceValue!9713 (value!149657 List!30575)) (True!9712) (False!9712) (Broken!24282 (value!149658 List!30575)) (Broken!24283 (value!149659 List!30575)) (True!9713) (RightBrace!4856) (RightBracket!4856) (Colon!4856) (Null!4856) (Comma!4856) (LeftBracket!4856) (False!9713) (LeftBrace!4856) (ImaginaryLiteralValue!4856 (text!34438 List!30575)) (StringLiteralValue!14568 (value!149660 List!30575)) (EOFValue!4856 (value!149661 List!30575)) (IdentValue!4856 (value!149662 List!30575)) (DelimiterValue!9713 (value!149663 List!30575)) (DedentValue!4856 (value!149664 List!30575)) (NewLineValue!4856 (value!149665 List!30575)) (IntegerValue!14568 (value!149666 (_ BitVec 32)) (text!34439 List!30575)) (IntegerValue!14569 (value!149667 Int) (text!34440 List!30575)) (Times!4856) (Or!4856) (Equal!4856) (Minus!4856) (Broken!24284 (value!149668 List!30575)) (And!4856) (Div!4856) (LessEqual!4856) (Mod!4856) (Concat!12634) (Not!4856) (Plus!4856) (SpaceValue!4856 (value!149669 List!30575)) (IntegerValue!14570 (value!149670 Int) (text!34441 List!30575)) (StringLiteralValue!14569 (text!34442 List!30575)) (FloatLiteralValue!9713 (text!34443 List!30575)) (BytesLiteralValue!4856 (value!149671 List!30575)) (CommentValue!9713 (value!149672 List!30575)) (StringLiteralValue!14570 (value!149673 List!30575)) (ErrorTokenValue!4856 (msg!4917 List!30575)) )
))
(declare-datatypes ((List!30576 0))(
  ( (Nil!30476) (Cons!30476 (h!35896 C!15714) (t!216365 List!30576)) )
))
(declare-datatypes ((IArray!19025 0))(
  ( (IArray!19026 (innerList!9570 List!30576)) )
))
(declare-datatypes ((Conc!9510 0))(
  ( (Node!9510 (left!23539 Conc!9510) (right!23869 Conc!9510) (csize!19250 Int) (cheight!9721 Int)) (Leaf!14568 (xs!12510 IArray!19025) (csize!19251 Int)) (Empty!9510) )
))
(declare-datatypes ((BalanceConc!18634 0))(
  ( (BalanceConc!18635 (c!422917 Conc!9510)) )
))
(declare-datatypes ((TokenValueInjection!9152 0))(
  ( (TokenValueInjection!9153 (toValue!6548 Int) (toChars!6407 Int)) )
))
(declare-datatypes ((Regex!7778 0))(
  ( (ElementMatch!7778 (c!422918 C!15714)) (Concat!12635 (regOne!16068 Regex!7778) (regTwo!16068 Regex!7778)) (EmptyExpr!7778) (Star!7778 (reg!8107 Regex!7778)) (EmptyLang!7778) (Union!7778 (regOne!16069 Regex!7778) (regTwo!16069 Regex!7778)) )
))
(declare-datatypes ((String!34166 0))(
  ( (String!34167 (value!149674 String)) )
))
(declare-datatypes ((Rule!9068 0))(
  ( (Rule!9069 (regex!4634 Regex!7778) (tag!5128 String!34166) (isSeparator!4634 Bool) (transformation!4634 TokenValueInjection!9152)) )
))
(declare-datatypes ((List!30577 0))(
  ( (Nil!30477) (Cons!30477 (h!35897 Rule!9068) (t!216366 List!30577)) )
))
(declare-fun rules!1726 () List!30577)

(declare-fun b!2630754 () Bool)

(declare-fun e!1659896 () Bool)

(declare-fun tp!834117 () Bool)

(declare-fun inv!41307 (String!34166) Bool)

(declare-fun inv!41310 (TokenValueInjection!9152) Bool)

(assert (=> b!2630754 (= e!1659899 (and tp!834117 (inv!41307 (tag!5128 (h!35897 rules!1726))) (inv!41310 (transformation!4634 (h!35897 rules!1726))) e!1659896))))

(declare-fun tp!834123 () Bool)

(declare-fun e!1659904 () Bool)

(declare-fun b!2630755 () Bool)

(declare-fun e!1659898 () Bool)

(declare-datatypes ((Token!8738 0))(
  ( (Token!8739 (value!149675 TokenValue!4856) (rule!7016 Rule!9068) (size!23556 Int) (originalCharacters!5400 List!30576)) )
))
(declare-fun separatorToken!156 () Token!8738)

(assert (=> b!2630755 (= e!1659904 (and tp!834123 (inv!41307 (tag!5128 (rule!7016 separatorToken!156))) (inv!41310 (transformation!4634 (rule!7016 separatorToken!156))) e!1659898))))

(assert (=> b!2630756 (= e!1659896 (and tp!834121 tp!834122))))

(declare-fun b!2630757 () Bool)

(declare-fun res!1107633 () Bool)

(declare-fun e!1659894 () Bool)

(assert (=> b!2630757 (=> (not res!1107633) (not e!1659894))))

(declare-datatypes ((LexerInterface!4231 0))(
  ( (LexerInterfaceExt!4228 (__x!19546 Int)) (Lexer!4229) )
))
(declare-fun thiss!14197 () LexerInterface!4231)

(declare-fun rulesProduceIndividualToken!1943 (LexerInterface!4231 List!30577 Token!8738) Bool)

(assert (=> b!2630757 (= res!1107633 (rulesProduceIndividualToken!1943 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2630758 () Bool)

(declare-fun e!1659893 () Bool)

(assert (=> b!2630758 (= e!1659893 e!1659894)))

(declare-fun res!1107636 () Bool)

(assert (=> b!2630758 (=> (not res!1107636) (not e!1659894))))

(declare-fun from!862 () Int)

(declare-fun lt!925671 () Int)

(assert (=> b!2630758 (= res!1107636 (<= from!862 lt!925671))))

(declare-datatypes ((List!30578 0))(
  ( (Nil!30478) (Cons!30478 (h!35898 Token!8738) (t!216367 List!30578)) )
))
(declare-datatypes ((IArray!19027 0))(
  ( (IArray!19028 (innerList!9571 List!30578)) )
))
(declare-datatypes ((Conc!9511 0))(
  ( (Node!9511 (left!23540 Conc!9511) (right!23870 Conc!9511) (csize!19252 Int) (cheight!9722 Int)) (Leaf!14569 (xs!12511 IArray!19027) (csize!19253 Int)) (Empty!9511) )
))
(declare-datatypes ((BalanceConc!18636 0))(
  ( (BalanceConc!18637 (c!422919 Conc!9511)) )
))
(declare-fun v!6381 () BalanceConc!18636)

(declare-fun size!23557 (BalanceConc!18636) Int)

(assert (=> b!2630758 (= lt!925671 (size!23557 v!6381))))

(declare-fun b!2630759 () Bool)

(declare-fun res!1107637 () Bool)

(assert (=> b!2630759 (=> (not res!1107637) (not e!1659894))))

(declare-fun lambda!98683 () Int)

(declare-fun forall!6371 (BalanceConc!18636 Int) Bool)

(assert (=> b!2630759 (= res!1107637 (forall!6371 v!6381 lambda!98683))))

(declare-fun b!2630760 () Bool)

(declare-fun e!1659895 () Bool)

(declare-fun e!1659903 () Bool)

(assert (=> b!2630760 (= e!1659895 (not e!1659903))))

(declare-fun res!1107632 () Bool)

(assert (=> b!2630760 (=> res!1107632 e!1659903)))

(declare-fun lt!925674 () Token!8738)

(declare-fun contains!5772 (BalanceConc!18636 Token!8738) Bool)

(assert (=> b!2630760 (= res!1107632 (not (contains!5772 v!6381 lt!925674)))))

(declare-fun apply!7252 (BalanceConc!18636 Int) Token!8738)

(assert (=> b!2630760 (= lt!925674 (apply!7252 v!6381 from!862))))

(declare-fun lt!925670 () List!30578)

(declare-fun lt!925672 () List!30578)

(declare-fun tail!4271 (List!30578) List!30578)

(declare-fun drop!1630 (List!30578 Int) List!30578)

(assert (=> b!2630760 (= (tail!4271 lt!925670) (drop!1630 lt!925672 (+ 1 from!862)))))

(declare-datatypes ((Unit!44488 0))(
  ( (Unit!44489) )
))
(declare-fun lt!925668 () Unit!44488)

(declare-fun lemmaDropTail!819 (List!30578 Int) Unit!44488)

(assert (=> b!2630760 (= lt!925668 (lemmaDropTail!819 lt!925672 from!862))))

(declare-fun head!6033 (List!30578) Token!8738)

(declare-fun apply!7253 (List!30578 Int) Token!8738)

(assert (=> b!2630760 (= (head!6033 lt!925670) (apply!7253 lt!925672 from!862))))

(assert (=> b!2630760 (= lt!925670 (drop!1630 lt!925672 from!862))))

(declare-fun lt!925669 () Unit!44488)

(declare-fun lemmaDropApply!845 (List!30578 Int) Unit!44488)

(assert (=> b!2630760 (= lt!925669 (lemmaDropApply!845 lt!925672 from!862))))

(declare-fun b!2630761 () Bool)

(declare-fun e!1659900 () Bool)

(declare-fun tp!834118 () Bool)

(declare-fun inv!41311 (Conc!9511) Bool)

(assert (=> b!2630761 (= e!1659900 (and (inv!41311 (c!422919 v!6381)) tp!834118))))

(declare-fun b!2630762 () Bool)

(declare-fun res!1107638 () Bool)

(assert (=> b!2630762 (=> (not res!1107638) (not e!1659894))))

(declare-fun rulesProduceEachTokenIndividually!1051 (LexerInterface!4231 List!30577 BalanceConc!18636) Bool)

(assert (=> b!2630762 (= res!1107638 (rulesProduceEachTokenIndividually!1051 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2630763 () Bool)

(assert (=> b!2630763 (= e!1659894 e!1659895)))

(declare-fun res!1107635 () Bool)

(assert (=> b!2630763 (=> (not res!1107635) (not e!1659895))))

(assert (=> b!2630763 (= res!1107635 (< from!862 lt!925671))))

(declare-fun lt!925673 () Unit!44488)

(declare-fun lemmaContentSubsetPreservesForall!303 (List!30578 List!30578 Int) Unit!44488)

(declare-fun dropList!937 (BalanceConc!18636 Int) List!30578)

(assert (=> b!2630763 (= lt!925673 (lemmaContentSubsetPreservesForall!303 lt!925672 (dropList!937 v!6381 from!862) lambda!98683))))

(declare-fun list!11454 (BalanceConc!18636) List!30578)

(assert (=> b!2630763 (= lt!925672 (list!11454 v!6381))))

(declare-fun b!2630764 () Bool)

(declare-fun res!1107640 () Bool)

(assert (=> b!2630764 (=> (not res!1107640) (not e!1659894))))

(assert (=> b!2630764 (= res!1107640 (isSeparator!4634 (rule!7016 separatorToken!156)))))

(declare-fun res!1107641 () Bool)

(assert (=> start!255760 (=> (not res!1107641) (not e!1659893))))

(assert (=> start!255760 (= res!1107641 (and (is-Lexer!4229 thiss!14197) (>= from!862 0)))))

(assert (=> start!255760 e!1659893))

(assert (=> start!255760 true))

(assert (=> start!255760 e!1659901))

(declare-fun e!1659892 () Bool)

(declare-fun inv!41312 (Token!8738) Bool)

(assert (=> start!255760 (and (inv!41312 separatorToken!156) e!1659892)))

(declare-fun inv!41313 (BalanceConc!18636) Bool)

(assert (=> start!255760 (and (inv!41313 v!6381) e!1659900)))

(declare-fun b!2630765 () Bool)

(declare-fun res!1107631 () Bool)

(assert (=> b!2630765 (=> (not res!1107631) (not e!1659894))))

(declare-fun rulesInvariant!3731 (LexerInterface!4231 List!30577) Bool)

(assert (=> b!2630765 (= res!1107631 (rulesInvariant!3731 thiss!14197 rules!1726))))

(declare-fun b!2630766 () Bool)

(declare-fun contains!5773 (List!30578 Token!8738) Bool)

(assert (=> b!2630766 (= e!1659903 (contains!5773 lt!925672 lt!925674))))

(declare-fun b!2630767 () Bool)

(declare-fun res!1107634 () Bool)

(assert (=> b!2630767 (=> (not res!1107634) (not e!1659894))))

(declare-fun isEmpty!17376 (List!30577) Bool)

(assert (=> b!2630767 (= res!1107634 (not (isEmpty!17376 rules!1726)))))

(declare-fun b!2630768 () Bool)

(declare-fun tp!834125 () Bool)

(declare-fun inv!21 (TokenValue!4856) Bool)

(assert (=> b!2630768 (= e!1659892 (and (inv!21 (value!149675 separatorToken!156)) e!1659904 tp!834125))))

(declare-fun b!2630769 () Bool)

(declare-fun res!1107639 () Bool)

(assert (=> b!2630769 (=> (not res!1107639) (not e!1659894))))

(declare-fun sepAndNonSepRulesDisjointChars!1207 (List!30577 List!30577) Bool)

(assert (=> b!2630769 (= res!1107639 (sepAndNonSepRulesDisjointChars!1207 rules!1726 rules!1726))))

(assert (=> b!2630770 (= e!1659898 (and tp!834124 tp!834119))))

(assert (= (and start!255760 res!1107641) b!2630758))

(assert (= (and b!2630758 res!1107636) b!2630767))

(assert (= (and b!2630767 res!1107634) b!2630765))

(assert (= (and b!2630765 res!1107631) b!2630762))

(assert (= (and b!2630762 res!1107638) b!2630757))

(assert (= (and b!2630757 res!1107633) b!2630764))

(assert (= (and b!2630764 res!1107640) b!2630759))

(assert (= (and b!2630759 res!1107637) b!2630769))

(assert (= (and b!2630769 res!1107639) b!2630763))

(assert (= (and b!2630763 res!1107635) b!2630760))

(assert (= (and b!2630760 (not res!1107632)) b!2630766))

(assert (= b!2630754 b!2630756))

(assert (= b!2630753 b!2630754))

(assert (= (and start!255760 (is-Cons!30477 rules!1726)) b!2630753))

(assert (= b!2630755 b!2630770))

(assert (= b!2630768 b!2630755))

(assert (= start!255760 b!2630768))

(assert (= start!255760 b!2630761))

(declare-fun m!2973741 () Bool)

(assert (=> b!2630768 m!2973741))

(declare-fun m!2973743 () Bool)

(assert (=> b!2630760 m!2973743))

(declare-fun m!2973745 () Bool)

(assert (=> b!2630760 m!2973745))

(declare-fun m!2973747 () Bool)

(assert (=> b!2630760 m!2973747))

(declare-fun m!2973749 () Bool)

(assert (=> b!2630760 m!2973749))

(declare-fun m!2973751 () Bool)

(assert (=> b!2630760 m!2973751))

(declare-fun m!2973753 () Bool)

(assert (=> b!2630760 m!2973753))

(declare-fun m!2973755 () Bool)

(assert (=> b!2630760 m!2973755))

(declare-fun m!2973757 () Bool)

(assert (=> b!2630760 m!2973757))

(declare-fun m!2973759 () Bool)

(assert (=> b!2630760 m!2973759))

(declare-fun m!2973761 () Bool)

(assert (=> b!2630767 m!2973761))

(declare-fun m!2973763 () Bool)

(assert (=> b!2630762 m!2973763))

(declare-fun m!2973765 () Bool)

(assert (=> b!2630759 m!2973765))

(declare-fun m!2973767 () Bool)

(assert (=> start!255760 m!2973767))

(declare-fun m!2973769 () Bool)

(assert (=> start!255760 m!2973769))

(declare-fun m!2973771 () Bool)

(assert (=> b!2630761 m!2973771))

(declare-fun m!2973773 () Bool)

(assert (=> b!2630763 m!2973773))

(assert (=> b!2630763 m!2973773))

(declare-fun m!2973775 () Bool)

(assert (=> b!2630763 m!2973775))

(declare-fun m!2973777 () Bool)

(assert (=> b!2630763 m!2973777))

(declare-fun m!2973779 () Bool)

(assert (=> b!2630766 m!2973779))

(declare-fun m!2973781 () Bool)

(assert (=> b!2630757 m!2973781))

(declare-fun m!2973783 () Bool)

(assert (=> b!2630755 m!2973783))

(declare-fun m!2973785 () Bool)

(assert (=> b!2630755 m!2973785))

(declare-fun m!2973787 () Bool)

(assert (=> b!2630769 m!2973787))

(declare-fun m!2973789 () Bool)

(assert (=> b!2630754 m!2973789))

(declare-fun m!2973791 () Bool)

(assert (=> b!2630754 m!2973791))

(declare-fun m!2973793 () Bool)

(assert (=> b!2630758 m!2973793))

(declare-fun m!2973795 () Bool)

(assert (=> b!2630765 m!2973795))

(push 1)

(assert (not b!2630765))

(assert (not b!2630758))

(assert (not b!2630768))

(assert (not b_next!74883))

(assert (not b_next!74877))

(assert b_and!192739)

(assert (not b!2630757))

(assert (not b_next!74881))

(assert (not b!2630755))

(assert (not start!255760))

(assert b_and!192745)

(assert (not b!2630763))

(assert (not b!2630762))

(assert (not b_next!74879))

(assert (not b!2630767))

(assert (not b!2630754))

(assert (not b!2630759))

(assert b_and!192741)

(assert (not b!2630766))

(assert (not b!2630760))

(assert (not b!2630761))

(assert b_and!192743)

(assert (not b!2630769))

(assert (not b!2630753))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74883))

(assert (not b_next!74877))

(assert b_and!192745)

(assert (not b_next!74879))

(assert b_and!192741)

(assert b_and!192739)

(assert (not b_next!74881))

(assert b_and!192743)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!746376 () Bool)

(declare-fun res!1107688 () Bool)

(declare-fun e!1659953 () Bool)

(assert (=> d!746376 (=> res!1107688 e!1659953)))

(assert (=> d!746376 (= res!1107688 (not (is-Cons!30477 rules!1726)))))

(assert (=> d!746376 (= (sepAndNonSepRulesDisjointChars!1207 rules!1726 rules!1726) e!1659953)))

(declare-fun b!2630833 () Bool)

(declare-fun e!1659954 () Bool)

(assert (=> b!2630833 (= e!1659953 e!1659954)))

(declare-fun res!1107689 () Bool)

(assert (=> b!2630833 (=> (not res!1107689) (not e!1659954))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!518 (Rule!9068 List!30577) Bool)

(assert (=> b!2630833 (= res!1107689 (ruleDisjointCharsFromAllFromOtherType!518 (h!35897 rules!1726) rules!1726))))

(declare-fun b!2630834 () Bool)

(assert (=> b!2630834 (= e!1659954 (sepAndNonSepRulesDisjointChars!1207 rules!1726 (t!216366 rules!1726)))))

(assert (= (and d!746376 (not res!1107688)) b!2630833))

(assert (= (and b!2630833 res!1107689) b!2630834))

(declare-fun m!2973853 () Bool)

(assert (=> b!2630833 m!2973853))

(declare-fun m!2973855 () Bool)

(assert (=> b!2630834 m!2973855))

(assert (=> b!2630769 d!746376))

(declare-fun d!746380 () Bool)

(declare-fun lt!925698 () Int)

(declare-fun size!23560 (List!30578) Int)

(assert (=> d!746380 (= lt!925698 (size!23560 (list!11454 v!6381)))))

(declare-fun size!23561 (Conc!9511) Int)

(assert (=> d!746380 (= lt!925698 (size!23561 (c!422919 v!6381)))))

(assert (=> d!746380 (= (size!23557 v!6381) lt!925698)))

(declare-fun bs!475726 () Bool)

(assert (= bs!475726 d!746380))

(assert (=> bs!475726 m!2973777))

(assert (=> bs!475726 m!2973777))

(declare-fun m!2973857 () Bool)

(assert (=> bs!475726 m!2973857))

(declare-fun m!2973859 () Bool)

(assert (=> bs!475726 m!2973859))

(assert (=> b!2630758 d!746380))

(declare-fun d!746382 () Bool)

(declare-fun lt!925701 () Bool)

(declare-fun forall!6373 (List!30578 Int) Bool)

(assert (=> d!746382 (= lt!925701 (forall!6373 (list!11454 v!6381) lambda!98683))))

(declare-fun forall!6374 (Conc!9511 Int) Bool)

(assert (=> d!746382 (= lt!925701 (forall!6374 (c!422919 v!6381) lambda!98683))))

(assert (=> d!746382 (= (forall!6371 v!6381 lambda!98683) lt!925701)))

(declare-fun bs!475728 () Bool)

(assert (= bs!475728 d!746382))

(assert (=> bs!475728 m!2973777))

(assert (=> bs!475728 m!2973777))

(declare-fun m!2973875 () Bool)

(assert (=> bs!475728 m!2973875))

(declare-fun m!2973877 () Bool)

(assert (=> bs!475728 m!2973877))

(assert (=> b!2630759 d!746382))

(declare-fun d!746388 () Bool)

(declare-fun lt!925719 () Bool)

(declare-fun e!1659993 () Bool)

(assert (=> d!746388 (= lt!925719 e!1659993)))

(declare-fun res!1107721 () Bool)

(assert (=> d!746388 (=> (not res!1107721) (not e!1659993))))

(declare-datatypes ((tuple2!29972 0))(
  ( (tuple2!29973 (_1!17528 BalanceConc!18636) (_2!17528 BalanceConc!18634)) )
))
(declare-fun lex!1894 (LexerInterface!4231 List!30577 BalanceConc!18634) tuple2!29972)

(declare-fun print!1632 (LexerInterface!4231 BalanceConc!18636) BalanceConc!18634)

(declare-fun singletonSeq!2051 (Token!8738) BalanceConc!18636)

(assert (=> d!746388 (= res!1107721 (= (list!11454 (_1!17528 (lex!1894 thiss!14197 rules!1726 (print!1632 thiss!14197 (singletonSeq!2051 separatorToken!156))))) (list!11454 (singletonSeq!2051 separatorToken!156))))))

(declare-fun e!1659994 () Bool)

(assert (=> d!746388 (= lt!925719 e!1659994)))

(declare-fun res!1107720 () Bool)

(assert (=> d!746388 (=> (not res!1107720) (not e!1659994))))

(declare-fun lt!925718 () tuple2!29972)

(assert (=> d!746388 (= res!1107720 (= (size!23557 (_1!17528 lt!925718)) 1))))

(assert (=> d!746388 (= lt!925718 (lex!1894 thiss!14197 rules!1726 (print!1632 thiss!14197 (singletonSeq!2051 separatorToken!156))))))

(assert (=> d!746388 (not (isEmpty!17376 rules!1726))))

(assert (=> d!746388 (= (rulesProduceIndividualToken!1943 thiss!14197 rules!1726 separatorToken!156) lt!925719)))

(declare-fun b!2630887 () Bool)

(declare-fun res!1107719 () Bool)

(assert (=> b!2630887 (=> (not res!1107719) (not e!1659994))))

(assert (=> b!2630887 (= res!1107719 (= (apply!7252 (_1!17528 lt!925718) 0) separatorToken!156))))

(declare-fun b!2630888 () Bool)

(declare-fun isEmpty!17378 (BalanceConc!18634) Bool)

(assert (=> b!2630888 (= e!1659994 (isEmpty!17378 (_2!17528 lt!925718)))))

(declare-fun b!2630889 () Bool)

(assert (=> b!2630889 (= e!1659993 (isEmpty!17378 (_2!17528 (lex!1894 thiss!14197 rules!1726 (print!1632 thiss!14197 (singletonSeq!2051 separatorToken!156))))))))

(assert (= (and d!746388 res!1107720) b!2630887))

(assert (= (and b!2630887 res!1107719) b!2630888))

(assert (= (and d!746388 res!1107721) b!2630889))

(declare-fun m!2973921 () Bool)

(assert (=> d!746388 m!2973921))

(declare-fun m!2973923 () Bool)

(assert (=> d!746388 m!2973923))

(declare-fun m!2973925 () Bool)

(assert (=> d!746388 m!2973925))

(assert (=> d!746388 m!2973925))

(declare-fun m!2973927 () Bool)

(assert (=> d!746388 m!2973927))

(declare-fun m!2973929 () Bool)

(assert (=> d!746388 m!2973929))

(assert (=> d!746388 m!2973761))

(assert (=> d!746388 m!2973923))

(assert (=> d!746388 m!2973923))

(declare-fun m!2973931 () Bool)

(assert (=> d!746388 m!2973931))

(declare-fun m!2973933 () Bool)

(assert (=> b!2630887 m!2973933))

(declare-fun m!2973935 () Bool)

(assert (=> b!2630888 m!2973935))

(assert (=> b!2630889 m!2973923))

(assert (=> b!2630889 m!2973923))

(assert (=> b!2630889 m!2973925))

(assert (=> b!2630889 m!2973925))

(assert (=> b!2630889 m!2973927))

(declare-fun m!2973937 () Bool)

(assert (=> b!2630889 m!2973937))

(assert (=> b!2630757 d!746388))

(declare-fun b!2630900 () Bool)

(declare-fun e!1660001 () Bool)

(declare-fun e!1660003 () Bool)

(assert (=> b!2630900 (= e!1660001 e!1660003)))

(declare-fun c!422936 () Bool)

(assert (=> b!2630900 (= c!422936 (is-IntegerValue!14569 (value!149675 separatorToken!156)))))

(declare-fun b!2630901 () Bool)

(declare-fun inv!17 (TokenValue!4856) Bool)

(assert (=> b!2630901 (= e!1660003 (inv!17 (value!149675 separatorToken!156)))))

(declare-fun b!2630902 () Bool)

(declare-fun inv!16 (TokenValue!4856) Bool)

(assert (=> b!2630902 (= e!1660001 (inv!16 (value!149675 separatorToken!156)))))

(declare-fun b!2630903 () Bool)

(declare-fun res!1107724 () Bool)

(declare-fun e!1660002 () Bool)

(assert (=> b!2630903 (=> res!1107724 e!1660002)))

(assert (=> b!2630903 (= res!1107724 (not (is-IntegerValue!14570 (value!149675 separatorToken!156))))))

(assert (=> b!2630903 (= e!1660003 e!1660002)))

(declare-fun b!2630904 () Bool)

(declare-fun inv!15 (TokenValue!4856) Bool)

(assert (=> b!2630904 (= e!1660002 (inv!15 (value!149675 separatorToken!156)))))

(declare-fun d!746412 () Bool)

(declare-fun c!422937 () Bool)

(assert (=> d!746412 (= c!422937 (is-IntegerValue!14568 (value!149675 separatorToken!156)))))

(assert (=> d!746412 (= (inv!21 (value!149675 separatorToken!156)) e!1660001)))

(assert (= (and d!746412 c!422937) b!2630902))

(assert (= (and d!746412 (not c!422937)) b!2630900))

(assert (= (and b!2630900 c!422936) b!2630901))

(assert (= (and b!2630900 (not c!422936)) b!2630903))

(assert (= (and b!2630903 (not res!1107724)) b!2630904))

(declare-fun m!2973939 () Bool)

(assert (=> b!2630901 m!2973939))

(declare-fun m!2973941 () Bool)

(assert (=> b!2630902 m!2973941))

(declare-fun m!2973943 () Bool)

(assert (=> b!2630904 m!2973943))

(assert (=> b!2630768 d!746412))

(declare-fun d!746414 () Bool)

(declare-fun lt!925722 () Bool)

(declare-fun content!4302 (List!30578) (Set Token!8738))

(assert (=> d!746414 (= lt!925722 (set.member lt!925674 (content!4302 lt!925672)))))

(declare-fun e!1660009 () Bool)

(assert (=> d!746414 (= lt!925722 e!1660009)))

(declare-fun res!1107730 () Bool)

(assert (=> d!746414 (=> (not res!1107730) (not e!1660009))))

(assert (=> d!746414 (= res!1107730 (is-Cons!30478 lt!925672))))

(assert (=> d!746414 (= (contains!5773 lt!925672 lt!925674) lt!925722)))

(declare-fun b!2630909 () Bool)

(declare-fun e!1660008 () Bool)

(assert (=> b!2630909 (= e!1660009 e!1660008)))

(declare-fun res!1107729 () Bool)

(assert (=> b!2630909 (=> res!1107729 e!1660008)))

(assert (=> b!2630909 (= res!1107729 (= (h!35898 lt!925672) lt!925674))))

(declare-fun b!2630910 () Bool)

(assert (=> b!2630910 (= e!1660008 (contains!5773 (t!216367 lt!925672) lt!925674))))

(assert (= (and d!746414 res!1107730) b!2630909))

(assert (= (and b!2630909 (not res!1107729)) b!2630910))

(declare-fun m!2973945 () Bool)

(assert (=> d!746414 m!2973945))

(declare-fun m!2973947 () Bool)

(assert (=> d!746414 m!2973947))

(declare-fun m!2973949 () Bool)

(assert (=> b!2630910 m!2973949))

(assert (=> b!2630766 d!746414))

(declare-fun d!746416 () Bool)

(assert (=> d!746416 (= (isEmpty!17376 rules!1726) (is-Nil!30477 rules!1726))))

(assert (=> b!2630767 d!746416))

(declare-fun d!746418 () Bool)

(declare-fun res!1107733 () Bool)

(declare-fun e!1660012 () Bool)

(assert (=> d!746418 (=> (not res!1107733) (not e!1660012))))

(declare-fun rulesValid!1717 (LexerInterface!4231 List!30577) Bool)

(assert (=> d!746418 (= res!1107733 (rulesValid!1717 thiss!14197 rules!1726))))

(assert (=> d!746418 (= (rulesInvariant!3731 thiss!14197 rules!1726) e!1660012)))

(declare-fun b!2630913 () Bool)

(declare-datatypes ((List!30583 0))(
  ( (Nil!30483) (Cons!30483 (h!35903 String!34166) (t!216394 List!30583)) )
))
(declare-fun noDuplicateTag!1713 (LexerInterface!4231 List!30577 List!30583) Bool)

(assert (=> b!2630913 (= e!1660012 (noDuplicateTag!1713 thiss!14197 rules!1726 Nil!30483))))

(assert (= (and d!746418 res!1107733) b!2630913))

(declare-fun m!2973951 () Bool)

(assert (=> d!746418 m!2973951))

(declare-fun m!2973953 () Bool)

(assert (=> b!2630913 m!2973953))

(assert (=> b!2630765 d!746418))

(declare-fun d!746420 () Bool)

(assert (=> d!746420 (= (inv!41307 (tag!5128 (h!35897 rules!1726))) (= (mod (str.len (value!149674 (tag!5128 (h!35897 rules!1726)))) 2) 0))))

(assert (=> b!2630754 d!746420))

(declare-fun d!746422 () Bool)

(declare-fun res!1107736 () Bool)

(declare-fun e!1660015 () Bool)

(assert (=> d!746422 (=> (not res!1107736) (not e!1660015))))

(declare-fun semiInverseModEq!1911 (Int Int) Bool)

(assert (=> d!746422 (= res!1107736 (semiInverseModEq!1911 (toChars!6407 (transformation!4634 (h!35897 rules!1726))) (toValue!6548 (transformation!4634 (h!35897 rules!1726)))))))

(assert (=> d!746422 (= (inv!41310 (transformation!4634 (h!35897 rules!1726))) e!1660015)))

(declare-fun b!2630916 () Bool)

(declare-fun equivClasses!1812 (Int Int) Bool)

(assert (=> b!2630916 (= e!1660015 (equivClasses!1812 (toChars!6407 (transformation!4634 (h!35897 rules!1726))) (toValue!6548 (transformation!4634 (h!35897 rules!1726)))))))

(assert (= (and d!746422 res!1107736) b!2630916))

(declare-fun m!2973955 () Bool)

(assert (=> d!746422 m!2973955))

(declare-fun m!2973957 () Bool)

(assert (=> b!2630916 m!2973957))

(assert (=> b!2630754 d!746422))

(declare-fun d!746424 () Bool)

(assert (=> d!746424 (= (inv!41307 (tag!5128 (rule!7016 separatorToken!156))) (= (mod (str.len (value!149674 (tag!5128 (rule!7016 separatorToken!156)))) 2) 0))))

(assert (=> b!2630755 d!746424))

(declare-fun d!746426 () Bool)

(declare-fun res!1107737 () Bool)

(declare-fun e!1660016 () Bool)

(assert (=> d!746426 (=> (not res!1107737) (not e!1660016))))

(assert (=> d!746426 (= res!1107737 (semiInverseModEq!1911 (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (toValue!6548 (transformation!4634 (rule!7016 separatorToken!156)))))))

(assert (=> d!746426 (= (inv!41310 (transformation!4634 (rule!7016 separatorToken!156))) e!1660016)))

(declare-fun b!2630917 () Bool)

(assert (=> b!2630917 (= e!1660016 (equivClasses!1812 (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (toValue!6548 (transformation!4634 (rule!7016 separatorToken!156)))))))

(assert (= (and d!746426 res!1107737) b!2630917))

(declare-fun m!2973959 () Bool)

(assert (=> d!746426 m!2973959))

(declare-fun m!2973961 () Bool)

(assert (=> b!2630917 m!2973961))

(assert (=> b!2630755 d!746426))

(declare-fun d!746428 () Bool)

(declare-fun res!1107742 () Bool)

(declare-fun e!1660019 () Bool)

(assert (=> d!746428 (=> (not res!1107742) (not e!1660019))))

(declare-fun isEmpty!17379 (List!30576) Bool)

(assert (=> d!746428 (= res!1107742 (not (isEmpty!17379 (originalCharacters!5400 separatorToken!156))))))

(assert (=> d!746428 (= (inv!41312 separatorToken!156) e!1660019)))

(declare-fun b!2630922 () Bool)

(declare-fun res!1107743 () Bool)

(assert (=> b!2630922 (=> (not res!1107743) (not e!1660019))))

(declare-fun list!11456 (BalanceConc!18634) List!30576)

(declare-fun dynLambda!13043 (Int TokenValue!4856) BalanceConc!18634)

(assert (=> b!2630922 (= res!1107743 (= (originalCharacters!5400 separatorToken!156) (list!11456 (dynLambda!13043 (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (value!149675 separatorToken!156)))))))

(declare-fun b!2630923 () Bool)

(declare-fun size!23562 (List!30576) Int)

(assert (=> b!2630923 (= e!1660019 (= (size!23556 separatorToken!156) (size!23562 (originalCharacters!5400 separatorToken!156))))))

(assert (= (and d!746428 res!1107742) b!2630922))

(assert (= (and b!2630922 res!1107743) b!2630923))

(declare-fun b_lambda!79217 () Bool)

(assert (=> (not b_lambda!79217) (not b!2630922)))

(declare-fun t!216380 () Bool)

(declare-fun tb!143575 () Bool)

(assert (=> (and b!2630770 (= (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156)))) t!216380) tb!143575))

(declare-fun b!2630928 () Bool)

(declare-fun e!1660022 () Bool)

(declare-fun tp!834158 () Bool)

(declare-fun inv!41318 (Conc!9510) Bool)

(assert (=> b!2630928 (= e!1660022 (and (inv!41318 (c!422917 (dynLambda!13043 (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (value!149675 separatorToken!156)))) tp!834158))))

(declare-fun result!178412 () Bool)

(declare-fun inv!41319 (BalanceConc!18634) Bool)

(assert (=> tb!143575 (= result!178412 (and (inv!41319 (dynLambda!13043 (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))) (value!149675 separatorToken!156))) e!1660022))))

(assert (= tb!143575 b!2630928))

(declare-fun m!2973963 () Bool)

(assert (=> b!2630928 m!2973963))

(declare-fun m!2973965 () Bool)

(assert (=> tb!143575 m!2973965))

(assert (=> b!2630922 t!216380))

(declare-fun b_and!192759 () Bool)

(assert (= b_and!192741 (and (=> t!216380 result!178412) b_and!192759)))

(declare-fun tb!143577 () Bool)

(declare-fun t!216382 () Bool)

(assert (=> (and b!2630756 (= (toChars!6407 (transformation!4634 (h!35897 rules!1726))) (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156)))) t!216382) tb!143577))

(declare-fun result!178416 () Bool)

(assert (= result!178416 result!178412))

(assert (=> b!2630922 t!216382))

(declare-fun b_and!192761 () Bool)

(assert (= b_and!192745 (and (=> t!216382 result!178416) b_and!192761)))

(declare-fun m!2973967 () Bool)

(assert (=> d!746428 m!2973967))

(declare-fun m!2973969 () Bool)

(assert (=> b!2630922 m!2973969))

(assert (=> b!2630922 m!2973969))

(declare-fun m!2973971 () Bool)

(assert (=> b!2630922 m!2973971))

(declare-fun m!2973973 () Bool)

(assert (=> b!2630923 m!2973973))

(assert (=> start!255760 d!746428))

(declare-fun d!746430 () Bool)

(declare-fun isBalanced!2870 (Conc!9511) Bool)

(assert (=> d!746430 (= (inv!41313 v!6381) (isBalanced!2870 (c!422919 v!6381)))))

(declare-fun bs!475734 () Bool)

(assert (= bs!475734 d!746430))

(declare-fun m!2973975 () Bool)

(assert (=> bs!475734 m!2973975))

(assert (=> start!255760 d!746430))

(declare-fun bs!475736 () Bool)

(declare-fun d!746432 () Bool)

(assert (= bs!475736 (and d!746432 b!2630759)))

(declare-fun lambda!98698 () Int)

(assert (=> bs!475736 (not (= lambda!98698 lambda!98683))))

(declare-fun b!2630958 () Bool)

(declare-fun e!1660046 () Bool)

(assert (=> b!2630958 (= e!1660046 true)))

(declare-fun b!2630957 () Bool)

(declare-fun e!1660045 () Bool)

(assert (=> b!2630957 (= e!1660045 e!1660046)))

(declare-fun b!2630956 () Bool)

(declare-fun e!1660044 () Bool)

(assert (=> b!2630956 (= e!1660044 e!1660045)))

(assert (=> d!746432 e!1660044))

(assert (= b!2630957 b!2630958))

(assert (= b!2630956 b!2630957))

(assert (= (and d!746432 (is-Cons!30477 rules!1726)) b!2630956))

(declare-fun order!16513 () Int)

(declare-fun order!16511 () Int)

(declare-fun dynLambda!13044 (Int Int) Int)

(declare-fun dynLambda!13045 (Int Int) Int)

(assert (=> b!2630958 (< (dynLambda!13044 order!16511 (toValue!6548 (transformation!4634 (h!35897 rules!1726)))) (dynLambda!13045 order!16513 lambda!98698))))

(declare-fun order!16515 () Int)

(declare-fun dynLambda!13046 (Int Int) Int)

(assert (=> b!2630958 (< (dynLambda!13046 order!16515 (toChars!6407 (transformation!4634 (h!35897 rules!1726)))) (dynLambda!13045 order!16513 lambda!98698))))

(assert (=> d!746432 true))

(declare-fun e!1660037 () Bool)

(assert (=> d!746432 e!1660037))

(declare-fun res!1107749 () Bool)

(assert (=> d!746432 (=> (not res!1107749) (not e!1660037))))

(declare-fun lt!925728 () Bool)

(assert (=> d!746432 (= res!1107749 (= lt!925728 (forall!6373 (list!11454 v!6381) lambda!98698)))))

(assert (=> d!746432 (= lt!925728 (forall!6371 v!6381 lambda!98698))))

(assert (=> d!746432 (not (isEmpty!17376 rules!1726))))

(assert (=> d!746432 (= (rulesProduceEachTokenIndividually!1051 thiss!14197 rules!1726 v!6381) lt!925728)))

(declare-fun b!2630947 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1463 (LexerInterface!4231 List!30577 List!30578) Bool)

(assert (=> b!2630947 (= e!1660037 (= lt!925728 (rulesProduceEachTokenIndividuallyList!1463 thiss!14197 rules!1726 (list!11454 v!6381))))))

(assert (= (and d!746432 res!1107749) b!2630947))

(assert (=> d!746432 m!2973777))

(assert (=> d!746432 m!2973777))

(declare-fun m!2973983 () Bool)

(assert (=> d!746432 m!2973983))

(declare-fun m!2973985 () Bool)

(assert (=> d!746432 m!2973985))

(assert (=> d!746432 m!2973761))

(assert (=> b!2630947 m!2973777))

(assert (=> b!2630947 m!2973777))

(declare-fun m!2973987 () Bool)

(assert (=> b!2630947 m!2973987))

(assert (=> b!2630762 d!746432))

(declare-fun d!746436 () Bool)

(assert (=> d!746436 (forall!6373 (dropList!937 v!6381 from!862) lambda!98683)))

(declare-fun lt!925731 () Unit!44488)

(declare-fun choose!15606 (List!30578 List!30578 Int) Unit!44488)

(assert (=> d!746436 (= lt!925731 (choose!15606 lt!925672 (dropList!937 v!6381 from!862) lambda!98683))))

(assert (=> d!746436 (forall!6373 lt!925672 lambda!98683)))

(assert (=> d!746436 (= (lemmaContentSubsetPreservesForall!303 lt!925672 (dropList!937 v!6381 from!862) lambda!98683) lt!925731)))

(declare-fun bs!475737 () Bool)

(assert (= bs!475737 d!746436))

(assert (=> bs!475737 m!2973773))

(declare-fun m!2973989 () Bool)

(assert (=> bs!475737 m!2973989))

(assert (=> bs!475737 m!2973773))

(declare-fun m!2973991 () Bool)

(assert (=> bs!475737 m!2973991))

(declare-fun m!2973993 () Bool)

(assert (=> bs!475737 m!2973993))

(assert (=> b!2630763 d!746436))

(declare-fun d!746438 () Bool)

(declare-fun list!11457 (Conc!9511) List!30578)

(assert (=> d!746438 (= (dropList!937 v!6381 from!862) (drop!1630 (list!11457 (c!422919 v!6381)) from!862))))

(declare-fun bs!475738 () Bool)

(assert (= bs!475738 d!746438))

(declare-fun m!2973995 () Bool)

(assert (=> bs!475738 m!2973995))

(assert (=> bs!475738 m!2973995))

(declare-fun m!2973997 () Bool)

(assert (=> bs!475738 m!2973997))

(assert (=> b!2630763 d!746438))

(declare-fun d!746440 () Bool)

(assert (=> d!746440 (= (list!11454 v!6381) (list!11457 (c!422919 v!6381)))))

(declare-fun bs!475739 () Bool)

(assert (= bs!475739 d!746440))

(assert (=> bs!475739 m!2973995))

(assert (=> b!2630763 d!746440))

(declare-fun d!746442 () Bool)

(declare-fun c!422940 () Bool)

(assert (=> d!746442 (= c!422940 (is-Node!9511 (c!422919 v!6381)))))

(declare-fun e!1660051 () Bool)

(assert (=> d!746442 (= (inv!41311 (c!422919 v!6381)) e!1660051)))

(declare-fun b!2630967 () Bool)

(declare-fun inv!41320 (Conc!9511) Bool)

(assert (=> b!2630967 (= e!1660051 (inv!41320 (c!422919 v!6381)))))

(declare-fun b!2630968 () Bool)

(declare-fun e!1660052 () Bool)

(assert (=> b!2630968 (= e!1660051 e!1660052)))

(declare-fun res!1107752 () Bool)

(assert (=> b!2630968 (= res!1107752 (not (is-Leaf!14569 (c!422919 v!6381))))))

(assert (=> b!2630968 (=> res!1107752 e!1660052)))

(declare-fun b!2630969 () Bool)

(declare-fun inv!41321 (Conc!9511) Bool)

(assert (=> b!2630969 (= e!1660052 (inv!41321 (c!422919 v!6381)))))

(assert (= (and d!746442 c!422940) b!2630967))

(assert (= (and d!746442 (not c!422940)) b!2630968))

(assert (= (and b!2630968 (not res!1107752)) b!2630969))

(declare-fun m!2973999 () Bool)

(assert (=> b!2630967 m!2973999))

(declare-fun m!2974001 () Bool)

(assert (=> b!2630969 m!2974001))

(assert (=> b!2630761 d!746442))

(declare-fun d!746444 () Bool)

(declare-fun lt!925734 () Bool)

(assert (=> d!746444 (= lt!925734 (contains!5773 (list!11454 v!6381) lt!925674))))

(declare-fun contains!5776 (Conc!9511 Token!8738) Bool)

(assert (=> d!746444 (= lt!925734 (contains!5776 (c!422919 v!6381) lt!925674))))

(assert (=> d!746444 (= (contains!5772 v!6381 lt!925674) lt!925734)))

(declare-fun bs!475740 () Bool)

(assert (= bs!475740 d!746444))

(assert (=> bs!475740 m!2973777))

(assert (=> bs!475740 m!2973777))

(declare-fun m!2974003 () Bool)

(assert (=> bs!475740 m!2974003))

(declare-fun m!2974005 () Bool)

(assert (=> bs!475740 m!2974005))

(assert (=> b!2630760 d!746444))

(declare-fun b!2630988 () Bool)

(declare-fun e!1660066 () List!30578)

(assert (=> b!2630988 (= e!1660066 lt!925672)))

(declare-fun b!2630989 () Bool)

(declare-fun e!1660067 () Bool)

(declare-fun lt!925737 () List!30578)

(declare-fun e!1660063 () Int)

(assert (=> b!2630989 (= e!1660067 (= (size!23560 lt!925737) e!1660063))))

(declare-fun c!422949 () Bool)

(assert (=> b!2630989 (= c!422949 (<= from!862 0))))

(declare-fun d!746446 () Bool)

(assert (=> d!746446 e!1660067))

(declare-fun res!1107755 () Bool)

(assert (=> d!746446 (=> (not res!1107755) (not e!1660067))))

(assert (=> d!746446 (= res!1107755 (set.subset (content!4302 lt!925737) (content!4302 lt!925672)))))

(declare-fun e!1660065 () List!30578)

(assert (=> d!746446 (= lt!925737 e!1660065)))

(declare-fun c!422950 () Bool)

(assert (=> d!746446 (= c!422950 (is-Nil!30478 lt!925672))))

(assert (=> d!746446 (= (drop!1630 lt!925672 from!862) lt!925737)))

(declare-fun b!2630990 () Bool)

(assert (=> b!2630990 (= e!1660065 Nil!30478)))

(declare-fun b!2630991 () Bool)

(declare-fun e!1660064 () Int)

(assert (=> b!2630991 (= e!1660064 0)))

(declare-fun b!2630992 () Bool)

(declare-fun call!169203 () Int)

(assert (=> b!2630992 (= e!1660064 (- call!169203 from!862))))

(declare-fun b!2630993 () Bool)

(assert (=> b!2630993 (= e!1660065 e!1660066)))

(declare-fun c!422951 () Bool)

(assert (=> b!2630993 (= c!422951 (<= from!862 0))))

(declare-fun b!2630994 () Bool)

(assert (=> b!2630994 (= e!1660063 call!169203)))

(declare-fun bm!169198 () Bool)

(assert (=> bm!169198 (= call!169203 (size!23560 lt!925672))))

(declare-fun b!2630995 () Bool)

(assert (=> b!2630995 (= e!1660063 e!1660064)))

(declare-fun c!422952 () Bool)

(assert (=> b!2630995 (= c!422952 (>= from!862 call!169203))))

(declare-fun b!2630996 () Bool)

(assert (=> b!2630996 (= e!1660066 (drop!1630 (t!216367 lt!925672) (- from!862 1)))))

(assert (= (and d!746446 c!422950) b!2630990))

(assert (= (and d!746446 (not c!422950)) b!2630993))

(assert (= (and b!2630993 c!422951) b!2630988))

(assert (= (and b!2630993 (not c!422951)) b!2630996))

(assert (= (and d!746446 res!1107755) b!2630989))

(assert (= (and b!2630989 c!422949) b!2630994))

(assert (= (and b!2630989 (not c!422949)) b!2630995))

(assert (= (and b!2630995 c!422952) b!2630991))

(assert (= (and b!2630995 (not c!422952)) b!2630992))

(assert (= (or b!2630994 b!2630995 b!2630992) bm!169198))

(declare-fun m!2974007 () Bool)

(assert (=> b!2630989 m!2974007))

(declare-fun m!2974009 () Bool)

(assert (=> d!746446 m!2974009))

(assert (=> d!746446 m!2973945))

(declare-fun m!2974011 () Bool)

(assert (=> bm!169198 m!2974011))

(declare-fun m!2974013 () Bool)

(assert (=> b!2630996 m!2974013))

(assert (=> b!2630760 d!746446))

(declare-fun d!746448 () Bool)

(assert (=> d!746448 (= (head!6033 lt!925670) (h!35898 lt!925670))))

(assert (=> b!2630760 d!746448))

(declare-fun d!746450 () Bool)

(declare-fun lt!925740 () Token!8738)

(assert (=> d!746450 (contains!5773 lt!925672 lt!925740)))

(declare-fun e!1660072 () Token!8738)

(assert (=> d!746450 (= lt!925740 e!1660072)))

(declare-fun c!422955 () Bool)

(assert (=> d!746450 (= c!422955 (= from!862 0))))

(declare-fun e!1660073 () Bool)

(assert (=> d!746450 e!1660073))

(declare-fun res!1107758 () Bool)

(assert (=> d!746450 (=> (not res!1107758) (not e!1660073))))

(assert (=> d!746450 (= res!1107758 (<= 0 from!862))))

(assert (=> d!746450 (= (apply!7253 lt!925672 from!862) lt!925740)))

(declare-fun b!2631003 () Bool)

(assert (=> b!2631003 (= e!1660073 (< from!862 (size!23560 lt!925672)))))

(declare-fun b!2631004 () Bool)

(assert (=> b!2631004 (= e!1660072 (head!6033 lt!925672))))

(declare-fun b!2631005 () Bool)

(assert (=> b!2631005 (= e!1660072 (apply!7253 (tail!4271 lt!925672) (- from!862 1)))))

(assert (= (and d!746450 res!1107758) b!2631003))

(assert (= (and d!746450 c!422955) b!2631004))

(assert (= (and d!746450 (not c!422955)) b!2631005))

(declare-fun m!2974015 () Bool)

(assert (=> d!746450 m!2974015))

(assert (=> b!2631003 m!2974011))

(declare-fun m!2974017 () Bool)

(assert (=> b!2631004 m!2974017))

(declare-fun m!2974019 () Bool)

(assert (=> b!2631005 m!2974019))

(assert (=> b!2631005 m!2974019))

(declare-fun m!2974021 () Bool)

(assert (=> b!2631005 m!2974021))

(assert (=> b!2630760 d!746450))

(declare-fun d!746452 () Bool)

(assert (=> d!746452 (= (tail!4271 (drop!1630 lt!925672 from!862)) (drop!1630 lt!925672 (+ from!862 1)))))

(declare-fun lt!925743 () Unit!44488)

(declare-fun choose!15607 (List!30578 Int) Unit!44488)

(assert (=> d!746452 (= lt!925743 (choose!15607 lt!925672 from!862))))

(declare-fun e!1660076 () Bool)

(assert (=> d!746452 e!1660076))

(declare-fun res!1107761 () Bool)

(assert (=> d!746452 (=> (not res!1107761) (not e!1660076))))

(assert (=> d!746452 (= res!1107761 (>= from!862 0))))

(assert (=> d!746452 (= (lemmaDropTail!819 lt!925672 from!862) lt!925743)))

(declare-fun b!2631008 () Bool)

(assert (=> b!2631008 (= e!1660076 (< from!862 (size!23560 lt!925672)))))

(assert (= (and d!746452 res!1107761) b!2631008))

(assert (=> d!746452 m!2973747))

(assert (=> d!746452 m!2973747))

(declare-fun m!2974023 () Bool)

(assert (=> d!746452 m!2974023))

(declare-fun m!2974025 () Bool)

(assert (=> d!746452 m!2974025))

(declare-fun m!2974027 () Bool)

(assert (=> d!746452 m!2974027))

(assert (=> b!2631008 m!2974011))

(assert (=> b!2630760 d!746452))

(declare-fun d!746454 () Bool)

(assert (=> d!746454 (= (tail!4271 lt!925670) (t!216367 lt!925670))))

(assert (=> b!2630760 d!746454))

(declare-fun b!2631009 () Bool)

(declare-fun e!1660080 () List!30578)

(assert (=> b!2631009 (= e!1660080 lt!925672)))

(declare-fun b!2631010 () Bool)

(declare-fun e!1660081 () Bool)

(declare-fun lt!925744 () List!30578)

(declare-fun e!1660077 () Int)

(assert (=> b!2631010 (= e!1660081 (= (size!23560 lt!925744) e!1660077))))

(declare-fun c!422956 () Bool)

(assert (=> b!2631010 (= c!422956 (<= (+ 1 from!862) 0))))

(declare-fun d!746456 () Bool)

(assert (=> d!746456 e!1660081))

(declare-fun res!1107762 () Bool)

(assert (=> d!746456 (=> (not res!1107762) (not e!1660081))))

(assert (=> d!746456 (= res!1107762 (set.subset (content!4302 lt!925744) (content!4302 lt!925672)))))

(declare-fun e!1660079 () List!30578)

(assert (=> d!746456 (= lt!925744 e!1660079)))

(declare-fun c!422957 () Bool)

(assert (=> d!746456 (= c!422957 (is-Nil!30478 lt!925672))))

(assert (=> d!746456 (= (drop!1630 lt!925672 (+ 1 from!862)) lt!925744)))

(declare-fun b!2631011 () Bool)

(assert (=> b!2631011 (= e!1660079 Nil!30478)))

(declare-fun b!2631012 () Bool)

(declare-fun e!1660078 () Int)

(assert (=> b!2631012 (= e!1660078 0)))

(declare-fun b!2631013 () Bool)

(declare-fun call!169204 () Int)

(assert (=> b!2631013 (= e!1660078 (- call!169204 (+ 1 from!862)))))

(declare-fun b!2631014 () Bool)

(assert (=> b!2631014 (= e!1660079 e!1660080)))

(declare-fun c!422958 () Bool)

(assert (=> b!2631014 (= c!422958 (<= (+ 1 from!862) 0))))

(declare-fun b!2631015 () Bool)

(assert (=> b!2631015 (= e!1660077 call!169204)))

(declare-fun bm!169199 () Bool)

(assert (=> bm!169199 (= call!169204 (size!23560 lt!925672))))

(declare-fun b!2631016 () Bool)

(assert (=> b!2631016 (= e!1660077 e!1660078)))

(declare-fun c!422959 () Bool)

(assert (=> b!2631016 (= c!422959 (>= (+ 1 from!862) call!169204))))

(declare-fun b!2631017 () Bool)

(assert (=> b!2631017 (= e!1660080 (drop!1630 (t!216367 lt!925672) (- (+ 1 from!862) 1)))))

(assert (= (and d!746456 c!422957) b!2631011))

(assert (= (and d!746456 (not c!422957)) b!2631014))

(assert (= (and b!2631014 c!422958) b!2631009))

(assert (= (and b!2631014 (not c!422958)) b!2631017))

(assert (= (and d!746456 res!1107762) b!2631010))

(assert (= (and b!2631010 c!422956) b!2631015))

(assert (= (and b!2631010 (not c!422956)) b!2631016))

(assert (= (and b!2631016 c!422959) b!2631012))

(assert (= (and b!2631016 (not c!422959)) b!2631013))

(assert (= (or b!2631015 b!2631016 b!2631013) bm!169199))

(declare-fun m!2974029 () Bool)

(assert (=> b!2631010 m!2974029))

(declare-fun m!2974031 () Bool)

(assert (=> d!746456 m!2974031))

(assert (=> d!746456 m!2973945))

(assert (=> bm!169199 m!2974011))

(declare-fun m!2974033 () Bool)

(assert (=> b!2631017 m!2974033))

(assert (=> b!2630760 d!746456))

(declare-fun d!746458 () Bool)

(declare-fun lt!925747 () Token!8738)

(assert (=> d!746458 (= lt!925747 (apply!7253 (list!11454 v!6381) from!862))))

(declare-fun apply!7256 (Conc!9511 Int) Token!8738)

(assert (=> d!746458 (= lt!925747 (apply!7256 (c!422919 v!6381) from!862))))

(declare-fun e!1660084 () Bool)

(assert (=> d!746458 e!1660084))

(declare-fun res!1107765 () Bool)

(assert (=> d!746458 (=> (not res!1107765) (not e!1660084))))

(assert (=> d!746458 (= res!1107765 (<= 0 from!862))))

(assert (=> d!746458 (= (apply!7252 v!6381 from!862) lt!925747)))

(declare-fun b!2631020 () Bool)

(assert (=> b!2631020 (= e!1660084 (< from!862 (size!23557 v!6381)))))

(assert (= (and d!746458 res!1107765) b!2631020))

(assert (=> d!746458 m!2973777))

(assert (=> d!746458 m!2973777))

(declare-fun m!2974035 () Bool)

(assert (=> d!746458 m!2974035))

(declare-fun m!2974037 () Bool)

(assert (=> d!746458 m!2974037))

(assert (=> b!2631020 m!2973793))

(assert (=> b!2630760 d!746458))

(declare-fun d!746460 () Bool)

(assert (=> d!746460 (= (head!6033 (drop!1630 lt!925672 from!862)) (apply!7253 lt!925672 from!862))))

(declare-fun lt!925750 () Unit!44488)

(declare-fun choose!15608 (List!30578 Int) Unit!44488)

(assert (=> d!746460 (= lt!925750 (choose!15608 lt!925672 from!862))))

(declare-fun e!1660087 () Bool)

(assert (=> d!746460 e!1660087))

(declare-fun res!1107768 () Bool)

(assert (=> d!746460 (=> (not res!1107768) (not e!1660087))))

(assert (=> d!746460 (= res!1107768 (>= from!862 0))))

(assert (=> d!746460 (= (lemmaDropApply!845 lt!925672 from!862) lt!925750)))

(declare-fun b!2631023 () Bool)

(assert (=> b!2631023 (= e!1660087 (< from!862 (size!23560 lt!925672)))))

(assert (= (and d!746460 res!1107768) b!2631023))

(assert (=> d!746460 m!2973747))

(assert (=> d!746460 m!2973747))

(declare-fun m!2974039 () Bool)

(assert (=> d!746460 m!2974039))

(assert (=> d!746460 m!2973757))

(declare-fun m!2974041 () Bool)

(assert (=> d!746460 m!2974041))

(assert (=> b!2631023 m!2974011))

(assert (=> b!2630760 d!746460))

(declare-fun b!2631034 () Bool)

(declare-fun b_free!74189 () Bool)

(declare-fun b_next!74893 () Bool)

(assert (=> b!2631034 (= b_free!74189 (not b_next!74893))))

(declare-fun tp!834168 () Bool)

(declare-fun b_and!192763 () Bool)

(assert (=> b!2631034 (= tp!834168 b_and!192763)))

(declare-fun b_free!74191 () Bool)

(declare-fun b_next!74895 () Bool)

(assert (=> b!2631034 (= b_free!74191 (not b_next!74895))))

(declare-fun t!216392 () Bool)

(declare-fun tb!143579 () Bool)

(assert (=> (and b!2631034 (= (toChars!6407 (transformation!4634 (h!35897 (t!216366 rules!1726)))) (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156)))) t!216392) tb!143579))

(declare-fun result!178420 () Bool)

(assert (= result!178420 result!178412))

(assert (=> b!2630922 t!216392))

(declare-fun b_and!192765 () Bool)

(declare-fun tp!834170 () Bool)

(assert (=> b!2631034 (= tp!834170 (and (=> t!216392 result!178420) b_and!192765))))

(declare-fun e!1660098 () Bool)

(assert (=> b!2631034 (= e!1660098 (and tp!834168 tp!834170))))

(declare-fun tp!834167 () Bool)

(declare-fun e!1660096 () Bool)

(declare-fun b!2631033 () Bool)

(assert (=> b!2631033 (= e!1660096 (and tp!834167 (inv!41307 (tag!5128 (h!35897 (t!216366 rules!1726)))) (inv!41310 (transformation!4634 (h!35897 (t!216366 rules!1726)))) e!1660098))))

(declare-fun b!2631032 () Bool)

(declare-fun e!1660099 () Bool)

(declare-fun tp!834169 () Bool)

(assert (=> b!2631032 (= e!1660099 (and e!1660096 tp!834169))))

(assert (=> b!2630753 (= tp!834120 e!1660099)))

(assert (= b!2631033 b!2631034))

(assert (= b!2631032 b!2631033))

(assert (= (and b!2630753 (is-Cons!30477 (t!216366 rules!1726))) b!2631032))

(declare-fun m!2974043 () Bool)

(assert (=> b!2631033 m!2974043))

(declare-fun m!2974045 () Bool)

(assert (=> b!2631033 m!2974045))

(declare-fun b!2631039 () Bool)

(declare-fun e!1660102 () Bool)

(declare-fun tp_is_empty!13751 () Bool)

(declare-fun tp!834173 () Bool)

(assert (=> b!2631039 (= e!1660102 (and tp_is_empty!13751 tp!834173))))

(assert (=> b!2630768 (= tp!834125 e!1660102)))

(assert (= (and b!2630768 (is-Cons!30476 (originalCharacters!5400 separatorToken!156))) b!2631039))

(declare-fun b!2631048 () Bool)

(declare-fun e!1660108 () Bool)

(declare-fun tp!834181 () Bool)

(declare-fun tp!834180 () Bool)

(assert (=> b!2631048 (= e!1660108 (and (inv!41311 (left!23540 (c!422919 v!6381))) tp!834180 (inv!41311 (right!23870 (c!422919 v!6381))) tp!834181))))

(declare-fun b!2631050 () Bool)

(declare-fun e!1660107 () Bool)

(declare-fun tp!834182 () Bool)

(assert (=> b!2631050 (= e!1660107 tp!834182)))

(declare-fun b!2631049 () Bool)

(declare-fun inv!41324 (IArray!19027) Bool)

(assert (=> b!2631049 (= e!1660108 (and (inv!41324 (xs!12511 (c!422919 v!6381))) e!1660107))))

(assert (=> b!2630761 (= tp!834118 (and (inv!41311 (c!422919 v!6381)) e!1660108))))

(assert (= (and b!2630761 (is-Node!9511 (c!422919 v!6381))) b!2631048))

(assert (= b!2631049 b!2631050))

(assert (= (and b!2630761 (is-Leaf!14569 (c!422919 v!6381))) b!2631049))

(declare-fun m!2974047 () Bool)

(assert (=> b!2631048 m!2974047))

(declare-fun m!2974049 () Bool)

(assert (=> b!2631048 m!2974049))

(declare-fun m!2974051 () Bool)

(assert (=> b!2631049 m!2974051))

(assert (=> b!2630761 m!2973771))

(declare-fun b!2631063 () Bool)

(declare-fun e!1660111 () Bool)

(declare-fun tp!834195 () Bool)

(assert (=> b!2631063 (= e!1660111 tp!834195)))

(declare-fun b!2631061 () Bool)

(assert (=> b!2631061 (= e!1660111 tp_is_empty!13751)))

(declare-fun b!2631062 () Bool)

(declare-fun tp!834193 () Bool)

(declare-fun tp!834197 () Bool)

(assert (=> b!2631062 (= e!1660111 (and tp!834193 tp!834197))))

(assert (=> b!2630754 (= tp!834117 e!1660111)))

(declare-fun b!2631064 () Bool)

(declare-fun tp!834194 () Bool)

(declare-fun tp!834196 () Bool)

(assert (=> b!2631064 (= e!1660111 (and tp!834194 tp!834196))))

(assert (= (and b!2630754 (is-ElementMatch!7778 (regex!4634 (h!35897 rules!1726)))) b!2631061))

(assert (= (and b!2630754 (is-Concat!12635 (regex!4634 (h!35897 rules!1726)))) b!2631062))

(assert (= (and b!2630754 (is-Star!7778 (regex!4634 (h!35897 rules!1726)))) b!2631063))

(assert (= (and b!2630754 (is-Union!7778 (regex!4634 (h!35897 rules!1726)))) b!2631064))

(declare-fun b!2631067 () Bool)

(declare-fun e!1660112 () Bool)

(declare-fun tp!834200 () Bool)

(assert (=> b!2631067 (= e!1660112 tp!834200)))

(declare-fun b!2631065 () Bool)

(assert (=> b!2631065 (= e!1660112 tp_is_empty!13751)))

(declare-fun b!2631066 () Bool)

(declare-fun tp!834198 () Bool)

(declare-fun tp!834202 () Bool)

(assert (=> b!2631066 (= e!1660112 (and tp!834198 tp!834202))))

(assert (=> b!2630755 (= tp!834123 e!1660112)))

(declare-fun b!2631068 () Bool)

(declare-fun tp!834199 () Bool)

(declare-fun tp!834201 () Bool)

(assert (=> b!2631068 (= e!1660112 (and tp!834199 tp!834201))))

(assert (= (and b!2630755 (is-ElementMatch!7778 (regex!4634 (rule!7016 separatorToken!156)))) b!2631065))

(assert (= (and b!2630755 (is-Concat!12635 (regex!4634 (rule!7016 separatorToken!156)))) b!2631066))

(assert (= (and b!2630755 (is-Star!7778 (regex!4634 (rule!7016 separatorToken!156)))) b!2631067))

(assert (= (and b!2630755 (is-Union!7778 (regex!4634 (rule!7016 separatorToken!156)))) b!2631068))

(declare-fun b_lambda!79219 () Bool)

(assert (= b_lambda!79217 (or (and b!2630770 b_free!74175) (and b!2630756 b_free!74179 (= (toChars!6407 (transformation!4634 (h!35897 rules!1726))) (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))))) (and b!2631034 b_free!74191 (= (toChars!6407 (transformation!4634 (h!35897 (t!216366 rules!1726)))) (toChars!6407 (transformation!4634 (rule!7016 separatorToken!156))))) b_lambda!79219)))

(push 1)

(assert (not d!746452))

(assert (not b!2631004))

(assert (not b!2631049))

(assert (not b!2631064))

(assert (not b!2631063))

(assert (not d!746418))

(assert (not b_next!74879))

(assert (not d!746382))

(assert (not b_next!74895))

(assert b_and!192759)

(assert (not b!2630889))

(assert (not b!2630956))

(assert (not b!2631068))

(assert (not b!2631010))

(assert (not d!746446))

(assert (not b_next!74893))

(assert (not b!2631008))

(assert (not d!746436))

(assert (not d!746438))

(assert (not d!746422))

(assert (not b!2631062))

(assert (not bm!169199))

(assert tp_is_empty!13751)

(assert (not d!746388))

(assert (not b_next!74883))

(assert (not b!2631050))

(assert (not b!2631039))

(assert (not b!2630834))

(assert (not b_next!74877))

(assert (not b!2630923))

(assert b_and!192761)

(assert (not b!2630928))

(assert (not d!746460))

(assert (not tb!143575))

(assert (not b!2630902))

(assert (not b!2630917))

(assert (not b_lambda!79219))

(assert (not b!2630967))

(assert (not b!2631033))

(assert (not b!2630901))

(assert (not d!746456))

(assert (not b!2630904))

(assert (not b!2631067))

(assert (not b!2630916))

(assert (not d!746444))

(assert (not b!2631048))

(assert (not b!2630887))

(assert (not b!2631032))

(assert (not b!2630996))

(assert (not b!2630922))

(assert (not b!2630913))

(assert (not b!2631020))

(assert b_and!192763)

(assert (not d!746450))

(assert b_and!192739)

(assert (not b!2631005))

(assert (not d!746432))

(assert (not d!746426))

(assert (not d!746428))

(assert b_and!192765)

(assert (not b!2630888))

(assert (not b_next!74881))

(assert (not d!746414))

(assert (not b!2630833))

(assert (not b!2630969))

(assert (not b!2630761))

(assert (not b!2631003))

(assert b_and!192743)

(assert (not b!2631066))

(assert (not b!2630989))

(assert (not d!746380))

(assert (not bm!169198))

(assert (not d!746458))

(assert (not d!746430))

(assert (not b!2631023))

(assert (not d!746440))

(assert (not b!2630910))

(assert (not b!2631017))

(assert (not b!2630947))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74893))

(assert (not b_next!74883))

(assert (not b_next!74879))

(assert b_and!192763)

(assert b_and!192739)

(assert (not b_next!74895))

(assert b_and!192765)

(assert (not b_next!74881))

(assert b_and!192743)

(assert b_and!192759)

(assert (not b_next!74877))

(assert b_and!192761)

(check-sat)

(pop 1)

