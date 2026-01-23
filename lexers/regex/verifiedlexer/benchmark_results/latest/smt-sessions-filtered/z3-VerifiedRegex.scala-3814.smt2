; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212506 () Bool)

(assert start!212506)

(declare-fun setIsEmpty!18510 () Bool)

(declare-fun setRes!18510 () Bool)

(assert (=> setIsEmpty!18510 setRes!18510))

(declare-fun b!2190740 () Bool)

(declare-fun e!1399951 () Bool)

(declare-fun e!1399944 () Bool)

(assert (=> b!2190740 (= e!1399951 e!1399944)))

(declare-fun res!941446 () Bool)

(assert (=> b!2190740 (=> (not res!941446) (not e!1399944))))

(declare-fun lt!818570 () Int)

(declare-fun lt!818566 () Int)

(assert (=> b!2190740 (= res!941446 (= lt!818570 lt!818566))))

(declare-datatypes ((C!12336 0))(
  ( (C!12337 (val!7154 Int)) )
))
(declare-datatypes ((List!25463 0))(
  ( (Nil!25379) (Cons!25379 (h!30780 C!12336) (t!198061 List!25463)) )
))
(declare-datatypes ((IArray!16467 0))(
  ( (IArray!16468 (innerList!8291 List!25463)) )
))
(declare-datatypes ((Conc!8231 0))(
  ( (Node!8231 (left!19473 Conc!8231) (right!19803 Conc!8231) (csize!16692 Int) (cheight!8442 Int)) (Leaf!12046 (xs!11173 IArray!16467) (csize!16693 Int)) (Empty!8231) )
))
(declare-datatypes ((BalanceConc!16224 0))(
  ( (BalanceConc!16225 (c!348490 Conc!8231)) )
))
(declare-fun totalInput!923 () BalanceConc!16224)

(declare-fun lt!818564 () Int)

(declare-fun from!1114 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6095 0))(
  ( (ElementMatch!6095 (c!348491 C!12336)) (Concat!10397 (regOne!12702 Regex!6095) (regTwo!12702 Regex!6095)) (EmptyExpr!6095) (Star!6095 (reg!6424 Regex!6095)) (EmptyLang!6095) (Union!6095 (regOne!12703 Regex!6095) (regTwo!12703 Regex!6095)) )
))
(declare-datatypes ((List!25464 0))(
  ( (Nil!25380) (Cons!25380 (h!30781 Regex!6095) (t!198062 List!25464)) )
))
(declare-datatypes ((Context!3330 0))(
  ( (Context!3331 (exprs!2165 List!25464)) )
))
(declare-fun lt!818569 () (InoxSet Context!3330))

(declare-fun lt!818568 () Int)

(declare-fun furthestNullablePosition!265 ((InoxSet Context!3330) Int BalanceConc!16224 Int Int) Int)

(assert (=> b!2190740 (= lt!818566 (furthestNullablePosition!265 lt!818569 (+ 1 from!1114) totalInput!923 lt!818568 lt!818564))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun z!3955 () (InoxSet Context!3330))

(assert (=> b!2190740 (= lt!818570 (furthestNullablePosition!265 z!3955 from!1114 totalInput!923 lt!818568 lastNullablePos!193))))

(declare-fun e!1399945 () Int)

(assert (=> b!2190740 (= lt!818564 e!1399945)))

(declare-fun c!348489 () Bool)

(declare-fun nullableZipper!375 ((InoxSet Context!3330)) Bool)

(assert (=> b!2190740 (= c!348489 (nullableZipper!375 lt!818569))))

(declare-fun derivationStepZipper!172 ((InoxSet Context!3330) C!12336) (InoxSet Context!3330))

(declare-fun apply!6128 (BalanceConc!16224 Int) C!12336)

(assert (=> b!2190740 (= lt!818569 (derivationStepZipper!172 z!3955 (apply!6128 totalInput!923 from!1114)))))

(declare-fun b!2190741 () Bool)

(assert (=> b!2190741 (= e!1399945 from!1114)))

(declare-fun b!2190742 () Bool)

(declare-fun e!1399946 () Bool)

(declare-fun tp!682948 () Bool)

(declare-fun inv!33828 (Conc!8231) Bool)

(assert (=> b!2190742 (= e!1399946 (and (inv!33828 (c!348490 totalInput!923)) tp!682948))))

(declare-fun b!2190743 () Bool)

(declare-fun res!941448 () Bool)

(assert (=> b!2190743 (=> (not res!941448) (not e!1399951))))

(assert (=> b!2190743 (= res!941448 (not (= from!1114 lt!818568)))))

(declare-fun b!2190744 () Bool)

(declare-fun e!1399947 () Bool)

(assert (=> b!2190744 (= e!1399947 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190745 () Bool)

(declare-fun lt!818565 () Int)

(assert (=> b!2190745 (= e!1399944 (not (or (> lt!818565 0) (> lt!818566 from!1114) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818568) (and (>= lt!818564 (- 1)) (< lt!818564 (+ 1 from!1114))))))))

(declare-fun e!1399949 () Bool)

(assert (=> b!2190745 e!1399949))

(declare-fun res!941450 () Bool)

(assert (=> b!2190745 (=> res!941450 e!1399949)))

(assert (=> b!2190745 (= res!941450 (<= lt!818565 0))))

(assert (=> b!2190745 (= lt!818565 (+ 1 (- lt!818566 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38485 0))(
  ( (Unit!38486) )
))
(declare-fun lt!818567 () Unit!38485)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!100 ((InoxSet Context!3330) Int BalanceConc!16224 Int) Unit!38485)

(assert (=> b!2190745 (= lt!818567 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!100 lt!818569 (+ 1 from!1114) totalInput!923 lt!818564))))

(declare-fun b!2190746 () Bool)

(declare-fun res!941445 () Bool)

(assert (=> b!2190746 (=> (not res!941445) (not e!1399951))))

(assert (=> b!2190746 (= res!941445 e!1399947)))

(declare-fun res!941444 () Bool)

(assert (=> b!2190746 (=> res!941444 e!1399947)))

(assert (=> b!2190746 (= res!941444 (not (nullableZipper!375 z!3955)))))

(declare-fun b!2190747 () Bool)

(assert (=> b!2190747 (= e!1399945 lastNullablePos!193)))

(declare-fun b!2190748 () Bool)

(declare-fun e!1399950 () Bool)

(assert (=> b!2190748 (= e!1399950 e!1399951)))

(declare-fun res!941447 () Bool)

(assert (=> b!2190748 (=> (not res!941447) (not e!1399951))))

(assert (=> b!2190748 (= res!941447 (and (<= from!1114 lt!818568) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19811 (BalanceConc!16224) Int)

(assert (=> b!2190748 (= lt!818568 (size!19811 totalInput!923))))

(declare-fun b!2190749 () Bool)

(declare-fun res!941451 () Bool)

(assert (=> b!2190749 (=> (not res!941451) (not e!1399951))))

(declare-fun lostCauseZipper!213 ((InoxSet Context!3330)) Bool)

(assert (=> b!2190749 (= res!941451 (not (lostCauseZipper!213 z!3955)))))

(declare-fun b!2190750 () Bool)

(declare-fun matchZipper!195 ((InoxSet Context!3330) List!25463) Bool)

(declare-fun take!287 (List!25463 Int) List!25463)

(declare-fun drop!1297 (List!25463 Int) List!25463)

(declare-fun list!9742 (BalanceConc!16224) List!25463)

(assert (=> b!2190750 (= e!1399949 (matchZipper!195 lt!818569 (take!287 (drop!1297 (list!9742 totalInput!923) (+ 1 from!1114)) lt!818565)))))

(declare-fun b!2190751 () Bool)

(declare-fun e!1399948 () Bool)

(declare-fun tp!682947 () Bool)

(assert (=> b!2190751 (= e!1399948 tp!682947)))

(declare-fun res!941449 () Bool)

(assert (=> start!212506 (=> (not res!941449) (not e!1399950))))

(assert (=> start!212506 (= res!941449 (>= from!1114 0))))

(assert (=> start!212506 e!1399950))

(assert (=> start!212506 true))

(declare-fun inv!33829 (BalanceConc!16224) Bool)

(assert (=> start!212506 (and (inv!33829 totalInput!923) e!1399946)))

(declare-fun condSetEmpty!18510 () Bool)

(assert (=> start!212506 (= condSetEmpty!18510 (= z!3955 ((as const (Array Context!3330 Bool)) false)))))

(assert (=> start!212506 setRes!18510))

(declare-fun setElem!18510 () Context!3330)

(declare-fun tp!682946 () Bool)

(declare-fun setNonEmpty!18510 () Bool)

(declare-fun inv!33830 (Context!3330) Bool)

(assert (=> setNonEmpty!18510 (= setRes!18510 (and tp!682946 (inv!33830 setElem!18510) e!1399948))))

(declare-fun setRest!18510 () (InoxSet Context!3330))

(assert (=> setNonEmpty!18510 (= z!3955 ((_ map or) (store ((as const (Array Context!3330 Bool)) false) setElem!18510 true) setRest!18510))))

(assert (= (and start!212506 res!941449) b!2190748))

(assert (= (and b!2190748 res!941447) b!2190746))

(assert (= (and b!2190746 (not res!941444)) b!2190744))

(assert (= (and b!2190746 res!941445) b!2190743))

(assert (= (and b!2190743 res!941448) b!2190749))

(assert (= (and b!2190749 res!941451) b!2190740))

(assert (= (and b!2190740 c!348489) b!2190741))

(assert (= (and b!2190740 (not c!348489)) b!2190747))

(assert (= (and b!2190740 res!941446) b!2190745))

(assert (= (and b!2190745 (not res!941450)) b!2190750))

(assert (= start!212506 b!2190742))

(assert (= (and start!212506 condSetEmpty!18510) setIsEmpty!18510))

(assert (= (and start!212506 (not condSetEmpty!18510)) setNonEmpty!18510))

(assert (= setNonEmpty!18510 b!2190751))

(declare-fun m!2633603 () Bool)

(assert (=> b!2190742 m!2633603))

(declare-fun m!2633605 () Bool)

(assert (=> b!2190745 m!2633605))

(declare-fun m!2633607 () Bool)

(assert (=> b!2190749 m!2633607))

(declare-fun m!2633609 () Bool)

(assert (=> b!2190750 m!2633609))

(assert (=> b!2190750 m!2633609))

(declare-fun m!2633611 () Bool)

(assert (=> b!2190750 m!2633611))

(assert (=> b!2190750 m!2633611))

(declare-fun m!2633613 () Bool)

(assert (=> b!2190750 m!2633613))

(assert (=> b!2190750 m!2633613))

(declare-fun m!2633615 () Bool)

(assert (=> b!2190750 m!2633615))

(declare-fun m!2633617 () Bool)

(assert (=> b!2190746 m!2633617))

(declare-fun m!2633619 () Bool)

(assert (=> b!2190740 m!2633619))

(declare-fun m!2633621 () Bool)

(assert (=> b!2190740 m!2633621))

(declare-fun m!2633623 () Bool)

(assert (=> b!2190740 m!2633623))

(declare-fun m!2633625 () Bool)

(assert (=> b!2190740 m!2633625))

(assert (=> b!2190740 m!2633623))

(declare-fun m!2633627 () Bool)

(assert (=> b!2190740 m!2633627))

(declare-fun m!2633629 () Bool)

(assert (=> b!2190748 m!2633629))

(declare-fun m!2633631 () Bool)

(assert (=> start!212506 m!2633631))

(declare-fun m!2633633 () Bool)

(assert (=> setNonEmpty!18510 m!2633633))

(check-sat (not b!2190740) (not setNonEmpty!18510) (not b!2190746) (not b!2190751) (not b!2190750) (not b!2190748) (not start!212506) (not b!2190749) (not b!2190742) (not b!2190745))
(check-sat)
