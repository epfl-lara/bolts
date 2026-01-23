; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557386 () Bool)

(assert start!557386)

(declare-fun b!5278479 () Bool)

(assert (=> b!5278479 true))

(assert (=> b!5278479 true))

(declare-fun lambda!266522 () Int)

(declare-fun lambda!266521 () Int)

(assert (=> b!5278479 (not (= lambda!266522 lambda!266521))))

(assert (=> b!5278479 true))

(assert (=> b!5278479 true))

(declare-fun b!5278455 () Bool)

(assert (=> b!5278455 true))

(declare-fun b!5278450 () Bool)

(declare-fun res!2238738 () Bool)

(declare-fun e!3282296 () Bool)

(assert (=> b!5278450 (=> res!2238738 e!3282296)))

(declare-datatypes ((C!30068 0))(
  ( (C!30069 (val!24736 Int)) )
))
(declare-datatypes ((Regex!14899 0))(
  ( (ElementMatch!14899 (c!914829 C!30068)) (Concat!23744 (regOne!30310 Regex!14899) (regTwo!30310 Regex!14899)) (EmptyExpr!14899) (Star!14899 (reg!15228 Regex!14899)) (EmptyLang!14899) (Union!14899 (regOne!30311 Regex!14899) (regTwo!30311 Regex!14899)) )
))
(declare-datatypes ((List!60996 0))(
  ( (Nil!60872) (Cons!60872 (h!67320 Regex!14899) (t!374197 List!60996)) )
))
(declare-datatypes ((Context!8566 0))(
  ( (Context!8567 (exprs!4783 List!60996)) )
))
(declare-datatypes ((List!60997 0))(
  ( (Nil!60873) (Cons!60873 (h!67321 Context!8566) (t!374198 List!60997)) )
))
(declare-fun zl!343 () List!60997)

(declare-fun r!7292 () Regex!14899)

(assert (=> b!5278450 (= res!2238738 (not (= (exprs!4783 (h!67321 zl!343)) (Cons!60872 (Concat!23744 (regOne!30310 (regOne!30310 r!7292)) (regTwo!30310 (regOne!30310 r!7292))) (t!374197 (exprs!4783 (h!67321 zl!343)))))))))

(declare-fun b!5278451 () Bool)

(declare-datatypes ((Unit!153114 0))(
  ( (Unit!153115) )
))
(declare-fun e!3282301 () Unit!153114)

(declare-fun Unit!153116 () Unit!153114)

(assert (=> b!5278451 (= e!3282301 Unit!153116)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2157860 () (InoxSet Context!8566))

(declare-datatypes ((List!60998 0))(
  ( (Nil!60874) (Cons!60874 (h!67322 C!30068) (t!374199 List!60998)) )
))
(declare-fun s!2326 () List!60998)

(declare-fun lt!2157884 () (InoxSet Context!8566))

(declare-fun lt!2157865 () Unit!153114)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!136 ((InoxSet Context!8566) (InoxSet Context!8566) List!60998) Unit!153114)

(assert (=> b!5278451 (= lt!2157865 (lemmaZipperConcatMatchesSameAsBothZippers!136 lt!2157884 lt!2157860 (t!374199 s!2326)))))

(declare-fun res!2238728 () Bool)

(declare-fun matchZipper!1143 ((InoxSet Context!8566) List!60998) Bool)

(assert (=> b!5278451 (= res!2238728 (matchZipper!1143 lt!2157884 (t!374199 s!2326)))))

(declare-fun e!3282300 () Bool)

(assert (=> b!5278451 (=> res!2238728 e!3282300)))

(assert (=> b!5278451 (= (matchZipper!1143 ((_ map or) lt!2157884 lt!2157860) (t!374199 s!2326)) e!3282300)))

(declare-fun b!5278452 () Bool)

(declare-fun res!2238719 () Bool)

(declare-fun e!3282303 () Bool)

(assert (=> b!5278452 (=> (not res!2238719) (not e!3282303))))

(declare-fun unfocusZipper!641 (List!60997) Regex!14899)

(assert (=> b!5278452 (= res!2238719 (= r!7292 (unfocusZipper!641 zl!343)))))

(declare-fun b!5278454 () Bool)

(declare-fun Unit!153117 () Unit!153114)

(assert (=> b!5278454 (= e!3282301 Unit!153117)))

(declare-fun e!3282290 () Bool)

(declare-fun e!3282295 () Bool)

(assert (=> b!5278455 (= e!3282290 e!3282295)))

(declare-fun res!2238725 () Bool)

(assert (=> b!5278455 (=> res!2238725 e!3282295)))

(get-info :version)

(assert (=> b!5278455 (= res!2238725 (or (and ((_ is ElementMatch!14899) (regOne!30310 r!7292)) (= (c!914829 (regOne!30310 r!7292)) (h!67322 s!2326))) ((_ is Union!14899) (regOne!30310 r!7292)) (not ((_ is Concat!23744) (regOne!30310 r!7292)))))))

(declare-fun lt!2157881 () Unit!153114)

(assert (=> b!5278455 (= lt!2157881 e!3282301)))

(declare-fun c!914828 () Bool)

(declare-fun nullable!5068 (Regex!14899) Bool)

(assert (=> b!5278455 (= c!914828 (nullable!5068 (h!67320 (exprs!4783 (h!67321 zl!343)))))))

(declare-fun lambda!266523 () Int)

(declare-fun z!1189 () (InoxSet Context!8566))

(declare-fun flatMap!626 ((InoxSet Context!8566) Int) (InoxSet Context!8566))

(declare-fun derivationStepZipperUp!271 (Context!8566 C!30068) (InoxSet Context!8566))

(assert (=> b!5278455 (= (flatMap!626 z!1189 lambda!266523) (derivationStepZipperUp!271 (h!67321 zl!343) (h!67322 s!2326)))))

(declare-fun lt!2157868 () Unit!153114)

(declare-fun lemmaFlatMapOnSingletonSet!158 ((InoxSet Context!8566) Context!8566 Int) Unit!153114)

(assert (=> b!5278455 (= lt!2157868 (lemmaFlatMapOnSingletonSet!158 z!1189 (h!67321 zl!343) lambda!266523))))

(declare-fun lt!2157862 () Context!8566)

(assert (=> b!5278455 (= lt!2157860 (derivationStepZipperUp!271 lt!2157862 (h!67322 s!2326)))))

(declare-fun derivationStepZipperDown!347 (Regex!14899 Context!8566 C!30068) (InoxSet Context!8566))

(assert (=> b!5278455 (= lt!2157884 (derivationStepZipperDown!347 (h!67320 (exprs!4783 (h!67321 zl!343))) lt!2157862 (h!67322 s!2326)))))

(assert (=> b!5278455 (= lt!2157862 (Context!8567 (t!374197 (exprs!4783 (h!67321 zl!343)))))))

(declare-fun lt!2157886 () (InoxSet Context!8566))

(assert (=> b!5278455 (= lt!2157886 (derivationStepZipperUp!271 (Context!8567 (Cons!60872 (h!67320 (exprs!4783 (h!67321 zl!343))) (t!374197 (exprs!4783 (h!67321 zl!343))))) (h!67322 s!2326)))))

(declare-fun b!5278456 () Bool)

(declare-fun e!3282305 () Bool)

(assert (=> b!5278456 (= e!3282305 true)))

(declare-fun lt!2157873 () Regex!14899)

(declare-fun lt!2157878 () List!60997)

(assert (=> b!5278456 (= lt!2157873 (unfocusZipper!641 lt!2157878))))

(declare-fun b!5278457 () Bool)

(declare-fun e!3282294 () Bool)

(declare-fun tp!1474850 () Bool)

(declare-fun tp!1474847 () Bool)

(assert (=> b!5278457 (= e!3282294 (and tp!1474850 tp!1474847))))

(declare-fun b!5278458 () Bool)

(declare-fun res!2238740 () Bool)

(assert (=> b!5278458 (=> res!2238740 e!3282290)))

(declare-fun isEmpty!32827 (List!60996) Bool)

(assert (=> b!5278458 (= res!2238740 (isEmpty!32827 (t!374197 (exprs!4783 (h!67321 zl!343)))))))

(declare-fun b!5278459 () Bool)

(declare-fun res!2238726 () Bool)

(assert (=> b!5278459 (=> res!2238726 e!3282295)))

(assert (=> b!5278459 (= res!2238726 (not (nullable!5068 (regOne!30310 (regOne!30310 r!7292)))))))

(declare-fun b!5278460 () Bool)

(declare-fun res!2238741 () Bool)

(assert (=> b!5278460 (=> res!2238741 e!3282296)))

(declare-fun lt!2157877 () Context!8566)

(declare-fun contextDepthTotal!40 (Context!8566) Int)

(assert (=> b!5278460 (= res!2238741 (>= (contextDepthTotal!40 lt!2157877) (contextDepthTotal!40 (h!67321 zl!343))))))

(declare-fun setIsEmpty!33821 () Bool)

(declare-fun setRes!33821 () Bool)

(assert (=> setIsEmpty!33821 setRes!33821))

(declare-fun b!5278461 () Bool)

(declare-fun e!3282302 () Bool)

(declare-fun lt!2157875 () (InoxSet Context!8566))

(assert (=> b!5278461 (= e!3282302 (matchZipper!1143 lt!2157875 (t!374199 s!2326)))))

(declare-fun b!5278462 () Bool)

(declare-fun res!2238717 () Bool)

(declare-fun e!3282297 () Bool)

(assert (=> b!5278462 (=> res!2238717 e!3282297)))

(assert (=> b!5278462 (= res!2238717 (or ((_ is EmptyExpr!14899) r!7292) ((_ is EmptyLang!14899) r!7292) ((_ is ElementMatch!14899) r!7292) ((_ is Union!14899) r!7292) (not ((_ is Concat!23744) r!7292))))))

(declare-fun b!5278463 () Bool)

(declare-fun res!2238718 () Bool)

(assert (=> b!5278463 (=> res!2238718 e!3282305)))

(declare-fun lt!2157869 () (InoxSet Context!8566))

(declare-fun toList!8683 ((InoxSet Context!8566)) List!60997)

(assert (=> b!5278463 (= res!2238718 (not (= (toList!8683 lt!2157869) lt!2157878)))))

(declare-fun b!5278464 () Bool)

(declare-fun res!2238739 () Bool)

(assert (=> b!5278464 (=> res!2238739 e!3282297)))

(declare-fun isEmpty!32828 (List!60997) Bool)

(assert (=> b!5278464 (= res!2238739 (not (isEmpty!32828 (t!374198 zl!343))))))

(declare-fun b!5278465 () Bool)

(declare-fun res!2238736 () Bool)

(assert (=> b!5278465 (=> res!2238736 e!3282297)))

(declare-fun generalisedUnion!828 (List!60996) Regex!14899)

(declare-fun unfocusZipperList!341 (List!60997) List!60996)

(assert (=> b!5278465 (= res!2238736 (not (= r!7292 (generalisedUnion!828 (unfocusZipperList!341 zl!343)))))))

(declare-fun b!5278466 () Bool)

(declare-fun res!2238732 () Bool)

(assert (=> b!5278466 (=> res!2238732 e!3282297)))

(declare-fun generalisedConcat!568 (List!60996) Regex!14899)

(assert (=> b!5278466 (= res!2238732 (not (= r!7292 (generalisedConcat!568 (exprs!4783 (h!67321 zl!343))))))))

(declare-fun b!5278467 () Bool)

(declare-fun e!3282291 () Bool)

(declare-fun lt!2157870 () (InoxSet Context!8566))

(declare-fun derivationStepZipper!1142 ((InoxSet Context!8566) C!30068) (InoxSet Context!8566))

(assert (=> b!5278467 (= e!3282291 (not (matchZipper!1143 (derivationStepZipper!1142 lt!2157870 (h!67322 s!2326)) (t!374199 s!2326))))))

(declare-fun b!5278468 () Bool)

(declare-fun e!3282288 () Bool)

(declare-fun tp_is_empty!39051 () Bool)

(declare-fun tp!1474849 () Bool)

(assert (=> b!5278468 (= e!3282288 (and tp_is_empty!39051 tp!1474849))))

(declare-fun b!5278469 () Bool)

(declare-fun tp!1474844 () Bool)

(declare-fun tp!1474845 () Bool)

(assert (=> b!5278469 (= e!3282294 (and tp!1474844 tp!1474845))))

(declare-fun b!5278470 () Bool)

(declare-fun e!3282293 () Bool)

(assert (=> b!5278470 (= e!3282293 e!3282296)))

(declare-fun res!2238722 () Bool)

(assert (=> b!5278470 (=> res!2238722 e!3282296)))

(assert (=> b!5278470 (= res!2238722 e!3282291)))

(declare-fun res!2238721 () Bool)

(assert (=> b!5278470 (=> (not res!2238721) (not e!3282291))))

(declare-fun lt!2157885 () (InoxSet Context!8566))

(declare-fun lt!2157864 () Bool)

(assert (=> b!5278470 (= res!2238721 (not (= lt!2157864 (matchZipper!1143 lt!2157885 (t!374199 s!2326)))))))

(declare-fun lt!2157872 () (InoxSet Context!8566))

(assert (=> b!5278470 (= (matchZipper!1143 lt!2157872 (t!374199 s!2326)) e!3282302)))

(declare-fun res!2238727 () Bool)

(assert (=> b!5278470 (=> res!2238727 e!3282302)))

(declare-fun lt!2157887 () Bool)

(assert (=> b!5278470 (= res!2238727 lt!2157887)))

(declare-fun lt!2157888 () Unit!153114)

(declare-fun lt!2157861 () (InoxSet Context!8566))

(assert (=> b!5278470 (= lt!2157888 (lemmaZipperConcatMatchesSameAsBothZippers!136 lt!2157861 lt!2157875 (t!374199 s!2326)))))

(declare-fun lt!2157874 () Context!8566)

(assert (=> b!5278470 (= (flatMap!626 lt!2157870 lambda!266523) (derivationStepZipperUp!271 lt!2157874 (h!67322 s!2326)))))

(declare-fun lt!2157879 () Unit!153114)

(assert (=> b!5278470 (= lt!2157879 (lemmaFlatMapOnSingletonSet!158 lt!2157870 lt!2157874 lambda!266523))))

(declare-fun b!5278471 () Bool)

(declare-fun res!2238735 () Bool)

(assert (=> b!5278471 (=> (not res!2238735) (not e!3282303))))

(assert (=> b!5278471 (= res!2238735 (= (toList!8683 z!1189) zl!343))))

(declare-fun b!5278472 () Bool)

(declare-fun res!2238729 () Bool)

(assert (=> b!5278472 (=> res!2238729 e!3282297)))

(assert (=> b!5278472 (= res!2238729 (not ((_ is Cons!60872) (exprs!4783 (h!67321 zl!343)))))))

(declare-fun res!2238724 () Bool)

(assert (=> start!557386 (=> (not res!2238724) (not e!3282303))))

(declare-fun validRegex!6635 (Regex!14899) Bool)

(assert (=> start!557386 (= res!2238724 (validRegex!6635 r!7292))))

(assert (=> start!557386 e!3282303))

(assert (=> start!557386 e!3282294))

(declare-fun condSetEmpty!33821 () Bool)

(assert (=> start!557386 (= condSetEmpty!33821 (= z!1189 ((as const (Array Context!8566 Bool)) false)))))

(assert (=> start!557386 setRes!33821))

(declare-fun e!3282292 () Bool)

(assert (=> start!557386 e!3282292))

(assert (=> start!557386 e!3282288))

(declare-fun b!5278453 () Bool)

(declare-fun e!3282289 () Bool)

(declare-fun tp!1474851 () Bool)

(assert (=> b!5278453 (= e!3282289 tp!1474851)))

(declare-fun b!5278473 () Bool)

(assert (=> b!5278473 (= e!3282296 e!3282305)))

(declare-fun res!2238716 () Bool)

(assert (=> b!5278473 (=> res!2238716 e!3282305)))

(declare-fun zipperDepthTotal!60 (List!60997) Int)

(assert (=> b!5278473 (= res!2238716 (>= (zipperDepthTotal!60 lt!2157878) (zipperDepthTotal!60 zl!343)))))

(assert (=> b!5278473 (= lt!2157878 (Cons!60873 lt!2157877 Nil!60873))))

(declare-fun b!5278474 () Bool)

(assert (=> b!5278474 (= e!3282300 (matchZipper!1143 lt!2157860 (t!374199 s!2326)))))

(declare-fun b!5278475 () Bool)

(declare-fun tp!1474853 () Bool)

(assert (=> b!5278475 (= e!3282294 tp!1474853)))

(declare-fun b!5278476 () Bool)

(declare-fun e!3282299 () Bool)

(declare-fun lt!2157871 () (InoxSet Context!8566))

(assert (=> b!5278476 (= e!3282299 (not (matchZipper!1143 lt!2157871 (t!374199 s!2326))))))

(declare-fun b!5278477 () Bool)

(declare-fun res!2238731 () Bool)

(assert (=> b!5278477 (=> res!2238731 e!3282305)))

(declare-fun zipperDepth!16 (List!60997) Int)

(assert (=> b!5278477 (= res!2238731 (> (zipperDepth!16 lt!2157878) (zipperDepth!16 zl!343)))))

(declare-fun b!5278478 () Bool)

(declare-fun tp!1474852 () Bool)

(declare-fun inv!80494 (Context!8566) Bool)

(assert (=> b!5278478 (= e!3282292 (and (inv!80494 (h!67321 zl!343)) e!3282289 tp!1474852))))

(assert (=> b!5278479 (= e!3282297 e!3282290)))

(declare-fun res!2238715 () Bool)

(assert (=> b!5278479 (=> res!2238715 e!3282290)))

(declare-fun lt!2157867 () Bool)

(declare-fun lt!2157863 () Bool)

(assert (=> b!5278479 (= res!2238715 (or (not (= lt!2157863 lt!2157867)) ((_ is Nil!60874) s!2326)))))

(declare-fun Exists!2080 (Int) Bool)

(assert (=> b!5278479 (= (Exists!2080 lambda!266521) (Exists!2080 lambda!266522))))

(declare-fun lt!2157857 () Unit!153114)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!734 (Regex!14899 Regex!14899 List!60998) Unit!153114)

(assert (=> b!5278479 (= lt!2157857 (lemmaExistCutMatchRandMatchRSpecEquivalent!734 (regOne!30310 r!7292) (regTwo!30310 r!7292) s!2326))))

(assert (=> b!5278479 (= lt!2157867 (Exists!2080 lambda!266521))))

(declare-datatypes ((tuple2!64196 0))(
  ( (tuple2!64197 (_1!35401 List!60998) (_2!35401 List!60998)) )
))
(declare-datatypes ((Option!15010 0))(
  ( (None!15009) (Some!15009 (v!51038 tuple2!64196)) )
))
(declare-fun isDefined!11713 (Option!15010) Bool)

(declare-fun findConcatSeparation!1424 (Regex!14899 Regex!14899 List!60998 List!60998 List!60998) Option!15010)

(assert (=> b!5278479 (= lt!2157867 (isDefined!11713 (findConcatSeparation!1424 (regOne!30310 r!7292) (regTwo!30310 r!7292) Nil!60874 s!2326 s!2326)))))

(declare-fun lt!2157866 () Unit!153114)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1188 (Regex!14899 Regex!14899 List!60998) Unit!153114)

(assert (=> b!5278479 (= lt!2157866 (lemmaFindConcatSeparationEquivalentToExists!1188 (regOne!30310 r!7292) (regTwo!30310 r!7292) s!2326))))

(declare-fun b!5278480 () Bool)

(declare-fun e!3282298 () Bool)

(declare-fun e!3282287 () Bool)

(assert (=> b!5278480 (= e!3282298 e!3282287)))

(declare-fun res!2238714 () Bool)

(assert (=> b!5278480 (=> res!2238714 e!3282287)))

(assert (=> b!5278480 (= res!2238714 e!3282299)))

(declare-fun res!2238720 () Bool)

(assert (=> b!5278480 (=> (not res!2238720) (not e!3282299))))

(assert (=> b!5278480 (= res!2238720 (not (= lt!2157864 lt!2157887)))))

(assert (=> b!5278480 (= lt!2157864 (matchZipper!1143 lt!2157884 (t!374199 s!2326)))))

(declare-fun lt!2157876 () (InoxSet Context!8566))

(declare-fun e!3282306 () Bool)

(assert (=> b!5278480 (= (matchZipper!1143 lt!2157876 (t!374199 s!2326)) e!3282306)))

(declare-fun res!2238730 () Bool)

(assert (=> b!5278480 (=> res!2238730 e!3282306)))

(assert (=> b!5278480 (= res!2238730 lt!2157887)))

(assert (=> b!5278480 (= lt!2157887 (matchZipper!1143 lt!2157861 (t!374199 s!2326)))))

(declare-fun lt!2157882 () Unit!153114)

(assert (=> b!5278480 (= lt!2157882 (lemmaZipperConcatMatchesSameAsBothZippers!136 lt!2157861 lt!2157871 (t!374199 s!2326)))))

(declare-fun b!5278481 () Bool)

(assert (=> b!5278481 (= e!3282306 (matchZipper!1143 lt!2157871 (t!374199 s!2326)))))

(declare-fun b!5278482 () Bool)

(assert (=> b!5278482 (= e!3282303 (not e!3282297))))

(declare-fun res!2238723 () Bool)

(assert (=> b!5278482 (=> res!2238723 e!3282297)))

(assert (=> b!5278482 (= res!2238723 (not ((_ is Cons!60873) zl!343)))))

(declare-fun matchRSpec!2002 (Regex!14899 List!60998) Bool)

(assert (=> b!5278482 (= lt!2157863 (matchRSpec!2002 r!7292 s!2326))))

(declare-fun matchR!7084 (Regex!14899 List!60998) Bool)

(assert (=> b!5278482 (= lt!2157863 (matchR!7084 r!7292 s!2326))))

(declare-fun lt!2157859 () Unit!153114)

(declare-fun mainMatchTheorem!2002 (Regex!14899 List!60998) Unit!153114)

(assert (=> b!5278482 (= lt!2157859 (mainMatchTheorem!2002 r!7292 s!2326))))

(declare-fun setElem!33821 () Context!8566)

(declare-fun tp!1474848 () Bool)

(declare-fun setNonEmpty!33821 () Bool)

(declare-fun e!3282304 () Bool)

(assert (=> setNonEmpty!33821 (= setRes!33821 (and tp!1474848 (inv!80494 setElem!33821) e!3282304))))

(declare-fun setRest!33821 () (InoxSet Context!8566))

(assert (=> setNonEmpty!33821 (= z!1189 ((_ map or) (store ((as const (Array Context!8566 Bool)) false) setElem!33821 true) setRest!33821))))

(declare-fun b!5278483 () Bool)

(assert (=> b!5278483 (= e!3282287 e!3282293)))

(declare-fun res!2238733 () Bool)

(assert (=> b!5278483 (=> res!2238733 e!3282293)))

(assert (=> b!5278483 (= res!2238733 (not (= lt!2157885 lt!2157872)))))

(assert (=> b!5278483 (= lt!2157872 ((_ map or) lt!2157861 lt!2157875))))

(assert (=> b!5278483 (= lt!2157875 (derivationStepZipperUp!271 lt!2157874 (h!67322 s!2326)))))

(assert (=> b!5278483 (= (flatMap!626 lt!2157869 lambda!266523) (derivationStepZipperUp!271 lt!2157877 (h!67322 s!2326)))))

(declare-fun lt!2157883 () Unit!153114)

(assert (=> b!5278483 (= lt!2157883 (lemmaFlatMapOnSingletonSet!158 lt!2157869 lt!2157877 lambda!266523))))

(declare-fun lt!2157880 () (InoxSet Context!8566))

(assert (=> b!5278483 (= lt!2157880 (derivationStepZipperUp!271 lt!2157877 (h!67322 s!2326)))))

(assert (=> b!5278483 (= lt!2157885 (derivationStepZipper!1142 lt!2157869 (h!67322 s!2326)))))

(assert (=> b!5278483 (= lt!2157870 (store ((as const (Array Context!8566 Bool)) false) lt!2157874 true))))

(assert (=> b!5278483 (= lt!2157869 (store ((as const (Array Context!8566 Bool)) false) lt!2157877 true))))

(declare-fun lt!2157858 () List!60996)

(assert (=> b!5278483 (= lt!2157877 (Context!8567 lt!2157858))))

(declare-fun lt!2157856 () List!60996)

(assert (=> b!5278483 (= lt!2157858 (Cons!60872 (regOne!30310 (regOne!30310 r!7292)) lt!2157856))))

(declare-fun b!5278484 () Bool)

(declare-fun res!2238734 () Bool)

(assert (=> b!5278484 (=> res!2238734 e!3282305)))

(assert (=> b!5278484 (= res!2238734 (not (validRegex!6635 (generalisedConcat!568 lt!2157858))))))

(declare-fun b!5278485 () Bool)

(declare-fun tp!1474846 () Bool)

(assert (=> b!5278485 (= e!3282304 tp!1474846)))

(declare-fun b!5278486 () Bool)

(assert (=> b!5278486 (= e!3282294 tp_is_empty!39051)))

(declare-fun b!5278487 () Bool)

(assert (=> b!5278487 (= e!3282295 e!3282298)))

(declare-fun res!2238737 () Bool)

(assert (=> b!5278487 (=> res!2238737 e!3282298)))

(assert (=> b!5278487 (= res!2238737 (not (= lt!2157884 lt!2157876)))))

(assert (=> b!5278487 (= lt!2157876 ((_ map or) lt!2157861 lt!2157871))))

(assert (=> b!5278487 (= lt!2157871 (derivationStepZipperDown!347 (regTwo!30310 (regOne!30310 r!7292)) lt!2157862 (h!67322 s!2326)))))

(assert (=> b!5278487 (= lt!2157861 (derivationStepZipperDown!347 (regOne!30310 (regOne!30310 r!7292)) lt!2157874 (h!67322 s!2326)))))

(assert (=> b!5278487 (= lt!2157874 (Context!8567 lt!2157856))))

(assert (=> b!5278487 (= lt!2157856 (Cons!60872 (regTwo!30310 (regOne!30310 r!7292)) (t!374197 (exprs!4783 (h!67321 zl!343)))))))

(assert (= (and start!557386 res!2238724) b!5278471))

(assert (= (and b!5278471 res!2238735) b!5278452))

(assert (= (and b!5278452 res!2238719) b!5278482))

(assert (= (and b!5278482 (not res!2238723)) b!5278464))

(assert (= (and b!5278464 (not res!2238739)) b!5278466))

(assert (= (and b!5278466 (not res!2238732)) b!5278472))

(assert (= (and b!5278472 (not res!2238729)) b!5278465))

(assert (= (and b!5278465 (not res!2238736)) b!5278462))

(assert (= (and b!5278462 (not res!2238717)) b!5278479))

(assert (= (and b!5278479 (not res!2238715)) b!5278458))

(assert (= (and b!5278458 (not res!2238740)) b!5278455))

(assert (= (and b!5278455 c!914828) b!5278451))

(assert (= (and b!5278455 (not c!914828)) b!5278454))

(assert (= (and b!5278451 (not res!2238728)) b!5278474))

(assert (= (and b!5278455 (not res!2238725)) b!5278459))

(assert (= (and b!5278459 (not res!2238726)) b!5278487))

(assert (= (and b!5278487 (not res!2238737)) b!5278480))

(assert (= (and b!5278480 (not res!2238730)) b!5278481))

(assert (= (and b!5278480 res!2238720) b!5278476))

(assert (= (and b!5278480 (not res!2238714)) b!5278483))

(assert (= (and b!5278483 (not res!2238733)) b!5278470))

(assert (= (and b!5278470 (not res!2238727)) b!5278461))

(assert (= (and b!5278470 res!2238721) b!5278467))

(assert (= (and b!5278470 (not res!2238722)) b!5278450))

(assert (= (and b!5278450 (not res!2238738)) b!5278460))

(assert (= (and b!5278460 (not res!2238741)) b!5278473))

(assert (= (and b!5278473 (not res!2238716)) b!5278477))

(assert (= (and b!5278477 (not res!2238731)) b!5278484))

(assert (= (and b!5278484 (not res!2238734)) b!5278463))

(assert (= (and b!5278463 (not res!2238718)) b!5278456))

(assert (= (and start!557386 ((_ is ElementMatch!14899) r!7292)) b!5278486))

(assert (= (and start!557386 ((_ is Concat!23744) r!7292)) b!5278457))

(assert (= (and start!557386 ((_ is Star!14899) r!7292)) b!5278475))

(assert (= (and start!557386 ((_ is Union!14899) r!7292)) b!5278469))

(assert (= (and start!557386 condSetEmpty!33821) setIsEmpty!33821))

(assert (= (and start!557386 (not condSetEmpty!33821)) setNonEmpty!33821))

(assert (= setNonEmpty!33821 b!5278485))

(assert (= b!5278478 b!5278453))

(assert (= (and start!557386 ((_ is Cons!60873) zl!343)) b!5278478))

(assert (= (and start!557386 ((_ is Cons!60874) s!2326)) b!5278468))

(declare-fun m!6316492 () Bool)

(assert (=> b!5278474 m!6316492))

(declare-fun m!6316494 () Bool)

(assert (=> start!557386 m!6316494))

(declare-fun m!6316496 () Bool)

(assert (=> b!5278461 m!6316496))

(declare-fun m!6316498 () Bool)

(assert (=> b!5278465 m!6316498))

(assert (=> b!5278465 m!6316498))

(declare-fun m!6316500 () Bool)

(assert (=> b!5278465 m!6316500))

(declare-fun m!6316502 () Bool)

(assert (=> b!5278477 m!6316502))

(declare-fun m!6316504 () Bool)

(assert (=> b!5278477 m!6316504))

(declare-fun m!6316506 () Bool)

(assert (=> b!5278463 m!6316506))

(declare-fun m!6316508 () Bool)

(assert (=> b!5278455 m!6316508))

(declare-fun m!6316510 () Bool)

(assert (=> b!5278455 m!6316510))

(declare-fun m!6316512 () Bool)

(assert (=> b!5278455 m!6316512))

(declare-fun m!6316514 () Bool)

(assert (=> b!5278455 m!6316514))

(declare-fun m!6316516 () Bool)

(assert (=> b!5278455 m!6316516))

(declare-fun m!6316518 () Bool)

(assert (=> b!5278455 m!6316518))

(declare-fun m!6316520 () Bool)

(assert (=> b!5278455 m!6316520))

(declare-fun m!6316522 () Bool)

(assert (=> b!5278487 m!6316522))

(declare-fun m!6316524 () Bool)

(assert (=> b!5278487 m!6316524))

(declare-fun m!6316526 () Bool)

(assert (=> b!5278459 m!6316526))

(declare-fun m!6316528 () Bool)

(assert (=> b!5278466 m!6316528))

(declare-fun m!6316530 () Bool)

(assert (=> b!5278456 m!6316530))

(declare-fun m!6316532 () Bool)

(assert (=> b!5278473 m!6316532))

(declare-fun m!6316534 () Bool)

(assert (=> b!5278473 m!6316534))

(declare-fun m!6316536 () Bool)

(assert (=> b!5278460 m!6316536))

(declare-fun m!6316538 () Bool)

(assert (=> b!5278460 m!6316538))

(declare-fun m!6316540 () Bool)

(assert (=> b!5278452 m!6316540))

(declare-fun m!6316542 () Bool)

(assert (=> b!5278480 m!6316542))

(declare-fun m!6316544 () Bool)

(assert (=> b!5278480 m!6316544))

(declare-fun m!6316546 () Bool)

(assert (=> b!5278480 m!6316546))

(declare-fun m!6316548 () Bool)

(assert (=> b!5278480 m!6316548))

(declare-fun m!6316550 () Bool)

(assert (=> b!5278451 m!6316550))

(assert (=> b!5278451 m!6316542))

(declare-fun m!6316552 () Bool)

(assert (=> b!5278451 m!6316552))

(declare-fun m!6316554 () Bool)

(assert (=> b!5278464 m!6316554))

(declare-fun m!6316556 () Bool)

(assert (=> b!5278478 m!6316556))

(declare-fun m!6316558 () Bool)

(assert (=> b!5278481 m!6316558))

(declare-fun m!6316560 () Bool)

(assert (=> b!5278467 m!6316560))

(assert (=> b!5278467 m!6316560))

(declare-fun m!6316562 () Bool)

(assert (=> b!5278467 m!6316562))

(declare-fun m!6316564 () Bool)

(assert (=> b!5278484 m!6316564))

(assert (=> b!5278484 m!6316564))

(declare-fun m!6316566 () Bool)

(assert (=> b!5278484 m!6316566))

(declare-fun m!6316568 () Bool)

(assert (=> b!5278458 m!6316568))

(declare-fun m!6316570 () Bool)

(assert (=> b!5278483 m!6316570))

(declare-fun m!6316572 () Bool)

(assert (=> b!5278483 m!6316572))

(declare-fun m!6316574 () Bool)

(assert (=> b!5278483 m!6316574))

(declare-fun m!6316576 () Bool)

(assert (=> b!5278483 m!6316576))

(declare-fun m!6316578 () Bool)

(assert (=> b!5278483 m!6316578))

(declare-fun m!6316580 () Bool)

(assert (=> b!5278483 m!6316580))

(declare-fun m!6316582 () Bool)

(assert (=> b!5278483 m!6316582))

(assert (=> b!5278476 m!6316558))

(declare-fun m!6316584 () Bool)

(assert (=> b!5278479 m!6316584))

(declare-fun m!6316586 () Bool)

(assert (=> b!5278479 m!6316586))

(declare-fun m!6316588 () Bool)

(assert (=> b!5278479 m!6316588))

(assert (=> b!5278479 m!6316586))

(declare-fun m!6316590 () Bool)

(assert (=> b!5278479 m!6316590))

(declare-fun m!6316592 () Bool)

(assert (=> b!5278479 m!6316592))

(assert (=> b!5278479 m!6316590))

(declare-fun m!6316594 () Bool)

(assert (=> b!5278479 m!6316594))

(declare-fun m!6316596 () Bool)

(assert (=> b!5278471 m!6316596))

(declare-fun m!6316598 () Bool)

(assert (=> b!5278482 m!6316598))

(declare-fun m!6316600 () Bool)

(assert (=> b!5278482 m!6316600))

(declare-fun m!6316602 () Bool)

(assert (=> b!5278482 m!6316602))

(declare-fun m!6316604 () Bool)

(assert (=> setNonEmpty!33821 m!6316604))

(assert (=> b!5278470 m!6316572))

(declare-fun m!6316606 () Bool)

(assert (=> b!5278470 m!6316606))

(declare-fun m!6316608 () Bool)

(assert (=> b!5278470 m!6316608))

(declare-fun m!6316610 () Bool)

(assert (=> b!5278470 m!6316610))

(declare-fun m!6316612 () Bool)

(assert (=> b!5278470 m!6316612))

(declare-fun m!6316614 () Bool)

(assert (=> b!5278470 m!6316614))

(check-sat (not b!5278483) (not b!5278475) (not b!5278473) (not b!5278469) (not b!5278461) (not b!5278482) (not b!5278458) (not setNonEmpty!33821) (not b!5278453) (not b!5278455) (not b!5278480) (not b!5278470) (not b!5278466) (not b!5278476) (not b!5278474) (not b!5278465) (not b!5278477) (not b!5278468) (not b!5278459) (not b!5278478) (not b!5278481) (not b!5278464) (not b!5278467) tp_is_empty!39051 (not b!5278471) (not b!5278485) (not start!557386) (not b!5278451) (not b!5278479) (not b!5278484) (not b!5278463) (not b!5278457) (not b!5278487) (not b!5278456) (not b!5278452) (not b!5278460))
(check-sat)
