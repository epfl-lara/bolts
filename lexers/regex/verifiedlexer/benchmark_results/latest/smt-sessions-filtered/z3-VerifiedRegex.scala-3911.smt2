; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214646 () Bool)

(assert start!214646)

(declare-fun b!2207014 () Bool)

(declare-fun lt!825467 () Int)

(declare-fun lt!825466 () Int)

(declare-fun lt!825470 () Int)

(declare-fun e!1409891 () Bool)

(assert (=> b!2207014 (= e!1409891 (or (not (= lt!825466 lt!825467)) (>= lt!825466 lt!825470)))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!825478 () Int)

(declare-datatypes ((C!12724 0))(
  ( (C!12725 (val!7348 Int)) )
))
(declare-datatypes ((List!25885 0))(
  ( (Nil!25801) (Cons!25801 (h!31202 C!12724) (t!198529 List!25885)) )
))
(declare-datatypes ((IArray!16855 0))(
  ( (IArray!16856 (innerList!8485 List!25885)) )
))
(declare-datatypes ((Conc!8425 0))(
  ( (Node!8425 (left!19832 Conc!8425) (right!20162 Conc!8425) (csize!17080 Int) (cheight!8636 Int)) (Leaf!12337 (xs!11367 IArray!16855) (csize!17081 Int)) (Empty!8425) )
))
(declare-datatypes ((BalanceConc!16612 0))(
  ( (BalanceConc!16613 (c!352538 Conc!8425)) )
))
(declare-fun totalInput!891 () BalanceConc!16612)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6289 0))(
  ( (ElementMatch!6289 (c!352539 C!12724)) (Concat!10591 (regOne!13090 Regex!6289) (regTwo!13090 Regex!6289)) (EmptyExpr!6289) (Star!6289 (reg!6618 Regex!6289)) (EmptyLang!6289) (Union!6289 (regOne!13091 Regex!6289) (regTwo!13091 Regex!6289)) )
))
(declare-datatypes ((List!25886 0))(
  ( (Nil!25802) (Cons!25802 (h!31203 Regex!6289) (t!198530 List!25886)) )
))
(declare-datatypes ((Context!3718 0))(
  ( (Context!3719 (exprs!2359 List!25886)) )
))
(declare-fun z!3888 () (InoxSet Context!3718))

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!423 ((InoxSet Context!3718) Int BalanceConc!16612 Int Int) Int)

(assert (=> b!2207014 (= lt!825466 (furthestNullablePosition!423 z!3888 from!1082 totalInput!891 lt!825478 lastNullablePos!161))))

(declare-fun b!2207015 () Bool)

(declare-fun e!1409890 () Int)

(assert (=> b!2207015 (= e!1409890 lastNullablePos!161)))

(declare-fun b!2207016 () Bool)

(declare-fun res!948772 () Bool)

(declare-fun e!1409886 () Bool)

(assert (=> b!2207016 (=> (not res!948772) (not e!1409886))))

(declare-fun e!1409887 () Bool)

(assert (=> b!2207016 (= res!948772 e!1409887)))

(declare-fun res!948770 () Bool)

(assert (=> b!2207016 (=> res!948770 e!1409887)))

(declare-fun nullableZipper!569 ((InoxSet Context!3718)) Bool)

(assert (=> b!2207016 (= res!948770 (not (nullableZipper!569 z!3888)))))

(declare-fun b!2207017 () Bool)

(declare-fun res!948763 () Bool)

(assert (=> b!2207017 (=> (not res!948763) (not e!1409886))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2207017 (= res!948763 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825478))))))

(declare-fun b!2207019 () Bool)

(declare-fun res!948768 () Bool)

(declare-fun e!1409893 () Bool)

(assert (=> b!2207019 (=> res!948768 e!1409893)))

(declare-fun lt!825477 () (InoxSet Context!3718))

(declare-fun lt!825468 () List!25885)

(declare-fun matchZipper!375 ((InoxSet Context!3718) List!25885) Bool)

(assert (=> b!2207019 (= res!948768 (not (matchZipper!375 lt!825477 lt!825468)))))

(declare-fun setIsEmpty!19248 () Bool)

(declare-fun setRes!19248 () Bool)

(assert (=> setIsEmpty!19248 setRes!19248))

(declare-fun b!2207020 () Bool)

(declare-fun res!948773 () Bool)

(assert (=> b!2207020 (=> (not res!948773) (not e!1409886))))

(declare-fun lostCauseZipper!385 ((InoxSet Context!3718)) Bool)

(assert (=> b!2207020 (= res!948773 (not (lostCauseZipper!385 z!3888)))))

(declare-fun b!2207021 () Bool)

(declare-fun e!1409889 () Bool)

(declare-fun tp!686098 () Bool)

(declare-fun inv!34822 (Conc!8425) Bool)

(assert (=> b!2207021 (= e!1409889 (and (inv!34822 (c!352538 totalInput!891)) tp!686098))))

(declare-fun b!2207022 () Bool)

(assert (=> b!2207022 (= e!1409887 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2207023 () Bool)

(declare-fun e!1409892 () Bool)

(declare-fun tp!686099 () Bool)

(assert (=> b!2207023 (= e!1409892 tp!686099)))

(declare-fun b!2207024 () Bool)

(declare-fun res!948771 () Bool)

(assert (=> b!2207024 (=> (not res!948771) (not e!1409886))))

(assert (=> b!2207024 (= res!948771 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun res!948767 () Bool)

(declare-fun e!1409885 () Bool)

(assert (=> start!214646 (=> (not res!948767) (not e!1409885))))

(assert (=> start!214646 (= res!948767 (>= from!1082 0))))

(assert (=> start!214646 e!1409885))

(assert (=> start!214646 true))

(declare-fun inv!34823 (BalanceConc!16612) Bool)

(assert (=> start!214646 (and (inv!34823 totalInput!891) e!1409889)))

(declare-fun condSetEmpty!19248 () Bool)

(assert (=> start!214646 (= condSetEmpty!19248 (= z!3888 ((as const (Array Context!3718 Bool)) false)))))

(assert (=> start!214646 setRes!19248))

(declare-fun b!2207018 () Bool)

(declare-fun res!948764 () Bool)

(assert (=> b!2207018 (=> (not res!948764) (not e!1409886))))

(declare-fun isEmpty!14764 (BalanceConc!16612) Bool)

(assert (=> b!2207018 (= res!948764 (not (isEmpty!14764 totalInput!891)))))

(declare-fun b!2207025 () Bool)

(declare-fun e!1409888 () Bool)

(assert (=> b!2207025 (= e!1409885 e!1409888)))

(declare-fun res!948766 () Bool)

(assert (=> b!2207025 (=> (not res!948766) (not e!1409888))))

(assert (=> b!2207025 (= res!948766 (and (<= from!1082 lt!825478) (>= knownSize!10 0) (<= knownSize!10 (- lt!825478 from!1082))))))

(declare-fun size!20099 (BalanceConc!16612) Int)

(assert (=> b!2207025 (= lt!825478 (size!20099 totalInput!891))))

(declare-fun b!2207026 () Bool)

(assert (=> b!2207026 (= e!1409890 from!1082)))

(declare-fun b!2207027 () Bool)

(assert (=> b!2207027 (= e!1409886 (not e!1409893))))

(declare-fun res!948765 () Bool)

(assert (=> b!2207027 (=> res!948765 e!1409893)))

(declare-fun lt!825472 () List!25885)

(declare-fun tail!3207 (List!25885) List!25885)

(assert (=> b!2207027 (= res!948765 (not (= lt!825468 (tail!3207 lt!825472))))))

(declare-fun lt!825476 () C!12724)

(declare-fun lt!825471 () List!25885)

(declare-fun take!467 (List!25885 Int) List!25885)

(assert (=> b!2207027 (= (Cons!25801 lt!825476 lt!825468) (take!467 lt!825471 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!825474 () List!25885)

(declare-fun drop!1477 (List!25885 Int) List!25885)

(assert (=> b!2207027 (= lt!825468 (take!467 (drop!1477 lt!825474 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6378 (List!25885 Int) C!12724)

(assert (=> b!2207027 (= lt!825476 (apply!6378 lt!825474 from!1082))))

(declare-datatypes ((Unit!38893 0))(
  ( (Unit!38894) )
))
(declare-fun lt!825475 () Unit!38893)

(declare-fun lemmaDropTakeAddOneLeft!52 (List!25885 Int Int) Unit!38893)

(assert (=> b!2207027 (= lt!825475 (lemmaDropTakeAddOneLeft!52 lt!825474 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825469 () Int)

(assert (=> b!2207027 (= lt!825467 (furthestNullablePosition!423 lt!825477 (+ 1 from!1082) totalInput!891 lt!825478 lt!825469))))

(assert (=> b!2207027 (= lt!825469 e!1409890)))

(declare-fun c!352537 () Bool)

(assert (=> b!2207027 (= c!352537 (nullableZipper!569 lt!825477))))

(declare-fun derivationStepZipper!321 ((InoxSet Context!3718) C!12724) (InoxSet Context!3718))

(declare-fun apply!6379 (BalanceConc!16612 Int) C!12724)

(assert (=> b!2207027 (= lt!825477 (derivationStepZipper!321 z!3888 (apply!6379 totalInput!891 from!1082)))))

(declare-fun b!2207028 () Bool)

(assert (=> b!2207028 (= e!1409893 e!1409891)))

(declare-fun res!948769 () Bool)

(assert (=> b!2207028 (=> res!948769 e!1409891)))

(assert (=> b!2207028 (= res!948769 (< lt!825467 lt!825470))))

(assert (=> b!2207028 (= lt!825470 (+ (- from!1082 1) knownSize!10))))

(assert (=> b!2207028 (>= lt!825467 (+ from!1082 (- knownSize!10 1)))))

(declare-fun lt!825473 () Unit!38893)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!14 ((InoxSet Context!3718) Int BalanceConc!16612 Int Int) Unit!38893)

(assert (=> b!2207028 (= lt!825473 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!14 lt!825477 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!825469))))

(declare-fun b!2207029 () Bool)

(assert (=> b!2207029 (= e!1409888 e!1409886)))

(declare-fun res!948762 () Bool)

(assert (=> b!2207029 (=> (not res!948762) (not e!1409886))))

(assert (=> b!2207029 (= res!948762 (matchZipper!375 z!3888 lt!825472))))

(assert (=> b!2207029 (= lt!825472 (take!467 lt!825471 knownSize!10))))

(assert (=> b!2207029 (= lt!825471 (drop!1477 lt!825474 from!1082))))

(declare-fun list!9972 (BalanceConc!16612) List!25885)

(assert (=> b!2207029 (= lt!825474 (list!9972 totalInput!891))))

(declare-fun setNonEmpty!19248 () Bool)

(declare-fun setElem!19248 () Context!3718)

(declare-fun tp!686100 () Bool)

(declare-fun inv!34824 (Context!3718) Bool)

(assert (=> setNonEmpty!19248 (= setRes!19248 (and tp!686100 (inv!34824 setElem!19248) e!1409892))))

(declare-fun setRest!19248 () (InoxSet Context!3718))

(assert (=> setNonEmpty!19248 (= z!3888 ((_ map or) (store ((as const (Array Context!3718 Bool)) false) setElem!19248 true) setRest!19248))))

(assert (= (and start!214646 res!948767) b!2207025))

(assert (= (and b!2207025 res!948766) b!2207029))

(assert (= (and b!2207029 res!948762) b!2207024))

(assert (= (and b!2207024 res!948771) b!2207016))

(assert (= (and b!2207016 (not res!948770)) b!2207022))

(assert (= (and b!2207016 res!948772) b!2207018))

(assert (= (and b!2207018 res!948764) b!2207017))

(assert (= (and b!2207017 res!948763) b!2207020))

(assert (= (and b!2207020 res!948773) b!2207027))

(assert (= (and b!2207027 c!352537) b!2207026))

(assert (= (and b!2207027 (not c!352537)) b!2207015))

(assert (= (and b!2207027 (not res!948765)) b!2207019))

(assert (= (and b!2207019 (not res!948768)) b!2207028))

(assert (= (and b!2207028 (not res!948769)) b!2207014))

(assert (= start!214646 b!2207021))

(assert (= (and start!214646 condSetEmpty!19248) setIsEmpty!19248))

(assert (= (and start!214646 (not condSetEmpty!19248)) setNonEmpty!19248))

(assert (= setNonEmpty!19248 b!2207023))

(declare-fun m!2648627 () Bool)

(assert (=> b!2207027 m!2648627))

(declare-fun m!2648629 () Bool)

(assert (=> b!2207027 m!2648629))

(declare-fun m!2648631 () Bool)

(assert (=> b!2207027 m!2648631))

(declare-fun m!2648633 () Bool)

(assert (=> b!2207027 m!2648633))

(declare-fun m!2648635 () Bool)

(assert (=> b!2207027 m!2648635))

(declare-fun m!2648637 () Bool)

(assert (=> b!2207027 m!2648637))

(assert (=> b!2207027 m!2648627))

(declare-fun m!2648639 () Bool)

(assert (=> b!2207027 m!2648639))

(assert (=> b!2207027 m!2648633))

(declare-fun m!2648641 () Bool)

(assert (=> b!2207027 m!2648641))

(declare-fun m!2648643 () Bool)

(assert (=> b!2207027 m!2648643))

(declare-fun m!2648645 () Bool)

(assert (=> b!2207027 m!2648645))

(declare-fun m!2648647 () Bool)

(assert (=> b!2207020 m!2648647))

(declare-fun m!2648649 () Bool)

(assert (=> b!2207018 m!2648649))

(declare-fun m!2648651 () Bool)

(assert (=> b!2207016 m!2648651))

(declare-fun m!2648653 () Bool)

(assert (=> b!2207021 m!2648653))

(declare-fun m!2648655 () Bool)

(assert (=> b!2207014 m!2648655))

(declare-fun m!2648657 () Bool)

(assert (=> b!2207028 m!2648657))

(declare-fun m!2648659 () Bool)

(assert (=> b!2207019 m!2648659))

(declare-fun m!2648661 () Bool)

(assert (=> b!2207025 m!2648661))

(declare-fun m!2648663 () Bool)

(assert (=> b!2207029 m!2648663))

(declare-fun m!2648665 () Bool)

(assert (=> b!2207029 m!2648665))

(declare-fun m!2648667 () Bool)

(assert (=> b!2207029 m!2648667))

(declare-fun m!2648669 () Bool)

(assert (=> b!2207029 m!2648669))

(declare-fun m!2648671 () Bool)

(assert (=> setNonEmpty!19248 m!2648671))

(declare-fun m!2648673 () Bool)

(assert (=> start!214646 m!2648673))

(check-sat (not b!2207029) (not start!214646) (not b!2207016) (not b!2207023) (not b!2207025) (not b!2207019) (not b!2207028) (not b!2207027) (not b!2207014) (not setNonEmpty!19248) (not b!2207018) (not b!2207021) (not b!2207020))
(check-sat)
