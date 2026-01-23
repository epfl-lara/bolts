; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104916 () Bool)

(assert start!104916)

(declare-fun b!1183752 () Bool)

(declare-fun b_free!28357 () Bool)

(declare-fun b_next!29061 () Bool)

(assert (=> b!1183752 (= b_free!28357 (not b_next!29061))))

(declare-fun tp!337453 () Bool)

(declare-fun b_and!81397 () Bool)

(assert (=> b!1183752 (= tp!337453 b_and!81397)))

(declare-fun b_free!28359 () Bool)

(declare-fun b_next!29063 () Bool)

(assert (=> b!1183752 (= b_free!28359 (not b_next!29063))))

(declare-fun tp!337461 () Bool)

(declare-fun b_and!81399 () Bool)

(assert (=> b!1183752 (= tp!337461 b_and!81399)))

(declare-fun b!1183759 () Bool)

(declare-fun b_free!28361 () Bool)

(declare-fun b_next!29065 () Bool)

(assert (=> b!1183759 (= b_free!28361 (not b_next!29065))))

(declare-fun tp!337460 () Bool)

(declare-fun b_and!81401 () Bool)

(assert (=> b!1183759 (= tp!337460 b_and!81401)))

(declare-fun b_free!28363 () Bool)

(declare-fun b_next!29067 () Bool)

(assert (=> b!1183759 (= b_free!28363 (not b_next!29067))))

(declare-fun tp!337454 () Bool)

(declare-fun b_and!81403 () Bool)

(assert (=> b!1183759 (= tp!337454 b_and!81403)))

(declare-fun b!1183774 () Bool)

(declare-fun e!760152 () Bool)

(assert (=> b!1183774 (= e!760152 true)))

(declare-fun b!1183773 () Bool)

(declare-fun e!760151 () Bool)

(assert (=> b!1183773 (= e!760151 e!760152)))

(declare-fun b!1183772 () Bool)

(declare-fun e!760150 () Bool)

(assert (=> b!1183772 (= e!760150 e!760151)))

(declare-fun b!1183748 () Bool)

(assert (=> b!1183748 e!760150))

(assert (= b!1183773 b!1183774))

(assert (= b!1183772 b!1183773))

(declare-datatypes ((C!6998 0))(
  ( (C!6999 (val!3795 Int)) )
))
(declare-datatypes ((List!11872 0))(
  ( (Nil!11848) (Cons!11848 (h!17249 C!6998) (t!111662 List!11872)) )
))
(declare-datatypes ((IArray!7765 0))(
  ( (IArray!7766 (innerList!3940 List!11872)) )
))
(declare-datatypes ((Conc!3880 0))(
  ( (Node!3880 (left!10319 Conc!3880) (right!10649 Conc!3880) (csize!7990 Int) (cheight!4091 Int)) (Leaf!5946 (xs!6585 IArray!7765) (csize!7991 Int)) (Empty!3880) )
))
(declare-datatypes ((String!14349 0))(
  ( (String!14350 (value!67027 String)) )
))
(declare-datatypes ((List!11873 0))(
  ( (Nil!11849) (Cons!11849 (h!17250 (_ BitVec 16)) (t!111663 List!11873)) )
))
(declare-datatypes ((BalanceConc!7782 0))(
  ( (BalanceConc!7783 (c!196964 Conc!3880)) )
))
(declare-datatypes ((TokenValue!2136 0))(
  ( (FloatLiteralValue!4272 (text!15397 List!11873)) (TokenValueExt!2135 (__x!7983 Int)) (Broken!10680 (value!67028 List!11873)) (Object!2159) (End!2136) (Def!2136) (Underscore!2136) (Match!2136) (Else!2136) (Error!2136) (Case!2136) (If!2136) (Extends!2136) (Abstract!2136) (Class!2136) (Val!2136) (DelimiterValue!4272 (del!2196 List!11873)) (KeywordValue!2142 (value!67029 List!11873)) (CommentValue!4272 (value!67030 List!11873)) (WhitespaceValue!4272 (value!67031 List!11873)) (IndentationValue!2136 (value!67032 List!11873)) (String!14351) (Int32!2136) (Broken!10681 (value!67033 List!11873)) (Boolean!2137) (Unit!18160) (OperatorValue!2139 (op!2196 List!11873)) (IdentifierValue!4272 (value!67034 List!11873)) (IdentifierValue!4273 (value!67035 List!11873)) (WhitespaceValue!4273 (value!67036 List!11873)) (True!4272) (False!4272) (Broken!10682 (value!67037 List!11873)) (Broken!10683 (value!67038 List!11873)) (True!4273) (RightBrace!2136) (RightBracket!2136) (Colon!2136) (Null!2136) (Comma!2136) (LeftBracket!2136) (False!4273) (LeftBrace!2136) (ImaginaryLiteralValue!2136 (text!15398 List!11873)) (StringLiteralValue!6408 (value!67039 List!11873)) (EOFValue!2136 (value!67040 List!11873)) (IdentValue!2136 (value!67041 List!11873)) (DelimiterValue!4273 (value!67042 List!11873)) (DedentValue!2136 (value!67043 List!11873)) (NewLineValue!2136 (value!67044 List!11873)) (IntegerValue!6408 (value!67045 (_ BitVec 32)) (text!15399 List!11873)) (IntegerValue!6409 (value!67046 Int) (text!15400 List!11873)) (Times!2136) (Or!2136) (Equal!2136) (Minus!2136) (Broken!10684 (value!67047 List!11873)) (And!2136) (Div!2136) (LessEqual!2136) (Mod!2136) (Concat!5476) (Not!2136) (Plus!2136) (SpaceValue!2136 (value!67048 List!11873)) (IntegerValue!6410 (value!67049 Int) (text!15401 List!11873)) (StringLiteralValue!6409 (text!15402 List!11873)) (FloatLiteralValue!4273 (text!15403 List!11873)) (BytesLiteralValue!2136 (value!67050 List!11873)) (CommentValue!4273 (value!67051 List!11873)) (StringLiteralValue!6410 (value!67052 List!11873)) (ErrorTokenValue!2136 (msg!2197 List!11873)) )
))
(declare-datatypes ((Regex!3340 0))(
  ( (ElementMatch!3340 (c!196965 C!6998)) (Concat!5477 (regOne!7192 Regex!3340) (regTwo!7192 Regex!3340)) (EmptyExpr!3340) (Star!3340 (reg!3669 Regex!3340)) (EmptyLang!3340) (Union!3340 (regOne!7193 Regex!3340) (regTwo!7193 Regex!3340)) )
))
(declare-datatypes ((TokenValueInjection!3972 0))(
  ( (TokenValueInjection!3973 (toValue!3183 Int) (toChars!3042 Int)) )
))
(declare-datatypes ((Rule!3940 0))(
  ( (Rule!3941 (regex!2070 Regex!3340) (tag!2332 String!14349) (isSeparator!2070 Bool) (transformation!2070 TokenValueInjection!3972)) )
))
(declare-datatypes ((List!11874 0))(
  ( (Nil!11850) (Cons!11850 (h!17251 Rule!3940) (t!111664 List!11874)) )
))
(declare-fun rules!4386 () List!11874)

(assert (= (and b!1183748 (is-Cons!11850 rules!4386)) b!1183772))

(declare-fun lambda!48768 () Int)

(declare-fun order!7337 () Int)

(declare-fun order!7335 () Int)

(declare-fun dynLambda!5265 (Int Int) Int)

(declare-fun dynLambda!5266 (Int Int) Int)

(assert (=> b!1183774 (< (dynLambda!5265 order!7335 (toValue!3183 (transformation!2070 (h!17251 rules!4386)))) (dynLambda!5266 order!7337 lambda!48768))))

(declare-fun order!7339 () Int)

(declare-fun dynLambda!5267 (Int Int) Int)

(assert (=> b!1183774 (< (dynLambda!5267 order!7339 (toChars!3042 (transformation!2070 (h!17251 rules!4386)))) (dynLambda!5266 order!7337 lambda!48768))))

(declare-fun b!1183744 () Bool)

(declare-fun res!535004 () Bool)

(declare-fun e!760141 () Bool)

(assert (=> b!1183744 (=> (not res!535004) (not e!760141))))

(declare-datatypes ((Token!3802 0))(
  ( (Token!3803 (value!67053 TokenValue!2136) (rule!3491 Rule!3940) (size!9342 Int) (originalCharacters!2624 List!11872)) )
))
(declare-datatypes ((List!11875 0))(
  ( (Nil!11851) (Cons!11851 (h!17252 Token!3802) (t!111665 List!11875)) )
))
(declare-fun l!6534 () List!11875)

(declare-fun i!1621 () Int)

(assert (=> b!1183744 (= res!535004 (and (not (is-Nil!11851 l!6534)) (> i!1621 0)))))

(declare-fun e!760136 () Bool)

(declare-fun b!1183745 () Bool)

(declare-fun lt!407315 () List!11875)

(declare-datatypes ((LexerInterface!1765 0))(
  ( (LexerInterfaceExt!1762 (__x!7984 Int)) (Lexer!1763) )
))
(declare-fun thiss!27592 () LexerInterface!1765)

(declare-fun rulesProduceEachTokenIndividuallyList!631 (LexerInterface!1765 List!11874 List!11875) Bool)

(assert (=> b!1183745 (= e!760136 (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 (t!111665 lt!407315)))))

(declare-fun e!760139 () Bool)

(declare-fun tp!337459 () Bool)

(declare-fun b!1183746 () Bool)

(declare-fun e!760130 () Bool)

(declare-fun inv!15670 (String!14349) Bool)

(declare-fun inv!15673 (TokenValueInjection!3972) Bool)

(assert (=> b!1183746 (= e!760130 (and tp!337459 (inv!15670 (tag!2332 (rule!3491 (h!17252 l!6534)))) (inv!15673 (transformation!2070 (rule!3491 (h!17252 l!6534)))) e!760139))))

(declare-fun b!1183747 () Bool)

(declare-fun res!535000 () Bool)

(assert (=> b!1183747 (=> (not res!535000) (not e!760141))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!159 (LexerInterface!1765 List!11875 List!11874) Bool)

(assert (=> b!1183747 (= res!535000 (tokensListTwoByTwoPredicateSeparableList!159 thiss!27592 l!6534 rules!4386))))

(assert (=> b!1183748 (= e!760141 (not true))))

(declare-fun forall!3137 (List!11875 Int) Bool)

(assert (=> b!1183748 (forall!3137 lt!407315 lambda!48768)))

(declare-datatypes ((Unit!18161 0))(
  ( (Unit!18162) )
))
(declare-fun lt!407312 () Unit!18161)

(declare-fun lemmaForallSubseq!188 (List!11875 List!11875 Int) Unit!18161)

(assert (=> b!1183748 (= lt!407312 (lemmaForallSubseq!188 lt!407315 l!6534 lambda!48768))))

(declare-fun subseq!324 (List!11875 List!11875) Bool)

(assert (=> b!1183748 (subseq!324 lt!407315 l!6534)))

(declare-fun lt!407311 () Unit!18161)

(declare-fun lemmaDropSubseq!87 (List!11875 Int) Unit!18161)

(assert (=> b!1183748 (= lt!407311 (lemmaDropSubseq!87 l!6534 i!1621))))

(declare-fun e!760137 () Bool)

(assert (=> b!1183748 (= (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 lt!407315) e!760137)))

(declare-fun res!535002 () Bool)

(assert (=> b!1183748 (=> res!535002 e!760137)))

(assert (=> b!1183748 (= res!535002 (not (is-Cons!11851 lt!407315)))))

(declare-fun drop!548 (List!11875 Int) List!11875)

(assert (=> b!1183748 (= lt!407315 (drop!548 l!6534 i!1621))))

(declare-fun e!760142 () Bool)

(assert (=> b!1183748 e!760142))

(declare-fun res!535003 () Bool)

(assert (=> b!1183748 (=> (not res!535003) (not e!760142))))

(declare-fun lt!407316 () List!11875)

(assert (=> b!1183748 (= res!535003 (forall!3137 lt!407316 lambda!48768))))

(declare-fun lt!407313 () Unit!18161)

(assert (=> b!1183748 (= lt!407313 (lemmaForallSubseq!188 lt!407316 (t!111665 l!6534) lambda!48768))))

(assert (=> b!1183748 (subseq!324 lt!407316 (t!111665 l!6534))))

(declare-fun lt!407314 () Unit!18161)

(assert (=> b!1183748 (= lt!407314 (lemmaDropSubseq!87 (t!111665 l!6534) (- i!1621 1)))))

(declare-fun e!760140 () Bool)

(assert (=> b!1183748 (= (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 lt!407316) e!760140)))

(declare-fun res!535006 () Bool)

(assert (=> b!1183748 (=> res!535006 e!760140)))

(assert (=> b!1183748 (= res!535006 (not (is-Cons!11851 lt!407316)))))

(assert (=> b!1183748 (= lt!407316 (drop!548 (t!111665 l!6534) (- i!1621 1)))))

(declare-fun lt!407317 () Unit!18161)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!63 (LexerInterface!1765 List!11875 Int List!11874) Unit!18161)

(assert (=> b!1183748 (= lt!407317 (tokensListTwoByTwoPredicateSeparableTokensDropList!63 thiss!27592 (t!111665 l!6534) (- i!1621 1) rules!4386))))

(declare-fun res!534998 () Bool)

(assert (=> start!104916 (=> (not res!534998) (not e!760141))))

(assert (=> start!104916 (= res!534998 (is-Lexer!1763 thiss!27592))))

(assert (=> start!104916 e!760141))

(assert (=> start!104916 true))

(declare-fun e!760129 () Bool)

(assert (=> start!104916 e!760129))

(declare-fun e!760143 () Bool)

(assert (=> start!104916 e!760143))

(declare-fun tp!337455 () Bool)

(declare-fun e!760134 () Bool)

(declare-fun b!1183749 () Bool)

(declare-fun inv!15674 (Token!3802) Bool)

(assert (=> b!1183749 (= e!760143 (and (inv!15674 (h!17252 l!6534)) e!760134 tp!337455))))

(declare-fun b!1183750 () Bool)

(assert (=> b!1183750 (= e!760137 e!760136)))

(declare-fun res!534999 () Bool)

(assert (=> b!1183750 (=> (not res!534999) (not e!760136))))

(declare-fun rulesProduceIndividualToken!794 (LexerInterface!1765 List!11874 Token!3802) Bool)

(assert (=> b!1183750 (= res!534999 (rulesProduceIndividualToken!794 thiss!27592 rules!4386 (h!17252 lt!407315)))))

(declare-fun b!1183751 () Bool)

(declare-fun e!760128 () Bool)

(declare-fun tp!337457 () Bool)

(assert (=> b!1183751 (= e!760129 (and e!760128 tp!337457))))

(assert (=> b!1183752 (= e!760139 (and tp!337453 tp!337461))))

(declare-fun b!1183753 () Bool)

(declare-fun res!535005 () Bool)

(assert (=> b!1183753 (=> (not res!535005) (not e!760141))))

(assert (=> b!1183753 (= res!535005 (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1183754 () Bool)

(declare-fun e!760135 () Bool)

(assert (=> b!1183754 (= e!760135 (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 (t!111665 lt!407316)))))

(declare-fun tp!337458 () Bool)

(declare-fun b!1183755 () Bool)

(declare-fun inv!21 (TokenValue!2136) Bool)

(assert (=> b!1183755 (= e!760134 (and (inv!21 (value!67053 (h!17252 l!6534))) e!760130 tp!337458))))

(declare-fun b!1183756 () Bool)

(declare-fun res!535001 () Bool)

(assert (=> b!1183756 (=> (not res!535001) (not e!760141))))

(assert (=> b!1183756 (= res!535001 (tokensListTwoByTwoPredicateSeparableList!159 thiss!27592 (t!111665 l!6534) rules!4386))))

(declare-fun b!1183757 () Bool)

(declare-fun res!535007 () Bool)

(assert (=> b!1183757 (=> (not res!535007) (not e!760141))))

(assert (=> b!1183757 (= res!535007 (rulesProduceEachTokenIndividuallyList!631 thiss!27592 rules!4386 (t!111665 l!6534)))))

(declare-fun b!1183758 () Bool)

(declare-fun res!534995 () Bool)

(assert (=> b!1183758 (=> (not res!534995) (not e!760141))))

(declare-fun rulesInvariant!1639 (LexerInterface!1765 List!11874) Bool)

(assert (=> b!1183758 (= res!534995 (rulesInvariant!1639 thiss!27592 rules!4386))))

(declare-fun e!760132 () Bool)

(assert (=> b!1183759 (= e!760132 (and tp!337460 tp!337454))))

(declare-fun b!1183760 () Bool)

(declare-fun res!534996 () Bool)

(assert (=> b!1183760 (=> (not res!534996) (not e!760141))))

(declare-fun isEmpty!7135 (List!11874) Bool)

(assert (=> b!1183760 (= res!534996 (not (isEmpty!7135 rules!4386)))))

(declare-fun b!1183761 () Bool)

(assert (=> b!1183761 (= e!760142 (tokensListTwoByTwoPredicateSeparableList!159 thiss!27592 lt!407316 rules!4386))))

(declare-fun b!1183762 () Bool)

(assert (=> b!1183762 (= e!760140 e!760135)))

(declare-fun res!534997 () Bool)

(assert (=> b!1183762 (=> (not res!534997) (not e!760135))))

(assert (=> b!1183762 (= res!534997 (rulesProduceIndividualToken!794 thiss!27592 rules!4386 (h!17252 lt!407316)))))

(declare-fun tp!337456 () Bool)

(declare-fun b!1183763 () Bool)

(assert (=> b!1183763 (= e!760128 (and tp!337456 (inv!15670 (tag!2332 (h!17251 rules!4386))) (inv!15673 (transformation!2070 (h!17251 rules!4386))) e!760132))))

(assert (= (and start!104916 res!534998) b!1183760))

(assert (= (and b!1183760 res!534996) b!1183758))

(assert (= (and b!1183758 res!534995) b!1183753))

(assert (= (and b!1183753 res!535005) b!1183747))

(assert (= (and b!1183747 res!535000) b!1183744))

(assert (= (and b!1183744 res!535004) b!1183757))

(assert (= (and b!1183757 res!535007) b!1183756))

(assert (= (and b!1183756 res!535001) b!1183748))

(assert (= (and b!1183748 (not res!535006)) b!1183762))

(assert (= (and b!1183762 res!534997) b!1183754))

(assert (= (and b!1183748 res!535003) b!1183761))

(assert (= (and b!1183748 (not res!535002)) b!1183750))

(assert (= (and b!1183750 res!534999) b!1183745))

(assert (= b!1183763 b!1183759))

(assert (= b!1183751 b!1183763))

(assert (= (and start!104916 (is-Cons!11850 rules!4386)) b!1183751))

(assert (= b!1183746 b!1183752))

(assert (= b!1183755 b!1183746))

(assert (= b!1183749 b!1183755))

(assert (= (and start!104916 (is-Cons!11851 l!6534)) b!1183749))

(declare-fun m!1359549 () Bool)

(assert (=> b!1183745 m!1359549))

(declare-fun m!1359551 () Bool)

(assert (=> b!1183753 m!1359551))

(declare-fun m!1359553 () Bool)

(assert (=> b!1183748 m!1359553))

(declare-fun m!1359555 () Bool)

(assert (=> b!1183748 m!1359555))

(declare-fun m!1359557 () Bool)

(assert (=> b!1183748 m!1359557))

(declare-fun m!1359559 () Bool)

(assert (=> b!1183748 m!1359559))

(declare-fun m!1359561 () Bool)

(assert (=> b!1183748 m!1359561))

(declare-fun m!1359563 () Bool)

(assert (=> b!1183748 m!1359563))

(declare-fun m!1359565 () Bool)

(assert (=> b!1183748 m!1359565))

(declare-fun m!1359567 () Bool)

(assert (=> b!1183748 m!1359567))

(declare-fun m!1359569 () Bool)

(assert (=> b!1183748 m!1359569))

(declare-fun m!1359571 () Bool)

(assert (=> b!1183748 m!1359571))

(declare-fun m!1359573 () Bool)

(assert (=> b!1183748 m!1359573))

(declare-fun m!1359575 () Bool)

(assert (=> b!1183748 m!1359575))

(declare-fun m!1359577 () Bool)

(assert (=> b!1183748 m!1359577))

(declare-fun m!1359579 () Bool)

(assert (=> b!1183755 m!1359579))

(declare-fun m!1359581 () Bool)

(assert (=> b!1183758 m!1359581))

(declare-fun m!1359583 () Bool)

(assert (=> b!1183763 m!1359583))

(declare-fun m!1359585 () Bool)

(assert (=> b!1183763 m!1359585))

(declare-fun m!1359587 () Bool)

(assert (=> b!1183760 m!1359587))

(declare-fun m!1359589 () Bool)

(assert (=> b!1183750 m!1359589))

(declare-fun m!1359591 () Bool)

(assert (=> b!1183762 m!1359591))

(declare-fun m!1359593 () Bool)

(assert (=> b!1183761 m!1359593))

(declare-fun m!1359595 () Bool)

(assert (=> b!1183746 m!1359595))

(declare-fun m!1359597 () Bool)

(assert (=> b!1183746 m!1359597))

(declare-fun m!1359599 () Bool)

(assert (=> b!1183756 m!1359599))

(declare-fun m!1359601 () Bool)

(assert (=> b!1183747 m!1359601))

(declare-fun m!1359603 () Bool)

(assert (=> b!1183757 m!1359603))

(declare-fun m!1359605 () Bool)

(assert (=> b!1183749 m!1359605))

(declare-fun m!1359607 () Bool)

(assert (=> b!1183754 m!1359607))

(push 1)

(assert (not b!1183760))

(assert b_and!81403)

(assert (not b!1183753))

(assert (not b!1183762))

(assert b_and!81399)

(assert (not b!1183756))

(assert (not b!1183750))

(assert (not b_next!29065))

(assert (not b!1183746))

(assert (not b_next!29067))

(assert (not b!1183763))

(assert (not b!1183772))

(assert (not b!1183758))

(assert b_and!81401)

(assert (not b!1183755))

(assert (not b_next!29063))

(assert (not b!1183745))

(assert (not b_next!29061))

(assert (not b!1183757))

(assert (not b!1183748))

(assert (not b!1183754))

(assert (not b!1183749))

(assert (not b!1183761))

(assert (not b!1183747))

(assert b_and!81397)

(assert (not b!1183751))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81403)

(assert b_and!81401)

(assert (not b_next!29063))

(assert (not b_next!29061))

(assert b_and!81399)

(assert (not b_next!29065))

(assert (not b_next!29067))

(assert b_and!81397)

(check-sat)

(pop 1)

