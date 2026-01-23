; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94600 () Bool)

(assert start!94600)

(declare-fun bs!259403 () Bool)

(declare-fun b!1100772 () Bool)

(assert (= bs!259403 (and b!1100772 start!94600)))

(declare-fun lambda!43270 () Int)

(declare-fun lambda!43269 () Int)

(assert (=> bs!259403 (not (= lambda!43270 lambda!43269))))

(declare-fun b!1100784 () Bool)

(declare-fun e!697108 () Bool)

(assert (=> b!1100784 (= e!697108 true)))

(declare-fun b!1100783 () Bool)

(declare-fun e!697107 () Bool)

(assert (=> b!1100783 (= e!697107 e!697108)))

(assert (=> b!1100772 e!697107))

(assert (= b!1100783 b!1100784))

(assert (= b!1100772 b!1100783))

(declare-fun lambda!43271 () Int)

(assert (=> bs!259403 (not (= lambda!43271 lambda!43269))))

(assert (=> b!1100772 (not (= lambda!43271 lambda!43270))))

(declare-fun b!1100786 () Bool)

(declare-fun e!697110 () Bool)

(assert (=> b!1100786 (= e!697110 true)))

(declare-fun b!1100785 () Bool)

(declare-fun e!697109 () Bool)

(assert (=> b!1100785 (= e!697109 e!697110)))

(assert (=> b!1100772 e!697109))

(assert (= b!1100785 b!1100786))

(assert (= b!1100772 b!1100785))

(declare-fun lambda!43272 () Int)

(assert (=> bs!259403 (not (= lambda!43272 lambda!43269))))

(assert (=> b!1100772 (not (= lambda!43272 lambda!43270))))

(assert (=> b!1100772 (not (= lambda!43272 lambda!43271))))

(declare-fun b!1100788 () Bool)

(declare-fun e!697112 () Bool)

(assert (=> b!1100788 (= e!697112 true)))

(declare-fun b!1100787 () Bool)

(declare-fun e!697111 () Bool)

(assert (=> b!1100787 (= e!697111 e!697112)))

(assert (=> b!1100772 e!697111))

(assert (= b!1100787 b!1100788))

(assert (= b!1100772 b!1100787))

(declare-fun e!697102 () Bool)

(declare-fun e!697100 () Bool)

(assert (=> b!1100772 (= e!697102 e!697100)))

(declare-fun res!488318 () Bool)

(assert (=> b!1100772 (=> (not res!488318) (not e!697100))))

(declare-datatypes ((List!10627 0))(
  ( (Nil!10611) (Cons!10611 (h!16012 (_ BitVec 16)) (t!103905 List!10627)) )
))
(declare-datatypes ((TokenValue!1887 0))(
  ( (FloatLiteralValue!3774 (text!13654 List!10627)) (TokenValueExt!1886 (__x!7469 Int)) (Broken!9435 (value!59827 List!10627)) (Object!1902) (End!1887) (Def!1887) (Underscore!1887) (Match!1887) (Else!1887) (Error!1887) (Case!1887) (If!1887) (Extends!1887) (Abstract!1887) (Class!1887) (Val!1887) (DelimiterValue!3774 (del!1947 List!10627)) (KeywordValue!1893 (value!59828 List!10627)) (CommentValue!3774 (value!59829 List!10627)) (WhitespaceValue!3774 (value!59830 List!10627)) (IndentationValue!1887 (value!59831 List!10627)) (String!13006) (Int32!1887) (Broken!9436 (value!59832 List!10627)) (Boolean!1888) (Unit!16207) (OperatorValue!1890 (op!1947 List!10627)) (IdentifierValue!3774 (value!59833 List!10627)) (IdentifierValue!3775 (value!59834 List!10627)) (WhitespaceValue!3775 (value!59835 List!10627)) (True!3774) (False!3774) (Broken!9437 (value!59836 List!10627)) (Broken!9438 (value!59837 List!10627)) (True!3775) (RightBrace!1887) (RightBracket!1887) (Colon!1887) (Null!1887) (Comma!1887) (LeftBracket!1887) (False!3775) (LeftBrace!1887) (ImaginaryLiteralValue!1887 (text!13655 List!10627)) (StringLiteralValue!5661 (value!59838 List!10627)) (EOFValue!1887 (value!59839 List!10627)) (IdentValue!1887 (value!59840 List!10627)) (DelimiterValue!3775 (value!59841 List!10627)) (DedentValue!1887 (value!59842 List!10627)) (NewLineValue!1887 (value!59843 List!10627)) (IntegerValue!5661 (value!59844 (_ BitVec 32)) (text!13656 List!10627)) (IntegerValue!5662 (value!59845 Int) (text!13657 List!10627)) (Times!1887) (Or!1887) (Equal!1887) (Minus!1887) (Broken!9439 (value!59846 List!10627)) (And!1887) (Div!1887) (LessEqual!1887) (Mod!1887) (Concat!4977) (Not!1887) (Plus!1887) (SpaceValue!1887 (value!59847 List!10627)) (IntegerValue!5663 (value!59848 Int) (text!13658 List!10627)) (StringLiteralValue!5662 (text!13659 List!10627)) (FloatLiteralValue!3775 (text!13660 List!10627)) (BytesLiteralValue!1887 (value!59849 List!10627)) (CommentValue!3775 (value!59850 List!10627)) (StringLiteralValue!5663 (value!59851 List!10627)) (ErrorTokenValue!1887 (msg!1948 List!10627)) )
))
(declare-datatypes ((Regex!3090 0))(
  ( (ElementMatch!3090 (c!186876 (_ BitVec 16))) (Concat!4978 (regOne!6692 Regex!3090) (regTwo!6692 Regex!3090)) (EmptyExpr!3090) (Star!3090 (reg!3419 Regex!3090)) (EmptyLang!3090) (Union!3090 (regOne!6693 Regex!3090) (regTwo!6693 Regex!3090)) )
))
(declare-datatypes ((String!13007 0))(
  ( (String!13008 (value!59852 String)) )
))
(declare-datatypes ((IArray!6585 0))(
  ( (IArray!6586 (innerList!3350 List!10627)) )
))
(declare-datatypes ((Conc!3290 0))(
  ( (Node!3290 (left!9162 Conc!3290) (right!9492 Conc!3290) (csize!6810 Int) (cheight!3501 Int)) (Leaf!5207 (xs!5983 IArray!6585) (csize!6811 Int)) (Empty!3290) )
))
(declare-datatypes ((BalanceConc!6594 0))(
  ( (BalanceConc!6595 (c!186877 Conc!3290)) )
))
(declare-datatypes ((TokenValueInjection!3474 0))(
  ( (TokenValueInjection!3475 (toValue!2898 Int) (toChars!2757 Int)) )
))
(declare-datatypes ((Rule!3442 0))(
  ( (Rule!3443 (regex!1821 Regex!3090) (tag!2083 String!13007) (isSeparator!1821 Bool) (transformation!1821 TokenValueInjection!3474)) )
))
(declare-datatypes ((Token!3308 0))(
  ( (Token!3309 (value!59853 TokenValue!1887) (rule!3244 Rule!3442) (size!8233 Int) (originalCharacters!2377 List!10627)) )
))
(declare-datatypes ((List!10628 0))(
  ( (Nil!10612) (Cons!10612 (h!16013 Token!3308) (t!103906 List!10628)) )
))
(declare-datatypes ((IArray!6587 0))(
  ( (IArray!6588 (innerList!3351 List!10628)) )
))
(declare-datatypes ((Conc!3291 0))(
  ( (Node!3291 (left!9163 Conc!3291) (right!9493 Conc!3291) (csize!6812 Int) (cheight!3502 Int)) (Leaf!5208 (xs!5984 IArray!6587) (csize!6813 Int)) (Empty!3291) )
))
(declare-datatypes ((List!10629 0))(
  ( (Nil!10613) (Cons!10613 (h!16014 Rule!3442) (t!103907 List!10629)) )
))
(declare-datatypes ((BalanceConc!6596 0))(
  ( (BalanceConc!6597 (c!186878 Conc!3291)) )
))
(declare-datatypes ((PrintableTokens!358 0))(
  ( (PrintableTokens!359 (rules!9108 List!10629) (tokens!1380 BalanceConc!6596)) )
))
(declare-datatypes ((tuple2!11768 0))(
  ( (tuple2!11769 (_1!6710 Int) (_2!6710 PrintableTokens!358)) )
))
(declare-datatypes ((List!10630 0))(
  ( (Nil!10614) (Cons!10614 (h!16015 tuple2!11768) (t!103908 List!10630)) )
))
(declare-datatypes ((IArray!6589 0))(
  ( (IArray!6590 (innerList!3352 List!10630)) )
))
(declare-datatypes ((Conc!3292 0))(
  ( (Node!3292 (left!9164 Conc!3292) (right!9494 Conc!3292) (csize!6814 Int) (cheight!3503 Int)) (Leaf!5209 (xs!5985 IArray!6589) (csize!6815 Int)) (Empty!3292) )
))
(declare-datatypes ((BalanceConc!6598 0))(
  ( (BalanceConc!6599 (c!186879 Conc!3292)) )
))
(declare-fun objs!8 () BalanceConc!6598)

(declare-fun lt!371842 () tuple2!11768)

(declare-fun contains!1852 (BalanceConc!6598 tuple2!11768) Bool)

(assert (=> b!1100772 (= res!488318 (contains!1852 objs!8 lt!371842))))

(declare-fun lt!371839 () BalanceConc!6598)

(declare-fun filter!330 (BalanceConc!6598 Int) BalanceConc!6598)

(assert (=> b!1100772 (= lt!371839 (filter!330 objs!8 lambda!43272))))

(declare-fun lt!371841 () BalanceConc!6598)

(assert (=> b!1100772 (= lt!371841 (filter!330 objs!8 lambda!43271))))

(declare-fun lt!371843 () BalanceConc!6598)

(assert (=> b!1100772 (= lt!371843 (filter!330 objs!8 lambda!43270))))

(declare-fun lt!371840 () Int)

(declare-fun apply!2130 (BalanceConc!6598 Int) tuple2!11768)

(assert (=> b!1100772 (= lt!371842 (apply!2130 objs!8 (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2)))))))

(declare-fun res!488320 () Bool)

(declare-fun e!697099 () Bool)

(assert (=> start!94600 (=> (not res!488320) (not e!697099))))

(declare-fun forall!2439 (BalanceConc!6598 Int) Bool)

(assert (=> start!94600 (= res!488320 (forall!2439 objs!8 lambda!43269))))

(assert (=> start!94600 e!697099))

(declare-fun e!697101 () Bool)

(declare-fun inv!13637 (BalanceConc!6598) Bool)

(assert (=> start!94600 (and (inv!13637 objs!8) e!697101)))

(declare-fun b!1100773 () Bool)

(assert (=> b!1100773 (= e!697100 true)))

(declare-datatypes ((Unit!16208 0))(
  ( (Unit!16209) )
))
(declare-fun lt!371838 () Unit!16208)

(declare-fun forallContained!515 (List!10630 Int tuple2!11768) Unit!16208)

(declare-fun list!3821 (BalanceConc!6598) List!10630)

(assert (=> b!1100773 (= lt!371838 (forallContained!515 (list!3821 lt!371843) lambda!43270 lt!371842))))

(declare-fun b!1100774 () Bool)

(assert (=> b!1100774 (= e!697099 e!697102)))

(declare-fun res!488319 () Bool)

(assert (=> b!1100774 (=> (not res!488319) (not e!697102))))

(assert (=> b!1100774 (= res!488319 (> lt!371840 1))))

(declare-fun size!8234 (BalanceConc!6598) Int)

(assert (=> b!1100774 (= lt!371840 (size!8234 objs!8))))

(declare-fun b!1100775 () Bool)

(declare-fun res!488321 () Bool)

(assert (=> b!1100775 (=> (not res!488321) (not e!697100))))

(assert (=> b!1100775 (= res!488321 (contains!1852 lt!371843 lt!371842))))

(declare-fun b!1100776 () Bool)

(declare-fun tp!326993 () Bool)

(declare-fun inv!13638 (Conc!3292) Bool)

(assert (=> b!1100776 (= e!697101 (and (inv!13638 (c!186879 objs!8)) tp!326993))))

(assert (= (and start!94600 res!488320) b!1100774))

(assert (= (and b!1100774 res!488319) b!1100772))

(assert (= (and b!1100772 res!488318) b!1100775))

(assert (= (and b!1100775 res!488321) b!1100773))

(assert (= start!94600 b!1100776))

(declare-fun m!1256719 () Bool)

(assert (=> start!94600 m!1256719))

(declare-fun m!1256721 () Bool)

(assert (=> start!94600 m!1256721))

(declare-fun m!1256723 () Bool)

(assert (=> b!1100776 m!1256723))

(declare-fun m!1256725 () Bool)

(assert (=> b!1100774 m!1256725))

(declare-fun m!1256727 () Bool)

(assert (=> b!1100772 m!1256727))

(declare-fun m!1256729 () Bool)

(assert (=> b!1100772 m!1256729))

(declare-fun m!1256731 () Bool)

(assert (=> b!1100772 m!1256731))

(declare-fun m!1256733 () Bool)

(assert (=> b!1100772 m!1256733))

(declare-fun m!1256735 () Bool)

(assert (=> b!1100772 m!1256735))

(declare-fun m!1256737 () Bool)

(assert (=> b!1100773 m!1256737))

(assert (=> b!1100773 m!1256737))

(declare-fun m!1256739 () Bool)

(assert (=> b!1100773 m!1256739))

(declare-fun m!1256741 () Bool)

(assert (=> b!1100775 m!1256741))

(push 1)

(assert (not b!1100787))

(assert (not b!1100786))

(assert (not b!1100775))

(assert (not b!1100776))

(assert (not b!1100788))

(assert (not b!1100774))

(assert (not b!1100783))

(assert (not b!1100785))

(assert (not b!1100784))

(assert (not b!1100772))

(assert (not b!1100773))

(assert (not start!94600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311283 () Bool)

(declare-fun lt!371864 () Int)

(declare-fun size!8237 (List!10630) Int)

(assert (=> d!311283 (= lt!371864 (size!8237 (list!3821 objs!8)))))

(declare-fun size!8238 (Conc!3292) Int)

(assert (=> d!311283 (= lt!371864 (size!8238 (c!186879 objs!8)))))

(assert (=> d!311283 (= (size!8234 objs!8) lt!371864)))

(declare-fun bs!259405 () Bool)

(assert (= bs!259405 d!311283))

(declare-fun m!1256767 () Bool)

(assert (=> bs!259405 m!1256767))

(assert (=> bs!259405 m!1256767))

(declare-fun m!1256769 () Bool)

(assert (=> bs!259405 m!1256769))

(declare-fun m!1256771 () Bool)

(assert (=> bs!259405 m!1256771))

(assert (=> b!1100774 d!311283))

(declare-fun d!311285 () Bool)

(declare-fun lt!371867 () Bool)

(declare-fun forall!2441 (List!10630 Int) Bool)

(assert (=> d!311285 (= lt!371867 (forall!2441 (list!3821 objs!8) lambda!43269))))

(declare-fun forall!2442 (Conc!3292 Int) Bool)

(assert (=> d!311285 (= lt!371867 (forall!2442 (c!186879 objs!8) lambda!43269))))

(assert (=> d!311285 (= (forall!2439 objs!8 lambda!43269) lt!371867)))

(declare-fun bs!259406 () Bool)

(assert (= bs!259406 d!311285))

(assert (=> bs!259406 m!1256767))

(assert (=> bs!259406 m!1256767))

(declare-fun m!1256773 () Bool)

(assert (=> bs!259406 m!1256773))

(declare-fun m!1256775 () Bool)

(assert (=> bs!259406 m!1256775))

(assert (=> start!94600 d!311285))

(declare-fun d!311289 () Bool)

(declare-fun isBalanced!909 (Conc!3292) Bool)

(assert (=> d!311289 (= (inv!13637 objs!8) (isBalanced!909 (c!186879 objs!8)))))

(declare-fun bs!259407 () Bool)

(assert (= bs!259407 d!311289))

(declare-fun m!1256777 () Bool)

(assert (=> bs!259407 m!1256777))

(assert (=> start!94600 d!311289))

(declare-fun d!311291 () Bool)

(declare-fun dynLambda!4666 (Int tuple2!11768) Bool)

(assert (=> d!311291 (dynLambda!4666 lambda!43270 lt!371842)))

(declare-fun lt!371870 () Unit!16208)

(declare-fun choose!7093 (List!10630 Int tuple2!11768) Unit!16208)

(assert (=> d!311291 (= lt!371870 (choose!7093 (list!3821 lt!371843) lambda!43270 lt!371842))))

(declare-fun e!697137 () Bool)

(assert (=> d!311291 e!697137))

(declare-fun res!488336 () Bool)

(assert (=> d!311291 (=> (not res!488336) (not e!697137))))

(assert (=> d!311291 (= res!488336 (forall!2441 (list!3821 lt!371843) lambda!43270))))

(assert (=> d!311291 (= (forallContained!515 (list!3821 lt!371843) lambda!43270 lt!371842) lt!371870)))

(declare-fun b!1100818 () Bool)

(declare-fun contains!1854 (List!10630 tuple2!11768) Bool)

(assert (=> b!1100818 (= e!697137 (contains!1854 (list!3821 lt!371843) lt!371842))))

(assert (= (and d!311291 res!488336) b!1100818))

(declare-fun b_lambda!32155 () Bool)

(assert (=> (not b_lambda!32155) (not d!311291)))

(declare-fun m!1256779 () Bool)

(assert (=> d!311291 m!1256779))

(assert (=> d!311291 m!1256737))

(declare-fun m!1256781 () Bool)

(assert (=> d!311291 m!1256781))

(assert (=> d!311291 m!1256737))

(declare-fun m!1256783 () Bool)

(assert (=> d!311291 m!1256783))

(assert (=> b!1100818 m!1256737))

(declare-fun m!1256785 () Bool)

(assert (=> b!1100818 m!1256785))

(assert (=> b!1100773 d!311291))

(declare-fun d!311293 () Bool)

(declare-fun list!3823 (Conc!3292) List!10630)

(assert (=> d!311293 (= (list!3821 lt!371843) (list!3823 (c!186879 lt!371843)))))

(declare-fun bs!259408 () Bool)

(assert (= bs!259408 d!311293))

(declare-fun m!1256787 () Bool)

(assert (=> bs!259408 m!1256787))

(assert (=> b!1100773 d!311293))

(declare-fun d!311295 () Bool)

(declare-fun lt!371876 () tuple2!11768)

(declare-fun apply!2132 (List!10630 Int) tuple2!11768)

(assert (=> d!311295 (= lt!371876 (apply!2132 (list!3821 objs!8) (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2)))))))

(declare-fun apply!2133 (Conc!3292 Int) tuple2!11768)

(assert (=> d!311295 (= lt!371876 (apply!2133 (c!186879 objs!8) (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2)))))))

(declare-fun e!697140 () Bool)

(assert (=> d!311295 e!697140))

(declare-fun res!488339 () Bool)

(assert (=> d!311295 (=> (not res!488339) (not e!697140))))

(assert (=> d!311295 (= res!488339 (<= 0 (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2)))))))

(assert (=> d!311295 (= (apply!2130 objs!8 (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2)))) lt!371876)))

(declare-fun b!1100821 () Bool)

(assert (=> b!1100821 (= e!697140 (< (ite (>= lt!371840 0) (div lt!371840 2) (- (div (- lt!371840) 2))) (size!8234 objs!8)))))

(assert (= (and d!311295 res!488339) b!1100821))

(assert (=> d!311295 m!1256767))

(assert (=> d!311295 m!1256767))

(declare-fun m!1256793 () Bool)

(assert (=> d!311295 m!1256793))

(declare-fun m!1256795 () Bool)

(assert (=> d!311295 m!1256795))

(assert (=> b!1100821 m!1256725))

(assert (=> b!1100772 d!311295))

(declare-fun d!311299 () Bool)

(declare-fun lt!371882 () Bool)

(assert (=> d!311299 (= lt!371882 (contains!1854 (list!3821 objs!8) lt!371842))))

(declare-fun contains!1855 (Conc!3292 tuple2!11768) Bool)

(assert (=> d!311299 (= lt!371882 (contains!1855 (c!186879 objs!8) lt!371842))))

(assert (=> d!311299 (= (contains!1852 objs!8 lt!371842) lt!371882)))

(declare-fun bs!259411 () Bool)

(assert (= bs!259411 d!311299))

(assert (=> bs!259411 m!1256767))

(assert (=> bs!259411 m!1256767))

(declare-fun m!1256803 () Bool)

(assert (=> bs!259411 m!1256803))

(declare-fun m!1256805 () Bool)

(assert (=> bs!259411 m!1256805))

(assert (=> b!1100772 d!311299))

(declare-fun d!311303 () Bool)

(declare-fun e!697146 () Bool)

(assert (=> d!311303 e!697146))

(declare-fun res!488345 () Bool)

(assert (=> d!311303 (=> (not res!488345) (not e!697146))))

(declare-fun filter!332 (Conc!3292 Int) Conc!3292)

(assert (=> d!311303 (= res!488345 (isBalanced!909 (filter!332 (c!186879 objs!8) lambda!43272)))))

(declare-fun lt!371888 () BalanceConc!6598)

(assert (=> d!311303 (= lt!371888 (BalanceConc!6599 (filter!332 (c!186879 objs!8) lambda!43272)))))

(assert (=> d!311303 (= (filter!330 objs!8 lambda!43272) lt!371888)))

(declare-fun b!1100827 () Bool)

(declare-fun filter!333 (List!10630 Int) List!10630)

(assert (=> b!1100827 (= e!697146 (= (list!3821 lt!371888) (filter!333 (list!3821 objs!8) lambda!43272)))))

(assert (= (and d!311303 res!488345) b!1100827))

(declare-fun m!1256807 () Bool)

(assert (=> d!311303 m!1256807))

(assert (=> d!311303 m!1256807))

(declare-fun m!1256809 () Bool)

(assert (=> d!311303 m!1256809))

(declare-fun m!1256811 () Bool)

(assert (=> b!1100827 m!1256811))

(assert (=> b!1100827 m!1256767))

(assert (=> b!1100827 m!1256767))

(declare-fun m!1256813 () Bool)

(assert (=> b!1100827 m!1256813))

(assert (=> b!1100772 d!311303))

(declare-fun d!311305 () Bool)

(declare-fun e!697147 () Bool)

(assert (=> d!311305 e!697147))

(declare-fun res!488346 () Bool)

(assert (=> d!311305 (=> (not res!488346) (not e!697147))))

(assert (=> d!311305 (= res!488346 (isBalanced!909 (filter!332 (c!186879 objs!8) lambda!43270)))))

(declare-fun lt!371889 () BalanceConc!6598)

(assert (=> d!311305 (= lt!371889 (BalanceConc!6599 (filter!332 (c!186879 objs!8) lambda!43270)))))

(assert (=> d!311305 (= (filter!330 objs!8 lambda!43270) lt!371889)))

(declare-fun b!1100828 () Bool)

(assert (=> b!1100828 (= e!697147 (= (list!3821 lt!371889) (filter!333 (list!3821 objs!8) lambda!43270)))))

(assert (= (and d!311305 res!488346) b!1100828))

(declare-fun m!1256819 () Bool)

(assert (=> d!311305 m!1256819))

(assert (=> d!311305 m!1256819))

(declare-fun m!1256821 () Bool)

(assert (=> d!311305 m!1256821))

(declare-fun m!1256823 () Bool)

(assert (=> b!1100828 m!1256823))

(assert (=> b!1100828 m!1256767))

(assert (=> b!1100828 m!1256767))

(declare-fun m!1256827 () Bool)

(assert (=> b!1100828 m!1256827))

(assert (=> b!1100772 d!311305))

(declare-fun d!311307 () Bool)

(declare-fun e!697148 () Bool)

(assert (=> d!311307 e!697148))

(declare-fun res!488347 () Bool)

(assert (=> d!311307 (=> (not res!488347) (not e!697148))))

(assert (=> d!311307 (= res!488347 (isBalanced!909 (filter!332 (c!186879 objs!8) lambda!43271)))))

(declare-fun lt!371890 () BalanceConc!6598)

(assert (=> d!311307 (= lt!371890 (BalanceConc!6599 (filter!332 (c!186879 objs!8) lambda!43271)))))

(assert (=> d!311307 (= (filter!330 objs!8 lambda!43271) lt!371890)))

(declare-fun b!1100829 () Bool)

(assert (=> b!1100829 (= e!697148 (= (list!3821 lt!371890) (filter!333 (list!3821 objs!8) lambda!43271)))))

(assert (= (and d!311307 res!488347) b!1100829))

(declare-fun m!1256829 () Bool)

(assert (=> d!311307 m!1256829))

(assert (=> d!311307 m!1256829))

(declare-fun m!1256831 () Bool)

(assert (=> d!311307 m!1256831))

(declare-fun m!1256833 () Bool)

(assert (=> b!1100829 m!1256833))

(assert (=> b!1100829 m!1256767))

(assert (=> b!1100829 m!1256767))

(declare-fun m!1256835 () Bool)

(assert (=> b!1100829 m!1256835))

(assert (=> b!1100772 d!311307))

(declare-fun d!311311 () Bool)

(declare-fun c!186887 () Bool)

(assert (=> d!311311 (= c!186887 (is-Node!3292 (c!186879 objs!8)))))

(declare-fun e!697153 () Bool)

(assert (=> d!311311 (= (inv!13638 (c!186879 objs!8)) e!697153)))

(declare-fun b!1100836 () Bool)

(declare-fun inv!13641 (Conc!3292) Bool)

(assert (=> b!1100836 (= e!697153 (inv!13641 (c!186879 objs!8)))))

(declare-fun b!1100837 () Bool)

(declare-fun e!697154 () Bool)

(assert (=> b!1100837 (= e!697153 e!697154)))

(declare-fun res!488350 () Bool)

(assert (=> b!1100837 (= res!488350 (not (is-Leaf!5209 (c!186879 objs!8))))))

(assert (=> b!1100837 (=> res!488350 e!697154)))

(declare-fun b!1100838 () Bool)

(declare-fun inv!13642 (Conc!3292) Bool)

(assert (=> b!1100838 (= e!697154 (inv!13642 (c!186879 objs!8)))))

(assert (= (and d!311311 c!186887) b!1100836))

(assert (= (and d!311311 (not c!186887)) b!1100837))

(assert (= (and b!1100837 (not res!488350)) b!1100838))

(declare-fun m!1256839 () Bool)

(assert (=> b!1100836 m!1256839))

(declare-fun m!1256841 () Bool)

(assert (=> b!1100838 m!1256841))

(assert (=> b!1100776 d!311311))

(declare-fun d!311315 () Bool)

(declare-fun lt!371891 () Bool)

(assert (=> d!311315 (= lt!371891 (contains!1854 (list!3821 lt!371843) lt!371842))))

(assert (=> d!311315 (= lt!371891 (contains!1855 (c!186879 lt!371843) lt!371842))))

(assert (=> d!311315 (= (contains!1852 lt!371843 lt!371842) lt!371891)))

(declare-fun bs!259413 () Bool)

(assert (= bs!259413 d!311315))

(assert (=> bs!259413 m!1256737))

(assert (=> bs!259413 m!1256737))

(assert (=> bs!259413 m!1256785))

(declare-fun m!1256843 () Bool)

(assert (=> bs!259413 m!1256843))

(assert (=> b!1100775 d!311315))

(declare-fun b!1100847 () Bool)

(declare-fun e!697159 () Bool)

(assert (=> b!1100847 (= e!697159 true)))

(declare-fun b!1100849 () Bool)

(declare-fun e!697160 () Bool)

(assert (=> b!1100849 (= e!697160 true)))

(declare-fun b!1100848 () Bool)

(assert (=> b!1100848 (= e!697159 e!697160)))

(assert (=> b!1100786 e!697159))

(assert (= (and b!1100786 (is-Node!3291 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100847))

(assert (= b!1100848 b!1100849))

(assert (= (and b!1100786 (is-Leaf!5208 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100848))

(declare-fun b!1100850 () Bool)

(declare-fun e!697161 () Bool)

(assert (=> b!1100850 (= e!697161 true)))

(declare-fun b!1100852 () Bool)

(declare-fun e!697162 () Bool)

(assert (=> b!1100852 (= e!697162 true)))

(declare-fun b!1100851 () Bool)

(assert (=> b!1100851 (= e!697161 e!697162)))

(assert (=> b!1100788 e!697161))

(assert (= (and b!1100788 (is-Node!3291 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100850))

(assert (= b!1100851 b!1100852))

(assert (= (and b!1100788 (is-Leaf!5208 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100851))

(declare-fun b!1100853 () Bool)

(declare-fun e!697163 () Bool)

(assert (=> b!1100853 (= e!697163 true)))

(declare-fun b!1100855 () Bool)

(declare-fun e!697164 () Bool)

(assert (=> b!1100855 (= e!697164 true)))

(declare-fun b!1100854 () Bool)

(assert (=> b!1100854 (= e!697163 e!697164)))

(assert (=> b!1100784 e!697163))

(assert (= (and b!1100784 (is-Node!3291 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100853))

(assert (= b!1100854 b!1100855))

(assert (= (and b!1100784 (is-Leaf!5208 (c!186878 (tokens!1380 (_2!6710 lt!371842))))) b!1100854))

(declare-fun b!1100866 () Bool)

(declare-fun e!697173 () Bool)

(assert (=> b!1100866 (= e!697173 true)))

(declare-fun b!1100865 () Bool)

(declare-fun e!697172 () Bool)

(assert (=> b!1100865 (= e!697172 e!697173)))

(declare-fun b!1100864 () Bool)

(declare-fun e!697171 () Bool)

(assert (=> b!1100864 (= e!697171 e!697172)))

(assert (=> b!1100785 e!697171))

(assert (= b!1100865 b!1100866))

(assert (= b!1100864 b!1100865))

(assert (= (and b!1100785 (is-Cons!10613 (rules!9108 (_2!6710 lt!371842)))) b!1100864))

(declare-fun order!6441 () Int)

(declare-fun order!6443 () Int)

(declare-fun dynLambda!4667 (Int Int) Int)

(declare-fun dynLambda!4668 (Int Int) Int)

(assert (=> b!1100866 (< (dynLambda!4667 order!6441 (toValue!2898 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43271))))

(declare-fun order!6445 () Int)

(declare-fun dynLambda!4669 (Int Int) Int)

(assert (=> b!1100866 (< (dynLambda!4669 order!6445 (toChars!2757 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43271))))

(declare-fun b!1100869 () Bool)

(declare-fun e!697176 () Bool)

(assert (=> b!1100869 (= e!697176 true)))

(declare-fun b!1100868 () Bool)

(declare-fun e!697175 () Bool)

(assert (=> b!1100868 (= e!697175 e!697176)))

(declare-fun b!1100867 () Bool)

(declare-fun e!697174 () Bool)

(assert (=> b!1100867 (= e!697174 e!697175)))

(assert (=> b!1100787 e!697174))

(assert (= b!1100868 b!1100869))

(assert (= b!1100867 b!1100868))

(assert (= (and b!1100787 (is-Cons!10613 (rules!9108 (_2!6710 lt!371842)))) b!1100867))

(assert (=> b!1100869 (< (dynLambda!4667 order!6441 (toValue!2898 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43272))))

(assert (=> b!1100869 (< (dynLambda!4669 order!6445 (toChars!2757 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43272))))

(declare-fun b!1100872 () Bool)

(declare-fun e!697179 () Bool)

(assert (=> b!1100872 (= e!697179 true)))

(declare-fun b!1100871 () Bool)

(declare-fun e!697178 () Bool)

(assert (=> b!1100871 (= e!697178 e!697179)))

(declare-fun b!1100870 () Bool)

(declare-fun e!697177 () Bool)

(assert (=> b!1100870 (= e!697177 e!697178)))

(assert (=> b!1100783 e!697177))

(assert (= b!1100871 b!1100872))

(assert (= b!1100870 b!1100871))

(assert (= (and b!1100783 (is-Cons!10613 (rules!9108 (_2!6710 lt!371842)))) b!1100870))

(assert (=> b!1100872 (< (dynLambda!4667 order!6441 (toValue!2898 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43270))))

(assert (=> b!1100872 (< (dynLambda!4669 order!6445 (toChars!2757 (transformation!1821 (h!16014 (rules!9108 (_2!6710 lt!371842)))))) (dynLambda!4668 order!6443 lambda!43270))))

(declare-fun e!697185 () Bool)

(declare-fun tp!327005 () Bool)

(declare-fun tp!327003 () Bool)

(declare-fun b!1100881 () Bool)

(assert (=> b!1100881 (= e!697185 (and (inv!13638 (left!9164 (c!186879 objs!8))) tp!327005 (inv!13638 (right!9494 (c!186879 objs!8))) tp!327003))))

(declare-fun b!1100883 () Bool)

(declare-fun e!697184 () Bool)

(declare-fun tp!327004 () Bool)

(assert (=> b!1100883 (= e!697184 tp!327004)))

(declare-fun b!1100882 () Bool)

(declare-fun inv!13643 (IArray!6589) Bool)

(assert (=> b!1100882 (= e!697185 (and (inv!13643 (xs!5985 (c!186879 objs!8))) e!697184))))

(assert (=> b!1100776 (= tp!326993 (and (inv!13638 (c!186879 objs!8)) e!697185))))

(assert (= (and b!1100776 (is-Node!3292 (c!186879 objs!8))) b!1100881))

(assert (= b!1100882 b!1100883))

(assert (= (and b!1100776 (is-Leaf!5209 (c!186879 objs!8))) b!1100882))

(declare-fun m!1256849 () Bool)

(assert (=> b!1100881 m!1256849))

(declare-fun m!1256851 () Bool)

(assert (=> b!1100881 m!1256851))

(declare-fun m!1256853 () Bool)

(assert (=> b!1100882 m!1256853))

(assert (=> b!1100776 m!1256723))

(declare-fun b_lambda!32159 () Bool)

(assert (= b_lambda!32155 (or b!1100772 b_lambda!32159)))

(declare-fun bs!259415 () Bool)

(declare-fun d!311319 () Bool)

(assert (= bs!259415 (and d!311319 b!1100772)))

(assert (=> bs!259415 (= (dynLambda!4666 lambda!43270 lt!371842) (< (_1!6710 lt!371842) (_1!6710 lt!371842)))))

(assert (=> d!311291 d!311319))

(push 1)

(assert (not b_lambda!32159))

(assert (not d!311303))

(assert (not b!1100847))

(assert (not d!311305))

(assert (not d!311293))

(assert (not b!1100882))

(assert (not b!1100867))

(assert (not d!311315))

(assert (not d!311299))

(assert (not d!311289))

(assert (not b!1100864))

(assert (not b!1100828))

(assert (not b!1100852))

(assert (not b!1100849))

(assert (not b!1100827))

(assert (not d!311291))

(assert (not b!1100838))

(assert (not d!311283))

(assert (not d!311285))

(assert (not b!1100853))

(assert (not b!1100836))

(assert (not b!1100829))

(assert (not b!1100776))

(assert (not d!311295))

(assert (not d!311307))

(assert (not b!1100870))

(assert (not b!1100850))

(assert (not b!1100881))

(assert (not b!1100821))

(assert (not b!1100855))

(assert (not b!1100818))

(assert (not b!1100883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

