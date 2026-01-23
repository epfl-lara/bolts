; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212714 () Bool)

(assert start!212714)

(declare-fun res!942795 () Bool)

(declare-fun e!1401502 () Bool)

(assert (=> start!212714 (=> (not res!942795) (not e!1401502))))

(declare-fun from!1114 () Int)

(assert (=> start!212714 (= res!942795 (>= from!1114 0))))

(assert (=> start!212714 e!1401502))

(assert (=> start!212714 true))

(declare-datatypes ((C!12424 0))(
  ( (C!12425 (val!7198 Int)) )
))
(declare-datatypes ((List!25556 0))(
  ( (Nil!25472) (Cons!25472 (h!30873 C!12424) (t!198154 List!25556)) )
))
(declare-datatypes ((IArray!16555 0))(
  ( (IArray!16556 (innerList!8335 List!25556)) )
))
(declare-datatypes ((Conc!8275 0))(
  ( (Node!8275 (left!19547 Conc!8275) (right!19877 Conc!8275) (csize!16780 Int) (cheight!8486 Int)) (Leaf!12112 (xs!11217 IArray!16555) (csize!16781 Int)) (Empty!8275) )
))
(declare-datatypes ((BalanceConc!16312 0))(
  ( (BalanceConc!16313 (c!348912 Conc!8275)) )
))
(declare-fun totalInput!923 () BalanceConc!16312)

(declare-fun e!1401499 () Bool)

(declare-fun inv!34043 (BalanceConc!16312) Bool)

(assert (=> start!212714 (and (inv!34043 totalInput!923) e!1401499)))

(declare-fun condSetEmpty!18660 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6139 0))(
  ( (ElementMatch!6139 (c!348913 C!12424)) (Concat!10441 (regOne!12790 Regex!6139) (regTwo!12790 Regex!6139)) (EmptyExpr!6139) (Star!6139 (reg!6468 Regex!6139)) (EmptyLang!6139) (Union!6139 (regOne!12791 Regex!6139) (regTwo!12791 Regex!6139)) )
))
(declare-datatypes ((List!25557 0))(
  ( (Nil!25473) (Cons!25473 (h!30874 Regex!6139) (t!198155 List!25557)) )
))
(declare-datatypes ((Context!3418 0))(
  ( (Context!3419 (exprs!2209 List!25557)) )
))
(declare-fun z!3955 () (InoxSet Context!3418))

(assert (=> start!212714 (= condSetEmpty!18660 (= z!3955 ((as const (Array Context!3418 Bool)) false)))))

(declare-fun setRes!18660 () Bool)

(assert (=> start!212714 setRes!18660))

(declare-fun b!2193018 () Bool)

(declare-fun e!1401504 () Bool)

(assert (=> b!2193018 (= e!1401502 e!1401504)))

(declare-fun res!942797 () Bool)

(assert (=> b!2193018 (=> (not res!942797) (not e!1401504))))

(declare-fun lt!819988 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193018 (= res!942797 (and (<= from!1114 lt!819988) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19869 (BalanceConc!16312) Int)

(assert (=> b!2193018 (= lt!819988 (size!19869 totalInput!923))))

(declare-fun b!2193019 () Bool)

(declare-fun e!1401500 () Bool)

(declare-fun tp!683470 () Bool)

(assert (=> b!2193019 (= e!1401500 tp!683470)))

(declare-fun b!2193020 () Bool)

(declare-fun e!1401498 () Bool)

(assert (=> b!2193020 (= e!1401504 e!1401498)))

(declare-fun res!942796 () Bool)

(assert (=> b!2193020 (=> (not res!942796) (not e!1401498))))

(declare-fun lt!819986 () Int)

(declare-fun lt!819987 () Int)

(assert (=> b!2193020 (= res!942796 (= lt!819986 lt!819987))))

(declare-fun lt!819984 () (InoxSet Context!3418))

(declare-fun lt!819983 () Int)

(declare-fun furthestNullablePosition!309 ((InoxSet Context!3418) Int BalanceConc!16312 Int Int) Int)

(assert (=> b!2193020 (= lt!819987 (furthestNullablePosition!309 lt!819984 (+ 1 from!1114) totalInput!923 lt!819988 lt!819983))))

(assert (=> b!2193020 (= lt!819986 (furthestNullablePosition!309 z!3955 from!1114 totalInput!923 lt!819988 lastNullablePos!193))))

(declare-fun e!1401503 () Int)

(assert (=> b!2193020 (= lt!819983 e!1401503)))

(declare-fun c!348911 () Bool)

(declare-fun nullableZipper!419 ((InoxSet Context!3418)) Bool)

(assert (=> b!2193020 (= c!348911 (nullableZipper!419 lt!819984))))

(declare-fun derivationStepZipper!213 ((InoxSet Context!3418) C!12424) (InoxSet Context!3418))

(declare-fun apply!6189 (BalanceConc!16312 Int) C!12424)

(assert (=> b!2193020 (= lt!819984 (derivationStepZipper!213 z!3955 (apply!6189 totalInput!923 from!1114)))))

(declare-fun setElem!18660 () Context!3418)

(declare-fun setNonEmpty!18660 () Bool)

(declare-fun tp!683468 () Bool)

(declare-fun inv!34044 (Context!3418) Bool)

(assert (=> setNonEmpty!18660 (= setRes!18660 (and tp!683468 (inv!34044 setElem!18660) e!1401500))))

(declare-fun setRest!18660 () (InoxSet Context!3418))

(assert (=> setNonEmpty!18660 (= z!3955 ((_ map or) (store ((as const (Array Context!3418 Bool)) false) setElem!18660 true) setRest!18660))))

(declare-fun b!2193021 () Bool)

(declare-fun res!942793 () Bool)

(assert (=> b!2193021 (=> (not res!942793) (not e!1401504))))

(declare-fun lostCauseZipper!257 ((InoxSet Context!3418)) Bool)

(assert (=> b!2193021 (= res!942793 (not (lostCauseZipper!257 z!3955)))))

(declare-fun b!2193022 () Bool)

(declare-fun e!1401505 () Bool)

(assert (=> b!2193022 (= e!1401505 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193023 () Bool)

(declare-fun tp!683469 () Bool)

(declare-fun inv!34045 (Conc!8275) Bool)

(assert (=> b!2193023 (= e!1401499 (and (inv!34045 (c!348912 totalInput!923)) tp!683469))))

(declare-fun b!2193024 () Bool)

(declare-fun lt!819982 () Int)

(declare-fun e!1401501 () Bool)

(declare-fun matchZipper!235 ((InoxSet Context!3418) List!25556) Bool)

(declare-fun take!327 (List!25556 Int) List!25556)

(declare-fun drop!1337 (List!25556 Int) List!25556)

(declare-fun list!9787 (BalanceConc!16312) List!25556)

(assert (=> b!2193024 (= e!1401501 (matchZipper!235 lt!819984 (take!327 (drop!1337 (list!9787 totalInput!923) (+ 1 from!1114)) lt!819982)))))

(declare-fun setIsEmpty!18660 () Bool)

(assert (=> setIsEmpty!18660 setRes!18660))

(declare-fun b!2193025 () Bool)

(declare-fun res!942792 () Bool)

(assert (=> b!2193025 (=> (not res!942792) (not e!1401504))))

(assert (=> b!2193025 (= res!942792 e!1401505)))

(declare-fun res!942794 () Bool)

(assert (=> b!2193025 (=> res!942794 e!1401505)))

(assert (=> b!2193025 (= res!942794 (not (nullableZipper!419 z!3955)))))

(declare-fun b!2193026 () Bool)

(assert (=> b!2193026 (= e!1401498 (not (or (> lt!819982 0) (> lt!819987 from!1114) (< lt!819987 lt!819983) (>= lt!819983 lastNullablePos!193))))))

(assert (=> b!2193026 e!1401501))

(declare-fun res!942798 () Bool)

(assert (=> b!2193026 (=> res!942798 e!1401501)))

(assert (=> b!2193026 (= res!942798 (<= lt!819982 0))))

(assert (=> b!2193026 (= lt!819982 (+ 1 (- lt!819987 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38585 0))(
  ( (Unit!38586) )
))
(declare-fun lt!819985 () Unit!38585)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!138 ((InoxSet Context!3418) Int BalanceConc!16312 Int) Unit!38585)

(assert (=> b!2193026 (= lt!819985 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!138 lt!819984 (+ 1 from!1114) totalInput!923 lt!819983))))

(declare-fun b!2193027 () Bool)

(declare-fun res!942799 () Bool)

(assert (=> b!2193027 (=> (not res!942799) (not e!1401504))))

(assert (=> b!2193027 (= res!942799 (not (= from!1114 lt!819988)))))

(declare-fun b!2193028 () Bool)

(assert (=> b!2193028 (= e!1401503 from!1114)))

(declare-fun b!2193029 () Bool)

(assert (=> b!2193029 (= e!1401503 lastNullablePos!193)))

(assert (= (and start!212714 res!942795) b!2193018))

(assert (= (and b!2193018 res!942797) b!2193025))

(assert (= (and b!2193025 (not res!942794)) b!2193022))

(assert (= (and b!2193025 res!942792) b!2193027))

(assert (= (and b!2193027 res!942799) b!2193021))

(assert (= (and b!2193021 res!942793) b!2193020))

(assert (= (and b!2193020 c!348911) b!2193028))

(assert (= (and b!2193020 (not c!348911)) b!2193029))

(assert (= (and b!2193020 res!942796) b!2193026))

(assert (= (and b!2193026 (not res!942798)) b!2193024))

(assert (= start!212714 b!2193023))

(assert (= (and start!212714 condSetEmpty!18660) setIsEmpty!18660))

(assert (= (and start!212714 (not condSetEmpty!18660)) setNonEmpty!18660))

(assert (= setNonEmpty!18660 b!2193019))

(declare-fun m!2635627 () Bool)

(assert (=> b!2193023 m!2635627))

(declare-fun m!2635629 () Bool)

(assert (=> start!212714 m!2635629))

(declare-fun m!2635631 () Bool)

(assert (=> b!2193021 m!2635631))

(declare-fun m!2635633 () Bool)

(assert (=> b!2193025 m!2635633))

(declare-fun m!2635635 () Bool)

(assert (=> b!2193020 m!2635635))

(declare-fun m!2635637 () Bool)

(assert (=> b!2193020 m!2635637))

(declare-fun m!2635639 () Bool)

(assert (=> b!2193020 m!2635639))

(declare-fun m!2635641 () Bool)

(assert (=> b!2193020 m!2635641))

(assert (=> b!2193020 m!2635639))

(declare-fun m!2635643 () Bool)

(assert (=> b!2193020 m!2635643))

(declare-fun m!2635645 () Bool)

(assert (=> b!2193018 m!2635645))

(declare-fun m!2635647 () Bool)

(assert (=> b!2193024 m!2635647))

(assert (=> b!2193024 m!2635647))

(declare-fun m!2635649 () Bool)

(assert (=> b!2193024 m!2635649))

(assert (=> b!2193024 m!2635649))

(declare-fun m!2635651 () Bool)

(assert (=> b!2193024 m!2635651))

(assert (=> b!2193024 m!2635651))

(declare-fun m!2635653 () Bool)

(assert (=> b!2193024 m!2635653))

(declare-fun m!2635655 () Bool)

(assert (=> setNonEmpty!18660 m!2635655))

(declare-fun m!2635657 () Bool)

(assert (=> b!2193026 m!2635657))

(check-sat (not b!2193018) (not b!2193023) (not b!2193025) (not b!2193026) (not b!2193021) (not start!212714) (not b!2193024) (not setNonEmpty!18660) (not b!2193020) (not b!2193019))
(check-sat)
