; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213198 () Bool)

(assert start!213198)

(declare-fun b!2196579 () Bool)

(declare-fun e!1403808 () Bool)

(declare-fun e!1403814 () Bool)

(assert (=> b!2196579 (= e!1403808 e!1403814)))

(declare-fun res!944346 () Bool)

(assert (=> b!2196579 (=> (not res!944346) (not e!1403814))))

(declare-fun lt!821681 () Int)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2196579 (= res!944346 (and (<= from!1114 lt!821681) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12512 0))(
  ( (C!12513 (val!7242 Int)) )
))
(declare-datatypes ((List!25654 0))(
  ( (Nil!25570) (Cons!25570 (h!30971 C!12512) (t!198260 List!25654)) )
))
(declare-datatypes ((IArray!16643 0))(
  ( (IArray!16644 (innerList!8379 List!25654)) )
))
(declare-datatypes ((Conc!8319 0))(
  ( (Node!8319 (left!19633 Conc!8319) (right!19963 Conc!8319) (csize!16868 Int) (cheight!8530 Int)) (Leaf!12178 (xs!11261 IArray!16643) (csize!16869 Int)) (Empty!8319) )
))
(declare-datatypes ((BalanceConc!16400 0))(
  ( (BalanceConc!16401 (c!349862 Conc!8319)) )
))
(declare-fun totalInput!923 () BalanceConc!16400)

(declare-fun size!19934 (BalanceConc!16400) Int)

(assert (=> b!2196579 (= lt!821681 (size!19934 totalInput!923))))

(declare-fun b!2196580 () Bool)

(declare-fun e!1403813 () Bool)

(declare-fun lt!821684 () Int)

(assert (=> b!2196580 (= e!1403813 (or (>= from!1114 lt!821684) (<= 0 (- (- lt!821684 from!1114) 1))))))

(declare-fun size!19935 (List!25654) Int)

(declare-fun list!9833 (BalanceConc!16400) List!25654)

(assert (=> b!2196580 (= lt!821684 (size!19935 (list!9833 totalInput!923)))))

(declare-fun b!2196581 () Bool)

(declare-fun e!1403812 () Int)

(assert (=> b!2196581 (= e!1403812 lastNullablePos!193)))

(declare-fun setIsEmpty!18824 () Bool)

(declare-fun setRes!18824 () Bool)

(assert (=> setIsEmpty!18824 setRes!18824))

(declare-fun b!2196583 () Bool)

(declare-fun e!1403815 () Bool)

(declare-fun tp!684134 () Bool)

(assert (=> b!2196583 (= e!1403815 tp!684134)))

(declare-fun b!2196584 () Bool)

(declare-fun e!1403807 () Bool)

(declare-fun tp!684135 () Bool)

(declare-fun inv!34267 (Conc!8319) Bool)

(assert (=> b!2196584 (= e!1403807 (and (inv!34267 (c!349862 totalInput!923)) tp!684135))))

(declare-fun b!2196585 () Bool)

(declare-fun e!1403810 () Bool)

(assert (=> b!2196585 (= e!1403810 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2196586 () Bool)

(declare-fun res!944343 () Bool)

(assert (=> b!2196586 (=> (not res!944343) (not e!1403814))))

(assert (=> b!2196586 (= res!944343 e!1403810)))

(declare-fun res!944342 () Bool)

(assert (=> b!2196586 (=> res!944342 e!1403810)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6183 0))(
  ( (ElementMatch!6183 (c!349863 C!12512)) (Concat!10485 (regOne!12878 Regex!6183) (regTwo!12878 Regex!6183)) (EmptyExpr!6183) (Star!6183 (reg!6512 Regex!6183)) (EmptyLang!6183) (Union!6183 (regOne!12879 Regex!6183) (regTwo!12879 Regex!6183)) )
))
(declare-datatypes ((List!25655 0))(
  ( (Nil!25571) (Cons!25571 (h!30972 Regex!6183) (t!198261 List!25655)) )
))
(declare-datatypes ((Context!3506 0))(
  ( (Context!3507 (exprs!2253 List!25655)) )
))
(declare-fun z!3955 () (InoxSet Context!3506))

(declare-fun nullableZipper!463 ((InoxSet Context!3506)) Bool)

(assert (=> b!2196586 (= res!944342 (not (nullableZipper!463 z!3955)))))

(declare-fun b!2196587 () Bool)

(declare-fun res!944340 () Bool)

(assert (=> b!2196587 (=> (not res!944340) (not e!1403814))))

(assert (=> b!2196587 (= res!944340 (not (= from!1114 lt!821681)))))

(declare-fun res!944344 () Bool)

(assert (=> start!213198 (=> (not res!944344) (not e!1403808))))

(assert (=> start!213198 (= res!944344 (>= from!1114 0))))

(assert (=> start!213198 e!1403808))

(assert (=> start!213198 true))

(declare-fun inv!34268 (BalanceConc!16400) Bool)

(assert (=> start!213198 (and (inv!34268 totalInput!923) e!1403807)))

(declare-fun condSetEmpty!18824 () Bool)

(assert (=> start!213198 (= condSetEmpty!18824 (= z!3955 ((as const (Array Context!3506 Bool)) false)))))

(assert (=> start!213198 setRes!18824))

(declare-fun b!2196582 () Bool)

(declare-fun e!1403809 () Bool)

(assert (=> b!2196582 (= e!1403809 (not e!1403813))))

(declare-fun res!944347 () Bool)

(assert (=> b!2196582 (=> res!944347 e!1403813)))

(declare-fun lt!821680 () Int)

(declare-fun lt!821682 () Int)

(declare-fun lt!821679 () Int)

(declare-fun lt!821683 () Int)

(assert (=> b!2196582 (= res!944347 (or (> lt!821680 0) (> lt!821683 from!1114) (< lt!821683 lt!821682) (< lt!821682 lastNullablePos!193) (> lt!821682 from!1114) (and (not (= lt!821682 from!1114)) (not (= lt!821682 lastNullablePos!193))) (= lt!821682 lastNullablePos!193) (not (= (+ 1 (- lt!821679 from!1114)) 1))))))

(declare-fun e!1403811 () Bool)

(assert (=> b!2196582 e!1403811))

(declare-fun res!944341 () Bool)

(assert (=> b!2196582 (=> res!944341 e!1403811)))

(assert (=> b!2196582 (= res!944341 (<= lt!821680 0))))

(assert (=> b!2196582 (= lt!821680 (+ 1 (- lt!821683 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38681 0))(
  ( (Unit!38682) )
))
(declare-fun lt!821686 () Unit!38681)

(declare-fun lt!821685 () (InoxSet Context!3506))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!172 ((InoxSet Context!3506) Int BalanceConc!16400 Int) Unit!38681)

(assert (=> b!2196582 (= lt!821686 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!172 lt!821685 (+ 1 from!1114) totalInput!923 lt!821682))))

(declare-fun tp!684136 () Bool)

(declare-fun setNonEmpty!18824 () Bool)

(declare-fun setElem!18824 () Context!3506)

(declare-fun inv!34269 (Context!3506) Bool)

(assert (=> setNonEmpty!18824 (= setRes!18824 (and tp!684136 (inv!34269 setElem!18824) e!1403815))))

(declare-fun setRest!18824 () (InoxSet Context!3506))

(assert (=> setNonEmpty!18824 (= z!3955 ((_ map or) (store ((as const (Array Context!3506 Bool)) false) setElem!18824 true) setRest!18824))))

(declare-fun b!2196588 () Bool)

(assert (=> b!2196588 (= e!1403812 from!1114)))

(declare-fun b!2196589 () Bool)

(assert (=> b!2196589 (= e!1403814 e!1403809)))

(declare-fun res!944339 () Bool)

(assert (=> b!2196589 (=> (not res!944339) (not e!1403809))))

(assert (=> b!2196589 (= res!944339 (= lt!821679 lt!821683))))

(declare-fun furthestNullablePosition!351 ((InoxSet Context!3506) Int BalanceConc!16400 Int Int) Int)

(assert (=> b!2196589 (= lt!821683 (furthestNullablePosition!351 lt!821685 (+ 1 from!1114) totalInput!923 lt!821681 lt!821682))))

(assert (=> b!2196589 (= lt!821679 (furthestNullablePosition!351 z!3955 from!1114 totalInput!923 lt!821681 lastNullablePos!193))))

(assert (=> b!2196589 (= lt!821682 e!1403812)))

(declare-fun c!349861 () Bool)

(assert (=> b!2196589 (= c!349861 (nullableZipper!463 lt!821685))))

(declare-fun derivationStepZipper!255 ((InoxSet Context!3506) C!12512) (InoxSet Context!3506))

(declare-fun apply!6255 (BalanceConc!16400 Int) C!12512)

(assert (=> b!2196589 (= lt!821685 (derivationStepZipper!255 z!3955 (apply!6255 totalInput!923 from!1114)))))

(declare-fun b!2196590 () Bool)

(declare-fun matchZipper!269 ((InoxSet Context!3506) List!25654) Bool)

(declare-fun take!361 (List!25654 Int) List!25654)

(declare-fun drop!1371 (List!25654 Int) List!25654)

(assert (=> b!2196590 (= e!1403811 (matchZipper!269 lt!821685 (take!361 (drop!1371 (list!9833 totalInput!923) (+ 1 from!1114)) lt!821680)))))

(declare-fun b!2196591 () Bool)

(declare-fun res!944345 () Bool)

(assert (=> b!2196591 (=> (not res!944345) (not e!1403814))))

(declare-fun lostCauseZipper!299 ((InoxSet Context!3506)) Bool)

(assert (=> b!2196591 (= res!944345 (not (lostCauseZipper!299 z!3955)))))

(assert (= (and start!213198 res!944344) b!2196579))

(assert (= (and b!2196579 res!944346) b!2196586))

(assert (= (and b!2196586 (not res!944342)) b!2196585))

(assert (= (and b!2196586 res!944343) b!2196587))

(assert (= (and b!2196587 res!944340) b!2196591))

(assert (= (and b!2196591 res!944345) b!2196589))

(assert (= (and b!2196589 c!349861) b!2196588))

(assert (= (and b!2196589 (not c!349861)) b!2196581))

(assert (= (and b!2196589 res!944339) b!2196582))

(assert (= (and b!2196582 (not res!944341)) b!2196590))

(assert (= (and b!2196582 (not res!944347)) b!2196580))

(assert (= start!213198 b!2196584))

(assert (= (and start!213198 condSetEmpty!18824) setIsEmpty!18824))

(assert (= (and start!213198 (not condSetEmpty!18824)) setNonEmpty!18824))

(assert (= setNonEmpty!18824 b!2196583))

(declare-fun m!2638933 () Bool)

(assert (=> b!2196586 m!2638933))

(declare-fun m!2638935 () Bool)

(assert (=> b!2196591 m!2638935))

(declare-fun m!2638937 () Bool)

(assert (=> start!213198 m!2638937))

(declare-fun m!2638939 () Bool)

(assert (=> b!2196582 m!2638939))

(declare-fun m!2638941 () Bool)

(assert (=> b!2196579 m!2638941))

(declare-fun m!2638943 () Bool)

(assert (=> b!2196590 m!2638943))

(assert (=> b!2196590 m!2638943))

(declare-fun m!2638945 () Bool)

(assert (=> b!2196590 m!2638945))

(assert (=> b!2196590 m!2638945))

(declare-fun m!2638947 () Bool)

(assert (=> b!2196590 m!2638947))

(assert (=> b!2196590 m!2638947))

(declare-fun m!2638949 () Bool)

(assert (=> b!2196590 m!2638949))

(declare-fun m!2638951 () Bool)

(assert (=> b!2196584 m!2638951))

(declare-fun m!2638953 () Bool)

(assert (=> b!2196589 m!2638953))

(declare-fun m!2638955 () Bool)

(assert (=> b!2196589 m!2638955))

(declare-fun m!2638957 () Bool)

(assert (=> b!2196589 m!2638957))

(declare-fun m!2638959 () Bool)

(assert (=> b!2196589 m!2638959))

(assert (=> b!2196589 m!2638957))

(declare-fun m!2638961 () Bool)

(assert (=> b!2196589 m!2638961))

(assert (=> b!2196580 m!2638943))

(assert (=> b!2196580 m!2638943))

(declare-fun m!2638963 () Bool)

(assert (=> b!2196580 m!2638963))

(declare-fun m!2638965 () Bool)

(assert (=> setNonEmpty!18824 m!2638965))

(check-sat (not b!2196586) (not b!2196583) (not b!2196584) (not b!2196589) (not b!2196591) (not b!2196582) (not b!2196580) (not start!213198) (not b!2196579) (not setNonEmpty!18824) (not b!2196590))
(check-sat)
