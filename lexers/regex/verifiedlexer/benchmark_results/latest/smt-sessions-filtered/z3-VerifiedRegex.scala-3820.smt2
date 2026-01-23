; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212530 () Bool)

(assert start!212530)

(declare-fun res!941739 () Bool)

(declare-fun e!1400220 () Bool)

(assert (=> start!212530 (=> (not res!941739) (not e!1400220))))

(declare-fun from!1114 () Int)

(assert (=> start!212530 (= res!941739 (>= from!1114 0))))

(assert (=> start!212530 e!1400220))

(assert (=> start!212530 true))

(declare-datatypes ((C!12360 0))(
  ( (C!12361 (val!7166 Int)) )
))
(declare-datatypes ((List!25487 0))(
  ( (Nil!25403) (Cons!25403 (h!30804 C!12360) (t!198085 List!25487)) )
))
(declare-datatypes ((IArray!16491 0))(
  ( (IArray!16492 (innerList!8303 List!25487)) )
))
(declare-datatypes ((Conc!8243 0))(
  ( (Node!8243 (left!19491 Conc!8243) (right!19821 Conc!8243) (csize!16716 Int) (cheight!8454 Int)) (Leaf!12064 (xs!11185 IArray!16491) (csize!16717 Int)) (Empty!8243) )
))
(declare-datatypes ((BalanceConc!16248 0))(
  ( (BalanceConc!16249 (c!348538 Conc!8243)) )
))
(declare-fun totalInput!923 () BalanceConc!16248)

(declare-fun e!1400226 () Bool)

(declare-fun inv!33882 (BalanceConc!16248) Bool)

(assert (=> start!212530 (and (inv!33882 totalInput!923) e!1400226)))

(declare-fun condSetEmpty!18546 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6107 0))(
  ( (ElementMatch!6107 (c!348539 C!12360)) (Concat!10409 (regOne!12726 Regex!6107) (regTwo!12726 Regex!6107)) (EmptyExpr!6107) (Star!6107 (reg!6436 Regex!6107)) (EmptyLang!6107) (Union!6107 (regOne!12727 Regex!6107) (regTwo!12727 Regex!6107)) )
))
(declare-datatypes ((List!25488 0))(
  ( (Nil!25404) (Cons!25404 (h!30805 Regex!6107) (t!198086 List!25488)) )
))
(declare-datatypes ((Context!3354 0))(
  ( (Context!3355 (exprs!2177 List!25488)) )
))
(declare-fun z!3955 () (InoxSet Context!3354))

(assert (=> start!212530 (= condSetEmpty!18546 (= z!3955 ((as const (Array Context!3354 Bool)) false)))))

(declare-fun setRes!18546 () Bool)

(assert (=> start!212530 setRes!18546))

(declare-fun b!2191148 () Bool)

(declare-fun e!1400222 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191148 (= e!1400222 lastNullablePos!193)))

(declare-fun b!2191149 () Bool)

(declare-fun tp!683054 () Bool)

(declare-fun inv!33883 (Conc!8243) Bool)

(assert (=> b!2191149 (= e!1400226 (and (inv!33883 (c!348538 totalInput!923)) tp!683054))))

(declare-fun b!2191150 () Bool)

(declare-fun e!1400225 () Bool)

(assert (=> b!2191150 (= e!1400220 e!1400225)))

(declare-fun res!941737 () Bool)

(assert (=> b!2191150 (=> (not res!941737) (not e!1400225))))

(declare-fun lt!818832 () Int)

(assert (=> b!2191150 (= res!941737 (and (<= from!1114 lt!818832) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19823 (BalanceConc!16248) Int)

(assert (=> b!2191150 (= lt!818832 (size!19823 totalInput!923))))

(declare-fun b!2191151 () Bool)

(declare-fun e!1400227 () Bool)

(assert (=> b!2191151 (= e!1400227 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18546 () Bool)

(assert (=> setIsEmpty!18546 setRes!18546))

(declare-fun b!2191152 () Bool)

(declare-fun e!1400221 () Bool)

(assert (=> b!2191152 (= e!1400225 e!1400221)))

(declare-fun res!941735 () Bool)

(assert (=> b!2191152 (=> (not res!941735) (not e!1400221))))

(declare-fun lt!818828 () Int)

(declare-fun lt!818834 () Int)

(assert (=> b!2191152 (= res!941735 (= lt!818828 lt!818834))))

(declare-fun lt!818829 () Int)

(declare-fun lt!818830 () (InoxSet Context!3354))

(declare-fun furthestNullablePosition!277 ((InoxSet Context!3354) Int BalanceConc!16248 Int Int) Int)

(assert (=> b!2191152 (= lt!818834 (furthestNullablePosition!277 lt!818830 (+ 1 from!1114) totalInput!923 lt!818832 lt!818829))))

(assert (=> b!2191152 (= lt!818828 (furthestNullablePosition!277 z!3955 from!1114 totalInput!923 lt!818832 lastNullablePos!193))))

(assert (=> b!2191152 (= lt!818829 e!1400222)))

(declare-fun c!348537 () Bool)

(declare-fun nullableZipper!387 ((InoxSet Context!3354)) Bool)

(assert (=> b!2191152 (= c!348537 (nullableZipper!387 lt!818830))))

(declare-fun derivationStepZipper!184 ((InoxSet Context!3354) C!12360) (InoxSet Context!3354))

(declare-fun apply!6140 (BalanceConc!16248 Int) C!12360)

(assert (=> b!2191152 (= lt!818830 (derivationStepZipper!184 z!3955 (apply!6140 totalInput!923 from!1114)))))

(declare-fun b!2191153 () Bool)

(declare-fun e!1400224 () Bool)

(declare-fun tp!683056 () Bool)

(assert (=> b!2191153 (= e!1400224 tp!683056)))

(declare-fun b!2191154 () Bool)

(declare-fun e!1400223 () Bool)

(declare-fun lt!818833 () Int)

(declare-fun matchZipper!207 ((InoxSet Context!3354) List!25487) Bool)

(declare-fun take!299 (List!25487 Int) List!25487)

(declare-fun drop!1309 (List!25487 Int) List!25487)

(declare-fun list!9754 (BalanceConc!16248) List!25487)

(assert (=> b!2191154 (= e!1400223 (matchZipper!207 lt!818830 (take!299 (drop!1309 (list!9754 totalInput!923) (+ 1 from!1114)) lt!818833)))))

(declare-fun b!2191155 () Bool)

(declare-fun res!941738 () Bool)

(assert (=> b!2191155 (=> (not res!941738) (not e!1400225))))

(assert (=> b!2191155 (= res!941738 e!1400227)))

(declare-fun res!941732 () Bool)

(assert (=> b!2191155 (=> res!941732 e!1400227)))

(assert (=> b!2191155 (= res!941732 (not (nullableZipper!387 z!3955)))))

(declare-fun b!2191156 () Bool)

(declare-fun res!941736 () Bool)

(assert (=> b!2191156 (=> (not res!941736) (not e!1400225))))

(declare-fun lostCauseZipper!225 ((InoxSet Context!3354)) Bool)

(assert (=> b!2191156 (= res!941736 (not (lostCauseZipper!225 z!3955)))))

(declare-fun b!2191157 () Bool)

(assert (=> b!2191157 (= e!1400221 (not (or (> lt!818833 0) (> lt!818834 from!1114) (< lt!818834 lt!818829) (< lt!818829 lastNullablePos!193) (> lt!818829 from!1114) (and (not (= lt!818829 from!1114)) (not (= lt!818829 lastNullablePos!193))) (not (= lt!818829 lastNullablePos!193)) (>= lt!818829 from!1114) (> lt!818828 from!1114) (let ((bdg!82486 (+ 1 (- lt!818828 from!1114)))) (or (> bdg!82486 1) (not (= bdg!82486 1)) (not (= lt!818828 from!1114)) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818832) (and (>= lt!818829 (- 1)) (< lt!818829 (+ 1 from!1114))))))))))

(assert (=> b!2191157 e!1400223))

(declare-fun res!941734 () Bool)

(assert (=> b!2191157 (=> res!941734 e!1400223)))

(assert (=> b!2191157 (= res!941734 (<= lt!818833 0))))

(assert (=> b!2191157 (= lt!818833 (+ 1 (- lt!818834 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38509 0))(
  ( (Unit!38510) )
))
(declare-fun lt!818831 () Unit!38509)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!112 ((InoxSet Context!3354) Int BalanceConc!16248 Int) Unit!38509)

(assert (=> b!2191157 (= lt!818831 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!112 lt!818830 (+ 1 from!1114) totalInput!923 lt!818829))))

(declare-fun b!2191158 () Bool)

(assert (=> b!2191158 (= e!1400222 from!1114)))

(declare-fun b!2191159 () Bool)

(declare-fun res!941733 () Bool)

(assert (=> b!2191159 (=> (not res!941733) (not e!1400225))))

(assert (=> b!2191159 (= res!941733 (not (= from!1114 lt!818832)))))

(declare-fun setNonEmpty!18546 () Bool)

(declare-fun setElem!18546 () Context!3354)

(declare-fun tp!683055 () Bool)

(declare-fun inv!33884 (Context!3354) Bool)

(assert (=> setNonEmpty!18546 (= setRes!18546 (and tp!683055 (inv!33884 setElem!18546) e!1400224))))

(declare-fun setRest!18546 () (InoxSet Context!3354))

(assert (=> setNonEmpty!18546 (= z!3955 ((_ map or) (store ((as const (Array Context!3354 Bool)) false) setElem!18546 true) setRest!18546))))

(assert (= (and start!212530 res!941739) b!2191150))

(assert (= (and b!2191150 res!941737) b!2191155))

(assert (= (and b!2191155 (not res!941732)) b!2191151))

(assert (= (and b!2191155 res!941738) b!2191159))

(assert (= (and b!2191159 res!941733) b!2191156))

(assert (= (and b!2191156 res!941736) b!2191152))

(assert (= (and b!2191152 c!348537) b!2191158))

(assert (= (and b!2191152 (not c!348537)) b!2191148))

(assert (= (and b!2191152 res!941735) b!2191157))

(assert (= (and b!2191157 (not res!941734)) b!2191154))

(assert (= start!212530 b!2191149))

(assert (= (and start!212530 condSetEmpty!18546) setIsEmpty!18546))

(assert (= (and start!212530 (not condSetEmpty!18546)) setNonEmpty!18546))

(assert (= setNonEmpty!18546 b!2191153))

(declare-fun m!2633987 () Bool)

(assert (=> b!2191152 m!2633987))

(declare-fun m!2633989 () Bool)

(assert (=> b!2191152 m!2633989))

(declare-fun m!2633991 () Bool)

(assert (=> b!2191152 m!2633991))

(declare-fun m!2633993 () Bool)

(assert (=> b!2191152 m!2633993))

(assert (=> b!2191152 m!2633993))

(declare-fun m!2633995 () Bool)

(assert (=> b!2191152 m!2633995))

(declare-fun m!2633997 () Bool)

(assert (=> start!212530 m!2633997))

(declare-fun m!2633999 () Bool)

(assert (=> b!2191155 m!2633999))

(declare-fun m!2634001 () Bool)

(assert (=> b!2191157 m!2634001))

(declare-fun m!2634003 () Bool)

(assert (=> b!2191149 m!2634003))

(declare-fun m!2634005 () Bool)

(assert (=> b!2191154 m!2634005))

(assert (=> b!2191154 m!2634005))

(declare-fun m!2634007 () Bool)

(assert (=> b!2191154 m!2634007))

(assert (=> b!2191154 m!2634007))

(declare-fun m!2634009 () Bool)

(assert (=> b!2191154 m!2634009))

(assert (=> b!2191154 m!2634009))

(declare-fun m!2634011 () Bool)

(assert (=> b!2191154 m!2634011))

(declare-fun m!2634013 () Bool)

(assert (=> setNonEmpty!18546 m!2634013))

(declare-fun m!2634015 () Bool)

(assert (=> b!2191150 m!2634015))

(declare-fun m!2634017 () Bool)

(assert (=> b!2191156 m!2634017))

(check-sat (not b!2191155) (not setNonEmpty!18546) (not b!2191153) (not b!2191152) (not start!212530) (not b!2191157) (not b!2191156) (not b!2191150) (not b!2191154) (not b!2191149))
(check-sat)
