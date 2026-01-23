; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!129014 () Bool)

(assert start!129014)

(declare-fun b!1410680 () Bool)

(declare-fun e!900575 () Bool)

(declare-fun e!900572 () Bool)

(assert (=> b!1410680 (= e!900575 e!900572)))

(declare-fun res!638926 () Bool)

(assert (=> b!1410680 (=> (not res!638926) (not e!900572))))

(declare-datatypes ((List!14453 0))(
  ( (Nil!14387) (Cons!14387 (h!19788 (_ BitVec 16)) (t!123456 List!14453)) )
))
(declare-datatypes ((TokenValue!2586 0))(
  ( (FloatLiteralValue!5172 (text!18547 List!14453)) (TokenValueExt!2585 (__x!8996 Int)) (Broken!12930 (value!80744 List!14453)) (Object!2651) (End!2586) (Def!2586) (Underscore!2586) (Match!2586) (Else!2586) (Error!2586) (Case!2586) (If!2586) (Extends!2586) (Abstract!2586) (Class!2586) (Val!2586) (DelimiterValue!5172 (del!2646 List!14453)) (KeywordValue!2592 (value!80745 List!14453)) (CommentValue!5172 (value!80746 List!14453)) (WhitespaceValue!5172 (value!80747 List!14453)) (IndentationValue!2586 (value!80748 List!14453)) (String!17167) (Int32!2586) (Broken!12931 (value!80749 List!14453)) (Boolean!2587) (Unit!20875) (OperatorValue!2589 (op!2646 List!14453)) (IdentifierValue!5172 (value!80750 List!14453)) (IdentifierValue!5173 (value!80751 List!14453)) (WhitespaceValue!5173 (value!80752 List!14453)) (True!5172) (False!5172) (Broken!12932 (value!80753 List!14453)) (Broken!12933 (value!80754 List!14453)) (True!5173) (RightBrace!2586) (RightBracket!2586) (Colon!2586) (Null!2586) (Comma!2586) (LeftBracket!2586) (False!5173) (LeftBrace!2586) (ImaginaryLiteralValue!2586 (text!18548 List!14453)) (StringLiteralValue!7758 (value!80755 List!14453)) (EOFValue!2586 (value!80756 List!14453)) (IdentValue!2586 (value!80757 List!14453)) (DelimiterValue!5173 (value!80758 List!14453)) (DedentValue!2586 (value!80759 List!14453)) (NewLineValue!2586 (value!80760 List!14453)) (IntegerValue!7758 (value!80761 (_ BitVec 32)) (text!18549 List!14453)) (IntegerValue!7759 (value!80762 Int) (text!18550 List!14453)) (Times!2586) (Or!2586) (Equal!2586) (Minus!2586) (Broken!12934 (value!80763 List!14453)) (And!2586) (Div!2586) (LessEqual!2586) (Mod!2586) (Concat!6396) (Not!2586) (Plus!2586) (SpaceValue!2586 (value!80764 List!14453)) (IntegerValue!7760 (value!80765 Int) (text!18551 List!14453)) (StringLiteralValue!7759 (text!18552 List!14453)) (FloatLiteralValue!5173 (text!18553 List!14453)) (BytesLiteralValue!2586 (value!80766 List!14453)) (CommentValue!5173 (value!80767 List!14453)) (StringLiteralValue!7760 (value!80768 List!14453)) (ErrorTokenValue!2586 (msg!2647 List!14453)) )
))
(declare-datatypes ((Regex!3810 0))(
  ( (ElementMatch!3810 (c!231803 (_ BitVec 16))) (Concat!6397 (regOne!8132 Regex!3810) (regTwo!8132 Regex!3810)) (EmptyExpr!3810) (Star!3810 (reg!4139 Regex!3810)) (EmptyLang!3810) (Union!3810 (regOne!8133 Regex!3810) (regTwo!8133 Regex!3810)) )
))
(declare-datatypes ((String!17168 0))(
  ( (String!17169 (value!80769 String)) )
))
(declare-datatypes ((IArray!9529 0))(
  ( (IArray!9530 (innerList!4822 List!14453)) )
))
(declare-datatypes ((Conc!4762 0))(
  ( (Node!4762 (left!12288 Conc!4762) (right!12618 Conc!4762) (csize!9754 Int) (cheight!4973 Int)) (Leaf!7207 (xs!7489 IArray!9529) (csize!9755 Int)) (Empty!4762) )
))
(declare-datatypes ((BalanceConc!9464 0))(
  ( (BalanceConc!9465 (c!231804 Conc!4762)) )
))
(declare-datatypes ((TokenValueInjection!4832 0))(
  ( (TokenValueInjection!4833 (toValue!3791 Int) (toChars!3650 Int)) )
))
(declare-datatypes ((Rule!4792 0))(
  ( (Rule!4793 (regex!2496 Regex!3810) (tag!2758 String!17168) (isSeparator!2496 Bool) (transformation!2496 TokenValueInjection!4832)) )
))
(declare-datatypes ((Token!4654 0))(
  ( (Token!4655 (value!80770 TokenValue!2586) (rule!4259 Rule!4792) (size!11851 Int) (originalCharacters!3358 List!14453)) )
))
(declare-datatypes ((List!14454 0))(
  ( (Nil!14388) (Cons!14388 (h!19789 Rule!4792) (t!123457 List!14454)) )
))
(declare-datatypes ((List!14455 0))(
  ( (Nil!14389) (Cons!14389 (h!19790 Token!4654) (t!123458 List!14455)) )
))
(declare-datatypes ((IArray!9531 0))(
  ( (IArray!9532 (innerList!4823 List!14455)) )
))
(declare-datatypes ((Conc!4763 0))(
  ( (Node!4763 (left!12289 Conc!4763) (right!12619 Conc!4763) (csize!9756 Int) (cheight!4974 Int)) (Leaf!7208 (xs!7490 IArray!9531) (csize!9757 Int)) (Empty!4763) )
))
(declare-datatypes ((BalanceConc!9466 0))(
  ( (BalanceConc!9467 (c!231805 Conc!4763)) )
))
(declare-datatypes ((PrintableTokens!774 0))(
  ( (PrintableTokens!775 (rules!10991 List!14454) (tokens!1727 BalanceConc!9466)) )
))
(declare-datatypes ((Option!2757 0))(
  ( (None!2756) (Some!2756 (v!21770 PrintableTokens!774)) )
))
(declare-fun lt!471513 () Option!2757)

(assert (=> b!1410680 (= res!638926 (is-Some!2756 lt!471513))))

(declare-fun acc!229 () PrintableTokens!774)

(declare-datatypes ((List!14456 0))(
  ( (Nil!14390) (Cons!14390 (h!19791 PrintableTokens!774) (t!123459 List!14456)) )
))
(declare-datatypes ((IArray!9533 0))(
  ( (IArray!9534 (innerList!4824 List!14456)) )
))
(declare-datatypes ((Conc!4764 0))(
  ( (Node!4764 (left!12290 Conc!4764) (right!12620 Conc!4764) (csize!9758 Int) (cheight!4975 Int)) (Leaf!7209 (xs!7491 IArray!9533) (csize!9759 Int)) (Empty!4764) )
))
(declare-datatypes ((BalanceConc!9468 0))(
  ( (BalanceConc!9469 (c!231806 Conc!4764)) )
))
(declare-fun objs!24 () BalanceConc!9468)

(declare-fun append!417 (PrintableTokens!774 PrintableTokens!774) Option!2757)

(declare-fun head!2654 (BalanceConc!9468) PrintableTokens!774)

(assert (=> b!1410680 (= lt!471513 (append!417 acc!229 (head!2654 objs!24)))))

(declare-fun b!1410681 () Bool)

(declare-fun e!900574 () Bool)

(declare-fun tp!400435 () Bool)

(declare-fun inv!18753 (Conc!4763) Bool)

(assert (=> b!1410681 (= e!900574 (and (inv!18753 (c!231805 (tokens!1727 acc!229))) tp!400435))))

(declare-fun b!1410682 () Bool)

(declare-fun usesJsonRules!0 (PrintableTokens!774) Bool)

(assert (=> b!1410682 (= e!900572 (not (usesJsonRules!0 (v!21770 lt!471513))))))

(declare-fun b!1410684 () Bool)

(declare-fun res!638930 () Bool)

(assert (=> b!1410684 (=> (not res!638930) (not e!900575))))

(declare-fun isEmpty!8781 (BalanceConc!9468) Bool)

(assert (=> b!1410684 (= res!638930 (not (isEmpty!8781 objs!24)))))

(declare-fun b!1410685 () Bool)

(declare-fun res!638927 () Bool)

(assert (=> b!1410685 (=> (not res!638927) (not e!900575))))

(assert (=> b!1410685 (= res!638927 (usesJsonRules!0 acc!229))))

(declare-fun tp!400433 () Bool)

(declare-fun b!1410686 () Bool)

(declare-fun e!900570 () Bool)

(declare-fun inv!18754 (BalanceConc!9466) Bool)

(assert (=> b!1410686 (= e!900570 (and tp!400433 (inv!18754 (tokens!1727 acc!229)) e!900574))))

(declare-fun b!1410687 () Bool)

(declare-fun res!638931 () Bool)

(assert (=> b!1410687 (=> (not res!638931) (not e!900572))))

(declare-fun lambda!62364 () Int)

(declare-fun forall!3508 (BalanceConc!9468 Int) Bool)

(declare-fun tail!2053 (BalanceConc!9468) BalanceConc!9468)

(assert (=> b!1410687 (= res!638931 (forall!3508 (tail!2053 objs!24) lambda!62364))))

(declare-fun b!1410688 () Bool)

(declare-fun e!900569 () Bool)

(declare-fun sep!3 () PrintableTokens!774)

(declare-fun tp!400434 () Bool)

(assert (=> b!1410688 (= e!900569 (and (inv!18753 (c!231805 (tokens!1727 sep!3))) tp!400434))))

(declare-fun b!1410689 () Bool)

(declare-fun res!638929 () Bool)

(assert (=> b!1410689 (=> (not res!638929) (not e!900575))))

(declare-fun size!11852 (BalanceConc!9468) Int)

(assert (=> b!1410689 (= res!638929 (= (size!11852 objs!24) 1))))

(declare-fun res!638928 () Bool)

(assert (=> start!129014 (=> (not res!638928) (not e!900575))))

(assert (=> start!129014 (= res!638928 (forall!3508 objs!24 lambda!62364))))

(assert (=> start!129014 e!900575))

(declare-fun e!900573 () Bool)

(declare-fun inv!18755 (BalanceConc!9468) Bool)

(assert (=> start!129014 (and (inv!18755 objs!24) e!900573)))

(declare-fun inv!18756 (PrintableTokens!774) Bool)

(assert (=> start!129014 (and (inv!18756 acc!229) e!900570)))

(declare-fun e!900571 () Bool)

(assert (=> start!129014 (and (inv!18756 sep!3) e!900571)))

(declare-fun b!1410683 () Bool)

(declare-fun tp!400436 () Bool)

(assert (=> b!1410683 (= e!900571 (and tp!400436 (inv!18754 (tokens!1727 sep!3)) e!900569))))

(declare-fun b!1410690 () Bool)

(declare-fun tp!400437 () Bool)

(declare-fun inv!18757 (Conc!4764) Bool)

(assert (=> b!1410690 (= e!900573 (and (inv!18757 (c!231806 objs!24)) tp!400437))))

(declare-fun b!1410691 () Bool)

(declare-fun res!638925 () Bool)

(assert (=> b!1410691 (=> (not res!638925) (not e!900575))))

(assert (=> b!1410691 (= res!638925 (usesJsonRules!0 sep!3))))

(assert (= (and start!129014 res!638928) b!1410685))

(assert (= (and b!1410685 res!638927) b!1410691))

(assert (= (and b!1410691 res!638925) b!1410684))

(assert (= (and b!1410684 res!638930) b!1410689))

(assert (= (and b!1410689 res!638929) b!1410680))

(assert (= (and b!1410680 res!638926) b!1410687))

(assert (= (and b!1410687 res!638931) b!1410682))

(assert (= start!129014 b!1410690))

(assert (= b!1410686 b!1410681))

(assert (= start!129014 b!1410686))

(assert (= b!1410683 b!1410688))

(assert (= start!129014 b!1410683))

(declare-fun m!1590759 () Bool)

(assert (=> b!1410686 m!1590759))

(declare-fun m!1590761 () Bool)

(assert (=> b!1410681 m!1590761))

(declare-fun m!1590763 () Bool)

(assert (=> b!1410688 m!1590763))

(declare-fun m!1590765 () Bool)

(assert (=> b!1410680 m!1590765))

(assert (=> b!1410680 m!1590765))

(declare-fun m!1590767 () Bool)

(assert (=> b!1410680 m!1590767))

(declare-fun m!1590769 () Bool)

(assert (=> b!1410683 m!1590769))

(declare-fun m!1590771 () Bool)

(assert (=> b!1410684 m!1590771))

(declare-fun m!1590773 () Bool)

(assert (=> b!1410685 m!1590773))

(declare-fun m!1590775 () Bool)

(assert (=> b!1410690 m!1590775))

(declare-fun m!1590777 () Bool)

(assert (=> b!1410682 m!1590777))

(declare-fun m!1590779 () Bool)

(assert (=> b!1410691 m!1590779))

(declare-fun m!1590781 () Bool)

(assert (=> start!129014 m!1590781))

(declare-fun m!1590783 () Bool)

(assert (=> start!129014 m!1590783))

(declare-fun m!1590785 () Bool)

(assert (=> start!129014 m!1590785))

(declare-fun m!1590787 () Bool)

(assert (=> start!129014 m!1590787))

(declare-fun m!1590789 () Bool)

(assert (=> b!1410687 m!1590789))

(assert (=> b!1410687 m!1590789))

(declare-fun m!1590791 () Bool)

(assert (=> b!1410687 m!1590791))

(declare-fun m!1590793 () Bool)

(assert (=> b!1410689 m!1590793))

(push 1)

(assert (not start!129014))

(assert (not b!1410687))

(assert (not b!1410680))

(assert (not b!1410688))

(assert (not b!1410690))

(assert (not b!1410691))

(assert (not b!1410681))

(assert (not b!1410683))

(assert (not b!1410684))

(assert (not b!1410682))

(assert (not b!1410685))

(assert (not b!1410689))

(assert (not b!1410686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!403299 () Bool)

(declare-fun lt!471519 () Bool)

(declare-fun forall!3510 (List!14456 Int) Bool)

(declare-fun list!5638 (BalanceConc!9468) List!14456)

(assert (=> d!403299 (= lt!471519 (forall!3510 (list!5638 (tail!2053 objs!24)) lambda!62364))))

(declare-fun forall!3511 (Conc!4764 Int) Bool)

(assert (=> d!403299 (= lt!471519 (forall!3511 (c!231806 (tail!2053 objs!24)) lambda!62364))))

(assert (=> d!403299 (= (forall!3508 (tail!2053 objs!24) lambda!62364) lt!471519)))

(declare-fun bs!338915 () Bool)

(assert (= bs!338915 d!403299))

(assert (=> bs!338915 m!1590789))

(declare-fun m!1590831 () Bool)

(assert (=> bs!338915 m!1590831))

(assert (=> bs!338915 m!1590831))

(declare-fun m!1590833 () Bool)

(assert (=> bs!338915 m!1590833))

(declare-fun m!1590835 () Bool)

(assert (=> bs!338915 m!1590835))

(assert (=> b!1410687 d!403299))

(declare-fun d!403301 () Bool)

(declare-fun e!900599 () Bool)

(assert (=> d!403301 e!900599))

(declare-fun res!638959 () Bool)

(assert (=> d!403301 (=> (not res!638959) (not e!900599))))

(declare-fun isBalanced!1405 (Conc!4764) Bool)

(declare-fun tail!2055 (Conc!4764) Conc!4764)

(assert (=> d!403301 (= res!638959 (isBalanced!1405 (tail!2055 (c!231806 objs!24))))))

(declare-fun lt!471522 () BalanceConc!9468)

(assert (=> d!403301 (= lt!471522 (BalanceConc!9469 (tail!2055 (c!231806 objs!24))))))

(assert (=> d!403301 (not (isEmpty!8781 objs!24))))

(assert (=> d!403301 (= (tail!2053 objs!24) lt!471522)))

(declare-fun b!1410730 () Bool)

(declare-fun tail!2056 (List!14456) List!14456)

(assert (=> b!1410730 (= e!900599 (= (list!5638 lt!471522) (tail!2056 (list!5638 objs!24))))))

(assert (= (and d!403301 res!638959) b!1410730))

(declare-fun m!1590837 () Bool)

(assert (=> d!403301 m!1590837))

(assert (=> d!403301 m!1590837))

(declare-fun m!1590839 () Bool)

(assert (=> d!403301 m!1590839))

(assert (=> d!403301 m!1590771))

(declare-fun m!1590841 () Bool)

(assert (=> b!1410730 m!1590841))

(declare-fun m!1590843 () Bool)

(assert (=> b!1410730 m!1590843))

(assert (=> b!1410730 m!1590843))

(declare-fun m!1590845 () Bool)

(assert (=> b!1410730 m!1590845))

(assert (=> b!1410687 d!403301))

(declare-fun d!403305 () Bool)

(declare-fun c!231814 () Bool)

(assert (=> d!403305 (= c!231814 (is-Node!4763 (c!231805 (tokens!1727 sep!3))))))

(declare-fun e!900604 () Bool)

(assert (=> d!403305 (= (inv!18753 (c!231805 (tokens!1727 sep!3))) e!900604)))

(declare-fun b!1410737 () Bool)

(declare-fun inv!18763 (Conc!4763) Bool)

(assert (=> b!1410737 (= e!900604 (inv!18763 (c!231805 (tokens!1727 sep!3))))))

(declare-fun b!1410738 () Bool)

(declare-fun e!900605 () Bool)

(assert (=> b!1410738 (= e!900604 e!900605)))

(declare-fun res!638962 () Bool)

(assert (=> b!1410738 (= res!638962 (not (is-Leaf!7208 (c!231805 (tokens!1727 sep!3)))))))

(assert (=> b!1410738 (=> res!638962 e!900605)))

(declare-fun b!1410739 () Bool)

(declare-fun inv!18764 (Conc!4763) Bool)

(assert (=> b!1410739 (= e!900605 (inv!18764 (c!231805 (tokens!1727 sep!3))))))

(assert (= (and d!403305 c!231814) b!1410737))

(assert (= (and d!403305 (not c!231814)) b!1410738))

(assert (= (and b!1410738 (not res!638962)) b!1410739))

(declare-fun m!1590851 () Bool)

(assert (=> b!1410737 m!1590851))

(declare-fun m!1590853 () Bool)

(assert (=> b!1410739 m!1590853))

(assert (=> b!1410688 d!403305))

(declare-fun d!403311 () Bool)

(declare-fun lt!471525 () Int)

(declare-fun size!11855 (List!14456) Int)

(assert (=> d!403311 (= lt!471525 (size!11855 (list!5638 objs!24)))))

(declare-fun size!11856 (Conc!4764) Int)

(assert (=> d!403311 (= lt!471525 (size!11856 (c!231806 objs!24)))))

(assert (=> d!403311 (= (size!11852 objs!24) lt!471525)))

(declare-fun bs!338918 () Bool)

(assert (= bs!338918 d!403311))

(assert (=> bs!338918 m!1590843))

(assert (=> bs!338918 m!1590843))

(declare-fun m!1590855 () Bool)

(assert (=> bs!338918 m!1590855))

(declare-fun m!1590857 () Bool)

(assert (=> bs!338918 m!1590857))

(assert (=> b!1410689 d!403311))

(declare-fun d!403313 () Bool)

(declare-fun c!231817 () Bool)

(assert (=> d!403313 (= c!231817 (is-Node!4764 (c!231806 objs!24)))))

(declare-fun e!900610 () Bool)

(assert (=> d!403313 (= (inv!18757 (c!231806 objs!24)) e!900610)))

(declare-fun b!1410746 () Bool)

(declare-fun inv!18765 (Conc!4764) Bool)

(assert (=> b!1410746 (= e!900610 (inv!18765 (c!231806 objs!24)))))

(declare-fun b!1410747 () Bool)

(declare-fun e!900611 () Bool)

(assert (=> b!1410747 (= e!900610 e!900611)))

(declare-fun res!638965 () Bool)

(assert (=> b!1410747 (= res!638965 (not (is-Leaf!7209 (c!231806 objs!24))))))

(assert (=> b!1410747 (=> res!638965 e!900611)))

(declare-fun b!1410748 () Bool)

(declare-fun inv!18766 (Conc!4764) Bool)

(assert (=> b!1410748 (= e!900611 (inv!18766 (c!231806 objs!24)))))

(assert (= (and d!403313 c!231817) b!1410746))

(assert (= (and d!403313 (not c!231817)) b!1410747))

(assert (= (and b!1410747 (not res!638965)) b!1410748))

(declare-fun m!1590859 () Bool)

(assert (=> b!1410746 m!1590859))

(declare-fun m!1590861 () Bool)

(assert (=> b!1410748 m!1590861))

(assert (=> b!1410690 d!403313))

(declare-fun d!403315 () Bool)

(declare-fun lt!471526 () Bool)

(assert (=> d!403315 (= lt!471526 (forall!3510 (list!5638 objs!24) lambda!62364))))

(assert (=> d!403315 (= lt!471526 (forall!3511 (c!231806 objs!24) lambda!62364))))

(assert (=> d!403315 (= (forall!3508 objs!24 lambda!62364) lt!471526)))

(declare-fun bs!338919 () Bool)

(assert (= bs!338919 d!403315))

(assert (=> bs!338919 m!1590843))

(assert (=> bs!338919 m!1590843))

(declare-fun m!1590863 () Bool)

(assert (=> bs!338919 m!1590863))

(declare-fun m!1590865 () Bool)

(assert (=> bs!338919 m!1590865))

(assert (=> start!129014 d!403315))

(declare-fun d!403317 () Bool)

(assert (=> d!403317 (= (inv!18755 objs!24) (isBalanced!1405 (c!231806 objs!24)))))

(declare-fun bs!338920 () Bool)

(assert (= bs!338920 d!403317))

(declare-fun m!1590867 () Bool)

(assert (=> bs!338920 m!1590867))

(assert (=> start!129014 d!403317))

(declare-fun d!403319 () Bool)

(declare-fun res!638972 () Bool)

(declare-fun e!900614 () Bool)

(assert (=> d!403319 (=> (not res!638972) (not e!900614))))

(declare-fun isEmpty!8783 (List!14454) Bool)

(assert (=> d!403319 (= res!638972 (not (isEmpty!8783 (rules!10991 acc!229))))))

(assert (=> d!403319 (= (inv!18756 acc!229) e!900614)))

(declare-fun b!1410755 () Bool)

(declare-fun res!638973 () Bool)

(assert (=> b!1410755 (=> (not res!638973) (not e!900614))))

(declare-datatypes ((LexerInterface!2187 0))(
  ( (LexerInterfaceExt!2184 (__x!8999 Int)) (Lexer!2185) )
))
(declare-fun rulesInvariant!2056 (LexerInterface!2187 List!14454) Bool)

(assert (=> b!1410755 (= res!638973 (rulesInvariant!2056 Lexer!2185 (rules!10991 acc!229)))))

(declare-fun b!1410756 () Bool)

(declare-fun res!638974 () Bool)

(assert (=> b!1410756 (=> (not res!638974) (not e!900614))))

(declare-fun rulesProduceEachTokenIndividually!783 (LexerInterface!2187 List!14454 BalanceConc!9466) Bool)

(assert (=> b!1410756 (= res!638974 (rulesProduceEachTokenIndividually!783 Lexer!2185 (rules!10991 acc!229) (tokens!1727 acc!229)))))

(declare-fun b!1410757 () Bool)

(declare-fun separableTokens!168 (LexerInterface!2187 BalanceConc!9466 List!14454) Bool)

(assert (=> b!1410757 (= e!900614 (separableTokens!168 Lexer!2185 (tokens!1727 acc!229) (rules!10991 acc!229)))))

(assert (= (and d!403319 res!638972) b!1410755))

(assert (= (and b!1410755 res!638973) b!1410756))

(assert (= (and b!1410756 res!638974) b!1410757))

(declare-fun m!1590869 () Bool)

(assert (=> d!403319 m!1590869))

(declare-fun m!1590871 () Bool)

(assert (=> b!1410755 m!1590871))

(declare-fun m!1590873 () Bool)

(assert (=> b!1410756 m!1590873))

(declare-fun m!1590875 () Bool)

(assert (=> b!1410757 m!1590875))

(assert (=> start!129014 d!403319))

(declare-fun d!403321 () Bool)

(declare-fun res!638975 () Bool)

(declare-fun e!900615 () Bool)

(assert (=> d!403321 (=> (not res!638975) (not e!900615))))

(assert (=> d!403321 (= res!638975 (not (isEmpty!8783 (rules!10991 sep!3))))))

(assert (=> d!403321 (= (inv!18756 sep!3) e!900615)))

(declare-fun b!1410758 () Bool)

(declare-fun res!638976 () Bool)

(assert (=> b!1410758 (=> (not res!638976) (not e!900615))))

(assert (=> b!1410758 (= res!638976 (rulesInvariant!2056 Lexer!2185 (rules!10991 sep!3)))))

(declare-fun b!1410759 () Bool)

(declare-fun res!638977 () Bool)

(assert (=> b!1410759 (=> (not res!638977) (not e!900615))))

(assert (=> b!1410759 (= res!638977 (rulesProduceEachTokenIndividually!783 Lexer!2185 (rules!10991 sep!3) (tokens!1727 sep!3)))))

(declare-fun b!1410760 () Bool)

(assert (=> b!1410760 (= e!900615 (separableTokens!168 Lexer!2185 (tokens!1727 sep!3) (rules!10991 sep!3)))))

(assert (= (and d!403321 res!638975) b!1410758))

(assert (= (and b!1410758 res!638976) b!1410759))

(assert (= (and b!1410759 res!638977) b!1410760))

(declare-fun m!1590877 () Bool)

(assert (=> d!403321 m!1590877))

(declare-fun m!1590879 () Bool)

(assert (=> b!1410758 m!1590879))

(declare-fun m!1590881 () Bool)

(assert (=> b!1410759 m!1590881))

(declare-fun m!1590883 () Bool)

(assert (=> b!1410760 m!1590883))

(assert (=> start!129014 d!403321))

(declare-fun b!1410858 () Bool)

(declare-fun e!900670 () List!14453)

(declare-fun call!94317 () List!14453)

(assert (=> b!1410858 (= e!900670 call!94317)))

(declare-fun b!1410859 () Bool)

(declare-fun e!900676 () Bool)

(declare-fun e!900674 () Bool)

(assert (=> b!1410859 (= e!900676 e!900674)))

(declare-fun res!639001 () Bool)

(assert (=> b!1410859 (=> (not res!639001) (not e!900674))))

(declare-fun lt!471880 () Option!2757)

(declare-fun get!4430 (Option!2757) PrintableTokens!774)

(assert (=> b!1410859 (= res!639001 (= (rules!10991 (get!4430 lt!471880)) (rules!10991 acc!229)))))

(declare-fun b!1410860 () Bool)

(declare-fun e!900675 () List!14453)

(declare-fun call!94314 () List!14453)

(assert (=> b!1410860 (= e!900675 call!94314)))

(declare-fun b!1410861 () Bool)

(declare-fun call!94333 () List!14453)

(assert (=> b!1410861 (= e!900675 call!94333)))

(declare-fun b!1410862 () Bool)

(assert (=> b!1410862 (= e!900670 Nil!14387)))

(declare-fun bm!94294 () Bool)

(declare-fun lt!471899 () List!14455)

(declare-fun c!231859 () Bool)

(declare-fun lt!471893 () List!14455)

(declare-fun call!94311 () BalanceConc!9464)

(declare-fun charsOf!1462 (Token!4654) BalanceConc!9464)

(assert (=> bm!94294 (= call!94311 (charsOf!1462 (ite c!231859 (h!19790 lt!471899) (h!19790 lt!471893))))))

(declare-fun bm!94295 () Bool)

(declare-datatypes ((Unit!20884 0))(
  ( (Unit!20885) )
))
(declare-fun call!94300 () Unit!20884)

(declare-fun call!94316 () Unit!20884)

(assert (=> bm!94295 (= call!94300 call!94316)))

(declare-fun b!1410863 () Bool)

(declare-fun e!900677 () Option!2757)

(declare-fun ++!3747 (BalanceConc!9466 BalanceConc!9466) BalanceConc!9466)

(assert (=> b!1410863 (= e!900677 (Some!2756 (PrintableTokens!775 (rules!10991 acc!229) (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24))))))))

(declare-fun lt!471909 () LexerInterface!2187)

(assert (=> b!1410863 (= lt!471909 Lexer!2185)))

(declare-fun lt!471879 () List!14455)

(declare-fun call!94312 () List!14455)

(assert (=> b!1410863 (= lt!471879 call!94312)))

(declare-fun lt!471920 () List!14455)

(declare-fun call!94337 () List!14455)

(assert (=> b!1410863 (= lt!471920 call!94337)))

(declare-fun lt!471872 () Unit!20884)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!12 (LexerInterface!2187 List!14455 List!14455 List!14454) Unit!20884)

(assert (=> b!1410863 (= lt!471872 (tokensListTwoByTwoPredicateConcatSeparableTokensList!12 lt!471909 lt!471879 lt!471920 (rules!10991 acc!229)))))

(declare-fun lt!471896 () Unit!20884)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!12 (LexerInterface!2187 List!14454 List!14455 List!14455) Unit!20884)

(assert (=> b!1410863 (= lt!471896 (lemmaRulesProduceEachTokenIndividuallyConcat!12 lt!471909 (rules!10991 acc!229) lt!471879 lt!471920))))

(declare-fun rulesProduceEachTokenIndividuallyList!670 (LexerInterface!2187 List!14454 List!14455) Bool)

(declare-fun ++!3748 (List!14455 List!14455) List!14455)

(assert (=> b!1410863 (rulesProduceEachTokenIndividuallyList!670 lt!471909 (rules!10991 acc!229) (++!3748 lt!471879 lt!471920))))

(declare-fun lt!471916 () Unit!20884)

(assert (=> b!1410863 (= lt!471916 lt!471896)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!191 (LexerInterface!2187 List!14455 List!14454) Bool)

(assert (=> b!1410863 (tokensListTwoByTwoPredicateSeparableList!191 lt!471909 (++!3748 lt!471879 lt!471920) (rules!10991 acc!229))))

(declare-fun lt!471914 () Unit!20884)

(assert (=> b!1410863 (= lt!471914 lt!471872)))

(declare-fun lt!471894 () LexerInterface!2187)

(assert (=> b!1410863 (= lt!471894 Lexer!2185)))

(declare-fun lt!471878 () List!14455)

(assert (=> b!1410863 (= lt!471878 call!94312)))

(declare-fun lt!471882 () List!14455)

(assert (=> b!1410863 (= lt!471882 call!94337)))

(declare-fun lt!471866 () Unit!20884)

(declare-fun lemmaPrintConcatSameAsConcatPrint!13 (LexerInterface!2187 List!14455 List!14455) Unit!20884)

(assert (=> b!1410863 (= lt!471866 (lemmaPrintConcatSameAsConcatPrint!13 lt!471894 lt!471878 lt!471882))))

(declare-fun call!94301 () List!14453)

(declare-fun call!94324 () List!14453)

(assert (=> b!1410863 (= call!94301 call!94324)))

(declare-fun lt!471873 () Unit!20884)

(assert (=> b!1410863 (= lt!471873 lt!471866)))

(declare-fun lt!471857 () Unit!20884)

(declare-fun call!94325 () Unit!20884)

(assert (=> b!1410863 (= lt!471857 call!94325)))

(declare-fun call!94302 () BalanceConc!9464)

(declare-fun call!94299 () BalanceConc!9464)

(assert (=> b!1410863 (= call!94302 call!94299)))

(declare-fun lt!471907 () Unit!20884)

(declare-fun Unit!20888 () Unit!20884)

(assert (=> b!1410863 (= lt!471907 Unit!20888)))

(declare-fun lt!471861 () Unit!20884)

(assert (=> b!1410863 (= lt!471861 call!94300)))

(declare-fun call!94310 () BalanceConc!9464)

(declare-fun call!94334 () BalanceConc!9464)

(assert (=> b!1410863 (= call!94310 call!94334)))

(declare-fun lt!471892 () Unit!20884)

(declare-fun Unit!20890 () Unit!20884)

(assert (=> b!1410863 (= lt!471892 Unit!20890)))

(declare-fun lt!471881 () PrintableTokens!774)

(assert (=> b!1410863 (= lt!471881 (PrintableTokens!775 (rules!10991 acc!229) (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24)))))))

(declare-fun lt!471919 () BalanceConc!9466)

(assert (=> b!1410863 (= lt!471919 (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24))))))

(declare-fun lt!471885 () Unit!20884)

(declare-fun theoremInvertabilityWhenTokenListSeparable!17 (LexerInterface!2187 List!14454 List!14455) Unit!20884)

(declare-fun list!5639 (BalanceConc!9466) List!14455)

(assert (=> b!1410863 (= lt!471885 (theoremInvertabilityWhenTokenListSeparable!17 Lexer!2185 (rules!10991 acc!229) (list!5639 (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24))))))))

(declare-fun print!949 (PrintableTokens!774) BalanceConc!9464)

(declare-fun print!950 (LexerInterface!2187 BalanceConc!9466) BalanceConc!9464)

(assert (=> b!1410863 (= (print!949 (PrintableTokens!775 (rules!10991 acc!229) (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24))))) (print!950 Lexer!2185 (++!3747 (tokens!1727 acc!229) (tokens!1727 (head!2654 objs!24)))))))

(declare-fun lt!471915 () Unit!20884)

(declare-fun Unit!20893 () Unit!20884)

(assert (=> b!1410863 (= lt!471915 Unit!20893)))

(declare-fun lt!471888 () LexerInterface!2187)

(assert (=> b!1410863 (= lt!471888 Lexer!2185)))

(declare-fun lt!471883 () List!14455)

(assert (=> b!1410863 (= lt!471883 call!94312)))

(declare-fun lt!471858 () List!14455)

(assert (=> b!1410863 (= lt!471858 call!94337)))

(declare-fun lt!471910 () Unit!20884)

(declare-fun call!94322 () Unit!20884)

(assert (=> b!1410863 (= lt!471910 call!94322)))

(declare-fun call!94336 () List!14453)

(declare-fun call!94303 () List!14453)

(assert (=> b!1410863 (= call!94336 call!94303)))

(declare-fun lt!471876 () Unit!20884)

(assert (=> b!1410863 (= lt!471876 lt!471910)))

(declare-fun call!94304 () List!14455)

(declare-fun lt!471860 () LexerInterface!2187)

(declare-fun c!231864 () Bool)

(declare-fun call!94330 () List!14453)

(declare-fun e!900678 () List!14455)

(declare-fun bm!94296 () Bool)

(declare-fun printList!648 (LexerInterface!2187 List!14455) List!14453)

(assert (=> bm!94296 (= call!94330 (printList!648 (ite c!231859 lt!471860 (ite c!231864 Lexer!2185 lt!471894)) (ite c!231859 call!94304 e!900678)))))

(declare-fun bm!94297 () Bool)

(declare-fun call!94309 () List!14453)

(declare-fun call!94319 () List!14453)

(assert (=> bm!94297 (= call!94309 call!94319)))

(declare-fun bm!94298 () Bool)

(declare-fun call!94315 () List!14453)

(assert (=> bm!94298 (= call!94336 call!94315)))

(declare-fun call!94327 () List!14453)

(declare-fun bm!94299 () Bool)

(declare-fun ++!3749 (List!14453 List!14453) List!14453)

(assert (=> bm!94299 (= call!94317 (++!3749 (ite c!231859 call!94333 e!900675) (ite c!231859 call!94315 (ite c!231864 call!94327 call!94309))))))

(declare-fun bm!94300 () Bool)

(declare-fun call!94326 () List!14455)

(assert (=> bm!94300 (= call!94316 (theoremInvertabilityWhenTokenListSeparable!17 Lexer!2185 (ite (or c!231859 c!231864) (rules!10991 acc!229) (rules!10991 (head!2654 objs!24))) (ite c!231859 call!94326 (ite c!231864 call!94312 call!94337))))))

(declare-fun bm!94301 () Bool)

(assert (=> bm!94301 (= call!94312 call!94326)))

(declare-fun bm!94302 () Bool)

(declare-fun c!231863 () Bool)

(assert (=> bm!94302 (= c!231863 c!231864)))

(assert (=> bm!94302 (= call!94301 call!94330)))

(declare-fun bm!94303 () Bool)

(declare-fun lt!471904 () LexerInterface!2187)

(declare-fun call!94331 () List!14455)

(assert (=> bm!94303 (= call!94315 (printList!648 (ite c!231859 Lexer!2185 (ite c!231864 lt!471904 lt!471888)) (ite c!231859 (t!123458 lt!471899) call!94331)))))

(declare-fun call!94308 () BalanceConc!9464)

(declare-fun bm!94304 () Bool)

(assert (=> bm!94304 (= call!94308 (print!949 (ite c!231859 (head!2654 objs!24) acc!229)))))

(declare-fun bm!94305 () Bool)

(declare-fun call!94335 () BalanceConc!9464)

(assert (=> bm!94305 (= call!94335 (print!950 Lexer!2185 (tokens!1727 acc!229)))))

(declare-fun call!94307 () List!14453)

(declare-fun call!94323 () List!14453)

(declare-fun bm!94306 () Bool)

(declare-fun call!94320 () List!14453)

(assert (=> bm!94306 (= call!94307 (++!3749 (ite c!231859 call!94320 (ite c!231864 call!94314 call!94327)) (ite c!231859 call!94319 call!94323)))))

(declare-fun bm!94307 () Bool)

(assert (=> bm!94307 (= call!94326 (list!5639 (tokens!1727 acc!229)))))

(declare-fun bm!94308 () Bool)

(declare-fun call!94332 () List!14453)

(assert (=> bm!94308 (= call!94314 call!94332)))

(declare-fun bm!94309 () Bool)

(declare-fun c!231862 () Bool)

(assert (=> bm!94309 (= c!231862 c!231864)))

(assert (=> bm!94309 (= call!94324 call!94317)))

(declare-fun b!1410864 () Bool)

(assert (=> b!1410864 (= e!900677 None!2756)))

(declare-fun b!1410865 () Bool)

(declare-fun list!5641 (BalanceConc!9464) List!14453)

(assert (=> b!1410865 (= e!900674 (= (list!5641 (print!949 (get!4430 lt!471880))) (++!3749 (list!5641 (print!949 acc!229)) (list!5641 (print!949 (head!2654 objs!24))))))))

(declare-fun bm!94310 () Bool)

(declare-fun call!94329 () BalanceConc!9464)

(assert (=> bm!94310 (= call!94329 (print!950 Lexer!2185 (tokens!1727 (head!2654 objs!24))))))

(declare-fun bm!94311 () Bool)

(assert (=> bm!94311 (= call!94331 call!94304)))

(declare-fun bm!94312 () Bool)

(declare-fun call!94318 () Unit!20884)

(assert (=> bm!94312 (= call!94322 call!94318)))

(declare-fun b!1410866 () Bool)

(declare-fun c!231861 () Bool)

(declare-fun separableTokensPredicate!468 (LexerInterface!2187 Token!4654 Token!4654 List!14454) Bool)

(declare-fun last!61 (BalanceConc!9466) Token!4654)

(declare-fun head!2656 (BalanceConc!9466) Token!4654)

(assert (=> b!1410866 (= c!231861 (separableTokensPredicate!468 Lexer!2185 (last!61 (tokens!1727 acc!229)) (head!2656 (tokens!1727 (head!2654 objs!24))) (rules!10991 acc!229)))))

(declare-fun lt!471865 () Unit!20884)

(declare-fun lt!471905 () Unit!20884)

(assert (=> b!1410866 (= lt!471865 lt!471905)))

(declare-fun lt!471884 () LexerInterface!2187)

(declare-fun lt!471901 () Token!4654)

(declare-fun rulesProduceIndividualToken!1154 (LexerInterface!2187 List!14454 Token!4654) Bool)

(assert (=> b!1410866 (rulesProduceIndividualToken!1154 lt!471884 (rules!10991 acc!229) lt!471901)))

(declare-fun lt!471875 () List!14455)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!339 (LexerInterface!2187 List!14454 List!14455 Token!4654) Unit!20884)

(assert (=> b!1410866 (= lt!471905 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!339 lt!471884 (rules!10991 acc!229) lt!471875 lt!471901))))

(assert (=> b!1410866 (= lt!471901 (head!2656 (tokens!1727 (head!2654 objs!24))))))

(assert (=> b!1410866 (= lt!471875 call!94337)))

(assert (=> b!1410866 (= lt!471884 Lexer!2185)))

(declare-fun lt!471913 () Unit!20884)

(declare-fun lt!471900 () Unit!20884)

(assert (=> b!1410866 (= lt!471913 lt!471900)))

(declare-fun lt!471902 () LexerInterface!2187)

(declare-fun lt!471871 () Token!4654)

(assert (=> b!1410866 (rulesProduceIndividualToken!1154 lt!471902 (rules!10991 acc!229) lt!471871)))

(declare-fun lt!471891 () List!14455)

(assert (=> b!1410866 (= lt!471900 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!339 lt!471902 (rules!10991 acc!229) lt!471891 lt!471871))))

(assert (=> b!1410866 (= lt!471871 (last!61 (tokens!1727 acc!229)))))

(assert (=> b!1410866 (= lt!471891 call!94312)))

(assert (=> b!1410866 (= lt!471902 Lexer!2185)))

(declare-fun e!900671 () Option!2757)

(assert (=> b!1410866 (= e!900671 e!900677)))

(declare-fun d!403323 () Bool)

(assert (=> d!403323 e!900676))

(declare-fun res!639000 () Bool)

(assert (=> d!403323 (=> res!639000 e!900676)))

(declare-fun isEmpty!8786 (Option!2757) Bool)

(assert (=> d!403323 (= res!639000 (isEmpty!8786 lt!471880))))

(declare-fun e!900673 () Option!2757)

(assert (=> d!403323 (= lt!471880 e!900673)))

(declare-fun isEmpty!8787 (BalanceConc!9466) Bool)

(assert (=> d!403323 (= c!231859 (isEmpty!8787 (tokens!1727 (head!2654 objs!24))))))

(declare-fun lt!471864 () Unit!20884)

(declare-fun lemmaInvariant!220 (PrintableTokens!774) Unit!20884)

(assert (=> d!403323 (= lt!471864 (lemmaInvariant!220 acc!229))))

(declare-fun lt!471877 () Unit!20884)

(assert (=> d!403323 (= lt!471877 (lemmaInvariant!220 (head!2654 objs!24)))))

(assert (=> d!403323 (= (rules!10991 acc!229) (rules!10991 (head!2654 objs!24)))))

(assert (=> d!403323 (= (append!417 acc!229 (head!2654 objs!24)) lt!471880)))

(declare-fun bm!94313 () Bool)

(declare-fun lt!471895 () List!14455)

(declare-fun lt!471917 () List!14455)

(assert (=> bm!94313 (= call!94320 (printList!648 (ite c!231859 lt!471860 (ite c!231864 lt!471904 lt!471888)) (ite c!231859 lt!471895 (ite c!231864 lt!471917 lt!471858))))))

(declare-fun bm!94314 () Bool)

(declare-fun lt!471906 () List!14455)

(declare-fun lt!471886 () List!14455)

(assert (=> bm!94314 (= call!94318 (lemmaPrintConcatSameAsConcatPrint!13 (ite c!231859 lt!471860 (ite c!231864 lt!471904 lt!471888)) (ite c!231859 lt!471895 (ite c!231864 lt!471906 lt!471883)) (ite c!231859 lt!471886 (ite c!231864 lt!471917 lt!471858))))))

(declare-fun bm!94315 () Bool)

(declare-fun call!94305 () List!14455)

(assert (=> bm!94315 (= call!94337 call!94305)))

(declare-fun bm!94316 () Bool)

(assert (=> bm!94316 (= call!94299 call!94335)))

(declare-fun b!1410867 () Bool)

(declare-fun e!900672 () List!14453)

(assert (=> b!1410867 (= e!900672 call!94324)))

(declare-fun bm!94317 () Bool)

(assert (=> bm!94317 (= call!94304 (++!3748 (ite c!231859 lt!471895 (ite c!231864 lt!471906 lt!471883)) (ite c!231859 lt!471886 (ite c!231864 lt!471917 lt!471858))))))

(declare-fun bm!94318 () Bool)

(declare-fun call!94321 () BalanceConc!9464)

(assert (=> bm!94318 (= call!94321 (print!949 (ite c!231859 acc!229 (head!2654 objs!24))))))

(declare-fun bm!94319 () Bool)

(assert (=> bm!94319 (= call!94305 (list!5639 (tokens!1727 (head!2654 objs!24))))))

(declare-fun b!1410868 () Bool)

(assert (=> b!1410868 (= e!900672 Nil!14387)))

(declare-fun bm!94320 () Bool)

(assert (=> bm!94320 (= call!94323 call!94320)))

(declare-fun bm!94321 () Bool)

(assert (=> bm!94321 (= call!94334 call!94329)))

(declare-fun bm!94322 () Bool)

(declare-fun call!94328 () List!14453)

(assert (=> bm!94322 (= call!94328 (printList!648 (ite (or c!231859 c!231864) Lexer!2185 lt!471888) (ite c!231859 Nil!14389 (ite c!231864 (t!123458 lt!471893) lt!471883))))))

(declare-fun bm!94323 () Bool)

(assert (=> bm!94323 (= call!94319 (printList!648 (ite c!231859 lt!471860 (ite c!231864 Lexer!2185 lt!471894)) (ite c!231859 lt!471886 (ite c!231864 Nil!14389 lt!471882))))))

(declare-fun b!1410869 () Bool)

(declare-fun res!638999 () Bool)

(assert (=> b!1410869 (=> (not res!638999) (not e!900674))))

(assert (=> b!1410869 (= res!638999 (= (list!5639 (tokens!1727 (get!4430 lt!471880))) (++!3748 (list!5639 (tokens!1727 acc!229)) (list!5639 (tokens!1727 (head!2654 objs!24))))))))

(declare-fun b!1410870 () Bool)

(assert (=> b!1410870 (= e!900678 call!94337)))

(declare-fun bm!94324 () Bool)

(declare-fun call!94313 () Unit!20884)

(assert (=> bm!94324 (= call!94325 call!94313)))

(declare-fun bm!94325 () Bool)

(assert (=> bm!94325 (= call!94302 call!94308)))

(declare-fun b!1410871 () Bool)

(assert (=> b!1410871 (= e!900673 (Some!2756 acc!229))))

(assert (=> b!1410871 (= lt!471860 Lexer!2185)))

(assert (=> b!1410871 (= lt!471895 call!94326)))

(assert (=> b!1410871 (= lt!471886 Nil!14389)))

(declare-fun lt!471912 () Unit!20884)

(assert (=> b!1410871 (= lt!471912 call!94318)))

(assert (=> b!1410871 (= call!94330 call!94307)))

(declare-fun lt!471908 () Unit!20884)

(assert (=> b!1410871 (= lt!471908 lt!471912)))

(assert (=> b!1410871 (= call!94328 Nil!14387)))

(declare-fun lt!471911 () Unit!20884)

(declare-fun Unit!20897 () Unit!20884)

(assert (=> b!1410871 (= lt!471911 Unit!20897)))

(declare-fun lt!471874 () Unit!20884)

(assert (=> b!1410871 (= lt!471874 call!94316)))

(assert (=> b!1410871 (= call!94321 call!94335)))

(declare-fun lt!471870 () Unit!20884)

(declare-fun Unit!20898 () Unit!20884)

(assert (=> b!1410871 (= lt!471870 Unit!20898)))

(declare-fun lt!471903 () Unit!20884)

(assert (=> b!1410871 (= lt!471903 call!94313)))

(assert (=> b!1410871 (= call!94308 call!94329)))

(declare-fun lt!471868 () Unit!20884)

(declare-fun Unit!20899 () Unit!20884)

(assert (=> b!1410871 (= lt!471868 Unit!20899)))

(declare-fun call!94306 () BalanceConc!9464)

(assert (=> b!1410871 (= call!94329 call!94306)))

(declare-fun lt!471897 () Unit!20884)

(declare-fun Unit!20900 () Unit!20884)

(assert (=> b!1410871 (= lt!471897 Unit!20900)))

(assert (=> b!1410871 (= lt!471899 call!94305)))

(declare-fun c!231865 () Bool)

(assert (=> b!1410871 (= c!231865 (is-Cons!14389 lt!471899))))

(assert (=> b!1410871 (= call!94332 e!900670)))

(declare-fun lt!471918 () Unit!20884)

(declare-fun Unit!20901 () Unit!20884)

(assert (=> b!1410871 (= lt!471918 Unit!20901)))

(declare-fun bm!94326 () Bool)

(assert (=> bm!94326 (= call!94333 (list!5641 call!94311))))

(declare-fun bm!94327 () Bool)

(assert (=> bm!94327 (= call!94313 (theoremInvertabilityWhenTokenListSeparable!17 Lexer!2185 (ite (or c!231859 c!231864) (rules!10991 (head!2654 objs!24)) (rules!10991 acc!229)) (ite c!231859 call!94305 (ite c!231864 call!94337 call!94312))))))

(declare-fun bm!94328 () Bool)

(assert (=> bm!94328 (= call!94303 call!94307)))

(declare-fun b!1410872 () Bool)

(declare-fun lt!471859 () Unit!20884)

(declare-fun Unit!20902 () Unit!20884)

(assert (=> b!1410872 (= lt!471859 Unit!20902)))

(assert (=> b!1410872 (= call!94301 e!900672)))

(declare-fun c!231860 () Bool)

(assert (=> b!1410872 (= c!231860 (is-Cons!14389 lt!471893))))

(assert (=> b!1410872 (= lt!471893 call!94337)))

(declare-fun lt!471887 () Unit!20884)

(declare-fun Unit!20903 () Unit!20884)

(assert (=> b!1410872 (= lt!471887 Unit!20903)))

(assert (=> b!1410872 (= call!94334 call!94306)))

(declare-fun lt!471898 () Unit!20884)

(declare-fun Unit!20904 () Unit!20884)

(assert (=> b!1410872 (= lt!471898 Unit!20904)))

(assert (=> b!1410872 (= call!94310 call!94334)))

(declare-fun lt!471889 () Unit!20884)

(assert (=> b!1410872 (= lt!471889 call!94325)))

(declare-fun lt!471867 () Unit!20884)

(declare-fun Unit!20905 () Unit!20884)

(assert (=> b!1410872 (= lt!471867 Unit!20905)))

(assert (=> b!1410872 (= call!94302 call!94299)))

(declare-fun lt!471863 () Unit!20884)

(assert (=> b!1410872 (= lt!471863 call!94300)))

(declare-fun lt!471890 () Unit!20884)

(declare-fun Unit!20906 () Unit!20884)

(assert (=> b!1410872 (= lt!471890 Unit!20906)))

(assert (=> b!1410872 (= call!94309 Nil!14387)))

(declare-fun lt!471862 () Unit!20884)

(declare-fun lt!471869 () Unit!20884)

(assert (=> b!1410872 (= lt!471862 lt!471869)))

(assert (=> b!1410872 (= call!94336 call!94303)))

(assert (=> b!1410872 (= lt!471869 call!94322)))

(assert (=> b!1410872 (= lt!471917 call!94337)))

(assert (=> b!1410872 (= lt!471906 Nil!14389)))

(assert (=> b!1410872 (= lt!471904 Lexer!2185)))

(assert (=> b!1410872 (= e!900671 (Some!2756 (head!2654 objs!24)))))

(declare-fun bm!94329 () Bool)

(declare-fun printTailRec!630 (LexerInterface!2187 BalanceConc!9466 Int BalanceConc!9464) BalanceConc!9464)

(assert (=> bm!94329 (= call!94306 (printTailRec!630 Lexer!2185 (tokens!1727 (head!2654 objs!24)) 0 (BalanceConc!9465 Empty!4762)))))

(declare-fun bm!94330 () Bool)

(assert (=> bm!94330 (= call!94310 call!94321)))

(declare-fun b!1410873 () Bool)

(assert (=> b!1410873 (= e!900678 (++!3748 lt!471878 lt!471882))))

(declare-fun bm!94331 () Bool)

(assert (=> bm!94331 (= call!94332 (printList!648 (ite c!231859 Lexer!2185 (ite c!231864 lt!471904 lt!471894)) (ite c!231859 call!94305 (ite c!231864 lt!471906 lt!471878))))))

(declare-fun b!1410874 () Bool)

(assert (=> b!1410874 (= e!900673 e!900671)))

(assert (=> b!1410874 (= c!231864 (isEmpty!8787 (tokens!1727 acc!229)))))

(declare-fun bm!94332 () Bool)

(assert (=> bm!94332 (= call!94327 call!94328)))

(assert (= (and d!403323 c!231859) b!1410871))

(assert (= (and d!403323 (not c!231859)) b!1410874))

(assert (= (and b!1410871 c!231865) b!1410858))

(assert (= (and b!1410871 (not c!231865)) b!1410862))

(assert (= (and b!1410874 c!231864) b!1410872))

(assert (= (and b!1410874 (not c!231864)) b!1410866))

(assert (= (and b!1410872 c!231860) b!1410867))

(assert (= (and b!1410872 (not c!231860)) b!1410868))

(assert (= (and b!1410866 c!231861) b!1410863))

(assert (= (and b!1410866 (not c!231861)) b!1410864))

(assert (= (or b!1410872 b!1410866 b!1410863) bm!94301))

(assert (= (or b!1410872 b!1410863) bm!94321))

(assert (= (or b!1410872 b!1410863) bm!94297))

(assert (= (or b!1410872 b!1410863) bm!94320))

(assert (= (or b!1410872 b!1410863) bm!94311))

(assert (= (or b!1410867 b!1410863) bm!94332))

(assert (= (or b!1410872 b!1410863) bm!94308))

(assert (= (or b!1410872 b!1410863) bm!94330))

(assert (= (or b!1410872 b!1410863) bm!94325))

(assert (= (or b!1410872 b!1410866 b!1410863) bm!94315))

(assert (= (or b!1410872 b!1410863) bm!94312))

(assert (= (or b!1410872 b!1410863) bm!94316))

(assert (= (or b!1410872 b!1410863) bm!94298))

(assert (= (or b!1410872 b!1410863) bm!94324))

(assert (= (or b!1410872 b!1410863) bm!94302))

(assert (= (and bm!94302 c!231863) b!1410870))

(assert (= (and bm!94302 (not c!231863)) b!1410873))

(assert (= (or b!1410872 b!1410863) bm!94295))

(assert (= (or b!1410872 b!1410863) bm!94328))

(assert (= (or b!1410867 b!1410863) bm!94309))

(assert (= (and bm!94309 c!231862) b!1410861))

(assert (= (and bm!94309 (not c!231862)) b!1410860))

(assert (= (or b!1410871 bm!94316) bm!94305))

(assert (= (or b!1410871 b!1410872) bm!94329))

(assert (= (or b!1410858 b!1410861) bm!94294))

(assert (= (or b!1410871 bm!94320) bm!94313))

(assert (= (or b!1410871 bm!94332) bm!94322))

(assert (= (or b!1410871 bm!94321) bm!94310))

(assert (= (or b!1410871 bm!94312) bm!94314))

(assert (= (or b!1410871 bm!94325) bm!94304))

(assert (= (or b!1410858 bm!94298) bm!94303))

(assert (= (or b!1410871 bm!94315) bm!94319))

(assert (= (or b!1410871 bm!94301) bm!94307))

(assert (= (or b!1410871 bm!94330) bm!94318))

(assert (= (or b!1410871 bm!94297) bm!94323))

(assert (= (or b!1410871 bm!94311) bm!94317))

(assert (= (or b!1410871 bm!94324) bm!94327))

(assert (= (or b!1410871 bm!94308) bm!94331))

(assert (= (or b!1410871 bm!94302) bm!94296))

(assert (= (or b!1410871 bm!94295) bm!94300))

(assert (= (or b!1410858 b!1410861) bm!94326))

(assert (= (or b!1410871 bm!94328) bm!94306))

(assert (= (or b!1410858 bm!94309) bm!94299))

(assert (= (and d!403323 (not res!639000)) b!1410859))

(assert (= (and b!1410859 res!639001) b!1410869))

(assert (= (and b!1410869 res!638999) b!1410865))

(declare-fun m!1591029 () Bool)

(assert (=> bm!94329 m!1591029))

(declare-fun m!1591031 () Bool)

(assert (=> bm!94313 m!1591031))

(declare-fun m!1591033 () Bool)

(assert (=> bm!94317 m!1591033))

(declare-fun m!1591035 () Bool)

(assert (=> b!1410874 m!1591035))

(declare-fun m!1591037 () Bool)

(assert (=> bm!94294 m!1591037))

(declare-fun m!1591039 () Bool)

(assert (=> bm!94310 m!1591039))

(declare-fun m!1591041 () Bool)

(assert (=> bm!94305 m!1591041))

(declare-fun m!1591043 () Bool)

(assert (=> b!1410863 m!1591043))

(declare-fun m!1591045 () Bool)

(assert (=> b!1410863 m!1591045))

(declare-fun m!1591047 () Bool)

(assert (=> b!1410863 m!1591047))

(declare-fun m!1591049 () Bool)

(assert (=> b!1410863 m!1591049))

(declare-fun m!1591051 () Bool)

(assert (=> b!1410863 m!1591051))

(declare-fun m!1591053 () Bool)

(assert (=> b!1410863 m!1591053))

(declare-fun m!1591055 () Bool)

(assert (=> b!1410863 m!1591055))

(declare-fun m!1591057 () Bool)

(assert (=> b!1410863 m!1591057))

(assert (=> b!1410863 m!1591043))

(declare-fun m!1591059 () Bool)

(assert (=> b!1410863 m!1591059))

(assert (=> b!1410863 m!1591047))

(assert (=> b!1410863 m!1591049))

(assert (=> b!1410863 m!1591043))

(declare-fun m!1591061 () Bool)

(assert (=> b!1410863 m!1591061))

(assert (=> b!1410863 m!1591047))

(declare-fun m!1591063 () Bool)

(assert (=> b!1410863 m!1591063))

(declare-fun m!1591065 () Bool)

(assert (=> bm!94306 m!1591065))

(declare-fun m!1591067 () Bool)

(assert (=> bm!94322 m!1591067))

(declare-fun m!1591069 () Bool)

(assert (=> d!403323 m!1591069))

(declare-fun m!1591071 () Bool)

(assert (=> d!403323 m!1591071))

(declare-fun m!1591073 () Bool)

(assert (=> d!403323 m!1591073))

(assert (=> d!403323 m!1590765))

(declare-fun m!1591075 () Bool)

(assert (=> d!403323 m!1591075))

(declare-fun m!1591077 () Bool)

(assert (=> bm!94323 m!1591077))

(declare-fun m!1591079 () Bool)

(assert (=> b!1410865 m!1591079))

(declare-fun m!1591081 () Bool)

(assert (=> b!1410865 m!1591081))

(declare-fun m!1591083 () Bool)

(assert (=> b!1410865 m!1591083))

(declare-fun m!1591085 () Bool)

(assert (=> b!1410865 m!1591085))

(declare-fun m!1591087 () Bool)

(assert (=> b!1410865 m!1591087))

(assert (=> b!1410865 m!1591085))

(declare-fun m!1591089 () Bool)

(assert (=> b!1410865 m!1591089))

(assert (=> b!1410865 m!1590765))

(assert (=> b!1410865 m!1591083))

(assert (=> b!1410865 m!1591079))

(assert (=> b!1410865 m!1591081))

(declare-fun m!1591091 () Bool)

(assert (=> b!1410865 m!1591091))

(declare-fun m!1591093 () Bool)

(assert (=> b!1410865 m!1591093))

(assert (=> b!1410865 m!1591093))

(assert (=> b!1410865 m!1591087))

(assert (=> b!1410859 m!1591079))

(declare-fun m!1591095 () Bool)

(assert (=> bm!94327 m!1591095))

(declare-fun m!1591097 () Bool)

(assert (=> bm!94331 m!1591097))

(declare-fun m!1591099 () Bool)

(assert (=> bm!94318 m!1591099))

(assert (=> b!1410869 m!1591079))

(declare-fun m!1591101 () Bool)

(assert (=> b!1410869 m!1591101))

(declare-fun m!1591103 () Bool)

(assert (=> b!1410869 m!1591103))

(assert (=> b!1410869 m!1591101))

(declare-fun m!1591105 () Bool)

(assert (=> b!1410869 m!1591105))

(assert (=> b!1410869 m!1591103))

(declare-fun m!1591107 () Bool)

(assert (=> b!1410869 m!1591107))

(assert (=> bm!94319 m!1591101))

(assert (=> bm!94307 m!1591103))

(declare-fun m!1591109 () Bool)

(assert (=> bm!94314 m!1591109))

(declare-fun m!1591111 () Bool)

(assert (=> bm!94300 m!1591111))

(declare-fun m!1591113 () Bool)

(assert (=> bm!94296 m!1591113))

(declare-fun m!1591115 () Bool)

(assert (=> bm!94326 m!1591115))

(declare-fun m!1591117 () Bool)

(assert (=> b!1410873 m!1591117))

(declare-fun m!1591119 () Bool)

(assert (=> bm!94299 m!1591119))

(declare-fun m!1591121 () Bool)

(assert (=> b!1410866 m!1591121))

(declare-fun m!1591123 () Bool)

(assert (=> b!1410866 m!1591123))

(declare-fun m!1591125 () Bool)

(assert (=> b!1410866 m!1591125))

(declare-fun m!1591127 () Bool)

(assert (=> b!1410866 m!1591127))

(declare-fun m!1591129 () Bool)

(assert (=> b!1410866 m!1591129))

(declare-fun m!1591131 () Bool)

(assert (=> b!1410866 m!1591131))

(assert (=> b!1410866 m!1591129))

(declare-fun m!1591133 () Bool)

(assert (=> b!1410866 m!1591133))

(assert (=> b!1410866 m!1591131))

(declare-fun m!1591135 () Bool)

(assert (=> bm!94303 m!1591135))

(declare-fun m!1591137 () Bool)

(assert (=> bm!94304 m!1591137))

(assert (=> b!1410680 d!403323))

(declare-fun d!403339 () Bool)

(declare-fun lt!471923 () PrintableTokens!774)

(declare-fun head!2658 (List!14456) PrintableTokens!774)

(assert (=> d!403339 (= lt!471923 (head!2658 (list!5638 objs!24)))))

(declare-fun head!2659 (Conc!4764) PrintableTokens!774)

(assert (=> d!403339 (= lt!471923 (head!2659 (c!231806 objs!24)))))

(assert (=> d!403339 (not (isEmpty!8781 objs!24))))

(assert (=> d!403339 (= (head!2654 objs!24) lt!471923)))

(declare-fun bs!338925 () Bool)

(assert (= bs!338925 d!403339))

(assert (=> bs!338925 m!1590843))

(assert (=> bs!338925 m!1590843))

(declare-fun m!1591139 () Bool)

(assert (=> bs!338925 m!1591139))

(declare-fun m!1591141 () Bool)

(assert (=> bs!338925 m!1591141))

(assert (=> bs!338925 m!1590771))

(assert (=> b!1410680 d!403339))

(declare-fun d!403341 () Bool)

(declare-datatypes ((JsonLexer!376 0))(
  ( (JsonLexer!377) )
))
(declare-fun rules!109 (JsonLexer!376) List!14454)

(assert (=> d!403341 (= (usesJsonRules!0 sep!3) (= (rules!10991 sep!3) (rules!109 JsonLexer!377)))))

(declare-fun bs!338926 () Bool)

(assert (= bs!338926 d!403341))

(declare-fun m!1591159 () Bool)

(assert (=> bs!338926 m!1591159))

(assert (=> b!1410691 d!403341))

(declare-fun d!403347 () Bool)

(declare-fun c!231866 () Bool)

(assert (=> d!403347 (= c!231866 (is-Node!4763 (c!231805 (tokens!1727 acc!229))))))

(declare-fun e!900683 () Bool)

(assert (=> d!403347 (= (inv!18753 (c!231805 (tokens!1727 acc!229))) e!900683)))

(declare-fun b!1410887 () Bool)

(assert (=> b!1410887 (= e!900683 (inv!18763 (c!231805 (tokens!1727 acc!229))))))

(declare-fun b!1410888 () Bool)

(declare-fun e!900684 () Bool)

(assert (=> b!1410888 (= e!900683 e!900684)))

(declare-fun res!639014 () Bool)

(assert (=> b!1410888 (= res!639014 (not (is-Leaf!7208 (c!231805 (tokens!1727 acc!229)))))))

(assert (=> b!1410888 (=> res!639014 e!900684)))

(declare-fun b!1410889 () Bool)

(assert (=> b!1410889 (= e!900684 (inv!18764 (c!231805 (tokens!1727 acc!229))))))

(assert (= (and d!403347 c!231866) b!1410887))

(assert (= (and d!403347 (not c!231866)) b!1410888))

(assert (= (and b!1410888 (not res!639014)) b!1410889))

(declare-fun m!1591161 () Bool)

(assert (=> b!1410887 m!1591161))

(declare-fun m!1591163 () Bool)

(assert (=> b!1410889 m!1591163))

(assert (=> b!1410681 d!403347))

(declare-fun d!403349 () Bool)

(assert (=> d!403349 (= (usesJsonRules!0 (v!21770 lt!471513)) (= (rules!10991 (v!21770 lt!471513)) (rules!109 JsonLexer!377)))))

(declare-fun bs!338927 () Bool)

(assert (= bs!338927 d!403349))

(assert (=> bs!338927 m!1591159))

(assert (=> b!1410682 d!403349))

(declare-fun d!403351 () Bool)

(declare-fun isBalanced!1407 (Conc!4763) Bool)

(assert (=> d!403351 (= (inv!18754 (tokens!1727 sep!3)) (isBalanced!1407 (c!231805 (tokens!1727 sep!3))))))

(declare-fun bs!338928 () Bool)

(assert (= bs!338928 d!403351))

(declare-fun m!1591165 () Bool)

(assert (=> bs!338928 m!1591165))

(assert (=> b!1410683 d!403351))

(declare-fun d!403353 () Bool)

(declare-fun lt!471926 () Bool)

(declare-fun isEmpty!8788 (List!14456) Bool)

(assert (=> d!403353 (= lt!471926 (isEmpty!8788 (list!5638 objs!24)))))

(declare-fun isEmpty!8789 (Conc!4764) Bool)

(assert (=> d!403353 (= lt!471926 (isEmpty!8789 (c!231806 objs!24)))))

(assert (=> d!403353 (= (isEmpty!8781 objs!24) lt!471926)))

(declare-fun bs!338929 () Bool)

(assert (= bs!338929 d!403353))

(assert (=> bs!338929 m!1590843))

(assert (=> bs!338929 m!1590843))

(declare-fun m!1591167 () Bool)

(assert (=> bs!338929 m!1591167))

(declare-fun m!1591169 () Bool)

(assert (=> bs!338929 m!1591169))

(assert (=> b!1410684 d!403353))

(declare-fun d!403355 () Bool)

(assert (=> d!403355 (= (usesJsonRules!0 acc!229) (= (rules!10991 acc!229) (rules!109 JsonLexer!377)))))

(declare-fun bs!338930 () Bool)

(assert (= bs!338930 d!403355))

(assert (=> bs!338930 m!1591159))

(assert (=> b!1410685 d!403355))

(declare-fun d!403357 () Bool)

(assert (=> d!403357 (= (inv!18754 (tokens!1727 acc!229)) (isBalanced!1407 (c!231805 (tokens!1727 acc!229))))))

(declare-fun bs!338932 () Bool)

(assert (= bs!338932 d!403357))

(declare-fun m!1591173 () Bool)

(assert (=> bs!338932 m!1591173))

(assert (=> b!1410686 d!403357))

(declare-fun tp!400460 () Bool)

(declare-fun tp!400461 () Bool)

(declare-fun e!900689 () Bool)

(declare-fun b!1410898 () Bool)

(assert (=> b!1410898 (= e!900689 (and (inv!18753 (left!12289 (c!231805 (tokens!1727 acc!229)))) tp!400461 (inv!18753 (right!12619 (c!231805 (tokens!1727 acc!229)))) tp!400460))))

(declare-fun b!1410900 () Bool)

(declare-fun e!900690 () Bool)

(declare-fun tp!400459 () Bool)

(assert (=> b!1410900 (= e!900690 tp!400459)))

(declare-fun b!1410899 () Bool)

(declare-fun inv!18767 (IArray!9531) Bool)

(assert (=> b!1410899 (= e!900689 (and (inv!18767 (xs!7490 (c!231805 (tokens!1727 acc!229)))) e!900690))))

(assert (=> b!1410681 (= tp!400435 (and (inv!18753 (c!231805 (tokens!1727 acc!229))) e!900689))))

(assert (= (and b!1410681 (is-Node!4763 (c!231805 (tokens!1727 acc!229)))) b!1410898))

(assert (= b!1410899 b!1410900))

(assert (= (and b!1410681 (is-Leaf!7208 (c!231805 (tokens!1727 acc!229)))) b!1410899))

(declare-fun m!1591175 () Bool)

(assert (=> b!1410898 m!1591175))

(declare-fun m!1591177 () Bool)

(assert (=> b!1410898 m!1591177))

(declare-fun m!1591179 () Bool)

(assert (=> b!1410899 m!1591179))

(assert (=> b!1410681 m!1590761))

(declare-fun e!900691 () Bool)

(declare-fun tp!400464 () Bool)

(declare-fun tp!400463 () Bool)

(declare-fun b!1410901 () Bool)

(assert (=> b!1410901 (= e!900691 (and (inv!18753 (left!12289 (c!231805 (tokens!1727 sep!3)))) tp!400464 (inv!18753 (right!12619 (c!231805 (tokens!1727 sep!3)))) tp!400463))))

(declare-fun b!1410903 () Bool)

(declare-fun e!900692 () Bool)

(declare-fun tp!400462 () Bool)

(assert (=> b!1410903 (= e!900692 tp!400462)))

(declare-fun b!1410902 () Bool)

(assert (=> b!1410902 (= e!900691 (and (inv!18767 (xs!7490 (c!231805 (tokens!1727 sep!3)))) e!900692))))

(assert (=> b!1410688 (= tp!400434 (and (inv!18753 (c!231805 (tokens!1727 sep!3))) e!900691))))

(assert (= (and b!1410688 (is-Node!4763 (c!231805 (tokens!1727 sep!3)))) b!1410901))

(assert (= b!1410902 b!1410903))

(assert (= (and b!1410688 (is-Leaf!7208 (c!231805 (tokens!1727 sep!3)))) b!1410902))

(declare-fun m!1591181 () Bool)

(assert (=> b!1410901 m!1591181))

(declare-fun m!1591183 () Bool)

(assert (=> b!1410901 m!1591183))

(declare-fun m!1591185 () Bool)

(assert (=> b!1410902 m!1591185))

(assert (=> b!1410688 m!1590763))

(declare-fun b!1410920 () Bool)

(declare-fun b_free!34575 () Bool)

(declare-fun b_next!35279 () Bool)

(assert (=> b!1410920 (= b_free!34575 (not b_next!35279))))

(declare-fun tp!400472 () Bool)

(declare-fun b_and!94503 () Bool)

(assert (=> b!1410920 (= tp!400472 b_and!94503)))

(declare-fun b_free!34577 () Bool)

(declare-fun b_next!35281 () Bool)

(assert (=> b!1410920 (= b_free!34577 (not b_next!35281))))

(declare-fun tp!400473 () Bool)

(declare-fun b_and!94505 () Bool)

(assert (=> b!1410920 (= tp!400473 b_and!94505)))

(declare-fun e!900706 () Bool)

(assert (=> b!1410920 (= e!900706 (and tp!400472 tp!400473))))

(declare-fun b!1410919 () Bool)

(declare-fun e!900705 () Bool)

(declare-fun inv!18750 (String!17168) Bool)

(declare-fun inv!18770 (TokenValueInjection!4832) Bool)

(assert (=> b!1410919 (= e!900705 (and (inv!18750 (tag!2758 (h!19789 (rules!10991 sep!3)))) (inv!18770 (transformation!2496 (h!19789 (rules!10991 sep!3)))) e!900706))))

(declare-fun b!1410918 () Bool)

(declare-fun e!900707 () Bool)

(declare-fun tp!400471 () Bool)

(assert (=> b!1410918 (= e!900707 (and e!900705 tp!400471))))

(assert (=> b!1410683 (= tp!400436 e!900707)))

(assert (= b!1410919 b!1410920))

(assert (= b!1410918 b!1410919))

(assert (= (and b!1410683 (is-Cons!14388 (rules!10991 sep!3))) b!1410918))

(declare-fun m!1591191 () Bool)

(assert (=> b!1410919 m!1591191))

(declare-fun m!1591193 () Bool)

(assert (=> b!1410919 m!1591193))

(declare-fun tp!400481 () Bool)

(declare-fun e!900716 () Bool)

(declare-fun b!1410932 () Bool)

(declare-fun tp!400482 () Bool)

(assert (=> b!1410932 (= e!900716 (and (inv!18757 (left!12290 (c!231806 objs!24))) tp!400481 (inv!18757 (right!12620 (c!231806 objs!24))) tp!400482))))

(declare-fun b!1410934 () Bool)

(declare-fun e!900715 () Bool)

(declare-fun tp!400480 () Bool)

(assert (=> b!1410934 (= e!900715 tp!400480)))

(declare-fun b!1410933 () Bool)

(declare-fun inv!18771 (IArray!9533) Bool)

(assert (=> b!1410933 (= e!900716 (and (inv!18771 (xs!7491 (c!231806 objs!24))) e!900715))))

(assert (=> b!1410690 (= tp!400437 (and (inv!18757 (c!231806 objs!24)) e!900716))))

(assert (= (and b!1410690 (is-Node!4764 (c!231806 objs!24))) b!1410932))

(assert (= b!1410933 b!1410934))

(assert (= (and b!1410690 (is-Leaf!7209 (c!231806 objs!24))) b!1410933))

(declare-fun m!1591199 () Bool)

(assert (=> b!1410932 m!1591199))

(declare-fun m!1591201 () Bool)

(assert (=> b!1410932 m!1591201))

(declare-fun m!1591203 () Bool)

(assert (=> b!1410933 m!1591203))

(assert (=> b!1410690 m!1590775))

(declare-fun b!1410937 () Bool)

(declare-fun b_free!34579 () Bool)

(declare-fun b_next!35283 () Bool)

(assert (=> b!1410937 (= b_free!34579 (not b_next!35283))))

(declare-fun tp!400484 () Bool)

(declare-fun b_and!94507 () Bool)

(assert (=> b!1410937 (= tp!400484 b_and!94507)))

(declare-fun b_free!34581 () Bool)

(declare-fun b_next!35285 () Bool)

(assert (=> b!1410937 (= b_free!34581 (not b_next!35285))))

(declare-fun tp!400485 () Bool)

(declare-fun b_and!94509 () Bool)

(assert (=> b!1410937 (= tp!400485 b_and!94509)))

(declare-fun e!900718 () Bool)

(assert (=> b!1410937 (= e!900718 (and tp!400484 tp!400485))))

(declare-fun b!1410936 () Bool)

(declare-fun e!900717 () Bool)

(assert (=> b!1410936 (= e!900717 (and (inv!18750 (tag!2758 (h!19789 (rules!10991 acc!229)))) (inv!18770 (transformation!2496 (h!19789 (rules!10991 acc!229)))) e!900718))))

(declare-fun b!1410935 () Bool)

(declare-fun e!900719 () Bool)

(declare-fun tp!400483 () Bool)

(assert (=> b!1410935 (= e!900719 (and e!900717 tp!400483))))

(assert (=> b!1410686 (= tp!400433 e!900719)))

(assert (= b!1410936 b!1410937))

(assert (= b!1410935 b!1410936))

(assert (= (and b!1410686 (is-Cons!14388 (rules!10991 acc!229))) b!1410935))

(declare-fun m!1591205 () Bool)

(assert (=> b!1410936 m!1591205))

(declare-fun m!1591207 () Bool)

(assert (=> b!1410936 m!1591207))

(push 1)

(assert (not b!1410874))

(assert (not bm!94323))

(assert (not d!403351))

(assert (not bm!94326))

(assert (not b!1410859))

(assert (not b!1410932))

(assert b_and!94509)

(assert (not b!1410898))

(assert (not b!1410899))

(assert (not d!403299))

(assert (not bm!94294))

(assert (not bm!94331))

(assert (not bm!94299))

(assert (not b!1410918))

(assert (not d!403315))

(assert (not bm!94300))

(assert (not d!403317))

(assert (not b_next!35279))

(assert (not b!1410755))

(assert (not b!1410934))

(assert b_and!94503)

(assert (not d!403319))

(assert (not d!403355))

(assert (not bm!94303))

(assert (not bm!94307))

(assert (not b!1410746))

(assert (not bm!94296))

(assert (not b!1410748))

(assert (not bm!94314))

(assert (not bm!94317))

(assert (not b_next!35283))

(assert (not b!1410758))

(assert (not b!1410865))

(assert (not bm!94310))

(assert (not b_next!35281))

(assert (not b!1410688))

(assert (not b!1410919))

(assert (not b!1410935))

(assert b_and!94505)

(assert (not d!403311))

(assert (not bm!94329))

(assert (not d!403323))

(assert b_and!94507)

(assert (not b!1410863))

(assert (not b!1410901))

(assert (not d!403353))

(assert (not bm!94306))

(assert (not bm!94327))

(assert (not d!403301))

(assert (not b!1410690))

(assert (not b_next!35285))

(assert (not b!1410757))

(assert (not b!1410903))

(assert (not b!1410902))

(assert (not bm!94322))

(assert (not d!403349))

(assert (not b!1410737))

(assert (not b!1410759))

(assert (not b!1410866))

(assert (not b!1410936))

(assert (not b!1410681))

(assert (not d!403341))

(assert (not b!1410869))

(assert (not b!1410889))

(assert (not b!1410900))

(assert (not d!403357))

(assert (not b!1410887))

(assert (not d!403339))

(assert (not bm!94304))

(assert (not bm!94313))

(assert (not bm!94305))

(assert (not b!1410760))

(assert (not b!1410933))

(assert (not d!403321))

(assert (not bm!94318))

(assert (not b!1410873))

(assert (not bm!94319))

(assert (not b!1410756))

(assert (not b!1410730))

(assert (not b!1410739))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35279))

(assert b_and!94503)

(assert (not b_next!35283))

(assert (not b_next!35281))

(assert b_and!94505)

(assert b_and!94507)

(assert (not b_next!35285))

(assert b_and!94509)

(check-sat)

(pop 1)

