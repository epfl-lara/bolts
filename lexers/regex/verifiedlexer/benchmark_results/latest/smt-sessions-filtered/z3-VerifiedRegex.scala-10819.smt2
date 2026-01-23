; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!556266 () Bool)

(assert start!556266)

(declare-fun b!5266688 () Bool)

(assert (=> b!5266688 true))

(assert (=> b!5266688 true))

(declare-fun lambda!265608 () Int)

(declare-fun lambda!265607 () Int)

(assert (=> b!5266688 (not (= lambda!265608 lambda!265607))))

(assert (=> b!5266688 true))

(assert (=> b!5266688 true))

(declare-fun b!5266704 () Bool)

(assert (=> b!5266704 true))

(declare-fun b!5266682 () Bool)

(declare-fun e!3275721 () Bool)

(declare-fun tp_is_empty!39023 () Bool)

(declare-fun tp!1472214 () Bool)

(assert (=> b!5266682 (= e!3275721 (and tp_is_empty!39023 tp!1472214))))

(declare-fun b!5266683 () Bool)

(declare-fun res!2234489 () Bool)

(declare-fun e!3275724 () Bool)

(assert (=> b!5266683 (=> (not res!2234489) (not e!3275724))))

(declare-datatypes ((C!30040 0))(
  ( (C!30041 (val!24722 Int)) )
))
(declare-datatypes ((Regex!14885 0))(
  ( (ElementMatch!14885 (c!911969 C!30040)) (Concat!23730 (regOne!30282 Regex!14885) (regTwo!30282 Regex!14885)) (EmptyExpr!14885) (Star!14885 (reg!15214 Regex!14885)) (EmptyLang!14885) (Union!14885 (regOne!30283 Regex!14885) (regTwo!30283 Regex!14885)) )
))
(declare-fun r!7292 () Regex!14885)

(declare-datatypes ((List!60954 0))(
  ( (Nil!60830) (Cons!60830 (h!67278 Regex!14885) (t!374145 List!60954)) )
))
(declare-datatypes ((Context!8538 0))(
  ( (Context!8539 (exprs!4769 List!60954)) )
))
(declare-datatypes ((List!60955 0))(
  ( (Nil!60831) (Cons!60831 (h!67279 Context!8538) (t!374146 List!60955)) )
))
(declare-fun zl!343 () List!60955)

(declare-fun unfocusZipper!627 (List!60955) Regex!14885)

(assert (=> b!5266683 (= res!2234489 (= r!7292 (unfocusZipper!627 zl!343)))))

(declare-fun b!5266684 () Bool)

(declare-fun res!2234491 () Bool)

(declare-fun e!3275725 () Bool)

(assert (=> b!5266684 (=> res!2234491 e!3275725)))

(get-info :version)

(assert (=> b!5266684 (= res!2234491 (not ((_ is Cons!60830) (exprs!4769 (h!67279 zl!343)))))))

(declare-fun b!5266685 () Bool)

(declare-fun res!2234485 () Bool)

(declare-fun e!3275723 () Bool)

(assert (=> b!5266685 (=> res!2234485 e!3275723)))

(declare-fun isEmpty!32779 (List!60954) Bool)

(assert (=> b!5266685 (= res!2234485 (isEmpty!32779 (t!374145 (exprs!4769 (h!67279 zl!343)))))))

(declare-fun b!5266686 () Bool)

(declare-fun e!3275720 () Bool)

(assert (=> b!5266686 (= e!3275720 true)))

(declare-datatypes ((List!60956 0))(
  ( (Nil!60832) (Cons!60832 (h!67280 C!30040) (t!374147 List!60956)) )
))
(declare-fun s!2326 () List!60956)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2155974 () (InoxSet Context!8538))

(declare-fun lt!2155971 () List!60954)

(declare-fun derivationStepZipperUp!257 (Context!8538 C!30040) (InoxSet Context!8538))

(assert (=> b!5266686 (= lt!2155974 (derivationStepZipperUp!257 (Context!8539 (Cons!60830 (regOne!30282 (regOne!30282 r!7292)) lt!2155971)) (h!67280 s!2326)))))

(declare-fun b!5266687 () Bool)

(declare-datatypes ((Unit!153058 0))(
  ( (Unit!153059) )
))
(declare-fun e!3275722 () Unit!153058)

(declare-fun Unit!153060 () Unit!153058)

(assert (=> b!5266687 (= e!3275722 Unit!153060)))

(assert (=> b!5266688 (= e!3275725 e!3275723)))

(declare-fun res!2234497 () Bool)

(assert (=> b!5266688 (=> res!2234497 e!3275723)))

(declare-fun lt!2155970 () Bool)

(declare-fun lt!2155979 () Bool)

(assert (=> b!5266688 (= res!2234497 (or (not (= lt!2155970 lt!2155979)) ((_ is Nil!60832) s!2326)))))

(declare-fun Exists!2066 (Int) Bool)

(assert (=> b!5266688 (= (Exists!2066 lambda!265607) (Exists!2066 lambda!265608))))

(declare-fun lt!2155978 () Unit!153058)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!720 (Regex!14885 Regex!14885 List!60956) Unit!153058)

(assert (=> b!5266688 (= lt!2155978 (lemmaExistCutMatchRandMatchRSpecEquivalent!720 (regOne!30282 r!7292) (regTwo!30282 r!7292) s!2326))))

(assert (=> b!5266688 (= lt!2155979 (Exists!2066 lambda!265607))))

(declare-datatypes ((tuple2!64168 0))(
  ( (tuple2!64169 (_1!35387 List!60956) (_2!35387 List!60956)) )
))
(declare-datatypes ((Option!14996 0))(
  ( (None!14995) (Some!14995 (v!51024 tuple2!64168)) )
))
(declare-fun isDefined!11699 (Option!14996) Bool)

(declare-fun findConcatSeparation!1410 (Regex!14885 Regex!14885 List!60956 List!60956 List!60956) Option!14996)

(assert (=> b!5266688 (= lt!2155979 (isDefined!11699 (findConcatSeparation!1410 (regOne!30282 r!7292) (regTwo!30282 r!7292) Nil!60832 s!2326 s!2326)))))

(declare-fun lt!2155975 () Unit!153058)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1174 (Regex!14885 Regex!14885 List!60956) Unit!153058)

(assert (=> b!5266688 (= lt!2155975 (lemmaFindConcatSeparationEquivalentToExists!1174 (regOne!30282 r!7292) (regTwo!30282 r!7292) s!2326))))

(declare-fun res!2234500 () Bool)

(assert (=> start!556266 (=> (not res!2234500) (not e!3275724))))

(declare-fun validRegex!6621 (Regex!14885) Bool)

(assert (=> start!556266 (= res!2234500 (validRegex!6621 r!7292))))

(assert (=> start!556266 e!3275724))

(declare-fun e!3275726 () Bool)

(assert (=> start!556266 e!3275726))

(declare-fun condSetEmpty!33691 () Bool)

(declare-fun z!1189 () (InoxSet Context!8538))

(assert (=> start!556266 (= condSetEmpty!33691 (= z!1189 ((as const (Array Context!8538 Bool)) false)))))

(declare-fun setRes!33691 () Bool)

(assert (=> start!556266 setRes!33691))

(declare-fun e!3275728 () Bool)

(assert (=> start!556266 e!3275728))

(assert (=> start!556266 e!3275721))

(declare-fun setIsEmpty!33691 () Bool)

(assert (=> setIsEmpty!33691 setRes!33691))

(declare-fun b!5266689 () Bool)

(declare-fun res!2234492 () Bool)

(assert (=> b!5266689 (=> res!2234492 e!3275725)))

(assert (=> b!5266689 (= res!2234492 (or ((_ is EmptyExpr!14885) r!7292) ((_ is EmptyLang!14885) r!7292) ((_ is ElementMatch!14885) r!7292) ((_ is Union!14885) r!7292) (not ((_ is Concat!23730) r!7292))))))

(declare-fun b!5266690 () Bool)

(declare-fun e!3275729 () Bool)

(declare-fun tp!1472211 () Bool)

(assert (=> b!5266690 (= e!3275729 tp!1472211)))

(declare-fun b!5266691 () Bool)

(declare-fun res!2234495 () Bool)

(assert (=> b!5266691 (=> res!2234495 e!3275725)))

(declare-fun generalisedUnion!814 (List!60954) Regex!14885)

(declare-fun unfocusZipperList!327 (List!60955) List!60954)

(assert (=> b!5266691 (= res!2234495 (not (= r!7292 (generalisedUnion!814 (unfocusZipperList!327 zl!343)))))))

(declare-fun setElem!33691 () Context!8538)

(declare-fun tp!1472216 () Bool)

(declare-fun setNonEmpty!33691 () Bool)

(declare-fun e!3275730 () Bool)

(declare-fun inv!80459 (Context!8538) Bool)

(assert (=> setNonEmpty!33691 (= setRes!33691 (and tp!1472216 (inv!80459 setElem!33691) e!3275730))))

(declare-fun setRest!33691 () (InoxSet Context!8538))

(assert (=> setNonEmpty!33691 (= z!1189 ((_ map or) (store ((as const (Array Context!8538 Bool)) false) setElem!33691 true) setRest!33691))))

(declare-fun b!5266692 () Bool)

(declare-fun tp!1472217 () Bool)

(assert (=> b!5266692 (= e!3275726 tp!1472217)))

(declare-fun b!5266693 () Bool)

(declare-fun res!2234486 () Bool)

(assert (=> b!5266693 (=> res!2234486 e!3275725)))

(declare-fun isEmpty!32780 (List!60955) Bool)

(assert (=> b!5266693 (= res!2234486 (not (isEmpty!32780 (t!374146 zl!343))))))

(declare-fun b!5266694 () Bool)

(declare-fun e!3275727 () Bool)

(declare-fun e!3275717 () Bool)

(assert (=> b!5266694 (= e!3275727 e!3275717)))

(declare-fun res!2234496 () Bool)

(assert (=> b!5266694 (=> res!2234496 e!3275717)))

(declare-fun lt!2155972 () (InoxSet Context!8538))

(declare-fun lt!2155965 () (InoxSet Context!8538))

(assert (=> b!5266694 (= res!2234496 (not (= lt!2155972 lt!2155965)))))

(declare-fun lt!2155963 () (InoxSet Context!8538))

(declare-fun lt!2155980 () (InoxSet Context!8538))

(assert (=> b!5266694 (= lt!2155965 ((_ map or) lt!2155963 lt!2155980))))

(declare-fun lt!2155967 () Context!8538)

(declare-fun derivationStepZipperDown!333 (Regex!14885 Context!8538 C!30040) (InoxSet Context!8538))

(assert (=> b!5266694 (= lt!2155980 (derivationStepZipperDown!333 (regTwo!30282 (regOne!30282 r!7292)) lt!2155967 (h!67280 s!2326)))))

(assert (=> b!5266694 (= lt!2155963 (derivationStepZipperDown!333 (regOne!30282 (regOne!30282 r!7292)) (Context!8539 lt!2155971) (h!67280 s!2326)))))

(assert (=> b!5266694 (= lt!2155971 (Cons!60830 (regTwo!30282 (regOne!30282 r!7292)) (t!374145 (exprs!4769 (h!67279 zl!343)))))))

(declare-fun b!5266695 () Bool)

(declare-fun e!3275719 () Bool)

(declare-fun matchZipper!1129 ((InoxSet Context!8538) List!60956) Bool)

(assert (=> b!5266695 (= e!3275719 (not (matchZipper!1129 lt!2155980 (t!374147 s!2326))))))

(declare-fun b!5266696 () Bool)

(declare-fun res!2234494 () Bool)

(assert (=> b!5266696 (=> res!2234494 e!3275725)))

(declare-fun generalisedConcat!554 (List!60954) Regex!14885)

(assert (=> b!5266696 (= res!2234494 (not (= r!7292 (generalisedConcat!554 (exprs!4769 (h!67279 zl!343))))))))

(declare-fun b!5266697 () Bool)

(assert (=> b!5266697 (= e!3275726 tp_is_empty!39023)))

(declare-fun b!5266698 () Bool)

(declare-fun e!3275716 () Bool)

(declare-fun lt!2155966 () (InoxSet Context!8538))

(assert (=> b!5266698 (= e!3275716 (matchZipper!1129 lt!2155966 (t!374147 s!2326)))))

(declare-fun b!5266699 () Bool)

(declare-fun res!2234498 () Bool)

(assert (=> b!5266699 (=> (not res!2234498) (not e!3275724))))

(declare-fun toList!8669 ((InoxSet Context!8538)) List!60955)

(assert (=> b!5266699 (= res!2234498 (= (toList!8669 z!1189) zl!343))))

(declare-fun b!5266700 () Bool)

(declare-fun tp!1472213 () Bool)

(declare-fun tp!1472215 () Bool)

(assert (=> b!5266700 (= e!3275726 (and tp!1472213 tp!1472215))))

(declare-fun b!5266701 () Bool)

(assert (=> b!5266701 (= e!3275717 e!3275720)))

(declare-fun res!2234490 () Bool)

(assert (=> b!5266701 (=> res!2234490 e!3275720)))

(assert (=> b!5266701 (= res!2234490 e!3275719)))

(declare-fun res!2234487 () Bool)

(assert (=> b!5266701 (=> (not res!2234487) (not e!3275719))))

(declare-fun lt!2155962 () Bool)

(assert (=> b!5266701 (= res!2234487 (not (= (matchZipper!1129 lt!2155972 (t!374147 s!2326)) lt!2155962)))))

(declare-fun e!3275718 () Bool)

(assert (=> b!5266701 (= (matchZipper!1129 lt!2155965 (t!374147 s!2326)) e!3275718)))

(declare-fun res!2234493 () Bool)

(assert (=> b!5266701 (=> res!2234493 e!3275718)))

(assert (=> b!5266701 (= res!2234493 lt!2155962)))

(assert (=> b!5266701 (= lt!2155962 (matchZipper!1129 lt!2155963 (t!374147 s!2326)))))

(declare-fun lt!2155969 () Unit!153058)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!122 ((InoxSet Context!8538) (InoxSet Context!8538) List!60956) Unit!153058)

(assert (=> b!5266701 (= lt!2155969 (lemmaZipperConcatMatchesSameAsBothZippers!122 lt!2155963 lt!2155980 (t!374147 s!2326)))))

(declare-fun b!5266702 () Bool)

(assert (=> b!5266702 (= e!3275718 (matchZipper!1129 lt!2155980 (t!374147 s!2326)))))

(declare-fun b!5266703 () Bool)

(declare-fun tp!1472212 () Bool)

(declare-fun tp!1472209 () Bool)

(assert (=> b!5266703 (= e!3275726 (and tp!1472212 tp!1472209))))

(assert (=> b!5266704 (= e!3275723 e!3275727)))

(declare-fun res!2234488 () Bool)

(assert (=> b!5266704 (=> res!2234488 e!3275727)))

(assert (=> b!5266704 (= res!2234488 (or (and ((_ is ElementMatch!14885) (regOne!30282 r!7292)) (= (c!911969 (regOne!30282 r!7292)) (h!67280 s!2326))) ((_ is Union!14885) (regOne!30282 r!7292)) (not ((_ is Concat!23730) (regOne!30282 r!7292)))))))

(declare-fun lt!2155977 () Unit!153058)

(assert (=> b!5266704 (= lt!2155977 e!3275722)))

(declare-fun c!911968 () Bool)

(declare-fun nullable!5054 (Regex!14885) Bool)

(assert (=> b!5266704 (= c!911968 (nullable!5054 (h!67278 (exprs!4769 (h!67279 zl!343)))))))

(declare-fun lambda!265609 () Int)

(declare-fun flatMap!612 ((InoxSet Context!8538) Int) (InoxSet Context!8538))

(assert (=> b!5266704 (= (flatMap!612 z!1189 lambda!265609) (derivationStepZipperUp!257 (h!67279 zl!343) (h!67280 s!2326)))))

(declare-fun lt!2155964 () Unit!153058)

(declare-fun lemmaFlatMapOnSingletonSet!144 ((InoxSet Context!8538) Context!8538 Int) Unit!153058)

(assert (=> b!5266704 (= lt!2155964 (lemmaFlatMapOnSingletonSet!144 z!1189 (h!67279 zl!343) lambda!265609))))

(assert (=> b!5266704 (= lt!2155966 (derivationStepZipperUp!257 lt!2155967 (h!67280 s!2326)))))

(assert (=> b!5266704 (= lt!2155972 (derivationStepZipperDown!333 (h!67278 (exprs!4769 (h!67279 zl!343))) lt!2155967 (h!67280 s!2326)))))

(assert (=> b!5266704 (= lt!2155967 (Context!8539 (t!374145 (exprs!4769 (h!67279 zl!343)))))))

(declare-fun lt!2155976 () (InoxSet Context!8538))

(assert (=> b!5266704 (= lt!2155976 (derivationStepZipperUp!257 (Context!8539 (Cons!60830 (h!67278 (exprs!4769 (h!67279 zl!343))) (t!374145 (exprs!4769 (h!67279 zl!343))))) (h!67280 s!2326)))))

(declare-fun b!5266705 () Bool)

(assert (=> b!5266705 (= e!3275724 (not e!3275725))))

(declare-fun res!2234499 () Bool)

(assert (=> b!5266705 (=> res!2234499 e!3275725)))

(assert (=> b!5266705 (= res!2234499 (not ((_ is Cons!60831) zl!343)))))

(declare-fun matchRSpec!1988 (Regex!14885 List!60956) Bool)

(assert (=> b!5266705 (= lt!2155970 (matchRSpec!1988 r!7292 s!2326))))

(declare-fun matchR!7070 (Regex!14885 List!60956) Bool)

(assert (=> b!5266705 (= lt!2155970 (matchR!7070 r!7292 s!2326))))

(declare-fun lt!2155973 () Unit!153058)

(declare-fun mainMatchTheorem!1988 (Regex!14885 List!60956) Unit!153058)

(assert (=> b!5266705 (= lt!2155973 (mainMatchTheorem!1988 r!7292 s!2326))))

(declare-fun b!5266706 () Bool)

(declare-fun tp!1472208 () Bool)

(assert (=> b!5266706 (= e!3275730 tp!1472208)))

(declare-fun tp!1472210 () Bool)

(declare-fun b!5266707 () Bool)

(assert (=> b!5266707 (= e!3275728 (and (inv!80459 (h!67279 zl!343)) e!3275729 tp!1472210))))

(declare-fun b!5266708 () Bool)

(declare-fun Unit!153061 () Unit!153058)

(assert (=> b!5266708 (= e!3275722 Unit!153061)))

(declare-fun lt!2155968 () Unit!153058)

(assert (=> b!5266708 (= lt!2155968 (lemmaZipperConcatMatchesSameAsBothZippers!122 lt!2155972 lt!2155966 (t!374147 s!2326)))))

(declare-fun res!2234501 () Bool)

(assert (=> b!5266708 (= res!2234501 (matchZipper!1129 lt!2155972 (t!374147 s!2326)))))

(assert (=> b!5266708 (=> res!2234501 e!3275716)))

(assert (=> b!5266708 (= (matchZipper!1129 ((_ map or) lt!2155972 lt!2155966) (t!374147 s!2326)) e!3275716)))

(declare-fun b!5266709 () Bool)

(declare-fun res!2234484 () Bool)

(assert (=> b!5266709 (=> res!2234484 e!3275727)))

(assert (=> b!5266709 (= res!2234484 (not (nullable!5054 (regOne!30282 (regOne!30282 r!7292)))))))

(assert (= (and start!556266 res!2234500) b!5266699))

(assert (= (and b!5266699 res!2234498) b!5266683))

(assert (= (and b!5266683 res!2234489) b!5266705))

(assert (= (and b!5266705 (not res!2234499)) b!5266693))

(assert (= (and b!5266693 (not res!2234486)) b!5266696))

(assert (= (and b!5266696 (not res!2234494)) b!5266684))

(assert (= (and b!5266684 (not res!2234491)) b!5266691))

(assert (= (and b!5266691 (not res!2234495)) b!5266689))

(assert (= (and b!5266689 (not res!2234492)) b!5266688))

(assert (= (and b!5266688 (not res!2234497)) b!5266685))

(assert (= (and b!5266685 (not res!2234485)) b!5266704))

(assert (= (and b!5266704 c!911968) b!5266708))

(assert (= (and b!5266704 (not c!911968)) b!5266687))

(assert (= (and b!5266708 (not res!2234501)) b!5266698))

(assert (= (and b!5266704 (not res!2234488)) b!5266709))

(assert (= (and b!5266709 (not res!2234484)) b!5266694))

(assert (= (and b!5266694 (not res!2234496)) b!5266701))

(assert (= (and b!5266701 (not res!2234493)) b!5266702))

(assert (= (and b!5266701 res!2234487) b!5266695))

(assert (= (and b!5266701 (not res!2234490)) b!5266686))

(assert (= (and start!556266 ((_ is ElementMatch!14885) r!7292)) b!5266697))

(assert (= (and start!556266 ((_ is Concat!23730) r!7292)) b!5266700))

(assert (= (and start!556266 ((_ is Star!14885) r!7292)) b!5266692))

(assert (= (and start!556266 ((_ is Union!14885) r!7292)) b!5266703))

(assert (= (and start!556266 condSetEmpty!33691) setIsEmpty!33691))

(assert (= (and start!556266 (not condSetEmpty!33691)) setNonEmpty!33691))

(assert (= setNonEmpty!33691 b!5266706))

(assert (= b!5266707 b!5266690))

(assert (= (and start!556266 ((_ is Cons!60831) zl!343)) b!5266707))

(assert (= (and start!556266 ((_ is Cons!60832) s!2326)) b!5266682))

(declare-fun m!6306684 () Bool)

(assert (=> b!5266695 m!6306684))

(assert (=> b!5266702 m!6306684))

(declare-fun m!6306686 () Bool)

(assert (=> b!5266696 m!6306686))

(declare-fun m!6306688 () Bool)

(assert (=> b!5266705 m!6306688))

(declare-fun m!6306690 () Bool)

(assert (=> b!5266705 m!6306690))

(declare-fun m!6306692 () Bool)

(assert (=> b!5266705 m!6306692))

(declare-fun m!6306694 () Bool)

(assert (=> b!5266685 m!6306694))

(declare-fun m!6306696 () Bool)

(assert (=> b!5266686 m!6306696))

(declare-fun m!6306698 () Bool)

(assert (=> b!5266694 m!6306698))

(declare-fun m!6306700 () Bool)

(assert (=> b!5266694 m!6306700))

(declare-fun m!6306702 () Bool)

(assert (=> b!5266691 m!6306702))

(assert (=> b!5266691 m!6306702))

(declare-fun m!6306704 () Bool)

(assert (=> b!5266691 m!6306704))

(declare-fun m!6306706 () Bool)

(assert (=> b!5266704 m!6306706))

(declare-fun m!6306708 () Bool)

(assert (=> b!5266704 m!6306708))

(declare-fun m!6306710 () Bool)

(assert (=> b!5266704 m!6306710))

(declare-fun m!6306712 () Bool)

(assert (=> b!5266704 m!6306712))

(declare-fun m!6306714 () Bool)

(assert (=> b!5266704 m!6306714))

(declare-fun m!6306716 () Bool)

(assert (=> b!5266704 m!6306716))

(declare-fun m!6306718 () Bool)

(assert (=> b!5266704 m!6306718))

(declare-fun m!6306720 () Bool)

(assert (=> b!5266709 m!6306720))

(declare-fun m!6306722 () Bool)

(assert (=> b!5266693 m!6306722))

(declare-fun m!6306724 () Bool)

(assert (=> b!5266683 m!6306724))

(declare-fun m!6306726 () Bool)

(assert (=> b!5266708 m!6306726))

(declare-fun m!6306728 () Bool)

(assert (=> b!5266708 m!6306728))

(declare-fun m!6306730 () Bool)

(assert (=> b!5266708 m!6306730))

(declare-fun m!6306732 () Bool)

(assert (=> setNonEmpty!33691 m!6306732))

(declare-fun m!6306734 () Bool)

(assert (=> b!5266688 m!6306734))

(declare-fun m!6306736 () Bool)

(assert (=> b!5266688 m!6306736))

(declare-fun m!6306738 () Bool)

(assert (=> b!5266688 m!6306738))

(assert (=> b!5266688 m!6306738))

(assert (=> b!5266688 m!6306734))

(declare-fun m!6306740 () Bool)

(assert (=> b!5266688 m!6306740))

(declare-fun m!6306742 () Bool)

(assert (=> b!5266688 m!6306742))

(declare-fun m!6306744 () Bool)

(assert (=> b!5266688 m!6306744))

(declare-fun m!6306746 () Bool)

(assert (=> b!5266698 m!6306746))

(declare-fun m!6306748 () Bool)

(assert (=> b!5266707 m!6306748))

(declare-fun m!6306750 () Bool)

(assert (=> b!5266699 m!6306750))

(assert (=> b!5266701 m!6306728))

(declare-fun m!6306752 () Bool)

(assert (=> b!5266701 m!6306752))

(declare-fun m!6306754 () Bool)

(assert (=> b!5266701 m!6306754))

(declare-fun m!6306756 () Bool)

(assert (=> b!5266701 m!6306756))

(declare-fun m!6306758 () Bool)

(assert (=> start!556266 m!6306758))

(check-sat (not b!5266705) (not b!5266694) (not b!5266693) (not b!5266709) (not b!5266695) (not start!556266) (not b!5266682) (not b!5266703) (not b!5266702) (not b!5266692) (not b!5266701) (not b!5266706) (not b!5266688) (not b!5266698) (not b!5266708) (not b!5266691) (not b!5266685) (not b!5266700) (not b!5266704) (not b!5266683) (not b!5266696) tp_is_empty!39023 (not b!5266707) (not b!5266686) (not setNonEmpty!33691) (not b!5266690) (not b!5266699))
(check-sat)
