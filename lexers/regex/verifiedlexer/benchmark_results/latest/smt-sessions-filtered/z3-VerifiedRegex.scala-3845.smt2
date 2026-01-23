; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212806 () Bool)

(assert start!212806)

(declare-fun res!943300 () Bool)

(declare-fun e!1402133 () Bool)

(assert (=> start!212806 (=> (not res!943300) (not e!1402133))))

(declare-fun from!1114 () Int)

(assert (=> start!212806 (= res!943300 (>= from!1114 0))))

(assert (=> start!212806 e!1402133))

(assert (=> start!212806 true))

(declare-datatypes ((C!12460 0))(
  ( (C!12461 (val!7216 Int)) )
))
(declare-datatypes ((List!25594 0))(
  ( (Nil!25510) (Cons!25510 (h!30911 C!12460) (t!198192 List!25594)) )
))
(declare-datatypes ((IArray!16591 0))(
  ( (IArray!16592 (innerList!8353 List!25594)) )
))
(declare-datatypes ((Conc!8293 0))(
  ( (Node!8293 (left!19578 Conc!8293) (right!19908 Conc!8293) (csize!16816 Int) (cheight!8504 Int)) (Leaf!12139 (xs!11235 IArray!16591) (csize!16817 Int)) (Empty!8293) )
))
(declare-datatypes ((BalanceConc!16348 0))(
  ( (BalanceConc!16349 (c!349120 Conc!8293)) )
))
(declare-fun totalInput!923 () BalanceConc!16348)

(declare-fun e!1402128 () Bool)

(declare-fun inv!34129 (BalanceConc!16348) Bool)

(assert (=> start!212806 (and (inv!34129 totalInput!923) e!1402128)))

(declare-fun condSetEmpty!18720 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6157 0))(
  ( (ElementMatch!6157 (c!349121 C!12460)) (Concat!10459 (regOne!12826 Regex!6157) (regTwo!12826 Regex!6157)) (EmptyExpr!6157) (Star!6157 (reg!6486 Regex!6157)) (EmptyLang!6157) (Union!6157 (regOne!12827 Regex!6157) (regTwo!12827 Regex!6157)) )
))
(declare-datatypes ((List!25595 0))(
  ( (Nil!25511) (Cons!25511 (h!30912 Regex!6157) (t!198193 List!25595)) )
))
(declare-datatypes ((Context!3454 0))(
  ( (Context!3455 (exprs!2227 List!25595)) )
))
(declare-fun z!3955 () (InoxSet Context!3454))

(assert (=> start!212806 (= condSetEmpty!18720 (= z!3955 ((as const (Array Context!3454 Bool)) false)))))

(declare-fun setRes!18720 () Bool)

(assert (=> start!212806 setRes!18720))

(declare-fun e!1402131 () Bool)

(declare-fun setElem!18720 () Context!3454)

(declare-fun setNonEmpty!18720 () Bool)

(declare-fun tp!683674 () Bool)

(declare-fun inv!34130 (Context!3454) Bool)

(assert (=> setNonEmpty!18720 (= setRes!18720 (and tp!683674 (inv!34130 setElem!18720) e!1402131))))

(declare-fun setRest!18720 () (InoxSet Context!3454))

(assert (=> setNonEmpty!18720 (= z!3955 ((_ map or) (store ((as const (Array Context!3454 Bool)) false) setElem!18720 true) setRest!18720))))

(declare-fun lt!820499 () Int)

(declare-fun e!1402129 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun b!2193972 () Bool)

(declare-fun lt!820494 () Int)

(declare-fun lt!820498 () Int)

(declare-fun lt!820496 () Int)

(assert (=> b!2193972 (= e!1402129 (not (or (> lt!820494 0) (> lt!820499 from!1114) (< lt!820499 lt!820496) (< lt!820496 lastNullablePos!193) (> lt!820496 from!1114) (and (not (= lt!820496 from!1114)) (not (= lt!820496 lastNullablePos!193))) (= lt!820496 lastNullablePos!193) (= (+ 1 (- lt!820498 from!1114)) 1))))))

(declare-fun e!1402130 () Bool)

(assert (=> b!2193972 e!1402130))

(declare-fun res!943297 () Bool)

(assert (=> b!2193972 (=> res!943297 e!1402130)))

(assert (=> b!2193972 (= res!943297 (<= lt!820494 0))))

(assert (=> b!2193972 (= lt!820494 (+ 1 (- lt!820499 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38629 0))(
  ( (Unit!38630) )
))
(declare-fun lt!820497 () Unit!38629)

(declare-fun lt!820500 () (InoxSet Context!3454))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!156 ((InoxSet Context!3454) Int BalanceConc!16348 Int) Unit!38629)

(assert (=> b!2193972 (= lt!820497 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!156 lt!820500 (+ 1 from!1114) totalInput!923 lt!820496))))

(declare-fun b!2193973 () Bool)

(declare-fun e!1402135 () Bool)

(assert (=> b!2193973 (= e!1402133 e!1402135)))

(declare-fun res!943302 () Bool)

(assert (=> b!2193973 (=> (not res!943302) (not e!1402135))))

(declare-fun lt!820495 () Int)

(assert (=> b!2193973 (= res!943302 (and (<= from!1114 lt!820495) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19891 (BalanceConc!16348) Int)

(assert (=> b!2193973 (= lt!820495 (size!19891 totalInput!923))))

(declare-fun b!2193974 () Bool)

(declare-fun matchZipper!253 ((InoxSet Context!3454) List!25594) Bool)

(declare-fun take!345 (List!25594 Int) List!25594)

(declare-fun drop!1355 (List!25594 Int) List!25594)

(declare-fun list!9807 (BalanceConc!16348) List!25594)

(assert (=> b!2193974 (= e!1402130 (matchZipper!253 lt!820500 (take!345 (drop!1355 (list!9807 totalInput!923) (+ 1 from!1114)) lt!820494)))))

(declare-fun b!2193975 () Bool)

(assert (=> b!2193975 (= e!1402135 e!1402129)))

(declare-fun res!943298 () Bool)

(assert (=> b!2193975 (=> (not res!943298) (not e!1402129))))

(assert (=> b!2193975 (= res!943298 (= lt!820498 lt!820499))))

(declare-fun furthestNullablePosition!327 ((InoxSet Context!3454) Int BalanceConc!16348 Int Int) Int)

(assert (=> b!2193975 (= lt!820499 (furthestNullablePosition!327 lt!820500 (+ 1 from!1114) totalInput!923 lt!820495 lt!820496))))

(assert (=> b!2193975 (= lt!820498 (furthestNullablePosition!327 z!3955 from!1114 totalInput!923 lt!820495 lastNullablePos!193))))

(declare-fun e!1402134 () Int)

(assert (=> b!2193975 (= lt!820496 e!1402134)))

(declare-fun c!349119 () Bool)

(declare-fun nullableZipper!437 ((InoxSet Context!3454)) Bool)

(assert (=> b!2193975 (= c!349119 (nullableZipper!437 lt!820500))))

(declare-fun derivationStepZipper!231 ((InoxSet Context!3454) C!12460) (InoxSet Context!3454))

(declare-fun apply!6211 (BalanceConc!16348 Int) C!12460)

(assert (=> b!2193975 (= lt!820500 (derivationStepZipper!231 z!3955 (apply!6211 totalInput!923 from!1114)))))

(declare-fun b!2193976 () Bool)

(declare-fun tp!683673 () Bool)

(assert (=> b!2193976 (= e!1402131 tp!683673)))

(declare-fun b!2193977 () Bool)

(declare-fun res!943299 () Bool)

(assert (=> b!2193977 (=> (not res!943299) (not e!1402135))))

(assert (=> b!2193977 (= res!943299 (not (= from!1114 lt!820495)))))

(declare-fun b!2193978 () Bool)

(declare-fun e!1402132 () Bool)

(assert (=> b!2193978 (= e!1402132 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18720 () Bool)

(assert (=> setIsEmpty!18720 setRes!18720))

(declare-fun b!2193979 () Bool)

(assert (=> b!2193979 (= e!1402134 from!1114)))

(declare-fun b!2193980 () Bool)

(declare-fun res!943301 () Bool)

(assert (=> b!2193980 (=> (not res!943301) (not e!1402135))))

(assert (=> b!2193980 (= res!943301 e!1402132)))

(declare-fun res!943296 () Bool)

(assert (=> b!2193980 (=> res!943296 e!1402132)))

(assert (=> b!2193980 (= res!943296 (not (nullableZipper!437 z!3955)))))

(declare-fun b!2193981 () Bool)

(declare-fun res!943303 () Bool)

(assert (=> b!2193981 (=> (not res!943303) (not e!1402135))))

(declare-fun lostCauseZipper!275 ((InoxSet Context!3454)) Bool)

(assert (=> b!2193981 (= res!943303 (not (lostCauseZipper!275 z!3955)))))

(declare-fun b!2193982 () Bool)

(declare-fun tp!683672 () Bool)

(declare-fun inv!34131 (Conc!8293) Bool)

(assert (=> b!2193982 (= e!1402128 (and (inv!34131 (c!349120 totalInput!923)) tp!683672))))

(declare-fun b!2193983 () Bool)

(assert (=> b!2193983 (= e!1402134 lastNullablePos!193)))

(assert (= (and start!212806 res!943300) b!2193973))

(assert (= (and b!2193973 res!943302) b!2193980))

(assert (= (and b!2193980 (not res!943296)) b!2193978))

(assert (= (and b!2193980 res!943301) b!2193977))

(assert (= (and b!2193977 res!943299) b!2193981))

(assert (= (and b!2193981 res!943303) b!2193975))

(assert (= (and b!2193975 c!349119) b!2193979))

(assert (= (and b!2193975 (not c!349119)) b!2193983))

(assert (= (and b!2193975 res!943298) b!2193972))

(assert (= (and b!2193972 (not res!943297)) b!2193974))

(assert (= start!212806 b!2193982))

(assert (= (and start!212806 condSetEmpty!18720) setIsEmpty!18720))

(assert (= (and start!212806 (not condSetEmpty!18720)) setNonEmpty!18720))

(assert (= setNonEmpty!18720 b!2193976))

(declare-fun m!2636467 () Bool)

(assert (=> setNonEmpty!18720 m!2636467))

(declare-fun m!2636469 () Bool)

(assert (=> b!2193975 m!2636469))

(declare-fun m!2636471 () Bool)

(assert (=> b!2193975 m!2636471))

(declare-fun m!2636473 () Bool)

(assert (=> b!2193975 m!2636473))

(declare-fun m!2636475 () Bool)

(assert (=> b!2193975 m!2636475))

(assert (=> b!2193975 m!2636473))

(declare-fun m!2636477 () Bool)

(assert (=> b!2193975 m!2636477))

(declare-fun m!2636479 () Bool)

(assert (=> b!2193982 m!2636479))

(declare-fun m!2636481 () Bool)

(assert (=> b!2193980 m!2636481))

(declare-fun m!2636483 () Bool)

(assert (=> b!2193974 m!2636483))

(assert (=> b!2193974 m!2636483))

(declare-fun m!2636485 () Bool)

(assert (=> b!2193974 m!2636485))

(assert (=> b!2193974 m!2636485))

(declare-fun m!2636487 () Bool)

(assert (=> b!2193974 m!2636487))

(assert (=> b!2193974 m!2636487))

(declare-fun m!2636489 () Bool)

(assert (=> b!2193974 m!2636489))

(declare-fun m!2636491 () Bool)

(assert (=> b!2193973 m!2636491))

(declare-fun m!2636493 () Bool)

(assert (=> b!2193972 m!2636493))

(declare-fun m!2636495 () Bool)

(assert (=> start!212806 m!2636495))

(declare-fun m!2636497 () Bool)

(assert (=> b!2193981 m!2636497))

(check-sat (not start!212806) (not b!2193975) (not b!2193982) (not setNonEmpty!18720) (not b!2193973) (not b!2193974) (not b!2193976) (not b!2193972) (not b!2193980) (not b!2193981))
(check-sat)
