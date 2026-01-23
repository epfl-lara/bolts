; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212470 () Bool)

(assert start!212470)

(declare-fun b!2190120 () Bool)

(declare-fun res!941014 () Bool)

(declare-fun e!1399528 () Bool)

(assert (=> b!2190120 (=> (not res!941014) (not e!1399528))))

(declare-fun e!1399529 () Bool)

(assert (=> b!2190120 (= res!941014 e!1399529)))

(declare-fun res!941017 () Bool)

(assert (=> b!2190120 (=> res!941017 e!1399529)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12300 0))(
  ( (C!12301 (val!7136 Int)) )
))
(declare-datatypes ((Regex!6077 0))(
  ( (ElementMatch!6077 (c!348412 C!12300)) (Concat!10379 (regOne!12666 Regex!6077) (regTwo!12666 Regex!6077)) (EmptyExpr!6077) (Star!6077 (reg!6406 Regex!6077)) (EmptyLang!6077) (Union!6077 (regOne!12667 Regex!6077) (regTwo!12667 Regex!6077)) )
))
(declare-datatypes ((List!25427 0))(
  ( (Nil!25343) (Cons!25343 (h!30744 Regex!6077) (t!198025 List!25427)) )
))
(declare-datatypes ((Context!3294 0))(
  ( (Context!3295 (exprs!2147 List!25427)) )
))
(declare-fun z!3955 () (InoxSet Context!3294))

(declare-fun nullableZipper!357 ((InoxSet Context!3294)) Bool)

(assert (=> b!2190120 (= res!941017 (not (nullableZipper!357 z!3955)))))

(declare-fun b!2190121 () Bool)

(declare-fun res!941019 () Bool)

(assert (=> b!2190121 (=> (not res!941019) (not e!1399528))))

(declare-fun from!1114 () Int)

(declare-fun lt!818176 () Int)

(assert (=> b!2190121 (= res!941019 (not (= from!1114 lt!818176)))))

(declare-fun res!941015 () Bool)

(declare-fun e!1399530 () Bool)

(assert (=> start!212470 (=> (not res!941015) (not e!1399530))))

(assert (=> start!212470 (= res!941015 (>= from!1114 0))))

(assert (=> start!212470 e!1399530))

(assert (=> start!212470 true))

(declare-datatypes ((List!25428 0))(
  ( (Nil!25344) (Cons!25344 (h!30745 C!12300) (t!198026 List!25428)) )
))
(declare-datatypes ((IArray!16431 0))(
  ( (IArray!16432 (innerList!8273 List!25428)) )
))
(declare-datatypes ((Conc!8213 0))(
  ( (Node!8213 (left!19446 Conc!8213) (right!19776 Conc!8213) (csize!16656 Int) (cheight!8424 Int)) (Leaf!12019 (xs!11155 IArray!16431) (csize!16657 Int)) (Empty!8213) )
))
(declare-datatypes ((BalanceConc!16188 0))(
  ( (BalanceConc!16189 (c!348413 Conc!8213)) )
))
(declare-fun totalInput!923 () BalanceConc!16188)

(declare-fun e!1399527 () Bool)

(declare-fun inv!33747 (BalanceConc!16188) Bool)

(assert (=> start!212470 (and (inv!33747 totalInput!923) e!1399527)))

(declare-fun condSetEmpty!18456 () Bool)

(assert (=> start!212470 (= condSetEmpty!18456 (= z!3955 ((as const (Array Context!3294 Bool)) false)))))

(declare-fun setRes!18456 () Bool)

(assert (=> start!212470 setRes!18456))

(declare-fun tp!682784 () Bool)

(declare-fun setNonEmpty!18456 () Bool)

(declare-fun setElem!18456 () Context!3294)

(declare-fun e!1399531 () Bool)

(declare-fun inv!33748 (Context!3294) Bool)

(assert (=> setNonEmpty!18456 (= setRes!18456 (and tp!682784 (inv!33748 setElem!18456) e!1399531))))

(declare-fun setRest!18456 () (InoxSet Context!3294))

(assert (=> setNonEmpty!18456 (= z!3955 ((_ map or) (store ((as const (Array Context!3294 Bool)) false) setElem!18456 true) setRest!18456))))

(declare-fun b!2190122 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190122 (= e!1399529 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190123 () Bool)

(declare-fun res!941018 () Bool)

(assert (=> b!2190123 (=> (not res!941018) (not e!1399528))))

(declare-fun lostCauseZipper!195 ((InoxSet Context!3294)) Bool)

(assert (=> b!2190123 (= res!941018 (not (lostCauseZipper!195 z!3955)))))

(declare-fun b!2190124 () Bool)

(declare-fun tp!682786 () Bool)

(declare-fun inv!33749 (Conc!8213) Bool)

(assert (=> b!2190124 (= e!1399527 (and (inv!33749 (c!348413 totalInput!923)) tp!682786))))

(declare-fun b!2190125 () Bool)

(assert (=> b!2190125 (= e!1399528 false)))

(declare-fun lt!818180 () Bool)

(declare-fun lt!818178 () (InoxSet Context!3294))

(declare-fun lt!818177 () Int)

(declare-fun furthestNullablePosition!247 ((InoxSet Context!3294) Int BalanceConc!16188 Int Int) Int)

(assert (=> b!2190125 (= lt!818177 (furthestNullablePosition!247 lt!818178 (+ 1 from!1114) totalInput!923 lt!818176 (ite lt!818180 from!1114 lastNullablePos!193)))))

(declare-fun lt!818179 () Int)

(assert (=> b!2190125 (= lt!818179 (furthestNullablePosition!247 z!3955 from!1114 totalInput!923 lt!818176 lastNullablePos!193))))

(assert (=> b!2190125 (= lt!818180 (nullableZipper!357 lt!818178))))

(declare-fun derivationStepZipper!154 ((InoxSet Context!3294) C!12300) (InoxSet Context!3294))

(declare-fun apply!6110 (BalanceConc!16188 Int) C!12300)

(assert (=> b!2190125 (= lt!818178 (derivationStepZipper!154 z!3955 (apply!6110 totalInput!923 from!1114)))))

(declare-fun setIsEmpty!18456 () Bool)

(assert (=> setIsEmpty!18456 setRes!18456))

(declare-fun b!2190126 () Bool)

(assert (=> b!2190126 (= e!1399530 e!1399528)))

(declare-fun res!941016 () Bool)

(assert (=> b!2190126 (=> (not res!941016) (not e!1399528))))

(assert (=> b!2190126 (= res!941016 (and (<= from!1114 lt!818176) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19793 (BalanceConc!16188) Int)

(assert (=> b!2190126 (= lt!818176 (size!19793 totalInput!923))))

(declare-fun b!2190127 () Bool)

(declare-fun tp!682785 () Bool)

(assert (=> b!2190127 (= e!1399531 tp!682785)))

(assert (= (and start!212470 res!941015) b!2190126))

(assert (= (and b!2190126 res!941016) b!2190120))

(assert (= (and b!2190120 (not res!941017)) b!2190122))

(assert (= (and b!2190120 res!941014) b!2190121))

(assert (= (and b!2190121 res!941019) b!2190123))

(assert (= (and b!2190123 res!941018) b!2190125))

(assert (= start!212470 b!2190124))

(assert (= (and start!212470 condSetEmpty!18456) setIsEmpty!18456))

(assert (= (and start!212470 (not condSetEmpty!18456)) setNonEmpty!18456))

(assert (= setNonEmpty!18456 b!2190127))

(declare-fun m!2633037 () Bool)

(assert (=> b!2190123 m!2633037))

(declare-fun m!2633039 () Bool)

(assert (=> setNonEmpty!18456 m!2633039))

(declare-fun m!2633041 () Bool)

(assert (=> b!2190126 m!2633041))

(declare-fun m!2633043 () Bool)

(assert (=> b!2190120 m!2633043))

(declare-fun m!2633045 () Bool)

(assert (=> b!2190124 m!2633045))

(declare-fun m!2633047 () Bool)

(assert (=> b!2190125 m!2633047))

(declare-fun m!2633049 () Bool)

(assert (=> b!2190125 m!2633049))

(declare-fun m!2633051 () Bool)

(assert (=> b!2190125 m!2633051))

(assert (=> b!2190125 m!2633049))

(declare-fun m!2633053 () Bool)

(assert (=> b!2190125 m!2633053))

(declare-fun m!2633055 () Bool)

(assert (=> b!2190125 m!2633055))

(declare-fun m!2633057 () Bool)

(assert (=> start!212470 m!2633057))

(check-sat (not b!2190126) (not b!2190120) (not setNonEmpty!18456) (not b!2190125) (not start!212470) (not b!2190124) (not b!2190127) (not b!2190123))
(check-sat)
