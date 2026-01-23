; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!647266 () Bool)

(assert start!647266)

(declare-fun b!6624705 () Bool)

(assert (=> b!6624705 true))

(assert (=> b!6624705 true))

(declare-fun lambda!370118 () Int)

(declare-fun lambda!370117 () Int)

(assert (=> b!6624705 (not (= lambda!370118 lambda!370117))))

(assert (=> b!6624705 true))

(assert (=> b!6624705 true))

(declare-fun b!6624703 () Bool)

(assert (=> b!6624703 true))

(declare-fun setIsEmpty!45282 () Bool)

(declare-fun setRes!45282 () Bool)

(assert (=> setIsEmpty!45282 setRes!45282))

(declare-fun b!6624679 () Bool)

(declare-fun e!4007213 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33260 0))(
  ( (C!33261 (val!26332 Int)) )
))
(declare-datatypes ((Regex!16495 0))(
  ( (ElementMatch!16495 (c!1221458 C!33260)) (Concat!25340 (regOne!33502 Regex!16495) (regTwo!33502 Regex!16495)) (EmptyExpr!16495) (Star!16495 (reg!16824 Regex!16495)) (EmptyLang!16495) (Union!16495 (regOne!33503 Regex!16495) (regTwo!33503 Regex!16495)) )
))
(declare-datatypes ((List!65784 0))(
  ( (Nil!65660) (Cons!65660 (h!72108 Regex!16495) (t!379444 List!65784)) )
))
(declare-datatypes ((Context!11758 0))(
  ( (Context!11759 (exprs!6379 List!65784)) )
))
(declare-fun lt!2418394 () (InoxSet Context!11758))

(declare-datatypes ((List!65785 0))(
  ( (Nil!65661) (Cons!65661 (h!72109 C!33260) (t!379445 List!65785)) )
))
(declare-fun s!2326 () List!65785)

(declare-fun matchZipper!2507 ((InoxSet Context!11758) List!65785) Bool)

(assert (=> b!6624679 (= e!4007213 (matchZipper!2507 lt!2418394 (t!379445 s!2326)))))

(declare-fun b!6624680 () Bool)

(declare-fun e!4007220 () Bool)

(declare-fun e!4007224 () Bool)

(assert (=> b!6624680 (= e!4007220 e!4007224)))

(declare-fun res!2715804 () Bool)

(assert (=> b!6624680 (=> res!2715804 e!4007224)))

(declare-fun lt!2418414 () Bool)

(declare-fun lt!2418410 () Bool)

(assert (=> b!6624680 (= res!2715804 (not (= lt!2418414 lt!2418410)))))

(declare-fun r!7292 () Regex!16495)

(declare-fun matchRSpec!3596 (Regex!16495 List!65785) Bool)

(assert (=> b!6624680 (= lt!2418410 (matchRSpec!3596 (regTwo!33502 r!7292) s!2326))))

(declare-fun matchR!8678 (Regex!16495 List!65785) Bool)

(assert (=> b!6624680 (= lt!2418410 (matchR!8678 (regTwo!33502 r!7292) s!2326))))

(declare-datatypes ((Unit!159335 0))(
  ( (Unit!159336) )
))
(declare-fun lt!2418412 () Unit!159335)

(declare-fun mainMatchTheorem!3596 (Regex!16495 List!65785) Unit!159335)

(assert (=> b!6624680 (= lt!2418412 (mainMatchTheorem!3596 (regTwo!33502 r!7292) s!2326))))

(assert (=> b!6624680 (= (matchR!8678 (regOne!33502 r!7292) s!2326) (matchRSpec!3596 (regOne!33502 r!7292) s!2326))))

(declare-fun lt!2418401 () Unit!159335)

(assert (=> b!6624680 (= lt!2418401 (mainMatchTheorem!3596 (regOne!33502 r!7292) s!2326))))

(declare-fun b!6624681 () Bool)

(declare-fun res!2715793 () Bool)

(declare-fun e!4007212 () Bool)

(assert (=> b!6624681 (=> res!2715793 e!4007212)))

(get-info :version)

(assert (=> b!6624681 (= res!2715793 (or ((_ is Concat!25340) (regOne!33502 r!7292)) ((_ is Star!16495) (regOne!33502 r!7292)) (not ((_ is EmptyExpr!16495) (regOne!33502 r!7292)))))))

(declare-fun b!6624682 () Bool)

(declare-fun e!4007221 () Bool)

(declare-fun tp!1824779 () Bool)

(assert (=> b!6624682 (= e!4007221 tp!1824779)))

(declare-fun b!6624683 () Bool)

(declare-fun res!2715799 () Bool)

(declare-fun e!4007214 () Bool)

(assert (=> b!6624683 (=> res!2715799 e!4007214)))

(assert (=> b!6624683 (= res!2715799 (or ((_ is EmptyExpr!16495) r!7292) ((_ is EmptyLang!16495) r!7292) ((_ is ElementMatch!16495) r!7292) ((_ is Union!16495) r!7292) (not ((_ is Concat!25340) r!7292))))))

(declare-fun b!6624684 () Bool)

(declare-fun res!2715795 () Bool)

(assert (=> b!6624684 (=> res!2715795 e!4007214)))

(declare-datatypes ((List!65786 0))(
  ( (Nil!65662) (Cons!65662 (h!72110 Context!11758) (t!379446 List!65786)) )
))
(declare-fun zl!343 () List!65786)

(declare-fun isEmpty!37951 (List!65786) Bool)

(assert (=> b!6624684 (= res!2715795 (not (isEmpty!37951 (t!379446 zl!343))))))

(declare-fun b!6624685 () Bool)

(declare-fun res!2715798 () Bool)

(declare-fun e!4007215 () Bool)

(assert (=> b!6624685 (=> (not res!2715798) (not e!4007215))))

(declare-fun unfocusZipper!2237 (List!65786) Regex!16495)

(assert (=> b!6624685 (= res!2715798 (= r!7292 (unfocusZipper!2237 zl!343)))))

(declare-fun b!6624686 () Bool)

(declare-fun e!4007222 () Bool)

(declare-fun e!4007217 () Bool)

(assert (=> b!6624686 (= e!4007222 e!4007217)))

(declare-fun res!2715786 () Bool)

(assert (=> b!6624686 (=> res!2715786 e!4007217)))

(declare-fun lt!2418398 () Bool)

(declare-fun z!1189 () (InoxSet Context!11758))

(assert (=> b!6624686 (= res!2715786 (not (= (matchZipper!2507 z!1189 s!2326) lt!2418398)))))

(declare-fun lt!2418409 () Bool)

(assert (=> b!6624686 (= lt!2418409 lt!2418398)))

(assert (=> b!6624686 (= lt!2418398 (matchZipper!2507 lt!2418394 (t!379445 s!2326)))))

(declare-fun lt!2418395 () (InoxSet Context!11758))

(assert (=> b!6624686 (= lt!2418409 (matchZipper!2507 lt!2418395 (t!379445 s!2326)))))

(declare-fun lt!2418406 () (InoxSet Context!11758))

(declare-fun lt!2418400 () Unit!159335)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1326 ((InoxSet Context!11758) (InoxSet Context!11758) List!65785) Unit!159335)

(assert (=> b!6624686 (= lt!2418400 (lemmaZipperConcatMatchesSameAsBothZippers!1326 lt!2418406 lt!2418394 (t!379445 s!2326)))))

(declare-fun res!2715782 () Bool)

(assert (=> start!647266 (=> (not res!2715782) (not e!4007215))))

(declare-fun validRegex!8231 (Regex!16495) Bool)

(assert (=> start!647266 (= res!2715782 (validRegex!8231 r!7292))))

(assert (=> start!647266 e!4007215))

(assert (=> start!647266 e!4007221))

(declare-fun condSetEmpty!45282 () Bool)

(assert (=> start!647266 (= condSetEmpty!45282 (= z!1189 ((as const (Array Context!11758 Bool)) false)))))

(assert (=> start!647266 setRes!45282))

(declare-fun e!4007211 () Bool)

(assert (=> start!647266 e!4007211))

(declare-fun e!4007218 () Bool)

(assert (=> start!647266 e!4007218))

(declare-fun b!6624678 () Bool)

(declare-fun e!4007219 () Unit!159335)

(declare-fun Unit!159337 () Unit!159335)

(assert (=> b!6624678 (= e!4007219 Unit!159337)))

(declare-fun b!6624687 () Bool)

(declare-fun res!2715790 () Bool)

(assert (=> b!6624687 (=> (not res!2715790) (not e!4007215))))

(declare-fun toList!10279 ((InoxSet Context!11758)) List!65786)

(assert (=> b!6624687 (= res!2715790 (= (toList!10279 z!1189) zl!343))))

(declare-fun b!6624688 () Bool)

(assert (=> b!6624688 (= e!4007212 e!4007220)))

(declare-fun res!2715785 () Bool)

(assert (=> b!6624688 (=> res!2715785 e!4007220)))

(assert (=> b!6624688 (= res!2715785 (or (not (= lt!2418406 ((as const (Array Context!11758 Bool)) false))) (not (= r!7292 (Concat!25340 (regOne!33502 r!7292) (regTwo!33502 r!7292)))) (not (= (regOne!33502 r!7292) EmptyExpr!16495))))))

(assert (=> b!6624688 (not (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(declare-fun lt!2418399 () Unit!159335)

(declare-fun lemmaEmptyZipperMatchesNothing!90 ((InoxSet Context!11758) List!65785) Unit!159335)

(assert (=> b!6624688 (= lt!2418399 (lemmaEmptyZipperMatchesNothing!90 lt!2418406 (t!379445 s!2326)))))

(declare-fun b!6624689 () Bool)

(declare-fun tp!1824782 () Bool)

(declare-fun tp!1824783 () Bool)

(assert (=> b!6624689 (= e!4007221 (and tp!1824782 tp!1824783))))

(declare-fun b!6624690 () Bool)

(declare-fun tp_is_empty!42243 () Bool)

(declare-fun tp!1824780 () Bool)

(assert (=> b!6624690 (= e!4007218 (and tp_is_empty!42243 tp!1824780))))

(declare-fun b!6624691 () Bool)

(assert (=> b!6624691 (= e!4007215 (not e!4007214))))

(declare-fun res!2715787 () Bool)

(assert (=> b!6624691 (=> res!2715787 e!4007214)))

(assert (=> b!6624691 (= res!2715787 (not ((_ is Cons!65662) zl!343)))))

(assert (=> b!6624691 (= lt!2418414 (matchRSpec!3596 r!7292 s!2326))))

(assert (=> b!6624691 (= lt!2418414 (matchR!8678 r!7292 s!2326))))

(declare-fun lt!2418396 () Unit!159335)

(assert (=> b!6624691 (= lt!2418396 (mainMatchTheorem!3596 r!7292 s!2326))))

(declare-fun b!6624692 () Bool)

(declare-fun res!2715800 () Bool)

(declare-fun e!4007209 () Bool)

(assert (=> b!6624692 (=> res!2715800 e!4007209)))

(declare-fun lt!2418411 () (InoxSet Context!11758))

(declare-fun lt!2418407 () List!65786)

(assert (=> b!6624692 (= res!2715800 (not (= (toList!10279 lt!2418411) lt!2418407)))))

(declare-fun b!6624693 () Bool)

(declare-fun tp!1824778 () Bool)

(declare-fun tp!1824785 () Bool)

(assert (=> b!6624693 (= e!4007221 (and tp!1824778 tp!1824785))))

(declare-fun b!6624694 () Bool)

(declare-fun e!4007225 () Bool)

(declare-fun nullable!6488 (Regex!16495) Bool)

(assert (=> b!6624694 (= e!4007225 (nullable!6488 (regOne!33502 (regOne!33502 r!7292))))))

(declare-fun b!6624695 () Bool)

(declare-fun e!4007226 () Bool)

(declare-fun tp!1824784 () Bool)

(assert (=> b!6624695 (= e!4007226 tp!1824784)))

(declare-fun b!6624696 () Bool)

(assert (=> b!6624696 (= e!4007221 tp_is_empty!42243)))

(declare-fun b!6624697 () Bool)

(declare-fun Unit!159338 () Unit!159335)

(assert (=> b!6624697 (= e!4007219 Unit!159338)))

(declare-fun lt!2418397 () Unit!159335)

(assert (=> b!6624697 (= lt!2418397 (lemmaZipperConcatMatchesSameAsBothZippers!1326 lt!2418406 lt!2418394 (t!379445 s!2326)))))

(declare-fun res!2715801 () Bool)

(assert (=> b!6624697 (= res!2715801 (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(assert (=> b!6624697 (=> res!2715801 e!4007213)))

(assert (=> b!6624697 (= (matchZipper!2507 ((_ map or) lt!2418406 lt!2418394) (t!379445 s!2326)) e!4007213)))

(declare-fun b!6624698 () Bool)

(declare-fun res!2715792 () Bool)

(assert (=> b!6624698 (=> res!2715792 e!4007214)))

(assert (=> b!6624698 (= res!2715792 (not ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6624699 () Bool)

(declare-fun res!2715783 () Bool)

(declare-fun e!4007216 () Bool)

(assert (=> b!6624699 (=> res!2715783 e!4007216)))

(declare-fun isEmpty!37952 (List!65784) Bool)

(assert (=> b!6624699 (= res!2715783 (isEmpty!37952 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6624700 () Bool)

(declare-fun e!4007210 () Bool)

(assert (=> b!6624700 (= e!4007224 e!4007210)))

(declare-fun res!2715797 () Bool)

(assert (=> b!6624700 (=> res!2715797 e!4007210)))

(declare-fun derivationStepZipper!2461 ((InoxSet Context!11758) C!33260) (InoxSet Context!11758))

(assert (=> b!6624700 (= res!2715797 (not (= lt!2418394 (derivationStepZipper!2461 lt!2418411 (h!72109 s!2326)))))))

(declare-fun lambda!370119 () Int)

(declare-fun lt!2418404 () Context!11758)

(declare-fun flatMap!2000 ((InoxSet Context!11758) Int) (InoxSet Context!11758))

(declare-fun derivationStepZipperUp!1669 (Context!11758 C!33260) (InoxSet Context!11758))

(assert (=> b!6624700 (= (flatMap!2000 lt!2418411 lambda!370119) (derivationStepZipperUp!1669 lt!2418404 (h!72109 s!2326)))))

(declare-fun lt!2418392 () Unit!159335)

(declare-fun lemmaFlatMapOnSingletonSet!1526 ((InoxSet Context!11758) Context!11758 Int) Unit!159335)

(assert (=> b!6624700 (= lt!2418392 (lemmaFlatMapOnSingletonSet!1526 lt!2418411 lt!2418404 lambda!370119))))

(assert (=> b!6624700 (= lt!2418411 (store ((as const (Array Context!11758 Bool)) false) lt!2418404 true))))

(declare-fun tp!1824786 () Bool)

(declare-fun b!6624701 () Bool)

(declare-fun inv!84484 (Context!11758) Bool)

(assert (=> b!6624701 (= e!4007211 (and (inv!84484 (h!72110 zl!343)) e!4007226 tp!1824786))))

(declare-fun b!6624702 () Bool)

(assert (=> b!6624702 (= e!4007217 e!4007209)))

(declare-fun res!2715784 () Bool)

(assert (=> b!6624702 (=> res!2715784 e!4007209)))

(declare-fun lt!2418413 () Regex!16495)

(assert (=> b!6624702 (= res!2715784 (not (validRegex!8231 lt!2418413)))))

(declare-fun generalisedConcat!2092 (List!65784) Regex!16495)

(assert (=> b!6624702 (= lt!2418413 (generalisedConcat!2092 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6624702 (= lt!2418407 (Cons!65662 lt!2418404 Nil!65662))))

(assert (=> b!6624703 (= e!4007216 e!4007212)))

(declare-fun res!2715789 () Bool)

(assert (=> b!6624703 (=> res!2715789 e!4007212)))

(assert (=> b!6624703 (= res!2715789 (or (and ((_ is ElementMatch!16495) (regOne!33502 r!7292)) (= (c!1221458 (regOne!33502 r!7292)) (h!72109 s!2326))) ((_ is Union!16495) (regOne!33502 r!7292))))))

(declare-fun lt!2418393 () Unit!159335)

(assert (=> b!6624703 (= lt!2418393 e!4007219)))

(declare-fun c!1221457 () Bool)

(assert (=> b!6624703 (= c!1221457 (nullable!6488 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6624703 (= (flatMap!2000 z!1189 lambda!370119) (derivationStepZipperUp!1669 (h!72110 zl!343) (h!72109 s!2326)))))

(declare-fun lt!2418402 () Unit!159335)

(assert (=> b!6624703 (= lt!2418402 (lemmaFlatMapOnSingletonSet!1526 z!1189 (h!72110 zl!343) lambda!370119))))

(assert (=> b!6624703 (= lt!2418394 (derivationStepZipperUp!1669 lt!2418404 (h!72109 s!2326)))))

(declare-fun derivationStepZipperDown!1743 (Regex!16495 Context!11758 C!33260) (InoxSet Context!11758))

(assert (=> b!6624703 (= lt!2418406 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (h!72110 zl!343))) lt!2418404 (h!72109 s!2326)))))

(assert (=> b!6624703 (= lt!2418404 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun lt!2418391 () (InoxSet Context!11758))

(assert (=> b!6624703 (= lt!2418391 (derivationStepZipperUp!1669 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))) (h!72109 s!2326)))))

(declare-fun b!6624704 () Bool)

(declare-fun res!2715791 () Bool)

(assert (=> b!6624704 (=> res!2715791 e!4007212)))

(assert (=> b!6624704 (= res!2715791 e!4007225)))

(declare-fun res!2715803 () Bool)

(assert (=> b!6624704 (=> (not res!2715803) (not e!4007225))))

(assert (=> b!6624704 (= res!2715803 ((_ is Concat!25340) (regOne!33502 r!7292)))))

(assert (=> b!6624705 (= e!4007214 e!4007216)))

(declare-fun res!2715794 () Bool)

(assert (=> b!6624705 (=> res!2715794 e!4007216)))

(declare-fun lt!2418405 () Bool)

(assert (=> b!6624705 (= res!2715794 (or (not (= lt!2418414 lt!2418405)) ((_ is Nil!65661) s!2326)))))

(declare-fun Exists!3565 (Int) Bool)

(assert (=> b!6624705 (= (Exists!3565 lambda!370117) (Exists!3565 lambda!370118))))

(declare-fun lt!2418408 () Unit!159335)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2102 (Regex!16495 Regex!16495 List!65785) Unit!159335)

(assert (=> b!6624705 (= lt!2418408 (lemmaExistCutMatchRandMatchRSpecEquivalent!2102 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326))))

(assert (=> b!6624705 (= lt!2418405 (Exists!3565 lambda!370117))))

(declare-datatypes ((tuple2!66948 0))(
  ( (tuple2!66949 (_1!36777 List!65785) (_2!36777 List!65785)) )
))
(declare-datatypes ((Option!16386 0))(
  ( (None!16385) (Some!16385 (v!52576 tuple2!66948)) )
))
(declare-fun isDefined!13089 (Option!16386) Bool)

(declare-fun findConcatSeparation!2800 (Regex!16495 Regex!16495 List!65785 List!65785 List!65785) Option!16386)

(assert (=> b!6624705 (= lt!2418405 (isDefined!13089 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326)))))

(declare-fun lt!2418403 () Unit!159335)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2564 (Regex!16495 Regex!16495 List!65785) Unit!159335)

(assert (=> b!6624705 (= lt!2418403 (lemmaFindConcatSeparationEquivalentToExists!2564 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326))))

(declare-fun e!4007223 () Bool)

(declare-fun tp!1824787 () Bool)

(declare-fun setNonEmpty!45282 () Bool)

(declare-fun setElem!45282 () Context!11758)

(assert (=> setNonEmpty!45282 (= setRes!45282 (and tp!1824787 (inv!84484 setElem!45282) e!4007223))))

(declare-fun setRest!45282 () (InoxSet Context!11758))

(assert (=> setNonEmpty!45282 (= z!1189 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) setElem!45282 true) setRest!45282))))

(declare-fun b!6624706 () Bool)

(declare-fun res!2715788 () Bool)

(assert (=> b!6624706 (=> res!2715788 e!4007214)))

(declare-fun generalisedUnion!2339 (List!65784) Regex!16495)

(declare-fun unfocusZipperList!1916 (List!65786) List!65784)

(assert (=> b!6624706 (= res!2715788 (not (= r!7292 (generalisedUnion!2339 (unfocusZipperList!1916 zl!343)))))))

(declare-fun b!6624707 () Bool)

(declare-fun res!2715802 () Bool)

(assert (=> b!6624707 (=> res!2715802 e!4007214)))

(assert (=> b!6624707 (= res!2715802 (not (= r!7292 (generalisedConcat!2092 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6624708 () Bool)

(declare-fun tp!1824781 () Bool)

(assert (=> b!6624708 (= e!4007223 tp!1824781)))

(declare-fun b!6624709 () Bool)

(assert (=> b!6624709 (= e!4007209 (= lt!2418413 (unfocusZipper!2237 lt!2418407)))))

(declare-fun b!6624710 () Bool)

(assert (=> b!6624710 (= e!4007210 e!4007222)))

(declare-fun res!2715796 () Bool)

(assert (=> b!6624710 (=> res!2715796 e!4007222)))

(assert (=> b!6624710 (= res!2715796 (not (= (derivationStepZipper!2461 z!1189 (h!72109 s!2326)) lt!2418395)))))

(assert (=> b!6624710 (= lt!2418395 ((_ map or) lt!2418406 lt!2418394))))

(assert (= (and start!647266 res!2715782) b!6624687))

(assert (= (and b!6624687 res!2715790) b!6624685))

(assert (= (and b!6624685 res!2715798) b!6624691))

(assert (= (and b!6624691 (not res!2715787)) b!6624684))

(assert (= (and b!6624684 (not res!2715795)) b!6624707))

(assert (= (and b!6624707 (not res!2715802)) b!6624698))

(assert (= (and b!6624698 (not res!2715792)) b!6624706))

(assert (= (and b!6624706 (not res!2715788)) b!6624683))

(assert (= (and b!6624683 (not res!2715799)) b!6624705))

(assert (= (and b!6624705 (not res!2715794)) b!6624699))

(assert (= (and b!6624699 (not res!2715783)) b!6624703))

(assert (= (and b!6624703 c!1221457) b!6624697))

(assert (= (and b!6624703 (not c!1221457)) b!6624678))

(assert (= (and b!6624697 (not res!2715801)) b!6624679))

(assert (= (and b!6624703 (not res!2715789)) b!6624704))

(assert (= (and b!6624704 res!2715803) b!6624694))

(assert (= (and b!6624704 (not res!2715791)) b!6624681))

(assert (= (and b!6624681 (not res!2715793)) b!6624688))

(assert (= (and b!6624688 (not res!2715785)) b!6624680))

(assert (= (and b!6624680 (not res!2715804)) b!6624700))

(assert (= (and b!6624700 (not res!2715797)) b!6624710))

(assert (= (and b!6624710 (not res!2715796)) b!6624686))

(assert (= (and b!6624686 (not res!2715786)) b!6624702))

(assert (= (and b!6624702 (not res!2715784)) b!6624692))

(assert (= (and b!6624692 (not res!2715800)) b!6624709))

(assert (= (and start!647266 ((_ is ElementMatch!16495) r!7292)) b!6624696))

(assert (= (and start!647266 ((_ is Concat!25340) r!7292)) b!6624693))

(assert (= (and start!647266 ((_ is Star!16495) r!7292)) b!6624682))

(assert (= (and start!647266 ((_ is Union!16495) r!7292)) b!6624689))

(assert (= (and start!647266 condSetEmpty!45282) setIsEmpty!45282))

(assert (= (and start!647266 (not condSetEmpty!45282)) setNonEmpty!45282))

(assert (= setNonEmpty!45282 b!6624708))

(assert (= b!6624701 b!6624695))

(assert (= (and start!647266 ((_ is Cons!65662) zl!343)) b!6624701))

(assert (= (and start!647266 ((_ is Cons!65661) s!2326)) b!6624690))

(declare-fun m!7395198 () Bool)

(assert (=> b!6624706 m!7395198))

(assert (=> b!6624706 m!7395198))

(declare-fun m!7395200 () Bool)

(assert (=> b!6624706 m!7395200))

(declare-fun m!7395202 () Bool)

(assert (=> b!6624709 m!7395202))

(declare-fun m!7395204 () Bool)

(assert (=> b!6624686 m!7395204))

(declare-fun m!7395206 () Bool)

(assert (=> b!6624686 m!7395206))

(declare-fun m!7395208 () Bool)

(assert (=> b!6624686 m!7395208))

(declare-fun m!7395210 () Bool)

(assert (=> b!6624686 m!7395210))

(declare-fun m!7395212 () Bool)

(assert (=> b!6624692 m!7395212))

(declare-fun m!7395214 () Bool)

(assert (=> b!6624687 m!7395214))

(declare-fun m!7395216 () Bool)

(assert (=> b!6624688 m!7395216))

(declare-fun m!7395218 () Bool)

(assert (=> b!6624688 m!7395218))

(declare-fun m!7395220 () Bool)

(assert (=> b!6624710 m!7395220))

(declare-fun m!7395222 () Bool)

(assert (=> start!647266 m!7395222))

(declare-fun m!7395224 () Bool)

(assert (=> b!6624707 m!7395224))

(declare-fun m!7395226 () Bool)

(assert (=> b!6624702 m!7395226))

(declare-fun m!7395228 () Bool)

(assert (=> b!6624702 m!7395228))

(declare-fun m!7395230 () Bool)

(assert (=> b!6624680 m!7395230))

(declare-fun m!7395232 () Bool)

(assert (=> b!6624680 m!7395232))

(declare-fun m!7395234 () Bool)

(assert (=> b!6624680 m!7395234))

(declare-fun m!7395236 () Bool)

(assert (=> b!6624680 m!7395236))

(declare-fun m!7395238 () Bool)

(assert (=> b!6624680 m!7395238))

(declare-fun m!7395240 () Bool)

(assert (=> b!6624680 m!7395240))

(declare-fun m!7395242 () Bool)

(assert (=> b!6624685 m!7395242))

(declare-fun m!7395244 () Bool)

(assert (=> b!6624684 m!7395244))

(assert (=> b!6624679 m!7395206))

(declare-fun m!7395246 () Bool)

(assert (=> setNonEmpty!45282 m!7395246))

(declare-fun m!7395248 () Bool)

(assert (=> b!6624701 m!7395248))

(declare-fun m!7395250 () Bool)

(assert (=> b!6624694 m!7395250))

(declare-fun m!7395252 () Bool)

(assert (=> b!6624703 m!7395252))

(declare-fun m!7395254 () Bool)

(assert (=> b!6624703 m!7395254))

(declare-fun m!7395256 () Bool)

(assert (=> b!6624703 m!7395256))

(declare-fun m!7395258 () Bool)

(assert (=> b!6624703 m!7395258))

(declare-fun m!7395260 () Bool)

(assert (=> b!6624703 m!7395260))

(declare-fun m!7395262 () Bool)

(assert (=> b!6624703 m!7395262))

(declare-fun m!7395264 () Bool)

(assert (=> b!6624703 m!7395264))

(declare-fun m!7395266 () Bool)

(assert (=> b!6624699 m!7395266))

(declare-fun m!7395268 () Bool)

(assert (=> b!6624700 m!7395268))

(assert (=> b!6624700 m!7395254))

(declare-fun m!7395270 () Bool)

(assert (=> b!6624700 m!7395270))

(declare-fun m!7395272 () Bool)

(assert (=> b!6624700 m!7395272))

(declare-fun m!7395274 () Bool)

(assert (=> b!6624700 m!7395274))

(assert (=> b!6624697 m!7395210))

(assert (=> b!6624697 m!7395216))

(declare-fun m!7395276 () Bool)

(assert (=> b!6624697 m!7395276))

(declare-fun m!7395278 () Bool)

(assert (=> b!6624691 m!7395278))

(declare-fun m!7395280 () Bool)

(assert (=> b!6624691 m!7395280))

(declare-fun m!7395282 () Bool)

(assert (=> b!6624691 m!7395282))

(declare-fun m!7395284 () Bool)

(assert (=> b!6624705 m!7395284))

(assert (=> b!6624705 m!7395284))

(declare-fun m!7395286 () Bool)

(assert (=> b!6624705 m!7395286))

(declare-fun m!7395288 () Bool)

(assert (=> b!6624705 m!7395288))

(declare-fun m!7395290 () Bool)

(assert (=> b!6624705 m!7395290))

(declare-fun m!7395292 () Bool)

(assert (=> b!6624705 m!7395292))

(assert (=> b!6624705 m!7395288))

(declare-fun m!7395294 () Bool)

(assert (=> b!6624705 m!7395294))

(check-sat (not b!6624700) (not b!6624680) (not setNonEmpty!45282) (not b!6624705) tp_is_empty!42243 (not b!6624679) (not b!6624708) (not b!6624709) (not b!6624707) (not b!6624684) (not b!6624692) (not b!6624686) (not b!6624703) (not b!6624689) (not b!6624691) (not b!6624699) (not b!6624706) (not b!6624687) (not b!6624685) (not b!6624682) (not b!6624693) (not b!6624697) (not b!6624702) (not b!6624710) (not b!6624701) (not b!6624694) (not b!6624695) (not start!647266) (not b!6624690) (not b!6624688))
(check-sat)
(get-model)

(declare-fun d!2076569 () Bool)

(declare-fun lt!2418417 () Regex!16495)

(assert (=> d!2076569 (validRegex!8231 lt!2418417)))

(assert (=> d!2076569 (= lt!2418417 (generalisedUnion!2339 (unfocusZipperList!1916 lt!2418407)))))

(assert (=> d!2076569 (= (unfocusZipper!2237 lt!2418407) lt!2418417)))

(declare-fun bs!1700311 () Bool)

(assert (= bs!1700311 d!2076569))

(declare-fun m!7395304 () Bool)

(assert (=> bs!1700311 m!7395304))

(declare-fun m!7395306 () Bool)

(assert (=> bs!1700311 m!7395306))

(assert (=> bs!1700311 m!7395306))

(declare-fun m!7395308 () Bool)

(assert (=> bs!1700311 m!7395308))

(assert (=> b!6624709 d!2076569))

(declare-fun d!2076573 () Bool)

(assert (=> d!2076573 (= (isEmpty!37952 (t!379444 (exprs!6379 (h!72110 zl!343)))) ((_ is Nil!65660) (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6624699 d!2076573))

(declare-fun bs!1700312 () Bool)

(declare-fun d!2076575 () Bool)

(assert (= bs!1700312 (and d!2076575 b!6624703)))

(declare-fun lambda!370128 () Int)

(assert (=> bs!1700312 (= lambda!370128 lambda!370119)))

(assert (=> d!2076575 true))

(assert (=> d!2076575 (= (derivationStepZipper!2461 lt!2418411 (h!72109 s!2326)) (flatMap!2000 lt!2418411 lambda!370128))))

(declare-fun bs!1700313 () Bool)

(assert (= bs!1700313 d!2076575))

(declare-fun m!7395310 () Bool)

(assert (=> bs!1700313 m!7395310))

(assert (=> b!6624700 d!2076575))

(declare-fun d!2076577 () Bool)

(declare-fun choose!49495 ((InoxSet Context!11758) Int) (InoxSet Context!11758))

(assert (=> d!2076577 (= (flatMap!2000 lt!2418411 lambda!370119) (choose!49495 lt!2418411 lambda!370119))))

(declare-fun bs!1700314 () Bool)

(assert (= bs!1700314 d!2076577))

(declare-fun m!7395312 () Bool)

(assert (=> bs!1700314 m!7395312))

(assert (=> b!6624700 d!2076577))

(declare-fun b!6624800 () Bool)

(declare-fun e!4007273 () (InoxSet Context!11758))

(assert (=> b!6624800 (= e!4007273 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2076579 () Bool)

(declare-fun c!1221484 () Bool)

(declare-fun e!4007272 () Bool)

(assert (=> d!2076579 (= c!1221484 e!4007272)))

(declare-fun res!2715842 () Bool)

(assert (=> d!2076579 (=> (not res!2715842) (not e!4007272))))

(assert (=> d!2076579 (= res!2715842 ((_ is Cons!65660) (exprs!6379 lt!2418404)))))

(declare-fun e!4007274 () (InoxSet Context!11758))

(assert (=> d!2076579 (= (derivationStepZipperUp!1669 lt!2418404 (h!72109 s!2326)) e!4007274)))

(declare-fun b!6624801 () Bool)

(assert (=> b!6624801 (= e!4007274 e!4007273)))

(declare-fun c!1221483 () Bool)

(assert (=> b!6624801 (= c!1221483 ((_ is Cons!65660) (exprs!6379 lt!2418404)))))

(declare-fun b!6624802 () Bool)

(declare-fun call!580942 () (InoxSet Context!11758))

(assert (=> b!6624802 (= e!4007274 ((_ map or) call!580942 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (h!72109 s!2326))))))

(declare-fun b!6624803 () Bool)

(assert (=> b!6624803 (= e!4007273 call!580942)))

(declare-fun b!6624804 () Bool)

(assert (=> b!6624804 (= e!4007272 (nullable!6488 (h!72108 (exprs!6379 lt!2418404))))))

(declare-fun bm!580937 () Bool)

(assert (=> bm!580937 (= call!580942 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 lt!2418404)) (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (h!72109 s!2326)))))

(assert (= (and d!2076579 res!2715842) b!6624804))

(assert (= (and d!2076579 c!1221484) b!6624802))

(assert (= (and d!2076579 (not c!1221484)) b!6624801))

(assert (= (and b!6624801 c!1221483) b!6624803))

(assert (= (and b!6624801 (not c!1221483)) b!6624800))

(assert (= (or b!6624802 b!6624803) bm!580937))

(declare-fun m!7395314 () Bool)

(assert (=> b!6624802 m!7395314))

(declare-fun m!7395316 () Bool)

(assert (=> b!6624804 m!7395316))

(declare-fun m!7395318 () Bool)

(assert (=> bm!580937 m!7395318))

(assert (=> b!6624700 d!2076579))

(declare-fun d!2076581 () Bool)

(declare-fun dynLambda!26151 (Int Context!11758) (InoxSet Context!11758))

(assert (=> d!2076581 (= (flatMap!2000 lt!2418411 lambda!370119) (dynLambda!26151 lambda!370119 lt!2418404))))

(declare-fun lt!2418423 () Unit!159335)

(declare-fun choose!49496 ((InoxSet Context!11758) Context!11758 Int) Unit!159335)

(assert (=> d!2076581 (= lt!2418423 (choose!49496 lt!2418411 lt!2418404 lambda!370119))))

(assert (=> d!2076581 (= lt!2418411 (store ((as const (Array Context!11758 Bool)) false) lt!2418404 true))))

(assert (=> d!2076581 (= (lemmaFlatMapOnSingletonSet!1526 lt!2418411 lt!2418404 lambda!370119) lt!2418423)))

(declare-fun b_lambda!250489 () Bool)

(assert (=> (not b_lambda!250489) (not d!2076581)))

(declare-fun bs!1700315 () Bool)

(assert (= bs!1700315 d!2076581))

(assert (=> bs!1700315 m!7395274))

(declare-fun m!7395332 () Bool)

(assert (=> bs!1700315 m!7395332))

(declare-fun m!7395334 () Bool)

(assert (=> bs!1700315 m!7395334))

(assert (=> bs!1700315 m!7395272))

(assert (=> b!6624700 d!2076581))

(declare-fun d!2076585 () Bool)

(declare-fun res!2715868 () Bool)

(declare-fun e!4007304 () Bool)

(assert (=> d!2076585 (=> res!2715868 e!4007304)))

(assert (=> d!2076585 (= res!2715868 ((_ is ElementMatch!16495) r!7292))))

(assert (=> d!2076585 (= (validRegex!8231 r!7292) e!4007304)))

(declare-fun b!6624848 () Bool)

(declare-fun e!4007309 () Bool)

(declare-fun e!4007305 () Bool)

(assert (=> b!6624848 (= e!4007309 e!4007305)))

(declare-fun res!2715867 () Bool)

(assert (=> b!6624848 (= res!2715867 (not (nullable!6488 (reg!16824 r!7292))))))

(assert (=> b!6624848 (=> (not res!2715867) (not e!4007305))))

(declare-fun c!1221497 () Bool)

(declare-fun bm!580947 () Bool)

(declare-fun call!580953 () Bool)

(declare-fun c!1221496 () Bool)

(assert (=> bm!580947 (= call!580953 (validRegex!8231 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))

(declare-fun b!6624849 () Bool)

(declare-fun res!2715866 () Bool)

(declare-fun e!4007306 () Bool)

(assert (=> b!6624849 (=> res!2715866 e!4007306)))

(assert (=> b!6624849 (= res!2715866 (not ((_ is Concat!25340) r!7292)))))

(declare-fun e!4007307 () Bool)

(assert (=> b!6624849 (= e!4007307 e!4007306)))

(declare-fun b!6624850 () Bool)

(assert (=> b!6624850 (= e!4007309 e!4007307)))

(assert (=> b!6624850 (= c!1221496 ((_ is Union!16495) r!7292))))

(declare-fun b!6624851 () Bool)

(assert (=> b!6624851 (= e!4007305 call!580953)))

(declare-fun b!6624852 () Bool)

(assert (=> b!6624852 (= e!4007304 e!4007309)))

(assert (=> b!6624852 (= c!1221497 ((_ is Star!16495) r!7292))))

(declare-fun b!6624853 () Bool)

(declare-fun e!4007303 () Bool)

(declare-fun call!580952 () Bool)

(assert (=> b!6624853 (= e!4007303 call!580952)))

(declare-fun b!6624854 () Bool)

(assert (=> b!6624854 (= e!4007306 e!4007303)))

(declare-fun res!2715864 () Bool)

(assert (=> b!6624854 (=> (not res!2715864) (not e!4007303))))

(declare-fun call!580954 () Bool)

(assert (=> b!6624854 (= res!2715864 call!580954)))

(declare-fun bm!580948 () Bool)

(assert (=> bm!580948 (= call!580952 (validRegex!8231 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))

(declare-fun b!6624855 () Bool)

(declare-fun e!4007308 () Bool)

(assert (=> b!6624855 (= e!4007308 call!580952)))

(declare-fun b!6624856 () Bool)

(declare-fun res!2715865 () Bool)

(assert (=> b!6624856 (=> (not res!2715865) (not e!4007308))))

(assert (=> b!6624856 (= res!2715865 call!580954)))

(assert (=> b!6624856 (= e!4007307 e!4007308)))

(declare-fun bm!580949 () Bool)

(assert (=> bm!580949 (= call!580954 call!580953)))

(assert (= (and d!2076585 (not res!2715868)) b!6624852))

(assert (= (and b!6624852 c!1221497) b!6624848))

(assert (= (and b!6624852 (not c!1221497)) b!6624850))

(assert (= (and b!6624848 res!2715867) b!6624851))

(assert (= (and b!6624850 c!1221496) b!6624856))

(assert (= (and b!6624850 (not c!1221496)) b!6624849))

(assert (= (and b!6624856 res!2715865) b!6624855))

(assert (= (and b!6624849 (not res!2715866)) b!6624854))

(assert (= (and b!6624854 res!2715864) b!6624853))

(assert (= (or b!6624855 b!6624853) bm!580948))

(assert (= (or b!6624856 b!6624854) bm!580949))

(assert (= (or b!6624851 bm!580949) bm!580947))

(declare-fun m!7395344 () Bool)

(assert (=> b!6624848 m!7395344))

(declare-fun m!7395346 () Bool)

(assert (=> bm!580947 m!7395346))

(declare-fun m!7395348 () Bool)

(assert (=> bm!580948 m!7395348))

(assert (=> start!647266 d!2076585))

(declare-fun d!2076591 () Bool)

(declare-fun e!4007326 () Bool)

(assert (=> d!2076591 e!4007326))

(declare-fun res!2715882 () Bool)

(assert (=> d!2076591 (=> (not res!2715882) (not e!4007326))))

(declare-fun lt!2418431 () List!65786)

(declare-fun noDuplicate!2295 (List!65786) Bool)

(assert (=> d!2076591 (= res!2715882 (noDuplicate!2295 lt!2418431))))

(declare-fun choose!49497 ((InoxSet Context!11758)) List!65786)

(assert (=> d!2076591 (= lt!2418431 (choose!49497 z!1189))))

(assert (=> d!2076591 (= (toList!10279 z!1189) lt!2418431)))

(declare-fun b!6624884 () Bool)

(declare-fun content!12675 (List!65786) (InoxSet Context!11758))

(assert (=> b!6624884 (= e!4007326 (= (content!12675 lt!2418431) z!1189))))

(assert (= (and d!2076591 res!2715882) b!6624884))

(declare-fun m!7395360 () Bool)

(assert (=> d!2076591 m!7395360))

(declare-fun m!7395362 () Bool)

(assert (=> d!2076591 m!7395362))

(declare-fun m!7395364 () Bool)

(assert (=> b!6624884 m!7395364))

(assert (=> b!6624687 d!2076591))

(declare-fun d!2076597 () Bool)

(declare-fun c!1221510 () Bool)

(declare-fun isEmpty!37954 (List!65785) Bool)

(assert (=> d!2076597 (= c!1221510 (isEmpty!37954 (t!379445 s!2326)))))

(declare-fun e!4007336 () Bool)

(assert (=> d!2076597 (= (matchZipper!2507 lt!2418406 (t!379445 s!2326)) e!4007336)))

(declare-fun b!6624903 () Bool)

(declare-fun nullableZipper!2235 ((InoxSet Context!11758)) Bool)

(assert (=> b!6624903 (= e!4007336 (nullableZipper!2235 lt!2418406))))

(declare-fun b!6624904 () Bool)

(declare-fun head!13432 (List!65785) C!33260)

(declare-fun tail!12517 (List!65785) List!65785)

(assert (=> b!6624904 (= e!4007336 (matchZipper!2507 (derivationStepZipper!2461 lt!2418406 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))))))

(assert (= (and d!2076597 c!1221510) b!6624903))

(assert (= (and d!2076597 (not c!1221510)) b!6624904))

(declare-fun m!7395380 () Bool)

(assert (=> d!2076597 m!7395380))

(declare-fun m!7395382 () Bool)

(assert (=> b!6624903 m!7395382))

(declare-fun m!7395384 () Bool)

(assert (=> b!6624904 m!7395384))

(assert (=> b!6624904 m!7395384))

(declare-fun m!7395388 () Bool)

(assert (=> b!6624904 m!7395388))

(declare-fun m!7395390 () Bool)

(assert (=> b!6624904 m!7395390))

(assert (=> b!6624904 m!7395388))

(assert (=> b!6624904 m!7395390))

(declare-fun m!7395392 () Bool)

(assert (=> b!6624904 m!7395392))

(assert (=> b!6624688 d!2076597))

(declare-fun d!2076605 () Bool)

(assert (=> d!2076605 (not (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(declare-fun lt!2418439 () Unit!159335)

(declare-fun choose!49498 ((InoxSet Context!11758) List!65785) Unit!159335)

(assert (=> d!2076605 (= lt!2418439 (choose!49498 lt!2418406 (t!379445 s!2326)))))

(assert (=> d!2076605 (= lt!2418406 ((as const (Array Context!11758 Bool)) false))))

(assert (=> d!2076605 (= (lemmaEmptyZipperMatchesNothing!90 lt!2418406 (t!379445 s!2326)) lt!2418439)))

(declare-fun bs!1700338 () Bool)

(assert (= bs!1700338 d!2076605))

(assert (=> bs!1700338 m!7395216))

(declare-fun m!7395400 () Bool)

(assert (=> bs!1700338 m!7395400))

(assert (=> b!6624688 d!2076605))

(declare-fun d!2076609 () Bool)

(declare-fun c!1221511 () Bool)

(assert (=> d!2076609 (= c!1221511 (isEmpty!37954 s!2326))))

(declare-fun e!4007337 () Bool)

(assert (=> d!2076609 (= (matchZipper!2507 z!1189 s!2326) e!4007337)))

(declare-fun b!6624905 () Bool)

(assert (=> b!6624905 (= e!4007337 (nullableZipper!2235 z!1189))))

(declare-fun b!6624906 () Bool)

(assert (=> b!6624906 (= e!4007337 (matchZipper!2507 (derivationStepZipper!2461 z!1189 (head!13432 s!2326)) (tail!12517 s!2326)))))

(assert (= (and d!2076609 c!1221511) b!6624905))

(assert (= (and d!2076609 (not c!1221511)) b!6624906))

(declare-fun m!7395402 () Bool)

(assert (=> d!2076609 m!7395402))

(declare-fun m!7395404 () Bool)

(assert (=> b!6624905 m!7395404))

(declare-fun m!7395406 () Bool)

(assert (=> b!6624906 m!7395406))

(assert (=> b!6624906 m!7395406))

(declare-fun m!7395408 () Bool)

(assert (=> b!6624906 m!7395408))

(declare-fun m!7395410 () Bool)

(assert (=> b!6624906 m!7395410))

(assert (=> b!6624906 m!7395408))

(assert (=> b!6624906 m!7395410))

(declare-fun m!7395412 () Bool)

(assert (=> b!6624906 m!7395412))

(assert (=> b!6624686 d!2076609))

(declare-fun d!2076611 () Bool)

(declare-fun c!1221512 () Bool)

(assert (=> d!2076611 (= c!1221512 (isEmpty!37954 (t!379445 s!2326)))))

(declare-fun e!4007338 () Bool)

(assert (=> d!2076611 (= (matchZipper!2507 lt!2418394 (t!379445 s!2326)) e!4007338)))

(declare-fun b!6624907 () Bool)

(assert (=> b!6624907 (= e!4007338 (nullableZipper!2235 lt!2418394))))

(declare-fun b!6624908 () Bool)

(assert (=> b!6624908 (= e!4007338 (matchZipper!2507 (derivationStepZipper!2461 lt!2418394 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))))))

(assert (= (and d!2076611 c!1221512) b!6624907))

(assert (= (and d!2076611 (not c!1221512)) b!6624908))

(assert (=> d!2076611 m!7395380))

(declare-fun m!7395414 () Bool)

(assert (=> b!6624907 m!7395414))

(assert (=> b!6624908 m!7395384))

(assert (=> b!6624908 m!7395384))

(declare-fun m!7395416 () Bool)

(assert (=> b!6624908 m!7395416))

(assert (=> b!6624908 m!7395390))

(assert (=> b!6624908 m!7395416))

(assert (=> b!6624908 m!7395390))

(declare-fun m!7395418 () Bool)

(assert (=> b!6624908 m!7395418))

(assert (=> b!6624686 d!2076611))

(declare-fun d!2076613 () Bool)

(declare-fun c!1221513 () Bool)

(assert (=> d!2076613 (= c!1221513 (isEmpty!37954 (t!379445 s!2326)))))

(declare-fun e!4007339 () Bool)

(assert (=> d!2076613 (= (matchZipper!2507 lt!2418395 (t!379445 s!2326)) e!4007339)))

(declare-fun b!6624909 () Bool)

(assert (=> b!6624909 (= e!4007339 (nullableZipper!2235 lt!2418395))))

(declare-fun b!6624910 () Bool)

(assert (=> b!6624910 (= e!4007339 (matchZipper!2507 (derivationStepZipper!2461 lt!2418395 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))))))

(assert (= (and d!2076613 c!1221513) b!6624909))

(assert (= (and d!2076613 (not c!1221513)) b!6624910))

(assert (=> d!2076613 m!7395380))

(declare-fun m!7395420 () Bool)

(assert (=> b!6624909 m!7395420))

(assert (=> b!6624910 m!7395384))

(assert (=> b!6624910 m!7395384))

(declare-fun m!7395422 () Bool)

(assert (=> b!6624910 m!7395422))

(assert (=> b!6624910 m!7395390))

(assert (=> b!6624910 m!7395422))

(assert (=> b!6624910 m!7395390))

(declare-fun m!7395424 () Bool)

(assert (=> b!6624910 m!7395424))

(assert (=> b!6624686 d!2076613))

(declare-fun d!2076615 () Bool)

(declare-fun e!4007348 () Bool)

(assert (=> d!2076615 (= (matchZipper!2507 ((_ map or) lt!2418406 lt!2418394) (t!379445 s!2326)) e!4007348)))

(declare-fun res!2715896 () Bool)

(assert (=> d!2076615 (=> res!2715896 e!4007348)))

(assert (=> d!2076615 (= res!2715896 (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(declare-fun lt!2418445 () Unit!159335)

(declare-fun choose!49500 ((InoxSet Context!11758) (InoxSet Context!11758) List!65785) Unit!159335)

(assert (=> d!2076615 (= lt!2418445 (choose!49500 lt!2418406 lt!2418394 (t!379445 s!2326)))))

(assert (=> d!2076615 (= (lemmaZipperConcatMatchesSameAsBothZippers!1326 lt!2418406 lt!2418394 (t!379445 s!2326)) lt!2418445)))

(declare-fun b!6624922 () Bool)

(assert (=> b!6624922 (= e!4007348 (matchZipper!2507 lt!2418394 (t!379445 s!2326)))))

(assert (= (and d!2076615 (not res!2715896)) b!6624922))

(assert (=> d!2076615 m!7395276))

(assert (=> d!2076615 m!7395216))

(declare-fun m!7395444 () Bool)

(assert (=> d!2076615 m!7395444))

(assert (=> b!6624922 m!7395206))

(assert (=> b!6624686 d!2076615))

(declare-fun b!6624960 () Bool)

(declare-fun e!4007374 () Bool)

(declare-fun lt!2418448 () Regex!16495)

(declare-fun isEmptyLang!1877 (Regex!16495) Bool)

(assert (=> b!6624960 (= e!4007374 (isEmptyLang!1877 lt!2418448))))

(declare-fun b!6624961 () Bool)

(declare-fun e!4007371 () Regex!16495)

(assert (=> b!6624961 (= e!4007371 EmptyLang!16495)))

(declare-fun b!6624962 () Bool)

(declare-fun e!4007375 () Bool)

(declare-fun head!13433 (List!65784) Regex!16495)

(assert (=> b!6624962 (= e!4007375 (= lt!2418448 (head!13433 (unfocusZipperList!1916 zl!343))))))

(declare-fun b!6624963 () Bool)

(declare-fun e!4007373 () Bool)

(assert (=> b!6624963 (= e!4007373 e!4007374)))

(declare-fun c!1221533 () Bool)

(assert (=> b!6624963 (= c!1221533 (isEmpty!37952 (unfocusZipperList!1916 zl!343)))))

(declare-fun b!6624964 () Bool)

(declare-fun isUnion!1307 (Regex!16495) Bool)

(assert (=> b!6624964 (= e!4007375 (isUnion!1307 lt!2418448))))

(declare-fun b!6624965 () Bool)

(declare-fun e!4007370 () Bool)

(assert (=> b!6624965 (= e!4007370 (isEmpty!37952 (t!379444 (unfocusZipperList!1916 zl!343))))))

(declare-fun b!6624966 () Bool)

(assert (=> b!6624966 (= e!4007371 (Union!16495 (h!72108 (unfocusZipperList!1916 zl!343)) (generalisedUnion!2339 (t!379444 (unfocusZipperList!1916 zl!343)))))))

(declare-fun b!6624967 () Bool)

(declare-fun e!4007372 () Regex!16495)

(assert (=> b!6624967 (= e!4007372 (h!72108 (unfocusZipperList!1916 zl!343)))))

(declare-fun d!2076623 () Bool)

(assert (=> d!2076623 e!4007373))

(declare-fun res!2715904 () Bool)

(assert (=> d!2076623 (=> (not res!2715904) (not e!4007373))))

(assert (=> d!2076623 (= res!2715904 (validRegex!8231 lt!2418448))))

(assert (=> d!2076623 (= lt!2418448 e!4007372)))

(declare-fun c!1221534 () Bool)

(assert (=> d!2076623 (= c!1221534 e!4007370)))

(declare-fun res!2715905 () Bool)

(assert (=> d!2076623 (=> (not res!2715905) (not e!4007370))))

(assert (=> d!2076623 (= res!2715905 ((_ is Cons!65660) (unfocusZipperList!1916 zl!343)))))

(declare-fun lambda!370139 () Int)

(declare-fun forall!15690 (List!65784 Int) Bool)

(assert (=> d!2076623 (forall!15690 (unfocusZipperList!1916 zl!343) lambda!370139)))

(assert (=> d!2076623 (= (generalisedUnion!2339 (unfocusZipperList!1916 zl!343)) lt!2418448)))

(declare-fun b!6624968 () Bool)

(assert (=> b!6624968 (= e!4007372 e!4007371)))

(declare-fun c!1221536 () Bool)

(assert (=> b!6624968 (= c!1221536 ((_ is Cons!65660) (unfocusZipperList!1916 zl!343)))))

(declare-fun b!6624969 () Bool)

(assert (=> b!6624969 (= e!4007374 e!4007375)))

(declare-fun c!1221535 () Bool)

(declare-fun tail!12518 (List!65784) List!65784)

(assert (=> b!6624969 (= c!1221535 (isEmpty!37952 (tail!12518 (unfocusZipperList!1916 zl!343))))))

(assert (= (and d!2076623 res!2715905) b!6624965))

(assert (= (and d!2076623 c!1221534) b!6624967))

(assert (= (and d!2076623 (not c!1221534)) b!6624968))

(assert (= (and b!6624968 c!1221536) b!6624966))

(assert (= (and b!6624968 (not c!1221536)) b!6624961))

(assert (= (and d!2076623 res!2715904) b!6624963))

(assert (= (and b!6624963 c!1221533) b!6624960))

(assert (= (and b!6624963 (not c!1221533)) b!6624969))

(assert (= (and b!6624969 c!1221535) b!6624962))

(assert (= (and b!6624969 (not c!1221535)) b!6624964))

(assert (=> b!6624962 m!7395198))

(declare-fun m!7395458 () Bool)

(assert (=> b!6624962 m!7395458))

(assert (=> b!6624969 m!7395198))

(declare-fun m!7395460 () Bool)

(assert (=> b!6624969 m!7395460))

(assert (=> b!6624969 m!7395460))

(declare-fun m!7395462 () Bool)

(assert (=> b!6624969 m!7395462))

(declare-fun m!7395464 () Bool)

(assert (=> b!6624964 m!7395464))

(assert (=> b!6624963 m!7395198))

(declare-fun m!7395466 () Bool)

(assert (=> b!6624963 m!7395466))

(declare-fun m!7395468 () Bool)

(assert (=> b!6624966 m!7395468))

(declare-fun m!7395470 () Bool)

(assert (=> b!6624965 m!7395470))

(declare-fun m!7395472 () Bool)

(assert (=> b!6624960 m!7395472))

(declare-fun m!7395474 () Bool)

(assert (=> d!2076623 m!7395474))

(assert (=> d!2076623 m!7395198))

(declare-fun m!7395476 () Bool)

(assert (=> d!2076623 m!7395476))

(assert (=> b!6624706 d!2076623))

(declare-fun bs!1700347 () Bool)

(declare-fun d!2076633 () Bool)

(assert (= bs!1700347 (and d!2076633 d!2076623)))

(declare-fun lambda!370142 () Int)

(assert (=> bs!1700347 (= lambda!370142 lambda!370139)))

(declare-fun lt!2418454 () List!65784)

(assert (=> d!2076633 (forall!15690 lt!2418454 lambda!370142)))

(declare-fun e!4007378 () List!65784)

(assert (=> d!2076633 (= lt!2418454 e!4007378)))

(declare-fun c!1221539 () Bool)

(assert (=> d!2076633 (= c!1221539 ((_ is Cons!65662) zl!343))))

(assert (=> d!2076633 (= (unfocusZipperList!1916 zl!343) lt!2418454)))

(declare-fun b!6624974 () Bool)

(assert (=> b!6624974 (= e!4007378 (Cons!65660 (generalisedConcat!2092 (exprs!6379 (h!72110 zl!343))) (unfocusZipperList!1916 (t!379446 zl!343))))))

(declare-fun b!6624975 () Bool)

(assert (=> b!6624975 (= e!4007378 Nil!65660)))

(assert (= (and d!2076633 c!1221539) b!6624974))

(assert (= (and d!2076633 (not c!1221539)) b!6624975))

(declare-fun m!7395484 () Bool)

(assert (=> d!2076633 m!7395484))

(assert (=> b!6624974 m!7395224))

(declare-fun m!7395486 () Bool)

(assert (=> b!6624974 m!7395486))

(assert (=> b!6624706 d!2076633))

(declare-fun bs!1700348 () Bool)

(declare-fun d!2076639 () Bool)

(assert (= bs!1700348 (and d!2076639 d!2076623)))

(declare-fun lambda!370145 () Int)

(assert (=> bs!1700348 (= lambda!370145 lambda!370139)))

(declare-fun bs!1700349 () Bool)

(assert (= bs!1700349 (and d!2076639 d!2076633)))

(assert (=> bs!1700349 (= lambda!370145 lambda!370142)))

(declare-fun b!6625004 () Bool)

(declare-fun e!4007399 () Bool)

(declare-fun lt!2418461 () Regex!16495)

(declare-fun isConcat!1391 (Regex!16495) Bool)

(assert (=> b!6625004 (= e!4007399 (isConcat!1391 lt!2418461))))

(declare-fun e!4007401 () Bool)

(assert (=> d!2076639 e!4007401))

(declare-fun res!2715914 () Bool)

(assert (=> d!2076639 (=> (not res!2715914) (not e!4007401))))

(assert (=> d!2076639 (= res!2715914 (validRegex!8231 lt!2418461))))

(declare-fun e!4007402 () Regex!16495)

(assert (=> d!2076639 (= lt!2418461 e!4007402)))

(declare-fun c!1221550 () Bool)

(declare-fun e!4007400 () Bool)

(assert (=> d!2076639 (= c!1221550 e!4007400)))

(declare-fun res!2715915 () Bool)

(assert (=> d!2076639 (=> (not res!2715915) (not e!4007400))))

(assert (=> d!2076639 (= res!2715915 ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343))))))

(assert (=> d!2076639 (forall!15690 (exprs!6379 (h!72110 zl!343)) lambda!370145)))

(assert (=> d!2076639 (= (generalisedConcat!2092 (exprs!6379 (h!72110 zl!343))) lt!2418461)))

(declare-fun b!6625005 () Bool)

(declare-fun e!4007397 () Bool)

(assert (=> b!6625005 (= e!4007401 e!4007397)))

(declare-fun c!1221551 () Bool)

(assert (=> b!6625005 (= c!1221551 (isEmpty!37952 (exprs!6379 (h!72110 zl!343))))))

(declare-fun b!6625006 () Bool)

(declare-fun e!4007398 () Regex!16495)

(assert (=> b!6625006 (= e!4007402 e!4007398)))

(declare-fun c!1221553 () Bool)

(assert (=> b!6625006 (= c!1221553 ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343))))))

(declare-fun b!6625007 () Bool)

(assert (=> b!6625007 (= e!4007397 e!4007399)))

(declare-fun c!1221552 () Bool)

(assert (=> b!6625007 (= c!1221552 (isEmpty!37952 (tail!12518 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625008 () Bool)

(assert (=> b!6625008 (= e!4007398 (Concat!25340 (h!72108 (exprs!6379 (h!72110 zl!343))) (generalisedConcat!2092 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625009 () Bool)

(assert (=> b!6625009 (= e!4007399 (= lt!2418461 (head!13433 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625010 () Bool)

(declare-fun isEmptyExpr!1868 (Regex!16495) Bool)

(assert (=> b!6625010 (= e!4007397 (isEmptyExpr!1868 lt!2418461))))

(declare-fun b!6625011 () Bool)

(assert (=> b!6625011 (= e!4007398 EmptyExpr!16495)))

(declare-fun b!6625012 () Bool)

(assert (=> b!6625012 (= e!4007400 (isEmpty!37952 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625013 () Bool)

(assert (=> b!6625013 (= e!4007402 (h!72108 (exprs!6379 (h!72110 zl!343))))))

(assert (= (and d!2076639 res!2715915) b!6625012))

(assert (= (and d!2076639 c!1221550) b!6625013))

(assert (= (and d!2076639 (not c!1221550)) b!6625006))

(assert (= (and b!6625006 c!1221553) b!6625008))

(assert (= (and b!6625006 (not c!1221553)) b!6625011))

(assert (= (and d!2076639 res!2715914) b!6625005))

(assert (= (and b!6625005 c!1221551) b!6625010))

(assert (= (and b!6625005 (not c!1221551)) b!6625007))

(assert (= (and b!6625007 c!1221552) b!6625009))

(assert (= (and b!6625007 (not c!1221552)) b!6625004))

(declare-fun m!7395508 () Bool)

(assert (=> b!6625004 m!7395508))

(declare-fun m!7395510 () Bool)

(assert (=> b!6625009 m!7395510))

(declare-fun m!7395512 () Bool)

(assert (=> b!6625007 m!7395512))

(assert (=> b!6625007 m!7395512))

(declare-fun m!7395514 () Bool)

(assert (=> b!6625007 m!7395514))

(assert (=> b!6625008 m!7395228))

(declare-fun m!7395516 () Bool)

(assert (=> b!6625010 m!7395516))

(declare-fun m!7395518 () Bool)

(assert (=> d!2076639 m!7395518))

(declare-fun m!7395520 () Bool)

(assert (=> d!2076639 m!7395520))

(assert (=> b!6625012 m!7395266))

(declare-fun m!7395522 () Bool)

(assert (=> b!6625005 m!7395522))

(assert (=> b!6624707 d!2076639))

(assert (=> b!6624697 d!2076615))

(assert (=> b!6624697 d!2076597))

(declare-fun d!2076649 () Bool)

(declare-fun c!1221554 () Bool)

(assert (=> d!2076649 (= c!1221554 (isEmpty!37954 (t!379445 s!2326)))))

(declare-fun e!4007403 () Bool)

(assert (=> d!2076649 (= (matchZipper!2507 ((_ map or) lt!2418406 lt!2418394) (t!379445 s!2326)) e!4007403)))

(declare-fun b!6625014 () Bool)

(assert (=> b!6625014 (= e!4007403 (nullableZipper!2235 ((_ map or) lt!2418406 lt!2418394)))))

(declare-fun b!6625015 () Bool)

(assert (=> b!6625015 (= e!4007403 (matchZipper!2507 (derivationStepZipper!2461 ((_ map or) lt!2418406 lt!2418394) (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))))))

(assert (= (and d!2076649 c!1221554) b!6625014))

(assert (= (and d!2076649 (not c!1221554)) b!6625015))

(assert (=> d!2076649 m!7395380))

(declare-fun m!7395524 () Bool)

(assert (=> b!6625014 m!7395524))

(assert (=> b!6625015 m!7395384))

(assert (=> b!6625015 m!7395384))

(declare-fun m!7395526 () Bool)

(assert (=> b!6625015 m!7395526))

(assert (=> b!6625015 m!7395390))

(assert (=> b!6625015 m!7395526))

(assert (=> b!6625015 m!7395390))

(declare-fun m!7395528 () Bool)

(assert (=> b!6625015 m!7395528))

(assert (=> b!6624697 d!2076649))

(declare-fun bs!1700350 () Bool)

(declare-fun d!2076651 () Bool)

(assert (= bs!1700350 (and d!2076651 d!2076623)))

(declare-fun lambda!370148 () Int)

(assert (=> bs!1700350 (= lambda!370148 lambda!370139)))

(declare-fun bs!1700351 () Bool)

(assert (= bs!1700351 (and d!2076651 d!2076633)))

(assert (=> bs!1700351 (= lambda!370148 lambda!370142)))

(declare-fun bs!1700352 () Bool)

(assert (= bs!1700352 (and d!2076651 d!2076639)))

(assert (=> bs!1700352 (= lambda!370148 lambda!370145)))

(assert (=> d!2076651 (= (inv!84484 setElem!45282) (forall!15690 (exprs!6379 setElem!45282) lambda!370148))))

(declare-fun bs!1700353 () Bool)

(assert (= bs!1700353 d!2076651))

(declare-fun m!7395530 () Bool)

(assert (=> bs!1700353 m!7395530))

(assert (=> setNonEmpty!45282 d!2076651))

(declare-fun d!2076653 () Bool)

(declare-fun lt!2418462 () Regex!16495)

(assert (=> d!2076653 (validRegex!8231 lt!2418462)))

(assert (=> d!2076653 (= lt!2418462 (generalisedUnion!2339 (unfocusZipperList!1916 zl!343)))))

(assert (=> d!2076653 (= (unfocusZipper!2237 zl!343) lt!2418462)))

(declare-fun bs!1700354 () Bool)

(assert (= bs!1700354 d!2076653))

(declare-fun m!7395532 () Bool)

(assert (=> bs!1700354 m!7395532))

(assert (=> bs!1700354 m!7395198))

(assert (=> bs!1700354 m!7395198))

(assert (=> bs!1700354 m!7395200))

(assert (=> b!6624685 d!2076653))

(declare-fun d!2076655 () Bool)

(declare-fun nullableFct!2409 (Regex!16495) Bool)

(assert (=> d!2076655 (= (nullable!6488 (regOne!33502 (regOne!33502 r!7292))) (nullableFct!2409 (regOne!33502 (regOne!33502 r!7292))))))

(declare-fun bs!1700355 () Bool)

(assert (= bs!1700355 d!2076655))

(declare-fun m!7395534 () Bool)

(assert (=> bs!1700355 m!7395534))

(assert (=> b!6624694 d!2076655))

(declare-fun d!2076657 () Bool)

(assert (=> d!2076657 (= (isEmpty!37951 (t!379446 zl!343)) ((_ is Nil!65662) (t!379446 zl!343)))))

(assert (=> b!6624684 d!2076657))

(declare-fun d!2076659 () Bool)

(declare-fun e!4007418 () Bool)

(assert (=> d!2076659 e!4007418))

(declare-fun res!2715926 () Bool)

(assert (=> d!2076659 (=> res!2715926 e!4007418)))

(declare-fun e!4007414 () Bool)

(assert (=> d!2076659 (= res!2715926 e!4007414)))

(declare-fun res!2715927 () Bool)

(assert (=> d!2076659 (=> (not res!2715927) (not e!4007414))))

(declare-fun lt!2418470 () Option!16386)

(assert (=> d!2076659 (= res!2715927 (isDefined!13089 lt!2418470))))

(declare-fun e!4007416 () Option!16386)

(assert (=> d!2076659 (= lt!2418470 e!4007416)))

(declare-fun c!1221560 () Bool)

(declare-fun e!4007415 () Bool)

(assert (=> d!2076659 (= c!1221560 e!4007415)))

(declare-fun res!2715929 () Bool)

(assert (=> d!2076659 (=> (not res!2715929) (not e!4007415))))

(assert (=> d!2076659 (= res!2715929 (matchR!8678 (regOne!33502 r!7292) Nil!65661))))

(assert (=> d!2076659 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076659 (= (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326) lt!2418470)))

(declare-fun b!6625034 () Bool)

(assert (=> b!6625034 (= e!4007415 (matchR!8678 (regTwo!33502 r!7292) s!2326))))

(declare-fun b!6625035 () Bool)

(assert (=> b!6625035 (= e!4007416 (Some!16385 (tuple2!66949 Nil!65661 s!2326)))))

(declare-fun b!6625036 () Bool)

(declare-fun e!4007417 () Option!16386)

(assert (=> b!6625036 (= e!4007417 None!16385)))

(declare-fun b!6625037 () Bool)

(declare-fun res!2715928 () Bool)

(assert (=> b!6625037 (=> (not res!2715928) (not e!4007414))))

(declare-fun get!22823 (Option!16386) tuple2!66948)

(assert (=> b!6625037 (= res!2715928 (matchR!8678 (regOne!33502 r!7292) (_1!36777 (get!22823 lt!2418470))))))

(declare-fun b!6625038 () Bool)

(declare-fun res!2715930 () Bool)

(assert (=> b!6625038 (=> (not res!2715930) (not e!4007414))))

(assert (=> b!6625038 (= res!2715930 (matchR!8678 (regTwo!33502 r!7292) (_2!36777 (get!22823 lt!2418470))))))

(declare-fun b!6625039 () Bool)

(assert (=> b!6625039 (= e!4007418 (not (isDefined!13089 lt!2418470)))))

(declare-fun b!6625040 () Bool)

(assert (=> b!6625040 (= e!4007416 e!4007417)))

(declare-fun c!1221559 () Bool)

(assert (=> b!6625040 (= c!1221559 ((_ is Nil!65661) s!2326))))

(declare-fun b!6625041 () Bool)

(declare-fun ++!14644 (List!65785 List!65785) List!65785)

(assert (=> b!6625041 (= e!4007414 (= (++!14644 (_1!36777 (get!22823 lt!2418470)) (_2!36777 (get!22823 lt!2418470))) s!2326))))

(declare-fun b!6625042 () Bool)

(declare-fun lt!2418469 () Unit!159335)

(declare-fun lt!2418471 () Unit!159335)

(assert (=> b!6625042 (= lt!2418469 lt!2418471)))

(assert (=> b!6625042 (= (++!14644 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2633 (List!65785 C!33260 List!65785 List!65785) Unit!159335)

(assert (=> b!6625042 (= lt!2418471 (lemmaMoveElementToOtherListKeepsConcatEq!2633 Nil!65661 (h!72109 s!2326) (t!379445 s!2326) s!2326))))

(assert (=> b!6625042 (= e!4007417 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326) s!2326))))

(assert (= (and d!2076659 res!2715929) b!6625034))

(assert (= (and d!2076659 c!1221560) b!6625035))

(assert (= (and d!2076659 (not c!1221560)) b!6625040))

(assert (= (and b!6625040 c!1221559) b!6625036))

(assert (= (and b!6625040 (not c!1221559)) b!6625042))

(assert (= (and d!2076659 res!2715927) b!6625037))

(assert (= (and b!6625037 res!2715928) b!6625038))

(assert (= (and b!6625038 res!2715930) b!6625041))

(assert (= (and d!2076659 (not res!2715926)) b!6625039))

(declare-fun m!7395536 () Bool)

(assert (=> b!6625039 m!7395536))

(declare-fun m!7395538 () Bool)

(assert (=> b!6625042 m!7395538))

(assert (=> b!6625042 m!7395538))

(declare-fun m!7395540 () Bool)

(assert (=> b!6625042 m!7395540))

(declare-fun m!7395542 () Bool)

(assert (=> b!6625042 m!7395542))

(assert (=> b!6625042 m!7395538))

(declare-fun m!7395544 () Bool)

(assert (=> b!6625042 m!7395544))

(assert (=> b!6625034 m!7395230))

(declare-fun m!7395546 () Bool)

(assert (=> b!6625038 m!7395546))

(declare-fun m!7395548 () Bool)

(assert (=> b!6625038 m!7395548))

(assert (=> d!2076659 m!7395536))

(declare-fun m!7395550 () Bool)

(assert (=> d!2076659 m!7395550))

(declare-fun m!7395552 () Bool)

(assert (=> d!2076659 m!7395552))

(assert (=> b!6625041 m!7395546))

(declare-fun m!7395554 () Bool)

(assert (=> b!6625041 m!7395554))

(assert (=> b!6625037 m!7395546))

(declare-fun m!7395556 () Bool)

(assert (=> b!6625037 m!7395556))

(assert (=> b!6624705 d!2076659))

(declare-fun d!2076661 () Bool)

(declare-fun choose!49501 (Int) Bool)

(assert (=> d!2076661 (= (Exists!3565 lambda!370117) (choose!49501 lambda!370117))))

(declare-fun bs!1700356 () Bool)

(assert (= bs!1700356 d!2076661))

(declare-fun m!7395558 () Bool)

(assert (=> bs!1700356 m!7395558))

(assert (=> b!6624705 d!2076661))

(declare-fun d!2076663 () Bool)

(assert (=> d!2076663 (= (Exists!3565 lambda!370118) (choose!49501 lambda!370118))))

(declare-fun bs!1700357 () Bool)

(assert (= bs!1700357 d!2076663))

(declare-fun m!7395560 () Bool)

(assert (=> bs!1700357 m!7395560))

(assert (=> b!6624705 d!2076663))

(declare-fun bs!1700358 () Bool)

(declare-fun d!2076665 () Bool)

(assert (= bs!1700358 (and d!2076665 b!6624705)))

(declare-fun lambda!370151 () Int)

(assert (=> bs!1700358 (= lambda!370151 lambda!370117)))

(assert (=> bs!1700358 (not (= lambda!370151 lambda!370118))))

(assert (=> d!2076665 true))

(assert (=> d!2076665 true))

(assert (=> d!2076665 true))

(assert (=> d!2076665 (= (isDefined!13089 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326)) (Exists!3565 lambda!370151))))

(declare-fun lt!2418480 () Unit!159335)

(declare-fun choose!49502 (Regex!16495 Regex!16495 List!65785) Unit!159335)

(assert (=> d!2076665 (= lt!2418480 (choose!49502 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326))))

(assert (=> d!2076665 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076665 (= (lemmaFindConcatSeparationEquivalentToExists!2564 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326) lt!2418480)))

(declare-fun bs!1700359 () Bool)

(assert (= bs!1700359 d!2076665))

(assert (=> bs!1700359 m!7395288))

(assert (=> bs!1700359 m!7395290))

(declare-fun m!7395562 () Bool)

(assert (=> bs!1700359 m!7395562))

(declare-fun m!7395564 () Bool)

(assert (=> bs!1700359 m!7395564))

(assert (=> bs!1700359 m!7395288))

(assert (=> bs!1700359 m!7395552))

(assert (=> b!6624705 d!2076665))

(declare-fun bs!1700362 () Bool)

(declare-fun d!2076667 () Bool)

(assert (= bs!1700362 (and d!2076667 b!6624705)))

(declare-fun lambda!370156 () Int)

(assert (=> bs!1700362 (= lambda!370156 lambda!370117)))

(assert (=> bs!1700362 (not (= lambda!370156 lambda!370118))))

(declare-fun bs!1700363 () Bool)

(assert (= bs!1700363 (and d!2076667 d!2076665)))

(assert (=> bs!1700363 (= lambda!370156 lambda!370151)))

(assert (=> d!2076667 true))

(assert (=> d!2076667 true))

(assert (=> d!2076667 true))

(declare-fun lambda!370159 () Int)

(assert (=> bs!1700362 (not (= lambda!370159 lambda!370117))))

(assert (=> bs!1700362 (= lambda!370159 lambda!370118)))

(assert (=> bs!1700363 (not (= lambda!370159 lambda!370151))))

(declare-fun bs!1700364 () Bool)

(assert (= bs!1700364 d!2076667))

(assert (=> bs!1700364 (not (= lambda!370159 lambda!370156))))

(assert (=> d!2076667 true))

(assert (=> d!2076667 true))

(assert (=> d!2076667 true))

(assert (=> d!2076667 (= (Exists!3565 lambda!370156) (Exists!3565 lambda!370159))))

(declare-fun lt!2418488 () Unit!159335)

(declare-fun choose!49503 (Regex!16495 Regex!16495 List!65785) Unit!159335)

(assert (=> d!2076667 (= lt!2418488 (choose!49503 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326))))

(assert (=> d!2076667 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076667 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2102 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326) lt!2418488)))

(declare-fun m!7395590 () Bool)

(assert (=> bs!1700364 m!7395590))

(declare-fun m!7395592 () Bool)

(assert (=> bs!1700364 m!7395592))

(declare-fun m!7395594 () Bool)

(assert (=> bs!1700364 m!7395594))

(assert (=> bs!1700364 m!7395552))

(assert (=> b!6624705 d!2076667))

(declare-fun d!2076675 () Bool)

(declare-fun isEmpty!37955 (Option!16386) Bool)

(assert (=> d!2076675 (= (isDefined!13089 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326)) (not (isEmpty!37955 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326))))))

(declare-fun bs!1700365 () Bool)

(assert (= bs!1700365 d!2076675))

(assert (=> bs!1700365 m!7395288))

(declare-fun m!7395596 () Bool)

(assert (=> bs!1700365 m!7395596))

(assert (=> b!6624705 d!2076675))

(declare-fun d!2076677 () Bool)

(assert (=> d!2076677 (= (flatMap!2000 z!1189 lambda!370119) (dynLambda!26151 lambda!370119 (h!72110 zl!343)))))

(declare-fun lt!2418490 () Unit!159335)

(assert (=> d!2076677 (= lt!2418490 (choose!49496 z!1189 (h!72110 zl!343) lambda!370119))))

(assert (=> d!2076677 (= z!1189 (store ((as const (Array Context!11758 Bool)) false) (h!72110 zl!343) true))))

(assert (=> d!2076677 (= (lemmaFlatMapOnSingletonSet!1526 z!1189 (h!72110 zl!343) lambda!370119) lt!2418490)))

(declare-fun b_lambda!250493 () Bool)

(assert (=> (not b_lambda!250493) (not d!2076677)))

(declare-fun bs!1700368 () Bool)

(assert (= bs!1700368 d!2076677))

(assert (=> bs!1700368 m!7395260))

(declare-fun m!7395598 () Bool)

(assert (=> bs!1700368 m!7395598))

(declare-fun m!7395600 () Bool)

(assert (=> bs!1700368 m!7395600))

(declare-fun m!7395602 () Bool)

(assert (=> bs!1700368 m!7395602))

(assert (=> b!6624703 d!2076677))

(declare-fun d!2076679 () Bool)

(assert (=> d!2076679 (= (flatMap!2000 z!1189 lambda!370119) (choose!49495 z!1189 lambda!370119))))

(declare-fun bs!1700370 () Bool)

(assert (= bs!1700370 d!2076679))

(declare-fun m!7395604 () Bool)

(assert (=> bs!1700370 m!7395604))

(assert (=> b!6624703 d!2076679))

(declare-fun d!2076681 () Bool)

(assert (=> d!2076681 (= (nullable!6488 (h!72108 (exprs!6379 (h!72110 zl!343)))) (nullableFct!2409 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bs!1700372 () Bool)

(assert (= bs!1700372 d!2076681))

(declare-fun m!7395606 () Bool)

(assert (=> bs!1700372 m!7395606))

(assert (=> b!6624703 d!2076681))

(declare-fun b!6625086 () Bool)

(declare-fun e!4007443 () (InoxSet Context!11758))

(assert (=> b!6625086 (= e!4007443 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2076683 () Bool)

(declare-fun c!1221568 () Bool)

(declare-fun e!4007442 () Bool)

(assert (=> d!2076683 (= c!1221568 e!4007442)))

(declare-fun res!2715962 () Bool)

(assert (=> d!2076683 (=> (not res!2715962) (not e!4007442))))

(assert (=> d!2076683 (= res!2715962 ((_ is Cons!65660) (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun e!4007444 () (InoxSet Context!11758))

(assert (=> d!2076683 (= (derivationStepZipperUp!1669 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))) (h!72109 s!2326)) e!4007444)))

(declare-fun b!6625087 () Bool)

(assert (=> b!6625087 (= e!4007444 e!4007443)))

(declare-fun c!1221567 () Bool)

(assert (=> b!6625087 (= c!1221567 ((_ is Cons!65660) (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun b!6625088 () Bool)

(declare-fun call!580962 () (InoxSet Context!11758))

(assert (=> b!6625088 (= e!4007444 ((_ map or) call!580962 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326))))))

(declare-fun b!6625089 () Bool)

(assert (=> b!6625089 (= e!4007443 call!580962)))

(declare-fun b!6625090 () Bool)

(assert (=> b!6625090 (= e!4007442 (nullable!6488 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun bm!580957 () Bool)

(assert (=> bm!580957 (= call!580962 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326)))))

(assert (= (and d!2076683 res!2715962) b!6625090))

(assert (= (and d!2076683 c!1221568) b!6625088))

(assert (= (and d!2076683 (not c!1221568)) b!6625087))

(assert (= (and b!6625087 c!1221567) b!6625089))

(assert (= (and b!6625087 (not c!1221567)) b!6625086))

(assert (= (or b!6625088 b!6625089) bm!580957))

(declare-fun m!7395608 () Bool)

(assert (=> b!6625088 m!7395608))

(declare-fun m!7395613 () Bool)

(assert (=> b!6625090 m!7395613))

(declare-fun m!7395616 () Bool)

(assert (=> bm!580957 m!7395616))

(assert (=> b!6624703 d!2076683))

(assert (=> b!6624703 d!2076579))

(declare-fun b!6625091 () Bool)

(declare-fun e!4007446 () (InoxSet Context!11758))

(assert (=> b!6625091 (= e!4007446 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2076685 () Bool)

(declare-fun c!1221570 () Bool)

(declare-fun e!4007445 () Bool)

(assert (=> d!2076685 (= c!1221570 e!4007445)))

(declare-fun res!2715963 () Bool)

(assert (=> d!2076685 (=> (not res!2715963) (not e!4007445))))

(assert (=> d!2076685 (= res!2715963 ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343))))))

(declare-fun e!4007447 () (InoxSet Context!11758))

(assert (=> d!2076685 (= (derivationStepZipperUp!1669 (h!72110 zl!343) (h!72109 s!2326)) e!4007447)))

(declare-fun b!6625092 () Bool)

(assert (=> b!6625092 (= e!4007447 e!4007446)))

(declare-fun c!1221569 () Bool)

(assert (=> b!6625092 (= c!1221569 ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343))))))

(declare-fun b!6625093 () Bool)

(declare-fun call!580963 () (InoxSet Context!11758))

(assert (=> b!6625093 (= e!4007447 ((_ map or) call!580963 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326))))))

(declare-fun b!6625094 () Bool)

(assert (=> b!6625094 (= e!4007446 call!580963)))

(declare-fun b!6625095 () Bool)

(assert (=> b!6625095 (= e!4007445 (nullable!6488 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bm!580958 () Bool)

(assert (=> bm!580958 (= call!580963 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (h!72110 zl!343))) (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326)))))

(assert (= (and d!2076685 res!2715963) b!6625095))

(assert (= (and d!2076685 c!1221570) b!6625093))

(assert (= (and d!2076685 (not c!1221570)) b!6625092))

(assert (= (and b!6625092 c!1221569) b!6625094))

(assert (= (and b!6625092 (not c!1221569)) b!6625091))

(assert (= (or b!6625093 b!6625094) bm!580958))

(declare-fun m!7395618 () Bool)

(assert (=> b!6625093 m!7395618))

(assert (=> b!6625095 m!7395262))

(declare-fun m!7395620 () Bool)

(assert (=> bm!580958 m!7395620))

(assert (=> b!6624703 d!2076685))

(declare-fun b!6625126 () Bool)

(declare-fun e!4007467 () Bool)

(assert (=> b!6625126 (= e!4007467 (nullable!6488 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun bm!580972 () Bool)

(declare-fun call!580978 () (InoxSet Context!11758))

(declare-fun call!580980 () (InoxSet Context!11758))

(assert (=> bm!580972 (= call!580978 call!580980)))

(declare-fun b!6625127 () Bool)

(declare-fun e!4007464 () (InoxSet Context!11758))

(declare-fun call!580976 () (InoxSet Context!11758))

(assert (=> b!6625127 (= e!4007464 ((_ map or) call!580980 call!580976))))

(declare-fun b!6625128 () Bool)

(declare-fun c!1221584 () Bool)

(assert (=> b!6625128 (= c!1221584 ((_ is Star!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun e!4007465 () (InoxSet Context!11758))

(declare-fun e!4007466 () (InoxSet Context!11758))

(assert (=> b!6625128 (= e!4007465 e!4007466)))

(declare-fun b!6625129 () Bool)

(declare-fun call!580979 () (InoxSet Context!11758))

(assert (=> b!6625129 (= e!4007465 call!580979)))

(declare-fun c!1221581 () Bool)

(declare-fun call!580977 () List!65784)

(declare-fun c!1221583 () Bool)

(declare-fun c!1221582 () Bool)

(declare-fun bm!580973 () Bool)

(assert (=> bm!580973 (= call!580980 (derivationStepZipperDown!1743 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))) (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977)) (h!72109 s!2326)))))

(declare-fun b!6625130 () Bool)

(assert (=> b!6625130 (= e!4007466 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625131 () Bool)

(declare-fun e!4007468 () (InoxSet Context!11758))

(assert (=> b!6625131 (= e!4007468 e!4007465)))

(assert (=> b!6625131 (= c!1221582 ((_ is Concat!25340) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bm!580974 () Bool)

(declare-fun call!580981 () List!65784)

(declare-fun $colon$colon!2331 (List!65784 Regex!16495) List!65784)

(assert (=> bm!580974 (= call!580981 ($colon$colon!2331 (exprs!6379 lt!2418404) (ite (or c!1221583 c!1221582) (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72108 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625132 () Bool)

(assert (=> b!6625132 (= e!4007468 ((_ map or) call!580976 call!580978))))

(declare-fun b!6625133 () Bool)

(assert (=> b!6625133 (= e!4007466 call!580979)))

(declare-fun bm!580975 () Bool)

(assert (=> bm!580975 (= call!580979 call!580978)))

(declare-fun bm!580971 () Bool)

(assert (=> bm!580971 (= call!580976 (derivationStepZipperDown!1743 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))) (ite c!1221581 lt!2418404 (Context!11759 call!580981)) (h!72109 s!2326)))))

(declare-fun d!2076689 () Bool)

(declare-fun c!1221585 () Bool)

(assert (=> d!2076689 (= c!1221585 (and ((_ is ElementMatch!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))) (= (c!1221458 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326))))))

(declare-fun e!4007469 () (InoxSet Context!11758))

(assert (=> d!2076689 (= (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (h!72110 zl!343))) lt!2418404 (h!72109 s!2326)) e!4007469)))

(declare-fun b!6625134 () Bool)

(assert (=> b!6625134 (= c!1221583 e!4007467)))

(declare-fun res!2715974 () Bool)

(assert (=> b!6625134 (=> (not res!2715974) (not e!4007467))))

(assert (=> b!6625134 (= res!2715974 ((_ is Concat!25340) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6625134 (= e!4007464 e!4007468)))

(declare-fun b!6625135 () Bool)

(assert (=> b!6625135 (= e!4007469 e!4007464)))

(assert (=> b!6625135 (= c!1221581 ((_ is Union!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bm!580976 () Bool)

(assert (=> bm!580976 (= call!580977 call!580981)))

(declare-fun b!6625136 () Bool)

(assert (=> b!6625136 (= e!4007469 (store ((as const (Array Context!11758 Bool)) false) lt!2418404 true))))

(assert (= (and d!2076689 c!1221585) b!6625136))

(assert (= (and d!2076689 (not c!1221585)) b!6625135))

(assert (= (and b!6625135 c!1221581) b!6625127))

(assert (= (and b!6625135 (not c!1221581)) b!6625134))

(assert (= (and b!6625134 res!2715974) b!6625126))

(assert (= (and b!6625134 c!1221583) b!6625132))

(assert (= (and b!6625134 (not c!1221583)) b!6625131))

(assert (= (and b!6625131 c!1221582) b!6625129))

(assert (= (and b!6625131 (not c!1221582)) b!6625128))

(assert (= (and b!6625128 c!1221584) b!6625133))

(assert (= (and b!6625128 (not c!1221584)) b!6625130))

(assert (= (or b!6625129 b!6625133) bm!580976))

(assert (= (or b!6625129 b!6625133) bm!580975))

(assert (= (or b!6625132 bm!580976) bm!580974))

(assert (= (or b!6625132 bm!580975) bm!580972))

(assert (= (or b!6625127 b!6625132) bm!580971))

(assert (= (or b!6625127 bm!580972) bm!580973))

(declare-fun m!7395622 () Bool)

(assert (=> bm!580974 m!7395622))

(declare-fun m!7395624 () Bool)

(assert (=> bm!580973 m!7395624))

(declare-fun m!7395626 () Bool)

(assert (=> b!6625126 m!7395626))

(assert (=> b!6625136 m!7395272))

(declare-fun m!7395628 () Bool)

(assert (=> bm!580971 m!7395628))

(assert (=> b!6624703 d!2076689))

(declare-fun d!2076691 () Bool)

(declare-fun res!2715979 () Bool)

(declare-fun e!4007471 () Bool)

(assert (=> d!2076691 (=> res!2715979 e!4007471)))

(assert (=> d!2076691 (= res!2715979 ((_ is ElementMatch!16495) lt!2418413))))

(assert (=> d!2076691 (= (validRegex!8231 lt!2418413) e!4007471)))

(declare-fun b!6625137 () Bool)

(declare-fun e!4007476 () Bool)

(declare-fun e!4007472 () Bool)

(assert (=> b!6625137 (= e!4007476 e!4007472)))

(declare-fun res!2715978 () Bool)

(assert (=> b!6625137 (= res!2715978 (not (nullable!6488 (reg!16824 lt!2418413))))))

(assert (=> b!6625137 (=> (not res!2715978) (not e!4007472))))

(declare-fun call!580983 () Bool)

(declare-fun c!1221587 () Bool)

(declare-fun c!1221586 () Bool)

(declare-fun bm!580977 () Bool)

(assert (=> bm!580977 (= call!580983 (validRegex!8231 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))

(declare-fun b!6625138 () Bool)

(declare-fun res!2715977 () Bool)

(declare-fun e!4007473 () Bool)

(assert (=> b!6625138 (=> res!2715977 e!4007473)))

(assert (=> b!6625138 (= res!2715977 (not ((_ is Concat!25340) lt!2418413)))))

(declare-fun e!4007474 () Bool)

(assert (=> b!6625138 (= e!4007474 e!4007473)))

(declare-fun b!6625139 () Bool)

(assert (=> b!6625139 (= e!4007476 e!4007474)))

(assert (=> b!6625139 (= c!1221586 ((_ is Union!16495) lt!2418413))))

(declare-fun b!6625140 () Bool)

(assert (=> b!6625140 (= e!4007472 call!580983)))

(declare-fun b!6625141 () Bool)

(assert (=> b!6625141 (= e!4007471 e!4007476)))

(assert (=> b!6625141 (= c!1221587 ((_ is Star!16495) lt!2418413))))

(declare-fun b!6625142 () Bool)

(declare-fun e!4007470 () Bool)

(declare-fun call!580982 () Bool)

(assert (=> b!6625142 (= e!4007470 call!580982)))

(declare-fun b!6625143 () Bool)

(assert (=> b!6625143 (= e!4007473 e!4007470)))

(declare-fun res!2715975 () Bool)

(assert (=> b!6625143 (=> (not res!2715975) (not e!4007470))))

(declare-fun call!580984 () Bool)

(assert (=> b!6625143 (= res!2715975 call!580984)))

(declare-fun bm!580978 () Bool)

(assert (=> bm!580978 (= call!580982 (validRegex!8231 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))

(declare-fun b!6625144 () Bool)

(declare-fun e!4007475 () Bool)

(assert (=> b!6625144 (= e!4007475 call!580982)))

(declare-fun b!6625145 () Bool)

(declare-fun res!2715976 () Bool)

(assert (=> b!6625145 (=> (not res!2715976) (not e!4007475))))

(assert (=> b!6625145 (= res!2715976 call!580984)))

(assert (=> b!6625145 (= e!4007474 e!4007475)))

(declare-fun bm!580979 () Bool)

(assert (=> bm!580979 (= call!580984 call!580983)))

(assert (= (and d!2076691 (not res!2715979)) b!6625141))

(assert (= (and b!6625141 c!1221587) b!6625137))

(assert (= (and b!6625141 (not c!1221587)) b!6625139))

(assert (= (and b!6625137 res!2715978) b!6625140))

(assert (= (and b!6625139 c!1221586) b!6625145))

(assert (= (and b!6625139 (not c!1221586)) b!6625138))

(assert (= (and b!6625145 res!2715976) b!6625144))

(assert (= (and b!6625138 (not res!2715977)) b!6625143))

(assert (= (and b!6625143 res!2715975) b!6625142))

(assert (= (or b!6625144 b!6625142) bm!580978))

(assert (= (or b!6625145 b!6625143) bm!580979))

(assert (= (or b!6625140 bm!580979) bm!580977))

(declare-fun m!7395636 () Bool)

(assert (=> b!6625137 m!7395636))

(declare-fun m!7395638 () Bool)

(assert (=> bm!580977 m!7395638))

(declare-fun m!7395640 () Bool)

(assert (=> bm!580978 m!7395640))

(assert (=> b!6624702 d!2076691))

(declare-fun bs!1700388 () Bool)

(declare-fun d!2076695 () Bool)

(assert (= bs!1700388 (and d!2076695 d!2076623)))

(declare-fun lambda!370167 () Int)

(assert (=> bs!1700388 (= lambda!370167 lambda!370139)))

(declare-fun bs!1700389 () Bool)

(assert (= bs!1700389 (and d!2076695 d!2076633)))

(assert (=> bs!1700389 (= lambda!370167 lambda!370142)))

(declare-fun bs!1700390 () Bool)

(assert (= bs!1700390 (and d!2076695 d!2076639)))

(assert (=> bs!1700390 (= lambda!370167 lambda!370145)))

(declare-fun bs!1700391 () Bool)

(assert (= bs!1700391 (and d!2076695 d!2076651)))

(assert (=> bs!1700391 (= lambda!370167 lambda!370148)))

(declare-fun b!6625146 () Bool)

(declare-fun e!4007479 () Bool)

(declare-fun lt!2418494 () Regex!16495)

(assert (=> b!6625146 (= e!4007479 (isConcat!1391 lt!2418494))))

(declare-fun e!4007481 () Bool)

(assert (=> d!2076695 e!4007481))

(declare-fun res!2715980 () Bool)

(assert (=> d!2076695 (=> (not res!2715980) (not e!4007481))))

(assert (=> d!2076695 (= res!2715980 (validRegex!8231 lt!2418494))))

(declare-fun e!4007482 () Regex!16495)

(assert (=> d!2076695 (= lt!2418494 e!4007482)))

(declare-fun c!1221588 () Bool)

(declare-fun e!4007480 () Bool)

(assert (=> d!2076695 (= c!1221588 e!4007480)))

(declare-fun res!2715981 () Bool)

(assert (=> d!2076695 (=> (not res!2715981) (not e!4007480))))

(assert (=> d!2076695 (= res!2715981 ((_ is Cons!65660) (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> d!2076695 (forall!15690 (t!379444 (exprs!6379 (h!72110 zl!343))) lambda!370167)))

(assert (=> d!2076695 (= (generalisedConcat!2092 (t!379444 (exprs!6379 (h!72110 zl!343)))) lt!2418494)))

(declare-fun b!6625147 () Bool)

(declare-fun e!4007477 () Bool)

(assert (=> b!6625147 (= e!4007481 e!4007477)))

(declare-fun c!1221589 () Bool)

(assert (=> b!6625147 (= c!1221589 (isEmpty!37952 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625148 () Bool)

(declare-fun e!4007478 () Regex!16495)

(assert (=> b!6625148 (= e!4007482 e!4007478)))

(declare-fun c!1221591 () Bool)

(assert (=> b!6625148 (= c!1221591 ((_ is Cons!65660) (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625149 () Bool)

(assert (=> b!6625149 (= e!4007477 e!4007479)))

(declare-fun c!1221590 () Bool)

(assert (=> b!6625149 (= c!1221590 (isEmpty!37952 (tail!12518 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625150 () Bool)

(assert (=> b!6625150 (= e!4007478 (Concat!25340 (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343)))) (generalisedConcat!2092 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625151 () Bool)

(assert (=> b!6625151 (= e!4007479 (= lt!2418494 (head!13433 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625152 () Bool)

(assert (=> b!6625152 (= e!4007477 (isEmptyExpr!1868 lt!2418494))))

(declare-fun b!6625153 () Bool)

(assert (=> b!6625153 (= e!4007478 EmptyExpr!16495)))

(declare-fun b!6625154 () Bool)

(assert (=> b!6625154 (= e!4007480 (isEmpty!37952 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625155 () Bool)

(assert (=> b!6625155 (= e!4007482 (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (= (and d!2076695 res!2715981) b!6625154))

(assert (= (and d!2076695 c!1221588) b!6625155))

(assert (= (and d!2076695 (not c!1221588)) b!6625148))

(assert (= (and b!6625148 c!1221591) b!6625150))

(assert (= (and b!6625148 (not c!1221591)) b!6625153))

(assert (= (and d!2076695 res!2715980) b!6625147))

(assert (= (and b!6625147 c!1221589) b!6625152))

(assert (= (and b!6625147 (not c!1221589)) b!6625149))

(assert (= (and b!6625149 c!1221590) b!6625151))

(assert (= (and b!6625149 (not c!1221590)) b!6625146))

(declare-fun m!7395646 () Bool)

(assert (=> b!6625146 m!7395646))

(declare-fun m!7395648 () Bool)

(assert (=> b!6625151 m!7395648))

(declare-fun m!7395650 () Bool)

(assert (=> b!6625149 m!7395650))

(assert (=> b!6625149 m!7395650))

(declare-fun m!7395652 () Bool)

(assert (=> b!6625149 m!7395652))

(declare-fun m!7395654 () Bool)

(assert (=> b!6625150 m!7395654))

(declare-fun m!7395656 () Bool)

(assert (=> b!6625152 m!7395656))

(declare-fun m!7395658 () Bool)

(assert (=> d!2076695 m!7395658))

(declare-fun m!7395660 () Bool)

(assert (=> d!2076695 m!7395660))

(declare-fun m!7395662 () Bool)

(assert (=> b!6625154 m!7395662))

(assert (=> b!6625147 m!7395266))

(assert (=> b!6624702 d!2076695))

(declare-fun bs!1700392 () Bool)

(declare-fun b!6625252 () Bool)

(assert (= bs!1700392 (and b!6625252 d!2076667)))

(declare-fun lambda!370175 () Int)

(assert (=> bs!1700392 (not (= lambda!370175 lambda!370156))))

(declare-fun bs!1700393 () Bool)

(assert (= bs!1700393 (and b!6625252 d!2076665)))

(assert (=> bs!1700393 (not (= lambda!370175 lambda!370151))))

(declare-fun bs!1700394 () Bool)

(assert (= bs!1700394 (and b!6625252 b!6624705)))

(assert (=> bs!1700394 (not (= lambda!370175 lambda!370118))))

(assert (=> bs!1700392 (not (= lambda!370175 lambda!370159))))

(assert (=> bs!1700394 (not (= lambda!370175 lambda!370117))))

(assert (=> b!6625252 true))

(assert (=> b!6625252 true))

(declare-fun bs!1700397 () Bool)

(declare-fun b!6625251 () Bool)

(assert (= bs!1700397 (and b!6625251 d!2076667)))

(declare-fun lambda!370179 () Int)

(assert (=> bs!1700397 (not (= lambda!370179 lambda!370156))))

(declare-fun bs!1700398 () Bool)

(assert (= bs!1700398 (and b!6625251 d!2076665)))

(assert (=> bs!1700398 (not (= lambda!370179 lambda!370151))))

(declare-fun bs!1700399 () Bool)

(assert (= bs!1700399 (and b!6625251 b!6624705)))

(assert (=> bs!1700399 (= lambda!370179 lambda!370118)))

(declare-fun bs!1700400 () Bool)

(assert (= bs!1700400 (and b!6625251 b!6625252)))

(assert (=> bs!1700400 (not (= lambda!370179 lambda!370175))))

(assert (=> bs!1700397 (= lambda!370179 lambda!370159)))

(assert (=> bs!1700399 (not (= lambda!370179 lambda!370117))))

(assert (=> b!6625251 true))

(assert (=> b!6625251 true))

(declare-fun b!6625245 () Bool)

(declare-fun c!1221621 () Bool)

(assert (=> b!6625245 (= c!1221621 ((_ is Union!16495) r!7292))))

(declare-fun e!4007540 () Bool)

(declare-fun e!4007543 () Bool)

(assert (=> b!6625245 (= e!4007540 e!4007543)))

(declare-fun b!6625246 () Bool)

(declare-fun e!4007546 () Bool)

(declare-fun e!4007542 () Bool)

(assert (=> b!6625246 (= e!4007546 e!4007542)))

(declare-fun res!2716019 () Bool)

(assert (=> b!6625246 (= res!2716019 (not ((_ is EmptyLang!16495) r!7292)))))

(assert (=> b!6625246 (=> (not res!2716019) (not e!4007542))))

(declare-fun b!6625247 () Bool)

(declare-fun e!4007541 () Bool)

(assert (=> b!6625247 (= e!4007543 e!4007541)))

(declare-fun res!2716020 () Bool)

(assert (=> b!6625247 (= res!2716020 (matchRSpec!3596 (regOne!33503 r!7292) s!2326))))

(assert (=> b!6625247 (=> res!2716020 e!4007541)))

(declare-fun d!2076701 () Bool)

(declare-fun c!1221618 () Bool)

(assert (=> d!2076701 (= c!1221618 ((_ is EmptyExpr!16495) r!7292))))

(assert (=> d!2076701 (= (matchRSpec!3596 r!7292 s!2326) e!4007546)))

(declare-fun b!6625248 () Bool)

(assert (=> b!6625248 (= e!4007541 (matchRSpec!3596 (regTwo!33503 r!7292) s!2326))))

(declare-fun bm!580993 () Bool)

(declare-fun call!580999 () Bool)

(assert (=> bm!580993 (= call!580999 (isEmpty!37954 s!2326))))

(declare-fun b!6625249 () Bool)

(declare-fun res!2716021 () Bool)

(declare-fun e!4007544 () Bool)

(assert (=> b!6625249 (=> res!2716021 e!4007544)))

(assert (=> b!6625249 (= res!2716021 call!580999)))

(declare-fun e!4007545 () Bool)

(assert (=> b!6625249 (= e!4007545 e!4007544)))

(declare-fun b!6625250 () Bool)

(assert (=> b!6625250 (= e!4007546 call!580999)))

(declare-fun bm!580994 () Bool)

(declare-fun c!1221619 () Bool)

(declare-fun call!580998 () Bool)

(assert (=> bm!580994 (= call!580998 (Exists!3565 (ite c!1221619 lambda!370175 lambda!370179)))))

(assert (=> b!6625251 (= e!4007545 call!580998)))

(assert (=> b!6625252 (= e!4007544 call!580998)))

(declare-fun b!6625253 () Bool)

(declare-fun c!1221620 () Bool)

(assert (=> b!6625253 (= c!1221620 ((_ is ElementMatch!16495) r!7292))))

(assert (=> b!6625253 (= e!4007542 e!4007540)))

(declare-fun b!6625254 () Bool)

(assert (=> b!6625254 (= e!4007540 (= s!2326 (Cons!65661 (c!1221458 r!7292) Nil!65661)))))

(declare-fun b!6625255 () Bool)

(assert (=> b!6625255 (= e!4007543 e!4007545)))

(assert (=> b!6625255 (= c!1221619 ((_ is Star!16495) r!7292))))

(assert (= (and d!2076701 c!1221618) b!6625250))

(assert (= (and d!2076701 (not c!1221618)) b!6625246))

(assert (= (and b!6625246 res!2716019) b!6625253))

(assert (= (and b!6625253 c!1221620) b!6625254))

(assert (= (and b!6625253 (not c!1221620)) b!6625245))

(assert (= (and b!6625245 c!1221621) b!6625247))

(assert (= (and b!6625245 (not c!1221621)) b!6625255))

(assert (= (and b!6625247 (not res!2716020)) b!6625248))

(assert (= (and b!6625255 c!1221619) b!6625249))

(assert (= (and b!6625255 (not c!1221619)) b!6625251))

(assert (= (and b!6625249 (not res!2716021)) b!6625252))

(assert (= (or b!6625252 b!6625251) bm!580994))

(assert (= (or b!6625250 b!6625249) bm!580993))

(declare-fun m!7395688 () Bool)

(assert (=> b!6625247 m!7395688))

(declare-fun m!7395690 () Bool)

(assert (=> b!6625248 m!7395690))

(assert (=> bm!580993 m!7395402))

(declare-fun m!7395692 () Bool)

(assert (=> bm!580994 m!7395692))

(assert (=> b!6624691 d!2076701))

(declare-fun b!6625318 () Bool)

(declare-fun e!4007582 () Bool)

(assert (=> b!6625318 (= e!4007582 (= (head!13432 s!2326) (c!1221458 r!7292)))))

(declare-fun b!6625319 () Bool)

(declare-fun res!2716050 () Bool)

(assert (=> b!6625319 (=> (not res!2716050) (not e!4007582))))

(declare-fun call!581002 () Bool)

(assert (=> b!6625319 (= res!2716050 (not call!581002))))

(declare-fun b!6625320 () Bool)

(declare-fun res!2716049 () Bool)

(declare-fun e!4007581 () Bool)

(assert (=> b!6625320 (=> res!2716049 e!4007581)))

(assert (=> b!6625320 (= res!2716049 e!4007582)))

(declare-fun res!2716048 () Bool)

(assert (=> b!6625320 (=> (not res!2716048) (not e!4007582))))

(declare-fun lt!2418506 () Bool)

(assert (=> b!6625320 (= res!2716048 lt!2418506)))

(declare-fun bm!580997 () Bool)

(assert (=> bm!580997 (= call!581002 (isEmpty!37954 s!2326))))

(declare-fun b!6625321 () Bool)

(declare-fun e!4007586 () Bool)

(assert (=> b!6625321 (= e!4007586 (nullable!6488 r!7292))))

(declare-fun b!6625322 () Bool)

(declare-fun e!4007587 () Bool)

(assert (=> b!6625322 (= e!4007587 (= lt!2418506 call!581002))))

(declare-fun b!6625323 () Bool)

(declare-fun e!4007584 () Bool)

(assert (=> b!6625323 (= e!4007584 (not lt!2418506))))

(declare-fun b!6625325 () Bool)

(assert (=> b!6625325 (= e!4007587 e!4007584)))

(declare-fun c!1221643 () Bool)

(assert (=> b!6625325 (= c!1221643 ((_ is EmptyLang!16495) r!7292))))

(declare-fun b!6625326 () Bool)

(declare-fun e!4007585 () Bool)

(assert (=> b!6625326 (= e!4007585 (not (= (head!13432 s!2326) (c!1221458 r!7292))))))

(declare-fun b!6625327 () Bool)

(declare-fun res!2716047 () Bool)

(assert (=> b!6625327 (=> res!2716047 e!4007581)))

(assert (=> b!6625327 (= res!2716047 (not ((_ is ElementMatch!16495) r!7292)))))

(assert (=> b!6625327 (= e!4007584 e!4007581)))

(declare-fun b!6625324 () Bool)

(declare-fun e!4007583 () Bool)

(assert (=> b!6625324 (= e!4007583 e!4007585)))

(declare-fun res!2716051 () Bool)

(assert (=> b!6625324 (=> res!2716051 e!4007585)))

(assert (=> b!6625324 (= res!2716051 call!581002)))

(declare-fun d!2076709 () Bool)

(assert (=> d!2076709 e!4007587))

(declare-fun c!1221644 () Bool)

(assert (=> d!2076709 (= c!1221644 ((_ is EmptyExpr!16495) r!7292))))

(assert (=> d!2076709 (= lt!2418506 e!4007586)))

(declare-fun c!1221642 () Bool)

(assert (=> d!2076709 (= c!1221642 (isEmpty!37954 s!2326))))

(assert (=> d!2076709 (validRegex!8231 r!7292)))

(assert (=> d!2076709 (= (matchR!8678 r!7292 s!2326) lt!2418506)))

(declare-fun b!6625328 () Bool)

(declare-fun derivativeStep!5175 (Regex!16495 C!33260) Regex!16495)

(assert (=> b!6625328 (= e!4007586 (matchR!8678 (derivativeStep!5175 r!7292 (head!13432 s!2326)) (tail!12517 s!2326)))))

(declare-fun b!6625329 () Bool)

(declare-fun res!2716046 () Bool)

(assert (=> b!6625329 (=> (not res!2716046) (not e!4007582))))

(assert (=> b!6625329 (= res!2716046 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6625330 () Bool)

(declare-fun res!2716044 () Bool)

(assert (=> b!6625330 (=> res!2716044 e!4007585)))

(assert (=> b!6625330 (= res!2716044 (not (isEmpty!37954 (tail!12517 s!2326))))))

(declare-fun b!6625331 () Bool)

(assert (=> b!6625331 (= e!4007581 e!4007583)))

(declare-fun res!2716045 () Bool)

(assert (=> b!6625331 (=> (not res!2716045) (not e!4007583))))

(assert (=> b!6625331 (= res!2716045 (not lt!2418506))))

(assert (= (and d!2076709 c!1221642) b!6625321))

(assert (= (and d!2076709 (not c!1221642)) b!6625328))

(assert (= (and d!2076709 c!1221644) b!6625322))

(assert (= (and d!2076709 (not c!1221644)) b!6625325))

(assert (= (and b!6625325 c!1221643) b!6625323))

(assert (= (and b!6625325 (not c!1221643)) b!6625327))

(assert (= (and b!6625327 (not res!2716047)) b!6625320))

(assert (= (and b!6625320 res!2716048) b!6625319))

(assert (= (and b!6625319 res!2716050) b!6625329))

(assert (= (and b!6625329 res!2716046) b!6625318))

(assert (= (and b!6625320 (not res!2716049)) b!6625331))

(assert (= (and b!6625331 res!2716045) b!6625324))

(assert (= (and b!6625324 (not res!2716051)) b!6625330))

(assert (= (and b!6625330 (not res!2716044)) b!6625326))

(assert (= (or b!6625322 b!6625319 b!6625324) bm!580997))

(assert (=> b!6625326 m!7395406))

(declare-fun m!7395714 () Bool)

(assert (=> b!6625321 m!7395714))

(assert (=> b!6625328 m!7395406))

(assert (=> b!6625328 m!7395406))

(declare-fun m!7395716 () Bool)

(assert (=> b!6625328 m!7395716))

(assert (=> b!6625328 m!7395410))

(assert (=> b!6625328 m!7395716))

(assert (=> b!6625328 m!7395410))

(declare-fun m!7395718 () Bool)

(assert (=> b!6625328 m!7395718))

(assert (=> b!6625330 m!7395410))

(assert (=> b!6625330 m!7395410))

(declare-fun m!7395720 () Bool)

(assert (=> b!6625330 m!7395720))

(assert (=> b!6625318 m!7395406))

(assert (=> bm!580997 m!7395402))

(assert (=> b!6625329 m!7395410))

(assert (=> b!6625329 m!7395410))

(assert (=> b!6625329 m!7395720))

(assert (=> d!2076709 m!7395402))

(assert (=> d!2076709 m!7395222))

(assert (=> b!6624691 d!2076709))

(declare-fun d!2076713 () Bool)

(assert (=> d!2076713 (= (matchR!8678 r!7292 s!2326) (matchRSpec!3596 r!7292 s!2326))))

(declare-fun lt!2418511 () Unit!159335)

(declare-fun choose!49511 (Regex!16495 List!65785) Unit!159335)

(assert (=> d!2076713 (= lt!2418511 (choose!49511 r!7292 s!2326))))

(assert (=> d!2076713 (validRegex!8231 r!7292)))

(assert (=> d!2076713 (= (mainMatchTheorem!3596 r!7292 s!2326) lt!2418511)))

(declare-fun bs!1700409 () Bool)

(assert (= bs!1700409 d!2076713))

(assert (=> bs!1700409 m!7395280))

(assert (=> bs!1700409 m!7395278))

(declare-fun m!7395746 () Bool)

(assert (=> bs!1700409 m!7395746))

(assert (=> bs!1700409 m!7395222))

(assert (=> b!6624691 d!2076713))

(declare-fun d!2076729 () Bool)

(declare-fun e!4007595 () Bool)

(assert (=> d!2076729 e!4007595))

(declare-fun res!2716054 () Bool)

(assert (=> d!2076729 (=> (not res!2716054) (not e!4007595))))

(declare-fun lt!2418512 () List!65786)

(assert (=> d!2076729 (= res!2716054 (noDuplicate!2295 lt!2418512))))

(assert (=> d!2076729 (= lt!2418512 (choose!49497 lt!2418411))))

(assert (=> d!2076729 (= (toList!10279 lt!2418411) lt!2418512)))

(declare-fun b!6625344 () Bool)

(assert (=> b!6625344 (= e!4007595 (= (content!12675 lt!2418512) lt!2418411))))

(assert (= (and d!2076729 res!2716054) b!6625344))

(declare-fun m!7395748 () Bool)

(assert (=> d!2076729 m!7395748))

(declare-fun m!7395750 () Bool)

(assert (=> d!2076729 m!7395750))

(declare-fun m!7395752 () Bool)

(assert (=> b!6625344 m!7395752))

(assert (=> b!6624692 d!2076729))

(assert (=> b!6624679 d!2076611))

(declare-fun bs!1700410 () Bool)

(declare-fun d!2076731 () Bool)

(assert (= bs!1700410 (and d!2076731 b!6624703)))

(declare-fun lambda!370186 () Int)

(assert (=> bs!1700410 (= lambda!370186 lambda!370119)))

(declare-fun bs!1700411 () Bool)

(assert (= bs!1700411 (and d!2076731 d!2076575)))

(assert (=> bs!1700411 (= lambda!370186 lambda!370128)))

(assert (=> d!2076731 true))

(assert (=> d!2076731 (= (derivationStepZipper!2461 z!1189 (h!72109 s!2326)) (flatMap!2000 z!1189 lambda!370186))))

(declare-fun bs!1700412 () Bool)

(assert (= bs!1700412 d!2076731))

(declare-fun m!7395754 () Bool)

(assert (=> bs!1700412 m!7395754))

(assert (=> b!6624710 d!2076731))

(declare-fun bs!1700413 () Bool)

(declare-fun b!6625352 () Bool)

(assert (= bs!1700413 (and b!6625352 d!2076667)))

(declare-fun lambda!370187 () Int)

(assert (=> bs!1700413 (not (= lambda!370187 lambda!370156))))

(declare-fun bs!1700414 () Bool)

(assert (= bs!1700414 (and b!6625352 d!2076665)))

(assert (=> bs!1700414 (not (= lambda!370187 lambda!370151))))

(declare-fun bs!1700415 () Bool)

(assert (= bs!1700415 (and b!6625352 b!6624705)))

(assert (=> bs!1700415 (not (= lambda!370187 lambda!370118))))

(declare-fun bs!1700416 () Bool)

(assert (= bs!1700416 (and b!6625352 b!6625252)))

(assert (=> bs!1700416 (= (and (= (reg!16824 (regOne!33502 r!7292)) (reg!16824 r!7292)) (= (regOne!33502 r!7292) r!7292)) (= lambda!370187 lambda!370175))))

(declare-fun bs!1700417 () Bool)

(assert (= bs!1700417 (and b!6625352 b!6625251)))

(assert (=> bs!1700417 (not (= lambda!370187 lambda!370179))))

(assert (=> bs!1700413 (not (= lambda!370187 lambda!370159))))

(assert (=> bs!1700415 (not (= lambda!370187 lambda!370117))))

(assert (=> b!6625352 true))

(assert (=> b!6625352 true))

(declare-fun bs!1700418 () Bool)

(declare-fun b!6625351 () Bool)

(assert (= bs!1700418 (and b!6625351 d!2076667)))

(declare-fun lambda!370188 () Int)

(assert (=> bs!1700418 (not (= lambda!370188 lambda!370156))))

(declare-fun bs!1700419 () Bool)

(assert (= bs!1700419 (and b!6625351 b!6625352)))

(assert (=> bs!1700419 (not (= lambda!370188 lambda!370187))))

(declare-fun bs!1700420 () Bool)

(assert (= bs!1700420 (and b!6625351 d!2076665)))

(assert (=> bs!1700420 (not (= lambda!370188 lambda!370151))))

(declare-fun bs!1700421 () Bool)

(assert (= bs!1700421 (and b!6625351 b!6624705)))

(assert (=> bs!1700421 (= (and (= (regOne!33502 (regOne!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370188 lambda!370118))))

(declare-fun bs!1700422 () Bool)

(assert (= bs!1700422 (and b!6625351 b!6625252)))

(assert (=> bs!1700422 (not (= lambda!370188 lambda!370175))))

(declare-fun bs!1700423 () Bool)

(assert (= bs!1700423 (and b!6625351 b!6625251)))

(assert (=> bs!1700423 (= (and (= (regOne!33502 (regOne!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370188 lambda!370179))))

(assert (=> bs!1700418 (= (and (= (regOne!33502 (regOne!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370188 lambda!370159))))

(assert (=> bs!1700421 (not (= lambda!370188 lambda!370117))))

(assert (=> b!6625351 true))

(assert (=> b!6625351 true))

(declare-fun b!6625345 () Bool)

(declare-fun c!1221653 () Bool)

(assert (=> b!6625345 (= c!1221653 ((_ is Union!16495) (regOne!33502 r!7292)))))

(declare-fun e!4007596 () Bool)

(declare-fun e!4007599 () Bool)

(assert (=> b!6625345 (= e!4007596 e!4007599)))

(declare-fun b!6625346 () Bool)

(declare-fun e!4007602 () Bool)

(declare-fun e!4007598 () Bool)

(assert (=> b!6625346 (= e!4007602 e!4007598)))

(declare-fun res!2716055 () Bool)

(assert (=> b!6625346 (= res!2716055 (not ((_ is EmptyLang!16495) (regOne!33502 r!7292))))))

(assert (=> b!6625346 (=> (not res!2716055) (not e!4007598))))

(declare-fun b!6625347 () Bool)

(declare-fun e!4007597 () Bool)

(assert (=> b!6625347 (= e!4007599 e!4007597)))

(declare-fun res!2716056 () Bool)

(assert (=> b!6625347 (= res!2716056 (matchRSpec!3596 (regOne!33503 (regOne!33502 r!7292)) s!2326))))

(assert (=> b!6625347 (=> res!2716056 e!4007597)))

(declare-fun d!2076733 () Bool)

(declare-fun c!1221650 () Bool)

(assert (=> d!2076733 (= c!1221650 ((_ is EmptyExpr!16495) (regOne!33502 r!7292)))))

(assert (=> d!2076733 (= (matchRSpec!3596 (regOne!33502 r!7292) s!2326) e!4007602)))

(declare-fun b!6625348 () Bool)

(assert (=> b!6625348 (= e!4007597 (matchRSpec!3596 (regTwo!33503 (regOne!33502 r!7292)) s!2326))))

(declare-fun bm!581000 () Bool)

(declare-fun call!581006 () Bool)

(assert (=> bm!581000 (= call!581006 (isEmpty!37954 s!2326))))

(declare-fun b!6625349 () Bool)

(declare-fun res!2716057 () Bool)

(declare-fun e!4007600 () Bool)

(assert (=> b!6625349 (=> res!2716057 e!4007600)))

(assert (=> b!6625349 (= res!2716057 call!581006)))

(declare-fun e!4007601 () Bool)

(assert (=> b!6625349 (= e!4007601 e!4007600)))

(declare-fun b!6625350 () Bool)

(assert (=> b!6625350 (= e!4007602 call!581006)))

(declare-fun c!1221651 () Bool)

(declare-fun call!581005 () Bool)

(declare-fun bm!581001 () Bool)

(assert (=> bm!581001 (= call!581005 (Exists!3565 (ite c!1221651 lambda!370187 lambda!370188)))))

(assert (=> b!6625351 (= e!4007601 call!581005)))

(assert (=> b!6625352 (= e!4007600 call!581005)))

(declare-fun b!6625353 () Bool)

(declare-fun c!1221652 () Bool)

(assert (=> b!6625353 (= c!1221652 ((_ is ElementMatch!16495) (regOne!33502 r!7292)))))

(assert (=> b!6625353 (= e!4007598 e!4007596)))

(declare-fun b!6625354 () Bool)

(assert (=> b!6625354 (= e!4007596 (= s!2326 (Cons!65661 (c!1221458 (regOne!33502 r!7292)) Nil!65661)))))

(declare-fun b!6625355 () Bool)

(assert (=> b!6625355 (= e!4007599 e!4007601)))

(assert (=> b!6625355 (= c!1221651 ((_ is Star!16495) (regOne!33502 r!7292)))))

(assert (= (and d!2076733 c!1221650) b!6625350))

(assert (= (and d!2076733 (not c!1221650)) b!6625346))

(assert (= (and b!6625346 res!2716055) b!6625353))

(assert (= (and b!6625353 c!1221652) b!6625354))

(assert (= (and b!6625353 (not c!1221652)) b!6625345))

(assert (= (and b!6625345 c!1221653) b!6625347))

(assert (= (and b!6625345 (not c!1221653)) b!6625355))

(assert (= (and b!6625347 (not res!2716056)) b!6625348))

(assert (= (and b!6625355 c!1221651) b!6625349))

(assert (= (and b!6625355 (not c!1221651)) b!6625351))

(assert (= (and b!6625349 (not res!2716057)) b!6625352))

(assert (= (or b!6625352 b!6625351) bm!581001))

(assert (= (or b!6625350 b!6625349) bm!581000))

(declare-fun m!7395756 () Bool)

(assert (=> b!6625347 m!7395756))

(declare-fun m!7395758 () Bool)

(assert (=> b!6625348 m!7395758))

(assert (=> bm!581000 m!7395402))

(declare-fun m!7395760 () Bool)

(assert (=> bm!581001 m!7395760))

(assert (=> b!6624680 d!2076733))

(declare-fun d!2076735 () Bool)

(assert (=> d!2076735 (= (matchR!8678 (regOne!33502 r!7292) s!2326) (matchRSpec!3596 (regOne!33502 r!7292) s!2326))))

(declare-fun lt!2418513 () Unit!159335)

(assert (=> d!2076735 (= lt!2418513 (choose!49511 (regOne!33502 r!7292) s!2326))))

(assert (=> d!2076735 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076735 (= (mainMatchTheorem!3596 (regOne!33502 r!7292) s!2326) lt!2418513)))

(declare-fun bs!1700424 () Bool)

(assert (= bs!1700424 d!2076735))

(assert (=> bs!1700424 m!7395236))

(assert (=> bs!1700424 m!7395238))

(declare-fun m!7395762 () Bool)

(assert (=> bs!1700424 m!7395762))

(assert (=> bs!1700424 m!7395552))

(assert (=> b!6624680 d!2076735))

(declare-fun b!6625378 () Bool)

(declare-fun e!4007616 () Bool)

(assert (=> b!6625378 (= e!4007616 (= (head!13432 s!2326) (c!1221458 (regOne!33502 r!7292))))))

(declare-fun b!6625379 () Bool)

(declare-fun res!2716066 () Bool)

(assert (=> b!6625379 (=> (not res!2716066) (not e!4007616))))

(declare-fun call!581013 () Bool)

(assert (=> b!6625379 (= res!2716066 (not call!581013))))

(declare-fun b!6625380 () Bool)

(declare-fun res!2716065 () Bool)

(declare-fun e!4007615 () Bool)

(assert (=> b!6625380 (=> res!2716065 e!4007615)))

(assert (=> b!6625380 (= res!2716065 e!4007616)))

(declare-fun res!2716064 () Bool)

(assert (=> b!6625380 (=> (not res!2716064) (not e!4007616))))

(declare-fun lt!2418514 () Bool)

(assert (=> b!6625380 (= res!2716064 lt!2418514)))

(declare-fun bm!581008 () Bool)

(assert (=> bm!581008 (= call!581013 (isEmpty!37954 s!2326))))

(declare-fun b!6625381 () Bool)

(declare-fun e!4007620 () Bool)

(assert (=> b!6625381 (= e!4007620 (nullable!6488 (regOne!33502 r!7292)))))

(declare-fun b!6625382 () Bool)

(declare-fun e!4007621 () Bool)

(assert (=> b!6625382 (= e!4007621 (= lt!2418514 call!581013))))

(declare-fun b!6625383 () Bool)

(declare-fun e!4007618 () Bool)

(assert (=> b!6625383 (= e!4007618 (not lt!2418514))))

(declare-fun b!6625385 () Bool)

(assert (=> b!6625385 (= e!4007621 e!4007618)))

(declare-fun c!1221665 () Bool)

(assert (=> b!6625385 (= c!1221665 ((_ is EmptyLang!16495) (regOne!33502 r!7292)))))

(declare-fun b!6625386 () Bool)

(declare-fun e!4007619 () Bool)

(assert (=> b!6625386 (= e!4007619 (not (= (head!13432 s!2326) (c!1221458 (regOne!33502 r!7292)))))))

(declare-fun b!6625387 () Bool)

(declare-fun res!2716063 () Bool)

(assert (=> b!6625387 (=> res!2716063 e!4007615)))

(assert (=> b!6625387 (= res!2716063 (not ((_ is ElementMatch!16495) (regOne!33502 r!7292))))))

(assert (=> b!6625387 (= e!4007618 e!4007615)))

(declare-fun b!6625384 () Bool)

(declare-fun e!4007617 () Bool)

(assert (=> b!6625384 (= e!4007617 e!4007619)))

(declare-fun res!2716067 () Bool)

(assert (=> b!6625384 (=> res!2716067 e!4007619)))

(assert (=> b!6625384 (= res!2716067 call!581013)))

(declare-fun d!2076737 () Bool)

(assert (=> d!2076737 e!4007621))

(declare-fun c!1221666 () Bool)

(assert (=> d!2076737 (= c!1221666 ((_ is EmptyExpr!16495) (regOne!33502 r!7292)))))

(assert (=> d!2076737 (= lt!2418514 e!4007620)))

(declare-fun c!1221664 () Bool)

(assert (=> d!2076737 (= c!1221664 (isEmpty!37954 s!2326))))

(assert (=> d!2076737 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076737 (= (matchR!8678 (regOne!33502 r!7292) s!2326) lt!2418514)))

(declare-fun b!6625388 () Bool)

(assert (=> b!6625388 (= e!4007620 (matchR!8678 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)) (tail!12517 s!2326)))))

(declare-fun b!6625389 () Bool)

(declare-fun res!2716062 () Bool)

(assert (=> b!6625389 (=> (not res!2716062) (not e!4007616))))

(assert (=> b!6625389 (= res!2716062 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6625390 () Bool)

(declare-fun res!2716060 () Bool)

(assert (=> b!6625390 (=> res!2716060 e!4007619)))

(assert (=> b!6625390 (= res!2716060 (not (isEmpty!37954 (tail!12517 s!2326))))))

(declare-fun b!6625391 () Bool)

(assert (=> b!6625391 (= e!4007615 e!4007617)))

(declare-fun res!2716061 () Bool)

(assert (=> b!6625391 (=> (not res!2716061) (not e!4007617))))

(assert (=> b!6625391 (= res!2716061 (not lt!2418514))))

(assert (= (and d!2076737 c!1221664) b!6625381))

(assert (= (and d!2076737 (not c!1221664)) b!6625388))

(assert (= (and d!2076737 c!1221666) b!6625382))

(assert (= (and d!2076737 (not c!1221666)) b!6625385))

(assert (= (and b!6625385 c!1221665) b!6625383))

(assert (= (and b!6625385 (not c!1221665)) b!6625387))

(assert (= (and b!6625387 (not res!2716063)) b!6625380))

(assert (= (and b!6625380 res!2716064) b!6625379))

(assert (= (and b!6625379 res!2716066) b!6625389))

(assert (= (and b!6625389 res!2716062) b!6625378))

(assert (= (and b!6625380 (not res!2716065)) b!6625391))

(assert (= (and b!6625391 res!2716061) b!6625384))

(assert (= (and b!6625384 (not res!2716067)) b!6625390))

(assert (= (and b!6625390 (not res!2716060)) b!6625386))

(assert (= (or b!6625382 b!6625379 b!6625384) bm!581008))

(assert (=> b!6625386 m!7395406))

(declare-fun m!7395764 () Bool)

(assert (=> b!6625381 m!7395764))

(assert (=> b!6625388 m!7395406))

(assert (=> b!6625388 m!7395406))

(declare-fun m!7395766 () Bool)

(assert (=> b!6625388 m!7395766))

(assert (=> b!6625388 m!7395410))

(assert (=> b!6625388 m!7395766))

(assert (=> b!6625388 m!7395410))

(declare-fun m!7395768 () Bool)

(assert (=> b!6625388 m!7395768))

(assert (=> b!6625390 m!7395410))

(assert (=> b!6625390 m!7395410))

(assert (=> b!6625390 m!7395720))

(assert (=> b!6625378 m!7395406))

(assert (=> bm!581008 m!7395402))

(assert (=> b!6625389 m!7395410))

(assert (=> b!6625389 m!7395410))

(assert (=> b!6625389 m!7395720))

(assert (=> d!2076737 m!7395402))

(assert (=> d!2076737 m!7395552))

(assert (=> b!6624680 d!2076737))

(declare-fun bs!1700425 () Bool)

(declare-fun b!6625399 () Bool)

(assert (= bs!1700425 (and b!6625399 d!2076667)))

(declare-fun lambda!370189 () Int)

(assert (=> bs!1700425 (not (= lambda!370189 lambda!370156))))

(declare-fun bs!1700426 () Bool)

(assert (= bs!1700426 (and b!6625399 b!6625351)))

(assert (=> bs!1700426 (not (= lambda!370189 lambda!370188))))

(declare-fun bs!1700427 () Bool)

(assert (= bs!1700427 (and b!6625399 b!6625352)))

(assert (=> bs!1700427 (= (and (= (reg!16824 (regTwo!33502 r!7292)) (reg!16824 (regOne!33502 r!7292))) (= (regTwo!33502 r!7292) (regOne!33502 r!7292))) (= lambda!370189 lambda!370187))))

(declare-fun bs!1700428 () Bool)

(assert (= bs!1700428 (and b!6625399 d!2076665)))

(assert (=> bs!1700428 (not (= lambda!370189 lambda!370151))))

(declare-fun bs!1700429 () Bool)

(assert (= bs!1700429 (and b!6625399 b!6624705)))

(assert (=> bs!1700429 (not (= lambda!370189 lambda!370118))))

(declare-fun bs!1700430 () Bool)

(assert (= bs!1700430 (and b!6625399 b!6625252)))

(assert (=> bs!1700430 (= (and (= (reg!16824 (regTwo!33502 r!7292)) (reg!16824 r!7292)) (= (regTwo!33502 r!7292) r!7292)) (= lambda!370189 lambda!370175))))

(declare-fun bs!1700431 () Bool)

(assert (= bs!1700431 (and b!6625399 b!6625251)))

(assert (=> bs!1700431 (not (= lambda!370189 lambda!370179))))

(assert (=> bs!1700425 (not (= lambda!370189 lambda!370159))))

(assert (=> bs!1700429 (not (= lambda!370189 lambda!370117))))

(assert (=> b!6625399 true))

(assert (=> b!6625399 true))

(declare-fun bs!1700432 () Bool)

(declare-fun b!6625398 () Bool)

(assert (= bs!1700432 (and b!6625398 d!2076667)))

(declare-fun lambda!370190 () Int)

(assert (=> bs!1700432 (not (= lambda!370190 lambda!370156))))

(declare-fun bs!1700433 () Bool)

(assert (= bs!1700433 (and b!6625398 b!6625351)))

(assert (=> bs!1700433 (= (and (= (regOne!33502 (regTwo!33502 r!7292)) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regTwo!33502 r!7292)) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370190 lambda!370188))))

(declare-fun bs!1700434 () Bool)

(assert (= bs!1700434 (and b!6625398 b!6625352)))

(assert (=> bs!1700434 (not (= lambda!370190 lambda!370187))))

(declare-fun bs!1700435 () Bool)

(assert (= bs!1700435 (and b!6625398 b!6624705)))

(assert (=> bs!1700435 (= (and (= (regOne!33502 (regTwo!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370190 lambda!370118))))

(declare-fun bs!1700436 () Bool)

(assert (= bs!1700436 (and b!6625398 b!6625252)))

(assert (=> bs!1700436 (not (= lambda!370190 lambda!370175))))

(declare-fun bs!1700437 () Bool)

(assert (= bs!1700437 (and b!6625398 b!6625251)))

(assert (=> bs!1700437 (= (and (= (regOne!33502 (regTwo!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370190 lambda!370179))))

(assert (=> bs!1700432 (= (and (= (regOne!33502 (regTwo!33502 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370190 lambda!370159))))

(assert (=> bs!1700435 (not (= lambda!370190 lambda!370117))))

(declare-fun bs!1700438 () Bool)

(assert (= bs!1700438 (and b!6625398 d!2076665)))

(assert (=> bs!1700438 (not (= lambda!370190 lambda!370151))))

(declare-fun bs!1700439 () Bool)

(assert (= bs!1700439 (and b!6625398 b!6625399)))

(assert (=> bs!1700439 (not (= lambda!370190 lambda!370189))))

(assert (=> b!6625398 true))

(assert (=> b!6625398 true))

(declare-fun b!6625392 () Bool)

(declare-fun c!1221670 () Bool)

(assert (=> b!6625392 (= c!1221670 ((_ is Union!16495) (regTwo!33502 r!7292)))))

(declare-fun e!4007622 () Bool)

(declare-fun e!4007625 () Bool)

(assert (=> b!6625392 (= e!4007622 e!4007625)))

(declare-fun b!6625393 () Bool)

(declare-fun e!4007628 () Bool)

(declare-fun e!4007624 () Bool)

(assert (=> b!6625393 (= e!4007628 e!4007624)))

(declare-fun res!2716068 () Bool)

(assert (=> b!6625393 (= res!2716068 (not ((_ is EmptyLang!16495) (regTwo!33502 r!7292))))))

(assert (=> b!6625393 (=> (not res!2716068) (not e!4007624))))

(declare-fun b!6625394 () Bool)

(declare-fun e!4007623 () Bool)

(assert (=> b!6625394 (= e!4007625 e!4007623)))

(declare-fun res!2716069 () Bool)

(assert (=> b!6625394 (= res!2716069 (matchRSpec!3596 (regOne!33503 (regTwo!33502 r!7292)) s!2326))))

(assert (=> b!6625394 (=> res!2716069 e!4007623)))

(declare-fun d!2076739 () Bool)

(declare-fun c!1221667 () Bool)

(assert (=> d!2076739 (= c!1221667 ((_ is EmptyExpr!16495) (regTwo!33502 r!7292)))))

(assert (=> d!2076739 (= (matchRSpec!3596 (regTwo!33502 r!7292) s!2326) e!4007628)))

(declare-fun b!6625395 () Bool)

(assert (=> b!6625395 (= e!4007623 (matchRSpec!3596 (regTwo!33503 (regTwo!33502 r!7292)) s!2326))))

(declare-fun bm!581015 () Bool)

(declare-fun call!581021 () Bool)

(assert (=> bm!581015 (= call!581021 (isEmpty!37954 s!2326))))

(declare-fun b!6625396 () Bool)

(declare-fun res!2716070 () Bool)

(declare-fun e!4007626 () Bool)

(assert (=> b!6625396 (=> res!2716070 e!4007626)))

(assert (=> b!6625396 (= res!2716070 call!581021)))

(declare-fun e!4007627 () Bool)

(assert (=> b!6625396 (= e!4007627 e!4007626)))

(declare-fun b!6625397 () Bool)

(assert (=> b!6625397 (= e!4007628 call!581021)))

(declare-fun bm!581016 () Bool)

(declare-fun call!581020 () Bool)

(declare-fun c!1221668 () Bool)

(assert (=> bm!581016 (= call!581020 (Exists!3565 (ite c!1221668 lambda!370189 lambda!370190)))))

(assert (=> b!6625398 (= e!4007627 call!581020)))

(assert (=> b!6625399 (= e!4007626 call!581020)))

(declare-fun b!6625400 () Bool)

(declare-fun c!1221669 () Bool)

(assert (=> b!6625400 (= c!1221669 ((_ is ElementMatch!16495) (regTwo!33502 r!7292)))))

(assert (=> b!6625400 (= e!4007624 e!4007622)))

(declare-fun b!6625401 () Bool)

(assert (=> b!6625401 (= e!4007622 (= s!2326 (Cons!65661 (c!1221458 (regTwo!33502 r!7292)) Nil!65661)))))

(declare-fun b!6625402 () Bool)

(assert (=> b!6625402 (= e!4007625 e!4007627)))

(assert (=> b!6625402 (= c!1221668 ((_ is Star!16495) (regTwo!33502 r!7292)))))

(assert (= (and d!2076739 c!1221667) b!6625397))

(assert (= (and d!2076739 (not c!1221667)) b!6625393))

(assert (= (and b!6625393 res!2716068) b!6625400))

(assert (= (and b!6625400 c!1221669) b!6625401))

(assert (= (and b!6625400 (not c!1221669)) b!6625392))

(assert (= (and b!6625392 c!1221670) b!6625394))

(assert (= (and b!6625392 (not c!1221670)) b!6625402))

(assert (= (and b!6625394 (not res!2716069)) b!6625395))

(assert (= (and b!6625402 c!1221668) b!6625396))

(assert (= (and b!6625402 (not c!1221668)) b!6625398))

(assert (= (and b!6625396 (not res!2716070)) b!6625399))

(assert (= (or b!6625399 b!6625398) bm!581016))

(assert (= (or b!6625397 b!6625396) bm!581015))

(declare-fun m!7395770 () Bool)

(assert (=> b!6625394 m!7395770))

(declare-fun m!7395772 () Bool)

(assert (=> b!6625395 m!7395772))

(assert (=> bm!581015 m!7395402))

(declare-fun m!7395774 () Bool)

(assert (=> bm!581016 m!7395774))

(assert (=> b!6624680 d!2076739))

(declare-fun b!6625414 () Bool)

(declare-fun e!4007636 () Bool)

(assert (=> b!6625414 (= e!4007636 (= (head!13432 s!2326) (c!1221458 (regTwo!33502 r!7292))))))

(declare-fun b!6625415 () Bool)

(declare-fun res!2716078 () Bool)

(assert (=> b!6625415 (=> (not res!2716078) (not e!4007636))))

(declare-fun call!581028 () Bool)

(assert (=> b!6625415 (= res!2716078 (not call!581028))))

(declare-fun b!6625416 () Bool)

(declare-fun res!2716077 () Bool)

(declare-fun e!4007635 () Bool)

(assert (=> b!6625416 (=> res!2716077 e!4007635)))

(assert (=> b!6625416 (= res!2716077 e!4007636)))

(declare-fun res!2716076 () Bool)

(assert (=> b!6625416 (=> (not res!2716076) (not e!4007636))))

(declare-fun lt!2418515 () Bool)

(assert (=> b!6625416 (= res!2716076 lt!2418515)))

(declare-fun bm!581023 () Bool)

(assert (=> bm!581023 (= call!581028 (isEmpty!37954 s!2326))))

(declare-fun b!6625417 () Bool)

(declare-fun e!4007640 () Bool)

(assert (=> b!6625417 (= e!4007640 (nullable!6488 (regTwo!33502 r!7292)))))

(declare-fun b!6625418 () Bool)

(declare-fun e!4007641 () Bool)

(assert (=> b!6625418 (= e!4007641 (= lt!2418515 call!581028))))

(declare-fun b!6625419 () Bool)

(declare-fun e!4007638 () Bool)

(assert (=> b!6625419 (= e!4007638 (not lt!2418515))))

(declare-fun b!6625421 () Bool)

(assert (=> b!6625421 (= e!4007641 e!4007638)))

(declare-fun c!1221677 () Bool)

(assert (=> b!6625421 (= c!1221677 ((_ is EmptyLang!16495) (regTwo!33502 r!7292)))))

(declare-fun b!6625422 () Bool)

(declare-fun e!4007639 () Bool)

(assert (=> b!6625422 (= e!4007639 (not (= (head!13432 s!2326) (c!1221458 (regTwo!33502 r!7292)))))))

(declare-fun b!6625423 () Bool)

(declare-fun res!2716075 () Bool)

(assert (=> b!6625423 (=> res!2716075 e!4007635)))

(assert (=> b!6625423 (= res!2716075 (not ((_ is ElementMatch!16495) (regTwo!33502 r!7292))))))

(assert (=> b!6625423 (= e!4007638 e!4007635)))

(declare-fun b!6625420 () Bool)

(declare-fun e!4007637 () Bool)

(assert (=> b!6625420 (= e!4007637 e!4007639)))

(declare-fun res!2716079 () Bool)

(assert (=> b!6625420 (=> res!2716079 e!4007639)))

(assert (=> b!6625420 (= res!2716079 call!581028)))

(declare-fun d!2076741 () Bool)

(assert (=> d!2076741 e!4007641))

(declare-fun c!1221678 () Bool)

(assert (=> d!2076741 (= c!1221678 ((_ is EmptyExpr!16495) (regTwo!33502 r!7292)))))

(assert (=> d!2076741 (= lt!2418515 e!4007640)))

(declare-fun c!1221676 () Bool)

(assert (=> d!2076741 (= c!1221676 (isEmpty!37954 s!2326))))

(assert (=> d!2076741 (validRegex!8231 (regTwo!33502 r!7292))))

(assert (=> d!2076741 (= (matchR!8678 (regTwo!33502 r!7292) s!2326) lt!2418515)))

(declare-fun b!6625424 () Bool)

(assert (=> b!6625424 (= e!4007640 (matchR!8678 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)) (tail!12517 s!2326)))))

(declare-fun b!6625425 () Bool)

(declare-fun res!2716074 () Bool)

(assert (=> b!6625425 (=> (not res!2716074) (not e!4007636))))

(assert (=> b!6625425 (= res!2716074 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6625426 () Bool)

(declare-fun res!2716072 () Bool)

(assert (=> b!6625426 (=> res!2716072 e!4007639)))

(assert (=> b!6625426 (= res!2716072 (not (isEmpty!37954 (tail!12517 s!2326))))))

(declare-fun b!6625427 () Bool)

(assert (=> b!6625427 (= e!4007635 e!4007637)))

(declare-fun res!2716073 () Bool)

(assert (=> b!6625427 (=> (not res!2716073) (not e!4007637))))

(assert (=> b!6625427 (= res!2716073 (not lt!2418515))))

(assert (= (and d!2076741 c!1221676) b!6625417))

(assert (= (and d!2076741 (not c!1221676)) b!6625424))

(assert (= (and d!2076741 c!1221678) b!6625418))

(assert (= (and d!2076741 (not c!1221678)) b!6625421))

(assert (= (and b!6625421 c!1221677) b!6625419))

(assert (= (and b!6625421 (not c!1221677)) b!6625423))

(assert (= (and b!6625423 (not res!2716075)) b!6625416))

(assert (= (and b!6625416 res!2716076) b!6625415))

(assert (= (and b!6625415 res!2716078) b!6625425))

(assert (= (and b!6625425 res!2716074) b!6625414))

(assert (= (and b!6625416 (not res!2716077)) b!6625427))

(assert (= (and b!6625427 res!2716073) b!6625420))

(assert (= (and b!6625420 (not res!2716079)) b!6625426))

(assert (= (and b!6625426 (not res!2716072)) b!6625422))

(assert (= (or b!6625418 b!6625415 b!6625420) bm!581023))

(assert (=> b!6625422 m!7395406))

(declare-fun m!7395784 () Bool)

(assert (=> b!6625417 m!7395784))

(assert (=> b!6625424 m!7395406))

(assert (=> b!6625424 m!7395406))

(declare-fun m!7395786 () Bool)

(assert (=> b!6625424 m!7395786))

(assert (=> b!6625424 m!7395410))

(assert (=> b!6625424 m!7395786))

(assert (=> b!6625424 m!7395410))

(declare-fun m!7395792 () Bool)

(assert (=> b!6625424 m!7395792))

(assert (=> b!6625426 m!7395410))

(assert (=> b!6625426 m!7395410))

(assert (=> b!6625426 m!7395720))

(assert (=> b!6625414 m!7395406))

(assert (=> bm!581023 m!7395402))

(assert (=> b!6625425 m!7395410))

(assert (=> b!6625425 m!7395410))

(assert (=> b!6625425 m!7395720))

(assert (=> d!2076741 m!7395402))

(declare-fun m!7395796 () Bool)

(assert (=> d!2076741 m!7395796))

(assert (=> b!6624680 d!2076741))

(declare-fun d!2076747 () Bool)

(assert (=> d!2076747 (= (matchR!8678 (regTwo!33502 r!7292) s!2326) (matchRSpec!3596 (regTwo!33502 r!7292) s!2326))))

(declare-fun lt!2418516 () Unit!159335)

(assert (=> d!2076747 (= lt!2418516 (choose!49511 (regTwo!33502 r!7292) s!2326))))

(assert (=> d!2076747 (validRegex!8231 (regTwo!33502 r!7292))))

(assert (=> d!2076747 (= (mainMatchTheorem!3596 (regTwo!33502 r!7292) s!2326) lt!2418516)))

(declare-fun bs!1700440 () Bool)

(assert (= bs!1700440 d!2076747))

(assert (=> bs!1700440 m!7395230))

(assert (=> bs!1700440 m!7395240))

(declare-fun m!7395800 () Bool)

(assert (=> bs!1700440 m!7395800))

(assert (=> bs!1700440 m!7395796))

(assert (=> b!6624680 d!2076747))

(declare-fun bs!1700441 () Bool)

(declare-fun d!2076749 () Bool)

(assert (= bs!1700441 (and d!2076749 d!2076651)))

(declare-fun lambda!370191 () Int)

(assert (=> bs!1700441 (= lambda!370191 lambda!370148)))

(declare-fun bs!1700442 () Bool)

(assert (= bs!1700442 (and d!2076749 d!2076623)))

(assert (=> bs!1700442 (= lambda!370191 lambda!370139)))

(declare-fun bs!1700443 () Bool)

(assert (= bs!1700443 (and d!2076749 d!2076639)))

(assert (=> bs!1700443 (= lambda!370191 lambda!370145)))

(declare-fun bs!1700444 () Bool)

(assert (= bs!1700444 (and d!2076749 d!2076633)))

(assert (=> bs!1700444 (= lambda!370191 lambda!370142)))

(declare-fun bs!1700445 () Bool)

(assert (= bs!1700445 (and d!2076749 d!2076695)))

(assert (=> bs!1700445 (= lambda!370191 lambda!370167)))

(assert (=> d!2076749 (= (inv!84484 (h!72110 zl!343)) (forall!15690 (exprs!6379 (h!72110 zl!343)) lambda!370191))))

(declare-fun bs!1700446 () Bool)

(assert (= bs!1700446 d!2076749))

(declare-fun m!7395806 () Bool)

(assert (=> bs!1700446 m!7395806))

(assert (=> b!6624701 d!2076749))

(declare-fun b!6625445 () Bool)

(declare-fun e!4007646 () Bool)

(declare-fun tp!1824798 () Bool)

(declare-fun tp!1824800 () Bool)

(assert (=> b!6625445 (= e!4007646 (and tp!1824798 tp!1824800))))

(declare-fun b!6625444 () Bool)

(declare-fun tp!1824801 () Bool)

(assert (=> b!6625444 (= e!4007646 tp!1824801)))

(assert (=> b!6624689 (= tp!1824782 e!4007646)))

(declare-fun b!6625442 () Bool)

(assert (=> b!6625442 (= e!4007646 tp_is_empty!42243)))

(declare-fun b!6625443 () Bool)

(declare-fun tp!1824799 () Bool)

(declare-fun tp!1824802 () Bool)

(assert (=> b!6625443 (= e!4007646 (and tp!1824799 tp!1824802))))

(assert (= (and b!6624689 ((_ is ElementMatch!16495) (regOne!33503 r!7292))) b!6625442))

(assert (= (and b!6624689 ((_ is Concat!25340) (regOne!33503 r!7292))) b!6625443))

(assert (= (and b!6624689 ((_ is Star!16495) (regOne!33503 r!7292))) b!6625444))

(assert (= (and b!6624689 ((_ is Union!16495) (regOne!33503 r!7292))) b!6625445))

(declare-fun b!6625449 () Bool)

(declare-fun e!4007647 () Bool)

(declare-fun tp!1824803 () Bool)

(declare-fun tp!1824805 () Bool)

(assert (=> b!6625449 (= e!4007647 (and tp!1824803 tp!1824805))))

(declare-fun b!6625448 () Bool)

(declare-fun tp!1824806 () Bool)

(assert (=> b!6625448 (= e!4007647 tp!1824806)))

(assert (=> b!6624689 (= tp!1824783 e!4007647)))

(declare-fun b!6625446 () Bool)

(assert (=> b!6625446 (= e!4007647 tp_is_empty!42243)))

(declare-fun b!6625447 () Bool)

(declare-fun tp!1824804 () Bool)

(declare-fun tp!1824807 () Bool)

(assert (=> b!6625447 (= e!4007647 (and tp!1824804 tp!1824807))))

(assert (= (and b!6624689 ((_ is ElementMatch!16495) (regTwo!33503 r!7292))) b!6625446))

(assert (= (and b!6624689 ((_ is Concat!25340) (regTwo!33503 r!7292))) b!6625447))

(assert (= (and b!6624689 ((_ is Star!16495) (regTwo!33503 r!7292))) b!6625448))

(assert (= (and b!6624689 ((_ is Union!16495) (regTwo!33503 r!7292))) b!6625449))

(declare-fun b!6625453 () Bool)

(declare-fun e!4007648 () Bool)

(declare-fun tp!1824808 () Bool)

(declare-fun tp!1824810 () Bool)

(assert (=> b!6625453 (= e!4007648 (and tp!1824808 tp!1824810))))

(declare-fun b!6625452 () Bool)

(declare-fun tp!1824811 () Bool)

(assert (=> b!6625452 (= e!4007648 tp!1824811)))

(assert (=> b!6624682 (= tp!1824779 e!4007648)))

(declare-fun b!6625450 () Bool)

(assert (=> b!6625450 (= e!4007648 tp_is_empty!42243)))

(declare-fun b!6625451 () Bool)

(declare-fun tp!1824809 () Bool)

(declare-fun tp!1824812 () Bool)

(assert (=> b!6625451 (= e!4007648 (and tp!1824809 tp!1824812))))

(assert (= (and b!6624682 ((_ is ElementMatch!16495) (reg!16824 r!7292))) b!6625450))

(assert (= (and b!6624682 ((_ is Concat!25340) (reg!16824 r!7292))) b!6625451))

(assert (= (and b!6624682 ((_ is Star!16495) (reg!16824 r!7292))) b!6625452))

(assert (= (and b!6624682 ((_ is Union!16495) (reg!16824 r!7292))) b!6625453))

(declare-fun b!6625457 () Bool)

(declare-fun e!4007649 () Bool)

(declare-fun tp!1824813 () Bool)

(declare-fun tp!1824815 () Bool)

(assert (=> b!6625457 (= e!4007649 (and tp!1824813 tp!1824815))))

(declare-fun b!6625456 () Bool)

(declare-fun tp!1824816 () Bool)

(assert (=> b!6625456 (= e!4007649 tp!1824816)))

(assert (=> b!6624693 (= tp!1824778 e!4007649)))

(declare-fun b!6625454 () Bool)

(assert (=> b!6625454 (= e!4007649 tp_is_empty!42243)))

(declare-fun b!6625455 () Bool)

(declare-fun tp!1824814 () Bool)

(declare-fun tp!1824817 () Bool)

(assert (=> b!6625455 (= e!4007649 (and tp!1824814 tp!1824817))))

(assert (= (and b!6624693 ((_ is ElementMatch!16495) (regOne!33502 r!7292))) b!6625454))

(assert (= (and b!6624693 ((_ is Concat!25340) (regOne!33502 r!7292))) b!6625455))

(assert (= (and b!6624693 ((_ is Star!16495) (regOne!33502 r!7292))) b!6625456))

(assert (= (and b!6624693 ((_ is Union!16495) (regOne!33502 r!7292))) b!6625457))

(declare-fun b!6625461 () Bool)

(declare-fun e!4007650 () Bool)

(declare-fun tp!1824818 () Bool)

(declare-fun tp!1824820 () Bool)

(assert (=> b!6625461 (= e!4007650 (and tp!1824818 tp!1824820))))

(declare-fun b!6625460 () Bool)

(declare-fun tp!1824821 () Bool)

(assert (=> b!6625460 (= e!4007650 tp!1824821)))

(assert (=> b!6624693 (= tp!1824785 e!4007650)))

(declare-fun b!6625458 () Bool)

(assert (=> b!6625458 (= e!4007650 tp_is_empty!42243)))

(declare-fun b!6625459 () Bool)

(declare-fun tp!1824819 () Bool)

(declare-fun tp!1824822 () Bool)

(assert (=> b!6625459 (= e!4007650 (and tp!1824819 tp!1824822))))

(assert (= (and b!6624693 ((_ is ElementMatch!16495) (regTwo!33502 r!7292))) b!6625458))

(assert (= (and b!6624693 ((_ is Concat!25340) (regTwo!33502 r!7292))) b!6625459))

(assert (= (and b!6624693 ((_ is Star!16495) (regTwo!33502 r!7292))) b!6625460))

(assert (= (and b!6624693 ((_ is Union!16495) (regTwo!33502 r!7292))) b!6625461))

(declare-fun b!6625466 () Bool)

(declare-fun e!4007653 () Bool)

(declare-fun tp!1824827 () Bool)

(declare-fun tp!1824828 () Bool)

(assert (=> b!6625466 (= e!4007653 (and tp!1824827 tp!1824828))))

(assert (=> b!6624708 (= tp!1824781 e!4007653)))

(assert (= (and b!6624708 ((_ is Cons!65660) (exprs!6379 setElem!45282))) b!6625466))

(declare-fun b!6625471 () Bool)

(declare-fun e!4007656 () Bool)

(declare-fun tp!1824831 () Bool)

(assert (=> b!6625471 (= e!4007656 (and tp_is_empty!42243 tp!1824831))))

(assert (=> b!6624690 (= tp!1824780 e!4007656)))

(assert (= (and b!6624690 ((_ is Cons!65661) (t!379445 s!2326))) b!6625471))

(declare-fun condSetEmpty!45285 () Bool)

(assert (=> setNonEmpty!45282 (= condSetEmpty!45285 (= setRest!45282 ((as const (Array Context!11758 Bool)) false)))))

(declare-fun setRes!45285 () Bool)

(assert (=> setNonEmpty!45282 (= tp!1824787 setRes!45285)))

(declare-fun setIsEmpty!45285 () Bool)

(assert (=> setIsEmpty!45285 setRes!45285))

(declare-fun setElem!45285 () Context!11758)

(declare-fun tp!1824836 () Bool)

(declare-fun e!4007659 () Bool)

(declare-fun setNonEmpty!45285 () Bool)

(assert (=> setNonEmpty!45285 (= setRes!45285 (and tp!1824836 (inv!84484 setElem!45285) e!4007659))))

(declare-fun setRest!45285 () (InoxSet Context!11758))

(assert (=> setNonEmpty!45285 (= setRest!45282 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) setElem!45285 true) setRest!45285))))

(declare-fun b!6625476 () Bool)

(declare-fun tp!1824837 () Bool)

(assert (=> b!6625476 (= e!4007659 tp!1824837)))

(assert (= (and setNonEmpty!45282 condSetEmpty!45285) setIsEmpty!45285))

(assert (= (and setNonEmpty!45282 (not condSetEmpty!45285)) setNonEmpty!45285))

(assert (= setNonEmpty!45285 b!6625476))

(declare-fun m!7395812 () Bool)

(assert (=> setNonEmpty!45285 m!7395812))

(declare-fun b!6625486 () Bool)

(declare-fun e!4007667 () Bool)

(declare-fun tp!1824838 () Bool)

(declare-fun tp!1824839 () Bool)

(assert (=> b!6625486 (= e!4007667 (and tp!1824838 tp!1824839))))

(assert (=> b!6624695 (= tp!1824784 e!4007667)))

(assert (= (and b!6624695 ((_ is Cons!65660) (exprs!6379 (h!72110 zl!343)))) b!6625486))

(declare-fun b!6625504 () Bool)

(declare-fun e!4007679 () Bool)

(declare-fun tp!1824844 () Bool)

(assert (=> b!6625504 (= e!4007679 tp!1824844)))

(declare-fun tp!1824845 () Bool)

(declare-fun e!4007678 () Bool)

(declare-fun b!6625503 () Bool)

(assert (=> b!6625503 (= e!4007678 (and (inv!84484 (h!72110 (t!379446 zl!343))) e!4007679 tp!1824845))))

(assert (=> b!6624701 (= tp!1824786 e!4007678)))

(assert (= b!6625503 b!6625504))

(assert (= (and b!6624701 ((_ is Cons!65662) (t!379446 zl!343))) b!6625503))

(declare-fun m!7395820 () Bool)

(assert (=> b!6625503 m!7395820))

(declare-fun b_lambda!250497 () Bool)

(assert (= b_lambda!250489 (or b!6624703 b_lambda!250497)))

(declare-fun bs!1700458 () Bool)

(declare-fun d!2076759 () Bool)

(assert (= bs!1700458 (and d!2076759 b!6624703)))

(assert (=> bs!1700458 (= (dynLambda!26151 lambda!370119 lt!2418404) (derivationStepZipperUp!1669 lt!2418404 (h!72109 s!2326)))))

(assert (=> bs!1700458 m!7395254))

(assert (=> d!2076581 d!2076759))

(declare-fun b_lambda!250499 () Bool)

(assert (= b_lambda!250493 (or b!6624703 b_lambda!250499)))

(declare-fun bs!1700459 () Bool)

(declare-fun d!2076761 () Bool)

(assert (= bs!1700459 (and d!2076761 b!6624703)))

(assert (=> bs!1700459 (= (dynLambda!26151 lambda!370119 (h!72110 zl!343)) (derivationStepZipperUp!1669 (h!72110 zl!343) (h!72109 s!2326)))))

(assert (=> bs!1700459 m!7395258))

(assert (=> d!2076677 d!2076761))

(check-sat (not d!2076615) (not d!2076577) (not b!6625459) (not b!6625452) (not b!6624974) (not bm!581015) (not b!6624909) (not d!2076713) (not b!6625486) (not bm!580997) (not b!6624906) (not bm!580977) (not d!2076659) (not d!2076675) (not d!2076681) (not b!6624910) (not b!6625321) (not bs!1700458) (not b!6625004) (not d!2076735) (not d!2076597) (not b!6625422) (not d!2076749) (not b!6625455) (not d!2076661) (not bs!1700459) (not b!6625443) (not b!6624966) (not bm!580978) (not b!6625037) (not b!6624965) (not b!6624905) (not d!2076581) (not b!6625008) (not bm!580958) (not d!2076609) (not b!6624908) (not b!6625015) (not b!6625329) (not d!2076665) (not b!6624922) (not bm!580971) (not b!6625425) (not b!6625042) (not b!6625476) (not b!6625014) (not b!6625147) (not b!6625009) (not d!2076677) (not bm!581008) (not b_lambda!250499) (not setNonEmpty!45285) (not b!6625012) (not b!6624904) (not b!6625457) (not b!6625344) (not d!2076741) (not d!2076623) (not b!6625010) (not d!2076653) (not b!6625150) (not b!6625328) (not b!6625381) (not b!6625424) (not d!2076605) (not b!6625093) (not d!2076655) (not b!6624963) (not b!6624907) (not b!6624848) (not bm!580994) (not d!2076729) (not b!6625330) (not b!6625347) (not b!6625034) (not d!2076679) (not b!6624962) (not b!6625152) (not b!6624802) (not b!6625388) (not b!6624969) (not d!2076709) (not b!6624964) (not d!2076639) (not b!6625146) (not b!6624960) (not b!6624903) (not b!6625426) (not bm!580974) (not b!6625007) (not b!6625378) (not bm!581016) (not b!6625386) (not b!6625451) (not b!6625448) (not b!6625154) (not b!6625414) (not b!6625348) (not d!2076613) (not bm!580973) (not b!6625149) (not b!6625471) (not b!6624884) (not b!6625395) (not bm!580937) (not b!6625137) (not d!2076731) (not b!6625456) (not bm!580947) (not b!6625445) (not d!2076633) (not b!6625095) (not d!2076651) (not b!6625447) (not d!2076649) (not bm!580957) (not b!6624804) (not b!6625318) (not d!2076663) (not bm!581000) tp_is_empty!42243 (not b!6625390) (not b!6625394) (not b!6625453) (not b!6625247) (not b!6625389) (not b!6625005) (not bm!581023) (not b!6625326) (not b!6625126) (not d!2076667) (not b!6625466) (not b!6625504) (not d!2076737) (not b!6625461) (not b!6625417) (not b!6625444) (not d!2076747) (not d!2076569) (not d!2076695) (not bm!580993) (not b!6625088) (not d!2076611) (not b!6625041) (not b!6625038) (not d!2076575) (not bm!580948) (not bm!581001) (not b_lambda!250497) (not b!6625449) (not b!6625039) (not b!6625503) (not b!6625248) (not d!2076591) (not b!6625151) (not b!6625460) (not b!6625090))
(check-sat)
(get-model)

(declare-fun d!2076767 () Bool)

(assert (=> d!2076767 (= (head!13432 s!2326) (h!72109 s!2326))))

(assert (=> b!6625318 d!2076767))

(declare-fun d!2076769 () Bool)

(declare-fun c!1221689 () Bool)

(assert (=> d!2076769 (= c!1221689 ((_ is Nil!65662) lt!2418431))))

(declare-fun e!4007705 () (InoxSet Context!11758))

(assert (=> d!2076769 (= (content!12675 lt!2418431) e!4007705)))

(declare-fun b!6625563 () Bool)

(assert (=> b!6625563 (= e!4007705 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625564 () Bool)

(assert (=> b!6625564 (= e!4007705 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) (h!72110 lt!2418431) true) (content!12675 (t!379446 lt!2418431))))))

(assert (= (and d!2076769 c!1221689) b!6625563))

(assert (= (and d!2076769 (not c!1221689)) b!6625564))

(declare-fun m!7395844 () Bool)

(assert (=> b!6625564 m!7395844))

(declare-fun m!7395846 () Bool)

(assert (=> b!6625564 m!7395846))

(assert (=> b!6624884 d!2076769))

(declare-fun d!2076771 () Bool)

(assert (=> d!2076771 (= (isEmpty!37954 (t!379445 s!2326)) ((_ is Nil!65661) (t!379445 s!2326)))))

(assert (=> d!2076649 d!2076771))

(declare-fun d!2076773 () Bool)

(assert (=> d!2076773 (= (isEmpty!37954 s!2326) ((_ is Nil!65661) s!2326))))

(assert (=> bm!580993 d!2076773))

(declare-fun d!2076775 () Bool)

(declare-fun lambda!370196 () Int)

(declare-fun exists!2662 ((InoxSet Context!11758) Int) Bool)

(assert (=> d!2076775 (= (nullableZipper!2235 lt!2418406) (exists!2662 lt!2418406 lambda!370196))))

(declare-fun bs!1700462 () Bool)

(assert (= bs!1700462 d!2076775))

(declare-fun m!7395848 () Bool)

(assert (=> bs!1700462 m!7395848))

(assert (=> b!6624903 d!2076775))

(declare-fun b!6625565 () Bool)

(declare-fun e!4007709 () Bool)

(assert (=> b!6625565 (= e!4007709 (nullable!6488 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun bm!581028 () Bool)

(declare-fun call!581034 () (InoxSet Context!11758))

(declare-fun call!581036 () (InoxSet Context!11758))

(assert (=> bm!581028 (= call!581034 call!581036)))

(declare-fun b!6625566 () Bool)

(declare-fun e!4007706 () (InoxSet Context!11758))

(declare-fun call!581032 () (InoxSet Context!11758))

(assert (=> b!6625566 (= e!4007706 ((_ map or) call!581036 call!581032))))

(declare-fun b!6625567 () Bool)

(declare-fun c!1221695 () Bool)

(assert (=> b!6625567 (= c!1221695 ((_ is Star!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun e!4007707 () (InoxSet Context!11758))

(declare-fun e!4007708 () (InoxSet Context!11758))

(assert (=> b!6625567 (= e!4007707 e!4007708)))

(declare-fun b!6625568 () Bool)

(declare-fun call!581035 () (InoxSet Context!11758))

(assert (=> b!6625568 (= e!4007707 call!581035)))

(declare-fun c!1221694 () Bool)

(declare-fun c!1221692 () Bool)

(declare-fun c!1221693 () Bool)

(declare-fun call!581033 () List!65784)

(declare-fun bm!581029 () Bool)

(assert (=> bm!581029 (= call!581036 (derivationStepZipperDown!1743 (ite c!1221692 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221694 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221693 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))) (ite (or c!1221692 c!1221694) (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (Context!11759 call!581033)) (h!72109 s!2326)))))

(declare-fun b!6625569 () Bool)

(assert (=> b!6625569 (= e!4007708 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625570 () Bool)

(declare-fun e!4007710 () (InoxSet Context!11758))

(assert (=> b!6625570 (= e!4007710 e!4007707)))

(assert (=> b!6625570 (= c!1221693 ((_ is Concat!25340) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bm!581030 () Bool)

(declare-fun call!581037 () List!65784)

(assert (=> bm!581030 (= call!581037 ($colon$colon!2331 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343))))) (ite (or c!1221694 c!1221693) (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72108 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625571 () Bool)

(assert (=> b!6625571 (= e!4007710 ((_ map or) call!581032 call!581034))))

(declare-fun b!6625572 () Bool)

(assert (=> b!6625572 (= e!4007708 call!581035)))

(declare-fun bm!581031 () Bool)

(assert (=> bm!581031 (= call!581035 call!581034)))

(declare-fun bm!581027 () Bool)

(assert (=> bm!581027 (= call!581032 (derivationStepZipperDown!1743 (ite c!1221692 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))) (ite c!1221692 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (Context!11759 call!581037)) (h!72109 s!2326)))))

(declare-fun d!2076777 () Bool)

(declare-fun c!1221696 () Bool)

(assert (=> d!2076777 (= c!1221696 (and ((_ is ElementMatch!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))) (= (c!1221458 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326))))))

(declare-fun e!4007711 () (InoxSet Context!11758))

(assert (=> d!2076777 (= (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (h!72110 zl!343))) (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326)) e!4007711)))

(declare-fun b!6625573 () Bool)

(assert (=> b!6625573 (= c!1221694 e!4007709)))

(declare-fun res!2716087 () Bool)

(assert (=> b!6625573 (=> (not res!2716087) (not e!4007709))))

(assert (=> b!6625573 (= res!2716087 ((_ is Concat!25340) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6625573 (= e!4007706 e!4007710)))

(declare-fun b!6625574 () Bool)

(assert (=> b!6625574 (= e!4007711 e!4007706)))

(assert (=> b!6625574 (= c!1221692 ((_ is Union!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun bm!581032 () Bool)

(assert (=> bm!581032 (= call!581033 call!581037)))

(declare-fun b!6625575 () Bool)

(assert (=> b!6625575 (= e!4007711 (store ((as const (Array Context!11758 Bool)) false) (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) true))))

(assert (= (and d!2076777 c!1221696) b!6625575))

(assert (= (and d!2076777 (not c!1221696)) b!6625574))

(assert (= (and b!6625574 c!1221692) b!6625566))

(assert (= (and b!6625574 (not c!1221692)) b!6625573))

(assert (= (and b!6625573 res!2716087) b!6625565))

(assert (= (and b!6625573 c!1221694) b!6625571))

(assert (= (and b!6625573 (not c!1221694)) b!6625570))

(assert (= (and b!6625570 c!1221693) b!6625568))

(assert (= (and b!6625570 (not c!1221693)) b!6625567))

(assert (= (and b!6625567 c!1221695) b!6625572))

(assert (= (and b!6625567 (not c!1221695)) b!6625569))

(assert (= (or b!6625568 b!6625572) bm!581032))

(assert (= (or b!6625568 b!6625572) bm!581031))

(assert (= (or b!6625571 bm!581032) bm!581030))

(assert (= (or b!6625571 bm!581031) bm!581028))

(assert (= (or b!6625566 b!6625571) bm!581027))

(assert (= (or b!6625566 bm!581028) bm!581029))

(declare-fun m!7395850 () Bool)

(assert (=> bm!581030 m!7395850))

(declare-fun m!7395852 () Bool)

(assert (=> bm!581029 m!7395852))

(assert (=> b!6625565 m!7395626))

(declare-fun m!7395854 () Bool)

(assert (=> b!6625575 m!7395854))

(declare-fun m!7395856 () Bool)

(assert (=> bm!581027 m!7395856))

(assert (=> bm!580958 d!2076777))

(declare-fun bs!1700463 () Bool)

(declare-fun d!2076779 () Bool)

(assert (= bs!1700463 (and d!2076779 d!2076651)))

(declare-fun lambda!370197 () Int)

(assert (=> bs!1700463 (= lambda!370197 lambda!370148)))

(declare-fun bs!1700464 () Bool)

(assert (= bs!1700464 (and d!2076779 d!2076749)))

(assert (=> bs!1700464 (= lambda!370197 lambda!370191)))

(declare-fun bs!1700465 () Bool)

(assert (= bs!1700465 (and d!2076779 d!2076623)))

(assert (=> bs!1700465 (= lambda!370197 lambda!370139)))

(declare-fun bs!1700466 () Bool)

(assert (= bs!1700466 (and d!2076779 d!2076639)))

(assert (=> bs!1700466 (= lambda!370197 lambda!370145)))

(declare-fun bs!1700467 () Bool)

(assert (= bs!1700467 (and d!2076779 d!2076633)))

(assert (=> bs!1700467 (= lambda!370197 lambda!370142)))

(declare-fun bs!1700468 () Bool)

(assert (= bs!1700468 (and d!2076779 d!2076695)))

(assert (=> bs!1700468 (= lambda!370197 lambda!370167)))

(declare-fun b!6625576 () Bool)

(declare-fun e!4007716 () Bool)

(declare-fun lt!2418521 () Regex!16495)

(assert (=> b!6625576 (= e!4007716 (isEmptyLang!1877 lt!2418521))))

(declare-fun b!6625577 () Bool)

(declare-fun e!4007713 () Regex!16495)

(assert (=> b!6625577 (= e!4007713 EmptyLang!16495)))

(declare-fun b!6625578 () Bool)

(declare-fun e!4007717 () Bool)

(assert (=> b!6625578 (= e!4007717 (= lt!2418521 (head!13433 (t!379444 (unfocusZipperList!1916 zl!343)))))))

(declare-fun b!6625579 () Bool)

(declare-fun e!4007715 () Bool)

(assert (=> b!6625579 (= e!4007715 e!4007716)))

(declare-fun c!1221697 () Bool)

(assert (=> b!6625579 (= c!1221697 (isEmpty!37952 (t!379444 (unfocusZipperList!1916 zl!343))))))

(declare-fun b!6625580 () Bool)

(assert (=> b!6625580 (= e!4007717 (isUnion!1307 lt!2418521))))

(declare-fun b!6625581 () Bool)

(declare-fun e!4007712 () Bool)

(assert (=> b!6625581 (= e!4007712 (isEmpty!37952 (t!379444 (t!379444 (unfocusZipperList!1916 zl!343)))))))

(declare-fun b!6625582 () Bool)

(assert (=> b!6625582 (= e!4007713 (Union!16495 (h!72108 (t!379444 (unfocusZipperList!1916 zl!343))) (generalisedUnion!2339 (t!379444 (t!379444 (unfocusZipperList!1916 zl!343))))))))

(declare-fun b!6625583 () Bool)

(declare-fun e!4007714 () Regex!16495)

(assert (=> b!6625583 (= e!4007714 (h!72108 (t!379444 (unfocusZipperList!1916 zl!343))))))

(assert (=> d!2076779 e!4007715))

(declare-fun res!2716088 () Bool)

(assert (=> d!2076779 (=> (not res!2716088) (not e!4007715))))

(assert (=> d!2076779 (= res!2716088 (validRegex!8231 lt!2418521))))

(assert (=> d!2076779 (= lt!2418521 e!4007714)))

(declare-fun c!1221698 () Bool)

(assert (=> d!2076779 (= c!1221698 e!4007712)))

(declare-fun res!2716089 () Bool)

(assert (=> d!2076779 (=> (not res!2716089) (not e!4007712))))

(assert (=> d!2076779 (= res!2716089 ((_ is Cons!65660) (t!379444 (unfocusZipperList!1916 zl!343))))))

(assert (=> d!2076779 (forall!15690 (t!379444 (unfocusZipperList!1916 zl!343)) lambda!370197)))

(assert (=> d!2076779 (= (generalisedUnion!2339 (t!379444 (unfocusZipperList!1916 zl!343))) lt!2418521)))

(declare-fun b!6625584 () Bool)

(assert (=> b!6625584 (= e!4007714 e!4007713)))

(declare-fun c!1221700 () Bool)

(assert (=> b!6625584 (= c!1221700 ((_ is Cons!65660) (t!379444 (unfocusZipperList!1916 zl!343))))))

(declare-fun b!6625585 () Bool)

(assert (=> b!6625585 (= e!4007716 e!4007717)))

(declare-fun c!1221699 () Bool)

(assert (=> b!6625585 (= c!1221699 (isEmpty!37952 (tail!12518 (t!379444 (unfocusZipperList!1916 zl!343)))))))

(assert (= (and d!2076779 res!2716089) b!6625581))

(assert (= (and d!2076779 c!1221698) b!6625583))

(assert (= (and d!2076779 (not c!1221698)) b!6625584))

(assert (= (and b!6625584 c!1221700) b!6625582))

(assert (= (and b!6625584 (not c!1221700)) b!6625577))

(assert (= (and d!2076779 res!2716088) b!6625579))

(assert (= (and b!6625579 c!1221697) b!6625576))

(assert (= (and b!6625579 (not c!1221697)) b!6625585))

(assert (= (and b!6625585 c!1221699) b!6625578))

(assert (= (and b!6625585 (not c!1221699)) b!6625580))

(declare-fun m!7395858 () Bool)

(assert (=> b!6625578 m!7395858))

(declare-fun m!7395860 () Bool)

(assert (=> b!6625585 m!7395860))

(assert (=> b!6625585 m!7395860))

(declare-fun m!7395862 () Bool)

(assert (=> b!6625585 m!7395862))

(declare-fun m!7395864 () Bool)

(assert (=> b!6625580 m!7395864))

(assert (=> b!6625579 m!7395470))

(declare-fun m!7395866 () Bool)

(assert (=> b!6625582 m!7395866))

(declare-fun m!7395868 () Bool)

(assert (=> b!6625581 m!7395868))

(declare-fun m!7395870 () Bool)

(assert (=> b!6625576 m!7395870))

(declare-fun m!7395872 () Bool)

(assert (=> d!2076779 m!7395872))

(declare-fun m!7395874 () Bool)

(assert (=> d!2076779 m!7395874))

(assert (=> b!6624966 d!2076779))

(declare-fun d!2076781 () Bool)

(declare-fun res!2716094 () Bool)

(declare-fun e!4007719 () Bool)

(assert (=> d!2076781 (=> res!2716094 e!4007719)))

(assert (=> d!2076781 (= res!2716094 ((_ is ElementMatch!16495) (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))

(assert (=> d!2076781 (= (validRegex!8231 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))) e!4007719)))

(declare-fun b!6625586 () Bool)

(declare-fun e!4007724 () Bool)

(declare-fun e!4007720 () Bool)

(assert (=> b!6625586 (= e!4007724 e!4007720)))

(declare-fun res!2716093 () Bool)

(assert (=> b!6625586 (= res!2716093 (not (nullable!6488 (reg!16824 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))))

(assert (=> b!6625586 (=> (not res!2716093) (not e!4007720))))

(declare-fun bm!581033 () Bool)

(declare-fun call!581039 () Bool)

(declare-fun c!1221702 () Bool)

(declare-fun c!1221701 () Bool)

(assert (=> bm!581033 (= call!581039 (validRegex!8231 (ite c!1221702 (reg!16824 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))) (ite c!1221701 (regOne!33503 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))) (regOne!33502 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292))))))))))

(declare-fun b!6625587 () Bool)

(declare-fun res!2716092 () Bool)

(declare-fun e!4007721 () Bool)

(assert (=> b!6625587 (=> res!2716092 e!4007721)))

(assert (=> b!6625587 (= res!2716092 (not ((_ is Concat!25340) (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292))))))))

(declare-fun e!4007722 () Bool)

(assert (=> b!6625587 (= e!4007722 e!4007721)))

(declare-fun b!6625588 () Bool)

(assert (=> b!6625588 (= e!4007724 e!4007722)))

(assert (=> b!6625588 (= c!1221701 ((_ is Union!16495) (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))

(declare-fun b!6625589 () Bool)

(assert (=> b!6625589 (= e!4007720 call!581039)))

(declare-fun b!6625590 () Bool)

(assert (=> b!6625590 (= e!4007719 e!4007724)))

(assert (=> b!6625590 (= c!1221702 ((_ is Star!16495) (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))

(declare-fun b!6625591 () Bool)

(declare-fun e!4007718 () Bool)

(declare-fun call!581038 () Bool)

(assert (=> b!6625591 (= e!4007718 call!581038)))

(declare-fun b!6625592 () Bool)

(assert (=> b!6625592 (= e!4007721 e!4007718)))

(declare-fun res!2716090 () Bool)

(assert (=> b!6625592 (=> (not res!2716090) (not e!4007718))))

(declare-fun call!581040 () Bool)

(assert (=> b!6625592 (= res!2716090 call!581040)))

(declare-fun bm!581034 () Bool)

(assert (=> bm!581034 (= call!581038 (validRegex!8231 (ite c!1221701 (regTwo!33503 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))) (regTwo!33502 (ite c!1221497 (reg!16824 r!7292) (ite c!1221496 (regOne!33503 r!7292) (regOne!33502 r!7292)))))))))

(declare-fun b!6625593 () Bool)

(declare-fun e!4007723 () Bool)

(assert (=> b!6625593 (= e!4007723 call!581038)))

(declare-fun b!6625594 () Bool)

(declare-fun res!2716091 () Bool)

(assert (=> b!6625594 (=> (not res!2716091) (not e!4007723))))

(assert (=> b!6625594 (= res!2716091 call!581040)))

(assert (=> b!6625594 (= e!4007722 e!4007723)))

(declare-fun bm!581035 () Bool)

(assert (=> bm!581035 (= call!581040 call!581039)))

(assert (= (and d!2076781 (not res!2716094)) b!6625590))

(assert (= (and b!6625590 c!1221702) b!6625586))

(assert (= (and b!6625590 (not c!1221702)) b!6625588))

(assert (= (and b!6625586 res!2716093) b!6625589))

(assert (= (and b!6625588 c!1221701) b!6625594))

(assert (= (and b!6625588 (not c!1221701)) b!6625587))

(assert (= (and b!6625594 res!2716091) b!6625593))

(assert (= (and b!6625587 (not res!2716092)) b!6625592))

(assert (= (and b!6625592 res!2716090) b!6625591))

(assert (= (or b!6625593 b!6625591) bm!581034))

(assert (= (or b!6625594 b!6625592) bm!581035))

(assert (= (or b!6625589 bm!581035) bm!581033))

(declare-fun m!7395876 () Bool)

(assert (=> b!6625586 m!7395876))

(declare-fun m!7395878 () Bool)

(assert (=> bm!581033 m!7395878))

(declare-fun m!7395880 () Bool)

(assert (=> bm!581034 m!7395880))

(assert (=> bm!580947 d!2076781))

(declare-fun d!2076783 () Bool)

(assert (=> d!2076783 (= (nullable!6488 r!7292) (nullableFct!2409 r!7292))))

(declare-fun bs!1700469 () Bool)

(assert (= bs!1700469 d!2076783))

(declare-fun m!7395882 () Bool)

(assert (=> bs!1700469 m!7395882))

(assert (=> b!6625321 d!2076783))

(assert (=> bm!581008 d!2076773))

(declare-fun d!2076785 () Bool)

(declare-fun c!1221703 () Bool)

(assert (=> d!2076785 (= c!1221703 (isEmpty!37954 (tail!12517 (t!379445 s!2326))))))

(declare-fun e!4007725 () Bool)

(assert (=> d!2076785 (= (matchZipper!2507 (derivationStepZipper!2461 ((_ map or) lt!2418406 lt!2418394) (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))) e!4007725)))

(declare-fun b!6625595 () Bool)

(assert (=> b!6625595 (= e!4007725 (nullableZipper!2235 (derivationStepZipper!2461 ((_ map or) lt!2418406 lt!2418394) (head!13432 (t!379445 s!2326)))))))

(declare-fun b!6625596 () Bool)

(assert (=> b!6625596 (= e!4007725 (matchZipper!2507 (derivationStepZipper!2461 (derivationStepZipper!2461 ((_ map or) lt!2418406 lt!2418394) (head!13432 (t!379445 s!2326))) (head!13432 (tail!12517 (t!379445 s!2326)))) (tail!12517 (tail!12517 (t!379445 s!2326)))))))

(assert (= (and d!2076785 c!1221703) b!6625595))

(assert (= (and d!2076785 (not c!1221703)) b!6625596))

(assert (=> d!2076785 m!7395390))

(declare-fun m!7395884 () Bool)

(assert (=> d!2076785 m!7395884))

(assert (=> b!6625595 m!7395526))

(declare-fun m!7395886 () Bool)

(assert (=> b!6625595 m!7395886))

(assert (=> b!6625596 m!7395390))

(declare-fun m!7395888 () Bool)

(assert (=> b!6625596 m!7395888))

(assert (=> b!6625596 m!7395526))

(assert (=> b!6625596 m!7395888))

(declare-fun m!7395890 () Bool)

(assert (=> b!6625596 m!7395890))

(assert (=> b!6625596 m!7395390))

(declare-fun m!7395892 () Bool)

(assert (=> b!6625596 m!7395892))

(assert (=> b!6625596 m!7395890))

(assert (=> b!6625596 m!7395892))

(declare-fun m!7395894 () Bool)

(assert (=> b!6625596 m!7395894))

(assert (=> b!6625015 d!2076785))

(declare-fun bs!1700470 () Bool)

(declare-fun d!2076787 () Bool)

(assert (= bs!1700470 (and d!2076787 b!6624703)))

(declare-fun lambda!370198 () Int)

(assert (=> bs!1700470 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370198 lambda!370119))))

(declare-fun bs!1700471 () Bool)

(assert (= bs!1700471 (and d!2076787 d!2076575)))

(assert (=> bs!1700471 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370198 lambda!370128))))

(declare-fun bs!1700472 () Bool)

(assert (= bs!1700472 (and d!2076787 d!2076731)))

(assert (=> bs!1700472 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370198 lambda!370186))))

(assert (=> d!2076787 true))

(assert (=> d!2076787 (= (derivationStepZipper!2461 ((_ map or) lt!2418406 lt!2418394) (head!13432 (t!379445 s!2326))) (flatMap!2000 ((_ map or) lt!2418406 lt!2418394) lambda!370198))))

(declare-fun bs!1700473 () Bool)

(assert (= bs!1700473 d!2076787))

(declare-fun m!7395896 () Bool)

(assert (=> bs!1700473 m!7395896))

(assert (=> b!6625015 d!2076787))

(declare-fun d!2076789 () Bool)

(assert (=> d!2076789 (= (head!13432 (t!379445 s!2326)) (h!72109 (t!379445 s!2326)))))

(assert (=> b!6625015 d!2076789))

(declare-fun d!2076791 () Bool)

(assert (=> d!2076791 (= (tail!12517 (t!379445 s!2326)) (t!379445 (t!379445 s!2326)))))

(assert (=> b!6625015 d!2076791))

(declare-fun d!2076793 () Bool)

(assert (=> d!2076793 (= (isEmpty!37955 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326)) (not ((_ is Some!16385) (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326))))))

(assert (=> d!2076675 d!2076793))

(assert (=> d!2076605 d!2076597))

(declare-fun d!2076795 () Bool)

(assert (=> d!2076795 (not (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(assert (=> d!2076795 true))

(declare-fun _$64!787 () Unit!159335)

(assert (=> d!2076795 (= (choose!49498 lt!2418406 (t!379445 s!2326)) _$64!787)))

(declare-fun bs!1700474 () Bool)

(assert (= bs!1700474 d!2076795))

(assert (=> bs!1700474 m!7395216))

(assert (=> d!2076605 d!2076795))

(declare-fun d!2076797 () Bool)

(assert (=> d!2076797 (= (flatMap!2000 z!1189 lambda!370186) (choose!49495 z!1189 lambda!370186))))

(declare-fun bs!1700475 () Bool)

(assert (= bs!1700475 d!2076797))

(declare-fun m!7395898 () Bool)

(assert (=> bs!1700475 m!7395898))

(assert (=> d!2076731 d!2076797))

(declare-fun d!2076799 () Bool)

(assert (=> d!2076799 (= (isEmpty!37952 (tail!12518 (t!379444 (exprs!6379 (h!72110 zl!343))))) ((_ is Nil!65660) (tail!12518 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(assert (=> b!6625149 d!2076799))

(declare-fun d!2076801 () Bool)

(assert (=> d!2076801 (= (tail!12518 (t!379444 (exprs!6379 (h!72110 zl!343)))) (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6625149 d!2076801))

(declare-fun d!2076803 () Bool)

(assert (=> d!2076803 (= (Exists!3565 lambda!370151) (choose!49501 lambda!370151))))

(declare-fun bs!1700476 () Bool)

(assert (= bs!1700476 d!2076803))

(declare-fun m!7395900 () Bool)

(assert (=> bs!1700476 m!7395900))

(assert (=> d!2076665 d!2076803))

(assert (=> d!2076665 d!2076659))

(declare-fun d!2076805 () Bool)

(declare-fun res!2716099 () Bool)

(declare-fun e!4007727 () Bool)

(assert (=> d!2076805 (=> res!2716099 e!4007727)))

(assert (=> d!2076805 (= res!2716099 ((_ is ElementMatch!16495) (regOne!33502 r!7292)))))

(assert (=> d!2076805 (= (validRegex!8231 (regOne!33502 r!7292)) e!4007727)))

(declare-fun b!6625597 () Bool)

(declare-fun e!4007732 () Bool)

(declare-fun e!4007728 () Bool)

(assert (=> b!6625597 (= e!4007732 e!4007728)))

(declare-fun res!2716098 () Bool)

(assert (=> b!6625597 (= res!2716098 (not (nullable!6488 (reg!16824 (regOne!33502 r!7292)))))))

(assert (=> b!6625597 (=> (not res!2716098) (not e!4007728))))

(declare-fun c!1221705 () Bool)

(declare-fun bm!581036 () Bool)

(declare-fun call!581042 () Bool)

(declare-fun c!1221704 () Bool)

(assert (=> bm!581036 (= call!581042 (validRegex!8231 (ite c!1221705 (reg!16824 (regOne!33502 r!7292)) (ite c!1221704 (regOne!33503 (regOne!33502 r!7292)) (regOne!33502 (regOne!33502 r!7292))))))))

(declare-fun b!6625598 () Bool)

(declare-fun res!2716097 () Bool)

(declare-fun e!4007729 () Bool)

(assert (=> b!6625598 (=> res!2716097 e!4007729)))

(assert (=> b!6625598 (= res!2716097 (not ((_ is Concat!25340) (regOne!33502 r!7292))))))

(declare-fun e!4007730 () Bool)

(assert (=> b!6625598 (= e!4007730 e!4007729)))

(declare-fun b!6625599 () Bool)

(assert (=> b!6625599 (= e!4007732 e!4007730)))

(assert (=> b!6625599 (= c!1221704 ((_ is Union!16495) (regOne!33502 r!7292)))))

(declare-fun b!6625600 () Bool)

(assert (=> b!6625600 (= e!4007728 call!581042)))

(declare-fun b!6625601 () Bool)

(assert (=> b!6625601 (= e!4007727 e!4007732)))

(assert (=> b!6625601 (= c!1221705 ((_ is Star!16495) (regOne!33502 r!7292)))))

(declare-fun b!6625602 () Bool)

(declare-fun e!4007726 () Bool)

(declare-fun call!581041 () Bool)

(assert (=> b!6625602 (= e!4007726 call!581041)))

(declare-fun b!6625603 () Bool)

(assert (=> b!6625603 (= e!4007729 e!4007726)))

(declare-fun res!2716095 () Bool)

(assert (=> b!6625603 (=> (not res!2716095) (not e!4007726))))

(declare-fun call!581043 () Bool)

(assert (=> b!6625603 (= res!2716095 call!581043)))

(declare-fun bm!581037 () Bool)

(assert (=> bm!581037 (= call!581041 (validRegex!8231 (ite c!1221704 (regTwo!33503 (regOne!33502 r!7292)) (regTwo!33502 (regOne!33502 r!7292)))))))

(declare-fun b!6625604 () Bool)

(declare-fun e!4007731 () Bool)

(assert (=> b!6625604 (= e!4007731 call!581041)))

(declare-fun b!6625605 () Bool)

(declare-fun res!2716096 () Bool)

(assert (=> b!6625605 (=> (not res!2716096) (not e!4007731))))

(assert (=> b!6625605 (= res!2716096 call!581043)))

(assert (=> b!6625605 (= e!4007730 e!4007731)))

(declare-fun bm!581038 () Bool)

(assert (=> bm!581038 (= call!581043 call!581042)))

(assert (= (and d!2076805 (not res!2716099)) b!6625601))

(assert (= (and b!6625601 c!1221705) b!6625597))

(assert (= (and b!6625601 (not c!1221705)) b!6625599))

(assert (= (and b!6625597 res!2716098) b!6625600))

(assert (= (and b!6625599 c!1221704) b!6625605))

(assert (= (and b!6625599 (not c!1221704)) b!6625598))

(assert (= (and b!6625605 res!2716096) b!6625604))

(assert (= (and b!6625598 (not res!2716097)) b!6625603))

(assert (= (and b!6625603 res!2716095) b!6625602))

(assert (= (or b!6625604 b!6625602) bm!581037))

(assert (= (or b!6625605 b!6625603) bm!581038))

(assert (= (or b!6625600 bm!581038) bm!581036))

(declare-fun m!7395902 () Bool)

(assert (=> b!6625597 m!7395902))

(declare-fun m!7395904 () Bool)

(assert (=> bm!581036 m!7395904))

(declare-fun m!7395906 () Bool)

(assert (=> bm!581037 m!7395906))

(assert (=> d!2076665 d!2076805))

(assert (=> d!2076665 d!2076675))

(declare-fun bs!1700477 () Bool)

(declare-fun d!2076807 () Bool)

(assert (= bs!1700477 (and d!2076807 d!2076667)))

(declare-fun lambda!370201 () Int)

(assert (=> bs!1700477 (= lambda!370201 lambda!370156)))

(declare-fun bs!1700478 () Bool)

(assert (= bs!1700478 (and d!2076807 b!6625352)))

(assert (=> bs!1700478 (not (= lambda!370201 lambda!370187))))

(declare-fun bs!1700479 () Bool)

(assert (= bs!1700479 (and d!2076807 b!6624705)))

(assert (=> bs!1700479 (not (= lambda!370201 lambda!370118))))

(declare-fun bs!1700480 () Bool)

(assert (= bs!1700480 (and d!2076807 b!6625252)))

(assert (=> bs!1700480 (not (= lambda!370201 lambda!370175))))

(declare-fun bs!1700481 () Bool)

(assert (= bs!1700481 (and d!2076807 b!6625251)))

(assert (=> bs!1700481 (not (= lambda!370201 lambda!370179))))

(assert (=> bs!1700477 (not (= lambda!370201 lambda!370159))))

(assert (=> bs!1700479 (= lambda!370201 lambda!370117)))

(declare-fun bs!1700482 () Bool)

(assert (= bs!1700482 (and d!2076807 b!6625398)))

(assert (=> bs!1700482 (not (= lambda!370201 lambda!370190))))

(declare-fun bs!1700483 () Bool)

(assert (= bs!1700483 (and d!2076807 b!6625351)))

(assert (=> bs!1700483 (not (= lambda!370201 lambda!370188))))

(declare-fun bs!1700484 () Bool)

(assert (= bs!1700484 (and d!2076807 d!2076665)))

(assert (=> bs!1700484 (= lambda!370201 lambda!370151)))

(declare-fun bs!1700485 () Bool)

(assert (= bs!1700485 (and d!2076807 b!6625399)))

(assert (=> bs!1700485 (not (= lambda!370201 lambda!370189))))

(assert (=> d!2076807 true))

(assert (=> d!2076807 true))

(assert (=> d!2076807 true))

(assert (=> d!2076807 (= (isDefined!13089 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) Nil!65661 s!2326 s!2326)) (Exists!3565 lambda!370201))))

(assert (=> d!2076807 true))

(declare-fun _$89!2836 () Unit!159335)

(assert (=> d!2076807 (= (choose!49502 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326) _$89!2836)))

(declare-fun bs!1700486 () Bool)

(assert (= bs!1700486 d!2076807))

(assert (=> bs!1700486 m!7395288))

(assert (=> bs!1700486 m!7395288))

(assert (=> bs!1700486 m!7395290))

(declare-fun m!7395908 () Bool)

(assert (=> bs!1700486 m!7395908))

(assert (=> d!2076665 d!2076807))

(assert (=> bm!581000 d!2076773))

(declare-fun b!6625610 () Bool)

(declare-fun e!4007736 () Bool)

(assert (=> b!6625610 (= e!4007736 (= (head!13432 (_1!36777 (get!22823 lt!2418470))) (c!1221458 (regOne!33502 r!7292))))))

(declare-fun b!6625611 () Bool)

(declare-fun res!2716110 () Bool)

(assert (=> b!6625611 (=> (not res!2716110) (not e!4007736))))

(declare-fun call!581044 () Bool)

(assert (=> b!6625611 (= res!2716110 (not call!581044))))

(declare-fun b!6625612 () Bool)

(declare-fun res!2716109 () Bool)

(declare-fun e!4007735 () Bool)

(assert (=> b!6625612 (=> res!2716109 e!4007735)))

(assert (=> b!6625612 (= res!2716109 e!4007736)))

(declare-fun res!2716108 () Bool)

(assert (=> b!6625612 (=> (not res!2716108) (not e!4007736))))

(declare-fun lt!2418522 () Bool)

(assert (=> b!6625612 (= res!2716108 lt!2418522)))

(declare-fun bm!581039 () Bool)

(assert (=> bm!581039 (= call!581044 (isEmpty!37954 (_1!36777 (get!22823 lt!2418470))))))

(declare-fun b!6625613 () Bool)

(declare-fun e!4007740 () Bool)

(assert (=> b!6625613 (= e!4007740 (nullable!6488 (regOne!33502 r!7292)))))

(declare-fun b!6625614 () Bool)

(declare-fun e!4007741 () Bool)

(assert (=> b!6625614 (= e!4007741 (= lt!2418522 call!581044))))

(declare-fun b!6625615 () Bool)

(declare-fun e!4007738 () Bool)

(assert (=> b!6625615 (= e!4007738 (not lt!2418522))))

(declare-fun b!6625617 () Bool)

(assert (=> b!6625617 (= e!4007741 e!4007738)))

(declare-fun c!1221707 () Bool)

(assert (=> b!6625617 (= c!1221707 ((_ is EmptyLang!16495) (regOne!33502 r!7292)))))

(declare-fun b!6625618 () Bool)

(declare-fun e!4007739 () Bool)

(assert (=> b!6625618 (= e!4007739 (not (= (head!13432 (_1!36777 (get!22823 lt!2418470))) (c!1221458 (regOne!33502 r!7292)))))))

(declare-fun b!6625619 () Bool)

(declare-fun res!2716107 () Bool)

(assert (=> b!6625619 (=> res!2716107 e!4007735)))

(assert (=> b!6625619 (= res!2716107 (not ((_ is ElementMatch!16495) (regOne!33502 r!7292))))))

(assert (=> b!6625619 (= e!4007738 e!4007735)))

(declare-fun b!6625616 () Bool)

(declare-fun e!4007737 () Bool)

(assert (=> b!6625616 (= e!4007737 e!4007739)))

(declare-fun res!2716111 () Bool)

(assert (=> b!6625616 (=> res!2716111 e!4007739)))

(assert (=> b!6625616 (= res!2716111 call!581044)))

(declare-fun d!2076809 () Bool)

(assert (=> d!2076809 e!4007741))

(declare-fun c!1221708 () Bool)

(assert (=> d!2076809 (= c!1221708 ((_ is EmptyExpr!16495) (regOne!33502 r!7292)))))

(assert (=> d!2076809 (= lt!2418522 e!4007740)))

(declare-fun c!1221706 () Bool)

(assert (=> d!2076809 (= c!1221706 (isEmpty!37954 (_1!36777 (get!22823 lt!2418470))))))

(assert (=> d!2076809 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076809 (= (matchR!8678 (regOne!33502 r!7292) (_1!36777 (get!22823 lt!2418470))) lt!2418522)))

(declare-fun b!6625620 () Bool)

(assert (=> b!6625620 (= e!4007740 (matchR!8678 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 (_1!36777 (get!22823 lt!2418470)))) (tail!12517 (_1!36777 (get!22823 lt!2418470)))))))

(declare-fun b!6625621 () Bool)

(declare-fun res!2716106 () Bool)

(assert (=> b!6625621 (=> (not res!2716106) (not e!4007736))))

(assert (=> b!6625621 (= res!2716106 (isEmpty!37954 (tail!12517 (_1!36777 (get!22823 lt!2418470)))))))

(declare-fun b!6625622 () Bool)

(declare-fun res!2716104 () Bool)

(assert (=> b!6625622 (=> res!2716104 e!4007739)))

(assert (=> b!6625622 (= res!2716104 (not (isEmpty!37954 (tail!12517 (_1!36777 (get!22823 lt!2418470))))))))

(declare-fun b!6625623 () Bool)

(assert (=> b!6625623 (= e!4007735 e!4007737)))

(declare-fun res!2716105 () Bool)

(assert (=> b!6625623 (=> (not res!2716105) (not e!4007737))))

(assert (=> b!6625623 (= res!2716105 (not lt!2418522))))

(assert (= (and d!2076809 c!1221706) b!6625613))

(assert (= (and d!2076809 (not c!1221706)) b!6625620))

(assert (= (and d!2076809 c!1221708) b!6625614))

(assert (= (and d!2076809 (not c!1221708)) b!6625617))

(assert (= (and b!6625617 c!1221707) b!6625615))

(assert (= (and b!6625617 (not c!1221707)) b!6625619))

(assert (= (and b!6625619 (not res!2716107)) b!6625612))

(assert (= (and b!6625612 res!2716108) b!6625611))

(assert (= (and b!6625611 res!2716110) b!6625621))

(assert (= (and b!6625621 res!2716106) b!6625610))

(assert (= (and b!6625612 (not res!2716109)) b!6625623))

(assert (= (and b!6625623 res!2716105) b!6625616))

(assert (= (and b!6625616 (not res!2716111)) b!6625622))

(assert (= (and b!6625622 (not res!2716104)) b!6625618))

(assert (= (or b!6625614 b!6625611 b!6625616) bm!581039))

(declare-fun m!7395910 () Bool)

(assert (=> b!6625618 m!7395910))

(assert (=> b!6625613 m!7395764))

(assert (=> b!6625620 m!7395910))

(assert (=> b!6625620 m!7395910))

(declare-fun m!7395912 () Bool)

(assert (=> b!6625620 m!7395912))

(declare-fun m!7395914 () Bool)

(assert (=> b!6625620 m!7395914))

(assert (=> b!6625620 m!7395912))

(assert (=> b!6625620 m!7395914))

(declare-fun m!7395916 () Bool)

(assert (=> b!6625620 m!7395916))

(assert (=> b!6625622 m!7395914))

(assert (=> b!6625622 m!7395914))

(declare-fun m!7395918 () Bool)

(assert (=> b!6625622 m!7395918))

(assert (=> b!6625610 m!7395910))

(declare-fun m!7395920 () Bool)

(assert (=> bm!581039 m!7395920))

(assert (=> b!6625621 m!7395914))

(assert (=> b!6625621 m!7395914))

(assert (=> b!6625621 m!7395918))

(assert (=> d!2076809 m!7395920))

(assert (=> d!2076809 m!7395552))

(assert (=> b!6625037 d!2076809))

(declare-fun d!2076811 () Bool)

(assert (=> d!2076811 (= (get!22823 lt!2418470) (v!52576 lt!2418470))))

(assert (=> b!6625037 d!2076811))

(declare-fun d!2076813 () Bool)

(declare-fun res!2716116 () Bool)

(declare-fun e!4007746 () Bool)

(assert (=> d!2076813 (=> res!2716116 e!4007746)))

(assert (=> d!2076813 (= res!2716116 ((_ is Nil!65660) (exprs!6379 setElem!45282)))))

(assert (=> d!2076813 (= (forall!15690 (exprs!6379 setElem!45282) lambda!370148) e!4007746)))

(declare-fun b!6625628 () Bool)

(declare-fun e!4007747 () Bool)

(assert (=> b!6625628 (= e!4007746 e!4007747)))

(declare-fun res!2716117 () Bool)

(assert (=> b!6625628 (=> (not res!2716117) (not e!4007747))))

(declare-fun dynLambda!26153 (Int Regex!16495) Bool)

(assert (=> b!6625628 (= res!2716117 (dynLambda!26153 lambda!370148 (h!72108 (exprs!6379 setElem!45282))))))

(declare-fun b!6625629 () Bool)

(assert (=> b!6625629 (= e!4007747 (forall!15690 (t!379444 (exprs!6379 setElem!45282)) lambda!370148))))

(assert (= (and d!2076813 (not res!2716116)) b!6625628))

(assert (= (and b!6625628 res!2716117) b!6625629))

(declare-fun b_lambda!250505 () Bool)

(assert (=> (not b_lambda!250505) (not b!6625628)))

(declare-fun m!7395922 () Bool)

(assert (=> b!6625628 m!7395922))

(declare-fun m!7395924 () Bool)

(assert (=> b!6625629 m!7395924))

(assert (=> d!2076651 d!2076813))

(declare-fun bs!1700487 () Bool)

(declare-fun b!6625637 () Bool)

(assert (= bs!1700487 (and b!6625637 d!2076807)))

(declare-fun lambda!370202 () Int)

(assert (=> bs!1700487 (not (= lambda!370202 lambda!370201))))

(declare-fun bs!1700488 () Bool)

(assert (= bs!1700488 (and b!6625637 d!2076667)))

(assert (=> bs!1700488 (not (= lambda!370202 lambda!370156))))

(declare-fun bs!1700489 () Bool)

(assert (= bs!1700489 (and b!6625637 b!6625352)))

(assert (=> bs!1700489 (= (and (= (reg!16824 (regOne!33503 (regTwo!33502 r!7292))) (reg!16824 (regOne!33502 r!7292))) (= (regOne!33503 (regTwo!33502 r!7292)) (regOne!33502 r!7292))) (= lambda!370202 lambda!370187))))

(declare-fun bs!1700490 () Bool)

(assert (= bs!1700490 (and b!6625637 b!6624705)))

(assert (=> bs!1700490 (not (= lambda!370202 lambda!370118))))

(declare-fun bs!1700491 () Bool)

(assert (= bs!1700491 (and b!6625637 b!6625252)))

(assert (=> bs!1700491 (= (and (= (reg!16824 (regOne!33503 (regTwo!33502 r!7292))) (reg!16824 r!7292)) (= (regOne!33503 (regTwo!33502 r!7292)) r!7292)) (= lambda!370202 lambda!370175))))

(declare-fun bs!1700492 () Bool)

(assert (= bs!1700492 (and b!6625637 b!6625251)))

(assert (=> bs!1700492 (not (= lambda!370202 lambda!370179))))

(assert (=> bs!1700488 (not (= lambda!370202 lambda!370159))))

(assert (=> bs!1700490 (not (= lambda!370202 lambda!370117))))

(declare-fun bs!1700493 () Bool)

(assert (= bs!1700493 (and b!6625637 b!6625398)))

(assert (=> bs!1700493 (not (= lambda!370202 lambda!370190))))

(declare-fun bs!1700494 () Bool)

(assert (= bs!1700494 (and b!6625637 b!6625351)))

(assert (=> bs!1700494 (not (= lambda!370202 lambda!370188))))

(declare-fun bs!1700495 () Bool)

(assert (= bs!1700495 (and b!6625637 d!2076665)))

(assert (=> bs!1700495 (not (= lambda!370202 lambda!370151))))

(declare-fun bs!1700496 () Bool)

(assert (= bs!1700496 (and b!6625637 b!6625399)))

(assert (=> bs!1700496 (= (and (= (reg!16824 (regOne!33503 (regTwo!33502 r!7292))) (reg!16824 (regTwo!33502 r!7292))) (= (regOne!33503 (regTwo!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370202 lambda!370189))))

(assert (=> b!6625637 true))

(assert (=> b!6625637 true))

(declare-fun bs!1700497 () Bool)

(declare-fun b!6625636 () Bool)

(assert (= bs!1700497 (and b!6625636 d!2076807)))

(declare-fun lambda!370203 () Int)

(assert (=> bs!1700497 (not (= lambda!370203 lambda!370201))))

(declare-fun bs!1700498 () Bool)

(assert (= bs!1700498 (and b!6625636 b!6625637)))

(assert (=> bs!1700498 (not (= lambda!370203 lambda!370202))))

(declare-fun bs!1700499 () Bool)

(assert (= bs!1700499 (and b!6625636 d!2076667)))

(assert (=> bs!1700499 (not (= lambda!370203 lambda!370156))))

(declare-fun bs!1700500 () Bool)

(assert (= bs!1700500 (and b!6625636 b!6625352)))

(assert (=> bs!1700500 (not (= lambda!370203 lambda!370187))))

(declare-fun bs!1700501 () Bool)

(assert (= bs!1700501 (and b!6625636 b!6624705)))

(assert (=> bs!1700501 (= (and (= (regOne!33502 (regOne!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370203 lambda!370118))))

(declare-fun bs!1700502 () Bool)

(assert (= bs!1700502 (and b!6625636 b!6625252)))

(assert (=> bs!1700502 (not (= lambda!370203 lambda!370175))))

(declare-fun bs!1700503 () Bool)

(assert (= bs!1700503 (and b!6625636 b!6625251)))

(assert (=> bs!1700503 (= (and (= (regOne!33502 (regOne!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370203 lambda!370179))))

(assert (=> bs!1700499 (= (and (= (regOne!33502 (regOne!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370203 lambda!370159))))

(assert (=> bs!1700501 (not (= lambda!370203 lambda!370117))))

(declare-fun bs!1700504 () Bool)

(assert (= bs!1700504 (and b!6625636 b!6625398)))

(assert (=> bs!1700504 (= (and (= (regOne!33502 (regOne!33503 (regTwo!33502 r!7292))) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370203 lambda!370190))))

(declare-fun bs!1700505 () Bool)

(assert (= bs!1700505 (and b!6625636 b!6625351)))

(assert (=> bs!1700505 (= (and (= (regOne!33502 (regOne!33503 (regTwo!33502 r!7292))) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370203 lambda!370188))))

(declare-fun bs!1700506 () Bool)

(assert (= bs!1700506 (and b!6625636 d!2076665)))

(assert (=> bs!1700506 (not (= lambda!370203 lambda!370151))))

(declare-fun bs!1700507 () Bool)

(assert (= bs!1700507 (and b!6625636 b!6625399)))

(assert (=> bs!1700507 (not (= lambda!370203 lambda!370189))))

(assert (=> b!6625636 true))

(assert (=> b!6625636 true))

(declare-fun b!6625630 () Bool)

(declare-fun c!1221712 () Bool)

(assert (=> b!6625630 (= c!1221712 ((_ is Union!16495) (regOne!33503 (regTwo!33502 r!7292))))))

(declare-fun e!4007748 () Bool)

(declare-fun e!4007751 () Bool)

(assert (=> b!6625630 (= e!4007748 e!4007751)))

(declare-fun b!6625631 () Bool)

(declare-fun e!4007754 () Bool)

(declare-fun e!4007750 () Bool)

(assert (=> b!6625631 (= e!4007754 e!4007750)))

(declare-fun res!2716118 () Bool)

(assert (=> b!6625631 (= res!2716118 (not ((_ is EmptyLang!16495) (regOne!33503 (regTwo!33502 r!7292)))))))

(assert (=> b!6625631 (=> (not res!2716118) (not e!4007750))))

(declare-fun b!6625632 () Bool)

(declare-fun e!4007749 () Bool)

(assert (=> b!6625632 (= e!4007751 e!4007749)))

(declare-fun res!2716119 () Bool)

(assert (=> b!6625632 (= res!2716119 (matchRSpec!3596 (regOne!33503 (regOne!33503 (regTwo!33502 r!7292))) s!2326))))

(assert (=> b!6625632 (=> res!2716119 e!4007749)))

(declare-fun d!2076815 () Bool)

(declare-fun c!1221709 () Bool)

(assert (=> d!2076815 (= c!1221709 ((_ is EmptyExpr!16495) (regOne!33503 (regTwo!33502 r!7292))))))

(assert (=> d!2076815 (= (matchRSpec!3596 (regOne!33503 (regTwo!33502 r!7292)) s!2326) e!4007754)))

(declare-fun b!6625633 () Bool)

(assert (=> b!6625633 (= e!4007749 (matchRSpec!3596 (regTwo!33503 (regOne!33503 (regTwo!33502 r!7292))) s!2326))))

(declare-fun bm!581040 () Bool)

(declare-fun call!581046 () Bool)

(assert (=> bm!581040 (= call!581046 (isEmpty!37954 s!2326))))

(declare-fun b!6625634 () Bool)

(declare-fun res!2716120 () Bool)

(declare-fun e!4007752 () Bool)

(assert (=> b!6625634 (=> res!2716120 e!4007752)))

(assert (=> b!6625634 (= res!2716120 call!581046)))

(declare-fun e!4007753 () Bool)

(assert (=> b!6625634 (= e!4007753 e!4007752)))

(declare-fun b!6625635 () Bool)

(assert (=> b!6625635 (= e!4007754 call!581046)))

(declare-fun bm!581041 () Bool)

(declare-fun c!1221710 () Bool)

(declare-fun call!581045 () Bool)

(assert (=> bm!581041 (= call!581045 (Exists!3565 (ite c!1221710 lambda!370202 lambda!370203)))))

(assert (=> b!6625636 (= e!4007753 call!581045)))

(assert (=> b!6625637 (= e!4007752 call!581045)))

(declare-fun b!6625638 () Bool)

(declare-fun c!1221711 () Bool)

(assert (=> b!6625638 (= c!1221711 ((_ is ElementMatch!16495) (regOne!33503 (regTwo!33502 r!7292))))))

(assert (=> b!6625638 (= e!4007750 e!4007748)))

(declare-fun b!6625639 () Bool)

(assert (=> b!6625639 (= e!4007748 (= s!2326 (Cons!65661 (c!1221458 (regOne!33503 (regTwo!33502 r!7292))) Nil!65661)))))

(declare-fun b!6625640 () Bool)

(assert (=> b!6625640 (= e!4007751 e!4007753)))

(assert (=> b!6625640 (= c!1221710 ((_ is Star!16495) (regOne!33503 (regTwo!33502 r!7292))))))

(assert (= (and d!2076815 c!1221709) b!6625635))

(assert (= (and d!2076815 (not c!1221709)) b!6625631))

(assert (= (and b!6625631 res!2716118) b!6625638))

(assert (= (and b!6625638 c!1221711) b!6625639))

(assert (= (and b!6625638 (not c!1221711)) b!6625630))

(assert (= (and b!6625630 c!1221712) b!6625632))

(assert (= (and b!6625630 (not c!1221712)) b!6625640))

(assert (= (and b!6625632 (not res!2716119)) b!6625633))

(assert (= (and b!6625640 c!1221710) b!6625634))

(assert (= (and b!6625640 (not c!1221710)) b!6625636))

(assert (= (and b!6625634 (not res!2716120)) b!6625637))

(assert (= (or b!6625637 b!6625636) bm!581041))

(assert (= (or b!6625635 b!6625634) bm!581040))

(declare-fun m!7395926 () Bool)

(assert (=> b!6625632 m!7395926))

(declare-fun m!7395928 () Bool)

(assert (=> b!6625633 m!7395928))

(assert (=> bm!581040 m!7395402))

(declare-fun m!7395930 () Bool)

(assert (=> bm!581041 m!7395930))

(assert (=> b!6625394 d!2076815))

(declare-fun d!2076817 () Bool)

(assert (=> d!2076817 (= (isConcat!1391 lt!2418461) ((_ is Concat!25340) lt!2418461))))

(assert (=> b!6625004 d!2076817))

(declare-fun e!4007758 () Bool)

(declare-fun b!6625641 () Bool)

(assert (=> b!6625641 (= e!4007758 (nullable!6488 (regOne!33502 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))))))))

(declare-fun bm!581043 () Bool)

(declare-fun call!581049 () (InoxSet Context!11758))

(declare-fun call!581051 () (InoxSet Context!11758))

(assert (=> bm!581043 (= call!581049 call!581051)))

(declare-fun b!6625642 () Bool)

(declare-fun e!4007755 () (InoxSet Context!11758))

(declare-fun call!581047 () (InoxSet Context!11758))

(assert (=> b!6625642 (= e!4007755 ((_ map or) call!581051 call!581047))))

(declare-fun b!6625643 () Bool)

(declare-fun c!1221716 () Bool)

(assert (=> b!6625643 (= c!1221716 ((_ is Star!16495) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun e!4007756 () (InoxSet Context!11758))

(declare-fun e!4007757 () (InoxSet Context!11758))

(assert (=> b!6625643 (= e!4007756 e!4007757)))

(declare-fun b!6625644 () Bool)

(declare-fun call!581050 () (InoxSet Context!11758))

(assert (=> b!6625644 (= e!4007756 call!581050)))

(declare-fun c!1221714 () Bool)

(declare-fun c!1221713 () Bool)

(declare-fun bm!581044 () Bool)

(declare-fun c!1221715 () Bool)

(declare-fun call!581048 () List!65784)

(assert (=> bm!581044 (= call!581051 (derivationStepZipperDown!1743 (ite c!1221713 (regOne!33503 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (ite c!1221715 (regTwo!33502 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (ite c!1221714 (regOne!33502 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (reg!16824 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))))))) (ite (or c!1221713 c!1221715) (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977)) (Context!11759 call!581048)) (h!72109 s!2326)))))

(declare-fun b!6625645 () Bool)

(assert (=> b!6625645 (= e!4007757 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625646 () Bool)

(declare-fun e!4007759 () (InoxSet Context!11758))

(assert (=> b!6625646 (= e!4007759 e!4007756)))

(assert (=> b!6625646 (= c!1221714 ((_ is Concat!25340) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun call!581052 () List!65784)

(declare-fun bm!581045 () Bool)

(assert (=> bm!581045 (= call!581052 ($colon$colon!2331 (exprs!6379 (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977))) (ite (or c!1221715 c!1221714) (regTwo!33502 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))))))))

(declare-fun b!6625647 () Bool)

(assert (=> b!6625647 (= e!4007759 ((_ map or) call!581047 call!581049))))

(declare-fun b!6625648 () Bool)

(assert (=> b!6625648 (= e!4007757 call!581050)))

(declare-fun bm!581046 () Bool)

(assert (=> bm!581046 (= call!581050 call!581049)))

(declare-fun bm!581042 () Bool)

(assert (=> bm!581042 (= call!581047 (derivationStepZipperDown!1743 (ite c!1221713 (regTwo!33503 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (regOne!33502 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))))) (ite c!1221713 (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977)) (Context!11759 call!581052)) (h!72109 s!2326)))))

(declare-fun c!1221717 () Bool)

(declare-fun d!2076819 () Bool)

(assert (=> d!2076819 (= c!1221717 (and ((_ is ElementMatch!16495) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (= (c!1221458 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326))))))

(declare-fun e!4007760 () (InoxSet Context!11758))

(assert (=> d!2076819 (= (derivationStepZipperDown!1743 (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343))))))) (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977)) (h!72109 s!2326)) e!4007760)))

(declare-fun b!6625649 () Bool)

(assert (=> b!6625649 (= c!1221715 e!4007758)))

(declare-fun res!2716121 () Bool)

(assert (=> b!6625649 (=> (not res!2716121) (not e!4007758))))

(assert (=> b!6625649 (= res!2716121 ((_ is Concat!25340) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))))

(assert (=> b!6625649 (= e!4007755 e!4007759)))

(declare-fun b!6625650 () Bool)

(assert (=> b!6625650 (= e!4007760 e!4007755)))

(assert (=> b!6625650 (= c!1221713 ((_ is Union!16495) (ite c!1221581 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221583 (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (ite c!1221582 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (reg!16824 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun bm!581047 () Bool)

(assert (=> bm!581047 (= call!581048 call!581052)))

(declare-fun b!6625651 () Bool)

(assert (=> b!6625651 (= e!4007760 (store ((as const (Array Context!11758 Bool)) false) (ite (or c!1221581 c!1221583) lt!2418404 (Context!11759 call!580977)) true))))

(assert (= (and d!2076819 c!1221717) b!6625651))

(assert (= (and d!2076819 (not c!1221717)) b!6625650))

(assert (= (and b!6625650 c!1221713) b!6625642))

(assert (= (and b!6625650 (not c!1221713)) b!6625649))

(assert (= (and b!6625649 res!2716121) b!6625641))

(assert (= (and b!6625649 c!1221715) b!6625647))

(assert (= (and b!6625649 (not c!1221715)) b!6625646))

(assert (= (and b!6625646 c!1221714) b!6625644))

(assert (= (and b!6625646 (not c!1221714)) b!6625643))

(assert (= (and b!6625643 c!1221716) b!6625648))

(assert (= (and b!6625643 (not c!1221716)) b!6625645))

(assert (= (or b!6625644 b!6625648) bm!581047))

(assert (= (or b!6625644 b!6625648) bm!581046))

(assert (= (or b!6625647 bm!581047) bm!581045))

(assert (= (or b!6625647 bm!581046) bm!581043))

(assert (= (or b!6625642 b!6625647) bm!581042))

(assert (= (or b!6625642 bm!581043) bm!581044))

(declare-fun m!7395932 () Bool)

(assert (=> bm!581045 m!7395932))

(declare-fun m!7395934 () Bool)

(assert (=> bm!581044 m!7395934))

(declare-fun m!7395936 () Bool)

(assert (=> b!6625641 m!7395936))

(declare-fun m!7395938 () Bool)

(assert (=> b!6625651 m!7395938))

(declare-fun m!7395940 () Bool)

(assert (=> bm!581042 m!7395940))

(assert (=> bm!580973 d!2076819))

(declare-fun d!2076821 () Bool)

(declare-fun res!2716122 () Bool)

(declare-fun e!4007761 () Bool)

(assert (=> d!2076821 (=> res!2716122 e!4007761)))

(assert (=> d!2076821 (= res!2716122 ((_ is Nil!65660) lt!2418454))))

(assert (=> d!2076821 (= (forall!15690 lt!2418454 lambda!370142) e!4007761)))

(declare-fun b!6625652 () Bool)

(declare-fun e!4007762 () Bool)

(assert (=> b!6625652 (= e!4007761 e!4007762)))

(declare-fun res!2716123 () Bool)

(assert (=> b!6625652 (=> (not res!2716123) (not e!4007762))))

(assert (=> b!6625652 (= res!2716123 (dynLambda!26153 lambda!370142 (h!72108 lt!2418454)))))

(declare-fun b!6625653 () Bool)

(assert (=> b!6625653 (= e!4007762 (forall!15690 (t!379444 lt!2418454) lambda!370142))))

(assert (= (and d!2076821 (not res!2716122)) b!6625652))

(assert (= (and b!6625652 res!2716123) b!6625653))

(declare-fun b_lambda!250507 () Bool)

(assert (=> (not b_lambda!250507) (not b!6625652)))

(declare-fun m!7395942 () Bool)

(assert (=> b!6625652 m!7395942))

(declare-fun m!7395944 () Bool)

(assert (=> b!6625653 m!7395944))

(assert (=> d!2076633 d!2076821))

(declare-fun d!2076823 () Bool)

(assert (=> d!2076823 true))

(declare-fun setRes!45291 () Bool)

(assert (=> d!2076823 setRes!45291))

(declare-fun condSetEmpty!45291 () Bool)

(declare-fun res!2716126 () (InoxSet Context!11758))

(assert (=> d!2076823 (= condSetEmpty!45291 (= res!2716126 ((as const (Array Context!11758 Bool)) false)))))

(assert (=> d!2076823 (= (choose!49495 z!1189 lambda!370119) res!2716126)))

(declare-fun setIsEmpty!45291 () Bool)

(assert (=> setIsEmpty!45291 setRes!45291))

(declare-fun setElem!45291 () Context!11758)

(declare-fun setNonEmpty!45291 () Bool)

(declare-fun e!4007765 () Bool)

(declare-fun tp!1824908 () Bool)

(assert (=> setNonEmpty!45291 (= setRes!45291 (and tp!1824908 (inv!84484 setElem!45291) e!4007765))))

(declare-fun setRest!45291 () (InoxSet Context!11758))

(assert (=> setNonEmpty!45291 (= res!2716126 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) setElem!45291 true) setRest!45291))))

(declare-fun b!6625656 () Bool)

(declare-fun tp!1824909 () Bool)

(assert (=> b!6625656 (= e!4007765 tp!1824909)))

(assert (= (and d!2076823 condSetEmpty!45291) setIsEmpty!45291))

(assert (= (and d!2076823 (not condSetEmpty!45291)) setNonEmpty!45291))

(assert (= setNonEmpty!45291 b!6625656))

(declare-fun m!7395946 () Bool)

(assert (=> setNonEmpty!45291 m!7395946))

(assert (=> d!2076679 d!2076823))

(declare-fun bs!1700508 () Bool)

(declare-fun b!6625664 () Bool)

(assert (= bs!1700508 (and b!6625664 d!2076807)))

(declare-fun lambda!370204 () Int)

(assert (=> bs!1700508 (not (= lambda!370204 lambda!370201))))

(declare-fun bs!1700509 () Bool)

(assert (= bs!1700509 (and b!6625664 b!6625637)))

(assert (=> bs!1700509 (= (and (= (reg!16824 (regTwo!33503 r!7292)) (reg!16824 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33503 r!7292) (regOne!33503 (regTwo!33502 r!7292)))) (= lambda!370204 lambda!370202))))

(declare-fun bs!1700510 () Bool)

(assert (= bs!1700510 (and b!6625664 d!2076667)))

(assert (=> bs!1700510 (not (= lambda!370204 lambda!370156))))

(declare-fun bs!1700511 () Bool)

(assert (= bs!1700511 (and b!6625664 b!6625352)))

(assert (=> bs!1700511 (= (and (= (reg!16824 (regTwo!33503 r!7292)) (reg!16824 (regOne!33502 r!7292))) (= (regTwo!33503 r!7292) (regOne!33502 r!7292))) (= lambda!370204 lambda!370187))))

(declare-fun bs!1700512 () Bool)

(assert (= bs!1700512 (and b!6625664 b!6625636)))

(assert (=> bs!1700512 (not (= lambda!370204 lambda!370203))))

(declare-fun bs!1700513 () Bool)

(assert (= bs!1700513 (and b!6625664 b!6624705)))

(assert (=> bs!1700513 (not (= lambda!370204 lambda!370118))))

(declare-fun bs!1700514 () Bool)

(assert (= bs!1700514 (and b!6625664 b!6625252)))

(assert (=> bs!1700514 (= (and (= (reg!16824 (regTwo!33503 r!7292)) (reg!16824 r!7292)) (= (regTwo!33503 r!7292) r!7292)) (= lambda!370204 lambda!370175))))

(declare-fun bs!1700515 () Bool)

(assert (= bs!1700515 (and b!6625664 b!6625251)))

(assert (=> bs!1700515 (not (= lambda!370204 lambda!370179))))

(assert (=> bs!1700510 (not (= lambda!370204 lambda!370159))))

(assert (=> bs!1700513 (not (= lambda!370204 lambda!370117))))

(declare-fun bs!1700516 () Bool)

(assert (= bs!1700516 (and b!6625664 b!6625398)))

(assert (=> bs!1700516 (not (= lambda!370204 lambda!370190))))

(declare-fun bs!1700517 () Bool)

(assert (= bs!1700517 (and b!6625664 b!6625351)))

(assert (=> bs!1700517 (not (= lambda!370204 lambda!370188))))

(declare-fun bs!1700518 () Bool)

(assert (= bs!1700518 (and b!6625664 d!2076665)))

(assert (=> bs!1700518 (not (= lambda!370204 lambda!370151))))

(declare-fun bs!1700519 () Bool)

(assert (= bs!1700519 (and b!6625664 b!6625399)))

(assert (=> bs!1700519 (= (and (= (reg!16824 (regTwo!33503 r!7292)) (reg!16824 (regTwo!33502 r!7292))) (= (regTwo!33503 r!7292) (regTwo!33502 r!7292))) (= lambda!370204 lambda!370189))))

(assert (=> b!6625664 true))

(assert (=> b!6625664 true))

(declare-fun bs!1700520 () Bool)

(declare-fun b!6625663 () Bool)

(assert (= bs!1700520 (and b!6625663 d!2076807)))

(declare-fun lambda!370205 () Int)

(assert (=> bs!1700520 (not (= lambda!370205 lambda!370201))))

(declare-fun bs!1700521 () Bool)

(assert (= bs!1700521 (and b!6625663 b!6625637)))

(assert (=> bs!1700521 (not (= lambda!370205 lambda!370202))))

(declare-fun bs!1700522 () Bool)

(assert (= bs!1700522 (and b!6625663 d!2076667)))

(assert (=> bs!1700522 (not (= lambda!370205 lambda!370156))))

(declare-fun bs!1700523 () Bool)

(assert (= bs!1700523 (and b!6625663 b!6625352)))

(assert (=> bs!1700523 (not (= lambda!370205 lambda!370187))))

(declare-fun bs!1700524 () Bool)

(assert (= bs!1700524 (and b!6625663 b!6625636)))

(assert (=> bs!1700524 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370205 lambda!370203))))

(declare-fun bs!1700525 () Bool)

(assert (= bs!1700525 (and b!6625663 b!6624705)))

(assert (=> bs!1700525 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370205 lambda!370118))))

(declare-fun bs!1700526 () Bool)

(assert (= bs!1700526 (and b!6625663 b!6625664)))

(assert (=> bs!1700526 (not (= lambda!370205 lambda!370204))))

(declare-fun bs!1700527 () Bool)

(assert (= bs!1700527 (and b!6625663 b!6625252)))

(assert (=> bs!1700527 (not (= lambda!370205 lambda!370175))))

(declare-fun bs!1700528 () Bool)

(assert (= bs!1700528 (and b!6625663 b!6625251)))

(assert (=> bs!1700528 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370205 lambda!370179))))

(assert (=> bs!1700522 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370205 lambda!370159))))

(assert (=> bs!1700525 (not (= lambda!370205 lambda!370117))))

(declare-fun bs!1700529 () Bool)

(assert (= bs!1700529 (and b!6625663 b!6625398)))

(assert (=> bs!1700529 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370205 lambda!370190))))

(declare-fun bs!1700530 () Bool)

(assert (= bs!1700530 (and b!6625663 b!6625351)))

(assert (=> bs!1700530 (= (and (= (regOne!33502 (regTwo!33503 r!7292)) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 r!7292)) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370205 lambda!370188))))

(declare-fun bs!1700531 () Bool)

(assert (= bs!1700531 (and b!6625663 d!2076665)))

(assert (=> bs!1700531 (not (= lambda!370205 lambda!370151))))

(declare-fun bs!1700532 () Bool)

(assert (= bs!1700532 (and b!6625663 b!6625399)))

(assert (=> bs!1700532 (not (= lambda!370205 lambda!370189))))

(assert (=> b!6625663 true))

(assert (=> b!6625663 true))

(declare-fun b!6625657 () Bool)

(declare-fun c!1221721 () Bool)

(assert (=> b!6625657 (= c!1221721 ((_ is Union!16495) (regTwo!33503 r!7292)))))

(declare-fun e!4007766 () Bool)

(declare-fun e!4007769 () Bool)

(assert (=> b!6625657 (= e!4007766 e!4007769)))

(declare-fun b!6625658 () Bool)

(declare-fun e!4007772 () Bool)

(declare-fun e!4007768 () Bool)

(assert (=> b!6625658 (= e!4007772 e!4007768)))

(declare-fun res!2716127 () Bool)

(assert (=> b!6625658 (= res!2716127 (not ((_ is EmptyLang!16495) (regTwo!33503 r!7292))))))

(assert (=> b!6625658 (=> (not res!2716127) (not e!4007768))))

(declare-fun b!6625659 () Bool)

(declare-fun e!4007767 () Bool)

(assert (=> b!6625659 (= e!4007769 e!4007767)))

(declare-fun res!2716128 () Bool)

(assert (=> b!6625659 (= res!2716128 (matchRSpec!3596 (regOne!33503 (regTwo!33503 r!7292)) s!2326))))

(assert (=> b!6625659 (=> res!2716128 e!4007767)))

(declare-fun d!2076825 () Bool)

(declare-fun c!1221718 () Bool)

(assert (=> d!2076825 (= c!1221718 ((_ is EmptyExpr!16495) (regTwo!33503 r!7292)))))

(assert (=> d!2076825 (= (matchRSpec!3596 (regTwo!33503 r!7292) s!2326) e!4007772)))

(declare-fun b!6625660 () Bool)

(assert (=> b!6625660 (= e!4007767 (matchRSpec!3596 (regTwo!33503 (regTwo!33503 r!7292)) s!2326))))

(declare-fun bm!581048 () Bool)

(declare-fun call!581054 () Bool)

(assert (=> bm!581048 (= call!581054 (isEmpty!37954 s!2326))))

(declare-fun b!6625661 () Bool)

(declare-fun res!2716129 () Bool)

(declare-fun e!4007770 () Bool)

(assert (=> b!6625661 (=> res!2716129 e!4007770)))

(assert (=> b!6625661 (= res!2716129 call!581054)))

(declare-fun e!4007771 () Bool)

(assert (=> b!6625661 (= e!4007771 e!4007770)))

(declare-fun b!6625662 () Bool)

(assert (=> b!6625662 (= e!4007772 call!581054)))

(declare-fun call!581053 () Bool)

(declare-fun c!1221719 () Bool)

(declare-fun bm!581049 () Bool)

(assert (=> bm!581049 (= call!581053 (Exists!3565 (ite c!1221719 lambda!370204 lambda!370205)))))

(assert (=> b!6625663 (= e!4007771 call!581053)))

(assert (=> b!6625664 (= e!4007770 call!581053)))

(declare-fun b!6625665 () Bool)

(declare-fun c!1221720 () Bool)

(assert (=> b!6625665 (= c!1221720 ((_ is ElementMatch!16495) (regTwo!33503 r!7292)))))

(assert (=> b!6625665 (= e!4007768 e!4007766)))

(declare-fun b!6625666 () Bool)

(assert (=> b!6625666 (= e!4007766 (= s!2326 (Cons!65661 (c!1221458 (regTwo!33503 r!7292)) Nil!65661)))))

(declare-fun b!6625667 () Bool)

(assert (=> b!6625667 (= e!4007769 e!4007771)))

(assert (=> b!6625667 (= c!1221719 ((_ is Star!16495) (regTwo!33503 r!7292)))))

(assert (= (and d!2076825 c!1221718) b!6625662))

(assert (= (and d!2076825 (not c!1221718)) b!6625658))

(assert (= (and b!6625658 res!2716127) b!6625665))

(assert (= (and b!6625665 c!1221720) b!6625666))

(assert (= (and b!6625665 (not c!1221720)) b!6625657))

(assert (= (and b!6625657 c!1221721) b!6625659))

(assert (= (and b!6625657 (not c!1221721)) b!6625667))

(assert (= (and b!6625659 (not res!2716128)) b!6625660))

(assert (= (and b!6625667 c!1221719) b!6625661))

(assert (= (and b!6625667 (not c!1221719)) b!6625663))

(assert (= (and b!6625661 (not res!2716129)) b!6625664))

(assert (= (or b!6625664 b!6625663) bm!581049))

(assert (= (or b!6625662 b!6625661) bm!581048))

(declare-fun m!7395948 () Bool)

(assert (=> b!6625659 m!7395948))

(declare-fun m!7395950 () Bool)

(assert (=> b!6625660 m!7395950))

(assert (=> bm!581048 m!7395402))

(declare-fun m!7395952 () Bool)

(assert (=> bm!581049 m!7395952))

(assert (=> b!6625248 d!2076825))

(declare-fun b!6625676 () Bool)

(declare-fun e!4007777 () List!65785)

(assert (=> b!6625676 (= e!4007777 (_2!36777 (get!22823 lt!2418470)))))

(declare-fun b!6625679 () Bool)

(declare-fun e!4007778 () Bool)

(declare-fun lt!2418525 () List!65785)

(assert (=> b!6625679 (= e!4007778 (or (not (= (_2!36777 (get!22823 lt!2418470)) Nil!65661)) (= lt!2418525 (_1!36777 (get!22823 lt!2418470)))))))

(declare-fun b!6625678 () Bool)

(declare-fun res!2716134 () Bool)

(assert (=> b!6625678 (=> (not res!2716134) (not e!4007778))))

(declare-fun size!40553 (List!65785) Int)

(assert (=> b!6625678 (= res!2716134 (= (size!40553 lt!2418525) (+ (size!40553 (_1!36777 (get!22823 lt!2418470))) (size!40553 (_2!36777 (get!22823 lt!2418470))))))))

(declare-fun b!6625677 () Bool)

(assert (=> b!6625677 (= e!4007777 (Cons!65661 (h!72109 (_1!36777 (get!22823 lt!2418470))) (++!14644 (t!379445 (_1!36777 (get!22823 lt!2418470))) (_2!36777 (get!22823 lt!2418470)))))))

(declare-fun d!2076827 () Bool)

(assert (=> d!2076827 e!4007778))

(declare-fun res!2716135 () Bool)

(assert (=> d!2076827 (=> (not res!2716135) (not e!4007778))))

(declare-fun content!12677 (List!65785) (InoxSet C!33260))

(assert (=> d!2076827 (= res!2716135 (= (content!12677 lt!2418525) ((_ map or) (content!12677 (_1!36777 (get!22823 lt!2418470))) (content!12677 (_2!36777 (get!22823 lt!2418470))))))))

(assert (=> d!2076827 (= lt!2418525 e!4007777)))

(declare-fun c!1221724 () Bool)

(assert (=> d!2076827 (= c!1221724 ((_ is Nil!65661) (_1!36777 (get!22823 lt!2418470))))))

(assert (=> d!2076827 (= (++!14644 (_1!36777 (get!22823 lt!2418470)) (_2!36777 (get!22823 lt!2418470))) lt!2418525)))

(assert (= (and d!2076827 c!1221724) b!6625676))

(assert (= (and d!2076827 (not c!1221724)) b!6625677))

(assert (= (and d!2076827 res!2716135) b!6625678))

(assert (= (and b!6625678 res!2716134) b!6625679))

(declare-fun m!7395954 () Bool)

(assert (=> b!6625678 m!7395954))

(declare-fun m!7395956 () Bool)

(assert (=> b!6625678 m!7395956))

(declare-fun m!7395958 () Bool)

(assert (=> b!6625678 m!7395958))

(declare-fun m!7395960 () Bool)

(assert (=> b!6625677 m!7395960))

(declare-fun m!7395962 () Bool)

(assert (=> d!2076827 m!7395962))

(declare-fun m!7395964 () Bool)

(assert (=> d!2076827 m!7395964))

(declare-fun m!7395966 () Bool)

(assert (=> d!2076827 m!7395966))

(assert (=> b!6625041 d!2076827))

(assert (=> b!6625041 d!2076811))

(declare-fun d!2076829 () Bool)

(assert (=> d!2076829 (= (isEmpty!37954 (tail!12517 s!2326)) ((_ is Nil!65661) (tail!12517 s!2326)))))

(assert (=> b!6625329 d!2076829))

(declare-fun d!2076831 () Bool)

(assert (=> d!2076831 (= (tail!12517 s!2326) (t!379445 s!2326))))

(assert (=> b!6625329 d!2076831))

(assert (=> d!2076735 d!2076737))

(assert (=> d!2076735 d!2076733))

(declare-fun d!2076833 () Bool)

(assert (=> d!2076833 (= (matchR!8678 (regOne!33502 r!7292) s!2326) (matchRSpec!3596 (regOne!33502 r!7292) s!2326))))

(assert (=> d!2076833 true))

(declare-fun _$88!5326 () Unit!159335)

(assert (=> d!2076833 (= (choose!49511 (regOne!33502 r!7292) s!2326) _$88!5326)))

(declare-fun bs!1700533 () Bool)

(assert (= bs!1700533 d!2076833))

(assert (=> bs!1700533 m!7395236))

(assert (=> bs!1700533 m!7395238))

(assert (=> d!2076735 d!2076833))

(assert (=> d!2076735 d!2076805))

(assert (=> b!6625008 d!2076695))

(assert (=> d!2076713 d!2076709))

(assert (=> d!2076713 d!2076701))

(declare-fun d!2076835 () Bool)

(assert (=> d!2076835 (= (matchR!8678 r!7292 s!2326) (matchRSpec!3596 r!7292 s!2326))))

(assert (=> d!2076835 true))

(declare-fun _$88!5327 () Unit!159335)

(assert (=> d!2076835 (= (choose!49511 r!7292 s!2326) _$88!5327)))

(declare-fun bs!1700534 () Bool)

(assert (= bs!1700534 d!2076835))

(assert (=> bs!1700534 m!7395280))

(assert (=> bs!1700534 m!7395278))

(assert (=> d!2076713 d!2076835))

(assert (=> d!2076713 d!2076585))

(declare-fun b!6625680 () Bool)

(declare-fun e!4007780 () Bool)

(assert (=> b!6625680 (= e!4007780 (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)))))))

(declare-fun b!6625681 () Bool)

(declare-fun res!2716142 () Bool)

(assert (=> b!6625681 (=> (not res!2716142) (not e!4007780))))

(declare-fun call!581055 () Bool)

(assert (=> b!6625681 (= res!2716142 (not call!581055))))

(declare-fun b!6625682 () Bool)

(declare-fun res!2716141 () Bool)

(declare-fun e!4007779 () Bool)

(assert (=> b!6625682 (=> res!2716141 e!4007779)))

(assert (=> b!6625682 (= res!2716141 e!4007780)))

(declare-fun res!2716140 () Bool)

(assert (=> b!6625682 (=> (not res!2716140) (not e!4007780))))

(declare-fun lt!2418526 () Bool)

(assert (=> b!6625682 (= res!2716140 lt!2418526)))

(declare-fun bm!581050 () Bool)

(assert (=> bm!581050 (= call!581055 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6625683 () Bool)

(declare-fun e!4007784 () Bool)

(assert (=> b!6625683 (= e!4007784 (nullable!6488 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326))))))

(declare-fun b!6625684 () Bool)

(declare-fun e!4007785 () Bool)

(assert (=> b!6625684 (= e!4007785 (= lt!2418526 call!581055))))

(declare-fun b!6625685 () Bool)

(declare-fun e!4007782 () Bool)

(assert (=> b!6625685 (= e!4007782 (not lt!2418526))))

(declare-fun b!6625687 () Bool)

(assert (=> b!6625687 (= e!4007785 e!4007782)))

(declare-fun c!1221726 () Bool)

(assert (=> b!6625687 (= c!1221726 ((_ is EmptyLang!16495) (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326))))))

(declare-fun b!6625688 () Bool)

(declare-fun e!4007783 () Bool)

(assert (=> b!6625688 (= e!4007783 (not (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326))))))))

(declare-fun b!6625689 () Bool)

(declare-fun res!2716139 () Bool)

(assert (=> b!6625689 (=> res!2716139 e!4007779)))

(assert (=> b!6625689 (= res!2716139 (not ((_ is ElementMatch!16495) (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)))))))

(assert (=> b!6625689 (= e!4007782 e!4007779)))

(declare-fun b!6625686 () Bool)

(declare-fun e!4007781 () Bool)

(assert (=> b!6625686 (= e!4007781 e!4007783)))

(declare-fun res!2716143 () Bool)

(assert (=> b!6625686 (=> res!2716143 e!4007783)))

(assert (=> b!6625686 (= res!2716143 call!581055)))

(declare-fun d!2076837 () Bool)

(assert (=> d!2076837 e!4007785))

(declare-fun c!1221727 () Bool)

(assert (=> d!2076837 (= c!1221727 ((_ is EmptyExpr!16495) (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326))))))

(assert (=> d!2076837 (= lt!2418526 e!4007784)))

(declare-fun c!1221725 () Bool)

(assert (=> d!2076837 (= c!1221725 (isEmpty!37954 (tail!12517 s!2326)))))

(assert (=> d!2076837 (validRegex!8231 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)))))

(assert (=> d!2076837 (= (matchR!8678 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)) (tail!12517 s!2326)) lt!2418526)))

(declare-fun b!6625690 () Bool)

(assert (=> b!6625690 (= e!4007784 (matchR!8678 (derivativeStep!5175 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)) (head!13432 (tail!12517 s!2326))) (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6625691 () Bool)

(declare-fun res!2716138 () Bool)

(assert (=> b!6625691 (=> (not res!2716138) (not e!4007780))))

(assert (=> b!6625691 (= res!2716138 (isEmpty!37954 (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6625692 () Bool)

(declare-fun res!2716136 () Bool)

(assert (=> b!6625692 (=> res!2716136 e!4007783)))

(assert (=> b!6625692 (= res!2716136 (not (isEmpty!37954 (tail!12517 (tail!12517 s!2326)))))))

(declare-fun b!6625693 () Bool)

(assert (=> b!6625693 (= e!4007779 e!4007781)))

(declare-fun res!2716137 () Bool)

(assert (=> b!6625693 (=> (not res!2716137) (not e!4007781))))

(assert (=> b!6625693 (= res!2716137 (not lt!2418526))))

(assert (= (and d!2076837 c!1221725) b!6625683))

(assert (= (and d!2076837 (not c!1221725)) b!6625690))

(assert (= (and d!2076837 c!1221727) b!6625684))

(assert (= (and d!2076837 (not c!1221727)) b!6625687))

(assert (= (and b!6625687 c!1221726) b!6625685))

(assert (= (and b!6625687 (not c!1221726)) b!6625689))

(assert (= (and b!6625689 (not res!2716139)) b!6625682))

(assert (= (and b!6625682 res!2716140) b!6625681))

(assert (= (and b!6625681 res!2716142) b!6625691))

(assert (= (and b!6625691 res!2716138) b!6625680))

(assert (= (and b!6625682 (not res!2716141)) b!6625693))

(assert (= (and b!6625693 res!2716137) b!6625686))

(assert (= (and b!6625686 (not res!2716143)) b!6625692))

(assert (= (and b!6625692 (not res!2716136)) b!6625688))

(assert (= (or b!6625684 b!6625681 b!6625686) bm!581050))

(assert (=> b!6625688 m!7395410))

(declare-fun m!7395968 () Bool)

(assert (=> b!6625688 m!7395968))

(assert (=> b!6625683 m!7395766))

(declare-fun m!7395970 () Bool)

(assert (=> b!6625683 m!7395970))

(assert (=> b!6625690 m!7395410))

(assert (=> b!6625690 m!7395968))

(assert (=> b!6625690 m!7395766))

(assert (=> b!6625690 m!7395968))

(declare-fun m!7395972 () Bool)

(assert (=> b!6625690 m!7395972))

(assert (=> b!6625690 m!7395410))

(declare-fun m!7395974 () Bool)

(assert (=> b!6625690 m!7395974))

(assert (=> b!6625690 m!7395972))

(assert (=> b!6625690 m!7395974))

(declare-fun m!7395976 () Bool)

(assert (=> b!6625690 m!7395976))

(assert (=> b!6625692 m!7395410))

(assert (=> b!6625692 m!7395974))

(assert (=> b!6625692 m!7395974))

(declare-fun m!7395978 () Bool)

(assert (=> b!6625692 m!7395978))

(assert (=> b!6625680 m!7395410))

(assert (=> b!6625680 m!7395968))

(assert (=> bm!581050 m!7395410))

(assert (=> bm!581050 m!7395720))

(assert (=> b!6625691 m!7395410))

(assert (=> b!6625691 m!7395974))

(assert (=> b!6625691 m!7395974))

(assert (=> b!6625691 m!7395978))

(assert (=> d!2076837 m!7395410))

(assert (=> d!2076837 m!7395720))

(assert (=> d!2076837 m!7395766))

(declare-fun m!7395980 () Bool)

(assert (=> d!2076837 m!7395980))

(assert (=> b!6625388 d!2076837))

(declare-fun b!6625714 () Bool)

(declare-fun c!1221742 () Bool)

(assert (=> b!6625714 (= c!1221742 (nullable!6488 (regOne!33502 (regOne!33502 r!7292))))))

(declare-fun e!4007798 () Regex!16495)

(declare-fun e!4007796 () Regex!16495)

(assert (=> b!6625714 (= e!4007798 e!4007796)))

(declare-fun bm!581059 () Bool)

(declare-fun call!581067 () Regex!16495)

(declare-fun call!581065 () Regex!16495)

(assert (=> bm!581059 (= call!581067 call!581065)))

(declare-fun b!6625715 () Bool)

(declare-fun e!4007799 () Regex!16495)

(assert (=> b!6625715 (= e!4007799 EmptyLang!16495)))

(declare-fun bm!581060 () Bool)

(declare-fun call!581064 () Regex!16495)

(assert (=> bm!581060 (= call!581064 call!581067)))

(declare-fun b!6625716 () Bool)

(declare-fun e!4007800 () Regex!16495)

(assert (=> b!6625716 (= e!4007800 e!4007798)))

(declare-fun c!1221741 () Bool)

(assert (=> b!6625716 (= c!1221741 ((_ is Star!16495) (regOne!33502 r!7292)))))

(declare-fun bm!581061 () Bool)

(declare-fun c!1221738 () Bool)

(declare-fun call!581066 () Regex!16495)

(assert (=> bm!581061 (= call!581066 (derivativeStep!5175 (ite c!1221738 (regTwo!33503 (regOne!33502 r!7292)) (regOne!33502 (regOne!33502 r!7292))) (head!13432 s!2326)))))

(declare-fun b!6625717 () Bool)

(declare-fun e!4007797 () Regex!16495)

(assert (=> b!6625717 (= e!4007799 e!4007797)))

(declare-fun c!1221739 () Bool)

(assert (=> b!6625717 (= c!1221739 ((_ is ElementMatch!16495) (regOne!33502 r!7292)))))

(declare-fun d!2076839 () Bool)

(declare-fun lt!2418529 () Regex!16495)

(assert (=> d!2076839 (validRegex!8231 lt!2418529)))

(assert (=> d!2076839 (= lt!2418529 e!4007799)))

(declare-fun c!1221740 () Bool)

(assert (=> d!2076839 (= c!1221740 (or ((_ is EmptyExpr!16495) (regOne!33502 r!7292)) ((_ is EmptyLang!16495) (regOne!33502 r!7292))))))

(assert (=> d!2076839 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076839 (= (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 s!2326)) lt!2418529)))

(declare-fun b!6625718 () Bool)

(assert (=> b!6625718 (= e!4007797 (ite (= (head!13432 s!2326) (c!1221458 (regOne!33502 r!7292))) EmptyExpr!16495 EmptyLang!16495))))

(declare-fun b!6625719 () Bool)

(assert (=> b!6625719 (= e!4007796 (Union!16495 (Concat!25340 call!581066 (regTwo!33502 (regOne!33502 r!7292))) call!581064))))

(declare-fun bm!581062 () Bool)

(assert (=> bm!581062 (= call!581065 (derivativeStep!5175 (ite c!1221738 (regOne!33503 (regOne!33502 r!7292)) (ite c!1221741 (reg!16824 (regOne!33502 r!7292)) (ite c!1221742 (regTwo!33502 (regOne!33502 r!7292)) (regOne!33502 (regOne!33502 r!7292))))) (head!13432 s!2326)))))

(declare-fun b!6625720 () Bool)

(assert (=> b!6625720 (= c!1221738 ((_ is Union!16495) (regOne!33502 r!7292)))))

(assert (=> b!6625720 (= e!4007797 e!4007800)))

(declare-fun b!6625721 () Bool)

(assert (=> b!6625721 (= e!4007798 (Concat!25340 call!581067 (regOne!33502 r!7292)))))

(declare-fun b!6625722 () Bool)

(assert (=> b!6625722 (= e!4007796 (Union!16495 (Concat!25340 call!581064 (regTwo!33502 (regOne!33502 r!7292))) EmptyLang!16495))))

(declare-fun b!6625723 () Bool)

(assert (=> b!6625723 (= e!4007800 (Union!16495 call!581065 call!581066))))

(assert (= (and d!2076839 c!1221740) b!6625715))

(assert (= (and d!2076839 (not c!1221740)) b!6625717))

(assert (= (and b!6625717 c!1221739) b!6625718))

(assert (= (and b!6625717 (not c!1221739)) b!6625720))

(assert (= (and b!6625720 c!1221738) b!6625723))

(assert (= (and b!6625720 (not c!1221738)) b!6625716))

(assert (= (and b!6625716 c!1221741) b!6625721))

(assert (= (and b!6625716 (not c!1221741)) b!6625714))

(assert (= (and b!6625714 c!1221742) b!6625719))

(assert (= (and b!6625714 (not c!1221742)) b!6625722))

(assert (= (or b!6625719 b!6625722) bm!581060))

(assert (= (or b!6625721 bm!581060) bm!581059))

(assert (= (or b!6625723 b!6625719) bm!581061))

(assert (= (or b!6625723 bm!581059) bm!581062))

(assert (=> b!6625714 m!7395250))

(assert (=> bm!581061 m!7395406))

(declare-fun m!7395982 () Bool)

(assert (=> bm!581061 m!7395982))

(declare-fun m!7395984 () Bool)

(assert (=> d!2076839 m!7395984))

(assert (=> d!2076839 m!7395552))

(assert (=> bm!581062 m!7395406))

(declare-fun m!7395986 () Bool)

(assert (=> bm!581062 m!7395986))

(assert (=> b!6625388 d!2076839))

(assert (=> b!6625388 d!2076767))

(assert (=> b!6625388 d!2076831))

(declare-fun d!2076841 () Bool)

(declare-fun res!2716144 () Bool)

(declare-fun e!4007801 () Bool)

(assert (=> d!2076841 (=> res!2716144 e!4007801)))

(assert (=> d!2076841 (= res!2716144 ((_ is Nil!65660) (exprs!6379 (h!72110 zl!343))))))

(assert (=> d!2076841 (= (forall!15690 (exprs!6379 (h!72110 zl!343)) lambda!370191) e!4007801)))

(declare-fun b!6625724 () Bool)

(declare-fun e!4007802 () Bool)

(assert (=> b!6625724 (= e!4007801 e!4007802)))

(declare-fun res!2716145 () Bool)

(assert (=> b!6625724 (=> (not res!2716145) (not e!4007802))))

(assert (=> b!6625724 (= res!2716145 (dynLambda!26153 lambda!370191 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625725 () Bool)

(assert (=> b!6625725 (= e!4007802 (forall!15690 (t!379444 (exprs!6379 (h!72110 zl!343))) lambda!370191))))

(assert (= (and d!2076841 (not res!2716144)) b!6625724))

(assert (= (and b!6625724 res!2716145) b!6625725))

(declare-fun b_lambda!250509 () Bool)

(assert (=> (not b_lambda!250509) (not b!6625724)))

(declare-fun m!7395988 () Bool)

(assert (=> b!6625724 m!7395988))

(declare-fun m!7395990 () Bool)

(assert (=> b!6625725 m!7395990))

(assert (=> d!2076749 d!2076841))

(declare-fun d!2076843 () Bool)

(declare-fun res!2716150 () Bool)

(declare-fun e!4007804 () Bool)

(assert (=> d!2076843 (=> res!2716150 e!4007804)))

(assert (=> d!2076843 (= res!2716150 ((_ is ElementMatch!16495) lt!2418448))))

(assert (=> d!2076843 (= (validRegex!8231 lt!2418448) e!4007804)))

(declare-fun b!6625726 () Bool)

(declare-fun e!4007809 () Bool)

(declare-fun e!4007805 () Bool)

(assert (=> b!6625726 (= e!4007809 e!4007805)))

(declare-fun res!2716149 () Bool)

(assert (=> b!6625726 (= res!2716149 (not (nullable!6488 (reg!16824 lt!2418448))))))

(assert (=> b!6625726 (=> (not res!2716149) (not e!4007805))))

(declare-fun bm!581063 () Bool)

(declare-fun c!1221744 () Bool)

(declare-fun c!1221743 () Bool)

(declare-fun call!581069 () Bool)

(assert (=> bm!581063 (= call!581069 (validRegex!8231 (ite c!1221744 (reg!16824 lt!2418448) (ite c!1221743 (regOne!33503 lt!2418448) (regOne!33502 lt!2418448)))))))

(declare-fun b!6625727 () Bool)

(declare-fun res!2716148 () Bool)

(declare-fun e!4007806 () Bool)

(assert (=> b!6625727 (=> res!2716148 e!4007806)))

(assert (=> b!6625727 (= res!2716148 (not ((_ is Concat!25340) lt!2418448)))))

(declare-fun e!4007807 () Bool)

(assert (=> b!6625727 (= e!4007807 e!4007806)))

(declare-fun b!6625728 () Bool)

(assert (=> b!6625728 (= e!4007809 e!4007807)))

(assert (=> b!6625728 (= c!1221743 ((_ is Union!16495) lt!2418448))))

(declare-fun b!6625729 () Bool)

(assert (=> b!6625729 (= e!4007805 call!581069)))

(declare-fun b!6625730 () Bool)

(assert (=> b!6625730 (= e!4007804 e!4007809)))

(assert (=> b!6625730 (= c!1221744 ((_ is Star!16495) lt!2418448))))

(declare-fun b!6625731 () Bool)

(declare-fun e!4007803 () Bool)

(declare-fun call!581068 () Bool)

(assert (=> b!6625731 (= e!4007803 call!581068)))

(declare-fun b!6625732 () Bool)

(assert (=> b!6625732 (= e!4007806 e!4007803)))

(declare-fun res!2716146 () Bool)

(assert (=> b!6625732 (=> (not res!2716146) (not e!4007803))))

(declare-fun call!581070 () Bool)

(assert (=> b!6625732 (= res!2716146 call!581070)))

(declare-fun bm!581064 () Bool)

(assert (=> bm!581064 (= call!581068 (validRegex!8231 (ite c!1221743 (regTwo!33503 lt!2418448) (regTwo!33502 lt!2418448))))))

(declare-fun b!6625733 () Bool)

(declare-fun e!4007808 () Bool)

(assert (=> b!6625733 (= e!4007808 call!581068)))

(declare-fun b!6625734 () Bool)

(declare-fun res!2716147 () Bool)

(assert (=> b!6625734 (=> (not res!2716147) (not e!4007808))))

(assert (=> b!6625734 (= res!2716147 call!581070)))

(assert (=> b!6625734 (= e!4007807 e!4007808)))

(declare-fun bm!581065 () Bool)

(assert (=> bm!581065 (= call!581070 call!581069)))

(assert (= (and d!2076843 (not res!2716150)) b!6625730))

(assert (= (and b!6625730 c!1221744) b!6625726))

(assert (= (and b!6625730 (not c!1221744)) b!6625728))

(assert (= (and b!6625726 res!2716149) b!6625729))

(assert (= (and b!6625728 c!1221743) b!6625734))

(assert (= (and b!6625728 (not c!1221743)) b!6625727))

(assert (= (and b!6625734 res!2716147) b!6625733))

(assert (= (and b!6625727 (not res!2716148)) b!6625732))

(assert (= (and b!6625732 res!2716146) b!6625731))

(assert (= (or b!6625733 b!6625731) bm!581064))

(assert (= (or b!6625734 b!6625732) bm!581065))

(assert (= (or b!6625729 bm!581065) bm!581063))

(declare-fun m!7395992 () Bool)

(assert (=> b!6625726 m!7395992))

(declare-fun m!7395994 () Bool)

(assert (=> bm!581063 m!7395994))

(declare-fun m!7395996 () Bool)

(assert (=> bm!581064 m!7395996))

(assert (=> d!2076623 d!2076843))

(declare-fun d!2076845 () Bool)

(declare-fun res!2716151 () Bool)

(declare-fun e!4007810 () Bool)

(assert (=> d!2076845 (=> res!2716151 e!4007810)))

(assert (=> d!2076845 (= res!2716151 ((_ is Nil!65660) (unfocusZipperList!1916 zl!343)))))

(assert (=> d!2076845 (= (forall!15690 (unfocusZipperList!1916 zl!343) lambda!370139) e!4007810)))

(declare-fun b!6625735 () Bool)

(declare-fun e!4007811 () Bool)

(assert (=> b!6625735 (= e!4007810 e!4007811)))

(declare-fun res!2716152 () Bool)

(assert (=> b!6625735 (=> (not res!2716152) (not e!4007811))))

(assert (=> b!6625735 (= res!2716152 (dynLambda!26153 lambda!370139 (h!72108 (unfocusZipperList!1916 zl!343))))))

(declare-fun b!6625736 () Bool)

(assert (=> b!6625736 (= e!4007811 (forall!15690 (t!379444 (unfocusZipperList!1916 zl!343)) lambda!370139))))

(assert (= (and d!2076845 (not res!2716151)) b!6625735))

(assert (= (and b!6625735 res!2716152) b!6625736))

(declare-fun b_lambda!250511 () Bool)

(assert (=> (not b_lambda!250511) (not b!6625735)))

(declare-fun m!7395998 () Bool)

(assert (=> b!6625735 m!7395998))

(declare-fun m!7396000 () Bool)

(assert (=> b!6625736 m!7396000))

(assert (=> d!2076623 d!2076845))

(assert (=> bm!581023 d!2076773))

(assert (=> d!2076709 d!2076773))

(assert (=> d!2076709 d!2076585))

(declare-fun d!2076847 () Bool)

(declare-fun c!1221745 () Bool)

(assert (=> d!2076847 (= c!1221745 (isEmpty!37954 (tail!12517 (t!379445 s!2326))))))

(declare-fun e!4007812 () Bool)

(assert (=> d!2076847 (= (matchZipper!2507 (derivationStepZipper!2461 lt!2418406 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))) e!4007812)))

(declare-fun b!6625737 () Bool)

(assert (=> b!6625737 (= e!4007812 (nullableZipper!2235 (derivationStepZipper!2461 lt!2418406 (head!13432 (t!379445 s!2326)))))))

(declare-fun b!6625738 () Bool)

(assert (=> b!6625738 (= e!4007812 (matchZipper!2507 (derivationStepZipper!2461 (derivationStepZipper!2461 lt!2418406 (head!13432 (t!379445 s!2326))) (head!13432 (tail!12517 (t!379445 s!2326)))) (tail!12517 (tail!12517 (t!379445 s!2326)))))))

(assert (= (and d!2076847 c!1221745) b!6625737))

(assert (= (and d!2076847 (not c!1221745)) b!6625738))

(assert (=> d!2076847 m!7395390))

(assert (=> d!2076847 m!7395884))

(assert (=> b!6625737 m!7395388))

(declare-fun m!7396002 () Bool)

(assert (=> b!6625737 m!7396002))

(assert (=> b!6625738 m!7395390))

(assert (=> b!6625738 m!7395888))

(assert (=> b!6625738 m!7395388))

(assert (=> b!6625738 m!7395888))

(declare-fun m!7396004 () Bool)

(assert (=> b!6625738 m!7396004))

(assert (=> b!6625738 m!7395390))

(assert (=> b!6625738 m!7395892))

(assert (=> b!6625738 m!7396004))

(assert (=> b!6625738 m!7395892))

(declare-fun m!7396006 () Bool)

(assert (=> b!6625738 m!7396006))

(assert (=> b!6624904 d!2076847))

(declare-fun bs!1700535 () Bool)

(declare-fun d!2076849 () Bool)

(assert (= bs!1700535 (and d!2076849 b!6624703)))

(declare-fun lambda!370206 () Int)

(assert (=> bs!1700535 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370206 lambda!370119))))

(declare-fun bs!1700536 () Bool)

(assert (= bs!1700536 (and d!2076849 d!2076575)))

(assert (=> bs!1700536 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370206 lambda!370128))))

(declare-fun bs!1700537 () Bool)

(assert (= bs!1700537 (and d!2076849 d!2076731)))

(assert (=> bs!1700537 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370206 lambda!370186))))

(declare-fun bs!1700538 () Bool)

(assert (= bs!1700538 (and d!2076849 d!2076787)))

(assert (=> bs!1700538 (= lambda!370206 lambda!370198)))

(assert (=> d!2076849 true))

(assert (=> d!2076849 (= (derivationStepZipper!2461 lt!2418406 (head!13432 (t!379445 s!2326))) (flatMap!2000 lt!2418406 lambda!370206))))

(declare-fun bs!1700539 () Bool)

(assert (= bs!1700539 d!2076849))

(declare-fun m!7396008 () Bool)

(assert (=> bs!1700539 m!7396008))

(assert (=> b!6624904 d!2076849))

(assert (=> b!6624904 d!2076789))

(assert (=> b!6624904 d!2076791))

(declare-fun bs!1700540 () Bool)

(declare-fun d!2076851 () Bool)

(assert (= bs!1700540 (and d!2076851 d!2076775)))

(declare-fun lambda!370207 () Int)

(assert (=> bs!1700540 (= lambda!370207 lambda!370196)))

(assert (=> d!2076851 (= (nullableZipper!2235 lt!2418395) (exists!2662 lt!2418395 lambda!370207))))

(declare-fun bs!1700541 () Bool)

(assert (= bs!1700541 d!2076851))

(declare-fun m!7396010 () Bool)

(assert (=> bs!1700541 m!7396010))

(assert (=> b!6624909 d!2076851))

(declare-fun bs!1700542 () Bool)

(declare-fun d!2076853 () Bool)

(assert (= bs!1700542 (and d!2076853 d!2076651)))

(declare-fun lambda!370208 () Int)

(assert (=> bs!1700542 (= lambda!370208 lambda!370148)))

(declare-fun bs!1700543 () Bool)

(assert (= bs!1700543 (and d!2076853 d!2076749)))

(assert (=> bs!1700543 (= lambda!370208 lambda!370191)))

(declare-fun bs!1700544 () Bool)

(assert (= bs!1700544 (and d!2076853 d!2076779)))

(assert (=> bs!1700544 (= lambda!370208 lambda!370197)))

(declare-fun bs!1700545 () Bool)

(assert (= bs!1700545 (and d!2076853 d!2076623)))

(assert (=> bs!1700545 (= lambda!370208 lambda!370139)))

(declare-fun bs!1700546 () Bool)

(assert (= bs!1700546 (and d!2076853 d!2076639)))

(assert (=> bs!1700546 (= lambda!370208 lambda!370145)))

(declare-fun bs!1700547 () Bool)

(assert (= bs!1700547 (and d!2076853 d!2076633)))

(assert (=> bs!1700547 (= lambda!370208 lambda!370142)))

(declare-fun bs!1700548 () Bool)

(assert (= bs!1700548 (and d!2076853 d!2076695)))

(assert (=> bs!1700548 (= lambda!370208 lambda!370167)))

(assert (=> d!2076853 (= (inv!84484 (h!72110 (t!379446 zl!343))) (forall!15690 (exprs!6379 (h!72110 (t!379446 zl!343))) lambda!370208))))

(declare-fun bs!1700549 () Bool)

(assert (= bs!1700549 d!2076853))

(declare-fun m!7396012 () Bool)

(assert (=> bs!1700549 m!7396012))

(assert (=> b!6625503 d!2076853))

(declare-fun d!2076855 () Bool)

(assert (=> d!2076855 (= (nullable!6488 (regOne!33502 r!7292)) (nullableFct!2409 (regOne!33502 r!7292)))))

(declare-fun bs!1700550 () Bool)

(assert (= bs!1700550 d!2076855))

(declare-fun m!7396014 () Bool)

(assert (=> bs!1700550 m!7396014))

(assert (=> b!6625381 d!2076855))

(assert (=> b!6624974 d!2076639))

(declare-fun bs!1700551 () Bool)

(declare-fun d!2076857 () Bool)

(assert (= bs!1700551 (and d!2076857 d!2076651)))

(declare-fun lambda!370209 () Int)

(assert (=> bs!1700551 (= lambda!370209 lambda!370148)))

(declare-fun bs!1700552 () Bool)

(assert (= bs!1700552 (and d!2076857 d!2076749)))

(assert (=> bs!1700552 (= lambda!370209 lambda!370191)))

(declare-fun bs!1700553 () Bool)

(assert (= bs!1700553 (and d!2076857 d!2076779)))

(assert (=> bs!1700553 (= lambda!370209 lambda!370197)))

(declare-fun bs!1700554 () Bool)

(assert (= bs!1700554 (and d!2076857 d!2076623)))

(assert (=> bs!1700554 (= lambda!370209 lambda!370139)))

(declare-fun bs!1700555 () Bool)

(assert (= bs!1700555 (and d!2076857 d!2076639)))

(assert (=> bs!1700555 (= lambda!370209 lambda!370145)))

(declare-fun bs!1700556 () Bool)

(assert (= bs!1700556 (and d!2076857 d!2076853)))

(assert (=> bs!1700556 (= lambda!370209 lambda!370208)))

(declare-fun bs!1700557 () Bool)

(assert (= bs!1700557 (and d!2076857 d!2076633)))

(assert (=> bs!1700557 (= lambda!370209 lambda!370142)))

(declare-fun bs!1700558 () Bool)

(assert (= bs!1700558 (and d!2076857 d!2076695)))

(assert (=> bs!1700558 (= lambda!370209 lambda!370167)))

(declare-fun lt!2418530 () List!65784)

(assert (=> d!2076857 (forall!15690 lt!2418530 lambda!370209)))

(declare-fun e!4007813 () List!65784)

(assert (=> d!2076857 (= lt!2418530 e!4007813)))

(declare-fun c!1221746 () Bool)

(assert (=> d!2076857 (= c!1221746 ((_ is Cons!65662) (t!379446 zl!343)))))

(assert (=> d!2076857 (= (unfocusZipperList!1916 (t!379446 zl!343)) lt!2418530)))

(declare-fun b!6625739 () Bool)

(assert (=> b!6625739 (= e!4007813 (Cons!65660 (generalisedConcat!2092 (exprs!6379 (h!72110 (t!379446 zl!343)))) (unfocusZipperList!1916 (t!379446 (t!379446 zl!343)))))))

(declare-fun b!6625740 () Bool)

(assert (=> b!6625740 (= e!4007813 Nil!65660)))

(assert (= (and d!2076857 c!1221746) b!6625739))

(assert (= (and d!2076857 (not c!1221746)) b!6625740))

(declare-fun m!7396016 () Bool)

(assert (=> d!2076857 m!7396016))

(declare-fun m!7396018 () Bool)

(assert (=> b!6625739 m!7396018))

(declare-fun m!7396020 () Bool)

(assert (=> b!6625739 m!7396020))

(assert (=> b!6624974 d!2076857))

(assert (=> b!6625378 d!2076767))

(assert (=> d!2076737 d!2076773))

(assert (=> d!2076737 d!2076805))

(assert (=> d!2076581 d!2076577))

(declare-fun d!2076859 () Bool)

(assert (=> d!2076859 (= (flatMap!2000 lt!2418411 lambda!370119) (dynLambda!26151 lambda!370119 lt!2418404))))

(assert (=> d!2076859 true))

(declare-fun _$13!3905 () Unit!159335)

(assert (=> d!2076859 (= (choose!49496 lt!2418411 lt!2418404 lambda!370119) _$13!3905)))

(declare-fun b_lambda!250513 () Bool)

(assert (=> (not b_lambda!250513) (not d!2076859)))

(declare-fun bs!1700559 () Bool)

(assert (= bs!1700559 d!2076859))

(assert (=> bs!1700559 m!7395274))

(assert (=> bs!1700559 m!7395332))

(assert (=> d!2076581 d!2076859))

(declare-fun d!2076861 () Bool)

(assert (=> d!2076861 (= (isDefined!13089 lt!2418470) (not (isEmpty!37955 lt!2418470)))))

(declare-fun bs!1700560 () Bool)

(assert (= bs!1700560 d!2076861))

(declare-fun m!7396022 () Bool)

(assert (=> bs!1700560 m!7396022))

(assert (=> d!2076659 d!2076861))

(declare-fun b!6625741 () Bool)

(declare-fun e!4007815 () Bool)

(assert (=> b!6625741 (= e!4007815 (= (head!13432 Nil!65661) (c!1221458 (regOne!33502 r!7292))))))

(declare-fun b!6625742 () Bool)

(declare-fun res!2716159 () Bool)

(assert (=> b!6625742 (=> (not res!2716159) (not e!4007815))))

(declare-fun call!581071 () Bool)

(assert (=> b!6625742 (= res!2716159 (not call!581071))))

(declare-fun b!6625743 () Bool)

(declare-fun res!2716158 () Bool)

(declare-fun e!4007814 () Bool)

(assert (=> b!6625743 (=> res!2716158 e!4007814)))

(assert (=> b!6625743 (= res!2716158 e!4007815)))

(declare-fun res!2716157 () Bool)

(assert (=> b!6625743 (=> (not res!2716157) (not e!4007815))))

(declare-fun lt!2418531 () Bool)

(assert (=> b!6625743 (= res!2716157 lt!2418531)))

(declare-fun bm!581066 () Bool)

(assert (=> bm!581066 (= call!581071 (isEmpty!37954 Nil!65661))))

(declare-fun b!6625744 () Bool)

(declare-fun e!4007819 () Bool)

(assert (=> b!6625744 (= e!4007819 (nullable!6488 (regOne!33502 r!7292)))))

(declare-fun b!6625745 () Bool)

(declare-fun e!4007820 () Bool)

(assert (=> b!6625745 (= e!4007820 (= lt!2418531 call!581071))))

(declare-fun b!6625746 () Bool)

(declare-fun e!4007817 () Bool)

(assert (=> b!6625746 (= e!4007817 (not lt!2418531))))

(declare-fun b!6625748 () Bool)

(assert (=> b!6625748 (= e!4007820 e!4007817)))

(declare-fun c!1221748 () Bool)

(assert (=> b!6625748 (= c!1221748 ((_ is EmptyLang!16495) (regOne!33502 r!7292)))))

(declare-fun b!6625749 () Bool)

(declare-fun e!4007818 () Bool)

(assert (=> b!6625749 (= e!4007818 (not (= (head!13432 Nil!65661) (c!1221458 (regOne!33502 r!7292)))))))

(declare-fun b!6625750 () Bool)

(declare-fun res!2716156 () Bool)

(assert (=> b!6625750 (=> res!2716156 e!4007814)))

(assert (=> b!6625750 (= res!2716156 (not ((_ is ElementMatch!16495) (regOne!33502 r!7292))))))

(assert (=> b!6625750 (= e!4007817 e!4007814)))

(declare-fun b!6625747 () Bool)

(declare-fun e!4007816 () Bool)

(assert (=> b!6625747 (= e!4007816 e!4007818)))

(declare-fun res!2716160 () Bool)

(assert (=> b!6625747 (=> res!2716160 e!4007818)))

(assert (=> b!6625747 (= res!2716160 call!581071)))

(declare-fun d!2076863 () Bool)

(assert (=> d!2076863 e!4007820))

(declare-fun c!1221749 () Bool)

(assert (=> d!2076863 (= c!1221749 ((_ is EmptyExpr!16495) (regOne!33502 r!7292)))))

(assert (=> d!2076863 (= lt!2418531 e!4007819)))

(declare-fun c!1221747 () Bool)

(assert (=> d!2076863 (= c!1221747 (isEmpty!37954 Nil!65661))))

(assert (=> d!2076863 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076863 (= (matchR!8678 (regOne!33502 r!7292) Nil!65661) lt!2418531)))

(declare-fun b!6625751 () Bool)

(assert (=> b!6625751 (= e!4007819 (matchR!8678 (derivativeStep!5175 (regOne!33502 r!7292) (head!13432 Nil!65661)) (tail!12517 Nil!65661)))))

(declare-fun b!6625752 () Bool)

(declare-fun res!2716155 () Bool)

(assert (=> b!6625752 (=> (not res!2716155) (not e!4007815))))

(assert (=> b!6625752 (= res!2716155 (isEmpty!37954 (tail!12517 Nil!65661)))))

(declare-fun b!6625753 () Bool)

(declare-fun res!2716153 () Bool)

(assert (=> b!6625753 (=> res!2716153 e!4007818)))

(assert (=> b!6625753 (= res!2716153 (not (isEmpty!37954 (tail!12517 Nil!65661))))))

(declare-fun b!6625754 () Bool)

(assert (=> b!6625754 (= e!4007814 e!4007816)))

(declare-fun res!2716154 () Bool)

(assert (=> b!6625754 (=> (not res!2716154) (not e!4007816))))

(assert (=> b!6625754 (= res!2716154 (not lt!2418531))))

(assert (= (and d!2076863 c!1221747) b!6625744))

(assert (= (and d!2076863 (not c!1221747)) b!6625751))

(assert (= (and d!2076863 c!1221749) b!6625745))

(assert (= (and d!2076863 (not c!1221749)) b!6625748))

(assert (= (and b!6625748 c!1221748) b!6625746))

(assert (= (and b!6625748 (not c!1221748)) b!6625750))

(assert (= (and b!6625750 (not res!2716156)) b!6625743))

(assert (= (and b!6625743 res!2716157) b!6625742))

(assert (= (and b!6625742 res!2716159) b!6625752))

(assert (= (and b!6625752 res!2716155) b!6625741))

(assert (= (and b!6625743 (not res!2716158)) b!6625754))

(assert (= (and b!6625754 res!2716154) b!6625747))

(assert (= (and b!6625747 (not res!2716160)) b!6625753))

(assert (= (and b!6625753 (not res!2716153)) b!6625749))

(assert (= (or b!6625745 b!6625742 b!6625747) bm!581066))

(declare-fun m!7396024 () Bool)

(assert (=> b!6625749 m!7396024))

(assert (=> b!6625744 m!7395764))

(assert (=> b!6625751 m!7396024))

(assert (=> b!6625751 m!7396024))

(declare-fun m!7396026 () Bool)

(assert (=> b!6625751 m!7396026))

(declare-fun m!7396028 () Bool)

(assert (=> b!6625751 m!7396028))

(assert (=> b!6625751 m!7396026))

(assert (=> b!6625751 m!7396028))

(declare-fun m!7396030 () Bool)

(assert (=> b!6625751 m!7396030))

(assert (=> b!6625753 m!7396028))

(assert (=> b!6625753 m!7396028))

(declare-fun m!7396032 () Bool)

(assert (=> b!6625753 m!7396032))

(assert (=> b!6625741 m!7396024))

(declare-fun m!7396034 () Bool)

(assert (=> bm!581066 m!7396034))

(assert (=> b!6625752 m!7396028))

(assert (=> b!6625752 m!7396028))

(assert (=> b!6625752 m!7396032))

(assert (=> d!2076863 m!7396034))

(assert (=> d!2076863 m!7395552))

(assert (=> d!2076659 d!2076863))

(assert (=> d!2076659 d!2076805))

(declare-fun bs!1700561 () Bool)

(declare-fun d!2076865 () Bool)

(assert (= bs!1700561 (and d!2076865 d!2076775)))

(declare-fun lambda!370210 () Int)

(assert (=> bs!1700561 (= lambda!370210 lambda!370196)))

(declare-fun bs!1700562 () Bool)

(assert (= bs!1700562 (and d!2076865 d!2076851)))

(assert (=> bs!1700562 (= lambda!370210 lambda!370207)))

(assert (=> d!2076865 (= (nullableZipper!2235 z!1189) (exists!2662 z!1189 lambda!370210))))

(declare-fun bs!1700563 () Bool)

(assert (= bs!1700563 d!2076865))

(declare-fun m!7396036 () Bool)

(assert (=> bs!1700563 m!7396036))

(assert (=> b!6624905 d!2076865))

(declare-fun d!2076867 () Bool)

(assert (=> d!2076867 (= (isEmpty!37952 (exprs!6379 (h!72110 zl!343))) ((_ is Nil!65660) (exprs!6379 (h!72110 zl!343))))))

(assert (=> b!6625005 d!2076867))

(assert (=> b!6625326 d!2076767))

(declare-fun b!6625755 () Bool)

(declare-fun e!4007824 () Bool)

(assert (=> b!6625755 (= e!4007824 (nullable!6488 (regOne!33502 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))))

(declare-fun bm!581068 () Bool)

(declare-fun call!581074 () (InoxSet Context!11758))

(declare-fun call!581076 () (InoxSet Context!11758))

(assert (=> bm!581068 (= call!581074 call!581076)))

(declare-fun b!6625756 () Bool)

(declare-fun e!4007821 () (InoxSet Context!11758))

(declare-fun call!581072 () (InoxSet Context!11758))

(assert (=> b!6625756 (= e!4007821 ((_ map or) call!581076 call!581072))))

(declare-fun b!6625757 () Bool)

(declare-fun c!1221753 () Bool)

(assert (=> b!6625757 (= c!1221753 ((_ is Star!16495) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun e!4007822 () (InoxSet Context!11758))

(declare-fun e!4007823 () (InoxSet Context!11758))

(assert (=> b!6625757 (= e!4007822 e!4007823)))

(declare-fun b!6625758 () Bool)

(declare-fun call!581075 () (InoxSet Context!11758))

(assert (=> b!6625758 (= e!4007822 call!581075)))

(declare-fun c!1221752 () Bool)

(declare-fun call!581073 () List!65784)

(declare-fun c!1221750 () Bool)

(declare-fun c!1221751 () Bool)

(declare-fun bm!581069 () Bool)

(assert (=> bm!581069 (= call!581076 (derivationStepZipperDown!1743 (ite c!1221750 (regOne!33503 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (ite c!1221752 (regTwo!33502 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (ite c!1221751 (regOne!33502 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (reg!16824 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))) (ite (or c!1221750 c!1221752) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (Context!11759 call!581073)) (h!72109 s!2326)))))

(declare-fun b!6625759 () Bool)

(assert (=> b!6625759 (= e!4007823 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625760 () Bool)

(declare-fun e!4007825 () (InoxSet Context!11758))

(assert (=> b!6625760 (= e!4007825 e!4007822)))

(assert (=> b!6625760 (= c!1221751 ((_ is Concat!25340) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun bm!581070 () Bool)

(declare-fun call!581077 () List!65784)

(assert (=> bm!581070 (= call!581077 ($colon$colon!2331 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))) (ite (or c!1221752 c!1221751) (regTwo!33502 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))))

(declare-fun b!6625761 () Bool)

(assert (=> b!6625761 (= e!4007825 ((_ map or) call!581072 call!581074))))

(declare-fun b!6625762 () Bool)

(assert (=> b!6625762 (= e!4007823 call!581075)))

(declare-fun bm!581071 () Bool)

(assert (=> bm!581071 (= call!581075 call!581074)))

(declare-fun bm!581067 () Bool)

(assert (=> bm!581067 (= call!581072 (derivationStepZipperDown!1743 (ite c!1221750 (regTwo!33503 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (regOne!33502 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))) (ite c!1221750 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (Context!11759 call!581077)) (h!72109 s!2326)))))

(declare-fun d!2076869 () Bool)

(declare-fun c!1221754 () Bool)

(assert (=> d!2076869 (= c!1221754 (and ((_ is ElementMatch!16495) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (= (c!1221458 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326))))))

(declare-fun e!4007826 () (InoxSet Context!11758))

(assert (=> d!2076869 (= (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326)) e!4007826)))

(declare-fun b!6625763 () Bool)

(assert (=> b!6625763 (= c!1221752 e!4007824)))

(declare-fun res!2716161 () Bool)

(assert (=> b!6625763 (=> (not res!2716161) (not e!4007824))))

(assert (=> b!6625763 (= res!2716161 ((_ is Concat!25340) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(assert (=> b!6625763 (= e!4007821 e!4007825)))

(declare-fun b!6625764 () Bool)

(assert (=> b!6625764 (= e!4007826 e!4007821)))

(assert (=> b!6625764 (= c!1221750 ((_ is Union!16495) (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun bm!581072 () Bool)

(assert (=> bm!581072 (= call!581073 call!581077)))

(declare-fun b!6625765 () Bool)

(assert (=> b!6625765 (= e!4007826 (store ((as const (Array Context!11758 Bool)) false) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) true))))

(assert (= (and d!2076869 c!1221754) b!6625765))

(assert (= (and d!2076869 (not c!1221754)) b!6625764))

(assert (= (and b!6625764 c!1221750) b!6625756))

(assert (= (and b!6625764 (not c!1221750)) b!6625763))

(assert (= (and b!6625763 res!2716161) b!6625755))

(assert (= (and b!6625763 c!1221752) b!6625761))

(assert (= (and b!6625763 (not c!1221752)) b!6625760))

(assert (= (and b!6625760 c!1221751) b!6625758))

(assert (= (and b!6625760 (not c!1221751)) b!6625757))

(assert (= (and b!6625757 c!1221753) b!6625762))

(assert (= (and b!6625757 (not c!1221753)) b!6625759))

(assert (= (or b!6625758 b!6625762) bm!581072))

(assert (= (or b!6625758 b!6625762) bm!581071))

(assert (= (or b!6625761 bm!581072) bm!581070))

(assert (= (or b!6625761 bm!581071) bm!581068))

(assert (= (or b!6625756 b!6625761) bm!581067))

(assert (= (or b!6625756 bm!581068) bm!581069))

(declare-fun m!7396038 () Bool)

(assert (=> bm!581070 m!7396038))

(declare-fun m!7396040 () Bool)

(assert (=> bm!581069 m!7396040))

(declare-fun m!7396042 () Bool)

(assert (=> b!6625755 m!7396042))

(declare-fun m!7396044 () Bool)

(assert (=> b!6625765 m!7396044))

(declare-fun m!7396046 () Bool)

(assert (=> bm!581067 m!7396046))

(assert (=> bm!580957 d!2076869))

(declare-fun d!2076871 () Bool)

(declare-fun res!2716166 () Bool)

(declare-fun e!4007828 () Bool)

(assert (=> d!2076871 (=> res!2716166 e!4007828)))

(assert (=> d!2076871 (= res!2716166 ((_ is ElementMatch!16495) lt!2418494))))

(assert (=> d!2076871 (= (validRegex!8231 lt!2418494) e!4007828)))

(declare-fun b!6625766 () Bool)

(declare-fun e!4007833 () Bool)

(declare-fun e!4007829 () Bool)

(assert (=> b!6625766 (= e!4007833 e!4007829)))

(declare-fun res!2716165 () Bool)

(assert (=> b!6625766 (= res!2716165 (not (nullable!6488 (reg!16824 lt!2418494))))))

(assert (=> b!6625766 (=> (not res!2716165) (not e!4007829))))

(declare-fun c!1221755 () Bool)

(declare-fun call!581079 () Bool)

(declare-fun bm!581073 () Bool)

(declare-fun c!1221756 () Bool)

(assert (=> bm!581073 (= call!581079 (validRegex!8231 (ite c!1221756 (reg!16824 lt!2418494) (ite c!1221755 (regOne!33503 lt!2418494) (regOne!33502 lt!2418494)))))))

(declare-fun b!6625767 () Bool)

(declare-fun res!2716164 () Bool)

(declare-fun e!4007830 () Bool)

(assert (=> b!6625767 (=> res!2716164 e!4007830)))

(assert (=> b!6625767 (= res!2716164 (not ((_ is Concat!25340) lt!2418494)))))

(declare-fun e!4007831 () Bool)

(assert (=> b!6625767 (= e!4007831 e!4007830)))

(declare-fun b!6625768 () Bool)

(assert (=> b!6625768 (= e!4007833 e!4007831)))

(assert (=> b!6625768 (= c!1221755 ((_ is Union!16495) lt!2418494))))

(declare-fun b!6625769 () Bool)

(assert (=> b!6625769 (= e!4007829 call!581079)))

(declare-fun b!6625770 () Bool)

(assert (=> b!6625770 (= e!4007828 e!4007833)))

(assert (=> b!6625770 (= c!1221756 ((_ is Star!16495) lt!2418494))))

(declare-fun b!6625771 () Bool)

(declare-fun e!4007827 () Bool)

(declare-fun call!581078 () Bool)

(assert (=> b!6625771 (= e!4007827 call!581078)))

(declare-fun b!6625772 () Bool)

(assert (=> b!6625772 (= e!4007830 e!4007827)))

(declare-fun res!2716162 () Bool)

(assert (=> b!6625772 (=> (not res!2716162) (not e!4007827))))

(declare-fun call!581080 () Bool)

(assert (=> b!6625772 (= res!2716162 call!581080)))

(declare-fun bm!581074 () Bool)

(assert (=> bm!581074 (= call!581078 (validRegex!8231 (ite c!1221755 (regTwo!33503 lt!2418494) (regTwo!33502 lt!2418494))))))

(declare-fun b!6625773 () Bool)

(declare-fun e!4007832 () Bool)

(assert (=> b!6625773 (= e!4007832 call!581078)))

(declare-fun b!6625774 () Bool)

(declare-fun res!2716163 () Bool)

(assert (=> b!6625774 (=> (not res!2716163) (not e!4007832))))

(assert (=> b!6625774 (= res!2716163 call!581080)))

(assert (=> b!6625774 (= e!4007831 e!4007832)))

(declare-fun bm!581075 () Bool)

(assert (=> bm!581075 (= call!581080 call!581079)))

(assert (= (and d!2076871 (not res!2716166)) b!6625770))

(assert (= (and b!6625770 c!1221756) b!6625766))

(assert (= (and b!6625770 (not c!1221756)) b!6625768))

(assert (= (and b!6625766 res!2716165) b!6625769))

(assert (= (and b!6625768 c!1221755) b!6625774))

(assert (= (and b!6625768 (not c!1221755)) b!6625767))

(assert (= (and b!6625774 res!2716163) b!6625773))

(assert (= (and b!6625767 (not res!2716164)) b!6625772))

(assert (= (and b!6625772 res!2716162) b!6625771))

(assert (= (or b!6625773 b!6625771) bm!581074))

(assert (= (or b!6625774 b!6625772) bm!581075))

(assert (= (or b!6625769 bm!581075) bm!581073))

(declare-fun m!7396048 () Bool)

(assert (=> b!6625766 m!7396048))

(declare-fun m!7396050 () Bool)

(assert (=> bm!581073 m!7396050))

(declare-fun m!7396052 () Bool)

(assert (=> bm!581074 m!7396052))

(assert (=> d!2076695 d!2076871))

(declare-fun d!2076873 () Bool)

(declare-fun res!2716167 () Bool)

(declare-fun e!4007834 () Bool)

(assert (=> d!2076873 (=> res!2716167 e!4007834)))

(assert (=> d!2076873 (= res!2716167 ((_ is Nil!65660) (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> d!2076873 (= (forall!15690 (t!379444 (exprs!6379 (h!72110 zl!343))) lambda!370167) e!4007834)))

(declare-fun b!6625775 () Bool)

(declare-fun e!4007835 () Bool)

(assert (=> b!6625775 (= e!4007834 e!4007835)))

(declare-fun res!2716168 () Bool)

(assert (=> b!6625775 (=> (not res!2716168) (not e!4007835))))

(assert (=> b!6625775 (= res!2716168 (dynLambda!26153 lambda!370167 (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625776 () Bool)

(assert (=> b!6625776 (= e!4007835 (forall!15690 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))) lambda!370167))))

(assert (= (and d!2076873 (not res!2716167)) b!6625775))

(assert (= (and b!6625775 res!2716168) b!6625776))

(declare-fun b_lambda!250515 () Bool)

(assert (=> (not b_lambda!250515) (not b!6625775)))

(declare-fun m!7396054 () Bool)

(assert (=> b!6625775 m!7396054))

(declare-fun m!7396056 () Bool)

(assert (=> b!6625776 m!7396056))

(assert (=> d!2076695 d!2076873))

(declare-fun bs!1700564 () Bool)

(declare-fun d!2076875 () Bool)

(assert (= bs!1700564 (and d!2076875 d!2076857)))

(declare-fun lambda!370211 () Int)

(assert (=> bs!1700564 (= lambda!370211 lambda!370209)))

(declare-fun bs!1700565 () Bool)

(assert (= bs!1700565 (and d!2076875 d!2076651)))

(assert (=> bs!1700565 (= lambda!370211 lambda!370148)))

(declare-fun bs!1700566 () Bool)

(assert (= bs!1700566 (and d!2076875 d!2076749)))

(assert (=> bs!1700566 (= lambda!370211 lambda!370191)))

(declare-fun bs!1700567 () Bool)

(assert (= bs!1700567 (and d!2076875 d!2076779)))

(assert (=> bs!1700567 (= lambda!370211 lambda!370197)))

(declare-fun bs!1700568 () Bool)

(assert (= bs!1700568 (and d!2076875 d!2076623)))

(assert (=> bs!1700568 (= lambda!370211 lambda!370139)))

(declare-fun bs!1700569 () Bool)

(assert (= bs!1700569 (and d!2076875 d!2076639)))

(assert (=> bs!1700569 (= lambda!370211 lambda!370145)))

(declare-fun bs!1700570 () Bool)

(assert (= bs!1700570 (and d!2076875 d!2076853)))

(assert (=> bs!1700570 (= lambda!370211 lambda!370208)))

(declare-fun bs!1700571 () Bool)

(assert (= bs!1700571 (and d!2076875 d!2076633)))

(assert (=> bs!1700571 (= lambda!370211 lambda!370142)))

(declare-fun bs!1700572 () Bool)

(assert (= bs!1700572 (and d!2076875 d!2076695)))

(assert (=> bs!1700572 (= lambda!370211 lambda!370167)))

(declare-fun b!6625777 () Bool)

(declare-fun e!4007838 () Bool)

(declare-fun lt!2418532 () Regex!16495)

(assert (=> b!6625777 (= e!4007838 (isConcat!1391 lt!2418532))))

(declare-fun e!4007840 () Bool)

(assert (=> d!2076875 e!4007840))

(declare-fun res!2716169 () Bool)

(assert (=> d!2076875 (=> (not res!2716169) (not e!4007840))))

(assert (=> d!2076875 (= res!2716169 (validRegex!8231 lt!2418532))))

(declare-fun e!4007841 () Regex!16495)

(assert (=> d!2076875 (= lt!2418532 e!4007841)))

(declare-fun c!1221757 () Bool)

(declare-fun e!4007839 () Bool)

(assert (=> d!2076875 (= c!1221757 e!4007839)))

(declare-fun res!2716170 () Bool)

(assert (=> d!2076875 (=> (not res!2716170) (not e!4007839))))

(assert (=> d!2076875 (= res!2716170 ((_ is Cons!65660) (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(assert (=> d!2076875 (forall!15690 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))) lambda!370211)))

(assert (=> d!2076875 (= (generalisedConcat!2092 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))) lt!2418532)))

(declare-fun b!6625778 () Bool)

(declare-fun e!4007836 () Bool)

(assert (=> b!6625778 (= e!4007840 e!4007836)))

(declare-fun c!1221758 () Bool)

(assert (=> b!6625778 (= c!1221758 (isEmpty!37952 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625779 () Bool)

(declare-fun e!4007837 () Regex!16495)

(assert (=> b!6625779 (= e!4007841 e!4007837)))

(declare-fun c!1221760 () Bool)

(assert (=> b!6625779 (= c!1221760 ((_ is Cons!65660) (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun b!6625780 () Bool)

(assert (=> b!6625780 (= e!4007836 e!4007838)))

(declare-fun c!1221759 () Bool)

(assert (=> b!6625780 (= c!1221759 (isEmpty!37952 (tail!12518 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625781 () Bool)

(assert (=> b!6625781 (= e!4007837 (Concat!25340 (h!72108 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))) (generalisedConcat!2092 (t!379444 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun b!6625782 () Bool)

(assert (=> b!6625782 (= e!4007838 (= lt!2418532 (head!13433 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625783 () Bool)

(assert (=> b!6625783 (= e!4007836 (isEmptyExpr!1868 lt!2418532))))

(declare-fun b!6625784 () Bool)

(assert (=> b!6625784 (= e!4007837 EmptyExpr!16495)))

(declare-fun b!6625785 () Bool)

(assert (=> b!6625785 (= e!4007839 (isEmpty!37952 (t!379444 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625786 () Bool)

(assert (=> b!6625786 (= e!4007841 (h!72108 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(assert (= (and d!2076875 res!2716170) b!6625785))

(assert (= (and d!2076875 c!1221757) b!6625786))

(assert (= (and d!2076875 (not c!1221757)) b!6625779))

(assert (= (and b!6625779 c!1221760) b!6625781))

(assert (= (and b!6625779 (not c!1221760)) b!6625784))

(assert (= (and d!2076875 res!2716169) b!6625778))

(assert (= (and b!6625778 c!1221758) b!6625783))

(assert (= (and b!6625778 (not c!1221758)) b!6625780))

(assert (= (and b!6625780 c!1221759) b!6625782))

(assert (= (and b!6625780 (not c!1221759)) b!6625777))

(declare-fun m!7396058 () Bool)

(assert (=> b!6625777 m!7396058))

(declare-fun m!7396060 () Bool)

(assert (=> b!6625782 m!7396060))

(declare-fun m!7396062 () Bool)

(assert (=> b!6625780 m!7396062))

(assert (=> b!6625780 m!7396062))

(declare-fun m!7396064 () Bool)

(assert (=> b!6625780 m!7396064))

(declare-fun m!7396066 () Bool)

(assert (=> b!6625781 m!7396066))

(declare-fun m!7396068 () Bool)

(assert (=> b!6625783 m!7396068))

(declare-fun m!7396070 () Bool)

(assert (=> d!2076875 m!7396070))

(declare-fun m!7396072 () Bool)

(assert (=> d!2076875 m!7396072))

(declare-fun m!7396074 () Bool)

(assert (=> b!6625785 m!7396074))

(assert (=> b!6625778 m!7395662))

(assert (=> b!6625150 d!2076875))

(declare-fun b!6625802 () Bool)

(declare-fun e!4007859 () Bool)

(declare-fun call!581086 () Bool)

(assert (=> b!6625802 (= e!4007859 call!581086)))

(declare-fun b!6625803 () Bool)

(declare-fun e!4007855 () Bool)

(assert (=> b!6625803 (= e!4007855 e!4007859)))

(declare-fun res!2716181 () Bool)

(declare-fun call!581085 () Bool)

(assert (=> b!6625803 (= res!2716181 call!581085)))

(assert (=> b!6625803 (=> res!2716181 e!4007859)))

(declare-fun b!6625804 () Bool)

(declare-fun e!4007854 () Bool)

(assert (=> b!6625804 (= e!4007854 e!4007855)))

(declare-fun c!1221763 () Bool)

(assert (=> b!6625804 (= c!1221763 ((_ is Union!16495) (regOne!33502 (regOne!33502 r!7292))))))

(declare-fun b!6625805 () Bool)

(declare-fun e!4007856 () Bool)

(assert (=> b!6625805 (= e!4007855 e!4007856)))

(declare-fun res!2716184 () Bool)

(assert (=> b!6625805 (= res!2716184 call!581085)))

(assert (=> b!6625805 (=> (not res!2716184) (not e!4007856))))

(declare-fun bm!581080 () Bool)

(assert (=> bm!581080 (= call!581086 (nullable!6488 (ite c!1221763 (regTwo!33503 (regOne!33502 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33502 (regOne!33502 r!7292))))))))

(declare-fun b!6625801 () Bool)

(declare-fun e!4007857 () Bool)

(declare-fun e!4007858 () Bool)

(assert (=> b!6625801 (= e!4007857 e!4007858)))

(declare-fun res!2716185 () Bool)

(assert (=> b!6625801 (=> (not res!2716185) (not e!4007858))))

(assert (=> b!6625801 (= res!2716185 (and (not ((_ is EmptyLang!16495) (regOne!33502 (regOne!33502 r!7292)))) (not ((_ is ElementMatch!16495) (regOne!33502 (regOne!33502 r!7292))))))))

(declare-fun d!2076877 () Bool)

(declare-fun res!2716183 () Bool)

(assert (=> d!2076877 (=> res!2716183 e!4007857)))

(assert (=> d!2076877 (= res!2716183 ((_ is EmptyExpr!16495) (regOne!33502 (regOne!33502 r!7292))))))

(assert (=> d!2076877 (= (nullableFct!2409 (regOne!33502 (regOne!33502 r!7292))) e!4007857)))

(declare-fun bm!581081 () Bool)

(assert (=> bm!581081 (= call!581085 (nullable!6488 (ite c!1221763 (regOne!33503 (regOne!33502 (regOne!33502 r!7292))) (regOne!33502 (regOne!33502 (regOne!33502 r!7292))))))))

(declare-fun b!6625806 () Bool)

(assert (=> b!6625806 (= e!4007858 e!4007854)))

(declare-fun res!2716182 () Bool)

(assert (=> b!6625806 (=> res!2716182 e!4007854)))

(assert (=> b!6625806 (= res!2716182 ((_ is Star!16495) (regOne!33502 (regOne!33502 r!7292))))))

(declare-fun b!6625807 () Bool)

(assert (=> b!6625807 (= e!4007856 call!581086)))

(assert (= (and d!2076877 (not res!2716183)) b!6625801))

(assert (= (and b!6625801 res!2716185) b!6625806))

(assert (= (and b!6625806 (not res!2716182)) b!6625804))

(assert (= (and b!6625804 c!1221763) b!6625803))

(assert (= (and b!6625804 (not c!1221763)) b!6625805))

(assert (= (and b!6625803 (not res!2716181)) b!6625802))

(assert (= (and b!6625805 res!2716184) b!6625807))

(assert (= (or b!6625802 b!6625807) bm!581080))

(assert (= (or b!6625803 b!6625805) bm!581081))

(declare-fun m!7396076 () Bool)

(assert (=> bm!581080 m!7396076))

(declare-fun m!7396078 () Bool)

(assert (=> bm!581081 m!7396078))

(assert (=> d!2076655 d!2076877))

(declare-fun b!6625808 () Bool)

(declare-fun e!4007861 () (InoxSet Context!11758))

(assert (=> b!6625808 (= e!4007861 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2076879 () Bool)

(declare-fun c!1221765 () Bool)

(declare-fun e!4007860 () Bool)

(assert (=> d!2076879 (= c!1221765 e!4007860)))

(declare-fun res!2716186 () Bool)

(assert (=> d!2076879 (=> (not res!2716186) (not e!4007860))))

(assert (=> d!2076879 (= res!2716186 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))))

(declare-fun e!4007862 () (InoxSet Context!11758))

(assert (=> d!2076879 (= (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (h!72109 s!2326)) e!4007862)))

(declare-fun b!6625809 () Bool)

(assert (=> b!6625809 (= e!4007862 e!4007861)))

(declare-fun c!1221764 () Bool)

(assert (=> b!6625809 (= c!1221764 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))))

(declare-fun b!6625810 () Bool)

(declare-fun call!581087 () (InoxSet Context!11758))

(assert (=> b!6625810 (= e!4007862 ((_ map or) call!581087 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))) (h!72109 s!2326))))))

(declare-fun b!6625811 () Bool)

(assert (=> b!6625811 (= e!4007861 call!581087)))

(declare-fun b!6625812 () Bool)

(assert (=> b!6625812 (= e!4007860 (nullable!6488 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))))))

(declare-fun bm!581082 () Bool)

(assert (=> bm!581082 (= call!581087 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))))))) (h!72109 s!2326)))))

(assert (= (and d!2076879 res!2716186) b!6625812))

(assert (= (and d!2076879 c!1221765) b!6625810))

(assert (= (and d!2076879 (not c!1221765)) b!6625809))

(assert (= (and b!6625809 c!1221764) b!6625811))

(assert (= (and b!6625809 (not c!1221764)) b!6625808))

(assert (= (or b!6625810 b!6625811) bm!581082))

(declare-fun m!7396080 () Bool)

(assert (=> b!6625810 m!7396080))

(declare-fun m!7396082 () Bool)

(assert (=> b!6625812 m!7396082))

(declare-fun m!7396084 () Bool)

(assert (=> bm!581082 m!7396084))

(assert (=> b!6625088 d!2076879))

(declare-fun d!2076881 () Bool)

(assert (=> d!2076881 (= (isConcat!1391 lt!2418494) ((_ is Concat!25340) lt!2418494))))

(assert (=> b!6625146 d!2076881))

(assert (=> b!6625034 d!2076741))

(declare-fun b!6625813 () Bool)

(declare-fun e!4007864 () Bool)

(assert (=> b!6625813 (= e!4007864 (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)))))))

(declare-fun b!6625814 () Bool)

(declare-fun res!2716193 () Bool)

(assert (=> b!6625814 (=> (not res!2716193) (not e!4007864))))

(declare-fun call!581088 () Bool)

(assert (=> b!6625814 (= res!2716193 (not call!581088))))

(declare-fun b!6625815 () Bool)

(declare-fun res!2716192 () Bool)

(declare-fun e!4007863 () Bool)

(assert (=> b!6625815 (=> res!2716192 e!4007863)))

(assert (=> b!6625815 (= res!2716192 e!4007864)))

(declare-fun res!2716191 () Bool)

(assert (=> b!6625815 (=> (not res!2716191) (not e!4007864))))

(declare-fun lt!2418533 () Bool)

(assert (=> b!6625815 (= res!2716191 lt!2418533)))

(declare-fun bm!581083 () Bool)

(assert (=> bm!581083 (= call!581088 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6625816 () Bool)

(declare-fun e!4007868 () Bool)

(assert (=> b!6625816 (= e!4007868 (nullable!6488 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326))))))

(declare-fun b!6625817 () Bool)

(declare-fun e!4007869 () Bool)

(assert (=> b!6625817 (= e!4007869 (= lt!2418533 call!581088))))

(declare-fun b!6625818 () Bool)

(declare-fun e!4007866 () Bool)

(assert (=> b!6625818 (= e!4007866 (not lt!2418533))))

(declare-fun b!6625820 () Bool)

(assert (=> b!6625820 (= e!4007869 e!4007866)))

(declare-fun c!1221767 () Bool)

(assert (=> b!6625820 (= c!1221767 ((_ is EmptyLang!16495) (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326))))))

(declare-fun b!6625821 () Bool)

(declare-fun e!4007867 () Bool)

(assert (=> b!6625821 (= e!4007867 (not (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326))))))))

(declare-fun b!6625822 () Bool)

(declare-fun res!2716190 () Bool)

(assert (=> b!6625822 (=> res!2716190 e!4007863)))

(assert (=> b!6625822 (= res!2716190 (not ((_ is ElementMatch!16495) (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)))))))

(assert (=> b!6625822 (= e!4007866 e!4007863)))

(declare-fun b!6625819 () Bool)

(declare-fun e!4007865 () Bool)

(assert (=> b!6625819 (= e!4007865 e!4007867)))

(declare-fun res!2716194 () Bool)

(assert (=> b!6625819 (=> res!2716194 e!4007867)))

(assert (=> b!6625819 (= res!2716194 call!581088)))

(declare-fun d!2076883 () Bool)

(assert (=> d!2076883 e!4007869))

(declare-fun c!1221768 () Bool)

(assert (=> d!2076883 (= c!1221768 ((_ is EmptyExpr!16495) (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326))))))

(assert (=> d!2076883 (= lt!2418533 e!4007868)))

(declare-fun c!1221766 () Bool)

(assert (=> d!2076883 (= c!1221766 (isEmpty!37954 (tail!12517 s!2326)))))

(assert (=> d!2076883 (validRegex!8231 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)))))

(assert (=> d!2076883 (= (matchR!8678 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)) (tail!12517 s!2326)) lt!2418533)))

(declare-fun b!6625823 () Bool)

(assert (=> b!6625823 (= e!4007868 (matchR!8678 (derivativeStep!5175 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)) (head!13432 (tail!12517 s!2326))) (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6625824 () Bool)

(declare-fun res!2716189 () Bool)

(assert (=> b!6625824 (=> (not res!2716189) (not e!4007864))))

(assert (=> b!6625824 (= res!2716189 (isEmpty!37954 (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6625825 () Bool)

(declare-fun res!2716187 () Bool)

(assert (=> b!6625825 (=> res!2716187 e!4007867)))

(assert (=> b!6625825 (= res!2716187 (not (isEmpty!37954 (tail!12517 (tail!12517 s!2326)))))))

(declare-fun b!6625826 () Bool)

(assert (=> b!6625826 (= e!4007863 e!4007865)))

(declare-fun res!2716188 () Bool)

(assert (=> b!6625826 (=> (not res!2716188) (not e!4007865))))

(assert (=> b!6625826 (= res!2716188 (not lt!2418533))))

(assert (= (and d!2076883 c!1221766) b!6625816))

(assert (= (and d!2076883 (not c!1221766)) b!6625823))

(assert (= (and d!2076883 c!1221768) b!6625817))

(assert (= (and d!2076883 (not c!1221768)) b!6625820))

(assert (= (and b!6625820 c!1221767) b!6625818))

(assert (= (and b!6625820 (not c!1221767)) b!6625822))

(assert (= (and b!6625822 (not res!2716190)) b!6625815))

(assert (= (and b!6625815 res!2716191) b!6625814))

(assert (= (and b!6625814 res!2716193) b!6625824))

(assert (= (and b!6625824 res!2716189) b!6625813))

(assert (= (and b!6625815 (not res!2716192)) b!6625826))

(assert (= (and b!6625826 res!2716188) b!6625819))

(assert (= (and b!6625819 (not res!2716194)) b!6625825))

(assert (= (and b!6625825 (not res!2716187)) b!6625821))

(assert (= (or b!6625817 b!6625814 b!6625819) bm!581083))

(assert (=> b!6625821 m!7395410))

(assert (=> b!6625821 m!7395968))

(assert (=> b!6625816 m!7395786))

(declare-fun m!7396086 () Bool)

(assert (=> b!6625816 m!7396086))

(assert (=> b!6625823 m!7395410))

(assert (=> b!6625823 m!7395968))

(assert (=> b!6625823 m!7395786))

(assert (=> b!6625823 m!7395968))

(declare-fun m!7396088 () Bool)

(assert (=> b!6625823 m!7396088))

(assert (=> b!6625823 m!7395410))

(assert (=> b!6625823 m!7395974))

(assert (=> b!6625823 m!7396088))

(assert (=> b!6625823 m!7395974))

(declare-fun m!7396090 () Bool)

(assert (=> b!6625823 m!7396090))

(assert (=> b!6625825 m!7395410))

(assert (=> b!6625825 m!7395974))

(assert (=> b!6625825 m!7395974))

(assert (=> b!6625825 m!7395978))

(assert (=> b!6625813 m!7395410))

(assert (=> b!6625813 m!7395968))

(assert (=> bm!581083 m!7395410))

(assert (=> bm!581083 m!7395720))

(assert (=> b!6625824 m!7395410))

(assert (=> b!6625824 m!7395974))

(assert (=> b!6625824 m!7395974))

(assert (=> b!6625824 m!7395978))

(assert (=> d!2076883 m!7395410))

(assert (=> d!2076883 m!7395720))

(assert (=> d!2076883 m!7395786))

(declare-fun m!7396092 () Bool)

(assert (=> d!2076883 m!7396092))

(assert (=> b!6625424 d!2076883))

(declare-fun b!6625827 () Bool)

(declare-fun c!1221773 () Bool)

(assert (=> b!6625827 (= c!1221773 (nullable!6488 (regOne!33502 (regTwo!33502 r!7292))))))

(declare-fun e!4007872 () Regex!16495)

(declare-fun e!4007870 () Regex!16495)

(assert (=> b!6625827 (= e!4007872 e!4007870)))

(declare-fun bm!581084 () Bool)

(declare-fun call!581092 () Regex!16495)

(declare-fun call!581090 () Regex!16495)

(assert (=> bm!581084 (= call!581092 call!581090)))

(declare-fun b!6625828 () Bool)

(declare-fun e!4007873 () Regex!16495)

(assert (=> b!6625828 (= e!4007873 EmptyLang!16495)))

(declare-fun bm!581085 () Bool)

(declare-fun call!581089 () Regex!16495)

(assert (=> bm!581085 (= call!581089 call!581092)))

(declare-fun b!6625829 () Bool)

(declare-fun e!4007874 () Regex!16495)

(assert (=> b!6625829 (= e!4007874 e!4007872)))

(declare-fun c!1221772 () Bool)

(assert (=> b!6625829 (= c!1221772 ((_ is Star!16495) (regTwo!33502 r!7292)))))

(declare-fun call!581091 () Regex!16495)

(declare-fun c!1221769 () Bool)

(declare-fun bm!581086 () Bool)

(assert (=> bm!581086 (= call!581091 (derivativeStep!5175 (ite c!1221769 (regTwo!33503 (regTwo!33502 r!7292)) (regOne!33502 (regTwo!33502 r!7292))) (head!13432 s!2326)))))

(declare-fun b!6625830 () Bool)

(declare-fun e!4007871 () Regex!16495)

(assert (=> b!6625830 (= e!4007873 e!4007871)))

(declare-fun c!1221770 () Bool)

(assert (=> b!6625830 (= c!1221770 ((_ is ElementMatch!16495) (regTwo!33502 r!7292)))))

(declare-fun d!2076885 () Bool)

(declare-fun lt!2418534 () Regex!16495)

(assert (=> d!2076885 (validRegex!8231 lt!2418534)))

(assert (=> d!2076885 (= lt!2418534 e!4007873)))

(declare-fun c!1221771 () Bool)

(assert (=> d!2076885 (= c!1221771 (or ((_ is EmptyExpr!16495) (regTwo!33502 r!7292)) ((_ is EmptyLang!16495) (regTwo!33502 r!7292))))))

(assert (=> d!2076885 (validRegex!8231 (regTwo!33502 r!7292))))

(assert (=> d!2076885 (= (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 s!2326)) lt!2418534)))

(declare-fun b!6625831 () Bool)

(assert (=> b!6625831 (= e!4007871 (ite (= (head!13432 s!2326) (c!1221458 (regTwo!33502 r!7292))) EmptyExpr!16495 EmptyLang!16495))))

(declare-fun b!6625832 () Bool)

(assert (=> b!6625832 (= e!4007870 (Union!16495 (Concat!25340 call!581091 (regTwo!33502 (regTwo!33502 r!7292))) call!581089))))

(declare-fun bm!581087 () Bool)

(assert (=> bm!581087 (= call!581090 (derivativeStep!5175 (ite c!1221769 (regOne!33503 (regTwo!33502 r!7292)) (ite c!1221772 (reg!16824 (regTwo!33502 r!7292)) (ite c!1221773 (regTwo!33502 (regTwo!33502 r!7292)) (regOne!33502 (regTwo!33502 r!7292))))) (head!13432 s!2326)))))

(declare-fun b!6625833 () Bool)

(assert (=> b!6625833 (= c!1221769 ((_ is Union!16495) (regTwo!33502 r!7292)))))

(assert (=> b!6625833 (= e!4007871 e!4007874)))

(declare-fun b!6625834 () Bool)

(assert (=> b!6625834 (= e!4007872 (Concat!25340 call!581092 (regTwo!33502 r!7292)))))

(declare-fun b!6625835 () Bool)

(assert (=> b!6625835 (= e!4007870 (Union!16495 (Concat!25340 call!581089 (regTwo!33502 (regTwo!33502 r!7292))) EmptyLang!16495))))

(declare-fun b!6625836 () Bool)

(assert (=> b!6625836 (= e!4007874 (Union!16495 call!581090 call!581091))))

(assert (= (and d!2076885 c!1221771) b!6625828))

(assert (= (and d!2076885 (not c!1221771)) b!6625830))

(assert (= (and b!6625830 c!1221770) b!6625831))

(assert (= (and b!6625830 (not c!1221770)) b!6625833))

(assert (= (and b!6625833 c!1221769) b!6625836))

(assert (= (and b!6625833 (not c!1221769)) b!6625829))

(assert (= (and b!6625829 c!1221772) b!6625834))

(assert (= (and b!6625829 (not c!1221772)) b!6625827))

(assert (= (and b!6625827 c!1221773) b!6625832))

(assert (= (and b!6625827 (not c!1221773)) b!6625835))

(assert (= (or b!6625832 b!6625835) bm!581085))

(assert (= (or b!6625834 bm!581085) bm!581084))

(assert (= (or b!6625836 b!6625832) bm!581086))

(assert (= (or b!6625836 bm!581084) bm!581087))

(declare-fun m!7396094 () Bool)

(assert (=> b!6625827 m!7396094))

(assert (=> bm!581086 m!7395406))

(declare-fun m!7396096 () Bool)

(assert (=> bm!581086 m!7396096))

(declare-fun m!7396098 () Bool)

(assert (=> d!2076885 m!7396098))

(assert (=> d!2076885 m!7395796))

(assert (=> bm!581087 m!7395406))

(declare-fun m!7396100 () Bool)

(assert (=> bm!581087 m!7396100))

(assert (=> b!6625424 d!2076885))

(assert (=> b!6625424 d!2076767))

(assert (=> b!6625424 d!2076831))

(declare-fun d!2076887 () Bool)

(assert (=> d!2076887 (= (flatMap!2000 lt!2418411 lambda!370128) (choose!49495 lt!2418411 lambda!370128))))

(declare-fun bs!1700573 () Bool)

(assert (= bs!1700573 d!2076887))

(declare-fun m!7396102 () Bool)

(assert (=> bs!1700573 m!7396102))

(assert (=> d!2076575 d!2076887))

(declare-fun b!6625837 () Bool)

(declare-fun e!4007875 () List!65785)

(assert (=> b!6625837 (= e!4007875 (t!379445 s!2326))))

(declare-fun b!6625840 () Bool)

(declare-fun e!4007876 () Bool)

(declare-fun lt!2418535 () List!65785)

(assert (=> b!6625840 (= e!4007876 (or (not (= (t!379445 s!2326) Nil!65661)) (= lt!2418535 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)))))))

(declare-fun b!6625839 () Bool)

(declare-fun res!2716195 () Bool)

(assert (=> b!6625839 (=> (not res!2716195) (not e!4007876))))

(assert (=> b!6625839 (= res!2716195 (= (size!40553 lt!2418535) (+ (size!40553 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))) (size!40553 (t!379445 s!2326)))))))

(declare-fun b!6625838 () Bool)

(assert (=> b!6625838 (= e!4007875 (Cons!65661 (h!72109 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))) (++!14644 (t!379445 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))) (t!379445 s!2326))))))

(declare-fun d!2076889 () Bool)

(assert (=> d!2076889 e!4007876))

(declare-fun res!2716196 () Bool)

(assert (=> d!2076889 (=> (not res!2716196) (not e!4007876))))

(assert (=> d!2076889 (= res!2716196 (= (content!12677 lt!2418535) ((_ map or) (content!12677 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))) (content!12677 (t!379445 s!2326)))))))

(assert (=> d!2076889 (= lt!2418535 e!4007875)))

(declare-fun c!1221774 () Bool)

(assert (=> d!2076889 (= c!1221774 ((_ is Nil!65661) (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))))))

(assert (=> d!2076889 (= (++!14644 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326)) lt!2418535)))

(assert (= (and d!2076889 c!1221774) b!6625837))

(assert (= (and d!2076889 (not c!1221774)) b!6625838))

(assert (= (and d!2076889 res!2716196) b!6625839))

(assert (= (and b!6625839 res!2716195) b!6625840))

(declare-fun m!7396104 () Bool)

(assert (=> b!6625839 m!7396104))

(assert (=> b!6625839 m!7395538))

(declare-fun m!7396106 () Bool)

(assert (=> b!6625839 m!7396106))

(declare-fun m!7396108 () Bool)

(assert (=> b!6625839 m!7396108))

(declare-fun m!7396110 () Bool)

(assert (=> b!6625838 m!7396110))

(declare-fun m!7396112 () Bool)

(assert (=> d!2076889 m!7396112))

(assert (=> d!2076889 m!7395538))

(declare-fun m!7396114 () Bool)

(assert (=> d!2076889 m!7396114))

(declare-fun m!7396116 () Bool)

(assert (=> d!2076889 m!7396116))

(assert (=> b!6625042 d!2076889))

(declare-fun b!6625841 () Bool)

(declare-fun e!4007877 () List!65785)

(assert (=> b!6625841 (= e!4007877 (Cons!65661 (h!72109 s!2326) Nil!65661))))

(declare-fun b!6625844 () Bool)

(declare-fun e!4007878 () Bool)

(declare-fun lt!2418536 () List!65785)

(assert (=> b!6625844 (= e!4007878 (or (not (= (Cons!65661 (h!72109 s!2326) Nil!65661) Nil!65661)) (= lt!2418536 Nil!65661)))))

(declare-fun b!6625843 () Bool)

(declare-fun res!2716197 () Bool)

(assert (=> b!6625843 (=> (not res!2716197) (not e!4007878))))

(assert (=> b!6625843 (= res!2716197 (= (size!40553 lt!2418536) (+ (size!40553 Nil!65661) (size!40553 (Cons!65661 (h!72109 s!2326) Nil!65661)))))))

(declare-fun b!6625842 () Bool)

(assert (=> b!6625842 (= e!4007877 (Cons!65661 (h!72109 Nil!65661) (++!14644 (t!379445 Nil!65661) (Cons!65661 (h!72109 s!2326) Nil!65661))))))

(declare-fun d!2076891 () Bool)

(assert (=> d!2076891 e!4007878))

(declare-fun res!2716198 () Bool)

(assert (=> d!2076891 (=> (not res!2716198) (not e!4007878))))

(assert (=> d!2076891 (= res!2716198 (= (content!12677 lt!2418536) ((_ map or) (content!12677 Nil!65661) (content!12677 (Cons!65661 (h!72109 s!2326) Nil!65661)))))))

(assert (=> d!2076891 (= lt!2418536 e!4007877)))

(declare-fun c!1221775 () Bool)

(assert (=> d!2076891 (= c!1221775 ((_ is Nil!65661) Nil!65661))))

(assert (=> d!2076891 (= (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) lt!2418536)))

(assert (= (and d!2076891 c!1221775) b!6625841))

(assert (= (and d!2076891 (not c!1221775)) b!6625842))

(assert (= (and d!2076891 res!2716198) b!6625843))

(assert (= (and b!6625843 res!2716197) b!6625844))

(declare-fun m!7396118 () Bool)

(assert (=> b!6625843 m!7396118))

(declare-fun m!7396120 () Bool)

(assert (=> b!6625843 m!7396120))

(declare-fun m!7396122 () Bool)

(assert (=> b!6625843 m!7396122))

(declare-fun m!7396124 () Bool)

(assert (=> b!6625842 m!7396124))

(declare-fun m!7396126 () Bool)

(assert (=> d!2076891 m!7396126))

(declare-fun m!7396128 () Bool)

(assert (=> d!2076891 m!7396128))

(declare-fun m!7396130 () Bool)

(assert (=> d!2076891 m!7396130))

(assert (=> b!6625042 d!2076891))

(declare-fun d!2076893 () Bool)

(assert (=> d!2076893 (= (++!14644 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326)) s!2326)))

(declare-fun lt!2418539 () Unit!159335)

(declare-fun choose!49513 (List!65785 C!33260 List!65785 List!65785) Unit!159335)

(assert (=> d!2076893 (= lt!2418539 (choose!49513 Nil!65661 (h!72109 s!2326) (t!379445 s!2326) s!2326))))

(assert (=> d!2076893 (= (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) (t!379445 s!2326))) s!2326)))

(assert (=> d!2076893 (= (lemmaMoveElementToOtherListKeepsConcatEq!2633 Nil!65661 (h!72109 s!2326) (t!379445 s!2326) s!2326) lt!2418539)))

(declare-fun bs!1700574 () Bool)

(assert (= bs!1700574 d!2076893))

(assert (=> bs!1700574 m!7395538))

(assert (=> bs!1700574 m!7395538))

(assert (=> bs!1700574 m!7395540))

(declare-fun m!7396132 () Bool)

(assert (=> bs!1700574 m!7396132))

(declare-fun m!7396134 () Bool)

(assert (=> bs!1700574 m!7396134))

(assert (=> b!6625042 d!2076893))

(declare-fun d!2076895 () Bool)

(declare-fun e!4007883 () Bool)

(assert (=> d!2076895 e!4007883))

(declare-fun res!2716199 () Bool)

(assert (=> d!2076895 (=> res!2716199 e!4007883)))

(declare-fun e!4007879 () Bool)

(assert (=> d!2076895 (= res!2716199 e!4007879)))

(declare-fun res!2716200 () Bool)

(assert (=> d!2076895 (=> (not res!2716200) (not e!4007879))))

(declare-fun lt!2418541 () Option!16386)

(assert (=> d!2076895 (= res!2716200 (isDefined!13089 lt!2418541))))

(declare-fun e!4007881 () Option!16386)

(assert (=> d!2076895 (= lt!2418541 e!4007881)))

(declare-fun c!1221777 () Bool)

(declare-fun e!4007880 () Bool)

(assert (=> d!2076895 (= c!1221777 e!4007880)))

(declare-fun res!2716202 () Bool)

(assert (=> d!2076895 (=> (not res!2716202) (not e!4007880))))

(assert (=> d!2076895 (= res!2716202 (matchR!8678 (regOne!33502 r!7292) (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661))))))

(assert (=> d!2076895 (validRegex!8231 (regOne!33502 r!7292))))

(assert (=> d!2076895 (= (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326) s!2326) lt!2418541)))

(declare-fun b!6625845 () Bool)

(assert (=> b!6625845 (= e!4007880 (matchR!8678 (regTwo!33502 r!7292) (t!379445 s!2326)))))

(declare-fun b!6625846 () Bool)

(assert (=> b!6625846 (= e!4007881 (Some!16385 (tuple2!66949 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (t!379445 s!2326))))))

(declare-fun b!6625847 () Bool)

(declare-fun e!4007882 () Option!16386)

(assert (=> b!6625847 (= e!4007882 None!16385)))

(declare-fun b!6625848 () Bool)

(declare-fun res!2716201 () Bool)

(assert (=> b!6625848 (=> (not res!2716201) (not e!4007879))))

(assert (=> b!6625848 (= res!2716201 (matchR!8678 (regOne!33502 r!7292) (_1!36777 (get!22823 lt!2418541))))))

(declare-fun b!6625849 () Bool)

(declare-fun res!2716203 () Bool)

(assert (=> b!6625849 (=> (not res!2716203) (not e!4007879))))

(assert (=> b!6625849 (= res!2716203 (matchR!8678 (regTwo!33502 r!7292) (_2!36777 (get!22823 lt!2418541))))))

(declare-fun b!6625850 () Bool)

(assert (=> b!6625850 (= e!4007883 (not (isDefined!13089 lt!2418541)))))

(declare-fun b!6625851 () Bool)

(assert (=> b!6625851 (= e!4007881 e!4007882)))

(declare-fun c!1221776 () Bool)

(assert (=> b!6625851 (= c!1221776 ((_ is Nil!65661) (t!379445 s!2326)))))

(declare-fun b!6625852 () Bool)

(assert (=> b!6625852 (= e!4007879 (= (++!14644 (_1!36777 (get!22823 lt!2418541)) (_2!36777 (get!22823 lt!2418541))) s!2326))))

(declare-fun b!6625853 () Bool)

(declare-fun lt!2418540 () Unit!159335)

(declare-fun lt!2418542 () Unit!159335)

(assert (=> b!6625853 (= lt!2418540 lt!2418542)))

(assert (=> b!6625853 (= (++!14644 (++!14644 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (Cons!65661 (h!72109 (t!379445 s!2326)) Nil!65661)) (t!379445 (t!379445 s!2326))) s!2326)))

(assert (=> b!6625853 (= lt!2418542 (lemmaMoveElementToOtherListKeepsConcatEq!2633 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (h!72109 (t!379445 s!2326)) (t!379445 (t!379445 s!2326)) s!2326))))

(assert (=> b!6625853 (= e!4007882 (findConcatSeparation!2800 (regOne!33502 r!7292) (regTwo!33502 r!7292) (++!14644 (++!14644 Nil!65661 (Cons!65661 (h!72109 s!2326) Nil!65661)) (Cons!65661 (h!72109 (t!379445 s!2326)) Nil!65661)) (t!379445 (t!379445 s!2326)) s!2326))))

(assert (= (and d!2076895 res!2716202) b!6625845))

(assert (= (and d!2076895 c!1221777) b!6625846))

(assert (= (and d!2076895 (not c!1221777)) b!6625851))

(assert (= (and b!6625851 c!1221776) b!6625847))

(assert (= (and b!6625851 (not c!1221776)) b!6625853))

(assert (= (and d!2076895 res!2716200) b!6625848))

(assert (= (and b!6625848 res!2716201) b!6625849))

(assert (= (and b!6625849 res!2716203) b!6625852))

(assert (= (and d!2076895 (not res!2716199)) b!6625850))

(declare-fun m!7396136 () Bool)

(assert (=> b!6625850 m!7396136))

(assert (=> b!6625853 m!7395538))

(declare-fun m!7396138 () Bool)

(assert (=> b!6625853 m!7396138))

(assert (=> b!6625853 m!7396138))

(declare-fun m!7396140 () Bool)

(assert (=> b!6625853 m!7396140))

(assert (=> b!6625853 m!7395538))

(declare-fun m!7396142 () Bool)

(assert (=> b!6625853 m!7396142))

(assert (=> b!6625853 m!7396138))

(declare-fun m!7396144 () Bool)

(assert (=> b!6625853 m!7396144))

(declare-fun m!7396146 () Bool)

(assert (=> b!6625845 m!7396146))

(declare-fun m!7396148 () Bool)

(assert (=> b!6625849 m!7396148))

(declare-fun m!7396150 () Bool)

(assert (=> b!6625849 m!7396150))

(assert (=> d!2076895 m!7396136))

(assert (=> d!2076895 m!7395538))

(declare-fun m!7396152 () Bool)

(assert (=> d!2076895 m!7396152))

(assert (=> d!2076895 m!7395552))

(assert (=> b!6625852 m!7396148))

(declare-fun m!7396154 () Bool)

(assert (=> b!6625852 m!7396154))

(assert (=> b!6625848 m!7396148))

(declare-fun m!7396156 () Bool)

(assert (=> b!6625848 m!7396156))

(assert (=> b!6625042 d!2076895))

(declare-fun d!2076897 () Bool)

(assert (=> d!2076897 (= (Exists!3565 lambda!370156) (choose!49501 lambda!370156))))

(declare-fun bs!1700575 () Bool)

(assert (= bs!1700575 d!2076897))

(declare-fun m!7396158 () Bool)

(assert (=> bs!1700575 m!7396158))

(assert (=> d!2076667 d!2076897))

(declare-fun d!2076899 () Bool)

(assert (=> d!2076899 (= (Exists!3565 lambda!370159) (choose!49501 lambda!370159))))

(declare-fun bs!1700576 () Bool)

(assert (= bs!1700576 d!2076899))

(declare-fun m!7396160 () Bool)

(assert (=> bs!1700576 m!7396160))

(assert (=> d!2076667 d!2076899))

(declare-fun bs!1700577 () Bool)

(declare-fun d!2076901 () Bool)

(assert (= bs!1700577 (and d!2076901 d!2076807)))

(declare-fun lambda!370216 () Int)

(assert (=> bs!1700577 (= lambda!370216 lambda!370201)))

(declare-fun bs!1700578 () Bool)

(assert (= bs!1700578 (and d!2076901 b!6625663)))

(assert (=> bs!1700578 (not (= lambda!370216 lambda!370205))))

(declare-fun bs!1700579 () Bool)

(assert (= bs!1700579 (and d!2076901 b!6625637)))

(assert (=> bs!1700579 (not (= lambda!370216 lambda!370202))))

(declare-fun bs!1700580 () Bool)

(assert (= bs!1700580 (and d!2076901 d!2076667)))

(assert (=> bs!1700580 (= lambda!370216 lambda!370156)))

(declare-fun bs!1700581 () Bool)

(assert (= bs!1700581 (and d!2076901 b!6625352)))

(assert (=> bs!1700581 (not (= lambda!370216 lambda!370187))))

(declare-fun bs!1700582 () Bool)

(assert (= bs!1700582 (and d!2076901 b!6625636)))

(assert (=> bs!1700582 (not (= lambda!370216 lambda!370203))))

(declare-fun bs!1700583 () Bool)

(assert (= bs!1700583 (and d!2076901 b!6624705)))

(assert (=> bs!1700583 (not (= lambda!370216 lambda!370118))))

(declare-fun bs!1700584 () Bool)

(assert (= bs!1700584 (and d!2076901 b!6625664)))

(assert (=> bs!1700584 (not (= lambda!370216 lambda!370204))))

(declare-fun bs!1700585 () Bool)

(assert (= bs!1700585 (and d!2076901 b!6625252)))

(assert (=> bs!1700585 (not (= lambda!370216 lambda!370175))))

(declare-fun bs!1700586 () Bool)

(assert (= bs!1700586 (and d!2076901 b!6625251)))

(assert (=> bs!1700586 (not (= lambda!370216 lambda!370179))))

(assert (=> bs!1700580 (not (= lambda!370216 lambda!370159))))

(assert (=> bs!1700583 (= lambda!370216 lambda!370117)))

(declare-fun bs!1700587 () Bool)

(assert (= bs!1700587 (and d!2076901 b!6625398)))

(assert (=> bs!1700587 (not (= lambda!370216 lambda!370190))))

(declare-fun bs!1700588 () Bool)

(assert (= bs!1700588 (and d!2076901 b!6625351)))

(assert (=> bs!1700588 (not (= lambda!370216 lambda!370188))))

(declare-fun bs!1700589 () Bool)

(assert (= bs!1700589 (and d!2076901 d!2076665)))

(assert (=> bs!1700589 (= lambda!370216 lambda!370151)))

(declare-fun bs!1700590 () Bool)

(assert (= bs!1700590 (and d!2076901 b!6625399)))

(assert (=> bs!1700590 (not (= lambda!370216 lambda!370189))))

(assert (=> d!2076901 true))

(assert (=> d!2076901 true))

(assert (=> d!2076901 true))

(declare-fun lambda!370217 () Int)

(assert (=> bs!1700577 (not (= lambda!370217 lambda!370201))))

(assert (=> bs!1700578 (= (and (= (regOne!33502 r!7292) (regOne!33502 (regTwo!33503 r!7292))) (= (regTwo!33502 r!7292) (regTwo!33502 (regTwo!33503 r!7292)))) (= lambda!370217 lambda!370205))))

(assert (=> bs!1700579 (not (= lambda!370217 lambda!370202))))

(assert (=> bs!1700580 (not (= lambda!370217 lambda!370156))))

(assert (=> bs!1700581 (not (= lambda!370217 lambda!370187))))

(assert (=> bs!1700582 (= (and (= (regOne!33502 r!7292) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 r!7292) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370217 lambda!370203))))

(assert (=> bs!1700583 (= lambda!370217 lambda!370118)))

(declare-fun bs!1700591 () Bool)

(assert (= bs!1700591 d!2076901))

(assert (=> bs!1700591 (not (= lambda!370217 lambda!370216))))

(assert (=> bs!1700584 (not (= lambda!370217 lambda!370204))))

(assert (=> bs!1700585 (not (= lambda!370217 lambda!370175))))

(assert (=> bs!1700586 (= lambda!370217 lambda!370179)))

(assert (=> bs!1700580 (= lambda!370217 lambda!370159)))

(assert (=> bs!1700583 (not (= lambda!370217 lambda!370117))))

(assert (=> bs!1700587 (= (and (= (regOne!33502 r!7292) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 r!7292) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370217 lambda!370190))))

(assert (=> bs!1700588 (= (and (= (regOne!33502 r!7292) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 r!7292) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370217 lambda!370188))))

(assert (=> bs!1700589 (not (= lambda!370217 lambda!370151))))

(assert (=> bs!1700590 (not (= lambda!370217 lambda!370189))))

(assert (=> d!2076901 true))

(assert (=> d!2076901 true))

(assert (=> d!2076901 true))

(assert (=> d!2076901 (= (Exists!3565 lambda!370216) (Exists!3565 lambda!370217))))

(assert (=> d!2076901 true))

(declare-fun _$90!2458 () Unit!159335)

(assert (=> d!2076901 (= (choose!49503 (regOne!33502 r!7292) (regTwo!33502 r!7292) s!2326) _$90!2458)))

(declare-fun m!7396162 () Bool)

(assert (=> bs!1700591 m!7396162))

(declare-fun m!7396164 () Bool)

(assert (=> bs!1700591 m!7396164))

(assert (=> d!2076667 d!2076901))

(assert (=> d!2076667 d!2076805))

(declare-fun d!2076903 () Bool)

(assert (=> d!2076903 (= (Exists!3565 (ite c!1221668 lambda!370189 lambda!370190)) (choose!49501 (ite c!1221668 lambda!370189 lambda!370190)))))

(declare-fun bs!1700592 () Bool)

(assert (= bs!1700592 d!2076903))

(declare-fun m!7396166 () Bool)

(assert (=> bs!1700592 m!7396166))

(assert (=> bm!581016 d!2076903))

(declare-fun d!2076905 () Bool)

(assert (=> d!2076905 (= (head!13433 (exprs!6379 (h!72110 zl!343))) (h!72108 (exprs!6379 (h!72110 zl!343))))))

(assert (=> b!6625009 d!2076905))

(declare-fun d!2076907 () Bool)

(declare-fun c!1221778 () Bool)

(assert (=> d!2076907 (= c!1221778 ((_ is Nil!65662) lt!2418512))))

(declare-fun e!4007888 () (InoxSet Context!11758))

(assert (=> d!2076907 (= (content!12675 lt!2418512) e!4007888)))

(declare-fun b!6625862 () Bool)

(assert (=> b!6625862 (= e!4007888 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625863 () Bool)

(assert (=> b!6625863 (= e!4007888 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) (h!72110 lt!2418512) true) (content!12675 (t!379446 lt!2418512))))))

(assert (= (and d!2076907 c!1221778) b!6625862))

(assert (= (and d!2076907 (not c!1221778)) b!6625863))

(declare-fun m!7396168 () Bool)

(assert (=> b!6625863 m!7396168))

(declare-fun m!7396170 () Bool)

(assert (=> b!6625863 m!7396170))

(assert (=> b!6625344 d!2076907))

(declare-fun bs!1700593 () Bool)

(declare-fun b!6625871 () Bool)

(assert (= bs!1700593 (and b!6625871 d!2076807)))

(declare-fun lambda!370218 () Int)

(assert (=> bs!1700593 (not (= lambda!370218 lambda!370201))))

(declare-fun bs!1700594 () Bool)

(assert (= bs!1700594 (and b!6625871 b!6625663)))

(assert (=> bs!1700594 (not (= lambda!370218 lambda!370205))))

(declare-fun bs!1700595 () Bool)

(assert (= bs!1700595 (and b!6625871 b!6625637)))

(assert (=> bs!1700595 (= (and (= (reg!16824 (regTwo!33503 (regTwo!33502 r!7292))) (reg!16824 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33503 (regTwo!33502 r!7292)) (regOne!33503 (regTwo!33502 r!7292)))) (= lambda!370218 lambda!370202))))

(declare-fun bs!1700596 () Bool)

(assert (= bs!1700596 (and b!6625871 d!2076667)))

(assert (=> bs!1700596 (not (= lambda!370218 lambda!370156))))

(declare-fun bs!1700597 () Bool)

(assert (= bs!1700597 (and b!6625871 b!6625352)))

(assert (=> bs!1700597 (= (and (= (reg!16824 (regTwo!33503 (regTwo!33502 r!7292))) (reg!16824 (regOne!33502 r!7292))) (= (regTwo!33503 (regTwo!33502 r!7292)) (regOne!33502 r!7292))) (= lambda!370218 lambda!370187))))

(declare-fun bs!1700598 () Bool)

(assert (= bs!1700598 (and b!6625871 b!6625636)))

(assert (=> bs!1700598 (not (= lambda!370218 lambda!370203))))

(declare-fun bs!1700599 () Bool)

(assert (= bs!1700599 (and b!6625871 b!6624705)))

(assert (=> bs!1700599 (not (= lambda!370218 lambda!370118))))

(declare-fun bs!1700600 () Bool)

(assert (= bs!1700600 (and b!6625871 b!6625664)))

(assert (=> bs!1700600 (= (and (= (reg!16824 (regTwo!33503 (regTwo!33502 r!7292))) (reg!16824 (regTwo!33503 r!7292))) (= (regTwo!33503 (regTwo!33502 r!7292)) (regTwo!33503 r!7292))) (= lambda!370218 lambda!370204))))

(declare-fun bs!1700601 () Bool)

(assert (= bs!1700601 (and b!6625871 b!6625252)))

(assert (=> bs!1700601 (= (and (= (reg!16824 (regTwo!33503 (regTwo!33502 r!7292))) (reg!16824 r!7292)) (= (regTwo!33503 (regTwo!33502 r!7292)) r!7292)) (= lambda!370218 lambda!370175))))

(declare-fun bs!1700602 () Bool)

(assert (= bs!1700602 (and b!6625871 b!6625251)))

(assert (=> bs!1700602 (not (= lambda!370218 lambda!370179))))

(assert (=> bs!1700596 (not (= lambda!370218 lambda!370159))))

(assert (=> bs!1700599 (not (= lambda!370218 lambda!370117))))

(declare-fun bs!1700603 () Bool)

(assert (= bs!1700603 (and b!6625871 b!6625398)))

(assert (=> bs!1700603 (not (= lambda!370218 lambda!370190))))

(declare-fun bs!1700604 () Bool)

(assert (= bs!1700604 (and b!6625871 b!6625351)))

(assert (=> bs!1700604 (not (= lambda!370218 lambda!370188))))

(declare-fun bs!1700605 () Bool)

(assert (= bs!1700605 (and b!6625871 d!2076665)))

(assert (=> bs!1700605 (not (= lambda!370218 lambda!370151))))

(declare-fun bs!1700606 () Bool)

(assert (= bs!1700606 (and b!6625871 b!6625399)))

(assert (=> bs!1700606 (= (and (= (reg!16824 (regTwo!33503 (regTwo!33502 r!7292))) (reg!16824 (regTwo!33502 r!7292))) (= (regTwo!33503 (regTwo!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370218 lambda!370189))))

(declare-fun bs!1700607 () Bool)

(assert (= bs!1700607 (and b!6625871 d!2076901)))

(assert (=> bs!1700607 (not (= lambda!370218 lambda!370217))))

(assert (=> bs!1700607 (not (= lambda!370218 lambda!370216))))

(assert (=> b!6625871 true))

(assert (=> b!6625871 true))

(declare-fun bs!1700608 () Bool)

(declare-fun b!6625870 () Bool)

(assert (= bs!1700608 (and b!6625870 d!2076807)))

(declare-fun lambda!370219 () Int)

(assert (=> bs!1700608 (not (= lambda!370219 lambda!370201))))

(declare-fun bs!1700609 () Bool)

(assert (= bs!1700609 (and b!6625870 b!6625663)))

(assert (=> bs!1700609 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 (regTwo!33503 r!7292))) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regTwo!33503 r!7292)))) (= lambda!370219 lambda!370205))))

(declare-fun bs!1700610 () Bool)

(assert (= bs!1700610 (and b!6625870 b!6625637)))

(assert (=> bs!1700610 (not (= lambda!370219 lambda!370202))))

(declare-fun bs!1700611 () Bool)

(assert (= bs!1700611 (and b!6625870 d!2076667)))

(assert (=> bs!1700611 (not (= lambda!370219 lambda!370156))))

(declare-fun bs!1700612 () Bool)

(assert (= bs!1700612 (and b!6625870 b!6625352)))

(assert (=> bs!1700612 (not (= lambda!370219 lambda!370187))))

(declare-fun bs!1700613 () Bool)

(assert (= bs!1700613 (and b!6625870 b!6625636)))

(assert (=> bs!1700613 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370219 lambda!370203))))

(declare-fun bs!1700614 () Bool)

(assert (= bs!1700614 (and b!6625870 b!6624705)))

(assert (=> bs!1700614 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370219 lambda!370118))))

(declare-fun bs!1700615 () Bool)

(assert (= bs!1700615 (and b!6625870 b!6625664)))

(assert (=> bs!1700615 (not (= lambda!370219 lambda!370204))))

(declare-fun bs!1700616 () Bool)

(assert (= bs!1700616 (and b!6625870 b!6625252)))

(assert (=> bs!1700616 (not (= lambda!370219 lambda!370175))))

(declare-fun bs!1700617 () Bool)

(assert (= bs!1700617 (and b!6625870 b!6625871)))

(assert (=> bs!1700617 (not (= lambda!370219 lambda!370218))))

(declare-fun bs!1700618 () Bool)

(assert (= bs!1700618 (and b!6625870 b!6625251)))

(assert (=> bs!1700618 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370219 lambda!370179))))

(assert (=> bs!1700611 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370219 lambda!370159))))

(assert (=> bs!1700614 (not (= lambda!370219 lambda!370117))))

(declare-fun bs!1700619 () Bool)

(assert (= bs!1700619 (and b!6625870 b!6625398)))

(assert (=> bs!1700619 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370219 lambda!370190))))

(declare-fun bs!1700620 () Bool)

(assert (= bs!1700620 (and b!6625870 b!6625351)))

(assert (=> bs!1700620 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370219 lambda!370188))))

(declare-fun bs!1700621 () Bool)

(assert (= bs!1700621 (and b!6625870 d!2076665)))

(assert (=> bs!1700621 (not (= lambda!370219 lambda!370151))))

(declare-fun bs!1700622 () Bool)

(assert (= bs!1700622 (and b!6625870 b!6625399)))

(assert (=> bs!1700622 (not (= lambda!370219 lambda!370189))))

(declare-fun bs!1700623 () Bool)

(assert (= bs!1700623 (and b!6625870 d!2076901)))

(assert (=> bs!1700623 (= (and (= (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370219 lambda!370217))))

(assert (=> bs!1700623 (not (= lambda!370219 lambda!370216))))

(assert (=> b!6625870 true))

(assert (=> b!6625870 true))

(declare-fun b!6625864 () Bool)

(declare-fun c!1221782 () Bool)

(assert (=> b!6625864 (= c!1221782 ((_ is Union!16495) (regTwo!33503 (regTwo!33502 r!7292))))))

(declare-fun e!4007889 () Bool)

(declare-fun e!4007892 () Bool)

(assert (=> b!6625864 (= e!4007889 e!4007892)))

(declare-fun b!6625865 () Bool)

(declare-fun e!4007895 () Bool)

(declare-fun e!4007891 () Bool)

(assert (=> b!6625865 (= e!4007895 e!4007891)))

(declare-fun res!2716212 () Bool)

(assert (=> b!6625865 (= res!2716212 (not ((_ is EmptyLang!16495) (regTwo!33503 (regTwo!33502 r!7292)))))))

(assert (=> b!6625865 (=> (not res!2716212) (not e!4007891))))

(declare-fun b!6625866 () Bool)

(declare-fun e!4007890 () Bool)

(assert (=> b!6625866 (= e!4007892 e!4007890)))

(declare-fun res!2716213 () Bool)

(assert (=> b!6625866 (= res!2716213 (matchRSpec!3596 (regOne!33503 (regTwo!33503 (regTwo!33502 r!7292))) s!2326))))

(assert (=> b!6625866 (=> res!2716213 e!4007890)))

(declare-fun d!2076909 () Bool)

(declare-fun c!1221779 () Bool)

(assert (=> d!2076909 (= c!1221779 ((_ is EmptyExpr!16495) (regTwo!33503 (regTwo!33502 r!7292))))))

(assert (=> d!2076909 (= (matchRSpec!3596 (regTwo!33503 (regTwo!33502 r!7292)) s!2326) e!4007895)))

(declare-fun b!6625867 () Bool)

(assert (=> b!6625867 (= e!4007890 (matchRSpec!3596 (regTwo!33503 (regTwo!33503 (regTwo!33502 r!7292))) s!2326))))

(declare-fun bm!581088 () Bool)

(declare-fun call!581094 () Bool)

(assert (=> bm!581088 (= call!581094 (isEmpty!37954 s!2326))))

(declare-fun b!6625868 () Bool)

(declare-fun res!2716214 () Bool)

(declare-fun e!4007893 () Bool)

(assert (=> b!6625868 (=> res!2716214 e!4007893)))

(assert (=> b!6625868 (= res!2716214 call!581094)))

(declare-fun e!4007894 () Bool)

(assert (=> b!6625868 (= e!4007894 e!4007893)))

(declare-fun b!6625869 () Bool)

(assert (=> b!6625869 (= e!4007895 call!581094)))

(declare-fun call!581093 () Bool)

(declare-fun bm!581089 () Bool)

(declare-fun c!1221780 () Bool)

(assert (=> bm!581089 (= call!581093 (Exists!3565 (ite c!1221780 lambda!370218 lambda!370219)))))

(assert (=> b!6625870 (= e!4007894 call!581093)))

(assert (=> b!6625871 (= e!4007893 call!581093)))

(declare-fun b!6625872 () Bool)

(declare-fun c!1221781 () Bool)

(assert (=> b!6625872 (= c!1221781 ((_ is ElementMatch!16495) (regTwo!33503 (regTwo!33502 r!7292))))))

(assert (=> b!6625872 (= e!4007891 e!4007889)))

(declare-fun b!6625873 () Bool)

(assert (=> b!6625873 (= e!4007889 (= s!2326 (Cons!65661 (c!1221458 (regTwo!33503 (regTwo!33502 r!7292))) Nil!65661)))))

(declare-fun b!6625874 () Bool)

(assert (=> b!6625874 (= e!4007892 e!4007894)))

(assert (=> b!6625874 (= c!1221780 ((_ is Star!16495) (regTwo!33503 (regTwo!33502 r!7292))))))

(assert (= (and d!2076909 c!1221779) b!6625869))

(assert (= (and d!2076909 (not c!1221779)) b!6625865))

(assert (= (and b!6625865 res!2716212) b!6625872))

(assert (= (and b!6625872 c!1221781) b!6625873))

(assert (= (and b!6625872 (not c!1221781)) b!6625864))

(assert (= (and b!6625864 c!1221782) b!6625866))

(assert (= (and b!6625864 (not c!1221782)) b!6625874))

(assert (= (and b!6625866 (not res!2716213)) b!6625867))

(assert (= (and b!6625874 c!1221780) b!6625868))

(assert (= (and b!6625874 (not c!1221780)) b!6625870))

(assert (= (and b!6625868 (not res!2716214)) b!6625871))

(assert (= (or b!6625871 b!6625870) bm!581089))

(assert (= (or b!6625869 b!6625868) bm!581088))

(declare-fun m!7396172 () Bool)

(assert (=> b!6625866 m!7396172))

(declare-fun m!7396174 () Bool)

(assert (=> b!6625867 m!7396174))

(assert (=> bm!581088 m!7395402))

(declare-fun m!7396176 () Bool)

(assert (=> bm!581089 m!7396176))

(assert (=> b!6625395 d!2076909))

(declare-fun d!2076911 () Bool)

(declare-fun res!2716219 () Bool)

(declare-fun e!4007900 () Bool)

(assert (=> d!2076911 (=> res!2716219 e!4007900)))

(assert (=> d!2076911 (= res!2716219 ((_ is Nil!65662) lt!2418512))))

(assert (=> d!2076911 (= (noDuplicate!2295 lt!2418512) e!4007900)))

(declare-fun b!6625879 () Bool)

(declare-fun e!4007901 () Bool)

(assert (=> b!6625879 (= e!4007900 e!4007901)))

(declare-fun res!2716220 () Bool)

(assert (=> b!6625879 (=> (not res!2716220) (not e!4007901))))

(declare-fun contains!20223 (List!65786 Context!11758) Bool)

(assert (=> b!6625879 (= res!2716220 (not (contains!20223 (t!379446 lt!2418512) (h!72110 lt!2418512))))))

(declare-fun b!6625880 () Bool)

(assert (=> b!6625880 (= e!4007901 (noDuplicate!2295 (t!379446 lt!2418512)))))

(assert (= (and d!2076911 (not res!2716219)) b!6625879))

(assert (= (and b!6625879 res!2716220) b!6625880))

(declare-fun m!7396178 () Bool)

(assert (=> b!6625879 m!7396178))

(declare-fun m!7396180 () Bool)

(assert (=> b!6625880 m!7396180))

(assert (=> d!2076729 d!2076911))

(declare-fun d!2076913 () Bool)

(declare-fun e!4007908 () Bool)

(assert (=> d!2076913 e!4007908))

(declare-fun res!2716225 () Bool)

(assert (=> d!2076913 (=> (not res!2716225) (not e!4007908))))

(declare-fun res!2716226 () List!65786)

(assert (=> d!2076913 (= res!2716225 (noDuplicate!2295 res!2716226))))

(declare-fun e!4007909 () Bool)

(assert (=> d!2076913 e!4007909))

(assert (=> d!2076913 (= (choose!49497 lt!2418411) res!2716226)))

(declare-fun b!6625888 () Bool)

(declare-fun e!4007910 () Bool)

(declare-fun tp!1824914 () Bool)

(assert (=> b!6625888 (= e!4007910 tp!1824914)))

(declare-fun b!6625887 () Bool)

(declare-fun tp!1824915 () Bool)

(assert (=> b!6625887 (= e!4007909 (and (inv!84484 (h!72110 res!2716226)) e!4007910 tp!1824915))))

(declare-fun b!6625889 () Bool)

(assert (=> b!6625889 (= e!4007908 (= (content!12675 res!2716226) lt!2418411))))

(assert (= b!6625887 b!6625888))

(assert (= (and d!2076913 ((_ is Cons!65662) res!2716226)) b!6625887))

(assert (= (and d!2076913 res!2716225) b!6625889))

(declare-fun m!7396182 () Bool)

(assert (=> d!2076913 m!7396182))

(declare-fun m!7396184 () Bool)

(assert (=> b!6625887 m!7396184))

(declare-fun m!7396186 () Bool)

(assert (=> b!6625889 m!7396186))

(assert (=> d!2076729 d!2076913))

(declare-fun d!2076915 () Bool)

(assert (=> d!2076915 (= (nullable!6488 (h!72108 (exprs!6379 lt!2418404))) (nullableFct!2409 (h!72108 (exprs!6379 lt!2418404))))))

(declare-fun bs!1700624 () Bool)

(assert (= bs!1700624 d!2076915))

(declare-fun m!7396188 () Bool)

(assert (=> bs!1700624 m!7396188))

(assert (=> b!6624804 d!2076915))

(declare-fun d!2076917 () Bool)

(assert (=> d!2076917 (= (head!13433 (unfocusZipperList!1916 zl!343)) (h!72108 (unfocusZipperList!1916 zl!343)))))

(assert (=> b!6624962 d!2076917))

(declare-fun b!6625891 () Bool)

(declare-fun e!4007916 () Bool)

(declare-fun call!581096 () Bool)

(assert (=> b!6625891 (= e!4007916 call!581096)))

(declare-fun b!6625892 () Bool)

(declare-fun e!4007912 () Bool)

(assert (=> b!6625892 (= e!4007912 e!4007916)))

(declare-fun res!2716227 () Bool)

(declare-fun call!581095 () Bool)

(assert (=> b!6625892 (= res!2716227 call!581095)))

(assert (=> b!6625892 (=> res!2716227 e!4007916)))

(declare-fun b!6625893 () Bool)

(declare-fun e!4007911 () Bool)

(assert (=> b!6625893 (= e!4007911 e!4007912)))

(declare-fun c!1221783 () Bool)

(assert (=> b!6625893 (= c!1221783 ((_ is Union!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625894 () Bool)

(declare-fun e!4007913 () Bool)

(assert (=> b!6625894 (= e!4007912 e!4007913)))

(declare-fun res!2716230 () Bool)

(assert (=> b!6625894 (= res!2716230 call!581095)))

(assert (=> b!6625894 (=> (not res!2716230) (not e!4007913))))

(declare-fun bm!581090 () Bool)

(assert (=> bm!581090 (= call!581096 (nullable!6488 (ite c!1221783 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625890 () Bool)

(declare-fun e!4007914 () Bool)

(declare-fun e!4007915 () Bool)

(assert (=> b!6625890 (= e!4007914 e!4007915)))

(declare-fun res!2716231 () Bool)

(assert (=> b!6625890 (=> (not res!2716231) (not e!4007915))))

(assert (=> b!6625890 (= res!2716231 (and (not ((_ is EmptyLang!16495) (h!72108 (exprs!6379 (h!72110 zl!343))))) (not ((_ is ElementMatch!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun d!2076919 () Bool)

(declare-fun res!2716229 () Bool)

(assert (=> d!2076919 (=> res!2716229 e!4007914)))

(assert (=> d!2076919 (= res!2716229 ((_ is EmptyExpr!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> d!2076919 (= (nullableFct!2409 (h!72108 (exprs!6379 (h!72110 zl!343)))) e!4007914)))

(declare-fun bm!581091 () Bool)

(assert (=> bm!581091 (= call!581095 (nullable!6488 (ite c!1221783 (regOne!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun b!6625895 () Bool)

(assert (=> b!6625895 (= e!4007915 e!4007911)))

(declare-fun res!2716228 () Bool)

(assert (=> b!6625895 (=> res!2716228 e!4007911)))

(assert (=> b!6625895 (= res!2716228 ((_ is Star!16495) (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625896 () Bool)

(assert (=> b!6625896 (= e!4007913 call!581096)))

(assert (= (and d!2076919 (not res!2716229)) b!6625890))

(assert (= (and b!6625890 res!2716231) b!6625895))

(assert (= (and b!6625895 (not res!2716228)) b!6625893))

(assert (= (and b!6625893 c!1221783) b!6625892))

(assert (= (and b!6625893 (not c!1221783)) b!6625894))

(assert (= (and b!6625892 (not res!2716227)) b!6625891))

(assert (= (and b!6625894 res!2716230) b!6625896))

(assert (= (or b!6625891 b!6625896) bm!581090))

(assert (= (or b!6625892 b!6625894) bm!581091))

(declare-fun m!7396190 () Bool)

(assert (=> bm!581090 m!7396190))

(declare-fun m!7396192 () Bool)

(assert (=> bm!581091 m!7396192))

(assert (=> d!2076681 d!2076919))

(declare-fun b!6625897 () Bool)

(declare-fun e!4007918 () Bool)

(assert (=> b!6625897 (= e!4007918 (= (head!13432 (_2!36777 (get!22823 lt!2418470))) (c!1221458 (regTwo!33502 r!7292))))))

(declare-fun b!6625898 () Bool)

(declare-fun res!2716238 () Bool)

(assert (=> b!6625898 (=> (not res!2716238) (not e!4007918))))

(declare-fun call!581097 () Bool)

(assert (=> b!6625898 (= res!2716238 (not call!581097))))

(declare-fun b!6625899 () Bool)

(declare-fun res!2716237 () Bool)

(declare-fun e!4007917 () Bool)

(assert (=> b!6625899 (=> res!2716237 e!4007917)))

(assert (=> b!6625899 (= res!2716237 e!4007918)))

(declare-fun res!2716236 () Bool)

(assert (=> b!6625899 (=> (not res!2716236) (not e!4007918))))

(declare-fun lt!2418543 () Bool)

(assert (=> b!6625899 (= res!2716236 lt!2418543)))

(declare-fun bm!581092 () Bool)

(assert (=> bm!581092 (= call!581097 (isEmpty!37954 (_2!36777 (get!22823 lt!2418470))))))

(declare-fun b!6625900 () Bool)

(declare-fun e!4007922 () Bool)

(assert (=> b!6625900 (= e!4007922 (nullable!6488 (regTwo!33502 r!7292)))))

(declare-fun b!6625901 () Bool)

(declare-fun e!4007923 () Bool)

(assert (=> b!6625901 (= e!4007923 (= lt!2418543 call!581097))))

(declare-fun b!6625902 () Bool)

(declare-fun e!4007920 () Bool)

(assert (=> b!6625902 (= e!4007920 (not lt!2418543))))

(declare-fun b!6625904 () Bool)

(assert (=> b!6625904 (= e!4007923 e!4007920)))

(declare-fun c!1221785 () Bool)

(assert (=> b!6625904 (= c!1221785 ((_ is EmptyLang!16495) (regTwo!33502 r!7292)))))

(declare-fun b!6625905 () Bool)

(declare-fun e!4007921 () Bool)

(assert (=> b!6625905 (= e!4007921 (not (= (head!13432 (_2!36777 (get!22823 lt!2418470))) (c!1221458 (regTwo!33502 r!7292)))))))

(declare-fun b!6625906 () Bool)

(declare-fun res!2716235 () Bool)

(assert (=> b!6625906 (=> res!2716235 e!4007917)))

(assert (=> b!6625906 (= res!2716235 (not ((_ is ElementMatch!16495) (regTwo!33502 r!7292))))))

(assert (=> b!6625906 (= e!4007920 e!4007917)))

(declare-fun b!6625903 () Bool)

(declare-fun e!4007919 () Bool)

(assert (=> b!6625903 (= e!4007919 e!4007921)))

(declare-fun res!2716239 () Bool)

(assert (=> b!6625903 (=> res!2716239 e!4007921)))

(assert (=> b!6625903 (= res!2716239 call!581097)))

(declare-fun d!2076921 () Bool)

(assert (=> d!2076921 e!4007923))

(declare-fun c!1221786 () Bool)

(assert (=> d!2076921 (= c!1221786 ((_ is EmptyExpr!16495) (regTwo!33502 r!7292)))))

(assert (=> d!2076921 (= lt!2418543 e!4007922)))

(declare-fun c!1221784 () Bool)

(assert (=> d!2076921 (= c!1221784 (isEmpty!37954 (_2!36777 (get!22823 lt!2418470))))))

(assert (=> d!2076921 (validRegex!8231 (regTwo!33502 r!7292))))

(assert (=> d!2076921 (= (matchR!8678 (regTwo!33502 r!7292) (_2!36777 (get!22823 lt!2418470))) lt!2418543)))

(declare-fun b!6625907 () Bool)

(assert (=> b!6625907 (= e!4007922 (matchR!8678 (derivativeStep!5175 (regTwo!33502 r!7292) (head!13432 (_2!36777 (get!22823 lt!2418470)))) (tail!12517 (_2!36777 (get!22823 lt!2418470)))))))

(declare-fun b!6625908 () Bool)

(declare-fun res!2716234 () Bool)

(assert (=> b!6625908 (=> (not res!2716234) (not e!4007918))))

(assert (=> b!6625908 (= res!2716234 (isEmpty!37954 (tail!12517 (_2!36777 (get!22823 lt!2418470)))))))

(declare-fun b!6625909 () Bool)

(declare-fun res!2716232 () Bool)

(assert (=> b!6625909 (=> res!2716232 e!4007921)))

(assert (=> b!6625909 (= res!2716232 (not (isEmpty!37954 (tail!12517 (_2!36777 (get!22823 lt!2418470))))))))

(declare-fun b!6625910 () Bool)

(assert (=> b!6625910 (= e!4007917 e!4007919)))

(declare-fun res!2716233 () Bool)

(assert (=> b!6625910 (=> (not res!2716233) (not e!4007919))))

(assert (=> b!6625910 (= res!2716233 (not lt!2418543))))

(assert (= (and d!2076921 c!1221784) b!6625900))

(assert (= (and d!2076921 (not c!1221784)) b!6625907))

(assert (= (and d!2076921 c!1221786) b!6625901))

(assert (= (and d!2076921 (not c!1221786)) b!6625904))

(assert (= (and b!6625904 c!1221785) b!6625902))

(assert (= (and b!6625904 (not c!1221785)) b!6625906))

(assert (= (and b!6625906 (not res!2716235)) b!6625899))

(assert (= (and b!6625899 res!2716236) b!6625898))

(assert (= (and b!6625898 res!2716238) b!6625908))

(assert (= (and b!6625908 res!2716234) b!6625897))

(assert (= (and b!6625899 (not res!2716237)) b!6625910))

(assert (= (and b!6625910 res!2716233) b!6625903))

(assert (= (and b!6625903 (not res!2716239)) b!6625909))

(assert (= (and b!6625909 (not res!2716232)) b!6625905))

(assert (= (or b!6625901 b!6625898 b!6625903) bm!581092))

(declare-fun m!7396194 () Bool)

(assert (=> b!6625905 m!7396194))

(assert (=> b!6625900 m!7395784))

(assert (=> b!6625907 m!7396194))

(assert (=> b!6625907 m!7396194))

(declare-fun m!7396196 () Bool)

(assert (=> b!6625907 m!7396196))

(declare-fun m!7396198 () Bool)

(assert (=> b!6625907 m!7396198))

(assert (=> b!6625907 m!7396196))

(assert (=> b!6625907 m!7396198))

(declare-fun m!7396200 () Bool)

(assert (=> b!6625907 m!7396200))

(assert (=> b!6625909 m!7396198))

(assert (=> b!6625909 m!7396198))

(declare-fun m!7396202 () Bool)

(assert (=> b!6625909 m!7396202))

(assert (=> b!6625897 m!7396194))

(declare-fun m!7396204 () Bool)

(assert (=> bm!581092 m!7396204))

(assert (=> b!6625908 m!7396198))

(assert (=> b!6625908 m!7396198))

(assert (=> b!6625908 m!7396202))

(assert (=> d!2076921 m!7396204))

(assert (=> d!2076921 m!7395796))

(assert (=> b!6625038 d!2076921))

(assert (=> b!6625038 d!2076811))

(assert (=> b!6625330 d!2076829))

(assert (=> b!6625330 d!2076831))

(assert (=> b!6625389 d!2076829))

(assert (=> b!6625389 d!2076831))

(assert (=> b!6624922 d!2076611))

(declare-fun d!2076923 () Bool)

(declare-fun c!1221787 () Bool)

(assert (=> d!2076923 (= c!1221787 (isEmpty!37954 (tail!12517 (t!379445 s!2326))))))

(declare-fun e!4007924 () Bool)

(assert (=> d!2076923 (= (matchZipper!2507 (derivationStepZipper!2461 lt!2418395 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))) e!4007924)))

(declare-fun b!6625911 () Bool)

(assert (=> b!6625911 (= e!4007924 (nullableZipper!2235 (derivationStepZipper!2461 lt!2418395 (head!13432 (t!379445 s!2326)))))))

(declare-fun b!6625912 () Bool)

(assert (=> b!6625912 (= e!4007924 (matchZipper!2507 (derivationStepZipper!2461 (derivationStepZipper!2461 lt!2418395 (head!13432 (t!379445 s!2326))) (head!13432 (tail!12517 (t!379445 s!2326)))) (tail!12517 (tail!12517 (t!379445 s!2326)))))))

(assert (= (and d!2076923 c!1221787) b!6625911))

(assert (= (and d!2076923 (not c!1221787)) b!6625912))

(assert (=> d!2076923 m!7395390))

(assert (=> d!2076923 m!7395884))

(assert (=> b!6625911 m!7395422))

(declare-fun m!7396206 () Bool)

(assert (=> b!6625911 m!7396206))

(assert (=> b!6625912 m!7395390))

(assert (=> b!6625912 m!7395888))

(assert (=> b!6625912 m!7395422))

(assert (=> b!6625912 m!7395888))

(declare-fun m!7396208 () Bool)

(assert (=> b!6625912 m!7396208))

(assert (=> b!6625912 m!7395390))

(assert (=> b!6625912 m!7395892))

(assert (=> b!6625912 m!7396208))

(assert (=> b!6625912 m!7395892))

(declare-fun m!7396210 () Bool)

(assert (=> b!6625912 m!7396210))

(assert (=> b!6624910 d!2076923))

(declare-fun bs!1700625 () Bool)

(declare-fun d!2076925 () Bool)

(assert (= bs!1700625 (and d!2076925 d!2076849)))

(declare-fun lambda!370220 () Int)

(assert (=> bs!1700625 (= lambda!370220 lambda!370206)))

(declare-fun bs!1700626 () Bool)

(assert (= bs!1700626 (and d!2076925 d!2076787)))

(assert (=> bs!1700626 (= lambda!370220 lambda!370198)))

(declare-fun bs!1700627 () Bool)

(assert (= bs!1700627 (and d!2076925 d!2076575)))

(assert (=> bs!1700627 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370220 lambda!370128))))

(declare-fun bs!1700628 () Bool)

(assert (= bs!1700628 (and d!2076925 d!2076731)))

(assert (=> bs!1700628 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370220 lambda!370186))))

(declare-fun bs!1700629 () Bool)

(assert (= bs!1700629 (and d!2076925 b!6624703)))

(assert (=> bs!1700629 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370220 lambda!370119))))

(assert (=> d!2076925 true))

(assert (=> d!2076925 (= (derivationStepZipper!2461 lt!2418395 (head!13432 (t!379445 s!2326))) (flatMap!2000 lt!2418395 lambda!370220))))

(declare-fun bs!1700630 () Bool)

(assert (= bs!1700630 d!2076925))

(declare-fun m!7396212 () Bool)

(assert (=> bs!1700630 m!7396212))

(assert (=> b!6624910 d!2076925))

(assert (=> b!6624910 d!2076789))

(assert (=> b!6624910 d!2076791))

(declare-fun d!2076927 () Bool)

(assert (=> d!2076927 (= (nullable!6488 (regTwo!33502 r!7292)) (nullableFct!2409 (regTwo!33502 r!7292)))))

(declare-fun bs!1700631 () Bool)

(assert (= bs!1700631 d!2076927))

(declare-fun m!7396214 () Bool)

(assert (=> bs!1700631 m!7396214))

(assert (=> b!6625417 d!2076927))

(declare-fun bs!1700632 () Bool)

(declare-fun d!2076929 () Bool)

(assert (= bs!1700632 (and d!2076929 d!2076857)))

(declare-fun lambda!370221 () Int)

(assert (=> bs!1700632 (= lambda!370221 lambda!370209)))

(declare-fun bs!1700633 () Bool)

(assert (= bs!1700633 (and d!2076929 d!2076651)))

(assert (=> bs!1700633 (= lambda!370221 lambda!370148)))

(declare-fun bs!1700634 () Bool)

(assert (= bs!1700634 (and d!2076929 d!2076749)))

(assert (=> bs!1700634 (= lambda!370221 lambda!370191)))

(declare-fun bs!1700635 () Bool)

(assert (= bs!1700635 (and d!2076929 d!2076779)))

(assert (=> bs!1700635 (= lambda!370221 lambda!370197)))

(declare-fun bs!1700636 () Bool)

(assert (= bs!1700636 (and d!2076929 d!2076623)))

(assert (=> bs!1700636 (= lambda!370221 lambda!370139)))

(declare-fun bs!1700637 () Bool)

(assert (= bs!1700637 (and d!2076929 d!2076639)))

(assert (=> bs!1700637 (= lambda!370221 lambda!370145)))

(declare-fun bs!1700638 () Bool)

(assert (= bs!1700638 (and d!2076929 d!2076875)))

(assert (=> bs!1700638 (= lambda!370221 lambda!370211)))

(declare-fun bs!1700639 () Bool)

(assert (= bs!1700639 (and d!2076929 d!2076853)))

(assert (=> bs!1700639 (= lambda!370221 lambda!370208)))

(declare-fun bs!1700640 () Bool)

(assert (= bs!1700640 (and d!2076929 d!2076633)))

(assert (=> bs!1700640 (= lambda!370221 lambda!370142)))

(declare-fun bs!1700641 () Bool)

(assert (= bs!1700641 (and d!2076929 d!2076695)))

(assert (=> bs!1700641 (= lambda!370221 lambda!370167)))

(assert (=> d!2076929 (= (inv!84484 setElem!45285) (forall!15690 (exprs!6379 setElem!45285) lambda!370221))))

(declare-fun bs!1700642 () Bool)

(assert (= bs!1700642 d!2076929))

(declare-fun m!7396216 () Bool)

(assert (=> bs!1700642 m!7396216))

(assert (=> setNonEmpty!45285 d!2076929))

(assert (=> b!6625414 d!2076767))

(declare-fun d!2076931 () Bool)

(assert (=> d!2076931 (= (isEmpty!37952 (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))) ((_ is Nil!65660) (t!379444 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(assert (=> b!6625154 d!2076931))

(assert (=> d!2076741 d!2076773))

(declare-fun d!2076933 () Bool)

(declare-fun res!2716244 () Bool)

(declare-fun e!4007926 () Bool)

(assert (=> d!2076933 (=> res!2716244 e!4007926)))

(assert (=> d!2076933 (= res!2716244 ((_ is ElementMatch!16495) (regTwo!33502 r!7292)))))

(assert (=> d!2076933 (= (validRegex!8231 (regTwo!33502 r!7292)) e!4007926)))

(declare-fun b!6625913 () Bool)

(declare-fun e!4007931 () Bool)

(declare-fun e!4007927 () Bool)

(assert (=> b!6625913 (= e!4007931 e!4007927)))

(declare-fun res!2716243 () Bool)

(assert (=> b!6625913 (= res!2716243 (not (nullable!6488 (reg!16824 (regTwo!33502 r!7292)))))))

(assert (=> b!6625913 (=> (not res!2716243) (not e!4007927))))

(declare-fun bm!581093 () Bool)

(declare-fun call!581099 () Bool)

(declare-fun c!1221788 () Bool)

(declare-fun c!1221789 () Bool)

(assert (=> bm!581093 (= call!581099 (validRegex!8231 (ite c!1221789 (reg!16824 (regTwo!33502 r!7292)) (ite c!1221788 (regOne!33503 (regTwo!33502 r!7292)) (regOne!33502 (regTwo!33502 r!7292))))))))

(declare-fun b!6625914 () Bool)

(declare-fun res!2716242 () Bool)

(declare-fun e!4007928 () Bool)

(assert (=> b!6625914 (=> res!2716242 e!4007928)))

(assert (=> b!6625914 (= res!2716242 (not ((_ is Concat!25340) (regTwo!33502 r!7292))))))

(declare-fun e!4007929 () Bool)

(assert (=> b!6625914 (= e!4007929 e!4007928)))

(declare-fun b!6625915 () Bool)

(assert (=> b!6625915 (= e!4007931 e!4007929)))

(assert (=> b!6625915 (= c!1221788 ((_ is Union!16495) (regTwo!33502 r!7292)))))

(declare-fun b!6625916 () Bool)

(assert (=> b!6625916 (= e!4007927 call!581099)))

(declare-fun b!6625917 () Bool)

(assert (=> b!6625917 (= e!4007926 e!4007931)))

(assert (=> b!6625917 (= c!1221789 ((_ is Star!16495) (regTwo!33502 r!7292)))))

(declare-fun b!6625918 () Bool)

(declare-fun e!4007925 () Bool)

(declare-fun call!581098 () Bool)

(assert (=> b!6625918 (= e!4007925 call!581098)))

(declare-fun b!6625919 () Bool)

(assert (=> b!6625919 (= e!4007928 e!4007925)))

(declare-fun res!2716240 () Bool)

(assert (=> b!6625919 (=> (not res!2716240) (not e!4007925))))

(declare-fun call!581100 () Bool)

(assert (=> b!6625919 (= res!2716240 call!581100)))

(declare-fun bm!581094 () Bool)

(assert (=> bm!581094 (= call!581098 (validRegex!8231 (ite c!1221788 (regTwo!33503 (regTwo!33502 r!7292)) (regTwo!33502 (regTwo!33502 r!7292)))))))

(declare-fun b!6625920 () Bool)

(declare-fun e!4007930 () Bool)

(assert (=> b!6625920 (= e!4007930 call!581098)))

(declare-fun b!6625921 () Bool)

(declare-fun res!2716241 () Bool)

(assert (=> b!6625921 (=> (not res!2716241) (not e!4007930))))

(assert (=> b!6625921 (= res!2716241 call!581100)))

(assert (=> b!6625921 (= e!4007929 e!4007930)))

(declare-fun bm!581095 () Bool)

(assert (=> bm!581095 (= call!581100 call!581099)))

(assert (= (and d!2076933 (not res!2716244)) b!6625917))

(assert (= (and b!6625917 c!1221789) b!6625913))

(assert (= (and b!6625917 (not c!1221789)) b!6625915))

(assert (= (and b!6625913 res!2716243) b!6625916))

(assert (= (and b!6625915 c!1221788) b!6625921))

(assert (= (and b!6625915 (not c!1221788)) b!6625914))

(assert (= (and b!6625921 res!2716241) b!6625920))

(assert (= (and b!6625914 (not res!2716242)) b!6625919))

(assert (= (and b!6625919 res!2716240) b!6625918))

(assert (= (or b!6625920 b!6625918) bm!581094))

(assert (= (or b!6625921 b!6625919) bm!581095))

(assert (= (or b!6625916 bm!581095) bm!581093))

(declare-fun m!7396218 () Bool)

(assert (=> b!6625913 m!7396218))

(declare-fun m!7396220 () Bool)

(assert (=> bm!581093 m!7396220))

(declare-fun m!7396222 () Bool)

(assert (=> bm!581094 m!7396222))

(assert (=> d!2076741 d!2076933))

(declare-fun b!6625922 () Bool)

(declare-fun e!4007935 () Bool)

(assert (=> b!6625922 (= e!4007935 (nullable!6488 (regOne!33502 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun bm!581097 () Bool)

(declare-fun call!581103 () (InoxSet Context!11758))

(declare-fun call!581105 () (InoxSet Context!11758))

(assert (=> bm!581097 (= call!581103 call!581105)))

(declare-fun b!6625923 () Bool)

(declare-fun e!4007932 () (InoxSet Context!11758))

(declare-fun call!581101 () (InoxSet Context!11758))

(assert (=> b!6625923 (= e!4007932 ((_ map or) call!581105 call!581101))))

(declare-fun b!6625924 () Bool)

(declare-fun c!1221793 () Bool)

(assert (=> b!6625924 (= c!1221793 ((_ is Star!16495) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun e!4007933 () (InoxSet Context!11758))

(declare-fun e!4007934 () (InoxSet Context!11758))

(assert (=> b!6625924 (= e!4007933 e!4007934)))

(declare-fun b!6625925 () Bool)

(declare-fun call!581104 () (InoxSet Context!11758))

(assert (=> b!6625925 (= e!4007933 call!581104)))

(declare-fun bm!581098 () Bool)

(declare-fun c!1221792 () Bool)

(declare-fun c!1221790 () Bool)

(declare-fun c!1221791 () Bool)

(declare-fun call!581102 () List!65784)

(assert (=> bm!581098 (= call!581105 (derivationStepZipperDown!1743 (ite c!1221790 (regOne!33503 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (ite c!1221792 (regTwo!33502 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (ite c!1221791 (regOne!33502 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (reg!16824 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))) (ite (or c!1221790 c!1221792) (ite c!1221581 lt!2418404 (Context!11759 call!580981)) (Context!11759 call!581102)) (h!72109 s!2326)))))

(declare-fun b!6625926 () Bool)

(assert (=> b!6625926 (= e!4007934 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625927 () Bool)

(declare-fun e!4007936 () (InoxSet Context!11758))

(assert (=> b!6625927 (= e!4007936 e!4007933)))

(assert (=> b!6625927 (= c!1221791 ((_ is Concat!25340) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun bm!581099 () Bool)

(declare-fun call!581106 () List!65784)

(assert (=> bm!581099 (= call!581106 ($colon$colon!2331 (exprs!6379 (ite c!1221581 lt!2418404 (Context!11759 call!580981))) (ite (or c!1221792 c!1221791) (regTwo!33502 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun b!6625928 () Bool)

(assert (=> b!6625928 (= e!4007936 ((_ map or) call!581101 call!581103))))

(declare-fun b!6625929 () Bool)

(assert (=> b!6625929 (= e!4007934 call!581104)))

(declare-fun bm!581100 () Bool)

(assert (=> bm!581100 (= call!581104 call!581103)))

(declare-fun bm!581096 () Bool)

(assert (=> bm!581096 (= call!581101 (derivationStepZipperDown!1743 (ite c!1221790 (regTwo!33503 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (regOne!33502 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))) (ite c!1221790 (ite c!1221581 lt!2418404 (Context!11759 call!580981)) (Context!11759 call!581106)) (h!72109 s!2326)))))

(declare-fun c!1221794 () Bool)

(declare-fun d!2076935 () Bool)

(assert (=> d!2076935 (= c!1221794 (and ((_ is ElementMatch!16495) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (= (c!1221458 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))) (h!72109 s!2326))))))

(declare-fun e!4007937 () (InoxSet Context!11758))

(assert (=> d!2076935 (= (derivationStepZipperDown!1743 (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))) (ite c!1221581 lt!2418404 (Context!11759 call!580981)) (h!72109 s!2326)) e!4007937)))

(declare-fun b!6625930 () Bool)

(assert (=> b!6625930 (= c!1221792 e!4007935)))

(declare-fun res!2716245 () Bool)

(assert (=> b!6625930 (=> (not res!2716245) (not e!4007935))))

(assert (=> b!6625930 (= res!2716245 ((_ is Concat!25340) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(assert (=> b!6625930 (= e!4007932 e!4007936)))

(declare-fun b!6625931 () Bool)

(assert (=> b!6625931 (= e!4007937 e!4007932)))

(assert (=> b!6625931 (= c!1221790 ((_ is Union!16495) (ite c!1221581 (regTwo!33503 (h!72108 (exprs!6379 (h!72110 zl!343)))) (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun bm!581101 () Bool)

(assert (=> bm!581101 (= call!581102 call!581106)))

(declare-fun b!6625932 () Bool)

(assert (=> b!6625932 (= e!4007937 (store ((as const (Array Context!11758 Bool)) false) (ite c!1221581 lt!2418404 (Context!11759 call!580981)) true))))

(assert (= (and d!2076935 c!1221794) b!6625932))

(assert (= (and d!2076935 (not c!1221794)) b!6625931))

(assert (= (and b!6625931 c!1221790) b!6625923))

(assert (= (and b!6625931 (not c!1221790)) b!6625930))

(assert (= (and b!6625930 res!2716245) b!6625922))

(assert (= (and b!6625930 c!1221792) b!6625928))

(assert (= (and b!6625930 (not c!1221792)) b!6625927))

(assert (= (and b!6625927 c!1221791) b!6625925))

(assert (= (and b!6625927 (not c!1221791)) b!6625924))

(assert (= (and b!6625924 c!1221793) b!6625929))

(assert (= (and b!6625924 (not c!1221793)) b!6625926))

(assert (= (or b!6625925 b!6625929) bm!581101))

(assert (= (or b!6625925 b!6625929) bm!581100))

(assert (= (or b!6625928 bm!581101) bm!581099))

(assert (= (or b!6625928 bm!581100) bm!581097))

(assert (= (or b!6625923 b!6625928) bm!581096))

(assert (= (or b!6625923 bm!581097) bm!581098))

(declare-fun m!7396224 () Bool)

(assert (=> bm!581099 m!7396224))

(declare-fun m!7396226 () Bool)

(assert (=> bm!581098 m!7396226))

(declare-fun m!7396228 () Bool)

(assert (=> b!6625922 m!7396228))

(declare-fun m!7396230 () Bool)

(assert (=> b!6625932 m!7396230))

(declare-fun m!7396232 () Bool)

(assert (=> bm!581096 m!7396232))

(assert (=> bm!580971 d!2076935))

(assert (=> d!2076747 d!2076741))

(assert (=> d!2076747 d!2076739))

(declare-fun d!2076937 () Bool)

(assert (=> d!2076937 (= (matchR!8678 (regTwo!33502 r!7292) s!2326) (matchRSpec!3596 (regTwo!33502 r!7292) s!2326))))

(assert (=> d!2076937 true))

(declare-fun _$88!5328 () Unit!159335)

(assert (=> d!2076937 (= (choose!49511 (regTwo!33502 r!7292) s!2326) _$88!5328)))

(declare-fun bs!1700643 () Bool)

(assert (= bs!1700643 d!2076937))

(assert (=> bs!1700643 m!7395230))

(assert (=> bs!1700643 m!7395240))

(assert (=> d!2076747 d!2076937))

(assert (=> d!2076747 d!2076933))

(assert (=> bs!1700459 d!2076685))

(assert (=> b!6625386 d!2076767))

(declare-fun d!2076939 () Bool)

(declare-fun c!1221795 () Bool)

(assert (=> d!2076939 (= c!1221795 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun e!4007938 () Bool)

(assert (=> d!2076939 (= (matchZipper!2507 (derivationStepZipper!2461 z!1189 (head!13432 s!2326)) (tail!12517 s!2326)) e!4007938)))

(declare-fun b!6625933 () Bool)

(assert (=> b!6625933 (= e!4007938 (nullableZipper!2235 (derivationStepZipper!2461 z!1189 (head!13432 s!2326))))))

(declare-fun b!6625934 () Bool)

(assert (=> b!6625934 (= e!4007938 (matchZipper!2507 (derivationStepZipper!2461 (derivationStepZipper!2461 z!1189 (head!13432 s!2326)) (head!13432 (tail!12517 s!2326))) (tail!12517 (tail!12517 s!2326))))))

(assert (= (and d!2076939 c!1221795) b!6625933))

(assert (= (and d!2076939 (not c!1221795)) b!6625934))

(assert (=> d!2076939 m!7395410))

(assert (=> d!2076939 m!7395720))

(assert (=> b!6625933 m!7395408))

(declare-fun m!7396234 () Bool)

(assert (=> b!6625933 m!7396234))

(assert (=> b!6625934 m!7395410))

(assert (=> b!6625934 m!7395968))

(assert (=> b!6625934 m!7395408))

(assert (=> b!6625934 m!7395968))

(declare-fun m!7396236 () Bool)

(assert (=> b!6625934 m!7396236))

(assert (=> b!6625934 m!7395410))

(assert (=> b!6625934 m!7395974))

(assert (=> b!6625934 m!7396236))

(assert (=> b!6625934 m!7395974))

(declare-fun m!7396238 () Bool)

(assert (=> b!6625934 m!7396238))

(assert (=> b!6624906 d!2076939))

(declare-fun bs!1700644 () Bool)

(declare-fun d!2076941 () Bool)

(assert (= bs!1700644 (and d!2076941 d!2076925)))

(declare-fun lambda!370222 () Int)

(assert (=> bs!1700644 (= (= (head!13432 s!2326) (head!13432 (t!379445 s!2326))) (= lambda!370222 lambda!370220))))

(declare-fun bs!1700645 () Bool)

(assert (= bs!1700645 (and d!2076941 d!2076849)))

(assert (=> bs!1700645 (= (= (head!13432 s!2326) (head!13432 (t!379445 s!2326))) (= lambda!370222 lambda!370206))))

(declare-fun bs!1700646 () Bool)

(assert (= bs!1700646 (and d!2076941 d!2076787)))

(assert (=> bs!1700646 (= (= (head!13432 s!2326) (head!13432 (t!379445 s!2326))) (= lambda!370222 lambda!370198))))

(declare-fun bs!1700647 () Bool)

(assert (= bs!1700647 (and d!2076941 d!2076575)))

(assert (=> bs!1700647 (= (= (head!13432 s!2326) (h!72109 s!2326)) (= lambda!370222 lambda!370128))))

(declare-fun bs!1700648 () Bool)

(assert (= bs!1700648 (and d!2076941 d!2076731)))

(assert (=> bs!1700648 (= (= (head!13432 s!2326) (h!72109 s!2326)) (= lambda!370222 lambda!370186))))

(declare-fun bs!1700649 () Bool)

(assert (= bs!1700649 (and d!2076941 b!6624703)))

(assert (=> bs!1700649 (= (= (head!13432 s!2326) (h!72109 s!2326)) (= lambda!370222 lambda!370119))))

(assert (=> d!2076941 true))

(assert (=> d!2076941 (= (derivationStepZipper!2461 z!1189 (head!13432 s!2326)) (flatMap!2000 z!1189 lambda!370222))))

(declare-fun bs!1700650 () Bool)

(assert (= bs!1700650 d!2076941))

(declare-fun m!7396240 () Bool)

(assert (=> bs!1700650 m!7396240))

(assert (=> b!6624906 d!2076941))

(assert (=> b!6624906 d!2076767))

(assert (=> b!6624906 d!2076831))

(assert (=> d!2076597 d!2076771))

(declare-fun d!2076943 () Bool)

(assert (=> d!2076943 (= (nullable!6488 (reg!16824 lt!2418413)) (nullableFct!2409 (reg!16824 lt!2418413)))))

(declare-fun bs!1700651 () Bool)

(assert (= bs!1700651 d!2076943))

(declare-fun m!7396242 () Bool)

(assert (=> bs!1700651 m!7396242))

(assert (=> b!6625137 d!2076943))

(assert (=> d!2076615 d!2076649))

(assert (=> d!2076615 d!2076597))

(declare-fun d!2076945 () Bool)

(declare-fun e!4007941 () Bool)

(assert (=> d!2076945 (= (matchZipper!2507 ((_ map or) lt!2418406 lt!2418394) (t!379445 s!2326)) e!4007941)))

(declare-fun res!2716248 () Bool)

(assert (=> d!2076945 (=> res!2716248 e!4007941)))

(assert (=> d!2076945 (= res!2716248 (matchZipper!2507 lt!2418406 (t!379445 s!2326)))))

(assert (=> d!2076945 true))

(declare-fun _$48!2345 () Unit!159335)

(assert (=> d!2076945 (= (choose!49500 lt!2418406 lt!2418394 (t!379445 s!2326)) _$48!2345)))

(declare-fun b!6625937 () Bool)

(assert (=> b!6625937 (= e!4007941 (matchZipper!2507 lt!2418394 (t!379445 s!2326)))))

(assert (= (and d!2076945 (not res!2716248)) b!6625937))

(assert (=> d!2076945 m!7395276))

(assert (=> d!2076945 m!7395216))

(assert (=> b!6625937 m!7395206))

(assert (=> d!2076615 d!2076945))

(declare-fun bs!1700652 () Bool)

(declare-fun d!2076947 () Bool)

(assert (= bs!1700652 (and d!2076947 d!2076775)))

(declare-fun lambda!370223 () Int)

(assert (=> bs!1700652 (= lambda!370223 lambda!370196)))

(declare-fun bs!1700653 () Bool)

(assert (= bs!1700653 (and d!2076947 d!2076851)))

(assert (=> bs!1700653 (= lambda!370223 lambda!370207)))

(declare-fun bs!1700654 () Bool)

(assert (= bs!1700654 (and d!2076947 d!2076865)))

(assert (=> bs!1700654 (= lambda!370223 lambda!370210)))

(assert (=> d!2076947 (= (nullableZipper!2235 lt!2418394) (exists!2662 lt!2418394 lambda!370223))))

(declare-fun bs!1700655 () Bool)

(assert (= bs!1700655 d!2076947))

(declare-fun m!7396244 () Bool)

(assert (=> bs!1700655 m!7396244))

(assert (=> b!6624907 d!2076947))

(assert (=> b!6625147 d!2076573))

(assert (=> b!6625425 d!2076829))

(assert (=> b!6625425 d!2076831))

(assert (=> d!2076609 d!2076773))

(declare-fun bs!1700656 () Bool)

(declare-fun b!6625945 () Bool)

(assert (= bs!1700656 (and b!6625945 d!2076807)))

(declare-fun lambda!370224 () Int)

(assert (=> bs!1700656 (not (= lambda!370224 lambda!370201))))

(declare-fun bs!1700657 () Bool)

(assert (= bs!1700657 (and b!6625945 b!6625663)))

(assert (=> bs!1700657 (not (= lambda!370224 lambda!370205))))

(declare-fun bs!1700658 () Bool)

(assert (= bs!1700658 (and b!6625945 b!6625637)))

(assert (=> bs!1700658 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 (regOne!33503 (regTwo!33502 r!7292)))) (= (regOne!33503 (regOne!33502 r!7292)) (regOne!33503 (regTwo!33502 r!7292)))) (= lambda!370224 lambda!370202))))

(declare-fun bs!1700659 () Bool)

(assert (= bs!1700659 (and b!6625945 d!2076667)))

(assert (=> bs!1700659 (not (= lambda!370224 lambda!370156))))

(declare-fun bs!1700660 () Bool)

(assert (= bs!1700660 (and b!6625945 b!6625352)))

(assert (=> bs!1700660 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 (regOne!33502 r!7292))) (= (regOne!33503 (regOne!33502 r!7292)) (regOne!33502 r!7292))) (= lambda!370224 lambda!370187))))

(declare-fun bs!1700661 () Bool)

(assert (= bs!1700661 (and b!6625945 b!6625636)))

(assert (=> bs!1700661 (not (= lambda!370224 lambda!370203))))

(declare-fun bs!1700662 () Bool)

(assert (= bs!1700662 (and b!6625945 b!6624705)))

(assert (=> bs!1700662 (not (= lambda!370224 lambda!370118))))

(declare-fun bs!1700663 () Bool)

(assert (= bs!1700663 (and b!6625945 b!6625664)))

(assert (=> bs!1700663 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33503 r!7292))) (= (regOne!33503 (regOne!33502 r!7292)) (regTwo!33503 r!7292))) (= lambda!370224 lambda!370204))))

(declare-fun bs!1700664 () Bool)

(assert (= bs!1700664 (and b!6625945 b!6625252)))

(assert (=> bs!1700664 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 r!7292)) (= (regOne!33503 (regOne!33502 r!7292)) r!7292)) (= lambda!370224 lambda!370175))))

(declare-fun bs!1700665 () Bool)

(assert (= bs!1700665 (and b!6625945 b!6625871)))

(assert (=> bs!1700665 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regOne!33503 (regOne!33502 r!7292)) (regTwo!33503 (regTwo!33502 r!7292)))) (= lambda!370224 lambda!370218))))

(declare-fun bs!1700666 () Bool)

(assert (= bs!1700666 (and b!6625945 b!6625251)))

(assert (=> bs!1700666 (not (= lambda!370224 lambda!370179))))

(assert (=> bs!1700659 (not (= lambda!370224 lambda!370159))))

(assert (=> bs!1700662 (not (= lambda!370224 lambda!370117))))

(declare-fun bs!1700667 () Bool)

(assert (= bs!1700667 (and b!6625945 b!6625870)))

(assert (=> bs!1700667 (not (= lambda!370224 lambda!370219))))

(declare-fun bs!1700668 () Bool)

(assert (= bs!1700668 (and b!6625945 b!6625398)))

(assert (=> bs!1700668 (not (= lambda!370224 lambda!370190))))

(declare-fun bs!1700669 () Bool)

(assert (= bs!1700669 (and b!6625945 b!6625351)))

(assert (=> bs!1700669 (not (= lambda!370224 lambda!370188))))

(declare-fun bs!1700670 () Bool)

(assert (= bs!1700670 (and b!6625945 d!2076665)))

(assert (=> bs!1700670 (not (= lambda!370224 lambda!370151))))

(declare-fun bs!1700671 () Bool)

(assert (= bs!1700671 (and b!6625945 b!6625399)))

(assert (=> bs!1700671 (= (and (= (reg!16824 (regOne!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33502 r!7292))) (= (regOne!33503 (regOne!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370224 lambda!370189))))

(declare-fun bs!1700672 () Bool)

(assert (= bs!1700672 (and b!6625945 d!2076901)))

(assert (=> bs!1700672 (not (= lambda!370224 lambda!370217))))

(assert (=> bs!1700672 (not (= lambda!370224 lambda!370216))))

(assert (=> b!6625945 true))

(assert (=> b!6625945 true))

(declare-fun bs!1700673 () Bool)

(declare-fun b!6625944 () Bool)

(assert (= bs!1700673 (and b!6625944 d!2076807)))

(declare-fun lambda!370225 () Int)

(assert (=> bs!1700673 (not (= lambda!370225 lambda!370201))))

(declare-fun bs!1700674 () Bool)

(assert (= bs!1700674 (and b!6625944 b!6625663)))

(assert (=> bs!1700674 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33503 r!7292))) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33503 r!7292)))) (= lambda!370225 lambda!370205))))

(declare-fun bs!1700675 () Bool)

(assert (= bs!1700675 (and b!6625944 b!6625637)))

(assert (=> bs!1700675 (not (= lambda!370225 lambda!370202))))

(declare-fun bs!1700676 () Bool)

(assert (= bs!1700676 (and b!6625944 d!2076667)))

(assert (=> bs!1700676 (not (= lambda!370225 lambda!370156))))

(declare-fun bs!1700677 () Bool)

(assert (= bs!1700677 (and b!6625944 b!6625352)))

(assert (=> bs!1700677 (not (= lambda!370225 lambda!370187))))

(declare-fun bs!1700678 () Bool)

(assert (= bs!1700678 (and b!6625944 b!6625636)))

(assert (=> bs!1700678 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370225 lambda!370203))))

(declare-fun bs!1700679 () Bool)

(assert (= bs!1700679 (and b!6625944 b!6624705)))

(assert (=> bs!1700679 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370225 lambda!370118))))

(declare-fun bs!1700680 () Bool)

(assert (= bs!1700680 (and b!6625944 b!6625252)))

(assert (=> bs!1700680 (not (= lambda!370225 lambda!370175))))

(declare-fun bs!1700681 () Bool)

(assert (= bs!1700681 (and b!6625944 b!6625871)))

(assert (=> bs!1700681 (not (= lambda!370225 lambda!370218))))

(declare-fun bs!1700682 () Bool)

(assert (= bs!1700682 (and b!6625944 b!6625251)))

(assert (=> bs!1700682 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370225 lambda!370179))))

(assert (=> bs!1700676 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370225 lambda!370159))))

(assert (=> bs!1700679 (not (= lambda!370225 lambda!370117))))

(declare-fun bs!1700683 () Bool)

(assert (= bs!1700683 (and b!6625944 b!6625870)))

(assert (=> bs!1700683 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))))) (= lambda!370225 lambda!370219))))

(declare-fun bs!1700684 () Bool)

(assert (= bs!1700684 (and b!6625944 b!6625398)))

(assert (=> bs!1700684 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370225 lambda!370190))))

(declare-fun bs!1700685 () Bool)

(assert (= bs!1700685 (and b!6625944 b!6625351)))

(assert (=> bs!1700685 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370225 lambda!370188))))

(declare-fun bs!1700686 () Bool)

(assert (= bs!1700686 (and b!6625944 d!2076665)))

(assert (=> bs!1700686 (not (= lambda!370225 lambda!370151))))

(declare-fun bs!1700687 () Bool)

(assert (= bs!1700687 (and b!6625944 b!6625399)))

(assert (=> bs!1700687 (not (= lambda!370225 lambda!370189))))

(declare-fun bs!1700688 () Bool)

(assert (= bs!1700688 (and b!6625944 d!2076901)))

(assert (=> bs!1700688 (= (and (= (regOne!33502 (regOne!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370225 lambda!370217))))

(assert (=> bs!1700688 (not (= lambda!370225 lambda!370216))))

(declare-fun bs!1700689 () Bool)

(assert (= bs!1700689 (and b!6625944 b!6625945)))

(assert (=> bs!1700689 (not (= lambda!370225 lambda!370224))))

(declare-fun bs!1700690 () Bool)

(assert (= bs!1700690 (and b!6625944 b!6625664)))

(assert (=> bs!1700690 (not (= lambda!370225 lambda!370204))))

(assert (=> b!6625944 true))

(assert (=> b!6625944 true))

(declare-fun b!6625938 () Bool)

(declare-fun c!1221799 () Bool)

(assert (=> b!6625938 (= c!1221799 ((_ is Union!16495) (regOne!33503 (regOne!33502 r!7292))))))

(declare-fun e!4007942 () Bool)

(declare-fun e!4007945 () Bool)

(assert (=> b!6625938 (= e!4007942 e!4007945)))

(declare-fun b!6625939 () Bool)

(declare-fun e!4007948 () Bool)

(declare-fun e!4007944 () Bool)

(assert (=> b!6625939 (= e!4007948 e!4007944)))

(declare-fun res!2716249 () Bool)

(assert (=> b!6625939 (= res!2716249 (not ((_ is EmptyLang!16495) (regOne!33503 (regOne!33502 r!7292)))))))

(assert (=> b!6625939 (=> (not res!2716249) (not e!4007944))))

(declare-fun b!6625940 () Bool)

(declare-fun e!4007943 () Bool)

(assert (=> b!6625940 (= e!4007945 e!4007943)))

(declare-fun res!2716250 () Bool)

(assert (=> b!6625940 (= res!2716250 (matchRSpec!3596 (regOne!33503 (regOne!33503 (regOne!33502 r!7292))) s!2326))))

(assert (=> b!6625940 (=> res!2716250 e!4007943)))

(declare-fun d!2076949 () Bool)

(declare-fun c!1221796 () Bool)

(assert (=> d!2076949 (= c!1221796 ((_ is EmptyExpr!16495) (regOne!33503 (regOne!33502 r!7292))))))

(assert (=> d!2076949 (= (matchRSpec!3596 (regOne!33503 (regOne!33502 r!7292)) s!2326) e!4007948)))

(declare-fun b!6625941 () Bool)

(assert (=> b!6625941 (= e!4007943 (matchRSpec!3596 (regTwo!33503 (regOne!33503 (regOne!33502 r!7292))) s!2326))))

(declare-fun bm!581102 () Bool)

(declare-fun call!581108 () Bool)

(assert (=> bm!581102 (= call!581108 (isEmpty!37954 s!2326))))

(declare-fun b!6625942 () Bool)

(declare-fun res!2716251 () Bool)

(declare-fun e!4007946 () Bool)

(assert (=> b!6625942 (=> res!2716251 e!4007946)))

(assert (=> b!6625942 (= res!2716251 call!581108)))

(declare-fun e!4007947 () Bool)

(assert (=> b!6625942 (= e!4007947 e!4007946)))

(declare-fun b!6625943 () Bool)

(assert (=> b!6625943 (= e!4007948 call!581108)))

(declare-fun bm!581103 () Bool)

(declare-fun call!581107 () Bool)

(declare-fun c!1221797 () Bool)

(assert (=> bm!581103 (= call!581107 (Exists!3565 (ite c!1221797 lambda!370224 lambda!370225)))))

(assert (=> b!6625944 (= e!4007947 call!581107)))

(assert (=> b!6625945 (= e!4007946 call!581107)))

(declare-fun b!6625946 () Bool)

(declare-fun c!1221798 () Bool)

(assert (=> b!6625946 (= c!1221798 ((_ is ElementMatch!16495) (regOne!33503 (regOne!33502 r!7292))))))

(assert (=> b!6625946 (= e!4007944 e!4007942)))

(declare-fun b!6625947 () Bool)

(assert (=> b!6625947 (= e!4007942 (= s!2326 (Cons!65661 (c!1221458 (regOne!33503 (regOne!33502 r!7292))) Nil!65661)))))

(declare-fun b!6625948 () Bool)

(assert (=> b!6625948 (= e!4007945 e!4007947)))

(assert (=> b!6625948 (= c!1221797 ((_ is Star!16495) (regOne!33503 (regOne!33502 r!7292))))))

(assert (= (and d!2076949 c!1221796) b!6625943))

(assert (= (and d!2076949 (not c!1221796)) b!6625939))

(assert (= (and b!6625939 res!2716249) b!6625946))

(assert (= (and b!6625946 c!1221798) b!6625947))

(assert (= (and b!6625946 (not c!1221798)) b!6625938))

(assert (= (and b!6625938 c!1221799) b!6625940))

(assert (= (and b!6625938 (not c!1221799)) b!6625948))

(assert (= (and b!6625940 (not res!2716250)) b!6625941))

(assert (= (and b!6625948 c!1221797) b!6625942))

(assert (= (and b!6625948 (not c!1221797)) b!6625944))

(assert (= (and b!6625942 (not res!2716251)) b!6625945))

(assert (= (or b!6625945 b!6625944) bm!581103))

(assert (= (or b!6625943 b!6625942) bm!581102))

(declare-fun m!7396246 () Bool)

(assert (=> b!6625940 m!7396246))

(declare-fun m!7396248 () Bool)

(assert (=> b!6625941 m!7396248))

(assert (=> bm!581102 m!7395402))

(declare-fun m!7396250 () Bool)

(assert (=> bm!581103 m!7396250))

(assert (=> b!6625347 d!2076949))

(declare-fun d!2076951 () Bool)

(assert (=> d!2076951 (= (isEmptyExpr!1868 lt!2418461) ((_ is EmptyExpr!16495) lt!2418461))))

(assert (=> b!6625010 d!2076951))

(declare-fun d!2076953 () Bool)

(assert (=> d!2076953 true))

(declare-fun setRes!45292 () Bool)

(assert (=> d!2076953 setRes!45292))

(declare-fun condSetEmpty!45292 () Bool)

(declare-fun res!2716252 () (InoxSet Context!11758))

(assert (=> d!2076953 (= condSetEmpty!45292 (= res!2716252 ((as const (Array Context!11758 Bool)) false)))))

(assert (=> d!2076953 (= (choose!49495 lt!2418411 lambda!370119) res!2716252)))

(declare-fun setIsEmpty!45292 () Bool)

(assert (=> setIsEmpty!45292 setRes!45292))

(declare-fun e!4007949 () Bool)

(declare-fun setElem!45292 () Context!11758)

(declare-fun tp!1824916 () Bool)

(declare-fun setNonEmpty!45292 () Bool)

(assert (=> setNonEmpty!45292 (= setRes!45292 (and tp!1824916 (inv!84484 setElem!45292) e!4007949))))

(declare-fun setRest!45292 () (InoxSet Context!11758))

(assert (=> setNonEmpty!45292 (= res!2716252 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) setElem!45292 true) setRest!45292))))

(declare-fun b!6625949 () Bool)

(declare-fun tp!1824917 () Bool)

(assert (=> b!6625949 (= e!4007949 tp!1824917)))

(assert (= (and d!2076953 condSetEmpty!45292) setIsEmpty!45292))

(assert (= (and d!2076953 (not condSetEmpty!45292)) setNonEmpty!45292))

(assert (= setNonEmpty!45292 b!6625949))

(declare-fun m!7396252 () Bool)

(assert (=> setNonEmpty!45292 m!7396252))

(assert (=> d!2076577 d!2076953))

(declare-fun b!6625950 () Bool)

(declare-fun e!4007953 () Bool)

(assert (=> b!6625950 (= e!4007953 (nullable!6488 (regOne!33502 (h!72108 (exprs!6379 lt!2418404)))))))

(declare-fun bm!581105 () Bool)

(declare-fun call!581111 () (InoxSet Context!11758))

(declare-fun call!581113 () (InoxSet Context!11758))

(assert (=> bm!581105 (= call!581111 call!581113)))

(declare-fun b!6625951 () Bool)

(declare-fun e!4007950 () (InoxSet Context!11758))

(declare-fun call!581109 () (InoxSet Context!11758))

(assert (=> b!6625951 (= e!4007950 ((_ map or) call!581113 call!581109))))

(declare-fun b!6625952 () Bool)

(declare-fun c!1221803 () Bool)

(assert (=> b!6625952 (= c!1221803 ((_ is Star!16495) (h!72108 (exprs!6379 lt!2418404))))))

(declare-fun e!4007951 () (InoxSet Context!11758))

(declare-fun e!4007952 () (InoxSet Context!11758))

(assert (=> b!6625952 (= e!4007951 e!4007952)))

(declare-fun b!6625953 () Bool)

(declare-fun call!581112 () (InoxSet Context!11758))

(assert (=> b!6625953 (= e!4007951 call!581112)))

(declare-fun c!1221800 () Bool)

(declare-fun bm!581106 () Bool)

(declare-fun call!581110 () List!65784)

(declare-fun c!1221802 () Bool)

(declare-fun c!1221801 () Bool)

(assert (=> bm!581106 (= call!581113 (derivationStepZipperDown!1743 (ite c!1221800 (regOne!33503 (h!72108 (exprs!6379 lt!2418404))) (ite c!1221802 (regTwo!33502 (h!72108 (exprs!6379 lt!2418404))) (ite c!1221801 (regOne!33502 (h!72108 (exprs!6379 lt!2418404))) (reg!16824 (h!72108 (exprs!6379 lt!2418404)))))) (ite (or c!1221800 c!1221802) (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (Context!11759 call!581110)) (h!72109 s!2326)))))

(declare-fun b!6625954 () Bool)

(assert (=> b!6625954 (= e!4007952 ((as const (Array Context!11758 Bool)) false))))

(declare-fun b!6625955 () Bool)

(declare-fun e!4007954 () (InoxSet Context!11758))

(assert (=> b!6625955 (= e!4007954 e!4007951)))

(assert (=> b!6625955 (= c!1221801 ((_ is Concat!25340) (h!72108 (exprs!6379 lt!2418404))))))

(declare-fun call!581114 () List!65784)

(declare-fun bm!581107 () Bool)

(assert (=> bm!581107 (= call!581114 ($colon$colon!2331 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404)))) (ite (or c!1221802 c!1221801) (regTwo!33502 (h!72108 (exprs!6379 lt!2418404))) (h!72108 (exprs!6379 lt!2418404)))))))

(declare-fun b!6625956 () Bool)

(assert (=> b!6625956 (= e!4007954 ((_ map or) call!581109 call!581111))))

(declare-fun b!6625957 () Bool)

(assert (=> b!6625957 (= e!4007952 call!581112)))

(declare-fun bm!581108 () Bool)

(assert (=> bm!581108 (= call!581112 call!581111)))

(declare-fun bm!581104 () Bool)

(assert (=> bm!581104 (= call!581109 (derivationStepZipperDown!1743 (ite c!1221800 (regTwo!33503 (h!72108 (exprs!6379 lt!2418404))) (regOne!33502 (h!72108 (exprs!6379 lt!2418404)))) (ite c!1221800 (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (Context!11759 call!581114)) (h!72109 s!2326)))))

(declare-fun d!2076955 () Bool)

(declare-fun c!1221804 () Bool)

(assert (=> d!2076955 (= c!1221804 (and ((_ is ElementMatch!16495) (h!72108 (exprs!6379 lt!2418404))) (= (c!1221458 (h!72108 (exprs!6379 lt!2418404))) (h!72109 s!2326))))))

(declare-fun e!4007955 () (InoxSet Context!11758))

(assert (=> d!2076955 (= (derivationStepZipperDown!1743 (h!72108 (exprs!6379 lt!2418404)) (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (h!72109 s!2326)) e!4007955)))

(declare-fun b!6625958 () Bool)

(assert (=> b!6625958 (= c!1221802 e!4007953)))

(declare-fun res!2716253 () Bool)

(assert (=> b!6625958 (=> (not res!2716253) (not e!4007953))))

(assert (=> b!6625958 (= res!2716253 ((_ is Concat!25340) (h!72108 (exprs!6379 lt!2418404))))))

(assert (=> b!6625958 (= e!4007950 e!4007954)))

(declare-fun b!6625959 () Bool)

(assert (=> b!6625959 (= e!4007955 e!4007950)))

(assert (=> b!6625959 (= c!1221800 ((_ is Union!16495) (h!72108 (exprs!6379 lt!2418404))))))

(declare-fun bm!581109 () Bool)

(assert (=> bm!581109 (= call!581110 call!581114)))

(declare-fun b!6625960 () Bool)

(assert (=> b!6625960 (= e!4007955 (store ((as const (Array Context!11758 Bool)) false) (Context!11759 (t!379444 (exprs!6379 lt!2418404))) true))))

(assert (= (and d!2076955 c!1221804) b!6625960))

(assert (= (and d!2076955 (not c!1221804)) b!6625959))

(assert (= (and b!6625959 c!1221800) b!6625951))

(assert (= (and b!6625959 (not c!1221800)) b!6625958))

(assert (= (and b!6625958 res!2716253) b!6625950))

(assert (= (and b!6625958 c!1221802) b!6625956))

(assert (= (and b!6625958 (not c!1221802)) b!6625955))

(assert (= (and b!6625955 c!1221801) b!6625953))

(assert (= (and b!6625955 (not c!1221801)) b!6625952))

(assert (= (and b!6625952 c!1221803) b!6625957))

(assert (= (and b!6625952 (not c!1221803)) b!6625954))

(assert (= (or b!6625953 b!6625957) bm!581109))

(assert (= (or b!6625953 b!6625957) bm!581108))

(assert (= (or b!6625956 bm!581109) bm!581107))

(assert (= (or b!6625956 bm!581108) bm!581105))

(assert (= (or b!6625951 b!6625956) bm!581104))

(assert (= (or b!6625951 bm!581105) bm!581106))

(declare-fun m!7396254 () Bool)

(assert (=> bm!581107 m!7396254))

(declare-fun m!7396256 () Bool)

(assert (=> bm!581106 m!7396256))

(declare-fun m!7396258 () Bool)

(assert (=> b!6625950 m!7396258))

(declare-fun m!7396260 () Bool)

(assert (=> b!6625960 m!7396260))

(declare-fun m!7396262 () Bool)

(assert (=> bm!581104 m!7396262))

(assert (=> bm!580937 d!2076955))

(declare-fun d!2076957 () Bool)

(declare-fun res!2716258 () Bool)

(declare-fun e!4007957 () Bool)

(assert (=> d!2076957 (=> res!2716258 e!4007957)))

(assert (=> d!2076957 (= res!2716258 ((_ is ElementMatch!16495) (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))

(assert (=> d!2076957 (= (validRegex!8231 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))) e!4007957)))

(declare-fun b!6625961 () Bool)

(declare-fun e!4007962 () Bool)

(declare-fun e!4007958 () Bool)

(assert (=> b!6625961 (= e!4007962 e!4007958)))

(declare-fun res!2716257 () Bool)

(assert (=> b!6625961 (= res!2716257 (not (nullable!6488 (reg!16824 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))))

(assert (=> b!6625961 (=> (not res!2716257) (not e!4007958))))

(declare-fun c!1221805 () Bool)

(declare-fun c!1221806 () Bool)

(declare-fun bm!581110 () Bool)

(declare-fun call!581116 () Bool)

(assert (=> bm!581110 (= call!581116 (validRegex!8231 (ite c!1221806 (reg!16824 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))) (ite c!1221805 (regOne!33503 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))) (regOne!33502 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413)))))))))

(declare-fun b!6625962 () Bool)

(declare-fun res!2716256 () Bool)

(declare-fun e!4007959 () Bool)

(assert (=> b!6625962 (=> res!2716256 e!4007959)))

(assert (=> b!6625962 (= res!2716256 (not ((_ is Concat!25340) (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413)))))))

(declare-fun e!4007960 () Bool)

(assert (=> b!6625962 (= e!4007960 e!4007959)))

(declare-fun b!6625963 () Bool)

(assert (=> b!6625963 (= e!4007962 e!4007960)))

(assert (=> b!6625963 (= c!1221805 ((_ is Union!16495) (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))

(declare-fun b!6625964 () Bool)

(assert (=> b!6625964 (= e!4007958 call!581116)))

(declare-fun b!6625965 () Bool)

(assert (=> b!6625965 (= e!4007957 e!4007962)))

(assert (=> b!6625965 (= c!1221806 ((_ is Star!16495) (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))

(declare-fun b!6625966 () Bool)

(declare-fun e!4007956 () Bool)

(declare-fun call!581115 () Bool)

(assert (=> b!6625966 (= e!4007956 call!581115)))

(declare-fun b!6625967 () Bool)

(assert (=> b!6625967 (= e!4007959 e!4007956)))

(declare-fun res!2716254 () Bool)

(assert (=> b!6625967 (=> (not res!2716254) (not e!4007956))))

(declare-fun call!581117 () Bool)

(assert (=> b!6625967 (= res!2716254 call!581117)))

(declare-fun bm!581111 () Bool)

(assert (=> bm!581111 (= call!581115 (validRegex!8231 (ite c!1221805 (regTwo!33503 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))) (regTwo!33502 (ite c!1221586 (regTwo!33503 lt!2418413) (regTwo!33502 lt!2418413))))))))

(declare-fun b!6625968 () Bool)

(declare-fun e!4007961 () Bool)

(assert (=> b!6625968 (= e!4007961 call!581115)))

(declare-fun b!6625969 () Bool)

(declare-fun res!2716255 () Bool)

(assert (=> b!6625969 (=> (not res!2716255) (not e!4007961))))

(assert (=> b!6625969 (= res!2716255 call!581117)))

(assert (=> b!6625969 (= e!4007960 e!4007961)))

(declare-fun bm!581112 () Bool)

(assert (=> bm!581112 (= call!581117 call!581116)))

(assert (= (and d!2076957 (not res!2716258)) b!6625965))

(assert (= (and b!6625965 c!1221806) b!6625961))

(assert (= (and b!6625965 (not c!1221806)) b!6625963))

(assert (= (and b!6625961 res!2716257) b!6625964))

(assert (= (and b!6625963 c!1221805) b!6625969))

(assert (= (and b!6625963 (not c!1221805)) b!6625962))

(assert (= (and b!6625969 res!2716255) b!6625968))

(assert (= (and b!6625962 (not res!2716256)) b!6625967))

(assert (= (and b!6625967 res!2716254) b!6625966))

(assert (= (or b!6625968 b!6625966) bm!581111))

(assert (= (or b!6625969 b!6625967) bm!581112))

(assert (= (or b!6625964 bm!581112) bm!581110))

(declare-fun m!7396264 () Bool)

(assert (=> b!6625961 m!7396264))

(declare-fun m!7396266 () Bool)

(assert (=> bm!581110 m!7396266))

(declare-fun m!7396268 () Bool)

(assert (=> bm!581111 m!7396268))

(assert (=> bm!580978 d!2076957))

(declare-fun d!2076959 () Bool)

(assert (=> d!2076959 (= (isEmpty!37952 (unfocusZipperList!1916 zl!343)) ((_ is Nil!65660) (unfocusZipperList!1916 zl!343)))))

(assert (=> b!6624963 d!2076959))

(declare-fun b!6625970 () Bool)

(declare-fun e!4007964 () (InoxSet Context!11758))

(assert (=> b!6625970 (= e!4007964 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2076961 () Bool)

(declare-fun c!1221808 () Bool)

(declare-fun e!4007963 () Bool)

(assert (=> d!2076961 (= c!1221808 e!4007963)))

(declare-fun res!2716259 () Bool)

(assert (=> d!2076961 (=> (not res!2716259) (not e!4007963))))

(assert (=> d!2076961 (= res!2716259 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun e!4007965 () (InoxSet Context!11758))

(assert (=> d!2076961 (= (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))) (h!72109 s!2326)) e!4007965)))

(declare-fun b!6625971 () Bool)

(assert (=> b!6625971 (= e!4007965 e!4007964)))

(declare-fun c!1221807 () Bool)

(assert (=> b!6625971 (= c!1221807 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))))))))

(declare-fun call!581118 () (InoxSet Context!11758))

(declare-fun b!6625972 () Bool)

(assert (=> b!6625972 (= e!4007965 ((_ map or) call!581118 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343))))))) (h!72109 s!2326))))))

(declare-fun b!6625973 () Bool)

(assert (=> b!6625973 (= e!4007964 call!581118)))

(declare-fun b!6625974 () Bool)

(assert (=> b!6625974 (= e!4007963 (nullable!6488 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343))))))))))

(declare-fun bm!581113 () Bool)

(assert (=> bm!581113 (= call!581118 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343)))))) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 (h!72110 zl!343))))))) (h!72109 s!2326)))))

(assert (= (and d!2076961 res!2716259) b!6625974))

(assert (= (and d!2076961 c!1221808) b!6625972))

(assert (= (and d!2076961 (not c!1221808)) b!6625971))

(assert (= (and b!6625971 c!1221807) b!6625973))

(assert (= (and b!6625971 (not c!1221807)) b!6625970))

(assert (= (or b!6625972 b!6625973) bm!581113))

(declare-fun m!7396270 () Bool)

(assert (=> b!6625972 m!7396270))

(declare-fun m!7396272 () Bool)

(assert (=> b!6625974 m!7396272))

(declare-fun m!7396274 () Bool)

(assert (=> bm!581113 m!7396274))

(assert (=> b!6625093 d!2076961))

(assert (=> b!6625039 d!2076861))

(declare-fun d!2076963 () Bool)

(declare-fun res!2716264 () Bool)

(declare-fun e!4007967 () Bool)

(assert (=> d!2076963 (=> res!2716264 e!4007967)))

(assert (=> d!2076963 (= res!2716264 ((_ is ElementMatch!16495) lt!2418461))))

(assert (=> d!2076963 (= (validRegex!8231 lt!2418461) e!4007967)))

(declare-fun b!6625975 () Bool)

(declare-fun e!4007972 () Bool)

(declare-fun e!4007968 () Bool)

(assert (=> b!6625975 (= e!4007972 e!4007968)))

(declare-fun res!2716263 () Bool)

(assert (=> b!6625975 (= res!2716263 (not (nullable!6488 (reg!16824 lt!2418461))))))

(assert (=> b!6625975 (=> (not res!2716263) (not e!4007968))))

(declare-fun c!1221809 () Bool)

(declare-fun c!1221810 () Bool)

(declare-fun bm!581114 () Bool)

(declare-fun call!581120 () Bool)

(assert (=> bm!581114 (= call!581120 (validRegex!8231 (ite c!1221810 (reg!16824 lt!2418461) (ite c!1221809 (regOne!33503 lt!2418461) (regOne!33502 lt!2418461)))))))

(declare-fun b!6625976 () Bool)

(declare-fun res!2716262 () Bool)

(declare-fun e!4007969 () Bool)

(assert (=> b!6625976 (=> res!2716262 e!4007969)))

(assert (=> b!6625976 (= res!2716262 (not ((_ is Concat!25340) lt!2418461)))))

(declare-fun e!4007970 () Bool)

(assert (=> b!6625976 (= e!4007970 e!4007969)))

(declare-fun b!6625977 () Bool)

(assert (=> b!6625977 (= e!4007972 e!4007970)))

(assert (=> b!6625977 (= c!1221809 ((_ is Union!16495) lt!2418461))))

(declare-fun b!6625978 () Bool)

(assert (=> b!6625978 (= e!4007968 call!581120)))

(declare-fun b!6625979 () Bool)

(assert (=> b!6625979 (= e!4007967 e!4007972)))

(assert (=> b!6625979 (= c!1221810 ((_ is Star!16495) lt!2418461))))

(declare-fun b!6625980 () Bool)

(declare-fun e!4007966 () Bool)

(declare-fun call!581119 () Bool)

(assert (=> b!6625980 (= e!4007966 call!581119)))

(declare-fun b!6625981 () Bool)

(assert (=> b!6625981 (= e!4007969 e!4007966)))

(declare-fun res!2716260 () Bool)

(assert (=> b!6625981 (=> (not res!2716260) (not e!4007966))))

(declare-fun call!581121 () Bool)

(assert (=> b!6625981 (= res!2716260 call!581121)))

(declare-fun bm!581115 () Bool)

(assert (=> bm!581115 (= call!581119 (validRegex!8231 (ite c!1221809 (regTwo!33503 lt!2418461) (regTwo!33502 lt!2418461))))))

(declare-fun b!6625982 () Bool)

(declare-fun e!4007971 () Bool)

(assert (=> b!6625982 (= e!4007971 call!581119)))

(declare-fun b!6625983 () Bool)

(declare-fun res!2716261 () Bool)

(assert (=> b!6625983 (=> (not res!2716261) (not e!4007971))))

(assert (=> b!6625983 (= res!2716261 call!581121)))

(assert (=> b!6625983 (= e!4007970 e!4007971)))

(declare-fun bm!581116 () Bool)

(assert (=> bm!581116 (= call!581121 call!581120)))

(assert (= (and d!2076963 (not res!2716264)) b!6625979))

(assert (= (and b!6625979 c!1221810) b!6625975))

(assert (= (and b!6625979 (not c!1221810)) b!6625977))

(assert (= (and b!6625975 res!2716263) b!6625978))

(assert (= (and b!6625977 c!1221809) b!6625983))

(assert (= (and b!6625977 (not c!1221809)) b!6625976))

(assert (= (and b!6625983 res!2716261) b!6625982))

(assert (= (and b!6625976 (not res!2716262)) b!6625981))

(assert (= (and b!6625981 res!2716260) b!6625980))

(assert (= (or b!6625982 b!6625980) bm!581115))

(assert (= (or b!6625983 b!6625981) bm!581116))

(assert (= (or b!6625978 bm!581116) bm!581114))

(declare-fun m!7396276 () Bool)

(assert (=> b!6625975 m!7396276))

(declare-fun m!7396278 () Bool)

(assert (=> bm!581114 m!7396278))

(declare-fun m!7396280 () Bool)

(assert (=> bm!581115 m!7396280))

(assert (=> d!2076639 d!2076963))

(declare-fun d!2076965 () Bool)

(declare-fun res!2716265 () Bool)

(declare-fun e!4007973 () Bool)

(assert (=> d!2076965 (=> res!2716265 e!4007973)))

(assert (=> d!2076965 (= res!2716265 ((_ is Nil!65660) (exprs!6379 (h!72110 zl!343))))))

(assert (=> d!2076965 (= (forall!15690 (exprs!6379 (h!72110 zl!343)) lambda!370145) e!4007973)))

(declare-fun b!6625984 () Bool)

(declare-fun e!4007974 () Bool)

(assert (=> b!6625984 (= e!4007973 e!4007974)))

(declare-fun res!2716266 () Bool)

(assert (=> b!6625984 (=> (not res!2716266) (not e!4007974))))

(assert (=> b!6625984 (= res!2716266 (dynLambda!26153 lambda!370145 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun b!6625985 () Bool)

(assert (=> b!6625985 (= e!4007974 (forall!15690 (t!379444 (exprs!6379 (h!72110 zl!343))) lambda!370145))))

(assert (= (and d!2076965 (not res!2716265)) b!6625984))

(assert (= (and b!6625984 res!2716266) b!6625985))

(declare-fun b_lambda!250517 () Bool)

(assert (=> (not b_lambda!250517) (not b!6625984)))

(declare-fun m!7396282 () Bool)

(assert (=> b!6625984 m!7396282))

(declare-fun m!7396284 () Bool)

(assert (=> b!6625985 m!7396284))

(assert (=> d!2076639 d!2076965))

(declare-fun d!2076967 () Bool)

(assert (=> d!2076967 (= (head!13433 (t!379444 (exprs!6379 (h!72110 zl!343)))) (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6625151 d!2076967))

(assert (=> b!6625390 d!2076829))

(assert (=> b!6625390 d!2076831))

(assert (=> d!2076677 d!2076679))

(declare-fun d!2076969 () Bool)

(assert (=> d!2076969 (= (flatMap!2000 z!1189 lambda!370119) (dynLambda!26151 lambda!370119 (h!72110 zl!343)))))

(assert (=> d!2076969 true))

(declare-fun _$13!3906 () Unit!159335)

(assert (=> d!2076969 (= (choose!49496 z!1189 (h!72110 zl!343) lambda!370119) _$13!3906)))

(declare-fun b_lambda!250519 () Bool)

(assert (=> (not b_lambda!250519) (not d!2076969)))

(declare-fun bs!1700691 () Bool)

(assert (= bs!1700691 d!2076969))

(assert (=> bs!1700691 m!7395260))

(assert (=> bs!1700691 m!7395598))

(assert (=> d!2076677 d!2076969))

(assert (=> bm!581015 d!2076773))

(declare-fun d!2076973 () Bool)

(assert (=> d!2076973 (= (isEmpty!37952 (tail!12518 (unfocusZipperList!1916 zl!343))) ((_ is Nil!65660) (tail!12518 (unfocusZipperList!1916 zl!343))))))

(assert (=> b!6624969 d!2076973))

(declare-fun d!2076975 () Bool)

(assert (=> d!2076975 (= (tail!12518 (unfocusZipperList!1916 zl!343)) (t!379444 (unfocusZipperList!1916 zl!343)))))

(assert (=> b!6624969 d!2076975))

(declare-fun d!2076977 () Bool)

(assert (=> d!2076977 (= (Exists!3565 (ite c!1221619 lambda!370175 lambda!370179)) (choose!49501 (ite c!1221619 lambda!370175 lambda!370179)))))

(declare-fun bs!1700692 () Bool)

(assert (= bs!1700692 d!2076977))

(declare-fun m!7396286 () Bool)

(assert (=> bs!1700692 m!7396286))

(assert (=> bm!580994 d!2076977))

(declare-fun bs!1700693 () Bool)

(declare-fun d!2076979 () Bool)

(assert (= bs!1700693 (and d!2076979 d!2076775)))

(declare-fun lambda!370226 () Int)

(assert (=> bs!1700693 (= lambda!370226 lambda!370196)))

(declare-fun bs!1700694 () Bool)

(assert (= bs!1700694 (and d!2076979 d!2076851)))

(assert (=> bs!1700694 (= lambda!370226 lambda!370207)))

(declare-fun bs!1700695 () Bool)

(assert (= bs!1700695 (and d!2076979 d!2076865)))

(assert (=> bs!1700695 (= lambda!370226 lambda!370210)))

(declare-fun bs!1700696 () Bool)

(assert (= bs!1700696 (and d!2076979 d!2076947)))

(assert (=> bs!1700696 (= lambda!370226 lambda!370223)))

(assert (=> d!2076979 (= (nullableZipper!2235 ((_ map or) lt!2418406 lt!2418394)) (exists!2662 ((_ map or) lt!2418406 lt!2418394) lambda!370226))))

(declare-fun bs!1700697 () Bool)

(assert (= bs!1700697 d!2076979))

(declare-fun m!7396288 () Bool)

(assert (=> bs!1700697 m!7396288))

(assert (=> b!6625014 d!2076979))

(assert (=> bs!1700458 d!2076579))

(assert (=> b!6625095 d!2076681))

(declare-fun d!2076981 () Bool)

(assert (=> d!2076981 true))

(assert (=> d!2076981 true))

(declare-fun res!2716269 () Bool)

(assert (=> d!2076981 (= (choose!49501 lambda!370117) res!2716269)))

(assert (=> d!2076661 d!2076981))

(declare-fun d!2076983 () Bool)

(assert (=> d!2076983 (= (isEmpty!37952 (t!379444 (unfocusZipperList!1916 zl!343))) ((_ is Nil!65660) (t!379444 (unfocusZipperList!1916 zl!343))))))

(assert (=> b!6624965 d!2076983))

(assert (=> b!6625012 d!2076573))

(assert (=> b!6625422 d!2076767))

(declare-fun d!2076985 () Bool)

(assert (=> d!2076985 true))

(assert (=> d!2076985 true))

(declare-fun res!2716270 () Bool)

(assert (=> d!2076985 (= (choose!49501 lambda!370118) res!2716270)))

(assert (=> d!2076663 d!2076985))

(declare-fun d!2076987 () Bool)

(declare-fun res!2716275 () Bool)

(declare-fun e!4007976 () Bool)

(assert (=> d!2076987 (=> res!2716275 e!4007976)))

(assert (=> d!2076987 (= res!2716275 ((_ is ElementMatch!16495) lt!2418462))))

(assert (=> d!2076987 (= (validRegex!8231 lt!2418462) e!4007976)))

(declare-fun b!6625986 () Bool)

(declare-fun e!4007981 () Bool)

(declare-fun e!4007977 () Bool)

(assert (=> b!6625986 (= e!4007981 e!4007977)))

(declare-fun res!2716274 () Bool)

(assert (=> b!6625986 (= res!2716274 (not (nullable!6488 (reg!16824 lt!2418462))))))

(assert (=> b!6625986 (=> (not res!2716274) (not e!4007977))))

(declare-fun call!581123 () Bool)

(declare-fun bm!581117 () Bool)

(declare-fun c!1221811 () Bool)

(declare-fun c!1221812 () Bool)

(assert (=> bm!581117 (= call!581123 (validRegex!8231 (ite c!1221812 (reg!16824 lt!2418462) (ite c!1221811 (regOne!33503 lt!2418462) (regOne!33502 lt!2418462)))))))

(declare-fun b!6625987 () Bool)

(declare-fun res!2716273 () Bool)

(declare-fun e!4007978 () Bool)

(assert (=> b!6625987 (=> res!2716273 e!4007978)))

(assert (=> b!6625987 (= res!2716273 (not ((_ is Concat!25340) lt!2418462)))))

(declare-fun e!4007979 () Bool)

(assert (=> b!6625987 (= e!4007979 e!4007978)))

(declare-fun b!6625988 () Bool)

(assert (=> b!6625988 (= e!4007981 e!4007979)))

(assert (=> b!6625988 (= c!1221811 ((_ is Union!16495) lt!2418462))))

(declare-fun b!6625989 () Bool)

(assert (=> b!6625989 (= e!4007977 call!581123)))

(declare-fun b!6625990 () Bool)

(assert (=> b!6625990 (= e!4007976 e!4007981)))

(assert (=> b!6625990 (= c!1221812 ((_ is Star!16495) lt!2418462))))

(declare-fun b!6625991 () Bool)

(declare-fun e!4007975 () Bool)

(declare-fun call!581122 () Bool)

(assert (=> b!6625991 (= e!4007975 call!581122)))

(declare-fun b!6625992 () Bool)

(assert (=> b!6625992 (= e!4007978 e!4007975)))

(declare-fun res!2716271 () Bool)

(assert (=> b!6625992 (=> (not res!2716271) (not e!4007975))))

(declare-fun call!581124 () Bool)

(assert (=> b!6625992 (= res!2716271 call!581124)))

(declare-fun bm!581118 () Bool)

(assert (=> bm!581118 (= call!581122 (validRegex!8231 (ite c!1221811 (regTwo!33503 lt!2418462) (regTwo!33502 lt!2418462))))))

(declare-fun b!6625993 () Bool)

(declare-fun e!4007980 () Bool)

(assert (=> b!6625993 (= e!4007980 call!581122)))

(declare-fun b!6625994 () Bool)

(declare-fun res!2716272 () Bool)

(assert (=> b!6625994 (=> (not res!2716272) (not e!4007980))))

(assert (=> b!6625994 (= res!2716272 call!581124)))

(assert (=> b!6625994 (= e!4007979 e!4007980)))

(declare-fun bm!581119 () Bool)

(assert (=> bm!581119 (= call!581124 call!581123)))

(assert (= (and d!2076987 (not res!2716275)) b!6625990))

(assert (= (and b!6625990 c!1221812) b!6625986))

(assert (= (and b!6625990 (not c!1221812)) b!6625988))

(assert (= (and b!6625986 res!2716274) b!6625989))

(assert (= (and b!6625988 c!1221811) b!6625994))

(assert (= (and b!6625988 (not c!1221811)) b!6625987))

(assert (= (and b!6625994 res!2716272) b!6625993))

(assert (= (and b!6625987 (not res!2716273)) b!6625992))

(assert (= (and b!6625992 res!2716271) b!6625991))

(assert (= (or b!6625993 b!6625991) bm!581118))

(assert (= (or b!6625994 b!6625992) bm!581119))

(assert (= (or b!6625989 bm!581119) bm!581117))

(declare-fun m!7396290 () Bool)

(assert (=> b!6625986 m!7396290))

(declare-fun m!7396292 () Bool)

(assert (=> bm!581117 m!7396292))

(declare-fun m!7396294 () Bool)

(assert (=> bm!581118 m!7396294))

(assert (=> d!2076653 d!2076987))

(assert (=> d!2076653 d!2076623))

(assert (=> d!2076653 d!2076633))

(assert (=> d!2076611 d!2076771))

(declare-fun d!2076989 () Bool)

(assert (=> d!2076989 (= (nullable!6488 (reg!16824 r!7292)) (nullableFct!2409 (reg!16824 r!7292)))))

(declare-fun bs!1700698 () Bool)

(assert (= bs!1700698 d!2076989))

(declare-fun m!7396296 () Bool)

(assert (=> bs!1700698 m!7396296))

(assert (=> b!6624848 d!2076989))

(declare-fun d!2076991 () Bool)

(declare-fun res!2716280 () Bool)

(declare-fun e!4007983 () Bool)

(assert (=> d!2076991 (=> res!2716280 e!4007983)))

(assert (=> d!2076991 (= res!2716280 ((_ is ElementMatch!16495) lt!2418417))))

(assert (=> d!2076991 (= (validRegex!8231 lt!2418417) e!4007983)))

(declare-fun b!6625995 () Bool)

(declare-fun e!4007988 () Bool)

(declare-fun e!4007984 () Bool)

(assert (=> b!6625995 (= e!4007988 e!4007984)))

(declare-fun res!2716279 () Bool)

(assert (=> b!6625995 (= res!2716279 (not (nullable!6488 (reg!16824 lt!2418417))))))

(assert (=> b!6625995 (=> (not res!2716279) (not e!4007984))))

(declare-fun call!581126 () Bool)

(declare-fun c!1221814 () Bool)

(declare-fun bm!581120 () Bool)

(declare-fun c!1221813 () Bool)

(assert (=> bm!581120 (= call!581126 (validRegex!8231 (ite c!1221814 (reg!16824 lt!2418417) (ite c!1221813 (regOne!33503 lt!2418417) (regOne!33502 lt!2418417)))))))

(declare-fun b!6625996 () Bool)

(declare-fun res!2716278 () Bool)

(declare-fun e!4007985 () Bool)

(assert (=> b!6625996 (=> res!2716278 e!4007985)))

(assert (=> b!6625996 (= res!2716278 (not ((_ is Concat!25340) lt!2418417)))))

(declare-fun e!4007986 () Bool)

(assert (=> b!6625996 (= e!4007986 e!4007985)))

(declare-fun b!6625997 () Bool)

(assert (=> b!6625997 (= e!4007988 e!4007986)))

(assert (=> b!6625997 (= c!1221813 ((_ is Union!16495) lt!2418417))))

(declare-fun b!6625998 () Bool)

(assert (=> b!6625998 (= e!4007984 call!581126)))

(declare-fun b!6625999 () Bool)

(assert (=> b!6625999 (= e!4007983 e!4007988)))

(assert (=> b!6625999 (= c!1221814 ((_ is Star!16495) lt!2418417))))

(declare-fun b!6626000 () Bool)

(declare-fun e!4007982 () Bool)

(declare-fun call!581125 () Bool)

(assert (=> b!6626000 (= e!4007982 call!581125)))

(declare-fun b!6626001 () Bool)

(assert (=> b!6626001 (= e!4007985 e!4007982)))

(declare-fun res!2716276 () Bool)

(assert (=> b!6626001 (=> (not res!2716276) (not e!4007982))))

(declare-fun call!581127 () Bool)

(assert (=> b!6626001 (= res!2716276 call!581127)))

(declare-fun bm!581121 () Bool)

(assert (=> bm!581121 (= call!581125 (validRegex!8231 (ite c!1221813 (regTwo!33503 lt!2418417) (regTwo!33502 lt!2418417))))))

(declare-fun b!6626002 () Bool)

(declare-fun e!4007987 () Bool)

(assert (=> b!6626002 (= e!4007987 call!581125)))

(declare-fun b!6626003 () Bool)

(declare-fun res!2716277 () Bool)

(assert (=> b!6626003 (=> (not res!2716277) (not e!4007987))))

(assert (=> b!6626003 (= res!2716277 call!581127)))

(assert (=> b!6626003 (= e!4007986 e!4007987)))

(declare-fun bm!581122 () Bool)

(assert (=> bm!581122 (= call!581127 call!581126)))

(assert (= (and d!2076991 (not res!2716280)) b!6625999))

(assert (= (and b!6625999 c!1221814) b!6625995))

(assert (= (and b!6625999 (not c!1221814)) b!6625997))

(assert (= (and b!6625995 res!2716279) b!6625998))

(assert (= (and b!6625997 c!1221813) b!6626003))

(assert (= (and b!6625997 (not c!1221813)) b!6625996))

(assert (= (and b!6626003 res!2716277) b!6626002))

(assert (= (and b!6625996 (not res!2716278)) b!6626001))

(assert (= (and b!6626001 res!2716276) b!6626000))

(assert (= (or b!6626002 b!6626000) bm!581121))

(assert (= (or b!6626003 b!6626001) bm!581122))

(assert (= (or b!6625998 bm!581122) bm!581120))

(declare-fun m!7396298 () Bool)

(assert (=> b!6625995 m!7396298))

(declare-fun m!7396300 () Bool)

(assert (=> bm!581120 m!7396300))

(declare-fun m!7396302 () Bool)

(assert (=> bm!581121 m!7396302))

(assert (=> d!2076569 d!2076991))

(declare-fun bs!1700699 () Bool)

(declare-fun d!2076993 () Bool)

(assert (= bs!1700699 (and d!2076993 d!2076857)))

(declare-fun lambda!370228 () Int)

(assert (=> bs!1700699 (= lambda!370228 lambda!370209)))

(declare-fun bs!1700700 () Bool)

(assert (= bs!1700700 (and d!2076993 d!2076929)))

(assert (=> bs!1700700 (= lambda!370228 lambda!370221)))

(declare-fun bs!1700701 () Bool)

(assert (= bs!1700701 (and d!2076993 d!2076651)))

(assert (=> bs!1700701 (= lambda!370228 lambda!370148)))

(declare-fun bs!1700702 () Bool)

(assert (= bs!1700702 (and d!2076993 d!2076749)))

(assert (=> bs!1700702 (= lambda!370228 lambda!370191)))

(declare-fun bs!1700703 () Bool)

(assert (= bs!1700703 (and d!2076993 d!2076779)))

(assert (=> bs!1700703 (= lambda!370228 lambda!370197)))

(declare-fun bs!1700704 () Bool)

(assert (= bs!1700704 (and d!2076993 d!2076623)))

(assert (=> bs!1700704 (= lambda!370228 lambda!370139)))

(declare-fun bs!1700705 () Bool)

(assert (= bs!1700705 (and d!2076993 d!2076639)))

(assert (=> bs!1700705 (= lambda!370228 lambda!370145)))

(declare-fun bs!1700706 () Bool)

(assert (= bs!1700706 (and d!2076993 d!2076875)))

(assert (=> bs!1700706 (= lambda!370228 lambda!370211)))

(declare-fun bs!1700707 () Bool)

(assert (= bs!1700707 (and d!2076993 d!2076853)))

(assert (=> bs!1700707 (= lambda!370228 lambda!370208)))

(declare-fun bs!1700708 () Bool)

(assert (= bs!1700708 (and d!2076993 d!2076633)))

(assert (=> bs!1700708 (= lambda!370228 lambda!370142)))

(declare-fun bs!1700709 () Bool)

(assert (= bs!1700709 (and d!2076993 d!2076695)))

(assert (=> bs!1700709 (= lambda!370228 lambda!370167)))

(declare-fun b!6626004 () Bool)

(declare-fun e!4007993 () Bool)

(declare-fun lt!2418544 () Regex!16495)

(assert (=> b!6626004 (= e!4007993 (isEmptyLang!1877 lt!2418544))))

(declare-fun b!6626005 () Bool)

(declare-fun e!4007990 () Regex!16495)

(assert (=> b!6626005 (= e!4007990 EmptyLang!16495)))

(declare-fun b!6626006 () Bool)

(declare-fun e!4007994 () Bool)

(assert (=> b!6626006 (= e!4007994 (= lt!2418544 (head!13433 (unfocusZipperList!1916 lt!2418407))))))

(declare-fun b!6626007 () Bool)

(declare-fun e!4007992 () Bool)

(assert (=> b!6626007 (= e!4007992 e!4007993)))

(declare-fun c!1221817 () Bool)

(assert (=> b!6626007 (= c!1221817 (isEmpty!37952 (unfocusZipperList!1916 lt!2418407)))))

(declare-fun b!6626008 () Bool)

(assert (=> b!6626008 (= e!4007994 (isUnion!1307 lt!2418544))))

(declare-fun b!6626009 () Bool)

(declare-fun e!4007989 () Bool)

(assert (=> b!6626009 (= e!4007989 (isEmpty!37952 (t!379444 (unfocusZipperList!1916 lt!2418407))))))

(declare-fun b!6626010 () Bool)

(assert (=> b!6626010 (= e!4007990 (Union!16495 (h!72108 (unfocusZipperList!1916 lt!2418407)) (generalisedUnion!2339 (t!379444 (unfocusZipperList!1916 lt!2418407)))))))

(declare-fun b!6626011 () Bool)

(declare-fun e!4007991 () Regex!16495)

(assert (=> b!6626011 (= e!4007991 (h!72108 (unfocusZipperList!1916 lt!2418407)))))

(assert (=> d!2076993 e!4007992))

(declare-fun res!2716281 () Bool)

(assert (=> d!2076993 (=> (not res!2716281) (not e!4007992))))

(assert (=> d!2076993 (= res!2716281 (validRegex!8231 lt!2418544))))

(assert (=> d!2076993 (= lt!2418544 e!4007991)))

(declare-fun c!1221818 () Bool)

(assert (=> d!2076993 (= c!1221818 e!4007989)))

(declare-fun res!2716282 () Bool)

(assert (=> d!2076993 (=> (not res!2716282) (not e!4007989))))

(assert (=> d!2076993 (= res!2716282 ((_ is Cons!65660) (unfocusZipperList!1916 lt!2418407)))))

(assert (=> d!2076993 (forall!15690 (unfocusZipperList!1916 lt!2418407) lambda!370228)))

(assert (=> d!2076993 (= (generalisedUnion!2339 (unfocusZipperList!1916 lt!2418407)) lt!2418544)))

(declare-fun b!6626012 () Bool)

(assert (=> b!6626012 (= e!4007991 e!4007990)))

(declare-fun c!1221820 () Bool)

(assert (=> b!6626012 (= c!1221820 ((_ is Cons!65660) (unfocusZipperList!1916 lt!2418407)))))

(declare-fun b!6626013 () Bool)

(assert (=> b!6626013 (= e!4007993 e!4007994)))

(declare-fun c!1221819 () Bool)

(assert (=> b!6626013 (= c!1221819 (isEmpty!37952 (tail!12518 (unfocusZipperList!1916 lt!2418407))))))

(assert (= (and d!2076993 res!2716282) b!6626009))

(assert (= (and d!2076993 c!1221818) b!6626011))

(assert (= (and d!2076993 (not c!1221818)) b!6626012))

(assert (= (and b!6626012 c!1221820) b!6626010))

(assert (= (and b!6626012 (not c!1221820)) b!6626005))

(assert (= (and d!2076993 res!2716281) b!6626007))

(assert (= (and b!6626007 c!1221817) b!6626004))

(assert (= (and b!6626007 (not c!1221817)) b!6626013))

(assert (= (and b!6626013 c!1221819) b!6626006))

(assert (= (and b!6626013 (not c!1221819)) b!6626008))

(assert (=> b!6626006 m!7395306))

(declare-fun m!7396304 () Bool)

(assert (=> b!6626006 m!7396304))

(assert (=> b!6626013 m!7395306))

(declare-fun m!7396306 () Bool)

(assert (=> b!6626013 m!7396306))

(assert (=> b!6626013 m!7396306))

(declare-fun m!7396308 () Bool)

(assert (=> b!6626013 m!7396308))

(declare-fun m!7396310 () Bool)

(assert (=> b!6626008 m!7396310))

(assert (=> b!6626007 m!7395306))

(declare-fun m!7396312 () Bool)

(assert (=> b!6626007 m!7396312))

(declare-fun m!7396314 () Bool)

(assert (=> b!6626010 m!7396314))

(declare-fun m!7396316 () Bool)

(assert (=> b!6626009 m!7396316))

(declare-fun m!7396318 () Bool)

(assert (=> b!6626004 m!7396318))

(declare-fun m!7396320 () Bool)

(assert (=> d!2076993 m!7396320))

(assert (=> d!2076993 m!7395306))

(declare-fun m!7396322 () Bool)

(assert (=> d!2076993 m!7396322))

(assert (=> d!2076569 d!2076993))

(declare-fun bs!1700711 () Bool)

(declare-fun d!2076995 () Bool)

(assert (= bs!1700711 (and d!2076995 d!2076857)))

(declare-fun lambda!370231 () Int)

(assert (=> bs!1700711 (= lambda!370231 lambda!370209)))

(declare-fun bs!1700712 () Bool)

(assert (= bs!1700712 (and d!2076995 d!2076993)))

(assert (=> bs!1700712 (= lambda!370231 lambda!370228)))

(declare-fun bs!1700713 () Bool)

(assert (= bs!1700713 (and d!2076995 d!2076929)))

(assert (=> bs!1700713 (= lambda!370231 lambda!370221)))

(declare-fun bs!1700714 () Bool)

(assert (= bs!1700714 (and d!2076995 d!2076651)))

(assert (=> bs!1700714 (= lambda!370231 lambda!370148)))

(declare-fun bs!1700715 () Bool)

(assert (= bs!1700715 (and d!2076995 d!2076749)))

(assert (=> bs!1700715 (= lambda!370231 lambda!370191)))

(declare-fun bs!1700716 () Bool)

(assert (= bs!1700716 (and d!2076995 d!2076779)))

(assert (=> bs!1700716 (= lambda!370231 lambda!370197)))

(declare-fun bs!1700717 () Bool)

(assert (= bs!1700717 (and d!2076995 d!2076623)))

(assert (=> bs!1700717 (= lambda!370231 lambda!370139)))

(declare-fun bs!1700718 () Bool)

(assert (= bs!1700718 (and d!2076995 d!2076639)))

(assert (=> bs!1700718 (= lambda!370231 lambda!370145)))

(declare-fun bs!1700719 () Bool)

(assert (= bs!1700719 (and d!2076995 d!2076875)))

(assert (=> bs!1700719 (= lambda!370231 lambda!370211)))

(declare-fun bs!1700720 () Bool)

(assert (= bs!1700720 (and d!2076995 d!2076853)))

(assert (=> bs!1700720 (= lambda!370231 lambda!370208)))

(declare-fun bs!1700721 () Bool)

(assert (= bs!1700721 (and d!2076995 d!2076633)))

(assert (=> bs!1700721 (= lambda!370231 lambda!370142)))

(declare-fun bs!1700722 () Bool)

(assert (= bs!1700722 (and d!2076995 d!2076695)))

(assert (=> bs!1700722 (= lambda!370231 lambda!370167)))

(declare-fun lt!2418545 () List!65784)

(assert (=> d!2076995 (forall!15690 lt!2418545 lambda!370231)))

(declare-fun e!4007995 () List!65784)

(assert (=> d!2076995 (= lt!2418545 e!4007995)))

(declare-fun c!1221821 () Bool)

(assert (=> d!2076995 (= c!1221821 ((_ is Cons!65662) lt!2418407))))

(assert (=> d!2076995 (= (unfocusZipperList!1916 lt!2418407) lt!2418545)))

(declare-fun b!6626014 () Bool)

(assert (=> b!6626014 (= e!4007995 (Cons!65660 (generalisedConcat!2092 (exprs!6379 (h!72110 lt!2418407))) (unfocusZipperList!1916 (t!379446 lt!2418407))))))

(declare-fun b!6626015 () Bool)

(assert (=> b!6626015 (= e!4007995 Nil!65660)))

(assert (= (and d!2076995 c!1221821) b!6626014))

(assert (= (and d!2076995 (not c!1221821)) b!6626015))

(declare-fun m!7396326 () Bool)

(assert (=> d!2076995 m!7396326))

(declare-fun m!7396328 () Bool)

(assert (=> b!6626014 m!7396328))

(declare-fun m!7396330 () Bool)

(assert (=> b!6626014 m!7396330))

(assert (=> d!2076569 d!2076995))

(assert (=> bm!580997 d!2076773))

(declare-fun d!2077001 () Bool)

(assert (=> d!2077001 (= (nullable!6488 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))) (nullableFct!2409 (regOne!33502 (h!72108 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun bs!1700723 () Bool)

(assert (= bs!1700723 d!2077001))

(declare-fun m!7396332 () Bool)

(assert (=> bs!1700723 m!7396332))

(assert (=> b!6625126 d!2077001))

(declare-fun d!2077003 () Bool)

(declare-fun res!2716287 () Bool)

(declare-fun e!4007997 () Bool)

(assert (=> d!2077003 (=> res!2716287 e!4007997)))

(assert (=> d!2077003 (= res!2716287 ((_ is ElementMatch!16495) (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))

(assert (=> d!2077003 (= (validRegex!8231 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))) e!4007997)))

(declare-fun b!6626016 () Bool)

(declare-fun e!4008002 () Bool)

(declare-fun e!4007998 () Bool)

(assert (=> b!6626016 (= e!4008002 e!4007998)))

(declare-fun res!2716286 () Bool)

(assert (=> b!6626016 (= res!2716286 (not (nullable!6488 (reg!16824 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))))

(assert (=> b!6626016 (=> (not res!2716286) (not e!4007998))))

(declare-fun c!1221822 () Bool)

(declare-fun bm!581123 () Bool)

(declare-fun c!1221823 () Bool)

(declare-fun call!581129 () Bool)

(assert (=> bm!581123 (= call!581129 (validRegex!8231 (ite c!1221823 (reg!16824 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))) (ite c!1221822 (regOne!33503 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))) (regOne!33502 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413))))))))))

(declare-fun b!6626017 () Bool)

(declare-fun res!2716285 () Bool)

(declare-fun e!4007999 () Bool)

(assert (=> b!6626017 (=> res!2716285 e!4007999)))

(assert (=> b!6626017 (= res!2716285 (not ((_ is Concat!25340) (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413))))))))

(declare-fun e!4008000 () Bool)

(assert (=> b!6626017 (= e!4008000 e!4007999)))

(declare-fun b!6626018 () Bool)

(assert (=> b!6626018 (= e!4008002 e!4008000)))

(assert (=> b!6626018 (= c!1221822 ((_ is Union!16495) (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))

(declare-fun b!6626019 () Bool)

(assert (=> b!6626019 (= e!4007998 call!581129)))

(declare-fun b!6626020 () Bool)

(assert (=> b!6626020 (= e!4007997 e!4008002)))

(assert (=> b!6626020 (= c!1221823 ((_ is Star!16495) (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))

(declare-fun b!6626021 () Bool)

(declare-fun e!4007996 () Bool)

(declare-fun call!581128 () Bool)

(assert (=> b!6626021 (= e!4007996 call!581128)))

(declare-fun b!6626022 () Bool)

(assert (=> b!6626022 (= e!4007999 e!4007996)))

(declare-fun res!2716283 () Bool)

(assert (=> b!6626022 (=> (not res!2716283) (not e!4007996))))

(declare-fun call!581130 () Bool)

(assert (=> b!6626022 (= res!2716283 call!581130)))

(declare-fun bm!581124 () Bool)

(assert (=> bm!581124 (= call!581128 (validRegex!8231 (ite c!1221822 (regTwo!33503 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))) (regTwo!33502 (ite c!1221587 (reg!16824 lt!2418413) (ite c!1221586 (regOne!33503 lt!2418413) (regOne!33502 lt!2418413)))))))))

(declare-fun b!6626023 () Bool)

(declare-fun e!4008001 () Bool)

(assert (=> b!6626023 (= e!4008001 call!581128)))

(declare-fun b!6626024 () Bool)

(declare-fun res!2716284 () Bool)

(assert (=> b!6626024 (=> (not res!2716284) (not e!4008001))))

(assert (=> b!6626024 (= res!2716284 call!581130)))

(assert (=> b!6626024 (= e!4008000 e!4008001)))

(declare-fun bm!581125 () Bool)

(assert (=> bm!581125 (= call!581130 call!581129)))

(assert (= (and d!2077003 (not res!2716287)) b!6626020))

(assert (= (and b!6626020 c!1221823) b!6626016))

(assert (= (and b!6626020 (not c!1221823)) b!6626018))

(assert (= (and b!6626016 res!2716286) b!6626019))

(assert (= (and b!6626018 c!1221822) b!6626024))

(assert (= (and b!6626018 (not c!1221822)) b!6626017))

(assert (= (and b!6626024 res!2716284) b!6626023))

(assert (= (and b!6626017 (not res!2716285)) b!6626022))

(assert (= (and b!6626022 res!2716283) b!6626021))

(assert (= (or b!6626023 b!6626021) bm!581124))

(assert (= (or b!6626024 b!6626022) bm!581125))

(assert (= (or b!6626019 bm!581125) bm!581123))

(declare-fun m!7396334 () Bool)

(assert (=> b!6626016 m!7396334))

(declare-fun m!7396336 () Bool)

(assert (=> bm!581123 m!7396336))

(declare-fun m!7396338 () Bool)

(assert (=> bm!581124 m!7396338))

(assert (=> bm!580977 d!2077003))

(declare-fun d!2077007 () Bool)

(assert (=> d!2077007 (= (nullable!6488 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))) (nullableFct!2409 (h!72108 (exprs!6379 (Context!11759 (Cons!65660 (h!72108 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343)))))))))))

(declare-fun bs!1700724 () Bool)

(assert (= bs!1700724 d!2077007))

(declare-fun m!7396340 () Bool)

(assert (=> bs!1700724 m!7396340))

(assert (=> b!6625090 d!2077007))

(declare-fun bs!1700725 () Bool)

(declare-fun b!6626032 () Bool)

(assert (= bs!1700725 (and b!6626032 d!2076807)))

(declare-fun lambda!370232 () Int)

(assert (=> bs!1700725 (not (= lambda!370232 lambda!370201))))

(declare-fun bs!1700726 () Bool)

(assert (= bs!1700726 (and b!6626032 b!6625663)))

(assert (=> bs!1700726 (not (= lambda!370232 lambda!370205))))

(declare-fun bs!1700727 () Bool)

(assert (= bs!1700727 (and b!6626032 b!6625637)))

(assert (=> bs!1700727 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33503 (regOne!33502 r!7292)) (regOne!33503 (regTwo!33502 r!7292)))) (= lambda!370232 lambda!370202))))

(declare-fun bs!1700728 () Bool)

(assert (= bs!1700728 (and b!6626032 d!2076667)))

(assert (=> bs!1700728 (not (= lambda!370232 lambda!370156))))

(declare-fun bs!1700729 () Bool)

(assert (= bs!1700729 (and b!6626032 b!6625352)))

(assert (=> bs!1700729 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regOne!33502 r!7292))) (= (regTwo!33503 (regOne!33502 r!7292)) (regOne!33502 r!7292))) (= lambda!370232 lambda!370187))))

(declare-fun bs!1700730 () Bool)

(assert (= bs!1700730 (and b!6626032 b!6625636)))

(assert (=> bs!1700730 (not (= lambda!370232 lambda!370203))))

(declare-fun bs!1700731 () Bool)

(assert (= bs!1700731 (and b!6626032 b!6624705)))

(assert (=> bs!1700731 (not (= lambda!370232 lambda!370118))))

(declare-fun bs!1700732 () Bool)

(assert (= bs!1700732 (and b!6626032 b!6625944)))

(assert (=> bs!1700732 (not (= lambda!370232 lambda!370225))))

(declare-fun bs!1700733 () Bool)

(assert (= bs!1700733 (and b!6626032 b!6625252)))

(assert (=> bs!1700733 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 r!7292)) (= (regTwo!33503 (regOne!33502 r!7292)) r!7292)) (= lambda!370232 lambda!370175))))

(declare-fun bs!1700734 () Bool)

(assert (= bs!1700734 (and b!6626032 b!6625871)))

(assert (=> bs!1700734 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regTwo!33503 (regOne!33502 r!7292)) (regTwo!33503 (regTwo!33502 r!7292)))) (= lambda!370232 lambda!370218))))

(declare-fun bs!1700735 () Bool)

(assert (= bs!1700735 (and b!6626032 b!6625251)))

(assert (=> bs!1700735 (not (= lambda!370232 lambda!370179))))

(assert (=> bs!1700728 (not (= lambda!370232 lambda!370159))))

(assert (=> bs!1700731 (not (= lambda!370232 lambda!370117))))

(declare-fun bs!1700736 () Bool)

(assert (= bs!1700736 (and b!6626032 b!6625870)))

(assert (=> bs!1700736 (not (= lambda!370232 lambda!370219))))

(declare-fun bs!1700737 () Bool)

(assert (= bs!1700737 (and b!6626032 b!6625398)))

(assert (=> bs!1700737 (not (= lambda!370232 lambda!370190))))

(declare-fun bs!1700738 () Bool)

(assert (= bs!1700738 (and b!6626032 b!6625351)))

(assert (=> bs!1700738 (not (= lambda!370232 lambda!370188))))

(declare-fun bs!1700739 () Bool)

(assert (= bs!1700739 (and b!6626032 d!2076665)))

(assert (=> bs!1700739 (not (= lambda!370232 lambda!370151))))

(declare-fun bs!1700740 () Bool)

(assert (= bs!1700740 (and b!6626032 b!6625399)))

(assert (=> bs!1700740 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33502 r!7292))) (= (regTwo!33503 (regOne!33502 r!7292)) (regTwo!33502 r!7292))) (= lambda!370232 lambda!370189))))

(declare-fun bs!1700741 () Bool)

(assert (= bs!1700741 (and b!6626032 d!2076901)))

(assert (=> bs!1700741 (not (= lambda!370232 lambda!370217))))

(assert (=> bs!1700741 (not (= lambda!370232 lambda!370216))))

(declare-fun bs!1700742 () Bool)

(assert (= bs!1700742 (and b!6626032 b!6625945)))

(assert (=> bs!1700742 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regOne!33503 (regOne!33502 r!7292)))) (= (regTwo!33503 (regOne!33502 r!7292)) (regOne!33503 (regOne!33502 r!7292)))) (= lambda!370232 lambda!370224))))

(declare-fun bs!1700743 () Bool)

(assert (= bs!1700743 (and b!6626032 b!6625664)))

(assert (=> bs!1700743 (= (and (= (reg!16824 (regTwo!33503 (regOne!33502 r!7292))) (reg!16824 (regTwo!33503 r!7292))) (= (regTwo!33503 (regOne!33502 r!7292)) (regTwo!33503 r!7292))) (= lambda!370232 lambda!370204))))

(assert (=> b!6626032 true))

(assert (=> b!6626032 true))

(declare-fun bs!1700744 () Bool)

(declare-fun b!6626031 () Bool)

(assert (= bs!1700744 (and b!6626031 d!2076807)))

(declare-fun lambda!370233 () Int)

(assert (=> bs!1700744 (not (= lambda!370233 lambda!370201))))

(declare-fun bs!1700745 () Bool)

(assert (= bs!1700745 (and b!6626031 b!6625663)))

(assert (=> bs!1700745 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33503 r!7292))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33503 r!7292)))) (= lambda!370233 lambda!370205))))

(declare-fun bs!1700746 () Bool)

(assert (= bs!1700746 (and b!6626031 b!6625637)))

(assert (=> bs!1700746 (not (= lambda!370233 lambda!370202))))

(declare-fun bs!1700747 () Bool)

(assert (= bs!1700747 (and b!6626031 d!2076667)))

(assert (=> bs!1700747 (not (= lambda!370233 lambda!370156))))

(declare-fun bs!1700748 () Bool)

(assert (= bs!1700748 (and b!6626031 b!6625352)))

(assert (=> bs!1700748 (not (= lambda!370233 lambda!370187))))

(declare-fun bs!1700749 () Bool)

(assert (= bs!1700749 (and b!6626031 b!6625636)))

(assert (=> bs!1700749 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370233 lambda!370203))))

(declare-fun bs!1700750 () Bool)

(assert (= bs!1700750 (and b!6626031 b!6624705)))

(assert (=> bs!1700750 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370233 lambda!370118))))

(declare-fun bs!1700751 () Bool)

(assert (= bs!1700751 (and b!6626031 b!6625944)))

(assert (=> bs!1700751 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regOne!33503 (regOne!33502 r!7292)))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))))) (= lambda!370233 lambda!370225))))

(declare-fun bs!1700752 () Bool)

(assert (= bs!1700752 (and b!6626031 b!6625252)))

(assert (=> bs!1700752 (not (= lambda!370233 lambda!370175))))

(declare-fun bs!1700753 () Bool)

(assert (= bs!1700753 (and b!6626031 b!6625871)))

(assert (=> bs!1700753 (not (= lambda!370233 lambda!370218))))

(declare-fun bs!1700754 () Bool)

(assert (= bs!1700754 (and b!6626031 b!6625251)))

(assert (=> bs!1700754 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370233 lambda!370179))))

(declare-fun bs!1700755 () Bool)

(assert (= bs!1700755 (and b!6626031 b!6626032)))

(assert (=> bs!1700755 (not (= lambda!370233 lambda!370232))))

(assert (=> bs!1700747 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370233 lambda!370159))))

(assert (=> bs!1700750 (not (= lambda!370233 lambda!370117))))

(declare-fun bs!1700756 () Bool)

(assert (= bs!1700756 (and b!6626031 b!6625870)))

(assert (=> bs!1700756 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))))) (= lambda!370233 lambda!370219))))

(declare-fun bs!1700757 () Bool)

(assert (= bs!1700757 (and b!6626031 b!6625398)))

(assert (=> bs!1700757 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370233 lambda!370190))))

(declare-fun bs!1700758 () Bool)

(assert (= bs!1700758 (and b!6626031 b!6625351)))

(assert (=> bs!1700758 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370233 lambda!370188))))

(declare-fun bs!1700759 () Bool)

(assert (= bs!1700759 (and b!6626031 d!2076665)))

(assert (=> bs!1700759 (not (= lambda!370233 lambda!370151))))

(declare-fun bs!1700760 () Bool)

(assert (= bs!1700760 (and b!6626031 b!6625399)))

(assert (=> bs!1700760 (not (= lambda!370233 lambda!370189))))

(declare-fun bs!1700761 () Bool)

(assert (= bs!1700761 (and b!6626031 d!2076901)))

(assert (=> bs!1700761 (= (and (= (regOne!33502 (regTwo!33503 (regOne!33502 r!7292))) (regOne!33502 r!7292)) (= (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))) (regTwo!33502 r!7292))) (= lambda!370233 lambda!370217))))

(assert (=> bs!1700761 (not (= lambda!370233 lambda!370216))))

(declare-fun bs!1700762 () Bool)

(assert (= bs!1700762 (and b!6626031 b!6625945)))

(assert (=> bs!1700762 (not (= lambda!370233 lambda!370224))))

(declare-fun bs!1700763 () Bool)

(assert (= bs!1700763 (and b!6626031 b!6625664)))

(assert (=> bs!1700763 (not (= lambda!370233 lambda!370204))))

(assert (=> b!6626031 true))

(assert (=> b!6626031 true))

(declare-fun b!6626025 () Bool)

(declare-fun c!1221827 () Bool)

(assert (=> b!6626025 (= c!1221827 ((_ is Union!16495) (regTwo!33503 (regOne!33502 r!7292))))))

(declare-fun e!4008003 () Bool)

(declare-fun e!4008006 () Bool)

(assert (=> b!6626025 (= e!4008003 e!4008006)))

(declare-fun b!6626026 () Bool)

(declare-fun e!4008009 () Bool)

(declare-fun e!4008005 () Bool)

(assert (=> b!6626026 (= e!4008009 e!4008005)))

(declare-fun res!2716288 () Bool)

(assert (=> b!6626026 (= res!2716288 (not ((_ is EmptyLang!16495) (regTwo!33503 (regOne!33502 r!7292)))))))

(assert (=> b!6626026 (=> (not res!2716288) (not e!4008005))))

(declare-fun b!6626027 () Bool)

(declare-fun e!4008004 () Bool)

(assert (=> b!6626027 (= e!4008006 e!4008004)))

(declare-fun res!2716289 () Bool)

(assert (=> b!6626027 (= res!2716289 (matchRSpec!3596 (regOne!33503 (regTwo!33503 (regOne!33502 r!7292))) s!2326))))

(assert (=> b!6626027 (=> res!2716289 e!4008004)))

(declare-fun d!2077009 () Bool)

(declare-fun c!1221824 () Bool)

(assert (=> d!2077009 (= c!1221824 ((_ is EmptyExpr!16495) (regTwo!33503 (regOne!33502 r!7292))))))

(assert (=> d!2077009 (= (matchRSpec!3596 (regTwo!33503 (regOne!33502 r!7292)) s!2326) e!4008009)))

(declare-fun b!6626028 () Bool)

(assert (=> b!6626028 (= e!4008004 (matchRSpec!3596 (regTwo!33503 (regTwo!33503 (regOne!33502 r!7292))) s!2326))))

(declare-fun bm!581126 () Bool)

(declare-fun call!581132 () Bool)

(assert (=> bm!581126 (= call!581132 (isEmpty!37954 s!2326))))

(declare-fun b!6626029 () Bool)

(declare-fun res!2716290 () Bool)

(declare-fun e!4008007 () Bool)

(assert (=> b!6626029 (=> res!2716290 e!4008007)))

(assert (=> b!6626029 (= res!2716290 call!581132)))

(declare-fun e!4008008 () Bool)

(assert (=> b!6626029 (= e!4008008 e!4008007)))

(declare-fun b!6626030 () Bool)

(assert (=> b!6626030 (= e!4008009 call!581132)))

(declare-fun call!581131 () Bool)

(declare-fun bm!581127 () Bool)

(declare-fun c!1221825 () Bool)

(assert (=> bm!581127 (= call!581131 (Exists!3565 (ite c!1221825 lambda!370232 lambda!370233)))))

(assert (=> b!6626031 (= e!4008008 call!581131)))

(assert (=> b!6626032 (= e!4008007 call!581131)))

(declare-fun b!6626033 () Bool)

(declare-fun c!1221826 () Bool)

(assert (=> b!6626033 (= c!1221826 ((_ is ElementMatch!16495) (regTwo!33503 (regOne!33502 r!7292))))))

(assert (=> b!6626033 (= e!4008005 e!4008003)))

(declare-fun b!6626034 () Bool)

(assert (=> b!6626034 (= e!4008003 (= s!2326 (Cons!65661 (c!1221458 (regTwo!33503 (regOne!33502 r!7292))) Nil!65661)))))

(declare-fun b!6626035 () Bool)

(assert (=> b!6626035 (= e!4008006 e!4008008)))

(assert (=> b!6626035 (= c!1221825 ((_ is Star!16495) (regTwo!33503 (regOne!33502 r!7292))))))

(assert (= (and d!2077009 c!1221824) b!6626030))

(assert (= (and d!2077009 (not c!1221824)) b!6626026))

(assert (= (and b!6626026 res!2716288) b!6626033))

(assert (= (and b!6626033 c!1221826) b!6626034))

(assert (= (and b!6626033 (not c!1221826)) b!6626025))

(assert (= (and b!6626025 c!1221827) b!6626027))

(assert (= (and b!6626025 (not c!1221827)) b!6626035))

(assert (= (and b!6626027 (not res!2716289)) b!6626028))

(assert (= (and b!6626035 c!1221825) b!6626029))

(assert (= (and b!6626035 (not c!1221825)) b!6626031))

(assert (= (and b!6626029 (not res!2716290)) b!6626032))

(assert (= (or b!6626032 b!6626031) bm!581127))

(assert (= (or b!6626030 b!6626029) bm!581126))

(declare-fun m!7396346 () Bool)

(assert (=> b!6626027 m!7396346))

(declare-fun m!7396348 () Bool)

(assert (=> b!6626028 m!7396348))

(assert (=> bm!581126 m!7395402))

(declare-fun m!7396350 () Bool)

(assert (=> bm!581127 m!7396350))

(assert (=> b!6625348 d!2077009))

(declare-fun b!6626051 () Bool)

(declare-fun e!4008021 () Bool)

(assert (=> b!6626051 (= e!4008021 (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 r!7292 (head!13432 s!2326)))))))

(declare-fun b!6626052 () Bool)

(declare-fun res!2716302 () Bool)

(assert (=> b!6626052 (=> (not res!2716302) (not e!4008021))))

(declare-fun call!581136 () Bool)

(assert (=> b!6626052 (= res!2716302 (not call!581136))))

(declare-fun b!6626053 () Bool)

(declare-fun res!2716301 () Bool)

(declare-fun e!4008020 () Bool)

(assert (=> b!6626053 (=> res!2716301 e!4008020)))

(assert (=> b!6626053 (= res!2716301 e!4008021)))

(declare-fun res!2716300 () Bool)

(assert (=> b!6626053 (=> (not res!2716300) (not e!4008021))))

(declare-fun lt!2418546 () Bool)

(assert (=> b!6626053 (= res!2716300 lt!2418546)))

(declare-fun bm!581131 () Bool)

(assert (=> bm!581131 (= call!581136 (isEmpty!37954 (tail!12517 s!2326)))))

(declare-fun b!6626054 () Bool)

(declare-fun e!4008025 () Bool)

(assert (=> b!6626054 (= e!4008025 (nullable!6488 (derivativeStep!5175 r!7292 (head!13432 s!2326))))))

(declare-fun b!6626055 () Bool)

(declare-fun e!4008026 () Bool)

(assert (=> b!6626055 (= e!4008026 (= lt!2418546 call!581136))))

(declare-fun b!6626056 () Bool)

(declare-fun e!4008023 () Bool)

(assert (=> b!6626056 (= e!4008023 (not lt!2418546))))

(declare-fun b!6626058 () Bool)

(assert (=> b!6626058 (= e!4008026 e!4008023)))

(declare-fun c!1221834 () Bool)

(assert (=> b!6626058 (= c!1221834 ((_ is EmptyLang!16495) (derivativeStep!5175 r!7292 (head!13432 s!2326))))))

(declare-fun b!6626059 () Bool)

(declare-fun e!4008024 () Bool)

(assert (=> b!6626059 (= e!4008024 (not (= (head!13432 (tail!12517 s!2326)) (c!1221458 (derivativeStep!5175 r!7292 (head!13432 s!2326))))))))

(declare-fun b!6626060 () Bool)

(declare-fun res!2716299 () Bool)

(assert (=> b!6626060 (=> res!2716299 e!4008020)))

(assert (=> b!6626060 (= res!2716299 (not ((_ is ElementMatch!16495) (derivativeStep!5175 r!7292 (head!13432 s!2326)))))))

(assert (=> b!6626060 (= e!4008023 e!4008020)))

(declare-fun b!6626057 () Bool)

(declare-fun e!4008022 () Bool)

(assert (=> b!6626057 (= e!4008022 e!4008024)))

(declare-fun res!2716303 () Bool)

(assert (=> b!6626057 (=> res!2716303 e!4008024)))

(assert (=> b!6626057 (= res!2716303 call!581136)))

(declare-fun d!2077015 () Bool)

(assert (=> d!2077015 e!4008026))

(declare-fun c!1221835 () Bool)

(assert (=> d!2077015 (= c!1221835 ((_ is EmptyExpr!16495) (derivativeStep!5175 r!7292 (head!13432 s!2326))))))

(assert (=> d!2077015 (= lt!2418546 e!4008025)))

(declare-fun c!1221833 () Bool)

(assert (=> d!2077015 (= c!1221833 (isEmpty!37954 (tail!12517 s!2326)))))

(assert (=> d!2077015 (validRegex!8231 (derivativeStep!5175 r!7292 (head!13432 s!2326)))))

(assert (=> d!2077015 (= (matchR!8678 (derivativeStep!5175 r!7292 (head!13432 s!2326)) (tail!12517 s!2326)) lt!2418546)))

(declare-fun b!6626061 () Bool)

(assert (=> b!6626061 (= e!4008025 (matchR!8678 (derivativeStep!5175 (derivativeStep!5175 r!7292 (head!13432 s!2326)) (head!13432 (tail!12517 s!2326))) (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6626062 () Bool)

(declare-fun res!2716298 () Bool)

(assert (=> b!6626062 (=> (not res!2716298) (not e!4008021))))

(assert (=> b!6626062 (= res!2716298 (isEmpty!37954 (tail!12517 (tail!12517 s!2326))))))

(declare-fun b!6626063 () Bool)

(declare-fun res!2716296 () Bool)

(assert (=> b!6626063 (=> res!2716296 e!4008024)))

(assert (=> b!6626063 (= res!2716296 (not (isEmpty!37954 (tail!12517 (tail!12517 s!2326)))))))

(declare-fun b!6626064 () Bool)

(assert (=> b!6626064 (= e!4008020 e!4008022)))

(declare-fun res!2716297 () Bool)

(assert (=> b!6626064 (=> (not res!2716297) (not e!4008022))))

(assert (=> b!6626064 (= res!2716297 (not lt!2418546))))

(assert (= (and d!2077015 c!1221833) b!6626054))

(assert (= (and d!2077015 (not c!1221833)) b!6626061))

(assert (= (and d!2077015 c!1221835) b!6626055))

(assert (= (and d!2077015 (not c!1221835)) b!6626058))

(assert (= (and b!6626058 c!1221834) b!6626056))

(assert (= (and b!6626058 (not c!1221834)) b!6626060))

(assert (= (and b!6626060 (not res!2716299)) b!6626053))

(assert (= (and b!6626053 res!2716300) b!6626052))

(assert (= (and b!6626052 res!2716302) b!6626062))

(assert (= (and b!6626062 res!2716298) b!6626051))

(assert (= (and b!6626053 (not res!2716301)) b!6626064))

(assert (= (and b!6626064 res!2716297) b!6626057))

(assert (= (and b!6626057 (not res!2716303)) b!6626063))

(assert (= (and b!6626063 (not res!2716296)) b!6626059))

(assert (= (or b!6626055 b!6626052 b!6626057) bm!581131))

(assert (=> b!6626059 m!7395410))

(assert (=> b!6626059 m!7395968))

(assert (=> b!6626054 m!7395716))

(declare-fun m!7396356 () Bool)

(assert (=> b!6626054 m!7396356))

(assert (=> b!6626061 m!7395410))

(assert (=> b!6626061 m!7395968))

(assert (=> b!6626061 m!7395716))

(assert (=> b!6626061 m!7395968))

(declare-fun m!7396360 () Bool)

(assert (=> b!6626061 m!7396360))

(assert (=> b!6626061 m!7395410))

(assert (=> b!6626061 m!7395974))

(assert (=> b!6626061 m!7396360))

(assert (=> b!6626061 m!7395974))

(declare-fun m!7396362 () Bool)

(assert (=> b!6626061 m!7396362))

(assert (=> b!6626063 m!7395410))

(assert (=> b!6626063 m!7395974))

(assert (=> b!6626063 m!7395974))

(assert (=> b!6626063 m!7395978))

(assert (=> b!6626051 m!7395410))

(assert (=> b!6626051 m!7395968))

(assert (=> bm!581131 m!7395410))

(assert (=> bm!581131 m!7395720))

(assert (=> b!6626062 m!7395410))

(assert (=> b!6626062 m!7395974))

(assert (=> b!6626062 m!7395974))

(assert (=> b!6626062 m!7395978))

(assert (=> d!2077015 m!7395410))

(assert (=> d!2077015 m!7395720))

(assert (=> d!2077015 m!7395716))

(declare-fun m!7396364 () Bool)

(assert (=> d!2077015 m!7396364))

(assert (=> b!6625328 d!2077015))

(declare-fun b!6626065 () Bool)

(declare-fun c!1221840 () Bool)

(assert (=> b!6626065 (= c!1221840 (nullable!6488 (regOne!33502 r!7292)))))

(declare-fun e!4008029 () Regex!16495)

(declare-fun e!4008027 () Regex!16495)

(assert (=> b!6626065 (= e!4008029 e!4008027)))

(declare-fun bm!581132 () Bool)

(declare-fun call!581140 () Regex!16495)

(declare-fun call!581138 () Regex!16495)

(assert (=> bm!581132 (= call!581140 call!581138)))

(declare-fun b!6626066 () Bool)

(declare-fun e!4008030 () Regex!16495)

(assert (=> b!6626066 (= e!4008030 EmptyLang!16495)))

(declare-fun bm!581133 () Bool)

(declare-fun call!581137 () Regex!16495)

(assert (=> bm!581133 (= call!581137 call!581140)))

(declare-fun b!6626067 () Bool)

(declare-fun e!4008031 () Regex!16495)

(assert (=> b!6626067 (= e!4008031 e!4008029)))

(declare-fun c!1221839 () Bool)

(assert (=> b!6626067 (= c!1221839 ((_ is Star!16495) r!7292))))

(declare-fun call!581139 () Regex!16495)

(declare-fun c!1221836 () Bool)

(declare-fun bm!581134 () Bool)

(assert (=> bm!581134 (= call!581139 (derivativeStep!5175 (ite c!1221836 (regTwo!33503 r!7292) (regOne!33502 r!7292)) (head!13432 s!2326)))))

(declare-fun b!6626068 () Bool)

(declare-fun e!4008028 () Regex!16495)

(assert (=> b!6626068 (= e!4008030 e!4008028)))

(declare-fun c!1221837 () Bool)

(assert (=> b!6626068 (= c!1221837 ((_ is ElementMatch!16495) r!7292))))

(declare-fun d!2077019 () Bool)

(declare-fun lt!2418547 () Regex!16495)

(assert (=> d!2077019 (validRegex!8231 lt!2418547)))

(assert (=> d!2077019 (= lt!2418547 e!4008030)))

(declare-fun c!1221838 () Bool)

(assert (=> d!2077019 (= c!1221838 (or ((_ is EmptyExpr!16495) r!7292) ((_ is EmptyLang!16495) r!7292)))))

(assert (=> d!2077019 (validRegex!8231 r!7292)))

(assert (=> d!2077019 (= (derivativeStep!5175 r!7292 (head!13432 s!2326)) lt!2418547)))

(declare-fun b!6626069 () Bool)

(assert (=> b!6626069 (= e!4008028 (ite (= (head!13432 s!2326) (c!1221458 r!7292)) EmptyExpr!16495 EmptyLang!16495))))

(declare-fun b!6626070 () Bool)

(assert (=> b!6626070 (= e!4008027 (Union!16495 (Concat!25340 call!581139 (regTwo!33502 r!7292)) call!581137))))

(declare-fun bm!581135 () Bool)

(assert (=> bm!581135 (= call!581138 (derivativeStep!5175 (ite c!1221836 (regOne!33503 r!7292) (ite c!1221839 (reg!16824 r!7292) (ite c!1221840 (regTwo!33502 r!7292) (regOne!33502 r!7292)))) (head!13432 s!2326)))))

(declare-fun b!6626071 () Bool)

(assert (=> b!6626071 (= c!1221836 ((_ is Union!16495) r!7292))))

(assert (=> b!6626071 (= e!4008028 e!4008031)))

(declare-fun b!6626072 () Bool)

(assert (=> b!6626072 (= e!4008029 (Concat!25340 call!581140 r!7292))))

(declare-fun b!6626073 () Bool)

(assert (=> b!6626073 (= e!4008027 (Union!16495 (Concat!25340 call!581137 (regTwo!33502 r!7292)) EmptyLang!16495))))

(declare-fun b!6626074 () Bool)

(assert (=> b!6626074 (= e!4008031 (Union!16495 call!581138 call!581139))))

(assert (= (and d!2077019 c!1221838) b!6626066))

(assert (= (and d!2077019 (not c!1221838)) b!6626068))

(assert (= (and b!6626068 c!1221837) b!6626069))

(assert (= (and b!6626068 (not c!1221837)) b!6626071))

(assert (= (and b!6626071 c!1221836) b!6626074))

(assert (= (and b!6626071 (not c!1221836)) b!6626067))

(assert (= (and b!6626067 c!1221839) b!6626072))

(assert (= (and b!6626067 (not c!1221839)) b!6626065))

(assert (= (and b!6626065 c!1221840) b!6626070))

(assert (= (and b!6626065 (not c!1221840)) b!6626073))

(assert (= (or b!6626070 b!6626073) bm!581133))

(assert (= (or b!6626072 bm!581133) bm!581132))

(assert (= (or b!6626074 b!6626070) bm!581134))

(assert (= (or b!6626074 bm!581132) bm!581135))

(assert (=> b!6626065 m!7395764))

(assert (=> bm!581134 m!7395406))

(declare-fun m!7396366 () Bool)

(assert (=> bm!581134 m!7396366))

(declare-fun m!7396368 () Bool)

(assert (=> d!2077019 m!7396368))

(assert (=> d!2077019 m!7395222))

(assert (=> bm!581135 m!7395406))

(declare-fun m!7396370 () Bool)

(assert (=> bm!581135 m!7396370))

(assert (=> b!6625328 d!2077019))

(assert (=> b!6625328 d!2076767))

(assert (=> b!6625328 d!2076831))

(declare-fun d!2077023 () Bool)

(assert (=> d!2077023 (= ($colon$colon!2331 (exprs!6379 lt!2418404) (ite (or c!1221583 c!1221582) (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72108 (exprs!6379 (h!72110 zl!343))))) (Cons!65660 (ite (or c!1221583 c!1221582) (regTwo!33502 (h!72108 (exprs!6379 (h!72110 zl!343)))) (h!72108 (exprs!6379 (h!72110 zl!343)))) (exprs!6379 lt!2418404)))))

(assert (=> bm!580974 d!2077023))

(declare-fun d!2077025 () Bool)

(declare-fun c!1221843 () Bool)

(assert (=> d!2077025 (= c!1221843 (isEmpty!37954 (tail!12517 (t!379445 s!2326))))))

(declare-fun e!4008039 () Bool)

(assert (=> d!2077025 (= (matchZipper!2507 (derivationStepZipper!2461 lt!2418394 (head!13432 (t!379445 s!2326))) (tail!12517 (t!379445 s!2326))) e!4008039)))

(declare-fun b!6626084 () Bool)

(assert (=> b!6626084 (= e!4008039 (nullableZipper!2235 (derivationStepZipper!2461 lt!2418394 (head!13432 (t!379445 s!2326)))))))

(declare-fun b!6626085 () Bool)

(assert (=> b!6626085 (= e!4008039 (matchZipper!2507 (derivationStepZipper!2461 (derivationStepZipper!2461 lt!2418394 (head!13432 (t!379445 s!2326))) (head!13432 (tail!12517 (t!379445 s!2326)))) (tail!12517 (tail!12517 (t!379445 s!2326)))))))

(assert (= (and d!2077025 c!1221843) b!6626084))

(assert (= (and d!2077025 (not c!1221843)) b!6626085))

(assert (=> d!2077025 m!7395390))

(assert (=> d!2077025 m!7395884))

(assert (=> b!6626084 m!7395416))

(declare-fun m!7396378 () Bool)

(assert (=> b!6626084 m!7396378))

(assert (=> b!6626085 m!7395390))

(assert (=> b!6626085 m!7395888))

(assert (=> b!6626085 m!7395416))

(assert (=> b!6626085 m!7395888))

(declare-fun m!7396380 () Bool)

(assert (=> b!6626085 m!7396380))

(assert (=> b!6626085 m!7395390))

(assert (=> b!6626085 m!7395892))

(assert (=> b!6626085 m!7396380))

(assert (=> b!6626085 m!7395892))

(declare-fun m!7396382 () Bool)

(assert (=> b!6626085 m!7396382))

(assert (=> b!6624908 d!2077025))

(declare-fun bs!1700765 () Bool)

(declare-fun d!2077029 () Bool)

(assert (= bs!1700765 (and d!2077029 d!2076925)))

(declare-fun lambda!370234 () Int)

(assert (=> bs!1700765 (= lambda!370234 lambda!370220)))

(declare-fun bs!1700766 () Bool)

(assert (= bs!1700766 (and d!2077029 d!2076849)))

(assert (=> bs!1700766 (= lambda!370234 lambda!370206)))

(declare-fun bs!1700767 () Bool)

(assert (= bs!1700767 (and d!2077029 d!2076787)))

(assert (=> bs!1700767 (= lambda!370234 lambda!370198)))

(declare-fun bs!1700768 () Bool)

(assert (= bs!1700768 (and d!2077029 d!2076941)))

(assert (=> bs!1700768 (= (= (head!13432 (t!379445 s!2326)) (head!13432 s!2326)) (= lambda!370234 lambda!370222))))

(declare-fun bs!1700769 () Bool)

(assert (= bs!1700769 (and d!2077029 d!2076575)))

(assert (=> bs!1700769 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370234 lambda!370128))))

(declare-fun bs!1700770 () Bool)

(assert (= bs!1700770 (and d!2077029 d!2076731)))

(assert (=> bs!1700770 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370234 lambda!370186))))

(declare-fun bs!1700771 () Bool)

(assert (= bs!1700771 (and d!2077029 b!6624703)))

(assert (=> bs!1700771 (= (= (head!13432 (t!379445 s!2326)) (h!72109 s!2326)) (= lambda!370234 lambda!370119))))

(assert (=> d!2077029 true))

(assert (=> d!2077029 (= (derivationStepZipper!2461 lt!2418394 (head!13432 (t!379445 s!2326))) (flatMap!2000 lt!2418394 lambda!370234))))

(declare-fun bs!1700772 () Bool)

(assert (= bs!1700772 d!2077029))

(declare-fun m!7396384 () Bool)

(assert (=> bs!1700772 m!7396384))

(assert (=> b!6624908 d!2077029))

(assert (=> b!6624908 d!2076789))

(assert (=> b!6624908 d!2076791))

(assert (=> b!6625426 d!2076829))

(assert (=> b!6625426 d!2076831))

(assert (=> d!2076613 d!2076771))

(declare-fun d!2077031 () Bool)

(assert (=> d!2077031 (= (isUnion!1307 lt!2418448) ((_ is Union!16495) lt!2418448))))

(assert (=> b!6624964 d!2077031))

(declare-fun bs!1700775 () Bool)

(declare-fun b!6626093 () Bool)

(assert (= bs!1700775 (and b!6626093 d!2076807)))

(declare-fun lambda!370235 () Int)

(assert (=> bs!1700775 (not (= lambda!370235 lambda!370201))))

(declare-fun bs!1700776 () Bool)

(assert (= bs!1700776 (and b!6626093 b!6625663)))

(assert (=> bs!1700776 (not (= lambda!370235 lambda!370205))))

(declare-fun bs!1700777 () Bool)

(assert (= bs!1700777 (and b!6626093 b!6625637)))

(assert (=> bs!1700777 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regOne!33503 (regTwo!33502 r!7292)))) (= (regOne!33503 r!7292) (regOne!33503 (regTwo!33502 r!7292)))) (= lambda!370235 lambda!370202))))

(declare-fun bs!1700778 () Bool)

(assert (= bs!1700778 (and b!6626093 d!2076667)))

(assert (=> bs!1700778 (not (= lambda!370235 lambda!370156))))

(declare-fun bs!1700779 () Bool)

(assert (= bs!1700779 (and b!6626093 b!6625352)))

(assert (=> bs!1700779 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regOne!33502 r!7292))) (= (regOne!33503 r!7292) (regOne!33502 r!7292))) (= lambda!370235 lambda!370187))))

(declare-fun bs!1700780 () Bool)

(assert (= bs!1700780 (and b!6626093 b!6625636)))

(assert (=> bs!1700780 (not (= lambda!370235 lambda!370203))))

(declare-fun bs!1700781 () Bool)

(assert (= bs!1700781 (and b!6626093 b!6624705)))

(assert (=> bs!1700781 (not (= lambda!370235 lambda!370118))))

(declare-fun bs!1700782 () Bool)

(assert (= bs!1700782 (and b!6626093 b!6625944)))

(assert (=> bs!1700782 (not (= lambda!370235 lambda!370225))))

(declare-fun bs!1700783 () Bool)

(assert (= bs!1700783 (and b!6626093 b!6625252)))

(assert (=> bs!1700783 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 r!7292)) (= (regOne!33503 r!7292) r!7292)) (= lambda!370235 lambda!370175))))

(declare-fun bs!1700784 () Bool)

(assert (= bs!1700784 (and b!6626093 b!6626031)))

(assert (=> bs!1700784 (not (= lambda!370235 lambda!370233))))

(declare-fun bs!1700785 () Bool)

(assert (= bs!1700785 (and b!6626093 b!6625871)))

(assert (=> bs!1700785 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regOne!33503 r!7292) (regTwo!33503 (regTwo!33502 r!7292)))) (= lambda!370235 lambda!370218))))

(declare-fun bs!1700786 () Bool)

(assert (= bs!1700786 (and b!6626093 b!6625251)))

(assert (=> bs!1700786 (not (= lambda!370235 lambda!370179))))

(declare-fun bs!1700787 () Bool)

(assert (= bs!1700787 (and b!6626093 b!6626032)))

(assert (=> bs!1700787 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regTwo!33503 (regOne!33502 r!7292)))) (= (regOne!33503 r!7292) (regTwo!33503 (regOne!33502 r!7292)))) (= lambda!370235 lambda!370232))))

(assert (=> bs!1700778 (not (= lambda!370235 lambda!370159))))

(assert (=> bs!1700781 (not (= lambda!370235 lambda!370117))))

(declare-fun bs!1700788 () Bool)

(assert (= bs!1700788 (and b!6626093 b!6625870)))

(assert (=> bs!1700788 (not (= lambda!370235 lambda!370219))))

(declare-fun bs!1700789 () Bool)

(assert (= bs!1700789 (and b!6626093 b!6625398)))

(assert (=> bs!1700789 (not (= lambda!370235 lambda!370190))))

(declare-fun bs!1700790 () Bool)

(assert (= bs!1700790 (and b!6626093 b!6625351)))

(assert (=> bs!1700790 (not (= lambda!370235 lambda!370188))))

(declare-fun bs!1700791 () Bool)

(assert (= bs!1700791 (and b!6626093 d!2076665)))

(assert (=> bs!1700791 (not (= lambda!370235 lambda!370151))))

(declare-fun bs!1700792 () Bool)

(assert (= bs!1700792 (and b!6626093 b!6625399)))

(assert (=> bs!1700792 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regTwo!33502 r!7292))) (= (regOne!33503 r!7292) (regTwo!33502 r!7292))) (= lambda!370235 lambda!370189))))

(declare-fun bs!1700793 () Bool)

(assert (= bs!1700793 (and b!6626093 d!2076901)))

(assert (=> bs!1700793 (not (= lambda!370235 lambda!370217))))

(assert (=> bs!1700793 (not (= lambda!370235 lambda!370216))))

(declare-fun bs!1700794 () Bool)

(assert (= bs!1700794 (and b!6626093 b!6625945)))

(assert (=> bs!1700794 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regOne!33503 (regOne!33502 r!7292)))) (= (regOne!33503 r!7292) (regOne!33503 (regOne!33502 r!7292)))) (= lambda!370235 lambda!370224))))

(declare-fun bs!1700795 () Bool)

(assert (= bs!1700795 (and b!6626093 b!6625664)))

(assert (=> bs!1700795 (= (and (= (reg!16824 (regOne!33503 r!7292)) (reg!16824 (regTwo!33503 r!7292))) (= (regOne!33503 r!7292) (regTwo!33503 r!7292))) (= lambda!370235 lambda!370204))))

(assert (=> b!6626093 true))

(assert (=> b!6626093 true))

(declare-fun bs!1700796 () Bool)

(declare-fun b!6626092 () Bool)

(assert (= bs!1700796 (and b!6626092 d!2076807)))

(declare-fun lambda!370236 () Int)

(assert (=> bs!1700796 (not (= lambda!370236 lambda!370201))))

(declare-fun bs!1700797 () Bool)

(assert (= bs!1700797 (and b!6626092 b!6625663)))

(assert (=> bs!1700797 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regTwo!33503 r!7292))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regTwo!33503 r!7292)))) (= lambda!370236 lambda!370205))))

(declare-fun bs!1700798 () Bool)

(assert (= bs!1700798 (and b!6626092 b!6625637)))

(assert (=> bs!1700798 (not (= lambda!370236 lambda!370202))))

(declare-fun bs!1700799 () Bool)

(assert (= bs!1700799 (and b!6626092 d!2076667)))

(assert (=> bs!1700799 (not (= lambda!370236 lambda!370156))))

(declare-fun bs!1700800 () Bool)

(assert (= bs!1700800 (and b!6626092 b!6625352)))

(assert (=> bs!1700800 (not (= lambda!370236 lambda!370187))))

(declare-fun bs!1700801 () Bool)

(assert (= bs!1700801 (and b!6626092 b!6625636)))

(assert (=> bs!1700801 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regOne!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regOne!33503 (regTwo!33502 r!7292))))) (= lambda!370236 lambda!370203))))

(declare-fun bs!1700802 () Bool)

(assert (= bs!1700802 (and b!6626092 b!6624705)))

(assert (=> bs!1700802 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370236 lambda!370118))))

(declare-fun bs!1700803 () Bool)

(assert (= bs!1700803 (and b!6626092 b!6625252)))

(assert (=> bs!1700803 (not (= lambda!370236 lambda!370175))))

(declare-fun bs!1700804 () Bool)

(assert (= bs!1700804 (and b!6626092 b!6626031)))

(assert (=> bs!1700804 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regTwo!33503 (regOne!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regTwo!33503 (regOne!33502 r!7292))))) (= lambda!370236 lambda!370233))))

(declare-fun bs!1700805 () Bool)

(assert (= bs!1700805 (and b!6626092 b!6625871)))

(assert (=> bs!1700805 (not (= lambda!370236 lambda!370218))))

(declare-fun bs!1700806 () Bool)

(assert (= bs!1700806 (and b!6626092 b!6625251)))

(assert (=> bs!1700806 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370236 lambda!370179))))

(declare-fun bs!1700807 () Bool)

(assert (= bs!1700807 (and b!6626092 b!6626032)))

(assert (=> bs!1700807 (not (= lambda!370236 lambda!370232))))

(assert (=> bs!1700799 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370236 lambda!370159))))

(assert (=> bs!1700802 (not (= lambda!370236 lambda!370117))))

(declare-fun bs!1700808 () Bool)

(assert (= bs!1700808 (and b!6626092 b!6625870)))

(assert (=> bs!1700808 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regTwo!33503 (regTwo!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regTwo!33503 (regTwo!33502 r!7292))))) (= lambda!370236 lambda!370219))))

(declare-fun bs!1700809 () Bool)

(assert (= bs!1700809 (and b!6626092 b!6625398)))

(assert (=> bs!1700809 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regTwo!33502 r!7292))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regTwo!33502 r!7292)))) (= lambda!370236 lambda!370190))))

(declare-fun bs!1700810 () Bool)

(assert (= bs!1700810 (and b!6626092 b!6625351)))

(assert (=> bs!1700810 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regOne!33502 r!7292))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regOne!33502 r!7292)))) (= lambda!370236 lambda!370188))))

(declare-fun bs!1700811 () Bool)

(assert (= bs!1700811 (and b!6626092 d!2076665)))

(assert (=> bs!1700811 (not (= lambda!370236 lambda!370151))))

(declare-fun bs!1700812 () Bool)

(assert (= bs!1700812 (and b!6626092 b!6625399)))

(assert (=> bs!1700812 (not (= lambda!370236 lambda!370189))))

(declare-fun bs!1700813 () Bool)

(assert (= bs!1700813 (and b!6626092 b!6626093)))

(assert (=> bs!1700813 (not (= lambda!370236 lambda!370235))))

(declare-fun bs!1700814 () Bool)

(assert (= bs!1700814 (and b!6626092 b!6625944)))

(assert (=> bs!1700814 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 (regOne!33503 (regOne!33502 r!7292)))) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 (regOne!33503 (regOne!33502 r!7292))))) (= lambda!370236 lambda!370225))))

(declare-fun bs!1700815 () Bool)

(assert (= bs!1700815 (and b!6626092 d!2076901)))

(assert (=> bs!1700815 (= (and (= (regOne!33502 (regOne!33503 r!7292)) (regOne!33502 r!7292)) (= (regTwo!33502 (regOne!33503 r!7292)) (regTwo!33502 r!7292))) (= lambda!370236 lambda!370217))))

(assert (=> bs!1700815 (not (= lambda!370236 lambda!370216))))

(declare-fun bs!1700816 () Bool)

(assert (= bs!1700816 (and b!6626092 b!6625945)))

(assert (=> bs!1700816 (not (= lambda!370236 lambda!370224))))

(declare-fun bs!1700817 () Bool)

(assert (= bs!1700817 (and b!6626092 b!6625664)))

(assert (=> bs!1700817 (not (= lambda!370236 lambda!370204))))

(assert (=> b!6626092 true))

(assert (=> b!6626092 true))

(declare-fun b!6626086 () Bool)

(declare-fun c!1221847 () Bool)

(assert (=> b!6626086 (= c!1221847 ((_ is Union!16495) (regOne!33503 r!7292)))))

(declare-fun e!4008040 () Bool)

(declare-fun e!4008043 () Bool)

(assert (=> b!6626086 (= e!4008040 e!4008043)))

(declare-fun b!6626087 () Bool)

(declare-fun e!4008046 () Bool)

(declare-fun e!4008042 () Bool)

(assert (=> b!6626087 (= e!4008046 e!4008042)))

(declare-fun res!2716312 () Bool)

(assert (=> b!6626087 (= res!2716312 (not ((_ is EmptyLang!16495) (regOne!33503 r!7292))))))

(assert (=> b!6626087 (=> (not res!2716312) (not e!4008042))))

(declare-fun b!6626088 () Bool)

(declare-fun e!4008041 () Bool)

(assert (=> b!6626088 (= e!4008043 e!4008041)))

(declare-fun res!2716313 () Bool)

(assert (=> b!6626088 (= res!2716313 (matchRSpec!3596 (regOne!33503 (regOne!33503 r!7292)) s!2326))))

(assert (=> b!6626088 (=> res!2716313 e!4008041)))

(declare-fun d!2077037 () Bool)

(declare-fun c!1221844 () Bool)

(assert (=> d!2077037 (= c!1221844 ((_ is EmptyExpr!16495) (regOne!33503 r!7292)))))

(assert (=> d!2077037 (= (matchRSpec!3596 (regOne!33503 r!7292) s!2326) e!4008046)))

(declare-fun b!6626089 () Bool)

(assert (=> b!6626089 (= e!4008041 (matchRSpec!3596 (regTwo!33503 (regOne!33503 r!7292)) s!2326))))

(declare-fun bm!581139 () Bool)

(declare-fun call!581145 () Bool)

(assert (=> bm!581139 (= call!581145 (isEmpty!37954 s!2326))))

(declare-fun b!6626090 () Bool)

(declare-fun res!2716314 () Bool)

(declare-fun e!4008044 () Bool)

(assert (=> b!6626090 (=> res!2716314 e!4008044)))

(assert (=> b!6626090 (= res!2716314 call!581145)))

(declare-fun e!4008045 () Bool)

(assert (=> b!6626090 (= e!4008045 e!4008044)))

(declare-fun b!6626091 () Bool)

(assert (=> b!6626091 (= e!4008046 call!581145)))

(declare-fun bm!581140 () Bool)

(declare-fun call!581144 () Bool)

(declare-fun c!1221845 () Bool)

(assert (=> bm!581140 (= call!581144 (Exists!3565 (ite c!1221845 lambda!370235 lambda!370236)))))

(assert (=> b!6626092 (= e!4008045 call!581144)))

(assert (=> b!6626093 (= e!4008044 call!581144)))

(declare-fun b!6626094 () Bool)

(declare-fun c!1221846 () Bool)

(assert (=> b!6626094 (= c!1221846 ((_ is ElementMatch!16495) (regOne!33503 r!7292)))))

(assert (=> b!6626094 (= e!4008042 e!4008040)))

(declare-fun b!6626095 () Bool)

(assert (=> b!6626095 (= e!4008040 (= s!2326 (Cons!65661 (c!1221458 (regOne!33503 r!7292)) Nil!65661)))))

(declare-fun b!6626096 () Bool)

(assert (=> b!6626096 (= e!4008043 e!4008045)))

(assert (=> b!6626096 (= c!1221845 ((_ is Star!16495) (regOne!33503 r!7292)))))

(assert (= (and d!2077037 c!1221844) b!6626091))

(assert (= (and d!2077037 (not c!1221844)) b!6626087))

(assert (= (and b!6626087 res!2716312) b!6626094))

(assert (= (and b!6626094 c!1221846) b!6626095))

(assert (= (and b!6626094 (not c!1221846)) b!6626086))

(assert (= (and b!6626086 c!1221847) b!6626088))

(assert (= (and b!6626086 (not c!1221847)) b!6626096))

(assert (= (and b!6626088 (not res!2716313)) b!6626089))

(assert (= (and b!6626096 c!1221845) b!6626090))

(assert (= (and b!6626096 (not c!1221845)) b!6626092))

(assert (= (and b!6626090 (not res!2716314)) b!6626093))

(assert (= (or b!6626093 b!6626092) bm!581140))

(assert (= (or b!6626091 b!6626090) bm!581139))

(declare-fun m!7396390 () Bool)

(assert (=> b!6626088 m!7396390))

(declare-fun m!7396392 () Bool)

(assert (=> b!6626089 m!7396392))

(assert (=> bm!581139 m!7395402))

(declare-fun m!7396394 () Bool)

(assert (=> bm!581140 m!7396394))

(assert (=> b!6625247 d!2077037))

(declare-fun d!2077043 () Bool)

(declare-fun res!2716319 () Bool)

(declare-fun e!4008049 () Bool)

(assert (=> d!2077043 (=> res!2716319 e!4008049)))

(assert (=> d!2077043 (= res!2716319 ((_ is Nil!65662) lt!2418431))))

(assert (=> d!2077043 (= (noDuplicate!2295 lt!2418431) e!4008049)))

(declare-fun b!6626101 () Bool)

(declare-fun e!4008050 () Bool)

(assert (=> b!6626101 (= e!4008049 e!4008050)))

(declare-fun res!2716320 () Bool)

(assert (=> b!6626101 (=> (not res!2716320) (not e!4008050))))

(assert (=> b!6626101 (= res!2716320 (not (contains!20223 (t!379446 lt!2418431) (h!72110 lt!2418431))))))

(declare-fun b!6626102 () Bool)

(assert (=> b!6626102 (= e!4008050 (noDuplicate!2295 (t!379446 lt!2418431)))))

(assert (= (and d!2077043 (not res!2716319)) b!6626101))

(assert (= (and b!6626101 res!2716320) b!6626102))

(declare-fun m!7396396 () Bool)

(assert (=> b!6626101 m!7396396))

(declare-fun m!7396398 () Bool)

(assert (=> b!6626102 m!7396398))

(assert (=> d!2076591 d!2077043))

(declare-fun d!2077045 () Bool)

(declare-fun e!4008051 () Bool)

(assert (=> d!2077045 e!4008051))

(declare-fun res!2716321 () Bool)

(assert (=> d!2077045 (=> (not res!2716321) (not e!4008051))))

(declare-fun res!2716322 () List!65786)

(assert (=> d!2077045 (= res!2716321 (noDuplicate!2295 res!2716322))))

(declare-fun e!4008052 () Bool)

(assert (=> d!2077045 e!4008052))

(assert (=> d!2077045 (= (choose!49497 z!1189) res!2716322)))

(declare-fun b!6626104 () Bool)

(declare-fun e!4008053 () Bool)

(declare-fun tp!1824918 () Bool)

(assert (=> b!6626104 (= e!4008053 tp!1824918)))

(declare-fun b!6626103 () Bool)

(declare-fun tp!1824919 () Bool)

(assert (=> b!6626103 (= e!4008052 (and (inv!84484 (h!72110 res!2716322)) e!4008053 tp!1824919))))

(declare-fun b!6626105 () Bool)

(assert (=> b!6626105 (= e!4008051 (= (content!12675 res!2716322) z!1189))))

(assert (= b!6626103 b!6626104))

(assert (= (and d!2077045 ((_ is Cons!65662) res!2716322)) b!6626103))

(assert (= (and d!2077045 res!2716321) b!6626105))

(declare-fun m!7396400 () Bool)

(assert (=> d!2077045 m!7396400))

(declare-fun m!7396402 () Bool)

(assert (=> b!6626103 m!7396402))

(declare-fun m!7396404 () Bool)

(assert (=> b!6626105 m!7396404))

(assert (=> d!2076591 d!2077045))

(declare-fun b!6626106 () Bool)

(declare-fun e!4008055 () (InoxSet Context!11758))

(assert (=> b!6626106 (= e!4008055 ((as const (Array Context!11758 Bool)) false))))

(declare-fun d!2077047 () Bool)

(declare-fun c!1221849 () Bool)

(declare-fun e!4008054 () Bool)

(assert (=> d!2077047 (= c!1221849 e!4008054)))

(declare-fun res!2716323 () Bool)

(assert (=> d!2077047 (=> (not res!2716323) (not e!4008054))))

(assert (=> d!2077047 (= res!2716323 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404))))))))

(declare-fun e!4008056 () (InoxSet Context!11758))

(assert (=> d!2077047 (= (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 lt!2418404))) (h!72109 s!2326)) e!4008056)))

(declare-fun b!6626107 () Bool)

(assert (=> b!6626107 (= e!4008056 e!4008055)))

(declare-fun c!1221848 () Bool)

(assert (=> b!6626107 (= c!1221848 ((_ is Cons!65660) (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404))))))))

(declare-fun call!581146 () (InoxSet Context!11758))

(declare-fun b!6626108 () Bool)

(assert (=> b!6626108 (= e!4008056 ((_ map or) call!581146 (derivationStepZipperUp!1669 (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404)))))) (h!72109 s!2326))))))

(declare-fun b!6626109 () Bool)

(assert (=> b!6626109 (= e!4008055 call!581146)))

(declare-fun b!6626110 () Bool)

(assert (=> b!6626110 (= e!4008054 (nullable!6488 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404)))))))))

(declare-fun bm!581141 () Bool)

(assert (=> bm!581141 (= call!581146 (derivationStepZipperDown!1743 (h!72108 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404))))) (Context!11759 (t!379444 (exprs!6379 (Context!11759 (t!379444 (exprs!6379 lt!2418404)))))) (h!72109 s!2326)))))

(assert (= (and d!2077047 res!2716323) b!6626110))

(assert (= (and d!2077047 c!1221849) b!6626108))

(assert (= (and d!2077047 (not c!1221849)) b!6626107))

(assert (= (and b!6626107 c!1221848) b!6626109))

(assert (= (and b!6626107 (not c!1221848)) b!6626106))

(assert (= (or b!6626108 b!6626109) bm!581141))

(declare-fun m!7396406 () Bool)

(assert (=> b!6626108 m!7396406))

(declare-fun m!7396408 () Bool)

(assert (=> b!6626110 m!7396408))

(declare-fun m!7396410 () Bool)

(assert (=> bm!581141 m!7396410))

(assert (=> b!6624802 d!2077047))

(declare-fun d!2077049 () Bool)

(assert (=> d!2077049 (= (isEmptyLang!1877 lt!2418448) ((_ is EmptyLang!16495) lt!2418448))))

(assert (=> b!6624960 d!2077049))

(declare-fun d!2077051 () Bool)

(assert (=> d!2077051 (= (Exists!3565 (ite c!1221651 lambda!370187 lambda!370188)) (choose!49501 (ite c!1221651 lambda!370187 lambda!370188)))))

(declare-fun bs!1700818 () Bool)

(assert (= bs!1700818 d!2077051))

(declare-fun m!7396412 () Bool)

(assert (=> bs!1700818 m!7396412))

(assert (=> bm!581001 d!2077051))

(declare-fun d!2077053 () Bool)

(declare-fun res!2716328 () Bool)

(declare-fun e!4008058 () Bool)

(assert (=> d!2077053 (=> res!2716328 e!4008058)))

(assert (=> d!2077053 (= res!2716328 ((_ is ElementMatch!16495) (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))

(assert (=> d!2077053 (= (validRegex!8231 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))) e!4008058)))

(declare-fun b!6626111 () Bool)

(declare-fun e!4008063 () Bool)

(declare-fun e!4008059 () Bool)

(assert (=> b!6626111 (= e!4008063 e!4008059)))

(declare-fun res!2716327 () Bool)

(assert (=> b!6626111 (= res!2716327 (not (nullable!6488 (reg!16824 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))))

(assert (=> b!6626111 (=> (not res!2716327) (not e!4008059))))

(declare-fun c!1221850 () Bool)

(declare-fun c!1221851 () Bool)

(declare-fun call!581148 () Bool)

(declare-fun bm!581142 () Bool)

(assert (=> bm!581142 (= call!581148 (validRegex!8231 (ite c!1221851 (reg!16824 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))) (ite c!1221850 (regOne!33503 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))) (regOne!33502 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292)))))))))

(declare-fun b!6626112 () Bool)

(declare-fun res!2716326 () Bool)

(declare-fun e!4008060 () Bool)

(assert (=> b!6626112 (=> res!2716326 e!4008060)))

(assert (=> b!6626112 (= res!2716326 (not ((_ is Concat!25340) (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292)))))))

(declare-fun e!4008061 () Bool)

(assert (=> b!6626112 (= e!4008061 e!4008060)))

(declare-fun b!6626113 () Bool)

(assert (=> b!6626113 (= e!4008063 e!4008061)))

(assert (=> b!6626113 (= c!1221850 ((_ is Union!16495) (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))

(declare-fun b!6626114 () Bool)

(assert (=> b!6626114 (= e!4008059 call!581148)))

(declare-fun b!6626115 () Bool)

(assert (=> b!6626115 (= e!4008058 e!4008063)))

(assert (=> b!6626115 (= c!1221851 ((_ is Star!16495) (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))

(declare-fun b!6626116 () Bool)

(declare-fun e!4008057 () Bool)

(declare-fun call!581147 () Bool)

(assert (=> b!6626116 (= e!4008057 call!581147)))

(declare-fun b!6626117 () Bool)

(assert (=> b!6626117 (= e!4008060 e!4008057)))

(declare-fun res!2716324 () Bool)

(assert (=> b!6626117 (=> (not res!2716324) (not e!4008057))))

(declare-fun call!581149 () Bool)

(assert (=> b!6626117 (= res!2716324 call!581149)))

(declare-fun bm!581143 () Bool)

(assert (=> bm!581143 (= call!581147 (validRegex!8231 (ite c!1221850 (regTwo!33503 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))) (regTwo!33502 (ite c!1221496 (regTwo!33503 r!7292) (regTwo!33502 r!7292))))))))

(declare-fun b!6626118 () Bool)

(declare-fun e!4008062 () Bool)

(assert (=> b!6626118 (= e!4008062 call!581147)))

(declare-fun b!6626119 () Bool)

(declare-fun res!2716325 () Bool)

(assert (=> b!6626119 (=> (not res!2716325) (not e!4008062))))

(assert (=> b!6626119 (= res!2716325 call!581149)))

(assert (=> b!6626119 (= e!4008061 e!4008062)))

(declare-fun bm!581144 () Bool)

(assert (=> bm!581144 (= call!581149 call!581148)))

(assert (= (and d!2077053 (not res!2716328)) b!6626115))

(assert (= (and b!6626115 c!1221851) b!6626111))

(assert (= (and b!6626115 (not c!1221851)) b!6626113))

(assert (= (and b!6626111 res!2716327) b!6626114))

(assert (= (and b!6626113 c!1221850) b!6626119))

(assert (= (and b!6626113 (not c!1221850)) b!6626112))

(assert (= (and b!6626119 res!2716325) b!6626118))

(assert (= (and b!6626112 (not res!2716326)) b!6626117))

(assert (= (and b!6626117 res!2716324) b!6626116))

(assert (= (or b!6626118 b!6626116) bm!581143))

(assert (= (or b!6626119 b!6626117) bm!581144))

(assert (= (or b!6626114 bm!581144) bm!581142))

(declare-fun m!7396414 () Bool)

(assert (=> b!6626111 m!7396414))

(declare-fun m!7396416 () Bool)

(assert (=> bm!581142 m!7396416))

(declare-fun m!7396418 () Bool)

(assert (=> bm!581143 m!7396418))

(assert (=> bm!580948 d!2077053))

(declare-fun d!2077055 () Bool)

(assert (=> d!2077055 (= (isEmpty!37952 (tail!12518 (exprs!6379 (h!72110 zl!343)))) ((_ is Nil!65660) (tail!12518 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> b!6625007 d!2077055))

(declare-fun d!2077057 () Bool)

(assert (=> d!2077057 (= (tail!12518 (exprs!6379 (h!72110 zl!343))) (t!379444 (exprs!6379 (h!72110 zl!343))))))

(assert (=> b!6625007 d!2077057))

(declare-fun d!2077059 () Bool)

(assert (=> d!2077059 (= (isEmptyExpr!1868 lt!2418494) ((_ is EmptyExpr!16495) lt!2418494))))

(assert (=> b!6625152 d!2077059))

(declare-fun condSetEmpty!45293 () Bool)

(assert (=> setNonEmpty!45285 (= condSetEmpty!45293 (= setRest!45285 ((as const (Array Context!11758 Bool)) false)))))

(declare-fun setRes!45293 () Bool)

(assert (=> setNonEmpty!45285 (= tp!1824836 setRes!45293)))

(declare-fun setIsEmpty!45293 () Bool)

(assert (=> setIsEmpty!45293 setRes!45293))

(declare-fun tp!1824920 () Bool)

(declare-fun setElem!45293 () Context!11758)

(declare-fun e!4008066 () Bool)

(declare-fun setNonEmpty!45293 () Bool)

(assert (=> setNonEmpty!45293 (= setRes!45293 (and tp!1824920 (inv!84484 setElem!45293) e!4008066))))

(declare-fun setRest!45293 () (InoxSet Context!11758))

(assert (=> setNonEmpty!45293 (= setRest!45285 ((_ map or) (store ((as const (Array Context!11758 Bool)) false) setElem!45293 true) setRest!45293))))

(declare-fun b!6626124 () Bool)

(declare-fun tp!1824921 () Bool)

(assert (=> b!6626124 (= e!4008066 tp!1824921)))

(assert (= (and setNonEmpty!45285 condSetEmpty!45293) setIsEmpty!45293))

(assert (= (and setNonEmpty!45285 (not condSetEmpty!45293)) setNonEmpty!45293))

(assert (= setNonEmpty!45293 b!6626124))

(declare-fun m!7396420 () Bool)

(assert (=> setNonEmpty!45293 m!7396420))

(declare-fun b!6626128 () Bool)

(declare-fun e!4008067 () Bool)

(declare-fun tp!1824922 () Bool)

(declare-fun tp!1824924 () Bool)

(assert (=> b!6626128 (= e!4008067 (and tp!1824922 tp!1824924))))

(declare-fun b!6626127 () Bool)

(declare-fun tp!1824925 () Bool)

(assert (=> b!6626127 (= e!4008067 tp!1824925)))

(assert (=> b!6625453 (= tp!1824808 e!4008067)))

(declare-fun b!6626125 () Bool)

(assert (=> b!6626125 (= e!4008067 tp_is_empty!42243)))

(declare-fun b!6626126 () Bool)

(declare-fun tp!1824923 () Bool)

(declare-fun tp!1824926 () Bool)

(assert (=> b!6626126 (= e!4008067 (and tp!1824923 tp!1824926))))

(assert (= (and b!6625453 ((_ is ElementMatch!16495) (regOne!33503 (reg!16824 r!7292)))) b!6626125))

(assert (= (and b!6625453 ((_ is Concat!25340) (regOne!33503 (reg!16824 r!7292)))) b!6626126))

(assert (= (and b!6625453 ((_ is Star!16495) (regOne!33503 (reg!16824 r!7292)))) b!6626127))

(assert (= (and b!6625453 ((_ is Union!16495) (regOne!33503 (reg!16824 r!7292)))) b!6626128))

(declare-fun b!6626132 () Bool)

(declare-fun e!4008068 () Bool)

(declare-fun tp!1824927 () Bool)

(declare-fun tp!1824929 () Bool)

(assert (=> b!6626132 (= e!4008068 (and tp!1824927 tp!1824929))))

(declare-fun b!6626131 () Bool)

(declare-fun tp!1824930 () Bool)

(assert (=> b!6626131 (= e!4008068 tp!1824930)))

(assert (=> b!6625453 (= tp!1824810 e!4008068)))

(declare-fun b!6626129 () Bool)

(assert (=> b!6626129 (= e!4008068 tp_is_empty!42243)))

(declare-fun b!6626130 () Bool)

(declare-fun tp!1824928 () Bool)

(declare-fun tp!1824931 () Bool)

(assert (=> b!6626130 (= e!4008068 (and tp!1824928 tp!1824931))))

(assert (= (and b!6625453 ((_ is ElementMatch!16495) (regTwo!33503 (reg!16824 r!7292)))) b!6626129))

(assert (= (and b!6625453 ((_ is Concat!25340) (regTwo!33503 (reg!16824 r!7292)))) b!6626130))

(assert (= (and b!6625453 ((_ is Star!16495) (regTwo!33503 (reg!16824 r!7292)))) b!6626131))

(assert (= (and b!6625453 ((_ is Union!16495) (regTwo!33503 (reg!16824 r!7292)))) b!6626132))

(declare-fun b!6626136 () Bool)

(declare-fun e!4008069 () Bool)

(declare-fun tp!1824932 () Bool)

(declare-fun tp!1824934 () Bool)

(assert (=> b!6626136 (= e!4008069 (and tp!1824932 tp!1824934))))

(declare-fun b!6626135 () Bool)

(declare-fun tp!1824935 () Bool)

(assert (=> b!6626135 (= e!4008069 tp!1824935)))

(assert (=> b!6625452 (= tp!1824811 e!4008069)))

(declare-fun b!6626133 () Bool)

(assert (=> b!6626133 (= e!4008069 tp_is_empty!42243)))

(declare-fun b!6626134 () Bool)

(declare-fun tp!1824933 () Bool)

(declare-fun tp!1824936 () Bool)

(assert (=> b!6626134 (= e!4008069 (and tp!1824933 tp!1824936))))

(assert (= (and b!6625452 ((_ is ElementMatch!16495) (reg!16824 (reg!16824 r!7292)))) b!6626133))

(assert (= (and b!6625452 ((_ is Concat!25340) (reg!16824 (reg!16824 r!7292)))) b!6626134))

(assert (= (and b!6625452 ((_ is Star!16495) (reg!16824 (reg!16824 r!7292)))) b!6626135))

(assert (= (and b!6625452 ((_ is Union!16495) (reg!16824 (reg!16824 r!7292)))) b!6626136))

(declare-fun b!6626140 () Bool)

(declare-fun e!4008070 () Bool)

(declare-fun tp!1824937 () Bool)

(declare-fun tp!1824939 () Bool)

(assert (=> b!6626140 (= e!4008070 (and tp!1824937 tp!1824939))))

(declare-fun b!6626139 () Bool)

(declare-fun tp!1824940 () Bool)

(assert (=> b!6626139 (= e!4008070 tp!1824940)))

(assert (=> b!6625443 (= tp!1824799 e!4008070)))

(declare-fun b!6626137 () Bool)

(assert (=> b!6626137 (= e!4008070 tp_is_empty!42243)))

(declare-fun b!6626138 () Bool)

(declare-fun tp!1824938 () Bool)

(declare-fun tp!1824941 () Bool)

(assert (=> b!6626138 (= e!4008070 (and tp!1824938 tp!1824941))))

(assert (= (and b!6625443 ((_ is ElementMatch!16495) (regOne!33502 (regOne!33503 r!7292)))) b!6626137))

(assert (= (and b!6625443 ((_ is Concat!25340) (regOne!33502 (regOne!33503 r!7292)))) b!6626138))

(assert (= (and b!6625443 ((_ is Star!16495) (regOne!33502 (regOne!33503 r!7292)))) b!6626139))

(assert (= (and b!6625443 ((_ is Union!16495) (regOne!33502 (regOne!33503 r!7292)))) b!6626140))

(declare-fun b!6626144 () Bool)

(declare-fun e!4008071 () Bool)

(declare-fun tp!1824942 () Bool)

(declare-fun tp!1824944 () Bool)

(assert (=> b!6626144 (= e!4008071 (and tp!1824942 tp!1824944))))

(declare-fun b!6626143 () Bool)

(declare-fun tp!1824945 () Bool)

(assert (=> b!6626143 (= e!4008071 tp!1824945)))

(assert (=> b!6625443 (= tp!1824802 e!4008071)))

(declare-fun b!6626141 () Bool)

(assert (=> b!6626141 (= e!4008071 tp_is_empty!42243)))

(declare-fun b!6626142 () Bool)

(declare-fun tp!1824943 () Bool)

(declare-fun tp!1824946 () Bool)

(assert (=> b!6626142 (= e!4008071 (and tp!1824943 tp!1824946))))

(assert (= (and b!6625443 ((_ is ElementMatch!16495) (regTwo!33502 (regOne!33503 r!7292)))) b!6626141))

(assert (= (and b!6625443 ((_ is Concat!25340) (regTwo!33502 (regOne!33503 r!7292)))) b!6626142))

(assert (= (and b!6625443 ((_ is Star!16495) (regTwo!33502 (regOne!33503 r!7292)))) b!6626143))

(assert (= (and b!6625443 ((_ is Union!16495) (regTwo!33502 (regOne!33503 r!7292)))) b!6626144))

(declare-fun b!6626148 () Bool)

(declare-fun e!4008072 () Bool)

(declare-fun tp!1824947 () Bool)

(declare-fun tp!1824949 () Bool)

(assert (=> b!6626148 (= e!4008072 (and tp!1824947 tp!1824949))))

(declare-fun b!6626147 () Bool)

(declare-fun tp!1824950 () Bool)

(assert (=> b!6626147 (= e!4008072 tp!1824950)))

(assert (=> b!6625445 (= tp!1824798 e!4008072)))

(declare-fun b!6626145 () Bool)

(assert (=> b!6626145 (= e!4008072 tp_is_empty!42243)))

(declare-fun b!6626146 () Bool)

(declare-fun tp!1824948 () Bool)

(declare-fun tp!1824951 () Bool)

(assert (=> b!6626146 (= e!4008072 (and tp!1824948 tp!1824951))))

(assert (= (and b!6625445 ((_ is ElementMatch!16495) (regOne!33503 (regOne!33503 r!7292)))) b!6626145))

(assert (= (and b!6625445 ((_ is Concat!25340) (regOne!33503 (regOne!33503 r!7292)))) b!6626146))

(assert (= (and b!6625445 ((_ is Star!16495) (regOne!33503 (regOne!33503 r!7292)))) b!6626147))

(assert (= (and b!6625445 ((_ is Union!16495) (regOne!33503 (regOne!33503 r!7292)))) b!6626148))

(declare-fun b!6626152 () Bool)

(declare-fun e!4008073 () Bool)

(declare-fun tp!1824952 () Bool)

(declare-fun tp!1824954 () Bool)

(assert (=> b!6626152 (= e!4008073 (and tp!1824952 tp!1824954))))

(declare-fun b!6626151 () Bool)

(declare-fun tp!1824955 () Bool)

(assert (=> b!6626151 (= e!4008073 tp!1824955)))

(assert (=> b!6625445 (= tp!1824800 e!4008073)))

(declare-fun b!6626149 () Bool)

(assert (=> b!6626149 (= e!4008073 tp_is_empty!42243)))

(declare-fun b!6626150 () Bool)

(declare-fun tp!1824953 () Bool)

(declare-fun tp!1824956 () Bool)

(assert (=> b!6626150 (= e!4008073 (and tp!1824953 tp!1824956))))

(assert (= (and b!6625445 ((_ is ElementMatch!16495) (regTwo!33503 (regOne!33503 r!7292)))) b!6626149))

(assert (= (and b!6625445 ((_ is Concat!25340) (regTwo!33503 (regOne!33503 r!7292)))) b!6626150))

(assert (= (and b!6625445 ((_ is Star!16495) (regTwo!33503 (regOne!33503 r!7292)))) b!6626151))

(assert (= (and b!6625445 ((_ is Union!16495) (regTwo!33503 (regOne!33503 r!7292)))) b!6626152))

(declare-fun b!6626156 () Bool)

(declare-fun e!4008074 () Bool)

(declare-fun tp!1824957 () Bool)

(declare-fun tp!1824959 () Bool)

(assert (=> b!6626156 (= e!4008074 (and tp!1824957 tp!1824959))))

(declare-fun b!6626155 () Bool)

(declare-fun tp!1824960 () Bool)

(assert (=> b!6626155 (= e!4008074 tp!1824960)))

(assert (=> b!6625466 (= tp!1824827 e!4008074)))

(declare-fun b!6626153 () Bool)

(assert (=> b!6626153 (= e!4008074 tp_is_empty!42243)))

(declare-fun b!6626154 () Bool)

(declare-fun tp!1824958 () Bool)

(declare-fun tp!1824961 () Bool)

(assert (=> b!6626154 (= e!4008074 (and tp!1824958 tp!1824961))))

(assert (= (and b!6625466 ((_ is ElementMatch!16495) (h!72108 (exprs!6379 setElem!45282)))) b!6626153))

(assert (= (and b!6625466 ((_ is Concat!25340) (h!72108 (exprs!6379 setElem!45282)))) b!6626154))

(assert (= (and b!6625466 ((_ is Star!16495) (h!72108 (exprs!6379 setElem!45282)))) b!6626155))

(assert (= (and b!6625466 ((_ is Union!16495) (h!72108 (exprs!6379 setElem!45282)))) b!6626156))

(declare-fun b!6626157 () Bool)

(declare-fun e!4008075 () Bool)

(declare-fun tp!1824962 () Bool)

(declare-fun tp!1824963 () Bool)

(assert (=> b!6626157 (= e!4008075 (and tp!1824962 tp!1824963))))

(assert (=> b!6625466 (= tp!1824828 e!4008075)))

(assert (= (and b!6625466 ((_ is Cons!65660) (t!379444 (exprs!6379 setElem!45282)))) b!6626157))

(declare-fun b!6626161 () Bool)

(declare-fun e!4008076 () Bool)

(declare-fun tp!1824964 () Bool)

(declare-fun tp!1824966 () Bool)

(assert (=> b!6626161 (= e!4008076 (and tp!1824964 tp!1824966))))

(declare-fun b!6626160 () Bool)

(declare-fun tp!1824967 () Bool)

(assert (=> b!6626160 (= e!4008076 tp!1824967)))

(assert (=> b!6625444 (= tp!1824801 e!4008076)))

(declare-fun b!6626158 () Bool)

(assert (=> b!6626158 (= e!4008076 tp_is_empty!42243)))

(declare-fun b!6626159 () Bool)

(declare-fun tp!1824965 () Bool)

(declare-fun tp!1824968 () Bool)

(assert (=> b!6626159 (= e!4008076 (and tp!1824965 tp!1824968))))

(assert (= (and b!6625444 ((_ is ElementMatch!16495) (reg!16824 (regOne!33503 r!7292)))) b!6626158))

(assert (= (and b!6625444 ((_ is Concat!25340) (reg!16824 (regOne!33503 r!7292)))) b!6626159))

(assert (= (and b!6625444 ((_ is Star!16495) (reg!16824 (regOne!33503 r!7292)))) b!6626160))

(assert (= (and b!6625444 ((_ is Union!16495) (reg!16824 (regOne!33503 r!7292)))) b!6626161))

(declare-fun b!6626165 () Bool)

(declare-fun e!4008077 () Bool)

(declare-fun tp!1824969 () Bool)

(declare-fun tp!1824971 () Bool)

(assert (=> b!6626165 (= e!4008077 (and tp!1824969 tp!1824971))))

(declare-fun b!6626164 () Bool)

(declare-fun tp!1824972 () Bool)

(assert (=> b!6626164 (= e!4008077 tp!1824972)))

(assert (=> b!6625455 (= tp!1824814 e!4008077)))

(declare-fun b!6626162 () Bool)

(assert (=> b!6626162 (= e!4008077 tp_is_empty!42243)))

(declare-fun b!6626163 () Bool)

(declare-fun tp!1824970 () Bool)

(declare-fun tp!1824973 () Bool)

(assert (=> b!6626163 (= e!4008077 (and tp!1824970 tp!1824973))))

(assert (= (and b!6625455 ((_ is ElementMatch!16495) (regOne!33502 (regOne!33502 r!7292)))) b!6626162))

(assert (= (and b!6625455 ((_ is Concat!25340) (regOne!33502 (regOne!33502 r!7292)))) b!6626163))

(assert (= (and b!6625455 ((_ is Star!16495) (regOne!33502 (regOne!33502 r!7292)))) b!6626164))

(assert (= (and b!6625455 ((_ is Union!16495) (regOne!33502 (regOne!33502 r!7292)))) b!6626165))

(declare-fun b!6626169 () Bool)

(declare-fun e!4008078 () Bool)

(declare-fun tp!1824974 () Bool)

(declare-fun tp!1824976 () Bool)

(assert (=> b!6626169 (= e!4008078 (and tp!1824974 tp!1824976))))

(declare-fun b!6626168 () Bool)

(declare-fun tp!1824977 () Bool)

(assert (=> b!6626168 (= e!4008078 tp!1824977)))

(assert (=> b!6625455 (= tp!1824817 e!4008078)))

(declare-fun b!6626166 () Bool)

(assert (=> b!6626166 (= e!4008078 tp_is_empty!42243)))

(declare-fun b!6626167 () Bool)

(declare-fun tp!1824975 () Bool)

(declare-fun tp!1824978 () Bool)

(assert (=> b!6626167 (= e!4008078 (and tp!1824975 tp!1824978))))

(assert (= (and b!6625455 ((_ is ElementMatch!16495) (regTwo!33502 (regOne!33502 r!7292)))) b!6626166))

(assert (= (and b!6625455 ((_ is Concat!25340) (regTwo!33502 (regOne!33502 r!7292)))) b!6626167))

(assert (= (and b!6625455 ((_ is Star!16495) (regTwo!33502 (regOne!33502 r!7292)))) b!6626168))

(assert (= (and b!6625455 ((_ is Union!16495) (regTwo!33502 (regOne!33502 r!7292)))) b!6626169))

(declare-fun b!6626171 () Bool)

(declare-fun e!4008080 () Bool)

(declare-fun tp!1824979 () Bool)

(assert (=> b!6626171 (= e!4008080 tp!1824979)))

(declare-fun e!4008079 () Bool)

(declare-fun b!6626170 () Bool)

(declare-fun tp!1824980 () Bool)

(assert (=> b!6626170 (= e!4008079 (and (inv!84484 (h!72110 (t!379446 (t!379446 zl!343)))) e!4008080 tp!1824980))))

(assert (=> b!6625503 (= tp!1824845 e!4008079)))

(assert (= b!6626170 b!6626171))

(assert (= (and b!6625503 ((_ is Cons!65662) (t!379446 (t!379446 zl!343)))) b!6626170))

(declare-fun m!7396422 () Bool)

(assert (=> b!6626170 m!7396422))

(declare-fun b!6626175 () Bool)

(declare-fun e!4008081 () Bool)

(declare-fun tp!1824981 () Bool)

(declare-fun tp!1824983 () Bool)

(assert (=> b!6626175 (= e!4008081 (and tp!1824981 tp!1824983))))

(declare-fun b!6626174 () Bool)

(declare-fun tp!1824984 () Bool)

(assert (=> b!6626174 (= e!4008081 tp!1824984)))

(assert (=> b!6625456 (= tp!1824816 e!4008081)))

(declare-fun b!6626172 () Bool)

(assert (=> b!6626172 (= e!4008081 tp_is_empty!42243)))

(declare-fun b!6626173 () Bool)

(declare-fun tp!1824982 () Bool)

(declare-fun tp!1824985 () Bool)

(assert (=> b!6626173 (= e!4008081 (and tp!1824982 tp!1824985))))

(assert (= (and b!6625456 ((_ is ElementMatch!16495) (reg!16824 (regOne!33502 r!7292)))) b!6626172))

(assert (= (and b!6625456 ((_ is Concat!25340) (reg!16824 (regOne!33502 r!7292)))) b!6626173))

(assert (= (and b!6625456 ((_ is Star!16495) (reg!16824 (regOne!33502 r!7292)))) b!6626174))

(assert (= (and b!6625456 ((_ is Union!16495) (reg!16824 (regOne!33502 r!7292)))) b!6626175))

(declare-fun b!6626179 () Bool)

(declare-fun e!4008082 () Bool)

(declare-fun tp!1824986 () Bool)

(declare-fun tp!1824988 () Bool)

(assert (=> b!6626179 (= e!4008082 (and tp!1824986 tp!1824988))))

(declare-fun b!6626178 () Bool)

(declare-fun tp!1824989 () Bool)

(assert (=> b!6626178 (= e!4008082 tp!1824989)))

(assert (=> b!6625447 (= tp!1824804 e!4008082)))

(declare-fun b!6626176 () Bool)

(assert (=> b!6626176 (= e!4008082 tp_is_empty!42243)))

(declare-fun b!6626177 () Bool)

(declare-fun tp!1824987 () Bool)

(declare-fun tp!1824990 () Bool)

(assert (=> b!6626177 (= e!4008082 (and tp!1824987 tp!1824990))))

(assert (= (and b!6625447 ((_ is ElementMatch!16495) (regOne!33502 (regTwo!33503 r!7292)))) b!6626176))

(assert (= (and b!6625447 ((_ is Concat!25340) (regOne!33502 (regTwo!33503 r!7292)))) b!6626177))

(assert (= (and b!6625447 ((_ is Star!16495) (regOne!33502 (regTwo!33503 r!7292)))) b!6626178))

(assert (= (and b!6625447 ((_ is Union!16495) (regOne!33502 (regTwo!33503 r!7292)))) b!6626179))

(declare-fun b!6626183 () Bool)

(declare-fun e!4008083 () Bool)

(declare-fun tp!1824991 () Bool)

(declare-fun tp!1824993 () Bool)

(assert (=> b!6626183 (= e!4008083 (and tp!1824991 tp!1824993))))

(declare-fun b!6626182 () Bool)

(declare-fun tp!1824994 () Bool)

(assert (=> b!6626182 (= e!4008083 tp!1824994)))

(assert (=> b!6625447 (= tp!1824807 e!4008083)))

(declare-fun b!6626180 () Bool)

(assert (=> b!6626180 (= e!4008083 tp_is_empty!42243)))

(declare-fun b!6626181 () Bool)

(declare-fun tp!1824992 () Bool)

(declare-fun tp!1824995 () Bool)

(assert (=> b!6626181 (= e!4008083 (and tp!1824992 tp!1824995))))

(assert (= (and b!6625447 ((_ is ElementMatch!16495) (regTwo!33502 (regTwo!33503 r!7292)))) b!6626180))

(assert (= (and b!6625447 ((_ is Concat!25340) (regTwo!33502 (regTwo!33503 r!7292)))) b!6626181))

(assert (= (and b!6625447 ((_ is Star!16495) (regTwo!33502 (regTwo!33503 r!7292)))) b!6626182))

(assert (= (and b!6625447 ((_ is Union!16495) (regTwo!33502 (regTwo!33503 r!7292)))) b!6626183))

(declare-fun b!6626184 () Bool)

(declare-fun e!4008084 () Bool)

(declare-fun tp!1824996 () Bool)

(declare-fun tp!1824997 () Bool)

(assert (=> b!6626184 (= e!4008084 (and tp!1824996 tp!1824997))))

(assert (=> b!6625476 (= tp!1824837 e!4008084)))

(assert (= (and b!6625476 ((_ is Cons!65660) (exprs!6379 setElem!45285))) b!6626184))

(declare-fun b!6626188 () Bool)

(declare-fun e!4008085 () Bool)

(declare-fun tp!1824998 () Bool)

(declare-fun tp!1825000 () Bool)

(assert (=> b!6626188 (= e!4008085 (and tp!1824998 tp!1825000))))

(declare-fun b!6626187 () Bool)

(declare-fun tp!1825001 () Bool)

(assert (=> b!6626187 (= e!4008085 tp!1825001)))

(assert (=> b!6625448 (= tp!1824806 e!4008085)))

(declare-fun b!6626185 () Bool)

(assert (=> b!6626185 (= e!4008085 tp_is_empty!42243)))

(declare-fun b!6626186 () Bool)

(declare-fun tp!1824999 () Bool)

(declare-fun tp!1825002 () Bool)

(assert (=> b!6626186 (= e!4008085 (and tp!1824999 tp!1825002))))

(assert (= (and b!6625448 ((_ is ElementMatch!16495) (reg!16824 (regTwo!33503 r!7292)))) b!6626185))

(assert (= (and b!6625448 ((_ is Concat!25340) (reg!16824 (regTwo!33503 r!7292)))) b!6626186))

(assert (= (and b!6625448 ((_ is Star!16495) (reg!16824 (regTwo!33503 r!7292)))) b!6626187))

(assert (= (and b!6625448 ((_ is Union!16495) (reg!16824 (regTwo!33503 r!7292)))) b!6626188))

(declare-fun b!6626189 () Bool)

(declare-fun e!4008086 () Bool)

(declare-fun tp!1825003 () Bool)

(declare-fun tp!1825004 () Bool)

(assert (=> b!6626189 (= e!4008086 (and tp!1825003 tp!1825004))))

(assert (=> b!6625504 (= tp!1824844 e!4008086)))

(assert (= (and b!6625504 ((_ is Cons!65660) (exprs!6379 (h!72110 (t!379446 zl!343))))) b!6626189))

(declare-fun b!6626193 () Bool)

(declare-fun e!4008087 () Bool)

(declare-fun tp!1825005 () Bool)

(declare-fun tp!1825007 () Bool)

(assert (=> b!6626193 (= e!4008087 (and tp!1825005 tp!1825007))))

(declare-fun b!6626192 () Bool)

(declare-fun tp!1825008 () Bool)

(assert (=> b!6626192 (= e!4008087 tp!1825008)))

(assert (=> b!6625457 (= tp!1824813 e!4008087)))

(declare-fun b!6626190 () Bool)

(assert (=> b!6626190 (= e!4008087 tp_is_empty!42243)))

(declare-fun b!6626191 () Bool)

(declare-fun tp!1825006 () Bool)

(declare-fun tp!1825009 () Bool)

(assert (=> b!6626191 (= e!4008087 (and tp!1825006 tp!1825009))))

(assert (= (and b!6625457 ((_ is ElementMatch!16495) (regOne!33503 (regOne!33502 r!7292)))) b!6626190))

(assert (= (and b!6625457 ((_ is Concat!25340) (regOne!33503 (regOne!33502 r!7292)))) b!6626191))

(assert (= (and b!6625457 ((_ is Star!16495) (regOne!33503 (regOne!33502 r!7292)))) b!6626192))

(assert (= (and b!6625457 ((_ is Union!16495) (regOne!33503 (regOne!33502 r!7292)))) b!6626193))

(declare-fun b!6626197 () Bool)

(declare-fun e!4008088 () Bool)

(declare-fun tp!1825010 () Bool)

(declare-fun tp!1825012 () Bool)

(assert (=> b!6626197 (= e!4008088 (and tp!1825010 tp!1825012))))

(declare-fun b!6626196 () Bool)

(declare-fun tp!1825013 () Bool)

(assert (=> b!6626196 (= e!4008088 tp!1825013)))

(assert (=> b!6625457 (= tp!1824815 e!4008088)))

(declare-fun b!6626194 () Bool)

(assert (=> b!6626194 (= e!4008088 tp_is_empty!42243)))

(declare-fun b!6626195 () Bool)

(declare-fun tp!1825011 () Bool)

(declare-fun tp!1825014 () Bool)

(assert (=> b!6626195 (= e!4008088 (and tp!1825011 tp!1825014))))

(assert (= (and b!6625457 ((_ is ElementMatch!16495) (regTwo!33503 (regOne!33502 r!7292)))) b!6626194))

(assert (= (and b!6625457 ((_ is Concat!25340) (regTwo!33503 (regOne!33502 r!7292)))) b!6626195))

(assert (= (and b!6625457 ((_ is Star!16495) (regTwo!33503 (regOne!33502 r!7292)))) b!6626196))

(assert (= (and b!6625457 ((_ is Union!16495) (regTwo!33503 (regOne!33502 r!7292)))) b!6626197))

(declare-fun b!6626201 () Bool)

(declare-fun e!4008089 () Bool)

(declare-fun tp!1825015 () Bool)

(declare-fun tp!1825017 () Bool)

(assert (=> b!6626201 (= e!4008089 (and tp!1825015 tp!1825017))))

(declare-fun b!6626200 () Bool)

(declare-fun tp!1825018 () Bool)

(assert (=> b!6626200 (= e!4008089 tp!1825018)))

(assert (=> b!6625449 (= tp!1824803 e!4008089)))

(declare-fun b!6626198 () Bool)

(assert (=> b!6626198 (= e!4008089 tp_is_empty!42243)))

(declare-fun b!6626199 () Bool)

(declare-fun tp!1825016 () Bool)

(declare-fun tp!1825019 () Bool)

(assert (=> b!6626199 (= e!4008089 (and tp!1825016 tp!1825019))))

(assert (= (and b!6625449 ((_ is ElementMatch!16495) (regOne!33503 (regTwo!33503 r!7292)))) b!6626198))

(assert (= (and b!6625449 ((_ is Concat!25340) (regOne!33503 (regTwo!33503 r!7292)))) b!6626199))

(assert (= (and b!6625449 ((_ is Star!16495) (regOne!33503 (regTwo!33503 r!7292)))) b!6626200))

(assert (= (and b!6625449 ((_ is Union!16495) (regOne!33503 (regTwo!33503 r!7292)))) b!6626201))

(declare-fun b!6626205 () Bool)

(declare-fun e!4008090 () Bool)

(declare-fun tp!1825020 () Bool)

(declare-fun tp!1825022 () Bool)

(assert (=> b!6626205 (= e!4008090 (and tp!1825020 tp!1825022))))

(declare-fun b!6626204 () Bool)

(declare-fun tp!1825023 () Bool)

(assert (=> b!6626204 (= e!4008090 tp!1825023)))

(assert (=> b!6625449 (= tp!1824805 e!4008090)))

(declare-fun b!6626202 () Bool)

(assert (=> b!6626202 (= e!4008090 tp_is_empty!42243)))

(declare-fun b!6626203 () Bool)

(declare-fun tp!1825021 () Bool)

(declare-fun tp!1825024 () Bool)

(assert (=> b!6626203 (= e!4008090 (and tp!1825021 tp!1825024))))

(assert (= (and b!6625449 ((_ is ElementMatch!16495) (regTwo!33503 (regTwo!33503 r!7292)))) b!6626202))

(assert (= (and b!6625449 ((_ is Concat!25340) (regTwo!33503 (regTwo!33503 r!7292)))) b!6626203))

(assert (= (and b!6625449 ((_ is Star!16495) (regTwo!33503 (regTwo!33503 r!7292)))) b!6626204))

(assert (= (and b!6625449 ((_ is Union!16495) (regTwo!33503 (regTwo!33503 r!7292)))) b!6626205))

(declare-fun b!6626209 () Bool)

(declare-fun e!4008091 () Bool)

(declare-fun tp!1825025 () Bool)

(declare-fun tp!1825027 () Bool)

(assert (=> b!6626209 (= e!4008091 (and tp!1825025 tp!1825027))))

(declare-fun b!6626208 () Bool)

(declare-fun tp!1825028 () Bool)

(assert (=> b!6626208 (= e!4008091 tp!1825028)))

(assert (=> b!6625486 (= tp!1824838 e!4008091)))

(declare-fun b!6626206 () Bool)

(assert (=> b!6626206 (= e!4008091 tp_is_empty!42243)))

(declare-fun b!6626207 () Bool)

(declare-fun tp!1825026 () Bool)

(declare-fun tp!1825029 () Bool)

(assert (=> b!6626207 (= e!4008091 (and tp!1825026 tp!1825029))))

(assert (= (and b!6625486 ((_ is ElementMatch!16495) (h!72108 (exprs!6379 (h!72110 zl!343))))) b!6626206))

(assert (= (and b!6625486 ((_ is Concat!25340) (h!72108 (exprs!6379 (h!72110 zl!343))))) b!6626207))

(assert (= (and b!6625486 ((_ is Star!16495) (h!72108 (exprs!6379 (h!72110 zl!343))))) b!6626208))

(assert (= (and b!6625486 ((_ is Union!16495) (h!72108 (exprs!6379 (h!72110 zl!343))))) b!6626209))

(declare-fun b!6626210 () Bool)

(declare-fun e!4008092 () Bool)

(declare-fun tp!1825030 () Bool)

(declare-fun tp!1825031 () Bool)

(assert (=> b!6626210 (= e!4008092 (and tp!1825030 tp!1825031))))

(assert (=> b!6625486 (= tp!1824839 e!4008092)))

(assert (= (and b!6625486 ((_ is Cons!65660) (t!379444 (exprs!6379 (h!72110 zl!343))))) b!6626210))

(declare-fun b!6626214 () Bool)

(declare-fun e!4008093 () Bool)

(declare-fun tp!1825032 () Bool)

(declare-fun tp!1825034 () Bool)

(assert (=> b!6626214 (= e!4008093 (and tp!1825032 tp!1825034))))

(declare-fun b!6626213 () Bool)

(declare-fun tp!1825035 () Bool)

(assert (=> b!6626213 (= e!4008093 tp!1825035)))

(assert (=> b!6625459 (= tp!1824819 e!4008093)))

(declare-fun b!6626211 () Bool)

(assert (=> b!6626211 (= e!4008093 tp_is_empty!42243)))

(declare-fun b!6626212 () Bool)

(declare-fun tp!1825033 () Bool)

(declare-fun tp!1825036 () Bool)

(assert (=> b!6626212 (= e!4008093 (and tp!1825033 tp!1825036))))

(assert (= (and b!6625459 ((_ is ElementMatch!16495) (regOne!33502 (regTwo!33502 r!7292)))) b!6626211))

(assert (= (and b!6625459 ((_ is Concat!25340) (regOne!33502 (regTwo!33502 r!7292)))) b!6626212))

(assert (= (and b!6625459 ((_ is Star!16495) (regOne!33502 (regTwo!33502 r!7292)))) b!6626213))

(assert (= (and b!6625459 ((_ is Union!16495) (regOne!33502 (regTwo!33502 r!7292)))) b!6626214))

(declare-fun b!6626218 () Bool)

(declare-fun e!4008094 () Bool)

(declare-fun tp!1825037 () Bool)

(declare-fun tp!1825039 () Bool)

(assert (=> b!6626218 (= e!4008094 (and tp!1825037 tp!1825039))))

(declare-fun b!6626217 () Bool)

(declare-fun tp!1825040 () Bool)

(assert (=> b!6626217 (= e!4008094 tp!1825040)))

(assert (=> b!6625459 (= tp!1824822 e!4008094)))

(declare-fun b!6626215 () Bool)

(assert (=> b!6626215 (= e!4008094 tp_is_empty!42243)))

(declare-fun b!6626216 () Bool)

(declare-fun tp!1825038 () Bool)

(declare-fun tp!1825041 () Bool)

(assert (=> b!6626216 (= e!4008094 (and tp!1825038 tp!1825041))))

(assert (= (and b!6625459 ((_ is ElementMatch!16495) (regTwo!33502 (regTwo!33502 r!7292)))) b!6626215))

(assert (= (and b!6625459 ((_ is Concat!25340) (regTwo!33502 (regTwo!33502 r!7292)))) b!6626216))

(assert (= (and b!6625459 ((_ is Star!16495) (regTwo!33502 (regTwo!33502 r!7292)))) b!6626217))

(assert (= (and b!6625459 ((_ is Union!16495) (regTwo!33502 (regTwo!33502 r!7292)))) b!6626218))

(declare-fun b!6626222 () Bool)

(declare-fun e!4008095 () Bool)

(declare-fun tp!1825042 () Bool)

(declare-fun tp!1825044 () Bool)

(assert (=> b!6626222 (= e!4008095 (and tp!1825042 tp!1825044))))

(declare-fun b!6626221 () Bool)

(declare-fun tp!1825045 () Bool)

(assert (=> b!6626221 (= e!4008095 tp!1825045)))

(assert (=> b!6625461 (= tp!1824818 e!4008095)))

(declare-fun b!6626219 () Bool)

(assert (=> b!6626219 (= e!4008095 tp_is_empty!42243)))

(declare-fun b!6626220 () Bool)

(declare-fun tp!1825043 () Bool)

(declare-fun tp!1825046 () Bool)

(assert (=> b!6626220 (= e!4008095 (and tp!1825043 tp!1825046))))

(assert (= (and b!6625461 ((_ is ElementMatch!16495) (regOne!33503 (regTwo!33502 r!7292)))) b!6626219))

(assert (= (and b!6625461 ((_ is Concat!25340) (regOne!33503 (regTwo!33502 r!7292)))) b!6626220))

(assert (= (and b!6625461 ((_ is Star!16495) (regOne!33503 (regTwo!33502 r!7292)))) b!6626221))

(assert (= (and b!6625461 ((_ is Union!16495) (regOne!33503 (regTwo!33502 r!7292)))) b!6626222))

(declare-fun b!6626226 () Bool)

(declare-fun e!4008096 () Bool)

(declare-fun tp!1825047 () Bool)

(declare-fun tp!1825049 () Bool)

(assert (=> b!6626226 (= e!4008096 (and tp!1825047 tp!1825049))))

(declare-fun b!6626225 () Bool)

(declare-fun tp!1825050 () Bool)

(assert (=> b!6626225 (= e!4008096 tp!1825050)))

(assert (=> b!6625461 (= tp!1824820 e!4008096)))

(declare-fun b!6626223 () Bool)

(assert (=> b!6626223 (= e!4008096 tp_is_empty!42243)))

(declare-fun b!6626224 () Bool)

(declare-fun tp!1825048 () Bool)

(declare-fun tp!1825051 () Bool)

(assert (=> b!6626224 (= e!4008096 (and tp!1825048 tp!1825051))))

(assert (= (and b!6625461 ((_ is ElementMatch!16495) (regTwo!33503 (regTwo!33502 r!7292)))) b!6626223))

(assert (= (and b!6625461 ((_ is Concat!25340) (regTwo!33503 (regTwo!33502 r!7292)))) b!6626224))

(assert (= (and b!6625461 ((_ is Star!16495) (regTwo!33503 (regTwo!33502 r!7292)))) b!6626225))

(assert (= (and b!6625461 ((_ is Union!16495) (regTwo!33503 (regTwo!33502 r!7292)))) b!6626226))

(declare-fun b!6626230 () Bool)

(declare-fun e!4008097 () Bool)

(declare-fun tp!1825052 () Bool)

(declare-fun tp!1825054 () Bool)

(assert (=> b!6626230 (= e!4008097 (and tp!1825052 tp!1825054))))

(declare-fun b!6626229 () Bool)

(declare-fun tp!1825055 () Bool)

(assert (=> b!6626229 (= e!4008097 tp!1825055)))

(assert (=> b!6625460 (= tp!1824821 e!4008097)))

(declare-fun b!6626227 () Bool)

(assert (=> b!6626227 (= e!4008097 tp_is_empty!42243)))

(declare-fun b!6626228 () Bool)

(declare-fun tp!1825053 () Bool)

(declare-fun tp!1825056 () Bool)

(assert (=> b!6626228 (= e!4008097 (and tp!1825053 tp!1825056))))

(assert (= (and b!6625460 ((_ is ElementMatch!16495) (reg!16824 (regTwo!33502 r!7292)))) b!6626227))

(assert (= (and b!6625460 ((_ is Concat!25340) (reg!16824 (regTwo!33502 r!7292)))) b!6626228))

(assert (= (and b!6625460 ((_ is Star!16495) (reg!16824 (regTwo!33502 r!7292)))) b!6626229))

(assert (= (and b!6625460 ((_ is Union!16495) (reg!16824 (regTwo!33502 r!7292)))) b!6626230))

(declare-fun b!6626234 () Bool)

(declare-fun e!4008098 () Bool)

(declare-fun tp!1825057 () Bool)

(declare-fun tp!1825059 () Bool)

(assert (=> b!6626234 (= e!4008098 (and tp!1825057 tp!1825059))))

(declare-fun b!6626233 () Bool)

(declare-fun tp!1825060 () Bool)

(assert (=> b!6626233 (= e!4008098 tp!1825060)))

(assert (=> b!6625451 (= tp!1824809 e!4008098)))

(declare-fun b!6626231 () Bool)

(assert (=> b!6626231 (= e!4008098 tp_is_empty!42243)))

(declare-fun b!6626232 () Bool)

(declare-fun tp!1825058 () Bool)

(declare-fun tp!1825061 () Bool)

(assert (=> b!6626232 (= e!4008098 (and tp!1825058 tp!1825061))))

(assert (= (and b!6625451 ((_ is ElementMatch!16495) (regOne!33502 (reg!16824 r!7292)))) b!6626231))

(assert (= (and b!6625451 ((_ is Concat!25340) (regOne!33502 (reg!16824 r!7292)))) b!6626232))

(assert (= (and b!6625451 ((_ is Star!16495) (regOne!33502 (reg!16824 r!7292)))) b!6626233))

(assert (= (and b!6625451 ((_ is Union!16495) (regOne!33502 (reg!16824 r!7292)))) b!6626234))

(declare-fun b!6626238 () Bool)

(declare-fun e!4008099 () Bool)

(declare-fun tp!1825062 () Bool)

(declare-fun tp!1825064 () Bool)

(assert (=> b!6626238 (= e!4008099 (and tp!1825062 tp!1825064))))

(declare-fun b!6626237 () Bool)

(declare-fun tp!1825065 () Bool)

(assert (=> b!6626237 (= e!4008099 tp!1825065)))

(assert (=> b!6625451 (= tp!1824812 e!4008099)))

(declare-fun b!6626235 () Bool)

(assert (=> b!6626235 (= e!4008099 tp_is_empty!42243)))

(declare-fun b!6626236 () Bool)

(declare-fun tp!1825063 () Bool)

(declare-fun tp!1825066 () Bool)

(assert (=> b!6626236 (= e!4008099 (and tp!1825063 tp!1825066))))

(assert (= (and b!6625451 ((_ is ElementMatch!16495) (regTwo!33502 (reg!16824 r!7292)))) b!6626235))

(assert (= (and b!6625451 ((_ is Concat!25340) (regTwo!33502 (reg!16824 r!7292)))) b!6626236))

(assert (= (and b!6625451 ((_ is Star!16495) (regTwo!33502 (reg!16824 r!7292)))) b!6626237))

(assert (= (and b!6625451 ((_ is Union!16495) (regTwo!33502 (reg!16824 r!7292)))) b!6626238))

(declare-fun b!6626239 () Bool)

(declare-fun e!4008100 () Bool)

(declare-fun tp!1825067 () Bool)

(assert (=> b!6626239 (= e!4008100 (and tp_is_empty!42243 tp!1825067))))

(assert (=> b!6625471 (= tp!1824831 e!4008100)))

(assert (= (and b!6625471 ((_ is Cons!65661) (t!379445 (t!379445 s!2326)))) b!6626239))

(declare-fun b_lambda!250521 () Bool)

(assert (= b_lambda!250515 (or d!2076695 b_lambda!250521)))

(declare-fun bs!1700828 () Bool)

(declare-fun d!2077061 () Bool)

(assert (= bs!1700828 (and d!2077061 d!2076695)))

(assert (=> bs!1700828 (= (dynLambda!26153 lambda!370167 (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343))))) (validRegex!8231 (h!72108 (t!379444 (exprs!6379 (h!72110 zl!343))))))))

(declare-fun m!7396424 () Bool)

(assert (=> bs!1700828 m!7396424))

(assert (=> b!6625775 d!2077061))

(declare-fun b_lambda!250523 () Bool)

(assert (= b_lambda!250507 (or d!2076633 b_lambda!250523)))

(declare-fun bs!1700829 () Bool)

(declare-fun d!2077063 () Bool)

(assert (= bs!1700829 (and d!2077063 d!2076633)))

(assert (=> bs!1700829 (= (dynLambda!26153 lambda!370142 (h!72108 lt!2418454)) (validRegex!8231 (h!72108 lt!2418454)))))

(declare-fun m!7396426 () Bool)

(assert (=> bs!1700829 m!7396426))

(assert (=> b!6625652 d!2077063))

(declare-fun b_lambda!250525 () Bool)

(assert (= b_lambda!250511 (or d!2076623 b_lambda!250525)))

(declare-fun bs!1700830 () Bool)

(declare-fun d!2077065 () Bool)

(assert (= bs!1700830 (and d!2077065 d!2076623)))

(assert (=> bs!1700830 (= (dynLambda!26153 lambda!370139 (h!72108 (unfocusZipperList!1916 zl!343))) (validRegex!8231 (h!72108 (unfocusZipperList!1916 zl!343))))))

(declare-fun m!7396428 () Bool)

(assert (=> bs!1700830 m!7396428))

(assert (=> b!6625735 d!2077065))

(declare-fun b_lambda!250527 () Bool)

(assert (= b_lambda!250509 (or d!2076749 b_lambda!250527)))

(declare-fun bs!1700832 () Bool)

(declare-fun d!2077067 () Bool)

(assert (= bs!1700832 (and d!2077067 d!2076749)))

(assert (=> bs!1700832 (= (dynLambda!26153 lambda!370191 (h!72108 (exprs!6379 (h!72110 zl!343)))) (validRegex!8231 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(declare-fun m!7396430 () Bool)

(assert (=> bs!1700832 m!7396430))

(assert (=> b!6625724 d!2077067))

(declare-fun b_lambda!250529 () Bool)

(assert (= b_lambda!250517 (or d!2076639 b_lambda!250529)))

(declare-fun bs!1700833 () Bool)

(declare-fun d!2077069 () Bool)

(assert (= bs!1700833 (and d!2077069 d!2076639)))

(assert (=> bs!1700833 (= (dynLambda!26153 lambda!370145 (h!72108 (exprs!6379 (h!72110 zl!343)))) (validRegex!8231 (h!72108 (exprs!6379 (h!72110 zl!343)))))))

(assert (=> bs!1700833 m!7396430))

(assert (=> b!6625984 d!2077069))

(declare-fun b_lambda!250531 () Bool)

(assert (= b_lambda!250505 (or d!2076651 b_lambda!250531)))

(declare-fun bs!1700834 () Bool)

(declare-fun d!2077071 () Bool)

(assert (= bs!1700834 (and d!2077071 d!2076651)))

(assert (=> bs!1700834 (= (dynLambda!26153 lambda!370148 (h!72108 (exprs!6379 setElem!45282))) (validRegex!8231 (h!72108 (exprs!6379 setElem!45282))))))

(declare-fun m!7396432 () Bool)

(assert (=> bs!1700834 m!7396432))

(assert (=> b!6625628 d!2077071))

(declare-fun b_lambda!250533 () Bool)

(assert (= b_lambda!250513 (or b!6624703 b_lambda!250533)))

(assert (=> d!2076859 d!2076759))

(declare-fun b_lambda!250535 () Bool)

(assert (= b_lambda!250519 (or b!6624703 b_lambda!250535)))

(assert (=> d!2076969 d!2076761))

(check-sat (not bm!581063) (not d!2076903) (not b!6625810) (not b!6625867) (not b!6625620) (not b!6625755) (not d!2076941) (not b!6626127) (not d!2076883) (not bm!581082) (not b!6625897) (not d!2077001) (not b!6626178) (not bm!581037) (not b!6626188) (not b!6625725) (not bm!581030) (not b!6625629) (not b!6626225) (not d!2076837) (not b!6626212) (not b!6625900) (not bm!581034) (not b!6626210) (not bm!581104) (not b!6626200) (not d!2076979) (not b!6626164) (not b!6626139) (not b!6625753) (not bm!581093) (not b!6626209) (not b!6625839) (not d!2076977) (not bm!581081) (not b!6626186) (not b!6625950) (not b!6626136) (not bm!581073) (not d!2076901) (not bm!581134) (not b!6626132) (not b!6626004) (not b!6626148) (not bm!581110) (not b!6625613) (not b!6626201) (not b!6626191) (not d!2076775) (not b!6626147) (not d!2076889) (not bm!581124) (not b!6626102) (not d!2076795) (not bm!581102) (not b!6626013) (not d!2076827) (not b!6626196) (not b_lambda!250533) (not b!6625690) (not d!2076839) (not b!6625581) (not b!6626170) (not b!6625825) (not d!2076989) (not b!6625986) (not d!2076923) (not b!6626089) (not b_lambda!250529) (not b!6625907) (not b!6626135) (not b!6626236) (not b!6626054) (not b!6626151) (not b!6625714) (not bs!1700834) (not b!6625937) (not b!6625751) (not b!6626140) (not bm!581098) (not d!2076939) (not bm!581090) (not b!6625776) (not b!6626006) (not b_lambda!250527) (not b!6626195) (not bm!581121) (not b_lambda!250535) (not b!6626159) (not b!6625853) (not bm!581117) (not d!2076859) (not b!6626014) (not b!6626130) (not b!6625933) (not b!6625621) (not bm!581080) (not b!6625845) (not b!6626217) (not b!6625941) (not d!2076895) (not d!2076929) (not b!6626218) (not d!2077051) (not bm!581036) (not b!6625618) (not b!6626059) (not d!2077019) (not b!6625888) (not d!2076803) (not b_lambda!250521) (not b!6626146) (not b!6625736) (not d!2076893) (not bm!581131) (not d!2076993) (not b!6625905) (not d!2076785) (not d!2076861) (not bm!581088) (not b!6625782) (not d!2076833) (not b!6626051) (not d!2076899) (not b!6625821) (not bm!581139) (not b_lambda!250499) (not b!6625683) (not b!6626007) (not b!6625739) (not bm!581039) (not bm!581107) (not bm!581064) (not b!6625972) (not b!6626222) (not b!6625949) (not b!6626010) (not b!6625678) (not bm!581106) (not b!6626009) (not b!6625622) (not b!6626234) (not b!6625879) (not b!6625849) (not b!6626193) (not d!2076857) (not b!6625823) (not b!6625565) (not b!6625641) (not bm!581089) (not b!6625975) (not d!2076787) (not b!6626143) (not b!6626028) (not d!2076995) (not b!6625564) (not d!2076921) (not b!6626155) (not bm!581083) (not bm!581067) (not b!6625660) (not d!2076927) (not b!6626192) (not b!6625582) (not b!6626154) (not b!6625827) (not d!2076945) (not b!6626199) (not b!6625934) (not b!6626062) (not b!6626110) (not b!6625738) (not b!6626138) (not b_lambda!250525) (not b!6626187) (not d!2076853) (not d!2076897) (not d!2076913) (not b!6626189) (not d!2076779) (not b!6626169) (not b!6626008) (not d!2077007) (not b!6626104) (not b!6625816) (not bm!581127) (not bs!1700829) (not bm!581114) (not b!6625688) (not b!6625783) (not bm!581096) (not bm!581092) (not bm!581091) (not b!6626101) (not b!6625843) (not bm!581045) (not b!6625961) (not d!2076885) (not b!6625576) (not b!6626232) (not b!6626226) (not b!6626165) (not d!2076809) (not d!2076847) (not b!6626105) (not b!6626224) (not b!6626204) (not bm!581069) (not d!2076915) (not b!6625633) (not bm!581048) (not b!6625974) (not b!6625880) (not d!2076849) (not b!6625922) (not d!2076891) (not b_lambda!250523) (not b!6625912) (not b!6626220) (not bm!581094) (not b!6625752) (not b!6625677) (not b!6625863) (not b!6625913) (not b!6626150) (not bm!581118) (not b!6626205) (not b!6625659) (not b!6626152) (not b!6625680) (not b!6625692) (not b!6625610) (not b!6626111) (not b!6625852) (not b!6626131) (not b!6625781) (not b!6625586) (not b!6625744) (not b!6625908) (not b!6626183) (not bm!581061) (not b!6625838) (not b!6625596) (not b!6625887) (not b!6626238) (not b!6626171) (not b!6626228) (not b!6625691) (not b!6626230) (not bm!581070) (not b!6625824) (not d!2077025) (not b!6625597) (not bm!581115) (not b!6626027) (not b!6626144) (not b!6626174) (not b!6626239) (not bm!581111) (not b!6626208) (not b!6626016) (not b!6625656) (not bs!1700833) (not b!6626213) (not bm!581042) (not d!2077045) (not b!6625911) (not b!6626168) (not d!2076807) (not b!6625580) (not b!6626184) (not bm!581029) (not b!6626157) (not b!6626173) (not b!6626084) (not bs!1700828) (not bm!581141) (not b!6626124) (not b!6625726) (not b!6625785) (not b!6626179) (not b!6625780) (not d!2076835) (not b!6625812) (not d!2076797) (not b!6625866) (not b!6626088) (not bm!581040) (not d!2076783) (not b!6625777) (not setNonEmpty!45291) (not b!6625585) (not b!6626065) (not bm!581087) (not bm!581086) (not b!6625985) tp_is_empty!42243 (not d!2076937) (not bm!581074) (not b!6626237) (not bm!581027) (not b!6626063) (not b!6625749) (not b!6625889) (not b!6626103) (not b!6626163) (not b!6625766) (not d!2076943) (not bs!1700830) (not b!6626126) (not b!6626216) (not b!6626156) (not setNonEmpty!45292) (not b!6626182) (not bm!581099) (not b!6626175) (not b!6626142) (not b!6626085) (not b!6626197) (not b!6626134) (not b!6625653) (not b!6626160) (not b!6626214) (not d!2076863) (not b!6625741) (not bm!581041) (not b_lambda!250531) (not d!2076925) (not bm!581140) (not bm!581142) (not b!6626161) (not d!2077015) (not b!6625848) (not b!6625578) (not b!6625842) (not b!6626207) (not b!6626181) (not b!6625909) (not b!6626061) (not d!2076887) (not d!2076865) (not bm!581113) (not bm!581033) (not bm!581062) (not b!6626177) (not bm!581050) (not bm!581123) (not b!6625778) (not b!6625632) (not bm!581143) (not b_lambda!250497) (not b!6625813) (not b!6626128) (not d!2076969) (not d!2076947) (not d!2076855) (not b!6625579) (not bm!581103) (not d!2077029) (not b!6626229) (not bm!581066) (not b!6626167) (not b!6625737) (not bm!581049) (not d!2076851) (not bs!1700832) (not b!6625850) (not b!6625995) (not b!6625595) (not b!6626233) (not bm!581120) (not b!6626108) (not b!6625940) (not b!6626203) (not setNonEmpty!45293) (not b!6626221) (not bm!581044) (not bm!581126) (not bm!581135) (not d!2076875))
(check-sat)
