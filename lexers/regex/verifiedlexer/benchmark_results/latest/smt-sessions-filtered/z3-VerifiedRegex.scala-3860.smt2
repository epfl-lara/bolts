; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213450 () Bool)

(assert start!213450)

(declare-fun tp!684413 () Bool)

(declare-datatypes ((C!12520 0))(
  ( (C!12521 (val!7246 Int)) )
))
(declare-datatypes ((Regex!6187 0))(
  ( (ElementMatch!6187 (c!350554 C!12520)) (Concat!10489 (regOne!12886 Regex!6187) (regTwo!12886 Regex!6187)) (EmptyExpr!6187) (Star!6187 (reg!6516 Regex!6187)) (EmptyLang!6187) (Union!6187 (regOne!12887 Regex!6187) (regTwo!12887 Regex!6187)) )
))
(declare-datatypes ((List!25664 0))(
  ( (Nil!25580) (Cons!25580 (h!30981 Regex!6187) (t!198282 List!25664)) )
))
(declare-datatypes ((Context!3514 0))(
  ( (Context!3515 (exprs!2257 List!25664)) )
))
(declare-fun setElem!18852 () Context!3514)

(declare-fun setRes!18852 () Bool)

(declare-fun e!1405110 () Bool)

(declare-fun setNonEmpty!18852 () Bool)

(declare-fun inv!34291 (Context!3514) Bool)

(assert (=> setNonEmpty!18852 (= setRes!18852 (and tp!684413 (inv!34291 setElem!18852) e!1405110))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3514))

(declare-fun setRest!18852 () (InoxSet Context!3514))

(assert (=> setNonEmpty!18852 (= z!3955 ((_ map or) (store ((as const (Array Context!3514 Bool)) false) setElem!18852 true) setRest!18852))))

(declare-fun b!2198717 () Bool)

(declare-fun res!944982 () Bool)

(declare-fun e!1405107 () Bool)

(assert (=> b!2198717 (=> (not res!944982) (not e!1405107))))

(declare-fun e!1405113 () Bool)

(assert (=> b!2198717 (= res!944982 e!1405113)))

(declare-fun res!944989 () Bool)

(assert (=> b!2198717 (=> res!944989 e!1405113)))

(declare-fun nullableZipper!467 ((InoxSet Context!3514)) Bool)

(assert (=> b!2198717 (= res!944989 (not (nullableZipper!467 z!3955)))))

(declare-datatypes ((List!25665 0))(
  ( (Nil!25581) (Cons!25581 (h!30982 C!12520) (t!198283 List!25665)) )
))
(declare-datatypes ((IArray!16651 0))(
  ( (IArray!16652 (innerList!8383 List!25665)) )
))
(declare-datatypes ((Conc!8323 0))(
  ( (Node!8323 (left!19643 Conc!8323) (right!19973 Conc!8323) (csize!16876 Int) (cheight!8534 Int)) (Leaf!12184 (xs!11265 IArray!16651) (csize!16877 Int)) (Empty!8323) )
))
(declare-datatypes ((BalanceConc!16408 0))(
  ( (BalanceConc!16409 (c!350555 Conc!8323)) )
))
(declare-fun totalInput!923 () BalanceConc!16408)

(declare-fun b!2198718 () Bool)

(declare-fun e!1405111 () Int)

(declare-fun lt!822369 () (InoxSet Context!3514))

(declare-fun from!1114 () Int)

(declare-fun lt!822361 () Int)

(declare-fun e!1405120 () Int)

(declare-fun furthestNullablePosition!355 ((InoxSet Context!3514) Int BalanceConc!16408 Int Int) Int)

(assert (=> b!2198718 (= e!1405120 (furthestNullablePosition!355 lt!822369 (+ 2 from!1114) totalInput!923 lt!822361 e!1405111))))

(declare-fun lt!822368 () (InoxSet Context!3514))

(declare-fun derivationStepZipper!259 ((InoxSet Context!3514) C!12520) (InoxSet Context!3514))

(declare-fun apply!6266 (BalanceConc!16408 Int) C!12520)

(assert (=> b!2198718 (= lt!822369 (derivationStepZipper!259 lt!822368 (apply!6266 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!350551 () Bool)

(assert (=> b!2198718 (= c!350551 (nullableZipper!467 lt!822369))))

(declare-fun setIsEmpty!18852 () Bool)

(assert (=> setIsEmpty!18852 setRes!18852))

(declare-fun b!2198719 () Bool)

(declare-fun e!1405117 () Bool)

(declare-fun tp!684414 () Bool)

(declare-fun inv!34292 (Conc!8323) Bool)

(assert (=> b!2198719 (= e!1405117 (and (inv!34292 (c!350555 totalInput!923)) tp!684414))))

(declare-fun b!2198720 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2198720 (= e!1405113 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2198721 () Bool)

(declare-fun lt!822362 () Int)

(declare-fun e!1405118 () Bool)

(declare-fun matchZipper!273 ((InoxSet Context!3514) List!25665) Bool)

(declare-fun take!365 (List!25665 Int) List!25665)

(declare-fun drop!1375 (List!25665 Int) List!25665)

(declare-fun list!9841 (BalanceConc!16408) List!25665)

(assert (=> b!2198721 (= e!1405118 (matchZipper!273 lt!822368 (take!365 (drop!1375 (list!9841 totalInput!923) (+ 1 from!1114)) lt!822362)))))

(declare-fun b!2198722 () Bool)

(declare-datatypes ((Unit!38705 0))(
  ( (Unit!38706) )
))
(declare-fun e!1405103 () Unit!38705)

(declare-fun Unit!38707 () Unit!38705)

(assert (=> b!2198722 (= e!1405103 Unit!38707)))

(declare-fun lt!822373 () Int)

(declare-fun lt!822371 () Int)

(assert (=> b!2198722 (= lt!822373 (+ 1 (- lt!822371 from!1114)))))

(declare-fun lt!822364 () List!25665)

(assert (=> b!2198722 (= lt!822364 (list!9841 totalInput!923))))

(declare-fun lt!822363 () Unit!38705)

(declare-fun lemmaDropTakeAddOneLeft!22 (List!25665 Int Int) Unit!38705)

(assert (=> b!2198722 (= lt!822363 (lemmaDropTakeAddOneLeft!22 lt!822364 from!1114 0))))

(declare-fun lt!822360 () C!12520)

(declare-fun apply!6267 (List!25665 Int) C!12520)

(assert (=> b!2198722 (= lt!822360 (apply!6267 lt!822364 from!1114))))

(declare-fun lt!822366 () List!25665)

(assert (=> b!2198722 (= lt!822366 (take!365 (drop!1375 lt!822364 (+ 1 from!1114)) 0))))

(declare-fun lt!822370 () List!25665)

(assert (=> b!2198722 (= lt!822370 (drop!1375 lt!822364 from!1114))))

(declare-fun res!944991 () Bool)

(assert (=> b!2198722 (= res!944991 (= (Cons!25581 lt!822360 lt!822366) (take!365 lt!822370 1)))))

(declare-fun e!1405116 () Bool)

(assert (=> b!2198722 (=> (not res!944991) (not e!1405116))))

(assert (=> b!2198722 e!1405116))

(declare-fun b!2198723 () Bool)

(declare-fun e!1405104 () Bool)

(declare-fun lostCauseZipper!303 ((InoxSet Context!3514)) Bool)

(assert (=> b!2198723 (= e!1405104 (lostCauseZipper!303 lt!822368))))

(declare-fun b!2198724 () Bool)

(declare-fun e!1405112 () Bool)

(declare-fun e!1405108 () Bool)

(assert (=> b!2198724 (= e!1405112 e!1405108)))

(declare-fun res!944986 () Bool)

(assert (=> b!2198724 (=> res!944986 e!1405108)))

(declare-fun lt!822359 () Int)

(assert (=> b!2198724 (= res!944986 (<= lt!822359 0))))

(assert (=> b!2198724 (= lt!822359 (+ 1 (- lt!822371 from!1114)))))

(declare-fun lt!822372 () Unit!38705)

(assert (=> b!2198724 (= lt!822372 e!1405103)))

(declare-fun c!350553 () Bool)

(declare-fun lt!822365 () Int)

(assert (=> b!2198724 (= c!350553 (= lt!822365 lastNullablePos!193))))

(declare-fun b!2198725 () Bool)

(declare-fun e!1405123 () Bool)

(declare-fun e!1405106 () Bool)

(assert (=> b!2198725 (= e!1405123 e!1405106)))

(declare-fun res!944993 () Bool)

(assert (=> b!2198725 (=> res!944993 e!1405106)))

(declare-fun lt!822358 () Int)

(assert (=> b!2198725 (= res!944993 (or (> lt!822362 0) (> lt!822358 from!1114) (< lt!822358 lt!822365) (< lt!822365 lastNullablePos!193) (> lt!822365 from!1114) (and (not (= lt!822365 from!1114)) (not (= lt!822365 lastNullablePos!193))) (not (= lt!822365 lastNullablePos!193))))))

(declare-fun b!2198726 () Bool)

(assert (=> b!2198726 (= e!1405108 (matchZipper!273 z!3955 (take!365 (drop!1375 (list!9841 totalInput!923) from!1114) lt!822359)))))

(declare-fun b!2198727 () Bool)

(assert (=> b!2198727 (= e!1405111 lt!822365)))

(declare-fun b!2198728 () Bool)

(declare-fun e!1405119 () Bool)

(declare-fun e!1405121 () Bool)

(assert (=> b!2198728 (= e!1405119 e!1405121)))

(declare-fun res!944979 () Bool)

(assert (=> b!2198728 (=> (not res!944979) (not e!1405121))))

(assert (=> b!2198728 (= res!944979 (= lt!822358 e!1405120))))

(declare-fun c!350550 () Bool)

(assert (=> b!2198728 (= c!350550 e!1405104)))

(declare-fun res!944975 () Bool)

(assert (=> b!2198728 (=> res!944975 e!1405104)))

(assert (=> b!2198728 (= res!944975 (= (+ 1 from!1114) lt!822361))))

(declare-fun b!2198729 () Bool)

(declare-fun e!1405109 () Int)

(assert (=> b!2198729 (= e!1405109 from!1114)))

(declare-fun b!2198730 () Bool)

(declare-fun Unit!38708 () Unit!38705)

(assert (=> b!2198730 (= e!1405103 Unit!38708)))

(declare-fun e!1405105 () Bool)

(declare-fun lt!822374 () Int)

(declare-fun b!2198731 () Bool)

(assert (=> b!2198731 (= e!1405105 (matchZipper!273 z!3955 (take!365 (drop!1375 (list!9841 totalInput!923) from!1114) lt!822374)))))

(declare-fun res!944980 () Bool)

(declare-fun e!1405115 () Bool)

(assert (=> start!213450 (=> (not res!944980) (not e!1405115))))

(assert (=> start!213450 (= res!944980 (>= from!1114 0))))

(assert (=> start!213450 e!1405115))

(assert (=> start!213450 true))

(declare-fun inv!34293 (BalanceConc!16408) Bool)

(assert (=> start!213450 (and (inv!34293 totalInput!923) e!1405117)))

(declare-fun condSetEmpty!18852 () Bool)

(assert (=> start!213450 (= condSetEmpty!18852 (= z!3955 ((as const (Array Context!3514 Bool)) false)))))

(assert (=> start!213450 setRes!18852))

(declare-fun b!2198732 () Bool)

(declare-fun res!944981 () Bool)

(assert (=> b!2198732 (=> (not res!944981) (not e!1405107))))

(assert (=> b!2198732 (= res!944981 (not (= from!1114 lt!822361)))))

(declare-fun b!2198733 () Bool)

(declare-fun res!944976 () Bool)

(assert (=> b!2198733 (= res!944976 (<= lt!822373 0))))

(declare-fun e!1405114 () Bool)

(assert (=> b!2198733 (=> res!944976 e!1405114)))

(assert (=> b!2198733 (= e!1405116 e!1405114)))

(declare-fun b!2198734 () Bool)

(assert (=> b!2198734 (= e!1405109 lastNullablePos!193)))

(declare-fun b!2198735 () Bool)

(assert (=> b!2198735 (= e!1405114 (matchZipper!273 z!3955 (take!365 lt!822370 lt!822373)))))

(declare-fun b!2198736 () Bool)

(declare-fun tp!684412 () Bool)

(assert (=> b!2198736 (= e!1405110 tp!684412)))

(declare-fun b!2198737 () Bool)

(assert (=> b!2198737 (= e!1405121 false)))

(declare-fun b!2198738 () Bool)

(assert (=> b!2198738 (= e!1405106 e!1405105)))

(declare-fun res!944983 () Bool)

(assert (=> b!2198738 (=> res!944983 e!1405105)))

(assert (=> b!2198738 (= res!944983 (<= lt!822374 0))))

(assert (=> b!2198738 (= lt!822374 (+ 1 (- lt!822371 from!1114)))))

(declare-fun b!2198739 () Bool)

(declare-fun res!944984 () Bool)

(assert (=> b!2198739 (=> (not res!944984) (not e!1405107))))

(assert (=> b!2198739 (= res!944984 (not (lostCauseZipper!303 z!3955)))))

(declare-fun b!2198740 () Bool)

(declare-fun e!1405122 () Bool)

(assert (=> b!2198740 (= e!1405107 e!1405122)))

(declare-fun res!944990 () Bool)

(assert (=> b!2198740 (=> (not res!944990) (not e!1405122))))

(assert (=> b!2198740 (= res!944990 (= lt!822371 lt!822358))))

(assert (=> b!2198740 (= lt!822358 (furthestNullablePosition!355 lt!822368 (+ 1 from!1114) totalInput!923 lt!822361 lt!822365))))

(assert (=> b!2198740 (= lt!822371 (furthestNullablePosition!355 z!3955 from!1114 totalInput!923 lt!822361 lastNullablePos!193))))

(assert (=> b!2198740 (= lt!822365 e!1405109)))

(declare-fun c!350552 () Bool)

(assert (=> b!2198740 (= c!350552 (nullableZipper!467 lt!822368))))

(assert (=> b!2198740 (= lt!822368 (derivationStepZipper!259 z!3955 (apply!6266 totalInput!923 from!1114)))))

(declare-fun b!2198741 () Bool)

(assert (=> b!2198741 (= e!1405115 e!1405107)))

(declare-fun res!944985 () Bool)

(assert (=> b!2198741 (=> (not res!944985) (not e!1405107))))

(assert (=> b!2198741 (= res!944985 (and (<= from!1114 lt!822361) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19945 (BalanceConc!16408) Int)

(assert (=> b!2198741 (= lt!822361 (size!19945 totalInput!923))))

(declare-fun b!2198742 () Bool)

(declare-fun res!944988 () Bool)

(assert (=> b!2198742 (=> (not res!944988) (not e!1405123))))

(assert (=> b!2198742 (= res!944988 e!1405119)))

(declare-fun res!944978 () Bool)

(assert (=> b!2198742 (=> res!944978 e!1405119)))

(assert (=> b!2198742 (= res!944978 (or (> lt!822362 0) (> lt!822358 from!1114) (< lt!822358 lt!822365) (< lt!822365 lastNullablePos!193) (> lt!822365 from!1114) (and (not (= lt!822365 from!1114)) (not (= lt!822365 lastNullablePos!193))) (not (= lt!822365 lastNullablePos!193)) (not (= (+ 1 (- lt!822371 from!1114)) 1))))))

(declare-fun b!2198743 () Bool)

(assert (=> b!2198743 (= e!1405111 (+ 1 from!1114))))

(declare-fun b!2198744 () Bool)

(assert (=> b!2198744 (= e!1405122 (not e!1405112))))

(declare-fun res!944992 () Bool)

(assert (=> b!2198744 (=> res!944992 e!1405112)))

(assert (=> b!2198744 (= res!944992 (or (> lt!822362 0) (> lt!822358 from!1114) (< lt!822358 lt!822365) (< lt!822365 lastNullablePos!193) (> lt!822365 from!1114) (and (not (= lt!822365 from!1114)) (not (= lt!822365 lastNullablePos!193)))))))

(assert (=> b!2198744 e!1405123))

(declare-fun res!944977 () Bool)

(assert (=> b!2198744 (=> (not res!944977) (not e!1405123))))

(assert (=> b!2198744 (= res!944977 e!1405118)))

(declare-fun res!944987 () Bool)

(assert (=> b!2198744 (=> res!944987 e!1405118)))

(assert (=> b!2198744 (= res!944987 (<= lt!822362 0))))

(assert (=> b!2198744 (= lt!822362 (+ 1 (- lt!822358 (+ 1 from!1114))))))

(declare-fun lt!822367 () Unit!38705)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!176 ((InoxSet Context!3514) Int BalanceConc!16408 Int) Unit!38705)

(assert (=> b!2198744 (= lt!822367 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!176 lt!822368 (+ 1 from!1114) totalInput!923 lt!822365))))

(declare-fun b!2198745 () Bool)

(assert (=> b!2198745 (= e!1405120 lt!822365)))

(assert (= (and start!213450 res!944980) b!2198741))

(assert (= (and b!2198741 res!944985) b!2198717))

(assert (= (and b!2198717 (not res!944989)) b!2198720))

(assert (= (and b!2198717 res!944982) b!2198732))

(assert (= (and b!2198732 res!944981) b!2198739))

(assert (= (and b!2198739 res!944984) b!2198740))

(assert (= (and b!2198740 c!350552) b!2198729))

(assert (= (and b!2198740 (not c!350552)) b!2198734))

(assert (= (and b!2198740 res!944990) b!2198744))

(assert (= (and b!2198744 (not res!944987)) b!2198721))

(assert (= (and b!2198744 res!944977) b!2198742))

(assert (= (and b!2198742 (not res!944978)) b!2198728))

(assert (= (and b!2198728 (not res!944975)) b!2198723))

(assert (= (and b!2198728 c!350550) b!2198745))

(assert (= (and b!2198728 (not c!350550)) b!2198718))

(assert (= (and b!2198718 c!350551) b!2198743))

(assert (= (and b!2198718 (not c!350551)) b!2198727))

(assert (= (and b!2198728 res!944979) b!2198737))

(assert (= (and b!2198742 res!944988) b!2198725))

(assert (= (and b!2198725 (not res!944993)) b!2198738))

(assert (= (and b!2198738 (not res!944983)) b!2198731))

(assert (= (and b!2198744 (not res!944992)) b!2198724))

(assert (= (and b!2198724 c!350553) b!2198730))

(assert (= (and b!2198724 (not c!350553)) b!2198722))

(assert (= (and b!2198722 res!944991) b!2198733))

(assert (= (and b!2198733 (not res!944976)) b!2198735))

(assert (= (and b!2198724 (not res!944986)) b!2198726))

(assert (= start!213450 b!2198719))

(assert (= (and start!213450 condSetEmpty!18852) setIsEmpty!18852))

(assert (= (and start!213450 (not condSetEmpty!18852)) setNonEmpty!18852))

(assert (= setNonEmpty!18852 b!2198736))

(declare-fun m!2641623 () Bool)

(assert (=> b!2198726 m!2641623))

(assert (=> b!2198726 m!2641623))

(declare-fun m!2641625 () Bool)

(assert (=> b!2198726 m!2641625))

(assert (=> b!2198726 m!2641625))

(declare-fun m!2641627 () Bool)

(assert (=> b!2198726 m!2641627))

(assert (=> b!2198726 m!2641627))

(declare-fun m!2641629 () Bool)

(assert (=> b!2198726 m!2641629))

(declare-fun m!2641631 () Bool)

(assert (=> b!2198744 m!2641631))

(assert (=> b!2198731 m!2641623))

(assert (=> b!2198731 m!2641623))

(assert (=> b!2198731 m!2641625))

(assert (=> b!2198731 m!2641625))

(declare-fun m!2641633 () Bool)

(assert (=> b!2198731 m!2641633))

(assert (=> b!2198731 m!2641633))

(declare-fun m!2641635 () Bool)

(assert (=> b!2198731 m!2641635))

(declare-fun m!2641637 () Bool)

(assert (=> b!2198735 m!2641637))

(assert (=> b!2198735 m!2641637))

(declare-fun m!2641639 () Bool)

(assert (=> b!2198735 m!2641639))

(declare-fun m!2641641 () Bool)

(assert (=> start!213450 m!2641641))

(declare-fun m!2641643 () Bool)

(assert (=> b!2198718 m!2641643))

(declare-fun m!2641645 () Bool)

(assert (=> b!2198718 m!2641645))

(assert (=> b!2198718 m!2641645))

(declare-fun m!2641647 () Bool)

(assert (=> b!2198718 m!2641647))

(declare-fun m!2641649 () Bool)

(assert (=> b!2198718 m!2641649))

(declare-fun m!2641651 () Bool)

(assert (=> b!2198722 m!2641651))

(declare-fun m!2641653 () Bool)

(assert (=> b!2198722 m!2641653))

(declare-fun m!2641655 () Bool)

(assert (=> b!2198722 m!2641655))

(declare-fun m!2641657 () Bool)

(assert (=> b!2198722 m!2641657))

(declare-fun m!2641659 () Bool)

(assert (=> b!2198722 m!2641659))

(assert (=> b!2198722 m!2641623))

(assert (=> b!2198722 m!2641659))

(declare-fun m!2641661 () Bool)

(assert (=> b!2198722 m!2641661))

(assert (=> b!2198721 m!2641623))

(assert (=> b!2198721 m!2641623))

(declare-fun m!2641663 () Bool)

(assert (=> b!2198721 m!2641663))

(assert (=> b!2198721 m!2641663))

(declare-fun m!2641665 () Bool)

(assert (=> b!2198721 m!2641665))

(assert (=> b!2198721 m!2641665))

(declare-fun m!2641667 () Bool)

(assert (=> b!2198721 m!2641667))

(declare-fun m!2641669 () Bool)

(assert (=> b!2198739 m!2641669))

(declare-fun m!2641671 () Bool)

(assert (=> b!2198723 m!2641671))

(declare-fun m!2641673 () Bool)

(assert (=> b!2198719 m!2641673))

(declare-fun m!2641675 () Bool)

(assert (=> b!2198740 m!2641675))

(declare-fun m!2641677 () Bool)

(assert (=> b!2198740 m!2641677))

(assert (=> b!2198740 m!2641677))

(declare-fun m!2641679 () Bool)

(assert (=> b!2198740 m!2641679))

(declare-fun m!2641681 () Bool)

(assert (=> b!2198740 m!2641681))

(declare-fun m!2641683 () Bool)

(assert (=> b!2198740 m!2641683))

(declare-fun m!2641685 () Bool)

(assert (=> b!2198741 m!2641685))

(declare-fun m!2641687 () Bool)

(assert (=> setNonEmpty!18852 m!2641687))

(declare-fun m!2641689 () Bool)

(assert (=> b!2198717 m!2641689))

(check-sat (not b!2198731) (not b!2198719) (not b!2198739) (not start!213450) (not b!2198723) (not b!2198735) (not b!2198740) (not b!2198736) (not b!2198726) (not b!2198721) (not b!2198722) (not b!2198718) (not b!2198744) (not b!2198717) (not setNonEmpty!18852) (not b!2198741))
(check-sat)
