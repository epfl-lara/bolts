; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214150 () Bool)

(assert start!214150)

(declare-fun setIsEmpty!19108 () Bool)

(declare-fun setRes!19108 () Bool)

(assert (=> setIsEmpty!19108 setRes!19108))

(declare-fun b!2203667 () Bool)

(declare-fun res!947294 () Bool)

(declare-fun e!1407928 () Bool)

(assert (=> b!2203667 (=> (not res!947294) (not e!1407928))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2203667 (= res!947294 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203668 () Bool)

(declare-fun e!1407931 () Bool)

(declare-fun lt!823939 () Bool)

(assert (=> b!2203668 (= e!1407931 (not lt!823939))))

(declare-fun b!2203669 () Bool)

(declare-fun e!1407932 () Bool)

(assert (=> b!2203669 (= e!1407932 e!1407928)))

(declare-fun res!947301 () Bool)

(assert (=> b!2203669 (=> (not res!947301) (not e!1407928))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12652 0))(
  ( (C!12653 (val!7312 Int)) )
))
(declare-datatypes ((Regex!6253 0))(
  ( (ElementMatch!6253 (c!351648 C!12652)) (Concat!10555 (regOne!13018 Regex!6253) (regTwo!13018 Regex!6253)) (EmptyExpr!6253) (Star!6253 (reg!6582 Regex!6253)) (EmptyLang!6253) (Union!6253 (regOne!13019 Regex!6253) (regTwo!13019 Regex!6253)) )
))
(declare-datatypes ((List!25804 0))(
  ( (Nil!25720) (Cons!25720 (h!31121 Regex!6253) (t!198438 List!25804)) )
))
(declare-datatypes ((Context!3646 0))(
  ( (Context!3647 (exprs!2323 List!25804)) )
))
(declare-fun z!3888 () (InoxSet Context!3646))

(declare-datatypes ((List!25805 0))(
  ( (Nil!25721) (Cons!25721 (h!31122 C!12652) (t!198439 List!25805)) )
))
(declare-fun lt!823938 () List!25805)

(declare-fun matchZipper!339 ((InoxSet Context!3646) List!25805) Bool)

(assert (=> b!2203669 (= res!947301 (matchZipper!339 z!3888 lt!823938))))

(declare-fun lt!823941 () List!25805)

(declare-fun knownSize!10 () Int)

(declare-fun take!431 (List!25805 Int) List!25805)

(assert (=> b!2203669 (= lt!823938 (take!431 lt!823941 knownSize!10))))

(declare-datatypes ((IArray!16783 0))(
  ( (IArray!16784 (innerList!8449 List!25805)) )
))
(declare-datatypes ((Conc!8389 0))(
  ( (Node!8389 (left!19758 Conc!8389) (right!20088 Conc!8389) (csize!17008 Int) (cheight!8600 Int)) (Leaf!12283 (xs!11331 IArray!16783) (csize!17009 Int)) (Empty!8389) )
))
(declare-datatypes ((BalanceConc!16540 0))(
  ( (BalanceConc!16541 (c!351649 Conc!8389)) )
))
(declare-fun totalInput!891 () BalanceConc!16540)

(declare-fun drop!1441 (List!25805 Int) List!25805)

(declare-fun list!9927 (BalanceConc!16540) List!25805)

(assert (=> b!2203669 (= lt!823941 (drop!1441 (list!9927 totalInput!891) from!1082))))

(declare-fun b!2203671 () Bool)

(declare-fun e!1407927 () Bool)

(declare-fun tp!685505 () Bool)

(assert (=> b!2203671 (= e!1407927 tp!685505)))

(declare-fun b!2203672 () Bool)

(declare-datatypes ((Unit!38797 0))(
  ( (Unit!38798) )
))
(declare-fun e!1407929 () Unit!38797)

(declare-fun Unit!38799 () Unit!38797)

(assert (=> b!2203672 (= e!1407929 Unit!38799)))

(declare-fun lt!823940 () Unit!38797)

(declare-fun lemmaLostCauseCannotMatch!33 ((InoxSet Context!3646) List!25805) Unit!38797)

(assert (=> b!2203672 (= lt!823940 (lemmaLostCauseCannotMatch!33 z!3888 lt!823938))))

(assert (=> b!2203672 false))

(declare-fun b!2203673 () Bool)

(declare-fun e!1407924 () Bool)

(declare-fun tp!685504 () Bool)

(declare-fun inv!34637 (Conc!8389) Bool)

(assert (=> b!2203673 (= e!1407924 (and (inv!34637 (c!351649 totalInput!891)) tp!685504))))

(declare-fun b!2203674 () Bool)

(declare-fun e!1407925 () Bool)

(declare-fun e!1407926 () Bool)

(assert (=> b!2203674 (= e!1407925 e!1407926)))

(declare-fun res!947303 () Bool)

(assert (=> b!2203674 (=> (not res!947303) (not e!1407926))))

(declare-fun e!1407933 () Bool)

(assert (=> b!2203674 (= res!947303 e!1407933)))

(declare-fun res!947296 () Bool)

(assert (=> b!2203674 (=> res!947296 e!1407933)))

(declare-fun lt!823937 () Bool)

(assert (=> b!2203674 (= res!947296 lt!823937)))

(declare-fun lt!823942 () Int)

(assert (=> b!2203674 (= lt!823937 (= from!1082 lt!823942))))

(declare-fun b!2203675 () Bool)

(declare-fun e!1407930 () Bool)

(assert (=> b!2203675 (= e!1407930 e!1407932)))

(declare-fun res!947302 () Bool)

(assert (=> b!2203675 (=> (not res!947302) (not e!1407932))))

(assert (=> b!2203675 (= res!947302 (and (<= from!1082 lt!823942) (>= knownSize!10 0) (<= knownSize!10 (- lt!823942 from!1082))))))

(declare-fun size!20044 (BalanceConc!16540) Int)

(assert (=> b!2203675 (= lt!823942 (size!20044 totalInput!891))))

(declare-fun b!2203676 () Bool)

(declare-fun Unit!38800 () Unit!38797)

(assert (=> b!2203676 (= e!1407929 Unit!38800)))

(declare-fun b!2203677 () Bool)

(assert (=> b!2203677 (= e!1407926 e!1407931)))

(declare-fun res!947297 () Bool)

(assert (=> b!2203677 (=> (not res!947297) (not e!1407931))))

(declare-fun lt!823944 () Bool)

(assert (=> b!2203677 (= res!947297 (and (not lt!823944) lt!823937))))

(declare-fun lt!823943 () Unit!38797)

(assert (=> b!2203677 (= lt!823943 e!1407929)))

(declare-fun c!351647 () Bool)

(assert (=> b!2203677 (= c!351647 lt!823944)))

(declare-fun lostCauseZipper!353 ((InoxSet Context!3646)) Bool)

(assert (=> b!2203677 (= lt!823944 (lostCauseZipper!353 z!3888))))

(declare-fun res!947300 () Bool)

(assert (=> start!214150 (=> (not res!947300) (not e!1407930))))

(assert (=> start!214150 (= res!947300 (>= from!1082 0))))

(assert (=> start!214150 e!1407930))

(assert (=> start!214150 true))

(declare-fun inv!34638 (BalanceConc!16540) Bool)

(assert (=> start!214150 (and (inv!34638 totalInput!891) e!1407924)))

(declare-fun condSetEmpty!19108 () Bool)

(assert (=> start!214150 (= condSetEmpty!19108 (= z!3888 ((as const (Array Context!3646 Bool)) false)))))

(assert (=> start!214150 setRes!19108))

(declare-fun b!2203670 () Bool)

(declare-fun res!947293 () Bool)

(assert (=> b!2203670 (=> (not res!947293) (not e!1407925))))

(assert (=> b!2203670 (= res!947293 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2203678 () Bool)

(assert (=> b!2203678 (= e!1407928 e!1407925)))

(declare-fun res!947299 () Bool)

(assert (=> b!2203678 (=> (not res!947299) (not e!1407925))))

(assert (=> b!2203678 (= res!947299 (or (not lt!823939) (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!533 ((InoxSet Context!3646)) Bool)

(assert (=> b!2203678 (= lt!823939 (nullableZipper!533 z!3888))))

(declare-fun b!2203679 () Bool)

(assert (=> b!2203679 (= e!1407933 (lostCauseZipper!353 z!3888))))

(declare-fun b!2203680 () Bool)

(declare-fun res!947295 () Bool)

(assert (=> b!2203680 (=> (not res!947295) (not e!1407925))))

(declare-fun isEmpty!14697 (BalanceConc!16540) Bool)

(assert (=> b!2203680 (= res!947295 (not (isEmpty!14697 totalInput!891)))))

(declare-fun b!2203681 () Bool)

(declare-fun res!947298 () Bool)

(assert (=> b!2203681 (=> (not res!947298) (not e!1407931))))

(declare-fun isEmpty!14698 (List!25805) Bool)

(assert (=> b!2203681 (= res!947298 (isEmpty!14698 lt!823941))))

(declare-fun tp!685506 () Bool)

(declare-fun setNonEmpty!19108 () Bool)

(declare-fun setElem!19108 () Context!3646)

(declare-fun inv!34639 (Context!3646) Bool)

(assert (=> setNonEmpty!19108 (= setRes!19108 (and tp!685506 (inv!34639 setElem!19108) e!1407927))))

(declare-fun setRest!19108 () (InoxSet Context!3646))

(assert (=> setNonEmpty!19108 (= z!3888 ((_ map or) (store ((as const (Array Context!3646 Bool)) false) setElem!19108 true) setRest!19108))))

(assert (= (and start!214150 res!947300) b!2203675))

(assert (= (and b!2203675 res!947302) b!2203669))

(assert (= (and b!2203669 res!947301) b!2203667))

(assert (= (and b!2203667 res!947294) b!2203678))

(assert (= (and b!2203678 res!947299) b!2203680))

(assert (= (and b!2203680 res!947295) b!2203670))

(assert (= (and b!2203670 res!947293) b!2203674))

(assert (= (and b!2203674 (not res!947296)) b!2203679))

(assert (= (and b!2203674 res!947303) b!2203677))

(assert (= (and b!2203677 c!351647) b!2203672))

(assert (= (and b!2203677 (not c!351647)) b!2203676))

(assert (= (and b!2203677 res!947297) b!2203681))

(assert (= (and b!2203681 res!947298) b!2203668))

(assert (= start!214150 b!2203673))

(assert (= (and start!214150 condSetEmpty!19108) setIsEmpty!19108))

(assert (= (and start!214150 (not condSetEmpty!19108)) setNonEmpty!19108))

(assert (= setNonEmpty!19108 b!2203671))

(declare-fun m!2645553 () Bool)

(assert (=> b!2203679 m!2645553))

(declare-fun m!2645555 () Bool)

(assert (=> b!2203681 m!2645555))

(declare-fun m!2645557 () Bool)

(assert (=> b!2203669 m!2645557))

(declare-fun m!2645559 () Bool)

(assert (=> b!2203669 m!2645559))

(declare-fun m!2645561 () Bool)

(assert (=> b!2203669 m!2645561))

(assert (=> b!2203669 m!2645561))

(declare-fun m!2645563 () Bool)

(assert (=> b!2203669 m!2645563))

(declare-fun m!2645565 () Bool)

(assert (=> start!214150 m!2645565))

(declare-fun m!2645567 () Bool)

(assert (=> b!2203672 m!2645567))

(declare-fun m!2645569 () Bool)

(assert (=> b!2203678 m!2645569))

(declare-fun m!2645571 () Bool)

(assert (=> b!2203673 m!2645571))

(assert (=> b!2203677 m!2645553))

(declare-fun m!2645573 () Bool)

(assert (=> b!2203680 m!2645573))

(declare-fun m!2645575 () Bool)

(assert (=> setNonEmpty!19108 m!2645575))

(declare-fun m!2645577 () Bool)

(assert (=> b!2203675 m!2645577))

(check-sat (not b!2203673) (not b!2203679) (not b!2203680) (not b!2203675) (not start!214150) (not b!2203681) (not b!2203671) (not setNonEmpty!19108) (not b!2203669) (not b!2203672) (not b!2203678) (not b!2203677))
(check-sat)
