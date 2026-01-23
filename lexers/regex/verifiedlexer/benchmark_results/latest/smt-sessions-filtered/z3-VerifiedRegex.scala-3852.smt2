; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213114 () Bool)

(assert start!213114)

(declare-fun setIsEmpty!18782 () Bool)

(declare-fun setRes!18782 () Bool)

(assert (=> setIsEmpty!18782 setRes!18782))

(declare-fun b!2195805 () Bool)

(declare-fun res!943947 () Bool)

(declare-fun e!1403285 () Bool)

(assert (=> b!2195805 (=> (not res!943947) (not e!1403285))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12488 0))(
  ( (C!12489 (val!7230 Int)) )
))
(declare-datatypes ((Regex!6171 0))(
  ( (ElementMatch!6171 (c!349684 C!12488)) (Concat!10473 (regOne!12854 Regex!6171) (regTwo!12854 Regex!6171)) (EmptyExpr!6171) (Star!6171 (reg!6500 Regex!6171)) (EmptyLang!6171) (Union!6171 (regOne!12855 Regex!6171) (regTwo!12855 Regex!6171)) )
))
(declare-datatypes ((List!25628 0))(
  ( (Nil!25544) (Cons!25544 (h!30945 Regex!6171) (t!198234 List!25628)) )
))
(declare-datatypes ((Context!3482 0))(
  ( (Context!3483 (exprs!2241 List!25628)) )
))
(declare-fun z!3955 () (InoxSet Context!3482))

(declare-fun lostCauseZipper!287 ((InoxSet Context!3482)) Bool)

(assert (=> b!2195805 (= res!943947 (not (lostCauseZipper!287 z!3955)))))

(declare-fun b!2195806 () Bool)

(declare-fun e!1403291 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2195806 (= e!1403291 from!1114)))

(declare-fun setNonEmpty!18782 () Bool)

(declare-fun tp!683984 () Bool)

(declare-fun e!1403289 () Bool)

(declare-fun setElem!18782 () Context!3482)

(declare-fun inv!34207 (Context!3482) Bool)

(assert (=> setNonEmpty!18782 (= setRes!18782 (and tp!683984 (inv!34207 setElem!18782) e!1403289))))

(declare-fun setRest!18782 () (InoxSet Context!3482))

(assert (=> setNonEmpty!18782 (= z!3955 ((_ map or) (store ((as const (Array Context!3482 Bool)) false) setElem!18782 true) setRest!18782))))

(declare-fun b!2195807 () Bool)

(declare-fun e!1403286 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2195807 (= e!1403286 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195808 () Bool)

(declare-fun res!943943 () Bool)

(assert (=> b!2195808 (=> (not res!943943) (not e!1403285))))

(assert (=> b!2195808 (= res!943943 e!1403286)))

(declare-fun res!943948 () Bool)

(assert (=> b!2195808 (=> res!943948 e!1403286)))

(declare-fun nullableZipper!451 ((InoxSet Context!3482)) Bool)

(assert (=> b!2195808 (= res!943948 (not (nullableZipper!451 z!3955)))))

(declare-fun b!2195809 () Bool)

(assert (=> b!2195809 (= e!1403291 lastNullablePos!193)))

(declare-fun b!2195810 () Bool)

(declare-fun tp!683986 () Bool)

(assert (=> b!2195810 (= e!1403289 tp!683986)))

(declare-fun b!2195811 () Bool)

(declare-fun e!1403287 () Bool)

(assert (=> b!2195811 (= e!1403285 e!1403287)))

(declare-fun res!943949 () Bool)

(assert (=> b!2195811 (=> (not res!943949) (not e!1403287))))

(declare-fun lt!821327 () Int)

(declare-fun lt!821326 () (InoxSet Context!3482))

(declare-fun lt!821328 () Int)

(declare-datatypes ((List!25629 0))(
  ( (Nil!25545) (Cons!25545 (h!30946 C!12488) (t!198235 List!25629)) )
))
(declare-datatypes ((IArray!16619 0))(
  ( (IArray!16620 (innerList!8367 List!25629)) )
))
(declare-datatypes ((Conc!8307 0))(
  ( (Node!8307 (left!19611 Conc!8307) (right!19941 Conc!8307) (csize!16844 Int) (cheight!8518 Int)) (Leaf!12160 (xs!11249 IArray!16619) (csize!16845 Int)) (Empty!8307) )
))
(declare-datatypes ((BalanceConc!16376 0))(
  ( (BalanceConc!16377 (c!349685 Conc!8307)) )
))
(declare-fun totalInput!923 () BalanceConc!16376)

(declare-fun furthestNullablePosition!339 ((InoxSet Context!3482) Int BalanceConc!16376 Int Int) Int)

(assert (=> b!2195811 (= res!943949 (= (furthestNullablePosition!339 z!3955 from!1114 totalInput!923 lt!821328 lastNullablePos!193) (furthestNullablePosition!339 lt!821326 (+ 1 from!1114) totalInput!923 lt!821328 lt!821327)))))

(assert (=> b!2195811 (= lt!821327 e!1403291)))

(declare-fun c!349683 () Bool)

(assert (=> b!2195811 (= c!349683 (nullableZipper!451 lt!821326))))

(declare-fun derivationStepZipper!243 ((InoxSet Context!3482) C!12488) (InoxSet Context!3482))

(declare-fun apply!6239 (BalanceConc!16376 Int) C!12488)

(assert (=> b!2195811 (= lt!821326 (derivationStepZipper!243 z!3955 (apply!6239 totalInput!923 from!1114)))))

(declare-fun res!943945 () Bool)

(declare-fun e!1403288 () Bool)

(assert (=> start!213114 (=> (not res!943945) (not e!1403288))))

(assert (=> start!213114 (= res!943945 (>= from!1114 0))))

(assert (=> start!213114 e!1403288))

(assert (=> start!213114 true))

(declare-fun e!1403290 () Bool)

(declare-fun inv!34208 (BalanceConc!16376) Bool)

(assert (=> start!213114 (and (inv!34208 totalInput!923) e!1403290)))

(declare-fun condSetEmpty!18782 () Bool)

(assert (=> start!213114 (= condSetEmpty!18782 (= z!3955 ((as const (Array Context!3482 Bool)) false)))))

(assert (=> start!213114 setRes!18782))

(declare-fun b!2195812 () Bool)

(assert (=> b!2195812 (= e!1403287 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821328) (or (< lt!821327 (- 1)) (>= lt!821327 (+ 1 from!1114)))))))

(declare-fun b!2195813 () Bool)

(assert (=> b!2195813 (= e!1403288 e!1403285)))

(declare-fun res!943946 () Bool)

(assert (=> b!2195813 (=> (not res!943946) (not e!1403285))))

(assert (=> b!2195813 (= res!943946 (and (<= from!1114 lt!821328) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19917 (BalanceConc!16376) Int)

(assert (=> b!2195813 (= lt!821328 (size!19917 totalInput!923))))

(declare-fun b!2195814 () Bool)

(declare-fun res!943944 () Bool)

(assert (=> b!2195814 (=> (not res!943944) (not e!1403285))))

(assert (=> b!2195814 (= res!943944 (not (= from!1114 lt!821328)))))

(declare-fun b!2195815 () Bool)

(declare-fun tp!683985 () Bool)

(declare-fun inv!34209 (Conc!8307) Bool)

(assert (=> b!2195815 (= e!1403290 (and (inv!34209 (c!349685 totalInput!923)) tp!683985))))

(assert (= (and start!213114 res!943945) b!2195813))

(assert (= (and b!2195813 res!943946) b!2195808))

(assert (= (and b!2195808 (not res!943948)) b!2195807))

(assert (= (and b!2195808 res!943943) b!2195814))

(assert (= (and b!2195814 res!943944) b!2195805))

(assert (= (and b!2195805 res!943947) b!2195811))

(assert (= (and b!2195811 c!349683) b!2195806))

(assert (= (and b!2195811 (not c!349683)) b!2195809))

(assert (= (and b!2195811 res!943949) b!2195812))

(assert (= start!213114 b!2195815))

(assert (= (and start!213114 condSetEmpty!18782) setIsEmpty!18782))

(assert (= (and start!213114 (not condSetEmpty!18782)) setNonEmpty!18782))

(assert (= setNonEmpty!18782 b!2195810))

(declare-fun m!2638349 () Bool)

(assert (=> setNonEmpty!18782 m!2638349))

(declare-fun m!2638351 () Bool)

(assert (=> b!2195815 m!2638351))

(declare-fun m!2638353 () Bool)

(assert (=> b!2195808 m!2638353))

(declare-fun m!2638355 () Bool)

(assert (=> b!2195811 m!2638355))

(declare-fun m!2638357 () Bool)

(assert (=> b!2195811 m!2638357))

(declare-fun m!2638359 () Bool)

(assert (=> b!2195811 m!2638359))

(declare-fun m!2638361 () Bool)

(assert (=> b!2195811 m!2638361))

(assert (=> b!2195811 m!2638357))

(declare-fun m!2638363 () Bool)

(assert (=> b!2195811 m!2638363))

(declare-fun m!2638365 () Bool)

(assert (=> start!213114 m!2638365))

(declare-fun m!2638367 () Bool)

(assert (=> b!2195805 m!2638367))

(declare-fun m!2638369 () Bool)

(assert (=> b!2195813 m!2638369))

(check-sat (not b!2195808) (not setNonEmpty!18782) (not b!2195815) (not b!2195805) (not b!2195813) (not b!2195811) (not start!213114) (not b!2195810))
(check-sat)
