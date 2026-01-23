; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!518210 () Bool)

(assert start!518210)

(declare-fun b!4932766 () Bool)

(declare-fun e!3081976 () Bool)

(declare-datatypes ((C!27058 0))(
  ( (C!27059 (val!22863 Int)) )
))
(declare-datatypes ((List!56918 0))(
  ( (Nil!56794) (Cons!56794 (h!63242 C!27058) (t!367398 List!56918)) )
))
(declare-fun testedSuffix!70 () List!56918)

(assert (=> b!4932766 (= e!3081976 (not (= testedSuffix!70 Nil!56794)))))

(declare-fun testedP!110 () List!56918)

(declare-fun lt!2031128 () List!56918)

(declare-fun lt!2031127 () List!56918)

(declare-fun isPrefix!5012 (List!56918 List!56918) Bool)

(declare-fun ++!12379 (List!56918 List!56918) List!56918)

(declare-fun head!10551 (List!56918) C!27058)

(assert (=> b!4932766 (isPrefix!5012 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794)) lt!2031127)))

(declare-datatypes ((Unit!147441 0))(
  ( (Unit!147442) )
))
(declare-fun lt!2031135 () Unit!147441)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!782 (List!56918 List!56918) Unit!147441)

(assert (=> b!4932766 (= lt!2031135 (lemmaAddHeadSuffixToPrefixStillPrefix!782 testedP!110 lt!2031127))))

(declare-fun b!4932767 () Bool)

(declare-fun e!3081980 () Bool)

(declare-fun tp!1384836 () Bool)

(assert (=> b!4932767 (= e!3081980 tp!1384836)))

(declare-fun res!2105180 () Bool)

(declare-fun e!3081977 () Bool)

(assert (=> start!518210 (=> (not res!2105180) (not e!3081977))))

(declare-fun lt!2031123 () List!56918)

(assert (=> start!518210 (= res!2105180 (= lt!2031123 lt!2031127))))

(declare-datatypes ((IArray!29907 0))(
  ( (IArray!29908 (innerList!15011 List!56918)) )
))
(declare-datatypes ((Conc!14923 0))(
  ( (Node!14923 (left!41419 Conc!14923) (right!41749 Conc!14923) (csize!30076 Int) (cheight!15134 Int)) (Leaf!24818 (xs!18247 IArray!29907) (csize!30077 Int)) (Empty!14923) )
))
(declare-datatypes ((BalanceConc!29276 0))(
  ( (BalanceConc!29277 (c!840642 Conc!14923)) )
))
(declare-fun totalInput!685 () BalanceConc!29276)

(declare-fun list!18027 (BalanceConc!29276) List!56918)

(assert (=> start!518210 (= lt!2031127 (list!18027 totalInput!685))))

(assert (=> start!518210 (= lt!2031123 (++!12379 testedP!110 testedSuffix!70))))

(assert (=> start!518210 e!3081977))

(declare-fun e!3081973 () Bool)

(assert (=> start!518210 e!3081973))

(declare-fun condSetEmpty!27713 () Bool)

(declare-datatypes ((Regex!13414 0))(
  ( (ElementMatch!13414 (c!840643 C!27058)) (Concat!21987 (regOne!27340 Regex!13414) (regTwo!27340 Regex!13414)) (EmptyExpr!13414) (Star!13414 (reg!13743 Regex!13414)) (EmptyLang!13414) (Union!13414 (regOne!27341 Regex!13414) (regTwo!27341 Regex!13414)) )
))
(declare-datatypes ((List!56919 0))(
  ( (Nil!56795) (Cons!56795 (h!63243 Regex!13414) (t!367399 List!56919)) )
))
(declare-datatypes ((Context!6112 0))(
  ( (Context!6113 (exprs!3556 List!56919)) )
))
(declare-fun z!3568 () (Set Context!6112))

(assert (=> start!518210 (= condSetEmpty!27713 (= z!3568 (as set.empty (Set Context!6112))))))

(declare-fun setRes!27713 () Bool)

(assert (=> start!518210 setRes!27713))

(assert (=> start!518210 true))

(declare-fun e!3081974 () Bool)

(declare-fun inv!73752 (BalanceConc!29276) Bool)

(assert (=> start!518210 (and (inv!73752 totalInput!685) e!3081974)))

(declare-fun e!3081969 () Bool)

(assert (=> start!518210 e!3081969))

(declare-fun b!4932768 () Bool)

(declare-fun tp_is_empty!36005 () Bool)

(declare-fun tp!1384837 () Bool)

(assert (=> b!4932768 (= e!3081973 (and tp_is_empty!36005 tp!1384837))))

(declare-fun b!4932769 () Bool)

(declare-fun e!3081971 () Bool)

(declare-fun e!3081970 () Bool)

(assert (=> b!4932769 (= e!3081971 e!3081970)))

(declare-fun res!2105176 () Bool)

(assert (=> b!4932769 (=> res!2105176 e!3081970)))

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13705 (BalanceConc!29276 Int) C!27058)

(assert (=> b!4932769 (= res!2105176 (not (= (apply!13705 totalInput!685 testedPSize!70) (head!10551 testedSuffix!70))))))

(declare-fun drop!2245 (List!56918 Int) List!56918)

(declare-fun apply!13706 (List!56918 Int) C!27058)

(assert (=> b!4932769 (= (head!10551 (drop!2245 lt!2031127 testedPSize!70)) (apply!13706 lt!2031127 testedPSize!70))))

(declare-fun lt!2031132 () Unit!147441)

(declare-fun lemmaDropApply!1303 (List!56918 Int) Unit!147441)

(assert (=> b!4932769 (= lt!2031132 (lemmaDropApply!1303 lt!2031127 testedPSize!70))))

(declare-fun lt!2031129 () List!56918)

(declare-fun lt!2031138 () List!56918)

(assert (=> b!4932769 (not (or (not (= lt!2031129 testedP!110)) (not (= lt!2031138 testedSuffix!70))))))

(declare-fun lt!2031124 () Unit!147441)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!680 (List!56918 List!56918 List!56918 List!56918) Unit!147441)

(assert (=> b!4932769 (= lt!2031124 (lemmaConcatSameAndSameSizesThenSameLists!680 lt!2031129 lt!2031138 testedP!110 testedSuffix!70))))

(declare-fun b!4932770 () Bool)

(declare-fun e!3081981 () Bool)

(declare-fun e!3081972 () Bool)

(assert (=> b!4932770 (= e!3081981 e!3081972)))

(declare-fun res!2105175 () Bool)

(assert (=> b!4932770 (=> (not res!2105175) (not e!3081972))))

(declare-fun totalInputSize!132 () Int)

(declare-fun lt!2031133 () Int)

(assert (=> b!4932770 (= res!2105175 (= totalInputSize!132 lt!2031133))))

(declare-fun size!37604 (BalanceConc!29276) Int)

(assert (=> b!4932770 (= lt!2031133 (size!37604 totalInput!685))))

(declare-fun b!4932771 () Bool)

(declare-fun e!3081978 () Unit!147441)

(declare-fun Unit!147443 () Unit!147441)

(assert (=> b!4932771 (= e!3081978 Unit!147443)))

(declare-fun lt!2031126 () Unit!147441)

(declare-fun lemmaIsPrefixRefl!3378 (List!56918 List!56918) Unit!147441)

(assert (=> b!4932771 (= lt!2031126 (lemmaIsPrefixRefl!3378 lt!2031127 lt!2031127))))

(assert (=> b!4932771 (isPrefix!5012 lt!2031127 lt!2031127)))

(declare-fun lt!2031131 () Unit!147441)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1136 (List!56918 List!56918 List!56918) Unit!147441)

(assert (=> b!4932771 (= lt!2031131 (lemmaIsPrefixSameLengthThenSameList!1136 lt!2031127 testedP!110 lt!2031127))))

(assert (=> b!4932771 false))

(declare-fun b!4932772 () Bool)

(declare-fun e!3081979 () Bool)

(declare-fun e!3081975 () Bool)

(assert (=> b!4932772 (= e!3081979 e!3081975)))

(declare-fun res!2105183 () Bool)

(assert (=> b!4932772 (=> res!2105183 e!3081975)))

(declare-fun lostCauseZipper!732 ((Set Context!6112)) Bool)

(assert (=> b!4932772 (= res!2105183 (lostCauseZipper!732 z!3568))))

(assert (=> b!4932772 (and (= testedSuffix!70 lt!2031128) (= lt!2031128 testedSuffix!70))))

(declare-fun lt!2031136 () Unit!147441)

(declare-fun lemmaSamePrefixThenSameSuffix!2410 (List!56918 List!56918 List!56918 List!56918 List!56918) Unit!147441)

(assert (=> b!4932772 (= lt!2031136 (lemmaSamePrefixThenSameSuffix!2410 testedP!110 testedSuffix!70 testedP!110 lt!2031128 lt!2031127))))

(declare-fun getSuffix!2996 (List!56918 List!56918) List!56918)

(assert (=> b!4932772 (= lt!2031128 (getSuffix!2996 lt!2031127 testedP!110))))

(declare-fun b!4932773 () Bool)

(assert (=> b!4932773 (= e!3081975 e!3081971)))

(declare-fun res!2105184 () Bool)

(assert (=> b!4932773 (=> res!2105184 e!3081971)))

(assert (=> b!4932773 (= res!2105184 (not (= (++!12379 lt!2031129 lt!2031138) lt!2031127)))))

(declare-datatypes ((tuple2!61272 0))(
  ( (tuple2!61273 (_1!33939 BalanceConc!29276) (_2!33939 BalanceConc!29276)) )
))
(declare-fun lt!2031130 () tuple2!61272)

(assert (=> b!4932773 (= lt!2031138 (list!18027 (_2!33939 lt!2031130)))))

(assert (=> b!4932773 (= lt!2031129 (list!18027 (_1!33939 lt!2031130)))))

(declare-fun splitAt!308 (BalanceConc!29276 Int) tuple2!61272)

(assert (=> b!4932773 (= lt!2031130 (splitAt!308 totalInput!685 testedPSize!70))))

(declare-fun b!4932774 () Bool)

(assert (=> b!4932774 (= e!3081970 e!3081976)))

(declare-fun res!2105178 () Bool)

(assert (=> b!4932774 (=> res!2105178 e!3081976)))

(declare-fun lt!2031134 () Int)

(assert (=> b!4932774 (= res!2105178 (>= lt!2031134 lt!2031133))))

(declare-fun lt!2031122 () Unit!147441)

(assert (=> b!4932774 (= lt!2031122 e!3081978)))

(declare-fun c!840641 () Bool)

(assert (=> b!4932774 (= c!840641 (= lt!2031134 lt!2031133))))

(declare-fun size!37605 (List!56918) Int)

(assert (=> b!4932774 (<= lt!2031134 (size!37605 lt!2031127))))

(declare-fun lt!2031125 () Unit!147441)

(declare-fun lemmaIsPrefixThenSmallerEqSize!700 (List!56918 List!56918) Unit!147441)

(assert (=> b!4932774 (= lt!2031125 (lemmaIsPrefixThenSmallerEqSize!700 testedP!110 lt!2031127))))

(declare-fun b!4932775 () Bool)

(assert (=> b!4932775 (= e!3081977 e!3081981)))

(declare-fun res!2105179 () Bool)

(assert (=> b!4932775 (=> (not res!2105179) (not e!3081981))))

(assert (=> b!4932775 (= res!2105179 (= testedPSize!70 lt!2031134))))

(assert (=> b!4932775 (= lt!2031134 (size!37605 testedP!110))))

(declare-fun setNonEmpty!27713 () Bool)

(declare-fun tp!1384834 () Bool)

(declare-fun setElem!27713 () Context!6112)

(declare-fun inv!73753 (Context!6112) Bool)

(assert (=> setNonEmpty!27713 (= setRes!27713 (and tp!1384834 (inv!73753 setElem!27713) e!3081980))))

(declare-fun setRest!27713 () (Set Context!6112))

(assert (=> setNonEmpty!27713 (= z!3568 (set.union (set.insert setElem!27713 (as set.empty (Set Context!6112))) setRest!27713))))

(declare-fun b!4932776 () Bool)

(declare-fun tp!1384838 () Bool)

(declare-fun inv!73754 (Conc!14923) Bool)

(assert (=> b!4932776 (= e!3081974 (and (inv!73754 (c!840642 totalInput!685)) tp!1384838))))

(declare-fun b!4932777 () Bool)

(declare-fun res!2105181 () Bool)

(assert (=> b!4932777 (=> res!2105181 e!3081971)))

(assert (=> b!4932777 (= res!2105181 (not (= (size!37604 (_1!33939 lt!2031130)) testedPSize!70)))))

(declare-fun b!4932778 () Bool)

(declare-fun tp!1384835 () Bool)

(assert (=> b!4932778 (= e!3081969 (and tp_is_empty!36005 tp!1384835))))

(declare-fun setIsEmpty!27713 () Bool)

(assert (=> setIsEmpty!27713 setRes!27713))

(declare-fun b!4932779 () Bool)

(declare-fun res!2105182 () Bool)

(assert (=> b!4932779 (=> res!2105182 e!3081975)))

(assert (=> b!4932779 (= res!2105182 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4932780 () Bool)

(declare-fun Unit!147444 () Unit!147441)

(assert (=> b!4932780 (= e!3081978 Unit!147444)))

(declare-fun b!4932781 () Bool)

(assert (=> b!4932781 (= e!3081972 (not e!3081979))))

(declare-fun res!2105177 () Bool)

(assert (=> b!4932781 (=> res!2105177 e!3081979)))

(assert (=> b!4932781 (= res!2105177 (not (isPrefix!5012 testedP!110 lt!2031127)))))

(assert (=> b!4932781 (isPrefix!5012 testedP!110 lt!2031123)))

(declare-fun lt!2031137 () Unit!147441)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3236 (List!56918 List!56918) Unit!147441)

(assert (=> b!4932781 (= lt!2031137 (lemmaConcatTwoListThenFirstIsPrefix!3236 testedP!110 testedSuffix!70))))

(assert (= (and start!518210 res!2105180) b!4932775))

(assert (= (and b!4932775 res!2105179) b!4932770))

(assert (= (and b!4932770 res!2105175) b!4932781))

(assert (= (and b!4932781 (not res!2105177)) b!4932772))

(assert (= (and b!4932772 (not res!2105183)) b!4932779))

(assert (= (and b!4932779 (not res!2105182)) b!4932773))

(assert (= (and b!4932773 (not res!2105184)) b!4932777))

(assert (= (and b!4932777 (not res!2105181)) b!4932769))

(assert (= (and b!4932769 (not res!2105176)) b!4932774))

(assert (= (and b!4932774 c!840641) b!4932771))

(assert (= (and b!4932774 (not c!840641)) b!4932780))

(assert (= (and b!4932774 (not res!2105178)) b!4932766))

(assert (= (and start!518210 (is-Cons!56794 testedP!110)) b!4932768))

(assert (= (and start!518210 condSetEmpty!27713) setIsEmpty!27713))

(assert (= (and start!518210 (not condSetEmpty!27713)) setNonEmpty!27713))

(assert (= setNonEmpty!27713 b!4932767))

(assert (= start!518210 b!4932776))

(assert (= (and start!518210 (is-Cons!56794 testedSuffix!70)) b!4932778))

(declare-fun m!5953048 () Bool)

(assert (=> b!4932774 m!5953048))

(declare-fun m!5953050 () Bool)

(assert (=> b!4932774 m!5953050))

(declare-fun m!5953052 () Bool)

(assert (=> b!4932773 m!5953052))

(declare-fun m!5953054 () Bool)

(assert (=> b!4932773 m!5953054))

(declare-fun m!5953056 () Bool)

(assert (=> b!4932773 m!5953056))

(declare-fun m!5953058 () Bool)

(assert (=> b!4932773 m!5953058))

(declare-fun m!5953060 () Bool)

(assert (=> b!4932777 m!5953060))

(declare-fun m!5953062 () Bool)

(assert (=> b!4932781 m!5953062))

(declare-fun m!5953064 () Bool)

(assert (=> b!4932781 m!5953064))

(declare-fun m!5953066 () Bool)

(assert (=> b!4932781 m!5953066))

(declare-fun m!5953068 () Bool)

(assert (=> b!4932772 m!5953068))

(declare-fun m!5953070 () Bool)

(assert (=> b!4932772 m!5953070))

(declare-fun m!5953072 () Bool)

(assert (=> b!4932772 m!5953072))

(declare-fun m!5953074 () Bool)

(assert (=> b!4932775 m!5953074))

(declare-fun m!5953076 () Bool)

(assert (=> setNonEmpty!27713 m!5953076))

(declare-fun m!5953078 () Bool)

(assert (=> b!4932769 m!5953078))

(declare-fun m!5953080 () Bool)

(assert (=> b!4932769 m!5953080))

(declare-fun m!5953082 () Bool)

(assert (=> b!4932769 m!5953082))

(declare-fun m!5953084 () Bool)

(assert (=> b!4932769 m!5953084))

(declare-fun m!5953086 () Bool)

(assert (=> b!4932769 m!5953086))

(assert (=> b!4932769 m!5953078))

(declare-fun m!5953088 () Bool)

(assert (=> b!4932769 m!5953088))

(declare-fun m!5953090 () Bool)

(assert (=> b!4932769 m!5953090))

(declare-fun m!5953092 () Bool)

(assert (=> b!4932771 m!5953092))

(declare-fun m!5953094 () Bool)

(assert (=> b!4932771 m!5953094))

(declare-fun m!5953096 () Bool)

(assert (=> b!4932771 m!5953096))

(declare-fun m!5953098 () Bool)

(assert (=> b!4932766 m!5953098))

(declare-fun m!5953100 () Bool)

(assert (=> b!4932766 m!5953100))

(assert (=> b!4932766 m!5953100))

(declare-fun m!5953102 () Bool)

(assert (=> b!4932766 m!5953102))

(declare-fun m!5953104 () Bool)

(assert (=> b!4932766 m!5953104))

(declare-fun m!5953106 () Bool)

(assert (=> start!518210 m!5953106))

(declare-fun m!5953108 () Bool)

(assert (=> start!518210 m!5953108))

(declare-fun m!5953110 () Bool)

(assert (=> start!518210 m!5953110))

(declare-fun m!5953112 () Bool)

(assert (=> b!4932776 m!5953112))

(declare-fun m!5953114 () Bool)

(assert (=> b!4932770 m!5953114))

(push 1)

(assert (not b!4932772))

(assert (not setNonEmpty!27713))

(assert (not start!518210))

(assert (not b!4932768))

(assert (not b!4932773))

(assert tp_is_empty!36005)

(assert (not b!4932778))

(assert (not b!4932775))

(assert (not b!4932767))

(assert (not b!4932777))

(assert (not b!4932774))

(assert (not b!4932766))

(assert (not b!4932769))

(assert (not b!4932776))

(assert (not b!4932770))

(assert (not b!4932781))

(assert (not b!4932771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1587795 () Bool)

(declare-fun lt!2031192 () Int)

(assert (=> d!1587795 (= lt!2031192 (size!37605 (list!18027 totalInput!685)))))

(declare-fun size!37608 (Conc!14923) Int)

(assert (=> d!1587795 (= lt!2031192 (size!37608 (c!840642 totalInput!685)))))

(assert (=> d!1587795 (= (size!37604 totalInput!685) lt!2031192)))

(declare-fun bs!1180431 () Bool)

(assert (= bs!1180431 d!1587795))

(assert (=> bs!1180431 m!5953106))

(assert (=> bs!1180431 m!5953106))

(declare-fun m!5953184 () Bool)

(assert (=> bs!1180431 m!5953184))

(declare-fun m!5953186 () Bool)

(assert (=> bs!1180431 m!5953186))

(assert (=> b!4932770 d!1587795))

(declare-fun d!1587797 () Bool)

(assert (=> d!1587797 (= (head!10551 (drop!2245 lt!2031127 testedPSize!70)) (h!63242 (drop!2245 lt!2031127 testedPSize!70)))))

(assert (=> b!4932769 d!1587797))

(declare-fun d!1587799 () Bool)

(assert (=> d!1587799 (= (head!10551 testedSuffix!70) (h!63242 testedSuffix!70))))

(assert (=> b!4932769 d!1587799))

(declare-fun d!1587801 () Bool)

(assert (=> d!1587801 (and (= lt!2031129 testedP!110) (= lt!2031138 testedSuffix!70))))

(declare-fun lt!2031195 () Unit!147441)

(declare-fun choose!36171 (List!56918 List!56918 List!56918 List!56918) Unit!147441)

(assert (=> d!1587801 (= lt!2031195 (choose!36171 lt!2031129 lt!2031138 testedP!110 testedSuffix!70))))

(assert (=> d!1587801 (= (++!12379 lt!2031129 lt!2031138) (++!12379 testedP!110 testedSuffix!70))))

(assert (=> d!1587801 (= (lemmaConcatSameAndSameSizesThenSameLists!680 lt!2031129 lt!2031138 testedP!110 testedSuffix!70) lt!2031195)))

(declare-fun bs!1180432 () Bool)

(assert (= bs!1180432 d!1587801))

(declare-fun m!5953188 () Bool)

(assert (=> bs!1180432 m!5953188))

(assert (=> bs!1180432 m!5953052))

(assert (=> bs!1180432 m!5953108))

(assert (=> b!4932769 d!1587801))

(declare-fun d!1587803 () Bool)

(declare-fun lt!2031198 () C!27058)

(declare-fun contains!19466 (List!56918 C!27058) Bool)

(assert (=> d!1587803 (contains!19466 lt!2031127 lt!2031198)))

(declare-fun e!3082026 () C!27058)

(assert (=> d!1587803 (= lt!2031198 e!3082026)))

(declare-fun c!840651 () Bool)

(assert (=> d!1587803 (= c!840651 (= testedPSize!70 0))))

(declare-fun e!3082025 () Bool)

(assert (=> d!1587803 e!3082025))

(declare-fun res!2105217 () Bool)

(assert (=> d!1587803 (=> (not res!2105217) (not e!3082025))))

(assert (=> d!1587803 (= res!2105217 (<= 0 testedPSize!70))))

(assert (=> d!1587803 (= (apply!13706 lt!2031127 testedPSize!70) lt!2031198)))

(declare-fun b!4932836 () Bool)

(assert (=> b!4932836 (= e!3082025 (< testedPSize!70 (size!37605 lt!2031127)))))

(declare-fun b!4932837 () Bool)

(assert (=> b!4932837 (= e!3082026 (head!10551 lt!2031127))))

(declare-fun b!4932838 () Bool)

(declare-fun tail!9690 (List!56918) List!56918)

(assert (=> b!4932838 (= e!3082026 (apply!13706 (tail!9690 lt!2031127) (- testedPSize!70 1)))))

(assert (= (and d!1587803 res!2105217) b!4932836))

(assert (= (and d!1587803 c!840651) b!4932837))

(assert (= (and d!1587803 (not c!840651)) b!4932838))

(declare-fun m!5953190 () Bool)

(assert (=> d!1587803 m!5953190))

(assert (=> b!4932836 m!5953048))

(declare-fun m!5953192 () Bool)

(assert (=> b!4932837 m!5953192))

(declare-fun m!5953194 () Bool)

(assert (=> b!4932838 m!5953194))

(assert (=> b!4932838 m!5953194))

(declare-fun m!5953196 () Bool)

(assert (=> b!4932838 m!5953196))

(assert (=> b!4932769 d!1587803))

(declare-fun b!4932857 () Bool)

(declare-fun e!3082039 () Int)

(declare-fun e!3082040 () Int)

(assert (=> b!4932857 (= e!3082039 e!3082040)))

(declare-fun c!840662 () Bool)

(declare-fun call!344205 () Int)

(assert (=> b!4932857 (= c!840662 (>= testedPSize!70 call!344205))))

(declare-fun b!4932858 () Bool)

(declare-fun e!3082037 () Bool)

(declare-fun lt!2031201 () List!56918)

(assert (=> b!4932858 (= e!3082037 (= (size!37605 lt!2031201) e!3082039))))

(declare-fun c!840663 () Bool)

(assert (=> b!4932858 (= c!840663 (<= testedPSize!70 0))))

(declare-fun b!4932859 () Bool)

(assert (=> b!4932859 (= e!3082040 0)))

(declare-fun b!4932860 () Bool)

(assert (=> b!4932860 (= e!3082039 call!344205)))

(declare-fun b!4932861 () Bool)

(declare-fun e!3082038 () List!56918)

(assert (=> b!4932861 (= e!3082038 Nil!56794)))

(declare-fun bm!344200 () Bool)

(assert (=> bm!344200 (= call!344205 (size!37605 lt!2031127))))

(declare-fun b!4932863 () Bool)

(declare-fun e!3082041 () List!56918)

(assert (=> b!4932863 (= e!3082041 lt!2031127)))

(declare-fun b!4932864 () Bool)

(assert (=> b!4932864 (= e!3082041 (drop!2245 (t!367398 lt!2031127) (- testedPSize!70 1)))))

(declare-fun b!4932865 () Bool)

(assert (=> b!4932865 (= e!3082040 (- call!344205 testedPSize!70))))

(declare-fun d!1587805 () Bool)

(assert (=> d!1587805 e!3082037))

(declare-fun res!2105220 () Bool)

(assert (=> d!1587805 (=> (not res!2105220) (not e!3082037))))

(declare-fun content!10093 (List!56918) (Set C!27058))

(assert (=> d!1587805 (= res!2105220 (set.subset (content!10093 lt!2031201) (content!10093 lt!2031127)))))

(assert (=> d!1587805 (= lt!2031201 e!3082038)))

(declare-fun c!840661 () Bool)

(assert (=> d!1587805 (= c!840661 (is-Nil!56794 lt!2031127))))

(assert (=> d!1587805 (= (drop!2245 lt!2031127 testedPSize!70) lt!2031201)))

(declare-fun b!4932862 () Bool)

(assert (=> b!4932862 (= e!3082038 e!3082041)))

(declare-fun c!840660 () Bool)

(assert (=> b!4932862 (= c!840660 (<= testedPSize!70 0))))

(assert (= (and d!1587805 c!840661) b!4932861))

(assert (= (and d!1587805 (not c!840661)) b!4932862))

(assert (= (and b!4932862 c!840660) b!4932863))

(assert (= (and b!4932862 (not c!840660)) b!4932864))

(assert (= (and d!1587805 res!2105220) b!4932858))

(assert (= (and b!4932858 c!840663) b!4932860))

(assert (= (and b!4932858 (not c!840663)) b!4932857))

(assert (= (and b!4932857 c!840662) b!4932859))

(assert (= (and b!4932857 (not c!840662)) b!4932865))

(assert (= (or b!4932860 b!4932857 b!4932865) bm!344200))

(declare-fun m!5953198 () Bool)

(assert (=> b!4932858 m!5953198))

(assert (=> bm!344200 m!5953048))

(declare-fun m!5953200 () Bool)

(assert (=> b!4932864 m!5953200))

(declare-fun m!5953202 () Bool)

(assert (=> d!1587805 m!5953202))

(declare-fun m!5953204 () Bool)

(assert (=> d!1587805 m!5953204))

(assert (=> b!4932769 d!1587805))

(declare-fun d!1587809 () Bool)

(assert (=> d!1587809 (= (head!10551 (drop!2245 lt!2031127 testedPSize!70)) (apply!13706 lt!2031127 testedPSize!70))))

(declare-fun lt!2031204 () Unit!147441)

(declare-fun choose!36172 (List!56918 Int) Unit!147441)

(assert (=> d!1587809 (= lt!2031204 (choose!36172 lt!2031127 testedPSize!70))))

(declare-fun e!3082044 () Bool)

(assert (=> d!1587809 e!3082044))

(declare-fun res!2105223 () Bool)

(assert (=> d!1587809 (=> (not res!2105223) (not e!3082044))))

(assert (=> d!1587809 (= res!2105223 (>= testedPSize!70 0))))

(assert (=> d!1587809 (= (lemmaDropApply!1303 lt!2031127 testedPSize!70) lt!2031204)))

(declare-fun b!4932868 () Bool)

(assert (=> b!4932868 (= e!3082044 (< testedPSize!70 (size!37605 lt!2031127)))))

(assert (= (and d!1587809 res!2105223) b!4932868))

(assert (=> d!1587809 m!5953078))

(assert (=> d!1587809 m!5953078))

(assert (=> d!1587809 m!5953088))

(assert (=> d!1587809 m!5953080))

(declare-fun m!5953206 () Bool)

(assert (=> d!1587809 m!5953206))

(assert (=> b!4932868 m!5953048))

(assert (=> b!4932769 d!1587809))

(declare-fun d!1587811 () Bool)

(declare-fun lt!2031207 () C!27058)

(assert (=> d!1587811 (= lt!2031207 (apply!13706 (list!18027 totalInput!685) testedPSize!70))))

(declare-fun apply!13709 (Conc!14923 Int) C!27058)

(assert (=> d!1587811 (= lt!2031207 (apply!13709 (c!840642 totalInput!685) testedPSize!70))))

(declare-fun e!3082053 () Bool)

(assert (=> d!1587811 e!3082053))

(declare-fun res!2105229 () Bool)

(assert (=> d!1587811 (=> (not res!2105229) (not e!3082053))))

(assert (=> d!1587811 (= res!2105229 (<= 0 testedPSize!70))))

(assert (=> d!1587811 (= (apply!13705 totalInput!685 testedPSize!70) lt!2031207)))

(declare-fun b!4932880 () Bool)

(assert (=> b!4932880 (= e!3082053 (< testedPSize!70 (size!37604 totalInput!685)))))

(assert (= (and d!1587811 res!2105229) b!4932880))

(assert (=> d!1587811 m!5953106))

(assert (=> d!1587811 m!5953106))

(declare-fun m!5953208 () Bool)

(assert (=> d!1587811 m!5953208))

(declare-fun m!5953210 () Bool)

(assert (=> d!1587811 m!5953210))

(assert (=> b!4932880 m!5953114))

(assert (=> b!4932769 d!1587811))

(declare-fun d!1587813 () Bool)

(declare-fun list!18029 (Conc!14923) List!56918)

(assert (=> d!1587813 (= (list!18027 totalInput!685) (list!18029 (c!840642 totalInput!685)))))

(declare-fun bs!1180433 () Bool)

(assert (= bs!1180433 d!1587813))

(declare-fun m!5953216 () Bool)

(assert (=> bs!1180433 m!5953216))

(assert (=> start!518210 d!1587813))

(declare-fun d!1587817 () Bool)

(declare-fun e!3082059 () Bool)

(assert (=> d!1587817 e!3082059))

(declare-fun res!2105234 () Bool)

(assert (=> d!1587817 (=> (not res!2105234) (not e!3082059))))

(declare-fun lt!2031213 () List!56918)

(assert (=> d!1587817 (= res!2105234 (= (content!10093 lt!2031213) (set.union (content!10093 testedP!110) (content!10093 testedSuffix!70))))))

(declare-fun e!3082058 () List!56918)

(assert (=> d!1587817 (= lt!2031213 e!3082058)))

(declare-fun c!840669 () Bool)

(assert (=> d!1587817 (= c!840669 (is-Nil!56794 testedP!110))))

(assert (=> d!1587817 (= (++!12379 testedP!110 testedSuffix!70) lt!2031213)))

(declare-fun b!4932890 () Bool)

(assert (=> b!4932890 (= e!3082058 (Cons!56794 (h!63242 testedP!110) (++!12379 (t!367398 testedP!110) testedSuffix!70)))))

(declare-fun b!4932892 () Bool)

(assert (=> b!4932892 (= e!3082059 (or (not (= testedSuffix!70 Nil!56794)) (= lt!2031213 testedP!110)))))

(declare-fun b!4932891 () Bool)

(declare-fun res!2105235 () Bool)

(assert (=> b!4932891 (=> (not res!2105235) (not e!3082059))))

(assert (=> b!4932891 (= res!2105235 (= (size!37605 lt!2031213) (+ (size!37605 testedP!110) (size!37605 testedSuffix!70))))))

(declare-fun b!4932889 () Bool)

(assert (=> b!4932889 (= e!3082058 testedSuffix!70)))

(assert (= (and d!1587817 c!840669) b!4932889))

(assert (= (and d!1587817 (not c!840669)) b!4932890))

(assert (= (and d!1587817 res!2105234) b!4932891))

(assert (= (and b!4932891 res!2105235) b!4932892))

(declare-fun m!5953222 () Bool)

(assert (=> d!1587817 m!5953222))

(declare-fun m!5953224 () Bool)

(assert (=> d!1587817 m!5953224))

(declare-fun m!5953226 () Bool)

(assert (=> d!1587817 m!5953226))

(declare-fun m!5953228 () Bool)

(assert (=> b!4932890 m!5953228))

(declare-fun m!5953230 () Bool)

(assert (=> b!4932891 m!5953230))

(assert (=> b!4932891 m!5953074))

(declare-fun m!5953232 () Bool)

(assert (=> b!4932891 m!5953232))

(assert (=> start!518210 d!1587817))

(declare-fun d!1587821 () Bool)

(declare-fun isBalanced!4108 (Conc!14923) Bool)

(assert (=> d!1587821 (= (inv!73752 totalInput!685) (isBalanced!4108 (c!840642 totalInput!685)))))

(declare-fun bs!1180435 () Bool)

(assert (= bs!1180435 d!1587821))

(declare-fun m!5953234 () Bool)

(assert (=> bs!1180435 m!5953234))

(assert (=> start!518210 d!1587821))

(declare-fun d!1587823 () Bool)

(declare-fun lt!2031214 () Int)

(assert (=> d!1587823 (= lt!2031214 (size!37605 (list!18027 (_1!33939 lt!2031130))))))

(assert (=> d!1587823 (= lt!2031214 (size!37608 (c!840642 (_1!33939 lt!2031130))))))

(assert (=> d!1587823 (= (size!37604 (_1!33939 lt!2031130)) lt!2031214)))

(declare-fun bs!1180437 () Bool)

(assert (= bs!1180437 d!1587823))

(assert (=> bs!1180437 m!5953056))

(assert (=> bs!1180437 m!5953056))

(declare-fun m!5953238 () Bool)

(assert (=> bs!1180437 m!5953238))

(declare-fun m!5953240 () Bool)

(assert (=> bs!1180437 m!5953240))

(assert (=> b!4932777 d!1587823))

(declare-fun d!1587827 () Bool)

(declare-fun c!840672 () Bool)

(assert (=> d!1587827 (= c!840672 (is-Node!14923 (c!840642 totalInput!685)))))

(declare-fun e!3082064 () Bool)

(assert (=> d!1587827 (= (inv!73754 (c!840642 totalInput!685)) e!3082064)))

(declare-fun b!4932899 () Bool)

(declare-fun inv!73758 (Conc!14923) Bool)

(assert (=> b!4932899 (= e!3082064 (inv!73758 (c!840642 totalInput!685)))))

(declare-fun b!4932900 () Bool)

(declare-fun e!3082065 () Bool)

(assert (=> b!4932900 (= e!3082064 e!3082065)))

(declare-fun res!2105238 () Bool)

(assert (=> b!4932900 (= res!2105238 (not (is-Leaf!24818 (c!840642 totalInput!685))))))

(assert (=> b!4932900 (=> res!2105238 e!3082065)))

(declare-fun b!4932901 () Bool)

(declare-fun inv!73759 (Conc!14923) Bool)

(assert (=> b!4932901 (= e!3082065 (inv!73759 (c!840642 totalInput!685)))))

(assert (= (and d!1587827 c!840672) b!4932899))

(assert (= (and d!1587827 (not c!840672)) b!4932900))

(assert (= (and b!4932900 (not res!2105238)) b!4932901))

(declare-fun m!5953242 () Bool)

(assert (=> b!4932899 m!5953242))

(declare-fun m!5953244 () Bool)

(assert (=> b!4932901 m!5953244))

(assert (=> b!4932776 d!1587827))

(declare-fun b!4932919 () Bool)

(declare-fun res!2105254 () Bool)

(declare-fun e!3082076 () Bool)

(assert (=> b!4932919 (=> (not res!2105254) (not e!3082076))))

(assert (=> b!4932919 (= res!2105254 (= (head!10551 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794))) (head!10551 lt!2031127)))))

(declare-fun b!4932918 () Bool)

(declare-fun e!3082078 () Bool)

(assert (=> b!4932918 (= e!3082078 e!3082076)))

(declare-fun res!2105253 () Bool)

(assert (=> b!4932918 (=> (not res!2105253) (not e!3082076))))

(assert (=> b!4932918 (= res!2105253 (not (is-Nil!56794 lt!2031127)))))

(declare-fun d!1587829 () Bool)

(declare-fun e!3082077 () Bool)

(assert (=> d!1587829 e!3082077))

(declare-fun res!2105252 () Bool)

(assert (=> d!1587829 (=> res!2105252 e!3082077)))

(declare-fun lt!2031219 () Bool)

(assert (=> d!1587829 (= res!2105252 (not lt!2031219))))

(assert (=> d!1587829 (= lt!2031219 e!3082078)))

(declare-fun res!2105251 () Bool)

(assert (=> d!1587829 (=> res!2105251 e!3082078)))

(assert (=> d!1587829 (= res!2105251 (is-Nil!56794 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794))))))

(assert (=> d!1587829 (= (isPrefix!5012 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794)) lt!2031127) lt!2031219)))

(declare-fun b!4932920 () Bool)

(assert (=> b!4932920 (= e!3082076 (isPrefix!5012 (tail!9690 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794))) (tail!9690 lt!2031127)))))

(declare-fun b!4932921 () Bool)

(assert (=> b!4932921 (= e!3082077 (>= (size!37605 lt!2031127) (size!37605 (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794)))))))

(assert (= (and d!1587829 (not res!2105251)) b!4932918))

(assert (= (and b!4932918 res!2105253) b!4932919))

(assert (= (and b!4932919 res!2105254) b!4932920))

(assert (= (and d!1587829 (not res!2105252)) b!4932921))

(assert (=> b!4932919 m!5953100))

(declare-fun m!5953246 () Bool)

(assert (=> b!4932919 m!5953246))

(assert (=> b!4932919 m!5953192))

(assert (=> b!4932920 m!5953100))

(declare-fun m!5953248 () Bool)

(assert (=> b!4932920 m!5953248))

(assert (=> b!4932920 m!5953194))

(assert (=> b!4932920 m!5953248))

(assert (=> b!4932920 m!5953194))

(declare-fun m!5953250 () Bool)

(assert (=> b!4932920 m!5953250))

(assert (=> b!4932921 m!5953048))

(assert (=> b!4932921 m!5953100))

(declare-fun m!5953252 () Bool)

(assert (=> b!4932921 m!5953252))

(assert (=> b!4932766 d!1587829))

(declare-fun d!1587831 () Bool)

(declare-fun e!3082080 () Bool)

(assert (=> d!1587831 e!3082080))

(declare-fun res!2105255 () Bool)

(assert (=> d!1587831 (=> (not res!2105255) (not e!3082080))))

(declare-fun lt!2031220 () List!56918)

(assert (=> d!1587831 (= res!2105255 (= (content!10093 lt!2031220) (set.union (content!10093 testedP!110) (content!10093 (Cons!56794 (head!10551 lt!2031128) Nil!56794)))))))

(declare-fun e!3082079 () List!56918)

(assert (=> d!1587831 (= lt!2031220 e!3082079)))

(declare-fun c!840675 () Bool)

(assert (=> d!1587831 (= c!840675 (is-Nil!56794 testedP!110))))

(assert (=> d!1587831 (= (++!12379 testedP!110 (Cons!56794 (head!10551 lt!2031128) Nil!56794)) lt!2031220)))

(declare-fun b!4932923 () Bool)

(assert (=> b!4932923 (= e!3082079 (Cons!56794 (h!63242 testedP!110) (++!12379 (t!367398 testedP!110) (Cons!56794 (head!10551 lt!2031128) Nil!56794))))))

(declare-fun b!4932925 () Bool)

(assert (=> b!4932925 (= e!3082080 (or (not (= (Cons!56794 (head!10551 lt!2031128) Nil!56794) Nil!56794)) (= lt!2031220 testedP!110)))))

(declare-fun b!4932924 () Bool)

(declare-fun res!2105256 () Bool)

(assert (=> b!4932924 (=> (not res!2105256) (not e!3082080))))

(assert (=> b!4932924 (= res!2105256 (= (size!37605 lt!2031220) (+ (size!37605 testedP!110) (size!37605 (Cons!56794 (head!10551 lt!2031128) Nil!56794)))))))

(declare-fun b!4932922 () Bool)

(assert (=> b!4932922 (= e!3082079 (Cons!56794 (head!10551 lt!2031128) Nil!56794))))

(assert (= (and d!1587831 c!840675) b!4932922))

(assert (= (and d!1587831 (not c!840675)) b!4932923))

(assert (= (and d!1587831 res!2105255) b!4932924))

(assert (= (and b!4932924 res!2105256) b!4932925))

(declare-fun m!5953254 () Bool)

(assert (=> d!1587831 m!5953254))

(assert (=> d!1587831 m!5953224))

(declare-fun m!5953256 () Bool)

(assert (=> d!1587831 m!5953256))

(declare-fun m!5953258 () Bool)

(assert (=> b!4932923 m!5953258))

(declare-fun m!5953260 () Bool)

(assert (=> b!4932924 m!5953260))

(assert (=> b!4932924 m!5953074))

(declare-fun m!5953262 () Bool)

(assert (=> b!4932924 m!5953262))

(assert (=> b!4932766 d!1587831))

(declare-fun d!1587833 () Bool)

(assert (=> d!1587833 (= (head!10551 lt!2031128) (h!63242 lt!2031128))))

(assert (=> b!4932766 d!1587833))

(declare-fun d!1587835 () Bool)

(assert (=> d!1587835 (isPrefix!5012 (++!12379 testedP!110 (Cons!56794 (head!10551 (getSuffix!2996 lt!2031127 testedP!110)) Nil!56794)) lt!2031127)))

(declare-fun lt!2031224 () Unit!147441)

(declare-fun choose!36173 (List!56918 List!56918) Unit!147441)

(assert (=> d!1587835 (= lt!2031224 (choose!36173 testedP!110 lt!2031127))))

(assert (=> d!1587835 (isPrefix!5012 testedP!110 lt!2031127)))

(assert (=> d!1587835 (= (lemmaAddHeadSuffixToPrefixStillPrefix!782 testedP!110 lt!2031127) lt!2031224)))

(declare-fun bs!1180438 () Bool)

(assert (= bs!1180438 d!1587835))

(declare-fun m!5953276 () Bool)

(assert (=> bs!1180438 m!5953276))

(assert (=> bs!1180438 m!5953062))

(declare-fun m!5953278 () Bool)

(assert (=> bs!1180438 m!5953278))

(assert (=> bs!1180438 m!5953072))

(assert (=> bs!1180438 m!5953072))

(declare-fun m!5953280 () Bool)

(assert (=> bs!1180438 m!5953280))

(assert (=> bs!1180438 m!5953278))

(declare-fun m!5953282 () Bool)

(assert (=> bs!1180438 m!5953282))

(assert (=> b!4932766 d!1587835))

(declare-fun d!1587839 () Bool)

(declare-fun lambda!245611 () Int)

(declare-fun forall!13171 (List!56919 Int) Bool)

(assert (=> d!1587839 (= (inv!73753 setElem!27713) (forall!13171 (exprs!3556 setElem!27713) lambda!245611))))

(declare-fun bs!1180440 () Bool)

(assert (= bs!1180440 d!1587839))

(declare-fun m!5953286 () Bool)

(assert (=> bs!1180440 m!5953286))

(assert (=> setNonEmpty!27713 d!1587839))

(declare-fun d!1587843 () Bool)

(declare-fun lt!2031231 () Int)

(assert (=> d!1587843 (>= lt!2031231 0)))

(declare-fun e!3082087 () Int)

(assert (=> d!1587843 (= lt!2031231 e!3082087)))

(declare-fun c!840683 () Bool)

(assert (=> d!1587843 (= c!840683 (is-Nil!56794 testedP!110))))

(assert (=> d!1587843 (= (size!37605 testedP!110) lt!2031231)))

(declare-fun b!4932938 () Bool)

(assert (=> b!4932938 (= e!3082087 0)))

(declare-fun b!4932939 () Bool)

(assert (=> b!4932939 (= e!3082087 (+ 1 (size!37605 (t!367398 testedP!110))))))

(assert (= (and d!1587843 c!840683) b!4932938))

(assert (= (and d!1587843 (not c!840683)) b!4932939))

(declare-fun m!5953288 () Bool)

(assert (=> b!4932939 m!5953288))

(assert (=> b!4932775 d!1587843))

(declare-fun d!1587845 () Bool)

(declare-fun lt!2031232 () Int)

(assert (=> d!1587845 (>= lt!2031232 0)))

(declare-fun e!3082088 () Int)

(assert (=> d!1587845 (= lt!2031232 e!3082088)))

(declare-fun c!840684 () Bool)

(assert (=> d!1587845 (= c!840684 (is-Nil!56794 lt!2031127))))

(assert (=> d!1587845 (= (size!37605 lt!2031127) lt!2031232)))

(declare-fun b!4932940 () Bool)

(assert (=> b!4932940 (= e!3082088 0)))

(declare-fun b!4932941 () Bool)

(assert (=> b!4932941 (= e!3082088 (+ 1 (size!37605 (t!367398 lt!2031127))))))

(assert (= (and d!1587845 c!840684) b!4932940))

(assert (= (and d!1587845 (not c!840684)) b!4932941))

(declare-fun m!5953290 () Bool)

(assert (=> b!4932941 m!5953290))

(assert (=> b!4932774 d!1587845))

(declare-fun d!1587847 () Bool)

(assert (=> d!1587847 (<= (size!37605 testedP!110) (size!37605 lt!2031127))))

(declare-fun lt!2031235 () Unit!147441)

(declare-fun choose!36174 (List!56918 List!56918) Unit!147441)

(assert (=> d!1587847 (= lt!2031235 (choose!36174 testedP!110 lt!2031127))))

(assert (=> d!1587847 (isPrefix!5012 testedP!110 lt!2031127)))

(assert (=> d!1587847 (= (lemmaIsPrefixThenSmallerEqSize!700 testedP!110 lt!2031127) lt!2031235)))

(declare-fun bs!1180441 () Bool)

(assert (= bs!1180441 d!1587847))

(assert (=> bs!1180441 m!5953074))

(assert (=> bs!1180441 m!5953048))

(declare-fun m!5953292 () Bool)

(assert (=> bs!1180441 m!5953292))

(assert (=> bs!1180441 m!5953062))

(assert (=> b!4932774 d!1587847))

(declare-fun d!1587849 () Bool)

(declare-fun e!3082090 () Bool)

(assert (=> d!1587849 e!3082090))

(declare-fun res!2105259 () Bool)

(assert (=> d!1587849 (=> (not res!2105259) (not e!3082090))))

(declare-fun lt!2031236 () List!56918)

(assert (=> d!1587849 (= res!2105259 (= (content!10093 lt!2031236) (set.union (content!10093 lt!2031129) (content!10093 lt!2031138))))))

(declare-fun e!3082089 () List!56918)

(assert (=> d!1587849 (= lt!2031236 e!3082089)))

(declare-fun c!840685 () Bool)

(assert (=> d!1587849 (= c!840685 (is-Nil!56794 lt!2031129))))

(assert (=> d!1587849 (= (++!12379 lt!2031129 lt!2031138) lt!2031236)))

(declare-fun b!4932943 () Bool)

(assert (=> b!4932943 (= e!3082089 (Cons!56794 (h!63242 lt!2031129) (++!12379 (t!367398 lt!2031129) lt!2031138)))))

(declare-fun b!4932945 () Bool)

(assert (=> b!4932945 (= e!3082090 (or (not (= lt!2031138 Nil!56794)) (= lt!2031236 lt!2031129)))))

(declare-fun b!4932944 () Bool)

(declare-fun res!2105260 () Bool)

(assert (=> b!4932944 (=> (not res!2105260) (not e!3082090))))

(assert (=> b!4932944 (= res!2105260 (= (size!37605 lt!2031236) (+ (size!37605 lt!2031129) (size!37605 lt!2031138))))))

(declare-fun b!4932942 () Bool)

(assert (=> b!4932942 (= e!3082089 lt!2031138)))

(assert (= (and d!1587849 c!840685) b!4932942))

(assert (= (and d!1587849 (not c!840685)) b!4932943))

(assert (= (and d!1587849 res!2105259) b!4932944))

(assert (= (and b!4932944 res!2105260) b!4932945))

(declare-fun m!5953294 () Bool)

(assert (=> d!1587849 m!5953294))

(declare-fun m!5953296 () Bool)

(assert (=> d!1587849 m!5953296))

(declare-fun m!5953298 () Bool)

(assert (=> d!1587849 m!5953298))

(declare-fun m!5953300 () Bool)

(assert (=> b!4932943 m!5953300))

(declare-fun m!5953302 () Bool)

(assert (=> b!4932944 m!5953302))

(declare-fun m!5953304 () Bool)

(assert (=> b!4932944 m!5953304))

(declare-fun m!5953306 () Bool)

(assert (=> b!4932944 m!5953306))

(assert (=> b!4932773 d!1587849))

(declare-fun d!1587851 () Bool)

(assert (=> d!1587851 (= (list!18027 (_2!33939 lt!2031130)) (list!18029 (c!840642 (_2!33939 lt!2031130))))))

(declare-fun bs!1180442 () Bool)

(assert (= bs!1180442 d!1587851))

(declare-fun m!5953308 () Bool)

(assert (=> bs!1180442 m!5953308))

(assert (=> b!4932773 d!1587851))

(declare-fun d!1587853 () Bool)

(assert (=> d!1587853 (= (list!18027 (_1!33939 lt!2031130)) (list!18029 (c!840642 (_1!33939 lt!2031130))))))

(declare-fun bs!1180443 () Bool)

(assert (= bs!1180443 d!1587853))

(declare-fun m!5953310 () Bool)

(assert (=> bs!1180443 m!5953310))

(assert (=> b!4932773 d!1587853))

(declare-fun d!1587855 () Bool)

(declare-fun e!3082093 () Bool)

(assert (=> d!1587855 e!3082093))

(declare-fun res!2105266 () Bool)

(assert (=> d!1587855 (=> (not res!2105266) (not e!3082093))))

(declare-fun lt!2031242 () tuple2!61272)

(assert (=> d!1587855 (= res!2105266 (isBalanced!4108 (c!840642 (_1!33939 lt!2031242))))))

(declare-datatypes ((tuple2!61276 0))(
  ( (tuple2!61277 (_1!33941 Conc!14923) (_2!33941 Conc!14923)) )
))
(declare-fun lt!2031241 () tuple2!61276)

(assert (=> d!1587855 (= lt!2031242 (tuple2!61273 (BalanceConc!29277 (_1!33941 lt!2031241)) (BalanceConc!29277 (_2!33941 lt!2031241))))))

(declare-fun splitAt!310 (Conc!14923 Int) tuple2!61276)

(assert (=> d!1587855 (= lt!2031241 (splitAt!310 (c!840642 totalInput!685) testedPSize!70))))

(assert (=> d!1587855 (isBalanced!4108 (c!840642 totalInput!685))))

(assert (=> d!1587855 (= (splitAt!308 totalInput!685 testedPSize!70) lt!2031242)))

(declare-fun b!4932950 () Bool)

(declare-fun res!2105265 () Bool)

(assert (=> b!4932950 (=> (not res!2105265) (not e!3082093))))

(assert (=> b!4932950 (= res!2105265 (isBalanced!4108 (c!840642 (_2!33939 lt!2031242))))))

(declare-fun b!4932951 () Bool)

(declare-datatypes ((tuple2!61278 0))(
  ( (tuple2!61279 (_1!33942 List!56918) (_2!33942 List!56918)) )
))
(declare-fun splitAtIndex!114 (List!56918 Int) tuple2!61278)

(assert (=> b!4932951 (= e!3082093 (= (tuple2!61279 (list!18027 (_1!33939 lt!2031242)) (list!18027 (_2!33939 lt!2031242))) (splitAtIndex!114 (list!18027 totalInput!685) testedPSize!70)))))

(assert (= (and d!1587855 res!2105266) b!4932950))

(assert (= (and b!4932950 res!2105265) b!4932951))

(declare-fun m!5953312 () Bool)

(assert (=> d!1587855 m!5953312))

(declare-fun m!5953314 () Bool)

(assert (=> d!1587855 m!5953314))

(assert (=> d!1587855 m!5953234))

(declare-fun m!5953316 () Bool)

(assert (=> b!4932950 m!5953316))

(declare-fun m!5953318 () Bool)

(assert (=> b!4932951 m!5953318))

(declare-fun m!5953320 () Bool)

(assert (=> b!4932951 m!5953320))

(assert (=> b!4932951 m!5953106))

(assert (=> b!4932951 m!5953106))

(declare-fun m!5953322 () Bool)

(assert (=> b!4932951 m!5953322))

(assert (=> b!4932773 d!1587855))

(declare-fun b!4932953 () Bool)

(declare-fun res!2105270 () Bool)

(declare-fun e!3082094 () Bool)

(assert (=> b!4932953 (=> (not res!2105270) (not e!3082094))))

(assert (=> b!4932953 (= res!2105270 (= (head!10551 testedP!110) (head!10551 lt!2031127)))))

(declare-fun b!4932952 () Bool)

(declare-fun e!3082096 () Bool)

(assert (=> b!4932952 (= e!3082096 e!3082094)))

(declare-fun res!2105269 () Bool)

(assert (=> b!4932952 (=> (not res!2105269) (not e!3082094))))

(assert (=> b!4932952 (= res!2105269 (not (is-Nil!56794 lt!2031127)))))

(declare-fun d!1587857 () Bool)

(declare-fun e!3082095 () Bool)

(assert (=> d!1587857 e!3082095))

(declare-fun res!2105268 () Bool)

(assert (=> d!1587857 (=> res!2105268 e!3082095)))

(declare-fun lt!2031243 () Bool)

(assert (=> d!1587857 (= res!2105268 (not lt!2031243))))

(assert (=> d!1587857 (= lt!2031243 e!3082096)))

(declare-fun res!2105267 () Bool)

(assert (=> d!1587857 (=> res!2105267 e!3082096)))

(assert (=> d!1587857 (= res!2105267 (is-Nil!56794 testedP!110))))

(assert (=> d!1587857 (= (isPrefix!5012 testedP!110 lt!2031127) lt!2031243)))

(declare-fun b!4932954 () Bool)

(assert (=> b!4932954 (= e!3082094 (isPrefix!5012 (tail!9690 testedP!110) (tail!9690 lt!2031127)))))

(declare-fun b!4932955 () Bool)

(assert (=> b!4932955 (= e!3082095 (>= (size!37605 lt!2031127) (size!37605 testedP!110)))))

(assert (= (and d!1587857 (not res!2105267)) b!4932952))

(assert (= (and b!4932952 res!2105269) b!4932953))

(assert (= (and b!4932953 res!2105270) b!4932954))

(assert (= (and d!1587857 (not res!2105268)) b!4932955))

(declare-fun m!5953324 () Bool)

(assert (=> b!4932953 m!5953324))

(assert (=> b!4932953 m!5953192))

(declare-fun m!5953326 () Bool)

(assert (=> b!4932954 m!5953326))

(assert (=> b!4932954 m!5953194))

(assert (=> b!4932954 m!5953326))

(assert (=> b!4932954 m!5953194))

(declare-fun m!5953328 () Bool)

(assert (=> b!4932954 m!5953328))

(assert (=> b!4932955 m!5953048))

(assert (=> b!4932955 m!5953074))

(assert (=> b!4932781 d!1587857))

(declare-fun b!4932957 () Bool)

(declare-fun res!2105274 () Bool)

(declare-fun e!3082097 () Bool)

(assert (=> b!4932957 (=> (not res!2105274) (not e!3082097))))

(assert (=> b!4932957 (= res!2105274 (= (head!10551 testedP!110) (head!10551 lt!2031123)))))

(declare-fun b!4932956 () Bool)

(declare-fun e!3082099 () Bool)

(assert (=> b!4932956 (= e!3082099 e!3082097)))

(declare-fun res!2105273 () Bool)

(assert (=> b!4932956 (=> (not res!2105273) (not e!3082097))))

(assert (=> b!4932956 (= res!2105273 (not (is-Nil!56794 lt!2031123)))))

(declare-fun d!1587859 () Bool)

(declare-fun e!3082098 () Bool)

(assert (=> d!1587859 e!3082098))

(declare-fun res!2105272 () Bool)

(assert (=> d!1587859 (=> res!2105272 e!3082098)))

(declare-fun lt!2031244 () Bool)

(assert (=> d!1587859 (= res!2105272 (not lt!2031244))))

(assert (=> d!1587859 (= lt!2031244 e!3082099)))

(declare-fun res!2105271 () Bool)

(assert (=> d!1587859 (=> res!2105271 e!3082099)))

(assert (=> d!1587859 (= res!2105271 (is-Nil!56794 testedP!110))))

(assert (=> d!1587859 (= (isPrefix!5012 testedP!110 lt!2031123) lt!2031244)))

(declare-fun b!4932958 () Bool)

(assert (=> b!4932958 (= e!3082097 (isPrefix!5012 (tail!9690 testedP!110) (tail!9690 lt!2031123)))))

(declare-fun b!4932959 () Bool)

(assert (=> b!4932959 (= e!3082098 (>= (size!37605 lt!2031123) (size!37605 testedP!110)))))

(assert (= (and d!1587859 (not res!2105271)) b!4932956))

(assert (= (and b!4932956 res!2105273) b!4932957))

(assert (= (and b!4932957 res!2105274) b!4932958))

(assert (= (and d!1587859 (not res!2105272)) b!4932959))

(assert (=> b!4932957 m!5953324))

(declare-fun m!5953330 () Bool)

(assert (=> b!4932957 m!5953330))

(assert (=> b!4932958 m!5953326))

(declare-fun m!5953332 () Bool)

(assert (=> b!4932958 m!5953332))

(assert (=> b!4932958 m!5953326))

(assert (=> b!4932958 m!5953332))

(declare-fun m!5953334 () Bool)

(assert (=> b!4932958 m!5953334))

(declare-fun m!5953336 () Bool)

(assert (=> b!4932959 m!5953336))

(assert (=> b!4932959 m!5953074))

(assert (=> b!4932781 d!1587859))

(declare-fun d!1587861 () Bool)

(assert (=> d!1587861 (isPrefix!5012 testedP!110 (++!12379 testedP!110 testedSuffix!70))))

(declare-fun lt!2031247 () Unit!147441)

(declare-fun choose!36175 (List!56918 List!56918) Unit!147441)

(assert (=> d!1587861 (= lt!2031247 (choose!36175 testedP!110 testedSuffix!70))))

(assert (=> d!1587861 (= (lemmaConcatTwoListThenFirstIsPrefix!3236 testedP!110 testedSuffix!70) lt!2031247)))

(declare-fun bs!1180444 () Bool)

(assert (= bs!1180444 d!1587861))

(assert (=> bs!1180444 m!5953108))

(assert (=> bs!1180444 m!5953108))

(declare-fun m!5953338 () Bool)

(assert (=> bs!1180444 m!5953338))

(declare-fun m!5953340 () Bool)

(assert (=> bs!1180444 m!5953340))

(assert (=> b!4932781 d!1587861))

(declare-fun bs!1180445 () Bool)

(declare-fun b!4932964 () Bool)

(declare-fun d!1587863 () Bool)

(assert (= bs!1180445 (and b!4932964 d!1587863)))

(declare-fun lambda!245625 () Int)

(declare-fun lambda!245624 () Int)

(assert (=> bs!1180445 (not (= lambda!245625 lambda!245624))))

(declare-fun bs!1180446 () Bool)

(declare-fun b!4932965 () Bool)

(assert (= bs!1180446 (and b!4932965 d!1587863)))

(declare-fun lambda!245626 () Int)

(assert (=> bs!1180446 (not (= lambda!245626 lambda!245624))))

(declare-fun bs!1180447 () Bool)

(assert (= bs!1180447 (and b!4932965 b!4932964)))

(assert (=> bs!1180447 (= lambda!245626 lambda!245625)))

(declare-fun lt!2031267 () Bool)

(declare-datatypes ((Option!14176 0))(
  ( (None!14175) (Some!14175 (v!50145 List!56918)) )
))
(declare-fun isEmpty!30601 (Option!14176) Bool)

(declare-fun getLanguageWitness!634 ((Set Context!6112)) Option!14176)

(assert (=> d!1587863 (= lt!2031267 (isEmpty!30601 (getLanguageWitness!634 z!3568)))))

(declare-fun forall!13172 ((Set Context!6112) Int) Bool)

(assert (=> d!1587863 (= lt!2031267 (forall!13172 z!3568 lambda!245624))))

(declare-fun lt!2031266 () Unit!147441)

(declare-fun e!3082106 () Unit!147441)

(assert (=> d!1587863 (= lt!2031266 e!3082106)))

(declare-fun c!840696 () Bool)

(assert (=> d!1587863 (= c!840696 (not (forall!13172 z!3568 lambda!245624)))))

(assert (=> d!1587863 (= (lostCauseZipper!732 z!3568) lt!2031267)))

(declare-fun bm!344206 () Bool)

(declare-datatypes ((List!56922 0))(
  ( (Nil!56798) (Cons!56798 (h!63246 Context!6112) (t!367402 List!56922)) )
))
(declare-fun call!344210 () List!56922)

(declare-fun toList!7958 ((Set Context!6112)) List!56922)

(assert (=> bm!344206 (= call!344210 (toList!7958 z!3568))))

(declare-fun Unit!147449 () Unit!147441)

(assert (=> b!4932964 (= e!3082106 Unit!147449)))

(declare-fun lt!2031271 () List!56922)

(assert (=> b!4932964 (= lt!2031271 call!344210)))

(declare-fun lt!2031264 () Unit!147441)

(declare-fun lemmaNotForallThenExists!196 (List!56922 Int) Unit!147441)

(assert (=> b!4932964 (= lt!2031264 (lemmaNotForallThenExists!196 lt!2031271 lambda!245624))))

(declare-fun call!344211 () Bool)

(assert (=> b!4932964 call!344211))

(declare-fun lt!2031270 () Unit!147441)

(assert (=> b!4932964 (= lt!2031270 lt!2031264)))

(declare-fun lt!2031265 () List!56922)

(declare-fun bm!344205 () Bool)

(declare-fun exists!1265 (List!56922 Int) Bool)

(assert (=> bm!344205 (= call!344211 (exists!1265 (ite c!840696 lt!2031271 lt!2031265) (ite c!840696 lambda!245625 lambda!245626)))))

(declare-fun Unit!147450 () Unit!147441)

(assert (=> b!4932965 (= e!3082106 Unit!147450)))

(assert (=> b!4932965 (= lt!2031265 call!344210)))

(declare-fun lt!2031268 () Unit!147441)

(declare-fun lemmaForallThenNotExists!179 (List!56922 Int) Unit!147441)

(assert (=> b!4932965 (= lt!2031268 (lemmaForallThenNotExists!179 lt!2031265 lambda!245624))))

(assert (=> b!4932965 (not call!344211)))

(declare-fun lt!2031269 () Unit!147441)

(assert (=> b!4932965 (= lt!2031269 lt!2031268)))

(assert (= (and d!1587863 c!840696) b!4932964))

(assert (= (and d!1587863 (not c!840696)) b!4932965))

(assert (= (or b!4932964 b!4932965) bm!344205))

(assert (= (or b!4932964 b!4932965) bm!344206))

(declare-fun m!5953342 () Bool)

(assert (=> bm!344205 m!5953342))

(declare-fun m!5953344 () Bool)

(assert (=> b!4932964 m!5953344))

(declare-fun m!5953346 () Bool)

(assert (=> b!4932965 m!5953346))

(declare-fun m!5953348 () Bool)

(assert (=> bm!344206 m!5953348))

(declare-fun m!5953350 () Bool)

(assert (=> d!1587863 m!5953350))

(assert (=> d!1587863 m!5953350))

(declare-fun m!5953352 () Bool)

(assert (=> d!1587863 m!5953352))

(declare-fun m!5953354 () Bool)

(assert (=> d!1587863 m!5953354))

(assert (=> d!1587863 m!5953354))

(assert (=> b!4932772 d!1587863))

(declare-fun d!1587865 () Bool)

(assert (=> d!1587865 (= testedSuffix!70 lt!2031128)))

(declare-fun lt!2031274 () Unit!147441)

(declare-fun choose!36176 (List!56918 List!56918 List!56918 List!56918 List!56918) Unit!147441)

(assert (=> d!1587865 (= lt!2031274 (choose!36176 testedP!110 testedSuffix!70 testedP!110 lt!2031128 lt!2031127))))

(assert (=> d!1587865 (isPrefix!5012 testedP!110 lt!2031127)))

(assert (=> d!1587865 (= (lemmaSamePrefixThenSameSuffix!2410 testedP!110 testedSuffix!70 testedP!110 lt!2031128 lt!2031127) lt!2031274)))

(declare-fun bs!1180448 () Bool)

(assert (= bs!1180448 d!1587865))

(declare-fun m!5953356 () Bool)

(assert (=> bs!1180448 m!5953356))

(assert (=> bs!1180448 m!5953062))

(assert (=> b!4932772 d!1587865))

(declare-fun d!1587867 () Bool)

(declare-fun lt!2031277 () List!56918)

(assert (=> d!1587867 (= (++!12379 testedP!110 lt!2031277) lt!2031127)))

(declare-fun e!3082109 () List!56918)

(assert (=> d!1587867 (= lt!2031277 e!3082109)))

(declare-fun c!840699 () Bool)

(assert (=> d!1587867 (= c!840699 (is-Cons!56794 testedP!110))))

(assert (=> d!1587867 (>= (size!37605 lt!2031127) (size!37605 testedP!110))))

(assert (=> d!1587867 (= (getSuffix!2996 lt!2031127 testedP!110) lt!2031277)))

(declare-fun b!4932970 () Bool)

(assert (=> b!4932970 (= e!3082109 (getSuffix!2996 (tail!9690 lt!2031127) (t!367398 testedP!110)))))

(declare-fun b!4932971 () Bool)

(assert (=> b!4932971 (= e!3082109 lt!2031127)))

(assert (= (and d!1587867 c!840699) b!4932970))

(assert (= (and d!1587867 (not c!840699)) b!4932971))

(declare-fun m!5953358 () Bool)

(assert (=> d!1587867 m!5953358))

(assert (=> d!1587867 m!5953048))

(assert (=> d!1587867 m!5953074))

(assert (=> b!4932970 m!5953194))

(assert (=> b!4932970 m!5953194))

(declare-fun m!5953360 () Bool)

(assert (=> b!4932970 m!5953360))

(assert (=> b!4932772 d!1587867))

(declare-fun d!1587869 () Bool)

(assert (=> d!1587869 (isPrefix!5012 lt!2031127 lt!2031127)))

(declare-fun lt!2031280 () Unit!147441)

(declare-fun choose!36177 (List!56918 List!56918) Unit!147441)

(assert (=> d!1587869 (= lt!2031280 (choose!36177 lt!2031127 lt!2031127))))

(assert (=> d!1587869 (= (lemmaIsPrefixRefl!3378 lt!2031127 lt!2031127) lt!2031280)))

(declare-fun bs!1180449 () Bool)

(assert (= bs!1180449 d!1587869))

(assert (=> bs!1180449 m!5953094))

(declare-fun m!5953362 () Bool)

(assert (=> bs!1180449 m!5953362))

(assert (=> b!4932771 d!1587869))

(declare-fun b!4932973 () Bool)

(declare-fun res!2105278 () Bool)

(declare-fun e!3082110 () Bool)

(assert (=> b!4932973 (=> (not res!2105278) (not e!3082110))))

(assert (=> b!4932973 (= res!2105278 (= (head!10551 lt!2031127) (head!10551 lt!2031127)))))

(declare-fun b!4932972 () Bool)

(declare-fun e!3082112 () Bool)

(assert (=> b!4932972 (= e!3082112 e!3082110)))

(declare-fun res!2105277 () Bool)

(assert (=> b!4932972 (=> (not res!2105277) (not e!3082110))))

(assert (=> b!4932972 (= res!2105277 (not (is-Nil!56794 lt!2031127)))))

(declare-fun d!1587871 () Bool)

(declare-fun e!3082111 () Bool)

(assert (=> d!1587871 e!3082111))

(declare-fun res!2105276 () Bool)

(assert (=> d!1587871 (=> res!2105276 e!3082111)))

(declare-fun lt!2031281 () Bool)

(assert (=> d!1587871 (= res!2105276 (not lt!2031281))))

(assert (=> d!1587871 (= lt!2031281 e!3082112)))

(declare-fun res!2105275 () Bool)

(assert (=> d!1587871 (=> res!2105275 e!3082112)))

(assert (=> d!1587871 (= res!2105275 (is-Nil!56794 lt!2031127))))

(assert (=> d!1587871 (= (isPrefix!5012 lt!2031127 lt!2031127) lt!2031281)))

(declare-fun b!4932974 () Bool)

(assert (=> b!4932974 (= e!3082110 (isPrefix!5012 (tail!9690 lt!2031127) (tail!9690 lt!2031127)))))

(declare-fun b!4932975 () Bool)

(assert (=> b!4932975 (= e!3082111 (>= (size!37605 lt!2031127) (size!37605 lt!2031127)))))

(assert (= (and d!1587871 (not res!2105275)) b!4932972))

(assert (= (and b!4932972 res!2105277) b!4932973))

(assert (= (and b!4932973 res!2105278) b!4932974))

(assert (= (and d!1587871 (not res!2105276)) b!4932975))

(assert (=> b!4932973 m!5953192))

(assert (=> b!4932973 m!5953192))

(assert (=> b!4932974 m!5953194))

(assert (=> b!4932974 m!5953194))

(assert (=> b!4932974 m!5953194))

(assert (=> b!4932974 m!5953194))

(declare-fun m!5953364 () Bool)

(assert (=> b!4932974 m!5953364))

(assert (=> b!4932975 m!5953048))

(assert (=> b!4932975 m!5953048))

(assert (=> b!4932771 d!1587871))

(declare-fun d!1587873 () Bool)

(assert (=> d!1587873 (= lt!2031127 testedP!110)))

(declare-fun lt!2031284 () Unit!147441)

(declare-fun choose!36178 (List!56918 List!56918 List!56918) Unit!147441)

(assert (=> d!1587873 (= lt!2031284 (choose!36178 lt!2031127 testedP!110 lt!2031127))))

(assert (=> d!1587873 (isPrefix!5012 lt!2031127 lt!2031127)))

(assert (=> d!1587873 (= (lemmaIsPrefixSameLengthThenSameList!1136 lt!2031127 testedP!110 lt!2031127) lt!2031284)))

(declare-fun bs!1180450 () Bool)

(assert (= bs!1180450 d!1587873))

(declare-fun m!5953366 () Bool)

(assert (=> bs!1180450 m!5953366))

(assert (=> bs!1180450 m!5953094))

(assert (=> b!4932771 d!1587873))

(declare-fun condSetEmpty!27719 () Bool)

(assert (=> setNonEmpty!27713 (= condSetEmpty!27719 (= setRest!27713 (as set.empty (Set Context!6112))))))

(declare-fun setRes!27719 () Bool)

(assert (=> setNonEmpty!27713 (= tp!1384834 setRes!27719)))

(declare-fun setIsEmpty!27719 () Bool)

(assert (=> setIsEmpty!27719 setRes!27719))

(declare-fun tp!1384858 () Bool)

(declare-fun setNonEmpty!27719 () Bool)

(declare-fun e!3082115 () Bool)

(declare-fun setElem!27719 () Context!6112)

(assert (=> setNonEmpty!27719 (= setRes!27719 (and tp!1384858 (inv!73753 setElem!27719) e!3082115))))

(declare-fun setRest!27719 () (Set Context!6112))

(assert (=> setNonEmpty!27719 (= setRest!27713 (set.union (set.insert setElem!27719 (as set.empty (Set Context!6112))) setRest!27719))))

(declare-fun b!4932980 () Bool)

(declare-fun tp!1384859 () Bool)

(assert (=> b!4932980 (= e!3082115 tp!1384859)))

(assert (= (and setNonEmpty!27713 condSetEmpty!27719) setIsEmpty!27719))

(assert (= (and setNonEmpty!27713 (not condSetEmpty!27719)) setNonEmpty!27719))

(assert (= setNonEmpty!27719 b!4932980))

(declare-fun m!5953368 () Bool)

(assert (=> setNonEmpty!27719 m!5953368))

(declare-fun b!4932985 () Bool)

(declare-fun e!3082118 () Bool)

(declare-fun tp!1384862 () Bool)

(assert (=> b!4932985 (= e!3082118 (and tp_is_empty!36005 tp!1384862))))

(assert (=> b!4932778 (= tp!1384835 e!3082118)))

(assert (= (and b!4932778 (is-Cons!56794 (t!367398 testedSuffix!70))) b!4932985))

(declare-fun b!4932986 () Bool)

(declare-fun e!3082119 () Bool)

(declare-fun tp!1384863 () Bool)

(assert (=> b!4932986 (= e!3082119 (and tp_is_empty!36005 tp!1384863))))

(assert (=> b!4932768 (= tp!1384837 e!3082119)))

(assert (= (and b!4932768 (is-Cons!56794 (t!367398 testedP!110))) b!4932986))

(declare-fun b!4932991 () Bool)

(declare-fun e!3082122 () Bool)

(declare-fun tp!1384868 () Bool)

(declare-fun tp!1384869 () Bool)

(assert (=> b!4932991 (= e!3082122 (and tp!1384868 tp!1384869))))

(assert (=> b!4932767 (= tp!1384836 e!3082122)))

(assert (= (and b!4932767 (is-Cons!56795 (exprs!3556 setElem!27713))) b!4932991))

(declare-fun tp!1384877 () Bool)

(declare-fun tp!1384878 () Bool)

(declare-fun b!4933000 () Bool)

(declare-fun e!3082128 () Bool)

(assert (=> b!4933000 (= e!3082128 (and (inv!73754 (left!41419 (c!840642 totalInput!685))) tp!1384877 (inv!73754 (right!41749 (c!840642 totalInput!685))) tp!1384878))))

(declare-fun b!4933002 () Bool)

(declare-fun e!3082127 () Bool)

(declare-fun tp!1384876 () Bool)

(assert (=> b!4933002 (= e!3082127 tp!1384876)))

(declare-fun b!4933001 () Bool)

(declare-fun inv!73761 (IArray!29907) Bool)

(assert (=> b!4933001 (= e!3082128 (and (inv!73761 (xs!18247 (c!840642 totalInput!685))) e!3082127))))

(assert (=> b!4932776 (= tp!1384838 (and (inv!73754 (c!840642 totalInput!685)) e!3082128))))

(assert (= (and b!4932776 (is-Node!14923 (c!840642 totalInput!685))) b!4933000))

(assert (= b!4933001 b!4933002))

(assert (= (and b!4932776 (is-Leaf!24818 (c!840642 totalInput!685))) b!4933001))

(declare-fun m!5953370 () Bool)

(assert (=> b!4933000 m!5953370))

(declare-fun m!5953372 () Bool)

(assert (=> b!4933000 m!5953372))

(declare-fun m!5953374 () Bool)

(assert (=> b!4933001 m!5953374))

(assert (=> b!4932776 m!5953112))

(push 1)

(assert (not b!4933002))

(assert (not b!4932975))

(assert (not b!4932919))

(assert (not b!4932985))

(assert (not b!4932964))

(assert (not b!4932924))

(assert (not b!4932973))

(assert (not d!1587835))

(assert (not b!4932868))

(assert (not bm!344200))

(assert (not b!4933000))

(assert (not b!4932980))

(assert (not d!1587873))

(assert (not b!4932950))

(assert (not b!4932974))

(assert (not b!4932944))

(assert (not b!4932890))

(assert (not b!4932901))

(assert (not d!1587863))

(assert (not d!1587851))

(assert (not d!1587813))

(assert (not b!4932920))

(assert (not d!1587801))

(assert (not d!1587821))

(assert (not d!1587839))

(assert (not d!1587831))

(assert (not b!4932891))

(assert (not b!4932958))

(assert (not b!4932954))

(assert (not b!4932939))

(assert (not setNonEmpty!27719))

(assert (not b!4932965))

(assert tp_is_empty!36005)

(assert (not b!4932921))

(assert (not b!4932959))

(assert (not d!1587865))

(assert (not d!1587853))

(assert (not b!4932986))

(assert (not b!4932943))

(assert (not b!4932941))

(assert (not d!1587869))

(assert (not b!4932955))

(assert (not b!4932953))

(assert (not b!4932776))

(assert (not d!1587795))

(assert (not b!4932970))

(assert (not d!1587867))

(assert (not d!1587817))

(assert (not d!1587861))

(assert (not d!1587811))

(assert (not b!4932880))

(assert (not b!4932951))

(assert (not d!1587809))

(assert (not b!4932864))

(assert (not b!4932836))

(assert (not b!4932991))

(assert (not d!1587855))

(assert (not b!4932899))

(assert (not bm!344205))

(assert (not b!4932957))

(assert (not bm!344206))

(assert (not b!4932837))

(assert (not b!4933001))

(assert (not d!1587849))

(assert (not d!1587847))

(assert (not d!1587823))

(assert (not b!4932923))

(assert (not d!1587803))

(assert (not d!1587805))

(assert (not b!4932838))

(assert (not b!4932858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

