; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654496 () Bool)

(assert start!654496)

(declare-fun b!6747864 () Bool)

(assert (=> b!6747864 true))

(assert (=> b!6747864 true))

(declare-fun lambda!379451 () Int)

(declare-fun lambda!379450 () Int)

(assert (=> b!6747864 (not (= lambda!379451 lambda!379450))))

(assert (=> b!6747864 true))

(assert (=> b!6747864 true))

(declare-fun lambda!379452 () Int)

(assert (=> b!6747864 (not (= lambda!379452 lambda!379450))))

(assert (=> b!6747864 (not (= lambda!379452 lambda!379451))))

(assert (=> b!6747864 true))

(assert (=> b!6747864 true))

(declare-fun b!6747867 () Bool)

(assert (=> b!6747867 true))

(declare-fun b!6747857 () Bool)

(declare-fun e!4075459 () Bool)

(declare-fun e!4075447 () Bool)

(assert (=> b!6747857 (= e!4075459 e!4075447)))

(declare-fun res!2760188 () Bool)

(assert (=> b!6747857 (=> res!2760188 e!4075447)))

(declare-datatypes ((C!33428 0))(
  ( (C!33429 (val!26416 Int)) )
))
(declare-datatypes ((List!66036 0))(
  ( (Nil!65912) (Cons!65912 (h!72360 C!33428) (t!379737 List!66036)) )
))
(declare-fun s!2326 () List!66036)

(declare-datatypes ((Regex!16579 0))(
  ( (ElementMatch!16579 (c!1252013 C!33428)) (Concat!25424 (regOne!33670 Regex!16579) (regTwo!33670 Regex!16579)) (EmptyExpr!16579) (Star!16579 (reg!16908 Regex!16579)) (EmptyLang!16579) (Union!16579 (regOne!33671 Regex!16579) (regTwo!33671 Regex!16579)) )
))
(declare-datatypes ((List!66037 0))(
  ( (Nil!65913) (Cons!65913 (h!72361 Regex!16579) (t!379738 List!66037)) )
))
(declare-datatypes ((Context!11926 0))(
  ( (Context!11927 (exprs!6463 List!66037)) )
))
(declare-fun lt!2440525 () Context!11926)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2440524 () (InoxSet Context!11926))

(declare-fun r!7292 () Regex!16579)

(declare-fun derivationStepZipperDown!1807 (Regex!16579 Context!11926 C!33428) (InoxSet Context!11926))

(assert (=> b!6747857 (= res!2760188 (not (= lt!2440524 (derivationStepZipperDown!1807 (reg!16908 r!7292) lt!2440525 (h!72360 s!2326)))))))

(declare-fun lt!2440528 () List!66037)

(assert (=> b!6747857 (= lt!2440525 (Context!11927 lt!2440528))))

(declare-fun lt!2440521 () Context!11926)

(declare-fun lt!2440523 () (InoxSet Context!11926))

(declare-fun lambda!379453 () Int)

(declare-fun flatMap!2060 ((InoxSet Context!11926) Int) (InoxSet Context!11926))

(declare-fun derivationStepZipperUp!1733 (Context!11926 C!33428) (InoxSet Context!11926))

(assert (=> b!6747857 (= (flatMap!2060 lt!2440523 lambda!379453) (derivationStepZipperUp!1733 lt!2440521 (h!72360 s!2326)))))

(declare-datatypes ((Unit!159849 0))(
  ( (Unit!159850) )
))
(declare-fun lt!2440537 () Unit!159849)

(declare-fun lemmaFlatMapOnSingletonSet!1586 ((InoxSet Context!11926) Context!11926 Int) Unit!159849)

(assert (=> b!6747857 (= lt!2440537 (lemmaFlatMapOnSingletonSet!1586 lt!2440523 lt!2440521 lambda!379453))))

(declare-fun lt!2440530 () (InoxSet Context!11926))

(assert (=> b!6747857 (= lt!2440530 (derivationStepZipperUp!1733 lt!2440521 (h!72360 s!2326)))))

(assert (=> b!6747857 (= lt!2440523 (store ((as const (Array Context!11926 Bool)) false) lt!2440521 true))))

(assert (=> b!6747857 (= lt!2440521 (Context!11927 (Cons!65913 (reg!16908 r!7292) lt!2440528)))))

(assert (=> b!6747857 (= lt!2440528 (Cons!65913 r!7292 Nil!65913))))

(declare-fun b!6747858 () Bool)

(declare-fun res!2760202 () Bool)

(declare-fun e!4075455 () Bool)

(assert (=> b!6747858 (=> res!2760202 e!4075455)))

(get-info :version)

(assert (=> b!6747858 (= res!2760202 ((_ is Nil!65912) s!2326))))

(declare-fun b!6747859 () Bool)

(declare-fun e!4075453 () Bool)

(declare-fun e!4075450 () Bool)

(assert (=> b!6747859 (= e!4075453 e!4075450)))

(declare-fun res!2760199 () Bool)

(assert (=> b!6747859 (=> (not res!2760199) (not e!4075450))))

(declare-fun lt!2440543 () Regex!16579)

(assert (=> b!6747859 (= res!2760199 (= r!7292 lt!2440543))))

(declare-datatypes ((List!66038 0))(
  ( (Nil!65914) (Cons!65914 (h!72362 Context!11926) (t!379739 List!66038)) )
))
(declare-fun zl!343 () List!66038)

(declare-fun unfocusZipper!2321 (List!66038) Regex!16579)

(assert (=> b!6747859 (= lt!2440543 (unfocusZipper!2321 zl!343))))

(declare-fun b!6747860 () Bool)

(declare-fun res!2760191 () Bool)

(assert (=> b!6747860 (=> (not res!2760191) (not e!4075453))))

(declare-fun z!1189 () (InoxSet Context!11926))

(declare-fun toList!10363 ((InoxSet Context!11926)) List!66038)

(assert (=> b!6747860 (= res!2760191 (= (toList!10363 z!1189) zl!343))))

(declare-fun b!6747861 () Bool)

(declare-fun res!2760193 () Bool)

(assert (=> b!6747861 (=> res!2760193 e!4075447)))

(assert (=> b!6747861 (= res!2760193 (or (not (= lt!2440543 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6747862 () Bool)

(declare-fun res!2760180 () Bool)

(declare-fun e!4075452 () Bool)

(assert (=> b!6747862 (=> res!2760180 e!4075452)))

(assert (=> b!6747862 (= res!2760180 (not ((_ is Cons!65913) (exprs!6463 (h!72362 zl!343)))))))

(declare-fun res!2760195 () Bool)

(assert (=> start!654496 (=> (not res!2760195) (not e!4075453))))

(declare-fun validRegex!8315 (Regex!16579) Bool)

(assert (=> start!654496 (= res!2760195 (validRegex!8315 r!7292))))

(assert (=> start!654496 e!4075453))

(declare-fun e!4075454 () Bool)

(assert (=> start!654496 e!4075454))

(declare-fun condSetEmpty!46111 () Bool)

(assert (=> start!654496 (= condSetEmpty!46111 (= z!1189 ((as const (Array Context!11926 Bool)) false)))))

(declare-fun setRes!46111 () Bool)

(assert (=> start!654496 setRes!46111))

(declare-fun e!4075446 () Bool)

(assert (=> start!654496 e!4075446))

(declare-fun e!4075456 () Bool)

(assert (=> start!654496 e!4075456))

(declare-fun b!6747863 () Bool)

(declare-fun res!2760189 () Bool)

(declare-fun e!4075458 () Bool)

(assert (=> b!6747863 (=> res!2760189 e!4075458)))

(assert (=> b!6747863 (= res!2760189 (not (= (unfocusZipper!2321 (Cons!65914 lt!2440525 Nil!65914)) r!7292)))))

(assert (=> b!6747864 (= e!4075452 e!4075455)))

(declare-fun res!2760185 () Bool)

(assert (=> b!6747864 (=> res!2760185 e!4075455)))

(declare-fun lt!2440527 () Bool)

(declare-fun e!4075445 () Bool)

(assert (=> b!6747864 (= res!2760185 (not (= lt!2440527 e!4075445)))))

(declare-fun res!2760198 () Bool)

(assert (=> b!6747864 (=> res!2760198 e!4075445)))

(declare-fun isEmpty!38265 (List!66036) Bool)

(assert (=> b!6747864 (= res!2760198 (isEmpty!38265 s!2326))))

(declare-fun Exists!3647 (Int) Bool)

(assert (=> b!6747864 (= (Exists!3647 lambda!379450) (Exists!3647 lambda!379452))))

(declare-fun lt!2440536 () Unit!159849)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2174 (Regex!16579 Regex!16579 List!66036) Unit!159849)

(assert (=> b!6747864 (= lt!2440536 (lemmaExistCutMatchRandMatchRSpecEquivalent!2174 (reg!16908 r!7292) r!7292 s!2326))))

(assert (=> b!6747864 (= (Exists!3647 lambda!379450) (Exists!3647 lambda!379451))))

(declare-fun lt!2440539 () Unit!159849)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!738 (Regex!16579 List!66036) Unit!159849)

(assert (=> b!6747864 (= lt!2440539 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!738 (reg!16908 r!7292) s!2326))))

(declare-fun lt!2440532 () Bool)

(assert (=> b!6747864 (= lt!2440532 (Exists!3647 lambda!379450))))

(declare-datatypes ((tuple2!67108 0))(
  ( (tuple2!67109 (_1!36857 List!66036) (_2!36857 List!66036)) )
))
(declare-datatypes ((Option!16466 0))(
  ( (None!16465) (Some!16465 (v!52665 tuple2!67108)) )
))
(declare-fun isDefined!13169 (Option!16466) Bool)

(declare-fun findConcatSeparation!2880 (Regex!16579 Regex!16579 List!66036 List!66036 List!66036) Option!16466)

(assert (=> b!6747864 (= lt!2440532 (isDefined!13169 (findConcatSeparation!2880 (reg!16908 r!7292) r!7292 Nil!65912 s!2326 s!2326)))))

(declare-fun lt!2440541 () Unit!159849)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2644 (Regex!16579 Regex!16579 List!66036) Unit!159849)

(assert (=> b!6747864 (= lt!2440541 (lemmaFindConcatSeparationEquivalentToExists!2644 (reg!16908 r!7292) r!7292 s!2326))))

(declare-fun b!6747865 () Bool)

(declare-fun e!4075448 () Bool)

(assert (=> b!6747865 (= e!4075448 e!4075458)))

(declare-fun res!2760186 () Bool)

(assert (=> b!6747865 (=> res!2760186 e!4075458)))

(declare-fun lt!2440534 () (InoxSet Context!11926))

(declare-fun derivationStepZipper!2523 ((InoxSet Context!11926) C!33428) (InoxSet Context!11926))

(assert (=> b!6747865 (= res!2760186 (not (= lt!2440524 (derivationStepZipper!2523 lt!2440534 (h!72360 s!2326)))))))

(assert (=> b!6747865 (= (flatMap!2060 lt!2440534 lambda!379453) (derivationStepZipperUp!1733 lt!2440525 (h!72360 s!2326)))))

(declare-fun lt!2440529 () Unit!159849)

(assert (=> b!6747865 (= lt!2440529 (lemmaFlatMapOnSingletonSet!1586 lt!2440534 lt!2440525 lambda!379453))))

(declare-fun lt!2440531 () Context!11926)

(declare-fun lt!2440522 () (InoxSet Context!11926))

(assert (=> b!6747865 (= (flatMap!2060 lt!2440522 lambda!379453) (derivationStepZipperUp!1733 lt!2440531 (h!72360 s!2326)))))

(declare-fun lt!2440519 () Unit!159849)

(assert (=> b!6747865 (= lt!2440519 (lemmaFlatMapOnSingletonSet!1586 lt!2440522 lt!2440531 lambda!379453))))

(declare-fun lt!2440544 () (InoxSet Context!11926))

(assert (=> b!6747865 (= lt!2440544 (derivationStepZipperUp!1733 lt!2440525 (h!72360 s!2326)))))

(declare-fun lt!2440542 () (InoxSet Context!11926))

(assert (=> b!6747865 (= lt!2440542 (derivationStepZipperUp!1733 lt!2440531 (h!72360 s!2326)))))

(assert (=> b!6747865 (= lt!2440534 (store ((as const (Array Context!11926 Bool)) false) lt!2440525 true))))

(assert (=> b!6747865 (= lt!2440522 (store ((as const (Array Context!11926 Bool)) false) lt!2440531 true))))

(assert (=> b!6747865 (= lt!2440531 (Context!11927 (Cons!65913 (reg!16908 r!7292) Nil!65913)))))

(declare-fun b!6747866 () Bool)

(declare-fun tp!1849372 () Bool)

(declare-fun tp!1849371 () Bool)

(assert (=> b!6747866 (= e!4075454 (and tp!1849372 tp!1849371))))

(declare-fun e!4075449 () Bool)

(assert (=> b!6747867 (= e!4075449 e!4075459)))

(declare-fun res!2760181 () Bool)

(assert (=> b!6747867 (=> res!2760181 e!4075459)))

(declare-fun lt!2440518 () (InoxSet Context!11926))

(assert (=> b!6747867 (= res!2760181 (not (= lt!2440524 lt!2440518)))))

(assert (=> b!6747867 (= (flatMap!2060 z!1189 lambda!379453) (derivationStepZipperUp!1733 (h!72362 zl!343) (h!72360 s!2326)))))

(declare-fun lt!2440526 () Unit!159849)

(assert (=> b!6747867 (= lt!2440526 (lemmaFlatMapOnSingletonSet!1586 z!1189 (h!72362 zl!343) lambda!379453))))

(declare-fun b!6747868 () Bool)

(declare-fun e!4075451 () Bool)

(declare-fun tp!1849375 () Bool)

(declare-fun inv!84694 (Context!11926) Bool)

(assert (=> b!6747868 (= e!4075446 (and (inv!84694 (h!72362 zl!343)) e!4075451 tp!1849375))))

(declare-fun b!6747869 () Bool)

(assert (=> b!6747869 (= e!4075445 lt!2440532)))

(declare-fun b!6747870 () Bool)

(declare-fun tp!1849373 () Bool)

(declare-fun tp!1849368 () Bool)

(assert (=> b!6747870 (= e!4075454 (and tp!1849373 tp!1849368))))

(declare-fun b!6747871 () Bool)

(declare-fun res!2760187 () Bool)

(assert (=> b!6747871 (=> res!2760187 e!4075458)))

(assert (=> b!6747871 (= res!2760187 (not (= (unfocusZipper!2321 (Cons!65914 lt!2440531 Nil!65914)) (reg!16908 r!7292))))))

(declare-fun b!6747872 () Bool)

(declare-fun res!2760190 () Bool)

(assert (=> b!6747872 (=> res!2760190 e!4075452)))

(declare-fun generalisedConcat!2176 (List!66037) Regex!16579)

(assert (=> b!6747872 (= res!2760190 (not (= r!7292 (generalisedConcat!2176 (exprs!6463 (h!72362 zl!343))))))))

(declare-fun b!6747873 () Bool)

(assert (=> b!6747873 (= e!4075455 e!4075449)))

(declare-fun res!2760194 () Bool)

(assert (=> b!6747873 (=> res!2760194 e!4075449)))

(declare-fun lt!2440540 () (InoxSet Context!11926))

(assert (=> b!6747873 (= res!2760194 (not (= lt!2440540 lt!2440518)))))

(assert (=> b!6747873 (= lt!2440518 (derivationStepZipperDown!1807 r!7292 (Context!11927 Nil!65913) (h!72360 s!2326)))))

(assert (=> b!6747873 (= lt!2440540 (derivationStepZipperUp!1733 (Context!11927 (Cons!65913 r!7292 Nil!65913)) (h!72360 s!2326)))))

(assert (=> b!6747873 (= lt!2440524 (derivationStepZipper!2523 z!1189 (h!72360 s!2326)))))

(declare-fun b!6747874 () Bool)

(declare-fun tp_is_empty!42411 () Bool)

(declare-fun tp!1849369 () Bool)

(assert (=> b!6747874 (= e!4075456 (and tp_is_empty!42411 tp!1849369))))

(declare-fun b!6747875 () Bool)

(declare-fun e!4075457 () Bool)

(assert (=> b!6747875 (= e!4075458 e!4075457)))

(declare-fun res!2760178 () Bool)

(assert (=> b!6747875 (=> res!2760178 e!4075457)))

(declare-fun lt!2440535 () Bool)

(assert (=> b!6747875 (= res!2760178 (not lt!2440535))))

(declare-fun e!4075462 () Bool)

(assert (=> b!6747875 e!4075462))

(declare-fun res!2760183 () Bool)

(assert (=> b!6747875 (=> (not res!2760183) (not e!4075462))))

(declare-fun lt!2440538 () Regex!16579)

(declare-fun matchRSpec!3680 (Regex!16579 List!66036) Bool)

(assert (=> b!6747875 (= res!2760183 (= lt!2440535 (matchRSpec!3680 lt!2440538 s!2326)))))

(declare-fun matchR!8762 (Regex!16579 List!66036) Bool)

(assert (=> b!6747875 (= lt!2440535 (matchR!8762 lt!2440538 s!2326))))

(declare-fun lt!2440533 () Unit!159849)

(declare-fun mainMatchTheorem!3680 (Regex!16579 List!66036) Unit!159849)

(assert (=> b!6747875 (= lt!2440533 (mainMatchTheorem!3680 lt!2440538 s!2326))))

(declare-fun b!6747876 () Bool)

(assert (=> b!6747876 (= e!4075457 (validRegex!8315 r!7292))))

(declare-fun b!6747877 () Bool)

(declare-fun e!4075460 () Bool)

(assert (=> b!6747877 (= e!4075462 e!4075460)))

(declare-fun res!2760197 () Bool)

(assert (=> b!6747877 (=> res!2760197 e!4075460)))

(assert (=> b!6747877 (= res!2760197 (not lt!2440535))))

(declare-fun b!6747878 () Bool)

(assert (=> b!6747878 (= e!4075460 (= (Exists!3647 lambda!379450) (Exists!3647 lambda!379451)))))

(declare-fun setNonEmpty!46111 () Bool)

(declare-fun e!4075461 () Bool)

(declare-fun setElem!46111 () Context!11926)

(declare-fun tp!1849370 () Bool)

(assert (=> setNonEmpty!46111 (= setRes!46111 (and tp!1849370 (inv!84694 setElem!46111) e!4075461))))

(declare-fun setRest!46111 () (InoxSet Context!11926))

(assert (=> setNonEmpty!46111 (= z!1189 ((_ map or) (store ((as const (Array Context!11926 Bool)) false) setElem!46111 true) setRest!46111))))

(declare-fun b!6747879 () Bool)

(declare-fun tp!1849377 () Bool)

(assert (=> b!6747879 (= e!4075451 tp!1849377)))

(declare-fun b!6747880 () Bool)

(declare-fun res!2760192 () Bool)

(assert (=> b!6747880 (=> res!2760192 e!4075452)))

(assert (=> b!6747880 (= res!2760192 (or ((_ is EmptyExpr!16579) r!7292) ((_ is EmptyLang!16579) r!7292) ((_ is ElementMatch!16579) r!7292) ((_ is Union!16579) r!7292) ((_ is Concat!25424) r!7292)))))

(declare-fun b!6747881 () Bool)

(assert (=> b!6747881 (= e!4075450 (not e!4075452))))

(declare-fun res!2760179 () Bool)

(assert (=> b!6747881 (=> res!2760179 e!4075452)))

(assert (=> b!6747881 (= res!2760179 (not ((_ is Cons!65914) zl!343)))))

(assert (=> b!6747881 (= lt!2440527 (matchRSpec!3680 r!7292 s!2326))))

(assert (=> b!6747881 (= lt!2440527 (matchR!8762 r!7292 s!2326))))

(declare-fun lt!2440520 () Unit!159849)

(assert (=> b!6747881 (= lt!2440520 (mainMatchTheorem!3680 r!7292 s!2326))))

(declare-fun b!6747882 () Bool)

(declare-fun res!2760200 () Bool)

(assert (=> b!6747882 (=> res!2760200 e!4075457)))

(assert (=> b!6747882 (= res!2760200 (not (validRegex!8315 (reg!16908 r!7292))))))

(declare-fun b!6747883 () Bool)

(declare-fun tp!1849374 () Bool)

(assert (=> b!6747883 (= e!4075461 tp!1849374)))

(declare-fun b!6747884 () Bool)

(declare-fun tp!1849376 () Bool)

(assert (=> b!6747884 (= e!4075454 tp!1849376)))

(declare-fun b!6747885 () Bool)

(assert (=> b!6747885 (= e!4075447 e!4075448)))

(declare-fun res!2760196 () Bool)

(assert (=> b!6747885 (=> res!2760196 e!4075448)))

(assert (=> b!6747885 (= res!2760196 (not (= (unfocusZipper!2321 (Cons!65914 lt!2440521 Nil!65914)) lt!2440538)))))

(assert (=> b!6747885 (= lt!2440538 (Concat!25424 (reg!16908 r!7292) r!7292))))

(declare-fun b!6747886 () Bool)

(declare-fun res!2760201 () Bool)

(assert (=> b!6747886 (=> res!2760201 e!4075452)))

(declare-fun generalisedUnion!2423 (List!66037) Regex!16579)

(declare-fun unfocusZipperList!2000 (List!66038) List!66037)

(assert (=> b!6747886 (= res!2760201 (not (= r!7292 (generalisedUnion!2423 (unfocusZipperList!2000 zl!343)))))))

(declare-fun setIsEmpty!46111 () Bool)

(assert (=> setIsEmpty!46111 setRes!46111))

(declare-fun b!6747887 () Bool)

(declare-fun res!2760184 () Bool)

(assert (=> b!6747887 (=> res!2760184 e!4075452)))

(declare-fun isEmpty!38266 (List!66038) Bool)

(assert (=> b!6747887 (= res!2760184 (not (isEmpty!38266 (t!379739 zl!343))))))

(declare-fun b!6747888 () Bool)

(assert (=> b!6747888 (= e!4075454 tp_is_empty!42411)))

(declare-fun b!6747889 () Bool)

(declare-fun res!2760182 () Bool)

(assert (=> b!6747889 (=> res!2760182 e!4075447)))

(declare-fun matchZipper!2565 ((InoxSet Context!11926) List!66036) Bool)

(assert (=> b!6747889 (= res!2760182 (not (= (matchZipper!2565 lt!2440523 s!2326) (matchZipper!2565 (derivationStepZipper!2523 lt!2440523 (h!72360 s!2326)) (t!379737 s!2326)))))))

(assert (= (and start!654496 res!2760195) b!6747860))

(assert (= (and b!6747860 res!2760191) b!6747859))

(assert (= (and b!6747859 res!2760199) b!6747881))

(assert (= (and b!6747881 (not res!2760179)) b!6747887))

(assert (= (and b!6747887 (not res!2760184)) b!6747872))

(assert (= (and b!6747872 (not res!2760190)) b!6747862))

(assert (= (and b!6747862 (not res!2760180)) b!6747886))

(assert (= (and b!6747886 (not res!2760201)) b!6747880))

(assert (= (and b!6747880 (not res!2760192)) b!6747864))

(assert (= (and b!6747864 (not res!2760198)) b!6747869))

(assert (= (and b!6747864 (not res!2760185)) b!6747858))

(assert (= (and b!6747858 (not res!2760202)) b!6747873))

(assert (= (and b!6747873 (not res!2760194)) b!6747867))

(assert (= (and b!6747867 (not res!2760181)) b!6747857))

(assert (= (and b!6747857 (not res!2760188)) b!6747889))

(assert (= (and b!6747889 (not res!2760182)) b!6747861))

(assert (= (and b!6747861 (not res!2760193)) b!6747885))

(assert (= (and b!6747885 (not res!2760196)) b!6747865))

(assert (= (and b!6747865 (not res!2760186)) b!6747871))

(assert (= (and b!6747871 (not res!2760187)) b!6747863))

(assert (= (and b!6747863 (not res!2760189)) b!6747875))

(assert (= (and b!6747875 res!2760183) b!6747877))

(assert (= (and b!6747877 (not res!2760197)) b!6747878))

(assert (= (and b!6747875 (not res!2760178)) b!6747882))

(assert (= (and b!6747882 (not res!2760200)) b!6747876))

(assert (= (and start!654496 ((_ is ElementMatch!16579) r!7292)) b!6747888))

(assert (= (and start!654496 ((_ is Concat!25424) r!7292)) b!6747870))

(assert (= (and start!654496 ((_ is Star!16579) r!7292)) b!6747884))

(assert (= (and start!654496 ((_ is Union!16579) r!7292)) b!6747866))

(assert (= (and start!654496 condSetEmpty!46111) setIsEmpty!46111))

(assert (= (and start!654496 (not condSetEmpty!46111)) setNonEmpty!46111))

(assert (= setNonEmpty!46111 b!6747883))

(assert (= b!6747868 b!6747879))

(assert (= (and start!654496 ((_ is Cons!65914) zl!343)) b!6747868))

(assert (= (and start!654496 ((_ is Cons!65912) s!2326)) b!6747874))

(declare-fun m!7502602 () Bool)

(assert (=> b!6747882 m!7502602))

(declare-fun m!7502604 () Bool)

(assert (=> b!6747887 m!7502604))

(declare-fun m!7502606 () Bool)

(assert (=> b!6747886 m!7502606))

(assert (=> b!6747886 m!7502606))

(declare-fun m!7502608 () Bool)

(assert (=> b!6747886 m!7502608))

(declare-fun m!7502610 () Bool)

(assert (=> b!6747860 m!7502610))

(declare-fun m!7502612 () Bool)

(assert (=> b!6747867 m!7502612))

(declare-fun m!7502614 () Bool)

(assert (=> b!6747867 m!7502614))

(declare-fun m!7502616 () Bool)

(assert (=> b!6747867 m!7502616))

(declare-fun m!7502618 () Bool)

(assert (=> b!6747865 m!7502618))

(declare-fun m!7502620 () Bool)

(assert (=> b!6747865 m!7502620))

(declare-fun m!7502622 () Bool)

(assert (=> b!6747865 m!7502622))

(declare-fun m!7502624 () Bool)

(assert (=> b!6747865 m!7502624))

(declare-fun m!7502626 () Bool)

(assert (=> b!6747865 m!7502626))

(declare-fun m!7502628 () Bool)

(assert (=> b!6747865 m!7502628))

(declare-fun m!7502630 () Bool)

(assert (=> b!6747865 m!7502630))

(declare-fun m!7502632 () Bool)

(assert (=> b!6747865 m!7502632))

(declare-fun m!7502634 () Bool)

(assert (=> b!6747865 m!7502634))

(declare-fun m!7502636 () Bool)

(assert (=> b!6747881 m!7502636))

(declare-fun m!7502638 () Bool)

(assert (=> b!6747881 m!7502638))

(declare-fun m!7502640 () Bool)

(assert (=> b!6747881 m!7502640))

(declare-fun m!7502642 () Bool)

(assert (=> start!654496 m!7502642))

(declare-fun m!7502644 () Bool)

(assert (=> b!6747864 m!7502644))

(declare-fun m!7502646 () Bool)

(assert (=> b!6747864 m!7502646))

(declare-fun m!7502648 () Bool)

(assert (=> b!6747864 m!7502648))

(declare-fun m!7502650 () Bool)

(assert (=> b!6747864 m!7502650))

(assert (=> b!6747864 m!7502650))

(declare-fun m!7502652 () Bool)

(assert (=> b!6747864 m!7502652))

(declare-fun m!7502654 () Bool)

(assert (=> b!6747864 m!7502654))

(declare-fun m!7502656 () Bool)

(assert (=> b!6747864 m!7502656))

(declare-fun m!7502658 () Bool)

(assert (=> b!6747864 m!7502658))

(declare-fun m!7502660 () Bool)

(assert (=> b!6747864 m!7502660))

(assert (=> b!6747864 m!7502650))

(assert (=> b!6747864 m!7502656))

(declare-fun m!7502662 () Bool)

(assert (=> b!6747885 m!7502662))

(declare-fun m!7502664 () Bool)

(assert (=> b!6747875 m!7502664))

(declare-fun m!7502666 () Bool)

(assert (=> b!6747875 m!7502666))

(declare-fun m!7502668 () Bool)

(assert (=> b!6747875 m!7502668))

(declare-fun m!7502670 () Bool)

(assert (=> b!6747889 m!7502670))

(declare-fun m!7502672 () Bool)

(assert (=> b!6747889 m!7502672))

(assert (=> b!6747889 m!7502672))

(declare-fun m!7502674 () Bool)

(assert (=> b!6747889 m!7502674))

(declare-fun m!7502676 () Bool)

(assert (=> b!6747871 m!7502676))

(declare-fun m!7502678 () Bool)

(assert (=> setNonEmpty!46111 m!7502678))

(declare-fun m!7502680 () Bool)

(assert (=> b!6747872 m!7502680))

(declare-fun m!7502682 () Bool)

(assert (=> b!6747868 m!7502682))

(declare-fun m!7502684 () Bool)

(assert (=> b!6747873 m!7502684))

(declare-fun m!7502686 () Bool)

(assert (=> b!6747873 m!7502686))

(declare-fun m!7502688 () Bool)

(assert (=> b!6747873 m!7502688))

(declare-fun m!7502690 () Bool)

(assert (=> b!6747857 m!7502690))

(declare-fun m!7502692 () Bool)

(assert (=> b!6747857 m!7502692))

(declare-fun m!7502694 () Bool)

(assert (=> b!6747857 m!7502694))

(declare-fun m!7502696 () Bool)

(assert (=> b!6747857 m!7502696))

(declare-fun m!7502698 () Bool)

(assert (=> b!6747857 m!7502698))

(declare-fun m!7502700 () Bool)

(assert (=> b!6747863 m!7502700))

(assert (=> b!6747876 m!7502642))

(assert (=> b!6747878 m!7502650))

(assert (=> b!6747878 m!7502644))

(declare-fun m!7502702 () Bool)

(assert (=> b!6747859 m!7502702))

(check-sat (not b!6747883) (not b!6747874) (not b!6747864) (not b!6747872) (not b!6747868) (not b!6747881) (not b!6747876) (not b!6747867) (not b!6747859) (not b!6747860) (not b!6747875) (not b!6747870) (not b!6747871) (not b!6747879) (not b!6747863) (not setNonEmpty!46111) tp_is_empty!42411 (not b!6747889) (not b!6747885) (not b!6747886) (not b!6747878) (not b!6747884) (not b!6747857) (not b!6747873) (not b!6747865) (not b!6747887) (not b!6747866) (not start!654496) (not b!6747882))
(check-sat)
