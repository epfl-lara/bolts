; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637290 () Bool)

(assert start!637290)

(declare-fun b!6483529 () Bool)

(assert (=> b!6483529 true))

(assert (=> b!6483529 true))

(declare-fun lambda!358747 () Int)

(declare-fun lambda!358746 () Int)

(assert (=> b!6483529 (not (= lambda!358747 lambda!358746))))

(assert (=> b!6483529 true))

(assert (=> b!6483529 true))

(declare-fun b!6483517 () Bool)

(assert (=> b!6483517 true))

(declare-fun bs!1644841 () Bool)

(declare-fun b!6483504 () Bool)

(assert (= bs!1644841 (and b!6483504 b!6483529)))

(declare-datatypes ((C!32996 0))(
  ( (C!32997 (val!26200 Int)) )
))
(declare-datatypes ((Regex!16363 0))(
  ( (ElementMatch!16363 (c!1187715 C!32996)) (Concat!25208 (regOne!33238 Regex!16363) (regTwo!33238 Regex!16363)) (EmptyExpr!16363) (Star!16363 (reg!16692 Regex!16363)) (EmptyLang!16363) (Union!16363 (regOne!33239 Regex!16363) (regTwo!33239 Regex!16363)) )
))
(declare-fun r!7292 () Regex!16363)

(declare-fun lt!2387743 () Regex!16363)

(declare-fun lambda!358749 () Int)

(assert (=> bs!1644841 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358749 lambda!358746))))

(assert (=> bs!1644841 (not (= lambda!358749 lambda!358747))))

(assert (=> b!6483504 true))

(assert (=> b!6483504 true))

(assert (=> b!6483504 true))

(declare-fun lambda!358750 () Int)

(assert (=> bs!1644841 (not (= lambda!358750 lambda!358746))))

(assert (=> bs!1644841 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358750 lambda!358747))))

(assert (=> b!6483504 (not (= lambda!358750 lambda!358749))))

(assert (=> b!6483504 true))

(assert (=> b!6483504 true))

(assert (=> b!6483504 true))

(declare-fun bs!1644842 () Bool)

(declare-fun b!6483513 () Bool)

(assert (= bs!1644842 (and b!6483513 b!6483529)))

(declare-datatypes ((List!65388 0))(
  ( (Nil!65264) (Cons!65264 (h!71712 C!32996) (t!379014 List!65388)) )
))
(declare-fun s!2326 () List!65388)

(declare-datatypes ((tuple2!66684 0))(
  ( (tuple2!66685 (_1!36645 List!65388) (_2!36645 List!65388)) )
))
(declare-fun lt!2387733 () tuple2!66684)

(declare-fun lambda!358751 () Int)

(assert (=> bs!1644842 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358751 lambda!358746))))

(assert (=> bs!1644842 (not (= lambda!358751 lambda!358747))))

(declare-fun bs!1644843 () Bool)

(assert (= bs!1644843 (and b!6483513 b!6483504)))

(assert (=> bs!1644843 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358751 lambda!358749))))

(assert (=> bs!1644843 (not (= lambda!358751 lambda!358750))))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(declare-fun lambda!358752 () Int)

(assert (=> bs!1644843 (not (= lambda!358752 lambda!358749))))

(assert (=> bs!1644843 (not (= lambda!358752 lambda!358750))))

(assert (=> b!6483513 (not (= lambda!358752 lambda!358751))))

(assert (=> bs!1644842 (not (= lambda!358752 lambda!358747))))

(assert (=> bs!1644842 (not (= lambda!358752 lambda!358746))))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(declare-fun lambda!358753 () Int)

(assert (=> bs!1644843 (not (= lambda!358753 lambda!358749))))

(assert (=> b!6483513 (not (= lambda!358753 lambda!358752))))

(assert (=> bs!1644843 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358753 lambda!358750))))

(assert (=> b!6483513 (not (= lambda!358753 lambda!358751))))

(assert (=> bs!1644842 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358753 lambda!358747))))

(assert (=> bs!1644842 (not (= lambda!358753 lambda!358746))))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(assert (=> b!6483513 true))

(declare-fun b!6483501 () Bool)

(declare-fun e!3929653 () Bool)

(declare-fun tp!1795834 () Bool)

(assert (=> b!6483501 (= e!3929653 tp!1795834)))

(declare-fun b!6483502 () Bool)

(declare-fun res!2662560 () Bool)

(declare-fun e!3929642 () Bool)

(assert (=> b!6483502 (=> res!2662560 e!3929642)))

(declare-fun lt!2387727 () Regex!16363)

(assert (=> b!6483502 (= res!2662560 (not (= lt!2387727 r!7292)))))

(declare-fun b!6483503 () Bool)

(declare-fun res!2662569 () Bool)

(declare-fun e!3929648 () Bool)

(assert (=> b!6483503 (=> res!2662569 e!3929648)))

(declare-fun isEmpty!37452 (List!65388) Bool)

(assert (=> b!6483503 (= res!2662569 (isEmpty!37452 (_1!36645 lt!2387733)))))

(declare-fun e!3929649 () Bool)

(assert (=> b!6483504 (= e!3929649 e!3929648)))

(declare-fun res!2662554 () Bool)

(assert (=> b!6483504 (=> res!2662554 e!3929648)))

(declare-fun ++!14436 (List!65388 List!65388) List!65388)

(assert (=> b!6483504 (= res!2662554 (not (= (++!14436 (_1!36645 lt!2387733) (_2!36645 lt!2387733)) s!2326)))))

(declare-datatypes ((Option!16254 0))(
  ( (None!16253) (Some!16253 (v!52432 tuple2!66684)) )
))
(declare-fun lt!2387738 () Option!16254)

(declare-fun get!22628 (Option!16254) tuple2!66684)

(assert (=> b!6483504 (= lt!2387733 (get!22628 lt!2387738))))

(declare-fun Exists!3433 (Int) Bool)

(assert (=> b!6483504 (= (Exists!3433 lambda!358749) (Exists!3433 lambda!358750))))

(declare-datatypes ((Unit!158783 0))(
  ( (Unit!158784) )
))
(declare-fun lt!2387763 () Unit!158783)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1970 (Regex!16363 Regex!16363 List!65388) Unit!158783)

(assert (=> b!6483504 (= lt!2387763 (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 lt!2387743 (regTwo!33238 r!7292) s!2326))))

(declare-fun isDefined!12957 (Option!16254) Bool)

(assert (=> b!6483504 (= (isDefined!12957 lt!2387738) (Exists!3433 lambda!358749))))

(declare-fun findConcatSeparation!2668 (Regex!16363 Regex!16363 List!65388 List!65388 List!65388) Option!16254)

(assert (=> b!6483504 (= lt!2387738 (findConcatSeparation!2668 lt!2387743 (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326))))

(declare-fun lt!2387740 () Unit!158783)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2432 (Regex!16363 Regex!16363 List!65388) Unit!158783)

(assert (=> b!6483504 (= lt!2387740 (lemmaFindConcatSeparationEquivalentToExists!2432 lt!2387743 (regTwo!33238 r!7292) s!2326))))

(declare-fun b!6483505 () Bool)

(declare-fun e!3929658 () Unit!158783)

(declare-fun Unit!158785 () Unit!158783)

(assert (=> b!6483505 (= e!3929658 Unit!158785)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65389 0))(
  ( (Nil!65265) (Cons!65265 (h!71713 Regex!16363) (t!379015 List!65389)) )
))
(declare-datatypes ((Context!11494 0))(
  ( (Context!11495 (exprs!6247 List!65389)) )
))
(declare-fun lt!2387731 () (InoxSet Context!11494))

(declare-fun lt!2387777 () Unit!158783)

(declare-fun lt!2387736 () (InoxSet Context!11494))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1194 ((InoxSet Context!11494) (InoxSet Context!11494) List!65388) Unit!158783)

(assert (=> b!6483505 (= lt!2387777 (lemmaZipperConcatMatchesSameAsBothZippers!1194 lt!2387731 lt!2387736 (t!379014 s!2326)))))

(declare-fun res!2662559 () Bool)

(declare-fun matchZipper!2375 ((InoxSet Context!11494) List!65388) Bool)

(assert (=> b!6483505 (= res!2662559 (matchZipper!2375 lt!2387731 (t!379014 s!2326)))))

(declare-fun e!3929644 () Bool)

(assert (=> b!6483505 (=> res!2662559 e!3929644)))

(assert (=> b!6483505 (= (matchZipper!2375 ((_ map or) lt!2387731 lt!2387736) (t!379014 s!2326)) e!3929644)))

(declare-fun b!6483506 () Bool)

(declare-fun e!3929655 () Bool)

(declare-fun tp_is_empty!41979 () Bool)

(assert (=> b!6483506 (= e!3929655 tp_is_empty!41979)))

(declare-fun b!6483507 () Bool)

(declare-fun tp!1795836 () Bool)

(assert (=> b!6483507 (= e!3929655 tp!1795836)))

(declare-fun b!6483508 () Bool)

(declare-fun res!2662565 () Bool)

(declare-fun e!3929650 () Bool)

(assert (=> b!6483508 (=> res!2662565 e!3929650)))

(declare-fun e!3929638 () Bool)

(assert (=> b!6483508 (= res!2662565 e!3929638)))

(declare-fun res!2662580 () Bool)

(assert (=> b!6483508 (=> (not res!2662580) (not e!3929638))))

(get-info :version)

(assert (=> b!6483508 (= res!2662580 ((_ is Concat!25208) (regOne!33238 r!7292)))))

(declare-fun b!6483509 () Bool)

(assert (=> b!6483509 (= e!3929644 (matchZipper!2375 lt!2387736 (t!379014 s!2326)))))

(declare-fun b!6483510 () Bool)

(declare-fun res!2662557 () Bool)

(assert (=> b!6483510 (=> res!2662557 e!3929648)))

(declare-fun matchR!8546 (Regex!16363 List!65388) Bool)

(assert (=> b!6483510 (= res!2662557 (not (matchR!8546 (regTwo!33238 r!7292) (_2!36645 lt!2387733))))))

(declare-fun b!6483511 () Bool)

(declare-fun tp!1795827 () Bool)

(declare-fun tp!1795829 () Bool)

(assert (=> b!6483511 (= e!3929655 (and tp!1795827 tp!1795829))))

(declare-fun b!6483512 () Bool)

(declare-fun res!2662574 () Bool)

(declare-fun e!3929651 () Bool)

(assert (=> b!6483512 (=> res!2662574 e!3929651)))

(assert (=> b!6483512 (= res!2662574 (or ((_ is EmptyExpr!16363) r!7292) ((_ is EmptyLang!16363) r!7292) ((_ is ElementMatch!16363) r!7292) ((_ is Union!16363) r!7292) (not ((_ is Concat!25208) r!7292))))))

(declare-fun e!3929637 () Bool)

(assert (=> b!6483513 (= e!3929648 e!3929637)))

(declare-fun res!2662575 () Bool)

(assert (=> b!6483513 (=> res!2662575 e!3929637)))

(declare-fun lt!2387749 () List!65388)

(assert (=> b!6483513 (= res!2662575 (not (= (_1!36645 lt!2387733) lt!2387749)))))

(declare-fun lt!2387762 () tuple2!66684)

(assert (=> b!6483513 (= lt!2387749 (++!14436 (_1!36645 lt!2387762) (_2!36645 lt!2387762)))))

(declare-fun lt!2387782 () Option!16254)

(assert (=> b!6483513 (= lt!2387762 (get!22628 lt!2387782))))

(assert (=> b!6483513 (= (Exists!3433 lambda!358751) (Exists!3433 lambda!358753))))

(declare-fun lt!2387748 () Unit!158783)

(assert (=> b!6483513 (= lt!2387748 (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)))))

(assert (=> b!6483513 (= (Exists!3433 lambda!358751) (Exists!3433 lambda!358752))))

(declare-fun lt!2387756 () Unit!158783)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!654 (Regex!16363 List!65388) Unit!158783)

(assert (=> b!6483513 (= lt!2387756 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!654 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387733)))))

(assert (=> b!6483513 (= (isDefined!12957 lt!2387782) (Exists!3433 lambda!358751))))

(assert (=> b!6483513 (= lt!2387782 (findConcatSeparation!2668 (reg!16692 (regOne!33238 r!7292)) lt!2387743 Nil!65264 (_1!36645 lt!2387733) (_1!36645 lt!2387733)))))

(declare-fun lt!2387745 () Unit!158783)

(assert (=> b!6483513 (= lt!2387745 (lemmaFindConcatSeparationEquivalentToExists!2432 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)))))

(declare-fun matchRSpec!3464 (Regex!16363 List!65388) Bool)

(assert (=> b!6483513 (matchRSpec!3464 lt!2387743 (_1!36645 lt!2387733))))

(declare-fun lt!2387784 () Unit!158783)

(declare-fun mainMatchTheorem!3464 (Regex!16363 List!65388) Unit!158783)

(assert (=> b!6483513 (= lt!2387784 (mainMatchTheorem!3464 lt!2387743 (_1!36645 lt!2387733)))))

(declare-fun b!6483514 () Bool)

(declare-fun e!3929643 () Bool)

(assert (=> b!6483514 (= e!3929637 e!3929643)))

(declare-fun res!2662571 () Bool)

(assert (=> b!6483514 (=> res!2662571 e!3929643)))

(declare-fun lt!2387767 () List!65388)

(assert (=> b!6483514 (= res!2662571 (not (= lt!2387767 s!2326)))))

(declare-fun lt!2387739 () List!65388)

(assert (=> b!6483514 (= lt!2387767 lt!2387739)))

(declare-fun lt!2387752 () List!65388)

(assert (=> b!6483514 (= lt!2387739 (++!14436 (_1!36645 lt!2387762) lt!2387752))))

(assert (=> b!6483514 (= lt!2387767 (++!14436 lt!2387749 (_2!36645 lt!2387733)))))

(assert (=> b!6483514 (= lt!2387752 (++!14436 (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(declare-fun lt!2387771 () Unit!158783)

(declare-fun lemmaConcatAssociativity!2934 (List!65388 List!65388 List!65388) Unit!158783)

(assert (=> b!6483514 (= lt!2387771 (lemmaConcatAssociativity!2934 (_1!36645 lt!2387762) (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(declare-fun b!6483515 () Bool)

(declare-fun res!2662578 () Bool)

(declare-fun e!3929641 () Bool)

(assert (=> b!6483515 (=> (not res!2662578) (not e!3929641))))

(declare-fun z!1189 () (InoxSet Context!11494))

(declare-datatypes ((List!65390 0))(
  ( (Nil!65266) (Cons!65266 (h!71714 Context!11494) (t!379016 List!65390)) )
))
(declare-fun zl!343 () List!65390)

(declare-fun toList!10147 ((InoxSet Context!11494)) List!65390)

(assert (=> b!6483515 (= res!2662578 (= (toList!10147 z!1189) zl!343))))

(declare-fun b!6483516 () Bool)

(declare-fun e!3929652 () Bool)

(declare-fun lt!2387760 () Bool)

(declare-fun lt!2387759 () Bool)

(assert (=> b!6483516 (= e!3929652 (or (not lt!2387760) lt!2387759))))

(declare-fun e!3929645 () Bool)

(assert (=> b!6483517 (= e!3929645 e!3929650)))

(declare-fun res!2662552 () Bool)

(assert (=> b!6483517 (=> res!2662552 e!3929650)))

(assert (=> b!6483517 (= res!2662552 (or (and ((_ is ElementMatch!16363) (regOne!33238 r!7292)) (= (c!1187715 (regOne!33238 r!7292)) (h!71712 s!2326))) ((_ is Union!16363) (regOne!33238 r!7292))))))

(declare-fun lt!2387775 () Unit!158783)

(assert (=> b!6483517 (= lt!2387775 e!3929658)))

(declare-fun c!1187714 () Bool)

(declare-fun nullable!6356 (Regex!16363) Bool)

(assert (=> b!6483517 (= c!1187714 (nullable!6356 (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun lambda!358748 () Int)

(declare-fun flatMap!1868 ((InoxSet Context!11494) Int) (InoxSet Context!11494))

(declare-fun derivationStepZipperUp!1537 (Context!11494 C!32996) (InoxSet Context!11494))

(assert (=> b!6483517 (= (flatMap!1868 z!1189 lambda!358748) (derivationStepZipperUp!1537 (h!71714 zl!343) (h!71712 s!2326)))))

(declare-fun lt!2387751 () Unit!158783)

(declare-fun lemmaFlatMapOnSingletonSet!1394 ((InoxSet Context!11494) Context!11494 Int) Unit!158783)

(assert (=> b!6483517 (= lt!2387751 (lemmaFlatMapOnSingletonSet!1394 z!1189 (h!71714 zl!343) lambda!358748))))

(declare-fun lt!2387726 () Context!11494)

(assert (=> b!6483517 (= lt!2387736 (derivationStepZipperUp!1537 lt!2387726 (h!71712 s!2326)))))

(declare-fun derivationStepZipperDown!1611 (Regex!16363 Context!11494 C!32996) (InoxSet Context!11494))

(assert (=> b!6483517 (= lt!2387731 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 (h!71714 zl!343))) lt!2387726 (h!71712 s!2326)))))

(assert (=> b!6483517 (= lt!2387726 (Context!11495 (t!379015 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun lt!2387746 () (InoxSet Context!11494))

(assert (=> b!6483517 (= lt!2387746 (derivationStepZipperUp!1537 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343))))) (h!71712 s!2326)))))

(declare-fun b!6483518 () Bool)

(declare-fun res!2662579 () Bool)

(assert (=> b!6483518 (=> res!2662579 e!3929650)))

(assert (=> b!6483518 (= res!2662579 (or ((_ is Concat!25208) (regOne!33238 r!7292)) (not ((_ is Star!16363) (regOne!33238 r!7292)))))))

(declare-fun res!2662555 () Bool)

(assert (=> start!637290 (=> (not res!2662555) (not e!3929641))))

(declare-fun validRegex!8099 (Regex!16363) Bool)

(assert (=> start!637290 (= res!2662555 (validRegex!8099 r!7292))))

(assert (=> start!637290 e!3929641))

(assert (=> start!637290 e!3929655))

(declare-fun condSetEmpty!44169 () Bool)

(assert (=> start!637290 (= condSetEmpty!44169 (= z!1189 ((as const (Array Context!11494 Bool)) false)))))

(declare-fun setRes!44169 () Bool)

(assert (=> start!637290 setRes!44169))

(declare-fun e!3929659 () Bool)

(assert (=> start!637290 e!3929659))

(declare-fun e!3929640 () Bool)

(assert (=> start!637290 e!3929640))

(declare-fun b!6483519 () Bool)

(declare-fun e!3929657 () Bool)

(assert (=> b!6483519 (= e!3929650 e!3929657)))

(declare-fun res!2662562 () Bool)

(assert (=> b!6483519 (=> res!2662562 e!3929657)))

(declare-fun lt!2387764 () (InoxSet Context!11494))

(assert (=> b!6483519 (= res!2662562 (not (= lt!2387731 lt!2387764)))))

(declare-fun lt!2387737 () Context!11494)

(assert (=> b!6483519 (= lt!2387764 (derivationStepZipperDown!1611 (reg!16692 (regOne!33238 r!7292)) lt!2387737 (h!71712 s!2326)))))

(declare-fun lt!2387781 () List!65389)

(assert (=> b!6483519 (= lt!2387737 (Context!11495 lt!2387781))))

(assert (=> b!6483519 (= lt!2387781 (Cons!65265 lt!2387743 (t!379015 (exprs!6247 (h!71714 zl!343)))))))

(assert (=> b!6483519 (= lt!2387743 (Star!16363 (reg!16692 (regOne!33238 r!7292))))))

(declare-fun b!6483520 () Bool)

(declare-fun e!3929646 () Bool)

(declare-fun lt!2387768 () Bool)

(assert (=> b!6483520 (= e!3929646 lt!2387768)))

(declare-fun b!6483521 () Bool)

(declare-fun tp!1795833 () Bool)

(declare-fun tp!1795835 () Bool)

(assert (=> b!6483521 (= e!3929655 (and tp!1795833 tp!1795835))))

(declare-fun b!6483522 () Bool)

(declare-fun res!2662566 () Bool)

(assert (=> b!6483522 (=> res!2662566 e!3929651)))

(declare-fun generalisedConcat!1960 (List!65389) Regex!16363)

(assert (=> b!6483522 (= res!2662566 (not (= r!7292 (generalisedConcat!1960 (exprs!6247 (h!71714 zl!343))))))))

(declare-fun b!6483523 () Bool)

(declare-fun res!2662582 () Bool)

(assert (=> b!6483523 (=> res!2662582 e!3929645)))

(declare-fun isEmpty!37453 (List!65389) Bool)

(assert (=> b!6483523 (= res!2662582 (isEmpty!37453 (t!379015 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun b!6483524 () Bool)

(declare-fun res!2662583 () Bool)

(assert (=> b!6483524 (=> res!2662583 e!3929643)))

(assert (=> b!6483524 (= res!2662583 (not (matchR!8546 lt!2387743 (_2!36645 lt!2387762))))))

(declare-fun b!6483525 () Bool)

(declare-fun res!2662551 () Bool)

(assert (=> b!6483525 (=> res!2662551 e!3929648)))

(assert (=> b!6483525 (= res!2662551 (not (matchR!8546 lt!2387743 (_1!36645 lt!2387733))))))

(declare-fun b!6483526 () Bool)

(declare-fun e!3929639 () Bool)

(declare-fun e!3929654 () Bool)

(assert (=> b!6483526 (= e!3929639 e!3929654)))

(declare-fun res!2662577 () Bool)

(assert (=> b!6483526 (=> res!2662577 e!3929654)))

(declare-fun lt!2387754 () Context!11494)

(declare-fun lt!2387730 () Regex!16363)

(declare-fun unfocusZipper!2105 (List!65390) Regex!16363)

(assert (=> b!6483526 (= res!2662577 (not (= (unfocusZipper!2105 (Cons!65266 lt!2387754 Nil!65266)) lt!2387730)))))

(declare-fun lt!2387772 () Regex!16363)

(assert (=> b!6483526 (= lt!2387730 (Concat!25208 (reg!16692 (regOne!33238 r!7292)) lt!2387772))))

(declare-fun setIsEmpty!44169 () Bool)

(assert (=> setIsEmpty!44169 setRes!44169))

(declare-fun b!6483527 () Bool)

(declare-fun e!3929660 () Bool)

(assert (=> b!6483527 (= e!3929660 (not e!3929651))))

(declare-fun res!2662556 () Bool)

(assert (=> b!6483527 (=> res!2662556 e!3929651)))

(assert (=> b!6483527 (= res!2662556 (not ((_ is Cons!65266) zl!343)))))

(assert (=> b!6483527 (= lt!2387760 lt!2387759)))

(assert (=> b!6483527 (= lt!2387759 (matchRSpec!3464 r!7292 s!2326))))

(assert (=> b!6483527 (= lt!2387760 (matchR!8546 r!7292 s!2326))))

(declare-fun lt!2387755 () Unit!158783)

(assert (=> b!6483527 (= lt!2387755 (mainMatchTheorem!3464 r!7292 s!2326))))

(declare-fun b!6483528 () Bool)

(declare-fun tp!1795832 () Bool)

(assert (=> b!6483528 (= e!3929640 (and tp_is_empty!41979 tp!1795832))))

(assert (=> b!6483529 (= e!3929651 e!3929645)))

(declare-fun res!2662550 () Bool)

(assert (=> b!6483529 (=> res!2662550 e!3929645)))

(declare-fun lt!2387765 () Bool)

(assert (=> b!6483529 (= res!2662550 (or (not (= lt!2387760 lt!2387765)) ((_ is Nil!65264) s!2326)))))

(assert (=> b!6483529 (= (Exists!3433 lambda!358746) (Exists!3433 lambda!358747))))

(declare-fun lt!2387779 () Unit!158783)

(assert (=> b!6483529 (= lt!2387779 (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326))))

(assert (=> b!6483529 (= lt!2387765 (Exists!3433 lambda!358746))))

(assert (=> b!6483529 (= lt!2387765 (isDefined!12957 (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326)))))

(declare-fun lt!2387774 () Unit!158783)

(assert (=> b!6483529 (= lt!2387774 (lemmaFindConcatSeparationEquivalentToExists!2432 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326))))

(declare-fun b!6483530 () Bool)

(declare-fun e!3929656 () Bool)

(declare-fun tp!1795828 () Bool)

(assert (=> b!6483530 (= e!3929656 tp!1795828)))

(declare-fun b!6483531 () Bool)

(assert (=> b!6483531 (= e!3929657 e!3929642)))

(declare-fun res!2662563 () Bool)

(assert (=> b!6483531 (=> res!2662563 e!3929642)))

(declare-fun lt!2387761 () (InoxSet Context!11494))

(assert (=> b!6483531 (= res!2662563 (not (= lt!2387761 lt!2387764)))))

(declare-fun lt!2387757 () (InoxSet Context!11494))

(assert (=> b!6483531 (= (flatMap!1868 lt!2387757 lambda!358748) (derivationStepZipperUp!1537 lt!2387754 (h!71712 s!2326)))))

(declare-fun lt!2387729 () Unit!158783)

(assert (=> b!6483531 (= lt!2387729 (lemmaFlatMapOnSingletonSet!1394 lt!2387757 lt!2387754 lambda!358748))))

(declare-fun lt!2387732 () (InoxSet Context!11494))

(assert (=> b!6483531 (= lt!2387732 (derivationStepZipperUp!1537 lt!2387754 (h!71712 s!2326)))))

(declare-fun derivationStepZipper!2329 ((InoxSet Context!11494) C!32996) (InoxSet Context!11494))

(assert (=> b!6483531 (= lt!2387761 (derivationStepZipper!2329 lt!2387757 (h!71712 s!2326)))))

(assert (=> b!6483531 (= lt!2387757 (store ((as const (Array Context!11494 Bool)) false) lt!2387754 true))))

(assert (=> b!6483531 (= lt!2387754 (Context!11495 (Cons!65265 (reg!16692 (regOne!33238 r!7292)) lt!2387781)))))

(declare-fun b!6483532 () Bool)

(assert (=> b!6483532 (= e!3929641 e!3929660)))

(declare-fun res!2662573 () Bool)

(assert (=> b!6483532 (=> (not res!2662573) (not e!3929660))))

(assert (=> b!6483532 (= res!2662573 (= r!7292 lt!2387727))))

(assert (=> b!6483532 (= lt!2387727 (unfocusZipper!2105 zl!343))))

(declare-fun tp!1795830 () Bool)

(declare-fun setElem!44169 () Context!11494)

(declare-fun setNonEmpty!44169 () Bool)

(declare-fun inv!84154 (Context!11494) Bool)

(assert (=> setNonEmpty!44169 (= setRes!44169 (and tp!1795830 (inv!84154 setElem!44169) e!3929653))))

(declare-fun setRest!44169 () (InoxSet Context!11494))

(assert (=> setNonEmpty!44169 (= z!1189 ((_ map or) (store ((as const (Array Context!11494 Bool)) false) setElem!44169 true) setRest!44169))))

(declare-fun b!6483533 () Bool)

(assert (=> b!6483533 (= e!3929638 (nullable!6356 (regOne!33238 (regOne!33238 r!7292))))))

(declare-fun b!6483534 () Bool)

(declare-fun res!2662584 () Bool)

(assert (=> b!6483534 (=> res!2662584 e!3929651)))

(assert (=> b!6483534 (= res!2662584 (not ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343)))))))

(declare-fun b!6483535 () Bool)

(declare-fun res!2662570 () Bool)

(assert (=> b!6483535 (=> res!2662570 e!3929651)))

(declare-fun isEmpty!37454 (List!65390) Bool)

(assert (=> b!6483535 (= res!2662570 (not (isEmpty!37454 (t!379016 zl!343))))))

(declare-fun b!6483536 () Bool)

(declare-fun res!2662568 () Bool)

(assert (=> b!6483536 (=> res!2662568 e!3929651)))

(declare-fun generalisedUnion!2207 (List!65389) Regex!16363)

(declare-fun unfocusZipperList!1784 (List!65390) List!65389)

(assert (=> b!6483536 (= res!2662568 (not (= r!7292 (generalisedUnion!2207 (unfocusZipperList!1784 zl!343)))))))

(declare-fun tp!1795831 () Bool)

(declare-fun b!6483537 () Bool)

(assert (=> b!6483537 (= e!3929659 (and (inv!84154 (h!71714 zl!343)) e!3929656 tp!1795831))))

(declare-fun b!6483538 () Bool)

(declare-fun res!2662564 () Bool)

(assert (=> b!6483538 (=> res!2662564 e!3929643)))

(assert (=> b!6483538 (= res!2662564 (not (matchR!8546 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762))))))

(declare-fun b!6483539 () Bool)

(declare-fun e!3929636 () Bool)

(assert (=> b!6483539 (= e!3929654 e!3929636)))

(declare-fun res!2662576 () Bool)

(assert (=> b!6483539 (=> res!2662576 e!3929636)))

(declare-fun lt!2387783 () List!65390)

(assert (=> b!6483539 (= res!2662576 (not (= (unfocusZipper!2105 lt!2387783) (reg!16692 (regOne!33238 r!7292)))))))

(declare-fun lt!2387750 () Context!11494)

(assert (=> b!6483539 (= lt!2387783 (Cons!65266 lt!2387750 Nil!65266))))

(declare-fun lt!2387753 () (InoxSet Context!11494))

(assert (=> b!6483539 (= (flatMap!1868 lt!2387753 lambda!358748) (derivationStepZipperUp!1537 lt!2387737 (h!71712 s!2326)))))

(declare-fun lt!2387776 () Unit!158783)

(assert (=> b!6483539 (= lt!2387776 (lemmaFlatMapOnSingletonSet!1394 lt!2387753 lt!2387737 lambda!358748))))

(declare-fun lt!2387734 () (InoxSet Context!11494))

(assert (=> b!6483539 (= (flatMap!1868 lt!2387734 lambda!358748) (derivationStepZipperUp!1537 lt!2387750 (h!71712 s!2326)))))

(declare-fun lt!2387741 () Unit!158783)

(assert (=> b!6483539 (= lt!2387741 (lemmaFlatMapOnSingletonSet!1394 lt!2387734 lt!2387750 lambda!358748))))

(declare-fun lt!2387742 () (InoxSet Context!11494))

(assert (=> b!6483539 (= lt!2387742 (derivationStepZipperUp!1537 lt!2387737 (h!71712 s!2326)))))

(declare-fun lt!2387780 () (InoxSet Context!11494))

(assert (=> b!6483539 (= lt!2387780 (derivationStepZipperUp!1537 lt!2387750 (h!71712 s!2326)))))

(assert (=> b!6483539 (= lt!2387753 (store ((as const (Array Context!11494 Bool)) false) lt!2387737 true))))

(assert (=> b!6483539 (= lt!2387734 (store ((as const (Array Context!11494 Bool)) false) lt!2387750 true))))

(declare-fun lt!2387735 () List!65389)

(assert (=> b!6483539 (= lt!2387750 (Context!11495 lt!2387735))))

(assert (=> b!6483539 (= lt!2387735 (Cons!65265 (reg!16692 (regOne!33238 r!7292)) Nil!65265))))

(declare-fun b!6483540 () Bool)

(declare-fun Unit!158786 () Unit!158783)

(assert (=> b!6483540 (= e!3929658 Unit!158786)))

(declare-fun b!6483541 () Bool)

(assert (=> b!6483541 (= e!3929642 e!3929639)))

(declare-fun res!2662561 () Bool)

(assert (=> b!6483541 (=> res!2662561 e!3929639)))

(assert (=> b!6483541 (= res!2662561 (not (= r!7292 lt!2387772)))))

(assert (=> b!6483541 (= lt!2387772 (Concat!25208 lt!2387743 (regTwo!33238 r!7292)))))

(declare-fun b!6483542 () Bool)

(assert (=> b!6483542 (= e!3929643 (inv!84154 lt!2387750))))

(assert (=> b!6483542 e!3929646))

(declare-fun res!2662558 () Bool)

(assert (=> b!6483542 (=> (not res!2662558) (not e!3929646))))

(assert (=> b!6483542 (= res!2662558 (matchR!8546 lt!2387730 lt!2387739))))

(declare-fun lt!2387758 () Unit!158783)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!326 (Regex!16363 Regex!16363 List!65388 List!65388) Unit!158783)

(assert (=> b!6483542 (= lt!2387758 (lemmaTwoRegexMatchThenConcatMatchesConcatString!326 (reg!16692 (regOne!33238 r!7292)) lt!2387772 (_1!36645 lt!2387762) lt!2387752))))

(declare-fun ++!14437 (List!65389 List!65389) List!65389)

(assert (=> b!6483542 (matchZipper!2375 (store ((as const (Array Context!11494 Bool)) false) (Context!11495 (++!14437 lt!2387735 lt!2387781)) true) lt!2387739)))

(declare-fun lambda!358754 () Int)

(declare-fun lt!2387769 () Unit!158783)

(declare-fun lemmaConcatPreservesForall!342 (List!65389 List!65389 Int) Unit!158783)

(assert (=> b!6483542 (= lt!2387769 (lemmaConcatPreservesForall!342 lt!2387735 lt!2387781 lambda!358754))))

(declare-fun lt!2387773 () Unit!158783)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!164 (Context!11494 Context!11494 List!65388 List!65388) Unit!158783)

(assert (=> b!6483542 (= lt!2387773 (lemmaConcatenateContextMatchesConcatOfStrings!164 lt!2387750 lt!2387737 (_1!36645 lt!2387762) lt!2387752))))

(assert (=> b!6483542 (matchZipper!2375 lt!2387753 lt!2387752)))

(declare-fun lt!2387778 () List!65390)

(declare-fun lt!2387728 () Unit!158783)

(declare-fun theoremZipperRegexEquiv!829 ((InoxSet Context!11494) List!65390 Regex!16363 List!65388) Unit!158783)

(assert (=> b!6483542 (= lt!2387728 (theoremZipperRegexEquiv!829 lt!2387753 lt!2387778 lt!2387772 lt!2387752))))

(assert (=> b!6483542 (matchZipper!2375 lt!2387734 (_1!36645 lt!2387762))))

(declare-fun lt!2387770 () Unit!158783)

(assert (=> b!6483542 (= lt!2387770 (theoremZipperRegexEquiv!829 lt!2387734 lt!2387783 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762)))))

(assert (=> b!6483542 (matchR!8546 lt!2387772 lt!2387752)))

(declare-fun lt!2387747 () Unit!158783)

(assert (=> b!6483542 (= lt!2387747 (lemmaTwoRegexMatchThenConcatMatchesConcatString!326 lt!2387743 (regTwo!33238 r!7292) (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(assert (=> b!6483542 (matchR!8546 lt!2387743 lt!2387749)))

(declare-fun lt!2387766 () Unit!158783)

(declare-fun lemmaStarApp!140 (Regex!16363 List!65388 List!65388) Unit!158783)

(assert (=> b!6483542 (= lt!2387766 (lemmaStarApp!140 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762) (_2!36645 lt!2387762)))))

(declare-fun b!6483543 () Bool)

(declare-fun e!3929647 () Bool)

(assert (=> b!6483543 (= e!3929636 e!3929647)))

(declare-fun res!2662572 () Bool)

(assert (=> b!6483543 (=> res!2662572 e!3929647)))

(assert (=> b!6483543 (= res!2662572 (not (= (unfocusZipper!2105 lt!2387778) lt!2387772)))))

(assert (=> b!6483543 (= lt!2387778 (Cons!65266 lt!2387737 Nil!65266))))

(declare-fun b!6483544 () Bool)

(assert (=> b!6483544 (= e!3929647 e!3929649)))

(declare-fun res!2662581 () Bool)

(assert (=> b!6483544 (=> res!2662581 e!3929649)))

(assert (=> b!6483544 (= res!2662581 (not lt!2387760))))

(assert (=> b!6483544 e!3929652))

(declare-fun res!2662567 () Bool)

(assert (=> b!6483544 (=> (not res!2662567) (not e!3929652))))

(assert (=> b!6483544 (= res!2662567 (= lt!2387768 (matchRSpec!3464 lt!2387730 s!2326)))))

(assert (=> b!6483544 (= lt!2387768 (matchR!8546 lt!2387730 s!2326))))

(declare-fun lt!2387744 () Unit!158783)

(assert (=> b!6483544 (= lt!2387744 (mainMatchTheorem!3464 lt!2387730 s!2326))))

(declare-fun b!6483545 () Bool)

(declare-fun res!2662553 () Bool)

(assert (=> b!6483545 (=> res!2662553 e!3929642)))

(assert (=> b!6483545 (= res!2662553 (not (= (matchZipper!2375 lt!2387757 s!2326) (matchZipper!2375 lt!2387761 (t!379014 s!2326)))))))

(assert (= (and start!637290 res!2662555) b!6483515))

(assert (= (and b!6483515 res!2662578) b!6483532))

(assert (= (and b!6483532 res!2662573) b!6483527))

(assert (= (and b!6483527 (not res!2662556)) b!6483535))

(assert (= (and b!6483535 (not res!2662570)) b!6483522))

(assert (= (and b!6483522 (not res!2662566)) b!6483534))

(assert (= (and b!6483534 (not res!2662584)) b!6483536))

(assert (= (and b!6483536 (not res!2662568)) b!6483512))

(assert (= (and b!6483512 (not res!2662574)) b!6483529))

(assert (= (and b!6483529 (not res!2662550)) b!6483523))

(assert (= (and b!6483523 (not res!2662582)) b!6483517))

(assert (= (and b!6483517 c!1187714) b!6483505))

(assert (= (and b!6483517 (not c!1187714)) b!6483540))

(assert (= (and b!6483505 (not res!2662559)) b!6483509))

(assert (= (and b!6483517 (not res!2662552)) b!6483508))

(assert (= (and b!6483508 res!2662580) b!6483533))

(assert (= (and b!6483508 (not res!2662565)) b!6483518))

(assert (= (and b!6483518 (not res!2662579)) b!6483519))

(assert (= (and b!6483519 (not res!2662562)) b!6483531))

(assert (= (and b!6483531 (not res!2662563)) b!6483545))

(assert (= (and b!6483545 (not res!2662553)) b!6483502))

(assert (= (and b!6483502 (not res!2662560)) b!6483541))

(assert (= (and b!6483541 (not res!2662561)) b!6483526))

(assert (= (and b!6483526 (not res!2662577)) b!6483539))

(assert (= (and b!6483539 (not res!2662576)) b!6483543))

(assert (= (and b!6483543 (not res!2662572)) b!6483544))

(assert (= (and b!6483544 res!2662567) b!6483516))

(assert (= (and b!6483544 (not res!2662581)) b!6483504))

(assert (= (and b!6483504 (not res!2662554)) b!6483525))

(assert (= (and b!6483525 (not res!2662551)) b!6483510))

(assert (= (and b!6483510 (not res!2662557)) b!6483503))

(assert (= (and b!6483503 (not res!2662569)) b!6483513))

(assert (= (and b!6483513 (not res!2662575)) b!6483514))

(assert (= (and b!6483514 (not res!2662571)) b!6483538))

(assert (= (and b!6483538 (not res!2662564)) b!6483524))

(assert (= (and b!6483524 (not res!2662583)) b!6483542))

(assert (= (and b!6483542 res!2662558) b!6483520))

(assert (= (and start!637290 ((_ is ElementMatch!16363) r!7292)) b!6483506))

(assert (= (and start!637290 ((_ is Concat!25208) r!7292)) b!6483521))

(assert (= (and start!637290 ((_ is Star!16363) r!7292)) b!6483507))

(assert (= (and start!637290 ((_ is Union!16363) r!7292)) b!6483511))

(assert (= (and start!637290 condSetEmpty!44169) setIsEmpty!44169))

(assert (= (and start!637290 (not condSetEmpty!44169)) setNonEmpty!44169))

(assert (= setNonEmpty!44169 b!6483501))

(assert (= b!6483537 b!6483530))

(assert (= (and start!637290 ((_ is Cons!65266) zl!343)) b!6483537))

(assert (= (and start!637290 ((_ is Cons!65264) s!2326)) b!6483528))

(declare-fun m!7271730 () Bool)

(assert (=> b!6483503 m!7271730))

(declare-fun m!7271732 () Bool)

(assert (=> b!6483526 m!7271732))

(declare-fun m!7271734 () Bool)

(assert (=> b!6483545 m!7271734))

(declare-fun m!7271736 () Bool)

(assert (=> b!6483545 m!7271736))

(declare-fun m!7271738 () Bool)

(assert (=> b!6483523 m!7271738))

(declare-fun m!7271740 () Bool)

(assert (=> b!6483510 m!7271740))

(declare-fun m!7271742 () Bool)

(assert (=> b!6483542 m!7271742))

(declare-fun m!7271744 () Bool)

(assert (=> b!6483542 m!7271744))

(declare-fun m!7271746 () Bool)

(assert (=> b!6483542 m!7271746))

(declare-fun m!7271748 () Bool)

(assert (=> b!6483542 m!7271748))

(declare-fun m!7271750 () Bool)

(assert (=> b!6483542 m!7271750))

(declare-fun m!7271752 () Bool)

(assert (=> b!6483542 m!7271752))

(declare-fun m!7271754 () Bool)

(assert (=> b!6483542 m!7271754))

(declare-fun m!7271756 () Bool)

(assert (=> b!6483542 m!7271756))

(declare-fun m!7271758 () Bool)

(assert (=> b!6483542 m!7271758))

(declare-fun m!7271760 () Bool)

(assert (=> b!6483542 m!7271760))

(declare-fun m!7271762 () Bool)

(assert (=> b!6483542 m!7271762))

(declare-fun m!7271764 () Bool)

(assert (=> b!6483542 m!7271764))

(assert (=> b!6483542 m!7271748))

(declare-fun m!7271766 () Bool)

(assert (=> b!6483542 m!7271766))

(declare-fun m!7271768 () Bool)

(assert (=> b!6483542 m!7271768))

(declare-fun m!7271770 () Bool)

(assert (=> b!6483542 m!7271770))

(declare-fun m!7271772 () Bool)

(assert (=> b!6483542 m!7271772))

(declare-fun m!7271774 () Bool)

(assert (=> b!6483531 m!7271774))

(declare-fun m!7271776 () Bool)

(assert (=> b!6483531 m!7271776))

(declare-fun m!7271778 () Bool)

(assert (=> b!6483531 m!7271778))

(declare-fun m!7271780 () Bool)

(assert (=> b!6483531 m!7271780))

(declare-fun m!7271782 () Bool)

(assert (=> b!6483531 m!7271782))

(declare-fun m!7271784 () Bool)

(assert (=> b!6483529 m!7271784))

(declare-fun m!7271786 () Bool)

(assert (=> b!6483529 m!7271786))

(declare-fun m!7271788 () Bool)

(assert (=> b!6483529 m!7271788))

(declare-fun m!7271790 () Bool)

(assert (=> b!6483529 m!7271790))

(assert (=> b!6483529 m!7271786))

(declare-fun m!7271792 () Bool)

(assert (=> b!6483529 m!7271792))

(declare-fun m!7271794 () Bool)

(assert (=> b!6483529 m!7271794))

(assert (=> b!6483529 m!7271794))

(declare-fun m!7271796 () Bool)

(assert (=> b!6483519 m!7271796))

(declare-fun m!7271798 () Bool)

(assert (=> b!6483537 m!7271798))

(declare-fun m!7271800 () Bool)

(assert (=> b!6483524 m!7271800))

(declare-fun m!7271802 () Bool)

(assert (=> b!6483536 m!7271802))

(assert (=> b!6483536 m!7271802))

(declare-fun m!7271804 () Bool)

(assert (=> b!6483536 m!7271804))

(declare-fun m!7271806 () Bool)

(assert (=> b!6483532 m!7271806))

(declare-fun m!7271808 () Bool)

(assert (=> b!6483525 m!7271808))

(declare-fun m!7271810 () Bool)

(assert (=> b!6483544 m!7271810))

(declare-fun m!7271812 () Bool)

(assert (=> b!6483544 m!7271812))

(declare-fun m!7271814 () Bool)

(assert (=> b!6483544 m!7271814))

(declare-fun m!7271816 () Bool)

(assert (=> b!6483538 m!7271816))

(declare-fun m!7271818 () Bool)

(assert (=> b!6483513 m!7271818))

(declare-fun m!7271820 () Bool)

(assert (=> b!6483513 m!7271820))

(declare-fun m!7271822 () Bool)

(assert (=> b!6483513 m!7271822))

(declare-fun m!7271824 () Bool)

(assert (=> b!6483513 m!7271824))

(declare-fun m!7271826 () Bool)

(assert (=> b!6483513 m!7271826))

(declare-fun m!7271828 () Bool)

(assert (=> b!6483513 m!7271828))

(declare-fun m!7271830 () Bool)

(assert (=> b!6483513 m!7271830))

(declare-fun m!7271832 () Bool)

(assert (=> b!6483513 m!7271832))

(declare-fun m!7271834 () Bool)

(assert (=> b!6483513 m!7271834))

(assert (=> b!6483513 m!7271824))

(declare-fun m!7271836 () Bool)

(assert (=> b!6483513 m!7271836))

(assert (=> b!6483513 m!7271824))

(declare-fun m!7271838 () Bool)

(assert (=> b!6483513 m!7271838))

(declare-fun m!7271840 () Bool)

(assert (=> b!6483513 m!7271840))

(declare-fun m!7271842 () Bool)

(assert (=> b!6483505 m!7271842))

(declare-fun m!7271844 () Bool)

(assert (=> b!6483505 m!7271844))

(declare-fun m!7271846 () Bool)

(assert (=> b!6483505 m!7271846))

(declare-fun m!7271848 () Bool)

(assert (=> start!637290 m!7271848))

(declare-fun m!7271850 () Bool)

(assert (=> b!6483504 m!7271850))

(declare-fun m!7271852 () Bool)

(assert (=> b!6483504 m!7271852))

(declare-fun m!7271854 () Bool)

(assert (=> b!6483504 m!7271854))

(declare-fun m!7271856 () Bool)

(assert (=> b!6483504 m!7271856))

(declare-fun m!7271858 () Bool)

(assert (=> b!6483504 m!7271858))

(assert (=> b!6483504 m!7271858))

(declare-fun m!7271860 () Bool)

(assert (=> b!6483504 m!7271860))

(declare-fun m!7271862 () Bool)

(assert (=> b!6483504 m!7271862))

(declare-fun m!7271864 () Bool)

(assert (=> b!6483504 m!7271864))

(declare-fun m!7271866 () Bool)

(assert (=> b!6483533 m!7271866))

(declare-fun m!7271868 () Bool)

(assert (=> b!6483509 m!7271868))

(declare-fun m!7271870 () Bool)

(assert (=> setNonEmpty!44169 m!7271870))

(declare-fun m!7271872 () Bool)

(assert (=> b!6483517 m!7271872))

(declare-fun m!7271874 () Bool)

(assert (=> b!6483517 m!7271874))

(declare-fun m!7271876 () Bool)

(assert (=> b!6483517 m!7271876))

(declare-fun m!7271878 () Bool)

(assert (=> b!6483517 m!7271878))

(declare-fun m!7271880 () Bool)

(assert (=> b!6483517 m!7271880))

(declare-fun m!7271882 () Bool)

(assert (=> b!6483517 m!7271882))

(declare-fun m!7271884 () Bool)

(assert (=> b!6483517 m!7271884))

(declare-fun m!7271886 () Bool)

(assert (=> b!6483522 m!7271886))

(declare-fun m!7271888 () Bool)

(assert (=> b!6483535 m!7271888))

(declare-fun m!7271890 () Bool)

(assert (=> b!6483515 m!7271890))

(declare-fun m!7271892 () Bool)

(assert (=> b!6483543 m!7271892))

(declare-fun m!7271894 () Bool)

(assert (=> b!6483514 m!7271894))

(declare-fun m!7271896 () Bool)

(assert (=> b!6483514 m!7271896))

(declare-fun m!7271898 () Bool)

(assert (=> b!6483514 m!7271898))

(declare-fun m!7271900 () Bool)

(assert (=> b!6483514 m!7271900))

(declare-fun m!7271902 () Bool)

(assert (=> b!6483539 m!7271902))

(declare-fun m!7271904 () Bool)

(assert (=> b!6483539 m!7271904))

(declare-fun m!7271906 () Bool)

(assert (=> b!6483539 m!7271906))

(declare-fun m!7271908 () Bool)

(assert (=> b!6483539 m!7271908))

(declare-fun m!7271910 () Bool)

(assert (=> b!6483539 m!7271910))

(declare-fun m!7271912 () Bool)

(assert (=> b!6483539 m!7271912))

(declare-fun m!7271914 () Bool)

(assert (=> b!6483539 m!7271914))

(declare-fun m!7271916 () Bool)

(assert (=> b!6483539 m!7271916))

(declare-fun m!7271918 () Bool)

(assert (=> b!6483539 m!7271918))

(declare-fun m!7271920 () Bool)

(assert (=> b!6483527 m!7271920))

(declare-fun m!7271922 () Bool)

(assert (=> b!6483527 m!7271922))

(declare-fun m!7271924 () Bool)

(assert (=> b!6483527 m!7271924))

(check-sat (not b!6483521) (not b!6483517) (not b!6483526) (not b!6483511) (not b!6483505) (not b!6483542) (not b!6483509) (not b!6483519) (not b!6483538) tp_is_empty!41979 (not b!6483533) (not start!637290) (not b!6483524) (not b!6483504) (not b!6483515) (not b!6483507) (not b!6483539) (not b!6483501) (not b!6483503) (not b!6483535) (not b!6483543) (not b!6483528) (not b!6483527) (not b!6483529) (not b!6483530) (not setNonEmpty!44169) (not b!6483537) (not b!6483544) (not b!6483522) (not b!6483513) (not b!6483525) (not b!6483510) (not b!6483536) (not b!6483531) (not b!6483523) (not b!6483514) (not b!6483545) (not b!6483532))
(check-sat)
(get-model)

(declare-fun bs!1644856 () Bool)

(declare-fun d!2034039 () Bool)

(assert (= bs!1644856 (and d!2034039 b!6483542)))

(declare-fun lambda!358766 () Int)

(assert (=> bs!1644856 (= lambda!358766 lambda!358754)))

(declare-fun forall!15545 (List!65389 Int) Bool)

(assert (=> d!2034039 (= (inv!84154 (h!71714 zl!343)) (forall!15545 (exprs!6247 (h!71714 zl!343)) lambda!358766))))

(declare-fun bs!1644857 () Bool)

(assert (= bs!1644857 d!2034039))

(declare-fun m!7271996 () Bool)

(assert (=> bs!1644857 m!7271996))

(assert (=> b!6483537 d!2034039))

(declare-fun d!2034041 () Bool)

(declare-fun choose!48084 ((InoxSet Context!11494) Int) (InoxSet Context!11494))

(assert (=> d!2034041 (= (flatMap!1868 z!1189 lambda!358748) (choose!48084 z!1189 lambda!358748))))

(declare-fun bs!1644858 () Bool)

(assert (= bs!1644858 d!2034041))

(declare-fun m!7272006 () Bool)

(assert (=> bs!1644858 m!7272006))

(assert (=> b!6483517 d!2034041))

(declare-fun b!6483680 () Bool)

(declare-fun e!3929737 () (InoxSet Context!11494))

(assert (=> b!6483680 (= e!3929737 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561158 () Bool)

(declare-fun call!561163 () (InoxSet Context!11494))

(assert (=> bm!561158 (= call!561163 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343))))))) (Context!11495 (t!379015 (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343)))))))) (h!71712 s!2326)))))

(declare-fun b!6483681 () Bool)

(declare-fun e!3929738 () (InoxSet Context!11494))

(assert (=> b!6483681 (= e!3929738 ((_ map or) call!561163 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343)))))))) (h!71712 s!2326))))))

(declare-fun b!6483682 () Bool)

(assert (=> b!6483682 (= e!3929738 e!3929737)))

(declare-fun c!1187754 () Bool)

(assert (=> b!6483682 (= c!1187754 ((_ is Cons!65265) (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343))))))))))

(declare-fun b!6483684 () Bool)

(declare-fun e!3929739 () Bool)

(assert (=> b!6483684 (= e!3929739 (nullable!6356 (h!71713 (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343)))))))))))

(declare-fun d!2034045 () Bool)

(declare-fun c!1187755 () Bool)

(assert (=> d!2034045 (= c!1187755 e!3929739)))

(declare-fun res!2662635 () Bool)

(assert (=> d!2034045 (=> (not res!2662635) (not e!3929739))))

(assert (=> d!2034045 (= res!2662635 ((_ is Cons!65265) (exprs!6247 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343))))))))))

(assert (=> d!2034045 (= (derivationStepZipperUp!1537 (Context!11495 (Cons!65265 (h!71713 (exprs!6247 (h!71714 zl!343))) (t!379015 (exprs!6247 (h!71714 zl!343))))) (h!71712 s!2326)) e!3929738)))

(declare-fun b!6483683 () Bool)

(assert (=> b!6483683 (= e!3929737 call!561163)))

(assert (= (and d!2034045 res!2662635) b!6483684))

(assert (= (and d!2034045 c!1187755) b!6483681))

(assert (= (and d!2034045 (not c!1187755)) b!6483682))

(assert (= (and b!6483682 c!1187754) b!6483683))

(assert (= (and b!6483682 (not c!1187754)) b!6483680))

(assert (= (or b!6483681 b!6483683) bm!561158))

(declare-fun m!7272028 () Bool)

(assert (=> bm!561158 m!7272028))

(declare-fun m!7272030 () Bool)

(assert (=> b!6483681 m!7272030))

(declare-fun m!7272032 () Bool)

(assert (=> b!6483684 m!7272032))

(assert (=> b!6483517 d!2034045))

(declare-fun d!2034055 () Bool)

(declare-fun nullableFct!2293 (Regex!16363) Bool)

(assert (=> d!2034055 (= (nullable!6356 (h!71713 (exprs!6247 (h!71714 zl!343)))) (nullableFct!2293 (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun bs!1644859 () Bool)

(assert (= bs!1644859 d!2034055))

(declare-fun m!7272034 () Bool)

(assert (=> bs!1644859 m!7272034))

(assert (=> b!6483517 d!2034055))

(declare-fun d!2034057 () Bool)

(declare-fun dynLambda!25922 (Int Context!11494) (InoxSet Context!11494))

(assert (=> d!2034057 (= (flatMap!1868 z!1189 lambda!358748) (dynLambda!25922 lambda!358748 (h!71714 zl!343)))))

(declare-fun lt!2387807 () Unit!158783)

(declare-fun choose!48085 ((InoxSet Context!11494) Context!11494 Int) Unit!158783)

(assert (=> d!2034057 (= lt!2387807 (choose!48085 z!1189 (h!71714 zl!343) lambda!358748))))

(assert (=> d!2034057 (= z!1189 (store ((as const (Array Context!11494 Bool)) false) (h!71714 zl!343) true))))

(assert (=> d!2034057 (= (lemmaFlatMapOnSingletonSet!1394 z!1189 (h!71714 zl!343) lambda!358748) lt!2387807)))

(declare-fun b_lambda!245537 () Bool)

(assert (=> (not b_lambda!245537) (not d!2034057)))

(declare-fun bs!1644860 () Bool)

(assert (= bs!1644860 d!2034057))

(assert (=> bs!1644860 m!7271876))

(declare-fun m!7272036 () Bool)

(assert (=> bs!1644860 m!7272036))

(declare-fun m!7272038 () Bool)

(assert (=> bs!1644860 m!7272038))

(declare-fun m!7272040 () Bool)

(assert (=> bs!1644860 m!7272040))

(assert (=> b!6483517 d!2034057))

(declare-fun d!2034059 () Bool)

(declare-fun c!1187798 () Bool)

(assert (=> d!2034059 (= c!1187798 (and ((_ is ElementMatch!16363) (h!71713 (exprs!6247 (h!71714 zl!343)))) (= (c!1187715 (h!71713 (exprs!6247 (h!71714 zl!343)))) (h!71712 s!2326))))))

(declare-fun e!3929801 () (InoxSet Context!11494))

(assert (=> d!2034059 (= (derivationStepZipperDown!1611 (h!71713 (exprs!6247 (h!71714 zl!343))) lt!2387726 (h!71712 s!2326)) e!3929801)))

(declare-fun b!6483795 () Bool)

(declare-fun c!1187795 () Bool)

(assert (=> b!6483795 (= c!1187795 ((_ is Star!16363) (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun e!3929800 () (InoxSet Context!11494))

(declare-fun e!3929802 () (InoxSet Context!11494))

(assert (=> b!6483795 (= e!3929800 e!3929802)))

(declare-fun bm!561185 () Bool)

(declare-fun call!561193 () List!65389)

(declare-fun call!561192 () List!65389)

(assert (=> bm!561185 (= call!561193 call!561192)))

(declare-fun b!6483796 () Bool)

(assert (=> b!6483796 (= e!3929801 (store ((as const (Array Context!11494 Bool)) false) lt!2387726 true))))

(declare-fun b!6483797 () Bool)

(declare-fun e!3929804 () (InoxSet Context!11494))

(assert (=> b!6483797 (= e!3929801 e!3929804)))

(declare-fun c!1187794 () Bool)

(assert (=> b!6483797 (= c!1187794 ((_ is Union!16363) (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun bm!561186 () Bool)

(declare-fun call!561190 () (InoxSet Context!11494))

(assert (=> bm!561186 (= call!561190 (derivationStepZipperDown!1611 (ite c!1187794 (regTwo!33239 (h!71713 (exprs!6247 (h!71714 zl!343)))) (regOne!33238 (h!71713 (exprs!6247 (h!71714 zl!343))))) (ite c!1187794 lt!2387726 (Context!11495 call!561192)) (h!71712 s!2326)))))

(declare-fun bm!561187 () Bool)

(declare-fun c!1187796 () Bool)

(declare-fun c!1187797 () Bool)

(declare-fun call!561191 () (InoxSet Context!11494))

(assert (=> bm!561187 (= call!561191 (derivationStepZipperDown!1611 (ite c!1187794 (regOne!33239 (h!71713 (exprs!6247 (h!71714 zl!343)))) (ite c!1187797 (regTwo!33238 (h!71713 (exprs!6247 (h!71714 zl!343)))) (ite c!1187796 (regOne!33238 (h!71713 (exprs!6247 (h!71714 zl!343)))) (reg!16692 (h!71713 (exprs!6247 (h!71714 zl!343))))))) (ite (or c!1187794 c!1187797) lt!2387726 (Context!11495 call!561193)) (h!71712 s!2326)))))

(declare-fun b!6483798 () Bool)

(assert (=> b!6483798 (= e!3929804 ((_ map or) call!561191 call!561190))))

(declare-fun bm!561188 () Bool)

(declare-fun call!561195 () (InoxSet Context!11494))

(assert (=> bm!561188 (= call!561195 call!561191)))

(declare-fun b!6483799 () Bool)

(declare-fun e!3929805 () Bool)

(assert (=> b!6483799 (= e!3929805 (nullable!6356 (regOne!33238 (h!71713 (exprs!6247 (h!71714 zl!343))))))))

(declare-fun b!6483800 () Bool)

(declare-fun call!561194 () (InoxSet Context!11494))

(assert (=> b!6483800 (= e!3929800 call!561194)))

(declare-fun bm!561189 () Bool)

(assert (=> bm!561189 (= call!561194 call!561195)))

(declare-fun b!6483801 () Bool)

(declare-fun e!3929803 () (InoxSet Context!11494))

(assert (=> b!6483801 (= e!3929803 ((_ map or) call!561190 call!561195))))

(declare-fun b!6483802 () Bool)

(assert (=> b!6483802 (= e!3929803 e!3929800)))

(assert (=> b!6483802 (= c!1187796 ((_ is Concat!25208) (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun b!6483803 () Bool)

(assert (=> b!6483803 (= c!1187797 e!3929805)))

(declare-fun res!2662670 () Bool)

(assert (=> b!6483803 (=> (not res!2662670) (not e!3929805))))

(assert (=> b!6483803 (= res!2662670 ((_ is Concat!25208) (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(assert (=> b!6483803 (= e!3929804 e!3929803)))

(declare-fun b!6483804 () Bool)

(assert (=> b!6483804 (= e!3929802 call!561194)))

(declare-fun bm!561190 () Bool)

(declare-fun $colon$colon!2216 (List!65389 Regex!16363) List!65389)

(assert (=> bm!561190 (= call!561192 ($colon$colon!2216 (exprs!6247 lt!2387726) (ite (or c!1187797 c!1187796) (regTwo!33238 (h!71713 (exprs!6247 (h!71714 zl!343)))) (h!71713 (exprs!6247 (h!71714 zl!343))))))))

(declare-fun b!6483805 () Bool)

(assert (=> b!6483805 (= e!3929802 ((as const (Array Context!11494 Bool)) false))))

(assert (= (and d!2034059 c!1187798) b!6483796))

(assert (= (and d!2034059 (not c!1187798)) b!6483797))

(assert (= (and b!6483797 c!1187794) b!6483798))

(assert (= (and b!6483797 (not c!1187794)) b!6483803))

(assert (= (and b!6483803 res!2662670) b!6483799))

(assert (= (and b!6483803 c!1187797) b!6483801))

(assert (= (and b!6483803 (not c!1187797)) b!6483802))

(assert (= (and b!6483802 c!1187796) b!6483800))

(assert (= (and b!6483802 (not c!1187796)) b!6483795))

(assert (= (and b!6483795 c!1187795) b!6483804))

(assert (= (and b!6483795 (not c!1187795)) b!6483805))

(assert (= (or b!6483800 b!6483804) bm!561185))

(assert (= (or b!6483800 b!6483804) bm!561189))

(assert (= (or b!6483801 bm!561185) bm!561190))

(assert (= (or b!6483801 bm!561189) bm!561188))

(assert (= (or b!6483798 b!6483801) bm!561186))

(assert (= (or b!6483798 bm!561188) bm!561187))

(declare-fun m!7272100 () Bool)

(assert (=> b!6483799 m!7272100))

(declare-fun m!7272102 () Bool)

(assert (=> bm!561187 m!7272102))

(declare-fun m!7272104 () Bool)

(assert (=> b!6483796 m!7272104))

(declare-fun m!7272106 () Bool)

(assert (=> bm!561186 m!7272106))

(declare-fun m!7272108 () Bool)

(assert (=> bm!561190 m!7272108))

(assert (=> b!6483517 d!2034059))

(declare-fun b!6483816 () Bool)

(declare-fun e!3929812 () (InoxSet Context!11494))

(assert (=> b!6483816 (= e!3929812 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561191 () Bool)

(declare-fun call!561196 () (InoxSet Context!11494))

(assert (=> bm!561191 (= call!561196 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 (h!71714 zl!343))) (Context!11495 (t!379015 (exprs!6247 (h!71714 zl!343)))) (h!71712 s!2326)))))

(declare-fun e!3929813 () (InoxSet Context!11494))

(declare-fun b!6483817 () Bool)

(assert (=> b!6483817 (= e!3929813 ((_ map or) call!561196 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 (h!71714 zl!343)))) (h!71712 s!2326))))))

(declare-fun b!6483818 () Bool)

(assert (=> b!6483818 (= e!3929813 e!3929812)))

(declare-fun c!1187803 () Bool)

(assert (=> b!6483818 (= c!1187803 ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343))))))

(declare-fun b!6483820 () Bool)

(declare-fun e!3929814 () Bool)

(assert (=> b!6483820 (= e!3929814 (nullable!6356 (h!71713 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun d!2034083 () Bool)

(declare-fun c!1187804 () Bool)

(assert (=> d!2034083 (= c!1187804 e!3929814)))

(declare-fun res!2662673 () Bool)

(assert (=> d!2034083 (=> (not res!2662673) (not e!3929814))))

(assert (=> d!2034083 (= res!2662673 ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343))))))

(assert (=> d!2034083 (= (derivationStepZipperUp!1537 (h!71714 zl!343) (h!71712 s!2326)) e!3929813)))

(declare-fun b!6483819 () Bool)

(assert (=> b!6483819 (= e!3929812 call!561196)))

(assert (= (and d!2034083 res!2662673) b!6483820))

(assert (= (and d!2034083 c!1187804) b!6483817))

(assert (= (and d!2034083 (not c!1187804)) b!6483818))

(assert (= (and b!6483818 c!1187803) b!6483819))

(assert (= (and b!6483818 (not c!1187803)) b!6483816))

(assert (= (or b!6483817 b!6483819) bm!561191))

(declare-fun m!7272110 () Bool)

(assert (=> bm!561191 m!7272110))

(declare-fun m!7272112 () Bool)

(assert (=> b!6483817 m!7272112))

(assert (=> b!6483820 m!7271880))

(assert (=> b!6483517 d!2034083))

(declare-fun b!6483831 () Bool)

(declare-fun e!3929821 () (InoxSet Context!11494))

(assert (=> b!6483831 (= e!3929821 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561192 () Bool)

(declare-fun call!561197 () (InoxSet Context!11494))

(assert (=> bm!561192 (= call!561197 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 lt!2387726)) (Context!11495 (t!379015 (exprs!6247 lt!2387726))) (h!71712 s!2326)))))

(declare-fun e!3929822 () (InoxSet Context!11494))

(declare-fun b!6483832 () Bool)

(assert (=> b!6483832 (= e!3929822 ((_ map or) call!561197 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 lt!2387726))) (h!71712 s!2326))))))

(declare-fun b!6483833 () Bool)

(assert (=> b!6483833 (= e!3929822 e!3929821)))

(declare-fun c!1187809 () Bool)

(assert (=> b!6483833 (= c!1187809 ((_ is Cons!65265) (exprs!6247 lt!2387726)))))

(declare-fun b!6483835 () Bool)

(declare-fun e!3929823 () Bool)

(assert (=> b!6483835 (= e!3929823 (nullable!6356 (h!71713 (exprs!6247 lt!2387726))))))

(declare-fun d!2034085 () Bool)

(declare-fun c!1187810 () Bool)

(assert (=> d!2034085 (= c!1187810 e!3929823)))

(declare-fun res!2662676 () Bool)

(assert (=> d!2034085 (=> (not res!2662676) (not e!3929823))))

(assert (=> d!2034085 (= res!2662676 ((_ is Cons!65265) (exprs!6247 lt!2387726)))))

(assert (=> d!2034085 (= (derivationStepZipperUp!1537 lt!2387726 (h!71712 s!2326)) e!3929822)))

(declare-fun b!6483834 () Bool)

(assert (=> b!6483834 (= e!3929821 call!561197)))

(assert (= (and d!2034085 res!2662676) b!6483835))

(assert (= (and d!2034085 c!1187810) b!6483832))

(assert (= (and d!2034085 (not c!1187810)) b!6483833))

(assert (= (and b!6483833 c!1187809) b!6483834))

(assert (= (and b!6483833 (not c!1187809)) b!6483831))

(assert (= (or b!6483832 b!6483834) bm!561192))

(declare-fun m!7272114 () Bool)

(assert (=> bm!561192 m!7272114))

(declare-fun m!7272118 () Bool)

(assert (=> b!6483832 m!7272118))

(declare-fun m!7272122 () Bool)

(assert (=> b!6483835 m!7272122))

(assert (=> b!6483517 d!2034085))

(declare-fun d!2034087 () Bool)

(declare-fun c!1187815 () Bool)

(assert (=> d!2034087 (= c!1187815 (and ((_ is ElementMatch!16363) (reg!16692 (regOne!33238 r!7292))) (= (c!1187715 (reg!16692 (regOne!33238 r!7292))) (h!71712 s!2326))))))

(declare-fun e!3929825 () (InoxSet Context!11494))

(assert (=> d!2034087 (= (derivationStepZipperDown!1611 (reg!16692 (regOne!33238 r!7292)) lt!2387737 (h!71712 s!2326)) e!3929825)))

(declare-fun b!6483836 () Bool)

(declare-fun c!1187812 () Bool)

(assert (=> b!6483836 (= c!1187812 ((_ is Star!16363) (reg!16692 (regOne!33238 r!7292))))))

(declare-fun e!3929824 () (InoxSet Context!11494))

(declare-fun e!3929826 () (InoxSet Context!11494))

(assert (=> b!6483836 (= e!3929824 e!3929826)))

(declare-fun bm!561193 () Bool)

(declare-fun call!561201 () List!65389)

(declare-fun call!561200 () List!65389)

(assert (=> bm!561193 (= call!561201 call!561200)))

(declare-fun b!6483837 () Bool)

(assert (=> b!6483837 (= e!3929825 (store ((as const (Array Context!11494 Bool)) false) lt!2387737 true))))

(declare-fun b!6483838 () Bool)

(declare-fun e!3929828 () (InoxSet Context!11494))

(assert (=> b!6483838 (= e!3929825 e!3929828)))

(declare-fun c!1187811 () Bool)

(assert (=> b!6483838 (= c!1187811 ((_ is Union!16363) (reg!16692 (regOne!33238 r!7292))))))

(declare-fun call!561198 () (InoxSet Context!11494))

(declare-fun bm!561194 () Bool)

(assert (=> bm!561194 (= call!561198 (derivationStepZipperDown!1611 (ite c!1187811 (regTwo!33239 (reg!16692 (regOne!33238 r!7292))) (regOne!33238 (reg!16692 (regOne!33238 r!7292)))) (ite c!1187811 lt!2387737 (Context!11495 call!561200)) (h!71712 s!2326)))))

(declare-fun c!1187813 () Bool)

(declare-fun call!561199 () (InoxSet Context!11494))

(declare-fun c!1187814 () Bool)

(declare-fun bm!561195 () Bool)

(assert (=> bm!561195 (= call!561199 (derivationStepZipperDown!1611 (ite c!1187811 (regOne!33239 (reg!16692 (regOne!33238 r!7292))) (ite c!1187814 (regTwo!33238 (reg!16692 (regOne!33238 r!7292))) (ite c!1187813 (regOne!33238 (reg!16692 (regOne!33238 r!7292))) (reg!16692 (reg!16692 (regOne!33238 r!7292)))))) (ite (or c!1187811 c!1187814) lt!2387737 (Context!11495 call!561201)) (h!71712 s!2326)))))

(declare-fun b!6483839 () Bool)

(assert (=> b!6483839 (= e!3929828 ((_ map or) call!561199 call!561198))))

(declare-fun bm!561196 () Bool)

(declare-fun call!561203 () (InoxSet Context!11494))

(assert (=> bm!561196 (= call!561203 call!561199)))

(declare-fun b!6483840 () Bool)

(declare-fun e!3929829 () Bool)

(assert (=> b!6483840 (= e!3929829 (nullable!6356 (regOne!33238 (reg!16692 (regOne!33238 r!7292)))))))

(declare-fun b!6483841 () Bool)

(declare-fun call!561202 () (InoxSet Context!11494))

(assert (=> b!6483841 (= e!3929824 call!561202)))

(declare-fun bm!561197 () Bool)

(assert (=> bm!561197 (= call!561202 call!561203)))

(declare-fun b!6483842 () Bool)

(declare-fun e!3929827 () (InoxSet Context!11494))

(assert (=> b!6483842 (= e!3929827 ((_ map or) call!561198 call!561203))))

(declare-fun b!6483843 () Bool)

(assert (=> b!6483843 (= e!3929827 e!3929824)))

(assert (=> b!6483843 (= c!1187813 ((_ is Concat!25208) (reg!16692 (regOne!33238 r!7292))))))

(declare-fun b!6483844 () Bool)

(assert (=> b!6483844 (= c!1187814 e!3929829)))

(declare-fun res!2662677 () Bool)

(assert (=> b!6483844 (=> (not res!2662677) (not e!3929829))))

(assert (=> b!6483844 (= res!2662677 ((_ is Concat!25208) (reg!16692 (regOne!33238 r!7292))))))

(assert (=> b!6483844 (= e!3929828 e!3929827)))

(declare-fun b!6483845 () Bool)

(assert (=> b!6483845 (= e!3929826 call!561202)))

(declare-fun bm!561198 () Bool)

(assert (=> bm!561198 (= call!561200 ($colon$colon!2216 (exprs!6247 lt!2387737) (ite (or c!1187814 c!1187813) (regTwo!33238 (reg!16692 (regOne!33238 r!7292))) (reg!16692 (regOne!33238 r!7292)))))))

(declare-fun b!6483846 () Bool)

(assert (=> b!6483846 (= e!3929826 ((as const (Array Context!11494 Bool)) false))))

(assert (= (and d!2034087 c!1187815) b!6483837))

(assert (= (and d!2034087 (not c!1187815)) b!6483838))

(assert (= (and b!6483838 c!1187811) b!6483839))

(assert (= (and b!6483838 (not c!1187811)) b!6483844))

(assert (= (and b!6483844 res!2662677) b!6483840))

(assert (= (and b!6483844 c!1187814) b!6483842))

(assert (= (and b!6483844 (not c!1187814)) b!6483843))

(assert (= (and b!6483843 c!1187813) b!6483841))

(assert (= (and b!6483843 (not c!1187813)) b!6483836))

(assert (= (and b!6483836 c!1187812) b!6483845))

(assert (= (and b!6483836 (not c!1187812)) b!6483846))

(assert (= (or b!6483841 b!6483845) bm!561193))

(assert (= (or b!6483841 b!6483845) bm!561197))

(assert (= (or b!6483842 bm!561193) bm!561198))

(assert (= (or b!6483842 bm!561197) bm!561196))

(assert (= (or b!6483839 b!6483842) bm!561194))

(assert (= (or b!6483839 bm!561196) bm!561195))

(declare-fun m!7272140 () Bool)

(assert (=> b!6483840 m!7272140))

(declare-fun m!7272142 () Bool)

(assert (=> bm!561195 m!7272142))

(assert (=> b!6483837 m!7271906))

(declare-fun m!7272144 () Bool)

(assert (=> bm!561194 m!7272144))

(declare-fun m!7272146 () Bool)

(assert (=> bm!561198 m!7272146))

(assert (=> b!6483519 d!2034087))

(declare-fun b!6483933 () Bool)

(declare-fun res!2662718 () Bool)

(declare-fun e!3929880 () Bool)

(assert (=> b!6483933 (=> res!2662718 e!3929880)))

(declare-fun tail!12285 (List!65388) List!65388)

(assert (=> b!6483933 (= res!2662718 (not (isEmpty!37452 (tail!12285 (_1!36645 lt!2387762)))))))

(declare-fun b!6483934 () Bool)

(declare-fun e!3929883 () Bool)

(declare-fun head!13200 (List!65388) C!32996)

(assert (=> b!6483934 (= e!3929883 (= (head!13200 (_1!36645 lt!2387762)) (c!1187715 (reg!16692 (regOne!33238 r!7292)))))))

(declare-fun b!6483935 () Bool)

(declare-fun e!3929877 () Bool)

(declare-fun derivativeStep!5059 (Regex!16363 C!32996) Regex!16363)

(assert (=> b!6483935 (= e!3929877 (matchR!8546 (derivativeStep!5059 (reg!16692 (regOne!33238 r!7292)) (head!13200 (_1!36645 lt!2387762))) (tail!12285 (_1!36645 lt!2387762))))))

(declare-fun b!6483936 () Bool)

(declare-fun res!2662722 () Bool)

(declare-fun e!3929879 () Bool)

(assert (=> b!6483936 (=> res!2662722 e!3929879)))

(assert (=> b!6483936 (= res!2662722 (not ((_ is ElementMatch!16363) (reg!16692 (regOne!33238 r!7292)))))))

(declare-fun e!3929882 () Bool)

(assert (=> b!6483936 (= e!3929882 e!3929879)))

(declare-fun bm!561207 () Bool)

(declare-fun call!561212 () Bool)

(assert (=> bm!561207 (= call!561212 (isEmpty!37452 (_1!36645 lt!2387762)))))

(declare-fun b!6483937 () Bool)

(declare-fun e!3929878 () Bool)

(declare-fun lt!2387826 () Bool)

(assert (=> b!6483937 (= e!3929878 (= lt!2387826 call!561212))))

(declare-fun b!6483938 () Bool)

(assert (=> b!6483938 (= e!3929880 (not (= (head!13200 (_1!36645 lt!2387762)) (c!1187715 (reg!16692 (regOne!33238 r!7292))))))))

(declare-fun b!6483939 () Bool)

(assert (=> b!6483939 (= e!3929877 (nullable!6356 (reg!16692 (regOne!33238 r!7292))))))

(declare-fun b!6483941 () Bool)

(declare-fun res!2662720 () Bool)

(assert (=> b!6483941 (=> (not res!2662720) (not e!3929883))))

(assert (=> b!6483941 (= res!2662720 (isEmpty!37452 (tail!12285 (_1!36645 lt!2387762))))))

(declare-fun b!6483942 () Bool)

(declare-fun res!2662723 () Bool)

(assert (=> b!6483942 (=> (not res!2662723) (not e!3929883))))

(assert (=> b!6483942 (= res!2662723 (not call!561212))))

(declare-fun b!6483943 () Bool)

(declare-fun e!3929881 () Bool)

(assert (=> b!6483943 (= e!3929881 e!3929880)))

(declare-fun res!2662725 () Bool)

(assert (=> b!6483943 (=> res!2662725 e!3929880)))

(assert (=> b!6483943 (= res!2662725 call!561212)))

(declare-fun b!6483944 () Bool)

(assert (=> b!6483944 (= e!3929879 e!3929881)))

(declare-fun res!2662721 () Bool)

(assert (=> b!6483944 (=> (not res!2662721) (not e!3929881))))

(assert (=> b!6483944 (= res!2662721 (not lt!2387826))))

(declare-fun b!6483945 () Bool)

(declare-fun res!2662724 () Bool)

(assert (=> b!6483945 (=> res!2662724 e!3929879)))

(assert (=> b!6483945 (= res!2662724 e!3929883)))

(declare-fun res!2662719 () Bool)

(assert (=> b!6483945 (=> (not res!2662719) (not e!3929883))))

(assert (=> b!6483945 (= res!2662719 lt!2387826)))

(declare-fun b!6483946 () Bool)

(assert (=> b!6483946 (= e!3929878 e!3929882)))

(declare-fun c!1187839 () Bool)

(assert (=> b!6483946 (= c!1187839 ((_ is EmptyLang!16363) (reg!16692 (regOne!33238 r!7292))))))

(declare-fun b!6483940 () Bool)

(assert (=> b!6483940 (= e!3929882 (not lt!2387826))))

(declare-fun d!2034091 () Bool)

(assert (=> d!2034091 e!3929878))

(declare-fun c!1187840 () Bool)

(assert (=> d!2034091 (= c!1187840 ((_ is EmptyExpr!16363) (reg!16692 (regOne!33238 r!7292))))))

(assert (=> d!2034091 (= lt!2387826 e!3929877)))

(declare-fun c!1187841 () Bool)

(assert (=> d!2034091 (= c!1187841 (isEmpty!37452 (_1!36645 lt!2387762)))))

(assert (=> d!2034091 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034091 (= (matchR!8546 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762)) lt!2387826)))

(assert (= (and d!2034091 c!1187841) b!6483939))

(assert (= (and d!2034091 (not c!1187841)) b!6483935))

(assert (= (and d!2034091 c!1187840) b!6483937))

(assert (= (and d!2034091 (not c!1187840)) b!6483946))

(assert (= (and b!6483946 c!1187839) b!6483940))

(assert (= (and b!6483946 (not c!1187839)) b!6483936))

(assert (= (and b!6483936 (not res!2662722)) b!6483945))

(assert (= (and b!6483945 res!2662719) b!6483942))

(assert (= (and b!6483942 res!2662723) b!6483941))

(assert (= (and b!6483941 res!2662720) b!6483934))

(assert (= (and b!6483945 (not res!2662724)) b!6483944))

(assert (= (and b!6483944 res!2662721) b!6483943))

(assert (= (and b!6483943 (not res!2662725)) b!6483933))

(assert (= (and b!6483933 (not res!2662718)) b!6483938))

(assert (= (or b!6483937 b!6483942 b!6483943) bm!561207))

(declare-fun m!7272174 () Bool)

(assert (=> b!6483934 m!7272174))

(assert (=> b!6483935 m!7272174))

(assert (=> b!6483935 m!7272174))

(declare-fun m!7272176 () Bool)

(assert (=> b!6483935 m!7272176))

(declare-fun m!7272178 () Bool)

(assert (=> b!6483935 m!7272178))

(assert (=> b!6483935 m!7272176))

(assert (=> b!6483935 m!7272178))

(declare-fun m!7272180 () Bool)

(assert (=> b!6483935 m!7272180))

(declare-fun m!7272182 () Bool)

(assert (=> d!2034091 m!7272182))

(declare-fun m!7272184 () Bool)

(assert (=> d!2034091 m!7272184))

(assert (=> b!6483938 m!7272174))

(assert (=> bm!561207 m!7272182))

(assert (=> b!6483933 m!7272178))

(assert (=> b!6483933 m!7272178))

(declare-fun m!7272186 () Bool)

(assert (=> b!6483933 m!7272186))

(assert (=> b!6483941 m!7272178))

(assert (=> b!6483941 m!7272178))

(assert (=> b!6483941 m!7272186))

(declare-fun m!7272188 () Bool)

(assert (=> b!6483939 m!7272188))

(assert (=> b!6483538 d!2034091))

(declare-fun d!2034099 () Bool)

(declare-fun e!3929886 () Bool)

(assert (=> d!2034099 e!3929886))

(declare-fun res!2662728 () Bool)

(assert (=> d!2034099 (=> (not res!2662728) (not e!3929886))))

(declare-fun lt!2387830 () List!65390)

(declare-fun noDuplicate!2183 (List!65390) Bool)

(assert (=> d!2034099 (= res!2662728 (noDuplicate!2183 lt!2387830))))

(declare-fun choose!48088 ((InoxSet Context!11494)) List!65390)

(assert (=> d!2034099 (= lt!2387830 (choose!48088 z!1189))))

(assert (=> d!2034099 (= (toList!10147 z!1189) lt!2387830)))

(declare-fun b!6483949 () Bool)

(declare-fun content!12424 (List!65390) (InoxSet Context!11494))

(assert (=> b!6483949 (= e!3929886 (= (content!12424 lt!2387830) z!1189))))

(assert (= (and d!2034099 res!2662728) b!6483949))

(declare-fun m!7272202 () Bool)

(assert (=> d!2034099 m!7272202))

(declare-fun m!7272204 () Bool)

(assert (=> d!2034099 m!7272204))

(declare-fun m!7272206 () Bool)

(assert (=> b!6483949 m!7272206))

(assert (=> b!6483515 d!2034099))

(declare-fun bs!1644897 () Bool)

(declare-fun d!2034105 () Bool)

(assert (= bs!1644897 (and d!2034105 b!6483542)))

(declare-fun lambda!358788 () Int)

(assert (=> bs!1644897 (= lambda!358788 lambda!358754)))

(declare-fun bs!1644898 () Bool)

(assert (= bs!1644898 (and d!2034105 d!2034039)))

(assert (=> bs!1644898 (= lambda!358788 lambda!358766)))

(declare-fun e!3929908 () Bool)

(assert (=> d!2034105 e!3929908))

(declare-fun res!2662744 () Bool)

(assert (=> d!2034105 (=> (not res!2662744) (not e!3929908))))

(declare-fun lt!2387836 () Regex!16363)

(assert (=> d!2034105 (= res!2662744 (validRegex!8099 lt!2387836))))

(declare-fun e!3929907 () Regex!16363)

(assert (=> d!2034105 (= lt!2387836 e!3929907)))

(declare-fun c!1187852 () Bool)

(declare-fun e!3929903 () Bool)

(assert (=> d!2034105 (= c!1187852 e!3929903)))

(declare-fun res!2662743 () Bool)

(assert (=> d!2034105 (=> (not res!2662743) (not e!3929903))))

(assert (=> d!2034105 (= res!2662743 ((_ is Cons!65265) (unfocusZipperList!1784 zl!343)))))

(assert (=> d!2034105 (forall!15545 (unfocusZipperList!1784 zl!343) lambda!358788)))

(assert (=> d!2034105 (= (generalisedUnion!2207 (unfocusZipperList!1784 zl!343)) lt!2387836)))

(declare-fun b!6483980 () Bool)

(declare-fun e!3929904 () Regex!16363)

(assert (=> b!6483980 (= e!3929907 e!3929904)))

(declare-fun c!1187850 () Bool)

(assert (=> b!6483980 (= c!1187850 ((_ is Cons!65265) (unfocusZipperList!1784 zl!343)))))

(declare-fun b!6483981 () Bool)

(declare-fun e!3929906 () Bool)

(declare-fun isEmptyLang!1763 (Regex!16363) Bool)

(assert (=> b!6483981 (= e!3929906 (isEmptyLang!1763 lt!2387836))))

(declare-fun b!6483982 () Bool)

(declare-fun e!3929905 () Bool)

(declare-fun isUnion!1193 (Regex!16363) Bool)

(assert (=> b!6483982 (= e!3929905 (isUnion!1193 lt!2387836))))

(declare-fun b!6483983 () Bool)

(declare-fun head!13202 (List!65389) Regex!16363)

(assert (=> b!6483983 (= e!3929905 (= lt!2387836 (head!13202 (unfocusZipperList!1784 zl!343))))))

(declare-fun b!6483984 () Bool)

(assert (=> b!6483984 (= e!3929904 (Union!16363 (h!71713 (unfocusZipperList!1784 zl!343)) (generalisedUnion!2207 (t!379015 (unfocusZipperList!1784 zl!343)))))))

(declare-fun b!6483985 () Bool)

(assert (=> b!6483985 (= e!3929904 EmptyLang!16363)))

(declare-fun b!6483986 () Bool)

(assert (=> b!6483986 (= e!3929903 (isEmpty!37453 (t!379015 (unfocusZipperList!1784 zl!343))))))

(declare-fun b!6483987 () Bool)

(assert (=> b!6483987 (= e!3929907 (h!71713 (unfocusZipperList!1784 zl!343)))))

(declare-fun b!6483988 () Bool)

(assert (=> b!6483988 (= e!3929908 e!3929906)))

(declare-fun c!1187851 () Bool)

(assert (=> b!6483988 (= c!1187851 (isEmpty!37453 (unfocusZipperList!1784 zl!343)))))

(declare-fun b!6483989 () Bool)

(assert (=> b!6483989 (= e!3929906 e!3929905)))

(declare-fun c!1187853 () Bool)

(declare-fun tail!12287 (List!65389) List!65389)

(assert (=> b!6483989 (= c!1187853 (isEmpty!37453 (tail!12287 (unfocusZipperList!1784 zl!343))))))

(assert (= (and d!2034105 res!2662743) b!6483986))

(assert (= (and d!2034105 c!1187852) b!6483987))

(assert (= (and d!2034105 (not c!1187852)) b!6483980))

(assert (= (and b!6483980 c!1187850) b!6483984))

(assert (= (and b!6483980 (not c!1187850)) b!6483985))

(assert (= (and d!2034105 res!2662744) b!6483988))

(assert (= (and b!6483988 c!1187851) b!6483981))

(assert (= (and b!6483988 (not c!1187851)) b!6483989))

(assert (= (and b!6483989 c!1187853) b!6483983))

(assert (= (and b!6483989 (not c!1187853)) b!6483982))

(declare-fun m!7272208 () Bool)

(assert (=> d!2034105 m!7272208))

(assert (=> d!2034105 m!7271802))

(declare-fun m!7272210 () Bool)

(assert (=> d!2034105 m!7272210))

(declare-fun m!7272212 () Bool)

(assert (=> b!6483986 m!7272212))

(declare-fun m!7272214 () Bool)

(assert (=> b!6483981 m!7272214))

(assert (=> b!6483989 m!7271802))

(declare-fun m!7272216 () Bool)

(assert (=> b!6483989 m!7272216))

(assert (=> b!6483989 m!7272216))

(declare-fun m!7272218 () Bool)

(assert (=> b!6483989 m!7272218))

(assert (=> b!6483983 m!7271802))

(declare-fun m!7272220 () Bool)

(assert (=> b!6483983 m!7272220))

(assert (=> b!6483988 m!7271802))

(declare-fun m!7272222 () Bool)

(assert (=> b!6483988 m!7272222))

(declare-fun m!7272224 () Bool)

(assert (=> b!6483982 m!7272224))

(declare-fun m!7272228 () Bool)

(assert (=> b!6483984 m!7272228))

(assert (=> b!6483536 d!2034105))

(declare-fun bs!1644903 () Bool)

(declare-fun d!2034107 () Bool)

(assert (= bs!1644903 (and d!2034107 b!6483542)))

(declare-fun lambda!358791 () Int)

(assert (=> bs!1644903 (= lambda!358791 lambda!358754)))

(declare-fun bs!1644904 () Bool)

(assert (= bs!1644904 (and d!2034107 d!2034039)))

(assert (=> bs!1644904 (= lambda!358791 lambda!358766)))

(declare-fun bs!1644905 () Bool)

(assert (= bs!1644905 (and d!2034107 d!2034105)))

(assert (=> bs!1644905 (= lambda!358791 lambda!358788)))

(declare-fun lt!2387842 () List!65389)

(assert (=> d!2034107 (forall!15545 lt!2387842 lambda!358791)))

(declare-fun e!3929911 () List!65389)

(assert (=> d!2034107 (= lt!2387842 e!3929911)))

(declare-fun c!1187856 () Bool)

(assert (=> d!2034107 (= c!1187856 ((_ is Cons!65266) zl!343))))

(assert (=> d!2034107 (= (unfocusZipperList!1784 zl!343) lt!2387842)))

(declare-fun b!6483994 () Bool)

(assert (=> b!6483994 (= e!3929911 (Cons!65265 (generalisedConcat!1960 (exprs!6247 (h!71714 zl!343))) (unfocusZipperList!1784 (t!379016 zl!343))))))

(declare-fun b!6483995 () Bool)

(assert (=> b!6483995 (= e!3929911 Nil!65265)))

(assert (= (and d!2034107 c!1187856) b!6483994))

(assert (= (and d!2034107 (not c!1187856)) b!6483995))

(declare-fun m!7272244 () Bool)

(assert (=> d!2034107 m!7272244))

(assert (=> b!6483994 m!7271886))

(declare-fun m!7272246 () Bool)

(assert (=> b!6483994 m!7272246))

(assert (=> b!6483536 d!2034107))

(declare-fun d!2034119 () Bool)

(assert (=> d!2034119 (= (isEmpty!37454 (t!379016 zl!343)) ((_ is Nil!65266) (t!379016 zl!343)))))

(assert (=> b!6483535 d!2034119))

(declare-fun d!2034121 () Bool)

(assert (=> d!2034121 (= (isEmpty!37453 (t!379015 (exprs!6247 (h!71714 zl!343)))) ((_ is Nil!65265) (t!379015 (exprs!6247 (h!71714 zl!343)))))))

(assert (=> b!6483523 d!2034121))

(declare-fun b!6483996 () Bool)

(declare-fun res!2662745 () Bool)

(declare-fun e!3929915 () Bool)

(assert (=> b!6483996 (=> res!2662745 e!3929915)))

(assert (=> b!6483996 (= res!2662745 (not (isEmpty!37452 (tail!12285 lt!2387749))))))

(declare-fun b!6483997 () Bool)

(declare-fun e!3929918 () Bool)

(assert (=> b!6483997 (= e!3929918 (= (head!13200 lt!2387749) (c!1187715 lt!2387743)))))

(declare-fun b!6483998 () Bool)

(declare-fun e!3929912 () Bool)

(assert (=> b!6483998 (= e!3929912 (matchR!8546 (derivativeStep!5059 lt!2387743 (head!13200 lt!2387749)) (tail!12285 lt!2387749)))))

(declare-fun b!6483999 () Bool)

(declare-fun res!2662749 () Bool)

(declare-fun e!3929914 () Bool)

(assert (=> b!6483999 (=> res!2662749 e!3929914)))

(assert (=> b!6483999 (= res!2662749 (not ((_ is ElementMatch!16363) lt!2387743)))))

(declare-fun e!3929917 () Bool)

(assert (=> b!6483999 (= e!3929917 e!3929914)))

(declare-fun bm!561208 () Bool)

(declare-fun call!561213 () Bool)

(assert (=> bm!561208 (= call!561213 (isEmpty!37452 lt!2387749))))

(declare-fun b!6484000 () Bool)

(declare-fun e!3929913 () Bool)

(declare-fun lt!2387843 () Bool)

(assert (=> b!6484000 (= e!3929913 (= lt!2387843 call!561213))))

(declare-fun b!6484001 () Bool)

(assert (=> b!6484001 (= e!3929915 (not (= (head!13200 lt!2387749) (c!1187715 lt!2387743))))))

(declare-fun b!6484002 () Bool)

(assert (=> b!6484002 (= e!3929912 (nullable!6356 lt!2387743))))

(declare-fun b!6484004 () Bool)

(declare-fun res!2662747 () Bool)

(assert (=> b!6484004 (=> (not res!2662747) (not e!3929918))))

(assert (=> b!6484004 (= res!2662747 (isEmpty!37452 (tail!12285 lt!2387749)))))

(declare-fun b!6484005 () Bool)

(declare-fun res!2662750 () Bool)

(assert (=> b!6484005 (=> (not res!2662750) (not e!3929918))))

(assert (=> b!6484005 (= res!2662750 (not call!561213))))

(declare-fun b!6484006 () Bool)

(declare-fun e!3929916 () Bool)

(assert (=> b!6484006 (= e!3929916 e!3929915)))

(declare-fun res!2662752 () Bool)

(assert (=> b!6484006 (=> res!2662752 e!3929915)))

(assert (=> b!6484006 (= res!2662752 call!561213)))

(declare-fun b!6484007 () Bool)

(assert (=> b!6484007 (= e!3929914 e!3929916)))

(declare-fun res!2662748 () Bool)

(assert (=> b!6484007 (=> (not res!2662748) (not e!3929916))))

(assert (=> b!6484007 (= res!2662748 (not lt!2387843))))

(declare-fun b!6484008 () Bool)

(declare-fun res!2662751 () Bool)

(assert (=> b!6484008 (=> res!2662751 e!3929914)))

(assert (=> b!6484008 (= res!2662751 e!3929918)))

(declare-fun res!2662746 () Bool)

(assert (=> b!6484008 (=> (not res!2662746) (not e!3929918))))

(assert (=> b!6484008 (= res!2662746 lt!2387843)))

(declare-fun b!6484009 () Bool)

(assert (=> b!6484009 (= e!3929913 e!3929917)))

(declare-fun c!1187857 () Bool)

(assert (=> b!6484009 (= c!1187857 ((_ is EmptyLang!16363) lt!2387743))))

(declare-fun b!6484003 () Bool)

(assert (=> b!6484003 (= e!3929917 (not lt!2387843))))

(declare-fun d!2034123 () Bool)

(assert (=> d!2034123 e!3929913))

(declare-fun c!1187858 () Bool)

(assert (=> d!2034123 (= c!1187858 ((_ is EmptyExpr!16363) lt!2387743))))

(assert (=> d!2034123 (= lt!2387843 e!3929912)))

(declare-fun c!1187859 () Bool)

(assert (=> d!2034123 (= c!1187859 (isEmpty!37452 lt!2387749))))

(assert (=> d!2034123 (validRegex!8099 lt!2387743)))

(assert (=> d!2034123 (= (matchR!8546 lt!2387743 lt!2387749) lt!2387843)))

(assert (= (and d!2034123 c!1187859) b!6484002))

(assert (= (and d!2034123 (not c!1187859)) b!6483998))

(assert (= (and d!2034123 c!1187858) b!6484000))

(assert (= (and d!2034123 (not c!1187858)) b!6484009))

(assert (= (and b!6484009 c!1187857) b!6484003))

(assert (= (and b!6484009 (not c!1187857)) b!6483999))

(assert (= (and b!6483999 (not res!2662749)) b!6484008))

(assert (= (and b!6484008 res!2662746) b!6484005))

(assert (= (and b!6484005 res!2662750) b!6484004))

(assert (= (and b!6484004 res!2662747) b!6483997))

(assert (= (and b!6484008 (not res!2662751)) b!6484007))

(assert (= (and b!6484007 res!2662748) b!6484006))

(assert (= (and b!6484006 (not res!2662752)) b!6483996))

(assert (= (and b!6483996 (not res!2662745)) b!6484001))

(assert (= (or b!6484000 b!6484005 b!6484006) bm!561208))

(declare-fun m!7272248 () Bool)

(assert (=> b!6483997 m!7272248))

(assert (=> b!6483998 m!7272248))

(assert (=> b!6483998 m!7272248))

(declare-fun m!7272250 () Bool)

(assert (=> b!6483998 m!7272250))

(declare-fun m!7272252 () Bool)

(assert (=> b!6483998 m!7272252))

(assert (=> b!6483998 m!7272250))

(assert (=> b!6483998 m!7272252))

(declare-fun m!7272254 () Bool)

(assert (=> b!6483998 m!7272254))

(declare-fun m!7272256 () Bool)

(assert (=> d!2034123 m!7272256))

(declare-fun m!7272258 () Bool)

(assert (=> d!2034123 m!7272258))

(assert (=> b!6484001 m!7272248))

(assert (=> bm!561208 m!7272256))

(assert (=> b!6483996 m!7272252))

(assert (=> b!6483996 m!7272252))

(declare-fun m!7272260 () Bool)

(assert (=> b!6483996 m!7272260))

(assert (=> b!6484004 m!7272252))

(assert (=> b!6484004 m!7272252))

(assert (=> b!6484004 m!7272260))

(declare-fun m!7272262 () Bool)

(assert (=> b!6484002 m!7272262))

(assert (=> b!6483542 d!2034123))

(declare-fun d!2034125 () Bool)

(assert (=> d!2034125 (forall!15545 (++!14437 lt!2387735 lt!2387781) lambda!358754)))

(declare-fun lt!2387849 () Unit!158783)

(declare-fun choose!48089 (List!65389 List!65389 Int) Unit!158783)

(assert (=> d!2034125 (= lt!2387849 (choose!48089 lt!2387735 lt!2387781 lambda!358754))))

(assert (=> d!2034125 (forall!15545 lt!2387735 lambda!358754)))

(assert (=> d!2034125 (= (lemmaConcatPreservesForall!342 lt!2387735 lt!2387781 lambda!358754) lt!2387849)))

(declare-fun bs!1644906 () Bool)

(assert (= bs!1644906 d!2034125))

(assert (=> bs!1644906 m!7271746))

(assert (=> bs!1644906 m!7271746))

(declare-fun m!7272278 () Bool)

(assert (=> bs!1644906 m!7272278))

(declare-fun m!7272280 () Bool)

(assert (=> bs!1644906 m!7272280))

(declare-fun m!7272282 () Bool)

(assert (=> bs!1644906 m!7272282))

(assert (=> b!6483542 d!2034125))

(declare-fun d!2034129 () Bool)

(declare-fun e!3929930 () Bool)

(assert (=> d!2034129 e!3929930))

(declare-fun res!2662763 () Bool)

(assert (=> d!2034129 (=> (not res!2662763) (not e!3929930))))

(declare-fun lt!2387853 () List!65389)

(declare-fun content!12425 (List!65389) (InoxSet Regex!16363))

(assert (=> d!2034129 (= res!2662763 (= (content!12425 lt!2387853) ((_ map or) (content!12425 lt!2387735) (content!12425 lt!2387781))))))

(declare-fun e!3929929 () List!65389)

(assert (=> d!2034129 (= lt!2387853 e!3929929)))

(declare-fun c!1187865 () Bool)

(assert (=> d!2034129 (= c!1187865 ((_ is Nil!65265) lt!2387735))))

(assert (=> d!2034129 (= (++!14437 lt!2387735 lt!2387781) lt!2387853)))

(declare-fun b!6484032 () Bool)

(declare-fun res!2662764 () Bool)

(assert (=> b!6484032 (=> (not res!2662764) (not e!3929930))))

(declare-fun size!40415 (List!65389) Int)

(assert (=> b!6484032 (= res!2662764 (= (size!40415 lt!2387853) (+ (size!40415 lt!2387735) (size!40415 lt!2387781))))))

(declare-fun b!6484031 () Bool)

(assert (=> b!6484031 (= e!3929929 (Cons!65265 (h!71713 lt!2387735) (++!14437 (t!379015 lt!2387735) lt!2387781)))))

(declare-fun b!6484033 () Bool)

(assert (=> b!6484033 (= e!3929930 (or (not (= lt!2387781 Nil!65265)) (= lt!2387853 lt!2387735)))))

(declare-fun b!6484030 () Bool)

(assert (=> b!6484030 (= e!3929929 lt!2387781)))

(assert (= (and d!2034129 c!1187865) b!6484030))

(assert (= (and d!2034129 (not c!1187865)) b!6484031))

(assert (= (and d!2034129 res!2662763) b!6484032))

(assert (= (and b!6484032 res!2662764) b!6484033))

(declare-fun m!7272284 () Bool)

(assert (=> d!2034129 m!7272284))

(declare-fun m!7272286 () Bool)

(assert (=> d!2034129 m!7272286))

(declare-fun m!7272288 () Bool)

(assert (=> d!2034129 m!7272288))

(declare-fun m!7272290 () Bool)

(assert (=> b!6484032 m!7272290))

(declare-fun m!7272292 () Bool)

(assert (=> b!6484032 m!7272292))

(declare-fun m!7272294 () Bool)

(assert (=> b!6484032 m!7272294))

(declare-fun m!7272296 () Bool)

(assert (=> b!6484031 m!7272296))

(assert (=> b!6483542 d!2034129))

(declare-fun d!2034133 () Bool)

(assert (=> d!2034133 (matchR!8546 (Concat!25208 lt!2387743 (regTwo!33238 r!7292)) (++!14436 (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(declare-fun lt!2387858 () Unit!158783)

(declare-fun choose!48090 (Regex!16363 Regex!16363 List!65388 List!65388) Unit!158783)

(assert (=> d!2034133 (= lt!2387858 (choose!48090 lt!2387743 (regTwo!33238 r!7292) (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(declare-fun e!3929947 () Bool)

(assert (=> d!2034133 e!3929947))

(declare-fun res!2662783 () Bool)

(assert (=> d!2034133 (=> (not res!2662783) (not e!3929947))))

(assert (=> d!2034133 (= res!2662783 (validRegex!8099 lt!2387743))))

(assert (=> d!2034133 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!326 lt!2387743 (regTwo!33238 r!7292) (_2!36645 lt!2387762) (_2!36645 lt!2387733)) lt!2387858)))

(declare-fun b!6484064 () Bool)

(assert (=> b!6484064 (= e!3929947 (validRegex!8099 (regTwo!33238 r!7292)))))

(assert (= (and d!2034133 res!2662783) b!6484064))

(assert (=> d!2034133 m!7271898))

(assert (=> d!2034133 m!7271898))

(declare-fun m!7272322 () Bool)

(assert (=> d!2034133 m!7272322))

(declare-fun m!7272324 () Bool)

(assert (=> d!2034133 m!7272324))

(assert (=> d!2034133 m!7272258))

(declare-fun m!7272326 () Bool)

(assert (=> b!6484064 m!7272326))

(assert (=> b!6483542 d!2034133))

(declare-fun d!2034141 () Bool)

(declare-fun c!1187877 () Bool)

(assert (=> d!2034141 (= c!1187877 (isEmpty!37452 lt!2387752))))

(declare-fun e!3929956 () Bool)

(assert (=> d!2034141 (= (matchZipper!2375 lt!2387753 lt!2387752) e!3929956)))

(declare-fun b!6484081 () Bool)

(declare-fun nullableZipper!2120 ((InoxSet Context!11494)) Bool)

(assert (=> b!6484081 (= e!3929956 (nullableZipper!2120 lt!2387753))))

(declare-fun b!6484082 () Bool)

(assert (=> b!6484082 (= e!3929956 (matchZipper!2375 (derivationStepZipper!2329 lt!2387753 (head!13200 lt!2387752)) (tail!12285 lt!2387752)))))

(assert (= (and d!2034141 c!1187877) b!6484081))

(assert (= (and d!2034141 (not c!1187877)) b!6484082))

(declare-fun m!7272372 () Bool)

(assert (=> d!2034141 m!7272372))

(declare-fun m!7272374 () Bool)

(assert (=> b!6484081 m!7272374))

(declare-fun m!7272376 () Bool)

(assert (=> b!6484082 m!7272376))

(assert (=> b!6484082 m!7272376))

(declare-fun m!7272378 () Bool)

(assert (=> b!6484082 m!7272378))

(declare-fun m!7272380 () Bool)

(assert (=> b!6484082 m!7272380))

(assert (=> b!6484082 m!7272378))

(assert (=> b!6484082 m!7272380))

(declare-fun m!7272382 () Bool)

(assert (=> b!6484082 m!7272382))

(assert (=> b!6483542 d!2034141))

(declare-fun bs!1644927 () Bool)

(declare-fun d!2034151 () Bool)

(assert (= bs!1644927 (and d!2034151 b!6483542)))

(declare-fun lambda!358800 () Int)

(assert (=> bs!1644927 (= lambda!358800 lambda!358754)))

(declare-fun bs!1644928 () Bool)

(assert (= bs!1644928 (and d!2034151 d!2034039)))

(assert (=> bs!1644928 (= lambda!358800 lambda!358766)))

(declare-fun bs!1644929 () Bool)

(assert (= bs!1644929 (and d!2034151 d!2034105)))

(assert (=> bs!1644929 (= lambda!358800 lambda!358788)))

(declare-fun bs!1644930 () Bool)

(assert (= bs!1644930 (and d!2034151 d!2034107)))

(assert (=> bs!1644930 (= lambda!358800 lambda!358791)))

(assert (=> d!2034151 (matchZipper!2375 (store ((as const (Array Context!11494 Bool)) false) (Context!11495 (++!14437 (exprs!6247 lt!2387750) (exprs!6247 lt!2387737))) true) (++!14436 (_1!36645 lt!2387762) lt!2387752))))

(declare-fun lt!2387875 () Unit!158783)

(assert (=> d!2034151 (= lt!2387875 (lemmaConcatPreservesForall!342 (exprs!6247 lt!2387750) (exprs!6247 lt!2387737) lambda!358800))))

(declare-fun lt!2387874 () Unit!158783)

(declare-fun choose!48091 (Context!11494 Context!11494 List!65388 List!65388) Unit!158783)

(assert (=> d!2034151 (= lt!2387874 (choose!48091 lt!2387750 lt!2387737 (_1!36645 lt!2387762) lt!2387752))))

(assert (=> d!2034151 (matchZipper!2375 (store ((as const (Array Context!11494 Bool)) false) lt!2387750 true) (_1!36645 lt!2387762))))

(assert (=> d!2034151 (= (lemmaConcatenateContextMatchesConcatOfStrings!164 lt!2387750 lt!2387737 (_1!36645 lt!2387762) lt!2387752) lt!2387874)))

(declare-fun bs!1644931 () Bool)

(assert (= bs!1644931 d!2034151))

(declare-fun m!7272430 () Bool)

(assert (=> bs!1644931 m!7272430))

(assert (=> bs!1644931 m!7271908))

(assert (=> bs!1644931 m!7271894))

(declare-fun m!7272434 () Bool)

(assert (=> bs!1644931 m!7272434))

(declare-fun m!7272438 () Bool)

(assert (=> bs!1644931 m!7272438))

(assert (=> bs!1644931 m!7272434))

(assert (=> bs!1644931 m!7271894))

(declare-fun m!7272446 () Bool)

(assert (=> bs!1644931 m!7272446))

(declare-fun m!7272448 () Bool)

(assert (=> bs!1644931 m!7272448))

(assert (=> bs!1644931 m!7271908))

(declare-fun m!7272452 () Bool)

(assert (=> bs!1644931 m!7272452))

(assert (=> b!6483542 d!2034151))

(declare-fun b!6484117 () Bool)

(declare-fun res!2662810 () Bool)

(declare-fun e!3929979 () Bool)

(assert (=> b!6484117 (=> res!2662810 e!3929979)))

(assert (=> b!6484117 (= res!2662810 (not (isEmpty!37452 (tail!12285 lt!2387752))))))

(declare-fun b!6484118 () Bool)

(declare-fun e!3929982 () Bool)

(assert (=> b!6484118 (= e!3929982 (= (head!13200 lt!2387752) (c!1187715 lt!2387772)))))

(declare-fun b!6484119 () Bool)

(declare-fun e!3929976 () Bool)

(assert (=> b!6484119 (= e!3929976 (matchR!8546 (derivativeStep!5059 lt!2387772 (head!13200 lt!2387752)) (tail!12285 lt!2387752)))))

(declare-fun b!6484120 () Bool)

(declare-fun res!2662814 () Bool)

(declare-fun e!3929978 () Bool)

(assert (=> b!6484120 (=> res!2662814 e!3929978)))

(assert (=> b!6484120 (= res!2662814 (not ((_ is ElementMatch!16363) lt!2387772)))))

(declare-fun e!3929981 () Bool)

(assert (=> b!6484120 (= e!3929981 e!3929978)))

(declare-fun bm!561213 () Bool)

(declare-fun call!561218 () Bool)

(assert (=> bm!561213 (= call!561218 (isEmpty!37452 lt!2387752))))

(declare-fun b!6484121 () Bool)

(declare-fun e!3929977 () Bool)

(declare-fun lt!2387877 () Bool)

(assert (=> b!6484121 (= e!3929977 (= lt!2387877 call!561218))))

(declare-fun b!6484122 () Bool)

(assert (=> b!6484122 (= e!3929979 (not (= (head!13200 lt!2387752) (c!1187715 lt!2387772))))))

(declare-fun b!6484123 () Bool)

(assert (=> b!6484123 (= e!3929976 (nullable!6356 lt!2387772))))

(declare-fun b!6484125 () Bool)

(declare-fun res!2662812 () Bool)

(assert (=> b!6484125 (=> (not res!2662812) (not e!3929982))))

(assert (=> b!6484125 (= res!2662812 (isEmpty!37452 (tail!12285 lt!2387752)))))

(declare-fun b!6484126 () Bool)

(declare-fun res!2662815 () Bool)

(assert (=> b!6484126 (=> (not res!2662815) (not e!3929982))))

(assert (=> b!6484126 (= res!2662815 (not call!561218))))

(declare-fun b!6484127 () Bool)

(declare-fun e!3929980 () Bool)

(assert (=> b!6484127 (= e!3929980 e!3929979)))

(declare-fun res!2662817 () Bool)

(assert (=> b!6484127 (=> res!2662817 e!3929979)))

(assert (=> b!6484127 (= res!2662817 call!561218)))

(declare-fun b!6484128 () Bool)

(assert (=> b!6484128 (= e!3929978 e!3929980)))

(declare-fun res!2662813 () Bool)

(assert (=> b!6484128 (=> (not res!2662813) (not e!3929980))))

(assert (=> b!6484128 (= res!2662813 (not lt!2387877))))

(declare-fun b!6484129 () Bool)

(declare-fun res!2662816 () Bool)

(assert (=> b!6484129 (=> res!2662816 e!3929978)))

(assert (=> b!6484129 (= res!2662816 e!3929982)))

(declare-fun res!2662811 () Bool)

(assert (=> b!6484129 (=> (not res!2662811) (not e!3929982))))

(assert (=> b!6484129 (= res!2662811 lt!2387877)))

(declare-fun b!6484132 () Bool)

(assert (=> b!6484132 (= e!3929977 e!3929981)))

(declare-fun c!1187885 () Bool)

(assert (=> b!6484132 (= c!1187885 ((_ is EmptyLang!16363) lt!2387772))))

(declare-fun b!6484124 () Bool)

(assert (=> b!6484124 (= e!3929981 (not lt!2387877))))

(declare-fun d!2034165 () Bool)

(assert (=> d!2034165 e!3929977))

(declare-fun c!1187886 () Bool)

(assert (=> d!2034165 (= c!1187886 ((_ is EmptyExpr!16363) lt!2387772))))

(assert (=> d!2034165 (= lt!2387877 e!3929976)))

(declare-fun c!1187887 () Bool)

(assert (=> d!2034165 (= c!1187887 (isEmpty!37452 lt!2387752))))

(assert (=> d!2034165 (validRegex!8099 lt!2387772)))

(assert (=> d!2034165 (= (matchR!8546 lt!2387772 lt!2387752) lt!2387877)))

(assert (= (and d!2034165 c!1187887) b!6484123))

(assert (= (and d!2034165 (not c!1187887)) b!6484119))

(assert (= (and d!2034165 c!1187886) b!6484121))

(assert (= (and d!2034165 (not c!1187886)) b!6484132))

(assert (= (and b!6484132 c!1187885) b!6484124))

(assert (= (and b!6484132 (not c!1187885)) b!6484120))

(assert (= (and b!6484120 (not res!2662814)) b!6484129))

(assert (= (and b!6484129 res!2662811) b!6484126))

(assert (= (and b!6484126 res!2662815) b!6484125))

(assert (= (and b!6484125 res!2662812) b!6484118))

(assert (= (and b!6484129 (not res!2662816)) b!6484128))

(assert (= (and b!6484128 res!2662813) b!6484127))

(assert (= (and b!6484127 (not res!2662817)) b!6484117))

(assert (= (and b!6484117 (not res!2662810)) b!6484122))

(assert (= (or b!6484121 b!6484126 b!6484127) bm!561213))

(assert (=> b!6484118 m!7272376))

(assert (=> b!6484119 m!7272376))

(assert (=> b!6484119 m!7272376))

(declare-fun m!7272460 () Bool)

(assert (=> b!6484119 m!7272460))

(assert (=> b!6484119 m!7272380))

(assert (=> b!6484119 m!7272460))

(assert (=> b!6484119 m!7272380))

(declare-fun m!7272462 () Bool)

(assert (=> b!6484119 m!7272462))

(assert (=> d!2034165 m!7272372))

(declare-fun m!7272464 () Bool)

(assert (=> d!2034165 m!7272464))

(assert (=> b!6484122 m!7272376))

(assert (=> bm!561213 m!7272372))

(assert (=> b!6484117 m!7272380))

(assert (=> b!6484117 m!7272380))

(declare-fun m!7272466 () Bool)

(assert (=> b!6484117 m!7272466))

(assert (=> b!6484125 m!7272380))

(assert (=> b!6484125 m!7272380))

(assert (=> b!6484125 m!7272466))

(declare-fun m!7272468 () Bool)

(assert (=> b!6484123 m!7272468))

(assert (=> b!6483542 d!2034165))

(declare-fun d!2034171 () Bool)

(declare-fun c!1187889 () Bool)

(assert (=> d!2034171 (= c!1187889 (isEmpty!37452 lt!2387739))))

(declare-fun e!3929984 () Bool)

(assert (=> d!2034171 (= (matchZipper!2375 (store ((as const (Array Context!11494 Bool)) false) (Context!11495 (++!14437 lt!2387735 lt!2387781)) true) lt!2387739) e!3929984)))

(declare-fun b!6484133 () Bool)

(assert (=> b!6484133 (= e!3929984 (nullableZipper!2120 (store ((as const (Array Context!11494 Bool)) false) (Context!11495 (++!14437 lt!2387735 lt!2387781)) true)))))

(declare-fun b!6484134 () Bool)

(assert (=> b!6484134 (= e!3929984 (matchZipper!2375 (derivationStepZipper!2329 (store ((as const (Array Context!11494 Bool)) false) (Context!11495 (++!14437 lt!2387735 lt!2387781)) true) (head!13200 lt!2387739)) (tail!12285 lt!2387739)))))

(assert (= (and d!2034171 c!1187889) b!6484133))

(assert (= (and d!2034171 (not c!1187889)) b!6484134))

(declare-fun m!7272470 () Bool)

(assert (=> d!2034171 m!7272470))

(assert (=> b!6484133 m!7271748))

(declare-fun m!7272472 () Bool)

(assert (=> b!6484133 m!7272472))

(declare-fun m!7272474 () Bool)

(assert (=> b!6484134 m!7272474))

(assert (=> b!6484134 m!7271748))

(assert (=> b!6484134 m!7272474))

(declare-fun m!7272476 () Bool)

(assert (=> b!6484134 m!7272476))

(declare-fun m!7272478 () Bool)

(assert (=> b!6484134 m!7272478))

(assert (=> b!6484134 m!7272476))

(assert (=> b!6484134 m!7272478))

(declare-fun m!7272480 () Bool)

(assert (=> b!6484134 m!7272480))

(assert (=> b!6483542 d!2034171))

(declare-fun d!2034173 () Bool)

(assert (=> d!2034173 (matchR!8546 (Concat!25208 (reg!16692 (regOne!33238 r!7292)) lt!2387772) (++!14436 (_1!36645 lt!2387762) lt!2387752))))

(declare-fun lt!2387878 () Unit!158783)

(assert (=> d!2034173 (= lt!2387878 (choose!48090 (reg!16692 (regOne!33238 r!7292)) lt!2387772 (_1!36645 lt!2387762) lt!2387752))))

(declare-fun e!3929985 () Bool)

(assert (=> d!2034173 e!3929985))

(declare-fun res!2662818 () Bool)

(assert (=> d!2034173 (=> (not res!2662818) (not e!3929985))))

(assert (=> d!2034173 (= res!2662818 (validRegex!8099 (reg!16692 (regOne!33238 r!7292))))))

(assert (=> d!2034173 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!326 (reg!16692 (regOne!33238 r!7292)) lt!2387772 (_1!36645 lt!2387762) lt!2387752) lt!2387878)))

(declare-fun b!6484135 () Bool)

(assert (=> b!6484135 (= e!3929985 (validRegex!8099 lt!2387772))))

(assert (= (and d!2034173 res!2662818) b!6484135))

(assert (=> d!2034173 m!7271894))

(assert (=> d!2034173 m!7271894))

(declare-fun m!7272482 () Bool)

(assert (=> d!2034173 m!7272482))

(declare-fun m!7272484 () Bool)

(assert (=> d!2034173 m!7272484))

(assert (=> d!2034173 m!7272184))

(assert (=> b!6484135 m!7272464))

(assert (=> b!6483542 d!2034173))

(declare-fun b!6484136 () Bool)

(declare-fun res!2662819 () Bool)

(declare-fun e!3929989 () Bool)

(assert (=> b!6484136 (=> res!2662819 e!3929989)))

(assert (=> b!6484136 (= res!2662819 (not (isEmpty!37452 (tail!12285 lt!2387739))))))

(declare-fun b!6484137 () Bool)

(declare-fun e!3929992 () Bool)

(assert (=> b!6484137 (= e!3929992 (= (head!13200 lt!2387739) (c!1187715 lt!2387730)))))

(declare-fun b!6484138 () Bool)

(declare-fun e!3929986 () Bool)

(assert (=> b!6484138 (= e!3929986 (matchR!8546 (derivativeStep!5059 lt!2387730 (head!13200 lt!2387739)) (tail!12285 lt!2387739)))))

(declare-fun b!6484139 () Bool)

(declare-fun res!2662823 () Bool)

(declare-fun e!3929988 () Bool)

(assert (=> b!6484139 (=> res!2662823 e!3929988)))

(assert (=> b!6484139 (= res!2662823 (not ((_ is ElementMatch!16363) lt!2387730)))))

(declare-fun e!3929991 () Bool)

(assert (=> b!6484139 (= e!3929991 e!3929988)))

(declare-fun bm!561214 () Bool)

(declare-fun call!561219 () Bool)

(assert (=> bm!561214 (= call!561219 (isEmpty!37452 lt!2387739))))

(declare-fun b!6484140 () Bool)

(declare-fun e!3929987 () Bool)

(declare-fun lt!2387879 () Bool)

(assert (=> b!6484140 (= e!3929987 (= lt!2387879 call!561219))))

(declare-fun b!6484141 () Bool)

(assert (=> b!6484141 (= e!3929989 (not (= (head!13200 lt!2387739) (c!1187715 lt!2387730))))))

(declare-fun b!6484142 () Bool)

(assert (=> b!6484142 (= e!3929986 (nullable!6356 lt!2387730))))

(declare-fun b!6484144 () Bool)

(declare-fun res!2662821 () Bool)

(assert (=> b!6484144 (=> (not res!2662821) (not e!3929992))))

(assert (=> b!6484144 (= res!2662821 (isEmpty!37452 (tail!12285 lt!2387739)))))

(declare-fun b!6484145 () Bool)

(declare-fun res!2662824 () Bool)

(assert (=> b!6484145 (=> (not res!2662824) (not e!3929992))))

(assert (=> b!6484145 (= res!2662824 (not call!561219))))

(declare-fun b!6484146 () Bool)

(declare-fun e!3929990 () Bool)

(assert (=> b!6484146 (= e!3929990 e!3929989)))

(declare-fun res!2662826 () Bool)

(assert (=> b!6484146 (=> res!2662826 e!3929989)))

(assert (=> b!6484146 (= res!2662826 call!561219)))

(declare-fun b!6484147 () Bool)

(assert (=> b!6484147 (= e!3929988 e!3929990)))

(declare-fun res!2662822 () Bool)

(assert (=> b!6484147 (=> (not res!2662822) (not e!3929990))))

(assert (=> b!6484147 (= res!2662822 (not lt!2387879))))

(declare-fun b!6484148 () Bool)

(declare-fun res!2662825 () Bool)

(assert (=> b!6484148 (=> res!2662825 e!3929988)))

(assert (=> b!6484148 (= res!2662825 e!3929992)))

(declare-fun res!2662820 () Bool)

(assert (=> b!6484148 (=> (not res!2662820) (not e!3929992))))

(assert (=> b!6484148 (= res!2662820 lt!2387879)))

(declare-fun b!6484149 () Bool)

(assert (=> b!6484149 (= e!3929987 e!3929991)))

(declare-fun c!1187890 () Bool)

(assert (=> b!6484149 (= c!1187890 ((_ is EmptyLang!16363) lt!2387730))))

(declare-fun b!6484143 () Bool)

(assert (=> b!6484143 (= e!3929991 (not lt!2387879))))

(declare-fun d!2034175 () Bool)

(assert (=> d!2034175 e!3929987))

(declare-fun c!1187891 () Bool)

(assert (=> d!2034175 (= c!1187891 ((_ is EmptyExpr!16363) lt!2387730))))

(assert (=> d!2034175 (= lt!2387879 e!3929986)))

(declare-fun c!1187892 () Bool)

(assert (=> d!2034175 (= c!1187892 (isEmpty!37452 lt!2387739))))

(assert (=> d!2034175 (validRegex!8099 lt!2387730)))

(assert (=> d!2034175 (= (matchR!8546 lt!2387730 lt!2387739) lt!2387879)))

(assert (= (and d!2034175 c!1187892) b!6484142))

(assert (= (and d!2034175 (not c!1187892)) b!6484138))

(assert (= (and d!2034175 c!1187891) b!6484140))

(assert (= (and d!2034175 (not c!1187891)) b!6484149))

(assert (= (and b!6484149 c!1187890) b!6484143))

(assert (= (and b!6484149 (not c!1187890)) b!6484139))

(assert (= (and b!6484139 (not res!2662823)) b!6484148))

(assert (= (and b!6484148 res!2662820) b!6484145))

(assert (= (and b!6484145 res!2662824) b!6484144))

(assert (= (and b!6484144 res!2662821) b!6484137))

(assert (= (and b!6484148 (not res!2662825)) b!6484147))

(assert (= (and b!6484147 res!2662822) b!6484146))

(assert (= (and b!6484146 (not res!2662826)) b!6484136))

(assert (= (and b!6484136 (not res!2662819)) b!6484141))

(assert (= (or b!6484140 b!6484145 b!6484146) bm!561214))

(assert (=> b!6484137 m!7272474))

(assert (=> b!6484138 m!7272474))

(assert (=> b!6484138 m!7272474))

(declare-fun m!7272486 () Bool)

(assert (=> b!6484138 m!7272486))

(assert (=> b!6484138 m!7272478))

(assert (=> b!6484138 m!7272486))

(assert (=> b!6484138 m!7272478))

(declare-fun m!7272488 () Bool)

(assert (=> b!6484138 m!7272488))

(assert (=> d!2034175 m!7272470))

(declare-fun m!7272490 () Bool)

(assert (=> d!2034175 m!7272490))

(assert (=> b!6484141 m!7272474))

(assert (=> bm!561214 m!7272470))

(assert (=> b!6484136 m!7272478))

(assert (=> b!6484136 m!7272478))

(declare-fun m!7272492 () Bool)

(assert (=> b!6484136 m!7272492))

(assert (=> b!6484144 m!7272478))

(assert (=> b!6484144 m!7272478))

(assert (=> b!6484144 m!7272492))

(declare-fun m!7272494 () Bool)

(assert (=> b!6484142 m!7272494))

(assert (=> b!6483542 d!2034175))

(declare-fun bs!1644932 () Bool)

(declare-fun d!2034177 () Bool)

(assert (= bs!1644932 (and d!2034177 d!2034039)))

(declare-fun lambda!358801 () Int)

(assert (=> bs!1644932 (= lambda!358801 lambda!358766)))

(declare-fun bs!1644933 () Bool)

(assert (= bs!1644933 (and d!2034177 d!2034151)))

(assert (=> bs!1644933 (= lambda!358801 lambda!358800)))

(declare-fun bs!1644934 () Bool)

(assert (= bs!1644934 (and d!2034177 d!2034107)))

(assert (=> bs!1644934 (= lambda!358801 lambda!358791)))

(declare-fun bs!1644935 () Bool)

(assert (= bs!1644935 (and d!2034177 b!6483542)))

(assert (=> bs!1644935 (= lambda!358801 lambda!358754)))

(declare-fun bs!1644936 () Bool)

(assert (= bs!1644936 (and d!2034177 d!2034105)))

(assert (=> bs!1644936 (= lambda!358801 lambda!358788)))

(assert (=> d!2034177 (= (inv!84154 lt!2387750) (forall!15545 (exprs!6247 lt!2387750) lambda!358801))))

(declare-fun bs!1644937 () Bool)

(assert (= bs!1644937 d!2034177))

(declare-fun m!7272496 () Bool)

(assert (=> bs!1644937 m!7272496))

(assert (=> b!6483542 d!2034177))

(declare-fun d!2034179 () Bool)

(assert (=> d!2034179 (= (matchR!8546 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762)) (matchZipper!2375 lt!2387734 (_1!36645 lt!2387762)))))

(declare-fun lt!2387887 () Unit!158783)

(declare-fun choose!48094 ((InoxSet Context!11494) List!65390 Regex!16363 List!65388) Unit!158783)

(assert (=> d!2034179 (= lt!2387887 (choose!48094 lt!2387734 lt!2387783 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762)))))

(assert (=> d!2034179 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034179 (= (theoremZipperRegexEquiv!829 lt!2387734 lt!2387783 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762)) lt!2387887)))

(declare-fun bs!1644940 () Bool)

(assert (= bs!1644940 d!2034179))

(assert (=> bs!1644940 m!7271816))

(assert (=> bs!1644940 m!7271760))

(declare-fun m!7272510 () Bool)

(assert (=> bs!1644940 m!7272510))

(assert (=> bs!1644940 m!7272184))

(assert (=> b!6483542 d!2034179))

(declare-fun d!2034187 () Bool)

(assert (=> d!2034187 (= (matchR!8546 lt!2387772 lt!2387752) (matchZipper!2375 lt!2387753 lt!2387752))))

(declare-fun lt!2387888 () Unit!158783)

(assert (=> d!2034187 (= lt!2387888 (choose!48094 lt!2387753 lt!2387778 lt!2387772 lt!2387752))))

(assert (=> d!2034187 (validRegex!8099 lt!2387772)))

(assert (=> d!2034187 (= (theoremZipperRegexEquiv!829 lt!2387753 lt!2387778 lt!2387772 lt!2387752) lt!2387888)))

(declare-fun bs!1644941 () Bool)

(assert (= bs!1644941 d!2034187))

(assert (=> bs!1644941 m!7271762))

(assert (=> bs!1644941 m!7271766))

(declare-fun m!7272512 () Bool)

(assert (=> bs!1644941 m!7272512))

(assert (=> bs!1644941 m!7272464))

(assert (=> b!6483542 d!2034187))

(declare-fun d!2034189 () Bool)

(declare-fun c!1187896 () Bool)

(assert (=> d!2034189 (= c!1187896 (isEmpty!37452 (_1!36645 lt!2387762)))))

(declare-fun e!3930000 () Bool)

(assert (=> d!2034189 (= (matchZipper!2375 lt!2387734 (_1!36645 lt!2387762)) e!3930000)))

(declare-fun b!6484164 () Bool)

(assert (=> b!6484164 (= e!3930000 (nullableZipper!2120 lt!2387734))))

(declare-fun b!6484165 () Bool)

(assert (=> b!6484165 (= e!3930000 (matchZipper!2375 (derivationStepZipper!2329 lt!2387734 (head!13200 (_1!36645 lt!2387762))) (tail!12285 (_1!36645 lt!2387762))))))

(assert (= (and d!2034189 c!1187896) b!6484164))

(assert (= (and d!2034189 (not c!1187896)) b!6484165))

(assert (=> d!2034189 m!7272182))

(declare-fun m!7272514 () Bool)

(assert (=> b!6484164 m!7272514))

(assert (=> b!6484165 m!7272174))

(assert (=> b!6484165 m!7272174))

(declare-fun m!7272516 () Bool)

(assert (=> b!6484165 m!7272516))

(assert (=> b!6484165 m!7272178))

(assert (=> b!6484165 m!7272516))

(assert (=> b!6484165 m!7272178))

(declare-fun m!7272518 () Bool)

(assert (=> b!6484165 m!7272518))

(assert (=> b!6483542 d!2034189))

(declare-fun d!2034191 () Bool)

(assert (=> d!2034191 (matchR!8546 (Star!16363 (reg!16692 (regOne!33238 r!7292))) (++!14436 (_1!36645 lt!2387762) (_2!36645 lt!2387762)))))

(declare-fun lt!2387894 () Unit!158783)

(declare-fun choose!48095 (Regex!16363 List!65388 List!65388) Unit!158783)

(assert (=> d!2034191 (= lt!2387894 (choose!48095 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762) (_2!36645 lt!2387762)))))

(assert (=> d!2034191 (validRegex!8099 (Star!16363 (reg!16692 (regOne!33238 r!7292))))))

(assert (=> d!2034191 (= (lemmaStarApp!140 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387762) (_2!36645 lt!2387762)) lt!2387894)))

(declare-fun bs!1644942 () Bool)

(assert (= bs!1644942 d!2034191))

(assert (=> bs!1644942 m!7271836))

(assert (=> bs!1644942 m!7271836))

(declare-fun m!7272534 () Bool)

(assert (=> bs!1644942 m!7272534))

(declare-fun m!7272536 () Bool)

(assert (=> bs!1644942 m!7272536))

(declare-fun m!7272538 () Bool)

(assert (=> bs!1644942 m!7272538))

(assert (=> b!6483542 d!2034191))

(declare-fun bs!1644954 () Bool)

(declare-fun b!6484225 () Bool)

(assert (= bs!1644954 (and b!6484225 b!6483504)))

(declare-fun lambda!358810 () Int)

(assert (=> bs!1644954 (not (= lambda!358810 lambda!358749))))

(assert (=> bs!1644954 (not (= lambda!358810 lambda!358750))))

(declare-fun bs!1644958 () Bool)

(assert (= bs!1644958 (and b!6484225 b!6483513)))

(assert (=> bs!1644958 (not (= lambda!358810 lambda!358751))))

(assert (=> bs!1644958 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (reg!16692 lt!2387730) (reg!16692 (regOne!33238 r!7292))) (= lt!2387730 lt!2387743)) (= lambda!358810 lambda!358752))))

(assert (=> bs!1644958 (not (= lambda!358810 lambda!358753))))

(declare-fun bs!1644961 () Bool)

(assert (= bs!1644961 (and b!6484225 b!6483529)))

(assert (=> bs!1644961 (not (= lambda!358810 lambda!358747))))

(assert (=> bs!1644961 (not (= lambda!358810 lambda!358746))))

(assert (=> b!6484225 true))

(assert (=> b!6484225 true))

(declare-fun bs!1644964 () Bool)

(declare-fun b!6484232 () Bool)

(assert (= bs!1644964 (and b!6484232 b!6483504)))

(declare-fun lambda!358811 () Int)

(assert (=> bs!1644964 (not (= lambda!358811 lambda!358749))))

(declare-fun bs!1644965 () Bool)

(assert (= bs!1644965 (and b!6484232 b!6484225)))

(assert (=> bs!1644965 (not (= lambda!358811 lambda!358810))))

(assert (=> bs!1644964 (= (and (= (regOne!33238 lt!2387730) lt!2387743) (= (regTwo!33238 lt!2387730) (regTwo!33238 r!7292))) (= lambda!358811 lambda!358750))))

(declare-fun bs!1644966 () Bool)

(assert (= bs!1644966 (and b!6484232 b!6483513)))

(assert (=> bs!1644966 (not (= lambda!358811 lambda!358751))))

(assert (=> bs!1644966 (not (= lambda!358811 lambda!358752))))

(assert (=> bs!1644966 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (regOne!33238 lt!2387730) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 lt!2387730) lt!2387743)) (= lambda!358811 lambda!358753))))

(declare-fun bs!1644967 () Bool)

(assert (= bs!1644967 (and b!6484232 b!6483529)))

(assert (=> bs!1644967 (= (and (= (regOne!33238 lt!2387730) (regOne!33238 r!7292)) (= (regTwo!33238 lt!2387730) (regTwo!33238 r!7292))) (= lambda!358811 lambda!358747))))

(assert (=> bs!1644967 (not (= lambda!358811 lambda!358746))))

(assert (=> b!6484232 true))

(assert (=> b!6484232 true))

(declare-fun b!6484223 () Bool)

(declare-fun c!1187915 () Bool)

(assert (=> b!6484223 (= c!1187915 ((_ is Union!16363) lt!2387730))))

(declare-fun e!3930038 () Bool)

(declare-fun e!3930033 () Bool)

(assert (=> b!6484223 (= e!3930038 e!3930033)))

(declare-fun d!2034195 () Bool)

(declare-fun c!1187913 () Bool)

(assert (=> d!2034195 (= c!1187913 ((_ is EmptyExpr!16363) lt!2387730))))

(declare-fun e!3930034 () Bool)

(assert (=> d!2034195 (= (matchRSpec!3464 lt!2387730 s!2326) e!3930034)))

(declare-fun b!6484224 () Bool)

(declare-fun call!561228 () Bool)

(assert (=> b!6484224 (= e!3930034 call!561228)))

(declare-fun e!3930035 () Bool)

(declare-fun call!561227 () Bool)

(assert (=> b!6484225 (= e!3930035 call!561227)))

(declare-fun b!6484226 () Bool)

(declare-fun e!3930037 () Bool)

(assert (=> b!6484226 (= e!3930033 e!3930037)))

(declare-fun c!1187914 () Bool)

(assert (=> b!6484226 (= c!1187914 ((_ is Star!16363) lt!2387730))))

(declare-fun b!6484227 () Bool)

(assert (=> b!6484227 (= e!3930038 (= s!2326 (Cons!65264 (c!1187715 lt!2387730) Nil!65264)))))

(declare-fun b!6484228 () Bool)

(declare-fun e!3930039 () Bool)

(assert (=> b!6484228 (= e!3930034 e!3930039)))

(declare-fun res!2662861 () Bool)

(assert (=> b!6484228 (= res!2662861 (not ((_ is EmptyLang!16363) lt!2387730)))))

(assert (=> b!6484228 (=> (not res!2662861) (not e!3930039))))

(declare-fun b!6484229 () Bool)

(declare-fun c!1187916 () Bool)

(assert (=> b!6484229 (= c!1187916 ((_ is ElementMatch!16363) lt!2387730))))

(assert (=> b!6484229 (= e!3930039 e!3930038)))

(declare-fun b!6484230 () Bool)

(declare-fun e!3930036 () Bool)

(assert (=> b!6484230 (= e!3930033 e!3930036)))

(declare-fun res!2662860 () Bool)

(assert (=> b!6484230 (= res!2662860 (matchRSpec!3464 (regOne!33239 lt!2387730) s!2326))))

(assert (=> b!6484230 (=> res!2662860 e!3930036)))

(declare-fun bm!561222 () Bool)

(assert (=> bm!561222 (= call!561227 (Exists!3433 (ite c!1187914 lambda!358810 lambda!358811)))))

(declare-fun b!6484231 () Bool)

(declare-fun res!2662862 () Bool)

(assert (=> b!6484231 (=> res!2662862 e!3930035)))

(assert (=> b!6484231 (= res!2662862 call!561228)))

(assert (=> b!6484231 (= e!3930037 e!3930035)))

(declare-fun bm!561223 () Bool)

(assert (=> bm!561223 (= call!561228 (isEmpty!37452 s!2326))))

(assert (=> b!6484232 (= e!3930037 call!561227)))

(declare-fun b!6484233 () Bool)

(assert (=> b!6484233 (= e!3930036 (matchRSpec!3464 (regTwo!33239 lt!2387730) s!2326))))

(assert (= (and d!2034195 c!1187913) b!6484224))

(assert (= (and d!2034195 (not c!1187913)) b!6484228))

(assert (= (and b!6484228 res!2662861) b!6484229))

(assert (= (and b!6484229 c!1187916) b!6484227))

(assert (= (and b!6484229 (not c!1187916)) b!6484223))

(assert (= (and b!6484223 c!1187915) b!6484230))

(assert (= (and b!6484223 (not c!1187915)) b!6484226))

(assert (= (and b!6484230 (not res!2662860)) b!6484233))

(assert (= (and b!6484226 c!1187914) b!6484231))

(assert (= (and b!6484226 (not c!1187914)) b!6484232))

(assert (= (and b!6484231 (not res!2662862)) b!6484225))

(assert (= (or b!6484225 b!6484232) bm!561222))

(assert (= (or b!6484224 b!6484231) bm!561223))

(declare-fun m!7272570 () Bool)

(assert (=> b!6484230 m!7272570))

(declare-fun m!7272572 () Bool)

(assert (=> bm!561222 m!7272572))

(declare-fun m!7272574 () Bool)

(assert (=> bm!561223 m!7272574))

(declare-fun m!7272576 () Bool)

(assert (=> b!6484233 m!7272576))

(assert (=> b!6483544 d!2034195))

(declare-fun b!6484234 () Bool)

(declare-fun res!2662863 () Bool)

(declare-fun e!3930043 () Bool)

(assert (=> b!6484234 (=> res!2662863 e!3930043)))

(assert (=> b!6484234 (= res!2662863 (not (isEmpty!37452 (tail!12285 s!2326))))))

(declare-fun b!6484235 () Bool)

(declare-fun e!3930046 () Bool)

(assert (=> b!6484235 (= e!3930046 (= (head!13200 s!2326) (c!1187715 lt!2387730)))))

(declare-fun b!6484236 () Bool)

(declare-fun e!3930040 () Bool)

(assert (=> b!6484236 (= e!3930040 (matchR!8546 (derivativeStep!5059 lt!2387730 (head!13200 s!2326)) (tail!12285 s!2326)))))

(declare-fun b!6484237 () Bool)

(declare-fun res!2662867 () Bool)

(declare-fun e!3930042 () Bool)

(assert (=> b!6484237 (=> res!2662867 e!3930042)))

(assert (=> b!6484237 (= res!2662867 (not ((_ is ElementMatch!16363) lt!2387730)))))

(declare-fun e!3930045 () Bool)

(assert (=> b!6484237 (= e!3930045 e!3930042)))

(declare-fun bm!561224 () Bool)

(declare-fun call!561229 () Bool)

(assert (=> bm!561224 (= call!561229 (isEmpty!37452 s!2326))))

(declare-fun b!6484238 () Bool)

(declare-fun e!3930041 () Bool)

(declare-fun lt!2387907 () Bool)

(assert (=> b!6484238 (= e!3930041 (= lt!2387907 call!561229))))

(declare-fun b!6484239 () Bool)

(assert (=> b!6484239 (= e!3930043 (not (= (head!13200 s!2326) (c!1187715 lt!2387730))))))

(declare-fun b!6484240 () Bool)

(assert (=> b!6484240 (= e!3930040 (nullable!6356 lt!2387730))))

(declare-fun b!6484242 () Bool)

(declare-fun res!2662865 () Bool)

(assert (=> b!6484242 (=> (not res!2662865) (not e!3930046))))

(assert (=> b!6484242 (= res!2662865 (isEmpty!37452 (tail!12285 s!2326)))))

(declare-fun b!6484243 () Bool)

(declare-fun res!2662868 () Bool)

(assert (=> b!6484243 (=> (not res!2662868) (not e!3930046))))

(assert (=> b!6484243 (= res!2662868 (not call!561229))))

(declare-fun b!6484244 () Bool)

(declare-fun e!3930044 () Bool)

(assert (=> b!6484244 (= e!3930044 e!3930043)))

(declare-fun res!2662870 () Bool)

(assert (=> b!6484244 (=> res!2662870 e!3930043)))

(assert (=> b!6484244 (= res!2662870 call!561229)))

(declare-fun b!6484245 () Bool)

(assert (=> b!6484245 (= e!3930042 e!3930044)))

(declare-fun res!2662866 () Bool)

(assert (=> b!6484245 (=> (not res!2662866) (not e!3930044))))

(assert (=> b!6484245 (= res!2662866 (not lt!2387907))))

(declare-fun b!6484246 () Bool)

(declare-fun res!2662869 () Bool)

(assert (=> b!6484246 (=> res!2662869 e!3930042)))

(assert (=> b!6484246 (= res!2662869 e!3930046)))

(declare-fun res!2662864 () Bool)

(assert (=> b!6484246 (=> (not res!2662864) (not e!3930046))))

(assert (=> b!6484246 (= res!2662864 lt!2387907)))

(declare-fun b!6484247 () Bool)

(assert (=> b!6484247 (= e!3930041 e!3930045)))

(declare-fun c!1187917 () Bool)

(assert (=> b!6484247 (= c!1187917 ((_ is EmptyLang!16363) lt!2387730))))

(declare-fun b!6484241 () Bool)

(assert (=> b!6484241 (= e!3930045 (not lt!2387907))))

(declare-fun d!2034205 () Bool)

(assert (=> d!2034205 e!3930041))

(declare-fun c!1187918 () Bool)

(assert (=> d!2034205 (= c!1187918 ((_ is EmptyExpr!16363) lt!2387730))))

(assert (=> d!2034205 (= lt!2387907 e!3930040)))

(declare-fun c!1187919 () Bool)

(assert (=> d!2034205 (= c!1187919 (isEmpty!37452 s!2326))))

(assert (=> d!2034205 (validRegex!8099 lt!2387730)))

(assert (=> d!2034205 (= (matchR!8546 lt!2387730 s!2326) lt!2387907)))

(assert (= (and d!2034205 c!1187919) b!6484240))

(assert (= (and d!2034205 (not c!1187919)) b!6484236))

(assert (= (and d!2034205 c!1187918) b!6484238))

(assert (= (and d!2034205 (not c!1187918)) b!6484247))

(assert (= (and b!6484247 c!1187917) b!6484241))

(assert (= (and b!6484247 (not c!1187917)) b!6484237))

(assert (= (and b!6484237 (not res!2662867)) b!6484246))

(assert (= (and b!6484246 res!2662864) b!6484243))

(assert (= (and b!6484243 res!2662868) b!6484242))

(assert (= (and b!6484242 res!2662865) b!6484235))

(assert (= (and b!6484246 (not res!2662869)) b!6484245))

(assert (= (and b!6484245 res!2662866) b!6484244))

(assert (= (and b!6484244 (not res!2662870)) b!6484234))

(assert (= (and b!6484234 (not res!2662863)) b!6484239))

(assert (= (or b!6484238 b!6484243 b!6484244) bm!561224))

(declare-fun m!7272578 () Bool)

(assert (=> b!6484235 m!7272578))

(assert (=> b!6484236 m!7272578))

(assert (=> b!6484236 m!7272578))

(declare-fun m!7272580 () Bool)

(assert (=> b!6484236 m!7272580))

(declare-fun m!7272582 () Bool)

(assert (=> b!6484236 m!7272582))

(assert (=> b!6484236 m!7272580))

(assert (=> b!6484236 m!7272582))

(declare-fun m!7272584 () Bool)

(assert (=> b!6484236 m!7272584))

(assert (=> d!2034205 m!7272574))

(assert (=> d!2034205 m!7272490))

(assert (=> b!6484239 m!7272578))

(assert (=> bm!561224 m!7272574))

(assert (=> b!6484234 m!7272582))

(assert (=> b!6484234 m!7272582))

(declare-fun m!7272586 () Bool)

(assert (=> b!6484234 m!7272586))

(assert (=> b!6484242 m!7272582))

(assert (=> b!6484242 m!7272582))

(assert (=> b!6484242 m!7272586))

(assert (=> b!6484240 m!7272494))

(assert (=> b!6483544 d!2034205))

(declare-fun d!2034207 () Bool)

(assert (=> d!2034207 (= (matchR!8546 lt!2387730 s!2326) (matchRSpec!3464 lt!2387730 s!2326))))

(declare-fun lt!2387912 () Unit!158783)

(declare-fun choose!48096 (Regex!16363 List!65388) Unit!158783)

(assert (=> d!2034207 (= lt!2387912 (choose!48096 lt!2387730 s!2326))))

(assert (=> d!2034207 (validRegex!8099 lt!2387730)))

(assert (=> d!2034207 (= (mainMatchTheorem!3464 lt!2387730 s!2326) lt!2387912)))

(declare-fun bs!1644982 () Bool)

(assert (= bs!1644982 d!2034207))

(assert (=> bs!1644982 m!7271812))

(assert (=> bs!1644982 m!7271810))

(declare-fun m!7272604 () Bool)

(assert (=> bs!1644982 m!7272604))

(assert (=> bs!1644982 m!7272490))

(assert (=> b!6483544 d!2034207))

(declare-fun d!2034215 () Bool)

(assert (=> d!2034215 (= (isEmpty!37452 (_1!36645 lt!2387733)) ((_ is Nil!65264) (_1!36645 lt!2387733)))))

(assert (=> b!6483503 d!2034215))

(declare-fun b!6484273 () Bool)

(declare-fun res!2662882 () Bool)

(declare-fun e!3930064 () Bool)

(assert (=> b!6484273 (=> res!2662882 e!3930064)))

(assert (=> b!6484273 (= res!2662882 (not (isEmpty!37452 (tail!12285 (_2!36645 lt!2387762)))))))

(declare-fun b!6484274 () Bool)

(declare-fun e!3930067 () Bool)

(assert (=> b!6484274 (= e!3930067 (= (head!13200 (_2!36645 lt!2387762)) (c!1187715 lt!2387743)))))

(declare-fun b!6484275 () Bool)

(declare-fun e!3930061 () Bool)

(assert (=> b!6484275 (= e!3930061 (matchR!8546 (derivativeStep!5059 lt!2387743 (head!13200 (_2!36645 lt!2387762))) (tail!12285 (_2!36645 lt!2387762))))))

(declare-fun b!6484276 () Bool)

(declare-fun res!2662886 () Bool)

(declare-fun e!3930063 () Bool)

(assert (=> b!6484276 (=> res!2662886 e!3930063)))

(assert (=> b!6484276 (= res!2662886 (not ((_ is ElementMatch!16363) lt!2387743)))))

(declare-fun e!3930066 () Bool)

(assert (=> b!6484276 (= e!3930066 e!3930063)))

(declare-fun bm!561228 () Bool)

(declare-fun call!561233 () Bool)

(assert (=> bm!561228 (= call!561233 (isEmpty!37452 (_2!36645 lt!2387762)))))

(declare-fun b!6484277 () Bool)

(declare-fun e!3930062 () Bool)

(declare-fun lt!2387913 () Bool)

(assert (=> b!6484277 (= e!3930062 (= lt!2387913 call!561233))))

(declare-fun b!6484278 () Bool)

(assert (=> b!6484278 (= e!3930064 (not (= (head!13200 (_2!36645 lt!2387762)) (c!1187715 lt!2387743))))))

(declare-fun b!6484279 () Bool)

(assert (=> b!6484279 (= e!3930061 (nullable!6356 lt!2387743))))

(declare-fun b!6484281 () Bool)

(declare-fun res!2662884 () Bool)

(assert (=> b!6484281 (=> (not res!2662884) (not e!3930067))))

(assert (=> b!6484281 (= res!2662884 (isEmpty!37452 (tail!12285 (_2!36645 lt!2387762))))))

(declare-fun b!6484282 () Bool)

(declare-fun res!2662887 () Bool)

(assert (=> b!6484282 (=> (not res!2662887) (not e!3930067))))

(assert (=> b!6484282 (= res!2662887 (not call!561233))))

(declare-fun b!6484283 () Bool)

(declare-fun e!3930065 () Bool)

(assert (=> b!6484283 (= e!3930065 e!3930064)))

(declare-fun res!2662889 () Bool)

(assert (=> b!6484283 (=> res!2662889 e!3930064)))

(assert (=> b!6484283 (= res!2662889 call!561233)))

(declare-fun b!6484284 () Bool)

(assert (=> b!6484284 (= e!3930063 e!3930065)))

(declare-fun res!2662885 () Bool)

(assert (=> b!6484284 (=> (not res!2662885) (not e!3930065))))

(assert (=> b!6484284 (= res!2662885 (not lt!2387913))))

(declare-fun b!6484285 () Bool)

(declare-fun res!2662888 () Bool)

(assert (=> b!6484285 (=> res!2662888 e!3930063)))

(assert (=> b!6484285 (= res!2662888 e!3930067)))

(declare-fun res!2662883 () Bool)

(assert (=> b!6484285 (=> (not res!2662883) (not e!3930067))))

(assert (=> b!6484285 (= res!2662883 lt!2387913)))

(declare-fun b!6484286 () Bool)

(assert (=> b!6484286 (= e!3930062 e!3930066)))

(declare-fun c!1187927 () Bool)

(assert (=> b!6484286 (= c!1187927 ((_ is EmptyLang!16363) lt!2387743))))

(declare-fun b!6484280 () Bool)

(assert (=> b!6484280 (= e!3930066 (not lt!2387913))))

(declare-fun d!2034217 () Bool)

(assert (=> d!2034217 e!3930062))

(declare-fun c!1187928 () Bool)

(assert (=> d!2034217 (= c!1187928 ((_ is EmptyExpr!16363) lt!2387743))))

(assert (=> d!2034217 (= lt!2387913 e!3930061)))

(declare-fun c!1187929 () Bool)

(assert (=> d!2034217 (= c!1187929 (isEmpty!37452 (_2!36645 lt!2387762)))))

(assert (=> d!2034217 (validRegex!8099 lt!2387743)))

(assert (=> d!2034217 (= (matchR!8546 lt!2387743 (_2!36645 lt!2387762)) lt!2387913)))

(assert (= (and d!2034217 c!1187929) b!6484279))

(assert (= (and d!2034217 (not c!1187929)) b!6484275))

(assert (= (and d!2034217 c!1187928) b!6484277))

(assert (= (and d!2034217 (not c!1187928)) b!6484286))

(assert (= (and b!6484286 c!1187927) b!6484280))

(assert (= (and b!6484286 (not c!1187927)) b!6484276))

(assert (= (and b!6484276 (not res!2662886)) b!6484285))

(assert (= (and b!6484285 res!2662883) b!6484282))

(assert (= (and b!6484282 res!2662887) b!6484281))

(assert (= (and b!6484281 res!2662884) b!6484274))

(assert (= (and b!6484285 (not res!2662888)) b!6484284))

(assert (= (and b!6484284 res!2662885) b!6484283))

(assert (= (and b!6484283 (not res!2662889)) b!6484273))

(assert (= (and b!6484273 (not res!2662882)) b!6484278))

(assert (= (or b!6484277 b!6484282 b!6484283) bm!561228))

(declare-fun m!7272606 () Bool)

(assert (=> b!6484274 m!7272606))

(assert (=> b!6484275 m!7272606))

(assert (=> b!6484275 m!7272606))

(declare-fun m!7272608 () Bool)

(assert (=> b!6484275 m!7272608))

(declare-fun m!7272610 () Bool)

(assert (=> b!6484275 m!7272610))

(assert (=> b!6484275 m!7272608))

(assert (=> b!6484275 m!7272610))

(declare-fun m!7272612 () Bool)

(assert (=> b!6484275 m!7272612))

(declare-fun m!7272614 () Bool)

(assert (=> d!2034217 m!7272614))

(assert (=> d!2034217 m!7272258))

(assert (=> b!6484278 m!7272606))

(assert (=> bm!561228 m!7272614))

(assert (=> b!6484273 m!7272610))

(assert (=> b!6484273 m!7272610))

(declare-fun m!7272616 () Bool)

(assert (=> b!6484273 m!7272616))

(assert (=> b!6484281 m!7272610))

(assert (=> b!6484281 m!7272610))

(assert (=> b!6484281 m!7272616))

(assert (=> b!6484279 m!7272262))

(assert (=> b!6483524 d!2034217))

(declare-fun d!2034219 () Bool)

(declare-fun lt!2387916 () Regex!16363)

(assert (=> d!2034219 (validRegex!8099 lt!2387916)))

(assert (=> d!2034219 (= lt!2387916 (generalisedUnion!2207 (unfocusZipperList!1784 lt!2387778)))))

(assert (=> d!2034219 (= (unfocusZipper!2105 lt!2387778) lt!2387916)))

(declare-fun bs!1645002 () Bool)

(assert (= bs!1645002 d!2034219))

(declare-fun m!7272618 () Bool)

(assert (=> bs!1645002 m!7272618))

(declare-fun m!7272620 () Bool)

(assert (=> bs!1645002 m!7272620))

(assert (=> bs!1645002 m!7272620))

(declare-fun m!7272622 () Bool)

(assert (=> bs!1645002 m!7272622))

(assert (=> b!6483543 d!2034219))

(declare-fun d!2034221 () Bool)

(assert (=> d!2034221 (= (flatMap!1868 lt!2387753 lambda!358748) (dynLambda!25922 lambda!358748 lt!2387737))))

(declare-fun lt!2387917 () Unit!158783)

(assert (=> d!2034221 (= lt!2387917 (choose!48085 lt!2387753 lt!2387737 lambda!358748))))

(assert (=> d!2034221 (= lt!2387753 (store ((as const (Array Context!11494 Bool)) false) lt!2387737 true))))

(assert (=> d!2034221 (= (lemmaFlatMapOnSingletonSet!1394 lt!2387753 lt!2387737 lambda!358748) lt!2387917)))

(declare-fun b_lambda!245541 () Bool)

(assert (=> (not b_lambda!245541) (not d!2034221)))

(declare-fun bs!1645006 () Bool)

(assert (= bs!1645006 d!2034221))

(assert (=> bs!1645006 m!7271918))

(declare-fun m!7272624 () Bool)

(assert (=> bs!1645006 m!7272624))

(declare-fun m!7272626 () Bool)

(assert (=> bs!1645006 m!7272626))

(assert (=> bs!1645006 m!7271906))

(assert (=> b!6483539 d!2034221))

(declare-fun d!2034223 () Bool)

(assert (=> d!2034223 (= (flatMap!1868 lt!2387753 lambda!358748) (choose!48084 lt!2387753 lambda!358748))))

(declare-fun bs!1645007 () Bool)

(assert (= bs!1645007 d!2034223))

(declare-fun m!7272628 () Bool)

(assert (=> bs!1645007 m!7272628))

(assert (=> b!6483539 d!2034223))

(declare-fun d!2034225 () Bool)

(assert (=> d!2034225 (= (flatMap!1868 lt!2387734 lambda!358748) (dynLambda!25922 lambda!358748 lt!2387750))))

(declare-fun lt!2387918 () Unit!158783)

(assert (=> d!2034225 (= lt!2387918 (choose!48085 lt!2387734 lt!2387750 lambda!358748))))

(assert (=> d!2034225 (= lt!2387734 (store ((as const (Array Context!11494 Bool)) false) lt!2387750 true))))

(assert (=> d!2034225 (= (lemmaFlatMapOnSingletonSet!1394 lt!2387734 lt!2387750 lambda!358748) lt!2387918)))

(declare-fun b_lambda!245543 () Bool)

(assert (=> (not b_lambda!245543) (not d!2034225)))

(declare-fun bs!1645008 () Bool)

(assert (= bs!1645008 d!2034225))

(assert (=> bs!1645008 m!7271910))

(declare-fun m!7272630 () Bool)

(assert (=> bs!1645008 m!7272630))

(declare-fun m!7272632 () Bool)

(assert (=> bs!1645008 m!7272632))

(assert (=> bs!1645008 m!7271908))

(assert (=> b!6483539 d!2034225))

(declare-fun b!6484287 () Bool)

(declare-fun e!3930068 () (InoxSet Context!11494))

(assert (=> b!6484287 (= e!3930068 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561229 () Bool)

(declare-fun call!561234 () (InoxSet Context!11494))

(assert (=> bm!561229 (= call!561234 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 lt!2387750)) (Context!11495 (t!379015 (exprs!6247 lt!2387750))) (h!71712 s!2326)))))

(declare-fun e!3930069 () (InoxSet Context!11494))

(declare-fun b!6484288 () Bool)

(assert (=> b!6484288 (= e!3930069 ((_ map or) call!561234 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 lt!2387750))) (h!71712 s!2326))))))

(declare-fun b!6484289 () Bool)

(assert (=> b!6484289 (= e!3930069 e!3930068)))

(declare-fun c!1187930 () Bool)

(assert (=> b!6484289 (= c!1187930 ((_ is Cons!65265) (exprs!6247 lt!2387750)))))

(declare-fun b!6484291 () Bool)

(declare-fun e!3930070 () Bool)

(assert (=> b!6484291 (= e!3930070 (nullable!6356 (h!71713 (exprs!6247 lt!2387750))))))

(declare-fun d!2034227 () Bool)

(declare-fun c!1187931 () Bool)

(assert (=> d!2034227 (= c!1187931 e!3930070)))

(declare-fun res!2662890 () Bool)

(assert (=> d!2034227 (=> (not res!2662890) (not e!3930070))))

(assert (=> d!2034227 (= res!2662890 ((_ is Cons!65265) (exprs!6247 lt!2387750)))))

(assert (=> d!2034227 (= (derivationStepZipperUp!1537 lt!2387750 (h!71712 s!2326)) e!3930069)))

(declare-fun b!6484290 () Bool)

(assert (=> b!6484290 (= e!3930068 call!561234)))

(assert (= (and d!2034227 res!2662890) b!6484291))

(assert (= (and d!2034227 c!1187931) b!6484288))

(assert (= (and d!2034227 (not c!1187931)) b!6484289))

(assert (= (and b!6484289 c!1187930) b!6484290))

(assert (= (and b!6484289 (not c!1187930)) b!6484287))

(assert (= (or b!6484288 b!6484290) bm!561229))

(declare-fun m!7272634 () Bool)

(assert (=> bm!561229 m!7272634))

(declare-fun m!7272636 () Bool)

(assert (=> b!6484288 m!7272636))

(declare-fun m!7272638 () Bool)

(assert (=> b!6484291 m!7272638))

(assert (=> b!6483539 d!2034227))

(declare-fun d!2034229 () Bool)

(assert (=> d!2034229 (= (flatMap!1868 lt!2387734 lambda!358748) (choose!48084 lt!2387734 lambda!358748))))

(declare-fun bs!1645010 () Bool)

(assert (= bs!1645010 d!2034229))

(declare-fun m!7272640 () Bool)

(assert (=> bs!1645010 m!7272640))

(assert (=> b!6483539 d!2034229))

(declare-fun d!2034231 () Bool)

(declare-fun lt!2387919 () Regex!16363)

(assert (=> d!2034231 (validRegex!8099 lt!2387919)))

(assert (=> d!2034231 (= lt!2387919 (generalisedUnion!2207 (unfocusZipperList!1784 lt!2387783)))))

(assert (=> d!2034231 (= (unfocusZipper!2105 lt!2387783) lt!2387919)))

(declare-fun bs!1645011 () Bool)

(assert (= bs!1645011 d!2034231))

(declare-fun m!7272648 () Bool)

(assert (=> bs!1645011 m!7272648))

(declare-fun m!7272650 () Bool)

(assert (=> bs!1645011 m!7272650))

(assert (=> bs!1645011 m!7272650))

(declare-fun m!7272652 () Bool)

(assert (=> bs!1645011 m!7272652))

(assert (=> b!6483539 d!2034231))

(declare-fun b!6484305 () Bool)

(declare-fun e!3930078 () (InoxSet Context!11494))

(assert (=> b!6484305 (= e!3930078 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561231 () Bool)

(declare-fun call!561236 () (InoxSet Context!11494))

(assert (=> bm!561231 (= call!561236 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 lt!2387737)) (Context!11495 (t!379015 (exprs!6247 lt!2387737))) (h!71712 s!2326)))))

(declare-fun e!3930079 () (InoxSet Context!11494))

(declare-fun b!6484306 () Bool)

(assert (=> b!6484306 (= e!3930079 ((_ map or) call!561236 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 lt!2387737))) (h!71712 s!2326))))))

(declare-fun b!6484307 () Bool)

(assert (=> b!6484307 (= e!3930079 e!3930078)))

(declare-fun c!1187935 () Bool)

(assert (=> b!6484307 (= c!1187935 ((_ is Cons!65265) (exprs!6247 lt!2387737)))))

(declare-fun b!6484309 () Bool)

(declare-fun e!3930080 () Bool)

(assert (=> b!6484309 (= e!3930080 (nullable!6356 (h!71713 (exprs!6247 lt!2387737))))))

(declare-fun d!2034235 () Bool)

(declare-fun c!1187936 () Bool)

(assert (=> d!2034235 (= c!1187936 e!3930080)))

(declare-fun res!2662899 () Bool)

(assert (=> d!2034235 (=> (not res!2662899) (not e!3930080))))

(assert (=> d!2034235 (= res!2662899 ((_ is Cons!65265) (exprs!6247 lt!2387737)))))

(assert (=> d!2034235 (= (derivationStepZipperUp!1537 lt!2387737 (h!71712 s!2326)) e!3930079)))

(declare-fun b!6484308 () Bool)

(assert (=> b!6484308 (= e!3930078 call!561236)))

(assert (= (and d!2034235 res!2662899) b!6484309))

(assert (= (and d!2034235 c!1187936) b!6484306))

(assert (= (and d!2034235 (not c!1187936)) b!6484307))

(assert (= (and b!6484307 c!1187935) b!6484308))

(assert (= (and b!6484307 (not c!1187935)) b!6484305))

(assert (= (or b!6484306 b!6484308) bm!561231))

(declare-fun m!7272654 () Bool)

(assert (=> bm!561231 m!7272654))

(declare-fun m!7272656 () Bool)

(assert (=> b!6484306 m!7272656))

(declare-fun m!7272658 () Bool)

(assert (=> b!6484309 m!7272658))

(assert (=> b!6483539 d!2034235))

(declare-fun bs!1645013 () Bool)

(declare-fun d!2034237 () Bool)

(assert (= bs!1645013 (and d!2034237 d!2034039)))

(declare-fun lambda!358819 () Int)

(assert (=> bs!1645013 (= lambda!358819 lambda!358766)))

(declare-fun bs!1645014 () Bool)

(assert (= bs!1645014 (and d!2034237 d!2034151)))

(assert (=> bs!1645014 (= lambda!358819 lambda!358800)))

(declare-fun bs!1645015 () Bool)

(assert (= bs!1645015 (and d!2034237 d!2034107)))

(assert (=> bs!1645015 (= lambda!358819 lambda!358791)))

(declare-fun bs!1645016 () Bool)

(assert (= bs!1645016 (and d!2034237 b!6483542)))

(assert (=> bs!1645016 (= lambda!358819 lambda!358754)))

(declare-fun bs!1645017 () Bool)

(assert (= bs!1645017 (and d!2034237 d!2034105)))

(assert (=> bs!1645017 (= lambda!358819 lambda!358788)))

(declare-fun bs!1645018 () Bool)

(assert (= bs!1645018 (and d!2034237 d!2034177)))

(assert (=> bs!1645018 (= lambda!358819 lambda!358801)))

(declare-fun b!6484351 () Bool)

(declare-fun e!3930106 () Regex!16363)

(declare-fun e!3930105 () Regex!16363)

(assert (=> b!6484351 (= e!3930106 e!3930105)))

(declare-fun c!1187953 () Bool)

(assert (=> b!6484351 (= c!1187953 ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343))))))

(declare-fun b!6484352 () Bool)

(assert (=> b!6484352 (= e!3930105 EmptyExpr!16363)))

(declare-fun b!6484353 () Bool)

(declare-fun e!3930109 () Bool)

(declare-fun e!3930108 () Bool)

(assert (=> b!6484353 (= e!3930109 e!3930108)))

(declare-fun c!1187956 () Bool)

(assert (=> b!6484353 (= c!1187956 (isEmpty!37453 (tail!12287 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun e!3930107 () Bool)

(assert (=> d!2034237 e!3930107))

(declare-fun res!2662909 () Bool)

(assert (=> d!2034237 (=> (not res!2662909) (not e!3930107))))

(declare-fun lt!2387926 () Regex!16363)

(assert (=> d!2034237 (= res!2662909 (validRegex!8099 lt!2387926))))

(assert (=> d!2034237 (= lt!2387926 e!3930106)))

(declare-fun c!1187954 () Bool)

(declare-fun e!3930110 () Bool)

(assert (=> d!2034237 (= c!1187954 e!3930110)))

(declare-fun res!2662908 () Bool)

(assert (=> d!2034237 (=> (not res!2662908) (not e!3930110))))

(assert (=> d!2034237 (= res!2662908 ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343))))))

(assert (=> d!2034237 (forall!15545 (exprs!6247 (h!71714 zl!343)) lambda!358819)))

(assert (=> d!2034237 (= (generalisedConcat!1960 (exprs!6247 (h!71714 zl!343))) lt!2387926)))

(declare-fun b!6484354 () Bool)

(assert (=> b!6484354 (= e!3930107 e!3930109)))

(declare-fun c!1187955 () Bool)

(assert (=> b!6484354 (= c!1187955 (isEmpty!37453 (exprs!6247 (h!71714 zl!343))))))

(declare-fun b!6484355 () Bool)

(assert (=> b!6484355 (= e!3930110 (isEmpty!37453 (t!379015 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun b!6484356 () Bool)

(assert (=> b!6484356 (= e!3930108 (= lt!2387926 (head!13202 (exprs!6247 (h!71714 zl!343)))))))

(declare-fun b!6484357 () Bool)

(assert (=> b!6484357 (= e!3930106 (h!71713 (exprs!6247 (h!71714 zl!343))))))

(declare-fun b!6484358 () Bool)

(assert (=> b!6484358 (= e!3930105 (Concat!25208 (h!71713 (exprs!6247 (h!71714 zl!343))) (generalisedConcat!1960 (t!379015 (exprs!6247 (h!71714 zl!343))))))))

(declare-fun b!6484359 () Bool)

(declare-fun isEmptyExpr!1754 (Regex!16363) Bool)

(assert (=> b!6484359 (= e!3930109 (isEmptyExpr!1754 lt!2387926))))

(declare-fun b!6484360 () Bool)

(declare-fun isConcat!1277 (Regex!16363) Bool)

(assert (=> b!6484360 (= e!3930108 (isConcat!1277 lt!2387926))))

(assert (= (and d!2034237 res!2662908) b!6484355))

(assert (= (and d!2034237 c!1187954) b!6484357))

(assert (= (and d!2034237 (not c!1187954)) b!6484351))

(assert (= (and b!6484351 c!1187953) b!6484358))

(assert (= (and b!6484351 (not c!1187953)) b!6484352))

(assert (= (and d!2034237 res!2662909) b!6484354))

(assert (= (and b!6484354 c!1187955) b!6484359))

(assert (= (and b!6484354 (not c!1187955)) b!6484353))

(assert (= (and b!6484353 c!1187956) b!6484356))

(assert (= (and b!6484353 (not c!1187956)) b!6484360))

(declare-fun m!7272666 () Bool)

(assert (=> d!2034237 m!7272666))

(declare-fun m!7272668 () Bool)

(assert (=> d!2034237 m!7272668))

(declare-fun m!7272670 () Bool)

(assert (=> b!6484358 m!7272670))

(declare-fun m!7272672 () Bool)

(assert (=> b!6484359 m!7272672))

(declare-fun m!7272674 () Bool)

(assert (=> b!6484356 m!7272674))

(declare-fun m!7272676 () Bool)

(assert (=> b!6484354 m!7272676))

(assert (=> b!6484355 m!7271738))

(declare-fun m!7272678 () Bool)

(assert (=> b!6484360 m!7272678))

(declare-fun m!7272680 () Bool)

(assert (=> b!6484353 m!7272680))

(assert (=> b!6484353 m!7272680))

(declare-fun m!7272682 () Bool)

(assert (=> b!6484353 m!7272682))

(assert (=> b!6483522 d!2034237))

(declare-fun bm!561238 () Bool)

(declare-fun call!561244 () Bool)

(declare-fun c!1187968 () Bool)

(assert (=> bm!561238 (= call!561244 (validRegex!8099 (ite c!1187968 (regOne!33239 r!7292) (regOne!33238 r!7292))))))

(declare-fun b!6484398 () Bool)

(declare-fun res!2662929 () Bool)

(declare-fun e!3930139 () Bool)

(assert (=> b!6484398 (=> (not res!2662929) (not e!3930139))))

(assert (=> b!6484398 (= res!2662929 call!561244)))

(declare-fun e!3930142 () Bool)

(assert (=> b!6484398 (= e!3930142 e!3930139)))

(declare-fun b!6484399 () Bool)

(declare-fun res!2662928 () Bool)

(declare-fun e!3930138 () Bool)

(assert (=> b!6484399 (=> res!2662928 e!3930138)))

(assert (=> b!6484399 (= res!2662928 (not ((_ is Concat!25208) r!7292)))))

(assert (=> b!6484399 (= e!3930142 e!3930138)))

(declare-fun b!6484400 () Bool)

(declare-fun e!3930137 () Bool)

(declare-fun call!561243 () Bool)

(assert (=> b!6484400 (= e!3930137 call!561243)))

(declare-fun d!2034245 () Bool)

(declare-fun res!2662931 () Bool)

(declare-fun e!3930136 () Bool)

(assert (=> d!2034245 (=> res!2662931 e!3930136)))

(assert (=> d!2034245 (= res!2662931 ((_ is ElementMatch!16363) r!7292))))

(assert (=> d!2034245 (= (validRegex!8099 r!7292) e!3930136)))

(declare-fun b!6484401 () Bool)

(declare-fun e!3930140 () Bool)

(declare-fun e!3930141 () Bool)

(assert (=> b!6484401 (= e!3930140 e!3930141)))

(declare-fun res!2662930 () Bool)

(assert (=> b!6484401 (= res!2662930 (not (nullable!6356 (reg!16692 r!7292))))))

(assert (=> b!6484401 (=> (not res!2662930) (not e!3930141))))

(declare-fun b!6484402 () Bool)

(assert (=> b!6484402 (= e!3930138 e!3930137)))

(declare-fun res!2662927 () Bool)

(assert (=> b!6484402 (=> (not res!2662927) (not e!3930137))))

(assert (=> b!6484402 (= res!2662927 call!561244)))

(declare-fun bm!561239 () Bool)

(declare-fun c!1187967 () Bool)

(declare-fun call!561245 () Bool)

(assert (=> bm!561239 (= call!561245 (validRegex!8099 (ite c!1187967 (reg!16692 r!7292) (ite c!1187968 (regTwo!33239 r!7292) (regTwo!33238 r!7292)))))))

(declare-fun b!6484403 () Bool)

(assert (=> b!6484403 (= e!3930141 call!561245)))

(declare-fun b!6484404 () Bool)

(assert (=> b!6484404 (= e!3930136 e!3930140)))

(assert (=> b!6484404 (= c!1187967 ((_ is Star!16363) r!7292))))

(declare-fun b!6484405 () Bool)

(assert (=> b!6484405 (= e!3930140 e!3930142)))

(assert (=> b!6484405 (= c!1187968 ((_ is Union!16363) r!7292))))

(declare-fun b!6484406 () Bool)

(assert (=> b!6484406 (= e!3930139 call!561243)))

(declare-fun bm!561240 () Bool)

(assert (=> bm!561240 (= call!561243 call!561245)))

(assert (= (and d!2034245 (not res!2662931)) b!6484404))

(assert (= (and b!6484404 c!1187967) b!6484401))

(assert (= (and b!6484404 (not c!1187967)) b!6484405))

(assert (= (and b!6484401 res!2662930) b!6484403))

(assert (= (and b!6484405 c!1187968) b!6484398))

(assert (= (and b!6484405 (not c!1187968)) b!6484399))

(assert (= (and b!6484398 res!2662929) b!6484406))

(assert (= (and b!6484399 (not res!2662928)) b!6484402))

(assert (= (and b!6484402 res!2662927) b!6484400))

(assert (= (or b!6484406 b!6484400) bm!561240))

(assert (= (or b!6484398 b!6484402) bm!561238))

(assert (= (or b!6484403 bm!561240) bm!561239))

(declare-fun m!7272712 () Bool)

(assert (=> bm!561238 m!7272712))

(declare-fun m!7272714 () Bool)

(assert (=> b!6484401 m!7272714))

(declare-fun m!7272716 () Bool)

(assert (=> bm!561239 m!7272716))

(assert (=> start!637290 d!2034245))

(declare-fun bs!1645041 () Bool)

(declare-fun b!6484409 () Bool)

(assert (= bs!1645041 (and b!6484409 b!6483504)))

(declare-fun lambda!358822 () Int)

(assert (=> bs!1645041 (not (= lambda!358822 lambda!358749))))

(declare-fun bs!1645042 () Bool)

(assert (= bs!1645042 (and b!6484409 b!6484232)))

(assert (=> bs!1645042 (not (= lambda!358822 lambda!358811))))

(declare-fun bs!1645044 () Bool)

(assert (= bs!1645044 (and b!6484409 b!6484225)))

(assert (=> bs!1645044 (= (and (= (reg!16692 r!7292) (reg!16692 lt!2387730)) (= r!7292 lt!2387730)) (= lambda!358822 lambda!358810))))

(assert (=> bs!1645041 (not (= lambda!358822 lambda!358750))))

(declare-fun bs!1645047 () Bool)

(assert (= bs!1645047 (and b!6484409 b!6483513)))

(assert (=> bs!1645047 (not (= lambda!358822 lambda!358751))))

(assert (=> bs!1645047 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (reg!16692 r!7292) (reg!16692 (regOne!33238 r!7292))) (= r!7292 lt!2387743)) (= lambda!358822 lambda!358752))))

(assert (=> bs!1645047 (not (= lambda!358822 lambda!358753))))

(declare-fun bs!1645051 () Bool)

(assert (= bs!1645051 (and b!6484409 b!6483529)))

(assert (=> bs!1645051 (not (= lambda!358822 lambda!358747))))

(assert (=> bs!1645051 (not (= lambda!358822 lambda!358746))))

(assert (=> b!6484409 true))

(assert (=> b!6484409 true))

(declare-fun bs!1645058 () Bool)

(declare-fun b!6484416 () Bool)

(assert (= bs!1645058 (and b!6484416 b!6483504)))

(declare-fun lambda!358824 () Int)

(assert (=> bs!1645058 (not (= lambda!358824 lambda!358749))))

(declare-fun bs!1645060 () Bool)

(assert (= bs!1645060 (and b!6484416 b!6484232)))

(assert (=> bs!1645060 (= (and (= (regOne!33238 r!7292) (regOne!33238 lt!2387730)) (= (regTwo!33238 r!7292) (regTwo!33238 lt!2387730))) (= lambda!358824 lambda!358811))))

(declare-fun bs!1645061 () Bool)

(assert (= bs!1645061 (and b!6484416 b!6484225)))

(assert (=> bs!1645061 (not (= lambda!358824 lambda!358810))))

(declare-fun bs!1645062 () Bool)

(assert (= bs!1645062 (and b!6484416 b!6483513)))

(assert (=> bs!1645062 (not (= lambda!358824 lambda!358751))))

(assert (=> bs!1645062 (not (= lambda!358824 lambda!358752))))

(assert (=> bs!1645062 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (regOne!33238 r!7292) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358824 lambda!358753))))

(assert (=> bs!1645058 (= (= (regOne!33238 r!7292) lt!2387743) (= lambda!358824 lambda!358750))))

(declare-fun bs!1645064 () Bool)

(assert (= bs!1645064 (and b!6484416 b!6484409)))

(assert (=> bs!1645064 (not (= lambda!358824 lambda!358822))))

(declare-fun bs!1645065 () Bool)

(assert (= bs!1645065 (and b!6484416 b!6483529)))

(assert (=> bs!1645065 (= lambda!358824 lambda!358747)))

(assert (=> bs!1645065 (not (= lambda!358824 lambda!358746))))

(assert (=> b!6484416 true))

(assert (=> b!6484416 true))

(declare-fun b!6484407 () Bool)

(declare-fun c!1187971 () Bool)

(assert (=> b!6484407 (= c!1187971 ((_ is Union!16363) r!7292))))

(declare-fun e!3930148 () Bool)

(declare-fun e!3930143 () Bool)

(assert (=> b!6484407 (= e!3930148 e!3930143)))

(declare-fun d!2034251 () Bool)

(declare-fun c!1187969 () Bool)

(assert (=> d!2034251 (= c!1187969 ((_ is EmptyExpr!16363) r!7292))))

(declare-fun e!3930144 () Bool)

(assert (=> d!2034251 (= (matchRSpec!3464 r!7292 s!2326) e!3930144)))

(declare-fun b!6484408 () Bool)

(declare-fun call!561247 () Bool)

(assert (=> b!6484408 (= e!3930144 call!561247)))

(declare-fun e!3930145 () Bool)

(declare-fun call!561246 () Bool)

(assert (=> b!6484409 (= e!3930145 call!561246)))

(declare-fun b!6484410 () Bool)

(declare-fun e!3930147 () Bool)

(assert (=> b!6484410 (= e!3930143 e!3930147)))

(declare-fun c!1187970 () Bool)

(assert (=> b!6484410 (= c!1187970 ((_ is Star!16363) r!7292))))

(declare-fun b!6484411 () Bool)

(assert (=> b!6484411 (= e!3930148 (= s!2326 (Cons!65264 (c!1187715 r!7292) Nil!65264)))))

(declare-fun b!6484412 () Bool)

(declare-fun e!3930149 () Bool)

(assert (=> b!6484412 (= e!3930144 e!3930149)))

(declare-fun res!2662933 () Bool)

(assert (=> b!6484412 (= res!2662933 (not ((_ is EmptyLang!16363) r!7292)))))

(assert (=> b!6484412 (=> (not res!2662933) (not e!3930149))))

(declare-fun b!6484413 () Bool)

(declare-fun c!1187972 () Bool)

(assert (=> b!6484413 (= c!1187972 ((_ is ElementMatch!16363) r!7292))))

(assert (=> b!6484413 (= e!3930149 e!3930148)))

(declare-fun b!6484414 () Bool)

(declare-fun e!3930146 () Bool)

(assert (=> b!6484414 (= e!3930143 e!3930146)))

(declare-fun res!2662932 () Bool)

(assert (=> b!6484414 (= res!2662932 (matchRSpec!3464 (regOne!33239 r!7292) s!2326))))

(assert (=> b!6484414 (=> res!2662932 e!3930146)))

(declare-fun bm!561241 () Bool)

(assert (=> bm!561241 (= call!561246 (Exists!3433 (ite c!1187970 lambda!358822 lambda!358824)))))

(declare-fun b!6484415 () Bool)

(declare-fun res!2662934 () Bool)

(assert (=> b!6484415 (=> res!2662934 e!3930145)))

(assert (=> b!6484415 (= res!2662934 call!561247)))

(assert (=> b!6484415 (= e!3930147 e!3930145)))

(declare-fun bm!561242 () Bool)

(assert (=> bm!561242 (= call!561247 (isEmpty!37452 s!2326))))

(assert (=> b!6484416 (= e!3930147 call!561246)))

(declare-fun b!6484417 () Bool)

(assert (=> b!6484417 (= e!3930146 (matchRSpec!3464 (regTwo!33239 r!7292) s!2326))))

(assert (= (and d!2034251 c!1187969) b!6484408))

(assert (= (and d!2034251 (not c!1187969)) b!6484412))

(assert (= (and b!6484412 res!2662933) b!6484413))

(assert (= (and b!6484413 c!1187972) b!6484411))

(assert (= (and b!6484413 (not c!1187972)) b!6484407))

(assert (= (and b!6484407 c!1187971) b!6484414))

(assert (= (and b!6484407 (not c!1187971)) b!6484410))

(assert (= (and b!6484414 (not res!2662932)) b!6484417))

(assert (= (and b!6484410 c!1187970) b!6484415))

(assert (= (and b!6484410 (not c!1187970)) b!6484416))

(assert (= (and b!6484415 (not res!2662934)) b!6484409))

(assert (= (or b!6484409 b!6484416) bm!561241))

(assert (= (or b!6484408 b!6484415) bm!561242))

(declare-fun m!7272730 () Bool)

(assert (=> b!6484414 m!7272730))

(declare-fun m!7272732 () Bool)

(assert (=> bm!561241 m!7272732))

(assert (=> bm!561242 m!7272574))

(declare-fun m!7272734 () Bool)

(assert (=> b!6484417 m!7272734))

(assert (=> b!6483527 d!2034251))

(declare-fun b!6484418 () Bool)

(declare-fun res!2662935 () Bool)

(declare-fun e!3930153 () Bool)

(assert (=> b!6484418 (=> res!2662935 e!3930153)))

(assert (=> b!6484418 (= res!2662935 (not (isEmpty!37452 (tail!12285 s!2326))))))

(declare-fun b!6484419 () Bool)

(declare-fun e!3930156 () Bool)

(assert (=> b!6484419 (= e!3930156 (= (head!13200 s!2326) (c!1187715 r!7292)))))

(declare-fun b!6484420 () Bool)

(declare-fun e!3930150 () Bool)

(assert (=> b!6484420 (= e!3930150 (matchR!8546 (derivativeStep!5059 r!7292 (head!13200 s!2326)) (tail!12285 s!2326)))))

(declare-fun b!6484421 () Bool)

(declare-fun res!2662939 () Bool)

(declare-fun e!3930152 () Bool)

(assert (=> b!6484421 (=> res!2662939 e!3930152)))

(assert (=> b!6484421 (= res!2662939 (not ((_ is ElementMatch!16363) r!7292)))))

(declare-fun e!3930155 () Bool)

(assert (=> b!6484421 (= e!3930155 e!3930152)))

(declare-fun bm!561243 () Bool)

(declare-fun call!561248 () Bool)

(assert (=> bm!561243 (= call!561248 (isEmpty!37452 s!2326))))

(declare-fun b!6484422 () Bool)

(declare-fun e!3930151 () Bool)

(declare-fun lt!2387933 () Bool)

(assert (=> b!6484422 (= e!3930151 (= lt!2387933 call!561248))))

(declare-fun b!6484423 () Bool)

(assert (=> b!6484423 (= e!3930153 (not (= (head!13200 s!2326) (c!1187715 r!7292))))))

(declare-fun b!6484424 () Bool)

(assert (=> b!6484424 (= e!3930150 (nullable!6356 r!7292))))

(declare-fun b!6484426 () Bool)

(declare-fun res!2662937 () Bool)

(assert (=> b!6484426 (=> (not res!2662937) (not e!3930156))))

(assert (=> b!6484426 (= res!2662937 (isEmpty!37452 (tail!12285 s!2326)))))

(declare-fun b!6484427 () Bool)

(declare-fun res!2662940 () Bool)

(assert (=> b!6484427 (=> (not res!2662940) (not e!3930156))))

(assert (=> b!6484427 (= res!2662940 (not call!561248))))

(declare-fun b!6484428 () Bool)

(declare-fun e!3930154 () Bool)

(assert (=> b!6484428 (= e!3930154 e!3930153)))

(declare-fun res!2662942 () Bool)

(assert (=> b!6484428 (=> res!2662942 e!3930153)))

(assert (=> b!6484428 (= res!2662942 call!561248)))

(declare-fun b!6484429 () Bool)

(assert (=> b!6484429 (= e!3930152 e!3930154)))

(declare-fun res!2662938 () Bool)

(assert (=> b!6484429 (=> (not res!2662938) (not e!3930154))))

(assert (=> b!6484429 (= res!2662938 (not lt!2387933))))

(declare-fun b!6484430 () Bool)

(declare-fun res!2662941 () Bool)

(assert (=> b!6484430 (=> res!2662941 e!3930152)))

(assert (=> b!6484430 (= res!2662941 e!3930156)))

(declare-fun res!2662936 () Bool)

(assert (=> b!6484430 (=> (not res!2662936) (not e!3930156))))

(assert (=> b!6484430 (= res!2662936 lt!2387933)))

(declare-fun b!6484431 () Bool)

(assert (=> b!6484431 (= e!3930151 e!3930155)))

(declare-fun c!1187973 () Bool)

(assert (=> b!6484431 (= c!1187973 ((_ is EmptyLang!16363) r!7292))))

(declare-fun b!6484425 () Bool)

(assert (=> b!6484425 (= e!3930155 (not lt!2387933))))

(declare-fun d!2034257 () Bool)

(assert (=> d!2034257 e!3930151))

(declare-fun c!1187974 () Bool)

(assert (=> d!2034257 (= c!1187974 ((_ is EmptyExpr!16363) r!7292))))

(assert (=> d!2034257 (= lt!2387933 e!3930150)))

(declare-fun c!1187975 () Bool)

(assert (=> d!2034257 (= c!1187975 (isEmpty!37452 s!2326))))

(assert (=> d!2034257 (validRegex!8099 r!7292)))

(assert (=> d!2034257 (= (matchR!8546 r!7292 s!2326) lt!2387933)))

(assert (= (and d!2034257 c!1187975) b!6484424))

(assert (= (and d!2034257 (not c!1187975)) b!6484420))

(assert (= (and d!2034257 c!1187974) b!6484422))

(assert (= (and d!2034257 (not c!1187974)) b!6484431))

(assert (= (and b!6484431 c!1187973) b!6484425))

(assert (= (and b!6484431 (not c!1187973)) b!6484421))

(assert (= (and b!6484421 (not res!2662939)) b!6484430))

(assert (= (and b!6484430 res!2662936) b!6484427))

(assert (= (and b!6484427 res!2662940) b!6484426))

(assert (= (and b!6484426 res!2662937) b!6484419))

(assert (= (and b!6484430 (not res!2662941)) b!6484429))

(assert (= (and b!6484429 res!2662938) b!6484428))

(assert (= (and b!6484428 (not res!2662942)) b!6484418))

(assert (= (and b!6484418 (not res!2662935)) b!6484423))

(assert (= (or b!6484422 b!6484427 b!6484428) bm!561243))

(assert (=> b!6484419 m!7272578))

(assert (=> b!6484420 m!7272578))

(assert (=> b!6484420 m!7272578))

(declare-fun m!7272736 () Bool)

(assert (=> b!6484420 m!7272736))

(assert (=> b!6484420 m!7272582))

(assert (=> b!6484420 m!7272736))

(assert (=> b!6484420 m!7272582))

(declare-fun m!7272738 () Bool)

(assert (=> b!6484420 m!7272738))

(assert (=> d!2034257 m!7272574))

(assert (=> d!2034257 m!7271848))

(assert (=> b!6484423 m!7272578))

(assert (=> bm!561243 m!7272574))

(assert (=> b!6484418 m!7272582))

(assert (=> b!6484418 m!7272582))

(assert (=> b!6484418 m!7272586))

(assert (=> b!6484426 m!7272582))

(assert (=> b!6484426 m!7272582))

(assert (=> b!6484426 m!7272586))

(declare-fun m!7272740 () Bool)

(assert (=> b!6484424 m!7272740))

(assert (=> b!6483527 d!2034257))

(declare-fun d!2034259 () Bool)

(assert (=> d!2034259 (= (matchR!8546 r!7292 s!2326) (matchRSpec!3464 r!7292 s!2326))))

(declare-fun lt!2387934 () Unit!158783)

(assert (=> d!2034259 (= lt!2387934 (choose!48096 r!7292 s!2326))))

(assert (=> d!2034259 (validRegex!8099 r!7292)))

(assert (=> d!2034259 (= (mainMatchTheorem!3464 r!7292 s!2326) lt!2387934)))

(declare-fun bs!1645067 () Bool)

(assert (= bs!1645067 d!2034259))

(assert (=> bs!1645067 m!7271922))

(assert (=> bs!1645067 m!7271920))

(declare-fun m!7272742 () Bool)

(assert (=> bs!1645067 m!7272742))

(assert (=> bs!1645067 m!7271848))

(assert (=> b!6483527 d!2034259))

(declare-fun b!6484503 () Bool)

(declare-fun e!3930196 () Bool)

(assert (=> b!6484503 (= e!3930196 (matchR!8546 (regTwo!33238 r!7292) s!2326))))

(declare-fun b!6484504 () Bool)

(declare-fun e!3930195 () Option!16254)

(assert (=> b!6484504 (= e!3930195 None!16253)))

(declare-fun b!6484505 () Bool)

(declare-fun res!2662971 () Bool)

(declare-fun e!3930194 () Bool)

(assert (=> b!6484505 (=> (not res!2662971) (not e!3930194))))

(declare-fun lt!2387954 () Option!16254)

(assert (=> b!6484505 (= res!2662971 (matchR!8546 (regOne!33238 r!7292) (_1!36645 (get!22628 lt!2387954))))))

(declare-fun b!6484506 () Bool)

(assert (=> b!6484506 (= e!3930194 (= (++!14436 (_1!36645 (get!22628 lt!2387954)) (_2!36645 (get!22628 lt!2387954))) s!2326))))

(declare-fun b!6484507 () Bool)

(declare-fun e!3930197 () Option!16254)

(assert (=> b!6484507 (= e!3930197 (Some!16253 (tuple2!66685 Nil!65264 s!2326)))))

(declare-fun b!6484508 () Bool)

(assert (=> b!6484508 (= e!3930197 e!3930195)))

(declare-fun c!1187992 () Bool)

(assert (=> b!6484508 (= c!1187992 ((_ is Nil!65264) s!2326))))

(declare-fun b!6484509 () Bool)

(declare-fun res!2662973 () Bool)

(assert (=> b!6484509 (=> (not res!2662973) (not e!3930194))))

(assert (=> b!6484509 (= res!2662973 (matchR!8546 (regTwo!33238 r!7292) (_2!36645 (get!22628 lt!2387954))))))

(declare-fun b!6484510 () Bool)

(declare-fun e!3930193 () Bool)

(assert (=> b!6484510 (= e!3930193 (not (isDefined!12957 lt!2387954)))))

(declare-fun d!2034261 () Bool)

(assert (=> d!2034261 e!3930193))

(declare-fun res!2662969 () Bool)

(assert (=> d!2034261 (=> res!2662969 e!3930193)))

(assert (=> d!2034261 (= res!2662969 e!3930194)))

(declare-fun res!2662972 () Bool)

(assert (=> d!2034261 (=> (not res!2662972) (not e!3930194))))

(assert (=> d!2034261 (= res!2662972 (isDefined!12957 lt!2387954))))

(assert (=> d!2034261 (= lt!2387954 e!3930197)))

(declare-fun c!1187993 () Bool)

(assert (=> d!2034261 (= c!1187993 e!3930196)))

(declare-fun res!2662970 () Bool)

(assert (=> d!2034261 (=> (not res!2662970) (not e!3930196))))

(assert (=> d!2034261 (= res!2662970 (matchR!8546 (regOne!33238 r!7292) Nil!65264))))

(assert (=> d!2034261 (validRegex!8099 (regOne!33238 r!7292))))

(assert (=> d!2034261 (= (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326) lt!2387954)))

(declare-fun b!6484511 () Bool)

(declare-fun lt!2387953 () Unit!158783)

(declare-fun lt!2387952 () Unit!158783)

(assert (=> b!6484511 (= lt!2387953 lt!2387952)))

(assert (=> b!6484511 (= (++!14436 (++!14436 Nil!65264 (Cons!65264 (h!71712 s!2326) Nil!65264)) (t!379014 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2518 (List!65388 C!32996 List!65388 List!65388) Unit!158783)

(assert (=> b!6484511 (= lt!2387952 (lemmaMoveElementToOtherListKeepsConcatEq!2518 Nil!65264 (h!71712 s!2326) (t!379014 s!2326) s!2326))))

(assert (=> b!6484511 (= e!3930195 (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) (++!14436 Nil!65264 (Cons!65264 (h!71712 s!2326) Nil!65264)) (t!379014 s!2326) s!2326))))

(assert (= (and d!2034261 res!2662970) b!6484503))

(assert (= (and d!2034261 c!1187993) b!6484507))

(assert (= (and d!2034261 (not c!1187993)) b!6484508))

(assert (= (and b!6484508 c!1187992) b!6484504))

(assert (= (and b!6484508 (not c!1187992)) b!6484511))

(assert (= (and d!2034261 res!2662972) b!6484505))

(assert (= (and b!6484505 res!2662971) b!6484509))

(assert (= (and b!6484509 res!2662973) b!6484506))

(assert (= (and d!2034261 (not res!2662969)) b!6484510))

(declare-fun m!7272838 () Bool)

(assert (=> b!6484505 m!7272838))

(declare-fun m!7272840 () Bool)

(assert (=> b!6484505 m!7272840))

(declare-fun m!7272842 () Bool)

(assert (=> b!6484503 m!7272842))

(declare-fun m!7272844 () Bool)

(assert (=> b!6484510 m!7272844))

(declare-fun m!7272846 () Bool)

(assert (=> b!6484511 m!7272846))

(assert (=> b!6484511 m!7272846))

(declare-fun m!7272848 () Bool)

(assert (=> b!6484511 m!7272848))

(declare-fun m!7272850 () Bool)

(assert (=> b!6484511 m!7272850))

(assert (=> b!6484511 m!7272846))

(declare-fun m!7272852 () Bool)

(assert (=> b!6484511 m!7272852))

(assert (=> b!6484509 m!7272838))

(declare-fun m!7272854 () Bool)

(assert (=> b!6484509 m!7272854))

(assert (=> d!2034261 m!7272844))

(declare-fun m!7272856 () Bool)

(assert (=> d!2034261 m!7272856))

(declare-fun m!7272858 () Bool)

(assert (=> d!2034261 m!7272858))

(assert (=> b!6484506 m!7272838))

(declare-fun m!7272860 () Bool)

(assert (=> b!6484506 m!7272860))

(assert (=> b!6483529 d!2034261))

(declare-fun d!2034305 () Bool)

(declare-fun choose!48099 (Int) Bool)

(assert (=> d!2034305 (= (Exists!3433 lambda!358746) (choose!48099 lambda!358746))))

(declare-fun bs!1645091 () Bool)

(assert (= bs!1645091 d!2034305))

(declare-fun m!7272862 () Bool)

(assert (=> bs!1645091 m!7272862))

(assert (=> b!6483529 d!2034305))

(declare-fun d!2034307 () Bool)

(assert (=> d!2034307 (= (Exists!3433 lambda!358747) (choose!48099 lambda!358747))))

(declare-fun bs!1645092 () Bool)

(assert (= bs!1645092 d!2034307))

(declare-fun m!7272864 () Bool)

(assert (=> bs!1645092 m!7272864))

(assert (=> b!6483529 d!2034307))

(declare-fun bs!1645097 () Bool)

(declare-fun d!2034309 () Bool)

(assert (= bs!1645097 (and d!2034309 b!6483504)))

(declare-fun lambda!358832 () Int)

(assert (=> bs!1645097 (= (= (regOne!33238 r!7292) lt!2387743) (= lambda!358832 lambda!358749))))

(declare-fun bs!1645098 () Bool)

(assert (= bs!1645098 (and d!2034309 b!6484232)))

(assert (=> bs!1645098 (not (= lambda!358832 lambda!358811))))

(declare-fun bs!1645099 () Bool)

(assert (= bs!1645099 (and d!2034309 b!6484416)))

(assert (=> bs!1645099 (not (= lambda!358832 lambda!358824))))

(declare-fun bs!1645100 () Bool)

(assert (= bs!1645100 (and d!2034309 b!6484225)))

(assert (=> bs!1645100 (not (= lambda!358832 lambda!358810))))

(declare-fun bs!1645101 () Bool)

(assert (= bs!1645101 (and d!2034309 b!6483513)))

(assert (=> bs!1645101 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (regOne!33238 r!7292) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358832 lambda!358751))))

(assert (=> bs!1645101 (not (= lambda!358832 lambda!358752))))

(assert (=> bs!1645101 (not (= lambda!358832 lambda!358753))))

(assert (=> bs!1645097 (not (= lambda!358832 lambda!358750))))

(declare-fun bs!1645102 () Bool)

(assert (= bs!1645102 (and d!2034309 b!6484409)))

(assert (=> bs!1645102 (not (= lambda!358832 lambda!358822))))

(declare-fun bs!1645103 () Bool)

(assert (= bs!1645103 (and d!2034309 b!6483529)))

(assert (=> bs!1645103 (not (= lambda!358832 lambda!358747))))

(assert (=> bs!1645103 (= lambda!358832 lambda!358746)))

(assert (=> d!2034309 true))

(assert (=> d!2034309 true))

(assert (=> d!2034309 true))

(assert (=> d!2034309 (= (isDefined!12957 (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326)) (Exists!3433 lambda!358832))))

(declare-fun lt!2387957 () Unit!158783)

(declare-fun choose!48100 (Regex!16363 Regex!16363 List!65388) Unit!158783)

(assert (=> d!2034309 (= lt!2387957 (choose!48100 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326))))

(assert (=> d!2034309 (validRegex!8099 (regOne!33238 r!7292))))

(assert (=> d!2034309 (= (lemmaFindConcatSeparationEquivalentToExists!2432 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326) lt!2387957)))

(declare-fun bs!1645104 () Bool)

(assert (= bs!1645104 d!2034309))

(assert (=> bs!1645104 m!7271786))

(assert (=> bs!1645104 m!7272858))

(assert (=> bs!1645104 m!7271786))

(assert (=> bs!1645104 m!7271788))

(declare-fun m!7272868 () Bool)

(assert (=> bs!1645104 m!7272868))

(declare-fun m!7272870 () Bool)

(assert (=> bs!1645104 m!7272870))

(assert (=> b!6483529 d!2034309))

(declare-fun bs!1645105 () Bool)

(declare-fun d!2034319 () Bool)

(assert (= bs!1645105 (and d!2034319 b!6483504)))

(declare-fun lambda!358837 () Int)

(assert (=> bs!1645105 (= (= (regOne!33238 r!7292) lt!2387743) (= lambda!358837 lambda!358749))))

(declare-fun bs!1645106 () Bool)

(assert (= bs!1645106 (and d!2034319 b!6484232)))

(assert (=> bs!1645106 (not (= lambda!358837 lambda!358811))))

(declare-fun bs!1645107 () Bool)

(assert (= bs!1645107 (and d!2034319 b!6484416)))

(assert (=> bs!1645107 (not (= lambda!358837 lambda!358824))))

(declare-fun bs!1645108 () Bool)

(assert (= bs!1645108 (and d!2034319 b!6484225)))

(assert (=> bs!1645108 (not (= lambda!358837 lambda!358810))))

(declare-fun bs!1645109 () Bool)

(assert (= bs!1645109 (and d!2034319 b!6483513)))

(assert (=> bs!1645109 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (regOne!33238 r!7292) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358837 lambda!358751))))

(declare-fun bs!1645110 () Bool)

(assert (= bs!1645110 (and d!2034319 d!2034309)))

(assert (=> bs!1645110 (= lambda!358837 lambda!358832)))

(assert (=> bs!1645109 (not (= lambda!358837 lambda!358752))))

(assert (=> bs!1645109 (not (= lambda!358837 lambda!358753))))

(assert (=> bs!1645105 (not (= lambda!358837 lambda!358750))))

(declare-fun bs!1645111 () Bool)

(assert (= bs!1645111 (and d!2034319 b!6484409)))

(assert (=> bs!1645111 (not (= lambda!358837 lambda!358822))))

(declare-fun bs!1645112 () Bool)

(assert (= bs!1645112 (and d!2034319 b!6483529)))

(assert (=> bs!1645112 (not (= lambda!358837 lambda!358747))))

(assert (=> bs!1645112 (= lambda!358837 lambda!358746)))

(assert (=> d!2034319 true))

(assert (=> d!2034319 true))

(assert (=> d!2034319 true))

(declare-fun lambda!358838 () Int)

(assert (=> bs!1645105 (not (= lambda!358838 lambda!358749))))

(assert (=> bs!1645106 (= (and (= (regOne!33238 r!7292) (regOne!33238 lt!2387730)) (= (regTwo!33238 r!7292) (regTwo!33238 lt!2387730))) (= lambda!358838 lambda!358811))))

(assert (=> bs!1645107 (= lambda!358838 lambda!358824)))

(declare-fun bs!1645113 () Bool)

(assert (= bs!1645113 d!2034319))

(assert (=> bs!1645113 (not (= lambda!358838 lambda!358837))))

(assert (=> bs!1645108 (not (= lambda!358838 lambda!358810))))

(assert (=> bs!1645109 (not (= lambda!358838 lambda!358751))))

(assert (=> bs!1645110 (not (= lambda!358838 lambda!358832))))

(assert (=> bs!1645109 (not (= lambda!358838 lambda!358752))))

(assert (=> bs!1645109 (= (and (= s!2326 (_1!36645 lt!2387733)) (= (regOne!33238 r!7292) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358838 lambda!358753))))

(assert (=> bs!1645105 (= (= (regOne!33238 r!7292) lt!2387743) (= lambda!358838 lambda!358750))))

(assert (=> bs!1645111 (not (= lambda!358838 lambda!358822))))

(assert (=> bs!1645112 (= lambda!358838 lambda!358747)))

(assert (=> bs!1645112 (not (= lambda!358838 lambda!358746))))

(assert (=> d!2034319 true))

(assert (=> d!2034319 true))

(assert (=> d!2034319 true))

(assert (=> d!2034319 (= (Exists!3433 lambda!358837) (Exists!3433 lambda!358838))))

(declare-fun lt!2387960 () Unit!158783)

(declare-fun choose!48101 (Regex!16363 Regex!16363 List!65388) Unit!158783)

(assert (=> d!2034319 (= lt!2387960 (choose!48101 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326))))

(assert (=> d!2034319 (validRegex!8099 (regOne!33238 r!7292))))

(assert (=> d!2034319 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 (regOne!33238 r!7292) (regTwo!33238 r!7292) s!2326) lt!2387960)))

(declare-fun m!7272872 () Bool)

(assert (=> bs!1645113 m!7272872))

(declare-fun m!7272874 () Bool)

(assert (=> bs!1645113 m!7272874))

(declare-fun m!7272876 () Bool)

(assert (=> bs!1645113 m!7272876))

(assert (=> bs!1645113 m!7272858))

(assert (=> b!6483529 d!2034319))

(declare-fun d!2034321 () Bool)

(declare-fun isEmpty!37456 (Option!16254) Bool)

(assert (=> d!2034321 (= (isDefined!12957 (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326)) (not (isEmpty!37456 (findConcatSeparation!2668 (regOne!33238 r!7292) (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326))))))

(declare-fun bs!1645114 () Bool)

(assert (= bs!1645114 d!2034321))

(assert (=> bs!1645114 m!7271786))

(declare-fun m!7272878 () Bool)

(assert (=> bs!1645114 m!7272878))

(assert (=> b!6483529 d!2034321))

(declare-fun d!2034323 () Bool)

(declare-fun lt!2387961 () Regex!16363)

(assert (=> d!2034323 (validRegex!8099 lt!2387961)))

(assert (=> d!2034323 (= lt!2387961 (generalisedUnion!2207 (unfocusZipperList!1784 (Cons!65266 lt!2387754 Nil!65266))))))

(assert (=> d!2034323 (= (unfocusZipper!2105 (Cons!65266 lt!2387754 Nil!65266)) lt!2387961)))

(declare-fun bs!1645115 () Bool)

(assert (= bs!1645115 d!2034323))

(declare-fun m!7272880 () Bool)

(assert (=> bs!1645115 m!7272880))

(declare-fun m!7272882 () Bool)

(assert (=> bs!1645115 m!7272882))

(assert (=> bs!1645115 m!7272882))

(declare-fun m!7272884 () Bool)

(assert (=> bs!1645115 m!7272884))

(assert (=> b!6483526 d!2034323))

(declare-fun d!2034325 () Bool)

(declare-fun c!1187994 () Bool)

(assert (=> d!2034325 (= c!1187994 (isEmpty!37452 s!2326))))

(declare-fun e!3930222 () Bool)

(assert (=> d!2034325 (= (matchZipper!2375 lt!2387757 s!2326) e!3930222)))

(declare-fun b!6484563 () Bool)

(assert (=> b!6484563 (= e!3930222 (nullableZipper!2120 lt!2387757))))

(declare-fun b!6484564 () Bool)

(assert (=> b!6484564 (= e!3930222 (matchZipper!2375 (derivationStepZipper!2329 lt!2387757 (head!13200 s!2326)) (tail!12285 s!2326)))))

(assert (= (and d!2034325 c!1187994) b!6484563))

(assert (= (and d!2034325 (not c!1187994)) b!6484564))

(assert (=> d!2034325 m!7272574))

(declare-fun m!7272886 () Bool)

(assert (=> b!6484563 m!7272886))

(assert (=> b!6484564 m!7272578))

(assert (=> b!6484564 m!7272578))

(declare-fun m!7272888 () Bool)

(assert (=> b!6484564 m!7272888))

(assert (=> b!6484564 m!7272582))

(assert (=> b!6484564 m!7272888))

(assert (=> b!6484564 m!7272582))

(declare-fun m!7272890 () Bool)

(assert (=> b!6484564 m!7272890))

(assert (=> b!6483545 d!2034325))

(declare-fun d!2034327 () Bool)

(declare-fun c!1187995 () Bool)

(assert (=> d!2034327 (= c!1187995 (isEmpty!37452 (t!379014 s!2326)))))

(declare-fun e!3930223 () Bool)

(assert (=> d!2034327 (= (matchZipper!2375 lt!2387761 (t!379014 s!2326)) e!3930223)))

(declare-fun b!6484565 () Bool)

(assert (=> b!6484565 (= e!3930223 (nullableZipper!2120 lt!2387761))))

(declare-fun b!6484566 () Bool)

(assert (=> b!6484566 (= e!3930223 (matchZipper!2375 (derivationStepZipper!2329 lt!2387761 (head!13200 (t!379014 s!2326))) (tail!12285 (t!379014 s!2326))))))

(assert (= (and d!2034327 c!1187995) b!6484565))

(assert (= (and d!2034327 (not c!1187995)) b!6484566))

(declare-fun m!7272892 () Bool)

(assert (=> d!2034327 m!7272892))

(declare-fun m!7272894 () Bool)

(assert (=> b!6484565 m!7272894))

(declare-fun m!7272896 () Bool)

(assert (=> b!6484566 m!7272896))

(assert (=> b!6484566 m!7272896))

(declare-fun m!7272898 () Bool)

(assert (=> b!6484566 m!7272898))

(declare-fun m!7272900 () Bool)

(assert (=> b!6484566 m!7272900))

(assert (=> b!6484566 m!7272898))

(assert (=> b!6484566 m!7272900))

(declare-fun m!7272902 () Bool)

(assert (=> b!6484566 m!7272902))

(assert (=> b!6483545 d!2034327))

(declare-fun b!6484567 () Bool)

(declare-fun e!3930227 () Bool)

(assert (=> b!6484567 (= e!3930227 (matchR!8546 (regTwo!33238 r!7292) s!2326))))

(declare-fun b!6484568 () Bool)

(declare-fun e!3930226 () Option!16254)

(assert (=> b!6484568 (= e!3930226 None!16253)))

(declare-fun b!6484569 () Bool)

(declare-fun res!2662988 () Bool)

(declare-fun e!3930225 () Bool)

(assert (=> b!6484569 (=> (not res!2662988) (not e!3930225))))

(declare-fun lt!2387964 () Option!16254)

(assert (=> b!6484569 (= res!2662988 (matchR!8546 lt!2387743 (_1!36645 (get!22628 lt!2387964))))))

(declare-fun b!6484570 () Bool)

(assert (=> b!6484570 (= e!3930225 (= (++!14436 (_1!36645 (get!22628 lt!2387964)) (_2!36645 (get!22628 lt!2387964))) s!2326))))

(declare-fun b!6484571 () Bool)

(declare-fun e!3930228 () Option!16254)

(assert (=> b!6484571 (= e!3930228 (Some!16253 (tuple2!66685 Nil!65264 s!2326)))))

(declare-fun b!6484572 () Bool)

(assert (=> b!6484572 (= e!3930228 e!3930226)))

(declare-fun c!1187996 () Bool)

(assert (=> b!6484572 (= c!1187996 ((_ is Nil!65264) s!2326))))

(declare-fun b!6484573 () Bool)

(declare-fun res!2662990 () Bool)

(assert (=> b!6484573 (=> (not res!2662990) (not e!3930225))))

(assert (=> b!6484573 (= res!2662990 (matchR!8546 (regTwo!33238 r!7292) (_2!36645 (get!22628 lt!2387964))))))

(declare-fun b!6484574 () Bool)

(declare-fun e!3930224 () Bool)

(assert (=> b!6484574 (= e!3930224 (not (isDefined!12957 lt!2387964)))))

(declare-fun d!2034329 () Bool)

(assert (=> d!2034329 e!3930224))

(declare-fun res!2662986 () Bool)

(assert (=> d!2034329 (=> res!2662986 e!3930224)))

(assert (=> d!2034329 (= res!2662986 e!3930225)))

(declare-fun res!2662989 () Bool)

(assert (=> d!2034329 (=> (not res!2662989) (not e!3930225))))

(assert (=> d!2034329 (= res!2662989 (isDefined!12957 lt!2387964))))

(assert (=> d!2034329 (= lt!2387964 e!3930228)))

(declare-fun c!1187997 () Bool)

(assert (=> d!2034329 (= c!1187997 e!3930227)))

(declare-fun res!2662987 () Bool)

(assert (=> d!2034329 (=> (not res!2662987) (not e!3930227))))

(assert (=> d!2034329 (= res!2662987 (matchR!8546 lt!2387743 Nil!65264))))

(assert (=> d!2034329 (validRegex!8099 lt!2387743)))

(assert (=> d!2034329 (= (findConcatSeparation!2668 lt!2387743 (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326) lt!2387964)))

(declare-fun b!6484575 () Bool)

(declare-fun lt!2387963 () Unit!158783)

(declare-fun lt!2387962 () Unit!158783)

(assert (=> b!6484575 (= lt!2387963 lt!2387962)))

(assert (=> b!6484575 (= (++!14436 (++!14436 Nil!65264 (Cons!65264 (h!71712 s!2326) Nil!65264)) (t!379014 s!2326)) s!2326)))

(assert (=> b!6484575 (= lt!2387962 (lemmaMoveElementToOtherListKeepsConcatEq!2518 Nil!65264 (h!71712 s!2326) (t!379014 s!2326) s!2326))))

(assert (=> b!6484575 (= e!3930226 (findConcatSeparation!2668 lt!2387743 (regTwo!33238 r!7292) (++!14436 Nil!65264 (Cons!65264 (h!71712 s!2326) Nil!65264)) (t!379014 s!2326) s!2326))))

(assert (= (and d!2034329 res!2662987) b!6484567))

(assert (= (and d!2034329 c!1187997) b!6484571))

(assert (= (and d!2034329 (not c!1187997)) b!6484572))

(assert (= (and b!6484572 c!1187996) b!6484568))

(assert (= (and b!6484572 (not c!1187996)) b!6484575))

(assert (= (and d!2034329 res!2662989) b!6484569))

(assert (= (and b!6484569 res!2662988) b!6484573))

(assert (= (and b!6484573 res!2662990) b!6484570))

(assert (= (and d!2034329 (not res!2662986)) b!6484574))

(declare-fun m!7272904 () Bool)

(assert (=> b!6484569 m!7272904))

(declare-fun m!7272906 () Bool)

(assert (=> b!6484569 m!7272906))

(assert (=> b!6484567 m!7272842))

(declare-fun m!7272908 () Bool)

(assert (=> b!6484574 m!7272908))

(assert (=> b!6484575 m!7272846))

(assert (=> b!6484575 m!7272846))

(assert (=> b!6484575 m!7272848))

(assert (=> b!6484575 m!7272850))

(assert (=> b!6484575 m!7272846))

(declare-fun m!7272910 () Bool)

(assert (=> b!6484575 m!7272910))

(assert (=> b!6484573 m!7272904))

(declare-fun m!7272912 () Bool)

(assert (=> b!6484573 m!7272912))

(assert (=> d!2034329 m!7272908))

(declare-fun m!7272914 () Bool)

(assert (=> d!2034329 m!7272914))

(assert (=> d!2034329 m!7272258))

(assert (=> b!6484570 m!7272904))

(declare-fun m!7272916 () Bool)

(assert (=> b!6484570 m!7272916))

(assert (=> b!6483504 d!2034329))

(declare-fun b!6484584 () Bool)

(declare-fun e!3930233 () List!65388)

(assert (=> b!6484584 (= e!3930233 (_2!36645 lt!2387733))))

(declare-fun b!6484586 () Bool)

(declare-fun res!2662996 () Bool)

(declare-fun e!3930234 () Bool)

(assert (=> b!6484586 (=> (not res!2662996) (not e!3930234))))

(declare-fun lt!2387967 () List!65388)

(declare-fun size!40417 (List!65388) Int)

(assert (=> b!6484586 (= res!2662996 (= (size!40417 lt!2387967) (+ (size!40417 (_1!36645 lt!2387733)) (size!40417 (_2!36645 lt!2387733)))))))

(declare-fun b!6484585 () Bool)

(assert (=> b!6484585 (= e!3930233 (Cons!65264 (h!71712 (_1!36645 lt!2387733)) (++!14436 (t!379014 (_1!36645 lt!2387733)) (_2!36645 lt!2387733))))))

(declare-fun d!2034331 () Bool)

(assert (=> d!2034331 e!3930234))

(declare-fun res!2662995 () Bool)

(assert (=> d!2034331 (=> (not res!2662995) (not e!3930234))))

(declare-fun content!12427 (List!65388) (InoxSet C!32996))

(assert (=> d!2034331 (= res!2662995 (= (content!12427 lt!2387967) ((_ map or) (content!12427 (_1!36645 lt!2387733)) (content!12427 (_2!36645 lt!2387733)))))))

(assert (=> d!2034331 (= lt!2387967 e!3930233)))

(declare-fun c!1188000 () Bool)

(assert (=> d!2034331 (= c!1188000 ((_ is Nil!65264) (_1!36645 lt!2387733)))))

(assert (=> d!2034331 (= (++!14436 (_1!36645 lt!2387733) (_2!36645 lt!2387733)) lt!2387967)))

(declare-fun b!6484587 () Bool)

(assert (=> b!6484587 (= e!3930234 (or (not (= (_2!36645 lt!2387733) Nil!65264)) (= lt!2387967 (_1!36645 lt!2387733))))))

(assert (= (and d!2034331 c!1188000) b!6484584))

(assert (= (and d!2034331 (not c!1188000)) b!6484585))

(assert (= (and d!2034331 res!2662995) b!6484586))

(assert (= (and b!6484586 res!2662996) b!6484587))

(declare-fun m!7272918 () Bool)

(assert (=> b!6484586 m!7272918))

(declare-fun m!7272920 () Bool)

(assert (=> b!6484586 m!7272920))

(declare-fun m!7272922 () Bool)

(assert (=> b!6484586 m!7272922))

(declare-fun m!7272924 () Bool)

(assert (=> b!6484585 m!7272924))

(declare-fun m!7272926 () Bool)

(assert (=> d!2034331 m!7272926))

(declare-fun m!7272928 () Bool)

(assert (=> d!2034331 m!7272928))

(declare-fun m!7272930 () Bool)

(assert (=> d!2034331 m!7272930))

(assert (=> b!6483504 d!2034331))

(declare-fun d!2034333 () Bool)

(assert (=> d!2034333 (= (Exists!3433 lambda!358750) (choose!48099 lambda!358750))))

(declare-fun bs!1645116 () Bool)

(assert (= bs!1645116 d!2034333))

(declare-fun m!7272932 () Bool)

(assert (=> bs!1645116 m!7272932))

(assert (=> b!6483504 d!2034333))

(declare-fun bs!1645117 () Bool)

(declare-fun d!2034335 () Bool)

(assert (= bs!1645117 (and d!2034335 b!6483504)))

(declare-fun lambda!358839 () Int)

(assert (=> bs!1645117 (= lambda!358839 lambda!358749)))

(declare-fun bs!1645118 () Bool)

(assert (= bs!1645118 (and d!2034335 b!6484232)))

(assert (=> bs!1645118 (not (= lambda!358839 lambda!358811))))

(declare-fun bs!1645119 () Bool)

(assert (= bs!1645119 (and d!2034335 b!6484416)))

(assert (=> bs!1645119 (not (= lambda!358839 lambda!358824))))

(declare-fun bs!1645120 () Bool)

(assert (= bs!1645120 (and d!2034335 d!2034319)))

(assert (=> bs!1645120 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358839 lambda!358837))))

(declare-fun bs!1645121 () Bool)

(assert (= bs!1645121 (and d!2034335 b!6483513)))

(assert (=> bs!1645121 (= (and (= s!2326 (_1!36645 lt!2387733)) (= lt!2387743 (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358839 lambda!358751))))

(declare-fun bs!1645122 () Bool)

(assert (= bs!1645122 (and d!2034335 d!2034309)))

(assert (=> bs!1645122 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358839 lambda!358832))))

(assert (=> bs!1645121 (not (= lambda!358839 lambda!358752))))

(assert (=> bs!1645121 (not (= lambda!358839 lambda!358753))))

(assert (=> bs!1645120 (not (= lambda!358839 lambda!358838))))

(declare-fun bs!1645123 () Bool)

(assert (= bs!1645123 (and d!2034335 b!6484225)))

(assert (=> bs!1645123 (not (= lambda!358839 lambda!358810))))

(assert (=> bs!1645117 (not (= lambda!358839 lambda!358750))))

(declare-fun bs!1645124 () Bool)

(assert (= bs!1645124 (and d!2034335 b!6484409)))

(assert (=> bs!1645124 (not (= lambda!358839 lambda!358822))))

(declare-fun bs!1645125 () Bool)

(assert (= bs!1645125 (and d!2034335 b!6483529)))

(assert (=> bs!1645125 (not (= lambda!358839 lambda!358747))))

(assert (=> bs!1645125 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358839 lambda!358746))))

(assert (=> d!2034335 true))

(assert (=> d!2034335 true))

(assert (=> d!2034335 true))

(assert (=> d!2034335 (= (isDefined!12957 (findConcatSeparation!2668 lt!2387743 (regTwo!33238 r!7292) Nil!65264 s!2326 s!2326)) (Exists!3433 lambda!358839))))

(declare-fun lt!2387968 () Unit!158783)

(assert (=> d!2034335 (= lt!2387968 (choose!48100 lt!2387743 (regTwo!33238 r!7292) s!2326))))

(assert (=> d!2034335 (validRegex!8099 lt!2387743)))

(assert (=> d!2034335 (= (lemmaFindConcatSeparationEquivalentToExists!2432 lt!2387743 (regTwo!33238 r!7292) s!2326) lt!2387968)))

(declare-fun bs!1645126 () Bool)

(assert (= bs!1645126 d!2034335))

(assert (=> bs!1645126 m!7271860))

(assert (=> bs!1645126 m!7272258))

(assert (=> bs!1645126 m!7271860))

(declare-fun m!7272934 () Bool)

(assert (=> bs!1645126 m!7272934))

(declare-fun m!7272936 () Bool)

(assert (=> bs!1645126 m!7272936))

(declare-fun m!7272938 () Bool)

(assert (=> bs!1645126 m!7272938))

(assert (=> b!6483504 d!2034335))

(declare-fun d!2034337 () Bool)

(assert (=> d!2034337 (= (isDefined!12957 lt!2387738) (not (isEmpty!37456 lt!2387738)))))

(declare-fun bs!1645127 () Bool)

(assert (= bs!1645127 d!2034337))

(declare-fun m!7272940 () Bool)

(assert (=> bs!1645127 m!7272940))

(assert (=> b!6483504 d!2034337))

(declare-fun bs!1645128 () Bool)

(declare-fun d!2034339 () Bool)

(assert (= bs!1645128 (and d!2034339 b!6483504)))

(declare-fun lambda!358840 () Int)

(assert (=> bs!1645128 (= lambda!358840 lambda!358749)))

(declare-fun bs!1645129 () Bool)

(assert (= bs!1645129 (and d!2034339 b!6484232)))

(assert (=> bs!1645129 (not (= lambda!358840 lambda!358811))))

(declare-fun bs!1645130 () Bool)

(assert (= bs!1645130 (and d!2034339 b!6484416)))

(assert (=> bs!1645130 (not (= lambda!358840 lambda!358824))))

(declare-fun bs!1645131 () Bool)

(assert (= bs!1645131 (and d!2034339 d!2034319)))

(assert (=> bs!1645131 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358840 lambda!358837))))

(declare-fun bs!1645132 () Bool)

(assert (= bs!1645132 (and d!2034339 d!2034335)))

(assert (=> bs!1645132 (= lambda!358840 lambda!358839)))

(declare-fun bs!1645133 () Bool)

(assert (= bs!1645133 (and d!2034339 b!6483513)))

(assert (=> bs!1645133 (= (and (= s!2326 (_1!36645 lt!2387733)) (= lt!2387743 (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358840 lambda!358751))))

(declare-fun bs!1645134 () Bool)

(assert (= bs!1645134 (and d!2034339 d!2034309)))

(assert (=> bs!1645134 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358840 lambda!358832))))

(assert (=> bs!1645133 (not (= lambda!358840 lambda!358752))))

(assert (=> bs!1645133 (not (= lambda!358840 lambda!358753))))

(assert (=> bs!1645131 (not (= lambda!358840 lambda!358838))))

(declare-fun bs!1645135 () Bool)

(assert (= bs!1645135 (and d!2034339 b!6484225)))

(assert (=> bs!1645135 (not (= lambda!358840 lambda!358810))))

(assert (=> bs!1645128 (not (= lambda!358840 lambda!358750))))

(declare-fun bs!1645136 () Bool)

(assert (= bs!1645136 (and d!2034339 b!6484409)))

(assert (=> bs!1645136 (not (= lambda!358840 lambda!358822))))

(declare-fun bs!1645137 () Bool)

(assert (= bs!1645137 (and d!2034339 b!6483529)))

(assert (=> bs!1645137 (not (= lambda!358840 lambda!358747))))

(assert (=> bs!1645137 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358840 lambda!358746))))

(assert (=> d!2034339 true))

(assert (=> d!2034339 true))

(assert (=> d!2034339 true))

(declare-fun lambda!358841 () Int)

(assert (=> bs!1645128 (not (= lambda!358841 lambda!358749))))

(assert (=> bs!1645129 (= (and (= lt!2387743 (regOne!33238 lt!2387730)) (= (regTwo!33238 r!7292) (regTwo!33238 lt!2387730))) (= lambda!358841 lambda!358811))))

(assert (=> bs!1645130 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358841 lambda!358824))))

(assert (=> bs!1645131 (not (= lambda!358841 lambda!358837))))

(assert (=> bs!1645132 (not (= lambda!358841 lambda!358839))))

(assert (=> bs!1645133 (not (= lambda!358841 lambda!358751))))

(assert (=> bs!1645133 (not (= lambda!358841 lambda!358752))))

(assert (=> bs!1645133 (= (and (= s!2326 (_1!36645 lt!2387733)) (= lt!2387743 (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 r!7292) lt!2387743)) (= lambda!358841 lambda!358753))))

(assert (=> bs!1645131 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358841 lambda!358838))))

(assert (=> bs!1645135 (not (= lambda!358841 lambda!358810))))

(assert (=> bs!1645128 (= lambda!358841 lambda!358750)))

(assert (=> bs!1645136 (not (= lambda!358841 lambda!358822))))

(assert (=> bs!1645134 (not (= lambda!358841 lambda!358832))))

(declare-fun bs!1645138 () Bool)

(assert (= bs!1645138 d!2034339))

(assert (=> bs!1645138 (not (= lambda!358841 lambda!358840))))

(assert (=> bs!1645137 (= (= lt!2387743 (regOne!33238 r!7292)) (= lambda!358841 lambda!358747))))

(assert (=> bs!1645137 (not (= lambda!358841 lambda!358746))))

(assert (=> d!2034339 true))

(assert (=> d!2034339 true))

(assert (=> d!2034339 true))

(assert (=> d!2034339 (= (Exists!3433 lambda!358840) (Exists!3433 lambda!358841))))

(declare-fun lt!2387969 () Unit!158783)

(assert (=> d!2034339 (= lt!2387969 (choose!48101 lt!2387743 (regTwo!33238 r!7292) s!2326))))

(assert (=> d!2034339 (validRegex!8099 lt!2387743)))

(assert (=> d!2034339 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 lt!2387743 (regTwo!33238 r!7292) s!2326) lt!2387969)))

(declare-fun m!7272942 () Bool)

(assert (=> bs!1645138 m!7272942))

(declare-fun m!7272944 () Bool)

(assert (=> bs!1645138 m!7272944))

(declare-fun m!7272946 () Bool)

(assert (=> bs!1645138 m!7272946))

(assert (=> bs!1645138 m!7272258))

(assert (=> b!6483504 d!2034339))

(declare-fun d!2034341 () Bool)

(assert (=> d!2034341 (= (get!22628 lt!2387738) (v!52432 lt!2387738))))

(assert (=> b!6483504 d!2034341))

(declare-fun d!2034343 () Bool)

(assert (=> d!2034343 (= (Exists!3433 lambda!358749) (choose!48099 lambda!358749))))

(declare-fun bs!1645139 () Bool)

(assert (= bs!1645139 d!2034343))

(declare-fun m!7272948 () Bool)

(assert (=> bs!1645139 m!7272948))

(assert (=> b!6483504 d!2034343))

(declare-fun b!6484588 () Bool)

(declare-fun res!2662997 () Bool)

(declare-fun e!3930238 () Bool)

(assert (=> b!6484588 (=> res!2662997 e!3930238)))

(assert (=> b!6484588 (= res!2662997 (not (isEmpty!37452 (tail!12285 (_1!36645 lt!2387733)))))))

(declare-fun b!6484589 () Bool)

(declare-fun e!3930241 () Bool)

(assert (=> b!6484589 (= e!3930241 (= (head!13200 (_1!36645 lt!2387733)) (c!1187715 lt!2387743)))))

(declare-fun b!6484590 () Bool)

(declare-fun e!3930235 () Bool)

(assert (=> b!6484590 (= e!3930235 (matchR!8546 (derivativeStep!5059 lt!2387743 (head!13200 (_1!36645 lt!2387733))) (tail!12285 (_1!36645 lt!2387733))))))

(declare-fun b!6484591 () Bool)

(declare-fun res!2663001 () Bool)

(declare-fun e!3930237 () Bool)

(assert (=> b!6484591 (=> res!2663001 e!3930237)))

(assert (=> b!6484591 (= res!2663001 (not ((_ is ElementMatch!16363) lt!2387743)))))

(declare-fun e!3930240 () Bool)

(assert (=> b!6484591 (= e!3930240 e!3930237)))

(declare-fun bm!561248 () Bool)

(declare-fun call!561253 () Bool)

(assert (=> bm!561248 (= call!561253 (isEmpty!37452 (_1!36645 lt!2387733)))))

(declare-fun b!6484592 () Bool)

(declare-fun e!3930236 () Bool)

(declare-fun lt!2387970 () Bool)

(assert (=> b!6484592 (= e!3930236 (= lt!2387970 call!561253))))

(declare-fun b!6484593 () Bool)

(assert (=> b!6484593 (= e!3930238 (not (= (head!13200 (_1!36645 lt!2387733)) (c!1187715 lt!2387743))))))

(declare-fun b!6484594 () Bool)

(assert (=> b!6484594 (= e!3930235 (nullable!6356 lt!2387743))))

(declare-fun b!6484596 () Bool)

(declare-fun res!2662999 () Bool)

(assert (=> b!6484596 (=> (not res!2662999) (not e!3930241))))

(assert (=> b!6484596 (= res!2662999 (isEmpty!37452 (tail!12285 (_1!36645 lt!2387733))))))

(declare-fun b!6484597 () Bool)

(declare-fun res!2663002 () Bool)

(assert (=> b!6484597 (=> (not res!2663002) (not e!3930241))))

(assert (=> b!6484597 (= res!2663002 (not call!561253))))

(declare-fun b!6484598 () Bool)

(declare-fun e!3930239 () Bool)

(assert (=> b!6484598 (= e!3930239 e!3930238)))

(declare-fun res!2663004 () Bool)

(assert (=> b!6484598 (=> res!2663004 e!3930238)))

(assert (=> b!6484598 (= res!2663004 call!561253)))

(declare-fun b!6484599 () Bool)

(assert (=> b!6484599 (= e!3930237 e!3930239)))

(declare-fun res!2663000 () Bool)

(assert (=> b!6484599 (=> (not res!2663000) (not e!3930239))))

(assert (=> b!6484599 (= res!2663000 (not lt!2387970))))

(declare-fun b!6484600 () Bool)

(declare-fun res!2663003 () Bool)

(assert (=> b!6484600 (=> res!2663003 e!3930237)))

(assert (=> b!6484600 (= res!2663003 e!3930241)))

(declare-fun res!2662998 () Bool)

(assert (=> b!6484600 (=> (not res!2662998) (not e!3930241))))

(assert (=> b!6484600 (= res!2662998 lt!2387970)))

(declare-fun b!6484601 () Bool)

(assert (=> b!6484601 (= e!3930236 e!3930240)))

(declare-fun c!1188001 () Bool)

(assert (=> b!6484601 (= c!1188001 ((_ is EmptyLang!16363) lt!2387743))))

(declare-fun b!6484595 () Bool)

(assert (=> b!6484595 (= e!3930240 (not lt!2387970))))

(declare-fun d!2034345 () Bool)

(assert (=> d!2034345 e!3930236))

(declare-fun c!1188002 () Bool)

(assert (=> d!2034345 (= c!1188002 ((_ is EmptyExpr!16363) lt!2387743))))

(assert (=> d!2034345 (= lt!2387970 e!3930235)))

(declare-fun c!1188003 () Bool)

(assert (=> d!2034345 (= c!1188003 (isEmpty!37452 (_1!36645 lt!2387733)))))

(assert (=> d!2034345 (validRegex!8099 lt!2387743)))

(assert (=> d!2034345 (= (matchR!8546 lt!2387743 (_1!36645 lt!2387733)) lt!2387970)))

(assert (= (and d!2034345 c!1188003) b!6484594))

(assert (= (and d!2034345 (not c!1188003)) b!6484590))

(assert (= (and d!2034345 c!1188002) b!6484592))

(assert (= (and d!2034345 (not c!1188002)) b!6484601))

(assert (= (and b!6484601 c!1188001) b!6484595))

(assert (= (and b!6484601 (not c!1188001)) b!6484591))

(assert (= (and b!6484591 (not res!2663001)) b!6484600))

(assert (= (and b!6484600 res!2662998) b!6484597))

(assert (= (and b!6484597 res!2663002) b!6484596))

(assert (= (and b!6484596 res!2662999) b!6484589))

(assert (= (and b!6484600 (not res!2663003)) b!6484599))

(assert (= (and b!6484599 res!2663000) b!6484598))

(assert (= (and b!6484598 (not res!2663004)) b!6484588))

(assert (= (and b!6484588 (not res!2662997)) b!6484593))

(assert (= (or b!6484592 b!6484597 b!6484598) bm!561248))

(declare-fun m!7272950 () Bool)

(assert (=> b!6484589 m!7272950))

(assert (=> b!6484590 m!7272950))

(assert (=> b!6484590 m!7272950))

(declare-fun m!7272952 () Bool)

(assert (=> b!6484590 m!7272952))

(declare-fun m!7272954 () Bool)

(assert (=> b!6484590 m!7272954))

(assert (=> b!6484590 m!7272952))

(assert (=> b!6484590 m!7272954))

(declare-fun m!7272956 () Bool)

(assert (=> b!6484590 m!7272956))

(assert (=> d!2034345 m!7271730))

(assert (=> d!2034345 m!7272258))

(assert (=> b!6484593 m!7272950))

(assert (=> bm!561248 m!7271730))

(assert (=> b!6484588 m!7272954))

(assert (=> b!6484588 m!7272954))

(declare-fun m!7272958 () Bool)

(assert (=> b!6484588 m!7272958))

(assert (=> b!6484596 m!7272954))

(assert (=> b!6484596 m!7272954))

(assert (=> b!6484596 m!7272958))

(assert (=> b!6484594 m!7272262))

(assert (=> b!6483525 d!2034345))

(declare-fun e!3930244 () Bool)

(declare-fun d!2034347 () Bool)

(assert (=> d!2034347 (= (matchZipper!2375 ((_ map or) lt!2387731 lt!2387736) (t!379014 s!2326)) e!3930244)))

(declare-fun res!2663007 () Bool)

(assert (=> d!2034347 (=> res!2663007 e!3930244)))

(assert (=> d!2034347 (= res!2663007 (matchZipper!2375 lt!2387731 (t!379014 s!2326)))))

(declare-fun lt!2387973 () Unit!158783)

(declare-fun choose!48104 ((InoxSet Context!11494) (InoxSet Context!11494) List!65388) Unit!158783)

(assert (=> d!2034347 (= lt!2387973 (choose!48104 lt!2387731 lt!2387736 (t!379014 s!2326)))))

(assert (=> d!2034347 (= (lemmaZipperConcatMatchesSameAsBothZippers!1194 lt!2387731 lt!2387736 (t!379014 s!2326)) lt!2387973)))

(declare-fun b!6484604 () Bool)

(assert (=> b!6484604 (= e!3930244 (matchZipper!2375 lt!2387736 (t!379014 s!2326)))))

(assert (= (and d!2034347 (not res!2663007)) b!6484604))

(assert (=> d!2034347 m!7271846))

(assert (=> d!2034347 m!7271844))

(declare-fun m!7272960 () Bool)

(assert (=> d!2034347 m!7272960))

(assert (=> b!6484604 m!7271868))

(assert (=> b!6483505 d!2034347))

(declare-fun d!2034349 () Bool)

(declare-fun c!1188004 () Bool)

(assert (=> d!2034349 (= c!1188004 (isEmpty!37452 (t!379014 s!2326)))))

(declare-fun e!3930245 () Bool)

(assert (=> d!2034349 (= (matchZipper!2375 lt!2387731 (t!379014 s!2326)) e!3930245)))

(declare-fun b!6484605 () Bool)

(assert (=> b!6484605 (= e!3930245 (nullableZipper!2120 lt!2387731))))

(declare-fun b!6484606 () Bool)

(assert (=> b!6484606 (= e!3930245 (matchZipper!2375 (derivationStepZipper!2329 lt!2387731 (head!13200 (t!379014 s!2326))) (tail!12285 (t!379014 s!2326))))))

(assert (= (and d!2034349 c!1188004) b!6484605))

(assert (= (and d!2034349 (not c!1188004)) b!6484606))

(assert (=> d!2034349 m!7272892))

(declare-fun m!7272962 () Bool)

(assert (=> b!6484605 m!7272962))

(assert (=> b!6484606 m!7272896))

(assert (=> b!6484606 m!7272896))

(declare-fun m!7272964 () Bool)

(assert (=> b!6484606 m!7272964))

(assert (=> b!6484606 m!7272900))

(assert (=> b!6484606 m!7272964))

(assert (=> b!6484606 m!7272900))

(declare-fun m!7272966 () Bool)

(assert (=> b!6484606 m!7272966))

(assert (=> b!6483505 d!2034349))

(declare-fun d!2034351 () Bool)

(declare-fun c!1188005 () Bool)

(assert (=> d!2034351 (= c!1188005 (isEmpty!37452 (t!379014 s!2326)))))

(declare-fun e!3930246 () Bool)

(assert (=> d!2034351 (= (matchZipper!2375 ((_ map or) lt!2387731 lt!2387736) (t!379014 s!2326)) e!3930246)))

(declare-fun b!6484607 () Bool)

(assert (=> b!6484607 (= e!3930246 (nullableZipper!2120 ((_ map or) lt!2387731 lt!2387736)))))

(declare-fun b!6484608 () Bool)

(assert (=> b!6484608 (= e!3930246 (matchZipper!2375 (derivationStepZipper!2329 ((_ map or) lt!2387731 lt!2387736) (head!13200 (t!379014 s!2326))) (tail!12285 (t!379014 s!2326))))))

(assert (= (and d!2034351 c!1188005) b!6484607))

(assert (= (and d!2034351 (not c!1188005)) b!6484608))

(assert (=> d!2034351 m!7272892))

(declare-fun m!7272968 () Bool)

(assert (=> b!6484607 m!7272968))

(assert (=> b!6484608 m!7272896))

(assert (=> b!6484608 m!7272896))

(declare-fun m!7272970 () Bool)

(assert (=> b!6484608 m!7272970))

(assert (=> b!6484608 m!7272900))

(assert (=> b!6484608 m!7272970))

(assert (=> b!6484608 m!7272900))

(declare-fun m!7272972 () Bool)

(assert (=> b!6484608 m!7272972))

(assert (=> b!6483505 d!2034351))

(declare-fun bs!1645140 () Bool)

(declare-fun d!2034353 () Bool)

(assert (= bs!1645140 (and d!2034353 d!2034039)))

(declare-fun lambda!358842 () Int)

(assert (=> bs!1645140 (= lambda!358842 lambda!358766)))

(declare-fun bs!1645141 () Bool)

(assert (= bs!1645141 (and d!2034353 d!2034237)))

(assert (=> bs!1645141 (= lambda!358842 lambda!358819)))

(declare-fun bs!1645142 () Bool)

(assert (= bs!1645142 (and d!2034353 d!2034151)))

(assert (=> bs!1645142 (= lambda!358842 lambda!358800)))

(declare-fun bs!1645143 () Bool)

(assert (= bs!1645143 (and d!2034353 d!2034107)))

(assert (=> bs!1645143 (= lambda!358842 lambda!358791)))

(declare-fun bs!1645144 () Bool)

(assert (= bs!1645144 (and d!2034353 b!6483542)))

(assert (=> bs!1645144 (= lambda!358842 lambda!358754)))

(declare-fun bs!1645145 () Bool)

(assert (= bs!1645145 (and d!2034353 d!2034105)))

(assert (=> bs!1645145 (= lambda!358842 lambda!358788)))

(declare-fun bs!1645146 () Bool)

(assert (= bs!1645146 (and d!2034353 d!2034177)))

(assert (=> bs!1645146 (= lambda!358842 lambda!358801)))

(assert (=> d!2034353 (= (inv!84154 setElem!44169) (forall!15545 (exprs!6247 setElem!44169) lambda!358842))))

(declare-fun bs!1645147 () Bool)

(assert (= bs!1645147 d!2034353))

(declare-fun m!7272974 () Bool)

(assert (=> bs!1645147 m!7272974))

(assert (=> setNonEmpty!44169 d!2034353))

(declare-fun d!2034355 () Bool)

(declare-fun lt!2387974 () Regex!16363)

(assert (=> d!2034355 (validRegex!8099 lt!2387974)))

(assert (=> d!2034355 (= lt!2387974 (generalisedUnion!2207 (unfocusZipperList!1784 zl!343)))))

(assert (=> d!2034355 (= (unfocusZipper!2105 zl!343) lt!2387974)))

(declare-fun bs!1645148 () Bool)

(assert (= bs!1645148 d!2034355))

(declare-fun m!7272976 () Bool)

(assert (=> bs!1645148 m!7272976))

(assert (=> bs!1645148 m!7271802))

(assert (=> bs!1645148 m!7271802))

(assert (=> bs!1645148 m!7271804))

(assert (=> b!6483532 d!2034355))

(declare-fun b!6484609 () Bool)

(declare-fun e!3930247 () List!65388)

(assert (=> b!6484609 (= e!3930247 lt!2387752)))

(declare-fun b!6484611 () Bool)

(declare-fun res!2663009 () Bool)

(declare-fun e!3930248 () Bool)

(assert (=> b!6484611 (=> (not res!2663009) (not e!3930248))))

(declare-fun lt!2387975 () List!65388)

(assert (=> b!6484611 (= res!2663009 (= (size!40417 lt!2387975) (+ (size!40417 (_1!36645 lt!2387762)) (size!40417 lt!2387752))))))

(declare-fun b!6484610 () Bool)

(assert (=> b!6484610 (= e!3930247 (Cons!65264 (h!71712 (_1!36645 lt!2387762)) (++!14436 (t!379014 (_1!36645 lt!2387762)) lt!2387752)))))

(declare-fun d!2034357 () Bool)

(assert (=> d!2034357 e!3930248))

(declare-fun res!2663008 () Bool)

(assert (=> d!2034357 (=> (not res!2663008) (not e!3930248))))

(assert (=> d!2034357 (= res!2663008 (= (content!12427 lt!2387975) ((_ map or) (content!12427 (_1!36645 lt!2387762)) (content!12427 lt!2387752))))))

(assert (=> d!2034357 (= lt!2387975 e!3930247)))

(declare-fun c!1188006 () Bool)

(assert (=> d!2034357 (= c!1188006 ((_ is Nil!65264) (_1!36645 lt!2387762)))))

(assert (=> d!2034357 (= (++!14436 (_1!36645 lt!2387762) lt!2387752) lt!2387975)))

(declare-fun b!6484612 () Bool)

(assert (=> b!6484612 (= e!3930248 (or (not (= lt!2387752 Nil!65264)) (= lt!2387975 (_1!36645 lt!2387762))))))

(assert (= (and d!2034357 c!1188006) b!6484609))

(assert (= (and d!2034357 (not c!1188006)) b!6484610))

(assert (= (and d!2034357 res!2663008) b!6484611))

(assert (= (and b!6484611 res!2663009) b!6484612))

(declare-fun m!7272978 () Bool)

(assert (=> b!6484611 m!7272978))

(declare-fun m!7272980 () Bool)

(assert (=> b!6484611 m!7272980))

(declare-fun m!7272982 () Bool)

(assert (=> b!6484611 m!7272982))

(declare-fun m!7272984 () Bool)

(assert (=> b!6484610 m!7272984))

(declare-fun m!7272986 () Bool)

(assert (=> d!2034357 m!7272986))

(declare-fun m!7272988 () Bool)

(assert (=> d!2034357 m!7272988))

(declare-fun m!7272990 () Bool)

(assert (=> d!2034357 m!7272990))

(assert (=> b!6483514 d!2034357))

(declare-fun b!6484613 () Bool)

(declare-fun e!3930249 () List!65388)

(assert (=> b!6484613 (= e!3930249 (_2!36645 lt!2387733))))

(declare-fun b!6484615 () Bool)

(declare-fun res!2663011 () Bool)

(declare-fun e!3930250 () Bool)

(assert (=> b!6484615 (=> (not res!2663011) (not e!3930250))))

(declare-fun lt!2387976 () List!65388)

(assert (=> b!6484615 (= res!2663011 (= (size!40417 lt!2387976) (+ (size!40417 lt!2387749) (size!40417 (_2!36645 lt!2387733)))))))

(declare-fun b!6484614 () Bool)

(assert (=> b!6484614 (= e!3930249 (Cons!65264 (h!71712 lt!2387749) (++!14436 (t!379014 lt!2387749) (_2!36645 lt!2387733))))))

(declare-fun d!2034359 () Bool)

(assert (=> d!2034359 e!3930250))

(declare-fun res!2663010 () Bool)

(assert (=> d!2034359 (=> (not res!2663010) (not e!3930250))))

(assert (=> d!2034359 (= res!2663010 (= (content!12427 lt!2387976) ((_ map or) (content!12427 lt!2387749) (content!12427 (_2!36645 lt!2387733)))))))

(assert (=> d!2034359 (= lt!2387976 e!3930249)))

(declare-fun c!1188007 () Bool)

(assert (=> d!2034359 (= c!1188007 ((_ is Nil!65264) lt!2387749))))

(assert (=> d!2034359 (= (++!14436 lt!2387749 (_2!36645 lt!2387733)) lt!2387976)))

(declare-fun b!6484616 () Bool)

(assert (=> b!6484616 (= e!3930250 (or (not (= (_2!36645 lt!2387733) Nil!65264)) (= lt!2387976 lt!2387749)))))

(assert (= (and d!2034359 c!1188007) b!6484613))

(assert (= (and d!2034359 (not c!1188007)) b!6484614))

(assert (= (and d!2034359 res!2663010) b!6484615))

(assert (= (and b!6484615 res!2663011) b!6484616))

(declare-fun m!7272992 () Bool)

(assert (=> b!6484615 m!7272992))

(declare-fun m!7272994 () Bool)

(assert (=> b!6484615 m!7272994))

(assert (=> b!6484615 m!7272922))

(declare-fun m!7272996 () Bool)

(assert (=> b!6484614 m!7272996))

(declare-fun m!7272998 () Bool)

(assert (=> d!2034359 m!7272998))

(declare-fun m!7273000 () Bool)

(assert (=> d!2034359 m!7273000))

(assert (=> d!2034359 m!7272930))

(assert (=> b!6483514 d!2034359))

(declare-fun b!6484617 () Bool)

(declare-fun e!3930251 () List!65388)

(assert (=> b!6484617 (= e!3930251 (_2!36645 lt!2387733))))

(declare-fun b!6484619 () Bool)

(declare-fun res!2663013 () Bool)

(declare-fun e!3930252 () Bool)

(assert (=> b!6484619 (=> (not res!2663013) (not e!3930252))))

(declare-fun lt!2387977 () List!65388)

(assert (=> b!6484619 (= res!2663013 (= (size!40417 lt!2387977) (+ (size!40417 (_2!36645 lt!2387762)) (size!40417 (_2!36645 lt!2387733)))))))

(declare-fun b!6484618 () Bool)

(assert (=> b!6484618 (= e!3930251 (Cons!65264 (h!71712 (_2!36645 lt!2387762)) (++!14436 (t!379014 (_2!36645 lt!2387762)) (_2!36645 lt!2387733))))))

(declare-fun d!2034361 () Bool)

(assert (=> d!2034361 e!3930252))

(declare-fun res!2663012 () Bool)

(assert (=> d!2034361 (=> (not res!2663012) (not e!3930252))))

(assert (=> d!2034361 (= res!2663012 (= (content!12427 lt!2387977) ((_ map or) (content!12427 (_2!36645 lt!2387762)) (content!12427 (_2!36645 lt!2387733)))))))

(assert (=> d!2034361 (= lt!2387977 e!3930251)))

(declare-fun c!1188008 () Bool)

(assert (=> d!2034361 (= c!1188008 ((_ is Nil!65264) (_2!36645 lt!2387762)))))

(assert (=> d!2034361 (= (++!14436 (_2!36645 lt!2387762) (_2!36645 lt!2387733)) lt!2387977)))

(declare-fun b!6484620 () Bool)

(assert (=> b!6484620 (= e!3930252 (or (not (= (_2!36645 lt!2387733) Nil!65264)) (= lt!2387977 (_2!36645 lt!2387762))))))

(assert (= (and d!2034361 c!1188008) b!6484617))

(assert (= (and d!2034361 (not c!1188008)) b!6484618))

(assert (= (and d!2034361 res!2663012) b!6484619))

(assert (= (and b!6484619 res!2663013) b!6484620))

(declare-fun m!7273002 () Bool)

(assert (=> b!6484619 m!7273002))

(declare-fun m!7273004 () Bool)

(assert (=> b!6484619 m!7273004))

(assert (=> b!6484619 m!7272922))

(declare-fun m!7273006 () Bool)

(assert (=> b!6484618 m!7273006))

(declare-fun m!7273008 () Bool)

(assert (=> d!2034361 m!7273008))

(declare-fun m!7273010 () Bool)

(assert (=> d!2034361 m!7273010))

(assert (=> d!2034361 m!7272930))

(assert (=> b!6483514 d!2034361))

(declare-fun d!2034363 () Bool)

(assert (=> d!2034363 (= (++!14436 (++!14436 (_1!36645 lt!2387762) (_2!36645 lt!2387762)) (_2!36645 lt!2387733)) (++!14436 (_1!36645 lt!2387762) (++!14436 (_2!36645 lt!2387762) (_2!36645 lt!2387733))))))

(declare-fun lt!2387980 () Unit!158783)

(declare-fun choose!48107 (List!65388 List!65388 List!65388) Unit!158783)

(assert (=> d!2034363 (= lt!2387980 (choose!48107 (_1!36645 lt!2387762) (_2!36645 lt!2387762) (_2!36645 lt!2387733)))))

(assert (=> d!2034363 (= (lemmaConcatAssociativity!2934 (_1!36645 lt!2387762) (_2!36645 lt!2387762) (_2!36645 lt!2387733)) lt!2387980)))

(declare-fun bs!1645149 () Bool)

(assert (= bs!1645149 d!2034363))

(assert (=> bs!1645149 m!7271898))

(declare-fun m!7273012 () Bool)

(assert (=> bs!1645149 m!7273012))

(assert (=> bs!1645149 m!7271898))

(assert (=> bs!1645149 m!7271836))

(assert (=> bs!1645149 m!7271836))

(declare-fun m!7273014 () Bool)

(assert (=> bs!1645149 m!7273014))

(declare-fun m!7273016 () Bool)

(assert (=> bs!1645149 m!7273016))

(assert (=> b!6483514 d!2034363))

(declare-fun d!2034365 () Bool)

(assert (=> d!2034365 (= (nullable!6356 (regOne!33238 (regOne!33238 r!7292))) (nullableFct!2293 (regOne!33238 (regOne!33238 r!7292))))))

(declare-fun bs!1645150 () Bool)

(assert (= bs!1645150 d!2034365))

(declare-fun m!7273018 () Bool)

(assert (=> bs!1645150 m!7273018))

(assert (=> b!6483533 d!2034365))

(declare-fun d!2034367 () Bool)

(assert (=> d!2034367 (= (get!22628 lt!2387782) (v!52432 lt!2387782))))

(assert (=> b!6483513 d!2034367))

(declare-fun bs!1645151 () Bool)

(declare-fun d!2034369 () Bool)

(assert (= bs!1645151 (and d!2034369 b!6483504)))

(declare-fun lambda!358843 () Int)

(assert (=> bs!1645151 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358749))))

(declare-fun bs!1645152 () Bool)

(assert (= bs!1645152 (and d!2034369 b!6484232)))

(assert (=> bs!1645152 (not (= lambda!358843 lambda!358811))))

(declare-fun bs!1645153 () Bool)

(assert (= bs!1645153 (and d!2034369 b!6484416)))

(assert (=> bs!1645153 (not (= lambda!358843 lambda!358824))))

(declare-fun bs!1645154 () Bool)

(assert (= bs!1645154 (and d!2034369 d!2034339)))

(assert (=> bs!1645154 (not (= lambda!358843 lambda!358841))))

(declare-fun bs!1645155 () Bool)

(assert (= bs!1645155 (and d!2034369 d!2034319)))

(assert (=> bs!1645155 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358837))))

(declare-fun bs!1645156 () Bool)

(assert (= bs!1645156 (and d!2034369 d!2034335)))

(assert (=> bs!1645156 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358839))))

(declare-fun bs!1645157 () Bool)

(assert (= bs!1645157 (and d!2034369 b!6483513)))

(assert (=> bs!1645157 (= lambda!358843 lambda!358751)))

(assert (=> bs!1645157 (not (= lambda!358843 lambda!358752))))

(assert (=> bs!1645157 (not (= lambda!358843 lambda!358753))))

(assert (=> bs!1645155 (not (= lambda!358843 lambda!358838))))

(declare-fun bs!1645158 () Bool)

(assert (= bs!1645158 (and d!2034369 b!6484225)))

(assert (=> bs!1645158 (not (= lambda!358843 lambda!358810))))

(assert (=> bs!1645151 (not (= lambda!358843 lambda!358750))))

(declare-fun bs!1645159 () Bool)

(assert (= bs!1645159 (and d!2034369 b!6484409)))

(assert (=> bs!1645159 (not (= lambda!358843 lambda!358822))))

(declare-fun bs!1645160 () Bool)

(assert (= bs!1645160 (and d!2034369 d!2034309)))

(assert (=> bs!1645160 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358832))))

(assert (=> bs!1645154 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358840))))

(declare-fun bs!1645161 () Bool)

(assert (= bs!1645161 (and d!2034369 b!6483529)))

(assert (=> bs!1645161 (not (= lambda!358843 lambda!358747))))

(assert (=> bs!1645161 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358843 lambda!358746))))

(assert (=> d!2034369 true))

(assert (=> d!2034369 true))

(assert (=> d!2034369 true))

(assert (=> d!2034369 (= (isDefined!12957 (findConcatSeparation!2668 (reg!16692 (regOne!33238 r!7292)) lt!2387743 Nil!65264 (_1!36645 lt!2387733) (_1!36645 lt!2387733))) (Exists!3433 lambda!358843))))

(declare-fun lt!2387981 () Unit!158783)

(assert (=> d!2034369 (= lt!2387981 (choose!48100 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)))))

(assert (=> d!2034369 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034369 (= (lemmaFindConcatSeparationEquivalentToExists!2432 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)) lt!2387981)))

(declare-fun bs!1645162 () Bool)

(assert (= bs!1645162 d!2034369))

(assert (=> bs!1645162 m!7271832))

(assert (=> bs!1645162 m!7272184))

(assert (=> bs!1645162 m!7271832))

(declare-fun m!7273020 () Bool)

(assert (=> bs!1645162 m!7273020))

(declare-fun m!7273022 () Bool)

(assert (=> bs!1645162 m!7273022))

(declare-fun m!7273024 () Bool)

(assert (=> bs!1645162 m!7273024))

(assert (=> b!6483513 d!2034369))

(declare-fun d!2034371 () Bool)

(assert (=> d!2034371 (= (Exists!3433 lambda!358752) (choose!48099 lambda!358752))))

(declare-fun bs!1645163 () Bool)

(assert (= bs!1645163 d!2034371))

(declare-fun m!7273026 () Bool)

(assert (=> bs!1645163 m!7273026))

(assert (=> b!6483513 d!2034371))

(declare-fun d!2034373 () Bool)

(assert (=> d!2034373 (= (Exists!3433 lambda!358753) (choose!48099 lambda!358753))))

(declare-fun bs!1645164 () Bool)

(assert (= bs!1645164 d!2034373))

(declare-fun m!7273028 () Bool)

(assert (=> bs!1645164 m!7273028))

(assert (=> b!6483513 d!2034373))

(declare-fun d!2034375 () Bool)

(assert (=> d!2034375 (= (Exists!3433 lambda!358751) (choose!48099 lambda!358751))))

(declare-fun bs!1645165 () Bool)

(assert (= bs!1645165 d!2034375))

(declare-fun m!7273030 () Bool)

(assert (=> bs!1645165 m!7273030))

(assert (=> b!6483513 d!2034375))

(declare-fun bs!1645166 () Bool)

(declare-fun d!2034377 () Bool)

(assert (= bs!1645166 (and d!2034377 d!2034369)))

(declare-fun lambda!358844 () Int)

(assert (=> bs!1645166 (= lambda!358844 lambda!358843)))

(declare-fun bs!1645167 () Bool)

(assert (= bs!1645167 (and d!2034377 b!6483504)))

(assert (=> bs!1645167 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358749))))

(declare-fun bs!1645168 () Bool)

(assert (= bs!1645168 (and d!2034377 b!6484232)))

(assert (=> bs!1645168 (not (= lambda!358844 lambda!358811))))

(declare-fun bs!1645169 () Bool)

(assert (= bs!1645169 (and d!2034377 b!6484416)))

(assert (=> bs!1645169 (not (= lambda!358844 lambda!358824))))

(declare-fun bs!1645170 () Bool)

(assert (= bs!1645170 (and d!2034377 d!2034339)))

(assert (=> bs!1645170 (not (= lambda!358844 lambda!358841))))

(declare-fun bs!1645171 () Bool)

(assert (= bs!1645171 (and d!2034377 d!2034319)))

(assert (=> bs!1645171 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358837))))

(declare-fun bs!1645172 () Bool)

(assert (= bs!1645172 (and d!2034377 d!2034335)))

(assert (=> bs!1645172 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358839))))

(declare-fun bs!1645173 () Bool)

(assert (= bs!1645173 (and d!2034377 b!6483513)))

(assert (=> bs!1645173 (= lambda!358844 lambda!358751)))

(assert (=> bs!1645173 (not (= lambda!358844 lambda!358752))))

(assert (=> bs!1645173 (not (= lambda!358844 lambda!358753))))

(assert (=> bs!1645171 (not (= lambda!358844 lambda!358838))))

(declare-fun bs!1645174 () Bool)

(assert (= bs!1645174 (and d!2034377 b!6484225)))

(assert (=> bs!1645174 (not (= lambda!358844 lambda!358810))))

(assert (=> bs!1645167 (not (= lambda!358844 lambda!358750))))

(declare-fun bs!1645175 () Bool)

(assert (= bs!1645175 (and d!2034377 b!6484409)))

(assert (=> bs!1645175 (not (= lambda!358844 lambda!358822))))

(declare-fun bs!1645176 () Bool)

(assert (= bs!1645176 (and d!2034377 d!2034309)))

(assert (=> bs!1645176 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358832))))

(assert (=> bs!1645170 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358840))))

(declare-fun bs!1645177 () Bool)

(assert (= bs!1645177 (and d!2034377 b!6483529)))

(assert (=> bs!1645177 (not (= lambda!358844 lambda!358747))))

(assert (=> bs!1645177 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358844 lambda!358746))))

(assert (=> d!2034377 true))

(assert (=> d!2034377 true))

(assert (=> d!2034377 true))

(declare-fun lambda!358845 () Int)

(assert (=> bs!1645166 (not (= lambda!358845 lambda!358843))))

(assert (=> bs!1645167 (not (= lambda!358845 lambda!358749))))

(assert (=> bs!1645168 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 lt!2387730)) (= lt!2387743 (regTwo!33238 lt!2387730))) (= lambda!358845 lambda!358811))))

(assert (=> bs!1645169 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358845 lambda!358824))))

(assert (=> bs!1645170 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358845 lambda!358841))))

(declare-fun bs!1645178 () Bool)

(assert (= bs!1645178 d!2034377))

(assert (=> bs!1645178 (not (= lambda!358845 lambda!358844))))

(assert (=> bs!1645171 (not (= lambda!358845 lambda!358837))))

(assert (=> bs!1645172 (not (= lambda!358845 lambda!358839))))

(assert (=> bs!1645173 (not (= lambda!358845 lambda!358751))))

(assert (=> bs!1645173 (not (= lambda!358845 lambda!358752))))

(assert (=> bs!1645173 (= lambda!358845 lambda!358753)))

(assert (=> bs!1645171 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358845 lambda!358838))))

(assert (=> bs!1645174 (not (= lambda!358845 lambda!358810))))

(assert (=> bs!1645167 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358845 lambda!358750))))

(assert (=> bs!1645175 (not (= lambda!358845 lambda!358822))))

(assert (=> bs!1645176 (not (= lambda!358845 lambda!358832))))

(assert (=> bs!1645170 (not (= lambda!358845 lambda!358840))))

(assert (=> bs!1645177 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= lt!2387743 (regTwo!33238 r!7292))) (= lambda!358845 lambda!358747))))

(assert (=> bs!1645177 (not (= lambda!358845 lambda!358746))))

(assert (=> d!2034377 true))

(assert (=> d!2034377 true))

(assert (=> d!2034377 true))

(assert (=> d!2034377 (= (Exists!3433 lambda!358844) (Exists!3433 lambda!358845))))

(declare-fun lt!2387982 () Unit!158783)

(assert (=> d!2034377 (= lt!2387982 (choose!48101 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)))))

(assert (=> d!2034377 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034377 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1970 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (_1!36645 lt!2387733)) lt!2387982)))

(declare-fun m!7273032 () Bool)

(assert (=> bs!1645178 m!7273032))

(declare-fun m!7273034 () Bool)

(assert (=> bs!1645178 m!7273034))

(declare-fun m!7273036 () Bool)

(assert (=> bs!1645178 m!7273036))

(assert (=> bs!1645178 m!7272184))

(assert (=> b!6483513 d!2034377))

(declare-fun d!2034379 () Bool)

(assert (=> d!2034379 (= (isDefined!12957 lt!2387782) (not (isEmpty!37456 lt!2387782)))))

(declare-fun bs!1645179 () Bool)

(assert (= bs!1645179 d!2034379))

(declare-fun m!7273038 () Bool)

(assert (=> bs!1645179 m!7273038))

(assert (=> b!6483513 d!2034379))

(declare-fun b!6484621 () Bool)

(declare-fun e!3930256 () Bool)

(assert (=> b!6484621 (= e!3930256 (matchR!8546 lt!2387743 (_1!36645 lt!2387733)))))

(declare-fun b!6484622 () Bool)

(declare-fun e!3930255 () Option!16254)

(assert (=> b!6484622 (= e!3930255 None!16253)))

(declare-fun b!6484623 () Bool)

(declare-fun res!2663016 () Bool)

(declare-fun e!3930254 () Bool)

(assert (=> b!6484623 (=> (not res!2663016) (not e!3930254))))

(declare-fun lt!2387985 () Option!16254)

(assert (=> b!6484623 (= res!2663016 (matchR!8546 (reg!16692 (regOne!33238 r!7292)) (_1!36645 (get!22628 lt!2387985))))))

(declare-fun b!6484624 () Bool)

(assert (=> b!6484624 (= e!3930254 (= (++!14436 (_1!36645 (get!22628 lt!2387985)) (_2!36645 (get!22628 lt!2387985))) (_1!36645 lt!2387733)))))

(declare-fun b!6484625 () Bool)

(declare-fun e!3930257 () Option!16254)

(assert (=> b!6484625 (= e!3930257 (Some!16253 (tuple2!66685 Nil!65264 (_1!36645 lt!2387733))))))

(declare-fun b!6484626 () Bool)

(assert (=> b!6484626 (= e!3930257 e!3930255)))

(declare-fun c!1188009 () Bool)

(assert (=> b!6484626 (= c!1188009 ((_ is Nil!65264) (_1!36645 lt!2387733)))))

(declare-fun b!6484627 () Bool)

(declare-fun res!2663018 () Bool)

(assert (=> b!6484627 (=> (not res!2663018) (not e!3930254))))

(assert (=> b!6484627 (= res!2663018 (matchR!8546 lt!2387743 (_2!36645 (get!22628 lt!2387985))))))

(declare-fun b!6484628 () Bool)

(declare-fun e!3930253 () Bool)

(assert (=> b!6484628 (= e!3930253 (not (isDefined!12957 lt!2387985)))))

(declare-fun d!2034381 () Bool)

(assert (=> d!2034381 e!3930253))

(declare-fun res!2663014 () Bool)

(assert (=> d!2034381 (=> res!2663014 e!3930253)))

(assert (=> d!2034381 (= res!2663014 e!3930254)))

(declare-fun res!2663017 () Bool)

(assert (=> d!2034381 (=> (not res!2663017) (not e!3930254))))

(assert (=> d!2034381 (= res!2663017 (isDefined!12957 lt!2387985))))

(assert (=> d!2034381 (= lt!2387985 e!3930257)))

(declare-fun c!1188010 () Bool)

(assert (=> d!2034381 (= c!1188010 e!3930256)))

(declare-fun res!2663015 () Bool)

(assert (=> d!2034381 (=> (not res!2663015) (not e!3930256))))

(assert (=> d!2034381 (= res!2663015 (matchR!8546 (reg!16692 (regOne!33238 r!7292)) Nil!65264))))

(assert (=> d!2034381 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034381 (= (findConcatSeparation!2668 (reg!16692 (regOne!33238 r!7292)) lt!2387743 Nil!65264 (_1!36645 lt!2387733) (_1!36645 lt!2387733)) lt!2387985)))

(declare-fun b!6484629 () Bool)

(declare-fun lt!2387984 () Unit!158783)

(declare-fun lt!2387983 () Unit!158783)

(assert (=> b!6484629 (= lt!2387984 lt!2387983)))

(assert (=> b!6484629 (= (++!14436 (++!14436 Nil!65264 (Cons!65264 (h!71712 (_1!36645 lt!2387733)) Nil!65264)) (t!379014 (_1!36645 lt!2387733))) (_1!36645 lt!2387733))))

(assert (=> b!6484629 (= lt!2387983 (lemmaMoveElementToOtherListKeepsConcatEq!2518 Nil!65264 (h!71712 (_1!36645 lt!2387733)) (t!379014 (_1!36645 lt!2387733)) (_1!36645 lt!2387733)))))

(assert (=> b!6484629 (= e!3930255 (findConcatSeparation!2668 (reg!16692 (regOne!33238 r!7292)) lt!2387743 (++!14436 Nil!65264 (Cons!65264 (h!71712 (_1!36645 lt!2387733)) Nil!65264)) (t!379014 (_1!36645 lt!2387733)) (_1!36645 lt!2387733)))))

(assert (= (and d!2034381 res!2663015) b!6484621))

(assert (= (and d!2034381 c!1188010) b!6484625))

(assert (= (and d!2034381 (not c!1188010)) b!6484626))

(assert (= (and b!6484626 c!1188009) b!6484622))

(assert (= (and b!6484626 (not c!1188009)) b!6484629))

(assert (= (and d!2034381 res!2663017) b!6484623))

(assert (= (and b!6484623 res!2663016) b!6484627))

(assert (= (and b!6484627 res!2663018) b!6484624))

(assert (= (and d!2034381 (not res!2663014)) b!6484628))

(declare-fun m!7273040 () Bool)

(assert (=> b!6484623 m!7273040))

(declare-fun m!7273042 () Bool)

(assert (=> b!6484623 m!7273042))

(assert (=> b!6484621 m!7271808))

(declare-fun m!7273044 () Bool)

(assert (=> b!6484628 m!7273044))

(declare-fun m!7273046 () Bool)

(assert (=> b!6484629 m!7273046))

(assert (=> b!6484629 m!7273046))

(declare-fun m!7273048 () Bool)

(assert (=> b!6484629 m!7273048))

(declare-fun m!7273050 () Bool)

(assert (=> b!6484629 m!7273050))

(assert (=> b!6484629 m!7273046))

(declare-fun m!7273052 () Bool)

(assert (=> b!6484629 m!7273052))

(assert (=> b!6484627 m!7273040))

(declare-fun m!7273054 () Bool)

(assert (=> b!6484627 m!7273054))

(assert (=> d!2034381 m!7273044))

(declare-fun m!7273056 () Bool)

(assert (=> d!2034381 m!7273056))

(assert (=> d!2034381 m!7272184))

(assert (=> b!6484624 m!7273040))

(declare-fun m!7273058 () Bool)

(assert (=> b!6484624 m!7273058))

(assert (=> b!6483513 d!2034381))

(declare-fun bs!1645180 () Bool)

(declare-fun b!6484632 () Bool)

(assert (= bs!1645180 (and b!6484632 d!2034369)))

(declare-fun lambda!358846 () Int)

(assert (=> bs!1645180 (not (= lambda!358846 lambda!358843))))

(declare-fun bs!1645181 () Bool)

(assert (= bs!1645181 (and b!6484632 b!6483504)))

(assert (=> bs!1645181 (not (= lambda!358846 lambda!358749))))

(declare-fun bs!1645182 () Bool)

(assert (= bs!1645182 (and b!6484632 b!6484232)))

(assert (=> bs!1645182 (not (= lambda!358846 lambda!358811))))

(declare-fun bs!1645183 () Bool)

(assert (= bs!1645183 (and b!6484632 d!2034339)))

(assert (=> bs!1645183 (not (= lambda!358846 lambda!358841))))

(declare-fun bs!1645184 () Bool)

(assert (= bs!1645184 (and b!6484632 d!2034377)))

(assert (=> bs!1645184 (not (= lambda!358846 lambda!358844))))

(declare-fun bs!1645185 () Bool)

(assert (= bs!1645185 (and b!6484632 d!2034319)))

(assert (=> bs!1645185 (not (= lambda!358846 lambda!358837))))

(declare-fun bs!1645186 () Bool)

(assert (= bs!1645186 (and b!6484632 d!2034335)))

(assert (=> bs!1645186 (not (= lambda!358846 lambda!358839))))

(declare-fun bs!1645187 () Bool)

(assert (= bs!1645187 (and b!6484632 b!6483513)))

(assert (=> bs!1645187 (not (= lambda!358846 lambda!358751))))

(assert (=> bs!1645187 (= (= (reg!16692 lt!2387743) (reg!16692 (regOne!33238 r!7292))) (= lambda!358846 lambda!358752))))

(assert (=> bs!1645187 (not (= lambda!358846 lambda!358753))))

(declare-fun bs!1645188 () Bool)

(assert (= bs!1645188 (and b!6484632 b!6484416)))

(assert (=> bs!1645188 (not (= lambda!358846 lambda!358824))))

(assert (=> bs!1645184 (not (= lambda!358846 lambda!358845))))

(assert (=> bs!1645185 (not (= lambda!358846 lambda!358838))))

(declare-fun bs!1645189 () Bool)

(assert (= bs!1645189 (and b!6484632 b!6484225)))

(assert (=> bs!1645189 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 lt!2387743) (reg!16692 lt!2387730)) (= lt!2387743 lt!2387730)) (= lambda!358846 lambda!358810))))

(assert (=> bs!1645181 (not (= lambda!358846 lambda!358750))))

(declare-fun bs!1645190 () Bool)

(assert (= bs!1645190 (and b!6484632 b!6484409)))

(assert (=> bs!1645190 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 lt!2387743) (reg!16692 r!7292)) (= lt!2387743 r!7292)) (= lambda!358846 lambda!358822))))

(declare-fun bs!1645191 () Bool)

(assert (= bs!1645191 (and b!6484632 d!2034309)))

(assert (=> bs!1645191 (not (= lambda!358846 lambda!358832))))

(assert (=> bs!1645183 (not (= lambda!358846 lambda!358840))))

(declare-fun bs!1645192 () Bool)

(assert (= bs!1645192 (and b!6484632 b!6483529)))

(assert (=> bs!1645192 (not (= lambda!358846 lambda!358747))))

(assert (=> bs!1645192 (not (= lambda!358846 lambda!358746))))

(assert (=> b!6484632 true))

(assert (=> b!6484632 true))

(declare-fun bs!1645193 () Bool)

(declare-fun b!6484639 () Bool)

(assert (= bs!1645193 (and b!6484639 d!2034369)))

(declare-fun lambda!358847 () Int)

(assert (=> bs!1645193 (not (= lambda!358847 lambda!358843))))

(declare-fun bs!1645194 () Bool)

(assert (= bs!1645194 (and b!6484639 b!6483504)))

(assert (=> bs!1645194 (not (= lambda!358847 lambda!358749))))

(declare-fun bs!1645195 () Bool)

(assert (= bs!1645195 (and b!6484639 b!6484632)))

(assert (=> bs!1645195 (not (= lambda!358847 lambda!358846))))

(declare-fun bs!1645196 () Bool)

(assert (= bs!1645196 (and b!6484639 b!6484232)))

(assert (=> bs!1645196 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) (regOne!33238 lt!2387730)) (= (regTwo!33238 lt!2387743) (regTwo!33238 lt!2387730))) (= lambda!358847 lambda!358811))))

(declare-fun bs!1645197 () Bool)

(assert (= bs!1645197 (and b!6484639 d!2034339)))

(assert (=> bs!1645197 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) lt!2387743) (= (regTwo!33238 lt!2387743) (regTwo!33238 r!7292))) (= lambda!358847 lambda!358841))))

(declare-fun bs!1645198 () Bool)

(assert (= bs!1645198 (and b!6484639 d!2034377)))

(assert (=> bs!1645198 (not (= lambda!358847 lambda!358844))))

(declare-fun bs!1645199 () Bool)

(assert (= bs!1645199 (and b!6484639 d!2034319)))

(assert (=> bs!1645199 (not (= lambda!358847 lambda!358837))))

(declare-fun bs!1645200 () Bool)

(assert (= bs!1645200 (and b!6484639 d!2034335)))

(assert (=> bs!1645200 (not (= lambda!358847 lambda!358839))))

(declare-fun bs!1645201 () Bool)

(assert (= bs!1645201 (and b!6484639 b!6483513)))

(assert (=> bs!1645201 (not (= lambda!358847 lambda!358751))))

(assert (=> bs!1645201 (not (= lambda!358847 lambda!358752))))

(assert (=> bs!1645201 (= (and (= (regOne!33238 lt!2387743) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 lt!2387743) lt!2387743)) (= lambda!358847 lambda!358753))))

(declare-fun bs!1645202 () Bool)

(assert (= bs!1645202 (and b!6484639 b!6484416)))

(assert (=> bs!1645202 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) (regOne!33238 r!7292)) (= (regTwo!33238 lt!2387743) (regTwo!33238 r!7292))) (= lambda!358847 lambda!358824))))

(assert (=> bs!1645198 (= (and (= (regOne!33238 lt!2387743) (reg!16692 (regOne!33238 r!7292))) (= (regTwo!33238 lt!2387743) lt!2387743)) (= lambda!358847 lambda!358845))))

(assert (=> bs!1645199 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) (regOne!33238 r!7292)) (= (regTwo!33238 lt!2387743) (regTwo!33238 r!7292))) (= lambda!358847 lambda!358838))))

(declare-fun bs!1645203 () Bool)

(assert (= bs!1645203 (and b!6484639 b!6484225)))

(assert (=> bs!1645203 (not (= lambda!358847 lambda!358810))))

(assert (=> bs!1645194 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) lt!2387743) (= (regTwo!33238 lt!2387743) (regTwo!33238 r!7292))) (= lambda!358847 lambda!358750))))

(declare-fun bs!1645204 () Bool)

(assert (= bs!1645204 (and b!6484639 b!6484409)))

(assert (=> bs!1645204 (not (= lambda!358847 lambda!358822))))

(declare-fun bs!1645205 () Bool)

(assert (= bs!1645205 (and b!6484639 d!2034309)))

(assert (=> bs!1645205 (not (= lambda!358847 lambda!358832))))

(assert (=> bs!1645197 (not (= lambda!358847 lambda!358840))))

(declare-fun bs!1645206 () Bool)

(assert (= bs!1645206 (and b!6484639 b!6483529)))

(assert (=> bs!1645206 (= (and (= (_1!36645 lt!2387733) s!2326) (= (regOne!33238 lt!2387743) (regOne!33238 r!7292)) (= (regTwo!33238 lt!2387743) (regTwo!33238 r!7292))) (= lambda!358847 lambda!358747))))

(assert (=> bs!1645206 (not (= lambda!358847 lambda!358746))))

(assert (=> b!6484639 true))

(assert (=> b!6484639 true))

(declare-fun b!6484630 () Bool)

(declare-fun c!1188013 () Bool)

(assert (=> b!6484630 (= c!1188013 ((_ is Union!16363) lt!2387743))))

(declare-fun e!3930263 () Bool)

(declare-fun e!3930258 () Bool)

(assert (=> b!6484630 (= e!3930263 e!3930258)))

(declare-fun d!2034383 () Bool)

(declare-fun c!1188011 () Bool)

(assert (=> d!2034383 (= c!1188011 ((_ is EmptyExpr!16363) lt!2387743))))

(declare-fun e!3930259 () Bool)

(assert (=> d!2034383 (= (matchRSpec!3464 lt!2387743 (_1!36645 lt!2387733)) e!3930259)))

(declare-fun b!6484631 () Bool)

(declare-fun call!561255 () Bool)

(assert (=> b!6484631 (= e!3930259 call!561255)))

(declare-fun e!3930260 () Bool)

(declare-fun call!561254 () Bool)

(assert (=> b!6484632 (= e!3930260 call!561254)))

(declare-fun b!6484633 () Bool)

(declare-fun e!3930262 () Bool)

(assert (=> b!6484633 (= e!3930258 e!3930262)))

(declare-fun c!1188012 () Bool)

(assert (=> b!6484633 (= c!1188012 ((_ is Star!16363) lt!2387743))))

(declare-fun b!6484634 () Bool)

(assert (=> b!6484634 (= e!3930263 (= (_1!36645 lt!2387733) (Cons!65264 (c!1187715 lt!2387743) Nil!65264)))))

(declare-fun b!6484635 () Bool)

(declare-fun e!3930264 () Bool)

(assert (=> b!6484635 (= e!3930259 e!3930264)))

(declare-fun res!2663020 () Bool)

(assert (=> b!6484635 (= res!2663020 (not ((_ is EmptyLang!16363) lt!2387743)))))

(assert (=> b!6484635 (=> (not res!2663020) (not e!3930264))))

(declare-fun b!6484636 () Bool)

(declare-fun c!1188014 () Bool)

(assert (=> b!6484636 (= c!1188014 ((_ is ElementMatch!16363) lt!2387743))))

(assert (=> b!6484636 (= e!3930264 e!3930263)))

(declare-fun b!6484637 () Bool)

(declare-fun e!3930261 () Bool)

(assert (=> b!6484637 (= e!3930258 e!3930261)))

(declare-fun res!2663019 () Bool)

(assert (=> b!6484637 (= res!2663019 (matchRSpec!3464 (regOne!33239 lt!2387743) (_1!36645 lt!2387733)))))

(assert (=> b!6484637 (=> res!2663019 e!3930261)))

(declare-fun bm!561249 () Bool)

(assert (=> bm!561249 (= call!561254 (Exists!3433 (ite c!1188012 lambda!358846 lambda!358847)))))

(declare-fun b!6484638 () Bool)

(declare-fun res!2663021 () Bool)

(assert (=> b!6484638 (=> res!2663021 e!3930260)))

(assert (=> b!6484638 (= res!2663021 call!561255)))

(assert (=> b!6484638 (= e!3930262 e!3930260)))

(declare-fun bm!561250 () Bool)

(assert (=> bm!561250 (= call!561255 (isEmpty!37452 (_1!36645 lt!2387733)))))

(assert (=> b!6484639 (= e!3930262 call!561254)))

(declare-fun b!6484640 () Bool)

(assert (=> b!6484640 (= e!3930261 (matchRSpec!3464 (regTwo!33239 lt!2387743) (_1!36645 lt!2387733)))))

(assert (= (and d!2034383 c!1188011) b!6484631))

(assert (= (and d!2034383 (not c!1188011)) b!6484635))

(assert (= (and b!6484635 res!2663020) b!6484636))

(assert (= (and b!6484636 c!1188014) b!6484634))

(assert (= (and b!6484636 (not c!1188014)) b!6484630))

(assert (= (and b!6484630 c!1188013) b!6484637))

(assert (= (and b!6484630 (not c!1188013)) b!6484633))

(assert (= (and b!6484637 (not res!2663019)) b!6484640))

(assert (= (and b!6484633 c!1188012) b!6484638))

(assert (= (and b!6484633 (not c!1188012)) b!6484639))

(assert (= (and b!6484638 (not res!2663021)) b!6484632))

(assert (= (or b!6484632 b!6484639) bm!561249))

(assert (= (or b!6484631 b!6484638) bm!561250))

(declare-fun m!7273060 () Bool)

(assert (=> b!6484637 m!7273060))

(declare-fun m!7273062 () Bool)

(assert (=> bm!561249 m!7273062))

(assert (=> bm!561250 m!7271730))

(declare-fun m!7273064 () Bool)

(assert (=> b!6484640 m!7273064))

(assert (=> b!6483513 d!2034383))

(declare-fun b!6484641 () Bool)

(declare-fun e!3930265 () List!65388)

(assert (=> b!6484641 (= e!3930265 (_2!36645 lt!2387762))))

(declare-fun b!6484643 () Bool)

(declare-fun res!2663023 () Bool)

(declare-fun e!3930266 () Bool)

(assert (=> b!6484643 (=> (not res!2663023) (not e!3930266))))

(declare-fun lt!2387986 () List!65388)

(assert (=> b!6484643 (= res!2663023 (= (size!40417 lt!2387986) (+ (size!40417 (_1!36645 lt!2387762)) (size!40417 (_2!36645 lt!2387762)))))))

(declare-fun b!6484642 () Bool)

(assert (=> b!6484642 (= e!3930265 (Cons!65264 (h!71712 (_1!36645 lt!2387762)) (++!14436 (t!379014 (_1!36645 lt!2387762)) (_2!36645 lt!2387762))))))

(declare-fun d!2034385 () Bool)

(assert (=> d!2034385 e!3930266))

(declare-fun res!2663022 () Bool)

(assert (=> d!2034385 (=> (not res!2663022) (not e!3930266))))

(assert (=> d!2034385 (= res!2663022 (= (content!12427 lt!2387986) ((_ map or) (content!12427 (_1!36645 lt!2387762)) (content!12427 (_2!36645 lt!2387762)))))))

(assert (=> d!2034385 (= lt!2387986 e!3930265)))

(declare-fun c!1188015 () Bool)

(assert (=> d!2034385 (= c!1188015 ((_ is Nil!65264) (_1!36645 lt!2387762)))))

(assert (=> d!2034385 (= (++!14436 (_1!36645 lt!2387762) (_2!36645 lt!2387762)) lt!2387986)))

(declare-fun b!6484644 () Bool)

(assert (=> b!6484644 (= e!3930266 (or (not (= (_2!36645 lt!2387762) Nil!65264)) (= lt!2387986 (_1!36645 lt!2387762))))))

(assert (= (and d!2034385 c!1188015) b!6484641))

(assert (= (and d!2034385 (not c!1188015)) b!6484642))

(assert (= (and d!2034385 res!2663022) b!6484643))

(assert (= (and b!6484643 res!2663023) b!6484644))

(declare-fun m!7273066 () Bool)

(assert (=> b!6484643 m!7273066))

(assert (=> b!6484643 m!7272980))

(assert (=> b!6484643 m!7273004))

(declare-fun m!7273068 () Bool)

(assert (=> b!6484642 m!7273068))

(declare-fun m!7273070 () Bool)

(assert (=> d!2034385 m!7273070))

(assert (=> d!2034385 m!7272988))

(assert (=> d!2034385 m!7273010))

(assert (=> b!6483513 d!2034385))

(declare-fun bs!1645207 () Bool)

(declare-fun d!2034387 () Bool)

(assert (= bs!1645207 (and d!2034387 d!2034369)))

(declare-fun lambda!358852 () Int)

(assert (=> bs!1645207 (= (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387743) (= lambda!358852 lambda!358843))))

(declare-fun bs!1645208 () Bool)

(assert (= bs!1645208 (and d!2034387 b!6483504)))

(assert (=> bs!1645208 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358749))))

(declare-fun bs!1645209 () Bool)

(assert (= bs!1645209 (and d!2034387 b!6484632)))

(assert (=> bs!1645209 (not (= lambda!358852 lambda!358846))))

(declare-fun bs!1645210 () Bool)

(assert (= bs!1645210 (and d!2034387 b!6484232)))

(assert (=> bs!1645210 (not (= lambda!358852 lambda!358811))))

(declare-fun bs!1645211 () Bool)

(assert (= bs!1645211 (and d!2034387 d!2034339)))

(assert (=> bs!1645211 (not (= lambda!358852 lambda!358841))))

(declare-fun bs!1645212 () Bool)

(assert (= bs!1645212 (and d!2034387 d!2034377)))

(assert (=> bs!1645212 (= (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387743) (= lambda!358852 lambda!358844))))

(declare-fun bs!1645213 () Bool)

(assert (= bs!1645213 (and d!2034387 d!2034319)))

(assert (=> bs!1645213 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358837))))

(declare-fun bs!1645214 () Bool)

(assert (= bs!1645214 (and d!2034387 d!2034335)))

(assert (=> bs!1645214 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358839))))

(declare-fun bs!1645215 () Bool)

(assert (= bs!1645215 (and d!2034387 b!6483513)))

(assert (=> bs!1645215 (= (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387743) (= lambda!358852 lambda!358751))))

(assert (=> bs!1645215 (not (= lambda!358852 lambda!358752))))

(assert (=> bs!1645215 (not (= lambda!358852 lambda!358753))))

(declare-fun bs!1645216 () Bool)

(assert (= bs!1645216 (and d!2034387 b!6484416)))

(assert (=> bs!1645216 (not (= lambda!358852 lambda!358824))))

(assert (=> bs!1645212 (not (= lambda!358852 lambda!358845))))

(assert (=> bs!1645213 (not (= lambda!358852 lambda!358838))))

(declare-fun bs!1645217 () Bool)

(assert (= bs!1645217 (and d!2034387 b!6484225)))

(assert (=> bs!1645217 (not (= lambda!358852 lambda!358810))))

(assert (=> bs!1645208 (not (= lambda!358852 lambda!358750))))

(declare-fun bs!1645218 () Bool)

(assert (= bs!1645218 (and d!2034387 b!6484409)))

(assert (=> bs!1645218 (not (= lambda!358852 lambda!358822))))

(declare-fun bs!1645219 () Bool)

(assert (= bs!1645219 (and d!2034387 d!2034309)))

(assert (=> bs!1645219 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358832))))

(assert (=> bs!1645211 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) lt!2387743) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358840))))

(declare-fun bs!1645220 () Bool)

(assert (= bs!1645220 (and d!2034387 b!6483529)))

(assert (=> bs!1645220 (not (= lambda!358852 lambda!358747))))

(declare-fun bs!1645221 () Bool)

(assert (= bs!1645221 (and d!2034387 b!6484639)))

(assert (=> bs!1645221 (not (= lambda!358852 lambda!358847))))

(assert (=> bs!1645220 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (regOne!33238 r!7292)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) (regTwo!33238 r!7292))) (= lambda!358852 lambda!358746))))

(assert (=> d!2034387 true))

(assert (=> d!2034387 true))

(declare-fun lambda!358853 () Int)

(assert (=> bs!1645207 (not (= lambda!358853 lambda!358843))))

(assert (=> bs!1645208 (not (= lambda!358853 lambda!358749))))

(assert (=> bs!1645209 (= (and (= (reg!16692 (regOne!33238 r!7292)) (reg!16692 lt!2387743)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387743)) (= lambda!358853 lambda!358846))))

(assert (=> bs!1645210 (not (= lambda!358853 lambda!358811))))

(assert (=> bs!1645211 (not (= lambda!358853 lambda!358841))))

(assert (=> bs!1645212 (not (= lambda!358853 lambda!358844))))

(assert (=> bs!1645213 (not (= lambda!358853 lambda!358837))))

(assert (=> bs!1645214 (not (= lambda!358853 lambda!358839))))

(assert (=> bs!1645215 (not (= lambda!358853 lambda!358751))))

(assert (=> bs!1645215 (= (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387743) (= lambda!358853 lambda!358752))))

(assert (=> bs!1645215 (not (= lambda!358853 lambda!358753))))

(assert (=> bs!1645216 (not (= lambda!358853 lambda!358824))))

(assert (=> bs!1645212 (not (= lambda!358853 lambda!358845))))

(assert (=> bs!1645213 (not (= lambda!358853 lambda!358838))))

(assert (=> bs!1645217 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (reg!16692 lt!2387730)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) lt!2387730)) (= lambda!358853 lambda!358810))))

(assert (=> bs!1645208 (not (= lambda!358853 lambda!358750))))

(declare-fun bs!1645222 () Bool)

(assert (= bs!1645222 d!2034387))

(assert (=> bs!1645222 (not (= lambda!358853 lambda!358852))))

(assert (=> bs!1645218 (= (and (= (_1!36645 lt!2387733) s!2326) (= (reg!16692 (regOne!33238 r!7292)) (reg!16692 r!7292)) (= (Star!16363 (reg!16692 (regOne!33238 r!7292))) r!7292)) (= lambda!358853 lambda!358822))))

(assert (=> bs!1645219 (not (= lambda!358853 lambda!358832))))

(assert (=> bs!1645211 (not (= lambda!358853 lambda!358840))))

(assert (=> bs!1645220 (not (= lambda!358853 lambda!358747))))

(assert (=> bs!1645221 (not (= lambda!358853 lambda!358847))))

(assert (=> bs!1645220 (not (= lambda!358853 lambda!358746))))

(assert (=> d!2034387 true))

(assert (=> d!2034387 true))

(assert (=> d!2034387 (= (Exists!3433 lambda!358852) (Exists!3433 lambda!358853))))

(declare-fun lt!2387989 () Unit!158783)

(declare-fun choose!48108 (Regex!16363 List!65388) Unit!158783)

(assert (=> d!2034387 (= lt!2387989 (choose!48108 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387733)))))

(assert (=> d!2034387 (validRegex!8099 (reg!16692 (regOne!33238 r!7292)))))

(assert (=> d!2034387 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!654 (reg!16692 (regOne!33238 r!7292)) (_1!36645 lt!2387733)) lt!2387989)))

(declare-fun m!7273072 () Bool)

(assert (=> bs!1645222 m!7273072))

(declare-fun m!7273074 () Bool)

(assert (=> bs!1645222 m!7273074))

(declare-fun m!7273076 () Bool)

(assert (=> bs!1645222 m!7273076))

(assert (=> bs!1645222 m!7272184))

(assert (=> b!6483513 d!2034387))

(declare-fun d!2034389 () Bool)

(assert (=> d!2034389 (= (matchR!8546 lt!2387743 (_1!36645 lt!2387733)) (matchRSpec!3464 lt!2387743 (_1!36645 lt!2387733)))))

(declare-fun lt!2387990 () Unit!158783)

(assert (=> d!2034389 (= lt!2387990 (choose!48096 lt!2387743 (_1!36645 lt!2387733)))))

(assert (=> d!2034389 (validRegex!8099 lt!2387743)))

(assert (=> d!2034389 (= (mainMatchTheorem!3464 lt!2387743 (_1!36645 lt!2387733)) lt!2387990)))

(declare-fun bs!1645223 () Bool)

(assert (= bs!1645223 d!2034389))

(assert (=> bs!1645223 m!7271808))

(assert (=> bs!1645223 m!7271818))

(declare-fun m!7273078 () Bool)

(assert (=> bs!1645223 m!7273078))

(assert (=> bs!1645223 m!7272258))

(assert (=> b!6483513 d!2034389))

(declare-fun b!6484655 () Bool)

(declare-fun res!2663034 () Bool)

(declare-fun e!3930274 () Bool)

(assert (=> b!6484655 (=> res!2663034 e!3930274)))

(assert (=> b!6484655 (= res!2663034 (not (isEmpty!37452 (tail!12285 (_2!36645 lt!2387733)))))))

(declare-fun b!6484656 () Bool)

(declare-fun e!3930277 () Bool)

(assert (=> b!6484656 (= e!3930277 (= (head!13200 (_2!36645 lt!2387733)) (c!1187715 (regTwo!33238 r!7292))))))

(declare-fun b!6484657 () Bool)

(declare-fun e!3930271 () Bool)

(assert (=> b!6484657 (= e!3930271 (matchR!8546 (derivativeStep!5059 (regTwo!33238 r!7292) (head!13200 (_2!36645 lt!2387733))) (tail!12285 (_2!36645 lt!2387733))))))

(declare-fun b!6484658 () Bool)

(declare-fun res!2663038 () Bool)

(declare-fun e!3930273 () Bool)

(assert (=> b!6484658 (=> res!2663038 e!3930273)))

(assert (=> b!6484658 (= res!2663038 (not ((_ is ElementMatch!16363) (regTwo!33238 r!7292))))))

(declare-fun e!3930276 () Bool)

(assert (=> b!6484658 (= e!3930276 e!3930273)))

(declare-fun bm!561251 () Bool)

(declare-fun call!561256 () Bool)

(assert (=> bm!561251 (= call!561256 (isEmpty!37452 (_2!36645 lt!2387733)))))

(declare-fun b!6484659 () Bool)

(declare-fun e!3930272 () Bool)

(declare-fun lt!2387991 () Bool)

(assert (=> b!6484659 (= e!3930272 (= lt!2387991 call!561256))))

(declare-fun b!6484660 () Bool)

(assert (=> b!6484660 (= e!3930274 (not (= (head!13200 (_2!36645 lt!2387733)) (c!1187715 (regTwo!33238 r!7292)))))))

(declare-fun b!6484661 () Bool)

(assert (=> b!6484661 (= e!3930271 (nullable!6356 (regTwo!33238 r!7292)))))

(declare-fun b!6484663 () Bool)

(declare-fun res!2663036 () Bool)

(assert (=> b!6484663 (=> (not res!2663036) (not e!3930277))))

(assert (=> b!6484663 (= res!2663036 (isEmpty!37452 (tail!12285 (_2!36645 lt!2387733))))))

(declare-fun b!6484664 () Bool)

(declare-fun res!2663039 () Bool)

(assert (=> b!6484664 (=> (not res!2663039) (not e!3930277))))

(assert (=> b!6484664 (= res!2663039 (not call!561256))))

(declare-fun b!6484665 () Bool)

(declare-fun e!3930275 () Bool)

(assert (=> b!6484665 (= e!3930275 e!3930274)))

(declare-fun res!2663041 () Bool)

(assert (=> b!6484665 (=> res!2663041 e!3930274)))

(assert (=> b!6484665 (= res!2663041 call!561256)))

(declare-fun b!6484666 () Bool)

(assert (=> b!6484666 (= e!3930273 e!3930275)))

(declare-fun res!2663037 () Bool)

(assert (=> b!6484666 (=> (not res!2663037) (not e!3930275))))

(assert (=> b!6484666 (= res!2663037 (not lt!2387991))))

(declare-fun b!6484667 () Bool)

(declare-fun res!2663040 () Bool)

(assert (=> b!6484667 (=> res!2663040 e!3930273)))

(assert (=> b!6484667 (= res!2663040 e!3930277)))

(declare-fun res!2663035 () Bool)

(assert (=> b!6484667 (=> (not res!2663035) (not e!3930277))))

(assert (=> b!6484667 (= res!2663035 lt!2387991)))

(declare-fun b!6484668 () Bool)

(assert (=> b!6484668 (= e!3930272 e!3930276)))

(declare-fun c!1188016 () Bool)

(assert (=> b!6484668 (= c!1188016 ((_ is EmptyLang!16363) (regTwo!33238 r!7292)))))

(declare-fun b!6484662 () Bool)

(assert (=> b!6484662 (= e!3930276 (not lt!2387991))))

(declare-fun d!2034391 () Bool)

(assert (=> d!2034391 e!3930272))

(declare-fun c!1188017 () Bool)

(assert (=> d!2034391 (= c!1188017 ((_ is EmptyExpr!16363) (regTwo!33238 r!7292)))))

(assert (=> d!2034391 (= lt!2387991 e!3930271)))

(declare-fun c!1188018 () Bool)

(assert (=> d!2034391 (= c!1188018 (isEmpty!37452 (_2!36645 lt!2387733)))))

(assert (=> d!2034391 (validRegex!8099 (regTwo!33238 r!7292))))

(assert (=> d!2034391 (= (matchR!8546 (regTwo!33238 r!7292) (_2!36645 lt!2387733)) lt!2387991)))

(assert (= (and d!2034391 c!1188018) b!6484661))

(assert (= (and d!2034391 (not c!1188018)) b!6484657))

(assert (= (and d!2034391 c!1188017) b!6484659))

(assert (= (and d!2034391 (not c!1188017)) b!6484668))

(assert (= (and b!6484668 c!1188016) b!6484662))

(assert (= (and b!6484668 (not c!1188016)) b!6484658))

(assert (= (and b!6484658 (not res!2663038)) b!6484667))

(assert (= (and b!6484667 res!2663035) b!6484664))

(assert (= (and b!6484664 res!2663039) b!6484663))

(assert (= (and b!6484663 res!2663036) b!6484656))

(assert (= (and b!6484667 (not res!2663040)) b!6484666))

(assert (= (and b!6484666 res!2663037) b!6484665))

(assert (= (and b!6484665 (not res!2663041)) b!6484655))

(assert (= (and b!6484655 (not res!2663034)) b!6484660))

(assert (= (or b!6484659 b!6484664 b!6484665) bm!561251))

(declare-fun m!7273080 () Bool)

(assert (=> b!6484656 m!7273080))

(assert (=> b!6484657 m!7273080))

(assert (=> b!6484657 m!7273080))

(declare-fun m!7273082 () Bool)

(assert (=> b!6484657 m!7273082))

(declare-fun m!7273084 () Bool)

(assert (=> b!6484657 m!7273084))

(assert (=> b!6484657 m!7273082))

(assert (=> b!6484657 m!7273084))

(declare-fun m!7273086 () Bool)

(assert (=> b!6484657 m!7273086))

(declare-fun m!7273088 () Bool)

(assert (=> d!2034391 m!7273088))

(assert (=> d!2034391 m!7272326))

(assert (=> b!6484660 m!7273080))

(assert (=> bm!561251 m!7273088))

(assert (=> b!6484655 m!7273084))

(assert (=> b!6484655 m!7273084))

(declare-fun m!7273090 () Bool)

(assert (=> b!6484655 m!7273090))

(assert (=> b!6484663 m!7273084))

(assert (=> b!6484663 m!7273084))

(assert (=> b!6484663 m!7273090))

(declare-fun m!7273092 () Bool)

(assert (=> b!6484661 m!7273092))

(assert (=> b!6483510 d!2034391))

(declare-fun d!2034393 () Bool)

(declare-fun c!1188019 () Bool)

(assert (=> d!2034393 (= c!1188019 (isEmpty!37452 (t!379014 s!2326)))))

(declare-fun e!3930278 () Bool)

(assert (=> d!2034393 (= (matchZipper!2375 lt!2387736 (t!379014 s!2326)) e!3930278)))

(declare-fun b!6484669 () Bool)

(assert (=> b!6484669 (= e!3930278 (nullableZipper!2120 lt!2387736))))

(declare-fun b!6484670 () Bool)

(assert (=> b!6484670 (= e!3930278 (matchZipper!2375 (derivationStepZipper!2329 lt!2387736 (head!13200 (t!379014 s!2326))) (tail!12285 (t!379014 s!2326))))))

(assert (= (and d!2034393 c!1188019) b!6484669))

(assert (= (and d!2034393 (not c!1188019)) b!6484670))

(assert (=> d!2034393 m!7272892))

(declare-fun m!7273094 () Bool)

(assert (=> b!6484669 m!7273094))

(assert (=> b!6484670 m!7272896))

(assert (=> b!6484670 m!7272896))

(declare-fun m!7273096 () Bool)

(assert (=> b!6484670 m!7273096))

(assert (=> b!6484670 m!7272900))

(assert (=> b!6484670 m!7273096))

(assert (=> b!6484670 m!7272900))

(declare-fun m!7273098 () Bool)

(assert (=> b!6484670 m!7273098))

(assert (=> b!6483509 d!2034393))

(declare-fun d!2034395 () Bool)

(assert (=> d!2034395 (= (flatMap!1868 lt!2387757 lambda!358748) (choose!48084 lt!2387757 lambda!358748))))

(declare-fun bs!1645224 () Bool)

(assert (= bs!1645224 d!2034395))

(declare-fun m!7273100 () Bool)

(assert (=> bs!1645224 m!7273100))

(assert (=> b!6483531 d!2034395))

(declare-fun b!6484671 () Bool)

(declare-fun e!3930279 () (InoxSet Context!11494))

(assert (=> b!6484671 (= e!3930279 ((as const (Array Context!11494 Bool)) false))))

(declare-fun bm!561252 () Bool)

(declare-fun call!561257 () (InoxSet Context!11494))

(assert (=> bm!561252 (= call!561257 (derivationStepZipperDown!1611 (h!71713 (exprs!6247 lt!2387754)) (Context!11495 (t!379015 (exprs!6247 lt!2387754))) (h!71712 s!2326)))))

(declare-fun b!6484672 () Bool)

(declare-fun e!3930280 () (InoxSet Context!11494))

(assert (=> b!6484672 (= e!3930280 ((_ map or) call!561257 (derivationStepZipperUp!1537 (Context!11495 (t!379015 (exprs!6247 lt!2387754))) (h!71712 s!2326))))))

(declare-fun b!6484673 () Bool)

(assert (=> b!6484673 (= e!3930280 e!3930279)))

(declare-fun c!1188020 () Bool)

(assert (=> b!6484673 (= c!1188020 ((_ is Cons!65265) (exprs!6247 lt!2387754)))))

(declare-fun b!6484675 () Bool)

(declare-fun e!3930281 () Bool)

(assert (=> b!6484675 (= e!3930281 (nullable!6356 (h!71713 (exprs!6247 lt!2387754))))))

(declare-fun d!2034397 () Bool)

(declare-fun c!1188021 () Bool)

(assert (=> d!2034397 (= c!1188021 e!3930281)))

(declare-fun res!2663042 () Bool)

(assert (=> d!2034397 (=> (not res!2663042) (not e!3930281))))

(assert (=> d!2034397 (= res!2663042 ((_ is Cons!65265) (exprs!6247 lt!2387754)))))

(assert (=> d!2034397 (= (derivationStepZipperUp!1537 lt!2387754 (h!71712 s!2326)) e!3930280)))

(declare-fun b!6484674 () Bool)

(assert (=> b!6484674 (= e!3930279 call!561257)))

(assert (= (and d!2034397 res!2663042) b!6484675))

(assert (= (and d!2034397 c!1188021) b!6484672))

(assert (= (and d!2034397 (not c!1188021)) b!6484673))

(assert (= (and b!6484673 c!1188020) b!6484674))

(assert (= (and b!6484673 (not c!1188020)) b!6484671))

(assert (= (or b!6484672 b!6484674) bm!561252))

(declare-fun m!7273102 () Bool)

(assert (=> bm!561252 m!7273102))

(declare-fun m!7273104 () Bool)

(assert (=> b!6484672 m!7273104))

(declare-fun m!7273106 () Bool)

(assert (=> b!6484675 m!7273106))

(assert (=> b!6483531 d!2034397))

(declare-fun d!2034399 () Bool)

(assert (=> d!2034399 (= (flatMap!1868 lt!2387757 lambda!358748) (dynLambda!25922 lambda!358748 lt!2387754))))

(declare-fun lt!2387992 () Unit!158783)

(assert (=> d!2034399 (= lt!2387992 (choose!48085 lt!2387757 lt!2387754 lambda!358748))))

(assert (=> d!2034399 (= lt!2387757 (store ((as const (Array Context!11494 Bool)) false) lt!2387754 true))))

(assert (=> d!2034399 (= (lemmaFlatMapOnSingletonSet!1394 lt!2387757 lt!2387754 lambda!358748) lt!2387992)))

(declare-fun b_lambda!245559 () Bool)

(assert (=> (not b_lambda!245559) (not d!2034399)))

(declare-fun bs!1645225 () Bool)

(assert (= bs!1645225 d!2034399))

(assert (=> bs!1645225 m!7271780))

(declare-fun m!7273108 () Bool)

(assert (=> bs!1645225 m!7273108))

(declare-fun m!7273110 () Bool)

(assert (=> bs!1645225 m!7273110))

(assert (=> bs!1645225 m!7271782))

(assert (=> b!6483531 d!2034399))

(declare-fun bs!1645226 () Bool)

(declare-fun d!2034401 () Bool)

(assert (= bs!1645226 (and d!2034401 b!6483517)))

(declare-fun lambda!358856 () Int)

(assert (=> bs!1645226 (= lambda!358856 lambda!358748)))

(assert (=> d!2034401 true))

(assert (=> d!2034401 (= (derivationStepZipper!2329 lt!2387757 (h!71712 s!2326)) (flatMap!1868 lt!2387757 lambda!358856))))

(declare-fun bs!1645227 () Bool)

(assert (= bs!1645227 d!2034401))

(declare-fun m!7273112 () Bool)

(assert (=> bs!1645227 m!7273112))

(assert (=> b!6483531 d!2034401))

(declare-fun condSetEmpty!44175 () Bool)

(assert (=> setNonEmpty!44169 (= condSetEmpty!44175 (= setRest!44169 ((as const (Array Context!11494 Bool)) false)))))

(declare-fun setRes!44175 () Bool)

(assert (=> setNonEmpty!44169 (= tp!1795830 setRes!44175)))

(declare-fun setIsEmpty!44175 () Bool)

(assert (=> setIsEmpty!44175 setRes!44175))

(declare-fun setElem!44175 () Context!11494)

(declare-fun tp!1795899 () Bool)

(declare-fun setNonEmpty!44175 () Bool)

(declare-fun e!3930284 () Bool)

(assert (=> setNonEmpty!44175 (= setRes!44175 (and tp!1795899 (inv!84154 setElem!44175) e!3930284))))

(declare-fun setRest!44175 () (InoxSet Context!11494))

(assert (=> setNonEmpty!44175 (= setRest!44169 ((_ map or) (store ((as const (Array Context!11494 Bool)) false) setElem!44175 true) setRest!44175))))

(declare-fun b!6484682 () Bool)

(declare-fun tp!1795900 () Bool)

(assert (=> b!6484682 (= e!3930284 tp!1795900)))

(assert (= (and setNonEmpty!44169 condSetEmpty!44175) setIsEmpty!44175))

(assert (= (and setNonEmpty!44169 (not condSetEmpty!44175)) setNonEmpty!44175))

(assert (= setNonEmpty!44175 b!6484682))

(declare-fun m!7273114 () Bool)

(assert (=> setNonEmpty!44175 m!7273114))

(declare-fun b!6484690 () Bool)

(declare-fun e!3930290 () Bool)

(declare-fun tp!1795905 () Bool)

(assert (=> b!6484690 (= e!3930290 tp!1795905)))

(declare-fun b!6484689 () Bool)

(declare-fun e!3930289 () Bool)

(declare-fun tp!1795906 () Bool)

(assert (=> b!6484689 (= e!3930289 (and (inv!84154 (h!71714 (t!379016 zl!343))) e!3930290 tp!1795906))))

(assert (=> b!6483537 (= tp!1795831 e!3930289)))

(assert (= b!6484689 b!6484690))

(assert (= (and b!6483537 ((_ is Cons!65266) (t!379016 zl!343))) b!6484689))

(declare-fun m!7273116 () Bool)

(assert (=> b!6484689 m!7273116))

(declare-fun b!6484704 () Bool)

(declare-fun e!3930293 () Bool)

(declare-fun tp!1795919 () Bool)

(declare-fun tp!1795918 () Bool)

(assert (=> b!6484704 (= e!3930293 (and tp!1795919 tp!1795918))))

(declare-fun b!6484702 () Bool)

(declare-fun tp!1795921 () Bool)

(declare-fun tp!1795917 () Bool)

(assert (=> b!6484702 (= e!3930293 (and tp!1795921 tp!1795917))))

(declare-fun b!6484703 () Bool)

(declare-fun tp!1795920 () Bool)

(assert (=> b!6484703 (= e!3930293 tp!1795920)))

(assert (=> b!6483507 (= tp!1795836 e!3930293)))

(declare-fun b!6484701 () Bool)

(assert (=> b!6484701 (= e!3930293 tp_is_empty!41979)))

(assert (= (and b!6483507 ((_ is ElementMatch!16363) (reg!16692 r!7292))) b!6484701))

(assert (= (and b!6483507 ((_ is Concat!25208) (reg!16692 r!7292))) b!6484702))

(assert (= (and b!6483507 ((_ is Star!16363) (reg!16692 r!7292))) b!6484703))

(assert (= (and b!6483507 ((_ is Union!16363) (reg!16692 r!7292))) b!6484704))

(declare-fun b!6484709 () Bool)

(declare-fun e!3930296 () Bool)

(declare-fun tp!1795926 () Bool)

(declare-fun tp!1795927 () Bool)

(assert (=> b!6484709 (= e!3930296 (and tp!1795926 tp!1795927))))

(assert (=> b!6483501 (= tp!1795834 e!3930296)))

(assert (= (and b!6483501 ((_ is Cons!65265) (exprs!6247 setElem!44169))) b!6484709))

(declare-fun b!6484714 () Bool)

(declare-fun e!3930299 () Bool)

(declare-fun tp!1795930 () Bool)

(assert (=> b!6484714 (= e!3930299 (and tp_is_empty!41979 tp!1795930))))

(assert (=> b!6483528 (= tp!1795832 e!3930299)))

(assert (= (and b!6483528 ((_ is Cons!65264) (t!379014 s!2326))) b!6484714))

(declare-fun b!6484715 () Bool)

(declare-fun e!3930300 () Bool)

(declare-fun tp!1795931 () Bool)

(declare-fun tp!1795932 () Bool)

(assert (=> b!6484715 (= e!3930300 (and tp!1795931 tp!1795932))))

(assert (=> b!6483530 (= tp!1795828 e!3930300)))

(assert (= (and b!6483530 ((_ is Cons!65265) (exprs!6247 (h!71714 zl!343)))) b!6484715))

(declare-fun b!6484719 () Bool)

(declare-fun e!3930301 () Bool)

(declare-fun tp!1795935 () Bool)

(declare-fun tp!1795934 () Bool)

(assert (=> b!6484719 (= e!3930301 (and tp!1795935 tp!1795934))))

(declare-fun b!6484717 () Bool)

(declare-fun tp!1795937 () Bool)

(declare-fun tp!1795933 () Bool)

(assert (=> b!6484717 (= e!3930301 (and tp!1795937 tp!1795933))))

(declare-fun b!6484718 () Bool)

(declare-fun tp!1795936 () Bool)

(assert (=> b!6484718 (= e!3930301 tp!1795936)))

(assert (=> b!6483511 (= tp!1795827 e!3930301)))

(declare-fun b!6484716 () Bool)

(assert (=> b!6484716 (= e!3930301 tp_is_empty!41979)))

(assert (= (and b!6483511 ((_ is ElementMatch!16363) (regOne!33239 r!7292))) b!6484716))

(assert (= (and b!6483511 ((_ is Concat!25208) (regOne!33239 r!7292))) b!6484717))

(assert (= (and b!6483511 ((_ is Star!16363) (regOne!33239 r!7292))) b!6484718))

(assert (= (and b!6483511 ((_ is Union!16363) (regOne!33239 r!7292))) b!6484719))

(declare-fun b!6484723 () Bool)

(declare-fun e!3930302 () Bool)

(declare-fun tp!1795940 () Bool)

(declare-fun tp!1795939 () Bool)

(assert (=> b!6484723 (= e!3930302 (and tp!1795940 tp!1795939))))

(declare-fun b!6484721 () Bool)

(declare-fun tp!1795942 () Bool)

(declare-fun tp!1795938 () Bool)

(assert (=> b!6484721 (= e!3930302 (and tp!1795942 tp!1795938))))

(declare-fun b!6484722 () Bool)

(declare-fun tp!1795941 () Bool)

(assert (=> b!6484722 (= e!3930302 tp!1795941)))

(assert (=> b!6483511 (= tp!1795829 e!3930302)))

(declare-fun b!6484720 () Bool)

(assert (=> b!6484720 (= e!3930302 tp_is_empty!41979)))

(assert (= (and b!6483511 ((_ is ElementMatch!16363) (regTwo!33239 r!7292))) b!6484720))

(assert (= (and b!6483511 ((_ is Concat!25208) (regTwo!33239 r!7292))) b!6484721))

(assert (= (and b!6483511 ((_ is Star!16363) (regTwo!33239 r!7292))) b!6484722))

(assert (= (and b!6483511 ((_ is Union!16363) (regTwo!33239 r!7292))) b!6484723))

(declare-fun b!6484727 () Bool)

(declare-fun e!3930303 () Bool)

(declare-fun tp!1795945 () Bool)

(declare-fun tp!1795944 () Bool)

(assert (=> b!6484727 (= e!3930303 (and tp!1795945 tp!1795944))))

(declare-fun b!6484725 () Bool)

(declare-fun tp!1795947 () Bool)

(declare-fun tp!1795943 () Bool)

(assert (=> b!6484725 (= e!3930303 (and tp!1795947 tp!1795943))))

(declare-fun b!6484726 () Bool)

(declare-fun tp!1795946 () Bool)

(assert (=> b!6484726 (= e!3930303 tp!1795946)))

(assert (=> b!6483521 (= tp!1795833 e!3930303)))

(declare-fun b!6484724 () Bool)

(assert (=> b!6484724 (= e!3930303 tp_is_empty!41979)))

(assert (= (and b!6483521 ((_ is ElementMatch!16363) (regOne!33238 r!7292))) b!6484724))

(assert (= (and b!6483521 ((_ is Concat!25208) (regOne!33238 r!7292))) b!6484725))

(assert (= (and b!6483521 ((_ is Star!16363) (regOne!33238 r!7292))) b!6484726))

(assert (= (and b!6483521 ((_ is Union!16363) (regOne!33238 r!7292))) b!6484727))

(declare-fun b!6484731 () Bool)

(declare-fun e!3930304 () Bool)

(declare-fun tp!1795950 () Bool)

(declare-fun tp!1795949 () Bool)

(assert (=> b!6484731 (= e!3930304 (and tp!1795950 tp!1795949))))

(declare-fun b!6484729 () Bool)

(declare-fun tp!1795952 () Bool)

(declare-fun tp!1795948 () Bool)

(assert (=> b!6484729 (= e!3930304 (and tp!1795952 tp!1795948))))

(declare-fun b!6484730 () Bool)

(declare-fun tp!1795951 () Bool)

(assert (=> b!6484730 (= e!3930304 tp!1795951)))

(assert (=> b!6483521 (= tp!1795835 e!3930304)))

(declare-fun b!6484728 () Bool)

(assert (=> b!6484728 (= e!3930304 tp_is_empty!41979)))

(assert (= (and b!6483521 ((_ is ElementMatch!16363) (regTwo!33238 r!7292))) b!6484728))

(assert (= (and b!6483521 ((_ is Concat!25208) (regTwo!33238 r!7292))) b!6484729))

(assert (= (and b!6483521 ((_ is Star!16363) (regTwo!33238 r!7292))) b!6484730))

(assert (= (and b!6483521 ((_ is Union!16363) (regTwo!33238 r!7292))) b!6484731))

(declare-fun b_lambda!245561 () Bool)

(assert (= b_lambda!245541 (or b!6483517 b_lambda!245561)))

(declare-fun bs!1645228 () Bool)

(declare-fun d!2034403 () Bool)

(assert (= bs!1645228 (and d!2034403 b!6483517)))

(assert (=> bs!1645228 (= (dynLambda!25922 lambda!358748 lt!2387737) (derivationStepZipperUp!1537 lt!2387737 (h!71712 s!2326)))))

(assert (=> bs!1645228 m!7271912))

(assert (=> d!2034221 d!2034403))

(declare-fun b_lambda!245563 () Bool)

(assert (= b_lambda!245543 (or b!6483517 b_lambda!245563)))

(declare-fun bs!1645229 () Bool)

(declare-fun d!2034405 () Bool)

(assert (= bs!1645229 (and d!2034405 b!6483517)))

(assert (=> bs!1645229 (= (dynLambda!25922 lambda!358748 lt!2387750) (derivationStepZipperUp!1537 lt!2387750 (h!71712 s!2326)))))

(assert (=> bs!1645229 m!7271914))

(assert (=> d!2034225 d!2034405))

(declare-fun b_lambda!245565 () Bool)

(assert (= b_lambda!245559 (or b!6483517 b_lambda!245565)))

(declare-fun bs!1645230 () Bool)

(declare-fun d!2034407 () Bool)

(assert (= bs!1645230 (and d!2034407 b!6483517)))

(assert (=> bs!1645230 (= (dynLambda!25922 lambda!358748 lt!2387754) (derivationStepZipperUp!1537 lt!2387754 (h!71712 s!2326)))))

(assert (=> bs!1645230 m!7271778))

(assert (=> d!2034399 d!2034407))

(declare-fun b_lambda!245567 () Bool)

(assert (= b_lambda!245537 (or b!6483517 b_lambda!245567)))

(declare-fun bs!1645231 () Bool)

(declare-fun d!2034409 () Bool)

(assert (= bs!1645231 (and d!2034409 b!6483517)))

(assert (=> bs!1645231 (= (dynLambda!25922 lambda!358748 (h!71714 zl!343)) (derivationStepZipperUp!1537 (h!71714 zl!343) (h!71712 s!2326)))))

(assert (=> bs!1645231 m!7271874))

(assert (=> d!2034057 d!2034409))

(check-sat (not d!2034055) (not d!2034177) (not b!6484575) (not b!6484657) (not d!2034393) (not b!6484242) tp_is_empty!41979 (not b!6484164) (not b!6483949) (not b!6484353) (not bm!561241) (not b!6484144) (not d!2034123) (not b!6484233) (not b!6484608) (not b!6484420) (not b!6484627) (not b!6483996) (not bm!561228) (not b!6484730) (not b!6484002) (not d!2034039) (not bm!561249) (not b!6484590) (not b_lambda!245561) (not b!6484510) (not b!6484729) (not bm!561158) (not d!2034401) (not b!6484236) (not b!6484291) (not b!6484723) (not b!6484355) (not d!2034329) (not b!6484660) (not bm!561222) (not b!6484570) (not b!6484031) (not b!6484573) (not b!6484309) (not b!6484281) (not d!2034217) (not b!6484274) (not b!6484356) (not d!2034321) (not d!2034307) (not d!2034335) (not b!6484165) (not b!6484714) (not b!6484564) (not d!2034223) (not b!6483840) (not b!6484358) (not b!6484117) (not bm!561195) (not b!6483941) (not b!6484624) (not b!6484655) (not d!2034151) (not b!6483938) (not bm!561194) (not b!6483983) (not d!2034175) (not b!6483935) (not bs!1645231) (not b!6483832) (not b!6484001) (not b!6484722) (not bm!561231) (not b!6484064) (not d!2034105) (not b!6484670) (not d!2034375) (not d!2034337) (not b!6484618) (not d!2034327) (not b!6483984) (not b!6484586) (not b!6484628) (not b!6484240) (not d!2034395) (not b!6484569) (not b!6484589) (not b!6483934) (not d!2034359) (not d!2034365) (not b!6484574) (not b!6483817) (not b!6484718) (not bm!561187) (not b!6484230) (not b!6483988) (not d!2034353) (not bm!561208) (not d!2034141) (not b!6484119) (not d!2034369) (not bm!561198) (not b!6484567) (not bm!561190) (not bm!561250) (not b!6484419) (not d!2034339) (not d!2034325) (not d!2034207) (not b!6484663) (not d!2034371) (not d!2034237) (not b!6484401) (not b!6484424) (not d!2034225) (not bm!561213) (not d!2034261) (not bm!561207) (not b!6483982) (not bm!561191) (not b!6484727) (not b!6484414) (not bm!561252) (not b!6484509) (not b!6484588) (not b!6483835) (not b!6484640) (not d!2034041) (not b!6484360) (not d!2034331) (not b!6484032) (not d!2034099) (not b!6484138) (not d!2034259) (not d!2034091) (not b!6484689) (not d!2034323) (not b!6484081) (not b!6484423) (not b!6484672) (not d!2034189) (not d!2034385) (not d!2034165) (not bm!561248) (not d!2034389) (not b!6484637) (not d!2034187) (not b!6484725) (not d!2034347) (not d!2034309) (not d!2034357) (not d!2034229) (not setNonEmpty!44175) (not b!6484610) (not d!2034133) (not b!6484137) (not b!6484125) (not b!6484709) (not b!6484621) (not bm!561242) (not b!6484690) (not d!2034057) (not d!2034391) (not b!6484623) (not b!6484563) (not b!6484593) (not b!6484426) (not b!6484675) (not b!6484661) (not b!6483994) (not b!6484594) (not d!2034173) (not b!6484141) (not d!2034333) (not bs!1645229) (not b!6484717) (not b!6484704) (not bm!561223) (not b!6483989) (not bm!561224) (not b!6484642) (not b!6484682) (not b!6484726) (not b!6484669) (not bm!561192) (not b_lambda!245567) (not b!6484615) (not b!6484122) (not b!6484721) (not d!2034171) (not b!6483986) (not b!6484275) (not d!2034343) (not d!2034381) (not b!6484629) (not b!6484596) (not bs!1645228) (not d!2034319) (not d!2034377) (not b!6484585) (not d!2034129) (not b!6484288) (not b!6484614) (not b!6484715) (not b_lambda!245565) (not bm!561238) (not d!2034179) (not b!6484135) (not b!6484136) (not b!6484511) (not d!2034107) (not d!2034191) (not b!6483981) (not b!6483997) (not bm!561186) (not d!2034379) (not b!6484505) (not b!6484606) (not d!2034305) (not b!6484004) (not d!2034221) (not bm!561251) (not b!6484604) (not d!2034349) (not d!2034373) (not b!6483998) (not b!6484278) (not b!6483933) (not b!6484703) (not d!2034219) (not b!6484503) (not b!6484134) (not bs!1645230) (not bm!561239) (not b!6484417) (not b!6484234) (not bm!561243) (not b!6483820) (not b!6484566) (not b!6483681) (not d!2034345) (not d!2034205) (not b!6484731) (not b!6484273) (not b!6484239) (not b!6484719) (not b!6484643) (not b!6484279) (not d!2034355) (not b!6483939) (not d!2034257) (not d!2034399) (not b!6484142) (not b!6484619) (not b!6484123) (not b!6484082) (not d!2034363) (not b!6484605) (not b!6484359) (not b!6484702) (not b!6483799) (not b!6484133) (not d!2034231) (not d!2034387) (not b!6484611) (not b!6483684) (not d!2034361) (not b!6484418) (not b!6484607) (not b_lambda!245563) (not b!6484235) (not bm!561229) (not d!2034351) (not b!6484306) (not bm!561214) (not b!6484506) (not b!6484656) (not b!6484565) (not b!6484118) (not b!6484354) (not d!2034125))
(check-sat)
