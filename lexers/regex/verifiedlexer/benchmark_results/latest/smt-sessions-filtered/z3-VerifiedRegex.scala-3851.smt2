; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213110 () Bool)

(assert start!213110)

(declare-fun setNonEmpty!18776 () Bool)

(declare-fun setRes!18776 () Bool)

(declare-datatypes ((C!12484 0))(
  ( (C!12485 (val!7228 Int)) )
))
(declare-datatypes ((Regex!6169 0))(
  ( (ElementMatch!6169 (c!349674 C!12484)) (Concat!10471 (regOne!12850 Regex!6169) (regTwo!12850 Regex!6169)) (EmptyExpr!6169) (Star!6169 (reg!6498 Regex!6169)) (EmptyLang!6169) (Union!6169 (regOne!12851 Regex!6169) (regTwo!12851 Regex!6169)) )
))
(declare-datatypes ((List!25624 0))(
  ( (Nil!25540) (Cons!25540 (h!30941 Regex!6169) (t!198230 List!25624)) )
))
(declare-datatypes ((Context!3478 0))(
  ( (Context!3479 (exprs!2239 List!25624)) )
))
(declare-fun setElem!18776 () Context!3478)

(declare-fun tp!683968 () Bool)

(declare-fun e!1403246 () Bool)

(declare-fun inv!34198 (Context!3478) Bool)

(assert (=> setNonEmpty!18776 (= setRes!18776 (and tp!683968 (inv!34198 setElem!18776) e!1403246))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3478))

(declare-fun setRest!18776 () (InoxSet Context!3478))

(assert (=> setNonEmpty!18776 (= z!3955 ((_ map or) (store ((as const (Array Context!3478 Bool)) false) setElem!18776 true) setRest!18776))))

(declare-fun b!2195739 () Bool)

(declare-fun e!1403248 () Bool)

(declare-datatypes ((List!25625 0))(
  ( (Nil!25541) (Cons!25541 (h!30942 C!12484) (t!198231 List!25625)) )
))
(declare-datatypes ((IArray!16615 0))(
  ( (IArray!16616 (innerList!8365 List!25625)) )
))
(declare-datatypes ((Conc!8305 0))(
  ( (Node!8305 (left!19608 Conc!8305) (right!19938 Conc!8305) (csize!16840 Int) (cheight!8516 Int)) (Leaf!12157 (xs!11247 IArray!16615) (csize!16841 Int)) (Empty!8305) )
))
(declare-datatypes ((BalanceConc!16372 0))(
  ( (BalanceConc!16373 (c!349675 Conc!8305)) )
))
(declare-fun totalInput!923 () BalanceConc!16372)

(declare-fun tp!683967 () Bool)

(declare-fun inv!34199 (Conc!8305) Bool)

(assert (=> b!2195739 (= e!1403248 (and (inv!34199 (c!349675 totalInput!923)) tp!683967))))

(declare-fun b!2195740 () Bool)

(declare-fun e!1403244 () Bool)

(declare-fun e!1403249 () Bool)

(assert (=> b!2195740 (= e!1403244 e!1403249)))

(declare-fun res!943904 () Bool)

(assert (=> b!2195740 (=> (not res!943904) (not e!1403249))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!821310 () Int)

(assert (=> b!2195740 (= res!943904 (and (<= from!1114 lt!821310) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19915 (BalanceConc!16372) Int)

(assert (=> b!2195740 (= lt!821310 (size!19915 totalInput!923))))

(declare-fun b!2195741 () Bool)

(declare-fun e!1403247 () Bool)

(assert (=> b!2195741 (= e!1403249 e!1403247)))

(declare-fun res!943902 () Bool)

(assert (=> b!2195741 (=> (not res!943902) (not e!1403247))))

(declare-fun e!1403243 () Int)

(declare-fun lt!821309 () (InoxSet Context!3478))

(declare-fun furthestNullablePosition!337 ((InoxSet Context!3478) Int BalanceConc!16372 Int Int) Int)

(assert (=> b!2195741 (= res!943902 (= (furthestNullablePosition!337 z!3955 from!1114 totalInput!923 lt!821310 lastNullablePos!193) (furthestNullablePosition!337 lt!821309 (+ 1 from!1114) totalInput!923 lt!821310 e!1403243)))))

(declare-fun c!349673 () Bool)

(declare-fun nullableZipper!449 ((InoxSet Context!3478)) Bool)

(assert (=> b!2195741 (= c!349673 (nullableZipper!449 lt!821309))))

(declare-fun derivationStepZipper!241 ((InoxSet Context!3478) C!12484) (InoxSet Context!3478))

(declare-fun apply!6237 (BalanceConc!16372 Int) C!12484)

(assert (=> b!2195741 (= lt!821309 (derivationStepZipper!241 z!3955 (apply!6237 totalInput!923 from!1114)))))

(declare-fun b!2195742 () Bool)

(assert (=> b!2195742 (= e!1403243 lastNullablePos!193)))

(declare-fun b!2195743 () Bool)

(declare-fun res!943905 () Bool)

(assert (=> b!2195743 (=> (not res!943905) (not e!1403249))))

(assert (=> b!2195743 (= res!943905 (not (= from!1114 lt!821310)))))

(declare-fun b!2195745 () Bool)

(declare-fun res!943906 () Bool)

(assert (=> b!2195745 (=> (not res!943906) (not e!1403249))))

(declare-fun e!1403245 () Bool)

(assert (=> b!2195745 (= res!943906 e!1403245)))

(declare-fun res!943901 () Bool)

(assert (=> b!2195745 (=> res!943901 e!1403245)))

(assert (=> b!2195745 (= res!943901 (not (nullableZipper!449 z!3955)))))

(declare-fun b!2195746 () Bool)

(assert (=> b!2195746 (= e!1403243 from!1114)))

(declare-fun b!2195747 () Bool)

(assert (=> b!2195747 (= e!1403247 (or (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!821310)))))

(declare-fun b!2195748 () Bool)

(declare-fun tp!683966 () Bool)

(assert (=> b!2195748 (= e!1403246 tp!683966)))

(declare-fun b!2195749 () Bool)

(assert (=> b!2195749 (= e!1403245 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18776 () Bool)

(assert (=> setIsEmpty!18776 setRes!18776))

(declare-fun b!2195744 () Bool)

(declare-fun res!943903 () Bool)

(assert (=> b!2195744 (=> (not res!943903) (not e!1403249))))

(declare-fun lostCauseZipper!285 ((InoxSet Context!3478)) Bool)

(assert (=> b!2195744 (= res!943903 (not (lostCauseZipper!285 z!3955)))))

(declare-fun res!943907 () Bool)

(assert (=> start!213110 (=> (not res!943907) (not e!1403244))))

(assert (=> start!213110 (= res!943907 (>= from!1114 0))))

(assert (=> start!213110 e!1403244))

(assert (=> start!213110 true))

(declare-fun inv!34200 (BalanceConc!16372) Bool)

(assert (=> start!213110 (and (inv!34200 totalInput!923) e!1403248)))

(declare-fun condSetEmpty!18776 () Bool)

(assert (=> start!213110 (= condSetEmpty!18776 (= z!3955 ((as const (Array Context!3478 Bool)) false)))))

(assert (=> start!213110 setRes!18776))

(assert (= (and start!213110 res!943907) b!2195740))

(assert (= (and b!2195740 res!943904) b!2195745))

(assert (= (and b!2195745 (not res!943901)) b!2195749))

(assert (= (and b!2195745 res!943906) b!2195743))

(assert (= (and b!2195743 res!943905) b!2195744))

(assert (= (and b!2195744 res!943903) b!2195741))

(assert (= (and b!2195741 c!349673) b!2195746))

(assert (= (and b!2195741 (not c!349673)) b!2195742))

(assert (= (and b!2195741 res!943902) b!2195747))

(assert (= start!213110 b!2195739))

(assert (= (and start!213110 condSetEmpty!18776) setIsEmpty!18776))

(assert (= (and start!213110 (not condSetEmpty!18776)) setNonEmpty!18776))

(assert (= setNonEmpty!18776 b!2195748))

(declare-fun m!2638305 () Bool)

(assert (=> b!2195739 m!2638305))

(declare-fun m!2638307 () Bool)

(assert (=> start!213110 m!2638307))

(declare-fun m!2638309 () Bool)

(assert (=> setNonEmpty!18776 m!2638309))

(declare-fun m!2638311 () Bool)

(assert (=> b!2195740 m!2638311))

(declare-fun m!2638313 () Bool)

(assert (=> b!2195744 m!2638313))

(declare-fun m!2638315 () Bool)

(assert (=> b!2195745 m!2638315))

(declare-fun m!2638317 () Bool)

(assert (=> b!2195741 m!2638317))

(declare-fun m!2638319 () Bool)

(assert (=> b!2195741 m!2638319))

(declare-fun m!2638321 () Bool)

(assert (=> b!2195741 m!2638321))

(declare-fun m!2638323 () Bool)

(assert (=> b!2195741 m!2638323))

(declare-fun m!2638325 () Bool)

(assert (=> b!2195741 m!2638325))

(assert (=> b!2195741 m!2638321))

(check-sat (not b!2195744) (not setNonEmpty!18776) (not b!2195748) (not b!2195740) (not b!2195741) (not b!2195745) (not start!213110) (not b!2195739))
(check-sat)
