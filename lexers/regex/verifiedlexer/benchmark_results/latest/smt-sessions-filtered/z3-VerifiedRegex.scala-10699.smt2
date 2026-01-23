; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547784 () Bool)

(assert start!547784)

(declare-fun res!2198855 () Bool)

(declare-fun e!3223762 () Bool)

(assert (=> start!547784 (=> (not res!2198855) (not e!3223762))))

(declare-datatypes ((C!29560 0))(
  ( (C!29561 (val!24482 Int)) )
))
(declare-datatypes ((List!60259 0))(
  ( (Nil!60135) (Cons!60135 (h!66583 C!29560) (t!373412 List!60259)) )
))
(declare-fun testedP!294 () List!60259)

(declare-fun input!5817 () List!60259)

(declare-fun isPrefix!5778 (List!60259 List!60259) Bool)

(assert (=> start!547784 (= res!2198855 (isPrefix!5778 testedP!294 input!5817))))

(assert (=> start!547784 e!3223762))

(declare-fun e!3223765 () Bool)

(assert (=> start!547784 e!3223765))

(declare-fun e!3223768 () Bool)

(assert (=> start!547784 e!3223768))

(declare-fun condSetEmpty!32212 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14645 0))(
  ( (ElementMatch!14645 (c!890718 C!29560)) (Concat!23490 (regOne!29802 Regex!14645) (regTwo!29802 Regex!14645)) (EmptyExpr!14645) (Star!14645 (reg!14974 Regex!14645)) (EmptyLang!14645) (Union!14645 (regOne!29803 Regex!14645) (regTwo!29803 Regex!14645)) )
))
(declare-datatypes ((List!60260 0))(
  ( (Nil!60136) (Cons!60136 (h!66584 Regex!14645) (t!373413 List!60260)) )
))
(declare-datatypes ((Context!8058 0))(
  ( (Context!8059 (exprs!4529 List!60260)) )
))
(declare-fun z!4581 () (InoxSet Context!8058))

(assert (=> start!547784 (= condSetEmpty!32212 (= z!4581 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32212 () Bool)

(assert (=> start!547784 setRes!32212))

(declare-fun condSetEmpty!32211 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!8058))

(assert (=> start!547784 (= condSetEmpty!32211 (= baseZ!62 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32211 () Bool)

(assert (=> start!547784 setRes!32211))

(declare-fun b!5173671 () Bool)

(declare-fun tp_is_empty!38543 () Bool)

(declare-fun tp!1451498 () Bool)

(assert (=> b!5173671 (= e!3223765 (and tp_is_empty!38543 tp!1451498))))

(declare-fun b!5173672 () Bool)

(declare-fun e!3223763 () Bool)

(declare-fun tp!1451499 () Bool)

(assert (=> b!5173672 (= e!3223763 tp!1451499)))

(declare-fun b!5173673 () Bool)

(declare-fun e!3223767 () Bool)

(assert (=> b!5173673 (= e!3223762 e!3223767)))

(declare-fun res!2198854 () Bool)

(assert (=> b!5173673 (=> (not res!2198854) (not e!3223767))))

(declare-fun lt!2130852 () (InoxSet Context!8058))

(assert (=> b!5173673 (= res!2198854 (= lt!2130852 z!4581))))

(declare-fun derivationZipper!268 ((InoxSet Context!8058) List!60259) (InoxSet Context!8058))

(assert (=> b!5173673 (= lt!2130852 (derivationZipper!268 baseZ!62 testedP!294))))

(declare-fun setIsEmpty!32211 () Bool)

(assert (=> setIsEmpty!32211 setRes!32212))

(declare-fun b!5173674 () Bool)

(declare-fun res!2198856 () Bool)

(declare-fun e!3223764 () Bool)

(assert (=> b!5173674 (=> (not res!2198856) (not e!3223764))))

(declare-fun nullableZipper!1187 ((InoxSet Context!8058)) Bool)

(assert (=> b!5173674 (= res!2198856 (nullableZipper!1187 z!4581))))

(declare-fun setElem!32212 () Context!8058)

(declare-fun setNonEmpty!32211 () Bool)

(declare-fun tp!1451495 () Bool)

(declare-fun inv!79859 (Context!8058) Bool)

(assert (=> setNonEmpty!32211 (= setRes!32212 (and tp!1451495 (inv!79859 setElem!32212) e!3223763))))

(declare-fun setRest!32211 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32211 (= z!4581 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32212 true) setRest!32211))))

(declare-fun b!5173675 () Bool)

(assert (=> b!5173675 (= e!3223767 e!3223764)))

(declare-fun res!2198852 () Bool)

(assert (=> b!5173675 (=> (not res!2198852) (not e!3223764))))

(declare-datatypes ((tuple2!63840 0))(
  ( (tuple2!63841 (_1!35223 List!60259) (_2!35223 List!60259)) )
))
(declare-fun lt!2130850 () tuple2!63840)

(declare-fun isEmpty!32195 (List!60259) Bool)

(assert (=> b!5173675 (= res!2198852 (not (isEmpty!32195 (_1!35223 lt!2130850))))))

(declare-fun findLongestMatchInnerZipper!301 ((InoxSet Context!8058) List!60259 Int List!60259 List!60259 Int) tuple2!63840)

(declare-fun size!39681 (List!60259) Int)

(declare-fun getSuffix!3426 (List!60259 List!60259) List!60259)

(assert (=> b!5173675 (= lt!2130850 (findLongestMatchInnerZipper!301 z!4581 testedP!294 (size!39681 testedP!294) (getSuffix!3426 input!5817 testedP!294) input!5817 (size!39681 input!5817)))))

(declare-fun b!5173676 () Bool)

(declare-fun res!2198853 () Bool)

(assert (=> b!5173676 (=> (not res!2198853) (not e!3223764))))

(assert (=> b!5173676 (= res!2198853 (= testedP!294 input!5817))))

(declare-fun setIsEmpty!32212 () Bool)

(assert (=> setIsEmpty!32212 setRes!32211))

(declare-fun setNonEmpty!32212 () Bool)

(declare-fun e!3223766 () Bool)

(declare-fun tp!1451497 () Bool)

(declare-fun setElem!32211 () Context!8058)

(assert (=> setNonEmpty!32212 (= setRes!32211 (and tp!1451497 (inv!79859 setElem!32211) e!3223766))))

(declare-fun setRest!32212 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32212 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32211 true) setRest!32212))))

(declare-fun b!5173677 () Bool)

(declare-fun tp!1451496 () Bool)

(assert (=> b!5173677 (= e!3223768 (and tp_is_empty!38543 tp!1451496))))

(declare-fun b!5173678 () Bool)

(declare-fun matchZipper!981 ((InoxSet Context!8058) List!60259) Bool)

(assert (=> b!5173678 (= e!3223764 (not (matchZipper!981 baseZ!62 (_1!35223 lt!2130850))))))

(assert (=> b!5173678 (= (matchZipper!981 baseZ!62 testedP!294) (matchZipper!981 lt!2130852 Nil!60135))))

(declare-datatypes ((Unit!151878 0))(
  ( (Unit!151879) )
))
(declare-fun lt!2130851 () Unit!151878)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!46 ((InoxSet Context!8058) List!60259) Unit!151878)

(assert (=> b!5173678 (= lt!2130851 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!46 baseZ!62 testedP!294))))

(declare-fun b!5173679 () Bool)

(declare-fun tp!1451494 () Bool)

(assert (=> b!5173679 (= e!3223766 tp!1451494)))

(assert (= (and start!547784 res!2198855) b!5173673))

(assert (= (and b!5173673 res!2198854) b!5173675))

(assert (= (and b!5173675 res!2198852) b!5173676))

(assert (= (and b!5173676 res!2198853) b!5173674))

(assert (= (and b!5173674 res!2198856) b!5173678))

(get-info :version)

(assert (= (and start!547784 ((_ is Cons!60135) testedP!294)) b!5173671))

(assert (= (and start!547784 ((_ is Cons!60135) input!5817)) b!5173677))

(assert (= (and start!547784 condSetEmpty!32212) setIsEmpty!32211))

(assert (= (and start!547784 (not condSetEmpty!32212)) setNonEmpty!32211))

(assert (= setNonEmpty!32211 b!5173672))

(assert (= (and start!547784 condSetEmpty!32211) setIsEmpty!32212))

(assert (= (and start!547784 (not condSetEmpty!32211)) setNonEmpty!32212))

(assert (= setNonEmpty!32212 b!5173679))

(declare-fun m!6227300 () Bool)

(assert (=> setNonEmpty!32211 m!6227300))

(declare-fun m!6227302 () Bool)

(assert (=> b!5173673 m!6227302))

(declare-fun m!6227304 () Bool)

(assert (=> start!547784 m!6227304))

(declare-fun m!6227306 () Bool)

(assert (=> b!5173675 m!6227306))

(declare-fun m!6227308 () Bool)

(assert (=> b!5173675 m!6227308))

(declare-fun m!6227310 () Bool)

(assert (=> b!5173675 m!6227310))

(declare-fun m!6227312 () Bool)

(assert (=> b!5173675 m!6227312))

(assert (=> b!5173675 m!6227308))

(assert (=> b!5173675 m!6227310))

(assert (=> b!5173675 m!6227312))

(declare-fun m!6227314 () Bool)

(assert (=> b!5173675 m!6227314))

(declare-fun m!6227316 () Bool)

(assert (=> b!5173674 m!6227316))

(declare-fun m!6227318 () Bool)

(assert (=> setNonEmpty!32212 m!6227318))

(declare-fun m!6227320 () Bool)

(assert (=> b!5173678 m!6227320))

(declare-fun m!6227322 () Bool)

(assert (=> b!5173678 m!6227322))

(declare-fun m!6227324 () Bool)

(assert (=> b!5173678 m!6227324))

(declare-fun m!6227326 () Bool)

(assert (=> b!5173678 m!6227326))

(check-sat (not b!5173678) (not b!5173672) (not b!5173679) (not b!5173675) tp_is_empty!38543 (not setNonEmpty!32211) (not setNonEmpty!32212) (not b!5173673) (not b!5173677) (not start!547784) (not b!5173674) (not b!5173671))
(check-sat)
(get-model)

(declare-fun d!1669728 () Bool)

(declare-fun c!890726 () Bool)

(assert (=> d!1669728 (= c!890726 ((_ is Cons!60135) testedP!294))))

(declare-fun e!3223776 () (InoxSet Context!8058))

(assert (=> d!1669728 (= (derivationZipper!268 baseZ!62 testedP!294) e!3223776)))

(declare-fun b!5173694 () Bool)

(declare-fun derivationStepZipper!995 ((InoxSet Context!8058) C!29560) (InoxSet Context!8058))

(assert (=> b!5173694 (= e!3223776 (derivationZipper!268 (derivationStepZipper!995 baseZ!62 (h!66583 testedP!294)) (t!373412 testedP!294)))))

(declare-fun b!5173695 () Bool)

(assert (=> b!5173695 (= e!3223776 baseZ!62)))

(assert (= (and d!1669728 c!890726) b!5173694))

(assert (= (and d!1669728 (not c!890726)) b!5173695))

(declare-fun m!6227364 () Bool)

(assert (=> b!5173694 m!6227364))

(assert (=> b!5173694 m!6227364))

(declare-fun m!6227366 () Bool)

(assert (=> b!5173694 m!6227366))

(assert (=> b!5173673 d!1669728))

(declare-fun d!1669734 () Bool)

(declare-fun lt!2130858 () Int)

(assert (=> d!1669734 (>= lt!2130858 0)))

(declare-fun e!3223782 () Int)

(assert (=> d!1669734 (= lt!2130858 e!3223782)))

(declare-fun c!890732 () Bool)

(assert (=> d!1669734 (= c!890732 ((_ is Nil!60135) input!5817))))

(assert (=> d!1669734 (= (size!39681 input!5817) lt!2130858)))

(declare-fun b!5173706 () Bool)

(assert (=> b!5173706 (= e!3223782 0)))

(declare-fun b!5173707 () Bool)

(assert (=> b!5173707 (= e!3223782 (+ 1 (size!39681 (t!373412 input!5817))))))

(assert (= (and d!1669734 c!890732) b!5173706))

(assert (= (and d!1669734 (not c!890732)) b!5173707))

(declare-fun m!6227372 () Bool)

(assert (=> b!5173707 m!6227372))

(assert (=> b!5173675 d!1669734))

(declare-fun d!1669738 () Bool)

(assert (=> d!1669738 (= (isEmpty!32195 (_1!35223 lt!2130850)) ((_ is Nil!60135) (_1!35223 lt!2130850)))))

(assert (=> b!5173675 d!1669738))

(declare-fun d!1669740 () Bool)

(declare-fun lt!2130864 () List!60259)

(declare-fun ++!13165 (List!60259 List!60259) List!60259)

(assert (=> d!1669740 (= (++!13165 testedP!294 lt!2130864) input!5817)))

(declare-fun e!3223794 () List!60259)

(assert (=> d!1669740 (= lt!2130864 e!3223794)))

(declare-fun c!890735 () Bool)

(assert (=> d!1669740 (= c!890735 ((_ is Cons!60135) testedP!294))))

(assert (=> d!1669740 (>= (size!39681 input!5817) (size!39681 testedP!294))))

(assert (=> d!1669740 (= (getSuffix!3426 input!5817 testedP!294) lt!2130864)))

(declare-fun b!5173724 () Bool)

(declare-fun tail!10166 (List!60259) List!60259)

(assert (=> b!5173724 (= e!3223794 (getSuffix!3426 (tail!10166 input!5817) (t!373412 testedP!294)))))

(declare-fun b!5173725 () Bool)

(assert (=> b!5173725 (= e!3223794 input!5817)))

(assert (= (and d!1669740 c!890735) b!5173724))

(assert (= (and d!1669740 (not c!890735)) b!5173725))

(declare-fun m!6227380 () Bool)

(assert (=> d!1669740 m!6227380))

(assert (=> d!1669740 m!6227312))

(assert (=> d!1669740 m!6227308))

(declare-fun m!6227382 () Bool)

(assert (=> b!5173724 m!6227382))

(assert (=> b!5173724 m!6227382))

(declare-fun m!6227384 () Bool)

(assert (=> b!5173724 m!6227384))

(assert (=> b!5173675 d!1669740))

(declare-fun b!5173754 () Bool)

(declare-fun e!3223811 () tuple2!63840)

(declare-fun call!363300 () tuple2!63840)

(assert (=> b!5173754 (= e!3223811 call!363300)))

(declare-fun bm!363295 () Bool)

(declare-fun call!363301 () List!60259)

(assert (=> bm!363295 (= call!363301 (tail!10166 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun bm!363296 () Bool)

(declare-fun call!363304 () Bool)

(assert (=> bm!363296 (= call!363304 (nullableZipper!1187 z!4581))))

(declare-fun b!5173755 () Bool)

(declare-fun e!3223818 () tuple2!63840)

(declare-fun e!3223815 () tuple2!63840)

(assert (=> b!5173755 (= e!3223818 e!3223815)))

(declare-fun c!890754 () Bool)

(assert (=> b!5173755 (= c!890754 (= (size!39681 testedP!294) (size!39681 input!5817)))))

(declare-fun b!5173756 () Bool)

(declare-fun e!3223812 () tuple2!63840)

(declare-fun lt!2130917 () tuple2!63840)

(assert (=> b!5173756 (= e!3223812 lt!2130917)))

(declare-fun b!5173757 () Bool)

(declare-fun c!890752 () Bool)

(assert (=> b!5173757 (= c!890752 call!363304)))

(declare-fun lt!2130938 () Unit!151878)

(declare-fun lt!2130940 () Unit!151878)

(assert (=> b!5173757 (= lt!2130938 lt!2130940)))

(declare-fun lt!2130941 () C!29560)

(declare-fun lt!2130935 () List!60259)

(assert (=> b!5173757 (= (++!13165 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135)) lt!2130935) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1584 (List!60259 C!29560 List!60259 List!60259) Unit!151878)

(assert (=> b!5173757 (= lt!2130940 (lemmaMoveElementToOtherListKeepsConcatEq!1584 testedP!294 lt!2130941 lt!2130935 input!5817))))

(assert (=> b!5173757 (= lt!2130935 (tail!10166 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun head!11067 (List!60259) C!29560)

(assert (=> b!5173757 (= lt!2130941 (head!11067 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun lt!2130925 () Unit!151878)

(declare-fun lt!2130939 () Unit!151878)

(assert (=> b!5173757 (= lt!2130925 lt!2130939)))

(assert (=> b!5173757 (isPrefix!5778 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1087 (List!60259 List!60259) Unit!151878)

(assert (=> b!5173757 (= lt!2130939 (lemmaAddHeadSuffixToPrefixStillPrefix!1087 testedP!294 input!5817))))

(declare-fun lt!2130922 () List!60259)

(assert (=> b!5173757 (= lt!2130922 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)))))

(declare-fun lt!2130923 () Unit!151878)

(declare-fun e!3223814 () Unit!151878)

(assert (=> b!5173757 (= lt!2130923 e!3223814)))

(declare-fun c!890750 () Bool)

(assert (=> b!5173757 (= c!890750 (= (size!39681 testedP!294) (size!39681 input!5817)))))

(declare-fun lt!2130932 () Unit!151878)

(declare-fun lt!2130931 () Unit!151878)

(assert (=> b!5173757 (= lt!2130932 lt!2130931)))

(assert (=> b!5173757 (<= (size!39681 testedP!294) (size!39681 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!939 (List!60259 List!60259) Unit!151878)

(assert (=> b!5173757 (= lt!2130931 (lemmaIsPrefixThenSmallerEqSize!939 testedP!294 input!5817))))

(assert (=> b!5173757 (= e!3223815 e!3223811)))

(declare-fun b!5173758 () Bool)

(declare-fun e!3223817 () tuple2!63840)

(assert (=> b!5173758 (= e!3223817 (tuple2!63841 Nil!60135 input!5817))))

(declare-fun b!5173759 () Bool)

(assert (=> b!5173759 (= e!3223817 (tuple2!63841 testedP!294 Nil!60135))))

(declare-fun b!5173760 () Bool)

(declare-fun c!890751 () Bool)

(assert (=> b!5173760 (= c!890751 call!363304)))

(declare-fun lt!2130929 () Unit!151878)

(declare-fun lt!2130927 () Unit!151878)

(assert (=> b!5173760 (= lt!2130929 lt!2130927)))

(assert (=> b!5173760 (= input!5817 testedP!294)))

(declare-fun call!363305 () Unit!151878)

(assert (=> b!5173760 (= lt!2130927 call!363305)))

(declare-fun lt!2130933 () Unit!151878)

(declare-fun lt!2130937 () Unit!151878)

(assert (=> b!5173760 (= lt!2130933 lt!2130937)))

(declare-fun call!363303 () Bool)

(assert (=> b!5173760 call!363303))

(declare-fun call!363307 () Unit!151878)

(assert (=> b!5173760 (= lt!2130937 call!363307)))

(assert (=> b!5173760 (= e!3223815 e!3223817)))

(declare-fun b!5173761 () Bool)

(declare-fun e!3223813 () Bool)

(declare-fun lt!2130918 () tuple2!63840)

(assert (=> b!5173761 (= e!3223813 (>= (size!39681 (_1!35223 lt!2130918)) (size!39681 testedP!294)))))

(declare-fun b!5173762 () Bool)

(declare-fun Unit!151883 () Unit!151878)

(assert (=> b!5173762 (= e!3223814 Unit!151883)))

(declare-fun bm!363298 () Bool)

(declare-fun call!363306 () C!29560)

(assert (=> bm!363298 (= call!363306 (head!11067 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun b!5173763 () Bool)

(assert (=> b!5173763 (= e!3223818 (tuple2!63841 Nil!60135 input!5817))))

(declare-fun bm!363299 () Bool)

(assert (=> bm!363299 (= call!363303 (isPrefix!5778 input!5817 input!5817))))

(declare-fun b!5173764 () Bool)

(declare-fun Unit!151884 () Unit!151878)

(assert (=> b!5173764 (= e!3223814 Unit!151884)))

(declare-fun lt!2130919 () Unit!151878)

(assert (=> b!5173764 (= lt!2130919 call!363307)))

(assert (=> b!5173764 call!363303))

(declare-fun lt!2130936 () Unit!151878)

(assert (=> b!5173764 (= lt!2130936 lt!2130919)))

(declare-fun lt!2130928 () Unit!151878)

(assert (=> b!5173764 (= lt!2130928 call!363305)))

(assert (=> b!5173764 (= input!5817 testedP!294)))

(declare-fun lt!2130930 () Unit!151878)

(assert (=> b!5173764 (= lt!2130930 lt!2130928)))

(assert (=> b!5173764 false))

(declare-fun b!5173765 () Bool)

(assert (=> b!5173765 (= e!3223812 (tuple2!63841 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun bm!363300 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1425 (List!60259 List!60259 List!60259) Unit!151878)

(assert (=> bm!363300 (= call!363305 (lemmaIsPrefixSameLengthThenSameList!1425 input!5817 testedP!294 input!5817))))

(declare-fun bm!363297 () Bool)

(declare-fun call!363302 () (InoxSet Context!8058))

(assert (=> bm!363297 (= call!363302 (derivationStepZipper!995 z!4581 call!363306))))

(declare-fun d!1669744 () Bool)

(declare-fun e!3223816 () Bool)

(assert (=> d!1669744 e!3223816))

(declare-fun res!2198873 () Bool)

(assert (=> d!1669744 (=> (not res!2198873) (not e!3223816))))

(assert (=> d!1669744 (= res!2198873 (= (++!13165 (_1!35223 lt!2130918) (_2!35223 lt!2130918)) input!5817))))

(assert (=> d!1669744 (= lt!2130918 e!3223818)))

(declare-fun c!890755 () Bool)

(declare-fun lostCauseZipper!1336 ((InoxSet Context!8058)) Bool)

(assert (=> d!1669744 (= c!890755 (lostCauseZipper!1336 z!4581))))

(declare-fun lt!2130934 () Unit!151878)

(declare-fun Unit!151885 () Unit!151878)

(assert (=> d!1669744 (= lt!2130934 Unit!151885)))

(assert (=> d!1669744 (= (getSuffix!3426 input!5817 testedP!294) (getSuffix!3426 input!5817 testedP!294))))

(declare-fun lt!2130921 () Unit!151878)

(declare-fun lt!2130920 () Unit!151878)

(assert (=> d!1669744 (= lt!2130921 lt!2130920)))

(declare-fun lt!2130926 () List!60259)

(assert (=> d!1669744 (= (getSuffix!3426 input!5817 testedP!294) lt!2130926)))

(declare-fun lemmaSamePrefixThenSameSuffix!2703 (List!60259 List!60259 List!60259 List!60259 List!60259) Unit!151878)

(assert (=> d!1669744 (= lt!2130920 (lemmaSamePrefixThenSameSuffix!2703 testedP!294 (getSuffix!3426 input!5817 testedP!294) testedP!294 lt!2130926 input!5817))))

(assert (=> d!1669744 (= lt!2130926 (getSuffix!3426 input!5817 testedP!294))))

(declare-fun lt!2130942 () Unit!151878)

(declare-fun lt!2130924 () Unit!151878)

(assert (=> d!1669744 (= lt!2130942 lt!2130924)))

(assert (=> d!1669744 (isPrefix!5778 testedP!294 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3597 (List!60259 List!60259) Unit!151878)

(assert (=> d!1669744 (= lt!2130924 (lemmaConcatTwoListThenFirstIsPrefix!3597 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))

(assert (=> d!1669744 (= (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)) input!5817)))

(assert (=> d!1669744 (= (findLongestMatchInnerZipper!301 z!4581 testedP!294 (size!39681 testedP!294) (getSuffix!3426 input!5817 testedP!294) input!5817 (size!39681 input!5817)) lt!2130918)))

(declare-fun b!5173766 () Bool)

(assert (=> b!5173766 (= e!3223811 e!3223812)))

(assert (=> b!5173766 (= lt!2130917 call!363300)))

(declare-fun c!890753 () Bool)

(assert (=> b!5173766 (= c!890753 (isEmpty!32195 (_1!35223 lt!2130917)))))

(declare-fun bm!363301 () Bool)

(assert (=> bm!363301 (= call!363300 (findLongestMatchInnerZipper!301 call!363302 lt!2130922 (+ (size!39681 testedP!294) 1) call!363301 input!5817 (size!39681 input!5817)))))

(declare-fun bm!363302 () Bool)

(declare-fun lemmaIsPrefixRefl!3783 (List!60259 List!60259) Unit!151878)

(assert (=> bm!363302 (= call!363307 (lemmaIsPrefixRefl!3783 input!5817 input!5817))))

(declare-fun b!5173767 () Bool)

(assert (=> b!5173767 (= e!3223816 e!3223813)))

(declare-fun res!2198874 () Bool)

(assert (=> b!5173767 (=> res!2198874 e!3223813)))

(assert (=> b!5173767 (= res!2198874 (isEmpty!32195 (_1!35223 lt!2130918)))))

(assert (= (and d!1669744 c!890755) b!5173763))

(assert (= (and d!1669744 (not c!890755)) b!5173755))

(assert (= (and b!5173755 c!890754) b!5173760))

(assert (= (and b!5173755 (not c!890754)) b!5173757))

(assert (= (and b!5173760 c!890751) b!5173759))

(assert (= (and b!5173760 (not c!890751)) b!5173758))

(assert (= (and b!5173757 c!890750) b!5173764))

(assert (= (and b!5173757 (not c!890750)) b!5173762))

(assert (= (and b!5173757 c!890752) b!5173766))

(assert (= (and b!5173757 (not c!890752)) b!5173754))

(assert (= (and b!5173766 c!890753) b!5173765))

(assert (= (and b!5173766 (not c!890753)) b!5173756))

(assert (= (or b!5173766 b!5173754) bm!363295))

(assert (= (or b!5173766 b!5173754) bm!363298))

(assert (= (or b!5173766 b!5173754) bm!363297))

(assert (= (or b!5173766 b!5173754) bm!363301))

(assert (= (or b!5173760 b!5173764) bm!363302))

(assert (= (or b!5173760 b!5173757) bm!363296))

(assert (= (or b!5173760 b!5173764) bm!363299))

(assert (= (or b!5173760 b!5173764) bm!363300))

(assert (= (and d!1669744 res!2198873) b!5173767))

(assert (= (and b!5173767 (not res!2198874)) b!5173761))

(assert (=> bm!363298 m!6227310))

(declare-fun m!6227386 () Bool)

(assert (=> bm!363298 m!6227386))

(declare-fun m!6227388 () Bool)

(assert (=> b!5173761 m!6227388))

(assert (=> b!5173761 m!6227308))

(declare-fun m!6227390 () Bool)

(assert (=> bm!363300 m!6227390))

(declare-fun m!6227392 () Bool)

(assert (=> b!5173767 m!6227392))

(assert (=> bm!363301 m!6227312))

(declare-fun m!6227394 () Bool)

(assert (=> bm!363301 m!6227394))

(declare-fun m!6227396 () Bool)

(assert (=> d!1669744 m!6227396))

(declare-fun m!6227398 () Bool)

(assert (=> d!1669744 m!6227398))

(declare-fun m!6227400 () Bool)

(assert (=> d!1669744 m!6227400))

(assert (=> d!1669744 m!6227310))

(declare-fun m!6227402 () Bool)

(assert (=> d!1669744 m!6227402))

(assert (=> d!1669744 m!6227310))

(assert (=> d!1669744 m!6227310))

(assert (=> d!1669744 m!6227398))

(assert (=> d!1669744 m!6227310))

(declare-fun m!6227404 () Bool)

(assert (=> d!1669744 m!6227404))

(declare-fun m!6227406 () Bool)

(assert (=> d!1669744 m!6227406))

(declare-fun m!6227408 () Bool)

(assert (=> bm!363302 m!6227408))

(assert (=> bm!363296 m!6227316))

(assert (=> b!5173757 m!6227310))

(declare-fun m!6227410 () Bool)

(assert (=> b!5173757 m!6227410))

(declare-fun m!6227412 () Bool)

(assert (=> b!5173757 m!6227412))

(declare-fun m!6227414 () Bool)

(assert (=> b!5173757 m!6227414))

(assert (=> b!5173757 m!6227310))

(assert (=> b!5173757 m!6227386))

(assert (=> b!5173757 m!6227414))

(declare-fun m!6227416 () Bool)

(assert (=> b!5173757 m!6227416))

(assert (=> b!5173757 m!6227308))

(assert (=> b!5173757 m!6227310))

(declare-fun m!6227418 () Bool)

(assert (=> b!5173757 m!6227418))

(declare-fun m!6227420 () Bool)

(assert (=> b!5173757 m!6227420))

(assert (=> b!5173757 m!6227312))

(assert (=> b!5173757 m!6227310))

(assert (=> b!5173757 m!6227386))

(declare-fun m!6227422 () Bool)

(assert (=> b!5173757 m!6227422))

(assert (=> b!5173757 m!6227414))

(assert (=> b!5173757 m!6227418))

(declare-fun m!6227424 () Bool)

(assert (=> b!5173757 m!6227424))

(declare-fun m!6227426 () Bool)

(assert (=> bm!363299 m!6227426))

(declare-fun m!6227428 () Bool)

(assert (=> bm!363297 m!6227428))

(assert (=> bm!363295 m!6227310))

(assert (=> bm!363295 m!6227410))

(declare-fun m!6227430 () Bool)

(assert (=> b!5173766 m!6227430))

(assert (=> b!5173675 d!1669744))

(declare-fun d!1669746 () Bool)

(declare-fun lt!2130943 () Int)

(assert (=> d!1669746 (>= lt!2130943 0)))

(declare-fun e!3223819 () Int)

(assert (=> d!1669746 (= lt!2130943 e!3223819)))

(declare-fun c!890756 () Bool)

(assert (=> d!1669746 (= c!890756 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669746 (= (size!39681 testedP!294) lt!2130943)))

(declare-fun b!5173768 () Bool)

(assert (=> b!5173768 (= e!3223819 0)))

(declare-fun b!5173769 () Bool)

(assert (=> b!5173769 (= e!3223819 (+ 1 (size!39681 (t!373412 testedP!294))))))

(assert (= (and d!1669746 c!890756) b!5173768))

(assert (= (and d!1669746 (not c!890756)) b!5173769))

(declare-fun m!6227432 () Bool)

(assert (=> b!5173769 m!6227432))

(assert (=> b!5173675 d!1669746))

(declare-fun d!1669748 () Bool)

(declare-fun e!3223828 () Bool)

(assert (=> d!1669748 e!3223828))

(declare-fun res!2198883 () Bool)

(assert (=> d!1669748 (=> res!2198883 e!3223828)))

(declare-fun lt!2130946 () Bool)

(assert (=> d!1669748 (= res!2198883 (not lt!2130946))))

(declare-fun e!3223826 () Bool)

(assert (=> d!1669748 (= lt!2130946 e!3223826)))

(declare-fun res!2198885 () Bool)

(assert (=> d!1669748 (=> res!2198885 e!3223826)))

(assert (=> d!1669748 (= res!2198885 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669748 (= (isPrefix!5778 testedP!294 input!5817) lt!2130946)))

(declare-fun b!5173781 () Bool)

(assert (=> b!5173781 (= e!3223828 (>= (size!39681 input!5817) (size!39681 testedP!294)))))

(declare-fun b!5173779 () Bool)

(declare-fun res!2198886 () Bool)

(declare-fun e!3223827 () Bool)

(assert (=> b!5173779 (=> (not res!2198886) (not e!3223827))))

(assert (=> b!5173779 (= res!2198886 (= (head!11067 testedP!294) (head!11067 input!5817)))))

(declare-fun b!5173778 () Bool)

(assert (=> b!5173778 (= e!3223826 e!3223827)))

(declare-fun res!2198884 () Bool)

(assert (=> b!5173778 (=> (not res!2198884) (not e!3223827))))

(assert (=> b!5173778 (= res!2198884 (not ((_ is Nil!60135) input!5817)))))

(declare-fun b!5173780 () Bool)

(assert (=> b!5173780 (= e!3223827 (isPrefix!5778 (tail!10166 testedP!294) (tail!10166 input!5817)))))

(assert (= (and d!1669748 (not res!2198885)) b!5173778))

(assert (= (and b!5173778 res!2198884) b!5173779))

(assert (= (and b!5173779 res!2198886) b!5173780))

(assert (= (and d!1669748 (not res!2198883)) b!5173781))

(assert (=> b!5173781 m!6227312))

(assert (=> b!5173781 m!6227308))

(declare-fun m!6227434 () Bool)

(assert (=> b!5173779 m!6227434))

(declare-fun m!6227436 () Bool)

(assert (=> b!5173779 m!6227436))

(declare-fun m!6227438 () Bool)

(assert (=> b!5173780 m!6227438))

(assert (=> b!5173780 m!6227382))

(assert (=> b!5173780 m!6227438))

(assert (=> b!5173780 m!6227382))

(declare-fun m!6227440 () Bool)

(assert (=> b!5173780 m!6227440))

(assert (=> start!547784 d!1669748))

(declare-fun d!1669750 () Bool)

(declare-fun lambda!258347 () Int)

(declare-fun forall!14147 (List!60260 Int) Bool)

(assert (=> d!1669750 (= (inv!79859 setElem!32212) (forall!14147 (exprs!4529 setElem!32212) lambda!258347))))

(declare-fun bs!1203821 () Bool)

(assert (= bs!1203821 d!1669750))

(declare-fun m!6227506 () Bool)

(assert (=> bs!1203821 m!6227506))

(assert (=> setNonEmpty!32211 d!1669750))

(declare-fun d!1669766 () Bool)

(declare-fun c!890784 () Bool)

(assert (=> d!1669766 (= c!890784 (isEmpty!32195 (_1!35223 lt!2130850)))))

(declare-fun e!3223874 () Bool)

(assert (=> d!1669766 (= (matchZipper!981 baseZ!62 (_1!35223 lt!2130850)) e!3223874)))

(declare-fun b!5173860 () Bool)

(assert (=> b!5173860 (= e!3223874 (nullableZipper!1187 baseZ!62))))

(declare-fun b!5173861 () Bool)

(assert (=> b!5173861 (= e!3223874 (matchZipper!981 (derivationStepZipper!995 baseZ!62 (head!11067 (_1!35223 lt!2130850))) (tail!10166 (_1!35223 lt!2130850))))))

(assert (= (and d!1669766 c!890784) b!5173860))

(assert (= (and d!1669766 (not c!890784)) b!5173861))

(assert (=> d!1669766 m!6227306))

(declare-fun m!6227508 () Bool)

(assert (=> b!5173860 m!6227508))

(declare-fun m!6227510 () Bool)

(assert (=> b!5173861 m!6227510))

(assert (=> b!5173861 m!6227510))

(declare-fun m!6227512 () Bool)

(assert (=> b!5173861 m!6227512))

(declare-fun m!6227514 () Bool)

(assert (=> b!5173861 m!6227514))

(assert (=> b!5173861 m!6227512))

(assert (=> b!5173861 m!6227514))

(declare-fun m!6227516 () Bool)

(assert (=> b!5173861 m!6227516))

(assert (=> b!5173678 d!1669766))

(declare-fun d!1669768 () Bool)

(declare-fun c!890785 () Bool)

(assert (=> d!1669768 (= c!890785 (isEmpty!32195 testedP!294))))

(declare-fun e!3223875 () Bool)

(assert (=> d!1669768 (= (matchZipper!981 baseZ!62 testedP!294) e!3223875)))

(declare-fun b!5173862 () Bool)

(assert (=> b!5173862 (= e!3223875 (nullableZipper!1187 baseZ!62))))

(declare-fun b!5173863 () Bool)

(assert (=> b!5173863 (= e!3223875 (matchZipper!981 (derivationStepZipper!995 baseZ!62 (head!11067 testedP!294)) (tail!10166 testedP!294)))))

(assert (= (and d!1669768 c!890785) b!5173862))

(assert (= (and d!1669768 (not c!890785)) b!5173863))

(declare-fun m!6227518 () Bool)

(assert (=> d!1669768 m!6227518))

(assert (=> b!5173862 m!6227508))

(assert (=> b!5173863 m!6227434))

(assert (=> b!5173863 m!6227434))

(declare-fun m!6227520 () Bool)

(assert (=> b!5173863 m!6227520))

(assert (=> b!5173863 m!6227438))

(assert (=> b!5173863 m!6227520))

(assert (=> b!5173863 m!6227438))

(declare-fun m!6227522 () Bool)

(assert (=> b!5173863 m!6227522))

(assert (=> b!5173678 d!1669768))

(declare-fun d!1669770 () Bool)

(declare-fun c!890786 () Bool)

(assert (=> d!1669770 (= c!890786 (isEmpty!32195 Nil!60135))))

(declare-fun e!3223876 () Bool)

(assert (=> d!1669770 (= (matchZipper!981 lt!2130852 Nil!60135) e!3223876)))

(declare-fun b!5173864 () Bool)

(assert (=> b!5173864 (= e!3223876 (nullableZipper!1187 lt!2130852))))

(declare-fun b!5173865 () Bool)

(assert (=> b!5173865 (= e!3223876 (matchZipper!981 (derivationStepZipper!995 lt!2130852 (head!11067 Nil!60135)) (tail!10166 Nil!60135)))))

(assert (= (and d!1669770 c!890786) b!5173864))

(assert (= (and d!1669770 (not c!890786)) b!5173865))

(declare-fun m!6227524 () Bool)

(assert (=> d!1669770 m!6227524))

(declare-fun m!6227526 () Bool)

(assert (=> b!5173864 m!6227526))

(declare-fun m!6227528 () Bool)

(assert (=> b!5173865 m!6227528))

(assert (=> b!5173865 m!6227528))

(declare-fun m!6227530 () Bool)

(assert (=> b!5173865 m!6227530))

(declare-fun m!6227532 () Bool)

(assert (=> b!5173865 m!6227532))

(assert (=> b!5173865 m!6227530))

(assert (=> b!5173865 m!6227532))

(declare-fun m!6227534 () Bool)

(assert (=> b!5173865 m!6227534))

(assert (=> b!5173678 d!1669770))

(declare-fun d!1669772 () Bool)

(assert (=> d!1669772 (= (matchZipper!981 baseZ!62 testedP!294) (matchZipper!981 (derivationZipper!268 baseZ!62 testedP!294) Nil!60135))))

(declare-fun lt!2131034 () Unit!151878)

(declare-fun choose!38376 ((InoxSet Context!8058) List!60259) Unit!151878)

(assert (=> d!1669772 (= lt!2131034 (choose!38376 baseZ!62 testedP!294))))

(assert (=> d!1669772 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!46 baseZ!62 testedP!294) lt!2131034)))

(declare-fun bs!1203822 () Bool)

(assert (= bs!1203822 d!1669772))

(assert (=> bs!1203822 m!6227322))

(assert (=> bs!1203822 m!6227302))

(assert (=> bs!1203822 m!6227302))

(declare-fun m!6227536 () Bool)

(assert (=> bs!1203822 m!6227536))

(declare-fun m!6227538 () Bool)

(assert (=> bs!1203822 m!6227538))

(assert (=> b!5173678 d!1669772))

(declare-fun bs!1203823 () Bool)

(declare-fun d!1669774 () Bool)

(assert (= bs!1203823 (and d!1669774 d!1669750)))

(declare-fun lambda!258348 () Int)

(assert (=> bs!1203823 (= lambda!258348 lambda!258347)))

(assert (=> d!1669774 (= (inv!79859 setElem!32211) (forall!14147 (exprs!4529 setElem!32211) lambda!258348))))

(declare-fun bs!1203824 () Bool)

(assert (= bs!1203824 d!1669774))

(declare-fun m!6227540 () Bool)

(assert (=> bs!1203824 m!6227540))

(assert (=> setNonEmpty!32212 d!1669774))

(declare-fun d!1669776 () Bool)

(declare-fun lambda!258351 () Int)

(declare-fun exists!1928 ((InoxSet Context!8058) Int) Bool)

(assert (=> d!1669776 (= (nullableZipper!1187 z!4581) (exists!1928 z!4581 lambda!258351))))

(declare-fun bs!1203825 () Bool)

(assert (= bs!1203825 d!1669776))

(declare-fun m!6227542 () Bool)

(assert (=> bs!1203825 m!6227542))

(assert (=> b!5173674 d!1669776))

(declare-fun b!5173870 () Bool)

(declare-fun e!3223879 () Bool)

(declare-fun tp!1451524 () Bool)

(declare-fun tp!1451525 () Bool)

(assert (=> b!5173870 (= e!3223879 (and tp!1451524 tp!1451525))))

(assert (=> b!5173672 (= tp!1451499 e!3223879)))

(assert (= (and b!5173672 ((_ is Cons!60136) (exprs!4529 setElem!32212))) b!5173870))

(declare-fun b!5173871 () Bool)

(declare-fun e!3223880 () Bool)

(declare-fun tp!1451526 () Bool)

(declare-fun tp!1451527 () Bool)

(assert (=> b!5173871 (= e!3223880 (and tp!1451526 tp!1451527))))

(assert (=> b!5173679 (= tp!1451494 e!3223880)))

(assert (= (and b!5173679 ((_ is Cons!60136) (exprs!4529 setElem!32211))) b!5173871))

(declare-fun b!5173876 () Bool)

(declare-fun e!3223883 () Bool)

(declare-fun tp!1451530 () Bool)

(assert (=> b!5173876 (= e!3223883 (and tp_is_empty!38543 tp!1451530))))

(assert (=> b!5173677 (= tp!1451496 e!3223883)))

(assert (= (and b!5173677 ((_ is Cons!60135) (t!373412 input!5817))) b!5173876))

(declare-fun condSetEmpty!32219 () Bool)

(assert (=> setNonEmpty!32211 (= condSetEmpty!32219 (= setRest!32211 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32219 () Bool)

(assert (=> setNonEmpty!32211 (= tp!1451495 setRes!32219)))

(declare-fun setIsEmpty!32219 () Bool)

(assert (=> setIsEmpty!32219 setRes!32219))

(declare-fun tp!1451536 () Bool)

(declare-fun setElem!32219 () Context!8058)

(declare-fun setNonEmpty!32219 () Bool)

(declare-fun e!3223886 () Bool)

(assert (=> setNonEmpty!32219 (= setRes!32219 (and tp!1451536 (inv!79859 setElem!32219) e!3223886))))

(declare-fun setRest!32219 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32219 (= setRest!32211 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32219 true) setRest!32219))))

(declare-fun b!5173881 () Bool)

(declare-fun tp!1451535 () Bool)

(assert (=> b!5173881 (= e!3223886 tp!1451535)))

(assert (= (and setNonEmpty!32211 condSetEmpty!32219) setIsEmpty!32219))

(assert (= (and setNonEmpty!32211 (not condSetEmpty!32219)) setNonEmpty!32219))

(assert (= setNonEmpty!32219 b!5173881))

(declare-fun m!6227544 () Bool)

(assert (=> setNonEmpty!32219 m!6227544))

(declare-fun b!5173882 () Bool)

(declare-fun e!3223887 () Bool)

(declare-fun tp!1451537 () Bool)

(assert (=> b!5173882 (= e!3223887 (and tp_is_empty!38543 tp!1451537))))

(assert (=> b!5173671 (= tp!1451498 e!3223887)))

(assert (= (and b!5173671 ((_ is Cons!60135) (t!373412 testedP!294))) b!5173882))

(declare-fun condSetEmpty!32220 () Bool)

(assert (=> setNonEmpty!32212 (= condSetEmpty!32220 (= setRest!32212 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32220 () Bool)

(assert (=> setNonEmpty!32212 (= tp!1451497 setRes!32220)))

(declare-fun setIsEmpty!32220 () Bool)

(assert (=> setIsEmpty!32220 setRes!32220))

(declare-fun e!3223888 () Bool)

(declare-fun setElem!32220 () Context!8058)

(declare-fun tp!1451539 () Bool)

(declare-fun setNonEmpty!32220 () Bool)

(assert (=> setNonEmpty!32220 (= setRes!32220 (and tp!1451539 (inv!79859 setElem!32220) e!3223888))))

(declare-fun setRest!32220 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32220 (= setRest!32212 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32220 true) setRest!32220))))

(declare-fun b!5173883 () Bool)

(declare-fun tp!1451538 () Bool)

(assert (=> b!5173883 (= e!3223888 tp!1451538)))

(assert (= (and setNonEmpty!32212 condSetEmpty!32220) setIsEmpty!32220))

(assert (= (and setNonEmpty!32212 (not condSetEmpty!32220)) setNonEmpty!32220))

(assert (= setNonEmpty!32220 b!5173883))

(declare-fun m!6227546 () Bool)

(assert (=> setNonEmpty!32220 m!6227546))

(check-sat (not b!5173871) (not bm!363298) (not b!5173707) (not b!5173863) (not d!1669772) (not b!5173757) (not bm!363297) (not b!5173724) (not setNonEmpty!32220) (not d!1669768) (not b!5173779) (not b!5173876) (not b!5173870) (not bm!363295) (not d!1669740) (not b!5173767) (not b!5173766) (not b!5173882) (not b!5173694) (not bm!363299) tp_is_empty!38543 (not b!5173860) (not b!5173769) (not b!5173865) (not b!5173883) (not d!1669766) (not bm!363301) (not b!5173881) (not bm!363302) (not d!1669750) (not bm!363300) (not b!5173761) (not d!1669770) (not b!5173864) (not b!5173780) (not d!1669774) (not b!5173861) (not d!1669744) (not bm!363296) (not b!5173781) (not setNonEmpty!32219) (not d!1669776) (not b!5173862))
(check-sat)
(get-model)

(declare-fun d!1669892 () Bool)

(declare-fun res!2198939 () Bool)

(declare-fun e!3223964 () Bool)

(assert (=> d!1669892 (=> res!2198939 e!3223964)))

(assert (=> d!1669892 (= res!2198939 ((_ is Nil!60136) (exprs!4529 setElem!32212)))))

(assert (=> d!1669892 (= (forall!14147 (exprs!4529 setElem!32212) lambda!258347) e!3223964)))

(declare-fun b!5174008 () Bool)

(declare-fun e!3223965 () Bool)

(assert (=> b!5174008 (= e!3223964 e!3223965)))

(declare-fun res!2198940 () Bool)

(assert (=> b!5174008 (=> (not res!2198940) (not e!3223965))))

(declare-fun dynLambda!23876 (Int Regex!14645) Bool)

(assert (=> b!5174008 (= res!2198940 (dynLambda!23876 lambda!258347 (h!66584 (exprs!4529 setElem!32212))))))

(declare-fun b!5174009 () Bool)

(assert (=> b!5174009 (= e!3223965 (forall!14147 (t!373413 (exprs!4529 setElem!32212)) lambda!258347))))

(assert (= (and d!1669892 (not res!2198939)) b!5174008))

(assert (= (and b!5174008 res!2198940) b!5174009))

(declare-fun b_lambda!200921 () Bool)

(assert (=> (not b_lambda!200921) (not b!5174008)))

(declare-fun m!6227806 () Bool)

(assert (=> b!5174008 m!6227806))

(declare-fun m!6227808 () Bool)

(assert (=> b!5174009 m!6227808))

(assert (=> d!1669750 d!1669892))

(declare-fun d!1669894 () Bool)

(assert (=> d!1669894 (= (isEmpty!32195 (_1!35223 lt!2130918)) ((_ is Nil!60135) (_1!35223 lt!2130918)))))

(assert (=> b!5173767 d!1669894))

(assert (=> d!1669766 d!1669738))

(declare-fun d!1669896 () Bool)

(assert (=> d!1669896 (= (tail!10166 (getSuffix!3426 input!5817 testedP!294)) (t!373412 (getSuffix!3426 input!5817 testedP!294)))))

(assert (=> bm!363295 d!1669896))

(declare-fun d!1669898 () Bool)

(assert (=> d!1669898 (= (isEmpty!32195 (_1!35223 lt!2130917)) ((_ is Nil!60135) (_1!35223 lt!2130917)))))

(assert (=> b!5173766 d!1669898))

(declare-fun bs!1203871 () Bool)

(declare-fun d!1669900 () Bool)

(assert (= bs!1203871 (and d!1669900 d!1669750)))

(declare-fun lambda!258377 () Int)

(assert (=> bs!1203871 (= lambda!258377 lambda!258347)))

(declare-fun bs!1203872 () Bool)

(assert (= bs!1203872 (and d!1669900 d!1669774)))

(assert (=> bs!1203872 (= lambda!258377 lambda!258348)))

(assert (=> d!1669900 (= (inv!79859 setElem!32219) (forall!14147 (exprs!4529 setElem!32219) lambda!258377))))

(declare-fun bs!1203873 () Bool)

(assert (= bs!1203873 d!1669900))

(declare-fun m!6227810 () Bool)

(assert (=> bs!1203873 m!6227810))

(assert (=> setNonEmpty!32219 d!1669900))

(declare-fun d!1669902 () Bool)

(declare-fun lt!2131125 () List!60259)

(assert (=> d!1669902 (= (++!13165 (t!373412 testedP!294) lt!2131125) (tail!10166 input!5817))))

(declare-fun e!3223966 () List!60259)

(assert (=> d!1669902 (= lt!2131125 e!3223966)))

(declare-fun c!890824 () Bool)

(assert (=> d!1669902 (= c!890824 ((_ is Cons!60135) (t!373412 testedP!294)))))

(assert (=> d!1669902 (>= (size!39681 (tail!10166 input!5817)) (size!39681 (t!373412 testedP!294)))))

(assert (=> d!1669902 (= (getSuffix!3426 (tail!10166 input!5817) (t!373412 testedP!294)) lt!2131125)))

(declare-fun b!5174010 () Bool)

(assert (=> b!5174010 (= e!3223966 (getSuffix!3426 (tail!10166 (tail!10166 input!5817)) (t!373412 (t!373412 testedP!294))))))

(declare-fun b!5174011 () Bool)

(assert (=> b!5174011 (= e!3223966 (tail!10166 input!5817))))

(assert (= (and d!1669902 c!890824) b!5174010))

(assert (= (and d!1669902 (not c!890824)) b!5174011))

(declare-fun m!6227812 () Bool)

(assert (=> d!1669902 m!6227812))

(assert (=> d!1669902 m!6227382))

(declare-fun m!6227814 () Bool)

(assert (=> d!1669902 m!6227814))

(assert (=> d!1669902 m!6227432))

(assert (=> b!5174010 m!6227382))

(declare-fun m!6227816 () Bool)

(assert (=> b!5174010 m!6227816))

(assert (=> b!5174010 m!6227816))

(declare-fun m!6227818 () Bool)

(assert (=> b!5174010 m!6227818))

(assert (=> b!5173724 d!1669902))

(declare-fun d!1669904 () Bool)

(assert (=> d!1669904 (= (tail!10166 input!5817) (t!373412 input!5817))))

(assert (=> b!5173724 d!1669904))

(declare-fun d!1669906 () Bool)

(assert (=> d!1669906 (isPrefix!5778 input!5817 input!5817)))

(declare-fun lt!2131128 () Unit!151878)

(declare-fun choose!38381 (List!60259 List!60259) Unit!151878)

(assert (=> d!1669906 (= lt!2131128 (choose!38381 input!5817 input!5817))))

(assert (=> d!1669906 (= (lemmaIsPrefixRefl!3783 input!5817 input!5817) lt!2131128)))

(declare-fun bs!1203874 () Bool)

(assert (= bs!1203874 d!1669906))

(assert (=> bs!1203874 m!6227426))

(declare-fun m!6227820 () Bool)

(assert (=> bs!1203874 m!6227820))

(assert (=> bm!363302 d!1669906))

(declare-fun d!1669908 () Bool)

(assert (=> d!1669908 (= (isEmpty!32195 Nil!60135) true)))

(assert (=> d!1669770 d!1669908))

(declare-fun b!5174012 () Bool)

(declare-fun e!3223967 () tuple2!63840)

(declare-fun call!363346 () tuple2!63840)

(assert (=> b!5174012 (= e!3223967 call!363346)))

(declare-fun bm!363341 () Bool)

(declare-fun call!363347 () List!60259)

(assert (=> bm!363341 (= call!363347 (tail!10166 call!363301))))

(declare-fun bm!363342 () Bool)

(declare-fun call!363350 () Bool)

(assert (=> bm!363342 (= call!363350 (nullableZipper!1187 call!363302))))

(declare-fun b!5174013 () Bool)

(declare-fun e!3223974 () tuple2!63840)

(declare-fun e!3223971 () tuple2!63840)

(assert (=> b!5174013 (= e!3223974 e!3223971)))

(declare-fun c!890829 () Bool)

(assert (=> b!5174013 (= c!890829 (= (+ (size!39681 testedP!294) 1) (size!39681 input!5817)))))

(declare-fun b!5174014 () Bool)

(declare-fun e!3223968 () tuple2!63840)

(declare-fun lt!2131129 () tuple2!63840)

(assert (=> b!5174014 (= e!3223968 lt!2131129)))

(declare-fun b!5174015 () Bool)

(declare-fun c!890827 () Bool)

(assert (=> b!5174015 (= c!890827 call!363350)))

(declare-fun lt!2131150 () Unit!151878)

(declare-fun lt!2131152 () Unit!151878)

(assert (=> b!5174015 (= lt!2131150 lt!2131152)))

(declare-fun lt!2131153 () C!29560)

(declare-fun lt!2131147 () List!60259)

(assert (=> b!5174015 (= (++!13165 (++!13165 lt!2130922 (Cons!60135 lt!2131153 Nil!60135)) lt!2131147) input!5817)))

(assert (=> b!5174015 (= lt!2131152 (lemmaMoveElementToOtherListKeepsConcatEq!1584 lt!2130922 lt!2131153 lt!2131147 input!5817))))

(assert (=> b!5174015 (= lt!2131147 (tail!10166 call!363301))))

(assert (=> b!5174015 (= lt!2131153 (head!11067 call!363301))))

(declare-fun lt!2131137 () Unit!151878)

(declare-fun lt!2131151 () Unit!151878)

(assert (=> b!5174015 (= lt!2131137 lt!2131151)))

(assert (=> b!5174015 (isPrefix!5778 (++!13165 lt!2130922 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 lt!2130922)) Nil!60135)) input!5817)))

(assert (=> b!5174015 (= lt!2131151 (lemmaAddHeadSuffixToPrefixStillPrefix!1087 lt!2130922 input!5817))))

(declare-fun lt!2131134 () List!60259)

(assert (=> b!5174015 (= lt!2131134 (++!13165 lt!2130922 (Cons!60135 (head!11067 call!363301) Nil!60135)))))

(declare-fun lt!2131135 () Unit!151878)

(declare-fun e!3223970 () Unit!151878)

(assert (=> b!5174015 (= lt!2131135 e!3223970)))

(declare-fun c!890825 () Bool)

(assert (=> b!5174015 (= c!890825 (= (size!39681 lt!2130922) (size!39681 input!5817)))))

(declare-fun lt!2131144 () Unit!151878)

(declare-fun lt!2131143 () Unit!151878)

(assert (=> b!5174015 (= lt!2131144 lt!2131143)))

(assert (=> b!5174015 (<= (size!39681 lt!2130922) (size!39681 input!5817))))

(assert (=> b!5174015 (= lt!2131143 (lemmaIsPrefixThenSmallerEqSize!939 lt!2130922 input!5817))))

(assert (=> b!5174015 (= e!3223971 e!3223967)))

(declare-fun b!5174016 () Bool)

(declare-fun e!3223973 () tuple2!63840)

(assert (=> b!5174016 (= e!3223973 (tuple2!63841 Nil!60135 input!5817))))

(declare-fun b!5174017 () Bool)

(assert (=> b!5174017 (= e!3223973 (tuple2!63841 lt!2130922 Nil!60135))))

(declare-fun b!5174018 () Bool)

(declare-fun c!890826 () Bool)

(assert (=> b!5174018 (= c!890826 call!363350)))

(declare-fun lt!2131141 () Unit!151878)

(declare-fun lt!2131139 () Unit!151878)

(assert (=> b!5174018 (= lt!2131141 lt!2131139)))

(assert (=> b!5174018 (= input!5817 lt!2130922)))

(declare-fun call!363351 () Unit!151878)

(assert (=> b!5174018 (= lt!2131139 call!363351)))

(declare-fun lt!2131145 () Unit!151878)

(declare-fun lt!2131149 () Unit!151878)

(assert (=> b!5174018 (= lt!2131145 lt!2131149)))

(declare-fun call!363349 () Bool)

(assert (=> b!5174018 call!363349))

(declare-fun call!363353 () Unit!151878)

(assert (=> b!5174018 (= lt!2131149 call!363353)))

(assert (=> b!5174018 (= e!3223971 e!3223973)))

(declare-fun b!5174019 () Bool)

(declare-fun e!3223969 () Bool)

(declare-fun lt!2131130 () tuple2!63840)

(assert (=> b!5174019 (= e!3223969 (>= (size!39681 (_1!35223 lt!2131130)) (size!39681 lt!2130922)))))

(declare-fun b!5174020 () Bool)

(declare-fun Unit!151889 () Unit!151878)

(assert (=> b!5174020 (= e!3223970 Unit!151889)))

(declare-fun bm!363344 () Bool)

(declare-fun call!363352 () C!29560)

(assert (=> bm!363344 (= call!363352 (head!11067 call!363301))))

(declare-fun b!5174021 () Bool)

(assert (=> b!5174021 (= e!3223974 (tuple2!63841 Nil!60135 input!5817))))

(declare-fun bm!363345 () Bool)

(assert (=> bm!363345 (= call!363349 (isPrefix!5778 input!5817 input!5817))))

(declare-fun b!5174022 () Bool)

(declare-fun Unit!151890 () Unit!151878)

(assert (=> b!5174022 (= e!3223970 Unit!151890)))

(declare-fun lt!2131131 () Unit!151878)

(assert (=> b!5174022 (= lt!2131131 call!363353)))

(assert (=> b!5174022 call!363349))

(declare-fun lt!2131148 () Unit!151878)

(assert (=> b!5174022 (= lt!2131148 lt!2131131)))

(declare-fun lt!2131140 () Unit!151878)

(assert (=> b!5174022 (= lt!2131140 call!363351)))

(assert (=> b!5174022 (= input!5817 lt!2130922)))

(declare-fun lt!2131142 () Unit!151878)

(assert (=> b!5174022 (= lt!2131142 lt!2131140)))

(assert (=> b!5174022 false))

(declare-fun b!5174023 () Bool)

(assert (=> b!5174023 (= e!3223968 (tuple2!63841 lt!2130922 call!363301))))

(declare-fun bm!363346 () Bool)

(assert (=> bm!363346 (= call!363351 (lemmaIsPrefixSameLengthThenSameList!1425 input!5817 lt!2130922 input!5817))))

(declare-fun bm!363343 () Bool)

(declare-fun call!363348 () (InoxSet Context!8058))

(assert (=> bm!363343 (= call!363348 (derivationStepZipper!995 call!363302 call!363352))))

(declare-fun d!1669910 () Bool)

(declare-fun e!3223972 () Bool)

(assert (=> d!1669910 e!3223972))

(declare-fun res!2198941 () Bool)

(assert (=> d!1669910 (=> (not res!2198941) (not e!3223972))))

(assert (=> d!1669910 (= res!2198941 (= (++!13165 (_1!35223 lt!2131130) (_2!35223 lt!2131130)) input!5817))))

(assert (=> d!1669910 (= lt!2131130 e!3223974)))

(declare-fun c!890830 () Bool)

(assert (=> d!1669910 (= c!890830 (lostCauseZipper!1336 call!363302))))

(declare-fun lt!2131146 () Unit!151878)

(declare-fun Unit!151891 () Unit!151878)

(assert (=> d!1669910 (= lt!2131146 Unit!151891)))

(assert (=> d!1669910 (= (getSuffix!3426 input!5817 lt!2130922) call!363301)))

(declare-fun lt!2131133 () Unit!151878)

(declare-fun lt!2131132 () Unit!151878)

(assert (=> d!1669910 (= lt!2131133 lt!2131132)))

(declare-fun lt!2131138 () List!60259)

(assert (=> d!1669910 (= call!363301 lt!2131138)))

(assert (=> d!1669910 (= lt!2131132 (lemmaSamePrefixThenSameSuffix!2703 lt!2130922 call!363301 lt!2130922 lt!2131138 input!5817))))

(assert (=> d!1669910 (= lt!2131138 (getSuffix!3426 input!5817 lt!2130922))))

(declare-fun lt!2131154 () Unit!151878)

(declare-fun lt!2131136 () Unit!151878)

(assert (=> d!1669910 (= lt!2131154 lt!2131136)))

(assert (=> d!1669910 (isPrefix!5778 lt!2130922 (++!13165 lt!2130922 call!363301))))

(assert (=> d!1669910 (= lt!2131136 (lemmaConcatTwoListThenFirstIsPrefix!3597 lt!2130922 call!363301))))

(assert (=> d!1669910 (= (++!13165 lt!2130922 call!363301) input!5817)))

(assert (=> d!1669910 (= (findLongestMatchInnerZipper!301 call!363302 lt!2130922 (+ (size!39681 testedP!294) 1) call!363301 input!5817 (size!39681 input!5817)) lt!2131130)))

(declare-fun b!5174024 () Bool)

(assert (=> b!5174024 (= e!3223967 e!3223968)))

(assert (=> b!5174024 (= lt!2131129 call!363346)))

(declare-fun c!890828 () Bool)

(assert (=> b!5174024 (= c!890828 (isEmpty!32195 (_1!35223 lt!2131129)))))

(declare-fun bm!363347 () Bool)

(assert (=> bm!363347 (= call!363346 (findLongestMatchInnerZipper!301 call!363348 lt!2131134 (+ (size!39681 testedP!294) 1 1) call!363347 input!5817 (size!39681 input!5817)))))

(declare-fun bm!363348 () Bool)

(assert (=> bm!363348 (= call!363353 (lemmaIsPrefixRefl!3783 input!5817 input!5817))))

(declare-fun b!5174025 () Bool)

(assert (=> b!5174025 (= e!3223972 e!3223969)))

(declare-fun res!2198942 () Bool)

(assert (=> b!5174025 (=> res!2198942 e!3223969)))

(assert (=> b!5174025 (= res!2198942 (isEmpty!32195 (_1!35223 lt!2131130)))))

(assert (= (and d!1669910 c!890830) b!5174021))

(assert (= (and d!1669910 (not c!890830)) b!5174013))

(assert (= (and b!5174013 c!890829) b!5174018))

(assert (= (and b!5174013 (not c!890829)) b!5174015))

(assert (= (and b!5174018 c!890826) b!5174017))

(assert (= (and b!5174018 (not c!890826)) b!5174016))

(assert (= (and b!5174015 c!890825) b!5174022))

(assert (= (and b!5174015 (not c!890825)) b!5174020))

(assert (= (and b!5174015 c!890827) b!5174024))

(assert (= (and b!5174015 (not c!890827)) b!5174012))

(assert (= (and b!5174024 c!890828) b!5174023))

(assert (= (and b!5174024 (not c!890828)) b!5174014))

(assert (= (or b!5174024 b!5174012) bm!363341))

(assert (= (or b!5174024 b!5174012) bm!363344))

(assert (= (or b!5174024 b!5174012) bm!363343))

(assert (= (or b!5174024 b!5174012) bm!363347))

(assert (= (or b!5174018 b!5174022) bm!363348))

(assert (= (or b!5174018 b!5174015) bm!363342))

(assert (= (or b!5174018 b!5174022) bm!363345))

(assert (= (or b!5174018 b!5174022) bm!363346))

(assert (= (and d!1669910 res!2198941) b!5174025))

(assert (= (and b!5174025 (not res!2198942)) b!5174019))

(declare-fun m!6227822 () Bool)

(assert (=> bm!363344 m!6227822))

(declare-fun m!6227824 () Bool)

(assert (=> b!5174019 m!6227824))

(declare-fun m!6227826 () Bool)

(assert (=> b!5174019 m!6227826))

(declare-fun m!6227828 () Bool)

(assert (=> bm!363346 m!6227828))

(declare-fun m!6227830 () Bool)

(assert (=> b!5174025 m!6227830))

(assert (=> bm!363347 m!6227312))

(declare-fun m!6227832 () Bool)

(assert (=> bm!363347 m!6227832))

(declare-fun m!6227834 () Bool)

(assert (=> d!1669910 m!6227834))

(declare-fun m!6227836 () Bool)

(assert (=> d!1669910 m!6227836))

(declare-fun m!6227838 () Bool)

(assert (=> d!1669910 m!6227838))

(declare-fun m!6227840 () Bool)

(assert (=> d!1669910 m!6227840))

(declare-fun m!6227842 () Bool)

(assert (=> d!1669910 m!6227842))

(assert (=> d!1669910 m!6227836))

(declare-fun m!6227844 () Bool)

(assert (=> d!1669910 m!6227844))

(declare-fun m!6227846 () Bool)

(assert (=> d!1669910 m!6227846))

(assert (=> bm!363348 m!6227408))

(declare-fun m!6227848 () Bool)

(assert (=> bm!363342 m!6227848))

(declare-fun m!6227850 () Bool)

(assert (=> b!5174015 m!6227850))

(declare-fun m!6227852 () Bool)

(assert (=> b!5174015 m!6227852))

(declare-fun m!6227854 () Bool)

(assert (=> b!5174015 m!6227854))

(assert (=> b!5174015 m!6227842))

(declare-fun m!6227856 () Bool)

(assert (=> b!5174015 m!6227856))

(assert (=> b!5174015 m!6227854))

(declare-fun m!6227858 () Bool)

(assert (=> b!5174015 m!6227858))

(assert (=> b!5174015 m!6227826))

(assert (=> b!5174015 m!6227842))

(declare-fun m!6227860 () Bool)

(assert (=> b!5174015 m!6227860))

(declare-fun m!6227862 () Bool)

(assert (=> b!5174015 m!6227862))

(assert (=> b!5174015 m!6227312))

(assert (=> b!5174015 m!6227822))

(declare-fun m!6227864 () Bool)

(assert (=> b!5174015 m!6227864))

(declare-fun m!6227866 () Bool)

(assert (=> b!5174015 m!6227866))

(assert (=> b!5174015 m!6227860))

(declare-fun m!6227868 () Bool)

(assert (=> b!5174015 m!6227868))

(assert (=> bm!363345 m!6227426))

(declare-fun m!6227870 () Bool)

(assert (=> bm!363343 m!6227870))

(assert (=> bm!363341 m!6227850))

(declare-fun m!6227872 () Bool)

(assert (=> b!5174024 m!6227872))

(assert (=> bm!363301 d!1669910))

(declare-fun d!1669912 () Bool)

(declare-fun c!890831 () Bool)

(assert (=> d!1669912 (= c!890831 ((_ is Cons!60135) (t!373412 testedP!294)))))

(declare-fun e!3223975 () (InoxSet Context!8058))

(assert (=> d!1669912 (= (derivationZipper!268 (derivationStepZipper!995 baseZ!62 (h!66583 testedP!294)) (t!373412 testedP!294)) e!3223975)))

(declare-fun b!5174026 () Bool)

(assert (=> b!5174026 (= e!3223975 (derivationZipper!268 (derivationStepZipper!995 (derivationStepZipper!995 baseZ!62 (h!66583 testedP!294)) (h!66583 (t!373412 testedP!294))) (t!373412 (t!373412 testedP!294))))))

(declare-fun b!5174027 () Bool)

(assert (=> b!5174027 (= e!3223975 (derivationStepZipper!995 baseZ!62 (h!66583 testedP!294)))))

(assert (= (and d!1669912 c!890831) b!5174026))

(assert (= (and d!1669912 (not c!890831)) b!5174027))

(assert (=> b!5174026 m!6227364))

(declare-fun m!6227874 () Bool)

(assert (=> b!5174026 m!6227874))

(assert (=> b!5174026 m!6227874))

(declare-fun m!6227876 () Bool)

(assert (=> b!5174026 m!6227876))

(assert (=> b!5173694 d!1669912))

(declare-fun d!1669914 () Bool)

(assert (=> d!1669914 true))

(declare-fun lambda!258380 () Int)

(declare-fun flatMap!454 ((InoxSet Context!8058) Int) (InoxSet Context!8058))

(assert (=> d!1669914 (= (derivationStepZipper!995 baseZ!62 (h!66583 testedP!294)) (flatMap!454 baseZ!62 lambda!258380))))

(declare-fun bs!1203875 () Bool)

(assert (= bs!1203875 d!1669914))

(declare-fun m!6227878 () Bool)

(assert (=> bs!1203875 m!6227878))

(assert (=> b!5173694 d!1669914))

(declare-fun d!1669916 () Bool)

(declare-fun c!890834 () Bool)

(assert (=> d!1669916 (= c!890834 (isEmpty!32195 (tail!10166 (_1!35223 lt!2130850))))))

(declare-fun e!3223976 () Bool)

(assert (=> d!1669916 (= (matchZipper!981 (derivationStepZipper!995 baseZ!62 (head!11067 (_1!35223 lt!2130850))) (tail!10166 (_1!35223 lt!2130850))) e!3223976)))

(declare-fun b!5174030 () Bool)

(assert (=> b!5174030 (= e!3223976 (nullableZipper!1187 (derivationStepZipper!995 baseZ!62 (head!11067 (_1!35223 lt!2130850)))))))

(declare-fun b!5174031 () Bool)

(assert (=> b!5174031 (= e!3223976 (matchZipper!981 (derivationStepZipper!995 (derivationStepZipper!995 baseZ!62 (head!11067 (_1!35223 lt!2130850))) (head!11067 (tail!10166 (_1!35223 lt!2130850)))) (tail!10166 (tail!10166 (_1!35223 lt!2130850)))))))

(assert (= (and d!1669916 c!890834) b!5174030))

(assert (= (and d!1669916 (not c!890834)) b!5174031))

(assert (=> d!1669916 m!6227514))

(declare-fun m!6227880 () Bool)

(assert (=> d!1669916 m!6227880))

(assert (=> b!5174030 m!6227512))

(declare-fun m!6227882 () Bool)

(assert (=> b!5174030 m!6227882))

(assert (=> b!5174031 m!6227514))

(declare-fun m!6227884 () Bool)

(assert (=> b!5174031 m!6227884))

(assert (=> b!5174031 m!6227512))

(assert (=> b!5174031 m!6227884))

(declare-fun m!6227886 () Bool)

(assert (=> b!5174031 m!6227886))

(assert (=> b!5174031 m!6227514))

(declare-fun m!6227888 () Bool)

(assert (=> b!5174031 m!6227888))

(assert (=> b!5174031 m!6227886))

(assert (=> b!5174031 m!6227888))

(declare-fun m!6227890 () Bool)

(assert (=> b!5174031 m!6227890))

(assert (=> b!5173861 d!1669916))

(declare-fun bs!1203876 () Bool)

(declare-fun d!1669918 () Bool)

(assert (= bs!1203876 (and d!1669918 d!1669914)))

(declare-fun lambda!258381 () Int)

(assert (=> bs!1203876 (= (= (head!11067 (_1!35223 lt!2130850)) (h!66583 testedP!294)) (= lambda!258381 lambda!258380))))

(assert (=> d!1669918 true))

(assert (=> d!1669918 (= (derivationStepZipper!995 baseZ!62 (head!11067 (_1!35223 lt!2130850))) (flatMap!454 baseZ!62 lambda!258381))))

(declare-fun bs!1203877 () Bool)

(assert (= bs!1203877 d!1669918))

(declare-fun m!6227892 () Bool)

(assert (=> bs!1203877 m!6227892))

(assert (=> b!5173861 d!1669918))

(declare-fun d!1669920 () Bool)

(assert (=> d!1669920 (= (head!11067 (_1!35223 lt!2130850)) (h!66583 (_1!35223 lt!2130850)))))

(assert (=> b!5173861 d!1669920))

(declare-fun d!1669922 () Bool)

(assert (=> d!1669922 (= (tail!10166 (_1!35223 lt!2130850)) (t!373412 (_1!35223 lt!2130850)))))

(assert (=> b!5173861 d!1669922))

(declare-fun d!1669924 () Bool)

(assert (=> d!1669924 (= input!5817 testedP!294)))

(declare-fun lt!2131157 () Unit!151878)

(declare-fun choose!38382 (List!60259 List!60259 List!60259) Unit!151878)

(assert (=> d!1669924 (= lt!2131157 (choose!38382 input!5817 testedP!294 input!5817))))

(assert (=> d!1669924 (isPrefix!5778 input!5817 input!5817)))

(assert (=> d!1669924 (= (lemmaIsPrefixSameLengthThenSameList!1425 input!5817 testedP!294 input!5817) lt!2131157)))

(declare-fun bs!1203878 () Bool)

(assert (= bs!1203878 d!1669924))

(declare-fun m!6227894 () Bool)

(assert (=> bs!1203878 m!6227894))

(assert (=> bs!1203878 m!6227426))

(assert (=> bm!363300 d!1669924))

(declare-fun lt!2131160 () List!60259)

(declare-fun e!3223982 () Bool)

(declare-fun b!5174043 () Bool)

(assert (=> b!5174043 (= e!3223982 (or (not (= lt!2130864 Nil!60135)) (= lt!2131160 testedP!294)))))

(declare-fun d!1669926 () Bool)

(assert (=> d!1669926 e!3223982))

(declare-fun res!2198948 () Bool)

(assert (=> d!1669926 (=> (not res!2198948) (not e!3223982))))

(declare-fun content!10655 (List!60259) (InoxSet C!29560))

(assert (=> d!1669926 (= res!2198948 (= (content!10655 lt!2131160) ((_ map or) (content!10655 testedP!294) (content!10655 lt!2130864))))))

(declare-fun e!3223981 () List!60259)

(assert (=> d!1669926 (= lt!2131160 e!3223981)))

(declare-fun c!890837 () Bool)

(assert (=> d!1669926 (= c!890837 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669926 (= (++!13165 testedP!294 lt!2130864) lt!2131160)))

(declare-fun b!5174042 () Bool)

(declare-fun res!2198947 () Bool)

(assert (=> b!5174042 (=> (not res!2198947) (not e!3223982))))

(assert (=> b!5174042 (= res!2198947 (= (size!39681 lt!2131160) (+ (size!39681 testedP!294) (size!39681 lt!2130864))))))

(declare-fun b!5174041 () Bool)

(assert (=> b!5174041 (= e!3223981 (Cons!60135 (h!66583 testedP!294) (++!13165 (t!373412 testedP!294) lt!2130864)))))

(declare-fun b!5174040 () Bool)

(assert (=> b!5174040 (= e!3223981 lt!2130864)))

(assert (= (and d!1669926 c!890837) b!5174040))

(assert (= (and d!1669926 (not c!890837)) b!5174041))

(assert (= (and d!1669926 res!2198948) b!5174042))

(assert (= (and b!5174042 res!2198947) b!5174043))

(declare-fun m!6227896 () Bool)

(assert (=> d!1669926 m!6227896))

(declare-fun m!6227898 () Bool)

(assert (=> d!1669926 m!6227898))

(declare-fun m!6227900 () Bool)

(assert (=> d!1669926 m!6227900))

(declare-fun m!6227902 () Bool)

(assert (=> b!5174042 m!6227902))

(assert (=> b!5174042 m!6227308))

(declare-fun m!6227904 () Bool)

(assert (=> b!5174042 m!6227904))

(declare-fun m!6227906 () Bool)

(assert (=> b!5174041 m!6227906))

(assert (=> d!1669740 d!1669926))

(assert (=> d!1669740 d!1669734))

(assert (=> d!1669740 d!1669746))

(assert (=> d!1669772 d!1669768))

(declare-fun d!1669928 () Bool)

(declare-fun c!890838 () Bool)

(assert (=> d!1669928 (= c!890838 (isEmpty!32195 Nil!60135))))

(declare-fun e!3223983 () Bool)

(assert (=> d!1669928 (= (matchZipper!981 (derivationZipper!268 baseZ!62 testedP!294) Nil!60135) e!3223983)))

(declare-fun b!5174044 () Bool)

(assert (=> b!5174044 (= e!3223983 (nullableZipper!1187 (derivationZipper!268 baseZ!62 testedP!294)))))

(declare-fun b!5174045 () Bool)

(assert (=> b!5174045 (= e!3223983 (matchZipper!981 (derivationStepZipper!995 (derivationZipper!268 baseZ!62 testedP!294) (head!11067 Nil!60135)) (tail!10166 Nil!60135)))))

(assert (= (and d!1669928 c!890838) b!5174044))

(assert (= (and d!1669928 (not c!890838)) b!5174045))

(assert (=> d!1669928 m!6227524))

(assert (=> b!5174044 m!6227302))

(declare-fun m!6227908 () Bool)

(assert (=> b!5174044 m!6227908))

(assert (=> b!5174045 m!6227528))

(assert (=> b!5174045 m!6227302))

(assert (=> b!5174045 m!6227528))

(declare-fun m!6227910 () Bool)

(assert (=> b!5174045 m!6227910))

(assert (=> b!5174045 m!6227532))

(assert (=> b!5174045 m!6227910))

(assert (=> b!5174045 m!6227532))

(declare-fun m!6227912 () Bool)

(assert (=> b!5174045 m!6227912))

(assert (=> d!1669772 d!1669928))

(assert (=> d!1669772 d!1669728))

(declare-fun d!1669930 () Bool)

(assert (=> d!1669930 (= (matchZipper!981 baseZ!62 testedP!294) (matchZipper!981 (derivationZipper!268 baseZ!62 testedP!294) Nil!60135))))

(assert (=> d!1669930 true))

(declare-fun _$82!137 () Unit!151878)

(assert (=> d!1669930 (= (choose!38376 baseZ!62 testedP!294) _$82!137)))

(declare-fun bs!1203879 () Bool)

(assert (= bs!1203879 d!1669930))

(assert (=> bs!1203879 m!6227322))

(assert (=> bs!1203879 m!6227302))

(assert (=> bs!1203879 m!6227302))

(assert (=> bs!1203879 m!6227536))

(assert (=> d!1669772 d!1669930))

(declare-fun d!1669932 () Bool)

(declare-fun lt!2131163 () Bool)

(declare-datatypes ((List!60262 0))(
  ( (Nil!60138) (Cons!60138 (h!66586 Context!8058) (t!373415 List!60262)) )
))
(declare-fun exists!1930 (List!60262 Int) Bool)

(declare-fun toList!8455 ((InoxSet Context!8058)) List!60262)

(assert (=> d!1669932 (= lt!2131163 (exists!1930 (toList!8455 z!4581) lambda!258351))))

(declare-fun choose!38386 ((InoxSet Context!8058) Int) Bool)

(assert (=> d!1669932 (= lt!2131163 (choose!38386 z!4581 lambda!258351))))

(assert (=> d!1669932 (= (exists!1928 z!4581 lambda!258351) lt!2131163)))

(declare-fun bs!1203880 () Bool)

(assert (= bs!1203880 d!1669932))

(declare-fun m!6227914 () Bool)

(assert (=> bs!1203880 m!6227914))

(assert (=> bs!1203880 m!6227914))

(declare-fun m!6227916 () Bool)

(assert (=> bs!1203880 m!6227916))

(declare-fun m!6227918 () Bool)

(assert (=> bs!1203880 m!6227918))

(assert (=> d!1669776 d!1669932))

(declare-fun bs!1203881 () Bool)

(declare-fun d!1669934 () Bool)

(assert (= bs!1203881 (and d!1669934 d!1669776)))

(declare-fun lambda!258382 () Int)

(assert (=> bs!1203881 (= lambda!258382 lambda!258351)))

(assert (=> d!1669934 (= (nullableZipper!1187 baseZ!62) (exists!1928 baseZ!62 lambda!258382))))

(declare-fun bs!1203882 () Bool)

(assert (= bs!1203882 d!1669934))

(declare-fun m!6227920 () Bool)

(assert (=> bs!1203882 m!6227920))

(assert (=> b!5173860 d!1669934))

(declare-fun d!1669936 () Bool)

(declare-fun e!3223986 () Bool)

(assert (=> d!1669936 e!3223986))

(declare-fun res!2198949 () Bool)

(assert (=> d!1669936 (=> res!2198949 e!3223986)))

(declare-fun lt!2131164 () Bool)

(assert (=> d!1669936 (= res!2198949 (not lt!2131164))))

(declare-fun e!3223984 () Bool)

(assert (=> d!1669936 (= lt!2131164 e!3223984)))

(declare-fun res!2198951 () Bool)

(assert (=> d!1669936 (=> res!2198951 e!3223984)))

(assert (=> d!1669936 (= res!2198951 ((_ is Nil!60135) input!5817))))

(assert (=> d!1669936 (= (isPrefix!5778 input!5817 input!5817) lt!2131164)))

(declare-fun b!5174049 () Bool)

(assert (=> b!5174049 (= e!3223986 (>= (size!39681 input!5817) (size!39681 input!5817)))))

(declare-fun b!5174047 () Bool)

(declare-fun res!2198952 () Bool)

(declare-fun e!3223985 () Bool)

(assert (=> b!5174047 (=> (not res!2198952) (not e!3223985))))

(assert (=> b!5174047 (= res!2198952 (= (head!11067 input!5817) (head!11067 input!5817)))))

(declare-fun b!5174046 () Bool)

(assert (=> b!5174046 (= e!3223984 e!3223985)))

(declare-fun res!2198950 () Bool)

(assert (=> b!5174046 (=> (not res!2198950) (not e!3223985))))

(assert (=> b!5174046 (= res!2198950 (not ((_ is Nil!60135) input!5817)))))

(declare-fun b!5174048 () Bool)

(assert (=> b!5174048 (= e!3223985 (isPrefix!5778 (tail!10166 input!5817) (tail!10166 input!5817)))))

(assert (= (and d!1669936 (not res!2198951)) b!5174046))

(assert (= (and b!5174046 res!2198950) b!5174047))

(assert (= (and b!5174047 res!2198952) b!5174048))

(assert (= (and d!1669936 (not res!2198949)) b!5174049))

(assert (=> b!5174049 m!6227312))

(assert (=> b!5174049 m!6227312))

(assert (=> b!5174047 m!6227436))

(assert (=> b!5174047 m!6227436))

(assert (=> b!5174048 m!6227382))

(assert (=> b!5174048 m!6227382))

(assert (=> b!5174048 m!6227382))

(assert (=> b!5174048 m!6227382))

(declare-fun m!6227922 () Bool)

(assert (=> b!5174048 m!6227922))

(assert (=> bm!363299 d!1669936))

(declare-fun d!1669938 () Bool)

(declare-fun e!3223989 () Bool)

(assert (=> d!1669938 e!3223989))

(declare-fun res!2198953 () Bool)

(assert (=> d!1669938 (=> res!2198953 e!3223989)))

(declare-fun lt!2131165 () Bool)

(assert (=> d!1669938 (= res!2198953 (not lt!2131165))))

(declare-fun e!3223987 () Bool)

(assert (=> d!1669938 (= lt!2131165 e!3223987)))

(declare-fun res!2198955 () Bool)

(assert (=> d!1669938 (=> res!2198955 e!3223987)))

(assert (=> d!1669938 (= res!2198955 ((_ is Nil!60135) (tail!10166 testedP!294)))))

(assert (=> d!1669938 (= (isPrefix!5778 (tail!10166 testedP!294) (tail!10166 input!5817)) lt!2131165)))

(declare-fun b!5174053 () Bool)

(assert (=> b!5174053 (= e!3223989 (>= (size!39681 (tail!10166 input!5817)) (size!39681 (tail!10166 testedP!294))))))

(declare-fun b!5174051 () Bool)

(declare-fun res!2198956 () Bool)

(declare-fun e!3223988 () Bool)

(assert (=> b!5174051 (=> (not res!2198956) (not e!3223988))))

(assert (=> b!5174051 (= res!2198956 (= (head!11067 (tail!10166 testedP!294)) (head!11067 (tail!10166 input!5817))))))

(declare-fun b!5174050 () Bool)

(assert (=> b!5174050 (= e!3223987 e!3223988)))

(declare-fun res!2198954 () Bool)

(assert (=> b!5174050 (=> (not res!2198954) (not e!3223988))))

(assert (=> b!5174050 (= res!2198954 (not ((_ is Nil!60135) (tail!10166 input!5817))))))

(declare-fun b!5174052 () Bool)

(assert (=> b!5174052 (= e!3223988 (isPrefix!5778 (tail!10166 (tail!10166 testedP!294)) (tail!10166 (tail!10166 input!5817))))))

(assert (= (and d!1669938 (not res!2198955)) b!5174050))

(assert (= (and b!5174050 res!2198954) b!5174051))

(assert (= (and b!5174051 res!2198956) b!5174052))

(assert (= (and d!1669938 (not res!2198953)) b!5174053))

(assert (=> b!5174053 m!6227382))

(assert (=> b!5174053 m!6227814))

(assert (=> b!5174053 m!6227438))

(declare-fun m!6227924 () Bool)

(assert (=> b!5174053 m!6227924))

(assert (=> b!5174051 m!6227438))

(declare-fun m!6227926 () Bool)

(assert (=> b!5174051 m!6227926))

(assert (=> b!5174051 m!6227382))

(declare-fun m!6227928 () Bool)

(assert (=> b!5174051 m!6227928))

(assert (=> b!5174052 m!6227438))

(declare-fun m!6227930 () Bool)

(assert (=> b!5174052 m!6227930))

(assert (=> b!5174052 m!6227382))

(assert (=> b!5174052 m!6227816))

(assert (=> b!5174052 m!6227930))

(assert (=> b!5174052 m!6227816))

(declare-fun m!6227932 () Bool)

(assert (=> b!5174052 m!6227932))

(assert (=> b!5173780 d!1669938))

(declare-fun d!1669940 () Bool)

(assert (=> d!1669940 (= (tail!10166 testedP!294) (t!373412 testedP!294))))

(assert (=> b!5173780 d!1669940))

(assert (=> b!5173780 d!1669904))

(declare-fun d!1669942 () Bool)

(declare-fun lt!2131166 () Int)

(assert (=> d!1669942 (>= lt!2131166 0)))

(declare-fun e!3223990 () Int)

(assert (=> d!1669942 (= lt!2131166 e!3223990)))

(declare-fun c!890839 () Bool)

(assert (=> d!1669942 (= c!890839 ((_ is Nil!60135) (_1!35223 lt!2130918)))))

(assert (=> d!1669942 (= (size!39681 (_1!35223 lt!2130918)) lt!2131166)))

(declare-fun b!5174054 () Bool)

(assert (=> b!5174054 (= e!3223990 0)))

(declare-fun b!5174055 () Bool)

(assert (=> b!5174055 (= e!3223990 (+ 1 (size!39681 (t!373412 (_1!35223 lt!2130918)))))))

(assert (= (and d!1669942 c!890839) b!5174054))

(assert (= (and d!1669942 (not c!890839)) b!5174055))

(declare-fun m!6227934 () Bool)

(assert (=> b!5174055 m!6227934))

(assert (=> b!5173761 d!1669942))

(assert (=> b!5173761 d!1669746))

(declare-fun d!1669944 () Bool)

(declare-fun lt!2131167 () Int)

(assert (=> d!1669944 (>= lt!2131167 0)))

(declare-fun e!3223991 () Int)

(assert (=> d!1669944 (= lt!2131167 e!3223991)))

(declare-fun c!890840 () Bool)

(assert (=> d!1669944 (= c!890840 ((_ is Nil!60135) (t!373412 testedP!294)))))

(assert (=> d!1669944 (= (size!39681 (t!373412 testedP!294)) lt!2131167)))

(declare-fun b!5174056 () Bool)

(assert (=> b!5174056 (= e!3223991 0)))

(declare-fun b!5174057 () Bool)

(assert (=> b!5174057 (= e!3223991 (+ 1 (size!39681 (t!373412 (t!373412 testedP!294)))))))

(assert (= (and d!1669944 c!890840) b!5174056))

(assert (= (and d!1669944 (not c!890840)) b!5174057))

(declare-fun m!6227936 () Bool)

(assert (=> b!5174057 m!6227936))

(assert (=> b!5173769 d!1669944))

(declare-fun d!1669946 () Bool)

(assert (=> d!1669946 (= (head!11067 (getSuffix!3426 input!5817 testedP!294)) (h!66583 (getSuffix!3426 input!5817 testedP!294)))))

(assert (=> bm!363298 d!1669946))

(declare-fun d!1669948 () Bool)

(declare-fun c!890841 () Bool)

(assert (=> d!1669948 (= c!890841 (isEmpty!32195 (tail!10166 testedP!294)))))

(declare-fun e!3223992 () Bool)

(assert (=> d!1669948 (= (matchZipper!981 (derivationStepZipper!995 baseZ!62 (head!11067 testedP!294)) (tail!10166 testedP!294)) e!3223992)))

(declare-fun b!5174058 () Bool)

(assert (=> b!5174058 (= e!3223992 (nullableZipper!1187 (derivationStepZipper!995 baseZ!62 (head!11067 testedP!294))))))

(declare-fun b!5174059 () Bool)

(assert (=> b!5174059 (= e!3223992 (matchZipper!981 (derivationStepZipper!995 (derivationStepZipper!995 baseZ!62 (head!11067 testedP!294)) (head!11067 (tail!10166 testedP!294))) (tail!10166 (tail!10166 testedP!294))))))

(assert (= (and d!1669948 c!890841) b!5174058))

(assert (= (and d!1669948 (not c!890841)) b!5174059))

(assert (=> d!1669948 m!6227438))

(declare-fun m!6227938 () Bool)

(assert (=> d!1669948 m!6227938))

(assert (=> b!5174058 m!6227520))

(declare-fun m!6227940 () Bool)

(assert (=> b!5174058 m!6227940))

(assert (=> b!5174059 m!6227438))

(assert (=> b!5174059 m!6227926))

(assert (=> b!5174059 m!6227520))

(assert (=> b!5174059 m!6227926))

(declare-fun m!6227942 () Bool)

(assert (=> b!5174059 m!6227942))

(assert (=> b!5174059 m!6227438))

(assert (=> b!5174059 m!6227930))

(assert (=> b!5174059 m!6227942))

(assert (=> b!5174059 m!6227930))

(declare-fun m!6227944 () Bool)

(assert (=> b!5174059 m!6227944))

(assert (=> b!5173863 d!1669948))

(declare-fun bs!1203883 () Bool)

(declare-fun d!1669950 () Bool)

(assert (= bs!1203883 (and d!1669950 d!1669914)))

(declare-fun lambda!258383 () Int)

(assert (=> bs!1203883 (= (= (head!11067 testedP!294) (h!66583 testedP!294)) (= lambda!258383 lambda!258380))))

(declare-fun bs!1203884 () Bool)

(assert (= bs!1203884 (and d!1669950 d!1669918)))

(assert (=> bs!1203884 (= (= (head!11067 testedP!294) (head!11067 (_1!35223 lt!2130850))) (= lambda!258383 lambda!258381))))

(assert (=> d!1669950 true))

(assert (=> d!1669950 (= (derivationStepZipper!995 baseZ!62 (head!11067 testedP!294)) (flatMap!454 baseZ!62 lambda!258383))))

(declare-fun bs!1203885 () Bool)

(assert (= bs!1203885 d!1669950))

(declare-fun m!6227946 () Bool)

(assert (=> bs!1203885 m!6227946))

(assert (=> b!5173863 d!1669950))

(declare-fun d!1669952 () Bool)

(assert (=> d!1669952 (= (head!11067 testedP!294) (h!66583 testedP!294))))

(assert (=> b!5173863 d!1669952))

(assert (=> b!5173863 d!1669940))

(declare-fun bs!1203886 () Bool)

(declare-fun d!1669954 () Bool)

(assert (= bs!1203886 (and d!1669954 d!1669750)))

(declare-fun lambda!258384 () Int)

(assert (=> bs!1203886 (= lambda!258384 lambda!258347)))

(declare-fun bs!1203887 () Bool)

(assert (= bs!1203887 (and d!1669954 d!1669774)))

(assert (=> bs!1203887 (= lambda!258384 lambda!258348)))

(declare-fun bs!1203888 () Bool)

(assert (= bs!1203888 (and d!1669954 d!1669900)))

(assert (=> bs!1203888 (= lambda!258384 lambda!258377)))

(assert (=> d!1669954 (= (inv!79859 setElem!32220) (forall!14147 (exprs!4529 setElem!32220) lambda!258384))))

(declare-fun bs!1203889 () Bool)

(assert (= bs!1203889 d!1669954))

(declare-fun m!6227948 () Bool)

(assert (=> bs!1203889 m!6227948))

(assert (=> setNonEmpty!32220 d!1669954))

(assert (=> b!5173781 d!1669734))

(assert (=> b!5173781 d!1669746))

(assert (=> b!5173862 d!1669934))

(declare-fun d!1669956 () Bool)

(assert (=> d!1669956 (= (isEmpty!32195 testedP!294) ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669768 d!1669956))

(assert (=> b!5173779 d!1669952))

(declare-fun d!1669958 () Bool)

(assert (=> d!1669958 (= (head!11067 input!5817) (h!66583 input!5817))))

(assert (=> b!5173779 d!1669958))

(declare-fun d!1669960 () Bool)

(declare-fun res!2198957 () Bool)

(declare-fun e!3223993 () Bool)

(assert (=> d!1669960 (=> res!2198957 e!3223993)))

(assert (=> d!1669960 (= res!2198957 ((_ is Nil!60136) (exprs!4529 setElem!32211)))))

(assert (=> d!1669960 (= (forall!14147 (exprs!4529 setElem!32211) lambda!258348) e!3223993)))

(declare-fun b!5174060 () Bool)

(declare-fun e!3223994 () Bool)

(assert (=> b!5174060 (= e!3223993 e!3223994)))

(declare-fun res!2198958 () Bool)

(assert (=> b!5174060 (=> (not res!2198958) (not e!3223994))))

(assert (=> b!5174060 (= res!2198958 (dynLambda!23876 lambda!258348 (h!66584 (exprs!4529 setElem!32211))))))

(declare-fun b!5174061 () Bool)

(assert (=> b!5174061 (= e!3223994 (forall!14147 (t!373413 (exprs!4529 setElem!32211)) lambda!258348))))

(assert (= (and d!1669960 (not res!2198957)) b!5174060))

(assert (= (and b!5174060 res!2198958) b!5174061))

(declare-fun b_lambda!200923 () Bool)

(assert (=> (not b_lambda!200923) (not b!5174060)))

(declare-fun m!6227950 () Bool)

(assert (=> b!5174060 m!6227950))

(declare-fun m!6227952 () Bool)

(assert (=> b!5174061 m!6227952))

(assert (=> d!1669774 d!1669960))

(declare-fun bs!1203890 () Bool)

(declare-fun d!1669962 () Bool)

(assert (= bs!1203890 (and d!1669962 d!1669776)))

(declare-fun lambda!258397 () Int)

(assert (=> bs!1203890 (not (= lambda!258397 lambda!258351))))

(declare-fun bs!1203891 () Bool)

(assert (= bs!1203891 (and d!1669962 d!1669934)))

(assert (=> bs!1203891 (not (= lambda!258397 lambda!258382))))

(declare-fun bs!1203892 () Bool)

(declare-fun b!5174066 () Bool)

(assert (= bs!1203892 (and b!5174066 d!1669776)))

(declare-fun lambda!258398 () Int)

(assert (=> bs!1203892 (not (= lambda!258398 lambda!258351))))

(declare-fun bs!1203893 () Bool)

(assert (= bs!1203893 (and b!5174066 d!1669934)))

(assert (=> bs!1203893 (not (= lambda!258398 lambda!258382))))

(declare-fun bs!1203894 () Bool)

(assert (= bs!1203894 (and b!5174066 d!1669962)))

(assert (=> bs!1203894 (not (= lambda!258398 lambda!258397))))

(declare-fun bs!1203895 () Bool)

(declare-fun b!5174067 () Bool)

(assert (= bs!1203895 (and b!5174067 d!1669776)))

(declare-fun lambda!258399 () Int)

(assert (=> bs!1203895 (not (= lambda!258399 lambda!258351))))

(declare-fun bs!1203896 () Bool)

(assert (= bs!1203896 (and b!5174067 d!1669934)))

(assert (=> bs!1203896 (not (= lambda!258399 lambda!258382))))

(declare-fun bs!1203897 () Bool)

(assert (= bs!1203897 (and b!5174067 d!1669962)))

(assert (=> bs!1203897 (not (= lambda!258399 lambda!258397))))

(declare-fun bs!1203898 () Bool)

(assert (= bs!1203898 (and b!5174067 b!5174066)))

(assert (=> bs!1203898 (= lambda!258399 lambda!258398)))

(declare-fun e!3224001 () Unit!151878)

(declare-fun Unit!151894 () Unit!151878)

(assert (=> b!5174066 (= e!3224001 Unit!151894)))

(declare-fun lt!2131186 () List!60262)

(declare-fun call!363358 () List!60262)

(assert (=> b!5174066 (= lt!2131186 call!363358)))

(declare-fun lt!2131187 () Unit!151878)

(declare-fun lemmaNotForallThenExists!475 (List!60262 Int) Unit!151878)

(assert (=> b!5174066 (= lt!2131187 (lemmaNotForallThenExists!475 lt!2131186 lambda!258397))))

(declare-fun call!363359 () Bool)

(assert (=> b!5174066 call!363359))

(declare-fun lt!2131188 () Unit!151878)

(assert (=> b!5174066 (= lt!2131188 lt!2131187)))

(declare-fun bm!363353 () Bool)

(assert (=> bm!363353 (= call!363358 (toList!8455 z!4581))))

(declare-fun c!890852 () Bool)

(declare-fun bm!363354 () Bool)

(declare-fun lt!2131185 () List!60262)

(assert (=> bm!363354 (= call!363359 (exists!1930 (ite c!890852 lt!2131186 lt!2131185) (ite c!890852 lambda!258398 lambda!258399)))))

(declare-fun lt!2131189 () Bool)

(declare-datatypes ((Option!14840 0))(
  ( (None!14839) (Some!14839 (v!50868 List!60259)) )
))
(declare-fun isEmpty!32197 (Option!14840) Bool)

(declare-fun getLanguageWitness!1011 ((InoxSet Context!8058)) Option!14840)

(assert (=> d!1669962 (= lt!2131189 (isEmpty!32197 (getLanguageWitness!1011 z!4581)))))

(declare-fun forall!14149 ((InoxSet Context!8058) Int) Bool)

(assert (=> d!1669962 (= lt!2131189 (forall!14149 z!4581 lambda!258397))))

(declare-fun lt!2131190 () Unit!151878)

(assert (=> d!1669962 (= lt!2131190 e!3224001)))

(assert (=> d!1669962 (= c!890852 (not (forall!14149 z!4581 lambda!258397)))))

(assert (=> d!1669962 (= (lostCauseZipper!1336 z!4581) lt!2131189)))

(declare-fun Unit!151895 () Unit!151878)

(assert (=> b!5174067 (= e!3224001 Unit!151895)))

(assert (=> b!5174067 (= lt!2131185 call!363358)))

(declare-fun lt!2131184 () Unit!151878)

(declare-fun lemmaForallThenNotExists!442 (List!60262 Int) Unit!151878)

(assert (=> b!5174067 (= lt!2131184 (lemmaForallThenNotExists!442 lt!2131185 lambda!258397))))

(assert (=> b!5174067 (not call!363359)))

(declare-fun lt!2131191 () Unit!151878)

(assert (=> b!5174067 (= lt!2131191 lt!2131184)))

(assert (= (and d!1669962 c!890852) b!5174066))

(assert (= (and d!1669962 (not c!890852)) b!5174067))

(assert (= (or b!5174066 b!5174067) bm!363353))

(assert (= (or b!5174066 b!5174067) bm!363354))

(declare-fun m!6227954 () Bool)

(assert (=> b!5174067 m!6227954))

(declare-fun m!6227956 () Bool)

(assert (=> b!5174066 m!6227956))

(assert (=> bm!363353 m!6227914))

(declare-fun m!6227958 () Bool)

(assert (=> bm!363354 m!6227958))

(declare-fun m!6227960 () Bool)

(assert (=> d!1669962 m!6227960))

(assert (=> d!1669962 m!6227960))

(declare-fun m!6227962 () Bool)

(assert (=> d!1669962 m!6227962))

(declare-fun m!6227964 () Bool)

(assert (=> d!1669962 m!6227964))

(assert (=> d!1669962 m!6227964))

(assert (=> d!1669744 d!1669962))

(assert (=> d!1669744 d!1669740))

(declare-fun b!5174071 () Bool)

(declare-fun e!3224003 () Bool)

(declare-fun lt!2131192 () List!60259)

(assert (=> b!5174071 (= e!3224003 (or (not (= (_2!35223 lt!2130918) Nil!60135)) (= lt!2131192 (_1!35223 lt!2130918))))))

(declare-fun d!1669964 () Bool)

(assert (=> d!1669964 e!3224003))

(declare-fun res!2198960 () Bool)

(assert (=> d!1669964 (=> (not res!2198960) (not e!3224003))))

(assert (=> d!1669964 (= res!2198960 (= (content!10655 lt!2131192) ((_ map or) (content!10655 (_1!35223 lt!2130918)) (content!10655 (_2!35223 lt!2130918)))))))

(declare-fun e!3224002 () List!60259)

(assert (=> d!1669964 (= lt!2131192 e!3224002)))

(declare-fun c!890853 () Bool)

(assert (=> d!1669964 (= c!890853 ((_ is Nil!60135) (_1!35223 lt!2130918)))))

(assert (=> d!1669964 (= (++!13165 (_1!35223 lt!2130918) (_2!35223 lt!2130918)) lt!2131192)))

(declare-fun b!5174070 () Bool)

(declare-fun res!2198959 () Bool)

(assert (=> b!5174070 (=> (not res!2198959) (not e!3224003))))

(assert (=> b!5174070 (= res!2198959 (= (size!39681 lt!2131192) (+ (size!39681 (_1!35223 lt!2130918)) (size!39681 (_2!35223 lt!2130918)))))))

(declare-fun b!5174069 () Bool)

(assert (=> b!5174069 (= e!3224002 (Cons!60135 (h!66583 (_1!35223 lt!2130918)) (++!13165 (t!373412 (_1!35223 lt!2130918)) (_2!35223 lt!2130918))))))

(declare-fun b!5174068 () Bool)

(assert (=> b!5174068 (= e!3224002 (_2!35223 lt!2130918))))

(assert (= (and d!1669964 c!890853) b!5174068))

(assert (= (and d!1669964 (not c!890853)) b!5174069))

(assert (= (and d!1669964 res!2198960) b!5174070))

(assert (= (and b!5174070 res!2198959) b!5174071))

(declare-fun m!6227966 () Bool)

(assert (=> d!1669964 m!6227966))

(declare-fun m!6227968 () Bool)

(assert (=> d!1669964 m!6227968))

(declare-fun m!6227970 () Bool)

(assert (=> d!1669964 m!6227970))

(declare-fun m!6227972 () Bool)

(assert (=> b!5174070 m!6227972))

(assert (=> b!5174070 m!6227388))

(declare-fun m!6227974 () Bool)

(assert (=> b!5174070 m!6227974))

(declare-fun m!6227976 () Bool)

(assert (=> b!5174069 m!6227976))

(assert (=> d!1669744 d!1669964))

(declare-fun d!1669966 () Bool)

(assert (=> d!1669966 (= (getSuffix!3426 input!5817 testedP!294) lt!2130926)))

(declare-fun lt!2131195 () Unit!151878)

(declare-fun choose!38388 (List!60259 List!60259 List!60259 List!60259 List!60259) Unit!151878)

(assert (=> d!1669966 (= lt!2131195 (choose!38388 testedP!294 (getSuffix!3426 input!5817 testedP!294) testedP!294 lt!2130926 input!5817))))

(assert (=> d!1669966 (isPrefix!5778 testedP!294 input!5817)))

(assert (=> d!1669966 (= (lemmaSamePrefixThenSameSuffix!2703 testedP!294 (getSuffix!3426 input!5817 testedP!294) testedP!294 lt!2130926 input!5817) lt!2131195)))

(declare-fun bs!1203899 () Bool)

(assert (= bs!1203899 d!1669966))

(assert (=> bs!1203899 m!6227310))

(declare-fun m!6227978 () Bool)

(assert (=> bs!1203899 m!6227978))

(assert (=> bs!1203899 m!6227304))

(assert (=> d!1669744 d!1669966))

(declare-fun lt!2131196 () List!60259)

(declare-fun e!3224005 () Bool)

(declare-fun b!5174075 () Bool)

(assert (=> b!5174075 (= e!3224005 (or (not (= (getSuffix!3426 input!5817 testedP!294) Nil!60135)) (= lt!2131196 testedP!294)))))

(declare-fun d!1669968 () Bool)

(assert (=> d!1669968 e!3224005))

(declare-fun res!2198962 () Bool)

(assert (=> d!1669968 (=> (not res!2198962) (not e!3224005))))

(assert (=> d!1669968 (= res!2198962 (= (content!10655 lt!2131196) ((_ map or) (content!10655 testedP!294) (content!10655 (getSuffix!3426 input!5817 testedP!294)))))))

(declare-fun e!3224004 () List!60259)

(assert (=> d!1669968 (= lt!2131196 e!3224004)))

(declare-fun c!890854 () Bool)

(assert (=> d!1669968 (= c!890854 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669968 (= (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)) lt!2131196)))

(declare-fun b!5174074 () Bool)

(declare-fun res!2198961 () Bool)

(assert (=> b!5174074 (=> (not res!2198961) (not e!3224005))))

(assert (=> b!5174074 (= res!2198961 (= (size!39681 lt!2131196) (+ (size!39681 testedP!294) (size!39681 (getSuffix!3426 input!5817 testedP!294)))))))

(declare-fun b!5174073 () Bool)

(assert (=> b!5174073 (= e!3224004 (Cons!60135 (h!66583 testedP!294) (++!13165 (t!373412 testedP!294) (getSuffix!3426 input!5817 testedP!294))))))

(declare-fun b!5174072 () Bool)

(assert (=> b!5174072 (= e!3224004 (getSuffix!3426 input!5817 testedP!294))))

(assert (= (and d!1669968 c!890854) b!5174072))

(assert (= (and d!1669968 (not c!890854)) b!5174073))

(assert (= (and d!1669968 res!2198962) b!5174074))

(assert (= (and b!5174074 res!2198961) b!5174075))

(declare-fun m!6227980 () Bool)

(assert (=> d!1669968 m!6227980))

(assert (=> d!1669968 m!6227898))

(assert (=> d!1669968 m!6227310))

(declare-fun m!6227982 () Bool)

(assert (=> d!1669968 m!6227982))

(declare-fun m!6227984 () Bool)

(assert (=> b!5174074 m!6227984))

(assert (=> b!5174074 m!6227308))

(assert (=> b!5174074 m!6227310))

(declare-fun m!6227986 () Bool)

(assert (=> b!5174074 m!6227986))

(assert (=> b!5174073 m!6227310))

(declare-fun m!6227988 () Bool)

(assert (=> b!5174073 m!6227988))

(assert (=> d!1669744 d!1669968))

(declare-fun d!1669970 () Bool)

(declare-fun e!3224008 () Bool)

(assert (=> d!1669970 e!3224008))

(declare-fun res!2198963 () Bool)

(assert (=> d!1669970 (=> res!2198963 e!3224008)))

(declare-fun lt!2131197 () Bool)

(assert (=> d!1669970 (= res!2198963 (not lt!2131197))))

(declare-fun e!3224006 () Bool)

(assert (=> d!1669970 (= lt!2131197 e!3224006)))

(declare-fun res!2198965 () Bool)

(assert (=> d!1669970 (=> res!2198965 e!3224006)))

(assert (=> d!1669970 (= res!2198965 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669970 (= (isPrefix!5778 testedP!294 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294))) lt!2131197)))

(declare-fun b!5174079 () Bool)

(assert (=> b!5174079 (= e!3224008 (>= (size!39681 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294))) (size!39681 testedP!294)))))

(declare-fun b!5174077 () Bool)

(declare-fun res!2198966 () Bool)

(declare-fun e!3224007 () Bool)

(assert (=> b!5174077 (=> (not res!2198966) (not e!3224007))))

(assert (=> b!5174077 (= res!2198966 (= (head!11067 testedP!294) (head!11067 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))))

(declare-fun b!5174076 () Bool)

(assert (=> b!5174076 (= e!3224006 e!3224007)))

(declare-fun res!2198964 () Bool)

(assert (=> b!5174076 (=> (not res!2198964) (not e!3224007))))

(assert (=> b!5174076 (= res!2198964 (not ((_ is Nil!60135) (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))))

(declare-fun b!5174078 () Bool)

(assert (=> b!5174078 (= e!3224007 (isPrefix!5778 (tail!10166 testedP!294) (tail!10166 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))))

(assert (= (and d!1669970 (not res!2198965)) b!5174076))

(assert (= (and b!5174076 res!2198964) b!5174077))

(assert (= (and b!5174077 res!2198966) b!5174078))

(assert (= (and d!1669970 (not res!2198963)) b!5174079))

(assert (=> b!5174079 m!6227398))

(declare-fun m!6227990 () Bool)

(assert (=> b!5174079 m!6227990))

(assert (=> b!5174079 m!6227308))

(assert (=> b!5174077 m!6227434))

(assert (=> b!5174077 m!6227398))

(declare-fun m!6227992 () Bool)

(assert (=> b!5174077 m!6227992))

(assert (=> b!5174078 m!6227438))

(assert (=> b!5174078 m!6227398))

(declare-fun m!6227994 () Bool)

(assert (=> b!5174078 m!6227994))

(assert (=> b!5174078 m!6227438))

(assert (=> b!5174078 m!6227994))

(declare-fun m!6227996 () Bool)

(assert (=> b!5174078 m!6227996))

(assert (=> d!1669744 d!1669970))

(declare-fun d!1669972 () Bool)

(assert (=> d!1669972 (isPrefix!5778 testedP!294 (++!13165 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))

(declare-fun lt!2131200 () Unit!151878)

(declare-fun choose!38389 (List!60259 List!60259) Unit!151878)

(assert (=> d!1669972 (= lt!2131200 (choose!38389 testedP!294 (getSuffix!3426 input!5817 testedP!294)))))

(assert (=> d!1669972 (= (lemmaConcatTwoListThenFirstIsPrefix!3597 testedP!294 (getSuffix!3426 input!5817 testedP!294)) lt!2131200)))

(declare-fun bs!1203900 () Bool)

(assert (= bs!1203900 d!1669972))

(assert (=> bs!1203900 m!6227310))

(assert (=> bs!1203900 m!6227398))

(assert (=> bs!1203900 m!6227398))

(assert (=> bs!1203900 m!6227400))

(assert (=> bs!1203900 m!6227310))

(declare-fun m!6227998 () Bool)

(assert (=> bs!1203900 m!6227998))

(assert (=> d!1669744 d!1669972))

(declare-fun d!1669974 () Bool)

(declare-fun lt!2131201 () Int)

(assert (=> d!1669974 (>= lt!2131201 0)))

(declare-fun e!3224009 () Int)

(assert (=> d!1669974 (= lt!2131201 e!3224009)))

(declare-fun c!890855 () Bool)

(assert (=> d!1669974 (= c!890855 ((_ is Nil!60135) (t!373412 input!5817)))))

(assert (=> d!1669974 (= (size!39681 (t!373412 input!5817)) lt!2131201)))

(declare-fun b!5174080 () Bool)

(assert (=> b!5174080 (= e!3224009 0)))

(declare-fun b!5174081 () Bool)

(assert (=> b!5174081 (= e!3224009 (+ 1 (size!39681 (t!373412 (t!373412 input!5817)))))))

(assert (= (and d!1669974 c!890855) b!5174080))

(assert (= (and d!1669974 (not c!890855)) b!5174081))

(declare-fun m!6228000 () Bool)

(assert (=> b!5174081 m!6228000))

(assert (=> b!5173707 d!1669974))

(declare-fun e!3224011 () Bool)

(declare-fun b!5174085 () Bool)

(declare-fun lt!2131202 () List!60259)

(assert (=> b!5174085 (= e!3224011 (or (not (= (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135) Nil!60135)) (= lt!2131202 testedP!294)))))

(declare-fun d!1669976 () Bool)

(assert (=> d!1669976 e!3224011))

(declare-fun res!2198968 () Bool)

(assert (=> d!1669976 (=> (not res!2198968) (not e!3224011))))

(assert (=> d!1669976 (= res!2198968 (= (content!10655 lt!2131202) ((_ map or) (content!10655 testedP!294) (content!10655 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)))))))

(declare-fun e!3224010 () List!60259)

(assert (=> d!1669976 (= lt!2131202 e!3224010)))

(declare-fun c!890856 () Bool)

(assert (=> d!1669976 (= c!890856 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669976 (= (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)) lt!2131202)))

(declare-fun b!5174084 () Bool)

(declare-fun res!2198967 () Bool)

(assert (=> b!5174084 (=> (not res!2198967) (not e!3224011))))

(assert (=> b!5174084 (= res!2198967 (= (size!39681 lt!2131202) (+ (size!39681 testedP!294) (size!39681 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)))))))

(declare-fun b!5174083 () Bool)

(assert (=> b!5174083 (= e!3224010 (Cons!60135 (h!66583 testedP!294) (++!13165 (t!373412 testedP!294) (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135))))))

(declare-fun b!5174082 () Bool)

(assert (=> b!5174082 (= e!3224010 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135))))

(assert (= (and d!1669976 c!890856) b!5174082))

(assert (= (and d!1669976 (not c!890856)) b!5174083))

(assert (= (and d!1669976 res!2198968) b!5174084))

(assert (= (and b!5174084 res!2198967) b!5174085))

(declare-fun m!6228002 () Bool)

(assert (=> d!1669976 m!6228002))

(assert (=> d!1669976 m!6227898))

(declare-fun m!6228004 () Bool)

(assert (=> d!1669976 m!6228004))

(declare-fun m!6228006 () Bool)

(assert (=> b!5174084 m!6228006))

(assert (=> b!5174084 m!6227308))

(declare-fun m!6228008 () Bool)

(assert (=> b!5174084 m!6228008))

(declare-fun m!6228010 () Bool)

(assert (=> b!5174083 m!6228010))

(assert (=> b!5173757 d!1669976))

(declare-fun lt!2131203 () List!60259)

(declare-fun e!3224013 () Bool)

(declare-fun b!5174089 () Bool)

(assert (=> b!5174089 (= e!3224013 (or (not (= lt!2130935 Nil!60135)) (= lt!2131203 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135)))))))

(declare-fun d!1669978 () Bool)

(assert (=> d!1669978 e!3224013))

(declare-fun res!2198970 () Bool)

(assert (=> d!1669978 (=> (not res!2198970) (not e!3224013))))

(assert (=> d!1669978 (= res!2198970 (= (content!10655 lt!2131203) ((_ map or) (content!10655 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135))) (content!10655 lt!2130935))))))

(declare-fun e!3224012 () List!60259)

(assert (=> d!1669978 (= lt!2131203 e!3224012)))

(declare-fun c!890857 () Bool)

(assert (=> d!1669978 (= c!890857 ((_ is Nil!60135) (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135))))))

(assert (=> d!1669978 (= (++!13165 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135)) lt!2130935) lt!2131203)))

(declare-fun b!5174088 () Bool)

(declare-fun res!2198969 () Bool)

(assert (=> b!5174088 (=> (not res!2198969) (not e!3224013))))

(assert (=> b!5174088 (= res!2198969 (= (size!39681 lt!2131203) (+ (size!39681 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135))) (size!39681 lt!2130935))))))

(declare-fun b!5174087 () Bool)

(assert (=> b!5174087 (= e!3224012 (Cons!60135 (h!66583 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135))) (++!13165 (t!373412 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135))) lt!2130935)))))

(declare-fun b!5174086 () Bool)

(assert (=> b!5174086 (= e!3224012 lt!2130935)))

(assert (= (and d!1669978 c!890857) b!5174086))

(assert (= (and d!1669978 (not c!890857)) b!5174087))

(assert (= (and d!1669978 res!2198970) b!5174088))

(assert (= (and b!5174088 res!2198969) b!5174089))

(declare-fun m!6228012 () Bool)

(assert (=> d!1669978 m!6228012))

(assert (=> d!1669978 m!6227418))

(declare-fun m!6228014 () Bool)

(assert (=> d!1669978 m!6228014))

(declare-fun m!6228016 () Bool)

(assert (=> d!1669978 m!6228016))

(declare-fun m!6228018 () Bool)

(assert (=> b!5174088 m!6228018))

(assert (=> b!5174088 m!6227418))

(declare-fun m!6228020 () Bool)

(assert (=> b!5174088 m!6228020))

(declare-fun m!6228022 () Bool)

(assert (=> b!5174088 m!6228022))

(declare-fun m!6228024 () Bool)

(assert (=> b!5174087 m!6228024))

(assert (=> b!5173757 d!1669978))

(assert (=> b!5173757 d!1669740))

(declare-fun e!3224015 () Bool)

(declare-fun b!5174093 () Bool)

(declare-fun lt!2131204 () List!60259)

(assert (=> b!5174093 (= e!3224015 (or (not (= (Cons!60135 lt!2130941 Nil!60135) Nil!60135)) (= lt!2131204 testedP!294)))))

(declare-fun d!1669980 () Bool)

(assert (=> d!1669980 e!3224015))

(declare-fun res!2198972 () Bool)

(assert (=> d!1669980 (=> (not res!2198972) (not e!3224015))))

(assert (=> d!1669980 (= res!2198972 (= (content!10655 lt!2131204) ((_ map or) (content!10655 testedP!294) (content!10655 (Cons!60135 lt!2130941 Nil!60135)))))))

(declare-fun e!3224014 () List!60259)

(assert (=> d!1669980 (= lt!2131204 e!3224014)))

(declare-fun c!890858 () Bool)

(assert (=> d!1669980 (= c!890858 ((_ is Nil!60135) testedP!294))))

(assert (=> d!1669980 (= (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135)) lt!2131204)))

(declare-fun b!5174092 () Bool)

(declare-fun res!2198971 () Bool)

(assert (=> b!5174092 (=> (not res!2198971) (not e!3224015))))

(assert (=> b!5174092 (= res!2198971 (= (size!39681 lt!2131204) (+ (size!39681 testedP!294) (size!39681 (Cons!60135 lt!2130941 Nil!60135)))))))

(declare-fun b!5174091 () Bool)

(assert (=> b!5174091 (= e!3224014 (Cons!60135 (h!66583 testedP!294) (++!13165 (t!373412 testedP!294) (Cons!60135 lt!2130941 Nil!60135))))))

(declare-fun b!5174090 () Bool)

(assert (=> b!5174090 (= e!3224014 (Cons!60135 lt!2130941 Nil!60135))))

(assert (= (and d!1669980 c!890858) b!5174090))

(assert (= (and d!1669980 (not c!890858)) b!5174091))

(assert (= (and d!1669980 res!2198972) b!5174092))

(assert (= (and b!5174092 res!2198971) b!5174093))

(declare-fun m!6228026 () Bool)

(assert (=> d!1669980 m!6228026))

(assert (=> d!1669980 m!6227898))

(declare-fun m!6228028 () Bool)

(assert (=> d!1669980 m!6228028))

(declare-fun m!6228030 () Bool)

(assert (=> b!5174092 m!6228030))

(assert (=> b!5174092 m!6227308))

(declare-fun m!6228032 () Bool)

(assert (=> b!5174092 m!6228032))

(declare-fun m!6228034 () Bool)

(assert (=> b!5174091 m!6228034))

(assert (=> b!5173757 d!1669980))

(assert (=> b!5173757 d!1669946))

(assert (=> b!5173757 d!1669746))

(declare-fun d!1669982 () Bool)

(assert (=> d!1669982 (isPrefix!5778 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)) input!5817)))

(declare-fun lt!2131207 () Unit!151878)

(declare-fun choose!38390 (List!60259 List!60259) Unit!151878)

(assert (=> d!1669982 (= lt!2131207 (choose!38390 testedP!294 input!5817))))

(assert (=> d!1669982 (isPrefix!5778 testedP!294 input!5817)))

(assert (=> d!1669982 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1087 testedP!294 input!5817) lt!2131207)))

(declare-fun bs!1203901 () Bool)

(assert (= bs!1203901 d!1669982))

(assert (=> bs!1203901 m!6227310))

(assert (=> bs!1203901 m!6227414))

(assert (=> bs!1203901 m!6227310))

(assert (=> bs!1203901 m!6227386))

(declare-fun m!6228036 () Bool)

(assert (=> bs!1203901 m!6228036))

(assert (=> bs!1203901 m!6227304))

(assert (=> bs!1203901 m!6227414))

(assert (=> bs!1203901 m!6227416))

(assert (=> b!5173757 d!1669982))

(declare-fun d!1669984 () Bool)

(declare-fun e!3224018 () Bool)

(assert (=> d!1669984 e!3224018))

(declare-fun res!2198973 () Bool)

(assert (=> d!1669984 (=> res!2198973 e!3224018)))

(declare-fun lt!2131208 () Bool)

(assert (=> d!1669984 (= res!2198973 (not lt!2131208))))

(declare-fun e!3224016 () Bool)

(assert (=> d!1669984 (= lt!2131208 e!3224016)))

(declare-fun res!2198975 () Bool)

(assert (=> d!1669984 (=> res!2198975 e!3224016)))

(assert (=> d!1669984 (= res!2198975 ((_ is Nil!60135) (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135))))))

(assert (=> d!1669984 (= (isPrefix!5778 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)) input!5817) lt!2131208)))

(declare-fun b!5174097 () Bool)

(assert (=> b!5174097 (= e!3224018 (>= (size!39681 input!5817) (size!39681 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135)))))))

(declare-fun b!5174095 () Bool)

(declare-fun res!2198976 () Bool)

(declare-fun e!3224017 () Bool)

(assert (=> b!5174095 (=> (not res!2198976) (not e!3224017))))

(assert (=> b!5174095 (= res!2198976 (= (head!11067 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135))) (head!11067 input!5817)))))

(declare-fun b!5174094 () Bool)

(assert (=> b!5174094 (= e!3224016 e!3224017)))

(declare-fun res!2198974 () Bool)

(assert (=> b!5174094 (=> (not res!2198974) (not e!3224017))))

(assert (=> b!5174094 (= res!2198974 (not ((_ is Nil!60135) input!5817)))))

(declare-fun b!5174096 () Bool)

(assert (=> b!5174096 (= e!3224017 (isPrefix!5778 (tail!10166 (++!13165 testedP!294 (Cons!60135 (head!11067 (getSuffix!3426 input!5817 testedP!294)) Nil!60135))) (tail!10166 input!5817)))))

(assert (= (and d!1669984 (not res!2198975)) b!5174094))

(assert (= (and b!5174094 res!2198974) b!5174095))

(assert (= (and b!5174095 res!2198976) b!5174096))

(assert (= (and d!1669984 (not res!2198973)) b!5174097))

(assert (=> b!5174097 m!6227312))

(assert (=> b!5174097 m!6227414))

(declare-fun m!6228038 () Bool)

(assert (=> b!5174097 m!6228038))

(assert (=> b!5174095 m!6227414))

(declare-fun m!6228040 () Bool)

(assert (=> b!5174095 m!6228040))

(assert (=> b!5174095 m!6227436))

(assert (=> b!5174096 m!6227414))

(declare-fun m!6228042 () Bool)

(assert (=> b!5174096 m!6228042))

(assert (=> b!5174096 m!6227382))

(assert (=> b!5174096 m!6228042))

(assert (=> b!5174096 m!6227382))

(declare-fun m!6228044 () Bool)

(assert (=> b!5174096 m!6228044))

(assert (=> b!5173757 d!1669984))

(assert (=> b!5173757 d!1669734))

(assert (=> b!5173757 d!1669896))

(declare-fun d!1669986 () Bool)

(assert (=> d!1669986 (<= (size!39681 testedP!294) (size!39681 input!5817))))

(declare-fun lt!2131211 () Unit!151878)

(declare-fun choose!38391 (List!60259 List!60259) Unit!151878)

(assert (=> d!1669986 (= lt!2131211 (choose!38391 testedP!294 input!5817))))

(assert (=> d!1669986 (isPrefix!5778 testedP!294 input!5817)))

(assert (=> d!1669986 (= (lemmaIsPrefixThenSmallerEqSize!939 testedP!294 input!5817) lt!2131211)))

(declare-fun bs!1203902 () Bool)

(assert (= bs!1203902 d!1669986))

(assert (=> bs!1203902 m!6227308))

(assert (=> bs!1203902 m!6227312))

(declare-fun m!6228046 () Bool)

(assert (=> bs!1203902 m!6228046))

(assert (=> bs!1203902 m!6227304))

(assert (=> b!5173757 d!1669986))

(declare-fun d!1669988 () Bool)

(assert (=> d!1669988 (= (++!13165 (++!13165 testedP!294 (Cons!60135 lt!2130941 Nil!60135)) lt!2130935) input!5817)))

(declare-fun lt!2131214 () Unit!151878)

(declare-fun choose!38392 (List!60259 C!29560 List!60259 List!60259) Unit!151878)

(assert (=> d!1669988 (= lt!2131214 (choose!38392 testedP!294 lt!2130941 lt!2130935 input!5817))))

(assert (=> d!1669988 (= (++!13165 testedP!294 (Cons!60135 lt!2130941 lt!2130935)) input!5817)))

(assert (=> d!1669988 (= (lemmaMoveElementToOtherListKeepsConcatEq!1584 testedP!294 lt!2130941 lt!2130935 input!5817) lt!2131214)))

(declare-fun bs!1203903 () Bool)

(assert (= bs!1203903 d!1669988))

(assert (=> bs!1203903 m!6227418))

(assert (=> bs!1203903 m!6227418))

(assert (=> bs!1203903 m!6227424))

(declare-fun m!6228048 () Bool)

(assert (=> bs!1203903 m!6228048))

(declare-fun m!6228050 () Bool)

(assert (=> bs!1203903 m!6228050))

(assert (=> b!5173757 d!1669988))

(declare-fun d!1669990 () Bool)

(assert (not d!1669990))

(assert (=> b!5173865 d!1669990))

(declare-fun d!1669992 () Bool)

(assert (not d!1669992))

(assert (=> b!5173865 d!1669992))

(declare-fun d!1669994 () Bool)

(assert (not d!1669994))

(assert (=> b!5173865 d!1669994))

(declare-fun d!1669996 () Bool)

(assert (not d!1669996))

(assert (=> b!5173865 d!1669996))

(assert (=> bm!363296 d!1669776))

(declare-fun bs!1203904 () Bool)

(declare-fun d!1669998 () Bool)

(assert (= bs!1203904 (and d!1669998 d!1669962)))

(declare-fun lambda!258400 () Int)

(assert (=> bs!1203904 (not (= lambda!258400 lambda!258397))))

(declare-fun bs!1203905 () Bool)

(assert (= bs!1203905 (and d!1669998 d!1669776)))

(assert (=> bs!1203905 (= lambda!258400 lambda!258351)))

(declare-fun bs!1203906 () Bool)

(assert (= bs!1203906 (and d!1669998 d!1669934)))

(assert (=> bs!1203906 (= lambda!258400 lambda!258382)))

(declare-fun bs!1203907 () Bool)

(assert (= bs!1203907 (and d!1669998 b!5174066)))

(assert (=> bs!1203907 (not (= lambda!258400 lambda!258398))))

(declare-fun bs!1203908 () Bool)

(assert (= bs!1203908 (and d!1669998 b!5174067)))

(assert (=> bs!1203908 (not (= lambda!258400 lambda!258399))))

(assert (=> d!1669998 (= (nullableZipper!1187 lt!2130852) (exists!1928 lt!2130852 lambda!258400))))

(declare-fun bs!1203909 () Bool)

(assert (= bs!1203909 d!1669998))

(declare-fun m!6228052 () Bool)

(assert (=> bs!1203909 m!6228052))

(assert (=> b!5173864 d!1669998))

(declare-fun bs!1203910 () Bool)

(declare-fun d!1670000 () Bool)

(assert (= bs!1203910 (and d!1670000 d!1669914)))

(declare-fun lambda!258401 () Int)

(assert (=> bs!1203910 (= (= call!363306 (h!66583 testedP!294)) (= lambda!258401 lambda!258380))))

(declare-fun bs!1203911 () Bool)

(assert (= bs!1203911 (and d!1670000 d!1669918)))

(assert (=> bs!1203911 (= (= call!363306 (head!11067 (_1!35223 lt!2130850))) (= lambda!258401 lambda!258381))))

(declare-fun bs!1203912 () Bool)

(assert (= bs!1203912 (and d!1670000 d!1669950)))

(assert (=> bs!1203912 (= (= call!363306 (head!11067 testedP!294)) (= lambda!258401 lambda!258383))))

(assert (=> d!1670000 true))

(assert (=> d!1670000 (= (derivationStepZipper!995 z!4581 call!363306) (flatMap!454 z!4581 lambda!258401))))

(declare-fun bs!1203913 () Bool)

(assert (= bs!1203913 d!1670000))

(declare-fun m!6228054 () Bool)

(assert (=> bs!1203913 m!6228054))

(assert (=> bm!363297 d!1670000))

(declare-fun b!5174109 () Bool)

(declare-fun e!3224021 () Bool)

(declare-fun tp!1451585 () Bool)

(declare-fun tp!1451584 () Bool)

(assert (=> b!5174109 (= e!3224021 (and tp!1451585 tp!1451584))))

(declare-fun b!5174111 () Bool)

(declare-fun tp!1451587 () Bool)

(declare-fun tp!1451586 () Bool)

(assert (=> b!5174111 (= e!3224021 (and tp!1451587 tp!1451586))))

(declare-fun b!5174110 () Bool)

(declare-fun tp!1451588 () Bool)

(assert (=> b!5174110 (= e!3224021 tp!1451588)))

(declare-fun b!5174108 () Bool)

(assert (=> b!5174108 (= e!3224021 tp_is_empty!38543)))

(assert (=> b!5173871 (= tp!1451526 e!3224021)))

(assert (= (and b!5173871 ((_ is ElementMatch!14645) (h!66584 (exprs!4529 setElem!32211)))) b!5174108))

(assert (= (and b!5173871 ((_ is Concat!23490) (h!66584 (exprs!4529 setElem!32211)))) b!5174109))

(assert (= (and b!5173871 ((_ is Star!14645) (h!66584 (exprs!4529 setElem!32211)))) b!5174110))

(assert (= (and b!5173871 ((_ is Union!14645) (h!66584 (exprs!4529 setElem!32211)))) b!5174111))

(declare-fun b!5174112 () Bool)

(declare-fun e!3224022 () Bool)

(declare-fun tp!1451589 () Bool)

(declare-fun tp!1451590 () Bool)

(assert (=> b!5174112 (= e!3224022 (and tp!1451589 tp!1451590))))

(assert (=> b!5173871 (= tp!1451527 e!3224022)))

(assert (= (and b!5173871 ((_ is Cons!60136) (t!373413 (exprs!4529 setElem!32211)))) b!5174112))

(declare-fun b!5174113 () Bool)

(declare-fun e!3224023 () Bool)

(declare-fun tp!1451591 () Bool)

(assert (=> b!5174113 (= e!3224023 (and tp_is_empty!38543 tp!1451591))))

(assert (=> b!5173876 (= tp!1451530 e!3224023)))

(assert (= (and b!5173876 ((_ is Cons!60135) (t!373412 (t!373412 input!5817)))) b!5174113))

(declare-fun b!5174115 () Bool)

(declare-fun e!3224024 () Bool)

(declare-fun tp!1451593 () Bool)

(declare-fun tp!1451592 () Bool)

(assert (=> b!5174115 (= e!3224024 (and tp!1451593 tp!1451592))))

(declare-fun b!5174117 () Bool)

(declare-fun tp!1451595 () Bool)

(declare-fun tp!1451594 () Bool)

(assert (=> b!5174117 (= e!3224024 (and tp!1451595 tp!1451594))))

(declare-fun b!5174116 () Bool)

(declare-fun tp!1451596 () Bool)

(assert (=> b!5174116 (= e!3224024 tp!1451596)))

(declare-fun b!5174114 () Bool)

(assert (=> b!5174114 (= e!3224024 tp_is_empty!38543)))

(assert (=> b!5173870 (= tp!1451524 e!3224024)))

(assert (= (and b!5173870 ((_ is ElementMatch!14645) (h!66584 (exprs!4529 setElem!32212)))) b!5174114))

(assert (= (and b!5173870 ((_ is Concat!23490) (h!66584 (exprs!4529 setElem!32212)))) b!5174115))

(assert (= (and b!5173870 ((_ is Star!14645) (h!66584 (exprs!4529 setElem!32212)))) b!5174116))

(assert (= (and b!5173870 ((_ is Union!14645) (h!66584 (exprs!4529 setElem!32212)))) b!5174117))

(declare-fun b!5174118 () Bool)

(declare-fun e!3224025 () Bool)

(declare-fun tp!1451597 () Bool)

(declare-fun tp!1451598 () Bool)

(assert (=> b!5174118 (= e!3224025 (and tp!1451597 tp!1451598))))

(assert (=> b!5173870 (= tp!1451525 e!3224025)))

(assert (= (and b!5173870 ((_ is Cons!60136) (t!373413 (exprs!4529 setElem!32212)))) b!5174118))

(declare-fun condSetEmpty!32223 () Bool)

(assert (=> setNonEmpty!32220 (= condSetEmpty!32223 (= setRest!32220 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32223 () Bool)

(assert (=> setNonEmpty!32220 (= tp!1451539 setRes!32223)))

(declare-fun setIsEmpty!32223 () Bool)

(assert (=> setIsEmpty!32223 setRes!32223))

(declare-fun setNonEmpty!32223 () Bool)

(declare-fun e!3224026 () Bool)

(declare-fun setElem!32223 () Context!8058)

(declare-fun tp!1451600 () Bool)

(assert (=> setNonEmpty!32223 (= setRes!32223 (and tp!1451600 (inv!79859 setElem!32223) e!3224026))))

(declare-fun setRest!32223 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32223 (= setRest!32220 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32223 true) setRest!32223))))

(declare-fun b!5174119 () Bool)

(declare-fun tp!1451599 () Bool)

(assert (=> b!5174119 (= e!3224026 tp!1451599)))

(assert (= (and setNonEmpty!32220 condSetEmpty!32223) setIsEmpty!32223))

(assert (= (and setNonEmpty!32220 (not condSetEmpty!32223)) setNonEmpty!32223))

(assert (= setNonEmpty!32223 b!5174119))

(declare-fun m!6228056 () Bool)

(assert (=> setNonEmpty!32223 m!6228056))

(declare-fun b!5174120 () Bool)

(declare-fun e!3224027 () Bool)

(declare-fun tp!1451601 () Bool)

(assert (=> b!5174120 (= e!3224027 (and tp_is_empty!38543 tp!1451601))))

(assert (=> b!5173882 (= tp!1451537 e!3224027)))

(assert (= (and b!5173882 ((_ is Cons!60135) (t!373412 (t!373412 testedP!294)))) b!5174120))

(declare-fun b!5174121 () Bool)

(declare-fun e!3224028 () Bool)

(declare-fun tp!1451602 () Bool)

(declare-fun tp!1451603 () Bool)

(assert (=> b!5174121 (= e!3224028 (and tp!1451602 tp!1451603))))

(assert (=> b!5173883 (= tp!1451538 e!3224028)))

(assert (= (and b!5173883 ((_ is Cons!60136) (exprs!4529 setElem!32220))) b!5174121))

(declare-fun condSetEmpty!32224 () Bool)

(assert (=> setNonEmpty!32219 (= condSetEmpty!32224 (= setRest!32219 ((as const (Array Context!8058 Bool)) false)))))

(declare-fun setRes!32224 () Bool)

(assert (=> setNonEmpty!32219 (= tp!1451536 setRes!32224)))

(declare-fun setIsEmpty!32224 () Bool)

(assert (=> setIsEmpty!32224 setRes!32224))

(declare-fun tp!1451605 () Bool)

(declare-fun setElem!32224 () Context!8058)

(declare-fun setNonEmpty!32224 () Bool)

(declare-fun e!3224029 () Bool)

(assert (=> setNonEmpty!32224 (= setRes!32224 (and tp!1451605 (inv!79859 setElem!32224) e!3224029))))

(declare-fun setRest!32224 () (InoxSet Context!8058))

(assert (=> setNonEmpty!32224 (= setRest!32219 ((_ map or) (store ((as const (Array Context!8058 Bool)) false) setElem!32224 true) setRest!32224))))

(declare-fun b!5174122 () Bool)

(declare-fun tp!1451604 () Bool)

(assert (=> b!5174122 (= e!3224029 tp!1451604)))

(assert (= (and setNonEmpty!32219 condSetEmpty!32224) setIsEmpty!32224))

(assert (= (and setNonEmpty!32219 (not condSetEmpty!32224)) setNonEmpty!32224))

(assert (= setNonEmpty!32224 b!5174122))

(declare-fun m!6228058 () Bool)

(assert (=> setNonEmpty!32224 m!6228058))

(declare-fun b!5174123 () Bool)

(declare-fun e!3224030 () Bool)

(declare-fun tp!1451606 () Bool)

(declare-fun tp!1451607 () Bool)

(assert (=> b!5174123 (= e!3224030 (and tp!1451606 tp!1451607))))

(assert (=> b!5173881 (= tp!1451535 e!3224030)))

(assert (= (and b!5173881 ((_ is Cons!60136) (exprs!4529 setElem!32219))) b!5174123))

(declare-fun b_lambda!200925 () Bool)

(assert (= b_lambda!200923 (or d!1669774 b_lambda!200925)))

(declare-fun bs!1203914 () Bool)

(declare-fun d!1670002 () Bool)

(assert (= bs!1203914 (and d!1670002 d!1669774)))

(declare-fun validRegex!6404 (Regex!14645) Bool)

(assert (=> bs!1203914 (= (dynLambda!23876 lambda!258348 (h!66584 (exprs!4529 setElem!32211))) (validRegex!6404 (h!66584 (exprs!4529 setElem!32211))))))

(declare-fun m!6228060 () Bool)

(assert (=> bs!1203914 m!6228060))

(assert (=> b!5174060 d!1670002))

(declare-fun b_lambda!200927 () Bool)

(assert (= b_lambda!200921 (or d!1669750 b_lambda!200927)))

(declare-fun bs!1203915 () Bool)

(declare-fun d!1670004 () Bool)

(assert (= bs!1203915 (and d!1670004 d!1669750)))

(assert (=> bs!1203915 (= (dynLambda!23876 lambda!258347 (h!66584 (exprs!4529 setElem!32212))) (validRegex!6404 (h!66584 (exprs!4529 setElem!32212))))))

(declare-fun m!6228062 () Bool)

(assert (=> bs!1203915 m!6228062))

(assert (=> b!5174008 d!1670004))

(check-sat (not d!1669918) (not bm!363341) (not b!5174074) (not b!5174095) (not b!5174073) (not d!1669972) (not b!5174113) (not b!5174112) (not d!1669976) (not b!5174111) (not b!5174009) (not bm!363344) (not bm!363345) (not bm!363347) (not d!1669926) (not d!1669968) (not b!5174061) (not b!5174057) (not b!5174026) (not bs!1203915) (not b!5174092) (not b!5174024) (not d!1669982) (not d!1669900) (not b!5174055) (not b!5174067) (not d!1669924) (not b!5174048) (not bs!1203914) (not b!5174078) (not d!1669978) (not b!5174059) (not d!1669966) tp_is_empty!38543 (not b!5174123) (not b!5174044) (not b!5174097) (not d!1669986) (not b!5174110) (not d!1669932) (not d!1669950) (not d!1669988) (not bm!363353) (not b!5174118) (not d!1669906) (not b_lambda!200925) (not b!5174084) (not d!1669934) (not b!5174091) (not b!5174047) (not d!1669910) (not d!1669980) (not b!5174081) (not b!5174045) (not b!5174030) (not b!5174066) (not b!5174083) (not b!5174121) (not b!5174019) (not setNonEmpty!32224) (not b!5174088) (not b!5174051) (not b!5174049) (not b_lambda!200927) (not d!1669902) (not b!5174015) (not d!1669954) (not b!5174079) (not b!5174025) (not b!5174096) (not b!5174077) (not b!5174052) (not bm!363354) (not b!5174115) (not d!1669914) (not bm!363348) (not b!5174119) (not b!5174120) (not b!5174109) (not bm!363346) (not bm!363343) (not d!1669962) (not b!5174031) (not d!1669998) (not d!1669930) (not b!5174069) (not d!1670000) (not setNonEmpty!32223) (not b!5174053) (not b!5174042) (not b!5174010) (not d!1669928) (not d!1669916) (not b!5174087) (not d!1669964) (not b!5174070) (not b!5174058) (not b!5174117) (not b!5174122) (not d!1669948) (not b!5174041) (not b!5174116) (not bm!363342))
(check-sat)
