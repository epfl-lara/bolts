; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214138 () Bool)

(assert start!214138)

(declare-fun setIsEmpty!19090 () Bool)

(declare-fun setRes!19090 () Bool)

(assert (=> setIsEmpty!19090 setRes!19090))

(declare-fun b!2203404 () Bool)

(declare-fun e!1407758 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12640 0))(
  ( (C!12641 (val!7306 Int)) )
))
(declare-datatypes ((Regex!6247 0))(
  ( (ElementMatch!6247 (c!351618 C!12640)) (Concat!10549 (regOne!13006 Regex!6247) (regTwo!13006 Regex!6247)) (EmptyExpr!6247) (Star!6247 (reg!6576 Regex!6247)) (EmptyLang!6247) (Union!6247 (regOne!13007 Regex!6247) (regTwo!13007 Regex!6247)) )
))
(declare-datatypes ((List!25792 0))(
  ( (Nil!25708) (Cons!25708 (h!31109 Regex!6247) (t!198426 List!25792)) )
))
(declare-datatypes ((Context!3634 0))(
  ( (Context!3635 (exprs!2317 List!25792)) )
))
(declare-fun z!3888 () (InoxSet Context!3634))

(declare-fun lostCauseZipper!347 ((InoxSet Context!3634)) Bool)

(assert (=> b!2203404 (= e!1407758 (lostCauseZipper!347 z!3888))))

(declare-fun b!2203405 () Bool)

(declare-fun res!947109 () Bool)

(declare-fun e!1407753 () Bool)

(assert (=> b!2203405 (=> (not res!947109) (not e!1407753))))

(declare-fun e!1407755 () Bool)

(assert (=> b!2203405 (= res!947109 e!1407755)))

(declare-fun res!947103 () Bool)

(assert (=> b!2203405 (=> res!947103 e!1407755)))

(declare-fun nullableZipper!527 ((InoxSet Context!3634)) Bool)

(assert (=> b!2203405 (= res!947103 (not (nullableZipper!527 z!3888)))))

(declare-fun b!2203406 () Bool)

(declare-fun res!947102 () Bool)

(assert (=> b!2203406 (=> (not res!947102) (not e!1407753))))

(assert (=> b!2203406 (= res!947102 e!1407758)))

(declare-fun res!947107 () Bool)

(assert (=> b!2203406 (=> res!947107 e!1407758)))

(declare-fun from!1082 () Int)

(declare-fun lt!823814 () Int)

(assert (=> b!2203406 (= res!947107 (= from!1082 lt!823814))))

(declare-fun b!2203407 () Bool)

(declare-fun res!947106 () Bool)

(assert (=> b!2203407 (=> (not res!947106) (not e!1407753))))

(declare-datatypes ((List!25793 0))(
  ( (Nil!25709) (Cons!25709 (h!31110 C!12640) (t!198427 List!25793)) )
))
(declare-datatypes ((IArray!16771 0))(
  ( (IArray!16772 (innerList!8443 List!25793)) )
))
(declare-datatypes ((Conc!8383 0))(
  ( (Node!8383 (left!19749 Conc!8383) (right!20079 Conc!8383) (csize!16996 Int) (cheight!8594 Int)) (Leaf!12274 (xs!11325 IArray!16771) (csize!16997 Int)) (Empty!8383) )
))
(declare-datatypes ((BalanceConc!16528 0))(
  ( (BalanceConc!16529 (c!351619 Conc!8383)) )
))
(declare-fun totalInput!891 () BalanceConc!16528)

(declare-fun isEmpty!14688 (BalanceConc!16528) Bool)

(assert (=> b!2203407 (= res!947106 (not (isEmpty!14688 totalInput!891)))))

(declare-fun b!2203408 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2203408 (= e!1407755 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!947110 () Bool)

(declare-fun e!1407756 () Bool)

(assert (=> start!214138 (=> (not res!947110) (not e!1407756))))

(assert (=> start!214138 (= res!947110 (>= from!1082 0))))

(assert (=> start!214138 e!1407756))

(assert (=> start!214138 true))

(declare-fun e!1407752 () Bool)

(declare-fun inv!34610 (BalanceConc!16528) Bool)

(assert (=> start!214138 (and (inv!34610 totalInput!891) e!1407752)))

(declare-fun condSetEmpty!19090 () Bool)

(assert (=> start!214138 (= condSetEmpty!19090 (= z!3888 ((as const (Array Context!3634 Bool)) false)))))

(assert (=> start!214138 setRes!19090))

(declare-fun b!2203409 () Bool)

(declare-fun e!1407757 () Bool)

(assert (=> b!2203409 (= e!1407757 e!1407753)))

(declare-fun res!947105 () Bool)

(assert (=> b!2203409 (=> (not res!947105) (not e!1407753))))

(declare-fun lt!823816 () List!25793)

(declare-fun matchZipper!333 ((InoxSet Context!3634) List!25793) Bool)

(assert (=> b!2203409 (= res!947105 (matchZipper!333 z!3888 lt!823816))))

(declare-fun knownSize!10 () Int)

(declare-fun take!425 (List!25793 Int) List!25793)

(declare-fun drop!1435 (List!25793 Int) List!25793)

(declare-fun list!9921 (BalanceConc!16528) List!25793)

(assert (=> b!2203409 (= lt!823816 (take!425 (drop!1435 (list!9921 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2203410 () Bool)

(declare-fun lt!823817 () Bool)

(assert (=> b!2203410 (= e!1407753 lt!823817)))

(declare-datatypes ((Unit!38773 0))(
  ( (Unit!38774) )
))
(declare-fun lt!823815 () Unit!38773)

(declare-fun e!1407759 () Unit!38773)

(assert (=> b!2203410 (= lt!823815 e!1407759)))

(declare-fun c!351617 () Bool)

(assert (=> b!2203410 (= c!351617 lt!823817)))

(assert (=> b!2203410 (= lt!823817 (lostCauseZipper!347 z!3888))))

(declare-fun setNonEmpty!19090 () Bool)

(declare-fun e!1407754 () Bool)

(declare-fun setElem!19090 () Context!3634)

(declare-fun tp!685452 () Bool)

(declare-fun inv!34611 (Context!3634) Bool)

(assert (=> setNonEmpty!19090 (= setRes!19090 (and tp!685452 (inv!34611 setElem!19090) e!1407754))))

(declare-fun setRest!19090 () (InoxSet Context!3634))

(assert (=> setNonEmpty!19090 (= z!3888 ((_ map or) (store ((as const (Array Context!3634 Bool)) false) setElem!19090 true) setRest!19090))))

(declare-fun b!2203411 () Bool)

(declare-fun res!947108 () Bool)

(assert (=> b!2203411 (=> (not res!947108) (not e!1407753))))

(assert (=> b!2203411 (= res!947108 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203412 () Bool)

(declare-fun res!947104 () Bool)

(assert (=> b!2203412 (=> (not res!947104) (not e!1407753))))

(assert (=> b!2203412 (= res!947104 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2203413 () Bool)

(declare-fun Unit!38775 () Unit!38773)

(assert (=> b!2203413 (= e!1407759 Unit!38775)))

(declare-fun b!2203414 () Bool)

(declare-fun Unit!38776 () Unit!38773)

(assert (=> b!2203414 (= e!1407759 Unit!38776)))

(declare-fun lt!823818 () Unit!38773)

(declare-fun lemmaLostCauseCannotMatch!27 ((InoxSet Context!3634) List!25793) Unit!38773)

(assert (=> b!2203414 (= lt!823818 (lemmaLostCauseCannotMatch!27 z!3888 lt!823816))))

(assert (=> b!2203414 false))

(declare-fun b!2203415 () Bool)

(declare-fun tp!685450 () Bool)

(declare-fun inv!34612 (Conc!8383) Bool)

(assert (=> b!2203415 (= e!1407752 (and (inv!34612 (c!351619 totalInput!891)) tp!685450))))

(declare-fun b!2203416 () Bool)

(declare-fun tp!685451 () Bool)

(assert (=> b!2203416 (= e!1407754 tp!685451)))

(declare-fun b!2203417 () Bool)

(assert (=> b!2203417 (= e!1407756 e!1407757)))

(declare-fun res!947111 () Bool)

(assert (=> b!2203417 (=> (not res!947111) (not e!1407757))))

(assert (=> b!2203417 (= res!947111 (and (<= from!1082 lt!823814) (>= knownSize!10 0) (<= knownSize!10 (- lt!823814 from!1082))))))

(declare-fun size!20038 (BalanceConc!16528) Int)

(assert (=> b!2203417 (= lt!823814 (size!20038 totalInput!891))))

(assert (= (and start!214138 res!947110) b!2203417))

(assert (= (and b!2203417 res!947111) b!2203409))

(assert (= (and b!2203409 res!947105) b!2203411))

(assert (= (and b!2203411 res!947108) b!2203405))

(assert (= (and b!2203405 (not res!947103)) b!2203408))

(assert (= (and b!2203405 res!947109) b!2203407))

(assert (= (and b!2203407 res!947106) b!2203412))

(assert (= (and b!2203412 res!947104) b!2203406))

(assert (= (and b!2203406 (not res!947107)) b!2203404))

(assert (= (and b!2203406 res!947102) b!2203410))

(assert (= (and b!2203410 c!351617) b!2203414))

(assert (= (and b!2203410 (not c!351617)) b!2203413))

(assert (= start!214138 b!2203415))

(assert (= (and start!214138 condSetEmpty!19090) setIsEmpty!19090))

(assert (= (and start!214138 (not condSetEmpty!19090)) setNonEmpty!19090))

(assert (= setNonEmpty!19090 b!2203416))

(declare-fun m!2645403 () Bool)

(assert (=> b!2203407 m!2645403))

(declare-fun m!2645405 () Bool)

(assert (=> b!2203409 m!2645405))

(declare-fun m!2645407 () Bool)

(assert (=> b!2203409 m!2645407))

(assert (=> b!2203409 m!2645407))

(declare-fun m!2645409 () Bool)

(assert (=> b!2203409 m!2645409))

(assert (=> b!2203409 m!2645409))

(declare-fun m!2645411 () Bool)

(assert (=> b!2203409 m!2645411))

(declare-fun m!2645413 () Bool)

(assert (=> b!2203417 m!2645413))

(declare-fun m!2645415 () Bool)

(assert (=> b!2203414 m!2645415))

(declare-fun m!2645417 () Bool)

(assert (=> setNonEmpty!19090 m!2645417))

(declare-fun m!2645419 () Bool)

(assert (=> b!2203404 m!2645419))

(assert (=> b!2203410 m!2645419))

(declare-fun m!2645421 () Bool)

(assert (=> b!2203415 m!2645421))

(declare-fun m!2645423 () Bool)

(assert (=> b!2203405 m!2645423))

(declare-fun m!2645425 () Bool)

(assert (=> start!214138 m!2645425))

(check-sat (not b!2203416) (not b!2203415) (not setNonEmpty!19090) (not b!2203410) (not b!2203407) (not b!2203409) (not b!2203414) (not b!2203417) (not start!214138) (not b!2203404) (not b!2203405))
(check-sat)
