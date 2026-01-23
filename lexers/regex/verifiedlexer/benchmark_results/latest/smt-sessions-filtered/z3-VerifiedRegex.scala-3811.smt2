; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212494 () Bool)

(assert start!212494)

(declare-fun b!2190536 () Bool)

(declare-fun res!941301 () Bool)

(declare-fun e!1399807 () Bool)

(assert (=> b!2190536 (=> (not res!941301) (not e!1399807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12324 0))(
  ( (C!12325 (val!7148 Int)) )
))
(declare-datatypes ((Regex!6089 0))(
  ( (ElementMatch!6089 (c!348466 C!12324)) (Concat!10391 (regOne!12690 Regex!6089) (regTwo!12690 Regex!6089)) (EmptyExpr!6089) (Star!6089 (reg!6418 Regex!6089)) (EmptyLang!6089) (Union!6089 (regOne!12691 Regex!6089) (regTwo!12691 Regex!6089)) )
))
(declare-datatypes ((List!25451 0))(
  ( (Nil!25367) (Cons!25367 (h!30768 Regex!6089) (t!198049 List!25451)) )
))
(declare-datatypes ((Context!3318 0))(
  ( (Context!3319 (exprs!2159 List!25451)) )
))
(declare-fun z!3955 () (InoxSet Context!3318))

(declare-fun lostCauseZipper!207 ((InoxSet Context!3318)) Bool)

(assert (=> b!2190536 (= res!941301 (not (lostCauseZipper!207 z!3955)))))

(declare-datatypes ((List!25452 0))(
  ( (Nil!25368) (Cons!25368 (h!30769 C!12324) (t!198050 List!25452)) )
))
(declare-datatypes ((IArray!16455 0))(
  ( (IArray!16456 (innerList!8285 List!25452)) )
))
(declare-datatypes ((Conc!8225 0))(
  ( (Node!8225 (left!19464 Conc!8225) (right!19794 Conc!8225) (csize!16680 Int) (cheight!8436 Int)) (Leaf!12037 (xs!11167 IArray!16455) (csize!16681 Int)) (Empty!8225) )
))
(declare-datatypes ((BalanceConc!16212 0))(
  ( (BalanceConc!16213 (c!348467 Conc!8225)) )
))
(declare-fun totalInput!923 () BalanceConc!16212)

(declare-fun e!1399806 () Bool)

(declare-fun b!2190537 () Bool)

(declare-fun lt!818432 () (InoxSet Context!3318))

(declare-fun from!1114 () Int)

(declare-fun lt!818438 () Int)

(declare-fun matchZipper!189 ((InoxSet Context!3318) List!25452) Bool)

(declare-fun take!281 (List!25452 Int) List!25452)

(declare-fun drop!1291 (List!25452 Int) List!25452)

(declare-fun list!9736 (BalanceConc!16212) List!25452)

(assert (=> b!2190537 (= e!1399806 (matchZipper!189 lt!818432 (take!281 (drop!1291 (list!9736 totalInput!923) (+ 1 from!1114)) lt!818438)))))

(declare-fun b!2190538 () Bool)

(declare-fun e!1399808 () Bool)

(declare-fun tp!682893 () Bool)

(assert (=> b!2190538 (= e!1399808 tp!682893)))

(declare-fun b!2190539 () Bool)

(declare-fun e!1399809 () Bool)

(assert (=> b!2190539 (= e!1399807 e!1399809)))

(declare-fun res!941303 () Bool)

(assert (=> b!2190539 (=> (not res!941303) (not e!1399809))))

(declare-fun lt!818434 () Int)

(declare-fun lt!818435 () Int)

(assert (=> b!2190539 (= res!941303 (= lt!818434 lt!818435))))

(declare-fun lt!818437 () Int)

(declare-fun lt!818433 () Int)

(declare-fun furthestNullablePosition!259 ((InoxSet Context!3318) Int BalanceConc!16212 Int Int) Int)

(assert (=> b!2190539 (= lt!818435 (furthestNullablePosition!259 lt!818432 (+ 1 from!1114) totalInput!923 lt!818437 lt!818433))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190539 (= lt!818434 (furthestNullablePosition!259 z!3955 from!1114 totalInput!923 lt!818437 lastNullablePos!193))))

(declare-fun e!1399811 () Int)

(assert (=> b!2190539 (= lt!818433 e!1399811)))

(declare-fun c!348465 () Bool)

(declare-fun nullableZipper!369 ((InoxSet Context!3318)) Bool)

(assert (=> b!2190539 (= c!348465 (nullableZipper!369 lt!818432))))

(declare-fun derivationStepZipper!166 ((InoxSet Context!3318) C!12324) (InoxSet Context!3318))

(declare-fun apply!6122 (BalanceConc!16212 Int) C!12324)

(assert (=> b!2190539 (= lt!818432 (derivationStepZipper!166 z!3955 (apply!6122 totalInput!923 from!1114)))))

(declare-fun b!2190540 () Bool)

(declare-fun e!1399813 () Bool)

(declare-fun tp!682894 () Bool)

(declare-fun inv!33801 (Conc!8225) Bool)

(assert (=> b!2190540 (= e!1399813 (and (inv!33801 (c!348467 totalInput!923)) tp!682894))))

(declare-fun b!2190541 () Bool)

(assert (=> b!2190541 (= e!1399811 from!1114)))

(declare-fun b!2190542 () Bool)

(declare-fun res!941307 () Bool)

(assert (=> b!2190542 (=> (not res!941307) (not e!1399807))))

(assert (=> b!2190542 (= res!941307 (not (= from!1114 lt!818437)))))

(declare-fun b!2190543 () Bool)

(assert (=> b!2190543 (= e!1399809 (not (or (> lt!818438 0) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818437) (and (>= lt!818433 (- 1)) (< lt!818433 (+ 1 from!1114))))))))

(assert (=> b!2190543 e!1399806))

(declare-fun res!941304 () Bool)

(assert (=> b!2190543 (=> res!941304 e!1399806)))

(assert (=> b!2190543 (= res!941304 (<= lt!818438 0))))

(assert (=> b!2190543 (= lt!818438 (+ 1 (- lt!818435 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38473 0))(
  ( (Unit!38474) )
))
(declare-fun lt!818436 () Unit!38473)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!94 ((InoxSet Context!3318) Int BalanceConc!16212 Int) Unit!38473)

(assert (=> b!2190543 (= lt!818436 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!94 lt!818432 (+ 1 from!1114) totalInput!923 lt!818433))))

(declare-fun b!2190544 () Bool)

(declare-fun e!1399812 () Bool)

(assert (=> b!2190544 (= e!1399812 e!1399807)))

(declare-fun res!941306 () Bool)

(assert (=> b!2190544 (=> (not res!941306) (not e!1399807))))

(assert (=> b!2190544 (= res!941306 (and (<= from!1114 lt!818437) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19805 (BalanceConc!16212) Int)

(assert (=> b!2190544 (= lt!818437 (size!19805 totalInput!923))))

(declare-fun b!2190545 () Bool)

(declare-fun e!1399810 () Bool)

(assert (=> b!2190545 (= e!1399810 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190546 () Bool)

(declare-fun res!941300 () Bool)

(assert (=> b!2190546 (=> (not res!941300) (not e!1399807))))

(assert (=> b!2190546 (= res!941300 e!1399810)))

(declare-fun res!941305 () Bool)

(assert (=> b!2190546 (=> res!941305 e!1399810)))

(assert (=> b!2190546 (= res!941305 (not (nullableZipper!369 z!3955)))))

(declare-fun setIsEmpty!18492 () Bool)

(declare-fun setRes!18492 () Bool)

(assert (=> setIsEmpty!18492 setRes!18492))

(declare-fun res!941302 () Bool)

(assert (=> start!212494 (=> (not res!941302) (not e!1399812))))

(assert (=> start!212494 (= res!941302 (>= from!1114 0))))

(assert (=> start!212494 e!1399812))

(assert (=> start!212494 true))

(declare-fun inv!33802 (BalanceConc!16212) Bool)

(assert (=> start!212494 (and (inv!33802 totalInput!923) e!1399813)))

(declare-fun condSetEmpty!18492 () Bool)

(assert (=> start!212494 (= condSetEmpty!18492 (= z!3955 ((as const (Array Context!3318 Bool)) false)))))

(assert (=> start!212494 setRes!18492))

(declare-fun b!2190547 () Bool)

(assert (=> b!2190547 (= e!1399811 lastNullablePos!193)))

(declare-fun setElem!18492 () Context!3318)

(declare-fun tp!682892 () Bool)

(declare-fun setNonEmpty!18492 () Bool)

(declare-fun inv!33803 (Context!3318) Bool)

(assert (=> setNonEmpty!18492 (= setRes!18492 (and tp!682892 (inv!33803 setElem!18492) e!1399808))))

(declare-fun setRest!18492 () (InoxSet Context!3318))

(assert (=> setNonEmpty!18492 (= z!3955 ((_ map or) (store ((as const (Array Context!3318 Bool)) false) setElem!18492 true) setRest!18492))))

(assert (= (and start!212494 res!941302) b!2190544))

(assert (= (and b!2190544 res!941306) b!2190546))

(assert (= (and b!2190546 (not res!941305)) b!2190545))

(assert (= (and b!2190546 res!941300) b!2190542))

(assert (= (and b!2190542 res!941307) b!2190536))

(assert (= (and b!2190536 res!941301) b!2190539))

(assert (= (and b!2190539 c!348465) b!2190541))

(assert (= (and b!2190539 (not c!348465)) b!2190547))

(assert (= (and b!2190539 res!941303) b!2190543))

(assert (= (and b!2190543 (not res!941304)) b!2190537))

(assert (= start!212494 b!2190540))

(assert (= (and start!212494 condSetEmpty!18492) setIsEmpty!18492))

(assert (= (and start!212494 (not condSetEmpty!18492)) setNonEmpty!18492))

(assert (= setNonEmpty!18492 b!2190538))

(declare-fun m!2633411 () Bool)

(assert (=> b!2190543 m!2633411))

(declare-fun m!2633413 () Bool)

(assert (=> b!2190537 m!2633413))

(assert (=> b!2190537 m!2633413))

(declare-fun m!2633415 () Bool)

(assert (=> b!2190537 m!2633415))

(assert (=> b!2190537 m!2633415))

(declare-fun m!2633417 () Bool)

(assert (=> b!2190537 m!2633417))

(assert (=> b!2190537 m!2633417))

(declare-fun m!2633419 () Bool)

(assert (=> b!2190537 m!2633419))

(declare-fun m!2633421 () Bool)

(assert (=> b!2190546 m!2633421))

(declare-fun m!2633423 () Bool)

(assert (=> b!2190544 m!2633423))

(declare-fun m!2633425 () Bool)

(assert (=> b!2190539 m!2633425))

(declare-fun m!2633427 () Bool)

(assert (=> b!2190539 m!2633427))

(declare-fun m!2633429 () Bool)

(assert (=> b!2190539 m!2633429))

(declare-fun m!2633431 () Bool)

(assert (=> b!2190539 m!2633431))

(assert (=> b!2190539 m!2633427))

(declare-fun m!2633433 () Bool)

(assert (=> b!2190539 m!2633433))

(declare-fun m!2633435 () Bool)

(assert (=> b!2190536 m!2633435))

(declare-fun m!2633437 () Bool)

(assert (=> start!212494 m!2633437))

(declare-fun m!2633439 () Bool)

(assert (=> b!2190540 m!2633439))

(declare-fun m!2633441 () Bool)

(assert (=> setNonEmpty!18492 m!2633441))

(check-sat (not b!2190538) (not b!2190544) (not setNonEmpty!18492) (not start!212494) (not b!2190539) (not b!2190540) (not b!2190543) (not b!2190546) (not b!2190537) (not b!2190536))
(check-sat)
