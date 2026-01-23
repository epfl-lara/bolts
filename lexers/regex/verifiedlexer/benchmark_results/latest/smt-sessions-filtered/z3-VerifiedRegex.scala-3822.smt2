; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212538 () Bool)

(assert start!212538)

(declare-fun setIsEmpty!18558 () Bool)

(declare-fun setRes!18558 () Bool)

(assert (=> setIsEmpty!18558 setRes!18558))

(declare-fun b!2191285 () Bool)

(declare-fun e!1400322 () Bool)

(declare-fun tp!683090 () Bool)

(assert (=> b!2191285 (= e!1400322 tp!683090)))

(declare-fun b!2191286 () Bool)

(declare-fun res!941838 () Bool)

(declare-fun e!1400319 () Bool)

(assert (=> b!2191286 (=> (not res!941838) (not e!1400319))))

(declare-fun from!1114 () Int)

(declare-fun lt!818923 () Int)

(assert (=> b!2191286 (= res!941838 (not (= from!1114 lt!818923)))))

(declare-fun b!2191287 () Bool)

(declare-fun e!1400318 () Bool)

(declare-datatypes ((C!12368 0))(
  ( (C!12369 (val!7170 Int)) )
))
(declare-datatypes ((List!25495 0))(
  ( (Nil!25411) (Cons!25411 (h!30812 C!12368) (t!198093 List!25495)) )
))
(declare-datatypes ((IArray!16499 0))(
  ( (IArray!16500 (innerList!8307 List!25495)) )
))
(declare-datatypes ((Conc!8247 0))(
  ( (Node!8247 (left!19497 Conc!8247) (right!19827 Conc!8247) (csize!16724 Int) (cheight!8458 Int)) (Leaf!12070 (xs!11189 IArray!16499) (csize!16725 Int)) (Empty!8247) )
))
(declare-datatypes ((BalanceConc!16256 0))(
  ( (BalanceConc!16257 (c!348552 Conc!8247)) )
))
(declare-fun totalInput!923 () BalanceConc!16256)

(declare-fun tp!683091 () Bool)

(declare-fun inv!33900 (Conc!8247) Bool)

(assert (=> b!2191287 (= e!1400318 (and (inv!33900 (c!348552 totalInput!923)) tp!683091))))

(declare-fun b!2191288 () Bool)

(declare-fun e!1400317 () Bool)

(assert (=> b!2191288 (= e!1400317 e!1400319)))

(declare-fun res!941840 () Bool)

(assert (=> b!2191288 (=> (not res!941840) (not e!1400319))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191288 (= res!941840 (and (<= from!1114 lt!818923) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19828 (BalanceConc!16256) Int)

(assert (=> b!2191288 (= lt!818923 (size!19828 totalInput!923))))

(declare-fun res!941839 () Bool)

(assert (=> start!212538 (=> (not res!941839) (not e!1400317))))

(assert (=> start!212538 (= res!941839 (>= from!1114 0))))

(assert (=> start!212538 e!1400317))

(assert (=> start!212538 true))

(declare-fun inv!33901 (BalanceConc!16256) Bool)

(assert (=> start!212538 (and (inv!33901 totalInput!923) e!1400318)))

(declare-fun condSetEmpty!18558 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6111 0))(
  ( (ElementMatch!6111 (c!348553 C!12368)) (Concat!10413 (regOne!12734 Regex!6111) (regTwo!12734 Regex!6111)) (EmptyExpr!6111) (Star!6111 (reg!6440 Regex!6111)) (EmptyLang!6111) (Union!6111 (regOne!12735 Regex!6111) (regTwo!12735 Regex!6111)) )
))
(declare-datatypes ((List!25496 0))(
  ( (Nil!25412) (Cons!25412 (h!30813 Regex!6111) (t!198094 List!25496)) )
))
(declare-datatypes ((Context!3362 0))(
  ( (Context!3363 (exprs!2181 List!25496)) )
))
(declare-fun z!3955 () (InoxSet Context!3362))

(assert (=> start!212538 (= condSetEmpty!18558 (= z!3955 ((as const (Array Context!3362 Bool)) false)))))

(assert (=> start!212538 setRes!18558))

(declare-fun b!2191289 () Bool)

(declare-fun e!1400323 () Int)

(assert (=> b!2191289 (= e!1400323 from!1114)))

(declare-fun b!2191290 () Bool)

(declare-fun e!1400320 () Bool)

(assert (=> b!2191290 (= e!1400320 true)))

(declare-fun lt!818928 () Int)

(declare-fun size!19829 (List!25495) Int)

(declare-fun list!9758 (BalanceConc!16256) List!25495)

(assert (=> b!2191290 (= lt!818928 (size!19829 (list!9758 totalInput!923)))))

(declare-fun b!2191291 () Bool)

(declare-fun e!1400315 () Bool)

(assert (=> b!2191291 (= e!1400315 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191292 () Bool)

(declare-fun e!1400321 () Bool)

(assert (=> b!2191292 (= e!1400319 e!1400321)))

(declare-fun res!941833 () Bool)

(assert (=> b!2191292 (=> (not res!941833) (not e!1400321))))

(declare-fun lt!818925 () Int)

(declare-fun lt!818927 () Int)

(assert (=> b!2191292 (= res!941833 (= lt!818925 lt!818927))))

(declare-fun lt!818929 () Int)

(declare-fun lt!818924 () (InoxSet Context!3362))

(declare-fun furthestNullablePosition!281 ((InoxSet Context!3362) Int BalanceConc!16256 Int Int) Int)

(assert (=> b!2191292 (= lt!818927 (furthestNullablePosition!281 lt!818924 (+ 1 from!1114) totalInput!923 lt!818923 lt!818929))))

(assert (=> b!2191292 (= lt!818925 (furthestNullablePosition!281 z!3955 from!1114 totalInput!923 lt!818923 lastNullablePos!193))))

(assert (=> b!2191292 (= lt!818929 e!1400323)))

(declare-fun c!348551 () Bool)

(declare-fun nullableZipper!391 ((InoxSet Context!3362)) Bool)

(assert (=> b!2191292 (= c!348551 (nullableZipper!391 lt!818924))))

(declare-fun derivationStepZipper!188 ((InoxSet Context!3362) C!12368) (InoxSet Context!3362))

(declare-fun apply!6144 (BalanceConc!16256 Int) C!12368)

(assert (=> b!2191292 (= lt!818924 (derivationStepZipper!188 z!3955 (apply!6144 totalInput!923 from!1114)))))

(declare-fun b!2191293 () Bool)

(assert (=> b!2191293 (= e!1400321 (not e!1400320))))

(declare-fun res!941834 () Bool)

(assert (=> b!2191293 (=> res!941834 e!1400320)))

(declare-fun lt!818930 () Int)

(assert (=> b!2191293 (= res!941834 (or (> lt!818930 0) (> lt!818927 from!1114) (< lt!818927 lt!818929) (< lt!818929 lastNullablePos!193) (> lt!818929 from!1114) (and (not (= lt!818929 from!1114)) (not (= lt!818929 lastNullablePos!193))) (= lt!818929 lastNullablePos!193) (not (= (+ 1 (- lt!818925 from!1114)) 1))))))

(declare-fun e!1400316 () Bool)

(assert (=> b!2191293 e!1400316))

(declare-fun res!941835 () Bool)

(assert (=> b!2191293 (=> res!941835 e!1400316)))

(assert (=> b!2191293 (= res!941835 (<= lt!818930 0))))

(assert (=> b!2191293 (= lt!818930 (+ 1 (- lt!818927 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38517 0))(
  ( (Unit!38518) )
))
(declare-fun lt!818926 () Unit!38517)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!116 ((InoxSet Context!3362) Int BalanceConc!16256 Int) Unit!38517)

(assert (=> b!2191293 (= lt!818926 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!116 lt!818924 (+ 1 from!1114) totalInput!923 lt!818929))))

(declare-fun b!2191294 () Bool)

(declare-fun matchZipper!211 ((InoxSet Context!3362) List!25495) Bool)

(declare-fun take!303 (List!25495 Int) List!25495)

(declare-fun drop!1313 (List!25495 Int) List!25495)

(assert (=> b!2191294 (= e!1400316 (matchZipper!211 lt!818924 (take!303 (drop!1313 (list!9758 totalInput!923) (+ 1 from!1114)) lt!818930)))))

(declare-fun setNonEmpty!18558 () Bool)

(declare-fun setElem!18558 () Context!3362)

(declare-fun tp!683092 () Bool)

(declare-fun inv!33902 (Context!3362) Bool)

(assert (=> setNonEmpty!18558 (= setRes!18558 (and tp!683092 (inv!33902 setElem!18558) e!1400322))))

(declare-fun setRest!18558 () (InoxSet Context!3362))

(assert (=> setNonEmpty!18558 (= z!3955 ((_ map or) (store ((as const (Array Context!3362 Bool)) false) setElem!18558 true) setRest!18558))))

(declare-fun b!2191295 () Bool)

(declare-fun res!941841 () Bool)

(assert (=> b!2191295 (=> (not res!941841) (not e!1400319))))

(assert (=> b!2191295 (= res!941841 e!1400315)))

(declare-fun res!941837 () Bool)

(assert (=> b!2191295 (=> res!941837 e!1400315)))

(assert (=> b!2191295 (= res!941837 (not (nullableZipper!391 z!3955)))))

(declare-fun b!2191296 () Bool)

(declare-fun res!941836 () Bool)

(assert (=> b!2191296 (=> (not res!941836) (not e!1400319))))

(declare-fun lostCauseZipper!229 ((InoxSet Context!3362)) Bool)

(assert (=> b!2191296 (= res!941836 (not (lostCauseZipper!229 z!3955)))))

(declare-fun b!2191297 () Bool)

(assert (=> b!2191297 (= e!1400323 lastNullablePos!193)))

(assert (= (and start!212538 res!941839) b!2191288))

(assert (= (and b!2191288 res!941840) b!2191295))

(assert (= (and b!2191295 (not res!941837)) b!2191291))

(assert (= (and b!2191295 res!941841) b!2191286))

(assert (= (and b!2191286 res!941838) b!2191296))

(assert (= (and b!2191296 res!941836) b!2191292))

(assert (= (and b!2191292 c!348551) b!2191289))

(assert (= (and b!2191292 (not c!348551)) b!2191297))

(assert (= (and b!2191292 res!941833) b!2191293))

(assert (= (and b!2191293 (not res!941835)) b!2191294))

(assert (= (and b!2191293 (not res!941834)) b!2191290))

(assert (= start!212538 b!2191287))

(assert (= (and start!212538 condSetEmpty!18558) setIsEmpty!18558))

(assert (= (and start!212538 (not condSetEmpty!18558)) setNonEmpty!18558))

(assert (= setNonEmpty!18558 b!2191285))

(declare-fun m!2634117 () Bool)

(assert (=> b!2191287 m!2634117))

(declare-fun m!2634119 () Bool)

(assert (=> start!212538 m!2634119))

(declare-fun m!2634121 () Bool)

(assert (=> b!2191293 m!2634121))

(declare-fun m!2634123 () Bool)

(assert (=> setNonEmpty!18558 m!2634123))

(declare-fun m!2634125 () Bool)

(assert (=> b!2191288 m!2634125))

(declare-fun m!2634127 () Bool)

(assert (=> b!2191295 m!2634127))

(declare-fun m!2634129 () Bool)

(assert (=> b!2191290 m!2634129))

(assert (=> b!2191290 m!2634129))

(declare-fun m!2634131 () Bool)

(assert (=> b!2191290 m!2634131))

(declare-fun m!2634133 () Bool)

(assert (=> b!2191296 m!2634133))

(assert (=> b!2191294 m!2634129))

(assert (=> b!2191294 m!2634129))

(declare-fun m!2634135 () Bool)

(assert (=> b!2191294 m!2634135))

(assert (=> b!2191294 m!2634135))

(declare-fun m!2634137 () Bool)

(assert (=> b!2191294 m!2634137))

(assert (=> b!2191294 m!2634137))

(declare-fun m!2634139 () Bool)

(assert (=> b!2191294 m!2634139))

(declare-fun m!2634141 () Bool)

(assert (=> b!2191292 m!2634141))

(declare-fun m!2634143 () Bool)

(assert (=> b!2191292 m!2634143))

(assert (=> b!2191292 m!2634141))

(declare-fun m!2634145 () Bool)

(assert (=> b!2191292 m!2634145))

(declare-fun m!2634147 () Bool)

(assert (=> b!2191292 m!2634147))

(declare-fun m!2634149 () Bool)

(assert (=> b!2191292 m!2634149))

(check-sat (not b!2191288) (not b!2191287) (not start!212538) (not b!2191285) (not b!2191294) (not setNonEmpty!18558) (not b!2191293) (not b!2191292) (not b!2191290) (not b!2191296) (not b!2191295))
(check-sat)
