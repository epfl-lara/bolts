; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646690 () Bool)

(assert start!646690)

(declare-fun b!6615856 () Bool)

(assert (=> b!6615856 true))

(assert (=> b!6615856 true))

(declare-fun lambda!369578 () Int)

(declare-fun lambda!369577 () Int)

(assert (=> b!6615856 (not (= lambda!369578 lambda!369577))))

(assert (=> b!6615856 true))

(assert (=> b!6615856 true))

(declare-fun b!6615850 () Bool)

(assert (=> b!6615850 true))

(declare-fun b!6615828 () Bool)

(declare-fun res!2712868 () Bool)

(declare-fun e!4002407 () Bool)

(assert (=> b!6615828 (=> (not res!2712868) (not e!4002407))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33248 0))(
  ( (C!33249 (val!26326 Int)) )
))
(declare-datatypes ((Regex!16489 0))(
  ( (ElementMatch!16489 (c!1219498 C!33248)) (Concat!25334 (regOne!33490 Regex!16489) (regTwo!33490 Regex!16489)) (EmptyExpr!16489) (Star!16489 (reg!16818 Regex!16489)) (EmptyLang!16489) (Union!16489 (regOne!33491 Regex!16489) (regTwo!33491 Regex!16489)) )
))
(declare-datatypes ((List!65766 0))(
  ( (Nil!65642) (Cons!65642 (h!72090 Regex!16489) (t!379422 List!65766)) )
))
(declare-datatypes ((Context!11746 0))(
  ( (Context!11747 (exprs!6373 List!65766)) )
))
(declare-fun z!1189 () (InoxSet Context!11746))

(declare-datatypes ((List!65767 0))(
  ( (Nil!65643) (Cons!65643 (h!72091 Context!11746) (t!379423 List!65767)) )
))
(declare-fun zl!343 () List!65767)

(declare-fun toList!10273 ((InoxSet Context!11746)) List!65767)

(assert (=> b!6615828 (= res!2712868 (= (toList!10273 z!1189) zl!343))))

(declare-fun b!6615829 () Bool)

(declare-fun e!4002412 () Bool)

(assert (=> b!6615829 (= e!4002407 (not e!4002412))))

(declare-fun res!2712858 () Bool)

(assert (=> b!6615829 (=> res!2712858 e!4002412)))

(get-info :version)

(assert (=> b!6615829 (= res!2712858 (not ((_ is Cons!65643) zl!343)))))

(declare-fun lt!2417485 () Bool)

(declare-fun r!7292 () Regex!16489)

(declare-datatypes ((List!65768 0))(
  ( (Nil!65644) (Cons!65644 (h!72092 C!33248) (t!379424 List!65768)) )
))
(declare-fun s!2326 () List!65768)

(declare-fun matchRSpec!3590 (Regex!16489 List!65768) Bool)

(assert (=> b!6615829 (= lt!2417485 (matchRSpec!3590 r!7292 s!2326))))

(declare-fun matchR!8672 (Regex!16489 List!65768) Bool)

(assert (=> b!6615829 (= lt!2417485 (matchR!8672 r!7292 s!2326))))

(declare-datatypes ((Unit!159311 0))(
  ( (Unit!159312) )
))
(declare-fun lt!2417479 () Unit!159311)

(declare-fun mainMatchTheorem!3590 (Regex!16489 List!65768) Unit!159311)

(assert (=> b!6615829 (= lt!2417479 (mainMatchTheorem!3590 r!7292 s!2326))))

(declare-fun b!6615830 () Bool)

(declare-fun e!4002406 () Bool)

(declare-fun tp!1822139 () Bool)

(assert (=> b!6615830 (= e!4002406 tp!1822139)))

(declare-fun b!6615831 () Bool)

(declare-fun e!4002411 () Bool)

(declare-fun e!4002415 () Bool)

(assert (=> b!6615831 (= e!4002411 e!4002415)))

(declare-fun res!2712878 () Bool)

(assert (=> b!6615831 (=> res!2712878 e!4002415)))

(declare-fun lt!2417476 () (InoxSet Context!11746))

(assert (=> b!6615831 (= res!2712878 (or (not (= lt!2417476 ((as const (Array Context!11746 Bool)) false))) (not (= r!7292 (Concat!25334 (regOne!33490 r!7292) (regTwo!33490 r!7292)))) (not (= (regOne!33490 r!7292) EmptyExpr!16489))))))

(declare-fun matchZipper!2501 ((InoxSet Context!11746) List!65768) Bool)

(assert (=> b!6615831 (not (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(declare-fun lt!2417483 () Unit!159311)

(declare-fun lemmaEmptyZipperMatchesNothing!84 ((InoxSet Context!11746) List!65768) Unit!159311)

(assert (=> b!6615831 (= lt!2417483 (lemmaEmptyZipperMatchesNothing!84 lt!2417476 (t!379424 s!2326)))))

(declare-fun res!2712874 () Bool)

(assert (=> start!646690 (=> (not res!2712874) (not e!4002407))))

(declare-fun validRegex!8225 (Regex!16489) Bool)

(assert (=> start!646690 (= res!2712874 (validRegex!8225 r!7292))))

(assert (=> start!646690 e!4002407))

(declare-fun e!4002408 () Bool)

(assert (=> start!646690 e!4002408))

(declare-fun condSetEmpty!45216 () Bool)

(assert (=> start!646690 (= condSetEmpty!45216 (= z!1189 ((as const (Array Context!11746 Bool)) false)))))

(declare-fun setRes!45216 () Bool)

(assert (=> start!646690 setRes!45216))

(declare-fun e!4002409 () Bool)

(assert (=> start!646690 e!4002409))

(declare-fun e!4002410 () Bool)

(assert (=> start!646690 e!4002410))

(declare-fun b!6615832 () Bool)

(declare-fun e!4002405 () Unit!159311)

(declare-fun Unit!159313 () Unit!159311)

(assert (=> b!6615832 (= e!4002405 Unit!159313)))

(declare-fun b!6615833 () Bool)

(declare-fun e!4002414 () Bool)

(assert (=> b!6615833 (= e!4002415 e!4002414)))

(declare-fun res!2712873 () Bool)

(assert (=> b!6615833 (=> res!2712873 e!4002414)))

(declare-fun lt!2417487 () Bool)

(assert (=> b!6615833 (= res!2712873 (not (= lt!2417485 lt!2417487)))))

(assert (=> b!6615833 (= lt!2417487 (matchRSpec!3590 (regTwo!33490 r!7292) s!2326))))

(assert (=> b!6615833 (= lt!2417487 (matchR!8672 (regTwo!33490 r!7292) s!2326))))

(declare-fun lt!2417470 () Unit!159311)

(assert (=> b!6615833 (= lt!2417470 (mainMatchTheorem!3590 (regTwo!33490 r!7292) s!2326))))

(assert (=> b!6615833 (= (matchR!8672 (regOne!33490 r!7292) s!2326) (matchRSpec!3590 (regOne!33490 r!7292) s!2326))))

(declare-fun lt!2417473 () Unit!159311)

(assert (=> b!6615833 (= lt!2417473 (mainMatchTheorem!3590 (regOne!33490 r!7292) s!2326))))

(declare-fun b!6615834 () Bool)

(declare-fun e!4002404 () Bool)

(declare-fun e!4002401 () Bool)

(assert (=> b!6615834 (= e!4002404 e!4002401)))

(declare-fun res!2712862 () Bool)

(assert (=> b!6615834 (=> res!2712862 e!4002401)))

(declare-fun lt!2417475 () (InoxSet Context!11746))

(declare-fun derivationStepZipper!2455 ((InoxSet Context!11746) C!33248) (InoxSet Context!11746))

(assert (=> b!6615834 (= res!2712862 (not (= (derivationStepZipper!2455 z!1189 (h!72092 s!2326)) lt!2417475)))))

(declare-fun lt!2417481 () (InoxSet Context!11746))

(assert (=> b!6615834 (= lt!2417475 ((_ map or) lt!2417476 lt!2417481))))

(declare-fun b!6615835 () Bool)

(declare-fun tp_is_empty!42231 () Bool)

(assert (=> b!6615835 (= e!4002408 tp_is_empty!42231)))

(declare-fun b!6615836 () Bool)

(declare-fun res!2712872 () Bool)

(assert (=> b!6615836 (=> res!2712872 e!4002411)))

(declare-fun e!4002416 () Bool)

(assert (=> b!6615836 (= res!2712872 e!4002416)))

(declare-fun res!2712876 () Bool)

(assert (=> b!6615836 (=> (not res!2712876) (not e!4002416))))

(assert (=> b!6615836 (= res!2712876 ((_ is Concat!25334) (regOne!33490 r!7292)))))

(declare-fun b!6615837 () Bool)

(declare-fun tp!1822134 () Bool)

(assert (=> b!6615837 (= e!4002410 (and tp_is_empty!42231 tp!1822134))))

(declare-fun b!6615838 () Bool)

(declare-fun Unit!159314 () Unit!159311)

(assert (=> b!6615838 (= e!4002405 Unit!159314)))

(declare-fun lt!2417474 () Unit!159311)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1320 ((InoxSet Context!11746) (InoxSet Context!11746) List!65768) Unit!159311)

(assert (=> b!6615838 (= lt!2417474 (lemmaZipperConcatMatchesSameAsBothZippers!1320 lt!2417476 lt!2417481 (t!379424 s!2326)))))

(declare-fun res!2712877 () Bool)

(assert (=> b!6615838 (= res!2712877 (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(declare-fun e!4002400 () Bool)

(assert (=> b!6615838 (=> res!2712877 e!4002400)))

(assert (=> b!6615838 (= (matchZipper!2501 ((_ map or) lt!2417476 lt!2417481) (t!379424 s!2326)) e!4002400)))

(declare-fun b!6615839 () Bool)

(declare-fun nullable!6482 (Regex!16489) Bool)

(assert (=> b!6615839 (= e!4002416 (nullable!6482 (regOne!33490 (regOne!33490 r!7292))))))

(declare-fun b!6615840 () Bool)

(declare-fun tp!1822138 () Bool)

(declare-fun tp!1822141 () Bool)

(assert (=> b!6615840 (= e!4002408 (and tp!1822138 tp!1822141))))

(declare-fun b!6615841 () Bool)

(declare-fun e!4002413 () Bool)

(declare-fun tp!1822135 () Bool)

(declare-fun inv!84469 (Context!11746) Bool)

(assert (=> b!6615841 (= e!4002409 (and (inv!84469 (h!72091 zl!343)) e!4002413 tp!1822135))))

(declare-fun b!6615842 () Bool)

(declare-fun res!2712875 () Bool)

(assert (=> b!6615842 (=> res!2712875 e!4002412)))

(assert (=> b!6615842 (= res!2712875 (or ((_ is EmptyExpr!16489) r!7292) ((_ is EmptyLang!16489) r!7292) ((_ is ElementMatch!16489) r!7292) ((_ is Union!16489) r!7292) (not ((_ is Concat!25334) r!7292))))))

(declare-fun b!6615843 () Bool)

(declare-fun res!2712870 () Bool)

(assert (=> b!6615843 (=> (not res!2712870) (not e!4002407))))

(declare-fun unfocusZipper!2231 (List!65767) Regex!16489)

(assert (=> b!6615843 (= res!2712870 (= r!7292 (unfocusZipper!2231 zl!343)))))

(declare-fun b!6615844 () Bool)

(declare-fun res!2712866 () Bool)

(assert (=> b!6615844 (=> res!2712866 e!4002412)))

(assert (=> b!6615844 (= res!2712866 (not ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6615845 () Bool)

(assert (=> b!6615845 (= e!4002414 e!4002404)))

(declare-fun res!2712864 () Bool)

(assert (=> b!6615845 (=> res!2712864 e!4002404)))

(declare-fun lt!2417472 () (InoxSet Context!11746))

(assert (=> b!6615845 (= res!2712864 (not (= lt!2417481 (derivationStepZipper!2455 lt!2417472 (h!72092 s!2326)))))))

(declare-fun lt!2417478 () Context!11746)

(declare-fun lambda!369579 () Int)

(declare-fun flatMap!1994 ((InoxSet Context!11746) Int) (InoxSet Context!11746))

(declare-fun derivationStepZipperUp!1663 (Context!11746 C!33248) (InoxSet Context!11746))

(assert (=> b!6615845 (= (flatMap!1994 lt!2417472 lambda!369579) (derivationStepZipperUp!1663 lt!2417478 (h!72092 s!2326)))))

(declare-fun lt!2417482 () Unit!159311)

(declare-fun lemmaFlatMapOnSingletonSet!1520 ((InoxSet Context!11746) Context!11746 Int) Unit!159311)

(assert (=> b!6615845 (= lt!2417482 (lemmaFlatMapOnSingletonSet!1520 lt!2417472 lt!2417478 lambda!369579))))

(assert (=> b!6615845 (= lt!2417472 (store ((as const (Array Context!11746 Bool)) false) lt!2417478 true))))

(declare-fun b!6615846 () Bool)

(declare-fun res!2712860 () Bool)

(assert (=> b!6615846 (=> res!2712860 e!4002412)))

(declare-fun isEmpty!37927 (List!65767) Bool)

(assert (=> b!6615846 (= res!2712860 (not (isEmpty!37927 (t!379423 zl!343))))))

(declare-fun b!6615847 () Bool)

(declare-fun tp!1822137 () Bool)

(assert (=> b!6615847 (= e!4002413 tp!1822137)))

(declare-fun b!6615848 () Bool)

(declare-fun res!2712859 () Bool)

(declare-fun e!4002403 () Bool)

(assert (=> b!6615848 (=> res!2712859 e!4002403)))

(declare-fun isEmpty!37928 (List!65766) Bool)

(assert (=> b!6615848 (= res!2712859 (isEmpty!37928 (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6615849 () Bool)

(declare-fun e!4002402 () Bool)

(assert (=> b!6615849 (= e!4002402 (inv!84469 lt!2417478))))

(assert (=> b!6615850 (= e!4002403 e!4002411)))

(declare-fun res!2712867 () Bool)

(assert (=> b!6615850 (=> res!2712867 e!4002411)))

(assert (=> b!6615850 (= res!2712867 (or (and ((_ is ElementMatch!16489) (regOne!33490 r!7292)) (= (c!1219498 (regOne!33490 r!7292)) (h!72092 s!2326))) ((_ is Union!16489) (regOne!33490 r!7292))))))

(declare-fun lt!2417471 () Unit!159311)

(assert (=> b!6615850 (= lt!2417471 e!4002405)))

(declare-fun c!1219497 () Bool)

(assert (=> b!6615850 (= c!1219497 (nullable!6482 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> b!6615850 (= (flatMap!1994 z!1189 lambda!369579) (derivationStepZipperUp!1663 (h!72091 zl!343) (h!72092 s!2326)))))

(declare-fun lt!2417469 () Unit!159311)

(assert (=> b!6615850 (= lt!2417469 (lemmaFlatMapOnSingletonSet!1520 z!1189 (h!72091 zl!343) lambda!369579))))

(assert (=> b!6615850 (= lt!2417481 (derivationStepZipperUp!1663 lt!2417478 (h!72092 s!2326)))))

(declare-fun derivationStepZipperDown!1737 (Regex!16489 Context!11746 C!33248) (InoxSet Context!11746))

(assert (=> b!6615850 (= lt!2417476 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (h!72091 zl!343))) lt!2417478 (h!72092 s!2326)))))

(assert (=> b!6615850 (= lt!2417478 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun lt!2417468 () (InoxSet Context!11746))

(assert (=> b!6615850 (= lt!2417468 (derivationStepZipperUp!1663 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))) (h!72092 s!2326)))))

(declare-fun b!6615851 () Bool)

(declare-fun res!2712861 () Bool)

(assert (=> b!6615851 (=> res!2712861 e!4002412)))

(declare-fun generalisedUnion!2333 (List!65766) Regex!16489)

(declare-fun unfocusZipperList!1910 (List!65767) List!65766)

(assert (=> b!6615851 (= res!2712861 (not (= r!7292 (generalisedUnion!2333 (unfocusZipperList!1910 zl!343)))))))

(declare-fun b!6615852 () Bool)

(declare-fun tp!1822143 () Bool)

(assert (=> b!6615852 (= e!4002408 tp!1822143)))

(declare-fun b!6615853 () Bool)

(assert (=> b!6615853 (= e!4002400 (matchZipper!2501 lt!2417481 (t!379424 s!2326)))))

(declare-fun setIsEmpty!45216 () Bool)

(assert (=> setIsEmpty!45216 setRes!45216))

(declare-fun b!6615854 () Bool)

(assert (=> b!6615854 (= e!4002401 e!4002402)))

(declare-fun res!2712871 () Bool)

(assert (=> b!6615854 (=> res!2712871 e!4002402)))

(declare-fun lt!2417467 () Bool)

(assert (=> b!6615854 (= res!2712871 (not (= (matchZipper!2501 z!1189 s!2326) lt!2417467)))))

(declare-fun lt!2417480 () Bool)

(assert (=> b!6615854 (= lt!2417480 lt!2417467)))

(assert (=> b!6615854 (= lt!2417467 (matchZipper!2501 lt!2417481 (t!379424 s!2326)))))

(assert (=> b!6615854 (= lt!2417480 (matchZipper!2501 lt!2417475 (t!379424 s!2326)))))

(declare-fun lt!2417484 () Unit!159311)

(assert (=> b!6615854 (= lt!2417484 (lemmaZipperConcatMatchesSameAsBothZippers!1320 lt!2417476 lt!2417481 (t!379424 s!2326)))))

(declare-fun b!6615855 () Bool)

(declare-fun tp!1822142 () Bool)

(declare-fun tp!1822136 () Bool)

(assert (=> b!6615855 (= e!4002408 (and tp!1822142 tp!1822136))))

(assert (=> b!6615856 (= e!4002412 e!4002403)))

(declare-fun res!2712863 () Bool)

(assert (=> b!6615856 (=> res!2712863 e!4002403)))

(declare-fun lt!2417486 () Bool)

(assert (=> b!6615856 (= res!2712863 (or (not (= lt!2417485 lt!2417486)) ((_ is Nil!65644) s!2326)))))

(declare-fun Exists!3559 (Int) Bool)

(assert (=> b!6615856 (= (Exists!3559 lambda!369577) (Exists!3559 lambda!369578))))

(declare-fun lt!2417477 () Unit!159311)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2096 (Regex!16489 Regex!16489 List!65768) Unit!159311)

(assert (=> b!6615856 (= lt!2417477 (lemmaExistCutMatchRandMatchRSpecEquivalent!2096 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326))))

(assert (=> b!6615856 (= lt!2417486 (Exists!3559 lambda!369577))))

(declare-datatypes ((tuple2!66936 0))(
  ( (tuple2!66937 (_1!36771 List!65768) (_2!36771 List!65768)) )
))
(declare-datatypes ((Option!16380 0))(
  ( (None!16379) (Some!16379 (v!52568 tuple2!66936)) )
))
(declare-fun isDefined!13083 (Option!16380) Bool)

(declare-fun findConcatSeparation!2794 (Regex!16489 Regex!16489 List!65768 List!65768 List!65768) Option!16380)

(assert (=> b!6615856 (= lt!2417486 (isDefined!13083 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326)))))

(declare-fun lt!2417488 () Unit!159311)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2558 (Regex!16489 Regex!16489 List!65768) Unit!159311)

(assert (=> b!6615856 (= lt!2417488 (lemmaFindConcatSeparationEquivalentToExists!2558 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326))))

(declare-fun b!6615857 () Bool)

(declare-fun res!2712869 () Bool)

(assert (=> b!6615857 (=> res!2712869 e!4002411)))

(assert (=> b!6615857 (= res!2712869 (or ((_ is Concat!25334) (regOne!33490 r!7292)) ((_ is Star!16489) (regOne!33490 r!7292)) (not ((_ is EmptyExpr!16489) (regOne!33490 r!7292)))))))

(declare-fun setElem!45216 () Context!11746)

(declare-fun setNonEmpty!45216 () Bool)

(declare-fun tp!1822140 () Bool)

(assert (=> setNonEmpty!45216 (= setRes!45216 (and tp!1822140 (inv!84469 setElem!45216) e!4002406))))

(declare-fun setRest!45216 () (InoxSet Context!11746))

(assert (=> setNonEmpty!45216 (= z!1189 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) setElem!45216 true) setRest!45216))))

(declare-fun b!6615858 () Bool)

(declare-fun res!2712865 () Bool)

(assert (=> b!6615858 (=> res!2712865 e!4002412)))

(declare-fun generalisedConcat!2086 (List!65766) Regex!16489)

(assert (=> b!6615858 (= res!2712865 (not (= r!7292 (generalisedConcat!2086 (exprs!6373 (h!72091 zl!343))))))))

(assert (= (and start!646690 res!2712874) b!6615828))

(assert (= (and b!6615828 res!2712868) b!6615843))

(assert (= (and b!6615843 res!2712870) b!6615829))

(assert (= (and b!6615829 (not res!2712858)) b!6615846))

(assert (= (and b!6615846 (not res!2712860)) b!6615858))

(assert (= (and b!6615858 (not res!2712865)) b!6615844))

(assert (= (and b!6615844 (not res!2712866)) b!6615851))

(assert (= (and b!6615851 (not res!2712861)) b!6615842))

(assert (= (and b!6615842 (not res!2712875)) b!6615856))

(assert (= (and b!6615856 (not res!2712863)) b!6615848))

(assert (= (and b!6615848 (not res!2712859)) b!6615850))

(assert (= (and b!6615850 c!1219497) b!6615838))

(assert (= (and b!6615850 (not c!1219497)) b!6615832))

(assert (= (and b!6615838 (not res!2712877)) b!6615853))

(assert (= (and b!6615850 (not res!2712867)) b!6615836))

(assert (= (and b!6615836 res!2712876) b!6615839))

(assert (= (and b!6615836 (not res!2712872)) b!6615857))

(assert (= (and b!6615857 (not res!2712869)) b!6615831))

(assert (= (and b!6615831 (not res!2712878)) b!6615833))

(assert (= (and b!6615833 (not res!2712873)) b!6615845))

(assert (= (and b!6615845 (not res!2712864)) b!6615834))

(assert (= (and b!6615834 (not res!2712862)) b!6615854))

(assert (= (and b!6615854 (not res!2712871)) b!6615849))

(assert (= (and start!646690 ((_ is ElementMatch!16489) r!7292)) b!6615835))

(assert (= (and start!646690 ((_ is Concat!25334) r!7292)) b!6615855))

(assert (= (and start!646690 ((_ is Star!16489) r!7292)) b!6615852))

(assert (= (and start!646690 ((_ is Union!16489) r!7292)) b!6615840))

(assert (= (and start!646690 condSetEmpty!45216) setIsEmpty!45216))

(assert (= (and start!646690 (not condSetEmpty!45216)) setNonEmpty!45216))

(assert (= setNonEmpty!45216 b!6615830))

(assert (= b!6615841 b!6615847))

(assert (= (and start!646690 ((_ is Cons!65643) zl!343)) b!6615841))

(assert (= (and start!646690 ((_ is Cons!65644) s!2326)) b!6615837))

(declare-fun m!7388752 () Bool)

(assert (=> b!6615853 m!7388752))

(declare-fun m!7388754 () Bool)

(assert (=> b!6615828 m!7388754))

(declare-fun m!7388756 () Bool)

(assert (=> b!6615854 m!7388756))

(assert (=> b!6615854 m!7388752))

(declare-fun m!7388758 () Bool)

(assert (=> b!6615854 m!7388758))

(declare-fun m!7388760 () Bool)

(assert (=> b!6615854 m!7388760))

(declare-fun m!7388762 () Bool)

(assert (=> b!6615829 m!7388762))

(declare-fun m!7388764 () Bool)

(assert (=> b!6615829 m!7388764))

(declare-fun m!7388766 () Bool)

(assert (=> b!6615829 m!7388766))

(declare-fun m!7388768 () Bool)

(assert (=> b!6615834 m!7388768))

(declare-fun m!7388770 () Bool)

(assert (=> b!6615849 m!7388770))

(declare-fun m!7388772 () Bool)

(assert (=> b!6615848 m!7388772))

(declare-fun m!7388774 () Bool)

(assert (=> b!6615833 m!7388774))

(declare-fun m!7388776 () Bool)

(assert (=> b!6615833 m!7388776))

(declare-fun m!7388778 () Bool)

(assert (=> b!6615833 m!7388778))

(declare-fun m!7388780 () Bool)

(assert (=> b!6615833 m!7388780))

(declare-fun m!7388782 () Bool)

(assert (=> b!6615833 m!7388782))

(declare-fun m!7388784 () Bool)

(assert (=> b!6615833 m!7388784))

(declare-fun m!7388786 () Bool)

(assert (=> setNonEmpty!45216 m!7388786))

(declare-fun m!7388788 () Bool)

(assert (=> b!6615856 m!7388788))

(declare-fun m!7388790 () Bool)

(assert (=> b!6615856 m!7388790))

(declare-fun m!7388792 () Bool)

(assert (=> b!6615856 m!7388792))

(declare-fun m!7388794 () Bool)

(assert (=> b!6615856 m!7388794))

(assert (=> b!6615856 m!7388788))

(declare-fun m!7388796 () Bool)

(assert (=> b!6615856 m!7388796))

(assert (=> b!6615856 m!7388790))

(declare-fun m!7388798 () Bool)

(assert (=> b!6615856 m!7388798))

(declare-fun m!7388800 () Bool)

(assert (=> b!6615846 m!7388800))

(declare-fun m!7388802 () Bool)

(assert (=> b!6615850 m!7388802))

(declare-fun m!7388804 () Bool)

(assert (=> b!6615850 m!7388804))

(declare-fun m!7388806 () Bool)

(assert (=> b!6615850 m!7388806))

(declare-fun m!7388808 () Bool)

(assert (=> b!6615850 m!7388808))

(declare-fun m!7388810 () Bool)

(assert (=> b!6615850 m!7388810))

(declare-fun m!7388812 () Bool)

(assert (=> b!6615850 m!7388812))

(declare-fun m!7388814 () Bool)

(assert (=> b!6615850 m!7388814))

(declare-fun m!7388816 () Bool)

(assert (=> b!6615845 m!7388816))

(assert (=> b!6615845 m!7388804))

(declare-fun m!7388818 () Bool)

(assert (=> b!6615845 m!7388818))

(declare-fun m!7388820 () Bool)

(assert (=> b!6615845 m!7388820))

(declare-fun m!7388822 () Bool)

(assert (=> b!6615845 m!7388822))

(declare-fun m!7388824 () Bool)

(assert (=> b!6615851 m!7388824))

(assert (=> b!6615851 m!7388824))

(declare-fun m!7388826 () Bool)

(assert (=> b!6615851 m!7388826))

(declare-fun m!7388828 () Bool)

(assert (=> b!6615843 m!7388828))

(declare-fun m!7388830 () Bool)

(assert (=> b!6615839 m!7388830))

(assert (=> b!6615838 m!7388760))

(declare-fun m!7388832 () Bool)

(assert (=> b!6615838 m!7388832))

(declare-fun m!7388834 () Bool)

(assert (=> b!6615838 m!7388834))

(declare-fun m!7388836 () Bool)

(assert (=> b!6615858 m!7388836))

(assert (=> b!6615831 m!7388832))

(declare-fun m!7388838 () Bool)

(assert (=> b!6615831 m!7388838))

(declare-fun m!7388840 () Bool)

(assert (=> start!646690 m!7388840))

(declare-fun m!7388842 () Bool)

(assert (=> b!6615841 m!7388842))

(check-sat (not b!6615828) (not b!6615849) (not b!6615848) (not b!6615829) (not b!6615854) (not b!6615858) tp_is_empty!42231 (not b!6615851) (not setNonEmpty!45216) (not b!6615845) (not b!6615847) (not start!646690) (not b!6615855) (not b!6615843) (not b!6615830) (not b!6615833) (not b!6615838) (not b!6615834) (not b!6615846) (not b!6615853) (not b!6615856) (not b!6615840) (not b!6615850) (not b!6615837) (not b!6615831) (not b!6615841) (not b!6615852) (not b!6615839))
(check-sat)
(get-model)

(declare-fun b!6615913 () Bool)

(declare-fun res!2712910 () Bool)

(declare-fun e!4002455 () Bool)

(assert (=> b!6615913 (=> (not res!2712910) (not e!4002455))))

(declare-fun lt!2417498 () Option!16380)

(declare-fun get!22814 (Option!16380) tuple2!66936)

(assert (=> b!6615913 (= res!2712910 (matchR!8672 (regTwo!33490 r!7292) (_2!36771 (get!22814 lt!2417498))))))

(declare-fun b!6615914 () Bool)

(declare-fun res!2712911 () Bool)

(assert (=> b!6615914 (=> (not res!2712911) (not e!4002455))))

(assert (=> b!6615914 (= res!2712911 (matchR!8672 (regOne!33490 r!7292) (_1!36771 (get!22814 lt!2417498))))))

(declare-fun b!6615915 () Bool)

(declare-fun e!4002453 () Option!16380)

(assert (=> b!6615915 (= e!4002453 None!16379)))

(declare-fun d!2073880 () Bool)

(declare-fun e!4002454 () Bool)

(assert (=> d!2073880 e!4002454))

(declare-fun res!2712908 () Bool)

(assert (=> d!2073880 (=> res!2712908 e!4002454)))

(assert (=> d!2073880 (= res!2712908 e!4002455)))

(declare-fun res!2712907 () Bool)

(assert (=> d!2073880 (=> (not res!2712907) (not e!4002455))))

(assert (=> d!2073880 (= res!2712907 (isDefined!13083 lt!2417498))))

(declare-fun e!4002452 () Option!16380)

(assert (=> d!2073880 (= lt!2417498 e!4002452)))

(declare-fun c!1219510 () Bool)

(declare-fun e!4002451 () Bool)

(assert (=> d!2073880 (= c!1219510 e!4002451)))

(declare-fun res!2712909 () Bool)

(assert (=> d!2073880 (=> (not res!2712909) (not e!4002451))))

(assert (=> d!2073880 (= res!2712909 (matchR!8672 (regOne!33490 r!7292) Nil!65644))))

(assert (=> d!2073880 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2073880 (= (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326) lt!2417498)))

(declare-fun b!6615916 () Bool)

(declare-fun ++!14638 (List!65768 List!65768) List!65768)

(assert (=> b!6615916 (= e!4002455 (= (++!14638 (_1!36771 (get!22814 lt!2417498)) (_2!36771 (get!22814 lt!2417498))) s!2326))))

(declare-fun b!6615917 () Bool)

(assert (=> b!6615917 (= e!4002454 (not (isDefined!13083 lt!2417498)))))

(declare-fun b!6615918 () Bool)

(assert (=> b!6615918 (= e!4002451 (matchR!8672 (regTwo!33490 r!7292) s!2326))))

(declare-fun b!6615919 () Bool)

(assert (=> b!6615919 (= e!4002452 (Some!16379 (tuple2!66937 Nil!65644 s!2326)))))

(declare-fun b!6615920 () Bool)

(assert (=> b!6615920 (= e!4002452 e!4002453)))

(declare-fun c!1219509 () Bool)

(assert (=> b!6615920 (= c!1219509 ((_ is Nil!65644) s!2326))))

(declare-fun b!6615921 () Bool)

(declare-fun lt!2417499 () Unit!159311)

(declare-fun lt!2417500 () Unit!159311)

(assert (=> b!6615921 (= lt!2417499 lt!2417500)))

(assert (=> b!6615921 (= (++!14638 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2627 (List!65768 C!33248 List!65768 List!65768) Unit!159311)

(assert (=> b!6615921 (= lt!2417500 (lemmaMoveElementToOtherListKeepsConcatEq!2627 Nil!65644 (h!72092 s!2326) (t!379424 s!2326) s!2326))))

(assert (=> b!6615921 (= e!4002453 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326) s!2326))))

(assert (= (and d!2073880 res!2712909) b!6615918))

(assert (= (and d!2073880 c!1219510) b!6615919))

(assert (= (and d!2073880 (not c!1219510)) b!6615920))

(assert (= (and b!6615920 c!1219509) b!6615915))

(assert (= (and b!6615920 (not c!1219509)) b!6615921))

(assert (= (and d!2073880 res!2712907) b!6615914))

(assert (= (and b!6615914 res!2712911) b!6615913))

(assert (= (and b!6615913 res!2712910) b!6615916))

(assert (= (and d!2073880 (not res!2712908)) b!6615917))

(declare-fun m!7388856 () Bool)

(assert (=> b!6615921 m!7388856))

(assert (=> b!6615921 m!7388856))

(declare-fun m!7388858 () Bool)

(assert (=> b!6615921 m!7388858))

(declare-fun m!7388860 () Bool)

(assert (=> b!6615921 m!7388860))

(assert (=> b!6615921 m!7388856))

(declare-fun m!7388862 () Bool)

(assert (=> b!6615921 m!7388862))

(declare-fun m!7388864 () Bool)

(assert (=> b!6615913 m!7388864))

(declare-fun m!7388866 () Bool)

(assert (=> b!6615913 m!7388866))

(assert (=> b!6615918 m!7388774))

(assert (=> b!6615914 m!7388864))

(declare-fun m!7388868 () Bool)

(assert (=> b!6615914 m!7388868))

(declare-fun m!7388870 () Bool)

(assert (=> b!6615917 m!7388870))

(assert (=> b!6615916 m!7388864))

(declare-fun m!7388872 () Bool)

(assert (=> b!6615916 m!7388872))

(assert (=> d!2073880 m!7388870))

(declare-fun m!7388874 () Bool)

(assert (=> d!2073880 m!7388874))

(declare-fun m!7388876 () Bool)

(assert (=> d!2073880 m!7388876))

(assert (=> b!6615856 d!2073880))

(declare-fun d!2073888 () Bool)

(declare-fun choose!49438 (Int) Bool)

(assert (=> d!2073888 (= (Exists!3559 lambda!369578) (choose!49438 lambda!369578))))

(declare-fun bs!1696218 () Bool)

(assert (= bs!1696218 d!2073888))

(declare-fun m!7388880 () Bool)

(assert (=> bs!1696218 m!7388880))

(assert (=> b!6615856 d!2073888))

(declare-fun d!2073892 () Bool)

(assert (=> d!2073892 (= (Exists!3559 lambda!369577) (choose!49438 lambda!369577))))

(declare-fun bs!1696219 () Bool)

(assert (= bs!1696219 d!2073892))

(declare-fun m!7388882 () Bool)

(assert (=> bs!1696219 m!7388882))

(assert (=> b!6615856 d!2073892))

(declare-fun bs!1696221 () Bool)

(declare-fun d!2073894 () Bool)

(assert (= bs!1696221 (and d!2073894 b!6615856)))

(declare-fun lambda!369586 () Int)

(assert (=> bs!1696221 (= lambda!369586 lambda!369577)))

(assert (=> bs!1696221 (not (= lambda!369586 lambda!369578))))

(assert (=> d!2073894 true))

(assert (=> d!2073894 true))

(assert (=> d!2073894 true))

(assert (=> d!2073894 (= (isDefined!13083 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326)) (Exists!3559 lambda!369586))))

(declare-fun lt!2417506 () Unit!159311)

(declare-fun choose!49439 (Regex!16489 Regex!16489 List!65768) Unit!159311)

(assert (=> d!2073894 (= lt!2417506 (choose!49439 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326))))

(assert (=> d!2073894 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2073894 (= (lemmaFindConcatSeparationEquivalentToExists!2558 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326) lt!2417506)))

(declare-fun bs!1696224 () Bool)

(assert (= bs!1696224 d!2073894))

(declare-fun m!7388902 () Bool)

(assert (=> bs!1696224 m!7388902))

(assert (=> bs!1696224 m!7388790))

(assert (=> bs!1696224 m!7388792))

(assert (=> bs!1696224 m!7388790))

(declare-fun m!7388904 () Bool)

(assert (=> bs!1696224 m!7388904))

(assert (=> bs!1696224 m!7388876))

(assert (=> b!6615856 d!2073894))

(declare-fun bs!1696234 () Bool)

(declare-fun d!2073900 () Bool)

(assert (= bs!1696234 (and d!2073900 b!6615856)))

(declare-fun lambda!369595 () Int)

(assert (=> bs!1696234 (= lambda!369595 lambda!369577)))

(assert (=> bs!1696234 (not (= lambda!369595 lambda!369578))))

(declare-fun bs!1696235 () Bool)

(assert (= bs!1696235 (and d!2073900 d!2073894)))

(assert (=> bs!1696235 (= lambda!369595 lambda!369586)))

(assert (=> d!2073900 true))

(assert (=> d!2073900 true))

(assert (=> d!2073900 true))

(declare-fun lambda!369598 () Int)

(assert (=> bs!1696234 (not (= lambda!369598 lambda!369577))))

(assert (=> bs!1696234 (= lambda!369598 lambda!369578)))

(assert (=> bs!1696235 (not (= lambda!369598 lambda!369586))))

(declare-fun bs!1696236 () Bool)

(assert (= bs!1696236 d!2073900))

(assert (=> bs!1696236 (not (= lambda!369598 lambda!369595))))

(assert (=> d!2073900 true))

(assert (=> d!2073900 true))

(assert (=> d!2073900 true))

(assert (=> d!2073900 (= (Exists!3559 lambda!369595) (Exists!3559 lambda!369598))))

(declare-fun lt!2417517 () Unit!159311)

(declare-fun choose!49440 (Regex!16489 Regex!16489 List!65768) Unit!159311)

(assert (=> d!2073900 (= lt!2417517 (choose!49440 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326))))

(assert (=> d!2073900 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2073900 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2096 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326) lt!2417517)))

(declare-fun m!7388946 () Bool)

(assert (=> bs!1696236 m!7388946))

(declare-fun m!7388948 () Bool)

(assert (=> bs!1696236 m!7388948))

(declare-fun m!7388950 () Bool)

(assert (=> bs!1696236 m!7388950))

(assert (=> bs!1696236 m!7388876))

(assert (=> b!6615856 d!2073900))

(declare-fun d!2073914 () Bool)

(declare-fun isEmpty!37930 (Option!16380) Bool)

(assert (=> d!2073914 (= (isDefined!13083 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326)) (not (isEmpty!37930 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326))))))

(declare-fun bs!1696237 () Bool)

(assert (= bs!1696237 d!2073914))

(assert (=> bs!1696237 m!7388790))

(declare-fun m!7388952 () Bool)

(assert (=> bs!1696237 m!7388952))

(assert (=> b!6615856 d!2073914))

(declare-fun d!2073916 () Bool)

(assert (=> d!2073916 (= (isEmpty!37927 (t!379423 zl!343)) ((_ is Nil!65643) (t!379423 zl!343)))))

(assert (=> b!6615846 d!2073916))

(declare-fun d!2073920 () Bool)

(declare-fun nullableFct!2403 (Regex!16489) Bool)

(assert (=> d!2073920 (= (nullable!6482 (regOne!33490 (regOne!33490 r!7292))) (nullableFct!2403 (regOne!33490 (regOne!33490 r!7292))))))

(declare-fun bs!1696238 () Bool)

(assert (= bs!1696238 d!2073920))

(declare-fun m!7388974 () Bool)

(assert (=> bs!1696238 m!7388974))

(assert (=> b!6615839 d!2073920))

(declare-fun d!2073922 () Bool)

(declare-fun e!4002553 () Bool)

(assert (=> d!2073922 e!4002553))

(declare-fun res!2712989 () Bool)

(assert (=> d!2073922 (=> (not res!2712989) (not e!4002553))))

(declare-fun lt!2417526 () List!65767)

(declare-fun noDuplicate!2290 (List!65767) Bool)

(assert (=> d!2073922 (= res!2712989 (noDuplicate!2290 lt!2417526))))

(declare-fun choose!49441 ((InoxSet Context!11746)) List!65767)

(assert (=> d!2073922 (= lt!2417526 (choose!49441 z!1189))))

(assert (=> d!2073922 (= (toList!10273 z!1189) lt!2417526)))

(declare-fun b!6616095 () Bool)

(declare-fun content!12666 (List!65767) (InoxSet Context!11746))

(assert (=> b!6616095 (= e!4002553 (= (content!12666 lt!2417526) z!1189))))

(assert (= (and d!2073922 res!2712989) b!6616095))

(declare-fun m!7388988 () Bool)

(assert (=> d!2073922 m!7388988))

(declare-fun m!7388990 () Bool)

(assert (=> d!2073922 m!7388990))

(declare-fun m!7388992 () Bool)

(assert (=> b!6616095 m!7388992))

(assert (=> b!6615828 d!2073922))

(declare-fun b!6616150 () Bool)

(declare-fun e!4002588 () Regex!16489)

(assert (=> b!6616150 (= e!4002588 EmptyExpr!16489)))

(declare-fun b!6616151 () Bool)

(declare-fun e!4002584 () Bool)

(declare-fun e!4002586 () Bool)

(assert (=> b!6616151 (= e!4002584 e!4002586)))

(declare-fun c!1219584 () Bool)

(declare-fun tail!12506 (List!65766) List!65766)

(assert (=> b!6616151 (= c!1219584 (isEmpty!37928 (tail!12506 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun d!2073930 () Bool)

(declare-fun e!4002585 () Bool)

(assert (=> d!2073930 e!4002585))

(declare-fun res!2713001 () Bool)

(assert (=> d!2073930 (=> (not res!2713001) (not e!4002585))))

(declare-fun lt!2417538 () Regex!16489)

(assert (=> d!2073930 (= res!2713001 (validRegex!8225 lt!2417538))))

(declare-fun e!4002590 () Regex!16489)

(assert (=> d!2073930 (= lt!2417538 e!4002590)))

(declare-fun c!1219581 () Bool)

(declare-fun e!4002587 () Bool)

(assert (=> d!2073930 (= c!1219581 e!4002587)))

(declare-fun res!2713000 () Bool)

(assert (=> d!2073930 (=> (not res!2713000) (not e!4002587))))

(assert (=> d!2073930 (= res!2713000 ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343))))))

(declare-fun lambda!369611 () Int)

(declare-fun forall!15685 (List!65766 Int) Bool)

(assert (=> d!2073930 (forall!15685 (exprs!6373 (h!72091 zl!343)) lambda!369611)))

(assert (=> d!2073930 (= (generalisedConcat!2086 (exprs!6373 (h!72091 zl!343))) lt!2417538)))

(declare-fun b!6616152 () Bool)

(declare-fun head!13421 (List!65766) Regex!16489)

(assert (=> b!6616152 (= e!4002586 (= lt!2417538 (head!13421 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6616153 () Bool)

(assert (=> b!6616153 (= e!4002590 (h!72090 (exprs!6373 (h!72091 zl!343))))))

(declare-fun b!6616154 () Bool)

(assert (=> b!6616154 (= e!4002587 (isEmpty!37928 (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6616155 () Bool)

(assert (=> b!6616155 (= e!4002585 e!4002584)))

(declare-fun c!1219582 () Bool)

(assert (=> b!6616155 (= c!1219582 (isEmpty!37928 (exprs!6373 (h!72091 zl!343))))))

(declare-fun b!6616156 () Bool)

(declare-fun isConcat!1385 (Regex!16489) Bool)

(assert (=> b!6616156 (= e!4002586 (isConcat!1385 lt!2417538))))

(declare-fun b!6616157 () Bool)

(assert (=> b!6616157 (= e!4002588 (Concat!25334 (h!72090 (exprs!6373 (h!72091 zl!343))) (generalisedConcat!2086 (t!379422 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6616158 () Bool)

(declare-fun isEmptyExpr!1862 (Regex!16489) Bool)

(assert (=> b!6616158 (= e!4002584 (isEmptyExpr!1862 lt!2417538))))

(declare-fun b!6616159 () Bool)

(assert (=> b!6616159 (= e!4002590 e!4002588)))

(declare-fun c!1219579 () Bool)

(assert (=> b!6616159 (= c!1219579 ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343))))))

(assert (= (and d!2073930 res!2713000) b!6616154))

(assert (= (and d!2073930 c!1219581) b!6616153))

(assert (= (and d!2073930 (not c!1219581)) b!6616159))

(assert (= (and b!6616159 c!1219579) b!6616157))

(assert (= (and b!6616159 (not c!1219579)) b!6616150))

(assert (= (and d!2073930 res!2713001) b!6616155))

(assert (= (and b!6616155 c!1219582) b!6616158))

(assert (= (and b!6616155 (not c!1219582)) b!6616151))

(assert (= (and b!6616151 c!1219584) b!6616152))

(assert (= (and b!6616151 (not c!1219584)) b!6616156))

(declare-fun m!7389026 () Bool)

(assert (=> d!2073930 m!7389026))

(declare-fun m!7389028 () Bool)

(assert (=> d!2073930 m!7389028))

(declare-fun m!7389030 () Bool)

(assert (=> b!6616157 m!7389030))

(assert (=> b!6616154 m!7388772))

(declare-fun m!7389032 () Bool)

(assert (=> b!6616158 m!7389032))

(declare-fun m!7389034 () Bool)

(assert (=> b!6616152 m!7389034))

(declare-fun m!7389036 () Bool)

(assert (=> b!6616156 m!7389036))

(declare-fun m!7389038 () Bool)

(assert (=> b!6616155 m!7389038))

(declare-fun m!7389040 () Bool)

(assert (=> b!6616151 m!7389040))

(assert (=> b!6616151 m!7389040))

(declare-fun m!7389042 () Bool)

(assert (=> b!6616151 m!7389042))

(assert (=> b!6615858 d!2073930))

(declare-fun bs!1696282 () Bool)

(declare-fun b!6616281 () Bool)

(assert (= bs!1696282 (and b!6616281 d!2073894)))

(declare-fun lambda!369624 () Int)

(assert (=> bs!1696282 (not (= lambda!369624 lambda!369586))))

(declare-fun bs!1696283 () Bool)

(assert (= bs!1696283 (and b!6616281 b!6615856)))

(assert (=> bs!1696283 (not (= lambda!369624 lambda!369578))))

(declare-fun bs!1696284 () Bool)

(assert (= bs!1696284 (and b!6616281 d!2073900)))

(assert (=> bs!1696284 (not (= lambda!369624 lambda!369595))))

(assert (=> bs!1696284 (not (= lambda!369624 lambda!369598))))

(assert (=> bs!1696283 (not (= lambda!369624 lambda!369577))))

(assert (=> b!6616281 true))

(assert (=> b!6616281 true))

(declare-fun bs!1696285 () Bool)

(declare-fun b!6616273 () Bool)

(assert (= bs!1696285 (and b!6616273 b!6616281)))

(declare-fun lambda!369625 () Int)

(assert (=> bs!1696285 (not (= lambda!369625 lambda!369624))))

(declare-fun bs!1696286 () Bool)

(assert (= bs!1696286 (and b!6616273 d!2073894)))

(assert (=> bs!1696286 (not (= lambda!369625 lambda!369586))))

(declare-fun bs!1696287 () Bool)

(assert (= bs!1696287 (and b!6616273 b!6615856)))

(assert (=> bs!1696287 (= lambda!369625 lambda!369578)))

(declare-fun bs!1696288 () Bool)

(assert (= bs!1696288 (and b!6616273 d!2073900)))

(assert (=> bs!1696288 (not (= lambda!369625 lambda!369595))))

(assert (=> bs!1696288 (= lambda!369625 lambda!369598)))

(assert (=> bs!1696287 (not (= lambda!369625 lambda!369577))))

(assert (=> b!6616273 true))

(assert (=> b!6616273 true))

(declare-fun e!4002661 () Bool)

(declare-fun call!579725 () Bool)

(assert (=> b!6616273 (= e!4002661 call!579725)))

(declare-fun d!2073946 () Bool)

(declare-fun c!1219628 () Bool)

(assert (=> d!2073946 (= c!1219628 ((_ is EmptyExpr!16489) r!7292))))

(declare-fun e!4002659 () Bool)

(assert (=> d!2073946 (= (matchRSpec!3590 r!7292 s!2326) e!4002659)))

(declare-fun b!6616274 () Bool)

(declare-fun e!4002657 () Bool)

(assert (=> b!6616274 (= e!4002659 e!4002657)))

(declare-fun res!2713039 () Bool)

(assert (=> b!6616274 (= res!2713039 (not ((_ is EmptyLang!16489) r!7292)))))

(assert (=> b!6616274 (=> (not res!2713039) (not e!4002657))))

(declare-fun b!6616275 () Bool)

(declare-fun c!1219627 () Bool)

(assert (=> b!6616275 (= c!1219627 ((_ is Union!16489) r!7292))))

(declare-fun e!4002658 () Bool)

(declare-fun e!4002660 () Bool)

(assert (=> b!6616275 (= e!4002658 e!4002660)))

(declare-fun b!6616276 () Bool)

(declare-fun call!579726 () Bool)

(assert (=> b!6616276 (= e!4002659 call!579726)))

(declare-fun b!6616277 () Bool)

(declare-fun e!4002655 () Bool)

(assert (=> b!6616277 (= e!4002660 e!4002655)))

(declare-fun res!2713037 () Bool)

(assert (=> b!6616277 (= res!2713037 (matchRSpec!3590 (regOne!33491 r!7292) s!2326))))

(assert (=> b!6616277 (=> res!2713037 e!4002655)))

(declare-fun b!6616278 () Bool)

(declare-fun c!1219625 () Bool)

(assert (=> b!6616278 (= c!1219625 ((_ is ElementMatch!16489) r!7292))))

(assert (=> b!6616278 (= e!4002657 e!4002658)))

(declare-fun b!6616279 () Bool)

(declare-fun res!2713038 () Bool)

(declare-fun e!4002656 () Bool)

(assert (=> b!6616279 (=> res!2713038 e!4002656)))

(assert (=> b!6616279 (= res!2713038 call!579726)))

(assert (=> b!6616279 (= e!4002661 e!4002656)))

(declare-fun bm!579720 () Bool)

(declare-fun isEmpty!37931 (List!65768) Bool)

(assert (=> bm!579720 (= call!579726 (isEmpty!37931 s!2326))))

(declare-fun b!6616280 () Bool)

(assert (=> b!6616280 (= e!4002658 (= s!2326 (Cons!65644 (c!1219498 r!7292) Nil!65644)))))

(assert (=> b!6616281 (= e!4002656 call!579725)))

(declare-fun b!6616282 () Bool)

(assert (=> b!6616282 (= e!4002655 (matchRSpec!3590 (regTwo!33491 r!7292) s!2326))))

(declare-fun c!1219626 () Bool)

(declare-fun bm!579721 () Bool)

(assert (=> bm!579721 (= call!579725 (Exists!3559 (ite c!1219626 lambda!369624 lambda!369625)))))

(declare-fun b!6616283 () Bool)

(assert (=> b!6616283 (= e!4002660 e!4002661)))

(assert (=> b!6616283 (= c!1219626 ((_ is Star!16489) r!7292))))

(assert (= (and d!2073946 c!1219628) b!6616276))

(assert (= (and d!2073946 (not c!1219628)) b!6616274))

(assert (= (and b!6616274 res!2713039) b!6616278))

(assert (= (and b!6616278 c!1219625) b!6616280))

(assert (= (and b!6616278 (not c!1219625)) b!6616275))

(assert (= (and b!6616275 c!1219627) b!6616277))

(assert (= (and b!6616275 (not c!1219627)) b!6616283))

(assert (= (and b!6616277 (not res!2713037)) b!6616282))

(assert (= (and b!6616283 c!1219626) b!6616279))

(assert (= (and b!6616283 (not c!1219626)) b!6616273))

(assert (= (and b!6616279 (not res!2713038)) b!6616281))

(assert (= (or b!6616281 b!6616273) bm!579721))

(assert (= (or b!6616276 b!6616279) bm!579720))

(declare-fun m!7389098 () Bool)

(assert (=> b!6616277 m!7389098))

(declare-fun m!7389100 () Bool)

(assert (=> bm!579720 m!7389100))

(declare-fun m!7389102 () Bool)

(assert (=> b!6616282 m!7389102))

(declare-fun m!7389104 () Bool)

(assert (=> bm!579721 m!7389104))

(assert (=> b!6615829 d!2073946))

(declare-fun b!6616343 () Bool)

(declare-fun e!4002698 () Bool)

(declare-fun e!4002697 () Bool)

(assert (=> b!6616343 (= e!4002698 e!4002697)))

(declare-fun res!2713078 () Bool)

(assert (=> b!6616343 (=> res!2713078 e!4002697)))

(declare-fun call!579729 () Bool)

(assert (=> b!6616343 (= res!2713078 call!579729)))

(declare-fun b!6616344 () Bool)

(declare-fun res!2713077 () Bool)

(declare-fun e!4002695 () Bool)

(assert (=> b!6616344 (=> (not res!2713077) (not e!4002695))))

(assert (=> b!6616344 (= res!2713077 (not call!579729))))

(declare-fun b!6616345 () Bool)

(declare-fun e!4002696 () Bool)

(declare-fun lt!2417559 () Bool)

(assert (=> b!6616345 (= e!4002696 (= lt!2417559 call!579729))))

(declare-fun b!6616346 () Bool)

(declare-fun e!4002693 () Bool)

(assert (=> b!6616346 (= e!4002693 (not lt!2417559))))

(declare-fun b!6616347 () Bool)

(declare-fun res!2713082 () Bool)

(assert (=> b!6616347 (=> (not res!2713082) (not e!4002695))))

(declare-fun tail!12507 (List!65768) List!65768)

(assert (=> b!6616347 (= res!2713082 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6616348 () Bool)

(assert (=> b!6616348 (= e!4002696 e!4002693)))

(declare-fun c!1219643 () Bool)

(assert (=> b!6616348 (= c!1219643 ((_ is EmptyLang!16489) r!7292))))

(declare-fun b!6616349 () Bool)

(declare-fun res!2713079 () Bool)

(declare-fun e!4002699 () Bool)

(assert (=> b!6616349 (=> res!2713079 e!4002699)))

(assert (=> b!6616349 (= res!2713079 e!4002695)))

(declare-fun res!2713075 () Bool)

(assert (=> b!6616349 (=> (not res!2713075) (not e!4002695))))

(assert (=> b!6616349 (= res!2713075 lt!2417559)))

(declare-fun bm!579724 () Bool)

(assert (=> bm!579724 (= call!579729 (isEmpty!37931 s!2326))))

(declare-fun b!6616350 () Bool)

(declare-fun e!4002694 () Bool)

(declare-fun derivativeStep!5169 (Regex!16489 C!33248) Regex!16489)

(declare-fun head!13422 (List!65768) C!33248)

(assert (=> b!6616350 (= e!4002694 (matchR!8672 (derivativeStep!5169 r!7292 (head!13422 s!2326)) (tail!12507 s!2326)))))

(declare-fun d!2073976 () Bool)

(assert (=> d!2073976 e!4002696))

(declare-fun c!1219641 () Bool)

(assert (=> d!2073976 (= c!1219641 ((_ is EmptyExpr!16489) r!7292))))

(assert (=> d!2073976 (= lt!2417559 e!4002694)))

(declare-fun c!1219642 () Bool)

(assert (=> d!2073976 (= c!1219642 (isEmpty!37931 s!2326))))

(assert (=> d!2073976 (validRegex!8225 r!7292)))

(assert (=> d!2073976 (= (matchR!8672 r!7292 s!2326) lt!2417559)))

(declare-fun b!6616351 () Bool)

(declare-fun res!2713076 () Bool)

(assert (=> b!6616351 (=> res!2713076 e!4002697)))

(assert (=> b!6616351 (= res!2713076 (not (isEmpty!37931 (tail!12507 s!2326))))))

(declare-fun b!6616352 () Bool)

(assert (=> b!6616352 (= e!4002697 (not (= (head!13422 s!2326) (c!1219498 r!7292))))))

(declare-fun b!6616353 () Bool)

(assert (=> b!6616353 (= e!4002699 e!4002698)))

(declare-fun res!2713080 () Bool)

(assert (=> b!6616353 (=> (not res!2713080) (not e!4002698))))

(assert (=> b!6616353 (= res!2713080 (not lt!2417559))))

(declare-fun b!6616354 () Bool)

(assert (=> b!6616354 (= e!4002694 (nullable!6482 r!7292))))

(declare-fun b!6616355 () Bool)

(declare-fun res!2713081 () Bool)

(assert (=> b!6616355 (=> res!2713081 e!4002699)))

(assert (=> b!6616355 (= res!2713081 (not ((_ is ElementMatch!16489) r!7292)))))

(assert (=> b!6616355 (= e!4002693 e!4002699)))

(declare-fun b!6616356 () Bool)

(assert (=> b!6616356 (= e!4002695 (= (head!13422 s!2326) (c!1219498 r!7292)))))

(assert (= (and d!2073976 c!1219642) b!6616354))

(assert (= (and d!2073976 (not c!1219642)) b!6616350))

(assert (= (and d!2073976 c!1219641) b!6616345))

(assert (= (and d!2073976 (not c!1219641)) b!6616348))

(assert (= (and b!6616348 c!1219643) b!6616346))

(assert (= (and b!6616348 (not c!1219643)) b!6616355))

(assert (= (and b!6616355 (not res!2713081)) b!6616349))

(assert (= (and b!6616349 res!2713075) b!6616344))

(assert (= (and b!6616344 res!2713077) b!6616347))

(assert (= (and b!6616347 res!2713082) b!6616356))

(assert (= (and b!6616349 (not res!2713079)) b!6616353))

(assert (= (and b!6616353 res!2713080) b!6616343))

(assert (= (and b!6616343 (not res!2713078)) b!6616351))

(assert (= (and b!6616351 (not res!2713076)) b!6616352))

(assert (= (or b!6616345 b!6616343 b!6616344) bm!579724))

(declare-fun m!7389134 () Bool)

(assert (=> b!6616356 m!7389134))

(assert (=> bm!579724 m!7389100))

(declare-fun m!7389136 () Bool)

(assert (=> b!6616351 m!7389136))

(assert (=> b!6616351 m!7389136))

(declare-fun m!7389138 () Bool)

(assert (=> b!6616351 m!7389138))

(assert (=> b!6616347 m!7389136))

(assert (=> b!6616347 m!7389136))

(assert (=> b!6616347 m!7389138))

(declare-fun m!7389140 () Bool)

(assert (=> b!6616354 m!7389140))

(assert (=> b!6616352 m!7389134))

(assert (=> b!6616350 m!7389134))

(assert (=> b!6616350 m!7389134))

(declare-fun m!7389142 () Bool)

(assert (=> b!6616350 m!7389142))

(assert (=> b!6616350 m!7389136))

(assert (=> b!6616350 m!7389142))

(assert (=> b!6616350 m!7389136))

(declare-fun m!7389144 () Bool)

(assert (=> b!6616350 m!7389144))

(assert (=> d!2073976 m!7389100))

(assert (=> d!2073976 m!7388840))

(assert (=> b!6615829 d!2073976))

(declare-fun d!2073986 () Bool)

(assert (=> d!2073986 (= (matchR!8672 r!7292 s!2326) (matchRSpec!3590 r!7292 s!2326))))

(declare-fun lt!2417564 () Unit!159311)

(declare-fun choose!49445 (Regex!16489 List!65768) Unit!159311)

(assert (=> d!2073986 (= lt!2417564 (choose!49445 r!7292 s!2326))))

(assert (=> d!2073986 (validRegex!8225 r!7292)))

(assert (=> d!2073986 (= (mainMatchTheorem!3590 r!7292 s!2326) lt!2417564)))

(declare-fun bs!1696299 () Bool)

(assert (= bs!1696299 d!2073986))

(assert (=> bs!1696299 m!7388764))

(assert (=> bs!1696299 m!7388762))

(declare-fun m!7389146 () Bool)

(assert (=> bs!1696299 m!7389146))

(assert (=> bs!1696299 m!7388840))

(assert (=> b!6615829 d!2073986))

(declare-fun d!2073988 () Bool)

(declare-fun dynLambda!26142 (Int Context!11746) (InoxSet Context!11746))

(assert (=> d!2073988 (= (flatMap!1994 z!1189 lambda!369579) (dynLambda!26142 lambda!369579 (h!72091 zl!343)))))

(declare-fun lt!2417567 () Unit!159311)

(declare-fun choose!49446 ((InoxSet Context!11746) Context!11746 Int) Unit!159311)

(assert (=> d!2073988 (= lt!2417567 (choose!49446 z!1189 (h!72091 zl!343) lambda!369579))))

(assert (=> d!2073988 (= z!1189 (store ((as const (Array Context!11746 Bool)) false) (h!72091 zl!343) true))))

(assert (=> d!2073988 (= (lemmaFlatMapOnSingletonSet!1520 z!1189 (h!72091 zl!343) lambda!369579) lt!2417567)))

(declare-fun b_lambda!250229 () Bool)

(assert (=> (not b_lambda!250229) (not d!2073988)))

(declare-fun bs!1696300 () Bool)

(assert (= bs!1696300 d!2073988))

(assert (=> bs!1696300 m!7388806))

(declare-fun m!7389148 () Bool)

(assert (=> bs!1696300 m!7389148))

(declare-fun m!7389150 () Bool)

(assert (=> bs!1696300 m!7389150))

(declare-fun m!7389152 () Bool)

(assert (=> bs!1696300 m!7389152))

(assert (=> b!6615850 d!2073988))

(declare-fun d!2073990 () Bool)

(declare-fun choose!49447 ((InoxSet Context!11746) Int) (InoxSet Context!11746))

(assert (=> d!2073990 (= (flatMap!1994 z!1189 lambda!369579) (choose!49447 z!1189 lambda!369579))))

(declare-fun bs!1696301 () Bool)

(assert (= bs!1696301 d!2073990))

(declare-fun m!7389154 () Bool)

(assert (=> bs!1696301 m!7389154))

(assert (=> b!6615850 d!2073990))

(declare-fun b!6616375 () Bool)

(declare-fun call!579732 () (InoxSet Context!11746))

(declare-fun e!4002711 () (InoxSet Context!11746))

(assert (=> b!6616375 (= e!4002711 ((_ map or) call!579732 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326))))))

(declare-fun d!2073992 () Bool)

(declare-fun c!1219649 () Bool)

(declare-fun e!4002710 () Bool)

(assert (=> d!2073992 (= c!1219649 e!4002710)))

(declare-fun res!2713093 () Bool)

(assert (=> d!2073992 (=> (not res!2713093) (not e!4002710))))

(assert (=> d!2073992 (= res!2713093 ((_ is Cons!65642) (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))

(assert (=> d!2073992 (= (derivationStepZipperUp!1663 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))) (h!72092 s!2326)) e!4002711)))

(declare-fun b!6616376 () Bool)

(declare-fun e!4002712 () (InoxSet Context!11746))

(assert (=> b!6616376 (= e!4002712 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616377 () Bool)

(assert (=> b!6616377 (= e!4002712 call!579732)))

(declare-fun b!6616378 () Bool)

(assert (=> b!6616378 (= e!4002711 e!4002712)))

(declare-fun c!1219648 () Bool)

(assert (=> b!6616378 (= c!1219648 ((_ is Cons!65642) (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))

(declare-fun b!6616379 () Bool)

(assert (=> b!6616379 (= e!4002710 (nullable!6482 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun bm!579727 () Bool)

(assert (=> bm!579727 (= call!579732 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326)))))

(assert (= (and d!2073992 res!2713093) b!6616379))

(assert (= (and d!2073992 c!1219649) b!6616375))

(assert (= (and d!2073992 (not c!1219649)) b!6616378))

(assert (= (and b!6616378 c!1219648) b!6616377))

(assert (= (and b!6616378 (not c!1219648)) b!6616376))

(assert (= (or b!6616375 b!6616377) bm!579727))

(declare-fun m!7389162 () Bool)

(assert (=> b!6616375 m!7389162))

(declare-fun m!7389166 () Bool)

(assert (=> b!6616379 m!7389166))

(declare-fun m!7389168 () Bool)

(assert (=> bm!579727 m!7389168))

(assert (=> b!6615850 d!2073992))

(declare-fun call!579733 () (InoxSet Context!11746))

(declare-fun e!4002715 () (InoxSet Context!11746))

(declare-fun b!6616382 () Bool)

(assert (=> b!6616382 (= e!4002715 ((_ map or) call!579733 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (h!72092 s!2326))))))

(declare-fun d!2073998 () Bool)

(declare-fun c!1219652 () Bool)

(declare-fun e!4002714 () Bool)

(assert (=> d!2073998 (= c!1219652 e!4002714)))

(declare-fun res!2713094 () Bool)

(assert (=> d!2073998 (=> (not res!2713094) (not e!4002714))))

(assert (=> d!2073998 (= res!2713094 ((_ is Cons!65642) (exprs!6373 lt!2417478)))))

(assert (=> d!2073998 (= (derivationStepZipperUp!1663 lt!2417478 (h!72092 s!2326)) e!4002715)))

(declare-fun b!6616383 () Bool)

(declare-fun e!4002716 () (InoxSet Context!11746))

(assert (=> b!6616383 (= e!4002716 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616384 () Bool)

(assert (=> b!6616384 (= e!4002716 call!579733)))

(declare-fun b!6616385 () Bool)

(assert (=> b!6616385 (= e!4002715 e!4002716)))

(declare-fun c!1219651 () Bool)

(assert (=> b!6616385 (= c!1219651 ((_ is Cons!65642) (exprs!6373 lt!2417478)))))

(declare-fun b!6616386 () Bool)

(assert (=> b!6616386 (= e!4002714 (nullable!6482 (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun bm!579728 () Bool)

(assert (=> bm!579728 (= call!579733 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 lt!2417478)) (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (h!72092 s!2326)))))

(assert (= (and d!2073998 res!2713094) b!6616386))

(assert (= (and d!2073998 c!1219652) b!6616382))

(assert (= (and d!2073998 (not c!1219652)) b!6616385))

(assert (= (and b!6616385 c!1219651) b!6616384))

(assert (= (and b!6616385 (not c!1219651)) b!6616383))

(assert (= (or b!6616382 b!6616384) bm!579728))

(declare-fun m!7389176 () Bool)

(assert (=> b!6616382 m!7389176))

(declare-fun m!7389178 () Bool)

(assert (=> b!6616386 m!7389178))

(declare-fun m!7389180 () Bool)

(assert (=> bm!579728 m!7389180))

(assert (=> b!6615850 d!2073998))

(declare-fun b!6616389 () Bool)

(declare-fun e!4002719 () (InoxSet Context!11746))

(declare-fun call!579734 () (InoxSet Context!11746))

(assert (=> b!6616389 (= e!4002719 ((_ map or) call!579734 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326))))))

(declare-fun d!2074002 () Bool)

(declare-fun c!1219655 () Bool)

(declare-fun e!4002718 () Bool)

(assert (=> d!2074002 (= c!1219655 e!4002718)))

(declare-fun res!2713095 () Bool)

(assert (=> d!2074002 (=> (not res!2713095) (not e!4002718))))

(assert (=> d!2074002 (= res!2713095 ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343))))))

(assert (=> d!2074002 (= (derivationStepZipperUp!1663 (h!72091 zl!343) (h!72092 s!2326)) e!4002719)))

(declare-fun b!6616390 () Bool)

(declare-fun e!4002720 () (InoxSet Context!11746))

(assert (=> b!6616390 (= e!4002720 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616391 () Bool)

(assert (=> b!6616391 (= e!4002720 call!579734)))

(declare-fun b!6616392 () Bool)

(assert (=> b!6616392 (= e!4002719 e!4002720)))

(declare-fun c!1219654 () Bool)

(assert (=> b!6616392 (= c!1219654 ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343))))))

(declare-fun b!6616393 () Bool)

(assert (=> b!6616393 (= e!4002718 (nullable!6482 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun bm!579729 () Bool)

(assert (=> bm!579729 (= call!579734 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (h!72091 zl!343))) (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326)))))

(assert (= (and d!2074002 res!2713095) b!6616393))

(assert (= (and d!2074002 c!1219655) b!6616389))

(assert (= (and d!2074002 (not c!1219655)) b!6616392))

(assert (= (and b!6616392 c!1219654) b!6616391))

(assert (= (and b!6616392 (not c!1219654)) b!6616390))

(assert (= (or b!6616389 b!6616391) bm!579729))

(declare-fun m!7389188 () Bool)

(assert (=> b!6616389 m!7389188))

(assert (=> b!6616393 m!7388814))

(declare-fun m!7389190 () Bool)

(assert (=> bm!579729 m!7389190))

(assert (=> b!6615850 d!2074002))

(declare-fun b!6616470 () Bool)

(declare-fun c!1219667 () Bool)

(declare-fun e!4002759 () Bool)

(assert (=> b!6616470 (= c!1219667 e!4002759)))

(declare-fun res!2713098 () Bool)

(assert (=> b!6616470 (=> (not res!2713098) (not e!4002759))))

(assert (=> b!6616470 (= res!2713098 ((_ is Concat!25334) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun e!4002757 () (InoxSet Context!11746))

(declare-fun e!4002756 () (InoxSet Context!11746))

(assert (=> b!6616470 (= e!4002757 e!4002756)))

(declare-fun b!6616471 () Bool)

(declare-fun call!579748 () (InoxSet Context!11746))

(declare-fun call!579747 () (InoxSet Context!11746))

(assert (=> b!6616471 (= e!4002757 ((_ map or) call!579748 call!579747))))

(declare-fun bm!579742 () Bool)

(declare-fun call!579752 () (InoxSet Context!11746))

(assert (=> bm!579742 (= call!579752 call!579747)))

(declare-fun bm!579743 () Bool)

(declare-fun call!579750 () (InoxSet Context!11746))

(assert (=> bm!579743 (= call!579750 call!579752)))

(declare-fun bm!579745 () Bool)

(declare-fun c!1219669 () Bool)

(declare-fun c!1219668 () Bool)

(declare-fun call!579751 () List!65766)

(assert (=> bm!579745 (= call!579747 (derivationStepZipperDown!1737 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))) (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751)) (h!72092 s!2326)))))

(declare-fun b!6616472 () Bool)

(declare-fun e!4002758 () (InoxSet Context!11746))

(assert (=> b!6616472 (= e!4002758 (store ((as const (Array Context!11746 Bool)) false) lt!2417478 true))))

(declare-fun b!6616473 () Bool)

(declare-fun e!4002761 () (InoxSet Context!11746))

(assert (=> b!6616473 (= e!4002761 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616474 () Bool)

(assert (=> b!6616474 (= e!4002761 call!579750)))

(declare-fun call!579749 () List!65766)

(declare-fun bm!579746 () Bool)

(declare-fun $colon$colon!2326 (List!65766 Regex!16489) List!65766)

(assert (=> bm!579746 (= call!579749 ($colon$colon!2326 (exprs!6373 lt!2417478) (ite (or c!1219667 c!1219668) (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72090 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6616475 () Bool)

(assert (=> b!6616475 (= e!4002756 ((_ map or) call!579748 call!579752))))

(declare-fun d!2074006 () Bool)

(declare-fun c!1219670 () Bool)

(assert (=> d!2074006 (= c!1219670 (and ((_ is ElementMatch!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))) (= (c!1219498 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326))))))

(assert (=> d!2074006 (= (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (h!72091 zl!343))) lt!2417478 (h!72092 s!2326)) e!4002758)))

(declare-fun bm!579744 () Bool)

(assert (=> bm!579744 (= call!579748 (derivationStepZipperDown!1737 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))) (ite c!1219669 lt!2417478 (Context!11747 call!579749)) (h!72092 s!2326)))))

(declare-fun b!6616476 () Bool)

(assert (=> b!6616476 (= e!4002759 (nullable!6482 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6616477 () Bool)

(declare-fun c!1219666 () Bool)

(assert (=> b!6616477 (= c!1219666 ((_ is Star!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun e!4002760 () (InoxSet Context!11746))

(assert (=> b!6616477 (= e!4002760 e!4002761)))

(declare-fun b!6616478 () Bool)

(assert (=> b!6616478 (= e!4002760 call!579750)))

(declare-fun b!6616479 () Bool)

(assert (=> b!6616479 (= e!4002758 e!4002757)))

(assert (=> b!6616479 (= c!1219669 ((_ is Union!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun bm!579747 () Bool)

(assert (=> bm!579747 (= call!579751 call!579749)))

(declare-fun b!6616480 () Bool)

(assert (=> b!6616480 (= e!4002756 e!4002760)))

(assert (=> b!6616480 (= c!1219668 ((_ is Concat!25334) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (= (and d!2074006 c!1219670) b!6616472))

(assert (= (and d!2074006 (not c!1219670)) b!6616479))

(assert (= (and b!6616479 c!1219669) b!6616471))

(assert (= (and b!6616479 (not c!1219669)) b!6616470))

(assert (= (and b!6616470 res!2713098) b!6616476))

(assert (= (and b!6616470 c!1219667) b!6616475))

(assert (= (and b!6616470 (not c!1219667)) b!6616480))

(assert (= (and b!6616480 c!1219668) b!6616478))

(assert (= (and b!6616480 (not c!1219668)) b!6616477))

(assert (= (and b!6616477 c!1219666) b!6616474))

(assert (= (and b!6616477 (not c!1219666)) b!6616473))

(assert (= (or b!6616478 b!6616474) bm!579747))

(assert (= (or b!6616478 b!6616474) bm!579743))

(assert (= (or b!6616475 bm!579747) bm!579746))

(assert (= (or b!6616475 bm!579743) bm!579742))

(assert (= (or b!6616471 bm!579742) bm!579745))

(assert (= (or b!6616471 b!6616475) bm!579744))

(declare-fun m!7389196 () Bool)

(assert (=> bm!579744 m!7389196))

(declare-fun m!7389198 () Bool)

(assert (=> bm!579745 m!7389198))

(declare-fun m!7389200 () Bool)

(assert (=> b!6616476 m!7389200))

(declare-fun m!7389202 () Bool)

(assert (=> bm!579746 m!7389202))

(assert (=> b!6616472 m!7388820))

(assert (=> b!6615850 d!2074006))

(declare-fun d!2074012 () Bool)

(assert (=> d!2074012 (= (nullable!6482 (h!72090 (exprs!6373 (h!72091 zl!343)))) (nullableFct!2403 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun bs!1696314 () Bool)

(assert (= bs!1696314 d!2074012))

(declare-fun m!7389204 () Bool)

(assert (=> bs!1696314 m!7389204))

(assert (=> b!6615850 d!2074012))

(declare-fun bs!1696315 () Bool)

(declare-fun d!2074014 () Bool)

(assert (= bs!1696315 (and d!2074014 d!2073930)))

(declare-fun lambda!369637 () Int)

(assert (=> bs!1696315 (= lambda!369637 lambda!369611)))

(assert (=> d!2074014 (= (inv!84469 setElem!45216) (forall!15685 (exprs!6373 setElem!45216) lambda!369637))))

(declare-fun bs!1696316 () Bool)

(assert (= bs!1696316 d!2074014))

(declare-fun m!7389206 () Bool)

(assert (=> bs!1696316 m!7389206))

(assert (=> setNonEmpty!45216 d!2074014))

(declare-fun d!2074016 () Bool)

(assert (=> d!2074016 (= (isEmpty!37928 (t!379422 (exprs!6373 (h!72091 zl!343)))) ((_ is Nil!65642) (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> b!6615848 d!2074016))

(declare-fun d!2074018 () Bool)

(declare-fun res!2713110 () Bool)

(declare-fun e!4002780 () Bool)

(assert (=> d!2074018 (=> res!2713110 e!4002780)))

(assert (=> d!2074018 (= res!2713110 ((_ is ElementMatch!16489) r!7292))))

(assert (=> d!2074018 (= (validRegex!8225 r!7292) e!4002780)))

(declare-fun b!6616499 () Bool)

(declare-fun e!4002778 () Bool)

(declare-fun e!4002781 () Bool)

(assert (=> b!6616499 (= e!4002778 e!4002781)))

(declare-fun c!1219676 () Bool)

(assert (=> b!6616499 (= c!1219676 ((_ is Union!16489) r!7292))))

(declare-fun b!6616500 () Bool)

(declare-fun e!4002777 () Bool)

(declare-fun call!579761 () Bool)

(assert (=> b!6616500 (= e!4002777 call!579761)))

(declare-fun c!1219675 () Bool)

(declare-fun bm!579754 () Bool)

(declare-fun call!579760 () Bool)

(assert (=> bm!579754 (= call!579760 (validRegex!8225 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))

(declare-fun b!6616501 () Bool)

(declare-fun e!4002779 () Bool)

(assert (=> b!6616501 (= e!4002779 call!579761)))

(declare-fun bm!579755 () Bool)

(declare-fun call!579759 () Bool)

(assert (=> bm!579755 (= call!579759 (validRegex!8225 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))

(declare-fun b!6616502 () Bool)

(declare-fun res!2713113 () Bool)

(declare-fun e!4002782 () Bool)

(assert (=> b!6616502 (=> res!2713113 e!4002782)))

(assert (=> b!6616502 (= res!2713113 (not ((_ is Concat!25334) r!7292)))))

(assert (=> b!6616502 (= e!4002781 e!4002782)))

(declare-fun b!6616503 () Bool)

(assert (=> b!6616503 (= e!4002782 e!4002779)))

(declare-fun res!2713111 () Bool)

(assert (=> b!6616503 (=> (not res!2713111) (not e!4002779))))

(assert (=> b!6616503 (= res!2713111 call!579759)))

(declare-fun b!6616504 () Bool)

(assert (=> b!6616504 (= e!4002780 e!4002778)))

(assert (=> b!6616504 (= c!1219675 ((_ is Star!16489) r!7292))))

(declare-fun b!6616505 () Bool)

(declare-fun e!4002776 () Bool)

(assert (=> b!6616505 (= e!4002778 e!4002776)))

(declare-fun res!2713109 () Bool)

(assert (=> b!6616505 (= res!2713109 (not (nullable!6482 (reg!16818 r!7292))))))

(assert (=> b!6616505 (=> (not res!2713109) (not e!4002776))))

(declare-fun b!6616506 () Bool)

(assert (=> b!6616506 (= e!4002776 call!579760)))

(declare-fun b!6616507 () Bool)

(declare-fun res!2713112 () Bool)

(assert (=> b!6616507 (=> (not res!2713112) (not e!4002777))))

(assert (=> b!6616507 (= res!2713112 call!579759)))

(assert (=> b!6616507 (= e!4002781 e!4002777)))

(declare-fun bm!579756 () Bool)

(assert (=> bm!579756 (= call!579761 call!579760)))

(assert (= (and d!2074018 (not res!2713110)) b!6616504))

(assert (= (and b!6616504 c!1219675) b!6616505))

(assert (= (and b!6616504 (not c!1219675)) b!6616499))

(assert (= (and b!6616505 res!2713109) b!6616506))

(assert (= (and b!6616499 c!1219676) b!6616507))

(assert (= (and b!6616499 (not c!1219676)) b!6616502))

(assert (= (and b!6616507 res!2713112) b!6616500))

(assert (= (and b!6616502 (not res!2713113)) b!6616503))

(assert (= (and b!6616503 res!2713111) b!6616501))

(assert (= (or b!6616500 b!6616501) bm!579756))

(assert (= (or b!6616507 b!6616503) bm!579755))

(assert (= (or b!6616506 bm!579756) bm!579754))

(declare-fun m!7389208 () Bool)

(assert (=> bm!579754 m!7389208))

(declare-fun m!7389210 () Bool)

(assert (=> bm!579755 m!7389210))

(declare-fun m!7389212 () Bool)

(assert (=> b!6616505 m!7389212))

(assert (=> start!646690 d!2074018))

(declare-fun bs!1696317 () Bool)

(declare-fun d!2074020 () Bool)

(assert (= bs!1696317 (and d!2074020 d!2073930)))

(declare-fun lambda!369638 () Int)

(assert (=> bs!1696317 (= lambda!369638 lambda!369611)))

(declare-fun bs!1696318 () Bool)

(assert (= bs!1696318 (and d!2074020 d!2074014)))

(assert (=> bs!1696318 (= lambda!369638 lambda!369637)))

(assert (=> d!2074020 (= (inv!84469 lt!2417478) (forall!15685 (exprs!6373 lt!2417478) lambda!369638))))

(declare-fun bs!1696319 () Bool)

(assert (= bs!1696319 d!2074020))

(declare-fun m!7389214 () Bool)

(assert (=> bs!1696319 m!7389214))

(assert (=> b!6615849 d!2074020))

(declare-fun e!4002785 () Bool)

(declare-fun d!2074022 () Bool)

(assert (=> d!2074022 (= (matchZipper!2501 ((_ map or) lt!2417476 lt!2417481) (t!379424 s!2326)) e!4002785)))

(declare-fun res!2713116 () Bool)

(assert (=> d!2074022 (=> res!2713116 e!4002785)))

(assert (=> d!2074022 (= res!2713116 (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(declare-fun lt!2417571 () Unit!159311)

(declare-fun choose!49448 ((InoxSet Context!11746) (InoxSet Context!11746) List!65768) Unit!159311)

(assert (=> d!2074022 (= lt!2417571 (choose!49448 lt!2417476 lt!2417481 (t!379424 s!2326)))))

(assert (=> d!2074022 (= (lemmaZipperConcatMatchesSameAsBothZippers!1320 lt!2417476 lt!2417481 (t!379424 s!2326)) lt!2417571)))

(declare-fun b!6616510 () Bool)

(assert (=> b!6616510 (= e!4002785 (matchZipper!2501 lt!2417481 (t!379424 s!2326)))))

(assert (= (and d!2074022 (not res!2713116)) b!6616510))

(assert (=> d!2074022 m!7388834))

(assert (=> d!2074022 m!7388832))

(declare-fun m!7389216 () Bool)

(assert (=> d!2074022 m!7389216))

(assert (=> b!6616510 m!7388752))

(assert (=> b!6615838 d!2074022))

(declare-fun d!2074024 () Bool)

(declare-fun c!1219679 () Bool)

(assert (=> d!2074024 (= c!1219679 (isEmpty!37931 (t!379424 s!2326)))))

(declare-fun e!4002788 () Bool)

(assert (=> d!2074024 (= (matchZipper!2501 lt!2417476 (t!379424 s!2326)) e!4002788)))

(declare-fun b!6616515 () Bool)

(declare-fun nullableZipper!2230 ((InoxSet Context!11746)) Bool)

(assert (=> b!6616515 (= e!4002788 (nullableZipper!2230 lt!2417476))))

(declare-fun b!6616516 () Bool)

(assert (=> b!6616516 (= e!4002788 (matchZipper!2501 (derivationStepZipper!2455 lt!2417476 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))))))

(assert (= (and d!2074024 c!1219679) b!6616515))

(assert (= (and d!2074024 (not c!1219679)) b!6616516))

(declare-fun m!7389218 () Bool)

(assert (=> d!2074024 m!7389218))

(declare-fun m!7389220 () Bool)

(assert (=> b!6616515 m!7389220))

(declare-fun m!7389222 () Bool)

(assert (=> b!6616516 m!7389222))

(assert (=> b!6616516 m!7389222))

(declare-fun m!7389224 () Bool)

(assert (=> b!6616516 m!7389224))

(declare-fun m!7389226 () Bool)

(assert (=> b!6616516 m!7389226))

(assert (=> b!6616516 m!7389224))

(assert (=> b!6616516 m!7389226))

(declare-fun m!7389228 () Bool)

(assert (=> b!6616516 m!7389228))

(assert (=> b!6615838 d!2074024))

(declare-fun d!2074026 () Bool)

(declare-fun c!1219680 () Bool)

(assert (=> d!2074026 (= c!1219680 (isEmpty!37931 (t!379424 s!2326)))))

(declare-fun e!4002789 () Bool)

(assert (=> d!2074026 (= (matchZipper!2501 ((_ map or) lt!2417476 lt!2417481) (t!379424 s!2326)) e!4002789)))

(declare-fun b!6616517 () Bool)

(assert (=> b!6616517 (= e!4002789 (nullableZipper!2230 ((_ map or) lt!2417476 lt!2417481)))))

(declare-fun b!6616518 () Bool)

(assert (=> b!6616518 (= e!4002789 (matchZipper!2501 (derivationStepZipper!2455 ((_ map or) lt!2417476 lt!2417481) (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))))))

(assert (= (and d!2074026 c!1219680) b!6616517))

(assert (= (and d!2074026 (not c!1219680)) b!6616518))

(assert (=> d!2074026 m!7389218))

(declare-fun m!7389230 () Bool)

(assert (=> b!6616517 m!7389230))

(assert (=> b!6616518 m!7389222))

(assert (=> b!6616518 m!7389222))

(declare-fun m!7389232 () Bool)

(assert (=> b!6616518 m!7389232))

(assert (=> b!6616518 m!7389226))

(assert (=> b!6616518 m!7389232))

(assert (=> b!6616518 m!7389226))

(declare-fun m!7389234 () Bool)

(assert (=> b!6616518 m!7389234))

(assert (=> b!6615838 d!2074026))

(assert (=> b!6615831 d!2074024))

(declare-fun d!2074028 () Bool)

(assert (=> d!2074028 (not (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(declare-fun lt!2417574 () Unit!159311)

(declare-fun choose!49449 ((InoxSet Context!11746) List!65768) Unit!159311)

(assert (=> d!2074028 (= lt!2417574 (choose!49449 lt!2417476 (t!379424 s!2326)))))

(assert (=> d!2074028 (= lt!2417476 ((as const (Array Context!11746 Bool)) false))))

(assert (=> d!2074028 (= (lemmaEmptyZipperMatchesNothing!84 lt!2417476 (t!379424 s!2326)) lt!2417574)))

(declare-fun bs!1696320 () Bool)

(assert (= bs!1696320 d!2074028))

(assert (=> bs!1696320 m!7388832))

(declare-fun m!7389236 () Bool)

(assert (=> bs!1696320 m!7389236))

(assert (=> b!6615831 d!2074028))

(declare-fun d!2074030 () Bool)

(declare-fun c!1219681 () Bool)

(assert (=> d!2074030 (= c!1219681 (isEmpty!37931 (t!379424 s!2326)))))

(declare-fun e!4002790 () Bool)

(assert (=> d!2074030 (= (matchZipper!2501 lt!2417481 (t!379424 s!2326)) e!4002790)))

(declare-fun b!6616519 () Bool)

(assert (=> b!6616519 (= e!4002790 (nullableZipper!2230 lt!2417481))))

(declare-fun b!6616520 () Bool)

(assert (=> b!6616520 (= e!4002790 (matchZipper!2501 (derivationStepZipper!2455 lt!2417481 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))))))

(assert (= (and d!2074030 c!1219681) b!6616519))

(assert (= (and d!2074030 (not c!1219681)) b!6616520))

(assert (=> d!2074030 m!7389218))

(declare-fun m!7389238 () Bool)

(assert (=> b!6616519 m!7389238))

(assert (=> b!6616520 m!7389222))

(assert (=> b!6616520 m!7389222))

(declare-fun m!7389240 () Bool)

(assert (=> b!6616520 m!7389240))

(assert (=> b!6616520 m!7389226))

(assert (=> b!6616520 m!7389240))

(assert (=> b!6616520 m!7389226))

(declare-fun m!7389242 () Bool)

(assert (=> b!6616520 m!7389242))

(assert (=> b!6615853 d!2074030))

(declare-fun bs!1696321 () Bool)

(declare-fun d!2074032 () Bool)

(assert (= bs!1696321 (and d!2074032 d!2073930)))

(declare-fun lambda!369641 () Int)

(assert (=> bs!1696321 (= lambda!369641 lambda!369611)))

(declare-fun bs!1696322 () Bool)

(assert (= bs!1696322 (and d!2074032 d!2074014)))

(assert (=> bs!1696322 (= lambda!369641 lambda!369637)))

(declare-fun bs!1696323 () Bool)

(assert (= bs!1696323 (and d!2074032 d!2074020)))

(assert (=> bs!1696323 (= lambda!369641 lambda!369638)))

(declare-fun b!6616541 () Bool)

(declare-fun e!4002804 () Regex!16489)

(assert (=> b!6616541 (= e!4002804 (Union!16489 (h!72090 (unfocusZipperList!1910 zl!343)) (generalisedUnion!2333 (t!379422 (unfocusZipperList!1910 zl!343)))))))

(declare-fun b!6616542 () Bool)

(declare-fun e!4002805 () Bool)

(declare-fun e!4002807 () Bool)

(assert (=> b!6616542 (= e!4002805 e!4002807)))

(declare-fun c!1219691 () Bool)

(assert (=> b!6616542 (= c!1219691 (isEmpty!37928 (unfocusZipperList!1910 zl!343)))))

(declare-fun b!6616543 () Bool)

(declare-fun e!4002808 () Regex!16489)

(assert (=> b!6616543 (= e!4002808 e!4002804)))

(declare-fun c!1219692 () Bool)

(assert (=> b!6616543 (= c!1219692 ((_ is Cons!65642) (unfocusZipperList!1910 zl!343)))))

(assert (=> d!2074032 e!4002805))

(declare-fun res!2713122 () Bool)

(assert (=> d!2074032 (=> (not res!2713122) (not e!4002805))))

(declare-fun lt!2417577 () Regex!16489)

(assert (=> d!2074032 (= res!2713122 (validRegex!8225 lt!2417577))))

(assert (=> d!2074032 (= lt!2417577 e!4002808)))

(declare-fun c!1219690 () Bool)

(declare-fun e!4002806 () Bool)

(assert (=> d!2074032 (= c!1219690 e!4002806)))

(declare-fun res!2713121 () Bool)

(assert (=> d!2074032 (=> (not res!2713121) (not e!4002806))))

(assert (=> d!2074032 (= res!2713121 ((_ is Cons!65642) (unfocusZipperList!1910 zl!343)))))

(assert (=> d!2074032 (forall!15685 (unfocusZipperList!1910 zl!343) lambda!369641)))

(assert (=> d!2074032 (= (generalisedUnion!2333 (unfocusZipperList!1910 zl!343)) lt!2417577)))

(declare-fun b!6616544 () Bool)

(declare-fun e!4002803 () Bool)

(assert (=> b!6616544 (= e!4002807 e!4002803)))

(declare-fun c!1219693 () Bool)

(assert (=> b!6616544 (= c!1219693 (isEmpty!37928 (tail!12506 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6616545 () Bool)

(assert (=> b!6616545 (= e!4002803 (= lt!2417577 (head!13421 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6616546 () Bool)

(assert (=> b!6616546 (= e!4002804 EmptyLang!16489)))

(declare-fun b!6616547 () Bool)

(assert (=> b!6616547 (= e!4002806 (isEmpty!37928 (t!379422 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6616548 () Bool)

(declare-fun isUnion!1302 (Regex!16489) Bool)

(assert (=> b!6616548 (= e!4002803 (isUnion!1302 lt!2417577))))

(declare-fun b!6616549 () Bool)

(assert (=> b!6616549 (= e!4002808 (h!72090 (unfocusZipperList!1910 zl!343)))))

(declare-fun b!6616550 () Bool)

(declare-fun isEmptyLang!1872 (Regex!16489) Bool)

(assert (=> b!6616550 (= e!4002807 (isEmptyLang!1872 lt!2417577))))

(assert (= (and d!2074032 res!2713121) b!6616547))

(assert (= (and d!2074032 c!1219690) b!6616549))

(assert (= (and d!2074032 (not c!1219690)) b!6616543))

(assert (= (and b!6616543 c!1219692) b!6616541))

(assert (= (and b!6616543 (not c!1219692)) b!6616546))

(assert (= (and d!2074032 res!2713122) b!6616542))

(assert (= (and b!6616542 c!1219691) b!6616550))

(assert (= (and b!6616542 (not c!1219691)) b!6616544))

(assert (= (and b!6616544 c!1219693) b!6616545))

(assert (= (and b!6616544 (not c!1219693)) b!6616548))

(declare-fun m!7389244 () Bool)

(assert (=> b!6616548 m!7389244))

(declare-fun m!7389246 () Bool)

(assert (=> d!2074032 m!7389246))

(assert (=> d!2074032 m!7388824))

(declare-fun m!7389248 () Bool)

(assert (=> d!2074032 m!7389248))

(declare-fun m!7389250 () Bool)

(assert (=> b!6616547 m!7389250))

(assert (=> b!6616545 m!7388824))

(declare-fun m!7389252 () Bool)

(assert (=> b!6616545 m!7389252))

(assert (=> b!6616542 m!7388824))

(declare-fun m!7389254 () Bool)

(assert (=> b!6616542 m!7389254))

(declare-fun m!7389256 () Bool)

(assert (=> b!6616541 m!7389256))

(declare-fun m!7389258 () Bool)

(assert (=> b!6616550 m!7389258))

(assert (=> b!6616544 m!7388824))

(declare-fun m!7389260 () Bool)

(assert (=> b!6616544 m!7389260))

(assert (=> b!6616544 m!7389260))

(declare-fun m!7389262 () Bool)

(assert (=> b!6616544 m!7389262))

(assert (=> b!6615851 d!2074032))

(declare-fun bs!1696324 () Bool)

(declare-fun d!2074034 () Bool)

(assert (= bs!1696324 (and d!2074034 d!2073930)))

(declare-fun lambda!369644 () Int)

(assert (=> bs!1696324 (= lambda!369644 lambda!369611)))

(declare-fun bs!1696325 () Bool)

(assert (= bs!1696325 (and d!2074034 d!2074014)))

(assert (=> bs!1696325 (= lambda!369644 lambda!369637)))

(declare-fun bs!1696326 () Bool)

(assert (= bs!1696326 (and d!2074034 d!2074020)))

(assert (=> bs!1696326 (= lambda!369644 lambda!369638)))

(declare-fun bs!1696327 () Bool)

(assert (= bs!1696327 (and d!2074034 d!2074032)))

(assert (=> bs!1696327 (= lambda!369644 lambda!369641)))

(declare-fun lt!2417580 () List!65766)

(assert (=> d!2074034 (forall!15685 lt!2417580 lambda!369644)))

(declare-fun e!4002811 () List!65766)

(assert (=> d!2074034 (= lt!2417580 e!4002811)))

(declare-fun c!1219696 () Bool)

(assert (=> d!2074034 (= c!1219696 ((_ is Cons!65643) zl!343))))

(assert (=> d!2074034 (= (unfocusZipperList!1910 zl!343) lt!2417580)))

(declare-fun b!6616555 () Bool)

(assert (=> b!6616555 (= e!4002811 (Cons!65642 (generalisedConcat!2086 (exprs!6373 (h!72091 zl!343))) (unfocusZipperList!1910 (t!379423 zl!343))))))

(declare-fun b!6616556 () Bool)

(assert (=> b!6616556 (= e!4002811 Nil!65642)))

(assert (= (and d!2074034 c!1219696) b!6616555))

(assert (= (and d!2074034 (not c!1219696)) b!6616556))

(declare-fun m!7389264 () Bool)

(assert (=> d!2074034 m!7389264))

(assert (=> b!6616555 m!7388836))

(declare-fun m!7389266 () Bool)

(assert (=> b!6616555 m!7389266))

(assert (=> b!6615851 d!2074034))

(declare-fun bs!1696328 () Bool)

(declare-fun d!2074036 () Bool)

(assert (= bs!1696328 (and d!2074036 d!2073930)))

(declare-fun lambda!369645 () Int)

(assert (=> bs!1696328 (= lambda!369645 lambda!369611)))

(declare-fun bs!1696329 () Bool)

(assert (= bs!1696329 (and d!2074036 d!2074032)))

(assert (=> bs!1696329 (= lambda!369645 lambda!369641)))

(declare-fun bs!1696330 () Bool)

(assert (= bs!1696330 (and d!2074036 d!2074014)))

(assert (=> bs!1696330 (= lambda!369645 lambda!369637)))

(declare-fun bs!1696331 () Bool)

(assert (= bs!1696331 (and d!2074036 d!2074034)))

(assert (=> bs!1696331 (= lambda!369645 lambda!369644)))

(declare-fun bs!1696332 () Bool)

(assert (= bs!1696332 (and d!2074036 d!2074020)))

(assert (=> bs!1696332 (= lambda!369645 lambda!369638)))

(assert (=> d!2074036 (= (inv!84469 (h!72091 zl!343)) (forall!15685 (exprs!6373 (h!72091 zl!343)) lambda!369645))))

(declare-fun bs!1696333 () Bool)

(assert (= bs!1696333 d!2074036))

(declare-fun m!7389268 () Bool)

(assert (=> bs!1696333 m!7389268))

(assert (=> b!6615841 d!2074036))

(declare-fun d!2074038 () Bool)

(declare-fun c!1219697 () Bool)

(assert (=> d!2074038 (= c!1219697 (isEmpty!37931 s!2326))))

(declare-fun e!4002812 () Bool)

(assert (=> d!2074038 (= (matchZipper!2501 z!1189 s!2326) e!4002812)))

(declare-fun b!6616557 () Bool)

(assert (=> b!6616557 (= e!4002812 (nullableZipper!2230 z!1189))))

(declare-fun b!6616558 () Bool)

(assert (=> b!6616558 (= e!4002812 (matchZipper!2501 (derivationStepZipper!2455 z!1189 (head!13422 s!2326)) (tail!12507 s!2326)))))

(assert (= (and d!2074038 c!1219697) b!6616557))

(assert (= (and d!2074038 (not c!1219697)) b!6616558))

(assert (=> d!2074038 m!7389100))

(declare-fun m!7389270 () Bool)

(assert (=> b!6616557 m!7389270))

(assert (=> b!6616558 m!7389134))

(assert (=> b!6616558 m!7389134))

(declare-fun m!7389272 () Bool)

(assert (=> b!6616558 m!7389272))

(assert (=> b!6616558 m!7389136))

(assert (=> b!6616558 m!7389272))

(assert (=> b!6616558 m!7389136))

(declare-fun m!7389274 () Bool)

(assert (=> b!6616558 m!7389274))

(assert (=> b!6615854 d!2074038))

(assert (=> b!6615854 d!2074030))

(declare-fun d!2074040 () Bool)

(declare-fun c!1219698 () Bool)

(assert (=> d!2074040 (= c!1219698 (isEmpty!37931 (t!379424 s!2326)))))

(declare-fun e!4002813 () Bool)

(assert (=> d!2074040 (= (matchZipper!2501 lt!2417475 (t!379424 s!2326)) e!4002813)))

(declare-fun b!6616559 () Bool)

(assert (=> b!6616559 (= e!4002813 (nullableZipper!2230 lt!2417475))))

(declare-fun b!6616560 () Bool)

(assert (=> b!6616560 (= e!4002813 (matchZipper!2501 (derivationStepZipper!2455 lt!2417475 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))))))

(assert (= (and d!2074040 c!1219698) b!6616559))

(assert (= (and d!2074040 (not c!1219698)) b!6616560))

(assert (=> d!2074040 m!7389218))

(declare-fun m!7389276 () Bool)

(assert (=> b!6616559 m!7389276))

(assert (=> b!6616560 m!7389222))

(assert (=> b!6616560 m!7389222))

(declare-fun m!7389278 () Bool)

(assert (=> b!6616560 m!7389278))

(assert (=> b!6616560 m!7389226))

(assert (=> b!6616560 m!7389278))

(assert (=> b!6616560 m!7389226))

(declare-fun m!7389280 () Bool)

(assert (=> b!6616560 m!7389280))

(assert (=> b!6615854 d!2074040))

(assert (=> b!6615854 d!2074022))

(declare-fun bs!1696334 () Bool)

(declare-fun d!2074042 () Bool)

(assert (= bs!1696334 (and d!2074042 b!6615850)))

(declare-fun lambda!369648 () Int)

(assert (=> bs!1696334 (= lambda!369648 lambda!369579)))

(assert (=> d!2074042 true))

(assert (=> d!2074042 (= (derivationStepZipper!2455 lt!2417472 (h!72092 s!2326)) (flatMap!1994 lt!2417472 lambda!369648))))

(declare-fun bs!1696335 () Bool)

(assert (= bs!1696335 d!2074042))

(declare-fun m!7389282 () Bool)

(assert (=> bs!1696335 m!7389282))

(assert (=> b!6615845 d!2074042))

(declare-fun d!2074044 () Bool)

(assert (=> d!2074044 (= (flatMap!1994 lt!2417472 lambda!369579) (choose!49447 lt!2417472 lambda!369579))))

(declare-fun bs!1696336 () Bool)

(assert (= bs!1696336 d!2074044))

(declare-fun m!7389284 () Bool)

(assert (=> bs!1696336 m!7389284))

(assert (=> b!6615845 d!2074044))

(assert (=> b!6615845 d!2073998))

(declare-fun d!2074046 () Bool)

(assert (=> d!2074046 (= (flatMap!1994 lt!2417472 lambda!369579) (dynLambda!26142 lambda!369579 lt!2417478))))

(declare-fun lt!2417581 () Unit!159311)

(assert (=> d!2074046 (= lt!2417581 (choose!49446 lt!2417472 lt!2417478 lambda!369579))))

(assert (=> d!2074046 (= lt!2417472 (store ((as const (Array Context!11746 Bool)) false) lt!2417478 true))))

(assert (=> d!2074046 (= (lemmaFlatMapOnSingletonSet!1520 lt!2417472 lt!2417478 lambda!369579) lt!2417581)))

(declare-fun b_lambda!250235 () Bool)

(assert (=> (not b_lambda!250235) (not d!2074046)))

(declare-fun bs!1696337 () Bool)

(assert (= bs!1696337 d!2074046))

(assert (=> bs!1696337 m!7388818))

(declare-fun m!7389286 () Bool)

(assert (=> bs!1696337 m!7389286))

(declare-fun m!7389288 () Bool)

(assert (=> bs!1696337 m!7389288))

(assert (=> bs!1696337 m!7388820))

(assert (=> b!6615845 d!2074046))

(declare-fun bs!1696338 () Bool)

(declare-fun d!2074048 () Bool)

(assert (= bs!1696338 (and d!2074048 b!6615850)))

(declare-fun lambda!369649 () Int)

(assert (=> bs!1696338 (= lambda!369649 lambda!369579)))

(declare-fun bs!1696339 () Bool)

(assert (= bs!1696339 (and d!2074048 d!2074042)))

(assert (=> bs!1696339 (= lambda!369649 lambda!369648)))

(assert (=> d!2074048 true))

(assert (=> d!2074048 (= (derivationStepZipper!2455 z!1189 (h!72092 s!2326)) (flatMap!1994 z!1189 lambda!369649))))

(declare-fun bs!1696340 () Bool)

(assert (= bs!1696340 d!2074048))

(declare-fun m!7389290 () Bool)

(assert (=> bs!1696340 m!7389290))

(assert (=> b!6615834 d!2074048))

(declare-fun d!2074050 () Bool)

(declare-fun lt!2417584 () Regex!16489)

(assert (=> d!2074050 (validRegex!8225 lt!2417584)))

(assert (=> d!2074050 (= lt!2417584 (generalisedUnion!2333 (unfocusZipperList!1910 zl!343)))))

(assert (=> d!2074050 (= (unfocusZipper!2231 zl!343) lt!2417584)))

(declare-fun bs!1696341 () Bool)

(assert (= bs!1696341 d!2074050))

(declare-fun m!7389292 () Bool)

(assert (=> bs!1696341 m!7389292))

(assert (=> bs!1696341 m!7388824))

(assert (=> bs!1696341 m!7388824))

(assert (=> bs!1696341 m!7388826))

(assert (=> b!6615843 d!2074050))

(declare-fun bs!1696342 () Bool)

(declare-fun b!6616571 () Bool)

(assert (= bs!1696342 (and b!6616571 b!6616281)))

(declare-fun lambda!369650 () Int)

(assert (=> bs!1696342 (= (and (= (reg!16818 (regOne!33490 r!7292)) (reg!16818 r!7292)) (= (regOne!33490 r!7292) r!7292)) (= lambda!369650 lambda!369624))))

(declare-fun bs!1696343 () Bool)

(assert (= bs!1696343 (and b!6616571 d!2073894)))

(assert (=> bs!1696343 (not (= lambda!369650 lambda!369586))))

(declare-fun bs!1696344 () Bool)

(assert (= bs!1696344 (and b!6616571 b!6615856)))

(assert (=> bs!1696344 (not (= lambda!369650 lambda!369578))))

(declare-fun bs!1696345 () Bool)

(assert (= bs!1696345 (and b!6616571 d!2073900)))

(assert (=> bs!1696345 (not (= lambda!369650 lambda!369595))))

(assert (=> bs!1696344 (not (= lambda!369650 lambda!369577))))

(assert (=> bs!1696345 (not (= lambda!369650 lambda!369598))))

(declare-fun bs!1696346 () Bool)

(assert (= bs!1696346 (and b!6616571 b!6616273)))

(assert (=> bs!1696346 (not (= lambda!369650 lambda!369625))))

(assert (=> b!6616571 true))

(assert (=> b!6616571 true))

(declare-fun bs!1696347 () Bool)

(declare-fun b!6616563 () Bool)

(assert (= bs!1696347 (and b!6616563 b!6616281)))

(declare-fun lambda!369651 () Int)

(assert (=> bs!1696347 (not (= lambda!369651 lambda!369624))))

(declare-fun bs!1696348 () Bool)

(assert (= bs!1696348 (and b!6616563 b!6616571)))

(assert (=> bs!1696348 (not (= lambda!369651 lambda!369650))))

(declare-fun bs!1696349 () Bool)

(assert (= bs!1696349 (and b!6616563 d!2073894)))

(assert (=> bs!1696349 (not (= lambda!369651 lambda!369586))))

(declare-fun bs!1696350 () Bool)

(assert (= bs!1696350 (and b!6616563 b!6615856)))

(assert (=> bs!1696350 (= (and (= (regOne!33490 (regOne!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369651 lambda!369578))))

(declare-fun bs!1696351 () Bool)

(assert (= bs!1696351 (and b!6616563 d!2073900)))

(assert (=> bs!1696351 (not (= lambda!369651 lambda!369595))))

(assert (=> bs!1696350 (not (= lambda!369651 lambda!369577))))

(assert (=> bs!1696351 (= (and (= (regOne!33490 (regOne!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369651 lambda!369598))))

(declare-fun bs!1696352 () Bool)

(assert (= bs!1696352 (and b!6616563 b!6616273)))

(assert (=> bs!1696352 (= (and (= (regOne!33490 (regOne!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369651 lambda!369625))))

(assert (=> b!6616563 true))

(assert (=> b!6616563 true))

(declare-fun e!4002820 () Bool)

(declare-fun call!579762 () Bool)

(assert (=> b!6616563 (= e!4002820 call!579762)))

(declare-fun d!2074052 () Bool)

(declare-fun c!1219704 () Bool)

(assert (=> d!2074052 (= c!1219704 ((_ is EmptyExpr!16489) (regOne!33490 r!7292)))))

(declare-fun e!4002818 () Bool)

(assert (=> d!2074052 (= (matchRSpec!3590 (regOne!33490 r!7292) s!2326) e!4002818)))

(declare-fun b!6616564 () Bool)

(declare-fun e!4002816 () Bool)

(assert (=> b!6616564 (= e!4002818 e!4002816)))

(declare-fun res!2713125 () Bool)

(assert (=> b!6616564 (= res!2713125 (not ((_ is EmptyLang!16489) (regOne!33490 r!7292))))))

(assert (=> b!6616564 (=> (not res!2713125) (not e!4002816))))

(declare-fun b!6616565 () Bool)

(declare-fun c!1219703 () Bool)

(assert (=> b!6616565 (= c!1219703 ((_ is Union!16489) (regOne!33490 r!7292)))))

(declare-fun e!4002817 () Bool)

(declare-fun e!4002819 () Bool)

(assert (=> b!6616565 (= e!4002817 e!4002819)))

(declare-fun b!6616566 () Bool)

(declare-fun call!579763 () Bool)

(assert (=> b!6616566 (= e!4002818 call!579763)))

(declare-fun b!6616567 () Bool)

(declare-fun e!4002814 () Bool)

(assert (=> b!6616567 (= e!4002819 e!4002814)))

(declare-fun res!2713123 () Bool)

(assert (=> b!6616567 (= res!2713123 (matchRSpec!3590 (regOne!33491 (regOne!33490 r!7292)) s!2326))))

(assert (=> b!6616567 (=> res!2713123 e!4002814)))

(declare-fun b!6616568 () Bool)

(declare-fun c!1219701 () Bool)

(assert (=> b!6616568 (= c!1219701 ((_ is ElementMatch!16489) (regOne!33490 r!7292)))))

(assert (=> b!6616568 (= e!4002816 e!4002817)))

(declare-fun b!6616569 () Bool)

(declare-fun res!2713124 () Bool)

(declare-fun e!4002815 () Bool)

(assert (=> b!6616569 (=> res!2713124 e!4002815)))

(assert (=> b!6616569 (= res!2713124 call!579763)))

(assert (=> b!6616569 (= e!4002820 e!4002815)))

(declare-fun bm!579757 () Bool)

(assert (=> bm!579757 (= call!579763 (isEmpty!37931 s!2326))))

(declare-fun b!6616570 () Bool)

(assert (=> b!6616570 (= e!4002817 (= s!2326 (Cons!65644 (c!1219498 (regOne!33490 r!7292)) Nil!65644)))))

(assert (=> b!6616571 (= e!4002815 call!579762)))

(declare-fun b!6616572 () Bool)

(assert (=> b!6616572 (= e!4002814 (matchRSpec!3590 (regTwo!33491 (regOne!33490 r!7292)) s!2326))))

(declare-fun bm!579758 () Bool)

(declare-fun c!1219702 () Bool)

(assert (=> bm!579758 (= call!579762 (Exists!3559 (ite c!1219702 lambda!369650 lambda!369651)))))

(declare-fun b!6616573 () Bool)

(assert (=> b!6616573 (= e!4002819 e!4002820)))

(assert (=> b!6616573 (= c!1219702 ((_ is Star!16489) (regOne!33490 r!7292)))))

(assert (= (and d!2074052 c!1219704) b!6616566))

(assert (= (and d!2074052 (not c!1219704)) b!6616564))

(assert (= (and b!6616564 res!2713125) b!6616568))

(assert (= (and b!6616568 c!1219701) b!6616570))

(assert (= (and b!6616568 (not c!1219701)) b!6616565))

(assert (= (and b!6616565 c!1219703) b!6616567))

(assert (= (and b!6616565 (not c!1219703)) b!6616573))

(assert (= (and b!6616567 (not res!2713123)) b!6616572))

(assert (= (and b!6616573 c!1219702) b!6616569))

(assert (= (and b!6616573 (not c!1219702)) b!6616563))

(assert (= (and b!6616569 (not res!2713124)) b!6616571))

(assert (= (or b!6616571 b!6616563) bm!579758))

(assert (= (or b!6616566 b!6616569) bm!579757))

(declare-fun m!7389294 () Bool)

(assert (=> b!6616567 m!7389294))

(assert (=> bm!579757 m!7389100))

(declare-fun m!7389296 () Bool)

(assert (=> b!6616572 m!7389296))

(declare-fun m!7389298 () Bool)

(assert (=> bm!579758 m!7389298))

(assert (=> b!6615833 d!2074052))

(declare-fun d!2074054 () Bool)

(assert (=> d!2074054 (= (matchR!8672 (regOne!33490 r!7292) s!2326) (matchRSpec!3590 (regOne!33490 r!7292) s!2326))))

(declare-fun lt!2417585 () Unit!159311)

(assert (=> d!2074054 (= lt!2417585 (choose!49445 (regOne!33490 r!7292) s!2326))))

(assert (=> d!2074054 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074054 (= (mainMatchTheorem!3590 (regOne!33490 r!7292) s!2326) lt!2417585)))

(declare-fun bs!1696353 () Bool)

(assert (= bs!1696353 d!2074054))

(assert (=> bs!1696353 m!7388780))

(assert (=> bs!1696353 m!7388782))

(declare-fun m!7389300 () Bool)

(assert (=> bs!1696353 m!7389300))

(assert (=> bs!1696353 m!7388876))

(assert (=> b!6615833 d!2074054))

(declare-fun b!6616574 () Bool)

(declare-fun e!4002826 () Bool)

(declare-fun e!4002825 () Bool)

(assert (=> b!6616574 (= e!4002826 e!4002825)))

(declare-fun res!2713129 () Bool)

(assert (=> b!6616574 (=> res!2713129 e!4002825)))

(declare-fun call!579764 () Bool)

(assert (=> b!6616574 (= res!2713129 call!579764)))

(declare-fun b!6616575 () Bool)

(declare-fun res!2713128 () Bool)

(declare-fun e!4002823 () Bool)

(assert (=> b!6616575 (=> (not res!2713128) (not e!4002823))))

(assert (=> b!6616575 (= res!2713128 (not call!579764))))

(declare-fun b!6616576 () Bool)

(declare-fun e!4002824 () Bool)

(declare-fun lt!2417586 () Bool)

(assert (=> b!6616576 (= e!4002824 (= lt!2417586 call!579764))))

(declare-fun b!6616577 () Bool)

(declare-fun e!4002821 () Bool)

(assert (=> b!6616577 (= e!4002821 (not lt!2417586))))

(declare-fun b!6616578 () Bool)

(declare-fun res!2713133 () Bool)

(assert (=> b!6616578 (=> (not res!2713133) (not e!4002823))))

(assert (=> b!6616578 (= res!2713133 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6616579 () Bool)

(assert (=> b!6616579 (= e!4002824 e!4002821)))

(declare-fun c!1219707 () Bool)

(assert (=> b!6616579 (= c!1219707 ((_ is EmptyLang!16489) (regOne!33490 r!7292)))))

(declare-fun b!6616580 () Bool)

(declare-fun res!2713130 () Bool)

(declare-fun e!4002827 () Bool)

(assert (=> b!6616580 (=> res!2713130 e!4002827)))

(assert (=> b!6616580 (= res!2713130 e!4002823)))

(declare-fun res!2713126 () Bool)

(assert (=> b!6616580 (=> (not res!2713126) (not e!4002823))))

(assert (=> b!6616580 (= res!2713126 lt!2417586)))

(declare-fun bm!579759 () Bool)

(assert (=> bm!579759 (= call!579764 (isEmpty!37931 s!2326))))

(declare-fun b!6616581 () Bool)

(declare-fun e!4002822 () Bool)

(assert (=> b!6616581 (= e!4002822 (matchR!8672 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)) (tail!12507 s!2326)))))

(declare-fun d!2074056 () Bool)

(assert (=> d!2074056 e!4002824))

(declare-fun c!1219705 () Bool)

(assert (=> d!2074056 (= c!1219705 ((_ is EmptyExpr!16489) (regOne!33490 r!7292)))))

(assert (=> d!2074056 (= lt!2417586 e!4002822)))

(declare-fun c!1219706 () Bool)

(assert (=> d!2074056 (= c!1219706 (isEmpty!37931 s!2326))))

(assert (=> d!2074056 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074056 (= (matchR!8672 (regOne!33490 r!7292) s!2326) lt!2417586)))

(declare-fun b!6616582 () Bool)

(declare-fun res!2713127 () Bool)

(assert (=> b!6616582 (=> res!2713127 e!4002825)))

(assert (=> b!6616582 (= res!2713127 (not (isEmpty!37931 (tail!12507 s!2326))))))

(declare-fun b!6616583 () Bool)

(assert (=> b!6616583 (= e!4002825 (not (= (head!13422 s!2326) (c!1219498 (regOne!33490 r!7292)))))))

(declare-fun b!6616584 () Bool)

(assert (=> b!6616584 (= e!4002827 e!4002826)))

(declare-fun res!2713131 () Bool)

(assert (=> b!6616584 (=> (not res!2713131) (not e!4002826))))

(assert (=> b!6616584 (= res!2713131 (not lt!2417586))))

(declare-fun b!6616585 () Bool)

(assert (=> b!6616585 (= e!4002822 (nullable!6482 (regOne!33490 r!7292)))))

(declare-fun b!6616586 () Bool)

(declare-fun res!2713132 () Bool)

(assert (=> b!6616586 (=> res!2713132 e!4002827)))

(assert (=> b!6616586 (= res!2713132 (not ((_ is ElementMatch!16489) (regOne!33490 r!7292))))))

(assert (=> b!6616586 (= e!4002821 e!4002827)))

(declare-fun b!6616587 () Bool)

(assert (=> b!6616587 (= e!4002823 (= (head!13422 s!2326) (c!1219498 (regOne!33490 r!7292))))))

(assert (= (and d!2074056 c!1219706) b!6616585))

(assert (= (and d!2074056 (not c!1219706)) b!6616581))

(assert (= (and d!2074056 c!1219705) b!6616576))

(assert (= (and d!2074056 (not c!1219705)) b!6616579))

(assert (= (and b!6616579 c!1219707) b!6616577))

(assert (= (and b!6616579 (not c!1219707)) b!6616586))

(assert (= (and b!6616586 (not res!2713132)) b!6616580))

(assert (= (and b!6616580 res!2713126) b!6616575))

(assert (= (and b!6616575 res!2713128) b!6616578))

(assert (= (and b!6616578 res!2713133) b!6616587))

(assert (= (and b!6616580 (not res!2713130)) b!6616584))

(assert (= (and b!6616584 res!2713131) b!6616574))

(assert (= (and b!6616574 (not res!2713129)) b!6616582))

(assert (= (and b!6616582 (not res!2713127)) b!6616583))

(assert (= (or b!6616576 b!6616574 b!6616575) bm!579759))

(assert (=> b!6616587 m!7389134))

(assert (=> bm!579759 m!7389100))

(assert (=> b!6616582 m!7389136))

(assert (=> b!6616582 m!7389136))

(assert (=> b!6616582 m!7389138))

(assert (=> b!6616578 m!7389136))

(assert (=> b!6616578 m!7389136))

(assert (=> b!6616578 m!7389138))

(declare-fun m!7389302 () Bool)

(assert (=> b!6616585 m!7389302))

(assert (=> b!6616583 m!7389134))

(assert (=> b!6616581 m!7389134))

(assert (=> b!6616581 m!7389134))

(declare-fun m!7389304 () Bool)

(assert (=> b!6616581 m!7389304))

(assert (=> b!6616581 m!7389136))

(assert (=> b!6616581 m!7389304))

(assert (=> b!6616581 m!7389136))

(declare-fun m!7389306 () Bool)

(assert (=> b!6616581 m!7389306))

(assert (=> d!2074056 m!7389100))

(assert (=> d!2074056 m!7388876))

(assert (=> b!6615833 d!2074056))

(declare-fun bs!1696354 () Bool)

(declare-fun b!6616596 () Bool)

(assert (= bs!1696354 (and b!6616596 b!6616563)))

(declare-fun lambda!369652 () Int)

(assert (=> bs!1696354 (not (= lambda!369652 lambda!369651))))

(declare-fun bs!1696355 () Bool)

(assert (= bs!1696355 (and b!6616596 b!6616281)))

(assert (=> bs!1696355 (= (and (= (reg!16818 (regTwo!33490 r!7292)) (reg!16818 r!7292)) (= (regTwo!33490 r!7292) r!7292)) (= lambda!369652 lambda!369624))))

(declare-fun bs!1696356 () Bool)

(assert (= bs!1696356 (and b!6616596 b!6616571)))

(assert (=> bs!1696356 (= (and (= (reg!16818 (regTwo!33490 r!7292)) (reg!16818 (regOne!33490 r!7292))) (= (regTwo!33490 r!7292) (regOne!33490 r!7292))) (= lambda!369652 lambda!369650))))

(declare-fun bs!1696357 () Bool)

(assert (= bs!1696357 (and b!6616596 d!2073894)))

(assert (=> bs!1696357 (not (= lambda!369652 lambda!369586))))

(declare-fun bs!1696358 () Bool)

(assert (= bs!1696358 (and b!6616596 b!6615856)))

(assert (=> bs!1696358 (not (= lambda!369652 lambda!369578))))

(declare-fun bs!1696359 () Bool)

(assert (= bs!1696359 (and b!6616596 d!2073900)))

(assert (=> bs!1696359 (not (= lambda!369652 lambda!369595))))

(assert (=> bs!1696358 (not (= lambda!369652 lambda!369577))))

(assert (=> bs!1696359 (not (= lambda!369652 lambda!369598))))

(declare-fun bs!1696360 () Bool)

(assert (= bs!1696360 (and b!6616596 b!6616273)))

(assert (=> bs!1696360 (not (= lambda!369652 lambda!369625))))

(assert (=> b!6616596 true))

(assert (=> b!6616596 true))

(declare-fun bs!1696361 () Bool)

(declare-fun b!6616588 () Bool)

(assert (= bs!1696361 (and b!6616588 b!6616596)))

(declare-fun lambda!369653 () Int)

(assert (=> bs!1696361 (not (= lambda!369653 lambda!369652))))

(declare-fun bs!1696362 () Bool)

(assert (= bs!1696362 (and b!6616588 b!6616563)))

(assert (=> bs!1696362 (= (and (= (regOne!33490 (regTwo!33490 r!7292)) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regTwo!33490 r!7292)) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369653 lambda!369651))))

(declare-fun bs!1696363 () Bool)

(assert (= bs!1696363 (and b!6616588 b!6616281)))

(assert (=> bs!1696363 (not (= lambda!369653 lambda!369624))))

(declare-fun bs!1696364 () Bool)

(assert (= bs!1696364 (and b!6616588 b!6616571)))

(assert (=> bs!1696364 (not (= lambda!369653 lambda!369650))))

(declare-fun bs!1696365 () Bool)

(assert (= bs!1696365 (and b!6616588 d!2073894)))

(assert (=> bs!1696365 (not (= lambda!369653 lambda!369586))))

(declare-fun bs!1696366 () Bool)

(assert (= bs!1696366 (and b!6616588 b!6615856)))

(assert (=> bs!1696366 (= (and (= (regOne!33490 (regTwo!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369653 lambda!369578))))

(declare-fun bs!1696367 () Bool)

(assert (= bs!1696367 (and b!6616588 d!2073900)))

(assert (=> bs!1696367 (not (= lambda!369653 lambda!369595))))

(assert (=> bs!1696366 (not (= lambda!369653 lambda!369577))))

(assert (=> bs!1696367 (= (and (= (regOne!33490 (regTwo!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369653 lambda!369598))))

(declare-fun bs!1696368 () Bool)

(assert (= bs!1696368 (and b!6616588 b!6616273)))

(assert (=> bs!1696368 (= (and (= (regOne!33490 (regTwo!33490 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369653 lambda!369625))))

(assert (=> b!6616588 true))

(assert (=> b!6616588 true))

(declare-fun e!4002834 () Bool)

(declare-fun call!579765 () Bool)

(assert (=> b!6616588 (= e!4002834 call!579765)))

(declare-fun d!2074058 () Bool)

(declare-fun c!1219711 () Bool)

(assert (=> d!2074058 (= c!1219711 ((_ is EmptyExpr!16489) (regTwo!33490 r!7292)))))

(declare-fun e!4002832 () Bool)

(assert (=> d!2074058 (= (matchRSpec!3590 (regTwo!33490 r!7292) s!2326) e!4002832)))

(declare-fun b!6616589 () Bool)

(declare-fun e!4002830 () Bool)

(assert (=> b!6616589 (= e!4002832 e!4002830)))

(declare-fun res!2713136 () Bool)

(assert (=> b!6616589 (= res!2713136 (not ((_ is EmptyLang!16489) (regTwo!33490 r!7292))))))

(assert (=> b!6616589 (=> (not res!2713136) (not e!4002830))))

(declare-fun b!6616590 () Bool)

(declare-fun c!1219710 () Bool)

(assert (=> b!6616590 (= c!1219710 ((_ is Union!16489) (regTwo!33490 r!7292)))))

(declare-fun e!4002831 () Bool)

(declare-fun e!4002833 () Bool)

(assert (=> b!6616590 (= e!4002831 e!4002833)))

(declare-fun b!6616591 () Bool)

(declare-fun call!579766 () Bool)

(assert (=> b!6616591 (= e!4002832 call!579766)))

(declare-fun b!6616592 () Bool)

(declare-fun e!4002828 () Bool)

(assert (=> b!6616592 (= e!4002833 e!4002828)))

(declare-fun res!2713134 () Bool)

(assert (=> b!6616592 (= res!2713134 (matchRSpec!3590 (regOne!33491 (regTwo!33490 r!7292)) s!2326))))

(assert (=> b!6616592 (=> res!2713134 e!4002828)))

(declare-fun b!6616593 () Bool)

(declare-fun c!1219708 () Bool)

(assert (=> b!6616593 (= c!1219708 ((_ is ElementMatch!16489) (regTwo!33490 r!7292)))))

(assert (=> b!6616593 (= e!4002830 e!4002831)))

(declare-fun b!6616594 () Bool)

(declare-fun res!2713135 () Bool)

(declare-fun e!4002829 () Bool)

(assert (=> b!6616594 (=> res!2713135 e!4002829)))

(assert (=> b!6616594 (= res!2713135 call!579766)))

(assert (=> b!6616594 (= e!4002834 e!4002829)))

(declare-fun bm!579760 () Bool)

(assert (=> bm!579760 (= call!579766 (isEmpty!37931 s!2326))))

(declare-fun b!6616595 () Bool)

(assert (=> b!6616595 (= e!4002831 (= s!2326 (Cons!65644 (c!1219498 (regTwo!33490 r!7292)) Nil!65644)))))

(assert (=> b!6616596 (= e!4002829 call!579765)))

(declare-fun b!6616597 () Bool)

(assert (=> b!6616597 (= e!4002828 (matchRSpec!3590 (regTwo!33491 (regTwo!33490 r!7292)) s!2326))))

(declare-fun bm!579761 () Bool)

(declare-fun c!1219709 () Bool)

(assert (=> bm!579761 (= call!579765 (Exists!3559 (ite c!1219709 lambda!369652 lambda!369653)))))

(declare-fun b!6616598 () Bool)

(assert (=> b!6616598 (= e!4002833 e!4002834)))

(assert (=> b!6616598 (= c!1219709 ((_ is Star!16489) (regTwo!33490 r!7292)))))

(assert (= (and d!2074058 c!1219711) b!6616591))

(assert (= (and d!2074058 (not c!1219711)) b!6616589))

(assert (= (and b!6616589 res!2713136) b!6616593))

(assert (= (and b!6616593 c!1219708) b!6616595))

(assert (= (and b!6616593 (not c!1219708)) b!6616590))

(assert (= (and b!6616590 c!1219710) b!6616592))

(assert (= (and b!6616590 (not c!1219710)) b!6616598))

(assert (= (and b!6616592 (not res!2713134)) b!6616597))

(assert (= (and b!6616598 c!1219709) b!6616594))

(assert (= (and b!6616598 (not c!1219709)) b!6616588))

(assert (= (and b!6616594 (not res!2713135)) b!6616596))

(assert (= (or b!6616596 b!6616588) bm!579761))

(assert (= (or b!6616591 b!6616594) bm!579760))

(declare-fun m!7389308 () Bool)

(assert (=> b!6616592 m!7389308))

(assert (=> bm!579760 m!7389100))

(declare-fun m!7389310 () Bool)

(assert (=> b!6616597 m!7389310))

(declare-fun m!7389312 () Bool)

(assert (=> bm!579761 m!7389312))

(assert (=> b!6615833 d!2074058))

(declare-fun b!6616599 () Bool)

(declare-fun e!4002840 () Bool)

(declare-fun e!4002839 () Bool)

(assert (=> b!6616599 (= e!4002840 e!4002839)))

(declare-fun res!2713140 () Bool)

(assert (=> b!6616599 (=> res!2713140 e!4002839)))

(declare-fun call!579767 () Bool)

(assert (=> b!6616599 (= res!2713140 call!579767)))

(declare-fun b!6616600 () Bool)

(declare-fun res!2713139 () Bool)

(declare-fun e!4002837 () Bool)

(assert (=> b!6616600 (=> (not res!2713139) (not e!4002837))))

(assert (=> b!6616600 (= res!2713139 (not call!579767))))

(declare-fun b!6616601 () Bool)

(declare-fun e!4002838 () Bool)

(declare-fun lt!2417587 () Bool)

(assert (=> b!6616601 (= e!4002838 (= lt!2417587 call!579767))))

(declare-fun b!6616602 () Bool)

(declare-fun e!4002835 () Bool)

(assert (=> b!6616602 (= e!4002835 (not lt!2417587))))

(declare-fun b!6616603 () Bool)

(declare-fun res!2713144 () Bool)

(assert (=> b!6616603 (=> (not res!2713144) (not e!4002837))))

(assert (=> b!6616603 (= res!2713144 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6616604 () Bool)

(assert (=> b!6616604 (= e!4002838 e!4002835)))

(declare-fun c!1219714 () Bool)

(assert (=> b!6616604 (= c!1219714 ((_ is EmptyLang!16489) (regTwo!33490 r!7292)))))

(declare-fun b!6616605 () Bool)

(declare-fun res!2713141 () Bool)

(declare-fun e!4002841 () Bool)

(assert (=> b!6616605 (=> res!2713141 e!4002841)))

(assert (=> b!6616605 (= res!2713141 e!4002837)))

(declare-fun res!2713137 () Bool)

(assert (=> b!6616605 (=> (not res!2713137) (not e!4002837))))

(assert (=> b!6616605 (= res!2713137 lt!2417587)))

(declare-fun bm!579762 () Bool)

(assert (=> bm!579762 (= call!579767 (isEmpty!37931 s!2326))))

(declare-fun b!6616606 () Bool)

(declare-fun e!4002836 () Bool)

(assert (=> b!6616606 (= e!4002836 (matchR!8672 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)) (tail!12507 s!2326)))))

(declare-fun d!2074060 () Bool)

(assert (=> d!2074060 e!4002838))

(declare-fun c!1219712 () Bool)

(assert (=> d!2074060 (= c!1219712 ((_ is EmptyExpr!16489) (regTwo!33490 r!7292)))))

(assert (=> d!2074060 (= lt!2417587 e!4002836)))

(declare-fun c!1219713 () Bool)

(assert (=> d!2074060 (= c!1219713 (isEmpty!37931 s!2326))))

(assert (=> d!2074060 (validRegex!8225 (regTwo!33490 r!7292))))

(assert (=> d!2074060 (= (matchR!8672 (regTwo!33490 r!7292) s!2326) lt!2417587)))

(declare-fun b!6616607 () Bool)

(declare-fun res!2713138 () Bool)

(assert (=> b!6616607 (=> res!2713138 e!4002839)))

(assert (=> b!6616607 (= res!2713138 (not (isEmpty!37931 (tail!12507 s!2326))))))

(declare-fun b!6616608 () Bool)

(assert (=> b!6616608 (= e!4002839 (not (= (head!13422 s!2326) (c!1219498 (regTwo!33490 r!7292)))))))

(declare-fun b!6616609 () Bool)

(assert (=> b!6616609 (= e!4002841 e!4002840)))

(declare-fun res!2713142 () Bool)

(assert (=> b!6616609 (=> (not res!2713142) (not e!4002840))))

(assert (=> b!6616609 (= res!2713142 (not lt!2417587))))

(declare-fun b!6616610 () Bool)

(assert (=> b!6616610 (= e!4002836 (nullable!6482 (regTwo!33490 r!7292)))))

(declare-fun b!6616611 () Bool)

(declare-fun res!2713143 () Bool)

(assert (=> b!6616611 (=> res!2713143 e!4002841)))

(assert (=> b!6616611 (= res!2713143 (not ((_ is ElementMatch!16489) (regTwo!33490 r!7292))))))

(assert (=> b!6616611 (= e!4002835 e!4002841)))

(declare-fun b!6616612 () Bool)

(assert (=> b!6616612 (= e!4002837 (= (head!13422 s!2326) (c!1219498 (regTwo!33490 r!7292))))))

(assert (= (and d!2074060 c!1219713) b!6616610))

(assert (= (and d!2074060 (not c!1219713)) b!6616606))

(assert (= (and d!2074060 c!1219712) b!6616601))

(assert (= (and d!2074060 (not c!1219712)) b!6616604))

(assert (= (and b!6616604 c!1219714) b!6616602))

(assert (= (and b!6616604 (not c!1219714)) b!6616611))

(assert (= (and b!6616611 (not res!2713143)) b!6616605))

(assert (= (and b!6616605 res!2713137) b!6616600))

(assert (= (and b!6616600 res!2713139) b!6616603))

(assert (= (and b!6616603 res!2713144) b!6616612))

(assert (= (and b!6616605 (not res!2713141)) b!6616609))

(assert (= (and b!6616609 res!2713142) b!6616599))

(assert (= (and b!6616599 (not res!2713140)) b!6616607))

(assert (= (and b!6616607 (not res!2713138)) b!6616608))

(assert (= (or b!6616601 b!6616599 b!6616600) bm!579762))

(assert (=> b!6616612 m!7389134))

(assert (=> bm!579762 m!7389100))

(assert (=> b!6616607 m!7389136))

(assert (=> b!6616607 m!7389136))

(assert (=> b!6616607 m!7389138))

(assert (=> b!6616603 m!7389136))

(assert (=> b!6616603 m!7389136))

(assert (=> b!6616603 m!7389138))

(declare-fun m!7389314 () Bool)

(assert (=> b!6616610 m!7389314))

(assert (=> b!6616608 m!7389134))

(assert (=> b!6616606 m!7389134))

(assert (=> b!6616606 m!7389134))

(declare-fun m!7389316 () Bool)

(assert (=> b!6616606 m!7389316))

(assert (=> b!6616606 m!7389136))

(assert (=> b!6616606 m!7389316))

(assert (=> b!6616606 m!7389136))

(declare-fun m!7389318 () Bool)

(assert (=> b!6616606 m!7389318))

(assert (=> d!2074060 m!7389100))

(declare-fun m!7389320 () Bool)

(assert (=> d!2074060 m!7389320))

(assert (=> b!6615833 d!2074060))

(declare-fun d!2074062 () Bool)

(assert (=> d!2074062 (= (matchR!8672 (regTwo!33490 r!7292) s!2326) (matchRSpec!3590 (regTwo!33490 r!7292) s!2326))))

(declare-fun lt!2417588 () Unit!159311)

(assert (=> d!2074062 (= lt!2417588 (choose!49445 (regTwo!33490 r!7292) s!2326))))

(assert (=> d!2074062 (validRegex!8225 (regTwo!33490 r!7292))))

(assert (=> d!2074062 (= (mainMatchTheorem!3590 (regTwo!33490 r!7292) s!2326) lt!2417588)))

(declare-fun bs!1696369 () Bool)

(assert (= bs!1696369 d!2074062))

(assert (=> bs!1696369 m!7388774))

(assert (=> bs!1696369 m!7388784))

(declare-fun m!7389322 () Bool)

(assert (=> bs!1696369 m!7389322))

(assert (=> bs!1696369 m!7389320))

(assert (=> b!6615833 d!2074062))

(declare-fun b!6616617 () Bool)

(declare-fun e!4002844 () Bool)

(declare-fun tp!1822206 () Bool)

(declare-fun tp!1822207 () Bool)

(assert (=> b!6616617 (= e!4002844 (and tp!1822206 tp!1822207))))

(assert (=> b!6615847 (= tp!1822137 e!4002844)))

(assert (= (and b!6615847 ((_ is Cons!65642) (exprs!6373 (h!72091 zl!343)))) b!6616617))

(declare-fun b!6616628 () Bool)

(declare-fun e!4002847 () Bool)

(assert (=> b!6616628 (= e!4002847 tp_is_empty!42231)))

(declare-fun b!6616629 () Bool)

(declare-fun tp!1822222 () Bool)

(declare-fun tp!1822218 () Bool)

(assert (=> b!6616629 (= e!4002847 (and tp!1822222 tp!1822218))))

(declare-fun b!6616631 () Bool)

(declare-fun tp!1822220 () Bool)

(declare-fun tp!1822219 () Bool)

(assert (=> b!6616631 (= e!4002847 (and tp!1822220 tp!1822219))))

(assert (=> b!6615852 (= tp!1822143 e!4002847)))

(declare-fun b!6616630 () Bool)

(declare-fun tp!1822221 () Bool)

(assert (=> b!6616630 (= e!4002847 tp!1822221)))

(assert (= (and b!6615852 ((_ is ElementMatch!16489) (reg!16818 r!7292))) b!6616628))

(assert (= (and b!6615852 ((_ is Concat!25334) (reg!16818 r!7292))) b!6616629))

(assert (= (and b!6615852 ((_ is Star!16489) (reg!16818 r!7292))) b!6616630))

(assert (= (and b!6615852 ((_ is Union!16489) (reg!16818 r!7292))) b!6616631))

(declare-fun b!6616636 () Bool)

(declare-fun e!4002850 () Bool)

(declare-fun tp!1822225 () Bool)

(assert (=> b!6616636 (= e!4002850 (and tp_is_empty!42231 tp!1822225))))

(assert (=> b!6615837 (= tp!1822134 e!4002850)))

(assert (= (and b!6615837 ((_ is Cons!65644) (t!379424 s!2326))) b!6616636))

(declare-fun b!6616637 () Bool)

(declare-fun e!4002851 () Bool)

(assert (=> b!6616637 (= e!4002851 tp_is_empty!42231)))

(declare-fun b!6616638 () Bool)

(declare-fun tp!1822230 () Bool)

(declare-fun tp!1822226 () Bool)

(assert (=> b!6616638 (= e!4002851 (and tp!1822230 tp!1822226))))

(declare-fun b!6616640 () Bool)

(declare-fun tp!1822228 () Bool)

(declare-fun tp!1822227 () Bool)

(assert (=> b!6616640 (= e!4002851 (and tp!1822228 tp!1822227))))

(assert (=> b!6615840 (= tp!1822138 e!4002851)))

(declare-fun b!6616639 () Bool)

(declare-fun tp!1822229 () Bool)

(assert (=> b!6616639 (= e!4002851 tp!1822229)))

(assert (= (and b!6615840 ((_ is ElementMatch!16489) (regOne!33491 r!7292))) b!6616637))

(assert (= (and b!6615840 ((_ is Concat!25334) (regOne!33491 r!7292))) b!6616638))

(assert (= (and b!6615840 ((_ is Star!16489) (regOne!33491 r!7292))) b!6616639))

(assert (= (and b!6615840 ((_ is Union!16489) (regOne!33491 r!7292))) b!6616640))

(declare-fun b!6616641 () Bool)

(declare-fun e!4002852 () Bool)

(assert (=> b!6616641 (= e!4002852 tp_is_empty!42231)))

(declare-fun b!6616642 () Bool)

(declare-fun tp!1822235 () Bool)

(declare-fun tp!1822231 () Bool)

(assert (=> b!6616642 (= e!4002852 (and tp!1822235 tp!1822231))))

(declare-fun b!6616644 () Bool)

(declare-fun tp!1822233 () Bool)

(declare-fun tp!1822232 () Bool)

(assert (=> b!6616644 (= e!4002852 (and tp!1822233 tp!1822232))))

(assert (=> b!6615840 (= tp!1822141 e!4002852)))

(declare-fun b!6616643 () Bool)

(declare-fun tp!1822234 () Bool)

(assert (=> b!6616643 (= e!4002852 tp!1822234)))

(assert (= (and b!6615840 ((_ is ElementMatch!16489) (regTwo!33491 r!7292))) b!6616641))

(assert (= (and b!6615840 ((_ is Concat!25334) (regTwo!33491 r!7292))) b!6616642))

(assert (= (and b!6615840 ((_ is Star!16489) (regTwo!33491 r!7292))) b!6616643))

(assert (= (and b!6615840 ((_ is Union!16489) (regTwo!33491 r!7292))) b!6616644))

(declare-fun b!6616645 () Bool)

(declare-fun e!4002853 () Bool)

(assert (=> b!6616645 (= e!4002853 tp_is_empty!42231)))

(declare-fun b!6616646 () Bool)

(declare-fun tp!1822240 () Bool)

(declare-fun tp!1822236 () Bool)

(assert (=> b!6616646 (= e!4002853 (and tp!1822240 tp!1822236))))

(declare-fun b!6616648 () Bool)

(declare-fun tp!1822238 () Bool)

(declare-fun tp!1822237 () Bool)

(assert (=> b!6616648 (= e!4002853 (and tp!1822238 tp!1822237))))

(assert (=> b!6615855 (= tp!1822142 e!4002853)))

(declare-fun b!6616647 () Bool)

(declare-fun tp!1822239 () Bool)

(assert (=> b!6616647 (= e!4002853 tp!1822239)))

(assert (= (and b!6615855 ((_ is ElementMatch!16489) (regOne!33490 r!7292))) b!6616645))

(assert (= (and b!6615855 ((_ is Concat!25334) (regOne!33490 r!7292))) b!6616646))

(assert (= (and b!6615855 ((_ is Star!16489) (regOne!33490 r!7292))) b!6616647))

(assert (= (and b!6615855 ((_ is Union!16489) (regOne!33490 r!7292))) b!6616648))

(declare-fun b!6616649 () Bool)

(declare-fun e!4002854 () Bool)

(assert (=> b!6616649 (= e!4002854 tp_is_empty!42231)))

(declare-fun b!6616650 () Bool)

(declare-fun tp!1822245 () Bool)

(declare-fun tp!1822241 () Bool)

(assert (=> b!6616650 (= e!4002854 (and tp!1822245 tp!1822241))))

(declare-fun b!6616652 () Bool)

(declare-fun tp!1822243 () Bool)

(declare-fun tp!1822242 () Bool)

(assert (=> b!6616652 (= e!4002854 (and tp!1822243 tp!1822242))))

(assert (=> b!6615855 (= tp!1822136 e!4002854)))

(declare-fun b!6616651 () Bool)

(declare-fun tp!1822244 () Bool)

(assert (=> b!6616651 (= e!4002854 tp!1822244)))

(assert (= (and b!6615855 ((_ is ElementMatch!16489) (regTwo!33490 r!7292))) b!6616649))

(assert (= (and b!6615855 ((_ is Concat!25334) (regTwo!33490 r!7292))) b!6616650))

(assert (= (and b!6615855 ((_ is Star!16489) (regTwo!33490 r!7292))) b!6616651))

(assert (= (and b!6615855 ((_ is Union!16489) (regTwo!33490 r!7292))) b!6616652))

(declare-fun b!6616660 () Bool)

(declare-fun e!4002860 () Bool)

(declare-fun tp!1822250 () Bool)

(assert (=> b!6616660 (= e!4002860 tp!1822250)))

(declare-fun e!4002859 () Bool)

(declare-fun tp!1822251 () Bool)

(declare-fun b!6616659 () Bool)

(assert (=> b!6616659 (= e!4002859 (and (inv!84469 (h!72091 (t!379423 zl!343))) e!4002860 tp!1822251))))

(assert (=> b!6615841 (= tp!1822135 e!4002859)))

(assert (= b!6616659 b!6616660))

(assert (= (and b!6615841 ((_ is Cons!65643) (t!379423 zl!343))) b!6616659))

(declare-fun m!7389324 () Bool)

(assert (=> b!6616659 m!7389324))

(declare-fun b!6616661 () Bool)

(declare-fun e!4002861 () Bool)

(declare-fun tp!1822252 () Bool)

(declare-fun tp!1822253 () Bool)

(assert (=> b!6616661 (= e!4002861 (and tp!1822252 tp!1822253))))

(assert (=> b!6615830 (= tp!1822139 e!4002861)))

(assert (= (and b!6615830 ((_ is Cons!65642) (exprs!6373 setElem!45216))) b!6616661))

(declare-fun condSetEmpty!45222 () Bool)

(assert (=> setNonEmpty!45216 (= condSetEmpty!45222 (= setRest!45216 ((as const (Array Context!11746 Bool)) false)))))

(declare-fun setRes!45222 () Bool)

(assert (=> setNonEmpty!45216 (= tp!1822140 setRes!45222)))

(declare-fun setIsEmpty!45222 () Bool)

(assert (=> setIsEmpty!45222 setRes!45222))

(declare-fun tp!1822259 () Bool)

(declare-fun setNonEmpty!45222 () Bool)

(declare-fun e!4002864 () Bool)

(declare-fun setElem!45222 () Context!11746)

(assert (=> setNonEmpty!45222 (= setRes!45222 (and tp!1822259 (inv!84469 setElem!45222) e!4002864))))

(declare-fun setRest!45222 () (InoxSet Context!11746))

(assert (=> setNonEmpty!45222 (= setRest!45216 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) setElem!45222 true) setRest!45222))))

(declare-fun b!6616666 () Bool)

(declare-fun tp!1822258 () Bool)

(assert (=> b!6616666 (= e!4002864 tp!1822258)))

(assert (= (and setNonEmpty!45216 condSetEmpty!45222) setIsEmpty!45222))

(assert (= (and setNonEmpty!45216 (not condSetEmpty!45222)) setNonEmpty!45222))

(assert (= setNonEmpty!45222 b!6616666))

(declare-fun m!7389326 () Bool)

(assert (=> setNonEmpty!45222 m!7389326))

(declare-fun b_lambda!250237 () Bool)

(assert (= b_lambda!250229 (or b!6615850 b_lambda!250237)))

(declare-fun bs!1696370 () Bool)

(declare-fun d!2074064 () Bool)

(assert (= bs!1696370 (and d!2074064 b!6615850)))

(assert (=> bs!1696370 (= (dynLambda!26142 lambda!369579 (h!72091 zl!343)) (derivationStepZipperUp!1663 (h!72091 zl!343) (h!72092 s!2326)))))

(assert (=> bs!1696370 m!7388808))

(assert (=> d!2073988 d!2074064))

(declare-fun b_lambda!250239 () Bool)

(assert (= b_lambda!250235 (or b!6615850 b_lambda!250239)))

(declare-fun bs!1696371 () Bool)

(declare-fun d!2074066 () Bool)

(assert (= bs!1696371 (and d!2074066 b!6615850)))

(assert (=> bs!1696371 (= (dynLambda!26142 lambda!369579 lt!2417478) (derivationStepZipperUp!1663 lt!2417478 (h!72092 s!2326)))))

(assert (=> bs!1696371 m!7388804))

(assert (=> d!2074046 d!2074066))

(check-sat (not d!2074042) (not bm!579760) (not b!6616597) (not bm!579759) (not bm!579757) (not d!2073922) (not d!2074036) (not d!2074050) (not b!6616545) (not b!6615918) (not b!6616541) (not b!6615921) (not b!6616382) (not b!6616642) (not d!2074032) (not b!6616578) (not b!6616557) (not d!2074048) (not bs!1696370) (not b!6616356) (not b!6616155) (not b!6616152) (not b!6616505) (not d!2074056) (not b!6616548) (not b!6615913) (not d!2073976) (not b!6616603) (not bm!579729) (not b!6616389) (not b!6616592) (not d!2074030) (not b!6616352) (not b!6616347) (not b!6616607) (not b!6616154) (not bm!579721) (not b!6615917) (not bm!579754) (not bm!579728) (not b!6616555) (not b!6616516) (not b!6616351) (not b!6616518) (not b!6616282) (not b!6616651) (not bm!579746) (not b!6616157) (not bm!579720) (not b!6616606) (not b!6616393) (not b!6616354) (not d!2074040) (not b!6616582) (not b!6616158) (not b!6615914) (not b!6616567) (not d!2074044) (not b!6616629) (not d!2073988) (not b!6616572) (not b!6616639) (not d!2074022) (not b!6616510) (not d!2074028) (not d!2073888) (not b!6616558) (not b!6616350) (not b!6616608) (not b!6616581) (not d!2074026) (not d!2074038) (not b!6616560) (not b!6616379) (not b!6616617) (not b!6616515) (not b!6616542) (not b!6616386) (not b!6616519) (not b!6616661) (not b!6616652) (not bm!579744) (not b!6616544) (not bm!579724) (not b!6616640) (not bm!579761) (not bm!579755) (not b!6616659) (not d!2074020) (not bm!579727) (not d!2074054) (not b!6616520) (not d!2073892) (not b!6616648) (not setNonEmpty!45222) (not b!6616660) (not d!2074034) (not d!2073880) (not d!2074024) (not d!2073986) (not b!6616277) (not b!6616550) (not b!6616476) (not b!6615916) (not d!2073990) (not b!6616559) (not d!2074012) (not b!6616631) (not d!2074014) (not b!6616636) (not d!2074046) (not b!6616517) (not b!6616095) (not b!6616638) (not b!6616151) (not bs!1696371) (not b_lambda!250239) (not d!2073894) (not d!2073930) (not b!6616644) (not d!2074062) (not b!6616610) (not b!6616650) (not b!6616583) (not d!2074060) (not b!6616547) (not bm!579758) (not b!6616375) (not b!6616647) tp_is_empty!42231 (not b!6616612) (not b_lambda!250237) (not d!2073900) (not d!2073920) (not b!6616646) (not b!6616585) (not bm!579762) (not b!6616643) (not b!6616587) (not b!6616630) (not bm!579745) (not b!6616156) (not d!2073914) (not b!6616666))
(check-sat)
(get-model)

(declare-fun d!2074068 () Bool)

(declare-fun res!2713149 () Bool)

(declare-fun e!4002869 () Bool)

(assert (=> d!2074068 (=> res!2713149 e!4002869)))

(assert (=> d!2074068 (= res!2713149 ((_ is Nil!65642) (exprs!6373 setElem!45216)))))

(assert (=> d!2074068 (= (forall!15685 (exprs!6373 setElem!45216) lambda!369637) e!4002869)))

(declare-fun b!6616671 () Bool)

(declare-fun e!4002870 () Bool)

(assert (=> b!6616671 (= e!4002869 e!4002870)))

(declare-fun res!2713150 () Bool)

(assert (=> b!6616671 (=> (not res!2713150) (not e!4002870))))

(declare-fun dynLambda!26143 (Int Regex!16489) Bool)

(assert (=> b!6616671 (= res!2713150 (dynLambda!26143 lambda!369637 (h!72090 (exprs!6373 setElem!45216))))))

(declare-fun b!6616672 () Bool)

(assert (=> b!6616672 (= e!4002870 (forall!15685 (t!379422 (exprs!6373 setElem!45216)) lambda!369637))))

(assert (= (and d!2074068 (not res!2713149)) b!6616671))

(assert (= (and b!6616671 res!2713150) b!6616672))

(declare-fun b_lambda!250241 () Bool)

(assert (=> (not b_lambda!250241) (not b!6616671)))

(declare-fun m!7389328 () Bool)

(assert (=> b!6616671 m!7389328))

(declare-fun m!7389330 () Bool)

(assert (=> b!6616672 m!7389330))

(assert (=> d!2074014 d!2074068))

(assert (=> bs!1696370 d!2074002))

(declare-fun d!2074072 () Bool)

(assert (=> d!2074072 true))

(declare-fun setRes!45225 () Bool)

(assert (=> d!2074072 setRes!45225))

(declare-fun condSetEmpty!45225 () Bool)

(declare-fun res!2713153 () (InoxSet Context!11746))

(assert (=> d!2074072 (= condSetEmpty!45225 (= res!2713153 ((as const (Array Context!11746 Bool)) false)))))

(assert (=> d!2074072 (= (choose!49447 z!1189 lambda!369579) res!2713153)))

(declare-fun setIsEmpty!45225 () Bool)

(assert (=> setIsEmpty!45225 setRes!45225))

(declare-fun tp!1822265 () Bool)

(declare-fun setNonEmpty!45225 () Bool)

(declare-fun setElem!45225 () Context!11746)

(declare-fun e!4002875 () Bool)

(assert (=> setNonEmpty!45225 (= setRes!45225 (and tp!1822265 (inv!84469 setElem!45225) e!4002875))))

(declare-fun setRest!45225 () (InoxSet Context!11746))

(assert (=> setNonEmpty!45225 (= res!2713153 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) setElem!45225 true) setRest!45225))))

(declare-fun b!6616679 () Bool)

(declare-fun tp!1822264 () Bool)

(assert (=> b!6616679 (= e!4002875 tp!1822264)))

(assert (= (and d!2074072 condSetEmpty!45225) setIsEmpty!45225))

(assert (= (and d!2074072 (not condSetEmpty!45225)) setNonEmpty!45225))

(assert (= setNonEmpty!45225 b!6616679))

(declare-fun m!7389334 () Bool)

(assert (=> setNonEmpty!45225 m!7389334))

(assert (=> d!2073990 d!2074072))

(declare-fun d!2074076 () Bool)

(declare-fun res!2713154 () Bool)

(declare-fun e!4002876 () Bool)

(assert (=> d!2074076 (=> res!2713154 e!4002876)))

(assert (=> d!2074076 (= res!2713154 ((_ is Nil!65642) lt!2417580))))

(assert (=> d!2074076 (= (forall!15685 lt!2417580 lambda!369644) e!4002876)))

(declare-fun b!6616680 () Bool)

(declare-fun e!4002877 () Bool)

(assert (=> b!6616680 (= e!4002876 e!4002877)))

(declare-fun res!2713155 () Bool)

(assert (=> b!6616680 (=> (not res!2713155) (not e!4002877))))

(assert (=> b!6616680 (= res!2713155 (dynLambda!26143 lambda!369644 (h!72090 lt!2417580)))))

(declare-fun b!6616681 () Bool)

(assert (=> b!6616681 (= e!4002877 (forall!15685 (t!379422 lt!2417580) lambda!369644))))

(assert (= (and d!2074076 (not res!2713154)) b!6616680))

(assert (= (and b!6616680 res!2713155) b!6616681))

(declare-fun b_lambda!250243 () Bool)

(assert (=> (not b_lambda!250243) (not b!6616680)))

(declare-fun m!7389336 () Bool)

(assert (=> b!6616680 m!7389336))

(declare-fun m!7389338 () Bool)

(assert (=> b!6616681 m!7389338))

(assert (=> d!2074034 d!2074076))

(assert (=> d!2074028 d!2074024))

(declare-fun d!2074078 () Bool)

(assert (=> d!2074078 (not (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(assert (=> d!2074078 true))

(declare-fun _$64!775 () Unit!159311)

(assert (=> d!2074078 (= (choose!49449 lt!2417476 (t!379424 s!2326)) _$64!775)))

(declare-fun bs!1696376 () Bool)

(assert (= bs!1696376 d!2074078))

(assert (=> bs!1696376 m!7388832))

(assert (=> d!2074028 d!2074078))

(declare-fun call!579768 () (InoxSet Context!11746))

(declare-fun b!6616686 () Bool)

(declare-fun e!4002881 () (InoxSet Context!11746))

(assert (=> b!6616686 (= e!4002881 ((_ map or) call!579768 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))) (h!72092 s!2326))))))

(declare-fun d!2074086 () Bool)

(declare-fun c!1219720 () Bool)

(declare-fun e!4002880 () Bool)

(assert (=> d!2074086 (= c!1219720 e!4002880)))

(declare-fun res!2713156 () Bool)

(assert (=> d!2074086 (=> (not res!2713156) (not e!4002880))))

(assert (=> d!2074086 (= res!2713156 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))))

(assert (=> d!2074086 (= (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326)) e!4002881)))

(declare-fun b!6616687 () Bool)

(declare-fun e!4002882 () (InoxSet Context!11746))

(assert (=> b!6616687 (= e!4002882 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616688 () Bool)

(assert (=> b!6616688 (= e!4002882 call!579768)))

(declare-fun b!6616689 () Bool)

(assert (=> b!6616689 (= e!4002881 e!4002882)))

(declare-fun c!1219719 () Bool)

(assert (=> b!6616689 (= c!1219719 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))))

(declare-fun b!6616690 () Bool)

(assert (=> b!6616690 (= e!4002880 (nullable!6482 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))))))

(declare-fun bm!579763 () Bool)

(assert (=> bm!579763 (= call!579768 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))) (h!72092 s!2326)))))

(assert (= (and d!2074086 res!2713156) b!6616690))

(assert (= (and d!2074086 c!1219720) b!6616686))

(assert (= (and d!2074086 (not c!1219720)) b!6616689))

(assert (= (and b!6616689 c!1219719) b!6616688))

(assert (= (and b!6616689 (not c!1219719)) b!6616687))

(assert (= (or b!6616686 b!6616688) bm!579763))

(declare-fun m!7389356 () Bool)

(assert (=> b!6616686 m!7389356))

(declare-fun m!7389358 () Bool)

(assert (=> b!6616690 m!7389358))

(declare-fun m!7389360 () Bool)

(assert (=> bm!579763 m!7389360))

(assert (=> b!6616375 d!2074086))

(declare-fun d!2074092 () Bool)

(assert (=> d!2074092 (= (isEmpty!37931 (t!379424 s!2326)) ((_ is Nil!65644) (t!379424 s!2326)))))

(assert (=> d!2074024 d!2074092))

(declare-fun d!2074096 () Bool)

(assert (=> d!2074096 (= (isEmpty!37931 s!2326) ((_ is Nil!65644) s!2326))))

(assert (=> bm!579759 d!2074096))

(declare-fun bs!1696378 () Bool)

(declare-fun b!6616699 () Bool)

(assert (= bs!1696378 (and b!6616699 b!6616596)))

(declare-fun lambda!369655 () Int)

(assert (=> bs!1696378 (= (and (= (reg!16818 (regTwo!33491 (regTwo!33490 r!7292))) (reg!16818 (regTwo!33490 r!7292))) (= (regTwo!33491 (regTwo!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369655 lambda!369652))))

(declare-fun bs!1696379 () Bool)

(assert (= bs!1696379 (and b!6616699 b!6616563)))

(assert (=> bs!1696379 (not (= lambda!369655 lambda!369651))))

(declare-fun bs!1696380 () Bool)

(assert (= bs!1696380 (and b!6616699 b!6616281)))

(assert (=> bs!1696380 (= (and (= (reg!16818 (regTwo!33491 (regTwo!33490 r!7292))) (reg!16818 r!7292)) (= (regTwo!33491 (regTwo!33490 r!7292)) r!7292)) (= lambda!369655 lambda!369624))))

(declare-fun bs!1696381 () Bool)

(assert (= bs!1696381 (and b!6616699 b!6616571)))

(assert (=> bs!1696381 (= (and (= (reg!16818 (regTwo!33491 (regTwo!33490 r!7292))) (reg!16818 (regOne!33490 r!7292))) (= (regTwo!33491 (regTwo!33490 r!7292)) (regOne!33490 r!7292))) (= lambda!369655 lambda!369650))))

(declare-fun bs!1696382 () Bool)

(assert (= bs!1696382 (and b!6616699 d!2073894)))

(assert (=> bs!1696382 (not (= lambda!369655 lambda!369586))))

(declare-fun bs!1696383 () Bool)

(assert (= bs!1696383 (and b!6616699 b!6615856)))

(assert (=> bs!1696383 (not (= lambda!369655 lambda!369578))))

(assert (=> bs!1696383 (not (= lambda!369655 lambda!369577))))

(declare-fun bs!1696384 () Bool)

(assert (= bs!1696384 (and b!6616699 d!2073900)))

(assert (=> bs!1696384 (not (= lambda!369655 lambda!369595))))

(declare-fun bs!1696385 () Bool)

(assert (= bs!1696385 (and b!6616699 b!6616588)))

(assert (=> bs!1696385 (not (= lambda!369655 lambda!369653))))

(assert (=> bs!1696384 (not (= lambda!369655 lambda!369598))))

(declare-fun bs!1696386 () Bool)

(assert (= bs!1696386 (and b!6616699 b!6616273)))

(assert (=> bs!1696386 (not (= lambda!369655 lambda!369625))))

(assert (=> b!6616699 true))

(assert (=> b!6616699 true))

(declare-fun bs!1696387 () Bool)

(declare-fun b!6616691 () Bool)

(assert (= bs!1696387 (and b!6616691 b!6616596)))

(declare-fun lambda!369656 () Int)

(assert (=> bs!1696387 (not (= lambda!369656 lambda!369652))))

(declare-fun bs!1696388 () Bool)

(assert (= bs!1696388 (and b!6616691 b!6616563)))

(assert (=> bs!1696388 (= (and (= (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369656 lambda!369651))))

(declare-fun bs!1696389 () Bool)

(assert (= bs!1696389 (and b!6616691 b!6616281)))

(assert (=> bs!1696389 (not (= lambda!369656 lambda!369624))))

(declare-fun bs!1696390 () Bool)

(assert (= bs!1696390 (and b!6616691 b!6616571)))

(assert (=> bs!1696390 (not (= lambda!369656 lambda!369650))))

(declare-fun bs!1696391 () Bool)

(assert (= bs!1696391 (and b!6616691 d!2073894)))

(assert (=> bs!1696391 (not (= lambda!369656 lambda!369586))))

(declare-fun bs!1696392 () Bool)

(assert (= bs!1696392 (and b!6616691 b!6615856)))

(assert (=> bs!1696392 (= (and (= (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369656 lambda!369578))))

(declare-fun bs!1696393 () Bool)

(assert (= bs!1696393 (and b!6616691 b!6616699)))

(assert (=> bs!1696393 (not (= lambda!369656 lambda!369655))))

(assert (=> bs!1696392 (not (= lambda!369656 lambda!369577))))

(declare-fun bs!1696394 () Bool)

(assert (= bs!1696394 (and b!6616691 d!2073900)))

(assert (=> bs!1696394 (not (= lambda!369656 lambda!369595))))

(declare-fun bs!1696395 () Bool)

(assert (= bs!1696395 (and b!6616691 b!6616588)))

(assert (=> bs!1696395 (= (and (= (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369656 lambda!369653))))

(assert (=> bs!1696394 (= (and (= (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369656 lambda!369598))))

(declare-fun bs!1696396 () Bool)

(assert (= bs!1696396 (and b!6616691 b!6616273)))

(assert (=> bs!1696396 (= (and (= (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369656 lambda!369625))))

(assert (=> b!6616691 true))

(assert (=> b!6616691 true))

(declare-fun e!4002889 () Bool)

(declare-fun call!579769 () Bool)

(assert (=> b!6616691 (= e!4002889 call!579769)))

(declare-fun d!2074098 () Bool)

(declare-fun c!1219724 () Bool)

(assert (=> d!2074098 (= c!1219724 ((_ is EmptyExpr!16489) (regTwo!33491 (regTwo!33490 r!7292))))))

(declare-fun e!4002887 () Bool)

(assert (=> d!2074098 (= (matchRSpec!3590 (regTwo!33491 (regTwo!33490 r!7292)) s!2326) e!4002887)))

(declare-fun b!6616692 () Bool)

(declare-fun e!4002885 () Bool)

(assert (=> b!6616692 (= e!4002887 e!4002885)))

(declare-fun res!2713159 () Bool)

(assert (=> b!6616692 (= res!2713159 (not ((_ is EmptyLang!16489) (regTwo!33491 (regTwo!33490 r!7292)))))))

(assert (=> b!6616692 (=> (not res!2713159) (not e!4002885))))

(declare-fun b!6616693 () Bool)

(declare-fun c!1219723 () Bool)

(assert (=> b!6616693 (= c!1219723 ((_ is Union!16489) (regTwo!33491 (regTwo!33490 r!7292))))))

(declare-fun e!4002886 () Bool)

(declare-fun e!4002888 () Bool)

(assert (=> b!6616693 (= e!4002886 e!4002888)))

(declare-fun b!6616694 () Bool)

(declare-fun call!579770 () Bool)

(assert (=> b!6616694 (= e!4002887 call!579770)))

(declare-fun b!6616695 () Bool)

(declare-fun e!4002883 () Bool)

(assert (=> b!6616695 (= e!4002888 e!4002883)))

(declare-fun res!2713157 () Bool)

(assert (=> b!6616695 (= res!2713157 (matchRSpec!3590 (regOne!33491 (regTwo!33491 (regTwo!33490 r!7292))) s!2326))))

(assert (=> b!6616695 (=> res!2713157 e!4002883)))

(declare-fun b!6616696 () Bool)

(declare-fun c!1219721 () Bool)

(assert (=> b!6616696 (= c!1219721 ((_ is ElementMatch!16489) (regTwo!33491 (regTwo!33490 r!7292))))))

(assert (=> b!6616696 (= e!4002885 e!4002886)))

(declare-fun b!6616697 () Bool)

(declare-fun res!2713158 () Bool)

(declare-fun e!4002884 () Bool)

(assert (=> b!6616697 (=> res!2713158 e!4002884)))

(assert (=> b!6616697 (= res!2713158 call!579770)))

(assert (=> b!6616697 (= e!4002889 e!4002884)))

(declare-fun bm!579764 () Bool)

(assert (=> bm!579764 (= call!579770 (isEmpty!37931 s!2326))))

(declare-fun b!6616698 () Bool)

(assert (=> b!6616698 (= e!4002886 (= s!2326 (Cons!65644 (c!1219498 (regTwo!33491 (regTwo!33490 r!7292))) Nil!65644)))))

(assert (=> b!6616699 (= e!4002884 call!579769)))

(declare-fun b!6616700 () Bool)

(assert (=> b!6616700 (= e!4002883 (matchRSpec!3590 (regTwo!33491 (regTwo!33491 (regTwo!33490 r!7292))) s!2326))))

(declare-fun c!1219722 () Bool)

(declare-fun bm!579765 () Bool)

(assert (=> bm!579765 (= call!579769 (Exists!3559 (ite c!1219722 lambda!369655 lambda!369656)))))

(declare-fun b!6616701 () Bool)

(assert (=> b!6616701 (= e!4002888 e!4002889)))

(assert (=> b!6616701 (= c!1219722 ((_ is Star!16489) (regTwo!33491 (regTwo!33490 r!7292))))))

(assert (= (and d!2074098 c!1219724) b!6616694))

(assert (= (and d!2074098 (not c!1219724)) b!6616692))

(assert (= (and b!6616692 res!2713159) b!6616696))

(assert (= (and b!6616696 c!1219721) b!6616698))

(assert (= (and b!6616696 (not c!1219721)) b!6616693))

(assert (= (and b!6616693 c!1219723) b!6616695))

(assert (= (and b!6616693 (not c!1219723)) b!6616701))

(assert (= (and b!6616695 (not res!2713157)) b!6616700))

(assert (= (and b!6616701 c!1219722) b!6616697))

(assert (= (and b!6616701 (not c!1219722)) b!6616691))

(assert (= (and b!6616697 (not res!2713158)) b!6616699))

(assert (= (or b!6616699 b!6616691) bm!579765))

(assert (= (or b!6616694 b!6616697) bm!579764))

(declare-fun m!7389362 () Bool)

(assert (=> b!6616695 m!7389362))

(assert (=> bm!579764 m!7389100))

(declare-fun m!7389364 () Bool)

(assert (=> b!6616700 m!7389364))

(declare-fun m!7389366 () Bool)

(assert (=> bm!579765 m!7389366))

(assert (=> b!6616597 d!2074098))

(assert (=> b!6616154 d!2074016))

(declare-fun d!2074100 () Bool)

(assert (=> d!2074100 (= (nullable!6482 r!7292) (nullableFct!2403 r!7292))))

(declare-fun bs!1696397 () Bool)

(assert (= bs!1696397 d!2074100))

(declare-fun m!7389368 () Bool)

(assert (=> bs!1696397 m!7389368))

(assert (=> b!6616354 d!2074100))

(assert (=> b!6616510 d!2074030))

(declare-fun d!2074102 () Bool)

(declare-fun e!4002902 () Bool)

(assert (=> d!2074102 e!4002902))

(declare-fun res!2713173 () Bool)

(assert (=> d!2074102 (=> (not res!2713173) (not e!4002902))))

(declare-fun lt!2417595 () List!65768)

(declare-fun content!12668 (List!65768) (InoxSet C!33248))

(assert (=> d!2074102 (= res!2713173 (= (content!12668 lt!2417595) ((_ map or) (content!12668 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))) (content!12668 (t!379424 s!2326)))))))

(declare-fun e!4002903 () List!65768)

(assert (=> d!2074102 (= lt!2417595 e!4002903)))

(declare-fun c!1219731 () Bool)

(assert (=> d!2074102 (= c!1219731 ((_ is Nil!65644) (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))))))

(assert (=> d!2074102 (= (++!14638 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326)) lt!2417595)))

(declare-fun b!6616729 () Bool)

(assert (=> b!6616729 (= e!4002902 (or (not (= (t!379424 s!2326) Nil!65644)) (= lt!2417595 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)))))))

(declare-fun b!6616726 () Bool)

(assert (=> b!6616726 (= e!4002903 (t!379424 s!2326))))

(declare-fun b!6616727 () Bool)

(assert (=> b!6616727 (= e!4002903 (Cons!65644 (h!72092 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))) (++!14638 (t!379424 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))) (t!379424 s!2326))))))

(declare-fun b!6616728 () Bool)

(declare-fun res!2713172 () Bool)

(assert (=> b!6616728 (=> (not res!2713172) (not e!4002902))))

(declare-fun size!40550 (List!65768) Int)

(assert (=> b!6616728 (= res!2713172 (= (size!40550 lt!2417595) (+ (size!40550 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))) (size!40550 (t!379424 s!2326)))))))

(assert (= (and d!2074102 c!1219731) b!6616726))

(assert (= (and d!2074102 (not c!1219731)) b!6616727))

(assert (= (and d!2074102 res!2713173) b!6616728))

(assert (= (and b!6616728 res!2713172) b!6616729))

(declare-fun m!7389398 () Bool)

(assert (=> d!2074102 m!7389398))

(assert (=> d!2074102 m!7388856))

(declare-fun m!7389400 () Bool)

(assert (=> d!2074102 m!7389400))

(declare-fun m!7389402 () Bool)

(assert (=> d!2074102 m!7389402))

(declare-fun m!7389404 () Bool)

(assert (=> b!6616727 m!7389404))

(declare-fun m!7389406 () Bool)

(assert (=> b!6616728 m!7389406))

(assert (=> b!6616728 m!7388856))

(declare-fun m!7389408 () Bool)

(assert (=> b!6616728 m!7389408))

(declare-fun m!7389410 () Bool)

(assert (=> b!6616728 m!7389410))

(assert (=> b!6615921 d!2074102))

(declare-fun d!2074108 () Bool)

(declare-fun e!4002904 () Bool)

(assert (=> d!2074108 e!4002904))

(declare-fun res!2713175 () Bool)

(assert (=> d!2074108 (=> (not res!2713175) (not e!4002904))))

(declare-fun lt!2417596 () List!65768)

(assert (=> d!2074108 (= res!2713175 (= (content!12668 lt!2417596) ((_ map or) (content!12668 Nil!65644) (content!12668 (Cons!65644 (h!72092 s!2326) Nil!65644)))))))

(declare-fun e!4002905 () List!65768)

(assert (=> d!2074108 (= lt!2417596 e!4002905)))

(declare-fun c!1219732 () Bool)

(assert (=> d!2074108 (= c!1219732 ((_ is Nil!65644) Nil!65644))))

(assert (=> d!2074108 (= (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) lt!2417596)))

(declare-fun b!6616733 () Bool)

(assert (=> b!6616733 (= e!4002904 (or (not (= (Cons!65644 (h!72092 s!2326) Nil!65644) Nil!65644)) (= lt!2417596 Nil!65644)))))

(declare-fun b!6616730 () Bool)

(assert (=> b!6616730 (= e!4002905 (Cons!65644 (h!72092 s!2326) Nil!65644))))

(declare-fun b!6616731 () Bool)

(assert (=> b!6616731 (= e!4002905 (Cons!65644 (h!72092 Nil!65644) (++!14638 (t!379424 Nil!65644) (Cons!65644 (h!72092 s!2326) Nil!65644))))))

(declare-fun b!6616732 () Bool)

(declare-fun res!2713174 () Bool)

(assert (=> b!6616732 (=> (not res!2713174) (not e!4002904))))

(assert (=> b!6616732 (= res!2713174 (= (size!40550 lt!2417596) (+ (size!40550 Nil!65644) (size!40550 (Cons!65644 (h!72092 s!2326) Nil!65644)))))))

(assert (= (and d!2074108 c!1219732) b!6616730))

(assert (= (and d!2074108 (not c!1219732)) b!6616731))

(assert (= (and d!2074108 res!2713175) b!6616732))

(assert (= (and b!6616732 res!2713174) b!6616733))

(declare-fun m!7389412 () Bool)

(assert (=> d!2074108 m!7389412))

(declare-fun m!7389414 () Bool)

(assert (=> d!2074108 m!7389414))

(declare-fun m!7389416 () Bool)

(assert (=> d!2074108 m!7389416))

(declare-fun m!7389418 () Bool)

(assert (=> b!6616731 m!7389418))

(declare-fun m!7389420 () Bool)

(assert (=> b!6616732 m!7389420))

(declare-fun m!7389422 () Bool)

(assert (=> b!6616732 m!7389422))

(declare-fun m!7389424 () Bool)

(assert (=> b!6616732 m!7389424))

(assert (=> b!6615921 d!2074108))

(declare-fun d!2074110 () Bool)

(assert (=> d!2074110 (= (++!14638 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326)) s!2326)))

(declare-fun lt!2417602 () Unit!159311)

(declare-fun choose!49454 (List!65768 C!33248 List!65768 List!65768) Unit!159311)

(assert (=> d!2074110 (= lt!2417602 (choose!49454 Nil!65644 (h!72092 s!2326) (t!379424 s!2326) s!2326))))

(assert (=> d!2074110 (= (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) (t!379424 s!2326))) s!2326)))

(assert (=> d!2074110 (= (lemmaMoveElementToOtherListKeepsConcatEq!2627 Nil!65644 (h!72092 s!2326) (t!379424 s!2326) s!2326) lt!2417602)))

(declare-fun bs!1696399 () Bool)

(assert (= bs!1696399 d!2074110))

(assert (=> bs!1696399 m!7388856))

(assert (=> bs!1696399 m!7388856))

(assert (=> bs!1696399 m!7388858))

(declare-fun m!7389428 () Bool)

(assert (=> bs!1696399 m!7389428))

(declare-fun m!7389430 () Bool)

(assert (=> bs!1696399 m!7389430))

(assert (=> b!6615921 d!2074110))

(declare-fun b!6616734 () Bool)

(declare-fun res!2713179 () Bool)

(declare-fun e!4002910 () Bool)

(assert (=> b!6616734 (=> (not res!2713179) (not e!4002910))))

(declare-fun lt!2417603 () Option!16380)

(assert (=> b!6616734 (= res!2713179 (matchR!8672 (regTwo!33490 r!7292) (_2!36771 (get!22814 lt!2417603))))))

(declare-fun b!6616735 () Bool)

(declare-fun res!2713180 () Bool)

(assert (=> b!6616735 (=> (not res!2713180) (not e!4002910))))

(assert (=> b!6616735 (= res!2713180 (matchR!8672 (regOne!33490 r!7292) (_1!36771 (get!22814 lt!2417603))))))

(declare-fun b!6616736 () Bool)

(declare-fun e!4002908 () Option!16380)

(assert (=> b!6616736 (= e!4002908 None!16379)))

(declare-fun d!2074112 () Bool)

(declare-fun e!4002909 () Bool)

(assert (=> d!2074112 e!4002909))

(declare-fun res!2713177 () Bool)

(assert (=> d!2074112 (=> res!2713177 e!4002909)))

(assert (=> d!2074112 (= res!2713177 e!4002910)))

(declare-fun res!2713176 () Bool)

(assert (=> d!2074112 (=> (not res!2713176) (not e!4002910))))

(assert (=> d!2074112 (= res!2713176 (isDefined!13083 lt!2417603))))

(declare-fun e!4002907 () Option!16380)

(assert (=> d!2074112 (= lt!2417603 e!4002907)))

(declare-fun c!1219734 () Bool)

(declare-fun e!4002906 () Bool)

(assert (=> d!2074112 (= c!1219734 e!4002906)))

(declare-fun res!2713178 () Bool)

(assert (=> d!2074112 (=> (not res!2713178) (not e!4002906))))

(assert (=> d!2074112 (= res!2713178 (matchR!8672 (regOne!33490 r!7292) (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644))))))

(assert (=> d!2074112 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074112 (= (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326) s!2326) lt!2417603)))

(declare-fun b!6616737 () Bool)

(assert (=> b!6616737 (= e!4002910 (= (++!14638 (_1!36771 (get!22814 lt!2417603)) (_2!36771 (get!22814 lt!2417603))) s!2326))))

(declare-fun b!6616738 () Bool)

(assert (=> b!6616738 (= e!4002909 (not (isDefined!13083 lt!2417603)))))

(declare-fun b!6616739 () Bool)

(assert (=> b!6616739 (= e!4002906 (matchR!8672 (regTwo!33490 r!7292) (t!379424 s!2326)))))

(declare-fun b!6616740 () Bool)

(assert (=> b!6616740 (= e!4002907 (Some!16379 (tuple2!66937 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (t!379424 s!2326))))))

(declare-fun b!6616741 () Bool)

(assert (=> b!6616741 (= e!4002907 e!4002908)))

(declare-fun c!1219733 () Bool)

(assert (=> b!6616741 (= c!1219733 ((_ is Nil!65644) (t!379424 s!2326)))))

(declare-fun b!6616742 () Bool)

(declare-fun lt!2417604 () Unit!159311)

(declare-fun lt!2417605 () Unit!159311)

(assert (=> b!6616742 (= lt!2417604 lt!2417605)))

(assert (=> b!6616742 (= (++!14638 (++!14638 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (Cons!65644 (h!72092 (t!379424 s!2326)) Nil!65644)) (t!379424 (t!379424 s!2326))) s!2326)))

(assert (=> b!6616742 (= lt!2417605 (lemmaMoveElementToOtherListKeepsConcatEq!2627 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (h!72092 (t!379424 s!2326)) (t!379424 (t!379424 s!2326)) s!2326))))

(assert (=> b!6616742 (= e!4002908 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) (++!14638 (++!14638 Nil!65644 (Cons!65644 (h!72092 s!2326) Nil!65644)) (Cons!65644 (h!72092 (t!379424 s!2326)) Nil!65644)) (t!379424 (t!379424 s!2326)) s!2326))))

(assert (= (and d!2074112 res!2713178) b!6616739))

(assert (= (and d!2074112 c!1219734) b!6616740))

(assert (= (and d!2074112 (not c!1219734)) b!6616741))

(assert (= (and b!6616741 c!1219733) b!6616736))

(assert (= (and b!6616741 (not c!1219733)) b!6616742))

(assert (= (and d!2074112 res!2713176) b!6616735))

(assert (= (and b!6616735 res!2713180) b!6616734))

(assert (= (and b!6616734 res!2713179) b!6616737))

(assert (= (and d!2074112 (not res!2713177)) b!6616738))

(assert (=> b!6616742 m!7388856))

(declare-fun m!7389434 () Bool)

(assert (=> b!6616742 m!7389434))

(assert (=> b!6616742 m!7389434))

(declare-fun m!7389436 () Bool)

(assert (=> b!6616742 m!7389436))

(assert (=> b!6616742 m!7388856))

(declare-fun m!7389438 () Bool)

(assert (=> b!6616742 m!7389438))

(assert (=> b!6616742 m!7389434))

(declare-fun m!7389440 () Bool)

(assert (=> b!6616742 m!7389440))

(declare-fun m!7389442 () Bool)

(assert (=> b!6616734 m!7389442))

(declare-fun m!7389444 () Bool)

(assert (=> b!6616734 m!7389444))

(declare-fun m!7389446 () Bool)

(assert (=> b!6616739 m!7389446))

(assert (=> b!6616735 m!7389442))

(declare-fun m!7389448 () Bool)

(assert (=> b!6616735 m!7389448))

(declare-fun m!7389450 () Bool)

(assert (=> b!6616738 m!7389450))

(assert (=> b!6616737 m!7389442))

(declare-fun m!7389454 () Bool)

(assert (=> b!6616737 m!7389454))

(assert (=> d!2074112 m!7389450))

(assert (=> d!2074112 m!7388856))

(declare-fun m!7389458 () Bool)

(assert (=> d!2074112 m!7389458))

(assert (=> d!2074112 m!7388876))

(assert (=> b!6615921 d!2074112))

(declare-fun b!6616752 () Bool)

(declare-fun c!1219738 () Bool)

(declare-fun e!4002919 () Bool)

(assert (=> b!6616752 (= c!1219738 e!4002919)))

(declare-fun res!2713186 () Bool)

(assert (=> b!6616752 (=> (not res!2713186) (not e!4002919))))

(assert (=> b!6616752 (= res!2713186 ((_ is Concat!25334) (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun e!4002917 () (InoxSet Context!11746))

(declare-fun e!4002916 () (InoxSet Context!11746))

(assert (=> b!6616752 (= e!4002917 e!4002916)))

(declare-fun b!6616753 () Bool)

(declare-fun call!579772 () (InoxSet Context!11746))

(declare-fun call!579771 () (InoxSet Context!11746))

(assert (=> b!6616753 (= e!4002917 ((_ map or) call!579772 call!579771))))

(declare-fun bm!579766 () Bool)

(declare-fun call!579776 () (InoxSet Context!11746))

(assert (=> bm!579766 (= call!579776 call!579771)))

(declare-fun bm!579767 () Bool)

(declare-fun call!579774 () (InoxSet Context!11746))

(assert (=> bm!579767 (= call!579774 call!579776)))

(declare-fun call!579775 () List!65766)

(declare-fun bm!579769 () Bool)

(declare-fun c!1219739 () Bool)

(declare-fun c!1219740 () Bool)

(assert (=> bm!579769 (= call!579771 (derivationStepZipperDown!1737 (ite c!1219740 (regTwo!33491 (h!72090 (exprs!6373 lt!2417478))) (ite c!1219738 (regTwo!33490 (h!72090 (exprs!6373 lt!2417478))) (ite c!1219739 (regOne!33490 (h!72090 (exprs!6373 lt!2417478))) (reg!16818 (h!72090 (exprs!6373 lt!2417478)))))) (ite (or c!1219740 c!1219738) (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (Context!11747 call!579775)) (h!72092 s!2326)))))

(declare-fun b!6616754 () Bool)

(declare-fun e!4002918 () (InoxSet Context!11746))

(assert (=> b!6616754 (= e!4002918 (store ((as const (Array Context!11746 Bool)) false) (Context!11747 (t!379422 (exprs!6373 lt!2417478))) true))))

(declare-fun b!6616755 () Bool)

(declare-fun e!4002921 () (InoxSet Context!11746))

(assert (=> b!6616755 (= e!4002921 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616756 () Bool)

(assert (=> b!6616756 (= e!4002921 call!579774)))

(declare-fun bm!579770 () Bool)

(declare-fun call!579773 () List!65766)

(assert (=> bm!579770 (= call!579773 ($colon$colon!2326 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478)))) (ite (or c!1219738 c!1219739) (regTwo!33490 (h!72090 (exprs!6373 lt!2417478))) (h!72090 (exprs!6373 lt!2417478)))))))

(declare-fun b!6616757 () Bool)

(assert (=> b!6616757 (= e!4002916 ((_ map or) call!579772 call!579776))))

(declare-fun d!2074116 () Bool)

(declare-fun c!1219741 () Bool)

(assert (=> d!2074116 (= c!1219741 (and ((_ is ElementMatch!16489) (h!72090 (exprs!6373 lt!2417478))) (= (c!1219498 (h!72090 (exprs!6373 lt!2417478))) (h!72092 s!2326))))))

(assert (=> d!2074116 (= (derivationStepZipperDown!1737 (h!72090 (exprs!6373 lt!2417478)) (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (h!72092 s!2326)) e!4002918)))

(declare-fun bm!579768 () Bool)

(assert (=> bm!579768 (= call!579772 (derivationStepZipperDown!1737 (ite c!1219740 (regOne!33491 (h!72090 (exprs!6373 lt!2417478))) (regOne!33490 (h!72090 (exprs!6373 lt!2417478)))) (ite c!1219740 (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (Context!11747 call!579773)) (h!72092 s!2326)))))

(declare-fun b!6616758 () Bool)

(assert (=> b!6616758 (= e!4002919 (nullable!6482 (regOne!33490 (h!72090 (exprs!6373 lt!2417478)))))))

(declare-fun b!6616759 () Bool)

(declare-fun c!1219737 () Bool)

(assert (=> b!6616759 (= c!1219737 ((_ is Star!16489) (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun e!4002920 () (InoxSet Context!11746))

(assert (=> b!6616759 (= e!4002920 e!4002921)))

(declare-fun b!6616760 () Bool)

(assert (=> b!6616760 (= e!4002920 call!579774)))

(declare-fun b!6616761 () Bool)

(assert (=> b!6616761 (= e!4002918 e!4002917)))

(assert (=> b!6616761 (= c!1219740 ((_ is Union!16489) (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun bm!579771 () Bool)

(assert (=> bm!579771 (= call!579775 call!579773)))

(declare-fun b!6616762 () Bool)

(assert (=> b!6616762 (= e!4002916 e!4002920)))

(assert (=> b!6616762 (= c!1219739 ((_ is Concat!25334) (h!72090 (exprs!6373 lt!2417478))))))

(assert (= (and d!2074116 c!1219741) b!6616754))

(assert (= (and d!2074116 (not c!1219741)) b!6616761))

(assert (= (and b!6616761 c!1219740) b!6616753))

(assert (= (and b!6616761 (not c!1219740)) b!6616752))

(assert (= (and b!6616752 res!2713186) b!6616758))

(assert (= (and b!6616752 c!1219738) b!6616757))

(assert (= (and b!6616752 (not c!1219738)) b!6616762))

(assert (= (and b!6616762 c!1219739) b!6616760))

(assert (= (and b!6616762 (not c!1219739)) b!6616759))

(assert (= (and b!6616759 c!1219737) b!6616756))

(assert (= (and b!6616759 (not c!1219737)) b!6616755))

(assert (= (or b!6616760 b!6616756) bm!579771))

(assert (= (or b!6616760 b!6616756) bm!579767))

(assert (= (or b!6616757 bm!579771) bm!579770))

(assert (= (or b!6616757 bm!579767) bm!579766))

(assert (= (or b!6616753 bm!579766) bm!579769))

(assert (= (or b!6616753 b!6616757) bm!579768))

(declare-fun m!7389478 () Bool)

(assert (=> bm!579768 m!7389478))

(declare-fun m!7389480 () Bool)

(assert (=> bm!579769 m!7389480))

(declare-fun m!7389482 () Bool)

(assert (=> b!6616758 m!7389482))

(declare-fun m!7389484 () Bool)

(assert (=> bm!579770 m!7389484))

(declare-fun m!7389486 () Bool)

(assert (=> b!6616754 m!7389486))

(assert (=> bm!579728 d!2074116))

(assert (=> d!2074026 d!2074092))

(assert (=> bm!579720 d!2074096))

(declare-fun d!2074120 () Bool)

(assert (=> d!2074120 (= (isEmpty!37931 (tail!12507 s!2326)) ((_ is Nil!65644) (tail!12507 s!2326)))))

(assert (=> b!6616347 d!2074120))

(declare-fun d!2074122 () Bool)

(assert (=> d!2074122 (= (tail!12507 s!2326) (t!379424 s!2326))))

(assert (=> b!6616347 d!2074122))

(declare-fun d!2074126 () Bool)

(declare-fun res!2713187 () Bool)

(declare-fun e!4002922 () Bool)

(assert (=> d!2074126 (=> res!2713187 e!4002922)))

(assert (=> d!2074126 (= res!2713187 ((_ is Nil!65642) (exprs!6373 (h!72091 zl!343))))))

(assert (=> d!2074126 (= (forall!15685 (exprs!6373 (h!72091 zl!343)) lambda!369645) e!4002922)))

(declare-fun b!6616763 () Bool)

(declare-fun e!4002923 () Bool)

(assert (=> b!6616763 (= e!4002922 e!4002923)))

(declare-fun res!2713188 () Bool)

(assert (=> b!6616763 (=> (not res!2713188) (not e!4002923))))

(assert (=> b!6616763 (= res!2713188 (dynLambda!26143 lambda!369645 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6616764 () Bool)

(assert (=> b!6616764 (= e!4002923 (forall!15685 (t!379422 (exprs!6373 (h!72091 zl!343))) lambda!369645))))

(assert (= (and d!2074126 (not res!2713187)) b!6616763))

(assert (= (and b!6616763 res!2713188) b!6616764))

(declare-fun b_lambda!250245 () Bool)

(assert (=> (not b_lambda!250245) (not b!6616763)))

(declare-fun m!7389488 () Bool)

(assert (=> b!6616763 m!7389488))

(declare-fun m!7389490 () Bool)

(assert (=> b!6616764 m!7389490))

(assert (=> d!2074036 d!2074126))

(declare-fun b!6616765 () Bool)

(declare-fun e!4002929 () Bool)

(declare-fun e!4002928 () Bool)

(assert (=> b!6616765 (= e!4002929 e!4002928)))

(declare-fun res!2713192 () Bool)

(assert (=> b!6616765 (=> res!2713192 e!4002928)))

(declare-fun call!579777 () Bool)

(assert (=> b!6616765 (= res!2713192 call!579777)))

(declare-fun b!6616766 () Bool)

(declare-fun res!2713191 () Bool)

(declare-fun e!4002926 () Bool)

(assert (=> b!6616766 (=> (not res!2713191) (not e!4002926))))

(assert (=> b!6616766 (= res!2713191 (not call!579777))))

(declare-fun b!6616767 () Bool)

(declare-fun e!4002927 () Bool)

(declare-fun lt!2417609 () Bool)

(assert (=> b!6616767 (= e!4002927 (= lt!2417609 call!579777))))

(declare-fun b!6616768 () Bool)

(declare-fun e!4002924 () Bool)

(assert (=> b!6616768 (= e!4002924 (not lt!2417609))))

(declare-fun b!6616769 () Bool)

(declare-fun res!2713196 () Bool)

(assert (=> b!6616769 (=> (not res!2713196) (not e!4002926))))

(assert (=> b!6616769 (= res!2713196 (isEmpty!37931 (tail!12507 (_2!36771 (get!22814 lt!2417498)))))))

(declare-fun b!6616770 () Bool)

(assert (=> b!6616770 (= e!4002927 e!4002924)))

(declare-fun c!1219744 () Bool)

(assert (=> b!6616770 (= c!1219744 ((_ is EmptyLang!16489) (regTwo!33490 r!7292)))))

(declare-fun b!6616771 () Bool)

(declare-fun res!2713193 () Bool)

(declare-fun e!4002930 () Bool)

(assert (=> b!6616771 (=> res!2713193 e!4002930)))

(assert (=> b!6616771 (= res!2713193 e!4002926)))

(declare-fun res!2713189 () Bool)

(assert (=> b!6616771 (=> (not res!2713189) (not e!4002926))))

(assert (=> b!6616771 (= res!2713189 lt!2417609)))

(declare-fun bm!579772 () Bool)

(assert (=> bm!579772 (= call!579777 (isEmpty!37931 (_2!36771 (get!22814 lt!2417498))))))

(declare-fun b!6616772 () Bool)

(declare-fun e!4002925 () Bool)

(assert (=> b!6616772 (= e!4002925 (matchR!8672 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 (_2!36771 (get!22814 lt!2417498)))) (tail!12507 (_2!36771 (get!22814 lt!2417498)))))))

(declare-fun d!2074128 () Bool)

(assert (=> d!2074128 e!4002927))

(declare-fun c!1219742 () Bool)

(assert (=> d!2074128 (= c!1219742 ((_ is EmptyExpr!16489) (regTwo!33490 r!7292)))))

(assert (=> d!2074128 (= lt!2417609 e!4002925)))

(declare-fun c!1219743 () Bool)

(assert (=> d!2074128 (= c!1219743 (isEmpty!37931 (_2!36771 (get!22814 lt!2417498))))))

(assert (=> d!2074128 (validRegex!8225 (regTwo!33490 r!7292))))

(assert (=> d!2074128 (= (matchR!8672 (regTwo!33490 r!7292) (_2!36771 (get!22814 lt!2417498))) lt!2417609)))

(declare-fun b!6616773 () Bool)

(declare-fun res!2713190 () Bool)

(assert (=> b!6616773 (=> res!2713190 e!4002928)))

(assert (=> b!6616773 (= res!2713190 (not (isEmpty!37931 (tail!12507 (_2!36771 (get!22814 lt!2417498))))))))

(declare-fun b!6616774 () Bool)

(assert (=> b!6616774 (= e!4002928 (not (= (head!13422 (_2!36771 (get!22814 lt!2417498))) (c!1219498 (regTwo!33490 r!7292)))))))

(declare-fun b!6616775 () Bool)

(assert (=> b!6616775 (= e!4002930 e!4002929)))

(declare-fun res!2713194 () Bool)

(assert (=> b!6616775 (=> (not res!2713194) (not e!4002929))))

(assert (=> b!6616775 (= res!2713194 (not lt!2417609))))

(declare-fun b!6616776 () Bool)

(assert (=> b!6616776 (= e!4002925 (nullable!6482 (regTwo!33490 r!7292)))))

(declare-fun b!6616777 () Bool)

(declare-fun res!2713195 () Bool)

(assert (=> b!6616777 (=> res!2713195 e!4002930)))

(assert (=> b!6616777 (= res!2713195 (not ((_ is ElementMatch!16489) (regTwo!33490 r!7292))))))

(assert (=> b!6616777 (= e!4002924 e!4002930)))

(declare-fun b!6616778 () Bool)

(assert (=> b!6616778 (= e!4002926 (= (head!13422 (_2!36771 (get!22814 lt!2417498))) (c!1219498 (regTwo!33490 r!7292))))))

(assert (= (and d!2074128 c!1219743) b!6616776))

(assert (= (and d!2074128 (not c!1219743)) b!6616772))

(assert (= (and d!2074128 c!1219742) b!6616767))

(assert (= (and d!2074128 (not c!1219742)) b!6616770))

(assert (= (and b!6616770 c!1219744) b!6616768))

(assert (= (and b!6616770 (not c!1219744)) b!6616777))

(assert (= (and b!6616777 (not res!2713195)) b!6616771))

(assert (= (and b!6616771 res!2713189) b!6616766))

(assert (= (and b!6616766 res!2713191) b!6616769))

(assert (= (and b!6616769 res!2713196) b!6616778))

(assert (= (and b!6616771 (not res!2713193)) b!6616775))

(assert (= (and b!6616775 res!2713194) b!6616765))

(assert (= (and b!6616765 (not res!2713192)) b!6616773))

(assert (= (and b!6616773 (not res!2713190)) b!6616774))

(assert (= (or b!6616767 b!6616765 b!6616766) bm!579772))

(declare-fun m!7389492 () Bool)

(assert (=> b!6616778 m!7389492))

(declare-fun m!7389494 () Bool)

(assert (=> bm!579772 m!7389494))

(declare-fun m!7389496 () Bool)

(assert (=> b!6616773 m!7389496))

(assert (=> b!6616773 m!7389496))

(declare-fun m!7389498 () Bool)

(assert (=> b!6616773 m!7389498))

(assert (=> b!6616769 m!7389496))

(assert (=> b!6616769 m!7389496))

(assert (=> b!6616769 m!7389498))

(assert (=> b!6616776 m!7389314))

(assert (=> b!6616774 m!7389492))

(assert (=> b!6616772 m!7389492))

(assert (=> b!6616772 m!7389492))

(declare-fun m!7389500 () Bool)

(assert (=> b!6616772 m!7389500))

(assert (=> b!6616772 m!7389496))

(assert (=> b!6616772 m!7389500))

(assert (=> b!6616772 m!7389496))

(declare-fun m!7389502 () Bool)

(assert (=> b!6616772 m!7389502))

(assert (=> d!2074128 m!7389494))

(assert (=> d!2074128 m!7389320))

(assert (=> b!6615913 d!2074128))

(declare-fun d!2074130 () Bool)

(assert (=> d!2074130 (= (get!22814 lt!2417498) (v!52568 lt!2417498))))

(assert (=> b!6615913 d!2074130))

(declare-fun d!2074134 () Bool)

(assert (=> d!2074134 (= (isDefined!13083 lt!2417498) (not (isEmpty!37930 lt!2417498)))))

(declare-fun bs!1696401 () Bool)

(assert (= bs!1696401 d!2074134))

(declare-fun m!7389504 () Bool)

(assert (=> bs!1696401 m!7389504))

(assert (=> b!6615917 d!2074134))

(declare-fun d!2074136 () Bool)

(assert (=> d!2074136 (= (isEmpty!37928 (t!379422 (unfocusZipperList!1910 zl!343))) ((_ is Nil!65642) (t!379422 (unfocusZipperList!1910 zl!343))))))

(assert (=> b!6616547 d!2074136))

(declare-fun d!2074138 () Bool)

(declare-fun c!1219745 () Bool)

(assert (=> d!2074138 (= c!1219745 (isEmpty!37931 (tail!12507 (t!379424 s!2326))))))

(declare-fun e!4002931 () Bool)

(assert (=> d!2074138 (= (matchZipper!2501 (derivationStepZipper!2455 ((_ map or) lt!2417476 lt!2417481) (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))) e!4002931)))

(declare-fun b!6616779 () Bool)

(assert (=> b!6616779 (= e!4002931 (nullableZipper!2230 (derivationStepZipper!2455 ((_ map or) lt!2417476 lt!2417481) (head!13422 (t!379424 s!2326)))))))

(declare-fun b!6616780 () Bool)

(assert (=> b!6616780 (= e!4002931 (matchZipper!2501 (derivationStepZipper!2455 (derivationStepZipper!2455 ((_ map or) lt!2417476 lt!2417481) (head!13422 (t!379424 s!2326))) (head!13422 (tail!12507 (t!379424 s!2326)))) (tail!12507 (tail!12507 (t!379424 s!2326)))))))

(assert (= (and d!2074138 c!1219745) b!6616779))

(assert (= (and d!2074138 (not c!1219745)) b!6616780))

(assert (=> d!2074138 m!7389226))

(declare-fun m!7389506 () Bool)

(assert (=> d!2074138 m!7389506))

(assert (=> b!6616779 m!7389232))

(declare-fun m!7389508 () Bool)

(assert (=> b!6616779 m!7389508))

(assert (=> b!6616780 m!7389226))

(declare-fun m!7389510 () Bool)

(assert (=> b!6616780 m!7389510))

(assert (=> b!6616780 m!7389232))

(assert (=> b!6616780 m!7389510))

(declare-fun m!7389512 () Bool)

(assert (=> b!6616780 m!7389512))

(assert (=> b!6616780 m!7389226))

(declare-fun m!7389514 () Bool)

(assert (=> b!6616780 m!7389514))

(assert (=> b!6616780 m!7389512))

(assert (=> b!6616780 m!7389514))

(declare-fun m!7389516 () Bool)

(assert (=> b!6616780 m!7389516))

(assert (=> b!6616518 d!2074138))

(declare-fun bs!1696403 () Bool)

(declare-fun d!2074142 () Bool)

(assert (= bs!1696403 (and d!2074142 b!6615850)))

(declare-fun lambda!369657 () Int)

(assert (=> bs!1696403 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369657 lambda!369579))))

(declare-fun bs!1696404 () Bool)

(assert (= bs!1696404 (and d!2074142 d!2074042)))

(assert (=> bs!1696404 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369657 lambda!369648))))

(declare-fun bs!1696405 () Bool)

(assert (= bs!1696405 (and d!2074142 d!2074048)))

(assert (=> bs!1696405 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369657 lambda!369649))))

(assert (=> d!2074142 true))

(assert (=> d!2074142 (= (derivationStepZipper!2455 ((_ map or) lt!2417476 lt!2417481) (head!13422 (t!379424 s!2326))) (flatMap!1994 ((_ map or) lt!2417476 lt!2417481) lambda!369657))))

(declare-fun bs!1696406 () Bool)

(assert (= bs!1696406 d!2074142))

(declare-fun m!7389518 () Bool)

(assert (=> bs!1696406 m!7389518))

(assert (=> b!6616518 d!2074142))

(declare-fun d!2074146 () Bool)

(assert (=> d!2074146 (= (head!13422 (t!379424 s!2326)) (h!72092 (t!379424 s!2326)))))

(assert (=> b!6616518 d!2074146))

(declare-fun d!2074148 () Bool)

(assert (=> d!2074148 (= (tail!12507 (t!379424 s!2326)) (t!379424 (t!379424 s!2326)))))

(assert (=> b!6616518 d!2074148))

(declare-fun d!2074150 () Bool)

(assert (=> d!2074150 (= (Exists!3559 (ite c!1219626 lambda!369624 lambda!369625)) (choose!49438 (ite c!1219626 lambda!369624 lambda!369625)))))

(declare-fun bs!1696407 () Bool)

(assert (= bs!1696407 d!2074150))

(declare-fun m!7389520 () Bool)

(assert (=> bs!1696407 m!7389520))

(assert (=> bm!579721 d!2074150))

(declare-fun b!6616790 () Bool)

(declare-fun e!4002944 () Bool)

(declare-fun e!4002943 () Bool)

(assert (=> b!6616790 (= e!4002944 e!4002943)))

(declare-fun res!2713205 () Bool)

(assert (=> b!6616790 (=> res!2713205 e!4002943)))

(declare-fun call!579781 () Bool)

(assert (=> b!6616790 (= res!2713205 call!579781)))

(declare-fun b!6616791 () Bool)

(declare-fun res!2713204 () Bool)

(declare-fun e!4002941 () Bool)

(assert (=> b!6616791 (=> (not res!2713204) (not e!4002941))))

(assert (=> b!6616791 (= res!2713204 (not call!579781))))

(declare-fun b!6616792 () Bool)

(declare-fun e!4002942 () Bool)

(declare-fun lt!2417610 () Bool)

(assert (=> b!6616792 (= e!4002942 (= lt!2417610 call!579781))))

(declare-fun b!6616793 () Bool)

(declare-fun e!4002939 () Bool)

(assert (=> b!6616793 (= e!4002939 (not lt!2417610))))

(declare-fun b!6616794 () Bool)

(declare-fun res!2713209 () Bool)

(assert (=> b!6616794 (=> (not res!2713209) (not e!4002941))))

(assert (=> b!6616794 (= res!2713209 (isEmpty!37931 (tail!12507 (tail!12507 s!2326))))))

(declare-fun b!6616795 () Bool)

(assert (=> b!6616795 (= e!4002942 e!4002939)))

(declare-fun c!1219750 () Bool)

(assert (=> b!6616795 (= c!1219750 ((_ is EmptyLang!16489) (derivativeStep!5169 r!7292 (head!13422 s!2326))))))

(declare-fun b!6616796 () Bool)

(declare-fun res!2713206 () Bool)

(declare-fun e!4002945 () Bool)

(assert (=> b!6616796 (=> res!2713206 e!4002945)))

(assert (=> b!6616796 (= res!2713206 e!4002941)))

(declare-fun res!2713202 () Bool)

(assert (=> b!6616796 (=> (not res!2713202) (not e!4002941))))

(assert (=> b!6616796 (= res!2713202 lt!2417610)))

(declare-fun bm!579776 () Bool)

(assert (=> bm!579776 (= call!579781 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6616797 () Bool)

(declare-fun e!4002940 () Bool)

(assert (=> b!6616797 (= e!4002940 (matchR!8672 (derivativeStep!5169 (derivativeStep!5169 r!7292 (head!13422 s!2326)) (head!13422 (tail!12507 s!2326))) (tail!12507 (tail!12507 s!2326))))))

(declare-fun d!2074152 () Bool)

(assert (=> d!2074152 e!4002942))

(declare-fun c!1219748 () Bool)

(assert (=> d!2074152 (= c!1219748 ((_ is EmptyExpr!16489) (derivativeStep!5169 r!7292 (head!13422 s!2326))))))

(assert (=> d!2074152 (= lt!2417610 e!4002940)))

(declare-fun c!1219749 () Bool)

(assert (=> d!2074152 (= c!1219749 (isEmpty!37931 (tail!12507 s!2326)))))

(assert (=> d!2074152 (validRegex!8225 (derivativeStep!5169 r!7292 (head!13422 s!2326)))))

(assert (=> d!2074152 (= (matchR!8672 (derivativeStep!5169 r!7292 (head!13422 s!2326)) (tail!12507 s!2326)) lt!2417610)))

(declare-fun b!6616798 () Bool)

(declare-fun res!2713203 () Bool)

(assert (=> b!6616798 (=> res!2713203 e!4002943)))

(assert (=> b!6616798 (= res!2713203 (not (isEmpty!37931 (tail!12507 (tail!12507 s!2326)))))))

(declare-fun b!6616799 () Bool)

(assert (=> b!6616799 (= e!4002943 (not (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 r!7292 (head!13422 s!2326))))))))

(declare-fun b!6616800 () Bool)

(assert (=> b!6616800 (= e!4002945 e!4002944)))

(declare-fun res!2713207 () Bool)

(assert (=> b!6616800 (=> (not res!2713207) (not e!4002944))))

(assert (=> b!6616800 (= res!2713207 (not lt!2417610))))

(declare-fun b!6616801 () Bool)

(assert (=> b!6616801 (= e!4002940 (nullable!6482 (derivativeStep!5169 r!7292 (head!13422 s!2326))))))

(declare-fun b!6616802 () Bool)

(declare-fun res!2713208 () Bool)

(assert (=> b!6616802 (=> res!2713208 e!4002945)))

(assert (=> b!6616802 (= res!2713208 (not ((_ is ElementMatch!16489) (derivativeStep!5169 r!7292 (head!13422 s!2326)))))))

(assert (=> b!6616802 (= e!4002939 e!4002945)))

(declare-fun b!6616803 () Bool)

(assert (=> b!6616803 (= e!4002941 (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 r!7292 (head!13422 s!2326)))))))

(assert (= (and d!2074152 c!1219749) b!6616801))

(assert (= (and d!2074152 (not c!1219749)) b!6616797))

(assert (= (and d!2074152 c!1219748) b!6616792))

(assert (= (and d!2074152 (not c!1219748)) b!6616795))

(assert (= (and b!6616795 c!1219750) b!6616793))

(assert (= (and b!6616795 (not c!1219750)) b!6616802))

(assert (= (and b!6616802 (not res!2713208)) b!6616796))

(assert (= (and b!6616796 res!2713202) b!6616791))

(assert (= (and b!6616791 res!2713204) b!6616794))

(assert (= (and b!6616794 res!2713209) b!6616803))

(assert (= (and b!6616796 (not res!2713206)) b!6616800))

(assert (= (and b!6616800 res!2713207) b!6616790))

(assert (= (and b!6616790 (not res!2713205)) b!6616798))

(assert (= (and b!6616798 (not res!2713203)) b!6616799))

(assert (= (or b!6616792 b!6616790 b!6616791) bm!579776))

(assert (=> b!6616803 m!7389136))

(declare-fun m!7389528 () Bool)

(assert (=> b!6616803 m!7389528))

(assert (=> bm!579776 m!7389136))

(assert (=> bm!579776 m!7389138))

(assert (=> b!6616798 m!7389136))

(declare-fun m!7389530 () Bool)

(assert (=> b!6616798 m!7389530))

(assert (=> b!6616798 m!7389530))

(declare-fun m!7389532 () Bool)

(assert (=> b!6616798 m!7389532))

(assert (=> b!6616794 m!7389136))

(assert (=> b!6616794 m!7389530))

(assert (=> b!6616794 m!7389530))

(assert (=> b!6616794 m!7389532))

(assert (=> b!6616801 m!7389142))

(declare-fun m!7389534 () Bool)

(assert (=> b!6616801 m!7389534))

(assert (=> b!6616799 m!7389136))

(assert (=> b!6616799 m!7389528))

(assert (=> b!6616797 m!7389136))

(assert (=> b!6616797 m!7389528))

(assert (=> b!6616797 m!7389142))

(assert (=> b!6616797 m!7389528))

(declare-fun m!7389536 () Bool)

(assert (=> b!6616797 m!7389536))

(assert (=> b!6616797 m!7389136))

(assert (=> b!6616797 m!7389530))

(assert (=> b!6616797 m!7389536))

(assert (=> b!6616797 m!7389530))

(declare-fun m!7389538 () Bool)

(assert (=> b!6616797 m!7389538))

(assert (=> d!2074152 m!7389136))

(assert (=> d!2074152 m!7389138))

(assert (=> d!2074152 m!7389142))

(declare-fun m!7389540 () Bool)

(assert (=> d!2074152 m!7389540))

(assert (=> b!6616350 d!2074152))

(declare-fun b!6616859 () Bool)

(declare-fun e!4002985 () Regex!16489)

(declare-fun e!4002981 () Regex!16489)

(assert (=> b!6616859 (= e!4002985 e!4002981)))

(declare-fun c!1219769 () Bool)

(assert (=> b!6616859 (= c!1219769 ((_ is ElementMatch!16489) r!7292))))

(declare-fun e!4002982 () Regex!16489)

(declare-fun call!579800 () Regex!16489)

(declare-fun call!579797 () Regex!16489)

(declare-fun b!6616860 () Bool)

(assert (=> b!6616860 (= e!4002982 (Union!16489 (Concat!25334 call!579797 (regTwo!33490 r!7292)) call!579800))))

(declare-fun d!2074156 () Bool)

(declare-fun lt!2417614 () Regex!16489)

(assert (=> d!2074156 (validRegex!8225 lt!2417614)))

(assert (=> d!2074156 (= lt!2417614 e!4002985)))

(declare-fun c!1219770 () Bool)

(assert (=> d!2074156 (= c!1219770 (or ((_ is EmptyExpr!16489) r!7292) ((_ is EmptyLang!16489) r!7292)))))

(assert (=> d!2074156 (validRegex!8225 r!7292)))

(assert (=> d!2074156 (= (derivativeStep!5169 r!7292 (head!13422 s!2326)) lt!2417614)))

(declare-fun bm!579792 () Bool)

(declare-fun c!1219771 () Bool)

(assert (=> bm!579792 (= call!579797 (derivativeStep!5169 (ite c!1219771 (regOne!33491 r!7292) (regOne!33490 r!7292)) (head!13422 s!2326)))))

(declare-fun c!1219767 () Bool)

(declare-fun call!579799 () Regex!16489)

(declare-fun c!1219768 () Bool)

(declare-fun bm!579793 () Bool)

(assert (=> bm!579793 (= call!579799 (derivativeStep!5169 (ite c!1219771 (regTwo!33491 r!7292) (ite c!1219767 (reg!16818 r!7292) (ite c!1219768 (regTwo!33490 r!7292) (regOne!33490 r!7292)))) (head!13422 s!2326)))))

(declare-fun b!6616861 () Bool)

(declare-fun e!4002983 () Regex!16489)

(declare-fun e!4002984 () Regex!16489)

(assert (=> b!6616861 (= e!4002983 e!4002984)))

(assert (=> b!6616861 (= c!1219767 ((_ is Star!16489) r!7292))))

(declare-fun b!6616862 () Bool)

(assert (=> b!6616862 (= e!4002985 EmptyLang!16489)))

(declare-fun b!6616863 () Bool)

(assert (=> b!6616863 (= c!1219771 ((_ is Union!16489) r!7292))))

(assert (=> b!6616863 (= e!4002981 e!4002983)))

(declare-fun b!6616864 () Bool)

(assert (=> b!6616864 (= e!4002982 (Union!16489 (Concat!25334 call!579800 (regTwo!33490 r!7292)) EmptyLang!16489))))

(declare-fun bm!579794 () Bool)

(declare-fun call!579798 () Regex!16489)

(assert (=> bm!579794 (= call!579800 call!579798)))

(declare-fun b!6616865 () Bool)

(assert (=> b!6616865 (= e!4002984 (Concat!25334 call!579798 r!7292))))

(declare-fun b!6616866 () Bool)

(assert (=> b!6616866 (= e!4002983 (Union!16489 call!579797 call!579799))))

(declare-fun bm!579795 () Bool)

(assert (=> bm!579795 (= call!579798 call!579799)))

(declare-fun b!6616867 () Bool)

(assert (=> b!6616867 (= e!4002981 (ite (= (head!13422 s!2326) (c!1219498 r!7292)) EmptyExpr!16489 EmptyLang!16489))))

(declare-fun b!6616868 () Bool)

(assert (=> b!6616868 (= c!1219768 (nullable!6482 (regOne!33490 r!7292)))))

(assert (=> b!6616868 (= e!4002984 e!4002982)))

(assert (= (and d!2074156 c!1219770) b!6616862))

(assert (= (and d!2074156 (not c!1219770)) b!6616859))

(assert (= (and b!6616859 c!1219769) b!6616867))

(assert (= (and b!6616859 (not c!1219769)) b!6616863))

(assert (= (and b!6616863 c!1219771) b!6616866))

(assert (= (and b!6616863 (not c!1219771)) b!6616861))

(assert (= (and b!6616861 c!1219767) b!6616865))

(assert (= (and b!6616861 (not c!1219767)) b!6616868))

(assert (= (and b!6616868 c!1219768) b!6616860))

(assert (= (and b!6616868 (not c!1219768)) b!6616864))

(assert (= (or b!6616860 b!6616864) bm!579794))

(assert (= (or b!6616865 bm!579794) bm!579795))

(assert (= (or b!6616866 bm!579795) bm!579793))

(assert (= (or b!6616866 b!6616860) bm!579792))

(declare-fun m!7389548 () Bool)

(assert (=> d!2074156 m!7389548))

(assert (=> d!2074156 m!7388840))

(assert (=> bm!579792 m!7389134))

(declare-fun m!7389550 () Bool)

(assert (=> bm!579792 m!7389550))

(assert (=> bm!579793 m!7389134))

(declare-fun m!7389552 () Bool)

(assert (=> bm!579793 m!7389552))

(assert (=> b!6616868 m!7389302))

(assert (=> b!6616350 d!2074156))

(declare-fun d!2074166 () Bool)

(assert (=> d!2074166 (= (head!13422 s!2326) (h!72092 s!2326))))

(assert (=> b!6616350 d!2074166))

(assert (=> b!6616350 d!2074122))

(declare-fun d!2074168 () Bool)

(declare-fun res!2713234 () Bool)

(declare-fun e!4002990 () Bool)

(assert (=> d!2074168 (=> res!2713234 e!4002990)))

(assert (=> d!2074168 (= res!2713234 ((_ is ElementMatch!16489) lt!2417584))))

(assert (=> d!2074168 (= (validRegex!8225 lt!2417584) e!4002990)))

(declare-fun b!6616869 () Bool)

(declare-fun e!4002988 () Bool)

(declare-fun e!4002991 () Bool)

(assert (=> b!6616869 (= e!4002988 e!4002991)))

(declare-fun c!1219773 () Bool)

(assert (=> b!6616869 (= c!1219773 ((_ is Union!16489) lt!2417584))))

(declare-fun b!6616870 () Bool)

(declare-fun e!4002987 () Bool)

(declare-fun call!579803 () Bool)

(assert (=> b!6616870 (= e!4002987 call!579803)))

(declare-fun c!1219772 () Bool)

(declare-fun call!579802 () Bool)

(declare-fun bm!579796 () Bool)

(assert (=> bm!579796 (= call!579802 (validRegex!8225 (ite c!1219772 (reg!16818 lt!2417584) (ite c!1219773 (regTwo!33491 lt!2417584) (regTwo!33490 lt!2417584)))))))

(declare-fun b!6616871 () Bool)

(declare-fun e!4002989 () Bool)

(assert (=> b!6616871 (= e!4002989 call!579803)))

(declare-fun bm!579797 () Bool)

(declare-fun call!579801 () Bool)

(assert (=> bm!579797 (= call!579801 (validRegex!8225 (ite c!1219773 (regOne!33491 lt!2417584) (regOne!33490 lt!2417584))))))

(declare-fun b!6616872 () Bool)

(declare-fun res!2713237 () Bool)

(declare-fun e!4002992 () Bool)

(assert (=> b!6616872 (=> res!2713237 e!4002992)))

(assert (=> b!6616872 (= res!2713237 (not ((_ is Concat!25334) lt!2417584)))))

(assert (=> b!6616872 (= e!4002991 e!4002992)))

(declare-fun b!6616873 () Bool)

(assert (=> b!6616873 (= e!4002992 e!4002989)))

(declare-fun res!2713235 () Bool)

(assert (=> b!6616873 (=> (not res!2713235) (not e!4002989))))

(assert (=> b!6616873 (= res!2713235 call!579801)))

(declare-fun b!6616874 () Bool)

(assert (=> b!6616874 (= e!4002990 e!4002988)))

(assert (=> b!6616874 (= c!1219772 ((_ is Star!16489) lt!2417584))))

(declare-fun b!6616875 () Bool)

(declare-fun e!4002986 () Bool)

(assert (=> b!6616875 (= e!4002988 e!4002986)))

(declare-fun res!2713233 () Bool)

(assert (=> b!6616875 (= res!2713233 (not (nullable!6482 (reg!16818 lt!2417584))))))

(assert (=> b!6616875 (=> (not res!2713233) (not e!4002986))))

(declare-fun b!6616876 () Bool)

(assert (=> b!6616876 (= e!4002986 call!579802)))

(declare-fun b!6616877 () Bool)

(declare-fun res!2713236 () Bool)

(assert (=> b!6616877 (=> (not res!2713236) (not e!4002987))))

(assert (=> b!6616877 (= res!2713236 call!579801)))

(assert (=> b!6616877 (= e!4002991 e!4002987)))

(declare-fun bm!579798 () Bool)

(assert (=> bm!579798 (= call!579803 call!579802)))

(assert (= (and d!2074168 (not res!2713234)) b!6616874))

(assert (= (and b!6616874 c!1219772) b!6616875))

(assert (= (and b!6616874 (not c!1219772)) b!6616869))

(assert (= (and b!6616875 res!2713233) b!6616876))

(assert (= (and b!6616869 c!1219773) b!6616877))

(assert (= (and b!6616869 (not c!1219773)) b!6616872))

(assert (= (and b!6616877 res!2713236) b!6616870))

(assert (= (and b!6616872 (not res!2713237)) b!6616873))

(assert (= (and b!6616873 res!2713235) b!6616871))

(assert (= (or b!6616870 b!6616871) bm!579798))

(assert (= (or b!6616877 b!6616873) bm!579797))

(assert (= (or b!6616876 bm!579798) bm!579796))

(declare-fun m!7389560 () Bool)

(assert (=> bm!579796 m!7389560))

(declare-fun m!7389562 () Bool)

(assert (=> bm!579797 m!7389562))

(declare-fun m!7389564 () Bool)

(assert (=> b!6616875 m!7389564))

(assert (=> d!2074050 d!2074168))

(assert (=> d!2074050 d!2074032))

(assert (=> d!2074050 d!2074034))

(declare-fun b!6616878 () Bool)

(declare-fun c!1219775 () Bool)

(declare-fun e!4002996 () Bool)

(assert (=> b!6616878 (= c!1219775 e!4002996)))

(declare-fun res!2713238 () Bool)

(assert (=> b!6616878 (=> (not res!2713238) (not e!4002996))))

(assert (=> b!6616878 (= res!2713238 ((_ is Concat!25334) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun e!4002994 () (InoxSet Context!11746))

(declare-fun e!4002993 () (InoxSet Context!11746))

(assert (=> b!6616878 (= e!4002994 e!4002993)))

(declare-fun b!6616879 () Bool)

(declare-fun call!579805 () (InoxSet Context!11746))

(declare-fun call!579804 () (InoxSet Context!11746))

(assert (=> b!6616879 (= e!4002994 ((_ map or) call!579805 call!579804))))

(declare-fun bm!579799 () Bool)

(declare-fun call!579809 () (InoxSet Context!11746))

(assert (=> bm!579799 (= call!579809 call!579804)))

(declare-fun bm!579800 () Bool)

(declare-fun call!579807 () (InoxSet Context!11746))

(assert (=> bm!579800 (= call!579807 call!579809)))

(declare-fun c!1219777 () Bool)

(declare-fun call!579808 () List!65766)

(declare-fun c!1219776 () Bool)

(declare-fun bm!579802 () Bool)

(assert (=> bm!579802 (= call!579804 (derivationStepZipperDown!1737 (ite c!1219777 (regTwo!33491 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (ite c!1219775 (regTwo!33490 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (ite c!1219776 (regOne!33490 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (reg!16818 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))) (ite (or c!1219777 c!1219775) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (Context!11747 call!579808)) (h!72092 s!2326)))))

(declare-fun b!6616880 () Bool)

(declare-fun e!4002995 () (InoxSet Context!11746))

(assert (=> b!6616880 (= e!4002995 (store ((as const (Array Context!11746 Bool)) false) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) true))))

(declare-fun b!6616881 () Bool)

(declare-fun e!4002998 () (InoxSet Context!11746))

(assert (=> b!6616881 (= e!4002998 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616882 () Bool)

(assert (=> b!6616882 (= e!4002998 call!579807)))

(declare-fun call!579806 () List!65766)

(declare-fun bm!579803 () Bool)

(assert (=> bm!579803 (= call!579806 ($colon$colon!2326 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))) (ite (or c!1219775 c!1219776) (regTwo!33490 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))))

(declare-fun b!6616883 () Bool)

(assert (=> b!6616883 (= e!4002993 ((_ map or) call!579805 call!579809))))

(declare-fun d!2074170 () Bool)

(declare-fun c!1219778 () Bool)

(assert (=> d!2074170 (= c!1219778 (and ((_ is ElementMatch!16489) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (= (c!1219498 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326))))))

(assert (=> d!2074170 (= (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326)) e!4002995)))

(declare-fun bm!579801 () Bool)

(assert (=> bm!579801 (= call!579805 (derivationStepZipperDown!1737 (ite c!1219777 (regOne!33491 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (regOne!33490 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))) (ite c!1219777 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (Context!11747 call!579806)) (h!72092 s!2326)))))

(declare-fun b!6616884 () Bool)

(assert (=> b!6616884 (= e!4002996 (nullable!6482 (regOne!33490 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))))))))

(declare-fun b!6616885 () Bool)

(declare-fun c!1219774 () Bool)

(assert (=> b!6616885 (= c!1219774 ((_ is Star!16489) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun e!4002997 () (InoxSet Context!11746))

(assert (=> b!6616885 (= e!4002997 e!4002998)))

(declare-fun b!6616886 () Bool)

(assert (=> b!6616886 (= e!4002997 call!579807)))

(declare-fun b!6616887 () Bool)

(assert (=> b!6616887 (= e!4002995 e!4002994)))

(assert (=> b!6616887 (= c!1219777 ((_ is Union!16489) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun bm!579804 () Bool)

(assert (=> bm!579804 (= call!579808 call!579806)))

(declare-fun b!6616888 () Bool)

(assert (=> b!6616888 (= e!4002993 e!4002997)))

(assert (=> b!6616888 (= c!1219776 ((_ is Concat!25334) (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(assert (= (and d!2074170 c!1219778) b!6616880))

(assert (= (and d!2074170 (not c!1219778)) b!6616887))

(assert (= (and b!6616887 c!1219777) b!6616879))

(assert (= (and b!6616887 (not c!1219777)) b!6616878))

(assert (= (and b!6616878 res!2713238) b!6616884))

(assert (= (and b!6616878 c!1219775) b!6616883))

(assert (= (and b!6616878 (not c!1219775)) b!6616888))

(assert (= (and b!6616888 c!1219776) b!6616886))

(assert (= (and b!6616888 (not c!1219776)) b!6616885))

(assert (= (and b!6616885 c!1219774) b!6616882))

(assert (= (and b!6616885 (not c!1219774)) b!6616881))

(assert (= (or b!6616886 b!6616882) bm!579804))

(assert (= (or b!6616886 b!6616882) bm!579800))

(assert (= (or b!6616883 bm!579804) bm!579803))

(assert (= (or b!6616883 bm!579800) bm!579799))

(assert (= (or b!6616879 bm!579799) bm!579802))

(assert (= (or b!6616879 b!6616883) bm!579801))

(declare-fun m!7389570 () Bool)

(assert (=> bm!579801 m!7389570))

(declare-fun m!7389572 () Bool)

(assert (=> bm!579802 m!7389572))

(declare-fun m!7389574 () Bool)

(assert (=> b!6616884 m!7389574))

(declare-fun m!7389576 () Bool)

(assert (=> bm!579803 m!7389576))

(declare-fun m!7389578 () Bool)

(assert (=> b!6616880 m!7389578))

(assert (=> bm!579727 d!2074170))

(assert (=> bm!579762 d!2074096))

(assert (=> b!6616555 d!2073930))

(declare-fun bs!1696415 () Bool)

(declare-fun d!2074174 () Bool)

(assert (= bs!1696415 (and d!2074174 d!2073930)))

(declare-fun lambda!369659 () Int)

(assert (=> bs!1696415 (= lambda!369659 lambda!369611)))

(declare-fun bs!1696416 () Bool)

(assert (= bs!1696416 (and d!2074174 d!2074036)))

(assert (=> bs!1696416 (= lambda!369659 lambda!369645)))

(declare-fun bs!1696417 () Bool)

(assert (= bs!1696417 (and d!2074174 d!2074032)))

(assert (=> bs!1696417 (= lambda!369659 lambda!369641)))

(declare-fun bs!1696418 () Bool)

(assert (= bs!1696418 (and d!2074174 d!2074014)))

(assert (=> bs!1696418 (= lambda!369659 lambda!369637)))

(declare-fun bs!1696419 () Bool)

(assert (= bs!1696419 (and d!2074174 d!2074034)))

(assert (=> bs!1696419 (= lambda!369659 lambda!369644)))

(declare-fun bs!1696420 () Bool)

(assert (= bs!1696420 (and d!2074174 d!2074020)))

(assert (=> bs!1696420 (= lambda!369659 lambda!369638)))

(declare-fun lt!2417615 () List!65766)

(assert (=> d!2074174 (forall!15685 lt!2417615 lambda!369659)))

(declare-fun e!4002999 () List!65766)

(assert (=> d!2074174 (= lt!2417615 e!4002999)))

(declare-fun c!1219779 () Bool)

(assert (=> d!2074174 (= c!1219779 ((_ is Cons!65643) (t!379423 zl!343)))))

(assert (=> d!2074174 (= (unfocusZipperList!1910 (t!379423 zl!343)) lt!2417615)))

(declare-fun b!6616889 () Bool)

(assert (=> b!6616889 (= e!4002999 (Cons!65642 (generalisedConcat!2086 (exprs!6373 (h!72091 (t!379423 zl!343)))) (unfocusZipperList!1910 (t!379423 (t!379423 zl!343)))))))

(declare-fun b!6616890 () Bool)

(assert (=> b!6616890 (= e!4002999 Nil!65642)))

(assert (= (and d!2074174 c!1219779) b!6616889))

(assert (= (and d!2074174 (not c!1219779)) b!6616890))

(declare-fun m!7389580 () Bool)

(assert (=> d!2074174 m!7389580))

(declare-fun m!7389582 () Bool)

(assert (=> b!6616889 m!7389582))

(declare-fun m!7389584 () Bool)

(assert (=> b!6616889 m!7389584))

(assert (=> b!6616555 d!2074174))

(declare-fun d!2074176 () Bool)

(assert (=> d!2074176 (= (nullable!6482 (reg!16818 r!7292)) (nullableFct!2403 (reg!16818 r!7292)))))

(declare-fun bs!1696421 () Bool)

(assert (= bs!1696421 d!2074176))

(declare-fun m!7389586 () Bool)

(assert (=> bs!1696421 m!7389586))

(assert (=> b!6616505 d!2074176))

(declare-fun d!2074178 () Bool)

(assert (=> d!2074178 (= (nullable!6482 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))) (nullableFct!2403 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun bs!1696422 () Bool)

(assert (= bs!1696422 d!2074178))

(declare-fun m!7389588 () Bool)

(assert (=> bs!1696422 m!7389588))

(assert (=> b!6616476 d!2074178))

(declare-fun d!2074180 () Bool)

(assert (=> d!2074180 (= (nullable!6482 (regOne!33490 r!7292)) (nullableFct!2403 (regOne!33490 r!7292)))))

(declare-fun bs!1696423 () Bool)

(assert (= bs!1696423 d!2074180))

(declare-fun m!7389590 () Bool)

(assert (=> bs!1696423 m!7389590))

(assert (=> b!6616585 d!2074180))

(declare-fun bs!1696424 () Bool)

(declare-fun b!6616899 () Bool)

(assert (= bs!1696424 (and b!6616899 b!6616596)))

(declare-fun lambda!369660 () Int)

(assert (=> bs!1696424 (= (and (= (reg!16818 (regTwo!33491 (regOne!33490 r!7292))) (reg!16818 (regTwo!33490 r!7292))) (= (regTwo!33491 (regOne!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369660 lambda!369652))))

(declare-fun bs!1696425 () Bool)

(assert (= bs!1696425 (and b!6616899 b!6616563)))

(assert (=> bs!1696425 (not (= lambda!369660 lambda!369651))))

(declare-fun bs!1696426 () Bool)

(assert (= bs!1696426 (and b!6616899 b!6616281)))

(assert (=> bs!1696426 (= (and (= (reg!16818 (regTwo!33491 (regOne!33490 r!7292))) (reg!16818 r!7292)) (= (regTwo!33491 (regOne!33490 r!7292)) r!7292)) (= lambda!369660 lambda!369624))))

(declare-fun bs!1696427 () Bool)

(assert (= bs!1696427 (and b!6616899 b!6616571)))

(assert (=> bs!1696427 (= (and (= (reg!16818 (regTwo!33491 (regOne!33490 r!7292))) (reg!16818 (regOne!33490 r!7292))) (= (regTwo!33491 (regOne!33490 r!7292)) (regOne!33490 r!7292))) (= lambda!369660 lambda!369650))))

(declare-fun bs!1696428 () Bool)

(assert (= bs!1696428 (and b!6616899 d!2073894)))

(assert (=> bs!1696428 (not (= lambda!369660 lambda!369586))))

(declare-fun bs!1696429 () Bool)

(assert (= bs!1696429 (and b!6616899 b!6615856)))

(assert (=> bs!1696429 (not (= lambda!369660 lambda!369578))))

(declare-fun bs!1696430 () Bool)

(assert (= bs!1696430 (and b!6616899 b!6616699)))

(assert (=> bs!1696430 (= (and (= (reg!16818 (regTwo!33491 (regOne!33490 r!7292))) (reg!16818 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33491 (regOne!33490 r!7292)) (regTwo!33491 (regTwo!33490 r!7292)))) (= lambda!369660 lambda!369655))))

(declare-fun bs!1696431 () Bool)

(assert (= bs!1696431 (and b!6616899 b!6616691)))

(assert (=> bs!1696431 (not (= lambda!369660 lambda!369656))))

(assert (=> bs!1696429 (not (= lambda!369660 lambda!369577))))

(declare-fun bs!1696432 () Bool)

(assert (= bs!1696432 (and b!6616899 d!2073900)))

(assert (=> bs!1696432 (not (= lambda!369660 lambda!369595))))

(declare-fun bs!1696433 () Bool)

(assert (= bs!1696433 (and b!6616899 b!6616588)))

(assert (=> bs!1696433 (not (= lambda!369660 lambda!369653))))

(assert (=> bs!1696432 (not (= lambda!369660 lambda!369598))))

(declare-fun bs!1696434 () Bool)

(assert (= bs!1696434 (and b!6616899 b!6616273)))

(assert (=> bs!1696434 (not (= lambda!369660 lambda!369625))))

(assert (=> b!6616899 true))

(assert (=> b!6616899 true))

(declare-fun bs!1696435 () Bool)

(declare-fun b!6616891 () Bool)

(assert (= bs!1696435 (and b!6616891 b!6616596)))

(declare-fun lambda!369661 () Int)

(assert (=> bs!1696435 (not (= lambda!369661 lambda!369652))))

(declare-fun bs!1696436 () Bool)

(assert (= bs!1696436 (and b!6616891 b!6616563)))

(assert (=> bs!1696436 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369661 lambda!369651))))

(declare-fun bs!1696437 () Bool)

(assert (= bs!1696437 (and b!6616891 b!6616281)))

(assert (=> bs!1696437 (not (= lambda!369661 lambda!369624))))

(declare-fun bs!1696438 () Bool)

(assert (= bs!1696438 (and b!6616891 b!6616571)))

(assert (=> bs!1696438 (not (= lambda!369661 lambda!369650))))

(declare-fun bs!1696439 () Bool)

(assert (= bs!1696439 (and b!6616891 d!2073894)))

(assert (=> bs!1696439 (not (= lambda!369661 lambda!369586))))

(declare-fun bs!1696440 () Bool)

(assert (= bs!1696440 (and b!6616891 b!6615856)))

(assert (=> bs!1696440 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369661 lambda!369578))))

(declare-fun bs!1696441 () Bool)

(assert (= bs!1696441 (and b!6616891 b!6616699)))

(assert (=> bs!1696441 (not (= lambda!369661 lambda!369655))))

(declare-fun bs!1696442 () Bool)

(assert (= bs!1696442 (and b!6616891 b!6616899)))

(assert (=> bs!1696442 (not (= lambda!369661 lambda!369660))))

(declare-fun bs!1696443 () Bool)

(assert (= bs!1696443 (and b!6616891 b!6616691)))

(assert (=> bs!1696443 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369661 lambda!369656))))

(assert (=> bs!1696440 (not (= lambda!369661 lambda!369577))))

(declare-fun bs!1696444 () Bool)

(assert (= bs!1696444 (and b!6616891 d!2073900)))

(assert (=> bs!1696444 (not (= lambda!369661 lambda!369595))))

(declare-fun bs!1696445 () Bool)

(assert (= bs!1696445 (and b!6616891 b!6616588)))

(assert (=> bs!1696445 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369661 lambda!369653))))

(assert (=> bs!1696444 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369661 lambda!369598))))

(declare-fun bs!1696446 () Bool)

(assert (= bs!1696446 (and b!6616891 b!6616273)))

(assert (=> bs!1696446 (= (and (= (regOne!33490 (regTwo!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369661 lambda!369625))))

(assert (=> b!6616891 true))

(assert (=> b!6616891 true))

(declare-fun e!4003006 () Bool)

(declare-fun call!579810 () Bool)

(assert (=> b!6616891 (= e!4003006 call!579810)))

(declare-fun d!2074182 () Bool)

(declare-fun c!1219783 () Bool)

(assert (=> d!2074182 (= c!1219783 ((_ is EmptyExpr!16489) (regTwo!33491 (regOne!33490 r!7292))))))

(declare-fun e!4003004 () Bool)

(assert (=> d!2074182 (= (matchRSpec!3590 (regTwo!33491 (regOne!33490 r!7292)) s!2326) e!4003004)))

(declare-fun b!6616892 () Bool)

(declare-fun e!4003002 () Bool)

(assert (=> b!6616892 (= e!4003004 e!4003002)))

(declare-fun res!2713241 () Bool)

(assert (=> b!6616892 (= res!2713241 (not ((_ is EmptyLang!16489) (regTwo!33491 (regOne!33490 r!7292)))))))

(assert (=> b!6616892 (=> (not res!2713241) (not e!4003002))))

(declare-fun b!6616893 () Bool)

(declare-fun c!1219782 () Bool)

(assert (=> b!6616893 (= c!1219782 ((_ is Union!16489) (regTwo!33491 (regOne!33490 r!7292))))))

(declare-fun e!4003003 () Bool)

(declare-fun e!4003005 () Bool)

(assert (=> b!6616893 (= e!4003003 e!4003005)))

(declare-fun b!6616894 () Bool)

(declare-fun call!579811 () Bool)

(assert (=> b!6616894 (= e!4003004 call!579811)))

(declare-fun b!6616895 () Bool)

(declare-fun e!4003000 () Bool)

(assert (=> b!6616895 (= e!4003005 e!4003000)))

(declare-fun res!2713239 () Bool)

(assert (=> b!6616895 (= res!2713239 (matchRSpec!3590 (regOne!33491 (regTwo!33491 (regOne!33490 r!7292))) s!2326))))

(assert (=> b!6616895 (=> res!2713239 e!4003000)))

(declare-fun b!6616896 () Bool)

(declare-fun c!1219780 () Bool)

(assert (=> b!6616896 (= c!1219780 ((_ is ElementMatch!16489) (regTwo!33491 (regOne!33490 r!7292))))))

(assert (=> b!6616896 (= e!4003002 e!4003003)))

(declare-fun b!6616897 () Bool)

(declare-fun res!2713240 () Bool)

(declare-fun e!4003001 () Bool)

(assert (=> b!6616897 (=> res!2713240 e!4003001)))

(assert (=> b!6616897 (= res!2713240 call!579811)))

(assert (=> b!6616897 (= e!4003006 e!4003001)))

(declare-fun bm!579805 () Bool)

(assert (=> bm!579805 (= call!579811 (isEmpty!37931 s!2326))))

(declare-fun b!6616898 () Bool)

(assert (=> b!6616898 (= e!4003003 (= s!2326 (Cons!65644 (c!1219498 (regTwo!33491 (regOne!33490 r!7292))) Nil!65644)))))

(assert (=> b!6616899 (= e!4003001 call!579810)))

(declare-fun b!6616900 () Bool)

(assert (=> b!6616900 (= e!4003000 (matchRSpec!3590 (regTwo!33491 (regTwo!33491 (regOne!33490 r!7292))) s!2326))))

(declare-fun bm!579806 () Bool)

(declare-fun c!1219781 () Bool)

(assert (=> bm!579806 (= call!579810 (Exists!3559 (ite c!1219781 lambda!369660 lambda!369661)))))

(declare-fun b!6616901 () Bool)

(assert (=> b!6616901 (= e!4003005 e!4003006)))

(assert (=> b!6616901 (= c!1219781 ((_ is Star!16489) (regTwo!33491 (regOne!33490 r!7292))))))

(assert (= (and d!2074182 c!1219783) b!6616894))

(assert (= (and d!2074182 (not c!1219783)) b!6616892))

(assert (= (and b!6616892 res!2713241) b!6616896))

(assert (= (and b!6616896 c!1219780) b!6616898))

(assert (= (and b!6616896 (not c!1219780)) b!6616893))

(assert (= (and b!6616893 c!1219782) b!6616895))

(assert (= (and b!6616893 (not c!1219782)) b!6616901))

(assert (= (and b!6616895 (not res!2713239)) b!6616900))

(assert (= (and b!6616901 c!1219781) b!6616897))

(assert (= (and b!6616901 (not c!1219781)) b!6616891))

(assert (= (and b!6616897 (not res!2713240)) b!6616899))

(assert (= (or b!6616899 b!6616891) bm!579806))

(assert (= (or b!6616894 b!6616897) bm!579805))

(declare-fun m!7389592 () Bool)

(assert (=> b!6616895 m!7389592))

(assert (=> bm!579805 m!7389100))

(declare-fun m!7389594 () Bool)

(assert (=> b!6616900 m!7389594))

(declare-fun m!7389596 () Bool)

(assert (=> bm!579806 m!7389596))

(assert (=> b!6616572 d!2074182))

(assert (=> d!2074062 d!2074060))

(assert (=> d!2074062 d!2074058))

(declare-fun d!2074184 () Bool)

(assert (=> d!2074184 (= (matchR!8672 (regTwo!33490 r!7292) s!2326) (matchRSpec!3590 (regTwo!33490 r!7292) s!2326))))

(assert (=> d!2074184 true))

(declare-fun _$88!5306 () Unit!159311)

(assert (=> d!2074184 (= (choose!49445 (regTwo!33490 r!7292) s!2326) _$88!5306)))

(declare-fun bs!1696447 () Bool)

(assert (= bs!1696447 d!2074184))

(assert (=> bs!1696447 m!7388774))

(assert (=> bs!1696447 m!7388784))

(assert (=> d!2074062 d!2074184))

(declare-fun d!2074186 () Bool)

(declare-fun res!2713243 () Bool)

(declare-fun e!4003021 () Bool)

(assert (=> d!2074186 (=> res!2713243 e!4003021)))

(assert (=> d!2074186 (= res!2713243 ((_ is ElementMatch!16489) (regTwo!33490 r!7292)))))

(assert (=> d!2074186 (= (validRegex!8225 (regTwo!33490 r!7292)) e!4003021)))

(declare-fun b!6616922 () Bool)

(declare-fun e!4003019 () Bool)

(declare-fun e!4003022 () Bool)

(assert (=> b!6616922 (= e!4003019 e!4003022)))

(declare-fun c!1219795 () Bool)

(assert (=> b!6616922 (= c!1219795 ((_ is Union!16489) (regTwo!33490 r!7292)))))

(declare-fun b!6616923 () Bool)

(declare-fun e!4003018 () Bool)

(declare-fun call!579818 () Bool)

(assert (=> b!6616923 (= e!4003018 call!579818)))

(declare-fun call!579817 () Bool)

(declare-fun c!1219794 () Bool)

(declare-fun bm!579811 () Bool)

(assert (=> bm!579811 (= call!579817 (validRegex!8225 (ite c!1219794 (reg!16818 (regTwo!33490 r!7292)) (ite c!1219795 (regTwo!33491 (regTwo!33490 r!7292)) (regTwo!33490 (regTwo!33490 r!7292))))))))

(declare-fun b!6616924 () Bool)

(declare-fun e!4003020 () Bool)

(assert (=> b!6616924 (= e!4003020 call!579818)))

(declare-fun bm!579812 () Bool)

(declare-fun call!579816 () Bool)

(assert (=> bm!579812 (= call!579816 (validRegex!8225 (ite c!1219795 (regOne!33491 (regTwo!33490 r!7292)) (regOne!33490 (regTwo!33490 r!7292)))))))

(declare-fun b!6616925 () Bool)

(declare-fun res!2713246 () Bool)

(declare-fun e!4003023 () Bool)

(assert (=> b!6616925 (=> res!2713246 e!4003023)))

(assert (=> b!6616925 (= res!2713246 (not ((_ is Concat!25334) (regTwo!33490 r!7292))))))

(assert (=> b!6616925 (= e!4003022 e!4003023)))

(declare-fun b!6616926 () Bool)

(assert (=> b!6616926 (= e!4003023 e!4003020)))

(declare-fun res!2713244 () Bool)

(assert (=> b!6616926 (=> (not res!2713244) (not e!4003020))))

(assert (=> b!6616926 (= res!2713244 call!579816)))

(declare-fun b!6616927 () Bool)

(assert (=> b!6616927 (= e!4003021 e!4003019)))

(assert (=> b!6616927 (= c!1219794 ((_ is Star!16489) (regTwo!33490 r!7292)))))

(declare-fun b!6616928 () Bool)

(declare-fun e!4003017 () Bool)

(assert (=> b!6616928 (= e!4003019 e!4003017)))

(declare-fun res!2713242 () Bool)

(assert (=> b!6616928 (= res!2713242 (not (nullable!6482 (reg!16818 (regTwo!33490 r!7292)))))))

(assert (=> b!6616928 (=> (not res!2713242) (not e!4003017))))

(declare-fun b!6616929 () Bool)

(assert (=> b!6616929 (= e!4003017 call!579817)))

(declare-fun b!6616930 () Bool)

(declare-fun res!2713245 () Bool)

(assert (=> b!6616930 (=> (not res!2713245) (not e!4003018))))

(assert (=> b!6616930 (= res!2713245 call!579816)))

(assert (=> b!6616930 (= e!4003022 e!4003018)))

(declare-fun bm!579813 () Bool)

(assert (=> bm!579813 (= call!579818 call!579817)))

(assert (= (and d!2074186 (not res!2713243)) b!6616927))

(assert (= (and b!6616927 c!1219794) b!6616928))

(assert (= (and b!6616927 (not c!1219794)) b!6616922))

(assert (= (and b!6616928 res!2713242) b!6616929))

(assert (= (and b!6616922 c!1219795) b!6616930))

(assert (= (and b!6616922 (not c!1219795)) b!6616925))

(assert (= (and b!6616930 res!2713245) b!6616923))

(assert (= (and b!6616925 (not res!2713246)) b!6616926))

(assert (= (and b!6616926 res!2713244) b!6616924))

(assert (= (or b!6616923 b!6616924) bm!579813))

(assert (= (or b!6616930 b!6616926) bm!579812))

(assert (= (or b!6616929 bm!579813) bm!579811))

(declare-fun m!7389598 () Bool)

(assert (=> bm!579811 m!7389598))

(declare-fun m!7389600 () Bool)

(assert (=> bm!579812 m!7389600))

(declare-fun m!7389602 () Bool)

(assert (=> b!6616928 m!7389602))

(assert (=> d!2074062 d!2074186))

(declare-fun d!2074188 () Bool)

(assert (=> d!2074188 (= (isEmpty!37928 (tail!12506 (exprs!6373 (h!72091 zl!343)))) ((_ is Nil!65642) (tail!12506 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> b!6616151 d!2074188))

(declare-fun d!2074190 () Bool)

(assert (=> d!2074190 (= (tail!12506 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343))))))

(assert (=> b!6616151 d!2074190))

(assert (=> b!6616351 d!2074120))

(assert (=> b!6616351 d!2074122))

(declare-fun d!2074192 () Bool)

(assert (=> d!2074192 (= (Exists!3559 (ite c!1219709 lambda!369652 lambda!369653)) (choose!49438 (ite c!1219709 lambda!369652 lambda!369653)))))

(declare-fun bs!1696448 () Bool)

(assert (= bs!1696448 d!2074192))

(declare-fun m!7389604 () Bool)

(assert (=> bs!1696448 m!7389604))

(assert (=> bm!579761 d!2074192))

(declare-fun d!2074194 () Bool)

(declare-fun c!1219798 () Bool)

(assert (=> d!2074194 (= c!1219798 ((_ is Nil!65643) lt!2417526))))

(declare-fun e!4003026 () (InoxSet Context!11746))

(assert (=> d!2074194 (= (content!12666 lt!2417526) e!4003026)))

(declare-fun b!6616935 () Bool)

(assert (=> b!6616935 (= e!4003026 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6616936 () Bool)

(assert (=> b!6616936 (= e!4003026 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) (h!72091 lt!2417526) true) (content!12666 (t!379423 lt!2417526))))))

(assert (= (and d!2074194 c!1219798) b!6616935))

(assert (= (and d!2074194 (not c!1219798)) b!6616936))

(declare-fun m!7389606 () Bool)

(assert (=> b!6616936 m!7389606))

(declare-fun m!7389608 () Bool)

(assert (=> b!6616936 m!7389608))

(assert (=> b!6616095 d!2074194))

(assert (=> b!6615918 d!2074060))

(declare-fun d!2074196 () Bool)

(declare-fun lambda!369664 () Int)

(declare-fun exists!2656 ((InoxSet Context!11746) Int) Bool)

(assert (=> d!2074196 (= (nullableZipper!2230 lt!2417475) (exists!2656 lt!2417475 lambda!369664))))

(declare-fun bs!1696449 () Bool)

(assert (= bs!1696449 d!2074196))

(declare-fun m!7389610 () Bool)

(assert (=> bs!1696449 m!7389610))

(assert (=> b!6616559 d!2074196))

(declare-fun d!2074198 () Bool)

(declare-fun res!2713248 () Bool)

(declare-fun e!4003031 () Bool)

(assert (=> d!2074198 (=> res!2713248 e!4003031)))

(assert (=> d!2074198 (= res!2713248 ((_ is ElementMatch!16489) (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))

(assert (=> d!2074198 (= (validRegex!8225 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))) e!4003031)))

(declare-fun b!6616937 () Bool)

(declare-fun e!4003029 () Bool)

(declare-fun e!4003032 () Bool)

(assert (=> b!6616937 (= e!4003029 e!4003032)))

(declare-fun c!1219802 () Bool)

(assert (=> b!6616937 (= c!1219802 ((_ is Union!16489) (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))

(declare-fun b!6616938 () Bool)

(declare-fun e!4003028 () Bool)

(declare-fun call!579825 () Bool)

(assert (=> b!6616938 (= e!4003028 call!579825)))

(declare-fun bm!579818 () Bool)

(declare-fun c!1219801 () Bool)

(declare-fun call!579824 () Bool)

(assert (=> bm!579818 (= call!579824 (validRegex!8225 (ite c!1219801 (reg!16818 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))) (ite c!1219802 (regTwo!33491 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))) (regTwo!33490 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292)))))))))

(declare-fun b!6616939 () Bool)

(declare-fun e!4003030 () Bool)

(assert (=> b!6616939 (= e!4003030 call!579825)))

(declare-fun call!579823 () Bool)

(declare-fun bm!579819 () Bool)

(assert (=> bm!579819 (= call!579823 (validRegex!8225 (ite c!1219802 (regOne!33491 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))) (regOne!33490 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))))

(declare-fun b!6616940 () Bool)

(declare-fun res!2713251 () Bool)

(declare-fun e!4003033 () Bool)

(assert (=> b!6616940 (=> res!2713251 e!4003033)))

(assert (=> b!6616940 (= res!2713251 (not ((_ is Concat!25334) (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292)))))))

(assert (=> b!6616940 (= e!4003032 e!4003033)))

(declare-fun b!6616941 () Bool)

(assert (=> b!6616941 (= e!4003033 e!4003030)))

(declare-fun res!2713249 () Bool)

(assert (=> b!6616941 (=> (not res!2713249) (not e!4003030))))

(assert (=> b!6616941 (= res!2713249 call!579823)))

(declare-fun b!6616942 () Bool)

(assert (=> b!6616942 (= e!4003031 e!4003029)))

(assert (=> b!6616942 (= c!1219801 ((_ is Star!16489) (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))

(declare-fun b!6616943 () Bool)

(declare-fun e!4003027 () Bool)

(assert (=> b!6616943 (= e!4003029 e!4003027)))

(declare-fun res!2713247 () Bool)

(assert (=> b!6616943 (= res!2713247 (not (nullable!6482 (reg!16818 (ite c!1219676 (regOne!33491 r!7292) (regOne!33490 r!7292))))))))

(assert (=> b!6616943 (=> (not res!2713247) (not e!4003027))))

(declare-fun b!6616944 () Bool)

(assert (=> b!6616944 (= e!4003027 call!579824)))

(declare-fun b!6616945 () Bool)

(declare-fun res!2713250 () Bool)

(assert (=> b!6616945 (=> (not res!2713250) (not e!4003028))))

(assert (=> b!6616945 (= res!2713250 call!579823)))

(assert (=> b!6616945 (= e!4003032 e!4003028)))

(declare-fun bm!579820 () Bool)

(assert (=> bm!579820 (= call!579825 call!579824)))

(assert (= (and d!2074198 (not res!2713248)) b!6616942))

(assert (= (and b!6616942 c!1219801) b!6616943))

(assert (= (and b!6616942 (not c!1219801)) b!6616937))

(assert (= (and b!6616943 res!2713247) b!6616944))

(assert (= (and b!6616937 c!1219802) b!6616945))

(assert (= (and b!6616937 (not c!1219802)) b!6616940))

(assert (= (and b!6616945 res!2713250) b!6616938))

(assert (= (and b!6616940 (not res!2713251)) b!6616941))

(assert (= (and b!6616941 res!2713249) b!6616939))

(assert (= (or b!6616938 b!6616939) bm!579820))

(assert (= (or b!6616945 b!6616941) bm!579819))

(assert (= (or b!6616944 bm!579820) bm!579818))

(declare-fun m!7389612 () Bool)

(assert (=> bm!579818 m!7389612))

(declare-fun m!7389614 () Bool)

(assert (=> bm!579819 m!7389614))

(declare-fun m!7389616 () Bool)

(assert (=> b!6616943 m!7389616))

(assert (=> bm!579755 d!2074198))

(declare-fun b!6616946 () Bool)

(declare-fun e!4003039 () Bool)

(declare-fun e!4003038 () Bool)

(assert (=> b!6616946 (= e!4003039 e!4003038)))

(declare-fun res!2713255 () Bool)

(assert (=> b!6616946 (=> res!2713255 e!4003038)))

(declare-fun call!579826 () Bool)

(assert (=> b!6616946 (= res!2713255 call!579826)))

(declare-fun b!6616947 () Bool)

(declare-fun res!2713254 () Bool)

(declare-fun e!4003036 () Bool)

(assert (=> b!6616947 (=> (not res!2713254) (not e!4003036))))

(assert (=> b!6616947 (= res!2713254 (not call!579826))))

(declare-fun b!6616948 () Bool)

(declare-fun e!4003037 () Bool)

(declare-fun lt!2417618 () Bool)

(assert (=> b!6616948 (= e!4003037 (= lt!2417618 call!579826))))

(declare-fun b!6616949 () Bool)

(declare-fun e!4003034 () Bool)

(assert (=> b!6616949 (= e!4003034 (not lt!2417618))))

(declare-fun b!6616950 () Bool)

(declare-fun res!2713259 () Bool)

(assert (=> b!6616950 (=> (not res!2713259) (not e!4003036))))

(assert (=> b!6616950 (= res!2713259 (isEmpty!37931 (tail!12507 (tail!12507 s!2326))))))

(declare-fun b!6616951 () Bool)

(assert (=> b!6616951 (= e!4003037 e!4003034)))

(declare-fun c!1219805 () Bool)

(assert (=> b!6616951 (= c!1219805 ((_ is EmptyLang!16489) (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326))))))

(declare-fun b!6616952 () Bool)

(declare-fun res!2713256 () Bool)

(declare-fun e!4003040 () Bool)

(assert (=> b!6616952 (=> res!2713256 e!4003040)))

(assert (=> b!6616952 (= res!2713256 e!4003036)))

(declare-fun res!2713252 () Bool)

(assert (=> b!6616952 (=> (not res!2713252) (not e!4003036))))

(assert (=> b!6616952 (= res!2713252 lt!2417618)))

(declare-fun bm!579821 () Bool)

(assert (=> bm!579821 (= call!579826 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6616953 () Bool)

(declare-fun e!4003035 () Bool)

(assert (=> b!6616953 (= e!4003035 (matchR!8672 (derivativeStep!5169 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)) (head!13422 (tail!12507 s!2326))) (tail!12507 (tail!12507 s!2326))))))

(declare-fun d!2074200 () Bool)

(assert (=> d!2074200 e!4003037))

(declare-fun c!1219803 () Bool)

(assert (=> d!2074200 (= c!1219803 ((_ is EmptyExpr!16489) (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326))))))

(assert (=> d!2074200 (= lt!2417618 e!4003035)))

(declare-fun c!1219804 () Bool)

(assert (=> d!2074200 (= c!1219804 (isEmpty!37931 (tail!12507 s!2326)))))

(assert (=> d!2074200 (validRegex!8225 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)))))

(assert (=> d!2074200 (= (matchR!8672 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)) (tail!12507 s!2326)) lt!2417618)))

(declare-fun b!6616954 () Bool)

(declare-fun res!2713253 () Bool)

(assert (=> b!6616954 (=> res!2713253 e!4003038)))

(assert (=> b!6616954 (= res!2713253 (not (isEmpty!37931 (tail!12507 (tail!12507 s!2326)))))))

(declare-fun b!6616955 () Bool)

(assert (=> b!6616955 (= e!4003038 (not (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326))))))))

(declare-fun b!6616956 () Bool)

(assert (=> b!6616956 (= e!4003040 e!4003039)))

(declare-fun res!2713257 () Bool)

(assert (=> b!6616956 (=> (not res!2713257) (not e!4003039))))

(assert (=> b!6616956 (= res!2713257 (not lt!2417618))))

(declare-fun b!6616957 () Bool)

(assert (=> b!6616957 (= e!4003035 (nullable!6482 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326))))))

(declare-fun b!6616958 () Bool)

(declare-fun res!2713258 () Bool)

(assert (=> b!6616958 (=> res!2713258 e!4003040)))

(assert (=> b!6616958 (= res!2713258 (not ((_ is ElementMatch!16489) (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)))))))

(assert (=> b!6616958 (= e!4003034 e!4003040)))

(declare-fun b!6616959 () Bool)

(assert (=> b!6616959 (= e!4003036 (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)))))))

(assert (= (and d!2074200 c!1219804) b!6616957))

(assert (= (and d!2074200 (not c!1219804)) b!6616953))

(assert (= (and d!2074200 c!1219803) b!6616948))

(assert (= (and d!2074200 (not c!1219803)) b!6616951))

(assert (= (and b!6616951 c!1219805) b!6616949))

(assert (= (and b!6616951 (not c!1219805)) b!6616958))

(assert (= (and b!6616958 (not res!2713258)) b!6616952))

(assert (= (and b!6616952 res!2713252) b!6616947))

(assert (= (and b!6616947 res!2713254) b!6616950))

(assert (= (and b!6616950 res!2713259) b!6616959))

(assert (= (and b!6616952 (not res!2713256)) b!6616956))

(assert (= (and b!6616956 res!2713257) b!6616946))

(assert (= (and b!6616946 (not res!2713255)) b!6616954))

(assert (= (and b!6616954 (not res!2713253)) b!6616955))

(assert (= (or b!6616948 b!6616946 b!6616947) bm!579821))

(assert (=> b!6616959 m!7389136))

(assert (=> b!6616959 m!7389528))

(assert (=> bm!579821 m!7389136))

(assert (=> bm!579821 m!7389138))

(assert (=> b!6616954 m!7389136))

(assert (=> b!6616954 m!7389530))

(assert (=> b!6616954 m!7389530))

(assert (=> b!6616954 m!7389532))

(assert (=> b!6616950 m!7389136))

(assert (=> b!6616950 m!7389530))

(assert (=> b!6616950 m!7389530))

(assert (=> b!6616950 m!7389532))

(assert (=> b!6616957 m!7389304))

(declare-fun m!7389618 () Bool)

(assert (=> b!6616957 m!7389618))

(assert (=> b!6616955 m!7389136))

(assert (=> b!6616955 m!7389528))

(assert (=> b!6616953 m!7389136))

(assert (=> b!6616953 m!7389528))

(assert (=> b!6616953 m!7389304))

(assert (=> b!6616953 m!7389528))

(declare-fun m!7389620 () Bool)

(assert (=> b!6616953 m!7389620))

(assert (=> b!6616953 m!7389136))

(assert (=> b!6616953 m!7389530))

(assert (=> b!6616953 m!7389620))

(assert (=> b!6616953 m!7389530))

(declare-fun m!7389622 () Bool)

(assert (=> b!6616953 m!7389622))

(assert (=> d!2074200 m!7389136))

(assert (=> d!2074200 m!7389138))

(assert (=> d!2074200 m!7389304))

(declare-fun m!7389624 () Bool)

(assert (=> d!2074200 m!7389624))

(assert (=> b!6616581 d!2074200))

(declare-fun b!6616960 () Bool)

(declare-fun e!4003045 () Regex!16489)

(declare-fun e!4003041 () Regex!16489)

(assert (=> b!6616960 (= e!4003045 e!4003041)))

(declare-fun c!1219808 () Bool)

(assert (=> b!6616960 (= c!1219808 ((_ is ElementMatch!16489) (regOne!33490 r!7292)))))

(declare-fun e!4003042 () Regex!16489)

(declare-fun call!579830 () Regex!16489)

(declare-fun b!6616961 () Bool)

(declare-fun call!579827 () Regex!16489)

(assert (=> b!6616961 (= e!4003042 (Union!16489 (Concat!25334 call!579827 (regTwo!33490 (regOne!33490 r!7292))) call!579830))))

(declare-fun d!2074202 () Bool)

(declare-fun lt!2417619 () Regex!16489)

(assert (=> d!2074202 (validRegex!8225 lt!2417619)))

(assert (=> d!2074202 (= lt!2417619 e!4003045)))

(declare-fun c!1219809 () Bool)

(assert (=> d!2074202 (= c!1219809 (or ((_ is EmptyExpr!16489) (regOne!33490 r!7292)) ((_ is EmptyLang!16489) (regOne!33490 r!7292))))))

(assert (=> d!2074202 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074202 (= (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 s!2326)) lt!2417619)))

(declare-fun c!1219810 () Bool)

(declare-fun bm!579822 () Bool)

(assert (=> bm!579822 (= call!579827 (derivativeStep!5169 (ite c!1219810 (regOne!33491 (regOne!33490 r!7292)) (regOne!33490 (regOne!33490 r!7292))) (head!13422 s!2326)))))

(declare-fun c!1219807 () Bool)

(declare-fun c!1219806 () Bool)

(declare-fun call!579829 () Regex!16489)

(declare-fun bm!579823 () Bool)

(assert (=> bm!579823 (= call!579829 (derivativeStep!5169 (ite c!1219810 (regTwo!33491 (regOne!33490 r!7292)) (ite c!1219806 (reg!16818 (regOne!33490 r!7292)) (ite c!1219807 (regTwo!33490 (regOne!33490 r!7292)) (regOne!33490 (regOne!33490 r!7292))))) (head!13422 s!2326)))))

(declare-fun b!6616962 () Bool)

(declare-fun e!4003043 () Regex!16489)

(declare-fun e!4003044 () Regex!16489)

(assert (=> b!6616962 (= e!4003043 e!4003044)))

(assert (=> b!6616962 (= c!1219806 ((_ is Star!16489) (regOne!33490 r!7292)))))

(declare-fun b!6616963 () Bool)

(assert (=> b!6616963 (= e!4003045 EmptyLang!16489)))

(declare-fun b!6616964 () Bool)

(assert (=> b!6616964 (= c!1219810 ((_ is Union!16489) (regOne!33490 r!7292)))))

(assert (=> b!6616964 (= e!4003041 e!4003043)))

(declare-fun b!6616965 () Bool)

(assert (=> b!6616965 (= e!4003042 (Union!16489 (Concat!25334 call!579830 (regTwo!33490 (regOne!33490 r!7292))) EmptyLang!16489))))

(declare-fun bm!579824 () Bool)

(declare-fun call!579828 () Regex!16489)

(assert (=> bm!579824 (= call!579830 call!579828)))

(declare-fun b!6616966 () Bool)

(assert (=> b!6616966 (= e!4003044 (Concat!25334 call!579828 (regOne!33490 r!7292)))))

(declare-fun b!6616967 () Bool)

(assert (=> b!6616967 (= e!4003043 (Union!16489 call!579827 call!579829))))

(declare-fun bm!579825 () Bool)

(assert (=> bm!579825 (= call!579828 call!579829)))

(declare-fun b!6616968 () Bool)

(assert (=> b!6616968 (= e!4003041 (ite (= (head!13422 s!2326) (c!1219498 (regOne!33490 r!7292))) EmptyExpr!16489 EmptyLang!16489))))

(declare-fun b!6616969 () Bool)

(assert (=> b!6616969 (= c!1219807 (nullable!6482 (regOne!33490 (regOne!33490 r!7292))))))

(assert (=> b!6616969 (= e!4003044 e!4003042)))

(assert (= (and d!2074202 c!1219809) b!6616963))

(assert (= (and d!2074202 (not c!1219809)) b!6616960))

(assert (= (and b!6616960 c!1219808) b!6616968))

(assert (= (and b!6616960 (not c!1219808)) b!6616964))

(assert (= (and b!6616964 c!1219810) b!6616967))

(assert (= (and b!6616964 (not c!1219810)) b!6616962))

(assert (= (and b!6616962 c!1219806) b!6616966))

(assert (= (and b!6616962 (not c!1219806)) b!6616969))

(assert (= (and b!6616969 c!1219807) b!6616961))

(assert (= (and b!6616969 (not c!1219807)) b!6616965))

(assert (= (or b!6616961 b!6616965) bm!579824))

(assert (= (or b!6616966 bm!579824) bm!579825))

(assert (= (or b!6616967 bm!579825) bm!579823))

(assert (= (or b!6616967 b!6616961) bm!579822))

(declare-fun m!7389626 () Bool)

(assert (=> d!2074202 m!7389626))

(assert (=> d!2074202 m!7388876))

(assert (=> bm!579822 m!7389134))

(declare-fun m!7389628 () Bool)

(assert (=> bm!579822 m!7389628))

(assert (=> bm!579823 m!7389134))

(declare-fun m!7389630 () Bool)

(assert (=> bm!579823 m!7389630))

(assert (=> b!6616969 m!7388830))

(assert (=> b!6616581 d!2074202))

(assert (=> b!6616581 d!2074166))

(assert (=> b!6616581 d!2074122))

(declare-fun d!2074204 () Bool)

(assert (=> d!2074204 (= (flatMap!1994 z!1189 lambda!369649) (choose!49447 z!1189 lambda!369649))))

(declare-fun bs!1696450 () Bool)

(assert (= bs!1696450 d!2074204))

(declare-fun m!7389632 () Bool)

(assert (=> bs!1696450 m!7389632))

(assert (=> d!2074048 d!2074204))

(assert (=> d!2074056 d!2074096))

(declare-fun d!2074206 () Bool)

(declare-fun res!2713261 () Bool)

(declare-fun e!4003055 () Bool)

(assert (=> d!2074206 (=> res!2713261 e!4003055)))

(assert (=> d!2074206 (= res!2713261 ((_ is ElementMatch!16489) (regOne!33490 r!7292)))))

(assert (=> d!2074206 (= (validRegex!8225 (regOne!33490 r!7292)) e!4003055)))

(declare-fun b!6616980 () Bool)

(declare-fun e!4003053 () Bool)

(declare-fun e!4003056 () Bool)

(assert (=> b!6616980 (= e!4003053 e!4003056)))

(declare-fun c!1219817 () Bool)

(assert (=> b!6616980 (= c!1219817 ((_ is Union!16489) (regOne!33490 r!7292)))))

(declare-fun b!6616981 () Bool)

(declare-fun e!4003052 () Bool)

(declare-fun call!579837 () Bool)

(assert (=> b!6616981 (= e!4003052 call!579837)))

(declare-fun c!1219816 () Bool)

(declare-fun call!579836 () Bool)

(declare-fun bm!579830 () Bool)

(assert (=> bm!579830 (= call!579836 (validRegex!8225 (ite c!1219816 (reg!16818 (regOne!33490 r!7292)) (ite c!1219817 (regTwo!33491 (regOne!33490 r!7292)) (regTwo!33490 (regOne!33490 r!7292))))))))

(declare-fun b!6616982 () Bool)

(declare-fun e!4003054 () Bool)

(assert (=> b!6616982 (= e!4003054 call!579837)))

(declare-fun bm!579831 () Bool)

(declare-fun call!579835 () Bool)

(assert (=> bm!579831 (= call!579835 (validRegex!8225 (ite c!1219817 (regOne!33491 (regOne!33490 r!7292)) (regOne!33490 (regOne!33490 r!7292)))))))

(declare-fun b!6616983 () Bool)

(declare-fun res!2713264 () Bool)

(declare-fun e!4003057 () Bool)

(assert (=> b!6616983 (=> res!2713264 e!4003057)))

(assert (=> b!6616983 (= res!2713264 (not ((_ is Concat!25334) (regOne!33490 r!7292))))))

(assert (=> b!6616983 (= e!4003056 e!4003057)))

(declare-fun b!6616984 () Bool)

(assert (=> b!6616984 (= e!4003057 e!4003054)))

(declare-fun res!2713262 () Bool)

(assert (=> b!6616984 (=> (not res!2713262) (not e!4003054))))

(assert (=> b!6616984 (= res!2713262 call!579835)))

(declare-fun b!6616985 () Bool)

(assert (=> b!6616985 (= e!4003055 e!4003053)))

(assert (=> b!6616985 (= c!1219816 ((_ is Star!16489) (regOne!33490 r!7292)))))

(declare-fun b!6616986 () Bool)

(declare-fun e!4003051 () Bool)

(assert (=> b!6616986 (= e!4003053 e!4003051)))

(declare-fun res!2713260 () Bool)

(assert (=> b!6616986 (= res!2713260 (not (nullable!6482 (reg!16818 (regOne!33490 r!7292)))))))

(assert (=> b!6616986 (=> (not res!2713260) (not e!4003051))))

(declare-fun b!6616987 () Bool)

(assert (=> b!6616987 (= e!4003051 call!579836)))

(declare-fun b!6616988 () Bool)

(declare-fun res!2713263 () Bool)

(assert (=> b!6616988 (=> (not res!2713263) (not e!4003052))))

(assert (=> b!6616988 (= res!2713263 call!579835)))

(assert (=> b!6616988 (= e!4003056 e!4003052)))

(declare-fun bm!579832 () Bool)

(assert (=> bm!579832 (= call!579837 call!579836)))

(assert (= (and d!2074206 (not res!2713261)) b!6616985))

(assert (= (and b!6616985 c!1219816) b!6616986))

(assert (= (and b!6616985 (not c!1219816)) b!6616980))

(assert (= (and b!6616986 res!2713260) b!6616987))

(assert (= (and b!6616980 c!1219817) b!6616988))

(assert (= (and b!6616980 (not c!1219817)) b!6616983))

(assert (= (and b!6616988 res!2713263) b!6616981))

(assert (= (and b!6616983 (not res!2713264)) b!6616984))

(assert (= (and b!6616984 res!2713262) b!6616982))

(assert (= (or b!6616981 b!6616982) bm!579832))

(assert (= (or b!6616988 b!6616984) bm!579831))

(assert (= (or b!6616987 bm!579832) bm!579830))

(declare-fun m!7389634 () Bool)

(assert (=> bm!579830 m!7389634))

(declare-fun m!7389636 () Bool)

(assert (=> bm!579831 m!7389636))

(declare-fun m!7389638 () Bool)

(assert (=> b!6616986 m!7389638))

(assert (=> d!2074056 d!2074206))

(declare-fun b!6616989 () Bool)

(declare-fun e!4003063 () Bool)

(declare-fun e!4003062 () Bool)

(assert (=> b!6616989 (= e!4003063 e!4003062)))

(declare-fun res!2713268 () Bool)

(assert (=> b!6616989 (=> res!2713268 e!4003062)))

(declare-fun call!579838 () Bool)

(assert (=> b!6616989 (= res!2713268 call!579838)))

(declare-fun b!6616990 () Bool)

(declare-fun res!2713267 () Bool)

(declare-fun e!4003060 () Bool)

(assert (=> b!6616990 (=> (not res!2713267) (not e!4003060))))

(assert (=> b!6616990 (= res!2713267 (not call!579838))))

(declare-fun b!6616991 () Bool)

(declare-fun e!4003061 () Bool)

(declare-fun lt!2417621 () Bool)

(assert (=> b!6616991 (= e!4003061 (= lt!2417621 call!579838))))

(declare-fun b!6616992 () Bool)

(declare-fun e!4003058 () Bool)

(assert (=> b!6616992 (= e!4003058 (not lt!2417621))))

(declare-fun b!6616993 () Bool)

(declare-fun res!2713272 () Bool)

(assert (=> b!6616993 (=> (not res!2713272) (not e!4003060))))

(assert (=> b!6616993 (= res!2713272 (isEmpty!37931 (tail!12507 (_1!36771 (get!22814 lt!2417498)))))))

(declare-fun b!6616994 () Bool)

(assert (=> b!6616994 (= e!4003061 e!4003058)))

(declare-fun c!1219820 () Bool)

(assert (=> b!6616994 (= c!1219820 ((_ is EmptyLang!16489) (regOne!33490 r!7292)))))

(declare-fun b!6616995 () Bool)

(declare-fun res!2713269 () Bool)

(declare-fun e!4003064 () Bool)

(assert (=> b!6616995 (=> res!2713269 e!4003064)))

(assert (=> b!6616995 (= res!2713269 e!4003060)))

(declare-fun res!2713265 () Bool)

(assert (=> b!6616995 (=> (not res!2713265) (not e!4003060))))

(assert (=> b!6616995 (= res!2713265 lt!2417621)))

(declare-fun bm!579833 () Bool)

(assert (=> bm!579833 (= call!579838 (isEmpty!37931 (_1!36771 (get!22814 lt!2417498))))))

(declare-fun b!6616996 () Bool)

(declare-fun e!4003059 () Bool)

(assert (=> b!6616996 (= e!4003059 (matchR!8672 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 (_1!36771 (get!22814 lt!2417498)))) (tail!12507 (_1!36771 (get!22814 lt!2417498)))))))

(declare-fun d!2074208 () Bool)

(assert (=> d!2074208 e!4003061))

(declare-fun c!1219818 () Bool)

(assert (=> d!2074208 (= c!1219818 ((_ is EmptyExpr!16489) (regOne!33490 r!7292)))))

(assert (=> d!2074208 (= lt!2417621 e!4003059)))

(declare-fun c!1219819 () Bool)

(assert (=> d!2074208 (= c!1219819 (isEmpty!37931 (_1!36771 (get!22814 lt!2417498))))))

(assert (=> d!2074208 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074208 (= (matchR!8672 (regOne!33490 r!7292) (_1!36771 (get!22814 lt!2417498))) lt!2417621)))

(declare-fun b!6616997 () Bool)

(declare-fun res!2713266 () Bool)

(assert (=> b!6616997 (=> res!2713266 e!4003062)))

(assert (=> b!6616997 (= res!2713266 (not (isEmpty!37931 (tail!12507 (_1!36771 (get!22814 lt!2417498))))))))

(declare-fun b!6616998 () Bool)

(assert (=> b!6616998 (= e!4003062 (not (= (head!13422 (_1!36771 (get!22814 lt!2417498))) (c!1219498 (regOne!33490 r!7292)))))))

(declare-fun b!6616999 () Bool)

(assert (=> b!6616999 (= e!4003064 e!4003063)))

(declare-fun res!2713270 () Bool)

(assert (=> b!6616999 (=> (not res!2713270) (not e!4003063))))

(assert (=> b!6616999 (= res!2713270 (not lt!2417621))))

(declare-fun b!6617000 () Bool)

(assert (=> b!6617000 (= e!4003059 (nullable!6482 (regOne!33490 r!7292)))))

(declare-fun b!6617001 () Bool)

(declare-fun res!2713271 () Bool)

(assert (=> b!6617001 (=> res!2713271 e!4003064)))

(assert (=> b!6617001 (= res!2713271 (not ((_ is ElementMatch!16489) (regOne!33490 r!7292))))))

(assert (=> b!6617001 (= e!4003058 e!4003064)))

(declare-fun b!6617002 () Bool)

(assert (=> b!6617002 (= e!4003060 (= (head!13422 (_1!36771 (get!22814 lt!2417498))) (c!1219498 (regOne!33490 r!7292))))))

(assert (= (and d!2074208 c!1219819) b!6617000))

(assert (= (and d!2074208 (not c!1219819)) b!6616996))

(assert (= (and d!2074208 c!1219818) b!6616991))

(assert (= (and d!2074208 (not c!1219818)) b!6616994))

(assert (= (and b!6616994 c!1219820) b!6616992))

(assert (= (and b!6616994 (not c!1219820)) b!6617001))

(assert (= (and b!6617001 (not res!2713271)) b!6616995))

(assert (= (and b!6616995 res!2713265) b!6616990))

(assert (= (and b!6616990 res!2713267) b!6616993))

(assert (= (and b!6616993 res!2713272) b!6617002))

(assert (= (and b!6616995 (not res!2713269)) b!6616999))

(assert (= (and b!6616999 res!2713270) b!6616989))

(assert (= (and b!6616989 (not res!2713268)) b!6616997))

(assert (= (and b!6616997 (not res!2713266)) b!6616998))

(assert (= (or b!6616991 b!6616989 b!6616990) bm!579833))

(declare-fun m!7389648 () Bool)

(assert (=> b!6617002 m!7389648))

(declare-fun m!7389650 () Bool)

(assert (=> bm!579833 m!7389650))

(declare-fun m!7389652 () Bool)

(assert (=> b!6616997 m!7389652))

(assert (=> b!6616997 m!7389652))

(declare-fun m!7389654 () Bool)

(assert (=> b!6616997 m!7389654))

(assert (=> b!6616993 m!7389652))

(assert (=> b!6616993 m!7389652))

(assert (=> b!6616993 m!7389654))

(assert (=> b!6617000 m!7389302))

(assert (=> b!6616998 m!7389648))

(assert (=> b!6616996 m!7389648))

(assert (=> b!6616996 m!7389648))

(declare-fun m!7389656 () Bool)

(assert (=> b!6616996 m!7389656))

(assert (=> b!6616996 m!7389652))

(assert (=> b!6616996 m!7389656))

(assert (=> b!6616996 m!7389652))

(declare-fun m!7389658 () Bool)

(assert (=> b!6616996 m!7389658))

(assert (=> d!2074208 m!7389650))

(assert (=> d!2074208 m!7388876))

(assert (=> b!6615914 d!2074208))

(assert (=> b!6615914 d!2074130))

(declare-fun d!2074212 () Bool)

(assert (=> d!2074212 (= (isEmpty!37928 (tail!12506 (unfocusZipperList!1910 zl!343))) ((_ is Nil!65642) (tail!12506 (unfocusZipperList!1910 zl!343))))))

(assert (=> b!6616544 d!2074212))

(declare-fun d!2074214 () Bool)

(assert (=> d!2074214 (= (tail!12506 (unfocusZipperList!1910 zl!343)) (t!379422 (unfocusZipperList!1910 zl!343)))))

(assert (=> b!6616544 d!2074214))

(assert (=> bm!579760 d!2074096))

(declare-fun d!2074216 () Bool)

(assert (=> d!2074216 (= (nullable!6482 (regTwo!33490 r!7292)) (nullableFct!2403 (regTwo!33490 r!7292)))))

(declare-fun bs!1696451 () Bool)

(assert (= bs!1696451 d!2074216))

(declare-fun m!7389660 () Bool)

(assert (=> bs!1696451 m!7389660))

(assert (=> b!6616610 d!2074216))

(declare-fun d!2074218 () Bool)

(assert (=> d!2074218 (= (isUnion!1302 lt!2417577) ((_ is Union!16489) lt!2417577))))

(assert (=> b!6616548 d!2074218))

(assert (=> b!6616578 d!2074120))

(assert (=> b!6616578 d!2074122))

(declare-fun bs!1696452 () Bool)

(declare-fun d!2074220 () Bool)

(assert (= bs!1696452 (and d!2074220 d!2074196)))

(declare-fun lambda!369665 () Int)

(assert (=> bs!1696452 (= lambda!369665 lambda!369664)))

(assert (=> d!2074220 (= (nullableZipper!2230 z!1189) (exists!2656 z!1189 lambda!369665))))

(declare-fun bs!1696453 () Bool)

(assert (= bs!1696453 d!2074220))

(declare-fun m!7389662 () Bool)

(assert (=> bs!1696453 m!7389662))

(assert (=> b!6616557 d!2074220))

(assert (=> b!6616603 d!2074120))

(assert (=> b!6616603 d!2074122))

(declare-fun bs!1696455 () Bool)

(declare-fun b!6617011 () Bool)

(assert (= bs!1696455 (and b!6617011 b!6616596)))

(declare-fun lambda!369666 () Int)

(assert (=> bs!1696455 (= (and (= (reg!16818 (regOne!33491 r!7292)) (reg!16818 (regTwo!33490 r!7292))) (= (regOne!33491 r!7292) (regTwo!33490 r!7292))) (= lambda!369666 lambda!369652))))

(declare-fun bs!1696456 () Bool)

(assert (= bs!1696456 (and b!6617011 b!6616891)))

(assert (=> bs!1696456 (not (= lambda!369666 lambda!369661))))

(declare-fun bs!1696457 () Bool)

(assert (= bs!1696457 (and b!6617011 b!6616563)))

(assert (=> bs!1696457 (not (= lambda!369666 lambda!369651))))

(declare-fun bs!1696458 () Bool)

(assert (= bs!1696458 (and b!6617011 b!6616281)))

(assert (=> bs!1696458 (= (and (= (reg!16818 (regOne!33491 r!7292)) (reg!16818 r!7292)) (= (regOne!33491 r!7292) r!7292)) (= lambda!369666 lambda!369624))))

(declare-fun bs!1696459 () Bool)

(assert (= bs!1696459 (and b!6617011 b!6616571)))

(assert (=> bs!1696459 (= (and (= (reg!16818 (regOne!33491 r!7292)) (reg!16818 (regOne!33490 r!7292))) (= (regOne!33491 r!7292) (regOne!33490 r!7292))) (= lambda!369666 lambda!369650))))

(declare-fun bs!1696460 () Bool)

(assert (= bs!1696460 (and b!6617011 d!2073894)))

(assert (=> bs!1696460 (not (= lambda!369666 lambda!369586))))

(declare-fun bs!1696461 () Bool)

(assert (= bs!1696461 (and b!6617011 b!6615856)))

(assert (=> bs!1696461 (not (= lambda!369666 lambda!369578))))

(declare-fun bs!1696462 () Bool)

(assert (= bs!1696462 (and b!6617011 b!6616699)))

(assert (=> bs!1696462 (= (and (= (reg!16818 (regOne!33491 r!7292)) (reg!16818 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regOne!33491 r!7292) (regTwo!33491 (regTwo!33490 r!7292)))) (= lambda!369666 lambda!369655))))

(declare-fun bs!1696463 () Bool)

(assert (= bs!1696463 (and b!6617011 b!6616899)))

(assert (=> bs!1696463 (= (and (= (reg!16818 (regOne!33491 r!7292)) (reg!16818 (regTwo!33491 (regOne!33490 r!7292)))) (= (regOne!33491 r!7292) (regTwo!33491 (regOne!33490 r!7292)))) (= lambda!369666 lambda!369660))))

(declare-fun bs!1696464 () Bool)

(assert (= bs!1696464 (and b!6617011 b!6616691)))

(assert (=> bs!1696464 (not (= lambda!369666 lambda!369656))))

(assert (=> bs!1696461 (not (= lambda!369666 lambda!369577))))

(declare-fun bs!1696465 () Bool)

(assert (= bs!1696465 (and b!6617011 d!2073900)))

(assert (=> bs!1696465 (not (= lambda!369666 lambda!369595))))

(declare-fun bs!1696466 () Bool)

(assert (= bs!1696466 (and b!6617011 b!6616588)))

(assert (=> bs!1696466 (not (= lambda!369666 lambda!369653))))

(assert (=> bs!1696465 (not (= lambda!369666 lambda!369598))))

(declare-fun bs!1696467 () Bool)

(assert (= bs!1696467 (and b!6617011 b!6616273)))

(assert (=> bs!1696467 (not (= lambda!369666 lambda!369625))))

(assert (=> b!6617011 true))

(assert (=> b!6617011 true))

(declare-fun bs!1696468 () Bool)

(declare-fun b!6617003 () Bool)

(assert (= bs!1696468 (and b!6617003 b!6616596)))

(declare-fun lambda!369667 () Int)

(assert (=> bs!1696468 (not (= lambda!369667 lambda!369652))))

(declare-fun bs!1696469 () Bool)

(assert (= bs!1696469 (and b!6617003 b!6616891)))

(assert (=> bs!1696469 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))))) (= lambda!369667 lambda!369661))))

(declare-fun bs!1696470 () Bool)

(assert (= bs!1696470 (and b!6617003 b!6616563)))

(assert (=> bs!1696470 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369667 lambda!369651))))

(declare-fun bs!1696471 () Bool)

(assert (= bs!1696471 (and b!6617003 b!6616281)))

(assert (=> bs!1696471 (not (= lambda!369667 lambda!369624))))

(declare-fun bs!1696472 () Bool)

(assert (= bs!1696472 (and b!6617003 b!6616571)))

(assert (=> bs!1696472 (not (= lambda!369667 lambda!369650))))

(declare-fun bs!1696473 () Bool)

(assert (= bs!1696473 (and b!6617003 b!6617011)))

(assert (=> bs!1696473 (not (= lambda!369667 lambda!369666))))

(declare-fun bs!1696474 () Bool)

(assert (= bs!1696474 (and b!6617003 d!2073894)))

(assert (=> bs!1696474 (not (= lambda!369667 lambda!369586))))

(declare-fun bs!1696475 () Bool)

(assert (= bs!1696475 (and b!6617003 b!6615856)))

(assert (=> bs!1696475 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369667 lambda!369578))))

(declare-fun bs!1696476 () Bool)

(assert (= bs!1696476 (and b!6617003 b!6616699)))

(assert (=> bs!1696476 (not (= lambda!369667 lambda!369655))))

(declare-fun bs!1696477 () Bool)

(assert (= bs!1696477 (and b!6617003 b!6616899)))

(assert (=> bs!1696477 (not (= lambda!369667 lambda!369660))))

(declare-fun bs!1696478 () Bool)

(assert (= bs!1696478 (and b!6617003 b!6616691)))

(assert (=> bs!1696478 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369667 lambda!369656))))

(assert (=> bs!1696475 (not (= lambda!369667 lambda!369577))))

(declare-fun bs!1696480 () Bool)

(assert (= bs!1696480 (and b!6617003 d!2073900)))

(assert (=> bs!1696480 (not (= lambda!369667 lambda!369595))))

(declare-fun bs!1696482 () Bool)

(assert (= bs!1696482 (and b!6617003 b!6616588)))

(assert (=> bs!1696482 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369667 lambda!369653))))

(assert (=> bs!1696480 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369667 lambda!369598))))

(declare-fun bs!1696484 () Bool)

(assert (= bs!1696484 (and b!6617003 b!6616273)))

(assert (=> bs!1696484 (= (and (= (regOne!33490 (regOne!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369667 lambda!369625))))

(assert (=> b!6617003 true))

(assert (=> b!6617003 true))

(declare-fun e!4003071 () Bool)

(declare-fun call!579839 () Bool)

(assert (=> b!6617003 (= e!4003071 call!579839)))

(declare-fun d!2074222 () Bool)

(declare-fun c!1219824 () Bool)

(assert (=> d!2074222 (= c!1219824 ((_ is EmptyExpr!16489) (regOne!33491 r!7292)))))

(declare-fun e!4003069 () Bool)

(assert (=> d!2074222 (= (matchRSpec!3590 (regOne!33491 r!7292) s!2326) e!4003069)))

(declare-fun b!6617004 () Bool)

(declare-fun e!4003067 () Bool)

(assert (=> b!6617004 (= e!4003069 e!4003067)))

(declare-fun res!2713275 () Bool)

(assert (=> b!6617004 (= res!2713275 (not ((_ is EmptyLang!16489) (regOne!33491 r!7292))))))

(assert (=> b!6617004 (=> (not res!2713275) (not e!4003067))))

(declare-fun b!6617005 () Bool)

(declare-fun c!1219823 () Bool)

(assert (=> b!6617005 (= c!1219823 ((_ is Union!16489) (regOne!33491 r!7292)))))

(declare-fun e!4003068 () Bool)

(declare-fun e!4003070 () Bool)

(assert (=> b!6617005 (= e!4003068 e!4003070)))

(declare-fun b!6617006 () Bool)

(declare-fun call!579840 () Bool)

(assert (=> b!6617006 (= e!4003069 call!579840)))

(declare-fun b!6617007 () Bool)

(declare-fun e!4003065 () Bool)

(assert (=> b!6617007 (= e!4003070 e!4003065)))

(declare-fun res!2713273 () Bool)

(assert (=> b!6617007 (= res!2713273 (matchRSpec!3590 (regOne!33491 (regOne!33491 r!7292)) s!2326))))

(assert (=> b!6617007 (=> res!2713273 e!4003065)))

(declare-fun b!6617008 () Bool)

(declare-fun c!1219821 () Bool)

(assert (=> b!6617008 (= c!1219821 ((_ is ElementMatch!16489) (regOne!33491 r!7292)))))

(assert (=> b!6617008 (= e!4003067 e!4003068)))

(declare-fun b!6617009 () Bool)

(declare-fun res!2713274 () Bool)

(declare-fun e!4003066 () Bool)

(assert (=> b!6617009 (=> res!2713274 e!4003066)))

(assert (=> b!6617009 (= res!2713274 call!579840)))

(assert (=> b!6617009 (= e!4003071 e!4003066)))

(declare-fun bm!579834 () Bool)

(assert (=> bm!579834 (= call!579840 (isEmpty!37931 s!2326))))

(declare-fun b!6617010 () Bool)

(assert (=> b!6617010 (= e!4003068 (= s!2326 (Cons!65644 (c!1219498 (regOne!33491 r!7292)) Nil!65644)))))

(assert (=> b!6617011 (= e!4003066 call!579839)))

(declare-fun b!6617012 () Bool)

(assert (=> b!6617012 (= e!4003065 (matchRSpec!3590 (regTwo!33491 (regOne!33491 r!7292)) s!2326))))

(declare-fun c!1219822 () Bool)

(declare-fun bm!579835 () Bool)

(assert (=> bm!579835 (= call!579839 (Exists!3559 (ite c!1219822 lambda!369666 lambda!369667)))))

(declare-fun b!6617013 () Bool)

(assert (=> b!6617013 (= e!4003070 e!4003071)))

(assert (=> b!6617013 (= c!1219822 ((_ is Star!16489) (regOne!33491 r!7292)))))

(assert (= (and d!2074222 c!1219824) b!6617006))

(assert (= (and d!2074222 (not c!1219824)) b!6617004))

(assert (= (and b!6617004 res!2713275) b!6617008))

(assert (= (and b!6617008 c!1219821) b!6617010))

(assert (= (and b!6617008 (not c!1219821)) b!6617005))

(assert (= (and b!6617005 c!1219823) b!6617007))

(assert (= (and b!6617005 (not c!1219823)) b!6617013))

(assert (= (and b!6617007 (not res!2713273)) b!6617012))

(assert (= (and b!6617013 c!1219822) b!6617009))

(assert (= (and b!6617013 (not c!1219822)) b!6617003))

(assert (= (and b!6617009 (not res!2713274)) b!6617011))

(assert (= (or b!6617011 b!6617003) bm!579835))

(assert (= (or b!6617006 b!6617009) bm!579834))

(declare-fun m!7389690 () Bool)

(assert (=> b!6617007 m!7389690))

(assert (=> bm!579834 m!7389100))

(declare-fun m!7389692 () Bool)

(assert (=> b!6617012 m!7389692))

(declare-fun m!7389694 () Bool)

(assert (=> bm!579835 m!7389694))

(assert (=> b!6616277 d!2074222))

(declare-fun b!6617043 () Bool)

(declare-fun e!4003096 () Bool)

(declare-fun e!4003095 () Bool)

(assert (=> b!6617043 (= e!4003096 e!4003095)))

(declare-fun res!2713290 () Bool)

(assert (=> b!6617043 (=> res!2713290 e!4003095)))

(declare-fun call!579847 () Bool)

(assert (=> b!6617043 (= res!2713290 call!579847)))

(declare-fun b!6617044 () Bool)

(declare-fun res!2713289 () Bool)

(declare-fun e!4003093 () Bool)

(assert (=> b!6617044 (=> (not res!2713289) (not e!4003093))))

(assert (=> b!6617044 (= res!2713289 (not call!579847))))

(declare-fun b!6617045 () Bool)

(declare-fun e!4003094 () Bool)

(declare-fun lt!2417623 () Bool)

(assert (=> b!6617045 (= e!4003094 (= lt!2417623 call!579847))))

(declare-fun b!6617046 () Bool)

(declare-fun e!4003091 () Bool)

(assert (=> b!6617046 (= e!4003091 (not lt!2417623))))

(declare-fun b!6617047 () Bool)

(declare-fun res!2713294 () Bool)

(assert (=> b!6617047 (=> (not res!2713294) (not e!4003093))))

(assert (=> b!6617047 (= res!2713294 (isEmpty!37931 (tail!12507 (tail!12507 s!2326))))))

(declare-fun b!6617048 () Bool)

(assert (=> b!6617048 (= e!4003094 e!4003091)))

(declare-fun c!1219836 () Bool)

(assert (=> b!6617048 (= c!1219836 ((_ is EmptyLang!16489) (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326))))))

(declare-fun b!6617049 () Bool)

(declare-fun res!2713291 () Bool)

(declare-fun e!4003097 () Bool)

(assert (=> b!6617049 (=> res!2713291 e!4003097)))

(assert (=> b!6617049 (= res!2713291 e!4003093)))

(declare-fun res!2713287 () Bool)

(assert (=> b!6617049 (=> (not res!2713287) (not e!4003093))))

(assert (=> b!6617049 (= res!2713287 lt!2417623)))

(declare-fun bm!579842 () Bool)

(assert (=> bm!579842 (= call!579847 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun b!6617050 () Bool)

(declare-fun e!4003092 () Bool)

(assert (=> b!6617050 (= e!4003092 (matchR!8672 (derivativeStep!5169 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)) (head!13422 (tail!12507 s!2326))) (tail!12507 (tail!12507 s!2326))))))

(declare-fun d!2074234 () Bool)

(assert (=> d!2074234 e!4003094))

(declare-fun c!1219834 () Bool)

(assert (=> d!2074234 (= c!1219834 ((_ is EmptyExpr!16489) (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326))))))

(assert (=> d!2074234 (= lt!2417623 e!4003092)))

(declare-fun c!1219835 () Bool)

(assert (=> d!2074234 (= c!1219835 (isEmpty!37931 (tail!12507 s!2326)))))

(assert (=> d!2074234 (validRegex!8225 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)))))

(assert (=> d!2074234 (= (matchR!8672 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)) (tail!12507 s!2326)) lt!2417623)))

(declare-fun b!6617051 () Bool)

(declare-fun res!2713288 () Bool)

(assert (=> b!6617051 (=> res!2713288 e!4003095)))

(assert (=> b!6617051 (= res!2713288 (not (isEmpty!37931 (tail!12507 (tail!12507 s!2326)))))))

(declare-fun b!6617052 () Bool)

(assert (=> b!6617052 (= e!4003095 (not (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326))))))))

(declare-fun b!6617053 () Bool)

(assert (=> b!6617053 (= e!4003097 e!4003096)))

(declare-fun res!2713292 () Bool)

(assert (=> b!6617053 (=> (not res!2713292) (not e!4003096))))

(assert (=> b!6617053 (= res!2713292 (not lt!2417623))))

(declare-fun b!6617054 () Bool)

(assert (=> b!6617054 (= e!4003092 (nullable!6482 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326))))))

(declare-fun b!6617055 () Bool)

(declare-fun res!2713293 () Bool)

(assert (=> b!6617055 (=> res!2713293 e!4003097)))

(assert (=> b!6617055 (= res!2713293 (not ((_ is ElementMatch!16489) (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)))))))

(assert (=> b!6617055 (= e!4003091 e!4003097)))

(declare-fun b!6617056 () Bool)

(assert (=> b!6617056 (= e!4003093 (= (head!13422 (tail!12507 s!2326)) (c!1219498 (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)))))))

(assert (= (and d!2074234 c!1219835) b!6617054))

(assert (= (and d!2074234 (not c!1219835)) b!6617050))

(assert (= (and d!2074234 c!1219834) b!6617045))

(assert (= (and d!2074234 (not c!1219834)) b!6617048))

(assert (= (and b!6617048 c!1219836) b!6617046))

(assert (= (and b!6617048 (not c!1219836)) b!6617055))

(assert (= (and b!6617055 (not res!2713293)) b!6617049))

(assert (= (and b!6617049 res!2713287) b!6617044))

(assert (= (and b!6617044 res!2713289) b!6617047))

(assert (= (and b!6617047 res!2713294) b!6617056))

(assert (= (and b!6617049 (not res!2713291)) b!6617053))

(assert (= (and b!6617053 res!2713292) b!6617043))

(assert (= (and b!6617043 (not res!2713290)) b!6617051))

(assert (= (and b!6617051 (not res!2713288)) b!6617052))

(assert (= (or b!6617045 b!6617043 b!6617044) bm!579842))

(assert (=> b!6617056 m!7389136))

(assert (=> b!6617056 m!7389528))

(assert (=> bm!579842 m!7389136))

(assert (=> bm!579842 m!7389138))

(assert (=> b!6617051 m!7389136))

(assert (=> b!6617051 m!7389530))

(assert (=> b!6617051 m!7389530))

(assert (=> b!6617051 m!7389532))

(assert (=> b!6617047 m!7389136))

(assert (=> b!6617047 m!7389530))

(assert (=> b!6617047 m!7389530))

(assert (=> b!6617047 m!7389532))

(assert (=> b!6617054 m!7389316))

(declare-fun m!7389696 () Bool)

(assert (=> b!6617054 m!7389696))

(assert (=> b!6617052 m!7389136))

(assert (=> b!6617052 m!7389528))

(assert (=> b!6617050 m!7389136))

(assert (=> b!6617050 m!7389528))

(assert (=> b!6617050 m!7389316))

(assert (=> b!6617050 m!7389528))

(declare-fun m!7389698 () Bool)

(assert (=> b!6617050 m!7389698))

(assert (=> b!6617050 m!7389136))

(assert (=> b!6617050 m!7389530))

(assert (=> b!6617050 m!7389698))

(assert (=> b!6617050 m!7389530))

(declare-fun m!7389700 () Bool)

(assert (=> b!6617050 m!7389700))

(assert (=> d!2074234 m!7389136))

(assert (=> d!2074234 m!7389138))

(assert (=> d!2074234 m!7389316))

(declare-fun m!7389702 () Bool)

(assert (=> d!2074234 m!7389702))

(assert (=> b!6616606 d!2074234))

(declare-fun b!6617057 () Bool)

(declare-fun e!4003102 () Regex!16489)

(declare-fun e!4003098 () Regex!16489)

(assert (=> b!6617057 (= e!4003102 e!4003098)))

(declare-fun c!1219839 () Bool)

(assert (=> b!6617057 (= c!1219839 ((_ is ElementMatch!16489) (regTwo!33490 r!7292)))))

(declare-fun call!579851 () Regex!16489)

(declare-fun call!579848 () Regex!16489)

(declare-fun b!6617058 () Bool)

(declare-fun e!4003099 () Regex!16489)

(assert (=> b!6617058 (= e!4003099 (Union!16489 (Concat!25334 call!579848 (regTwo!33490 (regTwo!33490 r!7292))) call!579851))))

(declare-fun d!2074236 () Bool)

(declare-fun lt!2417624 () Regex!16489)

(assert (=> d!2074236 (validRegex!8225 lt!2417624)))

(assert (=> d!2074236 (= lt!2417624 e!4003102)))

(declare-fun c!1219840 () Bool)

(assert (=> d!2074236 (= c!1219840 (or ((_ is EmptyExpr!16489) (regTwo!33490 r!7292)) ((_ is EmptyLang!16489) (regTwo!33490 r!7292))))))

(assert (=> d!2074236 (validRegex!8225 (regTwo!33490 r!7292))))

(assert (=> d!2074236 (= (derivativeStep!5169 (regTwo!33490 r!7292) (head!13422 s!2326)) lt!2417624)))

(declare-fun c!1219841 () Bool)

(declare-fun bm!579843 () Bool)

(assert (=> bm!579843 (= call!579848 (derivativeStep!5169 (ite c!1219841 (regOne!33491 (regTwo!33490 r!7292)) (regOne!33490 (regTwo!33490 r!7292))) (head!13422 s!2326)))))

(declare-fun c!1219838 () Bool)

(declare-fun bm!579844 () Bool)

(declare-fun c!1219837 () Bool)

(declare-fun call!579850 () Regex!16489)

(assert (=> bm!579844 (= call!579850 (derivativeStep!5169 (ite c!1219841 (regTwo!33491 (regTwo!33490 r!7292)) (ite c!1219837 (reg!16818 (regTwo!33490 r!7292)) (ite c!1219838 (regTwo!33490 (regTwo!33490 r!7292)) (regOne!33490 (regTwo!33490 r!7292))))) (head!13422 s!2326)))))

(declare-fun b!6617059 () Bool)

(declare-fun e!4003100 () Regex!16489)

(declare-fun e!4003101 () Regex!16489)

(assert (=> b!6617059 (= e!4003100 e!4003101)))

(assert (=> b!6617059 (= c!1219837 ((_ is Star!16489) (regTwo!33490 r!7292)))))

(declare-fun b!6617060 () Bool)

(assert (=> b!6617060 (= e!4003102 EmptyLang!16489)))

(declare-fun b!6617061 () Bool)

(assert (=> b!6617061 (= c!1219841 ((_ is Union!16489) (regTwo!33490 r!7292)))))

(assert (=> b!6617061 (= e!4003098 e!4003100)))

(declare-fun b!6617062 () Bool)

(assert (=> b!6617062 (= e!4003099 (Union!16489 (Concat!25334 call!579851 (regTwo!33490 (regTwo!33490 r!7292))) EmptyLang!16489))))

(declare-fun bm!579845 () Bool)

(declare-fun call!579849 () Regex!16489)

(assert (=> bm!579845 (= call!579851 call!579849)))

(declare-fun b!6617063 () Bool)

(assert (=> b!6617063 (= e!4003101 (Concat!25334 call!579849 (regTwo!33490 r!7292)))))

(declare-fun b!6617064 () Bool)

(assert (=> b!6617064 (= e!4003100 (Union!16489 call!579848 call!579850))))

(declare-fun bm!579846 () Bool)

(assert (=> bm!579846 (= call!579849 call!579850)))

(declare-fun b!6617065 () Bool)

(assert (=> b!6617065 (= e!4003098 (ite (= (head!13422 s!2326) (c!1219498 (regTwo!33490 r!7292))) EmptyExpr!16489 EmptyLang!16489))))

(declare-fun b!6617066 () Bool)

(assert (=> b!6617066 (= c!1219838 (nullable!6482 (regOne!33490 (regTwo!33490 r!7292))))))

(assert (=> b!6617066 (= e!4003101 e!4003099)))

(assert (= (and d!2074236 c!1219840) b!6617060))

(assert (= (and d!2074236 (not c!1219840)) b!6617057))

(assert (= (and b!6617057 c!1219839) b!6617065))

(assert (= (and b!6617057 (not c!1219839)) b!6617061))

(assert (= (and b!6617061 c!1219841) b!6617064))

(assert (= (and b!6617061 (not c!1219841)) b!6617059))

(assert (= (and b!6617059 c!1219837) b!6617063))

(assert (= (and b!6617059 (not c!1219837)) b!6617066))

(assert (= (and b!6617066 c!1219838) b!6617058))

(assert (= (and b!6617066 (not c!1219838)) b!6617062))

(assert (= (or b!6617058 b!6617062) bm!579845))

(assert (= (or b!6617063 bm!579845) bm!579846))

(assert (= (or b!6617064 bm!579846) bm!579844))

(assert (= (or b!6617064 b!6617058) bm!579843))

(declare-fun m!7389704 () Bool)

(assert (=> d!2074236 m!7389704))

(assert (=> d!2074236 m!7389320))

(assert (=> bm!579843 m!7389134))

(declare-fun m!7389706 () Bool)

(assert (=> bm!579843 m!7389706))

(assert (=> bm!579844 m!7389134))

(declare-fun m!7389708 () Bool)

(assert (=> bm!579844 m!7389708))

(declare-fun m!7389710 () Bool)

(assert (=> b!6617066 m!7389710))

(assert (=> b!6616606 d!2074236))

(assert (=> b!6616606 d!2074166))

(assert (=> b!6616606 d!2074122))

(assert (=> d!2074060 d!2074096))

(assert (=> d!2074060 d!2074186))

(declare-fun d!2074238 () Bool)

(assert (=> d!2074238 (= (Exists!3559 (ite c!1219702 lambda!369650 lambda!369651)) (choose!49438 (ite c!1219702 lambda!369650 lambda!369651)))))

(declare-fun bs!1696501 () Bool)

(assert (= bs!1696501 d!2074238))

(declare-fun m!7389712 () Bool)

(assert (=> bs!1696501 m!7389712))

(assert (=> bm!579758 d!2074238))

(declare-fun d!2074240 () Bool)

(assert (=> d!2074240 (= (flatMap!1994 lt!2417472 lambda!369648) (choose!49447 lt!2417472 lambda!369648))))

(declare-fun bs!1696502 () Bool)

(assert (= bs!1696502 d!2074240))

(declare-fun m!7389714 () Bool)

(assert (=> bs!1696502 m!7389714))

(assert (=> d!2074042 d!2074240))

(declare-fun d!2074242 () Bool)

(assert (=> d!2074242 (= (isConcat!1385 lt!2417538) ((_ is Concat!25334) lt!2417538))))

(assert (=> b!6616156 d!2074242))

(assert (=> b!6616352 d!2074166))

(declare-fun b!6617067 () Bool)

(declare-fun c!1219843 () Bool)

(declare-fun e!4003106 () Bool)

(assert (=> b!6617067 (= c!1219843 e!4003106)))

(declare-fun res!2713295 () Bool)

(assert (=> b!6617067 (=> (not res!2713295) (not e!4003106))))

(assert (=> b!6617067 (= res!2713295 ((_ is Concat!25334) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun e!4003104 () (InoxSet Context!11746))

(declare-fun e!4003103 () (InoxSet Context!11746))

(assert (=> b!6617067 (= e!4003104 e!4003103)))

(declare-fun b!6617068 () Bool)

(declare-fun call!579853 () (InoxSet Context!11746))

(declare-fun call!579852 () (InoxSet Context!11746))

(assert (=> b!6617068 (= e!4003104 ((_ map or) call!579853 call!579852))))

(declare-fun bm!579847 () Bool)

(declare-fun call!579857 () (InoxSet Context!11746))

(assert (=> bm!579847 (= call!579857 call!579852)))

(declare-fun bm!579848 () Bool)

(declare-fun call!579855 () (InoxSet Context!11746))

(assert (=> bm!579848 (= call!579855 call!579857)))

(declare-fun bm!579850 () Bool)

(declare-fun c!1219845 () Bool)

(declare-fun c!1219844 () Bool)

(declare-fun call!579856 () List!65766)

(assert (=> bm!579850 (= call!579852 (derivationStepZipperDown!1737 (ite c!1219845 (regTwo!33491 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (ite c!1219843 (regTwo!33490 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (ite c!1219844 (regOne!33490 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (reg!16818 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))) (ite (or c!1219845 c!1219843) (ite c!1219669 lt!2417478 (Context!11747 call!579749)) (Context!11747 call!579856)) (h!72092 s!2326)))))

(declare-fun e!4003105 () (InoxSet Context!11746))

(declare-fun b!6617069 () Bool)

(assert (=> b!6617069 (= e!4003105 (store ((as const (Array Context!11746 Bool)) false) (ite c!1219669 lt!2417478 (Context!11747 call!579749)) true))))

(declare-fun b!6617070 () Bool)

(declare-fun e!4003108 () (InoxSet Context!11746))

(assert (=> b!6617070 (= e!4003108 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6617071 () Bool)

(assert (=> b!6617071 (= e!4003108 call!579855)))

(declare-fun call!579854 () List!65766)

(declare-fun bm!579851 () Bool)

(assert (=> bm!579851 (= call!579854 ($colon$colon!2326 (exprs!6373 (ite c!1219669 lt!2417478 (Context!11747 call!579749))) (ite (or c!1219843 c!1219844) (regTwo!33490 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))))

(declare-fun b!6617072 () Bool)

(assert (=> b!6617072 (= e!4003103 ((_ map or) call!579853 call!579857))))

(declare-fun c!1219846 () Bool)

(declare-fun d!2074246 () Bool)

(assert (=> d!2074246 (= c!1219846 (and ((_ is ElementMatch!16489) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (= (c!1219498 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (h!72092 s!2326))))))

(assert (=> d!2074246 (= (derivationStepZipperDown!1737 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))) (ite c!1219669 lt!2417478 (Context!11747 call!579749)) (h!72092 s!2326)) e!4003105)))

(declare-fun bm!579849 () Bool)

(assert (=> bm!579849 (= call!579853 (derivationStepZipperDown!1737 (ite c!1219845 (regOne!33491 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))) (regOne!33490 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))) (ite c!1219845 (ite c!1219669 lt!2417478 (Context!11747 call!579749)) (Context!11747 call!579854)) (h!72092 s!2326)))))

(declare-fun b!6617073 () Bool)

(assert (=> b!6617073 (= e!4003106 (nullable!6482 (regOne!33490 (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))))

(declare-fun b!6617074 () Bool)

(declare-fun c!1219842 () Bool)

(assert (=> b!6617074 (= c!1219842 ((_ is Star!16489) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun e!4003107 () (InoxSet Context!11746))

(assert (=> b!6617074 (= e!4003107 e!4003108)))

(declare-fun b!6617075 () Bool)

(assert (=> b!6617075 (= e!4003107 call!579855)))

(declare-fun b!6617076 () Bool)

(assert (=> b!6617076 (= e!4003105 e!4003104)))

(assert (=> b!6617076 (= c!1219845 ((_ is Union!16489) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun bm!579852 () Bool)

(assert (=> bm!579852 (= call!579856 call!579854)))

(declare-fun b!6617077 () Bool)

(assert (=> b!6617077 (= e!4003103 e!4003107)))

(assert (=> b!6617077 (= c!1219844 ((_ is Concat!25334) (ite c!1219669 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(assert (= (and d!2074246 c!1219846) b!6617069))

(assert (= (and d!2074246 (not c!1219846)) b!6617076))

(assert (= (and b!6617076 c!1219845) b!6617068))

(assert (= (and b!6617076 (not c!1219845)) b!6617067))

(assert (= (and b!6617067 res!2713295) b!6617073))

(assert (= (and b!6617067 c!1219843) b!6617072))

(assert (= (and b!6617067 (not c!1219843)) b!6617077))

(assert (= (and b!6617077 c!1219844) b!6617075))

(assert (= (and b!6617077 (not c!1219844)) b!6617074))

(assert (= (and b!6617074 c!1219842) b!6617071))

(assert (= (and b!6617074 (not c!1219842)) b!6617070))

(assert (= (or b!6617075 b!6617071) bm!579852))

(assert (= (or b!6617075 b!6617071) bm!579848))

(assert (= (or b!6617072 bm!579852) bm!579851))

(assert (= (or b!6617072 bm!579848) bm!579847))

(assert (= (or b!6617068 bm!579847) bm!579850))

(assert (= (or b!6617068 b!6617072) bm!579849))

(declare-fun m!7389726 () Bool)

(assert (=> bm!579849 m!7389726))

(declare-fun m!7389728 () Bool)

(assert (=> bm!579850 m!7389728))

(declare-fun m!7389730 () Bool)

(assert (=> b!6617073 m!7389730))

(declare-fun m!7389732 () Bool)

(assert (=> bm!579851 m!7389732))

(declare-fun m!7389734 () Bool)

(assert (=> b!6617069 m!7389734))

(assert (=> bm!579744 d!2074246))

(declare-fun bs!1696505 () Bool)

(declare-fun d!2074252 () Bool)

(assert (= bs!1696505 (and d!2074252 d!2074196)))

(declare-fun lambda!369670 () Int)

(assert (=> bs!1696505 (= lambda!369670 lambda!369664)))

(declare-fun bs!1696506 () Bool)

(assert (= bs!1696506 (and d!2074252 d!2074220)))

(assert (=> bs!1696506 (= lambda!369670 lambda!369665)))

(assert (=> d!2074252 (= (nullableZipper!2230 lt!2417481) (exists!2656 lt!2417481 lambda!369670))))

(declare-fun bs!1696507 () Bool)

(assert (= bs!1696507 d!2074252))

(declare-fun m!7389736 () Bool)

(assert (=> bs!1696507 m!7389736))

(assert (=> b!6616519 d!2074252))

(assert (=> d!2073988 d!2073990))

(declare-fun d!2074254 () Bool)

(assert (=> d!2074254 (= (flatMap!1994 z!1189 lambda!369579) (dynLambda!26142 lambda!369579 (h!72091 zl!343)))))

(assert (=> d!2074254 true))

(declare-fun _$13!3893 () Unit!159311)

(assert (=> d!2074254 (= (choose!49446 z!1189 (h!72091 zl!343) lambda!369579) _$13!3893)))

(declare-fun b_lambda!250251 () Bool)

(assert (=> (not b_lambda!250251) (not d!2074254)))

(declare-fun bs!1696508 () Bool)

(assert (= bs!1696508 d!2074254))

(assert (=> bs!1696508 m!7388806))

(assert (=> bs!1696508 m!7389148))

(assert (=> d!2073988 d!2074254))

(declare-fun d!2074256 () Bool)

(declare-fun c!1219847 () Bool)

(assert (=> d!2074256 (= c!1219847 (isEmpty!37931 (tail!12507 (t!379424 s!2326))))))

(declare-fun e!4003109 () Bool)

(assert (=> d!2074256 (= (matchZipper!2501 (derivationStepZipper!2455 lt!2417475 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))) e!4003109)))

(declare-fun b!6617078 () Bool)

(assert (=> b!6617078 (= e!4003109 (nullableZipper!2230 (derivationStepZipper!2455 lt!2417475 (head!13422 (t!379424 s!2326)))))))

(declare-fun b!6617079 () Bool)

(assert (=> b!6617079 (= e!4003109 (matchZipper!2501 (derivationStepZipper!2455 (derivationStepZipper!2455 lt!2417475 (head!13422 (t!379424 s!2326))) (head!13422 (tail!12507 (t!379424 s!2326)))) (tail!12507 (tail!12507 (t!379424 s!2326)))))))

(assert (= (and d!2074256 c!1219847) b!6617078))

(assert (= (and d!2074256 (not c!1219847)) b!6617079))

(assert (=> d!2074256 m!7389226))

(assert (=> d!2074256 m!7389506))

(assert (=> b!6617078 m!7389278))

(declare-fun m!7389738 () Bool)

(assert (=> b!6617078 m!7389738))

(assert (=> b!6617079 m!7389226))

(assert (=> b!6617079 m!7389510))

(assert (=> b!6617079 m!7389278))

(assert (=> b!6617079 m!7389510))

(declare-fun m!7389740 () Bool)

(assert (=> b!6617079 m!7389740))

(assert (=> b!6617079 m!7389226))

(assert (=> b!6617079 m!7389514))

(assert (=> b!6617079 m!7389740))

(assert (=> b!6617079 m!7389514))

(declare-fun m!7389742 () Bool)

(assert (=> b!6617079 m!7389742))

(assert (=> b!6616560 d!2074256))

(declare-fun bs!1696509 () Bool)

(declare-fun d!2074258 () Bool)

(assert (= bs!1696509 (and d!2074258 b!6615850)))

(declare-fun lambda!369671 () Int)

(assert (=> bs!1696509 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369671 lambda!369579))))

(declare-fun bs!1696510 () Bool)

(assert (= bs!1696510 (and d!2074258 d!2074042)))

(assert (=> bs!1696510 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369671 lambda!369648))))

(declare-fun bs!1696511 () Bool)

(assert (= bs!1696511 (and d!2074258 d!2074048)))

(assert (=> bs!1696511 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369671 lambda!369649))))

(declare-fun bs!1696512 () Bool)

(assert (= bs!1696512 (and d!2074258 d!2074142)))

(assert (=> bs!1696512 (= lambda!369671 lambda!369657)))

(assert (=> d!2074258 true))

(assert (=> d!2074258 (= (derivationStepZipper!2455 lt!2417475 (head!13422 (t!379424 s!2326))) (flatMap!1994 lt!2417475 lambda!369671))))

(declare-fun bs!1696513 () Bool)

(assert (= bs!1696513 d!2074258))

(declare-fun m!7389744 () Bool)

(assert (=> bs!1696513 m!7389744))

(assert (=> b!6616560 d!2074258))

(assert (=> b!6616560 d!2074146))

(assert (=> b!6616560 d!2074148))

(declare-fun d!2074260 () Bool)

(assert (=> d!2074260 true))

(assert (=> d!2074260 true))

(declare-fun res!2713302 () Bool)

(assert (=> d!2074260 (= (choose!49438 lambda!369577) res!2713302)))

(assert (=> d!2073892 d!2074260))

(declare-fun d!2074262 () Bool)

(assert (=> d!2074262 (= (head!13421 (exprs!6373 (h!72091 zl!343))) (h!72090 (exprs!6373 (h!72091 zl!343))))))

(assert (=> b!6616152 d!2074262))

(declare-fun bs!1696514 () Bool)

(declare-fun d!2074264 () Bool)

(assert (= bs!1696514 (and d!2074264 d!2074196)))

(declare-fun lambda!369674 () Int)

(assert (=> bs!1696514 (= lambda!369674 lambda!369664)))

(declare-fun bs!1696515 () Bool)

(assert (= bs!1696515 (and d!2074264 d!2074220)))

(assert (=> bs!1696515 (= lambda!369674 lambda!369665)))

(declare-fun bs!1696516 () Bool)

(assert (= bs!1696516 (and d!2074264 d!2074252)))

(assert (=> bs!1696516 (= lambda!369674 lambda!369670)))

(assert (=> d!2074264 (= (nullableZipper!2230 lt!2417476) (exists!2656 lt!2417476 lambda!369674))))

(declare-fun bs!1696517 () Bool)

(assert (= bs!1696517 d!2074264))

(declare-fun m!7389746 () Bool)

(assert (=> bs!1696517 m!7389746))

(assert (=> b!6616515 d!2074264))

(assert (=> b!6616356 d!2074166))

(assert (=> bm!579757 d!2074096))

(assert (=> b!6616582 d!2074120))

(assert (=> b!6616582 d!2074122))

(declare-fun bs!1696518 () Bool)

(declare-fun b!6617096 () Bool)

(assert (= bs!1696518 (and b!6617096 b!6616891)))

(declare-fun lambda!369677 () Int)

(assert (=> bs!1696518 (not (= lambda!369677 lambda!369661))))

(declare-fun bs!1696519 () Bool)

(assert (= bs!1696519 (and b!6617096 b!6616563)))

(assert (=> bs!1696519 (not (= lambda!369677 lambda!369651))))

(declare-fun bs!1696520 () Bool)

(assert (= bs!1696520 (and b!6617096 b!6616281)))

(assert (=> bs!1696520 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 r!7292)) (= (regOne!33491 (regTwo!33490 r!7292)) r!7292)) (= lambda!369677 lambda!369624))))

(declare-fun bs!1696521 () Bool)

(assert (= bs!1696521 (and b!6617096 b!6616571)))

(assert (=> bs!1696521 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 (regOne!33490 r!7292))) (= (regOne!33491 (regTwo!33490 r!7292)) (regOne!33490 r!7292))) (= lambda!369677 lambda!369650))))

(declare-fun bs!1696522 () Bool)

(assert (= bs!1696522 (and b!6617096 b!6617011)))

(assert (=> bs!1696522 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 (regOne!33491 r!7292))) (= (regOne!33491 (regTwo!33490 r!7292)) (regOne!33491 r!7292))) (= lambda!369677 lambda!369666))))

(declare-fun bs!1696523 () Bool)

(assert (= bs!1696523 (and b!6617096 d!2073894)))

(assert (=> bs!1696523 (not (= lambda!369677 lambda!369586))))

(declare-fun bs!1696524 () Bool)

(assert (= bs!1696524 (and b!6617096 b!6615856)))

(assert (=> bs!1696524 (not (= lambda!369677 lambda!369578))))

(declare-fun bs!1696526 () Bool)

(assert (= bs!1696526 (and b!6617096 b!6616699)))

(assert (=> bs!1696526 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regOne!33491 (regTwo!33490 r!7292)) (regTwo!33491 (regTwo!33490 r!7292)))) (= lambda!369677 lambda!369655))))

(declare-fun bs!1696528 () Bool)

(assert (= bs!1696528 (and b!6617096 b!6616899)))

(assert (=> bs!1696528 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 (regTwo!33491 (regOne!33490 r!7292)))) (= (regOne!33491 (regTwo!33490 r!7292)) (regTwo!33491 (regOne!33490 r!7292)))) (= lambda!369677 lambda!369660))))

(declare-fun bs!1696530 () Bool)

(assert (= bs!1696530 (and b!6617096 b!6616691)))

(assert (=> bs!1696530 (not (= lambda!369677 lambda!369656))))

(assert (=> bs!1696524 (not (= lambda!369677 lambda!369577))))

(declare-fun bs!1696533 () Bool)

(assert (= bs!1696533 (and b!6617096 b!6616596)))

(assert (=> bs!1696533 (= (and (= (reg!16818 (regOne!33491 (regTwo!33490 r!7292))) (reg!16818 (regTwo!33490 r!7292))) (= (regOne!33491 (regTwo!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369677 lambda!369652))))

(declare-fun bs!1696535 () Bool)

(assert (= bs!1696535 (and b!6617096 b!6617003)))

(assert (=> bs!1696535 (not (= lambda!369677 lambda!369667))))

(declare-fun bs!1696537 () Bool)

(assert (= bs!1696537 (and b!6617096 d!2073900)))

(assert (=> bs!1696537 (not (= lambda!369677 lambda!369595))))

(declare-fun bs!1696539 () Bool)

(assert (= bs!1696539 (and b!6617096 b!6616588)))

(assert (=> bs!1696539 (not (= lambda!369677 lambda!369653))))

(assert (=> bs!1696537 (not (= lambda!369677 lambda!369598))))

(declare-fun bs!1696541 () Bool)

(assert (= bs!1696541 (and b!6617096 b!6616273)))

(assert (=> bs!1696541 (not (= lambda!369677 lambda!369625))))

(assert (=> b!6617096 true))

(assert (=> b!6617096 true))

(declare-fun bs!1696544 () Bool)

(declare-fun b!6617088 () Bool)

(assert (= bs!1696544 (and b!6617088 b!6616891)))

(declare-fun lambda!369679 () Int)

(assert (=> bs!1696544 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))))) (= lambda!369679 lambda!369661))))

(declare-fun bs!1696545 () Bool)

(assert (= bs!1696545 (and b!6617088 b!6616563)))

(assert (=> bs!1696545 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369679 lambda!369651))))

(declare-fun bs!1696546 () Bool)

(assert (= bs!1696546 (and b!6617088 b!6617096)))

(assert (=> bs!1696546 (not (= lambda!369679 lambda!369677))))

(declare-fun bs!1696547 () Bool)

(assert (= bs!1696547 (and b!6617088 b!6616281)))

(assert (=> bs!1696547 (not (= lambda!369679 lambda!369624))))

(declare-fun bs!1696548 () Bool)

(assert (= bs!1696548 (and b!6617088 b!6616571)))

(assert (=> bs!1696548 (not (= lambda!369679 lambda!369650))))

(declare-fun bs!1696549 () Bool)

(assert (= bs!1696549 (and b!6617088 b!6617011)))

(assert (=> bs!1696549 (not (= lambda!369679 lambda!369666))))

(declare-fun bs!1696550 () Bool)

(assert (= bs!1696550 (and b!6617088 d!2073894)))

(assert (=> bs!1696550 (not (= lambda!369679 lambda!369586))))

(declare-fun bs!1696551 () Bool)

(assert (= bs!1696551 (and b!6617088 b!6615856)))

(assert (=> bs!1696551 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369679 lambda!369578))))

(declare-fun bs!1696552 () Bool)

(assert (= bs!1696552 (and b!6617088 b!6616699)))

(assert (=> bs!1696552 (not (= lambda!369679 lambda!369655))))

(declare-fun bs!1696553 () Bool)

(assert (= bs!1696553 (and b!6617088 b!6616899)))

(assert (=> bs!1696553 (not (= lambda!369679 lambda!369660))))

(declare-fun bs!1696554 () Bool)

(assert (= bs!1696554 (and b!6617088 b!6616691)))

(assert (=> bs!1696554 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369679 lambda!369656))))

(assert (=> bs!1696551 (not (= lambda!369679 lambda!369577))))

(declare-fun bs!1696555 () Bool)

(assert (= bs!1696555 (and b!6617088 b!6616596)))

(assert (=> bs!1696555 (not (= lambda!369679 lambda!369652))))

(declare-fun bs!1696556 () Bool)

(assert (= bs!1696556 (and b!6617088 b!6617003)))

(assert (=> bs!1696556 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 (regOne!33491 r!7292))) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regOne!33491 r!7292)))) (= lambda!369679 lambda!369667))))

(declare-fun bs!1696558 () Bool)

(assert (= bs!1696558 (and b!6617088 d!2073900)))

(assert (=> bs!1696558 (not (= lambda!369679 lambda!369595))))

(declare-fun bs!1696559 () Bool)

(assert (= bs!1696559 (and b!6617088 b!6616588)))

(assert (=> bs!1696559 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369679 lambda!369653))))

(assert (=> bs!1696558 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369679 lambda!369598))))

(declare-fun bs!1696560 () Bool)

(assert (= bs!1696560 (and b!6617088 b!6616273)))

(assert (=> bs!1696560 (= (and (= (regOne!33490 (regOne!33491 (regTwo!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369679 lambda!369625))))

(assert (=> b!6617088 true))

(assert (=> b!6617088 true))

(declare-fun e!4003120 () Bool)

(declare-fun call!579858 () Bool)

(assert (=> b!6617088 (= e!4003120 call!579858)))

(declare-fun d!2074266 () Bool)

(declare-fun c!1219851 () Bool)

(assert (=> d!2074266 (= c!1219851 ((_ is EmptyExpr!16489) (regOne!33491 (regTwo!33490 r!7292))))))

(declare-fun e!4003118 () Bool)

(assert (=> d!2074266 (= (matchRSpec!3590 (regOne!33491 (regTwo!33490 r!7292)) s!2326) e!4003118)))

(declare-fun b!6617089 () Bool)

(declare-fun e!4003116 () Bool)

(assert (=> b!6617089 (= e!4003118 e!4003116)))

(declare-fun res!2713309 () Bool)

(assert (=> b!6617089 (= res!2713309 (not ((_ is EmptyLang!16489) (regOne!33491 (regTwo!33490 r!7292)))))))

(assert (=> b!6617089 (=> (not res!2713309) (not e!4003116))))

(declare-fun b!6617090 () Bool)

(declare-fun c!1219850 () Bool)

(assert (=> b!6617090 (= c!1219850 ((_ is Union!16489) (regOne!33491 (regTwo!33490 r!7292))))))

(declare-fun e!4003117 () Bool)

(declare-fun e!4003119 () Bool)

(assert (=> b!6617090 (= e!4003117 e!4003119)))

(declare-fun b!6617091 () Bool)

(declare-fun call!579859 () Bool)

(assert (=> b!6617091 (= e!4003118 call!579859)))

(declare-fun b!6617092 () Bool)

(declare-fun e!4003114 () Bool)

(assert (=> b!6617092 (= e!4003119 e!4003114)))

(declare-fun res!2713307 () Bool)

(assert (=> b!6617092 (= res!2713307 (matchRSpec!3590 (regOne!33491 (regOne!33491 (regTwo!33490 r!7292))) s!2326))))

(assert (=> b!6617092 (=> res!2713307 e!4003114)))

(declare-fun b!6617093 () Bool)

(declare-fun c!1219848 () Bool)

(assert (=> b!6617093 (= c!1219848 ((_ is ElementMatch!16489) (regOne!33491 (regTwo!33490 r!7292))))))

(assert (=> b!6617093 (= e!4003116 e!4003117)))

(declare-fun b!6617094 () Bool)

(declare-fun res!2713308 () Bool)

(declare-fun e!4003115 () Bool)

(assert (=> b!6617094 (=> res!2713308 e!4003115)))

(assert (=> b!6617094 (= res!2713308 call!579859)))

(assert (=> b!6617094 (= e!4003120 e!4003115)))

(declare-fun bm!579853 () Bool)

(assert (=> bm!579853 (= call!579859 (isEmpty!37931 s!2326))))

(declare-fun b!6617095 () Bool)

(assert (=> b!6617095 (= e!4003117 (= s!2326 (Cons!65644 (c!1219498 (regOne!33491 (regTwo!33490 r!7292))) Nil!65644)))))

(assert (=> b!6617096 (= e!4003115 call!579858)))

(declare-fun b!6617097 () Bool)

(assert (=> b!6617097 (= e!4003114 (matchRSpec!3590 (regTwo!33491 (regOne!33491 (regTwo!33490 r!7292))) s!2326))))

(declare-fun bm!579854 () Bool)

(declare-fun c!1219849 () Bool)

(assert (=> bm!579854 (= call!579858 (Exists!3559 (ite c!1219849 lambda!369677 lambda!369679)))))

(declare-fun b!6617098 () Bool)

(assert (=> b!6617098 (= e!4003119 e!4003120)))

(assert (=> b!6617098 (= c!1219849 ((_ is Star!16489) (regOne!33491 (regTwo!33490 r!7292))))))

(assert (= (and d!2074266 c!1219851) b!6617091))

(assert (= (and d!2074266 (not c!1219851)) b!6617089))

(assert (= (and b!6617089 res!2713309) b!6617093))

(assert (= (and b!6617093 c!1219848) b!6617095))

(assert (= (and b!6617093 (not c!1219848)) b!6617090))

(assert (= (and b!6617090 c!1219850) b!6617092))

(assert (= (and b!6617090 (not c!1219850)) b!6617098))

(assert (= (and b!6617092 (not res!2713307)) b!6617097))

(assert (= (and b!6617098 c!1219849) b!6617094))

(assert (= (and b!6617098 (not c!1219849)) b!6617088))

(assert (= (and b!6617094 (not res!2713308)) b!6617096))

(assert (= (or b!6617096 b!6617088) bm!579854))

(assert (= (or b!6617091 b!6617094) bm!579853))

(declare-fun m!7389752 () Bool)

(assert (=> b!6617092 m!7389752))

(assert (=> bm!579853 m!7389100))

(declare-fun m!7389754 () Bool)

(assert (=> b!6617097 m!7389754))

(declare-fun m!7389756 () Bool)

(assert (=> bm!579854 m!7389756))

(assert (=> b!6616592 d!2074266))

(declare-fun d!2074270 () Bool)

(assert (=> d!2074270 (= (head!13421 (unfocusZipperList!1910 zl!343)) (h!72090 (unfocusZipperList!1910 zl!343)))))

(assert (=> b!6616545 d!2074270))

(declare-fun bs!1696561 () Bool)

(declare-fun d!2074272 () Bool)

(assert (= bs!1696561 (and d!2074272 d!2073930)))

(declare-fun lambda!369681 () Int)

(assert (=> bs!1696561 (= lambda!369681 lambda!369611)))

(declare-fun bs!1696562 () Bool)

(assert (= bs!1696562 (and d!2074272 d!2074036)))

(assert (=> bs!1696562 (= lambda!369681 lambda!369645)))

(declare-fun bs!1696563 () Bool)

(assert (= bs!1696563 (and d!2074272 d!2074032)))

(assert (=> bs!1696563 (= lambda!369681 lambda!369641)))

(declare-fun bs!1696564 () Bool)

(assert (= bs!1696564 (and d!2074272 d!2074034)))

(assert (=> bs!1696564 (= lambda!369681 lambda!369644)))

(declare-fun bs!1696565 () Bool)

(assert (= bs!1696565 (and d!2074272 d!2074020)))

(assert (=> bs!1696565 (= lambda!369681 lambda!369638)))

(declare-fun bs!1696566 () Bool)

(assert (= bs!1696566 (and d!2074272 d!2074014)))

(assert (=> bs!1696566 (= lambda!369681 lambda!369637)))

(declare-fun bs!1696567 () Bool)

(assert (= bs!1696567 (and d!2074272 d!2074174)))

(assert (=> bs!1696567 (= lambda!369681 lambda!369659)))

(assert (=> d!2074272 (= (inv!84469 setElem!45222) (forall!15685 (exprs!6373 setElem!45222) lambda!369681))))

(declare-fun bs!1696568 () Bool)

(assert (= bs!1696568 d!2074272))

(declare-fun m!7389758 () Bool)

(assert (=> bs!1696568 m!7389758))

(assert (=> setNonEmpty!45222 d!2074272))

(declare-fun bs!1696569 () Bool)

(declare-fun d!2074274 () Bool)

(assert (= bs!1696569 (and d!2074274 d!2074272)))

(declare-fun lambda!369682 () Int)

(assert (=> bs!1696569 (= lambda!369682 lambda!369681)))

(declare-fun bs!1696570 () Bool)

(assert (= bs!1696570 (and d!2074274 d!2073930)))

(assert (=> bs!1696570 (= lambda!369682 lambda!369611)))

(declare-fun bs!1696571 () Bool)

(assert (= bs!1696571 (and d!2074274 d!2074036)))

(assert (=> bs!1696571 (= lambda!369682 lambda!369645)))

(declare-fun bs!1696572 () Bool)

(assert (= bs!1696572 (and d!2074274 d!2074032)))

(assert (=> bs!1696572 (= lambda!369682 lambda!369641)))

(declare-fun bs!1696573 () Bool)

(assert (= bs!1696573 (and d!2074274 d!2074034)))

(assert (=> bs!1696573 (= lambda!369682 lambda!369644)))

(declare-fun bs!1696574 () Bool)

(assert (= bs!1696574 (and d!2074274 d!2074020)))

(assert (=> bs!1696574 (= lambda!369682 lambda!369638)))

(declare-fun bs!1696575 () Bool)

(assert (= bs!1696575 (and d!2074274 d!2074014)))

(assert (=> bs!1696575 (= lambda!369682 lambda!369637)))

(declare-fun bs!1696576 () Bool)

(assert (= bs!1696576 (and d!2074274 d!2074174)))

(assert (=> bs!1696576 (= lambda!369682 lambda!369659)))

(assert (=> d!2074274 (= (inv!84469 (h!72091 (t!379423 zl!343))) (forall!15685 (exprs!6373 (h!72091 (t!379423 zl!343))) lambda!369682))))

(declare-fun bs!1696577 () Bool)

(assert (= bs!1696577 d!2074274))

(declare-fun m!7389770 () Bool)

(assert (=> bs!1696577 m!7389770))

(assert (=> b!6616659 d!2074274))

(declare-fun d!2074278 () Bool)

(assert (=> d!2074278 (= (isEmpty!37930 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326)) (not ((_ is Some!16379) (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326))))))

(assert (=> d!2073914 d!2074278))

(declare-fun d!2074286 () Bool)

(declare-fun res!2713318 () Bool)

(declare-fun e!4003131 () Bool)

(assert (=> d!2074286 (=> res!2713318 e!4003131)))

(assert (=> d!2074286 (= res!2713318 ((_ is Nil!65643) lt!2417526))))

(assert (=> d!2074286 (= (noDuplicate!2290 lt!2417526) e!4003131)))

(declare-fun b!6617114 () Bool)

(declare-fun e!4003132 () Bool)

(assert (=> b!6617114 (= e!4003131 e!4003132)))

(declare-fun res!2713319 () Bool)

(assert (=> b!6617114 (=> (not res!2713319) (not e!4003132))))

(declare-fun contains!20219 (List!65767 Context!11746) Bool)

(assert (=> b!6617114 (= res!2713319 (not (contains!20219 (t!379423 lt!2417526) (h!72091 lt!2417526))))))

(declare-fun b!6617115 () Bool)

(assert (=> b!6617115 (= e!4003132 (noDuplicate!2290 (t!379423 lt!2417526)))))

(assert (= (and d!2074286 (not res!2713318)) b!6617114))

(assert (= (and b!6617114 res!2713319) b!6617115))

(declare-fun m!7389776 () Bool)

(assert (=> b!6617114 m!7389776))

(declare-fun m!7389778 () Bool)

(assert (=> b!6617115 m!7389778))

(assert (=> d!2073922 d!2074286))

(declare-fun d!2074298 () Bool)

(declare-fun e!4003148 () Bool)

(assert (=> d!2074298 e!4003148))

(declare-fun res!2713327 () Bool)

(assert (=> d!2074298 (=> (not res!2713327) (not e!4003148))))

(declare-fun res!2713328 () List!65767)

(assert (=> d!2074298 (= res!2713327 (noDuplicate!2290 res!2713328))))

(declare-fun e!4003146 () Bool)

(assert (=> d!2074298 e!4003146))

(assert (=> d!2074298 (= (choose!49441 z!1189) res!2713328)))

(declare-fun b!6617134 () Bool)

(declare-fun e!4003147 () Bool)

(declare-fun tp!1822271 () Bool)

(assert (=> b!6617134 (= e!4003147 tp!1822271)))

(declare-fun tp!1822270 () Bool)

(declare-fun b!6617133 () Bool)

(assert (=> b!6617133 (= e!4003146 (and (inv!84469 (h!72091 res!2713328)) e!4003147 tp!1822270))))

(declare-fun b!6617135 () Bool)

(assert (=> b!6617135 (= e!4003148 (= (content!12666 res!2713328) z!1189))))

(assert (= b!6617133 b!6617134))

(assert (= (and d!2074298 ((_ is Cons!65643) res!2713328)) b!6617133))

(assert (= (and d!2074298 res!2713327) b!6617135))

(declare-fun m!7389782 () Bool)

(assert (=> d!2074298 m!7389782))

(declare-fun m!7389784 () Bool)

(assert (=> b!6617133 m!7389784))

(declare-fun m!7389786 () Bool)

(assert (=> b!6617135 m!7389786))

(assert (=> d!2073922 d!2074298))

(assert (=> d!2074040 d!2074092))

(declare-fun b!6617150 () Bool)

(declare-fun e!4003163 () Bool)

(declare-fun call!579872 () Bool)

(assert (=> b!6617150 (= e!4003163 call!579872)))

(declare-fun b!6617151 () Bool)

(declare-fun e!4003165 () Bool)

(declare-fun e!4003162 () Bool)

(assert (=> b!6617151 (= e!4003165 e!4003162)))

(declare-fun res!2713343 () Bool)

(declare-fun call!579873 () Bool)

(assert (=> b!6617151 (= res!2713343 call!579873)))

(assert (=> b!6617151 (=> res!2713343 e!4003162)))

(declare-fun b!6617152 () Bool)

(declare-fun e!4003164 () Bool)

(declare-fun e!4003161 () Bool)

(assert (=> b!6617152 (= e!4003164 e!4003161)))

(declare-fun res!2713339 () Bool)

(assert (=> b!6617152 (=> res!2713339 e!4003161)))

(assert (=> b!6617152 (= res!2713339 ((_ is Star!16489) (regOne!33490 (regOne!33490 r!7292))))))

(declare-fun bm!579867 () Bool)

(declare-fun c!1219863 () Bool)

(assert (=> bm!579867 (= call!579873 (nullable!6482 (ite c!1219863 (regOne!33491 (regOne!33490 (regOne!33490 r!7292))) (regOne!33490 (regOne!33490 (regOne!33490 r!7292))))))))

(declare-fun b!6617153 () Bool)

(assert (=> b!6617153 (= e!4003165 e!4003163)))

(declare-fun res!2713341 () Bool)

(assert (=> b!6617153 (= res!2713341 call!579873)))

(assert (=> b!6617153 (=> (not res!2713341) (not e!4003163))))

(declare-fun b!6617154 () Bool)

(declare-fun e!4003166 () Bool)

(assert (=> b!6617154 (= e!4003166 e!4003164)))

(declare-fun res!2713342 () Bool)

(assert (=> b!6617154 (=> (not res!2713342) (not e!4003164))))

(assert (=> b!6617154 (= res!2713342 (and (not ((_ is EmptyLang!16489) (regOne!33490 (regOne!33490 r!7292)))) (not ((_ is ElementMatch!16489) (regOne!33490 (regOne!33490 r!7292))))))))

(declare-fun b!6617155 () Bool)

(assert (=> b!6617155 (= e!4003162 call!579872)))

(declare-fun bm!579868 () Bool)

(assert (=> bm!579868 (= call!579872 (nullable!6482 (ite c!1219863 (regTwo!33491 (regOne!33490 (regOne!33490 r!7292))) (regTwo!33490 (regOne!33490 (regOne!33490 r!7292))))))))

(declare-fun d!2074302 () Bool)

(declare-fun res!2713340 () Bool)

(assert (=> d!2074302 (=> res!2713340 e!4003166)))

(assert (=> d!2074302 (= res!2713340 ((_ is EmptyExpr!16489) (regOne!33490 (regOne!33490 r!7292))))))

(assert (=> d!2074302 (= (nullableFct!2403 (regOne!33490 (regOne!33490 r!7292))) e!4003166)))

(declare-fun b!6617156 () Bool)

(assert (=> b!6617156 (= e!4003161 e!4003165)))

(assert (=> b!6617156 (= c!1219863 ((_ is Union!16489) (regOne!33490 (regOne!33490 r!7292))))))

(assert (= (and d!2074302 (not res!2713340)) b!6617154))

(assert (= (and b!6617154 res!2713342) b!6617152))

(assert (= (and b!6617152 (not res!2713339)) b!6617156))

(assert (= (and b!6617156 c!1219863) b!6617151))

(assert (= (and b!6617156 (not c!1219863)) b!6617153))

(assert (= (and b!6617151 (not res!2713343)) b!6617155))

(assert (= (and b!6617153 res!2713341) b!6617150))

(assert (= (or b!6617155 b!6617150) bm!579868))

(assert (= (or b!6617151 b!6617153) bm!579867))

(declare-fun m!7389796 () Bool)

(assert (=> bm!579867 m!7389796))

(declare-fun m!7389798 () Bool)

(assert (=> bm!579868 m!7389798))

(assert (=> d!2073920 d!2074302))

(declare-fun d!2074310 () Bool)

(declare-fun c!1219868 () Bool)

(assert (=> d!2074310 (= c!1219868 (isEmpty!37931 (tail!12507 s!2326)))))

(declare-fun e!4003174 () Bool)

(assert (=> d!2074310 (= (matchZipper!2501 (derivationStepZipper!2455 z!1189 (head!13422 s!2326)) (tail!12507 s!2326)) e!4003174)))

(declare-fun b!6617168 () Bool)

(assert (=> b!6617168 (= e!4003174 (nullableZipper!2230 (derivationStepZipper!2455 z!1189 (head!13422 s!2326))))))

(declare-fun b!6617169 () Bool)

(assert (=> b!6617169 (= e!4003174 (matchZipper!2501 (derivationStepZipper!2455 (derivationStepZipper!2455 z!1189 (head!13422 s!2326)) (head!13422 (tail!12507 s!2326))) (tail!12507 (tail!12507 s!2326))))))

(assert (= (and d!2074310 c!1219868) b!6617168))

(assert (= (and d!2074310 (not c!1219868)) b!6617169))

(assert (=> d!2074310 m!7389136))

(assert (=> d!2074310 m!7389138))

(assert (=> b!6617168 m!7389272))

(declare-fun m!7389800 () Bool)

(assert (=> b!6617168 m!7389800))

(assert (=> b!6617169 m!7389136))

(assert (=> b!6617169 m!7389528))

(assert (=> b!6617169 m!7389272))

(assert (=> b!6617169 m!7389528))

(declare-fun m!7389802 () Bool)

(assert (=> b!6617169 m!7389802))

(assert (=> b!6617169 m!7389136))

(assert (=> b!6617169 m!7389530))

(assert (=> b!6617169 m!7389802))

(assert (=> b!6617169 m!7389530))

(declare-fun m!7389804 () Bool)

(assert (=> b!6617169 m!7389804))

(assert (=> b!6616558 d!2074310))

(declare-fun bs!1696617 () Bool)

(declare-fun d!2074312 () Bool)

(assert (= bs!1696617 (and d!2074312 d!2074048)))

(declare-fun lambda!369687 () Int)

(assert (=> bs!1696617 (= (= (head!13422 s!2326) (h!72092 s!2326)) (= lambda!369687 lambda!369649))))

(declare-fun bs!1696619 () Bool)

(assert (= bs!1696619 (and d!2074312 b!6615850)))

(assert (=> bs!1696619 (= (= (head!13422 s!2326) (h!72092 s!2326)) (= lambda!369687 lambda!369579))))

(declare-fun bs!1696620 () Bool)

(assert (= bs!1696620 (and d!2074312 d!2074042)))

(assert (=> bs!1696620 (= (= (head!13422 s!2326) (h!72092 s!2326)) (= lambda!369687 lambda!369648))))

(declare-fun bs!1696622 () Bool)

(assert (= bs!1696622 (and d!2074312 d!2074258)))

(assert (=> bs!1696622 (= (= (head!13422 s!2326) (head!13422 (t!379424 s!2326))) (= lambda!369687 lambda!369671))))

(declare-fun bs!1696623 () Bool)

(assert (= bs!1696623 (and d!2074312 d!2074142)))

(assert (=> bs!1696623 (= (= (head!13422 s!2326) (head!13422 (t!379424 s!2326))) (= lambda!369687 lambda!369657))))

(assert (=> d!2074312 true))

(assert (=> d!2074312 (= (derivationStepZipper!2455 z!1189 (head!13422 s!2326)) (flatMap!1994 z!1189 lambda!369687))))

(declare-fun bs!1696626 () Bool)

(assert (= bs!1696626 d!2074312))

(declare-fun m!7389806 () Bool)

(assert (=> bs!1696626 m!7389806))

(assert (=> b!6616558 d!2074312))

(assert (=> b!6616558 d!2074166))

(assert (=> b!6616558 d!2074122))

(declare-fun call!579876 () (InoxSet Context!11746))

(declare-fun e!4003176 () (InoxSet Context!11746))

(declare-fun b!6617170 () Bool)

(assert (=> b!6617170 (= e!4003176 ((_ map or) call!579876 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343))))))) (h!72092 s!2326))))))

(declare-fun d!2074314 () Bool)

(declare-fun c!1219870 () Bool)

(declare-fun e!4003175 () Bool)

(assert (=> d!2074314 (= c!1219870 e!4003175)))

(declare-fun res!2713347 () Bool)

(assert (=> d!2074314 (=> (not res!2713347) (not e!4003175))))

(assert (=> d!2074314 (= res!2713347 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))))))))

(assert (=> d!2074314 (= (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326)) e!4003176)))

(declare-fun b!6617171 () Bool)

(declare-fun e!4003177 () (InoxSet Context!11746))

(assert (=> b!6617171 (= e!4003177 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6617172 () Bool)

(assert (=> b!6617172 (= e!4003177 call!579876)))

(declare-fun b!6617173 () Bool)

(assert (=> b!6617173 (= e!4003176 e!4003177)))

(declare-fun c!1219869 () Bool)

(assert (=> b!6617173 (= c!1219869 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun b!6617174 () Bool)

(assert (=> b!6617174 (= e!4003175 (nullable!6482 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343))))))))))

(declare-fun bm!579871 () Bool)

(assert (=> bm!579871 (= call!579876 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))))) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343))))))) (h!72092 s!2326)))))

(assert (= (and d!2074314 res!2713347) b!6617174))

(assert (= (and d!2074314 c!1219870) b!6617170))

(assert (= (and d!2074314 (not c!1219870)) b!6617173))

(assert (= (and b!6617173 c!1219869) b!6617172))

(assert (= (and b!6617173 (not c!1219869)) b!6617171))

(assert (= (or b!6617170 b!6617172) bm!579871))

(declare-fun m!7389808 () Bool)

(assert (=> b!6617170 m!7389808))

(declare-fun m!7389810 () Bool)

(assert (=> b!6617174 m!7389810))

(declare-fun m!7389812 () Bool)

(assert (=> bm!579871 m!7389812))

(assert (=> b!6616389 d!2074314))

(declare-fun bs!1696633 () Bool)

(declare-fun d!2074316 () Bool)

(assert (= bs!1696633 (and d!2074316 d!2074272)))

(declare-fun lambda!369688 () Int)

(assert (=> bs!1696633 (= lambda!369688 lambda!369681)))

(declare-fun bs!1696635 () Bool)

(assert (= bs!1696635 (and d!2074316 d!2073930)))

(assert (=> bs!1696635 (= lambda!369688 lambda!369611)))

(declare-fun bs!1696636 () Bool)

(assert (= bs!1696636 (and d!2074316 d!2074274)))

(assert (=> bs!1696636 (= lambda!369688 lambda!369682)))

(declare-fun bs!1696637 () Bool)

(assert (= bs!1696637 (and d!2074316 d!2074036)))

(assert (=> bs!1696637 (= lambda!369688 lambda!369645)))

(declare-fun bs!1696638 () Bool)

(assert (= bs!1696638 (and d!2074316 d!2074032)))

(assert (=> bs!1696638 (= lambda!369688 lambda!369641)))

(declare-fun bs!1696639 () Bool)

(assert (= bs!1696639 (and d!2074316 d!2074034)))

(assert (=> bs!1696639 (= lambda!369688 lambda!369644)))

(declare-fun bs!1696640 () Bool)

(assert (= bs!1696640 (and d!2074316 d!2074020)))

(assert (=> bs!1696640 (= lambda!369688 lambda!369638)))

(declare-fun bs!1696641 () Bool)

(assert (= bs!1696641 (and d!2074316 d!2074014)))

(assert (=> bs!1696641 (= lambda!369688 lambda!369637)))

(declare-fun bs!1696642 () Bool)

(assert (= bs!1696642 (and d!2074316 d!2074174)))

(assert (=> bs!1696642 (= lambda!369688 lambda!369659)))

(declare-fun b!6617175 () Bool)

(declare-fun e!4003182 () Regex!16489)

(assert (=> b!6617175 (= e!4003182 EmptyExpr!16489)))

(declare-fun b!6617176 () Bool)

(declare-fun e!4003178 () Bool)

(declare-fun e!4003180 () Bool)

(assert (=> b!6617176 (= e!4003178 e!4003180)))

(declare-fun c!1219874 () Bool)

(assert (=> b!6617176 (= c!1219874 (isEmpty!37928 (tail!12506 (t!379422 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun e!4003179 () Bool)

(assert (=> d!2074316 e!4003179))

(declare-fun res!2713349 () Bool)

(assert (=> d!2074316 (=> (not res!2713349) (not e!4003179))))

(declare-fun lt!2417625 () Regex!16489)

(assert (=> d!2074316 (= res!2713349 (validRegex!8225 lt!2417625))))

(declare-fun e!4003183 () Regex!16489)

(assert (=> d!2074316 (= lt!2417625 e!4003183)))

(declare-fun c!1219872 () Bool)

(declare-fun e!4003181 () Bool)

(assert (=> d!2074316 (= c!1219872 e!4003181)))

(declare-fun res!2713348 () Bool)

(assert (=> d!2074316 (=> (not res!2713348) (not e!4003181))))

(assert (=> d!2074316 (= res!2713348 ((_ is Cons!65642) (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> d!2074316 (forall!15685 (t!379422 (exprs!6373 (h!72091 zl!343))) lambda!369688)))

(assert (=> d!2074316 (= (generalisedConcat!2086 (t!379422 (exprs!6373 (h!72091 zl!343)))) lt!2417625)))

(declare-fun b!6617177 () Bool)

(assert (=> b!6617177 (= e!4003180 (= lt!2417625 (head!13421 (t!379422 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6617178 () Bool)

(assert (=> b!6617178 (= e!4003183 (h!72090 (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6617179 () Bool)

(assert (=> b!6617179 (= e!4003181 (isEmpty!37928 (t!379422 (t!379422 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6617180 () Bool)

(assert (=> b!6617180 (= e!4003179 e!4003178)))

(declare-fun c!1219873 () Bool)

(assert (=> b!6617180 (= c!1219873 (isEmpty!37928 (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6617181 () Bool)

(assert (=> b!6617181 (= e!4003180 (isConcat!1385 lt!2417625))))

(declare-fun b!6617182 () Bool)

(assert (=> b!6617182 (= e!4003182 (Concat!25334 (h!72090 (t!379422 (exprs!6373 (h!72091 zl!343)))) (generalisedConcat!2086 (t!379422 (t!379422 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun b!6617183 () Bool)

(assert (=> b!6617183 (= e!4003178 (isEmptyExpr!1862 lt!2417625))))

(declare-fun b!6617184 () Bool)

(assert (=> b!6617184 (= e!4003183 e!4003182)))

(declare-fun c!1219871 () Bool)

(assert (=> b!6617184 (= c!1219871 ((_ is Cons!65642) (t!379422 (exprs!6373 (h!72091 zl!343)))))))

(assert (= (and d!2074316 res!2713348) b!6617179))

(assert (= (and d!2074316 c!1219872) b!6617178))

(assert (= (and d!2074316 (not c!1219872)) b!6617184))

(assert (= (and b!6617184 c!1219871) b!6617182))

(assert (= (and b!6617184 (not c!1219871)) b!6617175))

(assert (= (and d!2074316 res!2713349) b!6617180))

(assert (= (and b!6617180 c!1219873) b!6617183))

(assert (= (and b!6617180 (not c!1219873)) b!6617176))

(assert (= (and b!6617176 c!1219874) b!6617177))

(assert (= (and b!6617176 (not c!1219874)) b!6617181))

(declare-fun m!7389814 () Bool)

(assert (=> d!2074316 m!7389814))

(declare-fun m!7389816 () Bool)

(assert (=> d!2074316 m!7389816))

(declare-fun m!7389818 () Bool)

(assert (=> b!6617182 m!7389818))

(declare-fun m!7389820 () Bool)

(assert (=> b!6617179 m!7389820))

(declare-fun m!7389822 () Bool)

(assert (=> b!6617183 m!7389822))

(declare-fun m!7389824 () Bool)

(assert (=> b!6617177 m!7389824))

(declare-fun m!7389826 () Bool)

(assert (=> b!6617181 m!7389826))

(assert (=> b!6617180 m!7388772))

(declare-fun m!7389828 () Bool)

(assert (=> b!6617176 m!7389828))

(assert (=> b!6617176 m!7389828))

(declare-fun m!7389830 () Bool)

(assert (=> b!6617176 m!7389830))

(assert (=> b!6616157 d!2074316))

(declare-fun d!2074318 () Bool)

(assert (=> d!2074318 true))

(declare-fun setRes!45226 () Bool)

(assert (=> d!2074318 setRes!45226))

(declare-fun condSetEmpty!45226 () Bool)

(declare-fun res!2713350 () (InoxSet Context!11746))

(assert (=> d!2074318 (= condSetEmpty!45226 (= res!2713350 ((as const (Array Context!11746 Bool)) false)))))

(assert (=> d!2074318 (= (choose!49447 lt!2417472 lambda!369579) res!2713350)))

(declare-fun setIsEmpty!45226 () Bool)

(assert (=> setIsEmpty!45226 setRes!45226))

(declare-fun setNonEmpty!45226 () Bool)

(declare-fun setElem!45226 () Context!11746)

(declare-fun tp!1822273 () Bool)

(declare-fun e!4003184 () Bool)

(assert (=> setNonEmpty!45226 (= setRes!45226 (and tp!1822273 (inv!84469 setElem!45226) e!4003184))))

(declare-fun setRest!45226 () (InoxSet Context!11746))

(assert (=> setNonEmpty!45226 (= res!2713350 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) setElem!45226 true) setRest!45226))))

(declare-fun b!6617185 () Bool)

(declare-fun tp!1822272 () Bool)

(assert (=> b!6617185 (= e!4003184 tp!1822272)))

(assert (= (and d!2074318 condSetEmpty!45226) setIsEmpty!45226))

(assert (= (and d!2074318 (not condSetEmpty!45226)) setNonEmpty!45226))

(assert (= setNonEmpty!45226 b!6617185))

(declare-fun m!7389832 () Bool)

(assert (=> setNonEmpty!45226 m!7389832))

(assert (=> d!2074044 d!2074318))

(declare-fun bs!1696655 () Bool)

(declare-fun d!2074320 () Bool)

(assert (= bs!1696655 (and d!2074320 d!2074272)))

(declare-fun lambda!369690 () Int)

(assert (=> bs!1696655 (= lambda!369690 lambda!369681)))

(declare-fun bs!1696656 () Bool)

(assert (= bs!1696656 (and d!2074320 d!2073930)))

(assert (=> bs!1696656 (= lambda!369690 lambda!369611)))

(declare-fun bs!1696658 () Bool)

(assert (= bs!1696658 (and d!2074320 d!2074274)))

(assert (=> bs!1696658 (= lambda!369690 lambda!369682)))

(declare-fun bs!1696659 () Bool)

(assert (= bs!1696659 (and d!2074320 d!2074316)))

(assert (=> bs!1696659 (= lambda!369690 lambda!369688)))

(declare-fun bs!1696661 () Bool)

(assert (= bs!1696661 (and d!2074320 d!2074036)))

(assert (=> bs!1696661 (= lambda!369690 lambda!369645)))

(declare-fun bs!1696662 () Bool)

(assert (= bs!1696662 (and d!2074320 d!2074032)))

(assert (=> bs!1696662 (= lambda!369690 lambda!369641)))

(declare-fun bs!1696663 () Bool)

(assert (= bs!1696663 (and d!2074320 d!2074034)))

(assert (=> bs!1696663 (= lambda!369690 lambda!369644)))

(declare-fun bs!1696665 () Bool)

(assert (= bs!1696665 (and d!2074320 d!2074020)))

(assert (=> bs!1696665 (= lambda!369690 lambda!369638)))

(declare-fun bs!1696666 () Bool)

(assert (= bs!1696666 (and d!2074320 d!2074014)))

(assert (=> bs!1696666 (= lambda!369690 lambda!369637)))

(declare-fun bs!1696667 () Bool)

(assert (= bs!1696667 (and d!2074320 d!2074174)))

(assert (=> bs!1696667 (= lambda!369690 lambda!369659)))

(declare-fun b!6617186 () Bool)

(declare-fun e!4003186 () Regex!16489)

(assert (=> b!6617186 (= e!4003186 (Union!16489 (h!72090 (t!379422 (unfocusZipperList!1910 zl!343))) (generalisedUnion!2333 (t!379422 (t!379422 (unfocusZipperList!1910 zl!343))))))))

(declare-fun b!6617187 () Bool)

(declare-fun e!4003187 () Bool)

(declare-fun e!4003189 () Bool)

(assert (=> b!6617187 (= e!4003187 e!4003189)))

(declare-fun c!1219876 () Bool)

(assert (=> b!6617187 (= c!1219876 (isEmpty!37928 (t!379422 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6617188 () Bool)

(declare-fun e!4003190 () Regex!16489)

(assert (=> b!6617188 (= e!4003190 e!4003186)))

(declare-fun c!1219877 () Bool)

(assert (=> b!6617188 (= c!1219877 ((_ is Cons!65642) (t!379422 (unfocusZipperList!1910 zl!343))))))

(assert (=> d!2074320 e!4003187))

(declare-fun res!2713352 () Bool)

(assert (=> d!2074320 (=> (not res!2713352) (not e!4003187))))

(declare-fun lt!2417626 () Regex!16489)

(assert (=> d!2074320 (= res!2713352 (validRegex!8225 lt!2417626))))

(assert (=> d!2074320 (= lt!2417626 e!4003190)))

(declare-fun c!1219875 () Bool)

(declare-fun e!4003188 () Bool)

(assert (=> d!2074320 (= c!1219875 e!4003188)))

(declare-fun res!2713351 () Bool)

(assert (=> d!2074320 (=> (not res!2713351) (not e!4003188))))

(assert (=> d!2074320 (= res!2713351 ((_ is Cons!65642) (t!379422 (unfocusZipperList!1910 zl!343))))))

(assert (=> d!2074320 (forall!15685 (t!379422 (unfocusZipperList!1910 zl!343)) lambda!369690)))

(assert (=> d!2074320 (= (generalisedUnion!2333 (t!379422 (unfocusZipperList!1910 zl!343))) lt!2417626)))

(declare-fun b!6617189 () Bool)

(declare-fun e!4003185 () Bool)

(assert (=> b!6617189 (= e!4003189 e!4003185)))

(declare-fun c!1219878 () Bool)

(assert (=> b!6617189 (= c!1219878 (isEmpty!37928 (tail!12506 (t!379422 (unfocusZipperList!1910 zl!343)))))))

(declare-fun b!6617190 () Bool)

(assert (=> b!6617190 (= e!4003185 (= lt!2417626 (head!13421 (t!379422 (unfocusZipperList!1910 zl!343)))))))

(declare-fun b!6617191 () Bool)

(assert (=> b!6617191 (= e!4003186 EmptyLang!16489)))

(declare-fun b!6617192 () Bool)

(assert (=> b!6617192 (= e!4003188 (isEmpty!37928 (t!379422 (t!379422 (unfocusZipperList!1910 zl!343)))))))

(declare-fun b!6617193 () Bool)

(assert (=> b!6617193 (= e!4003185 (isUnion!1302 lt!2417626))))

(declare-fun b!6617194 () Bool)

(assert (=> b!6617194 (= e!4003190 (h!72090 (t!379422 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6617195 () Bool)

(assert (=> b!6617195 (= e!4003189 (isEmptyLang!1872 lt!2417626))))

(assert (= (and d!2074320 res!2713351) b!6617192))

(assert (= (and d!2074320 c!1219875) b!6617194))

(assert (= (and d!2074320 (not c!1219875)) b!6617188))

(assert (= (and b!6617188 c!1219877) b!6617186))

(assert (= (and b!6617188 (not c!1219877)) b!6617191))

(assert (= (and d!2074320 res!2713352) b!6617187))

(assert (= (and b!6617187 c!1219876) b!6617195))

(assert (= (and b!6617187 (not c!1219876)) b!6617189))

(assert (= (and b!6617189 c!1219878) b!6617190))

(assert (= (and b!6617189 (not c!1219878)) b!6617193))

(declare-fun m!7389840 () Bool)

(assert (=> b!6617193 m!7389840))

(declare-fun m!7389842 () Bool)

(assert (=> d!2074320 m!7389842))

(declare-fun m!7389844 () Bool)

(assert (=> d!2074320 m!7389844))

(declare-fun m!7389846 () Bool)

(assert (=> b!6617192 m!7389846))

(declare-fun m!7389848 () Bool)

(assert (=> b!6617190 m!7389848))

(assert (=> b!6617187 m!7389250))

(declare-fun m!7389850 () Bool)

(assert (=> b!6617186 m!7389850))

(declare-fun m!7389852 () Bool)

(assert (=> b!6617195 m!7389852))

(declare-fun m!7389854 () Bool)

(assert (=> b!6617189 m!7389854))

(assert (=> b!6617189 m!7389854))

(declare-fun m!7389856 () Bool)

(assert (=> b!6617189 m!7389856))

(assert (=> b!6616541 d!2074320))

(declare-fun d!2074324 () Bool)

(declare-fun res!2713354 () Bool)

(declare-fun e!4003195 () Bool)

(assert (=> d!2074324 (=> res!2713354 e!4003195)))

(assert (=> d!2074324 (= res!2713354 ((_ is ElementMatch!16489) lt!2417538))))

(assert (=> d!2074324 (= (validRegex!8225 lt!2417538) e!4003195)))

(declare-fun b!6617196 () Bool)

(declare-fun e!4003193 () Bool)

(declare-fun e!4003196 () Bool)

(assert (=> b!6617196 (= e!4003193 e!4003196)))

(declare-fun c!1219880 () Bool)

(assert (=> b!6617196 (= c!1219880 ((_ is Union!16489) lt!2417538))))

(declare-fun b!6617197 () Bool)

(declare-fun e!4003192 () Bool)

(declare-fun call!579879 () Bool)

(assert (=> b!6617197 (= e!4003192 call!579879)))

(declare-fun c!1219879 () Bool)

(declare-fun call!579878 () Bool)

(declare-fun bm!579872 () Bool)

(assert (=> bm!579872 (= call!579878 (validRegex!8225 (ite c!1219879 (reg!16818 lt!2417538) (ite c!1219880 (regTwo!33491 lt!2417538) (regTwo!33490 lt!2417538)))))))

(declare-fun b!6617198 () Bool)

(declare-fun e!4003194 () Bool)

(assert (=> b!6617198 (= e!4003194 call!579879)))

(declare-fun bm!579873 () Bool)

(declare-fun call!579877 () Bool)

(assert (=> bm!579873 (= call!579877 (validRegex!8225 (ite c!1219880 (regOne!33491 lt!2417538) (regOne!33490 lt!2417538))))))

(declare-fun b!6617199 () Bool)

(declare-fun res!2713357 () Bool)

(declare-fun e!4003197 () Bool)

(assert (=> b!6617199 (=> res!2713357 e!4003197)))

(assert (=> b!6617199 (= res!2713357 (not ((_ is Concat!25334) lt!2417538)))))

(assert (=> b!6617199 (= e!4003196 e!4003197)))

(declare-fun b!6617200 () Bool)

(assert (=> b!6617200 (= e!4003197 e!4003194)))

(declare-fun res!2713355 () Bool)

(assert (=> b!6617200 (=> (not res!2713355) (not e!4003194))))

(assert (=> b!6617200 (= res!2713355 call!579877)))

(declare-fun b!6617201 () Bool)

(assert (=> b!6617201 (= e!4003195 e!4003193)))

(assert (=> b!6617201 (= c!1219879 ((_ is Star!16489) lt!2417538))))

(declare-fun b!6617202 () Bool)

(declare-fun e!4003191 () Bool)

(assert (=> b!6617202 (= e!4003193 e!4003191)))

(declare-fun res!2713353 () Bool)

(assert (=> b!6617202 (= res!2713353 (not (nullable!6482 (reg!16818 lt!2417538))))))

(assert (=> b!6617202 (=> (not res!2713353) (not e!4003191))))

(declare-fun b!6617203 () Bool)

(assert (=> b!6617203 (= e!4003191 call!579878)))

(declare-fun b!6617204 () Bool)

(declare-fun res!2713356 () Bool)

(assert (=> b!6617204 (=> (not res!2713356) (not e!4003192))))

(assert (=> b!6617204 (= res!2713356 call!579877)))

(assert (=> b!6617204 (= e!4003196 e!4003192)))

(declare-fun bm!579874 () Bool)

(assert (=> bm!579874 (= call!579879 call!579878)))

(assert (= (and d!2074324 (not res!2713354)) b!6617201))

(assert (= (and b!6617201 c!1219879) b!6617202))

(assert (= (and b!6617201 (not c!1219879)) b!6617196))

(assert (= (and b!6617202 res!2713353) b!6617203))

(assert (= (and b!6617196 c!1219880) b!6617204))

(assert (= (and b!6617196 (not c!1219880)) b!6617199))

(assert (= (and b!6617204 res!2713356) b!6617197))

(assert (= (and b!6617199 (not res!2713357)) b!6617200))

(assert (= (and b!6617200 res!2713355) b!6617198))

(assert (= (or b!6617197 b!6617198) bm!579874))

(assert (= (or b!6617204 b!6617200) bm!579873))

(assert (= (or b!6617203 bm!579874) bm!579872))

(declare-fun m!7389858 () Bool)

(assert (=> bm!579872 m!7389858))

(declare-fun m!7389860 () Bool)

(assert (=> bm!579873 m!7389860))

(declare-fun m!7389862 () Bool)

(assert (=> b!6617202 m!7389862))

(assert (=> d!2073930 d!2074324))

(declare-fun d!2074326 () Bool)

(declare-fun res!2713362 () Bool)

(declare-fun e!4003202 () Bool)

(assert (=> d!2074326 (=> res!2713362 e!4003202)))

(assert (=> d!2074326 (= res!2713362 ((_ is Nil!65642) (exprs!6373 (h!72091 zl!343))))))

(assert (=> d!2074326 (= (forall!15685 (exprs!6373 (h!72091 zl!343)) lambda!369611) e!4003202)))

(declare-fun b!6617209 () Bool)

(declare-fun e!4003203 () Bool)

(assert (=> b!6617209 (= e!4003202 e!4003203)))

(declare-fun res!2713363 () Bool)

(assert (=> b!6617209 (=> (not res!2713363) (not e!4003203))))

(assert (=> b!6617209 (= res!2713363 (dynLambda!26143 lambda!369611 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun b!6617210 () Bool)

(assert (=> b!6617210 (= e!4003203 (forall!15685 (t!379422 (exprs!6373 (h!72091 zl!343))) lambda!369611))))

(assert (= (and d!2074326 (not res!2713362)) b!6617209))

(assert (= (and b!6617209 res!2713363) b!6617210))

(declare-fun b_lambda!250253 () Bool)

(assert (=> (not b_lambda!250253) (not b!6617209)))

(declare-fun m!7389864 () Bool)

(assert (=> b!6617209 m!7389864))

(declare-fun m!7389866 () Bool)

(assert (=> b!6617210 m!7389866))

(assert (=> d!2073930 d!2074326))

(assert (=> b!6616607 d!2074120))

(assert (=> b!6616607 d!2074122))

(assert (=> b!6616393 d!2074012))

(declare-fun d!2074328 () Bool)

(assert (=> d!2074328 (= ($colon$colon!2326 (exprs!6373 lt!2417478) (ite (or c!1219667 c!1219668) (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72090 (exprs!6373 (h!72091 zl!343))))) (Cons!65642 (ite (or c!1219667 c!1219668) (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72090 (exprs!6373 (h!72091 zl!343)))) (exprs!6373 lt!2417478)))))

(assert (=> bm!579746 d!2074328))

(assert (=> d!2073894 d!2073880))

(assert (=> d!2073894 d!2074206))

(assert (=> d!2073894 d!2073914))

(declare-fun d!2074330 () Bool)

(assert (=> d!2074330 (= (Exists!3559 lambda!369586) (choose!49438 lambda!369586))))

(declare-fun bs!1696668 () Bool)

(assert (= bs!1696668 d!2074330))

(declare-fun m!7389872 () Bool)

(assert (=> bs!1696668 m!7389872))

(assert (=> d!2073894 d!2074330))

(declare-fun bs!1696699 () Bool)

(declare-fun d!2074334 () Bool)

(assert (= bs!1696699 (and d!2074334 b!6616891)))

(declare-fun lambda!369695 () Int)

(assert (=> bs!1696699 (not (= lambda!369695 lambda!369661))))

(declare-fun bs!1696702 () Bool)

(assert (= bs!1696702 (and d!2074334 b!6616563)))

(assert (=> bs!1696702 (not (= lambda!369695 lambda!369651))))

(declare-fun bs!1696703 () Bool)

(assert (= bs!1696703 (and d!2074334 b!6617096)))

(assert (=> bs!1696703 (not (= lambda!369695 lambda!369677))))

(declare-fun bs!1696705 () Bool)

(assert (= bs!1696705 (and d!2074334 b!6616281)))

(assert (=> bs!1696705 (not (= lambda!369695 lambda!369624))))

(declare-fun bs!1696707 () Bool)

(assert (= bs!1696707 (and d!2074334 b!6616571)))

(assert (=> bs!1696707 (not (= lambda!369695 lambda!369650))))

(declare-fun bs!1696708 () Bool)

(assert (= bs!1696708 (and d!2074334 b!6617011)))

(assert (=> bs!1696708 (not (= lambda!369695 lambda!369666))))

(declare-fun bs!1696710 () Bool)

(assert (= bs!1696710 (and d!2074334 d!2073894)))

(assert (=> bs!1696710 (= lambda!369695 lambda!369586)))

(declare-fun bs!1696711 () Bool)

(assert (= bs!1696711 (and d!2074334 b!6616699)))

(assert (=> bs!1696711 (not (= lambda!369695 lambda!369655))))

(declare-fun bs!1696712 () Bool)

(assert (= bs!1696712 (and d!2074334 b!6616899)))

(assert (=> bs!1696712 (not (= lambda!369695 lambda!369660))))

(declare-fun bs!1696713 () Bool)

(assert (= bs!1696713 (and d!2074334 b!6616691)))

(assert (=> bs!1696713 (not (= lambda!369695 lambda!369656))))

(declare-fun bs!1696714 () Bool)

(assert (= bs!1696714 (and d!2074334 b!6615856)))

(assert (=> bs!1696714 (= lambda!369695 lambda!369577)))

(declare-fun bs!1696715 () Bool)

(assert (= bs!1696715 (and d!2074334 b!6616596)))

(assert (=> bs!1696715 (not (= lambda!369695 lambda!369652))))

(declare-fun bs!1696716 () Bool)

(assert (= bs!1696716 (and d!2074334 b!6617003)))

(assert (=> bs!1696716 (not (= lambda!369695 lambda!369667))))

(declare-fun bs!1696717 () Bool)

(assert (= bs!1696717 (and d!2074334 b!6617088)))

(assert (=> bs!1696717 (not (= lambda!369695 lambda!369679))))

(assert (=> bs!1696714 (not (= lambda!369695 lambda!369578))))

(declare-fun bs!1696718 () Bool)

(assert (= bs!1696718 (and d!2074334 d!2073900)))

(assert (=> bs!1696718 (= lambda!369695 lambda!369595)))

(declare-fun bs!1696719 () Bool)

(assert (= bs!1696719 (and d!2074334 b!6616588)))

(assert (=> bs!1696719 (not (= lambda!369695 lambda!369653))))

(assert (=> bs!1696718 (not (= lambda!369695 lambda!369598))))

(declare-fun bs!1696720 () Bool)

(assert (= bs!1696720 (and d!2074334 b!6616273)))

(assert (=> bs!1696720 (not (= lambda!369695 lambda!369625))))

(assert (=> d!2074334 true))

(assert (=> d!2074334 true))

(assert (=> d!2074334 true))

(assert (=> d!2074334 (= (isDefined!13083 (findConcatSeparation!2794 (regOne!33490 r!7292) (regTwo!33490 r!7292) Nil!65644 s!2326 s!2326)) (Exists!3559 lambda!369695))))

(assert (=> d!2074334 true))

(declare-fun _$89!2824 () Unit!159311)

(assert (=> d!2074334 (= (choose!49439 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326) _$89!2824)))

(declare-fun bs!1696721 () Bool)

(assert (= bs!1696721 d!2074334))

(assert (=> bs!1696721 m!7388790))

(assert (=> bs!1696721 m!7388790))

(assert (=> bs!1696721 m!7388792))

(declare-fun m!7389888 () Bool)

(assert (=> bs!1696721 m!7389888))

(assert (=> d!2073894 d!2074334))

(assert (=> d!2074038 d!2074096))

(declare-fun d!2074346 () Bool)

(assert (=> d!2074346 true))

(assert (=> d!2074346 true))

(declare-fun res!2713378 () Bool)

(assert (=> d!2074346 (= (choose!49438 lambda!369578) res!2713378)))

(assert (=> d!2073888 d!2074346))

(declare-fun d!2074348 () Bool)

(assert (=> d!2074348 (= (isEmpty!37928 (exprs!6373 (h!72091 zl!343))) ((_ is Nil!65642) (exprs!6373 (h!72091 zl!343))))))

(assert (=> b!6616155 d!2074348))

(assert (=> bs!1696371 d!2073998))

(assert (=> b!6616587 d!2074166))

(declare-fun d!2074350 () Bool)

(declare-fun res!2713380 () Bool)

(declare-fun e!4003226 () Bool)

(assert (=> d!2074350 (=> res!2713380 e!4003226)))

(assert (=> d!2074350 (= res!2713380 ((_ is ElementMatch!16489) lt!2417577))))

(assert (=> d!2074350 (= (validRegex!8225 lt!2417577) e!4003226)))

(declare-fun b!6617237 () Bool)

(declare-fun e!4003224 () Bool)

(declare-fun e!4003227 () Bool)

(assert (=> b!6617237 (= e!4003224 e!4003227)))

(declare-fun c!1219888 () Bool)

(assert (=> b!6617237 (= c!1219888 ((_ is Union!16489) lt!2417577))))

(declare-fun b!6617238 () Bool)

(declare-fun e!4003223 () Bool)

(declare-fun call!579887 () Bool)

(assert (=> b!6617238 (= e!4003223 call!579887)))

(declare-fun call!579886 () Bool)

(declare-fun c!1219887 () Bool)

(declare-fun bm!579880 () Bool)

(assert (=> bm!579880 (= call!579886 (validRegex!8225 (ite c!1219887 (reg!16818 lt!2417577) (ite c!1219888 (regTwo!33491 lt!2417577) (regTwo!33490 lt!2417577)))))))

(declare-fun b!6617239 () Bool)

(declare-fun e!4003225 () Bool)

(assert (=> b!6617239 (= e!4003225 call!579887)))

(declare-fun bm!579881 () Bool)

(declare-fun call!579885 () Bool)

(assert (=> bm!579881 (= call!579885 (validRegex!8225 (ite c!1219888 (regOne!33491 lt!2417577) (regOne!33490 lt!2417577))))))

(declare-fun b!6617240 () Bool)

(declare-fun res!2713383 () Bool)

(declare-fun e!4003228 () Bool)

(assert (=> b!6617240 (=> res!2713383 e!4003228)))

(assert (=> b!6617240 (= res!2713383 (not ((_ is Concat!25334) lt!2417577)))))

(assert (=> b!6617240 (= e!4003227 e!4003228)))

(declare-fun b!6617241 () Bool)

(assert (=> b!6617241 (= e!4003228 e!4003225)))

(declare-fun res!2713381 () Bool)

(assert (=> b!6617241 (=> (not res!2713381) (not e!4003225))))

(assert (=> b!6617241 (= res!2713381 call!579885)))

(declare-fun b!6617242 () Bool)

(assert (=> b!6617242 (= e!4003226 e!4003224)))

(assert (=> b!6617242 (= c!1219887 ((_ is Star!16489) lt!2417577))))

(declare-fun b!6617243 () Bool)

(declare-fun e!4003222 () Bool)

(assert (=> b!6617243 (= e!4003224 e!4003222)))

(declare-fun res!2713379 () Bool)

(assert (=> b!6617243 (= res!2713379 (not (nullable!6482 (reg!16818 lt!2417577))))))

(assert (=> b!6617243 (=> (not res!2713379) (not e!4003222))))

(declare-fun b!6617244 () Bool)

(assert (=> b!6617244 (= e!4003222 call!579886)))

(declare-fun b!6617245 () Bool)

(declare-fun res!2713382 () Bool)

(assert (=> b!6617245 (=> (not res!2713382) (not e!4003223))))

(assert (=> b!6617245 (= res!2713382 call!579885)))

(assert (=> b!6617245 (= e!4003227 e!4003223)))

(declare-fun bm!579882 () Bool)

(assert (=> bm!579882 (= call!579887 call!579886)))

(assert (= (and d!2074350 (not res!2713380)) b!6617242))

(assert (= (and b!6617242 c!1219887) b!6617243))

(assert (= (and b!6617242 (not c!1219887)) b!6617237))

(assert (= (and b!6617243 res!2713379) b!6617244))

(assert (= (and b!6617237 c!1219888) b!6617245))

(assert (= (and b!6617237 (not c!1219888)) b!6617240))

(assert (= (and b!6617245 res!2713382) b!6617238))

(assert (= (and b!6617240 (not res!2713383)) b!6617241))

(assert (= (and b!6617241 res!2713381) b!6617239))

(assert (= (or b!6617238 b!6617239) bm!579882))

(assert (= (or b!6617245 b!6617241) bm!579881))

(assert (= (or b!6617244 bm!579882) bm!579880))

(declare-fun m!7389890 () Bool)

(assert (=> bm!579880 m!7389890))

(declare-fun m!7389892 () Bool)

(assert (=> bm!579881 m!7389892))

(declare-fun m!7389894 () Bool)

(assert (=> b!6617243 m!7389894))

(assert (=> d!2074032 d!2074350))

(declare-fun d!2074352 () Bool)

(declare-fun res!2713384 () Bool)

(declare-fun e!4003229 () Bool)

(assert (=> d!2074352 (=> res!2713384 e!4003229)))

(assert (=> d!2074352 (= res!2713384 ((_ is Nil!65642) (unfocusZipperList!1910 zl!343)))))

(assert (=> d!2074352 (= (forall!15685 (unfocusZipperList!1910 zl!343) lambda!369641) e!4003229)))

(declare-fun b!6617246 () Bool)

(declare-fun e!4003230 () Bool)

(assert (=> b!6617246 (= e!4003229 e!4003230)))

(declare-fun res!2713385 () Bool)

(assert (=> b!6617246 (=> (not res!2713385) (not e!4003230))))

(assert (=> b!6617246 (= res!2713385 (dynLambda!26143 lambda!369641 (h!72090 (unfocusZipperList!1910 zl!343))))))

(declare-fun b!6617247 () Bool)

(assert (=> b!6617247 (= e!4003230 (forall!15685 (t!379422 (unfocusZipperList!1910 zl!343)) lambda!369641))))

(assert (= (and d!2074352 (not res!2713384)) b!6617246))

(assert (= (and b!6617246 res!2713385) b!6617247))

(declare-fun b_lambda!250257 () Bool)

(assert (=> (not b_lambda!250257) (not b!6617246)))

(declare-fun m!7389896 () Bool)

(assert (=> b!6617246 m!7389896))

(declare-fun m!7389898 () Bool)

(assert (=> b!6617247 m!7389898))

(assert (=> d!2074032 d!2074352))

(declare-fun d!2074354 () Bool)

(assert (=> d!2074354 (= (isEmptyLang!1872 lt!2417577) ((_ is EmptyLang!16489) lt!2417577))))

(assert (=> b!6616550 d!2074354))

(declare-fun d!2074356 () Bool)

(assert (=> d!2074356 (= (Exists!3559 lambda!369595) (choose!49438 lambda!369595))))

(declare-fun bs!1696722 () Bool)

(assert (= bs!1696722 d!2074356))

(declare-fun m!7389900 () Bool)

(assert (=> bs!1696722 m!7389900))

(assert (=> d!2073900 d!2074356))

(declare-fun d!2074358 () Bool)

(assert (=> d!2074358 (= (Exists!3559 lambda!369598) (choose!49438 lambda!369598))))

(declare-fun bs!1696723 () Bool)

(assert (= bs!1696723 d!2074358))

(declare-fun m!7389902 () Bool)

(assert (=> bs!1696723 m!7389902))

(assert (=> d!2073900 d!2074358))

(declare-fun bs!1696744 () Bool)

(declare-fun d!2074360 () Bool)

(assert (= bs!1696744 (and d!2074360 b!6616891)))

(declare-fun lambda!369705 () Int)

(assert (=> bs!1696744 (not (= lambda!369705 lambda!369661))))

(declare-fun bs!1696745 () Bool)

(assert (= bs!1696745 (and d!2074360 b!6616563)))

(assert (=> bs!1696745 (not (= lambda!369705 lambda!369651))))

(declare-fun bs!1696746 () Bool)

(assert (= bs!1696746 (and d!2074360 b!6617096)))

(assert (=> bs!1696746 (not (= lambda!369705 lambda!369677))))

(declare-fun bs!1696748 () Bool)

(assert (= bs!1696748 (and d!2074360 b!6616281)))

(assert (=> bs!1696748 (not (= lambda!369705 lambda!369624))))

(declare-fun bs!1696749 () Bool)

(assert (= bs!1696749 (and d!2074360 b!6616571)))

(assert (=> bs!1696749 (not (= lambda!369705 lambda!369650))))

(declare-fun bs!1696750 () Bool)

(assert (= bs!1696750 (and d!2074360 d!2073894)))

(assert (=> bs!1696750 (= lambda!369705 lambda!369586)))

(declare-fun bs!1696751 () Bool)

(assert (= bs!1696751 (and d!2074360 b!6616699)))

(assert (=> bs!1696751 (not (= lambda!369705 lambda!369655))))

(declare-fun bs!1696752 () Bool)

(assert (= bs!1696752 (and d!2074360 b!6616899)))

(assert (=> bs!1696752 (not (= lambda!369705 lambda!369660))))

(declare-fun bs!1696753 () Bool)

(assert (= bs!1696753 (and d!2074360 b!6616691)))

(assert (=> bs!1696753 (not (= lambda!369705 lambda!369656))))

(declare-fun bs!1696754 () Bool)

(assert (= bs!1696754 (and d!2074360 b!6615856)))

(assert (=> bs!1696754 (= lambda!369705 lambda!369577)))

(declare-fun bs!1696755 () Bool)

(assert (= bs!1696755 (and d!2074360 b!6616596)))

(assert (=> bs!1696755 (not (= lambda!369705 lambda!369652))))

(declare-fun bs!1696756 () Bool)

(assert (= bs!1696756 (and d!2074360 b!6617003)))

(assert (=> bs!1696756 (not (= lambda!369705 lambda!369667))))

(declare-fun bs!1696757 () Bool)

(assert (= bs!1696757 (and d!2074360 d!2074334)))

(assert (=> bs!1696757 (= lambda!369705 lambda!369695)))

(declare-fun bs!1696758 () Bool)

(assert (= bs!1696758 (and d!2074360 b!6617011)))

(assert (=> bs!1696758 (not (= lambda!369705 lambda!369666))))

(declare-fun bs!1696759 () Bool)

(assert (= bs!1696759 (and d!2074360 b!6617088)))

(assert (=> bs!1696759 (not (= lambda!369705 lambda!369679))))

(assert (=> bs!1696754 (not (= lambda!369705 lambda!369578))))

(declare-fun bs!1696760 () Bool)

(assert (= bs!1696760 (and d!2074360 d!2073900)))

(assert (=> bs!1696760 (= lambda!369705 lambda!369595)))

(declare-fun bs!1696761 () Bool)

(assert (= bs!1696761 (and d!2074360 b!6616588)))

(assert (=> bs!1696761 (not (= lambda!369705 lambda!369653))))

(assert (=> bs!1696760 (not (= lambda!369705 lambda!369598))))

(declare-fun bs!1696762 () Bool)

(assert (= bs!1696762 (and d!2074360 b!6616273)))

(assert (=> bs!1696762 (not (= lambda!369705 lambda!369625))))

(assert (=> d!2074360 true))

(assert (=> d!2074360 true))

(assert (=> d!2074360 true))

(declare-fun lambda!369707 () Int)

(assert (=> bs!1696744 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 r!7292) (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))))) (= lambda!369707 lambda!369661))))

(assert (=> bs!1696746 (not (= lambda!369707 lambda!369677))))

(assert (=> bs!1696748 (not (= lambda!369707 lambda!369624))))

(assert (=> bs!1696749 (not (= lambda!369707 lambda!369650))))

(assert (=> bs!1696750 (not (= lambda!369707 lambda!369586))))

(assert (=> bs!1696751 (not (= lambda!369707 lambda!369655))))

(assert (=> bs!1696752 (not (= lambda!369707 lambda!369660))))

(assert (=> bs!1696753 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 r!7292) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369707 lambda!369656))))

(assert (=> bs!1696754 (not (= lambda!369707 lambda!369577))))

(assert (=> bs!1696755 (not (= lambda!369707 lambda!369652))))

(assert (=> bs!1696756 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regOne!33491 r!7292))) (= (regTwo!33490 r!7292) (regTwo!33490 (regOne!33491 r!7292)))) (= lambda!369707 lambda!369667))))

(declare-fun bs!1696764 () Bool)

(assert (= bs!1696764 d!2074360))

(assert (=> bs!1696764 (not (= lambda!369707 lambda!369705))))

(assert (=> bs!1696745 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 r!7292) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369707 lambda!369651))))

(assert (=> bs!1696757 (not (= lambda!369707 lambda!369695))))

(assert (=> bs!1696758 (not (= lambda!369707 lambda!369666))))

(assert (=> bs!1696759 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regOne!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 r!7292) (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))))) (= lambda!369707 lambda!369679))))

(assert (=> bs!1696754 (= lambda!369707 lambda!369578)))

(assert (=> bs!1696760 (not (= lambda!369707 lambda!369595))))

(assert (=> bs!1696761 (= (and (= (regOne!33490 r!7292) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 r!7292) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369707 lambda!369653))))

(assert (=> bs!1696760 (= lambda!369707 lambda!369598)))

(assert (=> bs!1696762 (= lambda!369707 lambda!369625)))

(assert (=> d!2074360 true))

(assert (=> d!2074360 true))

(assert (=> d!2074360 true))

(assert (=> d!2074360 (= (Exists!3559 lambda!369705) (Exists!3559 lambda!369707))))

(assert (=> d!2074360 true))

(declare-fun _$90!2449 () Unit!159311)

(assert (=> d!2074360 (= (choose!49440 (regOne!33490 r!7292) (regTwo!33490 r!7292) s!2326) _$90!2449)))

(declare-fun m!7389942 () Bool)

(assert (=> bs!1696764 m!7389942))

(declare-fun m!7389944 () Bool)

(assert (=> bs!1696764 m!7389944))

(assert (=> d!2073900 d!2074360))

(assert (=> d!2073900 d!2074206))

(declare-fun d!2074378 () Bool)

(declare-fun c!1219907 () Bool)

(assert (=> d!2074378 (= c!1219907 (isEmpty!37931 (tail!12507 (t!379424 s!2326))))))

(declare-fun e!4003262 () Bool)

(assert (=> d!2074378 (= (matchZipper!2501 (derivationStepZipper!2455 lt!2417481 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))) e!4003262)))

(declare-fun b!6617309 () Bool)

(assert (=> b!6617309 (= e!4003262 (nullableZipper!2230 (derivationStepZipper!2455 lt!2417481 (head!13422 (t!379424 s!2326)))))))

(declare-fun b!6617310 () Bool)

(assert (=> b!6617310 (= e!4003262 (matchZipper!2501 (derivationStepZipper!2455 (derivationStepZipper!2455 lt!2417481 (head!13422 (t!379424 s!2326))) (head!13422 (tail!12507 (t!379424 s!2326)))) (tail!12507 (tail!12507 (t!379424 s!2326)))))))

(assert (= (and d!2074378 c!1219907) b!6617309))

(assert (= (and d!2074378 (not c!1219907)) b!6617310))

(assert (=> d!2074378 m!7389226))

(assert (=> d!2074378 m!7389506))

(assert (=> b!6617309 m!7389240))

(declare-fun m!7389946 () Bool)

(assert (=> b!6617309 m!7389946))

(assert (=> b!6617310 m!7389226))

(assert (=> b!6617310 m!7389510))

(assert (=> b!6617310 m!7389240))

(assert (=> b!6617310 m!7389510))

(declare-fun m!7389950 () Bool)

(assert (=> b!6617310 m!7389950))

(assert (=> b!6617310 m!7389226))

(assert (=> b!6617310 m!7389514))

(assert (=> b!6617310 m!7389950))

(assert (=> b!6617310 m!7389514))

(declare-fun m!7389954 () Bool)

(assert (=> b!6617310 m!7389954))

(assert (=> b!6616520 d!2074378))

(declare-fun bs!1696765 () Bool)

(declare-fun d!2074380 () Bool)

(assert (= bs!1696765 (and d!2074380 d!2074048)))

(declare-fun lambda!369708 () Int)

(assert (=> bs!1696765 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369708 lambda!369649))))

(declare-fun bs!1696766 () Bool)

(assert (= bs!1696766 (and d!2074380 b!6615850)))

(assert (=> bs!1696766 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369708 lambda!369579))))

(declare-fun bs!1696767 () Bool)

(assert (= bs!1696767 (and d!2074380 d!2074042)))

(assert (=> bs!1696767 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369708 lambda!369648))))

(declare-fun bs!1696768 () Bool)

(assert (= bs!1696768 (and d!2074380 d!2074312)))

(assert (=> bs!1696768 (= (= (head!13422 (t!379424 s!2326)) (head!13422 s!2326)) (= lambda!369708 lambda!369687))))

(declare-fun bs!1696769 () Bool)

(assert (= bs!1696769 (and d!2074380 d!2074258)))

(assert (=> bs!1696769 (= lambda!369708 lambda!369671)))

(declare-fun bs!1696770 () Bool)

(assert (= bs!1696770 (and d!2074380 d!2074142)))

(assert (=> bs!1696770 (= lambda!369708 lambda!369657)))

(assert (=> d!2074380 true))

(assert (=> d!2074380 (= (derivationStepZipper!2455 lt!2417481 (head!13422 (t!379424 s!2326))) (flatMap!1994 lt!2417481 lambda!369708))))

(declare-fun bs!1696771 () Bool)

(assert (= bs!1696771 d!2074380))

(declare-fun m!7389962 () Bool)

(assert (=> bs!1696771 m!7389962))

(assert (=> b!6616520 d!2074380))

(assert (=> b!6616520 d!2074146))

(assert (=> b!6616520 d!2074148))

(declare-fun bs!1696772 () Bool)

(declare-fun b!6617332 () Bool)

(assert (= bs!1696772 (and b!6617332 b!6616891)))

(declare-fun lambda!369709 () Int)

(assert (=> bs!1696772 (not (= lambda!369709 lambda!369661))))

(declare-fun bs!1696773 () Bool)

(assert (= bs!1696773 (and b!6617332 b!6617096)))

(assert (=> bs!1696773 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regOne!33491 (regTwo!33490 r!7292)))) (= (regOne!33491 (regOne!33490 r!7292)) (regOne!33491 (regTwo!33490 r!7292)))) (= lambda!369709 lambda!369677))))

(declare-fun bs!1696774 () Bool)

(assert (= bs!1696774 (and b!6617332 b!6616281)))

(assert (=> bs!1696774 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 r!7292)) (= (regOne!33491 (regOne!33490 r!7292)) r!7292)) (= lambda!369709 lambda!369624))))

(declare-fun bs!1696775 () Bool)

(assert (= bs!1696775 (and b!6617332 b!6616571)))

(assert (=> bs!1696775 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regOne!33490 r!7292))) (= (regOne!33491 (regOne!33490 r!7292)) (regOne!33490 r!7292))) (= lambda!369709 lambda!369650))))

(declare-fun bs!1696776 () Bool)

(assert (= bs!1696776 (and b!6617332 b!6616699)))

(assert (=> bs!1696776 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regOne!33491 (regOne!33490 r!7292)) (regTwo!33491 (regTwo!33490 r!7292)))) (= lambda!369709 lambda!369655))))

(declare-fun bs!1696777 () Bool)

(assert (= bs!1696777 (and b!6617332 b!6616899)))

(assert (=> bs!1696777 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regTwo!33491 (regOne!33490 r!7292)))) (= (regOne!33491 (regOne!33490 r!7292)) (regTwo!33491 (regOne!33490 r!7292)))) (= lambda!369709 lambda!369660))))

(declare-fun bs!1696778 () Bool)

(assert (= bs!1696778 (and b!6617332 b!6616691)))

(assert (=> bs!1696778 (not (= lambda!369709 lambda!369656))))

(declare-fun bs!1696779 () Bool)

(assert (= bs!1696779 (and b!6617332 b!6615856)))

(assert (=> bs!1696779 (not (= lambda!369709 lambda!369577))))

(declare-fun bs!1696780 () Bool)

(assert (= bs!1696780 (and b!6617332 b!6616596)))

(assert (=> bs!1696780 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regTwo!33490 r!7292))) (= (regOne!33491 (regOne!33490 r!7292)) (regTwo!33490 r!7292))) (= lambda!369709 lambda!369652))))

(declare-fun bs!1696782 () Bool)

(assert (= bs!1696782 (and b!6617332 b!6617003)))

(assert (=> bs!1696782 (not (= lambda!369709 lambda!369667))))

(declare-fun bs!1696784 () Bool)

(assert (= bs!1696784 (and b!6617332 d!2074360)))

(assert (=> bs!1696784 (not (= lambda!369709 lambda!369705))))

(declare-fun bs!1696786 () Bool)

(assert (= bs!1696786 (and b!6617332 b!6616563)))

(assert (=> bs!1696786 (not (= lambda!369709 lambda!369651))))

(declare-fun bs!1696788 () Bool)

(assert (= bs!1696788 (and b!6617332 d!2074334)))

(assert (=> bs!1696788 (not (= lambda!369709 lambda!369695))))

(declare-fun bs!1696790 () Bool)

(assert (= bs!1696790 (and b!6617332 b!6617011)))

(assert (=> bs!1696790 (= (and (= (reg!16818 (regOne!33491 (regOne!33490 r!7292))) (reg!16818 (regOne!33491 r!7292))) (= (regOne!33491 (regOne!33490 r!7292)) (regOne!33491 r!7292))) (= lambda!369709 lambda!369666))))

(assert (=> bs!1696784 (not (= lambda!369709 lambda!369707))))

(declare-fun bs!1696792 () Bool)

(assert (= bs!1696792 (and b!6617332 d!2073894)))

(assert (=> bs!1696792 (not (= lambda!369709 lambda!369586))))

(declare-fun bs!1696795 () Bool)

(assert (= bs!1696795 (and b!6617332 b!6617088)))

(assert (=> bs!1696795 (not (= lambda!369709 lambda!369679))))

(assert (=> bs!1696779 (not (= lambda!369709 lambda!369578))))

(declare-fun bs!1696797 () Bool)

(assert (= bs!1696797 (and b!6617332 d!2073900)))

(assert (=> bs!1696797 (not (= lambda!369709 lambda!369595))))

(declare-fun bs!1696799 () Bool)

(assert (= bs!1696799 (and b!6617332 b!6616588)))

(assert (=> bs!1696799 (not (= lambda!369709 lambda!369653))))

(assert (=> bs!1696797 (not (= lambda!369709 lambda!369598))))

(declare-fun bs!1696802 () Bool)

(assert (= bs!1696802 (and b!6617332 b!6616273)))

(assert (=> bs!1696802 (not (= lambda!369709 lambda!369625))))

(assert (=> b!6617332 true))

(assert (=> b!6617332 true))

(declare-fun bs!1696808 () Bool)

(declare-fun b!6617324 () Bool)

(assert (= bs!1696808 (and b!6617324 b!6617332)))

(declare-fun lambda!369711 () Int)

(assert (=> bs!1696808 (not (= lambda!369711 lambda!369709))))

(declare-fun bs!1696810 () Bool)

(assert (= bs!1696810 (and b!6617324 b!6616891)))

(assert (=> bs!1696810 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))))) (= lambda!369711 lambda!369661))))

(declare-fun bs!1696811 () Bool)

(assert (= bs!1696811 (and b!6617324 b!6617096)))

(assert (=> bs!1696811 (not (= lambda!369711 lambda!369677))))

(declare-fun bs!1696813 () Bool)

(assert (= bs!1696813 (and b!6617324 b!6616281)))

(assert (=> bs!1696813 (not (= lambda!369711 lambda!369624))))

(declare-fun bs!1696814 () Bool)

(assert (= bs!1696814 (and b!6617324 b!6616571)))

(assert (=> bs!1696814 (not (= lambda!369711 lambda!369650))))

(declare-fun bs!1696815 () Bool)

(assert (= bs!1696815 (and b!6617324 b!6616699)))

(assert (=> bs!1696815 (not (= lambda!369711 lambda!369655))))

(declare-fun bs!1696816 () Bool)

(assert (= bs!1696816 (and b!6617324 b!6616899)))

(assert (=> bs!1696816 (not (= lambda!369711 lambda!369660))))

(declare-fun bs!1696817 () Bool)

(assert (= bs!1696817 (and b!6617324 b!6616691)))

(assert (=> bs!1696817 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369711 lambda!369656))))

(declare-fun bs!1696818 () Bool)

(assert (= bs!1696818 (and b!6617324 b!6615856)))

(assert (=> bs!1696818 (not (= lambda!369711 lambda!369577))))

(declare-fun bs!1696819 () Bool)

(assert (= bs!1696819 (and b!6617324 b!6616596)))

(assert (=> bs!1696819 (not (= lambda!369711 lambda!369652))))

(declare-fun bs!1696821 () Bool)

(assert (= bs!1696821 (and b!6617324 b!6617003)))

(assert (=> bs!1696821 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regOne!33491 r!7292))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regOne!33491 r!7292)))) (= lambda!369711 lambda!369667))))

(declare-fun bs!1696823 () Bool)

(assert (= bs!1696823 (and b!6617324 d!2074360)))

(assert (=> bs!1696823 (not (= lambda!369711 lambda!369705))))

(declare-fun bs!1696825 () Bool)

(assert (= bs!1696825 (and b!6617324 b!6616563)))

(assert (=> bs!1696825 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369711 lambda!369651))))

(declare-fun bs!1696827 () Bool)

(assert (= bs!1696827 (and b!6617324 d!2074334)))

(assert (=> bs!1696827 (not (= lambda!369711 lambda!369695))))

(declare-fun bs!1696829 () Bool)

(assert (= bs!1696829 (and b!6617324 b!6617011)))

(assert (=> bs!1696829 (not (= lambda!369711 lambda!369666))))

(assert (=> bs!1696823 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369711 lambda!369707))))

(declare-fun bs!1696832 () Bool)

(assert (= bs!1696832 (and b!6617324 d!2073894)))

(assert (=> bs!1696832 (not (= lambda!369711 lambda!369586))))

(declare-fun bs!1696834 () Bool)

(assert (= bs!1696834 (and b!6617324 b!6617088)))

(assert (=> bs!1696834 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regOne!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))))) (= lambda!369711 lambda!369679))))

(assert (=> bs!1696818 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369711 lambda!369578))))

(declare-fun bs!1696837 () Bool)

(assert (= bs!1696837 (and b!6617324 d!2073900)))

(assert (=> bs!1696837 (not (= lambda!369711 lambda!369595))))

(declare-fun bs!1696839 () Bool)

(assert (= bs!1696839 (and b!6617324 b!6616588)))

(assert (=> bs!1696839 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369711 lambda!369653))))

(assert (=> bs!1696837 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369711 lambda!369598))))

(declare-fun bs!1696842 () Bool)

(assert (= bs!1696842 (and b!6617324 b!6616273)))

(assert (=> bs!1696842 (= (and (= (regOne!33490 (regOne!33491 (regOne!33490 r!7292))) (regOne!33490 r!7292)) (= (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))) (regTwo!33490 r!7292))) (= lambda!369711 lambda!369625))))

(assert (=> b!6617324 true))

(assert (=> b!6617324 true))

(declare-fun e!4003277 () Bool)

(declare-fun call!579906 () Bool)

(assert (=> b!6617324 (= e!4003277 call!579906)))

(declare-fun d!2074386 () Bool)

(declare-fun c!1219916 () Bool)

(assert (=> d!2074386 (= c!1219916 ((_ is EmptyExpr!16489) (regOne!33491 (regOne!33490 r!7292))))))

(declare-fun e!4003275 () Bool)

(assert (=> d!2074386 (= (matchRSpec!3590 (regOne!33491 (regOne!33490 r!7292)) s!2326) e!4003275)))

(declare-fun b!6617325 () Bool)

(declare-fun e!4003273 () Bool)

(assert (=> b!6617325 (= e!4003275 e!4003273)))

(declare-fun res!2713420 () Bool)

(assert (=> b!6617325 (= res!2713420 (not ((_ is EmptyLang!16489) (regOne!33491 (regOne!33490 r!7292)))))))

(assert (=> b!6617325 (=> (not res!2713420) (not e!4003273))))

(declare-fun b!6617326 () Bool)

(declare-fun c!1219915 () Bool)

(assert (=> b!6617326 (= c!1219915 ((_ is Union!16489) (regOne!33491 (regOne!33490 r!7292))))))

(declare-fun e!4003274 () Bool)

(declare-fun e!4003276 () Bool)

(assert (=> b!6617326 (= e!4003274 e!4003276)))

(declare-fun b!6617327 () Bool)

(declare-fun call!579907 () Bool)

(assert (=> b!6617327 (= e!4003275 call!579907)))

(declare-fun b!6617328 () Bool)

(declare-fun e!4003271 () Bool)

(assert (=> b!6617328 (= e!4003276 e!4003271)))

(declare-fun res!2713418 () Bool)

(assert (=> b!6617328 (= res!2713418 (matchRSpec!3590 (regOne!33491 (regOne!33491 (regOne!33490 r!7292))) s!2326))))

(assert (=> b!6617328 (=> res!2713418 e!4003271)))

(declare-fun b!6617329 () Bool)

(declare-fun c!1219913 () Bool)

(assert (=> b!6617329 (= c!1219913 ((_ is ElementMatch!16489) (regOne!33491 (regOne!33490 r!7292))))))

(assert (=> b!6617329 (= e!4003273 e!4003274)))

(declare-fun b!6617330 () Bool)

(declare-fun res!2713419 () Bool)

(declare-fun e!4003272 () Bool)

(assert (=> b!6617330 (=> res!2713419 e!4003272)))

(assert (=> b!6617330 (= res!2713419 call!579907)))

(assert (=> b!6617330 (= e!4003277 e!4003272)))

(declare-fun bm!579901 () Bool)

(assert (=> bm!579901 (= call!579907 (isEmpty!37931 s!2326))))

(declare-fun b!6617331 () Bool)

(assert (=> b!6617331 (= e!4003274 (= s!2326 (Cons!65644 (c!1219498 (regOne!33491 (regOne!33490 r!7292))) Nil!65644)))))

(assert (=> b!6617332 (= e!4003272 call!579906)))

(declare-fun b!6617333 () Bool)

(assert (=> b!6617333 (= e!4003271 (matchRSpec!3590 (regTwo!33491 (regOne!33491 (regOne!33490 r!7292))) s!2326))))

(declare-fun bm!579902 () Bool)

(declare-fun c!1219914 () Bool)

(assert (=> bm!579902 (= call!579906 (Exists!3559 (ite c!1219914 lambda!369709 lambda!369711)))))

(declare-fun b!6617334 () Bool)

(assert (=> b!6617334 (= e!4003276 e!4003277)))

(assert (=> b!6617334 (= c!1219914 ((_ is Star!16489) (regOne!33491 (regOne!33490 r!7292))))))

(assert (= (and d!2074386 c!1219916) b!6617327))

(assert (= (and d!2074386 (not c!1219916)) b!6617325))

(assert (= (and b!6617325 res!2713420) b!6617329))

(assert (= (and b!6617329 c!1219913) b!6617331))

(assert (= (and b!6617329 (not c!1219913)) b!6617326))

(assert (= (and b!6617326 c!1219915) b!6617328))

(assert (= (and b!6617326 (not c!1219915)) b!6617334))

(assert (= (and b!6617328 (not res!2713418)) b!6617333))

(assert (= (and b!6617334 c!1219914) b!6617330))

(assert (= (and b!6617334 (not c!1219914)) b!6617324))

(assert (= (and b!6617330 (not res!2713419)) b!6617332))

(assert (= (or b!6617332 b!6617324) bm!579902))

(assert (= (or b!6617327 b!6617330) bm!579901))

(declare-fun m!7389974 () Bool)

(assert (=> b!6617328 m!7389974))

(assert (=> bm!579901 m!7389100))

(declare-fun m!7389976 () Bool)

(assert (=> b!6617333 m!7389976))

(declare-fun m!7389978 () Bool)

(assert (=> bm!579902 m!7389978))

(assert (=> b!6616567 d!2074386))

(declare-fun b!6617346 () Bool)

(declare-fun e!4003287 () Bool)

(declare-fun call!579910 () Bool)

(assert (=> b!6617346 (= e!4003287 call!579910)))

(declare-fun b!6617347 () Bool)

(declare-fun e!4003289 () Bool)

(declare-fun e!4003286 () Bool)

(assert (=> b!6617347 (= e!4003289 e!4003286)))

(declare-fun res!2713428 () Bool)

(declare-fun call!579911 () Bool)

(assert (=> b!6617347 (= res!2713428 call!579911)))

(assert (=> b!6617347 (=> res!2713428 e!4003286)))

(declare-fun b!6617348 () Bool)

(declare-fun e!4003288 () Bool)

(declare-fun e!4003285 () Bool)

(assert (=> b!6617348 (= e!4003288 e!4003285)))

(declare-fun res!2713424 () Bool)

(assert (=> b!6617348 (=> res!2713424 e!4003285)))

(assert (=> b!6617348 (= res!2713424 ((_ is Star!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun bm!579905 () Bool)

(declare-fun c!1219921 () Bool)

(assert (=> bm!579905 (= call!579911 (nullable!6482 (ite c!1219921 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun b!6617349 () Bool)

(assert (=> b!6617349 (= e!4003289 e!4003287)))

(declare-fun res!2713426 () Bool)

(assert (=> b!6617349 (= res!2713426 call!579911)))

(assert (=> b!6617349 (=> (not res!2713426) (not e!4003287))))

(declare-fun b!6617350 () Bool)

(declare-fun e!4003290 () Bool)

(assert (=> b!6617350 (= e!4003290 e!4003288)))

(declare-fun res!2713427 () Bool)

(assert (=> b!6617350 (=> (not res!2713427) (not e!4003288))))

(assert (=> b!6617350 (= res!2713427 (and (not ((_ is EmptyLang!16489) (h!72090 (exprs!6373 (h!72091 zl!343))))) (not ((_ is ElementMatch!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun b!6617351 () Bool)

(assert (=> b!6617351 (= e!4003286 call!579910)))

(declare-fun bm!579906 () Bool)

(assert (=> bm!579906 (= call!579910 (nullable!6482 (ite c!1219921 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))

(declare-fun d!2074390 () Bool)

(declare-fun res!2713425 () Bool)

(assert (=> d!2074390 (=> res!2713425 e!4003290)))

(assert (=> d!2074390 (= res!2713425 ((_ is EmptyExpr!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> d!2074390 (= (nullableFct!2403 (h!72090 (exprs!6373 (h!72091 zl!343)))) e!4003290)))

(declare-fun b!6617352 () Bool)

(assert (=> b!6617352 (= e!4003285 e!4003289)))

(assert (=> b!6617352 (= c!1219921 ((_ is Union!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (= (and d!2074390 (not res!2713425)) b!6617350))

(assert (= (and b!6617350 res!2713427) b!6617348))

(assert (= (and b!6617348 (not res!2713424)) b!6617352))

(assert (= (and b!6617352 c!1219921) b!6617347))

(assert (= (and b!6617352 (not c!1219921)) b!6617349))

(assert (= (and b!6617347 (not res!2713428)) b!6617351))

(assert (= (and b!6617349 res!2713426) b!6617346))

(assert (= (or b!6617351 b!6617346) bm!579906))

(assert (= (or b!6617347 b!6617349) bm!579905))

(declare-fun m!7389980 () Bool)

(assert (=> bm!579905 m!7389980))

(declare-fun m!7389982 () Bool)

(assert (=> bm!579906 m!7389982))

(assert (=> d!2074012 d!2074390))

(declare-fun b!6617353 () Bool)

(declare-fun c!1219923 () Bool)

(declare-fun e!4003294 () Bool)

(assert (=> b!6617353 (= c!1219923 e!4003294)))

(declare-fun res!2713429 () Bool)

(assert (=> b!6617353 (=> (not res!2713429) (not e!4003294))))

(assert (=> b!6617353 (= res!2713429 ((_ is Concat!25334) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun e!4003292 () (InoxSet Context!11746))

(declare-fun e!4003291 () (InoxSet Context!11746))

(assert (=> b!6617353 (= e!4003292 e!4003291)))

(declare-fun b!6617354 () Bool)

(declare-fun call!579913 () (InoxSet Context!11746))

(declare-fun call!579912 () (InoxSet Context!11746))

(assert (=> b!6617354 (= e!4003292 ((_ map or) call!579913 call!579912))))

(declare-fun bm!579907 () Bool)

(declare-fun call!579917 () (InoxSet Context!11746))

(assert (=> bm!579907 (= call!579917 call!579912)))

(declare-fun bm!579908 () Bool)

(declare-fun call!579915 () (InoxSet Context!11746))

(assert (=> bm!579908 (= call!579915 call!579917)))

(declare-fun bm!579910 () Bool)

(declare-fun c!1219924 () Bool)

(declare-fun call!579916 () List!65766)

(declare-fun c!1219925 () Bool)

(assert (=> bm!579910 (= call!579912 (derivationStepZipperDown!1737 (ite c!1219925 (regTwo!33491 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (ite c!1219923 (regTwo!33490 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (ite c!1219924 (regOne!33490 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (reg!16818 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))))))) (ite (or c!1219925 c!1219923) (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751)) (Context!11747 call!579916)) (h!72092 s!2326)))))

(declare-fun b!6617355 () Bool)

(declare-fun e!4003293 () (InoxSet Context!11746))

(assert (=> b!6617355 (= e!4003293 (store ((as const (Array Context!11746 Bool)) false) (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751)) true))))

(declare-fun b!6617356 () Bool)

(declare-fun e!4003296 () (InoxSet Context!11746))

(assert (=> b!6617356 (= e!4003296 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6617357 () Bool)

(assert (=> b!6617357 (= e!4003296 call!579915)))

(declare-fun bm!579911 () Bool)

(declare-fun call!579914 () List!65766)

(assert (=> bm!579911 (= call!579914 ($colon$colon!2326 (exprs!6373 (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751))) (ite (or c!1219923 c!1219924) (regTwo!33490 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))))))))

(declare-fun b!6617358 () Bool)

(assert (=> b!6617358 (= e!4003291 ((_ map or) call!579913 call!579917))))

(declare-fun c!1219926 () Bool)

(declare-fun d!2074392 () Bool)

(assert (=> d!2074392 (= c!1219926 (and ((_ is ElementMatch!16489) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (= (c!1219498 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (h!72092 s!2326))))))

(assert (=> d!2074392 (= (derivationStepZipperDown!1737 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))) (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751)) (h!72092 s!2326)) e!4003293)))

(declare-fun bm!579909 () Bool)

(assert (=> bm!579909 (= call!579913 (derivationStepZipperDown!1737 (ite c!1219925 (regOne!33491 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))) (regOne!33490 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))))) (ite c!1219925 (ite (or c!1219669 c!1219667) lt!2417478 (Context!11747 call!579751)) (Context!11747 call!579914)) (h!72092 s!2326)))))

(declare-fun b!6617359 () Bool)

(assert (=> b!6617359 (= e!4003294 (nullable!6482 (regOne!33490 (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))))))))

(declare-fun c!1219922 () Bool)

(declare-fun b!6617360 () Bool)

(assert (=> b!6617360 (= c!1219922 ((_ is Star!16489) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun e!4003295 () (InoxSet Context!11746))

(assert (=> b!6617360 (= e!4003295 e!4003296)))

(declare-fun b!6617361 () Bool)

(assert (=> b!6617361 (= e!4003295 call!579915)))

(declare-fun b!6617362 () Bool)

(assert (=> b!6617362 (= e!4003293 e!4003292)))

(assert (=> b!6617362 (= c!1219925 ((_ is Union!16489) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun bm!579912 () Bool)

(assert (=> bm!579912 (= call!579916 call!579914)))

(declare-fun b!6617363 () Bool)

(assert (=> b!6617363 (= e!4003291 e!4003295)))

(assert (=> b!6617363 (= c!1219924 ((_ is Concat!25334) (ite c!1219669 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219667 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219668 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343)))))))))))

(assert (= (and d!2074392 c!1219926) b!6617355))

(assert (= (and d!2074392 (not c!1219926)) b!6617362))

(assert (= (and b!6617362 c!1219925) b!6617354))

(assert (= (and b!6617362 (not c!1219925)) b!6617353))

(assert (= (and b!6617353 res!2713429) b!6617359))

(assert (= (and b!6617353 c!1219923) b!6617358))

(assert (= (and b!6617353 (not c!1219923)) b!6617363))

(assert (= (and b!6617363 c!1219924) b!6617361))

(assert (= (and b!6617363 (not c!1219924)) b!6617360))

(assert (= (and b!6617360 c!1219922) b!6617357))

(assert (= (and b!6617360 (not c!1219922)) b!6617356))

(assert (= (or b!6617361 b!6617357) bm!579912))

(assert (= (or b!6617361 b!6617357) bm!579908))

(assert (= (or b!6617358 bm!579912) bm!579911))

(assert (= (or b!6617358 bm!579908) bm!579907))

(assert (= (or b!6617354 bm!579907) bm!579910))

(assert (= (or b!6617354 b!6617358) bm!579909))

(declare-fun m!7389990 () Bool)

(assert (=> bm!579909 m!7389990))

(declare-fun m!7389992 () Bool)

(assert (=> bm!579910 m!7389992))

(declare-fun m!7389994 () Bool)

(assert (=> b!6617359 m!7389994))

(declare-fun m!7389996 () Bool)

(assert (=> bm!579911 m!7389996))

(declare-fun m!7389998 () Bool)

(assert (=> b!6617355 m!7389998))

(assert (=> bm!579745 d!2074392))

(assert (=> d!2074022 d!2074026))

(assert (=> d!2074022 d!2074024))

(declare-fun e!4003306 () Bool)

(declare-fun d!2074396 () Bool)

(assert (=> d!2074396 (= (matchZipper!2501 ((_ map or) lt!2417476 lt!2417481) (t!379424 s!2326)) e!4003306)))

(declare-fun res!2713435 () Bool)

(assert (=> d!2074396 (=> res!2713435 e!4003306)))

(assert (=> d!2074396 (= res!2713435 (matchZipper!2501 lt!2417476 (t!379424 s!2326)))))

(assert (=> d!2074396 true))

(declare-fun _$48!2333 () Unit!159311)

(assert (=> d!2074396 (= (choose!49448 lt!2417476 lt!2417481 (t!379424 s!2326)) _$48!2333)))

(declare-fun b!6617377 () Bool)

(assert (=> b!6617377 (= e!4003306 (matchZipper!2501 lt!2417481 (t!379424 s!2326)))))

(assert (= (and d!2074396 (not res!2713435)) b!6617377))

(assert (=> d!2074396 m!7388834))

(assert (=> d!2074396 m!7388832))

(assert (=> b!6617377 m!7388752))

(assert (=> d!2074022 d!2074396))

(declare-fun d!2074398 () Bool)

(assert (=> d!2074398 (= (nullable!6482 (h!72090 (exprs!6373 lt!2417478))) (nullableFct!2403 (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun bs!1696879 () Bool)

(assert (= bs!1696879 d!2074398))

(declare-fun m!7390000 () Bool)

(assert (=> bs!1696879 m!7390000))

(assert (=> b!6616386 d!2074398))

(declare-fun d!2074400 () Bool)

(declare-fun c!1219931 () Bool)

(assert (=> d!2074400 (= c!1219931 (isEmpty!37931 (tail!12507 (t!379424 s!2326))))))

(declare-fun e!4003307 () Bool)

(assert (=> d!2074400 (= (matchZipper!2501 (derivationStepZipper!2455 lt!2417476 (head!13422 (t!379424 s!2326))) (tail!12507 (t!379424 s!2326))) e!4003307)))

(declare-fun b!6617378 () Bool)

(assert (=> b!6617378 (= e!4003307 (nullableZipper!2230 (derivationStepZipper!2455 lt!2417476 (head!13422 (t!379424 s!2326)))))))

(declare-fun b!6617379 () Bool)

(assert (=> b!6617379 (= e!4003307 (matchZipper!2501 (derivationStepZipper!2455 (derivationStepZipper!2455 lt!2417476 (head!13422 (t!379424 s!2326))) (head!13422 (tail!12507 (t!379424 s!2326)))) (tail!12507 (tail!12507 (t!379424 s!2326)))))))

(assert (= (and d!2074400 c!1219931) b!6617378))

(assert (= (and d!2074400 (not c!1219931)) b!6617379))

(assert (=> d!2074400 m!7389226))

(assert (=> d!2074400 m!7389506))

(assert (=> b!6617378 m!7389224))

(declare-fun m!7390002 () Bool)

(assert (=> b!6617378 m!7390002))

(assert (=> b!6617379 m!7389226))

(assert (=> b!6617379 m!7389510))

(assert (=> b!6617379 m!7389224))

(assert (=> b!6617379 m!7389510))

(declare-fun m!7390004 () Bool)

(assert (=> b!6617379 m!7390004))

(assert (=> b!6617379 m!7389226))

(assert (=> b!6617379 m!7389514))

(assert (=> b!6617379 m!7390004))

(assert (=> b!6617379 m!7389514))

(declare-fun m!7390006 () Bool)

(assert (=> b!6617379 m!7390006))

(assert (=> b!6616516 d!2074400))

(declare-fun bs!1696887 () Bool)

(declare-fun d!2074402 () Bool)

(assert (= bs!1696887 (and d!2074402 d!2074048)))

(declare-fun lambda!369715 () Int)

(assert (=> bs!1696887 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369715 lambda!369649))))

(declare-fun bs!1696888 () Bool)

(assert (= bs!1696888 (and d!2074402 b!6615850)))

(assert (=> bs!1696888 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369715 lambda!369579))))

(declare-fun bs!1696890 () Bool)

(assert (= bs!1696890 (and d!2074402 d!2074042)))

(assert (=> bs!1696890 (= (= (head!13422 (t!379424 s!2326)) (h!72092 s!2326)) (= lambda!369715 lambda!369648))))

(declare-fun bs!1696892 () Bool)

(assert (= bs!1696892 (and d!2074402 d!2074380)))

(assert (=> bs!1696892 (= lambda!369715 lambda!369708)))

(declare-fun bs!1696893 () Bool)

(assert (= bs!1696893 (and d!2074402 d!2074312)))

(assert (=> bs!1696893 (= (= (head!13422 (t!379424 s!2326)) (head!13422 s!2326)) (= lambda!369715 lambda!369687))))

(declare-fun bs!1696895 () Bool)

(assert (= bs!1696895 (and d!2074402 d!2074258)))

(assert (=> bs!1696895 (= lambda!369715 lambda!369671)))

(declare-fun bs!1696896 () Bool)

(assert (= bs!1696896 (and d!2074402 d!2074142)))

(assert (=> bs!1696896 (= lambda!369715 lambda!369657)))

(assert (=> d!2074402 true))

(assert (=> d!2074402 (= (derivationStepZipper!2455 lt!2417476 (head!13422 (t!379424 s!2326))) (flatMap!1994 lt!2417476 lambda!369715))))

(declare-fun bs!1696898 () Bool)

(assert (= bs!1696898 d!2074402))

(declare-fun m!7390008 () Bool)

(assert (=> bs!1696898 m!7390008))

(assert (=> b!6616516 d!2074402))

(assert (=> b!6616516 d!2074146))

(assert (=> b!6616516 d!2074148))

(assert (=> b!6616583 d!2074166))

(assert (=> b!6616608 d!2074166))

(declare-fun d!2074404 () Bool)

(declare-fun res!2713436 () Bool)

(declare-fun e!4003308 () Bool)

(assert (=> d!2074404 (=> res!2713436 e!4003308)))

(assert (=> d!2074404 (= res!2713436 ((_ is Nil!65642) (exprs!6373 lt!2417478)))))

(assert (=> d!2074404 (= (forall!15685 (exprs!6373 lt!2417478) lambda!369638) e!4003308)))

(declare-fun b!6617380 () Bool)

(declare-fun e!4003309 () Bool)

(assert (=> b!6617380 (= e!4003308 e!4003309)))

(declare-fun res!2713437 () Bool)

(assert (=> b!6617380 (=> (not res!2713437) (not e!4003309))))

(assert (=> b!6617380 (= res!2713437 (dynLambda!26143 lambda!369638 (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun b!6617381 () Bool)

(assert (=> b!6617381 (= e!4003309 (forall!15685 (t!379422 (exprs!6373 lt!2417478)) lambda!369638))))

(assert (= (and d!2074404 (not res!2713436)) b!6617380))

(assert (= (and b!6617380 res!2713437) b!6617381))

(declare-fun b_lambda!250261 () Bool)

(assert (=> (not b_lambda!250261) (not b!6617380)))

(declare-fun m!7390010 () Bool)

(assert (=> b!6617380 m!7390010))

(declare-fun m!7390012 () Bool)

(assert (=> b!6617381 m!7390012))

(assert (=> d!2074020 d!2074404))

(assert (=> d!2074046 d!2074044))

(declare-fun d!2074406 () Bool)

(assert (=> d!2074406 (= (flatMap!1994 lt!2417472 lambda!369579) (dynLambda!26142 lambda!369579 lt!2417478))))

(assert (=> d!2074406 true))

(declare-fun _$13!3894 () Unit!159311)

(assert (=> d!2074406 (= (choose!49446 lt!2417472 lt!2417478 lambda!369579) _$13!3894)))

(declare-fun b_lambda!250263 () Bool)

(assert (=> (not b_lambda!250263) (not d!2074406)))

(declare-fun bs!1696902 () Bool)

(assert (= bs!1696902 d!2074406))

(assert (=> bs!1696902 m!7388818))

(assert (=> bs!1696902 m!7389286))

(assert (=> d!2074046 d!2074406))

(declare-fun d!2074408 () Bool)

(declare-fun e!4003310 () Bool)

(assert (=> d!2074408 e!4003310))

(declare-fun res!2713439 () Bool)

(assert (=> d!2074408 (=> (not res!2713439) (not e!4003310))))

(declare-fun lt!2417630 () List!65768)

(assert (=> d!2074408 (= res!2713439 (= (content!12668 lt!2417630) ((_ map or) (content!12668 (_1!36771 (get!22814 lt!2417498))) (content!12668 (_2!36771 (get!22814 lt!2417498))))))))

(declare-fun e!4003311 () List!65768)

(assert (=> d!2074408 (= lt!2417630 e!4003311)))

(declare-fun c!1219932 () Bool)

(assert (=> d!2074408 (= c!1219932 ((_ is Nil!65644) (_1!36771 (get!22814 lt!2417498))))))

(assert (=> d!2074408 (= (++!14638 (_1!36771 (get!22814 lt!2417498)) (_2!36771 (get!22814 lt!2417498))) lt!2417630)))

(declare-fun b!6617385 () Bool)

(assert (=> b!6617385 (= e!4003310 (or (not (= (_2!36771 (get!22814 lt!2417498)) Nil!65644)) (= lt!2417630 (_1!36771 (get!22814 lt!2417498)))))))

(declare-fun b!6617382 () Bool)

(assert (=> b!6617382 (= e!4003311 (_2!36771 (get!22814 lt!2417498)))))

(declare-fun b!6617383 () Bool)

(assert (=> b!6617383 (= e!4003311 (Cons!65644 (h!72092 (_1!36771 (get!22814 lt!2417498))) (++!14638 (t!379424 (_1!36771 (get!22814 lt!2417498))) (_2!36771 (get!22814 lt!2417498)))))))

(declare-fun b!6617384 () Bool)

(declare-fun res!2713438 () Bool)

(assert (=> b!6617384 (=> (not res!2713438) (not e!4003310))))

(assert (=> b!6617384 (= res!2713438 (= (size!40550 lt!2417630) (+ (size!40550 (_1!36771 (get!22814 lt!2417498))) (size!40550 (_2!36771 (get!22814 lt!2417498))))))))

(assert (= (and d!2074408 c!1219932) b!6617382))

(assert (= (and d!2074408 (not c!1219932)) b!6617383))

(assert (= (and d!2074408 res!2713439) b!6617384))

(assert (= (and b!6617384 res!2713438) b!6617385))

(declare-fun m!7390020 () Bool)

(assert (=> d!2074408 m!7390020))

(declare-fun m!7390022 () Bool)

(assert (=> d!2074408 m!7390022))

(declare-fun m!7390024 () Bool)

(assert (=> d!2074408 m!7390024))

(declare-fun m!7390026 () Bool)

(assert (=> b!6617383 m!7390026))

(declare-fun m!7390028 () Bool)

(assert (=> b!6617384 m!7390028))

(declare-fun m!7390030 () Bool)

(assert (=> b!6617384 m!7390030))

(declare-fun m!7390032 () Bool)

(assert (=> b!6617384 m!7390032))

(assert (=> b!6615916 d!2074408))

(assert (=> b!6615916 d!2074130))

(declare-fun bs!1696904 () Bool)

(declare-fun b!6617408 () Bool)

(assert (= bs!1696904 (and b!6617408 b!6617332)))

(declare-fun lambda!369716 () Int)

(assert (=> bs!1696904 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regOne!33491 (regOne!33490 r!7292)))) (= (regTwo!33491 r!7292) (regOne!33491 (regOne!33490 r!7292)))) (= lambda!369716 lambda!369709))))

(declare-fun bs!1696905 () Bool)

(assert (= bs!1696905 (and b!6617408 b!6616891)))

(assert (=> bs!1696905 (not (= lambda!369716 lambda!369661))))

(declare-fun bs!1696906 () Bool)

(assert (= bs!1696906 (and b!6617408 b!6617096)))

(assert (=> bs!1696906 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regOne!33491 (regTwo!33490 r!7292)))) (= (regTwo!33491 r!7292) (regOne!33491 (regTwo!33490 r!7292)))) (= lambda!369716 lambda!369677))))

(declare-fun bs!1696907 () Bool)

(assert (= bs!1696907 (and b!6617408 b!6616281)))

(assert (=> bs!1696907 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 r!7292)) (= (regTwo!33491 r!7292) r!7292)) (= lambda!369716 lambda!369624))))

(declare-fun bs!1696908 () Bool)

(assert (= bs!1696908 (and b!6617408 b!6617324)))

(assert (=> bs!1696908 (not (= lambda!369716 lambda!369711))))

(declare-fun bs!1696909 () Bool)

(assert (= bs!1696909 (and b!6617408 b!6616571)))

(assert (=> bs!1696909 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regOne!33490 r!7292))) (= (regTwo!33491 r!7292) (regOne!33490 r!7292))) (= lambda!369716 lambda!369650))))

(declare-fun bs!1696910 () Bool)

(assert (= bs!1696910 (and b!6617408 b!6616699)))

(assert (=> bs!1696910 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33491 r!7292) (regTwo!33491 (regTwo!33490 r!7292)))) (= lambda!369716 lambda!369655))))

(declare-fun bs!1696911 () Bool)

(assert (= bs!1696911 (and b!6617408 b!6616899)))

(assert (=> bs!1696911 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33491 r!7292) (regTwo!33491 (regOne!33490 r!7292)))) (= lambda!369716 lambda!369660))))

(declare-fun bs!1696912 () Bool)

(assert (= bs!1696912 (and b!6617408 b!6616691)))

(assert (=> bs!1696912 (not (= lambda!369716 lambda!369656))))

(declare-fun bs!1696913 () Bool)

(assert (= bs!1696913 (and b!6617408 b!6615856)))

(assert (=> bs!1696913 (not (= lambda!369716 lambda!369577))))

(declare-fun bs!1696914 () Bool)

(assert (= bs!1696914 (and b!6617408 b!6616596)))

(assert (=> bs!1696914 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regTwo!33490 r!7292))) (= (regTwo!33491 r!7292) (regTwo!33490 r!7292))) (= lambda!369716 lambda!369652))))

(declare-fun bs!1696915 () Bool)

(assert (= bs!1696915 (and b!6617408 b!6617003)))

(assert (=> bs!1696915 (not (= lambda!369716 lambda!369667))))

(declare-fun bs!1696916 () Bool)

(assert (= bs!1696916 (and b!6617408 d!2074360)))

(assert (=> bs!1696916 (not (= lambda!369716 lambda!369705))))

(declare-fun bs!1696917 () Bool)

(assert (= bs!1696917 (and b!6617408 b!6616563)))

(assert (=> bs!1696917 (not (= lambda!369716 lambda!369651))))

(declare-fun bs!1696918 () Bool)

(assert (= bs!1696918 (and b!6617408 d!2074334)))

(assert (=> bs!1696918 (not (= lambda!369716 lambda!369695))))

(declare-fun bs!1696919 () Bool)

(assert (= bs!1696919 (and b!6617408 b!6617011)))

(assert (=> bs!1696919 (= (and (= (reg!16818 (regTwo!33491 r!7292)) (reg!16818 (regOne!33491 r!7292))) (= (regTwo!33491 r!7292) (regOne!33491 r!7292))) (= lambda!369716 lambda!369666))))

(assert (=> bs!1696916 (not (= lambda!369716 lambda!369707))))

(declare-fun bs!1696920 () Bool)

(assert (= bs!1696920 (and b!6617408 d!2073894)))

(assert (=> bs!1696920 (not (= lambda!369716 lambda!369586))))

(declare-fun bs!1696921 () Bool)

(assert (= bs!1696921 (and b!6617408 b!6617088)))

(assert (=> bs!1696921 (not (= lambda!369716 lambda!369679))))

(assert (=> bs!1696913 (not (= lambda!369716 lambda!369578))))

(declare-fun bs!1696922 () Bool)

(assert (= bs!1696922 (and b!6617408 d!2073900)))

(assert (=> bs!1696922 (not (= lambda!369716 lambda!369595))))

(declare-fun bs!1696923 () Bool)

(assert (= bs!1696923 (and b!6617408 b!6616588)))

(assert (=> bs!1696923 (not (= lambda!369716 lambda!369653))))

(assert (=> bs!1696922 (not (= lambda!369716 lambda!369598))))

(declare-fun bs!1696924 () Bool)

(assert (= bs!1696924 (and b!6617408 b!6616273)))

(assert (=> bs!1696924 (not (= lambda!369716 lambda!369625))))

(assert (=> b!6617408 true))

(assert (=> b!6617408 true))

(declare-fun bs!1696927 () Bool)

(declare-fun b!6617400 () Bool)

(assert (= bs!1696927 (and b!6617400 b!6617332)))

(declare-fun lambda!369718 () Int)

(assert (=> bs!1696927 (not (= lambda!369718 lambda!369709))))

(declare-fun bs!1696930 () Bool)

(assert (= bs!1696930 (and b!6617400 b!6616891)))

(assert (=> bs!1696930 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regTwo!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regTwo!33491 (regOne!33490 r!7292))))) (= lambda!369718 lambda!369661))))

(declare-fun bs!1696931 () Bool)

(assert (= bs!1696931 (and b!6617400 b!6617096)))

(assert (=> bs!1696931 (not (= lambda!369718 lambda!369677))))

(declare-fun bs!1696933 () Bool)

(assert (= bs!1696933 (and b!6617400 b!6616281)))

(assert (=> bs!1696933 (not (= lambda!369718 lambda!369624))))

(declare-fun bs!1696934 () Bool)

(assert (= bs!1696934 (and b!6617400 b!6616571)))

(assert (=> bs!1696934 (not (= lambda!369718 lambda!369650))))

(declare-fun bs!1696935 () Bool)

(assert (= bs!1696935 (and b!6617400 b!6616699)))

(assert (=> bs!1696935 (not (= lambda!369718 lambda!369655))))

(declare-fun bs!1696937 () Bool)

(assert (= bs!1696937 (and b!6617400 b!6616899)))

(assert (=> bs!1696937 (not (= lambda!369718 lambda!369660))))

(declare-fun bs!1696939 () Bool)

(assert (= bs!1696939 (and b!6617400 b!6616691)))

(assert (=> bs!1696939 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regTwo!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regTwo!33491 (regTwo!33490 r!7292))))) (= lambda!369718 lambda!369656))))

(declare-fun bs!1696941 () Bool)

(assert (= bs!1696941 (and b!6617400 b!6615856)))

(assert (=> bs!1696941 (not (= lambda!369718 lambda!369577))))

(declare-fun bs!1696942 () Bool)

(assert (= bs!1696942 (and b!6617400 b!6616596)))

(assert (=> bs!1696942 (not (= lambda!369718 lambda!369652))))

(declare-fun bs!1696943 () Bool)

(assert (= bs!1696943 (and b!6617400 b!6617003)))

(assert (=> bs!1696943 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regOne!33491 r!7292))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regOne!33491 r!7292)))) (= lambda!369718 lambda!369667))))

(declare-fun bs!1696944 () Bool)

(assert (= bs!1696944 (and b!6617400 d!2074360)))

(assert (=> bs!1696944 (not (= lambda!369718 lambda!369705))))

(declare-fun bs!1696945 () Bool)

(assert (= bs!1696945 (and b!6617400 b!6616563)))

(assert (=> bs!1696945 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regOne!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regOne!33490 r!7292)))) (= lambda!369718 lambda!369651))))

(declare-fun bs!1696946 () Bool)

(assert (= bs!1696946 (and b!6617400 b!6617408)))

(assert (=> bs!1696946 (not (= lambda!369718 lambda!369716))))

(declare-fun bs!1696947 () Bool)

(assert (= bs!1696947 (and b!6617400 b!6617324)))

(assert (=> bs!1696947 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regOne!33491 (regOne!33490 r!7292)))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regOne!33491 (regOne!33490 r!7292))))) (= lambda!369718 lambda!369711))))

(declare-fun bs!1696948 () Bool)

(assert (= bs!1696948 (and b!6617400 d!2074334)))

(assert (=> bs!1696948 (not (= lambda!369718 lambda!369695))))

(declare-fun bs!1696949 () Bool)

(assert (= bs!1696949 (and b!6617400 b!6617011)))

(assert (=> bs!1696949 (not (= lambda!369718 lambda!369666))))

(assert (=> bs!1696944 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369718 lambda!369707))))

(declare-fun bs!1696950 () Bool)

(assert (= bs!1696950 (and b!6617400 d!2073894)))

(assert (=> bs!1696950 (not (= lambda!369718 lambda!369586))))

(declare-fun bs!1696951 () Bool)

(assert (= bs!1696951 (and b!6617400 b!6617088)))

(assert (=> bs!1696951 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regOne!33491 (regTwo!33490 r!7292)))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regOne!33491 (regTwo!33490 r!7292))))) (= lambda!369718 lambda!369679))))

(assert (=> bs!1696941 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369718 lambda!369578))))

(declare-fun bs!1696952 () Bool)

(assert (= bs!1696952 (and b!6617400 d!2073900)))

(assert (=> bs!1696952 (not (= lambda!369718 lambda!369595))))

(declare-fun bs!1696953 () Bool)

(assert (= bs!1696953 (and b!6617400 b!6616588)))

(assert (=> bs!1696953 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 (regTwo!33490 r!7292))) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 (regTwo!33490 r!7292)))) (= lambda!369718 lambda!369653))))

(assert (=> bs!1696952 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369718 lambda!369598))))

(declare-fun bs!1696954 () Bool)

(assert (= bs!1696954 (and b!6617400 b!6616273)))

(assert (=> bs!1696954 (= (and (= (regOne!33490 (regTwo!33491 r!7292)) (regOne!33490 r!7292)) (= (regTwo!33490 (regTwo!33491 r!7292)) (regTwo!33490 r!7292))) (= lambda!369718 lambda!369625))))

(assert (=> b!6617400 true))

(assert (=> b!6617400 true))

(declare-fun e!4003325 () Bool)

(declare-fun call!579921 () Bool)

(assert (=> b!6617400 (= e!4003325 call!579921)))

(declare-fun d!2074414 () Bool)

(declare-fun c!1219939 () Bool)

(assert (=> d!2074414 (= c!1219939 ((_ is EmptyExpr!16489) (regTwo!33491 r!7292)))))

(declare-fun e!4003323 () Bool)

(assert (=> d!2074414 (= (matchRSpec!3590 (regTwo!33491 r!7292) s!2326) e!4003323)))

(declare-fun b!6617401 () Bool)

(declare-fun e!4003321 () Bool)

(assert (=> b!6617401 (= e!4003323 e!4003321)))

(declare-fun res!2713450 () Bool)

(assert (=> b!6617401 (= res!2713450 (not ((_ is EmptyLang!16489) (regTwo!33491 r!7292))))))

(assert (=> b!6617401 (=> (not res!2713450) (not e!4003321))))

(declare-fun b!6617402 () Bool)

(declare-fun c!1219938 () Bool)

(assert (=> b!6617402 (= c!1219938 ((_ is Union!16489) (regTwo!33491 r!7292)))))

(declare-fun e!4003322 () Bool)

(declare-fun e!4003324 () Bool)

(assert (=> b!6617402 (= e!4003322 e!4003324)))

(declare-fun b!6617403 () Bool)

(declare-fun call!579922 () Bool)

(assert (=> b!6617403 (= e!4003323 call!579922)))

(declare-fun b!6617404 () Bool)

(declare-fun e!4003319 () Bool)

(assert (=> b!6617404 (= e!4003324 e!4003319)))

(declare-fun res!2713448 () Bool)

(assert (=> b!6617404 (= res!2713448 (matchRSpec!3590 (regOne!33491 (regTwo!33491 r!7292)) s!2326))))

(assert (=> b!6617404 (=> res!2713448 e!4003319)))

(declare-fun b!6617405 () Bool)

(declare-fun c!1219936 () Bool)

(assert (=> b!6617405 (= c!1219936 ((_ is ElementMatch!16489) (regTwo!33491 r!7292)))))

(assert (=> b!6617405 (= e!4003321 e!4003322)))

(declare-fun b!6617406 () Bool)

(declare-fun res!2713449 () Bool)

(declare-fun e!4003320 () Bool)

(assert (=> b!6617406 (=> res!2713449 e!4003320)))

(assert (=> b!6617406 (= res!2713449 call!579922)))

(assert (=> b!6617406 (= e!4003325 e!4003320)))

(declare-fun bm!579916 () Bool)

(assert (=> bm!579916 (= call!579922 (isEmpty!37931 s!2326))))

(declare-fun b!6617407 () Bool)

(assert (=> b!6617407 (= e!4003322 (= s!2326 (Cons!65644 (c!1219498 (regTwo!33491 r!7292)) Nil!65644)))))

(assert (=> b!6617408 (= e!4003320 call!579921)))

(declare-fun b!6617409 () Bool)

(assert (=> b!6617409 (= e!4003319 (matchRSpec!3590 (regTwo!33491 (regTwo!33491 r!7292)) s!2326))))

(declare-fun c!1219937 () Bool)

(declare-fun bm!579917 () Bool)

(assert (=> bm!579917 (= call!579921 (Exists!3559 (ite c!1219937 lambda!369716 lambda!369718)))))

(declare-fun b!6617410 () Bool)

(assert (=> b!6617410 (= e!4003324 e!4003325)))

(assert (=> b!6617410 (= c!1219937 ((_ is Star!16489) (regTwo!33491 r!7292)))))

(assert (= (and d!2074414 c!1219939) b!6617403))

(assert (= (and d!2074414 (not c!1219939)) b!6617401))

(assert (= (and b!6617401 res!2713450) b!6617405))

(assert (= (and b!6617405 c!1219936) b!6617407))

(assert (= (and b!6617405 (not c!1219936)) b!6617402))

(assert (= (and b!6617402 c!1219938) b!6617404))

(assert (= (and b!6617402 (not c!1219938)) b!6617410))

(assert (= (and b!6617404 (not res!2713448)) b!6617409))

(assert (= (and b!6617410 c!1219937) b!6617406))

(assert (= (and b!6617410 (not c!1219937)) b!6617400))

(assert (= (and b!6617406 (not res!2713449)) b!6617408))

(assert (= (or b!6617408 b!6617400) bm!579917))

(assert (= (or b!6617403 b!6617406) bm!579916))

(declare-fun m!7390070 () Bool)

(assert (=> b!6617404 m!7390070))

(assert (=> bm!579916 m!7389100))

(declare-fun m!7390072 () Bool)

(assert (=> b!6617409 m!7390072))

(declare-fun m!7390074 () Bool)

(assert (=> bm!579917 m!7390074))

(assert (=> b!6616282 d!2074414))

(assert (=> d!2074030 d!2074092))

(assert (=> d!2073976 d!2074096))

(assert (=> d!2073976 d!2074018))

(assert (=> bm!579724 d!2074096))

(declare-fun bs!1696955 () Bool)

(declare-fun d!2074434 () Bool)

(assert (= bs!1696955 (and d!2074434 d!2074196)))

(declare-fun lambda!369720 () Int)

(assert (=> bs!1696955 (= lambda!369720 lambda!369664)))

(declare-fun bs!1696956 () Bool)

(assert (= bs!1696956 (and d!2074434 d!2074220)))

(assert (=> bs!1696956 (= lambda!369720 lambda!369665)))

(declare-fun bs!1696957 () Bool)

(assert (= bs!1696957 (and d!2074434 d!2074252)))

(assert (=> bs!1696957 (= lambda!369720 lambda!369670)))

(declare-fun bs!1696958 () Bool)

(assert (= bs!1696958 (and d!2074434 d!2074264)))

(assert (=> bs!1696958 (= lambda!369720 lambda!369674)))

(assert (=> d!2074434 (= (nullableZipper!2230 ((_ map or) lt!2417476 lt!2417481)) (exists!2656 ((_ map or) lt!2417476 lt!2417481) lambda!369720))))

(declare-fun bs!1696959 () Bool)

(assert (= bs!1696959 d!2074434))

(declare-fun m!7390076 () Bool)

(assert (=> bs!1696959 m!7390076))

(assert (=> b!6616517 d!2074434))

(assert (=> d!2073986 d!2073976))

(assert (=> d!2073986 d!2073946))

(declare-fun d!2074436 () Bool)

(assert (=> d!2074436 (= (matchR!8672 r!7292 s!2326) (matchRSpec!3590 r!7292 s!2326))))

(assert (=> d!2074436 true))

(declare-fun _$88!5312 () Unit!159311)

(assert (=> d!2074436 (= (choose!49445 r!7292 s!2326) _$88!5312)))

(declare-fun bs!1696960 () Bool)

(assert (= bs!1696960 d!2074436))

(assert (=> bs!1696960 m!7388764))

(assert (=> bs!1696960 m!7388762))

(assert (=> d!2073986 d!2074436))

(assert (=> d!2073986 d!2074018))

(assert (=> b!6616612 d!2074166))

(declare-fun d!2074438 () Bool)

(declare-fun res!2713465 () Bool)

(declare-fun e!4003346 () Bool)

(assert (=> d!2074438 (=> res!2713465 e!4003346)))

(assert (=> d!2074438 (= res!2713465 ((_ is ElementMatch!16489) (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))

(assert (=> d!2074438 (= (validRegex!8225 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))) e!4003346)))

(declare-fun b!6617428 () Bool)

(declare-fun e!4003344 () Bool)

(declare-fun e!4003347 () Bool)

(assert (=> b!6617428 (= e!4003344 e!4003347)))

(declare-fun c!1219942 () Bool)

(assert (=> b!6617428 (= c!1219942 ((_ is Union!16489) (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))

(declare-fun b!6617429 () Bool)

(declare-fun e!4003343 () Bool)

(declare-fun call!579925 () Bool)

(assert (=> b!6617429 (= e!4003343 call!579925)))

(declare-fun c!1219941 () Bool)

(declare-fun call!579924 () Bool)

(declare-fun bm!579918 () Bool)

(assert (=> bm!579918 (= call!579924 (validRegex!8225 (ite c!1219941 (reg!16818 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))) (ite c!1219942 (regTwo!33491 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))) (regTwo!33490 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292))))))))))

(declare-fun b!6617430 () Bool)

(declare-fun e!4003345 () Bool)

(assert (=> b!6617430 (= e!4003345 call!579925)))

(declare-fun bm!579919 () Bool)

(declare-fun call!579923 () Bool)

(assert (=> bm!579919 (= call!579923 (validRegex!8225 (ite c!1219942 (regOne!33491 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))) (regOne!33490 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))))

(declare-fun b!6617431 () Bool)

(declare-fun res!2713468 () Bool)

(declare-fun e!4003348 () Bool)

(assert (=> b!6617431 (=> res!2713468 e!4003348)))

(assert (=> b!6617431 (= res!2713468 (not ((_ is Concat!25334) (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292))))))))

(assert (=> b!6617431 (= e!4003347 e!4003348)))

(declare-fun b!6617432 () Bool)

(assert (=> b!6617432 (= e!4003348 e!4003345)))

(declare-fun res!2713466 () Bool)

(assert (=> b!6617432 (=> (not res!2713466) (not e!4003345))))

(assert (=> b!6617432 (= res!2713466 call!579923)))

(declare-fun b!6617433 () Bool)

(assert (=> b!6617433 (= e!4003346 e!4003344)))

(assert (=> b!6617433 (= c!1219941 ((_ is Star!16489) (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))

(declare-fun b!6617434 () Bool)

(declare-fun e!4003342 () Bool)

(assert (=> b!6617434 (= e!4003344 e!4003342)))

(declare-fun res!2713464 () Bool)

(assert (=> b!6617434 (= res!2713464 (not (nullable!6482 (reg!16818 (ite c!1219675 (reg!16818 r!7292) (ite c!1219676 (regTwo!33491 r!7292) (regTwo!33490 r!7292)))))))))

(assert (=> b!6617434 (=> (not res!2713464) (not e!4003342))))

(declare-fun b!6617435 () Bool)

(assert (=> b!6617435 (= e!4003342 call!579924)))

(declare-fun b!6617436 () Bool)

(declare-fun res!2713467 () Bool)

(assert (=> b!6617436 (=> (not res!2713467) (not e!4003343))))

(assert (=> b!6617436 (= res!2713467 call!579923)))

(assert (=> b!6617436 (= e!4003347 e!4003343)))

(declare-fun bm!579920 () Bool)

(assert (=> bm!579920 (= call!579925 call!579924)))

(assert (= (and d!2074438 (not res!2713465)) b!6617433))

(assert (= (and b!6617433 c!1219941) b!6617434))

(assert (= (and b!6617433 (not c!1219941)) b!6617428))

(assert (= (and b!6617434 res!2713464) b!6617435))

(assert (= (and b!6617428 c!1219942) b!6617436))

(assert (= (and b!6617428 (not c!1219942)) b!6617431))

(assert (= (and b!6617436 res!2713467) b!6617429))

(assert (= (and b!6617431 (not res!2713468)) b!6617432))

(assert (= (and b!6617432 res!2713466) b!6617430))

(assert (= (or b!6617429 b!6617430) bm!579920))

(assert (= (or b!6617436 b!6617432) bm!579919))

(assert (= (or b!6617435 bm!579920) bm!579918))

(declare-fun m!7390078 () Bool)

(assert (=> bm!579918 m!7390078))

(declare-fun m!7390080 () Bool)

(assert (=> bm!579919 m!7390080))

(declare-fun m!7390082 () Bool)

(assert (=> b!6617434 m!7390082))

(assert (=> bm!579754 d!2074438))

(declare-fun e!4003353 () (InoxSet Context!11746))

(declare-fun call!579926 () (InoxSet Context!11746))

(declare-fun b!6617440 () Bool)

(assert (=> b!6617440 (= e!4003353 ((_ map or) call!579926 (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478)))))) (h!72092 s!2326))))))

(declare-fun d!2074440 () Bool)

(declare-fun c!1219944 () Bool)

(declare-fun e!4003352 () Bool)

(assert (=> d!2074440 (= c!1219944 e!4003352)))

(declare-fun res!2713471 () Bool)

(assert (=> d!2074440 (=> (not res!2713471) (not e!4003352))))

(assert (=> d!2074440 (= res!2713471 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478))))))))

(assert (=> d!2074440 (= (derivationStepZipperUp!1663 (Context!11747 (t!379422 (exprs!6373 lt!2417478))) (h!72092 s!2326)) e!4003353)))

(declare-fun b!6617441 () Bool)

(declare-fun e!4003354 () (InoxSet Context!11746))

(assert (=> b!6617441 (= e!4003354 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6617442 () Bool)

(assert (=> b!6617442 (= e!4003354 call!579926)))

(declare-fun b!6617443 () Bool)

(assert (=> b!6617443 (= e!4003353 e!4003354)))

(declare-fun c!1219943 () Bool)

(assert (=> b!6617443 (= c!1219943 ((_ is Cons!65642) (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478))))))))

(declare-fun b!6617444 () Bool)

(assert (=> b!6617444 (= e!4003352 (nullable!6482 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478)))))))))

(declare-fun bm!579921 () Bool)

(assert (=> bm!579921 (= call!579926 (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478))))) (Context!11747 (t!379422 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 lt!2417478)))))) (h!72092 s!2326)))))

(assert (= (and d!2074440 res!2713471) b!6617444))

(assert (= (and d!2074440 c!1219944) b!6617440))

(assert (= (and d!2074440 (not c!1219944)) b!6617443))

(assert (= (and b!6617443 c!1219943) b!6617442))

(assert (= (and b!6617443 (not c!1219943)) b!6617441))

(assert (= (or b!6617440 b!6617442) bm!579921))

(declare-fun m!7390092 () Bool)

(assert (=> b!6617440 m!7390092))

(declare-fun m!7390094 () Bool)

(assert (=> b!6617444 m!7390094))

(declare-fun m!7390096 () Bool)

(assert (=> bm!579921 m!7390096))

(assert (=> b!6616382 d!2074440))

(declare-fun d!2074448 () Bool)

(assert (=> d!2074448 (= (isEmptyExpr!1862 lt!2417538) ((_ is EmptyExpr!16489) lt!2417538))))

(assert (=> b!6616158 d!2074448))

(assert (=> d!2074054 d!2074056))

(assert (=> d!2074054 d!2074052))

(declare-fun d!2074450 () Bool)

(assert (=> d!2074450 (= (matchR!8672 (regOne!33490 r!7292) s!2326) (matchRSpec!3590 (regOne!33490 r!7292) s!2326))))

(assert (=> d!2074450 true))

(declare-fun _$88!5313 () Unit!159311)

(assert (=> d!2074450 (= (choose!49445 (regOne!33490 r!7292) s!2326) _$88!5313)))

(declare-fun bs!1696970 () Bool)

(assert (= bs!1696970 d!2074450))

(assert (=> bs!1696970 m!7388780))

(assert (=> bs!1696970 m!7388782))

(assert (=> d!2074054 d!2074450))

(assert (=> d!2074054 d!2074206))

(assert (=> d!2073880 d!2074134))

(declare-fun b!6617447 () Bool)

(declare-fun e!4003361 () Bool)

(declare-fun e!4003360 () Bool)

(assert (=> b!6617447 (= e!4003361 e!4003360)))

(declare-fun res!2713475 () Bool)

(assert (=> b!6617447 (=> res!2713475 e!4003360)))

(declare-fun call!579927 () Bool)

(assert (=> b!6617447 (= res!2713475 call!579927)))

(declare-fun b!6617448 () Bool)

(declare-fun res!2713474 () Bool)

(declare-fun e!4003358 () Bool)

(assert (=> b!6617448 (=> (not res!2713474) (not e!4003358))))

(assert (=> b!6617448 (= res!2713474 (not call!579927))))

(declare-fun b!6617449 () Bool)

(declare-fun e!4003359 () Bool)

(declare-fun lt!2417633 () Bool)

(assert (=> b!6617449 (= e!4003359 (= lt!2417633 call!579927))))

(declare-fun b!6617450 () Bool)

(declare-fun e!4003356 () Bool)

(assert (=> b!6617450 (= e!4003356 (not lt!2417633))))

(declare-fun b!6617451 () Bool)

(declare-fun res!2713479 () Bool)

(assert (=> b!6617451 (=> (not res!2713479) (not e!4003358))))

(assert (=> b!6617451 (= res!2713479 (isEmpty!37931 (tail!12507 Nil!65644)))))

(declare-fun b!6617452 () Bool)

(assert (=> b!6617452 (= e!4003359 e!4003356)))

(declare-fun c!1219948 () Bool)

(assert (=> b!6617452 (= c!1219948 ((_ is EmptyLang!16489) (regOne!33490 r!7292)))))

(declare-fun b!6617453 () Bool)

(declare-fun res!2713476 () Bool)

(declare-fun e!4003362 () Bool)

(assert (=> b!6617453 (=> res!2713476 e!4003362)))

(assert (=> b!6617453 (= res!2713476 e!4003358)))

(declare-fun res!2713472 () Bool)

(assert (=> b!6617453 (=> (not res!2713472) (not e!4003358))))

(assert (=> b!6617453 (= res!2713472 lt!2417633)))

(declare-fun bm!579922 () Bool)

(assert (=> bm!579922 (= call!579927 (isEmpty!37931 Nil!65644))))

(declare-fun b!6617454 () Bool)

(declare-fun e!4003357 () Bool)

(assert (=> b!6617454 (= e!4003357 (matchR!8672 (derivativeStep!5169 (regOne!33490 r!7292) (head!13422 Nil!65644)) (tail!12507 Nil!65644)))))

(declare-fun d!2074452 () Bool)

(assert (=> d!2074452 e!4003359))

(declare-fun c!1219946 () Bool)

(assert (=> d!2074452 (= c!1219946 ((_ is EmptyExpr!16489) (regOne!33490 r!7292)))))

(assert (=> d!2074452 (= lt!2417633 e!4003357)))

(declare-fun c!1219947 () Bool)

(assert (=> d!2074452 (= c!1219947 (isEmpty!37931 Nil!65644))))

(assert (=> d!2074452 (validRegex!8225 (regOne!33490 r!7292))))

(assert (=> d!2074452 (= (matchR!8672 (regOne!33490 r!7292) Nil!65644) lt!2417633)))

(declare-fun b!6617455 () Bool)

(declare-fun res!2713473 () Bool)

(assert (=> b!6617455 (=> res!2713473 e!4003360)))

(assert (=> b!6617455 (= res!2713473 (not (isEmpty!37931 (tail!12507 Nil!65644))))))

(declare-fun b!6617456 () Bool)

(assert (=> b!6617456 (= e!4003360 (not (= (head!13422 Nil!65644) (c!1219498 (regOne!33490 r!7292)))))))

(declare-fun b!6617457 () Bool)

(assert (=> b!6617457 (= e!4003362 e!4003361)))

(declare-fun res!2713477 () Bool)

(assert (=> b!6617457 (=> (not res!2713477) (not e!4003361))))

(assert (=> b!6617457 (= res!2713477 (not lt!2417633))))

(declare-fun b!6617458 () Bool)

(assert (=> b!6617458 (= e!4003357 (nullable!6482 (regOne!33490 r!7292)))))

(declare-fun b!6617459 () Bool)

(declare-fun res!2713478 () Bool)

(assert (=> b!6617459 (=> res!2713478 e!4003362)))

(assert (=> b!6617459 (= res!2713478 (not ((_ is ElementMatch!16489) (regOne!33490 r!7292))))))

(assert (=> b!6617459 (= e!4003356 e!4003362)))

(declare-fun b!6617460 () Bool)

(assert (=> b!6617460 (= e!4003358 (= (head!13422 Nil!65644) (c!1219498 (regOne!33490 r!7292))))))

(assert (= (and d!2074452 c!1219947) b!6617458))

(assert (= (and d!2074452 (not c!1219947)) b!6617454))

(assert (= (and d!2074452 c!1219946) b!6617449))

(assert (= (and d!2074452 (not c!1219946)) b!6617452))

(assert (= (and b!6617452 c!1219948) b!6617450))

(assert (= (and b!6617452 (not c!1219948)) b!6617459))

(assert (= (and b!6617459 (not res!2713478)) b!6617453))

(assert (= (and b!6617453 res!2713472) b!6617448))

(assert (= (and b!6617448 res!2713474) b!6617451))

(assert (= (and b!6617451 res!2713479) b!6617460))

(assert (= (and b!6617453 (not res!2713476)) b!6617457))

(assert (= (and b!6617457 res!2713477) b!6617447))

(assert (= (and b!6617447 (not res!2713475)) b!6617455))

(assert (= (and b!6617455 (not res!2713473)) b!6617456))

(assert (= (or b!6617449 b!6617447 b!6617448) bm!579922))

(declare-fun m!7390108 () Bool)

(assert (=> b!6617460 m!7390108))

(declare-fun m!7390110 () Bool)

(assert (=> bm!579922 m!7390110))

(declare-fun m!7390112 () Bool)

(assert (=> b!6617455 m!7390112))

(assert (=> b!6617455 m!7390112))

(declare-fun m!7390114 () Bool)

(assert (=> b!6617455 m!7390114))

(assert (=> b!6617451 m!7390112))

(assert (=> b!6617451 m!7390112))

(assert (=> b!6617451 m!7390114))

(assert (=> b!6617458 m!7389302))

(assert (=> b!6617456 m!7390108))

(assert (=> b!6617454 m!7390108))

(assert (=> b!6617454 m!7390108))

(declare-fun m!7390116 () Bool)

(assert (=> b!6617454 m!7390116))

(assert (=> b!6617454 m!7390112))

(assert (=> b!6617454 m!7390116))

(assert (=> b!6617454 m!7390112))

(declare-fun m!7390118 () Bool)

(assert (=> b!6617454 m!7390118))

(assert (=> d!2074452 m!7390110))

(assert (=> d!2074452 m!7388876))

(assert (=> d!2073880 d!2074452))

(assert (=> d!2073880 d!2074206))

(declare-fun d!2074460 () Bool)

(assert (=> d!2074460 (= (nullable!6482 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))) (nullableFct!2403 (h!72090 (exprs!6373 (Context!11747 (Cons!65642 (h!72090 (exprs!6373 (h!72091 zl!343))) (t!379422 (exprs!6373 (h!72091 zl!343)))))))))))

(declare-fun bs!1696971 () Bool)

(assert (= bs!1696971 d!2074460))

(declare-fun m!7390120 () Bool)

(assert (=> bs!1696971 m!7390120))

(assert (=> b!6616379 d!2074460))

(declare-fun d!2074462 () Bool)

(assert (=> d!2074462 (= (isEmpty!37928 (unfocusZipperList!1910 zl!343)) ((_ is Nil!65642) (unfocusZipperList!1910 zl!343)))))

(assert (=> b!6616542 d!2074462))

(declare-fun b!6617468 () Bool)

(declare-fun c!1219951 () Bool)

(declare-fun e!4003372 () Bool)

(assert (=> b!6617468 (= c!1219951 e!4003372)))

(declare-fun res!2713485 () Bool)

(assert (=> b!6617468 (=> (not res!2713485) (not e!4003372))))

(assert (=> b!6617468 (= res!2713485 ((_ is Concat!25334) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun e!4003370 () (InoxSet Context!11746))

(declare-fun e!4003369 () (InoxSet Context!11746))

(assert (=> b!6617468 (= e!4003370 e!4003369)))

(declare-fun b!6617469 () Bool)

(declare-fun call!579931 () (InoxSet Context!11746))

(declare-fun call!579930 () (InoxSet Context!11746))

(assert (=> b!6617469 (= e!4003370 ((_ map or) call!579931 call!579930))))

(declare-fun bm!579925 () Bool)

(declare-fun call!579935 () (InoxSet Context!11746))

(assert (=> bm!579925 (= call!579935 call!579930)))

(declare-fun bm!579926 () Bool)

(declare-fun call!579933 () (InoxSet Context!11746))

(assert (=> bm!579926 (= call!579933 call!579935)))

(declare-fun bm!579928 () Bool)

(declare-fun c!1219952 () Bool)

(declare-fun call!579934 () List!65766)

(declare-fun c!1219953 () Bool)

(assert (=> bm!579928 (= call!579930 (derivationStepZipperDown!1737 (ite c!1219953 (regTwo!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219951 (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (ite c!1219952 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (reg!16818 (h!72090 (exprs!6373 (h!72091 zl!343))))))) (ite (or c!1219953 c!1219951) (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (Context!11747 call!579934)) (h!72092 s!2326)))))

(declare-fun b!6617470 () Bool)

(declare-fun e!4003371 () (InoxSet Context!11746))

(assert (=> b!6617470 (= e!4003371 (store ((as const (Array Context!11746 Bool)) false) (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) true))))

(declare-fun b!6617471 () Bool)

(declare-fun e!4003374 () (InoxSet Context!11746))

(assert (=> b!6617471 (= e!4003374 ((as const (Array Context!11746 Bool)) false))))

(declare-fun b!6617472 () Bool)

(assert (=> b!6617472 (= e!4003374 call!579933)))

(declare-fun call!579932 () List!65766)

(declare-fun bm!579929 () Bool)

(assert (=> bm!579929 (= call!579932 ($colon$colon!2326 (exprs!6373 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343))))) (ite (or c!1219951 c!1219952) (regTwo!33490 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72090 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6617473 () Bool)

(assert (=> b!6617473 (= e!4003369 ((_ map or) call!579931 call!579935))))

(declare-fun d!2074464 () Bool)

(declare-fun c!1219954 () Bool)

(assert (=> d!2074464 (= c!1219954 (and ((_ is ElementMatch!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))) (= (c!1219498 (h!72090 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326))))))

(assert (=> d!2074464 (= (derivationStepZipperDown!1737 (h!72090 (exprs!6373 (h!72091 zl!343))) (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (h!72092 s!2326)) e!4003371)))

(declare-fun bm!579927 () Bool)

(assert (=> bm!579927 (= call!579931 (derivationStepZipperDown!1737 (ite c!1219953 (regOne!33491 (h!72090 (exprs!6373 (h!72091 zl!343)))) (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))) (ite c!1219953 (Context!11747 (t!379422 (exprs!6373 (h!72091 zl!343)))) (Context!11747 call!579932)) (h!72092 s!2326)))))

(declare-fun b!6617474 () Bool)

(assert (=> b!6617474 (= e!4003372 (nullable!6482 (regOne!33490 (h!72090 (exprs!6373 (h!72091 zl!343))))))))

(declare-fun b!6617475 () Bool)

(declare-fun c!1219950 () Bool)

(assert (=> b!6617475 (= c!1219950 ((_ is Star!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun e!4003373 () (InoxSet Context!11746))

(assert (=> b!6617475 (= e!4003373 e!4003374)))

(declare-fun b!6617476 () Bool)

(assert (=> b!6617476 (= e!4003373 call!579933)))

(declare-fun b!6617477 () Bool)

(assert (=> b!6617477 (= e!4003371 e!4003370)))

(assert (=> b!6617477 (= c!1219953 ((_ is Union!16489) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun bm!579930 () Bool)

(assert (=> bm!579930 (= call!579934 call!579932)))

(declare-fun b!6617478 () Bool)

(assert (=> b!6617478 (= e!4003369 e!4003373)))

(assert (=> b!6617478 (= c!1219952 ((_ is Concat!25334) (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (= (and d!2074464 c!1219954) b!6617470))

(assert (= (and d!2074464 (not c!1219954)) b!6617477))

(assert (= (and b!6617477 c!1219953) b!6617469))

(assert (= (and b!6617477 (not c!1219953)) b!6617468))

(assert (= (and b!6617468 res!2713485) b!6617474))

(assert (= (and b!6617468 c!1219951) b!6617473))

(assert (= (and b!6617468 (not c!1219951)) b!6617478))

(assert (= (and b!6617478 c!1219952) b!6617476))

(assert (= (and b!6617478 (not c!1219952)) b!6617475))

(assert (= (and b!6617475 c!1219950) b!6617472))

(assert (= (and b!6617475 (not c!1219950)) b!6617471))

(assert (= (or b!6617476 b!6617472) bm!579930))

(assert (= (or b!6617476 b!6617472) bm!579926))

(assert (= (or b!6617473 bm!579930) bm!579929))

(assert (= (or b!6617473 bm!579926) bm!579925))

(assert (= (or b!6617469 bm!579925) bm!579928))

(assert (= (or b!6617469 b!6617473) bm!579927))

(declare-fun m!7390126 () Bool)

(assert (=> bm!579927 m!7390126))

(declare-fun m!7390128 () Bool)

(assert (=> bm!579928 m!7390128))

(assert (=> b!6617474 m!7389200))

(declare-fun m!7390130 () Bool)

(assert (=> bm!579929 m!7390130))

(declare-fun m!7390132 () Bool)

(assert (=> b!6617470 m!7390132))

(assert (=> bm!579729 d!2074464))

(declare-fun b!6617489 () Bool)

(declare-fun e!4003381 () Bool)

(assert (=> b!6617489 (= e!4003381 tp_is_empty!42231)))

(declare-fun b!6617490 () Bool)

(declare-fun tp!1822290 () Bool)

(declare-fun tp!1822286 () Bool)

(assert (=> b!6617490 (= e!4003381 (and tp!1822290 tp!1822286))))

(declare-fun b!6617492 () Bool)

(declare-fun tp!1822288 () Bool)

(declare-fun tp!1822287 () Bool)

(assert (=> b!6617492 (= e!4003381 (and tp!1822288 tp!1822287))))

(assert (=> b!6616648 (= tp!1822238 e!4003381)))

(declare-fun b!6617491 () Bool)

(declare-fun tp!1822289 () Bool)

(assert (=> b!6617491 (= e!4003381 tp!1822289)))

(assert (= (and b!6616648 ((_ is ElementMatch!16489) (regOne!33491 (regOne!33490 r!7292)))) b!6617489))

(assert (= (and b!6616648 ((_ is Concat!25334) (regOne!33491 (regOne!33490 r!7292)))) b!6617490))

(assert (= (and b!6616648 ((_ is Star!16489) (regOne!33491 (regOne!33490 r!7292)))) b!6617491))

(assert (= (and b!6616648 ((_ is Union!16489) (regOne!33491 (regOne!33490 r!7292)))) b!6617492))

(declare-fun b!6617493 () Bool)

(declare-fun e!4003382 () Bool)

(assert (=> b!6617493 (= e!4003382 tp_is_empty!42231)))

(declare-fun b!6617494 () Bool)

(declare-fun tp!1822295 () Bool)

(declare-fun tp!1822291 () Bool)

(assert (=> b!6617494 (= e!4003382 (and tp!1822295 tp!1822291))))

(declare-fun b!6617496 () Bool)

(declare-fun tp!1822293 () Bool)

(declare-fun tp!1822292 () Bool)

(assert (=> b!6617496 (= e!4003382 (and tp!1822293 tp!1822292))))

(assert (=> b!6616648 (= tp!1822237 e!4003382)))

(declare-fun b!6617495 () Bool)

(declare-fun tp!1822294 () Bool)

(assert (=> b!6617495 (= e!4003382 tp!1822294)))

(assert (= (and b!6616648 ((_ is ElementMatch!16489) (regTwo!33491 (regOne!33490 r!7292)))) b!6617493))

(assert (= (and b!6616648 ((_ is Concat!25334) (regTwo!33491 (regOne!33490 r!7292)))) b!6617494))

(assert (= (and b!6616648 ((_ is Star!16489) (regTwo!33491 (regOne!33490 r!7292)))) b!6617495))

(assert (= (and b!6616648 ((_ is Union!16489) (regTwo!33491 (regOne!33490 r!7292)))) b!6617496))

(declare-fun b!6617497 () Bool)

(declare-fun e!4003383 () Bool)

(assert (=> b!6617497 (= e!4003383 tp_is_empty!42231)))

(declare-fun b!6617498 () Bool)

(declare-fun tp!1822300 () Bool)

(declare-fun tp!1822296 () Bool)

(assert (=> b!6617498 (= e!4003383 (and tp!1822300 tp!1822296))))

(declare-fun b!6617500 () Bool)

(declare-fun tp!1822298 () Bool)

(declare-fun tp!1822297 () Bool)

(assert (=> b!6617500 (= e!4003383 (and tp!1822298 tp!1822297))))

(assert (=> b!6616639 (= tp!1822229 e!4003383)))

(declare-fun b!6617499 () Bool)

(declare-fun tp!1822299 () Bool)

(assert (=> b!6617499 (= e!4003383 tp!1822299)))

(assert (= (and b!6616639 ((_ is ElementMatch!16489) (reg!16818 (regOne!33491 r!7292)))) b!6617497))

(assert (= (and b!6616639 ((_ is Concat!25334) (reg!16818 (regOne!33491 r!7292)))) b!6617498))

(assert (= (and b!6616639 ((_ is Star!16489) (reg!16818 (regOne!33491 r!7292)))) b!6617499))

(assert (= (and b!6616639 ((_ is Union!16489) (reg!16818 (regOne!33491 r!7292)))) b!6617500))

(declare-fun b!6617501 () Bool)

(declare-fun e!4003384 () Bool)

(assert (=> b!6617501 (= e!4003384 tp_is_empty!42231)))

(declare-fun b!6617502 () Bool)

(declare-fun tp!1822305 () Bool)

(declare-fun tp!1822301 () Bool)

(assert (=> b!6617502 (= e!4003384 (and tp!1822305 tp!1822301))))

(declare-fun b!6617504 () Bool)

(declare-fun tp!1822303 () Bool)

(declare-fun tp!1822302 () Bool)

(assert (=> b!6617504 (= e!4003384 (and tp!1822303 tp!1822302))))

(assert (=> b!6616640 (= tp!1822228 e!4003384)))

(declare-fun b!6617503 () Bool)

(declare-fun tp!1822304 () Bool)

(assert (=> b!6617503 (= e!4003384 tp!1822304)))

(assert (= (and b!6616640 ((_ is ElementMatch!16489) (regOne!33491 (regOne!33491 r!7292)))) b!6617501))

(assert (= (and b!6616640 ((_ is Concat!25334) (regOne!33491 (regOne!33491 r!7292)))) b!6617502))

(assert (= (and b!6616640 ((_ is Star!16489) (regOne!33491 (regOne!33491 r!7292)))) b!6617503))

(assert (= (and b!6616640 ((_ is Union!16489) (regOne!33491 (regOne!33491 r!7292)))) b!6617504))

(declare-fun b!6617505 () Bool)

(declare-fun e!4003385 () Bool)

(assert (=> b!6617505 (= e!4003385 tp_is_empty!42231)))

(declare-fun b!6617506 () Bool)

(declare-fun tp!1822310 () Bool)

(declare-fun tp!1822306 () Bool)

(assert (=> b!6617506 (= e!4003385 (and tp!1822310 tp!1822306))))

(declare-fun b!6617508 () Bool)

(declare-fun tp!1822308 () Bool)

(declare-fun tp!1822307 () Bool)

(assert (=> b!6617508 (= e!4003385 (and tp!1822308 tp!1822307))))

(assert (=> b!6616640 (= tp!1822227 e!4003385)))

(declare-fun b!6617507 () Bool)

(declare-fun tp!1822309 () Bool)

(assert (=> b!6617507 (= e!4003385 tp!1822309)))

(assert (= (and b!6616640 ((_ is ElementMatch!16489) (regTwo!33491 (regOne!33491 r!7292)))) b!6617505))

(assert (= (and b!6616640 ((_ is Concat!25334) (regTwo!33491 (regOne!33491 r!7292)))) b!6617506))

(assert (= (and b!6616640 ((_ is Star!16489) (regTwo!33491 (regOne!33491 r!7292)))) b!6617507))

(assert (= (and b!6616640 ((_ is Union!16489) (regTwo!33491 (regOne!33491 r!7292)))) b!6617508))

(declare-fun b!6617509 () Bool)

(declare-fun e!4003386 () Bool)

(assert (=> b!6617509 (= e!4003386 tp_is_empty!42231)))

(declare-fun b!6617510 () Bool)

(declare-fun tp!1822315 () Bool)

(declare-fun tp!1822311 () Bool)

(assert (=> b!6617510 (= e!4003386 (and tp!1822315 tp!1822311))))

(declare-fun b!6617512 () Bool)

(declare-fun tp!1822313 () Bool)

(declare-fun tp!1822312 () Bool)

(assert (=> b!6617512 (= e!4003386 (and tp!1822313 tp!1822312))))

(assert (=> b!6616617 (= tp!1822206 e!4003386)))

(declare-fun b!6617511 () Bool)

(declare-fun tp!1822314 () Bool)

(assert (=> b!6617511 (= e!4003386 tp!1822314)))

(assert (= (and b!6616617 ((_ is ElementMatch!16489) (h!72090 (exprs!6373 (h!72091 zl!343))))) b!6617509))

(assert (= (and b!6616617 ((_ is Concat!25334) (h!72090 (exprs!6373 (h!72091 zl!343))))) b!6617510))

(assert (= (and b!6616617 ((_ is Star!16489) (h!72090 (exprs!6373 (h!72091 zl!343))))) b!6617511))

(assert (= (and b!6616617 ((_ is Union!16489) (h!72090 (exprs!6373 (h!72091 zl!343))))) b!6617512))

(declare-fun b!6617513 () Bool)

(declare-fun e!4003387 () Bool)

(declare-fun tp!1822316 () Bool)

(declare-fun tp!1822317 () Bool)

(assert (=> b!6617513 (= e!4003387 (and tp!1822316 tp!1822317))))

(assert (=> b!6616617 (= tp!1822207 e!4003387)))

(assert (= (and b!6616617 ((_ is Cons!65642) (t!379422 (exprs!6373 (h!72091 zl!343))))) b!6617513))

(declare-fun b!6617514 () Bool)

(declare-fun e!4003388 () Bool)

(assert (=> b!6617514 (= e!4003388 tp_is_empty!42231)))

(declare-fun b!6617515 () Bool)

(declare-fun tp!1822322 () Bool)

(declare-fun tp!1822318 () Bool)

(assert (=> b!6617515 (= e!4003388 (and tp!1822322 tp!1822318))))

(declare-fun b!6617517 () Bool)

(declare-fun tp!1822320 () Bool)

(declare-fun tp!1822319 () Bool)

(assert (=> b!6617517 (= e!4003388 (and tp!1822320 tp!1822319))))

(assert (=> b!6616630 (= tp!1822221 e!4003388)))

(declare-fun b!6617516 () Bool)

(declare-fun tp!1822321 () Bool)

(assert (=> b!6617516 (= e!4003388 tp!1822321)))

(assert (= (and b!6616630 ((_ is ElementMatch!16489) (reg!16818 (reg!16818 r!7292)))) b!6617514))

(assert (= (and b!6616630 ((_ is Concat!25334) (reg!16818 (reg!16818 r!7292)))) b!6617515))

(assert (= (and b!6616630 ((_ is Star!16489) (reg!16818 (reg!16818 r!7292)))) b!6617516))

(assert (= (and b!6616630 ((_ is Union!16489) (reg!16818 (reg!16818 r!7292)))) b!6617517))

(declare-fun b!6617518 () Bool)

(declare-fun e!4003389 () Bool)

(assert (=> b!6617518 (= e!4003389 tp_is_empty!42231)))

(declare-fun b!6617519 () Bool)

(declare-fun tp!1822327 () Bool)

(declare-fun tp!1822323 () Bool)

(assert (=> b!6617519 (= e!4003389 (and tp!1822327 tp!1822323))))

(declare-fun b!6617521 () Bool)

(declare-fun tp!1822325 () Bool)

(declare-fun tp!1822324 () Bool)

(assert (=> b!6617521 (= e!4003389 (and tp!1822325 tp!1822324))))

(assert (=> b!6616629 (= tp!1822222 e!4003389)))

(declare-fun b!6617520 () Bool)

(declare-fun tp!1822326 () Bool)

(assert (=> b!6617520 (= e!4003389 tp!1822326)))

(assert (= (and b!6616629 ((_ is ElementMatch!16489) (regOne!33490 (reg!16818 r!7292)))) b!6617518))

(assert (= (and b!6616629 ((_ is Concat!25334) (regOne!33490 (reg!16818 r!7292)))) b!6617519))

(assert (= (and b!6616629 ((_ is Star!16489) (regOne!33490 (reg!16818 r!7292)))) b!6617520))

(assert (= (and b!6616629 ((_ is Union!16489) (regOne!33490 (reg!16818 r!7292)))) b!6617521))

(declare-fun b!6617522 () Bool)

(declare-fun e!4003390 () Bool)

(assert (=> b!6617522 (= e!4003390 tp_is_empty!42231)))

(declare-fun b!6617523 () Bool)

(declare-fun tp!1822332 () Bool)

(declare-fun tp!1822328 () Bool)

(assert (=> b!6617523 (= e!4003390 (and tp!1822332 tp!1822328))))

(declare-fun b!6617525 () Bool)

(declare-fun tp!1822330 () Bool)

(declare-fun tp!1822329 () Bool)

(assert (=> b!6617525 (= e!4003390 (and tp!1822330 tp!1822329))))

(assert (=> b!6616629 (= tp!1822218 e!4003390)))

(declare-fun b!6617524 () Bool)

(declare-fun tp!1822331 () Bool)

(assert (=> b!6617524 (= e!4003390 tp!1822331)))

(assert (= (and b!6616629 ((_ is ElementMatch!16489) (regTwo!33490 (reg!16818 r!7292)))) b!6617522))

(assert (= (and b!6616629 ((_ is Concat!25334) (regTwo!33490 (reg!16818 r!7292)))) b!6617523))

(assert (= (and b!6616629 ((_ is Star!16489) (regTwo!33490 (reg!16818 r!7292)))) b!6617524))

(assert (= (and b!6616629 ((_ is Union!16489) (regTwo!33490 (reg!16818 r!7292)))) b!6617525))

(declare-fun b!6617526 () Bool)

(declare-fun e!4003391 () Bool)

(assert (=> b!6617526 (= e!4003391 tp_is_empty!42231)))

(declare-fun b!6617527 () Bool)

(declare-fun tp!1822337 () Bool)

(declare-fun tp!1822333 () Bool)

(assert (=> b!6617527 (= e!4003391 (and tp!1822337 tp!1822333))))

(declare-fun b!6617529 () Bool)

(declare-fun tp!1822335 () Bool)

(declare-fun tp!1822334 () Bool)

(assert (=> b!6617529 (= e!4003391 (and tp!1822335 tp!1822334))))

(assert (=> b!6616631 (= tp!1822220 e!4003391)))

(declare-fun b!6617528 () Bool)

(declare-fun tp!1822336 () Bool)

(assert (=> b!6617528 (= e!4003391 tp!1822336)))

(assert (= (and b!6616631 ((_ is ElementMatch!16489) (regOne!33491 (reg!16818 r!7292)))) b!6617526))

(assert (= (and b!6616631 ((_ is Concat!25334) (regOne!33491 (reg!16818 r!7292)))) b!6617527))

(assert (= (and b!6616631 ((_ is Star!16489) (regOne!33491 (reg!16818 r!7292)))) b!6617528))

(assert (= (and b!6616631 ((_ is Union!16489) (regOne!33491 (reg!16818 r!7292)))) b!6617529))

(declare-fun b!6617530 () Bool)

(declare-fun e!4003392 () Bool)

(assert (=> b!6617530 (= e!4003392 tp_is_empty!42231)))

(declare-fun b!6617531 () Bool)

(declare-fun tp!1822342 () Bool)

(declare-fun tp!1822338 () Bool)

(assert (=> b!6617531 (= e!4003392 (and tp!1822342 tp!1822338))))

(declare-fun b!6617533 () Bool)

(declare-fun tp!1822340 () Bool)

(declare-fun tp!1822339 () Bool)

(assert (=> b!6617533 (= e!4003392 (and tp!1822340 tp!1822339))))

(assert (=> b!6616631 (= tp!1822219 e!4003392)))

(declare-fun b!6617532 () Bool)

(declare-fun tp!1822341 () Bool)

(assert (=> b!6617532 (= e!4003392 tp!1822341)))

(assert (= (and b!6616631 ((_ is ElementMatch!16489) (regTwo!33491 (reg!16818 r!7292)))) b!6617530))

(assert (= (and b!6616631 ((_ is Concat!25334) (regTwo!33491 (reg!16818 r!7292)))) b!6617531))

(assert (= (and b!6616631 ((_ is Star!16489) (regTwo!33491 (reg!16818 r!7292)))) b!6617532))

(assert (= (and b!6616631 ((_ is Union!16489) (regTwo!33491 (reg!16818 r!7292)))) b!6617533))

(declare-fun b!6617534 () Bool)

(declare-fun e!4003393 () Bool)

(assert (=> b!6617534 (= e!4003393 tp_is_empty!42231)))

(declare-fun b!6617535 () Bool)

(declare-fun tp!1822347 () Bool)

(declare-fun tp!1822343 () Bool)

(assert (=> b!6617535 (= e!4003393 (and tp!1822347 tp!1822343))))

(declare-fun b!6617537 () Bool)

(declare-fun tp!1822345 () Bool)

(declare-fun tp!1822344 () Bool)

(assert (=> b!6617537 (= e!4003393 (and tp!1822345 tp!1822344))))

(assert (=> b!6616661 (= tp!1822252 e!4003393)))

(declare-fun b!6617536 () Bool)

(declare-fun tp!1822346 () Bool)

(assert (=> b!6617536 (= e!4003393 tp!1822346)))

(assert (= (and b!6616661 ((_ is ElementMatch!16489) (h!72090 (exprs!6373 setElem!45216)))) b!6617534))

(assert (= (and b!6616661 ((_ is Concat!25334) (h!72090 (exprs!6373 setElem!45216)))) b!6617535))

(assert (= (and b!6616661 ((_ is Star!16489) (h!72090 (exprs!6373 setElem!45216)))) b!6617536))

(assert (= (and b!6616661 ((_ is Union!16489) (h!72090 (exprs!6373 setElem!45216)))) b!6617537))

(declare-fun b!6617538 () Bool)

(declare-fun e!4003394 () Bool)

(declare-fun tp!1822348 () Bool)

(declare-fun tp!1822349 () Bool)

(assert (=> b!6617538 (= e!4003394 (and tp!1822348 tp!1822349))))

(assert (=> b!6616661 (= tp!1822253 e!4003394)))

(assert (= (and b!6616661 ((_ is Cons!65642) (t!379422 (exprs!6373 setElem!45216)))) b!6617538))

(declare-fun b!6617539 () Bool)

(declare-fun e!4003395 () Bool)

(assert (=> b!6617539 (= e!4003395 tp_is_empty!42231)))

(declare-fun b!6617540 () Bool)

(declare-fun tp!1822354 () Bool)

(declare-fun tp!1822350 () Bool)

(assert (=> b!6617540 (= e!4003395 (and tp!1822354 tp!1822350))))

(declare-fun b!6617542 () Bool)

(declare-fun tp!1822352 () Bool)

(declare-fun tp!1822351 () Bool)

(assert (=> b!6617542 (= e!4003395 (and tp!1822352 tp!1822351))))

(assert (=> b!6616646 (= tp!1822240 e!4003395)))

(declare-fun b!6617541 () Bool)

(declare-fun tp!1822353 () Bool)

(assert (=> b!6617541 (= e!4003395 tp!1822353)))

(assert (= (and b!6616646 ((_ is ElementMatch!16489) (regOne!33490 (regOne!33490 r!7292)))) b!6617539))

(assert (= (and b!6616646 ((_ is Concat!25334) (regOne!33490 (regOne!33490 r!7292)))) b!6617540))

(assert (= (and b!6616646 ((_ is Star!16489) (regOne!33490 (regOne!33490 r!7292)))) b!6617541))

(assert (= (and b!6616646 ((_ is Union!16489) (regOne!33490 (regOne!33490 r!7292)))) b!6617542))

(declare-fun b!6617543 () Bool)

(declare-fun e!4003396 () Bool)

(assert (=> b!6617543 (= e!4003396 tp_is_empty!42231)))

(declare-fun b!6617544 () Bool)

(declare-fun tp!1822359 () Bool)

(declare-fun tp!1822355 () Bool)

(assert (=> b!6617544 (= e!4003396 (and tp!1822359 tp!1822355))))

(declare-fun b!6617546 () Bool)

(declare-fun tp!1822357 () Bool)

(declare-fun tp!1822356 () Bool)

(assert (=> b!6617546 (= e!4003396 (and tp!1822357 tp!1822356))))

(assert (=> b!6616646 (= tp!1822236 e!4003396)))

(declare-fun b!6617545 () Bool)

(declare-fun tp!1822358 () Bool)

(assert (=> b!6617545 (= e!4003396 tp!1822358)))

(assert (= (and b!6616646 ((_ is ElementMatch!16489) (regTwo!33490 (regOne!33490 r!7292)))) b!6617543))

(assert (= (and b!6616646 ((_ is Concat!25334) (regTwo!33490 (regOne!33490 r!7292)))) b!6617544))

(assert (= (and b!6616646 ((_ is Star!16489) (regTwo!33490 (regOne!33490 r!7292)))) b!6617545))

(assert (= (and b!6616646 ((_ is Union!16489) (regTwo!33490 (regOne!33490 r!7292)))) b!6617546))

(declare-fun b!6617547 () Bool)

(declare-fun e!4003397 () Bool)

(assert (=> b!6617547 (= e!4003397 tp_is_empty!42231)))

(declare-fun b!6617548 () Bool)

(declare-fun tp!1822364 () Bool)

(declare-fun tp!1822360 () Bool)

(assert (=> b!6617548 (= e!4003397 (and tp!1822364 tp!1822360))))

(declare-fun b!6617550 () Bool)

(declare-fun tp!1822362 () Bool)

(declare-fun tp!1822361 () Bool)

(assert (=> b!6617550 (= e!4003397 (and tp!1822362 tp!1822361))))

(assert (=> b!6616638 (= tp!1822230 e!4003397)))

(declare-fun b!6617549 () Bool)

(declare-fun tp!1822363 () Bool)

(assert (=> b!6617549 (= e!4003397 tp!1822363)))

(assert (= (and b!6616638 ((_ is ElementMatch!16489) (regOne!33490 (regOne!33491 r!7292)))) b!6617547))

(assert (= (and b!6616638 ((_ is Concat!25334) (regOne!33490 (regOne!33491 r!7292)))) b!6617548))

(assert (= (and b!6616638 ((_ is Star!16489) (regOne!33490 (regOne!33491 r!7292)))) b!6617549))

(assert (= (and b!6616638 ((_ is Union!16489) (regOne!33490 (regOne!33491 r!7292)))) b!6617550))

(declare-fun b!6617551 () Bool)

(declare-fun e!4003398 () Bool)

(assert (=> b!6617551 (= e!4003398 tp_is_empty!42231)))

(declare-fun b!6617552 () Bool)

(declare-fun tp!1822369 () Bool)

(declare-fun tp!1822365 () Bool)

(assert (=> b!6617552 (= e!4003398 (and tp!1822369 tp!1822365))))

(declare-fun b!6617554 () Bool)

(declare-fun tp!1822367 () Bool)

(declare-fun tp!1822366 () Bool)

(assert (=> b!6617554 (= e!4003398 (and tp!1822367 tp!1822366))))

(assert (=> b!6616638 (= tp!1822226 e!4003398)))

(declare-fun b!6617553 () Bool)

(declare-fun tp!1822368 () Bool)

(assert (=> b!6617553 (= e!4003398 tp!1822368)))

(assert (= (and b!6616638 ((_ is ElementMatch!16489) (regTwo!33490 (regOne!33491 r!7292)))) b!6617551))

(assert (= (and b!6616638 ((_ is Concat!25334) (regTwo!33490 (regOne!33491 r!7292)))) b!6617552))

(assert (= (and b!6616638 ((_ is Star!16489) (regTwo!33490 (regOne!33491 r!7292)))) b!6617553))

(assert (= (and b!6616638 ((_ is Union!16489) (regTwo!33490 (regOne!33491 r!7292)))) b!6617554))

(declare-fun b!6617555 () Bool)

(declare-fun e!4003399 () Bool)

(assert (=> b!6617555 (= e!4003399 tp_is_empty!42231)))

(declare-fun b!6617556 () Bool)

(declare-fun tp!1822374 () Bool)

(declare-fun tp!1822370 () Bool)

(assert (=> b!6617556 (= e!4003399 (and tp!1822374 tp!1822370))))

(declare-fun b!6617558 () Bool)

(declare-fun tp!1822372 () Bool)

(declare-fun tp!1822371 () Bool)

(assert (=> b!6617558 (= e!4003399 (and tp!1822372 tp!1822371))))

(assert (=> b!6616647 (= tp!1822239 e!4003399)))

(declare-fun b!6617557 () Bool)

(declare-fun tp!1822373 () Bool)

(assert (=> b!6617557 (= e!4003399 tp!1822373)))

(assert (= (and b!6616647 ((_ is ElementMatch!16489) (reg!16818 (regOne!33490 r!7292)))) b!6617555))

(assert (= (and b!6616647 ((_ is Concat!25334) (reg!16818 (regOne!33490 r!7292)))) b!6617556))

(assert (= (and b!6616647 ((_ is Star!16489) (reg!16818 (regOne!33490 r!7292)))) b!6617557))

(assert (= (and b!6616647 ((_ is Union!16489) (reg!16818 (regOne!33490 r!7292)))) b!6617558))

(declare-fun b!6617561 () Bool)

(declare-fun e!4003402 () Bool)

(assert (=> b!6617561 (= e!4003402 tp_is_empty!42231)))

(declare-fun b!6617562 () Bool)

(declare-fun tp!1822379 () Bool)

(declare-fun tp!1822375 () Bool)

(assert (=> b!6617562 (= e!4003402 (and tp!1822379 tp!1822375))))

(declare-fun b!6617564 () Bool)

(declare-fun tp!1822377 () Bool)

(declare-fun tp!1822376 () Bool)

(assert (=> b!6617564 (= e!4003402 (and tp!1822377 tp!1822376))))

(assert (=> b!6616643 (= tp!1822234 e!4003402)))

(declare-fun b!6617563 () Bool)

(declare-fun tp!1822378 () Bool)

(assert (=> b!6617563 (= e!4003402 tp!1822378)))

(assert (= (and b!6616643 ((_ is ElementMatch!16489) (reg!16818 (regTwo!33491 r!7292)))) b!6617561))

(assert (= (and b!6616643 ((_ is Concat!25334) (reg!16818 (regTwo!33491 r!7292)))) b!6617562))

(assert (= (and b!6616643 ((_ is Star!16489) (reg!16818 (regTwo!33491 r!7292)))) b!6617563))

(assert (= (and b!6616643 ((_ is Union!16489) (reg!16818 (regTwo!33491 r!7292)))) b!6617564))

(declare-fun b!6617565 () Bool)

(declare-fun e!4003403 () Bool)

(assert (=> b!6617565 (= e!4003403 tp_is_empty!42231)))

(declare-fun b!6617566 () Bool)

(declare-fun tp!1822384 () Bool)

(declare-fun tp!1822380 () Bool)

(assert (=> b!6617566 (= e!4003403 (and tp!1822384 tp!1822380))))

(declare-fun b!6617568 () Bool)

(declare-fun tp!1822382 () Bool)

(declare-fun tp!1822381 () Bool)

(assert (=> b!6617568 (= e!4003403 (and tp!1822382 tp!1822381))))

(assert (=> b!6616644 (= tp!1822233 e!4003403)))

(declare-fun b!6617567 () Bool)

(declare-fun tp!1822383 () Bool)

(assert (=> b!6617567 (= e!4003403 tp!1822383)))

(assert (= (and b!6616644 ((_ is ElementMatch!16489) (regOne!33491 (regTwo!33491 r!7292)))) b!6617565))

(assert (= (and b!6616644 ((_ is Concat!25334) (regOne!33491 (regTwo!33491 r!7292)))) b!6617566))

(assert (= (and b!6616644 ((_ is Star!16489) (regOne!33491 (regTwo!33491 r!7292)))) b!6617567))

(assert (= (and b!6616644 ((_ is Union!16489) (regOne!33491 (regTwo!33491 r!7292)))) b!6617568))

(declare-fun b!6617569 () Bool)

(declare-fun e!4003404 () Bool)

(assert (=> b!6617569 (= e!4003404 tp_is_empty!42231)))

(declare-fun b!6617570 () Bool)

(declare-fun tp!1822389 () Bool)

(declare-fun tp!1822385 () Bool)

(assert (=> b!6617570 (= e!4003404 (and tp!1822389 tp!1822385))))

(declare-fun b!6617572 () Bool)

(declare-fun tp!1822387 () Bool)

(declare-fun tp!1822386 () Bool)

(assert (=> b!6617572 (= e!4003404 (and tp!1822387 tp!1822386))))

(assert (=> b!6616644 (= tp!1822232 e!4003404)))

(declare-fun b!6617571 () Bool)

(declare-fun tp!1822388 () Bool)

(assert (=> b!6617571 (= e!4003404 tp!1822388)))

(assert (= (and b!6616644 ((_ is ElementMatch!16489) (regTwo!33491 (regTwo!33491 r!7292)))) b!6617569))

(assert (= (and b!6616644 ((_ is Concat!25334) (regTwo!33491 (regTwo!33491 r!7292)))) b!6617570))

(assert (= (and b!6616644 ((_ is Star!16489) (regTwo!33491 (regTwo!33491 r!7292)))) b!6617571))

(assert (= (and b!6616644 ((_ is Union!16489) (regTwo!33491 (regTwo!33491 r!7292)))) b!6617572))

(declare-fun condSetEmpty!45230 () Bool)

(assert (=> setNonEmpty!45222 (= condSetEmpty!45230 (= setRest!45222 ((as const (Array Context!11746 Bool)) false)))))

(declare-fun setRes!45230 () Bool)

(assert (=> setNonEmpty!45222 (= tp!1822259 setRes!45230)))

(declare-fun setIsEmpty!45230 () Bool)

(assert (=> setIsEmpty!45230 setRes!45230))

(declare-fun setNonEmpty!45230 () Bool)

(declare-fun tp!1822391 () Bool)

(declare-fun setElem!45230 () Context!11746)

(declare-fun e!4003405 () Bool)

(assert (=> setNonEmpty!45230 (= setRes!45230 (and tp!1822391 (inv!84469 setElem!45230) e!4003405))))

(declare-fun setRest!45230 () (InoxSet Context!11746))

(assert (=> setNonEmpty!45230 (= setRest!45222 ((_ map or) (store ((as const (Array Context!11746 Bool)) false) setElem!45230 true) setRest!45230))))

(declare-fun b!6617573 () Bool)

(declare-fun tp!1822390 () Bool)

(assert (=> b!6617573 (= e!4003405 tp!1822390)))

(assert (= (and setNonEmpty!45222 condSetEmpty!45230) setIsEmpty!45230))

(assert (= (and setNonEmpty!45222 (not condSetEmpty!45230)) setNonEmpty!45230))

(assert (= setNonEmpty!45230 b!6617573))

(declare-fun m!7390154 () Bool)

(assert (=> setNonEmpty!45230 m!7390154))

(declare-fun b!6617574 () Bool)

(declare-fun e!4003406 () Bool)

(declare-fun tp!1822392 () Bool)

(declare-fun tp!1822393 () Bool)

(assert (=> b!6617574 (= e!4003406 (and tp!1822392 tp!1822393))))

(assert (=> b!6616666 (= tp!1822258 e!4003406)))

(assert (= (and b!6616666 ((_ is Cons!65642) (exprs!6373 setElem!45222))) b!6617574))

(declare-fun b!6617576 () Bool)

(declare-fun e!4003408 () Bool)

(declare-fun tp!1822394 () Bool)

(assert (=> b!6617576 (= e!4003408 tp!1822394)))

(declare-fun b!6617575 () Bool)

(declare-fun tp!1822395 () Bool)

(declare-fun e!4003407 () Bool)

(assert (=> b!6617575 (= e!4003407 (and (inv!84469 (h!72091 (t!379423 (t!379423 zl!343)))) e!4003408 tp!1822395))))

(assert (=> b!6616659 (= tp!1822251 e!4003407)))

(assert (= b!6617575 b!6617576))

(assert (= (and b!6616659 ((_ is Cons!65643) (t!379423 (t!379423 zl!343)))) b!6617575))

(declare-fun m!7390156 () Bool)

(assert (=> b!6617575 m!7390156))

(declare-fun b!6617591 () Bool)

(declare-fun e!4003416 () Bool)

(declare-fun tp!1822396 () Bool)

(assert (=> b!6617591 (= e!4003416 (and tp_is_empty!42231 tp!1822396))))

(assert (=> b!6616636 (= tp!1822225 e!4003416)))

(assert (= (and b!6616636 ((_ is Cons!65644) (t!379424 (t!379424 s!2326)))) b!6617591))

(declare-fun b!6617592 () Bool)

(declare-fun e!4003417 () Bool)

(declare-fun tp!1822397 () Bool)

(declare-fun tp!1822398 () Bool)

(assert (=> b!6617592 (= e!4003417 (and tp!1822397 tp!1822398))))

(assert (=> b!6616660 (= tp!1822250 e!4003417)))

(assert (= (and b!6616660 ((_ is Cons!65642) (exprs!6373 (h!72091 (t!379423 zl!343))))) b!6617592))

(declare-fun b!6617593 () Bool)

(declare-fun e!4003418 () Bool)

(assert (=> b!6617593 (= e!4003418 tp_is_empty!42231)))

(declare-fun b!6617594 () Bool)

(declare-fun tp!1822403 () Bool)

(declare-fun tp!1822399 () Bool)

(assert (=> b!6617594 (= e!4003418 (and tp!1822403 tp!1822399))))

(declare-fun b!6617596 () Bool)

(declare-fun tp!1822401 () Bool)

(declare-fun tp!1822400 () Bool)

(assert (=> b!6617596 (= e!4003418 (and tp!1822401 tp!1822400))))

(assert (=> b!6616650 (= tp!1822245 e!4003418)))

(declare-fun b!6617595 () Bool)

(declare-fun tp!1822402 () Bool)

(assert (=> b!6617595 (= e!4003418 tp!1822402)))

(assert (= (and b!6616650 ((_ is ElementMatch!16489) (regOne!33490 (regTwo!33490 r!7292)))) b!6617593))

(assert (= (and b!6616650 ((_ is Concat!25334) (regOne!33490 (regTwo!33490 r!7292)))) b!6617594))

(assert (= (and b!6616650 ((_ is Star!16489) (regOne!33490 (regTwo!33490 r!7292)))) b!6617595))

(assert (= (and b!6616650 ((_ is Union!16489) (regOne!33490 (regTwo!33490 r!7292)))) b!6617596))

(declare-fun b!6617597 () Bool)

(declare-fun e!4003419 () Bool)

(assert (=> b!6617597 (= e!4003419 tp_is_empty!42231)))

(declare-fun b!6617598 () Bool)

(declare-fun tp!1822408 () Bool)

(declare-fun tp!1822404 () Bool)

(assert (=> b!6617598 (= e!4003419 (and tp!1822408 tp!1822404))))

(declare-fun b!6617600 () Bool)

(declare-fun tp!1822406 () Bool)

(declare-fun tp!1822405 () Bool)

(assert (=> b!6617600 (= e!4003419 (and tp!1822406 tp!1822405))))

(assert (=> b!6616650 (= tp!1822241 e!4003419)))

(declare-fun b!6617599 () Bool)

(declare-fun tp!1822407 () Bool)

(assert (=> b!6617599 (= e!4003419 tp!1822407)))

(assert (= (and b!6616650 ((_ is ElementMatch!16489) (regTwo!33490 (regTwo!33490 r!7292)))) b!6617597))

(assert (= (and b!6616650 ((_ is Concat!25334) (regTwo!33490 (regTwo!33490 r!7292)))) b!6617598))

(assert (= (and b!6616650 ((_ is Star!16489) (regTwo!33490 (regTwo!33490 r!7292)))) b!6617599))

(assert (= (and b!6616650 ((_ is Union!16489) (regTwo!33490 (regTwo!33490 r!7292)))) b!6617600))

(declare-fun b!6617601 () Bool)

(declare-fun e!4003420 () Bool)

(assert (=> b!6617601 (= e!4003420 tp_is_empty!42231)))

(declare-fun b!6617602 () Bool)

(declare-fun tp!1822413 () Bool)

(declare-fun tp!1822409 () Bool)

(assert (=> b!6617602 (= e!4003420 (and tp!1822413 tp!1822409))))

(declare-fun b!6617604 () Bool)

(declare-fun tp!1822411 () Bool)

(declare-fun tp!1822410 () Bool)

(assert (=> b!6617604 (= e!4003420 (and tp!1822411 tp!1822410))))

(assert (=> b!6616642 (= tp!1822235 e!4003420)))

(declare-fun b!6617603 () Bool)

(declare-fun tp!1822412 () Bool)

(assert (=> b!6617603 (= e!4003420 tp!1822412)))

(assert (= (and b!6616642 ((_ is ElementMatch!16489) (regOne!33490 (regTwo!33491 r!7292)))) b!6617601))

(assert (= (and b!6616642 ((_ is Concat!25334) (regOne!33490 (regTwo!33491 r!7292)))) b!6617602))

(assert (= (and b!6616642 ((_ is Star!16489) (regOne!33490 (regTwo!33491 r!7292)))) b!6617603))

(assert (= (and b!6616642 ((_ is Union!16489) (regOne!33490 (regTwo!33491 r!7292)))) b!6617604))

(declare-fun b!6617605 () Bool)

(declare-fun e!4003421 () Bool)

(assert (=> b!6617605 (= e!4003421 tp_is_empty!42231)))

(declare-fun b!6617606 () Bool)

(declare-fun tp!1822418 () Bool)

(declare-fun tp!1822414 () Bool)

(assert (=> b!6617606 (= e!4003421 (and tp!1822418 tp!1822414))))

(declare-fun b!6617608 () Bool)

(declare-fun tp!1822416 () Bool)

(declare-fun tp!1822415 () Bool)

(assert (=> b!6617608 (= e!4003421 (and tp!1822416 tp!1822415))))

(assert (=> b!6616642 (= tp!1822231 e!4003421)))

(declare-fun b!6617607 () Bool)

(declare-fun tp!1822417 () Bool)

(assert (=> b!6617607 (= e!4003421 tp!1822417)))

(assert (= (and b!6616642 ((_ is ElementMatch!16489) (regTwo!33490 (regTwo!33491 r!7292)))) b!6617605))

(assert (= (and b!6616642 ((_ is Concat!25334) (regTwo!33490 (regTwo!33491 r!7292)))) b!6617606))

(assert (= (and b!6616642 ((_ is Star!16489) (regTwo!33490 (regTwo!33491 r!7292)))) b!6617607))

(assert (= (and b!6616642 ((_ is Union!16489) (regTwo!33490 (regTwo!33491 r!7292)))) b!6617608))

(declare-fun b!6617609 () Bool)

(declare-fun e!4003422 () Bool)

(assert (=> b!6617609 (= e!4003422 tp_is_empty!42231)))

(declare-fun b!6617610 () Bool)

(declare-fun tp!1822423 () Bool)

(declare-fun tp!1822419 () Bool)

(assert (=> b!6617610 (= e!4003422 (and tp!1822423 tp!1822419))))

(declare-fun b!6617612 () Bool)

(declare-fun tp!1822421 () Bool)

(declare-fun tp!1822420 () Bool)

(assert (=> b!6617612 (= e!4003422 (and tp!1822421 tp!1822420))))

(assert (=> b!6616651 (= tp!1822244 e!4003422)))

(declare-fun b!6617611 () Bool)

(declare-fun tp!1822422 () Bool)

(assert (=> b!6617611 (= e!4003422 tp!1822422)))

(assert (= (and b!6616651 ((_ is ElementMatch!16489) (reg!16818 (regTwo!33490 r!7292)))) b!6617609))

(assert (= (and b!6616651 ((_ is Concat!25334) (reg!16818 (regTwo!33490 r!7292)))) b!6617610))

(assert (= (and b!6616651 ((_ is Star!16489) (reg!16818 (regTwo!33490 r!7292)))) b!6617611))

(assert (= (and b!6616651 ((_ is Union!16489) (reg!16818 (regTwo!33490 r!7292)))) b!6617612))

(declare-fun b!6617613 () Bool)

(declare-fun e!4003423 () Bool)

(assert (=> b!6617613 (= e!4003423 tp_is_empty!42231)))

(declare-fun b!6617614 () Bool)

(declare-fun tp!1822428 () Bool)

(declare-fun tp!1822424 () Bool)

(assert (=> b!6617614 (= e!4003423 (and tp!1822428 tp!1822424))))

(declare-fun b!6617616 () Bool)

(declare-fun tp!1822426 () Bool)

(declare-fun tp!1822425 () Bool)

(assert (=> b!6617616 (= e!4003423 (and tp!1822426 tp!1822425))))

(assert (=> b!6616652 (= tp!1822243 e!4003423)))

(declare-fun b!6617615 () Bool)

(declare-fun tp!1822427 () Bool)

(assert (=> b!6617615 (= e!4003423 tp!1822427)))

(assert (= (and b!6616652 ((_ is ElementMatch!16489) (regOne!33491 (regTwo!33490 r!7292)))) b!6617613))

(assert (= (and b!6616652 ((_ is Concat!25334) (regOne!33491 (regTwo!33490 r!7292)))) b!6617614))

(assert (= (and b!6616652 ((_ is Star!16489) (regOne!33491 (regTwo!33490 r!7292)))) b!6617615))

(assert (= (and b!6616652 ((_ is Union!16489) (regOne!33491 (regTwo!33490 r!7292)))) b!6617616))

(declare-fun b!6617617 () Bool)

(declare-fun e!4003424 () Bool)

(assert (=> b!6617617 (= e!4003424 tp_is_empty!42231)))

(declare-fun b!6617618 () Bool)

(declare-fun tp!1822433 () Bool)

(declare-fun tp!1822429 () Bool)

(assert (=> b!6617618 (= e!4003424 (and tp!1822433 tp!1822429))))

(declare-fun b!6617620 () Bool)

(declare-fun tp!1822431 () Bool)

(declare-fun tp!1822430 () Bool)

(assert (=> b!6617620 (= e!4003424 (and tp!1822431 tp!1822430))))

(assert (=> b!6616652 (= tp!1822242 e!4003424)))

(declare-fun b!6617619 () Bool)

(declare-fun tp!1822432 () Bool)

(assert (=> b!6617619 (= e!4003424 tp!1822432)))

(assert (= (and b!6616652 ((_ is ElementMatch!16489) (regTwo!33491 (regTwo!33490 r!7292)))) b!6617617))

(assert (= (and b!6616652 ((_ is Concat!25334) (regTwo!33491 (regTwo!33490 r!7292)))) b!6617618))

(assert (= (and b!6616652 ((_ is Star!16489) (regTwo!33491 (regTwo!33490 r!7292)))) b!6617619))

(assert (= (and b!6616652 ((_ is Union!16489) (regTwo!33491 (regTwo!33490 r!7292)))) b!6617620))

(declare-fun b_lambda!250267 () Bool)

(assert (= b_lambda!250243 (or d!2074034 b_lambda!250267)))

(declare-fun bs!1696987 () Bool)

(declare-fun d!2074488 () Bool)

(assert (= bs!1696987 (and d!2074488 d!2074034)))

(assert (=> bs!1696987 (= (dynLambda!26143 lambda!369644 (h!72090 lt!2417580)) (validRegex!8225 (h!72090 lt!2417580)))))

(declare-fun m!7390176 () Bool)

(assert (=> bs!1696987 m!7390176))

(assert (=> b!6616680 d!2074488))

(declare-fun b_lambda!250269 () Bool)

(assert (= b_lambda!250253 (or d!2073930 b_lambda!250269)))

(declare-fun bs!1696988 () Bool)

(declare-fun d!2074490 () Bool)

(assert (= bs!1696988 (and d!2074490 d!2073930)))

(assert (=> bs!1696988 (= (dynLambda!26143 lambda!369611 (h!72090 (exprs!6373 (h!72091 zl!343)))) (validRegex!8225 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(declare-fun m!7390180 () Bool)

(assert (=> bs!1696988 m!7390180))

(assert (=> b!6617209 d!2074490))

(declare-fun b_lambda!250271 () Bool)

(assert (= b_lambda!250261 (or d!2074020 b_lambda!250271)))

(declare-fun bs!1696989 () Bool)

(declare-fun d!2074494 () Bool)

(assert (= bs!1696989 (and d!2074494 d!2074020)))

(assert (=> bs!1696989 (= (dynLambda!26143 lambda!369638 (h!72090 (exprs!6373 lt!2417478))) (validRegex!8225 (h!72090 (exprs!6373 lt!2417478))))))

(declare-fun m!7390182 () Bool)

(assert (=> bs!1696989 m!7390182))

(assert (=> b!6617380 d!2074494))

(declare-fun b_lambda!250273 () Bool)

(assert (= b_lambda!250263 (or b!6615850 b_lambda!250273)))

(assert (=> d!2074406 d!2074066))

(declare-fun b_lambda!250275 () Bool)

(assert (= b_lambda!250251 (or b!6615850 b_lambda!250275)))

(assert (=> d!2074254 d!2074064))

(declare-fun b_lambda!250277 () Bool)

(assert (= b_lambda!250257 (or d!2074032 b_lambda!250277)))

(declare-fun bs!1696990 () Bool)

(declare-fun d!2074496 () Bool)

(assert (= bs!1696990 (and d!2074496 d!2074032)))

(assert (=> bs!1696990 (= (dynLambda!26143 lambda!369641 (h!72090 (unfocusZipperList!1910 zl!343))) (validRegex!8225 (h!72090 (unfocusZipperList!1910 zl!343))))))

(declare-fun m!7390184 () Bool)

(assert (=> bs!1696990 m!7390184))

(assert (=> b!6617246 d!2074496))

(declare-fun b_lambda!250279 () Bool)

(assert (= b_lambda!250241 (or d!2074014 b_lambda!250279)))

(declare-fun bs!1696991 () Bool)

(declare-fun d!2074498 () Bool)

(assert (= bs!1696991 (and d!2074498 d!2074014)))

(assert (=> bs!1696991 (= (dynLambda!26143 lambda!369637 (h!72090 (exprs!6373 setElem!45216))) (validRegex!8225 (h!72090 (exprs!6373 setElem!45216))))))

(declare-fun m!7390188 () Bool)

(assert (=> bs!1696991 m!7390188))

(assert (=> b!6616671 d!2074498))

(declare-fun b_lambda!250281 () Bool)

(assert (= b_lambda!250245 (or d!2074036 b_lambda!250281)))

(declare-fun bs!1696992 () Bool)

(declare-fun d!2074502 () Bool)

(assert (= bs!1696992 (and d!2074502 d!2074036)))

(assert (=> bs!1696992 (= (dynLambda!26143 lambda!369645 (h!72090 (exprs!6373 (h!72091 zl!343)))) (validRegex!8225 (h!72090 (exprs!6373 (h!72091 zl!343)))))))

(assert (=> bs!1696992 m!7390180))

(assert (=> b!6616763 d!2074502))

(check-sat (not b!6617592) (not b!6617554) (not b!6617563) (not b!6617192) (not d!2074396) (not d!2074312) (not b!6616996) (not bm!579881) (not bm!579765) (not b!6617115) (not b!6616780) (not bm!579802) (not b!6616774) (not b!6617513) (not b!6617185) (not d!2074320) (not b!6616772) (not b!6617606) (not d!2074406) (not setNonEmpty!45225) (not d!2074138) (not b!6616734) (not d!2074450) (not bm!579871) (not b!6617544) (not b!6617531) (not b!6617495) (not b!6617620) (not bm!579850) (not b!6617512) (not b!6617523) (not b!6617434) (not bs!1696990) (not bm!579803) (not b!6616738) (not bm!579776) (not b!6617536) (not b!6617564) (not b!6617002) (not d!2074274) (not b!6617182) (not b!6617503) (not d!2074128) (not b!6617619) (not d!2074236) (not b!6617169) (not d!2074202) (not b!6617521) (not bm!579867) (not b!6617073) (not b!6616769) (not bm!579916) (not b!6617500) (not d!2074174) (not b!6616737) (not b!6616875) (not d!2074330) (not b!6617499) (not b!6617549) (not b!6617309) (not d!2074102) (not b!6616735) (not b!6617504) (not bm!579918) (not d!2074272) (not bm!579768) (not d!2074256) (not b!6617384) (not setNonEmpty!45226) (not b!6617310) (not b!6616727) (not b!6617546) (not b!6617333) (not b!6617527) (not b!6617574) (not b!6617538) (not b!6617612) (not b!6616959) (not bm!579805) (not d!2074356) (not b!6617494) (not bm!579764) (not d!2074402) (not bs!1696991) (not bm!579901) (not b!6616799) (not b!6617510) (not b!6617575) (not d!2074150) (not b!6617054) (not b!6617440) (not b!6617460) (not b!6617591) (not bm!579911) (not b!6617516) (not bm!579928) (not b!6617012) (not d!2074112) (not b!6617179) (not d!2074192) (not b!6616742) (not bm!579906) (not b!6617537) (not b!6616732) (not b!6617328) (not b!6617535) (not b!6617174) (not b!6616950) (not b!6616954) (not d!2074204) (not bm!579769) (not d!2074108) (not b!6617529) (not b!6617507) (not b!6617611) (not d!2074100) (not b!6617170) (not b!6617533) (not bm!579835) (not bm!579796) (not b!6617007) (not b!6616700) (not b!6617383) (not b!6617550) (not b!6617517) (not b!6617066) (not d!2074238) (not d!2074142) (not b!6616731) (not b!6617508) (not b!6617571) (not b!6617557) (not b!6616955) (not bm!579849) (not b!6616728) (not bm!579801) (not b!6617243) (not b!6616776) (not bm!579811) (not d!2074380) (not bm!579905) (not b!6617511) (not bm!579831) (not b!6617541) (not bs!1696992) (not b!6617573) (not d!2074180) (not bm!579830) (not d!2074178) (not b!6617133) (not d!2074240) (not b!6617202) (not b!6617444) (not b!6616884) (not b_lambda!250273) (not bm!579770) (not b!6616803) (not b!6616997) (not b!6617359) (not bm!579922) (not b!6617545) (not b!6617596) (not b!6617378) (not b!6617567) (not d!2074252) (not b!6617491) (not b!6616801) (not b!6617615) (not bm!579823) (not b!6616953) (not d!2074400) (not d!2074196) (not bm!579919) (not b!6617051) (not b!6617595) (not d!2074078) (not d!2074358) (not bm!579819) (not d!2074200) (not d!2074452) (not bm!579792) (not d!2074264) (not b!6617451) (not b!6617187) (not b!6617610) (not b!6617542) (not b!6617186) (not b!6617056) (not bm!579822) (not b!6617377) (not bm!579873) (not b!6617454) (not b!6617558) (not b!6617502) (not b!6617047) (not b!6617092) (not b!6617532) (not b!6617608) (not bm!579929) (not b!6616739) (not b!6616797) (not b!6617195) (not d!2074152) (not bm!579854) (not b!6616928) (not b!6617576) (not b!6616686) (not d!2074378) (not b_lambda!250281) (not bm!579821) (not b!6617134) (not bs!1696989) (not bm!579763) (not b!6617520) (not d!2074360) (not bs!1696987) (not b!6616679) (not d!2074208) (not d!2074110) (not bm!579842) (not b!6617604) (not b!6617614) (not b!6617247) (not b!6616779) (not bm!579851) (not b!6616764) (not b!6616681) (not b!6617519) (not d!2074220) (not b!6617599) (not b!6617168) (not bm!579818) (not b!6617079) (not b!6616936) (not b_lambda!250267) (not b!6617052) (not b_lambda!250277) (not b!6617492) (not b!6617455) (not b!6617490) (not bm!579772) (not b!6617097) (not b!6616868) (not b!6616957) (not b!6616895) (not b!6617600) (not b!6617603) (not b!6617548) (not b!6616943) (not b!6617114) (not bm!579917) (not b!6617381) (not b!6617050) (not b!6616900) (not b!6617618) (not b!6616993) (not b!6617456) (not bm!579812) (not bm!579910) (not d!2074184) (not b!6617379) (not b!6617616) (not b!6617562) (not b!6617183) (not bm!579853) (not b!6616889) (not b!6617000) (not bm!579880) (not bm!579844) (not d!2074176) (not b!6617570) (not d!2074434) (not b!6617474) (not d!2074408) (not d!2074460) (not b!6617496) (not bm!579909) (not d!2074316) (not b!6617498) (not b!6617515) (not b_lambda!250239) (not setNonEmpty!45230) (not b!6617552) (not b!6617210) (not b!6617602) (not d!2074258) (not b!6617189) (not b!6616969) (not bm!579902) (not bm!579793) (not b!6617556) (not d!2074398) (not b!6616798) (not b!6617135) (not b!6616672) (not b_lambda!250269) (not b!6617524) (not b_lambda!250275) (not b!6616695) (not d!2074216) (not b!6617409) (not b!6616778) (not bm!579797) (not d!2074436) (not b_lambda!250279) (not b!6617568) (not d!2074156) (not b!6617458) (not b!6617525) (not b!6617078) (not b!6616794) (not bs!1696988) tp_is_empty!42231 (not b!6617177) (not b!6617506) (not bm!579833) (not d!2074298) (not b!6617598) (not bm!579806) (not b_lambda!250237) (not bm!579927) (not bm!579868) (not b!6617607) (not b!6617193) (not b!6616773) (not d!2074254) (not b!6617181) (not bm!579834) (not b!6617594) (not b!6617572) (not b!6616690) (not b!6617553) (not b!6616758) (not b!6617404) (not b!6616986) (not b!6616998) (not b!6617566) (not d!2074134) (not b!6617176) (not b!6617190) (not d!2074234) (not b_lambda!250271) (not bm!579921) (not d!2074334) (not bm!579872) (not d!2074310) (not b!6617180) (not bm!579843) (not b!6617540) (not b!6617528))
(check-sat)
