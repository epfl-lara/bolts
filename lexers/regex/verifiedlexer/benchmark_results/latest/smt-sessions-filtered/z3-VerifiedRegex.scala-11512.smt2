; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!630286 () Bool)

(assert start!630286)

(declare-fun b!6362731 () Bool)

(assert (=> b!6362731 true))

(assert (=> b!6362731 true))

(declare-fun lambda!350486 () Int)

(declare-fun lambda!350485 () Int)

(assert (=> b!6362731 (not (= lambda!350486 lambda!350485))))

(assert (=> b!6362731 true))

(assert (=> b!6362731 true))

(declare-fun b!6362719 () Bool)

(assert (=> b!6362719 true))

(declare-fun b!6362715 () Bool)

(declare-fun res!2617928 () Bool)

(declare-fun e!3863476 () Bool)

(assert (=> b!6362715 (=> (not res!2617928) (not e!3863476))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32812 0))(
  ( (C!32813 (val!26108 Int)) )
))
(declare-datatypes ((Regex!16271 0))(
  ( (ElementMatch!16271 (c!1158284 C!32812)) (Concat!25116 (regOne!33054 Regex!16271) (regTwo!33054 Regex!16271)) (EmptyExpr!16271) (Star!16271 (reg!16600 Regex!16271)) (EmptyLang!16271) (Union!16271 (regOne!33055 Regex!16271) (regTwo!33055 Regex!16271)) )
))
(declare-datatypes ((List!65112 0))(
  ( (Nil!64988) (Cons!64988 (h!71436 Regex!16271) (t!378706 List!65112)) )
))
(declare-datatypes ((Context!11310 0))(
  ( (Context!11311 (exprs!6155 List!65112)) )
))
(declare-fun z!1189 () (InoxSet Context!11310))

(declare-datatypes ((List!65113 0))(
  ( (Nil!64989) (Cons!64989 (h!71437 Context!11310) (t!378707 List!65113)) )
))
(declare-fun zl!343 () List!65113)

(declare-fun toList!10055 ((InoxSet Context!11310)) List!65113)

(assert (=> b!6362715 (= res!2617928 (= (toList!10055 z!1189) zl!343))))

(declare-fun b!6362716 () Bool)

(declare-datatypes ((Unit!158415 0))(
  ( (Unit!158416) )
))
(declare-fun e!3863479 () Unit!158415)

(declare-fun Unit!158417 () Unit!158415)

(assert (=> b!6362716 (= e!3863479 Unit!158417)))

(declare-fun lt!2367003 () Unit!158415)

(declare-datatypes ((List!65114 0))(
  ( (Nil!64990) (Cons!64990 (h!71438 C!32812) (t!378708 List!65114)) )
))
(declare-fun s!2326 () List!65114)

(declare-fun lt!2367006 () (InoxSet Context!11310))

(declare-fun lt!2367005 () (InoxSet Context!11310))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1102 ((InoxSet Context!11310) (InoxSet Context!11310) List!65114) Unit!158415)

(assert (=> b!6362716 (= lt!2367003 (lemmaZipperConcatMatchesSameAsBothZippers!1102 lt!2367005 lt!2367006 (t!378708 s!2326)))))

(declare-fun res!2617941 () Bool)

(declare-fun matchZipper!2283 ((InoxSet Context!11310) List!65114) Bool)

(assert (=> b!6362716 (= res!2617941 (matchZipper!2283 lt!2367005 (t!378708 s!2326)))))

(declare-fun e!3863469 () Bool)

(assert (=> b!6362716 (=> res!2617941 e!3863469)))

(assert (=> b!6362716 (= (matchZipper!2283 ((_ map or) lt!2367005 lt!2367006) (t!378708 s!2326)) e!3863469)))

(declare-fun b!6362717 () Bool)

(declare-fun e!3863475 () Bool)

(declare-fun lt!2367010 () Context!11310)

(declare-fun inv!83924 (Context!11310) Bool)

(assert (=> b!6362717 (= e!3863475 (inv!83924 lt!2367010))))

(declare-fun lt!2367013 () (InoxSet Context!11310))

(declare-fun derivationStepZipperUp!1445 (Context!11310 C!32812) (InoxSet Context!11310))

(assert (=> b!6362717 (= lt!2367013 (derivationStepZipperUp!1445 lt!2367010 (h!71438 s!2326)))))

(declare-fun r!7292 () Regex!16271)

(declare-fun lt!2367014 () List!65112)

(assert (=> b!6362717 (= lt!2367010 (Context!11311 (Cons!64988 (reg!16600 (regOne!33054 r!7292)) lt!2367014)))))

(declare-fun b!6362718 () Bool)

(declare-fun res!2617935 () Bool)

(declare-fun e!3863473 () Bool)

(assert (=> b!6362718 (=> res!2617935 e!3863473)))

(declare-fun generalisedUnion!2115 (List!65112) Regex!16271)

(declare-fun unfocusZipperList!1692 (List!65113) List!65112)

(assert (=> b!6362718 (= res!2617935 (not (= r!7292 (generalisedUnion!2115 (unfocusZipperList!1692 zl!343)))))))

(declare-fun e!3863470 () Bool)

(declare-fun e!3863468 () Bool)

(assert (=> b!6362719 (= e!3863470 e!3863468)))

(declare-fun res!2617938 () Bool)

(assert (=> b!6362719 (=> res!2617938 e!3863468)))

(get-info :version)

(assert (=> b!6362719 (= res!2617938 (or (and ((_ is ElementMatch!16271) (regOne!33054 r!7292)) (= (c!1158284 (regOne!33054 r!7292)) (h!71438 s!2326))) ((_ is Union!16271) (regOne!33054 r!7292))))))

(declare-fun lt!2367000 () Unit!158415)

(assert (=> b!6362719 (= lt!2367000 e!3863479)))

(declare-fun c!1158283 () Bool)

(declare-fun nullable!6264 (Regex!16271) Bool)

(assert (=> b!6362719 (= c!1158283 (nullable!6264 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun lambda!350487 () Int)

(declare-fun flatMap!1776 ((InoxSet Context!11310) Int) (InoxSet Context!11310))

(assert (=> b!6362719 (= (flatMap!1776 z!1189 lambda!350487) (derivationStepZipperUp!1445 (h!71437 zl!343) (h!71438 s!2326)))))

(declare-fun lt!2367012 () Unit!158415)

(declare-fun lemmaFlatMapOnSingletonSet!1302 ((InoxSet Context!11310) Context!11310 Int) Unit!158415)

(assert (=> b!6362719 (= lt!2367012 (lemmaFlatMapOnSingletonSet!1302 z!1189 (h!71437 zl!343) lambda!350487))))

(declare-fun lt!2367001 () Context!11310)

(assert (=> b!6362719 (= lt!2367006 (derivationStepZipperUp!1445 lt!2367001 (h!71438 s!2326)))))

(declare-fun derivationStepZipperDown!1519 (Regex!16271 Context!11310 C!32812) (InoxSet Context!11310))

(assert (=> b!6362719 (= lt!2367005 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (h!71437 zl!343))) lt!2367001 (h!71438 s!2326)))))

(assert (=> b!6362719 (= lt!2367001 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun lt!2367009 () (InoxSet Context!11310))

(assert (=> b!6362719 (= lt!2367009 (derivationStepZipperUp!1445 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))) (h!71438 s!2326)))))

(declare-fun b!6362721 () Bool)

(declare-fun e!3863478 () Bool)

(declare-fun tp!1771869 () Bool)

(declare-fun e!3863474 () Bool)

(assert (=> b!6362721 (= e!3863474 (and (inv!83924 (h!71437 zl!343)) e!3863478 tp!1771869))))

(declare-fun b!6362722 () Bool)

(assert (=> b!6362722 (= e!3863469 (matchZipper!2283 lt!2367006 (t!378708 s!2326)))))

(declare-fun tp!1771872 () Bool)

(declare-fun setNonEmpty!43348 () Bool)

(declare-fun setElem!43348 () Context!11310)

(declare-fun setRes!43348 () Bool)

(declare-fun e!3863472 () Bool)

(assert (=> setNonEmpty!43348 (= setRes!43348 (and tp!1771872 (inv!83924 setElem!43348) e!3863472))))

(declare-fun setRest!43348 () (InoxSet Context!11310))

(assert (=> setNonEmpty!43348 (= z!1189 ((_ map or) (store ((as const (Array Context!11310 Bool)) false) setElem!43348 true) setRest!43348))))

(declare-fun b!6362723 () Bool)

(declare-fun e!3863477 () Bool)

(declare-fun tp!1771877 () Bool)

(assert (=> b!6362723 (= e!3863477 tp!1771877)))

(declare-fun b!6362724 () Bool)

(declare-fun tp!1771873 () Bool)

(declare-fun tp!1771871 () Bool)

(assert (=> b!6362724 (= e!3863477 (and tp!1771873 tp!1771871))))

(declare-fun b!6362725 () Bool)

(declare-fun e!3863480 () Bool)

(assert (=> b!6362725 (= e!3863480 (nullable!6264 (regOne!33054 (regOne!33054 r!7292))))))

(declare-fun b!6362726 () Bool)

(declare-fun res!2617931 () Bool)

(assert (=> b!6362726 (=> res!2617931 e!3863473)))

(assert (=> b!6362726 (= res!2617931 (not ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6362727 () Bool)

(declare-fun Unit!158418 () Unit!158415)

(assert (=> b!6362727 (= e!3863479 Unit!158418)))

(declare-fun b!6362728 () Bool)

(declare-fun tp!1771870 () Bool)

(declare-fun tp!1771876 () Bool)

(assert (=> b!6362728 (= e!3863477 (and tp!1771870 tp!1771876))))

(declare-fun b!6362729 () Bool)

(declare-fun res!2617939 () Bool)

(assert (=> b!6362729 (=> res!2617939 e!3863473)))

(declare-fun generalisedConcat!1868 (List!65112) Regex!16271)

(assert (=> b!6362729 (= res!2617939 (not (= r!7292 (generalisedConcat!1868 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6362730 () Bool)

(assert (=> b!6362730 (= e!3863468 e!3863475)))

(declare-fun res!2617932 () Bool)

(assert (=> b!6362730 (=> res!2617932 e!3863475)))

(assert (=> b!6362730 (= res!2617932 (not (= lt!2367005 (derivationStepZipperDown!1519 (reg!16600 (regOne!33054 r!7292)) (Context!11311 lt!2367014) (h!71438 s!2326)))))))

(assert (=> b!6362730 (= lt!2367014 (Cons!64988 (Star!16271 (reg!16600 (regOne!33054 r!7292))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> b!6362731 (= e!3863473 e!3863470)))

(declare-fun res!2617937 () Bool)

(assert (=> b!6362731 (=> res!2617937 e!3863470)))

(declare-fun lt!2367002 () Bool)

(declare-fun lt!2367011 () Bool)

(assert (=> b!6362731 (= res!2617937 (or (not (= lt!2367002 lt!2367011)) ((_ is Nil!64990) s!2326)))))

(declare-fun Exists!3341 (Int) Bool)

(assert (=> b!6362731 (= (Exists!3341 lambda!350485) (Exists!3341 lambda!350486))))

(declare-fun lt!2367004 () Unit!158415)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1878 (Regex!16271 Regex!16271 List!65114) Unit!158415)

(assert (=> b!6362731 (= lt!2367004 (lemmaExistCutMatchRandMatchRSpecEquivalent!1878 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326))))

(assert (=> b!6362731 (= lt!2367011 (Exists!3341 lambda!350485))))

(declare-datatypes ((tuple2!66500 0))(
  ( (tuple2!66501 (_1!36553 List!65114) (_2!36553 List!65114)) )
))
(declare-datatypes ((Option!16162 0))(
  ( (None!16161) (Some!16161 (v!52330 tuple2!66500)) )
))
(declare-fun isDefined!12865 (Option!16162) Bool)

(declare-fun findConcatSeparation!2576 (Regex!16271 Regex!16271 List!65114 List!65114 List!65114) Option!16162)

(assert (=> b!6362731 (= lt!2367011 (isDefined!12865 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326)))))

(declare-fun lt!2367008 () Unit!158415)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2340 (Regex!16271 Regex!16271 List!65114) Unit!158415)

(assert (=> b!6362731 (= lt!2367008 (lemmaFindConcatSeparationEquivalentToExists!2340 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326))))

(declare-fun b!6362732 () Bool)

(declare-fun tp_is_empty!41795 () Bool)

(assert (=> b!6362732 (= e!3863477 tp_is_empty!41795)))

(declare-fun b!6362733 () Bool)

(declare-fun res!2617936 () Bool)

(assert (=> b!6362733 (=> (not res!2617936) (not e!3863476))))

(declare-fun unfocusZipper!2013 (List!65113) Regex!16271)

(assert (=> b!6362733 (= res!2617936 (= r!7292 (unfocusZipper!2013 zl!343)))))

(declare-fun b!6362734 () Bool)

(declare-fun res!2617940 () Bool)

(assert (=> b!6362734 (=> res!2617940 e!3863468)))

(assert (=> b!6362734 (= res!2617940 (or ((_ is Concat!25116) (regOne!33054 r!7292)) (not ((_ is Star!16271) (regOne!33054 r!7292)))))))

(declare-fun b!6362735 () Bool)

(declare-fun tp!1771878 () Bool)

(assert (=> b!6362735 (= e!3863478 tp!1771878)))

(declare-fun setIsEmpty!43348 () Bool)

(assert (=> setIsEmpty!43348 setRes!43348))

(declare-fun res!2617929 () Bool)

(assert (=> start!630286 (=> (not res!2617929) (not e!3863476))))

(declare-fun validRegex!8007 (Regex!16271) Bool)

(assert (=> start!630286 (= res!2617929 (validRegex!8007 r!7292))))

(assert (=> start!630286 e!3863476))

(assert (=> start!630286 e!3863477))

(declare-fun condSetEmpty!43348 () Bool)

(assert (=> start!630286 (= condSetEmpty!43348 (= z!1189 ((as const (Array Context!11310 Bool)) false)))))

(assert (=> start!630286 setRes!43348))

(assert (=> start!630286 e!3863474))

(declare-fun e!3863471 () Bool)

(assert (=> start!630286 e!3863471))

(declare-fun b!6362720 () Bool)

(declare-fun tp!1771874 () Bool)

(assert (=> b!6362720 (= e!3863472 tp!1771874)))

(declare-fun b!6362736 () Bool)

(declare-fun tp!1771875 () Bool)

(assert (=> b!6362736 (= e!3863471 (and tp_is_empty!41795 tp!1771875))))

(declare-fun b!6362737 () Bool)

(assert (=> b!6362737 (= e!3863476 (not e!3863473))))

(declare-fun res!2617934 () Bool)

(assert (=> b!6362737 (=> res!2617934 e!3863473)))

(assert (=> b!6362737 (= res!2617934 (not ((_ is Cons!64989) zl!343)))))

(declare-fun matchRSpec!3372 (Regex!16271 List!65114) Bool)

(assert (=> b!6362737 (= lt!2367002 (matchRSpec!3372 r!7292 s!2326))))

(declare-fun matchR!8454 (Regex!16271 List!65114) Bool)

(assert (=> b!6362737 (= lt!2367002 (matchR!8454 r!7292 s!2326))))

(declare-fun lt!2367007 () Unit!158415)

(declare-fun mainMatchTheorem!3372 (Regex!16271 List!65114) Unit!158415)

(assert (=> b!6362737 (= lt!2367007 (mainMatchTheorem!3372 r!7292 s!2326))))

(declare-fun b!6362738 () Bool)

(declare-fun res!2617944 () Bool)

(assert (=> b!6362738 (=> res!2617944 e!3863473)))

(declare-fun isEmpty!37093 (List!65113) Bool)

(assert (=> b!6362738 (= res!2617944 (not (isEmpty!37093 (t!378707 zl!343))))))

(declare-fun b!6362739 () Bool)

(declare-fun res!2617942 () Bool)

(assert (=> b!6362739 (=> res!2617942 e!3863468)))

(assert (=> b!6362739 (= res!2617942 e!3863480)))

(declare-fun res!2617943 () Bool)

(assert (=> b!6362739 (=> (not res!2617943) (not e!3863480))))

(assert (=> b!6362739 (= res!2617943 ((_ is Concat!25116) (regOne!33054 r!7292)))))

(declare-fun b!6362740 () Bool)

(declare-fun res!2617930 () Bool)

(assert (=> b!6362740 (=> res!2617930 e!3863470)))

(declare-fun isEmpty!37094 (List!65112) Bool)

(assert (=> b!6362740 (= res!2617930 (isEmpty!37094 (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6362741 () Bool)

(declare-fun res!2617933 () Bool)

(assert (=> b!6362741 (=> res!2617933 e!3863473)))

(assert (=> b!6362741 (= res!2617933 (or ((_ is EmptyExpr!16271) r!7292) ((_ is EmptyLang!16271) r!7292) ((_ is ElementMatch!16271) r!7292) ((_ is Union!16271) r!7292) (not ((_ is Concat!25116) r!7292))))))

(assert (= (and start!630286 res!2617929) b!6362715))

(assert (= (and b!6362715 res!2617928) b!6362733))

(assert (= (and b!6362733 res!2617936) b!6362737))

(assert (= (and b!6362737 (not res!2617934)) b!6362738))

(assert (= (and b!6362738 (not res!2617944)) b!6362729))

(assert (= (and b!6362729 (not res!2617939)) b!6362726))

(assert (= (and b!6362726 (not res!2617931)) b!6362718))

(assert (= (and b!6362718 (not res!2617935)) b!6362741))

(assert (= (and b!6362741 (not res!2617933)) b!6362731))

(assert (= (and b!6362731 (not res!2617937)) b!6362740))

(assert (= (and b!6362740 (not res!2617930)) b!6362719))

(assert (= (and b!6362719 c!1158283) b!6362716))

(assert (= (and b!6362719 (not c!1158283)) b!6362727))

(assert (= (and b!6362716 (not res!2617941)) b!6362722))

(assert (= (and b!6362719 (not res!2617938)) b!6362739))

(assert (= (and b!6362739 res!2617943) b!6362725))

(assert (= (and b!6362739 (not res!2617942)) b!6362734))

(assert (= (and b!6362734 (not res!2617940)) b!6362730))

(assert (= (and b!6362730 (not res!2617932)) b!6362717))

(assert (= (and start!630286 ((_ is ElementMatch!16271) r!7292)) b!6362732))

(assert (= (and start!630286 ((_ is Concat!25116) r!7292)) b!6362724))

(assert (= (and start!630286 ((_ is Star!16271) r!7292)) b!6362723))

(assert (= (and start!630286 ((_ is Union!16271) r!7292)) b!6362728))

(assert (= (and start!630286 condSetEmpty!43348) setIsEmpty!43348))

(assert (= (and start!630286 (not condSetEmpty!43348)) setNonEmpty!43348))

(assert (= setNonEmpty!43348 b!6362720))

(assert (= b!6362721 b!6362735))

(assert (= (and start!630286 ((_ is Cons!64989) zl!343)) b!6362721))

(assert (= (and start!630286 ((_ is Cons!64990) s!2326)) b!6362736))

(declare-fun m!7167640 () Bool)

(assert (=> b!6362721 m!7167640))

(declare-fun m!7167642 () Bool)

(assert (=> b!6362716 m!7167642))

(declare-fun m!7167644 () Bool)

(assert (=> b!6362716 m!7167644))

(declare-fun m!7167646 () Bool)

(assert (=> b!6362716 m!7167646))

(declare-fun m!7167648 () Bool)

(assert (=> b!6362729 m!7167648))

(declare-fun m!7167650 () Bool)

(assert (=> setNonEmpty!43348 m!7167650))

(declare-fun m!7167652 () Bool)

(assert (=> b!6362737 m!7167652))

(declare-fun m!7167654 () Bool)

(assert (=> b!6362737 m!7167654))

(declare-fun m!7167656 () Bool)

(assert (=> b!6362737 m!7167656))

(declare-fun m!7167658 () Bool)

(assert (=> b!6362730 m!7167658))

(declare-fun m!7167660 () Bool)

(assert (=> b!6362725 m!7167660))

(declare-fun m!7167662 () Bool)

(assert (=> b!6362722 m!7167662))

(declare-fun m!7167664 () Bool)

(assert (=> b!6362738 m!7167664))

(declare-fun m!7167666 () Bool)

(assert (=> b!6362717 m!7167666))

(declare-fun m!7167668 () Bool)

(assert (=> b!6362717 m!7167668))

(declare-fun m!7167670 () Bool)

(assert (=> b!6362715 m!7167670))

(declare-fun m!7167672 () Bool)

(assert (=> start!630286 m!7167672))

(declare-fun m!7167674 () Bool)

(assert (=> b!6362719 m!7167674))

(declare-fun m!7167676 () Bool)

(assert (=> b!6362719 m!7167676))

(declare-fun m!7167678 () Bool)

(assert (=> b!6362719 m!7167678))

(declare-fun m!7167680 () Bool)

(assert (=> b!6362719 m!7167680))

(declare-fun m!7167682 () Bool)

(assert (=> b!6362719 m!7167682))

(declare-fun m!7167684 () Bool)

(assert (=> b!6362719 m!7167684))

(declare-fun m!7167686 () Bool)

(assert (=> b!6362719 m!7167686))

(declare-fun m!7167688 () Bool)

(assert (=> b!6362731 m!7167688))

(declare-fun m!7167690 () Bool)

(assert (=> b!6362731 m!7167690))

(declare-fun m!7167692 () Bool)

(assert (=> b!6362731 m!7167692))

(assert (=> b!6362731 m!7167688))

(assert (=> b!6362731 m!7167690))

(declare-fun m!7167694 () Bool)

(assert (=> b!6362731 m!7167694))

(declare-fun m!7167696 () Bool)

(assert (=> b!6362731 m!7167696))

(declare-fun m!7167698 () Bool)

(assert (=> b!6362731 m!7167698))

(declare-fun m!7167700 () Bool)

(assert (=> b!6362733 m!7167700))

(declare-fun m!7167702 () Bool)

(assert (=> b!6362718 m!7167702))

(assert (=> b!6362718 m!7167702))

(declare-fun m!7167704 () Bool)

(assert (=> b!6362718 m!7167704))

(declare-fun m!7167706 () Bool)

(assert (=> b!6362740 m!7167706))

(check-sat (not b!6362736) (not b!6362724) (not b!6362740) (not b!6362720) (not b!6362718) (not b!6362722) (not b!6362715) (not b!6362738) (not b!6362717) (not b!6362719) (not b!6362725) (not setNonEmpty!43348) (not start!630286) (not b!6362721) (not b!6362730) (not b!6362729) (not b!6362735) (not b!6362733) (not b!6362737) (not b!6362723) (not b!6362731) (not b!6362728) (not b!6362716) tp_is_empty!41795)
(check-sat)
(get-model)

(declare-fun b!6362846 () Bool)

(declare-fun e!3863546 () Bool)

(declare-fun e!3863548 () Bool)

(assert (=> b!6362846 (= e!3863546 e!3863548)))

(declare-fun res!2617986 () Bool)

(assert (=> b!6362846 (= res!2617986 (not (nullable!6264 (reg!16600 r!7292))))))

(assert (=> b!6362846 (=> (not res!2617986) (not e!3863548))))

(declare-fun b!6362847 () Bool)

(declare-fun e!3863549 () Bool)

(declare-fun call!542925 () Bool)

(assert (=> b!6362847 (= e!3863549 call!542925)))

(declare-fun b!6362848 () Bool)

(declare-fun e!3863544 () Bool)

(assert (=> b!6362848 (= e!3863544 e!3863546)))

(declare-fun c!1158316 () Bool)

(assert (=> b!6362848 (= c!1158316 ((_ is Star!16271) r!7292))))

(declare-fun b!6362849 () Bool)

(declare-fun e!3863543 () Bool)

(assert (=> b!6362849 (= e!3863546 e!3863543)))

(declare-fun c!1158315 () Bool)

(assert (=> b!6362849 (= c!1158315 ((_ is Union!16271) r!7292))))

(declare-fun b!6362850 () Bool)

(declare-fun res!2617983 () Bool)

(declare-fun e!3863547 () Bool)

(assert (=> b!6362850 (=> (not res!2617983) (not e!3863547))))

(declare-fun call!542924 () Bool)

(assert (=> b!6362850 (= res!2617983 call!542924)))

(assert (=> b!6362850 (= e!3863543 e!3863547)))

(declare-fun call!542926 () Bool)

(declare-fun bm!542919 () Bool)

(assert (=> bm!542919 (= call!542926 (validRegex!8007 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))

(declare-fun bm!542920 () Bool)

(assert (=> bm!542920 (= call!542924 (validRegex!8007 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))

(declare-fun d!1995981 () Bool)

(declare-fun res!2617985 () Bool)

(assert (=> d!1995981 (=> res!2617985 e!3863544)))

(assert (=> d!1995981 (= res!2617985 ((_ is ElementMatch!16271) r!7292))))

(assert (=> d!1995981 (= (validRegex!8007 r!7292) e!3863544)))

(declare-fun bm!542921 () Bool)

(assert (=> bm!542921 (= call!542925 call!542926)))

(declare-fun b!6362851 () Bool)

(assert (=> b!6362851 (= e!3863548 call!542926)))

(declare-fun b!6362852 () Bool)

(assert (=> b!6362852 (= e!3863547 call!542925)))

(declare-fun b!6362853 () Bool)

(declare-fun e!3863545 () Bool)

(assert (=> b!6362853 (= e!3863545 e!3863549)))

(declare-fun res!2617984 () Bool)

(assert (=> b!6362853 (=> (not res!2617984) (not e!3863549))))

(assert (=> b!6362853 (= res!2617984 call!542924)))

(declare-fun b!6362854 () Bool)

(declare-fun res!2617987 () Bool)

(assert (=> b!6362854 (=> res!2617987 e!3863545)))

(assert (=> b!6362854 (= res!2617987 (not ((_ is Concat!25116) r!7292)))))

(assert (=> b!6362854 (= e!3863543 e!3863545)))

(assert (= (and d!1995981 (not res!2617985)) b!6362848))

(assert (= (and b!6362848 c!1158316) b!6362846))

(assert (= (and b!6362848 (not c!1158316)) b!6362849))

(assert (= (and b!6362846 res!2617986) b!6362851))

(assert (= (and b!6362849 c!1158315) b!6362850))

(assert (= (and b!6362849 (not c!1158315)) b!6362854))

(assert (= (and b!6362850 res!2617983) b!6362852))

(assert (= (and b!6362854 (not res!2617987)) b!6362853))

(assert (= (and b!6362853 res!2617984) b!6362847))

(assert (= (or b!6362852 b!6362847) bm!542921))

(assert (= (or b!6362850 b!6362853) bm!542920))

(assert (= (or b!6362851 bm!542921) bm!542919))

(declare-fun m!7167742 () Bool)

(assert (=> b!6362846 m!7167742))

(declare-fun m!7167744 () Bool)

(assert (=> bm!542919 m!7167744))

(declare-fun m!7167746 () Bool)

(assert (=> bm!542920 m!7167746))

(assert (=> start!630286 d!1995981))

(declare-fun b!6362948 () Bool)

(declare-fun e!3863607 () Regex!16271)

(assert (=> b!6362948 (= e!3863607 (Union!16271 (h!71436 (unfocusZipperList!1692 zl!343)) (generalisedUnion!2115 (t!378706 (unfocusZipperList!1692 zl!343)))))))

(declare-fun b!6362949 () Bool)

(declare-fun e!3863604 () Bool)

(declare-fun lt!2367031 () Regex!16271)

(declare-fun isEmptyLang!1680 (Regex!16271) Bool)

(assert (=> b!6362949 (= e!3863604 (isEmptyLang!1680 lt!2367031))))

(declare-fun b!6362950 () Bool)

(declare-fun e!3863605 () Bool)

(assert (=> b!6362950 (= e!3863604 e!3863605)))

(declare-fun c!1158346 () Bool)

(declare-fun tail!12119 (List!65112) List!65112)

(assert (=> b!6362950 (= c!1158346 (isEmpty!37094 (tail!12119 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6362951 () Bool)

(declare-fun e!3863606 () Regex!16271)

(assert (=> b!6362951 (= e!3863606 (h!71436 (unfocusZipperList!1692 zl!343)))))

(declare-fun b!6362952 () Bool)

(declare-fun isUnion!1110 (Regex!16271) Bool)

(assert (=> b!6362952 (= e!3863605 (isUnion!1110 lt!2367031))))

(declare-fun b!6362953 () Bool)

(declare-fun e!3863603 () Bool)

(assert (=> b!6362953 (= e!3863603 e!3863604)))

(declare-fun c!1158348 () Bool)

(assert (=> b!6362953 (= c!1158348 (isEmpty!37094 (unfocusZipperList!1692 zl!343)))))

(declare-fun b!6362954 () Bool)

(assert (=> b!6362954 (= e!3863606 e!3863607)))

(declare-fun c!1158349 () Bool)

(assert (=> b!6362954 (= c!1158349 ((_ is Cons!64988) (unfocusZipperList!1692 zl!343)))))

(declare-fun b!6362955 () Bool)

(declare-fun head!13034 (List!65112) Regex!16271)

(assert (=> b!6362955 (= e!3863605 (= lt!2367031 (head!13034 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6362956 () Bool)

(declare-fun e!3863602 () Bool)

(assert (=> b!6362956 (= e!3863602 (isEmpty!37094 (t!378706 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6362957 () Bool)

(assert (=> b!6362957 (= e!3863607 EmptyLang!16271)))

(declare-fun d!1995987 () Bool)

(assert (=> d!1995987 e!3863603))

(declare-fun res!2618024 () Bool)

(assert (=> d!1995987 (=> (not res!2618024) (not e!3863603))))

(assert (=> d!1995987 (= res!2618024 (validRegex!8007 lt!2367031))))

(assert (=> d!1995987 (= lt!2367031 e!3863606)))

(declare-fun c!1158347 () Bool)

(assert (=> d!1995987 (= c!1158347 e!3863602)))

(declare-fun res!2618023 () Bool)

(assert (=> d!1995987 (=> (not res!2618023) (not e!3863602))))

(assert (=> d!1995987 (= res!2618023 ((_ is Cons!64988) (unfocusZipperList!1692 zl!343)))))

(declare-fun lambda!350505 () Int)

(declare-fun forall!15449 (List!65112 Int) Bool)

(assert (=> d!1995987 (forall!15449 (unfocusZipperList!1692 zl!343) lambda!350505)))

(assert (=> d!1995987 (= (generalisedUnion!2115 (unfocusZipperList!1692 zl!343)) lt!2367031)))

(assert (= (and d!1995987 res!2618023) b!6362956))

(assert (= (and d!1995987 c!1158347) b!6362951))

(assert (= (and d!1995987 (not c!1158347)) b!6362954))

(assert (= (and b!6362954 c!1158349) b!6362948))

(assert (= (and b!6362954 (not c!1158349)) b!6362957))

(assert (= (and d!1995987 res!2618024) b!6362953))

(assert (= (and b!6362953 c!1158348) b!6362949))

(assert (= (and b!6362953 (not c!1158348)) b!6362950))

(assert (= (and b!6362950 c!1158346) b!6362955))

(assert (= (and b!6362950 (not c!1158346)) b!6362952))

(declare-fun m!7167770 () Bool)

(assert (=> b!6362948 m!7167770))

(assert (=> b!6362953 m!7167702))

(declare-fun m!7167772 () Bool)

(assert (=> b!6362953 m!7167772))

(declare-fun m!7167774 () Bool)

(assert (=> b!6362952 m!7167774))

(assert (=> b!6362955 m!7167702))

(declare-fun m!7167776 () Bool)

(assert (=> b!6362955 m!7167776))

(declare-fun m!7167778 () Bool)

(assert (=> b!6362956 m!7167778))

(declare-fun m!7167780 () Bool)

(assert (=> b!6362949 m!7167780))

(assert (=> b!6362950 m!7167702))

(declare-fun m!7167782 () Bool)

(assert (=> b!6362950 m!7167782))

(assert (=> b!6362950 m!7167782))

(declare-fun m!7167784 () Bool)

(assert (=> b!6362950 m!7167784))

(declare-fun m!7167786 () Bool)

(assert (=> d!1995987 m!7167786))

(assert (=> d!1995987 m!7167702))

(declare-fun m!7167788 () Bool)

(assert (=> d!1995987 m!7167788))

(assert (=> b!6362718 d!1995987))

(declare-fun bs!1594283 () Bool)

(declare-fun d!1995995 () Bool)

(assert (= bs!1594283 (and d!1995995 d!1995987)))

(declare-fun lambda!350512 () Int)

(assert (=> bs!1594283 (= lambda!350512 lambda!350505)))

(declare-fun lt!2367038 () List!65112)

(assert (=> d!1995995 (forall!15449 lt!2367038 lambda!350512)))

(declare-fun e!3863621 () List!65112)

(assert (=> d!1995995 (= lt!2367038 e!3863621)))

(declare-fun c!1158361 () Bool)

(assert (=> d!1995995 (= c!1158361 ((_ is Cons!64989) zl!343))))

(assert (=> d!1995995 (= (unfocusZipperList!1692 zl!343) lt!2367038)))

(declare-fun b!6362982 () Bool)

(assert (=> b!6362982 (= e!3863621 (Cons!64988 (generalisedConcat!1868 (exprs!6155 (h!71437 zl!343))) (unfocusZipperList!1692 (t!378707 zl!343))))))

(declare-fun b!6362983 () Bool)

(assert (=> b!6362983 (= e!3863621 Nil!64988)))

(assert (= (and d!1995995 c!1158361) b!6362982))

(assert (= (and d!1995995 (not c!1158361)) b!6362983))

(declare-fun m!7167828 () Bool)

(assert (=> d!1995995 m!7167828))

(assert (=> b!6362982 m!7167648))

(declare-fun m!7167830 () Bool)

(assert (=> b!6362982 m!7167830))

(assert (=> b!6362718 d!1995995))

(declare-fun bs!1594288 () Bool)

(declare-fun b!6363104 () Bool)

(assert (= bs!1594288 (and b!6363104 b!6362731)))

(declare-fun lambda!350517 () Int)

(assert (=> bs!1594288 (not (= lambda!350517 lambda!350485))))

(assert (=> bs!1594288 (not (= lambda!350517 lambda!350486))))

(assert (=> b!6363104 true))

(assert (=> b!6363104 true))

(declare-fun bs!1594289 () Bool)

(declare-fun b!6363103 () Bool)

(assert (= bs!1594289 (and b!6363103 b!6362731)))

(declare-fun lambda!350518 () Int)

(assert (=> bs!1594289 (not (= lambda!350518 lambda!350485))))

(assert (=> bs!1594289 (= lambda!350518 lambda!350486)))

(declare-fun bs!1594290 () Bool)

(assert (= bs!1594290 (and b!6363103 b!6363104)))

(assert (=> bs!1594290 (not (= lambda!350518 lambda!350517))))

(assert (=> b!6363103 true))

(assert (=> b!6363103 true))

(declare-fun b!6363102 () Bool)

(declare-fun e!3863691 () Bool)

(declare-fun e!3863692 () Bool)

(assert (=> b!6363102 (= e!3863691 e!3863692)))

(declare-fun res!2618064 () Bool)

(assert (=> b!6363102 (= res!2618064 (matchRSpec!3372 (regOne!33055 r!7292) s!2326))))

(assert (=> b!6363102 (=> res!2618064 e!3863692)))

(declare-fun e!3863690 () Bool)

(declare-fun call!542963 () Bool)

(assert (=> b!6363103 (= e!3863690 call!542963)))

(declare-fun e!3863693 () Bool)

(assert (=> b!6363104 (= e!3863693 call!542963)))

(declare-fun b!6363105 () Bool)

(assert (=> b!6363105 (= e!3863691 e!3863690)))

(declare-fun c!1158404 () Bool)

(assert (=> b!6363105 (= c!1158404 ((_ is Star!16271) r!7292))))

(declare-fun b!6363106 () Bool)

(declare-fun c!1158405 () Bool)

(assert (=> b!6363106 (= c!1158405 ((_ is Union!16271) r!7292))))

(declare-fun e!3863689 () Bool)

(assert (=> b!6363106 (= e!3863689 e!3863691)))

(declare-fun b!6363107 () Bool)

(declare-fun res!2618063 () Bool)

(assert (=> b!6363107 (=> res!2618063 e!3863693)))

(declare-fun call!542964 () Bool)

(assert (=> b!6363107 (= res!2618063 call!542964)))

(assert (=> b!6363107 (= e!3863690 e!3863693)))

(declare-fun d!1996007 () Bool)

(declare-fun c!1158406 () Bool)

(assert (=> d!1996007 (= c!1158406 ((_ is EmptyExpr!16271) r!7292))))

(declare-fun e!3863694 () Bool)

(assert (=> d!1996007 (= (matchRSpec!3372 r!7292 s!2326) e!3863694)))

(declare-fun bm!542958 () Bool)

(declare-fun isEmpty!37096 (List!65114) Bool)

(assert (=> bm!542958 (= call!542964 (isEmpty!37096 s!2326))))

(declare-fun b!6363108 () Bool)

(assert (=> b!6363108 (= e!3863694 call!542964)))

(declare-fun b!6363109 () Bool)

(declare-fun e!3863695 () Bool)

(assert (=> b!6363109 (= e!3863694 e!3863695)))

(declare-fun res!2618065 () Bool)

(assert (=> b!6363109 (= res!2618065 (not ((_ is EmptyLang!16271) r!7292)))))

(assert (=> b!6363109 (=> (not res!2618065) (not e!3863695))))

(declare-fun b!6363110 () Bool)

(declare-fun c!1158403 () Bool)

(assert (=> b!6363110 (= c!1158403 ((_ is ElementMatch!16271) r!7292))))

(assert (=> b!6363110 (= e!3863695 e!3863689)))

(declare-fun bm!542959 () Bool)

(assert (=> bm!542959 (= call!542963 (Exists!3341 (ite c!1158404 lambda!350517 lambda!350518)))))

(declare-fun b!6363111 () Bool)

(assert (=> b!6363111 (= e!3863692 (matchRSpec!3372 (regTwo!33055 r!7292) s!2326))))

(declare-fun b!6363112 () Bool)

(assert (=> b!6363112 (= e!3863689 (= s!2326 (Cons!64990 (c!1158284 r!7292) Nil!64990)))))

(assert (= (and d!1996007 c!1158406) b!6363108))

(assert (= (and d!1996007 (not c!1158406)) b!6363109))

(assert (= (and b!6363109 res!2618065) b!6363110))

(assert (= (and b!6363110 c!1158403) b!6363112))

(assert (= (and b!6363110 (not c!1158403)) b!6363106))

(assert (= (and b!6363106 c!1158405) b!6363102))

(assert (= (and b!6363106 (not c!1158405)) b!6363105))

(assert (= (and b!6363102 (not res!2618064)) b!6363111))

(assert (= (and b!6363105 c!1158404) b!6363107))

(assert (= (and b!6363105 (not c!1158404)) b!6363103))

(assert (= (and b!6363107 (not res!2618063)) b!6363104))

(assert (= (or b!6363104 b!6363103) bm!542959))

(assert (= (or b!6363108 b!6363107) bm!542958))

(declare-fun m!7167922 () Bool)

(assert (=> b!6363102 m!7167922))

(declare-fun m!7167924 () Bool)

(assert (=> bm!542958 m!7167924))

(declare-fun m!7167926 () Bool)

(assert (=> bm!542959 m!7167926))

(declare-fun m!7167928 () Bool)

(assert (=> b!6363111 m!7167928))

(assert (=> b!6362737 d!1996007))

(declare-fun b!6363163 () Bool)

(declare-fun e!3863722 () Bool)

(declare-fun head!13035 (List!65114) C!32812)

(assert (=> b!6363163 (= e!3863722 (= (head!13035 s!2326) (c!1158284 r!7292)))))

(declare-fun b!6363164 () Bool)

(declare-fun e!3863725 () Bool)

(declare-fun e!3863721 () Bool)

(assert (=> b!6363164 (= e!3863725 e!3863721)))

(declare-fun res!2618106 () Bool)

(assert (=> b!6363164 (=> (not res!2618106) (not e!3863721))))

(declare-fun lt!2367065 () Bool)

(assert (=> b!6363164 (= res!2618106 (not lt!2367065))))

(declare-fun b!6363165 () Bool)

(declare-fun e!3863726 () Bool)

(assert (=> b!6363165 (= e!3863726 (not lt!2367065))))

(declare-fun b!6363166 () Bool)

(declare-fun res!2618104 () Bool)

(declare-fun e!3863724 () Bool)

(assert (=> b!6363166 (=> res!2618104 e!3863724)))

(declare-fun tail!12120 (List!65114) List!65114)

(assert (=> b!6363166 (= res!2618104 (not (isEmpty!37096 (tail!12120 s!2326))))))

(declare-fun b!6363167 () Bool)

(declare-fun res!2618101 () Bool)

(assert (=> b!6363167 (=> res!2618101 e!3863725)))

(assert (=> b!6363167 (= res!2618101 e!3863722)))

(declare-fun res!2618099 () Bool)

(assert (=> b!6363167 (=> (not res!2618099) (not e!3863722))))

(assert (=> b!6363167 (= res!2618099 lt!2367065)))

(declare-fun b!6363168 () Bool)

(declare-fun res!2618105 () Bool)

(assert (=> b!6363168 (=> (not res!2618105) (not e!3863722))))

(assert (=> b!6363168 (= res!2618105 (isEmpty!37096 (tail!12120 s!2326)))))

(declare-fun b!6363169 () Bool)

(declare-fun e!3863723 () Bool)

(declare-fun derivativeStep!4976 (Regex!16271 C!32812) Regex!16271)

(assert (=> b!6363169 (= e!3863723 (matchR!8454 (derivativeStep!4976 r!7292 (head!13035 s!2326)) (tail!12120 s!2326)))))

(declare-fun b!6363170 () Bool)

(declare-fun res!2618102 () Bool)

(assert (=> b!6363170 (=> res!2618102 e!3863725)))

(assert (=> b!6363170 (= res!2618102 (not ((_ is ElementMatch!16271) r!7292)))))

(assert (=> b!6363170 (= e!3863726 e!3863725)))

(declare-fun d!1996041 () Bool)

(declare-fun e!3863727 () Bool)

(assert (=> d!1996041 e!3863727))

(declare-fun c!1158415 () Bool)

(assert (=> d!1996041 (= c!1158415 ((_ is EmptyExpr!16271) r!7292))))

(assert (=> d!1996041 (= lt!2367065 e!3863723)))

(declare-fun c!1158417 () Bool)

(assert (=> d!1996041 (= c!1158417 (isEmpty!37096 s!2326))))

(assert (=> d!1996041 (validRegex!8007 r!7292)))

(assert (=> d!1996041 (= (matchR!8454 r!7292 s!2326) lt!2367065)))

(declare-fun b!6363162 () Bool)

(assert (=> b!6363162 (= e!3863724 (not (= (head!13035 s!2326) (c!1158284 r!7292))))))

(declare-fun b!6363171 () Bool)

(assert (=> b!6363171 (= e!3863723 (nullable!6264 r!7292))))

(declare-fun b!6363172 () Bool)

(assert (=> b!6363172 (= e!3863727 e!3863726)))

(declare-fun c!1158416 () Bool)

(assert (=> b!6363172 (= c!1158416 ((_ is EmptyLang!16271) r!7292))))

(declare-fun b!6363173 () Bool)

(declare-fun call!542967 () Bool)

(assert (=> b!6363173 (= e!3863727 (= lt!2367065 call!542967))))

(declare-fun bm!542962 () Bool)

(assert (=> bm!542962 (= call!542967 (isEmpty!37096 s!2326))))

(declare-fun b!6363174 () Bool)

(assert (=> b!6363174 (= e!3863721 e!3863724)))

(declare-fun res!2618100 () Bool)

(assert (=> b!6363174 (=> res!2618100 e!3863724)))

(assert (=> b!6363174 (= res!2618100 call!542967)))

(declare-fun b!6363175 () Bool)

(declare-fun res!2618103 () Bool)

(assert (=> b!6363175 (=> (not res!2618103) (not e!3863722))))

(assert (=> b!6363175 (= res!2618103 (not call!542967))))

(assert (= (and d!1996041 c!1158417) b!6363171))

(assert (= (and d!1996041 (not c!1158417)) b!6363169))

(assert (= (and d!1996041 c!1158415) b!6363173))

(assert (= (and d!1996041 (not c!1158415)) b!6363172))

(assert (= (and b!6363172 c!1158416) b!6363165))

(assert (= (and b!6363172 (not c!1158416)) b!6363170))

(assert (= (and b!6363170 (not res!2618102)) b!6363167))

(assert (= (and b!6363167 res!2618099) b!6363175))

(assert (= (and b!6363175 res!2618103) b!6363168))

(assert (= (and b!6363168 res!2618105) b!6363163))

(assert (= (and b!6363167 (not res!2618101)) b!6363164))

(assert (= (and b!6363164 res!2618106) b!6363174))

(assert (= (and b!6363174 (not res!2618100)) b!6363166))

(assert (= (and b!6363166 (not res!2618104)) b!6363162))

(assert (= (or b!6363173 b!6363174 b!6363175) bm!542962))

(declare-fun m!7167944 () Bool)

(assert (=> b!6363171 m!7167944))

(assert (=> bm!542962 m!7167924))

(assert (=> d!1996041 m!7167924))

(assert (=> d!1996041 m!7167672))

(declare-fun m!7167946 () Bool)

(assert (=> b!6363163 m!7167946))

(assert (=> b!6363162 m!7167946))

(assert (=> b!6363169 m!7167946))

(assert (=> b!6363169 m!7167946))

(declare-fun m!7167948 () Bool)

(assert (=> b!6363169 m!7167948))

(declare-fun m!7167950 () Bool)

(assert (=> b!6363169 m!7167950))

(assert (=> b!6363169 m!7167948))

(assert (=> b!6363169 m!7167950))

(declare-fun m!7167952 () Bool)

(assert (=> b!6363169 m!7167952))

(assert (=> b!6363168 m!7167950))

(assert (=> b!6363168 m!7167950))

(declare-fun m!7167954 () Bool)

(assert (=> b!6363168 m!7167954))

(assert (=> b!6363166 m!7167950))

(assert (=> b!6363166 m!7167950))

(assert (=> b!6363166 m!7167954))

(assert (=> b!6362737 d!1996041))

(declare-fun d!1996051 () Bool)

(assert (=> d!1996051 (= (matchR!8454 r!7292 s!2326) (matchRSpec!3372 r!7292 s!2326))))

(declare-fun lt!2367068 () Unit!158415)

(declare-fun choose!47260 (Regex!16271 List!65114) Unit!158415)

(assert (=> d!1996051 (= lt!2367068 (choose!47260 r!7292 s!2326))))

(assert (=> d!1996051 (validRegex!8007 r!7292)))

(assert (=> d!1996051 (= (mainMatchTheorem!3372 r!7292 s!2326) lt!2367068)))

(declare-fun bs!1594309 () Bool)

(assert (= bs!1594309 d!1996051))

(assert (=> bs!1594309 m!7167654))

(assert (=> bs!1594309 m!7167652))

(declare-fun m!7167962 () Bool)

(assert (=> bs!1594309 m!7167962))

(assert (=> bs!1594309 m!7167672))

(assert (=> b!6362737 d!1996051))

(declare-fun bs!1594311 () Bool)

(declare-fun d!1996053 () Bool)

(assert (= bs!1594311 (and d!1996053 d!1995987)))

(declare-fun lambda!350531 () Int)

(assert (=> bs!1594311 (= lambda!350531 lambda!350505)))

(declare-fun bs!1594312 () Bool)

(assert (= bs!1594312 (and d!1996053 d!1995995)))

(assert (=> bs!1594312 (= lambda!350531 lambda!350512)))

(declare-fun b!6363277 () Bool)

(declare-fun e!3863785 () Bool)

(declare-fun e!3863784 () Bool)

(assert (=> b!6363277 (= e!3863785 e!3863784)))

(declare-fun c!1158435 () Bool)

(assert (=> b!6363277 (= c!1158435 (isEmpty!37094 (tail!12119 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363278 () Bool)

(declare-fun e!3863786 () Regex!16271)

(declare-fun e!3863788 () Regex!16271)

(assert (=> b!6363278 (= e!3863786 e!3863788)))

(declare-fun c!1158434 () Bool)

(assert (=> b!6363278 (= c!1158434 ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343))))))

(declare-fun b!6363279 () Bool)

(declare-fun lt!2367071 () Regex!16271)

(declare-fun isConcat!1196 (Regex!16271) Bool)

(assert (=> b!6363279 (= e!3863784 (isConcat!1196 lt!2367071))))

(declare-fun b!6363280 () Bool)

(assert (=> b!6363280 (= e!3863788 EmptyExpr!16271)))

(declare-fun b!6363281 () Bool)

(assert (=> b!6363281 (= e!3863788 (Concat!25116 (h!71436 (exprs!6155 (h!71437 zl!343))) (generalisedConcat!1868 (t!378706 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363282 () Bool)

(declare-fun isEmptyExpr!1673 (Regex!16271) Bool)

(assert (=> b!6363282 (= e!3863785 (isEmptyExpr!1673 lt!2367071))))

(declare-fun b!6363283 () Bool)

(declare-fun e!3863789 () Bool)

(assert (=> b!6363283 (= e!3863789 e!3863785)))

(declare-fun c!1158432 () Bool)

(assert (=> b!6363283 (= c!1158432 (isEmpty!37094 (exprs!6155 (h!71437 zl!343))))))

(declare-fun b!6363285 () Bool)

(assert (=> b!6363285 (= e!3863784 (= lt!2367071 (head!13034 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363286 () Bool)

(declare-fun e!3863787 () Bool)

(assert (=> b!6363286 (= e!3863787 (isEmpty!37094 (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363284 () Bool)

(assert (=> b!6363284 (= e!3863786 (h!71436 (exprs!6155 (h!71437 zl!343))))))

(assert (=> d!1996053 e!3863789))

(declare-fun res!2618126 () Bool)

(assert (=> d!1996053 (=> (not res!2618126) (not e!3863789))))

(assert (=> d!1996053 (= res!2618126 (validRegex!8007 lt!2367071))))

(assert (=> d!1996053 (= lt!2367071 e!3863786)))

(declare-fun c!1158433 () Bool)

(assert (=> d!1996053 (= c!1158433 e!3863787)))

(declare-fun res!2618127 () Bool)

(assert (=> d!1996053 (=> (not res!2618127) (not e!3863787))))

(assert (=> d!1996053 (= res!2618127 ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343))))))

(assert (=> d!1996053 (forall!15449 (exprs!6155 (h!71437 zl!343)) lambda!350531)))

(assert (=> d!1996053 (= (generalisedConcat!1868 (exprs!6155 (h!71437 zl!343))) lt!2367071)))

(assert (= (and d!1996053 res!2618127) b!6363286))

(assert (= (and d!1996053 c!1158433) b!6363284))

(assert (= (and d!1996053 (not c!1158433)) b!6363278))

(assert (= (and b!6363278 c!1158434) b!6363281))

(assert (= (and b!6363278 (not c!1158434)) b!6363280))

(assert (= (and d!1996053 res!2618126) b!6363283))

(assert (= (and b!6363283 c!1158432) b!6363282))

(assert (= (and b!6363283 (not c!1158432)) b!6363277))

(assert (= (and b!6363277 c!1158435) b!6363285))

(assert (= (and b!6363277 (not c!1158435)) b!6363279))

(declare-fun m!7167968 () Bool)

(assert (=> b!6363281 m!7167968))

(declare-fun m!7167970 () Bool)

(assert (=> b!6363282 m!7167970))

(declare-fun m!7167972 () Bool)

(assert (=> b!6363277 m!7167972))

(assert (=> b!6363277 m!7167972))

(declare-fun m!7167974 () Bool)

(assert (=> b!6363277 m!7167974))

(declare-fun m!7167976 () Bool)

(assert (=> b!6363285 m!7167976))

(declare-fun m!7167978 () Bool)

(assert (=> b!6363283 m!7167978))

(declare-fun m!7167980 () Bool)

(assert (=> b!6363279 m!7167980))

(assert (=> b!6363286 m!7167706))

(declare-fun m!7167982 () Bool)

(assert (=> d!1996053 m!7167982))

(declare-fun m!7167984 () Bool)

(assert (=> d!1996053 m!7167984))

(assert (=> b!6362729 d!1996053))

(declare-fun d!1996057 () Bool)

(declare-fun dynLambda!25779 (Int Context!11310) (InoxSet Context!11310))

(assert (=> d!1996057 (= (flatMap!1776 z!1189 lambda!350487) (dynLambda!25779 lambda!350487 (h!71437 zl!343)))))

(declare-fun lt!2367074 () Unit!158415)

(declare-fun choose!47262 ((InoxSet Context!11310) Context!11310 Int) Unit!158415)

(assert (=> d!1996057 (= lt!2367074 (choose!47262 z!1189 (h!71437 zl!343) lambda!350487))))

(assert (=> d!1996057 (= z!1189 (store ((as const (Array Context!11310 Bool)) false) (h!71437 zl!343) true))))

(assert (=> d!1996057 (= (lemmaFlatMapOnSingletonSet!1302 z!1189 (h!71437 zl!343) lambda!350487) lt!2367074)))

(declare-fun b_lambda!241873 () Bool)

(assert (=> (not b_lambda!241873) (not d!1996057)))

(declare-fun bs!1594313 () Bool)

(assert (= bs!1594313 d!1996057))

(assert (=> bs!1594313 m!7167676))

(declare-fun m!7167986 () Bool)

(assert (=> bs!1594313 m!7167986))

(declare-fun m!7167988 () Bool)

(assert (=> bs!1594313 m!7167988))

(declare-fun m!7167990 () Bool)

(assert (=> bs!1594313 m!7167990))

(assert (=> b!6362719 d!1996057))

(declare-fun d!1996059 () Bool)

(declare-fun nullableFct!2211 (Regex!16271) Bool)

(assert (=> d!1996059 (= (nullable!6264 (h!71436 (exprs!6155 (h!71437 zl!343)))) (nullableFct!2211 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun bs!1594314 () Bool)

(assert (= bs!1594314 d!1996059))

(declare-fun m!7167992 () Bool)

(assert (=> bs!1594314 m!7167992))

(assert (=> b!6362719 d!1996059))

(declare-fun bm!542974 () Bool)

(declare-fun call!542979 () (InoxSet Context!11310))

(assert (=> bm!542974 (= call!542979 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326)))))

(declare-fun d!1996061 () Bool)

(declare-fun c!1158440 () Bool)

(declare-fun e!3863798 () Bool)

(assert (=> d!1996061 (= c!1158440 e!3863798)))

(declare-fun res!2618130 () Bool)

(assert (=> d!1996061 (=> (not res!2618130) (not e!3863798))))

(assert (=> d!1996061 (= res!2618130 ((_ is Cons!64988) (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))

(declare-fun e!3863796 () (InoxSet Context!11310))

(assert (=> d!1996061 (= (derivationStepZipperUp!1445 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))) (h!71438 s!2326)) e!3863796)))

(declare-fun b!6363297 () Bool)

(declare-fun e!3863797 () (InoxSet Context!11310))

(assert (=> b!6363297 (= e!3863796 e!3863797)))

(declare-fun c!1158441 () Bool)

(assert (=> b!6363297 (= c!1158441 ((_ is Cons!64988) (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))

(declare-fun b!6363298 () Bool)

(assert (=> b!6363298 (= e!3863797 call!542979)))

(declare-fun b!6363299 () Bool)

(assert (=> b!6363299 (= e!3863797 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363300 () Bool)

(assert (=> b!6363300 (= e!3863798 (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun b!6363301 () Bool)

(assert (=> b!6363301 (= e!3863796 ((_ map or) call!542979 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326))))))

(assert (= (and d!1996061 res!2618130) b!6363300))

(assert (= (and d!1996061 c!1158440) b!6363301))

(assert (= (and d!1996061 (not c!1158440)) b!6363297))

(assert (= (and b!6363297 c!1158441) b!6363298))

(assert (= (and b!6363297 (not c!1158441)) b!6363299))

(assert (= (or b!6363301 b!6363298) bm!542974))

(declare-fun m!7167994 () Bool)

(assert (=> bm!542974 m!7167994))

(declare-fun m!7167996 () Bool)

(assert (=> b!6363300 m!7167996))

(declare-fun m!7167998 () Bool)

(assert (=> b!6363301 m!7167998))

(assert (=> b!6362719 d!1996061))

(declare-fun b!6363324 () Bool)

(declare-fun e!3863812 () (InoxSet Context!11310))

(assert (=> b!6363324 (= e!3863812 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363325 () Bool)

(declare-fun e!3863811 () (InoxSet Context!11310))

(declare-fun call!542995 () (InoxSet Context!11310))

(declare-fun call!542994 () (InoxSet Context!11310))

(assert (=> b!6363325 (= e!3863811 ((_ map or) call!542995 call!542994))))

(declare-fun b!6363326 () Bool)

(declare-fun e!3863813 () (InoxSet Context!11310))

(assert (=> b!6363326 (= e!3863813 e!3863811)))

(declare-fun c!1158454 () Bool)

(assert (=> b!6363326 (= c!1158454 ((_ is Union!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun bm!542987 () Bool)

(declare-fun call!542996 () (InoxSet Context!11310))

(declare-fun call!542992 () (InoxSet Context!11310))

(assert (=> bm!542987 (= call!542996 call!542992)))

(declare-fun b!6363327 () Bool)

(declare-fun c!1158453 () Bool)

(declare-fun e!3863815 () Bool)

(assert (=> b!6363327 (= c!1158453 e!3863815)))

(declare-fun res!2618133 () Bool)

(assert (=> b!6363327 (=> (not res!2618133) (not e!3863815))))

(assert (=> b!6363327 (= res!2618133 ((_ is Concat!25116) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun e!3863814 () (InoxSet Context!11310))

(assert (=> b!6363327 (= e!3863811 e!3863814)))

(declare-fun d!1996063 () Bool)

(declare-fun c!1158455 () Bool)

(assert (=> d!1996063 (= c!1158455 (and ((_ is ElementMatch!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))) (= (c!1158284 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326))))))

(assert (=> d!1996063 (= (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (h!71437 zl!343))) lt!2367001 (h!71438 s!2326)) e!3863813)))

(declare-fun call!542997 () List!65112)

(declare-fun bm!542988 () Bool)

(declare-fun c!1158452 () Bool)

(assert (=> bm!542988 (= call!542995 (derivationStepZipperDown!1519 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))) (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997)) (h!71438 s!2326)))))

(declare-fun b!6363328 () Bool)

(assert (=> b!6363328 (= e!3863813 (store ((as const (Array Context!11310 Bool)) false) lt!2367001 true))))

(declare-fun bm!542989 () Bool)

(assert (=> bm!542989 (= call!542992 call!542995)))

(declare-fun bm!542990 () Bool)

(declare-fun call!542993 () List!65112)

(assert (=> bm!542990 (= call!542994 (derivationStepZipperDown!1519 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))) (ite c!1158454 lt!2367001 (Context!11311 call!542993)) (h!71438 s!2326)))))

(declare-fun b!6363329 () Bool)

(declare-fun e!3863816 () (InoxSet Context!11310))

(assert (=> b!6363329 (= e!3863816 call!542996)))

(declare-fun bm!542991 () Bool)

(assert (=> bm!542991 (= call!542997 call!542993)))

(declare-fun b!6363330 () Bool)

(assert (=> b!6363330 (= e!3863815 (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363331 () Bool)

(assert (=> b!6363331 (= e!3863812 call!542996)))

(declare-fun b!6363332 () Bool)

(declare-fun c!1158456 () Bool)

(assert (=> b!6363332 (= c!1158456 ((_ is Star!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> b!6363332 (= e!3863816 e!3863812)))

(declare-fun bm!542992 () Bool)

(declare-fun $colon$colon!2132 (List!65112 Regex!16271) List!65112)

(assert (=> bm!542992 (= call!542993 ($colon$colon!2132 (exprs!6155 lt!2367001) (ite (or c!1158453 c!1158452) (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71436 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363333 () Bool)

(assert (=> b!6363333 (= e!3863814 e!3863816)))

(assert (=> b!6363333 (= c!1158452 ((_ is Concat!25116) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363334 () Bool)

(assert (=> b!6363334 (= e!3863814 ((_ map or) call!542994 call!542992))))

(assert (= (and d!1996063 c!1158455) b!6363328))

(assert (= (and d!1996063 (not c!1158455)) b!6363326))

(assert (= (and b!6363326 c!1158454) b!6363325))

(assert (= (and b!6363326 (not c!1158454)) b!6363327))

(assert (= (and b!6363327 res!2618133) b!6363330))

(assert (= (and b!6363327 c!1158453) b!6363334))

(assert (= (and b!6363327 (not c!1158453)) b!6363333))

(assert (= (and b!6363333 c!1158452) b!6363329))

(assert (= (and b!6363333 (not c!1158452)) b!6363332))

(assert (= (and b!6363332 c!1158456) b!6363331))

(assert (= (and b!6363332 (not c!1158456)) b!6363324))

(assert (= (or b!6363329 b!6363331) bm!542991))

(assert (= (or b!6363329 b!6363331) bm!542987))

(assert (= (or b!6363334 bm!542991) bm!542992))

(assert (= (or b!6363334 bm!542987) bm!542989))

(assert (= (or b!6363325 b!6363334) bm!542990))

(assert (= (or b!6363325 bm!542989) bm!542988))

(declare-fun m!7168000 () Bool)

(assert (=> bm!542988 m!7168000))

(declare-fun m!7168002 () Bool)

(assert (=> b!6363328 m!7168002))

(declare-fun m!7168004 () Bool)

(assert (=> bm!542992 m!7168004))

(declare-fun m!7168006 () Bool)

(assert (=> b!6363330 m!7168006))

(declare-fun m!7168008 () Bool)

(assert (=> bm!542990 m!7168008))

(assert (=> b!6362719 d!1996063))

(declare-fun bm!542993 () Bool)

(declare-fun call!542998 () (InoxSet Context!11310))

(assert (=> bm!542993 (= call!542998 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 lt!2367001)) (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (h!71438 s!2326)))))

(declare-fun d!1996065 () Bool)

(declare-fun c!1158457 () Bool)

(declare-fun e!3863819 () Bool)

(assert (=> d!1996065 (= c!1158457 e!3863819)))

(declare-fun res!2618134 () Bool)

(assert (=> d!1996065 (=> (not res!2618134) (not e!3863819))))

(assert (=> d!1996065 (= res!2618134 ((_ is Cons!64988) (exprs!6155 lt!2367001)))))

(declare-fun e!3863817 () (InoxSet Context!11310))

(assert (=> d!1996065 (= (derivationStepZipperUp!1445 lt!2367001 (h!71438 s!2326)) e!3863817)))

(declare-fun b!6363335 () Bool)

(declare-fun e!3863818 () (InoxSet Context!11310))

(assert (=> b!6363335 (= e!3863817 e!3863818)))

(declare-fun c!1158458 () Bool)

(assert (=> b!6363335 (= c!1158458 ((_ is Cons!64988) (exprs!6155 lt!2367001)))))

(declare-fun b!6363336 () Bool)

(assert (=> b!6363336 (= e!3863818 call!542998)))

(declare-fun b!6363337 () Bool)

(assert (=> b!6363337 (= e!3863818 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363338 () Bool)

(assert (=> b!6363338 (= e!3863819 (nullable!6264 (h!71436 (exprs!6155 lt!2367001))))))

(declare-fun b!6363339 () Bool)

(assert (=> b!6363339 (= e!3863817 ((_ map or) call!542998 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (h!71438 s!2326))))))

(assert (= (and d!1996065 res!2618134) b!6363338))

(assert (= (and d!1996065 c!1158457) b!6363339))

(assert (= (and d!1996065 (not c!1158457)) b!6363335))

(assert (= (and b!6363335 c!1158458) b!6363336))

(assert (= (and b!6363335 (not c!1158458)) b!6363337))

(assert (= (or b!6363339 b!6363336) bm!542993))

(declare-fun m!7168010 () Bool)

(assert (=> bm!542993 m!7168010))

(declare-fun m!7168012 () Bool)

(assert (=> b!6363338 m!7168012))

(declare-fun m!7168014 () Bool)

(assert (=> b!6363339 m!7168014))

(assert (=> b!6362719 d!1996065))

(declare-fun d!1996067 () Bool)

(declare-fun choose!47263 ((InoxSet Context!11310) Int) (InoxSet Context!11310))

(assert (=> d!1996067 (= (flatMap!1776 z!1189 lambda!350487) (choose!47263 z!1189 lambda!350487))))

(declare-fun bs!1594315 () Bool)

(assert (= bs!1594315 d!1996067))

(declare-fun m!7168016 () Bool)

(assert (=> bs!1594315 m!7168016))

(assert (=> b!6362719 d!1996067))

(declare-fun bm!542994 () Bool)

(declare-fun call!542999 () (InoxSet Context!11310))

(assert (=> bm!542994 (= call!542999 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (h!71437 zl!343))) (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326)))))

(declare-fun d!1996069 () Bool)

(declare-fun c!1158459 () Bool)

(declare-fun e!3863822 () Bool)

(assert (=> d!1996069 (= c!1158459 e!3863822)))

(declare-fun res!2618135 () Bool)

(assert (=> d!1996069 (=> (not res!2618135) (not e!3863822))))

(assert (=> d!1996069 (= res!2618135 ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343))))))

(declare-fun e!3863820 () (InoxSet Context!11310))

(assert (=> d!1996069 (= (derivationStepZipperUp!1445 (h!71437 zl!343) (h!71438 s!2326)) e!3863820)))

(declare-fun b!6363340 () Bool)

(declare-fun e!3863821 () (InoxSet Context!11310))

(assert (=> b!6363340 (= e!3863820 e!3863821)))

(declare-fun c!1158460 () Bool)

(assert (=> b!6363340 (= c!1158460 ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343))))))

(declare-fun b!6363341 () Bool)

(assert (=> b!6363341 (= e!3863821 call!542999)))

(declare-fun b!6363342 () Bool)

(assert (=> b!6363342 (= e!3863821 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363343 () Bool)

(assert (=> b!6363343 (= e!3863822 (nullable!6264 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363344 () Bool)

(assert (=> b!6363344 (= e!3863820 ((_ map or) call!542999 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326))))))

(assert (= (and d!1996069 res!2618135) b!6363343))

(assert (= (and d!1996069 c!1158459) b!6363344))

(assert (= (and d!1996069 (not c!1158459)) b!6363340))

(assert (= (and b!6363340 c!1158460) b!6363341))

(assert (= (and b!6363340 (not c!1158460)) b!6363342))

(assert (= (or b!6363344 b!6363341) bm!542994))

(declare-fun m!7168018 () Bool)

(assert (=> bm!542994 m!7168018))

(assert (=> b!6363343 m!7167682))

(declare-fun m!7168020 () Bool)

(assert (=> b!6363344 m!7168020))

(assert (=> b!6362719 d!1996069))

(declare-fun d!1996071 () Bool)

(assert (=> d!1996071 (= (isEmpty!37093 (t!378707 zl!343)) ((_ is Nil!64989) (t!378707 zl!343)))))

(assert (=> b!6362738 d!1996071))

(declare-fun d!1996073 () Bool)

(assert (=> d!1996073 (= (nullable!6264 (regOne!33054 (regOne!33054 r!7292))) (nullableFct!2211 (regOne!33054 (regOne!33054 r!7292))))))

(declare-fun bs!1594316 () Bool)

(assert (= bs!1594316 d!1996073))

(declare-fun m!7168022 () Bool)

(assert (=> bs!1594316 m!7168022))

(assert (=> b!6362725 d!1996073))

(declare-fun d!1996075 () Bool)

(declare-fun e!3863825 () Bool)

(assert (=> d!1996075 e!3863825))

(declare-fun res!2618138 () Bool)

(assert (=> d!1996075 (=> (not res!2618138) (not e!3863825))))

(declare-fun lt!2367077 () List!65113)

(declare-fun noDuplicate!2101 (List!65113) Bool)

(assert (=> d!1996075 (= res!2618138 (noDuplicate!2101 lt!2367077))))

(declare-fun choose!47264 ((InoxSet Context!11310)) List!65113)

(assert (=> d!1996075 (= lt!2367077 (choose!47264 z!1189))))

(assert (=> d!1996075 (= (toList!10055 z!1189) lt!2367077)))

(declare-fun b!6363347 () Bool)

(declare-fun content!12276 (List!65113) (InoxSet Context!11310))

(assert (=> b!6363347 (= e!3863825 (= (content!12276 lt!2367077) z!1189))))

(assert (= (and d!1996075 res!2618138) b!6363347))

(declare-fun m!7168024 () Bool)

(assert (=> d!1996075 m!7168024))

(declare-fun m!7168026 () Bool)

(assert (=> d!1996075 m!7168026))

(declare-fun m!7168028 () Bool)

(assert (=> b!6363347 m!7168028))

(assert (=> b!6362715 d!1996075))

(declare-fun bs!1594317 () Bool)

(declare-fun d!1996077 () Bool)

(assert (= bs!1594317 (and d!1996077 d!1995987)))

(declare-fun lambda!350534 () Int)

(assert (=> bs!1594317 (= lambda!350534 lambda!350505)))

(declare-fun bs!1594318 () Bool)

(assert (= bs!1594318 (and d!1996077 d!1995995)))

(assert (=> bs!1594318 (= lambda!350534 lambda!350512)))

(declare-fun bs!1594319 () Bool)

(assert (= bs!1594319 (and d!1996077 d!1996053)))

(assert (=> bs!1594319 (= lambda!350534 lambda!350531)))

(assert (=> d!1996077 (= (inv!83924 lt!2367010) (forall!15449 (exprs!6155 lt!2367010) lambda!350534))))

(declare-fun bs!1594320 () Bool)

(assert (= bs!1594320 d!1996077))

(declare-fun m!7168030 () Bool)

(assert (=> bs!1594320 m!7168030))

(assert (=> b!6362717 d!1996077))

(declare-fun bm!542995 () Bool)

(declare-fun call!543000 () (InoxSet Context!11310))

(assert (=> bm!542995 (= call!543000 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 lt!2367010)) (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (h!71438 s!2326)))))

(declare-fun d!1996079 () Bool)

(declare-fun c!1158461 () Bool)

(declare-fun e!3863828 () Bool)

(assert (=> d!1996079 (= c!1158461 e!3863828)))

(declare-fun res!2618139 () Bool)

(assert (=> d!1996079 (=> (not res!2618139) (not e!3863828))))

(assert (=> d!1996079 (= res!2618139 ((_ is Cons!64988) (exprs!6155 lt!2367010)))))

(declare-fun e!3863826 () (InoxSet Context!11310))

(assert (=> d!1996079 (= (derivationStepZipperUp!1445 lt!2367010 (h!71438 s!2326)) e!3863826)))

(declare-fun b!6363348 () Bool)

(declare-fun e!3863827 () (InoxSet Context!11310))

(assert (=> b!6363348 (= e!3863826 e!3863827)))

(declare-fun c!1158462 () Bool)

(assert (=> b!6363348 (= c!1158462 ((_ is Cons!64988) (exprs!6155 lt!2367010)))))

(declare-fun b!6363349 () Bool)

(assert (=> b!6363349 (= e!3863827 call!543000)))

(declare-fun b!6363350 () Bool)

(assert (=> b!6363350 (= e!3863827 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363351 () Bool)

(assert (=> b!6363351 (= e!3863828 (nullable!6264 (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun b!6363352 () Bool)

(assert (=> b!6363352 (= e!3863826 ((_ map or) call!543000 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (h!71438 s!2326))))))

(assert (= (and d!1996079 res!2618139) b!6363351))

(assert (= (and d!1996079 c!1158461) b!6363352))

(assert (= (and d!1996079 (not c!1158461)) b!6363348))

(assert (= (and b!6363348 c!1158462) b!6363349))

(assert (= (and b!6363348 (not c!1158462)) b!6363350))

(assert (= (or b!6363352 b!6363349) bm!542995))

(declare-fun m!7168032 () Bool)

(assert (=> bm!542995 m!7168032))

(declare-fun m!7168034 () Bool)

(assert (=> b!6363351 m!7168034))

(declare-fun m!7168036 () Bool)

(assert (=> b!6363352 m!7168036))

(assert (=> b!6362717 d!1996079))

(declare-fun e!3863831 () Bool)

(declare-fun d!1996081 () Bool)

(assert (=> d!1996081 (= (matchZipper!2283 ((_ map or) lt!2367005 lt!2367006) (t!378708 s!2326)) e!3863831)))

(declare-fun res!2618142 () Bool)

(assert (=> d!1996081 (=> res!2618142 e!3863831)))

(assert (=> d!1996081 (= res!2618142 (matchZipper!2283 lt!2367005 (t!378708 s!2326)))))

(declare-fun lt!2367080 () Unit!158415)

(declare-fun choose!47265 ((InoxSet Context!11310) (InoxSet Context!11310) List!65114) Unit!158415)

(assert (=> d!1996081 (= lt!2367080 (choose!47265 lt!2367005 lt!2367006 (t!378708 s!2326)))))

(assert (=> d!1996081 (= (lemmaZipperConcatMatchesSameAsBothZippers!1102 lt!2367005 lt!2367006 (t!378708 s!2326)) lt!2367080)))

(declare-fun b!6363355 () Bool)

(assert (=> b!6363355 (= e!3863831 (matchZipper!2283 lt!2367006 (t!378708 s!2326)))))

(assert (= (and d!1996081 (not res!2618142)) b!6363355))

(assert (=> d!1996081 m!7167646))

(assert (=> d!1996081 m!7167644))

(declare-fun m!7168038 () Bool)

(assert (=> d!1996081 m!7168038))

(assert (=> b!6363355 m!7167662))

(assert (=> b!6362716 d!1996081))

(declare-fun d!1996083 () Bool)

(declare-fun c!1158465 () Bool)

(assert (=> d!1996083 (= c!1158465 (isEmpty!37096 (t!378708 s!2326)))))

(declare-fun e!3863834 () Bool)

(assert (=> d!1996083 (= (matchZipper!2283 lt!2367005 (t!378708 s!2326)) e!3863834)))

(declare-fun b!6363360 () Bool)

(declare-fun nullableZipper!2037 ((InoxSet Context!11310)) Bool)

(assert (=> b!6363360 (= e!3863834 (nullableZipper!2037 lt!2367005))))

(declare-fun b!6363361 () Bool)

(declare-fun derivationStepZipper!2237 ((InoxSet Context!11310) C!32812) (InoxSet Context!11310))

(assert (=> b!6363361 (= e!3863834 (matchZipper!2283 (derivationStepZipper!2237 lt!2367005 (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))))))

(assert (= (and d!1996083 c!1158465) b!6363360))

(assert (= (and d!1996083 (not c!1158465)) b!6363361))

(declare-fun m!7168040 () Bool)

(assert (=> d!1996083 m!7168040))

(declare-fun m!7168042 () Bool)

(assert (=> b!6363360 m!7168042))

(declare-fun m!7168044 () Bool)

(assert (=> b!6363361 m!7168044))

(assert (=> b!6363361 m!7168044))

(declare-fun m!7168046 () Bool)

(assert (=> b!6363361 m!7168046))

(declare-fun m!7168048 () Bool)

(assert (=> b!6363361 m!7168048))

(assert (=> b!6363361 m!7168046))

(assert (=> b!6363361 m!7168048))

(declare-fun m!7168050 () Bool)

(assert (=> b!6363361 m!7168050))

(assert (=> b!6362716 d!1996083))

(declare-fun d!1996085 () Bool)

(declare-fun c!1158466 () Bool)

(assert (=> d!1996085 (= c!1158466 (isEmpty!37096 (t!378708 s!2326)))))

(declare-fun e!3863835 () Bool)

(assert (=> d!1996085 (= (matchZipper!2283 ((_ map or) lt!2367005 lt!2367006) (t!378708 s!2326)) e!3863835)))

(declare-fun b!6363362 () Bool)

(assert (=> b!6363362 (= e!3863835 (nullableZipper!2037 ((_ map or) lt!2367005 lt!2367006)))))

(declare-fun b!6363363 () Bool)

(assert (=> b!6363363 (= e!3863835 (matchZipper!2283 (derivationStepZipper!2237 ((_ map or) lt!2367005 lt!2367006) (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))))))

(assert (= (and d!1996085 c!1158466) b!6363362))

(assert (= (and d!1996085 (not c!1158466)) b!6363363))

(assert (=> d!1996085 m!7168040))

(declare-fun m!7168052 () Bool)

(assert (=> b!6363362 m!7168052))

(assert (=> b!6363363 m!7168044))

(assert (=> b!6363363 m!7168044))

(declare-fun m!7168054 () Bool)

(assert (=> b!6363363 m!7168054))

(assert (=> b!6363363 m!7168048))

(assert (=> b!6363363 m!7168054))

(assert (=> b!6363363 m!7168048))

(declare-fun m!7168056 () Bool)

(assert (=> b!6363363 m!7168056))

(assert (=> b!6362716 d!1996085))

(declare-fun d!1996087 () Bool)

(declare-fun lt!2367083 () Regex!16271)

(assert (=> d!1996087 (validRegex!8007 lt!2367083)))

(assert (=> d!1996087 (= lt!2367083 (generalisedUnion!2115 (unfocusZipperList!1692 zl!343)))))

(assert (=> d!1996087 (= (unfocusZipper!2013 zl!343) lt!2367083)))

(declare-fun bs!1594321 () Bool)

(assert (= bs!1594321 d!1996087))

(declare-fun m!7168058 () Bool)

(assert (=> bs!1594321 m!7168058))

(assert (=> bs!1594321 m!7167702))

(assert (=> bs!1594321 m!7167702))

(assert (=> bs!1594321 m!7167704))

(assert (=> b!6362733 d!1996087))

(declare-fun bs!1594322 () Bool)

(declare-fun d!1996089 () Bool)

(assert (= bs!1594322 (and d!1996089 d!1995987)))

(declare-fun lambda!350535 () Int)

(assert (=> bs!1594322 (= lambda!350535 lambda!350505)))

(declare-fun bs!1594323 () Bool)

(assert (= bs!1594323 (and d!1996089 d!1995995)))

(assert (=> bs!1594323 (= lambda!350535 lambda!350512)))

(declare-fun bs!1594324 () Bool)

(assert (= bs!1594324 (and d!1996089 d!1996053)))

(assert (=> bs!1594324 (= lambda!350535 lambda!350531)))

(declare-fun bs!1594325 () Bool)

(assert (= bs!1594325 (and d!1996089 d!1996077)))

(assert (=> bs!1594325 (= lambda!350535 lambda!350534)))

(assert (=> d!1996089 (= (inv!83924 setElem!43348) (forall!15449 (exprs!6155 setElem!43348) lambda!350535))))

(declare-fun bs!1594326 () Bool)

(assert (= bs!1594326 d!1996089))

(declare-fun m!7168060 () Bool)

(assert (=> bs!1594326 m!7168060))

(assert (=> setNonEmpty!43348 d!1996089))

(declare-fun bs!1594327 () Bool)

(declare-fun d!1996091 () Bool)

(assert (= bs!1594327 (and d!1996091 d!1995995)))

(declare-fun lambda!350536 () Int)

(assert (=> bs!1594327 (= lambda!350536 lambda!350512)))

(declare-fun bs!1594328 () Bool)

(assert (= bs!1594328 (and d!1996091 d!1996089)))

(assert (=> bs!1594328 (= lambda!350536 lambda!350535)))

(declare-fun bs!1594329 () Bool)

(assert (= bs!1594329 (and d!1996091 d!1996053)))

(assert (=> bs!1594329 (= lambda!350536 lambda!350531)))

(declare-fun bs!1594330 () Bool)

(assert (= bs!1594330 (and d!1996091 d!1995987)))

(assert (=> bs!1594330 (= lambda!350536 lambda!350505)))

(declare-fun bs!1594331 () Bool)

(assert (= bs!1594331 (and d!1996091 d!1996077)))

(assert (=> bs!1594331 (= lambda!350536 lambda!350534)))

(assert (=> d!1996091 (= (inv!83924 (h!71437 zl!343)) (forall!15449 (exprs!6155 (h!71437 zl!343)) lambda!350536))))

(declare-fun bs!1594332 () Bool)

(assert (= bs!1594332 d!1996091))

(declare-fun m!7168062 () Bool)

(assert (=> bs!1594332 m!7168062))

(assert (=> b!6362721 d!1996091))

(declare-fun d!1996093 () Bool)

(assert (=> d!1996093 (= (isEmpty!37094 (t!378706 (exprs!6155 (h!71437 zl!343)))) ((_ is Nil!64988) (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> b!6362740 d!1996093))

(declare-fun b!6363364 () Bool)

(declare-fun e!3863837 () (InoxSet Context!11310))

(assert (=> b!6363364 (= e!3863837 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363365 () Bool)

(declare-fun e!3863836 () (InoxSet Context!11310))

(declare-fun call!543004 () (InoxSet Context!11310))

(declare-fun call!543003 () (InoxSet Context!11310))

(assert (=> b!6363365 (= e!3863836 ((_ map or) call!543004 call!543003))))

(declare-fun b!6363366 () Bool)

(declare-fun e!3863838 () (InoxSet Context!11310))

(assert (=> b!6363366 (= e!3863838 e!3863836)))

(declare-fun c!1158469 () Bool)

(assert (=> b!6363366 (= c!1158469 ((_ is Union!16271) (reg!16600 (regOne!33054 r!7292))))))

(declare-fun bm!542996 () Bool)

(declare-fun call!543005 () (InoxSet Context!11310))

(declare-fun call!543001 () (InoxSet Context!11310))

(assert (=> bm!542996 (= call!543005 call!543001)))

(declare-fun b!6363367 () Bool)

(declare-fun c!1158468 () Bool)

(declare-fun e!3863840 () Bool)

(assert (=> b!6363367 (= c!1158468 e!3863840)))

(declare-fun res!2618143 () Bool)

(assert (=> b!6363367 (=> (not res!2618143) (not e!3863840))))

(assert (=> b!6363367 (= res!2618143 ((_ is Concat!25116) (reg!16600 (regOne!33054 r!7292))))))

(declare-fun e!3863839 () (InoxSet Context!11310))

(assert (=> b!6363367 (= e!3863836 e!3863839)))

(declare-fun d!1996095 () Bool)

(declare-fun c!1158470 () Bool)

(assert (=> d!1996095 (= c!1158470 (and ((_ is ElementMatch!16271) (reg!16600 (regOne!33054 r!7292))) (= (c!1158284 (reg!16600 (regOne!33054 r!7292))) (h!71438 s!2326))))))

(assert (=> d!1996095 (= (derivationStepZipperDown!1519 (reg!16600 (regOne!33054 r!7292)) (Context!11311 lt!2367014) (h!71438 s!2326)) e!3863838)))

(declare-fun call!543006 () List!65112)

(declare-fun c!1158467 () Bool)

(declare-fun bm!542997 () Bool)

(assert (=> bm!542997 (= call!543004 (derivationStepZipperDown!1519 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))) (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006)) (h!71438 s!2326)))))

(declare-fun b!6363368 () Bool)

(assert (=> b!6363368 (= e!3863838 (store ((as const (Array Context!11310 Bool)) false) (Context!11311 lt!2367014) true))))

(declare-fun bm!542998 () Bool)

(assert (=> bm!542998 (= call!543001 call!543004)))

(declare-fun bm!542999 () Bool)

(declare-fun call!543002 () List!65112)

(assert (=> bm!542999 (= call!543003 (derivationStepZipperDown!1519 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))) (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002)) (h!71438 s!2326)))))

(declare-fun b!6363369 () Bool)

(declare-fun e!3863841 () (InoxSet Context!11310))

(assert (=> b!6363369 (= e!3863841 call!543005)))

(declare-fun bm!543000 () Bool)

(assert (=> bm!543000 (= call!543006 call!543002)))

(declare-fun b!6363370 () Bool)

(assert (=> b!6363370 (= e!3863840 (nullable!6264 (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))))

(declare-fun b!6363371 () Bool)

(assert (=> b!6363371 (= e!3863837 call!543005)))

(declare-fun b!6363372 () Bool)

(declare-fun c!1158471 () Bool)

(assert (=> b!6363372 (= c!1158471 ((_ is Star!16271) (reg!16600 (regOne!33054 r!7292))))))

(assert (=> b!6363372 (= e!3863841 e!3863837)))

(declare-fun bm!543001 () Bool)

(assert (=> bm!543001 (= call!543002 ($colon$colon!2132 (exprs!6155 (Context!11311 lt!2367014)) (ite (or c!1158468 c!1158467) (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (regOne!33054 r!7292)))))))

(declare-fun b!6363373 () Bool)

(assert (=> b!6363373 (= e!3863839 e!3863841)))

(assert (=> b!6363373 (= c!1158467 ((_ is Concat!25116) (reg!16600 (regOne!33054 r!7292))))))

(declare-fun b!6363374 () Bool)

(assert (=> b!6363374 (= e!3863839 ((_ map or) call!543003 call!543001))))

(assert (= (and d!1996095 c!1158470) b!6363368))

(assert (= (and d!1996095 (not c!1158470)) b!6363366))

(assert (= (and b!6363366 c!1158469) b!6363365))

(assert (= (and b!6363366 (not c!1158469)) b!6363367))

(assert (= (and b!6363367 res!2618143) b!6363370))

(assert (= (and b!6363367 c!1158468) b!6363374))

(assert (= (and b!6363367 (not c!1158468)) b!6363373))

(assert (= (and b!6363373 c!1158467) b!6363369))

(assert (= (and b!6363373 (not c!1158467)) b!6363372))

(assert (= (and b!6363372 c!1158471) b!6363371))

(assert (= (and b!6363372 (not c!1158471)) b!6363364))

(assert (= (or b!6363369 b!6363371) bm!543000))

(assert (= (or b!6363369 b!6363371) bm!542996))

(assert (= (or b!6363374 bm!543000) bm!543001))

(assert (= (or b!6363374 bm!542996) bm!542998))

(assert (= (or b!6363365 b!6363374) bm!542999))

(assert (= (or b!6363365 bm!542998) bm!542997))

(declare-fun m!7168064 () Bool)

(assert (=> bm!542997 m!7168064))

(declare-fun m!7168066 () Bool)

(assert (=> b!6363368 m!7168066))

(declare-fun m!7168068 () Bool)

(assert (=> bm!543001 m!7168068))

(declare-fun m!7168070 () Bool)

(assert (=> b!6363370 m!7168070))

(declare-fun m!7168072 () Bool)

(assert (=> bm!542999 m!7168072))

(assert (=> b!6362730 d!1996095))

(declare-fun d!1996097 () Bool)

(declare-fun c!1158472 () Bool)

(assert (=> d!1996097 (= c!1158472 (isEmpty!37096 (t!378708 s!2326)))))

(declare-fun e!3863842 () Bool)

(assert (=> d!1996097 (= (matchZipper!2283 lt!2367006 (t!378708 s!2326)) e!3863842)))

(declare-fun b!6363375 () Bool)

(assert (=> b!6363375 (= e!3863842 (nullableZipper!2037 lt!2367006))))

(declare-fun b!6363376 () Bool)

(assert (=> b!6363376 (= e!3863842 (matchZipper!2283 (derivationStepZipper!2237 lt!2367006 (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))))))

(assert (= (and d!1996097 c!1158472) b!6363375))

(assert (= (and d!1996097 (not c!1158472)) b!6363376))

(assert (=> d!1996097 m!7168040))

(declare-fun m!7168074 () Bool)

(assert (=> b!6363375 m!7168074))

(assert (=> b!6363376 m!7168044))

(assert (=> b!6363376 m!7168044))

(declare-fun m!7168076 () Bool)

(assert (=> b!6363376 m!7168076))

(assert (=> b!6363376 m!7168048))

(assert (=> b!6363376 m!7168076))

(assert (=> b!6363376 m!7168048))

(declare-fun m!7168078 () Bool)

(assert (=> b!6363376 m!7168078))

(assert (=> b!6362722 d!1996097))

(declare-fun d!1996099 () Bool)

(declare-fun e!3863854 () Bool)

(assert (=> d!1996099 e!3863854))

(declare-fun res!2618157 () Bool)

(assert (=> d!1996099 (=> res!2618157 e!3863854)))

(declare-fun e!3863855 () Bool)

(assert (=> d!1996099 (= res!2618157 e!3863855)))

(declare-fun res!2618155 () Bool)

(assert (=> d!1996099 (=> (not res!2618155) (not e!3863855))))

(declare-fun lt!2367091 () Option!16162)

(assert (=> d!1996099 (= res!2618155 (isDefined!12865 lt!2367091))))

(declare-fun e!3863853 () Option!16162)

(assert (=> d!1996099 (= lt!2367091 e!3863853)))

(declare-fun c!1158478 () Bool)

(declare-fun e!3863856 () Bool)

(assert (=> d!1996099 (= c!1158478 e!3863856)))

(declare-fun res!2618154 () Bool)

(assert (=> d!1996099 (=> (not res!2618154) (not e!3863856))))

(assert (=> d!1996099 (= res!2618154 (matchR!8454 (regOne!33054 r!7292) Nil!64990))))

(assert (=> d!1996099 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996099 (= (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326) lt!2367091)))

(declare-fun b!6363395 () Bool)

(declare-fun ++!14340 (List!65114 List!65114) List!65114)

(declare-fun get!22491 (Option!16162) tuple2!66500)

(assert (=> b!6363395 (= e!3863855 (= (++!14340 (_1!36553 (get!22491 lt!2367091)) (_2!36553 (get!22491 lt!2367091))) s!2326))))

(declare-fun b!6363396 () Bool)

(declare-fun e!3863857 () Option!16162)

(assert (=> b!6363396 (= e!3863853 e!3863857)))

(declare-fun c!1158477 () Bool)

(assert (=> b!6363396 (= c!1158477 ((_ is Nil!64990) s!2326))))

(declare-fun b!6363397 () Bool)

(declare-fun res!2618158 () Bool)

(assert (=> b!6363397 (=> (not res!2618158) (not e!3863855))))

(assert (=> b!6363397 (= res!2618158 (matchR!8454 (regOne!33054 r!7292) (_1!36553 (get!22491 lt!2367091))))))

(declare-fun b!6363398 () Bool)

(declare-fun res!2618156 () Bool)

(assert (=> b!6363398 (=> (not res!2618156) (not e!3863855))))

(assert (=> b!6363398 (= res!2618156 (matchR!8454 (regTwo!33054 r!7292) (_2!36553 (get!22491 lt!2367091))))))

(declare-fun b!6363399 () Bool)

(assert (=> b!6363399 (= e!3863853 (Some!16161 (tuple2!66501 Nil!64990 s!2326)))))

(declare-fun b!6363400 () Bool)

(declare-fun lt!2367090 () Unit!158415)

(declare-fun lt!2367092 () Unit!158415)

(assert (=> b!6363400 (= lt!2367090 lt!2367092)))

(assert (=> b!6363400 (= (++!14340 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2435 (List!65114 C!32812 List!65114 List!65114) Unit!158415)

(assert (=> b!6363400 (= lt!2367092 (lemmaMoveElementToOtherListKeepsConcatEq!2435 Nil!64990 (h!71438 s!2326) (t!378708 s!2326) s!2326))))

(assert (=> b!6363400 (= e!3863857 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326) s!2326))))

(declare-fun b!6363401 () Bool)

(assert (=> b!6363401 (= e!3863856 (matchR!8454 (regTwo!33054 r!7292) s!2326))))

(declare-fun b!6363402 () Bool)

(assert (=> b!6363402 (= e!3863854 (not (isDefined!12865 lt!2367091)))))

(declare-fun b!6363403 () Bool)

(assert (=> b!6363403 (= e!3863857 None!16161)))

(assert (= (and d!1996099 res!2618154) b!6363401))

(assert (= (and d!1996099 c!1158478) b!6363399))

(assert (= (and d!1996099 (not c!1158478)) b!6363396))

(assert (= (and b!6363396 c!1158477) b!6363403))

(assert (= (and b!6363396 (not c!1158477)) b!6363400))

(assert (= (and d!1996099 res!2618155) b!6363397))

(assert (= (and b!6363397 res!2618158) b!6363398))

(assert (= (and b!6363398 res!2618156) b!6363395))

(assert (= (and d!1996099 (not res!2618157)) b!6363402))

(declare-fun m!7168080 () Bool)

(assert (=> d!1996099 m!7168080))

(declare-fun m!7168082 () Bool)

(assert (=> d!1996099 m!7168082))

(declare-fun m!7168084 () Bool)

(assert (=> d!1996099 m!7168084))

(declare-fun m!7168086 () Bool)

(assert (=> b!6363400 m!7168086))

(assert (=> b!6363400 m!7168086))

(declare-fun m!7168088 () Bool)

(assert (=> b!6363400 m!7168088))

(declare-fun m!7168090 () Bool)

(assert (=> b!6363400 m!7168090))

(assert (=> b!6363400 m!7168086))

(declare-fun m!7168092 () Bool)

(assert (=> b!6363400 m!7168092))

(assert (=> b!6363402 m!7168080))

(declare-fun m!7168094 () Bool)

(assert (=> b!6363401 m!7168094))

(declare-fun m!7168096 () Bool)

(assert (=> b!6363398 m!7168096))

(declare-fun m!7168098 () Bool)

(assert (=> b!6363398 m!7168098))

(assert (=> b!6363395 m!7168096))

(declare-fun m!7168100 () Bool)

(assert (=> b!6363395 m!7168100))

(assert (=> b!6363397 m!7168096))

(declare-fun m!7168102 () Bool)

(assert (=> b!6363397 m!7168102))

(assert (=> b!6362731 d!1996099))

(declare-fun d!1996101 () Bool)

(declare-fun choose!47266 (Int) Bool)

(assert (=> d!1996101 (= (Exists!3341 lambda!350485) (choose!47266 lambda!350485))))

(declare-fun bs!1594333 () Bool)

(assert (= bs!1594333 d!1996101))

(declare-fun m!7168104 () Bool)

(assert (=> bs!1594333 m!7168104))

(assert (=> b!6362731 d!1996101))

(declare-fun d!1996103 () Bool)

(assert (=> d!1996103 (= (Exists!3341 lambda!350486) (choose!47266 lambda!350486))))

(declare-fun bs!1594334 () Bool)

(assert (= bs!1594334 d!1996103))

(declare-fun m!7168106 () Bool)

(assert (=> bs!1594334 m!7168106))

(assert (=> b!6362731 d!1996103))

(declare-fun bs!1594335 () Bool)

(declare-fun d!1996105 () Bool)

(assert (= bs!1594335 (and d!1996105 b!6362731)))

(declare-fun lambda!350539 () Int)

(assert (=> bs!1594335 (= lambda!350539 lambda!350485)))

(assert (=> bs!1594335 (not (= lambda!350539 lambda!350486))))

(declare-fun bs!1594336 () Bool)

(assert (= bs!1594336 (and d!1996105 b!6363104)))

(assert (=> bs!1594336 (not (= lambda!350539 lambda!350517))))

(declare-fun bs!1594337 () Bool)

(assert (= bs!1594337 (and d!1996105 b!6363103)))

(assert (=> bs!1594337 (not (= lambda!350539 lambda!350518))))

(assert (=> d!1996105 true))

(assert (=> d!1996105 true))

(assert (=> d!1996105 true))

(assert (=> d!1996105 (= (isDefined!12865 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326)) (Exists!3341 lambda!350539))))

(declare-fun lt!2367095 () Unit!158415)

(declare-fun choose!47267 (Regex!16271 Regex!16271 List!65114) Unit!158415)

(assert (=> d!1996105 (= lt!2367095 (choose!47267 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326))))

(assert (=> d!1996105 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996105 (= (lemmaFindConcatSeparationEquivalentToExists!2340 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326) lt!2367095)))

(declare-fun bs!1594338 () Bool)

(assert (= bs!1594338 d!1996105))

(assert (=> bs!1594338 m!7167690))

(assert (=> bs!1594338 m!7167692))

(assert (=> bs!1594338 m!7168084))

(declare-fun m!7168108 () Bool)

(assert (=> bs!1594338 m!7168108))

(declare-fun m!7168110 () Bool)

(assert (=> bs!1594338 m!7168110))

(assert (=> bs!1594338 m!7167690))

(assert (=> b!6362731 d!1996105))

(declare-fun bs!1594339 () Bool)

(declare-fun d!1996107 () Bool)

(assert (= bs!1594339 (and d!1996107 b!6362731)))

(declare-fun lambda!350544 () Int)

(assert (=> bs!1594339 (not (= lambda!350544 lambda!350486))))

(declare-fun bs!1594340 () Bool)

(assert (= bs!1594340 (and d!1996107 b!6363103)))

(assert (=> bs!1594340 (not (= lambda!350544 lambda!350518))))

(declare-fun bs!1594341 () Bool)

(assert (= bs!1594341 (and d!1996107 d!1996105)))

(assert (=> bs!1594341 (= lambda!350544 lambda!350539)))

(declare-fun bs!1594342 () Bool)

(assert (= bs!1594342 (and d!1996107 b!6363104)))

(assert (=> bs!1594342 (not (= lambda!350544 lambda!350517))))

(assert (=> bs!1594339 (= lambda!350544 lambda!350485)))

(assert (=> d!1996107 true))

(assert (=> d!1996107 true))

(assert (=> d!1996107 true))

(declare-fun lambda!350545 () Int)

(assert (=> bs!1594340 (= lambda!350545 lambda!350518)))

(assert (=> bs!1594341 (not (= lambda!350545 lambda!350539))))

(assert (=> bs!1594342 (not (= lambda!350545 lambda!350517))))

(assert (=> bs!1594339 (not (= lambda!350545 lambda!350485))))

(declare-fun bs!1594343 () Bool)

(assert (= bs!1594343 d!1996107))

(assert (=> bs!1594343 (not (= lambda!350545 lambda!350544))))

(assert (=> bs!1594339 (= lambda!350545 lambda!350486)))

(assert (=> d!1996107 true))

(assert (=> d!1996107 true))

(assert (=> d!1996107 true))

(assert (=> d!1996107 (= (Exists!3341 lambda!350544) (Exists!3341 lambda!350545))))

(declare-fun lt!2367098 () Unit!158415)

(declare-fun choose!47268 (Regex!16271 Regex!16271 List!65114) Unit!158415)

(assert (=> d!1996107 (= lt!2367098 (choose!47268 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326))))

(assert (=> d!1996107 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996107 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1878 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326) lt!2367098)))

(declare-fun m!7168112 () Bool)

(assert (=> bs!1594343 m!7168112))

(declare-fun m!7168114 () Bool)

(assert (=> bs!1594343 m!7168114))

(declare-fun m!7168116 () Bool)

(assert (=> bs!1594343 m!7168116))

(assert (=> bs!1594343 m!7168084))

(assert (=> b!6362731 d!1996107))

(declare-fun d!1996109 () Bool)

(declare-fun isEmpty!37098 (Option!16162) Bool)

(assert (=> d!1996109 (= (isDefined!12865 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326)) (not (isEmpty!37098 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326))))))

(declare-fun bs!1594344 () Bool)

(assert (= bs!1594344 d!1996109))

(assert (=> bs!1594344 m!7167690))

(declare-fun m!7168118 () Bool)

(assert (=> bs!1594344 m!7168118))

(assert (=> b!6362731 d!1996109))

(declare-fun b!6363428 () Bool)

(declare-fun e!3863866 () Bool)

(declare-fun tp!1771950 () Bool)

(assert (=> b!6363428 (= e!3863866 tp!1771950)))

(declare-fun b!6363429 () Bool)

(declare-fun tp!1771949 () Bool)

(declare-fun tp!1771948 () Bool)

(assert (=> b!6363429 (= e!3863866 (and tp!1771949 tp!1771948))))

(declare-fun b!6363426 () Bool)

(assert (=> b!6363426 (= e!3863866 tp_is_empty!41795)))

(declare-fun b!6363427 () Bool)

(declare-fun tp!1771951 () Bool)

(declare-fun tp!1771947 () Bool)

(assert (=> b!6363427 (= e!3863866 (and tp!1771951 tp!1771947))))

(assert (=> b!6362728 (= tp!1771870 e!3863866)))

(assert (= (and b!6362728 ((_ is ElementMatch!16271) (regOne!33055 r!7292))) b!6363426))

(assert (= (and b!6362728 ((_ is Concat!25116) (regOne!33055 r!7292))) b!6363427))

(assert (= (and b!6362728 ((_ is Star!16271) (regOne!33055 r!7292))) b!6363428))

(assert (= (and b!6362728 ((_ is Union!16271) (regOne!33055 r!7292))) b!6363429))

(declare-fun b!6363432 () Bool)

(declare-fun e!3863867 () Bool)

(declare-fun tp!1771955 () Bool)

(assert (=> b!6363432 (= e!3863867 tp!1771955)))

(declare-fun b!6363433 () Bool)

(declare-fun tp!1771954 () Bool)

(declare-fun tp!1771953 () Bool)

(assert (=> b!6363433 (= e!3863867 (and tp!1771954 tp!1771953))))

(declare-fun b!6363430 () Bool)

(assert (=> b!6363430 (= e!3863867 tp_is_empty!41795)))

(declare-fun b!6363431 () Bool)

(declare-fun tp!1771956 () Bool)

(declare-fun tp!1771952 () Bool)

(assert (=> b!6363431 (= e!3863867 (and tp!1771956 tp!1771952))))

(assert (=> b!6362728 (= tp!1771876 e!3863867)))

(assert (= (and b!6362728 ((_ is ElementMatch!16271) (regTwo!33055 r!7292))) b!6363430))

(assert (= (and b!6362728 ((_ is Concat!25116) (regTwo!33055 r!7292))) b!6363431))

(assert (= (and b!6362728 ((_ is Star!16271) (regTwo!33055 r!7292))) b!6363432))

(assert (= (and b!6362728 ((_ is Union!16271) (regTwo!33055 r!7292))) b!6363433))

(declare-fun condSetEmpty!43354 () Bool)

(assert (=> setNonEmpty!43348 (= condSetEmpty!43354 (= setRest!43348 ((as const (Array Context!11310 Bool)) false)))))

(declare-fun setRes!43354 () Bool)

(assert (=> setNonEmpty!43348 (= tp!1771872 setRes!43354)))

(declare-fun setIsEmpty!43354 () Bool)

(assert (=> setIsEmpty!43354 setRes!43354))

(declare-fun setNonEmpty!43354 () Bool)

(declare-fun tp!1771962 () Bool)

(declare-fun e!3863870 () Bool)

(declare-fun setElem!43354 () Context!11310)

(assert (=> setNonEmpty!43354 (= setRes!43354 (and tp!1771962 (inv!83924 setElem!43354) e!3863870))))

(declare-fun setRest!43354 () (InoxSet Context!11310))

(assert (=> setNonEmpty!43354 (= setRest!43348 ((_ map or) (store ((as const (Array Context!11310 Bool)) false) setElem!43354 true) setRest!43354))))

(declare-fun b!6363438 () Bool)

(declare-fun tp!1771961 () Bool)

(assert (=> b!6363438 (= e!3863870 tp!1771961)))

(assert (= (and setNonEmpty!43348 condSetEmpty!43354) setIsEmpty!43354))

(assert (= (and setNonEmpty!43348 (not condSetEmpty!43354)) setNonEmpty!43354))

(assert (= setNonEmpty!43354 b!6363438))

(declare-fun m!7168120 () Bool)

(assert (=> setNonEmpty!43354 m!7168120))

(declare-fun b!6363441 () Bool)

(declare-fun e!3863871 () Bool)

(declare-fun tp!1771966 () Bool)

(assert (=> b!6363441 (= e!3863871 tp!1771966)))

(declare-fun b!6363442 () Bool)

(declare-fun tp!1771965 () Bool)

(declare-fun tp!1771964 () Bool)

(assert (=> b!6363442 (= e!3863871 (and tp!1771965 tp!1771964))))

(declare-fun b!6363439 () Bool)

(assert (=> b!6363439 (= e!3863871 tp_is_empty!41795)))

(declare-fun b!6363440 () Bool)

(declare-fun tp!1771967 () Bool)

(declare-fun tp!1771963 () Bool)

(assert (=> b!6363440 (= e!3863871 (and tp!1771967 tp!1771963))))

(assert (=> b!6362724 (= tp!1771873 e!3863871)))

(assert (= (and b!6362724 ((_ is ElementMatch!16271) (regOne!33054 r!7292))) b!6363439))

(assert (= (and b!6362724 ((_ is Concat!25116) (regOne!33054 r!7292))) b!6363440))

(assert (= (and b!6362724 ((_ is Star!16271) (regOne!33054 r!7292))) b!6363441))

(assert (= (and b!6362724 ((_ is Union!16271) (regOne!33054 r!7292))) b!6363442))

(declare-fun b!6363445 () Bool)

(declare-fun e!3863872 () Bool)

(declare-fun tp!1771971 () Bool)

(assert (=> b!6363445 (= e!3863872 tp!1771971)))

(declare-fun b!6363446 () Bool)

(declare-fun tp!1771970 () Bool)

(declare-fun tp!1771969 () Bool)

(assert (=> b!6363446 (= e!3863872 (and tp!1771970 tp!1771969))))

(declare-fun b!6363443 () Bool)

(assert (=> b!6363443 (= e!3863872 tp_is_empty!41795)))

(declare-fun b!6363444 () Bool)

(declare-fun tp!1771972 () Bool)

(declare-fun tp!1771968 () Bool)

(assert (=> b!6363444 (= e!3863872 (and tp!1771972 tp!1771968))))

(assert (=> b!6362724 (= tp!1771871 e!3863872)))

(assert (= (and b!6362724 ((_ is ElementMatch!16271) (regTwo!33054 r!7292))) b!6363443))

(assert (= (and b!6362724 ((_ is Concat!25116) (regTwo!33054 r!7292))) b!6363444))

(assert (= (and b!6362724 ((_ is Star!16271) (regTwo!33054 r!7292))) b!6363445))

(assert (= (and b!6362724 ((_ is Union!16271) (regTwo!33054 r!7292))) b!6363446))

(declare-fun b!6363449 () Bool)

(declare-fun e!3863873 () Bool)

(declare-fun tp!1771976 () Bool)

(assert (=> b!6363449 (= e!3863873 tp!1771976)))

(declare-fun b!6363450 () Bool)

(declare-fun tp!1771975 () Bool)

(declare-fun tp!1771974 () Bool)

(assert (=> b!6363450 (= e!3863873 (and tp!1771975 tp!1771974))))

(declare-fun b!6363447 () Bool)

(assert (=> b!6363447 (= e!3863873 tp_is_empty!41795)))

(declare-fun b!6363448 () Bool)

(declare-fun tp!1771977 () Bool)

(declare-fun tp!1771973 () Bool)

(assert (=> b!6363448 (= e!3863873 (and tp!1771977 tp!1771973))))

(assert (=> b!6362723 (= tp!1771877 e!3863873)))

(assert (= (and b!6362723 ((_ is ElementMatch!16271) (reg!16600 r!7292))) b!6363447))

(assert (= (and b!6362723 ((_ is Concat!25116) (reg!16600 r!7292))) b!6363448))

(assert (= (and b!6362723 ((_ is Star!16271) (reg!16600 r!7292))) b!6363449))

(assert (= (and b!6362723 ((_ is Union!16271) (reg!16600 r!7292))) b!6363450))

(declare-fun b!6363458 () Bool)

(declare-fun e!3863879 () Bool)

(declare-fun tp!1771982 () Bool)

(assert (=> b!6363458 (= e!3863879 tp!1771982)))

(declare-fun tp!1771983 () Bool)

(declare-fun e!3863878 () Bool)

(declare-fun b!6363457 () Bool)

(assert (=> b!6363457 (= e!3863878 (and (inv!83924 (h!71437 (t!378707 zl!343))) e!3863879 tp!1771983))))

(assert (=> b!6362721 (= tp!1771869 e!3863878)))

(assert (= b!6363457 b!6363458))

(assert (= (and b!6362721 ((_ is Cons!64989) (t!378707 zl!343))) b!6363457))

(declare-fun m!7168122 () Bool)

(assert (=> b!6363457 m!7168122))

(declare-fun b!6363463 () Bool)

(declare-fun e!3863882 () Bool)

(declare-fun tp!1771988 () Bool)

(declare-fun tp!1771989 () Bool)

(assert (=> b!6363463 (= e!3863882 (and tp!1771988 tp!1771989))))

(assert (=> b!6362720 (= tp!1771874 e!3863882)))

(assert (= (and b!6362720 ((_ is Cons!64988) (exprs!6155 setElem!43348))) b!6363463))

(declare-fun b!6363464 () Bool)

(declare-fun e!3863883 () Bool)

(declare-fun tp!1771990 () Bool)

(declare-fun tp!1771991 () Bool)

(assert (=> b!6363464 (= e!3863883 (and tp!1771990 tp!1771991))))

(assert (=> b!6362735 (= tp!1771878 e!3863883)))

(assert (= (and b!6362735 ((_ is Cons!64988) (exprs!6155 (h!71437 zl!343)))) b!6363464))

(declare-fun b!6363469 () Bool)

(declare-fun e!3863886 () Bool)

(declare-fun tp!1771994 () Bool)

(assert (=> b!6363469 (= e!3863886 (and tp_is_empty!41795 tp!1771994))))

(assert (=> b!6362736 (= tp!1771875 e!3863886)))

(assert (= (and b!6362736 ((_ is Cons!64990) (t!378708 s!2326))) b!6363469))

(declare-fun b_lambda!241875 () Bool)

(assert (= b_lambda!241873 (or b!6362719 b_lambda!241875)))

(declare-fun bs!1594345 () Bool)

(declare-fun d!1996111 () Bool)

(assert (= bs!1594345 (and d!1996111 b!6362719)))

(assert (=> bs!1594345 (= (dynLambda!25779 lambda!350487 (h!71437 zl!343)) (derivationStepZipperUp!1445 (h!71437 zl!343) (h!71438 s!2326)))))

(assert (=> bs!1594345 m!7167678))

(assert (=> d!1996057 d!1996111))

(check-sat (not b!6363166) (not b!6363102) (not b!6363464) (not b!6363279) (not b!6362952) (not bm!542974) (not b!6362953) (not b!6363446) (not b!6363427) (not b!6363463) (not b!6363431) (not d!1996075) (not b_lambda!241875) (not b!6363347) (not b!6363457) (not bm!542958) (not b!6363277) (not bs!1594345) (not b!6363168) (not bm!542990) (not b!6363397) (not d!1996059) (not b!6363362) (not b!6362948) (not d!1996051) (not d!1996099) (not b!6363339) (not b!6363458) (not b!6363285) (not b!6362846) (not d!1996081) (not b!6363469) (not b!6363442) (not setNonEmpty!43354) (not b!6363286) (not d!1996097) (not b!6363398) (not b!6363441) (not b!6363169) (not d!1995987) (not bm!542994) (not b!6363282) (not b!6363338) (not b!6362949) (not d!1996091) (not d!1996053) (not d!1996101) (not b!6363281) (not b!6363429) (not d!1996103) (not b!6363111) (not b!6362955) (not b!6363283) (not b!6363395) (not b!6363163) (not b!6363375) (not d!1996087) (not b!6363171) (not b!6363376) (not b!6363440) (not b!6362950) (not b!6363428) (not b!6363432) (not bm!542993) (not bm!542992) (not b!6363438) (not b!6363352) (not b!6363355) (not b!6363300) (not d!1996057) (not bm!543001) (not b!6363370) (not d!1995995) (not d!1996041) (not bm!542999) (not b!6363401) (not b!6363445) (not b!6363330) tp_is_empty!41795 (not d!1996089) (not b!6363301) (not b!6363400) (not b!6363360) (not d!1996067) (not d!1996073) (not b!6363449) (not b!6363343) (not b!6362956) (not bm!542995) (not d!1996105) (not bm!542919) (not b!6363450) (not d!1996083) (not b!6363351) (not b!6363444) (not d!1996085) (not b!6363361) (not bm!542959) (not b!6363402) (not b!6363162) (not d!1996107) (not b!6363363) (not bm!542920) (not bm!542962) (not b!6363433) (not bm!542997) (not bm!542988) (not b!6363344) (not d!1996109) (not b!6363448) (not d!1996077) (not b!6362982))
(check-sat)
(get-model)

(declare-fun d!1996173 () Bool)

(declare-fun lambda!350557 () Int)

(declare-fun exists!2574 ((InoxSet Context!11310) Int) Bool)

(assert (=> d!1996173 (= (nullableZipper!2037 ((_ map or) lt!2367005 lt!2367006)) (exists!2574 ((_ map or) lt!2367005 lt!2367006) lambda!350557))))

(declare-fun bs!1594392 () Bool)

(assert (= bs!1594392 d!1996173))

(declare-fun m!7168242 () Bool)

(assert (=> bs!1594392 m!7168242))

(assert (=> b!6363362 d!1996173))

(declare-fun d!1996185 () Bool)

(declare-fun res!2618235 () Bool)

(declare-fun e!3863982 () Bool)

(assert (=> d!1996185 (=> res!2618235 e!3863982)))

(assert (=> d!1996185 (= res!2618235 ((_ is Nil!64988) (exprs!6155 setElem!43348)))))

(assert (=> d!1996185 (= (forall!15449 (exprs!6155 setElem!43348) lambda!350535) e!3863982)))

(declare-fun b!6363611 () Bool)

(declare-fun e!3863983 () Bool)

(assert (=> b!6363611 (= e!3863982 e!3863983)))

(declare-fun res!2618236 () Bool)

(assert (=> b!6363611 (=> (not res!2618236) (not e!3863983))))

(declare-fun dynLambda!25781 (Int Regex!16271) Bool)

(assert (=> b!6363611 (= res!2618236 (dynLambda!25781 lambda!350535 (h!71436 (exprs!6155 setElem!43348))))))

(declare-fun b!6363612 () Bool)

(assert (=> b!6363612 (= e!3863983 (forall!15449 (t!378706 (exprs!6155 setElem!43348)) lambda!350535))))

(assert (= (and d!1996185 (not res!2618235)) b!6363611))

(assert (= (and b!6363611 res!2618236) b!6363612))

(declare-fun b_lambda!241885 () Bool)

(assert (=> (not b_lambda!241885) (not b!6363611)))

(declare-fun m!7168244 () Bool)

(assert (=> b!6363611 m!7168244))

(declare-fun m!7168246 () Bool)

(assert (=> b!6363612 m!7168246))

(assert (=> d!1996089 d!1996185))

(declare-fun d!1996187 () Bool)

(assert (=> d!1996187 (= (isEmpty!37096 s!2326) ((_ is Nil!64990) s!2326))))

(assert (=> bm!542962 d!1996187))

(declare-fun d!1996189 () Bool)

(assert (=> d!1996189 (= (isDefined!12865 lt!2367091) (not (isEmpty!37098 lt!2367091)))))

(declare-fun bs!1594393 () Bool)

(assert (= bs!1594393 d!1996189))

(declare-fun m!7168248 () Bool)

(assert (=> bs!1594393 m!7168248))

(assert (=> d!1996099 d!1996189))

(declare-fun b!6363614 () Bool)

(declare-fun e!3863985 () Bool)

(assert (=> b!6363614 (= e!3863985 (= (head!13035 Nil!64990) (c!1158284 (regOne!33054 r!7292))))))

(declare-fun b!6363615 () Bool)

(declare-fun e!3863988 () Bool)

(declare-fun e!3863984 () Bool)

(assert (=> b!6363615 (= e!3863988 e!3863984)))

(declare-fun res!2618244 () Bool)

(assert (=> b!6363615 (=> (not res!2618244) (not e!3863984))))

(declare-fun lt!2367101 () Bool)

(assert (=> b!6363615 (= res!2618244 (not lt!2367101))))

(declare-fun b!6363616 () Bool)

(declare-fun e!3863989 () Bool)

(assert (=> b!6363616 (= e!3863989 (not lt!2367101))))

(declare-fun b!6363617 () Bool)

(declare-fun res!2618242 () Bool)

(declare-fun e!3863987 () Bool)

(assert (=> b!6363617 (=> res!2618242 e!3863987)))

(assert (=> b!6363617 (= res!2618242 (not (isEmpty!37096 (tail!12120 Nil!64990))))))

(declare-fun b!6363618 () Bool)

(declare-fun res!2618239 () Bool)

(assert (=> b!6363618 (=> res!2618239 e!3863988)))

(assert (=> b!6363618 (= res!2618239 e!3863985)))

(declare-fun res!2618237 () Bool)

(assert (=> b!6363618 (=> (not res!2618237) (not e!3863985))))

(assert (=> b!6363618 (= res!2618237 lt!2367101)))

(declare-fun b!6363619 () Bool)

(declare-fun res!2618243 () Bool)

(assert (=> b!6363619 (=> (not res!2618243) (not e!3863985))))

(assert (=> b!6363619 (= res!2618243 (isEmpty!37096 (tail!12120 Nil!64990)))))

(declare-fun b!6363620 () Bool)

(declare-fun e!3863986 () Bool)

(assert (=> b!6363620 (= e!3863986 (matchR!8454 (derivativeStep!4976 (regOne!33054 r!7292) (head!13035 Nil!64990)) (tail!12120 Nil!64990)))))

(declare-fun b!6363621 () Bool)

(declare-fun res!2618240 () Bool)

(assert (=> b!6363621 (=> res!2618240 e!3863988)))

(assert (=> b!6363621 (= res!2618240 (not ((_ is ElementMatch!16271) (regOne!33054 r!7292))))))

(assert (=> b!6363621 (= e!3863989 e!3863988)))

(declare-fun d!1996191 () Bool)

(declare-fun e!3863990 () Bool)

(assert (=> d!1996191 e!3863990))

(declare-fun c!1158523 () Bool)

(assert (=> d!1996191 (= c!1158523 ((_ is EmptyExpr!16271) (regOne!33054 r!7292)))))

(assert (=> d!1996191 (= lt!2367101 e!3863986)))

(declare-fun c!1158525 () Bool)

(assert (=> d!1996191 (= c!1158525 (isEmpty!37096 Nil!64990))))

(assert (=> d!1996191 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996191 (= (matchR!8454 (regOne!33054 r!7292) Nil!64990) lt!2367101)))

(declare-fun b!6363613 () Bool)

(assert (=> b!6363613 (= e!3863987 (not (= (head!13035 Nil!64990) (c!1158284 (regOne!33054 r!7292)))))))

(declare-fun b!6363622 () Bool)

(assert (=> b!6363622 (= e!3863986 (nullable!6264 (regOne!33054 r!7292)))))

(declare-fun b!6363623 () Bool)

(assert (=> b!6363623 (= e!3863990 e!3863989)))

(declare-fun c!1158524 () Bool)

(assert (=> b!6363623 (= c!1158524 ((_ is EmptyLang!16271) (regOne!33054 r!7292)))))

(declare-fun b!6363624 () Bool)

(declare-fun call!543040 () Bool)

(assert (=> b!6363624 (= e!3863990 (= lt!2367101 call!543040))))

(declare-fun bm!543035 () Bool)

(assert (=> bm!543035 (= call!543040 (isEmpty!37096 Nil!64990))))

(declare-fun b!6363625 () Bool)

(assert (=> b!6363625 (= e!3863984 e!3863987)))

(declare-fun res!2618238 () Bool)

(assert (=> b!6363625 (=> res!2618238 e!3863987)))

(assert (=> b!6363625 (= res!2618238 call!543040)))

(declare-fun b!6363626 () Bool)

(declare-fun res!2618241 () Bool)

(assert (=> b!6363626 (=> (not res!2618241) (not e!3863985))))

(assert (=> b!6363626 (= res!2618241 (not call!543040))))

(assert (= (and d!1996191 c!1158525) b!6363622))

(assert (= (and d!1996191 (not c!1158525)) b!6363620))

(assert (= (and d!1996191 c!1158523) b!6363624))

(assert (= (and d!1996191 (not c!1158523)) b!6363623))

(assert (= (and b!6363623 c!1158524) b!6363616))

(assert (= (and b!6363623 (not c!1158524)) b!6363621))

(assert (= (and b!6363621 (not res!2618240)) b!6363618))

(assert (= (and b!6363618 res!2618237) b!6363626))

(assert (= (and b!6363626 res!2618241) b!6363619))

(assert (= (and b!6363619 res!2618243) b!6363614))

(assert (= (and b!6363618 (not res!2618239)) b!6363615))

(assert (= (and b!6363615 res!2618244) b!6363625))

(assert (= (and b!6363625 (not res!2618238)) b!6363617))

(assert (= (and b!6363617 (not res!2618242)) b!6363613))

(assert (= (or b!6363624 b!6363625 b!6363626) bm!543035))

(declare-fun m!7168250 () Bool)

(assert (=> b!6363622 m!7168250))

(declare-fun m!7168252 () Bool)

(assert (=> bm!543035 m!7168252))

(assert (=> d!1996191 m!7168252))

(assert (=> d!1996191 m!7168084))

(declare-fun m!7168254 () Bool)

(assert (=> b!6363614 m!7168254))

(assert (=> b!6363613 m!7168254))

(assert (=> b!6363620 m!7168254))

(assert (=> b!6363620 m!7168254))

(declare-fun m!7168256 () Bool)

(assert (=> b!6363620 m!7168256))

(declare-fun m!7168258 () Bool)

(assert (=> b!6363620 m!7168258))

(assert (=> b!6363620 m!7168256))

(assert (=> b!6363620 m!7168258))

(declare-fun m!7168260 () Bool)

(assert (=> b!6363620 m!7168260))

(assert (=> b!6363619 m!7168258))

(assert (=> b!6363619 m!7168258))

(declare-fun m!7168262 () Bool)

(assert (=> b!6363619 m!7168262))

(assert (=> b!6363617 m!7168258))

(assert (=> b!6363617 m!7168258))

(assert (=> b!6363617 m!7168262))

(assert (=> d!1996099 d!1996191))

(declare-fun b!6363631 () Bool)

(declare-fun e!3863996 () Bool)

(declare-fun e!3863998 () Bool)

(assert (=> b!6363631 (= e!3863996 e!3863998)))

(declare-fun res!2618252 () Bool)

(assert (=> b!6363631 (= res!2618252 (not (nullable!6264 (reg!16600 (regOne!33054 r!7292)))))))

(assert (=> b!6363631 (=> (not res!2618252) (not e!3863998))))

(declare-fun b!6363632 () Bool)

(declare-fun e!3863999 () Bool)

(declare-fun call!543042 () Bool)

(assert (=> b!6363632 (= e!3863999 call!543042)))

(declare-fun b!6363633 () Bool)

(declare-fun e!3863994 () Bool)

(assert (=> b!6363633 (= e!3863994 e!3863996)))

(declare-fun c!1158527 () Bool)

(assert (=> b!6363633 (= c!1158527 ((_ is Star!16271) (regOne!33054 r!7292)))))

(declare-fun b!6363634 () Bool)

(declare-fun e!3863993 () Bool)

(assert (=> b!6363634 (= e!3863996 e!3863993)))

(declare-fun c!1158526 () Bool)

(assert (=> b!6363634 (= c!1158526 ((_ is Union!16271) (regOne!33054 r!7292)))))

(declare-fun b!6363635 () Bool)

(declare-fun res!2618249 () Bool)

(declare-fun e!3863997 () Bool)

(assert (=> b!6363635 (=> (not res!2618249) (not e!3863997))))

(declare-fun call!543041 () Bool)

(assert (=> b!6363635 (= res!2618249 call!543041)))

(assert (=> b!6363635 (= e!3863993 e!3863997)))

(declare-fun bm!543036 () Bool)

(declare-fun call!543043 () Bool)

(assert (=> bm!543036 (= call!543043 (validRegex!8007 (ite c!1158527 (reg!16600 (regOne!33054 r!7292)) (ite c!1158526 (regTwo!33055 (regOne!33054 r!7292)) (regTwo!33054 (regOne!33054 r!7292))))))))

(declare-fun bm!543037 () Bool)

(assert (=> bm!543037 (= call!543041 (validRegex!8007 (ite c!1158526 (regOne!33055 (regOne!33054 r!7292)) (regOne!33054 (regOne!33054 r!7292)))))))

(declare-fun d!1996193 () Bool)

(declare-fun res!2618251 () Bool)

(assert (=> d!1996193 (=> res!2618251 e!3863994)))

(assert (=> d!1996193 (= res!2618251 ((_ is ElementMatch!16271) (regOne!33054 r!7292)))))

(assert (=> d!1996193 (= (validRegex!8007 (regOne!33054 r!7292)) e!3863994)))

(declare-fun bm!543038 () Bool)

(assert (=> bm!543038 (= call!543042 call!543043)))

(declare-fun b!6363636 () Bool)

(assert (=> b!6363636 (= e!3863998 call!543043)))

(declare-fun b!6363637 () Bool)

(assert (=> b!6363637 (= e!3863997 call!543042)))

(declare-fun b!6363638 () Bool)

(declare-fun e!3863995 () Bool)

(assert (=> b!6363638 (= e!3863995 e!3863999)))

(declare-fun res!2618250 () Bool)

(assert (=> b!6363638 (=> (not res!2618250) (not e!3863999))))

(assert (=> b!6363638 (= res!2618250 call!543041)))

(declare-fun b!6363639 () Bool)

(declare-fun res!2618253 () Bool)

(assert (=> b!6363639 (=> res!2618253 e!3863995)))

(assert (=> b!6363639 (= res!2618253 (not ((_ is Concat!25116) (regOne!33054 r!7292))))))

(assert (=> b!6363639 (= e!3863993 e!3863995)))

(assert (= (and d!1996193 (not res!2618251)) b!6363633))

(assert (= (and b!6363633 c!1158527) b!6363631))

(assert (= (and b!6363633 (not c!1158527)) b!6363634))

(assert (= (and b!6363631 res!2618252) b!6363636))

(assert (= (and b!6363634 c!1158526) b!6363635))

(assert (= (and b!6363634 (not c!1158526)) b!6363639))

(assert (= (and b!6363635 res!2618249) b!6363637))

(assert (= (and b!6363639 (not res!2618253)) b!6363638))

(assert (= (and b!6363638 res!2618250) b!6363632))

(assert (= (or b!6363637 b!6363632) bm!543038))

(assert (= (or b!6363635 b!6363638) bm!543037))

(assert (= (or b!6363636 bm!543038) bm!543036))

(declare-fun m!7168264 () Bool)

(assert (=> b!6363631 m!7168264))

(declare-fun m!7168266 () Bool)

(assert (=> bm!543036 m!7168266))

(declare-fun m!7168268 () Bool)

(assert (=> bm!543037 m!7168268))

(assert (=> d!1996099 d!1996193))

(declare-fun d!1996195 () Bool)

(assert (=> d!1996195 (= (head!13034 (exprs!6155 (h!71437 zl!343))) (h!71436 (exprs!6155 (h!71437 zl!343))))))

(assert (=> b!6363285 d!1996195))

(declare-fun bm!543039 () Bool)

(declare-fun call!543044 () (InoxSet Context!11310))

(assert (=> bm!543039 (= call!543044 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010)))))) (h!71438 s!2326)))))

(declare-fun d!1996197 () Bool)

(declare-fun c!1158528 () Bool)

(declare-fun e!3864002 () Bool)

(assert (=> d!1996197 (= c!1158528 e!3864002)))

(declare-fun res!2618254 () Bool)

(assert (=> d!1996197 (=> (not res!2618254) (not e!3864002))))

(assert (=> d!1996197 (= res!2618254 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010))))))))

(declare-fun e!3864000 () (InoxSet Context!11310))

(assert (=> d!1996197 (= (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (h!71438 s!2326)) e!3864000)))

(declare-fun b!6363640 () Bool)

(declare-fun e!3864001 () (InoxSet Context!11310))

(assert (=> b!6363640 (= e!3864000 e!3864001)))

(declare-fun c!1158529 () Bool)

(assert (=> b!6363640 (= c!1158529 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010))))))))

(declare-fun b!6363641 () Bool)

(assert (=> b!6363641 (= e!3864001 call!543044)))

(declare-fun b!6363642 () Bool)

(assert (=> b!6363642 (= e!3864001 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363643 () Bool)

(assert (=> b!6363643 (= e!3864002 (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010)))))))))

(declare-fun b!6363644 () Bool)

(assert (=> b!6363644 (= e!3864000 ((_ map or) call!543044 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010)))))) (h!71438 s!2326))))))

(assert (= (and d!1996197 res!2618254) b!6363643))

(assert (= (and d!1996197 c!1158528) b!6363644))

(assert (= (and d!1996197 (not c!1158528)) b!6363640))

(assert (= (and b!6363640 c!1158529) b!6363641))

(assert (= (and b!6363640 (not c!1158529)) b!6363642))

(assert (= (or b!6363644 b!6363641) bm!543039))

(declare-fun m!7168270 () Bool)

(assert (=> bm!543039 m!7168270))

(declare-fun m!7168272 () Bool)

(assert (=> b!6363643 m!7168272))

(declare-fun m!7168274 () Bool)

(assert (=> b!6363644 m!7168274))

(assert (=> b!6363352 d!1996197))

(assert (=> bs!1594345 d!1996069))

(declare-fun bs!1594403 () Bool)

(declare-fun b!6363647 () Bool)

(assert (= bs!1594403 (and b!6363647 b!6363103)))

(declare-fun lambda!350564 () Int)

(assert (=> bs!1594403 (not (= lambda!350564 lambda!350518))))

(declare-fun bs!1594404 () Bool)

(assert (= bs!1594404 (and b!6363647 d!1996107)))

(assert (=> bs!1594404 (not (= lambda!350564 lambda!350545))))

(declare-fun bs!1594406 () Bool)

(assert (= bs!1594406 (and b!6363647 d!1996105)))

(assert (=> bs!1594406 (not (= lambda!350564 lambda!350539))))

(declare-fun bs!1594407 () Bool)

(assert (= bs!1594407 (and b!6363647 b!6363104)))

(assert (=> bs!1594407 (= (and (= (reg!16600 (regTwo!33055 r!7292)) (reg!16600 r!7292)) (= (regTwo!33055 r!7292) r!7292)) (= lambda!350564 lambda!350517))))

(declare-fun bs!1594408 () Bool)

(assert (= bs!1594408 (and b!6363647 b!6362731)))

(assert (=> bs!1594408 (not (= lambda!350564 lambda!350485))))

(assert (=> bs!1594404 (not (= lambda!350564 lambda!350544))))

(assert (=> bs!1594408 (not (= lambda!350564 lambda!350486))))

(assert (=> b!6363647 true))

(assert (=> b!6363647 true))

(declare-fun bs!1594409 () Bool)

(declare-fun b!6363646 () Bool)

(assert (= bs!1594409 (and b!6363646 b!6363103)))

(declare-fun lambda!350565 () Int)

(assert (=> bs!1594409 (= (and (= (regOne!33054 (regTwo!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regTwo!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350565 lambda!350518))))

(declare-fun bs!1594410 () Bool)

(assert (= bs!1594410 (and b!6363646 d!1996105)))

(assert (=> bs!1594410 (not (= lambda!350565 lambda!350539))))

(declare-fun bs!1594411 () Bool)

(assert (= bs!1594411 (and b!6363646 b!6363104)))

(assert (=> bs!1594411 (not (= lambda!350565 lambda!350517))))

(declare-fun bs!1594412 () Bool)

(assert (= bs!1594412 (and b!6363646 b!6362731)))

(assert (=> bs!1594412 (not (= lambda!350565 lambda!350485))))

(declare-fun bs!1594413 () Bool)

(assert (= bs!1594413 (and b!6363646 d!1996107)))

(assert (=> bs!1594413 (not (= lambda!350565 lambda!350544))))

(assert (=> bs!1594412 (= (and (= (regOne!33054 (regTwo!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regTwo!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350565 lambda!350486))))

(declare-fun bs!1594414 () Bool)

(assert (= bs!1594414 (and b!6363646 b!6363647)))

(assert (=> bs!1594414 (not (= lambda!350565 lambda!350564))))

(assert (=> bs!1594413 (= (and (= (regOne!33054 (regTwo!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regTwo!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350565 lambda!350545))))

(assert (=> b!6363646 true))

(assert (=> b!6363646 true))

(declare-fun b!6363645 () Bool)

(declare-fun e!3864005 () Bool)

(declare-fun e!3864006 () Bool)

(assert (=> b!6363645 (= e!3864005 e!3864006)))

(declare-fun res!2618256 () Bool)

(assert (=> b!6363645 (= res!2618256 (matchRSpec!3372 (regOne!33055 (regTwo!33055 r!7292)) s!2326))))

(assert (=> b!6363645 (=> res!2618256 e!3864006)))

(declare-fun e!3864004 () Bool)

(declare-fun call!543045 () Bool)

(assert (=> b!6363646 (= e!3864004 call!543045)))

(declare-fun e!3864007 () Bool)

(assert (=> b!6363647 (= e!3864007 call!543045)))

(declare-fun b!6363648 () Bool)

(assert (=> b!6363648 (= e!3864005 e!3864004)))

(declare-fun c!1158531 () Bool)

(assert (=> b!6363648 (= c!1158531 ((_ is Star!16271) (regTwo!33055 r!7292)))))

(declare-fun b!6363649 () Bool)

(declare-fun c!1158532 () Bool)

(assert (=> b!6363649 (= c!1158532 ((_ is Union!16271) (regTwo!33055 r!7292)))))

(declare-fun e!3864003 () Bool)

(assert (=> b!6363649 (= e!3864003 e!3864005)))

(declare-fun b!6363650 () Bool)

(declare-fun res!2618255 () Bool)

(assert (=> b!6363650 (=> res!2618255 e!3864007)))

(declare-fun call!543046 () Bool)

(assert (=> b!6363650 (= res!2618255 call!543046)))

(assert (=> b!6363650 (= e!3864004 e!3864007)))

(declare-fun d!1996199 () Bool)

(declare-fun c!1158533 () Bool)

(assert (=> d!1996199 (= c!1158533 ((_ is EmptyExpr!16271) (regTwo!33055 r!7292)))))

(declare-fun e!3864008 () Bool)

(assert (=> d!1996199 (= (matchRSpec!3372 (regTwo!33055 r!7292) s!2326) e!3864008)))

(declare-fun bm!543040 () Bool)

(assert (=> bm!543040 (= call!543046 (isEmpty!37096 s!2326))))

(declare-fun b!6363651 () Bool)

(assert (=> b!6363651 (= e!3864008 call!543046)))

(declare-fun b!6363652 () Bool)

(declare-fun e!3864009 () Bool)

(assert (=> b!6363652 (= e!3864008 e!3864009)))

(declare-fun res!2618257 () Bool)

(assert (=> b!6363652 (= res!2618257 (not ((_ is EmptyLang!16271) (regTwo!33055 r!7292))))))

(assert (=> b!6363652 (=> (not res!2618257) (not e!3864009))))

(declare-fun b!6363653 () Bool)

(declare-fun c!1158530 () Bool)

(assert (=> b!6363653 (= c!1158530 ((_ is ElementMatch!16271) (regTwo!33055 r!7292)))))

(assert (=> b!6363653 (= e!3864009 e!3864003)))

(declare-fun bm!543041 () Bool)

(assert (=> bm!543041 (= call!543045 (Exists!3341 (ite c!1158531 lambda!350564 lambda!350565)))))

(declare-fun b!6363654 () Bool)

(assert (=> b!6363654 (= e!3864006 (matchRSpec!3372 (regTwo!33055 (regTwo!33055 r!7292)) s!2326))))

(declare-fun b!6363655 () Bool)

(assert (=> b!6363655 (= e!3864003 (= s!2326 (Cons!64990 (c!1158284 (regTwo!33055 r!7292)) Nil!64990)))))

(assert (= (and d!1996199 c!1158533) b!6363651))

(assert (= (and d!1996199 (not c!1158533)) b!6363652))

(assert (= (and b!6363652 res!2618257) b!6363653))

(assert (= (and b!6363653 c!1158530) b!6363655))

(assert (= (and b!6363653 (not c!1158530)) b!6363649))

(assert (= (and b!6363649 c!1158532) b!6363645))

(assert (= (and b!6363649 (not c!1158532)) b!6363648))

(assert (= (and b!6363645 (not res!2618256)) b!6363654))

(assert (= (and b!6363648 c!1158531) b!6363650))

(assert (= (and b!6363648 (not c!1158531)) b!6363646))

(assert (= (and b!6363650 (not res!2618255)) b!6363647))

(assert (= (or b!6363647 b!6363646) bm!543041))

(assert (= (or b!6363651 b!6363650) bm!543040))

(declare-fun m!7168290 () Bool)

(assert (=> b!6363645 m!7168290))

(assert (=> bm!543040 m!7167924))

(declare-fun m!7168292 () Bool)

(assert (=> bm!543041 m!7168292))

(declare-fun m!7168294 () Bool)

(assert (=> b!6363654 m!7168294))

(assert (=> b!6363111 d!1996199))

(declare-fun d!1996213 () Bool)

(assert (=> d!1996213 (= (isEmpty!37094 (exprs!6155 (h!71437 zl!343))) ((_ is Nil!64988) (exprs!6155 (h!71437 zl!343))))))

(assert (=> b!6363283 d!1996213))

(declare-fun d!1996215 () Bool)

(assert (=> d!1996215 (= (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))) (nullableFct!2211 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun bs!1594418 () Bool)

(assert (= bs!1594418 d!1996215))

(declare-fun m!7168306 () Bool)

(assert (=> bs!1594418 m!7168306))

(assert (=> b!6363330 d!1996215))

(declare-fun d!1996217 () Bool)

(assert (=> d!1996217 (= (isEmpty!37096 (tail!12120 s!2326)) ((_ is Nil!64990) (tail!12120 s!2326)))))

(assert (=> b!6363168 d!1996217))

(declare-fun d!1996221 () Bool)

(assert (=> d!1996221 (= (tail!12120 s!2326) (t!378708 s!2326))))

(assert (=> b!6363168 d!1996221))

(declare-fun d!1996223 () Bool)

(assert (=> d!1996223 (= (isConcat!1196 lt!2367071) ((_ is Concat!25116) lt!2367071))))

(assert (=> b!6363279 d!1996223))

(declare-fun b!6363668 () Bool)

(declare-fun e!3864019 () Bool)

(assert (=> b!6363668 (= e!3864019 (= (head!13035 s!2326) (c!1158284 (regTwo!33054 r!7292))))))

(declare-fun b!6363669 () Bool)

(declare-fun e!3864022 () Bool)

(declare-fun e!3864018 () Bool)

(assert (=> b!6363669 (= e!3864022 e!3864018)))

(declare-fun res!2618270 () Bool)

(assert (=> b!6363669 (=> (not res!2618270) (not e!3864018))))

(declare-fun lt!2367102 () Bool)

(assert (=> b!6363669 (= res!2618270 (not lt!2367102))))

(declare-fun b!6363670 () Bool)

(declare-fun e!3864023 () Bool)

(assert (=> b!6363670 (= e!3864023 (not lt!2367102))))

(declare-fun b!6363671 () Bool)

(declare-fun res!2618268 () Bool)

(declare-fun e!3864021 () Bool)

(assert (=> b!6363671 (=> res!2618268 e!3864021)))

(assert (=> b!6363671 (= res!2618268 (not (isEmpty!37096 (tail!12120 s!2326))))))

(declare-fun b!6363672 () Bool)

(declare-fun res!2618265 () Bool)

(assert (=> b!6363672 (=> res!2618265 e!3864022)))

(assert (=> b!6363672 (= res!2618265 e!3864019)))

(declare-fun res!2618263 () Bool)

(assert (=> b!6363672 (=> (not res!2618263) (not e!3864019))))

(assert (=> b!6363672 (= res!2618263 lt!2367102)))

(declare-fun b!6363673 () Bool)

(declare-fun res!2618269 () Bool)

(assert (=> b!6363673 (=> (not res!2618269) (not e!3864019))))

(assert (=> b!6363673 (= res!2618269 (isEmpty!37096 (tail!12120 s!2326)))))

(declare-fun b!6363674 () Bool)

(declare-fun e!3864020 () Bool)

(assert (=> b!6363674 (= e!3864020 (matchR!8454 (derivativeStep!4976 (regTwo!33054 r!7292) (head!13035 s!2326)) (tail!12120 s!2326)))))

(declare-fun b!6363675 () Bool)

(declare-fun res!2618266 () Bool)

(assert (=> b!6363675 (=> res!2618266 e!3864022)))

(assert (=> b!6363675 (= res!2618266 (not ((_ is ElementMatch!16271) (regTwo!33054 r!7292))))))

(assert (=> b!6363675 (= e!3864023 e!3864022)))

(declare-fun d!1996225 () Bool)

(declare-fun e!3864024 () Bool)

(assert (=> d!1996225 e!3864024))

(declare-fun c!1158539 () Bool)

(assert (=> d!1996225 (= c!1158539 ((_ is EmptyExpr!16271) (regTwo!33054 r!7292)))))

(assert (=> d!1996225 (= lt!2367102 e!3864020)))

(declare-fun c!1158541 () Bool)

(assert (=> d!1996225 (= c!1158541 (isEmpty!37096 s!2326))))

(assert (=> d!1996225 (validRegex!8007 (regTwo!33054 r!7292))))

(assert (=> d!1996225 (= (matchR!8454 (regTwo!33054 r!7292) s!2326) lt!2367102)))

(declare-fun b!6363667 () Bool)

(assert (=> b!6363667 (= e!3864021 (not (= (head!13035 s!2326) (c!1158284 (regTwo!33054 r!7292)))))))

(declare-fun b!6363676 () Bool)

(assert (=> b!6363676 (= e!3864020 (nullable!6264 (regTwo!33054 r!7292)))))

(declare-fun b!6363677 () Bool)

(assert (=> b!6363677 (= e!3864024 e!3864023)))

(declare-fun c!1158540 () Bool)

(assert (=> b!6363677 (= c!1158540 ((_ is EmptyLang!16271) (regTwo!33054 r!7292)))))

(declare-fun b!6363678 () Bool)

(declare-fun call!543050 () Bool)

(assert (=> b!6363678 (= e!3864024 (= lt!2367102 call!543050))))

(declare-fun bm!543045 () Bool)

(assert (=> bm!543045 (= call!543050 (isEmpty!37096 s!2326))))

(declare-fun b!6363679 () Bool)

(assert (=> b!6363679 (= e!3864018 e!3864021)))

(declare-fun res!2618264 () Bool)

(assert (=> b!6363679 (=> res!2618264 e!3864021)))

(assert (=> b!6363679 (= res!2618264 call!543050)))

(declare-fun b!6363680 () Bool)

(declare-fun res!2618267 () Bool)

(assert (=> b!6363680 (=> (not res!2618267) (not e!3864019))))

(assert (=> b!6363680 (= res!2618267 (not call!543050))))

(assert (= (and d!1996225 c!1158541) b!6363676))

(assert (= (and d!1996225 (not c!1158541)) b!6363674))

(assert (= (and d!1996225 c!1158539) b!6363678))

(assert (= (and d!1996225 (not c!1158539)) b!6363677))

(assert (= (and b!6363677 c!1158540) b!6363670))

(assert (= (and b!6363677 (not c!1158540)) b!6363675))

(assert (= (and b!6363675 (not res!2618266)) b!6363672))

(assert (= (and b!6363672 res!2618263) b!6363680))

(assert (= (and b!6363680 res!2618267) b!6363673))

(assert (= (and b!6363673 res!2618269) b!6363668))

(assert (= (and b!6363672 (not res!2618265)) b!6363669))

(assert (= (and b!6363669 res!2618270) b!6363679))

(assert (= (and b!6363679 (not res!2618264)) b!6363671))

(assert (= (and b!6363671 (not res!2618268)) b!6363667))

(assert (= (or b!6363678 b!6363679 b!6363680) bm!543045))

(declare-fun m!7168310 () Bool)

(assert (=> b!6363676 m!7168310))

(assert (=> bm!543045 m!7167924))

(assert (=> d!1996225 m!7167924))

(declare-fun m!7168312 () Bool)

(assert (=> d!1996225 m!7168312))

(assert (=> b!6363668 m!7167946))

(assert (=> b!6363667 m!7167946))

(assert (=> b!6363674 m!7167946))

(assert (=> b!6363674 m!7167946))

(declare-fun m!7168314 () Bool)

(assert (=> b!6363674 m!7168314))

(assert (=> b!6363674 m!7167950))

(assert (=> b!6363674 m!7168314))

(assert (=> b!6363674 m!7167950))

(declare-fun m!7168316 () Bool)

(assert (=> b!6363674 m!7168316))

(assert (=> b!6363673 m!7167950))

(assert (=> b!6363673 m!7167950))

(assert (=> b!6363673 m!7167954))

(assert (=> b!6363671 m!7167950))

(assert (=> b!6363671 m!7167950))

(assert (=> b!6363671 m!7167954))

(assert (=> b!6363401 d!1996225))

(declare-fun bm!543046 () Bool)

(declare-fun call!543051 () (InoxSet Context!11310))

(assert (=> bm!543046 (= call!543051 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343))))))) (h!71438 s!2326)))))

(declare-fun d!1996227 () Bool)

(declare-fun c!1158542 () Bool)

(declare-fun e!3864027 () Bool)

(assert (=> d!1996227 (= c!1158542 e!3864027)))

(declare-fun res!2618271 () Bool)

(assert (=> d!1996227 (=> (not res!2618271) (not e!3864027))))

(assert (=> d!1996227 (= res!2618271 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun e!3864025 () (InoxSet Context!11310))

(assert (=> d!1996227 (= (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326)) e!3864025)))

(declare-fun b!6363683 () Bool)

(declare-fun e!3864026 () (InoxSet Context!11310))

(assert (=> b!6363683 (= e!3864025 e!3864026)))

(declare-fun c!1158543 () Bool)

(assert (=> b!6363683 (= c!1158543 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6363684 () Bool)

(assert (=> b!6363684 (= e!3864026 call!543051)))

(declare-fun b!6363685 () Bool)

(assert (=> b!6363685 (= e!3864026 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363686 () Bool)

(assert (=> b!6363686 (= e!3864027 (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343))))))))))

(declare-fun b!6363687 () Bool)

(assert (=> b!6363687 (= e!3864025 ((_ map or) call!543051 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343))))))) (h!71438 s!2326))))))

(assert (= (and d!1996227 res!2618271) b!6363686))

(assert (= (and d!1996227 c!1158542) b!6363687))

(assert (= (and d!1996227 (not c!1158542)) b!6363683))

(assert (= (and b!6363683 c!1158543) b!6363684))

(assert (= (and b!6363683 (not c!1158543)) b!6363685))

(assert (= (or b!6363687 b!6363684) bm!543046))

(declare-fun m!7168320 () Bool)

(assert (=> bm!543046 m!7168320))

(declare-fun m!7168322 () Bool)

(assert (=> b!6363686 m!7168322))

(declare-fun m!7168324 () Bool)

(assert (=> b!6363687 m!7168324))

(assert (=> b!6363344 d!1996227))

(declare-fun d!1996235 () Bool)

(assert (=> d!1996235 (= (isEmpty!37094 (t!378706 (unfocusZipperList!1692 zl!343))) ((_ is Nil!64988) (t!378706 (unfocusZipperList!1692 zl!343))))))

(assert (=> b!6362956 d!1996235))

(declare-fun bs!1594429 () Bool)

(declare-fun d!1996237 () Bool)

(assert (= bs!1594429 (and d!1996237 d!1996091)))

(declare-fun lambda!350571 () Int)

(assert (=> bs!1594429 (= lambda!350571 lambda!350536)))

(declare-fun bs!1594430 () Bool)

(assert (= bs!1594430 (and d!1996237 d!1995995)))

(assert (=> bs!1594430 (= lambda!350571 lambda!350512)))

(declare-fun bs!1594431 () Bool)

(assert (= bs!1594431 (and d!1996237 d!1996089)))

(assert (=> bs!1594431 (= lambda!350571 lambda!350535)))

(declare-fun bs!1594432 () Bool)

(assert (= bs!1594432 (and d!1996237 d!1996053)))

(assert (=> bs!1594432 (= lambda!350571 lambda!350531)))

(declare-fun bs!1594433 () Bool)

(assert (= bs!1594433 (and d!1996237 d!1995987)))

(assert (=> bs!1594433 (= lambda!350571 lambda!350505)))

(declare-fun bs!1594434 () Bool)

(assert (= bs!1594434 (and d!1996237 d!1996077)))

(assert (=> bs!1594434 (= lambda!350571 lambda!350534)))

(declare-fun b!6363690 () Bool)

(declare-fun e!3864030 () Bool)

(declare-fun e!3864029 () Bool)

(assert (=> b!6363690 (= e!3864030 e!3864029)))

(declare-fun c!1158548 () Bool)

(assert (=> b!6363690 (= c!1158548 (isEmpty!37094 (tail!12119 (t!378706 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363691 () Bool)

(declare-fun e!3864031 () Regex!16271)

(declare-fun e!3864033 () Regex!16271)

(assert (=> b!6363691 (= e!3864031 e!3864033)))

(declare-fun c!1158547 () Bool)

(assert (=> b!6363691 (= c!1158547 ((_ is Cons!64988) (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363692 () Bool)

(declare-fun lt!2367104 () Regex!16271)

(assert (=> b!6363692 (= e!3864029 (isConcat!1196 lt!2367104))))

(declare-fun b!6363693 () Bool)

(assert (=> b!6363693 (= e!3864033 EmptyExpr!16271)))

(declare-fun b!6363694 () Bool)

(assert (=> b!6363694 (= e!3864033 (Concat!25116 (h!71436 (t!378706 (exprs!6155 (h!71437 zl!343)))) (generalisedConcat!1868 (t!378706 (t!378706 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6363695 () Bool)

(assert (=> b!6363695 (= e!3864030 (isEmptyExpr!1673 lt!2367104))))

(declare-fun b!6363696 () Bool)

(declare-fun e!3864034 () Bool)

(assert (=> b!6363696 (= e!3864034 e!3864030)))

(declare-fun c!1158545 () Bool)

(assert (=> b!6363696 (= c!1158545 (isEmpty!37094 (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363698 () Bool)

(assert (=> b!6363698 (= e!3864029 (= lt!2367104 (head!13034 (t!378706 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363699 () Bool)

(declare-fun e!3864032 () Bool)

(assert (=> b!6363699 (= e!3864032 (isEmpty!37094 (t!378706 (t!378706 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363697 () Bool)

(assert (=> b!6363697 (= e!3864031 (h!71436 (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> d!1996237 e!3864034))

(declare-fun res!2618272 () Bool)

(assert (=> d!1996237 (=> (not res!2618272) (not e!3864034))))

(assert (=> d!1996237 (= res!2618272 (validRegex!8007 lt!2367104))))

(assert (=> d!1996237 (= lt!2367104 e!3864031)))

(declare-fun c!1158546 () Bool)

(assert (=> d!1996237 (= c!1158546 e!3864032)))

(declare-fun res!2618273 () Bool)

(assert (=> d!1996237 (=> (not res!2618273) (not e!3864032))))

(assert (=> d!1996237 (= res!2618273 ((_ is Cons!64988) (t!378706 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> d!1996237 (forall!15449 (t!378706 (exprs!6155 (h!71437 zl!343))) lambda!350571)))

(assert (=> d!1996237 (= (generalisedConcat!1868 (t!378706 (exprs!6155 (h!71437 zl!343)))) lt!2367104)))

(assert (= (and d!1996237 res!2618273) b!6363699))

(assert (= (and d!1996237 c!1158546) b!6363697))

(assert (= (and d!1996237 (not c!1158546)) b!6363691))

(assert (= (and b!6363691 c!1158547) b!6363694))

(assert (= (and b!6363691 (not c!1158547)) b!6363693))

(assert (= (and d!1996237 res!2618272) b!6363696))

(assert (= (and b!6363696 c!1158545) b!6363695))

(assert (= (and b!6363696 (not c!1158545)) b!6363690))

(assert (= (and b!6363690 c!1158548) b!6363698))

(assert (= (and b!6363690 (not c!1158548)) b!6363692))

(declare-fun m!7168334 () Bool)

(assert (=> b!6363694 m!7168334))

(declare-fun m!7168336 () Bool)

(assert (=> b!6363695 m!7168336))

(declare-fun m!7168338 () Bool)

(assert (=> b!6363690 m!7168338))

(assert (=> b!6363690 m!7168338))

(declare-fun m!7168340 () Bool)

(assert (=> b!6363690 m!7168340))

(declare-fun m!7168342 () Bool)

(assert (=> b!6363698 m!7168342))

(assert (=> b!6363696 m!7167706))

(declare-fun m!7168344 () Bool)

(assert (=> b!6363692 m!7168344))

(declare-fun m!7168346 () Bool)

(assert (=> b!6363699 m!7168346))

(declare-fun m!7168348 () Bool)

(assert (=> d!1996237 m!7168348))

(declare-fun m!7168350 () Bool)

(assert (=> d!1996237 m!7168350))

(assert (=> b!6363281 d!1996237))

(declare-fun d!1996243 () Bool)

(assert (=> d!1996243 (= (isUnion!1110 lt!2367031) ((_ is Union!16271) lt!2367031))))

(assert (=> b!6362952 d!1996243))

(assert (=> b!6363166 d!1996217))

(assert (=> b!6363166 d!1996221))

(declare-fun d!1996245 () Bool)

(declare-fun c!1158549 () Bool)

(assert (=> d!1996245 (= c!1158549 (isEmpty!37096 (tail!12120 (t!378708 s!2326))))))

(declare-fun e!3864035 () Bool)

(assert (=> d!1996245 (= (matchZipper!2283 (derivationStepZipper!2237 lt!2367006 (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))) e!3864035)))

(declare-fun b!6363700 () Bool)

(assert (=> b!6363700 (= e!3864035 (nullableZipper!2037 (derivationStepZipper!2237 lt!2367006 (head!13035 (t!378708 s!2326)))))))

(declare-fun b!6363701 () Bool)

(assert (=> b!6363701 (= e!3864035 (matchZipper!2283 (derivationStepZipper!2237 (derivationStepZipper!2237 lt!2367006 (head!13035 (t!378708 s!2326))) (head!13035 (tail!12120 (t!378708 s!2326)))) (tail!12120 (tail!12120 (t!378708 s!2326)))))))

(assert (= (and d!1996245 c!1158549) b!6363700))

(assert (= (and d!1996245 (not c!1158549)) b!6363701))

(assert (=> d!1996245 m!7168048))

(declare-fun m!7168352 () Bool)

(assert (=> d!1996245 m!7168352))

(assert (=> b!6363700 m!7168076))

(declare-fun m!7168354 () Bool)

(assert (=> b!6363700 m!7168354))

(assert (=> b!6363701 m!7168048))

(declare-fun m!7168356 () Bool)

(assert (=> b!6363701 m!7168356))

(assert (=> b!6363701 m!7168076))

(assert (=> b!6363701 m!7168356))

(declare-fun m!7168358 () Bool)

(assert (=> b!6363701 m!7168358))

(assert (=> b!6363701 m!7168048))

(declare-fun m!7168360 () Bool)

(assert (=> b!6363701 m!7168360))

(assert (=> b!6363701 m!7168358))

(assert (=> b!6363701 m!7168360))

(declare-fun m!7168362 () Bool)

(assert (=> b!6363701 m!7168362))

(assert (=> b!6363376 d!1996245))

(declare-fun bs!1594436 () Bool)

(declare-fun d!1996247 () Bool)

(assert (= bs!1594436 (and d!1996247 b!6362719)))

(declare-fun lambda!350574 () Int)

(assert (=> bs!1594436 (= (= (head!13035 (t!378708 s!2326)) (h!71438 s!2326)) (= lambda!350574 lambda!350487))))

(assert (=> d!1996247 true))

(assert (=> d!1996247 (= (derivationStepZipper!2237 lt!2367006 (head!13035 (t!378708 s!2326))) (flatMap!1776 lt!2367006 lambda!350574))))

(declare-fun bs!1594437 () Bool)

(assert (= bs!1594437 d!1996247))

(declare-fun m!7168364 () Bool)

(assert (=> bs!1594437 m!7168364))

(assert (=> b!6363376 d!1996247))

(declare-fun d!1996249 () Bool)

(assert (=> d!1996249 (= (head!13035 (t!378708 s!2326)) (h!71438 (t!378708 s!2326)))))

(assert (=> b!6363376 d!1996249))

(declare-fun d!1996251 () Bool)

(assert (=> d!1996251 (= (tail!12120 (t!378708 s!2326)) (t!378708 (t!378708 s!2326)))))

(assert (=> b!6363376 d!1996251))

(declare-fun d!1996253 () Bool)

(assert (=> d!1996253 (= (isEmpty!37094 (tail!12119 (exprs!6155 (h!71437 zl!343)))) ((_ is Nil!64988) (tail!12119 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> b!6363277 d!1996253))

(declare-fun d!1996255 () Bool)

(assert (=> d!1996255 (= (tail!12119 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))

(assert (=> b!6363277 d!1996255))

(declare-fun d!1996257 () Bool)

(assert (=> d!1996257 (= (nullable!6264 (regOne!33054 (reg!16600 (regOne!33054 r!7292)))) (nullableFct!2211 (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))))

(declare-fun bs!1594438 () Bool)

(assert (= bs!1594438 d!1996257))

(declare-fun m!7168366 () Bool)

(assert (=> bs!1594438 m!7168366))

(assert (=> b!6363370 d!1996257))

(declare-fun d!1996259 () Bool)

(declare-fun res!2618278 () Bool)

(declare-fun e!3864038 () Bool)

(assert (=> d!1996259 (=> res!2618278 e!3864038)))

(assert (=> d!1996259 (= res!2618278 ((_ is Nil!64988) (exprs!6155 lt!2367010)))))

(assert (=> d!1996259 (= (forall!15449 (exprs!6155 lt!2367010) lambda!350534) e!3864038)))

(declare-fun b!6363708 () Bool)

(declare-fun e!3864039 () Bool)

(assert (=> b!6363708 (= e!3864038 e!3864039)))

(declare-fun res!2618279 () Bool)

(assert (=> b!6363708 (=> (not res!2618279) (not e!3864039))))

(assert (=> b!6363708 (= res!2618279 (dynLambda!25781 lambda!350534 (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun b!6363709 () Bool)

(assert (=> b!6363709 (= e!3864039 (forall!15449 (t!378706 (exprs!6155 lt!2367010)) lambda!350534))))

(assert (= (and d!1996259 (not res!2618278)) b!6363708))

(assert (= (and b!6363708 res!2618279) b!6363709))

(declare-fun b_lambda!241887 () Bool)

(assert (=> (not b_lambda!241887) (not b!6363708)))

(declare-fun m!7168368 () Bool)

(assert (=> b!6363708 m!7168368))

(declare-fun m!7168370 () Bool)

(assert (=> b!6363709 m!7168370))

(assert (=> d!1996077 d!1996259))

(declare-fun b!6363710 () Bool)

(declare-fun e!3864043 () Bool)

(declare-fun e!3864045 () Bool)

(assert (=> b!6363710 (= e!3864043 e!3864045)))

(declare-fun res!2618283 () Bool)

(assert (=> b!6363710 (= res!2618283 (not (nullable!6264 (reg!16600 lt!2367031))))))

(assert (=> b!6363710 (=> (not res!2618283) (not e!3864045))))

(declare-fun b!6363711 () Bool)

(declare-fun e!3864046 () Bool)

(declare-fun call!543053 () Bool)

(assert (=> b!6363711 (= e!3864046 call!543053)))

(declare-fun b!6363712 () Bool)

(declare-fun e!3864041 () Bool)

(assert (=> b!6363712 (= e!3864041 e!3864043)))

(declare-fun c!1158553 () Bool)

(assert (=> b!6363712 (= c!1158553 ((_ is Star!16271) lt!2367031))))

(declare-fun b!6363713 () Bool)

(declare-fun e!3864040 () Bool)

(assert (=> b!6363713 (= e!3864043 e!3864040)))

(declare-fun c!1158552 () Bool)

(assert (=> b!6363713 (= c!1158552 ((_ is Union!16271) lt!2367031))))

(declare-fun b!6363714 () Bool)

(declare-fun res!2618280 () Bool)

(declare-fun e!3864044 () Bool)

(assert (=> b!6363714 (=> (not res!2618280) (not e!3864044))))

(declare-fun call!543052 () Bool)

(assert (=> b!6363714 (= res!2618280 call!543052)))

(assert (=> b!6363714 (= e!3864040 e!3864044)))

(declare-fun call!543054 () Bool)

(declare-fun bm!543047 () Bool)

(assert (=> bm!543047 (= call!543054 (validRegex!8007 (ite c!1158553 (reg!16600 lt!2367031) (ite c!1158552 (regTwo!33055 lt!2367031) (regTwo!33054 lt!2367031)))))))

(declare-fun bm!543048 () Bool)

(assert (=> bm!543048 (= call!543052 (validRegex!8007 (ite c!1158552 (regOne!33055 lt!2367031) (regOne!33054 lt!2367031))))))

(declare-fun d!1996261 () Bool)

(declare-fun res!2618282 () Bool)

(assert (=> d!1996261 (=> res!2618282 e!3864041)))

(assert (=> d!1996261 (= res!2618282 ((_ is ElementMatch!16271) lt!2367031))))

(assert (=> d!1996261 (= (validRegex!8007 lt!2367031) e!3864041)))

(declare-fun bm!543049 () Bool)

(assert (=> bm!543049 (= call!543053 call!543054)))

(declare-fun b!6363715 () Bool)

(assert (=> b!6363715 (= e!3864045 call!543054)))

(declare-fun b!6363716 () Bool)

(assert (=> b!6363716 (= e!3864044 call!543053)))

(declare-fun b!6363717 () Bool)

(declare-fun e!3864042 () Bool)

(assert (=> b!6363717 (= e!3864042 e!3864046)))

(declare-fun res!2618281 () Bool)

(assert (=> b!6363717 (=> (not res!2618281) (not e!3864046))))

(assert (=> b!6363717 (= res!2618281 call!543052)))

(declare-fun b!6363718 () Bool)

(declare-fun res!2618284 () Bool)

(assert (=> b!6363718 (=> res!2618284 e!3864042)))

(assert (=> b!6363718 (= res!2618284 (not ((_ is Concat!25116) lt!2367031)))))

(assert (=> b!6363718 (= e!3864040 e!3864042)))

(assert (= (and d!1996261 (not res!2618282)) b!6363712))

(assert (= (and b!6363712 c!1158553) b!6363710))

(assert (= (and b!6363712 (not c!1158553)) b!6363713))

(assert (= (and b!6363710 res!2618283) b!6363715))

(assert (= (and b!6363713 c!1158552) b!6363714))

(assert (= (and b!6363713 (not c!1158552)) b!6363718))

(assert (= (and b!6363714 res!2618280) b!6363716))

(assert (= (and b!6363718 (not res!2618284)) b!6363717))

(assert (= (and b!6363717 res!2618281) b!6363711))

(assert (= (or b!6363716 b!6363711) bm!543049))

(assert (= (or b!6363714 b!6363717) bm!543048))

(assert (= (or b!6363715 bm!543049) bm!543047))

(declare-fun m!7168372 () Bool)

(assert (=> b!6363710 m!7168372))

(declare-fun m!7168374 () Bool)

(assert (=> bm!543047 m!7168374))

(declare-fun m!7168376 () Bool)

(assert (=> bm!543048 m!7168376))

(assert (=> d!1995987 d!1996261))

(declare-fun d!1996263 () Bool)

(declare-fun res!2618285 () Bool)

(declare-fun e!3864047 () Bool)

(assert (=> d!1996263 (=> res!2618285 e!3864047)))

(assert (=> d!1996263 (= res!2618285 ((_ is Nil!64988) (unfocusZipperList!1692 zl!343)))))

(assert (=> d!1996263 (= (forall!15449 (unfocusZipperList!1692 zl!343) lambda!350505) e!3864047)))

(declare-fun b!6363719 () Bool)

(declare-fun e!3864048 () Bool)

(assert (=> b!6363719 (= e!3864047 e!3864048)))

(declare-fun res!2618286 () Bool)

(assert (=> b!6363719 (=> (not res!2618286) (not e!3864048))))

(assert (=> b!6363719 (= res!2618286 (dynLambda!25781 lambda!350505 (h!71436 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6363720 () Bool)

(assert (=> b!6363720 (= e!3864048 (forall!15449 (t!378706 (unfocusZipperList!1692 zl!343)) lambda!350505))))

(assert (= (and d!1996263 (not res!2618285)) b!6363719))

(assert (= (and b!6363719 res!2618286) b!6363720))

(declare-fun b_lambda!241889 () Bool)

(assert (=> (not b_lambda!241889) (not b!6363719)))

(declare-fun m!7168378 () Bool)

(assert (=> b!6363719 m!7168378))

(declare-fun m!7168380 () Bool)

(assert (=> b!6363720 m!7168380))

(assert (=> d!1995987 d!1996263))

(declare-fun b!6363721 () Bool)

(declare-fun e!3864050 () (InoxSet Context!11310))

(assert (=> b!6363721 (= e!3864050 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363722 () Bool)

(declare-fun e!3864049 () (InoxSet Context!11310))

(declare-fun call!543058 () (InoxSet Context!11310))

(declare-fun call!543057 () (InoxSet Context!11310))

(assert (=> b!6363722 (= e!3864049 ((_ map or) call!543058 call!543057))))

(declare-fun b!6363723 () Bool)

(declare-fun e!3864051 () (InoxSet Context!11310))

(assert (=> b!6363723 (= e!3864051 e!3864049)))

(declare-fun c!1158556 () Bool)

(assert (=> b!6363723 (= c!1158556 ((_ is Union!16271) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun bm!543050 () Bool)

(declare-fun call!543059 () (InoxSet Context!11310))

(declare-fun call!543055 () (InoxSet Context!11310))

(assert (=> bm!543050 (= call!543059 call!543055)))

(declare-fun b!6363724 () Bool)

(declare-fun c!1158555 () Bool)

(declare-fun e!3864053 () Bool)

(assert (=> b!6363724 (= c!1158555 e!3864053)))

(declare-fun res!2618287 () Bool)

(assert (=> b!6363724 (=> (not res!2618287) (not e!3864053))))

(assert (=> b!6363724 (= res!2618287 ((_ is Concat!25116) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun e!3864052 () (InoxSet Context!11310))

(assert (=> b!6363724 (= e!3864049 e!3864052)))

(declare-fun d!1996265 () Bool)

(declare-fun c!1158557 () Bool)

(assert (=> d!1996265 (= c!1158557 (and ((_ is ElementMatch!16271) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (= (c!1158284 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326))))))

(assert (=> d!1996265 (= (derivationStepZipperDown!1519 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))) (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997)) (h!71438 s!2326)) e!3864051)))

(declare-fun bm!543051 () Bool)

(declare-fun call!543060 () List!65112)

(declare-fun c!1158554 () Bool)

(assert (=> bm!543051 (= call!543058 (derivationStepZipperDown!1519 (ite c!1158556 (regOne!33055 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (ite c!1158555 (regTwo!33054 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (ite c!1158554 (regOne!33054 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (reg!16600 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))))))) (ite (or c!1158556 c!1158555) (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997)) (Context!11311 call!543060)) (h!71438 s!2326)))))

(declare-fun b!6363725 () Bool)

(assert (=> b!6363725 (= e!3864051 (store ((as const (Array Context!11310 Bool)) false) (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997)) true))))

(declare-fun bm!543052 () Bool)

(assert (=> bm!543052 (= call!543055 call!543058)))

(declare-fun bm!543053 () Bool)

(declare-fun call!543056 () List!65112)

(assert (=> bm!543053 (= call!543057 (derivationStepZipperDown!1519 (ite c!1158556 (regTwo!33055 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (regOne!33054 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))))) (ite c!1158556 (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997)) (Context!11311 call!543056)) (h!71438 s!2326)))))

(declare-fun b!6363726 () Bool)

(declare-fun e!3864054 () (InoxSet Context!11310))

(assert (=> b!6363726 (= e!3864054 call!543059)))

(declare-fun bm!543054 () Bool)

(assert (=> bm!543054 (= call!543060 call!543056)))

(declare-fun b!6363727 () Bool)

(assert (=> b!6363727 (= e!3864053 (nullable!6264 (regOne!33054 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))))))))

(declare-fun b!6363728 () Bool)

(assert (=> b!6363728 (= e!3864050 call!543059)))

(declare-fun b!6363729 () Bool)

(declare-fun c!1158558 () Bool)

(assert (=> b!6363729 (= c!1158558 ((_ is Star!16271) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))))

(assert (=> b!6363729 (= e!3864054 e!3864050)))

(declare-fun bm!543055 () Bool)

(assert (=> bm!543055 (= call!543056 ($colon$colon!2132 (exprs!6155 (ite (or c!1158454 c!1158453) lt!2367001 (Context!11311 call!542997))) (ite (or c!1158555 c!1158554) (regTwo!33054 (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))))))))

(declare-fun b!6363730 () Bool)

(assert (=> b!6363730 (= e!3864052 e!3864054)))

(assert (=> b!6363730 (= c!1158554 ((_ is Concat!25116) (ite c!1158454 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158453 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158452 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun b!6363731 () Bool)

(assert (=> b!6363731 (= e!3864052 ((_ map or) call!543057 call!543055))))

(assert (= (and d!1996265 c!1158557) b!6363725))

(assert (= (and d!1996265 (not c!1158557)) b!6363723))

(assert (= (and b!6363723 c!1158556) b!6363722))

(assert (= (and b!6363723 (not c!1158556)) b!6363724))

(assert (= (and b!6363724 res!2618287) b!6363727))

(assert (= (and b!6363724 c!1158555) b!6363731))

(assert (= (and b!6363724 (not c!1158555)) b!6363730))

(assert (= (and b!6363730 c!1158554) b!6363726))

(assert (= (and b!6363730 (not c!1158554)) b!6363729))

(assert (= (and b!6363729 c!1158558) b!6363728))

(assert (= (and b!6363729 (not c!1158558)) b!6363721))

(assert (= (or b!6363726 b!6363728) bm!543054))

(assert (= (or b!6363726 b!6363728) bm!543050))

(assert (= (or b!6363731 bm!543054) bm!543055))

(assert (= (or b!6363731 bm!543050) bm!543052))

(assert (= (or b!6363722 b!6363731) bm!543053))

(assert (= (or b!6363722 bm!543052) bm!543051))

(declare-fun m!7168384 () Bool)

(assert (=> bm!543051 m!7168384))

(declare-fun m!7168386 () Bool)

(assert (=> b!6363725 m!7168386))

(declare-fun m!7168388 () Bool)

(assert (=> bm!543055 m!7168388))

(declare-fun m!7168390 () Bool)

(assert (=> b!6363727 m!7168390))

(declare-fun m!7168396 () Bool)

(assert (=> bm!543053 m!7168396))

(assert (=> bm!542988 d!1996265))

(declare-fun b!6363739 () Bool)

(declare-fun e!3864063 () Bool)

(declare-fun e!3864065 () Bool)

(assert (=> b!6363739 (= e!3864063 e!3864065)))

(declare-fun res!2618294 () Bool)

(assert (=> b!6363739 (= res!2618294 (not (nullable!6264 (reg!16600 lt!2367071))))))

(assert (=> b!6363739 (=> (not res!2618294) (not e!3864065))))

(declare-fun b!6363740 () Bool)

(declare-fun e!3864066 () Bool)

(declare-fun call!543063 () Bool)

(assert (=> b!6363740 (= e!3864066 call!543063)))

(declare-fun b!6363741 () Bool)

(declare-fun e!3864061 () Bool)

(assert (=> b!6363741 (= e!3864061 e!3864063)))

(declare-fun c!1158562 () Bool)

(assert (=> b!6363741 (= c!1158562 ((_ is Star!16271) lt!2367071))))

(declare-fun b!6363742 () Bool)

(declare-fun e!3864060 () Bool)

(assert (=> b!6363742 (= e!3864063 e!3864060)))

(declare-fun c!1158561 () Bool)

(assert (=> b!6363742 (= c!1158561 ((_ is Union!16271) lt!2367071))))

(declare-fun b!6363743 () Bool)

(declare-fun res!2618290 () Bool)

(declare-fun e!3864064 () Bool)

(assert (=> b!6363743 (=> (not res!2618290) (not e!3864064))))

(declare-fun call!543062 () Bool)

(assert (=> b!6363743 (= res!2618290 call!543062)))

(assert (=> b!6363743 (= e!3864060 e!3864064)))

(declare-fun bm!543057 () Bool)

(declare-fun call!543064 () Bool)

(assert (=> bm!543057 (= call!543064 (validRegex!8007 (ite c!1158562 (reg!16600 lt!2367071) (ite c!1158561 (regTwo!33055 lt!2367071) (regTwo!33054 lt!2367071)))))))

(declare-fun bm!543058 () Bool)

(assert (=> bm!543058 (= call!543062 (validRegex!8007 (ite c!1158561 (regOne!33055 lt!2367071) (regOne!33054 lt!2367071))))))

(declare-fun d!1996271 () Bool)

(declare-fun res!2618293 () Bool)

(assert (=> d!1996271 (=> res!2618293 e!3864061)))

(assert (=> d!1996271 (= res!2618293 ((_ is ElementMatch!16271) lt!2367071))))

(assert (=> d!1996271 (= (validRegex!8007 lt!2367071) e!3864061)))

(declare-fun bm!543059 () Bool)

(assert (=> bm!543059 (= call!543063 call!543064)))

(declare-fun b!6363744 () Bool)

(assert (=> b!6363744 (= e!3864065 call!543064)))

(declare-fun b!6363745 () Bool)

(assert (=> b!6363745 (= e!3864064 call!543063)))

(declare-fun b!6363746 () Bool)

(declare-fun e!3864062 () Bool)

(assert (=> b!6363746 (= e!3864062 e!3864066)))

(declare-fun res!2618291 () Bool)

(assert (=> b!6363746 (=> (not res!2618291) (not e!3864066))))

(assert (=> b!6363746 (= res!2618291 call!543062)))

(declare-fun b!6363747 () Bool)

(declare-fun res!2618295 () Bool)

(assert (=> b!6363747 (=> res!2618295 e!3864062)))

(assert (=> b!6363747 (= res!2618295 (not ((_ is Concat!25116) lt!2367071)))))

(assert (=> b!6363747 (= e!3864060 e!3864062)))

(assert (= (and d!1996271 (not res!2618293)) b!6363741))

(assert (= (and b!6363741 c!1158562) b!6363739))

(assert (= (and b!6363741 (not c!1158562)) b!6363742))

(assert (= (and b!6363739 res!2618294) b!6363744))

(assert (= (and b!6363742 c!1158561) b!6363743))

(assert (= (and b!6363742 (not c!1158561)) b!6363747))

(assert (= (and b!6363743 res!2618290) b!6363745))

(assert (= (and b!6363747 (not res!2618295)) b!6363746))

(assert (= (and b!6363746 res!2618291) b!6363740))

(assert (= (or b!6363745 b!6363740) bm!543059))

(assert (= (or b!6363743 b!6363746) bm!543058))

(assert (= (or b!6363744 bm!543059) bm!543057))

(declare-fun m!7168404 () Bool)

(assert (=> b!6363739 m!7168404))

(declare-fun m!7168406 () Bool)

(assert (=> bm!543057 m!7168406))

(declare-fun m!7168408 () Bool)

(assert (=> bm!543058 m!7168408))

(assert (=> d!1996053 d!1996271))

(declare-fun d!1996275 () Bool)

(declare-fun res!2618304 () Bool)

(declare-fun e!3864074 () Bool)

(assert (=> d!1996275 (=> res!2618304 e!3864074)))

(assert (=> d!1996275 (= res!2618304 ((_ is Nil!64988) (exprs!6155 (h!71437 zl!343))))))

(assert (=> d!1996275 (= (forall!15449 (exprs!6155 (h!71437 zl!343)) lambda!350531) e!3864074)))

(declare-fun b!6363762 () Bool)

(declare-fun e!3864075 () Bool)

(assert (=> b!6363762 (= e!3864074 e!3864075)))

(declare-fun res!2618305 () Bool)

(assert (=> b!6363762 (=> (not res!2618305) (not e!3864075))))

(assert (=> b!6363762 (= res!2618305 (dynLambda!25781 lambda!350531 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363763 () Bool)

(assert (=> b!6363763 (= e!3864075 (forall!15449 (t!378706 (exprs!6155 (h!71437 zl!343))) lambda!350531))))

(assert (= (and d!1996275 (not res!2618304)) b!6363762))

(assert (= (and b!6363762 res!2618305) b!6363763))

(declare-fun b_lambda!241893 () Bool)

(assert (=> (not b_lambda!241893) (not b!6363762)))

(declare-fun m!7168410 () Bool)

(assert (=> b!6363762 m!7168410))

(declare-fun m!7168412 () Bool)

(assert (=> b!6363763 m!7168412))

(assert (=> d!1996053 d!1996275))

(declare-fun b!6363764 () Bool)

(declare-fun e!3864077 () (InoxSet Context!11310))

(assert (=> b!6363764 (= e!3864077 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363765 () Bool)

(declare-fun e!3864076 () (InoxSet Context!11310))

(declare-fun call!543069 () (InoxSet Context!11310))

(declare-fun call!543068 () (InoxSet Context!11310))

(assert (=> b!6363765 (= e!3864076 ((_ map or) call!543069 call!543068))))

(declare-fun b!6363766 () Bool)

(declare-fun e!3864078 () (InoxSet Context!11310))

(assert (=> b!6363766 (= e!3864078 e!3864076)))

(declare-fun c!1158568 () Bool)

(assert (=> b!6363766 (= c!1158568 ((_ is Union!16271) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))))))

(declare-fun bm!543061 () Bool)

(declare-fun call!543070 () (InoxSet Context!11310))

(declare-fun call!543066 () (InoxSet Context!11310))

(assert (=> bm!543061 (= call!543070 call!543066)))

(declare-fun b!6363767 () Bool)

(declare-fun c!1158567 () Bool)

(declare-fun e!3864080 () Bool)

(assert (=> b!6363767 (= c!1158567 e!3864080)))

(declare-fun res!2618306 () Bool)

(assert (=> b!6363767 (=> (not res!2618306) (not e!3864080))))

(assert (=> b!6363767 (= res!2618306 ((_ is Concat!25116) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))))))

(declare-fun e!3864079 () (InoxSet Context!11310))

(assert (=> b!6363767 (= e!3864076 e!3864079)))

(declare-fun c!1158569 () Bool)

(declare-fun d!1996277 () Bool)

(assert (=> d!1996277 (= c!1158569 (and ((_ is ElementMatch!16271) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (= (c!1158284 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (h!71438 s!2326))))))

(assert (=> d!1996277 (= (derivationStepZipperDown!1519 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))) (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002)) (h!71438 s!2326)) e!3864078)))

(declare-fun bm!543062 () Bool)

(declare-fun c!1158566 () Bool)

(declare-fun call!543071 () List!65112)

(assert (=> bm!543062 (= call!543069 (derivationStepZipperDown!1519 (ite c!1158568 (regOne!33055 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (ite c!1158567 (regTwo!33054 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (ite c!1158566 (regOne!33054 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (reg!16600 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))))) (ite (or c!1158568 c!1158567) (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002)) (Context!11311 call!543071)) (h!71438 s!2326)))))

(declare-fun b!6363768 () Bool)

(assert (=> b!6363768 (= e!3864078 (store ((as const (Array Context!11310 Bool)) false) (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002)) true))))

(declare-fun bm!543063 () Bool)

(assert (=> bm!543063 (= call!543066 call!543069)))

(declare-fun call!543067 () List!65112)

(declare-fun bm!543064 () Bool)

(assert (=> bm!543064 (= call!543068 (derivationStepZipperDown!1519 (ite c!1158568 (regTwo!33055 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (regOne!33054 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))) (ite c!1158568 (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002)) (Context!11311 call!543067)) (h!71438 s!2326)))))

(declare-fun b!6363769 () Bool)

(declare-fun e!3864081 () (InoxSet Context!11310))

(assert (=> b!6363769 (= e!3864081 call!543070)))

(declare-fun bm!543065 () Bool)

(assert (=> bm!543065 (= call!543071 call!543067)))

(declare-fun b!6363770 () Bool)

(assert (=> b!6363770 (= e!3864080 (nullable!6264 (regOne!33054 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))))))

(declare-fun b!6363771 () Bool)

(assert (=> b!6363771 (= e!3864077 call!543070)))

(declare-fun b!6363772 () Bool)

(declare-fun c!1158570 () Bool)

(assert (=> b!6363772 (= c!1158570 ((_ is Star!16271) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))))))

(assert (=> b!6363772 (= e!3864081 e!3864077)))

(declare-fun bm!543066 () Bool)

(assert (=> bm!543066 (= call!543067 ($colon$colon!2132 (exprs!6155 (ite c!1158469 (Context!11311 lt!2367014) (Context!11311 call!543002))) (ite (or c!1158567 c!1158566) (regTwo!33054 (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292)))))))))

(declare-fun b!6363773 () Bool)

(assert (=> b!6363773 (= e!3864079 e!3864081)))

(assert (=> b!6363773 (= c!1158566 ((_ is Concat!25116) (ite c!1158469 (regTwo!33055 (reg!16600 (regOne!33054 r!7292))) (regOne!33054 (reg!16600 (regOne!33054 r!7292))))))))

(declare-fun b!6363774 () Bool)

(assert (=> b!6363774 (= e!3864079 ((_ map or) call!543068 call!543066))))

(assert (= (and d!1996277 c!1158569) b!6363768))

(assert (= (and d!1996277 (not c!1158569)) b!6363766))

(assert (= (and b!6363766 c!1158568) b!6363765))

(assert (= (and b!6363766 (not c!1158568)) b!6363767))

(assert (= (and b!6363767 res!2618306) b!6363770))

(assert (= (and b!6363767 c!1158567) b!6363774))

(assert (= (and b!6363767 (not c!1158567)) b!6363773))

(assert (= (and b!6363773 c!1158566) b!6363769))

(assert (= (and b!6363773 (not c!1158566)) b!6363772))

(assert (= (and b!6363772 c!1158570) b!6363771))

(assert (= (and b!6363772 (not c!1158570)) b!6363764))

(assert (= (or b!6363769 b!6363771) bm!543065))

(assert (= (or b!6363769 b!6363771) bm!543061))

(assert (= (or b!6363774 bm!543065) bm!543066))

(assert (= (or b!6363774 bm!543061) bm!543063))

(assert (= (or b!6363765 b!6363774) bm!543064))

(assert (= (or b!6363765 bm!543063) bm!543062))

(declare-fun m!7168430 () Bool)

(assert (=> bm!543062 m!7168430))

(declare-fun m!7168432 () Bool)

(assert (=> b!6363768 m!7168432))

(declare-fun m!7168434 () Bool)

(assert (=> bm!543066 m!7168434))

(declare-fun m!7168436 () Bool)

(assert (=> b!6363770 m!7168436))

(declare-fun m!7168438 () Bool)

(assert (=> bm!543064 m!7168438))

(assert (=> bm!542999 d!1996277))

(declare-fun d!1996283 () Bool)

(assert (=> d!1996283 (= (head!13035 s!2326) (h!71438 s!2326))))

(assert (=> b!6363163 d!1996283))

(declare-fun d!1996285 () Bool)

(assert (=> d!1996285 (= (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (nullableFct!2211 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun bs!1594450 () Bool)

(assert (= bs!1594450 d!1996285))

(declare-fun m!7168440 () Bool)

(assert (=> bs!1594450 m!7168440))

(assert (=> b!6363300 d!1996285))

(declare-fun d!1996287 () Bool)

(declare-fun res!2618312 () Bool)

(declare-fun e!3864089 () Bool)

(assert (=> d!1996287 (=> res!2618312 e!3864089)))

(assert (=> d!1996287 (= res!2618312 ((_ is Nil!64989) lt!2367077))))

(assert (=> d!1996287 (= (noDuplicate!2101 lt!2367077) e!3864089)))

(declare-fun b!6363784 () Bool)

(declare-fun e!3864090 () Bool)

(assert (=> b!6363784 (= e!3864089 e!3864090)))

(declare-fun res!2618313 () Bool)

(assert (=> b!6363784 (=> (not res!2618313) (not e!3864090))))

(declare-fun contains!20158 (List!65113 Context!11310) Bool)

(assert (=> b!6363784 (= res!2618313 (not (contains!20158 (t!378707 lt!2367077) (h!71437 lt!2367077))))))

(declare-fun b!6363785 () Bool)

(assert (=> b!6363785 (= e!3864090 (noDuplicate!2101 (t!378707 lt!2367077)))))

(assert (= (and d!1996287 (not res!2618312)) b!6363784))

(assert (= (and b!6363784 res!2618313) b!6363785))

(declare-fun m!7168448 () Bool)

(assert (=> b!6363784 m!7168448))

(declare-fun m!7168450 () Bool)

(assert (=> b!6363785 m!7168450))

(assert (=> d!1996075 d!1996287))

(declare-fun d!1996293 () Bool)

(declare-fun e!3864097 () Bool)

(assert (=> d!1996293 e!3864097))

(declare-fun res!2618318 () Bool)

(assert (=> d!1996293 (=> (not res!2618318) (not e!3864097))))

(declare-fun res!2618319 () List!65113)

(assert (=> d!1996293 (= res!2618318 (noDuplicate!2101 res!2618319))))

(declare-fun e!3864098 () Bool)

(assert (=> d!1996293 e!3864098))

(assert (=> d!1996293 (= (choose!47264 z!1189) res!2618319)))

(declare-fun b!6363793 () Bool)

(declare-fun e!3864099 () Bool)

(declare-fun tp!1772000 () Bool)

(assert (=> b!6363793 (= e!3864099 tp!1772000)))

(declare-fun b!6363792 () Bool)

(declare-fun tp!1771999 () Bool)

(assert (=> b!6363792 (= e!3864098 (and (inv!83924 (h!71437 res!2618319)) e!3864099 tp!1771999))))

(declare-fun b!6363794 () Bool)

(assert (=> b!6363794 (= e!3864097 (= (content!12276 res!2618319) z!1189))))

(assert (= b!6363792 b!6363793))

(assert (= (and d!1996293 ((_ is Cons!64989) res!2618319)) b!6363792))

(assert (= (and d!1996293 res!2618318) b!6363794))

(declare-fun m!7168452 () Bool)

(assert (=> d!1996293 m!7168452))

(declare-fun m!7168454 () Bool)

(assert (=> b!6363792 m!7168454))

(declare-fun m!7168456 () Bool)

(assert (=> b!6363794 m!7168456))

(assert (=> d!1996075 d!1996293))

(declare-fun b!6363799 () Bool)

(declare-fun e!3864103 () (InoxSet Context!11310))

(assert (=> b!6363799 (= e!3864103 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363800 () Bool)

(declare-fun e!3864102 () (InoxSet Context!11310))

(declare-fun call!543076 () (InoxSet Context!11310))

(declare-fun call!543075 () (InoxSet Context!11310))

(assert (=> b!6363800 (= e!3864102 ((_ map or) call!543076 call!543075))))

(declare-fun b!6363801 () Bool)

(declare-fun e!3864104 () (InoxSet Context!11310))

(assert (=> b!6363801 (= e!3864104 e!3864102)))

(declare-fun c!1158577 () Bool)

(assert (=> b!6363801 (= c!1158577 ((_ is Union!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun bm!543068 () Bool)

(declare-fun call!543077 () (InoxSet Context!11310))

(declare-fun call!543073 () (InoxSet Context!11310))

(assert (=> bm!543068 (= call!543077 call!543073)))

(declare-fun b!6363802 () Bool)

(declare-fun c!1158576 () Bool)

(declare-fun e!3864106 () Bool)

(assert (=> b!6363802 (= c!1158576 e!3864106)))

(declare-fun res!2618320 () Bool)

(assert (=> b!6363802 (=> (not res!2618320) (not e!3864106))))

(assert (=> b!6363802 (= res!2618320 ((_ is Concat!25116) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun e!3864105 () (InoxSet Context!11310))

(assert (=> b!6363802 (= e!3864102 e!3864105)))

(declare-fun d!1996295 () Bool)

(declare-fun c!1158578 () Bool)

(assert (=> d!1996295 (= c!1158578 (and ((_ is ElementMatch!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))) (= (c!1158284 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326))))))

(assert (=> d!1996295 (= (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (h!71437 zl!343))) (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (h!71438 s!2326)) e!3864104)))

(declare-fun c!1158575 () Bool)

(declare-fun call!543078 () List!65112)

(declare-fun bm!543069 () Bool)

(assert (=> bm!543069 (= call!543076 (derivationStepZipperDown!1519 (ite c!1158577 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158576 (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (ite c!1158575 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (reg!16600 (h!71436 (exprs!6155 (h!71437 zl!343))))))) (ite (or c!1158577 c!1158576) (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (Context!11311 call!543078)) (h!71438 s!2326)))))

(declare-fun b!6363803 () Bool)

(assert (=> b!6363803 (= e!3864104 (store ((as const (Array Context!11310 Bool)) false) (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) true))))

(declare-fun bm!543070 () Bool)

(assert (=> bm!543070 (= call!543073 call!543076)))

(declare-fun bm!543071 () Bool)

(declare-fun call!543074 () List!65112)

(assert (=> bm!543071 (= call!543075 (derivationStepZipperDown!1519 (ite c!1158577 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))) (ite c!1158577 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343)))) (Context!11311 call!543074)) (h!71438 s!2326)))))

(declare-fun b!6363804 () Bool)

(declare-fun e!3864107 () (InoxSet Context!11310))

(assert (=> b!6363804 (= e!3864107 call!543077)))

(declare-fun bm!543072 () Bool)

(assert (=> bm!543072 (= call!543078 call!543074)))

(declare-fun b!6363805 () Bool)

(assert (=> b!6363805 (= e!3864106 (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363806 () Bool)

(assert (=> b!6363806 (= e!3864103 call!543077)))

(declare-fun b!6363807 () Bool)

(declare-fun c!1158579 () Bool)

(assert (=> b!6363807 (= c!1158579 ((_ is Star!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> b!6363807 (= e!3864107 e!3864103)))

(declare-fun bm!543073 () Bool)

(assert (=> bm!543073 (= call!543074 ($colon$colon!2132 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (h!71437 zl!343))))) (ite (or c!1158576 c!1158575) (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71436 (exprs!6155 (h!71437 zl!343))))))))

(declare-fun b!6363808 () Bool)

(assert (=> b!6363808 (= e!3864105 e!3864107)))

(assert (=> b!6363808 (= c!1158575 ((_ is Concat!25116) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363809 () Bool)

(assert (=> b!6363809 (= e!3864105 ((_ map or) call!543075 call!543073))))

(assert (= (and d!1996295 c!1158578) b!6363803))

(assert (= (and d!1996295 (not c!1158578)) b!6363801))

(assert (= (and b!6363801 c!1158577) b!6363800))

(assert (= (and b!6363801 (not c!1158577)) b!6363802))

(assert (= (and b!6363802 res!2618320) b!6363805))

(assert (= (and b!6363802 c!1158576) b!6363809))

(assert (= (and b!6363802 (not c!1158576)) b!6363808))

(assert (= (and b!6363808 c!1158575) b!6363804))

(assert (= (and b!6363808 (not c!1158575)) b!6363807))

(assert (= (and b!6363807 c!1158579) b!6363806))

(assert (= (and b!6363807 (not c!1158579)) b!6363799))

(assert (= (or b!6363804 b!6363806) bm!543072))

(assert (= (or b!6363804 b!6363806) bm!543068))

(assert (= (or b!6363809 bm!543072) bm!543073))

(assert (= (or b!6363809 bm!543068) bm!543070))

(assert (= (or b!6363800 b!6363809) bm!543071))

(assert (= (or b!6363800 bm!543070) bm!543069))

(declare-fun m!7168458 () Bool)

(assert (=> bm!543069 m!7168458))

(declare-fun m!7168460 () Bool)

(assert (=> b!6363803 m!7168460))

(declare-fun m!7168462 () Bool)

(assert (=> bm!543073 m!7168462))

(assert (=> b!6363805 m!7168006))

(declare-fun m!7168464 () Bool)

(assert (=> bm!543071 m!7168464))

(assert (=> bm!542994 d!1996295))

(declare-fun bs!1594452 () Bool)

(declare-fun d!1996297 () Bool)

(assert (= bs!1594452 (and d!1996297 d!1996173)))

(declare-fun lambda!350578 () Int)

(assert (=> bs!1594452 (= lambda!350578 lambda!350557)))

(assert (=> d!1996297 (= (nullableZipper!2037 lt!2367006) (exists!2574 lt!2367006 lambda!350578))))

(declare-fun bs!1594453 () Bool)

(assert (= bs!1594453 d!1996297))

(declare-fun m!7168466 () Bool)

(assert (=> bs!1594453 m!7168466))

(assert (=> b!6363375 d!1996297))

(declare-fun bs!1594454 () Bool)

(declare-fun d!1996299 () Bool)

(assert (= bs!1594454 (and d!1996299 d!1996237)))

(declare-fun lambda!350579 () Int)

(assert (=> bs!1594454 (= lambda!350579 lambda!350571)))

(declare-fun bs!1594455 () Bool)

(assert (= bs!1594455 (and d!1996299 d!1996091)))

(assert (=> bs!1594455 (= lambda!350579 lambda!350536)))

(declare-fun bs!1594456 () Bool)

(assert (= bs!1594456 (and d!1996299 d!1995995)))

(assert (=> bs!1594456 (= lambda!350579 lambda!350512)))

(declare-fun bs!1594457 () Bool)

(assert (= bs!1594457 (and d!1996299 d!1996089)))

(assert (=> bs!1594457 (= lambda!350579 lambda!350535)))

(declare-fun bs!1594458 () Bool)

(assert (= bs!1594458 (and d!1996299 d!1996053)))

(assert (=> bs!1594458 (= lambda!350579 lambda!350531)))

(declare-fun bs!1594459 () Bool)

(assert (= bs!1594459 (and d!1996299 d!1995987)))

(assert (=> bs!1594459 (= lambda!350579 lambda!350505)))

(declare-fun bs!1594460 () Bool)

(assert (= bs!1594460 (and d!1996299 d!1996077)))

(assert (=> bs!1594460 (= lambda!350579 lambda!350534)))

(assert (=> d!1996299 (= (inv!83924 setElem!43354) (forall!15449 (exprs!6155 setElem!43354) lambda!350579))))

(declare-fun bs!1594461 () Bool)

(assert (= bs!1594461 d!1996299))

(declare-fun m!7168482 () Bool)

(assert (=> bs!1594461 m!7168482))

(assert (=> setNonEmpty!43354 d!1996299))

(declare-fun bm!543074 () Bool)

(declare-fun call!543079 () (InoxSet Context!11310))

(assert (=> bm!543074 (= call!543079 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001)))))) (h!71438 s!2326)))))

(declare-fun d!1996303 () Bool)

(declare-fun c!1158581 () Bool)

(declare-fun e!3864114 () Bool)

(assert (=> d!1996303 (= c!1158581 e!3864114)))

(declare-fun res!2618327 () Bool)

(assert (=> d!1996303 (=> (not res!2618327) (not e!3864114))))

(assert (=> d!1996303 (= res!2618327 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001))))))))

(declare-fun e!3864112 () (InoxSet Context!11310))

(assert (=> d!1996303 (= (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (h!71438 s!2326)) e!3864112)))

(declare-fun b!6363818 () Bool)

(declare-fun e!3864113 () (InoxSet Context!11310))

(assert (=> b!6363818 (= e!3864112 e!3864113)))

(declare-fun c!1158582 () Bool)

(assert (=> b!6363818 (= c!1158582 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001))))))))

(declare-fun b!6363819 () Bool)

(assert (=> b!6363819 (= e!3864113 call!543079)))

(declare-fun b!6363820 () Bool)

(assert (=> b!6363820 (= e!3864113 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363821 () Bool)

(assert (=> b!6363821 (= e!3864114 (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001)))))))))

(declare-fun b!6363822 () Bool)

(assert (=> b!6363822 (= e!3864112 ((_ map or) call!543079 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001)))))) (h!71438 s!2326))))))

(assert (= (and d!1996303 res!2618327) b!6363821))

(assert (= (and d!1996303 c!1158581) b!6363822))

(assert (= (and d!1996303 (not c!1158581)) b!6363818))

(assert (= (and b!6363818 c!1158582) b!6363819))

(assert (= (and b!6363818 (not c!1158582)) b!6363820))

(assert (= (or b!6363822 b!6363819) bm!543074))

(declare-fun m!7168488 () Bool)

(assert (=> bm!543074 m!7168488))

(declare-fun m!7168490 () Bool)

(assert (=> b!6363821 m!7168490))

(declare-fun m!7168492 () Bool)

(assert (=> b!6363822 m!7168492))

(assert (=> b!6363339 d!1996303))

(declare-fun d!1996309 () Bool)

(assert (=> d!1996309 (= (isEmptyLang!1680 lt!2367031) ((_ is EmptyLang!16271) lt!2367031))))

(assert (=> b!6362949 d!1996309))

(assert (=> d!1996081 d!1996085))

(assert (=> d!1996081 d!1996083))

(declare-fun d!1996311 () Bool)

(declare-fun e!3864127 () Bool)

(assert (=> d!1996311 (= (matchZipper!2283 ((_ map or) lt!2367005 lt!2367006) (t!378708 s!2326)) e!3864127)))

(declare-fun res!2618341 () Bool)

(assert (=> d!1996311 (=> res!2618341 e!3864127)))

(assert (=> d!1996311 (= res!2618341 (matchZipper!2283 lt!2367005 (t!378708 s!2326)))))

(assert (=> d!1996311 true))

(declare-fun _$48!2150 () Unit!158415)

(assert (=> d!1996311 (= (choose!47265 lt!2367005 lt!2367006 (t!378708 s!2326)) _$48!2150)))

(declare-fun b!6363842 () Bool)

(assert (=> b!6363842 (= e!3864127 (matchZipper!2283 lt!2367006 (t!378708 s!2326)))))

(assert (= (and d!1996311 (not res!2618341)) b!6363842))

(assert (=> d!1996311 m!7167646))

(assert (=> d!1996311 m!7167644))

(assert (=> b!6363842 m!7167662))

(assert (=> d!1996081 d!1996311))

(declare-fun d!1996319 () Bool)

(declare-fun res!2618342 () Bool)

(declare-fun e!3864128 () Bool)

(assert (=> d!1996319 (=> res!2618342 e!3864128)))

(assert (=> d!1996319 (= res!2618342 ((_ is Nil!64988) (exprs!6155 (h!71437 zl!343))))))

(assert (=> d!1996319 (= (forall!15449 (exprs!6155 (h!71437 zl!343)) lambda!350536) e!3864128)))

(declare-fun b!6363843 () Bool)

(declare-fun e!3864129 () Bool)

(assert (=> b!6363843 (= e!3864128 e!3864129)))

(declare-fun res!2618343 () Bool)

(assert (=> b!6363843 (=> (not res!2618343) (not e!3864129))))

(assert (=> b!6363843 (= res!2618343 (dynLambda!25781 lambda!350536 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363844 () Bool)

(assert (=> b!6363844 (= e!3864129 (forall!15449 (t!378706 (exprs!6155 (h!71437 zl!343))) lambda!350536))))

(assert (= (and d!1996319 (not res!2618342)) b!6363843))

(assert (= (and b!6363843 res!2618343) b!6363844))

(declare-fun b_lambda!241895 () Bool)

(assert (=> (not b_lambda!241895) (not b!6363843)))

(declare-fun m!7168504 () Bool)

(assert (=> b!6363843 m!7168504))

(declare-fun m!7168506 () Bool)

(assert (=> b!6363844 m!7168506))

(assert (=> d!1996091 d!1996319))

(declare-fun bs!1594477 () Bool)

(declare-fun b!6363851 () Bool)

(assert (= bs!1594477 (and b!6363851 b!6363646)))

(declare-fun lambda!350582 () Int)

(assert (=> bs!1594477 (not (= lambda!350582 lambda!350565))))

(declare-fun bs!1594478 () Bool)

(assert (= bs!1594478 (and b!6363851 b!6363103)))

(assert (=> bs!1594478 (not (= lambda!350582 lambda!350518))))

(declare-fun bs!1594479 () Bool)

(assert (= bs!1594479 (and b!6363851 d!1996105)))

(assert (=> bs!1594479 (not (= lambda!350582 lambda!350539))))

(declare-fun bs!1594480 () Bool)

(assert (= bs!1594480 (and b!6363851 b!6363104)))

(assert (=> bs!1594480 (= (and (= (reg!16600 (regOne!33055 r!7292)) (reg!16600 r!7292)) (= (regOne!33055 r!7292) r!7292)) (= lambda!350582 lambda!350517))))

(declare-fun bs!1594481 () Bool)

(assert (= bs!1594481 (and b!6363851 b!6362731)))

(assert (=> bs!1594481 (not (= lambda!350582 lambda!350485))))

(declare-fun bs!1594482 () Bool)

(assert (= bs!1594482 (and b!6363851 d!1996107)))

(assert (=> bs!1594482 (not (= lambda!350582 lambda!350544))))

(assert (=> bs!1594481 (not (= lambda!350582 lambda!350486))))

(declare-fun bs!1594483 () Bool)

(assert (= bs!1594483 (and b!6363851 b!6363647)))

(assert (=> bs!1594483 (= (and (= (reg!16600 (regOne!33055 r!7292)) (reg!16600 (regTwo!33055 r!7292))) (= (regOne!33055 r!7292) (regTwo!33055 r!7292))) (= lambda!350582 lambda!350564))))

(assert (=> bs!1594482 (not (= lambda!350582 lambda!350545))))

(assert (=> b!6363851 true))

(assert (=> b!6363851 true))

(declare-fun bs!1594484 () Bool)

(declare-fun b!6363850 () Bool)

(assert (= bs!1594484 (and b!6363850 b!6363851)))

(declare-fun lambda!350583 () Int)

(assert (=> bs!1594484 (not (= lambda!350583 lambda!350582))))

(declare-fun bs!1594485 () Bool)

(assert (= bs!1594485 (and b!6363850 b!6363646)))

(assert (=> bs!1594485 (= (and (= (regOne!33054 (regOne!33055 r!7292)) (regOne!33054 (regTwo!33055 r!7292))) (= (regTwo!33054 (regOne!33055 r!7292)) (regTwo!33054 (regTwo!33055 r!7292)))) (= lambda!350583 lambda!350565))))

(declare-fun bs!1594486 () Bool)

(assert (= bs!1594486 (and b!6363850 b!6363103)))

(assert (=> bs!1594486 (= (and (= (regOne!33054 (regOne!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regOne!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350583 lambda!350518))))

(declare-fun bs!1594487 () Bool)

(assert (= bs!1594487 (and b!6363850 d!1996105)))

(assert (=> bs!1594487 (not (= lambda!350583 lambda!350539))))

(declare-fun bs!1594488 () Bool)

(assert (= bs!1594488 (and b!6363850 b!6363104)))

(assert (=> bs!1594488 (not (= lambda!350583 lambda!350517))))

(declare-fun bs!1594489 () Bool)

(assert (= bs!1594489 (and b!6363850 b!6362731)))

(assert (=> bs!1594489 (not (= lambda!350583 lambda!350485))))

(declare-fun bs!1594490 () Bool)

(assert (= bs!1594490 (and b!6363850 d!1996107)))

(assert (=> bs!1594490 (not (= lambda!350583 lambda!350544))))

(assert (=> bs!1594489 (= (and (= (regOne!33054 (regOne!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regOne!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350583 lambda!350486))))

(declare-fun bs!1594491 () Bool)

(assert (= bs!1594491 (and b!6363850 b!6363647)))

(assert (=> bs!1594491 (not (= lambda!350583 lambda!350564))))

(assert (=> bs!1594490 (= (and (= (regOne!33054 (regOne!33055 r!7292)) (regOne!33054 r!7292)) (= (regTwo!33054 (regOne!33055 r!7292)) (regTwo!33054 r!7292))) (= lambda!350583 lambda!350545))))

(assert (=> b!6363850 true))

(assert (=> b!6363850 true))

(declare-fun b!6363849 () Bool)

(declare-fun e!3864134 () Bool)

(declare-fun e!3864135 () Bool)

(assert (=> b!6363849 (= e!3864134 e!3864135)))

(declare-fun res!2618347 () Bool)

(assert (=> b!6363849 (= res!2618347 (matchRSpec!3372 (regOne!33055 (regOne!33055 r!7292)) s!2326))))

(assert (=> b!6363849 (=> res!2618347 e!3864135)))

(declare-fun e!3864133 () Bool)

(declare-fun call!543081 () Bool)

(assert (=> b!6363850 (= e!3864133 call!543081)))

(declare-fun e!3864136 () Bool)

(assert (=> b!6363851 (= e!3864136 call!543081)))

(declare-fun b!6363852 () Bool)

(assert (=> b!6363852 (= e!3864134 e!3864133)))

(declare-fun c!1158588 () Bool)

(assert (=> b!6363852 (= c!1158588 ((_ is Star!16271) (regOne!33055 r!7292)))))

(declare-fun b!6363853 () Bool)

(declare-fun c!1158589 () Bool)

(assert (=> b!6363853 (= c!1158589 ((_ is Union!16271) (regOne!33055 r!7292)))))

(declare-fun e!3864132 () Bool)

(assert (=> b!6363853 (= e!3864132 e!3864134)))

(declare-fun b!6363854 () Bool)

(declare-fun res!2618346 () Bool)

(assert (=> b!6363854 (=> res!2618346 e!3864136)))

(declare-fun call!543082 () Bool)

(assert (=> b!6363854 (= res!2618346 call!543082)))

(assert (=> b!6363854 (= e!3864133 e!3864136)))

(declare-fun d!1996323 () Bool)

(declare-fun c!1158590 () Bool)

(assert (=> d!1996323 (= c!1158590 ((_ is EmptyExpr!16271) (regOne!33055 r!7292)))))

(declare-fun e!3864137 () Bool)

(assert (=> d!1996323 (= (matchRSpec!3372 (regOne!33055 r!7292) s!2326) e!3864137)))

(declare-fun bm!543076 () Bool)

(assert (=> bm!543076 (= call!543082 (isEmpty!37096 s!2326))))

(declare-fun b!6363855 () Bool)

(assert (=> b!6363855 (= e!3864137 call!543082)))

(declare-fun b!6363856 () Bool)

(declare-fun e!3864138 () Bool)

(assert (=> b!6363856 (= e!3864137 e!3864138)))

(declare-fun res!2618348 () Bool)

(assert (=> b!6363856 (= res!2618348 (not ((_ is EmptyLang!16271) (regOne!33055 r!7292))))))

(assert (=> b!6363856 (=> (not res!2618348) (not e!3864138))))

(declare-fun b!6363857 () Bool)

(declare-fun c!1158587 () Bool)

(assert (=> b!6363857 (= c!1158587 ((_ is ElementMatch!16271) (regOne!33055 r!7292)))))

(assert (=> b!6363857 (= e!3864138 e!3864132)))

(declare-fun bm!543077 () Bool)

(assert (=> bm!543077 (= call!543081 (Exists!3341 (ite c!1158588 lambda!350582 lambda!350583)))))

(declare-fun b!6363858 () Bool)

(assert (=> b!6363858 (= e!3864135 (matchRSpec!3372 (regTwo!33055 (regOne!33055 r!7292)) s!2326))))

(declare-fun b!6363859 () Bool)

(assert (=> b!6363859 (= e!3864132 (= s!2326 (Cons!64990 (c!1158284 (regOne!33055 r!7292)) Nil!64990)))))

(assert (= (and d!1996323 c!1158590) b!6363855))

(assert (= (and d!1996323 (not c!1158590)) b!6363856))

(assert (= (and b!6363856 res!2618348) b!6363857))

(assert (= (and b!6363857 c!1158587) b!6363859))

(assert (= (and b!6363857 (not c!1158587)) b!6363853))

(assert (= (and b!6363853 c!1158589) b!6363849))

(assert (= (and b!6363853 (not c!1158589)) b!6363852))

(assert (= (and b!6363849 (not res!2618347)) b!6363858))

(assert (= (and b!6363852 c!1158588) b!6363854))

(assert (= (and b!6363852 (not c!1158588)) b!6363850))

(assert (= (and b!6363854 (not res!2618346)) b!6363851))

(assert (= (or b!6363851 b!6363850) bm!543077))

(assert (= (or b!6363855 b!6363854) bm!543076))

(declare-fun m!7168540 () Bool)

(assert (=> b!6363849 m!7168540))

(assert (=> bm!543076 m!7167924))

(declare-fun m!7168542 () Bool)

(assert (=> bm!543077 m!7168542))

(declare-fun m!7168544 () Bool)

(assert (=> b!6363858 m!7168544))

(assert (=> b!6363102 d!1996323))

(declare-fun d!1996331 () Bool)

(assert (=> d!1996331 (= (nullable!6264 (reg!16600 r!7292)) (nullableFct!2211 (reg!16600 r!7292)))))

(declare-fun bs!1594493 () Bool)

(assert (= bs!1594493 d!1996331))

(declare-fun m!7168546 () Bool)

(assert (=> bs!1594493 m!7168546))

(assert (=> b!6362846 d!1996331))

(declare-fun b!6363873 () Bool)

(declare-fun e!3864147 () (InoxSet Context!11310))

(assert (=> b!6363873 (= e!3864147 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363874 () Bool)

(declare-fun e!3864146 () (InoxSet Context!11310))

(declare-fun call!543086 () (InoxSet Context!11310))

(declare-fun call!543085 () (InoxSet Context!11310))

(assert (=> b!6363874 (= e!3864146 ((_ map or) call!543086 call!543085))))

(declare-fun b!6363875 () Bool)

(declare-fun e!3864148 () (InoxSet Context!11310))

(assert (=> b!6363875 (= e!3864148 e!3864146)))

(declare-fun c!1158596 () Bool)

(assert (=> b!6363875 (= c!1158596 ((_ is Union!16271) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun bm!543078 () Bool)

(declare-fun call!543087 () (InoxSet Context!11310))

(declare-fun call!543083 () (InoxSet Context!11310))

(assert (=> bm!543078 (= call!543087 call!543083)))

(declare-fun b!6363876 () Bool)

(declare-fun c!1158595 () Bool)

(declare-fun e!3864150 () Bool)

(assert (=> b!6363876 (= c!1158595 e!3864150)))

(declare-fun res!2618356 () Bool)

(assert (=> b!6363876 (=> (not res!2618356) (not e!3864150))))

(assert (=> b!6363876 (= res!2618356 ((_ is Concat!25116) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun e!3864149 () (InoxSet Context!11310))

(assert (=> b!6363876 (= e!3864146 e!3864149)))

(declare-fun d!1996333 () Bool)

(declare-fun c!1158597 () Bool)

(assert (=> d!1996333 (= c!1158597 (and ((_ is ElementMatch!16271) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (= (c!1158284 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326))))))

(assert (=> d!1996333 (= (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326)) e!3864148)))

(declare-fun c!1158594 () Bool)

(declare-fun call!543088 () List!65112)

(declare-fun bm!543079 () Bool)

(assert (=> bm!543079 (= call!543086 (derivationStepZipperDown!1519 (ite c!1158596 (regOne!33055 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (ite c!1158595 (regTwo!33054 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (ite c!1158594 (regOne!33054 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (reg!16600 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))) (ite (or c!1158596 c!1158595) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (Context!11311 call!543088)) (h!71438 s!2326)))))

(declare-fun b!6363877 () Bool)

(assert (=> b!6363877 (= e!3864148 (store ((as const (Array Context!11310 Bool)) false) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) true))))

(declare-fun bm!543080 () Bool)

(assert (=> bm!543080 (= call!543083 call!543086)))

(declare-fun bm!543081 () Bool)

(declare-fun call!543084 () List!65112)

(assert (=> bm!543081 (= call!543085 (derivationStepZipperDown!1519 (ite c!1158596 (regTwo!33055 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (regOne!33054 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))) (ite c!1158596 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (Context!11311 call!543084)) (h!71438 s!2326)))))

(declare-fun b!6363878 () Bool)

(declare-fun e!3864151 () (InoxSet Context!11310))

(assert (=> b!6363878 (= e!3864151 call!543087)))

(declare-fun bm!543082 () Bool)

(assert (=> bm!543082 (= call!543088 call!543084)))

(declare-fun b!6363879 () Bool)

(assert (=> b!6363879 (= e!3864150 (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))))

(declare-fun b!6363880 () Bool)

(assert (=> b!6363880 (= e!3864147 call!543087)))

(declare-fun b!6363881 () Bool)

(declare-fun c!1158598 () Bool)

(assert (=> b!6363881 (= c!1158598 ((_ is Star!16271) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(assert (=> b!6363881 (= e!3864151 e!3864147)))

(declare-fun bm!543083 () Bool)

(assert (=> bm!543083 (= call!543084 ($colon$colon!2132 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))) (ite (or c!1158595 c!1158594) (regTwo!33054 (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))))

(declare-fun b!6363882 () Bool)

(assert (=> b!6363882 (= e!3864149 e!3864151)))

(assert (=> b!6363882 (= c!1158594 ((_ is Concat!25116) (h!71436 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))

(declare-fun b!6363883 () Bool)

(assert (=> b!6363883 (= e!3864149 ((_ map or) call!543085 call!543083))))

(assert (= (and d!1996333 c!1158597) b!6363877))

(assert (= (and d!1996333 (not c!1158597)) b!6363875))

(assert (= (and b!6363875 c!1158596) b!6363874))

(assert (= (and b!6363875 (not c!1158596)) b!6363876))

(assert (= (and b!6363876 res!2618356) b!6363879))

(assert (= (and b!6363876 c!1158595) b!6363883))

(assert (= (and b!6363876 (not c!1158595)) b!6363882))

(assert (= (and b!6363882 c!1158594) b!6363878))

(assert (= (and b!6363882 (not c!1158594)) b!6363881))

(assert (= (and b!6363881 c!1158598) b!6363880))

(assert (= (and b!6363881 (not c!1158598)) b!6363873))

(assert (= (or b!6363878 b!6363880) bm!543082))

(assert (= (or b!6363878 b!6363880) bm!543078))

(assert (= (or b!6363883 bm!543082) bm!543083))

(assert (= (or b!6363883 bm!543078) bm!543080))

(assert (= (or b!6363874 b!6363883) bm!543081))

(assert (= (or b!6363874 bm!543080) bm!543079))

(declare-fun m!7168564 () Bool)

(assert (=> bm!543079 m!7168564))

(declare-fun m!7168568 () Bool)

(assert (=> b!6363877 m!7168568))

(declare-fun m!7168572 () Bool)

(assert (=> bm!543083 m!7168572))

(declare-fun m!7168576 () Bool)

(assert (=> b!6363879 m!7168576))

(declare-fun m!7168578 () Bool)

(assert (=> bm!543081 m!7168578))

(assert (=> bm!542974 d!1996333))

(declare-fun d!1996337 () Bool)

(declare-fun c!1158601 () Bool)

(assert (=> d!1996337 (= c!1158601 (isEmpty!37096 (tail!12120 (t!378708 s!2326))))))

(declare-fun e!3864159 () Bool)

(assert (=> d!1996337 (= (matchZipper!2283 (derivationStepZipper!2237 lt!2367005 (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))) e!3864159)))

(declare-fun b!6363893 () Bool)

(assert (=> b!6363893 (= e!3864159 (nullableZipper!2037 (derivationStepZipper!2237 lt!2367005 (head!13035 (t!378708 s!2326)))))))

(declare-fun b!6363894 () Bool)

(assert (=> b!6363894 (= e!3864159 (matchZipper!2283 (derivationStepZipper!2237 (derivationStepZipper!2237 lt!2367005 (head!13035 (t!378708 s!2326))) (head!13035 (tail!12120 (t!378708 s!2326)))) (tail!12120 (tail!12120 (t!378708 s!2326)))))))

(assert (= (and d!1996337 c!1158601) b!6363893))

(assert (= (and d!1996337 (not c!1158601)) b!6363894))

(assert (=> d!1996337 m!7168048))

(assert (=> d!1996337 m!7168352))

(assert (=> b!6363893 m!7168046))

(declare-fun m!7168580 () Bool)

(assert (=> b!6363893 m!7168580))

(assert (=> b!6363894 m!7168048))

(assert (=> b!6363894 m!7168356))

(assert (=> b!6363894 m!7168046))

(assert (=> b!6363894 m!7168356))

(declare-fun m!7168582 () Bool)

(assert (=> b!6363894 m!7168582))

(assert (=> b!6363894 m!7168048))

(assert (=> b!6363894 m!7168360))

(assert (=> b!6363894 m!7168582))

(assert (=> b!6363894 m!7168360))

(declare-fun m!7168584 () Bool)

(assert (=> b!6363894 m!7168584))

(assert (=> b!6363361 d!1996337))

(declare-fun bs!1594494 () Bool)

(declare-fun d!1996339 () Bool)

(assert (= bs!1594494 (and d!1996339 b!6362719)))

(declare-fun lambda!350584 () Int)

(assert (=> bs!1594494 (= (= (head!13035 (t!378708 s!2326)) (h!71438 s!2326)) (= lambda!350584 lambda!350487))))

(declare-fun bs!1594495 () Bool)

(assert (= bs!1594495 (and d!1996339 d!1996247)))

(assert (=> bs!1594495 (= lambda!350584 lambda!350574)))

(assert (=> d!1996339 true))

(assert (=> d!1996339 (= (derivationStepZipper!2237 lt!2367005 (head!13035 (t!378708 s!2326))) (flatMap!1776 lt!2367005 lambda!350584))))

(declare-fun bs!1594496 () Bool)

(assert (= bs!1594496 d!1996339))

(declare-fun m!7168592 () Bool)

(assert (=> bs!1594496 m!7168592))

(assert (=> b!6363361 d!1996339))

(assert (=> b!6363361 d!1996249))

(assert (=> b!6363361 d!1996251))

(declare-fun d!1996343 () Bool)

(assert (=> d!1996343 (= (nullable!6264 (h!71436 (exprs!6155 lt!2367010))) (nullableFct!2211 (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun bs!1594497 () Bool)

(assert (= bs!1594497 d!1996343))

(declare-fun m!7168594 () Bool)

(assert (=> bs!1594497 m!7168594))

(assert (=> b!6363351 d!1996343))

(declare-fun bs!1594498 () Bool)

(declare-fun d!1996345 () Bool)

(assert (= bs!1594498 (and d!1996345 d!1996237)))

(declare-fun lambda!350585 () Int)

(assert (=> bs!1594498 (= lambda!350585 lambda!350571)))

(declare-fun bs!1594499 () Bool)

(assert (= bs!1594499 (and d!1996345 d!1996091)))

(assert (=> bs!1594499 (= lambda!350585 lambda!350536)))

(declare-fun bs!1594500 () Bool)

(assert (= bs!1594500 (and d!1996345 d!1996299)))

(assert (=> bs!1594500 (= lambda!350585 lambda!350579)))

(declare-fun bs!1594501 () Bool)

(assert (= bs!1594501 (and d!1996345 d!1995995)))

(assert (=> bs!1594501 (= lambda!350585 lambda!350512)))

(declare-fun bs!1594502 () Bool)

(assert (= bs!1594502 (and d!1996345 d!1996089)))

(assert (=> bs!1594502 (= lambda!350585 lambda!350535)))

(declare-fun bs!1594503 () Bool)

(assert (= bs!1594503 (and d!1996345 d!1996053)))

(assert (=> bs!1594503 (= lambda!350585 lambda!350531)))

(declare-fun bs!1594504 () Bool)

(assert (= bs!1594504 (and d!1996345 d!1995987)))

(assert (=> bs!1594504 (= lambda!350585 lambda!350505)))

(declare-fun bs!1594505 () Bool)

(assert (= bs!1594505 (and d!1996345 d!1996077)))

(assert (=> bs!1594505 (= lambda!350585 lambda!350534)))

(assert (=> d!1996345 (= (inv!83924 (h!71437 (t!378707 zl!343))) (forall!15449 (exprs!6155 (h!71437 (t!378707 zl!343))) lambda!350585))))

(declare-fun bs!1594506 () Bool)

(assert (= bs!1594506 d!1996345))

(declare-fun m!7168596 () Bool)

(assert (=> bs!1594506 m!7168596))

(assert (=> b!6363457 d!1996345))

(declare-fun b!6363929 () Bool)

(declare-fun e!3864193 () Bool)

(declare-fun e!3864190 () Bool)

(assert (=> b!6363929 (= e!3864193 e!3864190)))

(declare-fun res!2618388 () Bool)

(assert (=> b!6363929 (=> res!2618388 e!3864190)))

(assert (=> b!6363929 (= res!2618388 ((_ is Star!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun b!6363931 () Bool)

(declare-fun e!3864194 () Bool)

(declare-fun e!3864191 () Bool)

(assert (=> b!6363931 (= e!3864194 e!3864191)))

(declare-fun res!2618389 () Bool)

(declare-fun call!543098 () Bool)

(assert (=> b!6363931 (= res!2618389 call!543098)))

(assert (=> b!6363931 (=> (not res!2618389) (not e!3864191))))

(declare-fun b!6363932 () Bool)

(assert (=> b!6363932 (= e!3864190 e!3864194)))

(declare-fun c!1158606 () Bool)

(assert (=> b!6363932 (= c!1158606 ((_ is Union!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun bm!543092 () Bool)

(assert (=> bm!543092 (= call!543098 (nullable!6264 (ite c!1158606 (regOne!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6363933 () Bool)

(declare-fun e!3864195 () Bool)

(assert (=> b!6363933 (= e!3864194 e!3864195)))

(declare-fun res!2618390 () Bool)

(assert (=> b!6363933 (= res!2618390 call!543098)))

(assert (=> b!6363933 (=> res!2618390 e!3864195)))

(declare-fun b!6363934 () Bool)

(declare-fun call!543097 () Bool)

(assert (=> b!6363934 (= e!3864195 call!543097)))

(declare-fun bm!543093 () Bool)

(assert (=> bm!543093 (= call!543097 (nullable!6264 (ite c!1158606 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6363935 () Bool)

(declare-fun e!3864192 () Bool)

(assert (=> b!6363935 (= e!3864192 e!3864193)))

(declare-fun res!2618386 () Bool)

(assert (=> b!6363935 (=> (not res!2618386) (not e!3864193))))

(assert (=> b!6363935 (= res!2618386 (and (not ((_ is EmptyLang!16271) (h!71436 (exprs!6155 (h!71437 zl!343))))) (not ((_ is ElementMatch!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6363930 () Bool)

(assert (=> b!6363930 (= e!3864191 call!543097)))

(declare-fun d!1996347 () Bool)

(declare-fun res!2618387 () Bool)

(assert (=> d!1996347 (=> res!2618387 e!3864192)))

(assert (=> d!1996347 (= res!2618387 ((_ is EmptyExpr!16271) (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> d!1996347 (= (nullableFct!2211 (h!71436 (exprs!6155 (h!71437 zl!343)))) e!3864192)))

(assert (= (and d!1996347 (not res!2618387)) b!6363935))

(assert (= (and b!6363935 res!2618386) b!6363929))

(assert (= (and b!6363929 (not res!2618388)) b!6363932))

(assert (= (and b!6363932 c!1158606) b!6363933))

(assert (= (and b!6363932 (not c!1158606)) b!6363931))

(assert (= (and b!6363933 (not res!2618390)) b!6363934))

(assert (= (and b!6363931 res!2618389) b!6363930))

(assert (= (or b!6363934 b!6363930) bm!543093))

(assert (= (or b!6363933 b!6363931) bm!543092))

(declare-fun m!7168614 () Bool)

(assert (=> bm!543092 m!7168614))

(declare-fun m!7168616 () Bool)

(assert (=> bm!543093 m!7168616))

(assert (=> d!1996059 d!1996347))

(assert (=> b!6363286 d!1996093))

(declare-fun d!1996361 () Bool)

(declare-fun c!1158607 () Bool)

(assert (=> d!1996361 (= c!1158607 (isEmpty!37096 (tail!12120 (t!378708 s!2326))))))

(declare-fun e!3864196 () Bool)

(assert (=> d!1996361 (= (matchZipper!2283 (derivationStepZipper!2237 ((_ map or) lt!2367005 lt!2367006) (head!13035 (t!378708 s!2326))) (tail!12120 (t!378708 s!2326))) e!3864196)))

(declare-fun b!6363936 () Bool)

(assert (=> b!6363936 (= e!3864196 (nullableZipper!2037 (derivationStepZipper!2237 ((_ map or) lt!2367005 lt!2367006) (head!13035 (t!378708 s!2326)))))))

(declare-fun b!6363937 () Bool)

(assert (=> b!6363937 (= e!3864196 (matchZipper!2283 (derivationStepZipper!2237 (derivationStepZipper!2237 ((_ map or) lt!2367005 lt!2367006) (head!13035 (t!378708 s!2326))) (head!13035 (tail!12120 (t!378708 s!2326)))) (tail!12120 (tail!12120 (t!378708 s!2326)))))))

(assert (= (and d!1996361 c!1158607) b!6363936))

(assert (= (and d!1996361 (not c!1158607)) b!6363937))

(assert (=> d!1996361 m!7168048))

(assert (=> d!1996361 m!7168352))

(assert (=> b!6363936 m!7168054))

(declare-fun m!7168618 () Bool)

(assert (=> b!6363936 m!7168618))

(assert (=> b!6363937 m!7168048))

(assert (=> b!6363937 m!7168356))

(assert (=> b!6363937 m!7168054))

(assert (=> b!6363937 m!7168356))

(declare-fun m!7168620 () Bool)

(assert (=> b!6363937 m!7168620))

(assert (=> b!6363937 m!7168048))

(assert (=> b!6363937 m!7168360))

(assert (=> b!6363937 m!7168620))

(assert (=> b!6363937 m!7168360))

(declare-fun m!7168622 () Bool)

(assert (=> b!6363937 m!7168622))

(assert (=> b!6363363 d!1996361))

(declare-fun bs!1594513 () Bool)

(declare-fun d!1996365 () Bool)

(assert (= bs!1594513 (and d!1996365 b!6362719)))

(declare-fun lambda!350587 () Int)

(assert (=> bs!1594513 (= (= (head!13035 (t!378708 s!2326)) (h!71438 s!2326)) (= lambda!350587 lambda!350487))))

(declare-fun bs!1594516 () Bool)

(assert (= bs!1594516 (and d!1996365 d!1996247)))

(assert (=> bs!1594516 (= lambda!350587 lambda!350574)))

(declare-fun bs!1594518 () Bool)

(assert (= bs!1594518 (and d!1996365 d!1996339)))

(assert (=> bs!1594518 (= lambda!350587 lambda!350584)))

(assert (=> d!1996365 true))

(assert (=> d!1996365 (= (derivationStepZipper!2237 ((_ map or) lt!2367005 lt!2367006) (head!13035 (t!378708 s!2326))) (flatMap!1776 ((_ map or) lt!2367005 lt!2367006) lambda!350587))))

(declare-fun bs!1594520 () Bool)

(assert (= bs!1594520 d!1996365))

(declare-fun m!7168624 () Bool)

(assert (=> bs!1594520 m!7168624))

(assert (=> b!6363363 d!1996365))

(assert (=> b!6363363 d!1996249))

(assert (=> b!6363363 d!1996251))

(declare-fun d!1996367 () Bool)

(assert (=> d!1996367 (= ($colon$colon!2132 (exprs!6155 lt!2367001) (ite (or c!1158453 c!1158452) (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71436 (exprs!6155 (h!71437 zl!343))))) (Cons!64988 (ite (or c!1158453 c!1158452) (regTwo!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))) (h!71436 (exprs!6155 (h!71437 zl!343)))) (exprs!6155 lt!2367001)))))

(assert (=> bm!542992 d!1996367))

(declare-fun d!1996369 () Bool)

(assert (=> d!1996369 true))

(assert (=> d!1996369 true))

(declare-fun res!2618398 () Bool)

(assert (=> d!1996369 (= (choose!47266 lambda!350485) res!2618398)))

(assert (=> d!1996101 d!1996369))

(declare-fun d!1996377 () Bool)

(assert (=> d!1996377 (= (isEmptyExpr!1673 lt!2367071) ((_ is EmptyExpr!16271) lt!2367071))))

(assert (=> b!6363282 d!1996377))

(declare-fun d!1996379 () Bool)

(assert (=> d!1996379 (= (Exists!3341 (ite c!1158404 lambda!350517 lambda!350518)) (choose!47266 (ite c!1158404 lambda!350517 lambda!350518)))))

(declare-fun bs!1594521 () Bool)

(assert (= bs!1594521 d!1996379))

(declare-fun m!7168648 () Bool)

(assert (=> bs!1594521 m!7168648))

(assert (=> bm!542959 d!1996379))

(declare-fun d!1996381 () Bool)

(assert (=> d!1996381 (= (isEmpty!37096 (t!378708 s!2326)) ((_ is Nil!64990) (t!378708 s!2326)))))

(assert (=> d!1996085 d!1996381))

(declare-fun d!1996383 () Bool)

(assert (=> d!1996383 (= (nullable!6264 r!7292) (nullableFct!2211 r!7292))))

(declare-fun bs!1594522 () Bool)

(assert (= bs!1594522 d!1996383))

(declare-fun m!7168652 () Bool)

(assert (=> bs!1594522 m!7168652))

(assert (=> b!6363171 d!1996383))

(assert (=> b!6362982 d!1996053))

(declare-fun bs!1594523 () Bool)

(declare-fun d!1996385 () Bool)

(assert (= bs!1594523 (and d!1996385 d!1996237)))

(declare-fun lambda!350588 () Int)

(assert (=> bs!1594523 (= lambda!350588 lambda!350571)))

(declare-fun bs!1594524 () Bool)

(assert (= bs!1594524 (and d!1996385 d!1996091)))

(assert (=> bs!1594524 (= lambda!350588 lambda!350536)))

(declare-fun bs!1594525 () Bool)

(assert (= bs!1594525 (and d!1996385 d!1996299)))

(assert (=> bs!1594525 (= lambda!350588 lambda!350579)))

(declare-fun bs!1594526 () Bool)

(assert (= bs!1594526 (and d!1996385 d!1995995)))

(assert (=> bs!1594526 (= lambda!350588 lambda!350512)))

(declare-fun bs!1594527 () Bool)

(assert (= bs!1594527 (and d!1996385 d!1996053)))

(assert (=> bs!1594527 (= lambda!350588 lambda!350531)))

(declare-fun bs!1594528 () Bool)

(assert (= bs!1594528 (and d!1996385 d!1996089)))

(assert (=> bs!1594528 (= lambda!350588 lambda!350535)))

(declare-fun bs!1594529 () Bool)

(assert (= bs!1594529 (and d!1996385 d!1996345)))

(assert (=> bs!1594529 (= lambda!350588 lambda!350585)))

(declare-fun bs!1594530 () Bool)

(assert (= bs!1594530 (and d!1996385 d!1995987)))

(assert (=> bs!1594530 (= lambda!350588 lambda!350505)))

(declare-fun bs!1594531 () Bool)

(assert (= bs!1594531 (and d!1996385 d!1996077)))

(assert (=> bs!1594531 (= lambda!350588 lambda!350534)))

(declare-fun lt!2367119 () List!65112)

(assert (=> d!1996385 (forall!15449 lt!2367119 lambda!350588)))

(declare-fun e!3864211 () List!65112)

(assert (=> d!1996385 (= lt!2367119 e!3864211)))

(declare-fun c!1158617 () Bool)

(assert (=> d!1996385 (= c!1158617 ((_ is Cons!64989) (t!378707 zl!343)))))

(assert (=> d!1996385 (= (unfocusZipperList!1692 (t!378707 zl!343)) lt!2367119)))

(declare-fun b!6363961 () Bool)

(assert (=> b!6363961 (= e!3864211 (Cons!64988 (generalisedConcat!1868 (exprs!6155 (h!71437 (t!378707 zl!343)))) (unfocusZipperList!1692 (t!378707 (t!378707 zl!343)))))))

(declare-fun b!6363962 () Bool)

(assert (=> b!6363962 (= e!3864211 Nil!64988)))

(assert (= (and d!1996385 c!1158617) b!6363961))

(assert (= (and d!1996385 (not c!1158617)) b!6363962))

(declare-fun m!7168662 () Bool)

(assert (=> d!1996385 m!7168662))

(declare-fun m!7168664 () Bool)

(assert (=> b!6363961 m!7168664))

(declare-fun m!7168666 () Bool)

(assert (=> b!6363961 m!7168666))

(assert (=> b!6362982 d!1996385))

(declare-fun d!1996389 () Bool)

(assert (=> d!1996389 true))

(declare-fun setRes!43360 () Bool)

(assert (=> d!1996389 setRes!43360))

(declare-fun condSetEmpty!43360 () Bool)

(declare-fun res!2618410 () (InoxSet Context!11310))

(assert (=> d!1996389 (= condSetEmpty!43360 (= res!2618410 ((as const (Array Context!11310 Bool)) false)))))

(assert (=> d!1996389 (= (choose!47263 z!1189 lambda!350487) res!2618410)))

(declare-fun setIsEmpty!43360 () Bool)

(assert (=> setIsEmpty!43360 setRes!43360))

(declare-fun setElem!43360 () Context!11310)

(declare-fun tp!1772018 () Bool)

(declare-fun e!3864227 () Bool)

(declare-fun setNonEmpty!43360 () Bool)

(assert (=> setNonEmpty!43360 (= setRes!43360 (and tp!1772018 (inv!83924 setElem!43360) e!3864227))))

(declare-fun setRest!43360 () (InoxSet Context!11310))

(assert (=> setNonEmpty!43360 (= res!2618410 ((_ map or) (store ((as const (Array Context!11310 Bool)) false) setElem!43360 true) setRest!43360))))

(declare-fun b!6363990 () Bool)

(declare-fun tp!1772017 () Bool)

(assert (=> b!6363990 (= e!3864227 tp!1772017)))

(assert (= (and d!1996389 condSetEmpty!43360) setIsEmpty!43360))

(assert (= (and d!1996389 (not condSetEmpty!43360)) setNonEmpty!43360))

(assert (= setNonEmpty!43360 b!6363990))

(declare-fun m!7168692 () Bool)

(assert (=> setNonEmpty!43360 m!7168692))

(assert (=> d!1996067 d!1996389))

(declare-fun d!1996395 () Bool)

(assert (=> d!1996395 (= (head!13034 (unfocusZipperList!1692 zl!343)) (h!71436 (unfocusZipperList!1692 zl!343)))))

(assert (=> b!6362955 d!1996395))

(assert (=> b!6363343 d!1996059))

(declare-fun b!6363991 () Bool)

(declare-fun e!3864229 () (InoxSet Context!11310))

(assert (=> b!6363991 (= e!3864229 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6363992 () Bool)

(declare-fun e!3864228 () (InoxSet Context!11310))

(declare-fun call!543115 () (InoxSet Context!11310))

(declare-fun call!543114 () (InoxSet Context!11310))

(assert (=> b!6363992 (= e!3864228 ((_ map or) call!543115 call!543114))))

(declare-fun b!6363993 () Bool)

(declare-fun e!3864230 () (InoxSet Context!11310))

(assert (=> b!6363993 (= e!3864230 e!3864228)))

(declare-fun c!1158628 () Bool)

(assert (=> b!6363993 (= c!1158628 ((_ is Union!16271) (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun bm!543107 () Bool)

(declare-fun call!543116 () (InoxSet Context!11310))

(declare-fun call!543112 () (InoxSet Context!11310))

(assert (=> bm!543107 (= call!543116 call!543112)))

(declare-fun b!6363994 () Bool)

(declare-fun c!1158627 () Bool)

(declare-fun e!3864232 () Bool)

(assert (=> b!6363994 (= c!1158627 e!3864232)))

(declare-fun res!2618411 () Bool)

(assert (=> b!6363994 (=> (not res!2618411) (not e!3864232))))

(assert (=> b!6363994 (= res!2618411 ((_ is Concat!25116) (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun e!3864231 () (InoxSet Context!11310))

(assert (=> b!6363994 (= e!3864228 e!3864231)))

(declare-fun d!1996397 () Bool)

(declare-fun c!1158629 () Bool)

(assert (=> d!1996397 (= c!1158629 (and ((_ is ElementMatch!16271) (h!71436 (exprs!6155 lt!2367010))) (= (c!1158284 (h!71436 (exprs!6155 lt!2367010))) (h!71438 s!2326))))))

(assert (=> d!1996397 (= (derivationStepZipperDown!1519 (h!71436 (exprs!6155 lt!2367010)) (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (h!71438 s!2326)) e!3864230)))

(declare-fun c!1158626 () Bool)

(declare-fun bm!543108 () Bool)

(declare-fun call!543117 () List!65112)

(assert (=> bm!543108 (= call!543115 (derivationStepZipperDown!1519 (ite c!1158628 (regOne!33055 (h!71436 (exprs!6155 lt!2367010))) (ite c!1158627 (regTwo!33054 (h!71436 (exprs!6155 lt!2367010))) (ite c!1158626 (regOne!33054 (h!71436 (exprs!6155 lt!2367010))) (reg!16600 (h!71436 (exprs!6155 lt!2367010)))))) (ite (or c!1158628 c!1158627) (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (Context!11311 call!543117)) (h!71438 s!2326)))))

(declare-fun b!6363995 () Bool)

(assert (=> b!6363995 (= e!3864230 (store ((as const (Array Context!11310 Bool)) false) (Context!11311 (t!378706 (exprs!6155 lt!2367010))) true))))

(declare-fun bm!543109 () Bool)

(assert (=> bm!543109 (= call!543112 call!543115)))

(declare-fun bm!543110 () Bool)

(declare-fun call!543113 () List!65112)

(assert (=> bm!543110 (= call!543114 (derivationStepZipperDown!1519 (ite c!1158628 (regTwo!33055 (h!71436 (exprs!6155 lt!2367010))) (regOne!33054 (h!71436 (exprs!6155 lt!2367010)))) (ite c!1158628 (Context!11311 (t!378706 (exprs!6155 lt!2367010))) (Context!11311 call!543113)) (h!71438 s!2326)))))

(declare-fun b!6363996 () Bool)

(declare-fun e!3864233 () (InoxSet Context!11310))

(assert (=> b!6363996 (= e!3864233 call!543116)))

(declare-fun bm!543111 () Bool)

(assert (=> bm!543111 (= call!543117 call!543113)))

(declare-fun b!6363997 () Bool)

(assert (=> b!6363997 (= e!3864232 (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 lt!2367010)))))))

(declare-fun b!6363998 () Bool)

(assert (=> b!6363998 (= e!3864229 call!543116)))

(declare-fun b!6363999 () Bool)

(declare-fun c!1158630 () Bool)

(assert (=> b!6363999 (= c!1158630 ((_ is Star!16271) (h!71436 (exprs!6155 lt!2367010))))))

(assert (=> b!6363999 (= e!3864233 e!3864229)))

(declare-fun bm!543112 () Bool)

(assert (=> bm!543112 (= call!543113 ($colon$colon!2132 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367010)))) (ite (or c!1158627 c!1158626) (regTwo!33054 (h!71436 (exprs!6155 lt!2367010))) (h!71436 (exprs!6155 lt!2367010)))))))

(declare-fun b!6364000 () Bool)

(assert (=> b!6364000 (= e!3864231 e!3864233)))

(assert (=> b!6364000 (= c!1158626 ((_ is Concat!25116) (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun b!6364001 () Bool)

(assert (=> b!6364001 (= e!3864231 ((_ map or) call!543114 call!543112))))

(assert (= (and d!1996397 c!1158629) b!6363995))

(assert (= (and d!1996397 (not c!1158629)) b!6363993))

(assert (= (and b!6363993 c!1158628) b!6363992))

(assert (= (and b!6363993 (not c!1158628)) b!6363994))

(assert (= (and b!6363994 res!2618411) b!6363997))

(assert (= (and b!6363994 c!1158627) b!6364001))

(assert (= (and b!6363994 (not c!1158627)) b!6364000))

(assert (= (and b!6364000 c!1158626) b!6363996))

(assert (= (and b!6364000 (not c!1158626)) b!6363999))

(assert (= (and b!6363999 c!1158630) b!6363998))

(assert (= (and b!6363999 (not c!1158630)) b!6363991))

(assert (= (or b!6363996 b!6363998) bm!543111))

(assert (= (or b!6363996 b!6363998) bm!543107))

(assert (= (or b!6364001 bm!543111) bm!543112))

(assert (= (or b!6364001 bm!543107) bm!543109))

(assert (= (or b!6363992 b!6364001) bm!543110))

(assert (= (or b!6363992 bm!543109) bm!543108))

(declare-fun m!7168694 () Bool)

(assert (=> bm!543108 m!7168694))

(declare-fun m!7168696 () Bool)

(assert (=> b!6363995 m!7168696))

(declare-fun m!7168698 () Bool)

(assert (=> bm!543112 m!7168698))

(declare-fun m!7168700 () Bool)

(assert (=> b!6363997 m!7168700))

(declare-fun m!7168702 () Bool)

(assert (=> bm!543110 m!7168702))

(assert (=> bm!542995 d!1996397))

(declare-fun b!6364002 () Bool)

(declare-fun e!3864235 () (InoxSet Context!11310))

(assert (=> b!6364002 (= e!3864235 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6364003 () Bool)

(declare-fun e!3864234 () (InoxSet Context!11310))

(declare-fun call!543121 () (InoxSet Context!11310))

(declare-fun call!543120 () (InoxSet Context!11310))

(assert (=> b!6364003 (= e!3864234 ((_ map or) call!543121 call!543120))))

(declare-fun b!6364004 () Bool)

(declare-fun e!3864236 () (InoxSet Context!11310))

(assert (=> b!6364004 (= e!3864236 e!3864234)))

(declare-fun c!1158633 () Bool)

(assert (=> b!6364004 (= c!1158633 ((_ is Union!16271) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun bm!543113 () Bool)

(declare-fun call!543122 () (InoxSet Context!11310))

(declare-fun call!543118 () (InoxSet Context!11310))

(assert (=> bm!543113 (= call!543122 call!543118)))

(declare-fun b!6364005 () Bool)

(declare-fun c!1158632 () Bool)

(declare-fun e!3864238 () Bool)

(assert (=> b!6364005 (= c!1158632 e!3864238)))

(declare-fun res!2618412 () Bool)

(assert (=> b!6364005 (=> (not res!2618412) (not e!3864238))))

(assert (=> b!6364005 (= res!2618412 ((_ is Concat!25116) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun e!3864237 () (InoxSet Context!11310))

(assert (=> b!6364005 (= e!3864234 e!3864237)))

(declare-fun c!1158634 () Bool)

(declare-fun d!1996399 () Bool)

(assert (=> d!1996399 (= c!1158634 (and ((_ is ElementMatch!16271) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (= (c!1158284 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (h!71438 s!2326))))))

(assert (=> d!1996399 (= (derivationStepZipperDown!1519 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))) (ite c!1158454 lt!2367001 (Context!11311 call!542993)) (h!71438 s!2326)) e!3864236)))

(declare-fun bm!543114 () Bool)

(declare-fun call!543123 () List!65112)

(declare-fun c!1158631 () Bool)

(assert (=> bm!543114 (= call!543121 (derivationStepZipperDown!1519 (ite c!1158633 (regOne!33055 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (ite c!1158632 (regTwo!33054 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (ite c!1158631 (regOne!33054 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (reg!16600 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))) (ite (or c!1158633 c!1158632) (ite c!1158454 lt!2367001 (Context!11311 call!542993)) (Context!11311 call!543123)) (h!71438 s!2326)))))

(declare-fun b!6364006 () Bool)

(assert (=> b!6364006 (= e!3864236 (store ((as const (Array Context!11310 Bool)) false) (ite c!1158454 lt!2367001 (Context!11311 call!542993)) true))))

(declare-fun bm!543115 () Bool)

(assert (=> bm!543115 (= call!543118 call!543121)))

(declare-fun bm!543116 () Bool)

(declare-fun call!543119 () List!65112)

(assert (=> bm!543116 (= call!543120 (derivationStepZipperDown!1519 (ite c!1158633 (regTwo!33055 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (regOne!33054 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))) (ite c!1158633 (ite c!1158454 lt!2367001 (Context!11311 call!542993)) (Context!11311 call!543119)) (h!71438 s!2326)))))

(declare-fun b!6364007 () Bool)

(declare-fun e!3864239 () (InoxSet Context!11310))

(assert (=> b!6364007 (= e!3864239 call!543122)))

(declare-fun bm!543117 () Bool)

(assert (=> bm!543117 (= call!543123 call!543119)))

(declare-fun b!6364008 () Bool)

(assert (=> b!6364008 (= e!3864238 (nullable!6264 (regOne!33054 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))))

(declare-fun b!6364009 () Bool)

(assert (=> b!6364009 (= e!3864235 call!543122)))

(declare-fun b!6364010 () Bool)

(declare-fun c!1158635 () Bool)

(assert (=> b!6364010 (= c!1158635 ((_ is Star!16271) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(assert (=> b!6364010 (= e!3864239 e!3864235)))

(declare-fun bm!543118 () Bool)

(assert (=> bm!543118 (= call!543119 ($colon$colon!2132 (exprs!6155 (ite c!1158454 lt!2367001 (Context!11311 call!542993))) (ite (or c!1158632 c!1158631) (regTwo!33054 (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343))))))))))

(declare-fun b!6364011 () Bool)

(assert (=> b!6364011 (= e!3864237 e!3864239)))

(assert (=> b!6364011 (= c!1158631 ((_ is Concat!25116) (ite c!1158454 (regTwo!33055 (h!71436 (exprs!6155 (h!71437 zl!343)))) (regOne!33054 (h!71436 (exprs!6155 (h!71437 zl!343)))))))))

(declare-fun b!6364012 () Bool)

(assert (=> b!6364012 (= e!3864237 ((_ map or) call!543120 call!543118))))

(assert (= (and d!1996399 c!1158634) b!6364006))

(assert (= (and d!1996399 (not c!1158634)) b!6364004))

(assert (= (and b!6364004 c!1158633) b!6364003))

(assert (= (and b!6364004 (not c!1158633)) b!6364005))

(assert (= (and b!6364005 res!2618412) b!6364008))

(assert (= (and b!6364005 c!1158632) b!6364012))

(assert (= (and b!6364005 (not c!1158632)) b!6364011))

(assert (= (and b!6364011 c!1158631) b!6364007))

(assert (= (and b!6364011 (not c!1158631)) b!6364010))

(assert (= (and b!6364010 c!1158635) b!6364009))

(assert (= (and b!6364010 (not c!1158635)) b!6364002))

(assert (= (or b!6364007 b!6364009) bm!543117))

(assert (= (or b!6364007 b!6364009) bm!543113))

(assert (= (or b!6364012 bm!543117) bm!543118))

(assert (= (or b!6364012 bm!543113) bm!543115))

(assert (= (or b!6364003 b!6364012) bm!543116))

(assert (= (or b!6364003 bm!543115) bm!543114))

(declare-fun m!7168704 () Bool)

(assert (=> bm!543114 m!7168704))

(declare-fun m!7168706 () Bool)

(assert (=> b!6364006 m!7168706))

(declare-fun m!7168708 () Bool)

(assert (=> bm!543118 m!7168708))

(declare-fun m!7168710 () Bool)

(assert (=> b!6364008 m!7168710))

(declare-fun m!7168712 () Bool)

(assert (=> bm!543116 m!7168712))

(assert (=> bm!542990 d!1996399))

(declare-fun d!1996401 () Bool)

(assert (=> d!1996401 (= ($colon$colon!2132 (exprs!6155 (Context!11311 lt!2367014)) (ite (or c!1158468 c!1158467) (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (regOne!33054 r!7292)))) (Cons!64988 (ite (or c!1158468 c!1158467) (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (regOne!33054 r!7292))) (exprs!6155 (Context!11311 lt!2367014))))))

(assert (=> bm!543001 d!1996401))

(declare-fun b!6364014 () Bool)

(declare-fun e!3864241 () Bool)

(assert (=> b!6364014 (= e!3864241 (= (head!13035 (tail!12120 s!2326)) (c!1158284 (derivativeStep!4976 r!7292 (head!13035 s!2326)))))))

(declare-fun b!6364015 () Bool)

(declare-fun e!3864244 () Bool)

(declare-fun e!3864240 () Bool)

(assert (=> b!6364015 (= e!3864244 e!3864240)))

(declare-fun res!2618420 () Bool)

(assert (=> b!6364015 (=> (not res!2618420) (not e!3864240))))

(declare-fun lt!2367121 () Bool)

(assert (=> b!6364015 (= res!2618420 (not lt!2367121))))

(declare-fun b!6364016 () Bool)

(declare-fun e!3864245 () Bool)

(assert (=> b!6364016 (= e!3864245 (not lt!2367121))))

(declare-fun b!6364017 () Bool)

(declare-fun res!2618418 () Bool)

(declare-fun e!3864243 () Bool)

(assert (=> b!6364017 (=> res!2618418 e!3864243)))

(assert (=> b!6364017 (= res!2618418 (not (isEmpty!37096 (tail!12120 (tail!12120 s!2326)))))))

(declare-fun b!6364018 () Bool)

(declare-fun res!2618415 () Bool)

(assert (=> b!6364018 (=> res!2618415 e!3864244)))

(assert (=> b!6364018 (= res!2618415 e!3864241)))

(declare-fun res!2618413 () Bool)

(assert (=> b!6364018 (=> (not res!2618413) (not e!3864241))))

(assert (=> b!6364018 (= res!2618413 lt!2367121)))

(declare-fun b!6364019 () Bool)

(declare-fun res!2618419 () Bool)

(assert (=> b!6364019 (=> (not res!2618419) (not e!3864241))))

(assert (=> b!6364019 (= res!2618419 (isEmpty!37096 (tail!12120 (tail!12120 s!2326))))))

(declare-fun b!6364020 () Bool)

(declare-fun e!3864242 () Bool)

(assert (=> b!6364020 (= e!3864242 (matchR!8454 (derivativeStep!4976 (derivativeStep!4976 r!7292 (head!13035 s!2326)) (head!13035 (tail!12120 s!2326))) (tail!12120 (tail!12120 s!2326))))))

(declare-fun b!6364021 () Bool)

(declare-fun res!2618416 () Bool)

(assert (=> b!6364021 (=> res!2618416 e!3864244)))

(assert (=> b!6364021 (= res!2618416 (not ((_ is ElementMatch!16271) (derivativeStep!4976 r!7292 (head!13035 s!2326)))))))

(assert (=> b!6364021 (= e!3864245 e!3864244)))

(declare-fun d!1996403 () Bool)

(declare-fun e!3864246 () Bool)

(assert (=> d!1996403 e!3864246))

(declare-fun c!1158636 () Bool)

(assert (=> d!1996403 (= c!1158636 ((_ is EmptyExpr!16271) (derivativeStep!4976 r!7292 (head!13035 s!2326))))))

(assert (=> d!1996403 (= lt!2367121 e!3864242)))

(declare-fun c!1158638 () Bool)

(assert (=> d!1996403 (= c!1158638 (isEmpty!37096 (tail!12120 s!2326)))))

(assert (=> d!1996403 (validRegex!8007 (derivativeStep!4976 r!7292 (head!13035 s!2326)))))

(assert (=> d!1996403 (= (matchR!8454 (derivativeStep!4976 r!7292 (head!13035 s!2326)) (tail!12120 s!2326)) lt!2367121)))

(declare-fun b!6364013 () Bool)

(assert (=> b!6364013 (= e!3864243 (not (= (head!13035 (tail!12120 s!2326)) (c!1158284 (derivativeStep!4976 r!7292 (head!13035 s!2326))))))))

(declare-fun b!6364022 () Bool)

(assert (=> b!6364022 (= e!3864242 (nullable!6264 (derivativeStep!4976 r!7292 (head!13035 s!2326))))))

(declare-fun b!6364023 () Bool)

(assert (=> b!6364023 (= e!3864246 e!3864245)))

(declare-fun c!1158637 () Bool)

(assert (=> b!6364023 (= c!1158637 ((_ is EmptyLang!16271) (derivativeStep!4976 r!7292 (head!13035 s!2326))))))

(declare-fun b!6364024 () Bool)

(declare-fun call!543124 () Bool)

(assert (=> b!6364024 (= e!3864246 (= lt!2367121 call!543124))))

(declare-fun bm!543119 () Bool)

(assert (=> bm!543119 (= call!543124 (isEmpty!37096 (tail!12120 s!2326)))))

(declare-fun b!6364025 () Bool)

(assert (=> b!6364025 (= e!3864240 e!3864243)))

(declare-fun res!2618414 () Bool)

(assert (=> b!6364025 (=> res!2618414 e!3864243)))

(assert (=> b!6364025 (= res!2618414 call!543124)))

(declare-fun b!6364026 () Bool)

(declare-fun res!2618417 () Bool)

(assert (=> b!6364026 (=> (not res!2618417) (not e!3864241))))

(assert (=> b!6364026 (= res!2618417 (not call!543124))))

(assert (= (and d!1996403 c!1158638) b!6364022))

(assert (= (and d!1996403 (not c!1158638)) b!6364020))

(assert (= (and d!1996403 c!1158636) b!6364024))

(assert (= (and d!1996403 (not c!1158636)) b!6364023))

(assert (= (and b!6364023 c!1158637) b!6364016))

(assert (= (and b!6364023 (not c!1158637)) b!6364021))

(assert (= (and b!6364021 (not res!2618416)) b!6364018))

(assert (= (and b!6364018 res!2618413) b!6364026))

(assert (= (and b!6364026 res!2618417) b!6364019))

(assert (= (and b!6364019 res!2618419) b!6364014))

(assert (= (and b!6364018 (not res!2618415)) b!6364015))

(assert (= (and b!6364015 res!2618420) b!6364025))

(assert (= (and b!6364025 (not res!2618414)) b!6364017))

(assert (= (and b!6364017 (not res!2618418)) b!6364013))

(assert (= (or b!6364024 b!6364025 b!6364026) bm!543119))

(assert (=> b!6364022 m!7167948))

(declare-fun m!7168714 () Bool)

(assert (=> b!6364022 m!7168714))

(assert (=> bm!543119 m!7167950))

(assert (=> bm!543119 m!7167954))

(assert (=> d!1996403 m!7167950))

(assert (=> d!1996403 m!7167954))

(assert (=> d!1996403 m!7167948))

(declare-fun m!7168716 () Bool)

(assert (=> d!1996403 m!7168716))

(assert (=> b!6364014 m!7167950))

(declare-fun m!7168718 () Bool)

(assert (=> b!6364014 m!7168718))

(assert (=> b!6364013 m!7167950))

(assert (=> b!6364013 m!7168718))

(assert (=> b!6364020 m!7167950))

(assert (=> b!6364020 m!7168718))

(assert (=> b!6364020 m!7167948))

(assert (=> b!6364020 m!7168718))

(declare-fun m!7168720 () Bool)

(assert (=> b!6364020 m!7168720))

(assert (=> b!6364020 m!7167950))

(declare-fun m!7168722 () Bool)

(assert (=> b!6364020 m!7168722))

(assert (=> b!6364020 m!7168720))

(assert (=> b!6364020 m!7168722))

(declare-fun m!7168724 () Bool)

(assert (=> b!6364020 m!7168724))

(assert (=> b!6364019 m!7167950))

(assert (=> b!6364019 m!7168722))

(assert (=> b!6364019 m!7168722))

(declare-fun m!7168726 () Bool)

(assert (=> b!6364019 m!7168726))

(assert (=> b!6364017 m!7167950))

(assert (=> b!6364017 m!7168722))

(assert (=> b!6364017 m!7168722))

(assert (=> b!6364017 m!7168726))

(assert (=> b!6363169 d!1996403))

(declare-fun b!6364104 () Bool)

(declare-fun e!3864288 () Regex!16271)

(assert (=> b!6364104 (= e!3864288 EmptyLang!16271)))

(declare-fun b!6364105 () Bool)

(declare-fun c!1158676 () Bool)

(assert (=> b!6364105 (= c!1158676 (nullable!6264 (regOne!33054 r!7292)))))

(declare-fun e!3864290 () Regex!16271)

(declare-fun e!3864287 () Regex!16271)

(assert (=> b!6364105 (= e!3864290 e!3864287)))

(declare-fun call!543153 () Regex!16271)

(declare-fun c!1158674 () Bool)

(declare-fun bm!543147 () Bool)

(assert (=> bm!543147 (= call!543153 (derivativeStep!4976 (ite c!1158674 (regOne!33055 r!7292) (regOne!33054 r!7292)) (head!13035 s!2326)))))

(declare-fun bm!543148 () Bool)

(declare-fun call!543152 () Regex!16271)

(declare-fun call!543155 () Regex!16271)

(assert (=> bm!543148 (= call!543152 call!543155)))

(declare-fun b!6364106 () Bool)

(assert (=> b!6364106 (= e!3864287 (Union!16271 (Concat!25116 call!543153 (regTwo!33054 r!7292)) call!543152))))

(declare-fun b!6364107 () Bool)

(declare-fun e!3864286 () Regex!16271)

(declare-fun call!543154 () Regex!16271)

(assert (=> b!6364107 (= e!3864286 (Union!16271 call!543153 call!543154))))

(declare-fun b!6364108 () Bool)

(assert (=> b!6364108 (= c!1158674 ((_ is Union!16271) r!7292))))

(declare-fun e!3864289 () Regex!16271)

(assert (=> b!6364108 (= e!3864289 e!3864286)))

(declare-fun bm!543150 () Bool)

(assert (=> bm!543150 (= call!543155 call!543154)))

(declare-fun b!6364109 () Bool)

(assert (=> b!6364109 (= e!3864286 e!3864290)))

(declare-fun c!1158673 () Bool)

(assert (=> b!6364109 (= c!1158673 ((_ is Star!16271) r!7292))))

(declare-fun b!6364110 () Bool)

(assert (=> b!6364110 (= e!3864289 (ite (= (head!13035 s!2326) (c!1158284 r!7292)) EmptyExpr!16271 EmptyLang!16271))))

(declare-fun b!6364111 () Bool)

(assert (=> b!6364111 (= e!3864290 (Concat!25116 call!543155 r!7292))))

(declare-fun b!6364112 () Bool)

(assert (=> b!6364112 (= e!3864287 (Union!16271 (Concat!25116 call!543152 (regTwo!33054 r!7292)) EmptyLang!16271))))

(declare-fun b!6364113 () Bool)

(assert (=> b!6364113 (= e!3864288 e!3864289)))

(declare-fun c!1158677 () Bool)

(assert (=> b!6364113 (= c!1158677 ((_ is ElementMatch!16271) r!7292))))

(declare-fun bm!543149 () Bool)

(assert (=> bm!543149 (= call!543154 (derivativeStep!4976 (ite c!1158674 (regTwo!33055 r!7292) (ite c!1158673 (reg!16600 r!7292) (ite c!1158676 (regTwo!33054 r!7292) (regOne!33054 r!7292)))) (head!13035 s!2326)))))

(declare-fun d!1996405 () Bool)

(declare-fun lt!2367128 () Regex!16271)

(assert (=> d!1996405 (validRegex!8007 lt!2367128)))

(assert (=> d!1996405 (= lt!2367128 e!3864288)))

(declare-fun c!1158675 () Bool)

(assert (=> d!1996405 (= c!1158675 (or ((_ is EmptyExpr!16271) r!7292) ((_ is EmptyLang!16271) r!7292)))))

(assert (=> d!1996405 (validRegex!8007 r!7292)))

(assert (=> d!1996405 (= (derivativeStep!4976 r!7292 (head!13035 s!2326)) lt!2367128)))

(assert (= (and d!1996405 c!1158675) b!6364104))

(assert (= (and d!1996405 (not c!1158675)) b!6364113))

(assert (= (and b!6364113 c!1158677) b!6364110))

(assert (= (and b!6364113 (not c!1158677)) b!6364108))

(assert (= (and b!6364108 c!1158674) b!6364107))

(assert (= (and b!6364108 (not c!1158674)) b!6364109))

(assert (= (and b!6364109 c!1158673) b!6364111))

(assert (= (and b!6364109 (not c!1158673)) b!6364105))

(assert (= (and b!6364105 c!1158676) b!6364106))

(assert (= (and b!6364105 (not c!1158676)) b!6364112))

(assert (= (or b!6364106 b!6364112) bm!543148))

(assert (= (or b!6364111 bm!543148) bm!543150))

(assert (= (or b!6364107 bm!543150) bm!543149))

(assert (= (or b!6364107 b!6364106) bm!543147))

(assert (=> b!6364105 m!7168250))

(assert (=> bm!543147 m!7167946))

(declare-fun m!7168766 () Bool)

(assert (=> bm!543147 m!7168766))

(assert (=> bm!543149 m!7167946))

(declare-fun m!7168768 () Bool)

(assert (=> bm!543149 m!7168768))

(declare-fun m!7168770 () Bool)

(assert (=> d!1996405 m!7168770))

(assert (=> d!1996405 m!7167672))

(assert (=> b!6363169 d!1996405))

(assert (=> b!6363169 d!1996283))

(assert (=> b!6363169 d!1996221))

(assert (=> b!6363402 d!1996189))

(declare-fun d!1996419 () Bool)

(assert (=> d!1996419 (= (isEmpty!37094 (unfocusZipperList!1692 zl!343)) ((_ is Nil!64988) (unfocusZipperList!1692 zl!343)))))

(assert (=> b!6362953 d!1996419))

(declare-fun b!6364122 () Bool)

(declare-fun e!3864298 () Bool)

(assert (=> b!6364122 (= e!3864298 (= (head!13035 (_2!36553 (get!22491 lt!2367091))) (c!1158284 (regTwo!33054 r!7292))))))

(declare-fun b!6364123 () Bool)

(declare-fun e!3864301 () Bool)

(declare-fun e!3864297 () Bool)

(assert (=> b!6364123 (= e!3864301 e!3864297)))

(declare-fun res!2618442 () Bool)

(assert (=> b!6364123 (=> (not res!2618442) (not e!3864297))))

(declare-fun lt!2367129 () Bool)

(assert (=> b!6364123 (= res!2618442 (not lt!2367129))))

(declare-fun b!6364124 () Bool)

(declare-fun e!3864302 () Bool)

(assert (=> b!6364124 (= e!3864302 (not lt!2367129))))

(declare-fun b!6364125 () Bool)

(declare-fun res!2618440 () Bool)

(declare-fun e!3864300 () Bool)

(assert (=> b!6364125 (=> res!2618440 e!3864300)))

(assert (=> b!6364125 (= res!2618440 (not (isEmpty!37096 (tail!12120 (_2!36553 (get!22491 lt!2367091))))))))

(declare-fun b!6364126 () Bool)

(declare-fun res!2618437 () Bool)

(assert (=> b!6364126 (=> res!2618437 e!3864301)))

(assert (=> b!6364126 (= res!2618437 e!3864298)))

(declare-fun res!2618435 () Bool)

(assert (=> b!6364126 (=> (not res!2618435) (not e!3864298))))

(assert (=> b!6364126 (= res!2618435 lt!2367129)))

(declare-fun b!6364127 () Bool)

(declare-fun res!2618441 () Bool)

(assert (=> b!6364127 (=> (not res!2618441) (not e!3864298))))

(assert (=> b!6364127 (= res!2618441 (isEmpty!37096 (tail!12120 (_2!36553 (get!22491 lt!2367091)))))))

(declare-fun b!6364128 () Bool)

(declare-fun e!3864299 () Bool)

(assert (=> b!6364128 (= e!3864299 (matchR!8454 (derivativeStep!4976 (regTwo!33054 r!7292) (head!13035 (_2!36553 (get!22491 lt!2367091)))) (tail!12120 (_2!36553 (get!22491 lt!2367091)))))))

(declare-fun b!6364129 () Bool)

(declare-fun res!2618438 () Bool)

(assert (=> b!6364129 (=> res!2618438 e!3864301)))

(assert (=> b!6364129 (= res!2618438 (not ((_ is ElementMatch!16271) (regTwo!33054 r!7292))))))

(assert (=> b!6364129 (= e!3864302 e!3864301)))

(declare-fun d!1996421 () Bool)

(declare-fun e!3864303 () Bool)

(assert (=> d!1996421 e!3864303))

(declare-fun c!1158679 () Bool)

(assert (=> d!1996421 (= c!1158679 ((_ is EmptyExpr!16271) (regTwo!33054 r!7292)))))

(assert (=> d!1996421 (= lt!2367129 e!3864299)))

(declare-fun c!1158681 () Bool)

(assert (=> d!1996421 (= c!1158681 (isEmpty!37096 (_2!36553 (get!22491 lt!2367091))))))

(assert (=> d!1996421 (validRegex!8007 (regTwo!33054 r!7292))))

(assert (=> d!1996421 (= (matchR!8454 (regTwo!33054 r!7292) (_2!36553 (get!22491 lt!2367091))) lt!2367129)))

(declare-fun b!6364121 () Bool)

(assert (=> b!6364121 (= e!3864300 (not (= (head!13035 (_2!36553 (get!22491 lt!2367091))) (c!1158284 (regTwo!33054 r!7292)))))))

(declare-fun b!6364130 () Bool)

(assert (=> b!6364130 (= e!3864299 (nullable!6264 (regTwo!33054 r!7292)))))

(declare-fun b!6364131 () Bool)

(assert (=> b!6364131 (= e!3864303 e!3864302)))

(declare-fun c!1158680 () Bool)

(assert (=> b!6364131 (= c!1158680 ((_ is EmptyLang!16271) (regTwo!33054 r!7292)))))

(declare-fun b!6364132 () Bool)

(declare-fun call!543158 () Bool)

(assert (=> b!6364132 (= e!3864303 (= lt!2367129 call!543158))))

(declare-fun bm!543153 () Bool)

(assert (=> bm!543153 (= call!543158 (isEmpty!37096 (_2!36553 (get!22491 lt!2367091))))))

(declare-fun b!6364133 () Bool)

(assert (=> b!6364133 (= e!3864297 e!3864300)))

(declare-fun res!2618436 () Bool)

(assert (=> b!6364133 (=> res!2618436 e!3864300)))

(assert (=> b!6364133 (= res!2618436 call!543158)))

(declare-fun b!6364134 () Bool)

(declare-fun res!2618439 () Bool)

(assert (=> b!6364134 (=> (not res!2618439) (not e!3864298))))

(assert (=> b!6364134 (= res!2618439 (not call!543158))))

(assert (= (and d!1996421 c!1158681) b!6364130))

(assert (= (and d!1996421 (not c!1158681)) b!6364128))

(assert (= (and d!1996421 c!1158679) b!6364132))

(assert (= (and d!1996421 (not c!1158679)) b!6364131))

(assert (= (and b!6364131 c!1158680) b!6364124))

(assert (= (and b!6364131 (not c!1158680)) b!6364129))

(assert (= (and b!6364129 (not res!2618438)) b!6364126))

(assert (= (and b!6364126 res!2618435) b!6364134))

(assert (= (and b!6364134 res!2618439) b!6364127))

(assert (= (and b!6364127 res!2618441) b!6364122))

(assert (= (and b!6364126 (not res!2618437)) b!6364123))

(assert (= (and b!6364123 res!2618442) b!6364133))

(assert (= (and b!6364133 (not res!2618436)) b!6364125))

(assert (= (and b!6364125 (not res!2618440)) b!6364121))

(assert (= (or b!6364132 b!6364133 b!6364134) bm!543153))

(assert (=> b!6364130 m!7168310))

(declare-fun m!7168776 () Bool)

(assert (=> bm!543153 m!7168776))

(assert (=> d!1996421 m!7168776))

(assert (=> d!1996421 m!7168312))

(declare-fun m!7168778 () Bool)

(assert (=> b!6364122 m!7168778))

(assert (=> b!6364121 m!7168778))

(assert (=> b!6364128 m!7168778))

(assert (=> b!6364128 m!7168778))

(declare-fun m!7168782 () Bool)

(assert (=> b!6364128 m!7168782))

(declare-fun m!7168786 () Bool)

(assert (=> b!6364128 m!7168786))

(assert (=> b!6364128 m!7168782))

(assert (=> b!6364128 m!7168786))

(declare-fun m!7168790 () Bool)

(assert (=> b!6364128 m!7168790))

(assert (=> b!6364127 m!7168786))

(assert (=> b!6364127 m!7168786))

(declare-fun m!7168792 () Bool)

(assert (=> b!6364127 m!7168792))

(assert (=> b!6364125 m!7168786))

(assert (=> b!6364125 m!7168786))

(assert (=> b!6364125 m!7168792))

(assert (=> b!6363398 d!1996421))

(declare-fun d!1996429 () Bool)

(assert (=> d!1996429 (= (get!22491 lt!2367091) (v!52330 lt!2367091))))

(assert (=> b!6363398 d!1996429))

(declare-fun b!6364144 () Bool)

(declare-fun e!3864314 () Bool)

(declare-fun e!3864316 () Bool)

(assert (=> b!6364144 (= e!3864314 e!3864316)))

(declare-fun res!2618451 () Bool)

(assert (=> b!6364144 (= res!2618451 (not (nullable!6264 (reg!16600 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))))

(assert (=> b!6364144 (=> (not res!2618451) (not e!3864316))))

(declare-fun b!6364145 () Bool)

(declare-fun e!3864317 () Bool)

(declare-fun call!543163 () Bool)

(assert (=> b!6364145 (= e!3864317 call!543163)))

(declare-fun b!6364146 () Bool)

(declare-fun e!3864312 () Bool)

(assert (=> b!6364146 (= e!3864312 e!3864314)))

(declare-fun c!1158685 () Bool)

(assert (=> b!6364146 (= c!1158685 ((_ is Star!16271) (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))

(declare-fun b!6364147 () Bool)

(declare-fun e!3864311 () Bool)

(assert (=> b!6364147 (= e!3864314 e!3864311)))

(declare-fun c!1158684 () Bool)

(assert (=> b!6364147 (= c!1158684 ((_ is Union!16271) (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))

(declare-fun b!6364148 () Bool)

(declare-fun res!2618448 () Bool)

(declare-fun e!3864315 () Bool)

(assert (=> b!6364148 (=> (not res!2618448) (not e!3864315))))

(declare-fun call!543162 () Bool)

(assert (=> b!6364148 (= res!2618448 call!543162)))

(assert (=> b!6364148 (= e!3864311 e!3864315)))

(declare-fun call!543164 () Bool)

(declare-fun bm!543157 () Bool)

(assert (=> bm!543157 (= call!543164 (validRegex!8007 (ite c!1158685 (reg!16600 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))) (ite c!1158684 (regTwo!33055 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))) (regTwo!33054 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292)))))))))

(declare-fun bm!543158 () Bool)

(assert (=> bm!543158 (= call!543162 (validRegex!8007 (ite c!1158684 (regOne!33055 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))) (regOne!33054 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))))

(declare-fun d!1996431 () Bool)

(declare-fun res!2618450 () Bool)

(assert (=> d!1996431 (=> res!2618450 e!3864312)))

(assert (=> d!1996431 (= res!2618450 ((_ is ElementMatch!16271) (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))))))

(assert (=> d!1996431 (= (validRegex!8007 (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292))) e!3864312)))

(declare-fun bm!543159 () Bool)

(assert (=> bm!543159 (= call!543163 call!543164)))

(declare-fun b!6364149 () Bool)

(assert (=> b!6364149 (= e!3864316 call!543164)))

(declare-fun b!6364150 () Bool)

(assert (=> b!6364150 (= e!3864315 call!543163)))

(declare-fun b!6364151 () Bool)

(declare-fun e!3864313 () Bool)

(assert (=> b!6364151 (= e!3864313 e!3864317)))

(declare-fun res!2618449 () Bool)

(assert (=> b!6364151 (=> (not res!2618449) (not e!3864317))))

(assert (=> b!6364151 (= res!2618449 call!543162)))

(declare-fun b!6364152 () Bool)

(declare-fun res!2618452 () Bool)

(assert (=> b!6364152 (=> res!2618452 e!3864313)))

(assert (=> b!6364152 (= res!2618452 (not ((_ is Concat!25116) (ite c!1158315 (regOne!33055 r!7292) (regOne!33054 r!7292)))))))

(assert (=> b!6364152 (= e!3864311 e!3864313)))

(assert (= (and d!1996431 (not res!2618450)) b!6364146))

(assert (= (and b!6364146 c!1158685) b!6364144))

(assert (= (and b!6364146 (not c!1158685)) b!6364147))

(assert (= (and b!6364144 res!2618451) b!6364149))

(assert (= (and b!6364147 c!1158684) b!6364148))

(assert (= (and b!6364147 (not c!1158684)) b!6364152))

(assert (= (and b!6364148 res!2618448) b!6364150))

(assert (= (and b!6364152 (not res!2618452)) b!6364151))

(assert (= (and b!6364151 res!2618449) b!6364145))

(assert (= (or b!6364150 b!6364145) bm!543159))

(assert (= (or b!6364148 b!6364151) bm!543158))

(assert (= (or b!6364149 bm!543159) bm!543157))

(declare-fun m!7168796 () Bool)

(assert (=> b!6364144 m!7168796))

(declare-fun m!7168798 () Bool)

(assert (=> bm!543157 m!7168798))

(declare-fun m!7168800 () Bool)

(assert (=> bm!543158 m!7168800))

(assert (=> bm!542920 d!1996431))

(assert (=> d!1996041 d!1996187))

(assert (=> d!1996041 d!1995981))

(assert (=> bm!542958 d!1996187))

(assert (=> d!1996051 d!1996041))

(assert (=> d!1996051 d!1996007))

(declare-fun d!1996439 () Bool)

(assert (=> d!1996439 (= (matchR!8454 r!7292 s!2326) (matchRSpec!3372 r!7292 s!2326))))

(assert (=> d!1996439 true))

(declare-fun _$88!5047 () Unit!158415)

(assert (=> d!1996439 (= (choose!47260 r!7292 s!2326) _$88!5047)))

(declare-fun bs!1594539 () Bool)

(assert (= bs!1594539 d!1996439))

(assert (=> bs!1594539 m!7167654))

(assert (=> bs!1594539 m!7167652))

(assert (=> d!1996051 d!1996439))

(assert (=> d!1996051 d!1995981))

(assert (=> d!1996105 d!1996099))

(assert (=> d!1996105 d!1996193))

(assert (=> d!1996105 d!1996109))

(declare-fun d!1996451 () Bool)

(assert (=> d!1996451 (= (Exists!3341 lambda!350539) (choose!47266 lambda!350539))))

(declare-fun bs!1594540 () Bool)

(assert (= bs!1594540 d!1996451))

(declare-fun m!7168816 () Bool)

(assert (=> bs!1594540 m!7168816))

(assert (=> d!1996105 d!1996451))

(declare-fun bs!1594545 () Bool)

(declare-fun d!1996453 () Bool)

(assert (= bs!1594545 (and d!1996453 b!6363851)))

(declare-fun lambda!350593 () Int)

(assert (=> bs!1594545 (not (= lambda!350593 lambda!350582))))

(declare-fun bs!1594546 () Bool)

(assert (= bs!1594546 (and d!1996453 b!6363850)))

(assert (=> bs!1594546 (not (= lambda!350593 lambda!350583))))

(declare-fun bs!1594547 () Bool)

(assert (= bs!1594547 (and d!1996453 b!6363646)))

(assert (=> bs!1594547 (not (= lambda!350593 lambda!350565))))

(declare-fun bs!1594548 () Bool)

(assert (= bs!1594548 (and d!1996453 b!6363103)))

(assert (=> bs!1594548 (not (= lambda!350593 lambda!350518))))

(declare-fun bs!1594549 () Bool)

(assert (= bs!1594549 (and d!1996453 d!1996105)))

(assert (=> bs!1594549 (= lambda!350593 lambda!350539)))

(declare-fun bs!1594550 () Bool)

(assert (= bs!1594550 (and d!1996453 b!6363104)))

(assert (=> bs!1594550 (not (= lambda!350593 lambda!350517))))

(declare-fun bs!1594551 () Bool)

(assert (= bs!1594551 (and d!1996453 b!6362731)))

(assert (=> bs!1594551 (= lambda!350593 lambda!350485)))

(declare-fun bs!1594552 () Bool)

(assert (= bs!1594552 (and d!1996453 d!1996107)))

(assert (=> bs!1594552 (= lambda!350593 lambda!350544)))

(assert (=> bs!1594551 (not (= lambda!350593 lambda!350486))))

(declare-fun bs!1594553 () Bool)

(assert (= bs!1594553 (and d!1996453 b!6363647)))

(assert (=> bs!1594553 (not (= lambda!350593 lambda!350564))))

(assert (=> bs!1594552 (not (= lambda!350593 lambda!350545))))

(assert (=> d!1996453 true))

(assert (=> d!1996453 true))

(assert (=> d!1996453 true))

(assert (=> d!1996453 (= (isDefined!12865 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326)) (Exists!3341 lambda!350593))))

(assert (=> d!1996453 true))

(declare-fun _$89!2593 () Unit!158415)

(assert (=> d!1996453 (= (choose!47267 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326) _$89!2593)))

(declare-fun bs!1594554 () Bool)

(assert (= bs!1594554 d!1996453))

(assert (=> bs!1594554 m!7167690))

(assert (=> bs!1594554 m!7167690))

(assert (=> bs!1594554 m!7167692))

(declare-fun m!7168854 () Bool)

(assert (=> bs!1594554 m!7168854))

(assert (=> d!1996105 d!1996453))

(declare-fun b!6364326 () Bool)

(declare-fun e!3864388 () List!65114)

(assert (=> b!6364326 (= e!3864388 (Cons!64990 (h!71438 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))) (++!14340 (t!378708 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))) (t!378708 s!2326))))))

(declare-fun d!1996463 () Bool)

(declare-fun e!3864389 () Bool)

(assert (=> d!1996463 e!3864389))

(declare-fun res!2618475 () Bool)

(assert (=> d!1996463 (=> (not res!2618475) (not e!3864389))))

(declare-fun lt!2367132 () List!65114)

(declare-fun content!12278 (List!65114) (InoxSet C!32812))

(assert (=> d!1996463 (= res!2618475 (= (content!12278 lt!2367132) ((_ map or) (content!12278 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))) (content!12278 (t!378708 s!2326)))))))

(assert (=> d!1996463 (= lt!2367132 e!3864388)))

(declare-fun c!1158703 () Bool)

(assert (=> d!1996463 (= c!1158703 ((_ is Nil!64990) (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))))))

(assert (=> d!1996463 (= (++!14340 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326)) lt!2367132)))

(declare-fun b!6364327 () Bool)

(declare-fun res!2618476 () Bool)

(assert (=> b!6364327 (=> (not res!2618476) (not e!3864389))))

(declare-fun size!40350 (List!65114) Int)

(assert (=> b!6364327 (= res!2618476 (= (size!40350 lt!2367132) (+ (size!40350 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))) (size!40350 (t!378708 s!2326)))))))

(declare-fun b!6364328 () Bool)

(assert (=> b!6364328 (= e!3864389 (or (not (= (t!378708 s!2326) Nil!64990)) (= lt!2367132 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)))))))

(declare-fun b!6364325 () Bool)

(assert (=> b!6364325 (= e!3864388 (t!378708 s!2326))))

(assert (= (and d!1996463 c!1158703) b!6364325))

(assert (= (and d!1996463 (not c!1158703)) b!6364326))

(assert (= (and d!1996463 res!2618475) b!6364327))

(assert (= (and b!6364327 res!2618476) b!6364328))

(declare-fun m!7168866 () Bool)

(assert (=> b!6364326 m!7168866))

(declare-fun m!7168868 () Bool)

(assert (=> d!1996463 m!7168868))

(assert (=> d!1996463 m!7168086))

(declare-fun m!7168870 () Bool)

(assert (=> d!1996463 m!7168870))

(declare-fun m!7168872 () Bool)

(assert (=> d!1996463 m!7168872))

(declare-fun m!7168874 () Bool)

(assert (=> b!6364327 m!7168874))

(assert (=> b!6364327 m!7168086))

(declare-fun m!7168876 () Bool)

(assert (=> b!6364327 m!7168876))

(declare-fun m!7168878 () Bool)

(assert (=> b!6364327 m!7168878))

(assert (=> b!6363400 d!1996463))

(declare-fun b!6364330 () Bool)

(declare-fun e!3864390 () List!65114)

(assert (=> b!6364330 (= e!3864390 (Cons!64990 (h!71438 Nil!64990) (++!14340 (t!378708 Nil!64990) (Cons!64990 (h!71438 s!2326) Nil!64990))))))

(declare-fun d!1996477 () Bool)

(declare-fun e!3864391 () Bool)

(assert (=> d!1996477 e!3864391))

(declare-fun res!2618477 () Bool)

(assert (=> d!1996477 (=> (not res!2618477) (not e!3864391))))

(declare-fun lt!2367133 () List!65114)

(assert (=> d!1996477 (= res!2618477 (= (content!12278 lt!2367133) ((_ map or) (content!12278 Nil!64990) (content!12278 (Cons!64990 (h!71438 s!2326) Nil!64990)))))))

(assert (=> d!1996477 (= lt!2367133 e!3864390)))

(declare-fun c!1158704 () Bool)

(assert (=> d!1996477 (= c!1158704 ((_ is Nil!64990) Nil!64990))))

(assert (=> d!1996477 (= (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) lt!2367133)))

(declare-fun b!6364331 () Bool)

(declare-fun res!2618478 () Bool)

(assert (=> b!6364331 (=> (not res!2618478) (not e!3864391))))

(assert (=> b!6364331 (= res!2618478 (= (size!40350 lt!2367133) (+ (size!40350 Nil!64990) (size!40350 (Cons!64990 (h!71438 s!2326) Nil!64990)))))))

(declare-fun b!6364332 () Bool)

(assert (=> b!6364332 (= e!3864391 (or (not (= (Cons!64990 (h!71438 s!2326) Nil!64990) Nil!64990)) (= lt!2367133 Nil!64990)))))

(declare-fun b!6364329 () Bool)

(assert (=> b!6364329 (= e!3864390 (Cons!64990 (h!71438 s!2326) Nil!64990))))

(assert (= (and d!1996477 c!1158704) b!6364329))

(assert (= (and d!1996477 (not c!1158704)) b!6364330))

(assert (= (and d!1996477 res!2618477) b!6364331))

(assert (= (and b!6364331 res!2618478) b!6364332))

(declare-fun m!7168880 () Bool)

(assert (=> b!6364330 m!7168880))

(declare-fun m!7168882 () Bool)

(assert (=> d!1996477 m!7168882))

(declare-fun m!7168884 () Bool)

(assert (=> d!1996477 m!7168884))

(declare-fun m!7168886 () Bool)

(assert (=> d!1996477 m!7168886))

(declare-fun m!7168888 () Bool)

(assert (=> b!6364331 m!7168888))

(declare-fun m!7168890 () Bool)

(assert (=> b!6364331 m!7168890))

(declare-fun m!7168892 () Bool)

(assert (=> b!6364331 m!7168892))

(assert (=> b!6363400 d!1996477))

(declare-fun d!1996479 () Bool)

(assert (=> d!1996479 (= (++!14340 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326)) s!2326)))

(declare-fun lt!2367136 () Unit!158415)

(declare-fun choose!47270 (List!65114 C!32812 List!65114 List!65114) Unit!158415)

(assert (=> d!1996479 (= lt!2367136 (choose!47270 Nil!64990 (h!71438 s!2326) (t!378708 s!2326) s!2326))))

(assert (=> d!1996479 (= (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) (t!378708 s!2326))) s!2326)))

(assert (=> d!1996479 (= (lemmaMoveElementToOtherListKeepsConcatEq!2435 Nil!64990 (h!71438 s!2326) (t!378708 s!2326) s!2326) lt!2367136)))

(declare-fun bs!1594561 () Bool)

(assert (= bs!1594561 d!1996479))

(assert (=> bs!1594561 m!7168086))

(assert (=> bs!1594561 m!7168086))

(assert (=> bs!1594561 m!7168088))

(declare-fun m!7168894 () Bool)

(assert (=> bs!1594561 m!7168894))

(declare-fun m!7168896 () Bool)

(assert (=> bs!1594561 m!7168896))

(assert (=> b!6363400 d!1996479))

(declare-fun d!1996481 () Bool)

(declare-fun e!3864393 () Bool)

(assert (=> d!1996481 e!3864393))

(declare-fun res!2618482 () Bool)

(assert (=> d!1996481 (=> res!2618482 e!3864393)))

(declare-fun e!3864394 () Bool)

(assert (=> d!1996481 (= res!2618482 e!3864394)))

(declare-fun res!2618480 () Bool)

(assert (=> d!1996481 (=> (not res!2618480) (not e!3864394))))

(declare-fun lt!2367138 () Option!16162)

(assert (=> d!1996481 (= res!2618480 (isDefined!12865 lt!2367138))))

(declare-fun e!3864392 () Option!16162)

(assert (=> d!1996481 (= lt!2367138 e!3864392)))

(declare-fun c!1158706 () Bool)

(declare-fun e!3864395 () Bool)

(assert (=> d!1996481 (= c!1158706 e!3864395)))

(declare-fun res!2618479 () Bool)

(assert (=> d!1996481 (=> (not res!2618479) (not e!3864395))))

(assert (=> d!1996481 (= res!2618479 (matchR!8454 (regOne!33054 r!7292) (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990))))))

(assert (=> d!1996481 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996481 (= (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326) s!2326) lt!2367138)))

(declare-fun b!6364333 () Bool)

(assert (=> b!6364333 (= e!3864394 (= (++!14340 (_1!36553 (get!22491 lt!2367138)) (_2!36553 (get!22491 lt!2367138))) s!2326))))

(declare-fun b!6364334 () Bool)

(declare-fun e!3864396 () Option!16162)

(assert (=> b!6364334 (= e!3864392 e!3864396)))

(declare-fun c!1158705 () Bool)

(assert (=> b!6364334 (= c!1158705 ((_ is Nil!64990) (t!378708 s!2326)))))

(declare-fun b!6364335 () Bool)

(declare-fun res!2618483 () Bool)

(assert (=> b!6364335 (=> (not res!2618483) (not e!3864394))))

(assert (=> b!6364335 (= res!2618483 (matchR!8454 (regOne!33054 r!7292) (_1!36553 (get!22491 lt!2367138))))))

(declare-fun b!6364336 () Bool)

(declare-fun res!2618481 () Bool)

(assert (=> b!6364336 (=> (not res!2618481) (not e!3864394))))

(assert (=> b!6364336 (= res!2618481 (matchR!8454 (regTwo!33054 r!7292) (_2!36553 (get!22491 lt!2367138))))))

(declare-fun b!6364337 () Bool)

(assert (=> b!6364337 (= e!3864392 (Some!16161 (tuple2!66501 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (t!378708 s!2326))))))

(declare-fun b!6364338 () Bool)

(declare-fun lt!2367137 () Unit!158415)

(declare-fun lt!2367139 () Unit!158415)

(assert (=> b!6364338 (= lt!2367137 lt!2367139)))

(assert (=> b!6364338 (= (++!14340 (++!14340 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (Cons!64990 (h!71438 (t!378708 s!2326)) Nil!64990)) (t!378708 (t!378708 s!2326))) s!2326)))

(assert (=> b!6364338 (= lt!2367139 (lemmaMoveElementToOtherListKeepsConcatEq!2435 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (h!71438 (t!378708 s!2326)) (t!378708 (t!378708 s!2326)) s!2326))))

(assert (=> b!6364338 (= e!3864396 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) (++!14340 (++!14340 Nil!64990 (Cons!64990 (h!71438 s!2326) Nil!64990)) (Cons!64990 (h!71438 (t!378708 s!2326)) Nil!64990)) (t!378708 (t!378708 s!2326)) s!2326))))

(declare-fun b!6364339 () Bool)

(assert (=> b!6364339 (= e!3864395 (matchR!8454 (regTwo!33054 r!7292) (t!378708 s!2326)))))

(declare-fun b!6364340 () Bool)

(assert (=> b!6364340 (= e!3864393 (not (isDefined!12865 lt!2367138)))))

(declare-fun b!6364341 () Bool)

(assert (=> b!6364341 (= e!3864396 None!16161)))

(assert (= (and d!1996481 res!2618479) b!6364339))

(assert (= (and d!1996481 c!1158706) b!6364337))

(assert (= (and d!1996481 (not c!1158706)) b!6364334))

(assert (= (and b!6364334 c!1158705) b!6364341))

(assert (= (and b!6364334 (not c!1158705)) b!6364338))

(assert (= (and d!1996481 res!2618480) b!6364335))

(assert (= (and b!6364335 res!2618483) b!6364336))

(assert (= (and b!6364336 res!2618481) b!6364333))

(assert (= (and d!1996481 (not res!2618482)) b!6364340))

(declare-fun m!7168898 () Bool)

(assert (=> d!1996481 m!7168898))

(assert (=> d!1996481 m!7168086))

(declare-fun m!7168900 () Bool)

(assert (=> d!1996481 m!7168900))

(assert (=> d!1996481 m!7168084))

(assert (=> b!6364338 m!7168086))

(declare-fun m!7168902 () Bool)

(assert (=> b!6364338 m!7168902))

(assert (=> b!6364338 m!7168902))

(declare-fun m!7168904 () Bool)

(assert (=> b!6364338 m!7168904))

(assert (=> b!6364338 m!7168086))

(declare-fun m!7168906 () Bool)

(assert (=> b!6364338 m!7168906))

(assert (=> b!6364338 m!7168902))

(declare-fun m!7168908 () Bool)

(assert (=> b!6364338 m!7168908))

(assert (=> b!6364340 m!7168898))

(declare-fun m!7168910 () Bool)

(assert (=> b!6364339 m!7168910))

(declare-fun m!7168912 () Bool)

(assert (=> b!6364336 m!7168912))

(declare-fun m!7168914 () Bool)

(assert (=> b!6364336 m!7168914))

(assert (=> b!6364333 m!7168912))

(declare-fun m!7168916 () Bool)

(assert (=> b!6364333 m!7168916))

(assert (=> b!6364335 m!7168912))

(declare-fun m!7168918 () Bool)

(assert (=> b!6364335 m!7168918))

(assert (=> b!6363400 d!1996481))

(declare-fun d!1996483 () Bool)

(assert (=> d!1996483 (= (isEmpty!37094 (tail!12119 (unfocusZipperList!1692 zl!343))) ((_ is Nil!64988) (tail!12119 (unfocusZipperList!1692 zl!343))))))

(assert (=> b!6362950 d!1996483))

(declare-fun d!1996485 () Bool)

(assert (=> d!1996485 (= (tail!12119 (unfocusZipperList!1692 zl!343)) (t!378706 (unfocusZipperList!1692 zl!343)))))

(assert (=> b!6362950 d!1996485))

(declare-fun b!6364343 () Bool)

(declare-fun e!3864397 () List!65114)

(assert (=> b!6364343 (= e!3864397 (Cons!64990 (h!71438 (_1!36553 (get!22491 lt!2367091))) (++!14340 (t!378708 (_1!36553 (get!22491 lt!2367091))) (_2!36553 (get!22491 lt!2367091)))))))

(declare-fun d!1996487 () Bool)

(declare-fun e!3864398 () Bool)

(assert (=> d!1996487 e!3864398))

(declare-fun res!2618484 () Bool)

(assert (=> d!1996487 (=> (not res!2618484) (not e!3864398))))

(declare-fun lt!2367140 () List!65114)

(assert (=> d!1996487 (= res!2618484 (= (content!12278 lt!2367140) ((_ map or) (content!12278 (_1!36553 (get!22491 lt!2367091))) (content!12278 (_2!36553 (get!22491 lt!2367091))))))))

(assert (=> d!1996487 (= lt!2367140 e!3864397)))

(declare-fun c!1158707 () Bool)

(assert (=> d!1996487 (= c!1158707 ((_ is Nil!64990) (_1!36553 (get!22491 lt!2367091))))))

(assert (=> d!1996487 (= (++!14340 (_1!36553 (get!22491 lt!2367091)) (_2!36553 (get!22491 lt!2367091))) lt!2367140)))

(declare-fun b!6364344 () Bool)

(declare-fun res!2618485 () Bool)

(assert (=> b!6364344 (=> (not res!2618485) (not e!3864398))))

(assert (=> b!6364344 (= res!2618485 (= (size!40350 lt!2367140) (+ (size!40350 (_1!36553 (get!22491 lt!2367091))) (size!40350 (_2!36553 (get!22491 lt!2367091))))))))

(declare-fun b!6364345 () Bool)

(assert (=> b!6364345 (= e!3864398 (or (not (= (_2!36553 (get!22491 lt!2367091)) Nil!64990)) (= lt!2367140 (_1!36553 (get!22491 lt!2367091)))))))

(declare-fun b!6364342 () Bool)

(assert (=> b!6364342 (= e!3864397 (_2!36553 (get!22491 lt!2367091)))))

(assert (= (and d!1996487 c!1158707) b!6364342))

(assert (= (and d!1996487 (not c!1158707)) b!6364343))

(assert (= (and d!1996487 res!2618484) b!6364344))

(assert (= (and b!6364344 res!2618485) b!6364345))

(declare-fun m!7168920 () Bool)

(assert (=> b!6364343 m!7168920))

(declare-fun m!7168922 () Bool)

(assert (=> d!1996487 m!7168922))

(declare-fun m!7168924 () Bool)

(assert (=> d!1996487 m!7168924))

(declare-fun m!7168926 () Bool)

(assert (=> d!1996487 m!7168926))

(declare-fun m!7168928 () Bool)

(assert (=> b!6364344 m!7168928))

(declare-fun m!7168930 () Bool)

(assert (=> b!6364344 m!7168930))

(declare-fun m!7168932 () Bool)

(assert (=> b!6364344 m!7168932))

(assert (=> b!6363395 d!1996487))

(assert (=> b!6363395 d!1996429))

(declare-fun bm!543178 () Bool)

(declare-fun call!543183 () (InoxSet Context!11310))

(assert (=> bm!543178 (= call!543183 (derivationStepZipperDown!1519 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))) (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))) (h!71438 s!2326)))))

(declare-fun d!1996489 () Bool)

(declare-fun c!1158708 () Bool)

(declare-fun e!3864401 () Bool)

(assert (=> d!1996489 (= c!1158708 e!3864401)))

(declare-fun res!2618486 () Bool)

(assert (=> d!1996489 (=> (not res!2618486) (not e!3864401))))

(assert (=> d!1996489 (= res!2618486 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))))

(declare-fun e!3864399 () (InoxSet Context!11310))

(assert (=> d!1996489 (= (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))) (h!71438 s!2326)) e!3864399)))

(declare-fun b!6364346 () Bool)

(declare-fun e!3864400 () (InoxSet Context!11310))

(assert (=> b!6364346 (= e!3864399 e!3864400)))

(declare-fun c!1158709 () Bool)

(assert (=> b!6364346 (= c!1158709 ((_ is Cons!64988) (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343)))))))))))))

(declare-fun b!6364347 () Bool)

(assert (=> b!6364347 (= e!3864400 call!543183)))

(declare-fun b!6364348 () Bool)

(assert (=> b!6364348 (= e!3864400 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6364349 () Bool)

(assert (=> b!6364349 (= e!3864401 (nullable!6264 (h!71436 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))))))

(declare-fun b!6364350 () Bool)

(assert (=> b!6364350 (= e!3864399 ((_ map or) call!543183 (derivationStepZipperUp!1445 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 (Context!11311 (Cons!64988 (h!71436 (exprs!6155 (h!71437 zl!343))) (t!378706 (exprs!6155 (h!71437 zl!343))))))))))) (h!71438 s!2326))))))

(assert (= (and d!1996489 res!2618486) b!6364349))

(assert (= (and d!1996489 c!1158708) b!6364350))

(assert (= (and d!1996489 (not c!1158708)) b!6364346))

(assert (= (and b!6364346 c!1158709) b!6364347))

(assert (= (and b!6364346 (not c!1158709)) b!6364348))

(assert (= (or b!6364350 b!6364347) bm!543178))

(declare-fun m!7168934 () Bool)

(assert (=> bm!543178 m!7168934))

(declare-fun m!7168936 () Bool)

(assert (=> b!6364349 m!7168936))

(declare-fun m!7168938 () Bool)

(assert (=> b!6364350 m!7168938))

(assert (=> b!6363301 d!1996489))

(declare-fun b!6364352 () Bool)

(declare-fun e!3864403 () Bool)

(assert (=> b!6364352 (= e!3864403 (= (head!13035 (_1!36553 (get!22491 lt!2367091))) (c!1158284 (regOne!33054 r!7292))))))

(declare-fun b!6364353 () Bool)

(declare-fun e!3864406 () Bool)

(declare-fun e!3864402 () Bool)

(assert (=> b!6364353 (= e!3864406 e!3864402)))

(declare-fun res!2618494 () Bool)

(assert (=> b!6364353 (=> (not res!2618494) (not e!3864402))))

(declare-fun lt!2367141 () Bool)

(assert (=> b!6364353 (= res!2618494 (not lt!2367141))))

(declare-fun b!6364354 () Bool)

(declare-fun e!3864407 () Bool)

(assert (=> b!6364354 (= e!3864407 (not lt!2367141))))

(declare-fun b!6364355 () Bool)

(declare-fun res!2618492 () Bool)

(declare-fun e!3864405 () Bool)

(assert (=> b!6364355 (=> res!2618492 e!3864405)))

(assert (=> b!6364355 (= res!2618492 (not (isEmpty!37096 (tail!12120 (_1!36553 (get!22491 lt!2367091))))))))

(declare-fun b!6364356 () Bool)

(declare-fun res!2618489 () Bool)

(assert (=> b!6364356 (=> res!2618489 e!3864406)))

(assert (=> b!6364356 (= res!2618489 e!3864403)))

(declare-fun res!2618487 () Bool)

(assert (=> b!6364356 (=> (not res!2618487) (not e!3864403))))

(assert (=> b!6364356 (= res!2618487 lt!2367141)))

(declare-fun b!6364357 () Bool)

(declare-fun res!2618493 () Bool)

(assert (=> b!6364357 (=> (not res!2618493) (not e!3864403))))

(assert (=> b!6364357 (= res!2618493 (isEmpty!37096 (tail!12120 (_1!36553 (get!22491 lt!2367091)))))))

(declare-fun b!6364358 () Bool)

(declare-fun e!3864404 () Bool)

(assert (=> b!6364358 (= e!3864404 (matchR!8454 (derivativeStep!4976 (regOne!33054 r!7292) (head!13035 (_1!36553 (get!22491 lt!2367091)))) (tail!12120 (_1!36553 (get!22491 lt!2367091)))))))

(declare-fun b!6364359 () Bool)

(declare-fun res!2618490 () Bool)

(assert (=> b!6364359 (=> res!2618490 e!3864406)))

(assert (=> b!6364359 (= res!2618490 (not ((_ is ElementMatch!16271) (regOne!33054 r!7292))))))

(assert (=> b!6364359 (= e!3864407 e!3864406)))

(declare-fun d!1996491 () Bool)

(declare-fun e!3864408 () Bool)

(assert (=> d!1996491 e!3864408))

(declare-fun c!1158710 () Bool)

(assert (=> d!1996491 (= c!1158710 ((_ is EmptyExpr!16271) (regOne!33054 r!7292)))))

(assert (=> d!1996491 (= lt!2367141 e!3864404)))

(declare-fun c!1158712 () Bool)

(assert (=> d!1996491 (= c!1158712 (isEmpty!37096 (_1!36553 (get!22491 lt!2367091))))))

(assert (=> d!1996491 (validRegex!8007 (regOne!33054 r!7292))))

(assert (=> d!1996491 (= (matchR!8454 (regOne!33054 r!7292) (_1!36553 (get!22491 lt!2367091))) lt!2367141)))

(declare-fun b!6364351 () Bool)

(assert (=> b!6364351 (= e!3864405 (not (= (head!13035 (_1!36553 (get!22491 lt!2367091))) (c!1158284 (regOne!33054 r!7292)))))))

(declare-fun b!6364360 () Bool)

(assert (=> b!6364360 (= e!3864404 (nullable!6264 (regOne!33054 r!7292)))))

(declare-fun b!6364361 () Bool)

(assert (=> b!6364361 (= e!3864408 e!3864407)))

(declare-fun c!1158711 () Bool)

(assert (=> b!6364361 (= c!1158711 ((_ is EmptyLang!16271) (regOne!33054 r!7292)))))

(declare-fun b!6364362 () Bool)

(declare-fun call!543184 () Bool)

(assert (=> b!6364362 (= e!3864408 (= lt!2367141 call!543184))))

(declare-fun bm!543179 () Bool)

(assert (=> bm!543179 (= call!543184 (isEmpty!37096 (_1!36553 (get!22491 lt!2367091))))))

(declare-fun b!6364363 () Bool)

(assert (=> b!6364363 (= e!3864402 e!3864405)))

(declare-fun res!2618488 () Bool)

(assert (=> b!6364363 (=> res!2618488 e!3864405)))

(assert (=> b!6364363 (= res!2618488 call!543184)))

(declare-fun b!6364364 () Bool)

(declare-fun res!2618491 () Bool)

(assert (=> b!6364364 (=> (not res!2618491) (not e!3864403))))

(assert (=> b!6364364 (= res!2618491 (not call!543184))))

(assert (= (and d!1996491 c!1158712) b!6364360))

(assert (= (and d!1996491 (not c!1158712)) b!6364358))

(assert (= (and d!1996491 c!1158710) b!6364362))

(assert (= (and d!1996491 (not c!1158710)) b!6364361))

(assert (= (and b!6364361 c!1158711) b!6364354))

(assert (= (and b!6364361 (not c!1158711)) b!6364359))

(assert (= (and b!6364359 (not res!2618490)) b!6364356))

(assert (= (and b!6364356 res!2618487) b!6364364))

(assert (= (and b!6364364 res!2618491) b!6364357))

(assert (= (and b!6364357 res!2618493) b!6364352))

(assert (= (and b!6364356 (not res!2618489)) b!6364353))

(assert (= (and b!6364353 res!2618494) b!6364363))

(assert (= (and b!6364363 (not res!2618488)) b!6364355))

(assert (= (and b!6364355 (not res!2618492)) b!6364351))

(assert (= (or b!6364362 b!6364363 b!6364364) bm!543179))

(assert (=> b!6364360 m!7168250))

(declare-fun m!7168940 () Bool)

(assert (=> bm!543179 m!7168940))

(assert (=> d!1996491 m!7168940))

(assert (=> d!1996491 m!7168084))

(declare-fun m!7168942 () Bool)

(assert (=> b!6364352 m!7168942))

(assert (=> b!6364351 m!7168942))

(assert (=> b!6364358 m!7168942))

(assert (=> b!6364358 m!7168942))

(declare-fun m!7168944 () Bool)

(assert (=> b!6364358 m!7168944))

(declare-fun m!7168946 () Bool)

(assert (=> b!6364358 m!7168946))

(assert (=> b!6364358 m!7168944))

(assert (=> b!6364358 m!7168946))

(declare-fun m!7168948 () Bool)

(assert (=> b!6364358 m!7168948))

(assert (=> b!6364357 m!7168946))

(assert (=> b!6364357 m!7168946))

(declare-fun m!7168950 () Bool)

(assert (=> b!6364357 m!7168950))

(assert (=> b!6364355 m!7168946))

(assert (=> b!6364355 m!7168946))

(assert (=> b!6364355 m!7168950))

(assert (=> b!6363397 d!1996491))

(assert (=> b!6363397 d!1996429))

(declare-fun b!6364365 () Bool)

(declare-fun e!3864412 () Bool)

(declare-fun e!3864414 () Bool)

(assert (=> b!6364365 (= e!3864412 e!3864414)))

(declare-fun res!2618498 () Bool)

(assert (=> b!6364365 (= res!2618498 (not (nullable!6264 (reg!16600 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))))

(assert (=> b!6364365 (=> (not res!2618498) (not e!3864414))))

(declare-fun b!6364366 () Bool)

(declare-fun e!3864415 () Bool)

(declare-fun call!543186 () Bool)

(assert (=> b!6364366 (= e!3864415 call!543186)))

(declare-fun b!6364367 () Bool)

(declare-fun e!3864410 () Bool)

(assert (=> b!6364367 (= e!3864410 e!3864412)))

(declare-fun c!1158714 () Bool)

(assert (=> b!6364367 (= c!1158714 ((_ is Star!16271) (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))

(declare-fun b!6364368 () Bool)

(declare-fun e!3864409 () Bool)

(assert (=> b!6364368 (= e!3864412 e!3864409)))

(declare-fun c!1158713 () Bool)

(assert (=> b!6364368 (= c!1158713 ((_ is Union!16271) (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))

(declare-fun b!6364369 () Bool)

(declare-fun res!2618495 () Bool)

(declare-fun e!3864413 () Bool)

(assert (=> b!6364369 (=> (not res!2618495) (not e!3864413))))

(declare-fun call!543185 () Bool)

(assert (=> b!6364369 (= res!2618495 call!543185)))

(assert (=> b!6364369 (= e!3864409 e!3864413)))

(declare-fun call!543187 () Bool)

(declare-fun bm!543180 () Bool)

(assert (=> bm!543180 (= call!543187 (validRegex!8007 (ite c!1158714 (reg!16600 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))) (ite c!1158713 (regTwo!33055 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))) (regTwo!33054 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292))))))))))

(declare-fun bm!543181 () Bool)

(assert (=> bm!543181 (= call!543185 (validRegex!8007 (ite c!1158713 (regOne!33055 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))) (regOne!33054 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))))

(declare-fun d!1996493 () Bool)

(declare-fun res!2618497 () Bool)

(assert (=> d!1996493 (=> res!2618497 e!3864410)))

(assert (=> d!1996493 (= res!2618497 ((_ is ElementMatch!16271) (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))))))

(assert (=> d!1996493 (= (validRegex!8007 (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292)))) e!3864410)))

(declare-fun bm!543182 () Bool)

(assert (=> bm!543182 (= call!543186 call!543187)))

(declare-fun b!6364370 () Bool)

(assert (=> b!6364370 (= e!3864414 call!543187)))

(declare-fun b!6364371 () Bool)

(assert (=> b!6364371 (= e!3864413 call!543186)))

(declare-fun b!6364372 () Bool)

(declare-fun e!3864411 () Bool)

(assert (=> b!6364372 (= e!3864411 e!3864415)))

(declare-fun res!2618496 () Bool)

(assert (=> b!6364372 (=> (not res!2618496) (not e!3864415))))

(assert (=> b!6364372 (= res!2618496 call!543185)))

(declare-fun b!6364373 () Bool)

(declare-fun res!2618499 () Bool)

(assert (=> b!6364373 (=> res!2618499 e!3864411)))

(assert (=> b!6364373 (= res!2618499 (not ((_ is Concat!25116) (ite c!1158316 (reg!16600 r!7292) (ite c!1158315 (regTwo!33055 r!7292) (regTwo!33054 r!7292))))))))

(assert (=> b!6364373 (= e!3864409 e!3864411)))

(assert (= (and d!1996493 (not res!2618497)) b!6364367))

(assert (= (and b!6364367 c!1158714) b!6364365))

(assert (= (and b!6364367 (not c!1158714)) b!6364368))

(assert (= (and b!6364365 res!2618498) b!6364370))

(assert (= (and b!6364368 c!1158713) b!6364369))

(assert (= (and b!6364368 (not c!1158713)) b!6364373))

(assert (= (and b!6364369 res!2618495) b!6364371))

(assert (= (and b!6364373 (not res!2618499)) b!6364372))

(assert (= (and b!6364372 res!2618496) b!6364366))

(assert (= (or b!6364371 b!6364366) bm!543182))

(assert (= (or b!6364369 b!6364372) bm!543181))

(assert (= (or b!6364370 bm!543182) bm!543180))

(declare-fun m!7168952 () Bool)

(assert (=> b!6364365 m!7168952))

(declare-fun m!7168954 () Bool)

(assert (=> bm!543180 m!7168954))

(declare-fun m!7168956 () Bool)

(assert (=> bm!543181 m!7168956))

(assert (=> bm!542919 d!1996493))

(declare-fun d!1996495 () Bool)

(assert (=> d!1996495 (= (nullable!6264 (h!71436 (exprs!6155 lt!2367001))) (nullableFct!2211 (h!71436 (exprs!6155 lt!2367001))))))

(declare-fun bs!1594562 () Bool)

(assert (= bs!1594562 d!1996495))

(declare-fun m!7168958 () Bool)

(assert (=> bs!1594562 m!7168958))

(assert (=> b!6363338 d!1996495))

(declare-fun b!6364374 () Bool)

(declare-fun e!3864417 () (InoxSet Context!11310))

(assert (=> b!6364374 (= e!3864417 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6364375 () Bool)

(declare-fun e!3864416 () (InoxSet Context!11310))

(declare-fun call!543191 () (InoxSet Context!11310))

(declare-fun call!543190 () (InoxSet Context!11310))

(assert (=> b!6364375 (= e!3864416 ((_ map or) call!543191 call!543190))))

(declare-fun b!6364376 () Bool)

(declare-fun e!3864418 () (InoxSet Context!11310))

(assert (=> b!6364376 (= e!3864418 e!3864416)))

(declare-fun c!1158717 () Bool)

(assert (=> b!6364376 (= c!1158717 ((_ is Union!16271) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))))))

(declare-fun bm!543183 () Bool)

(declare-fun call!543192 () (InoxSet Context!11310))

(declare-fun call!543188 () (InoxSet Context!11310))

(assert (=> bm!543183 (= call!543192 call!543188)))

(declare-fun b!6364377 () Bool)

(declare-fun c!1158716 () Bool)

(declare-fun e!3864420 () Bool)

(assert (=> b!6364377 (= c!1158716 e!3864420)))

(declare-fun res!2618500 () Bool)

(assert (=> b!6364377 (=> (not res!2618500) (not e!3864420))))

(assert (=> b!6364377 (= res!2618500 ((_ is Concat!25116) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))))))

(declare-fun e!3864419 () (InoxSet Context!11310))

(assert (=> b!6364377 (= e!3864416 e!3864419)))

(declare-fun c!1158718 () Bool)

(declare-fun d!1996497 () Bool)

(assert (=> d!1996497 (= c!1158718 (and ((_ is ElementMatch!16271) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (= (c!1158284 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (h!71438 s!2326))))))

(assert (=> d!1996497 (= (derivationStepZipperDown!1519 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))) (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006)) (h!71438 s!2326)) e!3864418)))

(declare-fun call!543193 () List!65112)

(declare-fun bm!543184 () Bool)

(declare-fun c!1158715 () Bool)

(assert (=> bm!543184 (= call!543191 (derivationStepZipperDown!1519 (ite c!1158717 (regOne!33055 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (ite c!1158716 (regTwo!33054 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (ite c!1158715 (regOne!33054 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (reg!16600 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))))))) (ite (or c!1158717 c!1158716) (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006)) (Context!11311 call!543193)) (h!71438 s!2326)))))

(declare-fun b!6364378 () Bool)

(assert (=> b!6364378 (= e!3864418 (store ((as const (Array Context!11310 Bool)) false) (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006)) true))))

(declare-fun bm!543185 () Bool)

(assert (=> bm!543185 (= call!543188 call!543191)))

(declare-fun bm!543186 () Bool)

(declare-fun call!543189 () List!65112)

(assert (=> bm!543186 (= call!543190 (derivationStepZipperDown!1519 (ite c!1158717 (regTwo!33055 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (regOne!33054 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))))) (ite c!1158717 (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006)) (Context!11311 call!543189)) (h!71438 s!2326)))))

(declare-fun b!6364379 () Bool)

(declare-fun e!3864421 () (InoxSet Context!11310))

(assert (=> b!6364379 (= e!3864421 call!543192)))

(declare-fun bm!543187 () Bool)

(assert (=> bm!543187 (= call!543193 call!543189)))

(declare-fun b!6364380 () Bool)

(assert (=> b!6364380 (= e!3864420 (nullable!6264 (regOne!33054 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))))))))

(declare-fun b!6364381 () Bool)

(assert (=> b!6364381 (= e!3864417 call!543192)))

(declare-fun b!6364382 () Bool)

(declare-fun c!1158719 () Bool)

(assert (=> b!6364382 (= c!1158719 ((_ is Star!16271) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))))))

(assert (=> b!6364382 (= e!3864421 e!3864417)))

(declare-fun bm!543188 () Bool)

(assert (=> bm!543188 (= call!543189 ($colon$colon!2132 (exprs!6155 (ite (or c!1158469 c!1158468) (Context!11311 lt!2367014) (Context!11311 call!543006))) (ite (or c!1158716 c!1158715) (regTwo!33054 (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292)))))))))))

(declare-fun b!6364383 () Bool)

(assert (=> b!6364383 (= e!3864419 e!3864421)))

(assert (=> b!6364383 (= c!1158715 ((_ is Concat!25116) (ite c!1158469 (regOne!33055 (reg!16600 (regOne!33054 r!7292))) (ite c!1158468 (regTwo!33054 (reg!16600 (regOne!33054 r!7292))) (ite c!1158467 (regOne!33054 (reg!16600 (regOne!33054 r!7292))) (reg!16600 (reg!16600 (regOne!33054 r!7292))))))))))

(declare-fun b!6364384 () Bool)

(assert (=> b!6364384 (= e!3864419 ((_ map or) call!543190 call!543188))))

(assert (= (and d!1996497 c!1158718) b!6364378))

(assert (= (and d!1996497 (not c!1158718)) b!6364376))

(assert (= (and b!6364376 c!1158717) b!6364375))

(assert (= (and b!6364376 (not c!1158717)) b!6364377))

(assert (= (and b!6364377 res!2618500) b!6364380))

(assert (= (and b!6364377 c!1158716) b!6364384))

(assert (= (and b!6364377 (not c!1158716)) b!6364383))

(assert (= (and b!6364383 c!1158715) b!6364379))

(assert (= (and b!6364383 (not c!1158715)) b!6364382))

(assert (= (and b!6364382 c!1158719) b!6364381))

(assert (= (and b!6364382 (not c!1158719)) b!6364374))

(assert (= (or b!6364379 b!6364381) bm!543187))

(assert (= (or b!6364379 b!6364381) bm!543183))

(assert (= (or b!6364384 bm!543187) bm!543188))

(assert (= (or b!6364384 bm!543183) bm!543185))

(assert (= (or b!6364375 b!6364384) bm!543186))

(assert (= (or b!6364375 bm!543185) bm!543184))

(declare-fun m!7168960 () Bool)

(assert (=> bm!543184 m!7168960))

(declare-fun m!7168962 () Bool)

(assert (=> b!6364378 m!7168962))

(declare-fun m!7168964 () Bool)

(assert (=> bm!543188 m!7168964))

(declare-fun m!7168966 () Bool)

(assert (=> b!6364380 m!7168966))

(declare-fun m!7168968 () Bool)

(assert (=> bm!543186 m!7168968))

(assert (=> bm!542997 d!1996497))

(declare-fun d!1996499 () Bool)

(assert (=> d!1996499 (= (Exists!3341 lambda!350544) (choose!47266 lambda!350544))))

(declare-fun bs!1594563 () Bool)

(assert (= bs!1594563 d!1996499))

(declare-fun m!7168970 () Bool)

(assert (=> bs!1594563 m!7168970))

(assert (=> d!1996107 d!1996499))

(declare-fun d!1996501 () Bool)

(assert (=> d!1996501 (= (Exists!3341 lambda!350545) (choose!47266 lambda!350545))))

(declare-fun bs!1594564 () Bool)

(assert (= bs!1594564 d!1996501))

(declare-fun m!7168972 () Bool)

(assert (=> bs!1594564 m!7168972))

(assert (=> d!1996107 d!1996501))

(declare-fun bs!1594565 () Bool)

(declare-fun d!1996503 () Bool)

(assert (= bs!1594565 (and d!1996503 b!6363851)))

(declare-fun lambda!350598 () Int)

(assert (=> bs!1594565 (not (= lambda!350598 lambda!350582))))

(declare-fun bs!1594566 () Bool)

(assert (= bs!1594566 (and d!1996503 b!6363850)))

(assert (=> bs!1594566 (not (= lambda!350598 lambda!350583))))

(declare-fun bs!1594567 () Bool)

(assert (= bs!1594567 (and d!1996503 b!6363646)))

(assert (=> bs!1594567 (not (= lambda!350598 lambda!350565))))

(declare-fun bs!1594568 () Bool)

(assert (= bs!1594568 (and d!1996503 d!1996453)))

(assert (=> bs!1594568 (= lambda!350598 lambda!350593)))

(declare-fun bs!1594569 () Bool)

(assert (= bs!1594569 (and d!1996503 b!6363103)))

(assert (=> bs!1594569 (not (= lambda!350598 lambda!350518))))

(declare-fun bs!1594570 () Bool)

(assert (= bs!1594570 (and d!1996503 d!1996105)))

(assert (=> bs!1594570 (= lambda!350598 lambda!350539)))

(declare-fun bs!1594571 () Bool)

(assert (= bs!1594571 (and d!1996503 b!6363104)))

(assert (=> bs!1594571 (not (= lambda!350598 lambda!350517))))

(declare-fun bs!1594572 () Bool)

(assert (= bs!1594572 (and d!1996503 b!6362731)))

(assert (=> bs!1594572 (= lambda!350598 lambda!350485)))

(declare-fun bs!1594573 () Bool)

(assert (= bs!1594573 (and d!1996503 d!1996107)))

(assert (=> bs!1594573 (= lambda!350598 lambda!350544)))

(assert (=> bs!1594572 (not (= lambda!350598 lambda!350486))))

(declare-fun bs!1594574 () Bool)

(assert (= bs!1594574 (and d!1996503 b!6363647)))

(assert (=> bs!1594574 (not (= lambda!350598 lambda!350564))))

(assert (=> bs!1594573 (not (= lambda!350598 lambda!350545))))

(assert (=> d!1996503 true))

(assert (=> d!1996503 true))

(assert (=> d!1996503 true))

(declare-fun lambda!350599 () Int)

(assert (=> bs!1594565 (not (= lambda!350599 lambda!350582))))

(assert (=> bs!1594566 (= (and (= (regOne!33054 r!7292) (regOne!33054 (regOne!33055 r!7292))) (= (regTwo!33054 r!7292) (regTwo!33054 (regOne!33055 r!7292)))) (= lambda!350599 lambda!350583))))

(assert (=> bs!1594567 (= (and (= (regOne!33054 r!7292) (regOne!33054 (regTwo!33055 r!7292))) (= (regTwo!33054 r!7292) (regTwo!33054 (regTwo!33055 r!7292)))) (= lambda!350599 lambda!350565))))

(declare-fun bs!1594575 () Bool)

(assert (= bs!1594575 d!1996503))

(assert (=> bs!1594575 (not (= lambda!350599 lambda!350598))))

(assert (=> bs!1594568 (not (= lambda!350599 lambda!350593))))

(assert (=> bs!1594569 (= lambda!350599 lambda!350518)))

(assert (=> bs!1594570 (not (= lambda!350599 lambda!350539))))

(assert (=> bs!1594571 (not (= lambda!350599 lambda!350517))))

(assert (=> bs!1594572 (not (= lambda!350599 lambda!350485))))

(assert (=> bs!1594573 (not (= lambda!350599 lambda!350544))))

(assert (=> bs!1594572 (= lambda!350599 lambda!350486)))

(assert (=> bs!1594574 (not (= lambda!350599 lambda!350564))))

(assert (=> bs!1594573 (= lambda!350599 lambda!350545)))

(assert (=> d!1996503 true))

(assert (=> d!1996503 true))

(assert (=> d!1996503 true))

(assert (=> d!1996503 (= (Exists!3341 lambda!350598) (Exists!3341 lambda!350599))))

(assert (=> d!1996503 true))

(declare-fun _$90!2217 () Unit!158415)

(assert (=> d!1996503 (= (choose!47268 (regOne!33054 r!7292) (regTwo!33054 r!7292) s!2326) _$90!2217)))

(declare-fun m!7168974 () Bool)

(assert (=> bs!1594575 m!7168974))

(declare-fun m!7168976 () Bool)

(assert (=> bs!1594575 m!7168976))

(assert (=> d!1996107 d!1996503))

(assert (=> d!1996107 d!1996193))

(declare-fun b!6364393 () Bool)

(declare-fun e!3864429 () Bool)

(declare-fun e!3864431 () Bool)

(assert (=> b!6364393 (= e!3864429 e!3864431)))

(declare-fun res!2618512 () Bool)

(assert (=> b!6364393 (= res!2618512 (not (nullable!6264 (reg!16600 lt!2367083))))))

(assert (=> b!6364393 (=> (not res!2618512) (not e!3864431))))

(declare-fun b!6364394 () Bool)

(declare-fun e!3864432 () Bool)

(declare-fun call!543195 () Bool)

(assert (=> b!6364394 (= e!3864432 call!543195)))

(declare-fun b!6364395 () Bool)

(declare-fun e!3864427 () Bool)

(assert (=> b!6364395 (= e!3864427 e!3864429)))

(declare-fun c!1158721 () Bool)

(assert (=> b!6364395 (= c!1158721 ((_ is Star!16271) lt!2367083))))

(declare-fun b!6364396 () Bool)

(declare-fun e!3864426 () Bool)

(assert (=> b!6364396 (= e!3864429 e!3864426)))

(declare-fun c!1158720 () Bool)

(assert (=> b!6364396 (= c!1158720 ((_ is Union!16271) lt!2367083))))

(declare-fun b!6364397 () Bool)

(declare-fun res!2618509 () Bool)

(declare-fun e!3864430 () Bool)

(assert (=> b!6364397 (=> (not res!2618509) (not e!3864430))))

(declare-fun call!543194 () Bool)

(assert (=> b!6364397 (= res!2618509 call!543194)))

(assert (=> b!6364397 (= e!3864426 e!3864430)))

(declare-fun bm!543189 () Bool)

(declare-fun call!543196 () Bool)

(assert (=> bm!543189 (= call!543196 (validRegex!8007 (ite c!1158721 (reg!16600 lt!2367083) (ite c!1158720 (regTwo!33055 lt!2367083) (regTwo!33054 lt!2367083)))))))

(declare-fun bm!543190 () Bool)

(assert (=> bm!543190 (= call!543194 (validRegex!8007 (ite c!1158720 (regOne!33055 lt!2367083) (regOne!33054 lt!2367083))))))

(declare-fun d!1996505 () Bool)

(declare-fun res!2618511 () Bool)

(assert (=> d!1996505 (=> res!2618511 e!3864427)))

(assert (=> d!1996505 (= res!2618511 ((_ is ElementMatch!16271) lt!2367083))))

(assert (=> d!1996505 (= (validRegex!8007 lt!2367083) e!3864427)))

(declare-fun bm!543191 () Bool)

(assert (=> bm!543191 (= call!543195 call!543196)))

(declare-fun b!6364398 () Bool)

(assert (=> b!6364398 (= e!3864431 call!543196)))

(declare-fun b!6364399 () Bool)

(assert (=> b!6364399 (= e!3864430 call!543195)))

(declare-fun b!6364400 () Bool)

(declare-fun e!3864428 () Bool)

(assert (=> b!6364400 (= e!3864428 e!3864432)))

(declare-fun res!2618510 () Bool)

(assert (=> b!6364400 (=> (not res!2618510) (not e!3864432))))

(assert (=> b!6364400 (= res!2618510 call!543194)))

(declare-fun b!6364401 () Bool)

(declare-fun res!2618513 () Bool)

(assert (=> b!6364401 (=> res!2618513 e!3864428)))

(assert (=> b!6364401 (= res!2618513 (not ((_ is Concat!25116) lt!2367083)))))

(assert (=> b!6364401 (= e!3864426 e!3864428)))

(assert (= (and d!1996505 (not res!2618511)) b!6364395))

(assert (= (and b!6364395 c!1158721) b!6364393))

(assert (= (and b!6364395 (not c!1158721)) b!6364396))

(assert (= (and b!6364393 res!2618512) b!6364398))

(assert (= (and b!6364396 c!1158720) b!6364397))

(assert (= (and b!6364396 (not c!1158720)) b!6364401))

(assert (= (and b!6364397 res!2618509) b!6364399))

(assert (= (and b!6364401 (not res!2618513)) b!6364400))

(assert (= (and b!6364400 res!2618510) b!6364394))

(assert (= (or b!6364399 b!6364394) bm!543191))

(assert (= (or b!6364397 b!6364400) bm!543190))

(assert (= (or b!6364398 bm!543191) bm!543189))

(declare-fun m!7168978 () Bool)

(assert (=> b!6364393 m!7168978))

(declare-fun m!7168980 () Bool)

(assert (=> bm!543189 m!7168980))

(declare-fun m!7168982 () Bool)

(assert (=> bm!543190 m!7168982))

(assert (=> d!1996087 d!1996505))

(assert (=> d!1996087 d!1995987))

(assert (=> d!1996087 d!1995995))

(declare-fun bs!1594576 () Bool)

(declare-fun d!1996507 () Bool)

(assert (= bs!1594576 (and d!1996507 d!1996237)))

(declare-fun lambda!350600 () Int)

(assert (=> bs!1594576 (= lambda!350600 lambda!350571)))

(declare-fun bs!1594577 () Bool)

(assert (= bs!1594577 (and d!1996507 d!1996091)))

(assert (=> bs!1594577 (= lambda!350600 lambda!350536)))

(declare-fun bs!1594578 () Bool)

(assert (= bs!1594578 (and d!1996507 d!1996299)))

(assert (=> bs!1594578 (= lambda!350600 lambda!350579)))

(declare-fun bs!1594579 () Bool)

(assert (= bs!1594579 (and d!1996507 d!1995995)))

(assert (=> bs!1594579 (= lambda!350600 lambda!350512)))

(declare-fun bs!1594580 () Bool)

(assert (= bs!1594580 (and d!1996507 d!1996053)))

(assert (=> bs!1594580 (= lambda!350600 lambda!350531)))

(declare-fun bs!1594581 () Bool)

(assert (= bs!1594581 (and d!1996507 d!1996089)))

(assert (=> bs!1594581 (= lambda!350600 lambda!350535)))

(declare-fun bs!1594582 () Bool)

(assert (= bs!1594582 (and d!1996507 d!1996385)))

(assert (=> bs!1594582 (= lambda!350600 lambda!350588)))

(declare-fun bs!1594583 () Bool)

(assert (= bs!1594583 (and d!1996507 d!1996345)))

(assert (=> bs!1594583 (= lambda!350600 lambda!350585)))

(declare-fun bs!1594584 () Bool)

(assert (= bs!1594584 (and d!1996507 d!1995987)))

(assert (=> bs!1594584 (= lambda!350600 lambda!350505)))

(declare-fun bs!1594585 () Bool)

(assert (= bs!1594585 (and d!1996507 d!1996077)))

(assert (=> bs!1594585 (= lambda!350600 lambda!350534)))

(declare-fun b!6364402 () Bool)

(declare-fun e!3864438 () Regex!16271)

(assert (=> b!6364402 (= e!3864438 (Union!16271 (h!71436 (t!378706 (unfocusZipperList!1692 zl!343))) (generalisedUnion!2115 (t!378706 (t!378706 (unfocusZipperList!1692 zl!343))))))))

(declare-fun b!6364403 () Bool)

(declare-fun e!3864435 () Bool)

(declare-fun lt!2367142 () Regex!16271)

(assert (=> b!6364403 (= e!3864435 (isEmptyLang!1680 lt!2367142))))

(declare-fun b!6364404 () Bool)

(declare-fun e!3864436 () Bool)

(assert (=> b!6364404 (= e!3864435 e!3864436)))

(declare-fun c!1158722 () Bool)

(assert (=> b!6364404 (= c!1158722 (isEmpty!37094 (tail!12119 (t!378706 (unfocusZipperList!1692 zl!343)))))))

(declare-fun b!6364405 () Bool)

(declare-fun e!3864437 () Regex!16271)

(assert (=> b!6364405 (= e!3864437 (h!71436 (t!378706 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6364406 () Bool)

(assert (=> b!6364406 (= e!3864436 (isUnion!1110 lt!2367142))))

(declare-fun b!6364407 () Bool)

(declare-fun e!3864434 () Bool)

(assert (=> b!6364407 (= e!3864434 e!3864435)))

(declare-fun c!1158724 () Bool)

(assert (=> b!6364407 (= c!1158724 (isEmpty!37094 (t!378706 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6364408 () Bool)

(assert (=> b!6364408 (= e!3864437 e!3864438)))

(declare-fun c!1158725 () Bool)

(assert (=> b!6364408 (= c!1158725 ((_ is Cons!64988) (t!378706 (unfocusZipperList!1692 zl!343))))))

(declare-fun b!6364409 () Bool)

(assert (=> b!6364409 (= e!3864436 (= lt!2367142 (head!13034 (t!378706 (unfocusZipperList!1692 zl!343)))))))

(declare-fun b!6364410 () Bool)

(declare-fun e!3864433 () Bool)

(assert (=> b!6364410 (= e!3864433 (isEmpty!37094 (t!378706 (t!378706 (unfocusZipperList!1692 zl!343)))))))

(declare-fun b!6364411 () Bool)

(assert (=> b!6364411 (= e!3864438 EmptyLang!16271)))

(assert (=> d!1996507 e!3864434))

(declare-fun res!2618515 () Bool)

(assert (=> d!1996507 (=> (not res!2618515) (not e!3864434))))

(assert (=> d!1996507 (= res!2618515 (validRegex!8007 lt!2367142))))

(assert (=> d!1996507 (= lt!2367142 e!3864437)))

(declare-fun c!1158723 () Bool)

(assert (=> d!1996507 (= c!1158723 e!3864433)))

(declare-fun res!2618514 () Bool)

(assert (=> d!1996507 (=> (not res!2618514) (not e!3864433))))

(assert (=> d!1996507 (= res!2618514 ((_ is Cons!64988) (t!378706 (unfocusZipperList!1692 zl!343))))))

(assert (=> d!1996507 (forall!15449 (t!378706 (unfocusZipperList!1692 zl!343)) lambda!350600)))

(assert (=> d!1996507 (= (generalisedUnion!2115 (t!378706 (unfocusZipperList!1692 zl!343))) lt!2367142)))

(assert (= (and d!1996507 res!2618514) b!6364410))

(assert (= (and d!1996507 c!1158723) b!6364405))

(assert (= (and d!1996507 (not c!1158723)) b!6364408))

(assert (= (and b!6364408 c!1158725) b!6364402))

(assert (= (and b!6364408 (not c!1158725)) b!6364411))

(assert (= (and d!1996507 res!2618515) b!6364407))

(assert (= (and b!6364407 c!1158724) b!6364403))

(assert (= (and b!6364407 (not c!1158724)) b!6364404))

(assert (= (and b!6364404 c!1158722) b!6364409))

(assert (= (and b!6364404 (not c!1158722)) b!6364406))

(declare-fun m!7168984 () Bool)

(assert (=> b!6364402 m!7168984))

(assert (=> b!6364407 m!7167778))

(declare-fun m!7168986 () Bool)

(assert (=> b!6364406 m!7168986))

(declare-fun m!7168988 () Bool)

(assert (=> b!6364409 m!7168988))

(declare-fun m!7168990 () Bool)

(assert (=> b!6364410 m!7168990))

(declare-fun m!7168992 () Bool)

(assert (=> b!6364403 m!7168992))

(declare-fun m!7168994 () Bool)

(assert (=> b!6364404 m!7168994))

(assert (=> b!6364404 m!7168994))

(declare-fun m!7168996 () Bool)

(assert (=> b!6364404 m!7168996))

(declare-fun m!7168998 () Bool)

(assert (=> d!1996507 m!7168998))

(declare-fun m!7169000 () Bool)

(assert (=> d!1996507 m!7169000))

(assert (=> b!6362948 d!1996507))

(assert (=> b!6363162 d!1996283))

(declare-fun d!1996509 () Bool)

(assert (=> d!1996509 true))

(assert (=> d!1996509 true))

(declare-fun res!2618516 () Bool)

(assert (=> d!1996509 (= (choose!47266 lambda!350486) res!2618516)))

(assert (=> d!1996103 d!1996509))

(assert (=> d!1996097 d!1996381))

(assert (=> d!1996083 d!1996381))

(assert (=> b!6363355 d!1996097))

(declare-fun d!1996511 () Bool)

(assert (=> d!1996511 (= (isEmpty!37098 (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326)) (not ((_ is Some!16161) (findConcatSeparation!2576 (regOne!33054 r!7292) (regTwo!33054 r!7292) Nil!64990 s!2326 s!2326))))))

(assert (=> d!1996109 d!1996511))

(declare-fun d!1996513 () Bool)

(declare-fun c!1158728 () Bool)

(assert (=> d!1996513 (= c!1158728 ((_ is Nil!64989) lt!2367077))))

(declare-fun e!3864441 () (InoxSet Context!11310))

(assert (=> d!1996513 (= (content!12276 lt!2367077) e!3864441)))

(declare-fun b!6364416 () Bool)

(assert (=> b!6364416 (= e!3864441 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6364417 () Bool)

(assert (=> b!6364417 (= e!3864441 ((_ map or) (store ((as const (Array Context!11310 Bool)) false) (h!71437 lt!2367077) true) (content!12276 (t!378707 lt!2367077))))))

(assert (= (and d!1996513 c!1158728) b!6364416))

(assert (= (and d!1996513 (not c!1158728)) b!6364417))

(declare-fun m!7169002 () Bool)

(assert (=> b!6364417 m!7169002))

(declare-fun m!7169004 () Bool)

(assert (=> b!6364417 m!7169004))

(assert (=> b!6363347 d!1996513))

(declare-fun b!6364418 () Bool)

(declare-fun e!3864445 () Bool)

(declare-fun e!3864442 () Bool)

(assert (=> b!6364418 (= e!3864445 e!3864442)))

(declare-fun res!2618519 () Bool)

(assert (=> b!6364418 (=> res!2618519 e!3864442)))

(assert (=> b!6364418 (= res!2618519 ((_ is Star!16271) (regOne!33054 (regOne!33054 r!7292))))))

(declare-fun b!6364420 () Bool)

(declare-fun e!3864446 () Bool)

(declare-fun e!3864443 () Bool)

(assert (=> b!6364420 (= e!3864446 e!3864443)))

(declare-fun res!2618520 () Bool)

(declare-fun call!543198 () Bool)

(assert (=> b!6364420 (= res!2618520 call!543198)))

(assert (=> b!6364420 (=> (not res!2618520) (not e!3864443))))

(declare-fun b!6364421 () Bool)

(assert (=> b!6364421 (= e!3864442 e!3864446)))

(declare-fun c!1158729 () Bool)

(assert (=> b!6364421 (= c!1158729 ((_ is Union!16271) (regOne!33054 (regOne!33054 r!7292))))))

(declare-fun bm!543192 () Bool)

(assert (=> bm!543192 (= call!543198 (nullable!6264 (ite c!1158729 (regOne!33055 (regOne!33054 (regOne!33054 r!7292))) (regOne!33054 (regOne!33054 (regOne!33054 r!7292))))))))

(declare-fun b!6364422 () Bool)

(declare-fun e!3864447 () Bool)

(assert (=> b!6364422 (= e!3864446 e!3864447)))

(declare-fun res!2618521 () Bool)

(assert (=> b!6364422 (= res!2618521 call!543198)))

(assert (=> b!6364422 (=> res!2618521 e!3864447)))

(declare-fun b!6364423 () Bool)

(declare-fun call!543197 () Bool)

(assert (=> b!6364423 (= e!3864447 call!543197)))

(declare-fun bm!543193 () Bool)

(assert (=> bm!543193 (= call!543197 (nullable!6264 (ite c!1158729 (regTwo!33055 (regOne!33054 (regOne!33054 r!7292))) (regTwo!33054 (regOne!33054 (regOne!33054 r!7292))))))))

(declare-fun b!6364424 () Bool)

(declare-fun e!3864444 () Bool)

(assert (=> b!6364424 (= e!3864444 e!3864445)))

(declare-fun res!2618517 () Bool)

(assert (=> b!6364424 (=> (not res!2618517) (not e!3864445))))

(assert (=> b!6364424 (= res!2618517 (and (not ((_ is EmptyLang!16271) (regOne!33054 (regOne!33054 r!7292)))) (not ((_ is ElementMatch!16271) (regOne!33054 (regOne!33054 r!7292))))))))

(declare-fun b!6364419 () Bool)

(assert (=> b!6364419 (= e!3864443 call!543197)))

(declare-fun d!1996515 () Bool)

(declare-fun res!2618518 () Bool)

(assert (=> d!1996515 (=> res!2618518 e!3864444)))

(assert (=> d!1996515 (= res!2618518 ((_ is EmptyExpr!16271) (regOne!33054 (regOne!33054 r!7292))))))

(assert (=> d!1996515 (= (nullableFct!2211 (regOne!33054 (regOne!33054 r!7292))) e!3864444)))

(assert (= (and d!1996515 (not res!2618518)) b!6364424))

(assert (= (and b!6364424 res!2618517) b!6364418))

(assert (= (and b!6364418 (not res!2618519)) b!6364421))

(assert (= (and b!6364421 c!1158729) b!6364422))

(assert (= (and b!6364421 (not c!1158729)) b!6364420))

(assert (= (and b!6364422 (not res!2618521)) b!6364423))

(assert (= (and b!6364420 res!2618520) b!6364419))

(assert (= (or b!6364423 b!6364419) bm!543193))

(assert (= (or b!6364422 b!6364420) bm!543192))

(declare-fun m!7169006 () Bool)

(assert (=> bm!543192 m!7169006))

(declare-fun m!7169008 () Bool)

(assert (=> bm!543193 m!7169008))

(assert (=> d!1996073 d!1996515))

(declare-fun bs!1594586 () Bool)

(declare-fun d!1996517 () Bool)

(assert (= bs!1594586 (and d!1996517 d!1996173)))

(declare-fun lambda!350601 () Int)

(assert (=> bs!1594586 (= lambda!350601 lambda!350557)))

(declare-fun bs!1594587 () Bool)

(assert (= bs!1594587 (and d!1996517 d!1996297)))

(assert (=> bs!1594587 (= lambda!350601 lambda!350578)))

(assert (=> d!1996517 (= (nullableZipper!2037 lt!2367005) (exists!2574 lt!2367005 lambda!350601))))

(declare-fun bs!1594588 () Bool)

(assert (= bs!1594588 d!1996517))

(declare-fun m!7169010 () Bool)

(assert (=> bs!1594588 m!7169010))

(assert (=> b!6363360 d!1996517))

(assert (=> d!1996057 d!1996067))

(declare-fun d!1996519 () Bool)

(assert (=> d!1996519 (= (flatMap!1776 z!1189 lambda!350487) (dynLambda!25779 lambda!350487 (h!71437 zl!343)))))

(assert (=> d!1996519 true))

(declare-fun _$13!3528 () Unit!158415)

(assert (=> d!1996519 (= (choose!47262 z!1189 (h!71437 zl!343) lambda!350487) _$13!3528)))

(declare-fun b_lambda!241915 () Bool)

(assert (=> (not b_lambda!241915) (not d!1996519)))

(declare-fun bs!1594589 () Bool)

(assert (= bs!1594589 d!1996519))

(assert (=> bs!1594589 m!7167676))

(assert (=> bs!1594589 m!7167986))

(assert (=> d!1996057 d!1996519))

(declare-fun b!6364425 () Bool)

(declare-fun e!3864449 () (InoxSet Context!11310))

(assert (=> b!6364425 (= e!3864449 ((as const (Array Context!11310 Bool)) false))))

(declare-fun b!6364426 () Bool)

(declare-fun e!3864448 () (InoxSet Context!11310))

(declare-fun call!543202 () (InoxSet Context!11310))

(declare-fun call!543201 () (InoxSet Context!11310))

(assert (=> b!6364426 (= e!3864448 ((_ map or) call!543202 call!543201))))

(declare-fun b!6364427 () Bool)

(declare-fun e!3864450 () (InoxSet Context!11310))

(assert (=> b!6364427 (= e!3864450 e!3864448)))

(declare-fun c!1158732 () Bool)

(assert (=> b!6364427 (= c!1158732 ((_ is Union!16271) (h!71436 (exprs!6155 lt!2367001))))))

(declare-fun bm!543194 () Bool)

(declare-fun call!543203 () (InoxSet Context!11310))

(declare-fun call!543199 () (InoxSet Context!11310))

(assert (=> bm!543194 (= call!543203 call!543199)))

(declare-fun b!6364428 () Bool)

(declare-fun c!1158731 () Bool)

(declare-fun e!3864452 () Bool)

(assert (=> b!6364428 (= c!1158731 e!3864452)))

(declare-fun res!2618522 () Bool)

(assert (=> b!6364428 (=> (not res!2618522) (not e!3864452))))

(assert (=> b!6364428 (= res!2618522 ((_ is Concat!25116) (h!71436 (exprs!6155 lt!2367001))))))

(declare-fun e!3864451 () (InoxSet Context!11310))

(assert (=> b!6364428 (= e!3864448 e!3864451)))

(declare-fun d!1996521 () Bool)

(declare-fun c!1158733 () Bool)

(assert (=> d!1996521 (= c!1158733 (and ((_ is ElementMatch!16271) (h!71436 (exprs!6155 lt!2367001))) (= (c!1158284 (h!71436 (exprs!6155 lt!2367001))) (h!71438 s!2326))))))

(assert (=> d!1996521 (= (derivationStepZipperDown!1519 (h!71436 (exprs!6155 lt!2367001)) (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (h!71438 s!2326)) e!3864450)))

(declare-fun call!543204 () List!65112)

(declare-fun bm!543195 () Bool)

(declare-fun c!1158730 () Bool)

(assert (=> bm!543195 (= call!543202 (derivationStepZipperDown!1519 (ite c!1158732 (regOne!33055 (h!71436 (exprs!6155 lt!2367001))) (ite c!1158731 (regTwo!33054 (h!71436 (exprs!6155 lt!2367001))) (ite c!1158730 (regOne!33054 (h!71436 (exprs!6155 lt!2367001))) (reg!16600 (h!71436 (exprs!6155 lt!2367001)))))) (ite (or c!1158732 c!1158731) (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (Context!11311 call!543204)) (h!71438 s!2326)))))

(declare-fun b!6364429 () Bool)

(assert (=> b!6364429 (= e!3864450 (store ((as const (Array Context!11310 Bool)) false) (Context!11311 (t!378706 (exprs!6155 lt!2367001))) true))))

(declare-fun bm!543196 () Bool)

(assert (=> bm!543196 (= call!543199 call!543202)))

(declare-fun bm!543197 () Bool)

(declare-fun call!543200 () List!65112)

(assert (=> bm!543197 (= call!543201 (derivationStepZipperDown!1519 (ite c!1158732 (regTwo!33055 (h!71436 (exprs!6155 lt!2367001))) (regOne!33054 (h!71436 (exprs!6155 lt!2367001)))) (ite c!1158732 (Context!11311 (t!378706 (exprs!6155 lt!2367001))) (Context!11311 call!543200)) (h!71438 s!2326)))))

(declare-fun b!6364430 () Bool)

(declare-fun e!3864453 () (InoxSet Context!11310))

(assert (=> b!6364430 (= e!3864453 call!543203)))

(declare-fun bm!543198 () Bool)

(assert (=> bm!543198 (= call!543204 call!543200)))

(declare-fun b!6364431 () Bool)

(assert (=> b!6364431 (= e!3864452 (nullable!6264 (regOne!33054 (h!71436 (exprs!6155 lt!2367001)))))))

(declare-fun b!6364432 () Bool)

(assert (=> b!6364432 (= e!3864449 call!543203)))

(declare-fun b!6364433 () Bool)

(declare-fun c!1158734 () Bool)

(assert (=> b!6364433 (= c!1158734 ((_ is Star!16271) (h!71436 (exprs!6155 lt!2367001))))))

(assert (=> b!6364433 (= e!3864453 e!3864449)))

(declare-fun bm!543199 () Bool)

(assert (=> bm!543199 (= call!543200 ($colon$colon!2132 (exprs!6155 (Context!11311 (t!378706 (exprs!6155 lt!2367001)))) (ite (or c!1158731 c!1158730) (regTwo!33054 (h!71436 (exprs!6155 lt!2367001))) (h!71436 (exprs!6155 lt!2367001)))))))

(declare-fun b!6364434 () Bool)

(assert (=> b!6364434 (= e!3864451 e!3864453)))

(assert (=> b!6364434 (= c!1158730 ((_ is Concat!25116) (h!71436 (exprs!6155 lt!2367001))))))

(declare-fun b!6364435 () Bool)

(assert (=> b!6364435 (= e!3864451 ((_ map or) call!543201 call!543199))))

(assert (= (and d!1996521 c!1158733) b!6364429))

(assert (= (and d!1996521 (not c!1158733)) b!6364427))

(assert (= (and b!6364427 c!1158732) b!6364426))

(assert (= (and b!6364427 (not c!1158732)) b!6364428))

(assert (= (and b!6364428 res!2618522) b!6364431))

(assert (= (and b!6364428 c!1158731) b!6364435))

(assert (= (and b!6364428 (not c!1158731)) b!6364434))

(assert (= (and b!6364434 c!1158730) b!6364430))

(assert (= (and b!6364434 (not c!1158730)) b!6364433))

(assert (= (and b!6364433 c!1158734) b!6364432))

(assert (= (and b!6364433 (not c!1158734)) b!6364425))

(assert (= (or b!6364430 b!6364432) bm!543198))

(assert (= (or b!6364430 b!6364432) bm!543194))

(assert (= (or b!6364435 bm!543198) bm!543199))

(assert (= (or b!6364435 bm!543194) bm!543196))

(assert (= (or b!6364426 b!6364435) bm!543197))

(assert (= (or b!6364426 bm!543196) bm!543195))

(declare-fun m!7169012 () Bool)

(assert (=> bm!543195 m!7169012))

(declare-fun m!7169014 () Bool)

(assert (=> b!6364429 m!7169014))

(declare-fun m!7169016 () Bool)

(assert (=> bm!543199 m!7169016))

(declare-fun m!7169018 () Bool)

(assert (=> b!6364431 m!7169018))

(declare-fun m!7169020 () Bool)

(assert (=> bm!543197 m!7169020))

(assert (=> bm!542993 d!1996521))

(declare-fun d!1996523 () Bool)

(declare-fun res!2618523 () Bool)

(declare-fun e!3864454 () Bool)

(assert (=> d!1996523 (=> res!2618523 e!3864454)))

(assert (=> d!1996523 (= res!2618523 ((_ is Nil!64988) lt!2367038))))

(assert (=> d!1996523 (= (forall!15449 lt!2367038 lambda!350512) e!3864454)))

(declare-fun b!6364436 () Bool)

(declare-fun e!3864455 () Bool)

(assert (=> b!6364436 (= e!3864454 e!3864455)))

(declare-fun res!2618524 () Bool)

(assert (=> b!6364436 (=> (not res!2618524) (not e!3864455))))

(assert (=> b!6364436 (= res!2618524 (dynLambda!25781 lambda!350512 (h!71436 lt!2367038)))))

(declare-fun b!6364437 () Bool)

(assert (=> b!6364437 (= e!3864455 (forall!15449 (t!378706 lt!2367038) lambda!350512))))

(assert (= (and d!1996523 (not res!2618523)) b!6364436))

(assert (= (and b!6364436 res!2618524) b!6364437))

(declare-fun b_lambda!241917 () Bool)

(assert (=> (not b_lambda!241917) (not b!6364436)))

(declare-fun m!7169022 () Bool)

(assert (=> b!6364436 m!7169022))

(declare-fun m!7169024 () Bool)

(assert (=> b!6364437 m!7169024))

(assert (=> d!1995995 d!1996523))

(declare-fun b!6364439 () Bool)

(declare-fun e!3864457 () Bool)

(declare-fun tp!1772167 () Bool)

(assert (=> b!6364439 (= e!3864457 tp!1772167)))

(declare-fun e!3864456 () Bool)

(declare-fun tp!1772168 () Bool)

(declare-fun b!6364438 () Bool)

(assert (=> b!6364438 (= e!3864456 (and (inv!83924 (h!71437 (t!378707 (t!378707 zl!343)))) e!3864457 tp!1772168))))

(assert (=> b!6363457 (= tp!1771983 e!3864456)))

(assert (= b!6364438 b!6364439))

(assert (= (and b!6363457 ((_ is Cons!64989) (t!378707 (t!378707 zl!343)))) b!6364438))

(declare-fun m!7169026 () Bool)

(assert (=> b!6364438 m!7169026))

(declare-fun b!6364440 () Bool)

(declare-fun e!3864458 () Bool)

(declare-fun tp!1772169 () Bool)

(declare-fun tp!1772170 () Bool)

(assert (=> b!6364440 (= e!3864458 (and tp!1772169 tp!1772170))))

(assert (=> b!6363458 (= tp!1771982 e!3864458)))

(assert (= (and b!6363458 ((_ is Cons!64988) (exprs!6155 (h!71437 (t!378707 zl!343))))) b!6364440))

(declare-fun b!6364441 () Bool)

(declare-fun e!3864459 () Bool)

(declare-fun tp!1772171 () Bool)

(assert (=> b!6364441 (= e!3864459 (and tp_is_empty!41795 tp!1772171))))

(assert (=> b!6363469 (= tp!1771994 e!3864459)))

(assert (= (and b!6363469 ((_ is Cons!64990) (t!378708 (t!378708 s!2326)))) b!6364441))

(declare-fun b!6364444 () Bool)

(declare-fun e!3864460 () Bool)

(declare-fun tp!1772175 () Bool)

(assert (=> b!6364444 (= e!3864460 tp!1772175)))

(declare-fun b!6364445 () Bool)

(declare-fun tp!1772174 () Bool)

(declare-fun tp!1772173 () Bool)

(assert (=> b!6364445 (= e!3864460 (and tp!1772174 tp!1772173))))

(declare-fun b!6364442 () Bool)

(assert (=> b!6364442 (= e!3864460 tp_is_empty!41795)))

(declare-fun b!6364443 () Bool)

(declare-fun tp!1772176 () Bool)

(declare-fun tp!1772172 () Bool)

(assert (=> b!6364443 (= e!3864460 (and tp!1772176 tp!1772172))))

(assert (=> b!6363449 (= tp!1771976 e!3864460)))

(assert (= (and b!6363449 ((_ is ElementMatch!16271) (reg!16600 (reg!16600 r!7292)))) b!6364442))

(assert (= (and b!6363449 ((_ is Concat!25116) (reg!16600 (reg!16600 r!7292)))) b!6364443))

(assert (= (and b!6363449 ((_ is Star!16271) (reg!16600 (reg!16600 r!7292)))) b!6364444))

(assert (= (and b!6363449 ((_ is Union!16271) (reg!16600 (reg!16600 r!7292)))) b!6364445))

(declare-fun b!6364448 () Bool)

(declare-fun e!3864461 () Bool)

(declare-fun tp!1772180 () Bool)

(assert (=> b!6364448 (= e!3864461 tp!1772180)))

(declare-fun b!6364449 () Bool)

(declare-fun tp!1772179 () Bool)

(declare-fun tp!1772178 () Bool)

(assert (=> b!6364449 (= e!3864461 (and tp!1772179 tp!1772178))))

(declare-fun b!6364446 () Bool)

(assert (=> b!6364446 (= e!3864461 tp_is_empty!41795)))

(declare-fun b!6364447 () Bool)

(declare-fun tp!1772181 () Bool)

(declare-fun tp!1772177 () Bool)

(assert (=> b!6364447 (= e!3864461 (and tp!1772181 tp!1772177))))

(assert (=> b!6363440 (= tp!1771967 e!3864461)))

(assert (= (and b!6363440 ((_ is ElementMatch!16271) (regOne!33054 (regOne!33054 r!7292)))) b!6364446))

(assert (= (and b!6363440 ((_ is Concat!25116) (regOne!33054 (regOne!33054 r!7292)))) b!6364447))

(assert (= (and b!6363440 ((_ is Star!16271) (regOne!33054 (regOne!33054 r!7292)))) b!6364448))

(assert (= (and b!6363440 ((_ is Union!16271) (regOne!33054 (regOne!33054 r!7292)))) b!6364449))

(declare-fun b!6364452 () Bool)

(declare-fun e!3864462 () Bool)

(declare-fun tp!1772185 () Bool)

(assert (=> b!6364452 (= e!3864462 tp!1772185)))

(declare-fun b!6364453 () Bool)

(declare-fun tp!1772184 () Bool)

(declare-fun tp!1772183 () Bool)

(assert (=> b!6364453 (= e!3864462 (and tp!1772184 tp!1772183))))

(declare-fun b!6364450 () Bool)

(assert (=> b!6364450 (= e!3864462 tp_is_empty!41795)))

(declare-fun b!6364451 () Bool)

(declare-fun tp!1772186 () Bool)

(declare-fun tp!1772182 () Bool)

(assert (=> b!6364451 (= e!3864462 (and tp!1772186 tp!1772182))))

(assert (=> b!6363440 (= tp!1771963 e!3864462)))

(assert (= (and b!6363440 ((_ is ElementMatch!16271) (regTwo!33054 (regOne!33054 r!7292)))) b!6364450))

(assert (= (and b!6363440 ((_ is Concat!25116) (regTwo!33054 (regOne!33054 r!7292)))) b!6364451))

(assert (= (and b!6363440 ((_ is Star!16271) (regTwo!33054 (regOne!33054 r!7292)))) b!6364452))

(assert (= (and b!6363440 ((_ is Union!16271) (regTwo!33054 (regOne!33054 r!7292)))) b!6364453))

(declare-fun b!6364456 () Bool)

(declare-fun e!3864463 () Bool)

(declare-fun tp!1772190 () Bool)

(assert (=> b!6364456 (= e!3864463 tp!1772190)))

(declare-fun b!6364457 () Bool)

(declare-fun tp!1772189 () Bool)

(declare-fun tp!1772188 () Bool)

(assert (=> b!6364457 (= e!3864463 (and tp!1772189 tp!1772188))))

(declare-fun b!6364454 () Bool)

(assert (=> b!6364454 (= e!3864463 tp_is_empty!41795)))

(declare-fun b!6364455 () Bool)

(declare-fun tp!1772191 () Bool)

(declare-fun tp!1772187 () Bool)

(assert (=> b!6364455 (= e!3864463 (and tp!1772191 tp!1772187))))

(assert (=> b!6363450 (= tp!1771975 e!3864463)))

(assert (= (and b!6363450 ((_ is ElementMatch!16271) (regOne!33055 (reg!16600 r!7292)))) b!6364454))

(assert (= (and b!6363450 ((_ is Concat!25116) (regOne!33055 (reg!16600 r!7292)))) b!6364455))

(assert (= (and b!6363450 ((_ is Star!16271) (regOne!33055 (reg!16600 r!7292)))) b!6364456))

(assert (= (and b!6363450 ((_ is Union!16271) (regOne!33055 (reg!16600 r!7292)))) b!6364457))

(declare-fun b!6364460 () Bool)

(declare-fun e!3864464 () Bool)

(declare-fun tp!1772195 () Bool)

(assert (=> b!6364460 (= e!3864464 tp!1772195)))

(declare-fun b!6364461 () Bool)

(declare-fun tp!1772194 () Bool)

(declare-fun tp!1772193 () Bool)

(assert (=> b!6364461 (= e!3864464 (and tp!1772194 tp!1772193))))

(declare-fun b!6364458 () Bool)

(assert (=> b!6364458 (= e!3864464 tp_is_empty!41795)))

(declare-fun b!6364459 () Bool)

(declare-fun tp!1772196 () Bool)

(declare-fun tp!1772192 () Bool)

(assert (=> b!6364459 (= e!3864464 (and tp!1772196 tp!1772192))))

(assert (=> b!6363450 (= tp!1771974 e!3864464)))

(assert (= (and b!6363450 ((_ is ElementMatch!16271) (regTwo!33055 (reg!16600 r!7292)))) b!6364458))

(assert (= (and b!6363450 ((_ is Concat!25116) (regTwo!33055 (reg!16600 r!7292)))) b!6364459))

(assert (= (and b!6363450 ((_ is Star!16271) (regTwo!33055 (reg!16600 r!7292)))) b!6364460))

(assert (= (and b!6363450 ((_ is Union!16271) (regTwo!33055 (reg!16600 r!7292)))) b!6364461))

(declare-fun b!6364464 () Bool)

(declare-fun e!3864465 () Bool)

(declare-fun tp!1772200 () Bool)

(assert (=> b!6364464 (= e!3864465 tp!1772200)))

(declare-fun b!6364465 () Bool)

(declare-fun tp!1772199 () Bool)

(declare-fun tp!1772198 () Bool)

(assert (=> b!6364465 (= e!3864465 (and tp!1772199 tp!1772198))))

(declare-fun b!6364462 () Bool)

(assert (=> b!6364462 (= e!3864465 tp_is_empty!41795)))

(declare-fun b!6364463 () Bool)

(declare-fun tp!1772201 () Bool)

(declare-fun tp!1772197 () Bool)

(assert (=> b!6364463 (= e!3864465 (and tp!1772201 tp!1772197))))

(assert (=> b!6363441 (= tp!1771966 e!3864465)))

(assert (= (and b!6363441 ((_ is ElementMatch!16271) (reg!16600 (regOne!33054 r!7292)))) b!6364462))

(assert (= (and b!6363441 ((_ is Concat!25116) (reg!16600 (regOne!33054 r!7292)))) b!6364463))

(assert (= (and b!6363441 ((_ is Star!16271) (reg!16600 (regOne!33054 r!7292)))) b!6364464))

(assert (= (and b!6363441 ((_ is Union!16271) (reg!16600 (regOne!33054 r!7292)))) b!6364465))

(declare-fun b!6364468 () Bool)

(declare-fun e!3864466 () Bool)

(declare-fun tp!1772205 () Bool)

(assert (=> b!6364468 (= e!3864466 tp!1772205)))

(declare-fun b!6364469 () Bool)

(declare-fun tp!1772204 () Bool)

(declare-fun tp!1772203 () Bool)

(assert (=> b!6364469 (= e!3864466 (and tp!1772204 tp!1772203))))

(declare-fun b!6364466 () Bool)

(assert (=> b!6364466 (= e!3864466 tp_is_empty!41795)))

(declare-fun b!6364467 () Bool)

(declare-fun tp!1772206 () Bool)

(declare-fun tp!1772202 () Bool)

(assert (=> b!6364467 (= e!3864466 (and tp!1772206 tp!1772202))))

(assert (=> b!6363463 (= tp!1771988 e!3864466)))

(assert (= (and b!6363463 ((_ is ElementMatch!16271) (h!71436 (exprs!6155 setElem!43348)))) b!6364466))

(assert (= (and b!6363463 ((_ is Concat!25116) (h!71436 (exprs!6155 setElem!43348)))) b!6364467))

(assert (= (and b!6363463 ((_ is Star!16271) (h!71436 (exprs!6155 setElem!43348)))) b!6364468))

(assert (= (and b!6363463 ((_ is Union!16271) (h!71436 (exprs!6155 setElem!43348)))) b!6364469))

(declare-fun b!6364470 () Bool)

(declare-fun e!3864467 () Bool)

(declare-fun tp!1772207 () Bool)

(declare-fun tp!1772208 () Bool)

(assert (=> b!6364470 (= e!3864467 (and tp!1772207 tp!1772208))))

(assert (=> b!6363463 (= tp!1771989 e!3864467)))

(assert (= (and b!6363463 ((_ is Cons!64988) (t!378706 (exprs!6155 setElem!43348)))) b!6364470))

(declare-fun b!6364473 () Bool)

(declare-fun e!3864468 () Bool)

(declare-fun tp!1772212 () Bool)

(assert (=> b!6364473 (= e!3864468 tp!1772212)))

(declare-fun b!6364474 () Bool)

(declare-fun tp!1772211 () Bool)

(declare-fun tp!1772210 () Bool)

(assert (=> b!6364474 (= e!3864468 (and tp!1772211 tp!1772210))))

(declare-fun b!6364471 () Bool)

(assert (=> b!6364471 (= e!3864468 tp_is_empty!41795)))

(declare-fun b!6364472 () Bool)

(declare-fun tp!1772213 () Bool)

(declare-fun tp!1772209 () Bool)

(assert (=> b!6364472 (= e!3864468 (and tp!1772213 tp!1772209))))

(assert (=> b!6363442 (= tp!1771965 e!3864468)))

(assert (= (and b!6363442 ((_ is ElementMatch!16271) (regOne!33055 (regOne!33054 r!7292)))) b!6364471))

(assert (= (and b!6363442 ((_ is Concat!25116) (regOne!33055 (regOne!33054 r!7292)))) b!6364472))

(assert (= (and b!6363442 ((_ is Star!16271) (regOne!33055 (regOne!33054 r!7292)))) b!6364473))

(assert (= (and b!6363442 ((_ is Union!16271) (regOne!33055 (regOne!33054 r!7292)))) b!6364474))

(declare-fun b!6364477 () Bool)

(declare-fun e!3864469 () Bool)

(declare-fun tp!1772217 () Bool)

(assert (=> b!6364477 (= e!3864469 tp!1772217)))

(declare-fun b!6364478 () Bool)

(declare-fun tp!1772216 () Bool)

(declare-fun tp!1772215 () Bool)

(assert (=> b!6364478 (= e!3864469 (and tp!1772216 tp!1772215))))

(declare-fun b!6364475 () Bool)

(assert (=> b!6364475 (= e!3864469 tp_is_empty!41795)))

(declare-fun b!6364476 () Bool)

(declare-fun tp!1772218 () Bool)

(declare-fun tp!1772214 () Bool)

(assert (=> b!6364476 (= e!3864469 (and tp!1772218 tp!1772214))))

(assert (=> b!6363442 (= tp!1771964 e!3864469)))

(assert (= (and b!6363442 ((_ is ElementMatch!16271) (regTwo!33055 (regOne!33054 r!7292)))) b!6364475))

(assert (= (and b!6363442 ((_ is Concat!25116) (regTwo!33055 (regOne!33054 r!7292)))) b!6364476))

(assert (= (and b!6363442 ((_ is Star!16271) (regTwo!33055 (regOne!33054 r!7292)))) b!6364477))

(assert (= (and b!6363442 ((_ is Union!16271) (regTwo!33055 (regOne!33054 r!7292)))) b!6364478))

(declare-fun b!6364481 () Bool)

(declare-fun e!3864470 () Bool)

(declare-fun tp!1772222 () Bool)

(assert (=> b!6364481 (= e!3864470 tp!1772222)))

(declare-fun b!6364482 () Bool)

(declare-fun tp!1772221 () Bool)

(declare-fun tp!1772220 () Bool)

(assert (=> b!6364482 (= e!3864470 (and tp!1772221 tp!1772220))))

(declare-fun b!6364479 () Bool)

(assert (=> b!6364479 (= e!3864470 tp_is_empty!41795)))

(declare-fun b!6364480 () Bool)

(declare-fun tp!1772223 () Bool)

(declare-fun tp!1772219 () Bool)

(assert (=> b!6364480 (= e!3864470 (and tp!1772223 tp!1772219))))

(assert (=> b!6363448 (= tp!1771977 e!3864470)))

(assert (= (and b!6363448 ((_ is ElementMatch!16271) (regOne!33054 (reg!16600 r!7292)))) b!6364479))

(assert (= (and b!6363448 ((_ is Concat!25116) (regOne!33054 (reg!16600 r!7292)))) b!6364480))

(assert (= (and b!6363448 ((_ is Star!16271) (regOne!33054 (reg!16600 r!7292)))) b!6364481))

(assert (= (and b!6363448 ((_ is Union!16271) (regOne!33054 (reg!16600 r!7292)))) b!6364482))

(declare-fun b!6364485 () Bool)

(declare-fun e!3864471 () Bool)

(declare-fun tp!1772227 () Bool)

(assert (=> b!6364485 (= e!3864471 tp!1772227)))

(declare-fun b!6364486 () Bool)

(declare-fun tp!1772226 () Bool)

(declare-fun tp!1772225 () Bool)

(assert (=> b!6364486 (= e!3864471 (and tp!1772226 tp!1772225))))

(declare-fun b!6364483 () Bool)

(assert (=> b!6364483 (= e!3864471 tp_is_empty!41795)))

(declare-fun b!6364484 () Bool)

(declare-fun tp!1772228 () Bool)

(declare-fun tp!1772224 () Bool)

(assert (=> b!6364484 (= e!3864471 (and tp!1772228 tp!1772224))))

(assert (=> b!6363448 (= tp!1771973 e!3864471)))

(assert (= (and b!6363448 ((_ is ElementMatch!16271) (regTwo!33054 (reg!16600 r!7292)))) b!6364483))

(assert (= (and b!6363448 ((_ is Concat!25116) (regTwo!33054 (reg!16600 r!7292)))) b!6364484))

(assert (= (and b!6363448 ((_ is Star!16271) (regTwo!33054 (reg!16600 r!7292)))) b!6364485))

(assert (= (and b!6363448 ((_ is Union!16271) (regTwo!33054 (reg!16600 r!7292)))) b!6364486))

(declare-fun b!6364489 () Bool)

(declare-fun e!3864472 () Bool)

(declare-fun tp!1772232 () Bool)

(assert (=> b!6364489 (= e!3864472 tp!1772232)))

(declare-fun b!6364490 () Bool)

(declare-fun tp!1772231 () Bool)

(declare-fun tp!1772230 () Bool)

(assert (=> b!6364490 (= e!3864472 (and tp!1772231 tp!1772230))))

(declare-fun b!6364487 () Bool)

(assert (=> b!6364487 (= e!3864472 tp_is_empty!41795)))

(declare-fun b!6364488 () Bool)

(declare-fun tp!1772233 () Bool)

(declare-fun tp!1772229 () Bool)

(assert (=> b!6364488 (= e!3864472 (and tp!1772233 tp!1772229))))

(assert (=> b!6363431 (= tp!1771956 e!3864472)))

(assert (= (and b!6363431 ((_ is ElementMatch!16271) (regOne!33054 (regTwo!33055 r!7292)))) b!6364487))

(assert (= (and b!6363431 ((_ is Concat!25116) (regOne!33054 (regTwo!33055 r!7292)))) b!6364488))

(assert (= (and b!6363431 ((_ is Star!16271) (regOne!33054 (regTwo!33055 r!7292)))) b!6364489))

(assert (= (and b!6363431 ((_ is Union!16271) (regOne!33054 (regTwo!33055 r!7292)))) b!6364490))

(declare-fun b!6364493 () Bool)

(declare-fun e!3864473 () Bool)

(declare-fun tp!1772237 () Bool)

(assert (=> b!6364493 (= e!3864473 tp!1772237)))

(declare-fun b!6364494 () Bool)

(declare-fun tp!1772236 () Bool)

(declare-fun tp!1772235 () Bool)

(assert (=> b!6364494 (= e!3864473 (and tp!1772236 tp!1772235))))

(declare-fun b!6364491 () Bool)

(assert (=> b!6364491 (= e!3864473 tp_is_empty!41795)))

(declare-fun b!6364492 () Bool)

(declare-fun tp!1772238 () Bool)

(declare-fun tp!1772234 () Bool)

(assert (=> b!6364492 (= e!3864473 (and tp!1772238 tp!1772234))))

(assert (=> b!6363431 (= tp!1771952 e!3864473)))

(assert (= (and b!6363431 ((_ is ElementMatch!16271) (regTwo!33054 (regTwo!33055 r!7292)))) b!6364491))

(assert (= (and b!6363431 ((_ is Concat!25116) (regTwo!33054 (regTwo!33055 r!7292)))) b!6364492))

(assert (= (and b!6363431 ((_ is Star!16271) (regTwo!33054 (regTwo!33055 r!7292)))) b!6364493))

(assert (= (and b!6363431 ((_ is Union!16271) (regTwo!33054 (regTwo!33055 r!7292)))) b!6364494))

(declare-fun b!6364497 () Bool)

(declare-fun e!3864474 () Bool)

(declare-fun tp!1772242 () Bool)

(assert (=> b!6364497 (= e!3864474 tp!1772242)))

(declare-fun b!6364498 () Bool)

(declare-fun tp!1772241 () Bool)

(declare-fun tp!1772240 () Bool)

(assert (=> b!6364498 (= e!3864474 (and tp!1772241 tp!1772240))))

(declare-fun b!6364495 () Bool)

(assert (=> b!6364495 (= e!3864474 tp_is_empty!41795)))

(declare-fun b!6364496 () Bool)

(declare-fun tp!1772243 () Bool)

(declare-fun tp!1772239 () Bool)

(assert (=> b!6364496 (= e!3864474 (and tp!1772243 tp!1772239))))

(assert (=> b!6363432 (= tp!1771955 e!3864474)))

(assert (= (and b!6363432 ((_ is ElementMatch!16271) (reg!16600 (regTwo!33055 r!7292)))) b!6364495))

(assert (= (and b!6363432 ((_ is Concat!25116) (reg!16600 (regTwo!33055 r!7292)))) b!6364496))

(assert (= (and b!6363432 ((_ is Star!16271) (reg!16600 (regTwo!33055 r!7292)))) b!6364497))

(assert (= (and b!6363432 ((_ is Union!16271) (reg!16600 (regTwo!33055 r!7292)))) b!6364498))

(declare-fun b!6364501 () Bool)

(declare-fun e!3864475 () Bool)

(declare-fun tp!1772247 () Bool)

(assert (=> b!6364501 (= e!3864475 tp!1772247)))

(declare-fun b!6364502 () Bool)

(declare-fun tp!1772246 () Bool)

(declare-fun tp!1772245 () Bool)

(assert (=> b!6364502 (= e!3864475 (and tp!1772246 tp!1772245))))

(declare-fun b!6364499 () Bool)

(assert (=> b!6364499 (= e!3864475 tp_is_empty!41795)))

(declare-fun b!6364500 () Bool)

(declare-fun tp!1772248 () Bool)

(declare-fun tp!1772244 () Bool)

(assert (=> b!6364500 (= e!3864475 (and tp!1772248 tp!1772244))))

(assert (=> b!6363433 (= tp!1771954 e!3864475)))

(assert (= (and b!6363433 ((_ is ElementMatch!16271) (regOne!33055 (regTwo!33055 r!7292)))) b!6364499))

(assert (= (and b!6363433 ((_ is Concat!25116) (regOne!33055 (regTwo!33055 r!7292)))) b!6364500))

(assert (= (and b!6363433 ((_ is Star!16271) (regOne!33055 (regTwo!33055 r!7292)))) b!6364501))

(assert (= (and b!6363433 ((_ is Union!16271) (regOne!33055 (regTwo!33055 r!7292)))) b!6364502))

(declare-fun b!6364505 () Bool)

(declare-fun e!3864476 () Bool)

(declare-fun tp!1772252 () Bool)

(assert (=> b!6364505 (= e!3864476 tp!1772252)))

(declare-fun b!6364506 () Bool)

(declare-fun tp!1772251 () Bool)

(declare-fun tp!1772250 () Bool)

(assert (=> b!6364506 (= e!3864476 (and tp!1772251 tp!1772250))))

(declare-fun b!6364503 () Bool)

(assert (=> b!6364503 (= e!3864476 tp_is_empty!41795)))

(declare-fun b!6364504 () Bool)

(declare-fun tp!1772253 () Bool)

(declare-fun tp!1772249 () Bool)

(assert (=> b!6364504 (= e!3864476 (and tp!1772253 tp!1772249))))

(assert (=> b!6363433 (= tp!1771953 e!3864476)))

(assert (= (and b!6363433 ((_ is ElementMatch!16271) (regTwo!33055 (regTwo!33055 r!7292)))) b!6364503))

(assert (= (and b!6363433 ((_ is Concat!25116) (regTwo!33055 (regTwo!33055 r!7292)))) b!6364504))

(assert (= (and b!6363433 ((_ is Star!16271) (regTwo!33055 (regTwo!33055 r!7292)))) b!6364505))

(assert (= (and b!6363433 ((_ is Union!16271) (regTwo!33055 (regTwo!33055 r!7292)))) b!6364506))

(declare-fun condSetEmpty!43362 () Bool)

(assert (=> setNonEmpty!43354 (= condSetEmpty!43362 (= setRest!43354 ((as const (Array Context!11310 Bool)) false)))))

(declare-fun setRes!43362 () Bool)

(assert (=> setNonEmpty!43354 (= tp!1771962 setRes!43362)))

(declare-fun setIsEmpty!43362 () Bool)

(assert (=> setIsEmpty!43362 setRes!43362))

(declare-fun tp!1772255 () Bool)

(declare-fun setNonEmpty!43362 () Bool)

(declare-fun e!3864477 () Bool)

(declare-fun setElem!43362 () Context!11310)

(assert (=> setNonEmpty!43362 (= setRes!43362 (and tp!1772255 (inv!83924 setElem!43362) e!3864477))))

(declare-fun setRest!43362 () (InoxSet Context!11310))

(assert (=> setNonEmpty!43362 (= setRest!43354 ((_ map or) (store ((as const (Array Context!11310 Bool)) false) setElem!43362 true) setRest!43362))))

(declare-fun b!6364507 () Bool)

(declare-fun tp!1772254 () Bool)

(assert (=> b!6364507 (= e!3864477 tp!1772254)))

(assert (= (and setNonEmpty!43354 condSetEmpty!43362) setIsEmpty!43362))

(assert (= (and setNonEmpty!43354 (not condSetEmpty!43362)) setNonEmpty!43362))

(assert (= setNonEmpty!43362 b!6364507))

(declare-fun m!7169028 () Bool)

(assert (=> setNonEmpty!43362 m!7169028))

(declare-fun b!6364510 () Bool)

(declare-fun e!3864478 () Bool)

(declare-fun tp!1772259 () Bool)

(assert (=> b!6364510 (= e!3864478 tp!1772259)))

(declare-fun b!6364511 () Bool)

(declare-fun tp!1772258 () Bool)

(declare-fun tp!1772257 () Bool)

(assert (=> b!6364511 (= e!3864478 (and tp!1772258 tp!1772257))))

(declare-fun b!6364508 () Bool)

(assert (=> b!6364508 (= e!3864478 tp_is_empty!41795)))

(declare-fun b!6364509 () Bool)

(declare-fun tp!1772260 () Bool)

(declare-fun tp!1772256 () Bool)

(assert (=> b!6364509 (= e!3864478 (and tp!1772260 tp!1772256))))

(assert (=> b!6363445 (= tp!1771971 e!3864478)))

(assert (= (and b!6363445 ((_ is ElementMatch!16271) (reg!16600 (regTwo!33054 r!7292)))) b!6364508))

(assert (= (and b!6363445 ((_ is Concat!25116) (reg!16600 (regTwo!33054 r!7292)))) b!6364509))

(assert (= (and b!6363445 ((_ is Star!16271) (reg!16600 (regTwo!33054 r!7292)))) b!6364510))

(assert (= (and b!6363445 ((_ is Union!16271) (reg!16600 (regTwo!33054 r!7292)))) b!6364511))

(declare-fun b!6364512 () Bool)

(declare-fun e!3864479 () Bool)

(declare-fun tp!1772261 () Bool)

(declare-fun tp!1772262 () Bool)

(assert (=> b!6364512 (= e!3864479 (and tp!1772261 tp!1772262))))

(assert (=> b!6363438 (= tp!1771961 e!3864479)))

(assert (= (and b!6363438 ((_ is Cons!64988) (exprs!6155 setElem!43354))) b!6364512))

(declare-fun b!6364515 () Bool)

(declare-fun e!3864480 () Bool)

(declare-fun tp!1772266 () Bool)

(assert (=> b!6364515 (= e!3864480 tp!1772266)))

(declare-fun b!6364516 () Bool)

(declare-fun tp!1772265 () Bool)

(declare-fun tp!1772264 () Bool)

(assert (=> b!6364516 (= e!3864480 (and tp!1772265 tp!1772264))))

(declare-fun b!6364513 () Bool)

(assert (=> b!6364513 (= e!3864480 tp_is_empty!41795)))

(declare-fun b!6364514 () Bool)

(declare-fun tp!1772267 () Bool)

(declare-fun tp!1772263 () Bool)

(assert (=> b!6364514 (= e!3864480 (and tp!1772267 tp!1772263))))

(assert (=> b!6363446 (= tp!1771970 e!3864480)))

(assert (= (and b!6363446 ((_ is ElementMatch!16271) (regOne!33055 (regTwo!33054 r!7292)))) b!6364513))

(assert (= (and b!6363446 ((_ is Concat!25116) (regOne!33055 (regTwo!33054 r!7292)))) b!6364514))

(assert (= (and b!6363446 ((_ is Star!16271) (regOne!33055 (regTwo!33054 r!7292)))) b!6364515))

(assert (= (and b!6363446 ((_ is Union!16271) (regOne!33055 (regTwo!33054 r!7292)))) b!6364516))

(declare-fun b!6364519 () Bool)

(declare-fun e!3864481 () Bool)

(declare-fun tp!1772271 () Bool)

(assert (=> b!6364519 (= e!3864481 tp!1772271)))

(declare-fun b!6364520 () Bool)

(declare-fun tp!1772270 () Bool)

(declare-fun tp!1772269 () Bool)

(assert (=> b!6364520 (= e!3864481 (and tp!1772270 tp!1772269))))

(declare-fun b!6364517 () Bool)

(assert (=> b!6364517 (= e!3864481 tp_is_empty!41795)))

(declare-fun b!6364518 () Bool)

(declare-fun tp!1772272 () Bool)

(declare-fun tp!1772268 () Bool)

(assert (=> b!6364518 (= e!3864481 (and tp!1772272 tp!1772268))))

(assert (=> b!6363446 (= tp!1771969 e!3864481)))

(assert (= (and b!6363446 ((_ is ElementMatch!16271) (regTwo!33055 (regTwo!33054 r!7292)))) b!6364517))

(assert (= (and b!6363446 ((_ is Concat!25116) (regTwo!33055 (regTwo!33054 r!7292)))) b!6364518))

(assert (= (and b!6363446 ((_ is Star!16271) (regTwo!33055 (regTwo!33054 r!7292)))) b!6364519))

(assert (= (and b!6363446 ((_ is Union!16271) (regTwo!33055 (regTwo!33054 r!7292)))) b!6364520))

(declare-fun b!6364523 () Bool)

(declare-fun e!3864482 () Bool)

(declare-fun tp!1772276 () Bool)

(assert (=> b!6364523 (= e!3864482 tp!1772276)))

(declare-fun b!6364524 () Bool)

(declare-fun tp!1772275 () Bool)

(declare-fun tp!1772274 () Bool)

(assert (=> b!6364524 (= e!3864482 (and tp!1772275 tp!1772274))))

(declare-fun b!6364521 () Bool)

(assert (=> b!6364521 (= e!3864482 tp_is_empty!41795)))

(declare-fun b!6364522 () Bool)

(declare-fun tp!1772277 () Bool)

(declare-fun tp!1772273 () Bool)

(assert (=> b!6364522 (= e!3864482 (and tp!1772277 tp!1772273))))

(assert (=> b!6363429 (= tp!1771949 e!3864482)))

(assert (= (and b!6363429 ((_ is ElementMatch!16271) (regOne!33055 (regOne!33055 r!7292)))) b!6364521))

(assert (= (and b!6363429 ((_ is Concat!25116) (regOne!33055 (regOne!33055 r!7292)))) b!6364522))

(assert (= (and b!6363429 ((_ is Star!16271) (regOne!33055 (regOne!33055 r!7292)))) b!6364523))

(assert (= (and b!6363429 ((_ is Union!16271) (regOne!33055 (regOne!33055 r!7292)))) b!6364524))

(declare-fun b!6364527 () Bool)

(declare-fun e!3864483 () Bool)

(declare-fun tp!1772281 () Bool)

(assert (=> b!6364527 (= e!3864483 tp!1772281)))

(declare-fun b!6364528 () Bool)

(declare-fun tp!1772280 () Bool)

(declare-fun tp!1772279 () Bool)

(assert (=> b!6364528 (= e!3864483 (and tp!1772280 tp!1772279))))

(declare-fun b!6364525 () Bool)

(assert (=> b!6364525 (= e!3864483 tp_is_empty!41795)))

(declare-fun b!6364526 () Bool)

(declare-fun tp!1772282 () Bool)

(declare-fun tp!1772278 () Bool)

(assert (=> b!6364526 (= e!3864483 (and tp!1772282 tp!1772278))))

(assert (=> b!6363429 (= tp!1771948 e!3864483)))

(assert (= (and b!6363429 ((_ is ElementMatch!16271) (regTwo!33055 (regOne!33055 r!7292)))) b!6364525))

(assert (= (and b!6363429 ((_ is Concat!25116) (regTwo!33055 (regOne!33055 r!7292)))) b!6364526))

(assert (= (and b!6363429 ((_ is Star!16271) (regTwo!33055 (regOne!33055 r!7292)))) b!6364527))

(assert (= (and b!6363429 ((_ is Union!16271) (regTwo!33055 (regOne!33055 r!7292)))) b!6364528))

(declare-fun b!6364531 () Bool)

(declare-fun e!3864484 () Bool)

(declare-fun tp!1772286 () Bool)

(assert (=> b!6364531 (= e!3864484 tp!1772286)))

(declare-fun b!6364532 () Bool)

(declare-fun tp!1772285 () Bool)

(declare-fun tp!1772284 () Bool)

(assert (=> b!6364532 (= e!3864484 (and tp!1772285 tp!1772284))))

(declare-fun b!6364529 () Bool)

(assert (=> b!6364529 (= e!3864484 tp_is_empty!41795)))

(declare-fun b!6364530 () Bool)

(declare-fun tp!1772287 () Bool)

(declare-fun tp!1772283 () Bool)

(assert (=> b!6364530 (= e!3864484 (and tp!1772287 tp!1772283))))

(assert (=> b!6363444 (= tp!1771972 e!3864484)))

(assert (= (and b!6363444 ((_ is ElementMatch!16271) (regOne!33054 (regTwo!33054 r!7292)))) b!6364529))

(assert (= (and b!6363444 ((_ is Concat!25116) (regOne!33054 (regTwo!33054 r!7292)))) b!6364530))

(assert (= (and b!6363444 ((_ is Star!16271) (regOne!33054 (regTwo!33054 r!7292)))) b!6364531))

(assert (= (and b!6363444 ((_ is Union!16271) (regOne!33054 (regTwo!33054 r!7292)))) b!6364532))

(declare-fun b!6364535 () Bool)

(declare-fun e!3864485 () Bool)

(declare-fun tp!1772291 () Bool)

(assert (=> b!6364535 (= e!3864485 tp!1772291)))

(declare-fun b!6364536 () Bool)

(declare-fun tp!1772290 () Bool)

(declare-fun tp!1772289 () Bool)

(assert (=> b!6364536 (= e!3864485 (and tp!1772290 tp!1772289))))

(declare-fun b!6364533 () Bool)

(assert (=> b!6364533 (= e!3864485 tp_is_empty!41795)))

(declare-fun b!6364534 () Bool)

(declare-fun tp!1772292 () Bool)

(declare-fun tp!1772288 () Bool)

(assert (=> b!6364534 (= e!3864485 (and tp!1772292 tp!1772288))))

(assert (=> b!6363444 (= tp!1771968 e!3864485)))

(assert (= (and b!6363444 ((_ is ElementMatch!16271) (regTwo!33054 (regTwo!33054 r!7292)))) b!6364533))

(assert (= (and b!6363444 ((_ is Concat!25116) (regTwo!33054 (regTwo!33054 r!7292)))) b!6364534))

(assert (= (and b!6363444 ((_ is Star!16271) (regTwo!33054 (regTwo!33054 r!7292)))) b!6364535))

(assert (= (and b!6363444 ((_ is Union!16271) (regTwo!33054 (regTwo!33054 r!7292)))) b!6364536))

(declare-fun b!6364539 () Bool)

(declare-fun e!3864486 () Bool)

(declare-fun tp!1772296 () Bool)

(assert (=> b!6364539 (= e!3864486 tp!1772296)))

(declare-fun b!6364540 () Bool)

(declare-fun tp!1772295 () Bool)

(declare-fun tp!1772294 () Bool)

(assert (=> b!6364540 (= e!3864486 (and tp!1772295 tp!1772294))))

(declare-fun b!6364537 () Bool)

(assert (=> b!6364537 (= e!3864486 tp_is_empty!41795)))

(declare-fun b!6364538 () Bool)

(declare-fun tp!1772297 () Bool)

(declare-fun tp!1772293 () Bool)

(assert (=> b!6364538 (= e!3864486 (and tp!1772297 tp!1772293))))

(assert (=> b!6363464 (= tp!1771990 e!3864486)))

(assert (= (and b!6363464 ((_ is ElementMatch!16271) (h!71436 (exprs!6155 (h!71437 zl!343))))) b!6364537))

(assert (= (and b!6363464 ((_ is Concat!25116) (h!71436 (exprs!6155 (h!71437 zl!343))))) b!6364538))

(assert (= (and b!6363464 ((_ is Star!16271) (h!71436 (exprs!6155 (h!71437 zl!343))))) b!6364539))

(assert (= (and b!6363464 ((_ is Union!16271) (h!71436 (exprs!6155 (h!71437 zl!343))))) b!6364540))

(declare-fun b!6364541 () Bool)

(declare-fun e!3864487 () Bool)

(declare-fun tp!1772298 () Bool)

(declare-fun tp!1772299 () Bool)

(assert (=> b!6364541 (= e!3864487 (and tp!1772298 tp!1772299))))

(assert (=> b!6363464 (= tp!1771991 e!3864487)))

(assert (= (and b!6363464 ((_ is Cons!64988) (t!378706 (exprs!6155 (h!71437 zl!343))))) b!6364541))

(declare-fun b!6364544 () Bool)

(declare-fun e!3864488 () Bool)

(declare-fun tp!1772303 () Bool)

(assert (=> b!6364544 (= e!3864488 tp!1772303)))

(declare-fun b!6364545 () Bool)

(declare-fun tp!1772302 () Bool)

(declare-fun tp!1772301 () Bool)

(assert (=> b!6364545 (= e!3864488 (and tp!1772302 tp!1772301))))

(declare-fun b!6364542 () Bool)

(assert (=> b!6364542 (= e!3864488 tp_is_empty!41795)))

(declare-fun b!6364543 () Bool)

(declare-fun tp!1772304 () Bool)

(declare-fun tp!1772300 () Bool)

(assert (=> b!6364543 (= e!3864488 (and tp!1772304 tp!1772300))))

(assert (=> b!6363427 (= tp!1771951 e!3864488)))

(assert (= (and b!6363427 ((_ is ElementMatch!16271) (regOne!33054 (regOne!33055 r!7292)))) b!6364542))

(assert (= (and b!6363427 ((_ is Concat!25116) (regOne!33054 (regOne!33055 r!7292)))) b!6364543))

(assert (= (and b!6363427 ((_ is Star!16271) (regOne!33054 (regOne!33055 r!7292)))) b!6364544))

(assert (= (and b!6363427 ((_ is Union!16271) (regOne!33054 (regOne!33055 r!7292)))) b!6364545))

(declare-fun b!6364548 () Bool)

(declare-fun e!3864489 () Bool)

(declare-fun tp!1772308 () Bool)

(assert (=> b!6364548 (= e!3864489 tp!1772308)))

(declare-fun b!6364549 () Bool)

(declare-fun tp!1772307 () Bool)

(declare-fun tp!1772306 () Bool)

(assert (=> b!6364549 (= e!3864489 (and tp!1772307 tp!1772306))))

(declare-fun b!6364546 () Bool)

(assert (=> b!6364546 (= e!3864489 tp_is_empty!41795)))

(declare-fun b!6364547 () Bool)

(declare-fun tp!1772309 () Bool)

(declare-fun tp!1772305 () Bool)

(assert (=> b!6364547 (= e!3864489 (and tp!1772309 tp!1772305))))

(assert (=> b!6363427 (= tp!1771947 e!3864489)))

(assert (= (and b!6363427 ((_ is ElementMatch!16271) (regTwo!33054 (regOne!33055 r!7292)))) b!6364546))

(assert (= (and b!6363427 ((_ is Concat!25116) (regTwo!33054 (regOne!33055 r!7292)))) b!6364547))

(assert (= (and b!6363427 ((_ is Star!16271) (regTwo!33054 (regOne!33055 r!7292)))) b!6364548))

(assert (= (and b!6363427 ((_ is Union!16271) (regTwo!33054 (regOne!33055 r!7292)))) b!6364549))

(declare-fun b!6364552 () Bool)

(declare-fun e!3864490 () Bool)

(declare-fun tp!1772313 () Bool)

(assert (=> b!6364552 (= e!3864490 tp!1772313)))

(declare-fun b!6364553 () Bool)

(declare-fun tp!1772312 () Bool)

(declare-fun tp!1772311 () Bool)

(assert (=> b!6364553 (= e!3864490 (and tp!1772312 tp!1772311))))

(declare-fun b!6364550 () Bool)

(assert (=> b!6364550 (= e!3864490 tp_is_empty!41795)))

(declare-fun b!6364551 () Bool)

(declare-fun tp!1772314 () Bool)

(declare-fun tp!1772310 () Bool)

(assert (=> b!6364551 (= e!3864490 (and tp!1772314 tp!1772310))))

(assert (=> b!6363428 (= tp!1771950 e!3864490)))

(assert (= (and b!6363428 ((_ is ElementMatch!16271) (reg!16600 (regOne!33055 r!7292)))) b!6364550))

(assert (= (and b!6363428 ((_ is Concat!25116) (reg!16600 (regOne!33055 r!7292)))) b!6364551))

(assert (= (and b!6363428 ((_ is Star!16271) (reg!16600 (regOne!33055 r!7292)))) b!6364552))

(assert (= (and b!6363428 ((_ is Union!16271) (reg!16600 (regOne!33055 r!7292)))) b!6364553))

(declare-fun b_lambda!241919 () Bool)

(assert (= b_lambda!241915 (or b!6362719 b_lambda!241919)))

(assert (=> d!1996519 d!1996111))

(declare-fun b_lambda!241921 () Bool)

(assert (= b_lambda!241893 (or d!1996053 b_lambda!241921)))

(declare-fun bs!1594590 () Bool)

(declare-fun d!1996525 () Bool)

(assert (= bs!1594590 (and d!1996525 d!1996053)))

(assert (=> bs!1594590 (= (dynLambda!25781 lambda!350531 (h!71436 (exprs!6155 (h!71437 zl!343)))) (validRegex!8007 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(declare-fun m!7169030 () Bool)

(assert (=> bs!1594590 m!7169030))

(assert (=> b!6363762 d!1996525))

(declare-fun b_lambda!241923 () Bool)

(assert (= b_lambda!241895 (or d!1996091 b_lambda!241923)))

(declare-fun bs!1594591 () Bool)

(declare-fun d!1996527 () Bool)

(assert (= bs!1594591 (and d!1996527 d!1996091)))

(assert (=> bs!1594591 (= (dynLambda!25781 lambda!350536 (h!71436 (exprs!6155 (h!71437 zl!343)))) (validRegex!8007 (h!71436 (exprs!6155 (h!71437 zl!343)))))))

(assert (=> bs!1594591 m!7169030))

(assert (=> b!6363843 d!1996527))

(declare-fun b_lambda!241925 () Bool)

(assert (= b_lambda!241889 (or d!1995987 b_lambda!241925)))

(declare-fun bs!1594592 () Bool)

(declare-fun d!1996529 () Bool)

(assert (= bs!1594592 (and d!1996529 d!1995987)))

(assert (=> bs!1594592 (= (dynLambda!25781 lambda!350505 (h!71436 (unfocusZipperList!1692 zl!343))) (validRegex!8007 (h!71436 (unfocusZipperList!1692 zl!343))))))

(declare-fun m!7169032 () Bool)

(assert (=> bs!1594592 m!7169032))

(assert (=> b!6363719 d!1996529))

(declare-fun b_lambda!241927 () Bool)

(assert (= b_lambda!241885 (or d!1996089 b_lambda!241927)))

(declare-fun bs!1594593 () Bool)

(declare-fun d!1996531 () Bool)

(assert (= bs!1594593 (and d!1996531 d!1996089)))

(assert (=> bs!1594593 (= (dynLambda!25781 lambda!350535 (h!71436 (exprs!6155 setElem!43348))) (validRegex!8007 (h!71436 (exprs!6155 setElem!43348))))))

(declare-fun m!7169034 () Bool)

(assert (=> bs!1594593 m!7169034))

(assert (=> b!6363611 d!1996531))

(declare-fun b_lambda!241929 () Bool)

(assert (= b_lambda!241887 (or d!1996077 b_lambda!241929)))

(declare-fun bs!1594594 () Bool)

(declare-fun d!1996533 () Bool)

(assert (= bs!1594594 (and d!1996533 d!1996077)))

(assert (=> bs!1594594 (= (dynLambda!25781 lambda!350534 (h!71436 (exprs!6155 lt!2367010))) (validRegex!8007 (h!71436 (exprs!6155 lt!2367010))))))

(declare-fun m!7169036 () Bool)

(assert (=> bs!1594594 m!7169036))

(assert (=> b!6363708 d!1996533))

(declare-fun b_lambda!241931 () Bool)

(assert (= b_lambda!241917 (or d!1995995 b_lambda!241931)))

(declare-fun bs!1594595 () Bool)

(declare-fun d!1996535 () Bool)

(assert (= bs!1594595 (and d!1996535 d!1995995)))

(assert (=> bs!1594595 (= (dynLambda!25781 lambda!350512 (h!71436 lt!2367038)) (validRegex!8007 (h!71436 lt!2367038)))))

(declare-fun m!7169038 () Bool)

(assert (=> bs!1594595 m!7169038))

(assert (=> b!6364436 d!1996535))

(check-sat (not d!1996299) (not b!6363692) (not b!6364470) (not b!6363709) (not d!1996403) (not bm!543110) (not b!6364448) (not b!6364331) (not b!6364516) (not b!6364492) (not b!6364485) (not b!6364505) (not b!6363785) (not b!6363673) (not b!6363858) (not b!6364451) (not bm!543051) (not bm!543179) (not d!1996337) (not b!6364515) (not b!6364484) (not bm!543046) (not b!6364410) (not bs!1594594) (not b_lambda!241875) (not b!6364541) (not b!6364548) (not b!6363631) (not d!1996293) (not b!6364502) (not b!6363698) (not d!1996463) (not b!6364441) (not b!6363822) (not bm!543181) (not d!1996503) (not b!6364333) (not b!6364486) (not b!6364020) (not b!6364509) (not b!6364125) (not b!6363701) (not b!6364352) (not b!6364417) (not b!6363619) (not b!6364544) (not bm!543079) (not d!1996519) (not b!6363622) (not bm!543112) (not bm!543081) (not b!6363614) (not bm!543048) (not b!6363644) (not b!6363805) (not b!6363961) (not setNonEmpty!43362) (not b!6364514) (not bm!543066) (not b!6364477) (not bm!543190) (not b!6364538) (not b!6364121) (not setNonEmpty!43360) (not bm!543188) (not b!6363668) (not b!6364357) (not d!1996451) (not bm!543041) (not d!1996339) (not d!1996405) (not bm!543193) (not b!6363612) (not b!6364526) (not b!6363770) (not b!6363893) (not b!6364326) (not d!1996499) (not b!6364431) (not b!6364490) (not b!6364457) (not b!6364350) (not d!1996385) (not b!6364459) (not bm!543149) (not b!6364489) (not b!6364338) (not b!6364539) (not b!6363997) (not b!6363643) (not b!6364498) (not b!6364532) (not b_lambda!241929) (not b!6364445) (not b!6363695) (not b!6363700) (not b!6363793) (not b!6364497) (not b!6364330) (not b!6364438) (not d!1996189) (not b!6364453) (not bm!543077) (not d!1996247) (not bs!1594592) (not d!1996477) (not b!6363937) (not b!6363794) (not b!6364335) (not b!6364022) (not b!6363710) (not d!1996491) (not b!6363654) (not bm!543197) (not b!6364534) (not bm!543186) (not b!6364520) (not b!6364402) (not b!6364127) (not b!6364527) (not b!6364536) (not bm!543057) (not b!6364404) (not d!1996361) (not b!6364493) (not bs!1594593) (not b!6364122) (not b!6364463) (not b!6364439) (not b!6364360) (not b!6364511) (not d!1996383) (not b!6364437) (not b!6364552) (not b!6363676) (not b!6364013) (not bs!1594591) (not bm!543114) (not b!6364504) (not d!1996439) (not b!6364488) (not b!6364440) (not b!6364465) (not b!6364409) (not bm!543184) (not b!6364019) (not bm!543189) (not bm!543118) (not d!1996379) (not bm!543119) (not b!6364365) (not b!6364545) (not b!6363671) (not b!6364518) (not b!6364480) (not b!6364456) (not b!6364553) (not b!6364507) (not b!6363720) (not bm!543199) (not d!1996257) (not b!6364449) (not bm!543040) (not d!1996343) (not b!6364547) (not b!6363894) (not bm!543153) (not bm!543037) (not b!6363821) (not d!1996495) (not d!1996237) (not b!6364551) (not b!6364549) (not d!1996245) (not d!1996311) (not b!6363842) (not b!6363686) (not b!6363674) (not b!6364452) (not b!6364464) (not b!6363645) (not bm!543055) (not b!6364407) (not d!1996501) (not b!6364494) (not b!6363844) (not b!6364496) (not bm!543047) (not b!6364443) (not b!6364380) (not b!6364506) (not b!6364540) (not d!1996331) (not b!6364144) (not d!1996481) (not b!6363792) (not bm!543092) (not b!6363620) (not b_lambda!241925) (not b!6364336) (not d!1996285) (not bm!543195) (not d!1996297) (not d!1996517) (not b!6364510) (not b!6364393) (not b!6364501) (not b!6364355) (not b!6364535) (not b!6364523) (not b!6363763) (not d!1996191) (not b!6364524) (not b!6364472) (not bm!543053) (not d!1996173) (not d!1996507) (not b_lambda!241921) tp_is_empty!41795 (not b!6364340) (not b!6364519) (not b!6364474) (not b!6364531) (not b!6363739) (not b!6364461) (not b!6364500) (not bm!543039) (not bm!543035) (not b!6363613) (not b_lambda!241919) (not b!6364343) (not b!6363690) (not bm!543180) (not d!1996421) (not bs!1594595) (not b!6364469) (not bm!543064) (not b!6364528) (not d!1996215) (not b!6363696) (not b!6363990) (not bm!543071) (not bm!543062) (not d!1996365) (not d!1996479) (not b_lambda!241923) (not b!6364406) (not bm!543076) (not bm!543058) (not bm!543192) (not bm!543073) (not b!6364455) (not bm!543069) (not b!6364008) (not b!6364351) (not b!6363727) (not b!6364344) (not bm!543178) (not b!6363936) (not b_lambda!241931) (not bm!543074) (not b!6363784) (not d!1996487) (not d!1996453) (not b!6364339) (not b!6364522) (not bm!543116) (not bs!1594590) (not d!1996345) (not b!6364403) (not b!6364473) (not b!6364543) (not bm!543158) (not b!6364327) (not bm!543036) (not b!6363694) (not d!1996225) (not b!6363879) (not bm!543147) (not b!6364530) (not b!6364476) (not b!6364017) (not b!6363687) (not b!6363617) (not b!6364444) (not b!6364128) (not b!6364460) (not b!6364014) (not b!6364349) (not bm!543045) (not b!6364481) (not b!6363667) (not bm!543157) (not b!6363849) (not b!6363699) (not b!6364358) (not b!6364482) (not b!6364467) (not b!6364447) (not b!6364105) (not bm!543108) (not b_lambda!241927) (not b!6364130) (not b!6364468) (not bm!543093) (not b!6364512) (not bm!543083) (not b!6364478))
(check-sat)
