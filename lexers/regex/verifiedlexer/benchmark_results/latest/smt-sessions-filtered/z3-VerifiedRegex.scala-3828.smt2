; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212562 () Bool)

(assert start!212562)

(declare-fun b!2191967 () Bool)

(declare-fun e!1400791 () Bool)

(declare-fun e!1400788 () Bool)

(assert (=> b!2191967 (= e!1400791 e!1400788)))

(declare-fun res!942307 () Bool)

(assert (=> b!2191967 (=> res!942307 e!1400788)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12392 0))(
  ( (C!12393 (val!7182 Int)) )
))
(declare-datatypes ((Regex!6123 0))(
  ( (ElementMatch!6123 (c!348648 C!12392)) (Concat!10425 (regOne!12758 Regex!6123) (regTwo!12758 Regex!6123)) (EmptyExpr!6123) (Star!6123 (reg!6452 Regex!6123)) (EmptyLang!6123) (Union!6123 (regOne!12759 Regex!6123) (regTwo!12759 Regex!6123)) )
))
(declare-datatypes ((List!25519 0))(
  ( (Nil!25435) (Cons!25435 (h!30836 Regex!6123) (t!198117 List!25519)) )
))
(declare-datatypes ((Context!3386 0))(
  ( (Context!3387 (exprs!2193 List!25519)) )
))
(declare-fun lt!819374 () (InoxSet Context!3386))

(declare-datatypes ((List!25520 0))(
  ( (Nil!25436) (Cons!25436 (h!30837 C!12392) (t!198118 List!25520)) )
))
(declare-fun lt!819386 () List!25520)

(declare-fun matchZipper!223 ((InoxSet Context!3386) List!25520) Bool)

(assert (=> b!2191967 (= res!942307 (not (matchZipper!223 lt!819374 lt!819386)))))

(declare-fun lt!819378 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!819385 () List!25520)

(declare-fun take!315 (List!25520 Int) List!25520)

(declare-fun drop!1325 (List!25520 Int) List!25520)

(assert (=> b!2191967 (= lt!819386 (take!315 (drop!1325 lt!819385 (+ 1 from!1114)) lt!819378))))

(declare-datatypes ((IArray!16523 0))(
  ( (IArray!16524 (innerList!8319 List!25520)) )
))
(declare-datatypes ((Conc!8259 0))(
  ( (Node!8259 (left!19515 Conc!8259) (right!19845 Conc!8259) (csize!16748 Int) (cheight!8470 Int)) (Leaf!12088 (xs!11201 IArray!16523) (csize!16749 Int)) (Empty!8259) )
))
(declare-datatypes ((BalanceConc!16280 0))(
  ( (BalanceConc!16281 (c!348649 Conc!8259)) )
))
(declare-fun totalInput!923 () BalanceConc!16280)

(declare-fun list!9770 (BalanceConc!16280) List!25520)

(assert (=> b!2191967 (= lt!819385 (list!9770 totalInput!923))))

(declare-fun b!2191968 () Bool)

(declare-fun res!942305 () Bool)

(declare-fun e!1400796 () Bool)

(assert (=> b!2191968 (=> (not res!942305) (not e!1400796))))

(declare-fun z!3955 () (InoxSet Context!3386))

(declare-fun lostCauseZipper!241 ((InoxSet Context!3386)) Bool)

(assert (=> b!2191968 (= res!942305 (not (lostCauseZipper!241 z!3955)))))

(declare-fun e!1400790 () Bool)

(declare-fun setElem!18594 () Context!3386)

(declare-fun tp!683200 () Bool)

(declare-fun setNonEmpty!18594 () Bool)

(declare-fun setRes!18594 () Bool)

(declare-fun inv!33954 (Context!3386) Bool)

(assert (=> setNonEmpty!18594 (= setRes!18594 (and tp!683200 (inv!33954 setElem!18594) e!1400790))))

(declare-fun setRest!18594 () (InoxSet Context!3386))

(assert (=> setNonEmpty!18594 (= z!3955 ((_ map or) (store ((as const (Array Context!3386 Bool)) false) setElem!18594 true) setRest!18594))))

(declare-fun b!2191969 () Bool)

(declare-fun tp!683199 () Bool)

(assert (=> b!2191969 (= e!1400790 tp!683199)))

(declare-fun b!2191970 () Bool)

(declare-fun e!1400795 () Bool)

(declare-fun tp!683198 () Bool)

(declare-fun inv!33955 (Conc!8259) Bool)

(assert (=> b!2191970 (= e!1400795 (and (inv!33955 (c!348649 totalInput!923)) tp!683198))))

(declare-fun res!942304 () Bool)

(declare-fun e!1400794 () Bool)

(assert (=> start!212562 (=> (not res!942304) (not e!1400794))))

(assert (=> start!212562 (= res!942304 (>= from!1114 0))))

(assert (=> start!212562 e!1400794))

(assert (=> start!212562 true))

(declare-fun inv!33956 (BalanceConc!16280) Bool)

(assert (=> start!212562 (and (inv!33956 totalInput!923) e!1400795)))

(declare-fun condSetEmpty!18594 () Bool)

(assert (=> start!212562 (= condSetEmpty!18594 (= z!3955 ((as const (Array Context!3386 Bool)) false)))))

(assert (=> start!212562 setRes!18594))

(declare-fun b!2191971 () Bool)

(declare-fun res!942306 () Bool)

(assert (=> b!2191971 (=> (not res!942306) (not e!1400796))))

(declare-fun lt!819377 () Int)

(assert (=> b!2191971 (= res!942306 (not (= from!1114 lt!819377)))))

(declare-fun b!2191972 () Bool)

(declare-fun e!1400792 () Int)

(assert (=> b!2191972 (= e!1400792 from!1114)))

(declare-fun b!2191973 () Bool)

(assert (=> b!2191973 (= e!1400788 (and (<= 0 from!1114) (< from!1114 lt!819377)))))

(declare-fun lt!819384 () Int)

(declare-fun apply!6163 (List!25520 Int) C!12392)

(assert (=> b!2191973 (= (Cons!25436 (apply!6163 lt!819385 from!1114) lt!819386) (take!315 (drop!1325 lt!819385 from!1114) (+ 2 lt!819384)))))

(declare-datatypes ((Unit!38549 0))(
  ( (Unit!38550) )
))
(declare-fun lt!819380 () Unit!38549)

(declare-fun lemmaDropTakeAddOneLeft!8 (List!25520 Int Int) Unit!38549)

(assert (=> b!2191973 (= lt!819380 (lemmaDropTakeAddOneLeft!8 lt!819385 from!1114 lt!819378))))

(declare-fun b!2191974 () Bool)

(declare-fun res!942303 () Bool)

(assert (=> b!2191974 (=> res!942303 e!1400788)))

(declare-fun lt!819382 () C!12392)

(assert (=> b!2191974 (= res!942303 (not (matchZipper!223 z!3955 (Cons!25436 lt!819382 lt!819386))))))

(declare-fun b!2191975 () Bool)

(declare-fun e!1400793 () Bool)

(assert (=> b!2191975 (= e!1400796 e!1400793)))

(declare-fun res!942302 () Bool)

(assert (=> b!2191975 (=> (not res!942302) (not e!1400793))))

(declare-fun lt!819379 () Int)

(declare-fun lt!819376 () Int)

(assert (=> b!2191975 (= res!942302 (= lt!819379 lt!819376))))

(declare-fun lt!819375 () Int)

(declare-fun furthestNullablePosition!293 ((InoxSet Context!3386) Int BalanceConc!16280 Int Int) Int)

(assert (=> b!2191975 (= lt!819376 (furthestNullablePosition!293 lt!819374 (+ 1 from!1114) totalInput!923 lt!819377 lt!819375))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191975 (= lt!819379 (furthestNullablePosition!293 z!3955 from!1114 totalInput!923 lt!819377 lastNullablePos!193))))

(assert (=> b!2191975 (= lt!819375 e!1400792)))

(declare-fun c!348647 () Bool)

(declare-fun nullableZipper!403 ((InoxSet Context!3386)) Bool)

(assert (=> b!2191975 (= c!348647 (nullableZipper!403 lt!819374))))

(declare-fun derivationStepZipper!200 ((InoxSet Context!3386) C!12392) (InoxSet Context!3386))

(assert (=> b!2191975 (= lt!819374 (derivationStepZipper!200 z!3955 lt!819382))))

(declare-fun apply!6164 (BalanceConc!16280 Int) C!12392)

(assert (=> b!2191975 (= lt!819382 (apply!6164 totalInput!923 from!1114))))

(declare-fun b!2191976 () Bool)

(declare-fun res!942300 () Bool)

(assert (=> b!2191976 (=> (not res!942300) (not e!1400796))))

(declare-fun e!1400797 () Bool)

(assert (=> b!2191976 (= res!942300 e!1400797)))

(declare-fun res!942308 () Bool)

(assert (=> b!2191976 (=> res!942308 e!1400797)))

(assert (=> b!2191976 (= res!942308 (not (nullableZipper!403 z!3955)))))

(declare-fun setIsEmpty!18594 () Bool)

(assert (=> setIsEmpty!18594 setRes!18594))

(declare-fun b!2191977 () Bool)

(assert (=> b!2191977 (= e!1400794 e!1400796)))

(declare-fun res!942309 () Bool)

(assert (=> b!2191977 (=> (not res!942309) (not e!1400796))))

(assert (=> b!2191977 (= res!942309 (and (<= from!1114 lt!819377) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19843 (BalanceConc!16280) Int)

(assert (=> b!2191977 (= lt!819377 (size!19843 totalInput!923))))

(declare-fun e!1400789 () Bool)

(declare-fun b!2191978 () Bool)

(assert (=> b!2191978 (= e!1400789 (matchZipper!223 lt!819374 (take!315 (drop!1325 (list!9770 totalInput!923) (+ 1 from!1114)) lt!819378)))))

(declare-fun b!2191979 () Bool)

(assert (=> b!2191979 (= e!1400792 lastNullablePos!193)))

(declare-fun b!2191980 () Bool)

(assert (=> b!2191980 (= e!1400797 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191981 () Bool)

(assert (=> b!2191981 (= e!1400793 (not e!1400791))))

(declare-fun res!942301 () Bool)

(assert (=> b!2191981 (=> res!942301 e!1400791)))

(declare-fun lt!819383 () Bool)

(assert (=> b!2191981 (= res!942301 lt!819383)))

(assert (=> b!2191981 e!1400789))

(declare-fun res!942299 () Bool)

(assert (=> b!2191981 (=> res!942299 e!1400789)))

(assert (=> b!2191981 (= res!942299 lt!819383)))

(assert (=> b!2191981 (= lt!819383 (<= lt!819378 0))))

(assert (=> b!2191981 (= lt!819378 (+ 1 lt!819384))))

(assert (=> b!2191981 (= lt!819384 (- lt!819376 (+ 1 from!1114)))))

(declare-fun lt!819381 () Unit!38549)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!128 ((InoxSet Context!3386) Int BalanceConc!16280 Int) Unit!38549)

(assert (=> b!2191981 (= lt!819381 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!128 lt!819374 (+ 1 from!1114) totalInput!923 lt!819375))))

(assert (= (and start!212562 res!942304) b!2191977))

(assert (= (and b!2191977 res!942309) b!2191976))

(assert (= (and b!2191976 (not res!942308)) b!2191980))

(assert (= (and b!2191976 res!942300) b!2191971))

(assert (= (and b!2191971 res!942306) b!2191968))

(assert (= (and b!2191968 res!942305) b!2191975))

(assert (= (and b!2191975 c!348647) b!2191972))

(assert (= (and b!2191975 (not c!348647)) b!2191979))

(assert (= (and b!2191975 res!942302) b!2191981))

(assert (= (and b!2191981 (not res!942299)) b!2191978))

(assert (= (and b!2191981 (not res!942301)) b!2191967))

(assert (= (and b!2191967 (not res!942307)) b!2191974))

(assert (= (and b!2191974 (not res!942303)) b!2191973))

(assert (= start!212562 b!2191970))

(assert (= (and start!212562 condSetEmpty!18594) setIsEmpty!18594))

(assert (= (and start!212562 (not condSetEmpty!18594)) setNonEmpty!18594))

(assert (= setNonEmpty!18594 b!2191969))

(declare-fun m!2634699 () Bool)

(assert (=> b!2191967 m!2634699))

(declare-fun m!2634701 () Bool)

(assert (=> b!2191967 m!2634701))

(assert (=> b!2191967 m!2634701))

(declare-fun m!2634703 () Bool)

(assert (=> b!2191967 m!2634703))

(declare-fun m!2634705 () Bool)

(assert (=> b!2191967 m!2634705))

(declare-fun m!2634707 () Bool)

(assert (=> b!2191976 m!2634707))

(declare-fun m!2634709 () Bool)

(assert (=> b!2191977 m!2634709))

(declare-fun m!2634711 () Bool)

(assert (=> b!2191968 m!2634711))

(declare-fun m!2634713 () Bool)

(assert (=> b!2191974 m!2634713))

(declare-fun m!2634715 () Bool)

(assert (=> start!212562 m!2634715))

(declare-fun m!2634717 () Bool)

(assert (=> b!2191970 m!2634717))

(declare-fun m!2634719 () Bool)

(assert (=> b!2191981 m!2634719))

(declare-fun m!2634721 () Bool)

(assert (=> setNonEmpty!18594 m!2634721))

(declare-fun m!2634723 () Bool)

(assert (=> b!2191975 m!2634723))

(declare-fun m!2634725 () Bool)

(assert (=> b!2191975 m!2634725))

(declare-fun m!2634727 () Bool)

(assert (=> b!2191975 m!2634727))

(declare-fun m!2634729 () Bool)

(assert (=> b!2191975 m!2634729))

(declare-fun m!2634731 () Bool)

(assert (=> b!2191975 m!2634731))

(assert (=> b!2191978 m!2634705))

(assert (=> b!2191978 m!2634705))

(declare-fun m!2634733 () Bool)

(assert (=> b!2191978 m!2634733))

(assert (=> b!2191978 m!2634733))

(declare-fun m!2634735 () Bool)

(assert (=> b!2191978 m!2634735))

(assert (=> b!2191978 m!2634735))

(declare-fun m!2634737 () Bool)

(assert (=> b!2191978 m!2634737))

(declare-fun m!2634739 () Bool)

(assert (=> b!2191973 m!2634739))

(declare-fun m!2634741 () Bool)

(assert (=> b!2191973 m!2634741))

(assert (=> b!2191973 m!2634741))

(declare-fun m!2634743 () Bool)

(assert (=> b!2191973 m!2634743))

(declare-fun m!2634745 () Bool)

(assert (=> b!2191973 m!2634745))

(check-sat (not setNonEmpty!18594) (not b!2191981) (not start!212562) (not b!2191974) (not b!2191967) (not b!2191973) (not b!2191968) (not b!2191970) (not b!2191969) (not b!2191975) (not b!2191977) (not b!2191976) (not b!2191978))
(check-sat)
