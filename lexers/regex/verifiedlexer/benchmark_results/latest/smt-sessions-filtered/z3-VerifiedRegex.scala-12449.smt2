; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694388 () Bool)

(assert start!694388)

(declare-fun b!7127719 () Bool)

(declare-fun e!4283364 () Bool)

(declare-fun tp!1963739 () Bool)

(assert (=> b!7127719 (= e!4283364 tp!1963739)))

(declare-fun setRes!51786 () Bool)

(declare-fun setNonEmpty!51786 () Bool)

(declare-datatypes ((C!36332 0))(
  ( (C!36333 (val!28092 Int)) )
))
(declare-datatypes ((Regex!18031 0))(
  ( (ElementMatch!18031 (c!1329675 C!36332)) (Concat!26876 (regOne!36574 Regex!18031) (regTwo!36574 Regex!18031)) (EmptyExpr!18031) (Star!18031 (reg!18360 Regex!18031)) (EmptyLang!18031) (Union!18031 (regOne!36575 Regex!18031) (regTwo!36575 Regex!18031)) )
))
(declare-datatypes ((List!69114 0))(
  ( (Nil!68990) (Cons!68990 (h!75438 Regex!18031) (t!383091 List!69114)) )
))
(declare-datatypes ((Context!14050 0))(
  ( (Context!14051 (exprs!7525 List!69114)) )
))
(declare-fun setElem!51787 () Context!14050)

(declare-fun tp!1963738 () Bool)

(declare-fun inv!88105 (Context!14050) Bool)

(assert (=> setNonEmpty!51786 (= setRes!51786 (and tp!1963738 (inv!88105 setElem!51787) e!4283364))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!552 () (InoxSet Context!14050))

(declare-fun setRest!51786 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51786 (= z1!552 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51787 true) setRest!51786))))

(declare-fun b!7127720 () Bool)

(declare-fun res!2908281 () Bool)

(declare-fun e!4283365 () Bool)

(assert (=> b!7127720 (=> (not res!2908281) (not e!4283365))))

(declare-datatypes ((List!69115 0))(
  ( (Nil!68991) (Cons!68991 (h!75439 C!36332) (t!383092 List!69115)) )
))
(declare-fun s2!1620 () List!69115)

(declare-fun s1!1688 () List!69115)

(declare-fun s!7390 () List!69115)

(declare-fun ++!16169 (List!69115 List!69115) List!69115)

(assert (=> b!7127720 (= res!2908281 (= (++!16169 s1!1688 s2!1620) s!7390))))

(declare-fun b!7127721 () Bool)

(declare-fun res!2908278 () Bool)

(assert (=> b!7127721 (=> (not res!2908278) (not e!4283365))))

(declare-fun e!4283361 () Bool)

(assert (=> b!7127721 (= res!2908278 e!4283361)))

(declare-fun res!2908279 () Bool)

(assert (=> b!7127721 (=> res!2908279 e!4283361)))

(declare-fun s1Rec!140 () List!69115)

(declare-fun matchZipper!3287 ((InoxSet Context!14050) List!69115) Bool)

(assert (=> b!7127721 (= res!2908279 (not (matchZipper!3287 z1!552 s1Rec!140)))))

(declare-fun b!7127722 () Bool)

(declare-fun e!4283368 () Bool)

(declare-fun tp_is_empty!45663 () Bool)

(declare-fun tp!1963737 () Bool)

(assert (=> b!7127722 (= e!4283368 (and tp_is_empty!45663 tp!1963737))))

(declare-fun b!7127723 () Bool)

(declare-fun res!2908273 () Bool)

(assert (=> b!7127723 (=> (not res!2908273) (not e!4283365))))

(declare-fun s2Rec!140 () List!69115)

(get-info :version)

(assert (=> b!7127723 (= res!2908273 ((_ is Nil!68991) s2Rec!140))))

(declare-fun b!7127724 () Bool)

(declare-fun z2!471 () (InoxSet Context!14050))

(assert (=> b!7127724 (= e!4283361 (not (matchZipper!3287 z2!471 s2Rec!140)))))

(declare-fun setIsEmpty!51786 () Bool)

(assert (=> setIsEmpty!51786 setRes!51786))

(declare-fun res!2908280 () Bool)

(assert (=> start!694388 (=> (not res!2908280) (not e!4283365))))

(assert (=> start!694388 (= res!2908280 (matchZipper!3287 z1!552 s1!1688))))

(assert (=> start!694388 e!4283365))

(declare-fun e!4283366 () Bool)

(assert (=> start!694388 e!4283366))

(declare-fun condSetEmpty!51787 () Bool)

(assert (=> start!694388 (= condSetEmpty!51787 (= z1!552 ((as const (Array Context!14050 Bool)) false)))))

(assert (=> start!694388 setRes!51786))

(assert (=> start!694388 e!4283368))

(declare-fun condSetEmpty!51786 () Bool)

(assert (=> start!694388 (= condSetEmpty!51786 (= z2!471 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51787 () Bool)

(assert (=> start!694388 setRes!51787))

(declare-fun e!4283369 () Bool)

(assert (=> start!694388 e!4283369))

(declare-fun e!4283367 () Bool)

(assert (=> start!694388 e!4283367))

(declare-fun e!4283360 () Bool)

(assert (=> start!694388 e!4283360))

(declare-fun b!7127725 () Bool)

(declare-fun tp!1963735 () Bool)

(assert (=> b!7127725 (= e!4283367 (and tp_is_empty!45663 tp!1963735))))

(declare-fun b!7127726 () Bool)

(declare-fun tp!1963736 () Bool)

(assert (=> b!7127726 (= e!4283366 (and tp_is_empty!45663 tp!1963736))))

(declare-fun setElem!51786 () Context!14050)

(declare-fun tp!1963731 () Bool)

(declare-fun setNonEmpty!51787 () Bool)

(declare-fun e!4283363 () Bool)

(assert (=> setNonEmpty!51787 (= setRes!51787 (and tp!1963731 (inv!88105 setElem!51786) e!4283363))))

(declare-fun setRest!51787 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51787 (= z2!471 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51786 true) setRest!51787))))

(declare-fun b!7127727 () Bool)

(declare-fun res!2908277 () Bool)

(assert (=> b!7127727 (=> (not res!2908277) (not e!4283365))))

(assert (=> b!7127727 (= res!2908277 (matchZipper!3287 z2!471 s2!1620))))

(declare-fun b!7127728 () Bool)

(declare-fun tp!1963733 () Bool)

(assert (=> b!7127728 (= e!4283363 tp!1963733)))

(declare-fun b!7127729 () Bool)

(declare-fun tp!1963732 () Bool)

(assert (=> b!7127729 (= e!4283369 (and tp_is_empty!45663 tp!1963732))))

(declare-fun b!7127730 () Bool)

(declare-fun res!2908274 () Bool)

(declare-fun e!4283362 () Bool)

(assert (=> b!7127730 (=> (not res!2908274) (not e!4283362))))

(declare-fun lt!2563628 () Int)

(declare-fun size!41466 (List!69115) Int)

(assert (=> b!7127730 (= res!2908274 (= lt!2563628 (size!41466 s1!1688)))))

(declare-fun b!7127731 () Bool)

(assert (=> b!7127731 (= e!4283365 e!4283362)))

(declare-fun res!2908272 () Bool)

(assert (=> b!7127731 (=> (not res!2908272) (not e!4283362))))

(assert (=> b!7127731 (= res!2908272 (= lt!2563628 (size!41466 s!7390)))))

(assert (=> b!7127731 (= lt!2563628 (size!41466 s1Rec!140))))

(declare-fun b!7127732 () Bool)

(declare-fun res!2908276 () Bool)

(assert (=> b!7127732 (=> (not res!2908276) (not e!4283365))))

(assert (=> b!7127732 (= res!2908276 (= (++!16169 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun setIsEmpty!51787 () Bool)

(assert (=> setIsEmpty!51787 setRes!51787))

(declare-fun b!7127733 () Bool)

(declare-fun tp!1963734 () Bool)

(assert (=> b!7127733 (= e!4283360 (and tp_is_empty!45663 tp!1963734))))

(declare-fun b!7127734 () Bool)

(declare-fun res!2908275 () Bool)

(assert (=> b!7127734 (=> (not res!2908275) (not e!4283365))))

(declare-fun isPrefix!5900 (List!69115 List!69115) Bool)

(assert (=> b!7127734 (= res!2908275 (isPrefix!5900 s1Rec!140 s1!1688))))

(declare-fun b!7127735 () Bool)

(assert (=> b!7127735 (= e!4283362 (and (= s1Rec!140 s1!1688) (not (= s2Rec!140 s2!1620))))))

(assert (= (and start!694388 res!2908280) b!7127727))

(assert (= (and b!7127727 res!2908277) b!7127720))

(assert (= (and b!7127720 res!2908281) b!7127734))

(assert (= (and b!7127734 res!2908275) b!7127732))

(assert (= (and b!7127732 res!2908276) b!7127721))

(assert (= (and b!7127721 (not res!2908279)) b!7127724))

(assert (= (and b!7127721 res!2908278) b!7127723))

(assert (= (and b!7127723 res!2908273) b!7127731))

(assert (= (and b!7127731 res!2908272) b!7127730))

(assert (= (and b!7127730 res!2908274) b!7127735))

(assert (= (and start!694388 ((_ is Cons!68991) s1Rec!140)) b!7127726))

(assert (= (and start!694388 condSetEmpty!51787) setIsEmpty!51786))

(assert (= (and start!694388 (not condSetEmpty!51787)) setNonEmpty!51786))

(assert (= setNonEmpty!51786 b!7127719))

(assert (= (and start!694388 ((_ is Cons!68991) s2Rec!140)) b!7127722))

(assert (= (and start!694388 condSetEmpty!51786) setIsEmpty!51787))

(assert (= (and start!694388 (not condSetEmpty!51786)) setNonEmpty!51787))

(assert (= setNonEmpty!51787 b!7127728))

(assert (= (and start!694388 ((_ is Cons!68991) s2!1620)) b!7127729))

(assert (= (and start!694388 ((_ is Cons!68991) s1!1688)) b!7127725))

(assert (= (and start!694388 ((_ is Cons!68991) s!7390)) b!7127733))

(declare-fun m!7844740 () Bool)

(assert (=> b!7127731 m!7844740))

(declare-fun m!7844742 () Bool)

(assert (=> b!7127731 m!7844742))

(declare-fun m!7844744 () Bool)

(assert (=> b!7127721 m!7844744))

(declare-fun m!7844746 () Bool)

(assert (=> b!7127720 m!7844746))

(declare-fun m!7844748 () Bool)

(assert (=> b!7127730 m!7844748))

(declare-fun m!7844750 () Bool)

(assert (=> b!7127732 m!7844750))

(declare-fun m!7844752 () Bool)

(assert (=> b!7127727 m!7844752))

(declare-fun m!7844754 () Bool)

(assert (=> b!7127724 m!7844754))

(declare-fun m!7844756 () Bool)

(assert (=> b!7127734 m!7844756))

(declare-fun m!7844758 () Bool)

(assert (=> setNonEmpty!51786 m!7844758))

(declare-fun m!7844760 () Bool)

(assert (=> start!694388 m!7844760))

(declare-fun m!7844762 () Bool)

(assert (=> setNonEmpty!51787 m!7844762))

(check-sat (not b!7127722) (not b!7127734) (not b!7127727) (not b!7127731) (not b!7127730) (not b!7127724) (not b!7127719) (not start!694388) (not b!7127733) (not b!7127725) (not b!7127728) (not setNonEmpty!51787) (not setNonEmpty!51786) (not b!7127720) (not b!7127732) (not b!7127729) tp_is_empty!45663 (not b!7127721) (not b!7127726))
(check-sat)
(get-model)

(declare-fun b!7127753 () Bool)

(declare-fun e!4283378 () List!69115)

(assert (=> b!7127753 (= e!4283378 (Cons!68991 (h!75439 s1Rec!140) (++!16169 (t!383092 s1Rec!140) s2Rec!140)))))

(declare-fun d!2224310 () Bool)

(declare-fun e!4283379 () Bool)

(assert (=> d!2224310 e!4283379))

(declare-fun res!2908287 () Bool)

(assert (=> d!2224310 (=> (not res!2908287) (not e!4283379))))

(declare-fun lt!2563635 () List!69115)

(declare-fun content!14117 (List!69115) (InoxSet C!36332))

(assert (=> d!2224310 (= res!2908287 (= (content!14117 lt!2563635) ((_ map or) (content!14117 s1Rec!140) (content!14117 s2Rec!140))))))

(assert (=> d!2224310 (= lt!2563635 e!4283378)))

(declare-fun c!1329682 () Bool)

(assert (=> d!2224310 (= c!1329682 ((_ is Nil!68991) s1Rec!140))))

(assert (=> d!2224310 (= (++!16169 s1Rec!140 s2Rec!140) lt!2563635)))

(declare-fun b!7127752 () Bool)

(assert (=> b!7127752 (= e!4283378 s2Rec!140)))

(declare-fun b!7127755 () Bool)

(assert (=> b!7127755 (= e!4283379 (or (not (= s2Rec!140 Nil!68991)) (= lt!2563635 s1Rec!140)))))

(declare-fun b!7127754 () Bool)

(declare-fun res!2908286 () Bool)

(assert (=> b!7127754 (=> (not res!2908286) (not e!4283379))))

(assert (=> b!7127754 (= res!2908286 (= (size!41466 lt!2563635) (+ (size!41466 s1Rec!140) (size!41466 s2Rec!140))))))

(assert (= (and d!2224310 c!1329682) b!7127752))

(assert (= (and d!2224310 (not c!1329682)) b!7127753))

(assert (= (and d!2224310 res!2908287) b!7127754))

(assert (= (and b!7127754 res!2908286) b!7127755))

(declare-fun m!7844768 () Bool)

(assert (=> b!7127753 m!7844768))

(declare-fun m!7844770 () Bool)

(assert (=> d!2224310 m!7844770))

(declare-fun m!7844772 () Bool)

(assert (=> d!2224310 m!7844772))

(declare-fun m!7844774 () Bool)

(assert (=> d!2224310 m!7844774))

(declare-fun m!7844776 () Bool)

(assert (=> b!7127754 m!7844776))

(assert (=> b!7127754 m!7844742))

(declare-fun m!7844778 () Bool)

(assert (=> b!7127754 m!7844778))

(assert (=> b!7127732 d!2224310))

(declare-fun d!2224318 () Bool)

(declare-fun c!1329689 () Bool)

(declare-fun isEmpty!40022 (List!69115) Bool)

(assert (=> d!2224318 (= c!1329689 (isEmpty!40022 s2Rec!140))))

(declare-fun e!4283390 () Bool)

(assert (=> d!2224318 (= (matchZipper!3287 z2!471 s2Rec!140) e!4283390)))

(declare-fun b!7127776 () Bool)

(declare-fun nullableZipper!2758 ((InoxSet Context!14050)) Bool)

(assert (=> b!7127776 (= e!4283390 (nullableZipper!2758 z2!471))))

(declare-fun b!7127777 () Bool)

(declare-fun derivationStepZipper!3170 ((InoxSet Context!14050) C!36332) (InoxSet Context!14050))

(declare-fun head!14466 (List!69115) C!36332)

(declare-fun tail!13938 (List!69115) List!69115)

(assert (=> b!7127777 (= e!4283390 (matchZipper!3287 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (tail!13938 s2Rec!140)))))

(assert (= (and d!2224318 c!1329689) b!7127776))

(assert (= (and d!2224318 (not c!1329689)) b!7127777))

(declare-fun m!7844804 () Bool)

(assert (=> d!2224318 m!7844804))

(declare-fun m!7844806 () Bool)

(assert (=> b!7127776 m!7844806))

(declare-fun m!7844808 () Bool)

(assert (=> b!7127777 m!7844808))

(assert (=> b!7127777 m!7844808))

(declare-fun m!7844810 () Bool)

(assert (=> b!7127777 m!7844810))

(declare-fun m!7844812 () Bool)

(assert (=> b!7127777 m!7844812))

(assert (=> b!7127777 m!7844810))

(assert (=> b!7127777 m!7844812))

(declare-fun m!7844814 () Bool)

(assert (=> b!7127777 m!7844814))

(assert (=> b!7127724 d!2224318))

(declare-fun b!7127779 () Bool)

(declare-fun e!4283391 () List!69115)

(assert (=> b!7127779 (= e!4283391 (Cons!68991 (h!75439 s1!1688) (++!16169 (t!383092 s1!1688) s2!1620)))))

(declare-fun d!2224324 () Bool)

(declare-fun e!4283392 () Bool)

(assert (=> d!2224324 e!4283392))

(declare-fun res!2908297 () Bool)

(assert (=> d!2224324 (=> (not res!2908297) (not e!4283392))))

(declare-fun lt!2563640 () List!69115)

(assert (=> d!2224324 (= res!2908297 (= (content!14117 lt!2563640) ((_ map or) (content!14117 s1!1688) (content!14117 s2!1620))))))

(assert (=> d!2224324 (= lt!2563640 e!4283391)))

(declare-fun c!1329690 () Bool)

(assert (=> d!2224324 (= c!1329690 ((_ is Nil!68991) s1!1688))))

(assert (=> d!2224324 (= (++!16169 s1!1688 s2!1620) lt!2563640)))

(declare-fun b!7127778 () Bool)

(assert (=> b!7127778 (= e!4283391 s2!1620)))

(declare-fun b!7127781 () Bool)

(assert (=> b!7127781 (= e!4283392 (or (not (= s2!1620 Nil!68991)) (= lt!2563640 s1!1688)))))

(declare-fun b!7127780 () Bool)

(declare-fun res!2908296 () Bool)

(assert (=> b!7127780 (=> (not res!2908296) (not e!4283392))))

(assert (=> b!7127780 (= res!2908296 (= (size!41466 lt!2563640) (+ (size!41466 s1!1688) (size!41466 s2!1620))))))

(assert (= (and d!2224324 c!1329690) b!7127778))

(assert (= (and d!2224324 (not c!1329690)) b!7127779))

(assert (= (and d!2224324 res!2908297) b!7127780))

(assert (= (and b!7127780 res!2908296) b!7127781))

(declare-fun m!7844816 () Bool)

(assert (=> b!7127779 m!7844816))

(declare-fun m!7844818 () Bool)

(assert (=> d!2224324 m!7844818))

(declare-fun m!7844820 () Bool)

(assert (=> d!2224324 m!7844820))

(declare-fun m!7844822 () Bool)

(assert (=> d!2224324 m!7844822))

(declare-fun m!7844824 () Bool)

(assert (=> b!7127780 m!7844824))

(assert (=> b!7127780 m!7844748))

(declare-fun m!7844826 () Bool)

(assert (=> b!7127780 m!7844826))

(assert (=> b!7127720 d!2224324))

(declare-fun d!2224326 () Bool)

(declare-fun c!1329691 () Bool)

(assert (=> d!2224326 (= c!1329691 (isEmpty!40022 s1Rec!140))))

(declare-fun e!4283393 () Bool)

(assert (=> d!2224326 (= (matchZipper!3287 z1!552 s1Rec!140) e!4283393)))

(declare-fun b!7127782 () Bool)

(assert (=> b!7127782 (= e!4283393 (nullableZipper!2758 z1!552))))

(declare-fun b!7127783 () Bool)

(assert (=> b!7127783 (= e!4283393 (matchZipper!3287 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (tail!13938 s1Rec!140)))))

(assert (= (and d!2224326 c!1329691) b!7127782))

(assert (= (and d!2224326 (not c!1329691)) b!7127783))

(declare-fun m!7844828 () Bool)

(assert (=> d!2224326 m!7844828))

(declare-fun m!7844830 () Bool)

(assert (=> b!7127782 m!7844830))

(declare-fun m!7844832 () Bool)

(assert (=> b!7127783 m!7844832))

(assert (=> b!7127783 m!7844832))

(declare-fun m!7844834 () Bool)

(assert (=> b!7127783 m!7844834))

(declare-fun m!7844836 () Bool)

(assert (=> b!7127783 m!7844836))

(assert (=> b!7127783 m!7844834))

(assert (=> b!7127783 m!7844836))

(declare-fun m!7844838 () Bool)

(assert (=> b!7127783 m!7844838))

(assert (=> b!7127721 d!2224326))

(declare-fun d!2224328 () Bool)

(declare-fun lt!2563643 () Int)

(assert (=> d!2224328 (>= lt!2563643 0)))

(declare-fun e!4283398 () Int)

(assert (=> d!2224328 (= lt!2563643 e!4283398)))

(declare-fun c!1329696 () Bool)

(assert (=> d!2224328 (= c!1329696 ((_ is Nil!68991) s1!1688))))

(assert (=> d!2224328 (= (size!41466 s1!1688) lt!2563643)))

(declare-fun b!7127792 () Bool)

(assert (=> b!7127792 (= e!4283398 0)))

(declare-fun b!7127793 () Bool)

(assert (=> b!7127793 (= e!4283398 (+ 1 (size!41466 (t!383092 s1!1688))))))

(assert (= (and d!2224328 c!1329696) b!7127792))

(assert (= (and d!2224328 (not c!1329696)) b!7127793))

(declare-fun m!7844840 () Bool)

(assert (=> b!7127793 m!7844840))

(assert (=> b!7127730 d!2224328))

(declare-fun d!2224330 () Bool)

(declare-fun lt!2563644 () Int)

(assert (=> d!2224330 (>= lt!2563644 0)))

(declare-fun e!4283399 () Int)

(assert (=> d!2224330 (= lt!2563644 e!4283399)))

(declare-fun c!1329697 () Bool)

(assert (=> d!2224330 (= c!1329697 ((_ is Nil!68991) s!7390))))

(assert (=> d!2224330 (= (size!41466 s!7390) lt!2563644)))

(declare-fun b!7127794 () Bool)

(assert (=> b!7127794 (= e!4283399 0)))

(declare-fun b!7127795 () Bool)

(assert (=> b!7127795 (= e!4283399 (+ 1 (size!41466 (t!383092 s!7390))))))

(assert (= (and d!2224330 c!1329697) b!7127794))

(assert (= (and d!2224330 (not c!1329697)) b!7127795))

(declare-fun m!7844842 () Bool)

(assert (=> b!7127795 m!7844842))

(assert (=> b!7127731 d!2224330))

(declare-fun d!2224332 () Bool)

(declare-fun lt!2563645 () Int)

(assert (=> d!2224332 (>= lt!2563645 0)))

(declare-fun e!4283400 () Int)

(assert (=> d!2224332 (= lt!2563645 e!4283400)))

(declare-fun c!1329698 () Bool)

(assert (=> d!2224332 (= c!1329698 ((_ is Nil!68991) s1Rec!140))))

(assert (=> d!2224332 (= (size!41466 s1Rec!140) lt!2563645)))

(declare-fun b!7127796 () Bool)

(assert (=> b!7127796 (= e!4283400 0)))

(declare-fun b!7127797 () Bool)

(assert (=> b!7127797 (= e!4283400 (+ 1 (size!41466 (t!383092 s1Rec!140))))))

(assert (= (and d!2224332 c!1329698) b!7127796))

(assert (= (and d!2224332 (not c!1329698)) b!7127797))

(declare-fun m!7844844 () Bool)

(assert (=> b!7127797 m!7844844))

(assert (=> b!7127731 d!2224332))

(declare-fun d!2224334 () Bool)

(declare-fun lambda!433098 () Int)

(declare-fun forall!16917 (List!69114 Int) Bool)

(assert (=> d!2224334 (= (inv!88105 setElem!51786) (forall!16917 (exprs!7525 setElem!51786) lambda!433098))))

(declare-fun bs!1886589 () Bool)

(assert (= bs!1886589 d!2224334))

(declare-fun m!7844902 () Bool)

(assert (=> bs!1886589 m!7844902))

(assert (=> setNonEmpty!51787 d!2224334))

(declare-fun d!2224350 () Bool)

(declare-fun c!1329704 () Bool)

(assert (=> d!2224350 (= c!1329704 (isEmpty!40022 s2!1620))))

(declare-fun e!4283430 () Bool)

(assert (=> d!2224350 (= (matchZipper!3287 z2!471 s2!1620) e!4283430)))

(declare-fun b!7127841 () Bool)

(assert (=> b!7127841 (= e!4283430 (nullableZipper!2758 z2!471))))

(declare-fun b!7127842 () Bool)

(assert (=> b!7127842 (= e!4283430 (matchZipper!3287 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (tail!13938 s2!1620)))))

(assert (= (and d!2224350 c!1329704) b!7127841))

(assert (= (and d!2224350 (not c!1329704)) b!7127842))

(declare-fun m!7844904 () Bool)

(assert (=> d!2224350 m!7844904))

(assert (=> b!7127841 m!7844806))

(declare-fun m!7844906 () Bool)

(assert (=> b!7127842 m!7844906))

(assert (=> b!7127842 m!7844906))

(declare-fun m!7844908 () Bool)

(assert (=> b!7127842 m!7844908))

(declare-fun m!7844910 () Bool)

(assert (=> b!7127842 m!7844910))

(assert (=> b!7127842 m!7844908))

(assert (=> b!7127842 m!7844910))

(declare-fun m!7844912 () Bool)

(assert (=> b!7127842 m!7844912))

(assert (=> b!7127727 d!2224350))

(declare-fun bs!1886590 () Bool)

(declare-fun d!2224352 () Bool)

(assert (= bs!1886590 (and d!2224352 d!2224334)))

(declare-fun lambda!433099 () Int)

(assert (=> bs!1886590 (= lambda!433099 lambda!433098)))

(assert (=> d!2224352 (= (inv!88105 setElem!51787) (forall!16917 (exprs!7525 setElem!51787) lambda!433099))))

(declare-fun bs!1886591 () Bool)

(assert (= bs!1886591 d!2224352))

(declare-fun m!7844914 () Bool)

(assert (=> bs!1886591 m!7844914))

(assert (=> setNonEmpty!51786 d!2224352))

(declare-fun d!2224354 () Bool)

(declare-fun c!1329705 () Bool)

(assert (=> d!2224354 (= c!1329705 (isEmpty!40022 s1!1688))))

(declare-fun e!4283431 () Bool)

(assert (=> d!2224354 (= (matchZipper!3287 z1!552 s1!1688) e!4283431)))

(declare-fun b!7127843 () Bool)

(assert (=> b!7127843 (= e!4283431 (nullableZipper!2758 z1!552))))

(declare-fun b!7127844 () Bool)

(assert (=> b!7127844 (= e!4283431 (matchZipper!3287 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (tail!13938 s1!1688)))))

(assert (= (and d!2224354 c!1329705) b!7127843))

(assert (= (and d!2224354 (not c!1329705)) b!7127844))

(declare-fun m!7844916 () Bool)

(assert (=> d!2224354 m!7844916))

(assert (=> b!7127843 m!7844830))

(declare-fun m!7844918 () Bool)

(assert (=> b!7127844 m!7844918))

(assert (=> b!7127844 m!7844918))

(declare-fun m!7844920 () Bool)

(assert (=> b!7127844 m!7844920))

(declare-fun m!7844922 () Bool)

(assert (=> b!7127844 m!7844922))

(assert (=> b!7127844 m!7844920))

(assert (=> b!7127844 m!7844922))

(declare-fun m!7844924 () Bool)

(assert (=> b!7127844 m!7844924))

(assert (=> start!694388 d!2224354))

(declare-fun b!7127853 () Bool)

(declare-fun e!4283440 () Bool)

(declare-fun e!4283438 () Bool)

(assert (=> b!7127853 (= e!4283440 e!4283438)))

(declare-fun res!2908321 () Bool)

(assert (=> b!7127853 (=> (not res!2908321) (not e!4283438))))

(assert (=> b!7127853 (= res!2908321 (not ((_ is Nil!68991) s1!1688)))))

(declare-fun b!7127855 () Bool)

(assert (=> b!7127855 (= e!4283438 (isPrefix!5900 (tail!13938 s1Rec!140) (tail!13938 s1!1688)))))

(declare-fun d!2224356 () Bool)

(declare-fun e!4283439 () Bool)

(assert (=> d!2224356 e!4283439))

(declare-fun res!2908320 () Bool)

(assert (=> d!2224356 (=> res!2908320 e!4283439)))

(declare-fun lt!2563652 () Bool)

(assert (=> d!2224356 (= res!2908320 (not lt!2563652))))

(assert (=> d!2224356 (= lt!2563652 e!4283440)))

(declare-fun res!2908319 () Bool)

(assert (=> d!2224356 (=> res!2908319 e!4283440)))

(assert (=> d!2224356 (= res!2908319 ((_ is Nil!68991) s1Rec!140))))

(assert (=> d!2224356 (= (isPrefix!5900 s1Rec!140 s1!1688) lt!2563652)))

(declare-fun b!7127854 () Bool)

(declare-fun res!2908318 () Bool)

(assert (=> b!7127854 (=> (not res!2908318) (not e!4283438))))

(assert (=> b!7127854 (= res!2908318 (= (head!14466 s1Rec!140) (head!14466 s1!1688)))))

(declare-fun b!7127856 () Bool)

(assert (=> b!7127856 (= e!4283439 (>= (size!41466 s1!1688) (size!41466 s1Rec!140)))))

(assert (= (and d!2224356 (not res!2908319)) b!7127853))

(assert (= (and b!7127853 res!2908321) b!7127854))

(assert (= (and b!7127854 res!2908318) b!7127855))

(assert (= (and d!2224356 (not res!2908320)) b!7127856))

(assert (=> b!7127855 m!7844836))

(assert (=> b!7127855 m!7844922))

(assert (=> b!7127855 m!7844836))

(assert (=> b!7127855 m!7844922))

(declare-fun m!7844926 () Bool)

(assert (=> b!7127855 m!7844926))

(assert (=> b!7127854 m!7844832))

(assert (=> b!7127854 m!7844918))

(assert (=> b!7127856 m!7844748))

(assert (=> b!7127856 m!7844742))

(assert (=> b!7127734 d!2224356))

(declare-fun condSetEmpty!51794 () Bool)

(assert (=> setNonEmpty!51787 (= condSetEmpty!51794 (= setRest!51787 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51794 () Bool)

(assert (=> setNonEmpty!51787 (= tp!1963731 setRes!51794)))

(declare-fun setIsEmpty!51794 () Bool)

(assert (=> setIsEmpty!51794 setRes!51794))

(declare-fun setNonEmpty!51794 () Bool)

(declare-fun e!4283443 () Bool)

(declare-fun tp!1963768 () Bool)

(declare-fun setElem!51794 () Context!14050)

(assert (=> setNonEmpty!51794 (= setRes!51794 (and tp!1963768 (inv!88105 setElem!51794) e!4283443))))

(declare-fun setRest!51794 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51794 (= setRest!51787 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51794 true) setRest!51794))))

(declare-fun b!7127861 () Bool)

(declare-fun tp!1963767 () Bool)

(assert (=> b!7127861 (= e!4283443 tp!1963767)))

(assert (= (and setNonEmpty!51787 condSetEmpty!51794) setIsEmpty!51794))

(assert (= (and setNonEmpty!51787 (not condSetEmpty!51794)) setNonEmpty!51794))

(assert (= setNonEmpty!51794 b!7127861))

(declare-fun m!7844928 () Bool)

(assert (=> setNonEmpty!51794 m!7844928))

(declare-fun b!7127866 () Bool)

(declare-fun e!4283446 () Bool)

(declare-fun tp!1963773 () Bool)

(declare-fun tp!1963774 () Bool)

(assert (=> b!7127866 (= e!4283446 (and tp!1963773 tp!1963774))))

(assert (=> b!7127719 (= tp!1963739 e!4283446)))

(assert (= (and b!7127719 ((_ is Cons!68990) (exprs!7525 setElem!51787))) b!7127866))

(declare-fun condSetEmpty!51795 () Bool)

(assert (=> setNonEmpty!51786 (= condSetEmpty!51795 (= setRest!51786 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51795 () Bool)

(assert (=> setNonEmpty!51786 (= tp!1963738 setRes!51795)))

(declare-fun setIsEmpty!51795 () Bool)

(assert (=> setIsEmpty!51795 setRes!51795))

(declare-fun e!4283447 () Bool)

(declare-fun setElem!51795 () Context!14050)

(declare-fun setNonEmpty!51795 () Bool)

(declare-fun tp!1963776 () Bool)

(assert (=> setNonEmpty!51795 (= setRes!51795 (and tp!1963776 (inv!88105 setElem!51795) e!4283447))))

(declare-fun setRest!51795 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51795 (= setRest!51786 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51795 true) setRest!51795))))

(declare-fun b!7127867 () Bool)

(declare-fun tp!1963775 () Bool)

(assert (=> b!7127867 (= e!4283447 tp!1963775)))

(assert (= (and setNonEmpty!51786 condSetEmpty!51795) setIsEmpty!51795))

(assert (= (and setNonEmpty!51786 (not condSetEmpty!51795)) setNonEmpty!51795))

(assert (= setNonEmpty!51795 b!7127867))

(declare-fun m!7844930 () Bool)

(assert (=> setNonEmpty!51795 m!7844930))

(declare-fun b!7127868 () Bool)

(declare-fun e!4283448 () Bool)

(declare-fun tp!1963777 () Bool)

(declare-fun tp!1963778 () Bool)

(assert (=> b!7127868 (= e!4283448 (and tp!1963777 tp!1963778))))

(assert (=> b!7127728 (= tp!1963733 e!4283448)))

(assert (= (and b!7127728 ((_ is Cons!68990) (exprs!7525 setElem!51786))) b!7127868))

(declare-fun b!7127873 () Bool)

(declare-fun e!4283451 () Bool)

(declare-fun tp!1963781 () Bool)

(assert (=> b!7127873 (= e!4283451 (and tp_is_empty!45663 tp!1963781))))

(assert (=> b!7127729 (= tp!1963732 e!4283451)))

(assert (= (and b!7127729 ((_ is Cons!68991) (t!383092 s2!1620))) b!7127873))

(declare-fun b!7127874 () Bool)

(declare-fun e!4283452 () Bool)

(declare-fun tp!1963782 () Bool)

(assert (=> b!7127874 (= e!4283452 (and tp_is_empty!45663 tp!1963782))))

(assert (=> b!7127733 (= tp!1963734 e!4283452)))

(assert (= (and b!7127733 ((_ is Cons!68991) (t!383092 s!7390))) b!7127874))

(declare-fun b!7127875 () Bool)

(declare-fun e!4283453 () Bool)

(declare-fun tp!1963783 () Bool)

(assert (=> b!7127875 (= e!4283453 (and tp_is_empty!45663 tp!1963783))))

(assert (=> b!7127725 (= tp!1963735 e!4283453)))

(assert (= (and b!7127725 ((_ is Cons!68991) (t!383092 s1!1688))) b!7127875))

(declare-fun b!7127876 () Bool)

(declare-fun e!4283454 () Bool)

(declare-fun tp!1963784 () Bool)

(assert (=> b!7127876 (= e!4283454 (and tp_is_empty!45663 tp!1963784))))

(assert (=> b!7127726 (= tp!1963736 e!4283454)))

(assert (= (and b!7127726 ((_ is Cons!68991) (t!383092 s1Rec!140))) b!7127876))

(declare-fun b!7127877 () Bool)

(declare-fun e!4283455 () Bool)

(declare-fun tp!1963785 () Bool)

(assert (=> b!7127877 (= e!4283455 (and tp_is_empty!45663 tp!1963785))))

(assert (=> b!7127722 (= tp!1963737 e!4283455)))

(assert (= (and b!7127722 ((_ is Cons!68991) (t!383092 s2Rec!140))) b!7127877))

(check-sat (not setNonEmpty!51794) (not b!7127854) (not d!2224350) (not b!7127793) (not b!7127866) (not d!2224324) (not b!7127861) (not b!7127797) (not b!7127753) (not d!2224354) (not d!2224318) (not b!7127856) (not b!7127877) (not d!2224334) (not b!7127841) (not d!2224310) (not b!7127868) (not b!7127843) (not b!7127776) (not d!2224326) (not d!2224352) (not b!7127867) (not b!7127795) (not b!7127777) (not b!7127842) (not b!7127754) (not b!7127780) (not b!7127855) (not b!7127779) (not b!7127874) (not b!7127844) (not setNonEmpty!51795) tp_is_empty!45663 (not b!7127875) (not b!7127782) (not b!7127873) (not b!7127783) (not b!7127876))
(check-sat)
(get-model)

(declare-fun d!2224362 () Bool)

(declare-fun res!2908328 () Bool)

(declare-fun e!4283466 () Bool)

(assert (=> d!2224362 (=> res!2908328 e!4283466)))

(assert (=> d!2224362 (= res!2908328 ((_ is Nil!68990) (exprs!7525 setElem!51786)))))

(assert (=> d!2224362 (= (forall!16917 (exprs!7525 setElem!51786) lambda!433098) e!4283466)))

(declare-fun b!7127894 () Bool)

(declare-fun e!4283467 () Bool)

(assert (=> b!7127894 (= e!4283466 e!4283467)))

(declare-fun res!2908329 () Bool)

(assert (=> b!7127894 (=> (not res!2908329) (not e!4283467))))

(declare-fun dynLambda!28112 (Int Regex!18031) Bool)

(assert (=> b!7127894 (= res!2908329 (dynLambda!28112 lambda!433098 (h!75438 (exprs!7525 setElem!51786))))))

(declare-fun b!7127895 () Bool)

(assert (=> b!7127895 (= e!4283467 (forall!16917 (t!383091 (exprs!7525 setElem!51786)) lambda!433098))))

(assert (= (and d!2224362 (not res!2908328)) b!7127894))

(assert (= (and b!7127894 res!2908329) b!7127895))

(declare-fun b_lambda!272013 () Bool)

(assert (=> (not b_lambda!272013) (not b!7127894)))

(declare-fun m!7844960 () Bool)

(assert (=> b!7127894 m!7844960))

(declare-fun m!7844962 () Bool)

(assert (=> b!7127895 m!7844962))

(assert (=> d!2224334 d!2224362))

(declare-fun d!2224374 () Bool)

(declare-fun c!1329719 () Bool)

(assert (=> d!2224374 (= c!1329719 ((_ is Nil!68991) lt!2563635))))

(declare-fun e!4283473 () (InoxSet C!36332))

(assert (=> d!2224374 (= (content!14117 lt!2563635) e!4283473)))

(declare-fun b!7127908 () Bool)

(assert (=> b!7127908 (= e!4283473 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7127909 () Bool)

(assert (=> b!7127909 (= e!4283473 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 lt!2563635) true) (content!14117 (t!383092 lt!2563635))))))

(assert (= (and d!2224374 c!1329719) b!7127908))

(assert (= (and d!2224374 (not c!1329719)) b!7127909))

(declare-fun m!7844978 () Bool)

(assert (=> b!7127909 m!7844978))

(declare-fun m!7844980 () Bool)

(assert (=> b!7127909 m!7844980))

(assert (=> d!2224310 d!2224374))

(declare-fun d!2224396 () Bool)

(declare-fun c!1329721 () Bool)

(assert (=> d!2224396 (= c!1329721 ((_ is Nil!68991) s1Rec!140))))

(declare-fun e!4283478 () (InoxSet C!36332))

(assert (=> d!2224396 (= (content!14117 s1Rec!140) e!4283478)))

(declare-fun b!7127916 () Bool)

(assert (=> b!7127916 (= e!4283478 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7127917 () Bool)

(assert (=> b!7127917 (= e!4283478 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 s1Rec!140) true) (content!14117 (t!383092 s1Rec!140))))))

(assert (= (and d!2224396 c!1329721) b!7127916))

(assert (= (and d!2224396 (not c!1329721)) b!7127917))

(declare-fun m!7844984 () Bool)

(assert (=> b!7127917 m!7844984))

(declare-fun m!7844988 () Bool)

(assert (=> b!7127917 m!7844988))

(assert (=> d!2224310 d!2224396))

(declare-fun d!2224398 () Bool)

(declare-fun c!1329722 () Bool)

(assert (=> d!2224398 (= c!1329722 ((_ is Nil!68991) s2Rec!140))))

(declare-fun e!4283479 () (InoxSet C!36332))

(assert (=> d!2224398 (= (content!14117 s2Rec!140) e!4283479)))

(declare-fun b!7127918 () Bool)

(assert (=> b!7127918 (= e!4283479 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7127919 () Bool)

(assert (=> b!7127919 (= e!4283479 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 s2Rec!140) true) (content!14117 (t!383092 s2Rec!140))))))

(assert (= (and d!2224398 c!1329722) b!7127918))

(assert (= (and d!2224398 (not c!1329722)) b!7127919))

(declare-fun m!7845000 () Bool)

(assert (=> b!7127919 m!7845000))

(declare-fun m!7845002 () Bool)

(assert (=> b!7127919 m!7845002))

(assert (=> d!2224310 d!2224398))

(declare-fun d!2224406 () Bool)

(declare-fun lt!2563661 () Int)

(assert (=> d!2224406 (>= lt!2563661 0)))

(declare-fun e!4283480 () Int)

(assert (=> d!2224406 (= lt!2563661 e!4283480)))

(declare-fun c!1329723 () Bool)

(assert (=> d!2224406 (= c!1329723 ((_ is Nil!68991) lt!2563640))))

(assert (=> d!2224406 (= (size!41466 lt!2563640) lt!2563661)))

(declare-fun b!7127920 () Bool)

(assert (=> b!7127920 (= e!4283480 0)))

(declare-fun b!7127921 () Bool)

(assert (=> b!7127921 (= e!4283480 (+ 1 (size!41466 (t!383092 lt!2563640))))))

(assert (= (and d!2224406 c!1329723) b!7127920))

(assert (= (and d!2224406 (not c!1329723)) b!7127921))

(declare-fun m!7845004 () Bool)

(assert (=> b!7127921 m!7845004))

(assert (=> b!7127780 d!2224406))

(assert (=> b!7127780 d!2224328))

(declare-fun d!2224408 () Bool)

(declare-fun lt!2563662 () Int)

(assert (=> d!2224408 (>= lt!2563662 0)))

(declare-fun e!4283481 () Int)

(assert (=> d!2224408 (= lt!2563662 e!4283481)))

(declare-fun c!1329724 () Bool)

(assert (=> d!2224408 (= c!1329724 ((_ is Nil!68991) s2!1620))))

(assert (=> d!2224408 (= (size!41466 s2!1620) lt!2563662)))

(declare-fun b!7127922 () Bool)

(assert (=> b!7127922 (= e!4283481 0)))

(declare-fun b!7127923 () Bool)

(assert (=> b!7127923 (= e!4283481 (+ 1 (size!41466 (t!383092 s2!1620))))))

(assert (= (and d!2224408 c!1329724) b!7127922))

(assert (= (and d!2224408 (not c!1329724)) b!7127923))

(declare-fun m!7845006 () Bool)

(assert (=> b!7127923 m!7845006))

(assert (=> b!7127780 d!2224408))

(declare-fun b!7127927 () Bool)

(declare-fun e!4283484 () List!69115)

(assert (=> b!7127927 (= e!4283484 (Cons!68991 (h!75439 (t!383092 s1Rec!140)) (++!16169 (t!383092 (t!383092 s1Rec!140)) s2Rec!140)))))

(declare-fun d!2224410 () Bool)

(declare-fun e!4283485 () Bool)

(assert (=> d!2224410 e!4283485))

(declare-fun res!2908339 () Bool)

(assert (=> d!2224410 (=> (not res!2908339) (not e!4283485))))

(declare-fun lt!2563663 () List!69115)

(assert (=> d!2224410 (= res!2908339 (= (content!14117 lt!2563663) ((_ map or) (content!14117 (t!383092 s1Rec!140)) (content!14117 s2Rec!140))))))

(assert (=> d!2224410 (= lt!2563663 e!4283484)))

(declare-fun c!1329725 () Bool)

(assert (=> d!2224410 (= c!1329725 ((_ is Nil!68991) (t!383092 s1Rec!140)))))

(assert (=> d!2224410 (= (++!16169 (t!383092 s1Rec!140) s2Rec!140) lt!2563663)))

(declare-fun b!7127926 () Bool)

(assert (=> b!7127926 (= e!4283484 s2Rec!140)))

(declare-fun b!7127929 () Bool)

(assert (=> b!7127929 (= e!4283485 (or (not (= s2Rec!140 Nil!68991)) (= lt!2563663 (t!383092 s1Rec!140))))))

(declare-fun b!7127928 () Bool)

(declare-fun res!2908338 () Bool)

(assert (=> b!7127928 (=> (not res!2908338) (not e!4283485))))

(assert (=> b!7127928 (= res!2908338 (= (size!41466 lt!2563663) (+ (size!41466 (t!383092 s1Rec!140)) (size!41466 s2Rec!140))))))

(assert (= (and d!2224410 c!1329725) b!7127926))

(assert (= (and d!2224410 (not c!1329725)) b!7127927))

(assert (= (and d!2224410 res!2908339) b!7127928))

(assert (= (and b!7127928 res!2908338) b!7127929))

(declare-fun m!7845008 () Bool)

(assert (=> b!7127927 m!7845008))

(declare-fun m!7845010 () Bool)

(assert (=> d!2224410 m!7845010))

(assert (=> d!2224410 m!7844988))

(assert (=> d!2224410 m!7844774))

(declare-fun m!7845012 () Bool)

(assert (=> b!7127928 m!7845012))

(assert (=> b!7127928 m!7844844))

(assert (=> b!7127928 m!7844778))

(assert (=> b!7127753 d!2224410))

(declare-fun d!2224412 () Bool)

(assert (=> d!2224412 (= (head!14466 s1Rec!140) (h!75439 s1Rec!140))))

(assert (=> b!7127854 d!2224412))

(declare-fun d!2224416 () Bool)

(assert (=> d!2224416 (= (head!14466 s1!1688) (h!75439 s1!1688))))

(assert (=> b!7127854 d!2224416))

(declare-fun d!2224418 () Bool)

(declare-fun lambda!433108 () Int)

(declare-fun exists!3828 ((InoxSet Context!14050) Int) Bool)

(assert (=> d!2224418 (= (nullableZipper!2758 z1!552) (exists!3828 z1!552 lambda!433108))))

(declare-fun bs!1886594 () Bool)

(assert (= bs!1886594 d!2224418))

(declare-fun m!7845044 () Bool)

(assert (=> bs!1886594 m!7845044))

(assert (=> b!7127782 d!2224418))

(declare-fun bs!1886595 () Bool)

(declare-fun d!2224436 () Bool)

(assert (= bs!1886595 (and d!2224436 d!2224334)))

(declare-fun lambda!433109 () Int)

(assert (=> bs!1886595 (= lambda!433109 lambda!433098)))

(declare-fun bs!1886596 () Bool)

(assert (= bs!1886596 (and d!2224436 d!2224352)))

(assert (=> bs!1886596 (= lambda!433109 lambda!433099)))

(assert (=> d!2224436 (= (inv!88105 setElem!51794) (forall!16917 (exprs!7525 setElem!51794) lambda!433109))))

(declare-fun bs!1886597 () Bool)

(assert (= bs!1886597 d!2224436))

(declare-fun m!7845056 () Bool)

(assert (=> bs!1886597 m!7845056))

(assert (=> setNonEmpty!51794 d!2224436))

(declare-fun d!2224438 () Bool)

(declare-fun c!1329738 () Bool)

(assert (=> d!2224438 (= c!1329738 (isEmpty!40022 (tail!13938 s1Rec!140)))))

(declare-fun e!4283502 () Bool)

(assert (=> d!2224438 (= (matchZipper!3287 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (tail!13938 s1Rec!140)) e!4283502)))

(declare-fun b!7127956 () Bool)

(assert (=> b!7127956 (= e!4283502 (nullableZipper!2758 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140))))))

(declare-fun b!7127957 () Bool)

(assert (=> b!7127957 (= e!4283502 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (head!14466 (tail!13938 s1Rec!140))) (tail!13938 (tail!13938 s1Rec!140))))))

(assert (= (and d!2224438 c!1329738) b!7127956))

(assert (= (and d!2224438 (not c!1329738)) b!7127957))

(assert (=> d!2224438 m!7844836))

(declare-fun m!7845060 () Bool)

(assert (=> d!2224438 m!7845060))

(assert (=> b!7127956 m!7844834))

(declare-fun m!7845062 () Bool)

(assert (=> b!7127956 m!7845062))

(assert (=> b!7127957 m!7844836))

(declare-fun m!7845064 () Bool)

(assert (=> b!7127957 m!7845064))

(assert (=> b!7127957 m!7844834))

(assert (=> b!7127957 m!7845064))

(declare-fun m!7845068 () Bool)

(assert (=> b!7127957 m!7845068))

(assert (=> b!7127957 m!7844836))

(declare-fun m!7845070 () Bool)

(assert (=> b!7127957 m!7845070))

(assert (=> b!7127957 m!7845068))

(assert (=> b!7127957 m!7845070))

(declare-fun m!7845072 () Bool)

(assert (=> b!7127957 m!7845072))

(assert (=> b!7127783 d!2224438))

(declare-fun d!2224448 () Bool)

(assert (=> d!2224448 true))

(declare-fun lambda!433117 () Int)

(declare-fun flatMap!2635 ((InoxSet Context!14050) Int) (InoxSet Context!14050))

(assert (=> d!2224448 (= (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (flatMap!2635 z1!552 lambda!433117))))

(declare-fun bs!1886612 () Bool)

(assert (= bs!1886612 d!2224448))

(declare-fun m!7845092 () Bool)

(assert (=> bs!1886612 m!7845092))

(assert (=> b!7127783 d!2224448))

(assert (=> b!7127783 d!2224412))

(declare-fun d!2224466 () Bool)

(assert (=> d!2224466 (= (tail!13938 s1Rec!140) (t!383092 s1Rec!140))))

(assert (=> b!7127783 d!2224466))

(declare-fun b!7127967 () Bool)

(declare-fun e!4283506 () List!69115)

(assert (=> b!7127967 (= e!4283506 (Cons!68991 (h!75439 (t!383092 s1!1688)) (++!16169 (t!383092 (t!383092 s1!1688)) s2!1620)))))

(declare-fun d!2224470 () Bool)

(declare-fun e!4283507 () Bool)

(assert (=> d!2224470 e!4283507))

(declare-fun res!2908347 () Bool)

(assert (=> d!2224470 (=> (not res!2908347) (not e!4283507))))

(declare-fun lt!2563666 () List!69115)

(assert (=> d!2224470 (= res!2908347 (= (content!14117 lt!2563666) ((_ map or) (content!14117 (t!383092 s1!1688)) (content!14117 s2!1620))))))

(assert (=> d!2224470 (= lt!2563666 e!4283506)))

(declare-fun c!1329744 () Bool)

(assert (=> d!2224470 (= c!1329744 ((_ is Nil!68991) (t!383092 s1!1688)))))

(assert (=> d!2224470 (= (++!16169 (t!383092 s1!1688) s2!1620) lt!2563666)))

(declare-fun b!7127966 () Bool)

(assert (=> b!7127966 (= e!4283506 s2!1620)))

(declare-fun b!7127969 () Bool)

(assert (=> b!7127969 (= e!4283507 (or (not (= s2!1620 Nil!68991)) (= lt!2563666 (t!383092 s1!1688))))))

(declare-fun b!7127968 () Bool)

(declare-fun res!2908346 () Bool)

(assert (=> b!7127968 (=> (not res!2908346) (not e!4283507))))

(assert (=> b!7127968 (= res!2908346 (= (size!41466 lt!2563666) (+ (size!41466 (t!383092 s1!1688)) (size!41466 s2!1620))))))

(assert (= (and d!2224470 c!1329744) b!7127966))

(assert (= (and d!2224470 (not c!1329744)) b!7127967))

(assert (= (and d!2224470 res!2908347) b!7127968))

(assert (= (and b!7127968 res!2908346) b!7127969))

(declare-fun m!7845104 () Bool)

(assert (=> b!7127967 m!7845104))

(declare-fun m!7845106 () Bool)

(assert (=> d!2224470 m!7845106))

(declare-fun m!7845108 () Bool)

(assert (=> d!2224470 m!7845108))

(assert (=> d!2224470 m!7844822))

(declare-fun m!7845110 () Bool)

(assert (=> b!7127968 m!7845110))

(assert (=> b!7127968 m!7844840))

(assert (=> b!7127968 m!7844826))

(assert (=> b!7127779 d!2224470))

(declare-fun d!2224472 () Bool)

(declare-fun lt!2563667 () Int)

(assert (=> d!2224472 (>= lt!2563667 0)))

(declare-fun e!4283509 () Int)

(assert (=> d!2224472 (= lt!2563667 e!4283509)))

(declare-fun c!1329745 () Bool)

(assert (=> d!2224472 (= c!1329745 ((_ is Nil!68991) (t!383092 s1!1688)))))

(assert (=> d!2224472 (= (size!41466 (t!383092 s1!1688)) lt!2563667)))

(declare-fun b!7127971 () Bool)

(assert (=> b!7127971 (= e!4283509 0)))

(declare-fun b!7127972 () Bool)

(assert (=> b!7127972 (= e!4283509 (+ 1 (size!41466 (t!383092 (t!383092 s1!1688)))))))

(assert (= (and d!2224472 c!1329745) b!7127971))

(assert (= (and d!2224472 (not c!1329745)) b!7127972))

(declare-fun m!7845112 () Bool)

(assert (=> b!7127972 m!7845112))

(assert (=> b!7127793 d!2224472))

(declare-fun d!2224474 () Bool)

(assert (=> d!2224474 (= (isEmpty!40022 s2Rec!140) ((_ is Nil!68991) s2Rec!140))))

(assert (=> d!2224318 d!2224474))

(declare-fun d!2224476 () Bool)

(declare-fun lt!2563668 () Int)

(assert (=> d!2224476 (>= lt!2563668 0)))

(declare-fun e!4283514 () Int)

(assert (=> d!2224476 (= lt!2563668 e!4283514)))

(declare-fun c!1329746 () Bool)

(assert (=> d!2224476 (= c!1329746 ((_ is Nil!68991) (t!383092 s1Rec!140)))))

(assert (=> d!2224476 (= (size!41466 (t!383092 s1Rec!140)) lt!2563668)))

(declare-fun b!7127977 () Bool)

(assert (=> b!7127977 (= e!4283514 0)))

(declare-fun b!7127978 () Bool)

(assert (=> b!7127978 (= e!4283514 (+ 1 (size!41466 (t!383092 (t!383092 s1Rec!140)))))))

(assert (= (and d!2224476 c!1329746) b!7127977))

(assert (= (and d!2224476 (not c!1329746)) b!7127978))

(declare-fun m!7845118 () Bool)

(assert (=> b!7127978 m!7845118))

(assert (=> b!7127797 d!2224476))

(declare-fun d!2224478 () Bool)

(declare-fun c!1329747 () Bool)

(assert (=> d!2224478 (= c!1329747 (isEmpty!40022 (tail!13938 s2!1620)))))

(declare-fun e!4283517 () Bool)

(assert (=> d!2224478 (= (matchZipper!3287 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (tail!13938 s2!1620)) e!4283517)))

(declare-fun b!7127981 () Bool)

(assert (=> b!7127981 (= e!4283517 (nullableZipper!2758 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620))))))

(declare-fun b!7127982 () Bool)

(assert (=> b!7127982 (= e!4283517 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (head!14466 (tail!13938 s2!1620))) (tail!13938 (tail!13938 s2!1620))))))

(assert (= (and d!2224478 c!1329747) b!7127981))

(assert (= (and d!2224478 (not c!1329747)) b!7127982))

(assert (=> d!2224478 m!7844910))

(declare-fun m!7845120 () Bool)

(assert (=> d!2224478 m!7845120))

(assert (=> b!7127981 m!7844908))

(declare-fun m!7845122 () Bool)

(assert (=> b!7127981 m!7845122))

(assert (=> b!7127982 m!7844910))

(declare-fun m!7845124 () Bool)

(assert (=> b!7127982 m!7845124))

(assert (=> b!7127982 m!7844908))

(assert (=> b!7127982 m!7845124))

(declare-fun m!7845126 () Bool)

(assert (=> b!7127982 m!7845126))

(assert (=> b!7127982 m!7844910))

(declare-fun m!7845128 () Bool)

(assert (=> b!7127982 m!7845128))

(assert (=> b!7127982 m!7845126))

(assert (=> b!7127982 m!7845128))

(declare-fun m!7845130 () Bool)

(assert (=> b!7127982 m!7845130))

(assert (=> b!7127842 d!2224478))

(declare-fun bs!1886617 () Bool)

(declare-fun d!2224480 () Bool)

(assert (= bs!1886617 (and d!2224480 d!2224448)))

(declare-fun lambda!433119 () Int)

(assert (=> bs!1886617 (= (= (head!14466 s2!1620) (head!14466 s1Rec!140)) (= lambda!433119 lambda!433117))))

(assert (=> d!2224480 true))

(assert (=> d!2224480 (= (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (flatMap!2635 z2!471 lambda!433119))))

(declare-fun bs!1886618 () Bool)

(assert (= bs!1886618 d!2224480))

(declare-fun m!7845132 () Bool)

(assert (=> bs!1886618 m!7845132))

(assert (=> b!7127842 d!2224480))

(declare-fun d!2224482 () Bool)

(assert (=> d!2224482 (= (head!14466 s2!1620) (h!75439 s2!1620))))

(assert (=> b!7127842 d!2224482))

(declare-fun d!2224484 () Bool)

(assert (=> d!2224484 (= (tail!13938 s2!1620) (t!383092 s2!1620))))

(assert (=> b!7127842 d!2224484))

(assert (=> b!7127843 d!2224418))

(declare-fun d!2224486 () Bool)

(declare-fun c!1329748 () Bool)

(assert (=> d!2224486 (= c!1329748 (isEmpty!40022 (tail!13938 s1!1688)))))

(declare-fun e!4283520 () Bool)

(assert (=> d!2224486 (= (matchZipper!3287 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (tail!13938 s1!1688)) e!4283520)))

(declare-fun b!7127993 () Bool)

(assert (=> b!7127993 (= e!4283520 (nullableZipper!2758 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688))))))

(declare-fun b!7127994 () Bool)

(assert (=> b!7127994 (= e!4283520 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (head!14466 (tail!13938 s1!1688))) (tail!13938 (tail!13938 s1!1688))))))

(assert (= (and d!2224486 c!1329748) b!7127993))

(assert (= (and d!2224486 (not c!1329748)) b!7127994))

(assert (=> d!2224486 m!7844922))

(declare-fun m!7845134 () Bool)

(assert (=> d!2224486 m!7845134))

(assert (=> b!7127993 m!7844920))

(declare-fun m!7845136 () Bool)

(assert (=> b!7127993 m!7845136))

(assert (=> b!7127994 m!7844922))

(declare-fun m!7845138 () Bool)

(assert (=> b!7127994 m!7845138))

(assert (=> b!7127994 m!7844920))

(assert (=> b!7127994 m!7845138))

(declare-fun m!7845140 () Bool)

(assert (=> b!7127994 m!7845140))

(assert (=> b!7127994 m!7844922))

(declare-fun m!7845142 () Bool)

(assert (=> b!7127994 m!7845142))

(assert (=> b!7127994 m!7845140))

(assert (=> b!7127994 m!7845142))

(declare-fun m!7845144 () Bool)

(assert (=> b!7127994 m!7845144))

(assert (=> b!7127844 d!2224486))

(declare-fun bs!1886619 () Bool)

(declare-fun d!2224488 () Bool)

(assert (= bs!1886619 (and d!2224488 d!2224448)))

(declare-fun lambda!433120 () Int)

(assert (=> bs!1886619 (= (= (head!14466 s1!1688) (head!14466 s1Rec!140)) (= lambda!433120 lambda!433117))))

(declare-fun bs!1886620 () Bool)

(assert (= bs!1886620 (and d!2224488 d!2224480)))

(assert (=> bs!1886620 (= (= (head!14466 s1!1688) (head!14466 s2!1620)) (= lambda!433120 lambda!433119))))

(assert (=> d!2224488 true))

(assert (=> d!2224488 (= (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (flatMap!2635 z1!552 lambda!433120))))

(declare-fun bs!1886621 () Bool)

(assert (= bs!1886621 d!2224488))

(declare-fun m!7845146 () Bool)

(assert (=> bs!1886621 m!7845146))

(assert (=> b!7127844 d!2224488))

(assert (=> b!7127844 d!2224416))

(declare-fun d!2224490 () Bool)

(assert (=> d!2224490 (= (tail!13938 s1!1688) (t!383092 s1!1688))))

(assert (=> b!7127844 d!2224490))

(declare-fun d!2224494 () Bool)

(assert (=> d!2224494 (= (isEmpty!40022 s1Rec!140) ((_ is Nil!68991) s1Rec!140))))

(assert (=> d!2224326 d!2224494))

(declare-fun d!2224496 () Bool)

(assert (=> d!2224496 (= (isEmpty!40022 s1!1688) ((_ is Nil!68991) s1!1688))))

(assert (=> d!2224354 d!2224496))

(declare-fun bs!1886624 () Bool)

(declare-fun d!2224498 () Bool)

(assert (= bs!1886624 (and d!2224498 d!2224418)))

(declare-fun lambda!433121 () Int)

(assert (=> bs!1886624 (= lambda!433121 lambda!433108)))

(assert (=> d!2224498 (= (nullableZipper!2758 z2!471) (exists!3828 z2!471 lambda!433121))))

(declare-fun bs!1886625 () Bool)

(assert (= bs!1886625 d!2224498))

(declare-fun m!7845152 () Bool)

(assert (=> bs!1886625 m!7845152))

(assert (=> b!7127841 d!2224498))

(declare-fun d!2224502 () Bool)

(declare-fun c!1329749 () Bool)

(assert (=> d!2224502 (= c!1329749 ((_ is Nil!68991) lt!2563640))))

(declare-fun e!4283527 () (InoxSet C!36332))

(assert (=> d!2224502 (= (content!14117 lt!2563640) e!4283527)))

(declare-fun b!7128007 () Bool)

(assert (=> b!7128007 (= e!4283527 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128008 () Bool)

(assert (=> b!7128008 (= e!4283527 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 lt!2563640) true) (content!14117 (t!383092 lt!2563640))))))

(assert (= (and d!2224502 c!1329749) b!7128007))

(assert (= (and d!2224502 (not c!1329749)) b!7128008))

(declare-fun m!7845154 () Bool)

(assert (=> b!7128008 m!7845154))

(declare-fun m!7845156 () Bool)

(assert (=> b!7128008 m!7845156))

(assert (=> d!2224324 d!2224502))

(declare-fun d!2224504 () Bool)

(declare-fun c!1329750 () Bool)

(assert (=> d!2224504 (= c!1329750 ((_ is Nil!68991) s1!1688))))

(declare-fun e!4283528 () (InoxSet C!36332))

(assert (=> d!2224504 (= (content!14117 s1!1688) e!4283528)))

(declare-fun b!7128009 () Bool)

(assert (=> b!7128009 (= e!4283528 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128010 () Bool)

(assert (=> b!7128010 (= e!4283528 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 s1!1688) true) (content!14117 (t!383092 s1!1688))))))

(assert (= (and d!2224504 c!1329750) b!7128009))

(assert (= (and d!2224504 (not c!1329750)) b!7128010))

(declare-fun m!7845158 () Bool)

(assert (=> b!7128010 m!7845158))

(assert (=> b!7128010 m!7845108))

(assert (=> d!2224324 d!2224504))

(declare-fun d!2224506 () Bool)

(declare-fun c!1329751 () Bool)

(assert (=> d!2224506 (= c!1329751 ((_ is Nil!68991) s2!1620))))

(declare-fun e!4283529 () (InoxSet C!36332))

(assert (=> d!2224506 (= (content!14117 s2!1620) e!4283529)))

(declare-fun b!7128011 () Bool)

(assert (=> b!7128011 (= e!4283529 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128012 () Bool)

(assert (=> b!7128012 (= e!4283529 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 s2!1620) true) (content!14117 (t!383092 s2!1620))))))

(assert (= (and d!2224506 c!1329751) b!7128011))

(assert (= (and d!2224506 (not c!1329751)) b!7128012))

(declare-fun m!7845160 () Bool)

(assert (=> b!7128012 m!7845160))

(declare-fun m!7845162 () Bool)

(assert (=> b!7128012 m!7845162))

(assert (=> d!2224324 d!2224506))

(declare-fun d!2224508 () Bool)

(declare-fun lt!2563669 () Int)

(assert (=> d!2224508 (>= lt!2563669 0)))

(declare-fun e!4283530 () Int)

(assert (=> d!2224508 (= lt!2563669 e!4283530)))

(declare-fun c!1329752 () Bool)

(assert (=> d!2224508 (= c!1329752 ((_ is Nil!68991) (t!383092 s!7390)))))

(assert (=> d!2224508 (= (size!41466 (t!383092 s!7390)) lt!2563669)))

(declare-fun b!7128013 () Bool)

(assert (=> b!7128013 (= e!4283530 0)))

(declare-fun b!7128014 () Bool)

(assert (=> b!7128014 (= e!4283530 (+ 1 (size!41466 (t!383092 (t!383092 s!7390)))))))

(assert (= (and d!2224508 c!1329752) b!7128013))

(assert (= (and d!2224508 (not c!1329752)) b!7128014))

(declare-fun m!7845164 () Bool)

(assert (=> b!7128014 m!7845164))

(assert (=> b!7127795 d!2224508))

(declare-fun d!2224510 () Bool)

(assert (=> d!2224510 (= (isEmpty!40022 s2!1620) ((_ is Nil!68991) s2!1620))))

(assert (=> d!2224350 d!2224510))

(assert (=> b!7127776 d!2224498))

(declare-fun d!2224512 () Bool)

(declare-fun c!1329753 () Bool)

(assert (=> d!2224512 (= c!1329753 (isEmpty!40022 (tail!13938 s2Rec!140)))))

(declare-fun e!4283531 () Bool)

(assert (=> d!2224512 (= (matchZipper!3287 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (tail!13938 s2Rec!140)) e!4283531)))

(declare-fun b!7128015 () Bool)

(assert (=> b!7128015 (= e!4283531 (nullableZipper!2758 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140))))))

(declare-fun b!7128016 () Bool)

(assert (=> b!7128016 (= e!4283531 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (head!14466 (tail!13938 s2Rec!140))) (tail!13938 (tail!13938 s2Rec!140))))))

(assert (= (and d!2224512 c!1329753) b!7128015))

(assert (= (and d!2224512 (not c!1329753)) b!7128016))

(assert (=> d!2224512 m!7844812))

(declare-fun m!7845166 () Bool)

(assert (=> d!2224512 m!7845166))

(assert (=> b!7128015 m!7844810))

(declare-fun m!7845168 () Bool)

(assert (=> b!7128015 m!7845168))

(assert (=> b!7128016 m!7844812))

(declare-fun m!7845170 () Bool)

(assert (=> b!7128016 m!7845170))

(assert (=> b!7128016 m!7844810))

(assert (=> b!7128016 m!7845170))

(declare-fun m!7845172 () Bool)

(assert (=> b!7128016 m!7845172))

(assert (=> b!7128016 m!7844812))

(declare-fun m!7845174 () Bool)

(assert (=> b!7128016 m!7845174))

(assert (=> b!7128016 m!7845172))

(assert (=> b!7128016 m!7845174))

(declare-fun m!7845176 () Bool)

(assert (=> b!7128016 m!7845176))

(assert (=> b!7127777 d!2224512))

(declare-fun bs!1886626 () Bool)

(declare-fun d!2224514 () Bool)

(assert (= bs!1886626 (and d!2224514 d!2224448)))

(declare-fun lambda!433122 () Int)

(assert (=> bs!1886626 (= (= (head!14466 s2Rec!140) (head!14466 s1Rec!140)) (= lambda!433122 lambda!433117))))

(declare-fun bs!1886627 () Bool)

(assert (= bs!1886627 (and d!2224514 d!2224480)))

(assert (=> bs!1886627 (= (= (head!14466 s2Rec!140) (head!14466 s2!1620)) (= lambda!433122 lambda!433119))))

(declare-fun bs!1886628 () Bool)

(assert (= bs!1886628 (and d!2224514 d!2224488)))

(assert (=> bs!1886628 (= (= (head!14466 s2Rec!140) (head!14466 s1!1688)) (= lambda!433122 lambda!433120))))

(assert (=> d!2224514 true))

(assert (=> d!2224514 (= (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (flatMap!2635 z2!471 lambda!433122))))

(declare-fun bs!1886629 () Bool)

(assert (= bs!1886629 d!2224514))

(declare-fun m!7845178 () Bool)

(assert (=> bs!1886629 m!7845178))

(assert (=> b!7127777 d!2224514))

(declare-fun d!2224516 () Bool)

(assert (=> d!2224516 (= (head!14466 s2Rec!140) (h!75439 s2Rec!140))))

(assert (=> b!7127777 d!2224516))

(declare-fun d!2224518 () Bool)

(assert (=> d!2224518 (= (tail!13938 s2Rec!140) (t!383092 s2Rec!140))))

(assert (=> b!7127777 d!2224518))

(declare-fun bs!1886630 () Bool)

(declare-fun d!2224520 () Bool)

(assert (= bs!1886630 (and d!2224520 d!2224334)))

(declare-fun lambda!433123 () Int)

(assert (=> bs!1886630 (= lambda!433123 lambda!433098)))

(declare-fun bs!1886631 () Bool)

(assert (= bs!1886631 (and d!2224520 d!2224352)))

(assert (=> bs!1886631 (= lambda!433123 lambda!433099)))

(declare-fun bs!1886632 () Bool)

(assert (= bs!1886632 (and d!2224520 d!2224436)))

(assert (=> bs!1886632 (= lambda!433123 lambda!433109)))

(assert (=> d!2224520 (= (inv!88105 setElem!51795) (forall!16917 (exprs!7525 setElem!51795) lambda!433123))))

(declare-fun bs!1886633 () Bool)

(assert (= bs!1886633 d!2224520))

(declare-fun m!7845180 () Bool)

(assert (=> bs!1886633 m!7845180))

(assert (=> setNonEmpty!51795 d!2224520))

(declare-fun b!7128017 () Bool)

(declare-fun e!4283534 () Bool)

(declare-fun e!4283532 () Bool)

(assert (=> b!7128017 (= e!4283534 e!4283532)))

(declare-fun res!2908351 () Bool)

(assert (=> b!7128017 (=> (not res!2908351) (not e!4283532))))

(assert (=> b!7128017 (= res!2908351 (not ((_ is Nil!68991) (tail!13938 s1!1688))))))

(declare-fun b!7128019 () Bool)

(assert (=> b!7128019 (= e!4283532 (isPrefix!5900 (tail!13938 (tail!13938 s1Rec!140)) (tail!13938 (tail!13938 s1!1688))))))

(declare-fun d!2224522 () Bool)

(declare-fun e!4283533 () Bool)

(assert (=> d!2224522 e!4283533))

(declare-fun res!2908350 () Bool)

(assert (=> d!2224522 (=> res!2908350 e!4283533)))

(declare-fun lt!2563670 () Bool)

(assert (=> d!2224522 (= res!2908350 (not lt!2563670))))

(assert (=> d!2224522 (= lt!2563670 e!4283534)))

(declare-fun res!2908349 () Bool)

(assert (=> d!2224522 (=> res!2908349 e!4283534)))

(assert (=> d!2224522 (= res!2908349 ((_ is Nil!68991) (tail!13938 s1Rec!140)))))

(assert (=> d!2224522 (= (isPrefix!5900 (tail!13938 s1Rec!140) (tail!13938 s1!1688)) lt!2563670)))

(declare-fun b!7128018 () Bool)

(declare-fun res!2908348 () Bool)

(assert (=> b!7128018 (=> (not res!2908348) (not e!4283532))))

(assert (=> b!7128018 (= res!2908348 (= (head!14466 (tail!13938 s1Rec!140)) (head!14466 (tail!13938 s1!1688))))))

(declare-fun b!7128020 () Bool)

(assert (=> b!7128020 (= e!4283533 (>= (size!41466 (tail!13938 s1!1688)) (size!41466 (tail!13938 s1Rec!140))))))

(assert (= (and d!2224522 (not res!2908349)) b!7128017))

(assert (= (and b!7128017 res!2908351) b!7128018))

(assert (= (and b!7128018 res!2908348) b!7128019))

(assert (= (and d!2224522 (not res!2908350)) b!7128020))

(assert (=> b!7128019 m!7844836))

(assert (=> b!7128019 m!7845070))

(assert (=> b!7128019 m!7844922))

(assert (=> b!7128019 m!7845142))

(assert (=> b!7128019 m!7845070))

(assert (=> b!7128019 m!7845142))

(declare-fun m!7845182 () Bool)

(assert (=> b!7128019 m!7845182))

(assert (=> b!7128018 m!7844836))

(assert (=> b!7128018 m!7845064))

(assert (=> b!7128018 m!7844922))

(assert (=> b!7128018 m!7845138))

(assert (=> b!7128020 m!7844922))

(declare-fun m!7845184 () Bool)

(assert (=> b!7128020 m!7845184))

(assert (=> b!7128020 m!7844836))

(declare-fun m!7845186 () Bool)

(assert (=> b!7128020 m!7845186))

(assert (=> b!7127855 d!2224522))

(assert (=> b!7127855 d!2224466))

(assert (=> b!7127855 d!2224490))

(declare-fun d!2224524 () Bool)

(declare-fun lt!2563671 () Int)

(assert (=> d!2224524 (>= lt!2563671 0)))

(declare-fun e!4283535 () Int)

(assert (=> d!2224524 (= lt!2563671 e!4283535)))

(declare-fun c!1329754 () Bool)

(assert (=> d!2224524 (= c!1329754 ((_ is Nil!68991) lt!2563635))))

(assert (=> d!2224524 (= (size!41466 lt!2563635) lt!2563671)))

(declare-fun b!7128021 () Bool)

(assert (=> b!7128021 (= e!4283535 0)))

(declare-fun b!7128022 () Bool)

(assert (=> b!7128022 (= e!4283535 (+ 1 (size!41466 (t!383092 lt!2563635))))))

(assert (= (and d!2224524 c!1329754) b!7128021))

(assert (= (and d!2224524 (not c!1329754)) b!7128022))

(declare-fun m!7845188 () Bool)

(assert (=> b!7128022 m!7845188))

(assert (=> b!7127754 d!2224524))

(assert (=> b!7127754 d!2224332))

(declare-fun d!2224526 () Bool)

(declare-fun lt!2563672 () Int)

(assert (=> d!2224526 (>= lt!2563672 0)))

(declare-fun e!4283536 () Int)

(assert (=> d!2224526 (= lt!2563672 e!4283536)))

(declare-fun c!1329755 () Bool)

(assert (=> d!2224526 (= c!1329755 ((_ is Nil!68991) s2Rec!140))))

(assert (=> d!2224526 (= (size!41466 s2Rec!140) lt!2563672)))

(declare-fun b!7128023 () Bool)

(assert (=> b!7128023 (= e!4283536 0)))

(declare-fun b!7128024 () Bool)

(assert (=> b!7128024 (= e!4283536 (+ 1 (size!41466 (t!383092 s2Rec!140))))))

(assert (= (and d!2224526 c!1329755) b!7128023))

(assert (= (and d!2224526 (not c!1329755)) b!7128024))

(declare-fun m!7845190 () Bool)

(assert (=> b!7128024 m!7845190))

(assert (=> b!7127754 d!2224526))

(declare-fun d!2224528 () Bool)

(declare-fun res!2908352 () Bool)

(declare-fun e!4283537 () Bool)

(assert (=> d!2224528 (=> res!2908352 e!4283537)))

(assert (=> d!2224528 (= res!2908352 ((_ is Nil!68990) (exprs!7525 setElem!51787)))))

(assert (=> d!2224528 (= (forall!16917 (exprs!7525 setElem!51787) lambda!433099) e!4283537)))

(declare-fun b!7128025 () Bool)

(declare-fun e!4283538 () Bool)

(assert (=> b!7128025 (= e!4283537 e!4283538)))

(declare-fun res!2908353 () Bool)

(assert (=> b!7128025 (=> (not res!2908353) (not e!4283538))))

(assert (=> b!7128025 (= res!2908353 (dynLambda!28112 lambda!433099 (h!75438 (exprs!7525 setElem!51787))))))

(declare-fun b!7128026 () Bool)

(assert (=> b!7128026 (= e!4283538 (forall!16917 (t!383091 (exprs!7525 setElem!51787)) lambda!433099))))

(assert (= (and d!2224528 (not res!2908352)) b!7128025))

(assert (= (and b!7128025 res!2908353) b!7128026))

(declare-fun b_lambda!272023 () Bool)

(assert (=> (not b_lambda!272023) (not b!7128025)))

(declare-fun m!7845192 () Bool)

(assert (=> b!7128025 m!7845192))

(declare-fun m!7845194 () Bool)

(assert (=> b!7128026 m!7845194))

(assert (=> d!2224352 d!2224528))

(assert (=> b!7127856 d!2224328))

(assert (=> b!7127856 d!2224332))

(declare-fun b!7128027 () Bool)

(declare-fun e!4283539 () Bool)

(declare-fun tp!1963823 () Bool)

(assert (=> b!7128027 (= e!4283539 (and tp_is_empty!45663 tp!1963823))))

(assert (=> b!7127874 (= tp!1963782 e!4283539)))

(assert (= (and b!7127874 ((_ is Cons!68991) (t!383092 (t!383092 s!7390)))) b!7128027))

(declare-fun b!7128028 () Bool)

(declare-fun e!4283540 () Bool)

(declare-fun tp!1963824 () Bool)

(assert (=> b!7128028 (= e!4283540 (and tp_is_empty!45663 tp!1963824))))

(assert (=> b!7127876 (= tp!1963784 e!4283540)))

(assert (= (and b!7127876 ((_ is Cons!68991) (t!383092 (t!383092 s1Rec!140)))) b!7128028))

(declare-fun condSetEmpty!51798 () Bool)

(assert (=> setNonEmpty!51795 (= condSetEmpty!51798 (= setRest!51795 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51798 () Bool)

(assert (=> setNonEmpty!51795 (= tp!1963776 setRes!51798)))

(declare-fun setIsEmpty!51798 () Bool)

(assert (=> setIsEmpty!51798 setRes!51798))

(declare-fun e!4283541 () Bool)

(declare-fun setElem!51798 () Context!14050)

(declare-fun setNonEmpty!51798 () Bool)

(declare-fun tp!1963826 () Bool)

(assert (=> setNonEmpty!51798 (= setRes!51798 (and tp!1963826 (inv!88105 setElem!51798) e!4283541))))

(declare-fun setRest!51798 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51798 (= setRest!51795 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51798 true) setRest!51798))))

(declare-fun b!7128029 () Bool)

(declare-fun tp!1963825 () Bool)

(assert (=> b!7128029 (= e!4283541 tp!1963825)))

(assert (= (and setNonEmpty!51795 condSetEmpty!51798) setIsEmpty!51798))

(assert (= (and setNonEmpty!51795 (not condSetEmpty!51798)) setNonEmpty!51798))

(assert (= setNonEmpty!51798 b!7128029))

(declare-fun m!7845196 () Bool)

(assert (=> setNonEmpty!51798 m!7845196))

(declare-fun b!7128030 () Bool)

(declare-fun e!4283542 () Bool)

(declare-fun tp!1963827 () Bool)

(assert (=> b!7128030 (= e!4283542 (and tp_is_empty!45663 tp!1963827))))

(assert (=> b!7127873 (= tp!1963781 e!4283542)))

(assert (= (and b!7127873 ((_ is Cons!68991) (t!383092 (t!383092 s2!1620)))) b!7128030))

(declare-fun b!7128031 () Bool)

(declare-fun e!4283543 () Bool)

(declare-fun tp!1963828 () Bool)

(assert (=> b!7128031 (= e!4283543 (and tp_is_empty!45663 tp!1963828))))

(assert (=> b!7127875 (= tp!1963783 e!4283543)))

(assert (= (and b!7127875 ((_ is Cons!68991) (t!383092 (t!383092 s1!1688)))) b!7128031))

(declare-fun b!7128032 () Bool)

(declare-fun e!4283544 () Bool)

(declare-fun tp!1963829 () Bool)

(declare-fun tp!1963830 () Bool)

(assert (=> b!7128032 (= e!4283544 (and tp!1963829 tp!1963830))))

(assert (=> b!7127867 (= tp!1963775 e!4283544)))

(assert (= (and b!7127867 ((_ is Cons!68990) (exprs!7525 setElem!51795))) b!7128032))

(declare-fun condSetEmpty!51799 () Bool)

(assert (=> setNonEmpty!51794 (= condSetEmpty!51799 (= setRest!51794 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51799 () Bool)

(assert (=> setNonEmpty!51794 (= tp!1963768 setRes!51799)))

(declare-fun setIsEmpty!51799 () Bool)

(assert (=> setIsEmpty!51799 setRes!51799))

(declare-fun tp!1963832 () Bool)

(declare-fun setElem!51799 () Context!14050)

(declare-fun setNonEmpty!51799 () Bool)

(declare-fun e!4283545 () Bool)

(assert (=> setNonEmpty!51799 (= setRes!51799 (and tp!1963832 (inv!88105 setElem!51799) e!4283545))))

(declare-fun setRest!51799 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51799 (= setRest!51794 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51799 true) setRest!51799))))

(declare-fun b!7128033 () Bool)

(declare-fun tp!1963831 () Bool)

(assert (=> b!7128033 (= e!4283545 tp!1963831)))

(assert (= (and setNonEmpty!51794 condSetEmpty!51799) setIsEmpty!51799))

(assert (= (and setNonEmpty!51794 (not condSetEmpty!51799)) setNonEmpty!51799))

(assert (= setNonEmpty!51799 b!7128033))

(declare-fun m!7845198 () Bool)

(assert (=> setNonEmpty!51799 m!7845198))

(declare-fun b!7128034 () Bool)

(declare-fun e!4283546 () Bool)

(declare-fun tp!1963833 () Bool)

(assert (=> b!7128034 (= e!4283546 (and tp_is_empty!45663 tp!1963833))))

(assert (=> b!7127877 (= tp!1963785 e!4283546)))

(assert (= (and b!7127877 ((_ is Cons!68991) (t!383092 (t!383092 s2Rec!140)))) b!7128034))

(declare-fun b!7128045 () Bool)

(declare-fun e!4283549 () Bool)

(assert (=> b!7128045 (= e!4283549 tp_is_empty!45663)))

(assert (=> b!7127866 (= tp!1963773 e!4283549)))

(declare-fun b!7128046 () Bool)

(declare-fun tp!1963846 () Bool)

(declare-fun tp!1963844 () Bool)

(assert (=> b!7128046 (= e!4283549 (and tp!1963846 tp!1963844))))

(declare-fun b!7128047 () Bool)

(declare-fun tp!1963848 () Bool)

(assert (=> b!7128047 (= e!4283549 tp!1963848)))

(declare-fun b!7128048 () Bool)

(declare-fun tp!1963847 () Bool)

(declare-fun tp!1963845 () Bool)

(assert (=> b!7128048 (= e!4283549 (and tp!1963847 tp!1963845))))

(assert (= (and b!7127866 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51787)))) b!7128045))

(assert (= (and b!7127866 ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51787)))) b!7128046))

(assert (= (and b!7127866 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51787)))) b!7128047))

(assert (= (and b!7127866 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51787)))) b!7128048))

(declare-fun b!7128049 () Bool)

(declare-fun e!4283550 () Bool)

(declare-fun tp!1963849 () Bool)

(declare-fun tp!1963850 () Bool)

(assert (=> b!7128049 (= e!4283550 (and tp!1963849 tp!1963850))))

(assert (=> b!7127866 (= tp!1963774 e!4283550)))

(assert (= (and b!7127866 ((_ is Cons!68990) (t!383091 (exprs!7525 setElem!51787)))) b!7128049))

(declare-fun b!7128050 () Bool)

(declare-fun e!4283551 () Bool)

(assert (=> b!7128050 (= e!4283551 tp_is_empty!45663)))

(assert (=> b!7127868 (= tp!1963777 e!4283551)))

(declare-fun b!7128051 () Bool)

(declare-fun tp!1963853 () Bool)

(declare-fun tp!1963851 () Bool)

(assert (=> b!7128051 (= e!4283551 (and tp!1963853 tp!1963851))))

(declare-fun b!7128052 () Bool)

(declare-fun tp!1963855 () Bool)

(assert (=> b!7128052 (= e!4283551 tp!1963855)))

(declare-fun b!7128053 () Bool)

(declare-fun tp!1963854 () Bool)

(declare-fun tp!1963852 () Bool)

(assert (=> b!7128053 (= e!4283551 (and tp!1963854 tp!1963852))))

(assert (= (and b!7127868 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51786)))) b!7128050))

(assert (= (and b!7127868 ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51786)))) b!7128051))

(assert (= (and b!7127868 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51786)))) b!7128052))

(assert (= (and b!7127868 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51786)))) b!7128053))

(declare-fun b!7128054 () Bool)

(declare-fun e!4283552 () Bool)

(declare-fun tp!1963856 () Bool)

(declare-fun tp!1963857 () Bool)

(assert (=> b!7128054 (= e!4283552 (and tp!1963856 tp!1963857))))

(assert (=> b!7127868 (= tp!1963778 e!4283552)))

(assert (= (and b!7127868 ((_ is Cons!68990) (t!383091 (exprs!7525 setElem!51786)))) b!7128054))

(declare-fun b!7128055 () Bool)

(declare-fun e!4283553 () Bool)

(declare-fun tp!1963858 () Bool)

(declare-fun tp!1963859 () Bool)

(assert (=> b!7128055 (= e!4283553 (and tp!1963858 tp!1963859))))

(assert (=> b!7127861 (= tp!1963767 e!4283553)))

(assert (= (and b!7127861 ((_ is Cons!68990) (exprs!7525 setElem!51794))) b!7128055))

(declare-fun b_lambda!272025 () Bool)

(assert (= b_lambda!272013 (or d!2224334 b_lambda!272025)))

(declare-fun bs!1886634 () Bool)

(declare-fun d!2224530 () Bool)

(assert (= bs!1886634 (and d!2224530 d!2224334)))

(declare-fun validRegex!9268 (Regex!18031) Bool)

(assert (=> bs!1886634 (= (dynLambda!28112 lambda!433098 (h!75438 (exprs!7525 setElem!51786))) (validRegex!9268 (h!75438 (exprs!7525 setElem!51786))))))

(declare-fun m!7845200 () Bool)

(assert (=> bs!1886634 m!7845200))

(assert (=> b!7127894 d!2224530))

(declare-fun b_lambda!272027 () Bool)

(assert (= b_lambda!272023 (or d!2224352 b_lambda!272027)))

(declare-fun bs!1886635 () Bool)

(declare-fun d!2224532 () Bool)

(assert (= bs!1886635 (and d!2224532 d!2224352)))

(assert (=> bs!1886635 (= (dynLambda!28112 lambda!433099 (h!75438 (exprs!7525 setElem!51787))) (validRegex!9268 (h!75438 (exprs!7525 setElem!51787))))))

(declare-fun m!7845202 () Bool)

(assert (=> bs!1886635 m!7845202))

(assert (=> b!7128025 d!2224532))

(check-sat (not b!7128026) (not b!7127968) (not b!7127927) (not d!2224514) (not b!7128032) (not b!7127928) (not b!7128010) (not b!7128027) (not b!7128054) (not b!7127982) (not b!7128024) (not b!7127993) (not d!2224478) (not b!7128008) (not d!2224486) (not b!7128031) (not b!7128014) (not b!7128029) (not d!2224418) (not b!7127967) (not b!7127994) (not b!7127923) (not b!7128034) (not d!2224520) (not b!7127917) (not d!2224448) (not b!7127981) (not b!7128047) (not d!2224438) (not d!2224480) (not b!7128022) (not b!7128028) (not b_lambda!272025) (not d!2224436) (not b!7128046) (not b!7128049) (not b!7127919) (not b!7128018) (not b!7128053) (not b!7128015) (not setNonEmpty!51798) (not b!7128012) (not b!7128051) (not d!2224470) (not b!7127895) (not b!7128033) (not setNonEmpty!51799) (not b!7128048) (not d!2224410) (not b!7128052) (not d!2224498) (not b_lambda!272027) (not b!7127921) tp_is_empty!45663 (not b!7128030) (not bs!1886635) (not b!7127978) (not b!7127957) (not b!7128055) (not b!7128019) (not b!7128020) (not b!7127956) (not b!7127909) (not b!7128016) (not d!2224488) (not bs!1886634) (not d!2224512) (not b!7127972))
(check-sat)
(get-model)

(declare-fun d!2224534 () Bool)

(declare-fun choose!55092 ((InoxSet Context!14050) Int) (InoxSet Context!14050))

(assert (=> d!2224534 (= (flatMap!2635 z1!552 lambda!433117) (choose!55092 z1!552 lambda!433117))))

(declare-fun bs!1886636 () Bool)

(assert (= bs!1886636 d!2224534))

(declare-fun m!7845204 () Bool)

(assert (=> bs!1886636 m!7845204))

(assert (=> d!2224448 d!2224534))

(declare-fun d!2224536 () Bool)

(declare-fun c!1329756 () Bool)

(assert (=> d!2224536 (= c!1329756 ((_ is Nil!68991) lt!2563666))))

(declare-fun e!4283554 () (InoxSet C!36332))

(assert (=> d!2224536 (= (content!14117 lt!2563666) e!4283554)))

(declare-fun b!7128056 () Bool)

(assert (=> b!7128056 (= e!4283554 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128057 () Bool)

(assert (=> b!7128057 (= e!4283554 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 lt!2563666) true) (content!14117 (t!383092 lt!2563666))))))

(assert (= (and d!2224536 c!1329756) b!7128056))

(assert (= (and d!2224536 (not c!1329756)) b!7128057))

(declare-fun m!7845206 () Bool)

(assert (=> b!7128057 m!7845206))

(declare-fun m!7845208 () Bool)

(assert (=> b!7128057 m!7845208))

(assert (=> d!2224470 d!2224536))

(declare-fun d!2224538 () Bool)

(declare-fun c!1329757 () Bool)

(assert (=> d!2224538 (= c!1329757 ((_ is Nil!68991) (t!383092 s1!1688)))))

(declare-fun e!4283555 () (InoxSet C!36332))

(assert (=> d!2224538 (= (content!14117 (t!383092 s1!1688)) e!4283555)))

(declare-fun b!7128058 () Bool)

(assert (=> b!7128058 (= e!4283555 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128059 () Bool)

(assert (=> b!7128059 (= e!4283555 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 s1!1688)) true) (content!14117 (t!383092 (t!383092 s1!1688)))))))

(assert (= (and d!2224538 c!1329757) b!7128058))

(assert (= (and d!2224538 (not c!1329757)) b!7128059))

(declare-fun m!7845210 () Bool)

(assert (=> b!7128059 m!7845210))

(declare-fun m!7845212 () Bool)

(assert (=> b!7128059 m!7845212))

(assert (=> d!2224470 d!2224538))

(assert (=> d!2224470 d!2224506))

(declare-fun bs!1886637 () Bool)

(declare-fun d!2224540 () Bool)

(assert (= bs!1886637 (and d!2224540 d!2224418)))

(declare-fun lambda!433124 () Int)

(assert (=> bs!1886637 (= lambda!433124 lambda!433108)))

(declare-fun bs!1886638 () Bool)

(assert (= bs!1886638 (and d!2224540 d!2224498)))

(assert (=> bs!1886638 (= lambda!433124 lambda!433121)))

(assert (=> d!2224540 (= (nullableZipper!2758 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688))) (exists!3828 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) lambda!433124))))

(declare-fun bs!1886639 () Bool)

(assert (= bs!1886639 d!2224540))

(assert (=> bs!1886639 m!7844920))

(declare-fun m!7845214 () Bool)

(assert (=> bs!1886639 m!7845214))

(assert (=> b!7127993 d!2224540))

(declare-fun bs!1886640 () Bool)

(declare-fun d!2224542 () Bool)

(assert (= bs!1886640 (and d!2224542 d!2224418)))

(declare-fun lambda!433125 () Int)

(assert (=> bs!1886640 (= lambda!433125 lambda!433108)))

(declare-fun bs!1886641 () Bool)

(assert (= bs!1886641 (and d!2224542 d!2224498)))

(assert (=> bs!1886641 (= lambda!433125 lambda!433121)))

(declare-fun bs!1886642 () Bool)

(assert (= bs!1886642 (and d!2224542 d!2224540)))

(assert (=> bs!1886642 (= lambda!433125 lambda!433124)))

(assert (=> d!2224542 (= (nullableZipper!2758 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140))) (exists!3828 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) lambda!433125))))

(declare-fun bs!1886643 () Bool)

(assert (= bs!1886643 d!2224542))

(assert (=> bs!1886643 m!7844810))

(declare-fun m!7845216 () Bool)

(assert (=> bs!1886643 m!7845216))

(assert (=> b!7128015 d!2224542))

(declare-fun d!2224544 () Bool)

(declare-fun c!1329758 () Bool)

(assert (=> d!2224544 (= c!1329758 (isEmpty!40022 (tail!13938 (tail!13938 s1Rec!140))))))

(declare-fun e!4283556 () Bool)

(assert (=> d!2224544 (= (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (head!14466 (tail!13938 s1Rec!140))) (tail!13938 (tail!13938 s1Rec!140))) e!4283556)))

(declare-fun b!7128060 () Bool)

(assert (=> b!7128060 (= e!4283556 (nullableZipper!2758 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (head!14466 (tail!13938 s1Rec!140)))))))

(declare-fun b!7128061 () Bool)

(assert (=> b!7128061 (= e!4283556 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (head!14466 (tail!13938 s1Rec!140))) (head!14466 (tail!13938 (tail!13938 s1Rec!140)))) (tail!13938 (tail!13938 (tail!13938 s1Rec!140)))))))

(assert (= (and d!2224544 c!1329758) b!7128060))

(assert (= (and d!2224544 (not c!1329758)) b!7128061))

(assert (=> d!2224544 m!7845070))

(declare-fun m!7845218 () Bool)

(assert (=> d!2224544 m!7845218))

(assert (=> b!7128060 m!7845068))

(declare-fun m!7845220 () Bool)

(assert (=> b!7128060 m!7845220))

(assert (=> b!7128061 m!7845070))

(declare-fun m!7845222 () Bool)

(assert (=> b!7128061 m!7845222))

(assert (=> b!7128061 m!7845068))

(assert (=> b!7128061 m!7845222))

(declare-fun m!7845224 () Bool)

(assert (=> b!7128061 m!7845224))

(assert (=> b!7128061 m!7845070))

(declare-fun m!7845226 () Bool)

(assert (=> b!7128061 m!7845226))

(assert (=> b!7128061 m!7845224))

(assert (=> b!7128061 m!7845226))

(declare-fun m!7845228 () Bool)

(assert (=> b!7128061 m!7845228))

(assert (=> b!7127957 d!2224544))

(declare-fun bs!1886644 () Bool)

(declare-fun d!2224546 () Bool)

(assert (= bs!1886644 (and d!2224546 d!2224448)))

(declare-fun lambda!433126 () Int)

(assert (=> bs!1886644 (= (= (head!14466 (tail!13938 s1Rec!140)) (head!14466 s1Rec!140)) (= lambda!433126 lambda!433117))))

(declare-fun bs!1886645 () Bool)

(assert (= bs!1886645 (and d!2224546 d!2224480)))

(assert (=> bs!1886645 (= (= (head!14466 (tail!13938 s1Rec!140)) (head!14466 s2!1620)) (= lambda!433126 lambda!433119))))

(declare-fun bs!1886646 () Bool)

(assert (= bs!1886646 (and d!2224546 d!2224488)))

(assert (=> bs!1886646 (= (= (head!14466 (tail!13938 s1Rec!140)) (head!14466 s1!1688)) (= lambda!433126 lambda!433120))))

(declare-fun bs!1886647 () Bool)

(assert (= bs!1886647 (and d!2224546 d!2224514)))

(assert (=> bs!1886647 (= (= (head!14466 (tail!13938 s1Rec!140)) (head!14466 s2Rec!140)) (= lambda!433126 lambda!433122))))

(assert (=> d!2224546 true))

(assert (=> d!2224546 (= (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) (head!14466 (tail!13938 s1Rec!140))) (flatMap!2635 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) lambda!433126))))

(declare-fun bs!1886648 () Bool)

(assert (= bs!1886648 d!2224546))

(assert (=> bs!1886648 m!7844834))

(declare-fun m!7845230 () Bool)

(assert (=> bs!1886648 m!7845230))

(assert (=> b!7127957 d!2224546))

(declare-fun d!2224548 () Bool)

(assert (=> d!2224548 (= (head!14466 (tail!13938 s1Rec!140)) (h!75439 (tail!13938 s1Rec!140)))))

(assert (=> b!7127957 d!2224548))

(declare-fun d!2224550 () Bool)

(assert (=> d!2224550 (= (tail!13938 (tail!13938 s1Rec!140)) (t!383092 (tail!13938 s1Rec!140)))))

(assert (=> b!7127957 d!2224550))

(declare-fun d!2224552 () Bool)

(declare-fun c!1329759 () Bool)

(assert (=> d!2224552 (= c!1329759 ((_ is Nil!68991) (t!383092 lt!2563635)))))

(declare-fun e!4283557 () (InoxSet C!36332))

(assert (=> d!2224552 (= (content!14117 (t!383092 lt!2563635)) e!4283557)))

(declare-fun b!7128062 () Bool)

(assert (=> b!7128062 (= e!4283557 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128063 () Bool)

(assert (=> b!7128063 (= e!4283557 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 lt!2563635)) true) (content!14117 (t!383092 (t!383092 lt!2563635)))))))

(assert (= (and d!2224552 c!1329759) b!7128062))

(assert (= (and d!2224552 (not c!1329759)) b!7128063))

(declare-fun m!7845232 () Bool)

(assert (=> b!7128063 m!7845232))

(declare-fun m!7845234 () Bool)

(assert (=> b!7128063 m!7845234))

(assert (=> b!7127909 d!2224552))

(declare-fun d!2224554 () Bool)

(declare-fun lt!2563673 () Int)

(assert (=> d!2224554 (>= lt!2563673 0)))

(declare-fun e!4283558 () Int)

(assert (=> d!2224554 (= lt!2563673 e!4283558)))

(declare-fun c!1329760 () Bool)

(assert (=> d!2224554 (= c!1329760 ((_ is Nil!68991) (t!383092 (t!383092 s1Rec!140))))))

(assert (=> d!2224554 (= (size!41466 (t!383092 (t!383092 s1Rec!140))) lt!2563673)))

(declare-fun b!7128064 () Bool)

(assert (=> b!7128064 (= e!4283558 0)))

(declare-fun b!7128065 () Bool)

(assert (=> b!7128065 (= e!4283558 (+ 1 (size!41466 (t!383092 (t!383092 (t!383092 s1Rec!140))))))))

(assert (= (and d!2224554 c!1329760) b!7128064))

(assert (= (and d!2224554 (not c!1329760)) b!7128065))

(declare-fun m!7845236 () Bool)

(assert (=> b!7128065 m!7845236))

(assert (=> b!7127978 d!2224554))

(declare-fun b!7128067 () Bool)

(declare-fun e!4283559 () List!69115)

(assert (=> b!7128067 (= e!4283559 (Cons!68991 (h!75439 (t!383092 (t!383092 s1Rec!140))) (++!16169 (t!383092 (t!383092 (t!383092 s1Rec!140))) s2Rec!140)))))

(declare-fun d!2224556 () Bool)

(declare-fun e!4283560 () Bool)

(assert (=> d!2224556 e!4283560))

(declare-fun res!2908355 () Bool)

(assert (=> d!2224556 (=> (not res!2908355) (not e!4283560))))

(declare-fun lt!2563674 () List!69115)

(assert (=> d!2224556 (= res!2908355 (= (content!14117 lt!2563674) ((_ map or) (content!14117 (t!383092 (t!383092 s1Rec!140))) (content!14117 s2Rec!140))))))

(assert (=> d!2224556 (= lt!2563674 e!4283559)))

(declare-fun c!1329761 () Bool)

(assert (=> d!2224556 (= c!1329761 ((_ is Nil!68991) (t!383092 (t!383092 s1Rec!140))))))

(assert (=> d!2224556 (= (++!16169 (t!383092 (t!383092 s1Rec!140)) s2Rec!140) lt!2563674)))

(declare-fun b!7128066 () Bool)

(assert (=> b!7128066 (= e!4283559 s2Rec!140)))

(declare-fun b!7128069 () Bool)

(assert (=> b!7128069 (= e!4283560 (or (not (= s2Rec!140 Nil!68991)) (= lt!2563674 (t!383092 (t!383092 s1Rec!140)))))))

(declare-fun b!7128068 () Bool)

(declare-fun res!2908354 () Bool)

(assert (=> b!7128068 (=> (not res!2908354) (not e!4283560))))

(assert (=> b!7128068 (= res!2908354 (= (size!41466 lt!2563674) (+ (size!41466 (t!383092 (t!383092 s1Rec!140))) (size!41466 s2Rec!140))))))

(assert (= (and d!2224556 c!1329761) b!7128066))

(assert (= (and d!2224556 (not c!1329761)) b!7128067))

(assert (= (and d!2224556 res!2908355) b!7128068))

(assert (= (and b!7128068 res!2908354) b!7128069))

(declare-fun m!7845238 () Bool)

(assert (=> b!7128067 m!7845238))

(declare-fun m!7845240 () Bool)

(assert (=> d!2224556 m!7845240))

(declare-fun m!7845242 () Bool)

(assert (=> d!2224556 m!7845242))

(assert (=> d!2224556 m!7844774))

(declare-fun m!7845244 () Bool)

(assert (=> b!7128068 m!7845244))

(assert (=> b!7128068 m!7845118))

(assert (=> b!7128068 m!7844778))

(assert (=> b!7127927 d!2224556))

(declare-fun bs!1886649 () Bool)

(declare-fun d!2224558 () Bool)

(assert (= bs!1886649 (and d!2224558 d!2224334)))

(declare-fun lambda!433127 () Int)

(assert (=> bs!1886649 (= lambda!433127 lambda!433098)))

(declare-fun bs!1886650 () Bool)

(assert (= bs!1886650 (and d!2224558 d!2224352)))

(assert (=> bs!1886650 (= lambda!433127 lambda!433099)))

(declare-fun bs!1886651 () Bool)

(assert (= bs!1886651 (and d!2224558 d!2224436)))

(assert (=> bs!1886651 (= lambda!433127 lambda!433109)))

(declare-fun bs!1886652 () Bool)

(assert (= bs!1886652 (and d!2224558 d!2224520)))

(assert (=> bs!1886652 (= lambda!433127 lambda!433123)))

(assert (=> d!2224558 (= (inv!88105 setElem!51799) (forall!16917 (exprs!7525 setElem!51799) lambda!433127))))

(declare-fun bs!1886653 () Bool)

(assert (= bs!1886653 d!2224558))

(declare-fun m!7845246 () Bool)

(assert (=> bs!1886653 m!7845246))

(assert (=> setNonEmpty!51799 d!2224558))

(declare-fun d!2224560 () Bool)

(assert (=> d!2224560 (= (isEmpty!40022 (tail!13938 s1Rec!140)) ((_ is Nil!68991) (tail!13938 s1Rec!140)))))

(assert (=> d!2224438 d!2224560))

(declare-fun d!2224562 () Bool)

(assert (=> d!2224562 (= (flatMap!2635 z2!471 lambda!433122) (choose!55092 z2!471 lambda!433122))))

(declare-fun bs!1886654 () Bool)

(assert (= bs!1886654 d!2224562))

(declare-fun m!7845248 () Bool)

(assert (=> bs!1886654 m!7845248))

(assert (=> d!2224514 d!2224562))

(declare-fun d!2224564 () Bool)

(declare-fun lt!2563677 () Bool)

(declare-datatypes ((List!69116 0))(
  ( (Nil!68992) (Cons!68992 (h!75440 Context!14050) (t!383093 List!69116)) )
))
(declare-fun exists!3829 (List!69116 Int) Bool)

(declare-fun toList!11135 ((InoxSet Context!14050)) List!69116)

(assert (=> d!2224564 (= lt!2563677 (exists!3829 (toList!11135 z2!471) lambda!433121))))

(declare-fun choose!55093 ((InoxSet Context!14050) Int) Bool)

(assert (=> d!2224564 (= lt!2563677 (choose!55093 z2!471 lambda!433121))))

(assert (=> d!2224564 (= (exists!3828 z2!471 lambda!433121) lt!2563677)))

(declare-fun bs!1886655 () Bool)

(assert (= bs!1886655 d!2224564))

(declare-fun m!7845250 () Bool)

(assert (=> bs!1886655 m!7845250))

(assert (=> bs!1886655 m!7845250))

(declare-fun m!7845252 () Bool)

(assert (=> bs!1886655 m!7845252))

(declare-fun m!7845254 () Bool)

(assert (=> bs!1886655 m!7845254))

(assert (=> d!2224498 d!2224564))

(declare-fun b!7128071 () Bool)

(declare-fun e!4283561 () List!69115)

(assert (=> b!7128071 (= e!4283561 (Cons!68991 (h!75439 (t!383092 (t!383092 s1!1688))) (++!16169 (t!383092 (t!383092 (t!383092 s1!1688))) s2!1620)))))

(declare-fun d!2224566 () Bool)

(declare-fun e!4283562 () Bool)

(assert (=> d!2224566 e!4283562))

(declare-fun res!2908357 () Bool)

(assert (=> d!2224566 (=> (not res!2908357) (not e!4283562))))

(declare-fun lt!2563678 () List!69115)

(assert (=> d!2224566 (= res!2908357 (= (content!14117 lt!2563678) ((_ map or) (content!14117 (t!383092 (t!383092 s1!1688))) (content!14117 s2!1620))))))

(assert (=> d!2224566 (= lt!2563678 e!4283561)))

(declare-fun c!1329762 () Bool)

(assert (=> d!2224566 (= c!1329762 ((_ is Nil!68991) (t!383092 (t!383092 s1!1688))))))

(assert (=> d!2224566 (= (++!16169 (t!383092 (t!383092 s1!1688)) s2!1620) lt!2563678)))

(declare-fun b!7128070 () Bool)

(assert (=> b!7128070 (= e!4283561 s2!1620)))

(declare-fun b!7128073 () Bool)

(assert (=> b!7128073 (= e!4283562 (or (not (= s2!1620 Nil!68991)) (= lt!2563678 (t!383092 (t!383092 s1!1688)))))))

(declare-fun b!7128072 () Bool)

(declare-fun res!2908356 () Bool)

(assert (=> b!7128072 (=> (not res!2908356) (not e!4283562))))

(assert (=> b!7128072 (= res!2908356 (= (size!41466 lt!2563678) (+ (size!41466 (t!383092 (t!383092 s1!1688))) (size!41466 s2!1620))))))

(assert (= (and d!2224566 c!1329762) b!7128070))

(assert (= (and d!2224566 (not c!1329762)) b!7128071))

(assert (= (and d!2224566 res!2908357) b!7128072))

(assert (= (and b!7128072 res!2908356) b!7128073))

(declare-fun m!7845256 () Bool)

(assert (=> b!7128071 m!7845256))

(declare-fun m!7845258 () Bool)

(assert (=> d!2224566 m!7845258))

(assert (=> d!2224566 m!7845212))

(assert (=> d!2224566 m!7844822))

(declare-fun m!7845260 () Bool)

(assert (=> b!7128072 m!7845260))

(assert (=> b!7128072 m!7845112))

(assert (=> b!7128072 m!7844826))

(assert (=> b!7127967 d!2224566))

(declare-fun d!2224568 () Bool)

(declare-fun c!1329763 () Bool)

(assert (=> d!2224568 (= c!1329763 (isEmpty!40022 (tail!13938 (tail!13938 s2!1620))))))

(declare-fun e!4283563 () Bool)

(assert (=> d!2224568 (= (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (head!14466 (tail!13938 s2!1620))) (tail!13938 (tail!13938 s2!1620))) e!4283563)))

(declare-fun b!7128074 () Bool)

(assert (=> b!7128074 (= e!4283563 (nullableZipper!2758 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (head!14466 (tail!13938 s2!1620)))))))

(declare-fun b!7128075 () Bool)

(assert (=> b!7128075 (= e!4283563 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (head!14466 (tail!13938 s2!1620))) (head!14466 (tail!13938 (tail!13938 s2!1620)))) (tail!13938 (tail!13938 (tail!13938 s2!1620)))))))

(assert (= (and d!2224568 c!1329763) b!7128074))

(assert (= (and d!2224568 (not c!1329763)) b!7128075))

(assert (=> d!2224568 m!7845128))

(declare-fun m!7845262 () Bool)

(assert (=> d!2224568 m!7845262))

(assert (=> b!7128074 m!7845126))

(declare-fun m!7845264 () Bool)

(assert (=> b!7128074 m!7845264))

(assert (=> b!7128075 m!7845128))

(declare-fun m!7845266 () Bool)

(assert (=> b!7128075 m!7845266))

(assert (=> b!7128075 m!7845126))

(assert (=> b!7128075 m!7845266))

(declare-fun m!7845268 () Bool)

(assert (=> b!7128075 m!7845268))

(assert (=> b!7128075 m!7845128))

(declare-fun m!7845270 () Bool)

(assert (=> b!7128075 m!7845270))

(assert (=> b!7128075 m!7845268))

(assert (=> b!7128075 m!7845270))

(declare-fun m!7845272 () Bool)

(assert (=> b!7128075 m!7845272))

(assert (=> b!7127982 d!2224568))

(declare-fun bs!1886656 () Bool)

(declare-fun d!2224570 () Bool)

(assert (= bs!1886656 (and d!2224570 d!2224546)))

(declare-fun lambda!433128 () Int)

(assert (=> bs!1886656 (= (= (head!14466 (tail!13938 s2!1620)) (head!14466 (tail!13938 s1Rec!140))) (= lambda!433128 lambda!433126))))

(declare-fun bs!1886657 () Bool)

(assert (= bs!1886657 (and d!2224570 d!2224514)))

(assert (=> bs!1886657 (= (= (head!14466 (tail!13938 s2!1620)) (head!14466 s2Rec!140)) (= lambda!433128 lambda!433122))))

(declare-fun bs!1886658 () Bool)

(assert (= bs!1886658 (and d!2224570 d!2224480)))

(assert (=> bs!1886658 (= (= (head!14466 (tail!13938 s2!1620)) (head!14466 s2!1620)) (= lambda!433128 lambda!433119))))

(declare-fun bs!1886659 () Bool)

(assert (= bs!1886659 (and d!2224570 d!2224488)))

(assert (=> bs!1886659 (= (= (head!14466 (tail!13938 s2!1620)) (head!14466 s1!1688)) (= lambda!433128 lambda!433120))))

(declare-fun bs!1886660 () Bool)

(assert (= bs!1886660 (and d!2224570 d!2224448)))

(assert (=> bs!1886660 (= (= (head!14466 (tail!13938 s2!1620)) (head!14466 s1Rec!140)) (= lambda!433128 lambda!433117))))

(assert (=> d!2224570 true))

(assert (=> d!2224570 (= (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) (head!14466 (tail!13938 s2!1620))) (flatMap!2635 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) lambda!433128))))

(declare-fun bs!1886661 () Bool)

(assert (= bs!1886661 d!2224570))

(assert (=> bs!1886661 m!7844908))

(declare-fun m!7845274 () Bool)

(assert (=> bs!1886661 m!7845274))

(assert (=> b!7127982 d!2224570))

(declare-fun d!2224572 () Bool)

(assert (=> d!2224572 (= (head!14466 (tail!13938 s2!1620)) (h!75439 (tail!13938 s2!1620)))))

(assert (=> b!7127982 d!2224572))

(declare-fun d!2224574 () Bool)

(assert (=> d!2224574 (= (tail!13938 (tail!13938 s2!1620)) (t!383092 (tail!13938 s2!1620)))))

(assert (=> b!7127982 d!2224574))

(declare-fun d!2224576 () Bool)

(declare-fun c!1329764 () Bool)

(assert (=> d!2224576 (= c!1329764 (isEmpty!40022 (tail!13938 (tail!13938 s1!1688))))))

(declare-fun e!4283564 () Bool)

(assert (=> d!2224576 (= (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (head!14466 (tail!13938 s1!1688))) (tail!13938 (tail!13938 s1!1688))) e!4283564)))

(declare-fun b!7128076 () Bool)

(assert (=> b!7128076 (= e!4283564 (nullableZipper!2758 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (head!14466 (tail!13938 s1!1688)))))))

(declare-fun b!7128077 () Bool)

(assert (=> b!7128077 (= e!4283564 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (head!14466 (tail!13938 s1!1688))) (head!14466 (tail!13938 (tail!13938 s1!1688)))) (tail!13938 (tail!13938 (tail!13938 s1!1688)))))))

(assert (= (and d!2224576 c!1329764) b!7128076))

(assert (= (and d!2224576 (not c!1329764)) b!7128077))

(assert (=> d!2224576 m!7845142))

(declare-fun m!7845276 () Bool)

(assert (=> d!2224576 m!7845276))

(assert (=> b!7128076 m!7845140))

(declare-fun m!7845278 () Bool)

(assert (=> b!7128076 m!7845278))

(assert (=> b!7128077 m!7845142))

(declare-fun m!7845280 () Bool)

(assert (=> b!7128077 m!7845280))

(assert (=> b!7128077 m!7845140))

(assert (=> b!7128077 m!7845280))

(declare-fun m!7845282 () Bool)

(assert (=> b!7128077 m!7845282))

(assert (=> b!7128077 m!7845142))

(declare-fun m!7845284 () Bool)

(assert (=> b!7128077 m!7845284))

(assert (=> b!7128077 m!7845282))

(assert (=> b!7128077 m!7845284))

(declare-fun m!7845286 () Bool)

(assert (=> b!7128077 m!7845286))

(assert (=> b!7127994 d!2224576))

(declare-fun bs!1886662 () Bool)

(declare-fun d!2224578 () Bool)

(assert (= bs!1886662 (and d!2224578 d!2224570)))

(declare-fun lambda!433129 () Int)

(assert (=> bs!1886662 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 (tail!13938 s2!1620))) (= lambda!433129 lambda!433128))))

(declare-fun bs!1886663 () Bool)

(assert (= bs!1886663 (and d!2224578 d!2224546)))

(assert (=> bs!1886663 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 (tail!13938 s1Rec!140))) (= lambda!433129 lambda!433126))))

(declare-fun bs!1886664 () Bool)

(assert (= bs!1886664 (and d!2224578 d!2224514)))

(assert (=> bs!1886664 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 s2Rec!140)) (= lambda!433129 lambda!433122))))

(declare-fun bs!1886665 () Bool)

(assert (= bs!1886665 (and d!2224578 d!2224480)))

(assert (=> bs!1886665 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 s2!1620)) (= lambda!433129 lambda!433119))))

(declare-fun bs!1886666 () Bool)

(assert (= bs!1886666 (and d!2224578 d!2224488)))

(assert (=> bs!1886666 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 s1!1688)) (= lambda!433129 lambda!433120))))

(declare-fun bs!1886667 () Bool)

(assert (= bs!1886667 (and d!2224578 d!2224448)))

(assert (=> bs!1886667 (= (= (head!14466 (tail!13938 s1!1688)) (head!14466 s1Rec!140)) (= lambda!433129 lambda!433117))))

(assert (=> d!2224578 true))

(assert (=> d!2224578 (= (derivationStepZipper!3170 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) (head!14466 (tail!13938 s1!1688))) (flatMap!2635 (derivationStepZipper!3170 z1!552 (head!14466 s1!1688)) lambda!433129))))

(declare-fun bs!1886668 () Bool)

(assert (= bs!1886668 d!2224578))

(assert (=> bs!1886668 m!7844920))

(declare-fun m!7845288 () Bool)

(assert (=> bs!1886668 m!7845288))

(assert (=> b!7127994 d!2224578))

(declare-fun d!2224580 () Bool)

(assert (=> d!2224580 (= (head!14466 (tail!13938 s1!1688)) (h!75439 (tail!13938 s1!1688)))))

(assert (=> b!7127994 d!2224580))

(declare-fun d!2224582 () Bool)

(assert (=> d!2224582 (= (tail!13938 (tail!13938 s1!1688)) (t!383092 (tail!13938 s1!1688)))))

(assert (=> b!7127994 d!2224582))

(declare-fun d!2224584 () Bool)

(assert (=> d!2224584 (= (flatMap!2635 z2!471 lambda!433119) (choose!55092 z2!471 lambda!433119))))

(declare-fun bs!1886669 () Bool)

(assert (= bs!1886669 d!2224584))

(declare-fun m!7845290 () Bool)

(assert (=> bs!1886669 m!7845290))

(assert (=> d!2224480 d!2224584))

(declare-fun d!2224586 () Bool)

(declare-fun c!1329765 () Bool)

(assert (=> d!2224586 (= c!1329765 ((_ is Nil!68991) (t!383092 s2Rec!140)))))

(declare-fun e!4283565 () (InoxSet C!36332))

(assert (=> d!2224586 (= (content!14117 (t!383092 s2Rec!140)) e!4283565)))

(declare-fun b!7128078 () Bool)

(assert (=> b!7128078 (= e!4283565 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128079 () Bool)

(assert (=> b!7128079 (= e!4283565 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 s2Rec!140)) true) (content!14117 (t!383092 (t!383092 s2Rec!140)))))))

(assert (= (and d!2224586 c!1329765) b!7128078))

(assert (= (and d!2224586 (not c!1329765)) b!7128079))

(declare-fun m!7845292 () Bool)

(assert (=> b!7128079 m!7845292))

(declare-fun m!7845294 () Bool)

(assert (=> b!7128079 m!7845294))

(assert (=> b!7127919 d!2224586))

(declare-fun d!2224588 () Bool)

(declare-fun lt!2563679 () Int)

(assert (=> d!2224588 (>= lt!2563679 0)))

(declare-fun e!4283566 () Int)

(assert (=> d!2224588 (= lt!2563679 e!4283566)))

(declare-fun c!1329766 () Bool)

(assert (=> d!2224588 (= c!1329766 ((_ is Nil!68991) (tail!13938 s1!1688)))))

(assert (=> d!2224588 (= (size!41466 (tail!13938 s1!1688)) lt!2563679)))

(declare-fun b!7128080 () Bool)

(assert (=> b!7128080 (= e!4283566 0)))

(declare-fun b!7128081 () Bool)

(assert (=> b!7128081 (= e!4283566 (+ 1 (size!41466 (t!383092 (tail!13938 s1!1688)))))))

(assert (= (and d!2224588 c!1329766) b!7128080))

(assert (= (and d!2224588 (not c!1329766)) b!7128081))

(declare-fun m!7845296 () Bool)

(assert (=> b!7128081 m!7845296))

(assert (=> b!7128020 d!2224588))

(declare-fun d!2224590 () Bool)

(declare-fun lt!2563680 () Int)

(assert (=> d!2224590 (>= lt!2563680 0)))

(declare-fun e!4283567 () Int)

(assert (=> d!2224590 (= lt!2563680 e!4283567)))

(declare-fun c!1329767 () Bool)

(assert (=> d!2224590 (= c!1329767 ((_ is Nil!68991) (tail!13938 s1Rec!140)))))

(assert (=> d!2224590 (= (size!41466 (tail!13938 s1Rec!140)) lt!2563680)))

(declare-fun b!7128082 () Bool)

(assert (=> b!7128082 (= e!4283567 0)))

(declare-fun b!7128083 () Bool)

(assert (=> b!7128083 (= e!4283567 (+ 1 (size!41466 (t!383092 (tail!13938 s1Rec!140)))))))

(assert (= (and d!2224590 c!1329767) b!7128082))

(assert (= (and d!2224590 (not c!1329767)) b!7128083))

(declare-fun m!7845298 () Bool)

(assert (=> b!7128083 m!7845298))

(assert (=> b!7128020 d!2224590))

(declare-fun d!2224592 () Bool)

(declare-fun res!2908358 () Bool)

(declare-fun e!4283568 () Bool)

(assert (=> d!2224592 (=> res!2908358 e!4283568)))

(assert (=> d!2224592 (= res!2908358 ((_ is Nil!68990) (exprs!7525 setElem!51795)))))

(assert (=> d!2224592 (= (forall!16917 (exprs!7525 setElem!51795) lambda!433123) e!4283568)))

(declare-fun b!7128084 () Bool)

(declare-fun e!4283569 () Bool)

(assert (=> b!7128084 (= e!4283568 e!4283569)))

(declare-fun res!2908359 () Bool)

(assert (=> b!7128084 (=> (not res!2908359) (not e!4283569))))

(assert (=> b!7128084 (= res!2908359 (dynLambda!28112 lambda!433123 (h!75438 (exprs!7525 setElem!51795))))))

(declare-fun b!7128085 () Bool)

(assert (=> b!7128085 (= e!4283569 (forall!16917 (t!383091 (exprs!7525 setElem!51795)) lambda!433123))))

(assert (= (and d!2224592 (not res!2908358)) b!7128084))

(assert (= (and b!7128084 res!2908359) b!7128085))

(declare-fun b_lambda!272029 () Bool)

(assert (=> (not b_lambda!272029) (not b!7128084)))

(declare-fun m!7845300 () Bool)

(assert (=> b!7128084 m!7845300))

(declare-fun m!7845302 () Bool)

(assert (=> b!7128085 m!7845302))

(assert (=> d!2224520 d!2224592))

(declare-fun d!2224594 () Bool)

(declare-fun lt!2563681 () Int)

(assert (=> d!2224594 (>= lt!2563681 0)))

(declare-fun e!4283570 () Int)

(assert (=> d!2224594 (= lt!2563681 e!4283570)))

(declare-fun c!1329768 () Bool)

(assert (=> d!2224594 (= c!1329768 ((_ is Nil!68991) (t!383092 lt!2563640)))))

(assert (=> d!2224594 (= (size!41466 (t!383092 lt!2563640)) lt!2563681)))

(declare-fun b!7128086 () Bool)

(assert (=> b!7128086 (= e!4283570 0)))

(declare-fun b!7128087 () Bool)

(assert (=> b!7128087 (= e!4283570 (+ 1 (size!41466 (t!383092 (t!383092 lt!2563640)))))))

(assert (= (and d!2224594 c!1329768) b!7128086))

(assert (= (and d!2224594 (not c!1329768)) b!7128087))

(declare-fun m!7845304 () Bool)

(assert (=> b!7128087 m!7845304))

(assert (=> b!7127921 d!2224594))

(declare-fun d!2224596 () Bool)

(declare-fun c!1329769 () Bool)

(assert (=> d!2224596 (= c!1329769 ((_ is Nil!68991) lt!2563663))))

(declare-fun e!4283571 () (InoxSet C!36332))

(assert (=> d!2224596 (= (content!14117 lt!2563663) e!4283571)))

(declare-fun b!7128088 () Bool)

(assert (=> b!7128088 (= e!4283571 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128089 () Bool)

(assert (=> b!7128089 (= e!4283571 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 lt!2563663) true) (content!14117 (t!383092 lt!2563663))))))

(assert (= (and d!2224596 c!1329769) b!7128088))

(assert (= (and d!2224596 (not c!1329769)) b!7128089))

(declare-fun m!7845306 () Bool)

(assert (=> b!7128089 m!7845306))

(declare-fun m!7845308 () Bool)

(assert (=> b!7128089 m!7845308))

(assert (=> d!2224410 d!2224596))

(declare-fun d!2224598 () Bool)

(declare-fun c!1329770 () Bool)

(assert (=> d!2224598 (= c!1329770 ((_ is Nil!68991) (t!383092 s1Rec!140)))))

(declare-fun e!4283572 () (InoxSet C!36332))

(assert (=> d!2224598 (= (content!14117 (t!383092 s1Rec!140)) e!4283572)))

(declare-fun b!7128090 () Bool)

(assert (=> b!7128090 (= e!4283572 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128091 () Bool)

(assert (=> b!7128091 (= e!4283572 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 s1Rec!140)) true) (content!14117 (t!383092 (t!383092 s1Rec!140)))))))

(assert (= (and d!2224598 c!1329770) b!7128090))

(assert (= (and d!2224598 (not c!1329770)) b!7128091))

(declare-fun m!7845310 () Bool)

(assert (=> b!7128091 m!7845310))

(assert (=> b!7128091 m!7845242))

(assert (=> d!2224410 d!2224598))

(assert (=> d!2224410 d!2224398))

(declare-fun d!2224600 () Bool)

(declare-fun res!2908360 () Bool)

(declare-fun e!4283573 () Bool)

(assert (=> d!2224600 (=> res!2908360 e!4283573)))

(assert (=> d!2224600 (= res!2908360 ((_ is Nil!68990) (t!383091 (exprs!7525 setElem!51786))))))

(assert (=> d!2224600 (= (forall!16917 (t!383091 (exprs!7525 setElem!51786)) lambda!433098) e!4283573)))

(declare-fun b!7128092 () Bool)

(declare-fun e!4283574 () Bool)

(assert (=> b!7128092 (= e!4283573 e!4283574)))

(declare-fun res!2908361 () Bool)

(assert (=> b!7128092 (=> (not res!2908361) (not e!4283574))))

(assert (=> b!7128092 (= res!2908361 (dynLambda!28112 lambda!433098 (h!75438 (t!383091 (exprs!7525 setElem!51786)))))))

(declare-fun b!7128093 () Bool)

(assert (=> b!7128093 (= e!4283574 (forall!16917 (t!383091 (t!383091 (exprs!7525 setElem!51786))) lambda!433098))))

(assert (= (and d!2224600 (not res!2908360)) b!7128092))

(assert (= (and b!7128092 res!2908361) b!7128093))

(declare-fun b_lambda!272031 () Bool)

(assert (=> (not b_lambda!272031) (not b!7128092)))

(declare-fun m!7845312 () Bool)

(assert (=> b!7128092 m!7845312))

(declare-fun m!7845314 () Bool)

(assert (=> b!7128093 m!7845314))

(assert (=> b!7127895 d!2224600))

(declare-fun bm!650870 () Bool)

(declare-fun call!650876 () Bool)

(declare-fun call!650877 () Bool)

(assert (=> bm!650870 (= call!650876 call!650877)))

(declare-fun b!7128112 () Bool)

(declare-fun e!4283590 () Bool)

(declare-fun call!650875 () Bool)

(assert (=> b!7128112 (= e!4283590 call!650875)))

(declare-fun b!7128113 () Bool)

(declare-fun res!2908373 () Bool)

(assert (=> b!7128113 (=> (not res!2908373) (not e!4283590))))

(assert (=> b!7128113 (= res!2908373 call!650876)))

(declare-fun e!4283592 () Bool)

(assert (=> b!7128113 (= e!4283592 e!4283590)))

(declare-fun d!2224602 () Bool)

(declare-fun res!2908375 () Bool)

(declare-fun e!4283595 () Bool)

(assert (=> d!2224602 (=> res!2908375 e!4283595)))

(assert (=> d!2224602 (= res!2908375 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51786))))))

(assert (=> d!2224602 (= (validRegex!9268 (h!75438 (exprs!7525 setElem!51786))) e!4283595)))

(declare-fun b!7128114 () Bool)

(declare-fun res!2908374 () Bool)

(declare-fun e!4283589 () Bool)

(assert (=> b!7128114 (=> res!2908374 e!4283589)))

(assert (=> b!7128114 (= res!2908374 (not ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51786)))))))

(assert (=> b!7128114 (= e!4283592 e!4283589)))

(declare-fun b!7128115 () Bool)

(declare-fun e!4283591 () Bool)

(assert (=> b!7128115 (= e!4283591 call!650876)))

(declare-fun b!7128116 () Bool)

(declare-fun e!4283593 () Bool)

(assert (=> b!7128116 (= e!4283595 e!4283593)))

(declare-fun c!1329775 () Bool)

(assert (=> b!7128116 (= c!1329775 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51786))))))

(declare-fun b!7128117 () Bool)

(assert (=> b!7128117 (= e!4283589 e!4283591)))

(declare-fun res!2908372 () Bool)

(assert (=> b!7128117 (=> (not res!2908372) (not e!4283591))))

(assert (=> b!7128117 (= res!2908372 call!650875)))

(declare-fun bm!650871 () Bool)

(declare-fun c!1329776 () Bool)

(assert (=> bm!650871 (= call!650875 (validRegex!9268 (ite c!1329776 (regTwo!36575 (h!75438 (exprs!7525 setElem!51786))) (regOne!36574 (h!75438 (exprs!7525 setElem!51786))))))))

(declare-fun b!7128118 () Bool)

(declare-fun e!4283594 () Bool)

(assert (=> b!7128118 (= e!4283593 e!4283594)))

(declare-fun res!2908376 () Bool)

(declare-fun nullable!7628 (Regex!18031) Bool)

(assert (=> b!7128118 (= res!2908376 (not (nullable!7628 (reg!18360 (h!75438 (exprs!7525 setElem!51786))))))))

(assert (=> b!7128118 (=> (not res!2908376) (not e!4283594))))

(declare-fun b!7128119 () Bool)

(assert (=> b!7128119 (= e!4283593 e!4283592)))

(assert (=> b!7128119 (= c!1329776 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51786))))))

(declare-fun b!7128120 () Bool)

(assert (=> b!7128120 (= e!4283594 call!650877)))

(declare-fun bm!650872 () Bool)

(assert (=> bm!650872 (= call!650877 (validRegex!9268 (ite c!1329775 (reg!18360 (h!75438 (exprs!7525 setElem!51786))) (ite c!1329776 (regOne!36575 (h!75438 (exprs!7525 setElem!51786))) (regTwo!36574 (h!75438 (exprs!7525 setElem!51786)))))))))

(assert (= (and d!2224602 (not res!2908375)) b!7128116))

(assert (= (and b!7128116 c!1329775) b!7128118))

(assert (= (and b!7128116 (not c!1329775)) b!7128119))

(assert (= (and b!7128118 res!2908376) b!7128120))

(assert (= (and b!7128119 c!1329776) b!7128113))

(assert (= (and b!7128119 (not c!1329776)) b!7128114))

(assert (= (and b!7128113 res!2908373) b!7128112))

(assert (= (and b!7128114 (not res!2908374)) b!7128117))

(assert (= (and b!7128117 res!2908372) b!7128115))

(assert (= (or b!7128112 b!7128117) bm!650871))

(assert (= (or b!7128113 b!7128115) bm!650870))

(assert (= (or b!7128120 bm!650870) bm!650872))

(declare-fun m!7845316 () Bool)

(assert (=> bm!650871 m!7845316))

(declare-fun m!7845318 () Bool)

(assert (=> b!7128118 m!7845318))

(declare-fun m!7845320 () Bool)

(assert (=> bm!650872 m!7845320))

(assert (=> bs!1886634 d!2224602))

(assert (=> b!7128018 d!2224548))

(assert (=> b!7128018 d!2224580))

(declare-fun d!2224604 () Bool)

(declare-fun c!1329777 () Bool)

(assert (=> d!2224604 (= c!1329777 (isEmpty!40022 (tail!13938 (tail!13938 s2Rec!140))))))

(declare-fun e!4283596 () Bool)

(assert (=> d!2224604 (= (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (head!14466 (tail!13938 s2Rec!140))) (tail!13938 (tail!13938 s2Rec!140))) e!4283596)))

(declare-fun b!7128121 () Bool)

(assert (=> b!7128121 (= e!4283596 (nullableZipper!2758 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (head!14466 (tail!13938 s2Rec!140)))))))

(declare-fun b!7128122 () Bool)

(assert (=> b!7128122 (= e!4283596 (matchZipper!3287 (derivationStepZipper!3170 (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (head!14466 (tail!13938 s2Rec!140))) (head!14466 (tail!13938 (tail!13938 s2Rec!140)))) (tail!13938 (tail!13938 (tail!13938 s2Rec!140)))))))

(assert (= (and d!2224604 c!1329777) b!7128121))

(assert (= (and d!2224604 (not c!1329777)) b!7128122))

(assert (=> d!2224604 m!7845174))

(declare-fun m!7845322 () Bool)

(assert (=> d!2224604 m!7845322))

(assert (=> b!7128121 m!7845172))

(declare-fun m!7845324 () Bool)

(assert (=> b!7128121 m!7845324))

(assert (=> b!7128122 m!7845174))

(declare-fun m!7845326 () Bool)

(assert (=> b!7128122 m!7845326))

(assert (=> b!7128122 m!7845172))

(assert (=> b!7128122 m!7845326))

(declare-fun m!7845328 () Bool)

(assert (=> b!7128122 m!7845328))

(assert (=> b!7128122 m!7845174))

(declare-fun m!7845330 () Bool)

(assert (=> b!7128122 m!7845330))

(assert (=> b!7128122 m!7845328))

(assert (=> b!7128122 m!7845330))

(declare-fun m!7845332 () Bool)

(assert (=> b!7128122 m!7845332))

(assert (=> b!7128016 d!2224604))

(declare-fun bs!1886670 () Bool)

(declare-fun d!2224606 () Bool)

(assert (= bs!1886670 (and d!2224606 d!2224570)))

(declare-fun lambda!433130 () Int)

(assert (=> bs!1886670 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 (tail!13938 s2!1620))) (= lambda!433130 lambda!433128))))

(declare-fun bs!1886671 () Bool)

(assert (= bs!1886671 (and d!2224606 d!2224546)))

(assert (=> bs!1886671 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 (tail!13938 s1Rec!140))) (= lambda!433130 lambda!433126))))

(declare-fun bs!1886672 () Bool)

(assert (= bs!1886672 (and d!2224606 d!2224514)))

(assert (=> bs!1886672 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 s2Rec!140)) (= lambda!433130 lambda!433122))))

(declare-fun bs!1886673 () Bool)

(assert (= bs!1886673 (and d!2224606 d!2224480)))

(assert (=> bs!1886673 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 s2!1620)) (= lambda!433130 lambda!433119))))

(declare-fun bs!1886674 () Bool)

(assert (= bs!1886674 (and d!2224606 d!2224488)))

(assert (=> bs!1886674 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 s1!1688)) (= lambda!433130 lambda!433120))))

(declare-fun bs!1886675 () Bool)

(assert (= bs!1886675 (and d!2224606 d!2224448)))

(assert (=> bs!1886675 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 s1Rec!140)) (= lambda!433130 lambda!433117))))

(declare-fun bs!1886676 () Bool)

(assert (= bs!1886676 (and d!2224606 d!2224578)))

(assert (=> bs!1886676 (= (= (head!14466 (tail!13938 s2Rec!140)) (head!14466 (tail!13938 s1!1688))) (= lambda!433130 lambda!433129))))

(assert (=> d!2224606 true))

(assert (=> d!2224606 (= (derivationStepZipper!3170 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) (head!14466 (tail!13938 s2Rec!140))) (flatMap!2635 (derivationStepZipper!3170 z2!471 (head!14466 s2Rec!140)) lambda!433130))))

(declare-fun bs!1886677 () Bool)

(assert (= bs!1886677 d!2224606))

(assert (=> bs!1886677 m!7844810))

(declare-fun m!7845334 () Bool)

(assert (=> bs!1886677 m!7845334))

(assert (=> b!7128016 d!2224606))

(declare-fun d!2224608 () Bool)

(assert (=> d!2224608 (= (head!14466 (tail!13938 s2Rec!140)) (h!75439 (tail!13938 s2Rec!140)))))

(assert (=> b!7128016 d!2224608))

(declare-fun d!2224610 () Bool)

(assert (=> d!2224610 (= (tail!13938 (tail!13938 s2Rec!140)) (t!383092 (tail!13938 s2Rec!140)))))

(assert (=> b!7128016 d!2224610))

(declare-fun d!2224612 () Bool)

(declare-fun c!1329778 () Bool)

(assert (=> d!2224612 (= c!1329778 ((_ is Nil!68991) (t!383092 s2!1620)))))

(declare-fun e!4283597 () (InoxSet C!36332))

(assert (=> d!2224612 (= (content!14117 (t!383092 s2!1620)) e!4283597)))

(declare-fun b!7128123 () Bool)

(assert (=> b!7128123 (= e!4283597 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128124 () Bool)

(assert (=> b!7128124 (= e!4283597 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 s2!1620)) true) (content!14117 (t!383092 (t!383092 s2!1620)))))))

(assert (= (and d!2224612 c!1329778) b!7128123))

(assert (= (and d!2224612 (not c!1329778)) b!7128124))

(declare-fun m!7845336 () Bool)

(assert (=> b!7128124 m!7845336))

(declare-fun m!7845338 () Bool)

(assert (=> b!7128124 m!7845338))

(assert (=> b!7128012 d!2224612))

(declare-fun d!2224614 () Bool)

(assert (=> d!2224614 (= (isEmpty!40022 (tail!13938 s2Rec!140)) ((_ is Nil!68991) (tail!13938 s2Rec!140)))))

(assert (=> d!2224512 d!2224614))

(declare-fun bs!1886678 () Bool)

(declare-fun d!2224616 () Bool)

(assert (= bs!1886678 (and d!2224616 d!2224418)))

(declare-fun lambda!433131 () Int)

(assert (=> bs!1886678 (= lambda!433131 lambda!433108)))

(declare-fun bs!1886679 () Bool)

(assert (= bs!1886679 (and d!2224616 d!2224498)))

(assert (=> bs!1886679 (= lambda!433131 lambda!433121)))

(declare-fun bs!1886680 () Bool)

(assert (= bs!1886680 (and d!2224616 d!2224540)))

(assert (=> bs!1886680 (= lambda!433131 lambda!433124)))

(declare-fun bs!1886681 () Bool)

(assert (= bs!1886681 (and d!2224616 d!2224542)))

(assert (=> bs!1886681 (= lambda!433131 lambda!433125)))

(assert (=> d!2224616 (= (nullableZipper!2758 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140))) (exists!3828 (derivationStepZipper!3170 z1!552 (head!14466 s1Rec!140)) lambda!433131))))

(declare-fun bs!1886682 () Bool)

(assert (= bs!1886682 d!2224616))

(assert (=> bs!1886682 m!7844834))

(declare-fun m!7845340 () Bool)

(assert (=> bs!1886682 m!7845340))

(assert (=> b!7127956 d!2224616))

(declare-fun d!2224618 () Bool)

(declare-fun lt!2563682 () Int)

(assert (=> d!2224618 (>= lt!2563682 0)))

(declare-fun e!4283598 () Int)

(assert (=> d!2224618 (= lt!2563682 e!4283598)))

(declare-fun c!1329779 () Bool)

(assert (=> d!2224618 (= c!1329779 ((_ is Nil!68991) (t!383092 lt!2563635)))))

(assert (=> d!2224618 (= (size!41466 (t!383092 lt!2563635)) lt!2563682)))

(declare-fun b!7128125 () Bool)

(assert (=> b!7128125 (= e!4283598 0)))

(declare-fun b!7128126 () Bool)

(assert (=> b!7128126 (= e!4283598 (+ 1 (size!41466 (t!383092 (t!383092 lt!2563635)))))))

(assert (= (and d!2224618 c!1329779) b!7128125))

(assert (= (and d!2224618 (not c!1329779)) b!7128126))

(declare-fun m!7845342 () Bool)

(assert (=> b!7128126 m!7845342))

(assert (=> b!7128022 d!2224618))

(declare-fun d!2224620 () Bool)

(assert (=> d!2224620 (= (flatMap!2635 z1!552 lambda!433120) (choose!55092 z1!552 lambda!433120))))

(declare-fun bs!1886683 () Bool)

(assert (= bs!1886683 d!2224620))

(declare-fun m!7845344 () Bool)

(assert (=> bs!1886683 m!7845344))

(assert (=> d!2224488 d!2224620))

(declare-fun d!2224622 () Bool)

(assert (=> d!2224622 (= (isEmpty!40022 (tail!13938 s1!1688)) ((_ is Nil!68991) (tail!13938 s1!1688)))))

(assert (=> d!2224486 d!2224622))

(declare-fun d!2224624 () Bool)

(declare-fun lt!2563683 () Int)

(assert (=> d!2224624 (>= lt!2563683 0)))

(declare-fun e!4283599 () Int)

(assert (=> d!2224624 (= lt!2563683 e!4283599)))

(declare-fun c!1329780 () Bool)

(assert (=> d!2224624 (= c!1329780 ((_ is Nil!68991) (t!383092 s2!1620)))))

(assert (=> d!2224624 (= (size!41466 (t!383092 s2!1620)) lt!2563683)))

(declare-fun b!7128127 () Bool)

(assert (=> b!7128127 (= e!4283599 0)))

(declare-fun b!7128128 () Bool)

(assert (=> b!7128128 (= e!4283599 (+ 1 (size!41466 (t!383092 (t!383092 s2!1620)))))))

(assert (= (and d!2224624 c!1329780) b!7128127))

(assert (= (and d!2224624 (not c!1329780)) b!7128128))

(declare-fun m!7845346 () Bool)

(assert (=> b!7128128 m!7845346))

(assert (=> b!7127923 d!2224624))

(declare-fun d!2224626 () Bool)

(declare-fun lt!2563684 () Int)

(assert (=> d!2224626 (>= lt!2563684 0)))

(declare-fun e!4283600 () Int)

(assert (=> d!2224626 (= lt!2563684 e!4283600)))

(declare-fun c!1329781 () Bool)

(assert (=> d!2224626 (= c!1329781 ((_ is Nil!68991) (t!383092 (t!383092 s1!1688))))))

(assert (=> d!2224626 (= (size!41466 (t!383092 (t!383092 s1!1688))) lt!2563684)))

(declare-fun b!7128129 () Bool)

(assert (=> b!7128129 (= e!4283600 0)))

(declare-fun b!7128130 () Bool)

(assert (=> b!7128130 (= e!4283600 (+ 1 (size!41466 (t!383092 (t!383092 (t!383092 s1!1688))))))))

(assert (= (and d!2224626 c!1329781) b!7128129))

(assert (= (and d!2224626 (not c!1329781)) b!7128130))

(declare-fun m!7845348 () Bool)

(assert (=> b!7128130 m!7845348))

(assert (=> b!7127972 d!2224626))

(declare-fun bs!1886684 () Bool)

(declare-fun d!2224628 () Bool)

(assert (= bs!1886684 (and d!2224628 d!2224334)))

(declare-fun lambda!433132 () Int)

(assert (=> bs!1886684 (= lambda!433132 lambda!433098)))

(declare-fun bs!1886685 () Bool)

(assert (= bs!1886685 (and d!2224628 d!2224436)))

(assert (=> bs!1886685 (= lambda!433132 lambda!433109)))

(declare-fun bs!1886686 () Bool)

(assert (= bs!1886686 (and d!2224628 d!2224520)))

(assert (=> bs!1886686 (= lambda!433132 lambda!433123)))

(declare-fun bs!1886687 () Bool)

(assert (= bs!1886687 (and d!2224628 d!2224352)))

(assert (=> bs!1886687 (= lambda!433132 lambda!433099)))

(declare-fun bs!1886688 () Bool)

(assert (= bs!1886688 (and d!2224628 d!2224558)))

(assert (=> bs!1886688 (= lambda!433132 lambda!433127)))

(assert (=> d!2224628 (= (inv!88105 setElem!51798) (forall!16917 (exprs!7525 setElem!51798) lambda!433132))))

(declare-fun bs!1886689 () Bool)

(assert (= bs!1886689 d!2224628))

(declare-fun m!7845350 () Bool)

(assert (=> bs!1886689 m!7845350))

(assert (=> setNonEmpty!51798 d!2224628))

(declare-fun d!2224630 () Bool)

(declare-fun res!2908377 () Bool)

(declare-fun e!4283601 () Bool)

(assert (=> d!2224630 (=> res!2908377 e!4283601)))

(assert (=> d!2224630 (= res!2908377 ((_ is Nil!68990) (t!383091 (exprs!7525 setElem!51787))))))

(assert (=> d!2224630 (= (forall!16917 (t!383091 (exprs!7525 setElem!51787)) lambda!433099) e!4283601)))

(declare-fun b!7128131 () Bool)

(declare-fun e!4283602 () Bool)

(assert (=> b!7128131 (= e!4283601 e!4283602)))

(declare-fun res!2908378 () Bool)

(assert (=> b!7128131 (=> (not res!2908378) (not e!4283602))))

(assert (=> b!7128131 (= res!2908378 (dynLambda!28112 lambda!433099 (h!75438 (t!383091 (exprs!7525 setElem!51787)))))))

(declare-fun b!7128132 () Bool)

(assert (=> b!7128132 (= e!4283602 (forall!16917 (t!383091 (t!383091 (exprs!7525 setElem!51787))) lambda!433099))))

(assert (= (and d!2224630 (not res!2908377)) b!7128131))

(assert (= (and b!7128131 res!2908378) b!7128132))

(declare-fun b_lambda!272033 () Bool)

(assert (=> (not b_lambda!272033) (not b!7128131)))

(declare-fun m!7845352 () Bool)

(assert (=> b!7128131 m!7845352))

(declare-fun m!7845354 () Bool)

(assert (=> b!7128132 m!7845354))

(assert (=> b!7128026 d!2224630))

(declare-fun d!2224632 () Bool)

(declare-fun lt!2563685 () Int)

(assert (=> d!2224632 (>= lt!2563685 0)))

(declare-fun e!4283603 () Int)

(assert (=> d!2224632 (= lt!2563685 e!4283603)))

(declare-fun c!1329782 () Bool)

(assert (=> d!2224632 (= c!1329782 ((_ is Nil!68991) lt!2563663))))

(assert (=> d!2224632 (= (size!41466 lt!2563663) lt!2563685)))

(declare-fun b!7128133 () Bool)

(assert (=> b!7128133 (= e!4283603 0)))

(declare-fun b!7128134 () Bool)

(assert (=> b!7128134 (= e!4283603 (+ 1 (size!41466 (t!383092 lt!2563663))))))

(assert (= (and d!2224632 c!1329782) b!7128133))

(assert (= (and d!2224632 (not c!1329782)) b!7128134))

(declare-fun m!7845356 () Bool)

(assert (=> b!7128134 m!7845356))

(assert (=> b!7127928 d!2224632))

(assert (=> b!7127928 d!2224476))

(assert (=> b!7127928 d!2224526))

(assert (=> b!7128010 d!2224538))

(declare-fun d!2224634 () Bool)

(declare-fun res!2908379 () Bool)

(declare-fun e!4283604 () Bool)

(assert (=> d!2224634 (=> res!2908379 e!4283604)))

(assert (=> d!2224634 (= res!2908379 ((_ is Nil!68990) (exprs!7525 setElem!51794)))))

(assert (=> d!2224634 (= (forall!16917 (exprs!7525 setElem!51794) lambda!433109) e!4283604)))

(declare-fun b!7128135 () Bool)

(declare-fun e!4283605 () Bool)

(assert (=> b!7128135 (= e!4283604 e!4283605)))

(declare-fun res!2908380 () Bool)

(assert (=> b!7128135 (=> (not res!2908380) (not e!4283605))))

(assert (=> b!7128135 (= res!2908380 (dynLambda!28112 lambda!433109 (h!75438 (exprs!7525 setElem!51794))))))

(declare-fun b!7128136 () Bool)

(assert (=> b!7128136 (= e!4283605 (forall!16917 (t!383091 (exprs!7525 setElem!51794)) lambda!433109))))

(assert (= (and d!2224634 (not res!2908379)) b!7128135))

(assert (= (and b!7128135 res!2908380) b!7128136))

(declare-fun b_lambda!272035 () Bool)

(assert (=> (not b_lambda!272035) (not b!7128135)))

(declare-fun m!7845358 () Bool)

(assert (=> b!7128135 m!7845358))

(declare-fun m!7845360 () Bool)

(assert (=> b!7128136 m!7845360))

(assert (=> d!2224436 d!2224634))

(declare-fun d!2224636 () Bool)

(declare-fun lt!2563686 () Bool)

(assert (=> d!2224636 (= lt!2563686 (exists!3829 (toList!11135 z1!552) lambda!433108))))

(assert (=> d!2224636 (= lt!2563686 (choose!55093 z1!552 lambda!433108))))

(assert (=> d!2224636 (= (exists!3828 z1!552 lambda!433108) lt!2563686)))

(declare-fun bs!1886690 () Bool)

(assert (= bs!1886690 d!2224636))

(declare-fun m!7845362 () Bool)

(assert (=> bs!1886690 m!7845362))

(assert (=> bs!1886690 m!7845362))

(declare-fun m!7845364 () Bool)

(assert (=> bs!1886690 m!7845364))

(declare-fun m!7845366 () Bool)

(assert (=> bs!1886690 m!7845366))

(assert (=> d!2224418 d!2224636))

(declare-fun bs!1886691 () Bool)

(declare-fun d!2224638 () Bool)

(assert (= bs!1886691 (and d!2224638 d!2224498)))

(declare-fun lambda!433133 () Int)

(assert (=> bs!1886691 (= lambda!433133 lambda!433121)))

(declare-fun bs!1886692 () Bool)

(assert (= bs!1886692 (and d!2224638 d!2224540)))

(assert (=> bs!1886692 (= lambda!433133 lambda!433124)))

(declare-fun bs!1886693 () Bool)

(assert (= bs!1886693 (and d!2224638 d!2224616)))

(assert (=> bs!1886693 (= lambda!433133 lambda!433131)))

(declare-fun bs!1886694 () Bool)

(assert (= bs!1886694 (and d!2224638 d!2224418)))

(assert (=> bs!1886694 (= lambda!433133 lambda!433108)))

(declare-fun bs!1886695 () Bool)

(assert (= bs!1886695 (and d!2224638 d!2224542)))

(assert (=> bs!1886695 (= lambda!433133 lambda!433125)))

(assert (=> d!2224638 (= (nullableZipper!2758 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620))) (exists!3828 (derivationStepZipper!3170 z2!471 (head!14466 s2!1620)) lambda!433133))))

(declare-fun bs!1886696 () Bool)

(assert (= bs!1886696 d!2224638))

(assert (=> bs!1886696 m!7844908))

(declare-fun m!7845368 () Bool)

(assert (=> bs!1886696 m!7845368))

(assert (=> b!7127981 d!2224638))

(declare-fun d!2224640 () Bool)

(declare-fun lt!2563687 () Int)

(assert (=> d!2224640 (>= lt!2563687 0)))

(declare-fun e!4283606 () Int)

(assert (=> d!2224640 (= lt!2563687 e!4283606)))

(declare-fun c!1329783 () Bool)

(assert (=> d!2224640 (= c!1329783 ((_ is Nil!68991) (t!383092 (t!383092 s!7390))))))

(assert (=> d!2224640 (= (size!41466 (t!383092 (t!383092 s!7390))) lt!2563687)))

(declare-fun b!7128137 () Bool)

(assert (=> b!7128137 (= e!4283606 0)))

(declare-fun b!7128138 () Bool)

(assert (=> b!7128138 (= e!4283606 (+ 1 (size!41466 (t!383092 (t!383092 (t!383092 s!7390))))))))

(assert (= (and d!2224640 c!1329783) b!7128137))

(assert (= (and d!2224640 (not c!1329783)) b!7128138))

(declare-fun m!7845370 () Bool)

(assert (=> b!7128138 m!7845370))

(assert (=> b!7128014 d!2224640))

(declare-fun d!2224642 () Bool)

(declare-fun lt!2563688 () Int)

(assert (=> d!2224642 (>= lt!2563688 0)))

(declare-fun e!4283607 () Int)

(assert (=> d!2224642 (= lt!2563688 e!4283607)))

(declare-fun c!1329784 () Bool)

(assert (=> d!2224642 (= c!1329784 ((_ is Nil!68991) lt!2563666))))

(assert (=> d!2224642 (= (size!41466 lt!2563666) lt!2563688)))

(declare-fun b!7128139 () Bool)

(assert (=> b!7128139 (= e!4283607 0)))

(declare-fun b!7128140 () Bool)

(assert (=> b!7128140 (= e!4283607 (+ 1 (size!41466 (t!383092 lt!2563666))))))

(assert (= (and d!2224642 c!1329784) b!7128139))

(assert (= (and d!2224642 (not c!1329784)) b!7128140))

(declare-fun m!7845372 () Bool)

(assert (=> b!7128140 m!7845372))

(assert (=> b!7127968 d!2224642))

(assert (=> b!7127968 d!2224472))

(assert (=> b!7127968 d!2224408))

(assert (=> b!7127917 d!2224598))

(declare-fun bm!650873 () Bool)

(declare-fun call!650879 () Bool)

(declare-fun call!650880 () Bool)

(assert (=> bm!650873 (= call!650879 call!650880)))

(declare-fun b!7128141 () Bool)

(declare-fun e!4283609 () Bool)

(declare-fun call!650878 () Bool)

(assert (=> b!7128141 (= e!4283609 call!650878)))

(declare-fun b!7128142 () Bool)

(declare-fun res!2908382 () Bool)

(assert (=> b!7128142 (=> (not res!2908382) (not e!4283609))))

(assert (=> b!7128142 (= res!2908382 call!650879)))

(declare-fun e!4283611 () Bool)

(assert (=> b!7128142 (= e!4283611 e!4283609)))

(declare-fun d!2224644 () Bool)

(declare-fun res!2908384 () Bool)

(declare-fun e!4283614 () Bool)

(assert (=> d!2224644 (=> res!2908384 e!4283614)))

(assert (=> d!2224644 (= res!2908384 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51787))))))

(assert (=> d!2224644 (= (validRegex!9268 (h!75438 (exprs!7525 setElem!51787))) e!4283614)))

(declare-fun b!7128143 () Bool)

(declare-fun res!2908383 () Bool)

(declare-fun e!4283608 () Bool)

(assert (=> b!7128143 (=> res!2908383 e!4283608)))

(assert (=> b!7128143 (= res!2908383 (not ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51787)))))))

(assert (=> b!7128143 (= e!4283611 e!4283608)))

(declare-fun b!7128144 () Bool)

(declare-fun e!4283610 () Bool)

(assert (=> b!7128144 (= e!4283610 call!650879)))

(declare-fun b!7128145 () Bool)

(declare-fun e!4283612 () Bool)

(assert (=> b!7128145 (= e!4283614 e!4283612)))

(declare-fun c!1329785 () Bool)

(assert (=> b!7128145 (= c!1329785 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51787))))))

(declare-fun b!7128146 () Bool)

(assert (=> b!7128146 (= e!4283608 e!4283610)))

(declare-fun res!2908381 () Bool)

(assert (=> b!7128146 (=> (not res!2908381) (not e!4283610))))

(assert (=> b!7128146 (= res!2908381 call!650878)))

(declare-fun bm!650874 () Bool)

(declare-fun c!1329786 () Bool)

(assert (=> bm!650874 (= call!650878 (validRegex!9268 (ite c!1329786 (regTwo!36575 (h!75438 (exprs!7525 setElem!51787))) (regOne!36574 (h!75438 (exprs!7525 setElem!51787))))))))

(declare-fun b!7128147 () Bool)

(declare-fun e!4283613 () Bool)

(assert (=> b!7128147 (= e!4283612 e!4283613)))

(declare-fun res!2908385 () Bool)

(assert (=> b!7128147 (= res!2908385 (not (nullable!7628 (reg!18360 (h!75438 (exprs!7525 setElem!51787))))))))

(assert (=> b!7128147 (=> (not res!2908385) (not e!4283613))))

(declare-fun b!7128148 () Bool)

(assert (=> b!7128148 (= e!4283612 e!4283611)))

(assert (=> b!7128148 (= c!1329786 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51787))))))

(declare-fun b!7128149 () Bool)

(assert (=> b!7128149 (= e!4283613 call!650880)))

(declare-fun bm!650875 () Bool)

(assert (=> bm!650875 (= call!650880 (validRegex!9268 (ite c!1329785 (reg!18360 (h!75438 (exprs!7525 setElem!51787))) (ite c!1329786 (regOne!36575 (h!75438 (exprs!7525 setElem!51787))) (regTwo!36574 (h!75438 (exprs!7525 setElem!51787)))))))))

(assert (= (and d!2224644 (not res!2908384)) b!7128145))

(assert (= (and b!7128145 c!1329785) b!7128147))

(assert (= (and b!7128145 (not c!1329785)) b!7128148))

(assert (= (and b!7128147 res!2908385) b!7128149))

(assert (= (and b!7128148 c!1329786) b!7128142))

(assert (= (and b!7128148 (not c!1329786)) b!7128143))

(assert (= (and b!7128142 res!2908382) b!7128141))

(assert (= (and b!7128143 (not res!2908383)) b!7128146))

(assert (= (and b!7128146 res!2908381) b!7128144))

(assert (= (or b!7128141 b!7128146) bm!650874))

(assert (= (or b!7128142 b!7128144) bm!650873))

(assert (= (or b!7128149 bm!650873) bm!650875))

(declare-fun m!7845374 () Bool)

(assert (=> bm!650874 m!7845374))

(declare-fun m!7845376 () Bool)

(assert (=> b!7128147 m!7845376))

(declare-fun m!7845378 () Bool)

(assert (=> bm!650875 m!7845378))

(assert (=> bs!1886635 d!2224644))

(declare-fun d!2224646 () Bool)

(declare-fun c!1329787 () Bool)

(assert (=> d!2224646 (= c!1329787 ((_ is Nil!68991) (t!383092 lt!2563640)))))

(declare-fun e!4283615 () (InoxSet C!36332))

(assert (=> d!2224646 (= (content!14117 (t!383092 lt!2563640)) e!4283615)))

(declare-fun b!7128150 () Bool)

(assert (=> b!7128150 (= e!4283615 ((as const (Array C!36332 Bool)) false))))

(declare-fun b!7128151 () Bool)

(assert (=> b!7128151 (= e!4283615 ((_ map or) (store ((as const (Array C!36332 Bool)) false) (h!75439 (t!383092 lt!2563640)) true) (content!14117 (t!383092 (t!383092 lt!2563640)))))))

(assert (= (and d!2224646 c!1329787) b!7128150))

(assert (= (and d!2224646 (not c!1329787)) b!7128151))

(declare-fun m!7845380 () Bool)

(assert (=> b!7128151 m!7845380))

(declare-fun m!7845382 () Bool)

(assert (=> b!7128151 m!7845382))

(assert (=> b!7128008 d!2224646))

(declare-fun d!2224648 () Bool)

(assert (=> d!2224648 (= (isEmpty!40022 (tail!13938 s2!1620)) ((_ is Nil!68991) (tail!13938 s2!1620)))))

(assert (=> d!2224478 d!2224648))

(declare-fun b!7128152 () Bool)

(declare-fun e!4283618 () Bool)

(declare-fun e!4283616 () Bool)

(assert (=> b!7128152 (= e!4283618 e!4283616)))

(declare-fun res!2908389 () Bool)

(assert (=> b!7128152 (=> (not res!2908389) (not e!4283616))))

(assert (=> b!7128152 (= res!2908389 (not ((_ is Nil!68991) (tail!13938 (tail!13938 s1!1688)))))))

(declare-fun b!7128154 () Bool)

(assert (=> b!7128154 (= e!4283616 (isPrefix!5900 (tail!13938 (tail!13938 (tail!13938 s1Rec!140))) (tail!13938 (tail!13938 (tail!13938 s1!1688)))))))

(declare-fun d!2224650 () Bool)

(declare-fun e!4283617 () Bool)

(assert (=> d!2224650 e!4283617))

(declare-fun res!2908388 () Bool)

(assert (=> d!2224650 (=> res!2908388 e!4283617)))

(declare-fun lt!2563689 () Bool)

(assert (=> d!2224650 (= res!2908388 (not lt!2563689))))

(assert (=> d!2224650 (= lt!2563689 e!4283618)))

(declare-fun res!2908387 () Bool)

(assert (=> d!2224650 (=> res!2908387 e!4283618)))

(assert (=> d!2224650 (= res!2908387 ((_ is Nil!68991) (tail!13938 (tail!13938 s1Rec!140))))))

(assert (=> d!2224650 (= (isPrefix!5900 (tail!13938 (tail!13938 s1Rec!140)) (tail!13938 (tail!13938 s1!1688))) lt!2563689)))

(declare-fun b!7128153 () Bool)

(declare-fun res!2908386 () Bool)

(assert (=> b!7128153 (=> (not res!2908386) (not e!4283616))))

(assert (=> b!7128153 (= res!2908386 (= (head!14466 (tail!13938 (tail!13938 s1Rec!140))) (head!14466 (tail!13938 (tail!13938 s1!1688)))))))

(declare-fun b!7128155 () Bool)

(assert (=> b!7128155 (= e!4283617 (>= (size!41466 (tail!13938 (tail!13938 s1!1688))) (size!41466 (tail!13938 (tail!13938 s1Rec!140)))))))

(assert (= (and d!2224650 (not res!2908387)) b!7128152))

(assert (= (and b!7128152 res!2908389) b!7128153))

(assert (= (and b!7128153 res!2908386) b!7128154))

(assert (= (and d!2224650 (not res!2908388)) b!7128155))

(assert (=> b!7128154 m!7845070))

(assert (=> b!7128154 m!7845226))

(assert (=> b!7128154 m!7845142))

(assert (=> b!7128154 m!7845284))

(assert (=> b!7128154 m!7845226))

(assert (=> b!7128154 m!7845284))

(declare-fun m!7845384 () Bool)

(assert (=> b!7128154 m!7845384))

(assert (=> b!7128153 m!7845070))

(assert (=> b!7128153 m!7845222))

(assert (=> b!7128153 m!7845142))

(assert (=> b!7128153 m!7845280))

(assert (=> b!7128155 m!7845142))

(declare-fun m!7845386 () Bool)

(assert (=> b!7128155 m!7845386))

(assert (=> b!7128155 m!7845070))

(declare-fun m!7845388 () Bool)

(assert (=> b!7128155 m!7845388))

(assert (=> b!7128019 d!2224650))

(assert (=> b!7128019 d!2224550))

(assert (=> b!7128019 d!2224582))

(declare-fun d!2224652 () Bool)

(declare-fun lt!2563690 () Int)

(assert (=> d!2224652 (>= lt!2563690 0)))

(declare-fun e!4283619 () Int)

(assert (=> d!2224652 (= lt!2563690 e!4283619)))

(declare-fun c!1329788 () Bool)

(assert (=> d!2224652 (= c!1329788 ((_ is Nil!68991) (t!383092 s2Rec!140)))))

(assert (=> d!2224652 (= (size!41466 (t!383092 s2Rec!140)) lt!2563690)))

(declare-fun b!7128156 () Bool)

(assert (=> b!7128156 (= e!4283619 0)))

(declare-fun b!7128157 () Bool)

(assert (=> b!7128157 (= e!4283619 (+ 1 (size!41466 (t!383092 (t!383092 s2Rec!140)))))))

(assert (= (and d!2224652 c!1329788) b!7128156))

(assert (= (and d!2224652 (not c!1329788)) b!7128157))

(declare-fun m!7845390 () Bool)

(assert (=> b!7128157 m!7845390))

(assert (=> b!7128024 d!2224652))

(declare-fun b!7128158 () Bool)

(declare-fun e!4283620 () Bool)

(declare-fun tp!1963860 () Bool)

(assert (=> b!7128158 (= e!4283620 (and tp_is_empty!45663 tp!1963860))))

(assert (=> b!7128034 (= tp!1963833 e!4283620)))

(assert (= (and b!7128034 ((_ is Cons!68991) (t!383092 (t!383092 (t!383092 s2Rec!140))))) b!7128158))

(declare-fun b!7128159 () Bool)

(declare-fun e!4283621 () Bool)

(assert (=> b!7128159 (= e!4283621 tp_is_empty!45663)))

(assert (=> b!7128054 (= tp!1963856 e!4283621)))

(declare-fun b!7128160 () Bool)

(declare-fun tp!1963863 () Bool)

(declare-fun tp!1963861 () Bool)

(assert (=> b!7128160 (= e!4283621 (and tp!1963863 tp!1963861))))

(declare-fun b!7128161 () Bool)

(declare-fun tp!1963865 () Bool)

(assert (=> b!7128161 (= e!4283621 tp!1963865)))

(declare-fun b!7128162 () Bool)

(declare-fun tp!1963864 () Bool)

(declare-fun tp!1963862 () Bool)

(assert (=> b!7128162 (= e!4283621 (and tp!1963864 tp!1963862))))

(assert (= (and b!7128054 ((_ is ElementMatch!18031) (h!75438 (t!383091 (exprs!7525 setElem!51786))))) b!7128159))

(assert (= (and b!7128054 ((_ is Concat!26876) (h!75438 (t!383091 (exprs!7525 setElem!51786))))) b!7128160))

(assert (= (and b!7128054 ((_ is Star!18031) (h!75438 (t!383091 (exprs!7525 setElem!51786))))) b!7128161))

(assert (= (and b!7128054 ((_ is Union!18031) (h!75438 (t!383091 (exprs!7525 setElem!51786))))) b!7128162))

(declare-fun b!7128163 () Bool)

(declare-fun e!4283622 () Bool)

(declare-fun tp!1963866 () Bool)

(declare-fun tp!1963867 () Bool)

(assert (=> b!7128163 (= e!4283622 (and tp!1963866 tp!1963867))))

(assert (=> b!7128054 (= tp!1963857 e!4283622)))

(assert (= (and b!7128054 ((_ is Cons!68990) (t!383091 (t!383091 (exprs!7525 setElem!51786))))) b!7128163))

(declare-fun b!7128164 () Bool)

(declare-fun e!4283623 () Bool)

(assert (=> b!7128164 (= e!4283623 tp_is_empty!45663)))

(assert (=> b!7128046 (= tp!1963846 e!4283623)))

(declare-fun b!7128165 () Bool)

(declare-fun tp!1963870 () Bool)

(declare-fun tp!1963868 () Bool)

(assert (=> b!7128165 (= e!4283623 (and tp!1963870 tp!1963868))))

(declare-fun b!7128166 () Bool)

(declare-fun tp!1963872 () Bool)

(assert (=> b!7128166 (= e!4283623 tp!1963872)))

(declare-fun b!7128167 () Bool)

(declare-fun tp!1963871 () Bool)

(declare-fun tp!1963869 () Bool)

(assert (=> b!7128167 (= e!4283623 (and tp!1963871 tp!1963869))))

(assert (= (and b!7128046 ((_ is ElementMatch!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128164))

(assert (= (and b!7128046 ((_ is Concat!26876) (regOne!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128165))

(assert (= (and b!7128046 ((_ is Star!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128166))

(assert (= (and b!7128046 ((_ is Union!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128167))

(declare-fun b!7128168 () Bool)

(declare-fun e!4283624 () Bool)

(assert (=> b!7128168 (= e!4283624 tp_is_empty!45663)))

(assert (=> b!7128046 (= tp!1963844 e!4283624)))

(declare-fun b!7128169 () Bool)

(declare-fun tp!1963875 () Bool)

(declare-fun tp!1963873 () Bool)

(assert (=> b!7128169 (= e!4283624 (and tp!1963875 tp!1963873))))

(declare-fun b!7128170 () Bool)

(declare-fun tp!1963877 () Bool)

(assert (=> b!7128170 (= e!4283624 tp!1963877)))

(declare-fun b!7128171 () Bool)

(declare-fun tp!1963876 () Bool)

(declare-fun tp!1963874 () Bool)

(assert (=> b!7128171 (= e!4283624 (and tp!1963876 tp!1963874))))

(assert (= (and b!7128046 ((_ is ElementMatch!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128168))

(assert (= (and b!7128046 ((_ is Concat!26876) (regTwo!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128169))

(assert (= (and b!7128046 ((_ is Star!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128170))

(assert (= (and b!7128046 ((_ is Union!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51787))))) b!7128171))

(declare-fun b!7128172 () Bool)

(declare-fun e!4283625 () Bool)

(declare-fun tp!1963878 () Bool)

(assert (=> b!7128172 (= e!4283625 (and tp_is_empty!45663 tp!1963878))))

(assert (=> b!7128031 (= tp!1963828 e!4283625)))

(assert (= (and b!7128031 ((_ is Cons!68991) (t!383092 (t!383092 (t!383092 s1!1688))))) b!7128172))

(declare-fun b!7128173 () Bool)

(declare-fun e!4283626 () Bool)

(assert (=> b!7128173 (= e!4283626 tp_is_empty!45663)))

(assert (=> b!7128049 (= tp!1963849 e!4283626)))

(declare-fun b!7128174 () Bool)

(declare-fun tp!1963881 () Bool)

(declare-fun tp!1963879 () Bool)

(assert (=> b!7128174 (= e!4283626 (and tp!1963881 tp!1963879))))

(declare-fun b!7128175 () Bool)

(declare-fun tp!1963883 () Bool)

(assert (=> b!7128175 (= e!4283626 tp!1963883)))

(declare-fun b!7128176 () Bool)

(declare-fun tp!1963882 () Bool)

(declare-fun tp!1963880 () Bool)

(assert (=> b!7128176 (= e!4283626 (and tp!1963882 tp!1963880))))

(assert (= (and b!7128049 ((_ is ElementMatch!18031) (h!75438 (t!383091 (exprs!7525 setElem!51787))))) b!7128173))

(assert (= (and b!7128049 ((_ is Concat!26876) (h!75438 (t!383091 (exprs!7525 setElem!51787))))) b!7128174))

(assert (= (and b!7128049 ((_ is Star!18031) (h!75438 (t!383091 (exprs!7525 setElem!51787))))) b!7128175))

(assert (= (and b!7128049 ((_ is Union!18031) (h!75438 (t!383091 (exprs!7525 setElem!51787))))) b!7128176))

(declare-fun b!7128177 () Bool)

(declare-fun e!4283627 () Bool)

(declare-fun tp!1963884 () Bool)

(declare-fun tp!1963885 () Bool)

(assert (=> b!7128177 (= e!4283627 (and tp!1963884 tp!1963885))))

(assert (=> b!7128049 (= tp!1963850 e!4283627)))

(assert (= (and b!7128049 ((_ is Cons!68990) (t!383091 (t!383091 (exprs!7525 setElem!51787))))) b!7128177))

(declare-fun b!7128178 () Bool)

(declare-fun e!4283628 () Bool)

(declare-fun tp!1963886 () Bool)

(assert (=> b!7128178 (= e!4283628 (and tp_is_empty!45663 tp!1963886))))

(assert (=> b!7128030 (= tp!1963827 e!4283628)))

(assert (= (and b!7128030 ((_ is Cons!68991) (t!383092 (t!383092 (t!383092 s2!1620))))) b!7128178))

(declare-fun b!7128179 () Bool)

(declare-fun e!4283629 () Bool)

(assert (=> b!7128179 (= e!4283629 tp_is_empty!45663)))

(assert (=> b!7128051 (= tp!1963853 e!4283629)))

(declare-fun b!7128180 () Bool)

(declare-fun tp!1963889 () Bool)

(declare-fun tp!1963887 () Bool)

(assert (=> b!7128180 (= e!4283629 (and tp!1963889 tp!1963887))))

(declare-fun b!7128181 () Bool)

(declare-fun tp!1963891 () Bool)

(assert (=> b!7128181 (= e!4283629 tp!1963891)))

(declare-fun b!7128182 () Bool)

(declare-fun tp!1963890 () Bool)

(declare-fun tp!1963888 () Bool)

(assert (=> b!7128182 (= e!4283629 (and tp!1963890 tp!1963888))))

(assert (= (and b!7128051 ((_ is ElementMatch!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128179))

(assert (= (and b!7128051 ((_ is Concat!26876) (regOne!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128180))

(assert (= (and b!7128051 ((_ is Star!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128181))

(assert (= (and b!7128051 ((_ is Union!18031) (regOne!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128182))

(declare-fun b!7128183 () Bool)

(declare-fun e!4283630 () Bool)

(assert (=> b!7128183 (= e!4283630 tp_is_empty!45663)))

(assert (=> b!7128051 (= tp!1963851 e!4283630)))

(declare-fun b!7128184 () Bool)

(declare-fun tp!1963894 () Bool)

(declare-fun tp!1963892 () Bool)

(assert (=> b!7128184 (= e!4283630 (and tp!1963894 tp!1963892))))

(declare-fun b!7128185 () Bool)

(declare-fun tp!1963896 () Bool)

(assert (=> b!7128185 (= e!4283630 tp!1963896)))

(declare-fun b!7128186 () Bool)

(declare-fun tp!1963895 () Bool)

(declare-fun tp!1963893 () Bool)

(assert (=> b!7128186 (= e!4283630 (and tp!1963895 tp!1963893))))

(assert (= (and b!7128051 ((_ is ElementMatch!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128183))

(assert (= (and b!7128051 ((_ is Concat!26876) (regTwo!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128184))

(assert (= (and b!7128051 ((_ is Star!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128185))

(assert (= (and b!7128051 ((_ is Union!18031) (regTwo!36574 (h!75438 (exprs!7525 setElem!51786))))) b!7128186))

(declare-fun b!7128187 () Bool)

(declare-fun e!4283631 () Bool)

(declare-fun tp!1963897 () Bool)

(declare-fun tp!1963898 () Bool)

(assert (=> b!7128187 (= e!4283631 (and tp!1963897 tp!1963898))))

(assert (=> b!7128033 (= tp!1963831 e!4283631)))

(assert (= (and b!7128033 ((_ is Cons!68990) (exprs!7525 setElem!51799))) b!7128187))

(declare-fun b!7128188 () Bool)

(declare-fun e!4283632 () Bool)

(declare-fun tp!1963899 () Bool)

(assert (=> b!7128188 (= e!4283632 (and tp_is_empty!45663 tp!1963899))))

(assert (=> b!7128028 (= tp!1963824 e!4283632)))

(assert (= (and b!7128028 ((_ is Cons!68991) (t!383092 (t!383092 (t!383092 s1Rec!140))))) b!7128188))

(declare-fun b!7128189 () Bool)

(declare-fun e!4283633 () Bool)

(assert (=> b!7128189 (= e!4283633 tp_is_empty!45663)))

(assert (=> b!7128032 (= tp!1963829 e!4283633)))

(declare-fun b!7128190 () Bool)

(declare-fun tp!1963902 () Bool)

(declare-fun tp!1963900 () Bool)

(assert (=> b!7128190 (= e!4283633 (and tp!1963902 tp!1963900))))

(declare-fun b!7128191 () Bool)

(declare-fun tp!1963904 () Bool)

(assert (=> b!7128191 (= e!4283633 tp!1963904)))

(declare-fun b!7128192 () Bool)

(declare-fun tp!1963903 () Bool)

(declare-fun tp!1963901 () Bool)

(assert (=> b!7128192 (= e!4283633 (and tp!1963903 tp!1963901))))

(assert (= (and b!7128032 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51795)))) b!7128189))

(assert (= (and b!7128032 ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51795)))) b!7128190))

(assert (= (and b!7128032 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51795)))) b!7128191))

(assert (= (and b!7128032 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51795)))) b!7128192))

(declare-fun b!7128193 () Bool)

(declare-fun e!4283634 () Bool)

(declare-fun tp!1963905 () Bool)

(declare-fun tp!1963906 () Bool)

(assert (=> b!7128193 (= e!4283634 (and tp!1963905 tp!1963906))))

(assert (=> b!7128032 (= tp!1963830 e!4283634)))

(assert (= (and b!7128032 ((_ is Cons!68990) (t!383091 (exprs!7525 setElem!51795)))) b!7128193))

(declare-fun b!7128194 () Bool)

(declare-fun e!4283635 () Bool)

(assert (=> b!7128194 (= e!4283635 tp_is_empty!45663)))

(assert (=> b!7128052 (= tp!1963855 e!4283635)))

(declare-fun b!7128195 () Bool)

(declare-fun tp!1963909 () Bool)

(declare-fun tp!1963907 () Bool)

(assert (=> b!7128195 (= e!4283635 (and tp!1963909 tp!1963907))))

(declare-fun b!7128196 () Bool)

(declare-fun tp!1963911 () Bool)

(assert (=> b!7128196 (= e!4283635 tp!1963911)))

(declare-fun b!7128197 () Bool)

(declare-fun tp!1963910 () Bool)

(declare-fun tp!1963908 () Bool)

(assert (=> b!7128197 (= e!4283635 (and tp!1963910 tp!1963908))))

(assert (= (and b!7128052 ((_ is ElementMatch!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51786))))) b!7128194))

(assert (= (and b!7128052 ((_ is Concat!26876) (reg!18360 (h!75438 (exprs!7525 setElem!51786))))) b!7128195))

(assert (= (and b!7128052 ((_ is Star!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51786))))) b!7128196))

(assert (= (and b!7128052 ((_ is Union!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51786))))) b!7128197))

(declare-fun b!7128198 () Bool)

(declare-fun e!4283636 () Bool)

(assert (=> b!7128198 (= e!4283636 tp_is_empty!45663)))

(assert (=> b!7128053 (= tp!1963854 e!4283636)))

(declare-fun b!7128199 () Bool)

(declare-fun tp!1963914 () Bool)

(declare-fun tp!1963912 () Bool)

(assert (=> b!7128199 (= e!4283636 (and tp!1963914 tp!1963912))))

(declare-fun b!7128200 () Bool)

(declare-fun tp!1963916 () Bool)

(assert (=> b!7128200 (= e!4283636 tp!1963916)))

(declare-fun b!7128201 () Bool)

(declare-fun tp!1963915 () Bool)

(declare-fun tp!1963913 () Bool)

(assert (=> b!7128201 (= e!4283636 (and tp!1963915 tp!1963913))))

(assert (= (and b!7128053 ((_ is ElementMatch!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128198))

(assert (= (and b!7128053 ((_ is Concat!26876) (regOne!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128199))

(assert (= (and b!7128053 ((_ is Star!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128200))

(assert (= (and b!7128053 ((_ is Union!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128201))

(declare-fun b!7128202 () Bool)

(declare-fun e!4283637 () Bool)

(assert (=> b!7128202 (= e!4283637 tp_is_empty!45663)))

(assert (=> b!7128053 (= tp!1963852 e!4283637)))

(declare-fun b!7128203 () Bool)

(declare-fun tp!1963919 () Bool)

(declare-fun tp!1963917 () Bool)

(assert (=> b!7128203 (= e!4283637 (and tp!1963919 tp!1963917))))

(declare-fun b!7128204 () Bool)

(declare-fun tp!1963921 () Bool)

(assert (=> b!7128204 (= e!4283637 tp!1963921)))

(declare-fun b!7128205 () Bool)

(declare-fun tp!1963920 () Bool)

(declare-fun tp!1963918 () Bool)

(assert (=> b!7128205 (= e!4283637 (and tp!1963920 tp!1963918))))

(assert (= (and b!7128053 ((_ is ElementMatch!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128202))

(assert (= (and b!7128053 ((_ is Concat!26876) (regTwo!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128203))

(assert (= (and b!7128053 ((_ is Star!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128204))

(assert (= (and b!7128053 ((_ is Union!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51786))))) b!7128205))

(declare-fun b!7128206 () Bool)

(declare-fun e!4283638 () Bool)

(declare-fun tp!1963922 () Bool)

(assert (=> b!7128206 (= e!4283638 (and tp_is_empty!45663 tp!1963922))))

(assert (=> b!7128027 (= tp!1963823 e!4283638)))

(assert (= (and b!7128027 ((_ is Cons!68991) (t!383092 (t!383092 (t!383092 s!7390))))) b!7128206))

(declare-fun b!7128207 () Bool)

(declare-fun e!4283639 () Bool)

(assert (=> b!7128207 (= e!4283639 tp_is_empty!45663)))

(assert (=> b!7128047 (= tp!1963848 e!4283639)))

(declare-fun b!7128208 () Bool)

(declare-fun tp!1963925 () Bool)

(declare-fun tp!1963923 () Bool)

(assert (=> b!7128208 (= e!4283639 (and tp!1963925 tp!1963923))))

(declare-fun b!7128209 () Bool)

(declare-fun tp!1963927 () Bool)

(assert (=> b!7128209 (= e!4283639 tp!1963927)))

(declare-fun b!7128210 () Bool)

(declare-fun tp!1963926 () Bool)

(declare-fun tp!1963924 () Bool)

(assert (=> b!7128210 (= e!4283639 (and tp!1963926 tp!1963924))))

(assert (= (and b!7128047 ((_ is ElementMatch!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51787))))) b!7128207))

(assert (= (and b!7128047 ((_ is Concat!26876) (reg!18360 (h!75438 (exprs!7525 setElem!51787))))) b!7128208))

(assert (= (and b!7128047 ((_ is Star!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51787))))) b!7128209))

(assert (= (and b!7128047 ((_ is Union!18031) (reg!18360 (h!75438 (exprs!7525 setElem!51787))))) b!7128210))

(declare-fun condSetEmpty!51800 () Bool)

(assert (=> setNonEmpty!51798 (= condSetEmpty!51800 (= setRest!51798 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51800 () Bool)

(assert (=> setNonEmpty!51798 (= tp!1963826 setRes!51800)))

(declare-fun setIsEmpty!51800 () Bool)

(assert (=> setIsEmpty!51800 setRes!51800))

(declare-fun e!4283640 () Bool)

(declare-fun setElem!51800 () Context!14050)

(declare-fun tp!1963929 () Bool)

(declare-fun setNonEmpty!51800 () Bool)

(assert (=> setNonEmpty!51800 (= setRes!51800 (and tp!1963929 (inv!88105 setElem!51800) e!4283640))))

(declare-fun setRest!51800 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51800 (= setRest!51798 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51800 true) setRest!51800))))

(declare-fun b!7128211 () Bool)

(declare-fun tp!1963928 () Bool)

(assert (=> b!7128211 (= e!4283640 tp!1963928)))

(assert (= (and setNonEmpty!51798 condSetEmpty!51800) setIsEmpty!51800))

(assert (= (and setNonEmpty!51798 (not condSetEmpty!51800)) setNonEmpty!51800))

(assert (= setNonEmpty!51800 b!7128211))

(declare-fun m!7845392 () Bool)

(assert (=> setNonEmpty!51800 m!7845392))

(declare-fun b!7128212 () Bool)

(declare-fun e!4283641 () Bool)

(assert (=> b!7128212 (= e!4283641 tp_is_empty!45663)))

(assert (=> b!7128048 (= tp!1963847 e!4283641)))

(declare-fun b!7128213 () Bool)

(declare-fun tp!1963932 () Bool)

(declare-fun tp!1963930 () Bool)

(assert (=> b!7128213 (= e!4283641 (and tp!1963932 tp!1963930))))

(declare-fun b!7128214 () Bool)

(declare-fun tp!1963934 () Bool)

(assert (=> b!7128214 (= e!4283641 tp!1963934)))

(declare-fun b!7128215 () Bool)

(declare-fun tp!1963933 () Bool)

(declare-fun tp!1963931 () Bool)

(assert (=> b!7128215 (= e!4283641 (and tp!1963933 tp!1963931))))

(assert (= (and b!7128048 ((_ is ElementMatch!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128212))

(assert (= (and b!7128048 ((_ is Concat!26876) (regOne!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128213))

(assert (= (and b!7128048 ((_ is Star!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128214))

(assert (= (and b!7128048 ((_ is Union!18031) (regOne!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128215))

(declare-fun b!7128216 () Bool)

(declare-fun e!4283642 () Bool)

(assert (=> b!7128216 (= e!4283642 tp_is_empty!45663)))

(assert (=> b!7128048 (= tp!1963845 e!4283642)))

(declare-fun b!7128217 () Bool)

(declare-fun tp!1963937 () Bool)

(declare-fun tp!1963935 () Bool)

(assert (=> b!7128217 (= e!4283642 (and tp!1963937 tp!1963935))))

(declare-fun b!7128218 () Bool)

(declare-fun tp!1963939 () Bool)

(assert (=> b!7128218 (= e!4283642 tp!1963939)))

(declare-fun b!7128219 () Bool)

(declare-fun tp!1963938 () Bool)

(declare-fun tp!1963936 () Bool)

(assert (=> b!7128219 (= e!4283642 (and tp!1963938 tp!1963936))))

(assert (= (and b!7128048 ((_ is ElementMatch!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128216))

(assert (= (and b!7128048 ((_ is Concat!26876) (regTwo!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128217))

(assert (= (and b!7128048 ((_ is Star!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128218))

(assert (= (and b!7128048 ((_ is Union!18031) (regTwo!36575 (h!75438 (exprs!7525 setElem!51787))))) b!7128219))

(declare-fun condSetEmpty!51801 () Bool)

(assert (=> setNonEmpty!51799 (= condSetEmpty!51801 (= setRest!51799 ((as const (Array Context!14050 Bool)) false)))))

(declare-fun setRes!51801 () Bool)

(assert (=> setNonEmpty!51799 (= tp!1963832 setRes!51801)))

(declare-fun setIsEmpty!51801 () Bool)

(assert (=> setIsEmpty!51801 setRes!51801))

(declare-fun setElem!51801 () Context!14050)

(declare-fun setNonEmpty!51801 () Bool)

(declare-fun tp!1963941 () Bool)

(declare-fun e!4283643 () Bool)

(assert (=> setNonEmpty!51801 (= setRes!51801 (and tp!1963941 (inv!88105 setElem!51801) e!4283643))))

(declare-fun setRest!51801 () (InoxSet Context!14050))

(assert (=> setNonEmpty!51801 (= setRest!51799 ((_ map or) (store ((as const (Array Context!14050 Bool)) false) setElem!51801 true) setRest!51801))))

(declare-fun b!7128220 () Bool)

(declare-fun tp!1963940 () Bool)

(assert (=> b!7128220 (= e!4283643 tp!1963940)))

(assert (= (and setNonEmpty!51799 condSetEmpty!51801) setIsEmpty!51801))

(assert (= (and setNonEmpty!51799 (not condSetEmpty!51801)) setNonEmpty!51801))

(assert (= setNonEmpty!51801 b!7128220))

(declare-fun m!7845394 () Bool)

(assert (=> setNonEmpty!51801 m!7845394))

(declare-fun b!7128221 () Bool)

(declare-fun e!4283644 () Bool)

(assert (=> b!7128221 (= e!4283644 tp_is_empty!45663)))

(assert (=> b!7128055 (= tp!1963858 e!4283644)))

(declare-fun b!7128222 () Bool)

(declare-fun tp!1963944 () Bool)

(declare-fun tp!1963942 () Bool)

(assert (=> b!7128222 (= e!4283644 (and tp!1963944 tp!1963942))))

(declare-fun b!7128223 () Bool)

(declare-fun tp!1963946 () Bool)

(assert (=> b!7128223 (= e!4283644 tp!1963946)))

(declare-fun b!7128224 () Bool)

(declare-fun tp!1963945 () Bool)

(declare-fun tp!1963943 () Bool)

(assert (=> b!7128224 (= e!4283644 (and tp!1963945 tp!1963943))))

(assert (= (and b!7128055 ((_ is ElementMatch!18031) (h!75438 (exprs!7525 setElem!51794)))) b!7128221))

(assert (= (and b!7128055 ((_ is Concat!26876) (h!75438 (exprs!7525 setElem!51794)))) b!7128222))

(assert (= (and b!7128055 ((_ is Star!18031) (h!75438 (exprs!7525 setElem!51794)))) b!7128223))

(assert (= (and b!7128055 ((_ is Union!18031) (h!75438 (exprs!7525 setElem!51794)))) b!7128224))

(declare-fun b!7128225 () Bool)

(declare-fun e!4283645 () Bool)

(declare-fun tp!1963947 () Bool)

(declare-fun tp!1963948 () Bool)

(assert (=> b!7128225 (= e!4283645 (and tp!1963947 tp!1963948))))

(assert (=> b!7128055 (= tp!1963859 e!4283645)))

(assert (= (and b!7128055 ((_ is Cons!68990) (t!383091 (exprs!7525 setElem!51794)))) b!7128225))

(declare-fun b!7128226 () Bool)

(declare-fun e!4283646 () Bool)

(declare-fun tp!1963949 () Bool)

(declare-fun tp!1963950 () Bool)

(assert (=> b!7128226 (= e!4283646 (and tp!1963949 tp!1963950))))

(assert (=> b!7128029 (= tp!1963825 e!4283646)))

(assert (= (and b!7128029 ((_ is Cons!68990) (exprs!7525 setElem!51798))) b!7128226))

(declare-fun b_lambda!272037 () Bool)

(assert (= b_lambda!272031 (or d!2224334 b_lambda!272037)))

(declare-fun bs!1886697 () Bool)

(declare-fun d!2224654 () Bool)

(assert (= bs!1886697 (and d!2224654 d!2224334)))

(assert (=> bs!1886697 (= (dynLambda!28112 lambda!433098 (h!75438 (t!383091 (exprs!7525 setElem!51786)))) (validRegex!9268 (h!75438 (t!383091 (exprs!7525 setElem!51786)))))))

(declare-fun m!7845396 () Bool)

(assert (=> bs!1886697 m!7845396))

(assert (=> b!7128092 d!2224654))

(declare-fun b_lambda!272039 () Bool)

(assert (= b_lambda!272035 (or d!2224436 b_lambda!272039)))

(declare-fun bs!1886698 () Bool)

(declare-fun d!2224656 () Bool)

(assert (= bs!1886698 (and d!2224656 d!2224436)))

(assert (=> bs!1886698 (= (dynLambda!28112 lambda!433109 (h!75438 (exprs!7525 setElem!51794))) (validRegex!9268 (h!75438 (exprs!7525 setElem!51794))))))

(declare-fun m!7845398 () Bool)

(assert (=> bs!1886698 m!7845398))

(assert (=> b!7128135 d!2224656))

(declare-fun b_lambda!272041 () Bool)

(assert (= b_lambda!272029 (or d!2224520 b_lambda!272041)))

(declare-fun bs!1886699 () Bool)

(declare-fun d!2224658 () Bool)

(assert (= bs!1886699 (and d!2224658 d!2224520)))

(assert (=> bs!1886699 (= (dynLambda!28112 lambda!433123 (h!75438 (exprs!7525 setElem!51795))) (validRegex!9268 (h!75438 (exprs!7525 setElem!51795))))))

(declare-fun m!7845400 () Bool)

(assert (=> bs!1886699 m!7845400))

(assert (=> b!7128084 d!2224658))

(declare-fun b_lambda!272043 () Bool)

(assert (= b_lambda!272033 (or d!2224352 b_lambda!272043)))

(declare-fun bs!1886700 () Bool)

(declare-fun d!2224660 () Bool)

(assert (= bs!1886700 (and d!2224660 d!2224352)))

(assert (=> bs!1886700 (= (dynLambda!28112 lambda!433099 (h!75438 (t!383091 (exprs!7525 setElem!51787)))) (validRegex!9268 (h!75438 (t!383091 (exprs!7525 setElem!51787)))))))

(declare-fun m!7845402 () Bool)

(assert (=> bs!1886700 m!7845402))

(assert (=> b!7128131 d!2224660))

(check-sat (not bm!650871) (not b!7128206) (not b!7128210) (not bs!1886699) (not b!7128085) (not b!7128155) (not b!7128077) (not b!7128163) (not d!2224628) (not b!7128209) (not d!2224540) (not d!2224570) (not b!7128071) (not b!7128158) (not b!7128172) (not b!7128169) (not b!7128174) (not b!7128061) (not b!7128175) (not b!7128182) (not d!2224566) (not b!7128166) (not bm!650874) (not b!7128177) (not setNonEmpty!51801) (not b!7128222) (not b!7128220) (not b!7128060) (not b!7128074) (not b!7128186) (not d!2224568) (not b!7128151) (not b!7128215) (not d!2224606) (not bm!650875) (not b!7128136) (not b!7128087) (not bs!1886698) (not b!7128187) (not b!7128140) (not b!7128205) (not b!7128083) (not setNonEmpty!51800) (not b!7128217) (not b!7128225) (not b!7128208) (not d!2224604) (not b!7128192) (not b!7128057) (not b!7128184) (not b!7128081) (not b!7128065) (not b!7128165) (not b!7128224) (not b!7128213) (not b!7128181) (not b!7128185) (not b_lambda!272043) (not b!7128223) (not b!7128178) (not d!2224638) (not b!7128059) (not b_lambda!272041) (not b!7128067) (not b_lambda!272025) (not b!7128188) (not b!7128167) (not b!7128211) (not b!7128226) (not b!7128121) (not b!7128122) (not b!7128195) (not d!2224534) (not d!2224544) (not b!7128176) (not b!7128200) (not b!7128162) (not b!7128153) (not b!7128170) (not b!7128201) (not b!7128154) (not b_lambda!272037) (not bs!1886700) (not b!7128190) (not b!7128079) (not b!7128196) (not b!7128171) (not b!7128075) (not d!2224558) (not b!7128089) (not bs!1886697) (not b!7128124) (not b!7128138) (not d!2224616) (not b!7128134) (not b_lambda!272027) (not b!7128160) tp_is_empty!45663 (not d!2224556) (not b_lambda!272039) (not b!7128161) (not b!7128093) (not d!2224584) (not b!7128197) (not b!7128063) (not b!7128130) (not d!2224576) (not b!7128128) (not b!7128193) (not b!7128219) (not d!2224546) (not b!7128118) (not d!2224542) (not d!2224636) (not b!7128147) (not b!7128191) (not d!2224620) (not d!2224578) (not d!2224564) (not b!7128180) (not b!7128203) (not b!7128199) (not b!7128204) (not b!7128132) (not b!7128076) (not bm!650872) (not b!7128091) (not b!7128218) (not b!7128068) (not d!2224562) (not b!7128157) (not b!7128126) (not b!7128072) (not b!7128214))
(check-sat)
