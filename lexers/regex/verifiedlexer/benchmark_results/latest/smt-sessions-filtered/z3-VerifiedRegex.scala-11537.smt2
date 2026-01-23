; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634278 () Bool)

(assert start!634278)

(declare-fun b!6418776 () Bool)

(assert (=> b!6418776 true))

(assert (=> b!6418776 true))

(declare-fun lambda!354550 () Int)

(declare-fun lambda!354549 () Int)

(assert (=> b!6418776 (not (= lambda!354550 lambda!354549))))

(assert (=> b!6418776 true))

(assert (=> b!6418776 true))

(declare-fun b!6418769 () Bool)

(assert (=> b!6418769 true))

(declare-fun bs!1614013 () Bool)

(declare-fun b!6418765 () Bool)

(assert (= bs!1614013 (and b!6418765 b!6418776)))

(declare-datatypes ((C!32912 0))(
  ( (C!32913 (val!26158 Int)) )
))
(declare-datatypes ((Regex!16321 0))(
  ( (ElementMatch!16321 (c!1172498 C!32912)) (Concat!25166 (regOne!33154 Regex!16321) (regTwo!33154 Regex!16321)) (EmptyExpr!16321) (Star!16321 (reg!16650 Regex!16321)) (EmptyLang!16321) (Union!16321 (regOne!33155 Regex!16321) (regTwo!33155 Regex!16321)) )
))
(declare-fun lt!2376449 () Regex!16321)

(declare-fun lambda!354552 () Int)

(declare-fun r!7292 () Regex!16321)

(assert (=> bs!1614013 (= (= lt!2376449 (regOne!33154 r!7292)) (= lambda!354552 lambda!354549))))

(assert (=> bs!1614013 (not (= lambda!354552 lambda!354550))))

(assert (=> b!6418765 true))

(assert (=> b!6418765 true))

(assert (=> b!6418765 true))

(declare-fun lambda!354553 () Int)

(assert (=> bs!1614013 (not (= lambda!354553 lambda!354549))))

(assert (=> bs!1614013 (= (= lt!2376449 (regOne!33154 r!7292)) (= lambda!354553 lambda!354550))))

(assert (=> b!6418765 (not (= lambda!354553 lambda!354552))))

(assert (=> b!6418765 true))

(assert (=> b!6418765 true))

(assert (=> b!6418765 true))

(declare-fun b!6418745 () Bool)

(declare-fun res!2638029 () Bool)

(declare-fun e!3894642 () Bool)

(assert (=> b!6418745 (=> res!2638029 e!3894642)))

(declare-datatypes ((List!65262 0))(
  ( (Nil!65138) (Cons!65138 (h!71586 C!32912) (t!378876 List!65262)) )
))
(declare-datatypes ((tuple2!66600 0))(
  ( (tuple2!66601 (_1!36603 List!65262) (_2!36603 List!65262)) )
))
(declare-fun lt!2376459 () tuple2!66600)

(declare-fun matchR!8504 (Regex!16321 List!65262) Bool)

(assert (=> b!6418745 (= res!2638029 (not (matchR!8504 lt!2376449 (_1!36603 lt!2376459))))))

(declare-fun b!6418746 () Bool)

(declare-fun e!3894651 () Bool)

(declare-fun tp_is_empty!41895 () Bool)

(declare-fun tp!1782566 () Bool)

(assert (=> b!6418746 (= e!3894651 (and tp_is_empty!41895 tp!1782566))))

(declare-fun b!6418747 () Bool)

(declare-fun res!2638032 () Bool)

(declare-fun e!3894650 () Bool)

(assert (=> b!6418747 (=> res!2638032 e!3894650)))

(declare-datatypes ((List!65263 0))(
  ( (Nil!65139) (Cons!65139 (h!71587 Regex!16321) (t!378877 List!65263)) )
))
(declare-datatypes ((Context!11410 0))(
  ( (Context!11411 (exprs!6205 List!65263)) )
))
(declare-datatypes ((List!65264 0))(
  ( (Nil!65140) (Cons!65140 (h!71588 Context!11410) (t!378878 List!65264)) )
))
(declare-fun zl!343 () List!65264)

(declare-fun isEmpty!37292 (List!65263) Bool)

(assert (=> b!6418747 (= res!2638032 (isEmpty!37292 (t!378877 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun b!6418748 () Bool)

(declare-fun e!3894638 () Bool)

(declare-fun tp!1782557 () Bool)

(assert (=> b!6418748 (= e!3894638 tp!1782557)))

(declare-fun setIsEmpty!43810 () Bool)

(declare-fun setRes!43810 () Bool)

(assert (=> setIsEmpty!43810 setRes!43810))

(declare-fun b!6418749 () Bool)

(declare-fun res!2638016 () Bool)

(declare-fun e!3894648 () Bool)

(assert (=> b!6418749 (=> res!2638016 e!3894648)))

(get-info :version)

(assert (=> b!6418749 (= res!2638016 (not ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343)))))))

(declare-fun b!6418750 () Bool)

(declare-fun e!3894637 () Bool)

(assert (=> b!6418750 (= e!3894637 tp_is_empty!41895)))

(declare-fun b!6418751 () Bool)

(declare-fun res!2638018 () Bool)

(assert (=> b!6418751 (=> res!2638018 e!3894642)))

(declare-fun isEmpty!37293 (List!65262) Bool)

(assert (=> b!6418751 (= res!2638018 (isEmpty!37293 (_1!36603 lt!2376459)))))

(declare-fun b!6418752 () Bool)

(declare-fun res!2638011 () Bool)

(assert (=> b!6418752 (=> res!2638011 e!3894648)))

(declare-fun generalisedUnion!2165 (List!65263) Regex!16321)

(declare-fun unfocusZipperList!1742 (List!65264) List!65263)

(assert (=> b!6418752 (= res!2638011 (not (= r!7292 (generalisedUnion!2165 (unfocusZipperList!1742 zl!343)))))))

(declare-fun b!6418753 () Bool)

(declare-fun res!2638015 () Bool)

(declare-fun e!3894646 () Bool)

(assert (=> b!6418753 (=> res!2638015 e!3894646)))

(declare-fun s!2326 () List!65262)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2376462 () (InoxSet Context!11410))

(declare-fun lt!2376464 () (InoxSet Context!11410))

(declare-fun matchZipper!2333 ((InoxSet Context!11410) List!65262) Bool)

(assert (=> b!6418753 (= res!2638015 (not (= (matchZipper!2333 lt!2376464 s!2326) (matchZipper!2333 lt!2376462 (t!378876 s!2326)))))))

(declare-fun b!6418754 () Bool)

(declare-fun res!2638027 () Bool)

(assert (=> b!6418754 (=> res!2638027 e!3894646)))

(declare-fun lt!2376481 () Regex!16321)

(assert (=> b!6418754 (= res!2638027 (not (= lt!2376481 r!7292)))))

(declare-fun b!6418755 () Bool)

(declare-fun e!3894641 () Bool)

(declare-fun lt!2376458 () Bool)

(declare-fun lt!2376446 () Bool)

(assert (=> b!6418755 (= e!3894641 (or (not lt!2376458) lt!2376446))))

(declare-fun b!6418756 () Bool)

(declare-fun res!2638031 () Bool)

(declare-fun e!3894644 () Bool)

(assert (=> b!6418756 (=> res!2638031 e!3894644)))

(assert (=> b!6418756 (= res!2638031 (or ((_ is Concat!25166) (regOne!33154 r!7292)) (not ((_ is Star!16321) (regOne!33154 r!7292)))))))

(declare-fun b!6418757 () Bool)

(declare-fun res!2638035 () Bool)

(assert (=> b!6418757 (=> res!2638035 e!3894648)))

(assert (=> b!6418757 (= res!2638035 (or ((_ is EmptyExpr!16321) r!7292) ((_ is EmptyLang!16321) r!7292) ((_ is ElementMatch!16321) r!7292) ((_ is Union!16321) r!7292) (not ((_ is Concat!25166) r!7292))))))

(declare-fun b!6418758 () Bool)

(declare-fun e!3894636 () Bool)

(declare-fun e!3894633 () Bool)

(assert (=> b!6418758 (= e!3894636 e!3894633)))

(declare-fun res!2638021 () Bool)

(assert (=> b!6418758 (=> res!2638021 e!3894633)))

(declare-fun lt!2376471 () Context!11410)

(declare-fun lt!2376463 () Regex!16321)

(declare-fun unfocusZipper!2063 (List!65264) Regex!16321)

(assert (=> b!6418758 (= res!2638021 (not (= (unfocusZipper!2063 (Cons!65140 lt!2376471 Nil!65140)) lt!2376463)))))

(declare-fun lt!2376477 () Regex!16321)

(assert (=> b!6418758 (= lt!2376463 (Concat!25166 (reg!16650 (regOne!33154 r!7292)) lt!2376477))))

(declare-fun res!2638024 () Bool)

(declare-fun e!3894653 () Bool)

(assert (=> start!634278 (=> (not res!2638024) (not e!3894653))))

(declare-fun validRegex!8057 (Regex!16321) Bool)

(assert (=> start!634278 (= res!2638024 (validRegex!8057 r!7292))))

(assert (=> start!634278 e!3894653))

(assert (=> start!634278 e!3894637))

(declare-fun condSetEmpty!43810 () Bool)

(declare-fun z!1189 () (InoxSet Context!11410))

(assert (=> start!634278 (= condSetEmpty!43810 (= z!1189 ((as const (Array Context!11410 Bool)) false)))))

(assert (=> start!634278 setRes!43810))

(declare-fun e!3894649 () Bool)

(assert (=> start!634278 e!3894649))

(assert (=> start!634278 e!3894651))

(declare-fun b!6418759 () Bool)

(declare-fun tp!1782565 () Bool)

(assert (=> b!6418759 (= e!3894637 tp!1782565)))

(declare-fun b!6418760 () Bool)

(declare-fun e!3894639 () Bool)

(declare-fun e!3894635 () Bool)

(assert (=> b!6418760 (= e!3894639 e!3894635)))

(declare-fun res!2638026 () Bool)

(assert (=> b!6418760 (=> res!2638026 e!3894635)))

(assert (=> b!6418760 (= res!2638026 (not lt!2376458))))

(assert (=> b!6418760 e!3894641))

(declare-fun res!2638033 () Bool)

(assert (=> b!6418760 (=> (not res!2638033) (not e!3894641))))

(declare-fun matchRSpec!3422 (Regex!16321 List!65262) Bool)

(assert (=> b!6418760 (= res!2638033 (= (matchR!8504 lt!2376463 s!2326) (matchRSpec!3422 lt!2376463 s!2326)))))

(declare-datatypes ((Unit!158615 0))(
  ( (Unit!158616) )
))
(declare-fun lt!2376467 () Unit!158615)

(declare-fun mainMatchTheorem!3422 (Regex!16321 List!65262) Unit!158615)

(assert (=> b!6418760 (= lt!2376467 (mainMatchTheorem!3422 lt!2376463 s!2326))))

(declare-fun b!6418761 () Bool)

(declare-fun res!2638017 () Bool)

(assert (=> b!6418761 (=> res!2638017 e!3894639)))

(declare-fun lt!2376461 () Context!11410)

(assert (=> b!6418761 (= res!2638017 (not (= (unfocusZipper!2063 (Cons!65140 lt!2376461 Nil!65140)) lt!2376477)))))

(declare-fun b!6418762 () Bool)

(declare-fun tp!1782563 () Bool)

(declare-fun tp!1782562 () Bool)

(assert (=> b!6418762 (= e!3894637 (and tp!1782563 tp!1782562))))

(declare-fun b!6418763 () Bool)

(declare-fun e!3894640 () Bool)

(assert (=> b!6418763 (= e!3894640 e!3894646)))

(declare-fun res!2638023 () Bool)

(assert (=> b!6418763 (=> res!2638023 e!3894646)))

(declare-fun lt!2376480 () (InoxSet Context!11410))

(assert (=> b!6418763 (= res!2638023 (not (= lt!2376462 lt!2376480)))))

(declare-fun lambda!354551 () Int)

(declare-fun flatMap!1826 ((InoxSet Context!11410) Int) (InoxSet Context!11410))

(declare-fun derivationStepZipperUp!1495 (Context!11410 C!32912) (InoxSet Context!11410))

(assert (=> b!6418763 (= (flatMap!1826 lt!2376464 lambda!354551) (derivationStepZipperUp!1495 lt!2376471 (h!71586 s!2326)))))

(declare-fun lt!2376468 () Unit!158615)

(declare-fun lemmaFlatMapOnSingletonSet!1352 ((InoxSet Context!11410) Context!11410 Int) Unit!158615)

(assert (=> b!6418763 (= lt!2376468 (lemmaFlatMapOnSingletonSet!1352 lt!2376464 lt!2376471 lambda!354551))))

(declare-fun lt!2376456 () (InoxSet Context!11410))

(assert (=> b!6418763 (= lt!2376456 (derivationStepZipperUp!1495 lt!2376471 (h!71586 s!2326)))))

(declare-fun derivationStepZipper!2287 ((InoxSet Context!11410) C!32912) (InoxSet Context!11410))

(assert (=> b!6418763 (= lt!2376462 (derivationStepZipper!2287 lt!2376464 (h!71586 s!2326)))))

(assert (=> b!6418763 (= lt!2376464 (store ((as const (Array Context!11410 Bool)) false) lt!2376471 true))))

(declare-fun lt!2376470 () List!65263)

(assert (=> b!6418763 (= lt!2376471 (Context!11411 (Cons!65139 (reg!16650 (regOne!33154 r!7292)) lt!2376470)))))

(declare-fun b!6418764 () Bool)

(declare-fun res!2638034 () Bool)

(assert (=> b!6418764 (=> res!2638034 e!3894644)))

(declare-fun e!3894643 () Bool)

(assert (=> b!6418764 (= res!2638034 e!3894643)))

(declare-fun res!2638019 () Bool)

(assert (=> b!6418764 (=> (not res!2638019) (not e!3894643))))

(assert (=> b!6418764 (= res!2638019 ((_ is Concat!25166) (regOne!33154 r!7292)))))

(assert (=> b!6418765 (= e!3894635 e!3894642)))

(declare-fun res!2638012 () Bool)

(assert (=> b!6418765 (=> res!2638012 e!3894642)))

(declare-fun ++!14389 (List!65262 List!65262) List!65262)

(assert (=> b!6418765 (= res!2638012 (not (= (++!14389 (_1!36603 lt!2376459) (_2!36603 lt!2376459)) s!2326)))))

(declare-datatypes ((Option!16212 0))(
  ( (None!16211) (Some!16211 (v!52384 tuple2!66600)) )
))
(declare-fun lt!2376476 () Option!16212)

(declare-fun get!22565 (Option!16212) tuple2!66600)

(assert (=> b!6418765 (= lt!2376459 (get!22565 lt!2376476))))

(declare-fun Exists!3391 (Int) Bool)

(assert (=> b!6418765 (= (Exists!3391 lambda!354552) (Exists!3391 lambda!354553))))

(declare-fun lt!2376473 () Unit!158615)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1928 (Regex!16321 Regex!16321 List!65262) Unit!158615)

(assert (=> b!6418765 (= lt!2376473 (lemmaExistCutMatchRandMatchRSpecEquivalent!1928 lt!2376449 (regTwo!33154 r!7292) s!2326))))

(declare-fun isDefined!12915 (Option!16212) Bool)

(assert (=> b!6418765 (= (isDefined!12915 lt!2376476) (Exists!3391 lambda!354552))))

(declare-fun findConcatSeparation!2626 (Regex!16321 Regex!16321 List!65262 List!65262 List!65262) Option!16212)

(assert (=> b!6418765 (= lt!2376476 (findConcatSeparation!2626 lt!2376449 (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326))))

(declare-fun lt!2376460 () Unit!158615)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2390 (Regex!16321 Regex!16321 List!65262) Unit!158615)

(assert (=> b!6418765 (= lt!2376460 (lemmaFindConcatSeparationEquivalentToExists!2390 lt!2376449 (regTwo!33154 r!7292) s!2326))))

(declare-fun b!6418766 () Bool)

(declare-fun e!3894645 () Bool)

(declare-fun lt!2376474 () (InoxSet Context!11410))

(assert (=> b!6418766 (= e!3894645 (matchZipper!2333 lt!2376474 (t!378876 s!2326)))))

(declare-fun b!6418767 () Bool)

(declare-fun e!3894647 () Bool)

(assert (=> b!6418767 (= e!3894647 (validRegex!8057 lt!2376449))))

(declare-fun b!6418768 () Bool)

(declare-fun res!2638010 () Bool)

(assert (=> b!6418768 (=> res!2638010 e!3894648)))

(declare-fun isEmpty!37294 (List!65264) Bool)

(assert (=> b!6418768 (= res!2638010 (not (isEmpty!37294 (t!378878 zl!343))))))

(assert (=> b!6418769 (= e!3894650 e!3894644)))

(declare-fun res!2638008 () Bool)

(assert (=> b!6418769 (=> res!2638008 e!3894644)))

(assert (=> b!6418769 (= res!2638008 (or (and ((_ is ElementMatch!16321) (regOne!33154 r!7292)) (= (c!1172498 (regOne!33154 r!7292)) (h!71586 s!2326))) ((_ is Union!16321) (regOne!33154 r!7292))))))

(declare-fun lt!2376479 () Unit!158615)

(declare-fun e!3894652 () Unit!158615)

(assert (=> b!6418769 (= lt!2376479 e!3894652)))

(declare-fun c!1172497 () Bool)

(declare-fun nullable!6314 (Regex!16321) Bool)

(assert (=> b!6418769 (= c!1172497 (nullable!6314 (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(assert (=> b!6418769 (= (flatMap!1826 z!1189 lambda!354551) (derivationStepZipperUp!1495 (h!71588 zl!343) (h!71586 s!2326)))))

(declare-fun lt!2376451 () Unit!158615)

(assert (=> b!6418769 (= lt!2376451 (lemmaFlatMapOnSingletonSet!1352 z!1189 (h!71588 zl!343) lambda!354551))))

(declare-fun lt!2376475 () Context!11410)

(assert (=> b!6418769 (= lt!2376474 (derivationStepZipperUp!1495 lt!2376475 (h!71586 s!2326)))))

(declare-fun lt!2376455 () (InoxSet Context!11410))

(declare-fun derivationStepZipperDown!1569 (Regex!16321 Context!11410 C!32912) (InoxSet Context!11410))

(assert (=> b!6418769 (= lt!2376455 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 (h!71588 zl!343))) lt!2376475 (h!71586 s!2326)))))

(assert (=> b!6418769 (= lt!2376475 (Context!11411 (t!378877 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun lt!2376482 () (InoxSet Context!11410))

(assert (=> b!6418769 (= lt!2376482 (derivationStepZipperUp!1495 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343))))) (h!71586 s!2326)))))

(declare-fun b!6418770 () Bool)

(assert (=> b!6418770 (= e!3894633 e!3894639)))

(declare-fun res!2638037 () Bool)

(assert (=> b!6418770 (=> res!2638037 e!3894639)))

(declare-fun lt!2376478 () Context!11410)

(assert (=> b!6418770 (= res!2638037 (not (= (unfocusZipper!2063 (Cons!65140 lt!2376478 Nil!65140)) (reg!16650 (regOne!33154 r!7292)))))))

(declare-fun lt!2376472 () (InoxSet Context!11410))

(assert (=> b!6418770 (= (flatMap!1826 lt!2376472 lambda!354551) (derivationStepZipperUp!1495 lt!2376461 (h!71586 s!2326)))))

(declare-fun lt!2376448 () Unit!158615)

(assert (=> b!6418770 (= lt!2376448 (lemmaFlatMapOnSingletonSet!1352 lt!2376472 lt!2376461 lambda!354551))))

(declare-fun lt!2376457 () (InoxSet Context!11410))

(assert (=> b!6418770 (= (flatMap!1826 lt!2376457 lambda!354551) (derivationStepZipperUp!1495 lt!2376478 (h!71586 s!2326)))))

(declare-fun lt!2376447 () Unit!158615)

(assert (=> b!6418770 (= lt!2376447 (lemmaFlatMapOnSingletonSet!1352 lt!2376457 lt!2376478 lambda!354551))))

(declare-fun lt!2376465 () (InoxSet Context!11410))

(assert (=> b!6418770 (= lt!2376465 (derivationStepZipperUp!1495 lt!2376461 (h!71586 s!2326)))))

(declare-fun lt!2376445 () (InoxSet Context!11410))

(assert (=> b!6418770 (= lt!2376445 (derivationStepZipperUp!1495 lt!2376478 (h!71586 s!2326)))))

(assert (=> b!6418770 (= lt!2376472 (store ((as const (Array Context!11410 Bool)) false) lt!2376461 true))))

(assert (=> b!6418770 (= lt!2376457 (store ((as const (Array Context!11410 Bool)) false) lt!2376478 true))))

(assert (=> b!6418770 (= lt!2376478 (Context!11411 (Cons!65139 (reg!16650 (regOne!33154 r!7292)) Nil!65139)))))

(declare-fun b!6418771 () Bool)

(assert (=> b!6418771 (= e!3894642 e!3894647)))

(declare-fun res!2638028 () Bool)

(assert (=> b!6418771 (=> res!2638028 e!3894647)))

(assert (=> b!6418771 (= res!2638028 (not (validRegex!8057 (reg!16650 (regOne!33154 r!7292)))))))

(assert (=> b!6418771 (matchRSpec!3422 lt!2376449 (_1!36603 lt!2376459))))

(declare-fun lt!2376450 () Unit!158615)

(assert (=> b!6418771 (= lt!2376450 (mainMatchTheorem!3422 lt!2376449 (_1!36603 lt!2376459)))))

(declare-fun b!6418772 () Bool)

(assert (=> b!6418772 (= e!3894643 (nullable!6314 (regOne!33154 (regOne!33154 r!7292))))))

(declare-fun b!6418773 () Bool)

(declare-fun Unit!158617 () Unit!158615)

(assert (=> b!6418773 (= e!3894652 Unit!158617)))

(declare-fun b!6418774 () Bool)

(assert (=> b!6418774 (= e!3894644 e!3894640)))

(declare-fun res!2638014 () Bool)

(assert (=> b!6418774 (=> res!2638014 e!3894640)))

(assert (=> b!6418774 (= res!2638014 (not (= lt!2376455 lt!2376480)))))

(assert (=> b!6418774 (= lt!2376480 (derivationStepZipperDown!1569 (reg!16650 (regOne!33154 r!7292)) lt!2376461 (h!71586 s!2326)))))

(assert (=> b!6418774 (= lt!2376461 (Context!11411 lt!2376470))))

(assert (=> b!6418774 (= lt!2376470 (Cons!65139 lt!2376449 (t!378877 (exprs!6205 (h!71588 zl!343)))))))

(assert (=> b!6418774 (= lt!2376449 (Star!16321 (reg!16650 (regOne!33154 r!7292))))))

(declare-fun b!6418775 () Bool)

(declare-fun res!2638025 () Bool)

(assert (=> b!6418775 (=> res!2638025 e!3894642)))

(assert (=> b!6418775 (= res!2638025 (not (matchR!8504 (regTwo!33154 r!7292) (_2!36603 lt!2376459))))))

(assert (=> b!6418776 (= e!3894648 e!3894650)))

(declare-fun res!2638013 () Bool)

(assert (=> b!6418776 (=> res!2638013 e!3894650)))

(declare-fun lt!2376454 () Bool)

(assert (=> b!6418776 (= res!2638013 (or (not (= lt!2376458 lt!2376454)) ((_ is Nil!65138) s!2326)))))

(assert (=> b!6418776 (= (Exists!3391 lambda!354549) (Exists!3391 lambda!354550))))

(declare-fun lt!2376469 () Unit!158615)

(assert (=> b!6418776 (= lt!2376469 (lemmaExistCutMatchRandMatchRSpecEquivalent!1928 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326))))

(assert (=> b!6418776 (= lt!2376454 (Exists!3391 lambda!354549))))

(assert (=> b!6418776 (= lt!2376454 (isDefined!12915 (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326)))))

(declare-fun lt!2376466 () Unit!158615)

(assert (=> b!6418776 (= lt!2376466 (lemmaFindConcatSeparationEquivalentToExists!2390 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326))))

(declare-fun b!6418777 () Bool)

(declare-fun e!3894634 () Bool)

(declare-fun tp!1782564 () Bool)

(assert (=> b!6418777 (= e!3894634 tp!1782564)))

(declare-fun b!6418778 () Bool)

(declare-fun res!2638030 () Bool)

(assert (=> b!6418778 (=> (not res!2638030) (not e!3894653))))

(declare-fun toList!10105 ((InoxSet Context!11410)) List!65264)

(assert (=> b!6418778 (= res!2638030 (= (toList!10105 z!1189) zl!343))))

(declare-fun b!6418779 () Bool)

(assert (=> b!6418779 (= e!3894646 e!3894636)))

(declare-fun res!2638020 () Bool)

(assert (=> b!6418779 (=> res!2638020 e!3894636)))

(assert (=> b!6418779 (= res!2638020 (not (= r!7292 lt!2376477)))))

(assert (=> b!6418779 (= lt!2376477 (Concat!25166 lt!2376449 (regTwo!33154 r!7292)))))

(declare-fun b!6418780 () Bool)

(declare-fun Unit!158618 () Unit!158615)

(assert (=> b!6418780 (= e!3894652 Unit!158618)))

(declare-fun lt!2376453 () Unit!158615)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1152 ((InoxSet Context!11410) (InoxSet Context!11410) List!65262) Unit!158615)

(assert (=> b!6418780 (= lt!2376453 (lemmaZipperConcatMatchesSameAsBothZippers!1152 lt!2376455 lt!2376474 (t!378876 s!2326)))))

(declare-fun res!2638038 () Bool)

(assert (=> b!6418780 (= res!2638038 (matchZipper!2333 lt!2376455 (t!378876 s!2326)))))

(assert (=> b!6418780 (=> res!2638038 e!3894645)))

(assert (=> b!6418780 (= (matchZipper!2333 ((_ map or) lt!2376455 lt!2376474) (t!378876 s!2326)) e!3894645)))

(declare-fun b!6418781 () Bool)

(declare-fun e!3894654 () Bool)

(assert (=> b!6418781 (= e!3894653 e!3894654)))

(declare-fun res!2638036 () Bool)

(assert (=> b!6418781 (=> (not res!2638036) (not e!3894654))))

(assert (=> b!6418781 (= res!2638036 (= r!7292 lt!2376481))))

(assert (=> b!6418781 (= lt!2376481 (unfocusZipper!2063 zl!343))))

(declare-fun b!6418782 () Bool)

(assert (=> b!6418782 (= e!3894654 (not e!3894648))))

(declare-fun res!2638022 () Bool)

(assert (=> b!6418782 (=> res!2638022 e!3894648)))

(assert (=> b!6418782 (= res!2638022 (not ((_ is Cons!65140) zl!343)))))

(assert (=> b!6418782 (= lt!2376458 lt!2376446)))

(assert (=> b!6418782 (= lt!2376446 (matchRSpec!3422 r!7292 s!2326))))

(assert (=> b!6418782 (= lt!2376458 (matchR!8504 r!7292 s!2326))))

(declare-fun lt!2376452 () Unit!158615)

(assert (=> b!6418782 (= lt!2376452 (mainMatchTheorem!3422 r!7292 s!2326))))

(declare-fun tp!1782560 () Bool)

(declare-fun setNonEmpty!43810 () Bool)

(declare-fun setElem!43810 () Context!11410)

(declare-fun inv!84049 (Context!11410) Bool)

(assert (=> setNonEmpty!43810 (= setRes!43810 (and tp!1782560 (inv!84049 setElem!43810) e!3894638))))

(declare-fun setRest!43810 () (InoxSet Context!11410))

(assert (=> setNonEmpty!43810 (= z!1189 ((_ map or) (store ((as const (Array Context!11410 Bool)) false) setElem!43810 true) setRest!43810))))

(declare-fun b!6418783 () Bool)

(declare-fun tp!1782559 () Bool)

(assert (=> b!6418783 (= e!3894649 (and (inv!84049 (h!71588 zl!343)) e!3894634 tp!1782559))))

(declare-fun b!6418784 () Bool)

(declare-fun tp!1782558 () Bool)

(declare-fun tp!1782561 () Bool)

(assert (=> b!6418784 (= e!3894637 (and tp!1782558 tp!1782561))))

(declare-fun b!6418785 () Bool)

(declare-fun res!2638009 () Bool)

(assert (=> b!6418785 (=> res!2638009 e!3894648)))

(declare-fun generalisedConcat!1918 (List!65263) Regex!16321)

(assert (=> b!6418785 (= res!2638009 (not (= r!7292 (generalisedConcat!1918 (exprs!6205 (h!71588 zl!343))))))))

(assert (= (and start!634278 res!2638024) b!6418778))

(assert (= (and b!6418778 res!2638030) b!6418781))

(assert (= (and b!6418781 res!2638036) b!6418782))

(assert (= (and b!6418782 (not res!2638022)) b!6418768))

(assert (= (and b!6418768 (not res!2638010)) b!6418785))

(assert (= (and b!6418785 (not res!2638009)) b!6418749))

(assert (= (and b!6418749 (not res!2638016)) b!6418752))

(assert (= (and b!6418752 (not res!2638011)) b!6418757))

(assert (= (and b!6418757 (not res!2638035)) b!6418776))

(assert (= (and b!6418776 (not res!2638013)) b!6418747))

(assert (= (and b!6418747 (not res!2638032)) b!6418769))

(assert (= (and b!6418769 c!1172497) b!6418780))

(assert (= (and b!6418769 (not c!1172497)) b!6418773))

(assert (= (and b!6418780 (not res!2638038)) b!6418766))

(assert (= (and b!6418769 (not res!2638008)) b!6418764))

(assert (= (and b!6418764 res!2638019) b!6418772))

(assert (= (and b!6418764 (not res!2638034)) b!6418756))

(assert (= (and b!6418756 (not res!2638031)) b!6418774))

(assert (= (and b!6418774 (not res!2638014)) b!6418763))

(assert (= (and b!6418763 (not res!2638023)) b!6418753))

(assert (= (and b!6418753 (not res!2638015)) b!6418754))

(assert (= (and b!6418754 (not res!2638027)) b!6418779))

(assert (= (and b!6418779 (not res!2638020)) b!6418758))

(assert (= (and b!6418758 (not res!2638021)) b!6418770))

(assert (= (and b!6418770 (not res!2638037)) b!6418761))

(assert (= (and b!6418761 (not res!2638017)) b!6418760))

(assert (= (and b!6418760 res!2638033) b!6418755))

(assert (= (and b!6418760 (not res!2638026)) b!6418765))

(assert (= (and b!6418765 (not res!2638012)) b!6418745))

(assert (= (and b!6418745 (not res!2638029)) b!6418775))

(assert (= (and b!6418775 (not res!2638025)) b!6418751))

(assert (= (and b!6418751 (not res!2638018)) b!6418771))

(assert (= (and b!6418771 (not res!2638028)) b!6418767))

(assert (= (and start!634278 ((_ is ElementMatch!16321) r!7292)) b!6418750))

(assert (= (and start!634278 ((_ is Concat!25166) r!7292)) b!6418762))

(assert (= (and start!634278 ((_ is Star!16321) r!7292)) b!6418759))

(assert (= (and start!634278 ((_ is Union!16321) r!7292)) b!6418784))

(assert (= (and start!634278 condSetEmpty!43810) setIsEmpty!43810))

(assert (= (and start!634278 (not condSetEmpty!43810)) setNonEmpty!43810))

(assert (= setNonEmpty!43810 b!6418748))

(assert (= b!6418783 b!6418777))

(assert (= (and start!634278 ((_ is Cons!65140) zl!343)) b!6418783))

(assert (= (and start!634278 ((_ is Cons!65138) s!2326)) b!6418746))

(declare-fun m!7213652 () Bool)

(assert (=> b!6418770 m!7213652))

(declare-fun m!7213654 () Bool)

(assert (=> b!6418770 m!7213654))

(declare-fun m!7213656 () Bool)

(assert (=> b!6418770 m!7213656))

(declare-fun m!7213658 () Bool)

(assert (=> b!6418770 m!7213658))

(declare-fun m!7213660 () Bool)

(assert (=> b!6418770 m!7213660))

(declare-fun m!7213662 () Bool)

(assert (=> b!6418770 m!7213662))

(declare-fun m!7213664 () Bool)

(assert (=> b!6418770 m!7213664))

(declare-fun m!7213666 () Bool)

(assert (=> b!6418770 m!7213666))

(declare-fun m!7213668 () Bool)

(assert (=> b!6418770 m!7213668))

(declare-fun m!7213670 () Bool)

(assert (=> b!6418785 m!7213670))

(declare-fun m!7213672 () Bool)

(assert (=> b!6418776 m!7213672))

(declare-fun m!7213674 () Bool)

(assert (=> b!6418776 m!7213674))

(declare-fun m!7213676 () Bool)

(assert (=> b!6418776 m!7213676))

(declare-fun m!7213678 () Bool)

(assert (=> b!6418776 m!7213678))

(assert (=> b!6418776 m!7213678))

(declare-fun m!7213680 () Bool)

(assert (=> b!6418776 m!7213680))

(assert (=> b!6418776 m!7213672))

(declare-fun m!7213682 () Bool)

(assert (=> b!6418776 m!7213682))

(declare-fun m!7213684 () Bool)

(assert (=> b!6418775 m!7213684))

(declare-fun m!7213686 () Bool)

(assert (=> setNonEmpty!43810 m!7213686))

(declare-fun m!7213688 () Bool)

(assert (=> b!6418745 m!7213688))

(declare-fun m!7213690 () Bool)

(assert (=> b!6418772 m!7213690))

(declare-fun m!7213692 () Bool)

(assert (=> b!6418752 m!7213692))

(assert (=> b!6418752 m!7213692))

(declare-fun m!7213694 () Bool)

(assert (=> b!6418752 m!7213694))

(declare-fun m!7213696 () Bool)

(assert (=> b!6418778 m!7213696))

(declare-fun m!7213698 () Bool)

(assert (=> b!6418758 m!7213698))

(declare-fun m!7213700 () Bool)

(assert (=> b!6418781 m!7213700))

(declare-fun m!7213702 () Bool)

(assert (=> b!6418767 m!7213702))

(declare-fun m!7213704 () Bool)

(assert (=> b!6418769 m!7213704))

(declare-fun m!7213706 () Bool)

(assert (=> b!6418769 m!7213706))

(declare-fun m!7213708 () Bool)

(assert (=> b!6418769 m!7213708))

(declare-fun m!7213710 () Bool)

(assert (=> b!6418769 m!7213710))

(declare-fun m!7213712 () Bool)

(assert (=> b!6418769 m!7213712))

(declare-fun m!7213714 () Bool)

(assert (=> b!6418769 m!7213714))

(declare-fun m!7213716 () Bool)

(assert (=> b!6418769 m!7213716))

(declare-fun m!7213718 () Bool)

(assert (=> b!6418765 m!7213718))

(declare-fun m!7213720 () Bool)

(assert (=> b!6418765 m!7213720))

(declare-fun m!7213722 () Bool)

(assert (=> b!6418765 m!7213722))

(declare-fun m!7213724 () Bool)

(assert (=> b!6418765 m!7213724))

(declare-fun m!7213726 () Bool)

(assert (=> b!6418765 m!7213726))

(assert (=> b!6418765 m!7213726))

(declare-fun m!7213728 () Bool)

(assert (=> b!6418765 m!7213728))

(declare-fun m!7213730 () Bool)

(assert (=> b!6418765 m!7213730))

(declare-fun m!7213732 () Bool)

(assert (=> b!6418765 m!7213732))

(declare-fun m!7213734 () Bool)

(assert (=> start!634278 m!7213734))

(declare-fun m!7213736 () Bool)

(assert (=> b!6418780 m!7213736))

(declare-fun m!7213738 () Bool)

(assert (=> b!6418780 m!7213738))

(declare-fun m!7213740 () Bool)

(assert (=> b!6418780 m!7213740))

(declare-fun m!7213742 () Bool)

(assert (=> b!6418747 m!7213742))

(declare-fun m!7213744 () Bool)

(assert (=> b!6418760 m!7213744))

(declare-fun m!7213746 () Bool)

(assert (=> b!6418760 m!7213746))

(declare-fun m!7213748 () Bool)

(assert (=> b!6418760 m!7213748))

(declare-fun m!7213750 () Bool)

(assert (=> b!6418761 m!7213750))

(declare-fun m!7213752 () Bool)

(assert (=> b!6418768 m!7213752))

(declare-fun m!7213754 () Bool)

(assert (=> b!6418783 m!7213754))

(declare-fun m!7213756 () Bool)

(assert (=> b!6418753 m!7213756))

(declare-fun m!7213758 () Bool)

(assert (=> b!6418753 m!7213758))

(declare-fun m!7213760 () Bool)

(assert (=> b!6418782 m!7213760))

(declare-fun m!7213762 () Bool)

(assert (=> b!6418782 m!7213762))

(declare-fun m!7213764 () Bool)

(assert (=> b!6418782 m!7213764))

(declare-fun m!7213766 () Bool)

(assert (=> b!6418766 m!7213766))

(declare-fun m!7213768 () Bool)

(assert (=> b!6418774 m!7213768))

(declare-fun m!7213770 () Bool)

(assert (=> b!6418751 m!7213770))

(declare-fun m!7213772 () Bool)

(assert (=> b!6418771 m!7213772))

(declare-fun m!7213774 () Bool)

(assert (=> b!6418771 m!7213774))

(declare-fun m!7213776 () Bool)

(assert (=> b!6418771 m!7213776))

(declare-fun m!7213778 () Bool)

(assert (=> b!6418763 m!7213778))

(declare-fun m!7213780 () Bool)

(assert (=> b!6418763 m!7213780))

(declare-fun m!7213782 () Bool)

(assert (=> b!6418763 m!7213782))

(declare-fun m!7213784 () Bool)

(assert (=> b!6418763 m!7213784))

(declare-fun m!7213786 () Bool)

(assert (=> b!6418763 m!7213786))

(check-sat (not b!6418748) (not b!6418767) (not b!6418785) (not b!6418765) (not b!6418759) (not b!6418778) (not b!6418784) (not b!6418761) (not b!6418780) (not b!6418783) (not b!6418776) (not setNonEmpty!43810) (not b!6418766) (not b!6418768) (not b!6418751) (not b!6418747) (not b!6418752) (not b!6418746) (not b!6418760) (not b!6418774) (not b!6418782) (not b!6418769) (not b!6418758) (not start!634278) (not b!6418762) (not b!6418771) (not b!6418775) (not b!6418745) tp_is_empty!41895 (not b!6418770) (not b!6418777) (not b!6418781) (not b!6418763) (not b!6418772) (not b!6418753))
(check-sat)
(get-model)

(declare-fun b!6418812 () Bool)

(declare-fun e!3894669 () Bool)

(declare-fun e!3894667 () Bool)

(assert (=> b!6418812 (= e!3894669 e!3894667)))

(declare-fun c!1172509 () Bool)

(assert (=> b!6418812 (= c!1172509 (isEmpty!37292 (unfocusZipperList!1742 zl!343)))))

(declare-fun b!6418813 () Bool)

(declare-fun e!3894668 () Bool)

(declare-fun lt!2376485 () Regex!16321)

(declare-fun isUnion!1158 (Regex!16321) Bool)

(assert (=> b!6418813 (= e!3894668 (isUnion!1158 lt!2376485))))

(declare-fun b!6418814 () Bool)

(assert (=> b!6418814 (= e!3894667 e!3894668)))

(declare-fun c!1172508 () Bool)

(declare-fun tail!12216 (List!65263) List!65263)

(assert (=> b!6418814 (= c!1172508 (isEmpty!37292 (tail!12216 (unfocusZipperList!1742 zl!343))))))

(declare-fun b!6418815 () Bool)

(declare-fun e!3894672 () Regex!16321)

(assert (=> b!6418815 (= e!3894672 EmptyLang!16321)))

(declare-fun b!6418816 () Bool)

(assert (=> b!6418816 (= e!3894672 (Union!16321 (h!71587 (unfocusZipperList!1742 zl!343)) (generalisedUnion!2165 (t!378877 (unfocusZipperList!1742 zl!343)))))))

(declare-fun b!6418817 () Bool)

(declare-fun e!3894670 () Regex!16321)

(assert (=> b!6418817 (= e!3894670 e!3894672)))

(declare-fun c!1172507 () Bool)

(assert (=> b!6418817 (= c!1172507 ((_ is Cons!65139) (unfocusZipperList!1742 zl!343)))))

(declare-fun b!6418818 () Bool)

(declare-fun head!13131 (List!65263) Regex!16321)

(assert (=> b!6418818 (= e!3894668 (= lt!2376485 (head!13131 (unfocusZipperList!1742 zl!343))))))

(declare-fun d!2012638 () Bool)

(assert (=> d!2012638 e!3894669))

(declare-fun res!2638043 () Bool)

(assert (=> d!2012638 (=> (not res!2638043) (not e!3894669))))

(assert (=> d!2012638 (= res!2638043 (validRegex!8057 lt!2376485))))

(assert (=> d!2012638 (= lt!2376485 e!3894670)))

(declare-fun c!1172510 () Bool)

(declare-fun e!3894671 () Bool)

(assert (=> d!2012638 (= c!1172510 e!3894671)))

(declare-fun res!2638044 () Bool)

(assert (=> d!2012638 (=> (not res!2638044) (not e!3894671))))

(assert (=> d!2012638 (= res!2638044 ((_ is Cons!65139) (unfocusZipperList!1742 zl!343)))))

(declare-fun lambda!354556 () Int)

(declare-fun forall!15510 (List!65263 Int) Bool)

(assert (=> d!2012638 (forall!15510 (unfocusZipperList!1742 zl!343) lambda!354556)))

(assert (=> d!2012638 (= (generalisedUnion!2165 (unfocusZipperList!1742 zl!343)) lt!2376485)))

(declare-fun b!6418819 () Bool)

(assert (=> b!6418819 (= e!3894671 (isEmpty!37292 (t!378877 (unfocusZipperList!1742 zl!343))))))

(declare-fun b!6418820 () Bool)

(declare-fun isEmptyLang!1728 (Regex!16321) Bool)

(assert (=> b!6418820 (= e!3894667 (isEmptyLang!1728 lt!2376485))))

(declare-fun b!6418821 () Bool)

(assert (=> b!6418821 (= e!3894670 (h!71587 (unfocusZipperList!1742 zl!343)))))

(assert (= (and d!2012638 res!2638044) b!6418819))

(assert (= (and d!2012638 c!1172510) b!6418821))

(assert (= (and d!2012638 (not c!1172510)) b!6418817))

(assert (= (and b!6418817 c!1172507) b!6418816))

(assert (= (and b!6418817 (not c!1172507)) b!6418815))

(assert (= (and d!2012638 res!2638043) b!6418812))

(assert (= (and b!6418812 c!1172509) b!6418820))

(assert (= (and b!6418812 (not c!1172509)) b!6418814))

(assert (= (and b!6418814 c!1172508) b!6418818))

(assert (= (and b!6418814 (not c!1172508)) b!6418813))

(declare-fun m!7213788 () Bool)

(assert (=> b!6418813 m!7213788))

(assert (=> b!6418814 m!7213692))

(declare-fun m!7213790 () Bool)

(assert (=> b!6418814 m!7213790))

(assert (=> b!6418814 m!7213790))

(declare-fun m!7213792 () Bool)

(assert (=> b!6418814 m!7213792))

(declare-fun m!7213794 () Bool)

(assert (=> b!6418820 m!7213794))

(declare-fun m!7213796 () Bool)

(assert (=> d!2012638 m!7213796))

(assert (=> d!2012638 m!7213692))

(declare-fun m!7213798 () Bool)

(assert (=> d!2012638 m!7213798))

(declare-fun m!7213800 () Bool)

(assert (=> b!6418816 m!7213800))

(assert (=> b!6418812 m!7213692))

(declare-fun m!7213802 () Bool)

(assert (=> b!6418812 m!7213802))

(assert (=> b!6418818 m!7213692))

(declare-fun m!7213804 () Bool)

(assert (=> b!6418818 m!7213804))

(declare-fun m!7213806 () Bool)

(assert (=> b!6418819 m!7213806))

(assert (=> b!6418752 d!2012638))

(declare-fun bs!1614014 () Bool)

(declare-fun d!2012640 () Bool)

(assert (= bs!1614014 (and d!2012640 d!2012638)))

(declare-fun lambda!354559 () Int)

(assert (=> bs!1614014 (= lambda!354559 lambda!354556)))

(declare-fun lt!2376488 () List!65263)

(assert (=> d!2012640 (forall!15510 lt!2376488 lambda!354559)))

(declare-fun e!3894675 () List!65263)

(assert (=> d!2012640 (= lt!2376488 e!3894675)))

(declare-fun c!1172513 () Bool)

(assert (=> d!2012640 (= c!1172513 ((_ is Cons!65140) zl!343))))

(assert (=> d!2012640 (= (unfocusZipperList!1742 zl!343) lt!2376488)))

(declare-fun b!6418826 () Bool)

(assert (=> b!6418826 (= e!3894675 (Cons!65139 (generalisedConcat!1918 (exprs!6205 (h!71588 zl!343))) (unfocusZipperList!1742 (t!378878 zl!343))))))

(declare-fun b!6418827 () Bool)

(assert (=> b!6418827 (= e!3894675 Nil!65139)))

(assert (= (and d!2012640 c!1172513) b!6418826))

(assert (= (and d!2012640 (not c!1172513)) b!6418827))

(declare-fun m!7213808 () Bool)

(assert (=> d!2012640 m!7213808))

(assert (=> b!6418826 m!7213670))

(declare-fun m!7213810 () Bool)

(assert (=> b!6418826 m!7213810))

(assert (=> b!6418752 d!2012640))

(declare-fun b!6418898 () Bool)

(declare-fun e!3894712 () Bool)

(declare-fun head!13133 (List!65262) C!32912)

(assert (=> b!6418898 (= e!3894712 (= (head!13133 (_2!36603 lt!2376459)) (c!1172498 (regTwo!33154 r!7292))))))

(declare-fun b!6418899 () Bool)

(declare-fun res!2638086 () Bool)

(assert (=> b!6418899 (=> (not res!2638086) (not e!3894712))))

(declare-fun call!551846 () Bool)

(assert (=> b!6418899 (= res!2638086 (not call!551846))))

(declare-fun b!6418900 () Bool)

(declare-fun e!3894711 () Bool)

(declare-fun derivativeStep!5025 (Regex!16321 C!32912) Regex!16321)

(declare-fun tail!12218 (List!65262) List!65262)

(assert (=> b!6418900 (= e!3894711 (matchR!8504 (derivativeStep!5025 (regTwo!33154 r!7292) (head!13133 (_2!36603 lt!2376459))) (tail!12218 (_2!36603 lt!2376459))))))

(declare-fun b!6418901 () Bool)

(declare-fun e!3894713 () Bool)

(declare-fun e!3894716 () Bool)

(assert (=> b!6418901 (= e!3894713 e!3894716)))

(declare-fun c!1172529 () Bool)

(assert (=> b!6418901 (= c!1172529 ((_ is EmptyLang!16321) (regTwo!33154 r!7292)))))

(declare-fun b!6418902 () Bool)

(declare-fun res!2638090 () Bool)

(declare-fun e!3894717 () Bool)

(assert (=> b!6418902 (=> res!2638090 e!3894717)))

(assert (=> b!6418902 (= res!2638090 (not (isEmpty!37293 (tail!12218 (_2!36603 lt!2376459)))))))

(declare-fun b!6418903 () Bool)

(declare-fun res!2638092 () Bool)

(declare-fun e!3894715 () Bool)

(assert (=> b!6418903 (=> res!2638092 e!3894715)))

(assert (=> b!6418903 (= res!2638092 e!3894712)))

(declare-fun res!2638087 () Bool)

(assert (=> b!6418903 (=> (not res!2638087) (not e!3894712))))

(declare-fun lt!2376494 () Bool)

(assert (=> b!6418903 (= res!2638087 lt!2376494)))

(declare-fun b!6418904 () Bool)

(assert (=> b!6418904 (= e!3894711 (nullable!6314 (regTwo!33154 r!7292)))))

(declare-fun d!2012644 () Bool)

(assert (=> d!2012644 e!3894713))

(declare-fun c!1172530 () Bool)

(assert (=> d!2012644 (= c!1172530 ((_ is EmptyExpr!16321) (regTwo!33154 r!7292)))))

(assert (=> d!2012644 (= lt!2376494 e!3894711)))

(declare-fun c!1172531 () Bool)

(assert (=> d!2012644 (= c!1172531 (isEmpty!37293 (_2!36603 lt!2376459)))))

(assert (=> d!2012644 (validRegex!8057 (regTwo!33154 r!7292))))

(assert (=> d!2012644 (= (matchR!8504 (regTwo!33154 r!7292) (_2!36603 lt!2376459)) lt!2376494)))

(declare-fun b!6418905 () Bool)

(declare-fun res!2638085 () Bool)

(assert (=> b!6418905 (=> res!2638085 e!3894715)))

(assert (=> b!6418905 (= res!2638085 (not ((_ is ElementMatch!16321) (regTwo!33154 r!7292))))))

(assert (=> b!6418905 (= e!3894716 e!3894715)))

(declare-fun bm!551841 () Bool)

(assert (=> bm!551841 (= call!551846 (isEmpty!37293 (_2!36603 lt!2376459)))))

(declare-fun b!6418906 () Bool)

(declare-fun res!2638089 () Bool)

(assert (=> b!6418906 (=> (not res!2638089) (not e!3894712))))

(assert (=> b!6418906 (= res!2638089 (isEmpty!37293 (tail!12218 (_2!36603 lt!2376459))))))

(declare-fun b!6418907 () Bool)

(assert (=> b!6418907 (= e!3894713 (= lt!2376494 call!551846))))

(declare-fun b!6418908 () Bool)

(assert (=> b!6418908 (= e!3894716 (not lt!2376494))))

(declare-fun b!6418909 () Bool)

(declare-fun e!3894714 () Bool)

(assert (=> b!6418909 (= e!3894714 e!3894717)))

(declare-fun res!2638091 () Bool)

(assert (=> b!6418909 (=> res!2638091 e!3894717)))

(assert (=> b!6418909 (= res!2638091 call!551846)))

(declare-fun b!6418910 () Bool)

(assert (=> b!6418910 (= e!3894715 e!3894714)))

(declare-fun res!2638088 () Bool)

(assert (=> b!6418910 (=> (not res!2638088) (not e!3894714))))

(assert (=> b!6418910 (= res!2638088 (not lt!2376494))))

(declare-fun b!6418911 () Bool)

(assert (=> b!6418911 (= e!3894717 (not (= (head!13133 (_2!36603 lt!2376459)) (c!1172498 (regTwo!33154 r!7292)))))))

(assert (= (and d!2012644 c!1172531) b!6418904))

(assert (= (and d!2012644 (not c!1172531)) b!6418900))

(assert (= (and d!2012644 c!1172530) b!6418907))

(assert (= (and d!2012644 (not c!1172530)) b!6418901))

(assert (= (and b!6418901 c!1172529) b!6418908))

(assert (= (and b!6418901 (not c!1172529)) b!6418905))

(assert (= (and b!6418905 (not res!2638085)) b!6418903))

(assert (= (and b!6418903 res!2638087) b!6418899))

(assert (= (and b!6418899 res!2638086) b!6418906))

(assert (= (and b!6418906 res!2638089) b!6418898))

(assert (= (and b!6418903 (not res!2638092)) b!6418910))

(assert (= (and b!6418910 res!2638088) b!6418909))

(assert (= (and b!6418909 (not res!2638091)) b!6418902))

(assert (= (and b!6418902 (not res!2638090)) b!6418911))

(assert (= (or b!6418907 b!6418899 b!6418909) bm!551841))

(declare-fun m!7213828 () Bool)

(assert (=> bm!551841 m!7213828))

(declare-fun m!7213830 () Bool)

(assert (=> b!6418900 m!7213830))

(assert (=> b!6418900 m!7213830))

(declare-fun m!7213832 () Bool)

(assert (=> b!6418900 m!7213832))

(declare-fun m!7213834 () Bool)

(assert (=> b!6418900 m!7213834))

(assert (=> b!6418900 m!7213832))

(assert (=> b!6418900 m!7213834))

(declare-fun m!7213836 () Bool)

(assert (=> b!6418900 m!7213836))

(assert (=> b!6418902 m!7213834))

(assert (=> b!6418902 m!7213834))

(declare-fun m!7213838 () Bool)

(assert (=> b!6418902 m!7213838))

(assert (=> d!2012644 m!7213828))

(declare-fun m!7213840 () Bool)

(assert (=> d!2012644 m!7213840))

(assert (=> b!6418911 m!7213830))

(assert (=> b!6418898 m!7213830))

(declare-fun m!7213842 () Bool)

(assert (=> b!6418904 m!7213842))

(assert (=> b!6418906 m!7213834))

(assert (=> b!6418906 m!7213834))

(assert (=> b!6418906 m!7213838))

(assert (=> b!6418775 d!2012644))

(declare-fun bm!551863 () Bool)

(declare-fun call!551869 () (InoxSet Context!11410))

(declare-fun call!551871 () (InoxSet Context!11410))

(assert (=> bm!551863 (= call!551869 call!551871)))

(declare-fun b!6418997 () Bool)

(declare-fun e!3894774 () (InoxSet Context!11410))

(declare-fun e!3894775 () (InoxSet Context!11410))

(assert (=> b!6418997 (= e!3894774 e!3894775)))

(declare-fun c!1172565 () Bool)

(assert (=> b!6418997 (= c!1172565 ((_ is Union!16321) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun bm!551864 () Bool)

(declare-fun call!551870 () (InoxSet Context!11410))

(assert (=> bm!551864 (= call!551870 call!551869)))

(declare-fun b!6418998 () Bool)

(declare-fun c!1172566 () Bool)

(assert (=> b!6418998 (= c!1172566 ((_ is Star!16321) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun e!3894777 () (InoxSet Context!11410))

(declare-fun e!3894772 () (InoxSet Context!11410))

(assert (=> b!6418998 (= e!3894777 e!3894772)))

(declare-fun b!6418999 () Bool)

(declare-fun e!3894776 () Bool)

(assert (=> b!6418999 (= e!3894776 (nullable!6314 (regOne!33154 (reg!16650 (regOne!33154 r!7292)))))))

(declare-fun b!6419000 () Bool)

(assert (=> b!6419000 (= e!3894774 (store ((as const (Array Context!11410 Bool)) false) lt!2376461 true))))

(declare-fun call!551868 () List!65263)

(declare-fun call!551873 () (InoxSet Context!11410))

(declare-fun bm!551865 () Bool)

(assert (=> bm!551865 (= call!551873 (derivationStepZipperDown!1569 (ite c!1172565 (regTwo!33155 (reg!16650 (regOne!33154 r!7292))) (regOne!33154 (reg!16650 (regOne!33154 r!7292)))) (ite c!1172565 lt!2376461 (Context!11411 call!551868)) (h!71586 s!2326)))))

(declare-fun b!6419002 () Bool)

(assert (=> b!6419002 (= e!3894775 ((_ map or) call!551871 call!551873))))

(declare-fun b!6419003 () Bool)

(declare-fun c!1172564 () Bool)

(assert (=> b!6419003 (= c!1172564 e!3894776)))

(declare-fun res!2638116 () Bool)

(assert (=> b!6419003 (=> (not res!2638116) (not e!3894776))))

(assert (=> b!6419003 (= res!2638116 ((_ is Concat!25166) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun e!3894773 () (InoxSet Context!11410))

(assert (=> b!6419003 (= e!3894775 e!3894773)))

(declare-fun bm!551866 () Bool)

(declare-fun c!1172567 () Bool)

(declare-fun $colon$colon!2181 (List!65263 Regex!16321) List!65263)

(assert (=> bm!551866 (= call!551868 ($colon$colon!2181 (exprs!6205 lt!2376461) (ite (or c!1172564 c!1172567) (regTwo!33154 (reg!16650 (regOne!33154 r!7292))) (reg!16650 (regOne!33154 r!7292)))))))

(declare-fun b!6419004 () Bool)

(assert (=> b!6419004 (= e!3894773 ((_ map or) call!551873 call!551869))))

(declare-fun bm!551867 () Bool)

(declare-fun call!551872 () List!65263)

(assert (=> bm!551867 (= call!551872 call!551868)))

(declare-fun bm!551868 () Bool)

(assert (=> bm!551868 (= call!551871 (derivationStepZipperDown!1569 (ite c!1172565 (regOne!33155 (reg!16650 (regOne!33154 r!7292))) (ite c!1172564 (regTwo!33154 (reg!16650 (regOne!33154 r!7292))) (ite c!1172567 (regOne!33154 (reg!16650 (regOne!33154 r!7292))) (reg!16650 (reg!16650 (regOne!33154 r!7292)))))) (ite (or c!1172565 c!1172564) lt!2376461 (Context!11411 call!551872)) (h!71586 s!2326)))))

(declare-fun b!6419005 () Bool)

(assert (=> b!6419005 (= e!3894772 call!551870)))

(declare-fun b!6419006 () Bool)

(assert (=> b!6419006 (= e!3894777 call!551870)))

(declare-fun b!6419007 () Bool)

(assert (=> b!6419007 (= e!3894772 ((as const (Array Context!11410 Bool)) false))))

(declare-fun b!6419001 () Bool)

(assert (=> b!6419001 (= e!3894773 e!3894777)))

(assert (=> b!6419001 (= c!1172567 ((_ is Concat!25166) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun d!2012648 () Bool)

(declare-fun c!1172563 () Bool)

(assert (=> d!2012648 (= c!1172563 (and ((_ is ElementMatch!16321) (reg!16650 (regOne!33154 r!7292))) (= (c!1172498 (reg!16650 (regOne!33154 r!7292))) (h!71586 s!2326))))))

(assert (=> d!2012648 (= (derivationStepZipperDown!1569 (reg!16650 (regOne!33154 r!7292)) lt!2376461 (h!71586 s!2326)) e!3894774)))

(assert (= (and d!2012648 c!1172563) b!6419000))

(assert (= (and d!2012648 (not c!1172563)) b!6418997))

(assert (= (and b!6418997 c!1172565) b!6419002))

(assert (= (and b!6418997 (not c!1172565)) b!6419003))

(assert (= (and b!6419003 res!2638116) b!6418999))

(assert (= (and b!6419003 c!1172564) b!6419004))

(assert (= (and b!6419003 (not c!1172564)) b!6419001))

(assert (= (and b!6419001 c!1172567) b!6419006))

(assert (= (and b!6419001 (not c!1172567)) b!6418998))

(assert (= (and b!6418998 c!1172566) b!6419005))

(assert (= (and b!6418998 (not c!1172566)) b!6419007))

(assert (= (or b!6419006 b!6419005) bm!551867))

(assert (= (or b!6419006 b!6419005) bm!551864))

(assert (= (or b!6419004 bm!551867) bm!551866))

(assert (= (or b!6419004 bm!551864) bm!551863))

(assert (= (or b!6419002 b!6419004) bm!551865))

(assert (= (or b!6419002 bm!551863) bm!551868))

(declare-fun m!7213880 () Bool)

(assert (=> bm!551866 m!7213880))

(declare-fun m!7213882 () Bool)

(assert (=> bm!551865 m!7213882))

(assert (=> b!6419000 m!7213654))

(declare-fun m!7213884 () Bool)

(assert (=> bm!551868 m!7213884))

(declare-fun m!7213886 () Bool)

(assert (=> b!6418999 m!7213886))

(assert (=> b!6418774 d!2012648))

(declare-fun d!2012658 () Bool)

(declare-fun c!1172578 () Bool)

(assert (=> d!2012658 (= c!1172578 (isEmpty!37293 s!2326))))

(declare-fun e!3894801 () Bool)

(assert (=> d!2012658 (= (matchZipper!2333 lt!2376464 s!2326) e!3894801)))

(declare-fun b!6419049 () Bool)

(declare-fun nullableZipper!2085 ((InoxSet Context!11410)) Bool)

(assert (=> b!6419049 (= e!3894801 (nullableZipper!2085 lt!2376464))))

(declare-fun b!6419050 () Bool)

(assert (=> b!6419050 (= e!3894801 (matchZipper!2333 (derivationStepZipper!2287 lt!2376464 (head!13133 s!2326)) (tail!12218 s!2326)))))

(assert (= (and d!2012658 c!1172578) b!6419049))

(assert (= (and d!2012658 (not c!1172578)) b!6419050))

(declare-fun m!7213902 () Bool)

(assert (=> d!2012658 m!7213902))

(declare-fun m!7213904 () Bool)

(assert (=> b!6419049 m!7213904))

(declare-fun m!7213906 () Bool)

(assert (=> b!6419050 m!7213906))

(assert (=> b!6419050 m!7213906))

(declare-fun m!7213908 () Bool)

(assert (=> b!6419050 m!7213908))

(declare-fun m!7213912 () Bool)

(assert (=> b!6419050 m!7213912))

(assert (=> b!6419050 m!7213908))

(assert (=> b!6419050 m!7213912))

(declare-fun m!7213920 () Bool)

(assert (=> b!6419050 m!7213920))

(assert (=> b!6418753 d!2012658))

(declare-fun d!2012666 () Bool)

(declare-fun c!1172579 () Bool)

(assert (=> d!2012666 (= c!1172579 (isEmpty!37293 (t!378876 s!2326)))))

(declare-fun e!3894802 () Bool)

(assert (=> d!2012666 (= (matchZipper!2333 lt!2376462 (t!378876 s!2326)) e!3894802)))

(declare-fun b!6419051 () Bool)

(assert (=> b!6419051 (= e!3894802 (nullableZipper!2085 lt!2376462))))

(declare-fun b!6419052 () Bool)

(assert (=> b!6419052 (= e!3894802 (matchZipper!2333 (derivationStepZipper!2287 lt!2376462 (head!13133 (t!378876 s!2326))) (tail!12218 (t!378876 s!2326))))))

(assert (= (and d!2012666 c!1172579) b!6419051))

(assert (= (and d!2012666 (not c!1172579)) b!6419052))

(declare-fun m!7213930 () Bool)

(assert (=> d!2012666 m!7213930))

(declare-fun m!7213932 () Bool)

(assert (=> b!6419051 m!7213932))

(declare-fun m!7213934 () Bool)

(assert (=> b!6419052 m!7213934))

(assert (=> b!6419052 m!7213934))

(declare-fun m!7213936 () Bool)

(assert (=> b!6419052 m!7213936))

(declare-fun m!7213938 () Bool)

(assert (=> b!6419052 m!7213938))

(assert (=> b!6419052 m!7213936))

(assert (=> b!6419052 m!7213938))

(declare-fun m!7213940 () Bool)

(assert (=> b!6419052 m!7213940))

(assert (=> b!6418753 d!2012666))

(declare-fun bm!551880 () Bool)

(declare-fun call!551886 () Bool)

(declare-fun call!551887 () Bool)

(assert (=> bm!551880 (= call!551886 call!551887)))

(declare-fun b!6419093 () Bool)

(declare-fun e!3894836 () Bool)

(declare-fun e!3894834 () Bool)

(assert (=> b!6419093 (= e!3894836 e!3894834)))

(declare-fun c!1172593 () Bool)

(assert (=> b!6419093 (= c!1172593 ((_ is Union!16321) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun b!6419094 () Bool)

(declare-fun e!3894833 () Bool)

(declare-fun call!551885 () Bool)

(assert (=> b!6419094 (= e!3894833 call!551885)))

(declare-fun b!6419095 () Bool)

(declare-fun e!3894832 () Bool)

(assert (=> b!6419095 (= e!3894836 e!3894832)))

(declare-fun res!2638158 () Bool)

(assert (=> b!6419095 (= res!2638158 (not (nullable!6314 (reg!16650 (reg!16650 (regOne!33154 r!7292))))))))

(assert (=> b!6419095 (=> (not res!2638158) (not e!3894832))))

(declare-fun b!6419096 () Bool)

(declare-fun res!2638155 () Bool)

(declare-fun e!3894835 () Bool)

(assert (=> b!6419096 (=> (not res!2638155) (not e!3894835))))

(assert (=> b!6419096 (= res!2638155 call!551886)))

(assert (=> b!6419096 (= e!3894834 e!3894835)))

(declare-fun b!6419097 () Bool)

(assert (=> b!6419097 (= e!3894832 call!551887)))

(declare-fun d!2012670 () Bool)

(declare-fun res!2638157 () Bool)

(declare-fun e!3894831 () Bool)

(assert (=> d!2012670 (=> res!2638157 e!3894831)))

(assert (=> d!2012670 (= res!2638157 ((_ is ElementMatch!16321) (reg!16650 (regOne!33154 r!7292))))))

(assert (=> d!2012670 (= (validRegex!8057 (reg!16650 (regOne!33154 r!7292))) e!3894831)))

(declare-fun b!6419098 () Bool)

(declare-fun res!2638156 () Bool)

(declare-fun e!3894837 () Bool)

(assert (=> b!6419098 (=> res!2638156 e!3894837)))

(assert (=> b!6419098 (= res!2638156 (not ((_ is Concat!25166) (reg!16650 (regOne!33154 r!7292)))))))

(assert (=> b!6419098 (= e!3894834 e!3894837)))

(declare-fun bm!551881 () Bool)

(assert (=> bm!551881 (= call!551885 (validRegex!8057 (ite c!1172593 (regTwo!33155 (reg!16650 (regOne!33154 r!7292))) (regTwo!33154 (reg!16650 (regOne!33154 r!7292))))))))

(declare-fun b!6419099 () Bool)

(assert (=> b!6419099 (= e!3894837 e!3894833)))

(declare-fun res!2638154 () Bool)

(assert (=> b!6419099 (=> (not res!2638154) (not e!3894833))))

(assert (=> b!6419099 (= res!2638154 call!551886)))

(declare-fun b!6419100 () Bool)

(assert (=> b!6419100 (= e!3894831 e!3894836)))

(declare-fun c!1172592 () Bool)

(assert (=> b!6419100 (= c!1172592 ((_ is Star!16321) (reg!16650 (regOne!33154 r!7292))))))

(declare-fun bm!551882 () Bool)

(assert (=> bm!551882 (= call!551887 (validRegex!8057 (ite c!1172592 (reg!16650 (reg!16650 (regOne!33154 r!7292))) (ite c!1172593 (regOne!33155 (reg!16650 (regOne!33154 r!7292))) (regOne!33154 (reg!16650 (regOne!33154 r!7292)))))))))

(declare-fun b!6419101 () Bool)

(assert (=> b!6419101 (= e!3894835 call!551885)))

(assert (= (and d!2012670 (not res!2638157)) b!6419100))

(assert (= (and b!6419100 c!1172592) b!6419095))

(assert (= (and b!6419100 (not c!1172592)) b!6419093))

(assert (= (and b!6419095 res!2638158) b!6419097))

(assert (= (and b!6419093 c!1172593) b!6419096))

(assert (= (and b!6419093 (not c!1172593)) b!6419098))

(assert (= (and b!6419096 res!2638155) b!6419101))

(assert (= (and b!6419098 (not res!2638156)) b!6419099))

(assert (= (and b!6419099 res!2638154) b!6419094))

(assert (= (or b!6419101 b!6419094) bm!551881))

(assert (= (or b!6419096 b!6419099) bm!551880))

(assert (= (or b!6419097 bm!551880) bm!551882))

(declare-fun m!7213942 () Bool)

(assert (=> b!6419095 m!7213942))

(declare-fun m!7213944 () Bool)

(assert (=> bm!551881 m!7213944))

(declare-fun m!7213946 () Bool)

(assert (=> bm!551882 m!7213946))

(assert (=> b!6418771 d!2012670))

(declare-fun bs!1614025 () Bool)

(declare-fun b!6419162 () Bool)

(assert (= bs!1614025 (and b!6419162 b!6418776)))

(declare-fun lambda!354579 () Int)

(assert (=> bs!1614025 (not (= lambda!354579 lambda!354549))))

(assert (=> bs!1614025 (not (= lambda!354579 lambda!354550))))

(declare-fun bs!1614026 () Bool)

(assert (= bs!1614026 (and b!6419162 b!6418765)))

(assert (=> bs!1614026 (not (= lambda!354579 lambda!354552))))

(assert (=> bs!1614026 (not (= lambda!354579 lambda!354553))))

(assert (=> b!6419162 true))

(assert (=> b!6419162 true))

(declare-fun bs!1614027 () Bool)

(declare-fun b!6419165 () Bool)

(assert (= bs!1614027 (and b!6419165 b!6419162)))

(declare-fun lambda!354580 () Int)

(assert (=> bs!1614027 (not (= lambda!354580 lambda!354579))))

(declare-fun bs!1614028 () Bool)

(assert (= bs!1614028 (and b!6419165 b!6418776)))

(assert (=> bs!1614028 (not (= lambda!354580 lambda!354549))))

(assert (=> bs!1614028 (= (and (= (_1!36603 lt!2376459) s!2326) (= (regOne!33154 lt!2376449) (regOne!33154 r!7292)) (= (regTwo!33154 lt!2376449) (regTwo!33154 r!7292))) (= lambda!354580 lambda!354550))))

(declare-fun bs!1614029 () Bool)

(assert (= bs!1614029 (and b!6419165 b!6418765)))

(assert (=> bs!1614029 (not (= lambda!354580 lambda!354552))))

(assert (=> bs!1614029 (= (and (= (_1!36603 lt!2376459) s!2326) (= (regOne!33154 lt!2376449) lt!2376449) (= (regTwo!33154 lt!2376449) (regTwo!33154 r!7292))) (= lambda!354580 lambda!354553))))

(assert (=> b!6419165 true))

(assert (=> b!6419165 true))

(declare-fun d!2012672 () Bool)

(declare-fun c!1172609 () Bool)

(assert (=> d!2012672 (= c!1172609 ((_ is EmptyExpr!16321) lt!2376449))))

(declare-fun e!3894869 () Bool)

(assert (=> d!2012672 (= (matchRSpec!3422 lt!2376449 (_1!36603 lt!2376459)) e!3894869)))

(declare-fun b!6419155 () Bool)

(declare-fun call!551898 () Bool)

(assert (=> b!6419155 (= e!3894869 call!551898)))

(declare-fun b!6419156 () Bool)

(declare-fun c!1172608 () Bool)

(assert (=> b!6419156 (= c!1172608 ((_ is Union!16321) lt!2376449))))

(declare-fun e!3894868 () Bool)

(declare-fun e!3894867 () Bool)

(assert (=> b!6419156 (= e!3894868 e!3894867)))

(declare-fun bm!551893 () Bool)

(assert (=> bm!551893 (= call!551898 (isEmpty!37293 (_1!36603 lt!2376459)))))

(declare-fun b!6419157 () Bool)

(assert (=> b!6419157 (= e!3894868 (= (_1!36603 lt!2376459) (Cons!65138 (c!1172498 lt!2376449) Nil!65138)))))

(declare-fun b!6419158 () Bool)

(declare-fun res!2638189 () Bool)

(declare-fun e!3894873 () Bool)

(assert (=> b!6419158 (=> res!2638189 e!3894873)))

(assert (=> b!6419158 (= res!2638189 call!551898)))

(declare-fun e!3894871 () Bool)

(assert (=> b!6419158 (= e!3894871 e!3894873)))

(declare-fun b!6419159 () Bool)

(declare-fun e!3894870 () Bool)

(assert (=> b!6419159 (= e!3894870 (matchRSpec!3422 (regTwo!33155 lt!2376449) (_1!36603 lt!2376459)))))

(declare-fun b!6419160 () Bool)

(declare-fun c!1172606 () Bool)

(assert (=> b!6419160 (= c!1172606 ((_ is ElementMatch!16321) lt!2376449))))

(declare-fun e!3894872 () Bool)

(assert (=> b!6419160 (= e!3894872 e!3894868)))

(declare-fun b!6419161 () Bool)

(assert (=> b!6419161 (= e!3894867 e!3894871)))

(declare-fun c!1172607 () Bool)

(assert (=> b!6419161 (= c!1172607 ((_ is Star!16321) lt!2376449))))

(declare-fun call!551899 () Bool)

(assert (=> b!6419162 (= e!3894873 call!551899)))

(declare-fun b!6419163 () Bool)

(assert (=> b!6419163 (= e!3894869 e!3894872)))

(declare-fun res!2638190 () Bool)

(assert (=> b!6419163 (= res!2638190 (not ((_ is EmptyLang!16321) lt!2376449)))))

(assert (=> b!6419163 (=> (not res!2638190) (not e!3894872))))

(declare-fun b!6419164 () Bool)

(assert (=> b!6419164 (= e!3894867 e!3894870)))

(declare-fun res!2638188 () Bool)

(assert (=> b!6419164 (= res!2638188 (matchRSpec!3422 (regOne!33155 lt!2376449) (_1!36603 lt!2376459)))))

(assert (=> b!6419164 (=> res!2638188 e!3894870)))

(declare-fun bm!551894 () Bool)

(assert (=> bm!551894 (= call!551899 (Exists!3391 (ite c!1172607 lambda!354579 lambda!354580)))))

(assert (=> b!6419165 (= e!3894871 call!551899)))

(assert (= (and d!2012672 c!1172609) b!6419155))

(assert (= (and d!2012672 (not c!1172609)) b!6419163))

(assert (= (and b!6419163 res!2638190) b!6419160))

(assert (= (and b!6419160 c!1172606) b!6419157))

(assert (= (and b!6419160 (not c!1172606)) b!6419156))

(assert (= (and b!6419156 c!1172608) b!6419164))

(assert (= (and b!6419156 (not c!1172608)) b!6419161))

(assert (= (and b!6419164 (not res!2638188)) b!6419159))

(assert (= (and b!6419161 c!1172607) b!6419158))

(assert (= (and b!6419161 (not c!1172607)) b!6419165))

(assert (= (and b!6419158 (not res!2638189)) b!6419162))

(assert (= (or b!6419162 b!6419165) bm!551894))

(assert (= (or b!6419155 b!6419158) bm!551893))

(assert (=> bm!551893 m!7213770))

(declare-fun m!7213956 () Bool)

(assert (=> b!6419159 m!7213956))

(declare-fun m!7213958 () Bool)

(assert (=> b!6419164 m!7213958))

(declare-fun m!7213960 () Bool)

(assert (=> bm!551894 m!7213960))

(assert (=> b!6418771 d!2012672))

(declare-fun d!2012678 () Bool)

(assert (=> d!2012678 (= (matchR!8504 lt!2376449 (_1!36603 lt!2376459)) (matchRSpec!3422 lt!2376449 (_1!36603 lt!2376459)))))

(declare-fun lt!2376508 () Unit!158615)

(declare-fun choose!47682 (Regex!16321 List!65262) Unit!158615)

(assert (=> d!2012678 (= lt!2376508 (choose!47682 lt!2376449 (_1!36603 lt!2376459)))))

(assert (=> d!2012678 (validRegex!8057 lt!2376449)))

(assert (=> d!2012678 (= (mainMatchTheorem!3422 lt!2376449 (_1!36603 lt!2376459)) lt!2376508)))

(declare-fun bs!1614030 () Bool)

(assert (= bs!1614030 d!2012678))

(assert (=> bs!1614030 m!7213688))

(assert (=> bs!1614030 m!7213774))

(declare-fun m!7213962 () Bool)

(assert (=> bs!1614030 m!7213962))

(assert (=> bs!1614030 m!7213702))

(assert (=> b!6418771 d!2012678))

(declare-fun call!551902 () (InoxSet Context!11410))

(declare-fun b!6419194 () Bool)

(declare-fun e!3894890 () (InoxSet Context!11410))

(assert (=> b!6419194 (= e!3894890 ((_ map or) call!551902 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 lt!2376461))) (h!71586 s!2326))))))

(declare-fun b!6419195 () Bool)

(declare-fun e!3894891 () (InoxSet Context!11410))

(assert (=> b!6419195 (= e!3894891 call!551902)))

(declare-fun b!6419196 () Bool)

(assert (=> b!6419196 (= e!3894890 e!3894891)))

(declare-fun c!1172618 () Bool)

(assert (=> b!6419196 (= c!1172618 ((_ is Cons!65139) (exprs!6205 lt!2376461)))))

(declare-fun d!2012680 () Bool)

(declare-fun c!1172619 () Bool)

(declare-fun e!3894892 () Bool)

(assert (=> d!2012680 (= c!1172619 e!3894892)))

(declare-fun res!2638203 () Bool)

(assert (=> d!2012680 (=> (not res!2638203) (not e!3894892))))

(assert (=> d!2012680 (= res!2638203 ((_ is Cons!65139) (exprs!6205 lt!2376461)))))

(assert (=> d!2012680 (= (derivationStepZipperUp!1495 lt!2376461 (h!71586 s!2326)) e!3894890)))

(declare-fun b!6419197 () Bool)

(assert (=> b!6419197 (= e!3894892 (nullable!6314 (h!71587 (exprs!6205 lt!2376461))))))

(declare-fun bm!551897 () Bool)

(assert (=> bm!551897 (= call!551902 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 lt!2376461)) (Context!11411 (t!378877 (exprs!6205 lt!2376461))) (h!71586 s!2326)))))

(declare-fun b!6419198 () Bool)

(assert (=> b!6419198 (= e!3894891 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012680 res!2638203) b!6419197))

(assert (= (and d!2012680 c!1172619) b!6419194))

(assert (= (and d!2012680 (not c!1172619)) b!6419196))

(assert (= (and b!6419196 c!1172618) b!6419195))

(assert (= (and b!6419196 (not c!1172618)) b!6419198))

(assert (= (or b!6419194 b!6419195) bm!551897))

(declare-fun m!7213964 () Bool)

(assert (=> b!6419194 m!7213964))

(declare-fun m!7213966 () Bool)

(assert (=> b!6419197 m!7213966))

(declare-fun m!7213968 () Bool)

(assert (=> bm!551897 m!7213968))

(assert (=> b!6418770 d!2012680))

(declare-fun d!2012682 () Bool)

(declare-fun dynLambda!25875 (Int Context!11410) (InoxSet Context!11410))

(assert (=> d!2012682 (= (flatMap!1826 lt!2376472 lambda!354551) (dynLambda!25875 lambda!354551 lt!2376461))))

(declare-fun lt!2376520 () Unit!158615)

(declare-fun choose!47683 ((InoxSet Context!11410) Context!11410 Int) Unit!158615)

(assert (=> d!2012682 (= lt!2376520 (choose!47683 lt!2376472 lt!2376461 lambda!354551))))

(assert (=> d!2012682 (= lt!2376472 (store ((as const (Array Context!11410 Bool)) false) lt!2376461 true))))

(assert (=> d!2012682 (= (lemmaFlatMapOnSingletonSet!1352 lt!2376472 lt!2376461 lambda!354551) lt!2376520)))

(declare-fun b_lambda!244013 () Bool)

(assert (=> (not b_lambda!244013) (not d!2012682)))

(declare-fun bs!1614031 () Bool)

(assert (= bs!1614031 d!2012682))

(assert (=> bs!1614031 m!7213662))

(declare-fun m!7213972 () Bool)

(assert (=> bs!1614031 m!7213972))

(declare-fun m!7213976 () Bool)

(assert (=> bs!1614031 m!7213976))

(assert (=> bs!1614031 m!7213654))

(assert (=> b!6418770 d!2012682))

(declare-fun d!2012684 () Bool)

(assert (=> d!2012684 (= (flatMap!1826 lt!2376457 lambda!354551) (dynLambda!25875 lambda!354551 lt!2376478))))

(declare-fun lt!2376521 () Unit!158615)

(assert (=> d!2012684 (= lt!2376521 (choose!47683 lt!2376457 lt!2376478 lambda!354551))))

(assert (=> d!2012684 (= lt!2376457 (store ((as const (Array Context!11410 Bool)) false) lt!2376478 true))))

(assert (=> d!2012684 (= (lemmaFlatMapOnSingletonSet!1352 lt!2376457 lt!2376478 lambda!354551) lt!2376521)))

(declare-fun b_lambda!244015 () Bool)

(assert (=> (not b_lambda!244015) (not d!2012684)))

(declare-fun bs!1614032 () Bool)

(assert (= bs!1614032 d!2012684))

(assert (=> bs!1614032 m!7213660))

(declare-fun m!7213992 () Bool)

(assert (=> bs!1614032 m!7213992))

(declare-fun m!7213994 () Bool)

(assert (=> bs!1614032 m!7213994))

(assert (=> bs!1614032 m!7213658))

(assert (=> b!6418770 d!2012684))

(declare-fun d!2012686 () Bool)

(declare-fun lt!2376524 () Regex!16321)

(assert (=> d!2012686 (validRegex!8057 lt!2376524)))

(assert (=> d!2012686 (= lt!2376524 (generalisedUnion!2165 (unfocusZipperList!1742 (Cons!65140 lt!2376478 Nil!65140))))))

(assert (=> d!2012686 (= (unfocusZipper!2063 (Cons!65140 lt!2376478 Nil!65140)) lt!2376524)))

(declare-fun bs!1614033 () Bool)

(assert (= bs!1614033 d!2012686))

(declare-fun m!7214000 () Bool)

(assert (=> bs!1614033 m!7214000))

(declare-fun m!7214002 () Bool)

(assert (=> bs!1614033 m!7214002))

(assert (=> bs!1614033 m!7214002))

(declare-fun m!7214004 () Bool)

(assert (=> bs!1614033 m!7214004))

(assert (=> b!6418770 d!2012686))

(declare-fun d!2012690 () Bool)

(declare-fun choose!47684 ((InoxSet Context!11410) Int) (InoxSet Context!11410))

(assert (=> d!2012690 (= (flatMap!1826 lt!2376457 lambda!354551) (choose!47684 lt!2376457 lambda!354551))))

(declare-fun bs!1614034 () Bool)

(assert (= bs!1614034 d!2012690))

(declare-fun m!7214006 () Bool)

(assert (=> bs!1614034 m!7214006))

(assert (=> b!6418770 d!2012690))

(declare-fun d!2012692 () Bool)

(assert (=> d!2012692 (= (flatMap!1826 lt!2376472 lambda!354551) (choose!47684 lt!2376472 lambda!354551))))

(declare-fun bs!1614035 () Bool)

(assert (= bs!1614035 d!2012692))

(declare-fun m!7214008 () Bool)

(assert (=> bs!1614035 m!7214008))

(assert (=> b!6418770 d!2012692))

(declare-fun b!6419208 () Bool)

(declare-fun e!3894898 () (InoxSet Context!11410))

(declare-fun call!551903 () (InoxSet Context!11410))

(assert (=> b!6419208 (= e!3894898 ((_ map or) call!551903 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 lt!2376478))) (h!71586 s!2326))))))

(declare-fun b!6419209 () Bool)

(declare-fun e!3894899 () (InoxSet Context!11410))

(assert (=> b!6419209 (= e!3894899 call!551903)))

(declare-fun b!6419210 () Bool)

(assert (=> b!6419210 (= e!3894898 e!3894899)))

(declare-fun c!1172622 () Bool)

(assert (=> b!6419210 (= c!1172622 ((_ is Cons!65139) (exprs!6205 lt!2376478)))))

(declare-fun d!2012694 () Bool)

(declare-fun c!1172623 () Bool)

(declare-fun e!3894900 () Bool)

(assert (=> d!2012694 (= c!1172623 e!3894900)))

(declare-fun res!2638209 () Bool)

(assert (=> d!2012694 (=> (not res!2638209) (not e!3894900))))

(assert (=> d!2012694 (= res!2638209 ((_ is Cons!65139) (exprs!6205 lt!2376478)))))

(assert (=> d!2012694 (= (derivationStepZipperUp!1495 lt!2376478 (h!71586 s!2326)) e!3894898)))

(declare-fun b!6419211 () Bool)

(assert (=> b!6419211 (= e!3894900 (nullable!6314 (h!71587 (exprs!6205 lt!2376478))))))

(declare-fun bm!551898 () Bool)

(assert (=> bm!551898 (= call!551903 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 lt!2376478)) (Context!11411 (t!378877 (exprs!6205 lt!2376478))) (h!71586 s!2326)))))

(declare-fun b!6419212 () Bool)

(assert (=> b!6419212 (= e!3894899 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012694 res!2638209) b!6419211))

(assert (= (and d!2012694 c!1172623) b!6419208))

(assert (= (and d!2012694 (not c!1172623)) b!6419210))

(assert (= (and b!6419210 c!1172622) b!6419209))

(assert (= (and b!6419210 (not c!1172622)) b!6419212))

(assert (= (or b!6419208 b!6419209) bm!551898))

(declare-fun m!7214010 () Bool)

(assert (=> b!6419208 m!7214010))

(declare-fun m!7214012 () Bool)

(assert (=> b!6419211 m!7214012))

(declare-fun m!7214014 () Bool)

(assert (=> bm!551898 m!7214014))

(assert (=> b!6418770 d!2012694))

(declare-fun d!2012696 () Bool)

(declare-fun nullableFct!2259 (Regex!16321) Bool)

(assert (=> d!2012696 (= (nullable!6314 (regOne!33154 (regOne!33154 r!7292))) (nullableFct!2259 (regOne!33154 (regOne!33154 r!7292))))))

(declare-fun bs!1614036 () Bool)

(assert (= bs!1614036 d!2012696))

(declare-fun m!7214016 () Bool)

(assert (=> bs!1614036 m!7214016))

(assert (=> b!6418772 d!2012696))

(declare-fun d!2012698 () Bool)

(assert (=> d!2012698 (= (isEmpty!37293 (_1!36603 lt!2376459)) ((_ is Nil!65138) (_1!36603 lt!2376459)))))

(assert (=> b!6418751 d!2012698))

(declare-fun d!2012700 () Bool)

(assert (=> d!2012700 (= (isEmpty!37294 (t!378878 zl!343)) ((_ is Nil!65140) (t!378878 zl!343)))))

(assert (=> b!6418768 d!2012700))

(declare-fun d!2012702 () Bool)

(assert (=> d!2012702 (= (isEmpty!37292 (t!378877 (exprs!6205 (h!71588 zl!343)))) ((_ is Nil!65139) (t!378877 (exprs!6205 (h!71588 zl!343)))))))

(assert (=> b!6418747 d!2012702))

(declare-fun d!2012704 () Bool)

(assert (=> d!2012704 (= (flatMap!1826 z!1189 lambda!354551) (dynLambda!25875 lambda!354551 (h!71588 zl!343)))))

(declare-fun lt!2376527 () Unit!158615)

(assert (=> d!2012704 (= lt!2376527 (choose!47683 z!1189 (h!71588 zl!343) lambda!354551))))

(assert (=> d!2012704 (= z!1189 (store ((as const (Array Context!11410 Bool)) false) (h!71588 zl!343) true))))

(assert (=> d!2012704 (= (lemmaFlatMapOnSingletonSet!1352 z!1189 (h!71588 zl!343) lambda!354551) lt!2376527)))

(declare-fun b_lambda!244017 () Bool)

(assert (=> (not b_lambda!244017) (not d!2012704)))

(declare-fun bs!1614037 () Bool)

(assert (= bs!1614037 d!2012704))

(assert (=> bs!1614037 m!7213706))

(declare-fun m!7214018 () Bool)

(assert (=> bs!1614037 m!7214018))

(declare-fun m!7214020 () Bool)

(assert (=> bs!1614037 m!7214020))

(declare-fun m!7214022 () Bool)

(assert (=> bs!1614037 m!7214022))

(assert (=> b!6418769 d!2012704))

(declare-fun d!2012706 () Bool)

(assert (=> d!2012706 (= (nullable!6314 (h!71587 (exprs!6205 (h!71588 zl!343)))) (nullableFct!2259 (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun bs!1614038 () Bool)

(assert (= bs!1614038 d!2012706))

(declare-fun m!7214024 () Bool)

(assert (=> bs!1614038 m!7214024))

(assert (=> b!6418769 d!2012706))

(declare-fun e!3894903 () (InoxSet Context!11410))

(declare-fun b!6419217 () Bool)

(declare-fun call!551904 () (InoxSet Context!11410))

(assert (=> b!6419217 (= e!3894903 ((_ map or) call!551904 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343)))))))) (h!71586 s!2326))))))

(declare-fun b!6419218 () Bool)

(declare-fun e!3894904 () (InoxSet Context!11410))

(assert (=> b!6419218 (= e!3894904 call!551904)))

(declare-fun b!6419219 () Bool)

(assert (=> b!6419219 (= e!3894903 e!3894904)))

(declare-fun c!1172624 () Bool)

(assert (=> b!6419219 (= c!1172624 ((_ is Cons!65139) (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343))))))))))

(declare-fun d!2012708 () Bool)

(declare-fun c!1172625 () Bool)

(declare-fun e!3894905 () Bool)

(assert (=> d!2012708 (= c!1172625 e!3894905)))

(declare-fun res!2638214 () Bool)

(assert (=> d!2012708 (=> (not res!2638214) (not e!3894905))))

(assert (=> d!2012708 (= res!2638214 ((_ is Cons!65139) (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343))))))))))

(assert (=> d!2012708 (= (derivationStepZipperUp!1495 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343))))) (h!71586 s!2326)) e!3894903)))

(declare-fun b!6419220 () Bool)

(assert (=> b!6419220 (= e!3894905 (nullable!6314 (h!71587 (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343)))))))))))

(declare-fun bm!551899 () Bool)

(assert (=> bm!551899 (= call!551904 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343))))))) (Context!11411 (t!378877 (exprs!6205 (Context!11411 (Cons!65139 (h!71587 (exprs!6205 (h!71588 zl!343))) (t!378877 (exprs!6205 (h!71588 zl!343)))))))) (h!71586 s!2326)))))

(declare-fun b!6419221 () Bool)

(assert (=> b!6419221 (= e!3894904 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012708 res!2638214) b!6419220))

(assert (= (and d!2012708 c!1172625) b!6419217))

(assert (= (and d!2012708 (not c!1172625)) b!6419219))

(assert (= (and b!6419219 c!1172624) b!6419218))

(assert (= (and b!6419219 (not c!1172624)) b!6419221))

(assert (= (or b!6419217 b!6419218) bm!551899))

(declare-fun m!7214026 () Bool)

(assert (=> b!6419217 m!7214026))

(declare-fun m!7214028 () Bool)

(assert (=> b!6419220 m!7214028))

(declare-fun m!7214030 () Bool)

(assert (=> bm!551899 m!7214030))

(assert (=> b!6418769 d!2012708))

(declare-fun call!551905 () (InoxSet Context!11410))

(declare-fun b!6419222 () Bool)

(declare-fun e!3894906 () (InoxSet Context!11410))

(assert (=> b!6419222 (= e!3894906 ((_ map or) call!551905 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 lt!2376475))) (h!71586 s!2326))))))

(declare-fun b!6419223 () Bool)

(declare-fun e!3894907 () (InoxSet Context!11410))

(assert (=> b!6419223 (= e!3894907 call!551905)))

(declare-fun b!6419224 () Bool)

(assert (=> b!6419224 (= e!3894906 e!3894907)))

(declare-fun c!1172626 () Bool)

(assert (=> b!6419224 (= c!1172626 ((_ is Cons!65139) (exprs!6205 lt!2376475)))))

(declare-fun d!2012710 () Bool)

(declare-fun c!1172627 () Bool)

(declare-fun e!3894908 () Bool)

(assert (=> d!2012710 (= c!1172627 e!3894908)))

(declare-fun res!2638215 () Bool)

(assert (=> d!2012710 (=> (not res!2638215) (not e!3894908))))

(assert (=> d!2012710 (= res!2638215 ((_ is Cons!65139) (exprs!6205 lt!2376475)))))

(assert (=> d!2012710 (= (derivationStepZipperUp!1495 lt!2376475 (h!71586 s!2326)) e!3894906)))

(declare-fun b!6419225 () Bool)

(assert (=> b!6419225 (= e!3894908 (nullable!6314 (h!71587 (exprs!6205 lt!2376475))))))

(declare-fun bm!551900 () Bool)

(assert (=> bm!551900 (= call!551905 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 lt!2376475)) (Context!11411 (t!378877 (exprs!6205 lt!2376475))) (h!71586 s!2326)))))

(declare-fun b!6419226 () Bool)

(assert (=> b!6419226 (= e!3894907 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012710 res!2638215) b!6419225))

(assert (= (and d!2012710 c!1172627) b!6419222))

(assert (= (and d!2012710 (not c!1172627)) b!6419224))

(assert (= (and b!6419224 c!1172626) b!6419223))

(assert (= (and b!6419224 (not c!1172626)) b!6419226))

(assert (= (or b!6419222 b!6419223) bm!551900))

(declare-fun m!7214032 () Bool)

(assert (=> b!6419222 m!7214032))

(declare-fun m!7214034 () Bool)

(assert (=> b!6419225 m!7214034))

(declare-fun m!7214036 () Bool)

(assert (=> bm!551900 m!7214036))

(assert (=> b!6418769 d!2012710))

(declare-fun call!551906 () (InoxSet Context!11410))

(declare-fun b!6419227 () Bool)

(declare-fun e!3894909 () (InoxSet Context!11410))

(assert (=> b!6419227 (= e!3894909 ((_ map or) call!551906 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 (h!71588 zl!343)))) (h!71586 s!2326))))))

(declare-fun b!6419228 () Bool)

(declare-fun e!3894910 () (InoxSet Context!11410))

(assert (=> b!6419228 (= e!3894910 call!551906)))

(declare-fun b!6419229 () Bool)

(assert (=> b!6419229 (= e!3894909 e!3894910)))

(declare-fun c!1172628 () Bool)

(assert (=> b!6419229 (= c!1172628 ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343))))))

(declare-fun d!2012712 () Bool)

(declare-fun c!1172629 () Bool)

(declare-fun e!3894911 () Bool)

(assert (=> d!2012712 (= c!1172629 e!3894911)))

(declare-fun res!2638216 () Bool)

(assert (=> d!2012712 (=> (not res!2638216) (not e!3894911))))

(assert (=> d!2012712 (= res!2638216 ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343))))))

(assert (=> d!2012712 (= (derivationStepZipperUp!1495 (h!71588 zl!343) (h!71586 s!2326)) e!3894909)))

(declare-fun b!6419230 () Bool)

(assert (=> b!6419230 (= e!3894911 (nullable!6314 (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun bm!551901 () Bool)

(assert (=> bm!551901 (= call!551906 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 (h!71588 zl!343))) (Context!11411 (t!378877 (exprs!6205 (h!71588 zl!343)))) (h!71586 s!2326)))))

(declare-fun b!6419231 () Bool)

(assert (=> b!6419231 (= e!3894910 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012712 res!2638216) b!6419230))

(assert (= (and d!2012712 c!1172629) b!6419227))

(assert (= (and d!2012712 (not c!1172629)) b!6419229))

(assert (= (and b!6419229 c!1172628) b!6419228))

(assert (= (and b!6419229 (not c!1172628)) b!6419231))

(assert (= (or b!6419227 b!6419228) bm!551901))

(declare-fun m!7214038 () Bool)

(assert (=> b!6419227 m!7214038))

(assert (=> b!6419230 m!7213714))

(declare-fun m!7214040 () Bool)

(assert (=> bm!551901 m!7214040))

(assert (=> b!6418769 d!2012712))

(declare-fun d!2012714 () Bool)

(assert (=> d!2012714 (= (flatMap!1826 z!1189 lambda!354551) (choose!47684 z!1189 lambda!354551))))

(declare-fun bs!1614039 () Bool)

(assert (= bs!1614039 d!2012714))

(declare-fun m!7214042 () Bool)

(assert (=> bs!1614039 m!7214042))

(assert (=> b!6418769 d!2012714))

(declare-fun bm!551902 () Bool)

(declare-fun call!551908 () (InoxSet Context!11410))

(declare-fun call!551910 () (InoxSet Context!11410))

(assert (=> bm!551902 (= call!551908 call!551910)))

(declare-fun b!6419232 () Bool)

(declare-fun e!3894914 () (InoxSet Context!11410))

(declare-fun e!3894915 () (InoxSet Context!11410))

(assert (=> b!6419232 (= e!3894914 e!3894915)))

(declare-fun c!1172632 () Bool)

(assert (=> b!6419232 (= c!1172632 ((_ is Union!16321) (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun bm!551903 () Bool)

(declare-fun call!551909 () (InoxSet Context!11410))

(assert (=> bm!551903 (= call!551909 call!551908)))

(declare-fun b!6419233 () Bool)

(declare-fun c!1172633 () Bool)

(assert (=> b!6419233 (= c!1172633 ((_ is Star!16321) (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun e!3894917 () (InoxSet Context!11410))

(declare-fun e!3894912 () (InoxSet Context!11410))

(assert (=> b!6419233 (= e!3894917 e!3894912)))

(declare-fun b!6419234 () Bool)

(declare-fun e!3894916 () Bool)

(assert (=> b!6419234 (= e!3894916 (nullable!6314 (regOne!33154 (h!71587 (exprs!6205 (h!71588 zl!343))))))))

(declare-fun b!6419235 () Bool)

(assert (=> b!6419235 (= e!3894914 (store ((as const (Array Context!11410 Bool)) false) lt!2376475 true))))

(declare-fun bm!551904 () Bool)

(declare-fun call!551912 () (InoxSet Context!11410))

(declare-fun call!551907 () List!65263)

(assert (=> bm!551904 (= call!551912 (derivationStepZipperDown!1569 (ite c!1172632 (regTwo!33155 (h!71587 (exprs!6205 (h!71588 zl!343)))) (regOne!33154 (h!71587 (exprs!6205 (h!71588 zl!343))))) (ite c!1172632 lt!2376475 (Context!11411 call!551907)) (h!71586 s!2326)))))

(declare-fun b!6419237 () Bool)

(assert (=> b!6419237 (= e!3894915 ((_ map or) call!551910 call!551912))))

(declare-fun b!6419238 () Bool)

(declare-fun c!1172631 () Bool)

(assert (=> b!6419238 (= c!1172631 e!3894916)))

(declare-fun res!2638217 () Bool)

(assert (=> b!6419238 (=> (not res!2638217) (not e!3894916))))

(assert (=> b!6419238 (= res!2638217 ((_ is Concat!25166) (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun e!3894913 () (InoxSet Context!11410))

(assert (=> b!6419238 (= e!3894915 e!3894913)))

(declare-fun bm!551905 () Bool)

(declare-fun c!1172634 () Bool)

(assert (=> bm!551905 (= call!551907 ($colon$colon!2181 (exprs!6205 lt!2376475) (ite (or c!1172631 c!1172634) (regTwo!33154 (h!71587 (exprs!6205 (h!71588 zl!343)))) (h!71587 (exprs!6205 (h!71588 zl!343))))))))

(declare-fun b!6419239 () Bool)

(assert (=> b!6419239 (= e!3894913 ((_ map or) call!551912 call!551908))))

(declare-fun bm!551906 () Bool)

(declare-fun call!551911 () List!65263)

(assert (=> bm!551906 (= call!551911 call!551907)))

(declare-fun bm!551907 () Bool)

(assert (=> bm!551907 (= call!551910 (derivationStepZipperDown!1569 (ite c!1172632 (regOne!33155 (h!71587 (exprs!6205 (h!71588 zl!343)))) (ite c!1172631 (regTwo!33154 (h!71587 (exprs!6205 (h!71588 zl!343)))) (ite c!1172634 (regOne!33154 (h!71587 (exprs!6205 (h!71588 zl!343)))) (reg!16650 (h!71587 (exprs!6205 (h!71588 zl!343))))))) (ite (or c!1172632 c!1172631) lt!2376475 (Context!11411 call!551911)) (h!71586 s!2326)))))

(declare-fun b!6419240 () Bool)

(assert (=> b!6419240 (= e!3894912 call!551909)))

(declare-fun b!6419241 () Bool)

(assert (=> b!6419241 (= e!3894917 call!551909)))

(declare-fun b!6419242 () Bool)

(assert (=> b!6419242 (= e!3894912 ((as const (Array Context!11410 Bool)) false))))

(declare-fun b!6419236 () Bool)

(assert (=> b!6419236 (= e!3894913 e!3894917)))

(assert (=> b!6419236 (= c!1172634 ((_ is Concat!25166) (h!71587 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun d!2012716 () Bool)

(declare-fun c!1172630 () Bool)

(assert (=> d!2012716 (= c!1172630 (and ((_ is ElementMatch!16321) (h!71587 (exprs!6205 (h!71588 zl!343)))) (= (c!1172498 (h!71587 (exprs!6205 (h!71588 zl!343)))) (h!71586 s!2326))))))

(assert (=> d!2012716 (= (derivationStepZipperDown!1569 (h!71587 (exprs!6205 (h!71588 zl!343))) lt!2376475 (h!71586 s!2326)) e!3894914)))

(assert (= (and d!2012716 c!1172630) b!6419235))

(assert (= (and d!2012716 (not c!1172630)) b!6419232))

(assert (= (and b!6419232 c!1172632) b!6419237))

(assert (= (and b!6419232 (not c!1172632)) b!6419238))

(assert (= (and b!6419238 res!2638217) b!6419234))

(assert (= (and b!6419238 c!1172631) b!6419239))

(assert (= (and b!6419238 (not c!1172631)) b!6419236))

(assert (= (and b!6419236 c!1172634) b!6419241))

(assert (= (and b!6419236 (not c!1172634)) b!6419233))

(assert (= (and b!6419233 c!1172633) b!6419240))

(assert (= (and b!6419233 (not c!1172633)) b!6419242))

(assert (= (or b!6419241 b!6419240) bm!551906))

(assert (= (or b!6419241 b!6419240) bm!551903))

(assert (= (or b!6419239 bm!551906) bm!551905))

(assert (= (or b!6419239 bm!551903) bm!551902))

(assert (= (or b!6419237 b!6419239) bm!551904))

(assert (= (or b!6419237 bm!551902) bm!551907))

(declare-fun m!7214044 () Bool)

(assert (=> bm!551905 m!7214044))

(declare-fun m!7214046 () Bool)

(assert (=> bm!551904 m!7214046))

(declare-fun m!7214048 () Bool)

(assert (=> b!6419235 m!7214048))

(declare-fun m!7214050 () Bool)

(assert (=> bm!551907 m!7214050))

(declare-fun m!7214052 () Bool)

(assert (=> b!6419234 m!7214052))

(assert (=> b!6418769 d!2012716))

(declare-fun b!6419243 () Bool)

(declare-fun e!3894919 () Bool)

(assert (=> b!6419243 (= e!3894919 (= (head!13133 (_1!36603 lt!2376459)) (c!1172498 lt!2376449)))))

(declare-fun b!6419244 () Bool)

(declare-fun res!2638219 () Bool)

(assert (=> b!6419244 (=> (not res!2638219) (not e!3894919))))

(declare-fun call!551913 () Bool)

(assert (=> b!6419244 (= res!2638219 (not call!551913))))

(declare-fun b!6419245 () Bool)

(declare-fun e!3894918 () Bool)

(assert (=> b!6419245 (= e!3894918 (matchR!8504 (derivativeStep!5025 lt!2376449 (head!13133 (_1!36603 lt!2376459))) (tail!12218 (_1!36603 lt!2376459))))))

(declare-fun b!6419246 () Bool)

(declare-fun e!3894920 () Bool)

(declare-fun e!3894923 () Bool)

(assert (=> b!6419246 (= e!3894920 e!3894923)))

(declare-fun c!1172635 () Bool)

(assert (=> b!6419246 (= c!1172635 ((_ is EmptyLang!16321) lt!2376449))))

(declare-fun b!6419247 () Bool)

(declare-fun res!2638223 () Bool)

(declare-fun e!3894924 () Bool)

(assert (=> b!6419247 (=> res!2638223 e!3894924)))

(assert (=> b!6419247 (= res!2638223 (not (isEmpty!37293 (tail!12218 (_1!36603 lt!2376459)))))))

(declare-fun b!6419248 () Bool)

(declare-fun res!2638225 () Bool)

(declare-fun e!3894922 () Bool)

(assert (=> b!6419248 (=> res!2638225 e!3894922)))

(assert (=> b!6419248 (= res!2638225 e!3894919)))

(declare-fun res!2638220 () Bool)

(assert (=> b!6419248 (=> (not res!2638220) (not e!3894919))))

(declare-fun lt!2376529 () Bool)

(assert (=> b!6419248 (= res!2638220 lt!2376529)))

(declare-fun b!6419249 () Bool)

(assert (=> b!6419249 (= e!3894918 (nullable!6314 lt!2376449))))

(declare-fun d!2012718 () Bool)

(assert (=> d!2012718 e!3894920))

(declare-fun c!1172636 () Bool)

(assert (=> d!2012718 (= c!1172636 ((_ is EmptyExpr!16321) lt!2376449))))

(assert (=> d!2012718 (= lt!2376529 e!3894918)))

(declare-fun c!1172637 () Bool)

(assert (=> d!2012718 (= c!1172637 (isEmpty!37293 (_1!36603 lt!2376459)))))

(assert (=> d!2012718 (validRegex!8057 lt!2376449)))

(assert (=> d!2012718 (= (matchR!8504 lt!2376449 (_1!36603 lt!2376459)) lt!2376529)))

(declare-fun b!6419250 () Bool)

(declare-fun res!2638218 () Bool)

(assert (=> b!6419250 (=> res!2638218 e!3894922)))

(assert (=> b!6419250 (= res!2638218 (not ((_ is ElementMatch!16321) lt!2376449)))))

(assert (=> b!6419250 (= e!3894923 e!3894922)))

(declare-fun bm!551908 () Bool)

(assert (=> bm!551908 (= call!551913 (isEmpty!37293 (_1!36603 lt!2376459)))))

(declare-fun b!6419251 () Bool)

(declare-fun res!2638222 () Bool)

(assert (=> b!6419251 (=> (not res!2638222) (not e!3894919))))

(assert (=> b!6419251 (= res!2638222 (isEmpty!37293 (tail!12218 (_1!36603 lt!2376459))))))

(declare-fun b!6419252 () Bool)

(assert (=> b!6419252 (= e!3894920 (= lt!2376529 call!551913))))

(declare-fun b!6419253 () Bool)

(assert (=> b!6419253 (= e!3894923 (not lt!2376529))))

(declare-fun b!6419254 () Bool)

(declare-fun e!3894921 () Bool)

(assert (=> b!6419254 (= e!3894921 e!3894924)))

(declare-fun res!2638224 () Bool)

(assert (=> b!6419254 (=> res!2638224 e!3894924)))

(assert (=> b!6419254 (= res!2638224 call!551913)))

(declare-fun b!6419255 () Bool)

(assert (=> b!6419255 (= e!3894922 e!3894921)))

(declare-fun res!2638221 () Bool)

(assert (=> b!6419255 (=> (not res!2638221) (not e!3894921))))

(assert (=> b!6419255 (= res!2638221 (not lt!2376529))))

(declare-fun b!6419256 () Bool)

(assert (=> b!6419256 (= e!3894924 (not (= (head!13133 (_1!36603 lt!2376459)) (c!1172498 lt!2376449))))))

(assert (= (and d!2012718 c!1172637) b!6419249))

(assert (= (and d!2012718 (not c!1172637)) b!6419245))

(assert (= (and d!2012718 c!1172636) b!6419252))

(assert (= (and d!2012718 (not c!1172636)) b!6419246))

(assert (= (and b!6419246 c!1172635) b!6419253))

(assert (= (and b!6419246 (not c!1172635)) b!6419250))

(assert (= (and b!6419250 (not res!2638218)) b!6419248))

(assert (= (and b!6419248 res!2638220) b!6419244))

(assert (= (and b!6419244 res!2638219) b!6419251))

(assert (= (and b!6419251 res!2638222) b!6419243))

(assert (= (and b!6419248 (not res!2638225)) b!6419255))

(assert (= (and b!6419255 res!2638221) b!6419254))

(assert (= (and b!6419254 (not res!2638224)) b!6419247))

(assert (= (and b!6419247 (not res!2638223)) b!6419256))

(assert (= (or b!6419252 b!6419244 b!6419254) bm!551908))

(assert (=> bm!551908 m!7213770))

(declare-fun m!7214060 () Bool)

(assert (=> b!6419245 m!7214060))

(assert (=> b!6419245 m!7214060))

(declare-fun m!7214062 () Bool)

(assert (=> b!6419245 m!7214062))

(declare-fun m!7214064 () Bool)

(assert (=> b!6419245 m!7214064))

(assert (=> b!6419245 m!7214062))

(assert (=> b!6419245 m!7214064))

(declare-fun m!7214066 () Bool)

(assert (=> b!6419245 m!7214066))

(assert (=> b!6419247 m!7214064))

(assert (=> b!6419247 m!7214064))

(declare-fun m!7214068 () Bool)

(assert (=> b!6419247 m!7214068))

(assert (=> d!2012718 m!7213770))

(assert (=> d!2012718 m!7213702))

(assert (=> b!6419256 m!7214060))

(assert (=> b!6419243 m!7214060))

(declare-fun m!7214070 () Bool)

(assert (=> b!6419249 m!7214070))

(assert (=> b!6419251 m!7214064))

(assert (=> b!6419251 m!7214064))

(assert (=> b!6419251 m!7214068))

(assert (=> b!6418745 d!2012718))

(declare-fun bs!1614045 () Bool)

(declare-fun d!2012722 () Bool)

(assert (= bs!1614045 (and d!2012722 d!2012638)))

(declare-fun lambda!354590 () Int)

(assert (=> bs!1614045 (= lambda!354590 lambda!354556)))

(declare-fun bs!1614046 () Bool)

(assert (= bs!1614046 (and d!2012722 d!2012640)))

(assert (=> bs!1614046 (= lambda!354590 lambda!354559)))

(declare-fun b!6419285 () Bool)

(declare-fun e!3894944 () Regex!16321)

(assert (=> b!6419285 (= e!3894944 (Concat!25166 (h!71587 (exprs!6205 (h!71588 zl!343))) (generalisedConcat!1918 (t!378877 (exprs!6205 (h!71588 zl!343))))))))

(declare-fun b!6419286 () Bool)

(declare-fun e!3894942 () Bool)

(declare-fun e!3894945 () Bool)

(assert (=> b!6419286 (= e!3894942 e!3894945)))

(declare-fun c!1172647 () Bool)

(assert (=> b!6419286 (= c!1172647 (isEmpty!37292 (tail!12216 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun e!3894943 () Bool)

(assert (=> d!2012722 e!3894943))

(declare-fun res!2638239 () Bool)

(assert (=> d!2012722 (=> (not res!2638239) (not e!3894943))))

(declare-fun lt!2376534 () Regex!16321)

(assert (=> d!2012722 (= res!2638239 (validRegex!8057 lt!2376534))))

(declare-fun e!3894941 () Regex!16321)

(assert (=> d!2012722 (= lt!2376534 e!3894941)))

(declare-fun c!1172646 () Bool)

(declare-fun e!3894946 () Bool)

(assert (=> d!2012722 (= c!1172646 e!3894946)))

(declare-fun res!2638238 () Bool)

(assert (=> d!2012722 (=> (not res!2638238) (not e!3894946))))

(assert (=> d!2012722 (= res!2638238 ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343))))))

(assert (=> d!2012722 (forall!15510 (exprs!6205 (h!71588 zl!343)) lambda!354590)))

(assert (=> d!2012722 (= (generalisedConcat!1918 (exprs!6205 (h!71588 zl!343))) lt!2376534)))

(declare-fun b!6419287 () Bool)

(declare-fun isConcat!1244 (Regex!16321) Bool)

(assert (=> b!6419287 (= e!3894945 (isConcat!1244 lt!2376534))))

(declare-fun b!6419288 () Bool)

(assert (=> b!6419288 (= e!3894946 (isEmpty!37292 (t!378877 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun b!6419289 () Bool)

(assert (=> b!6419289 (= e!3894945 (= lt!2376534 (head!13131 (exprs!6205 (h!71588 zl!343)))))))

(declare-fun b!6419290 () Bool)

(declare-fun isEmptyExpr!1721 (Regex!16321) Bool)

(assert (=> b!6419290 (= e!3894942 (isEmptyExpr!1721 lt!2376534))))

(declare-fun b!6419291 () Bool)

(assert (=> b!6419291 (= e!3894944 EmptyExpr!16321)))

(declare-fun b!6419292 () Bool)

(assert (=> b!6419292 (= e!3894943 e!3894942)))

(declare-fun c!1172649 () Bool)

(assert (=> b!6419292 (= c!1172649 (isEmpty!37292 (exprs!6205 (h!71588 zl!343))))))

(declare-fun b!6419293 () Bool)

(assert (=> b!6419293 (= e!3894941 e!3894944)))

(declare-fun c!1172648 () Bool)

(assert (=> b!6419293 (= c!1172648 ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343))))))

(declare-fun b!6419294 () Bool)

(assert (=> b!6419294 (= e!3894941 (h!71587 (exprs!6205 (h!71588 zl!343))))))

(assert (= (and d!2012722 res!2638238) b!6419288))

(assert (= (and d!2012722 c!1172646) b!6419294))

(assert (= (and d!2012722 (not c!1172646)) b!6419293))

(assert (= (and b!6419293 c!1172648) b!6419285))

(assert (= (and b!6419293 (not c!1172648)) b!6419291))

(assert (= (and d!2012722 res!2638239) b!6419292))

(assert (= (and b!6419292 c!1172649) b!6419290))

(assert (= (and b!6419292 (not c!1172649)) b!6419286))

(assert (= (and b!6419286 c!1172647) b!6419289))

(assert (= (and b!6419286 (not c!1172647)) b!6419287))

(declare-fun m!7214072 () Bool)

(assert (=> b!6419286 m!7214072))

(assert (=> b!6419286 m!7214072))

(declare-fun m!7214074 () Bool)

(assert (=> b!6419286 m!7214074))

(declare-fun m!7214076 () Bool)

(assert (=> b!6419292 m!7214076))

(declare-fun m!7214078 () Bool)

(assert (=> d!2012722 m!7214078))

(declare-fun m!7214080 () Bool)

(assert (=> d!2012722 m!7214080))

(declare-fun m!7214082 () Bool)

(assert (=> b!6419289 m!7214082))

(assert (=> b!6419288 m!7213742))

(declare-fun m!7214084 () Bool)

(assert (=> b!6419290 m!7214084))

(declare-fun m!7214086 () Bool)

(assert (=> b!6419285 m!7214086))

(declare-fun m!7214088 () Bool)

(assert (=> b!6419287 m!7214088))

(assert (=> b!6418785 d!2012722))

(declare-fun bs!1614056 () Bool)

(declare-fun d!2012724 () Bool)

(assert (= bs!1614056 (and d!2012724 b!6419165)))

(declare-fun lambda!354595 () Int)

(assert (=> bs!1614056 (not (= lambda!354595 lambda!354580))))

(declare-fun bs!1614057 () Bool)

(assert (= bs!1614057 (and d!2012724 b!6419162)))

(assert (=> bs!1614057 (not (= lambda!354595 lambda!354579))))

(declare-fun bs!1614058 () Bool)

(assert (= bs!1614058 (and d!2012724 b!6418776)))

(assert (=> bs!1614058 (= (= lt!2376449 (regOne!33154 r!7292)) (= lambda!354595 lambda!354549))))

(assert (=> bs!1614058 (not (= lambda!354595 lambda!354550))))

(declare-fun bs!1614059 () Bool)

(assert (= bs!1614059 (and d!2012724 b!6418765)))

(assert (=> bs!1614059 (= lambda!354595 lambda!354552)))

(assert (=> bs!1614059 (not (= lambda!354595 lambda!354553))))

(assert (=> d!2012724 true))

(assert (=> d!2012724 true))

(assert (=> d!2012724 true))

(assert (=> d!2012724 (= (isDefined!12915 (findConcatSeparation!2626 lt!2376449 (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326)) (Exists!3391 lambda!354595))))

(declare-fun lt!2376540 () Unit!158615)

(declare-fun choose!47691 (Regex!16321 Regex!16321 List!65262) Unit!158615)

(assert (=> d!2012724 (= lt!2376540 (choose!47691 lt!2376449 (regTwo!33154 r!7292) s!2326))))

(assert (=> d!2012724 (validRegex!8057 lt!2376449)))

(assert (=> d!2012724 (= (lemmaFindConcatSeparationEquivalentToExists!2390 lt!2376449 (regTwo!33154 r!7292) s!2326) lt!2376540)))

(declare-fun bs!1614060 () Bool)

(assert (= bs!1614060 d!2012724))

(assert (=> bs!1614060 m!7213722))

(assert (=> bs!1614060 m!7213722))

(declare-fun m!7214116 () Bool)

(assert (=> bs!1614060 m!7214116))

(declare-fun m!7214118 () Bool)

(assert (=> bs!1614060 m!7214118))

(declare-fun m!7214120 () Bool)

(assert (=> bs!1614060 m!7214120))

(assert (=> bs!1614060 m!7213702))

(assert (=> b!6418765 d!2012724))

(declare-fun d!2012738 () Bool)

(declare-fun choose!47692 (Int) Bool)

(assert (=> d!2012738 (= (Exists!3391 lambda!354553) (choose!47692 lambda!354553))))

(declare-fun bs!1614065 () Bool)

(assert (= bs!1614065 d!2012738))

(declare-fun m!7214124 () Bool)

(assert (=> bs!1614065 m!7214124))

(assert (=> b!6418765 d!2012738))

(declare-fun d!2012742 () Bool)

(assert (=> d!2012742 (= (get!22565 lt!2376476) (v!52384 lt!2376476))))

(assert (=> b!6418765 d!2012742))

(declare-fun d!2012746 () Bool)

(declare-fun e!3894969 () Bool)

(assert (=> d!2012746 e!3894969))

(declare-fun res!2638257 () Bool)

(assert (=> d!2012746 (=> (not res!2638257) (not e!3894969))))

(declare-fun lt!2376544 () List!65262)

(declare-fun content!12355 (List!65262) (InoxSet C!32912))

(assert (=> d!2012746 (= res!2638257 (= (content!12355 lt!2376544) ((_ map or) (content!12355 (_1!36603 lt!2376459)) (content!12355 (_2!36603 lt!2376459)))))))

(declare-fun e!3894968 () List!65262)

(assert (=> d!2012746 (= lt!2376544 e!3894968)))

(declare-fun c!1172661 () Bool)

(assert (=> d!2012746 (= c!1172661 ((_ is Nil!65138) (_1!36603 lt!2376459)))))

(assert (=> d!2012746 (= (++!14389 (_1!36603 lt!2376459) (_2!36603 lt!2376459)) lt!2376544)))

(declare-fun b!6419335 () Bool)

(assert (=> b!6419335 (= e!3894968 (Cons!65138 (h!71586 (_1!36603 lt!2376459)) (++!14389 (t!378876 (_1!36603 lt!2376459)) (_2!36603 lt!2376459))))))

(declare-fun b!6419334 () Bool)

(assert (=> b!6419334 (= e!3894968 (_2!36603 lt!2376459))))

(declare-fun b!6419337 () Bool)

(assert (=> b!6419337 (= e!3894969 (or (not (= (_2!36603 lt!2376459) Nil!65138)) (= lt!2376544 (_1!36603 lt!2376459))))))

(declare-fun b!6419336 () Bool)

(declare-fun res!2638258 () Bool)

(assert (=> b!6419336 (=> (not res!2638258) (not e!3894969))))

(declare-fun size!40380 (List!65262) Int)

(assert (=> b!6419336 (= res!2638258 (= (size!40380 lt!2376544) (+ (size!40380 (_1!36603 lt!2376459)) (size!40380 (_2!36603 lt!2376459)))))))

(assert (= (and d!2012746 c!1172661) b!6419334))

(assert (= (and d!2012746 (not c!1172661)) b!6419335))

(assert (= (and d!2012746 res!2638257) b!6419336))

(assert (= (and b!6419336 res!2638258) b!6419337))

(declare-fun m!7214134 () Bool)

(assert (=> d!2012746 m!7214134))

(declare-fun m!7214136 () Bool)

(assert (=> d!2012746 m!7214136))

(declare-fun m!7214138 () Bool)

(assert (=> d!2012746 m!7214138))

(declare-fun m!7214140 () Bool)

(assert (=> b!6419335 m!7214140))

(declare-fun m!7214142 () Bool)

(assert (=> b!6419336 m!7214142))

(declare-fun m!7214144 () Bool)

(assert (=> b!6419336 m!7214144))

(declare-fun m!7214146 () Bool)

(assert (=> b!6419336 m!7214146))

(assert (=> b!6418765 d!2012746))

(declare-fun b!6419368 () Bool)

(declare-fun res!2638276 () Bool)

(declare-fun e!3894989 () Bool)

(assert (=> b!6419368 (=> (not res!2638276) (not e!3894989))))

(declare-fun lt!2376561 () Option!16212)

(assert (=> b!6419368 (= res!2638276 (matchR!8504 (regTwo!33154 r!7292) (_2!36603 (get!22565 lt!2376561))))))

(declare-fun b!6419369 () Bool)

(declare-fun e!3894988 () Option!16212)

(assert (=> b!6419369 (= e!3894988 None!16211)))

(declare-fun b!6419370 () Bool)

(declare-fun e!3894986 () Option!16212)

(assert (=> b!6419370 (= e!3894986 e!3894988)))

(declare-fun c!1172670 () Bool)

(assert (=> b!6419370 (= c!1172670 ((_ is Nil!65138) s!2326))))

(declare-fun b!6419371 () Bool)

(declare-fun lt!2376560 () Unit!158615)

(declare-fun lt!2376559 () Unit!158615)

(assert (=> b!6419371 (= lt!2376560 lt!2376559)))

(assert (=> b!6419371 (= (++!14389 (++!14389 Nil!65138 (Cons!65138 (h!71586 s!2326) Nil!65138)) (t!378876 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2484 (List!65262 C!32912 List!65262 List!65262) Unit!158615)

(assert (=> b!6419371 (= lt!2376559 (lemmaMoveElementToOtherListKeepsConcatEq!2484 Nil!65138 (h!71586 s!2326) (t!378876 s!2326) s!2326))))

(assert (=> b!6419371 (= e!3894988 (findConcatSeparation!2626 lt!2376449 (regTwo!33154 r!7292) (++!14389 Nil!65138 (Cons!65138 (h!71586 s!2326) Nil!65138)) (t!378876 s!2326) s!2326))))

(declare-fun d!2012750 () Bool)

(declare-fun e!3894985 () Bool)

(assert (=> d!2012750 e!3894985))

(declare-fun res!2638275 () Bool)

(assert (=> d!2012750 (=> res!2638275 e!3894985)))

(assert (=> d!2012750 (= res!2638275 e!3894989)))

(declare-fun res!2638277 () Bool)

(assert (=> d!2012750 (=> (not res!2638277) (not e!3894989))))

(assert (=> d!2012750 (= res!2638277 (isDefined!12915 lt!2376561))))

(assert (=> d!2012750 (= lt!2376561 e!3894986)))

(declare-fun c!1172671 () Bool)

(declare-fun e!3894987 () Bool)

(assert (=> d!2012750 (= c!1172671 e!3894987)))

(declare-fun res!2638274 () Bool)

(assert (=> d!2012750 (=> (not res!2638274) (not e!3894987))))

(assert (=> d!2012750 (= res!2638274 (matchR!8504 lt!2376449 Nil!65138))))

(assert (=> d!2012750 (validRegex!8057 lt!2376449)))

(assert (=> d!2012750 (= (findConcatSeparation!2626 lt!2376449 (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326) lt!2376561)))

(declare-fun b!6419367 () Bool)

(assert (=> b!6419367 (= e!3894986 (Some!16211 (tuple2!66601 Nil!65138 s!2326)))))

(declare-fun b!6419372 () Bool)

(declare-fun res!2638278 () Bool)

(assert (=> b!6419372 (=> (not res!2638278) (not e!3894989))))

(assert (=> b!6419372 (= res!2638278 (matchR!8504 lt!2376449 (_1!36603 (get!22565 lt!2376561))))))

(declare-fun b!6419373 () Bool)

(assert (=> b!6419373 (= e!3894987 (matchR!8504 (regTwo!33154 r!7292) s!2326))))

(declare-fun b!6419374 () Bool)

(assert (=> b!6419374 (= e!3894989 (= (++!14389 (_1!36603 (get!22565 lt!2376561)) (_2!36603 (get!22565 lt!2376561))) s!2326))))

(declare-fun b!6419375 () Bool)

(assert (=> b!6419375 (= e!3894985 (not (isDefined!12915 lt!2376561)))))

(assert (= (and d!2012750 res!2638274) b!6419373))

(assert (= (and d!2012750 c!1172671) b!6419367))

(assert (= (and d!2012750 (not c!1172671)) b!6419370))

(assert (= (and b!6419370 c!1172670) b!6419369))

(assert (= (and b!6419370 (not c!1172670)) b!6419371))

(assert (= (and d!2012750 res!2638277) b!6419372))

(assert (= (and b!6419372 res!2638278) b!6419368))

(assert (= (and b!6419368 res!2638276) b!6419374))

(assert (= (and d!2012750 (not res!2638275)) b!6419375))

(declare-fun m!7214188 () Bool)

(assert (=> d!2012750 m!7214188))

(declare-fun m!7214190 () Bool)

(assert (=> d!2012750 m!7214190))

(assert (=> d!2012750 m!7213702))

(declare-fun m!7214192 () Bool)

(assert (=> b!6419372 m!7214192))

(declare-fun m!7214194 () Bool)

(assert (=> b!6419372 m!7214194))

(declare-fun m!7214196 () Bool)

(assert (=> b!6419373 m!7214196))

(declare-fun m!7214198 () Bool)

(assert (=> b!6419371 m!7214198))

(assert (=> b!6419371 m!7214198))

(declare-fun m!7214204 () Bool)

(assert (=> b!6419371 m!7214204))

(declare-fun m!7214208 () Bool)

(assert (=> b!6419371 m!7214208))

(assert (=> b!6419371 m!7214198))

(declare-fun m!7214210 () Bool)

(assert (=> b!6419371 m!7214210))

(assert (=> b!6419368 m!7214192))

(declare-fun m!7214212 () Bool)

(assert (=> b!6419368 m!7214212))

(assert (=> b!6419375 m!7214188))

(assert (=> b!6419374 m!7214192))

(declare-fun m!7214214 () Bool)

(assert (=> b!6419374 m!7214214))

(assert (=> b!6418765 d!2012750))

(declare-fun d!2012774 () Bool)

(assert (=> d!2012774 (= (Exists!3391 lambda!354552) (choose!47692 lambda!354552))))

(declare-fun bs!1614090 () Bool)

(assert (= bs!1614090 d!2012774))

(declare-fun m!7214216 () Bool)

(assert (=> bs!1614090 m!7214216))

(assert (=> b!6418765 d!2012774))

(declare-fun d!2012776 () Bool)

(declare-fun isEmpty!37296 (Option!16212) Bool)

(assert (=> d!2012776 (= (isDefined!12915 lt!2376476) (not (isEmpty!37296 lt!2376476)))))

(declare-fun bs!1614091 () Bool)

(assert (= bs!1614091 d!2012776))

(declare-fun m!7214218 () Bool)

(assert (=> bs!1614091 m!7214218))

(assert (=> b!6418765 d!2012776))

(declare-fun bs!1614092 () Bool)

(declare-fun d!2012778 () Bool)

(assert (= bs!1614092 (and d!2012778 b!6419165)))

(declare-fun lambda!354607 () Int)

(assert (=> bs!1614092 (not (= lambda!354607 lambda!354580))))

(declare-fun bs!1614093 () Bool)

(assert (= bs!1614093 (and d!2012778 d!2012724)))

(assert (=> bs!1614093 (= lambda!354607 lambda!354595)))

(declare-fun bs!1614094 () Bool)

(assert (= bs!1614094 (and d!2012778 b!6419162)))

(assert (=> bs!1614094 (not (= lambda!354607 lambda!354579))))

(declare-fun bs!1614095 () Bool)

(assert (= bs!1614095 (and d!2012778 b!6418776)))

(assert (=> bs!1614095 (= (= lt!2376449 (regOne!33154 r!7292)) (= lambda!354607 lambda!354549))))

(assert (=> bs!1614095 (not (= lambda!354607 lambda!354550))))

(declare-fun bs!1614096 () Bool)

(assert (= bs!1614096 (and d!2012778 b!6418765)))

(assert (=> bs!1614096 (= lambda!354607 lambda!354552)))

(assert (=> bs!1614096 (not (= lambda!354607 lambda!354553))))

(assert (=> d!2012778 true))

(assert (=> d!2012778 true))

(assert (=> d!2012778 true))

(declare-fun lambda!354608 () Int)

(assert (=> bs!1614092 (= (and (= s!2326 (_1!36603 lt!2376459)) (= lt!2376449 (regOne!33154 lt!2376449)) (= (regTwo!33154 r!7292) (regTwo!33154 lt!2376449))) (= lambda!354608 lambda!354580))))

(assert (=> bs!1614093 (not (= lambda!354608 lambda!354595))))

(assert (=> bs!1614094 (not (= lambda!354608 lambda!354579))))

(assert (=> bs!1614095 (not (= lambda!354608 lambda!354549))))

(assert (=> bs!1614095 (= (= lt!2376449 (regOne!33154 r!7292)) (= lambda!354608 lambda!354550))))

(declare-fun bs!1614097 () Bool)

(assert (= bs!1614097 d!2012778))

(assert (=> bs!1614097 (not (= lambda!354608 lambda!354607))))

(assert (=> bs!1614096 (not (= lambda!354608 lambda!354552))))

(assert (=> bs!1614096 (= lambda!354608 lambda!354553)))

(assert (=> d!2012778 true))

(assert (=> d!2012778 true))

(assert (=> d!2012778 true))

(assert (=> d!2012778 (= (Exists!3391 lambda!354607) (Exists!3391 lambda!354608))))

(declare-fun lt!2376570 () Unit!158615)

(declare-fun choose!47694 (Regex!16321 Regex!16321 List!65262) Unit!158615)

(assert (=> d!2012778 (= lt!2376570 (choose!47694 lt!2376449 (regTwo!33154 r!7292) s!2326))))

(assert (=> d!2012778 (validRegex!8057 lt!2376449)))

(assert (=> d!2012778 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1928 lt!2376449 (regTwo!33154 r!7292) s!2326) lt!2376570)))

(declare-fun m!7214240 () Bool)

(assert (=> bs!1614097 m!7214240))

(declare-fun m!7214242 () Bool)

(assert (=> bs!1614097 m!7214242))

(declare-fun m!7214244 () Bool)

(assert (=> bs!1614097 m!7214244))

(assert (=> bs!1614097 m!7213702))

(assert (=> b!6418765 d!2012778))

(declare-fun bm!551912 () Bool)

(declare-fun call!551918 () Bool)

(declare-fun call!551919 () Bool)

(assert (=> bm!551912 (= call!551918 call!551919)))

(declare-fun b!6419415 () Bool)

(declare-fun e!3895018 () Bool)

(declare-fun e!3895016 () Bool)

(assert (=> b!6419415 (= e!3895018 e!3895016)))

(declare-fun c!1172685 () Bool)

(assert (=> b!6419415 (= c!1172685 ((_ is Union!16321) lt!2376449))))

(declare-fun b!6419416 () Bool)

(declare-fun e!3895015 () Bool)

(declare-fun call!551917 () Bool)

(assert (=> b!6419416 (= e!3895015 call!551917)))

(declare-fun b!6419417 () Bool)

(declare-fun e!3895014 () Bool)

(assert (=> b!6419417 (= e!3895018 e!3895014)))

(declare-fun res!2638298 () Bool)

(assert (=> b!6419417 (= res!2638298 (not (nullable!6314 (reg!16650 lt!2376449))))))

(assert (=> b!6419417 (=> (not res!2638298) (not e!3895014))))

(declare-fun b!6419418 () Bool)

(declare-fun res!2638295 () Bool)

(declare-fun e!3895017 () Bool)

(assert (=> b!6419418 (=> (not res!2638295) (not e!3895017))))

(assert (=> b!6419418 (= res!2638295 call!551918)))

(assert (=> b!6419418 (= e!3895016 e!3895017)))

(declare-fun b!6419419 () Bool)

(assert (=> b!6419419 (= e!3895014 call!551919)))

(declare-fun d!2012786 () Bool)

(declare-fun res!2638297 () Bool)

(declare-fun e!3895013 () Bool)

(assert (=> d!2012786 (=> res!2638297 e!3895013)))

(assert (=> d!2012786 (= res!2638297 ((_ is ElementMatch!16321) lt!2376449))))

(assert (=> d!2012786 (= (validRegex!8057 lt!2376449) e!3895013)))

(declare-fun b!6419420 () Bool)

(declare-fun res!2638296 () Bool)

(declare-fun e!3895019 () Bool)

(assert (=> b!6419420 (=> res!2638296 e!3895019)))

(assert (=> b!6419420 (= res!2638296 (not ((_ is Concat!25166) lt!2376449)))))

(assert (=> b!6419420 (= e!3895016 e!3895019)))

(declare-fun bm!551913 () Bool)

(assert (=> bm!551913 (= call!551917 (validRegex!8057 (ite c!1172685 (regTwo!33155 lt!2376449) (regTwo!33154 lt!2376449))))))

(declare-fun b!6419421 () Bool)

(assert (=> b!6419421 (= e!3895019 e!3895015)))

(declare-fun res!2638294 () Bool)

(assert (=> b!6419421 (=> (not res!2638294) (not e!3895015))))

(assert (=> b!6419421 (= res!2638294 call!551918)))

(declare-fun b!6419422 () Bool)

(assert (=> b!6419422 (= e!3895013 e!3895018)))

(declare-fun c!1172684 () Bool)

(assert (=> b!6419422 (= c!1172684 ((_ is Star!16321) lt!2376449))))

(declare-fun bm!551914 () Bool)

(assert (=> bm!551914 (= call!551919 (validRegex!8057 (ite c!1172684 (reg!16650 lt!2376449) (ite c!1172685 (regOne!33155 lt!2376449) (regOne!33154 lt!2376449)))))))

(declare-fun b!6419423 () Bool)

(assert (=> b!6419423 (= e!3895017 call!551917)))

(assert (= (and d!2012786 (not res!2638297)) b!6419422))

(assert (= (and b!6419422 c!1172684) b!6419417))

(assert (= (and b!6419422 (not c!1172684)) b!6419415))

(assert (= (and b!6419417 res!2638298) b!6419419))

(assert (= (and b!6419415 c!1172685) b!6419418))

(assert (= (and b!6419415 (not c!1172685)) b!6419420))

(assert (= (and b!6419418 res!2638295) b!6419423))

(assert (= (and b!6419420 (not res!2638296)) b!6419421))

(assert (= (and b!6419421 res!2638294) b!6419416))

(assert (= (or b!6419423 b!6419416) bm!551913))

(assert (= (or b!6419418 b!6419421) bm!551912))

(assert (= (or b!6419419 bm!551912) bm!551914))

(declare-fun m!7214246 () Bool)

(assert (=> b!6419417 m!7214246))

(declare-fun m!7214248 () Bool)

(assert (=> bm!551913 m!7214248))

(declare-fun m!7214250 () Bool)

(assert (=> bm!551914 m!7214250))

(assert (=> b!6418767 d!2012786))

(declare-fun d!2012788 () Bool)

(declare-fun c!1172686 () Bool)

(assert (=> d!2012788 (= c!1172686 (isEmpty!37293 (t!378876 s!2326)))))

(declare-fun e!3895020 () Bool)

(assert (=> d!2012788 (= (matchZipper!2333 lt!2376474 (t!378876 s!2326)) e!3895020)))

(declare-fun b!6419424 () Bool)

(assert (=> b!6419424 (= e!3895020 (nullableZipper!2085 lt!2376474))))

(declare-fun b!6419425 () Bool)

(assert (=> b!6419425 (= e!3895020 (matchZipper!2333 (derivationStepZipper!2287 lt!2376474 (head!13133 (t!378876 s!2326))) (tail!12218 (t!378876 s!2326))))))

(assert (= (and d!2012788 c!1172686) b!6419424))

(assert (= (and d!2012788 (not c!1172686)) b!6419425))

(assert (=> d!2012788 m!7213930))

(declare-fun m!7214252 () Bool)

(assert (=> b!6419424 m!7214252))

(assert (=> b!6419425 m!7213934))

(assert (=> b!6419425 m!7213934))

(declare-fun m!7214254 () Bool)

(assert (=> b!6419425 m!7214254))

(assert (=> b!6419425 m!7213938))

(assert (=> b!6419425 m!7214254))

(assert (=> b!6419425 m!7213938))

(declare-fun m!7214256 () Bool)

(assert (=> b!6419425 m!7214256))

(assert (=> b!6418766 d!2012788))

(declare-fun d!2012790 () Bool)

(assert (=> d!2012790 (= (flatMap!1826 lt!2376464 lambda!354551) (choose!47684 lt!2376464 lambda!354551))))

(declare-fun bs!1614098 () Bool)

(assert (= bs!1614098 d!2012790))

(declare-fun m!7214258 () Bool)

(assert (=> bs!1614098 m!7214258))

(assert (=> b!6418763 d!2012790))

(declare-fun call!551920 () (InoxSet Context!11410))

(declare-fun b!6419426 () Bool)

(declare-fun e!3895021 () (InoxSet Context!11410))

(assert (=> b!6419426 (= e!3895021 ((_ map or) call!551920 (derivationStepZipperUp!1495 (Context!11411 (t!378877 (exprs!6205 lt!2376471))) (h!71586 s!2326))))))

(declare-fun b!6419427 () Bool)

(declare-fun e!3895022 () (InoxSet Context!11410))

(assert (=> b!6419427 (= e!3895022 call!551920)))

(declare-fun b!6419428 () Bool)

(assert (=> b!6419428 (= e!3895021 e!3895022)))

(declare-fun c!1172687 () Bool)

(assert (=> b!6419428 (= c!1172687 ((_ is Cons!65139) (exprs!6205 lt!2376471)))))

(declare-fun d!2012792 () Bool)

(declare-fun c!1172688 () Bool)

(declare-fun e!3895023 () Bool)

(assert (=> d!2012792 (= c!1172688 e!3895023)))

(declare-fun res!2638299 () Bool)

(assert (=> d!2012792 (=> (not res!2638299) (not e!3895023))))

(assert (=> d!2012792 (= res!2638299 ((_ is Cons!65139) (exprs!6205 lt!2376471)))))

(assert (=> d!2012792 (= (derivationStepZipperUp!1495 lt!2376471 (h!71586 s!2326)) e!3895021)))

(declare-fun b!6419429 () Bool)

(assert (=> b!6419429 (= e!3895023 (nullable!6314 (h!71587 (exprs!6205 lt!2376471))))))

(declare-fun bm!551915 () Bool)

(assert (=> bm!551915 (= call!551920 (derivationStepZipperDown!1569 (h!71587 (exprs!6205 lt!2376471)) (Context!11411 (t!378877 (exprs!6205 lt!2376471))) (h!71586 s!2326)))))

(declare-fun b!6419430 () Bool)

(assert (=> b!6419430 (= e!3895022 ((as const (Array Context!11410 Bool)) false))))

(assert (= (and d!2012792 res!2638299) b!6419429))

(assert (= (and d!2012792 c!1172688) b!6419426))

(assert (= (and d!2012792 (not c!1172688)) b!6419428))

(assert (= (and b!6419428 c!1172687) b!6419427))

(assert (= (and b!6419428 (not c!1172687)) b!6419430))

(assert (= (or b!6419426 b!6419427) bm!551915))

(declare-fun m!7214260 () Bool)

(assert (=> b!6419426 m!7214260))

(declare-fun m!7214262 () Bool)

(assert (=> b!6419429 m!7214262))

(declare-fun m!7214264 () Bool)

(assert (=> bm!551915 m!7214264))

(assert (=> b!6418763 d!2012792))

(declare-fun d!2012794 () Bool)

(assert (=> d!2012794 (= (flatMap!1826 lt!2376464 lambda!354551) (dynLambda!25875 lambda!354551 lt!2376471))))

(declare-fun lt!2376573 () Unit!158615)

(assert (=> d!2012794 (= lt!2376573 (choose!47683 lt!2376464 lt!2376471 lambda!354551))))

(assert (=> d!2012794 (= lt!2376464 (store ((as const (Array Context!11410 Bool)) false) lt!2376471 true))))

(assert (=> d!2012794 (= (lemmaFlatMapOnSingletonSet!1352 lt!2376464 lt!2376471 lambda!354551) lt!2376573)))

(declare-fun b_lambda!244021 () Bool)

(assert (=> (not b_lambda!244021) (not d!2012794)))

(declare-fun bs!1614099 () Bool)

(assert (= bs!1614099 d!2012794))

(assert (=> bs!1614099 m!7213782))

(declare-fun m!7214266 () Bool)

(assert (=> bs!1614099 m!7214266))

(declare-fun m!7214268 () Bool)

(assert (=> bs!1614099 m!7214268))

(assert (=> bs!1614099 m!7213778))

(assert (=> b!6418763 d!2012794))

(declare-fun bs!1614104 () Bool)

(declare-fun d!2012796 () Bool)

(assert (= bs!1614104 (and d!2012796 b!6418769)))

(declare-fun lambda!354614 () Int)

(assert (=> bs!1614104 (= lambda!354614 lambda!354551)))

(assert (=> d!2012796 true))

(assert (=> d!2012796 (= (derivationStepZipper!2287 lt!2376464 (h!71586 s!2326)) (flatMap!1826 lt!2376464 lambda!354614))))

(declare-fun bs!1614105 () Bool)

(assert (= bs!1614105 d!2012796))

(declare-fun m!7214288 () Bool)

(assert (=> bs!1614105 m!7214288))

(assert (=> b!6418763 d!2012796))

(declare-fun bs!1614106 () Bool)

(declare-fun d!2012800 () Bool)

(assert (= bs!1614106 (and d!2012800 d!2012638)))

(declare-fun lambda!354617 () Int)

(assert (=> bs!1614106 (= lambda!354617 lambda!354556)))

(declare-fun bs!1614107 () Bool)

(assert (= bs!1614107 (and d!2012800 d!2012640)))

(assert (=> bs!1614107 (= lambda!354617 lambda!354559)))

(declare-fun bs!1614108 () Bool)

(assert (= bs!1614108 (and d!2012800 d!2012722)))

(assert (=> bs!1614108 (= lambda!354617 lambda!354590)))

(assert (=> d!2012800 (= (inv!84049 (h!71588 zl!343)) (forall!15510 (exprs!6205 (h!71588 zl!343)) lambda!354617))))

(declare-fun bs!1614109 () Bool)

(assert (= bs!1614109 d!2012800))

(declare-fun m!7214296 () Bool)

(assert (=> bs!1614109 m!7214296))

(assert (=> b!6418783 d!2012800))

(declare-fun b!6419448 () Bool)

(declare-fun e!3895035 () Bool)

(assert (=> b!6419448 (= e!3895035 (= (head!13133 s!2326) (c!1172498 lt!2376463)))))

(declare-fun b!6419449 () Bool)

(declare-fun res!2638306 () Bool)

(assert (=> b!6419449 (=> (not res!2638306) (not e!3895035))))

(declare-fun call!551921 () Bool)

(assert (=> b!6419449 (= res!2638306 (not call!551921))))

(declare-fun b!6419450 () Bool)

(declare-fun e!3895034 () Bool)

(assert (=> b!6419450 (= e!3895034 (matchR!8504 (derivativeStep!5025 lt!2376463 (head!13133 s!2326)) (tail!12218 s!2326)))))

(declare-fun b!6419451 () Bool)

(declare-fun e!3895036 () Bool)

(declare-fun e!3895039 () Bool)

(assert (=> b!6419451 (= e!3895036 e!3895039)))

(declare-fun c!1172696 () Bool)

(assert (=> b!6419451 (= c!1172696 ((_ is EmptyLang!16321) lt!2376463))))

(declare-fun b!6419452 () Bool)

(declare-fun res!2638310 () Bool)

(declare-fun e!3895040 () Bool)

(assert (=> b!6419452 (=> res!2638310 e!3895040)))

(assert (=> b!6419452 (= res!2638310 (not (isEmpty!37293 (tail!12218 s!2326))))))

(declare-fun b!6419453 () Bool)

(declare-fun res!2638312 () Bool)

(declare-fun e!3895038 () Bool)

(assert (=> b!6419453 (=> res!2638312 e!3895038)))

(assert (=> b!6419453 (= res!2638312 e!3895035)))

(declare-fun res!2638307 () Bool)

(assert (=> b!6419453 (=> (not res!2638307) (not e!3895035))))

(declare-fun lt!2376578 () Bool)

(assert (=> b!6419453 (= res!2638307 lt!2376578)))

(declare-fun b!6419454 () Bool)

(assert (=> b!6419454 (= e!3895034 (nullable!6314 lt!2376463))))

(declare-fun d!2012804 () Bool)

(assert (=> d!2012804 e!3895036))

(declare-fun c!1172697 () Bool)

(assert (=> d!2012804 (= c!1172697 ((_ is EmptyExpr!16321) lt!2376463))))

(assert (=> d!2012804 (= lt!2376578 e!3895034)))

(declare-fun c!1172698 () Bool)

(assert (=> d!2012804 (= c!1172698 (isEmpty!37293 s!2326))))

(assert (=> d!2012804 (validRegex!8057 lt!2376463)))

(assert (=> d!2012804 (= (matchR!8504 lt!2376463 s!2326) lt!2376578)))

(declare-fun b!6419455 () Bool)

(declare-fun res!2638305 () Bool)

(assert (=> b!6419455 (=> res!2638305 e!3895038)))

(assert (=> b!6419455 (= res!2638305 (not ((_ is ElementMatch!16321) lt!2376463)))))

(assert (=> b!6419455 (= e!3895039 e!3895038)))

(declare-fun bm!551916 () Bool)

(assert (=> bm!551916 (= call!551921 (isEmpty!37293 s!2326))))

(declare-fun b!6419456 () Bool)

(declare-fun res!2638309 () Bool)

(assert (=> b!6419456 (=> (not res!2638309) (not e!3895035))))

(assert (=> b!6419456 (= res!2638309 (isEmpty!37293 (tail!12218 s!2326)))))

(declare-fun b!6419457 () Bool)

(assert (=> b!6419457 (= e!3895036 (= lt!2376578 call!551921))))

(declare-fun b!6419458 () Bool)

(assert (=> b!6419458 (= e!3895039 (not lt!2376578))))

(declare-fun b!6419459 () Bool)

(declare-fun e!3895037 () Bool)

(assert (=> b!6419459 (= e!3895037 e!3895040)))

(declare-fun res!2638311 () Bool)

(assert (=> b!6419459 (=> res!2638311 e!3895040)))

(assert (=> b!6419459 (= res!2638311 call!551921)))

(declare-fun b!6419460 () Bool)

(assert (=> b!6419460 (= e!3895038 e!3895037)))

(declare-fun res!2638308 () Bool)

(assert (=> b!6419460 (=> (not res!2638308) (not e!3895037))))

(assert (=> b!6419460 (= res!2638308 (not lt!2376578))))

(declare-fun b!6419461 () Bool)

(assert (=> b!6419461 (= e!3895040 (not (= (head!13133 s!2326) (c!1172498 lt!2376463))))))

(assert (= (and d!2012804 c!1172698) b!6419454))

(assert (= (and d!2012804 (not c!1172698)) b!6419450))

(assert (= (and d!2012804 c!1172697) b!6419457))

(assert (= (and d!2012804 (not c!1172697)) b!6419451))

(assert (= (and b!6419451 c!1172696) b!6419458))

(assert (= (and b!6419451 (not c!1172696)) b!6419455))

(assert (= (and b!6419455 (not res!2638305)) b!6419453))

(assert (= (and b!6419453 res!2638307) b!6419449))

(assert (= (and b!6419449 res!2638306) b!6419456))

(assert (= (and b!6419456 res!2638309) b!6419448))

(assert (= (and b!6419453 (not res!2638312)) b!6419460))

(assert (= (and b!6419460 res!2638308) b!6419459))

(assert (= (and b!6419459 (not res!2638311)) b!6419452))

(assert (= (and b!6419452 (not res!2638310)) b!6419461))

(assert (= (or b!6419457 b!6419449 b!6419459) bm!551916))

(assert (=> bm!551916 m!7213902))

(assert (=> b!6419450 m!7213906))

(assert (=> b!6419450 m!7213906))

(declare-fun m!7214304 () Bool)

(assert (=> b!6419450 m!7214304))

(assert (=> b!6419450 m!7213912))

(assert (=> b!6419450 m!7214304))

(assert (=> b!6419450 m!7213912))

(declare-fun m!7214306 () Bool)

(assert (=> b!6419450 m!7214306))

(assert (=> b!6419452 m!7213912))

(assert (=> b!6419452 m!7213912))

(declare-fun m!7214308 () Bool)

(assert (=> b!6419452 m!7214308))

(assert (=> d!2012804 m!7213902))

(declare-fun m!7214310 () Bool)

(assert (=> d!2012804 m!7214310))

(assert (=> b!6419461 m!7213906))

(assert (=> b!6419448 m!7213906))

(declare-fun m!7214312 () Bool)

(assert (=> b!6419454 m!7214312))

(assert (=> b!6419456 m!7213912))

(assert (=> b!6419456 m!7213912))

(assert (=> b!6419456 m!7214308))

(assert (=> b!6418760 d!2012804))

(declare-fun bs!1614117 () Bool)

(declare-fun b!6419480 () Bool)

(assert (= bs!1614117 (and b!6419480 b!6419165)))

(declare-fun lambda!354619 () Int)

(assert (=> bs!1614117 (not (= lambda!354619 lambda!354580))))

(declare-fun bs!1614119 () Bool)

(assert (= bs!1614119 (and b!6419480 d!2012724)))

(assert (=> bs!1614119 (not (= lambda!354619 lambda!354595))))

(declare-fun bs!1614120 () Bool)

(assert (= bs!1614120 (and b!6419480 b!6419162)))

(assert (=> bs!1614120 (= (and (= s!2326 (_1!36603 lt!2376459)) (= (reg!16650 lt!2376463) (reg!16650 lt!2376449)) (= lt!2376463 lt!2376449)) (= lambda!354619 lambda!354579))))

(declare-fun bs!1614121 () Bool)

(assert (= bs!1614121 (and b!6419480 b!6418776)))

(assert (=> bs!1614121 (not (= lambda!354619 lambda!354549))))

(declare-fun bs!1614122 () Bool)

(assert (= bs!1614122 (and b!6419480 d!2012778)))

(assert (=> bs!1614122 (not (= lambda!354619 lambda!354608))))

(assert (=> bs!1614121 (not (= lambda!354619 lambda!354550))))

(assert (=> bs!1614122 (not (= lambda!354619 lambda!354607))))

(declare-fun bs!1614123 () Bool)

(assert (= bs!1614123 (and b!6419480 b!6418765)))

(assert (=> bs!1614123 (not (= lambda!354619 lambda!354552))))

(assert (=> bs!1614123 (not (= lambda!354619 lambda!354553))))

(assert (=> b!6419480 true))

(assert (=> b!6419480 true))

(declare-fun bs!1614129 () Bool)

(declare-fun b!6419483 () Bool)

(assert (= bs!1614129 (and b!6419483 b!6419480)))

(declare-fun lambda!354621 () Int)

(assert (=> bs!1614129 (not (= lambda!354621 lambda!354619))))

(declare-fun bs!1614131 () Bool)

(assert (= bs!1614131 (and b!6419483 b!6419165)))

(assert (=> bs!1614131 (= (and (= s!2326 (_1!36603 lt!2376459)) (= (regOne!33154 lt!2376463) (regOne!33154 lt!2376449)) (= (regTwo!33154 lt!2376463) (regTwo!33154 lt!2376449))) (= lambda!354621 lambda!354580))))

(declare-fun bs!1614133 () Bool)

(assert (= bs!1614133 (and b!6419483 d!2012724)))

(assert (=> bs!1614133 (not (= lambda!354621 lambda!354595))))

(declare-fun bs!1614135 () Bool)

(assert (= bs!1614135 (and b!6419483 b!6419162)))

(assert (=> bs!1614135 (not (= lambda!354621 lambda!354579))))

(declare-fun bs!1614137 () Bool)

(assert (= bs!1614137 (and b!6419483 b!6418776)))

(assert (=> bs!1614137 (not (= lambda!354621 lambda!354549))))

(declare-fun bs!1614138 () Bool)

(assert (= bs!1614138 (and b!6419483 d!2012778)))

(assert (=> bs!1614138 (= (and (= (regOne!33154 lt!2376463) lt!2376449) (= (regTwo!33154 lt!2376463) (regTwo!33154 r!7292))) (= lambda!354621 lambda!354608))))

(assert (=> bs!1614137 (= (and (= (regOne!33154 lt!2376463) (regOne!33154 r!7292)) (= (regTwo!33154 lt!2376463) (regTwo!33154 r!7292))) (= lambda!354621 lambda!354550))))

(assert (=> bs!1614138 (not (= lambda!354621 lambda!354607))))

(declare-fun bs!1614139 () Bool)

(assert (= bs!1614139 (and b!6419483 b!6418765)))

(assert (=> bs!1614139 (not (= lambda!354621 lambda!354552))))

(assert (=> bs!1614139 (= (and (= (regOne!33154 lt!2376463) lt!2376449) (= (regTwo!33154 lt!2376463) (regTwo!33154 r!7292))) (= lambda!354621 lambda!354553))))

(assert (=> b!6419483 true))

(assert (=> b!6419483 true))

(declare-fun d!2012808 () Bool)

(declare-fun c!1172706 () Bool)

(assert (=> d!2012808 (= c!1172706 ((_ is EmptyExpr!16321) lt!2376463))))

(declare-fun e!3895050 () Bool)

(assert (=> d!2012808 (= (matchRSpec!3422 lt!2376463 s!2326) e!3895050)))

(declare-fun b!6419473 () Bool)

(declare-fun call!551924 () Bool)

(assert (=> b!6419473 (= e!3895050 call!551924)))

(declare-fun b!6419474 () Bool)

(declare-fun c!1172705 () Bool)

(assert (=> b!6419474 (= c!1172705 ((_ is Union!16321) lt!2376463))))

(declare-fun e!3895049 () Bool)

(declare-fun e!3895048 () Bool)

(assert (=> b!6419474 (= e!3895049 e!3895048)))

(declare-fun bm!551919 () Bool)

(assert (=> bm!551919 (= call!551924 (isEmpty!37293 s!2326))))

(declare-fun b!6419475 () Bool)

(assert (=> b!6419475 (= e!3895049 (= s!2326 (Cons!65138 (c!1172498 lt!2376463) Nil!65138)))))

(declare-fun b!6419476 () Bool)

(declare-fun res!2638317 () Bool)

(declare-fun e!3895054 () Bool)

(assert (=> b!6419476 (=> res!2638317 e!3895054)))

(assert (=> b!6419476 (= res!2638317 call!551924)))

(declare-fun e!3895052 () Bool)

(assert (=> b!6419476 (= e!3895052 e!3895054)))

(declare-fun b!6419477 () Bool)

(declare-fun e!3895051 () Bool)

(assert (=> b!6419477 (= e!3895051 (matchRSpec!3422 (regTwo!33155 lt!2376463) s!2326))))

(declare-fun b!6419478 () Bool)

(declare-fun c!1172703 () Bool)

(assert (=> b!6419478 (= c!1172703 ((_ is ElementMatch!16321) lt!2376463))))

(declare-fun e!3895053 () Bool)

(assert (=> b!6419478 (= e!3895053 e!3895049)))

(declare-fun b!6419479 () Bool)

(assert (=> b!6419479 (= e!3895048 e!3895052)))

(declare-fun c!1172704 () Bool)

(assert (=> b!6419479 (= c!1172704 ((_ is Star!16321) lt!2376463))))

(declare-fun call!551925 () Bool)

(assert (=> b!6419480 (= e!3895054 call!551925)))

(declare-fun b!6419481 () Bool)

(assert (=> b!6419481 (= e!3895050 e!3895053)))

(declare-fun res!2638318 () Bool)

(assert (=> b!6419481 (= res!2638318 (not ((_ is EmptyLang!16321) lt!2376463)))))

(assert (=> b!6419481 (=> (not res!2638318) (not e!3895053))))

(declare-fun b!6419482 () Bool)

(assert (=> b!6419482 (= e!3895048 e!3895051)))

(declare-fun res!2638316 () Bool)

(assert (=> b!6419482 (= res!2638316 (matchRSpec!3422 (regOne!33155 lt!2376463) s!2326))))

(assert (=> b!6419482 (=> res!2638316 e!3895051)))

(declare-fun bm!551920 () Bool)

(assert (=> bm!551920 (= call!551925 (Exists!3391 (ite c!1172704 lambda!354619 lambda!354621)))))

(assert (=> b!6419483 (= e!3895052 call!551925)))

(assert (= (and d!2012808 c!1172706) b!6419473))

(assert (= (and d!2012808 (not c!1172706)) b!6419481))

(assert (= (and b!6419481 res!2638318) b!6419478))

(assert (= (and b!6419478 c!1172703) b!6419475))

(assert (= (and b!6419478 (not c!1172703)) b!6419474))

(assert (= (and b!6419474 c!1172705) b!6419482))

(assert (= (and b!6419474 (not c!1172705)) b!6419479))

(assert (= (and b!6419482 (not res!2638316)) b!6419477))

(assert (= (and b!6419479 c!1172704) b!6419476))

(assert (= (and b!6419479 (not c!1172704)) b!6419483))

(assert (= (and b!6419476 (not res!2638317)) b!6419480))

(assert (= (or b!6419480 b!6419483) bm!551920))

(assert (= (or b!6419473 b!6419476) bm!551919))

(assert (=> bm!551919 m!7213902))

(declare-fun m!7214320 () Bool)

(assert (=> b!6419477 m!7214320))

(declare-fun m!7214322 () Bool)

(assert (=> b!6419482 m!7214322))

(declare-fun m!7214324 () Bool)

(assert (=> bm!551920 m!7214324))

(assert (=> b!6418760 d!2012808))

(declare-fun d!2012812 () Bool)

(assert (=> d!2012812 (= (matchR!8504 lt!2376463 s!2326) (matchRSpec!3422 lt!2376463 s!2326))))

(declare-fun lt!2376580 () Unit!158615)

(assert (=> d!2012812 (= lt!2376580 (choose!47682 lt!2376463 s!2326))))

(assert (=> d!2012812 (validRegex!8057 lt!2376463)))

(assert (=> d!2012812 (= (mainMatchTheorem!3422 lt!2376463 s!2326) lt!2376580)))

(declare-fun bs!1614140 () Bool)

(assert (= bs!1614140 d!2012812))

(assert (=> bs!1614140 m!7213744))

(assert (=> bs!1614140 m!7213746))

(declare-fun m!7214326 () Bool)

(assert (=> bs!1614140 m!7214326))

(assert (=> bs!1614140 m!7214310))

(assert (=> b!6418760 d!2012812))

(declare-fun d!2012814 () Bool)

(declare-fun lt!2376581 () Regex!16321)

(assert (=> d!2012814 (validRegex!8057 lt!2376581)))

(assert (=> d!2012814 (= lt!2376581 (generalisedUnion!2165 (unfocusZipperList!1742 zl!343)))))

(assert (=> d!2012814 (= (unfocusZipper!2063 zl!343) lt!2376581)))

(declare-fun bs!1614141 () Bool)

(assert (= bs!1614141 d!2012814))

(declare-fun m!7214328 () Bool)

(assert (=> bs!1614141 m!7214328))

(assert (=> bs!1614141 m!7213692))

(assert (=> bs!1614141 m!7213692))

(assert (=> bs!1614141 m!7213694))

(assert (=> b!6418781 d!2012814))

(declare-fun bs!1614143 () Bool)

(declare-fun b!6419505 () Bool)

(assert (= bs!1614143 (and b!6419505 b!6419480)))

(declare-fun lambda!354622 () Int)

(assert (=> bs!1614143 (= (and (= (reg!16650 r!7292) (reg!16650 lt!2376463)) (= r!7292 lt!2376463)) (= lambda!354622 lambda!354619))))

(declare-fun bs!1614144 () Bool)

(assert (= bs!1614144 (and b!6419505 b!6419165)))

(assert (=> bs!1614144 (not (= lambda!354622 lambda!354580))))

(declare-fun bs!1614145 () Bool)

(assert (= bs!1614145 (and b!6419505 b!6419483)))

(assert (=> bs!1614145 (not (= lambda!354622 lambda!354621))))

(declare-fun bs!1614146 () Bool)

(assert (= bs!1614146 (and b!6419505 d!2012724)))

(assert (=> bs!1614146 (not (= lambda!354622 lambda!354595))))

(declare-fun bs!1614147 () Bool)

(assert (= bs!1614147 (and b!6419505 b!6419162)))

(assert (=> bs!1614147 (= (and (= s!2326 (_1!36603 lt!2376459)) (= (reg!16650 r!7292) (reg!16650 lt!2376449)) (= r!7292 lt!2376449)) (= lambda!354622 lambda!354579))))

(declare-fun bs!1614148 () Bool)

(assert (= bs!1614148 (and b!6419505 b!6418776)))

(assert (=> bs!1614148 (not (= lambda!354622 lambda!354549))))

(declare-fun bs!1614149 () Bool)

(assert (= bs!1614149 (and b!6419505 d!2012778)))

(assert (=> bs!1614149 (not (= lambda!354622 lambda!354608))))

(assert (=> bs!1614148 (not (= lambda!354622 lambda!354550))))

(assert (=> bs!1614149 (not (= lambda!354622 lambda!354607))))

(declare-fun bs!1614150 () Bool)

(assert (= bs!1614150 (and b!6419505 b!6418765)))

(assert (=> bs!1614150 (not (= lambda!354622 lambda!354552))))

(assert (=> bs!1614150 (not (= lambda!354622 lambda!354553))))

(assert (=> b!6419505 true))

(assert (=> b!6419505 true))

(declare-fun bs!1614151 () Bool)

(declare-fun b!6419508 () Bool)

(assert (= bs!1614151 (and b!6419508 b!6419480)))

(declare-fun lambda!354623 () Int)

(assert (=> bs!1614151 (not (= lambda!354623 lambda!354619))))

(declare-fun bs!1614152 () Bool)

(assert (= bs!1614152 (and b!6419508 b!6419165)))

(assert (=> bs!1614152 (= (and (= s!2326 (_1!36603 lt!2376459)) (= (regOne!33154 r!7292) (regOne!33154 lt!2376449)) (= (regTwo!33154 r!7292) (regTwo!33154 lt!2376449))) (= lambda!354623 lambda!354580))))

(declare-fun bs!1614153 () Bool)

(assert (= bs!1614153 (and b!6419508 b!6419483)))

(assert (=> bs!1614153 (= (and (= (regOne!33154 r!7292) (regOne!33154 lt!2376463)) (= (regTwo!33154 r!7292) (regTwo!33154 lt!2376463))) (= lambda!354623 lambda!354621))))

(declare-fun bs!1614154 () Bool)

(assert (= bs!1614154 (and b!6419508 d!2012724)))

(assert (=> bs!1614154 (not (= lambda!354623 lambda!354595))))

(declare-fun bs!1614155 () Bool)

(assert (= bs!1614155 (and b!6419508 b!6419505)))

(assert (=> bs!1614155 (not (= lambda!354623 lambda!354622))))

(declare-fun bs!1614156 () Bool)

(assert (= bs!1614156 (and b!6419508 b!6419162)))

(assert (=> bs!1614156 (not (= lambda!354623 lambda!354579))))

(declare-fun bs!1614157 () Bool)

(assert (= bs!1614157 (and b!6419508 b!6418776)))

(assert (=> bs!1614157 (not (= lambda!354623 lambda!354549))))

(declare-fun bs!1614158 () Bool)

(assert (= bs!1614158 (and b!6419508 d!2012778)))

(assert (=> bs!1614158 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354623 lambda!354608))))

(assert (=> bs!1614157 (= lambda!354623 lambda!354550)))

(assert (=> bs!1614158 (not (= lambda!354623 lambda!354607))))

(declare-fun bs!1614159 () Bool)

(assert (= bs!1614159 (and b!6419508 b!6418765)))

(assert (=> bs!1614159 (not (= lambda!354623 lambda!354552))))

(assert (=> bs!1614159 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354623 lambda!354553))))

(assert (=> b!6419508 true))

(assert (=> b!6419508 true))

(declare-fun d!2012816 () Bool)

(declare-fun c!1172713 () Bool)

(assert (=> d!2012816 (= c!1172713 ((_ is EmptyExpr!16321) r!7292))))

(declare-fun e!3895064 () Bool)

(assert (=> d!2012816 (= (matchRSpec!3422 r!7292 s!2326) e!3895064)))

(declare-fun b!6419498 () Bool)

(declare-fun call!551927 () Bool)

(assert (=> b!6419498 (= e!3895064 call!551927)))

(declare-fun b!6419499 () Bool)

(declare-fun c!1172712 () Bool)

(assert (=> b!6419499 (= c!1172712 ((_ is Union!16321) r!7292))))

(declare-fun e!3895063 () Bool)

(declare-fun e!3895062 () Bool)

(assert (=> b!6419499 (= e!3895063 e!3895062)))

(declare-fun bm!551922 () Bool)

(assert (=> bm!551922 (= call!551927 (isEmpty!37293 s!2326))))

(declare-fun b!6419500 () Bool)

(assert (=> b!6419500 (= e!3895063 (= s!2326 (Cons!65138 (c!1172498 r!7292) Nil!65138)))))

(declare-fun b!6419501 () Bool)

(declare-fun res!2638328 () Bool)

(declare-fun e!3895068 () Bool)

(assert (=> b!6419501 (=> res!2638328 e!3895068)))

(assert (=> b!6419501 (= res!2638328 call!551927)))

(declare-fun e!3895066 () Bool)

(assert (=> b!6419501 (= e!3895066 e!3895068)))

(declare-fun b!6419502 () Bool)

(declare-fun e!3895065 () Bool)

(assert (=> b!6419502 (= e!3895065 (matchRSpec!3422 (regTwo!33155 r!7292) s!2326))))

(declare-fun b!6419503 () Bool)

(declare-fun c!1172710 () Bool)

(assert (=> b!6419503 (= c!1172710 ((_ is ElementMatch!16321) r!7292))))

(declare-fun e!3895067 () Bool)

(assert (=> b!6419503 (= e!3895067 e!3895063)))

(declare-fun b!6419504 () Bool)

(assert (=> b!6419504 (= e!3895062 e!3895066)))

(declare-fun c!1172711 () Bool)

(assert (=> b!6419504 (= c!1172711 ((_ is Star!16321) r!7292))))

(declare-fun call!551928 () Bool)

(assert (=> b!6419505 (= e!3895068 call!551928)))

(declare-fun b!6419506 () Bool)

(assert (=> b!6419506 (= e!3895064 e!3895067)))

(declare-fun res!2638329 () Bool)

(assert (=> b!6419506 (= res!2638329 (not ((_ is EmptyLang!16321) r!7292)))))

(assert (=> b!6419506 (=> (not res!2638329) (not e!3895067))))

(declare-fun b!6419507 () Bool)

(assert (=> b!6419507 (= e!3895062 e!3895065)))

(declare-fun res!2638327 () Bool)

(assert (=> b!6419507 (= res!2638327 (matchRSpec!3422 (regOne!33155 r!7292) s!2326))))

(assert (=> b!6419507 (=> res!2638327 e!3895065)))

(declare-fun bm!551923 () Bool)

(assert (=> bm!551923 (= call!551928 (Exists!3391 (ite c!1172711 lambda!354622 lambda!354623)))))

(assert (=> b!6419508 (= e!3895066 call!551928)))

(assert (= (and d!2012816 c!1172713) b!6419498))

(assert (= (and d!2012816 (not c!1172713)) b!6419506))

(assert (= (and b!6419506 res!2638329) b!6419503))

(assert (= (and b!6419503 c!1172710) b!6419500))

(assert (= (and b!6419503 (not c!1172710)) b!6419499))

(assert (= (and b!6419499 c!1172712) b!6419507))

(assert (= (and b!6419499 (not c!1172712)) b!6419504))

(assert (= (and b!6419507 (not res!2638327)) b!6419502))

(assert (= (and b!6419504 c!1172711) b!6419501))

(assert (= (and b!6419504 (not c!1172711)) b!6419508))

(assert (= (and b!6419501 (not res!2638328)) b!6419505))

(assert (= (or b!6419505 b!6419508) bm!551923))

(assert (= (or b!6419498 b!6419501) bm!551922))

(assert (=> bm!551922 m!7213902))

(declare-fun m!7214350 () Bool)

(assert (=> b!6419502 m!7214350))

(declare-fun m!7214352 () Bool)

(assert (=> b!6419507 m!7214352))

(declare-fun m!7214354 () Bool)

(assert (=> bm!551923 m!7214354))

(assert (=> b!6418782 d!2012816))

(declare-fun b!6419513 () Bool)

(declare-fun e!3895072 () Bool)

(assert (=> b!6419513 (= e!3895072 (= (head!13133 s!2326) (c!1172498 r!7292)))))

(declare-fun b!6419514 () Bool)

(declare-fun res!2638331 () Bool)

(assert (=> b!6419514 (=> (not res!2638331) (not e!3895072))))

(declare-fun call!551929 () Bool)

(assert (=> b!6419514 (= res!2638331 (not call!551929))))

(declare-fun b!6419515 () Bool)

(declare-fun e!3895071 () Bool)

(assert (=> b!6419515 (= e!3895071 (matchR!8504 (derivativeStep!5025 r!7292 (head!13133 s!2326)) (tail!12218 s!2326)))))

(declare-fun b!6419516 () Bool)

(declare-fun e!3895073 () Bool)

(declare-fun e!3895076 () Bool)

(assert (=> b!6419516 (= e!3895073 e!3895076)))

(declare-fun c!1172716 () Bool)

(assert (=> b!6419516 (= c!1172716 ((_ is EmptyLang!16321) r!7292))))

(declare-fun b!6419517 () Bool)

(declare-fun res!2638335 () Bool)

(declare-fun e!3895077 () Bool)

(assert (=> b!6419517 (=> res!2638335 e!3895077)))

(assert (=> b!6419517 (= res!2638335 (not (isEmpty!37293 (tail!12218 s!2326))))))

(declare-fun b!6419518 () Bool)

(declare-fun res!2638337 () Bool)

(declare-fun e!3895075 () Bool)

(assert (=> b!6419518 (=> res!2638337 e!3895075)))

(assert (=> b!6419518 (= res!2638337 e!3895072)))

(declare-fun res!2638332 () Bool)

(assert (=> b!6419518 (=> (not res!2638332) (not e!3895072))))

(declare-fun lt!2376583 () Bool)

(assert (=> b!6419518 (= res!2638332 lt!2376583)))

(declare-fun b!6419519 () Bool)

(assert (=> b!6419519 (= e!3895071 (nullable!6314 r!7292))))

(declare-fun d!2012826 () Bool)

(assert (=> d!2012826 e!3895073))

(declare-fun c!1172717 () Bool)

(assert (=> d!2012826 (= c!1172717 ((_ is EmptyExpr!16321) r!7292))))

(assert (=> d!2012826 (= lt!2376583 e!3895071)))

(declare-fun c!1172718 () Bool)

(assert (=> d!2012826 (= c!1172718 (isEmpty!37293 s!2326))))

(assert (=> d!2012826 (validRegex!8057 r!7292)))

(assert (=> d!2012826 (= (matchR!8504 r!7292 s!2326) lt!2376583)))

(declare-fun b!6419520 () Bool)

(declare-fun res!2638330 () Bool)

(assert (=> b!6419520 (=> res!2638330 e!3895075)))

(assert (=> b!6419520 (= res!2638330 (not ((_ is ElementMatch!16321) r!7292)))))

(assert (=> b!6419520 (= e!3895076 e!3895075)))

(declare-fun bm!551924 () Bool)

(assert (=> bm!551924 (= call!551929 (isEmpty!37293 s!2326))))

(declare-fun b!6419521 () Bool)

(declare-fun res!2638334 () Bool)

(assert (=> b!6419521 (=> (not res!2638334) (not e!3895072))))

(assert (=> b!6419521 (= res!2638334 (isEmpty!37293 (tail!12218 s!2326)))))

(declare-fun b!6419522 () Bool)

(assert (=> b!6419522 (= e!3895073 (= lt!2376583 call!551929))))

(declare-fun b!6419523 () Bool)

(assert (=> b!6419523 (= e!3895076 (not lt!2376583))))

(declare-fun b!6419524 () Bool)

(declare-fun e!3895074 () Bool)

(assert (=> b!6419524 (= e!3895074 e!3895077)))

(declare-fun res!2638336 () Bool)

(assert (=> b!6419524 (=> res!2638336 e!3895077)))

(assert (=> b!6419524 (= res!2638336 call!551929)))

(declare-fun b!6419525 () Bool)

(assert (=> b!6419525 (= e!3895075 e!3895074)))

(declare-fun res!2638333 () Bool)

(assert (=> b!6419525 (=> (not res!2638333) (not e!3895074))))

(assert (=> b!6419525 (= res!2638333 (not lt!2376583))))

(declare-fun b!6419526 () Bool)

(assert (=> b!6419526 (= e!3895077 (not (= (head!13133 s!2326) (c!1172498 r!7292))))))

(assert (= (and d!2012826 c!1172718) b!6419519))

(assert (= (and d!2012826 (not c!1172718)) b!6419515))

(assert (= (and d!2012826 c!1172717) b!6419522))

(assert (= (and d!2012826 (not c!1172717)) b!6419516))

(assert (= (and b!6419516 c!1172716) b!6419523))

(assert (= (and b!6419516 (not c!1172716)) b!6419520))

(assert (= (and b!6419520 (not res!2638330)) b!6419518))

(assert (= (and b!6419518 res!2638332) b!6419514))

(assert (= (and b!6419514 res!2638331) b!6419521))

(assert (= (and b!6419521 res!2638334) b!6419513))

(assert (= (and b!6419518 (not res!2638337)) b!6419525))

(assert (= (and b!6419525 res!2638333) b!6419524))

(assert (= (and b!6419524 (not res!2638336)) b!6419517))

(assert (= (and b!6419517 (not res!2638335)) b!6419526))

(assert (= (or b!6419522 b!6419514 b!6419524) bm!551924))

(assert (=> bm!551924 m!7213902))

(assert (=> b!6419515 m!7213906))

(assert (=> b!6419515 m!7213906))

(declare-fun m!7214356 () Bool)

(assert (=> b!6419515 m!7214356))

(assert (=> b!6419515 m!7213912))

(assert (=> b!6419515 m!7214356))

(assert (=> b!6419515 m!7213912))

(declare-fun m!7214358 () Bool)

(assert (=> b!6419515 m!7214358))

(assert (=> b!6419517 m!7213912))

(assert (=> b!6419517 m!7213912))

(assert (=> b!6419517 m!7214308))

(assert (=> d!2012826 m!7213902))

(assert (=> d!2012826 m!7213734))

(assert (=> b!6419526 m!7213906))

(assert (=> b!6419513 m!7213906))

(declare-fun m!7214360 () Bool)

(assert (=> b!6419519 m!7214360))

(assert (=> b!6419521 m!7213912))

(assert (=> b!6419521 m!7213912))

(assert (=> b!6419521 m!7214308))

(assert (=> b!6418782 d!2012826))

(declare-fun d!2012828 () Bool)

(assert (=> d!2012828 (= (matchR!8504 r!7292 s!2326) (matchRSpec!3422 r!7292 s!2326))))

(declare-fun lt!2376584 () Unit!158615)

(assert (=> d!2012828 (= lt!2376584 (choose!47682 r!7292 s!2326))))

(assert (=> d!2012828 (validRegex!8057 r!7292)))

(assert (=> d!2012828 (= (mainMatchTheorem!3422 r!7292 s!2326) lt!2376584)))

(declare-fun bs!1614160 () Bool)

(assert (= bs!1614160 d!2012828))

(assert (=> bs!1614160 m!7213762))

(assert (=> bs!1614160 m!7213760))

(declare-fun m!7214362 () Bool)

(assert (=> bs!1614160 m!7214362))

(assert (=> bs!1614160 m!7213734))

(assert (=> b!6418782 d!2012828))

(declare-fun bm!551927 () Bool)

(declare-fun call!551933 () Bool)

(declare-fun call!551934 () Bool)

(assert (=> bm!551927 (= call!551933 call!551934)))

(declare-fun b!6419549 () Bool)

(declare-fun e!3895095 () Bool)

(declare-fun e!3895093 () Bool)

(assert (=> b!6419549 (= e!3895095 e!3895093)))

(declare-fun c!1172730 () Bool)

(assert (=> b!6419549 (= c!1172730 ((_ is Union!16321) r!7292))))

(declare-fun b!6419550 () Bool)

(declare-fun e!3895092 () Bool)

(declare-fun call!551932 () Bool)

(assert (=> b!6419550 (= e!3895092 call!551932)))

(declare-fun b!6419551 () Bool)

(declare-fun e!3895091 () Bool)

(assert (=> b!6419551 (= e!3895095 e!3895091)))

(declare-fun res!2638344 () Bool)

(assert (=> b!6419551 (= res!2638344 (not (nullable!6314 (reg!16650 r!7292))))))

(assert (=> b!6419551 (=> (not res!2638344) (not e!3895091))))

(declare-fun b!6419552 () Bool)

(declare-fun res!2638341 () Bool)

(declare-fun e!3895094 () Bool)

(assert (=> b!6419552 (=> (not res!2638341) (not e!3895094))))

(assert (=> b!6419552 (= res!2638341 call!551933)))

(assert (=> b!6419552 (= e!3895093 e!3895094)))

(declare-fun b!6419553 () Bool)

(assert (=> b!6419553 (= e!3895091 call!551934)))

(declare-fun d!2012830 () Bool)

(declare-fun res!2638343 () Bool)

(declare-fun e!3895090 () Bool)

(assert (=> d!2012830 (=> res!2638343 e!3895090)))

(assert (=> d!2012830 (= res!2638343 ((_ is ElementMatch!16321) r!7292))))

(assert (=> d!2012830 (= (validRegex!8057 r!7292) e!3895090)))

(declare-fun b!6419554 () Bool)

(declare-fun res!2638342 () Bool)

(declare-fun e!3895096 () Bool)

(assert (=> b!6419554 (=> res!2638342 e!3895096)))

(assert (=> b!6419554 (= res!2638342 (not ((_ is Concat!25166) r!7292)))))

(assert (=> b!6419554 (= e!3895093 e!3895096)))

(declare-fun bm!551928 () Bool)

(assert (=> bm!551928 (= call!551932 (validRegex!8057 (ite c!1172730 (regTwo!33155 r!7292) (regTwo!33154 r!7292))))))

(declare-fun b!6419555 () Bool)

(assert (=> b!6419555 (= e!3895096 e!3895092)))

(declare-fun res!2638340 () Bool)

(assert (=> b!6419555 (=> (not res!2638340) (not e!3895092))))

(assert (=> b!6419555 (= res!2638340 call!551933)))

(declare-fun b!6419556 () Bool)

(assert (=> b!6419556 (= e!3895090 e!3895095)))

(declare-fun c!1172729 () Bool)

(assert (=> b!6419556 (= c!1172729 ((_ is Star!16321) r!7292))))

(declare-fun bm!551929 () Bool)

(assert (=> bm!551929 (= call!551934 (validRegex!8057 (ite c!1172729 (reg!16650 r!7292) (ite c!1172730 (regOne!33155 r!7292) (regOne!33154 r!7292)))))))

(declare-fun b!6419557 () Bool)

(assert (=> b!6419557 (= e!3895094 call!551932)))

(assert (= (and d!2012830 (not res!2638343)) b!6419556))

(assert (= (and b!6419556 c!1172729) b!6419551))

(assert (= (and b!6419556 (not c!1172729)) b!6419549))

(assert (= (and b!6419551 res!2638344) b!6419553))

(assert (= (and b!6419549 c!1172730) b!6419552))

(assert (= (and b!6419549 (not c!1172730)) b!6419554))

(assert (= (and b!6419552 res!2638341) b!6419557))

(assert (= (and b!6419554 (not res!2638342)) b!6419555))

(assert (= (and b!6419555 res!2638340) b!6419550))

(assert (= (or b!6419557 b!6419550) bm!551928))

(assert (= (or b!6419552 b!6419555) bm!551927))

(assert (= (or b!6419553 bm!551927) bm!551929))

(declare-fun m!7214364 () Bool)

(assert (=> b!6419551 m!7214364))

(declare-fun m!7214366 () Bool)

(assert (=> bm!551928 m!7214366))

(declare-fun m!7214368 () Bool)

(assert (=> bm!551929 m!7214368))

(assert (=> start!634278 d!2012830))

(declare-fun bs!1614161 () Bool)

(declare-fun d!2012832 () Bool)

(assert (= bs!1614161 (and d!2012832 d!2012638)))

(declare-fun lambda!354624 () Int)

(assert (=> bs!1614161 (= lambda!354624 lambda!354556)))

(declare-fun bs!1614162 () Bool)

(assert (= bs!1614162 (and d!2012832 d!2012640)))

(assert (=> bs!1614162 (= lambda!354624 lambda!354559)))

(declare-fun bs!1614163 () Bool)

(assert (= bs!1614163 (and d!2012832 d!2012722)))

(assert (=> bs!1614163 (= lambda!354624 lambda!354590)))

(declare-fun bs!1614164 () Bool)

(assert (= bs!1614164 (and d!2012832 d!2012800)))

(assert (=> bs!1614164 (= lambda!354624 lambda!354617)))

(assert (=> d!2012832 (= (inv!84049 setElem!43810) (forall!15510 (exprs!6205 setElem!43810) lambda!354624))))

(declare-fun bs!1614165 () Bool)

(assert (= bs!1614165 d!2012832))

(declare-fun m!7214370 () Bool)

(assert (=> bs!1614165 m!7214370))

(assert (=> setNonEmpty!43810 d!2012832))

(declare-fun d!2012834 () Bool)

(declare-fun lt!2376585 () Regex!16321)

(assert (=> d!2012834 (validRegex!8057 lt!2376585)))

(assert (=> d!2012834 (= lt!2376585 (generalisedUnion!2165 (unfocusZipperList!1742 (Cons!65140 lt!2376461 Nil!65140))))))

(assert (=> d!2012834 (= (unfocusZipper!2063 (Cons!65140 lt!2376461 Nil!65140)) lt!2376585)))

(declare-fun bs!1614166 () Bool)

(assert (= bs!1614166 d!2012834))

(declare-fun m!7214372 () Bool)

(assert (=> bs!1614166 m!7214372))

(declare-fun m!7214374 () Bool)

(assert (=> bs!1614166 m!7214374))

(assert (=> bs!1614166 m!7214374))

(declare-fun m!7214376 () Bool)

(assert (=> bs!1614166 m!7214376))

(assert (=> b!6418761 d!2012834))

(declare-fun d!2012836 () Bool)

(declare-fun e!3895099 () Bool)

(assert (=> d!2012836 e!3895099))

(declare-fun res!2638347 () Bool)

(assert (=> d!2012836 (=> (not res!2638347) (not e!3895099))))

(declare-fun lt!2376588 () List!65264)

(declare-fun noDuplicate!2150 (List!65264) Bool)

(assert (=> d!2012836 (= res!2638347 (noDuplicate!2150 lt!2376588))))

(declare-fun choose!47696 ((InoxSet Context!11410)) List!65264)

(assert (=> d!2012836 (= lt!2376588 (choose!47696 z!1189))))

(assert (=> d!2012836 (= (toList!10105 z!1189) lt!2376588)))

(declare-fun b!6419560 () Bool)

(declare-fun content!12357 (List!65264) (InoxSet Context!11410))

(assert (=> b!6419560 (= e!3895099 (= (content!12357 lt!2376588) z!1189))))

(assert (= (and d!2012836 res!2638347) b!6419560))

(declare-fun m!7214378 () Bool)

(assert (=> d!2012836 m!7214378))

(declare-fun m!7214380 () Bool)

(assert (=> d!2012836 m!7214380))

(declare-fun m!7214382 () Bool)

(assert (=> b!6419560 m!7214382))

(assert (=> b!6418778 d!2012836))

(declare-fun d!2012838 () Bool)

(declare-fun e!3895108 () Bool)

(assert (=> d!2012838 (= (matchZipper!2333 ((_ map or) lt!2376455 lt!2376474) (t!378876 s!2326)) e!3895108)))

(declare-fun res!2638351 () Bool)

(assert (=> d!2012838 (=> res!2638351 e!3895108)))

(assert (=> d!2012838 (= res!2638351 (matchZipper!2333 lt!2376455 (t!378876 s!2326)))))

(declare-fun lt!2376591 () Unit!158615)

(declare-fun choose!47697 ((InoxSet Context!11410) (InoxSet Context!11410) List!65262) Unit!158615)

(assert (=> d!2012838 (= lt!2376591 (choose!47697 lt!2376455 lt!2376474 (t!378876 s!2326)))))

(assert (=> d!2012838 (= (lemmaZipperConcatMatchesSameAsBothZippers!1152 lt!2376455 lt!2376474 (t!378876 s!2326)) lt!2376591)))

(declare-fun b!6419574 () Bool)

(assert (=> b!6419574 (= e!3895108 (matchZipper!2333 lt!2376474 (t!378876 s!2326)))))

(assert (= (and d!2012838 (not res!2638351)) b!6419574))

(assert (=> d!2012838 m!7213740))

(assert (=> d!2012838 m!7213738))

(declare-fun m!7214398 () Bool)

(assert (=> d!2012838 m!7214398))

(assert (=> b!6419574 m!7213766))

(assert (=> b!6418780 d!2012838))

(declare-fun d!2012846 () Bool)

(declare-fun c!1172737 () Bool)

(assert (=> d!2012846 (= c!1172737 (isEmpty!37293 (t!378876 s!2326)))))

(declare-fun e!3895110 () Bool)

(assert (=> d!2012846 (= (matchZipper!2333 lt!2376455 (t!378876 s!2326)) e!3895110)))

(declare-fun b!6419575 () Bool)

(assert (=> b!6419575 (= e!3895110 (nullableZipper!2085 lt!2376455))))

(declare-fun b!6419576 () Bool)

(assert (=> b!6419576 (= e!3895110 (matchZipper!2333 (derivationStepZipper!2287 lt!2376455 (head!13133 (t!378876 s!2326))) (tail!12218 (t!378876 s!2326))))))

(assert (= (and d!2012846 c!1172737) b!6419575))

(assert (= (and d!2012846 (not c!1172737)) b!6419576))

(assert (=> d!2012846 m!7213930))

(declare-fun m!7214400 () Bool)

(assert (=> b!6419575 m!7214400))

(assert (=> b!6419576 m!7213934))

(assert (=> b!6419576 m!7213934))

(declare-fun m!7214402 () Bool)

(assert (=> b!6419576 m!7214402))

(assert (=> b!6419576 m!7213938))

(assert (=> b!6419576 m!7214402))

(assert (=> b!6419576 m!7213938))

(declare-fun m!7214404 () Bool)

(assert (=> b!6419576 m!7214404))

(assert (=> b!6418780 d!2012846))

(declare-fun d!2012848 () Bool)

(declare-fun c!1172739 () Bool)

(assert (=> d!2012848 (= c!1172739 (isEmpty!37293 (t!378876 s!2326)))))

(declare-fun e!3895113 () Bool)

(assert (=> d!2012848 (= (matchZipper!2333 ((_ map or) lt!2376455 lt!2376474) (t!378876 s!2326)) e!3895113)))

(declare-fun b!6419582 () Bool)

(assert (=> b!6419582 (= e!3895113 (nullableZipper!2085 ((_ map or) lt!2376455 lt!2376474)))))

(declare-fun b!6419583 () Bool)

(assert (=> b!6419583 (= e!3895113 (matchZipper!2333 (derivationStepZipper!2287 ((_ map or) lt!2376455 lt!2376474) (head!13133 (t!378876 s!2326))) (tail!12218 (t!378876 s!2326))))))

(assert (= (and d!2012848 c!1172739) b!6419582))

(assert (= (and d!2012848 (not c!1172739)) b!6419583))

(assert (=> d!2012848 m!7213930))

(declare-fun m!7214412 () Bool)

(assert (=> b!6419582 m!7214412))

(assert (=> b!6419583 m!7213934))

(assert (=> b!6419583 m!7213934))

(declare-fun m!7214414 () Bool)

(assert (=> b!6419583 m!7214414))

(assert (=> b!6419583 m!7213938))

(assert (=> b!6419583 m!7214414))

(assert (=> b!6419583 m!7213938))

(declare-fun m!7214416 () Bool)

(assert (=> b!6419583 m!7214416))

(assert (=> b!6418780 d!2012848))

(declare-fun d!2012852 () Bool)

(declare-fun lt!2376592 () Regex!16321)

(assert (=> d!2012852 (validRegex!8057 lt!2376592)))

(assert (=> d!2012852 (= lt!2376592 (generalisedUnion!2165 (unfocusZipperList!1742 (Cons!65140 lt!2376471 Nil!65140))))))

(assert (=> d!2012852 (= (unfocusZipper!2063 (Cons!65140 lt!2376471 Nil!65140)) lt!2376592)))

(declare-fun bs!1614169 () Bool)

(assert (= bs!1614169 d!2012852))

(declare-fun m!7214418 () Bool)

(assert (=> bs!1614169 m!7214418))

(declare-fun m!7214420 () Bool)

(assert (=> bs!1614169 m!7214420))

(assert (=> bs!1614169 m!7214420))

(declare-fun m!7214422 () Bool)

(assert (=> bs!1614169 m!7214422))

(assert (=> b!6418758 d!2012852))

(declare-fun b!6419595 () Bool)

(declare-fun res!2638357 () Bool)

(declare-fun e!3895124 () Bool)

(assert (=> b!6419595 (=> (not res!2638357) (not e!3895124))))

(declare-fun lt!2376595 () Option!16212)

(assert (=> b!6419595 (= res!2638357 (matchR!8504 (regTwo!33154 r!7292) (_2!36603 (get!22565 lt!2376595))))))

(declare-fun b!6419596 () Bool)

(declare-fun e!3895123 () Option!16212)

(assert (=> b!6419596 (= e!3895123 None!16211)))

(declare-fun b!6419597 () Bool)

(declare-fun e!3895121 () Option!16212)

(assert (=> b!6419597 (= e!3895121 e!3895123)))

(declare-fun c!1172744 () Bool)

(assert (=> b!6419597 (= c!1172744 ((_ is Nil!65138) s!2326))))

(declare-fun b!6419598 () Bool)

(declare-fun lt!2376594 () Unit!158615)

(declare-fun lt!2376593 () Unit!158615)

(assert (=> b!6419598 (= lt!2376594 lt!2376593)))

(assert (=> b!6419598 (= (++!14389 (++!14389 Nil!65138 (Cons!65138 (h!71586 s!2326) Nil!65138)) (t!378876 s!2326)) s!2326)))

(assert (=> b!6419598 (= lt!2376593 (lemmaMoveElementToOtherListKeepsConcatEq!2484 Nil!65138 (h!71586 s!2326) (t!378876 s!2326) s!2326))))

(assert (=> b!6419598 (= e!3895123 (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) (++!14389 Nil!65138 (Cons!65138 (h!71586 s!2326) Nil!65138)) (t!378876 s!2326) s!2326))))

(declare-fun d!2012854 () Bool)

(declare-fun e!3895120 () Bool)

(assert (=> d!2012854 e!3895120))

(declare-fun res!2638356 () Bool)

(assert (=> d!2012854 (=> res!2638356 e!3895120)))

(assert (=> d!2012854 (= res!2638356 e!3895124)))

(declare-fun res!2638358 () Bool)

(assert (=> d!2012854 (=> (not res!2638358) (not e!3895124))))

(assert (=> d!2012854 (= res!2638358 (isDefined!12915 lt!2376595))))

(assert (=> d!2012854 (= lt!2376595 e!3895121)))

(declare-fun c!1172745 () Bool)

(declare-fun e!3895122 () Bool)

(assert (=> d!2012854 (= c!1172745 e!3895122)))

(declare-fun res!2638355 () Bool)

(assert (=> d!2012854 (=> (not res!2638355) (not e!3895122))))

(assert (=> d!2012854 (= res!2638355 (matchR!8504 (regOne!33154 r!7292) Nil!65138))))

(assert (=> d!2012854 (validRegex!8057 (regOne!33154 r!7292))))

(assert (=> d!2012854 (= (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326) lt!2376595)))

(declare-fun b!6419594 () Bool)

(assert (=> b!6419594 (= e!3895121 (Some!16211 (tuple2!66601 Nil!65138 s!2326)))))

(declare-fun b!6419599 () Bool)

(declare-fun res!2638359 () Bool)

(assert (=> b!6419599 (=> (not res!2638359) (not e!3895124))))

(assert (=> b!6419599 (= res!2638359 (matchR!8504 (regOne!33154 r!7292) (_1!36603 (get!22565 lt!2376595))))))

(declare-fun b!6419600 () Bool)

(assert (=> b!6419600 (= e!3895122 (matchR!8504 (regTwo!33154 r!7292) s!2326))))

(declare-fun b!6419601 () Bool)

(assert (=> b!6419601 (= e!3895124 (= (++!14389 (_1!36603 (get!22565 lt!2376595)) (_2!36603 (get!22565 lt!2376595))) s!2326))))

(declare-fun b!6419602 () Bool)

(assert (=> b!6419602 (= e!3895120 (not (isDefined!12915 lt!2376595)))))

(assert (= (and d!2012854 res!2638355) b!6419600))

(assert (= (and d!2012854 c!1172745) b!6419594))

(assert (= (and d!2012854 (not c!1172745)) b!6419597))

(assert (= (and b!6419597 c!1172744) b!6419596))

(assert (= (and b!6419597 (not c!1172744)) b!6419598))

(assert (= (and d!2012854 res!2638358) b!6419599))

(assert (= (and b!6419599 res!2638359) b!6419595))

(assert (= (and b!6419595 res!2638357) b!6419601))

(assert (= (and d!2012854 (not res!2638356)) b!6419602))

(declare-fun m!7214440 () Bool)

(assert (=> d!2012854 m!7214440))

(declare-fun m!7214442 () Bool)

(assert (=> d!2012854 m!7214442))

(declare-fun m!7214444 () Bool)

(assert (=> d!2012854 m!7214444))

(declare-fun m!7214446 () Bool)

(assert (=> b!6419599 m!7214446))

(declare-fun m!7214448 () Bool)

(assert (=> b!6419599 m!7214448))

(assert (=> b!6419600 m!7214196))

(assert (=> b!6419598 m!7214198))

(assert (=> b!6419598 m!7214198))

(assert (=> b!6419598 m!7214204))

(assert (=> b!6419598 m!7214208))

(assert (=> b!6419598 m!7214198))

(declare-fun m!7214450 () Bool)

(assert (=> b!6419598 m!7214450))

(assert (=> b!6419595 m!7214446))

(declare-fun m!7214452 () Bool)

(assert (=> b!6419595 m!7214452))

(assert (=> b!6419602 m!7214440))

(assert (=> b!6419601 m!7214446))

(declare-fun m!7214454 () Bool)

(assert (=> b!6419601 m!7214454))

(assert (=> b!6418776 d!2012854))

(declare-fun d!2012862 () Bool)

(assert (=> d!2012862 (= (Exists!3391 lambda!354549) (choose!47692 lambda!354549))))

(declare-fun bs!1614171 () Bool)

(assert (= bs!1614171 d!2012862))

(declare-fun m!7214456 () Bool)

(assert (=> bs!1614171 m!7214456))

(assert (=> b!6418776 d!2012862))

(declare-fun bs!1614172 () Bool)

(declare-fun d!2012864 () Bool)

(assert (= bs!1614172 (and d!2012864 b!6419480)))

(declare-fun lambda!354625 () Int)

(assert (=> bs!1614172 (not (= lambda!354625 lambda!354619))))

(declare-fun bs!1614173 () Bool)

(assert (= bs!1614173 (and d!2012864 b!6419165)))

(assert (=> bs!1614173 (not (= lambda!354625 lambda!354580))))

(declare-fun bs!1614174 () Bool)

(assert (= bs!1614174 (and d!2012864 b!6419483)))

(assert (=> bs!1614174 (not (= lambda!354625 lambda!354621))))

(declare-fun bs!1614176 () Bool)

(assert (= bs!1614176 (and d!2012864 d!2012724)))

(assert (=> bs!1614176 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354625 lambda!354595))))

(declare-fun bs!1614177 () Bool)

(assert (= bs!1614177 (and d!2012864 b!6419505)))

(assert (=> bs!1614177 (not (= lambda!354625 lambda!354622))))

(declare-fun bs!1614179 () Bool)

(assert (= bs!1614179 (and d!2012864 b!6419162)))

(assert (=> bs!1614179 (not (= lambda!354625 lambda!354579))))

(declare-fun bs!1614180 () Bool)

(assert (= bs!1614180 (and d!2012864 b!6418776)))

(assert (=> bs!1614180 (= lambda!354625 lambda!354549)))

(declare-fun bs!1614181 () Bool)

(assert (= bs!1614181 (and d!2012864 d!2012778)))

(assert (=> bs!1614181 (not (= lambda!354625 lambda!354608))))

(assert (=> bs!1614180 (not (= lambda!354625 lambda!354550))))

(assert (=> bs!1614181 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354625 lambda!354607))))

(declare-fun bs!1614183 () Bool)

(assert (= bs!1614183 (and d!2012864 b!6418765)))

(assert (=> bs!1614183 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354625 lambda!354552))))

(assert (=> bs!1614183 (not (= lambda!354625 lambda!354553))))

(declare-fun bs!1614184 () Bool)

(assert (= bs!1614184 (and d!2012864 b!6419508)))

(assert (=> bs!1614184 (not (= lambda!354625 lambda!354623))))

(assert (=> d!2012864 true))

(assert (=> d!2012864 true))

(assert (=> d!2012864 true))

(assert (=> d!2012864 (= (isDefined!12915 (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326)) (Exists!3391 lambda!354625))))

(declare-fun lt!2376597 () Unit!158615)

(assert (=> d!2012864 (= lt!2376597 (choose!47691 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326))))

(assert (=> d!2012864 (validRegex!8057 (regOne!33154 r!7292))))

(assert (=> d!2012864 (= (lemmaFindConcatSeparationEquivalentToExists!2390 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326) lt!2376597)))

(declare-fun bs!1614185 () Bool)

(assert (= bs!1614185 d!2012864))

(assert (=> bs!1614185 m!7213672))

(assert (=> bs!1614185 m!7213672))

(assert (=> bs!1614185 m!7213674))

(declare-fun m!7214492 () Bool)

(assert (=> bs!1614185 m!7214492))

(declare-fun m!7214494 () Bool)

(assert (=> bs!1614185 m!7214494))

(assert (=> bs!1614185 m!7214444))

(assert (=> b!6418776 d!2012864))

(declare-fun d!2012882 () Bool)

(assert (=> d!2012882 (= (Exists!3391 lambda!354550) (choose!47692 lambda!354550))))

(declare-fun bs!1614188 () Bool)

(assert (= bs!1614188 d!2012882))

(declare-fun m!7214496 () Bool)

(assert (=> bs!1614188 m!7214496))

(assert (=> b!6418776 d!2012882))

(declare-fun bs!1614190 () Bool)

(declare-fun d!2012884 () Bool)

(assert (= bs!1614190 (and d!2012884 b!6419480)))

(declare-fun lambda!354626 () Int)

(assert (=> bs!1614190 (not (= lambda!354626 lambda!354619))))

(declare-fun bs!1614191 () Bool)

(assert (= bs!1614191 (and d!2012884 b!6419165)))

(assert (=> bs!1614191 (not (= lambda!354626 lambda!354580))))

(declare-fun bs!1614192 () Bool)

(assert (= bs!1614192 (and d!2012884 b!6419483)))

(assert (=> bs!1614192 (not (= lambda!354626 lambda!354621))))

(declare-fun bs!1614193 () Bool)

(assert (= bs!1614193 (and d!2012884 d!2012724)))

(assert (=> bs!1614193 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354626 lambda!354595))))

(declare-fun bs!1614194 () Bool)

(assert (= bs!1614194 (and d!2012884 b!6419505)))

(assert (=> bs!1614194 (not (= lambda!354626 lambda!354622))))

(declare-fun bs!1614195 () Bool)

(assert (= bs!1614195 (and d!2012884 b!6419162)))

(assert (=> bs!1614195 (not (= lambda!354626 lambda!354579))))

(declare-fun bs!1614196 () Bool)

(assert (= bs!1614196 (and d!2012884 b!6418776)))

(assert (=> bs!1614196 (= lambda!354626 lambda!354549)))

(declare-fun bs!1614197 () Bool)

(assert (= bs!1614197 (and d!2012884 d!2012778)))

(assert (=> bs!1614197 (not (= lambda!354626 lambda!354608))))

(assert (=> bs!1614196 (not (= lambda!354626 lambda!354550))))

(assert (=> bs!1614197 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354626 lambda!354607))))

(declare-fun bs!1614198 () Bool)

(assert (= bs!1614198 (and d!2012884 b!6418765)))

(assert (=> bs!1614198 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354626 lambda!354552))))

(assert (=> bs!1614198 (not (= lambda!354626 lambda!354553))))

(declare-fun bs!1614201 () Bool)

(assert (= bs!1614201 (and d!2012884 b!6419508)))

(assert (=> bs!1614201 (not (= lambda!354626 lambda!354623))))

(declare-fun bs!1614203 () Bool)

(assert (= bs!1614203 (and d!2012884 d!2012864)))

(assert (=> bs!1614203 (= lambda!354626 lambda!354625)))

(assert (=> d!2012884 true))

(assert (=> d!2012884 true))

(assert (=> d!2012884 true))

(declare-fun lambda!354628 () Int)

(assert (=> bs!1614190 (not (= lambda!354628 lambda!354619))))

(assert (=> bs!1614191 (= (and (= s!2326 (_1!36603 lt!2376459)) (= (regOne!33154 r!7292) (regOne!33154 lt!2376449)) (= (regTwo!33154 r!7292) (regTwo!33154 lt!2376449))) (= lambda!354628 lambda!354580))))

(assert (=> bs!1614192 (= (and (= (regOne!33154 r!7292) (regOne!33154 lt!2376463)) (= (regTwo!33154 r!7292) (regTwo!33154 lt!2376463))) (= lambda!354628 lambda!354621))))

(assert (=> bs!1614193 (not (= lambda!354628 lambda!354595))))

(assert (=> bs!1614194 (not (= lambda!354628 lambda!354622))))

(assert (=> bs!1614195 (not (= lambda!354628 lambda!354579))))

(assert (=> bs!1614196 (not (= lambda!354628 lambda!354549))))

(assert (=> bs!1614196 (= lambda!354628 lambda!354550)))

(assert (=> bs!1614197 (not (= lambda!354628 lambda!354607))))

(assert (=> bs!1614198 (not (= lambda!354628 lambda!354552))))

(assert (=> bs!1614198 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354628 lambda!354553))))

(assert (=> bs!1614201 (= lambda!354628 lambda!354623)))

(assert (=> bs!1614203 (not (= lambda!354628 lambda!354625))))

(declare-fun bs!1614212 () Bool)

(assert (= bs!1614212 d!2012884))

(assert (=> bs!1614212 (not (= lambda!354628 lambda!354626))))

(assert (=> bs!1614197 (= (= (regOne!33154 r!7292) lt!2376449) (= lambda!354628 lambda!354608))))

(assert (=> d!2012884 true))

(assert (=> d!2012884 true))

(assert (=> d!2012884 true))

(assert (=> d!2012884 (= (Exists!3391 lambda!354626) (Exists!3391 lambda!354628))))

(declare-fun lt!2376601 () Unit!158615)

(assert (=> d!2012884 (= lt!2376601 (choose!47694 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326))))

(assert (=> d!2012884 (validRegex!8057 (regOne!33154 r!7292))))

(assert (=> d!2012884 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1928 (regOne!33154 r!7292) (regTwo!33154 r!7292) s!2326) lt!2376601)))

(declare-fun m!7214514 () Bool)

(assert (=> bs!1614212 m!7214514))

(declare-fun m!7214516 () Bool)

(assert (=> bs!1614212 m!7214516))

(declare-fun m!7214518 () Bool)

(assert (=> bs!1614212 m!7214518))

(assert (=> bs!1614212 m!7214444))

(assert (=> b!6418776 d!2012884))

(declare-fun d!2012892 () Bool)

(assert (=> d!2012892 (= (isDefined!12915 (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326)) (not (isEmpty!37296 (findConcatSeparation!2626 (regOne!33154 r!7292) (regTwo!33154 r!7292) Nil!65138 s!2326 s!2326))))))

(declare-fun bs!1614218 () Bool)

(assert (= bs!1614218 d!2012892))

(assert (=> bs!1614218 m!7213672))

(declare-fun m!7214520 () Bool)

(assert (=> bs!1614218 m!7214520))

(assert (=> b!6418776 d!2012892))

(declare-fun b!6419648 () Bool)

(declare-fun e!3895153 () Bool)

(declare-fun tp!1782571 () Bool)

(declare-fun tp!1782572 () Bool)

(assert (=> b!6419648 (= e!3895153 (and tp!1782571 tp!1782572))))

(assert (=> b!6418748 (= tp!1782557 e!3895153)))

(assert (= (and b!6418748 ((_ is Cons!65139) (exprs!6205 setElem!43810))) b!6419648))

(declare-fun b!6419659 () Bool)

(declare-fun e!3895156 () Bool)

(assert (=> b!6419659 (= e!3895156 tp_is_empty!41895)))

(declare-fun b!6419661 () Bool)

(declare-fun tp!1782583 () Bool)

(assert (=> b!6419661 (= e!3895156 tp!1782583)))

(assert (=> b!6418762 (= tp!1782563 e!3895156)))

(declare-fun b!6419660 () Bool)

(declare-fun tp!1782586 () Bool)

(declare-fun tp!1782584 () Bool)

(assert (=> b!6419660 (= e!3895156 (and tp!1782586 tp!1782584))))

(declare-fun b!6419662 () Bool)

(declare-fun tp!1782587 () Bool)

(declare-fun tp!1782585 () Bool)

(assert (=> b!6419662 (= e!3895156 (and tp!1782587 tp!1782585))))

(assert (= (and b!6418762 ((_ is ElementMatch!16321) (regOne!33154 r!7292))) b!6419659))

(assert (= (and b!6418762 ((_ is Concat!25166) (regOne!33154 r!7292))) b!6419660))

(assert (= (and b!6418762 ((_ is Star!16321) (regOne!33154 r!7292))) b!6419661))

(assert (= (and b!6418762 ((_ is Union!16321) (regOne!33154 r!7292))) b!6419662))

(declare-fun b!6419663 () Bool)

(declare-fun e!3895157 () Bool)

(assert (=> b!6419663 (= e!3895157 tp_is_empty!41895)))

(declare-fun b!6419665 () Bool)

(declare-fun tp!1782588 () Bool)

(assert (=> b!6419665 (= e!3895157 tp!1782588)))

(assert (=> b!6418762 (= tp!1782562 e!3895157)))

(declare-fun b!6419664 () Bool)

(declare-fun tp!1782591 () Bool)

(declare-fun tp!1782589 () Bool)

(assert (=> b!6419664 (= e!3895157 (and tp!1782591 tp!1782589))))

(declare-fun b!6419666 () Bool)

(declare-fun tp!1782592 () Bool)

(declare-fun tp!1782590 () Bool)

(assert (=> b!6419666 (= e!3895157 (and tp!1782592 tp!1782590))))

(assert (= (and b!6418762 ((_ is ElementMatch!16321) (regTwo!33154 r!7292))) b!6419663))

(assert (= (and b!6418762 ((_ is Concat!25166) (regTwo!33154 r!7292))) b!6419664))

(assert (= (and b!6418762 ((_ is Star!16321) (regTwo!33154 r!7292))) b!6419665))

(assert (= (and b!6418762 ((_ is Union!16321) (regTwo!33154 r!7292))) b!6419666))

(declare-fun b!6419685 () Bool)

(declare-fun e!3895168 () Bool)

(declare-fun tp!1782602 () Bool)

(assert (=> b!6419685 (= e!3895168 tp!1782602)))

(declare-fun tp!1782603 () Bool)

(declare-fun e!3895167 () Bool)

(declare-fun b!6419684 () Bool)

(assert (=> b!6419684 (= e!3895167 (and (inv!84049 (h!71588 (t!378878 zl!343))) e!3895168 tp!1782603))))

(assert (=> b!6418783 (= tp!1782559 e!3895167)))

(assert (= b!6419684 b!6419685))

(assert (= (and b!6418783 ((_ is Cons!65140) (t!378878 zl!343))) b!6419684))

(declare-fun m!7214532 () Bool)

(assert (=> b!6419684 m!7214532))

(declare-fun b!6419690 () Bool)

(declare-fun e!3895169 () Bool)

(assert (=> b!6419690 (= e!3895169 tp_is_empty!41895)))

(declare-fun b!6419692 () Bool)

(declare-fun tp!1782610 () Bool)

(assert (=> b!6419692 (= e!3895169 tp!1782610)))

(assert (=> b!6418784 (= tp!1782558 e!3895169)))

(declare-fun b!6419691 () Bool)

(declare-fun tp!1782613 () Bool)

(declare-fun tp!1782611 () Bool)

(assert (=> b!6419691 (= e!3895169 (and tp!1782613 tp!1782611))))

(declare-fun b!6419693 () Bool)

(declare-fun tp!1782614 () Bool)

(declare-fun tp!1782612 () Bool)

(assert (=> b!6419693 (= e!3895169 (and tp!1782614 tp!1782612))))

(assert (= (and b!6418784 ((_ is ElementMatch!16321) (regOne!33155 r!7292))) b!6419690))

(assert (= (and b!6418784 ((_ is Concat!25166) (regOne!33155 r!7292))) b!6419691))

(assert (= (and b!6418784 ((_ is Star!16321) (regOne!33155 r!7292))) b!6419692))

(assert (= (and b!6418784 ((_ is Union!16321) (regOne!33155 r!7292))) b!6419693))

(declare-fun b!6419694 () Bool)

(declare-fun e!3895170 () Bool)

(assert (=> b!6419694 (= e!3895170 tp_is_empty!41895)))

(declare-fun b!6419696 () Bool)

(declare-fun tp!1782617 () Bool)

(assert (=> b!6419696 (= e!3895170 tp!1782617)))

(assert (=> b!6418784 (= tp!1782561 e!3895170)))

(declare-fun b!6419695 () Bool)

(declare-fun tp!1782620 () Bool)

(declare-fun tp!1782618 () Bool)

(assert (=> b!6419695 (= e!3895170 (and tp!1782620 tp!1782618))))

(declare-fun b!6419697 () Bool)

(declare-fun tp!1782621 () Bool)

(declare-fun tp!1782619 () Bool)

(assert (=> b!6419697 (= e!3895170 (and tp!1782621 tp!1782619))))

(assert (= (and b!6418784 ((_ is ElementMatch!16321) (regTwo!33155 r!7292))) b!6419694))

(assert (= (and b!6418784 ((_ is Concat!25166) (regTwo!33155 r!7292))) b!6419695))

(assert (= (and b!6418784 ((_ is Star!16321) (regTwo!33155 r!7292))) b!6419696))

(assert (= (and b!6418784 ((_ is Union!16321) (regTwo!33155 r!7292))) b!6419697))

(declare-fun b!6419698 () Bool)

(declare-fun e!3895171 () Bool)

(assert (=> b!6419698 (= e!3895171 tp_is_empty!41895)))

(declare-fun b!6419700 () Bool)

(declare-fun tp!1782622 () Bool)

(assert (=> b!6419700 (= e!3895171 tp!1782622)))

(assert (=> b!6418759 (= tp!1782565 e!3895171)))

(declare-fun b!6419699 () Bool)

(declare-fun tp!1782625 () Bool)

(declare-fun tp!1782623 () Bool)

(assert (=> b!6419699 (= e!3895171 (and tp!1782625 tp!1782623))))

(declare-fun b!6419701 () Bool)

(declare-fun tp!1782626 () Bool)

(declare-fun tp!1782624 () Bool)

(assert (=> b!6419701 (= e!3895171 (and tp!1782626 tp!1782624))))

(assert (= (and b!6418759 ((_ is ElementMatch!16321) (reg!16650 r!7292))) b!6419698))

(assert (= (and b!6418759 ((_ is Concat!25166) (reg!16650 r!7292))) b!6419699))

(assert (= (and b!6418759 ((_ is Star!16321) (reg!16650 r!7292))) b!6419700))

(assert (= (and b!6418759 ((_ is Union!16321) (reg!16650 r!7292))) b!6419701))

(declare-fun condSetEmpty!43813 () Bool)

(assert (=> setNonEmpty!43810 (= condSetEmpty!43813 (= setRest!43810 ((as const (Array Context!11410 Bool)) false)))))

(declare-fun setRes!43813 () Bool)

(assert (=> setNonEmpty!43810 (= tp!1782560 setRes!43813)))

(declare-fun setIsEmpty!43813 () Bool)

(assert (=> setIsEmpty!43813 setRes!43813))

(declare-fun tp!1782648 () Bool)

(declare-fun setElem!43813 () Context!11410)

(declare-fun setNonEmpty!43813 () Bool)

(declare-fun e!3895179 () Bool)

(assert (=> setNonEmpty!43813 (= setRes!43813 (and tp!1782648 (inv!84049 setElem!43813) e!3895179))))

(declare-fun setRest!43813 () (InoxSet Context!11410))

(assert (=> setNonEmpty!43813 (= setRest!43810 ((_ map or) (store ((as const (Array Context!11410 Bool)) false) setElem!43813 true) setRest!43813))))

(declare-fun b!6419719 () Bool)

(declare-fun tp!1782647 () Bool)

(assert (=> b!6419719 (= e!3895179 tp!1782647)))

(assert (= (and setNonEmpty!43810 condSetEmpty!43813) setIsEmpty!43813))

(assert (= (and setNonEmpty!43810 (not condSetEmpty!43813)) setNonEmpty!43813))

(assert (= setNonEmpty!43813 b!6419719))

(declare-fun m!7214534 () Bool)

(assert (=> setNonEmpty!43813 m!7214534))

(declare-fun b!6419724 () Bool)

(declare-fun e!3895182 () Bool)

(declare-fun tp!1782651 () Bool)

(declare-fun tp!1782654 () Bool)

(assert (=> b!6419724 (= e!3895182 (and tp!1782651 tp!1782654))))

(assert (=> b!6418777 (= tp!1782564 e!3895182)))

(assert (= (and b!6418777 ((_ is Cons!65139) (exprs!6205 (h!71588 zl!343)))) b!6419724))

(declare-fun b!6419729 () Bool)

(declare-fun e!3895185 () Bool)

(declare-fun tp!1782657 () Bool)

(assert (=> b!6419729 (= e!3895185 (and tp_is_empty!41895 tp!1782657))))

(assert (=> b!6418746 (= tp!1782566 e!3895185)))

(assert (= (and b!6418746 ((_ is Cons!65138) (t!378876 s!2326))) b!6419729))

(declare-fun b_lambda!244029 () Bool)

(assert (= b_lambda!244021 (or b!6418769 b_lambda!244029)))

(declare-fun bs!1614226 () Bool)

(declare-fun d!2012898 () Bool)

(assert (= bs!1614226 (and d!2012898 b!6418769)))

(assert (=> bs!1614226 (= (dynLambda!25875 lambda!354551 lt!2376471) (derivationStepZipperUp!1495 lt!2376471 (h!71586 s!2326)))))

(assert (=> bs!1614226 m!7213784))

(assert (=> d!2012794 d!2012898))

(declare-fun b_lambda!244031 () Bool)

(assert (= b_lambda!244017 (or b!6418769 b_lambda!244031)))

(declare-fun bs!1614227 () Bool)

(declare-fun d!2012900 () Bool)

(assert (= bs!1614227 (and d!2012900 b!6418769)))

(assert (=> bs!1614227 (= (dynLambda!25875 lambda!354551 (h!71588 zl!343)) (derivationStepZipperUp!1495 (h!71588 zl!343) (h!71586 s!2326)))))

(assert (=> bs!1614227 m!7213710))

(assert (=> d!2012704 d!2012900))

(declare-fun b_lambda!244033 () Bool)

(assert (= b_lambda!244015 (or b!6418769 b_lambda!244033)))

(declare-fun bs!1614228 () Bool)

(declare-fun d!2012902 () Bool)

(assert (= bs!1614228 (and d!2012902 b!6418769)))

(assert (=> bs!1614228 (= (dynLambda!25875 lambda!354551 lt!2376478) (derivationStepZipperUp!1495 lt!2376478 (h!71586 s!2326)))))

(assert (=> bs!1614228 m!7213668))

(assert (=> d!2012684 d!2012902))

(declare-fun b_lambda!244035 () Bool)

(assert (= b_lambda!244013 (or b!6418769 b_lambda!244035)))

(declare-fun bs!1614229 () Bool)

(declare-fun d!2012904 () Bool)

(assert (= bs!1614229 (and d!2012904 b!6418769)))

(assert (=> bs!1614229 (= (dynLambda!25875 lambda!354551 lt!2376461) (derivationStepZipperUp!1495 lt!2376461 (h!71586 s!2326)))))

(assert (=> bs!1614229 m!7213656))

(assert (=> d!2012682 d!2012904))

(check-sat (not d!2012774) (not b!6418819) (not bm!551899) (not d!2012862) (not bm!551923) (not d!2012854) (not b!6418820) (not b!6419452) (not b_lambda!244031) (not bm!551900) (not d!2012682) (not b!6419582) (not d!2012644) (not b!6418902) (not d!2012722) (not b!6419194) (not b!6419551) (not b!6419095) (not bm!551908) (not b!6419454) (not b!6419197) (not b!6419482) (not b!6419599) (not b!6418813) (not b!6419287) (not bm!551913) (not d!2012714) (not d!2012684) (not b_lambda!244033) (not d!2012796) (not b!6419225) (not bm!551915) (not b!6419230) (not d!2012690) (not b!6419664) (not d!2012778) (not bm!551866) (not d!2012814) (not b!6419598) (not bm!551881) (not bm!551897) (not b!6419583) (not b!6419249) (not bm!551924) (not bs!1614229) (not b!6419220) (not b!6419507) (not bs!1614227) (not bm!551894) (not bm!551905) (not bm!551868) (not b!6419729) (not b!6418818) (not d!2012666) (not bm!551898) (not b!6419426) (not d!2012724) (not b!6419660) (not b!6419290) (not d!2012864) (not b!6419521) (not d!2012750) (not b!6419696) (not d!2012776) (not b!6419519) (not d!2012884) (not b!6419724) (not b!6419251) (not bm!551916) (not d!2012838) (not b!6419456) (not d!2012738) (not d!2012640) (not b!6419513) (not b!6419666) (not b!6418816) (not b!6419049) (not b!6419697) (not b!6418814) (not d!2012638) (not b!6419256) (not d!2012832) (not b!6419375) (not b!6419292) (not b!6419661) (not bm!551929) (not bs!1614226) (not b!6419052) (not bm!551904) (not b!6419701) (not b!6419560) (not bm!551922) (not b!6419227) (not b!6418906) (not b!6419502) (not d!2012692) (not b!6418812) (not bm!551893) (not d!2012678) (not d!2012812) (not d!2012836) (not b!6419336) (not d!2012696) (not b!6419575) (not b!6419700) (not b_lambda!244029) (not bs!1614228) (not d!2012826) (not bm!551919) (not d!2012658) (not b!6419335) (not setNonEmpty!43813) (not b!6419574) (not b!6419425) (not b!6419601) tp_is_empty!41895 (not d!2012706) (not b!6419051) (not b!6419692) (not d!2012686) (not d!2012794) (not b!6418898) (not b!6419159) (not d!2012834) (not b!6419685) (not bm!551920) (not b!6419461) (not b!6419595) (not d!2012852) (not b!6419424) (not b!6419429) (not d!2012788) (not d!2012800) (not b!6419450) (not b!6419374) (not b!6418904) (not d!2012828) (not b!6419665) (not b!6419368) (not b!6419662) (not b!6419208) (not b!6419515) (not b!6419600) (not b!6419517) (not bm!551914) (not b!6419050) (not b!6418826) (not d!2012848) (not d!2012746) (not b!6419648) (not b!6419222) (not b!6419417) (not b!6419245) (not b!6419691) (not bm!551841) (not b!6419695) (not b!6419373) (not b!6418999) (not bm!551882) (not bm!551928) (not b!6418911) (not b!6419448) (not bm!551907) (not d!2012790) (not d!2012804) (not d!2012846) (not b!6419243) (not d!2012882) (not d!2012704) (not b!6419285) (not b!6419164) (not b!6419217) (not b!6419477) (not b!6419526) (not b!6419288) (not b!6419286) (not b!6419371) (not b!6419234) (not b!6419211) (not b!6419719) (not b!6419289) (not b!6419247) (not b_lambda!244035) (not b!6419602) (not b!6419372) (not bm!551901) (not b!6419699) (not b!6419576) (not b!6419684) (not b!6419693) (not bm!551865) (not d!2012892) (not d!2012718) (not b!6418900))
(check-sat)
