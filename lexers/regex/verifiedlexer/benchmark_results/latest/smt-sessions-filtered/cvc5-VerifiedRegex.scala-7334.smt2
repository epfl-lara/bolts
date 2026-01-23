; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!390092 () Bool)

(assert start!390092)

(declare-fun b!4115827 () Bool)

(declare-fun b_free!115991 () Bool)

(declare-fun b_next!116695 () Bool)

(assert (=> b!4115827 (= b_free!115991 (not b_next!116695))))

(declare-fun tp!1253682 () Bool)

(declare-fun b_and!317941 () Bool)

(assert (=> b!4115827 (= tp!1253682 b_and!317941)))

(declare-fun b_free!115993 () Bool)

(declare-fun b_next!116697 () Bool)

(assert (=> b!4115827 (= b_free!115993 (not b_next!116697))))

(declare-fun tp!1253683 () Bool)

(declare-fun b_and!317943 () Bool)

(assert (=> b!4115827 (= tp!1253683 b_and!317943)))

(declare-fun b!4115831 () Bool)

(declare-fun b_free!115995 () Bool)

(declare-fun b_next!116699 () Bool)

(assert (=> b!4115831 (= b_free!115995 (not b_next!116699))))

(declare-fun tp!1253677 () Bool)

(declare-fun b_and!317945 () Bool)

(assert (=> b!4115831 (= tp!1253677 b_and!317945)))

(declare-fun b_free!115997 () Bool)

(declare-fun b_next!116701 () Bool)

(assert (=> b!4115831 (= b_free!115997 (not b_next!116701))))

(declare-fun tp!1253680 () Bool)

(declare-fun b_and!317947 () Bool)

(assert (=> b!4115831 (= tp!1253680 b_and!317947)))

(declare-fun b!4115828 () Bool)

(declare-fun b_free!115999 () Bool)

(declare-fun b_next!116703 () Bool)

(assert (=> b!4115828 (= b_free!115999 (not b_next!116703))))

(declare-fun tp!1253687 () Bool)

(declare-fun b_and!317949 () Bool)

(assert (=> b!4115828 (= tp!1253687 b_and!317949)))

(declare-fun b_free!116001 () Bool)

(declare-fun b_next!116705 () Bool)

(assert (=> b!4115828 (= b_free!116001 (not b_next!116705))))

(declare-fun tp!1253678 () Bool)

(declare-fun b_and!317951 () Bool)

(assert (=> b!4115828 (= tp!1253678 b_and!317951)))

(declare-fun e!2553736 () Bool)

(assert (=> b!4115827 (= e!2553736 (and tp!1253682 tp!1253683))))

(declare-fun e!2553729 () Bool)

(assert (=> b!4115828 (= e!2553729 (and tp!1253687 tp!1253678))))

(declare-fun b!4115829 () Bool)

(declare-fun res!1681028 () Bool)

(declare-fun e!2553735 () Bool)

(assert (=> b!4115829 (=> (not res!1681028) (not e!2553735))))

(declare-datatypes ((LexerInterface!6828 0))(
  ( (LexerInterfaceExt!6825 (__x!27155 Int)) (Lexer!6826) )
))
(declare-fun thiss!25645 () LexerInterface!6828)

(declare-datatypes ((List!44554 0))(
  ( (Nil!44430) (Cons!44430 (h!49850 (_ BitVec 16)) (t!340345 List!44554)) )
))
(declare-datatypes ((TokenValue!7469 0))(
  ( (FloatLiteralValue!14938 (text!52728 List!44554)) (TokenValueExt!7468 (__x!27156 Int)) (Broken!37345 (value!226847 List!44554)) (Object!7592) (End!7469) (Def!7469) (Underscore!7469) (Match!7469) (Else!7469) (Error!7469) (Case!7469) (If!7469) (Extends!7469) (Abstract!7469) (Class!7469) (Val!7469) (DelimiterValue!14938 (del!7529 List!44554)) (KeywordValue!7475 (value!226848 List!44554)) (CommentValue!14938 (value!226849 List!44554)) (WhitespaceValue!14938 (value!226850 List!44554)) (IndentationValue!7469 (value!226851 List!44554)) (String!51096) (Int32!7469) (Broken!37346 (value!226852 List!44554)) (Boolean!7470) (Unit!63793) (OperatorValue!7472 (op!7529 List!44554)) (IdentifierValue!14938 (value!226853 List!44554)) (IdentifierValue!14939 (value!226854 List!44554)) (WhitespaceValue!14939 (value!226855 List!44554)) (True!14938) (False!14938) (Broken!37347 (value!226856 List!44554)) (Broken!37348 (value!226857 List!44554)) (True!14939) (RightBrace!7469) (RightBracket!7469) (Colon!7469) (Null!7469) (Comma!7469) (LeftBracket!7469) (False!14939) (LeftBrace!7469) (ImaginaryLiteralValue!7469 (text!52729 List!44554)) (StringLiteralValue!22407 (value!226858 List!44554)) (EOFValue!7469 (value!226859 List!44554)) (IdentValue!7469 (value!226860 List!44554)) (DelimiterValue!14939 (value!226861 List!44554)) (DedentValue!7469 (value!226862 List!44554)) (NewLineValue!7469 (value!226863 List!44554)) (IntegerValue!22407 (value!226864 (_ BitVec 32)) (text!52730 List!44554)) (IntegerValue!22408 (value!226865 Int) (text!52731 List!44554)) (Times!7469) (Or!7469) (Equal!7469) (Minus!7469) (Broken!37349 (value!226866 List!44554)) (And!7469) (Div!7469) (LessEqual!7469) (Mod!7469) (Concat!19613) (Not!7469) (Plus!7469) (SpaceValue!7469 (value!226867 List!44554)) (IntegerValue!22409 (value!226868 Int) (text!52732 List!44554)) (StringLiteralValue!22408 (text!52733 List!44554)) (FloatLiteralValue!14939 (text!52734 List!44554)) (BytesLiteralValue!7469 (value!226869 List!44554)) (CommentValue!14939 (value!226870 List!44554)) (StringLiteralValue!22409 (value!226871 List!44554)) (ErrorTokenValue!7469 (msg!7530 List!44554)) )
))
(declare-datatypes ((C!24474 0))(
  ( (C!24475 (val!14347 Int)) )
))
(declare-datatypes ((List!44555 0))(
  ( (Nil!44431) (Cons!44431 (h!49851 C!24474) (t!340346 List!44555)) )
))
(declare-datatypes ((IArray!26905 0))(
  ( (IArray!26906 (innerList!13510 List!44555)) )
))
(declare-datatypes ((Conc!13450 0))(
  ( (Node!13450 (left!33296 Conc!13450) (right!33626 Conc!13450) (csize!27130 Int) (cheight!13661 Int)) (Leaf!20785 (xs!16756 IArray!26905) (csize!27131 Int)) (Empty!13450) )
))
(declare-datatypes ((BalanceConc!26494 0))(
  ( (BalanceConc!26495 (c!707109 Conc!13450)) )
))
(declare-datatypes ((String!51097 0))(
  ( (String!51098 (value!226872 String)) )
))
(declare-datatypes ((Regex!12144 0))(
  ( (ElementMatch!12144 (c!707110 C!24474)) (Concat!19614 (regOne!24800 Regex!12144) (regTwo!24800 Regex!12144)) (EmptyExpr!12144) (Star!12144 (reg!12473 Regex!12144)) (EmptyLang!12144) (Union!12144 (regOne!24801 Regex!12144) (regTwo!24801 Regex!12144)) )
))
(declare-datatypes ((TokenValueInjection!14366 0))(
  ( (TokenValueInjection!14367 (toValue!9887 Int) (toChars!9746 Int)) )
))
(declare-datatypes ((Rule!14278 0))(
  ( (Rule!14279 (regex!7239 Regex!12144) (tag!8099 String!51097) (isSeparator!7239 Bool) (transformation!7239 TokenValueInjection!14366)) )
))
(declare-datatypes ((List!44556 0))(
  ( (Nil!44432) (Cons!44432 (h!49852 Rule!14278) (t!340347 List!44556)) )
))
(declare-fun rules!3756 () List!44556)

(declare-fun rulesInvariant!6125 (LexerInterface!6828 List!44556) Bool)

(assert (=> b!4115829 (= res!1681028 (rulesInvariant!6125 thiss!25645 rules!3756))))

(declare-fun b!4115830 () Bool)

(declare-fun tp!1253681 () Bool)

(declare-fun e!2553728 () Bool)

(declare-fun inv!59017 (String!51097) Bool)

(declare-fun inv!59020 (TokenValueInjection!14366) Bool)

(assert (=> b!4115830 (= e!2553728 (and tp!1253681 (inv!59017 (tag!8099 (h!49852 rules!3756))) (inv!59020 (transformation!7239 (h!49852 rules!3756))) e!2553729))))

(declare-fun e!2553726 () Bool)

(assert (=> b!4115831 (= e!2553726 (and tp!1253677 tp!1253680))))

(declare-fun res!1681026 () Bool)

(assert (=> start!390092 (=> (not res!1681026) (not e!2553735))))

(assert (=> start!390092 (= res!1681026 (is-Lexer!6826 thiss!25645))))

(assert (=> start!390092 e!2553735))

(declare-fun e!2553727 () Bool)

(assert (=> start!390092 e!2553727))

(declare-fun e!2553725 () Bool)

(assert (=> start!390092 e!2553725))

(assert (=> start!390092 true))

(declare-fun e!2553730 () Bool)

(assert (=> start!390092 e!2553730))

(declare-fun e!2553733 () Bool)

(assert (=> start!390092 e!2553733))

(declare-fun e!2553737 () Bool)

(assert (=> start!390092 e!2553737))

(declare-fun b!4115832 () Bool)

(declare-fun tp!1253686 () Bool)

(assert (=> b!4115832 (= e!2553727 (and e!2553728 tp!1253686))))

(declare-fun b!4115833 () Bool)

(declare-fun res!1681027 () Bool)

(assert (=> b!4115833 (=> (not res!1681027) (not e!2553735))))

(declare-fun rBis!149 () Rule!14278)

(declare-fun contains!8909 (List!44556 Rule!14278) Bool)

(assert (=> b!4115833 (= res!1681027 (contains!8909 rules!3756 rBis!149))))

(declare-fun b!4115834 () Bool)

(declare-fun tp_is_empty!21211 () Bool)

(declare-fun tp!1253685 () Bool)

(assert (=> b!4115834 (= e!2553733 (and tp_is_empty!21211 tp!1253685))))

(declare-fun b!4115835 () Bool)

(declare-fun res!1681025 () Bool)

(assert (=> b!4115835 (=> (not res!1681025) (not e!2553735))))

(declare-fun p!2912 () List!44555)

(declare-fun isEmpty!26415 (List!44555) Bool)

(assert (=> b!4115835 (= res!1681025 (not (isEmpty!26415 p!2912)))))

(declare-fun b!4115836 () Bool)

(declare-fun res!1681023 () Bool)

(assert (=> b!4115836 (=> (not res!1681023) (not e!2553735))))

(declare-fun input!3238 () List!44555)

(declare-fun isPrefix!4174 (List!44555 List!44555) Bool)

(assert (=> b!4115836 (= res!1681023 (isPrefix!4174 p!2912 input!3238))))

(declare-fun b!4115837 () Bool)

(assert (=> b!4115837 (= e!2553735 false)))

(declare-fun lt!1468740 () Bool)

(declare-fun rulesValidInductive!2670 (LexerInterface!6828 List!44556) Bool)

(assert (=> b!4115837 (= lt!1468740 (rulesValidInductive!2670 thiss!25645 rules!3756))))

(declare-datatypes ((Unit!63794 0))(
  ( (Unit!63795) )
))
(declare-fun lt!1468739 () Unit!63794)

(declare-fun r!4008 () Rule!14278)

(declare-fun lemmaSemiInverse!2097 (TokenValueInjection!14366 BalanceConc!26494) Unit!63794)

(declare-fun seqFromList!5356 (List!44555) BalanceConc!26494)

(assert (=> b!4115837 (= lt!1468739 (lemmaSemiInverse!2097 (transformation!7239 r!4008) (seqFromList!5356 p!2912)))))

(declare-fun tp!1253684 () Bool)

(declare-fun b!4115838 () Bool)

(assert (=> b!4115838 (= e!2553730 (and tp!1253684 (inv!59017 (tag!8099 r!4008)) (inv!59020 (transformation!7239 r!4008)) e!2553726))))

(declare-fun tp!1253679 () Bool)

(declare-fun b!4115839 () Bool)

(assert (=> b!4115839 (= e!2553737 (and tp!1253679 (inv!59017 (tag!8099 rBis!149)) (inv!59020 (transformation!7239 rBis!149)) e!2553736))))

(declare-fun b!4115840 () Bool)

(declare-fun res!1681022 () Bool)

(assert (=> b!4115840 (=> (not res!1681022) (not e!2553735))))

(declare-fun isEmpty!26416 (List!44556) Bool)

(assert (=> b!4115840 (= res!1681022 (not (isEmpty!26416 rules!3756)))))

(declare-fun b!4115841 () Bool)

(declare-fun tp!1253688 () Bool)

(assert (=> b!4115841 (= e!2553725 (and tp_is_empty!21211 tp!1253688))))

(declare-fun b!4115842 () Bool)

(declare-fun res!1681024 () Bool)

(assert (=> b!4115842 (=> (not res!1681024) (not e!2553735))))

(assert (=> b!4115842 (= res!1681024 (contains!8909 rules!3756 r!4008))))

(assert (= (and start!390092 res!1681026) b!4115836))

(assert (= (and b!4115836 res!1681023) b!4115840))

(assert (= (and b!4115840 res!1681022) b!4115829))

(assert (= (and b!4115829 res!1681028) b!4115842))

(assert (= (and b!4115842 res!1681024) b!4115833))

(assert (= (and b!4115833 res!1681027) b!4115835))

(assert (= (and b!4115835 res!1681025) b!4115837))

(assert (= b!4115830 b!4115828))

(assert (= b!4115832 b!4115830))

(assert (= (and start!390092 (is-Cons!44432 rules!3756)) b!4115832))

(assert (= (and start!390092 (is-Cons!44431 p!2912)) b!4115841))

(assert (= b!4115838 b!4115831))

(assert (= start!390092 b!4115838))

(assert (= (and start!390092 (is-Cons!44431 input!3238)) b!4115834))

(assert (= b!4115839 b!4115827))

(assert (= start!390092 b!4115839))

(declare-fun m!4715809 () Bool)

(assert (=> b!4115837 m!4715809))

(declare-fun m!4715811 () Bool)

(assert (=> b!4115837 m!4715811))

(assert (=> b!4115837 m!4715811))

(declare-fun m!4715813 () Bool)

(assert (=> b!4115837 m!4715813))

(declare-fun m!4715815 () Bool)

(assert (=> b!4115830 m!4715815))

(declare-fun m!4715817 () Bool)

(assert (=> b!4115830 m!4715817))

(declare-fun m!4715819 () Bool)

(assert (=> b!4115829 m!4715819))

(declare-fun m!4715821 () Bool)

(assert (=> b!4115842 m!4715821))

(declare-fun m!4715823 () Bool)

(assert (=> b!4115840 m!4715823))

(declare-fun m!4715825 () Bool)

(assert (=> b!4115838 m!4715825))

(declare-fun m!4715827 () Bool)

(assert (=> b!4115838 m!4715827))

(declare-fun m!4715829 () Bool)

(assert (=> b!4115836 m!4715829))

(declare-fun m!4715831 () Bool)

(assert (=> b!4115835 m!4715831))

(declare-fun m!4715833 () Bool)

(assert (=> b!4115833 m!4715833))

(declare-fun m!4715835 () Bool)

(assert (=> b!4115839 m!4715835))

(declare-fun m!4715837 () Bool)

(assert (=> b!4115839 m!4715837))

(push 1)

(assert b_and!317947)

(assert (not b!4115837))

(assert b_and!317951)

(assert (not b!4115840))

(assert (not b_next!116699))

(assert (not b_next!116703))

(assert (not b!4115830))

(assert (not b!4115834))

(assert (not b!4115833))

(assert (not b!4115836))

(assert (not b_next!116695))

(assert (not b!4115839))

(assert b_and!317945)

(assert tp_is_empty!21211)

(assert b_and!317949)

(assert (not b!4115842))

(assert (not b_next!116697))

(assert b_and!317941)

(assert (not b!4115829))

(assert (not b!4115832))

(assert (not b!4115838))

(assert (not b_next!116701))

(assert (not b!4115835))

(assert (not b_next!116705))

(assert (not b!4115841))

(assert b_and!317943)

(check-sat)

(pop 1)

(push 1)

(assert b_and!317947)

(assert b_and!317951)

(assert b_and!317945)

(assert (not b_next!116699))

(assert (not b_next!116703))

(assert b_and!317949)

(assert (not b_next!116697))

(assert b_and!317941)

(assert (not b_next!116701))

(assert (not b_next!116705))

(assert b_and!317943)

(assert (not b_next!116695))

(check-sat)

(pop 1)

