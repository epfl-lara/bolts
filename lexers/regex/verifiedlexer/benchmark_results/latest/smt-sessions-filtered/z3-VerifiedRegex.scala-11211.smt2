; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586116 () Bool)

(assert start!586116)

(declare-fun b!5677537 () Bool)

(assert (=> b!5677537 true))

(assert (=> b!5677537 true))

(declare-fun lambda!305852 () Int)

(declare-fun lambda!305851 () Int)

(assert (=> b!5677537 (not (= lambda!305852 lambda!305851))))

(assert (=> b!5677537 true))

(assert (=> b!5677537 true))

(declare-fun b!5677532 () Bool)

(assert (=> b!5677532 true))

(declare-fun b!5677523 () Bool)

(declare-fun res!2399244 () Bool)

(declare-fun e!3494538 () Bool)

(assert (=> b!5677523 (=> res!2399244 e!3494538)))

(declare-datatypes ((C!31608 0))(
  ( (C!31609 (val!25506 Int)) )
))
(declare-datatypes ((Regex!15669 0))(
  ( (ElementMatch!15669 (c!998875 C!31608)) (Concat!24514 (regOne!31850 Regex!15669) (regTwo!31850 Regex!15669)) (EmptyExpr!15669) (Star!15669 (reg!15998 Regex!15669)) (EmptyLang!15669) (Union!15669 (regOne!31851 Regex!15669) (regTwo!31851 Regex!15669)) )
))
(declare-fun r!7292 () Regex!15669)

(declare-datatypes ((List!63306 0))(
  ( (Nil!63182) (Cons!63182 (h!69630 Regex!15669) (t!376616 List!63306)) )
))
(declare-datatypes ((Context!10106 0))(
  ( (Context!10107 (exprs!5553 List!63306)) )
))
(declare-datatypes ((List!63307 0))(
  ( (Nil!63183) (Cons!63183 (h!69631 Context!10106) (t!376617 List!63307)) )
))
(declare-fun zl!343 () List!63307)

(declare-fun generalisedConcat!1284 (List!63306) Regex!15669)

(assert (=> b!5677523 (= res!2399244 (not (= r!7292 (generalisedConcat!1284 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5677524 () Bool)

(declare-fun e!3494546 () Bool)

(declare-fun tp!1574424 () Bool)

(declare-fun tp!1574427 () Bool)

(assert (=> b!5677524 (= e!3494546 (and tp!1574424 tp!1574427))))

(declare-fun setRes!37967 () Bool)

(declare-fun setElem!37967 () Context!10106)

(declare-fun e!3494544 () Bool)

(declare-fun tp!1574428 () Bool)

(declare-fun setNonEmpty!37967 () Bool)

(declare-fun inv!82419 (Context!10106) Bool)

(assert (=> setNonEmpty!37967 (= setRes!37967 (and tp!1574428 (inv!82419 setElem!37967) e!3494544))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10106))

(declare-fun setRest!37967 () (InoxSet Context!10106))

(assert (=> setNonEmpty!37967 (= z!1189 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) setElem!37967 true) setRest!37967))))

(declare-fun b!5677525 () Bool)

(declare-fun res!2399239 () Bool)

(assert (=> b!5677525 (=> res!2399239 e!3494538)))

(get-info :version)

(assert (=> b!5677525 (= res!2399239 (or ((_ is EmptyExpr!15669) r!7292) ((_ is EmptyLang!15669) r!7292) ((_ is ElementMatch!15669) r!7292) ((_ is Union!15669) r!7292) (not ((_ is Concat!24514) r!7292))))))

(declare-fun b!5677526 () Bool)

(declare-fun e!3494548 () Bool)

(declare-fun e!3494540 () Bool)

(assert (=> b!5677526 (= e!3494548 e!3494540)))

(declare-fun res!2399240 () Bool)

(assert (=> b!5677526 (=> res!2399240 e!3494540)))

(declare-fun lt!2269813 () (InoxSet Context!10106))

(declare-fun lt!2269821 () (InoxSet Context!10106))

(assert (=> b!5677526 (= res!2399240 (not (= lt!2269813 lt!2269821)))))

(declare-datatypes ((List!63308 0))(
  ( (Nil!63184) (Cons!63184 (h!69632 C!31608) (t!376618 List!63308)) )
))
(declare-fun s!2326 () List!63308)

(declare-fun lt!2269825 () List!63306)

(declare-fun derivationStepZipperDown!1011 (Regex!15669 Context!10106 C!31608) (InoxSet Context!10106))

(assert (=> b!5677526 (= lt!2269821 (derivationStepZipperDown!1011 (reg!15998 (regOne!31850 r!7292)) (Context!10107 lt!2269825) (h!69632 s!2326)))))

(assert (=> b!5677526 (= lt!2269825 (Cons!63182 (Star!15669 (reg!15998 (regOne!31850 r!7292))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677527 () Bool)

(declare-fun tp!1574430 () Bool)

(assert (=> b!5677527 (= e!3494546 tp!1574430)))

(declare-fun b!5677528 () Bool)

(declare-fun lt!2269814 () (InoxSet Context!10106))

(declare-fun derivationStepZipper!1754 ((InoxSet Context!10106) C!31608) (InoxSet Context!10106))

(assert (=> b!5677528 (= e!3494540 (= (derivationStepZipper!1754 lt!2269814 (h!69632 s!2326)) lt!2269821))))

(declare-fun lt!2269809 () Context!10106)

(declare-fun lambda!305853 () Int)

(declare-fun flatMap!1282 ((InoxSet Context!10106) Int) (InoxSet Context!10106))

(declare-fun derivationStepZipperUp!937 (Context!10106 C!31608) (InoxSet Context!10106))

(assert (=> b!5677528 (= (flatMap!1282 lt!2269814 lambda!305853) (derivationStepZipperUp!937 lt!2269809 (h!69632 s!2326)))))

(declare-datatypes ((Unit!156208 0))(
  ( (Unit!156209) )
))
(declare-fun lt!2269822 () Unit!156208)

(declare-fun lemmaFlatMapOnSingletonSet!814 ((InoxSet Context!10106) Context!10106 Int) Unit!156208)

(assert (=> b!5677528 (= lt!2269822 (lemmaFlatMapOnSingletonSet!814 lt!2269814 lt!2269809 lambda!305853))))

(declare-fun lt!2269820 () (InoxSet Context!10106))

(assert (=> b!5677528 (= lt!2269820 (derivationStepZipperUp!937 lt!2269809 (h!69632 s!2326)))))

(assert (=> b!5677528 (= lt!2269814 (store ((as const (Array Context!10106 Bool)) false) lt!2269809 true))))

(assert (=> b!5677528 (= lt!2269809 (Context!10107 (Cons!63182 (reg!15998 (regOne!31850 r!7292)) lt!2269825)))))

(declare-fun b!5677529 () Bool)

(declare-fun tp_is_empty!40591 () Bool)

(assert (=> b!5677529 (= e!3494546 tp_is_empty!40591)))

(declare-fun b!5677531 () Bool)

(declare-fun e!3494545 () Bool)

(declare-fun lt!2269816 () (InoxSet Context!10106))

(declare-fun matchZipper!1807 ((InoxSet Context!10106) List!63308) Bool)

(assert (=> b!5677531 (= e!3494545 (matchZipper!1807 lt!2269816 (t!376618 s!2326)))))

(declare-fun e!3494547 () Bool)

(assert (=> b!5677532 (= e!3494547 e!3494548)))

(declare-fun res!2399238 () Bool)

(assert (=> b!5677532 (=> res!2399238 e!3494548)))

(assert (=> b!5677532 (= res!2399238 (or (and ((_ is ElementMatch!15669) (regOne!31850 r!7292)) (= (c!998875 (regOne!31850 r!7292)) (h!69632 s!2326))) ((_ is Union!15669) (regOne!31850 r!7292))))))

(declare-fun lt!2269824 () Unit!156208)

(declare-fun e!3494550 () Unit!156208)

(assert (=> b!5677532 (= lt!2269824 e!3494550)))

(declare-fun c!998874 () Bool)

(declare-fun nullable!5701 (Regex!15669) Bool)

(assert (=> b!5677532 (= c!998874 (nullable!5701 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> b!5677532 (= (flatMap!1282 z!1189 lambda!305853) (derivationStepZipperUp!937 (h!69631 zl!343) (h!69632 s!2326)))))

(declare-fun lt!2269811 () Unit!156208)

(assert (=> b!5677532 (= lt!2269811 (lemmaFlatMapOnSingletonSet!814 z!1189 (h!69631 zl!343) lambda!305853))))

(declare-fun lt!2269823 () Context!10106)

(assert (=> b!5677532 (= lt!2269816 (derivationStepZipperUp!937 lt!2269823 (h!69632 s!2326)))))

(assert (=> b!5677532 (= lt!2269813 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (h!69631 zl!343))) lt!2269823 (h!69632 s!2326)))))

(assert (=> b!5677532 (= lt!2269823 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun lt!2269812 () (InoxSet Context!10106))

(assert (=> b!5677532 (= lt!2269812 (derivationStepZipperUp!937 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))) (h!69632 s!2326)))))

(declare-fun b!5677533 () Bool)

(declare-fun e!3494549 () Bool)

(assert (=> b!5677533 (= e!3494549 (nullable!5701 (regOne!31850 (regOne!31850 r!7292))))))

(declare-fun setIsEmpty!37967 () Bool)

(assert (=> setIsEmpty!37967 setRes!37967))

(declare-fun b!5677534 () Bool)

(declare-fun res!2399246 () Bool)

(assert (=> b!5677534 (=> res!2399246 e!3494548)))

(assert (=> b!5677534 (= res!2399246 (or ((_ is Concat!24514) (regOne!31850 r!7292)) (not ((_ is Star!15669) (regOne!31850 r!7292)))))))

(declare-fun b!5677535 () Bool)

(declare-fun res!2399243 () Bool)

(declare-fun e!3494539 () Bool)

(assert (=> b!5677535 (=> (not res!2399243) (not e!3494539))))

(declare-fun toList!9453 ((InoxSet Context!10106)) List!63307)

(assert (=> b!5677535 (= res!2399243 (= (toList!9453 z!1189) zl!343))))

(declare-fun b!5677536 () Bool)

(declare-fun e!3494542 () Bool)

(declare-fun tp!1574429 () Bool)

(assert (=> b!5677536 (= e!3494542 (and tp_is_empty!40591 tp!1574429))))

(assert (=> b!5677537 (= e!3494538 e!3494547)))

(declare-fun res!2399237 () Bool)

(assert (=> b!5677537 (=> res!2399237 e!3494547)))

(declare-fun lt!2269819 () Bool)

(declare-fun lt!2269815 () Bool)

(assert (=> b!5677537 (= res!2399237 (or (not (= lt!2269815 lt!2269819)) ((_ is Nil!63184) s!2326)))))

(declare-fun Exists!2769 (Int) Bool)

(assert (=> b!5677537 (= (Exists!2769 lambda!305851) (Exists!2769 lambda!305852))))

(declare-fun lt!2269826 () Unit!156208)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1398 (Regex!15669 Regex!15669 List!63308) Unit!156208)

(assert (=> b!5677537 (= lt!2269826 (lemmaExistCutMatchRandMatchRSpecEquivalent!1398 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326))))

(assert (=> b!5677537 (= lt!2269819 (Exists!2769 lambda!305851))))

(declare-datatypes ((tuple2!65532 0))(
  ( (tuple2!65533 (_1!36069 List!63308) (_2!36069 List!63308)) )
))
(declare-datatypes ((Option!15678 0))(
  ( (None!15677) (Some!15677 (v!51726 tuple2!65532)) )
))
(declare-fun isDefined!12381 (Option!15678) Bool)

(declare-fun findConcatSeparation!2092 (Regex!15669 Regex!15669 List!63308 List!63308 List!63308) Option!15678)

(assert (=> b!5677537 (= lt!2269819 (isDefined!12381 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326)))))

(declare-fun lt!2269818 () Unit!156208)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1856 (Regex!15669 Regex!15669 List!63308) Unit!156208)

(assert (=> b!5677537 (= lt!2269818 (lemmaFindConcatSeparationEquivalentToExists!1856 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326))))

(declare-fun b!5677538 () Bool)

(declare-fun tp!1574425 () Bool)

(assert (=> b!5677538 (= e!3494544 tp!1574425)))

(declare-fun b!5677539 () Bool)

(declare-fun res!2399233 () Bool)

(assert (=> b!5677539 (=> res!2399233 e!3494548)))

(assert (=> b!5677539 (= res!2399233 e!3494549)))

(declare-fun res!2399242 () Bool)

(assert (=> b!5677539 (=> (not res!2399242) (not e!3494549))))

(assert (=> b!5677539 (= res!2399242 ((_ is Concat!24514) (regOne!31850 r!7292)))))

(declare-fun b!5677540 () Bool)

(declare-fun res!2399235 () Bool)

(assert (=> b!5677540 (=> res!2399235 e!3494538)))

(assert (=> b!5677540 (= res!2399235 (not ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677541 () Bool)

(declare-fun tp!1574423 () Bool)

(declare-fun tp!1574421 () Bool)

(assert (=> b!5677541 (= e!3494546 (and tp!1574423 tp!1574421))))

(declare-fun b!5677542 () Bool)

(declare-fun res!2399241 () Bool)

(assert (=> b!5677542 (=> res!2399241 e!3494538)))

(declare-fun isEmpty!35033 (List!63307) Bool)

(assert (=> b!5677542 (= res!2399241 (not (isEmpty!35033 (t!376617 zl!343))))))

(declare-fun res!2399236 () Bool)

(assert (=> start!586116 (=> (not res!2399236) (not e!3494539))))

(declare-fun validRegex!7405 (Regex!15669) Bool)

(assert (=> start!586116 (= res!2399236 (validRegex!7405 r!7292))))

(assert (=> start!586116 e!3494539))

(assert (=> start!586116 e!3494546))

(declare-fun condSetEmpty!37967 () Bool)

(assert (=> start!586116 (= condSetEmpty!37967 (= z!1189 ((as const (Array Context!10106 Bool)) false)))))

(assert (=> start!586116 setRes!37967))

(declare-fun e!3494543 () Bool)

(assert (=> start!586116 e!3494543))

(assert (=> start!586116 e!3494542))

(declare-fun b!5677530 () Bool)

(declare-fun res!2399249 () Bool)

(assert (=> b!5677530 (=> res!2399249 e!3494547)))

(declare-fun isEmpty!35034 (List!63306) Bool)

(assert (=> b!5677530 (= res!2399249 (isEmpty!35034 (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677543 () Bool)

(declare-fun Unit!156210 () Unit!156208)

(assert (=> b!5677543 (= e!3494550 Unit!156210)))

(declare-fun lt!2269810 () Unit!156208)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!694 ((InoxSet Context!10106) (InoxSet Context!10106) List!63308) Unit!156208)

(assert (=> b!5677543 (= lt!2269810 (lemmaZipperConcatMatchesSameAsBothZippers!694 lt!2269813 lt!2269816 (t!376618 s!2326)))))

(declare-fun res!2399247 () Bool)

(assert (=> b!5677543 (= res!2399247 (matchZipper!1807 lt!2269813 (t!376618 s!2326)))))

(assert (=> b!5677543 (=> res!2399247 e!3494545)))

(assert (=> b!5677543 (= (matchZipper!1807 ((_ map or) lt!2269813 lt!2269816) (t!376618 s!2326)) e!3494545)))

(declare-fun b!5677544 () Bool)

(declare-fun res!2399248 () Bool)

(assert (=> b!5677544 (=> (not res!2399248) (not e!3494539))))

(declare-fun unfocusZipper!1411 (List!63307) Regex!15669)

(assert (=> b!5677544 (= res!2399248 (= r!7292 (unfocusZipper!1411 zl!343)))))

(declare-fun b!5677545 () Bool)

(declare-fun e!3494541 () Bool)

(declare-fun tp!1574422 () Bool)

(assert (=> b!5677545 (= e!3494541 tp!1574422)))

(declare-fun b!5677546 () Bool)

(assert (=> b!5677546 (= e!3494539 (not e!3494538))))

(declare-fun res!2399245 () Bool)

(assert (=> b!5677546 (=> res!2399245 e!3494538)))

(assert (=> b!5677546 (= res!2399245 (not ((_ is Cons!63183) zl!343)))))

(declare-fun matchRSpec!2772 (Regex!15669 List!63308) Bool)

(assert (=> b!5677546 (= lt!2269815 (matchRSpec!2772 r!7292 s!2326))))

(declare-fun matchR!7854 (Regex!15669 List!63308) Bool)

(assert (=> b!5677546 (= lt!2269815 (matchR!7854 r!7292 s!2326))))

(declare-fun lt!2269817 () Unit!156208)

(declare-fun mainMatchTheorem!2772 (Regex!15669 List!63308) Unit!156208)

(assert (=> b!5677546 (= lt!2269817 (mainMatchTheorem!2772 r!7292 s!2326))))

(declare-fun tp!1574426 () Bool)

(declare-fun b!5677547 () Bool)

(assert (=> b!5677547 (= e!3494543 (and (inv!82419 (h!69631 zl!343)) e!3494541 tp!1574426))))

(declare-fun b!5677548 () Bool)

(declare-fun Unit!156211 () Unit!156208)

(assert (=> b!5677548 (= e!3494550 Unit!156211)))

(declare-fun b!5677549 () Bool)

(declare-fun res!2399234 () Bool)

(assert (=> b!5677549 (=> res!2399234 e!3494538)))

(declare-fun generalisedUnion!1532 (List!63306) Regex!15669)

(declare-fun unfocusZipperList!1097 (List!63307) List!63306)

(assert (=> b!5677549 (= res!2399234 (not (= r!7292 (generalisedUnion!1532 (unfocusZipperList!1097 zl!343)))))))

(assert (= (and start!586116 res!2399236) b!5677535))

(assert (= (and b!5677535 res!2399243) b!5677544))

(assert (= (and b!5677544 res!2399248) b!5677546))

(assert (= (and b!5677546 (not res!2399245)) b!5677542))

(assert (= (and b!5677542 (not res!2399241)) b!5677523))

(assert (= (and b!5677523 (not res!2399244)) b!5677540))

(assert (= (and b!5677540 (not res!2399235)) b!5677549))

(assert (= (and b!5677549 (not res!2399234)) b!5677525))

(assert (= (and b!5677525 (not res!2399239)) b!5677537))

(assert (= (and b!5677537 (not res!2399237)) b!5677530))

(assert (= (and b!5677530 (not res!2399249)) b!5677532))

(assert (= (and b!5677532 c!998874) b!5677543))

(assert (= (and b!5677532 (not c!998874)) b!5677548))

(assert (= (and b!5677543 (not res!2399247)) b!5677531))

(assert (= (and b!5677532 (not res!2399238)) b!5677539))

(assert (= (and b!5677539 res!2399242) b!5677533))

(assert (= (and b!5677539 (not res!2399233)) b!5677534))

(assert (= (and b!5677534 (not res!2399246)) b!5677526))

(assert (= (and b!5677526 (not res!2399240)) b!5677528))

(assert (= (and start!586116 ((_ is ElementMatch!15669) r!7292)) b!5677529))

(assert (= (and start!586116 ((_ is Concat!24514) r!7292)) b!5677524))

(assert (= (and start!586116 ((_ is Star!15669) r!7292)) b!5677527))

(assert (= (and start!586116 ((_ is Union!15669) r!7292)) b!5677541))

(assert (= (and start!586116 condSetEmpty!37967) setIsEmpty!37967))

(assert (= (and start!586116 (not condSetEmpty!37967)) setNonEmpty!37967))

(assert (= setNonEmpty!37967 b!5677538))

(assert (= b!5677547 b!5677545))

(assert (= (and start!586116 ((_ is Cons!63183) zl!343)) b!5677547))

(assert (= (and start!586116 ((_ is Cons!63184) s!2326)) b!5677536))

(declare-fun m!6637764 () Bool)

(assert (=> b!5677537 m!6637764))

(declare-fun m!6637766 () Bool)

(assert (=> b!5677537 m!6637766))

(declare-fun m!6637768 () Bool)

(assert (=> b!5677537 m!6637768))

(declare-fun m!6637770 () Bool)

(assert (=> b!5677537 m!6637770))

(assert (=> b!5677537 m!6637768))

(declare-fun m!6637772 () Bool)

(assert (=> b!5677537 m!6637772))

(assert (=> b!5677537 m!6637764))

(declare-fun m!6637774 () Bool)

(assert (=> b!5677537 m!6637774))

(declare-fun m!6637776 () Bool)

(assert (=> b!5677523 m!6637776))

(declare-fun m!6637778 () Bool)

(assert (=> b!5677549 m!6637778))

(assert (=> b!5677549 m!6637778))

(declare-fun m!6637780 () Bool)

(assert (=> b!5677549 m!6637780))

(declare-fun m!6637782 () Bool)

(assert (=> b!5677535 m!6637782))

(declare-fun m!6637784 () Bool)

(assert (=> b!5677546 m!6637784))

(declare-fun m!6637786 () Bool)

(assert (=> b!5677546 m!6637786))

(declare-fun m!6637788 () Bool)

(assert (=> b!5677546 m!6637788))

(declare-fun m!6637790 () Bool)

(assert (=> b!5677531 m!6637790))

(declare-fun m!6637792 () Bool)

(assert (=> b!5677530 m!6637792))

(declare-fun m!6637794 () Bool)

(assert (=> b!5677547 m!6637794))

(declare-fun m!6637796 () Bool)

(assert (=> b!5677532 m!6637796))

(declare-fun m!6637798 () Bool)

(assert (=> b!5677532 m!6637798))

(declare-fun m!6637800 () Bool)

(assert (=> b!5677532 m!6637800))

(declare-fun m!6637802 () Bool)

(assert (=> b!5677532 m!6637802))

(declare-fun m!6637804 () Bool)

(assert (=> b!5677532 m!6637804))

(declare-fun m!6637806 () Bool)

(assert (=> b!5677532 m!6637806))

(declare-fun m!6637808 () Bool)

(assert (=> b!5677532 m!6637808))

(declare-fun m!6637810 () Bool)

(assert (=> b!5677543 m!6637810))

(declare-fun m!6637812 () Bool)

(assert (=> b!5677543 m!6637812))

(declare-fun m!6637814 () Bool)

(assert (=> b!5677543 m!6637814))

(declare-fun m!6637816 () Bool)

(assert (=> start!586116 m!6637816))

(declare-fun m!6637818 () Bool)

(assert (=> b!5677526 m!6637818))

(declare-fun m!6637820 () Bool)

(assert (=> b!5677542 m!6637820))

(declare-fun m!6637822 () Bool)

(assert (=> b!5677528 m!6637822))

(declare-fun m!6637824 () Bool)

(assert (=> b!5677528 m!6637824))

(declare-fun m!6637826 () Bool)

(assert (=> b!5677528 m!6637826))

(declare-fun m!6637828 () Bool)

(assert (=> b!5677528 m!6637828))

(declare-fun m!6637830 () Bool)

(assert (=> b!5677528 m!6637830))

(declare-fun m!6637832 () Bool)

(assert (=> setNonEmpty!37967 m!6637832))

(declare-fun m!6637834 () Bool)

(assert (=> b!5677544 m!6637834))

(declare-fun m!6637836 () Bool)

(assert (=> b!5677533 m!6637836))

(check-sat (not b!5677545) (not start!586116) (not b!5677549) (not b!5677536) (not b!5677542) (not setNonEmpty!37967) tp_is_empty!40591 (not b!5677547) (not b!5677543) (not b!5677544) (not b!5677523) (not b!5677533) (not b!5677531) (not b!5677532) (not b!5677524) (not b!5677535) (not b!5677546) (not b!5677538) (not b!5677528) (not b!5677537) (not b!5677526) (not b!5677530) (not b!5677541) (not b!5677527))
(check-sat)
(get-model)

(declare-fun d!1791998 () Bool)

(declare-fun choose!42950 ((InoxSet Context!10106) Int) (InoxSet Context!10106))

(assert (=> d!1791998 (= (flatMap!1282 z!1189 lambda!305853) (choose!42950 z!1189 lambda!305853))))

(declare-fun bs!1323457 () Bool)

(assert (= bs!1323457 d!1791998))

(declare-fun m!6637838 () Bool)

(assert (=> bs!1323457 m!6637838))

(assert (=> b!5677532 d!1791998))

(declare-fun d!1792002 () Bool)

(declare-fun c!998895 () Bool)

(declare-fun e!3494577 () Bool)

(assert (=> d!1792002 (= c!998895 e!3494577)))

(declare-fun res!2399258 () Bool)

(assert (=> d!1792002 (=> (not res!2399258) (not e!3494577))))

(assert (=> d!1792002 (= res!2399258 ((_ is Cons!63182) (exprs!5553 lt!2269823)))))

(declare-fun e!3494579 () (InoxSet Context!10106))

(assert (=> d!1792002 (= (derivationStepZipperUp!937 lt!2269823 (h!69632 s!2326)) e!3494579)))

(declare-fun bm!430880 () Bool)

(declare-fun call!430885 () (InoxSet Context!10106))

(assert (=> bm!430880 (= call!430885 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 lt!2269823)) (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (h!69632 s!2326)))))

(declare-fun b!5677600 () Bool)

(declare-fun e!3494578 () (InoxSet Context!10106))

(assert (=> b!5677600 (= e!3494579 e!3494578)))

(declare-fun c!998894 () Bool)

(assert (=> b!5677600 (= c!998894 ((_ is Cons!63182) (exprs!5553 lt!2269823)))))

(declare-fun b!5677601 () Bool)

(assert (=> b!5677601 (= e!3494578 call!430885)))

(declare-fun b!5677602 () Bool)

(assert (=> b!5677602 (= e!3494579 ((_ map or) call!430885 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (h!69632 s!2326))))))

(declare-fun b!5677603 () Bool)

(assert (=> b!5677603 (= e!3494577 (nullable!5701 (h!69630 (exprs!5553 lt!2269823))))))

(declare-fun b!5677604 () Bool)

(assert (=> b!5677604 (= e!3494578 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792002 res!2399258) b!5677603))

(assert (= (and d!1792002 c!998895) b!5677602))

(assert (= (and d!1792002 (not c!998895)) b!5677600))

(assert (= (and b!5677600 c!998894) b!5677601))

(assert (= (and b!5677600 (not c!998894)) b!5677604))

(assert (= (or b!5677602 b!5677601) bm!430880))

(declare-fun m!6637860 () Bool)

(assert (=> bm!430880 m!6637860))

(declare-fun m!6637862 () Bool)

(assert (=> b!5677602 m!6637862))

(declare-fun m!6637866 () Bool)

(assert (=> b!5677603 m!6637866))

(assert (=> b!5677532 d!1792002))

(declare-fun d!1792006 () Bool)

(declare-fun nullableFct!1781 (Regex!15669) Bool)

(assert (=> d!1792006 (= (nullable!5701 (h!69630 (exprs!5553 (h!69631 zl!343)))) (nullableFct!1781 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun bs!1323459 () Bool)

(assert (= bs!1323459 d!1792006))

(declare-fun m!6637870 () Bool)

(assert (=> bs!1323459 m!6637870))

(assert (=> b!5677532 d!1792006))

(declare-fun d!1792010 () Bool)

(declare-fun c!998898 () Bool)

(declare-fun e!3494581 () Bool)

(assert (=> d!1792010 (= c!998898 e!3494581)))

(declare-fun res!2399259 () Bool)

(assert (=> d!1792010 (=> (not res!2399259) (not e!3494581))))

(assert (=> d!1792010 (= res!2399259 ((_ is Cons!63182) (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))

(declare-fun e!3494583 () (InoxSet Context!10106))

(assert (=> d!1792010 (= (derivationStepZipperUp!937 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))) (h!69632 s!2326)) e!3494583)))

(declare-fun bm!430881 () Bool)

(declare-fun call!430886 () (InoxSet Context!10106))

(assert (=> bm!430881 (= call!430886 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326)))))

(declare-fun b!5677607 () Bool)

(declare-fun e!3494582 () (InoxSet Context!10106))

(assert (=> b!5677607 (= e!3494583 e!3494582)))

(declare-fun c!998897 () Bool)

(assert (=> b!5677607 (= c!998897 ((_ is Cons!63182) (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))

(declare-fun b!5677608 () Bool)

(assert (=> b!5677608 (= e!3494582 call!430886)))

(declare-fun b!5677609 () Bool)

(assert (=> b!5677609 (= e!3494583 ((_ map or) call!430886 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326))))))

(declare-fun b!5677610 () Bool)

(assert (=> b!5677610 (= e!3494581 (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun b!5677611 () Bool)

(assert (=> b!5677611 (= e!3494582 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792010 res!2399259) b!5677610))

(assert (= (and d!1792010 c!998898) b!5677609))

(assert (= (and d!1792010 (not c!998898)) b!5677607))

(assert (= (and b!5677607 c!998897) b!5677608))

(assert (= (and b!5677607 (not c!998897)) b!5677611))

(assert (= (or b!5677609 b!5677608) bm!430881))

(declare-fun m!6637872 () Bool)

(assert (=> bm!430881 m!6637872))

(declare-fun m!6637874 () Bool)

(assert (=> b!5677609 m!6637874))

(declare-fun m!6637876 () Bool)

(assert (=> b!5677610 m!6637876))

(assert (=> b!5677532 d!1792010))

(declare-fun c!998936 () Bool)

(declare-fun bm!430901 () Bool)

(declare-fun call!430907 () List!63306)

(declare-fun call!430910 () (InoxSet Context!10106))

(assert (=> bm!430901 (= call!430910 (derivationStepZipperDown!1011 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))) (ite c!998936 lt!2269823 (Context!10107 call!430907)) (h!69632 s!2326)))))

(declare-fun b!5677707 () Bool)

(declare-fun e!3494644 () (InoxSet Context!10106))

(declare-fun call!430906 () (InoxSet Context!10106))

(assert (=> b!5677707 (= e!3494644 ((_ map or) call!430906 call!430910))))

(declare-fun b!5677708 () Bool)

(declare-fun e!3494641 () (InoxSet Context!10106))

(declare-fun e!3494643 () (InoxSet Context!10106))

(assert (=> b!5677708 (= e!3494641 e!3494643)))

(declare-fun c!998933 () Bool)

(assert (=> b!5677708 (= c!998933 ((_ is Concat!24514) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677709 () Bool)

(declare-fun e!3494640 () Bool)

(assert (=> b!5677709 (= e!3494640 (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5677710 () Bool)

(declare-fun c!998934 () Bool)

(assert (=> b!5677710 (= c!998934 e!3494640)))

(declare-fun res!2399287 () Bool)

(assert (=> b!5677710 (=> (not res!2399287) (not e!3494640))))

(assert (=> b!5677710 (= res!2399287 ((_ is Concat!24514) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> b!5677710 (= e!3494644 e!3494641)))

(declare-fun bm!430902 () Bool)

(declare-fun $colon$colon!1702 (List!63306 Regex!15669) List!63306)

(assert (=> bm!430902 (= call!430907 ($colon$colon!1702 (exprs!5553 lt!2269823) (ite (or c!998934 c!998933) (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69630 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5677711 () Bool)

(declare-fun call!430905 () (InoxSet Context!10106))

(assert (=> b!5677711 (= e!3494643 call!430905)))

(declare-fun b!5677712 () Bool)

(declare-fun call!430909 () (InoxSet Context!10106))

(assert (=> b!5677712 (= e!3494641 ((_ map or) call!430910 call!430909))))

(declare-fun b!5677713 () Bool)

(declare-fun c!998937 () Bool)

(assert (=> b!5677713 (= c!998937 ((_ is Star!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun e!3494642 () (InoxSet Context!10106))

(assert (=> b!5677713 (= e!3494643 e!3494642)))

(declare-fun bm!430900 () Bool)

(declare-fun call!430908 () List!63306)

(assert (=> bm!430900 (= call!430908 call!430907)))

(declare-fun d!1792012 () Bool)

(declare-fun c!998935 () Bool)

(assert (=> d!1792012 (= c!998935 (and ((_ is ElementMatch!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))) (= (c!998875 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326))))))

(declare-fun e!3494639 () (InoxSet Context!10106))

(assert (=> d!1792012 (= (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (h!69631 zl!343))) lt!2269823 (h!69632 s!2326)) e!3494639)))

(declare-fun b!5677714 () Bool)

(assert (=> b!5677714 (= e!3494639 (store ((as const (Array Context!10106 Bool)) false) lt!2269823 true))))

(declare-fun b!5677715 () Bool)

(assert (=> b!5677715 (= e!3494642 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5677716 () Bool)

(assert (=> b!5677716 (= e!3494639 e!3494644)))

(assert (=> b!5677716 (= c!998936 ((_ is Union!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun bm!430903 () Bool)

(assert (=> bm!430903 (= call!430906 (derivationStepZipperDown!1011 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))) (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908)) (h!69632 s!2326)))))

(declare-fun b!5677717 () Bool)

(assert (=> b!5677717 (= e!3494642 call!430905)))

(declare-fun bm!430904 () Bool)

(assert (=> bm!430904 (= call!430905 call!430909)))

(declare-fun bm!430905 () Bool)

(assert (=> bm!430905 (= call!430909 call!430906)))

(assert (= (and d!1792012 c!998935) b!5677714))

(assert (= (and d!1792012 (not c!998935)) b!5677716))

(assert (= (and b!5677716 c!998936) b!5677707))

(assert (= (and b!5677716 (not c!998936)) b!5677710))

(assert (= (and b!5677710 res!2399287) b!5677709))

(assert (= (and b!5677710 c!998934) b!5677712))

(assert (= (and b!5677710 (not c!998934)) b!5677708))

(assert (= (and b!5677708 c!998933) b!5677711))

(assert (= (and b!5677708 (not c!998933)) b!5677713))

(assert (= (and b!5677713 c!998937) b!5677717))

(assert (= (and b!5677713 (not c!998937)) b!5677715))

(assert (= (or b!5677711 b!5677717) bm!430900))

(assert (= (or b!5677711 b!5677717) bm!430904))

(assert (= (or b!5677712 bm!430900) bm!430902))

(assert (= (or b!5677712 bm!430904) bm!430905))

(assert (= (or b!5677707 b!5677712) bm!430901))

(assert (= (or b!5677707 bm!430905) bm!430903))

(declare-fun m!6637904 () Bool)

(assert (=> b!5677714 m!6637904))

(declare-fun m!6637906 () Bool)

(assert (=> bm!430901 m!6637906))

(declare-fun m!6637908 () Bool)

(assert (=> b!5677709 m!6637908))

(declare-fun m!6637910 () Bool)

(assert (=> bm!430903 m!6637910))

(declare-fun m!6637912 () Bool)

(assert (=> bm!430902 m!6637912))

(assert (=> b!5677532 d!1792012))

(declare-fun d!1792020 () Bool)

(declare-fun dynLambda!24726 (Int Context!10106) (InoxSet Context!10106))

(assert (=> d!1792020 (= (flatMap!1282 z!1189 lambda!305853) (dynLambda!24726 lambda!305853 (h!69631 zl!343)))))

(declare-fun lt!2269841 () Unit!156208)

(declare-fun choose!42953 ((InoxSet Context!10106) Context!10106 Int) Unit!156208)

(assert (=> d!1792020 (= lt!2269841 (choose!42953 z!1189 (h!69631 zl!343) lambda!305853))))

(assert (=> d!1792020 (= z!1189 (store ((as const (Array Context!10106 Bool)) false) (h!69631 zl!343) true))))

(assert (=> d!1792020 (= (lemmaFlatMapOnSingletonSet!814 z!1189 (h!69631 zl!343) lambda!305853) lt!2269841)))

(declare-fun b_lambda!214695 () Bool)

(assert (=> (not b_lambda!214695) (not d!1792020)))

(declare-fun bs!1323465 () Bool)

(assert (= bs!1323465 d!1792020))

(assert (=> bs!1323465 m!6637806))

(declare-fun m!6637926 () Bool)

(assert (=> bs!1323465 m!6637926))

(declare-fun m!6637928 () Bool)

(assert (=> bs!1323465 m!6637928))

(declare-fun m!6637930 () Bool)

(assert (=> bs!1323465 m!6637930))

(assert (=> b!5677532 d!1792020))

(declare-fun d!1792024 () Bool)

(declare-fun c!998948 () Bool)

(declare-fun e!3494666 () Bool)

(assert (=> d!1792024 (= c!998948 e!3494666)))

(declare-fun res!2399312 () Bool)

(assert (=> d!1792024 (=> (not res!2399312) (not e!3494666))))

(assert (=> d!1792024 (= res!2399312 ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343))))))

(declare-fun e!3494668 () (InoxSet Context!10106))

(assert (=> d!1792024 (= (derivationStepZipperUp!937 (h!69631 zl!343) (h!69632 s!2326)) e!3494668)))

(declare-fun bm!430909 () Bool)

(declare-fun call!430914 () (InoxSet Context!10106))

(assert (=> bm!430909 (= call!430914 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (h!69631 zl!343))) (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326)))))

(declare-fun b!5677760 () Bool)

(declare-fun e!3494667 () (InoxSet Context!10106))

(assert (=> b!5677760 (= e!3494668 e!3494667)))

(declare-fun c!998947 () Bool)

(assert (=> b!5677760 (= c!998947 ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343))))))

(declare-fun b!5677761 () Bool)

(assert (=> b!5677761 (= e!3494667 call!430914)))

(declare-fun b!5677762 () Bool)

(assert (=> b!5677762 (= e!3494668 ((_ map or) call!430914 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326))))))

(declare-fun b!5677763 () Bool)

(assert (=> b!5677763 (= e!3494666 (nullable!5701 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677764 () Bool)

(assert (=> b!5677764 (= e!3494667 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792024 res!2399312) b!5677763))

(assert (= (and d!1792024 c!998948) b!5677762))

(assert (= (and d!1792024 (not c!998948)) b!5677760))

(assert (= (and b!5677760 c!998947) b!5677761))

(assert (= (and b!5677760 (not c!998947)) b!5677764))

(assert (= (or b!5677762 b!5677761) bm!430909))

(declare-fun m!6637932 () Bool)

(assert (=> bm!430909 m!6637932))

(declare-fun m!6637934 () Bool)

(assert (=> b!5677762 m!6637934))

(assert (=> b!5677763 m!6637802))

(assert (=> b!5677532 d!1792024))

(declare-fun b!5677816 () Bool)

(declare-fun e!3494702 () Bool)

(declare-fun e!3494703 () Bool)

(assert (=> b!5677816 (= e!3494702 e!3494703)))

(declare-fun res!2399327 () Bool)

(assert (=> b!5677816 (=> (not res!2399327) (not e!3494703))))

(declare-fun call!430941 () Bool)

(assert (=> b!5677816 (= res!2399327 call!430941)))

(declare-fun d!1792026 () Bool)

(declare-fun res!2399330 () Bool)

(declare-fun e!3494706 () Bool)

(assert (=> d!1792026 (=> res!2399330 e!3494706)))

(assert (=> d!1792026 (= res!2399330 ((_ is ElementMatch!15669) r!7292))))

(assert (=> d!1792026 (= (validRegex!7405 r!7292) e!3494706)))

(declare-fun b!5677817 () Bool)

(declare-fun call!430939 () Bool)

(assert (=> b!5677817 (= e!3494703 call!430939)))

(declare-fun b!5677818 () Bool)

(declare-fun e!3494701 () Bool)

(declare-fun e!3494707 () Bool)

(assert (=> b!5677818 (= e!3494701 e!3494707)))

(declare-fun res!2399326 () Bool)

(assert (=> b!5677818 (= res!2399326 (not (nullable!5701 (reg!15998 r!7292))))))

(assert (=> b!5677818 (=> (not res!2399326) (not e!3494707))))

(declare-fun b!5677819 () Bool)

(declare-fun e!3494705 () Bool)

(assert (=> b!5677819 (= e!3494705 call!430939)))

(declare-fun b!5677820 () Bool)

(declare-fun e!3494704 () Bool)

(assert (=> b!5677820 (= e!3494701 e!3494704)))

(declare-fun c!998968 () Bool)

(assert (=> b!5677820 (= c!998968 ((_ is Union!15669) r!7292))))

(declare-fun bm!430934 () Bool)

(declare-fun c!998969 () Bool)

(declare-fun call!430940 () Bool)

(assert (=> bm!430934 (= call!430940 (validRegex!7405 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))

(declare-fun b!5677821 () Bool)

(declare-fun res!2399328 () Bool)

(assert (=> b!5677821 (=> res!2399328 e!3494702)))

(assert (=> b!5677821 (= res!2399328 (not ((_ is Concat!24514) r!7292)))))

(assert (=> b!5677821 (= e!3494704 e!3494702)))

(declare-fun b!5677822 () Bool)

(assert (=> b!5677822 (= e!3494706 e!3494701)))

(assert (=> b!5677822 (= c!998969 ((_ is Star!15669) r!7292))))

(declare-fun bm!430935 () Bool)

(assert (=> bm!430935 (= call!430939 call!430940)))

(declare-fun b!5677823 () Bool)

(declare-fun res!2399329 () Bool)

(assert (=> b!5677823 (=> (not res!2399329) (not e!3494705))))

(assert (=> b!5677823 (= res!2399329 call!430941)))

(assert (=> b!5677823 (= e!3494704 e!3494705)))

(declare-fun bm!430936 () Bool)

(assert (=> bm!430936 (= call!430941 (validRegex!7405 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))

(declare-fun b!5677824 () Bool)

(assert (=> b!5677824 (= e!3494707 call!430940)))

(assert (= (and d!1792026 (not res!2399330)) b!5677822))

(assert (= (and b!5677822 c!998969) b!5677818))

(assert (= (and b!5677822 (not c!998969)) b!5677820))

(assert (= (and b!5677818 res!2399326) b!5677824))

(assert (= (and b!5677820 c!998968) b!5677823))

(assert (= (and b!5677820 (not c!998968)) b!5677821))

(assert (= (and b!5677823 res!2399329) b!5677819))

(assert (= (and b!5677821 (not res!2399328)) b!5677816))

(assert (= (and b!5677816 res!2399327) b!5677817))

(assert (= (or b!5677819 b!5677817) bm!430935))

(assert (= (or b!5677823 b!5677816) bm!430936))

(assert (= (or b!5677824 bm!430935) bm!430934))

(declare-fun m!6637950 () Bool)

(assert (=> b!5677818 m!6637950))

(declare-fun m!6637952 () Bool)

(assert (=> bm!430934 m!6637952))

(declare-fun m!6637954 () Bool)

(assert (=> bm!430936 m!6637954))

(assert (=> start!586116 d!1792026))

(declare-fun d!1792034 () Bool)

(declare-fun c!998972 () Bool)

(declare-fun isEmpty!35036 (List!63308) Bool)

(assert (=> d!1792034 (= c!998972 (isEmpty!35036 (t!376618 s!2326)))))

(declare-fun e!3494713 () Bool)

(assert (=> d!1792034 (= (matchZipper!1807 lt!2269816 (t!376618 s!2326)) e!3494713)))

(declare-fun b!5677832 () Bool)

(declare-fun nullableZipper!1635 ((InoxSet Context!10106)) Bool)

(assert (=> b!5677832 (= e!3494713 (nullableZipper!1635 lt!2269816))))

(declare-fun b!5677833 () Bool)

(declare-fun head!12050 (List!63308) C!31608)

(declare-fun tail!11145 (List!63308) List!63308)

(assert (=> b!5677833 (= e!3494713 (matchZipper!1807 (derivationStepZipper!1754 lt!2269816 (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))))))

(assert (= (and d!1792034 c!998972) b!5677832))

(assert (= (and d!1792034 (not c!998972)) b!5677833))

(declare-fun m!6637966 () Bool)

(assert (=> d!1792034 m!6637966))

(declare-fun m!6637968 () Bool)

(assert (=> b!5677832 m!6637968))

(declare-fun m!6637970 () Bool)

(assert (=> b!5677833 m!6637970))

(assert (=> b!5677833 m!6637970))

(declare-fun m!6637972 () Bool)

(assert (=> b!5677833 m!6637972))

(declare-fun m!6637974 () Bool)

(assert (=> b!5677833 m!6637974))

(assert (=> b!5677833 m!6637972))

(assert (=> b!5677833 m!6637974))

(declare-fun m!6637976 () Bool)

(assert (=> b!5677833 m!6637976))

(assert (=> b!5677531 d!1792034))

(declare-fun d!1792042 () Bool)

(assert (=> d!1792042 (= (isEmpty!35034 (t!376616 (exprs!5553 (h!69631 zl!343)))) ((_ is Nil!63182) (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> b!5677530 d!1792042))

(declare-fun d!1792046 () Bool)

(declare-fun lambda!305874 () Int)

(declare-fun forall!14818 (List!63306 Int) Bool)

(assert (=> d!1792046 (= (inv!82419 setElem!37967) (forall!14818 (exprs!5553 setElem!37967) lambda!305874))))

(declare-fun bs!1323473 () Bool)

(assert (= bs!1323473 d!1792046))

(declare-fun m!6637998 () Bool)

(assert (=> bs!1323473 m!6637998))

(assert (=> setNonEmpty!37967 d!1792046))

(declare-fun d!1792052 () Bool)

(declare-fun lt!2269856 () Regex!15669)

(assert (=> d!1792052 (validRegex!7405 lt!2269856)))

(assert (=> d!1792052 (= lt!2269856 (generalisedUnion!1532 (unfocusZipperList!1097 zl!343)))))

(assert (=> d!1792052 (= (unfocusZipper!1411 zl!343) lt!2269856)))

(declare-fun bs!1323476 () Bool)

(assert (= bs!1323476 d!1792052))

(declare-fun m!6638004 () Bool)

(assert (=> bs!1323476 m!6638004))

(assert (=> bs!1323476 m!6637778))

(assert (=> bs!1323476 m!6637778))

(assert (=> bs!1323476 m!6637780))

(assert (=> b!5677544 d!1792052))

(declare-fun e!3494747 () Bool)

(declare-fun d!1792058 () Bool)

(assert (=> d!1792058 (= (matchZipper!1807 ((_ map or) lt!2269813 lt!2269816) (t!376618 s!2326)) e!3494747)))

(declare-fun res!2399346 () Bool)

(assert (=> d!1792058 (=> res!2399346 e!3494747)))

(assert (=> d!1792058 (= res!2399346 (matchZipper!1807 lt!2269813 (t!376618 s!2326)))))

(declare-fun lt!2269863 () Unit!156208)

(declare-fun choose!42954 ((InoxSet Context!10106) (InoxSet Context!10106) List!63308) Unit!156208)

(assert (=> d!1792058 (= lt!2269863 (choose!42954 lt!2269813 lt!2269816 (t!376618 s!2326)))))

(assert (=> d!1792058 (= (lemmaZipperConcatMatchesSameAsBothZippers!694 lt!2269813 lt!2269816 (t!376618 s!2326)) lt!2269863)))

(declare-fun b!5677890 () Bool)

(assert (=> b!5677890 (= e!3494747 (matchZipper!1807 lt!2269816 (t!376618 s!2326)))))

(assert (= (and d!1792058 (not res!2399346)) b!5677890))

(assert (=> d!1792058 m!6637814))

(assert (=> d!1792058 m!6637812))

(declare-fun m!6638056 () Bool)

(assert (=> d!1792058 m!6638056))

(assert (=> b!5677890 m!6637790))

(assert (=> b!5677543 d!1792058))

(declare-fun d!1792080 () Bool)

(declare-fun c!998997 () Bool)

(assert (=> d!1792080 (= c!998997 (isEmpty!35036 (t!376618 s!2326)))))

(declare-fun e!3494749 () Bool)

(assert (=> d!1792080 (= (matchZipper!1807 lt!2269813 (t!376618 s!2326)) e!3494749)))

(declare-fun b!5677893 () Bool)

(assert (=> b!5677893 (= e!3494749 (nullableZipper!1635 lt!2269813))))

(declare-fun b!5677894 () Bool)

(assert (=> b!5677894 (= e!3494749 (matchZipper!1807 (derivationStepZipper!1754 lt!2269813 (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))))))

(assert (= (and d!1792080 c!998997) b!5677893))

(assert (= (and d!1792080 (not c!998997)) b!5677894))

(assert (=> d!1792080 m!6637966))

(declare-fun m!6638060 () Bool)

(assert (=> b!5677893 m!6638060))

(assert (=> b!5677894 m!6637970))

(assert (=> b!5677894 m!6637970))

(declare-fun m!6638062 () Bool)

(assert (=> b!5677894 m!6638062))

(assert (=> b!5677894 m!6637974))

(assert (=> b!5677894 m!6638062))

(assert (=> b!5677894 m!6637974))

(declare-fun m!6638064 () Bool)

(assert (=> b!5677894 m!6638064))

(assert (=> b!5677543 d!1792080))

(declare-fun d!1792082 () Bool)

(declare-fun c!998998 () Bool)

(assert (=> d!1792082 (= c!998998 (isEmpty!35036 (t!376618 s!2326)))))

(declare-fun e!3494750 () Bool)

(assert (=> d!1792082 (= (matchZipper!1807 ((_ map or) lt!2269813 lt!2269816) (t!376618 s!2326)) e!3494750)))

(declare-fun b!5677895 () Bool)

(assert (=> b!5677895 (= e!3494750 (nullableZipper!1635 ((_ map or) lt!2269813 lt!2269816)))))

(declare-fun b!5677896 () Bool)

(assert (=> b!5677896 (= e!3494750 (matchZipper!1807 (derivationStepZipper!1754 ((_ map or) lt!2269813 lt!2269816) (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))))))

(assert (= (and d!1792082 c!998998) b!5677895))

(assert (= (and d!1792082 (not c!998998)) b!5677896))

(assert (=> d!1792082 m!6637966))

(declare-fun m!6638066 () Bool)

(assert (=> b!5677895 m!6638066))

(assert (=> b!5677896 m!6637970))

(assert (=> b!5677896 m!6637970))

(declare-fun m!6638068 () Bool)

(assert (=> b!5677896 m!6638068))

(assert (=> b!5677896 m!6637974))

(assert (=> b!5677896 m!6638068))

(assert (=> b!5677896 m!6637974))

(declare-fun m!6638070 () Bool)

(assert (=> b!5677896 m!6638070))

(assert (=> b!5677543 d!1792082))

(declare-fun d!1792084 () Bool)

(assert (=> d!1792084 (= (nullable!5701 (regOne!31850 (regOne!31850 r!7292))) (nullableFct!1781 (regOne!31850 (regOne!31850 r!7292))))))

(declare-fun bs!1323482 () Bool)

(assert (= bs!1323482 d!1792084))

(declare-fun m!6638072 () Bool)

(assert (=> bs!1323482 m!6638072))

(assert (=> b!5677533 d!1792084))

(declare-fun bs!1323483 () Bool)

(declare-fun d!1792086 () Bool)

(assert (= bs!1323483 (and d!1792086 d!1792046)))

(declare-fun lambda!305880 () Int)

(assert (=> bs!1323483 (= lambda!305880 lambda!305874)))

(declare-fun b!5677954 () Bool)

(declare-fun e!3494792 () Bool)

(declare-fun lt!2269872 () Regex!15669)

(declare-fun isConcat!716 (Regex!15669) Bool)

(assert (=> b!5677954 (= e!3494792 (isConcat!716 lt!2269872))))

(declare-fun b!5677955 () Bool)

(declare-fun e!3494794 () Regex!15669)

(assert (=> b!5677955 (= e!3494794 (h!69630 (exprs!5553 (h!69631 zl!343))))))

(declare-fun b!5677956 () Bool)

(declare-fun e!3494793 () Bool)

(assert (=> b!5677956 (= e!3494793 e!3494792)))

(declare-fun c!999019 () Bool)

(declare-fun tail!11146 (List!63306) List!63306)

(assert (=> b!5677956 (= c!999019 (isEmpty!35034 (tail!11146 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677957 () Bool)

(declare-fun e!3494790 () Regex!15669)

(assert (=> b!5677957 (= e!3494790 EmptyExpr!15669)))

(declare-fun b!5677958 () Bool)

(declare-fun isEmptyExpr!1193 (Regex!15669) Bool)

(assert (=> b!5677958 (= e!3494793 (isEmptyExpr!1193 lt!2269872))))

(declare-fun b!5677959 () Bool)

(declare-fun e!3494795 () Bool)

(assert (=> b!5677959 (= e!3494795 e!3494793)))

(declare-fun c!999020 () Bool)

(assert (=> b!5677959 (= c!999020 (isEmpty!35034 (exprs!5553 (h!69631 zl!343))))))

(declare-fun b!5677960 () Bool)

(assert (=> b!5677960 (= e!3494790 (Concat!24514 (h!69630 (exprs!5553 (h!69631 zl!343))) (generalisedConcat!1284 (t!376616 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5677961 () Bool)

(assert (=> b!5677961 (= e!3494794 e!3494790)))

(declare-fun c!999018 () Bool)

(assert (=> b!5677961 (= c!999018 ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343))))))

(declare-fun b!5677962 () Bool)

(declare-fun head!12051 (List!63306) Regex!15669)

(assert (=> b!5677962 (= e!3494792 (= lt!2269872 (head!12051 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5677963 () Bool)

(declare-fun e!3494791 () Bool)

(assert (=> b!5677963 (= e!3494791 (isEmpty!35034 (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> d!1792086 e!3494795))

(declare-fun res!2399368 () Bool)

(assert (=> d!1792086 (=> (not res!2399368) (not e!3494795))))

(assert (=> d!1792086 (= res!2399368 (validRegex!7405 lt!2269872))))

(assert (=> d!1792086 (= lt!2269872 e!3494794)))

(declare-fun c!999017 () Bool)

(assert (=> d!1792086 (= c!999017 e!3494791)))

(declare-fun res!2399369 () Bool)

(assert (=> d!1792086 (=> (not res!2399369) (not e!3494791))))

(assert (=> d!1792086 (= res!2399369 ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343))))))

(assert (=> d!1792086 (forall!14818 (exprs!5553 (h!69631 zl!343)) lambda!305880)))

(assert (=> d!1792086 (= (generalisedConcat!1284 (exprs!5553 (h!69631 zl!343))) lt!2269872)))

(assert (= (and d!1792086 res!2399369) b!5677963))

(assert (= (and d!1792086 c!999017) b!5677955))

(assert (= (and d!1792086 (not c!999017)) b!5677961))

(assert (= (and b!5677961 c!999018) b!5677960))

(assert (= (and b!5677961 (not c!999018)) b!5677957))

(assert (= (and d!1792086 res!2399368) b!5677959))

(assert (= (and b!5677959 c!999020) b!5677958))

(assert (= (and b!5677959 (not c!999020)) b!5677956))

(assert (= (and b!5677956 c!999019) b!5677962))

(assert (= (and b!5677956 (not c!999019)) b!5677954))

(declare-fun m!6638080 () Bool)

(assert (=> b!5677956 m!6638080))

(assert (=> b!5677956 m!6638080))

(declare-fun m!6638082 () Bool)

(assert (=> b!5677956 m!6638082))

(declare-fun m!6638084 () Bool)

(assert (=> d!1792086 m!6638084))

(declare-fun m!6638086 () Bool)

(assert (=> d!1792086 m!6638086))

(declare-fun m!6638088 () Bool)

(assert (=> b!5677959 m!6638088))

(declare-fun m!6638090 () Bool)

(assert (=> b!5677954 m!6638090))

(assert (=> b!5677963 m!6637792))

(declare-fun m!6638092 () Bool)

(assert (=> b!5677958 m!6638092))

(declare-fun m!6638094 () Bool)

(assert (=> b!5677962 m!6638094))

(declare-fun m!6638096 () Bool)

(assert (=> b!5677960 m!6638096))

(assert (=> b!5677523 d!1792086))

(declare-fun d!1792090 () Bool)

(assert (=> d!1792090 (= (isEmpty!35033 (t!376617 zl!343)) ((_ is Nil!63183) (t!376617 zl!343)))))

(assert (=> b!5677542 d!1792090))

(declare-fun bs!1323484 () Bool)

(declare-fun d!1792092 () Bool)

(assert (= bs!1323484 (and d!1792092 d!1792046)))

(declare-fun lambda!305881 () Int)

(assert (=> bs!1323484 (= lambda!305881 lambda!305874)))

(declare-fun bs!1323485 () Bool)

(assert (= bs!1323485 (and d!1792092 d!1792086)))

(assert (=> bs!1323485 (= lambda!305881 lambda!305880)))

(assert (=> d!1792092 (= (inv!82419 (h!69631 zl!343)) (forall!14818 (exprs!5553 (h!69631 zl!343)) lambda!305881))))

(declare-fun bs!1323486 () Bool)

(assert (= bs!1323486 d!1792092))

(declare-fun m!6638098 () Bool)

(assert (=> bs!1323486 m!6638098))

(assert (=> b!5677547 d!1792092))

(declare-fun call!430968 () (InoxSet Context!10106))

(declare-fun c!999024 () Bool)

(declare-fun call!430965 () List!63306)

(declare-fun bm!430959 () Bool)

(assert (=> bm!430959 (= call!430968 (derivationStepZipperDown!1011 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))) (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965)) (h!69632 s!2326)))))

(declare-fun b!5677972 () Bool)

(declare-fun e!3494805 () (InoxSet Context!10106))

(declare-fun call!430964 () (InoxSet Context!10106))

(assert (=> b!5677972 (= e!3494805 ((_ map or) call!430964 call!430968))))

(declare-fun b!5677973 () Bool)

(declare-fun e!3494802 () (InoxSet Context!10106))

(declare-fun e!3494804 () (InoxSet Context!10106))

(assert (=> b!5677973 (= e!3494802 e!3494804)))

(declare-fun c!999021 () Bool)

(assert (=> b!5677973 (= c!999021 ((_ is Concat!24514) (reg!15998 (regOne!31850 r!7292))))))

(declare-fun b!5677974 () Bool)

(declare-fun e!3494801 () Bool)

(assert (=> b!5677974 (= e!3494801 (nullable!5701 (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))))

(declare-fun b!5677975 () Bool)

(declare-fun c!999022 () Bool)

(assert (=> b!5677975 (= c!999022 e!3494801)))

(declare-fun res!2399378 () Bool)

(assert (=> b!5677975 (=> (not res!2399378) (not e!3494801))))

(assert (=> b!5677975 (= res!2399378 ((_ is Concat!24514) (reg!15998 (regOne!31850 r!7292))))))

(assert (=> b!5677975 (= e!3494805 e!3494802)))

(declare-fun bm!430960 () Bool)

(assert (=> bm!430960 (= call!430965 ($colon$colon!1702 (exprs!5553 (Context!10107 lt!2269825)) (ite (or c!999022 c!999021) (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (regOne!31850 r!7292)))))))

(declare-fun b!5677976 () Bool)

(declare-fun call!430963 () (InoxSet Context!10106))

(assert (=> b!5677976 (= e!3494804 call!430963)))

(declare-fun b!5677977 () Bool)

(declare-fun call!430967 () (InoxSet Context!10106))

(assert (=> b!5677977 (= e!3494802 ((_ map or) call!430968 call!430967))))

(declare-fun b!5677978 () Bool)

(declare-fun c!999025 () Bool)

(assert (=> b!5677978 (= c!999025 ((_ is Star!15669) (reg!15998 (regOne!31850 r!7292))))))

(declare-fun e!3494803 () (InoxSet Context!10106))

(assert (=> b!5677978 (= e!3494804 e!3494803)))

(declare-fun bm!430958 () Bool)

(declare-fun call!430966 () List!63306)

(assert (=> bm!430958 (= call!430966 call!430965)))

(declare-fun d!1792094 () Bool)

(declare-fun c!999023 () Bool)

(assert (=> d!1792094 (= c!999023 (and ((_ is ElementMatch!15669) (reg!15998 (regOne!31850 r!7292))) (= (c!998875 (reg!15998 (regOne!31850 r!7292))) (h!69632 s!2326))))))

(declare-fun e!3494800 () (InoxSet Context!10106))

(assert (=> d!1792094 (= (derivationStepZipperDown!1011 (reg!15998 (regOne!31850 r!7292)) (Context!10107 lt!2269825) (h!69632 s!2326)) e!3494800)))

(declare-fun b!5677979 () Bool)

(assert (=> b!5677979 (= e!3494800 (store ((as const (Array Context!10106 Bool)) false) (Context!10107 lt!2269825) true))))

(declare-fun b!5677980 () Bool)

(assert (=> b!5677980 (= e!3494803 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5677981 () Bool)

(assert (=> b!5677981 (= e!3494800 e!3494805)))

(assert (=> b!5677981 (= c!999024 ((_ is Union!15669) (reg!15998 (regOne!31850 r!7292))))))

(declare-fun bm!430961 () Bool)

(assert (=> bm!430961 (= call!430964 (derivationStepZipperDown!1011 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))) (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966)) (h!69632 s!2326)))))

(declare-fun b!5677982 () Bool)

(assert (=> b!5677982 (= e!3494803 call!430963)))

(declare-fun bm!430962 () Bool)

(assert (=> bm!430962 (= call!430963 call!430967)))

(declare-fun bm!430963 () Bool)

(assert (=> bm!430963 (= call!430967 call!430964)))

(assert (= (and d!1792094 c!999023) b!5677979))

(assert (= (and d!1792094 (not c!999023)) b!5677981))

(assert (= (and b!5677981 c!999024) b!5677972))

(assert (= (and b!5677981 (not c!999024)) b!5677975))

(assert (= (and b!5677975 res!2399378) b!5677974))

(assert (= (and b!5677975 c!999022) b!5677977))

(assert (= (and b!5677975 (not c!999022)) b!5677973))

(assert (= (and b!5677973 c!999021) b!5677976))

(assert (= (and b!5677973 (not c!999021)) b!5677978))

(assert (= (and b!5677978 c!999025) b!5677982))

(assert (= (and b!5677978 (not c!999025)) b!5677980))

(assert (= (or b!5677976 b!5677982) bm!430958))

(assert (= (or b!5677976 b!5677982) bm!430962))

(assert (= (or b!5677977 bm!430958) bm!430960))

(assert (= (or b!5677977 bm!430962) bm!430963))

(assert (= (or b!5677972 b!5677977) bm!430959))

(assert (= (or b!5677972 bm!430963) bm!430961))

(declare-fun m!6638118 () Bool)

(assert (=> b!5677979 m!6638118))

(declare-fun m!6638126 () Bool)

(assert (=> bm!430959 m!6638126))

(declare-fun m!6638128 () Bool)

(assert (=> b!5677974 m!6638128))

(declare-fun m!6638130 () Bool)

(assert (=> bm!430961 m!6638130))

(declare-fun m!6638132 () Bool)

(assert (=> bm!430960 m!6638132))

(assert (=> b!5677526 d!1792094))

(declare-fun bs!1323504 () Bool)

(declare-fun b!5678080 () Bool)

(assert (= bs!1323504 (and b!5678080 b!5677537)))

(declare-fun lambda!305896 () Int)

(assert (=> bs!1323504 (not (= lambda!305896 lambda!305851))))

(assert (=> bs!1323504 (not (= lambda!305896 lambda!305852))))

(assert (=> b!5678080 true))

(assert (=> b!5678080 true))

(declare-fun bs!1323507 () Bool)

(declare-fun b!5678082 () Bool)

(assert (= bs!1323507 (and b!5678082 b!5677537)))

(declare-fun lambda!305897 () Int)

(assert (=> bs!1323507 (not (= lambda!305897 lambda!305851))))

(assert (=> bs!1323507 (= lambda!305897 lambda!305852)))

(declare-fun bs!1323508 () Bool)

(assert (= bs!1323508 (and b!5678082 b!5678080)))

(assert (=> bs!1323508 (not (= lambda!305897 lambda!305896))))

(assert (=> b!5678082 true))

(assert (=> b!5678082 true))

(declare-fun b!5678076 () Bool)

(declare-fun e!3494852 () Bool)

(assert (=> b!5678076 (= e!3494852 (= s!2326 (Cons!63184 (c!998875 r!7292) Nil!63184)))))

(declare-fun b!5678077 () Bool)

(declare-fun res!2399414 () Bool)

(declare-fun e!3494848 () Bool)

(assert (=> b!5678077 (=> res!2399414 e!3494848)))

(declare-fun call!430973 () Bool)

(assert (=> b!5678077 (= res!2399414 call!430973)))

(declare-fun e!3494849 () Bool)

(assert (=> b!5678077 (= e!3494849 e!3494848)))

(declare-fun d!1792098 () Bool)

(declare-fun c!999036 () Bool)

(assert (=> d!1792098 (= c!999036 ((_ is EmptyExpr!15669) r!7292))))

(declare-fun e!3494850 () Bool)

(assert (=> d!1792098 (= (matchRSpec!2772 r!7292 s!2326) e!3494850)))

(declare-fun b!5678078 () Bool)

(declare-fun e!3494854 () Bool)

(assert (=> b!5678078 (= e!3494850 e!3494854)))

(declare-fun res!2399412 () Bool)

(assert (=> b!5678078 (= res!2399412 (not ((_ is EmptyLang!15669) r!7292)))))

(assert (=> b!5678078 (=> (not res!2399412) (not e!3494854))))

(declare-fun b!5678079 () Bool)

(assert (=> b!5678079 (= e!3494850 call!430973)))

(declare-fun bm!430968 () Bool)

(declare-fun call!430974 () Bool)

(declare-fun c!999037 () Bool)

(assert (=> bm!430968 (= call!430974 (Exists!2769 (ite c!999037 lambda!305896 lambda!305897)))))

(assert (=> b!5678080 (= e!3494848 call!430974)))

(declare-fun b!5678081 () Bool)

(declare-fun c!999039 () Bool)

(assert (=> b!5678081 (= c!999039 ((_ is Union!15669) r!7292))))

(declare-fun e!3494851 () Bool)

(assert (=> b!5678081 (= e!3494852 e!3494851)))

(assert (=> b!5678082 (= e!3494849 call!430974)))

(declare-fun b!5678083 () Bool)

(declare-fun c!999038 () Bool)

(assert (=> b!5678083 (= c!999038 ((_ is ElementMatch!15669) r!7292))))

(assert (=> b!5678083 (= e!3494854 e!3494852)))

(declare-fun bm!430969 () Bool)

(assert (=> bm!430969 (= call!430973 (isEmpty!35036 s!2326))))

(declare-fun b!5678084 () Bool)

(assert (=> b!5678084 (= e!3494851 e!3494849)))

(assert (=> b!5678084 (= c!999037 ((_ is Star!15669) r!7292))))

(declare-fun b!5678085 () Bool)

(declare-fun e!3494853 () Bool)

(assert (=> b!5678085 (= e!3494851 e!3494853)))

(declare-fun res!2399413 () Bool)

(assert (=> b!5678085 (= res!2399413 (matchRSpec!2772 (regOne!31851 r!7292) s!2326))))

(assert (=> b!5678085 (=> res!2399413 e!3494853)))

(declare-fun b!5678086 () Bool)

(assert (=> b!5678086 (= e!3494853 (matchRSpec!2772 (regTwo!31851 r!7292) s!2326))))

(assert (= (and d!1792098 c!999036) b!5678079))

(assert (= (and d!1792098 (not c!999036)) b!5678078))

(assert (= (and b!5678078 res!2399412) b!5678083))

(assert (= (and b!5678083 c!999038) b!5678076))

(assert (= (and b!5678083 (not c!999038)) b!5678081))

(assert (= (and b!5678081 c!999039) b!5678085))

(assert (= (and b!5678081 (not c!999039)) b!5678084))

(assert (= (and b!5678085 (not res!2399413)) b!5678086))

(assert (= (and b!5678084 c!999037) b!5678077))

(assert (= (and b!5678084 (not c!999037)) b!5678082))

(assert (= (and b!5678077 (not res!2399414)) b!5678080))

(assert (= (or b!5678080 b!5678082) bm!430968))

(assert (= (or b!5678079 b!5678077) bm!430969))

(declare-fun m!6638156 () Bool)

(assert (=> bm!430968 m!6638156))

(declare-fun m!6638158 () Bool)

(assert (=> bm!430969 m!6638158))

(declare-fun m!6638160 () Bool)

(assert (=> b!5678085 m!6638160))

(declare-fun m!6638162 () Bool)

(assert (=> b!5678086 m!6638162))

(assert (=> b!5677546 d!1792098))

(declare-fun b!5678129 () Bool)

(declare-fun e!3494883 () Bool)

(declare-fun lt!2269884 () Bool)

(declare-fun call!430977 () Bool)

(assert (=> b!5678129 (= e!3494883 (= lt!2269884 call!430977))))

(declare-fun b!5678130 () Bool)

(declare-fun res!2399434 () Bool)

(declare-fun e!3494879 () Bool)

(assert (=> b!5678130 (=> (not res!2399434) (not e!3494879))))

(assert (=> b!5678130 (= res!2399434 (not call!430977))))

(declare-fun b!5678131 () Bool)

(declare-fun res!2399438 () Bool)

(assert (=> b!5678131 (=> (not res!2399438) (not e!3494879))))

(assert (=> b!5678131 (= res!2399438 (isEmpty!35036 (tail!11145 s!2326)))))

(declare-fun b!5678132 () Bool)

(declare-fun e!3494885 () Bool)

(declare-fun derivativeStep!4488 (Regex!15669 C!31608) Regex!15669)

(assert (=> b!5678132 (= e!3494885 (matchR!7854 (derivativeStep!4488 r!7292 (head!12050 s!2326)) (tail!11145 s!2326)))))

(declare-fun b!5678133 () Bool)

(declare-fun e!3494880 () Bool)

(declare-fun e!3494882 () Bool)

(assert (=> b!5678133 (= e!3494880 e!3494882)))

(declare-fun res!2399437 () Bool)

(assert (=> b!5678133 (=> (not res!2399437) (not e!3494882))))

(assert (=> b!5678133 (= res!2399437 (not lt!2269884))))

(declare-fun b!5678134 () Bool)

(declare-fun res!2399432 () Bool)

(declare-fun e!3494881 () Bool)

(assert (=> b!5678134 (=> res!2399432 e!3494881)))

(assert (=> b!5678134 (= res!2399432 (not (isEmpty!35036 (tail!11145 s!2326))))))

(declare-fun b!5678136 () Bool)

(assert (=> b!5678136 (= e!3494881 (not (= (head!12050 s!2326) (c!998875 r!7292))))))

(declare-fun bm!430972 () Bool)

(assert (=> bm!430972 (= call!430977 (isEmpty!35036 s!2326))))

(declare-fun b!5678137 () Bool)

(declare-fun e!3494884 () Bool)

(assert (=> b!5678137 (= e!3494883 e!3494884)))

(declare-fun c!999046 () Bool)

(assert (=> b!5678137 (= c!999046 ((_ is EmptyLang!15669) r!7292))))

(declare-fun b!5678138 () Bool)

(assert (=> b!5678138 (= e!3494885 (nullable!5701 r!7292))))

(declare-fun b!5678139 () Bool)

(assert (=> b!5678139 (= e!3494884 (not lt!2269884))))

(declare-fun b!5678140 () Bool)

(declare-fun res!2399435 () Bool)

(assert (=> b!5678140 (=> res!2399435 e!3494880)))

(assert (=> b!5678140 (= res!2399435 (not ((_ is ElementMatch!15669) r!7292)))))

(assert (=> b!5678140 (= e!3494884 e!3494880)))

(declare-fun b!5678141 () Bool)

(assert (=> b!5678141 (= e!3494882 e!3494881)))

(declare-fun res!2399433 () Bool)

(assert (=> b!5678141 (=> res!2399433 e!3494881)))

(assert (=> b!5678141 (= res!2399433 call!430977)))

(declare-fun b!5678142 () Bool)

(declare-fun res!2399436 () Bool)

(assert (=> b!5678142 (=> res!2399436 e!3494880)))

(assert (=> b!5678142 (= res!2399436 e!3494879)))

(declare-fun res!2399431 () Bool)

(assert (=> b!5678142 (=> (not res!2399431) (not e!3494879))))

(assert (=> b!5678142 (= res!2399431 lt!2269884)))

(declare-fun b!5678135 () Bool)

(assert (=> b!5678135 (= e!3494879 (= (head!12050 s!2326) (c!998875 r!7292)))))

(declare-fun d!1792116 () Bool)

(assert (=> d!1792116 e!3494883))

(declare-fun c!999048 () Bool)

(assert (=> d!1792116 (= c!999048 ((_ is EmptyExpr!15669) r!7292))))

(assert (=> d!1792116 (= lt!2269884 e!3494885)))

(declare-fun c!999047 () Bool)

(assert (=> d!1792116 (= c!999047 (isEmpty!35036 s!2326))))

(assert (=> d!1792116 (validRegex!7405 r!7292)))

(assert (=> d!1792116 (= (matchR!7854 r!7292 s!2326) lt!2269884)))

(assert (= (and d!1792116 c!999047) b!5678138))

(assert (= (and d!1792116 (not c!999047)) b!5678132))

(assert (= (and d!1792116 c!999048) b!5678129))

(assert (= (and d!1792116 (not c!999048)) b!5678137))

(assert (= (and b!5678137 c!999046) b!5678139))

(assert (= (and b!5678137 (not c!999046)) b!5678140))

(assert (= (and b!5678140 (not res!2399435)) b!5678142))

(assert (= (and b!5678142 res!2399431) b!5678130))

(assert (= (and b!5678130 res!2399434) b!5678131))

(assert (= (and b!5678131 res!2399438) b!5678135))

(assert (= (and b!5678142 (not res!2399436)) b!5678133))

(assert (= (and b!5678133 res!2399437) b!5678141))

(assert (= (and b!5678141 (not res!2399433)) b!5678134))

(assert (= (and b!5678134 (not res!2399432)) b!5678136))

(assert (= (or b!5678129 b!5678130 b!5678141) bm!430972))

(declare-fun m!6638164 () Bool)

(assert (=> b!5678134 m!6638164))

(assert (=> b!5678134 m!6638164))

(declare-fun m!6638166 () Bool)

(assert (=> b!5678134 m!6638166))

(declare-fun m!6638168 () Bool)

(assert (=> b!5678138 m!6638168))

(assert (=> b!5678131 m!6638164))

(assert (=> b!5678131 m!6638164))

(assert (=> b!5678131 m!6638166))

(declare-fun m!6638170 () Bool)

(assert (=> b!5678136 m!6638170))

(assert (=> bm!430972 m!6638158))

(assert (=> b!5678135 m!6638170))

(assert (=> b!5678132 m!6638170))

(assert (=> b!5678132 m!6638170))

(declare-fun m!6638172 () Bool)

(assert (=> b!5678132 m!6638172))

(assert (=> b!5678132 m!6638164))

(assert (=> b!5678132 m!6638172))

(assert (=> b!5678132 m!6638164))

(declare-fun m!6638174 () Bool)

(assert (=> b!5678132 m!6638174))

(assert (=> d!1792116 m!6638158))

(assert (=> d!1792116 m!6637816))

(assert (=> b!5677546 d!1792116))

(declare-fun d!1792118 () Bool)

(assert (=> d!1792118 (= (matchR!7854 r!7292 s!2326) (matchRSpec!2772 r!7292 s!2326))))

(declare-fun lt!2269887 () Unit!156208)

(declare-fun choose!42958 (Regex!15669 List!63308) Unit!156208)

(assert (=> d!1792118 (= lt!2269887 (choose!42958 r!7292 s!2326))))

(assert (=> d!1792118 (validRegex!7405 r!7292)))

(assert (=> d!1792118 (= (mainMatchTheorem!2772 r!7292 s!2326) lt!2269887)))

(declare-fun bs!1323509 () Bool)

(assert (= bs!1323509 d!1792118))

(assert (=> bs!1323509 m!6637786))

(assert (=> bs!1323509 m!6637784))

(declare-fun m!6638176 () Bool)

(assert (=> bs!1323509 m!6638176))

(assert (=> bs!1323509 m!6637816))

(assert (=> b!5677546 d!1792118))

(declare-fun d!1792120 () Bool)

(declare-fun e!3494888 () Bool)

(assert (=> d!1792120 e!3494888))

(declare-fun res!2399441 () Bool)

(assert (=> d!1792120 (=> (not res!2399441) (not e!3494888))))

(declare-fun lt!2269890 () List!63307)

(declare-fun noDuplicate!1615 (List!63307) Bool)

(assert (=> d!1792120 (= res!2399441 (noDuplicate!1615 lt!2269890))))

(declare-fun choose!42959 ((InoxSet Context!10106)) List!63307)

(assert (=> d!1792120 (= lt!2269890 (choose!42959 z!1189))))

(assert (=> d!1792120 (= (toList!9453 z!1189) lt!2269890)))

(declare-fun b!5678145 () Bool)

(declare-fun content!11444 (List!63307) (InoxSet Context!10106))

(assert (=> b!5678145 (= e!3494888 (= (content!11444 lt!2269890) z!1189))))

(assert (= (and d!1792120 res!2399441) b!5678145))

(declare-fun m!6638178 () Bool)

(assert (=> d!1792120 m!6638178))

(declare-fun m!6638180 () Bool)

(assert (=> d!1792120 m!6638180))

(declare-fun m!6638182 () Bool)

(assert (=> b!5678145 m!6638182))

(assert (=> b!5677535 d!1792120))

(declare-fun bs!1323510 () Bool)

(declare-fun d!1792122 () Bool)

(assert (= bs!1323510 (and d!1792122 d!1792046)))

(declare-fun lambda!305900 () Int)

(assert (=> bs!1323510 (= lambda!305900 lambda!305874)))

(declare-fun bs!1323511 () Bool)

(assert (= bs!1323511 (and d!1792122 d!1792086)))

(assert (=> bs!1323511 (= lambda!305900 lambda!305880)))

(declare-fun bs!1323512 () Bool)

(assert (= bs!1323512 (and d!1792122 d!1792092)))

(assert (=> bs!1323512 (= lambda!305900 lambda!305881)))

(declare-fun b!5678166 () Bool)

(declare-fun e!3494906 () Bool)

(declare-fun lt!2269893 () Regex!15669)

(declare-fun isUnion!634 (Regex!15669) Bool)

(assert (=> b!5678166 (= e!3494906 (isUnion!634 lt!2269893))))

(declare-fun b!5678167 () Bool)

(declare-fun e!3494903 () Regex!15669)

(assert (=> b!5678167 (= e!3494903 (Union!15669 (h!69630 (unfocusZipperList!1097 zl!343)) (generalisedUnion!1532 (t!376616 (unfocusZipperList!1097 zl!343)))))))

(declare-fun e!3494905 () Bool)

(assert (=> d!1792122 e!3494905))

(declare-fun res!2399446 () Bool)

(assert (=> d!1792122 (=> (not res!2399446) (not e!3494905))))

(assert (=> d!1792122 (= res!2399446 (validRegex!7405 lt!2269893))))

(declare-fun e!3494902 () Regex!15669)

(assert (=> d!1792122 (= lt!2269893 e!3494902)))

(declare-fun c!999059 () Bool)

(declare-fun e!3494901 () Bool)

(assert (=> d!1792122 (= c!999059 e!3494901)))

(declare-fun res!2399447 () Bool)

(assert (=> d!1792122 (=> (not res!2399447) (not e!3494901))))

(assert (=> d!1792122 (= res!2399447 ((_ is Cons!63182) (unfocusZipperList!1097 zl!343)))))

(assert (=> d!1792122 (forall!14818 (unfocusZipperList!1097 zl!343) lambda!305900)))

(assert (=> d!1792122 (= (generalisedUnion!1532 (unfocusZipperList!1097 zl!343)) lt!2269893)))

(declare-fun b!5678168 () Bool)

(assert (=> b!5678168 (= e!3494903 EmptyLang!15669)))

(declare-fun b!5678169 () Bool)

(declare-fun e!3494904 () Bool)

(assert (=> b!5678169 (= e!3494905 e!3494904)))

(declare-fun c!999060 () Bool)

(assert (=> b!5678169 (= c!999060 (isEmpty!35034 (unfocusZipperList!1097 zl!343)))))

(declare-fun b!5678170 () Bool)

(assert (=> b!5678170 (= e!3494904 e!3494906)))

(declare-fun c!999057 () Bool)

(assert (=> b!5678170 (= c!999057 (isEmpty!35034 (tail!11146 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5678171 () Bool)

(assert (=> b!5678171 (= e!3494902 (h!69630 (unfocusZipperList!1097 zl!343)))))

(declare-fun b!5678172 () Bool)

(assert (=> b!5678172 (= e!3494901 (isEmpty!35034 (t!376616 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5678173 () Bool)

(declare-fun isEmptyLang!1204 (Regex!15669) Bool)

(assert (=> b!5678173 (= e!3494904 (isEmptyLang!1204 lt!2269893))))

(declare-fun b!5678174 () Bool)

(assert (=> b!5678174 (= e!3494906 (= lt!2269893 (head!12051 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5678175 () Bool)

(assert (=> b!5678175 (= e!3494902 e!3494903)))

(declare-fun c!999058 () Bool)

(assert (=> b!5678175 (= c!999058 ((_ is Cons!63182) (unfocusZipperList!1097 zl!343)))))

(assert (= (and d!1792122 res!2399447) b!5678172))

(assert (= (and d!1792122 c!999059) b!5678171))

(assert (= (and d!1792122 (not c!999059)) b!5678175))

(assert (= (and b!5678175 c!999058) b!5678167))

(assert (= (and b!5678175 (not c!999058)) b!5678168))

(assert (= (and d!1792122 res!2399446) b!5678169))

(assert (= (and b!5678169 c!999060) b!5678173))

(assert (= (and b!5678169 (not c!999060)) b!5678170))

(assert (= (and b!5678170 c!999057) b!5678174))

(assert (= (and b!5678170 (not c!999057)) b!5678166))

(declare-fun m!6638184 () Bool)

(assert (=> d!1792122 m!6638184))

(assert (=> d!1792122 m!6637778))

(declare-fun m!6638186 () Bool)

(assert (=> d!1792122 m!6638186))

(declare-fun m!6638188 () Bool)

(assert (=> b!5678172 m!6638188))

(declare-fun m!6638190 () Bool)

(assert (=> b!5678167 m!6638190))

(declare-fun m!6638192 () Bool)

(assert (=> b!5678166 m!6638192))

(declare-fun m!6638194 () Bool)

(assert (=> b!5678173 m!6638194))

(assert (=> b!5678174 m!6637778))

(declare-fun m!6638196 () Bool)

(assert (=> b!5678174 m!6638196))

(assert (=> b!5678170 m!6637778))

(declare-fun m!6638198 () Bool)

(assert (=> b!5678170 m!6638198))

(assert (=> b!5678170 m!6638198))

(declare-fun m!6638200 () Bool)

(assert (=> b!5678170 m!6638200))

(assert (=> b!5678169 m!6637778))

(declare-fun m!6638202 () Bool)

(assert (=> b!5678169 m!6638202))

(assert (=> b!5677549 d!1792122))

(declare-fun bs!1323513 () Bool)

(declare-fun d!1792124 () Bool)

(assert (= bs!1323513 (and d!1792124 d!1792046)))

(declare-fun lambda!305903 () Int)

(assert (=> bs!1323513 (= lambda!305903 lambda!305874)))

(declare-fun bs!1323514 () Bool)

(assert (= bs!1323514 (and d!1792124 d!1792086)))

(assert (=> bs!1323514 (= lambda!305903 lambda!305880)))

(declare-fun bs!1323515 () Bool)

(assert (= bs!1323515 (and d!1792124 d!1792092)))

(assert (=> bs!1323515 (= lambda!305903 lambda!305881)))

(declare-fun bs!1323516 () Bool)

(assert (= bs!1323516 (and d!1792124 d!1792122)))

(assert (=> bs!1323516 (= lambda!305903 lambda!305900)))

(declare-fun lt!2269896 () List!63306)

(assert (=> d!1792124 (forall!14818 lt!2269896 lambda!305903)))

(declare-fun e!3494909 () List!63306)

(assert (=> d!1792124 (= lt!2269896 e!3494909)))

(declare-fun c!999063 () Bool)

(assert (=> d!1792124 (= c!999063 ((_ is Cons!63183) zl!343))))

(assert (=> d!1792124 (= (unfocusZipperList!1097 zl!343) lt!2269896)))

(declare-fun b!5678180 () Bool)

(assert (=> b!5678180 (= e!3494909 (Cons!63182 (generalisedConcat!1284 (exprs!5553 (h!69631 zl!343))) (unfocusZipperList!1097 (t!376617 zl!343))))))

(declare-fun b!5678181 () Bool)

(assert (=> b!5678181 (= e!3494909 Nil!63182)))

(assert (= (and d!1792124 c!999063) b!5678180))

(assert (= (and d!1792124 (not c!999063)) b!5678181))

(declare-fun m!6638204 () Bool)

(assert (=> d!1792124 m!6638204))

(assert (=> b!5678180 m!6637776))

(declare-fun m!6638206 () Bool)

(assert (=> b!5678180 m!6638206))

(assert (=> b!5677549 d!1792124))

(declare-fun bs!1323517 () Bool)

(declare-fun d!1792126 () Bool)

(assert (= bs!1323517 (and d!1792126 b!5677532)))

(declare-fun lambda!305906 () Int)

(assert (=> bs!1323517 (= lambda!305906 lambda!305853)))

(assert (=> d!1792126 true))

(assert (=> d!1792126 (= (derivationStepZipper!1754 lt!2269814 (h!69632 s!2326)) (flatMap!1282 lt!2269814 lambda!305906))))

(declare-fun bs!1323518 () Bool)

(assert (= bs!1323518 d!1792126))

(declare-fun m!6638208 () Bool)

(assert (=> bs!1323518 m!6638208))

(assert (=> b!5677528 d!1792126))

(declare-fun d!1792128 () Bool)

(assert (=> d!1792128 (= (flatMap!1282 lt!2269814 lambda!305853) (choose!42950 lt!2269814 lambda!305853))))

(declare-fun bs!1323519 () Bool)

(assert (= bs!1323519 d!1792128))

(declare-fun m!6638210 () Bool)

(assert (=> bs!1323519 m!6638210))

(assert (=> b!5677528 d!1792128))

(declare-fun d!1792130 () Bool)

(declare-fun c!999067 () Bool)

(declare-fun e!3494910 () Bool)

(assert (=> d!1792130 (= c!999067 e!3494910)))

(declare-fun res!2399448 () Bool)

(assert (=> d!1792130 (=> (not res!2399448) (not e!3494910))))

(assert (=> d!1792130 (= res!2399448 ((_ is Cons!63182) (exprs!5553 lt!2269809)))))

(declare-fun e!3494912 () (InoxSet Context!10106))

(assert (=> d!1792130 (= (derivationStepZipperUp!937 lt!2269809 (h!69632 s!2326)) e!3494912)))

(declare-fun bm!430973 () Bool)

(declare-fun call!430978 () (InoxSet Context!10106))

(assert (=> bm!430973 (= call!430978 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 lt!2269809)) (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (h!69632 s!2326)))))

(declare-fun b!5678184 () Bool)

(declare-fun e!3494911 () (InoxSet Context!10106))

(assert (=> b!5678184 (= e!3494912 e!3494911)))

(declare-fun c!999066 () Bool)

(assert (=> b!5678184 (= c!999066 ((_ is Cons!63182) (exprs!5553 lt!2269809)))))

(declare-fun b!5678185 () Bool)

(assert (=> b!5678185 (= e!3494911 call!430978)))

(declare-fun b!5678186 () Bool)

(assert (=> b!5678186 (= e!3494912 ((_ map or) call!430978 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (h!69632 s!2326))))))

(declare-fun b!5678187 () Bool)

(assert (=> b!5678187 (= e!3494910 (nullable!5701 (h!69630 (exprs!5553 lt!2269809))))))

(declare-fun b!5678188 () Bool)

(assert (=> b!5678188 (= e!3494911 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792130 res!2399448) b!5678187))

(assert (= (and d!1792130 c!999067) b!5678186))

(assert (= (and d!1792130 (not c!999067)) b!5678184))

(assert (= (and b!5678184 c!999066) b!5678185))

(assert (= (and b!5678184 (not c!999066)) b!5678188))

(assert (= (or b!5678186 b!5678185) bm!430973))

(declare-fun m!6638212 () Bool)

(assert (=> bm!430973 m!6638212))

(declare-fun m!6638214 () Bool)

(assert (=> b!5678186 m!6638214))

(declare-fun m!6638216 () Bool)

(assert (=> b!5678187 m!6638216))

(assert (=> b!5677528 d!1792130))

(declare-fun d!1792132 () Bool)

(assert (=> d!1792132 (= (flatMap!1282 lt!2269814 lambda!305853) (dynLambda!24726 lambda!305853 lt!2269809))))

(declare-fun lt!2269897 () Unit!156208)

(assert (=> d!1792132 (= lt!2269897 (choose!42953 lt!2269814 lt!2269809 lambda!305853))))

(assert (=> d!1792132 (= lt!2269814 (store ((as const (Array Context!10106 Bool)) false) lt!2269809 true))))

(assert (=> d!1792132 (= (lemmaFlatMapOnSingletonSet!814 lt!2269814 lt!2269809 lambda!305853) lt!2269897)))

(declare-fun b_lambda!214705 () Bool)

(assert (=> (not b_lambda!214705) (not d!1792132)))

(declare-fun bs!1323520 () Bool)

(assert (= bs!1323520 d!1792132))

(assert (=> bs!1323520 m!6637824))

(declare-fun m!6638218 () Bool)

(assert (=> bs!1323520 m!6638218))

(declare-fun m!6638220 () Bool)

(assert (=> bs!1323520 m!6638220))

(assert (=> bs!1323520 m!6637822))

(assert (=> b!5677528 d!1792132))

(declare-fun b!5678207 () Bool)

(declare-fun e!3494926 () Bool)

(assert (=> b!5678207 (= e!3494926 (matchR!7854 (regTwo!31850 r!7292) s!2326))))

(declare-fun b!5678208 () Bool)

(declare-fun e!3494925 () Bool)

(declare-fun lt!2269905 () Option!15678)

(assert (=> b!5678208 (= e!3494925 (not (isDefined!12381 lt!2269905)))))

(declare-fun b!5678209 () Bool)

(declare-fun e!3494924 () Option!15678)

(assert (=> b!5678209 (= e!3494924 None!15677)))

(declare-fun d!1792134 () Bool)

(assert (=> d!1792134 e!3494925))

(declare-fun res!2399461 () Bool)

(assert (=> d!1792134 (=> res!2399461 e!3494925)))

(declare-fun e!3494923 () Bool)

(assert (=> d!1792134 (= res!2399461 e!3494923)))

(declare-fun res!2399462 () Bool)

(assert (=> d!1792134 (=> (not res!2399462) (not e!3494923))))

(assert (=> d!1792134 (= res!2399462 (isDefined!12381 lt!2269905))))

(declare-fun e!3494927 () Option!15678)

(assert (=> d!1792134 (= lt!2269905 e!3494927)))

(declare-fun c!999072 () Bool)

(assert (=> d!1792134 (= c!999072 e!3494926)))

(declare-fun res!2399460 () Bool)

(assert (=> d!1792134 (=> (not res!2399460) (not e!3494926))))

(assert (=> d!1792134 (= res!2399460 (matchR!7854 (regOne!31850 r!7292) Nil!63184))))

(assert (=> d!1792134 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792134 (= (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326) lt!2269905)))

(declare-fun b!5678210 () Bool)

(declare-fun lt!2269906 () Unit!156208)

(declare-fun lt!2269904 () Unit!156208)

(assert (=> b!5678210 (= lt!2269906 lt!2269904)))

(declare-fun ++!13869 (List!63308 List!63308) List!63308)

(assert (=> b!5678210 (= (++!13869 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2038 (List!63308 C!31608 List!63308 List!63308) Unit!156208)

(assert (=> b!5678210 (= lt!2269904 (lemmaMoveElementToOtherListKeepsConcatEq!2038 Nil!63184 (h!69632 s!2326) (t!376618 s!2326) s!2326))))

(assert (=> b!5678210 (= e!3494924 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326) s!2326))))

(declare-fun b!5678211 () Bool)

(assert (=> b!5678211 (= e!3494927 (Some!15677 (tuple2!65533 Nil!63184 s!2326)))))

(declare-fun b!5678212 () Bool)

(assert (=> b!5678212 (= e!3494927 e!3494924)))

(declare-fun c!999073 () Bool)

(assert (=> b!5678212 (= c!999073 ((_ is Nil!63184) s!2326))))

(declare-fun b!5678213 () Bool)

(declare-fun res!2399463 () Bool)

(assert (=> b!5678213 (=> (not res!2399463) (not e!3494923))))

(declare-fun get!21771 (Option!15678) tuple2!65532)

(assert (=> b!5678213 (= res!2399463 (matchR!7854 (regTwo!31850 r!7292) (_2!36069 (get!21771 lt!2269905))))))

(declare-fun b!5678214 () Bool)

(assert (=> b!5678214 (= e!3494923 (= (++!13869 (_1!36069 (get!21771 lt!2269905)) (_2!36069 (get!21771 lt!2269905))) s!2326))))

(declare-fun b!5678215 () Bool)

(declare-fun res!2399459 () Bool)

(assert (=> b!5678215 (=> (not res!2399459) (not e!3494923))))

(assert (=> b!5678215 (= res!2399459 (matchR!7854 (regOne!31850 r!7292) (_1!36069 (get!21771 lt!2269905))))))

(assert (= (and d!1792134 res!2399460) b!5678207))

(assert (= (and d!1792134 c!999072) b!5678211))

(assert (= (and d!1792134 (not c!999072)) b!5678212))

(assert (= (and b!5678212 c!999073) b!5678209))

(assert (= (and b!5678212 (not c!999073)) b!5678210))

(assert (= (and d!1792134 res!2399462) b!5678215))

(assert (= (and b!5678215 res!2399459) b!5678213))

(assert (= (and b!5678213 res!2399463) b!5678214))

(assert (= (and d!1792134 (not res!2399461)) b!5678208))

(declare-fun m!6638222 () Bool)

(assert (=> b!5678213 m!6638222))

(declare-fun m!6638224 () Bool)

(assert (=> b!5678213 m!6638224))

(declare-fun m!6638226 () Bool)

(assert (=> b!5678208 m!6638226))

(declare-fun m!6638228 () Bool)

(assert (=> b!5678207 m!6638228))

(assert (=> d!1792134 m!6638226))

(declare-fun m!6638230 () Bool)

(assert (=> d!1792134 m!6638230))

(declare-fun m!6638232 () Bool)

(assert (=> d!1792134 m!6638232))

(assert (=> b!5678214 m!6638222))

(declare-fun m!6638234 () Bool)

(assert (=> b!5678214 m!6638234))

(declare-fun m!6638236 () Bool)

(assert (=> b!5678210 m!6638236))

(assert (=> b!5678210 m!6638236))

(declare-fun m!6638238 () Bool)

(assert (=> b!5678210 m!6638238))

(declare-fun m!6638240 () Bool)

(assert (=> b!5678210 m!6638240))

(assert (=> b!5678210 m!6638236))

(declare-fun m!6638242 () Bool)

(assert (=> b!5678210 m!6638242))

(assert (=> b!5678215 m!6638222))

(declare-fun m!6638244 () Bool)

(assert (=> b!5678215 m!6638244))

(assert (=> b!5677537 d!1792134))

(declare-fun d!1792136 () Bool)

(declare-fun choose!42960 (Int) Bool)

(assert (=> d!1792136 (= (Exists!2769 lambda!305852) (choose!42960 lambda!305852))))

(declare-fun bs!1323521 () Bool)

(assert (= bs!1323521 d!1792136))

(declare-fun m!6638246 () Bool)

(assert (=> bs!1323521 m!6638246))

(assert (=> b!5677537 d!1792136))

(declare-fun bs!1323522 () Bool)

(declare-fun d!1792138 () Bool)

(assert (= bs!1323522 (and d!1792138 b!5677537)))

(declare-fun lambda!305911 () Int)

(assert (=> bs!1323522 (= lambda!305911 lambda!305851)))

(assert (=> bs!1323522 (not (= lambda!305911 lambda!305852))))

(declare-fun bs!1323523 () Bool)

(assert (= bs!1323523 (and d!1792138 b!5678080)))

(assert (=> bs!1323523 (not (= lambda!305911 lambda!305896))))

(declare-fun bs!1323524 () Bool)

(assert (= bs!1323524 (and d!1792138 b!5678082)))

(assert (=> bs!1323524 (not (= lambda!305911 lambda!305897))))

(assert (=> d!1792138 true))

(assert (=> d!1792138 true))

(assert (=> d!1792138 true))

(declare-fun bs!1323525 () Bool)

(assert (= bs!1323525 d!1792138))

(declare-fun lambda!305912 () Int)

(assert (=> bs!1323525 (not (= lambda!305912 lambda!305911))))

(assert (=> bs!1323523 (not (= lambda!305912 lambda!305896))))

(assert (=> bs!1323524 (= lambda!305912 lambda!305897)))

(assert (=> bs!1323522 (not (= lambda!305912 lambda!305851))))

(assert (=> bs!1323522 (= lambda!305912 lambda!305852)))

(assert (=> d!1792138 true))

(assert (=> d!1792138 true))

(assert (=> d!1792138 true))

(assert (=> d!1792138 (= (Exists!2769 lambda!305911) (Exists!2769 lambda!305912))))

(declare-fun lt!2269909 () Unit!156208)

(declare-fun choose!42961 (Regex!15669 Regex!15669 List!63308) Unit!156208)

(assert (=> d!1792138 (= lt!2269909 (choose!42961 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326))))

(assert (=> d!1792138 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792138 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1398 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326) lt!2269909)))

(declare-fun m!6638248 () Bool)

(assert (=> bs!1323525 m!6638248))

(declare-fun m!6638250 () Bool)

(assert (=> bs!1323525 m!6638250))

(declare-fun m!6638252 () Bool)

(assert (=> bs!1323525 m!6638252))

(assert (=> bs!1323525 m!6638232))

(assert (=> b!5677537 d!1792138))

(declare-fun d!1792140 () Bool)

(declare-fun isEmpty!35038 (Option!15678) Bool)

(assert (=> d!1792140 (= (isDefined!12381 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326)) (not (isEmpty!35038 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326))))))

(declare-fun bs!1323526 () Bool)

(assert (= bs!1323526 d!1792140))

(assert (=> bs!1323526 m!6637764))

(declare-fun m!6638254 () Bool)

(assert (=> bs!1323526 m!6638254))

(assert (=> b!5677537 d!1792140))

(declare-fun bs!1323527 () Bool)

(declare-fun d!1792142 () Bool)

(assert (= bs!1323527 (and d!1792142 d!1792138)))

(declare-fun lambda!305915 () Int)

(assert (=> bs!1323527 (= lambda!305915 lambda!305911)))

(assert (=> bs!1323527 (not (= lambda!305915 lambda!305912))))

(declare-fun bs!1323528 () Bool)

(assert (= bs!1323528 (and d!1792142 b!5678080)))

(assert (=> bs!1323528 (not (= lambda!305915 lambda!305896))))

(declare-fun bs!1323529 () Bool)

(assert (= bs!1323529 (and d!1792142 b!5678082)))

(assert (=> bs!1323529 (not (= lambda!305915 lambda!305897))))

(declare-fun bs!1323530 () Bool)

(assert (= bs!1323530 (and d!1792142 b!5677537)))

(assert (=> bs!1323530 (= lambda!305915 lambda!305851)))

(assert (=> bs!1323530 (not (= lambda!305915 lambda!305852))))

(assert (=> d!1792142 true))

(assert (=> d!1792142 true))

(assert (=> d!1792142 true))

(assert (=> d!1792142 (= (isDefined!12381 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326)) (Exists!2769 lambda!305915))))

(declare-fun lt!2269912 () Unit!156208)

(declare-fun choose!42962 (Regex!15669 Regex!15669 List!63308) Unit!156208)

(assert (=> d!1792142 (= lt!2269912 (choose!42962 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326))))

(assert (=> d!1792142 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792142 (= (lemmaFindConcatSeparationEquivalentToExists!1856 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326) lt!2269912)))

(declare-fun bs!1323531 () Bool)

(assert (= bs!1323531 d!1792142))

(declare-fun m!6638256 () Bool)

(assert (=> bs!1323531 m!6638256))

(assert (=> bs!1323531 m!6637764))

(assert (=> bs!1323531 m!6637766))

(assert (=> bs!1323531 m!6637764))

(assert (=> bs!1323531 m!6638232))

(declare-fun m!6638258 () Bool)

(assert (=> bs!1323531 m!6638258))

(assert (=> b!5677537 d!1792142))

(declare-fun d!1792144 () Bool)

(assert (=> d!1792144 (= (Exists!2769 lambda!305851) (choose!42960 lambda!305851))))

(declare-fun bs!1323532 () Bool)

(assert (= bs!1323532 d!1792144))

(declare-fun m!6638260 () Bool)

(assert (=> bs!1323532 m!6638260))

(assert (=> b!5677537 d!1792144))

(declare-fun b!5678235 () Bool)

(declare-fun e!3494939 () Bool)

(declare-fun tp!1574493 () Bool)

(assert (=> b!5678235 (= e!3494939 tp!1574493)))

(declare-fun tp!1574494 () Bool)

(declare-fun e!3494938 () Bool)

(declare-fun b!5678234 () Bool)

(assert (=> b!5678234 (= e!3494938 (and (inv!82419 (h!69631 (t!376617 zl!343))) e!3494939 tp!1574494))))

(assert (=> b!5677547 (= tp!1574426 e!3494938)))

(assert (= b!5678234 b!5678235))

(assert (= (and b!5677547 ((_ is Cons!63183) (t!376617 zl!343))) b!5678234))

(declare-fun m!6638262 () Bool)

(assert (=> b!5678234 m!6638262))

(declare-fun b!5678240 () Bool)

(declare-fun e!3494942 () Bool)

(declare-fun tp!1574497 () Bool)

(assert (=> b!5678240 (= e!3494942 (and tp_is_empty!40591 tp!1574497))))

(assert (=> b!5677536 (= tp!1574429 e!3494942)))

(assert (= (and b!5677536 ((_ is Cons!63184) (t!376618 s!2326))) b!5678240))

(declare-fun b!5678252 () Bool)

(declare-fun e!3494945 () Bool)

(declare-fun tp!1574512 () Bool)

(declare-fun tp!1574511 () Bool)

(assert (=> b!5678252 (= e!3494945 (and tp!1574512 tp!1574511))))

(declare-fun b!5678251 () Bool)

(assert (=> b!5678251 (= e!3494945 tp_is_empty!40591)))

(assert (=> b!5677541 (= tp!1574423 e!3494945)))

(declare-fun b!5678253 () Bool)

(declare-fun tp!1574510 () Bool)

(assert (=> b!5678253 (= e!3494945 tp!1574510)))

(declare-fun b!5678254 () Bool)

(declare-fun tp!1574508 () Bool)

(declare-fun tp!1574509 () Bool)

(assert (=> b!5678254 (= e!3494945 (and tp!1574508 tp!1574509))))

(assert (= (and b!5677541 ((_ is ElementMatch!15669) (regOne!31851 r!7292))) b!5678251))

(assert (= (and b!5677541 ((_ is Concat!24514) (regOne!31851 r!7292))) b!5678252))

(assert (= (and b!5677541 ((_ is Star!15669) (regOne!31851 r!7292))) b!5678253))

(assert (= (and b!5677541 ((_ is Union!15669) (regOne!31851 r!7292))) b!5678254))

(declare-fun b!5678256 () Bool)

(declare-fun e!3494946 () Bool)

(declare-fun tp!1574517 () Bool)

(declare-fun tp!1574516 () Bool)

(assert (=> b!5678256 (= e!3494946 (and tp!1574517 tp!1574516))))

(declare-fun b!5678255 () Bool)

(assert (=> b!5678255 (= e!3494946 tp_is_empty!40591)))

(assert (=> b!5677541 (= tp!1574421 e!3494946)))

(declare-fun b!5678257 () Bool)

(declare-fun tp!1574515 () Bool)

(assert (=> b!5678257 (= e!3494946 tp!1574515)))

(declare-fun b!5678258 () Bool)

(declare-fun tp!1574513 () Bool)

(declare-fun tp!1574514 () Bool)

(assert (=> b!5678258 (= e!3494946 (and tp!1574513 tp!1574514))))

(assert (= (and b!5677541 ((_ is ElementMatch!15669) (regTwo!31851 r!7292))) b!5678255))

(assert (= (and b!5677541 ((_ is Concat!24514) (regTwo!31851 r!7292))) b!5678256))

(assert (= (and b!5677541 ((_ is Star!15669) (regTwo!31851 r!7292))) b!5678257))

(assert (= (and b!5677541 ((_ is Union!15669) (regTwo!31851 r!7292))) b!5678258))

(declare-fun b!5678263 () Bool)

(declare-fun e!3494949 () Bool)

(declare-fun tp!1574522 () Bool)

(declare-fun tp!1574523 () Bool)

(assert (=> b!5678263 (= e!3494949 (and tp!1574522 tp!1574523))))

(assert (=> b!5677545 (= tp!1574422 e!3494949)))

(assert (= (and b!5677545 ((_ is Cons!63182) (exprs!5553 (h!69631 zl!343)))) b!5678263))

(declare-fun condSetEmpty!37973 () Bool)

(assert (=> setNonEmpty!37967 (= condSetEmpty!37973 (= setRest!37967 ((as const (Array Context!10106 Bool)) false)))))

(declare-fun setRes!37973 () Bool)

(assert (=> setNonEmpty!37967 (= tp!1574428 setRes!37973)))

(declare-fun setIsEmpty!37973 () Bool)

(assert (=> setIsEmpty!37973 setRes!37973))

(declare-fun tp!1574528 () Bool)

(declare-fun setNonEmpty!37973 () Bool)

(declare-fun e!3494952 () Bool)

(declare-fun setElem!37973 () Context!10106)

(assert (=> setNonEmpty!37973 (= setRes!37973 (and tp!1574528 (inv!82419 setElem!37973) e!3494952))))

(declare-fun setRest!37973 () (InoxSet Context!10106))

(assert (=> setNonEmpty!37973 (= setRest!37967 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) setElem!37973 true) setRest!37973))))

(declare-fun b!5678268 () Bool)

(declare-fun tp!1574529 () Bool)

(assert (=> b!5678268 (= e!3494952 tp!1574529)))

(assert (= (and setNonEmpty!37967 condSetEmpty!37973) setIsEmpty!37973))

(assert (= (and setNonEmpty!37967 (not condSetEmpty!37973)) setNonEmpty!37973))

(assert (= setNonEmpty!37973 b!5678268))

(declare-fun m!6638264 () Bool)

(assert (=> setNonEmpty!37973 m!6638264))

(declare-fun b!5678269 () Bool)

(declare-fun e!3494953 () Bool)

(declare-fun tp!1574530 () Bool)

(declare-fun tp!1574531 () Bool)

(assert (=> b!5678269 (= e!3494953 (and tp!1574530 tp!1574531))))

(assert (=> b!5677538 (= tp!1574425 e!3494953)))

(assert (= (and b!5677538 ((_ is Cons!63182) (exprs!5553 setElem!37967))) b!5678269))

(declare-fun b!5678271 () Bool)

(declare-fun e!3494954 () Bool)

(declare-fun tp!1574536 () Bool)

(declare-fun tp!1574535 () Bool)

(assert (=> b!5678271 (= e!3494954 (and tp!1574536 tp!1574535))))

(declare-fun b!5678270 () Bool)

(assert (=> b!5678270 (= e!3494954 tp_is_empty!40591)))

(assert (=> b!5677524 (= tp!1574424 e!3494954)))

(declare-fun b!5678272 () Bool)

(declare-fun tp!1574534 () Bool)

(assert (=> b!5678272 (= e!3494954 tp!1574534)))

(declare-fun b!5678273 () Bool)

(declare-fun tp!1574532 () Bool)

(declare-fun tp!1574533 () Bool)

(assert (=> b!5678273 (= e!3494954 (and tp!1574532 tp!1574533))))

(assert (= (and b!5677524 ((_ is ElementMatch!15669) (regOne!31850 r!7292))) b!5678270))

(assert (= (and b!5677524 ((_ is Concat!24514) (regOne!31850 r!7292))) b!5678271))

(assert (= (and b!5677524 ((_ is Star!15669) (regOne!31850 r!7292))) b!5678272))

(assert (= (and b!5677524 ((_ is Union!15669) (regOne!31850 r!7292))) b!5678273))

(declare-fun b!5678275 () Bool)

(declare-fun e!3494955 () Bool)

(declare-fun tp!1574541 () Bool)

(declare-fun tp!1574540 () Bool)

(assert (=> b!5678275 (= e!3494955 (and tp!1574541 tp!1574540))))

(declare-fun b!5678274 () Bool)

(assert (=> b!5678274 (= e!3494955 tp_is_empty!40591)))

(assert (=> b!5677524 (= tp!1574427 e!3494955)))

(declare-fun b!5678276 () Bool)

(declare-fun tp!1574539 () Bool)

(assert (=> b!5678276 (= e!3494955 tp!1574539)))

(declare-fun b!5678277 () Bool)

(declare-fun tp!1574537 () Bool)

(declare-fun tp!1574538 () Bool)

(assert (=> b!5678277 (= e!3494955 (and tp!1574537 tp!1574538))))

(assert (= (and b!5677524 ((_ is ElementMatch!15669) (regTwo!31850 r!7292))) b!5678274))

(assert (= (and b!5677524 ((_ is Concat!24514) (regTwo!31850 r!7292))) b!5678275))

(assert (= (and b!5677524 ((_ is Star!15669) (regTwo!31850 r!7292))) b!5678276))

(assert (= (and b!5677524 ((_ is Union!15669) (regTwo!31850 r!7292))) b!5678277))

(declare-fun b!5678279 () Bool)

(declare-fun e!3494956 () Bool)

(declare-fun tp!1574546 () Bool)

(declare-fun tp!1574545 () Bool)

(assert (=> b!5678279 (= e!3494956 (and tp!1574546 tp!1574545))))

(declare-fun b!5678278 () Bool)

(assert (=> b!5678278 (= e!3494956 tp_is_empty!40591)))

(assert (=> b!5677527 (= tp!1574430 e!3494956)))

(declare-fun b!5678280 () Bool)

(declare-fun tp!1574544 () Bool)

(assert (=> b!5678280 (= e!3494956 tp!1574544)))

(declare-fun b!5678281 () Bool)

(declare-fun tp!1574542 () Bool)

(declare-fun tp!1574543 () Bool)

(assert (=> b!5678281 (= e!3494956 (and tp!1574542 tp!1574543))))

(assert (= (and b!5677527 ((_ is ElementMatch!15669) (reg!15998 r!7292))) b!5678278))

(assert (= (and b!5677527 ((_ is Concat!24514) (reg!15998 r!7292))) b!5678279))

(assert (= (and b!5677527 ((_ is Star!15669) (reg!15998 r!7292))) b!5678280))

(assert (= (and b!5677527 ((_ is Union!15669) (reg!15998 r!7292))) b!5678281))

(declare-fun b_lambda!214707 () Bool)

(assert (= b_lambda!214705 (or b!5677532 b_lambda!214707)))

(declare-fun bs!1323533 () Bool)

(declare-fun d!1792146 () Bool)

(assert (= bs!1323533 (and d!1792146 b!5677532)))

(assert (=> bs!1323533 (= (dynLambda!24726 lambda!305853 lt!2269809) (derivationStepZipperUp!937 lt!2269809 (h!69632 s!2326)))))

(assert (=> bs!1323533 m!6637828))

(assert (=> d!1792132 d!1792146))

(declare-fun b_lambda!214709 () Bool)

(assert (= b_lambda!214695 (or b!5677532 b_lambda!214709)))

(declare-fun bs!1323534 () Bool)

(declare-fun d!1792148 () Bool)

(assert (= bs!1323534 (and d!1792148 b!5677532)))

(assert (=> bs!1323534 (= (dynLambda!24726 lambda!305853 (h!69631 zl!343)) (derivationStepZipperUp!937 (h!69631 zl!343) (h!69632 s!2326)))))

(assert (=> bs!1323534 m!6637800))

(assert (=> d!1792020 d!1792148))

(check-sat (not b!5678253) (not b!5677603) (not b!5678132) (not b!5677818) (not b!5678215) (not b!5677958) (not d!1792140) (not b!5677963) (not d!1792092) (not d!1792136) (not d!1792006) (not d!1792082) (not b!5678240) (not b!5677763) (not d!1792052) (not b!5678169) (not bm!430903) (not b!5678170) (not b!5677610) (not d!1792034) (not bm!430909) (not b!5678145) (not b!5678214) (not b!5678186) (not b!5677602) (not d!1791998) (not b!5678279) (not b!5677959) (not bm!430973) (not b!5678136) (not b!5678254) (not b!5678252) (not b!5678263) (not d!1792080) (not b_lambda!214709) (not setNonEmpty!37973) (not b!5677956) (not b!5678172) (not b!5678085) (not d!1792046) (not b!5678235) (not bm!430934) (not b!5678167) (not b!5677890) (not b!5678180) (not b!5678269) (not d!1792086) (not b!5677832) (not b!5678166) (not d!1792142) (not b!5678275) (not bm!430881) (not d!1792020) (not d!1792124) (not b!5678213) (not b!5678268) (not b!5678234) (not bm!430960) (not b!5677962) (not b!5677954) (not b!5677893) (not b!5678271) (not d!1792144) (not b!5677609) (not bm!430959) (not b!5678277) (not d!1792058) (not d!1792138) (not b!5678280) (not b!5678131) (not bs!1323534) tp_is_empty!40591 (not bs!1323533) (not b!5678276) (not b!5678208) (not bm!430880) (not b!5678086) (not b!5678138) (not d!1792122) (not d!1792126) (not bm!430961) (not b!5678210) (not b!5678272) (not bm!430972) (not d!1792116) (not d!1792120) (not b_lambda!214707) (not d!1792134) (not b!5677762) (not b!5678257) (not b!5677974) (not b!5677709) (not b!5678281) (not b!5678173) (not b!5677895) (not b!5678258) (not d!1792118) (not b!5678134) (not bm!430936) (not b!5677960) (not b!5678207) (not b!5677894) (not b!5678187) (not bm!430901) (not b!5678174) (not b!5678256) (not bm!430902) (not d!1792132) (not b!5678273) (not d!1792128) (not bm!430969) (not b!5677896) (not b!5678135) (not bm!430968) (not d!1792084) (not b!5677833))
(check-sat)
(get-model)

(declare-fun c!999097 () Bool)

(declare-fun call!431002 () List!63306)

(declare-fun call!431005 () (InoxSet Context!10106))

(declare-fun bm!430996 () Bool)

(assert (=> bm!430996 (= call!431005 (derivationStepZipperDown!1011 (ite c!999097 (regTwo!31851 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (regOne!31850 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))) (ite c!999097 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (Context!10107 call!431002)) (h!69632 s!2326)))))

(declare-fun b!5678367 () Bool)

(declare-fun e!3495023 () (InoxSet Context!10106))

(declare-fun call!431001 () (InoxSet Context!10106))

(assert (=> b!5678367 (= e!3495023 ((_ map or) call!431001 call!431005))))

(declare-fun b!5678368 () Bool)

(declare-fun e!3495020 () (InoxSet Context!10106))

(declare-fun e!3495022 () (InoxSet Context!10106))

(assert (=> b!5678368 (= e!3495020 e!3495022)))

(declare-fun c!999094 () Bool)

(assert (=> b!5678368 (= c!999094 ((_ is Concat!24514) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun b!5678369 () Bool)

(declare-fun e!3495019 () Bool)

(assert (=> b!5678369 (= e!3495019 (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))))

(declare-fun b!5678370 () Bool)

(declare-fun c!999095 () Bool)

(assert (=> b!5678370 (= c!999095 e!3495019)))

(declare-fun res!2399524 () Bool)

(assert (=> b!5678370 (=> (not res!2399524) (not e!3495019))))

(assert (=> b!5678370 (= res!2399524 ((_ is Concat!24514) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(assert (=> b!5678370 (= e!3495023 e!3495020)))

(declare-fun bm!430997 () Bool)

(assert (=> bm!430997 (= call!431002 ($colon$colon!1702 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))) (ite (or c!999095 c!999094) (regTwo!31850 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))))

(declare-fun b!5678371 () Bool)

(declare-fun call!431000 () (InoxSet Context!10106))

(assert (=> b!5678371 (= e!3495022 call!431000)))

(declare-fun b!5678372 () Bool)

(declare-fun call!431004 () (InoxSet Context!10106))

(assert (=> b!5678372 (= e!3495020 ((_ map or) call!431005 call!431004))))

(declare-fun b!5678373 () Bool)

(declare-fun c!999098 () Bool)

(assert (=> b!5678373 (= c!999098 ((_ is Star!15669) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun e!3495021 () (InoxSet Context!10106))

(assert (=> b!5678373 (= e!3495022 e!3495021)))

(declare-fun bm!430995 () Bool)

(declare-fun call!431003 () List!63306)

(assert (=> bm!430995 (= call!431003 call!431002)))

(declare-fun d!1792208 () Bool)

(declare-fun c!999096 () Bool)

(assert (=> d!1792208 (= c!999096 (and ((_ is ElementMatch!15669) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (= (c!998875 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326))))))

(declare-fun e!3495018 () (InoxSet Context!10106))

(assert (=> d!1792208 (= (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326)) e!3495018)))

(declare-fun b!5678374 () Bool)

(assert (=> b!5678374 (= e!3495018 (store ((as const (Array Context!10106 Bool)) false) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) true))))

(declare-fun b!5678375 () Bool)

(assert (=> b!5678375 (= e!3495021 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678376 () Bool)

(assert (=> b!5678376 (= e!3495018 e!3495023)))

(assert (=> b!5678376 (= c!999097 ((_ is Union!15669) (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun bm!430998 () Bool)

(assert (=> bm!430998 (= call!431001 (derivationStepZipperDown!1011 (ite c!999097 (regOne!31851 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (ite c!999095 (regTwo!31850 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (ite c!999094 (regOne!31850 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (reg!15998 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))) (ite (or c!999097 c!999095) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (Context!10107 call!431003)) (h!69632 s!2326)))))

(declare-fun b!5678377 () Bool)

(assert (=> b!5678377 (= e!3495021 call!431000)))

(declare-fun bm!430999 () Bool)

(assert (=> bm!430999 (= call!431000 call!431004)))

(declare-fun bm!431000 () Bool)

(assert (=> bm!431000 (= call!431004 call!431001)))

(assert (= (and d!1792208 c!999096) b!5678374))

(assert (= (and d!1792208 (not c!999096)) b!5678376))

(assert (= (and b!5678376 c!999097) b!5678367))

(assert (= (and b!5678376 (not c!999097)) b!5678370))

(assert (= (and b!5678370 res!2399524) b!5678369))

(assert (= (and b!5678370 c!999095) b!5678372))

(assert (= (and b!5678370 (not c!999095)) b!5678368))

(assert (= (and b!5678368 c!999094) b!5678371))

(assert (= (and b!5678368 (not c!999094)) b!5678373))

(assert (= (and b!5678373 c!999098) b!5678377))

(assert (= (and b!5678373 (not c!999098)) b!5678375))

(assert (= (or b!5678371 b!5678377) bm!430995))

(assert (= (or b!5678371 b!5678377) bm!430999))

(assert (= (or b!5678372 bm!430995) bm!430997))

(assert (= (or b!5678372 bm!430999) bm!431000))

(assert (= (or b!5678367 b!5678372) bm!430996))

(assert (= (or b!5678367 bm!431000) bm!430998))

(declare-fun m!6638350 () Bool)

(assert (=> b!5678374 m!6638350))

(declare-fun m!6638352 () Bool)

(assert (=> bm!430996 m!6638352))

(declare-fun m!6638354 () Bool)

(assert (=> b!5678369 m!6638354))

(declare-fun m!6638356 () Bool)

(assert (=> bm!430998 m!6638356))

(declare-fun m!6638358 () Bool)

(assert (=> bm!430997 m!6638358))

(assert (=> bm!430881 d!1792208))

(declare-fun d!1792210 () Bool)

(assert (=> d!1792210 (= (nullable!5701 (reg!15998 r!7292)) (nullableFct!1781 (reg!15998 r!7292)))))

(declare-fun bs!1323550 () Bool)

(assert (= bs!1323550 d!1792210))

(declare-fun m!6638360 () Bool)

(assert (=> bs!1323550 m!6638360))

(assert (=> b!5677818 d!1792210))

(assert (=> d!1792020 d!1791998))

(declare-fun d!1792212 () Bool)

(assert (=> d!1792212 (= (flatMap!1282 z!1189 lambda!305853) (dynLambda!24726 lambda!305853 (h!69631 zl!343)))))

(assert (=> d!1792212 true))

(declare-fun _$13!2328 () Unit!156208)

(assert (=> d!1792212 (= (choose!42953 z!1189 (h!69631 zl!343) lambda!305853) _$13!2328)))

(declare-fun b_lambda!214713 () Bool)

(assert (=> (not b_lambda!214713) (not d!1792212)))

(declare-fun bs!1323551 () Bool)

(assert (= bs!1323551 d!1792212))

(assert (=> bs!1323551 m!6637806))

(assert (=> bs!1323551 m!6637926))

(assert (=> d!1792020 d!1792212))

(declare-fun bm!431002 () Bool)

(declare-fun call!431011 () (InoxSet Context!10106))

(declare-fun call!431008 () List!63306)

(declare-fun c!999102 () Bool)

(assert (=> bm!431002 (= call!431011 (derivationStepZipperDown!1011 (ite c!999102 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))) (ite c!999102 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (Context!10107 call!431008)) (h!69632 s!2326)))))

(declare-fun b!5678378 () Bool)

(declare-fun e!3495029 () (InoxSet Context!10106))

(declare-fun call!431007 () (InoxSet Context!10106))

(assert (=> b!5678378 (= e!3495029 ((_ map or) call!431007 call!431011))))

(declare-fun b!5678379 () Bool)

(declare-fun e!3495026 () (InoxSet Context!10106))

(declare-fun e!3495028 () (InoxSet Context!10106))

(assert (=> b!5678379 (= e!3495026 e!3495028)))

(declare-fun c!999099 () Bool)

(assert (=> b!5678379 (= c!999099 ((_ is Concat!24514) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5678380 () Bool)

(declare-fun e!3495025 () Bool)

(assert (=> b!5678380 (= e!3495025 (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5678381 () Bool)

(declare-fun c!999100 () Bool)

(assert (=> b!5678381 (= c!999100 e!3495025)))

(declare-fun res!2399525 () Bool)

(assert (=> b!5678381 (=> (not res!2399525) (not e!3495025))))

(assert (=> b!5678381 (= res!2399525 ((_ is Concat!24514) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> b!5678381 (= e!3495029 e!3495026)))

(declare-fun bm!431003 () Bool)

(assert (=> bm!431003 (= call!431008 ($colon$colon!1702 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343))))) (ite (or c!999100 c!999099) (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69630 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5678382 () Bool)

(declare-fun call!431006 () (InoxSet Context!10106))

(assert (=> b!5678382 (= e!3495028 call!431006)))

(declare-fun b!5678383 () Bool)

(declare-fun call!431010 () (InoxSet Context!10106))

(assert (=> b!5678383 (= e!3495026 ((_ map or) call!431011 call!431010))))

(declare-fun b!5678384 () Bool)

(declare-fun c!999103 () Bool)

(assert (=> b!5678384 (= c!999103 ((_ is Star!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun e!3495027 () (InoxSet Context!10106))

(assert (=> b!5678384 (= e!3495028 e!3495027)))

(declare-fun bm!431001 () Bool)

(declare-fun call!431009 () List!63306)

(assert (=> bm!431001 (= call!431009 call!431008)))

(declare-fun d!1792214 () Bool)

(declare-fun c!999101 () Bool)

(assert (=> d!1792214 (= c!999101 (and ((_ is ElementMatch!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))) (= (c!998875 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326))))))

(declare-fun e!3495024 () (InoxSet Context!10106))

(assert (=> d!1792214 (= (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (h!69631 zl!343))) (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326)) e!3495024)))

(declare-fun b!5678385 () Bool)

(assert (=> b!5678385 (= e!3495024 (store ((as const (Array Context!10106 Bool)) false) (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) true))))

(declare-fun b!5678386 () Bool)

(assert (=> b!5678386 (= e!3495027 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678387 () Bool)

(assert (=> b!5678387 (= e!3495024 e!3495029)))

(assert (=> b!5678387 (= c!999102 ((_ is Union!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun bm!431004 () Bool)

(assert (=> bm!431004 (= call!431007 (derivationStepZipperDown!1011 (ite c!999102 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!999100 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!999099 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))) (ite (or c!999102 c!999100) (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (Context!10107 call!431009)) (h!69632 s!2326)))))

(declare-fun b!5678388 () Bool)

(assert (=> b!5678388 (= e!3495027 call!431006)))

(declare-fun bm!431005 () Bool)

(assert (=> bm!431005 (= call!431006 call!431010)))

(declare-fun bm!431006 () Bool)

(assert (=> bm!431006 (= call!431010 call!431007)))

(assert (= (and d!1792214 c!999101) b!5678385))

(assert (= (and d!1792214 (not c!999101)) b!5678387))

(assert (= (and b!5678387 c!999102) b!5678378))

(assert (= (and b!5678387 (not c!999102)) b!5678381))

(assert (= (and b!5678381 res!2399525) b!5678380))

(assert (= (and b!5678381 c!999100) b!5678383))

(assert (= (and b!5678381 (not c!999100)) b!5678379))

(assert (= (and b!5678379 c!999099) b!5678382))

(assert (= (and b!5678379 (not c!999099)) b!5678384))

(assert (= (and b!5678384 c!999103) b!5678388))

(assert (= (and b!5678384 (not c!999103)) b!5678386))

(assert (= (or b!5678382 b!5678388) bm!431001))

(assert (= (or b!5678382 b!5678388) bm!431005))

(assert (= (or b!5678383 bm!431001) bm!431003))

(assert (= (or b!5678383 bm!431005) bm!431006))

(assert (= (or b!5678378 b!5678383) bm!431002))

(assert (= (or b!5678378 bm!431006) bm!431004))

(declare-fun m!6638362 () Bool)

(assert (=> b!5678385 m!6638362))

(declare-fun m!6638364 () Bool)

(assert (=> bm!431002 m!6638364))

(assert (=> b!5678380 m!6637908))

(declare-fun m!6638366 () Bool)

(assert (=> bm!431004 m!6638366))

(declare-fun m!6638368 () Bool)

(assert (=> bm!431003 m!6638368))

(assert (=> bm!430909 d!1792214))

(declare-fun d!1792216 () Bool)

(assert (=> d!1792216 (= (head!12050 s!2326) (h!69632 s!2326))))

(assert (=> b!5678135 d!1792216))

(declare-fun d!1792218 () Bool)

(assert (=> d!1792218 true))

(assert (=> d!1792218 true))

(declare-fun res!2399530 () Bool)

(assert (=> d!1792218 (= (choose!42960 lambda!305852) res!2399530)))

(assert (=> d!1792136 d!1792218))

(declare-fun d!1792220 () Bool)

(declare-fun c!999105 () Bool)

(declare-fun e!3495032 () Bool)

(assert (=> d!1792220 (= c!999105 e!3495032)))

(declare-fun res!2399533 () Bool)

(assert (=> d!1792220 (=> (not res!2399533) (not e!3495032))))

(assert (=> d!1792220 (= res!2399533 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809))))))))

(declare-fun e!3495034 () (InoxSet Context!10106))

(assert (=> d!1792220 (= (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (h!69632 s!2326)) e!3495034)))

(declare-fun bm!431007 () Bool)

(declare-fun call!431012 () (InoxSet Context!10106))

(assert (=> bm!431007 (= call!431012 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809)))))) (h!69632 s!2326)))))

(declare-fun b!5678393 () Bool)

(declare-fun e!3495033 () (InoxSet Context!10106))

(assert (=> b!5678393 (= e!3495034 e!3495033)))

(declare-fun c!999104 () Bool)

(assert (=> b!5678393 (= c!999104 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809))))))))

(declare-fun b!5678394 () Bool)

(assert (=> b!5678394 (= e!3495033 call!431012)))

(declare-fun b!5678395 () Bool)

(assert (=> b!5678395 (= e!3495034 ((_ map or) call!431012 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809)))))) (h!69632 s!2326))))))

(declare-fun b!5678396 () Bool)

(assert (=> b!5678396 (= e!3495032 (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809)))))))))

(declare-fun b!5678397 () Bool)

(assert (=> b!5678397 (= e!3495033 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792220 res!2399533) b!5678396))

(assert (= (and d!1792220 c!999105) b!5678395))

(assert (= (and d!1792220 (not c!999105)) b!5678393))

(assert (= (and b!5678393 c!999104) b!5678394))

(assert (= (and b!5678393 (not c!999104)) b!5678397))

(assert (= (or b!5678395 b!5678394) bm!431007))

(declare-fun m!6638370 () Bool)

(assert (=> bm!431007 m!6638370))

(declare-fun m!6638372 () Bool)

(assert (=> b!5678395 m!6638372))

(declare-fun m!6638374 () Bool)

(assert (=> b!5678396 m!6638374))

(assert (=> b!5678186 d!1792220))

(declare-fun d!1792222 () Bool)

(assert (=> d!1792222 (= (isUnion!634 lt!2269893) ((_ is Union!15669) lt!2269893))))

(assert (=> b!5678166 d!1792222))

(declare-fun d!1792224 () Bool)

(assert (=> d!1792224 (= ($colon$colon!1702 (exprs!5553 lt!2269823) (ite (or c!998934 c!998933) (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69630 (exprs!5553 (h!69631 zl!343))))) (Cons!63182 (ite (or c!998934 c!998933) (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (h!69630 (exprs!5553 (h!69631 zl!343)))) (exprs!5553 lt!2269823)))))

(assert (=> bm!430902 d!1792224))

(declare-fun d!1792226 () Bool)

(assert (=> d!1792226 (= (isEmpty!35034 (tail!11146 (unfocusZipperList!1097 zl!343))) ((_ is Nil!63182) (tail!11146 (unfocusZipperList!1097 zl!343))))))

(assert (=> b!5678170 d!1792226))

(declare-fun d!1792228 () Bool)

(assert (=> d!1792228 (= (tail!11146 (unfocusZipperList!1097 zl!343)) (t!376616 (unfocusZipperList!1097 zl!343)))))

(assert (=> b!5678170 d!1792228))

(declare-fun d!1792230 () Bool)

(assert (=> d!1792230 (= (isEmpty!35036 s!2326) ((_ is Nil!63184) s!2326))))

(assert (=> bm!430972 d!1792230))

(declare-fun d!1792232 () Bool)

(assert (=> d!1792232 (= (nullable!5701 (regOne!31850 (reg!15998 (regOne!31850 r!7292)))) (nullableFct!1781 (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))))

(declare-fun bs!1323552 () Bool)

(assert (= bs!1323552 d!1792232))

(declare-fun m!6638376 () Bool)

(assert (=> bs!1323552 m!6638376))

(assert (=> b!5677974 d!1792232))

(declare-fun d!1792234 () Bool)

(assert (=> d!1792234 (= (flatMap!1282 lt!2269814 lambda!305906) (choose!42950 lt!2269814 lambda!305906))))

(declare-fun bs!1323553 () Bool)

(assert (= bs!1323553 d!1792234))

(declare-fun m!6638378 () Bool)

(assert (=> bs!1323553 m!6638378))

(assert (=> d!1792126 d!1792234))

(declare-fun d!1792236 () Bool)

(declare-fun c!999106 () Bool)

(assert (=> d!1792236 (= c!999106 (isEmpty!35036 (tail!11145 (t!376618 s!2326))))))

(declare-fun e!3495035 () Bool)

(assert (=> d!1792236 (= (matchZipper!1807 (derivationStepZipper!1754 ((_ map or) lt!2269813 lt!2269816) (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))) e!3495035)))

(declare-fun b!5678398 () Bool)

(assert (=> b!5678398 (= e!3495035 (nullableZipper!1635 (derivationStepZipper!1754 ((_ map or) lt!2269813 lt!2269816) (head!12050 (t!376618 s!2326)))))))

(declare-fun b!5678399 () Bool)

(assert (=> b!5678399 (= e!3495035 (matchZipper!1807 (derivationStepZipper!1754 (derivationStepZipper!1754 ((_ map or) lt!2269813 lt!2269816) (head!12050 (t!376618 s!2326))) (head!12050 (tail!11145 (t!376618 s!2326)))) (tail!11145 (tail!11145 (t!376618 s!2326)))))))

(assert (= (and d!1792236 c!999106) b!5678398))

(assert (= (and d!1792236 (not c!999106)) b!5678399))

(assert (=> d!1792236 m!6637974))

(declare-fun m!6638380 () Bool)

(assert (=> d!1792236 m!6638380))

(assert (=> b!5678398 m!6638068))

(declare-fun m!6638382 () Bool)

(assert (=> b!5678398 m!6638382))

(assert (=> b!5678399 m!6637974))

(declare-fun m!6638384 () Bool)

(assert (=> b!5678399 m!6638384))

(assert (=> b!5678399 m!6638068))

(assert (=> b!5678399 m!6638384))

(declare-fun m!6638386 () Bool)

(assert (=> b!5678399 m!6638386))

(assert (=> b!5678399 m!6637974))

(declare-fun m!6638388 () Bool)

(assert (=> b!5678399 m!6638388))

(assert (=> b!5678399 m!6638386))

(assert (=> b!5678399 m!6638388))

(declare-fun m!6638390 () Bool)

(assert (=> b!5678399 m!6638390))

(assert (=> b!5677896 d!1792236))

(declare-fun bs!1323554 () Bool)

(declare-fun d!1792238 () Bool)

(assert (= bs!1323554 (and d!1792238 b!5677532)))

(declare-fun lambda!305921 () Int)

(assert (=> bs!1323554 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305921 lambda!305853))))

(declare-fun bs!1323555 () Bool)

(assert (= bs!1323555 (and d!1792238 d!1792126)))

(assert (=> bs!1323555 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305921 lambda!305906))))

(assert (=> d!1792238 true))

(assert (=> d!1792238 (= (derivationStepZipper!1754 ((_ map or) lt!2269813 lt!2269816) (head!12050 (t!376618 s!2326))) (flatMap!1282 ((_ map or) lt!2269813 lt!2269816) lambda!305921))))

(declare-fun bs!1323556 () Bool)

(assert (= bs!1323556 d!1792238))

(declare-fun m!6638392 () Bool)

(assert (=> bs!1323556 m!6638392))

(assert (=> b!5677896 d!1792238))

(declare-fun d!1792240 () Bool)

(assert (=> d!1792240 (= (head!12050 (t!376618 s!2326)) (h!69632 (t!376618 s!2326)))))

(assert (=> b!5677896 d!1792240))

(declare-fun d!1792242 () Bool)

(assert (=> d!1792242 (= (tail!11145 (t!376618 s!2326)) (t!376618 (t!376618 s!2326)))))

(assert (=> b!5677896 d!1792242))

(assert (=> d!1792116 d!1792230))

(assert (=> d!1792116 d!1792026))

(declare-fun bm!431009 () Bool)

(declare-fun c!999110 () Bool)

(declare-fun call!431015 () List!63306)

(declare-fun call!431018 () (InoxSet Context!10106))

(assert (=> bm!431009 (= call!431018 (derivationStepZipperDown!1011 (ite c!999110 (regTwo!31851 (h!69630 (exprs!5553 lt!2269823))) (regOne!31850 (h!69630 (exprs!5553 lt!2269823)))) (ite c!999110 (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (Context!10107 call!431015)) (h!69632 s!2326)))))

(declare-fun b!5678404 () Bool)

(declare-fun e!3495043 () (InoxSet Context!10106))

(declare-fun call!431014 () (InoxSet Context!10106))

(assert (=> b!5678404 (= e!3495043 ((_ map or) call!431014 call!431018))))

(declare-fun b!5678405 () Bool)

(declare-fun e!3495040 () (InoxSet Context!10106))

(declare-fun e!3495042 () (InoxSet Context!10106))

(assert (=> b!5678405 (= e!3495040 e!3495042)))

(declare-fun c!999107 () Bool)

(assert (=> b!5678405 (= c!999107 ((_ is Concat!24514) (h!69630 (exprs!5553 lt!2269823))))))

(declare-fun b!5678406 () Bool)

(declare-fun e!3495039 () Bool)

(assert (=> b!5678406 (= e!3495039 (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 lt!2269823)))))))

(declare-fun b!5678407 () Bool)

(declare-fun c!999108 () Bool)

(assert (=> b!5678407 (= c!999108 e!3495039)))

(declare-fun res!2399538 () Bool)

(assert (=> b!5678407 (=> (not res!2399538) (not e!3495039))))

(assert (=> b!5678407 (= res!2399538 ((_ is Concat!24514) (h!69630 (exprs!5553 lt!2269823))))))

(assert (=> b!5678407 (= e!3495043 e!3495040)))

(declare-fun bm!431010 () Bool)

(assert (=> bm!431010 (= call!431015 ($colon$colon!1702 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823)))) (ite (or c!999108 c!999107) (regTwo!31850 (h!69630 (exprs!5553 lt!2269823))) (h!69630 (exprs!5553 lt!2269823)))))))

(declare-fun b!5678408 () Bool)

(declare-fun call!431013 () (InoxSet Context!10106))

(assert (=> b!5678408 (= e!3495042 call!431013)))

(declare-fun b!5678409 () Bool)

(declare-fun call!431017 () (InoxSet Context!10106))

(assert (=> b!5678409 (= e!3495040 ((_ map or) call!431018 call!431017))))

(declare-fun b!5678410 () Bool)

(declare-fun c!999111 () Bool)

(assert (=> b!5678410 (= c!999111 ((_ is Star!15669) (h!69630 (exprs!5553 lt!2269823))))))

(declare-fun e!3495041 () (InoxSet Context!10106))

(assert (=> b!5678410 (= e!3495042 e!3495041)))

(declare-fun bm!431008 () Bool)

(declare-fun call!431016 () List!63306)

(assert (=> bm!431008 (= call!431016 call!431015)))

(declare-fun d!1792244 () Bool)

(declare-fun c!999109 () Bool)

(assert (=> d!1792244 (= c!999109 (and ((_ is ElementMatch!15669) (h!69630 (exprs!5553 lt!2269823))) (= (c!998875 (h!69630 (exprs!5553 lt!2269823))) (h!69632 s!2326))))))

(declare-fun e!3495038 () (InoxSet Context!10106))

(assert (=> d!1792244 (= (derivationStepZipperDown!1011 (h!69630 (exprs!5553 lt!2269823)) (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (h!69632 s!2326)) e!3495038)))

(declare-fun b!5678411 () Bool)

(assert (=> b!5678411 (= e!3495038 (store ((as const (Array Context!10106 Bool)) false) (Context!10107 (t!376616 (exprs!5553 lt!2269823))) true))))

(declare-fun b!5678412 () Bool)

(assert (=> b!5678412 (= e!3495041 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678413 () Bool)

(assert (=> b!5678413 (= e!3495038 e!3495043)))

(assert (=> b!5678413 (= c!999110 ((_ is Union!15669) (h!69630 (exprs!5553 lt!2269823))))))

(declare-fun bm!431011 () Bool)

(assert (=> bm!431011 (= call!431014 (derivationStepZipperDown!1011 (ite c!999110 (regOne!31851 (h!69630 (exprs!5553 lt!2269823))) (ite c!999108 (regTwo!31850 (h!69630 (exprs!5553 lt!2269823))) (ite c!999107 (regOne!31850 (h!69630 (exprs!5553 lt!2269823))) (reg!15998 (h!69630 (exprs!5553 lt!2269823)))))) (ite (or c!999110 c!999108) (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (Context!10107 call!431016)) (h!69632 s!2326)))))

(declare-fun b!5678414 () Bool)

(assert (=> b!5678414 (= e!3495041 call!431013)))

(declare-fun bm!431012 () Bool)

(assert (=> bm!431012 (= call!431013 call!431017)))

(declare-fun bm!431013 () Bool)

(assert (=> bm!431013 (= call!431017 call!431014)))

(assert (= (and d!1792244 c!999109) b!5678411))

(assert (= (and d!1792244 (not c!999109)) b!5678413))

(assert (= (and b!5678413 c!999110) b!5678404))

(assert (= (and b!5678413 (not c!999110)) b!5678407))

(assert (= (and b!5678407 res!2399538) b!5678406))

(assert (= (and b!5678407 c!999108) b!5678409))

(assert (= (and b!5678407 (not c!999108)) b!5678405))

(assert (= (and b!5678405 c!999107) b!5678408))

(assert (= (and b!5678405 (not c!999107)) b!5678410))

(assert (= (and b!5678410 c!999111) b!5678414))

(assert (= (and b!5678410 (not c!999111)) b!5678412))

(assert (= (or b!5678408 b!5678414) bm!431008))

(assert (= (or b!5678408 b!5678414) bm!431012))

(assert (= (or b!5678409 bm!431008) bm!431010))

(assert (= (or b!5678409 bm!431012) bm!431013))

(assert (= (or b!5678404 b!5678409) bm!431009))

(assert (= (or b!5678404 bm!431013) bm!431011))

(declare-fun m!6638394 () Bool)

(assert (=> b!5678411 m!6638394))

(declare-fun m!6638396 () Bool)

(assert (=> bm!431009 m!6638396))

(declare-fun m!6638398 () Bool)

(assert (=> b!5678406 m!6638398))

(declare-fun m!6638400 () Bool)

(assert (=> bm!431011 m!6638400))

(declare-fun m!6638402 () Bool)

(assert (=> bm!431010 m!6638402))

(assert (=> bm!430880 d!1792244))

(declare-fun d!1792246 () Bool)

(assert (=> d!1792246 (= (isEmpty!35034 (exprs!5553 (h!69631 zl!343))) ((_ is Nil!63182) (exprs!5553 (h!69631 zl!343))))))

(assert (=> b!5677959 d!1792246))

(declare-fun d!1792248 () Bool)

(assert (=> d!1792248 (= (nullable!5701 (h!69630 (exprs!5553 lt!2269823))) (nullableFct!1781 (h!69630 (exprs!5553 lt!2269823))))))

(declare-fun bs!1323557 () Bool)

(assert (= bs!1323557 d!1792248))

(declare-fun m!6638404 () Bool)

(assert (=> bs!1323557 m!6638404))

(assert (=> b!5677603 d!1792248))

(assert (=> bs!1323534 d!1792024))

(declare-fun d!1792250 () Bool)

(assert (=> d!1792250 (= ($colon$colon!1702 (exprs!5553 (Context!10107 lt!2269825)) (ite (or c!999022 c!999021) (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (regOne!31850 r!7292)))) (Cons!63182 (ite (or c!999022 c!999021) (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (regOne!31850 r!7292))) (exprs!5553 (Context!10107 lt!2269825))))))

(assert (=> bm!430960 d!1792250))

(declare-fun d!1792252 () Bool)

(assert (=> d!1792252 (= (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (nullableFct!1781 (h!69630 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun bs!1323558 () Bool)

(assert (= bs!1323558 d!1792252))

(declare-fun m!6638406 () Bool)

(assert (=> bs!1323558 m!6638406))

(assert (=> b!5677610 d!1792252))

(assert (=> b!5677763 d!1792006))

(declare-fun d!1792254 () Bool)

(assert (=> d!1792254 (= (isEmpty!35034 (t!376616 (unfocusZipperList!1097 zl!343))) ((_ is Nil!63182) (t!376616 (unfocusZipperList!1097 zl!343))))))

(assert (=> b!5678172 d!1792254))

(declare-fun d!1792256 () Bool)

(assert (=> d!1792256 (= (nullable!5701 r!7292) (nullableFct!1781 r!7292))))

(declare-fun bs!1323559 () Bool)

(assert (= bs!1323559 d!1792256))

(declare-fun m!6638408 () Bool)

(assert (=> bs!1323559 m!6638408))

(assert (=> b!5678138 d!1792256))

(declare-fun b!5678415 () Bool)

(declare-fun e!3495045 () Bool)

(declare-fun e!3495046 () Bool)

(assert (=> b!5678415 (= e!3495045 e!3495046)))

(declare-fun res!2399540 () Bool)

(assert (=> b!5678415 (=> (not res!2399540) (not e!3495046))))

(declare-fun call!431021 () Bool)

(assert (=> b!5678415 (= res!2399540 call!431021)))

(declare-fun d!1792258 () Bool)

(declare-fun res!2399543 () Bool)

(declare-fun e!3495049 () Bool)

(assert (=> d!1792258 (=> res!2399543 e!3495049)))

(assert (=> d!1792258 (= res!2399543 ((_ is ElementMatch!15669) (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))

(assert (=> d!1792258 (= (validRegex!7405 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))) e!3495049)))

(declare-fun b!5678416 () Bool)

(declare-fun call!431019 () Bool)

(assert (=> b!5678416 (= e!3495046 call!431019)))

(declare-fun b!5678417 () Bool)

(declare-fun e!3495044 () Bool)

(declare-fun e!3495050 () Bool)

(assert (=> b!5678417 (= e!3495044 e!3495050)))

(declare-fun res!2399539 () Bool)

(assert (=> b!5678417 (= res!2399539 (not (nullable!5701 (reg!15998 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))))

(assert (=> b!5678417 (=> (not res!2399539) (not e!3495050))))

(declare-fun b!5678418 () Bool)

(declare-fun e!3495048 () Bool)

(assert (=> b!5678418 (= e!3495048 call!431019)))

(declare-fun b!5678419 () Bool)

(declare-fun e!3495047 () Bool)

(assert (=> b!5678419 (= e!3495044 e!3495047)))

(declare-fun c!999112 () Bool)

(assert (=> b!5678419 (= c!999112 ((_ is Union!15669) (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))

(declare-fun bm!431014 () Bool)

(declare-fun c!999113 () Bool)

(declare-fun call!431020 () Bool)

(assert (=> bm!431014 (= call!431020 (validRegex!7405 (ite c!999113 (reg!15998 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))) (ite c!999112 (regTwo!31851 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))) (regTwo!31850 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292)))))))))

(declare-fun b!5678420 () Bool)

(declare-fun res!2399541 () Bool)

(assert (=> b!5678420 (=> res!2399541 e!3495045)))

(assert (=> b!5678420 (= res!2399541 (not ((_ is Concat!24514) (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292)))))))

(assert (=> b!5678420 (= e!3495047 e!3495045)))

(declare-fun b!5678421 () Bool)

(assert (=> b!5678421 (= e!3495049 e!3495044)))

(assert (=> b!5678421 (= c!999113 ((_ is Star!15669) (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))

(declare-fun bm!431015 () Bool)

(assert (=> bm!431015 (= call!431019 call!431020)))

(declare-fun b!5678422 () Bool)

(declare-fun res!2399542 () Bool)

(assert (=> b!5678422 (=> (not res!2399542) (not e!3495048))))

(assert (=> b!5678422 (= res!2399542 call!431021)))

(assert (=> b!5678422 (= e!3495047 e!3495048)))

(declare-fun bm!431016 () Bool)

(assert (=> bm!431016 (= call!431021 (validRegex!7405 (ite c!999112 (regOne!31851 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))) (regOne!31850 (ite c!998968 (regOne!31851 r!7292) (regOne!31850 r!7292))))))))

(declare-fun b!5678423 () Bool)

(assert (=> b!5678423 (= e!3495050 call!431020)))

(assert (= (and d!1792258 (not res!2399543)) b!5678421))

(assert (= (and b!5678421 c!999113) b!5678417))

(assert (= (and b!5678421 (not c!999113)) b!5678419))

(assert (= (and b!5678417 res!2399539) b!5678423))

(assert (= (and b!5678419 c!999112) b!5678422))

(assert (= (and b!5678419 (not c!999112)) b!5678420))

(assert (= (and b!5678422 res!2399542) b!5678418))

(assert (= (and b!5678420 (not res!2399541)) b!5678415))

(assert (= (and b!5678415 res!2399540) b!5678416))

(assert (= (or b!5678418 b!5678416) bm!431015))

(assert (= (or b!5678422 b!5678415) bm!431016))

(assert (= (or b!5678423 bm!431015) bm!431014))

(declare-fun m!6638410 () Bool)

(assert (=> b!5678417 m!6638410))

(declare-fun m!6638412 () Bool)

(assert (=> bm!431014 m!6638412))

(declare-fun m!6638414 () Bool)

(assert (=> bm!431016 m!6638414))

(assert (=> bm!430936 d!1792258))

(declare-fun d!1792260 () Bool)

(assert (=> d!1792260 (= (Exists!2769 (ite c!999037 lambda!305896 lambda!305897)) (choose!42960 (ite c!999037 lambda!305896 lambda!305897)))))

(declare-fun bs!1323560 () Bool)

(assert (= bs!1323560 d!1792260))

(declare-fun m!6638416 () Bool)

(assert (=> bs!1323560 m!6638416))

(assert (=> bm!430968 d!1792260))

(assert (=> d!1792132 d!1792128))

(declare-fun d!1792262 () Bool)

(assert (=> d!1792262 (= (flatMap!1282 lt!2269814 lambda!305853) (dynLambda!24726 lambda!305853 lt!2269809))))

(assert (=> d!1792262 true))

(declare-fun _$13!2329 () Unit!156208)

(assert (=> d!1792262 (= (choose!42953 lt!2269814 lt!2269809 lambda!305853) _$13!2329)))

(declare-fun b_lambda!214715 () Bool)

(assert (=> (not b_lambda!214715) (not d!1792262)))

(declare-fun bs!1323562 () Bool)

(assert (= bs!1323562 d!1792262))

(assert (=> bs!1323562 m!6637824))

(assert (=> bs!1323562 m!6638218))

(assert (=> d!1792132 d!1792262))

(declare-fun d!1792264 () Bool)

(assert (=> d!1792264 (= (head!12051 (unfocusZipperList!1097 zl!343)) (h!69630 (unfocusZipperList!1097 zl!343)))))

(assert (=> b!5678174 d!1792264))

(declare-fun b!5678424 () Bool)

(declare-fun e!3495055 () Bool)

(declare-fun lt!2269914 () Bool)

(declare-fun call!431022 () Bool)

(assert (=> b!5678424 (= e!3495055 (= lt!2269914 call!431022))))

(declare-fun b!5678425 () Bool)

(declare-fun res!2399547 () Bool)

(declare-fun e!3495051 () Bool)

(assert (=> b!5678425 (=> (not res!2399547) (not e!3495051))))

(assert (=> b!5678425 (= res!2399547 (not call!431022))))

(declare-fun b!5678426 () Bool)

(declare-fun res!2399551 () Bool)

(assert (=> b!5678426 (=> (not res!2399551) (not e!3495051))))

(assert (=> b!5678426 (= res!2399551 (isEmpty!35036 (tail!11145 s!2326)))))

(declare-fun b!5678427 () Bool)

(declare-fun e!3495057 () Bool)

(assert (=> b!5678427 (= e!3495057 (matchR!7854 (derivativeStep!4488 (regTwo!31850 r!7292) (head!12050 s!2326)) (tail!11145 s!2326)))))

(declare-fun b!5678428 () Bool)

(declare-fun e!3495052 () Bool)

(declare-fun e!3495054 () Bool)

(assert (=> b!5678428 (= e!3495052 e!3495054)))

(declare-fun res!2399550 () Bool)

(assert (=> b!5678428 (=> (not res!2399550) (not e!3495054))))

(assert (=> b!5678428 (= res!2399550 (not lt!2269914))))

(declare-fun b!5678429 () Bool)

(declare-fun res!2399545 () Bool)

(declare-fun e!3495053 () Bool)

(assert (=> b!5678429 (=> res!2399545 e!3495053)))

(assert (=> b!5678429 (= res!2399545 (not (isEmpty!35036 (tail!11145 s!2326))))))

(declare-fun b!5678431 () Bool)

(assert (=> b!5678431 (= e!3495053 (not (= (head!12050 s!2326) (c!998875 (regTwo!31850 r!7292)))))))

(declare-fun bm!431017 () Bool)

(assert (=> bm!431017 (= call!431022 (isEmpty!35036 s!2326))))

(declare-fun b!5678432 () Bool)

(declare-fun e!3495056 () Bool)

(assert (=> b!5678432 (= e!3495055 e!3495056)))

(declare-fun c!999114 () Bool)

(assert (=> b!5678432 (= c!999114 ((_ is EmptyLang!15669) (regTwo!31850 r!7292)))))

(declare-fun b!5678433 () Bool)

(assert (=> b!5678433 (= e!3495057 (nullable!5701 (regTwo!31850 r!7292)))))

(declare-fun b!5678434 () Bool)

(assert (=> b!5678434 (= e!3495056 (not lt!2269914))))

(declare-fun b!5678435 () Bool)

(declare-fun res!2399548 () Bool)

(assert (=> b!5678435 (=> res!2399548 e!3495052)))

(assert (=> b!5678435 (= res!2399548 (not ((_ is ElementMatch!15669) (regTwo!31850 r!7292))))))

(assert (=> b!5678435 (= e!3495056 e!3495052)))

(declare-fun b!5678436 () Bool)

(assert (=> b!5678436 (= e!3495054 e!3495053)))

(declare-fun res!2399546 () Bool)

(assert (=> b!5678436 (=> res!2399546 e!3495053)))

(assert (=> b!5678436 (= res!2399546 call!431022)))

(declare-fun b!5678437 () Bool)

(declare-fun res!2399549 () Bool)

(assert (=> b!5678437 (=> res!2399549 e!3495052)))

(assert (=> b!5678437 (= res!2399549 e!3495051)))

(declare-fun res!2399544 () Bool)

(assert (=> b!5678437 (=> (not res!2399544) (not e!3495051))))

(assert (=> b!5678437 (= res!2399544 lt!2269914)))

(declare-fun b!5678430 () Bool)

(assert (=> b!5678430 (= e!3495051 (= (head!12050 s!2326) (c!998875 (regTwo!31850 r!7292))))))

(declare-fun d!1792266 () Bool)

(assert (=> d!1792266 e!3495055))

(declare-fun c!999116 () Bool)

(assert (=> d!1792266 (= c!999116 ((_ is EmptyExpr!15669) (regTwo!31850 r!7292)))))

(assert (=> d!1792266 (= lt!2269914 e!3495057)))

(declare-fun c!999115 () Bool)

(assert (=> d!1792266 (= c!999115 (isEmpty!35036 s!2326))))

(assert (=> d!1792266 (validRegex!7405 (regTwo!31850 r!7292))))

(assert (=> d!1792266 (= (matchR!7854 (regTwo!31850 r!7292) s!2326) lt!2269914)))

(assert (= (and d!1792266 c!999115) b!5678433))

(assert (= (and d!1792266 (not c!999115)) b!5678427))

(assert (= (and d!1792266 c!999116) b!5678424))

(assert (= (and d!1792266 (not c!999116)) b!5678432))

(assert (= (and b!5678432 c!999114) b!5678434))

(assert (= (and b!5678432 (not c!999114)) b!5678435))

(assert (= (and b!5678435 (not res!2399548)) b!5678437))

(assert (= (and b!5678437 res!2399544) b!5678425))

(assert (= (and b!5678425 res!2399547) b!5678426))

(assert (= (and b!5678426 res!2399551) b!5678430))

(assert (= (and b!5678437 (not res!2399549)) b!5678428))

(assert (= (and b!5678428 res!2399550) b!5678436))

(assert (= (and b!5678436 (not res!2399546)) b!5678429))

(assert (= (and b!5678429 (not res!2399545)) b!5678431))

(assert (= (or b!5678424 b!5678425 b!5678436) bm!431017))

(assert (=> b!5678429 m!6638164))

(assert (=> b!5678429 m!6638164))

(assert (=> b!5678429 m!6638166))

(declare-fun m!6638418 () Bool)

(assert (=> b!5678433 m!6638418))

(assert (=> b!5678426 m!6638164))

(assert (=> b!5678426 m!6638164))

(assert (=> b!5678426 m!6638166))

(assert (=> b!5678431 m!6638170))

(assert (=> bm!431017 m!6638158))

(assert (=> b!5678430 m!6638170))

(assert (=> b!5678427 m!6638170))

(assert (=> b!5678427 m!6638170))

(declare-fun m!6638420 () Bool)

(assert (=> b!5678427 m!6638420))

(assert (=> b!5678427 m!6638164))

(assert (=> b!5678427 m!6638420))

(assert (=> b!5678427 m!6638164))

(declare-fun m!6638422 () Bool)

(assert (=> b!5678427 m!6638422))

(assert (=> d!1792266 m!6638158))

(declare-fun m!6638424 () Bool)

(assert (=> d!1792266 m!6638424))

(assert (=> b!5678207 d!1792266))

(assert (=> b!5677963 d!1792042))

(declare-fun bm!431028 () Bool)

(declare-fun call!431033 () Bool)

(declare-fun c!999124 () Bool)

(assert (=> bm!431028 (= call!431033 (nullable!5701 (ite c!999124 (regTwo!31851 (regOne!31850 (regOne!31850 r!7292))) (regTwo!31850 (regOne!31850 (regOne!31850 r!7292))))))))

(declare-fun bm!431029 () Bool)

(declare-fun call!431034 () Bool)

(assert (=> bm!431029 (= call!431034 (nullable!5701 (ite c!999124 (regOne!31851 (regOne!31850 (regOne!31850 r!7292))) (regOne!31850 (regOne!31850 (regOne!31850 r!7292))))))))

(declare-fun b!5678463 () Bool)

(declare-fun e!3495078 () Bool)

(declare-fun e!3495076 () Bool)

(assert (=> b!5678463 (= e!3495078 e!3495076)))

(declare-fun res!2399565 () Bool)

(assert (=> b!5678463 (=> (not res!2399565) (not e!3495076))))

(assert (=> b!5678463 (= res!2399565 (and (not ((_ is EmptyLang!15669) (regOne!31850 (regOne!31850 r!7292)))) (not ((_ is ElementMatch!15669) (regOne!31850 (regOne!31850 r!7292))))))))

(declare-fun d!1792268 () Bool)

(declare-fun res!2399567 () Bool)

(assert (=> d!1792268 (=> res!2399567 e!3495078)))

(assert (=> d!1792268 (= res!2399567 ((_ is EmptyExpr!15669) (regOne!31850 (regOne!31850 r!7292))))))

(assert (=> d!1792268 (= (nullableFct!1781 (regOne!31850 (regOne!31850 r!7292))) e!3495078)))

(declare-fun b!5678464 () Bool)

(declare-fun e!3495079 () Bool)

(assert (=> b!5678464 (= e!3495079 call!431033)))

(declare-fun b!5678465 () Bool)

(declare-fun e!3495081 () Bool)

(declare-fun e!3495080 () Bool)

(assert (=> b!5678465 (= e!3495081 e!3495080)))

(declare-fun res!2399566 () Bool)

(assert (=> b!5678465 (= res!2399566 call!431034)))

(assert (=> b!5678465 (=> res!2399566 e!3495080)))

(declare-fun b!5678466 () Bool)

(assert (=> b!5678466 (= e!3495081 e!3495079)))

(declare-fun res!2399564 () Bool)

(assert (=> b!5678466 (= res!2399564 call!431034)))

(assert (=> b!5678466 (=> (not res!2399564) (not e!3495079))))

(declare-fun b!5678467 () Bool)

(assert (=> b!5678467 (= e!3495080 call!431033)))

(declare-fun b!5678468 () Bool)

(declare-fun e!3495077 () Bool)

(assert (=> b!5678468 (= e!3495076 e!3495077)))

(declare-fun res!2399563 () Bool)

(assert (=> b!5678468 (=> res!2399563 e!3495077)))

(assert (=> b!5678468 (= res!2399563 ((_ is Star!15669) (regOne!31850 (regOne!31850 r!7292))))))

(declare-fun b!5678469 () Bool)

(assert (=> b!5678469 (= e!3495077 e!3495081)))

(assert (=> b!5678469 (= c!999124 ((_ is Union!15669) (regOne!31850 (regOne!31850 r!7292))))))

(assert (= (and d!1792268 (not res!2399567)) b!5678463))

(assert (= (and b!5678463 res!2399565) b!5678468))

(assert (= (and b!5678468 (not res!2399563)) b!5678469))

(assert (= (and b!5678469 c!999124) b!5678465))

(assert (= (and b!5678469 (not c!999124)) b!5678466))

(assert (= (and b!5678465 (not res!2399566)) b!5678467))

(assert (= (and b!5678466 res!2399564) b!5678464))

(assert (= (or b!5678467 b!5678464) bm!431028))

(assert (= (or b!5678465 b!5678466) bm!431029))

(declare-fun m!6638430 () Bool)

(assert (=> bm!431028 m!6638430))

(declare-fun m!6638434 () Bool)

(assert (=> bm!431029 m!6638434))

(assert (=> d!1792084 d!1792268))

(declare-fun d!1792272 () Bool)

(declare-fun lambda!305928 () Int)

(declare-fun exists!2207 ((InoxSet Context!10106) Int) Bool)

(assert (=> d!1792272 (= (nullableZipper!1635 lt!2269813) (exists!2207 lt!2269813 lambda!305928))))

(declare-fun bs!1323574 () Bool)

(assert (= bs!1323574 d!1792272))

(declare-fun m!6638444 () Bool)

(assert (=> bs!1323574 m!6638444))

(assert (=> b!5677893 d!1792272))

(declare-fun b!5678480 () Bool)

(declare-fun e!3495092 () Bool)

(declare-fun lt!2269916 () Bool)

(declare-fun call!431035 () Bool)

(assert (=> b!5678480 (= e!3495092 (= lt!2269916 call!431035))))

(declare-fun b!5678481 () Bool)

(declare-fun res!2399573 () Bool)

(declare-fun e!3495088 () Bool)

(assert (=> b!5678481 (=> (not res!2399573) (not e!3495088))))

(assert (=> b!5678481 (= res!2399573 (not call!431035))))

(declare-fun b!5678482 () Bool)

(declare-fun res!2399577 () Bool)

(assert (=> b!5678482 (=> (not res!2399577) (not e!3495088))))

(assert (=> b!5678482 (= res!2399577 (isEmpty!35036 (tail!11145 (_2!36069 (get!21771 lt!2269905)))))))

(declare-fun b!5678483 () Bool)

(declare-fun e!3495094 () Bool)

(assert (=> b!5678483 (= e!3495094 (matchR!7854 (derivativeStep!4488 (regTwo!31850 r!7292) (head!12050 (_2!36069 (get!21771 lt!2269905)))) (tail!11145 (_2!36069 (get!21771 lt!2269905)))))))

(declare-fun b!5678484 () Bool)

(declare-fun e!3495089 () Bool)

(declare-fun e!3495091 () Bool)

(assert (=> b!5678484 (= e!3495089 e!3495091)))

(declare-fun res!2399576 () Bool)

(assert (=> b!5678484 (=> (not res!2399576) (not e!3495091))))

(assert (=> b!5678484 (= res!2399576 (not lt!2269916))))

(declare-fun b!5678485 () Bool)

(declare-fun res!2399571 () Bool)

(declare-fun e!3495090 () Bool)

(assert (=> b!5678485 (=> res!2399571 e!3495090)))

(assert (=> b!5678485 (= res!2399571 (not (isEmpty!35036 (tail!11145 (_2!36069 (get!21771 lt!2269905))))))))

(declare-fun b!5678487 () Bool)

(assert (=> b!5678487 (= e!3495090 (not (= (head!12050 (_2!36069 (get!21771 lt!2269905))) (c!998875 (regTwo!31850 r!7292)))))))

(declare-fun bm!431030 () Bool)

(assert (=> bm!431030 (= call!431035 (isEmpty!35036 (_2!36069 (get!21771 lt!2269905))))))

(declare-fun b!5678488 () Bool)

(declare-fun e!3495093 () Bool)

(assert (=> b!5678488 (= e!3495092 e!3495093)))

(declare-fun c!999131 () Bool)

(assert (=> b!5678488 (= c!999131 ((_ is EmptyLang!15669) (regTwo!31850 r!7292)))))

(declare-fun b!5678489 () Bool)

(assert (=> b!5678489 (= e!3495094 (nullable!5701 (regTwo!31850 r!7292)))))

(declare-fun b!5678490 () Bool)

(assert (=> b!5678490 (= e!3495093 (not lt!2269916))))

(declare-fun b!5678491 () Bool)

(declare-fun res!2399574 () Bool)

(assert (=> b!5678491 (=> res!2399574 e!3495089)))

(assert (=> b!5678491 (= res!2399574 (not ((_ is ElementMatch!15669) (regTwo!31850 r!7292))))))

(assert (=> b!5678491 (= e!3495093 e!3495089)))

(declare-fun b!5678492 () Bool)

(assert (=> b!5678492 (= e!3495091 e!3495090)))

(declare-fun res!2399572 () Bool)

(assert (=> b!5678492 (=> res!2399572 e!3495090)))

(assert (=> b!5678492 (= res!2399572 call!431035)))

(declare-fun b!5678493 () Bool)

(declare-fun res!2399575 () Bool)

(assert (=> b!5678493 (=> res!2399575 e!3495089)))

(assert (=> b!5678493 (= res!2399575 e!3495088)))

(declare-fun res!2399570 () Bool)

(assert (=> b!5678493 (=> (not res!2399570) (not e!3495088))))

(assert (=> b!5678493 (= res!2399570 lt!2269916)))

(declare-fun b!5678486 () Bool)

(assert (=> b!5678486 (= e!3495088 (= (head!12050 (_2!36069 (get!21771 lt!2269905))) (c!998875 (regTwo!31850 r!7292))))))

(declare-fun d!1792276 () Bool)

(assert (=> d!1792276 e!3495092))

(declare-fun c!999133 () Bool)

(assert (=> d!1792276 (= c!999133 ((_ is EmptyExpr!15669) (regTwo!31850 r!7292)))))

(assert (=> d!1792276 (= lt!2269916 e!3495094)))

(declare-fun c!999132 () Bool)

(assert (=> d!1792276 (= c!999132 (isEmpty!35036 (_2!36069 (get!21771 lt!2269905))))))

(assert (=> d!1792276 (validRegex!7405 (regTwo!31850 r!7292))))

(assert (=> d!1792276 (= (matchR!7854 (regTwo!31850 r!7292) (_2!36069 (get!21771 lt!2269905))) lt!2269916)))

(assert (= (and d!1792276 c!999132) b!5678489))

(assert (= (and d!1792276 (not c!999132)) b!5678483))

(assert (= (and d!1792276 c!999133) b!5678480))

(assert (= (and d!1792276 (not c!999133)) b!5678488))

(assert (= (and b!5678488 c!999131) b!5678490))

(assert (= (and b!5678488 (not c!999131)) b!5678491))

(assert (= (and b!5678491 (not res!2399574)) b!5678493))

(assert (= (and b!5678493 res!2399570) b!5678481))

(assert (= (and b!5678481 res!2399573) b!5678482))

(assert (= (and b!5678482 res!2399577) b!5678486))

(assert (= (and b!5678493 (not res!2399575)) b!5678484))

(assert (= (and b!5678484 res!2399576) b!5678492))

(assert (= (and b!5678492 (not res!2399572)) b!5678485))

(assert (= (and b!5678485 (not res!2399571)) b!5678487))

(assert (= (or b!5678480 b!5678481 b!5678492) bm!431030))

(declare-fun m!6638464 () Bool)

(assert (=> b!5678485 m!6638464))

(assert (=> b!5678485 m!6638464))

(declare-fun m!6638466 () Bool)

(assert (=> b!5678485 m!6638466))

(assert (=> b!5678489 m!6638418))

(assert (=> b!5678482 m!6638464))

(assert (=> b!5678482 m!6638464))

(assert (=> b!5678482 m!6638466))

(declare-fun m!6638468 () Bool)

(assert (=> b!5678487 m!6638468))

(declare-fun m!6638470 () Bool)

(assert (=> bm!431030 m!6638470))

(assert (=> b!5678486 m!6638468))

(assert (=> b!5678483 m!6638468))

(assert (=> b!5678483 m!6638468))

(declare-fun m!6638472 () Bool)

(assert (=> b!5678483 m!6638472))

(assert (=> b!5678483 m!6638464))

(assert (=> b!5678483 m!6638472))

(assert (=> b!5678483 m!6638464))

(declare-fun m!6638474 () Bool)

(assert (=> b!5678483 m!6638474))

(assert (=> d!1792276 m!6638470))

(assert (=> d!1792276 m!6638424))

(assert (=> b!5678213 d!1792276))

(declare-fun d!1792282 () Bool)

(assert (=> d!1792282 (= (get!21771 lt!2269905) (v!51726 lt!2269905))))

(assert (=> b!5678213 d!1792282))

(declare-fun d!1792284 () Bool)

(declare-fun res!2399590 () Bool)

(declare-fun e!3495106 () Bool)

(assert (=> d!1792284 (=> res!2399590 e!3495106)))

(assert (=> d!1792284 (= res!2399590 ((_ is Nil!63182) lt!2269896))))

(assert (=> d!1792284 (= (forall!14818 lt!2269896 lambda!305903) e!3495106)))

(declare-fun b!5678512 () Bool)

(declare-fun e!3495107 () Bool)

(assert (=> b!5678512 (= e!3495106 e!3495107)))

(declare-fun res!2399591 () Bool)

(assert (=> b!5678512 (=> (not res!2399591) (not e!3495107))))

(declare-fun dynLambda!24728 (Int Regex!15669) Bool)

(assert (=> b!5678512 (= res!2399591 (dynLambda!24728 lambda!305903 (h!69630 lt!2269896)))))

(declare-fun b!5678513 () Bool)

(assert (=> b!5678513 (= e!3495107 (forall!14818 (t!376616 lt!2269896) lambda!305903))))

(assert (= (and d!1792284 (not res!2399590)) b!5678512))

(assert (= (and b!5678512 res!2399591) b!5678513))

(declare-fun b_lambda!214717 () Bool)

(assert (=> (not b_lambda!214717) (not b!5678512)))

(declare-fun m!6638488 () Bool)

(assert (=> b!5678512 m!6638488))

(declare-fun m!6638490 () Bool)

(assert (=> b!5678513 m!6638490))

(assert (=> d!1792124 d!1792284))

(assert (=> b!5678180 d!1792086))

(declare-fun bs!1323575 () Bool)

(declare-fun d!1792288 () Bool)

(assert (= bs!1323575 (and d!1792288 d!1792122)))

(declare-fun lambda!305929 () Int)

(assert (=> bs!1323575 (= lambda!305929 lambda!305900)))

(declare-fun bs!1323576 () Bool)

(assert (= bs!1323576 (and d!1792288 d!1792086)))

(assert (=> bs!1323576 (= lambda!305929 lambda!305880)))

(declare-fun bs!1323577 () Bool)

(assert (= bs!1323577 (and d!1792288 d!1792124)))

(assert (=> bs!1323577 (= lambda!305929 lambda!305903)))

(declare-fun bs!1323578 () Bool)

(assert (= bs!1323578 (and d!1792288 d!1792092)))

(assert (=> bs!1323578 (= lambda!305929 lambda!305881)))

(declare-fun bs!1323579 () Bool)

(assert (= bs!1323579 (and d!1792288 d!1792046)))

(assert (=> bs!1323579 (= lambda!305929 lambda!305874)))

(declare-fun lt!2269918 () List!63306)

(assert (=> d!1792288 (forall!14818 lt!2269918 lambda!305929)))

(declare-fun e!3495108 () List!63306)

(assert (=> d!1792288 (= lt!2269918 e!3495108)))

(declare-fun c!999137 () Bool)

(assert (=> d!1792288 (= c!999137 ((_ is Cons!63183) (t!376617 zl!343)))))

(assert (=> d!1792288 (= (unfocusZipperList!1097 (t!376617 zl!343)) lt!2269918)))

(declare-fun b!5678514 () Bool)

(assert (=> b!5678514 (= e!3495108 (Cons!63182 (generalisedConcat!1284 (exprs!5553 (h!69631 (t!376617 zl!343)))) (unfocusZipperList!1097 (t!376617 (t!376617 zl!343)))))))

(declare-fun b!5678515 () Bool)

(assert (=> b!5678515 (= e!3495108 Nil!63182)))

(assert (= (and d!1792288 c!999137) b!5678514))

(assert (= (and d!1792288 (not c!999137)) b!5678515))

(declare-fun m!6638494 () Bool)

(assert (=> d!1792288 m!6638494))

(declare-fun m!6638496 () Bool)

(assert (=> b!5678514 m!6638496))

(declare-fun m!6638498 () Bool)

(assert (=> b!5678514 m!6638498))

(assert (=> b!5678180 d!1792288))

(declare-fun d!1792294 () Bool)

(assert (=> d!1792294 (= (isEmpty!35036 (t!376618 s!2326)) ((_ is Nil!63184) (t!376618 s!2326)))))

(assert (=> d!1792034 d!1792294))

(declare-fun bs!1323581 () Bool)

(declare-fun b!5678531 () Bool)

(assert (= bs!1323581 (and b!5678531 d!1792138)))

(declare-fun lambda!305930 () Int)

(assert (=> bs!1323581 (not (= lambda!305930 lambda!305911))))

(assert (=> bs!1323581 (not (= lambda!305930 lambda!305912))))

(declare-fun bs!1323582 () Bool)

(assert (= bs!1323582 (and b!5678531 b!5678080)))

(assert (=> bs!1323582 (= (and (= (reg!15998 (regTwo!31851 r!7292)) (reg!15998 r!7292)) (= (regTwo!31851 r!7292) r!7292)) (= lambda!305930 lambda!305896))))

(declare-fun bs!1323583 () Bool)

(assert (= bs!1323583 (and b!5678531 b!5678082)))

(assert (=> bs!1323583 (not (= lambda!305930 lambda!305897))))

(declare-fun bs!1323584 () Bool)

(assert (= bs!1323584 (and b!5678531 b!5677537)))

(assert (=> bs!1323584 (not (= lambda!305930 lambda!305851))))

(declare-fun bs!1323585 () Bool)

(assert (= bs!1323585 (and b!5678531 d!1792142)))

(assert (=> bs!1323585 (not (= lambda!305930 lambda!305915))))

(assert (=> bs!1323584 (not (= lambda!305930 lambda!305852))))

(assert (=> b!5678531 true))

(assert (=> b!5678531 true))

(declare-fun bs!1323586 () Bool)

(declare-fun b!5678533 () Bool)

(assert (= bs!1323586 (and b!5678533 d!1792138)))

(declare-fun lambda!305931 () Int)

(assert (=> bs!1323586 (not (= lambda!305931 lambda!305911))))

(assert (=> bs!1323586 (= (and (= (regOne!31850 (regTwo!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regTwo!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305931 lambda!305912))))

(declare-fun bs!1323587 () Bool)

(assert (= bs!1323587 (and b!5678533 b!5678080)))

(assert (=> bs!1323587 (not (= lambda!305931 lambda!305896))))

(declare-fun bs!1323588 () Bool)

(assert (= bs!1323588 (and b!5678533 b!5678082)))

(assert (=> bs!1323588 (= (and (= (regOne!31850 (regTwo!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regTwo!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305931 lambda!305897))))

(declare-fun bs!1323589 () Bool)

(assert (= bs!1323589 (and b!5678533 b!5677537)))

(assert (=> bs!1323589 (not (= lambda!305931 lambda!305851))))

(declare-fun bs!1323590 () Bool)

(assert (= bs!1323590 (and b!5678533 d!1792142)))

(assert (=> bs!1323590 (not (= lambda!305931 lambda!305915))))

(declare-fun bs!1323591 () Bool)

(assert (= bs!1323591 (and b!5678533 b!5678531)))

(assert (=> bs!1323591 (not (= lambda!305931 lambda!305930))))

(assert (=> bs!1323589 (= (and (= (regOne!31850 (regTwo!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regTwo!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305931 lambda!305852))))

(assert (=> b!5678533 true))

(assert (=> b!5678533 true))

(declare-fun b!5678527 () Bool)

(declare-fun e!3495119 () Bool)

(assert (=> b!5678527 (= e!3495119 (= s!2326 (Cons!63184 (c!998875 (regTwo!31851 r!7292)) Nil!63184)))))

(declare-fun b!5678528 () Bool)

(declare-fun res!2399595 () Bool)

(declare-fun e!3495115 () Bool)

(assert (=> b!5678528 (=> res!2399595 e!3495115)))

(declare-fun call!431043 () Bool)

(assert (=> b!5678528 (= res!2399595 call!431043)))

(declare-fun e!3495116 () Bool)

(assert (=> b!5678528 (= e!3495116 e!3495115)))

(declare-fun d!1792296 () Bool)

(declare-fun c!999143 () Bool)

(assert (=> d!1792296 (= c!999143 ((_ is EmptyExpr!15669) (regTwo!31851 r!7292)))))

(declare-fun e!3495117 () Bool)

(assert (=> d!1792296 (= (matchRSpec!2772 (regTwo!31851 r!7292) s!2326) e!3495117)))

(declare-fun b!5678529 () Bool)

(declare-fun e!3495121 () Bool)

(assert (=> b!5678529 (= e!3495117 e!3495121)))

(declare-fun res!2399593 () Bool)

(assert (=> b!5678529 (= res!2399593 (not ((_ is EmptyLang!15669) (regTwo!31851 r!7292))))))

(assert (=> b!5678529 (=> (not res!2399593) (not e!3495121))))

(declare-fun b!5678530 () Bool)

(assert (=> b!5678530 (= e!3495117 call!431043)))

(declare-fun call!431044 () Bool)

(declare-fun c!999144 () Bool)

(declare-fun bm!431038 () Bool)

(assert (=> bm!431038 (= call!431044 (Exists!2769 (ite c!999144 lambda!305930 lambda!305931)))))

(assert (=> b!5678531 (= e!3495115 call!431044)))

(declare-fun b!5678532 () Bool)

(declare-fun c!999146 () Bool)

(assert (=> b!5678532 (= c!999146 ((_ is Union!15669) (regTwo!31851 r!7292)))))

(declare-fun e!3495118 () Bool)

(assert (=> b!5678532 (= e!3495119 e!3495118)))

(assert (=> b!5678533 (= e!3495116 call!431044)))

(declare-fun b!5678534 () Bool)

(declare-fun c!999145 () Bool)

(assert (=> b!5678534 (= c!999145 ((_ is ElementMatch!15669) (regTwo!31851 r!7292)))))

(assert (=> b!5678534 (= e!3495121 e!3495119)))

(declare-fun bm!431039 () Bool)

(assert (=> bm!431039 (= call!431043 (isEmpty!35036 s!2326))))

(declare-fun b!5678535 () Bool)

(assert (=> b!5678535 (= e!3495118 e!3495116)))

(assert (=> b!5678535 (= c!999144 ((_ is Star!15669) (regTwo!31851 r!7292)))))

(declare-fun b!5678536 () Bool)

(declare-fun e!3495120 () Bool)

(assert (=> b!5678536 (= e!3495118 e!3495120)))

(declare-fun res!2399594 () Bool)

(assert (=> b!5678536 (= res!2399594 (matchRSpec!2772 (regOne!31851 (regTwo!31851 r!7292)) s!2326))))

(assert (=> b!5678536 (=> res!2399594 e!3495120)))

(declare-fun b!5678537 () Bool)

(assert (=> b!5678537 (= e!3495120 (matchRSpec!2772 (regTwo!31851 (regTwo!31851 r!7292)) s!2326))))

(assert (= (and d!1792296 c!999143) b!5678530))

(assert (= (and d!1792296 (not c!999143)) b!5678529))

(assert (= (and b!5678529 res!2399593) b!5678534))

(assert (= (and b!5678534 c!999145) b!5678527))

(assert (= (and b!5678534 (not c!999145)) b!5678532))

(assert (= (and b!5678532 c!999146) b!5678536))

(assert (= (and b!5678532 (not c!999146)) b!5678535))

(assert (= (and b!5678536 (not res!2399594)) b!5678537))

(assert (= (and b!5678535 c!999144) b!5678528))

(assert (= (and b!5678535 (not c!999144)) b!5678533))

(assert (= (and b!5678528 (not res!2399595)) b!5678531))

(assert (= (or b!5678531 b!5678533) bm!431038))

(assert (= (or b!5678530 b!5678528) bm!431039))

(declare-fun m!6638510 () Bool)

(assert (=> bm!431038 m!6638510))

(assert (=> bm!431039 m!6638158))

(declare-fun m!6638514 () Bool)

(assert (=> b!5678536 m!6638514))

(declare-fun m!6638516 () Bool)

(assert (=> b!5678537 m!6638516))

(assert (=> b!5678086 d!1792296))

(declare-fun call!431056 () (InoxSet Context!10106))

(declare-fun c!999155 () Bool)

(declare-fun bm!431047 () Bool)

(declare-fun call!431053 () List!63306)

(assert (=> bm!431047 (= call!431056 (derivationStepZipperDown!1011 (ite c!999155 (regTwo!31851 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (regOne!31850 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))) (ite c!999155 (ite c!998936 lt!2269823 (Context!10107 call!430907)) (Context!10107 call!431053)) (h!69632 s!2326)))))

(declare-fun b!5678549 () Bool)

(declare-fun e!3495133 () (InoxSet Context!10106))

(declare-fun call!431052 () (InoxSet Context!10106))

(assert (=> b!5678549 (= e!3495133 ((_ map or) call!431052 call!431056))))

(declare-fun b!5678550 () Bool)

(declare-fun e!3495130 () (InoxSet Context!10106))

(declare-fun e!3495132 () (InoxSet Context!10106))

(assert (=> b!5678550 (= e!3495130 e!3495132)))

(declare-fun c!999152 () Bool)

(assert (=> b!5678550 (= c!999152 ((_ is Concat!24514) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun b!5678551 () Bool)

(declare-fun e!3495129 () Bool)

(assert (=> b!5678551 (= e!3495129 (nullable!5701 (regOne!31850 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))))

(declare-fun b!5678552 () Bool)

(declare-fun c!999153 () Bool)

(assert (=> b!5678552 (= c!999153 e!3495129)))

(declare-fun res!2399597 () Bool)

(assert (=> b!5678552 (=> (not res!2399597) (not e!3495129))))

(assert (=> b!5678552 (= res!2399597 ((_ is Concat!24514) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(assert (=> b!5678552 (= e!3495133 e!3495130)))

(declare-fun bm!431048 () Bool)

(assert (=> bm!431048 (= call!431053 ($colon$colon!1702 (exprs!5553 (ite c!998936 lt!2269823 (Context!10107 call!430907))) (ite (or c!999153 c!999152) (regTwo!31850 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))))

(declare-fun b!5678553 () Bool)

(declare-fun call!431051 () (InoxSet Context!10106))

(assert (=> b!5678553 (= e!3495132 call!431051)))

(declare-fun b!5678554 () Bool)

(declare-fun call!431055 () (InoxSet Context!10106))

(assert (=> b!5678554 (= e!3495130 ((_ map or) call!431056 call!431055))))

(declare-fun b!5678555 () Bool)

(declare-fun c!999156 () Bool)

(assert (=> b!5678555 (= c!999156 ((_ is Star!15669) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun e!3495131 () (InoxSet Context!10106))

(assert (=> b!5678555 (= e!3495132 e!3495131)))

(declare-fun bm!431046 () Bool)

(declare-fun call!431054 () List!63306)

(assert (=> bm!431046 (= call!431054 call!431053)))

(declare-fun c!999154 () Bool)

(declare-fun d!1792300 () Bool)

(assert (=> d!1792300 (= c!999154 (and ((_ is ElementMatch!15669) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (= (c!998875 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (h!69632 s!2326))))))

(declare-fun e!3495128 () (InoxSet Context!10106))

(assert (=> d!1792300 (= (derivationStepZipperDown!1011 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))) (ite c!998936 lt!2269823 (Context!10107 call!430907)) (h!69632 s!2326)) e!3495128)))

(declare-fun b!5678556 () Bool)

(assert (=> b!5678556 (= e!3495128 (store ((as const (Array Context!10106 Bool)) false) (ite c!998936 lt!2269823 (Context!10107 call!430907)) true))))

(declare-fun b!5678557 () Bool)

(assert (=> b!5678557 (= e!3495131 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678558 () Bool)

(assert (=> b!5678558 (= e!3495128 e!3495133)))

(assert (=> b!5678558 (= c!999155 ((_ is Union!15669) (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun bm!431049 () Bool)

(assert (=> bm!431049 (= call!431052 (derivationStepZipperDown!1011 (ite c!999155 (regOne!31851 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (ite c!999153 (regTwo!31850 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (ite c!999152 (regOne!31850 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))) (reg!15998 (ite c!998936 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))) (ite (or c!999155 c!999153) (ite c!998936 lt!2269823 (Context!10107 call!430907)) (Context!10107 call!431054)) (h!69632 s!2326)))))

(declare-fun b!5678559 () Bool)

(assert (=> b!5678559 (= e!3495131 call!431051)))

(declare-fun bm!431050 () Bool)

(assert (=> bm!431050 (= call!431051 call!431055)))

(declare-fun bm!431051 () Bool)

(assert (=> bm!431051 (= call!431055 call!431052)))

(assert (= (and d!1792300 c!999154) b!5678556))

(assert (= (and d!1792300 (not c!999154)) b!5678558))

(assert (= (and b!5678558 c!999155) b!5678549))

(assert (= (and b!5678558 (not c!999155)) b!5678552))

(assert (= (and b!5678552 res!2399597) b!5678551))

(assert (= (and b!5678552 c!999153) b!5678554))

(assert (= (and b!5678552 (not c!999153)) b!5678550))

(assert (= (and b!5678550 c!999152) b!5678553))

(assert (= (and b!5678550 (not c!999152)) b!5678555))

(assert (= (and b!5678555 c!999156) b!5678559))

(assert (= (and b!5678555 (not c!999156)) b!5678557))

(assert (= (or b!5678553 b!5678559) bm!431046))

(assert (= (or b!5678553 b!5678559) bm!431050))

(assert (= (or b!5678554 bm!431046) bm!431048))

(assert (= (or b!5678554 bm!431050) bm!431051))

(assert (= (or b!5678549 b!5678554) bm!431047))

(assert (= (or b!5678549 bm!431051) bm!431049))

(declare-fun m!6638524 () Bool)

(assert (=> b!5678556 m!6638524))

(declare-fun m!6638526 () Bool)

(assert (=> bm!431047 m!6638526))

(declare-fun m!6638528 () Bool)

(assert (=> b!5678551 m!6638528))

(declare-fun m!6638530 () Bool)

(assert (=> bm!431049 m!6638530))

(declare-fun m!6638532 () Bool)

(assert (=> bm!431048 m!6638532))

(assert (=> bm!430901 d!1792300))

(declare-fun b!5678571 () Bool)

(declare-fun e!3495145 () Bool)

(declare-fun lt!2269919 () Bool)

(declare-fun call!431059 () Bool)

(assert (=> b!5678571 (= e!3495145 (= lt!2269919 call!431059))))

(declare-fun b!5678572 () Bool)

(declare-fun res!2399604 () Bool)

(declare-fun e!3495141 () Bool)

(assert (=> b!5678572 (=> (not res!2399604) (not e!3495141))))

(assert (=> b!5678572 (= res!2399604 (not call!431059))))

(declare-fun b!5678573 () Bool)

(declare-fun res!2399608 () Bool)

(assert (=> b!5678573 (=> (not res!2399608) (not e!3495141))))

(assert (=> b!5678573 (= res!2399608 (isEmpty!35036 (tail!11145 (_1!36069 (get!21771 lt!2269905)))))))

(declare-fun b!5678574 () Bool)

(declare-fun e!3495147 () Bool)

(assert (=> b!5678574 (= e!3495147 (matchR!7854 (derivativeStep!4488 (regOne!31850 r!7292) (head!12050 (_1!36069 (get!21771 lt!2269905)))) (tail!11145 (_1!36069 (get!21771 lt!2269905)))))))

(declare-fun b!5678575 () Bool)

(declare-fun e!3495142 () Bool)

(declare-fun e!3495144 () Bool)

(assert (=> b!5678575 (= e!3495142 e!3495144)))

(declare-fun res!2399607 () Bool)

(assert (=> b!5678575 (=> (not res!2399607) (not e!3495144))))

(assert (=> b!5678575 (= res!2399607 (not lt!2269919))))

(declare-fun b!5678576 () Bool)

(declare-fun res!2399602 () Bool)

(declare-fun e!3495143 () Bool)

(assert (=> b!5678576 (=> res!2399602 e!3495143)))

(assert (=> b!5678576 (= res!2399602 (not (isEmpty!35036 (tail!11145 (_1!36069 (get!21771 lt!2269905))))))))

(declare-fun b!5678578 () Bool)

(assert (=> b!5678578 (= e!3495143 (not (= (head!12050 (_1!36069 (get!21771 lt!2269905))) (c!998875 (regOne!31850 r!7292)))))))

(declare-fun bm!431054 () Bool)

(assert (=> bm!431054 (= call!431059 (isEmpty!35036 (_1!36069 (get!21771 lt!2269905))))))

(declare-fun b!5678579 () Bool)

(declare-fun e!3495146 () Bool)

(assert (=> b!5678579 (= e!3495145 e!3495146)))

(declare-fun c!999161 () Bool)

(assert (=> b!5678579 (= c!999161 ((_ is EmptyLang!15669) (regOne!31850 r!7292)))))

(declare-fun b!5678580 () Bool)

(assert (=> b!5678580 (= e!3495147 (nullable!5701 (regOne!31850 r!7292)))))

(declare-fun b!5678581 () Bool)

(assert (=> b!5678581 (= e!3495146 (not lt!2269919))))

(declare-fun b!5678582 () Bool)

(declare-fun res!2399605 () Bool)

(assert (=> b!5678582 (=> res!2399605 e!3495142)))

(assert (=> b!5678582 (= res!2399605 (not ((_ is ElementMatch!15669) (regOne!31850 r!7292))))))

(assert (=> b!5678582 (= e!3495146 e!3495142)))

(declare-fun b!5678583 () Bool)

(assert (=> b!5678583 (= e!3495144 e!3495143)))

(declare-fun res!2399603 () Bool)

(assert (=> b!5678583 (=> res!2399603 e!3495143)))

(assert (=> b!5678583 (= res!2399603 call!431059)))

(declare-fun b!5678584 () Bool)

(declare-fun res!2399606 () Bool)

(assert (=> b!5678584 (=> res!2399606 e!3495142)))

(assert (=> b!5678584 (= res!2399606 e!3495141)))

(declare-fun res!2399601 () Bool)

(assert (=> b!5678584 (=> (not res!2399601) (not e!3495141))))

(assert (=> b!5678584 (= res!2399601 lt!2269919)))

(declare-fun b!5678577 () Bool)

(assert (=> b!5678577 (= e!3495141 (= (head!12050 (_1!36069 (get!21771 lt!2269905))) (c!998875 (regOne!31850 r!7292))))))

(declare-fun d!1792304 () Bool)

(assert (=> d!1792304 e!3495145))

(declare-fun c!999163 () Bool)

(assert (=> d!1792304 (= c!999163 ((_ is EmptyExpr!15669) (regOne!31850 r!7292)))))

(assert (=> d!1792304 (= lt!2269919 e!3495147)))

(declare-fun c!999162 () Bool)

(assert (=> d!1792304 (= c!999162 (isEmpty!35036 (_1!36069 (get!21771 lt!2269905))))))

(assert (=> d!1792304 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792304 (= (matchR!7854 (regOne!31850 r!7292) (_1!36069 (get!21771 lt!2269905))) lt!2269919)))

(assert (= (and d!1792304 c!999162) b!5678580))

(assert (= (and d!1792304 (not c!999162)) b!5678574))

(assert (= (and d!1792304 c!999163) b!5678571))

(assert (= (and d!1792304 (not c!999163)) b!5678579))

(assert (= (and b!5678579 c!999161) b!5678581))

(assert (= (and b!5678579 (not c!999161)) b!5678582))

(assert (= (and b!5678582 (not res!2399605)) b!5678584))

(assert (= (and b!5678584 res!2399601) b!5678572))

(assert (= (and b!5678572 res!2399604) b!5678573))

(assert (= (and b!5678573 res!2399608) b!5678577))

(assert (= (and b!5678584 (not res!2399606)) b!5678575))

(assert (= (and b!5678575 res!2399607) b!5678583))

(assert (= (and b!5678583 (not res!2399603)) b!5678576))

(assert (= (and b!5678576 (not res!2399602)) b!5678578))

(assert (= (or b!5678571 b!5678572 b!5678583) bm!431054))

(declare-fun m!6638534 () Bool)

(assert (=> b!5678576 m!6638534))

(assert (=> b!5678576 m!6638534))

(declare-fun m!6638536 () Bool)

(assert (=> b!5678576 m!6638536))

(declare-fun m!6638538 () Bool)

(assert (=> b!5678580 m!6638538))

(assert (=> b!5678573 m!6638534))

(assert (=> b!5678573 m!6638534))

(assert (=> b!5678573 m!6638536))

(declare-fun m!6638540 () Bool)

(assert (=> b!5678578 m!6638540))

(declare-fun m!6638542 () Bool)

(assert (=> bm!431054 m!6638542))

(assert (=> b!5678577 m!6638540))

(assert (=> b!5678574 m!6638540))

(assert (=> b!5678574 m!6638540))

(declare-fun m!6638544 () Bool)

(assert (=> b!5678574 m!6638544))

(assert (=> b!5678574 m!6638534))

(assert (=> b!5678574 m!6638544))

(assert (=> b!5678574 m!6638534))

(declare-fun m!6638546 () Bool)

(assert (=> b!5678574 m!6638546))

(assert (=> d!1792304 m!6638542))

(assert (=> d!1792304 m!6638232))

(assert (=> b!5678215 d!1792304))

(assert (=> b!5678215 d!1792282))

(declare-fun d!1792306 () Bool)

(assert (=> d!1792306 (= (isDefined!12381 lt!2269905) (not (isEmpty!35038 lt!2269905)))))

(declare-fun bs!1323596 () Bool)

(assert (= bs!1323596 d!1792306))

(declare-fun m!6638548 () Bool)

(assert (=> bs!1323596 m!6638548))

(assert (=> d!1792134 d!1792306))

(declare-fun b!5678585 () Bool)

(declare-fun e!3495152 () Bool)

(declare-fun lt!2269920 () Bool)

(declare-fun call!431060 () Bool)

(assert (=> b!5678585 (= e!3495152 (= lt!2269920 call!431060))))

(declare-fun b!5678586 () Bool)

(declare-fun res!2399612 () Bool)

(declare-fun e!3495148 () Bool)

(assert (=> b!5678586 (=> (not res!2399612) (not e!3495148))))

(assert (=> b!5678586 (= res!2399612 (not call!431060))))

(declare-fun b!5678587 () Bool)

(declare-fun res!2399616 () Bool)

(assert (=> b!5678587 (=> (not res!2399616) (not e!3495148))))

(assert (=> b!5678587 (= res!2399616 (isEmpty!35036 (tail!11145 Nil!63184)))))

(declare-fun b!5678588 () Bool)

(declare-fun e!3495154 () Bool)

(assert (=> b!5678588 (= e!3495154 (matchR!7854 (derivativeStep!4488 (regOne!31850 r!7292) (head!12050 Nil!63184)) (tail!11145 Nil!63184)))))

(declare-fun b!5678589 () Bool)

(declare-fun e!3495149 () Bool)

(declare-fun e!3495151 () Bool)

(assert (=> b!5678589 (= e!3495149 e!3495151)))

(declare-fun res!2399615 () Bool)

(assert (=> b!5678589 (=> (not res!2399615) (not e!3495151))))

(assert (=> b!5678589 (= res!2399615 (not lt!2269920))))

(declare-fun b!5678590 () Bool)

(declare-fun res!2399610 () Bool)

(declare-fun e!3495150 () Bool)

(assert (=> b!5678590 (=> res!2399610 e!3495150)))

(assert (=> b!5678590 (= res!2399610 (not (isEmpty!35036 (tail!11145 Nil!63184))))))

(declare-fun b!5678592 () Bool)

(assert (=> b!5678592 (= e!3495150 (not (= (head!12050 Nil!63184) (c!998875 (regOne!31850 r!7292)))))))

(declare-fun bm!431055 () Bool)

(assert (=> bm!431055 (= call!431060 (isEmpty!35036 Nil!63184))))

(declare-fun b!5678593 () Bool)

(declare-fun e!3495153 () Bool)

(assert (=> b!5678593 (= e!3495152 e!3495153)))

(declare-fun c!999164 () Bool)

(assert (=> b!5678593 (= c!999164 ((_ is EmptyLang!15669) (regOne!31850 r!7292)))))

(declare-fun b!5678594 () Bool)

(assert (=> b!5678594 (= e!3495154 (nullable!5701 (regOne!31850 r!7292)))))

(declare-fun b!5678595 () Bool)

(assert (=> b!5678595 (= e!3495153 (not lt!2269920))))

(declare-fun b!5678596 () Bool)

(declare-fun res!2399613 () Bool)

(assert (=> b!5678596 (=> res!2399613 e!3495149)))

(assert (=> b!5678596 (= res!2399613 (not ((_ is ElementMatch!15669) (regOne!31850 r!7292))))))

(assert (=> b!5678596 (= e!3495153 e!3495149)))

(declare-fun b!5678597 () Bool)

(assert (=> b!5678597 (= e!3495151 e!3495150)))

(declare-fun res!2399611 () Bool)

(assert (=> b!5678597 (=> res!2399611 e!3495150)))

(assert (=> b!5678597 (= res!2399611 call!431060)))

(declare-fun b!5678598 () Bool)

(declare-fun res!2399614 () Bool)

(assert (=> b!5678598 (=> res!2399614 e!3495149)))

(assert (=> b!5678598 (= res!2399614 e!3495148)))

(declare-fun res!2399609 () Bool)

(assert (=> b!5678598 (=> (not res!2399609) (not e!3495148))))

(assert (=> b!5678598 (= res!2399609 lt!2269920)))

(declare-fun b!5678591 () Bool)

(assert (=> b!5678591 (= e!3495148 (= (head!12050 Nil!63184) (c!998875 (regOne!31850 r!7292))))))

(declare-fun d!1792308 () Bool)

(assert (=> d!1792308 e!3495152))

(declare-fun c!999166 () Bool)

(assert (=> d!1792308 (= c!999166 ((_ is EmptyExpr!15669) (regOne!31850 r!7292)))))

(assert (=> d!1792308 (= lt!2269920 e!3495154)))

(declare-fun c!999165 () Bool)

(assert (=> d!1792308 (= c!999165 (isEmpty!35036 Nil!63184))))

(assert (=> d!1792308 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792308 (= (matchR!7854 (regOne!31850 r!7292) Nil!63184) lt!2269920)))

(assert (= (and d!1792308 c!999165) b!5678594))

(assert (= (and d!1792308 (not c!999165)) b!5678588))

(assert (= (and d!1792308 c!999166) b!5678585))

(assert (= (and d!1792308 (not c!999166)) b!5678593))

(assert (= (and b!5678593 c!999164) b!5678595))

(assert (= (and b!5678593 (not c!999164)) b!5678596))

(assert (= (and b!5678596 (not res!2399613)) b!5678598))

(assert (= (and b!5678598 res!2399609) b!5678586))

(assert (= (and b!5678586 res!2399612) b!5678587))

(assert (= (and b!5678587 res!2399616) b!5678591))

(assert (= (and b!5678598 (not res!2399614)) b!5678589))

(assert (= (and b!5678589 res!2399615) b!5678597))

(assert (= (and b!5678597 (not res!2399611)) b!5678590))

(assert (= (and b!5678590 (not res!2399610)) b!5678592))

(assert (= (or b!5678585 b!5678586 b!5678597) bm!431055))

(declare-fun m!6638550 () Bool)

(assert (=> b!5678590 m!6638550))

(assert (=> b!5678590 m!6638550))

(declare-fun m!6638552 () Bool)

(assert (=> b!5678590 m!6638552))

(assert (=> b!5678594 m!6638538))

(assert (=> b!5678587 m!6638550))

(assert (=> b!5678587 m!6638550))

(assert (=> b!5678587 m!6638552))

(declare-fun m!6638554 () Bool)

(assert (=> b!5678592 m!6638554))

(declare-fun m!6638556 () Bool)

(assert (=> bm!431055 m!6638556))

(assert (=> b!5678591 m!6638554))

(assert (=> b!5678588 m!6638554))

(assert (=> b!5678588 m!6638554))

(declare-fun m!6638558 () Bool)

(assert (=> b!5678588 m!6638558))

(assert (=> b!5678588 m!6638550))

(assert (=> b!5678588 m!6638558))

(assert (=> b!5678588 m!6638550))

(declare-fun m!6638560 () Bool)

(assert (=> b!5678588 m!6638560))

(assert (=> d!1792308 m!6638556))

(assert (=> d!1792308 m!6638232))

(assert (=> d!1792134 d!1792308))

(declare-fun b!5678599 () Bool)

(declare-fun e!3495156 () Bool)

(declare-fun e!3495157 () Bool)

(assert (=> b!5678599 (= e!3495156 e!3495157)))

(declare-fun res!2399618 () Bool)

(assert (=> b!5678599 (=> (not res!2399618) (not e!3495157))))

(declare-fun call!431063 () Bool)

(assert (=> b!5678599 (= res!2399618 call!431063)))

(declare-fun d!1792310 () Bool)

(declare-fun res!2399621 () Bool)

(declare-fun e!3495160 () Bool)

(assert (=> d!1792310 (=> res!2399621 e!3495160)))

(assert (=> d!1792310 (= res!2399621 ((_ is ElementMatch!15669) (regOne!31850 r!7292)))))

(assert (=> d!1792310 (= (validRegex!7405 (regOne!31850 r!7292)) e!3495160)))

(declare-fun b!5678600 () Bool)

(declare-fun call!431061 () Bool)

(assert (=> b!5678600 (= e!3495157 call!431061)))

(declare-fun b!5678601 () Bool)

(declare-fun e!3495155 () Bool)

(declare-fun e!3495161 () Bool)

(assert (=> b!5678601 (= e!3495155 e!3495161)))

(declare-fun res!2399617 () Bool)

(assert (=> b!5678601 (= res!2399617 (not (nullable!5701 (reg!15998 (regOne!31850 r!7292)))))))

(assert (=> b!5678601 (=> (not res!2399617) (not e!3495161))))

(declare-fun b!5678602 () Bool)

(declare-fun e!3495159 () Bool)

(assert (=> b!5678602 (= e!3495159 call!431061)))

(declare-fun b!5678603 () Bool)

(declare-fun e!3495158 () Bool)

(assert (=> b!5678603 (= e!3495155 e!3495158)))

(declare-fun c!999167 () Bool)

(assert (=> b!5678603 (= c!999167 ((_ is Union!15669) (regOne!31850 r!7292)))))

(declare-fun bm!431056 () Bool)

(declare-fun call!431062 () Bool)

(declare-fun c!999168 () Bool)

(assert (=> bm!431056 (= call!431062 (validRegex!7405 (ite c!999168 (reg!15998 (regOne!31850 r!7292)) (ite c!999167 (regTwo!31851 (regOne!31850 r!7292)) (regTwo!31850 (regOne!31850 r!7292))))))))

(declare-fun b!5678604 () Bool)

(declare-fun res!2399619 () Bool)

(assert (=> b!5678604 (=> res!2399619 e!3495156)))

(assert (=> b!5678604 (= res!2399619 (not ((_ is Concat!24514) (regOne!31850 r!7292))))))

(assert (=> b!5678604 (= e!3495158 e!3495156)))

(declare-fun b!5678605 () Bool)

(assert (=> b!5678605 (= e!3495160 e!3495155)))

(assert (=> b!5678605 (= c!999168 ((_ is Star!15669) (regOne!31850 r!7292)))))

(declare-fun bm!431057 () Bool)

(assert (=> bm!431057 (= call!431061 call!431062)))

(declare-fun b!5678606 () Bool)

(declare-fun res!2399620 () Bool)

(assert (=> b!5678606 (=> (not res!2399620) (not e!3495159))))

(assert (=> b!5678606 (= res!2399620 call!431063)))

(assert (=> b!5678606 (= e!3495158 e!3495159)))

(declare-fun bm!431058 () Bool)

(assert (=> bm!431058 (= call!431063 (validRegex!7405 (ite c!999167 (regOne!31851 (regOne!31850 r!7292)) (regOne!31850 (regOne!31850 r!7292)))))))

(declare-fun b!5678607 () Bool)

(assert (=> b!5678607 (= e!3495161 call!431062)))

(assert (= (and d!1792310 (not res!2399621)) b!5678605))

(assert (= (and b!5678605 c!999168) b!5678601))

(assert (= (and b!5678605 (not c!999168)) b!5678603))

(assert (= (and b!5678601 res!2399617) b!5678607))

(assert (= (and b!5678603 c!999167) b!5678606))

(assert (= (and b!5678603 (not c!999167)) b!5678604))

(assert (= (and b!5678606 res!2399620) b!5678602))

(assert (= (and b!5678604 (not res!2399619)) b!5678599))

(assert (= (and b!5678599 res!2399618) b!5678600))

(assert (= (or b!5678602 b!5678600) bm!431057))

(assert (= (or b!5678606 b!5678599) bm!431058))

(assert (= (or b!5678607 bm!431057) bm!431056))

(declare-fun m!6638562 () Bool)

(assert (=> b!5678601 m!6638562))

(declare-fun m!6638564 () Bool)

(assert (=> bm!431056 m!6638564))

(declare-fun m!6638566 () Bool)

(assert (=> bm!431058 m!6638566))

(assert (=> d!1792134 d!1792310))

(declare-fun b!5678608 () Bool)

(declare-fun e!3495166 () Bool)

(declare-fun lt!2269921 () Bool)

(declare-fun call!431064 () Bool)

(assert (=> b!5678608 (= e!3495166 (= lt!2269921 call!431064))))

(declare-fun b!5678609 () Bool)

(declare-fun res!2399625 () Bool)

(declare-fun e!3495162 () Bool)

(assert (=> b!5678609 (=> (not res!2399625) (not e!3495162))))

(assert (=> b!5678609 (= res!2399625 (not call!431064))))

(declare-fun b!5678610 () Bool)

(declare-fun res!2399629 () Bool)

(assert (=> b!5678610 (=> (not res!2399629) (not e!3495162))))

(assert (=> b!5678610 (= res!2399629 (isEmpty!35036 (tail!11145 (tail!11145 s!2326))))))

(declare-fun b!5678611 () Bool)

(declare-fun e!3495168 () Bool)

(assert (=> b!5678611 (= e!3495168 (matchR!7854 (derivativeStep!4488 (derivativeStep!4488 r!7292 (head!12050 s!2326)) (head!12050 (tail!11145 s!2326))) (tail!11145 (tail!11145 s!2326))))))

(declare-fun b!5678612 () Bool)

(declare-fun e!3495163 () Bool)

(declare-fun e!3495165 () Bool)

(assert (=> b!5678612 (= e!3495163 e!3495165)))

(declare-fun res!2399628 () Bool)

(assert (=> b!5678612 (=> (not res!2399628) (not e!3495165))))

(assert (=> b!5678612 (= res!2399628 (not lt!2269921))))

(declare-fun b!5678613 () Bool)

(declare-fun res!2399623 () Bool)

(declare-fun e!3495164 () Bool)

(assert (=> b!5678613 (=> res!2399623 e!3495164)))

(assert (=> b!5678613 (= res!2399623 (not (isEmpty!35036 (tail!11145 (tail!11145 s!2326)))))))

(declare-fun b!5678615 () Bool)

(assert (=> b!5678615 (= e!3495164 (not (= (head!12050 (tail!11145 s!2326)) (c!998875 (derivativeStep!4488 r!7292 (head!12050 s!2326))))))))

(declare-fun bm!431059 () Bool)

(assert (=> bm!431059 (= call!431064 (isEmpty!35036 (tail!11145 s!2326)))))

(declare-fun b!5678616 () Bool)

(declare-fun e!3495167 () Bool)

(assert (=> b!5678616 (= e!3495166 e!3495167)))

(declare-fun c!999169 () Bool)

(assert (=> b!5678616 (= c!999169 ((_ is EmptyLang!15669) (derivativeStep!4488 r!7292 (head!12050 s!2326))))))

(declare-fun b!5678617 () Bool)

(assert (=> b!5678617 (= e!3495168 (nullable!5701 (derivativeStep!4488 r!7292 (head!12050 s!2326))))))

(declare-fun b!5678618 () Bool)

(assert (=> b!5678618 (= e!3495167 (not lt!2269921))))

(declare-fun b!5678619 () Bool)

(declare-fun res!2399626 () Bool)

(assert (=> b!5678619 (=> res!2399626 e!3495163)))

(assert (=> b!5678619 (= res!2399626 (not ((_ is ElementMatch!15669) (derivativeStep!4488 r!7292 (head!12050 s!2326)))))))

(assert (=> b!5678619 (= e!3495167 e!3495163)))

(declare-fun b!5678620 () Bool)

(assert (=> b!5678620 (= e!3495165 e!3495164)))

(declare-fun res!2399624 () Bool)

(assert (=> b!5678620 (=> res!2399624 e!3495164)))

(assert (=> b!5678620 (= res!2399624 call!431064)))

(declare-fun b!5678621 () Bool)

(declare-fun res!2399627 () Bool)

(assert (=> b!5678621 (=> res!2399627 e!3495163)))

(assert (=> b!5678621 (= res!2399627 e!3495162)))

(declare-fun res!2399622 () Bool)

(assert (=> b!5678621 (=> (not res!2399622) (not e!3495162))))

(assert (=> b!5678621 (= res!2399622 lt!2269921)))

(declare-fun b!5678614 () Bool)

(assert (=> b!5678614 (= e!3495162 (= (head!12050 (tail!11145 s!2326)) (c!998875 (derivativeStep!4488 r!7292 (head!12050 s!2326)))))))

(declare-fun d!1792312 () Bool)

(assert (=> d!1792312 e!3495166))

(declare-fun c!999171 () Bool)

(assert (=> d!1792312 (= c!999171 ((_ is EmptyExpr!15669) (derivativeStep!4488 r!7292 (head!12050 s!2326))))))

(assert (=> d!1792312 (= lt!2269921 e!3495168)))

(declare-fun c!999170 () Bool)

(assert (=> d!1792312 (= c!999170 (isEmpty!35036 (tail!11145 s!2326)))))

(assert (=> d!1792312 (validRegex!7405 (derivativeStep!4488 r!7292 (head!12050 s!2326)))))

(assert (=> d!1792312 (= (matchR!7854 (derivativeStep!4488 r!7292 (head!12050 s!2326)) (tail!11145 s!2326)) lt!2269921)))

(assert (= (and d!1792312 c!999170) b!5678617))

(assert (= (and d!1792312 (not c!999170)) b!5678611))

(assert (= (and d!1792312 c!999171) b!5678608))

(assert (= (and d!1792312 (not c!999171)) b!5678616))

(assert (= (and b!5678616 c!999169) b!5678618))

(assert (= (and b!5678616 (not c!999169)) b!5678619))

(assert (= (and b!5678619 (not res!2399626)) b!5678621))

(assert (= (and b!5678621 res!2399622) b!5678609))

(assert (= (and b!5678609 res!2399625) b!5678610))

(assert (= (and b!5678610 res!2399629) b!5678614))

(assert (= (and b!5678621 (not res!2399627)) b!5678612))

(assert (= (and b!5678612 res!2399628) b!5678620))

(assert (= (and b!5678620 (not res!2399624)) b!5678613))

(assert (= (and b!5678613 (not res!2399623)) b!5678615))

(assert (= (or b!5678608 b!5678609 b!5678620) bm!431059))

(assert (=> b!5678613 m!6638164))

(declare-fun m!6638568 () Bool)

(assert (=> b!5678613 m!6638568))

(assert (=> b!5678613 m!6638568))

(declare-fun m!6638570 () Bool)

(assert (=> b!5678613 m!6638570))

(assert (=> b!5678617 m!6638172))

(declare-fun m!6638572 () Bool)

(assert (=> b!5678617 m!6638572))

(assert (=> b!5678610 m!6638164))

(assert (=> b!5678610 m!6638568))

(assert (=> b!5678610 m!6638568))

(assert (=> b!5678610 m!6638570))

(assert (=> b!5678615 m!6638164))

(declare-fun m!6638574 () Bool)

(assert (=> b!5678615 m!6638574))

(assert (=> bm!431059 m!6638164))

(assert (=> bm!431059 m!6638166))

(assert (=> b!5678614 m!6638164))

(assert (=> b!5678614 m!6638574))

(assert (=> b!5678611 m!6638164))

(assert (=> b!5678611 m!6638574))

(assert (=> b!5678611 m!6638172))

(assert (=> b!5678611 m!6638574))

(declare-fun m!6638576 () Bool)

(assert (=> b!5678611 m!6638576))

(assert (=> b!5678611 m!6638164))

(assert (=> b!5678611 m!6638568))

(assert (=> b!5678611 m!6638576))

(assert (=> b!5678611 m!6638568))

(declare-fun m!6638578 () Bool)

(assert (=> b!5678611 m!6638578))

(assert (=> d!1792312 m!6638164))

(assert (=> d!1792312 m!6638166))

(assert (=> d!1792312 m!6638172))

(declare-fun m!6638580 () Bool)

(assert (=> d!1792312 m!6638580))

(assert (=> b!5678132 d!1792312))

(declare-fun b!5678650 () Bool)

(declare-fun e!3495187 () Regex!15669)

(declare-fun e!3495184 () Regex!15669)

(assert (=> b!5678650 (= e!3495187 e!3495184)))

(declare-fun c!999184 () Bool)

(assert (=> b!5678650 (= c!999184 ((_ is ElementMatch!15669) r!7292))))

(declare-fun b!5678651 () Bool)

(declare-fun e!3495186 () Regex!15669)

(declare-fun call!431073 () Regex!15669)

(assert (=> b!5678651 (= e!3495186 (Union!15669 (Concat!24514 call!431073 (regTwo!31850 r!7292)) EmptyLang!15669))))

(declare-fun bm!431068 () Bool)

(declare-fun call!431076 () Regex!15669)

(assert (=> bm!431068 (= call!431073 call!431076)))

(declare-fun d!1792314 () Bool)

(declare-fun lt!2269926 () Regex!15669)

(assert (=> d!1792314 (validRegex!7405 lt!2269926)))

(assert (=> d!1792314 (= lt!2269926 e!3495187)))

(declare-fun c!999186 () Bool)

(assert (=> d!1792314 (= c!999186 (or ((_ is EmptyExpr!15669) r!7292) ((_ is EmptyLang!15669) r!7292)))))

(assert (=> d!1792314 (validRegex!7405 r!7292)))

(assert (=> d!1792314 (= (derivativeStep!4488 r!7292 (head!12050 s!2326)) lt!2269926)))

(declare-fun b!5678652 () Bool)

(declare-fun c!999185 () Bool)

(assert (=> b!5678652 (= c!999185 (nullable!5701 (regOne!31850 r!7292)))))

(declare-fun e!3495183 () Regex!15669)

(assert (=> b!5678652 (= e!3495183 e!3495186)))

(declare-fun c!999187 () Bool)

(declare-fun call!431075 () Regex!15669)

(declare-fun bm!431069 () Bool)

(assert (=> bm!431069 (= call!431075 (derivativeStep!4488 (ite c!999187 (regOne!31851 r!7292) (regOne!31850 r!7292)) (head!12050 s!2326)))))

(declare-fun b!5678653 () Bool)

(assert (=> b!5678653 (= c!999187 ((_ is Union!15669) r!7292))))

(declare-fun e!3495185 () Regex!15669)

(assert (=> b!5678653 (= e!3495184 e!3495185)))

(declare-fun b!5678654 () Bool)

(assert (=> b!5678654 (= e!3495184 (ite (= (head!12050 s!2326) (c!998875 r!7292)) EmptyExpr!15669 EmptyLang!15669))))

(declare-fun b!5678655 () Bool)

(assert (=> b!5678655 (= e!3495187 EmptyLang!15669)))

(declare-fun b!5678656 () Bool)

(assert (=> b!5678656 (= e!3495183 (Concat!24514 call!431076 r!7292))))

(declare-fun bm!431070 () Bool)

(declare-fun call!431074 () Regex!15669)

(assert (=> bm!431070 (= call!431076 call!431074)))

(declare-fun b!5678657 () Bool)

(assert (=> b!5678657 (= e!3495185 (Union!15669 call!431075 call!431074))))

(declare-fun bm!431071 () Bool)

(declare-fun c!999188 () Bool)

(assert (=> bm!431071 (= call!431074 (derivativeStep!4488 (ite c!999187 (regTwo!31851 r!7292) (ite c!999188 (reg!15998 r!7292) (ite c!999185 (regTwo!31850 r!7292) (regOne!31850 r!7292)))) (head!12050 s!2326)))))

(declare-fun b!5678658 () Bool)

(assert (=> b!5678658 (= e!3495185 e!3495183)))

(assert (=> b!5678658 (= c!999188 ((_ is Star!15669) r!7292))))

(declare-fun b!5678659 () Bool)

(assert (=> b!5678659 (= e!3495186 (Union!15669 (Concat!24514 call!431075 (regTwo!31850 r!7292)) call!431073))))

(assert (= (and d!1792314 c!999186) b!5678655))

(assert (= (and d!1792314 (not c!999186)) b!5678650))

(assert (= (and b!5678650 c!999184) b!5678654))

(assert (= (and b!5678650 (not c!999184)) b!5678653))

(assert (= (and b!5678653 c!999187) b!5678657))

(assert (= (and b!5678653 (not c!999187)) b!5678658))

(assert (= (and b!5678658 c!999188) b!5678656))

(assert (= (and b!5678658 (not c!999188)) b!5678652))

(assert (= (and b!5678652 c!999185) b!5678659))

(assert (= (and b!5678652 (not c!999185)) b!5678651))

(assert (= (or b!5678659 b!5678651) bm!431068))

(assert (= (or b!5678656 bm!431068) bm!431070))

(assert (= (or b!5678657 bm!431070) bm!431071))

(assert (= (or b!5678657 b!5678659) bm!431069))

(declare-fun m!6638588 () Bool)

(assert (=> d!1792314 m!6638588))

(assert (=> d!1792314 m!6637816))

(assert (=> b!5678652 m!6638538))

(assert (=> bm!431069 m!6638170))

(declare-fun m!6638590 () Bool)

(assert (=> bm!431069 m!6638590))

(assert (=> bm!431071 m!6638170))

(declare-fun m!6638592 () Bool)

(assert (=> bm!431071 m!6638592))

(assert (=> b!5678132 d!1792314))

(assert (=> b!5678132 d!1792216))

(declare-fun d!1792318 () Bool)

(assert (=> d!1792318 (= (tail!11145 s!2326) (t!376618 s!2326))))

(assert (=> b!5678132 d!1792318))

(declare-fun call!431082 () (InoxSet Context!10106))

(declare-fun c!999193 () Bool)

(declare-fun bm!431073 () Bool)

(declare-fun call!431079 () List!63306)

(assert (=> bm!431073 (= call!431082 (derivationStepZipperDown!1011 (ite c!999193 (regTwo!31851 (h!69630 (exprs!5553 lt!2269809))) (regOne!31850 (h!69630 (exprs!5553 lt!2269809)))) (ite c!999193 (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (Context!10107 call!431079)) (h!69632 s!2326)))))

(declare-fun b!5678664 () Bool)

(declare-fun e!3495195 () (InoxSet Context!10106))

(declare-fun call!431078 () (InoxSet Context!10106))

(assert (=> b!5678664 (= e!3495195 ((_ map or) call!431078 call!431082))))

(declare-fun b!5678665 () Bool)

(declare-fun e!3495192 () (InoxSet Context!10106))

(declare-fun e!3495194 () (InoxSet Context!10106))

(assert (=> b!5678665 (= e!3495192 e!3495194)))

(declare-fun c!999190 () Bool)

(assert (=> b!5678665 (= c!999190 ((_ is Concat!24514) (h!69630 (exprs!5553 lt!2269809))))))

(declare-fun b!5678666 () Bool)

(declare-fun e!3495191 () Bool)

(assert (=> b!5678666 (= e!3495191 (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 lt!2269809)))))))

(declare-fun b!5678667 () Bool)

(declare-fun c!999191 () Bool)

(assert (=> b!5678667 (= c!999191 e!3495191)))

(declare-fun res!2399636 () Bool)

(assert (=> b!5678667 (=> (not res!2399636) (not e!3495191))))

(assert (=> b!5678667 (= res!2399636 ((_ is Concat!24514) (h!69630 (exprs!5553 lt!2269809))))))

(assert (=> b!5678667 (= e!3495195 e!3495192)))

(declare-fun bm!431074 () Bool)

(assert (=> bm!431074 (= call!431079 ($colon$colon!1702 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269809)))) (ite (or c!999191 c!999190) (regTwo!31850 (h!69630 (exprs!5553 lt!2269809))) (h!69630 (exprs!5553 lt!2269809)))))))

(declare-fun b!5678668 () Bool)

(declare-fun call!431077 () (InoxSet Context!10106))

(assert (=> b!5678668 (= e!3495194 call!431077)))

(declare-fun b!5678669 () Bool)

(declare-fun call!431081 () (InoxSet Context!10106))

(assert (=> b!5678669 (= e!3495192 ((_ map or) call!431082 call!431081))))

(declare-fun b!5678670 () Bool)

(declare-fun c!999194 () Bool)

(assert (=> b!5678670 (= c!999194 ((_ is Star!15669) (h!69630 (exprs!5553 lt!2269809))))))

(declare-fun e!3495193 () (InoxSet Context!10106))

(assert (=> b!5678670 (= e!3495194 e!3495193)))

(declare-fun bm!431072 () Bool)

(declare-fun call!431080 () List!63306)

(assert (=> bm!431072 (= call!431080 call!431079)))

(declare-fun d!1792320 () Bool)

(declare-fun c!999192 () Bool)

(assert (=> d!1792320 (= c!999192 (and ((_ is ElementMatch!15669) (h!69630 (exprs!5553 lt!2269809))) (= (c!998875 (h!69630 (exprs!5553 lt!2269809))) (h!69632 s!2326))))))

(declare-fun e!3495190 () (InoxSet Context!10106))

(assert (=> d!1792320 (= (derivationStepZipperDown!1011 (h!69630 (exprs!5553 lt!2269809)) (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (h!69632 s!2326)) e!3495190)))

(declare-fun b!5678671 () Bool)

(assert (=> b!5678671 (= e!3495190 (store ((as const (Array Context!10106 Bool)) false) (Context!10107 (t!376616 (exprs!5553 lt!2269809))) true))))

(declare-fun b!5678672 () Bool)

(assert (=> b!5678672 (= e!3495193 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678673 () Bool)

(assert (=> b!5678673 (= e!3495190 e!3495195)))

(assert (=> b!5678673 (= c!999193 ((_ is Union!15669) (h!69630 (exprs!5553 lt!2269809))))))

(declare-fun bm!431075 () Bool)

(assert (=> bm!431075 (= call!431078 (derivationStepZipperDown!1011 (ite c!999193 (regOne!31851 (h!69630 (exprs!5553 lt!2269809))) (ite c!999191 (regTwo!31850 (h!69630 (exprs!5553 lt!2269809))) (ite c!999190 (regOne!31850 (h!69630 (exprs!5553 lt!2269809))) (reg!15998 (h!69630 (exprs!5553 lt!2269809)))))) (ite (or c!999193 c!999191) (Context!10107 (t!376616 (exprs!5553 lt!2269809))) (Context!10107 call!431080)) (h!69632 s!2326)))))

(declare-fun b!5678674 () Bool)

(assert (=> b!5678674 (= e!3495193 call!431077)))

(declare-fun bm!431076 () Bool)

(assert (=> bm!431076 (= call!431077 call!431081)))

(declare-fun bm!431077 () Bool)

(assert (=> bm!431077 (= call!431081 call!431078)))

(assert (= (and d!1792320 c!999192) b!5678671))

(assert (= (and d!1792320 (not c!999192)) b!5678673))

(assert (= (and b!5678673 c!999193) b!5678664))

(assert (= (and b!5678673 (not c!999193)) b!5678667))

(assert (= (and b!5678667 res!2399636) b!5678666))

(assert (= (and b!5678667 c!999191) b!5678669))

(assert (= (and b!5678667 (not c!999191)) b!5678665))

(assert (= (and b!5678665 c!999190) b!5678668))

(assert (= (and b!5678665 (not c!999190)) b!5678670))

(assert (= (and b!5678670 c!999194) b!5678674))

(assert (= (and b!5678670 (not c!999194)) b!5678672))

(assert (= (or b!5678668 b!5678674) bm!431072))

(assert (= (or b!5678668 b!5678674) bm!431076))

(assert (= (or b!5678669 bm!431072) bm!431074))

(assert (= (or b!5678669 bm!431076) bm!431077))

(assert (= (or b!5678664 b!5678669) bm!431073))

(assert (= (or b!5678664 bm!431077) bm!431075))

(declare-fun m!6638612 () Bool)

(assert (=> b!5678671 m!6638612))

(declare-fun m!6638622 () Bool)

(assert (=> bm!431073 m!6638622))

(declare-fun m!6638626 () Bool)

(assert (=> b!5678666 m!6638626))

(declare-fun m!6638628 () Bool)

(assert (=> bm!431075 m!6638628))

(declare-fun m!6638630 () Bool)

(assert (=> bm!431074 m!6638630))

(assert (=> bm!430973 d!1792320))

(declare-fun bs!1323606 () Bool)

(declare-fun d!1792326 () Bool)

(assert (= bs!1323606 (and d!1792326 d!1792272)))

(declare-fun lambda!305934 () Int)

(assert (=> bs!1323606 (= lambda!305934 lambda!305928)))

(assert (=> d!1792326 (= (nullableZipper!1635 lt!2269816) (exists!2207 lt!2269816 lambda!305934))))

(declare-fun bs!1323607 () Bool)

(assert (= bs!1323607 d!1792326))

(declare-fun m!6638632 () Bool)

(assert (=> bs!1323607 m!6638632))

(assert (=> b!5677832 d!1792326))

(declare-fun d!1792328 () Bool)

(assert (=> d!1792328 (= (isConcat!716 lt!2269872) ((_ is Concat!24514) lt!2269872))))

(assert (=> b!5677954 d!1792328))

(declare-fun d!1792330 () Bool)

(assert (=> d!1792330 (= (nullable!5701 (h!69630 (exprs!5553 lt!2269809))) (nullableFct!1781 (h!69630 (exprs!5553 lt!2269809))))))

(declare-fun bs!1323608 () Bool)

(assert (= bs!1323608 d!1792330))

(declare-fun m!6638634 () Bool)

(assert (=> bs!1323608 m!6638634))

(assert (=> b!5678187 d!1792330))

(declare-fun d!1792332 () Bool)

(assert (=> d!1792332 (= (isEmpty!35038 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326)) (not ((_ is Some!15677) (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326))))))

(assert (=> d!1792140 d!1792332))

(declare-fun bs!1323609 () Bool)

(declare-fun d!1792334 () Bool)

(assert (= bs!1323609 (and d!1792334 d!1792272)))

(declare-fun lambda!305935 () Int)

(assert (=> bs!1323609 (= lambda!305935 lambda!305928)))

(declare-fun bs!1323610 () Bool)

(assert (= bs!1323610 (and d!1792334 d!1792326)))

(assert (=> bs!1323610 (= lambda!305935 lambda!305934)))

(assert (=> d!1792334 (= (nullableZipper!1635 ((_ map or) lt!2269813 lt!2269816)) (exists!2207 ((_ map or) lt!2269813 lt!2269816) lambda!305935))))

(declare-fun bs!1323611 () Bool)

(assert (= bs!1323611 d!1792334))

(declare-fun m!6638636 () Bool)

(assert (=> bs!1323611 m!6638636))

(assert (=> b!5677895 d!1792334))

(declare-fun call!431088 () (InoxSet Context!10106))

(declare-fun c!999199 () Bool)

(declare-fun bm!431079 () Bool)

(declare-fun call!431085 () List!63306)

(assert (=> bm!431079 (= call!431088 (derivationStepZipperDown!1011 (ite c!999199 (regTwo!31851 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (regOne!31850 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))) (ite c!999199 (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965)) (Context!10107 call!431085)) (h!69632 s!2326)))))

(declare-fun b!5678679 () Bool)

(declare-fun e!3495203 () (InoxSet Context!10106))

(declare-fun call!431084 () (InoxSet Context!10106))

(assert (=> b!5678679 (= e!3495203 ((_ map or) call!431084 call!431088))))

(declare-fun b!5678680 () Bool)

(declare-fun e!3495200 () (InoxSet Context!10106))

(declare-fun e!3495202 () (InoxSet Context!10106))

(assert (=> b!5678680 (= e!3495200 e!3495202)))

(declare-fun c!999196 () Bool)

(assert (=> b!5678680 (= c!999196 ((_ is Concat!24514) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))))))

(declare-fun b!5678681 () Bool)

(declare-fun e!3495199 () Bool)

(assert (=> b!5678681 (= e!3495199 (nullable!5701 (regOne!31850 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))))))

(declare-fun b!5678682 () Bool)

(declare-fun c!999197 () Bool)

(assert (=> b!5678682 (= c!999197 e!3495199)))

(declare-fun res!2399639 () Bool)

(assert (=> b!5678682 (=> (not res!2399639) (not e!3495199))))

(assert (=> b!5678682 (= res!2399639 ((_ is Concat!24514) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))))))

(assert (=> b!5678682 (= e!3495203 e!3495200)))

(declare-fun bm!431080 () Bool)

(assert (=> bm!431080 (= call!431085 ($colon$colon!1702 (exprs!5553 (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965))) (ite (or c!999197 c!999196) (regTwo!31850 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))))))

(declare-fun b!5678683 () Bool)

(declare-fun call!431083 () (InoxSet Context!10106))

(assert (=> b!5678683 (= e!3495202 call!431083)))

(declare-fun b!5678684 () Bool)

(declare-fun call!431087 () (InoxSet Context!10106))

(assert (=> b!5678684 (= e!3495200 ((_ map or) call!431088 call!431087))))

(declare-fun b!5678685 () Bool)

(declare-fun c!999200 () Bool)

(assert (=> b!5678685 (= c!999200 ((_ is Star!15669) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))))))

(declare-fun e!3495201 () (InoxSet Context!10106))

(assert (=> b!5678685 (= e!3495202 e!3495201)))

(declare-fun bm!431078 () Bool)

(declare-fun call!431086 () List!63306)

(assert (=> bm!431078 (= call!431086 call!431085)))

(declare-fun c!999198 () Bool)

(declare-fun d!1792336 () Bool)

(assert (=> d!1792336 (= c!999198 (and ((_ is ElementMatch!15669) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (= (c!998875 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (h!69632 s!2326))))))

(declare-fun e!3495198 () (InoxSet Context!10106))

(assert (=> d!1792336 (= (derivationStepZipperDown!1011 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))) (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965)) (h!69632 s!2326)) e!3495198)))

(declare-fun b!5678686 () Bool)

(assert (=> b!5678686 (= e!3495198 (store ((as const (Array Context!10106 Bool)) false) (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965)) true))))

(declare-fun b!5678687 () Bool)

(assert (=> b!5678687 (= e!3495201 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678688 () Bool)

(assert (=> b!5678688 (= e!3495198 e!3495203)))

(assert (=> b!5678688 (= c!999199 ((_ is Union!15669) (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))))))

(declare-fun bm!431081 () Bool)

(assert (=> bm!431081 (= call!431084 (derivationStepZipperDown!1011 (ite c!999199 (regOne!31851 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (ite c!999197 (regTwo!31850 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (ite c!999196 (regOne!31850 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292))))) (reg!15998 (ite c!999024 (regTwo!31851 (reg!15998 (regOne!31850 r!7292))) (regOne!31850 (reg!15998 (regOne!31850 r!7292)))))))) (ite (or c!999199 c!999197) (ite c!999024 (Context!10107 lt!2269825) (Context!10107 call!430965)) (Context!10107 call!431086)) (h!69632 s!2326)))))

(declare-fun b!5678689 () Bool)

(assert (=> b!5678689 (= e!3495201 call!431083)))

(declare-fun bm!431082 () Bool)

(assert (=> bm!431082 (= call!431083 call!431087)))

(declare-fun bm!431083 () Bool)

(assert (=> bm!431083 (= call!431087 call!431084)))

(assert (= (and d!1792336 c!999198) b!5678686))

(assert (= (and d!1792336 (not c!999198)) b!5678688))

(assert (= (and b!5678688 c!999199) b!5678679))

(assert (= (and b!5678688 (not c!999199)) b!5678682))

(assert (= (and b!5678682 res!2399639) b!5678681))

(assert (= (and b!5678682 c!999197) b!5678684))

(assert (= (and b!5678682 (not c!999197)) b!5678680))

(assert (= (and b!5678680 c!999196) b!5678683))

(assert (= (and b!5678680 (not c!999196)) b!5678685))

(assert (= (and b!5678685 c!999200) b!5678689))

(assert (= (and b!5678685 (not c!999200)) b!5678687))

(assert (= (or b!5678683 b!5678689) bm!431078))

(assert (= (or b!5678683 b!5678689) bm!431082))

(assert (= (or b!5678684 bm!431078) bm!431080))

(assert (= (or b!5678684 bm!431082) bm!431083))

(assert (= (or b!5678679 b!5678684) bm!431079))

(assert (= (or b!5678679 bm!431083) bm!431081))

(declare-fun m!6638638 () Bool)

(assert (=> b!5678686 m!6638638))

(declare-fun m!6638642 () Bool)

(assert (=> bm!431079 m!6638642))

(declare-fun m!6638646 () Bool)

(assert (=> b!5678681 m!6638646))

(declare-fun m!6638648 () Bool)

(assert (=> bm!431081 m!6638648))

(declare-fun m!6638650 () Bool)

(assert (=> bm!431080 m!6638650))

(assert (=> bm!430959 d!1792336))

(declare-fun bs!1323613 () Bool)

(declare-fun d!1792340 () Bool)

(assert (= bs!1323613 (and d!1792340 d!1792122)))

(declare-fun lambda!305936 () Int)

(assert (=> bs!1323613 (= lambda!305936 lambda!305900)))

(declare-fun bs!1323614 () Bool)

(assert (= bs!1323614 (and d!1792340 d!1792288)))

(assert (=> bs!1323614 (= lambda!305936 lambda!305929)))

(declare-fun bs!1323615 () Bool)

(assert (= bs!1323615 (and d!1792340 d!1792086)))

(assert (=> bs!1323615 (= lambda!305936 lambda!305880)))

(declare-fun bs!1323616 () Bool)

(assert (= bs!1323616 (and d!1792340 d!1792124)))

(assert (=> bs!1323616 (= lambda!305936 lambda!305903)))

(declare-fun bs!1323617 () Bool)

(assert (= bs!1323617 (and d!1792340 d!1792092)))

(assert (=> bs!1323617 (= lambda!305936 lambda!305881)))

(declare-fun bs!1323618 () Bool)

(assert (= bs!1323618 (and d!1792340 d!1792046)))

(assert (=> bs!1323618 (= lambda!305936 lambda!305874)))

(declare-fun b!5678699 () Bool)

(declare-fun e!3495214 () Bool)

(declare-fun lt!2269935 () Regex!15669)

(assert (=> b!5678699 (= e!3495214 (isUnion!634 lt!2269935))))

(declare-fun b!5678700 () Bool)

(declare-fun e!3495211 () Regex!15669)

(assert (=> b!5678700 (= e!3495211 (Union!15669 (h!69630 (t!376616 (unfocusZipperList!1097 zl!343))) (generalisedUnion!1532 (t!376616 (t!376616 (unfocusZipperList!1097 zl!343))))))))

(declare-fun e!3495213 () Bool)

(assert (=> d!1792340 e!3495213))

(declare-fun res!2399645 () Bool)

(assert (=> d!1792340 (=> (not res!2399645) (not e!3495213))))

(assert (=> d!1792340 (= res!2399645 (validRegex!7405 lt!2269935))))

(declare-fun e!3495210 () Regex!15669)

(assert (=> d!1792340 (= lt!2269935 e!3495210)))

(declare-fun c!999205 () Bool)

(declare-fun e!3495209 () Bool)

(assert (=> d!1792340 (= c!999205 e!3495209)))

(declare-fun res!2399646 () Bool)

(assert (=> d!1792340 (=> (not res!2399646) (not e!3495209))))

(assert (=> d!1792340 (= res!2399646 ((_ is Cons!63182) (t!376616 (unfocusZipperList!1097 zl!343))))))

(assert (=> d!1792340 (forall!14818 (t!376616 (unfocusZipperList!1097 zl!343)) lambda!305936)))

(assert (=> d!1792340 (= (generalisedUnion!1532 (t!376616 (unfocusZipperList!1097 zl!343))) lt!2269935)))

(declare-fun b!5678701 () Bool)

(assert (=> b!5678701 (= e!3495211 EmptyLang!15669)))

(declare-fun b!5678702 () Bool)

(declare-fun e!3495212 () Bool)

(assert (=> b!5678702 (= e!3495213 e!3495212)))

(declare-fun c!999206 () Bool)

(assert (=> b!5678702 (= c!999206 (isEmpty!35034 (t!376616 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5678703 () Bool)

(assert (=> b!5678703 (= e!3495212 e!3495214)))

(declare-fun c!999203 () Bool)

(assert (=> b!5678703 (= c!999203 (isEmpty!35034 (tail!11146 (t!376616 (unfocusZipperList!1097 zl!343)))))))

(declare-fun b!5678704 () Bool)

(assert (=> b!5678704 (= e!3495210 (h!69630 (t!376616 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5678705 () Bool)

(assert (=> b!5678705 (= e!3495209 (isEmpty!35034 (t!376616 (t!376616 (unfocusZipperList!1097 zl!343)))))))

(declare-fun b!5678706 () Bool)

(assert (=> b!5678706 (= e!3495212 (isEmptyLang!1204 lt!2269935))))

(declare-fun b!5678707 () Bool)

(assert (=> b!5678707 (= e!3495214 (= lt!2269935 (head!12051 (t!376616 (unfocusZipperList!1097 zl!343)))))))

(declare-fun b!5678708 () Bool)

(assert (=> b!5678708 (= e!3495210 e!3495211)))

(declare-fun c!999204 () Bool)

(assert (=> b!5678708 (= c!999204 ((_ is Cons!63182) (t!376616 (unfocusZipperList!1097 zl!343))))))

(assert (= (and d!1792340 res!2399646) b!5678705))

(assert (= (and d!1792340 c!999205) b!5678704))

(assert (= (and d!1792340 (not c!999205)) b!5678708))

(assert (= (and b!5678708 c!999204) b!5678700))

(assert (= (and b!5678708 (not c!999204)) b!5678701))

(assert (= (and d!1792340 res!2399645) b!5678702))

(assert (= (and b!5678702 c!999206) b!5678706))

(assert (= (and b!5678702 (not c!999206)) b!5678703))

(assert (= (and b!5678703 c!999203) b!5678707))

(assert (= (and b!5678703 (not c!999203)) b!5678699))

(declare-fun m!6638658 () Bool)

(assert (=> d!1792340 m!6638658))

(declare-fun m!6638660 () Bool)

(assert (=> d!1792340 m!6638660))

(declare-fun m!6638662 () Bool)

(assert (=> b!5678705 m!6638662))

(declare-fun m!6638666 () Bool)

(assert (=> b!5678700 m!6638666))

(declare-fun m!6638668 () Bool)

(assert (=> b!5678699 m!6638668))

(declare-fun m!6638672 () Bool)

(assert (=> b!5678706 m!6638672))

(declare-fun m!6638674 () Bool)

(assert (=> b!5678707 m!6638674))

(declare-fun m!6638678 () Bool)

(assert (=> b!5678703 m!6638678))

(assert (=> b!5678703 m!6638678))

(declare-fun m!6638682 () Bool)

(assert (=> b!5678703 m!6638682))

(assert (=> b!5678702 m!6638188))

(assert (=> b!5678167 d!1792340))

(declare-fun d!1792342 () Bool)

(assert (=> d!1792342 (= (isEmpty!35036 (tail!11145 s!2326)) ((_ is Nil!63184) (tail!11145 s!2326)))))

(assert (=> b!5678134 d!1792342))

(assert (=> b!5678134 d!1792318))

(declare-fun d!1792344 () Bool)

(declare-fun c!999208 () Bool)

(declare-fun e!3495215 () Bool)

(assert (=> d!1792344 (= c!999208 e!3495215)))

(declare-fun res!2399647 () Bool)

(assert (=> d!1792344 (=> (not res!2399647) (not e!3495215))))

(assert (=> d!1792344 (= res!2399647 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))))

(declare-fun e!3495217 () (InoxSet Context!10106))

(assert (=> d!1792344 (= (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326)) e!3495217)))

(declare-fun bm!431084 () Bool)

(declare-fun call!431089 () (InoxSet Context!10106))

(assert (=> bm!431084 (= call!431089 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))) (h!69632 s!2326)))))

(declare-fun b!5678709 () Bool)

(declare-fun e!3495216 () (InoxSet Context!10106))

(assert (=> b!5678709 (= e!3495217 e!3495216)))

(declare-fun c!999207 () Bool)

(assert (=> b!5678709 (= c!999207 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343)))))))))))))

(declare-fun b!5678710 () Bool)

(assert (=> b!5678710 (= e!3495216 call!431089)))

(declare-fun b!5678711 () Bool)

(assert (=> b!5678711 (= e!3495217 ((_ map or) call!431089 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))) (h!69632 s!2326))))))

(declare-fun b!5678712 () Bool)

(assert (=> b!5678712 (= e!3495215 (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (Cons!63182 (h!69630 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))))))))))

(declare-fun b!5678713 () Bool)

(assert (=> b!5678713 (= e!3495216 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792344 res!2399647) b!5678712))

(assert (= (and d!1792344 c!999208) b!5678711))

(assert (= (and d!1792344 (not c!999208)) b!5678709))

(assert (= (and b!5678709 c!999207) b!5678710))

(assert (= (and b!5678709 (not c!999207)) b!5678713))

(assert (= (or b!5678711 b!5678710) bm!431084))

(declare-fun m!6638692 () Bool)

(assert (=> bm!431084 m!6638692))

(declare-fun m!6638694 () Bool)

(assert (=> b!5678711 m!6638694))

(declare-fun m!6638696 () Bool)

(assert (=> b!5678712 m!6638696))

(assert (=> b!5677609 d!1792344))

(declare-fun d!1792348 () Bool)

(declare-fun c!999212 () Bool)

(declare-fun e!3495220 () Bool)

(assert (=> d!1792348 (= c!999212 e!3495220)))

(declare-fun res!2399648 () Bool)

(assert (=> d!1792348 (=> (not res!2399648) (not e!3495220))))

(assert (=> d!1792348 (= res!2399648 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun e!3495222 () (InoxSet Context!10106))

(assert (=> d!1792348 (= (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))) (h!69632 s!2326)) e!3495222)))

(declare-fun bm!431085 () Bool)

(declare-fun call!431090 () (InoxSet Context!10106))

(assert (=> bm!431085 (= call!431090 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343))))))) (h!69632 s!2326)))))

(declare-fun b!5678718 () Bool)

(declare-fun e!3495221 () (InoxSet Context!10106))

(assert (=> b!5678718 (= e!3495222 e!3495221)))

(declare-fun c!999211 () Bool)

(assert (=> b!5678718 (= c!999211 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun b!5678719 () Bool)

(assert (=> b!5678719 (= e!3495221 call!431090)))

(declare-fun b!5678720 () Bool)

(assert (=> b!5678720 (= e!3495222 ((_ map or) call!431090 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343))))))) (h!69632 s!2326))))))

(declare-fun b!5678721 () Bool)

(assert (=> b!5678721 (= e!3495220 (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 (h!69631 zl!343))))))))))

(declare-fun b!5678722 () Bool)

(assert (=> b!5678722 (= e!3495221 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792348 res!2399648) b!5678721))

(assert (= (and d!1792348 c!999212) b!5678720))

(assert (= (and d!1792348 (not c!999212)) b!5678718))

(assert (= (and b!5678718 c!999211) b!5678719))

(assert (= (and b!5678718 (not c!999211)) b!5678722))

(assert (= (or b!5678720 b!5678719) bm!431085))

(declare-fun m!6638698 () Bool)

(assert (=> bm!431085 m!6638698))

(declare-fun m!6638700 () Bool)

(assert (=> b!5678720 m!6638700))

(declare-fun m!6638702 () Bool)

(assert (=> b!5678721 m!6638702))

(assert (=> b!5677762 d!1792348))

(declare-fun d!1792350 () Bool)

(assert (=> d!1792350 true))

(declare-fun setRes!37979 () Bool)

(assert (=> d!1792350 setRes!37979))

(declare-fun condSetEmpty!37979 () Bool)

(declare-fun res!2399656 () (InoxSet Context!10106))

(assert (=> d!1792350 (= condSetEmpty!37979 (= res!2399656 ((as const (Array Context!10106 Bool)) false)))))

(assert (=> d!1792350 (= (choose!42950 z!1189 lambda!305853) res!2399656)))

(declare-fun setIsEmpty!37979 () Bool)

(assert (=> setIsEmpty!37979 setRes!37979))

(declare-fun tp!1574557 () Bool)

(declare-fun setNonEmpty!37979 () Bool)

(declare-fun setElem!37979 () Context!10106)

(declare-fun e!3495234 () Bool)

(assert (=> setNonEmpty!37979 (= setRes!37979 (and tp!1574557 (inv!82419 setElem!37979) e!3495234))))

(declare-fun setRest!37979 () (InoxSet Context!10106))

(assert (=> setNonEmpty!37979 (= res!2399656 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) setElem!37979 true) setRest!37979))))

(declare-fun b!5678738 () Bool)

(declare-fun tp!1574558 () Bool)

(assert (=> b!5678738 (= e!3495234 tp!1574558)))

(assert (= (and d!1792350 condSetEmpty!37979) setIsEmpty!37979))

(assert (= (and d!1792350 (not condSetEmpty!37979)) setNonEmpty!37979))

(assert (= setNonEmpty!37979 b!5678738))

(declare-fun m!6638720 () Bool)

(assert (=> setNonEmpty!37979 m!6638720))

(assert (=> d!1791998 d!1792350))

(assert (=> bs!1323533 d!1792130))

(declare-fun d!1792358 () Bool)

(assert (=> d!1792358 (= (isEmpty!35034 (tail!11146 (exprs!5553 (h!69631 zl!343)))) ((_ is Nil!63182) (tail!11146 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> b!5677956 d!1792358))

(declare-fun d!1792360 () Bool)

(assert (=> d!1792360 (= (tail!11146 (exprs!5553 (h!69631 zl!343))) (t!376616 (exprs!5553 (h!69631 zl!343))))))

(assert (=> b!5677956 d!1792360))

(assert (=> d!1792058 d!1792082))

(assert (=> d!1792058 d!1792080))

(declare-fun e!3495244 () Bool)

(declare-fun d!1792362 () Bool)

(assert (=> d!1792362 (= (matchZipper!1807 ((_ map or) lt!2269813 lt!2269816) (t!376618 s!2326)) e!3495244)))

(declare-fun res!2399661 () Bool)

(assert (=> d!1792362 (=> res!2399661 e!3495244)))

(assert (=> d!1792362 (= res!2399661 (matchZipper!1807 lt!2269813 (t!376618 s!2326)))))

(assert (=> d!1792362 true))

(declare-fun _$48!1314 () Unit!156208)

(assert (=> d!1792362 (= (choose!42954 lt!2269813 lt!2269816 (t!376618 s!2326)) _$48!1314)))

(declare-fun b!5678753 () Bool)

(assert (=> b!5678753 (= e!3495244 (matchZipper!1807 lt!2269816 (t!376618 s!2326)))))

(assert (= (and d!1792362 (not res!2399661)) b!5678753))

(assert (=> d!1792362 m!6637814))

(assert (=> d!1792362 m!6637812))

(assert (=> b!5678753 m!6637790))

(assert (=> d!1792058 d!1792362))

(declare-fun d!1792376 () Bool)

(assert (=> d!1792376 (= (isEmpty!35034 (unfocusZipperList!1097 zl!343)) ((_ is Nil!63182) (unfocusZipperList!1097 zl!343)))))

(assert (=> b!5678169 d!1792376))

(assert (=> b!5678136 d!1792216))

(assert (=> d!1792118 d!1792116))

(assert (=> d!1792118 d!1792098))

(declare-fun d!1792378 () Bool)

(assert (=> d!1792378 (= (matchR!7854 r!7292 s!2326) (matchRSpec!2772 r!7292 s!2326))))

(assert (=> d!1792378 true))

(declare-fun _$88!3975 () Unit!156208)

(assert (=> d!1792378 (= (choose!42958 r!7292 s!2326) _$88!3975)))

(declare-fun bs!1323631 () Bool)

(assert (= bs!1323631 d!1792378))

(assert (=> bs!1323631 m!6637786))

(assert (=> bs!1323631 m!6637784))

(assert (=> d!1792118 d!1792378))

(assert (=> d!1792118 d!1792026))

(declare-fun bs!1323632 () Bool)

(declare-fun d!1792388 () Bool)

(assert (= bs!1323632 (and d!1792388 d!1792122)))

(declare-fun lambda!305939 () Int)

(assert (=> bs!1323632 (= lambda!305939 lambda!305900)))

(declare-fun bs!1323633 () Bool)

(assert (= bs!1323633 (and d!1792388 d!1792288)))

(assert (=> bs!1323633 (= lambda!305939 lambda!305929)))

(declare-fun bs!1323634 () Bool)

(assert (= bs!1323634 (and d!1792388 d!1792086)))

(assert (=> bs!1323634 (= lambda!305939 lambda!305880)))

(declare-fun bs!1323635 () Bool)

(assert (= bs!1323635 (and d!1792388 d!1792124)))

(assert (=> bs!1323635 (= lambda!305939 lambda!305903)))

(declare-fun bs!1323636 () Bool)

(assert (= bs!1323636 (and d!1792388 d!1792340)))

(assert (=> bs!1323636 (= lambda!305939 lambda!305936)))

(declare-fun bs!1323637 () Bool)

(assert (= bs!1323637 (and d!1792388 d!1792092)))

(assert (=> bs!1323637 (= lambda!305939 lambda!305881)))

(declare-fun bs!1323638 () Bool)

(assert (= bs!1323638 (and d!1792388 d!1792046)))

(assert (=> bs!1323638 (= lambda!305939 lambda!305874)))

(assert (=> d!1792388 (= (inv!82419 setElem!37973) (forall!14818 (exprs!5553 setElem!37973) lambda!305939))))

(declare-fun bs!1323639 () Bool)

(assert (= bs!1323639 d!1792388))

(declare-fun m!6638754 () Bool)

(assert (=> bs!1323639 m!6638754))

(assert (=> setNonEmpty!37973 d!1792388))

(declare-fun d!1792390 () Bool)

(assert (=> d!1792390 (= (isEmptyLang!1204 lt!2269893) ((_ is EmptyLang!15669) lt!2269893))))

(assert (=> b!5678173 d!1792390))

(declare-fun call!431105 () (InoxSet Context!10106))

(declare-fun c!999226 () Bool)

(declare-fun bm!431096 () Bool)

(declare-fun call!431102 () List!63306)

(assert (=> bm!431096 (= call!431105 (derivationStepZipperDown!1011 (ite c!999226 (regTwo!31851 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (regOne!31850 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))))) (ite c!999226 (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908)) (Context!10107 call!431102)) (h!69632 s!2326)))))

(declare-fun b!5678764 () Bool)

(declare-fun e!3495259 () (InoxSet Context!10106))

(declare-fun call!431101 () (InoxSet Context!10106))

(assert (=> b!5678764 (= e!3495259 ((_ map or) call!431101 call!431105))))

(declare-fun b!5678765 () Bool)

(declare-fun e!3495256 () (InoxSet Context!10106))

(declare-fun e!3495258 () (InoxSet Context!10106))

(assert (=> b!5678765 (= e!3495256 e!3495258)))

(declare-fun c!999223 () Bool)

(assert (=> b!5678765 (= c!999223 ((_ is Concat!24514) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun b!5678766 () Bool)

(declare-fun e!3495255 () Bool)

(assert (=> b!5678766 (= e!3495255 (nullable!5701 (regOne!31850 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))))))))

(declare-fun b!5678767 () Bool)

(declare-fun c!999224 () Bool)

(assert (=> b!5678767 (= c!999224 e!3495255)))

(declare-fun res!2399670 () Bool)

(assert (=> b!5678767 (=> (not res!2399670) (not e!3495255))))

(assert (=> b!5678767 (= res!2399670 ((_ is Concat!24514) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))))

(assert (=> b!5678767 (= e!3495259 e!3495256)))

(declare-fun bm!431097 () Bool)

(assert (=> bm!431097 (= call!431102 ($colon$colon!1702 (exprs!5553 (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908))) (ite (or c!999224 c!999223) (regTwo!31850 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))))))))

(declare-fun b!5678768 () Bool)

(declare-fun call!431100 () (InoxSet Context!10106))

(assert (=> b!5678768 (= e!3495258 call!431100)))

(declare-fun b!5678769 () Bool)

(declare-fun call!431104 () (InoxSet Context!10106))

(assert (=> b!5678769 (= e!3495256 ((_ map or) call!431105 call!431104))))

(declare-fun b!5678770 () Bool)

(declare-fun c!999227 () Bool)

(assert (=> b!5678770 (= c!999227 ((_ is Star!15669) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun e!3495257 () (InoxSet Context!10106))

(assert (=> b!5678770 (= e!3495258 e!3495257)))

(declare-fun bm!431095 () Bool)

(declare-fun call!431103 () List!63306)

(assert (=> bm!431095 (= call!431103 call!431102)))

(declare-fun d!1792392 () Bool)

(declare-fun c!999225 () Bool)

(assert (=> d!1792392 (= c!999225 (and ((_ is ElementMatch!15669) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (= (c!998875 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (h!69632 s!2326))))))

(declare-fun e!3495254 () (InoxSet Context!10106))

(assert (=> d!1792392 (= (derivationStepZipperDown!1011 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))) (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908)) (h!69632 s!2326)) e!3495254)))

(declare-fun b!5678771 () Bool)

(assert (=> b!5678771 (= e!3495254 (store ((as const (Array Context!10106 Bool)) false) (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908)) true))))

(declare-fun b!5678772 () Bool)

(assert (=> b!5678772 (= e!3495257 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678773 () Bool)

(assert (=> b!5678773 (= e!3495254 e!3495259)))

(assert (=> b!5678773 (= c!999226 ((_ is Union!15669) (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))))

(declare-fun bm!431098 () Bool)

(assert (=> bm!431098 (= call!431101 (derivationStepZipperDown!1011 (ite c!999226 (regOne!31851 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (ite c!999224 (regTwo!31850 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (ite c!999223 (regOne!31850 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343)))))))) (reg!15998 (ite c!998936 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998934 (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (ite c!998933 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))) (reg!15998 (h!69630 (exprs!5553 (h!69631 zl!343))))))))))) (ite (or c!999226 c!999224) (ite (or c!998936 c!998934) lt!2269823 (Context!10107 call!430908)) (Context!10107 call!431103)) (h!69632 s!2326)))))

(declare-fun b!5678774 () Bool)

(assert (=> b!5678774 (= e!3495257 call!431100)))

(declare-fun bm!431099 () Bool)

(assert (=> bm!431099 (= call!431100 call!431104)))

(declare-fun bm!431100 () Bool)

(assert (=> bm!431100 (= call!431104 call!431101)))

(assert (= (and d!1792392 c!999225) b!5678771))

(assert (= (and d!1792392 (not c!999225)) b!5678773))

(assert (= (and b!5678773 c!999226) b!5678764))

(assert (= (and b!5678773 (not c!999226)) b!5678767))

(assert (= (and b!5678767 res!2399670) b!5678766))

(assert (= (and b!5678767 c!999224) b!5678769))

(assert (= (and b!5678767 (not c!999224)) b!5678765))

(assert (= (and b!5678765 c!999223) b!5678768))

(assert (= (and b!5678765 (not c!999223)) b!5678770))

(assert (= (and b!5678770 c!999227) b!5678774))

(assert (= (and b!5678770 (not c!999227)) b!5678772))

(assert (= (or b!5678768 b!5678774) bm!431095))

(assert (= (or b!5678768 b!5678774) bm!431099))

(assert (= (or b!5678769 bm!431095) bm!431097))

(assert (= (or b!5678769 bm!431099) bm!431100))

(assert (= (or b!5678764 b!5678769) bm!431096))

(assert (= (or b!5678764 bm!431100) bm!431098))

(declare-fun m!6638760 () Bool)

(assert (=> b!5678771 m!6638760))

(declare-fun m!6638762 () Bool)

(assert (=> bm!431096 m!6638762))

(declare-fun m!6638764 () Bool)

(assert (=> b!5678766 m!6638764))

(declare-fun m!6638766 () Bool)

(assert (=> bm!431098 m!6638766))

(declare-fun m!6638768 () Bool)

(assert (=> bm!431097 m!6638768))

(assert (=> bm!430903 d!1792392))

(declare-fun d!1792396 () Bool)

(assert (=> d!1792396 true))

(declare-fun setRes!37981 () Bool)

(assert (=> d!1792396 setRes!37981))

(declare-fun condSetEmpty!37981 () Bool)

(declare-fun res!2399675 () (InoxSet Context!10106))

(assert (=> d!1792396 (= condSetEmpty!37981 (= res!2399675 ((as const (Array Context!10106 Bool)) false)))))

(assert (=> d!1792396 (= (choose!42950 lt!2269814 lambda!305853) res!2399675)))

(declare-fun setIsEmpty!37981 () Bool)

(assert (=> setIsEmpty!37981 setRes!37981))

(declare-fun setNonEmpty!37981 () Bool)

(declare-fun tp!1574565 () Bool)

(declare-fun setElem!37981 () Context!10106)

(declare-fun e!3495266 () Bool)

(assert (=> setNonEmpty!37981 (= setRes!37981 (and tp!1574565 (inv!82419 setElem!37981) e!3495266))))

(declare-fun setRest!37981 () (InoxSet Context!10106))

(assert (=> setNonEmpty!37981 (= res!2399675 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) setElem!37981 true) setRest!37981))))

(declare-fun b!5678781 () Bool)

(declare-fun tp!1574566 () Bool)

(assert (=> b!5678781 (= e!3495266 tp!1574566)))

(assert (= (and d!1792396 condSetEmpty!37981) setIsEmpty!37981))

(assert (= (and d!1792396 (not condSetEmpty!37981)) setNonEmpty!37981))

(assert (= setNonEmpty!37981 b!5678781))

(declare-fun m!6638770 () Bool)

(assert (=> setNonEmpty!37981 m!6638770))

(assert (=> d!1792128 d!1792396))

(declare-fun d!1792398 () Bool)

(assert (=> d!1792398 (= (isEmptyExpr!1193 lt!2269872) ((_ is EmptyExpr!15669) lt!2269872))))

(assert (=> b!5677958 d!1792398))

(assert (=> b!5677890 d!1792034))

(declare-fun d!1792402 () Bool)

(assert (=> d!1792402 true))

(assert (=> d!1792402 true))

(declare-fun res!2399678 () Bool)

(assert (=> d!1792402 (= (choose!42960 lambda!305851) res!2399678)))

(assert (=> d!1792144 d!1792402))

(declare-fun d!1792404 () Bool)

(declare-fun c!999229 () Bool)

(declare-fun e!3495270 () Bool)

(assert (=> d!1792404 (= c!999229 e!3495270)))

(declare-fun res!2399679 () Bool)

(assert (=> d!1792404 (=> (not res!2399679) (not e!3495270))))

(assert (=> d!1792404 (= res!2399679 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823))))))))

(declare-fun e!3495272 () (InoxSet Context!10106))

(assert (=> d!1792404 (= (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 lt!2269823))) (h!69632 s!2326)) e!3495272)))

(declare-fun bm!431101 () Bool)

(declare-fun call!431106 () (InoxSet Context!10106))

(assert (=> bm!431101 (= call!431106 (derivationStepZipperDown!1011 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823))))) (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823)))))) (h!69632 s!2326)))))

(declare-fun b!5678785 () Bool)

(declare-fun e!3495271 () (InoxSet Context!10106))

(assert (=> b!5678785 (= e!3495272 e!3495271)))

(declare-fun c!999228 () Bool)

(assert (=> b!5678785 (= c!999228 ((_ is Cons!63182) (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823))))))))

(declare-fun b!5678786 () Bool)

(assert (=> b!5678786 (= e!3495271 call!431106)))

(declare-fun b!5678787 () Bool)

(assert (=> b!5678787 (= e!3495272 ((_ map or) call!431106 (derivationStepZipperUp!937 (Context!10107 (t!376616 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823)))))) (h!69632 s!2326))))))

(declare-fun b!5678788 () Bool)

(assert (=> b!5678788 (= e!3495270 (nullable!5701 (h!69630 (exprs!5553 (Context!10107 (t!376616 (exprs!5553 lt!2269823)))))))))

(declare-fun b!5678789 () Bool)

(assert (=> b!5678789 (= e!3495271 ((as const (Array Context!10106 Bool)) false))))

(assert (= (and d!1792404 res!2399679) b!5678788))

(assert (= (and d!1792404 c!999229) b!5678787))

(assert (= (and d!1792404 (not c!999229)) b!5678785))

(assert (= (and b!5678785 c!999228) b!5678786))

(assert (= (and b!5678785 (not c!999228)) b!5678789))

(assert (= (or b!5678787 b!5678786) bm!431101))

(declare-fun m!6638778 () Bool)

(assert (=> bm!431101 m!6638778))

(declare-fun m!6638780 () Bool)

(assert (=> b!5678787 m!6638780))

(declare-fun m!6638782 () Bool)

(assert (=> b!5678788 m!6638782))

(assert (=> b!5677602 d!1792404))

(declare-fun b!5678790 () Bool)

(declare-fun e!3495274 () Bool)

(declare-fun e!3495275 () Bool)

(assert (=> b!5678790 (= e!3495274 e!3495275)))

(declare-fun res!2399681 () Bool)

(assert (=> b!5678790 (=> (not res!2399681) (not e!3495275))))

(declare-fun call!431109 () Bool)

(assert (=> b!5678790 (= res!2399681 call!431109)))

(declare-fun d!1792408 () Bool)

(declare-fun res!2399684 () Bool)

(declare-fun e!3495278 () Bool)

(assert (=> d!1792408 (=> res!2399684 e!3495278)))

(assert (=> d!1792408 (= res!2399684 ((_ is ElementMatch!15669) (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))

(assert (=> d!1792408 (= (validRegex!7405 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))) e!3495278)))

(declare-fun b!5678791 () Bool)

(declare-fun call!431107 () Bool)

(assert (=> b!5678791 (= e!3495275 call!431107)))

(declare-fun b!5678792 () Bool)

(declare-fun e!3495273 () Bool)

(declare-fun e!3495279 () Bool)

(assert (=> b!5678792 (= e!3495273 e!3495279)))

(declare-fun res!2399680 () Bool)

(assert (=> b!5678792 (= res!2399680 (not (nullable!5701 (reg!15998 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))))

(assert (=> b!5678792 (=> (not res!2399680) (not e!3495279))))

(declare-fun b!5678793 () Bool)

(declare-fun e!3495277 () Bool)

(assert (=> b!5678793 (= e!3495277 call!431107)))

(declare-fun b!5678794 () Bool)

(declare-fun e!3495276 () Bool)

(assert (=> b!5678794 (= e!3495273 e!3495276)))

(declare-fun c!999230 () Bool)

(assert (=> b!5678794 (= c!999230 ((_ is Union!15669) (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))

(declare-fun bm!431102 () Bool)

(declare-fun call!431108 () Bool)

(declare-fun c!999231 () Bool)

(assert (=> bm!431102 (= call!431108 (validRegex!7405 (ite c!999231 (reg!15998 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))) (ite c!999230 (regTwo!31851 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))) (regTwo!31850 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292))))))))))

(declare-fun b!5678795 () Bool)

(declare-fun res!2399682 () Bool)

(assert (=> b!5678795 (=> res!2399682 e!3495274)))

(assert (=> b!5678795 (= res!2399682 (not ((_ is Concat!24514) (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292))))))))

(assert (=> b!5678795 (= e!3495276 e!3495274)))

(declare-fun b!5678796 () Bool)

(assert (=> b!5678796 (= e!3495278 e!3495273)))

(assert (=> b!5678796 (= c!999231 ((_ is Star!15669) (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))

(declare-fun bm!431103 () Bool)

(assert (=> bm!431103 (= call!431107 call!431108)))

(declare-fun b!5678797 () Bool)

(declare-fun res!2399683 () Bool)

(assert (=> b!5678797 (=> (not res!2399683) (not e!3495277))))

(assert (=> b!5678797 (= res!2399683 call!431109)))

(assert (=> b!5678797 (= e!3495276 e!3495277)))

(declare-fun bm!431104 () Bool)

(assert (=> bm!431104 (= call!431109 (validRegex!7405 (ite c!999230 (regOne!31851 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))) (regOne!31850 (ite c!998969 (reg!15998 r!7292) (ite c!998968 (regTwo!31851 r!7292) (regTwo!31850 r!7292)))))))))

(declare-fun b!5678798 () Bool)

(assert (=> b!5678798 (= e!3495279 call!431108)))

(assert (= (and d!1792408 (not res!2399684)) b!5678796))

(assert (= (and b!5678796 c!999231) b!5678792))

(assert (= (and b!5678796 (not c!999231)) b!5678794))

(assert (= (and b!5678792 res!2399680) b!5678798))

(assert (= (and b!5678794 c!999230) b!5678797))

(assert (= (and b!5678794 (not c!999230)) b!5678795))

(assert (= (and b!5678797 res!2399683) b!5678793))

(assert (= (and b!5678795 (not res!2399682)) b!5678790))

(assert (= (and b!5678790 res!2399681) b!5678791))

(assert (= (or b!5678793 b!5678791) bm!431103))

(assert (= (or b!5678797 b!5678790) bm!431104))

(assert (= (or b!5678798 bm!431103) bm!431102))

(declare-fun m!6638784 () Bool)

(assert (=> b!5678792 m!6638784))

(declare-fun m!6638786 () Bool)

(assert (=> bm!431102 m!6638786))

(declare-fun m!6638788 () Bool)

(assert (=> bm!431104 m!6638788))

(assert (=> bm!430934 d!1792408))

(declare-fun bm!431105 () Bool)

(declare-fun call!431110 () Bool)

(declare-fun c!999234 () Bool)

(assert (=> bm!431105 (= call!431110 (nullable!5701 (ite c!999234 (regTwo!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regTwo!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun bm!431106 () Bool)

(declare-fun call!431111 () Bool)

(assert (=> bm!431106 (= call!431111 (nullable!5701 (ite c!999234 (regOne!31851 (h!69630 (exprs!5553 (h!69631 zl!343)))) (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun b!5678799 () Bool)

(declare-fun e!3495282 () Bool)

(declare-fun e!3495280 () Bool)

(assert (=> b!5678799 (= e!3495282 e!3495280)))

(declare-fun res!2399687 () Bool)

(assert (=> b!5678799 (=> (not res!2399687) (not e!3495280))))

(assert (=> b!5678799 (= res!2399687 (and (not ((_ is EmptyLang!15669) (h!69630 (exprs!5553 (h!69631 zl!343))))) (not ((_ is ElementMatch!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun d!1792410 () Bool)

(declare-fun res!2399689 () Bool)

(assert (=> d!1792410 (=> res!2399689 e!3495282)))

(assert (=> d!1792410 (= res!2399689 ((_ is EmptyExpr!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> d!1792410 (= (nullableFct!1781 (h!69630 (exprs!5553 (h!69631 zl!343)))) e!3495282)))

(declare-fun b!5678800 () Bool)

(declare-fun e!3495283 () Bool)

(assert (=> b!5678800 (= e!3495283 call!431110)))

(declare-fun b!5678801 () Bool)

(declare-fun e!3495285 () Bool)

(declare-fun e!3495284 () Bool)

(assert (=> b!5678801 (= e!3495285 e!3495284)))

(declare-fun res!2399688 () Bool)

(assert (=> b!5678801 (= res!2399688 call!431111)))

(assert (=> b!5678801 (=> res!2399688 e!3495284)))

(declare-fun b!5678802 () Bool)

(assert (=> b!5678802 (= e!3495285 e!3495283)))

(declare-fun res!2399686 () Bool)

(assert (=> b!5678802 (= res!2399686 call!431111)))

(assert (=> b!5678802 (=> (not res!2399686) (not e!3495283))))

(declare-fun b!5678803 () Bool)

(assert (=> b!5678803 (= e!3495284 call!431110)))

(declare-fun b!5678804 () Bool)

(declare-fun e!3495281 () Bool)

(assert (=> b!5678804 (= e!3495280 e!3495281)))

(declare-fun res!2399685 () Bool)

(assert (=> b!5678804 (=> res!2399685 e!3495281)))

(assert (=> b!5678804 (= res!2399685 ((_ is Star!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5678805 () Bool)

(assert (=> b!5678805 (= e!3495281 e!3495285)))

(assert (=> b!5678805 (= c!999234 ((_ is Union!15669) (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (= (and d!1792410 (not res!2399689)) b!5678799))

(assert (= (and b!5678799 res!2399687) b!5678804))

(assert (= (and b!5678804 (not res!2399685)) b!5678805))

(assert (= (and b!5678805 c!999234) b!5678801))

(assert (= (and b!5678805 (not c!999234)) b!5678802))

(assert (= (and b!5678801 (not res!2399688)) b!5678803))

(assert (= (and b!5678802 res!2399686) b!5678800))

(assert (= (or b!5678803 b!5678800) bm!431105))

(assert (= (or b!5678801 b!5678802) bm!431106))

(declare-fun m!6638790 () Bool)

(assert (=> bm!431105 m!6638790))

(declare-fun m!6638792 () Bool)

(assert (=> bm!431106 m!6638792))

(assert (=> d!1792006 d!1792410))

(declare-fun d!1792412 () Bool)

(assert (=> d!1792412 (= (head!12051 (exprs!5553 (h!69631 zl!343))) (h!69630 (exprs!5553 (h!69631 zl!343))))))

(assert (=> b!5677962 d!1792412))

(declare-fun d!1792414 () Bool)

(assert (=> d!1792414 (= (Exists!2769 lambda!305911) (choose!42960 lambda!305911))))

(declare-fun bs!1323641 () Bool)

(assert (= bs!1323641 d!1792414))

(declare-fun m!6638796 () Bool)

(assert (=> bs!1323641 m!6638796))

(assert (=> d!1792138 d!1792414))

(declare-fun d!1792418 () Bool)

(assert (=> d!1792418 (= (Exists!2769 lambda!305912) (choose!42960 lambda!305912))))

(declare-fun bs!1323642 () Bool)

(assert (= bs!1323642 d!1792418))

(declare-fun m!6638798 () Bool)

(assert (=> bs!1323642 m!6638798))

(assert (=> d!1792138 d!1792418))

(declare-fun bs!1323651 () Bool)

(declare-fun d!1792420 () Bool)

(assert (= bs!1323651 (and d!1792420 b!5678533)))

(declare-fun lambda!305948 () Int)

(assert (=> bs!1323651 (not (= lambda!305948 lambda!305931))))

(declare-fun bs!1323652 () Bool)

(assert (= bs!1323652 (and d!1792420 d!1792138)))

(assert (=> bs!1323652 (= lambda!305948 lambda!305911)))

(assert (=> bs!1323652 (not (= lambda!305948 lambda!305912))))

(declare-fun bs!1323653 () Bool)

(assert (= bs!1323653 (and d!1792420 b!5678080)))

(assert (=> bs!1323653 (not (= lambda!305948 lambda!305896))))

(declare-fun bs!1323654 () Bool)

(assert (= bs!1323654 (and d!1792420 b!5678082)))

(assert (=> bs!1323654 (not (= lambda!305948 lambda!305897))))

(declare-fun bs!1323655 () Bool)

(assert (= bs!1323655 (and d!1792420 b!5677537)))

(assert (=> bs!1323655 (= lambda!305948 lambda!305851)))

(declare-fun bs!1323656 () Bool)

(assert (= bs!1323656 (and d!1792420 d!1792142)))

(assert (=> bs!1323656 (= lambda!305948 lambda!305915)))

(declare-fun bs!1323657 () Bool)

(assert (= bs!1323657 (and d!1792420 b!5678531)))

(assert (=> bs!1323657 (not (= lambda!305948 lambda!305930))))

(assert (=> bs!1323655 (not (= lambda!305948 lambda!305852))))

(assert (=> d!1792420 true))

(assert (=> d!1792420 true))

(assert (=> d!1792420 true))

(declare-fun lambda!305949 () Int)

(assert (=> bs!1323651 (= (and (= (regOne!31850 r!7292) (regOne!31850 (regTwo!31851 r!7292))) (= (regTwo!31850 r!7292) (regTwo!31850 (regTwo!31851 r!7292)))) (= lambda!305949 lambda!305931))))

(assert (=> bs!1323652 (not (= lambda!305949 lambda!305911))))

(assert (=> bs!1323652 (= lambda!305949 lambda!305912)))

(assert (=> bs!1323653 (not (= lambda!305949 lambda!305896))))

(assert (=> bs!1323654 (= lambda!305949 lambda!305897)))

(assert (=> bs!1323655 (not (= lambda!305949 lambda!305851))))

(assert (=> bs!1323656 (not (= lambda!305949 lambda!305915))))

(assert (=> bs!1323657 (not (= lambda!305949 lambda!305930))))

(assert (=> bs!1323655 (= lambda!305949 lambda!305852)))

(declare-fun bs!1323658 () Bool)

(assert (= bs!1323658 d!1792420))

(assert (=> bs!1323658 (not (= lambda!305949 lambda!305948))))

(assert (=> d!1792420 true))

(assert (=> d!1792420 true))

(assert (=> d!1792420 true))

(assert (=> d!1792420 (= (Exists!2769 lambda!305948) (Exists!2769 lambda!305949))))

(assert (=> d!1792420 true))

(declare-fun _$90!1429 () Unit!156208)

(assert (=> d!1792420 (= (choose!42961 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326) _$90!1429)))

(declare-fun m!6638836 () Bool)

(assert (=> bs!1323658 m!6638836))

(declare-fun m!6638838 () Bool)

(assert (=> bs!1323658 m!6638838))

(assert (=> d!1792138 d!1792420))

(assert (=> d!1792138 d!1792310))

(assert (=> d!1792142 d!1792134))

(assert (=> d!1792142 d!1792310))

(assert (=> d!1792142 d!1792140))

(declare-fun d!1792438 () Bool)

(assert (=> d!1792438 (= (Exists!2769 lambda!305915) (choose!42960 lambda!305915))))

(declare-fun bs!1323659 () Bool)

(assert (= bs!1323659 d!1792438))

(declare-fun m!6638840 () Bool)

(assert (=> bs!1323659 m!6638840))

(assert (=> d!1792142 d!1792438))

(declare-fun bs!1323660 () Bool)

(declare-fun d!1792440 () Bool)

(assert (= bs!1323660 (and d!1792440 b!5678533)))

(declare-fun lambda!305952 () Int)

(assert (=> bs!1323660 (not (= lambda!305952 lambda!305931))))

(declare-fun bs!1323661 () Bool)

(assert (= bs!1323661 (and d!1792440 d!1792138)))

(assert (=> bs!1323661 (= lambda!305952 lambda!305911)))

(assert (=> bs!1323661 (not (= lambda!305952 lambda!305912))))

(declare-fun bs!1323662 () Bool)

(assert (= bs!1323662 (and d!1792440 b!5678080)))

(assert (=> bs!1323662 (not (= lambda!305952 lambda!305896))))

(declare-fun bs!1323663 () Bool)

(assert (= bs!1323663 (and d!1792440 b!5677537)))

(assert (=> bs!1323663 (= lambda!305952 lambda!305851)))

(declare-fun bs!1323664 () Bool)

(assert (= bs!1323664 (and d!1792440 d!1792142)))

(assert (=> bs!1323664 (= lambda!305952 lambda!305915)))

(declare-fun bs!1323665 () Bool)

(assert (= bs!1323665 (and d!1792440 b!5678531)))

(assert (=> bs!1323665 (not (= lambda!305952 lambda!305930))))

(assert (=> bs!1323663 (not (= lambda!305952 lambda!305852))))

(declare-fun bs!1323666 () Bool)

(assert (= bs!1323666 (and d!1792440 d!1792420)))

(assert (=> bs!1323666 (= lambda!305952 lambda!305948)))

(assert (=> bs!1323666 (not (= lambda!305952 lambda!305949))))

(declare-fun bs!1323667 () Bool)

(assert (= bs!1323667 (and d!1792440 b!5678082)))

(assert (=> bs!1323667 (not (= lambda!305952 lambda!305897))))

(assert (=> d!1792440 true))

(assert (=> d!1792440 true))

(assert (=> d!1792440 true))

(assert (=> d!1792440 (= (isDefined!12381 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) Nil!63184 s!2326 s!2326)) (Exists!2769 lambda!305952))))

(assert (=> d!1792440 true))

(declare-fun _$89!1802 () Unit!156208)

(assert (=> d!1792440 (= (choose!42962 (regOne!31850 r!7292) (regTwo!31850 r!7292) s!2326) _$89!1802)))

(declare-fun bs!1323668 () Bool)

(assert (= bs!1323668 d!1792440))

(assert (=> bs!1323668 m!6637764))

(assert (=> bs!1323668 m!6637764))

(assert (=> bs!1323668 m!6637766))

(declare-fun m!6638842 () Bool)

(assert (=> bs!1323668 m!6638842))

(assert (=> d!1792142 d!1792440))

(declare-fun d!1792442 () Bool)

(declare-fun c!999262 () Bool)

(assert (=> d!1792442 (= c!999262 ((_ is Nil!63183) lt!2269890))))

(declare-fun e!3495338 () (InoxSet Context!10106))

(assert (=> d!1792442 (= (content!11444 lt!2269890) e!3495338)))

(declare-fun b!5678895 () Bool)

(assert (=> b!5678895 (= e!3495338 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678896 () Bool)

(assert (=> b!5678896 (= e!3495338 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) (h!69631 lt!2269890) true) (content!11444 (t!376617 lt!2269890))))))

(assert (= (and d!1792442 c!999262) b!5678895))

(assert (= (and d!1792442 (not c!999262)) b!5678896))

(declare-fun m!6638850 () Bool)

(assert (=> b!5678896 m!6638850))

(declare-fun m!6638854 () Bool)

(assert (=> b!5678896 m!6638854))

(assert (=> b!5678145 d!1792442))

(assert (=> b!5678208 d!1792306))

(assert (=> d!1792080 d!1792294))

(declare-fun bs!1323669 () Bool)

(declare-fun d!1792446 () Bool)

(assert (= bs!1323669 (and d!1792446 d!1792122)))

(declare-fun lambda!305953 () Int)

(assert (=> bs!1323669 (= lambda!305953 lambda!305900)))

(declare-fun bs!1323670 () Bool)

(assert (= bs!1323670 (and d!1792446 d!1792388)))

(assert (=> bs!1323670 (= lambda!305953 lambda!305939)))

(declare-fun bs!1323671 () Bool)

(assert (= bs!1323671 (and d!1792446 d!1792288)))

(assert (=> bs!1323671 (= lambda!305953 lambda!305929)))

(declare-fun bs!1323672 () Bool)

(assert (= bs!1323672 (and d!1792446 d!1792086)))

(assert (=> bs!1323672 (= lambda!305953 lambda!305880)))

(declare-fun bs!1323673 () Bool)

(assert (= bs!1323673 (and d!1792446 d!1792124)))

(assert (=> bs!1323673 (= lambda!305953 lambda!305903)))

(declare-fun bs!1323674 () Bool)

(assert (= bs!1323674 (and d!1792446 d!1792340)))

(assert (=> bs!1323674 (= lambda!305953 lambda!305936)))

(declare-fun bs!1323675 () Bool)

(assert (= bs!1323675 (and d!1792446 d!1792092)))

(assert (=> bs!1323675 (= lambda!305953 lambda!305881)))

(declare-fun bs!1323676 () Bool)

(assert (= bs!1323676 (and d!1792446 d!1792046)))

(assert (=> bs!1323676 (= lambda!305953 lambda!305874)))

(declare-fun b!5678897 () Bool)

(declare-fun e!3495341 () Bool)

(declare-fun lt!2269941 () Regex!15669)

(assert (=> b!5678897 (= e!3495341 (isConcat!716 lt!2269941))))

(declare-fun b!5678899 () Bool)

(declare-fun e!3495344 () Regex!15669)

(assert (=> b!5678899 (= e!3495344 (h!69630 (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5678901 () Bool)

(declare-fun e!3495342 () Bool)

(assert (=> b!5678901 (= e!3495342 e!3495341)))

(declare-fun c!999265 () Bool)

(assert (=> b!5678901 (= c!999265 (isEmpty!35034 (tail!11146 (t!376616 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5678902 () Bool)

(declare-fun e!3495339 () Regex!15669)

(assert (=> b!5678902 (= e!3495339 EmptyExpr!15669)))

(declare-fun b!5678903 () Bool)

(assert (=> b!5678903 (= e!3495342 (isEmptyExpr!1193 lt!2269941))))

(declare-fun b!5678904 () Bool)

(declare-fun e!3495345 () Bool)

(assert (=> b!5678904 (= e!3495345 e!3495342)))

(declare-fun c!999266 () Bool)

(assert (=> b!5678904 (= c!999266 (isEmpty!35034 (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5678905 () Bool)

(assert (=> b!5678905 (= e!3495339 (Concat!24514 (h!69630 (t!376616 (exprs!5553 (h!69631 zl!343)))) (generalisedConcat!1284 (t!376616 (t!376616 (exprs!5553 (h!69631 zl!343)))))))))

(declare-fun b!5678906 () Bool)

(assert (=> b!5678906 (= e!3495344 e!3495339)))

(declare-fun c!999264 () Bool)

(assert (=> b!5678906 (= c!999264 ((_ is Cons!63182) (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5678907 () Bool)

(assert (=> b!5678907 (= e!3495341 (= lt!2269941 (head!12051 (t!376616 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun b!5678908 () Bool)

(declare-fun e!3495340 () Bool)

(assert (=> b!5678908 (= e!3495340 (isEmpty!35034 (t!376616 (t!376616 (exprs!5553 (h!69631 zl!343))))))))

(assert (=> d!1792446 e!3495345))

(declare-fun res!2399725 () Bool)

(assert (=> d!1792446 (=> (not res!2399725) (not e!3495345))))

(assert (=> d!1792446 (= res!2399725 (validRegex!7405 lt!2269941))))

(assert (=> d!1792446 (= lt!2269941 e!3495344)))

(declare-fun c!999263 () Bool)

(assert (=> d!1792446 (= c!999263 e!3495340)))

(declare-fun res!2399726 () Bool)

(assert (=> d!1792446 (=> (not res!2399726) (not e!3495340))))

(assert (=> d!1792446 (= res!2399726 ((_ is Cons!63182) (t!376616 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> d!1792446 (forall!14818 (t!376616 (exprs!5553 (h!69631 zl!343))) lambda!305953)))

(assert (=> d!1792446 (= (generalisedConcat!1284 (t!376616 (exprs!5553 (h!69631 zl!343)))) lt!2269941)))

(assert (= (and d!1792446 res!2399726) b!5678908))

(assert (= (and d!1792446 c!999263) b!5678899))

(assert (= (and d!1792446 (not c!999263)) b!5678906))

(assert (= (and b!5678906 c!999264) b!5678905))

(assert (= (and b!5678906 (not c!999264)) b!5678902))

(assert (= (and d!1792446 res!2399725) b!5678904))

(assert (= (and b!5678904 c!999266) b!5678903))

(assert (= (and b!5678904 (not c!999266)) b!5678901))

(assert (= (and b!5678901 c!999265) b!5678907))

(assert (= (and b!5678901 (not c!999265)) b!5678897))

(declare-fun m!6638864 () Bool)

(assert (=> b!5678901 m!6638864))

(assert (=> b!5678901 m!6638864))

(declare-fun m!6638866 () Bool)

(assert (=> b!5678901 m!6638866))

(declare-fun m!6638868 () Bool)

(assert (=> d!1792446 m!6638868))

(declare-fun m!6638870 () Bool)

(assert (=> d!1792446 m!6638870))

(assert (=> b!5678904 m!6637792))

(declare-fun m!6638872 () Bool)

(assert (=> b!5678897 m!6638872))

(declare-fun m!6638876 () Bool)

(assert (=> b!5678908 m!6638876))

(declare-fun m!6638878 () Bool)

(assert (=> b!5678903 m!6638878))

(declare-fun m!6638880 () Bool)

(assert (=> b!5678907 m!6638880))

(declare-fun m!6638884 () Bool)

(assert (=> b!5678905 m!6638884))

(assert (=> b!5677960 d!1792446))

(declare-fun call!431138 () (InoxSet Context!10106))

(declare-fun c!999272 () Bool)

(declare-fun bm!431129 () Bool)

(declare-fun call!431135 () List!63306)

(assert (=> bm!431129 (= call!431138 (derivationStepZipperDown!1011 (ite c!999272 (regTwo!31851 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (regOne!31850 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))))) (ite c!999272 (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966)) (Context!10107 call!431135)) (h!69632 s!2326)))))

(declare-fun b!5678920 () Bool)

(declare-fun e!3495361 () (InoxSet Context!10106))

(declare-fun call!431134 () (InoxSet Context!10106))

(assert (=> b!5678920 (= e!3495361 ((_ map or) call!431134 call!431138))))

(declare-fun b!5678921 () Bool)

(declare-fun e!3495358 () (InoxSet Context!10106))

(declare-fun e!3495360 () (InoxSet Context!10106))

(assert (=> b!5678921 (= e!3495358 e!3495360)))

(declare-fun c!999269 () Bool)

(assert (=> b!5678921 (= c!999269 ((_ is Concat!24514) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))))))

(declare-fun e!3495357 () Bool)

(declare-fun b!5678922 () Bool)

(assert (=> b!5678922 (= e!3495357 (nullable!5701 (regOne!31850 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))))))))

(declare-fun b!5678923 () Bool)

(declare-fun c!999270 () Bool)

(assert (=> b!5678923 (= c!999270 e!3495357)))

(declare-fun res!2399736 () Bool)

(assert (=> b!5678923 (=> (not res!2399736) (not e!3495357))))

(assert (=> b!5678923 (= res!2399736 ((_ is Concat!24514) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))))))

(assert (=> b!5678923 (= e!3495361 e!3495358)))

(declare-fun bm!431130 () Bool)

(assert (=> bm!431130 (= call!431135 ($colon$colon!1702 (exprs!5553 (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966))) (ite (or c!999270 c!999269) (regTwo!31850 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))))))))

(declare-fun b!5678924 () Bool)

(declare-fun call!431133 () (InoxSet Context!10106))

(assert (=> b!5678924 (= e!3495360 call!431133)))

(declare-fun b!5678925 () Bool)

(declare-fun call!431137 () (InoxSet Context!10106))

(assert (=> b!5678925 (= e!3495358 ((_ map or) call!431138 call!431137))))

(declare-fun b!5678926 () Bool)

(declare-fun c!999273 () Bool)

(assert (=> b!5678926 (= c!999273 ((_ is Star!15669) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))))))

(declare-fun e!3495359 () (InoxSet Context!10106))

(assert (=> b!5678926 (= e!3495360 e!3495359)))

(declare-fun bm!431128 () Bool)

(declare-fun call!431136 () List!63306)

(assert (=> bm!431128 (= call!431136 call!431135)))

(declare-fun d!1792456 () Bool)

(declare-fun c!999271 () Bool)

(assert (=> d!1792456 (= c!999271 (and ((_ is ElementMatch!15669) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (= (c!998875 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (h!69632 s!2326))))))

(declare-fun e!3495356 () (InoxSet Context!10106))

(assert (=> d!1792456 (= (derivationStepZipperDown!1011 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))) (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966)) (h!69632 s!2326)) e!3495356)))

(declare-fun b!5678927 () Bool)

(assert (=> b!5678927 (= e!3495356 (store ((as const (Array Context!10106 Bool)) false) (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966)) true))))

(declare-fun b!5678928 () Bool)

(assert (=> b!5678928 (= e!3495359 ((as const (Array Context!10106 Bool)) false))))

(declare-fun b!5678929 () Bool)

(assert (=> b!5678929 (= e!3495356 e!3495361)))

(assert (=> b!5678929 (= c!999272 ((_ is Union!15669) (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))))))

(declare-fun bm!431131 () Bool)

(assert (=> bm!431131 (= call!431134 (derivationStepZipperDown!1011 (ite c!999272 (regOne!31851 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (ite c!999270 (regTwo!31850 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (ite c!999269 (regOne!31850 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292))))))) (reg!15998 (ite c!999024 (regOne!31851 (reg!15998 (regOne!31850 r!7292))) (ite c!999022 (regTwo!31850 (reg!15998 (regOne!31850 r!7292))) (ite c!999021 (regOne!31850 (reg!15998 (regOne!31850 r!7292))) (reg!15998 (reg!15998 (regOne!31850 r!7292)))))))))) (ite (or c!999272 c!999270) (ite (or c!999024 c!999022) (Context!10107 lt!2269825) (Context!10107 call!430966)) (Context!10107 call!431136)) (h!69632 s!2326)))))

(declare-fun b!5678930 () Bool)

(assert (=> b!5678930 (= e!3495359 call!431133)))

(declare-fun bm!431132 () Bool)

(assert (=> bm!431132 (= call!431133 call!431137)))

(declare-fun bm!431133 () Bool)

(assert (=> bm!431133 (= call!431137 call!431134)))

(assert (= (and d!1792456 c!999271) b!5678927))

(assert (= (and d!1792456 (not c!999271)) b!5678929))

(assert (= (and b!5678929 c!999272) b!5678920))

(assert (= (and b!5678929 (not c!999272)) b!5678923))

(assert (= (and b!5678923 res!2399736) b!5678922))

(assert (= (and b!5678923 c!999270) b!5678925))

(assert (= (and b!5678923 (not c!999270)) b!5678921))

(assert (= (and b!5678921 c!999269) b!5678924))

(assert (= (and b!5678921 (not c!999269)) b!5678926))

(assert (= (and b!5678926 c!999273) b!5678930))

(assert (= (and b!5678926 (not c!999273)) b!5678928))

(assert (= (or b!5678924 b!5678930) bm!431128))

(assert (= (or b!5678924 b!5678930) bm!431132))

(assert (= (or b!5678925 bm!431128) bm!431130))

(assert (= (or b!5678925 bm!431132) bm!431133))

(assert (= (or b!5678920 b!5678925) bm!431129))

(assert (= (or b!5678920 bm!431133) bm!431131))

(declare-fun m!6638894 () Bool)

(assert (=> b!5678927 m!6638894))

(declare-fun m!6638896 () Bool)

(assert (=> bm!431129 m!6638896))

(declare-fun m!6638898 () Bool)

(assert (=> b!5678922 m!6638898))

(declare-fun m!6638900 () Bool)

(assert (=> bm!431131 m!6638900))

(declare-fun m!6638902 () Bool)

(assert (=> bm!431130 m!6638902))

(assert (=> bm!430961 d!1792456))

(declare-fun b!5678943 () Bool)

(declare-fun e!3495369 () List!63308)

(assert (=> b!5678943 (= e!3495369 (t!376618 s!2326))))

(declare-fun b!5678945 () Bool)

(declare-fun res!2399745 () Bool)

(declare-fun e!3495368 () Bool)

(assert (=> b!5678945 (=> (not res!2399745) (not e!3495368))))

(declare-fun lt!2269944 () List!63308)

(declare-fun size!39997 (List!63308) Int)

(assert (=> b!5678945 (= res!2399745 (= (size!39997 lt!2269944) (+ (size!39997 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))) (size!39997 (t!376618 s!2326)))))))

(declare-fun d!1792462 () Bool)

(assert (=> d!1792462 e!3495368))

(declare-fun res!2399746 () Bool)

(assert (=> d!1792462 (=> (not res!2399746) (not e!3495368))))

(declare-fun content!11446 (List!63308) (InoxSet C!31608))

(assert (=> d!1792462 (= res!2399746 (= (content!11446 lt!2269944) ((_ map or) (content!11446 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))) (content!11446 (t!376618 s!2326)))))))

(assert (=> d!1792462 (= lt!2269944 e!3495369)))

(declare-fun c!999276 () Bool)

(assert (=> d!1792462 (= c!999276 ((_ is Nil!63184) (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))))))

(assert (=> d!1792462 (= (++!13869 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326)) lt!2269944)))

(declare-fun b!5678944 () Bool)

(assert (=> b!5678944 (= e!3495369 (Cons!63184 (h!69632 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))) (++!13869 (t!376618 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))) (t!376618 s!2326))))))

(declare-fun b!5678946 () Bool)

(assert (=> b!5678946 (= e!3495368 (or (not (= (t!376618 s!2326) Nil!63184)) (= lt!2269944 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)))))))

(assert (= (and d!1792462 c!999276) b!5678943))

(assert (= (and d!1792462 (not c!999276)) b!5678944))

(assert (= (and d!1792462 res!2399746) b!5678945))

(assert (= (and b!5678945 res!2399745) b!5678946))

(declare-fun m!6638904 () Bool)

(assert (=> b!5678945 m!6638904))

(assert (=> b!5678945 m!6638236))

(declare-fun m!6638906 () Bool)

(assert (=> b!5678945 m!6638906))

(declare-fun m!6638908 () Bool)

(assert (=> b!5678945 m!6638908))

(declare-fun m!6638910 () Bool)

(assert (=> d!1792462 m!6638910))

(assert (=> d!1792462 m!6638236))

(declare-fun m!6638912 () Bool)

(assert (=> d!1792462 m!6638912))

(declare-fun m!6638914 () Bool)

(assert (=> d!1792462 m!6638914))

(declare-fun m!6638916 () Bool)

(assert (=> b!5678944 m!6638916))

(assert (=> b!5678210 d!1792462))

(declare-fun b!5678947 () Bool)

(declare-fun e!3495371 () List!63308)

(assert (=> b!5678947 (= e!3495371 (Cons!63184 (h!69632 s!2326) Nil!63184))))

(declare-fun b!5678949 () Bool)

(declare-fun res!2399747 () Bool)

(declare-fun e!3495370 () Bool)

(assert (=> b!5678949 (=> (not res!2399747) (not e!3495370))))

(declare-fun lt!2269945 () List!63308)

(assert (=> b!5678949 (= res!2399747 (= (size!39997 lt!2269945) (+ (size!39997 Nil!63184) (size!39997 (Cons!63184 (h!69632 s!2326) Nil!63184)))))))

(declare-fun d!1792464 () Bool)

(assert (=> d!1792464 e!3495370))

(declare-fun res!2399748 () Bool)

(assert (=> d!1792464 (=> (not res!2399748) (not e!3495370))))

(assert (=> d!1792464 (= res!2399748 (= (content!11446 lt!2269945) ((_ map or) (content!11446 Nil!63184) (content!11446 (Cons!63184 (h!69632 s!2326) Nil!63184)))))))

(assert (=> d!1792464 (= lt!2269945 e!3495371)))

(declare-fun c!999277 () Bool)

(assert (=> d!1792464 (= c!999277 ((_ is Nil!63184) Nil!63184))))

(assert (=> d!1792464 (= (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) lt!2269945)))

(declare-fun b!5678948 () Bool)

(assert (=> b!5678948 (= e!3495371 (Cons!63184 (h!69632 Nil!63184) (++!13869 (t!376618 Nil!63184) (Cons!63184 (h!69632 s!2326) Nil!63184))))))

(declare-fun b!5678950 () Bool)

(assert (=> b!5678950 (= e!3495370 (or (not (= (Cons!63184 (h!69632 s!2326) Nil!63184) Nil!63184)) (= lt!2269945 Nil!63184)))))

(assert (= (and d!1792464 c!999277) b!5678947))

(assert (= (and d!1792464 (not c!999277)) b!5678948))

(assert (= (and d!1792464 res!2399748) b!5678949))

(assert (= (and b!5678949 res!2399747) b!5678950))

(declare-fun m!6638918 () Bool)

(assert (=> b!5678949 m!6638918))

(declare-fun m!6638920 () Bool)

(assert (=> b!5678949 m!6638920))

(declare-fun m!6638922 () Bool)

(assert (=> b!5678949 m!6638922))

(declare-fun m!6638924 () Bool)

(assert (=> d!1792464 m!6638924))

(declare-fun m!6638926 () Bool)

(assert (=> d!1792464 m!6638926))

(declare-fun m!6638928 () Bool)

(assert (=> d!1792464 m!6638928))

(declare-fun m!6638930 () Bool)

(assert (=> b!5678948 m!6638930))

(assert (=> b!5678210 d!1792464))

(declare-fun d!1792466 () Bool)

(assert (=> d!1792466 (= (++!13869 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326)) s!2326)))

(declare-fun lt!2269948 () Unit!156208)

(declare-fun choose!42964 (List!63308 C!31608 List!63308 List!63308) Unit!156208)

(assert (=> d!1792466 (= lt!2269948 (choose!42964 Nil!63184 (h!69632 s!2326) (t!376618 s!2326) s!2326))))

(assert (=> d!1792466 (= (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) (t!376618 s!2326))) s!2326)))

(assert (=> d!1792466 (= (lemmaMoveElementToOtherListKeepsConcatEq!2038 Nil!63184 (h!69632 s!2326) (t!376618 s!2326) s!2326) lt!2269948)))

(declare-fun bs!1323688 () Bool)

(assert (= bs!1323688 d!1792466))

(assert (=> bs!1323688 m!6638236))

(assert (=> bs!1323688 m!6638236))

(assert (=> bs!1323688 m!6638238))

(declare-fun m!6638942 () Bool)

(assert (=> bs!1323688 m!6638942))

(declare-fun m!6638946 () Bool)

(assert (=> bs!1323688 m!6638946))

(assert (=> b!5678210 d!1792466))

(declare-fun b!5678967 () Bool)

(declare-fun e!3495384 () Bool)

(assert (=> b!5678967 (= e!3495384 (matchR!7854 (regTwo!31850 r!7292) (t!376618 s!2326)))))

(declare-fun b!5678968 () Bool)

(declare-fun e!3495383 () Bool)

(declare-fun lt!2269950 () Option!15678)

(assert (=> b!5678968 (= e!3495383 (not (isDefined!12381 lt!2269950)))))

(declare-fun b!5678969 () Bool)

(declare-fun e!3495382 () Option!15678)

(assert (=> b!5678969 (= e!3495382 None!15677)))

(declare-fun d!1792474 () Bool)

(assert (=> d!1792474 e!3495383))

(declare-fun res!2399754 () Bool)

(assert (=> d!1792474 (=> res!2399754 e!3495383)))

(declare-fun e!3495381 () Bool)

(assert (=> d!1792474 (= res!2399754 e!3495381)))

(declare-fun res!2399755 () Bool)

(assert (=> d!1792474 (=> (not res!2399755) (not e!3495381))))

(assert (=> d!1792474 (= res!2399755 (isDefined!12381 lt!2269950))))

(declare-fun e!3495385 () Option!15678)

(assert (=> d!1792474 (= lt!2269950 e!3495385)))

(declare-fun c!999285 () Bool)

(assert (=> d!1792474 (= c!999285 e!3495384)))

(declare-fun res!2399753 () Bool)

(assert (=> d!1792474 (=> (not res!2399753) (not e!3495384))))

(assert (=> d!1792474 (= res!2399753 (matchR!7854 (regOne!31850 r!7292) (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184))))))

(assert (=> d!1792474 (validRegex!7405 (regOne!31850 r!7292))))

(assert (=> d!1792474 (= (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326) s!2326) lt!2269950)))

(declare-fun b!5678970 () Bool)

(declare-fun lt!2269951 () Unit!156208)

(declare-fun lt!2269949 () Unit!156208)

(assert (=> b!5678970 (= lt!2269951 lt!2269949)))

(assert (=> b!5678970 (= (++!13869 (++!13869 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (Cons!63184 (h!69632 (t!376618 s!2326)) Nil!63184)) (t!376618 (t!376618 s!2326))) s!2326)))

(assert (=> b!5678970 (= lt!2269949 (lemmaMoveElementToOtherListKeepsConcatEq!2038 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (h!69632 (t!376618 s!2326)) (t!376618 (t!376618 s!2326)) s!2326))))

(assert (=> b!5678970 (= e!3495382 (findConcatSeparation!2092 (regOne!31850 r!7292) (regTwo!31850 r!7292) (++!13869 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (Cons!63184 (h!69632 (t!376618 s!2326)) Nil!63184)) (t!376618 (t!376618 s!2326)) s!2326))))

(declare-fun b!5678971 () Bool)

(assert (=> b!5678971 (= e!3495385 (Some!15677 (tuple2!65533 (++!13869 Nil!63184 (Cons!63184 (h!69632 s!2326) Nil!63184)) (t!376618 s!2326))))))

(declare-fun b!5678972 () Bool)

(assert (=> b!5678972 (= e!3495385 e!3495382)))

(declare-fun c!999286 () Bool)

(assert (=> b!5678972 (= c!999286 ((_ is Nil!63184) (t!376618 s!2326)))))

(declare-fun b!5678973 () Bool)

(declare-fun res!2399756 () Bool)

(assert (=> b!5678973 (=> (not res!2399756) (not e!3495381))))

(assert (=> b!5678973 (= res!2399756 (matchR!7854 (regTwo!31850 r!7292) (_2!36069 (get!21771 lt!2269950))))))

(declare-fun b!5678974 () Bool)

(assert (=> b!5678974 (= e!3495381 (= (++!13869 (_1!36069 (get!21771 lt!2269950)) (_2!36069 (get!21771 lt!2269950))) s!2326))))

(declare-fun b!5678975 () Bool)

(declare-fun res!2399752 () Bool)

(assert (=> b!5678975 (=> (not res!2399752) (not e!3495381))))

(assert (=> b!5678975 (= res!2399752 (matchR!7854 (regOne!31850 r!7292) (_1!36069 (get!21771 lt!2269950))))))

(assert (= (and d!1792474 res!2399753) b!5678967))

(assert (= (and d!1792474 c!999285) b!5678971))

(assert (= (and d!1792474 (not c!999285)) b!5678972))

(assert (= (and b!5678972 c!999286) b!5678969))

(assert (= (and b!5678972 (not c!999286)) b!5678970))

(assert (= (and d!1792474 res!2399755) b!5678975))

(assert (= (and b!5678975 res!2399752) b!5678973))

(assert (= (and b!5678973 res!2399756) b!5678974))

(assert (= (and d!1792474 (not res!2399754)) b!5678968))

(declare-fun m!6638956 () Bool)

(assert (=> b!5678973 m!6638956))

(declare-fun m!6638958 () Bool)

(assert (=> b!5678973 m!6638958))

(declare-fun m!6638960 () Bool)

(assert (=> b!5678968 m!6638960))

(declare-fun m!6638962 () Bool)

(assert (=> b!5678967 m!6638962))

(assert (=> d!1792474 m!6638960))

(assert (=> d!1792474 m!6638236))

(declare-fun m!6638964 () Bool)

(assert (=> d!1792474 m!6638964))

(assert (=> d!1792474 m!6638232))

(assert (=> b!5678974 m!6638956))

(declare-fun m!6638966 () Bool)

(assert (=> b!5678974 m!6638966))

(assert (=> b!5678970 m!6638236))

(declare-fun m!6638968 () Bool)

(assert (=> b!5678970 m!6638968))

(assert (=> b!5678970 m!6638968))

(declare-fun m!6638972 () Bool)

(assert (=> b!5678970 m!6638972))

(assert (=> b!5678970 m!6638236))

(declare-fun m!6638978 () Bool)

(assert (=> b!5678970 m!6638978))

(assert (=> b!5678970 m!6638968))

(declare-fun m!6638980 () Bool)

(assert (=> b!5678970 m!6638980))

(assert (=> b!5678975 m!6638956))

(declare-fun m!6638984 () Bool)

(assert (=> b!5678975 m!6638984))

(assert (=> b!5678210 d!1792474))

(declare-fun d!1792484 () Bool)

(declare-fun c!999291 () Bool)

(assert (=> d!1792484 (= c!999291 (isEmpty!35036 (tail!11145 (t!376618 s!2326))))))

(declare-fun e!3495394 () Bool)

(assert (=> d!1792484 (= (matchZipper!1807 (derivationStepZipper!1754 lt!2269813 (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))) e!3495394)))

(declare-fun b!5678980 () Bool)

(assert (=> b!5678980 (= e!3495394 (nullableZipper!1635 (derivationStepZipper!1754 lt!2269813 (head!12050 (t!376618 s!2326)))))))

(declare-fun b!5678982 () Bool)

(assert (=> b!5678982 (= e!3495394 (matchZipper!1807 (derivationStepZipper!1754 (derivationStepZipper!1754 lt!2269813 (head!12050 (t!376618 s!2326))) (head!12050 (tail!11145 (t!376618 s!2326)))) (tail!11145 (tail!11145 (t!376618 s!2326)))))))

(assert (= (and d!1792484 c!999291) b!5678980))

(assert (= (and d!1792484 (not c!999291)) b!5678982))

(assert (=> d!1792484 m!6637974))

(assert (=> d!1792484 m!6638380))

(assert (=> b!5678980 m!6638062))

(declare-fun m!6638986 () Bool)

(assert (=> b!5678980 m!6638986))

(assert (=> b!5678982 m!6637974))

(assert (=> b!5678982 m!6638384))

(assert (=> b!5678982 m!6638062))

(assert (=> b!5678982 m!6638384))

(declare-fun m!6638988 () Bool)

(assert (=> b!5678982 m!6638988))

(assert (=> b!5678982 m!6637974))

(assert (=> b!5678982 m!6638388))

(assert (=> b!5678982 m!6638988))

(assert (=> b!5678982 m!6638388))

(declare-fun m!6638990 () Bool)

(assert (=> b!5678982 m!6638990))

(assert (=> b!5677894 d!1792484))

(declare-fun bs!1323698 () Bool)

(declare-fun d!1792486 () Bool)

(assert (= bs!1323698 (and d!1792486 b!5677532)))

(declare-fun lambda!305958 () Int)

(assert (=> bs!1323698 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305958 lambda!305853))))

(declare-fun bs!1323699 () Bool)

(assert (= bs!1323699 (and d!1792486 d!1792126)))

(assert (=> bs!1323699 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305958 lambda!305906))))

(declare-fun bs!1323700 () Bool)

(assert (= bs!1323700 (and d!1792486 d!1792238)))

(assert (=> bs!1323700 (= lambda!305958 lambda!305921)))

(assert (=> d!1792486 true))

(assert (=> d!1792486 (= (derivationStepZipper!1754 lt!2269813 (head!12050 (t!376618 s!2326))) (flatMap!1282 lt!2269813 lambda!305958))))

(declare-fun bs!1323701 () Bool)

(assert (= bs!1323701 d!1792486))

(declare-fun m!6639000 () Bool)

(assert (=> bs!1323701 m!6639000))

(assert (=> b!5677894 d!1792486))

(assert (=> b!5677894 d!1792240))

(assert (=> b!5677894 d!1792242))

(declare-fun b!5678994 () Bool)

(declare-fun e!3495396 () Bool)

(declare-fun e!3495397 () Bool)

(assert (=> b!5678994 (= e!3495396 e!3495397)))

(declare-fun res!2399766 () Bool)

(assert (=> b!5678994 (=> (not res!2399766) (not e!3495397))))

(declare-fun call!431149 () Bool)

(assert (=> b!5678994 (= res!2399766 call!431149)))

(declare-fun d!1792488 () Bool)

(declare-fun res!2399769 () Bool)

(declare-fun e!3495400 () Bool)

(assert (=> d!1792488 (=> res!2399769 e!3495400)))

(assert (=> d!1792488 (= res!2399769 ((_ is ElementMatch!15669) lt!2269856))))

(assert (=> d!1792488 (= (validRegex!7405 lt!2269856) e!3495400)))

(declare-fun b!5678995 () Bool)

(declare-fun call!431147 () Bool)

(assert (=> b!5678995 (= e!3495397 call!431147)))

(declare-fun b!5678996 () Bool)

(declare-fun e!3495395 () Bool)

(declare-fun e!3495401 () Bool)

(assert (=> b!5678996 (= e!3495395 e!3495401)))

(declare-fun res!2399765 () Bool)

(assert (=> b!5678996 (= res!2399765 (not (nullable!5701 (reg!15998 lt!2269856))))))

(assert (=> b!5678996 (=> (not res!2399765) (not e!3495401))))

(declare-fun b!5678997 () Bool)

(declare-fun e!3495399 () Bool)

(assert (=> b!5678997 (= e!3495399 call!431147)))

(declare-fun b!5678998 () Bool)

(declare-fun e!3495398 () Bool)

(assert (=> b!5678998 (= e!3495395 e!3495398)))

(declare-fun c!999292 () Bool)

(assert (=> b!5678998 (= c!999292 ((_ is Union!15669) lt!2269856))))

(declare-fun call!431148 () Bool)

(declare-fun c!999293 () Bool)

(declare-fun bm!431142 () Bool)

(assert (=> bm!431142 (= call!431148 (validRegex!7405 (ite c!999293 (reg!15998 lt!2269856) (ite c!999292 (regTwo!31851 lt!2269856) (regTwo!31850 lt!2269856)))))))

(declare-fun b!5678999 () Bool)

(declare-fun res!2399767 () Bool)

(assert (=> b!5678999 (=> res!2399767 e!3495396)))

(assert (=> b!5678999 (= res!2399767 (not ((_ is Concat!24514) lt!2269856)))))

(assert (=> b!5678999 (= e!3495398 e!3495396)))

(declare-fun b!5679000 () Bool)

(assert (=> b!5679000 (= e!3495400 e!3495395)))

(assert (=> b!5679000 (= c!999293 ((_ is Star!15669) lt!2269856))))

(declare-fun bm!431143 () Bool)

(assert (=> bm!431143 (= call!431147 call!431148)))

(declare-fun b!5679001 () Bool)

(declare-fun res!2399768 () Bool)

(assert (=> b!5679001 (=> (not res!2399768) (not e!3495399))))

(assert (=> b!5679001 (= res!2399768 call!431149)))

(assert (=> b!5679001 (= e!3495398 e!3495399)))

(declare-fun bm!431144 () Bool)

(assert (=> bm!431144 (= call!431149 (validRegex!7405 (ite c!999292 (regOne!31851 lt!2269856) (regOne!31850 lt!2269856))))))

(declare-fun b!5679002 () Bool)

(assert (=> b!5679002 (= e!3495401 call!431148)))

(assert (= (and d!1792488 (not res!2399769)) b!5679000))

(assert (= (and b!5679000 c!999293) b!5678996))

(assert (= (and b!5679000 (not c!999293)) b!5678998))

(assert (= (and b!5678996 res!2399765) b!5679002))

(assert (= (and b!5678998 c!999292) b!5679001))

(assert (= (and b!5678998 (not c!999292)) b!5678999))

(assert (= (and b!5679001 res!2399768) b!5678997))

(assert (= (and b!5678999 (not res!2399767)) b!5678994))

(assert (= (and b!5678994 res!2399766) b!5678995))

(assert (= (or b!5678997 b!5678995) bm!431143))

(assert (= (or b!5679001 b!5678994) bm!431144))

(assert (= (or b!5679002 bm!431143) bm!431142))

(declare-fun m!6639010 () Bool)

(assert (=> b!5678996 m!6639010))

(declare-fun m!6639012 () Bool)

(assert (=> bm!431142 m!6639012))

(declare-fun m!6639014 () Bool)

(assert (=> bm!431144 m!6639014))

(assert (=> d!1792052 d!1792488))

(assert (=> d!1792052 d!1792122))

(assert (=> d!1792052 d!1792124))

(declare-fun d!1792492 () Bool)

(declare-fun res!2399771 () Bool)

(declare-fun e!3495408 () Bool)

(assert (=> d!1792492 (=> res!2399771 e!3495408)))

(assert (=> d!1792492 (= res!2399771 ((_ is Nil!63182) (exprs!5553 (h!69631 zl!343))))))

(assert (=> d!1792492 (= (forall!14818 (exprs!5553 (h!69631 zl!343)) lambda!305881) e!3495408)))

(declare-fun b!5679014 () Bool)

(declare-fun e!3495409 () Bool)

(assert (=> b!5679014 (= e!3495408 e!3495409)))

(declare-fun res!2399772 () Bool)

(assert (=> b!5679014 (=> (not res!2399772) (not e!3495409))))

(assert (=> b!5679014 (= res!2399772 (dynLambda!24728 lambda!305881 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5679015 () Bool)

(assert (=> b!5679015 (= e!3495409 (forall!14818 (t!376616 (exprs!5553 (h!69631 zl!343))) lambda!305881))))

(assert (= (and d!1792492 (not res!2399771)) b!5679014))

(assert (= (and b!5679014 res!2399772) b!5679015))

(declare-fun b_lambda!214727 () Bool)

(assert (=> (not b_lambda!214727) (not b!5679014)))

(declare-fun m!6639016 () Bool)

(assert (=> b!5679014 m!6639016))

(declare-fun m!6639020 () Bool)

(assert (=> b!5679015 m!6639020))

(assert (=> d!1792092 d!1792492))

(declare-fun b!5679016 () Bool)

(declare-fun e!3495411 () Bool)

(declare-fun e!3495412 () Bool)

(assert (=> b!5679016 (= e!3495411 e!3495412)))

(declare-fun res!2399774 () Bool)

(assert (=> b!5679016 (=> (not res!2399774) (not e!3495412))))

(declare-fun call!431158 () Bool)

(assert (=> b!5679016 (= res!2399774 call!431158)))

(declare-fun d!1792494 () Bool)

(declare-fun res!2399777 () Bool)

(declare-fun e!3495415 () Bool)

(assert (=> d!1792494 (=> res!2399777 e!3495415)))

(assert (=> d!1792494 (= res!2399777 ((_ is ElementMatch!15669) lt!2269872))))

(assert (=> d!1792494 (= (validRegex!7405 lt!2269872) e!3495415)))

(declare-fun b!5679017 () Bool)

(declare-fun call!431156 () Bool)

(assert (=> b!5679017 (= e!3495412 call!431156)))

(declare-fun b!5679018 () Bool)

(declare-fun e!3495410 () Bool)

(declare-fun e!3495416 () Bool)

(assert (=> b!5679018 (= e!3495410 e!3495416)))

(declare-fun res!2399773 () Bool)

(assert (=> b!5679018 (= res!2399773 (not (nullable!5701 (reg!15998 lt!2269872))))))

(assert (=> b!5679018 (=> (not res!2399773) (not e!3495416))))

(declare-fun b!5679019 () Bool)

(declare-fun e!3495414 () Bool)

(assert (=> b!5679019 (= e!3495414 call!431156)))

(declare-fun b!5679020 () Bool)

(declare-fun e!3495413 () Bool)

(assert (=> b!5679020 (= e!3495410 e!3495413)))

(declare-fun c!999299 () Bool)

(assert (=> b!5679020 (= c!999299 ((_ is Union!15669) lt!2269872))))

(declare-fun call!431157 () Bool)

(declare-fun bm!431151 () Bool)

(declare-fun c!999300 () Bool)

(assert (=> bm!431151 (= call!431157 (validRegex!7405 (ite c!999300 (reg!15998 lt!2269872) (ite c!999299 (regTwo!31851 lt!2269872) (regTwo!31850 lt!2269872)))))))

(declare-fun b!5679021 () Bool)

(declare-fun res!2399775 () Bool)

(assert (=> b!5679021 (=> res!2399775 e!3495411)))

(assert (=> b!5679021 (= res!2399775 (not ((_ is Concat!24514) lt!2269872)))))

(assert (=> b!5679021 (= e!3495413 e!3495411)))

(declare-fun b!5679022 () Bool)

(assert (=> b!5679022 (= e!3495415 e!3495410)))

(assert (=> b!5679022 (= c!999300 ((_ is Star!15669) lt!2269872))))

(declare-fun bm!431152 () Bool)

(assert (=> bm!431152 (= call!431156 call!431157)))

(declare-fun b!5679023 () Bool)

(declare-fun res!2399776 () Bool)

(assert (=> b!5679023 (=> (not res!2399776) (not e!3495414))))

(assert (=> b!5679023 (= res!2399776 call!431158)))

(assert (=> b!5679023 (= e!3495413 e!3495414)))

(declare-fun bm!431153 () Bool)

(assert (=> bm!431153 (= call!431158 (validRegex!7405 (ite c!999299 (regOne!31851 lt!2269872) (regOne!31850 lt!2269872))))))

(declare-fun b!5679024 () Bool)

(assert (=> b!5679024 (= e!3495416 call!431157)))

(assert (= (and d!1792494 (not res!2399777)) b!5679022))

(assert (= (and b!5679022 c!999300) b!5679018))

(assert (= (and b!5679022 (not c!999300)) b!5679020))

(assert (= (and b!5679018 res!2399773) b!5679024))

(assert (= (and b!5679020 c!999299) b!5679023))

(assert (= (and b!5679020 (not c!999299)) b!5679021))

(assert (= (and b!5679023 res!2399776) b!5679019))

(assert (= (and b!5679021 (not res!2399775)) b!5679016))

(assert (= (and b!5679016 res!2399774) b!5679017))

(assert (= (or b!5679019 b!5679017) bm!431152))

(assert (= (or b!5679023 b!5679016) bm!431153))

(assert (= (or b!5679024 bm!431152) bm!431151))

(declare-fun m!6639030 () Bool)

(assert (=> b!5679018 m!6639030))

(declare-fun m!6639032 () Bool)

(assert (=> bm!431151 m!6639032))

(declare-fun m!6639034 () Bool)

(assert (=> bm!431153 m!6639034))

(assert (=> d!1792086 d!1792494))

(declare-fun d!1792498 () Bool)

(declare-fun res!2399778 () Bool)

(declare-fun e!3495417 () Bool)

(assert (=> d!1792498 (=> res!2399778 e!3495417)))

(assert (=> d!1792498 (= res!2399778 ((_ is Nil!63182) (exprs!5553 (h!69631 zl!343))))))

(assert (=> d!1792498 (= (forall!14818 (exprs!5553 (h!69631 zl!343)) lambda!305880) e!3495417)))

(declare-fun b!5679025 () Bool)

(declare-fun e!3495418 () Bool)

(assert (=> b!5679025 (= e!3495417 e!3495418)))

(declare-fun res!2399779 () Bool)

(assert (=> b!5679025 (=> (not res!2399779) (not e!3495418))))

(assert (=> b!5679025 (= res!2399779 (dynLambda!24728 lambda!305880 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun b!5679026 () Bool)

(assert (=> b!5679026 (= e!3495418 (forall!14818 (t!376616 (exprs!5553 (h!69631 zl!343))) lambda!305880))))

(assert (= (and d!1792498 (not res!2399778)) b!5679025))

(assert (= (and b!5679025 res!2399779) b!5679026))

(declare-fun b_lambda!214729 () Bool)

(assert (=> (not b_lambda!214729) (not b!5679025)))

(declare-fun m!6639036 () Bool)

(assert (=> b!5679025 m!6639036))

(declare-fun m!6639038 () Bool)

(assert (=> b!5679026 m!6639038))

(assert (=> d!1792086 d!1792498))

(declare-fun bs!1323702 () Bool)

(declare-fun d!1792504 () Bool)

(assert (= bs!1323702 (and d!1792504 d!1792122)))

(declare-fun lambda!305959 () Int)

(assert (=> bs!1323702 (= lambda!305959 lambda!305900)))

(declare-fun bs!1323703 () Bool)

(assert (= bs!1323703 (and d!1792504 d!1792388)))

(assert (=> bs!1323703 (= lambda!305959 lambda!305939)))

(declare-fun bs!1323704 () Bool)

(assert (= bs!1323704 (and d!1792504 d!1792086)))

(assert (=> bs!1323704 (= lambda!305959 lambda!305880)))

(declare-fun bs!1323705 () Bool)

(assert (= bs!1323705 (and d!1792504 d!1792124)))

(assert (=> bs!1323705 (= lambda!305959 lambda!305903)))

(declare-fun bs!1323706 () Bool)

(assert (= bs!1323706 (and d!1792504 d!1792340)))

(assert (=> bs!1323706 (= lambda!305959 lambda!305936)))

(declare-fun bs!1323707 () Bool)

(assert (= bs!1323707 (and d!1792504 d!1792092)))

(assert (=> bs!1323707 (= lambda!305959 lambda!305881)))

(declare-fun bs!1323708 () Bool)

(assert (= bs!1323708 (and d!1792504 d!1792046)))

(assert (=> bs!1323708 (= lambda!305959 lambda!305874)))

(declare-fun bs!1323709 () Bool)

(assert (= bs!1323709 (and d!1792504 d!1792446)))

(assert (=> bs!1323709 (= lambda!305959 lambda!305953)))

(declare-fun bs!1323710 () Bool)

(assert (= bs!1323710 (and d!1792504 d!1792288)))

(assert (=> bs!1323710 (= lambda!305959 lambda!305929)))

(assert (=> d!1792504 (= (inv!82419 (h!69631 (t!376617 zl!343))) (forall!14818 (exprs!5553 (h!69631 (t!376617 zl!343))) lambda!305959))))

(declare-fun bs!1323712 () Bool)

(assert (= bs!1323712 d!1792504))

(declare-fun m!6639040 () Bool)

(assert (=> bs!1323712 m!6639040))

(assert (=> b!5678234 d!1792504))

(assert (=> bm!430969 d!1792230))

(declare-fun d!1792506 () Bool)

(declare-fun res!2399783 () Bool)

(declare-fun e!3495426 () Bool)

(assert (=> d!1792506 (=> res!2399783 e!3495426)))

(assert (=> d!1792506 (= res!2399783 ((_ is Nil!63182) (exprs!5553 setElem!37967)))))

(assert (=> d!1792506 (= (forall!14818 (exprs!5553 setElem!37967) lambda!305874) e!3495426)))

(declare-fun b!5679038 () Bool)

(declare-fun e!3495427 () Bool)

(assert (=> b!5679038 (= e!3495426 e!3495427)))

(declare-fun res!2399784 () Bool)

(assert (=> b!5679038 (=> (not res!2399784) (not e!3495427))))

(assert (=> b!5679038 (= res!2399784 (dynLambda!24728 lambda!305874 (h!69630 (exprs!5553 setElem!37967))))))

(declare-fun b!5679039 () Bool)

(assert (=> b!5679039 (= e!3495427 (forall!14818 (t!376616 (exprs!5553 setElem!37967)) lambda!305874))))

(assert (= (and d!1792506 (not res!2399783)) b!5679038))

(assert (= (and b!5679038 res!2399784) b!5679039))

(declare-fun b_lambda!214731 () Bool)

(assert (=> (not b_lambda!214731) (not b!5679038)))

(declare-fun m!6639042 () Bool)

(assert (=> b!5679038 m!6639042))

(declare-fun m!6639044 () Bool)

(assert (=> b!5679039 m!6639044))

(assert (=> d!1792046 d!1792506))

(declare-fun b!5679040 () Bool)

(declare-fun e!3495429 () Bool)

(declare-fun e!3495430 () Bool)

(assert (=> b!5679040 (= e!3495429 e!3495430)))

(declare-fun res!2399786 () Bool)

(assert (=> b!5679040 (=> (not res!2399786) (not e!3495430))))

(declare-fun call!431163 () Bool)

(assert (=> b!5679040 (= res!2399786 call!431163)))

(declare-fun d!1792508 () Bool)

(declare-fun res!2399789 () Bool)

(declare-fun e!3495433 () Bool)

(assert (=> d!1792508 (=> res!2399789 e!3495433)))

(assert (=> d!1792508 (= res!2399789 ((_ is ElementMatch!15669) lt!2269893))))

(assert (=> d!1792508 (= (validRegex!7405 lt!2269893) e!3495433)))

(declare-fun b!5679041 () Bool)

(declare-fun call!431161 () Bool)

(assert (=> b!5679041 (= e!3495430 call!431161)))

(declare-fun b!5679042 () Bool)

(declare-fun e!3495428 () Bool)

(declare-fun e!3495434 () Bool)

(assert (=> b!5679042 (= e!3495428 e!3495434)))

(declare-fun res!2399785 () Bool)

(assert (=> b!5679042 (= res!2399785 (not (nullable!5701 (reg!15998 lt!2269893))))))

(assert (=> b!5679042 (=> (not res!2399785) (not e!3495434))))

(declare-fun b!5679043 () Bool)

(declare-fun e!3495432 () Bool)

(assert (=> b!5679043 (= e!3495432 call!431161)))

(declare-fun b!5679044 () Bool)

(declare-fun e!3495431 () Bool)

(assert (=> b!5679044 (= e!3495428 e!3495431)))

(declare-fun c!999305 () Bool)

(assert (=> b!5679044 (= c!999305 ((_ is Union!15669) lt!2269893))))

(declare-fun c!999306 () Bool)

(declare-fun bm!431156 () Bool)

(declare-fun call!431162 () Bool)

(assert (=> bm!431156 (= call!431162 (validRegex!7405 (ite c!999306 (reg!15998 lt!2269893) (ite c!999305 (regTwo!31851 lt!2269893) (regTwo!31850 lt!2269893)))))))

(declare-fun b!5679045 () Bool)

(declare-fun res!2399787 () Bool)

(assert (=> b!5679045 (=> res!2399787 e!3495429)))

(assert (=> b!5679045 (= res!2399787 (not ((_ is Concat!24514) lt!2269893)))))

(assert (=> b!5679045 (= e!3495431 e!3495429)))

(declare-fun b!5679046 () Bool)

(assert (=> b!5679046 (= e!3495433 e!3495428)))

(assert (=> b!5679046 (= c!999306 ((_ is Star!15669) lt!2269893))))

(declare-fun bm!431157 () Bool)

(assert (=> bm!431157 (= call!431161 call!431162)))

(declare-fun b!5679047 () Bool)

(declare-fun res!2399788 () Bool)

(assert (=> b!5679047 (=> (not res!2399788) (not e!3495432))))

(assert (=> b!5679047 (= res!2399788 call!431163)))

(assert (=> b!5679047 (= e!3495431 e!3495432)))

(declare-fun bm!431158 () Bool)

(assert (=> bm!431158 (= call!431163 (validRegex!7405 (ite c!999305 (regOne!31851 lt!2269893) (regOne!31850 lt!2269893))))))

(declare-fun b!5679048 () Bool)

(assert (=> b!5679048 (= e!3495434 call!431162)))

(assert (= (and d!1792508 (not res!2399789)) b!5679046))

(assert (= (and b!5679046 c!999306) b!5679042))

(assert (= (and b!5679046 (not c!999306)) b!5679044))

(assert (= (and b!5679042 res!2399785) b!5679048))

(assert (= (and b!5679044 c!999305) b!5679047))

(assert (= (and b!5679044 (not c!999305)) b!5679045))

(assert (= (and b!5679047 res!2399788) b!5679043))

(assert (= (and b!5679045 (not res!2399787)) b!5679040))

(assert (= (and b!5679040 res!2399786) b!5679041))

(assert (= (or b!5679043 b!5679041) bm!431157))

(assert (= (or b!5679047 b!5679040) bm!431158))

(assert (= (or b!5679048 bm!431157) bm!431156))

(declare-fun m!6639046 () Bool)

(assert (=> b!5679042 m!6639046))

(declare-fun m!6639048 () Bool)

(assert (=> bm!431156 m!6639048))

(declare-fun m!6639050 () Bool)

(assert (=> bm!431158 m!6639050))

(assert (=> d!1792122 d!1792508))

(declare-fun d!1792510 () Bool)

(declare-fun res!2399790 () Bool)

(declare-fun e!3495435 () Bool)

(assert (=> d!1792510 (=> res!2399790 e!3495435)))

(assert (=> d!1792510 (= res!2399790 ((_ is Nil!63182) (unfocusZipperList!1097 zl!343)))))

(assert (=> d!1792510 (= (forall!14818 (unfocusZipperList!1097 zl!343) lambda!305900) e!3495435)))

(declare-fun b!5679049 () Bool)

(declare-fun e!3495436 () Bool)

(assert (=> b!5679049 (= e!3495435 e!3495436)))

(declare-fun res!2399791 () Bool)

(assert (=> b!5679049 (=> (not res!2399791) (not e!3495436))))

(assert (=> b!5679049 (= res!2399791 (dynLambda!24728 lambda!305900 (h!69630 (unfocusZipperList!1097 zl!343))))))

(declare-fun b!5679050 () Bool)

(assert (=> b!5679050 (= e!3495436 (forall!14818 (t!376616 (unfocusZipperList!1097 zl!343)) lambda!305900))))

(assert (= (and d!1792510 (not res!2399790)) b!5679049))

(assert (= (and b!5679049 res!2399791) b!5679050))

(declare-fun b_lambda!214733 () Bool)

(assert (=> (not b_lambda!214733) (not b!5679049)))

(declare-fun m!6639052 () Bool)

(assert (=> b!5679049 m!6639052))

(declare-fun m!6639054 () Bool)

(assert (=> b!5679050 m!6639054))

(assert (=> d!1792122 d!1792510))

(declare-fun bs!1323724 () Bool)

(declare-fun b!5679055 () Bool)

(assert (= bs!1323724 (and b!5679055 b!5678533)))

(declare-fun lambda!305962 () Int)

(assert (=> bs!1323724 (not (= lambda!305962 lambda!305931))))

(declare-fun bs!1323726 () Bool)

(assert (= bs!1323726 (and b!5679055 d!1792138)))

(assert (=> bs!1323726 (not (= lambda!305962 lambda!305911))))

(assert (=> bs!1323726 (not (= lambda!305962 lambda!305912))))

(declare-fun bs!1323729 () Bool)

(assert (= bs!1323729 (and b!5679055 b!5678080)))

(assert (=> bs!1323729 (= (and (= (reg!15998 (regOne!31851 r!7292)) (reg!15998 r!7292)) (= (regOne!31851 r!7292) r!7292)) (= lambda!305962 lambda!305896))))

(declare-fun bs!1323730 () Bool)

(assert (= bs!1323730 (and b!5679055 d!1792440)))

(assert (=> bs!1323730 (not (= lambda!305962 lambda!305952))))

(declare-fun bs!1323732 () Bool)

(assert (= bs!1323732 (and b!5679055 b!5677537)))

(assert (=> bs!1323732 (not (= lambda!305962 lambda!305851))))

(declare-fun bs!1323734 () Bool)

(assert (= bs!1323734 (and b!5679055 d!1792142)))

(assert (=> bs!1323734 (not (= lambda!305962 lambda!305915))))

(declare-fun bs!1323736 () Bool)

(assert (= bs!1323736 (and b!5679055 b!5678531)))

(assert (=> bs!1323736 (= (and (= (reg!15998 (regOne!31851 r!7292)) (reg!15998 (regTwo!31851 r!7292))) (= (regOne!31851 r!7292) (regTwo!31851 r!7292))) (= lambda!305962 lambda!305930))))

(assert (=> bs!1323732 (not (= lambda!305962 lambda!305852))))

(declare-fun bs!1323738 () Bool)

(assert (= bs!1323738 (and b!5679055 d!1792420)))

(assert (=> bs!1323738 (not (= lambda!305962 lambda!305948))))

(assert (=> bs!1323738 (not (= lambda!305962 lambda!305949))))

(declare-fun bs!1323739 () Bool)

(assert (= bs!1323739 (and b!5679055 b!5678082)))

(assert (=> bs!1323739 (not (= lambda!305962 lambda!305897))))

(assert (=> b!5679055 true))

(assert (=> b!5679055 true))

(declare-fun bs!1323740 () Bool)

(declare-fun b!5679057 () Bool)

(assert (= bs!1323740 (and b!5679057 b!5678533)))

(declare-fun lambda!305963 () Int)

(assert (=> bs!1323740 (= (and (= (regOne!31850 (regOne!31851 r!7292)) (regOne!31850 (regTwo!31851 r!7292))) (= (regTwo!31850 (regOne!31851 r!7292)) (regTwo!31850 (regTwo!31851 r!7292)))) (= lambda!305963 lambda!305931))))

(declare-fun bs!1323741 () Bool)

(assert (= bs!1323741 (and b!5679057 d!1792138)))

(assert (=> bs!1323741 (not (= lambda!305963 lambda!305911))))

(assert (=> bs!1323741 (= (and (= (regOne!31850 (regOne!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regOne!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305963 lambda!305912))))

(declare-fun bs!1323742 () Bool)

(assert (= bs!1323742 (and b!5679057 b!5678080)))

(assert (=> bs!1323742 (not (= lambda!305963 lambda!305896))))

(declare-fun bs!1323743 () Bool)

(assert (= bs!1323743 (and b!5679057 d!1792440)))

(assert (=> bs!1323743 (not (= lambda!305963 lambda!305952))))

(declare-fun bs!1323744 () Bool)

(assert (= bs!1323744 (and b!5679057 b!5679055)))

(assert (=> bs!1323744 (not (= lambda!305963 lambda!305962))))

(declare-fun bs!1323745 () Bool)

(assert (= bs!1323745 (and b!5679057 b!5677537)))

(assert (=> bs!1323745 (not (= lambda!305963 lambda!305851))))

(declare-fun bs!1323746 () Bool)

(assert (= bs!1323746 (and b!5679057 d!1792142)))

(assert (=> bs!1323746 (not (= lambda!305963 lambda!305915))))

(declare-fun bs!1323747 () Bool)

(assert (= bs!1323747 (and b!5679057 b!5678531)))

(assert (=> bs!1323747 (not (= lambda!305963 lambda!305930))))

(assert (=> bs!1323745 (= (and (= (regOne!31850 (regOne!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regOne!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305963 lambda!305852))))

(declare-fun bs!1323748 () Bool)

(assert (= bs!1323748 (and b!5679057 d!1792420)))

(assert (=> bs!1323748 (not (= lambda!305963 lambda!305948))))

(assert (=> bs!1323748 (= (and (= (regOne!31850 (regOne!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regOne!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305963 lambda!305949))))

(declare-fun bs!1323749 () Bool)

(assert (= bs!1323749 (and b!5679057 b!5678082)))

(assert (=> bs!1323749 (= (and (= (regOne!31850 (regOne!31851 r!7292)) (regOne!31850 r!7292)) (= (regTwo!31850 (regOne!31851 r!7292)) (regTwo!31850 r!7292))) (= lambda!305963 lambda!305897))))

(assert (=> b!5679057 true))

(assert (=> b!5679057 true))

(declare-fun b!5679051 () Bool)

(declare-fun e!3495441 () Bool)

(assert (=> b!5679051 (= e!3495441 (= s!2326 (Cons!63184 (c!998875 (regOne!31851 r!7292)) Nil!63184)))))

(declare-fun b!5679052 () Bool)

(declare-fun res!2399794 () Bool)

(declare-fun e!3495437 () Bool)

(assert (=> b!5679052 (=> res!2399794 e!3495437)))

(declare-fun call!431164 () Bool)

(assert (=> b!5679052 (= res!2399794 call!431164)))

(declare-fun e!3495438 () Bool)

(assert (=> b!5679052 (= e!3495438 e!3495437)))

(declare-fun d!1792512 () Bool)

(declare-fun c!999307 () Bool)

(assert (=> d!1792512 (= c!999307 ((_ is EmptyExpr!15669) (regOne!31851 r!7292)))))

(declare-fun e!3495439 () Bool)

(assert (=> d!1792512 (= (matchRSpec!2772 (regOne!31851 r!7292) s!2326) e!3495439)))

(declare-fun b!5679053 () Bool)

(declare-fun e!3495443 () Bool)

(assert (=> b!5679053 (= e!3495439 e!3495443)))

(declare-fun res!2399792 () Bool)

(assert (=> b!5679053 (= res!2399792 (not ((_ is EmptyLang!15669) (regOne!31851 r!7292))))))

(assert (=> b!5679053 (=> (not res!2399792) (not e!3495443))))

(declare-fun b!5679054 () Bool)

(assert (=> b!5679054 (= e!3495439 call!431164)))

(declare-fun c!999308 () Bool)

(declare-fun call!431165 () Bool)

(declare-fun bm!431159 () Bool)

(assert (=> bm!431159 (= call!431165 (Exists!2769 (ite c!999308 lambda!305962 lambda!305963)))))

(assert (=> b!5679055 (= e!3495437 call!431165)))

(declare-fun b!5679056 () Bool)

(declare-fun c!999310 () Bool)

(assert (=> b!5679056 (= c!999310 ((_ is Union!15669) (regOne!31851 r!7292)))))

(declare-fun e!3495440 () Bool)

(assert (=> b!5679056 (= e!3495441 e!3495440)))

(assert (=> b!5679057 (= e!3495438 call!431165)))

(declare-fun b!5679058 () Bool)

(declare-fun c!999309 () Bool)

(assert (=> b!5679058 (= c!999309 ((_ is ElementMatch!15669) (regOne!31851 r!7292)))))

(assert (=> b!5679058 (= e!3495443 e!3495441)))

(declare-fun bm!431160 () Bool)

(assert (=> bm!431160 (= call!431164 (isEmpty!35036 s!2326))))

(declare-fun b!5679059 () Bool)

(assert (=> b!5679059 (= e!3495440 e!3495438)))

(assert (=> b!5679059 (= c!999308 ((_ is Star!15669) (regOne!31851 r!7292)))))

(declare-fun b!5679060 () Bool)

(declare-fun e!3495442 () Bool)

(assert (=> b!5679060 (= e!3495440 e!3495442)))

(declare-fun res!2399793 () Bool)

(assert (=> b!5679060 (= res!2399793 (matchRSpec!2772 (regOne!31851 (regOne!31851 r!7292)) s!2326))))

(assert (=> b!5679060 (=> res!2399793 e!3495442)))

(declare-fun b!5679061 () Bool)

(assert (=> b!5679061 (= e!3495442 (matchRSpec!2772 (regTwo!31851 (regOne!31851 r!7292)) s!2326))))

(assert (= (and d!1792512 c!999307) b!5679054))

(assert (= (and d!1792512 (not c!999307)) b!5679053))

(assert (= (and b!5679053 res!2399792) b!5679058))

(assert (= (and b!5679058 c!999309) b!5679051))

(assert (= (and b!5679058 (not c!999309)) b!5679056))

(assert (= (and b!5679056 c!999310) b!5679060))

(assert (= (and b!5679056 (not c!999310)) b!5679059))

(assert (= (and b!5679060 (not res!2399793)) b!5679061))

(assert (= (and b!5679059 c!999308) b!5679052))

(assert (= (and b!5679059 (not c!999308)) b!5679057))

(assert (= (and b!5679052 (not res!2399794)) b!5679055))

(assert (= (or b!5679055 b!5679057) bm!431159))

(assert (= (or b!5679054 b!5679052) bm!431160))

(declare-fun m!6639078 () Bool)

(assert (=> bm!431159 m!6639078))

(assert (=> bm!431160 m!6638158))

(declare-fun m!6639080 () Bool)

(assert (=> b!5679060 m!6639080))

(declare-fun m!6639082 () Bool)

(assert (=> b!5679061 m!6639082))

(assert (=> b!5678085 d!1792512))

(declare-fun b!5679078 () Bool)

(declare-fun e!3495454 () List!63308)

(assert (=> b!5679078 (= e!3495454 (_2!36069 (get!21771 lt!2269905)))))

(declare-fun b!5679080 () Bool)

(declare-fun res!2399797 () Bool)

(declare-fun e!3495453 () Bool)

(assert (=> b!5679080 (=> (not res!2399797) (not e!3495453))))

(declare-fun lt!2269954 () List!63308)

(assert (=> b!5679080 (= res!2399797 (= (size!39997 lt!2269954) (+ (size!39997 (_1!36069 (get!21771 lt!2269905))) (size!39997 (_2!36069 (get!21771 lt!2269905))))))))

(declare-fun d!1792520 () Bool)

(assert (=> d!1792520 e!3495453))

(declare-fun res!2399798 () Bool)

(assert (=> d!1792520 (=> (not res!2399798) (not e!3495453))))

(assert (=> d!1792520 (= res!2399798 (= (content!11446 lt!2269954) ((_ map or) (content!11446 (_1!36069 (get!21771 lt!2269905))) (content!11446 (_2!36069 (get!21771 lt!2269905))))))))

(assert (=> d!1792520 (= lt!2269954 e!3495454)))

(declare-fun c!999318 () Bool)

(assert (=> d!1792520 (= c!999318 ((_ is Nil!63184) (_1!36069 (get!21771 lt!2269905))))))

(assert (=> d!1792520 (= (++!13869 (_1!36069 (get!21771 lt!2269905)) (_2!36069 (get!21771 lt!2269905))) lt!2269954)))

(declare-fun b!5679079 () Bool)

(assert (=> b!5679079 (= e!3495454 (Cons!63184 (h!69632 (_1!36069 (get!21771 lt!2269905))) (++!13869 (t!376618 (_1!36069 (get!21771 lt!2269905))) (_2!36069 (get!21771 lt!2269905)))))))

(declare-fun b!5679081 () Bool)

(assert (=> b!5679081 (= e!3495453 (or (not (= (_2!36069 (get!21771 lt!2269905)) Nil!63184)) (= lt!2269954 (_1!36069 (get!21771 lt!2269905)))))))

(assert (= (and d!1792520 c!999318) b!5679078))

(assert (= (and d!1792520 (not c!999318)) b!5679079))

(assert (= (and d!1792520 res!2399798) b!5679080))

(assert (= (and b!5679080 res!2399797) b!5679081))

(declare-fun m!6639084 () Bool)

(assert (=> b!5679080 m!6639084))

(declare-fun m!6639086 () Bool)

(assert (=> b!5679080 m!6639086))

(declare-fun m!6639088 () Bool)

(assert (=> b!5679080 m!6639088))

(declare-fun m!6639090 () Bool)

(assert (=> d!1792520 m!6639090))

(declare-fun m!6639092 () Bool)

(assert (=> d!1792520 m!6639092))

(declare-fun m!6639094 () Bool)

(assert (=> d!1792520 m!6639094))

(declare-fun m!6639096 () Bool)

(assert (=> b!5679079 m!6639096))

(assert (=> b!5678214 d!1792520))

(assert (=> b!5678214 d!1792282))

(declare-fun d!1792526 () Bool)

(declare-fun res!2399810 () Bool)

(declare-fun e!3495468 () Bool)

(assert (=> d!1792526 (=> res!2399810 e!3495468)))

(assert (=> d!1792526 (= res!2399810 ((_ is Nil!63183) lt!2269890))))

(assert (=> d!1792526 (= (noDuplicate!1615 lt!2269890) e!3495468)))

(declare-fun b!5679099 () Bool)

(declare-fun e!3495469 () Bool)

(assert (=> b!5679099 (= e!3495468 e!3495469)))

(declare-fun res!2399811 () Bool)

(assert (=> b!5679099 (=> (not res!2399811) (not e!3495469))))

(declare-fun contains!19843 (List!63307 Context!10106) Bool)

(assert (=> b!5679099 (= res!2399811 (not (contains!19843 (t!376617 lt!2269890) (h!69631 lt!2269890))))))

(declare-fun b!5679100 () Bool)

(assert (=> b!5679100 (= e!3495469 (noDuplicate!1615 (t!376617 lt!2269890)))))

(assert (= (and d!1792526 (not res!2399810)) b!5679099))

(assert (= (and b!5679099 res!2399811) b!5679100))

(declare-fun m!6639120 () Bool)

(assert (=> b!5679099 m!6639120))

(declare-fun m!6639122 () Bool)

(assert (=> b!5679100 m!6639122))

(assert (=> d!1792120 d!1792526))

(declare-fun d!1792538 () Bool)

(declare-fun e!3495485 () Bool)

(assert (=> d!1792538 e!3495485))

(declare-fun res!2399826 () Bool)

(assert (=> d!1792538 (=> (not res!2399826) (not e!3495485))))

(declare-fun res!2399827 () List!63307)

(assert (=> d!1792538 (= res!2399826 (noDuplicate!1615 res!2399827))))

(declare-fun e!3495486 () Bool)

(assert (=> d!1792538 e!3495486))

(assert (=> d!1792538 (= (choose!42959 z!1189) res!2399827)))

(declare-fun b!5679124 () Bool)

(declare-fun e!3495487 () Bool)

(declare-fun tp!1574573 () Bool)

(assert (=> b!5679124 (= e!3495487 tp!1574573)))

(declare-fun b!5679123 () Bool)

(declare-fun tp!1574574 () Bool)

(assert (=> b!5679123 (= e!3495486 (and (inv!82419 (h!69631 res!2399827)) e!3495487 tp!1574574))))

(declare-fun b!5679125 () Bool)

(assert (=> b!5679125 (= e!3495485 (= (content!11444 res!2399827) z!1189))))

(assert (= b!5679123 b!5679124))

(assert (= (and d!1792538 ((_ is Cons!63183) res!2399827)) b!5679123))

(assert (= (and d!1792538 res!2399826) b!5679125))

(declare-fun m!6639136 () Bool)

(assert (=> d!1792538 m!6639136))

(declare-fun m!6639138 () Bool)

(assert (=> b!5679123 m!6639138))

(declare-fun m!6639140 () Bool)

(assert (=> b!5679125 m!6639140))

(assert (=> d!1792120 d!1792538))

(declare-fun d!1792552 () Bool)

(declare-fun c!999325 () Bool)

(assert (=> d!1792552 (= c!999325 (isEmpty!35036 (tail!11145 (t!376618 s!2326))))))

(declare-fun e!3495488 () Bool)

(assert (=> d!1792552 (= (matchZipper!1807 (derivationStepZipper!1754 lt!2269816 (head!12050 (t!376618 s!2326))) (tail!11145 (t!376618 s!2326))) e!3495488)))

(declare-fun b!5679126 () Bool)

(assert (=> b!5679126 (= e!3495488 (nullableZipper!1635 (derivationStepZipper!1754 lt!2269816 (head!12050 (t!376618 s!2326)))))))

(declare-fun b!5679127 () Bool)

(assert (=> b!5679127 (= e!3495488 (matchZipper!1807 (derivationStepZipper!1754 (derivationStepZipper!1754 lt!2269816 (head!12050 (t!376618 s!2326))) (head!12050 (tail!11145 (t!376618 s!2326)))) (tail!11145 (tail!11145 (t!376618 s!2326)))))))

(assert (= (and d!1792552 c!999325) b!5679126))

(assert (= (and d!1792552 (not c!999325)) b!5679127))

(assert (=> d!1792552 m!6637974))

(assert (=> d!1792552 m!6638380))

(assert (=> b!5679126 m!6637972))

(declare-fun m!6639142 () Bool)

(assert (=> b!5679126 m!6639142))

(assert (=> b!5679127 m!6637974))

(assert (=> b!5679127 m!6638384))

(assert (=> b!5679127 m!6637972))

(assert (=> b!5679127 m!6638384))

(declare-fun m!6639144 () Bool)

(assert (=> b!5679127 m!6639144))

(assert (=> b!5679127 m!6637974))

(assert (=> b!5679127 m!6638388))

(assert (=> b!5679127 m!6639144))

(assert (=> b!5679127 m!6638388))

(declare-fun m!6639148 () Bool)

(assert (=> b!5679127 m!6639148))

(assert (=> b!5677833 d!1792552))

(declare-fun bs!1323767 () Bool)

(declare-fun d!1792554 () Bool)

(assert (= bs!1323767 (and d!1792554 b!5677532)))

(declare-fun lambda!305967 () Int)

(assert (=> bs!1323767 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305967 lambda!305853))))

(declare-fun bs!1323768 () Bool)

(assert (= bs!1323768 (and d!1792554 d!1792126)))

(assert (=> bs!1323768 (= (= (head!12050 (t!376618 s!2326)) (h!69632 s!2326)) (= lambda!305967 lambda!305906))))

(declare-fun bs!1323769 () Bool)

(assert (= bs!1323769 (and d!1792554 d!1792238)))

(assert (=> bs!1323769 (= lambda!305967 lambda!305921)))

(declare-fun bs!1323770 () Bool)

(assert (= bs!1323770 (and d!1792554 d!1792486)))

(assert (=> bs!1323770 (= lambda!305967 lambda!305958)))

(assert (=> d!1792554 true))

(assert (=> d!1792554 (= (derivationStepZipper!1754 lt!2269816 (head!12050 (t!376618 s!2326))) (flatMap!1282 lt!2269816 lambda!305967))))

(declare-fun bs!1323771 () Bool)

(assert (= bs!1323771 d!1792554))

(declare-fun m!6639152 () Bool)

(assert (=> bs!1323771 m!6639152))

(assert (=> b!5677833 d!1792554))

(assert (=> b!5677833 d!1792240))

(assert (=> b!5677833 d!1792242))

(assert (=> d!1792082 d!1792294))

(declare-fun d!1792556 () Bool)

(assert (=> d!1792556 (= (nullable!5701 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))) (nullableFct!1781 (regOne!31850 (h!69630 (exprs!5553 (h!69631 zl!343))))))))

(declare-fun bs!1323772 () Bool)

(assert (= bs!1323772 d!1792556))

(declare-fun m!6639154 () Bool)

(assert (=> bs!1323772 m!6639154))

(assert (=> b!5677709 d!1792556))

(assert (=> b!5678131 d!1792342))

(assert (=> b!5678131 d!1792318))

(declare-fun b!5679144 () Bool)

(declare-fun e!3495495 () Bool)

(declare-fun tp!1574598 () Bool)

(declare-fun tp!1574597 () Bool)

(assert (=> b!5679144 (= e!3495495 (and tp!1574598 tp!1574597))))

(declare-fun b!5679143 () Bool)

(assert (=> b!5679143 (= e!3495495 tp_is_empty!40591)))

(assert (=> b!5678252 (= tp!1574512 e!3495495)))

(declare-fun b!5679145 () Bool)

(declare-fun tp!1574596 () Bool)

(assert (=> b!5679145 (= e!3495495 tp!1574596)))

(declare-fun b!5679146 () Bool)

(declare-fun tp!1574594 () Bool)

(declare-fun tp!1574595 () Bool)

(assert (=> b!5679146 (= e!3495495 (and tp!1574594 tp!1574595))))

(assert (= (and b!5678252 ((_ is ElementMatch!15669) (regOne!31850 (regOne!31851 r!7292)))) b!5679143))

(assert (= (and b!5678252 ((_ is Concat!24514) (regOne!31850 (regOne!31851 r!7292)))) b!5679144))

(assert (= (and b!5678252 ((_ is Star!15669) (regOne!31850 (regOne!31851 r!7292)))) b!5679145))

(assert (= (and b!5678252 ((_ is Union!15669) (regOne!31850 (regOne!31851 r!7292)))) b!5679146))

(declare-fun b!5679152 () Bool)

(declare-fun e!3495498 () Bool)

(declare-fun tp!1574609 () Bool)

(declare-fun tp!1574607 () Bool)

(assert (=> b!5679152 (= e!3495498 (and tp!1574609 tp!1574607))))

(declare-fun b!5679151 () Bool)

(assert (=> b!5679151 (= e!3495498 tp_is_empty!40591)))

(assert (=> b!5678252 (= tp!1574511 e!3495498)))

(declare-fun b!5679153 () Bool)

(declare-fun tp!1574606 () Bool)

(assert (=> b!5679153 (= e!3495498 tp!1574606)))

(declare-fun b!5679154 () Bool)

(declare-fun tp!1574604 () Bool)

(declare-fun tp!1574605 () Bool)

(assert (=> b!5679154 (= e!3495498 (and tp!1574604 tp!1574605))))

(assert (= (and b!5678252 ((_ is ElementMatch!15669) (regTwo!31850 (regOne!31851 r!7292)))) b!5679151))

(assert (= (and b!5678252 ((_ is Concat!24514) (regTwo!31850 (regOne!31851 r!7292)))) b!5679152))

(assert (= (and b!5678252 ((_ is Star!15669) (regTwo!31850 (regOne!31851 r!7292)))) b!5679153))

(assert (= (and b!5678252 ((_ is Union!15669) (regTwo!31850 (regOne!31851 r!7292)))) b!5679154))

(declare-fun b!5679164 () Bool)

(declare-fun e!3495500 () Bool)

(declare-fun tp!1574623 () Bool)

(declare-fun tp!1574622 () Bool)

(assert (=> b!5679164 (= e!3495500 (and tp!1574623 tp!1574622))))

(declare-fun b!5679163 () Bool)

(assert (=> b!5679163 (= e!3495500 tp_is_empty!40591)))

(assert (=> b!5678253 (= tp!1574510 e!3495500)))

(declare-fun b!5679165 () Bool)

(declare-fun tp!1574621 () Bool)

(assert (=> b!5679165 (= e!3495500 tp!1574621)))

(declare-fun b!5679166 () Bool)

(declare-fun tp!1574619 () Bool)

(declare-fun tp!1574620 () Bool)

(assert (=> b!5679166 (= e!3495500 (and tp!1574619 tp!1574620))))

(assert (= (and b!5678253 ((_ is ElementMatch!15669) (reg!15998 (regOne!31851 r!7292)))) b!5679163))

(assert (= (and b!5678253 ((_ is Concat!24514) (reg!15998 (regOne!31851 r!7292)))) b!5679164))

(assert (= (and b!5678253 ((_ is Star!15669) (reg!15998 (regOne!31851 r!7292)))) b!5679165))

(assert (= (and b!5678253 ((_ is Union!15669) (reg!15998 (regOne!31851 r!7292)))) b!5679166))

(declare-fun b!5679168 () Bool)

(declare-fun e!3495502 () Bool)

(declare-fun tp!1574626 () Bool)

(declare-fun tp!1574627 () Bool)

(assert (=> b!5679168 (= e!3495502 (and tp!1574626 tp!1574627))))

(assert (=> b!5678268 (= tp!1574529 e!3495502)))

(assert (= (and b!5678268 ((_ is Cons!63182) (exprs!5553 setElem!37973))) b!5679168))

(declare-fun condSetEmpty!37982 () Bool)

(assert (=> setNonEmpty!37973 (= condSetEmpty!37982 (= setRest!37973 ((as const (Array Context!10106 Bool)) false)))))

(declare-fun setRes!37982 () Bool)

(assert (=> setNonEmpty!37973 (= tp!1574528 setRes!37982)))

(declare-fun setIsEmpty!37982 () Bool)

(assert (=> setIsEmpty!37982 setRes!37982))

(declare-fun setElem!37982 () Context!10106)

(declare-fun e!3495504 () Bool)

(declare-fun setNonEmpty!37982 () Bool)

(declare-fun tp!1574633 () Bool)

(assert (=> setNonEmpty!37982 (= setRes!37982 (and tp!1574633 (inv!82419 setElem!37982) e!3495504))))

(declare-fun setRest!37982 () (InoxSet Context!10106))

(assert (=> setNonEmpty!37982 (= setRest!37973 ((_ map or) (store ((as const (Array Context!10106 Bool)) false) setElem!37982 true) setRest!37982))))

(declare-fun b!5679173 () Bool)

(declare-fun tp!1574634 () Bool)

(assert (=> b!5679173 (= e!3495504 tp!1574634)))

(assert (= (and setNonEmpty!37973 condSetEmpty!37982) setIsEmpty!37982))

(assert (= (and setNonEmpty!37973 (not condSetEmpty!37982)) setNonEmpty!37982))

(assert (= setNonEmpty!37982 b!5679173))

(declare-fun m!6639156 () Bool)

(assert (=> setNonEmpty!37982 m!6639156))

(declare-fun b!5679179 () Bool)

(declare-fun e!3495506 () Bool)

(declare-fun tp!1574644 () Bool)

(declare-fun tp!1574643 () Bool)

(assert (=> b!5679179 (= e!3495506 (and tp!1574644 tp!1574643))))

(declare-fun b!5679178 () Bool)

(assert (=> b!5679178 (= e!3495506 tp_is_empty!40591)))

(assert (=> b!5678254 (= tp!1574508 e!3495506)))

(declare-fun b!5679180 () Bool)

(declare-fun tp!1574642 () Bool)

(assert (=> b!5679180 (= e!3495506 tp!1574642)))

(declare-fun b!5679181 () Bool)

(declare-fun tp!1574640 () Bool)

(declare-fun tp!1574641 () Bool)

(assert (=> b!5679181 (= e!3495506 (and tp!1574640 tp!1574641))))

(assert (= (and b!5678254 ((_ is ElementMatch!15669) (regOne!31851 (regOne!31851 r!7292)))) b!5679178))

(assert (= (and b!5678254 ((_ is Concat!24514) (regOne!31851 (regOne!31851 r!7292)))) b!5679179))

(assert (= (and b!5678254 ((_ is Star!15669) (regOne!31851 (regOne!31851 r!7292)))) b!5679180))

(assert (= (and b!5678254 ((_ is Union!15669) (regOne!31851 (regOne!31851 r!7292)))) b!5679181))

(declare-fun b!5679187 () Bool)

(declare-fun e!3495508 () Bool)

(declare-fun tp!1574654 () Bool)

(declare-fun tp!1574653 () Bool)

(assert (=> b!5679187 (= e!3495508 (and tp!1574654 tp!1574653))))

(declare-fun b!5679186 () Bool)

(assert (=> b!5679186 (= e!3495508 tp_is_empty!40591)))

(assert (=> b!5678254 (= tp!1574509 e!3495508)))

(declare-fun b!5679188 () Bool)

(declare-fun tp!1574652 () Bool)

(assert (=> b!5679188 (= e!3495508 tp!1574652)))

(declare-fun b!5679189 () Bool)

(declare-fun tp!1574650 () Bool)

(declare-fun tp!1574651 () Bool)

(assert (=> b!5679189 (= e!3495508 (and tp!1574650 tp!1574651))))

(assert (= (and b!5678254 ((_ is ElementMatch!15669) (regTwo!31851 (regOne!31851 r!7292)))) b!5679186))

(assert (= (and b!5678254 ((_ is Concat!24514) (regTwo!31851 (regOne!31851 r!7292)))) b!5679187))

(assert (= (and b!5678254 ((_ is Star!15669) (regTwo!31851 (regOne!31851 r!7292)))) b!5679188))

(assert (= (and b!5678254 ((_ is Union!15669) (regTwo!31851 (regOne!31851 r!7292)))) b!5679189))

(declare-fun b!5679195 () Bool)

(declare-fun e!3495510 () Bool)

(declare-fun tp!1574664 () Bool)

(declare-fun tp!1574663 () Bool)

(assert (=> b!5679195 (= e!3495510 (and tp!1574664 tp!1574663))))

(declare-fun b!5679194 () Bool)

(assert (=> b!5679194 (= e!3495510 tp_is_empty!40591)))

(assert (=> b!5678275 (= tp!1574541 e!3495510)))

(declare-fun b!5679196 () Bool)

(declare-fun tp!1574662 () Bool)

(assert (=> b!5679196 (= e!3495510 tp!1574662)))

(declare-fun b!5679197 () Bool)

(declare-fun tp!1574660 () Bool)

(declare-fun tp!1574661 () Bool)

(assert (=> b!5679197 (= e!3495510 (and tp!1574660 tp!1574661))))

(assert (= (and b!5678275 ((_ is ElementMatch!15669) (regOne!31850 (regTwo!31850 r!7292)))) b!5679194))

(assert (= (and b!5678275 ((_ is Concat!24514) (regOne!31850 (regTwo!31850 r!7292)))) b!5679195))

(assert (= (and b!5678275 ((_ is Star!15669) (regOne!31850 (regTwo!31850 r!7292)))) b!5679196))

(assert (= (and b!5678275 ((_ is Union!15669) (regOne!31850 (regTwo!31850 r!7292)))) b!5679197))

(declare-fun b!5679203 () Bool)

(declare-fun e!3495512 () Bool)

(declare-fun tp!1574674 () Bool)

(declare-fun tp!1574673 () Bool)

(assert (=> b!5679203 (= e!3495512 (and tp!1574674 tp!1574673))))

(declare-fun b!5679202 () Bool)

(assert (=> b!5679202 (= e!3495512 tp_is_empty!40591)))

(assert (=> b!5678275 (= tp!1574540 e!3495512)))

(declare-fun b!5679204 () Bool)

(declare-fun tp!1574672 () Bool)

(assert (=> b!5679204 (= e!3495512 tp!1574672)))

(declare-fun b!5679205 () Bool)

(declare-fun tp!1574670 () Bool)

(declare-fun tp!1574671 () Bool)

(assert (=> b!5679205 (= e!3495512 (and tp!1574670 tp!1574671))))

(assert (= (and b!5678275 ((_ is ElementMatch!15669) (regTwo!31850 (regTwo!31850 r!7292)))) b!5679202))

(assert (= (and b!5678275 ((_ is Concat!24514) (regTwo!31850 (regTwo!31850 r!7292)))) b!5679203))

(assert (= (and b!5678275 ((_ is Star!15669) (regTwo!31850 (regTwo!31850 r!7292)))) b!5679204))

(assert (= (and b!5678275 ((_ is Union!15669) (regTwo!31850 (regTwo!31850 r!7292)))) b!5679205))

(declare-fun b!5679210 () Bool)

(declare-fun e!3495514 () Bool)

(declare-fun tp!1574680 () Bool)

(assert (=> b!5679210 (= e!3495514 (and tp_is_empty!40591 tp!1574680))))

(assert (=> b!5678240 (= tp!1574497 e!3495514)))

(assert (= (and b!5678240 ((_ is Cons!63184) (t!376618 (t!376618 s!2326)))) b!5679210))

(declare-fun b!5679216 () Bool)

(declare-fun e!3495516 () Bool)

(declare-fun tp!1574690 () Bool)

(declare-fun tp!1574689 () Bool)

(assert (=> b!5679216 (= e!3495516 (and tp!1574690 tp!1574689))))

(declare-fun b!5679215 () Bool)

(assert (=> b!5679215 (= e!3495516 tp_is_empty!40591)))

(assert (=> b!5678263 (= tp!1574522 e!3495516)))

(declare-fun b!5679217 () Bool)

(declare-fun tp!1574688 () Bool)

(assert (=> b!5679217 (= e!3495516 tp!1574688)))

(declare-fun b!5679218 () Bool)

(declare-fun tp!1574686 () Bool)

(declare-fun tp!1574687 () Bool)

(assert (=> b!5679218 (= e!3495516 (and tp!1574686 tp!1574687))))

(assert (= (and b!5678263 ((_ is ElementMatch!15669) (h!69630 (exprs!5553 (h!69631 zl!343))))) b!5679215))

(assert (= (and b!5678263 ((_ is Concat!24514) (h!69630 (exprs!5553 (h!69631 zl!343))))) b!5679216))

(assert (= (and b!5678263 ((_ is Star!15669) (h!69630 (exprs!5553 (h!69631 zl!343))))) b!5679217))

(assert (= (and b!5678263 ((_ is Union!15669) (h!69630 (exprs!5553 (h!69631 zl!343))))) b!5679218))

(declare-fun b!5679223 () Bool)

(declare-fun e!3495518 () Bool)

(declare-fun tp!1574696 () Bool)

(declare-fun tp!1574697 () Bool)

(assert (=> b!5679223 (= e!3495518 (and tp!1574696 tp!1574697))))

(assert (=> b!5678263 (= tp!1574523 e!3495518)))

(assert (= (and b!5678263 ((_ is Cons!63182) (t!376616 (exprs!5553 (h!69631 zl!343))))) b!5679223))

(declare-fun b!5679225 () Bool)

(declare-fun e!3495519 () Bool)

(declare-fun tp!1574702 () Bool)

(declare-fun tp!1574701 () Bool)

(assert (=> b!5679225 (= e!3495519 (and tp!1574702 tp!1574701))))

(declare-fun b!5679224 () Bool)

(assert (=> b!5679224 (= e!3495519 tp_is_empty!40591)))

(assert (=> b!5678269 (= tp!1574530 e!3495519)))

(declare-fun b!5679226 () Bool)

(declare-fun tp!1574700 () Bool)

(assert (=> b!5679226 (= e!3495519 tp!1574700)))

(declare-fun b!5679227 () Bool)

(declare-fun tp!1574698 () Bool)

(declare-fun tp!1574699 () Bool)

(assert (=> b!5679227 (= e!3495519 (and tp!1574698 tp!1574699))))

(assert (= (and b!5678269 ((_ is ElementMatch!15669) (h!69630 (exprs!5553 setElem!37967)))) b!5679224))

(assert (= (and b!5678269 ((_ is Concat!24514) (h!69630 (exprs!5553 setElem!37967)))) b!5679225))

(assert (= (and b!5678269 ((_ is Star!15669) (h!69630 (exprs!5553 setElem!37967)))) b!5679226))

(assert (= (and b!5678269 ((_ is Union!15669) (h!69630 (exprs!5553 setElem!37967)))) b!5679227))

(declare-fun b!5679232 () Bool)

(declare-fun e!3495521 () Bool)

(declare-fun tp!1574708 () Bool)

(declare-fun tp!1574709 () Bool)

(assert (=> b!5679232 (= e!3495521 (and tp!1574708 tp!1574709))))

(assert (=> b!5678269 (= tp!1574531 e!3495521)))

(assert (= (and b!5678269 ((_ is Cons!63182) (t!376616 (exprs!5553 setElem!37967)))) b!5679232))

(declare-fun b!5679238 () Bool)

(declare-fun e!3495523 () Bool)

(declare-fun tp!1574719 () Bool)

(declare-fun tp!1574718 () Bool)

(assert (=> b!5679238 (= e!3495523 (and tp!1574719 tp!1574718))))

(declare-fun b!5679237 () Bool)

(assert (=> b!5679237 (= e!3495523 tp_is_empty!40591)))

(assert (=> b!5678276 (= tp!1574539 e!3495523)))

(declare-fun b!5679239 () Bool)

(declare-fun tp!1574717 () Bool)

(assert (=> b!5679239 (= e!3495523 tp!1574717)))

(declare-fun b!5679240 () Bool)

(declare-fun tp!1574715 () Bool)

(declare-fun tp!1574716 () Bool)

(assert (=> b!5679240 (= e!3495523 (and tp!1574715 tp!1574716))))

(assert (= (and b!5678276 ((_ is ElementMatch!15669) (reg!15998 (regTwo!31850 r!7292)))) b!5679237))

(assert (= (and b!5678276 ((_ is Concat!24514) (reg!15998 (regTwo!31850 r!7292)))) b!5679238))

(assert (= (and b!5678276 ((_ is Star!15669) (reg!15998 (regTwo!31850 r!7292)))) b!5679239))

(assert (= (and b!5678276 ((_ is Union!15669) (reg!15998 (regTwo!31850 r!7292)))) b!5679240))

(declare-fun b!5679246 () Bool)

(declare-fun e!3495525 () Bool)

(declare-fun tp!1574729 () Bool)

(declare-fun tp!1574728 () Bool)

(assert (=> b!5679246 (= e!3495525 (and tp!1574729 tp!1574728))))

(declare-fun b!5679245 () Bool)

(assert (=> b!5679245 (= e!3495525 tp_is_empty!40591)))

(assert (=> b!5678277 (= tp!1574537 e!3495525)))

(declare-fun b!5679247 () Bool)

(declare-fun tp!1574727 () Bool)

(assert (=> b!5679247 (= e!3495525 tp!1574727)))

(declare-fun b!5679248 () Bool)

(declare-fun tp!1574725 () Bool)

(declare-fun tp!1574726 () Bool)

(assert (=> b!5679248 (= e!3495525 (and tp!1574725 tp!1574726))))

(assert (= (and b!5678277 ((_ is ElementMatch!15669) (regOne!31851 (regTwo!31850 r!7292)))) b!5679245))

(assert (= (and b!5678277 ((_ is Concat!24514) (regOne!31851 (regTwo!31850 r!7292)))) b!5679246))

(assert (= (and b!5678277 ((_ is Star!15669) (regOne!31851 (regTwo!31850 r!7292)))) b!5679247))

(assert (= (and b!5678277 ((_ is Union!15669) (regOne!31851 (regTwo!31850 r!7292)))) b!5679248))

(declare-fun b!5679254 () Bool)

(declare-fun e!3495527 () Bool)

(declare-fun tp!1574739 () Bool)

(declare-fun tp!1574738 () Bool)

(assert (=> b!5679254 (= e!3495527 (and tp!1574739 tp!1574738))))

(declare-fun b!5679253 () Bool)

(assert (=> b!5679253 (= e!3495527 tp_is_empty!40591)))

(assert (=> b!5678277 (= tp!1574538 e!3495527)))

(declare-fun b!5679255 () Bool)

(declare-fun tp!1574737 () Bool)

(assert (=> b!5679255 (= e!3495527 tp!1574737)))

(declare-fun b!5679256 () Bool)

(declare-fun tp!1574735 () Bool)

(declare-fun tp!1574736 () Bool)

(assert (=> b!5679256 (= e!3495527 (and tp!1574735 tp!1574736))))

(assert (= (and b!5678277 ((_ is ElementMatch!15669) (regTwo!31851 (regTwo!31850 r!7292)))) b!5679253))

(assert (= (and b!5678277 ((_ is Concat!24514) (regTwo!31851 (regTwo!31850 r!7292)))) b!5679254))

(assert (= (and b!5678277 ((_ is Star!15669) (regTwo!31851 (regTwo!31850 r!7292)))) b!5679255))

(assert (= (and b!5678277 ((_ is Union!15669) (regTwo!31851 (regTwo!31850 r!7292)))) b!5679256))

(declare-fun b!5679262 () Bool)

(declare-fun e!3495529 () Bool)

(declare-fun tp!1574749 () Bool)

(declare-fun tp!1574748 () Bool)

(assert (=> b!5679262 (= e!3495529 (and tp!1574749 tp!1574748))))

(declare-fun b!5679261 () Bool)

(assert (=> b!5679261 (= e!3495529 tp_is_empty!40591)))

(assert (=> b!5678257 (= tp!1574515 e!3495529)))

(declare-fun b!5679263 () Bool)

(declare-fun tp!1574747 () Bool)

(assert (=> b!5679263 (= e!3495529 tp!1574747)))

(declare-fun b!5679264 () Bool)

(declare-fun tp!1574745 () Bool)

(declare-fun tp!1574746 () Bool)

(assert (=> b!5679264 (= e!3495529 (and tp!1574745 tp!1574746))))

(assert (= (and b!5678257 ((_ is ElementMatch!15669) (reg!15998 (regTwo!31851 r!7292)))) b!5679261))

(assert (= (and b!5678257 ((_ is Concat!24514) (reg!15998 (regTwo!31851 r!7292)))) b!5679262))

(assert (= (and b!5678257 ((_ is Star!15669) (reg!15998 (regTwo!31851 r!7292)))) b!5679263))

(assert (= (and b!5678257 ((_ is Union!15669) (reg!15998 (regTwo!31851 r!7292)))) b!5679264))

(declare-fun b!5679270 () Bool)

(declare-fun e!3495531 () Bool)

(declare-fun tp!1574759 () Bool)

(declare-fun tp!1574758 () Bool)

(assert (=> b!5679270 (= e!3495531 (and tp!1574759 tp!1574758))))

(declare-fun b!5679269 () Bool)

(assert (=> b!5679269 (= e!3495531 tp_is_empty!40591)))

(assert (=> b!5678256 (= tp!1574517 e!3495531)))

(declare-fun b!5679271 () Bool)

(declare-fun tp!1574757 () Bool)

(assert (=> b!5679271 (= e!3495531 tp!1574757)))

(declare-fun b!5679272 () Bool)

(declare-fun tp!1574755 () Bool)

(declare-fun tp!1574756 () Bool)

(assert (=> b!5679272 (= e!3495531 (and tp!1574755 tp!1574756))))

(assert (= (and b!5678256 ((_ is ElementMatch!15669) (regOne!31850 (regTwo!31851 r!7292)))) b!5679269))

(assert (= (and b!5678256 ((_ is Concat!24514) (regOne!31850 (regTwo!31851 r!7292)))) b!5679270))

(assert (= (and b!5678256 ((_ is Star!15669) (regOne!31850 (regTwo!31851 r!7292)))) b!5679271))

(assert (= (and b!5678256 ((_ is Union!15669) (regOne!31850 (regTwo!31851 r!7292)))) b!5679272))

(declare-fun b!5679278 () Bool)

(declare-fun e!3495533 () Bool)

(declare-fun tp!1574769 () Bool)

(declare-fun tp!1574768 () Bool)

(assert (=> b!5679278 (= e!3495533 (and tp!1574769 tp!1574768))))

(declare-fun b!5679277 () Bool)

(assert (=> b!5679277 (= e!3495533 tp_is_empty!40591)))

(assert (=> b!5678256 (= tp!1574516 e!3495533)))

(declare-fun b!5679279 () Bool)

(declare-fun tp!1574767 () Bool)

(assert (=> b!5679279 (= e!3495533 tp!1574767)))

(declare-fun b!5679280 () Bool)

(declare-fun tp!1574765 () Bool)

(declare-fun tp!1574766 () Bool)

(assert (=> b!5679280 (= e!3495533 (and tp!1574765 tp!1574766))))

(assert (= (and b!5678256 ((_ is ElementMatch!15669) (regTwo!31850 (regTwo!31851 r!7292)))) b!5679277))

(assert (= (and b!5678256 ((_ is Concat!24514) (regTwo!31850 (regTwo!31851 r!7292)))) b!5679278))

(assert (= (and b!5678256 ((_ is Star!15669) (regTwo!31850 (regTwo!31851 r!7292)))) b!5679279))

(assert (= (and b!5678256 ((_ is Union!15669) (regTwo!31850 (regTwo!31851 r!7292)))) b!5679280))

(declare-fun b!5679286 () Bool)

(declare-fun e!3495536 () Bool)

(declare-fun tp!1574775 () Bool)

(assert (=> b!5679286 (= e!3495536 tp!1574775)))

(declare-fun e!3495535 () Bool)

(declare-fun b!5679285 () Bool)

(declare-fun tp!1574776 () Bool)

(assert (=> b!5679285 (= e!3495535 (and (inv!82419 (h!69631 (t!376617 (t!376617 zl!343)))) e!3495536 tp!1574776))))

(assert (=> b!5678234 (= tp!1574494 e!3495535)))

(assert (= b!5679285 b!5679286))

(assert (= (and b!5678234 ((_ is Cons!63183) (t!376617 (t!376617 zl!343)))) b!5679285))

(declare-fun m!6639158 () Bool)

(assert (=> b!5679285 m!6639158))

(declare-fun b!5679292 () Bool)

(declare-fun e!3495538 () Bool)

(declare-fun tp!1574786 () Bool)

(declare-fun tp!1574785 () Bool)

(assert (=> b!5679292 (= e!3495538 (and tp!1574786 tp!1574785))))

(declare-fun b!5679291 () Bool)

(assert (=> b!5679291 (= e!3495538 tp_is_empty!40591)))

(assert (=> b!5678258 (= tp!1574513 e!3495538)))

(declare-fun b!5679293 () Bool)

(declare-fun tp!1574784 () Bool)

(assert (=> b!5679293 (= e!3495538 tp!1574784)))

(declare-fun b!5679294 () Bool)

(declare-fun tp!1574782 () Bool)

(declare-fun tp!1574783 () Bool)

(assert (=> b!5679294 (= e!3495538 (and tp!1574782 tp!1574783))))

(assert (= (and b!5678258 ((_ is ElementMatch!15669) (regOne!31851 (regTwo!31851 r!7292)))) b!5679291))

(assert (= (and b!5678258 ((_ is Concat!24514) (regOne!31851 (regTwo!31851 r!7292)))) b!5679292))

(assert (= (and b!5678258 ((_ is Star!15669) (regOne!31851 (regTwo!31851 r!7292)))) b!5679293))

(assert (= (and b!5678258 ((_ is Union!15669) (regOne!31851 (regTwo!31851 r!7292)))) b!5679294))

(declare-fun b!5679300 () Bool)

(declare-fun e!3495540 () Bool)

(declare-fun tp!1574796 () Bool)

(declare-fun tp!1574795 () Bool)

(assert (=> b!5679300 (= e!3495540 (and tp!1574796 tp!1574795))))

(declare-fun b!5679299 () Bool)

(assert (=> b!5679299 (= e!3495540 tp_is_empty!40591)))

(assert (=> b!5678258 (= tp!1574514 e!3495540)))

(declare-fun b!5679301 () Bool)

(declare-fun tp!1574794 () Bool)

(assert (=> b!5679301 (= e!3495540 tp!1574794)))

(declare-fun b!5679302 () Bool)

(declare-fun tp!1574792 () Bool)

(declare-fun tp!1574793 () Bool)

(assert (=> b!5679302 (= e!3495540 (and tp!1574792 tp!1574793))))

(assert (= (and b!5678258 ((_ is ElementMatch!15669) (regTwo!31851 (regTwo!31851 r!7292)))) b!5679299))

(assert (= (and b!5678258 ((_ is Concat!24514) (regTwo!31851 (regTwo!31851 r!7292)))) b!5679300))

(assert (= (and b!5678258 ((_ is Star!15669) (regTwo!31851 (regTwo!31851 r!7292)))) b!5679301))

(assert (= (and b!5678258 ((_ is Union!15669) (regTwo!31851 (regTwo!31851 r!7292)))) b!5679302))

(declare-fun b!5679307 () Bool)

(declare-fun e!3495542 () Bool)

(declare-fun tp!1574802 () Bool)

(declare-fun tp!1574803 () Bool)

(assert (=> b!5679307 (= e!3495542 (and tp!1574802 tp!1574803))))

(assert (=> b!5678235 (= tp!1574493 e!3495542)))

(assert (= (and b!5678235 ((_ is Cons!63182) (exprs!5553 (h!69631 (t!376617 zl!343))))) b!5679307))

(declare-fun b!5679313 () Bool)

(declare-fun e!3495544 () Bool)

(declare-fun tp!1574813 () Bool)

(declare-fun tp!1574812 () Bool)

(assert (=> b!5679313 (= e!3495544 (and tp!1574813 tp!1574812))))

(declare-fun b!5679312 () Bool)

(assert (=> b!5679312 (= e!3495544 tp_is_empty!40591)))

(assert (=> b!5678280 (= tp!1574544 e!3495544)))

(declare-fun b!5679314 () Bool)

(declare-fun tp!1574811 () Bool)

(assert (=> b!5679314 (= e!3495544 tp!1574811)))

(declare-fun b!5679315 () Bool)

(declare-fun tp!1574809 () Bool)

(declare-fun tp!1574810 () Bool)

(assert (=> b!5679315 (= e!3495544 (and tp!1574809 tp!1574810))))

(assert (= (and b!5678280 ((_ is ElementMatch!15669) (reg!15998 (reg!15998 r!7292)))) b!5679312))

(assert (= (and b!5678280 ((_ is Concat!24514) (reg!15998 (reg!15998 r!7292)))) b!5679313))

(assert (= (and b!5678280 ((_ is Star!15669) (reg!15998 (reg!15998 r!7292)))) b!5679314))

(assert (= (and b!5678280 ((_ is Union!15669) (reg!15998 (reg!15998 r!7292)))) b!5679315))

(declare-fun b!5679318 () Bool)

(declare-fun e!3495546 () Bool)

(declare-fun tp!1574819 () Bool)

(declare-fun tp!1574818 () Bool)

(assert (=> b!5679318 (= e!3495546 (and tp!1574819 tp!1574818))))

(declare-fun b!5679317 () Bool)

(assert (=> b!5679317 (= e!3495546 tp_is_empty!40591)))

(assert (=> b!5678271 (= tp!1574536 e!3495546)))

(declare-fun b!5679319 () Bool)

(declare-fun tp!1574817 () Bool)

(assert (=> b!5679319 (= e!3495546 tp!1574817)))

(declare-fun b!5679320 () Bool)

(declare-fun tp!1574815 () Bool)

(declare-fun tp!1574816 () Bool)

(assert (=> b!5679320 (= e!3495546 (and tp!1574815 tp!1574816))))

(assert (= (and b!5678271 ((_ is ElementMatch!15669) (regOne!31850 (regOne!31850 r!7292)))) b!5679317))

(assert (= (and b!5678271 ((_ is Concat!24514) (regOne!31850 (regOne!31850 r!7292)))) b!5679318))

(assert (= (and b!5678271 ((_ is Star!15669) (regOne!31850 (regOne!31850 r!7292)))) b!5679319))

(assert (= (and b!5678271 ((_ is Union!15669) (regOne!31850 (regOne!31850 r!7292)))) b!5679320))

(declare-fun b!5679323 () Bool)

(declare-fun e!3495548 () Bool)

(declare-fun tp!1574826 () Bool)

(declare-fun tp!1574825 () Bool)

(assert (=> b!5679323 (= e!3495548 (and tp!1574826 tp!1574825))))

(declare-fun b!5679322 () Bool)

(assert (=> b!5679322 (= e!3495548 tp_is_empty!40591)))

(assert (=> b!5678271 (= tp!1574535 e!3495548)))

(declare-fun b!5679324 () Bool)

(declare-fun tp!1574824 () Bool)

(assert (=> b!5679324 (= e!3495548 tp!1574824)))

(declare-fun b!5679325 () Bool)

(declare-fun tp!1574822 () Bool)

(declare-fun tp!1574823 () Bool)

(assert (=> b!5679325 (= e!3495548 (and tp!1574822 tp!1574823))))

(assert (= (and b!5678271 ((_ is ElementMatch!15669) (regTwo!31850 (regOne!31850 r!7292)))) b!5679322))

(assert (= (and b!5678271 ((_ is Concat!24514) (regTwo!31850 (regOne!31850 r!7292)))) b!5679323))

(assert (= (and b!5678271 ((_ is Star!15669) (regTwo!31850 (regOne!31850 r!7292)))) b!5679324))

(assert (= (and b!5678271 ((_ is Union!15669) (regTwo!31850 (regOne!31850 r!7292)))) b!5679325))

(declare-fun b!5679332 () Bool)

(declare-fun e!3495551 () Bool)

(declare-fun tp!1574838 () Bool)

(declare-fun tp!1574837 () Bool)

(assert (=> b!5679332 (= e!3495551 (and tp!1574838 tp!1574837))))

(declare-fun b!5679331 () Bool)

(assert (=> b!5679331 (= e!3495551 tp_is_empty!40591)))

(assert (=> b!5678279 (= tp!1574546 e!3495551)))

(declare-fun b!5679333 () Bool)

(declare-fun tp!1574835 () Bool)

(assert (=> b!5679333 (= e!3495551 tp!1574835)))

(declare-fun b!5679334 () Bool)

(declare-fun tp!1574832 () Bool)

(declare-fun tp!1574833 () Bool)

(assert (=> b!5679334 (= e!3495551 (and tp!1574832 tp!1574833))))

(assert (= (and b!5678279 ((_ is ElementMatch!15669) (regOne!31850 (reg!15998 r!7292)))) b!5679331))

(assert (= (and b!5678279 ((_ is Concat!24514) (regOne!31850 (reg!15998 r!7292)))) b!5679332))

(assert (= (and b!5678279 ((_ is Star!15669) (regOne!31850 (reg!15998 r!7292)))) b!5679333))

(assert (= (and b!5678279 ((_ is Union!15669) (regOne!31850 (reg!15998 r!7292)))) b!5679334))

(declare-fun b!5679337 () Bool)

(declare-fun e!3495553 () Bool)

(declare-fun tp!1574845 () Bool)

(declare-fun tp!1574844 () Bool)

(assert (=> b!5679337 (= e!3495553 (and tp!1574845 tp!1574844))))

(declare-fun b!5679336 () Bool)

(assert (=> b!5679336 (= e!3495553 tp_is_empty!40591)))

(assert (=> b!5678279 (= tp!1574545 e!3495553)))

(declare-fun b!5679338 () Bool)

(declare-fun tp!1574843 () Bool)

(assert (=> b!5679338 (= e!3495553 tp!1574843)))

(declare-fun b!5679339 () Bool)

(declare-fun tp!1574841 () Bool)

(declare-fun tp!1574842 () Bool)

(assert (=> b!5679339 (= e!3495553 (and tp!1574841 tp!1574842))))

(assert (= (and b!5678279 ((_ is ElementMatch!15669) (regTwo!31850 (reg!15998 r!7292)))) b!5679336))

(assert (= (and b!5678279 ((_ is Concat!24514) (regTwo!31850 (reg!15998 r!7292)))) b!5679337))

(assert (= (and b!5678279 ((_ is Star!15669) (regTwo!31850 (reg!15998 r!7292)))) b!5679338))

(assert (= (and b!5678279 ((_ is Union!15669) (regTwo!31850 (reg!15998 r!7292)))) b!5679339))

(declare-fun b!5679341 () Bool)

(declare-fun e!3495554 () Bool)

(declare-fun tp!1574850 () Bool)

(declare-fun tp!1574849 () Bool)

(assert (=> b!5679341 (= e!3495554 (and tp!1574850 tp!1574849))))

(declare-fun b!5679340 () Bool)

(assert (=> b!5679340 (= e!3495554 tp_is_empty!40591)))

(assert (=> b!5678273 (= tp!1574532 e!3495554)))

(declare-fun b!5679342 () Bool)

(declare-fun tp!1574848 () Bool)

(assert (=> b!5679342 (= e!3495554 tp!1574848)))

(declare-fun b!5679343 () Bool)

(declare-fun tp!1574846 () Bool)

(declare-fun tp!1574847 () Bool)

(assert (=> b!5679343 (= e!3495554 (and tp!1574846 tp!1574847))))

(assert (= (and b!5678273 ((_ is ElementMatch!15669) (regOne!31851 (regOne!31850 r!7292)))) b!5679340))

(assert (= (and b!5678273 ((_ is Concat!24514) (regOne!31851 (regOne!31850 r!7292)))) b!5679341))

(assert (= (and b!5678273 ((_ is Star!15669) (regOne!31851 (regOne!31850 r!7292)))) b!5679342))

(assert (= (and b!5678273 ((_ is Union!15669) (regOne!31851 (regOne!31850 r!7292)))) b!5679343))

(declare-fun b!5679345 () Bool)

(declare-fun e!3495555 () Bool)

(declare-fun tp!1574855 () Bool)

(declare-fun tp!1574854 () Bool)

(assert (=> b!5679345 (= e!3495555 (and tp!1574855 tp!1574854))))

(declare-fun b!5679344 () Bool)

(assert (=> b!5679344 (= e!3495555 tp_is_empty!40591)))

(assert (=> b!5678273 (= tp!1574533 e!3495555)))

(declare-fun b!5679346 () Bool)

(declare-fun tp!1574853 () Bool)

(assert (=> b!5679346 (= e!3495555 tp!1574853)))

(declare-fun b!5679347 () Bool)

(declare-fun tp!1574851 () Bool)

(declare-fun tp!1574852 () Bool)

(assert (=> b!5679347 (= e!3495555 (and tp!1574851 tp!1574852))))

(assert (= (and b!5678273 ((_ is ElementMatch!15669) (regTwo!31851 (regOne!31850 r!7292)))) b!5679344))

(assert (= (and b!5678273 ((_ is Concat!24514) (regTwo!31851 (regOne!31850 r!7292)))) b!5679345))

(assert (= (and b!5678273 ((_ is Star!15669) (regTwo!31851 (regOne!31850 r!7292)))) b!5679346))

(assert (= (and b!5678273 ((_ is Union!15669) (regTwo!31851 (regOne!31850 r!7292)))) b!5679347))

(declare-fun b!5679349 () Bool)

(declare-fun e!3495556 () Bool)

(declare-fun tp!1574860 () Bool)

(declare-fun tp!1574859 () Bool)

(assert (=> b!5679349 (= e!3495556 (and tp!1574860 tp!1574859))))

(declare-fun b!5679348 () Bool)

(assert (=> b!5679348 (= e!3495556 tp_is_empty!40591)))

(assert (=> b!5678281 (= tp!1574542 e!3495556)))

(declare-fun b!5679350 () Bool)

(declare-fun tp!1574858 () Bool)

(assert (=> b!5679350 (= e!3495556 tp!1574858)))

(declare-fun b!5679351 () Bool)

(declare-fun tp!1574856 () Bool)

(declare-fun tp!1574857 () Bool)

(assert (=> b!5679351 (= e!3495556 (and tp!1574856 tp!1574857))))

(assert (= (and b!5678281 ((_ is ElementMatch!15669) (regOne!31851 (reg!15998 r!7292)))) b!5679348))

(assert (= (and b!5678281 ((_ is Concat!24514) (regOne!31851 (reg!15998 r!7292)))) b!5679349))

(assert (= (and b!5678281 ((_ is Star!15669) (regOne!31851 (reg!15998 r!7292)))) b!5679350))

(assert (= (and b!5678281 ((_ is Union!15669) (regOne!31851 (reg!15998 r!7292)))) b!5679351))

(declare-fun b!5679353 () Bool)

(declare-fun e!3495557 () Bool)

(declare-fun tp!1574865 () Bool)

(declare-fun tp!1574864 () Bool)

(assert (=> b!5679353 (= e!3495557 (and tp!1574865 tp!1574864))))

(declare-fun b!5679352 () Bool)

(assert (=> b!5679352 (= e!3495557 tp_is_empty!40591)))

(assert (=> b!5678281 (= tp!1574543 e!3495557)))

(declare-fun b!5679354 () Bool)

(declare-fun tp!1574863 () Bool)

(assert (=> b!5679354 (= e!3495557 tp!1574863)))

(declare-fun b!5679355 () Bool)

(declare-fun tp!1574861 () Bool)

(declare-fun tp!1574862 () Bool)

(assert (=> b!5679355 (= e!3495557 (and tp!1574861 tp!1574862))))

(assert (= (and b!5678281 ((_ is ElementMatch!15669) (regTwo!31851 (reg!15998 r!7292)))) b!5679352))

(assert (= (and b!5678281 ((_ is Concat!24514) (regTwo!31851 (reg!15998 r!7292)))) b!5679353))

(assert (= (and b!5678281 ((_ is Star!15669) (regTwo!31851 (reg!15998 r!7292)))) b!5679354))

(assert (= (and b!5678281 ((_ is Union!15669) (regTwo!31851 (reg!15998 r!7292)))) b!5679355))

(declare-fun b!5679357 () Bool)

(declare-fun e!3495558 () Bool)

(declare-fun tp!1574870 () Bool)

(declare-fun tp!1574869 () Bool)

(assert (=> b!5679357 (= e!3495558 (and tp!1574870 tp!1574869))))

(declare-fun b!5679356 () Bool)

(assert (=> b!5679356 (= e!3495558 tp_is_empty!40591)))

(assert (=> b!5678272 (= tp!1574534 e!3495558)))

(declare-fun b!5679358 () Bool)

(declare-fun tp!1574868 () Bool)

(assert (=> b!5679358 (= e!3495558 tp!1574868)))

(declare-fun b!5679359 () Bool)

(declare-fun tp!1574866 () Bool)

(declare-fun tp!1574867 () Bool)

(assert (=> b!5679359 (= e!3495558 (and tp!1574866 tp!1574867))))

(assert (= (and b!5678272 ((_ is ElementMatch!15669) (reg!15998 (regOne!31850 r!7292)))) b!5679356))

(assert (= (and b!5678272 ((_ is Concat!24514) (reg!15998 (regOne!31850 r!7292)))) b!5679357))

(assert (= (and b!5678272 ((_ is Star!15669) (reg!15998 (regOne!31850 r!7292)))) b!5679358))

(assert (= (and b!5678272 ((_ is Union!15669) (reg!15998 (regOne!31850 r!7292)))) b!5679359))

(declare-fun b_lambda!214753 () Bool)

(assert (= b_lambda!214715 (or b!5677532 b_lambda!214753)))

(assert (=> d!1792262 d!1792146))

(declare-fun b_lambda!214755 () Bool)

(assert (= b_lambda!214731 (or d!1792046 b_lambda!214755)))

(declare-fun bs!1323778 () Bool)

(declare-fun d!1792568 () Bool)

(assert (= bs!1323778 (and d!1792568 d!1792046)))

(assert (=> bs!1323778 (= (dynLambda!24728 lambda!305874 (h!69630 (exprs!5553 setElem!37967))) (validRegex!7405 (h!69630 (exprs!5553 setElem!37967))))))

(declare-fun m!6639170 () Bool)

(assert (=> bs!1323778 m!6639170))

(assert (=> b!5679038 d!1792568))

(declare-fun b_lambda!214757 () Bool)

(assert (= b_lambda!214717 (or d!1792124 b_lambda!214757)))

(declare-fun bs!1323779 () Bool)

(declare-fun d!1792570 () Bool)

(assert (= bs!1323779 (and d!1792570 d!1792124)))

(assert (=> bs!1323779 (= (dynLambda!24728 lambda!305903 (h!69630 lt!2269896)) (validRegex!7405 (h!69630 lt!2269896)))))

(declare-fun m!6639172 () Bool)

(assert (=> bs!1323779 m!6639172))

(assert (=> b!5678512 d!1792570))

(declare-fun b_lambda!214759 () Bool)

(assert (= b_lambda!214713 (or b!5677532 b_lambda!214759)))

(assert (=> d!1792212 d!1792148))

(declare-fun b_lambda!214761 () Bool)

(assert (= b_lambda!214727 (or d!1792092 b_lambda!214761)))

(declare-fun bs!1323780 () Bool)

(declare-fun d!1792572 () Bool)

(assert (= bs!1323780 (and d!1792572 d!1792092)))

(assert (=> bs!1323780 (= (dynLambda!24728 lambda!305881 (h!69630 (exprs!5553 (h!69631 zl!343)))) (validRegex!7405 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(declare-fun m!6639174 () Bool)

(assert (=> bs!1323780 m!6639174))

(assert (=> b!5679014 d!1792572))

(declare-fun b_lambda!214763 () Bool)

(assert (= b_lambda!214733 (or d!1792122 b_lambda!214763)))

(declare-fun bs!1323781 () Bool)

(declare-fun d!1792574 () Bool)

(assert (= bs!1323781 (and d!1792574 d!1792122)))

(assert (=> bs!1323781 (= (dynLambda!24728 lambda!305900 (h!69630 (unfocusZipperList!1097 zl!343))) (validRegex!7405 (h!69630 (unfocusZipperList!1097 zl!343))))))

(declare-fun m!6639176 () Bool)

(assert (=> bs!1323781 m!6639176))

(assert (=> b!5679049 d!1792574))

(declare-fun b_lambda!214765 () Bool)

(assert (= b_lambda!214729 (or d!1792086 b_lambda!214765)))

(declare-fun bs!1323782 () Bool)

(declare-fun d!1792576 () Bool)

(assert (= bs!1323782 (and d!1792576 d!1792086)))

(assert (=> bs!1323782 (= (dynLambda!24728 lambda!305880 (h!69630 (exprs!5553 (h!69631 zl!343)))) (validRegex!7405 (h!69630 (exprs!5553 (h!69631 zl!343)))))))

(assert (=> bs!1323782 m!6639174))

(assert (=> b!5679025 d!1792576))

(check-sat (not b!5678666) (not b_lambda!214761) (not b!5679164) (not b!5679354) (not bm!431160) (not d!1792288) (not b!5679218) (not b!5679350) (not b!5678707) (not b!5678431) (not b!5678588) (not b_lambda!214759) (not b!5678406) (not d!1792314) (not b!5678482) (not b!5678417) (not b!5679099) (not b!5678380) (not b!5679197) (not b!5679060) (not bm!431004) (not bm!431104) (not bm!431017) (not b!5679026) (not bm!431056) (not bm!431059) (not b!5678945) (not b!5678427) (not b!5678705) (not b!5678617) (not b!5679188) (not b!5679293) (not bm!431049) (not b!5678904) (not b!5678975) (not b!5678430) (not b!5678922) (not bm!431080) (not b!5679272) (not bm!431079) (not b!5678615) (not b!5679342) (not b!5679196) (not b!5678699) (not b!5678703) (not b!5679346) (not b!5679079) (not bm!431014) (not b!5679210) (not b!5678537) (not b!5679145) (not b!5679232) (not bm!431074) (not b!5679203) (not b!5679320) (not b!5678702) (not b!5679039) (not b!5678577) (not b!5679080) (not b!5679254) (not b!5678483) (not bm!431029) (not bm!431101) (not b!5679338) (not d!1792276) (not b!5679216) (not b!5679292) (not b!5679225) (not d!1792236) (not b!5678398) (not bm!431007) (not b_lambda!214763) (not d!1792556) (not b!5678433) (not b!5678513) (not bm!431047) (not b!5678980) (not b!5679325) (not b!5678485) (not b_lambda!214709) (not b!5679166) (not b!5679313) (not b!5678738) (not bm!431073) (not b!5679332) (not b!5679349) (not b!5679217) (not b!5678573) (not d!1792266) (not b!5679123) (not b!5678514) (not b!5679125) (not b!5679358) (not bm!431131) (not d!1792520) (not d!1792330) (not d!1792440) (not b!5678587) (not b!5679345) (not d!1792474) (not d!1792248) (not b!5679301) (not b!5678489) (not d!1792308) (not d!1792414) (not b!5678580) (not d!1792312) (not d!1792232) (not b!5679307) (not b!5679146) (not bm!431105) (not d!1792418) (not b!5679264) (not b_lambda!214765) (not b!5679061) (not b!5678700) (not b!5678429) (not d!1792462) (not d!1792306) (not b!5679337) (not bm!431054) (not d!1792362) (not b!5679347) (not b!5679144) (not b!5678982) (not b!5678901) (not b!5679324) (not bm!431144) (not b!5678721) (not b!5678753) (not bm!431159) (not b!5679315) (not b!5679187) (not d!1792212) (not b!5679240) (not b!5678720) (not bs!1323780) (not b!5679343) (not b!5679318) (not b!5679050) (not bm!431097) (not b!5678968) (not bm!431158) (not d!1792388) (not b!5679153) (not b!5679263) (not d!1792484) (not bm!431002) (not b!5678788) (not b!5678399) (not bm!431048) (not bm!431011) (not d!1792538) (not bm!431009) (not bm!431055) (not b!5678996) (not bs!1323781) (not d!1792210) (not b!5678944) (not b!5678486) (not b!5678591) (not b!5678711) (not bm!431030) (not b!5679302) (not b!5678613) (not b!5679270) (not b!5678787) (not b!5678681) (not bs!1323779) (not b!5678967) (not b!5679100) (not b!5679353) (not b!5678536) (not b!5678610) (not bm!431151) (not b!5678766) (not b!5679300) (not d!1792340) (not b!5679246) (not bm!431016) (not b!5678948) (not bm!431010) (not bm!430998) (not b!5679314) (not b!5678592) (not bm!431028) (not b!5679323) tp_is_empty!40591 (not d!1792238) (not b!5678601) (not b!5679127) (not b!5679359) (not setNonEmpty!37979) (not bm!431084) (not b!5678781) (not bm!431038) (not b_lambda!214753) (not b_lambda!214757) (not b!5678487) (not d!1792464) (not b_lambda!214707) (not b!5678574) (not b!5679255) (not d!1792552) (not b!5679262) (not b!5678970) (not b!5679341) (not bm!431153) (not b!5678369) (not d!1792234) (not bs!1323778) (not b!5679042) (not b!5679181) (not d!1792260) (not b!5679280) (not b!5678903) (not b!5678712) (not bm!431098) (not b!5678614) (not d!1792378) (not b!5679015) (not b!5679285) (not b!5679126) (not b!5679334) (not bm!431075) (not b!5679286) (not d!1792256) (not d!1792420) (not b!5679351) (not bm!431085) (not b!5678908) (not bm!431096) (not b!5679319) (not b!5679271) (not d!1792438) (not d!1792466) (not b!5679204) (not b_lambda!214755) (not bm!431106) (not b!5678896) (not bm!431129) (not b!5679018) (not d!1792304) (not d!1792554) (not b!5679124) (not b!5678974) (not bm!430996) (not b!5679205) (not bm!431142) (not bm!431003) (not b!5679239) (not b!5679152) (not d!1792504) (not bs!1323782) (not d!1792486) (not b!5678578) (not b!5679278) (not b!5678905) (not b!5679179) (not bm!431058) (not b!5679154) (not bm!431081) (not b!5679294) (not d!1792272) (not b!5678897) (not b!5679173) (not bm!431156) (not b!5679355) (not b!5678973) (not b!5678396) (not b!5678426) (not b!5679279) (not b!5679168) (not b!5678792) (not b!5678706) (not bm!431130) (not bm!431039) (not b!5678551) (not b!5679339) (not b!5679195) (not b!5679248) (not b!5679223) (not d!1792446) (not b!5679238) (not d!1792252) (not d!1792334) (not bm!431102) (not b!5678949) (not d!1792262) (not bm!431069) (not b!5679226) (not b!5678907) (not b!5679256) (not d!1792326) (not bm!430997) (not b!5678652) (not b!5679333) (not b!5679357) (not b!5679227) (not b!5678594) (not b!5679180) (not b!5679165) (not b!5678611) (not b!5679247) (not setNonEmpty!37982) (not b!5678395) (not b!5679189) (not b!5678590) (not b!5678576) (not setNonEmpty!37981) (not bm!431071))
(check-sat)
