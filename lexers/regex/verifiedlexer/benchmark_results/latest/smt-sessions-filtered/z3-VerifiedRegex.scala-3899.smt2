; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214478 () Bool)

(assert start!214478)

(declare-datatypes ((C!12676 0))(
  ( (C!12677 (val!7324 Int)) )
))
(declare-datatypes ((Regex!6265 0))(
  ( (ElementMatch!6265 (c!352238 C!12676)) (Concat!10567 (regOne!13042 Regex!6265) (regTwo!13042 Regex!6265)) (EmptyExpr!6265) (Star!6265 (reg!6594 Regex!6265)) (EmptyLang!6265) (Union!6265 (regOne!13043 Regex!6265) (regTwo!13043 Regex!6265)) )
))
(declare-datatypes ((List!25834 0))(
  ( (Nil!25750) (Cons!25750 (h!31151 Regex!6265) (t!198478 List!25834)) )
))
(declare-datatypes ((Context!3670 0))(
  ( (Context!3671 (exprs!2335 List!25834)) )
))
(declare-fun setElem!19164 () Context!3670)

(declare-fun tp!685800 () Bool)

(declare-fun setRes!19164 () Bool)

(declare-fun e!1409040 () Bool)

(declare-fun setNonEmpty!19164 () Bool)

(declare-fun inv!34708 (Context!3670) Bool)

(assert (=> setNonEmpty!19164 (= setRes!19164 (and tp!685800 (inv!34708 setElem!19164) e!1409040))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3888 () (InoxSet Context!3670))

(declare-fun setRest!19164 () (InoxSet Context!3670))

(assert (=> setNonEmpty!19164 (= z!3888 ((_ map or) (store ((as const (Array Context!3670 Bool)) false) setElem!19164 true) setRest!19164))))

(declare-fun b!2205546 () Bool)

(declare-fun tp!685799 () Bool)

(assert (=> b!2205546 (= e!1409040 tp!685799)))

(declare-fun b!2205547 () Bool)

(declare-fun e!1409043 () Bool)

(declare-fun e!1409042 () Bool)

(assert (=> b!2205547 (= e!1409043 e!1409042)))

(declare-fun res!947936 () Bool)

(assert (=> b!2205547 (=> (not res!947936) (not e!1409042))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824709 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2205547 (= res!947936 (and (<= from!1082 lt!824709) (>= knownSize!10 0) (<= knownSize!10 (- lt!824709 from!1082))))))

(declare-datatypes ((List!25835 0))(
  ( (Nil!25751) (Cons!25751 (h!31152 C!12676) (t!198479 List!25835)) )
))
(declare-datatypes ((IArray!16807 0))(
  ( (IArray!16808 (innerList!8461 List!25835)) )
))
(declare-datatypes ((Conc!8401 0))(
  ( (Node!8401 (left!19788 Conc!8401) (right!20118 Conc!8401) (csize!17032 Int) (cheight!8612 Int)) (Leaf!12301 (xs!11343 IArray!16807) (csize!17033 Int)) (Empty!8401) )
))
(declare-datatypes ((BalanceConc!16564 0))(
  ( (BalanceConc!16565 (c!352239 Conc!8401)) )
))
(declare-fun totalInput!891 () BalanceConc!16564)

(declare-fun size!20068 (BalanceConc!16564) Int)

(assert (=> b!2205547 (= lt!824709 (size!20068 totalInput!891))))

(declare-fun setIsEmpty!19164 () Bool)

(assert (=> setIsEmpty!19164 setRes!19164))

(declare-fun b!2205548 () Bool)

(declare-fun e!1409041 () Bool)

(declare-fun tp!685798 () Bool)

(declare-fun inv!34709 (Conc!8401) Bool)

(assert (=> b!2205548 (= e!1409041 (and (inv!34709 (c!352239 totalInput!891)) tp!685798))))

(declare-fun b!2205549 () Bool)

(assert (=> b!2205549 (= e!1409042 false)))

(declare-fun lt!824710 () Bool)

(declare-fun nullableZipper!545 ((InoxSet Context!3670)) Bool)

(assert (=> b!2205549 (= lt!824710 (nullableZipper!545 z!3888))))

(declare-fun res!947937 () Bool)

(assert (=> start!214478 (=> (not res!947937) (not e!1409043))))

(assert (=> start!214478 (= res!947937 (>= from!1082 0))))

(assert (=> start!214478 e!1409043))

(assert (=> start!214478 true))

(declare-fun inv!34710 (BalanceConc!16564) Bool)

(assert (=> start!214478 (and (inv!34710 totalInput!891) e!1409041)))

(declare-fun condSetEmpty!19164 () Bool)

(assert (=> start!214478 (= condSetEmpty!19164 (= z!3888 ((as const (Array Context!3670 Bool)) false)))))

(assert (=> start!214478 setRes!19164))

(declare-fun b!2205550 () Bool)

(declare-fun res!947939 () Bool)

(assert (=> b!2205550 (=> (not res!947939) (not e!1409042))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2205550 (= res!947939 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205551 () Bool)

(declare-fun res!947938 () Bool)

(assert (=> b!2205551 (=> (not res!947938) (not e!1409042))))

(declare-fun matchZipper!351 ((InoxSet Context!3670) List!25835) Bool)

(declare-fun take!443 (List!25835 Int) List!25835)

(declare-fun drop!1453 (List!25835 Int) List!25835)

(declare-fun list!9946 (BalanceConc!16564) List!25835)

(assert (=> b!2205551 (= res!947938 (matchZipper!351 z!3888 (take!443 (drop!1453 (list!9946 totalInput!891) from!1082) knownSize!10)))))

(assert (= (and start!214478 res!947937) b!2205547))

(assert (= (and b!2205547 res!947936) b!2205551))

(assert (= (and b!2205551 res!947938) b!2205550))

(assert (= (and b!2205550 res!947939) b!2205549))

(assert (= start!214478 b!2205548))

(assert (= (and start!214478 condSetEmpty!19164) setIsEmpty!19164))

(assert (= (and start!214478 (not condSetEmpty!19164)) setNonEmpty!19164))

(assert (= setNonEmpty!19164 b!2205546))

(declare-fun m!2647425 () Bool)

(assert (=> setNonEmpty!19164 m!2647425))

(declare-fun m!2647427 () Bool)

(assert (=> b!2205551 m!2647427))

(assert (=> b!2205551 m!2647427))

(declare-fun m!2647429 () Bool)

(assert (=> b!2205551 m!2647429))

(assert (=> b!2205551 m!2647429))

(declare-fun m!2647431 () Bool)

(assert (=> b!2205551 m!2647431))

(assert (=> b!2205551 m!2647431))

(declare-fun m!2647433 () Bool)

(assert (=> b!2205551 m!2647433))

(declare-fun m!2647435 () Bool)

(assert (=> start!214478 m!2647435))

(declare-fun m!2647437 () Bool)

(assert (=> b!2205549 m!2647437))

(declare-fun m!2647439 () Bool)

(assert (=> b!2205547 m!2647439))

(declare-fun m!2647441 () Bool)

(assert (=> b!2205548 m!2647441))

(check-sat (not setNonEmpty!19164) (not start!214478) (not b!2205547) (not b!2205546) (not b!2205551) (not b!2205548) (not b!2205549))
(check-sat)
