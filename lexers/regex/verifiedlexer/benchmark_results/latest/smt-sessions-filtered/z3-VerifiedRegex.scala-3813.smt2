; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212502 () Bool)

(assert start!212502)

(declare-fun b!2190668 () Bool)

(declare-fun e!1399899 () Bool)

(declare-fun e!1399900 () Bool)

(assert (=> b!2190668 (= e!1399899 e!1399900)))

(declare-fun res!941398 () Bool)

(assert (=> b!2190668 (=> (not res!941398) (not e!1399900))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!818522 () Int)

(assert (=> b!2190668 (= res!941398 (and (<= from!1114 lt!818522) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12332 0))(
  ( (C!12333 (val!7152 Int)) )
))
(declare-datatypes ((List!25459 0))(
  ( (Nil!25375) (Cons!25375 (h!30776 C!12332) (t!198057 List!25459)) )
))
(declare-datatypes ((IArray!16463 0))(
  ( (IArray!16464 (innerList!8289 List!25459)) )
))
(declare-datatypes ((Conc!8229 0))(
  ( (Node!8229 (left!19470 Conc!8229) (right!19800 Conc!8229) (csize!16688 Int) (cheight!8440 Int)) (Leaf!12043 (xs!11171 IArray!16463) (csize!16689 Int)) (Empty!8229) )
))
(declare-datatypes ((BalanceConc!16220 0))(
  ( (BalanceConc!16221 (c!348480 Conc!8229)) )
))
(declare-fun totalInput!923 () BalanceConc!16220)

(declare-fun size!19809 (BalanceConc!16220) Int)

(assert (=> b!2190668 (= lt!818522 (size!19809 totalInput!923))))

(declare-fun b!2190669 () Bool)

(declare-fun res!941402 () Bool)

(assert (=> b!2190669 (=> (not res!941402) (not e!1399900))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6093 0))(
  ( (ElementMatch!6093 (c!348481 C!12332)) (Concat!10395 (regOne!12698 Regex!6093) (regTwo!12698 Regex!6093)) (EmptyExpr!6093) (Star!6093 (reg!6422 Regex!6093)) (EmptyLang!6093) (Union!6093 (regOne!12699 Regex!6093) (regTwo!12699 Regex!6093)) )
))
(declare-datatypes ((List!25460 0))(
  ( (Nil!25376) (Cons!25376 (h!30777 Regex!6093) (t!198058 List!25460)) )
))
(declare-datatypes ((Context!3326 0))(
  ( (Context!3327 (exprs!2163 List!25460)) )
))
(declare-fun z!3955 () (InoxSet Context!3326))

(declare-fun lostCauseZipper!211 ((InoxSet Context!3326)) Bool)

(assert (=> b!2190669 (= res!941402 (not (lostCauseZipper!211 z!3955)))))

(declare-fun b!2190670 () Bool)

(declare-fun e!1399902 () Bool)

(assert (=> b!2190670 (= e!1399900 e!1399902)))

(declare-fun res!941397 () Bool)

(assert (=> b!2190670 (=> (not res!941397) (not e!1399902))))

(declare-fun lt!818523 () Int)

(declare-fun lt!818527 () Int)

(assert (=> b!2190670 (= res!941397 (= lt!818523 lt!818527))))

(declare-fun lt!818528 () Int)

(declare-fun lt!818525 () (InoxSet Context!3326))

(declare-fun furthestNullablePosition!263 ((InoxSet Context!3326) Int BalanceConc!16220 Int Int) Int)

(assert (=> b!2190670 (= lt!818527 (furthestNullablePosition!263 lt!818525 (+ 1 from!1114) totalInput!923 lt!818522 lt!818528))))

(assert (=> b!2190670 (= lt!818523 (furthestNullablePosition!263 z!3955 from!1114 totalInput!923 lt!818522 lastNullablePos!193))))

(declare-fun e!1399897 () Int)

(assert (=> b!2190670 (= lt!818528 e!1399897)))

(declare-fun c!348479 () Bool)

(declare-fun nullableZipper!373 ((InoxSet Context!3326)) Bool)

(assert (=> b!2190670 (= c!348479 (nullableZipper!373 lt!818525))))

(declare-fun derivationStepZipper!170 ((InoxSet Context!3326) C!12332) (InoxSet Context!3326))

(declare-fun apply!6126 (BalanceConc!16220 Int) C!12332)

(assert (=> b!2190670 (= lt!818525 (derivationStepZipper!170 z!3955 (apply!6126 totalInput!923 from!1114)))))

(declare-fun b!2190671 () Bool)

(assert (=> b!2190671 (= e!1399897 lastNullablePos!193)))

(declare-fun b!2190672 () Bool)

(declare-fun res!941401 () Bool)

(assert (=> b!2190672 (=> (not res!941401) (not e!1399900))))

(declare-fun e!1399901 () Bool)

(assert (=> b!2190672 (= res!941401 e!1399901)))

(declare-fun res!941400 () Bool)

(assert (=> b!2190672 (=> res!941400 e!1399901)))

(assert (=> b!2190672 (= res!941400 (not (nullableZipper!373 z!3955)))))

(declare-fun b!2190673 () Bool)

(declare-fun res!941396 () Bool)

(assert (=> b!2190673 (=> (not res!941396) (not e!1399900))))

(assert (=> b!2190673 (= res!941396 (not (= from!1114 lt!818522)))))

(declare-fun b!2190674 () Bool)

(declare-fun e!1399903 () Bool)

(declare-fun tp!682928 () Bool)

(assert (=> b!2190674 (= e!1399903 tp!682928)))

(declare-fun setNonEmpty!18504 () Bool)

(declare-fun setRes!18504 () Bool)

(declare-fun tp!682929 () Bool)

(declare-fun setElem!18504 () Context!3326)

(declare-fun inv!33819 (Context!3326) Bool)

(assert (=> setNonEmpty!18504 (= setRes!18504 (and tp!682929 (inv!33819 setElem!18504) e!1399903))))

(declare-fun setRest!18504 () (InoxSet Context!3326))

(assert (=> setNonEmpty!18504 (= z!3955 ((_ map or) (store ((as const (Array Context!3326 Bool)) false) setElem!18504 true) setRest!18504))))

(declare-fun lt!818526 () Int)

(declare-fun b!2190675 () Bool)

(assert (=> b!2190675 (= e!1399902 (not (or (> lt!818526 0) (> lt!818527 from!1114) (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818522)))))))

(declare-fun e!1399898 () Bool)

(assert (=> b!2190675 e!1399898))

(declare-fun res!941403 () Bool)

(assert (=> b!2190675 (=> res!941403 e!1399898)))

(assert (=> b!2190675 (= res!941403 (<= lt!818526 0))))

(assert (=> b!2190675 (= lt!818526 (+ 1 (- lt!818527 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38481 0))(
  ( (Unit!38482) )
))
(declare-fun lt!818524 () Unit!38481)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!98 ((InoxSet Context!3326) Int BalanceConc!16220 Int) Unit!38481)

(assert (=> b!2190675 (= lt!818524 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!98 lt!818525 (+ 1 from!1114) totalInput!923 lt!818528))))

(declare-fun b!2190676 () Bool)

(assert (=> b!2190676 (= e!1399901 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190677 () Bool)

(declare-fun e!1399896 () Bool)

(declare-fun tp!682930 () Bool)

(declare-fun inv!33820 (Conc!8229) Bool)

(assert (=> b!2190677 (= e!1399896 (and (inv!33820 (c!348480 totalInput!923)) tp!682930))))

(declare-fun setIsEmpty!18504 () Bool)

(assert (=> setIsEmpty!18504 setRes!18504))

(declare-fun res!941399 () Bool)

(assert (=> start!212502 (=> (not res!941399) (not e!1399899))))

(assert (=> start!212502 (= res!941399 (>= from!1114 0))))

(assert (=> start!212502 e!1399899))

(assert (=> start!212502 true))

(declare-fun inv!33821 (BalanceConc!16220) Bool)

(assert (=> start!212502 (and (inv!33821 totalInput!923) e!1399896)))

(declare-fun condSetEmpty!18504 () Bool)

(assert (=> start!212502 (= condSetEmpty!18504 (= z!3955 ((as const (Array Context!3326 Bool)) false)))))

(assert (=> start!212502 setRes!18504))

(declare-fun b!2190678 () Bool)

(declare-fun matchZipper!193 ((InoxSet Context!3326) List!25459) Bool)

(declare-fun take!285 (List!25459 Int) List!25459)

(declare-fun drop!1295 (List!25459 Int) List!25459)

(declare-fun list!9740 (BalanceConc!16220) List!25459)

(assert (=> b!2190678 (= e!1399898 (matchZipper!193 lt!818525 (take!285 (drop!1295 (list!9740 totalInput!923) (+ 1 from!1114)) lt!818526)))))

(declare-fun b!2190679 () Bool)

(assert (=> b!2190679 (= e!1399897 from!1114)))

(assert (= (and start!212502 res!941399) b!2190668))

(assert (= (and b!2190668 res!941398) b!2190672))

(assert (= (and b!2190672 (not res!941400)) b!2190676))

(assert (= (and b!2190672 res!941401) b!2190673))

(assert (= (and b!2190673 res!941396) b!2190669))

(assert (= (and b!2190669 res!941402) b!2190670))

(assert (= (and b!2190670 c!348479) b!2190679))

(assert (= (and b!2190670 (not c!348479)) b!2190671))

(assert (= (and b!2190670 res!941397) b!2190675))

(assert (= (and b!2190675 (not res!941403)) b!2190678))

(assert (= start!212502 b!2190677))

(assert (= (and start!212502 condSetEmpty!18504) setIsEmpty!18504))

(assert (= (and start!212502 (not condSetEmpty!18504)) setNonEmpty!18504))

(assert (= setNonEmpty!18504 b!2190674))

(declare-fun m!2633539 () Bool)

(assert (=> b!2190672 m!2633539))

(declare-fun m!2633541 () Bool)

(assert (=> b!2190669 m!2633541))

(declare-fun m!2633543 () Bool)

(assert (=> setNonEmpty!18504 m!2633543))

(declare-fun m!2633545 () Bool)

(assert (=> b!2190677 m!2633545))

(declare-fun m!2633547 () Bool)

(assert (=> b!2190675 m!2633547))

(declare-fun m!2633549 () Bool)

(assert (=> start!212502 m!2633549))

(declare-fun m!2633551 () Bool)

(assert (=> b!2190668 m!2633551))

(declare-fun m!2633553 () Bool)

(assert (=> b!2190678 m!2633553))

(assert (=> b!2190678 m!2633553))

(declare-fun m!2633555 () Bool)

(assert (=> b!2190678 m!2633555))

(assert (=> b!2190678 m!2633555))

(declare-fun m!2633557 () Bool)

(assert (=> b!2190678 m!2633557))

(assert (=> b!2190678 m!2633557))

(declare-fun m!2633559 () Bool)

(assert (=> b!2190678 m!2633559))

(declare-fun m!2633561 () Bool)

(assert (=> b!2190670 m!2633561))

(declare-fun m!2633563 () Bool)

(assert (=> b!2190670 m!2633563))

(declare-fun m!2633565 () Bool)

(assert (=> b!2190670 m!2633565))

(assert (=> b!2190670 m!2633563))

(declare-fun m!2633567 () Bool)

(assert (=> b!2190670 m!2633567))

(declare-fun m!2633569 () Bool)

(assert (=> b!2190670 m!2633569))

(check-sat (not b!2190669) (not setNonEmpty!18504) (not b!2190670) (not b!2190668) (not start!212502) (not b!2190672) (not b!2190675) (not b!2190674) (not b!2190678) (not b!2190677))
(check-sat)
