; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212486 () Bool)

(assert start!212486)

(declare-fun setIsEmpty!18480 () Bool)

(declare-fun setRes!18480 () Bool)

(assert (=> setIsEmpty!18480 setRes!18480))

(declare-fun b!2190394 () Bool)

(declare-fun e!1399713 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2190394 (= e!1399713 (= lastNullablePos!193 (- from!1114 1)))))

(declare-datatypes ((C!12316 0))(
  ( (C!12317 (val!7144 Int)) )
))
(declare-datatypes ((List!25443 0))(
  ( (Nil!25359) (Cons!25359 (h!30760 C!12316) (t!198041 List!25443)) )
))
(declare-datatypes ((IArray!16447 0))(
  ( (IArray!16448 (innerList!8281 List!25443)) )
))
(declare-datatypes ((Conc!8221 0))(
  ( (Node!8221 (left!19458 Conc!8221) (right!19788 Conc!8221) (csize!16672 Int) (cheight!8432 Int)) (Leaf!12031 (xs!11163 IArray!16447) (csize!16673 Int)) (Empty!8221) )
))
(declare-datatypes ((BalanceConc!16204 0))(
  ( (BalanceConc!16205 (c!348446 Conc!8221)) )
))
(declare-fun totalInput!923 () BalanceConc!16204)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6085 0))(
  ( (ElementMatch!6085 (c!348447 C!12316)) (Concat!10387 (regOne!12682 Regex!6085) (regTwo!12682 Regex!6085)) (EmptyExpr!6085) (Star!6085 (reg!6414 Regex!6085)) (EmptyLang!6085) (Union!6085 (regOne!12683 Regex!6085) (regTwo!12683 Regex!6085)) )
))
(declare-datatypes ((List!25444 0))(
  ( (Nil!25360) (Cons!25360 (h!30761 Regex!6085) (t!198042 List!25444)) )
))
(declare-datatypes ((Context!3310 0))(
  ( (Context!3311 (exprs!2155 List!25444)) )
))
(declare-fun lt!818353 () (InoxSet Context!3310))

(declare-fun lt!818348 () Int)

(declare-fun b!2190395 () Bool)

(declare-fun e!1399711 () Bool)

(declare-fun matchZipper!185 ((InoxSet Context!3310) List!25443) Bool)

(declare-fun take!277 (List!25443 Int) List!25443)

(declare-fun drop!1287 (List!25443 Int) List!25443)

(declare-fun list!9732 (BalanceConc!16204) List!25443)

(assert (=> b!2190395 (= e!1399711 (matchZipper!185 lt!818353 (take!277 (drop!1287 (list!9732 totalInput!923) (+ 1 from!1114)) lt!818348)))))

(declare-fun setElem!18480 () Context!3310)

(declare-fun e!1399717 () Bool)

(declare-fun tp!682857 () Bool)

(declare-fun setNonEmpty!18480 () Bool)

(declare-fun inv!33783 (Context!3310) Bool)

(assert (=> setNonEmpty!18480 (= setRes!18480 (and tp!682857 (inv!33783 setElem!18480) e!1399717))))

(declare-fun z!3955 () (InoxSet Context!3310))

(declare-fun setRest!18480 () (InoxSet Context!3310))

(assert (=> setNonEmpty!18480 (= z!3955 ((_ map or) (store ((as const (Array Context!3310 Bool)) false) setElem!18480 true) setRest!18480))))

(declare-fun b!2190396 () Bool)

(declare-fun res!941211 () Bool)

(declare-fun e!1399712 () Bool)

(assert (=> b!2190396 (=> (not res!941211) (not e!1399712))))

(assert (=> b!2190396 (= res!941211 e!1399713)))

(declare-fun res!941204 () Bool)

(assert (=> b!2190396 (=> res!941204 e!1399713)))

(declare-fun nullableZipper!365 ((InoxSet Context!3310)) Bool)

(assert (=> b!2190396 (= res!941204 (not (nullableZipper!365 z!3955)))))

(declare-fun lt!818352 () Int)

(declare-fun lt!818350 () Bool)

(declare-fun lt!818354 () Int)

(declare-fun e!1399716 () Bool)

(declare-fun b!2190397 () Bool)

(assert (=> b!2190397 (= e!1399716 (not (or (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818354) (< lt!818352 (- 1)) (>= lt!818352 (+ 1 from!1114)) (not lt!818350) (= lt!818352 from!1114))))))

(assert (=> b!2190397 e!1399711))

(declare-fun res!941208 () Bool)

(assert (=> b!2190397 (=> res!941208 e!1399711)))

(assert (=> b!2190397 (= res!941208 (<= lt!818348 0))))

(declare-fun lt!818351 () Int)

(assert (=> b!2190397 (= lt!818348 (+ 1 (- lt!818351 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38465 0))(
  ( (Unit!38466) )
))
(declare-fun lt!818347 () Unit!38465)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!90 ((InoxSet Context!3310) Int BalanceConc!16204 Int) Unit!38465)

(assert (=> b!2190397 (= lt!818347 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!90 lt!818353 (+ 1 from!1114) totalInput!923 lt!818352))))

(declare-fun res!941206 () Bool)

(declare-fun e!1399715 () Bool)

(assert (=> start!212486 (=> (not res!941206) (not e!1399715))))

(assert (=> start!212486 (= res!941206 (>= from!1114 0))))

(assert (=> start!212486 e!1399715))

(assert (=> start!212486 true))

(declare-fun e!1399714 () Bool)

(declare-fun inv!33784 (BalanceConc!16204) Bool)

(assert (=> start!212486 (and (inv!33784 totalInput!923) e!1399714)))

(declare-fun condSetEmpty!18480 () Bool)

(assert (=> start!212486 (= condSetEmpty!18480 (= z!3955 ((as const (Array Context!3310 Bool)) false)))))

(assert (=> start!212486 setRes!18480))

(declare-fun b!2190398 () Bool)

(declare-fun tp!682856 () Bool)

(assert (=> b!2190398 (= e!1399717 tp!682856)))

(declare-fun b!2190399 () Bool)

(declare-fun res!941207 () Bool)

(assert (=> b!2190399 (=> (not res!941207) (not e!1399712))))

(assert (=> b!2190399 (= res!941207 (not (= from!1114 lt!818354)))))

(declare-fun b!2190400 () Bool)

(declare-fun res!941209 () Bool)

(assert (=> b!2190400 (=> (not res!941209) (not e!1399712))))

(declare-fun lostCauseZipper!203 ((InoxSet Context!3310)) Bool)

(assert (=> b!2190400 (= res!941209 (not (lostCauseZipper!203 z!3955)))))

(declare-fun b!2190401 () Bool)

(assert (=> b!2190401 (= e!1399715 e!1399712)))

(declare-fun res!941210 () Bool)

(assert (=> b!2190401 (=> (not res!941210) (not e!1399712))))

(assert (=> b!2190401 (= res!941210 (and (<= from!1114 lt!818354) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19801 (BalanceConc!16204) Int)

(assert (=> b!2190401 (= lt!818354 (size!19801 totalInput!923))))

(declare-fun b!2190402 () Bool)

(declare-fun tp!682858 () Bool)

(declare-fun inv!33785 (Conc!8221) Bool)

(assert (=> b!2190402 (= e!1399714 (and (inv!33785 (c!348446 totalInput!923)) tp!682858))))

(declare-fun b!2190403 () Bool)

(assert (=> b!2190403 (= e!1399712 e!1399716)))

(declare-fun res!941205 () Bool)

(assert (=> b!2190403 (=> (not res!941205) (not e!1399716))))

(declare-fun lt!818349 () Int)

(assert (=> b!2190403 (= res!941205 (= lt!818349 lt!818351))))

(declare-fun furthestNullablePosition!255 ((InoxSet Context!3310) Int BalanceConc!16204 Int Int) Int)

(assert (=> b!2190403 (= lt!818351 (furthestNullablePosition!255 lt!818353 (+ 1 from!1114) totalInput!923 lt!818354 lt!818352))))

(assert (=> b!2190403 (= lt!818349 (furthestNullablePosition!255 z!3955 from!1114 totalInput!923 lt!818354 lastNullablePos!193))))

(assert (=> b!2190403 (= lt!818352 (ite lt!818350 from!1114 lastNullablePos!193))))

(assert (=> b!2190403 (= lt!818350 (nullableZipper!365 lt!818353))))

(declare-fun derivationStepZipper!162 ((InoxSet Context!3310) C!12316) (InoxSet Context!3310))

(declare-fun apply!6118 (BalanceConc!16204 Int) C!12316)

(assert (=> b!2190403 (= lt!818353 (derivationStepZipper!162 z!3955 (apply!6118 totalInput!923 from!1114)))))

(assert (= (and start!212486 res!941206) b!2190401))

(assert (= (and b!2190401 res!941210) b!2190396))

(assert (= (and b!2190396 (not res!941204)) b!2190394))

(assert (= (and b!2190396 res!941211) b!2190399))

(assert (= (and b!2190399 res!941207) b!2190400))

(assert (= (and b!2190400 res!941209) b!2190403))

(assert (= (and b!2190403 res!941205) b!2190397))

(assert (= (and b!2190397 (not res!941208)) b!2190395))

(assert (= start!212486 b!2190402))

(assert (= (and start!212486 condSetEmpty!18480) setIsEmpty!18480))

(assert (= (and start!212486 (not condSetEmpty!18480)) setNonEmpty!18480))

(assert (= setNonEmpty!18480 b!2190398))

(declare-fun m!2633283 () Bool)

(assert (=> b!2190403 m!2633283))

(declare-fun m!2633285 () Bool)

(assert (=> b!2190403 m!2633285))

(declare-fun m!2633287 () Bool)

(assert (=> b!2190403 m!2633287))

(declare-fun m!2633289 () Bool)

(assert (=> b!2190403 m!2633289))

(assert (=> b!2190403 m!2633285))

(declare-fun m!2633291 () Bool)

(assert (=> b!2190403 m!2633291))

(declare-fun m!2633293 () Bool)

(assert (=> b!2190395 m!2633293))

(assert (=> b!2190395 m!2633293))

(declare-fun m!2633295 () Bool)

(assert (=> b!2190395 m!2633295))

(assert (=> b!2190395 m!2633295))

(declare-fun m!2633297 () Bool)

(assert (=> b!2190395 m!2633297))

(assert (=> b!2190395 m!2633297))

(declare-fun m!2633299 () Bool)

(assert (=> b!2190395 m!2633299))

(declare-fun m!2633301 () Bool)

(assert (=> b!2190396 m!2633301))

(declare-fun m!2633303 () Bool)

(assert (=> b!2190400 m!2633303))

(declare-fun m!2633305 () Bool)

(assert (=> b!2190397 m!2633305))

(declare-fun m!2633307 () Bool)

(assert (=> b!2190402 m!2633307))

(declare-fun m!2633309 () Bool)

(assert (=> setNonEmpty!18480 m!2633309))

(declare-fun m!2633311 () Bool)

(assert (=> b!2190401 m!2633311))

(declare-fun m!2633313 () Bool)

(assert (=> start!212486 m!2633313))

(check-sat (not b!2190397) (not setNonEmpty!18480) (not b!2190401) (not b!2190395) (not start!212486) (not b!2190400) (not b!2190403) (not b!2190398) (not b!2190402) (not b!2190396))
(check-sat)
