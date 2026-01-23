; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212474 () Bool)

(assert start!212474)

(declare-fun b!2190188 () Bool)

(declare-fun e!1399572 () Bool)

(declare-fun e!1399576 () Bool)

(assert (=> b!2190188 (= e!1399572 e!1399576)))

(declare-fun res!941060 () Bool)

(assert (=> b!2190188 (=> (not res!941060) (not e!1399576))))

(declare-fun lt!818216 () Int)

(declare-fun lt!818219 () Int)

(assert (=> b!2190188 (= res!941060 (= lt!818216 lt!818219))))

(declare-datatypes ((C!12304 0))(
  ( (C!12305 (val!7138 Int)) )
))
(declare-datatypes ((List!25431 0))(
  ( (Nil!25347) (Cons!25347 (h!30748 C!12304) (t!198029 List!25431)) )
))
(declare-datatypes ((IArray!16435 0))(
  ( (IArray!16436 (innerList!8275 List!25431)) )
))
(declare-datatypes ((Conc!8215 0))(
  ( (Node!8215 (left!19449 Conc!8215) (right!19779 Conc!8215) (csize!16660 Int) (cheight!8426 Int)) (Leaf!12022 (xs!11157 IArray!16435) (csize!16661 Int)) (Empty!8215) )
))
(declare-datatypes ((BalanceConc!16192 0))(
  ( (BalanceConc!16193 (c!348422 Conc!8215)) )
))
(declare-fun totalInput!923 () BalanceConc!16192)

(declare-fun from!1114 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6079 0))(
  ( (ElementMatch!6079 (c!348423 C!12304)) (Concat!10381 (regOne!12670 Regex!6079) (regTwo!12670 Regex!6079)) (EmptyExpr!6079) (Star!6079 (reg!6408 Regex!6079)) (EmptyLang!6079) (Union!6079 (regOne!12671 Regex!6079) (regTwo!12671 Regex!6079)) )
))
(declare-datatypes ((List!25432 0))(
  ( (Nil!25348) (Cons!25348 (h!30749 Regex!6079) (t!198030 List!25432)) )
))
(declare-datatypes ((Context!3298 0))(
  ( (Context!3299 (exprs!2149 List!25432)) )
))
(declare-fun lt!818222 () (InoxSet Context!3298))

(declare-fun lt!818220 () Int)

(declare-fun lt!818218 () Int)

(declare-fun furthestNullablePosition!249 ((InoxSet Context!3298) Int BalanceConc!16192 Int Int) Int)

(assert (=> b!2190188 (= lt!818219 (furthestNullablePosition!249 lt!818222 (+ 1 from!1114) totalInput!923 lt!818220 lt!818218))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun z!3955 () (InoxSet Context!3298))

(assert (=> b!2190188 (= lt!818216 (furthestNullablePosition!249 z!3955 from!1114 totalInput!923 lt!818220 lastNullablePos!193))))

(declare-fun e!1399575 () Int)

(assert (=> b!2190188 (= lt!818218 e!1399575)))

(declare-fun c!348421 () Bool)

(declare-fun nullableZipper!359 ((InoxSet Context!3298)) Bool)

(assert (=> b!2190188 (= c!348421 (nullableZipper!359 lt!818222))))

(declare-fun derivationStepZipper!156 ((InoxSet Context!3298) C!12304) (InoxSet Context!3298))

(declare-fun apply!6112 (BalanceConc!16192 Int) C!12304)

(assert (=> b!2190188 (= lt!818222 (derivationStepZipper!156 z!3955 (apply!6112 totalInput!923 from!1114)))))

(declare-fun b!2190189 () Bool)

(declare-fun e!1399574 () Bool)

(assert (=> b!2190189 (= e!1399574 e!1399572)))

(declare-fun res!941065 () Bool)

(assert (=> b!2190189 (=> (not res!941065) (not e!1399572))))

(assert (=> b!2190189 (= res!941065 (and (<= from!1114 lt!818220) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19795 (BalanceConc!16192) Int)

(assert (=> b!2190189 (= lt!818220 (size!19795 totalInput!923))))

(declare-fun b!2190190 () Bool)

(assert (=> b!2190190 (= e!1399576 (not (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818220))))))

(declare-fun e!1399578 () Bool)

(assert (=> b!2190190 e!1399578))

(declare-fun res!941062 () Bool)

(assert (=> b!2190190 (=> res!941062 e!1399578)))

(declare-fun lt!818221 () Int)

(assert (=> b!2190190 (= res!941062 (<= lt!818221 0))))

(assert (=> b!2190190 (= lt!818221 (+ 1 (- lt!818219 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38453 0))(
  ( (Unit!38454) )
))
(declare-fun lt!818217 () Unit!38453)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!84 ((InoxSet Context!3298) Int BalanceConc!16192 Int) Unit!38453)

(assert (=> b!2190190 (= lt!818217 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!84 lt!818222 (+ 1 from!1114) totalInput!923 lt!818218))))

(declare-fun setIsEmpty!18462 () Bool)

(declare-fun setRes!18462 () Bool)

(assert (=> setIsEmpty!18462 setRes!18462))

(declare-fun b!2190191 () Bool)

(declare-fun e!1399577 () Bool)

(declare-fun tp!682804 () Bool)

(assert (=> b!2190191 (= e!1399577 tp!682804)))

(declare-fun b!2190192 () Bool)

(assert (=> b!2190192 (= e!1399575 lastNullablePos!193)))

(declare-fun tp!682802 () Bool)

(declare-fun setNonEmpty!18462 () Bool)

(declare-fun setElem!18462 () Context!3298)

(declare-fun inv!33756 (Context!3298) Bool)

(assert (=> setNonEmpty!18462 (= setRes!18462 (and tp!682802 (inv!33756 setElem!18462) e!1399577))))

(declare-fun setRest!18462 () (InoxSet Context!3298))

(assert (=> setNonEmpty!18462 (= z!3955 ((_ map or) (store ((as const (Array Context!3298 Bool)) false) setElem!18462 true) setRest!18462))))

(declare-fun b!2190193 () Bool)

(declare-fun matchZipper!179 ((InoxSet Context!3298) List!25431) Bool)

(declare-fun take!271 (List!25431 Int) List!25431)

(declare-fun drop!1281 (List!25431 Int) List!25431)

(declare-fun list!9726 (BalanceConc!16192) List!25431)

(assert (=> b!2190193 (= e!1399578 (matchZipper!179 lt!818222 (take!271 (drop!1281 (list!9726 totalInput!923) (+ 1 from!1114)) lt!818221)))))

(declare-fun b!2190194 () Bool)

(declare-fun res!941067 () Bool)

(assert (=> b!2190194 (=> (not res!941067) (not e!1399572))))

(declare-fun lostCauseZipper!197 ((InoxSet Context!3298)) Bool)

(assert (=> b!2190194 (= res!941067 (not (lostCauseZipper!197 z!3955)))))

(declare-fun b!2190195 () Bool)

(declare-fun e!1399573 () Bool)

(declare-fun tp!682803 () Bool)

(declare-fun inv!33757 (Conc!8215) Bool)

(assert (=> b!2190195 (= e!1399573 (and (inv!33757 (c!348422 totalInput!923)) tp!682803))))

(declare-fun b!2190196 () Bool)

(declare-fun res!941064 () Bool)

(assert (=> b!2190196 (=> (not res!941064) (not e!1399572))))

(assert (=> b!2190196 (= res!941064 (not (= from!1114 lt!818220)))))

(declare-fun b!2190197 () Bool)

(declare-fun e!1399579 () Bool)

(assert (=> b!2190197 (= e!1399579 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun res!941061 () Bool)

(assert (=> start!212474 (=> (not res!941061) (not e!1399574))))

(assert (=> start!212474 (= res!941061 (>= from!1114 0))))

(assert (=> start!212474 e!1399574))

(assert (=> start!212474 true))

(declare-fun inv!33758 (BalanceConc!16192) Bool)

(assert (=> start!212474 (and (inv!33758 totalInput!923) e!1399573)))

(declare-fun condSetEmpty!18462 () Bool)

(assert (=> start!212474 (= condSetEmpty!18462 (= z!3955 ((as const (Array Context!3298 Bool)) false)))))

(assert (=> start!212474 setRes!18462))

(declare-fun b!2190198 () Bool)

(declare-fun res!941066 () Bool)

(assert (=> b!2190198 (=> (not res!941066) (not e!1399572))))

(assert (=> b!2190198 (= res!941066 e!1399579)))

(declare-fun res!941063 () Bool)

(assert (=> b!2190198 (=> res!941063 e!1399579)))

(assert (=> b!2190198 (= res!941063 (not (nullableZipper!359 z!3955)))))

(declare-fun b!2190199 () Bool)

(assert (=> b!2190199 (= e!1399575 from!1114)))

(assert (= (and start!212474 res!941061) b!2190189))

(assert (= (and b!2190189 res!941065) b!2190198))

(assert (= (and b!2190198 (not res!941063)) b!2190197))

(assert (= (and b!2190198 res!941066) b!2190196))

(assert (= (and b!2190196 res!941064) b!2190194))

(assert (= (and b!2190194 res!941067) b!2190188))

(assert (= (and b!2190188 c!348421) b!2190199))

(assert (= (and b!2190188 (not c!348421)) b!2190192))

(assert (= (and b!2190188 res!941060) b!2190190))

(assert (= (and b!2190190 (not res!941062)) b!2190193))

(assert (= start!212474 b!2190195))

(assert (= (and start!212474 condSetEmpty!18462) setIsEmpty!18462))

(assert (= (and start!212474 (not condSetEmpty!18462)) setNonEmpty!18462))

(assert (= setNonEmpty!18462 b!2190191))

(declare-fun m!2633091 () Bool)

(assert (=> b!2190194 m!2633091))

(declare-fun m!2633093 () Bool)

(assert (=> b!2190188 m!2633093))

(declare-fun m!2633095 () Bool)

(assert (=> b!2190188 m!2633095))

(declare-fun m!2633097 () Bool)

(assert (=> b!2190188 m!2633097))

(declare-fun m!2633099 () Bool)

(assert (=> b!2190188 m!2633099))

(assert (=> b!2190188 m!2633097))

(declare-fun m!2633101 () Bool)

(assert (=> b!2190188 m!2633101))

(declare-fun m!2633103 () Bool)

(assert (=> b!2190190 m!2633103))

(declare-fun m!2633105 () Bool)

(assert (=> b!2190189 m!2633105))

(declare-fun m!2633107 () Bool)

(assert (=> b!2190193 m!2633107))

(assert (=> b!2190193 m!2633107))

(declare-fun m!2633109 () Bool)

(assert (=> b!2190193 m!2633109))

(assert (=> b!2190193 m!2633109))

(declare-fun m!2633111 () Bool)

(assert (=> b!2190193 m!2633111))

(assert (=> b!2190193 m!2633111))

(declare-fun m!2633113 () Bool)

(assert (=> b!2190193 m!2633113))

(declare-fun m!2633115 () Bool)

(assert (=> start!212474 m!2633115))

(declare-fun m!2633117 () Bool)

(assert (=> setNonEmpty!18462 m!2633117))

(declare-fun m!2633119 () Bool)

(assert (=> b!2190195 m!2633119))

(declare-fun m!2633121 () Bool)

(assert (=> b!2190198 m!2633121))

(check-sat (not setNonEmpty!18462) (not b!2190194) (not b!2190193) (not b!2190191) (not b!2190189) (not b!2190195) (not b!2190188) (not b!2190198) (not start!212474) (not b!2190190))
(check-sat)
