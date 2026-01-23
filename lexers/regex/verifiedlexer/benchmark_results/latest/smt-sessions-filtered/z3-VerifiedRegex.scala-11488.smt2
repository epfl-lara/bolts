; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!626238 () Bool)

(assert start!626238)

(declare-fun b!6306949 () Bool)

(assert (=> b!6306949 true))

(assert (=> b!6306949 true))

(declare-fun lambda!346432 () Int)

(declare-fun lambda!346431 () Int)

(assert (=> b!6306949 (not (= lambda!346432 lambda!346431))))

(assert (=> b!6306949 true))

(assert (=> b!6306949 true))

(declare-fun b!6306937 () Bool)

(assert (=> b!6306937 true))

(declare-fun e!3833681 () Bool)

(declare-fun setRes!42924 () Bool)

(declare-fun setNonEmpty!42924 () Bool)

(declare-fun tp!1757043 () Bool)

(declare-datatypes ((C!32716 0))(
  ( (C!32717 (val!26060 Int)) )
))
(declare-datatypes ((Regex!16223 0))(
  ( (ElementMatch!16223 (c!1145130 C!32716)) (Concat!25068 (regOne!32958 Regex!16223) (regTwo!32958 Regex!16223)) (EmptyExpr!16223) (Star!16223 (reg!16552 Regex!16223)) (EmptyLang!16223) (Union!16223 (regOne!32959 Regex!16223) (regTwo!32959 Regex!16223)) )
))
(declare-datatypes ((List!64968 0))(
  ( (Nil!64844) (Cons!64844 (h!71292 Regex!16223) (t!378540 List!64968)) )
))
(declare-datatypes ((Context!11214 0))(
  ( (Context!11215 (exprs!6107 List!64968)) )
))
(declare-fun setElem!42924 () Context!11214)

(declare-fun inv!83804 (Context!11214) Bool)

(assert (=> setNonEmpty!42924 (= setRes!42924 (and tp!1757043 (inv!83804 setElem!42924) e!3833681))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11214))

(declare-fun setRest!42924 () (InoxSet Context!11214))

(assert (=> setNonEmpty!42924 (= z!1189 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) setElem!42924 true) setRest!42924))))

(declare-fun b!6306926 () Bool)

(declare-fun e!3833678 () Bool)

(declare-fun tp_is_empty!41699 () Bool)

(assert (=> b!6306926 (= e!3833678 tp_is_empty!41699)))

(declare-fun b!6306927 () Bool)

(declare-fun res!2599373 () Bool)

(declare-fun e!3833688 () Bool)

(assert (=> b!6306927 (=> res!2599373 e!3833688)))

(declare-datatypes ((List!64969 0))(
  ( (Nil!64845) (Cons!64845 (h!71293 Context!11214) (t!378541 List!64969)) )
))
(declare-fun zl!343 () List!64969)

(declare-fun isEmpty!36909 (List!64969) Bool)

(assert (=> b!6306927 (= res!2599373 (not (isEmpty!36909 (t!378541 zl!343))))))

(declare-fun b!6306928 () Bool)

(declare-fun res!2599366 () Bool)

(declare-fun e!3833690 () Bool)

(assert (=> b!6306928 (=> (not res!2599366) (not e!3833690))))

(declare-fun r!7292 () Regex!16223)

(declare-fun unfocusZipper!1965 (List!64969) Regex!16223)

(assert (=> b!6306928 (= res!2599366 (= r!7292 (unfocusZipper!1965 zl!343)))))

(declare-fun b!6306929 () Bool)

(declare-fun tp!1757050 () Bool)

(declare-fun tp!1757047 () Bool)

(assert (=> b!6306929 (= e!3833678 (and tp!1757050 tp!1757047))))

(declare-fun b!6306930 () Bool)

(declare-fun tp!1757041 () Bool)

(assert (=> b!6306930 (= e!3833681 tp!1757041)))

(declare-fun b!6306931 () Bool)

(declare-fun e!3833687 () Bool)

(declare-fun e!3833680 () Bool)

(assert (=> b!6306931 (= e!3833687 e!3833680)))

(declare-fun res!2599364 () Bool)

(assert (=> b!6306931 (=> res!2599364 e!3833680)))

(declare-fun lt!2358612 () (InoxSet Context!11214))

(declare-fun lt!2358613 () (InoxSet Context!11214))

(assert (=> b!6306931 (= res!2599364 (not (= lt!2358612 lt!2358613)))))

(declare-datatypes ((List!64970 0))(
  ( (Nil!64846) (Cons!64846 (h!71294 C!32716) (t!378542 List!64970)) )
))
(declare-fun s!2326 () List!64970)

(declare-fun lt!2358606 () Context!11214)

(declare-fun derivationStepZipperDown!1471 (Regex!16223 Context!11214 C!32716) (InoxSet Context!11214))

(assert (=> b!6306931 (= lt!2358613 (derivationStepZipperDown!1471 (regOne!32958 (regOne!32958 r!7292)) lt!2358606 (h!71294 s!2326)))))

(declare-fun lt!2358608 () List!64968)

(assert (=> b!6306931 (= lt!2358606 (Context!11215 lt!2358608))))

(assert (=> b!6306931 (= lt!2358608 (Cons!64844 (regTwo!32958 (regOne!32958 r!7292)) (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6306932 () Bool)

(declare-fun res!2599374 () Bool)

(assert (=> b!6306932 (=> res!2599374 e!3833688)))

(declare-fun generalisedUnion!2067 (List!64968) Regex!16223)

(declare-fun unfocusZipperList!1644 (List!64969) List!64968)

(assert (=> b!6306932 (= res!2599374 (not (= r!7292 (generalisedUnion!2067 (unfocusZipperList!1644 zl!343)))))))

(declare-fun b!6306933 () Bool)

(declare-fun res!2599360 () Bool)

(assert (=> b!6306933 (=> (not res!2599360) (not e!3833690))))

(declare-fun toList!10007 ((InoxSet Context!11214)) List!64969)

(assert (=> b!6306933 (= res!2599360 (= (toList!10007 z!1189) zl!343))))

(declare-fun b!6306934 () Bool)

(assert (=> b!6306934 (= e!3833680 (inv!83804 lt!2358606))))

(declare-fun lambda!346433 () Int)

(declare-fun lt!2358605 () Context!11214)

(declare-fun lt!2358604 () (InoxSet Context!11214))

(declare-fun flatMap!1728 ((InoxSet Context!11214) Int) (InoxSet Context!11214))

(declare-fun derivationStepZipperUp!1397 (Context!11214 C!32716) (InoxSet Context!11214))

(assert (=> b!6306934 (= (flatMap!1728 lt!2358604 lambda!346433) (derivationStepZipperUp!1397 lt!2358605 (h!71294 s!2326)))))

(declare-datatypes ((Unit!158223 0))(
  ( (Unit!158224) )
))
(declare-fun lt!2358619 () Unit!158223)

(declare-fun lemmaFlatMapOnSingletonSet!1254 ((InoxSet Context!11214) Context!11214 Int) Unit!158223)

(assert (=> b!6306934 (= lt!2358619 (lemmaFlatMapOnSingletonSet!1254 lt!2358604 lt!2358605 lambda!346433))))

(declare-fun lt!2358610 () (InoxSet Context!11214))

(assert (=> b!6306934 (= lt!2358610 (derivationStepZipperUp!1397 lt!2358605 (h!71294 s!2326)))))

(assert (=> b!6306934 (= lt!2358604 (store ((as const (Array Context!11214 Bool)) false) lt!2358605 true))))

(assert (=> b!6306934 (= lt!2358605 (Context!11215 (Cons!64844 (regOne!32958 (regOne!32958 r!7292)) lt!2358608)))))

(declare-fun b!6306935 () Bool)

(declare-fun e!3833683 () Unit!158223)

(declare-fun Unit!158225 () Unit!158223)

(assert (=> b!6306935 (= e!3833683 Unit!158225)))

(declare-fun b!6306936 () Bool)

(declare-fun res!2599370 () Bool)

(assert (=> b!6306936 (=> res!2599370 e!3833680)))

(declare-fun matchZipper!2235 ((InoxSet Context!11214) List!64970) Bool)

(assert (=> b!6306936 (= res!2599370 (not (= (matchZipper!2235 lt!2358612 (t!378542 s!2326)) (matchZipper!2235 lt!2358613 (t!378542 s!2326)))))))

(declare-fun e!3833682 () Bool)

(assert (=> b!6306937 (= e!3833682 e!3833687)))

(declare-fun res!2599368 () Bool)

(assert (=> b!6306937 (=> res!2599368 e!3833687)))

(get-info :version)

(assert (=> b!6306937 (= res!2599368 (or (and ((_ is ElementMatch!16223) (regOne!32958 r!7292)) (= (c!1145130 (regOne!32958 r!7292)) (h!71294 s!2326))) ((_ is Union!16223) (regOne!32958 r!7292))))))

(declare-fun lt!2358617 () Unit!158223)

(assert (=> b!6306937 (= lt!2358617 e!3833683)))

(declare-fun c!1145129 () Bool)

(declare-fun nullable!6216 (Regex!16223) Bool)

(assert (=> b!6306937 (= c!1145129 (nullable!6216 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> b!6306937 (= (flatMap!1728 z!1189 lambda!346433) (derivationStepZipperUp!1397 (h!71293 zl!343) (h!71294 s!2326)))))

(declare-fun lt!2358603 () Unit!158223)

(assert (=> b!6306937 (= lt!2358603 (lemmaFlatMapOnSingletonSet!1254 z!1189 (h!71293 zl!343) lambda!346433))))

(declare-fun lt!2358618 () (InoxSet Context!11214))

(declare-fun lt!2358609 () Context!11214)

(assert (=> b!6306937 (= lt!2358618 (derivationStepZipperUp!1397 lt!2358609 (h!71294 s!2326)))))

(assert (=> b!6306937 (= lt!2358612 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (h!71293 zl!343))) lt!2358609 (h!71294 s!2326)))))

(assert (=> b!6306937 (= lt!2358609 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun lt!2358602 () (InoxSet Context!11214))

(assert (=> b!6306937 (= lt!2358602 (derivationStepZipperUp!1397 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))) (h!71294 s!2326)))))

(declare-fun tp!1757044 () Bool)

(declare-fun e!3833689 () Bool)

(declare-fun b!6306938 () Bool)

(declare-fun e!3833684 () Bool)

(assert (=> b!6306938 (= e!3833684 (and (inv!83804 (h!71293 zl!343)) e!3833689 tp!1757044))))

(declare-fun b!6306939 () Bool)

(declare-fun res!2599369 () Bool)

(assert (=> b!6306939 (=> res!2599369 e!3833687)))

(assert (=> b!6306939 (= res!2599369 (not ((_ is Concat!25068) (regOne!32958 r!7292))))))

(declare-fun b!6306940 () Bool)

(declare-fun res!2599371 () Bool)

(assert (=> b!6306940 (=> res!2599371 e!3833688)))

(assert (=> b!6306940 (= res!2599371 (or ((_ is EmptyExpr!16223) r!7292) ((_ is EmptyLang!16223) r!7292) ((_ is ElementMatch!16223) r!7292) ((_ is Union!16223) r!7292) (not ((_ is Concat!25068) r!7292))))))

(declare-fun b!6306941 () Bool)

(declare-fun res!2599363 () Bool)

(assert (=> b!6306941 (=> res!2599363 e!3833688)))

(declare-fun generalisedConcat!1820 (List!64968) Regex!16223)

(assert (=> b!6306941 (= res!2599363 (not (= r!7292 (generalisedConcat!1820 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6306942 () Bool)

(assert (=> b!6306942 (= e!3833690 (not e!3833688))))

(declare-fun res!2599372 () Bool)

(assert (=> b!6306942 (=> res!2599372 e!3833688)))

(assert (=> b!6306942 (= res!2599372 (not ((_ is Cons!64845) zl!343)))))

(declare-fun lt!2358607 () Bool)

(declare-fun matchRSpec!3324 (Regex!16223 List!64970) Bool)

(assert (=> b!6306942 (= lt!2358607 (matchRSpec!3324 r!7292 s!2326))))

(declare-fun matchR!8406 (Regex!16223 List!64970) Bool)

(assert (=> b!6306942 (= lt!2358607 (matchR!8406 r!7292 s!2326))))

(declare-fun lt!2358615 () Unit!158223)

(declare-fun mainMatchTheorem!3324 (Regex!16223 List!64970) Unit!158223)

(assert (=> b!6306942 (= lt!2358615 (mainMatchTheorem!3324 r!7292 s!2326))))

(declare-fun b!6306943 () Bool)

(declare-fun res!2599365 () Bool)

(assert (=> b!6306943 (=> res!2599365 e!3833682)))

(declare-fun isEmpty!36910 (List!64968) Bool)

(assert (=> b!6306943 (= res!2599365 (isEmpty!36910 (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6306944 () Bool)

(declare-fun res!2599359 () Bool)

(assert (=> b!6306944 (=> res!2599359 e!3833687)))

(declare-fun e!3833685 () Bool)

(assert (=> b!6306944 (= res!2599359 e!3833685)))

(declare-fun res!2599361 () Bool)

(assert (=> b!6306944 (=> (not res!2599361) (not e!3833685))))

(assert (=> b!6306944 (= res!2599361 ((_ is Concat!25068) (regOne!32958 r!7292)))))

(declare-fun b!6306945 () Bool)

(declare-fun tp!1757046 () Bool)

(declare-fun tp!1757042 () Bool)

(assert (=> b!6306945 (= e!3833678 (and tp!1757046 tp!1757042))))

(declare-fun b!6306946 () Bool)

(declare-fun tp!1757045 () Bool)

(assert (=> b!6306946 (= e!3833678 tp!1757045)))

(declare-fun b!6306947 () Bool)

(assert (=> b!6306947 (= e!3833685 (nullable!6216 (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun res!2599358 () Bool)

(assert (=> start!626238 (=> (not res!2599358) (not e!3833690))))

(declare-fun validRegex!7959 (Regex!16223) Bool)

(assert (=> start!626238 (= res!2599358 (validRegex!7959 r!7292))))

(assert (=> start!626238 e!3833690))

(assert (=> start!626238 e!3833678))

(declare-fun condSetEmpty!42924 () Bool)

(assert (=> start!626238 (= condSetEmpty!42924 (= z!1189 ((as const (Array Context!11214 Bool)) false)))))

(assert (=> start!626238 setRes!42924))

(assert (=> start!626238 e!3833684))

(declare-fun e!3833686 () Bool)

(assert (=> start!626238 e!3833686))

(declare-fun b!6306948 () Bool)

(declare-fun e!3833679 () Bool)

(assert (=> b!6306948 (= e!3833679 (matchZipper!2235 lt!2358618 (t!378542 s!2326)))))

(declare-fun setIsEmpty!42924 () Bool)

(assert (=> setIsEmpty!42924 setRes!42924))

(assert (=> b!6306949 (= e!3833688 e!3833682)))

(declare-fun res!2599362 () Bool)

(assert (=> b!6306949 (=> res!2599362 e!3833682)))

(declare-fun lt!2358611 () Bool)

(assert (=> b!6306949 (= res!2599362 (or (not (= lt!2358607 lt!2358611)) ((_ is Nil!64846) s!2326)))))

(declare-fun Exists!3293 (Int) Bool)

(assert (=> b!6306949 (= (Exists!3293 lambda!346431) (Exists!3293 lambda!346432))))

(declare-fun lt!2358616 () Unit!158223)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1830 (Regex!16223 Regex!16223 List!64970) Unit!158223)

(assert (=> b!6306949 (= lt!2358616 (lemmaExistCutMatchRandMatchRSpecEquivalent!1830 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326))))

(assert (=> b!6306949 (= lt!2358611 (Exists!3293 lambda!346431))))

(declare-datatypes ((tuple2!66404 0))(
  ( (tuple2!66405 (_1!36505 List!64970) (_2!36505 List!64970)) )
))
(declare-datatypes ((Option!16114 0))(
  ( (None!16113) (Some!16113 (v!52272 tuple2!66404)) )
))
(declare-fun isDefined!12817 (Option!16114) Bool)

(declare-fun findConcatSeparation!2528 (Regex!16223 Regex!16223 List!64970 List!64970 List!64970) Option!16114)

(assert (=> b!6306949 (= lt!2358611 (isDefined!12817 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326)))))

(declare-fun lt!2358614 () Unit!158223)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2292 (Regex!16223 Regex!16223 List!64970) Unit!158223)

(assert (=> b!6306949 (= lt!2358614 (lemmaFindConcatSeparationEquivalentToExists!2292 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326))))

(declare-fun b!6306950 () Bool)

(declare-fun tp!1757049 () Bool)

(assert (=> b!6306950 (= e!3833686 (and tp_is_empty!41699 tp!1757049))))

(declare-fun b!6306951 () Bool)

(declare-fun Unit!158226 () Unit!158223)

(assert (=> b!6306951 (= e!3833683 Unit!158226)))

(declare-fun lt!2358620 () Unit!158223)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1054 ((InoxSet Context!11214) (InoxSet Context!11214) List!64970) Unit!158223)

(assert (=> b!6306951 (= lt!2358620 (lemmaZipperConcatMatchesSameAsBothZippers!1054 lt!2358612 lt!2358618 (t!378542 s!2326)))))

(declare-fun res!2599357 () Bool)

(assert (=> b!6306951 (= res!2599357 (matchZipper!2235 lt!2358612 (t!378542 s!2326)))))

(assert (=> b!6306951 (=> res!2599357 e!3833679)))

(assert (=> b!6306951 (= (matchZipper!2235 ((_ map or) lt!2358612 lt!2358618) (t!378542 s!2326)) e!3833679)))

(declare-fun b!6306952 () Bool)

(declare-fun tp!1757048 () Bool)

(assert (=> b!6306952 (= e!3833689 tp!1757048)))

(declare-fun b!6306953 () Bool)

(declare-fun res!2599367 () Bool)

(assert (=> b!6306953 (=> res!2599367 e!3833688)))

(assert (=> b!6306953 (= res!2599367 (not ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343)))))))

(assert (= (and start!626238 res!2599358) b!6306933))

(assert (= (and b!6306933 res!2599360) b!6306928))

(assert (= (and b!6306928 res!2599366) b!6306942))

(assert (= (and b!6306942 (not res!2599372)) b!6306927))

(assert (= (and b!6306927 (not res!2599373)) b!6306941))

(assert (= (and b!6306941 (not res!2599363)) b!6306953))

(assert (= (and b!6306953 (not res!2599367)) b!6306932))

(assert (= (and b!6306932 (not res!2599374)) b!6306940))

(assert (= (and b!6306940 (not res!2599371)) b!6306949))

(assert (= (and b!6306949 (not res!2599362)) b!6306943))

(assert (= (and b!6306943 (not res!2599365)) b!6306937))

(assert (= (and b!6306937 c!1145129) b!6306951))

(assert (= (and b!6306937 (not c!1145129)) b!6306935))

(assert (= (and b!6306951 (not res!2599357)) b!6306948))

(assert (= (and b!6306937 (not res!2599368)) b!6306944))

(assert (= (and b!6306944 res!2599361) b!6306947))

(assert (= (and b!6306944 (not res!2599359)) b!6306939))

(assert (= (and b!6306939 (not res!2599369)) b!6306931))

(assert (= (and b!6306931 (not res!2599364)) b!6306936))

(assert (= (and b!6306936 (not res!2599370)) b!6306934))

(assert (= (and start!626238 ((_ is ElementMatch!16223) r!7292)) b!6306926))

(assert (= (and start!626238 ((_ is Concat!25068) r!7292)) b!6306945))

(assert (= (and start!626238 ((_ is Star!16223) r!7292)) b!6306946))

(assert (= (and start!626238 ((_ is Union!16223) r!7292)) b!6306929))

(assert (= (and start!626238 condSetEmpty!42924) setIsEmpty!42924))

(assert (= (and start!626238 (not condSetEmpty!42924)) setNonEmpty!42924))

(assert (= setNonEmpty!42924 b!6306930))

(assert (= b!6306938 b!6306952))

(assert (= (and start!626238 ((_ is Cons!64845) zl!343)) b!6306938))

(assert (= (and start!626238 ((_ is Cons!64846) s!2326)) b!6306950))

(declare-fun m!7123452 () Bool)

(assert (=> b!6306931 m!7123452))

(declare-fun m!7123454 () Bool)

(assert (=> b!6306943 m!7123454))

(declare-fun m!7123456 () Bool)

(assert (=> b!6306928 m!7123456))

(declare-fun m!7123458 () Bool)

(assert (=> b!6306941 m!7123458))

(declare-fun m!7123460 () Bool)

(assert (=> b!6306947 m!7123460))

(declare-fun m!7123462 () Bool)

(assert (=> b!6306948 m!7123462))

(declare-fun m!7123464 () Bool)

(assert (=> b!6306934 m!7123464))

(declare-fun m!7123466 () Bool)

(assert (=> b!6306934 m!7123466))

(declare-fun m!7123468 () Bool)

(assert (=> b!6306934 m!7123468))

(declare-fun m!7123470 () Bool)

(assert (=> b!6306934 m!7123470))

(declare-fun m!7123472 () Bool)

(assert (=> b!6306934 m!7123472))

(declare-fun m!7123474 () Bool)

(assert (=> b!6306949 m!7123474))

(declare-fun m!7123476 () Bool)

(assert (=> b!6306949 m!7123476))

(declare-fun m!7123478 () Bool)

(assert (=> b!6306949 m!7123478))

(assert (=> b!6306949 m!7123474))

(declare-fun m!7123480 () Bool)

(assert (=> b!6306949 m!7123480))

(declare-fun m!7123482 () Bool)

(assert (=> b!6306949 m!7123482))

(assert (=> b!6306949 m!7123476))

(declare-fun m!7123484 () Bool)

(assert (=> b!6306949 m!7123484))

(declare-fun m!7123486 () Bool)

(assert (=> b!6306937 m!7123486))

(declare-fun m!7123488 () Bool)

(assert (=> b!6306937 m!7123488))

(declare-fun m!7123490 () Bool)

(assert (=> b!6306937 m!7123490))

(declare-fun m!7123492 () Bool)

(assert (=> b!6306937 m!7123492))

(declare-fun m!7123494 () Bool)

(assert (=> b!6306937 m!7123494))

(declare-fun m!7123496 () Bool)

(assert (=> b!6306937 m!7123496))

(declare-fun m!7123498 () Bool)

(assert (=> b!6306937 m!7123498))

(declare-fun m!7123500 () Bool)

(assert (=> setNonEmpty!42924 m!7123500))

(declare-fun m!7123502 () Bool)

(assert (=> b!6306927 m!7123502))

(declare-fun m!7123504 () Bool)

(assert (=> b!6306942 m!7123504))

(declare-fun m!7123506 () Bool)

(assert (=> b!6306942 m!7123506))

(declare-fun m!7123508 () Bool)

(assert (=> b!6306942 m!7123508))

(declare-fun m!7123510 () Bool)

(assert (=> b!6306932 m!7123510))

(assert (=> b!6306932 m!7123510))

(declare-fun m!7123512 () Bool)

(assert (=> b!6306932 m!7123512))

(declare-fun m!7123514 () Bool)

(assert (=> b!6306936 m!7123514))

(declare-fun m!7123516 () Bool)

(assert (=> b!6306936 m!7123516))

(declare-fun m!7123518 () Bool)

(assert (=> start!626238 m!7123518))

(declare-fun m!7123520 () Bool)

(assert (=> b!6306938 m!7123520))

(declare-fun m!7123522 () Bool)

(assert (=> b!6306933 m!7123522))

(declare-fun m!7123524 () Bool)

(assert (=> b!6306951 m!7123524))

(assert (=> b!6306951 m!7123514))

(declare-fun m!7123526 () Bool)

(assert (=> b!6306951 m!7123526))

(check-sat (not b!6306934) (not b!6306937) (not b!6306949) (not b!6306950) (not b!6306952) (not b!6306948) (not setNonEmpty!42924) (not b!6306931) (not b!6306947) (not b!6306943) tp_is_empty!41699 (not b!6306932) (not b!6306938) (not b!6306942) (not b!6306946) (not b!6306927) (not b!6306936) (not b!6306933) (not start!626238) (not b!6306951) (not b!6306930) (not b!6306945) (not b!6306929) (not b!6306928) (not b!6306941))
(check-sat)
(get-model)

(declare-fun d!1979271 () Bool)

(declare-fun e!3833741 () Bool)

(assert (=> d!1979271 e!3833741))

(declare-fun res!2599392 () Bool)

(assert (=> d!1979271 (=> (not res!2599392) (not e!3833741))))

(declare-fun lt!2358638 () List!64969)

(declare-fun noDuplicate!2056 (List!64969) Bool)

(assert (=> d!1979271 (= res!2599392 (noDuplicate!2056 lt!2358638))))

(declare-fun choose!46830 ((InoxSet Context!11214)) List!64969)

(assert (=> d!1979271 (= lt!2358638 (choose!46830 z!1189))))

(assert (=> d!1979271 (= (toList!10007 z!1189) lt!2358638)))

(declare-fun b!6307043 () Bool)

(declare-fun content!12209 (List!64969) (InoxSet Context!11214))

(assert (=> b!6307043 (= e!3833741 (= (content!12209 lt!2358638) z!1189))))

(assert (= (and d!1979271 res!2599392) b!6307043))

(declare-fun m!7123590 () Bool)

(assert (=> d!1979271 m!7123590))

(declare-fun m!7123592 () Bool)

(assert (=> d!1979271 m!7123592))

(declare-fun m!7123594 () Bool)

(assert (=> b!6307043 m!7123594))

(assert (=> b!6306933 d!1979271))

(declare-fun d!1979277 () Bool)

(declare-fun lambda!346449 () Int)

(declare-fun forall!15373 (List!64968 Int) Bool)

(assert (=> d!1979277 (= (inv!83804 lt!2358606) (forall!15373 (exprs!6107 lt!2358606) lambda!346449))))

(declare-fun bs!1577086 () Bool)

(assert (= bs!1577086 d!1979277))

(declare-fun m!7123596 () Bool)

(assert (=> bs!1577086 m!7123596))

(assert (=> b!6306934 d!1979277))

(declare-fun d!1979279 () Bool)

(declare-fun choose!46831 ((InoxSet Context!11214) Int) (InoxSet Context!11214))

(assert (=> d!1979279 (= (flatMap!1728 lt!2358604 lambda!346433) (choose!46831 lt!2358604 lambda!346433))))

(declare-fun bs!1577087 () Bool)

(assert (= bs!1577087 d!1979279))

(declare-fun m!7123598 () Bool)

(assert (=> bs!1577087 m!7123598))

(assert (=> b!6306934 d!1979279))

(declare-fun bm!535144 () Bool)

(declare-fun call!535149 () (InoxSet Context!11214))

(assert (=> bm!535144 (= call!535149 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 lt!2358605)) (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (h!71294 s!2326)))))

(declare-fun d!1979281 () Bool)

(declare-fun c!1145195 () Bool)

(declare-fun e!3833782 () Bool)

(assert (=> d!1979281 (= c!1145195 e!3833782)))

(declare-fun res!2599402 () Bool)

(assert (=> d!1979281 (=> (not res!2599402) (not e!3833782))))

(assert (=> d!1979281 (= res!2599402 ((_ is Cons!64844) (exprs!6107 lt!2358605)))))

(declare-fun e!3833783 () (InoxSet Context!11214))

(assert (=> d!1979281 (= (derivationStepZipperUp!1397 lt!2358605 (h!71294 s!2326)) e!3833783)))

(declare-fun b!6307113 () Bool)

(declare-fun e!3833781 () (InoxSet Context!11214))

(assert (=> b!6307113 (= e!3833781 call!535149)))

(declare-fun b!6307114 () Bool)

(assert (=> b!6307114 (= e!3833781 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307115 () Bool)

(assert (=> b!6307115 (= e!3833783 e!3833781)))

(declare-fun c!1145194 () Bool)

(assert (=> b!6307115 (= c!1145194 ((_ is Cons!64844) (exprs!6107 lt!2358605)))))

(declare-fun b!6307116 () Bool)

(assert (=> b!6307116 (= e!3833783 ((_ map or) call!535149 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (h!71294 s!2326))))))

(declare-fun b!6307117 () Bool)

(assert (=> b!6307117 (= e!3833782 (nullable!6216 (h!71292 (exprs!6107 lt!2358605))))))

(assert (= (and d!1979281 res!2599402) b!6307117))

(assert (= (and d!1979281 c!1145195) b!6307116))

(assert (= (and d!1979281 (not c!1145195)) b!6307115))

(assert (= (and b!6307115 c!1145194) b!6307113))

(assert (= (and b!6307115 (not c!1145194)) b!6307114))

(assert (= (or b!6307116 b!6307113) bm!535144))

(declare-fun m!7123646 () Bool)

(assert (=> bm!535144 m!7123646))

(declare-fun m!7123648 () Bool)

(assert (=> b!6307116 m!7123648))

(declare-fun m!7123652 () Bool)

(assert (=> b!6307117 m!7123652))

(assert (=> b!6306934 d!1979281))

(declare-fun d!1979303 () Bool)

(declare-fun dynLambda!25673 (Int Context!11214) (InoxSet Context!11214))

(assert (=> d!1979303 (= (flatMap!1728 lt!2358604 lambda!346433) (dynLambda!25673 lambda!346433 lt!2358605))))

(declare-fun lt!2358642 () Unit!158223)

(declare-fun choose!46833 ((InoxSet Context!11214) Context!11214 Int) Unit!158223)

(assert (=> d!1979303 (= lt!2358642 (choose!46833 lt!2358604 lt!2358605 lambda!346433))))

(assert (=> d!1979303 (= lt!2358604 (store ((as const (Array Context!11214 Bool)) false) lt!2358605 true))))

(assert (=> d!1979303 (= (lemmaFlatMapOnSingletonSet!1254 lt!2358604 lt!2358605 lambda!346433) lt!2358642)))

(declare-fun b_lambda!239921 () Bool)

(assert (=> (not b_lambda!239921) (not d!1979303)))

(declare-fun bs!1577097 () Bool)

(assert (= bs!1577097 d!1979303))

(assert (=> bs!1577097 m!7123472))

(declare-fun m!7123672 () Bool)

(assert (=> bs!1577097 m!7123672))

(declare-fun m!7123674 () Bool)

(assert (=> bs!1577097 m!7123674))

(assert (=> bs!1577097 m!7123470))

(assert (=> b!6306934 d!1979303))

(declare-fun d!1979309 () Bool)

(declare-fun c!1145203 () Bool)

(declare-fun isEmpty!36912 (List!64970) Bool)

(assert (=> d!1979309 (= c!1145203 (isEmpty!36912 (t!378542 s!2326)))))

(declare-fun e!3833797 () Bool)

(assert (=> d!1979309 (= (matchZipper!2235 lt!2358618 (t!378542 s!2326)) e!3833797)))

(declare-fun b!6307138 () Bool)

(declare-fun nullableZipper!1993 ((InoxSet Context!11214)) Bool)

(assert (=> b!6307138 (= e!3833797 (nullableZipper!1993 lt!2358618))))

(declare-fun b!6307139 () Bool)

(declare-fun derivationStepZipper!2189 ((InoxSet Context!11214) C!32716) (InoxSet Context!11214))

(declare-fun head!12946 (List!64970) C!32716)

(declare-fun tail!12031 (List!64970) List!64970)

(assert (=> b!6307139 (= e!3833797 (matchZipper!2235 (derivationStepZipper!2189 lt!2358618 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))))))

(assert (= (and d!1979309 c!1145203) b!6307138))

(assert (= (and d!1979309 (not c!1145203)) b!6307139))

(declare-fun m!7123690 () Bool)

(assert (=> d!1979309 m!7123690))

(declare-fun m!7123692 () Bool)

(assert (=> b!6307138 m!7123692))

(declare-fun m!7123694 () Bool)

(assert (=> b!6307139 m!7123694))

(assert (=> b!6307139 m!7123694))

(declare-fun m!7123696 () Bool)

(assert (=> b!6307139 m!7123696))

(declare-fun m!7123698 () Bool)

(assert (=> b!6307139 m!7123698))

(assert (=> b!6307139 m!7123696))

(assert (=> b!6307139 m!7123698))

(declare-fun m!7123700 () Bool)

(assert (=> b!6307139 m!7123700))

(assert (=> b!6306948 d!1979309))

(declare-fun d!1979319 () Bool)

(declare-fun nullableFct!2167 (Regex!16223) Bool)

(assert (=> d!1979319 (= (nullable!6216 (h!71292 (exprs!6107 (h!71293 zl!343)))) (nullableFct!2167 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun bs!1577098 () Bool)

(assert (= bs!1577098 d!1979319))

(declare-fun m!7123702 () Bool)

(assert (=> bs!1577098 m!7123702))

(assert (=> b!6306937 d!1979319))

(declare-fun bm!535145 () Bool)

(declare-fun call!535150 () (InoxSet Context!11214))

(assert (=> bm!535145 (= call!535150 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326)))))

(declare-fun d!1979321 () Bool)

(declare-fun c!1145205 () Bool)

(declare-fun e!3833799 () Bool)

(assert (=> d!1979321 (= c!1145205 e!3833799)))

(declare-fun res!2599409 () Bool)

(assert (=> d!1979321 (=> (not res!2599409) (not e!3833799))))

(assert (=> d!1979321 (= res!2599409 ((_ is Cons!64844) (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))

(declare-fun e!3833800 () (InoxSet Context!11214))

(assert (=> d!1979321 (= (derivationStepZipperUp!1397 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))) (h!71294 s!2326)) e!3833800)))

(declare-fun b!6307140 () Bool)

(declare-fun e!3833798 () (InoxSet Context!11214))

(assert (=> b!6307140 (= e!3833798 call!535150)))

(declare-fun b!6307141 () Bool)

(assert (=> b!6307141 (= e!3833798 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307142 () Bool)

(assert (=> b!6307142 (= e!3833800 e!3833798)))

(declare-fun c!1145204 () Bool)

(assert (=> b!6307142 (= c!1145204 ((_ is Cons!64844) (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))

(declare-fun b!6307143 () Bool)

(assert (=> b!6307143 (= e!3833800 ((_ map or) call!535150 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326))))))

(declare-fun b!6307144 () Bool)

(assert (=> b!6307144 (= e!3833799 (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(assert (= (and d!1979321 res!2599409) b!6307144))

(assert (= (and d!1979321 c!1145205) b!6307143))

(assert (= (and d!1979321 (not c!1145205)) b!6307142))

(assert (= (and b!6307142 c!1145204) b!6307140))

(assert (= (and b!6307142 (not c!1145204)) b!6307141))

(assert (= (or b!6307143 b!6307140) bm!535145))

(declare-fun m!7123704 () Bool)

(assert (=> bm!535145 m!7123704))

(declare-fun m!7123706 () Bool)

(assert (=> b!6307143 m!7123706))

(declare-fun m!7123708 () Bool)

(assert (=> b!6307144 m!7123708))

(assert (=> b!6306937 d!1979321))

(declare-fun d!1979323 () Bool)

(assert (=> d!1979323 (= (flatMap!1728 z!1189 lambda!346433) (choose!46831 z!1189 lambda!346433))))

(declare-fun bs!1577099 () Bool)

(assert (= bs!1577099 d!1979323))

(declare-fun m!7123710 () Bool)

(assert (=> bs!1577099 m!7123710))

(assert (=> b!6306937 d!1979323))

(declare-fun bm!535146 () Bool)

(declare-fun call!535151 () (InoxSet Context!11214))

(assert (=> bm!535146 (= call!535151 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (h!71293 zl!343))) (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326)))))

(declare-fun d!1979325 () Bool)

(declare-fun c!1145215 () Bool)

(declare-fun e!3833814 () Bool)

(assert (=> d!1979325 (= c!1145215 e!3833814)))

(declare-fun res!2599416 () Bool)

(assert (=> d!1979325 (=> (not res!2599416) (not e!3833814))))

(assert (=> d!1979325 (= res!2599416 ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343))))))

(declare-fun e!3833815 () (InoxSet Context!11214))

(assert (=> d!1979325 (= (derivationStepZipperUp!1397 (h!71293 zl!343) (h!71294 s!2326)) e!3833815)))

(declare-fun b!6307167 () Bool)

(declare-fun e!3833813 () (InoxSet Context!11214))

(assert (=> b!6307167 (= e!3833813 call!535151)))

(declare-fun b!6307168 () Bool)

(assert (=> b!6307168 (= e!3833813 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307169 () Bool)

(assert (=> b!6307169 (= e!3833815 e!3833813)))

(declare-fun c!1145214 () Bool)

(assert (=> b!6307169 (= c!1145214 ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343))))))

(declare-fun b!6307170 () Bool)

(assert (=> b!6307170 (= e!3833815 ((_ map or) call!535151 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326))))))

(declare-fun b!6307171 () Bool)

(assert (=> b!6307171 (= e!3833814 (nullable!6216 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (= (and d!1979325 res!2599416) b!6307171))

(assert (= (and d!1979325 c!1145215) b!6307170))

(assert (= (and d!1979325 (not c!1145215)) b!6307169))

(assert (= (and b!6307169 c!1145214) b!6307167))

(assert (= (and b!6307169 (not c!1145214)) b!6307168))

(assert (= (or b!6307170 b!6307167) bm!535146))

(declare-fun m!7123712 () Bool)

(assert (=> bm!535146 m!7123712))

(declare-fun m!7123714 () Bool)

(assert (=> b!6307170 m!7123714))

(assert (=> b!6307171 m!7123496))

(assert (=> b!6306937 d!1979325))

(declare-fun bm!535147 () Bool)

(declare-fun call!535152 () (InoxSet Context!11214))

(assert (=> bm!535147 (= call!535152 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 lt!2358609)) (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (h!71294 s!2326)))))

(declare-fun d!1979327 () Bool)

(declare-fun c!1145217 () Bool)

(declare-fun e!3833819 () Bool)

(assert (=> d!1979327 (= c!1145217 e!3833819)))

(declare-fun res!2599417 () Bool)

(assert (=> d!1979327 (=> (not res!2599417) (not e!3833819))))

(assert (=> d!1979327 (= res!2599417 ((_ is Cons!64844) (exprs!6107 lt!2358609)))))

(declare-fun e!3833820 () (InoxSet Context!11214))

(assert (=> d!1979327 (= (derivationStepZipperUp!1397 lt!2358609 (h!71294 s!2326)) e!3833820)))

(declare-fun b!6307172 () Bool)

(declare-fun e!3833818 () (InoxSet Context!11214))

(assert (=> b!6307172 (= e!3833818 call!535152)))

(declare-fun b!6307173 () Bool)

(assert (=> b!6307173 (= e!3833818 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307174 () Bool)

(assert (=> b!6307174 (= e!3833820 e!3833818)))

(declare-fun c!1145216 () Bool)

(assert (=> b!6307174 (= c!1145216 ((_ is Cons!64844) (exprs!6107 lt!2358609)))))

(declare-fun b!6307175 () Bool)

(assert (=> b!6307175 (= e!3833820 ((_ map or) call!535152 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (h!71294 s!2326))))))

(declare-fun b!6307176 () Bool)

(assert (=> b!6307176 (= e!3833819 (nullable!6216 (h!71292 (exprs!6107 lt!2358609))))))

(assert (= (and d!1979327 res!2599417) b!6307176))

(assert (= (and d!1979327 c!1145217) b!6307175))

(assert (= (and d!1979327 (not c!1145217)) b!6307174))

(assert (= (and b!6307174 c!1145216) b!6307172))

(assert (= (and b!6307174 (not c!1145216)) b!6307173))

(assert (= (or b!6307175 b!6307172) bm!535147))

(declare-fun m!7123716 () Bool)

(assert (=> bm!535147 m!7123716))

(declare-fun m!7123718 () Bool)

(assert (=> b!6307175 m!7123718))

(declare-fun m!7123720 () Bool)

(assert (=> b!6307176 m!7123720))

(assert (=> b!6306937 d!1979327))

(declare-fun c!1145241 () Bool)

(declare-fun call!535176 () (InoxSet Context!11214))

(declare-fun bm!535169 () Bool)

(declare-fun call!535178 () List!64968)

(assert (=> bm!535169 (= call!535176 (derivationStepZipperDown!1471 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))) (ite c!1145241 lt!2358609 (Context!11215 call!535178)) (h!71294 s!2326)))))

(declare-fun c!1145243 () Bool)

(declare-fun bm!535170 () Bool)

(declare-fun c!1145242 () Bool)

(declare-fun call!535175 () (InoxSet Context!11214))

(declare-fun call!535177 () List!64968)

(assert (=> bm!535170 (= call!535175 (derivationStepZipperDown!1471 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))) (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177)) (h!71294 s!2326)))))

(declare-fun b!6307262 () Bool)

(declare-fun e!3833866 () (InoxSet Context!11214))

(assert (=> b!6307262 (= e!3833866 (store ((as const (Array Context!11214 Bool)) false) lt!2358609 true))))

(declare-fun b!6307263 () Bool)

(declare-fun c!1145245 () Bool)

(assert (=> b!6307263 (= c!1145245 ((_ is Star!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun e!3833867 () (InoxSet Context!11214))

(declare-fun e!3833868 () (InoxSet Context!11214))

(assert (=> b!6307263 (= e!3833867 e!3833868)))

(declare-fun b!6307264 () Bool)

(assert (=> b!6307264 (= e!3833868 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307265 () Bool)

(declare-fun e!3833870 () (InoxSet Context!11214))

(assert (=> b!6307265 (= e!3833866 e!3833870)))

(assert (=> b!6307265 (= c!1145241 ((_ is Union!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6307266 () Bool)

(declare-fun e!3833865 () (InoxSet Context!11214))

(assert (=> b!6307266 (= e!3833865 e!3833867)))

(assert (=> b!6307266 (= c!1145243 ((_ is Concat!25068) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6307267 () Bool)

(declare-fun e!3833869 () Bool)

(assert (=> b!6307267 (= c!1145242 e!3833869)))

(declare-fun res!2599457 () Bool)

(assert (=> b!6307267 (=> (not res!2599457) (not e!3833869))))

(assert (=> b!6307267 (= res!2599457 ((_ is Concat!25068) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> b!6307267 (= e!3833870 e!3833865)))

(declare-fun bm!535171 () Bool)

(declare-fun $colon$colon!2088 (List!64968 Regex!16223) List!64968)

(assert (=> bm!535171 (= call!535178 ($colon$colon!2088 (exprs!6107 lt!2358609) (ite (or c!1145242 c!1145243) (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71292 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6307268 () Bool)

(declare-fun call!535174 () (InoxSet Context!11214))

(assert (=> b!6307268 (= e!3833865 ((_ map or) call!535176 call!535174))))

(declare-fun b!6307269 () Bool)

(declare-fun call!535179 () (InoxSet Context!11214))

(assert (=> b!6307269 (= e!3833868 call!535179)))

(declare-fun b!6307270 () Bool)

(assert (=> b!6307270 (= e!3833867 call!535179)))

(declare-fun b!6307271 () Bool)

(assert (=> b!6307271 (= e!3833870 ((_ map or) call!535176 call!535175))))

(declare-fun b!6307272 () Bool)

(assert (=> b!6307272 (= e!3833869 (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun bm!535173 () Bool)

(assert (=> bm!535173 (= call!535179 call!535174)))

(declare-fun bm!535174 () Bool)

(assert (=> bm!535174 (= call!535177 call!535178)))

(declare-fun bm!535172 () Bool)

(assert (=> bm!535172 (= call!535174 call!535175)))

(declare-fun d!1979329 () Bool)

(declare-fun c!1145244 () Bool)

(assert (=> d!1979329 (= c!1145244 (and ((_ is ElementMatch!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))) (= (c!1145130 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326))))))

(assert (=> d!1979329 (= (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (h!71293 zl!343))) lt!2358609 (h!71294 s!2326)) e!3833866)))

(assert (= (and d!1979329 c!1145244) b!6307262))

(assert (= (and d!1979329 (not c!1145244)) b!6307265))

(assert (= (and b!6307265 c!1145241) b!6307271))

(assert (= (and b!6307265 (not c!1145241)) b!6307267))

(assert (= (and b!6307267 res!2599457) b!6307272))

(assert (= (and b!6307267 c!1145242) b!6307268))

(assert (= (and b!6307267 (not c!1145242)) b!6307266))

(assert (= (and b!6307266 c!1145243) b!6307270))

(assert (= (and b!6307266 (not c!1145243)) b!6307263))

(assert (= (and b!6307263 c!1145245) b!6307269))

(assert (= (and b!6307263 (not c!1145245)) b!6307264))

(assert (= (or b!6307270 b!6307269) bm!535174))

(assert (= (or b!6307270 b!6307269) bm!535173))

(assert (= (or b!6307268 bm!535174) bm!535171))

(assert (= (or b!6307268 bm!535173) bm!535172))

(assert (= (or b!6307271 bm!535172) bm!535170))

(assert (= (or b!6307271 b!6307268) bm!535169))

(declare-fun m!7123742 () Bool)

(assert (=> bm!535169 m!7123742))

(declare-fun m!7123744 () Bool)

(assert (=> bm!535171 m!7123744))

(declare-fun m!7123746 () Bool)

(assert (=> b!6307272 m!7123746))

(declare-fun m!7123748 () Bool)

(assert (=> bm!535170 m!7123748))

(declare-fun m!7123750 () Bool)

(assert (=> b!6307262 m!7123750))

(assert (=> b!6306937 d!1979329))

(declare-fun d!1979335 () Bool)

(assert (=> d!1979335 (= (flatMap!1728 z!1189 lambda!346433) (dynLambda!25673 lambda!346433 (h!71293 zl!343)))))

(declare-fun lt!2358652 () Unit!158223)

(assert (=> d!1979335 (= lt!2358652 (choose!46833 z!1189 (h!71293 zl!343) lambda!346433))))

(assert (=> d!1979335 (= z!1189 (store ((as const (Array Context!11214 Bool)) false) (h!71293 zl!343) true))))

(assert (=> d!1979335 (= (lemmaFlatMapOnSingletonSet!1254 z!1189 (h!71293 zl!343) lambda!346433) lt!2358652)))

(declare-fun b_lambda!239923 () Bool)

(assert (=> (not b_lambda!239923) (not d!1979335)))

(declare-fun bs!1577103 () Bool)

(assert (= bs!1577103 d!1979335))

(assert (=> bs!1577103 m!7123492))

(declare-fun m!7123752 () Bool)

(assert (=> bs!1577103 m!7123752))

(declare-fun m!7123754 () Bool)

(assert (=> bs!1577103 m!7123754))

(declare-fun m!7123756 () Bool)

(assert (=> bs!1577103 m!7123756))

(assert (=> b!6306937 d!1979335))

(declare-fun bs!1577104 () Bool)

(declare-fun d!1979337 () Bool)

(assert (= bs!1577104 (and d!1979337 d!1979277)))

(declare-fun lambda!346457 () Int)

(assert (=> bs!1577104 (= lambda!346457 lambda!346449)))

(assert (=> d!1979337 (= (inv!83804 (h!71293 zl!343)) (forall!15373 (exprs!6107 (h!71293 zl!343)) lambda!346457))))

(declare-fun bs!1577105 () Bool)

(assert (= bs!1577105 d!1979337))

(declare-fun m!7123758 () Bool)

(assert (=> bs!1577105 m!7123758))

(assert (=> b!6306938 d!1979337))

(declare-fun d!1979339 () Bool)

(assert (=> d!1979339 (= (isEmpty!36909 (t!378541 zl!343)) ((_ is Nil!64845) (t!378541 zl!343)))))

(assert (=> b!6306927 d!1979339))

(declare-fun d!1979343 () Bool)

(declare-fun c!1145246 () Bool)

(assert (=> d!1979343 (= c!1145246 (isEmpty!36912 (t!378542 s!2326)))))

(declare-fun e!3833871 () Bool)

(assert (=> d!1979343 (= (matchZipper!2235 lt!2358612 (t!378542 s!2326)) e!3833871)))

(declare-fun b!6307273 () Bool)

(assert (=> b!6307273 (= e!3833871 (nullableZipper!1993 lt!2358612))))

(declare-fun b!6307274 () Bool)

(assert (=> b!6307274 (= e!3833871 (matchZipper!2235 (derivationStepZipper!2189 lt!2358612 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))))))

(assert (= (and d!1979343 c!1145246) b!6307273))

(assert (= (and d!1979343 (not c!1145246)) b!6307274))

(assert (=> d!1979343 m!7123690))

(declare-fun m!7123762 () Bool)

(assert (=> b!6307273 m!7123762))

(assert (=> b!6307274 m!7123694))

(assert (=> b!6307274 m!7123694))

(declare-fun m!7123764 () Bool)

(assert (=> b!6307274 m!7123764))

(assert (=> b!6307274 m!7123698))

(assert (=> b!6307274 m!7123764))

(assert (=> b!6307274 m!7123698))

(declare-fun m!7123766 () Bool)

(assert (=> b!6307274 m!7123766))

(assert (=> b!6306936 d!1979343))

(declare-fun d!1979345 () Bool)

(declare-fun c!1145247 () Bool)

(assert (=> d!1979345 (= c!1145247 (isEmpty!36912 (t!378542 s!2326)))))

(declare-fun e!3833872 () Bool)

(assert (=> d!1979345 (= (matchZipper!2235 lt!2358613 (t!378542 s!2326)) e!3833872)))

(declare-fun b!6307275 () Bool)

(assert (=> b!6307275 (= e!3833872 (nullableZipper!1993 lt!2358613))))

(declare-fun b!6307276 () Bool)

(assert (=> b!6307276 (= e!3833872 (matchZipper!2235 (derivationStepZipper!2189 lt!2358613 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))))))

(assert (= (and d!1979345 c!1145247) b!6307275))

(assert (= (and d!1979345 (not c!1145247)) b!6307276))

(assert (=> d!1979345 m!7123690))

(declare-fun m!7123768 () Bool)

(assert (=> b!6307275 m!7123768))

(assert (=> b!6307276 m!7123694))

(assert (=> b!6307276 m!7123694))

(declare-fun m!7123770 () Bool)

(assert (=> b!6307276 m!7123770))

(assert (=> b!6307276 m!7123698))

(assert (=> b!6307276 m!7123770))

(assert (=> b!6307276 m!7123698))

(declare-fun m!7123772 () Bool)

(assert (=> b!6307276 m!7123772))

(assert (=> b!6306936 d!1979345))

(declare-fun bs!1577107 () Bool)

(declare-fun d!1979347 () Bool)

(assert (= bs!1577107 (and d!1979347 d!1979277)))

(declare-fun lambda!346458 () Int)

(assert (=> bs!1577107 (= lambda!346458 lambda!346449)))

(declare-fun bs!1577108 () Bool)

(assert (= bs!1577108 (and d!1979347 d!1979337)))

(assert (=> bs!1577108 (= lambda!346458 lambda!346457)))

(assert (=> d!1979347 (= (inv!83804 setElem!42924) (forall!15373 (exprs!6107 setElem!42924) lambda!346458))))

(declare-fun bs!1577109 () Bool)

(assert (= bs!1577109 d!1979347))

(declare-fun m!7123774 () Bool)

(assert (=> bs!1577109 m!7123774))

(assert (=> setNonEmpty!42924 d!1979347))

(declare-fun d!1979349 () Bool)

(assert (=> d!1979349 (= (nullable!6216 (regOne!32958 (regOne!32958 r!7292))) (nullableFct!2167 (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun bs!1577110 () Bool)

(assert (= bs!1577110 d!1979349))

(declare-fun m!7123776 () Bool)

(assert (=> bs!1577110 m!7123776))

(assert (=> b!6306947 d!1979349))

(declare-fun d!1979351 () Bool)

(declare-fun lt!2358658 () Regex!16223)

(assert (=> d!1979351 (validRegex!7959 lt!2358658)))

(assert (=> d!1979351 (= lt!2358658 (generalisedUnion!2067 (unfocusZipperList!1644 zl!343)))))

(assert (=> d!1979351 (= (unfocusZipper!1965 zl!343) lt!2358658)))

(declare-fun bs!1577111 () Bool)

(assert (= bs!1577111 d!1979351))

(declare-fun m!7123784 () Bool)

(assert (=> bs!1577111 m!7123784))

(assert (=> bs!1577111 m!7123510))

(assert (=> bs!1577111 m!7123510))

(assert (=> bs!1577111 m!7123512))

(assert (=> b!6306928 d!1979351))

(declare-fun b!6307324 () Bool)

(declare-fun e!3833909 () Bool)

(declare-fun call!535196 () Bool)

(assert (=> b!6307324 (= e!3833909 call!535196)))

(declare-fun c!1145260 () Bool)

(declare-fun call!535197 () Bool)

(declare-fun bm!535190 () Bool)

(declare-fun c!1145259 () Bool)

(assert (=> bm!535190 (= call!535197 (validRegex!7959 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))

(declare-fun b!6307325 () Bool)

(declare-fun e!3833913 () Bool)

(declare-fun e!3833914 () Bool)

(assert (=> b!6307325 (= e!3833913 e!3833914)))

(assert (=> b!6307325 (= c!1145260 ((_ is Union!16223) r!7292))))

(declare-fun b!6307326 () Bool)

(declare-fun e!3833911 () Bool)

(assert (=> b!6307326 (= e!3833911 call!535197)))

(declare-fun bm!535191 () Bool)

(assert (=> bm!535191 (= call!535196 call!535197)))

(declare-fun b!6307328 () Bool)

(declare-fun e!3833910 () Bool)

(assert (=> b!6307328 (= e!3833910 e!3833909)))

(declare-fun res!2599483 () Bool)

(assert (=> b!6307328 (=> (not res!2599483) (not e!3833909))))

(declare-fun call!535195 () Bool)

(assert (=> b!6307328 (= res!2599483 call!535195)))

(declare-fun b!6307329 () Bool)

(assert (=> b!6307329 (= e!3833913 e!3833911)))

(declare-fun res!2599484 () Bool)

(assert (=> b!6307329 (= res!2599484 (not (nullable!6216 (reg!16552 r!7292))))))

(assert (=> b!6307329 (=> (not res!2599484) (not e!3833911))))

(declare-fun b!6307330 () Bool)

(declare-fun res!2599485 () Bool)

(declare-fun e!3833915 () Bool)

(assert (=> b!6307330 (=> (not res!2599485) (not e!3833915))))

(assert (=> b!6307330 (= res!2599485 call!535195)))

(assert (=> b!6307330 (= e!3833914 e!3833915)))

(declare-fun bm!535192 () Bool)

(assert (=> bm!535192 (= call!535195 (validRegex!7959 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))

(declare-fun b!6307327 () Bool)

(assert (=> b!6307327 (= e!3833915 call!535196)))

(declare-fun d!1979355 () Bool)

(declare-fun res!2599486 () Bool)

(declare-fun e!3833912 () Bool)

(assert (=> d!1979355 (=> res!2599486 e!3833912)))

(assert (=> d!1979355 (= res!2599486 ((_ is ElementMatch!16223) r!7292))))

(assert (=> d!1979355 (= (validRegex!7959 r!7292) e!3833912)))

(declare-fun b!6307331 () Bool)

(assert (=> b!6307331 (= e!3833912 e!3833913)))

(assert (=> b!6307331 (= c!1145259 ((_ is Star!16223) r!7292))))

(declare-fun b!6307332 () Bool)

(declare-fun res!2599487 () Bool)

(assert (=> b!6307332 (=> res!2599487 e!3833910)))

(assert (=> b!6307332 (= res!2599487 (not ((_ is Concat!25068) r!7292)))))

(assert (=> b!6307332 (= e!3833914 e!3833910)))

(assert (= (and d!1979355 (not res!2599486)) b!6307331))

(assert (= (and b!6307331 c!1145259) b!6307329))

(assert (= (and b!6307331 (not c!1145259)) b!6307325))

(assert (= (and b!6307329 res!2599484) b!6307326))

(assert (= (and b!6307325 c!1145260) b!6307330))

(assert (= (and b!6307325 (not c!1145260)) b!6307332))

(assert (= (and b!6307330 res!2599485) b!6307327))

(assert (= (and b!6307332 (not res!2599487)) b!6307328))

(assert (= (and b!6307328 res!2599483) b!6307324))

(assert (= (or b!6307327 b!6307324) bm!535191))

(assert (= (or b!6307330 b!6307328) bm!535192))

(assert (= (or b!6307326 bm!535191) bm!535190))

(declare-fun m!7123792 () Bool)

(assert (=> bm!535190 m!7123792))

(declare-fun m!7123794 () Bool)

(assert (=> b!6307329 m!7123794))

(declare-fun m!7123796 () Bool)

(assert (=> bm!535192 m!7123796))

(assert (=> start!626238 d!1979355))

(declare-fun b!6307390 () Bool)

(declare-fun res!2599527 () Bool)

(declare-fun e!3833947 () Bool)

(assert (=> b!6307390 (=> (not res!2599527) (not e!3833947))))

(declare-fun lt!2358680 () Option!16114)

(declare-fun get!22423 (Option!16114) tuple2!66404)

(assert (=> b!6307390 (= res!2599527 (matchR!8406 (regTwo!32958 r!7292) (_2!36505 (get!22423 lt!2358680))))))

(declare-fun b!6307391 () Bool)

(declare-fun e!3833951 () Bool)

(assert (=> b!6307391 (= e!3833951 (not (isDefined!12817 lt!2358680)))))

(declare-fun b!6307392 () Bool)

(declare-fun lt!2358681 () Unit!158223)

(declare-fun lt!2358679 () Unit!158223)

(assert (=> b!6307392 (= lt!2358681 lt!2358679)))

(declare-fun ++!14296 (List!64970 List!64970) List!64970)

(assert (=> b!6307392 (= (++!14296 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2391 (List!64970 C!32716 List!64970 List!64970) Unit!158223)

(assert (=> b!6307392 (= lt!2358679 (lemmaMoveElementToOtherListKeepsConcatEq!2391 Nil!64846 (h!71294 s!2326) (t!378542 s!2326) s!2326))))

(declare-fun e!3833949 () Option!16114)

(assert (=> b!6307392 (= e!3833949 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326) s!2326))))

(declare-fun b!6307393 () Bool)

(declare-fun e!3833948 () Option!16114)

(assert (=> b!6307393 (= e!3833948 e!3833949)))

(declare-fun c!1145272 () Bool)

(assert (=> b!6307393 (= c!1145272 ((_ is Nil!64846) s!2326))))

(declare-fun b!6307394 () Bool)

(assert (=> b!6307394 (= e!3833949 None!16113)))

(declare-fun b!6307395 () Bool)

(assert (=> b!6307395 (= e!3833948 (Some!16113 (tuple2!66405 Nil!64846 s!2326)))))

(declare-fun b!6307396 () Bool)

(declare-fun e!3833950 () Bool)

(assert (=> b!6307396 (= e!3833950 (matchR!8406 (regTwo!32958 r!7292) s!2326))))

(declare-fun d!1979359 () Bool)

(assert (=> d!1979359 e!3833951))

(declare-fun res!2599526 () Bool)

(assert (=> d!1979359 (=> res!2599526 e!3833951)))

(assert (=> d!1979359 (= res!2599526 e!3833947)))

(declare-fun res!2599529 () Bool)

(assert (=> d!1979359 (=> (not res!2599529) (not e!3833947))))

(assert (=> d!1979359 (= res!2599529 (isDefined!12817 lt!2358680))))

(assert (=> d!1979359 (= lt!2358680 e!3833948)))

(declare-fun c!1145271 () Bool)

(assert (=> d!1979359 (= c!1145271 e!3833950)))

(declare-fun res!2599528 () Bool)

(assert (=> d!1979359 (=> (not res!2599528) (not e!3833950))))

(assert (=> d!1979359 (= res!2599528 (matchR!8406 (regOne!32958 r!7292) Nil!64846))))

(assert (=> d!1979359 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979359 (= (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326) lt!2358680)))

(declare-fun b!6307397 () Bool)

(declare-fun res!2599525 () Bool)

(assert (=> b!6307397 (=> (not res!2599525) (not e!3833947))))

(assert (=> b!6307397 (= res!2599525 (matchR!8406 (regOne!32958 r!7292) (_1!36505 (get!22423 lt!2358680))))))

(declare-fun b!6307398 () Bool)

(assert (=> b!6307398 (= e!3833947 (= (++!14296 (_1!36505 (get!22423 lt!2358680)) (_2!36505 (get!22423 lt!2358680))) s!2326))))

(assert (= (and d!1979359 res!2599528) b!6307396))

(assert (= (and d!1979359 c!1145271) b!6307395))

(assert (= (and d!1979359 (not c!1145271)) b!6307393))

(assert (= (and b!6307393 c!1145272) b!6307394))

(assert (= (and b!6307393 (not c!1145272)) b!6307392))

(assert (= (and d!1979359 res!2599529) b!6307397))

(assert (= (and b!6307397 res!2599525) b!6307390))

(assert (= (and b!6307390 res!2599527) b!6307398))

(assert (= (and d!1979359 (not res!2599526)) b!6307391))

(declare-fun m!7123830 () Bool)

(assert (=> b!6307390 m!7123830))

(declare-fun m!7123832 () Bool)

(assert (=> b!6307390 m!7123832))

(declare-fun m!7123834 () Bool)

(assert (=> b!6307396 m!7123834))

(declare-fun m!7123836 () Bool)

(assert (=> b!6307391 m!7123836))

(declare-fun m!7123838 () Bool)

(assert (=> b!6307392 m!7123838))

(assert (=> b!6307392 m!7123838))

(declare-fun m!7123840 () Bool)

(assert (=> b!6307392 m!7123840))

(declare-fun m!7123842 () Bool)

(assert (=> b!6307392 m!7123842))

(assert (=> b!6307392 m!7123838))

(declare-fun m!7123844 () Bool)

(assert (=> b!6307392 m!7123844))

(assert (=> b!6307397 m!7123830))

(declare-fun m!7123846 () Bool)

(assert (=> b!6307397 m!7123846))

(assert (=> b!6307398 m!7123830))

(declare-fun m!7123848 () Bool)

(assert (=> b!6307398 m!7123848))

(assert (=> d!1979359 m!7123836))

(declare-fun m!7123850 () Bool)

(assert (=> d!1979359 m!7123850))

(declare-fun m!7123852 () Bool)

(assert (=> d!1979359 m!7123852))

(assert (=> b!6306949 d!1979359))

(declare-fun d!1979369 () Bool)

(declare-fun choose!46839 (Int) Bool)

(assert (=> d!1979369 (= (Exists!3293 lambda!346432) (choose!46839 lambda!346432))))

(declare-fun bs!1577122 () Bool)

(assert (= bs!1577122 d!1979369))

(declare-fun m!7123854 () Bool)

(assert (=> bs!1577122 m!7123854))

(assert (=> b!6306949 d!1979369))

(declare-fun d!1979371 () Bool)

(assert (=> d!1979371 (= (Exists!3293 lambda!346431) (choose!46839 lambda!346431))))

(declare-fun bs!1577123 () Bool)

(assert (= bs!1577123 d!1979371))

(declare-fun m!7123856 () Bool)

(assert (=> bs!1577123 m!7123856))

(assert (=> b!6306949 d!1979371))

(declare-fun bs!1577128 () Bool)

(declare-fun d!1979373 () Bool)

(assert (= bs!1577128 (and d!1979373 b!6306949)))

(declare-fun lambda!346470 () Int)

(assert (=> bs!1577128 (= lambda!346470 lambda!346431)))

(assert (=> bs!1577128 (not (= lambda!346470 lambda!346432))))

(assert (=> d!1979373 true))

(assert (=> d!1979373 true))

(assert (=> d!1979373 true))

(assert (=> d!1979373 (= (isDefined!12817 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326)) (Exists!3293 lambda!346470))))

(declare-fun lt!2358685 () Unit!158223)

(declare-fun choose!46840 (Regex!16223 Regex!16223 List!64970) Unit!158223)

(assert (=> d!1979373 (= lt!2358685 (choose!46840 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326))))

(assert (=> d!1979373 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979373 (= (lemmaFindConcatSeparationEquivalentToExists!2292 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326) lt!2358685)))

(declare-fun bs!1577129 () Bool)

(assert (= bs!1577129 d!1979373))

(declare-fun m!7123870 () Bool)

(assert (=> bs!1577129 m!7123870))

(assert (=> bs!1577129 m!7123476))

(declare-fun m!7123872 () Bool)

(assert (=> bs!1577129 m!7123872))

(assert (=> bs!1577129 m!7123476))

(assert (=> bs!1577129 m!7123478))

(assert (=> bs!1577129 m!7123852))

(assert (=> b!6306949 d!1979373))

(declare-fun bs!1577130 () Bool)

(declare-fun d!1979381 () Bool)

(assert (= bs!1577130 (and d!1979381 b!6306949)))

(declare-fun lambda!346475 () Int)

(assert (=> bs!1577130 (= lambda!346475 lambda!346431)))

(assert (=> bs!1577130 (not (= lambda!346475 lambda!346432))))

(declare-fun bs!1577131 () Bool)

(assert (= bs!1577131 (and d!1979381 d!1979373)))

(assert (=> bs!1577131 (= lambda!346475 lambda!346470)))

(assert (=> d!1979381 true))

(assert (=> d!1979381 true))

(assert (=> d!1979381 true))

(declare-fun lambda!346476 () Int)

(assert (=> bs!1577130 (not (= lambda!346476 lambda!346431))))

(assert (=> bs!1577130 (= lambda!346476 lambda!346432)))

(assert (=> bs!1577131 (not (= lambda!346476 lambda!346470))))

(declare-fun bs!1577132 () Bool)

(assert (= bs!1577132 d!1979381))

(assert (=> bs!1577132 (not (= lambda!346476 lambda!346475))))

(assert (=> d!1979381 true))

(assert (=> d!1979381 true))

(assert (=> d!1979381 true))

(assert (=> d!1979381 (= (Exists!3293 lambda!346475) (Exists!3293 lambda!346476))))

(declare-fun lt!2358688 () Unit!158223)

(declare-fun choose!46841 (Regex!16223 Regex!16223 List!64970) Unit!158223)

(assert (=> d!1979381 (= lt!2358688 (choose!46841 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326))))

(assert (=> d!1979381 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979381 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1830 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326) lt!2358688)))

(declare-fun m!7123874 () Bool)

(assert (=> bs!1577132 m!7123874))

(declare-fun m!7123876 () Bool)

(assert (=> bs!1577132 m!7123876))

(declare-fun m!7123878 () Bool)

(assert (=> bs!1577132 m!7123878))

(assert (=> bs!1577132 m!7123852))

(assert (=> b!6306949 d!1979381))

(declare-fun d!1979383 () Bool)

(declare-fun isEmpty!36914 (Option!16114) Bool)

(assert (=> d!1979383 (= (isDefined!12817 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326)) (not (isEmpty!36914 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326))))))

(declare-fun bs!1577133 () Bool)

(assert (= bs!1577133 d!1979383))

(assert (=> bs!1577133 m!7123476))

(declare-fun m!7123880 () Bool)

(assert (=> bs!1577133 m!7123880))

(assert (=> b!6306949 d!1979383))

(declare-fun bs!1577134 () Bool)

(declare-fun d!1979385 () Bool)

(assert (= bs!1577134 (and d!1979385 d!1979277)))

(declare-fun lambda!346479 () Int)

(assert (=> bs!1577134 (= lambda!346479 lambda!346449)))

(declare-fun bs!1577135 () Bool)

(assert (= bs!1577135 (and d!1979385 d!1979337)))

(assert (=> bs!1577135 (= lambda!346479 lambda!346457)))

(declare-fun bs!1577136 () Bool)

(assert (= bs!1577136 (and d!1979385 d!1979347)))

(assert (=> bs!1577136 (= lambda!346479 lambda!346458)))

(declare-fun b!6307485 () Bool)

(declare-fun e!3833998 () Regex!16223)

(assert (=> b!6307485 (= e!3833998 (h!71292 (unfocusZipperList!1644 zl!343)))))

(declare-fun b!6307486 () Bool)

(declare-fun e!3833994 () Regex!16223)

(assert (=> b!6307486 (= e!3833994 EmptyLang!16223)))

(declare-fun e!3833997 () Bool)

(assert (=> d!1979385 e!3833997))

(declare-fun res!2599547 () Bool)

(assert (=> d!1979385 (=> (not res!2599547) (not e!3833997))))

(declare-fun lt!2358691 () Regex!16223)

(assert (=> d!1979385 (= res!2599547 (validRegex!7959 lt!2358691))))

(assert (=> d!1979385 (= lt!2358691 e!3833998)))

(declare-fun c!1145284 () Bool)

(declare-fun e!3833996 () Bool)

(assert (=> d!1979385 (= c!1145284 e!3833996)))

(declare-fun res!2599546 () Bool)

(assert (=> d!1979385 (=> (not res!2599546) (not e!3833996))))

(assert (=> d!1979385 (= res!2599546 ((_ is Cons!64844) (unfocusZipperList!1644 zl!343)))))

(assert (=> d!1979385 (forall!15373 (unfocusZipperList!1644 zl!343) lambda!346479)))

(assert (=> d!1979385 (= (generalisedUnion!2067 (unfocusZipperList!1644 zl!343)) lt!2358691)))

(declare-fun b!6307487 () Bool)

(assert (=> b!6307487 (= e!3833996 (isEmpty!36910 (t!378540 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6307488 () Bool)

(assert (=> b!6307488 (= e!3833998 e!3833994)))

(declare-fun c!1145281 () Bool)

(assert (=> b!6307488 (= c!1145281 ((_ is Cons!64844) (unfocusZipperList!1644 zl!343)))))

(declare-fun b!6307489 () Bool)

(declare-fun e!3833993 () Bool)

(declare-fun e!3833995 () Bool)

(assert (=> b!6307489 (= e!3833993 e!3833995)))

(declare-fun c!1145282 () Bool)

(declare-fun tail!12032 (List!64968) List!64968)

(assert (=> b!6307489 (= c!1145282 (isEmpty!36910 (tail!12032 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6307490 () Bool)

(assert (=> b!6307490 (= e!3833997 e!3833993)))

(declare-fun c!1145283 () Bool)

(assert (=> b!6307490 (= c!1145283 (isEmpty!36910 (unfocusZipperList!1644 zl!343)))))

(declare-fun b!6307491 () Bool)

(declare-fun head!12947 (List!64968) Regex!16223)

(assert (=> b!6307491 (= e!3833995 (= lt!2358691 (head!12947 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6307492 () Bool)

(declare-fun isUnion!1066 (Regex!16223) Bool)

(assert (=> b!6307492 (= e!3833995 (isUnion!1066 lt!2358691))))

(declare-fun b!6307493 () Bool)

(assert (=> b!6307493 (= e!3833994 (Union!16223 (h!71292 (unfocusZipperList!1644 zl!343)) (generalisedUnion!2067 (t!378540 (unfocusZipperList!1644 zl!343)))))))

(declare-fun b!6307494 () Bool)

(declare-fun isEmptyLang!1636 (Regex!16223) Bool)

(assert (=> b!6307494 (= e!3833993 (isEmptyLang!1636 lt!2358691))))

(assert (= (and d!1979385 res!2599546) b!6307487))

(assert (= (and d!1979385 c!1145284) b!6307485))

(assert (= (and d!1979385 (not c!1145284)) b!6307488))

(assert (= (and b!6307488 c!1145281) b!6307493))

(assert (= (and b!6307488 (not c!1145281)) b!6307486))

(assert (= (and d!1979385 res!2599547) b!6307490))

(assert (= (and b!6307490 c!1145283) b!6307494))

(assert (= (and b!6307490 (not c!1145283)) b!6307489))

(assert (= (and b!6307489 c!1145282) b!6307491))

(assert (= (and b!6307489 (not c!1145282)) b!6307492))

(declare-fun m!7123882 () Bool)

(assert (=> b!6307494 m!7123882))

(declare-fun m!7123884 () Bool)

(assert (=> b!6307493 m!7123884))

(assert (=> b!6307491 m!7123510))

(declare-fun m!7123886 () Bool)

(assert (=> b!6307491 m!7123886))

(declare-fun m!7123888 () Bool)

(assert (=> b!6307487 m!7123888))

(declare-fun m!7123890 () Bool)

(assert (=> b!6307492 m!7123890))

(declare-fun m!7123892 () Bool)

(assert (=> d!1979385 m!7123892))

(assert (=> d!1979385 m!7123510))

(declare-fun m!7123894 () Bool)

(assert (=> d!1979385 m!7123894))

(assert (=> b!6307489 m!7123510))

(declare-fun m!7123896 () Bool)

(assert (=> b!6307489 m!7123896))

(assert (=> b!6307489 m!7123896))

(declare-fun m!7123898 () Bool)

(assert (=> b!6307489 m!7123898))

(assert (=> b!6307490 m!7123510))

(declare-fun m!7123900 () Bool)

(assert (=> b!6307490 m!7123900))

(assert (=> b!6306932 d!1979385))

(declare-fun bs!1577137 () Bool)

(declare-fun d!1979387 () Bool)

(assert (= bs!1577137 (and d!1979387 d!1979277)))

(declare-fun lambda!346482 () Int)

(assert (=> bs!1577137 (= lambda!346482 lambda!346449)))

(declare-fun bs!1577138 () Bool)

(assert (= bs!1577138 (and d!1979387 d!1979337)))

(assert (=> bs!1577138 (= lambda!346482 lambda!346457)))

(declare-fun bs!1577139 () Bool)

(assert (= bs!1577139 (and d!1979387 d!1979347)))

(assert (=> bs!1577139 (= lambda!346482 lambda!346458)))

(declare-fun bs!1577140 () Bool)

(assert (= bs!1577140 (and d!1979387 d!1979385)))

(assert (=> bs!1577140 (= lambda!346482 lambda!346479)))

(declare-fun lt!2358694 () List!64968)

(assert (=> d!1979387 (forall!15373 lt!2358694 lambda!346482)))

(declare-fun e!3834001 () List!64968)

(assert (=> d!1979387 (= lt!2358694 e!3834001)))

(declare-fun c!1145287 () Bool)

(assert (=> d!1979387 (= c!1145287 ((_ is Cons!64845) zl!343))))

(assert (=> d!1979387 (= (unfocusZipperList!1644 zl!343) lt!2358694)))

(declare-fun b!6307499 () Bool)

(assert (=> b!6307499 (= e!3834001 (Cons!64844 (generalisedConcat!1820 (exprs!6107 (h!71293 zl!343))) (unfocusZipperList!1644 (t!378541 zl!343))))))

(declare-fun b!6307500 () Bool)

(assert (=> b!6307500 (= e!3834001 Nil!64844)))

(assert (= (and d!1979387 c!1145287) b!6307499))

(assert (= (and d!1979387 (not c!1145287)) b!6307500))

(declare-fun m!7123902 () Bool)

(assert (=> d!1979387 m!7123902))

(assert (=> b!6307499 m!7123458))

(declare-fun m!7123904 () Bool)

(assert (=> b!6307499 m!7123904))

(assert (=> b!6306932 d!1979387))

(declare-fun d!1979389 () Bool)

(assert (=> d!1979389 (= (isEmpty!36910 (t!378540 (exprs!6107 (h!71293 zl!343)))) ((_ is Nil!64844) (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> b!6306943 d!1979389))

(declare-fun e!3834004 () Bool)

(declare-fun d!1979391 () Bool)

(assert (=> d!1979391 (= (matchZipper!2235 ((_ map or) lt!2358612 lt!2358618) (t!378542 s!2326)) e!3834004)))

(declare-fun res!2599550 () Bool)

(assert (=> d!1979391 (=> res!2599550 e!3834004)))

(assert (=> d!1979391 (= res!2599550 (matchZipper!2235 lt!2358612 (t!378542 s!2326)))))

(declare-fun lt!2358697 () Unit!158223)

(declare-fun choose!46842 ((InoxSet Context!11214) (InoxSet Context!11214) List!64970) Unit!158223)

(assert (=> d!1979391 (= lt!2358697 (choose!46842 lt!2358612 lt!2358618 (t!378542 s!2326)))))

(assert (=> d!1979391 (= (lemmaZipperConcatMatchesSameAsBothZippers!1054 lt!2358612 lt!2358618 (t!378542 s!2326)) lt!2358697)))

(declare-fun b!6307503 () Bool)

(assert (=> b!6307503 (= e!3834004 (matchZipper!2235 lt!2358618 (t!378542 s!2326)))))

(assert (= (and d!1979391 (not res!2599550)) b!6307503))

(assert (=> d!1979391 m!7123526))

(assert (=> d!1979391 m!7123514))

(declare-fun m!7123906 () Bool)

(assert (=> d!1979391 m!7123906))

(assert (=> b!6307503 m!7123462))

(assert (=> b!6306951 d!1979391))

(assert (=> b!6306951 d!1979343))

(declare-fun d!1979393 () Bool)

(declare-fun c!1145288 () Bool)

(assert (=> d!1979393 (= c!1145288 (isEmpty!36912 (t!378542 s!2326)))))

(declare-fun e!3834005 () Bool)

(assert (=> d!1979393 (= (matchZipper!2235 ((_ map or) lt!2358612 lt!2358618) (t!378542 s!2326)) e!3834005)))

(declare-fun b!6307504 () Bool)

(assert (=> b!6307504 (= e!3834005 (nullableZipper!1993 ((_ map or) lt!2358612 lt!2358618)))))

(declare-fun b!6307505 () Bool)

(assert (=> b!6307505 (= e!3834005 (matchZipper!2235 (derivationStepZipper!2189 ((_ map or) lt!2358612 lt!2358618) (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))))))

(assert (= (and d!1979393 c!1145288) b!6307504))

(assert (= (and d!1979393 (not c!1145288)) b!6307505))

(assert (=> d!1979393 m!7123690))

(declare-fun m!7123908 () Bool)

(assert (=> b!6307504 m!7123908))

(assert (=> b!6307505 m!7123694))

(assert (=> b!6307505 m!7123694))

(declare-fun m!7123910 () Bool)

(assert (=> b!6307505 m!7123910))

(assert (=> b!6307505 m!7123698))

(assert (=> b!6307505 m!7123910))

(assert (=> b!6307505 m!7123698))

(declare-fun m!7123912 () Bool)

(assert (=> b!6307505 m!7123912))

(assert (=> b!6306951 d!1979393))

(declare-fun bs!1577141 () Bool)

(declare-fun d!1979395 () Bool)

(assert (= bs!1577141 (and d!1979395 d!1979385)))

(declare-fun lambda!346485 () Int)

(assert (=> bs!1577141 (= lambda!346485 lambda!346479)))

(declare-fun bs!1577142 () Bool)

(assert (= bs!1577142 (and d!1979395 d!1979387)))

(assert (=> bs!1577142 (= lambda!346485 lambda!346482)))

(declare-fun bs!1577143 () Bool)

(assert (= bs!1577143 (and d!1979395 d!1979347)))

(assert (=> bs!1577143 (= lambda!346485 lambda!346458)))

(declare-fun bs!1577144 () Bool)

(assert (= bs!1577144 (and d!1979395 d!1979337)))

(assert (=> bs!1577144 (= lambda!346485 lambda!346457)))

(declare-fun bs!1577145 () Bool)

(assert (= bs!1577145 (and d!1979395 d!1979277)))

(assert (=> bs!1577145 (= lambda!346485 lambda!346449)))

(declare-fun b!6307527 () Bool)

(declare-fun e!3834018 () Bool)

(declare-fun e!3834019 () Bool)

(assert (=> b!6307527 (= e!3834018 e!3834019)))

(declare-fun c!1145297 () Bool)

(assert (=> b!6307527 (= c!1145297 (isEmpty!36910 (tail!12032 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6307528 () Bool)

(declare-fun lt!2358700 () Regex!16223)

(declare-fun isEmptyExpr!1629 (Regex!16223) Bool)

(assert (=> b!6307528 (= e!3834018 (isEmptyExpr!1629 lt!2358700))))

(declare-fun b!6307529 () Bool)

(declare-fun e!3834023 () Regex!16223)

(assert (=> b!6307529 (= e!3834023 (Concat!25068 (h!71292 (exprs!6107 (h!71293 zl!343))) (generalisedConcat!1820 (t!378540 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6307530 () Bool)

(declare-fun e!3834022 () Bool)

(assert (=> b!6307530 (= e!3834022 (isEmpty!36910 (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6307531 () Bool)

(assert (=> b!6307531 (= e!3834019 (= lt!2358700 (head!12947 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun e!3834020 () Bool)

(assert (=> d!1979395 e!3834020))

(declare-fun res!2599555 () Bool)

(assert (=> d!1979395 (=> (not res!2599555) (not e!3834020))))

(assert (=> d!1979395 (= res!2599555 (validRegex!7959 lt!2358700))))

(declare-fun e!3834021 () Regex!16223)

(assert (=> d!1979395 (= lt!2358700 e!3834021)))

(declare-fun c!1145299 () Bool)

(assert (=> d!1979395 (= c!1145299 e!3834022)))

(declare-fun res!2599556 () Bool)

(assert (=> d!1979395 (=> (not res!2599556) (not e!3834022))))

(assert (=> d!1979395 (= res!2599556 ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343))))))

(assert (=> d!1979395 (forall!15373 (exprs!6107 (h!71293 zl!343)) lambda!346485)))

(assert (=> d!1979395 (= (generalisedConcat!1820 (exprs!6107 (h!71293 zl!343))) lt!2358700)))

(declare-fun b!6307526 () Bool)

(assert (=> b!6307526 (= e!3834021 (h!71292 (exprs!6107 (h!71293 zl!343))))))

(declare-fun b!6307532 () Bool)

(assert (=> b!6307532 (= e!3834023 EmptyExpr!16223)))

(declare-fun b!6307533 () Bool)

(assert (=> b!6307533 (= e!3834020 e!3834018)))

(declare-fun c!1145300 () Bool)

(assert (=> b!6307533 (= c!1145300 (isEmpty!36910 (exprs!6107 (h!71293 zl!343))))))

(declare-fun b!6307534 () Bool)

(assert (=> b!6307534 (= e!3834021 e!3834023)))

(declare-fun c!1145298 () Bool)

(assert (=> b!6307534 (= c!1145298 ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343))))))

(declare-fun b!6307535 () Bool)

(declare-fun isConcat!1152 (Regex!16223) Bool)

(assert (=> b!6307535 (= e!3834019 (isConcat!1152 lt!2358700))))

(assert (= (and d!1979395 res!2599556) b!6307530))

(assert (= (and d!1979395 c!1145299) b!6307526))

(assert (= (and d!1979395 (not c!1145299)) b!6307534))

(assert (= (and b!6307534 c!1145298) b!6307529))

(assert (= (and b!6307534 (not c!1145298)) b!6307532))

(assert (= (and d!1979395 res!2599555) b!6307533))

(assert (= (and b!6307533 c!1145300) b!6307528))

(assert (= (and b!6307533 (not c!1145300)) b!6307527))

(assert (= (and b!6307527 c!1145297) b!6307531))

(assert (= (and b!6307527 (not c!1145297)) b!6307535))

(assert (=> b!6307530 m!7123454))

(declare-fun m!7123914 () Bool)

(assert (=> d!1979395 m!7123914))

(declare-fun m!7123916 () Bool)

(assert (=> d!1979395 m!7123916))

(declare-fun m!7123918 () Bool)

(assert (=> b!6307528 m!7123918))

(declare-fun m!7123920 () Bool)

(assert (=> b!6307529 m!7123920))

(declare-fun m!7123922 () Bool)

(assert (=> b!6307533 m!7123922))

(declare-fun m!7123924 () Bool)

(assert (=> b!6307531 m!7123924))

(declare-fun m!7123926 () Bool)

(assert (=> b!6307527 m!7123926))

(assert (=> b!6307527 m!7123926))

(declare-fun m!7123928 () Bool)

(assert (=> b!6307527 m!7123928))

(declare-fun m!7123930 () Bool)

(assert (=> b!6307535 m!7123930))

(assert (=> b!6306941 d!1979395))

(declare-fun bs!1577146 () Bool)

(declare-fun b!6307568 () Bool)

(assert (= bs!1577146 (and b!6307568 b!6306949)))

(declare-fun lambda!346490 () Int)

(assert (=> bs!1577146 (not (= lambda!346490 lambda!346432))))

(assert (=> bs!1577146 (not (= lambda!346490 lambda!346431))))

(declare-fun bs!1577147 () Bool)

(assert (= bs!1577147 (and b!6307568 d!1979381)))

(assert (=> bs!1577147 (not (= lambda!346490 lambda!346476))))

(assert (=> bs!1577147 (not (= lambda!346490 lambda!346475))))

(declare-fun bs!1577148 () Bool)

(assert (= bs!1577148 (and b!6307568 d!1979373)))

(assert (=> bs!1577148 (not (= lambda!346490 lambda!346470))))

(assert (=> b!6307568 true))

(assert (=> b!6307568 true))

(declare-fun bs!1577149 () Bool)

(declare-fun b!6307570 () Bool)

(assert (= bs!1577149 (and b!6307570 b!6306949)))

(declare-fun lambda!346491 () Int)

(assert (=> bs!1577149 (= lambda!346491 lambda!346432)))

(declare-fun bs!1577150 () Bool)

(assert (= bs!1577150 (and b!6307570 b!6307568)))

(assert (=> bs!1577150 (not (= lambda!346491 lambda!346490))))

(assert (=> bs!1577149 (not (= lambda!346491 lambda!346431))))

(declare-fun bs!1577151 () Bool)

(assert (= bs!1577151 (and b!6307570 d!1979381)))

(assert (=> bs!1577151 (= lambda!346491 lambda!346476)))

(assert (=> bs!1577151 (not (= lambda!346491 lambda!346475))))

(declare-fun bs!1577152 () Bool)

(assert (= bs!1577152 (and b!6307570 d!1979373)))

(assert (=> bs!1577152 (not (= lambda!346491 lambda!346470))))

(assert (=> b!6307570 true))

(assert (=> b!6307570 true))

(declare-fun e!3834048 () Bool)

(declare-fun call!535202 () Bool)

(assert (=> b!6307568 (= e!3834048 call!535202)))

(declare-fun b!6307569 () Bool)

(declare-fun c!1145309 () Bool)

(assert (=> b!6307569 (= c!1145309 ((_ is ElementMatch!16223) r!7292))))

(declare-fun e!3834044 () Bool)

(declare-fun e!3834045 () Bool)

(assert (=> b!6307569 (= e!3834044 e!3834045)))

(declare-fun e!3834047 () Bool)

(assert (=> b!6307570 (= e!3834047 call!535202)))

(declare-fun b!6307571 () Bool)

(assert (=> b!6307571 (= e!3834045 (= s!2326 (Cons!64846 (c!1145130 r!7292) Nil!64846)))))

(declare-fun b!6307572 () Bool)

(declare-fun e!3834043 () Bool)

(declare-fun call!535203 () Bool)

(assert (=> b!6307572 (= e!3834043 call!535203)))

(declare-fun b!6307573 () Bool)

(declare-fun e!3834046 () Bool)

(assert (=> b!6307573 (= e!3834046 (matchRSpec!3324 (regTwo!32959 r!7292) s!2326))))

(declare-fun b!6307574 () Bool)

(declare-fun c!1145310 () Bool)

(assert (=> b!6307574 (= c!1145310 ((_ is Union!16223) r!7292))))

(declare-fun e!3834042 () Bool)

(assert (=> b!6307574 (= e!3834045 e!3834042)))

(declare-fun b!6307575 () Bool)

(declare-fun res!2599574 () Bool)

(assert (=> b!6307575 (=> res!2599574 e!3834048)))

(assert (=> b!6307575 (= res!2599574 call!535203)))

(assert (=> b!6307575 (= e!3834047 e!3834048)))

(declare-fun b!6307576 () Bool)

(assert (=> b!6307576 (= e!3834043 e!3834044)))

(declare-fun res!2599573 () Bool)

(assert (=> b!6307576 (= res!2599573 (not ((_ is EmptyLang!16223) r!7292)))))

(assert (=> b!6307576 (=> (not res!2599573) (not e!3834044))))

(declare-fun d!1979397 () Bool)

(declare-fun c!1145311 () Bool)

(assert (=> d!1979397 (= c!1145311 ((_ is EmptyExpr!16223) r!7292))))

(assert (=> d!1979397 (= (matchRSpec!3324 r!7292 s!2326) e!3834043)))

(declare-fun b!6307577 () Bool)

(assert (=> b!6307577 (= e!3834042 e!3834047)))

(declare-fun c!1145312 () Bool)

(assert (=> b!6307577 (= c!1145312 ((_ is Star!16223) r!7292))))

(declare-fun b!6307578 () Bool)

(assert (=> b!6307578 (= e!3834042 e!3834046)))

(declare-fun res!2599575 () Bool)

(assert (=> b!6307578 (= res!2599575 (matchRSpec!3324 (regOne!32959 r!7292) s!2326))))

(assert (=> b!6307578 (=> res!2599575 e!3834046)))

(declare-fun bm!535197 () Bool)

(assert (=> bm!535197 (= call!535203 (isEmpty!36912 s!2326))))

(declare-fun bm!535198 () Bool)

(assert (=> bm!535198 (= call!535202 (Exists!3293 (ite c!1145312 lambda!346490 lambda!346491)))))

(assert (= (and d!1979397 c!1145311) b!6307572))

(assert (= (and d!1979397 (not c!1145311)) b!6307576))

(assert (= (and b!6307576 res!2599573) b!6307569))

(assert (= (and b!6307569 c!1145309) b!6307571))

(assert (= (and b!6307569 (not c!1145309)) b!6307574))

(assert (= (and b!6307574 c!1145310) b!6307578))

(assert (= (and b!6307574 (not c!1145310)) b!6307577))

(assert (= (and b!6307578 (not res!2599575)) b!6307573))

(assert (= (and b!6307577 c!1145312) b!6307575))

(assert (= (and b!6307577 (not c!1145312)) b!6307570))

(assert (= (and b!6307575 (not res!2599574)) b!6307568))

(assert (= (or b!6307568 b!6307570) bm!535198))

(assert (= (or b!6307572 b!6307575) bm!535197))

(declare-fun m!7123932 () Bool)

(assert (=> b!6307573 m!7123932))

(declare-fun m!7123934 () Bool)

(assert (=> b!6307578 m!7123934))

(declare-fun m!7123936 () Bool)

(assert (=> bm!535197 m!7123936))

(declare-fun m!7123938 () Bool)

(assert (=> bm!535198 m!7123938))

(assert (=> b!6306942 d!1979397))

(declare-fun b!6307607 () Bool)

(declare-fun res!2599593 () Bool)

(declare-fun e!3834064 () Bool)

(assert (=> b!6307607 (=> res!2599593 e!3834064)))

(assert (=> b!6307607 (= res!2599593 (not ((_ is ElementMatch!16223) r!7292)))))

(declare-fun e!3834069 () Bool)

(assert (=> b!6307607 (= e!3834069 e!3834064)))

(declare-fun b!6307608 () Bool)

(declare-fun res!2599596 () Bool)

(declare-fun e!3834065 () Bool)

(assert (=> b!6307608 (=> (not res!2599596) (not e!3834065))))

(assert (=> b!6307608 (= res!2599596 (isEmpty!36912 (tail!12031 s!2326)))))

(declare-fun d!1979399 () Bool)

(declare-fun e!3834066 () Bool)

(assert (=> d!1979399 e!3834066))

(declare-fun c!1145320 () Bool)

(assert (=> d!1979399 (= c!1145320 ((_ is EmptyExpr!16223) r!7292))))

(declare-fun lt!2358703 () Bool)

(declare-fun e!3834067 () Bool)

(assert (=> d!1979399 (= lt!2358703 e!3834067)))

(declare-fun c!1145321 () Bool)

(assert (=> d!1979399 (= c!1145321 (isEmpty!36912 s!2326))))

(assert (=> d!1979399 (validRegex!7959 r!7292)))

(assert (=> d!1979399 (= (matchR!8406 r!7292 s!2326) lt!2358703)))

(declare-fun b!6307609 () Bool)

(declare-fun res!2599597 () Bool)

(assert (=> b!6307609 (=> res!2599597 e!3834064)))

(assert (=> b!6307609 (= res!2599597 e!3834065)))

(declare-fun res!2599598 () Bool)

(assert (=> b!6307609 (=> (not res!2599598) (not e!3834065))))

(assert (=> b!6307609 (= res!2599598 lt!2358703)))

(declare-fun b!6307610 () Bool)

(declare-fun call!535206 () Bool)

(assert (=> b!6307610 (= e!3834066 (= lt!2358703 call!535206))))

(declare-fun bm!535201 () Bool)

(assert (=> bm!535201 (= call!535206 (isEmpty!36912 s!2326))))

(declare-fun b!6307611 () Bool)

(assert (=> b!6307611 (= e!3834067 (nullable!6216 r!7292))))

(declare-fun b!6307612 () Bool)

(declare-fun e!3834063 () Bool)

(assert (=> b!6307612 (= e!3834063 (not (= (head!12946 s!2326) (c!1145130 r!7292))))))

(declare-fun b!6307613 () Bool)

(declare-fun res!2599592 () Bool)

(assert (=> b!6307613 (=> (not res!2599592) (not e!3834065))))

(assert (=> b!6307613 (= res!2599592 (not call!535206))))

(declare-fun b!6307614 () Bool)

(assert (=> b!6307614 (= e!3834065 (= (head!12946 s!2326) (c!1145130 r!7292)))))

(declare-fun b!6307615 () Bool)

(declare-fun res!2599599 () Bool)

(assert (=> b!6307615 (=> res!2599599 e!3834063)))

(assert (=> b!6307615 (= res!2599599 (not (isEmpty!36912 (tail!12031 s!2326))))))

(declare-fun b!6307616 () Bool)

(assert (=> b!6307616 (= e!3834066 e!3834069)))

(declare-fun c!1145319 () Bool)

(assert (=> b!6307616 (= c!1145319 ((_ is EmptyLang!16223) r!7292))))

(declare-fun b!6307617 () Bool)

(declare-fun e!3834068 () Bool)

(assert (=> b!6307617 (= e!3834064 e!3834068)))

(declare-fun res!2599594 () Bool)

(assert (=> b!6307617 (=> (not res!2599594) (not e!3834068))))

(assert (=> b!6307617 (= res!2599594 (not lt!2358703))))

(declare-fun b!6307618 () Bool)

(assert (=> b!6307618 (= e!3834069 (not lt!2358703))))

(declare-fun b!6307619 () Bool)

(assert (=> b!6307619 (= e!3834068 e!3834063)))

(declare-fun res!2599595 () Bool)

(assert (=> b!6307619 (=> res!2599595 e!3834063)))

(assert (=> b!6307619 (= res!2599595 call!535206)))

(declare-fun b!6307620 () Bool)

(declare-fun derivativeStep!4932 (Regex!16223 C!32716) Regex!16223)

(assert (=> b!6307620 (= e!3834067 (matchR!8406 (derivativeStep!4932 r!7292 (head!12946 s!2326)) (tail!12031 s!2326)))))

(assert (= (and d!1979399 c!1145321) b!6307611))

(assert (= (and d!1979399 (not c!1145321)) b!6307620))

(assert (= (and d!1979399 c!1145320) b!6307610))

(assert (= (and d!1979399 (not c!1145320)) b!6307616))

(assert (= (and b!6307616 c!1145319) b!6307618))

(assert (= (and b!6307616 (not c!1145319)) b!6307607))

(assert (= (and b!6307607 (not res!2599593)) b!6307609))

(assert (= (and b!6307609 res!2599598) b!6307613))

(assert (= (and b!6307613 res!2599592) b!6307608))

(assert (= (and b!6307608 res!2599596) b!6307614))

(assert (= (and b!6307609 (not res!2599597)) b!6307617))

(assert (= (and b!6307617 res!2599594) b!6307619))

(assert (= (and b!6307619 (not res!2599595)) b!6307615))

(assert (= (and b!6307615 (not res!2599599)) b!6307612))

(assert (= (or b!6307610 b!6307619 b!6307613) bm!535201))

(assert (=> bm!535201 m!7123936))

(assert (=> d!1979399 m!7123936))

(assert (=> d!1979399 m!7123518))

(declare-fun m!7123940 () Bool)

(assert (=> b!6307612 m!7123940))

(declare-fun m!7123942 () Bool)

(assert (=> b!6307611 m!7123942))

(declare-fun m!7123944 () Bool)

(assert (=> b!6307615 m!7123944))

(assert (=> b!6307615 m!7123944))

(declare-fun m!7123946 () Bool)

(assert (=> b!6307615 m!7123946))

(assert (=> b!6307608 m!7123944))

(assert (=> b!6307608 m!7123944))

(assert (=> b!6307608 m!7123946))

(assert (=> b!6307614 m!7123940))

(assert (=> b!6307620 m!7123940))

(assert (=> b!6307620 m!7123940))

(declare-fun m!7123948 () Bool)

(assert (=> b!6307620 m!7123948))

(assert (=> b!6307620 m!7123944))

(assert (=> b!6307620 m!7123948))

(assert (=> b!6307620 m!7123944))

(declare-fun m!7123950 () Bool)

(assert (=> b!6307620 m!7123950))

(assert (=> b!6306942 d!1979399))

(declare-fun d!1979401 () Bool)

(assert (=> d!1979401 (= (matchR!8406 r!7292 s!2326) (matchRSpec!3324 r!7292 s!2326))))

(declare-fun lt!2358706 () Unit!158223)

(declare-fun choose!46843 (Regex!16223 List!64970) Unit!158223)

(assert (=> d!1979401 (= lt!2358706 (choose!46843 r!7292 s!2326))))

(assert (=> d!1979401 (validRegex!7959 r!7292)))

(assert (=> d!1979401 (= (mainMatchTheorem!3324 r!7292 s!2326) lt!2358706)))

(declare-fun bs!1577153 () Bool)

(assert (= bs!1577153 d!1979401))

(assert (=> bs!1577153 m!7123506))

(assert (=> bs!1577153 m!7123504))

(declare-fun m!7123952 () Bool)

(assert (=> bs!1577153 m!7123952))

(assert (=> bs!1577153 m!7123518))

(assert (=> b!6306942 d!1979401))

(declare-fun c!1145322 () Bool)

(declare-fun bm!535202 () Bool)

(declare-fun call!535211 () List!64968)

(declare-fun call!535209 () (InoxSet Context!11214))

(assert (=> bm!535202 (= call!535209 (derivationStepZipperDown!1471 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))) (ite c!1145322 lt!2358606 (Context!11215 call!535211)) (h!71294 s!2326)))))

(declare-fun c!1145323 () Bool)

(declare-fun bm!535203 () Bool)

(declare-fun call!535210 () List!64968)

(declare-fun call!535208 () (InoxSet Context!11214))

(declare-fun c!1145324 () Bool)

(assert (=> bm!535203 (= call!535208 (derivationStepZipperDown!1471 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))) (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210)) (h!71294 s!2326)))))

(declare-fun b!6307621 () Bool)

(declare-fun e!3834071 () (InoxSet Context!11214))

(assert (=> b!6307621 (= e!3834071 (store ((as const (Array Context!11214 Bool)) false) lt!2358606 true))))

(declare-fun b!6307622 () Bool)

(declare-fun c!1145326 () Bool)

(assert (=> b!6307622 (= c!1145326 ((_ is Star!16223) (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun e!3834072 () (InoxSet Context!11214))

(declare-fun e!3834073 () (InoxSet Context!11214))

(assert (=> b!6307622 (= e!3834072 e!3834073)))

(declare-fun b!6307623 () Bool)

(assert (=> b!6307623 (= e!3834073 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307624 () Bool)

(declare-fun e!3834075 () (InoxSet Context!11214))

(assert (=> b!6307624 (= e!3834071 e!3834075)))

(assert (=> b!6307624 (= c!1145322 ((_ is Union!16223) (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun b!6307625 () Bool)

(declare-fun e!3834070 () (InoxSet Context!11214))

(assert (=> b!6307625 (= e!3834070 e!3834072)))

(assert (=> b!6307625 (= c!1145324 ((_ is Concat!25068) (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun b!6307626 () Bool)

(declare-fun e!3834074 () Bool)

(assert (=> b!6307626 (= c!1145323 e!3834074)))

(declare-fun res!2599600 () Bool)

(assert (=> b!6307626 (=> (not res!2599600) (not e!3834074))))

(assert (=> b!6307626 (= res!2599600 ((_ is Concat!25068) (regOne!32958 (regOne!32958 r!7292))))))

(assert (=> b!6307626 (= e!3834075 e!3834070)))

(declare-fun bm!535204 () Bool)

(assert (=> bm!535204 (= call!535211 ($colon$colon!2088 (exprs!6107 lt!2358606) (ite (or c!1145323 c!1145324) (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 r!7292)))))))

(declare-fun b!6307627 () Bool)

(declare-fun call!535207 () (InoxSet Context!11214))

(assert (=> b!6307627 (= e!3834070 ((_ map or) call!535209 call!535207))))

(declare-fun b!6307628 () Bool)

(declare-fun call!535212 () (InoxSet Context!11214))

(assert (=> b!6307628 (= e!3834073 call!535212)))

(declare-fun b!6307629 () Bool)

(assert (=> b!6307629 (= e!3834072 call!535212)))

(declare-fun b!6307630 () Bool)

(assert (=> b!6307630 (= e!3834075 ((_ map or) call!535209 call!535208))))

(declare-fun b!6307631 () Bool)

(assert (=> b!6307631 (= e!3834074 (nullable!6216 (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))))

(declare-fun bm!535206 () Bool)

(assert (=> bm!535206 (= call!535212 call!535207)))

(declare-fun bm!535207 () Bool)

(assert (=> bm!535207 (= call!535210 call!535211)))

(declare-fun bm!535205 () Bool)

(assert (=> bm!535205 (= call!535207 call!535208)))

(declare-fun d!1979403 () Bool)

(declare-fun c!1145325 () Bool)

(assert (=> d!1979403 (= c!1145325 (and ((_ is ElementMatch!16223) (regOne!32958 (regOne!32958 r!7292))) (= (c!1145130 (regOne!32958 (regOne!32958 r!7292))) (h!71294 s!2326))))))

(assert (=> d!1979403 (= (derivationStepZipperDown!1471 (regOne!32958 (regOne!32958 r!7292)) lt!2358606 (h!71294 s!2326)) e!3834071)))

(assert (= (and d!1979403 c!1145325) b!6307621))

(assert (= (and d!1979403 (not c!1145325)) b!6307624))

(assert (= (and b!6307624 c!1145322) b!6307630))

(assert (= (and b!6307624 (not c!1145322)) b!6307626))

(assert (= (and b!6307626 res!2599600) b!6307631))

(assert (= (and b!6307626 c!1145323) b!6307627))

(assert (= (and b!6307626 (not c!1145323)) b!6307625))

(assert (= (and b!6307625 c!1145324) b!6307629))

(assert (= (and b!6307625 (not c!1145324)) b!6307622))

(assert (= (and b!6307622 c!1145326) b!6307628))

(assert (= (and b!6307622 (not c!1145326)) b!6307623))

(assert (= (or b!6307629 b!6307628) bm!535207))

(assert (= (or b!6307629 b!6307628) bm!535206))

(assert (= (or b!6307627 bm!535207) bm!535204))

(assert (= (or b!6307627 bm!535206) bm!535205))

(assert (= (or b!6307630 bm!535205) bm!535203))

(assert (= (or b!6307630 b!6307627) bm!535202))

(declare-fun m!7123954 () Bool)

(assert (=> bm!535202 m!7123954))

(declare-fun m!7123956 () Bool)

(assert (=> bm!535204 m!7123956))

(declare-fun m!7123958 () Bool)

(assert (=> b!6307631 m!7123958))

(declare-fun m!7123960 () Bool)

(assert (=> bm!535203 m!7123960))

(declare-fun m!7123962 () Bool)

(assert (=> b!6307621 m!7123962))

(assert (=> b!6306931 d!1979403))

(declare-fun e!3834078 () Bool)

(assert (=> b!6306929 (= tp!1757050 e!3834078)))

(declare-fun b!6307642 () Bool)

(assert (=> b!6307642 (= e!3834078 tp_is_empty!41699)))

(declare-fun b!6307643 () Bool)

(declare-fun tp!1757123 () Bool)

(declare-fun tp!1757120 () Bool)

(assert (=> b!6307643 (= e!3834078 (and tp!1757123 tp!1757120))))

(declare-fun b!6307644 () Bool)

(declare-fun tp!1757119 () Bool)

(assert (=> b!6307644 (= e!3834078 tp!1757119)))

(declare-fun b!6307645 () Bool)

(declare-fun tp!1757121 () Bool)

(declare-fun tp!1757122 () Bool)

(assert (=> b!6307645 (= e!3834078 (and tp!1757121 tp!1757122))))

(assert (= (and b!6306929 ((_ is ElementMatch!16223) (regOne!32959 r!7292))) b!6307642))

(assert (= (and b!6306929 ((_ is Concat!25068) (regOne!32959 r!7292))) b!6307643))

(assert (= (and b!6306929 ((_ is Star!16223) (regOne!32959 r!7292))) b!6307644))

(assert (= (and b!6306929 ((_ is Union!16223) (regOne!32959 r!7292))) b!6307645))

(declare-fun e!3834079 () Bool)

(assert (=> b!6306929 (= tp!1757047 e!3834079)))

(declare-fun b!6307646 () Bool)

(assert (=> b!6307646 (= e!3834079 tp_is_empty!41699)))

(declare-fun b!6307647 () Bool)

(declare-fun tp!1757128 () Bool)

(declare-fun tp!1757125 () Bool)

(assert (=> b!6307647 (= e!3834079 (and tp!1757128 tp!1757125))))

(declare-fun b!6307648 () Bool)

(declare-fun tp!1757124 () Bool)

(assert (=> b!6307648 (= e!3834079 tp!1757124)))

(declare-fun b!6307649 () Bool)

(declare-fun tp!1757126 () Bool)

(declare-fun tp!1757127 () Bool)

(assert (=> b!6307649 (= e!3834079 (and tp!1757126 tp!1757127))))

(assert (= (and b!6306929 ((_ is ElementMatch!16223) (regTwo!32959 r!7292))) b!6307646))

(assert (= (and b!6306929 ((_ is Concat!25068) (regTwo!32959 r!7292))) b!6307647))

(assert (= (and b!6306929 ((_ is Star!16223) (regTwo!32959 r!7292))) b!6307648))

(assert (= (and b!6306929 ((_ is Union!16223) (regTwo!32959 r!7292))) b!6307649))

(declare-fun e!3834080 () Bool)

(assert (=> b!6306945 (= tp!1757046 e!3834080)))

(declare-fun b!6307650 () Bool)

(assert (=> b!6307650 (= e!3834080 tp_is_empty!41699)))

(declare-fun b!6307651 () Bool)

(declare-fun tp!1757133 () Bool)

(declare-fun tp!1757130 () Bool)

(assert (=> b!6307651 (= e!3834080 (and tp!1757133 tp!1757130))))

(declare-fun b!6307652 () Bool)

(declare-fun tp!1757129 () Bool)

(assert (=> b!6307652 (= e!3834080 tp!1757129)))

(declare-fun b!6307653 () Bool)

(declare-fun tp!1757131 () Bool)

(declare-fun tp!1757132 () Bool)

(assert (=> b!6307653 (= e!3834080 (and tp!1757131 tp!1757132))))

(assert (= (and b!6306945 ((_ is ElementMatch!16223) (regOne!32958 r!7292))) b!6307650))

(assert (= (and b!6306945 ((_ is Concat!25068) (regOne!32958 r!7292))) b!6307651))

(assert (= (and b!6306945 ((_ is Star!16223) (regOne!32958 r!7292))) b!6307652))

(assert (= (and b!6306945 ((_ is Union!16223) (regOne!32958 r!7292))) b!6307653))

(declare-fun e!3834081 () Bool)

(assert (=> b!6306945 (= tp!1757042 e!3834081)))

(declare-fun b!6307654 () Bool)

(assert (=> b!6307654 (= e!3834081 tp_is_empty!41699)))

(declare-fun b!6307655 () Bool)

(declare-fun tp!1757138 () Bool)

(declare-fun tp!1757135 () Bool)

(assert (=> b!6307655 (= e!3834081 (and tp!1757138 tp!1757135))))

(declare-fun b!6307656 () Bool)

(declare-fun tp!1757134 () Bool)

(assert (=> b!6307656 (= e!3834081 tp!1757134)))

(declare-fun b!6307657 () Bool)

(declare-fun tp!1757136 () Bool)

(declare-fun tp!1757137 () Bool)

(assert (=> b!6307657 (= e!3834081 (and tp!1757136 tp!1757137))))

(assert (= (and b!6306945 ((_ is ElementMatch!16223) (regTwo!32958 r!7292))) b!6307654))

(assert (= (and b!6306945 ((_ is Concat!25068) (regTwo!32958 r!7292))) b!6307655))

(assert (= (and b!6306945 ((_ is Star!16223) (regTwo!32958 r!7292))) b!6307656))

(assert (= (and b!6306945 ((_ is Union!16223) (regTwo!32958 r!7292))) b!6307657))

(declare-fun b!6307662 () Bool)

(declare-fun e!3834084 () Bool)

(declare-fun tp!1757143 () Bool)

(declare-fun tp!1757144 () Bool)

(assert (=> b!6307662 (= e!3834084 (and tp!1757143 tp!1757144))))

(assert (=> b!6306930 (= tp!1757041 e!3834084)))

(assert (= (and b!6306930 ((_ is Cons!64844) (exprs!6107 setElem!42924))) b!6307662))

(declare-fun e!3834085 () Bool)

(assert (=> b!6306946 (= tp!1757045 e!3834085)))

(declare-fun b!6307663 () Bool)

(assert (=> b!6307663 (= e!3834085 tp_is_empty!41699)))

(declare-fun b!6307664 () Bool)

(declare-fun tp!1757149 () Bool)

(declare-fun tp!1757146 () Bool)

(assert (=> b!6307664 (= e!3834085 (and tp!1757149 tp!1757146))))

(declare-fun b!6307665 () Bool)

(declare-fun tp!1757145 () Bool)

(assert (=> b!6307665 (= e!3834085 tp!1757145)))

(declare-fun b!6307666 () Bool)

(declare-fun tp!1757147 () Bool)

(declare-fun tp!1757148 () Bool)

(assert (=> b!6307666 (= e!3834085 (and tp!1757147 tp!1757148))))

(assert (= (and b!6306946 ((_ is ElementMatch!16223) (reg!16552 r!7292))) b!6307663))

(assert (= (and b!6306946 ((_ is Concat!25068) (reg!16552 r!7292))) b!6307664))

(assert (= (and b!6306946 ((_ is Star!16223) (reg!16552 r!7292))) b!6307665))

(assert (= (and b!6306946 ((_ is Union!16223) (reg!16552 r!7292))) b!6307666))

(declare-fun b!6307671 () Bool)

(declare-fun e!3834088 () Bool)

(declare-fun tp!1757152 () Bool)

(assert (=> b!6307671 (= e!3834088 (and tp_is_empty!41699 tp!1757152))))

(assert (=> b!6306950 (= tp!1757049 e!3834088)))

(assert (= (and b!6306950 ((_ is Cons!64846) (t!378542 s!2326))) b!6307671))

(declare-fun b!6307672 () Bool)

(declare-fun e!3834089 () Bool)

(declare-fun tp!1757153 () Bool)

(declare-fun tp!1757154 () Bool)

(assert (=> b!6307672 (= e!3834089 (and tp!1757153 tp!1757154))))

(assert (=> b!6306952 (= tp!1757048 e!3834089)))

(assert (= (and b!6306952 ((_ is Cons!64844) (exprs!6107 (h!71293 zl!343)))) b!6307672))

(declare-fun b!6307680 () Bool)

(declare-fun e!3834095 () Bool)

(declare-fun tp!1757159 () Bool)

(assert (=> b!6307680 (= e!3834095 tp!1757159)))

(declare-fun b!6307679 () Bool)

(declare-fun e!3834094 () Bool)

(declare-fun tp!1757160 () Bool)

(assert (=> b!6307679 (= e!3834094 (and (inv!83804 (h!71293 (t!378541 zl!343))) e!3834095 tp!1757160))))

(assert (=> b!6306938 (= tp!1757044 e!3834094)))

(assert (= b!6307679 b!6307680))

(assert (= (and b!6306938 ((_ is Cons!64845) (t!378541 zl!343))) b!6307679))

(declare-fun m!7123964 () Bool)

(assert (=> b!6307679 m!7123964))

(declare-fun condSetEmpty!42930 () Bool)

(assert (=> setNonEmpty!42924 (= condSetEmpty!42930 (= setRest!42924 ((as const (Array Context!11214 Bool)) false)))))

(declare-fun setRes!42930 () Bool)

(assert (=> setNonEmpty!42924 (= tp!1757043 setRes!42930)))

(declare-fun setIsEmpty!42930 () Bool)

(assert (=> setIsEmpty!42930 setRes!42930))

(declare-fun e!3834098 () Bool)

(declare-fun setNonEmpty!42930 () Bool)

(declare-fun tp!1757165 () Bool)

(declare-fun setElem!42930 () Context!11214)

(assert (=> setNonEmpty!42930 (= setRes!42930 (and tp!1757165 (inv!83804 setElem!42930) e!3834098))))

(declare-fun setRest!42930 () (InoxSet Context!11214))

(assert (=> setNonEmpty!42930 (= setRest!42924 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) setElem!42930 true) setRest!42930))))

(declare-fun b!6307685 () Bool)

(declare-fun tp!1757166 () Bool)

(assert (=> b!6307685 (= e!3834098 tp!1757166)))

(assert (= (and setNonEmpty!42924 condSetEmpty!42930) setIsEmpty!42930))

(assert (= (and setNonEmpty!42924 (not condSetEmpty!42930)) setNonEmpty!42930))

(assert (= setNonEmpty!42930 b!6307685))

(declare-fun m!7123966 () Bool)

(assert (=> setNonEmpty!42930 m!7123966))

(declare-fun b_lambda!239929 () Bool)

(assert (= b_lambda!239921 (or b!6306937 b_lambda!239929)))

(declare-fun bs!1577154 () Bool)

(declare-fun d!1979405 () Bool)

(assert (= bs!1577154 (and d!1979405 b!6306937)))

(assert (=> bs!1577154 (= (dynLambda!25673 lambda!346433 lt!2358605) (derivationStepZipperUp!1397 lt!2358605 (h!71294 s!2326)))))

(assert (=> bs!1577154 m!7123464))

(assert (=> d!1979303 d!1979405))

(declare-fun b_lambda!239931 () Bool)

(assert (= b_lambda!239923 (or b!6306937 b_lambda!239931)))

(declare-fun bs!1577155 () Bool)

(declare-fun d!1979407 () Bool)

(assert (= bs!1577155 (and d!1979407 b!6306937)))

(assert (=> bs!1577155 (= (dynLambda!25673 lambda!346433 (h!71293 zl!343)) (derivationStepZipperUp!1397 (h!71293 zl!343) (h!71294 s!2326)))))

(assert (=> bs!1577155 m!7123490))

(assert (=> d!1979335 d!1979407))

(check-sat (not b!6307396) (not bm!535145) (not b_lambda!239929) (not bm!535198) (not bm!535147) (not b!6307615) (not d!1979337) (not d!1979393) (not bm!535192) (not d!1979399) (not b!6307138) (not b!6307171) tp_is_empty!41699 (not d!1979369) (not d!1979343) (not b!6307657) (not b!6307144) (not b!6307530) (not b!6307392) (not bm!535197) (not d!1979279) (not b!6307653) (not d!1979391) (not b!6307644) (not b!6307533) (not b!6307662) (not b!6307651) (not d!1979347) (not d!1979349) (not d!1979359) (not b!6307620) (not b!6307117) (not b!6307491) (not b!6307655) (not d!1979319) (not b!6307494) (not b!6307143) (not b!6307170) (not b!6307664) (not b!6307493) (not b!6307573) (not b!6307397) (not d!1979303) (not b!6307274) (not bs!1577154) (not d!1979381) (not b!6307680) (not setNonEmpty!42930) (not d!1979401) (not b!6307529) (not b!6307652) (not b!6307504) (not b!6307648) (not b!6307685) (not d!1979271) (not bm!535190) (not bm!535146) (not b!6307503) (not b!6307329) (not d!1979277) (not d!1979387) (not b!6307535) (not d!1979371) (not b!6307665) (not d!1979345) (not d!1979323) (not b!6307643) (not bs!1577155) (not b!6307612) (not b!6307492) (not b!6307499) (not b!6307176) (not d!1979373) (not b!6307611) (not bm!535202) (not b!6307614) (not b!6307490) (not d!1979309) (not b!6307390) (not b!6307272) (not b!6307578) (not d!1979395) (not b!6307531) (not b!6307656) (not b!6307391) (not b!6307671) (not b!6307276) (not b!6307043) (not d!1979385) (not b!6307527) (not b!6307505) (not b!6307528) (not b!6307631) (not bm!535171) (not bm!535203) (not b!6307398) (not b!6307645) (not b!6307666) (not b_lambda!239931) (not b!6307649) (not d!1979383) (not bm!535144) (not b!6307647) (not d!1979335) (not b!6307679) (not bm!535169) (not b!6307487) (not bm!535201) (not b!6307275) (not bm!535204) (not b!6307139) (not b!6307672) (not b!6307116) (not b!6307175) (not bm!535170) (not b!6307608) (not d!1979351) (not b!6307489) (not b!6307273))
(check-sat)
(get-model)

(declare-fun d!1979449 () Bool)

(declare-fun c!1145345 () Bool)

(assert (=> d!1979449 (= c!1145345 (isEmpty!36912 (tail!12031 (t!378542 s!2326))))))

(declare-fun e!3834138 () Bool)

(assert (=> d!1979449 (= (matchZipper!2235 (derivationStepZipper!2189 lt!2358618 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))) e!3834138)))

(declare-fun b!6307749 () Bool)

(assert (=> b!6307749 (= e!3834138 (nullableZipper!1993 (derivationStepZipper!2189 lt!2358618 (head!12946 (t!378542 s!2326)))))))

(declare-fun b!6307750 () Bool)

(assert (=> b!6307750 (= e!3834138 (matchZipper!2235 (derivationStepZipper!2189 (derivationStepZipper!2189 lt!2358618 (head!12946 (t!378542 s!2326))) (head!12946 (tail!12031 (t!378542 s!2326)))) (tail!12031 (tail!12031 (t!378542 s!2326)))))))

(assert (= (and d!1979449 c!1145345) b!6307749))

(assert (= (and d!1979449 (not c!1145345)) b!6307750))

(assert (=> d!1979449 m!7123698))

(declare-fun m!7124040 () Bool)

(assert (=> d!1979449 m!7124040))

(assert (=> b!6307749 m!7123696))

(declare-fun m!7124042 () Bool)

(assert (=> b!6307749 m!7124042))

(assert (=> b!6307750 m!7123698))

(declare-fun m!7124044 () Bool)

(assert (=> b!6307750 m!7124044))

(assert (=> b!6307750 m!7123696))

(assert (=> b!6307750 m!7124044))

(declare-fun m!7124046 () Bool)

(assert (=> b!6307750 m!7124046))

(assert (=> b!6307750 m!7123698))

(declare-fun m!7124048 () Bool)

(assert (=> b!6307750 m!7124048))

(assert (=> b!6307750 m!7124046))

(assert (=> b!6307750 m!7124048))

(declare-fun m!7124050 () Bool)

(assert (=> b!6307750 m!7124050))

(assert (=> b!6307139 d!1979449))

(declare-fun bs!1577160 () Bool)

(declare-fun d!1979451 () Bool)

(assert (= bs!1577160 (and d!1979451 b!6306937)))

(declare-fun lambda!346500 () Int)

(assert (=> bs!1577160 (= (= (head!12946 (t!378542 s!2326)) (h!71294 s!2326)) (= lambda!346500 lambda!346433))))

(assert (=> d!1979451 true))

(assert (=> d!1979451 (= (derivationStepZipper!2189 lt!2358618 (head!12946 (t!378542 s!2326))) (flatMap!1728 lt!2358618 lambda!346500))))

(declare-fun bs!1577161 () Bool)

(assert (= bs!1577161 d!1979451))

(declare-fun m!7124052 () Bool)

(assert (=> bs!1577161 m!7124052))

(assert (=> b!6307139 d!1979451))

(declare-fun d!1979453 () Bool)

(assert (=> d!1979453 (= (head!12946 (t!378542 s!2326)) (h!71294 (t!378542 s!2326)))))

(assert (=> b!6307139 d!1979453))

(declare-fun d!1979455 () Bool)

(assert (=> d!1979455 (= (tail!12031 (t!378542 s!2326)) (t!378542 (t!378542 s!2326)))))

(assert (=> b!6307139 d!1979455))

(declare-fun d!1979457 () Bool)

(assert (=> d!1979457 (= (isEmptyExpr!1629 lt!2358700) ((_ is EmptyExpr!16223) lt!2358700))))

(assert (=> b!6307528 d!1979457))

(assert (=> d!1979391 d!1979393))

(assert (=> d!1979391 d!1979343))

(declare-fun e!3834151 () Bool)

(declare-fun d!1979459 () Bool)

(assert (=> d!1979459 (= (matchZipper!2235 ((_ map or) lt!2358612 lt!2358618) (t!378542 s!2326)) e!3834151)))

(declare-fun res!2599636 () Bool)

(assert (=> d!1979459 (=> res!2599636 e!3834151)))

(assert (=> d!1979459 (= res!2599636 (matchZipper!2235 lt!2358612 (t!378542 s!2326)))))

(assert (=> d!1979459 true))

(declare-fun _$48!2081 () Unit!158223)

(assert (=> d!1979459 (= (choose!46842 lt!2358612 lt!2358618 (t!378542 s!2326)) _$48!2081)))

(declare-fun b!6307775 () Bool)

(assert (=> b!6307775 (= e!3834151 (matchZipper!2235 lt!2358618 (t!378542 s!2326)))))

(assert (= (and d!1979459 (not res!2599636)) b!6307775))

(assert (=> d!1979459 m!7123526))

(assert (=> d!1979459 m!7123514))

(assert (=> b!6307775 m!7123462))

(assert (=> d!1979391 d!1979459))

(declare-fun d!1979461 () Bool)

(declare-fun res!2599641 () Bool)

(declare-fun e!3834156 () Bool)

(assert (=> d!1979461 (=> res!2599641 e!3834156)))

(assert (=> d!1979461 (= res!2599641 ((_ is Nil!64844) (exprs!6107 setElem!42924)))))

(assert (=> d!1979461 (= (forall!15373 (exprs!6107 setElem!42924) lambda!346458) e!3834156)))

(declare-fun b!6307780 () Bool)

(declare-fun e!3834157 () Bool)

(assert (=> b!6307780 (= e!3834156 e!3834157)))

(declare-fun res!2599642 () Bool)

(assert (=> b!6307780 (=> (not res!2599642) (not e!3834157))))

(declare-fun dynLambda!25675 (Int Regex!16223) Bool)

(assert (=> b!6307780 (= res!2599642 (dynLambda!25675 lambda!346458 (h!71292 (exprs!6107 setElem!42924))))))

(declare-fun b!6307781 () Bool)

(assert (=> b!6307781 (= e!3834157 (forall!15373 (t!378540 (exprs!6107 setElem!42924)) lambda!346458))))

(assert (= (and d!1979461 (not res!2599641)) b!6307780))

(assert (= (and b!6307780 res!2599642) b!6307781))

(declare-fun b_lambda!239937 () Bool)

(assert (=> (not b_lambda!239937) (not b!6307780)))

(declare-fun m!7124054 () Bool)

(assert (=> b!6307780 m!7124054))

(declare-fun m!7124056 () Bool)

(assert (=> b!6307781 m!7124056))

(assert (=> d!1979347 d!1979461))

(declare-fun d!1979463 () Bool)

(assert (=> d!1979463 (= (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))) (nullableFct!2167 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun bs!1577162 () Bool)

(assert (= bs!1577162 d!1979463))

(declare-fun m!7124058 () Bool)

(assert (=> bs!1577162 m!7124058))

(assert (=> b!6307272 d!1979463))

(declare-fun d!1979465 () Bool)

(assert (=> d!1979465 (= ($colon$colon!2088 (exprs!6107 lt!2358606) (ite (or c!1145323 c!1145324) (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 r!7292)))) (Cons!64844 (ite (or c!1145323 c!1145324) (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 r!7292))) (exprs!6107 lt!2358606)))))

(assert (=> bm!535204 d!1979465))

(declare-fun d!1979467 () Bool)

(assert (=> d!1979467 (= (isEmpty!36912 s!2326) ((_ is Nil!64846) s!2326))))

(assert (=> bm!535201 d!1979467))

(declare-fun bm!535231 () Bool)

(declare-fun call!535238 () (InoxSet Context!11214))

(declare-fun call!535240 () List!64968)

(declare-fun c!1145363 () Bool)

(assert (=> bm!535231 (= call!535238 (derivationStepZipperDown!1471 (ite c!1145363 (regOne!32959 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (regOne!32958 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))) (ite c!1145363 (ite c!1145322 lt!2358606 (Context!11215 call!535211)) (Context!11215 call!535240)) (h!71294 s!2326)))))

(declare-fun bm!535232 () Bool)

(declare-fun call!535237 () (InoxSet Context!11214))

(declare-fun call!535239 () List!64968)

(declare-fun c!1145364 () Bool)

(declare-fun c!1145365 () Bool)

(assert (=> bm!535232 (= call!535237 (derivationStepZipperDown!1471 (ite c!1145363 (regTwo!32959 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (ite c!1145364 (regTwo!32958 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (ite c!1145365 (regOne!32958 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (reg!16552 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))))) (ite (or c!1145363 c!1145364) (ite c!1145322 lt!2358606 (Context!11215 call!535211)) (Context!11215 call!535239)) (h!71294 s!2326)))))

(declare-fun e!3834164 () (InoxSet Context!11214))

(declare-fun b!6307792 () Bool)

(assert (=> b!6307792 (= e!3834164 (store ((as const (Array Context!11214 Bool)) false) (ite c!1145322 lt!2358606 (Context!11215 call!535211)) true))))

(declare-fun b!6307793 () Bool)

(declare-fun c!1145367 () Bool)

(assert (=> b!6307793 (= c!1145367 ((_ is Star!16223) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun e!3834165 () (InoxSet Context!11214))

(declare-fun e!3834166 () (InoxSet Context!11214))

(assert (=> b!6307793 (= e!3834165 e!3834166)))

(declare-fun b!6307794 () Bool)

(assert (=> b!6307794 (= e!3834166 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307795 () Bool)

(declare-fun e!3834168 () (InoxSet Context!11214))

(assert (=> b!6307795 (= e!3834164 e!3834168)))

(assert (=> b!6307795 (= c!1145363 ((_ is Union!16223) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6307796 () Bool)

(declare-fun e!3834163 () (InoxSet Context!11214))

(assert (=> b!6307796 (= e!3834163 e!3834165)))

(assert (=> b!6307796 (= c!1145365 ((_ is Concat!25068) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6307797 () Bool)

(declare-fun e!3834167 () Bool)

(assert (=> b!6307797 (= c!1145364 e!3834167)))

(declare-fun res!2599643 () Bool)

(assert (=> b!6307797 (=> (not res!2599643) (not e!3834167))))

(assert (=> b!6307797 (= res!2599643 ((_ is Concat!25068) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(assert (=> b!6307797 (= e!3834168 e!3834163)))

(declare-fun bm!535233 () Bool)

(assert (=> bm!535233 (= call!535240 ($colon$colon!2088 (exprs!6107 (ite c!1145322 lt!2358606 (Context!11215 call!535211))) (ite (or c!1145364 c!1145365) (regTwo!32958 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))))))

(declare-fun b!6307798 () Bool)

(declare-fun call!535236 () (InoxSet Context!11214))

(assert (=> b!6307798 (= e!3834163 ((_ map or) call!535238 call!535236))))

(declare-fun b!6307799 () Bool)

(declare-fun call!535241 () (InoxSet Context!11214))

(assert (=> b!6307799 (= e!3834166 call!535241)))

(declare-fun b!6307800 () Bool)

(assert (=> b!6307800 (= e!3834165 call!535241)))

(declare-fun b!6307801 () Bool)

(assert (=> b!6307801 (= e!3834168 ((_ map or) call!535238 call!535237))))

(declare-fun b!6307802 () Bool)

(assert (=> b!6307802 (= e!3834167 (nullable!6216 (regOne!32958 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))))))

(declare-fun bm!535235 () Bool)

(assert (=> bm!535235 (= call!535241 call!535236)))

(declare-fun bm!535236 () Bool)

(assert (=> bm!535236 (= call!535239 call!535240)))

(declare-fun bm!535234 () Bool)

(assert (=> bm!535234 (= call!535236 call!535237)))

(declare-fun c!1145366 () Bool)

(declare-fun d!1979469 () Bool)

(assert (=> d!1979469 (= c!1145366 (and ((_ is ElementMatch!16223) (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (= (c!1145130 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))) (h!71294 s!2326))))))

(assert (=> d!1979469 (= (derivationStepZipperDown!1471 (ite c!1145322 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))) (ite c!1145322 lt!2358606 (Context!11215 call!535211)) (h!71294 s!2326)) e!3834164)))

(assert (= (and d!1979469 c!1145366) b!6307792))

(assert (= (and d!1979469 (not c!1145366)) b!6307795))

(assert (= (and b!6307795 c!1145363) b!6307801))

(assert (= (and b!6307795 (not c!1145363)) b!6307797))

(assert (= (and b!6307797 res!2599643) b!6307802))

(assert (= (and b!6307797 c!1145364) b!6307798))

(assert (= (and b!6307797 (not c!1145364)) b!6307796))

(assert (= (and b!6307796 c!1145365) b!6307800))

(assert (= (and b!6307796 (not c!1145365)) b!6307793))

(assert (= (and b!6307793 c!1145367) b!6307799))

(assert (= (and b!6307793 (not c!1145367)) b!6307794))

(assert (= (or b!6307800 b!6307799) bm!535236))

(assert (= (or b!6307800 b!6307799) bm!535235))

(assert (= (or b!6307798 bm!535236) bm!535233))

(assert (= (or b!6307798 bm!535235) bm!535234))

(assert (= (or b!6307801 bm!535234) bm!535232))

(assert (= (or b!6307801 b!6307798) bm!535231))

(declare-fun m!7124066 () Bool)

(assert (=> bm!535231 m!7124066))

(declare-fun m!7124068 () Bool)

(assert (=> bm!535233 m!7124068))

(declare-fun m!7124070 () Bool)

(assert (=> b!6307802 m!7124070))

(declare-fun m!7124072 () Bool)

(assert (=> bm!535232 m!7124072))

(declare-fun m!7124074 () Bool)

(assert (=> b!6307792 m!7124074))

(assert (=> bm!535202 d!1979469))

(declare-fun d!1979475 () Bool)

(assert (=> d!1979475 (= (isEmpty!36910 (t!378540 (unfocusZipperList!1644 zl!343))) ((_ is Nil!64844) (t!378540 (unfocusZipperList!1644 zl!343))))))

(assert (=> b!6307487 d!1979475))

(declare-fun d!1979477 () Bool)

(assert (=> d!1979477 true))

(assert (=> d!1979477 true))

(declare-fun res!2599647 () Bool)

(assert (=> d!1979477 (= (choose!46839 lambda!346431) res!2599647)))

(assert (=> d!1979371 d!1979477))

(declare-fun d!1979481 () Bool)

(declare-fun c!1145373 () Bool)

(assert (=> d!1979481 (= c!1145373 (isEmpty!36912 (tail!12031 (t!378542 s!2326))))))

(declare-fun e!3834175 () Bool)

(assert (=> d!1979481 (= (matchZipper!2235 (derivationStepZipper!2189 lt!2358613 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))) e!3834175)))

(declare-fun b!6307814 () Bool)

(assert (=> b!6307814 (= e!3834175 (nullableZipper!1993 (derivationStepZipper!2189 lt!2358613 (head!12946 (t!378542 s!2326)))))))

(declare-fun b!6307815 () Bool)

(assert (=> b!6307815 (= e!3834175 (matchZipper!2235 (derivationStepZipper!2189 (derivationStepZipper!2189 lt!2358613 (head!12946 (t!378542 s!2326))) (head!12946 (tail!12031 (t!378542 s!2326)))) (tail!12031 (tail!12031 (t!378542 s!2326)))))))

(assert (= (and d!1979481 c!1145373) b!6307814))

(assert (= (and d!1979481 (not c!1145373)) b!6307815))

(assert (=> d!1979481 m!7123698))

(assert (=> d!1979481 m!7124040))

(assert (=> b!6307814 m!7123770))

(declare-fun m!7124088 () Bool)

(assert (=> b!6307814 m!7124088))

(assert (=> b!6307815 m!7123698))

(assert (=> b!6307815 m!7124044))

(assert (=> b!6307815 m!7123770))

(assert (=> b!6307815 m!7124044))

(declare-fun m!7124090 () Bool)

(assert (=> b!6307815 m!7124090))

(assert (=> b!6307815 m!7123698))

(assert (=> b!6307815 m!7124048))

(assert (=> b!6307815 m!7124090))

(assert (=> b!6307815 m!7124048))

(declare-fun m!7124092 () Bool)

(assert (=> b!6307815 m!7124092))

(assert (=> b!6307276 d!1979481))

(declare-fun bs!1577164 () Bool)

(declare-fun d!1979485 () Bool)

(assert (= bs!1577164 (and d!1979485 b!6306937)))

(declare-fun lambda!346501 () Int)

(assert (=> bs!1577164 (= (= (head!12946 (t!378542 s!2326)) (h!71294 s!2326)) (= lambda!346501 lambda!346433))))

(declare-fun bs!1577165 () Bool)

(assert (= bs!1577165 (and d!1979485 d!1979451)))

(assert (=> bs!1577165 (= lambda!346501 lambda!346500)))

(assert (=> d!1979485 true))

(assert (=> d!1979485 (= (derivationStepZipper!2189 lt!2358613 (head!12946 (t!378542 s!2326))) (flatMap!1728 lt!2358613 lambda!346501))))

(declare-fun bs!1577166 () Bool)

(assert (= bs!1577166 d!1979485))

(declare-fun m!7124094 () Bool)

(assert (=> bs!1577166 m!7124094))

(assert (=> b!6307276 d!1979485))

(assert (=> b!6307276 d!1979453))

(assert (=> b!6307276 d!1979455))

(declare-fun b!6307825 () Bool)

(declare-fun res!2599654 () Bool)

(declare-fun e!3834184 () Bool)

(assert (=> b!6307825 (=> res!2599654 e!3834184)))

(assert (=> b!6307825 (= res!2599654 (not ((_ is ElementMatch!16223) (regTwo!32958 r!7292))))))

(declare-fun e!3834189 () Bool)

(assert (=> b!6307825 (= e!3834189 e!3834184)))

(declare-fun b!6307826 () Bool)

(declare-fun res!2599657 () Bool)

(declare-fun e!3834185 () Bool)

(assert (=> b!6307826 (=> (not res!2599657) (not e!3834185))))

(assert (=> b!6307826 (= res!2599657 (isEmpty!36912 (tail!12031 s!2326)))))

(declare-fun d!1979487 () Bool)

(declare-fun e!3834186 () Bool)

(assert (=> d!1979487 e!3834186))

(declare-fun c!1145377 () Bool)

(assert (=> d!1979487 (= c!1145377 ((_ is EmptyExpr!16223) (regTwo!32958 r!7292)))))

(declare-fun lt!2358712 () Bool)

(declare-fun e!3834187 () Bool)

(assert (=> d!1979487 (= lt!2358712 e!3834187)))

(declare-fun c!1145378 () Bool)

(assert (=> d!1979487 (= c!1145378 (isEmpty!36912 s!2326))))

(assert (=> d!1979487 (validRegex!7959 (regTwo!32958 r!7292))))

(assert (=> d!1979487 (= (matchR!8406 (regTwo!32958 r!7292) s!2326) lt!2358712)))

(declare-fun b!6307827 () Bool)

(declare-fun res!2599658 () Bool)

(assert (=> b!6307827 (=> res!2599658 e!3834184)))

(assert (=> b!6307827 (= res!2599658 e!3834185)))

(declare-fun res!2599659 () Bool)

(assert (=> b!6307827 (=> (not res!2599659) (not e!3834185))))

(assert (=> b!6307827 (= res!2599659 lt!2358712)))

(declare-fun b!6307828 () Bool)

(declare-fun call!535251 () Bool)

(assert (=> b!6307828 (= e!3834186 (= lt!2358712 call!535251))))

(declare-fun bm!535246 () Bool)

(assert (=> bm!535246 (= call!535251 (isEmpty!36912 s!2326))))

(declare-fun b!6307829 () Bool)

(assert (=> b!6307829 (= e!3834187 (nullable!6216 (regTwo!32958 r!7292)))))

(declare-fun b!6307830 () Bool)

(declare-fun e!3834183 () Bool)

(assert (=> b!6307830 (= e!3834183 (not (= (head!12946 s!2326) (c!1145130 (regTwo!32958 r!7292)))))))

(declare-fun b!6307831 () Bool)

(declare-fun res!2599653 () Bool)

(assert (=> b!6307831 (=> (not res!2599653) (not e!3834185))))

(assert (=> b!6307831 (= res!2599653 (not call!535251))))

(declare-fun b!6307832 () Bool)

(assert (=> b!6307832 (= e!3834185 (= (head!12946 s!2326) (c!1145130 (regTwo!32958 r!7292))))))

(declare-fun b!6307833 () Bool)

(declare-fun res!2599660 () Bool)

(assert (=> b!6307833 (=> res!2599660 e!3834183)))

(assert (=> b!6307833 (= res!2599660 (not (isEmpty!36912 (tail!12031 s!2326))))))

(declare-fun b!6307834 () Bool)

(assert (=> b!6307834 (= e!3834186 e!3834189)))

(declare-fun c!1145376 () Bool)

(assert (=> b!6307834 (= c!1145376 ((_ is EmptyLang!16223) (regTwo!32958 r!7292)))))

(declare-fun b!6307835 () Bool)

(declare-fun e!3834188 () Bool)

(assert (=> b!6307835 (= e!3834184 e!3834188)))

(declare-fun res!2599655 () Bool)

(assert (=> b!6307835 (=> (not res!2599655) (not e!3834188))))

(assert (=> b!6307835 (= res!2599655 (not lt!2358712))))

(declare-fun b!6307836 () Bool)

(assert (=> b!6307836 (= e!3834189 (not lt!2358712))))

(declare-fun b!6307837 () Bool)

(assert (=> b!6307837 (= e!3834188 e!3834183)))

(declare-fun res!2599656 () Bool)

(assert (=> b!6307837 (=> res!2599656 e!3834183)))

(assert (=> b!6307837 (= res!2599656 call!535251)))

(declare-fun b!6307838 () Bool)

(assert (=> b!6307838 (= e!3834187 (matchR!8406 (derivativeStep!4932 (regTwo!32958 r!7292) (head!12946 s!2326)) (tail!12031 s!2326)))))

(assert (= (and d!1979487 c!1145378) b!6307829))

(assert (= (and d!1979487 (not c!1145378)) b!6307838))

(assert (= (and d!1979487 c!1145377) b!6307828))

(assert (= (and d!1979487 (not c!1145377)) b!6307834))

(assert (= (and b!6307834 c!1145376) b!6307836))

(assert (= (and b!6307834 (not c!1145376)) b!6307825))

(assert (= (and b!6307825 (not res!2599654)) b!6307827))

(assert (= (and b!6307827 res!2599659) b!6307831))

(assert (= (and b!6307831 res!2599653) b!6307826))

(assert (= (and b!6307826 res!2599657) b!6307832))

(assert (= (and b!6307827 (not res!2599658)) b!6307835))

(assert (= (and b!6307835 res!2599655) b!6307837))

(assert (= (and b!6307837 (not res!2599656)) b!6307833))

(assert (= (and b!6307833 (not res!2599660)) b!6307830))

(assert (= (or b!6307828 b!6307837 b!6307831) bm!535246))

(assert (=> bm!535246 m!7123936))

(assert (=> d!1979487 m!7123936))

(declare-fun m!7124102 () Bool)

(assert (=> d!1979487 m!7124102))

(assert (=> b!6307830 m!7123940))

(declare-fun m!7124104 () Bool)

(assert (=> b!6307829 m!7124104))

(assert (=> b!6307833 m!7123944))

(assert (=> b!6307833 m!7123944))

(assert (=> b!6307833 m!7123946))

(assert (=> b!6307826 m!7123944))

(assert (=> b!6307826 m!7123944))

(assert (=> b!6307826 m!7123946))

(assert (=> b!6307832 m!7123940))

(assert (=> b!6307838 m!7123940))

(assert (=> b!6307838 m!7123940))

(declare-fun m!7124106 () Bool)

(assert (=> b!6307838 m!7124106))

(assert (=> b!6307838 m!7123944))

(assert (=> b!6307838 m!7124106))

(assert (=> b!6307838 m!7123944))

(declare-fun m!7124108 () Bool)

(assert (=> b!6307838 m!7124108))

(assert (=> b!6307396 d!1979487))

(declare-fun d!1979491 () Bool)

(assert (=> d!1979491 (= (head!12947 (unfocusZipperList!1644 zl!343)) (h!71292 (unfocusZipperList!1644 zl!343)))))

(assert (=> b!6307491 d!1979491))

(declare-fun bm!535253 () Bool)

(declare-fun call!535258 () (InoxSet Context!11214))

(assert (=> bm!535253 (= call!535258 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609)))))) (h!71294 s!2326)))))

(declare-fun d!1979493 () Bool)

(declare-fun c!1145385 () Bool)

(declare-fun e!3834197 () Bool)

(assert (=> d!1979493 (= c!1145385 e!3834197)))

(declare-fun res!2599662 () Bool)

(assert (=> d!1979493 (=> (not res!2599662) (not e!3834197))))

(assert (=> d!1979493 (= res!2599662 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609))))))))

(declare-fun e!3834198 () (InoxSet Context!11214))

(assert (=> d!1979493 (= (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (h!71294 s!2326)) e!3834198)))

(declare-fun b!6307850 () Bool)

(declare-fun e!3834196 () (InoxSet Context!11214))

(assert (=> b!6307850 (= e!3834196 call!535258)))

(declare-fun b!6307851 () Bool)

(assert (=> b!6307851 (= e!3834196 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307852 () Bool)

(assert (=> b!6307852 (= e!3834198 e!3834196)))

(declare-fun c!1145384 () Bool)

(assert (=> b!6307852 (= c!1145384 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609))))))))

(declare-fun b!6307853 () Bool)

(assert (=> b!6307853 (= e!3834198 ((_ map or) call!535258 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609)))))) (h!71294 s!2326))))))

(declare-fun b!6307854 () Bool)

(assert (=> b!6307854 (= e!3834197 (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609)))))))))

(assert (= (and d!1979493 res!2599662) b!6307854))

(assert (= (and d!1979493 c!1145385) b!6307853))

(assert (= (and d!1979493 (not c!1145385)) b!6307852))

(assert (= (and b!6307852 c!1145384) b!6307850))

(assert (= (and b!6307852 (not c!1145384)) b!6307851))

(assert (= (or b!6307853 b!6307850) bm!535253))

(declare-fun m!7124118 () Bool)

(assert (=> bm!535253 m!7124118))

(declare-fun m!7124120 () Bool)

(assert (=> b!6307853 m!7124120))

(declare-fun m!7124122 () Bool)

(assert (=> b!6307854 m!7124122))

(assert (=> b!6307175 d!1979493))

(declare-fun c!1145386 () Bool)

(declare-fun call!535263 () List!64968)

(declare-fun call!535261 () (InoxSet Context!11214))

(declare-fun bm!535254 () Bool)

(assert (=> bm!535254 (= call!535261 (derivationStepZipperDown!1471 (ite c!1145386 (regOne!32959 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (regOne!32958 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))))) (ite c!1145386 (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177)) (Context!11215 call!535263)) (h!71294 s!2326)))))

(declare-fun c!1145387 () Bool)

(declare-fun c!1145388 () Bool)

(declare-fun call!535260 () (InoxSet Context!11214))

(declare-fun bm!535255 () Bool)

(declare-fun call!535262 () List!64968)

(assert (=> bm!535255 (= call!535260 (derivationStepZipperDown!1471 (ite c!1145386 (regTwo!32959 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (ite c!1145387 (regTwo!32958 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (ite c!1145388 (regOne!32958 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (reg!16552 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))))))) (ite (or c!1145386 c!1145387) (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177)) (Context!11215 call!535262)) (h!71294 s!2326)))))

(declare-fun b!6307855 () Bool)

(declare-fun e!3834200 () (InoxSet Context!11214))

(assert (=> b!6307855 (= e!3834200 (store ((as const (Array Context!11214 Bool)) false) (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177)) true))))

(declare-fun b!6307856 () Bool)

(declare-fun c!1145390 () Bool)

(assert (=> b!6307856 (= c!1145390 ((_ is Star!16223) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun e!3834201 () (InoxSet Context!11214))

(declare-fun e!3834202 () (InoxSet Context!11214))

(assert (=> b!6307856 (= e!3834201 e!3834202)))

(declare-fun b!6307857 () Bool)

(assert (=> b!6307857 (= e!3834202 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307858 () Bool)

(declare-fun e!3834204 () (InoxSet Context!11214))

(assert (=> b!6307858 (= e!3834200 e!3834204)))

(assert (=> b!6307858 (= c!1145386 ((_ is Union!16223) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun b!6307859 () Bool)

(declare-fun e!3834199 () (InoxSet Context!11214))

(assert (=> b!6307859 (= e!3834199 e!3834201)))

(assert (=> b!6307859 (= c!1145388 ((_ is Concat!25068) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun b!6307860 () Bool)

(declare-fun e!3834203 () Bool)

(assert (=> b!6307860 (= c!1145387 e!3834203)))

(declare-fun res!2599663 () Bool)

(assert (=> b!6307860 (=> (not res!2599663) (not e!3834203))))

(assert (=> b!6307860 (= res!2599663 ((_ is Concat!25068) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))))

(assert (=> b!6307860 (= e!3834204 e!3834199)))

(declare-fun bm!535256 () Bool)

(assert (=> bm!535256 (= call!535263 ($colon$colon!2088 (exprs!6107 (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177))) (ite (or c!1145387 c!1145388) (regTwo!32958 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))))))))

(declare-fun b!6307861 () Bool)

(declare-fun call!535259 () (InoxSet Context!11214))

(assert (=> b!6307861 (= e!3834199 ((_ map or) call!535261 call!535259))))

(declare-fun b!6307862 () Bool)

(declare-fun call!535264 () (InoxSet Context!11214))

(assert (=> b!6307862 (= e!3834202 call!535264)))

(declare-fun b!6307863 () Bool)

(assert (=> b!6307863 (= e!3834201 call!535264)))

(declare-fun b!6307864 () Bool)

(assert (=> b!6307864 (= e!3834204 ((_ map or) call!535261 call!535260))))

(declare-fun b!6307865 () Bool)

(assert (=> b!6307865 (= e!3834203 (nullable!6216 (regOne!32958 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))))))))

(declare-fun bm!535258 () Bool)

(assert (=> bm!535258 (= call!535264 call!535259)))

(declare-fun bm!535259 () Bool)

(assert (=> bm!535259 (= call!535262 call!535263)))

(declare-fun bm!535257 () Bool)

(assert (=> bm!535257 (= call!535259 call!535260)))

(declare-fun d!1979495 () Bool)

(declare-fun c!1145389 () Bool)

(assert (=> d!1979495 (= c!1145389 (and ((_ is ElementMatch!16223) (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (= (c!1145130 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326))))))

(assert (=> d!1979495 (= (derivationStepZipperDown!1471 (ite c!1145241 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145242 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145243 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))) (ite (or c!1145241 c!1145242) lt!2358609 (Context!11215 call!535177)) (h!71294 s!2326)) e!3834200)))

(assert (= (and d!1979495 c!1145389) b!6307855))

(assert (= (and d!1979495 (not c!1145389)) b!6307858))

(assert (= (and b!6307858 c!1145386) b!6307864))

(assert (= (and b!6307858 (not c!1145386)) b!6307860))

(assert (= (and b!6307860 res!2599663) b!6307865))

(assert (= (and b!6307860 c!1145387) b!6307861))

(assert (= (and b!6307860 (not c!1145387)) b!6307859))

(assert (= (and b!6307859 c!1145388) b!6307863))

(assert (= (and b!6307859 (not c!1145388)) b!6307856))

(assert (= (and b!6307856 c!1145390) b!6307862))

(assert (= (and b!6307856 (not c!1145390)) b!6307857))

(assert (= (or b!6307863 b!6307862) bm!535259))

(assert (= (or b!6307863 b!6307862) bm!535258))

(assert (= (or b!6307861 bm!535259) bm!535256))

(assert (= (or b!6307861 bm!535258) bm!535257))

(assert (= (or b!6307864 bm!535257) bm!535255))

(assert (= (or b!6307864 b!6307861) bm!535254))

(declare-fun m!7124128 () Bool)

(assert (=> bm!535254 m!7124128))

(declare-fun m!7124130 () Bool)

(assert (=> bm!535256 m!7124130))

(declare-fun m!7124132 () Bool)

(assert (=> b!6307865 m!7124132))

(declare-fun m!7124134 () Bool)

(assert (=> bm!535255 m!7124134))

(declare-fun m!7124136 () Bool)

(assert (=> b!6307855 m!7124136))

(assert (=> bm!535170 d!1979495))

(declare-fun d!1979501 () Bool)

(assert (=> d!1979501 (= (nullable!6216 (h!71292 (exprs!6107 lt!2358605))) (nullableFct!2167 (h!71292 (exprs!6107 lt!2358605))))))

(declare-fun bs!1577168 () Bool)

(assert (= bs!1577168 d!1979501))

(declare-fun m!7124138 () Bool)

(assert (=> bs!1577168 m!7124138))

(assert (=> b!6307117 d!1979501))

(declare-fun b!6307877 () Bool)

(declare-fun e!3834211 () Bool)

(declare-fun call!535272 () Bool)

(assert (=> b!6307877 (= e!3834211 call!535272)))

(declare-fun call!535273 () Bool)

(declare-fun c!1145397 () Bool)

(declare-fun c!1145396 () Bool)

(declare-fun bm!535266 () Bool)

(assert (=> bm!535266 (= call!535273 (validRegex!7959 (ite c!1145396 (reg!16552 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))) (ite c!1145397 (regTwo!32959 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))) (regTwo!32958 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292)))))))))

(declare-fun b!6307878 () Bool)

(declare-fun e!3834215 () Bool)

(declare-fun e!3834216 () Bool)

(assert (=> b!6307878 (= e!3834215 e!3834216)))

(assert (=> b!6307878 (= c!1145397 ((_ is Union!16223) (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))

(declare-fun b!6307879 () Bool)

(declare-fun e!3834213 () Bool)

(assert (=> b!6307879 (= e!3834213 call!535273)))

(declare-fun bm!535267 () Bool)

(assert (=> bm!535267 (= call!535272 call!535273)))

(declare-fun b!6307881 () Bool)

(declare-fun e!3834212 () Bool)

(assert (=> b!6307881 (= e!3834212 e!3834211)))

(declare-fun res!2599665 () Bool)

(assert (=> b!6307881 (=> (not res!2599665) (not e!3834211))))

(declare-fun call!535271 () Bool)

(assert (=> b!6307881 (= res!2599665 call!535271)))

(declare-fun b!6307882 () Bool)

(assert (=> b!6307882 (= e!3834215 e!3834213)))

(declare-fun res!2599666 () Bool)

(assert (=> b!6307882 (= res!2599666 (not (nullable!6216 (reg!16552 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))))

(assert (=> b!6307882 (=> (not res!2599666) (not e!3834213))))

(declare-fun b!6307883 () Bool)

(declare-fun res!2599667 () Bool)

(declare-fun e!3834217 () Bool)

(assert (=> b!6307883 (=> (not res!2599667) (not e!3834217))))

(assert (=> b!6307883 (= res!2599667 call!535271)))

(assert (=> b!6307883 (= e!3834216 e!3834217)))

(declare-fun bm!535268 () Bool)

(assert (=> bm!535268 (= call!535271 (validRegex!7959 (ite c!1145397 (regOne!32959 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))) (regOne!32958 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))))

(declare-fun b!6307880 () Bool)

(assert (=> b!6307880 (= e!3834217 call!535272)))

(declare-fun d!1979503 () Bool)

(declare-fun res!2599668 () Bool)

(declare-fun e!3834214 () Bool)

(assert (=> d!1979503 (=> res!2599668 e!3834214)))

(assert (=> d!1979503 (= res!2599668 ((_ is ElementMatch!16223) (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))

(assert (=> d!1979503 (= (validRegex!7959 (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))) e!3834214)))

(declare-fun b!6307884 () Bool)

(assert (=> b!6307884 (= e!3834214 e!3834215)))

(assert (=> b!6307884 (= c!1145396 ((_ is Star!16223) (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292))))))

(declare-fun b!6307885 () Bool)

(declare-fun res!2599669 () Bool)

(assert (=> b!6307885 (=> res!2599669 e!3834212)))

(assert (=> b!6307885 (= res!2599669 (not ((_ is Concat!25068) (ite c!1145260 (regOne!32959 r!7292) (regOne!32958 r!7292)))))))

(assert (=> b!6307885 (= e!3834216 e!3834212)))

(assert (= (and d!1979503 (not res!2599668)) b!6307884))

(assert (= (and b!6307884 c!1145396) b!6307882))

(assert (= (and b!6307884 (not c!1145396)) b!6307878))

(assert (= (and b!6307882 res!2599666) b!6307879))

(assert (= (and b!6307878 c!1145397) b!6307883))

(assert (= (and b!6307878 (not c!1145397)) b!6307885))

(assert (= (and b!6307883 res!2599667) b!6307880))

(assert (= (and b!6307885 (not res!2599669)) b!6307881))

(assert (= (and b!6307881 res!2599665) b!6307877))

(assert (= (or b!6307880 b!6307877) bm!535267))

(assert (= (or b!6307883 b!6307881) bm!535268))

(assert (= (or b!6307879 bm!535267) bm!535266))

(declare-fun m!7124150 () Bool)

(assert (=> bm!535266 m!7124150))

(declare-fun m!7124152 () Bool)

(assert (=> b!6307882 m!7124152))

(declare-fun m!7124154 () Bool)

(assert (=> bm!535268 m!7124154))

(assert (=> bm!535192 d!1979503))

(declare-fun d!1979507 () Bool)

(assert (=> d!1979507 (= (Exists!3293 (ite c!1145312 lambda!346490 lambda!346491)) (choose!46839 (ite c!1145312 lambda!346490 lambda!346491)))))

(declare-fun bs!1577169 () Bool)

(assert (= bs!1577169 d!1979507))

(declare-fun m!7124156 () Bool)

(assert (=> bs!1577169 m!7124156))

(assert (=> bm!535198 d!1979507))

(declare-fun d!1979509 () Bool)

(assert (=> d!1979509 (= (isDefined!12817 lt!2358680) (not (isEmpty!36914 lt!2358680)))))

(declare-fun bs!1577170 () Bool)

(assert (= bs!1577170 d!1979509))

(declare-fun m!7124158 () Bool)

(assert (=> bs!1577170 m!7124158))

(assert (=> b!6307391 d!1979509))

(declare-fun b!6307891 () Bool)

(declare-fun e!3834221 () Bool)

(declare-fun call!535276 () Bool)

(assert (=> b!6307891 (= e!3834221 call!535276)))

(declare-fun c!1145400 () Bool)

(declare-fun call!535277 () Bool)

(declare-fun bm!535270 () Bool)

(declare-fun c!1145401 () Bool)

(assert (=> bm!535270 (= call!535277 (validRegex!7959 (ite c!1145400 (reg!16552 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))) (ite c!1145401 (regTwo!32959 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))) (regTwo!32958 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292))))))))))

(declare-fun b!6307892 () Bool)

(declare-fun e!3834225 () Bool)

(declare-fun e!3834226 () Bool)

(assert (=> b!6307892 (= e!3834225 e!3834226)))

(assert (=> b!6307892 (= c!1145401 ((_ is Union!16223) (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))

(declare-fun b!6307893 () Bool)

(declare-fun e!3834223 () Bool)

(assert (=> b!6307893 (= e!3834223 call!535277)))

(declare-fun bm!535271 () Bool)

(assert (=> bm!535271 (= call!535276 call!535277)))

(declare-fun b!6307895 () Bool)

(declare-fun e!3834222 () Bool)

(assert (=> b!6307895 (= e!3834222 e!3834221)))

(declare-fun res!2599671 () Bool)

(assert (=> b!6307895 (=> (not res!2599671) (not e!3834221))))

(declare-fun call!535275 () Bool)

(assert (=> b!6307895 (= res!2599671 call!535275)))

(declare-fun b!6307896 () Bool)

(assert (=> b!6307896 (= e!3834225 e!3834223)))

(declare-fun res!2599672 () Bool)

(assert (=> b!6307896 (= res!2599672 (not (nullable!6216 (reg!16552 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))))

(assert (=> b!6307896 (=> (not res!2599672) (not e!3834223))))

(declare-fun b!6307897 () Bool)

(declare-fun res!2599673 () Bool)

(declare-fun e!3834227 () Bool)

(assert (=> b!6307897 (=> (not res!2599673) (not e!3834227))))

(assert (=> b!6307897 (= res!2599673 call!535275)))

(assert (=> b!6307897 (= e!3834226 e!3834227)))

(declare-fun bm!535272 () Bool)

(assert (=> bm!535272 (= call!535275 (validRegex!7959 (ite c!1145401 (regOne!32959 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))) (regOne!32958 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))))

(declare-fun b!6307894 () Bool)

(assert (=> b!6307894 (= e!3834227 call!535276)))

(declare-fun d!1979511 () Bool)

(declare-fun res!2599674 () Bool)

(declare-fun e!3834224 () Bool)

(assert (=> d!1979511 (=> res!2599674 e!3834224)))

(assert (=> d!1979511 (= res!2599674 ((_ is ElementMatch!16223) (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))

(assert (=> d!1979511 (= (validRegex!7959 (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))) e!3834224)))

(declare-fun b!6307898 () Bool)

(assert (=> b!6307898 (= e!3834224 e!3834225)))

(assert (=> b!6307898 (= c!1145400 ((_ is Star!16223) (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292)))))))

(declare-fun b!6307899 () Bool)

(declare-fun res!2599675 () Bool)

(assert (=> b!6307899 (=> res!2599675 e!3834222)))

(assert (=> b!6307899 (= res!2599675 (not ((_ is Concat!25068) (ite c!1145259 (reg!16552 r!7292) (ite c!1145260 (regTwo!32959 r!7292) (regTwo!32958 r!7292))))))))

(assert (=> b!6307899 (= e!3834226 e!3834222)))

(assert (= (and d!1979511 (not res!2599674)) b!6307898))

(assert (= (and b!6307898 c!1145400) b!6307896))

(assert (= (and b!6307898 (not c!1145400)) b!6307892))

(assert (= (and b!6307896 res!2599672) b!6307893))

(assert (= (and b!6307892 c!1145401) b!6307897))

(assert (= (and b!6307892 (not c!1145401)) b!6307899))

(assert (= (and b!6307897 res!2599673) b!6307894))

(assert (= (and b!6307899 (not res!2599675)) b!6307895))

(assert (= (and b!6307895 res!2599671) b!6307891))

(assert (= (or b!6307894 b!6307891) bm!535271))

(assert (= (or b!6307897 b!6307895) bm!535272))

(assert (= (or b!6307893 bm!535271) bm!535270))

(declare-fun m!7124168 () Bool)

(assert (=> bm!535270 m!7124168))

(declare-fun m!7124170 () Bool)

(assert (=> b!6307896 m!7124170))

(declare-fun m!7124174 () Bool)

(assert (=> bm!535272 m!7124174))

(assert (=> bm!535190 d!1979511))

(declare-fun d!1979517 () Bool)

(declare-fun lambda!346504 () Int)

(declare-fun exists!2543 ((InoxSet Context!11214) Int) Bool)

(assert (=> d!1979517 (= (nullableZipper!1993 lt!2358612) (exists!2543 lt!2358612 lambda!346504))))

(declare-fun bs!1577173 () Bool)

(assert (= bs!1577173 d!1979517))

(declare-fun m!7124176 () Bool)

(assert (=> bs!1577173 m!7124176))

(assert (=> b!6307273 d!1979517))

(assert (=> b!6307499 d!1979395))

(declare-fun bs!1577174 () Bool)

(declare-fun d!1979521 () Bool)

(assert (= bs!1577174 (and d!1979521 d!1979385)))

(declare-fun lambda!346505 () Int)

(assert (=> bs!1577174 (= lambda!346505 lambda!346479)))

(declare-fun bs!1577175 () Bool)

(assert (= bs!1577175 (and d!1979521 d!1979387)))

(assert (=> bs!1577175 (= lambda!346505 lambda!346482)))

(declare-fun bs!1577176 () Bool)

(assert (= bs!1577176 (and d!1979521 d!1979347)))

(assert (=> bs!1577176 (= lambda!346505 lambda!346458)))

(declare-fun bs!1577177 () Bool)

(assert (= bs!1577177 (and d!1979521 d!1979337)))

(assert (=> bs!1577177 (= lambda!346505 lambda!346457)))

(declare-fun bs!1577178 () Bool)

(assert (= bs!1577178 (and d!1979521 d!1979277)))

(assert (=> bs!1577178 (= lambda!346505 lambda!346449)))

(declare-fun bs!1577179 () Bool)

(assert (= bs!1577179 (and d!1979521 d!1979395)))

(assert (=> bs!1577179 (= lambda!346505 lambda!346485)))

(declare-fun lt!2358713 () List!64968)

(assert (=> d!1979521 (forall!15373 lt!2358713 lambda!346505)))

(declare-fun e!3834228 () List!64968)

(assert (=> d!1979521 (= lt!2358713 e!3834228)))

(declare-fun c!1145404 () Bool)

(assert (=> d!1979521 (= c!1145404 ((_ is Cons!64845) (t!378541 zl!343)))))

(assert (=> d!1979521 (= (unfocusZipperList!1644 (t!378541 zl!343)) lt!2358713)))

(declare-fun b!6307900 () Bool)

(assert (=> b!6307900 (= e!3834228 (Cons!64844 (generalisedConcat!1820 (exprs!6107 (h!71293 (t!378541 zl!343)))) (unfocusZipperList!1644 (t!378541 (t!378541 zl!343)))))))

(declare-fun b!6307901 () Bool)

(assert (=> b!6307901 (= e!3834228 Nil!64844)))

(assert (= (and d!1979521 c!1145404) b!6307900))

(assert (= (and d!1979521 (not c!1145404)) b!6307901))

(declare-fun m!7124178 () Bool)

(assert (=> d!1979521 m!7124178))

(declare-fun m!7124180 () Bool)

(assert (=> b!6307900 m!7124180))

(declare-fun m!7124182 () Bool)

(assert (=> b!6307900 m!7124182))

(assert (=> b!6307499 d!1979521))

(declare-fun bs!1577180 () Bool)

(declare-fun d!1979523 () Bool)

(assert (= bs!1577180 (and d!1979523 d!1979517)))

(declare-fun lambda!346506 () Int)

(assert (=> bs!1577180 (= lambda!346506 lambda!346504)))

(assert (=> d!1979523 (= (nullableZipper!1993 ((_ map or) lt!2358612 lt!2358618)) (exists!2543 ((_ map or) lt!2358612 lt!2358618) lambda!346506))))

(declare-fun bs!1577181 () Bool)

(assert (= bs!1577181 d!1979523))

(declare-fun m!7124184 () Bool)

(assert (=> bs!1577181 m!7124184))

(assert (=> b!6307504 d!1979523))

(declare-fun d!1979525 () Bool)

(declare-fun res!2599676 () Bool)

(declare-fun e!3834229 () Bool)

(assert (=> d!1979525 (=> res!2599676 e!3834229)))

(assert (=> d!1979525 (= res!2599676 ((_ is Nil!64844) lt!2358694))))

(assert (=> d!1979525 (= (forall!15373 lt!2358694 lambda!346482) e!3834229)))

(declare-fun b!6307902 () Bool)

(declare-fun e!3834230 () Bool)

(assert (=> b!6307902 (= e!3834229 e!3834230)))

(declare-fun res!2599677 () Bool)

(assert (=> b!6307902 (=> (not res!2599677) (not e!3834230))))

(assert (=> b!6307902 (= res!2599677 (dynLambda!25675 lambda!346482 (h!71292 lt!2358694)))))

(declare-fun b!6307903 () Bool)

(assert (=> b!6307903 (= e!3834230 (forall!15373 (t!378540 lt!2358694) lambda!346482))))

(assert (= (and d!1979525 (not res!2599676)) b!6307902))

(assert (= (and b!6307902 res!2599677) b!6307903))

(declare-fun b_lambda!239939 () Bool)

(assert (=> (not b_lambda!239939) (not b!6307902)))

(declare-fun m!7124186 () Bool)

(assert (=> b!6307902 m!7124186))

(declare-fun m!7124188 () Bool)

(assert (=> b!6307903 m!7124188))

(assert (=> d!1979387 d!1979525))

(declare-fun d!1979527 () Bool)

(assert (=> d!1979527 (= (head!12946 s!2326) (h!71294 s!2326))))

(assert (=> b!6307614 d!1979527))

(declare-fun d!1979529 () Bool)

(declare-fun res!2599682 () Bool)

(declare-fun e!3834235 () Bool)

(assert (=> d!1979529 (=> res!2599682 e!3834235)))

(assert (=> d!1979529 (= res!2599682 ((_ is Nil!64845) lt!2358638))))

(assert (=> d!1979529 (= (noDuplicate!2056 lt!2358638) e!3834235)))

(declare-fun b!6307908 () Bool)

(declare-fun e!3834236 () Bool)

(assert (=> b!6307908 (= e!3834235 e!3834236)))

(declare-fun res!2599683 () Bool)

(assert (=> b!6307908 (=> (not res!2599683) (not e!3834236))))

(declare-fun contains!20136 (List!64969 Context!11214) Bool)

(assert (=> b!6307908 (= res!2599683 (not (contains!20136 (t!378541 lt!2358638) (h!71293 lt!2358638))))))

(declare-fun b!6307909 () Bool)

(assert (=> b!6307909 (= e!3834236 (noDuplicate!2056 (t!378541 lt!2358638)))))

(assert (= (and d!1979529 (not res!2599682)) b!6307908))

(assert (= (and b!6307908 res!2599683) b!6307909))

(declare-fun m!7124190 () Bool)

(assert (=> b!6307908 m!7124190))

(declare-fun m!7124192 () Bool)

(assert (=> b!6307909 m!7124192))

(assert (=> d!1979271 d!1979529))

(declare-fun d!1979531 () Bool)

(declare-fun e!3834246 () Bool)

(assert (=> d!1979531 e!3834246))

(declare-fun res!2599693 () Bool)

(assert (=> d!1979531 (=> (not res!2599693) (not e!3834246))))

(declare-fun res!2599692 () List!64969)

(assert (=> d!1979531 (= res!2599693 (noDuplicate!2056 res!2599692))))

(declare-fun e!3834247 () Bool)

(assert (=> d!1979531 e!3834247))

(assert (=> d!1979531 (= (choose!46830 z!1189) res!2599692)))

(declare-fun b!6307921 () Bool)

(declare-fun e!3834245 () Bool)

(declare-fun tp!1757178 () Bool)

(assert (=> b!6307921 (= e!3834245 tp!1757178)))

(declare-fun tp!1757177 () Bool)

(declare-fun b!6307920 () Bool)

(assert (=> b!6307920 (= e!3834247 (and (inv!83804 (h!71293 res!2599692)) e!3834245 tp!1757177))))

(declare-fun b!6307922 () Bool)

(assert (=> b!6307922 (= e!3834246 (= (content!12209 res!2599692) z!1189))))

(assert (= b!6307920 b!6307921))

(assert (= (and d!1979531 ((_ is Cons!64845) res!2599692)) b!6307920))

(assert (= (and d!1979531 res!2599693) b!6307922))

(declare-fun m!7124194 () Bool)

(assert (=> d!1979531 m!7124194))

(declare-fun m!7124196 () Bool)

(assert (=> b!6307920 m!7124196))

(declare-fun m!7124198 () Bool)

(assert (=> b!6307922 m!7124198))

(assert (=> d!1979271 d!1979531))

(declare-fun call!535280 () (InoxSet Context!11214))

(declare-fun call!535282 () List!64968)

(declare-fun bm!535273 () Bool)

(declare-fun c!1145405 () Bool)

(assert (=> bm!535273 (= call!535280 (derivationStepZipperDown!1471 (ite c!1145405 (regOne!32959 (h!71292 (exprs!6107 lt!2358609))) (regOne!32958 (h!71292 (exprs!6107 lt!2358609)))) (ite c!1145405 (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (Context!11215 call!535282)) (h!71294 s!2326)))))

(declare-fun c!1145407 () Bool)

(declare-fun c!1145406 () Bool)

(declare-fun call!535281 () List!64968)

(declare-fun bm!535274 () Bool)

(declare-fun call!535279 () (InoxSet Context!11214))

(assert (=> bm!535274 (= call!535279 (derivationStepZipperDown!1471 (ite c!1145405 (regTwo!32959 (h!71292 (exprs!6107 lt!2358609))) (ite c!1145406 (regTwo!32958 (h!71292 (exprs!6107 lt!2358609))) (ite c!1145407 (regOne!32958 (h!71292 (exprs!6107 lt!2358609))) (reg!16552 (h!71292 (exprs!6107 lt!2358609)))))) (ite (or c!1145405 c!1145406) (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (Context!11215 call!535281)) (h!71294 s!2326)))))

(declare-fun b!6307923 () Bool)

(declare-fun e!3834249 () (InoxSet Context!11214))

(assert (=> b!6307923 (= e!3834249 (store ((as const (Array Context!11214 Bool)) false) (Context!11215 (t!378540 (exprs!6107 lt!2358609))) true))))

(declare-fun b!6307924 () Bool)

(declare-fun c!1145409 () Bool)

(assert (=> b!6307924 (= c!1145409 ((_ is Star!16223) (h!71292 (exprs!6107 lt!2358609))))))

(declare-fun e!3834250 () (InoxSet Context!11214))

(declare-fun e!3834251 () (InoxSet Context!11214))

(assert (=> b!6307924 (= e!3834250 e!3834251)))

(declare-fun b!6307925 () Bool)

(assert (=> b!6307925 (= e!3834251 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6307926 () Bool)

(declare-fun e!3834253 () (InoxSet Context!11214))

(assert (=> b!6307926 (= e!3834249 e!3834253)))

(assert (=> b!6307926 (= c!1145405 ((_ is Union!16223) (h!71292 (exprs!6107 lt!2358609))))))

(declare-fun b!6307927 () Bool)

(declare-fun e!3834248 () (InoxSet Context!11214))

(assert (=> b!6307927 (= e!3834248 e!3834250)))

(assert (=> b!6307927 (= c!1145407 ((_ is Concat!25068) (h!71292 (exprs!6107 lt!2358609))))))

(declare-fun b!6307928 () Bool)

(declare-fun e!3834252 () Bool)

(assert (=> b!6307928 (= c!1145406 e!3834252)))

(declare-fun res!2599694 () Bool)

(assert (=> b!6307928 (=> (not res!2599694) (not e!3834252))))

(assert (=> b!6307928 (= res!2599694 ((_ is Concat!25068) (h!71292 (exprs!6107 lt!2358609))))))

(assert (=> b!6307928 (= e!3834253 e!3834248)))

(declare-fun bm!535275 () Bool)

(assert (=> bm!535275 (= call!535282 ($colon$colon!2088 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358609)))) (ite (or c!1145406 c!1145407) (regTwo!32958 (h!71292 (exprs!6107 lt!2358609))) (h!71292 (exprs!6107 lt!2358609)))))))

(declare-fun b!6307929 () Bool)

(declare-fun call!535278 () (InoxSet Context!11214))

(assert (=> b!6307929 (= e!3834248 ((_ map or) call!535280 call!535278))))

(declare-fun b!6307930 () Bool)

(declare-fun call!535283 () (InoxSet Context!11214))

(assert (=> b!6307930 (= e!3834251 call!535283)))

(declare-fun b!6307931 () Bool)

(assert (=> b!6307931 (= e!3834250 call!535283)))

(declare-fun b!6307932 () Bool)

(assert (=> b!6307932 (= e!3834253 ((_ map or) call!535280 call!535279))))

(declare-fun b!6307933 () Bool)

(assert (=> b!6307933 (= e!3834252 (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 lt!2358609)))))))

(declare-fun bm!535277 () Bool)

(assert (=> bm!535277 (= call!535283 call!535278)))

(declare-fun bm!535278 () Bool)

(assert (=> bm!535278 (= call!535281 call!535282)))

(declare-fun bm!535276 () Bool)

(assert (=> bm!535276 (= call!535278 call!535279)))

(declare-fun d!1979533 () Bool)

(declare-fun c!1145408 () Bool)

(assert (=> d!1979533 (= c!1145408 (and ((_ is ElementMatch!16223) (h!71292 (exprs!6107 lt!2358609))) (= (c!1145130 (h!71292 (exprs!6107 lt!2358609))) (h!71294 s!2326))))))

(assert (=> d!1979533 (= (derivationStepZipperDown!1471 (h!71292 (exprs!6107 lt!2358609)) (Context!11215 (t!378540 (exprs!6107 lt!2358609))) (h!71294 s!2326)) e!3834249)))

(assert (= (and d!1979533 c!1145408) b!6307923))

(assert (= (and d!1979533 (not c!1145408)) b!6307926))

(assert (= (and b!6307926 c!1145405) b!6307932))

(assert (= (and b!6307926 (not c!1145405)) b!6307928))

(assert (= (and b!6307928 res!2599694) b!6307933))

(assert (= (and b!6307928 c!1145406) b!6307929))

(assert (= (and b!6307928 (not c!1145406)) b!6307927))

(assert (= (and b!6307927 c!1145407) b!6307931))

(assert (= (and b!6307927 (not c!1145407)) b!6307924))

(assert (= (and b!6307924 c!1145409) b!6307930))

(assert (= (and b!6307924 (not c!1145409)) b!6307925))

(assert (= (or b!6307931 b!6307930) bm!535278))

(assert (= (or b!6307931 b!6307930) bm!535277))

(assert (= (or b!6307929 bm!535278) bm!535275))

(assert (= (or b!6307929 bm!535277) bm!535276))

(assert (= (or b!6307932 bm!535276) bm!535274))

(assert (= (or b!6307932 b!6307929) bm!535273))

(declare-fun m!7124200 () Bool)

(assert (=> bm!535273 m!7124200))

(declare-fun m!7124202 () Bool)

(assert (=> bm!535275 m!7124202))

(declare-fun m!7124204 () Bool)

(assert (=> b!6307933 m!7124204))

(declare-fun m!7124206 () Bool)

(assert (=> bm!535274 m!7124206))

(declare-fun m!7124208 () Bool)

(assert (=> b!6307923 m!7124208))

(assert (=> bm!535147 d!1979533))

(declare-fun d!1979535 () Bool)

(assert (=> d!1979535 (= (isEmptyLang!1636 lt!2358691) ((_ is EmptyLang!16223) lt!2358691))))

(assert (=> b!6307494 d!1979535))

(declare-fun bs!1577182 () Bool)

(declare-fun d!1979537 () Bool)

(assert (= bs!1577182 (and d!1979537 d!1979517)))

(declare-fun lambda!346511 () Int)

(assert (=> bs!1577182 (= lambda!346511 lambda!346504)))

(declare-fun bs!1577183 () Bool)

(assert (= bs!1577183 (and d!1979537 d!1979523)))

(assert (=> bs!1577183 (= lambda!346511 lambda!346506)))

(assert (=> d!1979537 (= (nullableZipper!1993 lt!2358618) (exists!2543 lt!2358618 lambda!346511))))

(declare-fun bs!1577184 () Bool)

(assert (= bs!1577184 d!1979537))

(declare-fun m!7124210 () Bool)

(assert (=> bs!1577184 m!7124210))

(assert (=> b!6307138 d!1979537))

(declare-fun d!1979539 () Bool)

(assert (=> d!1979539 (= (head!12947 (exprs!6107 (h!71293 zl!343))) (h!71292 (exprs!6107 (h!71293 zl!343))))))

(assert (=> b!6307531 d!1979539))

(declare-fun bs!1577185 () Bool)

(declare-fun d!1979541 () Bool)

(assert (= bs!1577185 (and d!1979541 d!1979385)))

(declare-fun lambda!346512 () Int)

(assert (=> bs!1577185 (= lambda!346512 lambda!346479)))

(declare-fun bs!1577186 () Bool)

(assert (= bs!1577186 (and d!1979541 d!1979387)))

(assert (=> bs!1577186 (= lambda!346512 lambda!346482)))

(declare-fun bs!1577187 () Bool)

(assert (= bs!1577187 (and d!1979541 d!1979347)))

(assert (=> bs!1577187 (= lambda!346512 lambda!346458)))

(declare-fun bs!1577188 () Bool)

(assert (= bs!1577188 (and d!1979541 d!1979521)))

(assert (=> bs!1577188 (= lambda!346512 lambda!346505)))

(declare-fun bs!1577189 () Bool)

(assert (= bs!1577189 (and d!1979541 d!1979337)))

(assert (=> bs!1577189 (= lambda!346512 lambda!346457)))

(declare-fun bs!1577190 () Bool)

(assert (= bs!1577190 (and d!1979541 d!1979277)))

(assert (=> bs!1577190 (= lambda!346512 lambda!346449)))

(declare-fun bs!1577191 () Bool)

(assert (= bs!1577191 (and d!1979541 d!1979395)))

(assert (=> bs!1577191 (= lambda!346512 lambda!346485)))

(assert (=> d!1979541 (= (inv!83804 setElem!42930) (forall!15373 (exprs!6107 setElem!42930) lambda!346512))))

(declare-fun bs!1577192 () Bool)

(assert (= bs!1577192 d!1979541))

(declare-fun m!7124212 () Bool)

(assert (=> bs!1577192 m!7124212))

(assert (=> setNonEmpty!42930 d!1979541))

(declare-fun d!1979543 () Bool)

(assert (=> d!1979543 (= (Exists!3293 lambda!346475) (choose!46839 lambda!346475))))

(declare-fun bs!1577194 () Bool)

(assert (= bs!1577194 d!1979543))

(declare-fun m!7124214 () Bool)

(assert (=> bs!1577194 m!7124214))

(assert (=> d!1979381 d!1979543))

(declare-fun d!1979545 () Bool)

(assert (=> d!1979545 (= (Exists!3293 lambda!346476) (choose!46839 lambda!346476))))

(declare-fun bs!1577196 () Bool)

(assert (= bs!1577196 d!1979545))

(declare-fun m!7124216 () Bool)

(assert (=> bs!1577196 m!7124216))

(assert (=> d!1979381 d!1979545))

(declare-fun bs!1577202 () Bool)

(declare-fun d!1979547 () Bool)

(assert (= bs!1577202 (and d!1979547 b!6306949)))

(declare-fun lambda!346519 () Int)

(assert (=> bs!1577202 (not (= lambda!346519 lambda!346432))))

(declare-fun bs!1577203 () Bool)

(assert (= bs!1577203 (and d!1979547 b!6307570)))

(assert (=> bs!1577203 (not (= lambda!346519 lambda!346491))))

(declare-fun bs!1577204 () Bool)

(assert (= bs!1577204 (and d!1979547 b!6307568)))

(assert (=> bs!1577204 (not (= lambda!346519 lambda!346490))))

(assert (=> bs!1577202 (= lambda!346519 lambda!346431)))

(declare-fun bs!1577205 () Bool)

(assert (= bs!1577205 (and d!1979547 d!1979381)))

(assert (=> bs!1577205 (not (= lambda!346519 lambda!346476))))

(assert (=> bs!1577205 (= lambda!346519 lambda!346475)))

(declare-fun bs!1577206 () Bool)

(assert (= bs!1577206 (and d!1979547 d!1979373)))

(assert (=> bs!1577206 (= lambda!346519 lambda!346470)))

(assert (=> d!1979547 true))

(assert (=> d!1979547 true))

(assert (=> d!1979547 true))

(declare-fun lambda!346521 () Int)

(assert (=> bs!1577202 (= lambda!346521 lambda!346432)))

(assert (=> bs!1577203 (= lambda!346521 lambda!346491)))

(assert (=> bs!1577204 (not (= lambda!346521 lambda!346490))))

(assert (=> bs!1577202 (not (= lambda!346521 lambda!346431))))

(declare-fun bs!1577209 () Bool)

(assert (= bs!1577209 d!1979547))

(assert (=> bs!1577209 (not (= lambda!346521 lambda!346519))))

(assert (=> bs!1577205 (= lambda!346521 lambda!346476)))

(assert (=> bs!1577205 (not (= lambda!346521 lambda!346475))))

(assert (=> bs!1577206 (not (= lambda!346521 lambda!346470))))

(assert (=> d!1979547 true))

(assert (=> d!1979547 true))

(assert (=> d!1979547 true))

(assert (=> d!1979547 (= (Exists!3293 lambda!346519) (Exists!3293 lambda!346521))))

(assert (=> d!1979547 true))

(declare-fun _$90!2145 () Unit!158223)

(assert (=> d!1979547 (= (choose!46841 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326) _$90!2145)))

(declare-fun m!7124252 () Bool)

(assert (=> bs!1577209 m!7124252))

(declare-fun m!7124254 () Bool)

(assert (=> bs!1577209 m!7124254))

(assert (=> d!1979381 d!1979547))

(declare-fun b!6307982 () Bool)

(declare-fun e!3834279 () Bool)

(declare-fun call!535298 () Bool)

(assert (=> b!6307982 (= e!3834279 call!535298)))

(declare-fun bm!535292 () Bool)

(declare-fun call!535299 () Bool)

(declare-fun c!1145424 () Bool)

(declare-fun c!1145423 () Bool)

(assert (=> bm!535292 (= call!535299 (validRegex!7959 (ite c!1145423 (reg!16552 (regOne!32958 r!7292)) (ite c!1145424 (regTwo!32959 (regOne!32958 r!7292)) (regTwo!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6307983 () Bool)

(declare-fun e!3834283 () Bool)

(declare-fun e!3834284 () Bool)

(assert (=> b!6307983 (= e!3834283 e!3834284)))

(assert (=> b!6307983 (= c!1145424 ((_ is Union!16223) (regOne!32958 r!7292)))))

(declare-fun b!6307984 () Bool)

(declare-fun e!3834281 () Bool)

(assert (=> b!6307984 (= e!3834281 call!535299)))

(declare-fun bm!535293 () Bool)

(assert (=> bm!535293 (= call!535298 call!535299)))

(declare-fun b!6307986 () Bool)

(declare-fun e!3834280 () Bool)

(assert (=> b!6307986 (= e!3834280 e!3834279)))

(declare-fun res!2599717 () Bool)

(assert (=> b!6307986 (=> (not res!2599717) (not e!3834279))))

(declare-fun call!535297 () Bool)

(assert (=> b!6307986 (= res!2599717 call!535297)))

(declare-fun b!6307987 () Bool)

(assert (=> b!6307987 (= e!3834283 e!3834281)))

(declare-fun res!2599718 () Bool)

(assert (=> b!6307987 (= res!2599718 (not (nullable!6216 (reg!16552 (regOne!32958 r!7292)))))))

(assert (=> b!6307987 (=> (not res!2599718) (not e!3834281))))

(declare-fun b!6307988 () Bool)

(declare-fun res!2599719 () Bool)

(declare-fun e!3834285 () Bool)

(assert (=> b!6307988 (=> (not res!2599719) (not e!3834285))))

(assert (=> b!6307988 (= res!2599719 call!535297)))

(assert (=> b!6307988 (= e!3834284 e!3834285)))

(declare-fun bm!535294 () Bool)

(assert (=> bm!535294 (= call!535297 (validRegex!7959 (ite c!1145424 (regOne!32959 (regOne!32958 r!7292)) (regOne!32958 (regOne!32958 r!7292)))))))

(declare-fun b!6307985 () Bool)

(assert (=> b!6307985 (= e!3834285 call!535298)))

(declare-fun d!1979567 () Bool)

(declare-fun res!2599720 () Bool)

(declare-fun e!3834282 () Bool)

(assert (=> d!1979567 (=> res!2599720 e!3834282)))

(assert (=> d!1979567 (= res!2599720 ((_ is ElementMatch!16223) (regOne!32958 r!7292)))))

(assert (=> d!1979567 (= (validRegex!7959 (regOne!32958 r!7292)) e!3834282)))

(declare-fun b!6307989 () Bool)

(assert (=> b!6307989 (= e!3834282 e!3834283)))

(assert (=> b!6307989 (= c!1145423 ((_ is Star!16223) (regOne!32958 r!7292)))))

(declare-fun b!6307990 () Bool)

(declare-fun res!2599721 () Bool)

(assert (=> b!6307990 (=> res!2599721 e!3834280)))

(assert (=> b!6307990 (= res!2599721 (not ((_ is Concat!25068) (regOne!32958 r!7292))))))

(assert (=> b!6307990 (= e!3834284 e!3834280)))

(assert (= (and d!1979567 (not res!2599720)) b!6307989))

(assert (= (and b!6307989 c!1145423) b!6307987))

(assert (= (and b!6307989 (not c!1145423)) b!6307983))

(assert (= (and b!6307987 res!2599718) b!6307984))

(assert (= (and b!6307983 c!1145424) b!6307988))

(assert (= (and b!6307983 (not c!1145424)) b!6307990))

(assert (= (and b!6307988 res!2599719) b!6307985))

(assert (= (and b!6307990 (not res!2599721)) b!6307986))

(assert (= (and b!6307986 res!2599717) b!6307982))

(assert (= (or b!6307985 b!6307982) bm!535293))

(assert (= (or b!6307988 b!6307986) bm!535294))

(assert (= (or b!6307984 bm!535293) bm!535292))

(declare-fun m!7124256 () Bool)

(assert (=> bm!535292 m!7124256))

(declare-fun m!7124258 () Bool)

(assert (=> b!6307987 m!7124258))

(declare-fun m!7124260 () Bool)

(assert (=> bm!535294 m!7124260))

(assert (=> d!1979381 d!1979567))

(assert (=> bs!1577155 d!1979325))

(declare-fun bs!1577211 () Bool)

(declare-fun d!1979569 () Bool)

(assert (= bs!1577211 (and d!1979569 d!1979517)))

(declare-fun lambda!346522 () Int)

(assert (=> bs!1577211 (= lambda!346522 lambda!346504)))

(declare-fun bs!1577212 () Bool)

(assert (= bs!1577212 (and d!1979569 d!1979523)))

(assert (=> bs!1577212 (= lambda!346522 lambda!346506)))

(declare-fun bs!1577213 () Bool)

(assert (= bs!1577213 (and d!1979569 d!1979537)))

(assert (=> bs!1577213 (= lambda!346522 lambda!346511)))

(assert (=> d!1979569 (= (nullableZipper!1993 lt!2358613) (exists!2543 lt!2358613 lambda!346522))))

(declare-fun bs!1577214 () Bool)

(assert (= bs!1577214 d!1979569))

(declare-fun m!7124262 () Bool)

(assert (=> bs!1577214 m!7124262))

(assert (=> b!6307275 d!1979569))

(declare-fun d!1979573 () Bool)

(assert (=> d!1979573 (= (isEmpty!36910 (unfocusZipperList!1644 zl!343)) ((_ is Nil!64844) (unfocusZipperList!1644 zl!343)))))

(assert (=> b!6307490 d!1979573))

(declare-fun d!1979575 () Bool)

(assert (=> d!1979575 (= (isEmpty!36910 (tail!12032 (exprs!6107 (h!71293 zl!343)))) ((_ is Nil!64844) (tail!12032 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> b!6307527 d!1979575))

(declare-fun d!1979577 () Bool)

(assert (=> d!1979577 (= (tail!12032 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))

(assert (=> b!6307527 d!1979577))

(declare-fun b!6307991 () Bool)

(declare-fun e!3834286 () Bool)

(declare-fun call!535301 () Bool)

(assert (=> b!6307991 (= e!3834286 call!535301)))

(declare-fun call!535302 () Bool)

(declare-fun c!1145425 () Bool)

(declare-fun bm!535295 () Bool)

(declare-fun c!1145426 () Bool)

(assert (=> bm!535295 (= call!535302 (validRegex!7959 (ite c!1145425 (reg!16552 lt!2358658) (ite c!1145426 (regTwo!32959 lt!2358658) (regTwo!32958 lt!2358658)))))))

(declare-fun b!6307992 () Bool)

(declare-fun e!3834290 () Bool)

(declare-fun e!3834291 () Bool)

(assert (=> b!6307992 (= e!3834290 e!3834291)))

(assert (=> b!6307992 (= c!1145426 ((_ is Union!16223) lt!2358658))))

(declare-fun b!6307993 () Bool)

(declare-fun e!3834288 () Bool)

(assert (=> b!6307993 (= e!3834288 call!535302)))

(declare-fun bm!535296 () Bool)

(assert (=> bm!535296 (= call!535301 call!535302)))

(declare-fun b!6307995 () Bool)

(declare-fun e!3834287 () Bool)

(assert (=> b!6307995 (= e!3834287 e!3834286)))

(declare-fun res!2599722 () Bool)

(assert (=> b!6307995 (=> (not res!2599722) (not e!3834286))))

(declare-fun call!535300 () Bool)

(assert (=> b!6307995 (= res!2599722 call!535300)))

(declare-fun b!6307996 () Bool)

(assert (=> b!6307996 (= e!3834290 e!3834288)))

(declare-fun res!2599723 () Bool)

(assert (=> b!6307996 (= res!2599723 (not (nullable!6216 (reg!16552 lt!2358658))))))

(assert (=> b!6307996 (=> (not res!2599723) (not e!3834288))))

(declare-fun b!6307997 () Bool)

(declare-fun res!2599724 () Bool)

(declare-fun e!3834292 () Bool)

(assert (=> b!6307997 (=> (not res!2599724) (not e!3834292))))

(assert (=> b!6307997 (= res!2599724 call!535300)))

(assert (=> b!6307997 (= e!3834291 e!3834292)))

(declare-fun bm!535297 () Bool)

(assert (=> bm!535297 (= call!535300 (validRegex!7959 (ite c!1145426 (regOne!32959 lt!2358658) (regOne!32958 lt!2358658))))))

(declare-fun b!6307994 () Bool)

(assert (=> b!6307994 (= e!3834292 call!535301)))

(declare-fun d!1979579 () Bool)

(declare-fun res!2599725 () Bool)

(declare-fun e!3834289 () Bool)

(assert (=> d!1979579 (=> res!2599725 e!3834289)))

(assert (=> d!1979579 (= res!2599725 ((_ is ElementMatch!16223) lt!2358658))))

(assert (=> d!1979579 (= (validRegex!7959 lt!2358658) e!3834289)))

(declare-fun b!6307998 () Bool)

(assert (=> b!6307998 (= e!3834289 e!3834290)))

(assert (=> b!6307998 (= c!1145425 ((_ is Star!16223) lt!2358658))))

(declare-fun b!6307999 () Bool)

(declare-fun res!2599726 () Bool)

(assert (=> b!6307999 (=> res!2599726 e!3834287)))

(assert (=> b!6307999 (= res!2599726 (not ((_ is Concat!25068) lt!2358658)))))

(assert (=> b!6307999 (= e!3834291 e!3834287)))

(assert (= (and d!1979579 (not res!2599725)) b!6307998))

(assert (= (and b!6307998 c!1145425) b!6307996))

(assert (= (and b!6307998 (not c!1145425)) b!6307992))

(assert (= (and b!6307996 res!2599723) b!6307993))

(assert (= (and b!6307992 c!1145426) b!6307997))

(assert (= (and b!6307992 (not c!1145426)) b!6307999))

(assert (= (and b!6307997 res!2599724) b!6307994))

(assert (= (and b!6307999 (not res!2599726)) b!6307995))

(assert (= (and b!6307995 res!2599722) b!6307991))

(assert (= (or b!6307994 b!6307991) bm!535296))

(assert (= (or b!6307997 b!6307995) bm!535297))

(assert (= (or b!6307993 bm!535296) bm!535295))

(declare-fun m!7124264 () Bool)

(assert (=> bm!535295 m!7124264))

(declare-fun m!7124266 () Bool)

(assert (=> b!6307996 m!7124266))

(declare-fun m!7124268 () Bool)

(assert (=> bm!535297 m!7124268))

(assert (=> d!1979351 d!1979579))

(assert (=> d!1979351 d!1979385))

(assert (=> d!1979351 d!1979387))

(declare-fun b!6308012 () Bool)

(declare-fun res!2599734 () Bool)

(declare-fun e!3834302 () Bool)

(assert (=> b!6308012 (=> res!2599734 e!3834302)))

(assert (=> b!6308012 (= res!2599734 (not ((_ is ElementMatch!16223) (regTwo!32958 r!7292))))))

(declare-fun e!3834309 () Bool)

(assert (=> b!6308012 (= e!3834309 e!3834302)))

(declare-fun b!6308013 () Bool)

(declare-fun res!2599739 () Bool)

(declare-fun e!3834303 () Bool)

(assert (=> b!6308013 (=> (not res!2599739) (not e!3834303))))

(assert (=> b!6308013 (= res!2599739 (isEmpty!36912 (tail!12031 (_2!36505 (get!22423 lt!2358680)))))))

(declare-fun d!1979581 () Bool)

(declare-fun e!3834306 () Bool)

(assert (=> d!1979581 e!3834306))

(declare-fun c!1145430 () Bool)

(assert (=> d!1979581 (= c!1145430 ((_ is EmptyExpr!16223) (regTwo!32958 r!7292)))))

(declare-fun lt!2358715 () Bool)

(declare-fun e!3834307 () Bool)

(assert (=> d!1979581 (= lt!2358715 e!3834307)))

(declare-fun c!1145431 () Bool)

(assert (=> d!1979581 (= c!1145431 (isEmpty!36912 (_2!36505 (get!22423 lt!2358680))))))

(assert (=> d!1979581 (validRegex!7959 (regTwo!32958 r!7292))))

(assert (=> d!1979581 (= (matchR!8406 (regTwo!32958 r!7292) (_2!36505 (get!22423 lt!2358680))) lt!2358715)))

(declare-fun b!6308014 () Bool)

(declare-fun res!2599740 () Bool)

(assert (=> b!6308014 (=> res!2599740 e!3834302)))

(assert (=> b!6308014 (= res!2599740 e!3834303)))

(declare-fun res!2599741 () Bool)

(assert (=> b!6308014 (=> (not res!2599741) (not e!3834303))))

(assert (=> b!6308014 (= res!2599741 lt!2358715)))

(declare-fun b!6308015 () Bool)

(declare-fun call!535303 () Bool)

(assert (=> b!6308015 (= e!3834306 (= lt!2358715 call!535303))))

(declare-fun bm!535298 () Bool)

(assert (=> bm!535298 (= call!535303 (isEmpty!36912 (_2!36505 (get!22423 lt!2358680))))))

(declare-fun b!6308016 () Bool)

(assert (=> b!6308016 (= e!3834307 (nullable!6216 (regTwo!32958 r!7292)))))

(declare-fun b!6308017 () Bool)

(declare-fun e!3834301 () Bool)

(assert (=> b!6308017 (= e!3834301 (not (= (head!12946 (_2!36505 (get!22423 lt!2358680))) (c!1145130 (regTwo!32958 r!7292)))))))

(declare-fun b!6308018 () Bool)

(declare-fun res!2599733 () Bool)

(assert (=> b!6308018 (=> (not res!2599733) (not e!3834303))))

(assert (=> b!6308018 (= res!2599733 (not call!535303))))

(declare-fun b!6308019 () Bool)

(assert (=> b!6308019 (= e!3834303 (= (head!12946 (_2!36505 (get!22423 lt!2358680))) (c!1145130 (regTwo!32958 r!7292))))))

(declare-fun b!6308020 () Bool)

(declare-fun res!2599742 () Bool)

(assert (=> b!6308020 (=> res!2599742 e!3834301)))

(assert (=> b!6308020 (= res!2599742 (not (isEmpty!36912 (tail!12031 (_2!36505 (get!22423 lt!2358680))))))))

(declare-fun b!6308021 () Bool)

(assert (=> b!6308021 (= e!3834306 e!3834309)))

(declare-fun c!1145429 () Bool)

(assert (=> b!6308021 (= c!1145429 ((_ is EmptyLang!16223) (regTwo!32958 r!7292)))))

(declare-fun b!6308022 () Bool)

(declare-fun e!3834308 () Bool)

(assert (=> b!6308022 (= e!3834302 e!3834308)))

(declare-fun res!2599735 () Bool)

(assert (=> b!6308022 (=> (not res!2599735) (not e!3834308))))

(assert (=> b!6308022 (= res!2599735 (not lt!2358715))))

(declare-fun b!6308023 () Bool)

(assert (=> b!6308023 (= e!3834309 (not lt!2358715))))

(declare-fun b!6308024 () Bool)

(assert (=> b!6308024 (= e!3834308 e!3834301)))

(declare-fun res!2599738 () Bool)

(assert (=> b!6308024 (=> res!2599738 e!3834301)))

(assert (=> b!6308024 (= res!2599738 call!535303)))

(declare-fun b!6308025 () Bool)

(assert (=> b!6308025 (= e!3834307 (matchR!8406 (derivativeStep!4932 (regTwo!32958 r!7292) (head!12946 (_2!36505 (get!22423 lt!2358680)))) (tail!12031 (_2!36505 (get!22423 lt!2358680)))))))

(assert (= (and d!1979581 c!1145431) b!6308016))

(assert (= (and d!1979581 (not c!1145431)) b!6308025))

(assert (= (and d!1979581 c!1145430) b!6308015))

(assert (= (and d!1979581 (not c!1145430)) b!6308021))

(assert (= (and b!6308021 c!1145429) b!6308023))

(assert (= (and b!6308021 (not c!1145429)) b!6308012))

(assert (= (and b!6308012 (not res!2599734)) b!6308014))

(assert (= (and b!6308014 res!2599741) b!6308018))

(assert (= (and b!6308018 res!2599733) b!6308013))

(assert (= (and b!6308013 res!2599739) b!6308019))

(assert (= (and b!6308014 (not res!2599740)) b!6308022))

(assert (= (and b!6308022 res!2599735) b!6308024))

(assert (= (and b!6308024 (not res!2599738)) b!6308020))

(assert (= (and b!6308020 (not res!2599742)) b!6308017))

(assert (= (or b!6308015 b!6308024 b!6308018) bm!535298))

(declare-fun m!7124270 () Bool)

(assert (=> bm!535298 m!7124270))

(assert (=> d!1979581 m!7124270))

(assert (=> d!1979581 m!7124102))

(declare-fun m!7124272 () Bool)

(assert (=> b!6308017 m!7124272))

(assert (=> b!6308016 m!7124104))

(declare-fun m!7124274 () Bool)

(assert (=> b!6308020 m!7124274))

(assert (=> b!6308020 m!7124274))

(declare-fun m!7124276 () Bool)

(assert (=> b!6308020 m!7124276))

(assert (=> b!6308013 m!7124274))

(assert (=> b!6308013 m!7124274))

(assert (=> b!6308013 m!7124276))

(assert (=> b!6308019 m!7124272))

(assert (=> b!6308025 m!7124272))

(assert (=> b!6308025 m!7124272))

(declare-fun m!7124278 () Bool)

(assert (=> b!6308025 m!7124278))

(assert (=> b!6308025 m!7124274))

(assert (=> b!6308025 m!7124278))

(assert (=> b!6308025 m!7124274))

(declare-fun m!7124280 () Bool)

(assert (=> b!6308025 m!7124280))

(assert (=> b!6307390 d!1979581))

(declare-fun d!1979583 () Bool)

(assert (=> d!1979583 (= (get!22423 lt!2358680) (v!52272 lt!2358680))))

(assert (=> b!6307390 d!1979583))

(assert (=> bm!535197 d!1979467))

(declare-fun bm!535303 () Bool)

(declare-fun call!535308 () (InoxSet Context!11214))

(assert (=> bm!535303 (= call!535308 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605)))))) (h!71294 s!2326)))))

(declare-fun d!1979585 () Bool)

(declare-fun c!1145433 () Bool)

(declare-fun e!3834313 () Bool)

(assert (=> d!1979585 (= c!1145433 e!3834313)))

(declare-fun res!2599745 () Bool)

(assert (=> d!1979585 (=> (not res!2599745) (not e!3834313))))

(assert (=> d!1979585 (= res!2599745 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605))))))))

(declare-fun e!3834314 () (InoxSet Context!11214))

(assert (=> d!1979585 (= (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (h!71294 s!2326)) e!3834314)))

(declare-fun b!6308028 () Bool)

(declare-fun e!3834312 () (InoxSet Context!11214))

(assert (=> b!6308028 (= e!3834312 call!535308)))

(declare-fun b!6308029 () Bool)

(assert (=> b!6308029 (= e!3834312 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308030 () Bool)

(assert (=> b!6308030 (= e!3834314 e!3834312)))

(declare-fun c!1145432 () Bool)

(assert (=> b!6308030 (= c!1145432 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605))))))))

(declare-fun b!6308031 () Bool)

(assert (=> b!6308031 (= e!3834314 ((_ map or) call!535308 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605)))))) (h!71294 s!2326))))))

(declare-fun b!6308032 () Bool)

(assert (=> b!6308032 (= e!3834313 (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605)))))))))

(assert (= (and d!1979585 res!2599745) b!6308032))

(assert (= (and d!1979585 c!1145433) b!6308031))

(assert (= (and d!1979585 (not c!1145433)) b!6308030))

(assert (= (and b!6308030 c!1145432) b!6308028))

(assert (= (and b!6308030 (not c!1145432)) b!6308029))

(assert (= (or b!6308031 b!6308028) bm!535303))

(declare-fun m!7124282 () Bool)

(assert (=> bm!535303 m!7124282))

(declare-fun m!7124284 () Bool)

(assert (=> b!6308031 m!7124284))

(declare-fun m!7124286 () Bool)

(assert (=> b!6308032 m!7124286))

(assert (=> b!6307116 d!1979585))

(assert (=> d!1979303 d!1979279))

(declare-fun d!1979587 () Bool)

(assert (=> d!1979587 (= (flatMap!1728 lt!2358604 lambda!346433) (dynLambda!25673 lambda!346433 lt!2358605))))

(assert (=> d!1979587 true))

(declare-fun _$13!3442 () Unit!158223)

(assert (=> d!1979587 (= (choose!46833 lt!2358604 lt!2358605 lambda!346433) _$13!3442)))

(declare-fun b_lambda!239943 () Bool)

(assert (=> (not b_lambda!239943) (not d!1979587)))

(declare-fun bs!1577215 () Bool)

(assert (= bs!1577215 d!1979587))

(assert (=> bs!1577215 m!7123472))

(assert (=> bs!1577215 m!7123672))

(assert (=> d!1979303 d!1979587))

(declare-fun call!535317 () List!64968)

(declare-fun c!1145439 () Bool)

(declare-fun call!535315 () (InoxSet Context!11214))

(declare-fun bm!535308 () Bool)

(assert (=> bm!535308 (= call!535315 (derivationStepZipperDown!1471 (ite c!1145439 (regOne!32959 (h!71292 (exprs!6107 lt!2358605))) (regOne!32958 (h!71292 (exprs!6107 lt!2358605)))) (ite c!1145439 (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (Context!11215 call!535317)) (h!71294 s!2326)))))

(declare-fun bm!535309 () Bool)

(declare-fun call!535316 () List!64968)

(declare-fun call!535314 () (InoxSet Context!11214))

(declare-fun c!1145441 () Bool)

(declare-fun c!1145440 () Bool)

(assert (=> bm!535309 (= call!535314 (derivationStepZipperDown!1471 (ite c!1145439 (regTwo!32959 (h!71292 (exprs!6107 lt!2358605))) (ite c!1145440 (regTwo!32958 (h!71292 (exprs!6107 lt!2358605))) (ite c!1145441 (regOne!32958 (h!71292 (exprs!6107 lt!2358605))) (reg!16552 (h!71292 (exprs!6107 lt!2358605)))))) (ite (or c!1145439 c!1145440) (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (Context!11215 call!535316)) (h!71294 s!2326)))))

(declare-fun b!6308051 () Bool)

(declare-fun e!3834329 () (InoxSet Context!11214))

(assert (=> b!6308051 (= e!3834329 (store ((as const (Array Context!11214 Bool)) false) (Context!11215 (t!378540 (exprs!6107 lt!2358605))) true))))

(declare-fun b!6308052 () Bool)

(declare-fun c!1145443 () Bool)

(assert (=> b!6308052 (= c!1145443 ((_ is Star!16223) (h!71292 (exprs!6107 lt!2358605))))))

(declare-fun e!3834330 () (InoxSet Context!11214))

(declare-fun e!3834331 () (InoxSet Context!11214))

(assert (=> b!6308052 (= e!3834330 e!3834331)))

(declare-fun b!6308053 () Bool)

(assert (=> b!6308053 (= e!3834331 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308054 () Bool)

(declare-fun e!3834333 () (InoxSet Context!11214))

(assert (=> b!6308054 (= e!3834329 e!3834333)))

(assert (=> b!6308054 (= c!1145439 ((_ is Union!16223) (h!71292 (exprs!6107 lt!2358605))))))

(declare-fun b!6308055 () Bool)

(declare-fun e!3834328 () (InoxSet Context!11214))

(assert (=> b!6308055 (= e!3834328 e!3834330)))

(assert (=> b!6308055 (= c!1145441 ((_ is Concat!25068) (h!71292 (exprs!6107 lt!2358605))))))

(declare-fun b!6308056 () Bool)

(declare-fun e!3834332 () Bool)

(assert (=> b!6308056 (= c!1145440 e!3834332)))

(declare-fun res!2599754 () Bool)

(assert (=> b!6308056 (=> (not res!2599754) (not e!3834332))))

(assert (=> b!6308056 (= res!2599754 ((_ is Concat!25068) (h!71292 (exprs!6107 lt!2358605))))))

(assert (=> b!6308056 (= e!3834333 e!3834328)))

(declare-fun bm!535310 () Bool)

(assert (=> bm!535310 (= call!535317 ($colon$colon!2088 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 lt!2358605)))) (ite (or c!1145440 c!1145441) (regTwo!32958 (h!71292 (exprs!6107 lt!2358605))) (h!71292 (exprs!6107 lt!2358605)))))))

(declare-fun b!6308057 () Bool)

(declare-fun call!535313 () (InoxSet Context!11214))

(assert (=> b!6308057 (= e!3834328 ((_ map or) call!535315 call!535313))))

(declare-fun b!6308058 () Bool)

(declare-fun call!535318 () (InoxSet Context!11214))

(assert (=> b!6308058 (= e!3834331 call!535318)))

(declare-fun b!6308059 () Bool)

(assert (=> b!6308059 (= e!3834330 call!535318)))

(declare-fun b!6308060 () Bool)

(assert (=> b!6308060 (= e!3834333 ((_ map or) call!535315 call!535314))))

(declare-fun b!6308061 () Bool)

(assert (=> b!6308061 (= e!3834332 (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 lt!2358605)))))))

(declare-fun bm!535312 () Bool)

(assert (=> bm!535312 (= call!535318 call!535313)))

(declare-fun bm!535313 () Bool)

(assert (=> bm!535313 (= call!535316 call!535317)))

(declare-fun bm!535311 () Bool)

(assert (=> bm!535311 (= call!535313 call!535314)))

(declare-fun d!1979591 () Bool)

(declare-fun c!1145442 () Bool)

(assert (=> d!1979591 (= c!1145442 (and ((_ is ElementMatch!16223) (h!71292 (exprs!6107 lt!2358605))) (= (c!1145130 (h!71292 (exprs!6107 lt!2358605))) (h!71294 s!2326))))))

(assert (=> d!1979591 (= (derivationStepZipperDown!1471 (h!71292 (exprs!6107 lt!2358605)) (Context!11215 (t!378540 (exprs!6107 lt!2358605))) (h!71294 s!2326)) e!3834329)))

(assert (= (and d!1979591 c!1145442) b!6308051))

(assert (= (and d!1979591 (not c!1145442)) b!6308054))

(assert (= (and b!6308054 c!1145439) b!6308060))

(assert (= (and b!6308054 (not c!1145439)) b!6308056))

(assert (= (and b!6308056 res!2599754) b!6308061))

(assert (= (and b!6308056 c!1145440) b!6308057))

(assert (= (and b!6308056 (not c!1145440)) b!6308055))

(assert (= (and b!6308055 c!1145441) b!6308059))

(assert (= (and b!6308055 (not c!1145441)) b!6308052))

(assert (= (and b!6308052 c!1145443) b!6308058))

(assert (= (and b!6308052 (not c!1145443)) b!6308053))

(assert (= (or b!6308059 b!6308058) bm!535313))

(assert (= (or b!6308059 b!6308058) bm!535312))

(assert (= (or b!6308057 bm!535313) bm!535310))

(assert (= (or b!6308057 bm!535312) bm!535311))

(assert (= (or b!6308060 bm!535311) bm!535309))

(assert (= (or b!6308060 b!6308057) bm!535308))

(declare-fun m!7124292 () Bool)

(assert (=> bm!535308 m!7124292))

(declare-fun m!7124294 () Bool)

(assert (=> bm!535310 m!7124294))

(declare-fun m!7124296 () Bool)

(assert (=> b!6308061 m!7124296))

(declare-fun m!7124298 () Bool)

(assert (=> bm!535309 m!7124298))

(declare-fun m!7124300 () Bool)

(assert (=> b!6308051 m!7124300))

(assert (=> bm!535144 d!1979591))

(declare-fun d!1979593 () Bool)

(assert (=> d!1979593 (= (isConcat!1152 lt!2358700) ((_ is Concat!25068) lt!2358700))))

(assert (=> b!6307535 d!1979593))

(declare-fun bs!1577222 () Bool)

(declare-fun d!1979595 () Bool)

(assert (= bs!1577222 (and d!1979595 d!1979385)))

(declare-fun lambda!346524 () Int)

(assert (=> bs!1577222 (= lambda!346524 lambda!346479)))

(declare-fun bs!1577223 () Bool)

(assert (= bs!1577223 (and d!1979595 d!1979387)))

(assert (=> bs!1577223 (= lambda!346524 lambda!346482)))

(declare-fun bs!1577224 () Bool)

(assert (= bs!1577224 (and d!1979595 d!1979347)))

(assert (=> bs!1577224 (= lambda!346524 lambda!346458)))

(declare-fun bs!1577225 () Bool)

(assert (= bs!1577225 (and d!1979595 d!1979521)))

(assert (=> bs!1577225 (= lambda!346524 lambda!346505)))

(declare-fun bs!1577226 () Bool)

(assert (= bs!1577226 (and d!1979595 d!1979541)))

(assert (=> bs!1577226 (= lambda!346524 lambda!346512)))

(declare-fun bs!1577228 () Bool)

(assert (= bs!1577228 (and d!1979595 d!1979337)))

(assert (=> bs!1577228 (= lambda!346524 lambda!346457)))

(declare-fun bs!1577229 () Bool)

(assert (= bs!1577229 (and d!1979595 d!1979277)))

(assert (=> bs!1577229 (= lambda!346524 lambda!346449)))

(declare-fun bs!1577231 () Bool)

(assert (= bs!1577231 (and d!1979595 d!1979395)))

(assert (=> bs!1577231 (= lambda!346524 lambda!346485)))

(assert (=> d!1979595 (= (inv!83804 (h!71293 (t!378541 zl!343))) (forall!15373 (exprs!6107 (h!71293 (t!378541 zl!343))) lambda!346524))))

(declare-fun bs!1577233 () Bool)

(assert (= bs!1577233 d!1979595))

(declare-fun m!7124302 () Bool)

(assert (=> bs!1577233 m!7124302))

(assert (=> b!6307679 d!1979595))

(assert (=> d!1979401 d!1979399))

(assert (=> d!1979401 d!1979397))

(declare-fun d!1979597 () Bool)

(assert (=> d!1979597 (= (matchR!8406 r!7292 s!2326) (matchRSpec!3324 r!7292 s!2326))))

(assert (=> d!1979597 true))

(declare-fun _$88!4971 () Unit!158223)

(assert (=> d!1979597 (= (choose!46843 r!7292 s!2326) _$88!4971)))

(declare-fun bs!1577238 () Bool)

(assert (= bs!1577238 d!1979597))

(assert (=> bs!1577238 m!7123506))

(assert (=> bs!1577238 m!7123504))

(assert (=> d!1979401 d!1979597))

(assert (=> d!1979401 d!1979355))

(declare-fun d!1979605 () Bool)

(assert (=> d!1979605 (= (isEmpty!36912 (t!378542 s!2326)) ((_ is Nil!64846) (t!378542 s!2326)))))

(assert (=> d!1979309 d!1979605))

(declare-fun call!535323 () List!64968)

(declare-fun call!535321 () (InoxSet Context!11214))

(declare-fun c!1145444 () Bool)

(declare-fun bm!535314 () Bool)

(assert (=> bm!535314 (= call!535321 (derivationStepZipperDown!1471 (ite c!1145444 (regOne!32959 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (regOne!32958 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))) (ite c!1145444 (ite c!1145241 lt!2358609 (Context!11215 call!535178)) (Context!11215 call!535323)) (h!71294 s!2326)))))

(declare-fun c!1145446 () Bool)

(declare-fun bm!535315 () Bool)

(declare-fun call!535322 () List!64968)

(declare-fun call!535320 () (InoxSet Context!11214))

(declare-fun c!1145445 () Bool)

(assert (=> bm!535315 (= call!535320 (derivationStepZipperDown!1471 (ite c!1145444 (regTwo!32959 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (ite c!1145445 (regTwo!32958 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (ite c!1145446 (regOne!32958 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (reg!16552 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))) (ite (or c!1145444 c!1145445) (ite c!1145241 lt!2358609 (Context!11215 call!535178)) (Context!11215 call!535322)) (h!71294 s!2326)))))

(declare-fun b!6308062 () Bool)

(declare-fun e!3834335 () (InoxSet Context!11214))

(assert (=> b!6308062 (= e!3834335 (store ((as const (Array Context!11214 Bool)) false) (ite c!1145241 lt!2358609 (Context!11215 call!535178)) true))))

(declare-fun b!6308063 () Bool)

(declare-fun c!1145448 () Bool)

(assert (=> b!6308063 (= c!1145448 ((_ is Star!16223) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun e!3834336 () (InoxSet Context!11214))

(declare-fun e!3834337 () (InoxSet Context!11214))

(assert (=> b!6308063 (= e!3834336 e!3834337)))

(declare-fun b!6308064 () Bool)

(assert (=> b!6308064 (= e!3834337 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308065 () Bool)

(declare-fun e!3834339 () (InoxSet Context!11214))

(assert (=> b!6308065 (= e!3834335 e!3834339)))

(assert (=> b!6308065 (= c!1145444 ((_ is Union!16223) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308066 () Bool)

(declare-fun e!3834334 () (InoxSet Context!11214))

(assert (=> b!6308066 (= e!3834334 e!3834336)))

(assert (=> b!6308066 (= c!1145446 ((_ is Concat!25068) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308067 () Bool)

(declare-fun e!3834338 () Bool)

(assert (=> b!6308067 (= c!1145445 e!3834338)))

(declare-fun res!2599755 () Bool)

(assert (=> b!6308067 (=> (not res!2599755) (not e!3834338))))

(assert (=> b!6308067 (= res!2599755 ((_ is Concat!25068) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(assert (=> b!6308067 (= e!3834339 e!3834334)))

(declare-fun bm!535316 () Bool)

(assert (=> bm!535316 (= call!535323 ($colon$colon!2088 (exprs!6107 (ite c!1145241 lt!2358609 (Context!11215 call!535178))) (ite (or c!1145445 c!1145446) (regTwo!32958 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))))

(declare-fun b!6308068 () Bool)

(declare-fun call!535319 () (InoxSet Context!11214))

(assert (=> b!6308068 (= e!3834334 ((_ map or) call!535321 call!535319))))

(declare-fun b!6308069 () Bool)

(declare-fun call!535324 () (InoxSet Context!11214))

(assert (=> b!6308069 (= e!3834337 call!535324)))

(declare-fun b!6308070 () Bool)

(assert (=> b!6308070 (= e!3834336 call!535324)))

(declare-fun b!6308071 () Bool)

(assert (=> b!6308071 (= e!3834339 ((_ map or) call!535321 call!535320))))

(declare-fun b!6308072 () Bool)

(assert (=> b!6308072 (= e!3834338 (nullable!6216 (regOne!32958 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))))

(declare-fun bm!535318 () Bool)

(assert (=> bm!535318 (= call!535324 call!535319)))

(declare-fun bm!535319 () Bool)

(assert (=> bm!535319 (= call!535322 call!535323)))

(declare-fun bm!535317 () Bool)

(assert (=> bm!535317 (= call!535319 call!535320)))

(declare-fun d!1979607 () Bool)

(declare-fun c!1145447 () Bool)

(assert (=> d!1979607 (= c!1145447 (and ((_ is ElementMatch!16223) (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (= (c!1145130 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))) (h!71294 s!2326))))))

(assert (=> d!1979607 (= (derivationStepZipperDown!1471 (ite c!1145241 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))) (ite c!1145241 lt!2358609 (Context!11215 call!535178)) (h!71294 s!2326)) e!3834335)))

(assert (= (and d!1979607 c!1145447) b!6308062))

(assert (= (and d!1979607 (not c!1145447)) b!6308065))

(assert (= (and b!6308065 c!1145444) b!6308071))

(assert (= (and b!6308065 (not c!1145444)) b!6308067))

(assert (= (and b!6308067 res!2599755) b!6308072))

(assert (= (and b!6308067 c!1145445) b!6308068))

(assert (= (and b!6308067 (not c!1145445)) b!6308066))

(assert (= (and b!6308066 c!1145446) b!6308070))

(assert (= (and b!6308066 (not c!1145446)) b!6308063))

(assert (= (and b!6308063 c!1145448) b!6308069))

(assert (= (and b!6308063 (not c!1145448)) b!6308064))

(assert (= (or b!6308070 b!6308069) bm!535319))

(assert (= (or b!6308070 b!6308069) bm!535318))

(assert (= (or b!6308068 bm!535319) bm!535316))

(assert (= (or b!6308068 bm!535318) bm!535317))

(assert (= (or b!6308071 bm!535317) bm!535315))

(assert (= (or b!6308071 b!6308068) bm!535314))

(declare-fun m!7124310 () Bool)

(assert (=> bm!535314 m!7124310))

(declare-fun m!7124312 () Bool)

(assert (=> bm!535316 m!7124312))

(declare-fun m!7124314 () Bool)

(assert (=> b!6308072 m!7124314))

(declare-fun m!7124316 () Bool)

(assert (=> bm!535315 m!7124316))

(declare-fun m!7124318 () Bool)

(assert (=> b!6308062 m!7124318))

(assert (=> bm!535169 d!1979607))

(assert (=> d!1979335 d!1979323))

(declare-fun d!1979609 () Bool)

(assert (=> d!1979609 (= (flatMap!1728 z!1189 lambda!346433) (dynLambda!25673 lambda!346433 (h!71293 zl!343)))))

(assert (=> d!1979609 true))

(declare-fun _$13!3443 () Unit!158223)

(assert (=> d!1979609 (= (choose!46833 z!1189 (h!71293 zl!343) lambda!346433) _$13!3443)))

(declare-fun b_lambda!239945 () Bool)

(assert (=> (not b_lambda!239945) (not d!1979609)))

(declare-fun bs!1577239 () Bool)

(assert (= bs!1577239 d!1979609))

(assert (=> bs!1577239 m!7123492))

(assert (=> bs!1577239 m!7123752))

(assert (=> d!1979335 d!1979609))

(declare-fun bs!1577240 () Bool)

(declare-fun d!1979611 () Bool)

(assert (= bs!1577240 (and d!1979611 d!1979385)))

(declare-fun lambda!346526 () Int)

(assert (=> bs!1577240 (= lambda!346526 lambda!346479)))

(declare-fun bs!1577241 () Bool)

(assert (= bs!1577241 (and d!1979611 d!1979387)))

(assert (=> bs!1577241 (= lambda!346526 lambda!346482)))

(declare-fun bs!1577242 () Bool)

(assert (= bs!1577242 (and d!1979611 d!1979347)))

(assert (=> bs!1577242 (= lambda!346526 lambda!346458)))

(declare-fun bs!1577243 () Bool)

(assert (= bs!1577243 (and d!1979611 d!1979521)))

(assert (=> bs!1577243 (= lambda!346526 lambda!346505)))

(declare-fun bs!1577244 () Bool)

(assert (= bs!1577244 (and d!1979611 d!1979541)))

(assert (=> bs!1577244 (= lambda!346526 lambda!346512)))

(declare-fun bs!1577245 () Bool)

(assert (= bs!1577245 (and d!1979611 d!1979595)))

(assert (=> bs!1577245 (= lambda!346526 lambda!346524)))

(declare-fun bs!1577246 () Bool)

(assert (= bs!1577246 (and d!1979611 d!1979337)))

(assert (=> bs!1577246 (= lambda!346526 lambda!346457)))

(declare-fun bs!1577247 () Bool)

(assert (= bs!1577247 (and d!1979611 d!1979277)))

(assert (=> bs!1577247 (= lambda!346526 lambda!346449)))

(declare-fun bs!1577248 () Bool)

(assert (= bs!1577248 (and d!1979611 d!1979395)))

(assert (=> bs!1577248 (= lambda!346526 lambda!346485)))

(declare-fun b!6308077 () Bool)

(declare-fun e!3834347 () Regex!16223)

(assert (=> b!6308077 (= e!3834347 (h!71292 (t!378540 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6308078 () Bool)

(declare-fun e!3834343 () Regex!16223)

(assert (=> b!6308078 (= e!3834343 EmptyLang!16223)))

(declare-fun e!3834346 () Bool)

(assert (=> d!1979611 e!3834346))

(declare-fun res!2599757 () Bool)

(assert (=> d!1979611 (=> (not res!2599757) (not e!3834346))))

(declare-fun lt!2358718 () Regex!16223)

(assert (=> d!1979611 (= res!2599757 (validRegex!7959 lt!2358718))))

(assert (=> d!1979611 (= lt!2358718 e!3834347)))

(declare-fun c!1145454 () Bool)

(declare-fun e!3834345 () Bool)

(assert (=> d!1979611 (= c!1145454 e!3834345)))

(declare-fun res!2599756 () Bool)

(assert (=> d!1979611 (=> (not res!2599756) (not e!3834345))))

(assert (=> d!1979611 (= res!2599756 ((_ is Cons!64844) (t!378540 (unfocusZipperList!1644 zl!343))))))

(assert (=> d!1979611 (forall!15373 (t!378540 (unfocusZipperList!1644 zl!343)) lambda!346526)))

(assert (=> d!1979611 (= (generalisedUnion!2067 (t!378540 (unfocusZipperList!1644 zl!343))) lt!2358718)))

(declare-fun b!6308079 () Bool)

(assert (=> b!6308079 (= e!3834345 (isEmpty!36910 (t!378540 (t!378540 (unfocusZipperList!1644 zl!343)))))))

(declare-fun b!6308080 () Bool)

(assert (=> b!6308080 (= e!3834347 e!3834343)))

(declare-fun c!1145451 () Bool)

(assert (=> b!6308080 (= c!1145451 ((_ is Cons!64844) (t!378540 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6308081 () Bool)

(declare-fun e!3834342 () Bool)

(declare-fun e!3834344 () Bool)

(assert (=> b!6308081 (= e!3834342 e!3834344)))

(declare-fun c!1145452 () Bool)

(assert (=> b!6308081 (= c!1145452 (isEmpty!36910 (tail!12032 (t!378540 (unfocusZipperList!1644 zl!343)))))))

(declare-fun b!6308082 () Bool)

(assert (=> b!6308082 (= e!3834346 e!3834342)))

(declare-fun c!1145453 () Bool)

(assert (=> b!6308082 (= c!1145453 (isEmpty!36910 (t!378540 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6308083 () Bool)

(assert (=> b!6308083 (= e!3834344 (= lt!2358718 (head!12947 (t!378540 (unfocusZipperList!1644 zl!343)))))))

(declare-fun b!6308084 () Bool)

(assert (=> b!6308084 (= e!3834344 (isUnion!1066 lt!2358718))))

(declare-fun b!6308085 () Bool)

(assert (=> b!6308085 (= e!3834343 (Union!16223 (h!71292 (t!378540 (unfocusZipperList!1644 zl!343))) (generalisedUnion!2067 (t!378540 (t!378540 (unfocusZipperList!1644 zl!343))))))))

(declare-fun b!6308086 () Bool)

(assert (=> b!6308086 (= e!3834342 (isEmptyLang!1636 lt!2358718))))

(assert (= (and d!1979611 res!2599756) b!6308079))

(assert (= (and d!1979611 c!1145454) b!6308077))

(assert (= (and d!1979611 (not c!1145454)) b!6308080))

(assert (= (and b!6308080 c!1145451) b!6308085))

(assert (= (and b!6308080 (not c!1145451)) b!6308078))

(assert (= (and d!1979611 res!2599757) b!6308082))

(assert (= (and b!6308082 c!1145453) b!6308086))

(assert (= (and b!6308082 (not c!1145453)) b!6308081))

(assert (= (and b!6308081 c!1145452) b!6308083))

(assert (= (and b!6308081 (not c!1145452)) b!6308084))

(declare-fun m!7124320 () Bool)

(assert (=> b!6308086 m!7124320))

(declare-fun m!7124322 () Bool)

(assert (=> b!6308085 m!7124322))

(declare-fun m!7124324 () Bool)

(assert (=> b!6308083 m!7124324))

(declare-fun m!7124326 () Bool)

(assert (=> b!6308079 m!7124326))

(declare-fun m!7124328 () Bool)

(assert (=> b!6308084 m!7124328))

(declare-fun m!7124330 () Bool)

(assert (=> d!1979611 m!7124330))

(declare-fun m!7124332 () Bool)

(assert (=> d!1979611 m!7124332))

(declare-fun m!7124334 () Bool)

(assert (=> b!6308081 m!7124334))

(assert (=> b!6308081 m!7124334))

(declare-fun m!7124336 () Bool)

(assert (=> b!6308081 m!7124336))

(assert (=> b!6308082 m!7123888))

(assert (=> b!6307493 d!1979611))

(declare-fun d!1979613 () Bool)

(declare-fun res!2599764 () Bool)

(declare-fun e!3834352 () Bool)

(assert (=> d!1979613 (=> res!2599764 e!3834352)))

(assert (=> d!1979613 (= res!2599764 ((_ is Nil!64844) (exprs!6107 (h!71293 zl!343))))))

(assert (=> d!1979613 (= (forall!15373 (exprs!6107 (h!71293 zl!343)) lambda!346457) e!3834352)))

(declare-fun b!6308095 () Bool)

(declare-fun e!3834353 () Bool)

(assert (=> b!6308095 (= e!3834352 e!3834353)))

(declare-fun res!2599765 () Bool)

(assert (=> b!6308095 (=> (not res!2599765) (not e!3834353))))

(assert (=> b!6308095 (= res!2599765 (dynLambda!25675 lambda!346457 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308096 () Bool)

(assert (=> b!6308096 (= e!3834353 (forall!15373 (t!378540 (exprs!6107 (h!71293 zl!343))) lambda!346457))))

(assert (= (and d!1979613 (not res!2599764)) b!6308095))

(assert (= (and b!6308095 res!2599765) b!6308096))

(declare-fun b_lambda!239947 () Bool)

(assert (=> (not b_lambda!239947) (not b!6308095)))

(declare-fun m!7124344 () Bool)

(assert (=> b!6308095 m!7124344))

(declare-fun m!7124346 () Bool)

(assert (=> b!6308096 m!7124346))

(assert (=> d!1979337 d!1979613))

(declare-fun d!1979615 () Bool)

(assert (=> d!1979615 true))

(declare-fun setRes!42936 () Bool)

(assert (=> d!1979615 setRes!42936))

(declare-fun condSetEmpty!42936 () Bool)

(declare-fun res!2599768 () (InoxSet Context!11214))

(assert (=> d!1979615 (= condSetEmpty!42936 (= res!2599768 ((as const (Array Context!11214 Bool)) false)))))

(assert (=> d!1979615 (= (choose!46831 lt!2358604 lambda!346433) res!2599768)))

(declare-fun setIsEmpty!42936 () Bool)

(assert (=> setIsEmpty!42936 setRes!42936))

(declare-fun setNonEmpty!42936 () Bool)

(declare-fun e!3834356 () Bool)

(declare-fun setElem!42936 () Context!11214)

(declare-fun tp!1757183 () Bool)

(assert (=> setNonEmpty!42936 (= setRes!42936 (and tp!1757183 (inv!83804 setElem!42936) e!3834356))))

(declare-fun setRest!42936 () (InoxSet Context!11214))

(assert (=> setNonEmpty!42936 (= res!2599768 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) setElem!42936 true) setRest!42936))))

(declare-fun b!6308099 () Bool)

(declare-fun tp!1757184 () Bool)

(assert (=> b!6308099 (= e!3834356 tp!1757184)))

(assert (= (and d!1979615 condSetEmpty!42936) setIsEmpty!42936))

(assert (= (and d!1979615 (not condSetEmpty!42936)) setNonEmpty!42936))

(assert (= setNonEmpty!42936 b!6308099))

(declare-fun m!7124358 () Bool)

(assert (=> setNonEmpty!42936 m!7124358))

(assert (=> d!1979279 d!1979615))

(assert (=> b!6307530 d!1979389))

(declare-fun d!1979625 () Bool)

(declare-fun c!1145462 () Bool)

(assert (=> d!1979625 (= c!1145462 ((_ is Nil!64845) lt!2358638))))

(declare-fun e!3834365 () (InoxSet Context!11214))

(assert (=> d!1979625 (= (content!12209 lt!2358638) e!3834365)))

(declare-fun b!6308114 () Bool)

(assert (=> b!6308114 (= e!3834365 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308115 () Bool)

(assert (=> b!6308115 (= e!3834365 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) (h!71293 lt!2358638) true) (content!12209 (t!378541 lt!2358638))))))

(assert (= (and d!1979625 c!1145462) b!6308114))

(assert (= (and d!1979625 (not c!1145462)) b!6308115))

(declare-fun m!7124378 () Bool)

(assert (=> b!6308115 m!7124378))

(declare-fun m!7124380 () Bool)

(assert (=> b!6308115 m!7124380))

(assert (=> b!6307043 d!1979625))

(assert (=> d!1979359 d!1979509))

(declare-fun b!6308121 () Bool)

(declare-fun res!2599773 () Bool)

(declare-fun e!3834370 () Bool)

(assert (=> b!6308121 (=> res!2599773 e!3834370)))

(assert (=> b!6308121 (= res!2599773 (not ((_ is ElementMatch!16223) (regOne!32958 r!7292))))))

(declare-fun e!3834375 () Bool)

(assert (=> b!6308121 (= e!3834375 e!3834370)))

(declare-fun b!6308122 () Bool)

(declare-fun res!2599776 () Bool)

(declare-fun e!3834371 () Bool)

(assert (=> b!6308122 (=> (not res!2599776) (not e!3834371))))

(assert (=> b!6308122 (= res!2599776 (isEmpty!36912 (tail!12031 Nil!64846)))))

(declare-fun d!1979629 () Bool)

(declare-fun e!3834372 () Bool)

(assert (=> d!1979629 e!3834372))

(declare-fun c!1145466 () Bool)

(assert (=> d!1979629 (= c!1145466 ((_ is EmptyExpr!16223) (regOne!32958 r!7292)))))

(declare-fun lt!2358721 () Bool)

(declare-fun e!3834373 () Bool)

(assert (=> d!1979629 (= lt!2358721 e!3834373)))

(declare-fun c!1145467 () Bool)

(assert (=> d!1979629 (= c!1145467 (isEmpty!36912 Nil!64846))))

(assert (=> d!1979629 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979629 (= (matchR!8406 (regOne!32958 r!7292) Nil!64846) lt!2358721)))

(declare-fun b!6308123 () Bool)

(declare-fun res!2599777 () Bool)

(assert (=> b!6308123 (=> res!2599777 e!3834370)))

(assert (=> b!6308123 (= res!2599777 e!3834371)))

(declare-fun res!2599778 () Bool)

(assert (=> b!6308123 (=> (not res!2599778) (not e!3834371))))

(assert (=> b!6308123 (= res!2599778 lt!2358721)))

(declare-fun b!6308124 () Bool)

(declare-fun call!535326 () Bool)

(assert (=> b!6308124 (= e!3834372 (= lt!2358721 call!535326))))

(declare-fun bm!535321 () Bool)

(assert (=> bm!535321 (= call!535326 (isEmpty!36912 Nil!64846))))

(declare-fun b!6308125 () Bool)

(assert (=> b!6308125 (= e!3834373 (nullable!6216 (regOne!32958 r!7292)))))

(declare-fun b!6308126 () Bool)

(declare-fun e!3834369 () Bool)

(assert (=> b!6308126 (= e!3834369 (not (= (head!12946 Nil!64846) (c!1145130 (regOne!32958 r!7292)))))))

(declare-fun b!6308127 () Bool)

(declare-fun res!2599772 () Bool)

(assert (=> b!6308127 (=> (not res!2599772) (not e!3834371))))

(assert (=> b!6308127 (= res!2599772 (not call!535326))))

(declare-fun b!6308128 () Bool)

(assert (=> b!6308128 (= e!3834371 (= (head!12946 Nil!64846) (c!1145130 (regOne!32958 r!7292))))))

(declare-fun b!6308129 () Bool)

(declare-fun res!2599779 () Bool)

(assert (=> b!6308129 (=> res!2599779 e!3834369)))

(assert (=> b!6308129 (= res!2599779 (not (isEmpty!36912 (tail!12031 Nil!64846))))))

(declare-fun b!6308130 () Bool)

(assert (=> b!6308130 (= e!3834372 e!3834375)))

(declare-fun c!1145465 () Bool)

(assert (=> b!6308130 (= c!1145465 ((_ is EmptyLang!16223) (regOne!32958 r!7292)))))

(declare-fun b!6308131 () Bool)

(declare-fun e!3834374 () Bool)

(assert (=> b!6308131 (= e!3834370 e!3834374)))

(declare-fun res!2599774 () Bool)

(assert (=> b!6308131 (=> (not res!2599774) (not e!3834374))))

(assert (=> b!6308131 (= res!2599774 (not lt!2358721))))

(declare-fun b!6308132 () Bool)

(assert (=> b!6308132 (= e!3834375 (not lt!2358721))))

(declare-fun b!6308133 () Bool)

(assert (=> b!6308133 (= e!3834374 e!3834369)))

(declare-fun res!2599775 () Bool)

(assert (=> b!6308133 (=> res!2599775 e!3834369)))

(assert (=> b!6308133 (= res!2599775 call!535326)))

(declare-fun b!6308134 () Bool)

(assert (=> b!6308134 (= e!3834373 (matchR!8406 (derivativeStep!4932 (regOne!32958 r!7292) (head!12946 Nil!64846)) (tail!12031 Nil!64846)))))

(assert (= (and d!1979629 c!1145467) b!6308125))

(assert (= (and d!1979629 (not c!1145467)) b!6308134))

(assert (= (and d!1979629 c!1145466) b!6308124))

(assert (= (and d!1979629 (not c!1145466)) b!6308130))

(assert (= (and b!6308130 c!1145465) b!6308132))

(assert (= (and b!6308130 (not c!1145465)) b!6308121))

(assert (= (and b!6308121 (not res!2599773)) b!6308123))

(assert (= (and b!6308123 res!2599778) b!6308127))

(assert (= (and b!6308127 res!2599772) b!6308122))

(assert (= (and b!6308122 res!2599776) b!6308128))

(assert (= (and b!6308123 (not res!2599777)) b!6308131))

(assert (= (and b!6308131 res!2599774) b!6308133))

(assert (= (and b!6308133 (not res!2599775)) b!6308129))

(assert (= (and b!6308129 (not res!2599779)) b!6308126))

(assert (= (or b!6308124 b!6308133 b!6308127) bm!535321))

(declare-fun m!7124388 () Bool)

(assert (=> bm!535321 m!7124388))

(assert (=> d!1979629 m!7124388))

(assert (=> d!1979629 m!7123852))

(declare-fun m!7124392 () Bool)

(assert (=> b!6308126 m!7124392))

(declare-fun m!7124394 () Bool)

(assert (=> b!6308125 m!7124394))

(declare-fun m!7124396 () Bool)

(assert (=> b!6308129 m!7124396))

(assert (=> b!6308129 m!7124396))

(declare-fun m!7124398 () Bool)

(assert (=> b!6308129 m!7124398))

(assert (=> b!6308122 m!7124396))

(assert (=> b!6308122 m!7124396))

(assert (=> b!6308122 m!7124398))

(assert (=> b!6308128 m!7124392))

(assert (=> b!6308134 m!7124392))

(assert (=> b!6308134 m!7124392))

(declare-fun m!7124402 () Bool)

(assert (=> b!6308134 m!7124402))

(assert (=> b!6308134 m!7124396))

(assert (=> b!6308134 m!7124402))

(assert (=> b!6308134 m!7124396))

(declare-fun m!7124406 () Bool)

(assert (=> b!6308134 m!7124406))

(assert (=> d!1979359 d!1979629))

(assert (=> d!1979359 d!1979567))

(declare-fun d!1979635 () Bool)

(assert (=> d!1979635 (= ($colon$colon!2088 (exprs!6107 lt!2358609) (ite (or c!1145242 c!1145243) (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71292 (exprs!6107 (h!71293 zl!343))))) (Cons!64844 (ite (or c!1145242 c!1145243) (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71292 (exprs!6107 (h!71293 zl!343)))) (exprs!6107 lt!2358609)))))

(assert (=> bm!535171 d!1979635))

(declare-fun d!1979637 () Bool)

(assert (=> d!1979637 (= (isEmpty!36910 (tail!12032 (unfocusZipperList!1644 zl!343))) ((_ is Nil!64844) (tail!12032 (unfocusZipperList!1644 zl!343))))))

(assert (=> b!6307489 d!1979637))

(declare-fun d!1979639 () Bool)

(assert (=> d!1979639 (= (tail!12032 (unfocusZipperList!1644 zl!343)) (t!378540 (unfocusZipperList!1644 zl!343)))))

(assert (=> b!6307489 d!1979639))

(declare-fun b!6308167 () Bool)

(declare-fun e!3834398 () List!64970)

(assert (=> b!6308167 (= e!3834398 (_2!36505 (get!22423 lt!2358680)))))

(declare-fun d!1979641 () Bool)

(declare-fun e!3834397 () Bool)

(assert (=> d!1979641 e!3834397))

(declare-fun res!2599794 () Bool)

(assert (=> d!1979641 (=> (not res!2599794) (not e!3834397))))

(declare-fun lt!2358724 () List!64970)

(declare-fun content!12212 (List!64970) (InoxSet C!32716))

(assert (=> d!1979641 (= res!2599794 (= (content!12212 lt!2358724) ((_ map or) (content!12212 (_1!36505 (get!22423 lt!2358680))) (content!12212 (_2!36505 (get!22423 lt!2358680))))))))

(assert (=> d!1979641 (= lt!2358724 e!3834398)))

(declare-fun c!1145477 () Bool)

(assert (=> d!1979641 (= c!1145477 ((_ is Nil!64846) (_1!36505 (get!22423 lt!2358680))))))

(assert (=> d!1979641 (= (++!14296 (_1!36505 (get!22423 lt!2358680)) (_2!36505 (get!22423 lt!2358680))) lt!2358724)))

(declare-fun b!6308169 () Bool)

(declare-fun res!2599795 () Bool)

(assert (=> b!6308169 (=> (not res!2599795) (not e!3834397))))

(declare-fun size!40326 (List!64970) Int)

(assert (=> b!6308169 (= res!2599795 (= (size!40326 lt!2358724) (+ (size!40326 (_1!36505 (get!22423 lt!2358680))) (size!40326 (_2!36505 (get!22423 lt!2358680))))))))

(declare-fun b!6308168 () Bool)

(assert (=> b!6308168 (= e!3834398 (Cons!64846 (h!71294 (_1!36505 (get!22423 lt!2358680))) (++!14296 (t!378542 (_1!36505 (get!22423 lt!2358680))) (_2!36505 (get!22423 lt!2358680)))))))

(declare-fun b!6308170 () Bool)

(assert (=> b!6308170 (= e!3834397 (or (not (= (_2!36505 (get!22423 lt!2358680)) Nil!64846)) (= lt!2358724 (_1!36505 (get!22423 lt!2358680)))))))

(assert (= (and d!1979641 c!1145477) b!6308167))

(assert (= (and d!1979641 (not c!1145477)) b!6308168))

(assert (= (and d!1979641 res!2599794) b!6308169))

(assert (= (and b!6308169 res!2599795) b!6308170))

(declare-fun m!7124420 () Bool)

(assert (=> d!1979641 m!7124420))

(declare-fun m!7124422 () Bool)

(assert (=> d!1979641 m!7124422))

(declare-fun m!7124424 () Bool)

(assert (=> d!1979641 m!7124424))

(declare-fun m!7124426 () Bool)

(assert (=> b!6308169 m!7124426))

(declare-fun m!7124428 () Bool)

(assert (=> b!6308169 m!7124428))

(declare-fun m!7124430 () Bool)

(assert (=> b!6308169 m!7124430))

(declare-fun m!7124432 () Bool)

(assert (=> b!6308168 m!7124432))

(assert (=> b!6307398 d!1979641))

(assert (=> b!6307398 d!1979583))

(assert (=> d!1979399 d!1979467))

(assert (=> d!1979399 d!1979355))

(declare-fun d!1979649 () Bool)

(assert (=> d!1979649 (= (nullable!6216 (reg!16552 r!7292)) (nullableFct!2167 (reg!16552 r!7292)))))

(declare-fun bs!1577279 () Bool)

(assert (= bs!1577279 d!1979649))

(declare-fun m!7124434 () Bool)

(assert (=> bs!1577279 m!7124434))

(assert (=> b!6307329 d!1979649))

(declare-fun bs!1577284 () Bool)

(declare-fun b!6308171 () Bool)

(assert (= bs!1577284 (and b!6308171 d!1979547)))

(declare-fun lambda!346532 () Int)

(assert (=> bs!1577284 (not (= lambda!346532 lambda!346521))))

(declare-fun bs!1577285 () Bool)

(assert (= bs!1577285 (and b!6308171 b!6306949)))

(assert (=> bs!1577285 (not (= lambda!346532 lambda!346432))))

(declare-fun bs!1577286 () Bool)

(assert (= bs!1577286 (and b!6308171 b!6307570)))

(assert (=> bs!1577286 (not (= lambda!346532 lambda!346491))))

(declare-fun bs!1577287 () Bool)

(assert (= bs!1577287 (and b!6308171 b!6307568)))

(assert (=> bs!1577287 (= (and (= (reg!16552 (regOne!32959 r!7292)) (reg!16552 r!7292)) (= (regOne!32959 r!7292) r!7292)) (= lambda!346532 lambda!346490))))

(assert (=> bs!1577285 (not (= lambda!346532 lambda!346431))))

(assert (=> bs!1577284 (not (= lambda!346532 lambda!346519))))

(declare-fun bs!1577291 () Bool)

(assert (= bs!1577291 (and b!6308171 d!1979381)))

(assert (=> bs!1577291 (not (= lambda!346532 lambda!346476))))

(assert (=> bs!1577291 (not (= lambda!346532 lambda!346475))))

(declare-fun bs!1577292 () Bool)

(assert (= bs!1577292 (and b!6308171 d!1979373)))

(assert (=> bs!1577292 (not (= lambda!346532 lambda!346470))))

(assert (=> b!6308171 true))

(assert (=> b!6308171 true))

(declare-fun bs!1577293 () Bool)

(declare-fun b!6308173 () Bool)

(assert (= bs!1577293 (and b!6308173 d!1979547)))

(declare-fun lambda!346533 () Int)

(assert (=> bs!1577293 (= (and (= (regOne!32958 (regOne!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regOne!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346533 lambda!346521))))

(declare-fun bs!1577294 () Bool)

(assert (= bs!1577294 (and b!6308173 b!6306949)))

(assert (=> bs!1577294 (= (and (= (regOne!32958 (regOne!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regOne!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346533 lambda!346432))))

(declare-fun bs!1577295 () Bool)

(assert (= bs!1577295 (and b!6308173 b!6307570)))

(assert (=> bs!1577295 (= (and (= (regOne!32958 (regOne!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regOne!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346533 lambda!346491))))

(declare-fun bs!1577296 () Bool)

(assert (= bs!1577296 (and b!6308173 b!6307568)))

(assert (=> bs!1577296 (not (= lambda!346533 lambda!346490))))

(assert (=> bs!1577294 (not (= lambda!346533 lambda!346431))))

(declare-fun bs!1577297 () Bool)

(assert (= bs!1577297 (and b!6308173 b!6308171)))

(assert (=> bs!1577297 (not (= lambda!346533 lambda!346532))))

(assert (=> bs!1577293 (not (= lambda!346533 lambda!346519))))

(declare-fun bs!1577298 () Bool)

(assert (= bs!1577298 (and b!6308173 d!1979381)))

(assert (=> bs!1577298 (= (and (= (regOne!32958 (regOne!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regOne!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346533 lambda!346476))))

(assert (=> bs!1577298 (not (= lambda!346533 lambda!346475))))

(declare-fun bs!1577299 () Bool)

(assert (= bs!1577299 (and b!6308173 d!1979373)))

(assert (=> bs!1577299 (not (= lambda!346533 lambda!346470))))

(assert (=> b!6308173 true))

(assert (=> b!6308173 true))

(declare-fun e!3834405 () Bool)

(declare-fun call!535332 () Bool)

(assert (=> b!6308171 (= e!3834405 call!535332)))

(declare-fun b!6308172 () Bool)

(declare-fun c!1145478 () Bool)

(assert (=> b!6308172 (= c!1145478 ((_ is ElementMatch!16223) (regOne!32959 r!7292)))))

(declare-fun e!3834401 () Bool)

(declare-fun e!3834402 () Bool)

(assert (=> b!6308172 (= e!3834401 e!3834402)))

(declare-fun e!3834404 () Bool)

(assert (=> b!6308173 (= e!3834404 call!535332)))

(declare-fun b!6308174 () Bool)

(assert (=> b!6308174 (= e!3834402 (= s!2326 (Cons!64846 (c!1145130 (regOne!32959 r!7292)) Nil!64846)))))

(declare-fun b!6308175 () Bool)

(declare-fun e!3834400 () Bool)

(declare-fun call!535333 () Bool)

(assert (=> b!6308175 (= e!3834400 call!535333)))

(declare-fun b!6308176 () Bool)

(declare-fun e!3834403 () Bool)

(assert (=> b!6308176 (= e!3834403 (matchRSpec!3324 (regTwo!32959 (regOne!32959 r!7292)) s!2326))))

(declare-fun b!6308177 () Bool)

(declare-fun c!1145479 () Bool)

(assert (=> b!6308177 (= c!1145479 ((_ is Union!16223) (regOne!32959 r!7292)))))

(declare-fun e!3834399 () Bool)

(assert (=> b!6308177 (= e!3834402 e!3834399)))

(declare-fun b!6308178 () Bool)

(declare-fun res!2599797 () Bool)

(assert (=> b!6308178 (=> res!2599797 e!3834405)))

(assert (=> b!6308178 (= res!2599797 call!535333)))

(assert (=> b!6308178 (= e!3834404 e!3834405)))

(declare-fun b!6308179 () Bool)

(assert (=> b!6308179 (= e!3834400 e!3834401)))

(declare-fun res!2599796 () Bool)

(assert (=> b!6308179 (= res!2599796 (not ((_ is EmptyLang!16223) (regOne!32959 r!7292))))))

(assert (=> b!6308179 (=> (not res!2599796) (not e!3834401))))

(declare-fun d!1979651 () Bool)

(declare-fun c!1145480 () Bool)

(assert (=> d!1979651 (= c!1145480 ((_ is EmptyExpr!16223) (regOne!32959 r!7292)))))

(assert (=> d!1979651 (= (matchRSpec!3324 (regOne!32959 r!7292) s!2326) e!3834400)))

(declare-fun b!6308180 () Bool)

(assert (=> b!6308180 (= e!3834399 e!3834404)))

(declare-fun c!1145481 () Bool)

(assert (=> b!6308180 (= c!1145481 ((_ is Star!16223) (regOne!32959 r!7292)))))

(declare-fun b!6308181 () Bool)

(assert (=> b!6308181 (= e!3834399 e!3834403)))

(declare-fun res!2599798 () Bool)

(assert (=> b!6308181 (= res!2599798 (matchRSpec!3324 (regOne!32959 (regOne!32959 r!7292)) s!2326))))

(assert (=> b!6308181 (=> res!2599798 e!3834403)))

(declare-fun bm!535327 () Bool)

(assert (=> bm!535327 (= call!535333 (isEmpty!36912 s!2326))))

(declare-fun bm!535328 () Bool)

(assert (=> bm!535328 (= call!535332 (Exists!3293 (ite c!1145481 lambda!346532 lambda!346533)))))

(assert (= (and d!1979651 c!1145480) b!6308175))

(assert (= (and d!1979651 (not c!1145480)) b!6308179))

(assert (= (and b!6308179 res!2599796) b!6308172))

(assert (= (and b!6308172 c!1145478) b!6308174))

(assert (= (and b!6308172 (not c!1145478)) b!6308177))

(assert (= (and b!6308177 c!1145479) b!6308181))

(assert (= (and b!6308177 (not c!1145479)) b!6308180))

(assert (= (and b!6308181 (not res!2599798)) b!6308176))

(assert (= (and b!6308180 c!1145481) b!6308178))

(assert (= (and b!6308180 (not c!1145481)) b!6308173))

(assert (= (and b!6308178 (not res!2599797)) b!6308171))

(assert (= (or b!6308171 b!6308173) bm!535328))

(assert (= (or b!6308175 b!6308178) bm!535327))

(declare-fun m!7124450 () Bool)

(assert (=> b!6308176 m!7124450))

(declare-fun m!7124454 () Bool)

(assert (=> b!6308181 m!7124454))

(assert (=> bm!535327 m!7123936))

(declare-fun m!7124456 () Bool)

(assert (=> bm!535328 m!7124456))

(assert (=> b!6307578 d!1979651))

(declare-fun d!1979669 () Bool)

(declare-fun res!2599805 () Bool)

(declare-fun e!3834412 () Bool)

(assert (=> d!1979669 (=> res!2599805 e!3834412)))

(assert (=> d!1979669 (= res!2599805 ((_ is Nil!64844) (exprs!6107 lt!2358606)))))

(assert (=> d!1979669 (= (forall!15373 (exprs!6107 lt!2358606) lambda!346449) e!3834412)))

(declare-fun b!6308188 () Bool)

(declare-fun e!3834413 () Bool)

(assert (=> b!6308188 (= e!3834412 e!3834413)))

(declare-fun res!2599806 () Bool)

(assert (=> b!6308188 (=> (not res!2599806) (not e!3834413))))

(assert (=> b!6308188 (= res!2599806 (dynLambda!25675 lambda!346449 (h!71292 (exprs!6107 lt!2358606))))))

(declare-fun b!6308189 () Bool)

(assert (=> b!6308189 (= e!3834413 (forall!15373 (t!378540 (exprs!6107 lt!2358606)) lambda!346449))))

(assert (= (and d!1979669 (not res!2599805)) b!6308188))

(assert (= (and b!6308188 res!2599806) b!6308189))

(declare-fun b_lambda!239951 () Bool)

(assert (=> (not b_lambda!239951) (not b!6308188)))

(declare-fun m!7124458 () Bool)

(assert (=> b!6308188 m!7124458))

(declare-fun m!7124460 () Bool)

(assert (=> b!6308189 m!7124460))

(assert (=> d!1979277 d!1979669))

(declare-fun b!6308192 () Bool)

(declare-fun res!2599810 () Bool)

(declare-fun e!3834417 () Bool)

(assert (=> b!6308192 (=> res!2599810 e!3834417)))

(assert (=> b!6308192 (= res!2599810 (not ((_ is ElementMatch!16223) (derivativeStep!4932 r!7292 (head!12946 s!2326)))))))

(declare-fun e!3834422 () Bool)

(assert (=> b!6308192 (= e!3834422 e!3834417)))

(declare-fun b!6308193 () Bool)

(declare-fun res!2599813 () Bool)

(declare-fun e!3834418 () Bool)

(assert (=> b!6308193 (=> (not res!2599813) (not e!3834418))))

(assert (=> b!6308193 (= res!2599813 (isEmpty!36912 (tail!12031 (tail!12031 s!2326))))))

(declare-fun d!1979671 () Bool)

(declare-fun e!3834419 () Bool)

(assert (=> d!1979671 e!3834419))

(declare-fun c!1145483 () Bool)

(assert (=> d!1979671 (= c!1145483 ((_ is EmptyExpr!16223) (derivativeStep!4932 r!7292 (head!12946 s!2326))))))

(declare-fun lt!2358725 () Bool)

(declare-fun e!3834420 () Bool)

(assert (=> d!1979671 (= lt!2358725 e!3834420)))

(declare-fun c!1145484 () Bool)

(assert (=> d!1979671 (= c!1145484 (isEmpty!36912 (tail!12031 s!2326)))))

(assert (=> d!1979671 (validRegex!7959 (derivativeStep!4932 r!7292 (head!12946 s!2326)))))

(assert (=> d!1979671 (= (matchR!8406 (derivativeStep!4932 r!7292 (head!12946 s!2326)) (tail!12031 s!2326)) lt!2358725)))

(declare-fun b!6308194 () Bool)

(declare-fun res!2599814 () Bool)

(assert (=> b!6308194 (=> res!2599814 e!3834417)))

(assert (=> b!6308194 (= res!2599814 e!3834418)))

(declare-fun res!2599815 () Bool)

(assert (=> b!6308194 (=> (not res!2599815) (not e!3834418))))

(assert (=> b!6308194 (= res!2599815 lt!2358725)))

(declare-fun b!6308195 () Bool)

(declare-fun call!535334 () Bool)

(assert (=> b!6308195 (= e!3834419 (= lt!2358725 call!535334))))

(declare-fun bm!535329 () Bool)

(assert (=> bm!535329 (= call!535334 (isEmpty!36912 (tail!12031 s!2326)))))

(declare-fun b!6308196 () Bool)

(assert (=> b!6308196 (= e!3834420 (nullable!6216 (derivativeStep!4932 r!7292 (head!12946 s!2326))))))

(declare-fun b!6308197 () Bool)

(declare-fun e!3834416 () Bool)

(assert (=> b!6308197 (= e!3834416 (not (= (head!12946 (tail!12031 s!2326)) (c!1145130 (derivativeStep!4932 r!7292 (head!12946 s!2326))))))))

(declare-fun b!6308198 () Bool)

(declare-fun res!2599809 () Bool)

(assert (=> b!6308198 (=> (not res!2599809) (not e!3834418))))

(assert (=> b!6308198 (= res!2599809 (not call!535334))))

(declare-fun b!6308199 () Bool)

(assert (=> b!6308199 (= e!3834418 (= (head!12946 (tail!12031 s!2326)) (c!1145130 (derivativeStep!4932 r!7292 (head!12946 s!2326)))))))

(declare-fun b!6308200 () Bool)

(declare-fun res!2599816 () Bool)

(assert (=> b!6308200 (=> res!2599816 e!3834416)))

(assert (=> b!6308200 (= res!2599816 (not (isEmpty!36912 (tail!12031 (tail!12031 s!2326)))))))

(declare-fun b!6308201 () Bool)

(assert (=> b!6308201 (= e!3834419 e!3834422)))

(declare-fun c!1145482 () Bool)

(assert (=> b!6308201 (= c!1145482 ((_ is EmptyLang!16223) (derivativeStep!4932 r!7292 (head!12946 s!2326))))))

(declare-fun b!6308202 () Bool)

(declare-fun e!3834421 () Bool)

(assert (=> b!6308202 (= e!3834417 e!3834421)))

(declare-fun res!2599811 () Bool)

(assert (=> b!6308202 (=> (not res!2599811) (not e!3834421))))

(assert (=> b!6308202 (= res!2599811 (not lt!2358725))))

(declare-fun b!6308203 () Bool)

(assert (=> b!6308203 (= e!3834422 (not lt!2358725))))

(declare-fun b!6308206 () Bool)

(assert (=> b!6308206 (= e!3834421 e!3834416)))

(declare-fun res!2599812 () Bool)

(assert (=> b!6308206 (=> res!2599812 e!3834416)))

(assert (=> b!6308206 (= res!2599812 call!535334)))

(declare-fun b!6308207 () Bool)

(assert (=> b!6308207 (= e!3834420 (matchR!8406 (derivativeStep!4932 (derivativeStep!4932 r!7292 (head!12946 s!2326)) (head!12946 (tail!12031 s!2326))) (tail!12031 (tail!12031 s!2326))))))

(assert (= (and d!1979671 c!1145484) b!6308196))

(assert (= (and d!1979671 (not c!1145484)) b!6308207))

(assert (= (and d!1979671 c!1145483) b!6308195))

(assert (= (and d!1979671 (not c!1145483)) b!6308201))

(assert (= (and b!6308201 c!1145482) b!6308203))

(assert (= (and b!6308201 (not c!1145482)) b!6308192))

(assert (= (and b!6308192 (not res!2599810)) b!6308194))

(assert (= (and b!6308194 res!2599815) b!6308198))

(assert (= (and b!6308198 res!2599809) b!6308193))

(assert (= (and b!6308193 res!2599813) b!6308199))

(assert (= (and b!6308194 (not res!2599814)) b!6308202))

(assert (= (and b!6308202 res!2599811) b!6308206))

(assert (= (and b!6308206 (not res!2599812)) b!6308200))

(assert (= (and b!6308200 (not res!2599816)) b!6308197))

(assert (= (or b!6308195 b!6308206 b!6308198) bm!535329))

(assert (=> bm!535329 m!7123944))

(assert (=> bm!535329 m!7123946))

(assert (=> d!1979671 m!7123944))

(assert (=> d!1979671 m!7123946))

(assert (=> d!1979671 m!7123948))

(declare-fun m!7124462 () Bool)

(assert (=> d!1979671 m!7124462))

(assert (=> b!6308197 m!7123944))

(declare-fun m!7124464 () Bool)

(assert (=> b!6308197 m!7124464))

(assert (=> b!6308196 m!7123948))

(declare-fun m!7124466 () Bool)

(assert (=> b!6308196 m!7124466))

(assert (=> b!6308200 m!7123944))

(declare-fun m!7124468 () Bool)

(assert (=> b!6308200 m!7124468))

(assert (=> b!6308200 m!7124468))

(declare-fun m!7124470 () Bool)

(assert (=> b!6308200 m!7124470))

(assert (=> b!6308193 m!7123944))

(assert (=> b!6308193 m!7124468))

(assert (=> b!6308193 m!7124468))

(assert (=> b!6308193 m!7124470))

(assert (=> b!6308199 m!7123944))

(assert (=> b!6308199 m!7124464))

(assert (=> b!6308207 m!7123944))

(assert (=> b!6308207 m!7124464))

(assert (=> b!6308207 m!7123948))

(assert (=> b!6308207 m!7124464))

(declare-fun m!7124472 () Bool)

(assert (=> b!6308207 m!7124472))

(assert (=> b!6308207 m!7123944))

(assert (=> b!6308207 m!7124468))

(assert (=> b!6308207 m!7124472))

(assert (=> b!6308207 m!7124468))

(declare-fun m!7124480 () Bool)

(assert (=> b!6308207 m!7124480))

(assert (=> b!6307620 d!1979671))

(declare-fun bm!535346 () Bool)

(declare-fun call!535353 () Regex!16223)

(declare-fun call!535354 () Regex!16223)

(assert (=> bm!535346 (= call!535353 call!535354)))

(declare-fun c!1145511 () Bool)

(declare-fun bm!535347 () Bool)

(declare-fun call!535351 () Regex!16223)

(assert (=> bm!535347 (= call!535351 (derivativeStep!4932 (ite c!1145511 (regTwo!32959 r!7292) (regOne!32958 r!7292)) (head!12946 s!2326)))))

(declare-fun bm!535348 () Bool)

(declare-fun call!535352 () Regex!16223)

(assert (=> bm!535348 (= call!535352 call!535353)))

(declare-fun b!6308285 () Bool)

(declare-fun e!3834474 () Regex!16223)

(assert (=> b!6308285 (= e!3834474 EmptyLang!16223)))

(declare-fun d!1979675 () Bool)

(declare-fun lt!2358730 () Regex!16223)

(assert (=> d!1979675 (validRegex!7959 lt!2358730)))

(assert (=> d!1979675 (= lt!2358730 e!3834474)))

(declare-fun c!1145513 () Bool)

(assert (=> d!1979675 (= c!1145513 (or ((_ is EmptyExpr!16223) r!7292) ((_ is EmptyLang!16223) r!7292)))))

(assert (=> d!1979675 (validRegex!7959 r!7292)))

(assert (=> d!1979675 (= (derivativeStep!4932 r!7292 (head!12946 s!2326)) lt!2358730)))

(declare-fun b!6308286 () Bool)

(declare-fun e!3834477 () Regex!16223)

(assert (=> b!6308286 (= e!3834477 (Union!16223 call!535354 call!535351))))

(declare-fun b!6308287 () Bool)

(declare-fun e!3834475 () Regex!16223)

(assert (=> b!6308287 (= e!3834475 (ite (= (head!12946 s!2326) (c!1145130 r!7292)) EmptyExpr!16223 EmptyLang!16223))))

(declare-fun b!6308288 () Bool)

(declare-fun e!3834478 () Regex!16223)

(assert (=> b!6308288 (= e!3834477 e!3834478)))

(declare-fun c!1145510 () Bool)

(assert (=> b!6308288 (= c!1145510 ((_ is Star!16223) r!7292))))

(declare-fun b!6308289 () Bool)

(declare-fun e!3834476 () Regex!16223)

(assert (=> b!6308289 (= e!3834476 (Union!16223 (Concat!25068 call!535352 (regTwo!32958 r!7292)) EmptyLang!16223))))

(declare-fun b!6308290 () Bool)

(assert (=> b!6308290 (= e!3834476 (Union!16223 (Concat!25068 call!535351 (regTwo!32958 r!7292)) call!535352))))

(declare-fun b!6308291 () Bool)

(assert (=> b!6308291 (= e!3834478 (Concat!25068 call!535353 r!7292))))

(declare-fun b!6308292 () Bool)

(assert (=> b!6308292 (= c!1145511 ((_ is Union!16223) r!7292))))

(assert (=> b!6308292 (= e!3834475 e!3834477)))

(declare-fun c!1145512 () Bool)

(declare-fun bm!535349 () Bool)

(assert (=> bm!535349 (= call!535354 (derivativeStep!4932 (ite c!1145511 (regOne!32959 r!7292) (ite c!1145510 (reg!16552 r!7292) (ite c!1145512 (regTwo!32958 r!7292) (regOne!32958 r!7292)))) (head!12946 s!2326)))))

(declare-fun b!6308293 () Bool)

(assert (=> b!6308293 (= c!1145512 (nullable!6216 (regOne!32958 r!7292)))))

(assert (=> b!6308293 (= e!3834478 e!3834476)))

(declare-fun b!6308294 () Bool)

(assert (=> b!6308294 (= e!3834474 e!3834475)))

(declare-fun c!1145509 () Bool)

(assert (=> b!6308294 (= c!1145509 ((_ is ElementMatch!16223) r!7292))))

(assert (= (and d!1979675 c!1145513) b!6308285))

(assert (= (and d!1979675 (not c!1145513)) b!6308294))

(assert (= (and b!6308294 c!1145509) b!6308287))

(assert (= (and b!6308294 (not c!1145509)) b!6308292))

(assert (= (and b!6308292 c!1145511) b!6308286))

(assert (= (and b!6308292 (not c!1145511)) b!6308288))

(assert (= (and b!6308288 c!1145510) b!6308291))

(assert (= (and b!6308288 (not c!1145510)) b!6308293))

(assert (= (and b!6308293 c!1145512) b!6308290))

(assert (= (and b!6308293 (not c!1145512)) b!6308289))

(assert (= (or b!6308290 b!6308289) bm!535348))

(assert (= (or b!6308291 bm!535348) bm!535346))

(assert (= (or b!6308286 b!6308290) bm!535347))

(assert (= (or b!6308286 bm!535346) bm!535349))

(assert (=> bm!535347 m!7123940))

(declare-fun m!7124544 () Bool)

(assert (=> bm!535347 m!7124544))

(declare-fun m!7124546 () Bool)

(assert (=> d!1979675 m!7124546))

(assert (=> d!1979675 m!7123518))

(assert (=> bm!535349 m!7123940))

(declare-fun m!7124548 () Bool)

(assert (=> bm!535349 m!7124548))

(assert (=> b!6308293 m!7124394))

(assert (=> b!6307620 d!1979675))

(assert (=> b!6307620 d!1979527))

(declare-fun d!1979699 () Bool)

(assert (=> d!1979699 (= (tail!12031 s!2326) (t!378542 s!2326))))

(assert (=> b!6307620 d!1979699))

(declare-fun d!1979701 () Bool)

(assert (=> d!1979701 (= (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (nullableFct!2167 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun bs!1577323 () Bool)

(assert (= bs!1577323 d!1979701))

(declare-fun m!7124550 () Bool)

(assert (=> bs!1577323 m!7124550))

(assert (=> b!6307144 d!1979701))

(assert (=> b!6307612 d!1979527))

(declare-fun d!1979703 () Bool)

(assert (=> d!1979703 true))

(assert (=> d!1979703 true))

(declare-fun res!2599845 () Bool)

(assert (=> d!1979703 (= (choose!46839 lambda!346432) res!2599845)))

(assert (=> d!1979369 d!1979703))

(declare-fun d!1979705 () Bool)

(assert (=> d!1979705 (= (nullable!6216 (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))) (nullableFct!2167 (regOne!32958 (regOne!32958 (regOne!32958 r!7292)))))))

(declare-fun bs!1577324 () Bool)

(assert (= bs!1577324 d!1979705))

(declare-fun m!7124552 () Bool)

(assert (=> bs!1577324 m!7124552))

(assert (=> b!6307631 d!1979705))

(assert (=> b!6307171 d!1979319))

(declare-fun d!1979707 () Bool)

(assert (=> d!1979707 (= (isEmpty!36912 (tail!12031 s!2326)) ((_ is Nil!64846) (tail!12031 s!2326)))))

(assert (=> b!6307608 d!1979707))

(assert (=> b!6307608 d!1979699))

(declare-fun d!1979709 () Bool)

(assert (=> d!1979709 (= (isUnion!1066 lt!2358691) ((_ is Union!16223) lt!2358691))))

(assert (=> b!6307492 d!1979709))

(assert (=> d!1979373 d!1979359))

(assert (=> d!1979373 d!1979567))

(assert (=> d!1979373 d!1979383))

(declare-fun d!1979711 () Bool)

(assert (=> d!1979711 (= (Exists!3293 lambda!346470) (choose!46839 lambda!346470))))

(declare-fun bs!1577325 () Bool)

(assert (= bs!1577325 d!1979711))

(declare-fun m!7124554 () Bool)

(assert (=> bs!1577325 m!7124554))

(assert (=> d!1979373 d!1979711))

(declare-fun bs!1577340 () Bool)

(declare-fun d!1979713 () Bool)

(assert (= bs!1577340 (and d!1979713 d!1979547)))

(declare-fun lambda!346543 () Int)

(assert (=> bs!1577340 (not (= lambda!346543 lambda!346521))))

(declare-fun bs!1577342 () Bool)

(assert (= bs!1577342 (and d!1979713 b!6306949)))

(assert (=> bs!1577342 (not (= lambda!346543 lambda!346432))))

(declare-fun bs!1577343 () Bool)

(assert (= bs!1577343 (and d!1979713 b!6307570)))

(assert (=> bs!1577343 (not (= lambda!346543 lambda!346491))))

(declare-fun bs!1577344 () Bool)

(assert (= bs!1577344 (and d!1979713 b!6307568)))

(assert (=> bs!1577344 (not (= lambda!346543 lambda!346490))))

(assert (=> bs!1577342 (= lambda!346543 lambda!346431)))

(declare-fun bs!1577345 () Bool)

(assert (= bs!1577345 (and d!1979713 b!6308173)))

(assert (=> bs!1577345 (not (= lambda!346543 lambda!346533))))

(declare-fun bs!1577346 () Bool)

(assert (= bs!1577346 (and d!1979713 b!6308171)))

(assert (=> bs!1577346 (not (= lambda!346543 lambda!346532))))

(assert (=> bs!1577340 (= lambda!346543 lambda!346519)))

(declare-fun bs!1577347 () Bool)

(assert (= bs!1577347 (and d!1979713 d!1979381)))

(assert (=> bs!1577347 (not (= lambda!346543 lambda!346476))))

(assert (=> bs!1577347 (= lambda!346543 lambda!346475)))

(declare-fun bs!1577348 () Bool)

(assert (= bs!1577348 (and d!1979713 d!1979373)))

(assert (=> bs!1577348 (= lambda!346543 lambda!346470)))

(assert (=> d!1979713 true))

(assert (=> d!1979713 true))

(assert (=> d!1979713 true))

(assert (=> d!1979713 (= (isDefined!12817 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326)) (Exists!3293 lambda!346543))))

(assert (=> d!1979713 true))

(declare-fun _$89!2521 () Unit!158223)

(assert (=> d!1979713 (= (choose!46840 (regOne!32958 r!7292) (regTwo!32958 r!7292) s!2326) _$89!2521)))

(declare-fun bs!1577349 () Bool)

(assert (= bs!1577349 d!1979713))

(assert (=> bs!1577349 m!7123476))

(assert (=> bs!1577349 m!7123476))

(assert (=> bs!1577349 m!7123478))

(declare-fun m!7124602 () Bool)

(assert (=> bs!1577349 m!7124602))

(assert (=> d!1979373 d!1979713))

(declare-fun b!6308347 () Bool)

(declare-fun e!3834512 () Bool)

(declare-fun e!3834514 () Bool)

(assert (=> b!6308347 (= e!3834512 e!3834514)))

(declare-fun res!2599875 () Bool)

(declare-fun call!535366 () Bool)

(assert (=> b!6308347 (= res!2599875 call!535366)))

(assert (=> b!6308347 (=> (not res!2599875) (not e!3834514))))

(declare-fun d!1979727 () Bool)

(declare-fun res!2599877 () Bool)

(declare-fun e!3834515 () Bool)

(assert (=> d!1979727 (=> res!2599877 e!3834515)))

(assert (=> d!1979727 (= res!2599877 ((_ is EmptyExpr!16223) (regOne!32958 (regOne!32958 r!7292))))))

(assert (=> d!1979727 (= (nullableFct!2167 (regOne!32958 (regOne!32958 r!7292))) e!3834515)))

(declare-fun bm!535360 () Bool)

(declare-fun call!535365 () Bool)

(declare-fun c!1145526 () Bool)

(assert (=> bm!535360 (= call!535365 (nullable!6216 (ite c!1145526 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6308348 () Bool)

(declare-fun e!3834516 () Bool)

(assert (=> b!6308348 (= e!3834515 e!3834516)))

(declare-fun res!2599878 () Bool)

(assert (=> b!6308348 (=> (not res!2599878) (not e!3834516))))

(assert (=> b!6308348 (= res!2599878 (and (not ((_ is EmptyLang!16223) (regOne!32958 (regOne!32958 r!7292)))) (not ((_ is ElementMatch!16223) (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6308349 () Bool)

(declare-fun e!3834511 () Bool)

(assert (=> b!6308349 (= e!3834512 e!3834511)))

(declare-fun res!2599876 () Bool)

(assert (=> b!6308349 (= res!2599876 call!535366)))

(assert (=> b!6308349 (=> res!2599876 e!3834511)))

(declare-fun bm!535361 () Bool)

(assert (=> bm!535361 (= call!535366 (nullable!6216 (ite c!1145526 (regOne!32959 (regOne!32958 (regOne!32958 r!7292))) (regOne!32958 (regOne!32958 (regOne!32958 r!7292))))))))

(declare-fun b!6308350 () Bool)

(assert (=> b!6308350 (= e!3834514 call!535365)))

(declare-fun b!6308351 () Bool)

(assert (=> b!6308351 (= e!3834511 call!535365)))

(declare-fun b!6308352 () Bool)

(declare-fun e!3834513 () Bool)

(assert (=> b!6308352 (= e!3834516 e!3834513)))

(declare-fun res!2599874 () Bool)

(assert (=> b!6308352 (=> res!2599874 e!3834513)))

(assert (=> b!6308352 (= res!2599874 ((_ is Star!16223) (regOne!32958 (regOne!32958 r!7292))))))

(declare-fun b!6308353 () Bool)

(assert (=> b!6308353 (= e!3834513 e!3834512)))

(assert (=> b!6308353 (= c!1145526 ((_ is Union!16223) (regOne!32958 (regOne!32958 r!7292))))))

(assert (= (and d!1979727 (not res!2599877)) b!6308348))

(assert (= (and b!6308348 res!2599878) b!6308352))

(assert (= (and b!6308352 (not res!2599874)) b!6308353))

(assert (= (and b!6308353 c!1145526) b!6308349))

(assert (= (and b!6308353 (not c!1145526)) b!6308347))

(assert (= (and b!6308349 (not res!2599876)) b!6308351))

(assert (= (and b!6308347 res!2599875) b!6308350))

(assert (= (or b!6308351 b!6308350) bm!535360))

(assert (= (or b!6308349 b!6308347) bm!535361))

(declare-fun m!7124630 () Bool)

(assert (=> bm!535360 m!7124630))

(declare-fun m!7124632 () Bool)

(assert (=> bm!535361 m!7124632))

(assert (=> d!1979349 d!1979727))

(declare-fun bs!1577351 () Bool)

(declare-fun d!1979733 () Bool)

(assert (= bs!1577351 (and d!1979733 d!1979385)))

(declare-fun lambda!346544 () Int)

(assert (=> bs!1577351 (= lambda!346544 lambda!346479)))

(declare-fun bs!1577352 () Bool)

(assert (= bs!1577352 (and d!1979733 d!1979387)))

(assert (=> bs!1577352 (= lambda!346544 lambda!346482)))

(declare-fun bs!1577353 () Bool)

(assert (= bs!1577353 (and d!1979733 d!1979347)))

(assert (=> bs!1577353 (= lambda!346544 lambda!346458)))

(declare-fun bs!1577354 () Bool)

(assert (= bs!1577354 (and d!1979733 d!1979521)))

(assert (=> bs!1577354 (= lambda!346544 lambda!346505)))

(declare-fun bs!1577355 () Bool)

(assert (= bs!1577355 (and d!1979733 d!1979541)))

(assert (=> bs!1577355 (= lambda!346544 lambda!346512)))

(declare-fun bs!1577357 () Bool)

(assert (= bs!1577357 (and d!1979733 d!1979595)))

(assert (=> bs!1577357 (= lambda!346544 lambda!346524)))

(declare-fun bs!1577359 () Bool)

(assert (= bs!1577359 (and d!1979733 d!1979337)))

(assert (=> bs!1577359 (= lambda!346544 lambda!346457)))

(declare-fun bs!1577361 () Bool)

(assert (= bs!1577361 (and d!1979733 d!1979611)))

(assert (=> bs!1577361 (= lambda!346544 lambda!346526)))

(declare-fun bs!1577363 () Bool)

(assert (= bs!1577363 (and d!1979733 d!1979277)))

(assert (=> bs!1577363 (= lambda!346544 lambda!346449)))

(declare-fun bs!1577364 () Bool)

(assert (= bs!1577364 (and d!1979733 d!1979395)))

(assert (=> bs!1577364 (= lambda!346544 lambda!346485)))

(declare-fun b!6308356 () Bool)

(declare-fun e!3834518 () Bool)

(declare-fun e!3834519 () Bool)

(assert (=> b!6308356 (= e!3834518 e!3834519)))

(declare-fun c!1145527 () Bool)

(assert (=> b!6308356 (= c!1145527 (isEmpty!36910 (tail!12032 (t!378540 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6308357 () Bool)

(declare-fun lt!2358739 () Regex!16223)

(assert (=> b!6308357 (= e!3834518 (isEmptyExpr!1629 lt!2358739))))

(declare-fun b!6308358 () Bool)

(declare-fun e!3834523 () Regex!16223)

(assert (=> b!6308358 (= e!3834523 (Concat!25068 (h!71292 (t!378540 (exprs!6107 (h!71293 zl!343)))) (generalisedConcat!1820 (t!378540 (t!378540 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308359 () Bool)

(declare-fun e!3834522 () Bool)

(assert (=> b!6308359 (= e!3834522 (isEmpty!36910 (t!378540 (t!378540 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6308360 () Bool)

(assert (=> b!6308360 (= e!3834519 (= lt!2358739 (head!12947 (t!378540 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun e!3834520 () Bool)

(assert (=> d!1979733 e!3834520))

(declare-fun res!2599880 () Bool)

(assert (=> d!1979733 (=> (not res!2599880) (not e!3834520))))

(assert (=> d!1979733 (= res!2599880 (validRegex!7959 lt!2358739))))

(declare-fun e!3834521 () Regex!16223)

(assert (=> d!1979733 (= lt!2358739 e!3834521)))

(declare-fun c!1145529 () Bool)

(assert (=> d!1979733 (= c!1145529 e!3834522)))

(declare-fun res!2599881 () Bool)

(assert (=> d!1979733 (=> (not res!2599881) (not e!3834522))))

(assert (=> d!1979733 (= res!2599881 ((_ is Cons!64844) (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> d!1979733 (forall!15373 (t!378540 (exprs!6107 (h!71293 zl!343))) lambda!346544)))

(assert (=> d!1979733 (= (generalisedConcat!1820 (t!378540 (exprs!6107 (h!71293 zl!343)))) lt!2358739)))

(declare-fun b!6308355 () Bool)

(assert (=> b!6308355 (= e!3834521 (h!71292 (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308361 () Bool)

(assert (=> b!6308361 (= e!3834523 EmptyExpr!16223)))

(declare-fun b!6308362 () Bool)

(assert (=> b!6308362 (= e!3834520 e!3834518)))

(declare-fun c!1145530 () Bool)

(assert (=> b!6308362 (= c!1145530 (isEmpty!36910 (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308363 () Bool)

(assert (=> b!6308363 (= e!3834521 e!3834523)))

(declare-fun c!1145528 () Bool)

(assert (=> b!6308363 (= c!1145528 ((_ is Cons!64844) (t!378540 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308364 () Bool)

(assert (=> b!6308364 (= e!3834519 (isConcat!1152 lt!2358739))))

(assert (= (and d!1979733 res!2599881) b!6308359))

(assert (= (and d!1979733 c!1145529) b!6308355))

(assert (= (and d!1979733 (not c!1145529)) b!6308363))

(assert (= (and b!6308363 c!1145528) b!6308358))

(assert (= (and b!6308363 (not c!1145528)) b!6308361))

(assert (= (and d!1979733 res!2599880) b!6308362))

(assert (= (and b!6308362 c!1145530) b!6308357))

(assert (= (and b!6308362 (not c!1145530)) b!6308356))

(assert (= (and b!6308356 c!1145527) b!6308360))

(assert (= (and b!6308356 (not c!1145527)) b!6308364))

(declare-fun m!7124642 () Bool)

(assert (=> b!6308359 m!7124642))

(declare-fun m!7124644 () Bool)

(assert (=> d!1979733 m!7124644))

(declare-fun m!7124646 () Bool)

(assert (=> d!1979733 m!7124646))

(declare-fun m!7124648 () Bool)

(assert (=> b!6308357 m!7124648))

(declare-fun m!7124650 () Bool)

(assert (=> b!6308358 m!7124650))

(assert (=> b!6308362 m!7123454))

(declare-fun m!7124652 () Bool)

(assert (=> b!6308360 m!7124652))

(declare-fun m!7124654 () Bool)

(assert (=> b!6308356 m!7124654))

(assert (=> b!6308356 m!7124654))

(declare-fun m!7124656 () Bool)

(assert (=> b!6308356 m!7124656))

(declare-fun m!7124658 () Bool)

(assert (=> b!6308364 m!7124658))

(assert (=> b!6307529 d!1979733))

(declare-fun d!1979739 () Bool)

(assert (=> d!1979739 (= (isEmpty!36914 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326)) (not ((_ is Some!16113) (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) Nil!64846 s!2326 s!2326))))))

(assert (=> d!1979383 d!1979739))

(assert (=> d!1979343 d!1979605))

(assert (=> d!1979393 d!1979605))

(declare-fun d!1979745 () Bool)

(assert (=> d!1979745 (= (nullable!6216 r!7292) (nullableFct!2167 r!7292))))

(declare-fun bs!1577372 () Bool)

(assert (= bs!1577372 d!1979745))

(declare-fun m!7124666 () Bool)

(assert (=> bs!1577372 m!7124666))

(assert (=> b!6307611 d!1979745))

(declare-fun b!6308369 () Bool)

(declare-fun e!3834528 () Bool)

(declare-fun e!3834530 () Bool)

(assert (=> b!6308369 (= e!3834528 e!3834530)))

(declare-fun res!2599885 () Bool)

(declare-fun call!535368 () Bool)

(assert (=> b!6308369 (= res!2599885 call!535368)))

(assert (=> b!6308369 (=> (not res!2599885) (not e!3834530))))

(declare-fun d!1979749 () Bool)

(declare-fun res!2599887 () Bool)

(declare-fun e!3834531 () Bool)

(assert (=> d!1979749 (=> res!2599887 e!3834531)))

(assert (=> d!1979749 (= res!2599887 ((_ is EmptyExpr!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> d!1979749 (= (nullableFct!2167 (h!71292 (exprs!6107 (h!71293 zl!343)))) e!3834531)))

(declare-fun bm!535362 () Bool)

(declare-fun call!535367 () Bool)

(declare-fun c!1145532 () Bool)

(assert (=> bm!535362 (= call!535367 (nullable!6216 (ite c!1145532 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308370 () Bool)

(declare-fun e!3834532 () Bool)

(assert (=> b!6308370 (= e!3834531 e!3834532)))

(declare-fun res!2599888 () Bool)

(assert (=> b!6308370 (=> (not res!2599888) (not e!3834532))))

(assert (=> b!6308370 (= res!2599888 (and (not ((_ is EmptyLang!16223) (h!71292 (exprs!6107 (h!71293 zl!343))))) (not ((_ is ElementMatch!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308371 () Bool)

(declare-fun e!3834527 () Bool)

(assert (=> b!6308371 (= e!3834528 e!3834527)))

(declare-fun res!2599886 () Bool)

(assert (=> b!6308371 (= res!2599886 call!535368)))

(assert (=> b!6308371 (=> res!2599886 e!3834527)))

(declare-fun bm!535363 () Bool)

(assert (=> bm!535363 (= call!535368 (nullable!6216 (ite c!1145532 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308372 () Bool)

(assert (=> b!6308372 (= e!3834530 call!535367)))

(declare-fun b!6308373 () Bool)

(assert (=> b!6308373 (= e!3834527 call!535367)))

(declare-fun b!6308374 () Bool)

(declare-fun e!3834529 () Bool)

(assert (=> b!6308374 (= e!3834532 e!3834529)))

(declare-fun res!2599884 () Bool)

(assert (=> b!6308374 (=> res!2599884 e!3834529)))

(assert (=> b!6308374 (= res!2599884 ((_ is Star!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308375 () Bool)

(assert (=> b!6308375 (= e!3834529 e!3834528)))

(assert (=> b!6308375 (= c!1145532 ((_ is Union!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (= (and d!1979749 (not res!2599887)) b!6308370))

(assert (= (and b!6308370 res!2599888) b!6308374))

(assert (= (and b!6308374 (not res!2599884)) b!6308375))

(assert (= (and b!6308375 c!1145532) b!6308371))

(assert (= (and b!6308375 (not c!1145532)) b!6308369))

(assert (= (and b!6308371 (not res!2599886)) b!6308373))

(assert (= (and b!6308369 res!2599885) b!6308372))

(assert (= (or b!6308373 b!6308372) bm!535362))

(assert (= (or b!6308371 b!6308369) bm!535363))

(declare-fun m!7124674 () Bool)

(assert (=> bm!535362 m!7124674))

(declare-fun m!7124676 () Bool)

(assert (=> bm!535363 m!7124676))

(assert (=> d!1979319 d!1979749))

(declare-fun call!535373 () List!64968)

(declare-fun bm!535364 () Bool)

(declare-fun c!1145534 () Bool)

(declare-fun call!535371 () (InoxSet Context!11214))

(assert (=> bm!535364 (= call!535371 (derivationStepZipperDown!1471 (ite c!1145534 (regOne!32959 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (regOne!32958 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))))) (ite c!1145534 (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210)) (Context!11215 call!535373)) (h!71294 s!2326)))))

(declare-fun bm!535365 () Bool)

(declare-fun call!535370 () (InoxSet Context!11214))

(declare-fun c!1145535 () Bool)

(declare-fun call!535372 () List!64968)

(declare-fun c!1145536 () Bool)

(assert (=> bm!535365 (= call!535370 (derivationStepZipperDown!1471 (ite c!1145534 (regTwo!32959 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (ite c!1145535 (regTwo!32958 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (ite c!1145536 (regOne!32958 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (reg!16552 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))))))) (ite (or c!1145534 c!1145535) (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210)) (Context!11215 call!535372)) (h!71294 s!2326)))))

(declare-fun e!3834535 () (InoxSet Context!11214))

(declare-fun b!6308378 () Bool)

(assert (=> b!6308378 (= e!3834535 (store ((as const (Array Context!11214 Bool)) false) (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210)) true))))

(declare-fun b!6308379 () Bool)

(declare-fun c!1145538 () Bool)

(assert (=> b!6308379 (= c!1145538 ((_ is Star!16223) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))))))

(declare-fun e!3834536 () (InoxSet Context!11214))

(declare-fun e!3834537 () (InoxSet Context!11214))

(assert (=> b!6308379 (= e!3834536 e!3834537)))

(declare-fun b!6308380 () Bool)

(assert (=> b!6308380 (= e!3834537 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308381 () Bool)

(declare-fun e!3834539 () (InoxSet Context!11214))

(assert (=> b!6308381 (= e!3834535 e!3834539)))

(assert (=> b!6308381 (= c!1145534 ((_ is Union!16223) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))))))

(declare-fun b!6308382 () Bool)

(declare-fun e!3834534 () (InoxSet Context!11214))

(assert (=> b!6308382 (= e!3834534 e!3834536)))

(assert (=> b!6308382 (= c!1145536 ((_ is Concat!25068) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))))))

(declare-fun b!6308383 () Bool)

(declare-fun e!3834538 () Bool)

(assert (=> b!6308383 (= c!1145535 e!3834538)))

(declare-fun res!2599889 () Bool)

(assert (=> b!6308383 (=> (not res!2599889) (not e!3834538))))

(assert (=> b!6308383 (= res!2599889 ((_ is Concat!25068) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))))))

(assert (=> b!6308383 (= e!3834539 e!3834534)))

(declare-fun bm!535366 () Bool)

(assert (=> bm!535366 (= call!535373 ($colon$colon!2088 (exprs!6107 (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210))) (ite (or c!1145535 c!1145536) (regTwo!32958 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))))))))

(declare-fun b!6308384 () Bool)

(declare-fun call!535369 () (InoxSet Context!11214))

(assert (=> b!6308384 (= e!3834534 ((_ map or) call!535371 call!535369))))

(declare-fun b!6308385 () Bool)

(declare-fun call!535374 () (InoxSet Context!11214))

(assert (=> b!6308385 (= e!3834537 call!535374)))

(declare-fun b!6308386 () Bool)

(assert (=> b!6308386 (= e!3834536 call!535374)))

(declare-fun b!6308387 () Bool)

(assert (=> b!6308387 (= e!3834539 ((_ map or) call!535371 call!535370))))

(declare-fun b!6308388 () Bool)

(assert (=> b!6308388 (= e!3834538 (nullable!6216 (regOne!32958 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))))))))

(declare-fun bm!535368 () Bool)

(assert (=> bm!535368 (= call!535374 call!535369)))

(declare-fun bm!535369 () Bool)

(assert (=> bm!535369 (= call!535372 call!535373)))

(declare-fun bm!535367 () Bool)

(assert (=> bm!535367 (= call!535369 call!535370)))

(declare-fun d!1979753 () Bool)

(declare-fun c!1145537 () Bool)

(assert (=> d!1979753 (= c!1145537 (and ((_ is ElementMatch!16223) (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (= (c!1145130 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292))))))) (h!71294 s!2326))))))

(assert (=> d!1979753 (= (derivationStepZipperDown!1471 (ite c!1145322 (regTwo!32959 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145323 (regTwo!32958 (regOne!32958 (regOne!32958 r!7292))) (ite c!1145324 (regOne!32958 (regOne!32958 (regOne!32958 r!7292))) (reg!16552 (regOne!32958 (regOne!32958 r!7292)))))) (ite (or c!1145322 c!1145323) lt!2358606 (Context!11215 call!535210)) (h!71294 s!2326)) e!3834535)))

(assert (= (and d!1979753 c!1145537) b!6308378))

(assert (= (and d!1979753 (not c!1145537)) b!6308381))

(assert (= (and b!6308381 c!1145534) b!6308387))

(assert (= (and b!6308381 (not c!1145534)) b!6308383))

(assert (= (and b!6308383 res!2599889) b!6308388))

(assert (= (and b!6308383 c!1145535) b!6308384))

(assert (= (and b!6308383 (not c!1145535)) b!6308382))

(assert (= (and b!6308382 c!1145536) b!6308386))

(assert (= (and b!6308382 (not c!1145536)) b!6308379))

(assert (= (and b!6308379 c!1145538) b!6308385))

(assert (= (and b!6308379 (not c!1145538)) b!6308380))

(assert (= (or b!6308386 b!6308385) bm!535369))

(assert (= (or b!6308386 b!6308385) bm!535368))

(assert (= (or b!6308384 bm!535369) bm!535366))

(assert (= (or b!6308384 bm!535368) bm!535367))

(assert (= (or b!6308387 bm!535367) bm!535365))

(assert (= (or b!6308387 b!6308384) bm!535364))

(declare-fun m!7124682 () Bool)

(assert (=> bm!535364 m!7124682))

(declare-fun m!7124684 () Bool)

(assert (=> bm!535366 m!7124684))

(declare-fun m!7124686 () Bool)

(assert (=> b!6308388 m!7124686))

(declare-fun m!7124688 () Bool)

(assert (=> bm!535365 m!7124688))

(declare-fun m!7124690 () Bool)

(assert (=> b!6308378 m!7124690))

(assert (=> bm!535203 d!1979753))

(assert (=> b!6307503 d!1979309))

(declare-fun b!6308389 () Bool)

(declare-fun res!2599891 () Bool)

(declare-fun e!3834541 () Bool)

(assert (=> b!6308389 (=> res!2599891 e!3834541)))

(assert (=> b!6308389 (= res!2599891 (not ((_ is ElementMatch!16223) (regOne!32958 r!7292))))))

(declare-fun e!3834546 () Bool)

(assert (=> b!6308389 (= e!3834546 e!3834541)))

(declare-fun b!6308390 () Bool)

(declare-fun res!2599894 () Bool)

(declare-fun e!3834542 () Bool)

(assert (=> b!6308390 (=> (not res!2599894) (not e!3834542))))

(assert (=> b!6308390 (= res!2599894 (isEmpty!36912 (tail!12031 (_1!36505 (get!22423 lt!2358680)))))))

(declare-fun d!1979759 () Bool)

(declare-fun e!3834543 () Bool)

(assert (=> d!1979759 e!3834543))

(declare-fun c!1145540 () Bool)

(assert (=> d!1979759 (= c!1145540 ((_ is EmptyExpr!16223) (regOne!32958 r!7292)))))

(declare-fun lt!2358741 () Bool)

(declare-fun e!3834544 () Bool)

(assert (=> d!1979759 (= lt!2358741 e!3834544)))

(declare-fun c!1145541 () Bool)

(assert (=> d!1979759 (= c!1145541 (isEmpty!36912 (_1!36505 (get!22423 lt!2358680))))))

(assert (=> d!1979759 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979759 (= (matchR!8406 (regOne!32958 r!7292) (_1!36505 (get!22423 lt!2358680))) lt!2358741)))

(declare-fun b!6308391 () Bool)

(declare-fun res!2599895 () Bool)

(assert (=> b!6308391 (=> res!2599895 e!3834541)))

(assert (=> b!6308391 (= res!2599895 e!3834542)))

(declare-fun res!2599896 () Bool)

(assert (=> b!6308391 (=> (not res!2599896) (not e!3834542))))

(assert (=> b!6308391 (= res!2599896 lt!2358741)))

(declare-fun b!6308392 () Bool)

(declare-fun call!535375 () Bool)

(assert (=> b!6308392 (= e!3834543 (= lt!2358741 call!535375))))

(declare-fun bm!535370 () Bool)

(assert (=> bm!535370 (= call!535375 (isEmpty!36912 (_1!36505 (get!22423 lt!2358680))))))

(declare-fun b!6308393 () Bool)

(assert (=> b!6308393 (= e!3834544 (nullable!6216 (regOne!32958 r!7292)))))

(declare-fun b!6308394 () Bool)

(declare-fun e!3834540 () Bool)

(assert (=> b!6308394 (= e!3834540 (not (= (head!12946 (_1!36505 (get!22423 lt!2358680))) (c!1145130 (regOne!32958 r!7292)))))))

(declare-fun b!6308395 () Bool)

(declare-fun res!2599890 () Bool)

(assert (=> b!6308395 (=> (not res!2599890) (not e!3834542))))

(assert (=> b!6308395 (= res!2599890 (not call!535375))))

(declare-fun b!6308396 () Bool)

(assert (=> b!6308396 (= e!3834542 (= (head!12946 (_1!36505 (get!22423 lt!2358680))) (c!1145130 (regOne!32958 r!7292))))))

(declare-fun b!6308397 () Bool)

(declare-fun res!2599897 () Bool)

(assert (=> b!6308397 (=> res!2599897 e!3834540)))

(assert (=> b!6308397 (= res!2599897 (not (isEmpty!36912 (tail!12031 (_1!36505 (get!22423 lt!2358680))))))))

(declare-fun b!6308398 () Bool)

(assert (=> b!6308398 (= e!3834543 e!3834546)))

(declare-fun c!1145539 () Bool)

(assert (=> b!6308398 (= c!1145539 ((_ is EmptyLang!16223) (regOne!32958 r!7292)))))

(declare-fun b!6308399 () Bool)

(declare-fun e!3834545 () Bool)

(assert (=> b!6308399 (= e!3834541 e!3834545)))

(declare-fun res!2599892 () Bool)

(assert (=> b!6308399 (=> (not res!2599892) (not e!3834545))))

(assert (=> b!6308399 (= res!2599892 (not lt!2358741))))

(declare-fun b!6308400 () Bool)

(assert (=> b!6308400 (= e!3834546 (not lt!2358741))))

(declare-fun b!6308401 () Bool)

(assert (=> b!6308401 (= e!3834545 e!3834540)))

(declare-fun res!2599893 () Bool)

(assert (=> b!6308401 (=> res!2599893 e!3834540)))

(assert (=> b!6308401 (= res!2599893 call!535375)))

(declare-fun b!6308402 () Bool)

(assert (=> b!6308402 (= e!3834544 (matchR!8406 (derivativeStep!4932 (regOne!32958 r!7292) (head!12946 (_1!36505 (get!22423 lt!2358680)))) (tail!12031 (_1!36505 (get!22423 lt!2358680)))))))

(assert (= (and d!1979759 c!1145541) b!6308393))

(assert (= (and d!1979759 (not c!1145541)) b!6308402))

(assert (= (and d!1979759 c!1145540) b!6308392))

(assert (= (and d!1979759 (not c!1145540)) b!6308398))

(assert (= (and b!6308398 c!1145539) b!6308400))

(assert (= (and b!6308398 (not c!1145539)) b!6308389))

(assert (= (and b!6308389 (not res!2599891)) b!6308391))

(assert (= (and b!6308391 res!2599896) b!6308395))

(assert (= (and b!6308395 res!2599890) b!6308390))

(assert (= (and b!6308390 res!2599894) b!6308396))

(assert (= (and b!6308391 (not res!2599895)) b!6308399))

(assert (= (and b!6308399 res!2599892) b!6308401))

(assert (= (and b!6308401 (not res!2599893)) b!6308397))

(assert (= (and b!6308397 (not res!2599897)) b!6308394))

(assert (= (or b!6308392 b!6308401 b!6308395) bm!535370))

(declare-fun m!7124692 () Bool)

(assert (=> bm!535370 m!7124692))

(assert (=> d!1979759 m!7124692))

(assert (=> d!1979759 m!7123852))

(declare-fun m!7124694 () Bool)

(assert (=> b!6308394 m!7124694))

(assert (=> b!6308393 m!7124394))

(declare-fun m!7124696 () Bool)

(assert (=> b!6308397 m!7124696))

(assert (=> b!6308397 m!7124696))

(declare-fun m!7124698 () Bool)

(assert (=> b!6308397 m!7124698))

(assert (=> b!6308390 m!7124696))

(assert (=> b!6308390 m!7124696))

(assert (=> b!6308390 m!7124698))

(assert (=> b!6308396 m!7124694))

(assert (=> b!6308402 m!7124694))

(assert (=> b!6308402 m!7124694))

(declare-fun m!7124700 () Bool)

(assert (=> b!6308402 m!7124700))

(assert (=> b!6308402 m!7124696))

(assert (=> b!6308402 m!7124700))

(assert (=> b!6308402 m!7124696))

(declare-fun m!7124702 () Bool)

(assert (=> b!6308402 m!7124702))

(assert (=> b!6307397 d!1979759))

(assert (=> b!6307397 d!1979583))

(declare-fun d!1979761 () Bool)

(assert (=> d!1979761 (= (nullable!6216 (h!71292 (exprs!6107 lt!2358609))) (nullableFct!2167 (h!71292 (exprs!6107 lt!2358609))))))

(declare-fun bs!1577379 () Bool)

(assert (= bs!1577379 d!1979761))

(declare-fun m!7124704 () Bool)

(assert (=> bs!1577379 m!7124704))

(assert (=> b!6307176 d!1979761))

(declare-fun call!535378 () (InoxSet Context!11214))

(declare-fun bm!535371 () Bool)

(declare-fun call!535380 () List!64968)

(declare-fun c!1145542 () Bool)

(assert (=> bm!535371 (= call!535378 (derivationStepZipperDown!1471 (ite c!1145542 (regOne!32959 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (regOne!32958 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))) (ite c!1145542 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (Context!11215 call!535380)) (h!71294 s!2326)))))

(declare-fun c!1145544 () Bool)

(declare-fun call!535377 () (InoxSet Context!11214))

(declare-fun call!535379 () List!64968)

(declare-fun c!1145543 () Bool)

(declare-fun bm!535372 () Bool)

(assert (=> bm!535372 (= call!535377 (derivationStepZipperDown!1471 (ite c!1145542 (regTwo!32959 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (ite c!1145543 (regTwo!32958 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (ite c!1145544 (regOne!32958 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (reg!16552 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))) (ite (or c!1145542 c!1145543) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (Context!11215 call!535379)) (h!71294 s!2326)))))

(declare-fun b!6308405 () Bool)

(declare-fun e!3834550 () (InoxSet Context!11214))

(assert (=> b!6308405 (= e!3834550 (store ((as const (Array Context!11214 Bool)) false) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) true))))

(declare-fun b!6308406 () Bool)

(declare-fun c!1145546 () Bool)

(assert (=> b!6308406 (= c!1145546 ((_ is Star!16223) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun e!3834551 () (InoxSet Context!11214))

(declare-fun e!3834552 () (InoxSet Context!11214))

(assert (=> b!6308406 (= e!3834551 e!3834552)))

(declare-fun b!6308407 () Bool)

(assert (=> b!6308407 (= e!3834552 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308408 () Bool)

(declare-fun e!3834554 () (InoxSet Context!11214))

(assert (=> b!6308408 (= e!3834550 e!3834554)))

(assert (=> b!6308408 (= c!1145542 ((_ is Union!16223) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun b!6308409 () Bool)

(declare-fun e!3834549 () (InoxSet Context!11214))

(assert (=> b!6308409 (= e!3834549 e!3834551)))

(assert (=> b!6308409 (= c!1145544 ((_ is Concat!25068) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(declare-fun b!6308410 () Bool)

(declare-fun e!3834553 () Bool)

(assert (=> b!6308410 (= c!1145543 e!3834553)))

(declare-fun res!2599900 () Bool)

(assert (=> b!6308410 (=> (not res!2599900) (not e!3834553))))

(assert (=> b!6308410 (= res!2599900 ((_ is Concat!25068) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))

(assert (=> b!6308410 (= e!3834554 e!3834549)))

(declare-fun bm!535373 () Bool)

(assert (=> bm!535373 (= call!535380 ($colon$colon!2088 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))) (ite (or c!1145543 c!1145544) (regTwo!32958 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))))

(declare-fun b!6308411 () Bool)

(declare-fun call!535376 () (InoxSet Context!11214))

(assert (=> b!6308411 (= e!3834549 ((_ map or) call!535378 call!535376))))

(declare-fun b!6308412 () Bool)

(declare-fun call!535381 () (InoxSet Context!11214))

(assert (=> b!6308412 (= e!3834552 call!535381)))

(declare-fun b!6308413 () Bool)

(assert (=> b!6308413 (= e!3834551 call!535381)))

(declare-fun b!6308414 () Bool)

(assert (=> b!6308414 (= e!3834554 ((_ map or) call!535378 call!535377))))

(declare-fun b!6308415 () Bool)

(assert (=> b!6308415 (= e!3834553 (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))))

(declare-fun bm!535375 () Bool)

(assert (=> bm!535375 (= call!535381 call!535376)))

(declare-fun bm!535376 () Bool)

(assert (=> bm!535376 (= call!535379 call!535380)))

(declare-fun bm!535374 () Bool)

(assert (=> bm!535374 (= call!535376 call!535377)))

(declare-fun d!1979763 () Bool)

(declare-fun c!1145545 () Bool)

(assert (=> d!1979763 (= c!1145545 (and ((_ is ElementMatch!16223) (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (= (c!1145130 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326))))))

(assert (=> d!1979763 (= (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326)) e!3834550)))

(assert (= (and d!1979763 c!1145545) b!6308405))

(assert (= (and d!1979763 (not c!1145545)) b!6308408))

(assert (= (and b!6308408 c!1145542) b!6308414))

(assert (= (and b!6308408 (not c!1145542)) b!6308410))

(assert (= (and b!6308410 res!2599900) b!6308415))

(assert (= (and b!6308410 c!1145543) b!6308411))

(assert (= (and b!6308410 (not c!1145543)) b!6308409))

(assert (= (and b!6308409 c!1145544) b!6308413))

(assert (= (and b!6308409 (not c!1145544)) b!6308406))

(assert (= (and b!6308406 c!1145546) b!6308412))

(assert (= (and b!6308406 (not c!1145546)) b!6308407))

(assert (= (or b!6308413 b!6308412) bm!535376))

(assert (= (or b!6308413 b!6308412) bm!535375))

(assert (= (or b!6308411 bm!535376) bm!535373))

(assert (= (or b!6308411 bm!535375) bm!535374))

(assert (= (or b!6308414 bm!535374) bm!535372))

(assert (= (or b!6308414 b!6308411) bm!535371))

(declare-fun m!7124706 () Bool)

(assert (=> bm!535371 m!7124706))

(declare-fun m!7124708 () Bool)

(assert (=> bm!535373 m!7124708))

(declare-fun m!7124710 () Bool)

(assert (=> b!6308415 m!7124710))

(declare-fun m!7124712 () Bool)

(assert (=> bm!535372 m!7124712))

(declare-fun m!7124714 () Bool)

(assert (=> b!6308405 m!7124714))

(assert (=> bm!535145 d!1979763))

(assert (=> bs!1577154 d!1979281))

(declare-fun bm!535377 () Bool)

(declare-fun call!535382 () (InoxSet Context!11214))

(assert (=> bm!535377 (= call!535382 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))) (h!71294 s!2326)))))

(declare-fun d!1979769 () Bool)

(declare-fun c!1145548 () Bool)

(declare-fun e!3834559 () Bool)

(assert (=> d!1979769 (= c!1145548 e!3834559)))

(declare-fun res!2599907 () Bool)

(assert (=> d!1979769 (=> (not res!2599907) (not e!3834559))))

(assert (=> d!1979769 (= res!2599907 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))))

(declare-fun e!3834560 () (InoxSet Context!11214))

(assert (=> d!1979769 (= (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))) (h!71294 s!2326)) e!3834560)))

(declare-fun b!6308419 () Bool)

(declare-fun e!3834558 () (InoxSet Context!11214))

(assert (=> b!6308419 (= e!3834558 call!535382)))

(declare-fun b!6308420 () Bool)

(assert (=> b!6308420 (= e!3834558 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308421 () Bool)

(assert (=> b!6308421 (= e!3834560 e!3834558)))

(declare-fun c!1145547 () Bool)

(assert (=> b!6308421 (= c!1145547 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343)))))))))))))

(declare-fun b!6308422 () Bool)

(assert (=> b!6308422 (= e!3834560 ((_ map or) call!535382 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))) (h!71294 s!2326))))))

(declare-fun b!6308423 () Bool)

(assert (=> b!6308423 (= e!3834559 (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (Cons!64844 (h!71292 (exprs!6107 (h!71293 zl!343))) (t!378540 (exprs!6107 (h!71293 zl!343))))))))))))))

(assert (= (and d!1979769 res!2599907) b!6308423))

(assert (= (and d!1979769 c!1145548) b!6308422))

(assert (= (and d!1979769 (not c!1145548)) b!6308421))

(assert (= (and b!6308421 c!1145547) b!6308419))

(assert (= (and b!6308421 (not c!1145547)) b!6308420))

(assert (= (or b!6308422 b!6308419) bm!535377))

(declare-fun m!7124720 () Bool)

(assert (=> bm!535377 m!7124720))

(declare-fun m!7124722 () Bool)

(assert (=> b!6308422 m!7124722))

(declare-fun m!7124724 () Bool)

(assert (=> b!6308423 m!7124724))

(assert (=> b!6307143 d!1979769))

(assert (=> d!1979345 d!1979605))

(declare-fun b!6308433 () Bool)

(declare-fun e!3834569 () List!64970)

(assert (=> b!6308433 (= e!3834569 (t!378542 s!2326))))

(declare-fun d!1979775 () Bool)

(declare-fun e!3834568 () Bool)

(assert (=> d!1979775 e!3834568))

(declare-fun res!2599913 () Bool)

(assert (=> d!1979775 (=> (not res!2599913) (not e!3834568))))

(declare-fun lt!2358742 () List!64970)

(assert (=> d!1979775 (= res!2599913 (= (content!12212 lt!2358742) ((_ map or) (content!12212 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))) (content!12212 (t!378542 s!2326)))))))

(assert (=> d!1979775 (= lt!2358742 e!3834569)))

(declare-fun c!1145551 () Bool)

(assert (=> d!1979775 (= c!1145551 ((_ is Nil!64846) (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))))))

(assert (=> d!1979775 (= (++!14296 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326)) lt!2358742)))

(declare-fun b!6308435 () Bool)

(declare-fun res!2599914 () Bool)

(assert (=> b!6308435 (=> (not res!2599914) (not e!3834568))))

(assert (=> b!6308435 (= res!2599914 (= (size!40326 lt!2358742) (+ (size!40326 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))) (size!40326 (t!378542 s!2326)))))))

(declare-fun b!6308434 () Bool)

(assert (=> b!6308434 (= e!3834569 (Cons!64846 (h!71294 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))) (++!14296 (t!378542 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))) (t!378542 s!2326))))))

(declare-fun b!6308436 () Bool)

(assert (=> b!6308436 (= e!3834568 (or (not (= (t!378542 s!2326) Nil!64846)) (= lt!2358742 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)))))))

(assert (= (and d!1979775 c!1145551) b!6308433))

(assert (= (and d!1979775 (not c!1145551)) b!6308434))

(assert (= (and d!1979775 res!2599913) b!6308435))

(assert (= (and b!6308435 res!2599914) b!6308436))

(declare-fun m!7124732 () Bool)

(assert (=> d!1979775 m!7124732))

(assert (=> d!1979775 m!7123838))

(declare-fun m!7124734 () Bool)

(assert (=> d!1979775 m!7124734))

(declare-fun m!7124736 () Bool)

(assert (=> d!1979775 m!7124736))

(declare-fun m!7124738 () Bool)

(assert (=> b!6308435 m!7124738))

(assert (=> b!6308435 m!7123838))

(declare-fun m!7124740 () Bool)

(assert (=> b!6308435 m!7124740))

(declare-fun m!7124742 () Bool)

(assert (=> b!6308435 m!7124742))

(declare-fun m!7124744 () Bool)

(assert (=> b!6308434 m!7124744))

(assert (=> b!6307392 d!1979775))

(declare-fun b!6308437 () Bool)

(declare-fun e!3834571 () List!64970)

(assert (=> b!6308437 (= e!3834571 (Cons!64846 (h!71294 s!2326) Nil!64846))))

(declare-fun d!1979783 () Bool)

(declare-fun e!3834570 () Bool)

(assert (=> d!1979783 e!3834570))

(declare-fun res!2599915 () Bool)

(assert (=> d!1979783 (=> (not res!2599915) (not e!3834570))))

(declare-fun lt!2358743 () List!64970)

(assert (=> d!1979783 (= res!2599915 (= (content!12212 lt!2358743) ((_ map or) (content!12212 Nil!64846) (content!12212 (Cons!64846 (h!71294 s!2326) Nil!64846)))))))

(assert (=> d!1979783 (= lt!2358743 e!3834571)))

(declare-fun c!1145552 () Bool)

(assert (=> d!1979783 (= c!1145552 ((_ is Nil!64846) Nil!64846))))

(assert (=> d!1979783 (= (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) lt!2358743)))

(declare-fun b!6308439 () Bool)

(declare-fun res!2599916 () Bool)

(assert (=> b!6308439 (=> (not res!2599916) (not e!3834570))))

(assert (=> b!6308439 (= res!2599916 (= (size!40326 lt!2358743) (+ (size!40326 Nil!64846) (size!40326 (Cons!64846 (h!71294 s!2326) Nil!64846)))))))

(declare-fun b!6308438 () Bool)

(assert (=> b!6308438 (= e!3834571 (Cons!64846 (h!71294 Nil!64846) (++!14296 (t!378542 Nil!64846) (Cons!64846 (h!71294 s!2326) Nil!64846))))))

(declare-fun b!6308440 () Bool)

(assert (=> b!6308440 (= e!3834570 (or (not (= (Cons!64846 (h!71294 s!2326) Nil!64846) Nil!64846)) (= lt!2358743 Nil!64846)))))

(assert (= (and d!1979783 c!1145552) b!6308437))

(assert (= (and d!1979783 (not c!1145552)) b!6308438))

(assert (= (and d!1979783 res!2599915) b!6308439))

(assert (= (and b!6308439 res!2599916) b!6308440))

(declare-fun m!7124748 () Bool)

(assert (=> d!1979783 m!7124748))

(declare-fun m!7124750 () Bool)

(assert (=> d!1979783 m!7124750))

(declare-fun m!7124752 () Bool)

(assert (=> d!1979783 m!7124752))

(declare-fun m!7124754 () Bool)

(assert (=> b!6308439 m!7124754))

(declare-fun m!7124756 () Bool)

(assert (=> b!6308439 m!7124756))

(declare-fun m!7124758 () Bool)

(assert (=> b!6308439 m!7124758))

(declare-fun m!7124760 () Bool)

(assert (=> b!6308438 m!7124760))

(assert (=> b!6307392 d!1979783))

(declare-fun d!1979787 () Bool)

(assert (=> d!1979787 (= (++!14296 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326)) s!2326)))

(declare-fun lt!2358747 () Unit!158223)

(declare-fun choose!46844 (List!64970 C!32716 List!64970 List!64970) Unit!158223)

(assert (=> d!1979787 (= lt!2358747 (choose!46844 Nil!64846 (h!71294 s!2326) (t!378542 s!2326) s!2326))))

(assert (=> d!1979787 (= (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) (t!378542 s!2326))) s!2326)))

(assert (=> d!1979787 (= (lemmaMoveElementToOtherListKeepsConcatEq!2391 Nil!64846 (h!71294 s!2326) (t!378542 s!2326) s!2326) lt!2358747)))

(declare-fun bs!1577385 () Bool)

(assert (= bs!1577385 d!1979787))

(assert (=> bs!1577385 m!7123838))

(assert (=> bs!1577385 m!7123838))

(assert (=> bs!1577385 m!7123840))

(declare-fun m!7124780 () Bool)

(assert (=> bs!1577385 m!7124780))

(declare-fun m!7124782 () Bool)

(assert (=> bs!1577385 m!7124782))

(assert (=> b!6307392 d!1979787))

(declare-fun b!6308466 () Bool)

(declare-fun res!2599928 () Bool)

(declare-fun e!3834585 () Bool)

(assert (=> b!6308466 (=> (not res!2599928) (not e!3834585))))

(declare-fun lt!2358749 () Option!16114)

(assert (=> b!6308466 (= res!2599928 (matchR!8406 (regTwo!32958 r!7292) (_2!36505 (get!22423 lt!2358749))))))

(declare-fun b!6308467 () Bool)

(declare-fun e!3834589 () Bool)

(assert (=> b!6308467 (= e!3834589 (not (isDefined!12817 lt!2358749)))))

(declare-fun b!6308468 () Bool)

(declare-fun lt!2358750 () Unit!158223)

(declare-fun lt!2358748 () Unit!158223)

(assert (=> b!6308468 (= lt!2358750 lt!2358748)))

(assert (=> b!6308468 (= (++!14296 (++!14296 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (Cons!64846 (h!71294 (t!378542 s!2326)) Nil!64846)) (t!378542 (t!378542 s!2326))) s!2326)))

(assert (=> b!6308468 (= lt!2358748 (lemmaMoveElementToOtherListKeepsConcatEq!2391 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (h!71294 (t!378542 s!2326)) (t!378542 (t!378542 s!2326)) s!2326))))

(declare-fun e!3834587 () Option!16114)

(assert (=> b!6308468 (= e!3834587 (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) (++!14296 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (Cons!64846 (h!71294 (t!378542 s!2326)) Nil!64846)) (t!378542 (t!378542 s!2326)) s!2326))))

(declare-fun b!6308469 () Bool)

(declare-fun e!3834586 () Option!16114)

(assert (=> b!6308469 (= e!3834586 e!3834587)))

(declare-fun c!1145562 () Bool)

(assert (=> b!6308469 (= c!1145562 ((_ is Nil!64846) (t!378542 s!2326)))))

(declare-fun b!6308470 () Bool)

(assert (=> b!6308470 (= e!3834587 None!16113)))

(declare-fun b!6308471 () Bool)

(assert (=> b!6308471 (= e!3834586 (Some!16113 (tuple2!66405 (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326))))))

(declare-fun b!6308472 () Bool)

(declare-fun e!3834588 () Bool)

(assert (=> b!6308472 (= e!3834588 (matchR!8406 (regTwo!32958 r!7292) (t!378542 s!2326)))))

(declare-fun d!1979795 () Bool)

(assert (=> d!1979795 e!3834589))

(declare-fun res!2599927 () Bool)

(assert (=> d!1979795 (=> res!2599927 e!3834589)))

(assert (=> d!1979795 (= res!2599927 e!3834585)))

(declare-fun res!2599930 () Bool)

(assert (=> d!1979795 (=> (not res!2599930) (not e!3834585))))

(assert (=> d!1979795 (= res!2599930 (isDefined!12817 lt!2358749))))

(assert (=> d!1979795 (= lt!2358749 e!3834586)))

(declare-fun c!1145561 () Bool)

(assert (=> d!1979795 (= c!1145561 e!3834588)))

(declare-fun res!2599929 () Bool)

(assert (=> d!1979795 (=> (not res!2599929) (not e!3834588))))

(assert (=> d!1979795 (= res!2599929 (matchR!8406 (regOne!32958 r!7292) (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846))))))

(assert (=> d!1979795 (validRegex!7959 (regOne!32958 r!7292))))

(assert (=> d!1979795 (= (findConcatSeparation!2528 (regOne!32958 r!7292) (regTwo!32958 r!7292) (++!14296 Nil!64846 (Cons!64846 (h!71294 s!2326) Nil!64846)) (t!378542 s!2326) s!2326) lt!2358749)))

(declare-fun b!6308473 () Bool)

(declare-fun res!2599926 () Bool)

(assert (=> b!6308473 (=> (not res!2599926) (not e!3834585))))

(assert (=> b!6308473 (= res!2599926 (matchR!8406 (regOne!32958 r!7292) (_1!36505 (get!22423 lt!2358749))))))

(declare-fun b!6308474 () Bool)

(assert (=> b!6308474 (= e!3834585 (= (++!14296 (_1!36505 (get!22423 lt!2358749)) (_2!36505 (get!22423 lt!2358749))) s!2326))))

(assert (= (and d!1979795 res!2599929) b!6308472))

(assert (= (and d!1979795 c!1145561) b!6308471))

(assert (= (and d!1979795 (not c!1145561)) b!6308469))

(assert (= (and b!6308469 c!1145562) b!6308470))

(assert (= (and b!6308469 (not c!1145562)) b!6308468))

(assert (= (and d!1979795 res!2599930) b!6308473))

(assert (= (and b!6308473 res!2599926) b!6308466))

(assert (= (and b!6308466 res!2599928) b!6308474))

(assert (= (and d!1979795 (not res!2599927)) b!6308467))

(declare-fun m!7124790 () Bool)

(assert (=> b!6308466 m!7124790))

(declare-fun m!7124792 () Bool)

(assert (=> b!6308466 m!7124792))

(declare-fun m!7124794 () Bool)

(assert (=> b!6308472 m!7124794))

(declare-fun m!7124796 () Bool)

(assert (=> b!6308467 m!7124796))

(assert (=> b!6308468 m!7123838))

(declare-fun m!7124798 () Bool)

(assert (=> b!6308468 m!7124798))

(assert (=> b!6308468 m!7124798))

(declare-fun m!7124800 () Bool)

(assert (=> b!6308468 m!7124800))

(assert (=> b!6308468 m!7123838))

(declare-fun m!7124802 () Bool)

(assert (=> b!6308468 m!7124802))

(assert (=> b!6308468 m!7124798))

(declare-fun m!7124804 () Bool)

(assert (=> b!6308468 m!7124804))

(assert (=> b!6308473 m!7124790))

(declare-fun m!7124806 () Bool)

(assert (=> b!6308473 m!7124806))

(assert (=> b!6308474 m!7124790))

(declare-fun m!7124812 () Bool)

(assert (=> b!6308474 m!7124812))

(assert (=> d!1979795 m!7124796))

(assert (=> d!1979795 m!7123838))

(declare-fun m!7124814 () Bool)

(assert (=> d!1979795 m!7124814))

(assert (=> d!1979795 m!7123852))

(assert (=> b!6307392 d!1979795))

(declare-fun b!6308490 () Bool)

(declare-fun e!3834600 () Bool)

(declare-fun call!535397 () Bool)

(assert (=> b!6308490 (= e!3834600 call!535397)))

(declare-fun c!1145568 () Bool)

(declare-fun bm!535391 () Bool)

(declare-fun c!1145569 () Bool)

(declare-fun call!535398 () Bool)

(assert (=> bm!535391 (= call!535398 (validRegex!7959 (ite c!1145568 (reg!16552 lt!2358700) (ite c!1145569 (regTwo!32959 lt!2358700) (regTwo!32958 lt!2358700)))))))

(declare-fun b!6308491 () Bool)

(declare-fun e!3834604 () Bool)

(declare-fun e!3834605 () Bool)

(assert (=> b!6308491 (= e!3834604 e!3834605)))

(assert (=> b!6308491 (= c!1145569 ((_ is Union!16223) lt!2358700))))

(declare-fun b!6308492 () Bool)

(declare-fun e!3834602 () Bool)

(assert (=> b!6308492 (= e!3834602 call!535398)))

(declare-fun bm!535392 () Bool)

(assert (=> bm!535392 (= call!535397 call!535398)))

(declare-fun b!6308494 () Bool)

(declare-fun e!3834601 () Bool)

(assert (=> b!6308494 (= e!3834601 e!3834600)))

(declare-fun res!2599936 () Bool)

(assert (=> b!6308494 (=> (not res!2599936) (not e!3834600))))

(declare-fun call!535396 () Bool)

(assert (=> b!6308494 (= res!2599936 call!535396)))

(declare-fun b!6308495 () Bool)

(assert (=> b!6308495 (= e!3834604 e!3834602)))

(declare-fun res!2599937 () Bool)

(assert (=> b!6308495 (= res!2599937 (not (nullable!6216 (reg!16552 lt!2358700))))))

(assert (=> b!6308495 (=> (not res!2599937) (not e!3834602))))

(declare-fun b!6308496 () Bool)

(declare-fun res!2599938 () Bool)

(declare-fun e!3834606 () Bool)

(assert (=> b!6308496 (=> (not res!2599938) (not e!3834606))))

(assert (=> b!6308496 (= res!2599938 call!535396)))

(assert (=> b!6308496 (= e!3834605 e!3834606)))

(declare-fun bm!535393 () Bool)

(assert (=> bm!535393 (= call!535396 (validRegex!7959 (ite c!1145569 (regOne!32959 lt!2358700) (regOne!32958 lt!2358700))))))

(declare-fun b!6308493 () Bool)

(assert (=> b!6308493 (= e!3834606 call!535397)))

(declare-fun d!1979801 () Bool)

(declare-fun res!2599939 () Bool)

(declare-fun e!3834603 () Bool)

(assert (=> d!1979801 (=> res!2599939 e!3834603)))

(assert (=> d!1979801 (= res!2599939 ((_ is ElementMatch!16223) lt!2358700))))

(assert (=> d!1979801 (= (validRegex!7959 lt!2358700) e!3834603)))

(declare-fun b!6308497 () Bool)

(assert (=> b!6308497 (= e!3834603 e!3834604)))

(assert (=> b!6308497 (= c!1145568 ((_ is Star!16223) lt!2358700))))

(declare-fun b!6308498 () Bool)

(declare-fun res!2599940 () Bool)

(assert (=> b!6308498 (=> res!2599940 e!3834601)))

(assert (=> b!6308498 (= res!2599940 (not ((_ is Concat!25068) lt!2358700)))))

(assert (=> b!6308498 (= e!3834605 e!3834601)))

(assert (= (and d!1979801 (not res!2599939)) b!6308497))

(assert (= (and b!6308497 c!1145568) b!6308495))

(assert (= (and b!6308497 (not c!1145568)) b!6308491))

(assert (= (and b!6308495 res!2599937) b!6308492))

(assert (= (and b!6308491 c!1145569) b!6308496))

(assert (= (and b!6308491 (not c!1145569)) b!6308498))

(assert (= (and b!6308496 res!2599938) b!6308493))

(assert (= (and b!6308498 (not res!2599940)) b!6308494))

(assert (= (and b!6308494 res!2599936) b!6308490))

(assert (= (or b!6308493 b!6308490) bm!535392))

(assert (= (or b!6308496 b!6308494) bm!535393))

(assert (= (or b!6308492 bm!535392) bm!535391))

(declare-fun m!7124818 () Bool)

(assert (=> bm!535391 m!7124818))

(declare-fun m!7124820 () Bool)

(assert (=> b!6308495 m!7124820))

(declare-fun m!7124824 () Bool)

(assert (=> bm!535393 m!7124824))

(assert (=> d!1979395 d!1979801))

(declare-fun d!1979803 () Bool)

(declare-fun res!2599941 () Bool)

(declare-fun e!3834607 () Bool)

(assert (=> d!1979803 (=> res!2599941 e!3834607)))

(assert (=> d!1979803 (= res!2599941 ((_ is Nil!64844) (exprs!6107 (h!71293 zl!343))))))

(assert (=> d!1979803 (= (forall!15373 (exprs!6107 (h!71293 zl!343)) lambda!346485) e!3834607)))

(declare-fun b!6308499 () Bool)

(declare-fun e!3834608 () Bool)

(assert (=> b!6308499 (= e!3834607 e!3834608)))

(declare-fun res!2599942 () Bool)

(assert (=> b!6308499 (=> (not res!2599942) (not e!3834608))))

(assert (=> b!6308499 (= res!2599942 (dynLambda!25675 lambda!346485 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308500 () Bool)

(assert (=> b!6308500 (= e!3834608 (forall!15373 (t!378540 (exprs!6107 (h!71293 zl!343))) lambda!346485))))

(assert (= (and d!1979803 (not res!2599941)) b!6308499))

(assert (= (and b!6308499 res!2599942) b!6308500))

(declare-fun b_lambda!239961 () Bool)

(assert (=> (not b_lambda!239961) (not b!6308499)))

(declare-fun m!7124828 () Bool)

(assert (=> b!6308499 m!7124828))

(declare-fun m!7124830 () Bool)

(assert (=> b!6308500 m!7124830))

(assert (=> d!1979395 d!1979803))

(declare-fun d!1979807 () Bool)

(assert (=> d!1979807 true))

(declare-fun setRes!42938 () Bool)

(assert (=> d!1979807 setRes!42938))

(declare-fun condSetEmpty!42938 () Bool)

(declare-fun res!2599944 () (InoxSet Context!11214))

(assert (=> d!1979807 (= condSetEmpty!42938 (= res!2599944 ((as const (Array Context!11214 Bool)) false)))))

(assert (=> d!1979807 (= (choose!46831 z!1189 lambda!346433) res!2599944)))

(declare-fun setIsEmpty!42938 () Bool)

(assert (=> setIsEmpty!42938 setRes!42938))

(declare-fun tp!1757198 () Bool)

(declare-fun setNonEmpty!42938 () Bool)

(declare-fun e!3834610 () Bool)

(declare-fun setElem!42938 () Context!11214)

(assert (=> setNonEmpty!42938 (= setRes!42938 (and tp!1757198 (inv!83804 setElem!42938) e!3834610))))

(declare-fun setRest!42938 () (InoxSet Context!11214))

(assert (=> setNonEmpty!42938 (= res!2599944 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) setElem!42938 true) setRest!42938))))

(declare-fun b!6308505 () Bool)

(declare-fun tp!1757199 () Bool)

(assert (=> b!6308505 (= e!3834610 tp!1757199)))

(assert (= (and d!1979807 condSetEmpty!42938) setIsEmpty!42938))

(assert (= (and d!1979807 (not condSetEmpty!42938)) setNonEmpty!42938))

(assert (= setNonEmpty!42938 b!6308505))

(declare-fun m!7124832 () Bool)

(assert (=> setNonEmpty!42938 m!7124832))

(assert (=> d!1979323 d!1979807))

(declare-fun d!1979809 () Bool)

(assert (=> d!1979809 (= (isEmpty!36910 (exprs!6107 (h!71293 zl!343))) ((_ is Nil!64844) (exprs!6107 (h!71293 zl!343))))))

(assert (=> b!6307533 d!1979809))

(declare-fun c!1145570 () Bool)

(declare-fun call!535401 () (InoxSet Context!11214))

(declare-fun bm!535394 () Bool)

(declare-fun call!535403 () List!64968)

(assert (=> bm!535394 (= call!535401 (derivationStepZipperDown!1471 (ite c!1145570 (regOne!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))) (ite c!1145570 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (Context!11215 call!535403)) (h!71294 s!2326)))))

(declare-fun call!535402 () List!64968)

(declare-fun call!535400 () (InoxSet Context!11214))

(declare-fun c!1145571 () Bool)

(declare-fun c!1145572 () Bool)

(declare-fun bm!535395 () Bool)

(assert (=> bm!535395 (= call!535400 (derivationStepZipperDown!1471 (ite c!1145570 (regTwo!32959 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145571 (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (ite c!1145572 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (reg!16552 (h!71292 (exprs!6107 (h!71293 zl!343))))))) (ite (or c!1145570 c!1145571) (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (Context!11215 call!535402)) (h!71294 s!2326)))))

(declare-fun b!6308514 () Bool)

(declare-fun e!3834614 () (InoxSet Context!11214))

(assert (=> b!6308514 (= e!3834614 (store ((as const (Array Context!11214 Bool)) false) (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) true))))

(declare-fun b!6308515 () Bool)

(declare-fun c!1145574 () Bool)

(assert (=> b!6308515 (= c!1145574 ((_ is Star!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun e!3834615 () (InoxSet Context!11214))

(declare-fun e!3834616 () (InoxSet Context!11214))

(assert (=> b!6308515 (= e!3834615 e!3834616)))

(declare-fun b!6308516 () Bool)

(assert (=> b!6308516 (= e!3834616 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308517 () Bool)

(declare-fun e!3834618 () (InoxSet Context!11214))

(assert (=> b!6308517 (= e!3834614 e!3834618)))

(assert (=> b!6308517 (= c!1145570 ((_ is Union!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308518 () Bool)

(declare-fun e!3834613 () (InoxSet Context!11214))

(assert (=> b!6308518 (= e!3834613 e!3834615)))

(assert (=> b!6308518 (= c!1145572 ((_ is Concat!25068) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun b!6308519 () Bool)

(declare-fun e!3834617 () Bool)

(assert (=> b!6308519 (= c!1145571 e!3834617)))

(declare-fun res!2599945 () Bool)

(assert (=> b!6308519 (=> (not res!2599945) (not e!3834617))))

(assert (=> b!6308519 (= res!2599945 ((_ is Concat!25068) (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> b!6308519 (= e!3834618 e!3834613)))

(declare-fun bm!535396 () Bool)

(assert (=> bm!535396 (= call!535403 ($colon$colon!2088 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343))))) (ite (or c!1145571 c!1145572) (regTwo!32958 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71292 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun b!6308520 () Bool)

(declare-fun call!535399 () (InoxSet Context!11214))

(assert (=> b!6308520 (= e!3834613 ((_ map or) call!535401 call!535399))))

(declare-fun b!6308521 () Bool)

(declare-fun call!535404 () (InoxSet Context!11214))

(assert (=> b!6308521 (= e!3834616 call!535404)))

(declare-fun b!6308522 () Bool)

(assert (=> b!6308522 (= e!3834615 call!535404)))

(declare-fun b!6308523 () Bool)

(assert (=> b!6308523 (= e!3834618 ((_ map or) call!535401 call!535400))))

(declare-fun b!6308524 () Bool)

(assert (=> b!6308524 (= e!3834617 (nullable!6216 (regOne!32958 (h!71292 (exprs!6107 (h!71293 zl!343))))))))

(declare-fun bm!535398 () Bool)

(assert (=> bm!535398 (= call!535404 call!535399)))

(declare-fun bm!535399 () Bool)

(assert (=> bm!535399 (= call!535402 call!535403)))

(declare-fun bm!535397 () Bool)

(assert (=> bm!535397 (= call!535399 call!535400)))

(declare-fun d!1979811 () Bool)

(declare-fun c!1145573 () Bool)

(assert (=> d!1979811 (= c!1145573 (and ((_ is ElementMatch!16223) (h!71292 (exprs!6107 (h!71293 zl!343)))) (= (c!1145130 (h!71292 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326))))))

(assert (=> d!1979811 (= (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (h!71293 zl!343))) (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326)) e!3834614)))

(assert (= (and d!1979811 c!1145573) b!6308514))

(assert (= (and d!1979811 (not c!1145573)) b!6308517))

(assert (= (and b!6308517 c!1145570) b!6308523))

(assert (= (and b!6308517 (not c!1145570)) b!6308519))

(assert (= (and b!6308519 res!2599945) b!6308524))

(assert (= (and b!6308519 c!1145571) b!6308520))

(assert (= (and b!6308519 (not c!1145571)) b!6308518))

(assert (= (and b!6308518 c!1145572) b!6308522))

(assert (= (and b!6308518 (not c!1145572)) b!6308515))

(assert (= (and b!6308515 c!1145574) b!6308521))

(assert (= (and b!6308515 (not c!1145574)) b!6308516))

(assert (= (or b!6308522 b!6308521) bm!535399))

(assert (= (or b!6308522 b!6308521) bm!535398))

(assert (= (or b!6308520 bm!535399) bm!535396))

(assert (= (or b!6308520 bm!535398) bm!535397))

(assert (= (or b!6308523 bm!535397) bm!535395))

(assert (= (or b!6308523 b!6308520) bm!535394))

(declare-fun m!7124836 () Bool)

(assert (=> bm!535394 m!7124836))

(declare-fun m!7124838 () Bool)

(assert (=> bm!535396 m!7124838))

(assert (=> b!6308524 m!7123746))

(declare-fun m!7124840 () Bool)

(assert (=> bm!535395 m!7124840))

(declare-fun m!7124842 () Bool)

(assert (=> b!6308514 m!7124842))

(assert (=> bm!535146 d!1979811))

(declare-fun d!1979813 () Bool)

(declare-fun c!1145575 () Bool)

(assert (=> d!1979813 (= c!1145575 (isEmpty!36912 (tail!12031 (t!378542 s!2326))))))

(declare-fun e!3834627 () Bool)

(assert (=> d!1979813 (= (matchZipper!2235 (derivationStepZipper!2189 lt!2358612 (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))) e!3834627)))

(declare-fun b!6308548 () Bool)

(assert (=> b!6308548 (= e!3834627 (nullableZipper!1993 (derivationStepZipper!2189 lt!2358612 (head!12946 (t!378542 s!2326)))))))

(declare-fun b!6308549 () Bool)

(assert (=> b!6308549 (= e!3834627 (matchZipper!2235 (derivationStepZipper!2189 (derivationStepZipper!2189 lt!2358612 (head!12946 (t!378542 s!2326))) (head!12946 (tail!12031 (t!378542 s!2326)))) (tail!12031 (tail!12031 (t!378542 s!2326)))))))

(assert (= (and d!1979813 c!1145575) b!6308548))

(assert (= (and d!1979813 (not c!1145575)) b!6308549))

(assert (=> d!1979813 m!7123698))

(assert (=> d!1979813 m!7124040))

(assert (=> b!6308548 m!7123764))

(declare-fun m!7124844 () Bool)

(assert (=> b!6308548 m!7124844))

(assert (=> b!6308549 m!7123698))

(assert (=> b!6308549 m!7124044))

(assert (=> b!6308549 m!7123764))

(assert (=> b!6308549 m!7124044))

(declare-fun m!7124846 () Bool)

(assert (=> b!6308549 m!7124846))

(assert (=> b!6308549 m!7123698))

(assert (=> b!6308549 m!7124048))

(assert (=> b!6308549 m!7124846))

(assert (=> b!6308549 m!7124048))

(declare-fun m!7124848 () Bool)

(assert (=> b!6308549 m!7124848))

(assert (=> b!6307274 d!1979813))

(declare-fun bs!1577386 () Bool)

(declare-fun d!1979815 () Bool)

(assert (= bs!1577386 (and d!1979815 b!6306937)))

(declare-fun lambda!346548 () Int)

(assert (=> bs!1577386 (= (= (head!12946 (t!378542 s!2326)) (h!71294 s!2326)) (= lambda!346548 lambda!346433))))

(declare-fun bs!1577387 () Bool)

(assert (= bs!1577387 (and d!1979815 d!1979451)))

(assert (=> bs!1577387 (= lambda!346548 lambda!346500)))

(declare-fun bs!1577388 () Bool)

(assert (= bs!1577388 (and d!1979815 d!1979485)))

(assert (=> bs!1577388 (= lambda!346548 lambda!346501)))

(assert (=> d!1979815 true))

(assert (=> d!1979815 (= (derivationStepZipper!2189 lt!2358612 (head!12946 (t!378542 s!2326))) (flatMap!1728 lt!2358612 lambda!346548))))

(declare-fun bs!1577389 () Bool)

(assert (= bs!1577389 d!1979815))

(declare-fun m!7124852 () Bool)

(assert (=> bs!1577389 m!7124852))

(assert (=> b!6307274 d!1979815))

(assert (=> b!6307274 d!1979453))

(assert (=> b!6307274 d!1979455))

(declare-fun d!1979817 () Bool)

(declare-fun c!1145576 () Bool)

(assert (=> d!1979817 (= c!1145576 (isEmpty!36912 (tail!12031 (t!378542 s!2326))))))

(declare-fun e!3834637 () Bool)

(assert (=> d!1979817 (= (matchZipper!2235 (derivationStepZipper!2189 ((_ map or) lt!2358612 lt!2358618) (head!12946 (t!378542 s!2326))) (tail!12031 (t!378542 s!2326))) e!3834637)))

(declare-fun b!6308574 () Bool)

(assert (=> b!6308574 (= e!3834637 (nullableZipper!1993 (derivationStepZipper!2189 ((_ map or) lt!2358612 lt!2358618) (head!12946 (t!378542 s!2326)))))))

(declare-fun b!6308575 () Bool)

(assert (=> b!6308575 (= e!3834637 (matchZipper!2235 (derivationStepZipper!2189 (derivationStepZipper!2189 ((_ map or) lt!2358612 lt!2358618) (head!12946 (t!378542 s!2326))) (head!12946 (tail!12031 (t!378542 s!2326)))) (tail!12031 (tail!12031 (t!378542 s!2326)))))))

(assert (= (and d!1979817 c!1145576) b!6308574))

(assert (= (and d!1979817 (not c!1145576)) b!6308575))

(assert (=> d!1979817 m!7123698))

(assert (=> d!1979817 m!7124040))

(assert (=> b!6308574 m!7123910))

(declare-fun m!7124854 () Bool)

(assert (=> b!6308574 m!7124854))

(assert (=> b!6308575 m!7123698))

(assert (=> b!6308575 m!7124044))

(assert (=> b!6308575 m!7123910))

(assert (=> b!6308575 m!7124044))

(declare-fun m!7124856 () Bool)

(assert (=> b!6308575 m!7124856))

(assert (=> b!6308575 m!7123698))

(assert (=> b!6308575 m!7124048))

(assert (=> b!6308575 m!7124856))

(assert (=> b!6308575 m!7124048))

(declare-fun m!7124858 () Bool)

(assert (=> b!6308575 m!7124858))

(assert (=> b!6307505 d!1979817))

(declare-fun bs!1577390 () Bool)

(declare-fun d!1979819 () Bool)

(assert (= bs!1577390 (and d!1979819 b!6306937)))

(declare-fun lambda!346549 () Int)

(assert (=> bs!1577390 (= (= (head!12946 (t!378542 s!2326)) (h!71294 s!2326)) (= lambda!346549 lambda!346433))))

(declare-fun bs!1577391 () Bool)

(assert (= bs!1577391 (and d!1979819 d!1979451)))

(assert (=> bs!1577391 (= lambda!346549 lambda!346500)))

(declare-fun bs!1577392 () Bool)

(assert (= bs!1577392 (and d!1979819 d!1979485)))

(assert (=> bs!1577392 (= lambda!346549 lambda!346501)))

(declare-fun bs!1577393 () Bool)

(assert (= bs!1577393 (and d!1979819 d!1979815)))

(assert (=> bs!1577393 (= lambda!346549 lambda!346548)))

(assert (=> d!1979819 true))

(assert (=> d!1979819 (= (derivationStepZipper!2189 ((_ map or) lt!2358612 lt!2358618) (head!12946 (t!378542 s!2326))) (flatMap!1728 ((_ map or) lt!2358612 lt!2358618) lambda!346549))))

(declare-fun bs!1577394 () Bool)

(assert (= bs!1577394 d!1979819))

(declare-fun m!7124860 () Bool)

(assert (=> bs!1577394 m!7124860))

(assert (=> b!6307505 d!1979819))

(assert (=> b!6307505 d!1979453))

(assert (=> b!6307505 d!1979455))

(declare-fun bs!1577395 () Bool)

(declare-fun b!6308601 () Bool)

(assert (= bs!1577395 (and b!6308601 d!1979547)))

(declare-fun lambda!346550 () Int)

(assert (=> bs!1577395 (not (= lambda!346550 lambda!346521))))

(declare-fun bs!1577396 () Bool)

(assert (= bs!1577396 (and b!6308601 b!6306949)))

(assert (=> bs!1577396 (not (= lambda!346550 lambda!346432))))

(declare-fun bs!1577397 () Bool)

(assert (= bs!1577397 (and b!6308601 b!6307568)))

(assert (=> bs!1577397 (= (and (= (reg!16552 (regTwo!32959 r!7292)) (reg!16552 r!7292)) (= (regTwo!32959 r!7292) r!7292)) (= lambda!346550 lambda!346490))))

(assert (=> bs!1577396 (not (= lambda!346550 lambda!346431))))

(declare-fun bs!1577398 () Bool)

(assert (= bs!1577398 (and b!6308601 b!6308173)))

(assert (=> bs!1577398 (not (= lambda!346550 lambda!346533))))

(declare-fun bs!1577399 () Bool)

(assert (= bs!1577399 (and b!6308601 b!6308171)))

(assert (=> bs!1577399 (= (and (= (reg!16552 (regTwo!32959 r!7292)) (reg!16552 (regOne!32959 r!7292))) (= (regTwo!32959 r!7292) (regOne!32959 r!7292))) (= lambda!346550 lambda!346532))))

(assert (=> bs!1577395 (not (= lambda!346550 lambda!346519))))

(declare-fun bs!1577400 () Bool)

(assert (= bs!1577400 (and b!6308601 d!1979381)))

(assert (=> bs!1577400 (not (= lambda!346550 lambda!346476))))

(assert (=> bs!1577400 (not (= lambda!346550 lambda!346475))))

(declare-fun bs!1577401 () Bool)

(assert (= bs!1577401 (and b!6308601 d!1979373)))

(assert (=> bs!1577401 (not (= lambda!346550 lambda!346470))))

(declare-fun bs!1577403 () Bool)

(assert (= bs!1577403 (and b!6308601 b!6307570)))

(assert (=> bs!1577403 (not (= lambda!346550 lambda!346491))))

(declare-fun bs!1577405 () Bool)

(assert (= bs!1577405 (and b!6308601 d!1979713)))

(assert (=> bs!1577405 (not (= lambda!346550 lambda!346543))))

(assert (=> b!6308601 true))

(assert (=> b!6308601 true))

(declare-fun bs!1577410 () Bool)

(declare-fun b!6308603 () Bool)

(assert (= bs!1577410 (and b!6308603 d!1979547)))

(declare-fun lambda!346551 () Int)

(assert (=> bs!1577410 (= (and (= (regOne!32958 (regTwo!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regTwo!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346551 lambda!346521))))

(declare-fun bs!1577411 () Bool)

(assert (= bs!1577411 (and b!6308603 b!6306949)))

(assert (=> bs!1577411 (= (and (= (regOne!32958 (regTwo!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regTwo!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346551 lambda!346432))))

(declare-fun bs!1577412 () Bool)

(assert (= bs!1577412 (and b!6308603 b!6308601)))

(assert (=> bs!1577412 (not (= lambda!346551 lambda!346550))))

(declare-fun bs!1577413 () Bool)

(assert (= bs!1577413 (and b!6308603 b!6307568)))

(assert (=> bs!1577413 (not (= lambda!346551 lambda!346490))))

(assert (=> bs!1577411 (not (= lambda!346551 lambda!346431))))

(declare-fun bs!1577414 () Bool)

(assert (= bs!1577414 (and b!6308603 b!6308173)))

(assert (=> bs!1577414 (= (and (= (regOne!32958 (regTwo!32959 r!7292)) (regOne!32958 (regOne!32959 r!7292))) (= (regTwo!32958 (regTwo!32959 r!7292)) (regTwo!32958 (regOne!32959 r!7292)))) (= lambda!346551 lambda!346533))))

(declare-fun bs!1577415 () Bool)

(assert (= bs!1577415 (and b!6308603 b!6308171)))

(assert (=> bs!1577415 (not (= lambda!346551 lambda!346532))))

(assert (=> bs!1577410 (not (= lambda!346551 lambda!346519))))

(declare-fun bs!1577416 () Bool)

(assert (= bs!1577416 (and b!6308603 d!1979381)))

(assert (=> bs!1577416 (= (and (= (regOne!32958 (regTwo!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regTwo!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346551 lambda!346476))))

(assert (=> bs!1577416 (not (= lambda!346551 lambda!346475))))

(declare-fun bs!1577417 () Bool)

(assert (= bs!1577417 (and b!6308603 d!1979373)))

(assert (=> bs!1577417 (not (= lambda!346551 lambda!346470))))

(declare-fun bs!1577418 () Bool)

(assert (= bs!1577418 (and b!6308603 b!6307570)))

(assert (=> bs!1577418 (= (and (= (regOne!32958 (regTwo!32959 r!7292)) (regOne!32958 r!7292)) (= (regTwo!32958 (regTwo!32959 r!7292)) (regTwo!32958 r!7292))) (= lambda!346551 lambda!346491))))

(declare-fun bs!1577419 () Bool)

(assert (= bs!1577419 (and b!6308603 d!1979713)))

(assert (=> bs!1577419 (not (= lambda!346551 lambda!346543))))

(assert (=> b!6308603 true))

(assert (=> b!6308603 true))

(declare-fun e!3834651 () Bool)

(declare-fun call!535405 () Bool)

(assert (=> b!6308601 (= e!3834651 call!535405)))

(declare-fun b!6308602 () Bool)

(declare-fun c!1145577 () Bool)

(assert (=> b!6308602 (= c!1145577 ((_ is ElementMatch!16223) (regTwo!32959 r!7292)))))

(declare-fun e!3834647 () Bool)

(declare-fun e!3834648 () Bool)

(assert (=> b!6308602 (= e!3834647 e!3834648)))

(declare-fun e!3834650 () Bool)

(assert (=> b!6308603 (= e!3834650 call!535405)))

(declare-fun b!6308604 () Bool)

(assert (=> b!6308604 (= e!3834648 (= s!2326 (Cons!64846 (c!1145130 (regTwo!32959 r!7292)) Nil!64846)))))

(declare-fun b!6308605 () Bool)

(declare-fun e!3834646 () Bool)

(declare-fun call!535406 () Bool)

(assert (=> b!6308605 (= e!3834646 call!535406)))

(declare-fun b!6308606 () Bool)

(declare-fun e!3834649 () Bool)

(assert (=> b!6308606 (= e!3834649 (matchRSpec!3324 (regTwo!32959 (regTwo!32959 r!7292)) s!2326))))

(declare-fun b!6308607 () Bool)

(declare-fun c!1145578 () Bool)

(assert (=> b!6308607 (= c!1145578 ((_ is Union!16223) (regTwo!32959 r!7292)))))

(declare-fun e!3834645 () Bool)

(assert (=> b!6308607 (= e!3834648 e!3834645)))

(declare-fun b!6308608 () Bool)

(declare-fun res!2599947 () Bool)

(assert (=> b!6308608 (=> res!2599947 e!3834651)))

(assert (=> b!6308608 (= res!2599947 call!535406)))

(assert (=> b!6308608 (= e!3834650 e!3834651)))

(declare-fun b!6308609 () Bool)

(assert (=> b!6308609 (= e!3834646 e!3834647)))

(declare-fun res!2599946 () Bool)

(assert (=> b!6308609 (= res!2599946 (not ((_ is EmptyLang!16223) (regTwo!32959 r!7292))))))

(assert (=> b!6308609 (=> (not res!2599946) (not e!3834647))))

(declare-fun d!1979821 () Bool)

(declare-fun c!1145579 () Bool)

(assert (=> d!1979821 (= c!1145579 ((_ is EmptyExpr!16223) (regTwo!32959 r!7292)))))

(assert (=> d!1979821 (= (matchRSpec!3324 (regTwo!32959 r!7292) s!2326) e!3834646)))

(declare-fun b!6308610 () Bool)

(assert (=> b!6308610 (= e!3834645 e!3834650)))

(declare-fun c!1145580 () Bool)

(assert (=> b!6308610 (= c!1145580 ((_ is Star!16223) (regTwo!32959 r!7292)))))

(declare-fun b!6308611 () Bool)

(assert (=> b!6308611 (= e!3834645 e!3834649)))

(declare-fun res!2599948 () Bool)

(assert (=> b!6308611 (= res!2599948 (matchRSpec!3324 (regOne!32959 (regTwo!32959 r!7292)) s!2326))))

(assert (=> b!6308611 (=> res!2599948 e!3834649)))

(declare-fun bm!535400 () Bool)

(assert (=> bm!535400 (= call!535406 (isEmpty!36912 s!2326))))

(declare-fun bm!535401 () Bool)

(assert (=> bm!535401 (= call!535405 (Exists!3293 (ite c!1145580 lambda!346550 lambda!346551)))))

(assert (= (and d!1979821 c!1145579) b!6308605))

(assert (= (and d!1979821 (not c!1145579)) b!6308609))

(assert (= (and b!6308609 res!2599946) b!6308602))

(assert (= (and b!6308602 c!1145577) b!6308604))

(assert (= (and b!6308602 (not c!1145577)) b!6308607))

(assert (= (and b!6308607 c!1145578) b!6308611))

(assert (= (and b!6308607 (not c!1145578)) b!6308610))

(assert (= (and b!6308611 (not res!2599948)) b!6308606))

(assert (= (and b!6308610 c!1145580) b!6308608))

(assert (= (and b!6308610 (not c!1145580)) b!6308603))

(assert (= (and b!6308608 (not res!2599947)) b!6308601))

(assert (= (or b!6308601 b!6308603) bm!535401))

(assert (= (or b!6308605 b!6308608) bm!535400))

(declare-fun m!7124872 () Bool)

(assert (=> b!6308606 m!7124872))

(declare-fun m!7124874 () Bool)

(assert (=> b!6308611 m!7124874))

(assert (=> bm!535400 m!7123936))

(declare-fun m!7124876 () Bool)

(assert (=> bm!535401 m!7124876))

(assert (=> b!6307573 d!1979821))

(declare-fun bm!535402 () Bool)

(declare-fun call!535407 () (InoxSet Context!11214))

(assert (=> bm!535402 (= call!535407 (derivationStepZipperDown!1471 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))))) (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343))))))) (h!71294 s!2326)))))

(declare-fun d!1979835 () Bool)

(declare-fun c!1145582 () Bool)

(declare-fun e!3834661 () Bool)

(assert (=> d!1979835 (= c!1145582 e!3834661)))

(declare-fun res!2599949 () Bool)

(assert (=> d!1979835 (=> (not res!2599949) (not e!3834661))))

(assert (=> d!1979835 (= res!2599949 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun e!3834662 () (InoxSet Context!11214))

(assert (=> d!1979835 (= (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))) (h!71294 s!2326)) e!3834662)))

(declare-fun b!6308644 () Bool)

(declare-fun e!3834660 () (InoxSet Context!11214))

(assert (=> b!6308644 (= e!3834660 call!535407)))

(declare-fun b!6308645 () Bool)

(assert (=> b!6308645 (= e!3834660 ((as const (Array Context!11214 Bool)) false))))

(declare-fun b!6308646 () Bool)

(assert (=> b!6308646 (= e!3834662 e!3834660)))

(declare-fun c!1145581 () Bool)

(assert (=> b!6308646 (= c!1145581 ((_ is Cons!64844) (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343)))))))))

(declare-fun b!6308647 () Bool)

(assert (=> b!6308647 (= e!3834662 ((_ map or) call!535407 (derivationStepZipperUp!1397 (Context!11215 (t!378540 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343))))))) (h!71294 s!2326))))))

(declare-fun b!6308648 () Bool)

(assert (=> b!6308648 (= e!3834661 (nullable!6216 (h!71292 (exprs!6107 (Context!11215 (t!378540 (exprs!6107 (h!71293 zl!343))))))))))

(assert (= (and d!1979835 res!2599949) b!6308648))

(assert (= (and d!1979835 c!1145582) b!6308647))

(assert (= (and d!1979835 (not c!1145582)) b!6308646))

(assert (= (and b!6308646 c!1145581) b!6308644))

(assert (= (and b!6308646 (not c!1145581)) b!6308645))

(assert (= (or b!6308647 b!6308644) bm!535402))

(declare-fun m!7124878 () Bool)

(assert (=> bm!535402 m!7124878))

(declare-fun m!7124880 () Bool)

(assert (=> b!6308647 m!7124880))

(declare-fun m!7124882 () Bool)

(assert (=> b!6308648 m!7124882))

(assert (=> b!6307170 d!1979835))

(assert (=> b!6307615 d!1979707))

(assert (=> b!6307615 d!1979699))

(declare-fun b!6308649 () Bool)

(declare-fun e!3834663 () Bool)

(declare-fun call!535409 () Bool)

(assert (=> b!6308649 (= e!3834663 call!535409)))

(declare-fun c!1145583 () Bool)

(declare-fun bm!535403 () Bool)

(declare-fun c!1145584 () Bool)

(declare-fun call!535410 () Bool)

(assert (=> bm!535403 (= call!535410 (validRegex!7959 (ite c!1145583 (reg!16552 lt!2358691) (ite c!1145584 (regTwo!32959 lt!2358691) (regTwo!32958 lt!2358691)))))))

(declare-fun b!6308650 () Bool)

(declare-fun e!3834667 () Bool)

(declare-fun e!3834668 () Bool)

(assert (=> b!6308650 (= e!3834667 e!3834668)))

(assert (=> b!6308650 (= c!1145584 ((_ is Union!16223) lt!2358691))))

(declare-fun b!6308651 () Bool)

(declare-fun e!3834665 () Bool)

(assert (=> b!6308651 (= e!3834665 call!535410)))

(declare-fun bm!535404 () Bool)

(assert (=> bm!535404 (= call!535409 call!535410)))

(declare-fun b!6308653 () Bool)

(declare-fun e!3834664 () Bool)

(assert (=> b!6308653 (= e!3834664 e!3834663)))

(declare-fun res!2599950 () Bool)

(assert (=> b!6308653 (=> (not res!2599950) (not e!3834663))))

(declare-fun call!535408 () Bool)

(assert (=> b!6308653 (= res!2599950 call!535408)))

(declare-fun b!6308654 () Bool)

(assert (=> b!6308654 (= e!3834667 e!3834665)))

(declare-fun res!2599951 () Bool)

(assert (=> b!6308654 (= res!2599951 (not (nullable!6216 (reg!16552 lt!2358691))))))

(assert (=> b!6308654 (=> (not res!2599951) (not e!3834665))))

(declare-fun b!6308655 () Bool)

(declare-fun res!2599952 () Bool)

(declare-fun e!3834669 () Bool)

(assert (=> b!6308655 (=> (not res!2599952) (not e!3834669))))

(assert (=> b!6308655 (= res!2599952 call!535408)))

(assert (=> b!6308655 (= e!3834668 e!3834669)))

(declare-fun bm!535405 () Bool)

(assert (=> bm!535405 (= call!535408 (validRegex!7959 (ite c!1145584 (regOne!32959 lt!2358691) (regOne!32958 lt!2358691))))))

(declare-fun b!6308652 () Bool)

(assert (=> b!6308652 (= e!3834669 call!535409)))

(declare-fun d!1979837 () Bool)

(declare-fun res!2599953 () Bool)

(declare-fun e!3834666 () Bool)

(assert (=> d!1979837 (=> res!2599953 e!3834666)))

(assert (=> d!1979837 (= res!2599953 ((_ is ElementMatch!16223) lt!2358691))))

(assert (=> d!1979837 (= (validRegex!7959 lt!2358691) e!3834666)))

(declare-fun b!6308656 () Bool)

(assert (=> b!6308656 (= e!3834666 e!3834667)))

(assert (=> b!6308656 (= c!1145583 ((_ is Star!16223) lt!2358691))))

(declare-fun b!6308657 () Bool)

(declare-fun res!2599954 () Bool)

(assert (=> b!6308657 (=> res!2599954 e!3834664)))

(assert (=> b!6308657 (= res!2599954 (not ((_ is Concat!25068) lt!2358691)))))

(assert (=> b!6308657 (= e!3834668 e!3834664)))

(assert (= (and d!1979837 (not res!2599953)) b!6308656))

(assert (= (and b!6308656 c!1145583) b!6308654))

(assert (= (and b!6308656 (not c!1145583)) b!6308650))

(assert (= (and b!6308654 res!2599951) b!6308651))

(assert (= (and b!6308650 c!1145584) b!6308655))

(assert (= (and b!6308650 (not c!1145584)) b!6308657))

(assert (= (and b!6308655 res!2599952) b!6308652))

(assert (= (and b!6308657 (not res!2599954)) b!6308653))

(assert (= (and b!6308653 res!2599950) b!6308649))

(assert (= (or b!6308652 b!6308649) bm!535404))

(assert (= (or b!6308655 b!6308653) bm!535405))

(assert (= (or b!6308651 bm!535404) bm!535403))

(declare-fun m!7124884 () Bool)

(assert (=> bm!535403 m!7124884))

(declare-fun m!7124886 () Bool)

(assert (=> b!6308654 m!7124886))

(declare-fun m!7124888 () Bool)

(assert (=> bm!535405 m!7124888))

(assert (=> d!1979385 d!1979837))

(declare-fun d!1979839 () Bool)

(declare-fun res!2599955 () Bool)

(declare-fun e!3834670 () Bool)

(assert (=> d!1979839 (=> res!2599955 e!3834670)))

(assert (=> d!1979839 (= res!2599955 ((_ is Nil!64844) (unfocusZipperList!1644 zl!343)))))

(assert (=> d!1979839 (= (forall!15373 (unfocusZipperList!1644 zl!343) lambda!346479) e!3834670)))

(declare-fun b!6308658 () Bool)

(declare-fun e!3834671 () Bool)

(assert (=> b!6308658 (= e!3834670 e!3834671)))

(declare-fun res!2599956 () Bool)

(assert (=> b!6308658 (=> (not res!2599956) (not e!3834671))))

(assert (=> b!6308658 (= res!2599956 (dynLambda!25675 lambda!346479 (h!71292 (unfocusZipperList!1644 zl!343))))))

(declare-fun b!6308659 () Bool)

(assert (=> b!6308659 (= e!3834671 (forall!15373 (t!378540 (unfocusZipperList!1644 zl!343)) lambda!346479))))

(assert (= (and d!1979839 (not res!2599955)) b!6308658))

(assert (= (and b!6308658 res!2599956) b!6308659))

(declare-fun b_lambda!239979 () Bool)

(assert (=> (not b_lambda!239979) (not b!6308658)))

(declare-fun m!7124890 () Bool)

(assert (=> b!6308658 m!7124890))

(declare-fun m!7124892 () Bool)

(assert (=> b!6308659 m!7124892))

(assert (=> d!1979385 d!1979839))

(declare-fun e!3834672 () Bool)

(assert (=> b!6307656 (= tp!1757134 e!3834672)))

(declare-fun b!6308660 () Bool)

(assert (=> b!6308660 (= e!3834672 tp_is_empty!41699)))

(declare-fun b!6308661 () Bool)

(declare-fun tp!1757347 () Bool)

(declare-fun tp!1757344 () Bool)

(assert (=> b!6308661 (= e!3834672 (and tp!1757347 tp!1757344))))

(declare-fun b!6308662 () Bool)

(declare-fun tp!1757343 () Bool)

(assert (=> b!6308662 (= e!3834672 tp!1757343)))

(declare-fun b!6308663 () Bool)

(declare-fun tp!1757345 () Bool)

(declare-fun tp!1757346 () Bool)

(assert (=> b!6308663 (= e!3834672 (and tp!1757345 tp!1757346))))

(assert (= (and b!6307656 ((_ is ElementMatch!16223) (reg!16552 (regTwo!32958 r!7292)))) b!6308660))

(assert (= (and b!6307656 ((_ is Concat!25068) (reg!16552 (regTwo!32958 r!7292)))) b!6308661))

(assert (= (and b!6307656 ((_ is Star!16223) (reg!16552 (regTwo!32958 r!7292)))) b!6308662))

(assert (= (and b!6307656 ((_ is Union!16223) (reg!16552 (regTwo!32958 r!7292)))) b!6308663))

(declare-fun e!3834673 () Bool)

(assert (=> b!6307647 (= tp!1757128 e!3834673)))

(declare-fun b!6308664 () Bool)

(assert (=> b!6308664 (= e!3834673 tp_is_empty!41699)))

(declare-fun b!6308665 () Bool)

(declare-fun tp!1757352 () Bool)

(declare-fun tp!1757349 () Bool)

(assert (=> b!6308665 (= e!3834673 (and tp!1757352 tp!1757349))))

(declare-fun b!6308666 () Bool)

(declare-fun tp!1757348 () Bool)

(assert (=> b!6308666 (= e!3834673 tp!1757348)))

(declare-fun b!6308667 () Bool)

(declare-fun tp!1757350 () Bool)

(declare-fun tp!1757351 () Bool)

(assert (=> b!6308667 (= e!3834673 (and tp!1757350 tp!1757351))))

(assert (= (and b!6307647 ((_ is ElementMatch!16223) (regOne!32958 (regTwo!32959 r!7292)))) b!6308664))

(assert (= (and b!6307647 ((_ is Concat!25068) (regOne!32958 (regTwo!32959 r!7292)))) b!6308665))

(assert (= (and b!6307647 ((_ is Star!16223) (regOne!32958 (regTwo!32959 r!7292)))) b!6308666))

(assert (= (and b!6307647 ((_ is Union!16223) (regOne!32958 (regTwo!32959 r!7292)))) b!6308667))

(declare-fun e!3834674 () Bool)

(assert (=> b!6307647 (= tp!1757125 e!3834674)))

(declare-fun b!6308668 () Bool)

(assert (=> b!6308668 (= e!3834674 tp_is_empty!41699)))

(declare-fun b!6308669 () Bool)

(declare-fun tp!1757357 () Bool)

(declare-fun tp!1757354 () Bool)

(assert (=> b!6308669 (= e!3834674 (and tp!1757357 tp!1757354))))

(declare-fun b!6308670 () Bool)

(declare-fun tp!1757353 () Bool)

(assert (=> b!6308670 (= e!3834674 tp!1757353)))

(declare-fun b!6308671 () Bool)

(declare-fun tp!1757355 () Bool)

(declare-fun tp!1757356 () Bool)

(assert (=> b!6308671 (= e!3834674 (and tp!1757355 tp!1757356))))

(assert (= (and b!6307647 ((_ is ElementMatch!16223) (regTwo!32958 (regTwo!32959 r!7292)))) b!6308668))

(assert (= (and b!6307647 ((_ is Concat!25068) (regTwo!32958 (regTwo!32959 r!7292)))) b!6308669))

(assert (= (and b!6307647 ((_ is Star!16223) (regTwo!32958 (regTwo!32959 r!7292)))) b!6308670))

(assert (= (and b!6307647 ((_ is Union!16223) (regTwo!32958 (regTwo!32959 r!7292)))) b!6308671))

(declare-fun b!6308672 () Bool)

(declare-fun e!3834675 () Bool)

(declare-fun tp!1757358 () Bool)

(assert (=> b!6308672 (= e!3834675 (and tp_is_empty!41699 tp!1757358))))

(assert (=> b!6307671 (= tp!1757152 e!3834675)))

(assert (= (and b!6307671 ((_ is Cons!64846) (t!378542 (t!378542 s!2326)))) b!6308672))

(declare-fun e!3834676 () Bool)

(assert (=> b!6307648 (= tp!1757124 e!3834676)))

(declare-fun b!6308673 () Bool)

(assert (=> b!6308673 (= e!3834676 tp_is_empty!41699)))

(declare-fun b!6308674 () Bool)

(declare-fun tp!1757363 () Bool)

(declare-fun tp!1757360 () Bool)

(assert (=> b!6308674 (= e!3834676 (and tp!1757363 tp!1757360))))

(declare-fun b!6308675 () Bool)

(declare-fun tp!1757359 () Bool)

(assert (=> b!6308675 (= e!3834676 tp!1757359)))

(declare-fun b!6308676 () Bool)

(declare-fun tp!1757361 () Bool)

(declare-fun tp!1757362 () Bool)

(assert (=> b!6308676 (= e!3834676 (and tp!1757361 tp!1757362))))

(assert (= (and b!6307648 ((_ is ElementMatch!16223) (reg!16552 (regTwo!32959 r!7292)))) b!6308673))

(assert (= (and b!6307648 ((_ is Concat!25068) (reg!16552 (regTwo!32959 r!7292)))) b!6308674))

(assert (= (and b!6307648 ((_ is Star!16223) (reg!16552 (regTwo!32959 r!7292)))) b!6308675))

(assert (= (and b!6307648 ((_ is Union!16223) (reg!16552 (regTwo!32959 r!7292)))) b!6308676))

(declare-fun e!3834677 () Bool)

(assert (=> b!6307657 (= tp!1757136 e!3834677)))

(declare-fun b!6308677 () Bool)

(assert (=> b!6308677 (= e!3834677 tp_is_empty!41699)))

(declare-fun b!6308678 () Bool)

(declare-fun tp!1757368 () Bool)

(declare-fun tp!1757365 () Bool)

(assert (=> b!6308678 (= e!3834677 (and tp!1757368 tp!1757365))))

(declare-fun b!6308679 () Bool)

(declare-fun tp!1757364 () Bool)

(assert (=> b!6308679 (= e!3834677 tp!1757364)))

(declare-fun b!6308680 () Bool)

(declare-fun tp!1757366 () Bool)

(declare-fun tp!1757367 () Bool)

(assert (=> b!6308680 (= e!3834677 (and tp!1757366 tp!1757367))))

(assert (= (and b!6307657 ((_ is ElementMatch!16223) (regOne!32959 (regTwo!32958 r!7292)))) b!6308677))

(assert (= (and b!6307657 ((_ is Concat!25068) (regOne!32959 (regTwo!32958 r!7292)))) b!6308678))

(assert (= (and b!6307657 ((_ is Star!16223) (regOne!32959 (regTwo!32958 r!7292)))) b!6308679))

(assert (= (and b!6307657 ((_ is Union!16223) (regOne!32959 (regTwo!32958 r!7292)))) b!6308680))

(declare-fun e!3834678 () Bool)

(assert (=> b!6307657 (= tp!1757137 e!3834678)))

(declare-fun b!6308681 () Bool)

(assert (=> b!6308681 (= e!3834678 tp_is_empty!41699)))

(declare-fun b!6308682 () Bool)

(declare-fun tp!1757373 () Bool)

(declare-fun tp!1757370 () Bool)

(assert (=> b!6308682 (= e!3834678 (and tp!1757373 tp!1757370))))

(declare-fun b!6308683 () Bool)

(declare-fun tp!1757369 () Bool)

(assert (=> b!6308683 (= e!3834678 tp!1757369)))

(declare-fun b!6308684 () Bool)

(declare-fun tp!1757371 () Bool)

(declare-fun tp!1757372 () Bool)

(assert (=> b!6308684 (= e!3834678 (and tp!1757371 tp!1757372))))

(assert (= (and b!6307657 ((_ is ElementMatch!16223) (regTwo!32959 (regTwo!32958 r!7292)))) b!6308681))

(assert (= (and b!6307657 ((_ is Concat!25068) (regTwo!32959 (regTwo!32958 r!7292)))) b!6308682))

(assert (= (and b!6307657 ((_ is Star!16223) (regTwo!32959 (regTwo!32958 r!7292)))) b!6308683))

(assert (= (and b!6307657 ((_ is Union!16223) (regTwo!32959 (regTwo!32958 r!7292)))) b!6308684))

(declare-fun condSetEmpty!42940 () Bool)

(assert (=> setNonEmpty!42930 (= condSetEmpty!42940 (= setRest!42930 ((as const (Array Context!11214 Bool)) false)))))

(declare-fun setRes!42940 () Bool)

(assert (=> setNonEmpty!42930 (= tp!1757165 setRes!42940)))

(declare-fun setIsEmpty!42940 () Bool)

(assert (=> setIsEmpty!42940 setRes!42940))

(declare-fun setNonEmpty!42940 () Bool)

(declare-fun tp!1757374 () Bool)

(declare-fun e!3834679 () Bool)

(declare-fun setElem!42940 () Context!11214)

(assert (=> setNonEmpty!42940 (= setRes!42940 (and tp!1757374 (inv!83804 setElem!42940) e!3834679))))

(declare-fun setRest!42940 () (InoxSet Context!11214))

(assert (=> setNonEmpty!42940 (= setRest!42930 ((_ map or) (store ((as const (Array Context!11214 Bool)) false) setElem!42940 true) setRest!42940))))

(declare-fun b!6308685 () Bool)

(declare-fun tp!1757375 () Bool)

(assert (=> b!6308685 (= e!3834679 tp!1757375)))

(assert (= (and setNonEmpty!42930 condSetEmpty!42940) setIsEmpty!42940))

(assert (= (and setNonEmpty!42930 (not condSetEmpty!42940)) setNonEmpty!42940))

(assert (= setNonEmpty!42940 b!6308685))

(declare-fun m!7124894 () Bool)

(assert (=> setNonEmpty!42940 m!7124894))

(declare-fun e!3834680 () Bool)

(assert (=> b!6307649 (= tp!1757126 e!3834680)))

(declare-fun b!6308686 () Bool)

(assert (=> b!6308686 (= e!3834680 tp_is_empty!41699)))

(declare-fun b!6308687 () Bool)

(declare-fun tp!1757380 () Bool)

(declare-fun tp!1757377 () Bool)

(assert (=> b!6308687 (= e!3834680 (and tp!1757380 tp!1757377))))

(declare-fun b!6308688 () Bool)

(declare-fun tp!1757376 () Bool)

(assert (=> b!6308688 (= e!3834680 tp!1757376)))

(declare-fun b!6308689 () Bool)

(declare-fun tp!1757378 () Bool)

(declare-fun tp!1757379 () Bool)

(assert (=> b!6308689 (= e!3834680 (and tp!1757378 tp!1757379))))

(assert (= (and b!6307649 ((_ is ElementMatch!16223) (regOne!32959 (regTwo!32959 r!7292)))) b!6308686))

(assert (= (and b!6307649 ((_ is Concat!25068) (regOne!32959 (regTwo!32959 r!7292)))) b!6308687))

(assert (= (and b!6307649 ((_ is Star!16223) (regOne!32959 (regTwo!32959 r!7292)))) b!6308688))

(assert (= (and b!6307649 ((_ is Union!16223) (regOne!32959 (regTwo!32959 r!7292)))) b!6308689))

(declare-fun e!3834681 () Bool)

(assert (=> b!6307649 (= tp!1757127 e!3834681)))

(declare-fun b!6308690 () Bool)

(assert (=> b!6308690 (= e!3834681 tp_is_empty!41699)))

(declare-fun b!6308691 () Bool)

(declare-fun tp!1757385 () Bool)

(declare-fun tp!1757382 () Bool)

(assert (=> b!6308691 (= e!3834681 (and tp!1757385 tp!1757382))))

(declare-fun b!6308692 () Bool)

(declare-fun tp!1757381 () Bool)

(assert (=> b!6308692 (= e!3834681 tp!1757381)))

(declare-fun b!6308693 () Bool)

(declare-fun tp!1757383 () Bool)

(declare-fun tp!1757384 () Bool)

(assert (=> b!6308693 (= e!3834681 (and tp!1757383 tp!1757384))))

(assert (= (and b!6307649 ((_ is ElementMatch!16223) (regTwo!32959 (regTwo!32959 r!7292)))) b!6308690))

(assert (= (and b!6307649 ((_ is Concat!25068) (regTwo!32959 (regTwo!32959 r!7292)))) b!6308691))

(assert (= (and b!6307649 ((_ is Star!16223) (regTwo!32959 (regTwo!32959 r!7292)))) b!6308692))

(assert (= (and b!6307649 ((_ is Union!16223) (regTwo!32959 (regTwo!32959 r!7292)))) b!6308693))

(declare-fun b!6308694 () Bool)

(declare-fun e!3834682 () Bool)

(declare-fun tp!1757386 () Bool)

(declare-fun tp!1757387 () Bool)

(assert (=> b!6308694 (= e!3834682 (and tp!1757386 tp!1757387))))

(assert (=> b!6307685 (= tp!1757166 e!3834682)))

(assert (= (and b!6307685 ((_ is Cons!64844) (exprs!6107 setElem!42930))) b!6308694))

(declare-fun e!3834683 () Bool)

(assert (=> b!6307662 (= tp!1757143 e!3834683)))

(declare-fun b!6308695 () Bool)

(assert (=> b!6308695 (= e!3834683 tp_is_empty!41699)))

(declare-fun b!6308696 () Bool)

(declare-fun tp!1757392 () Bool)

(declare-fun tp!1757389 () Bool)

(assert (=> b!6308696 (= e!3834683 (and tp!1757392 tp!1757389))))

(declare-fun b!6308697 () Bool)

(declare-fun tp!1757388 () Bool)

(assert (=> b!6308697 (= e!3834683 tp!1757388)))

(declare-fun b!6308698 () Bool)

(declare-fun tp!1757390 () Bool)

(declare-fun tp!1757391 () Bool)

(assert (=> b!6308698 (= e!3834683 (and tp!1757390 tp!1757391))))

(assert (= (and b!6307662 ((_ is ElementMatch!16223) (h!71292 (exprs!6107 setElem!42924)))) b!6308695))

(assert (= (and b!6307662 ((_ is Concat!25068) (h!71292 (exprs!6107 setElem!42924)))) b!6308696))

(assert (= (and b!6307662 ((_ is Star!16223) (h!71292 (exprs!6107 setElem!42924)))) b!6308697))

(assert (= (and b!6307662 ((_ is Union!16223) (h!71292 (exprs!6107 setElem!42924)))) b!6308698))

(declare-fun b!6308699 () Bool)

(declare-fun e!3834684 () Bool)

(declare-fun tp!1757393 () Bool)

(declare-fun tp!1757394 () Bool)

(assert (=> b!6308699 (= e!3834684 (and tp!1757393 tp!1757394))))

(assert (=> b!6307662 (= tp!1757144 e!3834684)))

(assert (= (and b!6307662 ((_ is Cons!64844) (t!378540 (exprs!6107 setElem!42924)))) b!6308699))

(declare-fun e!3834685 () Bool)

(assert (=> b!6307655 (= tp!1757138 e!3834685)))

(declare-fun b!6308700 () Bool)

(assert (=> b!6308700 (= e!3834685 tp_is_empty!41699)))

(declare-fun b!6308701 () Bool)

(declare-fun tp!1757399 () Bool)

(declare-fun tp!1757396 () Bool)

(assert (=> b!6308701 (= e!3834685 (and tp!1757399 tp!1757396))))

(declare-fun b!6308702 () Bool)

(declare-fun tp!1757395 () Bool)

(assert (=> b!6308702 (= e!3834685 tp!1757395)))

(declare-fun b!6308703 () Bool)

(declare-fun tp!1757397 () Bool)

(declare-fun tp!1757398 () Bool)

(assert (=> b!6308703 (= e!3834685 (and tp!1757397 tp!1757398))))

(assert (= (and b!6307655 ((_ is ElementMatch!16223) (regOne!32958 (regTwo!32958 r!7292)))) b!6308700))

(assert (= (and b!6307655 ((_ is Concat!25068) (regOne!32958 (regTwo!32958 r!7292)))) b!6308701))

(assert (= (and b!6307655 ((_ is Star!16223) (regOne!32958 (regTwo!32958 r!7292)))) b!6308702))

(assert (= (and b!6307655 ((_ is Union!16223) (regOne!32958 (regTwo!32958 r!7292)))) b!6308703))

(declare-fun e!3834686 () Bool)

(assert (=> b!6307655 (= tp!1757135 e!3834686)))

(declare-fun b!6308704 () Bool)

(assert (=> b!6308704 (= e!3834686 tp_is_empty!41699)))

(declare-fun b!6308705 () Bool)

(declare-fun tp!1757404 () Bool)

(declare-fun tp!1757401 () Bool)

(assert (=> b!6308705 (= e!3834686 (and tp!1757404 tp!1757401))))

(declare-fun b!6308706 () Bool)

(declare-fun tp!1757400 () Bool)

(assert (=> b!6308706 (= e!3834686 tp!1757400)))

(declare-fun b!6308707 () Bool)

(declare-fun tp!1757402 () Bool)

(declare-fun tp!1757403 () Bool)

(assert (=> b!6308707 (= e!3834686 (and tp!1757402 tp!1757403))))

(assert (= (and b!6307655 ((_ is ElementMatch!16223) (regTwo!32958 (regTwo!32958 r!7292)))) b!6308704))

(assert (= (and b!6307655 ((_ is Concat!25068) (regTwo!32958 (regTwo!32958 r!7292)))) b!6308705))

(assert (= (and b!6307655 ((_ is Star!16223) (regTwo!32958 (regTwo!32958 r!7292)))) b!6308706))

(assert (= (and b!6307655 ((_ is Union!16223) (regTwo!32958 (regTwo!32958 r!7292)))) b!6308707))

(declare-fun e!3834687 () Bool)

(assert (=> b!6307651 (= tp!1757133 e!3834687)))

(declare-fun b!6308708 () Bool)

(assert (=> b!6308708 (= e!3834687 tp_is_empty!41699)))

(declare-fun b!6308709 () Bool)

(declare-fun tp!1757409 () Bool)

(declare-fun tp!1757406 () Bool)

(assert (=> b!6308709 (= e!3834687 (and tp!1757409 tp!1757406))))

(declare-fun b!6308710 () Bool)

(declare-fun tp!1757405 () Bool)

(assert (=> b!6308710 (= e!3834687 tp!1757405)))

(declare-fun b!6308711 () Bool)

(declare-fun tp!1757407 () Bool)

(declare-fun tp!1757408 () Bool)

(assert (=> b!6308711 (= e!3834687 (and tp!1757407 tp!1757408))))

(assert (= (and b!6307651 ((_ is ElementMatch!16223) (regOne!32958 (regOne!32958 r!7292)))) b!6308708))

(assert (= (and b!6307651 ((_ is Concat!25068) (regOne!32958 (regOne!32958 r!7292)))) b!6308709))

(assert (= (and b!6307651 ((_ is Star!16223) (regOne!32958 (regOne!32958 r!7292)))) b!6308710))

(assert (= (and b!6307651 ((_ is Union!16223) (regOne!32958 (regOne!32958 r!7292)))) b!6308711))

(declare-fun e!3834688 () Bool)

(assert (=> b!6307651 (= tp!1757130 e!3834688)))

(declare-fun b!6308712 () Bool)

(assert (=> b!6308712 (= e!3834688 tp_is_empty!41699)))

(declare-fun b!6308713 () Bool)

(declare-fun tp!1757414 () Bool)

(declare-fun tp!1757411 () Bool)

(assert (=> b!6308713 (= e!3834688 (and tp!1757414 tp!1757411))))

(declare-fun b!6308714 () Bool)

(declare-fun tp!1757410 () Bool)

(assert (=> b!6308714 (= e!3834688 tp!1757410)))

(declare-fun b!6308715 () Bool)

(declare-fun tp!1757412 () Bool)

(declare-fun tp!1757413 () Bool)

(assert (=> b!6308715 (= e!3834688 (and tp!1757412 tp!1757413))))

(assert (= (and b!6307651 ((_ is ElementMatch!16223) (regTwo!32958 (regOne!32958 r!7292)))) b!6308712))

(assert (= (and b!6307651 ((_ is Concat!25068) (regTwo!32958 (regOne!32958 r!7292)))) b!6308713))

(assert (= (and b!6307651 ((_ is Star!16223) (regTwo!32958 (regOne!32958 r!7292)))) b!6308714))

(assert (= (and b!6307651 ((_ is Union!16223) (regTwo!32958 (regOne!32958 r!7292)))) b!6308715))

(declare-fun e!3834689 () Bool)

(assert (=> b!6307653 (= tp!1757131 e!3834689)))

(declare-fun b!6308716 () Bool)

(assert (=> b!6308716 (= e!3834689 tp_is_empty!41699)))

(declare-fun b!6308717 () Bool)

(declare-fun tp!1757419 () Bool)

(declare-fun tp!1757416 () Bool)

(assert (=> b!6308717 (= e!3834689 (and tp!1757419 tp!1757416))))

(declare-fun b!6308718 () Bool)

(declare-fun tp!1757415 () Bool)

(assert (=> b!6308718 (= e!3834689 tp!1757415)))

(declare-fun b!6308719 () Bool)

(declare-fun tp!1757417 () Bool)

(declare-fun tp!1757418 () Bool)

(assert (=> b!6308719 (= e!3834689 (and tp!1757417 tp!1757418))))

(assert (= (and b!6307653 ((_ is ElementMatch!16223) (regOne!32959 (regOne!32958 r!7292)))) b!6308716))

(assert (= (and b!6307653 ((_ is Concat!25068) (regOne!32959 (regOne!32958 r!7292)))) b!6308717))

(assert (= (and b!6307653 ((_ is Star!16223) (regOne!32959 (regOne!32958 r!7292)))) b!6308718))

(assert (= (and b!6307653 ((_ is Union!16223) (regOne!32959 (regOne!32958 r!7292)))) b!6308719))

(declare-fun e!3834690 () Bool)

(assert (=> b!6307653 (= tp!1757132 e!3834690)))

(declare-fun b!6308720 () Bool)

(assert (=> b!6308720 (= e!3834690 tp_is_empty!41699)))

(declare-fun b!6308721 () Bool)

(declare-fun tp!1757424 () Bool)

(declare-fun tp!1757421 () Bool)

(assert (=> b!6308721 (= e!3834690 (and tp!1757424 tp!1757421))))

(declare-fun b!6308722 () Bool)

(declare-fun tp!1757420 () Bool)

(assert (=> b!6308722 (= e!3834690 tp!1757420)))

(declare-fun b!6308723 () Bool)

(declare-fun tp!1757422 () Bool)

(declare-fun tp!1757423 () Bool)

(assert (=> b!6308723 (= e!3834690 (and tp!1757422 tp!1757423))))

(assert (= (and b!6307653 ((_ is ElementMatch!16223) (regTwo!32959 (regOne!32958 r!7292)))) b!6308720))

(assert (= (and b!6307653 ((_ is Concat!25068) (regTwo!32959 (regOne!32958 r!7292)))) b!6308721))

(assert (= (and b!6307653 ((_ is Star!16223) (regTwo!32959 (regOne!32958 r!7292)))) b!6308722))

(assert (= (and b!6307653 ((_ is Union!16223) (regTwo!32959 (regOne!32958 r!7292)))) b!6308723))

(declare-fun e!3834691 () Bool)

(assert (=> b!6307652 (= tp!1757129 e!3834691)))

(declare-fun b!6308724 () Bool)

(assert (=> b!6308724 (= e!3834691 tp_is_empty!41699)))

(declare-fun b!6308725 () Bool)

(declare-fun tp!1757429 () Bool)

(declare-fun tp!1757426 () Bool)

(assert (=> b!6308725 (= e!3834691 (and tp!1757429 tp!1757426))))

(declare-fun b!6308726 () Bool)

(declare-fun tp!1757425 () Bool)

(assert (=> b!6308726 (= e!3834691 tp!1757425)))

(declare-fun b!6308727 () Bool)

(declare-fun tp!1757427 () Bool)

(declare-fun tp!1757428 () Bool)

(assert (=> b!6308727 (= e!3834691 (and tp!1757427 tp!1757428))))

(assert (= (and b!6307652 ((_ is ElementMatch!16223) (reg!16552 (regOne!32958 r!7292)))) b!6308724))

(assert (= (and b!6307652 ((_ is Concat!25068) (reg!16552 (regOne!32958 r!7292)))) b!6308725))

(assert (= (and b!6307652 ((_ is Star!16223) (reg!16552 (regOne!32958 r!7292)))) b!6308726))

(assert (= (and b!6307652 ((_ is Union!16223) (reg!16552 (regOne!32958 r!7292)))) b!6308727))

(declare-fun e!3834692 () Bool)

(assert (=> b!6307643 (= tp!1757123 e!3834692)))

(declare-fun b!6308728 () Bool)

(assert (=> b!6308728 (= e!3834692 tp_is_empty!41699)))

(declare-fun b!6308729 () Bool)

(declare-fun tp!1757434 () Bool)

(declare-fun tp!1757431 () Bool)

(assert (=> b!6308729 (= e!3834692 (and tp!1757434 tp!1757431))))

(declare-fun b!6308730 () Bool)

(declare-fun tp!1757430 () Bool)

(assert (=> b!6308730 (= e!3834692 tp!1757430)))

(declare-fun b!6308731 () Bool)

(declare-fun tp!1757432 () Bool)

(declare-fun tp!1757433 () Bool)

(assert (=> b!6308731 (= e!3834692 (and tp!1757432 tp!1757433))))

(assert (= (and b!6307643 ((_ is ElementMatch!16223) (regOne!32958 (regOne!32959 r!7292)))) b!6308728))

(assert (= (and b!6307643 ((_ is Concat!25068) (regOne!32958 (regOne!32959 r!7292)))) b!6308729))

(assert (= (and b!6307643 ((_ is Star!16223) (regOne!32958 (regOne!32959 r!7292)))) b!6308730))

(assert (= (and b!6307643 ((_ is Union!16223) (regOne!32958 (regOne!32959 r!7292)))) b!6308731))

(declare-fun e!3834693 () Bool)

(assert (=> b!6307643 (= tp!1757120 e!3834693)))

(declare-fun b!6308732 () Bool)

(assert (=> b!6308732 (= e!3834693 tp_is_empty!41699)))

(declare-fun b!6308733 () Bool)

(declare-fun tp!1757439 () Bool)

(declare-fun tp!1757436 () Bool)

(assert (=> b!6308733 (= e!3834693 (and tp!1757439 tp!1757436))))

(declare-fun b!6308734 () Bool)

(declare-fun tp!1757435 () Bool)

(assert (=> b!6308734 (= e!3834693 tp!1757435)))

(declare-fun b!6308735 () Bool)

(declare-fun tp!1757437 () Bool)

(declare-fun tp!1757438 () Bool)

(assert (=> b!6308735 (= e!3834693 (and tp!1757437 tp!1757438))))

(assert (= (and b!6307643 ((_ is ElementMatch!16223) (regTwo!32958 (regOne!32959 r!7292)))) b!6308732))

(assert (= (and b!6307643 ((_ is Concat!25068) (regTwo!32958 (regOne!32959 r!7292)))) b!6308733))

(assert (= (and b!6307643 ((_ is Star!16223) (regTwo!32958 (regOne!32959 r!7292)))) b!6308734))

(assert (= (and b!6307643 ((_ is Union!16223) (regTwo!32958 (regOne!32959 r!7292)))) b!6308735))

(declare-fun e!3834694 () Bool)

(assert (=> b!6307645 (= tp!1757121 e!3834694)))

(declare-fun b!6308736 () Bool)

(assert (=> b!6308736 (= e!3834694 tp_is_empty!41699)))

(declare-fun b!6308737 () Bool)

(declare-fun tp!1757444 () Bool)

(declare-fun tp!1757441 () Bool)

(assert (=> b!6308737 (= e!3834694 (and tp!1757444 tp!1757441))))

(declare-fun b!6308738 () Bool)

(declare-fun tp!1757440 () Bool)

(assert (=> b!6308738 (= e!3834694 tp!1757440)))

(declare-fun b!6308739 () Bool)

(declare-fun tp!1757442 () Bool)

(declare-fun tp!1757443 () Bool)

(assert (=> b!6308739 (= e!3834694 (and tp!1757442 tp!1757443))))

(assert (= (and b!6307645 ((_ is ElementMatch!16223) (regOne!32959 (regOne!32959 r!7292)))) b!6308736))

(assert (= (and b!6307645 ((_ is Concat!25068) (regOne!32959 (regOne!32959 r!7292)))) b!6308737))

(assert (= (and b!6307645 ((_ is Star!16223) (regOne!32959 (regOne!32959 r!7292)))) b!6308738))

(assert (= (and b!6307645 ((_ is Union!16223) (regOne!32959 (regOne!32959 r!7292)))) b!6308739))

(declare-fun e!3834695 () Bool)

(assert (=> b!6307645 (= tp!1757122 e!3834695)))

(declare-fun b!6308740 () Bool)

(assert (=> b!6308740 (= e!3834695 tp_is_empty!41699)))

(declare-fun b!6308741 () Bool)

(declare-fun tp!1757449 () Bool)

(declare-fun tp!1757446 () Bool)

(assert (=> b!6308741 (= e!3834695 (and tp!1757449 tp!1757446))))

(declare-fun b!6308742 () Bool)

(declare-fun tp!1757445 () Bool)

(assert (=> b!6308742 (= e!3834695 tp!1757445)))

(declare-fun b!6308743 () Bool)

(declare-fun tp!1757447 () Bool)

(declare-fun tp!1757448 () Bool)

(assert (=> b!6308743 (= e!3834695 (and tp!1757447 tp!1757448))))

(assert (= (and b!6307645 ((_ is ElementMatch!16223) (regTwo!32959 (regOne!32959 r!7292)))) b!6308740))

(assert (= (and b!6307645 ((_ is Concat!25068) (regTwo!32959 (regOne!32959 r!7292)))) b!6308741))

(assert (= (and b!6307645 ((_ is Star!16223) (regTwo!32959 (regOne!32959 r!7292)))) b!6308742))

(assert (= (and b!6307645 ((_ is Union!16223) (regTwo!32959 (regOne!32959 r!7292)))) b!6308743))

(declare-fun e!3834696 () Bool)

(assert (=> b!6307644 (= tp!1757119 e!3834696)))

(declare-fun b!6308744 () Bool)

(assert (=> b!6308744 (= e!3834696 tp_is_empty!41699)))

(declare-fun b!6308745 () Bool)

(declare-fun tp!1757454 () Bool)

(declare-fun tp!1757451 () Bool)

(assert (=> b!6308745 (= e!3834696 (and tp!1757454 tp!1757451))))

(declare-fun b!6308746 () Bool)

(declare-fun tp!1757450 () Bool)

(assert (=> b!6308746 (= e!3834696 tp!1757450)))

(declare-fun b!6308747 () Bool)

(declare-fun tp!1757452 () Bool)

(declare-fun tp!1757453 () Bool)

(assert (=> b!6308747 (= e!3834696 (and tp!1757452 tp!1757453))))

(assert (= (and b!6307644 ((_ is ElementMatch!16223) (reg!16552 (regOne!32959 r!7292)))) b!6308744))

(assert (= (and b!6307644 ((_ is Concat!25068) (reg!16552 (regOne!32959 r!7292)))) b!6308745))

(assert (= (and b!6307644 ((_ is Star!16223) (reg!16552 (regOne!32959 r!7292)))) b!6308746))

(assert (= (and b!6307644 ((_ is Union!16223) (reg!16552 (regOne!32959 r!7292)))) b!6308747))

(declare-fun e!3834697 () Bool)

(assert (=> b!6307672 (= tp!1757153 e!3834697)))

(declare-fun b!6308748 () Bool)

(assert (=> b!6308748 (= e!3834697 tp_is_empty!41699)))

(declare-fun b!6308749 () Bool)

(declare-fun tp!1757459 () Bool)

(declare-fun tp!1757456 () Bool)

(assert (=> b!6308749 (= e!3834697 (and tp!1757459 tp!1757456))))

(declare-fun b!6308750 () Bool)

(declare-fun tp!1757455 () Bool)

(assert (=> b!6308750 (= e!3834697 tp!1757455)))

(declare-fun b!6308751 () Bool)

(declare-fun tp!1757457 () Bool)

(declare-fun tp!1757458 () Bool)

(assert (=> b!6308751 (= e!3834697 (and tp!1757457 tp!1757458))))

(assert (= (and b!6307672 ((_ is ElementMatch!16223) (h!71292 (exprs!6107 (h!71293 zl!343))))) b!6308748))

(assert (= (and b!6307672 ((_ is Concat!25068) (h!71292 (exprs!6107 (h!71293 zl!343))))) b!6308749))

(assert (= (and b!6307672 ((_ is Star!16223) (h!71292 (exprs!6107 (h!71293 zl!343))))) b!6308750))

(assert (= (and b!6307672 ((_ is Union!16223) (h!71292 (exprs!6107 (h!71293 zl!343))))) b!6308751))

(declare-fun b!6308752 () Bool)

(declare-fun e!3834698 () Bool)

(declare-fun tp!1757460 () Bool)

(declare-fun tp!1757461 () Bool)

(assert (=> b!6308752 (= e!3834698 (and tp!1757460 tp!1757461))))

(assert (=> b!6307672 (= tp!1757154 e!3834698)))

(assert (= (and b!6307672 ((_ is Cons!64844) (t!378540 (exprs!6107 (h!71293 zl!343))))) b!6308752))

(declare-fun e!3834699 () Bool)

(assert (=> b!6307664 (= tp!1757149 e!3834699)))

(declare-fun b!6308753 () Bool)

(assert (=> b!6308753 (= e!3834699 tp_is_empty!41699)))

(declare-fun b!6308754 () Bool)

(declare-fun tp!1757466 () Bool)

(declare-fun tp!1757463 () Bool)

(assert (=> b!6308754 (= e!3834699 (and tp!1757466 tp!1757463))))

(declare-fun b!6308755 () Bool)

(declare-fun tp!1757462 () Bool)

(assert (=> b!6308755 (= e!3834699 tp!1757462)))

(declare-fun b!6308756 () Bool)

(declare-fun tp!1757464 () Bool)

(declare-fun tp!1757465 () Bool)

(assert (=> b!6308756 (= e!3834699 (and tp!1757464 tp!1757465))))

(assert (= (and b!6307664 ((_ is ElementMatch!16223) (regOne!32958 (reg!16552 r!7292)))) b!6308753))

(assert (= (and b!6307664 ((_ is Concat!25068) (regOne!32958 (reg!16552 r!7292)))) b!6308754))

(assert (= (and b!6307664 ((_ is Star!16223) (regOne!32958 (reg!16552 r!7292)))) b!6308755))

(assert (= (and b!6307664 ((_ is Union!16223) (regOne!32958 (reg!16552 r!7292)))) b!6308756))

(declare-fun e!3834700 () Bool)

(assert (=> b!6307664 (= tp!1757146 e!3834700)))

(declare-fun b!6308757 () Bool)

(assert (=> b!6308757 (= e!3834700 tp_is_empty!41699)))

(declare-fun b!6308758 () Bool)

(declare-fun tp!1757471 () Bool)

(declare-fun tp!1757468 () Bool)

(assert (=> b!6308758 (= e!3834700 (and tp!1757471 tp!1757468))))

(declare-fun b!6308759 () Bool)

(declare-fun tp!1757467 () Bool)

(assert (=> b!6308759 (= e!3834700 tp!1757467)))

(declare-fun b!6308760 () Bool)

(declare-fun tp!1757469 () Bool)

(declare-fun tp!1757470 () Bool)

(assert (=> b!6308760 (= e!3834700 (and tp!1757469 tp!1757470))))

(assert (= (and b!6307664 ((_ is ElementMatch!16223) (regTwo!32958 (reg!16552 r!7292)))) b!6308757))

(assert (= (and b!6307664 ((_ is Concat!25068) (regTwo!32958 (reg!16552 r!7292)))) b!6308758))

(assert (= (and b!6307664 ((_ is Star!16223) (regTwo!32958 (reg!16552 r!7292)))) b!6308759))

(assert (= (and b!6307664 ((_ is Union!16223) (regTwo!32958 (reg!16552 r!7292)))) b!6308760))

(declare-fun e!3834701 () Bool)

(assert (=> b!6307665 (= tp!1757145 e!3834701)))

(declare-fun b!6308761 () Bool)

(assert (=> b!6308761 (= e!3834701 tp_is_empty!41699)))

(declare-fun b!6308762 () Bool)

(declare-fun tp!1757476 () Bool)

(declare-fun tp!1757473 () Bool)

(assert (=> b!6308762 (= e!3834701 (and tp!1757476 tp!1757473))))

(declare-fun b!6308763 () Bool)

(declare-fun tp!1757472 () Bool)

(assert (=> b!6308763 (= e!3834701 tp!1757472)))

(declare-fun b!6308764 () Bool)

(declare-fun tp!1757474 () Bool)

(declare-fun tp!1757475 () Bool)

(assert (=> b!6308764 (= e!3834701 (and tp!1757474 tp!1757475))))

(assert (= (and b!6307665 ((_ is ElementMatch!16223) (reg!16552 (reg!16552 r!7292)))) b!6308761))

(assert (= (and b!6307665 ((_ is Concat!25068) (reg!16552 (reg!16552 r!7292)))) b!6308762))

(assert (= (and b!6307665 ((_ is Star!16223) (reg!16552 (reg!16552 r!7292)))) b!6308763))

(assert (= (and b!6307665 ((_ is Union!16223) (reg!16552 (reg!16552 r!7292)))) b!6308764))

(declare-fun b!6308766 () Bool)

(declare-fun e!3834703 () Bool)

(declare-fun tp!1757477 () Bool)

(assert (=> b!6308766 (= e!3834703 tp!1757477)))

(declare-fun b!6308765 () Bool)

(declare-fun e!3834702 () Bool)

(declare-fun tp!1757478 () Bool)

(assert (=> b!6308765 (= e!3834702 (and (inv!83804 (h!71293 (t!378541 (t!378541 zl!343)))) e!3834703 tp!1757478))))

(assert (=> b!6307679 (= tp!1757160 e!3834702)))

(assert (= b!6308765 b!6308766))

(assert (= (and b!6307679 ((_ is Cons!64845) (t!378541 (t!378541 zl!343)))) b!6308765))

(declare-fun m!7124896 () Bool)

(assert (=> b!6308765 m!7124896))

(declare-fun b!6308767 () Bool)

(declare-fun e!3834704 () Bool)

(declare-fun tp!1757479 () Bool)

(declare-fun tp!1757480 () Bool)

(assert (=> b!6308767 (= e!3834704 (and tp!1757479 tp!1757480))))

(assert (=> b!6307680 (= tp!1757159 e!3834704)))

(assert (= (and b!6307680 ((_ is Cons!64844) (exprs!6107 (h!71293 (t!378541 zl!343))))) b!6308767))

(declare-fun e!3834705 () Bool)

(assert (=> b!6307666 (= tp!1757147 e!3834705)))

(declare-fun b!6308768 () Bool)

(assert (=> b!6308768 (= e!3834705 tp_is_empty!41699)))

(declare-fun b!6308769 () Bool)

(declare-fun tp!1757485 () Bool)

(declare-fun tp!1757482 () Bool)

(assert (=> b!6308769 (= e!3834705 (and tp!1757485 tp!1757482))))

(declare-fun b!6308770 () Bool)

(declare-fun tp!1757481 () Bool)

(assert (=> b!6308770 (= e!3834705 tp!1757481)))

(declare-fun b!6308771 () Bool)

(declare-fun tp!1757483 () Bool)

(declare-fun tp!1757484 () Bool)

(assert (=> b!6308771 (= e!3834705 (and tp!1757483 tp!1757484))))

(assert (= (and b!6307666 ((_ is ElementMatch!16223) (regOne!32959 (reg!16552 r!7292)))) b!6308768))

(assert (= (and b!6307666 ((_ is Concat!25068) (regOne!32959 (reg!16552 r!7292)))) b!6308769))

(assert (= (and b!6307666 ((_ is Star!16223) (regOne!32959 (reg!16552 r!7292)))) b!6308770))

(assert (= (and b!6307666 ((_ is Union!16223) (regOne!32959 (reg!16552 r!7292)))) b!6308771))

(declare-fun e!3834706 () Bool)

(assert (=> b!6307666 (= tp!1757148 e!3834706)))

(declare-fun b!6308772 () Bool)

(assert (=> b!6308772 (= e!3834706 tp_is_empty!41699)))

(declare-fun b!6308773 () Bool)

(declare-fun tp!1757490 () Bool)

(declare-fun tp!1757487 () Bool)

(assert (=> b!6308773 (= e!3834706 (and tp!1757490 tp!1757487))))

(declare-fun b!6308774 () Bool)

(declare-fun tp!1757486 () Bool)

(assert (=> b!6308774 (= e!3834706 tp!1757486)))

(declare-fun b!6308775 () Bool)

(declare-fun tp!1757488 () Bool)

(declare-fun tp!1757489 () Bool)

(assert (=> b!6308775 (= e!3834706 (and tp!1757488 tp!1757489))))

(assert (= (and b!6307666 ((_ is ElementMatch!16223) (regTwo!32959 (reg!16552 r!7292)))) b!6308772))

(assert (= (and b!6307666 ((_ is Concat!25068) (regTwo!32959 (reg!16552 r!7292)))) b!6308773))

(assert (= (and b!6307666 ((_ is Star!16223) (regTwo!32959 (reg!16552 r!7292)))) b!6308774))

(assert (= (and b!6307666 ((_ is Union!16223) (regTwo!32959 (reg!16552 r!7292)))) b!6308775))

(declare-fun b_lambda!239981 () Bool)

(assert (= b_lambda!239961 (or d!1979395 b_lambda!239981)))

(declare-fun bs!1577420 () Bool)

(declare-fun d!1979841 () Bool)

(assert (= bs!1577420 (and d!1979841 d!1979395)))

(assert (=> bs!1577420 (= (dynLambda!25675 lambda!346485 (h!71292 (exprs!6107 (h!71293 zl!343)))) (validRegex!7959 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(declare-fun m!7124898 () Bool)

(assert (=> bs!1577420 m!7124898))

(assert (=> b!6308499 d!1979841))

(declare-fun b_lambda!239983 () Bool)

(assert (= b_lambda!239943 (or b!6306937 b_lambda!239983)))

(assert (=> d!1979587 d!1979405))

(declare-fun b_lambda!239985 () Bool)

(assert (= b_lambda!239947 (or d!1979337 b_lambda!239985)))

(declare-fun bs!1577421 () Bool)

(declare-fun d!1979843 () Bool)

(assert (= bs!1577421 (and d!1979843 d!1979337)))

(assert (=> bs!1577421 (= (dynLambda!25675 lambda!346457 (h!71292 (exprs!6107 (h!71293 zl!343)))) (validRegex!7959 (h!71292 (exprs!6107 (h!71293 zl!343)))))))

(assert (=> bs!1577421 m!7124898))

(assert (=> b!6308095 d!1979843))

(declare-fun b_lambda!239987 () Bool)

(assert (= b_lambda!239979 (or d!1979385 b_lambda!239987)))

(declare-fun bs!1577422 () Bool)

(declare-fun d!1979845 () Bool)

(assert (= bs!1577422 (and d!1979845 d!1979385)))

(assert (=> bs!1577422 (= (dynLambda!25675 lambda!346479 (h!71292 (unfocusZipperList!1644 zl!343))) (validRegex!7959 (h!71292 (unfocusZipperList!1644 zl!343))))))

(declare-fun m!7124900 () Bool)

(assert (=> bs!1577422 m!7124900))

(assert (=> b!6308658 d!1979845))

(declare-fun b_lambda!239989 () Bool)

(assert (= b_lambda!239945 (or b!6306937 b_lambda!239989)))

(assert (=> d!1979609 d!1979407))

(declare-fun b_lambda!239991 () Bool)

(assert (= b_lambda!239937 (or d!1979347 b_lambda!239991)))

(declare-fun bs!1577423 () Bool)

(declare-fun d!1979847 () Bool)

(assert (= bs!1577423 (and d!1979847 d!1979347)))

(assert (=> bs!1577423 (= (dynLambda!25675 lambda!346458 (h!71292 (exprs!6107 setElem!42924))) (validRegex!7959 (h!71292 (exprs!6107 setElem!42924))))))

(declare-fun m!7124902 () Bool)

(assert (=> bs!1577423 m!7124902))

(assert (=> b!6307780 d!1979847))

(declare-fun b_lambda!239993 () Bool)

(assert (= b_lambda!239951 (or d!1979277 b_lambda!239993)))

(declare-fun bs!1577424 () Bool)

(declare-fun d!1979849 () Bool)

(assert (= bs!1577424 (and d!1979849 d!1979277)))

(assert (=> bs!1577424 (= (dynLambda!25675 lambda!346449 (h!71292 (exprs!6107 lt!2358606))) (validRegex!7959 (h!71292 (exprs!6107 lt!2358606))))))

(declare-fun m!7124904 () Bool)

(assert (=> bs!1577424 m!7124904))

(assert (=> b!6308188 d!1979849))

(declare-fun b_lambda!239995 () Bool)

(assert (= b_lambda!239939 (or d!1979387 b_lambda!239995)))

(declare-fun bs!1577425 () Bool)

(declare-fun d!1979851 () Bool)

(assert (= bs!1577425 (and d!1979851 d!1979387)))

(assert (=> bs!1577425 (= (dynLambda!25675 lambda!346482 (h!71292 lt!2358694)) (validRegex!7959 (h!71292 lt!2358694)))))

(declare-fun m!7124906 () Bool)

(assert (=> bs!1577425 m!7124906))

(assert (=> b!6307902 d!1979851))

(check-sat (not bm!535393) (not d!1979537) (not b!6308697) (not d!1979783) (not b!6308032) (not b!6308168) (not b!6308472) (not b!6308771) (not b!6307829) (not d!1979597) (not b_lambda!239993) (not b!6308682) (not d!1979449) (not d!1979487) (not b!6308096) (not b_lambda!239981) (not b!6308765) (not bm!535292) (not b!6308702) (not bm!535308) (not d!1979787) (not b!6308467) (not b!6307775) (not bm!535363) (not b_lambda!239991) (not bm!535321) (not b_lambda!239989) (not bm!535231) (not b!6308019) (not bm!535266) (not b!6308388) (not b!6308669) (not b!6308714) (not b!6308200) (not b!6307802) (not bm!535400) (not b!6308721) (not b!6308679) (not d!1979485) (not b!6308709) (not b!6308683) (not bm!535395) (not b!6308747) (not b!6308181) (not bm!535402) (not b!6308767) (not b!6307896) (not b!6308435) (not b!6308693) tp_is_empty!41699 (not b!6308763) (not bm!535329) (not b!6307908) (not b!6308357) (not bm!535365) (not b!6308739) (not b!6307996) (not b!6308606) (not b!6308611) (not d!1979671) (not b!6308402) (not bm!535347) (not d!1979795) (not b!6308750) (not b!6307922) (not b!6308017) (not bm!535298) (not b!6308725) (not d!1979701) (not bs!1577420) (not b!6308735) (not b!6308717) (not b!6308662) (not b!6308699) (not d!1979815) (not bm!535254) (not b!6308016) (not d!1979587) (not d!1979531) (not bm!535270) (not b!6308364) (not b!6308691) (not b!6308020) (not b!6308675) (not b!6308729) (not bm!535361) (not bm!535303) (not b!6308666) (not d!1979711) (not b!6307781) (not d!1979569) (not b!6308689) (not bs!1577425) (not b!6308360) (not b!6308169) (not b!6308358) (not bm!535401) (not bm!535372) (not b!6308575) (not bs!1577422) (not setNonEmpty!42940) (not d!1979641) (not b!6307853) (not b!6308176) (not b!6308773) (not b!6308293) (not b!6308696) (not b!6307854) (not b!6308734) (not b!6308754) (not b!6308674) (not b!6307833) (not b!6308705) (not b!6307920) (not b!6308524) (not b!6308134) (not d!1979745) (not b!6308084) (not b!6307865) (not b!6308193) (not b!6308468) (not b!6307921) (not d!1979463) (not bs!1577421) (not b!6308731) (not d!1979759) (not b!6308083) (not b!6308760) (not b_lambda!239983) (not d!1979649) (not b!6308676) (not b!6308415) (not bm!535405) (not b!6308694) (not d!1979713) (not bm!535327) (not b!6308749) (not b!6308706) (not b!6308362) (not b!6308723) (not b!6308394) (not bm!535233) (not b_lambda!239985) (not bm!535253) (not b!6307882) (not b!6308719) (not b!6308670) (not bm!535316) (not d!1979705) (not d!1979581) (not b!6308751) (not b!6308703) (not b!6308726) (not d!1979517) (not b!6308126) (not b!6308672) (not b!6308701) (not b!6308755) (not bm!535394) (not b!6308125) (not b!6308473) (not b!6308756) (not bm!535268) (not b!6308762) (not b!6308122) (not b!6308081) (not b!6308770) (not b!6308741) (not b!6308758) (not bm!535309) (not b!6307900) (not bm!535295) (not b!6308685) (not bm!535366) (not b!6308715) (not b!6307933) (not b!6307826) (not b!6308769) (not b!6308667) (not b!6308713) (not bm!535315) (not bm!535275) (not b!6307830) (not bm!535256) (not b!6308439) (not d!1979547) (not b!6308671) (not b!6308025) (not d!1979813) (not b!6308678) (not b!6308684) (not bm!535272) (not d!1979541) (not d!1979545) (not b!6308196) (not d!1979611) (not b!6308654) (not b!6308466) (not bm!535364) (not d!1979761) (not b!6308730) (not b!6308393) (not d!1979733) (not b!6308727) (not bm!535294) (not b!6308743) (not b!6307815) (not b!6308396) (not d!1979819) (not b!6308199) (not b!6308438) (not d!1979817) (not b!6308698) (not d!1979507) (not bm!535396) (not b!6308775) (not b!6308434) (not b!6308549) (not b!6308423) (not d!1979459) (not d!1979523) (not b!6308072) (not bm!535360) (not b!6308505) (not b!6308495) (not b!6307750) (not b!6308707) (not d!1979481) (not b!6308390) (not b!6308745) (not b!6308711) (not b!6308197) (not b!6307903) (not bm!535362) (not bm!535273) (not b!6308692) (not bm!535274) (not d!1979675) (not b_lambda!239929) (not b!6308128) (not b!6308752) (not b!6308099) (not b!6308746) (not bm!535232) (not b!6307838) (not bm!535246) (not b!6308764) (not d!1979501) (not b!6308031) (not setNonEmpty!42938) (not bm!535371) (not bm!535391) (not b!6307749) (not bm!535403) (not b!6308663) (not d!1979609) (not b!6308356) (not b!6308766) (not bm!535314) (not b!6308647) (not b!6308737) (not b!6308742) (not bs!1577424) (not b!6308079) (not b!6308500) (not b!6308722) (not bm!535255) (not b!6308359) (not d!1979451) (not b!6308680) (not b!6308661) (not b_lambda!239931) (not b!6308422) (not b!6308189) (not b!6308733) (not b!6308061) (not b!6307814) (not setNonEmpty!42936) (not bm!535310) (not bm!535373) (not b!6308759) (not b!6308774) (not d!1979543) (not bm!535349) (not b!6308574) (not b!6308085) (not b!6308659) (not bm!535328) (not b!6308710) (not b!6308687) (not b!6308082) (not b!6308718) (not b!6308115) (not b!6308665) (not bm!535370) (not d!1979775) (not b!6308086) (not d!1979509) (not b!6308648) (not bm!535377) (not b!6307987) (not b!6308129) (not b!6308738) (not b!6308397) (not b!6308548) (not b_lambda!239995) (not b!6307832) (not bs!1577423) (not b!6307909) (not bm!535297) (not b!6308474) (not b!6308013) (not b!6308688) (not d!1979521) (not b_lambda!239987) (not d!1979629) (not d!1979595) (not b!6308207))
(check-sat)
