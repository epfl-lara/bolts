; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588656 () Bool)

(assert start!588656)

(declare-fun b!5718386 () Bool)

(assert (=> b!5718386 true))

(assert (=> b!5718386 true))

(declare-fun lambda!308952 () Int)

(declare-fun lambda!308951 () Int)

(assert (=> b!5718386 (not (= lambda!308952 lambda!308951))))

(assert (=> b!5718386 true))

(assert (=> b!5718386 true))

(declare-fun b!5718391 () Bool)

(assert (=> b!5718391 true))

(declare-fun b!5718374 () Bool)

(declare-fun e!3516546 () Bool)

(declare-fun e!3516556 () Bool)

(assert (=> b!5718374 (= e!3516546 e!3516556)))

(declare-fun res!2414425 () Bool)

(assert (=> b!5718374 (=> res!2414425 e!3516556)))

(declare-fun lt!2277711 () Bool)

(assert (=> b!5718374 (= res!2414425 lt!2277711)))

(declare-datatypes ((C!31700 0))(
  ( (C!31701 (val!25552 Int)) )
))
(declare-datatypes ((Regex!15715 0))(
  ( (ElementMatch!15715 (c!1008289 C!31700)) (Concat!24560 (regOne!31942 Regex!15715) (regTwo!31942 Regex!15715)) (EmptyExpr!15715) (Star!15715 (reg!16044 Regex!15715)) (EmptyLang!15715) (Union!15715 (regOne!31943 Regex!15715) (regTwo!31943 Regex!15715)) )
))
(declare-fun lt!2277714 () Regex!15715)

(declare-datatypes ((List!63444 0))(
  ( (Nil!63320) (Cons!63320 (h!69768 C!31700) (t!376766 List!63444)) )
))
(declare-fun s!2326 () List!63444)

(declare-fun matchR!7900 (Regex!15715 List!63444) Bool)

(declare-fun matchRSpec!2818 (Regex!15715 List!63444) Bool)

(assert (=> b!5718374 (= (matchR!7900 lt!2277714 s!2326) (matchRSpec!2818 lt!2277714 s!2326))))

(declare-datatypes ((Unit!156392 0))(
  ( (Unit!156393) )
))
(declare-fun lt!2277738 () Unit!156392)

(declare-fun mainMatchTheorem!2818 (Regex!15715 List!63444) Unit!156392)

(assert (=> b!5718374 (= lt!2277738 (mainMatchTheorem!2818 lt!2277714 s!2326))))

(declare-fun b!5718375 () Bool)

(declare-fun res!2414431 () Bool)

(declare-fun e!3516560 () Bool)

(assert (=> b!5718375 (=> res!2414431 e!3516560)))

(declare-datatypes ((List!63445 0))(
  ( (Nil!63321) (Cons!63321 (h!69769 Regex!15715) (t!376767 List!63445)) )
))
(declare-datatypes ((Context!10198 0))(
  ( (Context!10199 (exprs!5599 List!63445)) )
))
(declare-datatypes ((List!63446 0))(
  ( (Nil!63322) (Cons!63322 (h!69770 Context!10198) (t!376768 List!63446)) )
))
(declare-fun zl!343 () List!63446)

(declare-fun isEmpty!35193 (List!63446) Bool)

(assert (=> b!5718375 (= res!2414431 (not (isEmpty!35193 (t!376768 zl!343))))))

(declare-fun b!5718376 () Bool)

(declare-fun e!3516562 () Bool)

(declare-fun e!3516561 () Bool)

(assert (=> b!5718376 (= e!3516562 e!3516561)))

(declare-fun res!2414428 () Bool)

(assert (=> b!5718376 (=> res!2414428 e!3516561)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2277712 () (InoxSet Context!10198))

(declare-fun lt!2277721 () (InoxSet Context!10198))

(assert (=> b!5718376 (= res!2414428 (not (= lt!2277712 lt!2277721)))))

(declare-fun r!7292 () Regex!15715)

(declare-fun lt!2277732 () Context!10198)

(declare-fun derivationStepZipperDown!1057 (Regex!15715 Context!10198 C!31700) (InoxSet Context!10198))

(assert (=> b!5718376 (= lt!2277721 (derivationStepZipperDown!1057 (reg!16044 (regOne!31942 r!7292)) lt!2277732 (h!69768 s!2326)))))

(declare-fun lt!2277734 () List!63445)

(assert (=> b!5718376 (= lt!2277732 (Context!10199 lt!2277734))))

(declare-fun lt!2277731 () Regex!15715)

(assert (=> b!5718376 (= lt!2277734 (Cons!63321 lt!2277731 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5718376 (= lt!2277731 (Star!15715 (reg!16044 (regOne!31942 r!7292))))))

(declare-fun b!5718377 () Bool)

(declare-fun e!3516550 () Bool)

(declare-fun e!3516549 () Bool)

(assert (=> b!5718377 (= e!3516550 e!3516549)))

(declare-fun res!2414446 () Bool)

(assert (=> b!5718377 (=> res!2414446 e!3516549)))

(declare-fun lt!2277710 () Context!10198)

(declare-fun unfocusZipper!1457 (List!63446) Regex!15715)

(assert (=> b!5718377 (= res!2414446 (not (= (unfocusZipper!1457 (Cons!63322 lt!2277710 Nil!63322)) lt!2277714)))))

(declare-fun lt!2277724 () Regex!15715)

(assert (=> b!5718377 (= lt!2277714 (Concat!24560 (reg!16044 (regOne!31942 r!7292)) lt!2277724))))

(declare-fun b!5718378 () Bool)

(declare-fun e!3516555 () Bool)

(declare-fun e!3516563 () Bool)

(assert (=> b!5718378 (= e!3516555 e!3516563)))

(declare-fun res!2414444 () Bool)

(assert (=> b!5718378 (=> (not res!2414444) (not e!3516563))))

(declare-fun lt!2277717 () Regex!15715)

(assert (=> b!5718378 (= res!2414444 (= r!7292 lt!2277717))))

(assert (=> b!5718378 (= lt!2277717 (unfocusZipper!1457 zl!343))))

(declare-fun b!5718379 () Bool)

(declare-fun e!3516559 () Bool)

(declare-fun tp_is_empty!40683 () Bool)

(declare-fun tp!1583917 () Bool)

(assert (=> b!5718379 (= e!3516559 (and tp_is_empty!40683 tp!1583917))))

(declare-fun res!2414435 () Bool)

(assert (=> start!588656 (=> (not res!2414435) (not e!3516555))))

(declare-fun validRegex!7451 (Regex!15715) Bool)

(assert (=> start!588656 (= res!2414435 (validRegex!7451 r!7292))))

(assert (=> start!588656 e!3516555))

(declare-fun e!3516551 () Bool)

(assert (=> start!588656 e!3516551))

(declare-fun condSetEmpty!38305 () Bool)

(declare-fun z!1189 () (InoxSet Context!10198))

(assert (=> start!588656 (= condSetEmpty!38305 (= z!1189 ((as const (Array Context!10198 Bool)) false)))))

(declare-fun setRes!38305 () Bool)

(assert (=> start!588656 setRes!38305))

(declare-fun e!3516553 () Bool)

(assert (=> start!588656 e!3516553))

(assert (=> start!588656 e!3516559))

(declare-fun b!5718380 () Bool)

(declare-fun tp!1583913 () Bool)

(declare-fun tp!1583916 () Bool)

(assert (=> b!5718380 (= e!3516551 (and tp!1583913 tp!1583916))))

(declare-fun b!5718381 () Bool)

(declare-fun res!2414434 () Bool)

(declare-fun e!3516564 () Bool)

(assert (=> b!5718381 (=> res!2414434 e!3516564)))

(assert (=> b!5718381 (= res!2414434 (not (= lt!2277717 r!7292)))))

(declare-fun b!5718382 () Bool)

(assert (=> b!5718382 (= e!3516564 e!3516550)))

(declare-fun res!2414427 () Bool)

(assert (=> b!5718382 (=> res!2414427 e!3516550)))

(assert (=> b!5718382 (= res!2414427 (not (= r!7292 lt!2277724)))))

(assert (=> b!5718382 (= lt!2277724 (Concat!24560 lt!2277731 (regTwo!31942 r!7292)))))

(declare-fun b!5718383 () Bool)

(declare-fun e!3516554 () Bool)

(declare-fun tp!1583922 () Bool)

(assert (=> b!5718383 (= e!3516554 tp!1583922)))

(declare-fun b!5718384 () Bool)

(declare-fun e!3516558 () Bool)

(declare-fun lt!2277735 () (InoxSet Context!10198))

(declare-fun matchZipper!1853 ((InoxSet Context!10198) List!63444) Bool)

(assert (=> b!5718384 (= e!3516558 (matchZipper!1853 lt!2277735 (t!376766 s!2326)))))

(declare-fun b!5718385 () Bool)

(assert (=> b!5718385 (= e!3516549 e!3516546)))

(declare-fun res!2414441 () Bool)

(assert (=> b!5718385 (=> res!2414441 e!3516546)))

(declare-fun lt!2277713 () Context!10198)

(assert (=> b!5718385 (= res!2414441 (not (= (unfocusZipper!1457 (Cons!63322 lt!2277713 Nil!63322)) (reg!16044 (regOne!31942 r!7292)))))))

(declare-fun lt!2277718 () (InoxSet Context!10198))

(declare-fun lambda!308953 () Int)

(declare-fun flatMap!1328 ((InoxSet Context!10198) Int) (InoxSet Context!10198))

(declare-fun derivationStepZipperUp!983 (Context!10198 C!31700) (InoxSet Context!10198))

(assert (=> b!5718385 (= (flatMap!1328 lt!2277718 lambda!308953) (derivationStepZipperUp!983 lt!2277732 (h!69768 s!2326)))))

(declare-fun lt!2277715 () Unit!156392)

(declare-fun lemmaFlatMapOnSingletonSet!860 ((InoxSet Context!10198) Context!10198 Int) Unit!156392)

(assert (=> b!5718385 (= lt!2277715 (lemmaFlatMapOnSingletonSet!860 lt!2277718 lt!2277732 lambda!308953))))

(declare-fun lt!2277725 () (InoxSet Context!10198))

(assert (=> b!5718385 (= (flatMap!1328 lt!2277725 lambda!308953) (derivationStepZipperUp!983 lt!2277713 (h!69768 s!2326)))))

(declare-fun lt!2277728 () Unit!156392)

(assert (=> b!5718385 (= lt!2277728 (lemmaFlatMapOnSingletonSet!860 lt!2277725 lt!2277713 lambda!308953))))

(declare-fun lt!2277708 () (InoxSet Context!10198))

(assert (=> b!5718385 (= lt!2277708 (derivationStepZipperUp!983 lt!2277732 (h!69768 s!2326)))))

(declare-fun lt!2277719 () (InoxSet Context!10198))

(assert (=> b!5718385 (= lt!2277719 (derivationStepZipperUp!983 lt!2277713 (h!69768 s!2326)))))

(assert (=> b!5718385 (= lt!2277718 (store ((as const (Array Context!10198 Bool)) false) lt!2277732 true))))

(assert (=> b!5718385 (= lt!2277725 (store ((as const (Array Context!10198 Bool)) false) lt!2277713 true))))

(assert (=> b!5718385 (= lt!2277713 (Context!10199 (Cons!63321 (reg!16044 (regOne!31942 r!7292)) Nil!63321)))))

(declare-fun e!3516548 () Bool)

(assert (=> b!5718386 (= e!3516560 e!3516548)))

(declare-fun res!2414438 () Bool)

(assert (=> b!5718386 (=> res!2414438 e!3516548)))

(declare-fun lt!2277726 () Bool)

(get-info :version)

(assert (=> b!5718386 (= res!2414438 (or (not (= lt!2277711 lt!2277726)) ((_ is Nil!63320) s!2326)))))

(declare-fun Exists!2815 (Int) Bool)

(assert (=> b!5718386 (= (Exists!2815 lambda!308951) (Exists!2815 lambda!308952))))

(declare-fun lt!2277720 () Unit!156392)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1444 (Regex!15715 Regex!15715 List!63444) Unit!156392)

(assert (=> b!5718386 (= lt!2277720 (lemmaExistCutMatchRandMatchRSpecEquivalent!1444 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326))))

(assert (=> b!5718386 (= lt!2277726 (Exists!2815 lambda!308951))))

(declare-datatypes ((tuple2!65624 0))(
  ( (tuple2!65625 (_1!36115 List!63444) (_2!36115 List!63444)) )
))
(declare-datatypes ((Option!15724 0))(
  ( (None!15723) (Some!15723 (v!51778 tuple2!65624)) )
))
(declare-fun isDefined!12427 (Option!15724) Bool)

(declare-fun findConcatSeparation!2138 (Regex!15715 Regex!15715 List!63444 List!63444 List!63444) Option!15724)

(assert (=> b!5718386 (= lt!2277726 (isDefined!12427 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326)))))

(declare-fun lt!2277709 () Unit!156392)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1902 (Regex!15715 Regex!15715 List!63444) Unit!156392)

(assert (=> b!5718386 (= lt!2277709 (lemmaFindConcatSeparationEquivalentToExists!1902 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326))))

(declare-fun b!5718387 () Bool)

(declare-fun lt!2277733 () Bool)

(assert (=> b!5718387 (= e!3516556 lt!2277733)))

(declare-fun b!5718388 () Bool)

(declare-fun res!2414440 () Bool)

(assert (=> b!5718388 (=> res!2414440 e!3516562)))

(assert (=> b!5718388 (= res!2414440 (or ((_ is Concat!24560) (regOne!31942 r!7292)) (not ((_ is Star!15715) (regOne!31942 r!7292)))))))

(declare-fun b!5718389 () Bool)

(assert (=> b!5718389 (= e!3516561 e!3516564)))

(declare-fun res!2414443 () Bool)

(assert (=> b!5718389 (=> res!2414443 e!3516564)))

(declare-fun lt!2277729 () (InoxSet Context!10198))

(assert (=> b!5718389 (= res!2414443 (not (= lt!2277729 lt!2277721)))))

(declare-fun lt!2277730 () (InoxSet Context!10198))

(assert (=> b!5718389 (= (flatMap!1328 lt!2277730 lambda!308953) (derivationStepZipperUp!983 lt!2277710 (h!69768 s!2326)))))

(declare-fun lt!2277740 () Unit!156392)

(assert (=> b!5718389 (= lt!2277740 (lemmaFlatMapOnSingletonSet!860 lt!2277730 lt!2277710 lambda!308953))))

(declare-fun lt!2277716 () (InoxSet Context!10198))

(assert (=> b!5718389 (= lt!2277716 (derivationStepZipperUp!983 lt!2277710 (h!69768 s!2326)))))

(declare-fun derivationStepZipper!1798 ((InoxSet Context!10198) C!31700) (InoxSet Context!10198))

(assert (=> b!5718389 (= lt!2277729 (derivationStepZipper!1798 lt!2277730 (h!69768 s!2326)))))

(assert (=> b!5718389 (= lt!2277730 (store ((as const (Array Context!10198 Bool)) false) lt!2277710 true))))

(assert (=> b!5718389 (= lt!2277710 (Context!10199 (Cons!63321 (reg!16044 (regOne!31942 r!7292)) lt!2277734)))))

(declare-fun b!5718390 () Bool)

(assert (=> b!5718390 (= e!3516551 tp_is_empty!40683)))

(assert (=> b!5718391 (= e!3516548 e!3516562)))

(declare-fun res!2414445 () Bool)

(assert (=> b!5718391 (=> res!2414445 e!3516562)))

(assert (=> b!5718391 (= res!2414445 (or (and ((_ is ElementMatch!15715) (regOne!31942 r!7292)) (= (c!1008289 (regOne!31942 r!7292)) (h!69768 s!2326))) ((_ is Union!15715) (regOne!31942 r!7292))))))

(declare-fun lt!2277723 () Unit!156392)

(declare-fun e!3516547 () Unit!156392)

(assert (=> b!5718391 (= lt!2277723 e!3516547)))

(declare-fun c!1008288 () Bool)

(assert (=> b!5718391 (= c!1008288 lt!2277733)))

(declare-fun nullable!5747 (Regex!15715) Bool)

(assert (=> b!5718391 (= lt!2277733 (nullable!5747 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5718391 (= (flatMap!1328 z!1189 lambda!308953) (derivationStepZipperUp!983 (h!69770 zl!343) (h!69768 s!2326)))))

(declare-fun lt!2277722 () Unit!156392)

(assert (=> b!5718391 (= lt!2277722 (lemmaFlatMapOnSingletonSet!860 z!1189 (h!69770 zl!343) lambda!308953))))

(declare-fun lt!2277736 () Context!10198)

(assert (=> b!5718391 (= lt!2277735 (derivationStepZipperUp!983 lt!2277736 (h!69768 s!2326)))))

(assert (=> b!5718391 (= lt!2277712 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (h!69770 zl!343))) lt!2277736 (h!69768 s!2326)))))

(assert (=> b!5718391 (= lt!2277736 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun lt!2277737 () (InoxSet Context!10198))

(assert (=> b!5718391 (= lt!2277737 (derivationStepZipperUp!983 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))) (h!69768 s!2326)))))

(declare-fun b!5718392 () Bool)

(declare-fun res!2414449 () Bool)

(assert (=> b!5718392 (=> res!2414449 e!3516556)))

(assert (=> b!5718392 (= res!2414449 (not (matchZipper!1853 z!1189 s!2326)))))

(declare-fun b!5718393 () Bool)

(assert (=> b!5718393 (= e!3516563 (not e!3516560))))

(declare-fun res!2414432 () Bool)

(assert (=> b!5718393 (=> res!2414432 e!3516560)))

(assert (=> b!5718393 (= res!2414432 (not ((_ is Cons!63322) zl!343)))))

(assert (=> b!5718393 (= lt!2277711 (matchRSpec!2818 r!7292 s!2326))))

(assert (=> b!5718393 (= lt!2277711 (matchR!7900 r!7292 s!2326))))

(declare-fun lt!2277739 () Unit!156392)

(assert (=> b!5718393 (= lt!2277739 (mainMatchTheorem!2818 r!7292 s!2326))))

(declare-fun b!5718394 () Bool)

(declare-fun res!2414448 () Bool)

(assert (=> b!5718394 (=> res!2414448 e!3516560)))

(assert (=> b!5718394 (= res!2414448 (or ((_ is EmptyExpr!15715) r!7292) ((_ is EmptyLang!15715) r!7292) ((_ is ElementMatch!15715) r!7292) ((_ is Union!15715) r!7292) (not ((_ is Concat!24560) r!7292))))))

(declare-fun b!5718395 () Bool)

(declare-fun Unit!156394 () Unit!156392)

(assert (=> b!5718395 (= e!3516547 Unit!156394)))

(declare-fun b!5718396 () Bool)

(declare-fun e!3516557 () Bool)

(declare-fun tp!1583918 () Bool)

(assert (=> b!5718396 (= e!3516557 tp!1583918)))

(declare-fun b!5718397 () Bool)

(declare-fun res!2414430 () Bool)

(assert (=> b!5718397 (=> res!2414430 e!3516560)))

(declare-fun generalisedConcat!1330 (List!63445) Regex!15715)

(assert (=> b!5718397 (= res!2414430 (not (= r!7292 (generalisedConcat!1330 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5718398 () Bool)

(declare-fun res!2414424 () Bool)

(assert (=> b!5718398 (=> res!2414424 e!3516560)))

(declare-fun generalisedUnion!1578 (List!63445) Regex!15715)

(declare-fun unfocusZipperList!1143 (List!63446) List!63445)

(assert (=> b!5718398 (= res!2414424 (not (= r!7292 (generalisedUnion!1578 (unfocusZipperList!1143 zl!343)))))))

(declare-fun b!5718399 () Bool)

(declare-fun res!2414447 () Bool)

(assert (=> b!5718399 (=> res!2414447 e!3516546)))

(assert (=> b!5718399 (= res!2414447 (not (= (unfocusZipper!1457 (Cons!63322 lt!2277732 Nil!63322)) lt!2277724)))))

(declare-fun b!5718400 () Bool)

(declare-fun res!2414439 () Bool)

(assert (=> b!5718400 (=> res!2414439 e!3516548)))

(declare-fun isEmpty!35194 (List!63445) Bool)

(assert (=> b!5718400 (= res!2414439 (isEmpty!35194 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5718401 () Bool)

(declare-fun res!2414429 () Bool)

(assert (=> b!5718401 (=> res!2414429 e!3516564)))

(assert (=> b!5718401 (= res!2414429 (not (= (matchZipper!1853 lt!2277730 s!2326) (matchZipper!1853 lt!2277729 (t!376766 s!2326)))))))

(declare-fun setIsEmpty!38305 () Bool)

(assert (=> setIsEmpty!38305 setRes!38305))

(declare-fun tp!1583915 () Bool)

(declare-fun setNonEmpty!38305 () Bool)

(declare-fun setElem!38305 () Context!10198)

(declare-fun inv!82534 (Context!10198) Bool)

(assert (=> setNonEmpty!38305 (= setRes!38305 (and tp!1583915 (inv!82534 setElem!38305) e!3516554))))

(declare-fun setRest!38305 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38305 (= z!1189 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38305 true) setRest!38305))))

(declare-fun b!5718402 () Bool)

(declare-fun tp!1583919 () Bool)

(declare-fun tp!1583921 () Bool)

(assert (=> b!5718402 (= e!3516551 (and tp!1583919 tp!1583921))))

(declare-fun tp!1583914 () Bool)

(declare-fun b!5718403 () Bool)

(assert (=> b!5718403 (= e!3516553 (and (inv!82534 (h!69770 zl!343)) e!3516557 tp!1583914))))

(declare-fun b!5718404 () Bool)

(declare-fun res!2414433 () Bool)

(assert (=> b!5718404 (=> (not res!2414433) (not e!3516555))))

(declare-fun toList!9499 ((InoxSet Context!10198)) List!63446)

(assert (=> b!5718404 (= res!2414433 (= (toList!9499 z!1189) zl!343))))

(declare-fun b!5718405 () Bool)

(declare-fun e!3516552 () Bool)

(assert (=> b!5718405 (= e!3516552 (nullable!5747 (regOne!31942 (regOne!31942 r!7292))))))

(declare-fun b!5718406 () Bool)

(declare-fun res!2414436 () Bool)

(assert (=> b!5718406 (=> res!2414436 e!3516562)))

(assert (=> b!5718406 (= res!2414436 e!3516552)))

(declare-fun res!2414437 () Bool)

(assert (=> b!5718406 (=> (not res!2414437) (not e!3516552))))

(assert (=> b!5718406 (= res!2414437 ((_ is Concat!24560) (regOne!31942 r!7292)))))

(declare-fun b!5718407 () Bool)

(declare-fun res!2414426 () Bool)

(assert (=> b!5718407 (=> res!2414426 e!3516560)))

(assert (=> b!5718407 (= res!2414426 (not ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5718408 () Bool)

(declare-fun tp!1583920 () Bool)

(assert (=> b!5718408 (= e!3516551 tp!1583920)))

(declare-fun b!5718409 () Bool)

(declare-fun Unit!156395 () Unit!156392)

(assert (=> b!5718409 (= e!3516547 Unit!156395)))

(declare-fun lt!2277727 () Unit!156392)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!740 ((InoxSet Context!10198) (InoxSet Context!10198) List!63444) Unit!156392)

(assert (=> b!5718409 (= lt!2277727 (lemmaZipperConcatMatchesSameAsBothZippers!740 lt!2277712 lt!2277735 (t!376766 s!2326)))))

(declare-fun res!2414442 () Bool)

(assert (=> b!5718409 (= res!2414442 (matchZipper!1853 lt!2277712 (t!376766 s!2326)))))

(assert (=> b!5718409 (=> res!2414442 e!3516558)))

(assert (=> b!5718409 (= (matchZipper!1853 ((_ map or) lt!2277712 lt!2277735) (t!376766 s!2326)) e!3516558)))

(assert (= (and start!588656 res!2414435) b!5718404))

(assert (= (and b!5718404 res!2414433) b!5718378))

(assert (= (and b!5718378 res!2414444) b!5718393))

(assert (= (and b!5718393 (not res!2414432)) b!5718375))

(assert (= (and b!5718375 (not res!2414431)) b!5718397))

(assert (= (and b!5718397 (not res!2414430)) b!5718407))

(assert (= (and b!5718407 (not res!2414426)) b!5718398))

(assert (= (and b!5718398 (not res!2414424)) b!5718394))

(assert (= (and b!5718394 (not res!2414448)) b!5718386))

(assert (= (and b!5718386 (not res!2414438)) b!5718400))

(assert (= (and b!5718400 (not res!2414439)) b!5718391))

(assert (= (and b!5718391 c!1008288) b!5718409))

(assert (= (and b!5718391 (not c!1008288)) b!5718395))

(assert (= (and b!5718409 (not res!2414442)) b!5718384))

(assert (= (and b!5718391 (not res!2414445)) b!5718406))

(assert (= (and b!5718406 res!2414437) b!5718405))

(assert (= (and b!5718406 (not res!2414436)) b!5718388))

(assert (= (and b!5718388 (not res!2414440)) b!5718376))

(assert (= (and b!5718376 (not res!2414428)) b!5718389))

(assert (= (and b!5718389 (not res!2414443)) b!5718401))

(assert (= (and b!5718401 (not res!2414429)) b!5718381))

(assert (= (and b!5718381 (not res!2414434)) b!5718382))

(assert (= (and b!5718382 (not res!2414427)) b!5718377))

(assert (= (and b!5718377 (not res!2414446)) b!5718385))

(assert (= (and b!5718385 (not res!2414441)) b!5718399))

(assert (= (and b!5718399 (not res!2414447)) b!5718374))

(assert (= (and b!5718374 (not res!2414425)) b!5718392))

(assert (= (and b!5718392 (not res!2414449)) b!5718387))

(assert (= (and start!588656 ((_ is ElementMatch!15715) r!7292)) b!5718390))

(assert (= (and start!588656 ((_ is Concat!24560) r!7292)) b!5718380))

(assert (= (and start!588656 ((_ is Star!15715) r!7292)) b!5718408))

(assert (= (and start!588656 ((_ is Union!15715) r!7292)) b!5718402))

(assert (= (and start!588656 condSetEmpty!38305) setIsEmpty!38305))

(assert (= (and start!588656 (not condSetEmpty!38305)) setNonEmpty!38305))

(assert (= setNonEmpty!38305 b!5718383))

(assert (= b!5718403 b!5718396))

(assert (= (and start!588656 ((_ is Cons!63322) zl!343)) b!5718403))

(assert (= (and start!588656 ((_ is Cons!63320) s!2326)) b!5718379))

(declare-fun m!6671966 () Bool)

(assert (=> b!5718391 m!6671966))

(declare-fun m!6671968 () Bool)

(assert (=> b!5718391 m!6671968))

(declare-fun m!6671970 () Bool)

(assert (=> b!5718391 m!6671970))

(declare-fun m!6671972 () Bool)

(assert (=> b!5718391 m!6671972))

(declare-fun m!6671974 () Bool)

(assert (=> b!5718391 m!6671974))

(declare-fun m!6671976 () Bool)

(assert (=> b!5718391 m!6671976))

(declare-fun m!6671978 () Bool)

(assert (=> b!5718391 m!6671978))

(declare-fun m!6671980 () Bool)

(assert (=> b!5718409 m!6671980))

(declare-fun m!6671982 () Bool)

(assert (=> b!5718409 m!6671982))

(declare-fun m!6671984 () Bool)

(assert (=> b!5718409 m!6671984))

(declare-fun m!6671986 () Bool)

(assert (=> b!5718401 m!6671986))

(declare-fun m!6671988 () Bool)

(assert (=> b!5718401 m!6671988))

(declare-fun m!6671990 () Bool)

(assert (=> b!5718374 m!6671990))

(declare-fun m!6671992 () Bool)

(assert (=> b!5718374 m!6671992))

(declare-fun m!6671994 () Bool)

(assert (=> b!5718374 m!6671994))

(declare-fun m!6671996 () Bool)

(assert (=> b!5718403 m!6671996))

(declare-fun m!6671998 () Bool)

(assert (=> b!5718398 m!6671998))

(assert (=> b!5718398 m!6671998))

(declare-fun m!6672000 () Bool)

(assert (=> b!5718398 m!6672000))

(declare-fun m!6672002 () Bool)

(assert (=> b!5718385 m!6672002))

(declare-fun m!6672004 () Bool)

(assert (=> b!5718385 m!6672004))

(declare-fun m!6672006 () Bool)

(assert (=> b!5718385 m!6672006))

(declare-fun m!6672008 () Bool)

(assert (=> b!5718385 m!6672008))

(declare-fun m!6672010 () Bool)

(assert (=> b!5718385 m!6672010))

(declare-fun m!6672012 () Bool)

(assert (=> b!5718385 m!6672012))

(declare-fun m!6672014 () Bool)

(assert (=> b!5718385 m!6672014))

(declare-fun m!6672016 () Bool)

(assert (=> b!5718385 m!6672016))

(declare-fun m!6672018 () Bool)

(assert (=> b!5718385 m!6672018))

(declare-fun m!6672020 () Bool)

(assert (=> b!5718399 m!6672020))

(declare-fun m!6672022 () Bool)

(assert (=> b!5718397 m!6672022))

(declare-fun m!6672024 () Bool)

(assert (=> setNonEmpty!38305 m!6672024))

(declare-fun m!6672026 () Bool)

(assert (=> b!5718393 m!6672026))

(declare-fun m!6672028 () Bool)

(assert (=> b!5718393 m!6672028))

(declare-fun m!6672030 () Bool)

(assert (=> b!5718393 m!6672030))

(declare-fun m!6672032 () Bool)

(assert (=> b!5718384 m!6672032))

(declare-fun m!6672034 () Bool)

(assert (=> b!5718386 m!6672034))

(declare-fun m!6672036 () Bool)

(assert (=> b!5718386 m!6672036))

(declare-fun m!6672038 () Bool)

(assert (=> b!5718386 m!6672038))

(declare-fun m!6672040 () Bool)

(assert (=> b!5718386 m!6672040))

(declare-fun m!6672042 () Bool)

(assert (=> b!5718386 m!6672042))

(assert (=> b!5718386 m!6672036))

(assert (=> b!5718386 m!6672038))

(declare-fun m!6672044 () Bool)

(assert (=> b!5718386 m!6672044))

(declare-fun m!6672046 () Bool)

(assert (=> b!5718389 m!6672046))

(declare-fun m!6672048 () Bool)

(assert (=> b!5718389 m!6672048))

(declare-fun m!6672050 () Bool)

(assert (=> b!5718389 m!6672050))

(declare-fun m!6672052 () Bool)

(assert (=> b!5718389 m!6672052))

(declare-fun m!6672054 () Bool)

(assert (=> b!5718389 m!6672054))

(declare-fun m!6672056 () Bool)

(assert (=> b!5718404 m!6672056))

(declare-fun m!6672058 () Bool)

(assert (=> b!5718400 m!6672058))

(declare-fun m!6672060 () Bool)

(assert (=> b!5718375 m!6672060))

(declare-fun m!6672062 () Bool)

(assert (=> b!5718376 m!6672062))

(declare-fun m!6672064 () Bool)

(assert (=> start!588656 m!6672064))

(declare-fun m!6672066 () Bool)

(assert (=> b!5718405 m!6672066))

(declare-fun m!6672068 () Bool)

(assert (=> b!5718392 m!6672068))

(declare-fun m!6672070 () Bool)

(assert (=> b!5718377 m!6672070))

(declare-fun m!6672072 () Bool)

(assert (=> b!5718378 m!6672072))

(check-sat (not b!5718375) (not b!5718405) (not b!5718400) (not b!5718378) (not b!5718409) (not setNonEmpty!38305) (not b!5718380) (not b!5718391) (not b!5718392) tp_is_empty!40683 (not b!5718377) (not b!5718379) (not b!5718399) (not b!5718386) (not b!5718396) (not b!5718374) (not b!5718402) (not b!5718401) (not b!5718397) (not b!5718404) (not b!5718398) (not b!5718389) (not b!5718393) (not b!5718403) (not b!5718385) (not b!5718376) (not b!5718408) (not b!5718383) (not start!588656) (not b!5718384))
(check-sat)
(get-model)

(declare-fun bs!1336799 () Bool)

(declare-fun b!5718492 () Bool)

(assert (= bs!1336799 (and b!5718492 b!5718386)))

(declare-fun lambda!308967 () Int)

(assert (=> bs!1336799 (not (= lambda!308967 lambda!308951))))

(assert (=> bs!1336799 (not (= lambda!308967 lambda!308952))))

(assert (=> b!5718492 true))

(assert (=> b!5718492 true))

(declare-fun bs!1336800 () Bool)

(declare-fun b!5718490 () Bool)

(assert (= bs!1336800 (and b!5718490 b!5718386)))

(declare-fun lambda!308968 () Int)

(assert (=> bs!1336800 (not (= lambda!308968 lambda!308951))))

(assert (=> bs!1336800 (= lambda!308968 lambda!308952)))

(declare-fun bs!1336801 () Bool)

(assert (= bs!1336801 (and b!5718490 b!5718492)))

(assert (=> bs!1336801 (not (= lambda!308968 lambda!308967))))

(assert (=> b!5718490 true))

(assert (=> b!5718490 true))

(declare-fun b!5718487 () Bool)

(declare-fun c!1008304 () Bool)

(assert (=> b!5718487 (= c!1008304 ((_ is Union!15715) r!7292))))

(declare-fun e!3516610 () Bool)

(declare-fun e!3516605 () Bool)

(assert (=> b!5718487 (= e!3516610 e!3516605)))

(declare-fun b!5718488 () Bool)

(declare-fun e!3516607 () Bool)

(declare-fun call!436684 () Bool)

(assert (=> b!5718488 (= e!3516607 call!436684)))

(declare-fun b!5718489 () Bool)

(declare-fun e!3516609 () Bool)

(assert (=> b!5718489 (= e!3516607 e!3516609)))

(declare-fun res!2414495 () Bool)

(assert (=> b!5718489 (= res!2414495 (not ((_ is EmptyLang!15715) r!7292)))))

(assert (=> b!5718489 (=> (not res!2414495) (not e!3516609))))

(declare-fun bm!436678 () Bool)

(declare-fun call!436683 () Bool)

(declare-fun c!1008307 () Bool)

(assert (=> bm!436678 (= call!436683 (Exists!2815 (ite c!1008307 lambda!308967 lambda!308968)))))

(declare-fun e!3516608 () Bool)

(assert (=> b!5718490 (= e!3516608 call!436683)))

(declare-fun b!5718491 () Bool)

(declare-fun c!1008306 () Bool)

(assert (=> b!5718491 (= c!1008306 ((_ is ElementMatch!15715) r!7292))))

(assert (=> b!5718491 (= e!3516609 e!3516610)))

(declare-fun e!3516604 () Bool)

(assert (=> b!5718492 (= e!3516604 call!436683)))

(declare-fun d!1803929 () Bool)

(declare-fun c!1008305 () Bool)

(assert (=> d!1803929 (= c!1008305 ((_ is EmptyExpr!15715) r!7292))))

(assert (=> d!1803929 (= (matchRSpec!2818 r!7292 s!2326) e!3516607)))

(declare-fun b!5718493 () Bool)

(declare-fun e!3516606 () Bool)

(assert (=> b!5718493 (= e!3516605 e!3516606)))

(declare-fun res!2414494 () Bool)

(assert (=> b!5718493 (= res!2414494 (matchRSpec!2818 (regOne!31943 r!7292) s!2326))))

(assert (=> b!5718493 (=> res!2414494 e!3516606)))

(declare-fun b!5718494 () Bool)

(assert (=> b!5718494 (= e!3516606 (matchRSpec!2818 (regTwo!31943 r!7292) s!2326))))

(declare-fun b!5718495 () Bool)

(assert (=> b!5718495 (= e!3516610 (= s!2326 (Cons!63320 (c!1008289 r!7292) Nil!63320)))))

(declare-fun b!5718496 () Bool)

(assert (=> b!5718496 (= e!3516605 e!3516608)))

(assert (=> b!5718496 (= c!1008307 ((_ is Star!15715) r!7292))))

(declare-fun bm!436679 () Bool)

(declare-fun isEmpty!35197 (List!63444) Bool)

(assert (=> bm!436679 (= call!436684 (isEmpty!35197 s!2326))))

(declare-fun b!5718497 () Bool)

(declare-fun res!2414493 () Bool)

(assert (=> b!5718497 (=> res!2414493 e!3516604)))

(assert (=> b!5718497 (= res!2414493 call!436684)))

(assert (=> b!5718497 (= e!3516608 e!3516604)))

(assert (= (and d!1803929 c!1008305) b!5718488))

(assert (= (and d!1803929 (not c!1008305)) b!5718489))

(assert (= (and b!5718489 res!2414495) b!5718491))

(assert (= (and b!5718491 c!1008306) b!5718495))

(assert (= (and b!5718491 (not c!1008306)) b!5718487))

(assert (= (and b!5718487 c!1008304) b!5718493))

(assert (= (and b!5718487 (not c!1008304)) b!5718496))

(assert (= (and b!5718493 (not res!2414494)) b!5718494))

(assert (= (and b!5718496 c!1008307) b!5718497))

(assert (= (and b!5718496 (not c!1008307)) b!5718490))

(assert (= (and b!5718497 (not res!2414493)) b!5718492))

(assert (= (or b!5718492 b!5718490) bm!436678))

(assert (= (or b!5718488 b!5718497) bm!436679))

(declare-fun m!6672114 () Bool)

(assert (=> bm!436678 m!6672114))

(declare-fun m!6672116 () Bool)

(assert (=> b!5718493 m!6672116))

(declare-fun m!6672118 () Bool)

(assert (=> b!5718494 m!6672118))

(declare-fun m!6672120 () Bool)

(assert (=> bm!436679 m!6672120))

(assert (=> b!5718393 d!1803929))

(declare-fun b!5718587 () Bool)

(declare-fun e!3516660 () Bool)

(declare-fun e!3516659 () Bool)

(assert (=> b!5718587 (= e!3516660 e!3516659)))

(declare-fun c!1008342 () Bool)

(assert (=> b!5718587 (= c!1008342 ((_ is EmptyLang!15715) r!7292))))

(declare-fun b!5718588 () Bool)

(declare-fun lt!2277765 () Bool)

(assert (=> b!5718588 (= e!3516659 (not lt!2277765))))

(declare-fun b!5718589 () Bool)

(declare-fun e!3516663 () Bool)

(declare-fun head!12109 (List!63444) C!31700)

(assert (=> b!5718589 (= e!3516663 (not (= (head!12109 s!2326) (c!1008289 r!7292))))))

(declare-fun b!5718590 () Bool)

(declare-fun e!3516662 () Bool)

(assert (=> b!5718590 (= e!3516662 (= (head!12109 s!2326) (c!1008289 r!7292)))))

(declare-fun b!5718591 () Bool)

(declare-fun res!2414522 () Bool)

(assert (=> b!5718591 (=> (not res!2414522) (not e!3516662))))

(declare-fun tail!11204 (List!63444) List!63444)

(assert (=> b!5718591 (= res!2414522 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun b!5718592 () Bool)

(declare-fun e!3516665 () Bool)

(assert (=> b!5718592 (= e!3516665 e!3516663)))

(declare-fun res!2414521 () Bool)

(assert (=> b!5718592 (=> res!2414521 e!3516663)))

(declare-fun call!436709 () Bool)

(assert (=> b!5718592 (= res!2414521 call!436709)))

(declare-fun b!5718593 () Bool)

(assert (=> b!5718593 (= e!3516660 (= lt!2277765 call!436709))))

(declare-fun b!5718594 () Bool)

(declare-fun e!3516664 () Bool)

(declare-fun derivativeStep!4518 (Regex!15715 C!31700) Regex!15715)

(assert (=> b!5718594 (= e!3516664 (matchR!7900 (derivativeStep!4518 r!7292 (head!12109 s!2326)) (tail!11204 s!2326)))))

(declare-fun d!1803941 () Bool)

(assert (=> d!1803941 e!3516660))

(declare-fun c!1008341 () Bool)

(assert (=> d!1803941 (= c!1008341 ((_ is EmptyExpr!15715) r!7292))))

(assert (=> d!1803941 (= lt!2277765 e!3516664)))

(declare-fun c!1008343 () Bool)

(assert (=> d!1803941 (= c!1008343 (isEmpty!35197 s!2326))))

(assert (=> d!1803941 (validRegex!7451 r!7292)))

(assert (=> d!1803941 (= (matchR!7900 r!7292 s!2326) lt!2277765)))

(declare-fun b!5718595 () Bool)

(declare-fun res!2414519 () Bool)

(assert (=> b!5718595 (=> (not res!2414519) (not e!3516662))))

(assert (=> b!5718595 (= res!2414519 (not call!436709))))

(declare-fun b!5718596 () Bool)

(declare-fun res!2414525 () Bool)

(declare-fun e!3516661 () Bool)

(assert (=> b!5718596 (=> res!2414525 e!3516661)))

(assert (=> b!5718596 (= res!2414525 e!3516662)))

(declare-fun res!2414523 () Bool)

(assert (=> b!5718596 (=> (not res!2414523) (not e!3516662))))

(assert (=> b!5718596 (= res!2414523 lt!2277765)))

(declare-fun b!5718597 () Bool)

(assert (=> b!5718597 (= e!3516664 (nullable!5747 r!7292))))

(declare-fun bm!436704 () Bool)

(assert (=> bm!436704 (= call!436709 (isEmpty!35197 s!2326))))

(declare-fun b!5718598 () Bool)

(declare-fun res!2414526 () Bool)

(assert (=> b!5718598 (=> res!2414526 e!3516663)))

(assert (=> b!5718598 (= res!2414526 (not (isEmpty!35197 (tail!11204 s!2326))))))

(declare-fun b!5718599 () Bool)

(assert (=> b!5718599 (= e!3516661 e!3516665)))

(declare-fun res!2414524 () Bool)

(assert (=> b!5718599 (=> (not res!2414524) (not e!3516665))))

(assert (=> b!5718599 (= res!2414524 (not lt!2277765))))

(declare-fun b!5718600 () Bool)

(declare-fun res!2414520 () Bool)

(assert (=> b!5718600 (=> res!2414520 e!3516661)))

(assert (=> b!5718600 (= res!2414520 (not ((_ is ElementMatch!15715) r!7292)))))

(assert (=> b!5718600 (= e!3516659 e!3516661)))

(assert (= (and d!1803941 c!1008343) b!5718597))

(assert (= (and d!1803941 (not c!1008343)) b!5718594))

(assert (= (and d!1803941 c!1008341) b!5718593))

(assert (= (and d!1803941 (not c!1008341)) b!5718587))

(assert (= (and b!5718587 c!1008342) b!5718588))

(assert (= (and b!5718587 (not c!1008342)) b!5718600))

(assert (= (and b!5718600 (not res!2414520)) b!5718596))

(assert (= (and b!5718596 res!2414523) b!5718595))

(assert (= (and b!5718595 res!2414519) b!5718591))

(assert (= (and b!5718591 res!2414522) b!5718590))

(assert (= (and b!5718596 (not res!2414525)) b!5718599))

(assert (= (and b!5718599 res!2414524) b!5718592))

(assert (= (and b!5718592 (not res!2414521)) b!5718598))

(assert (= (and b!5718598 (not res!2414526)) b!5718589))

(assert (= (or b!5718593 b!5718592 b!5718595) bm!436704))

(declare-fun m!6672186 () Bool)

(assert (=> b!5718590 m!6672186))

(declare-fun m!6672188 () Bool)

(assert (=> b!5718591 m!6672188))

(assert (=> b!5718591 m!6672188))

(declare-fun m!6672190 () Bool)

(assert (=> b!5718591 m!6672190))

(declare-fun m!6672192 () Bool)

(assert (=> b!5718597 m!6672192))

(assert (=> b!5718589 m!6672186))

(assert (=> b!5718598 m!6672188))

(assert (=> b!5718598 m!6672188))

(assert (=> b!5718598 m!6672190))

(assert (=> bm!436704 m!6672120))

(assert (=> d!1803941 m!6672120))

(assert (=> d!1803941 m!6672064))

(assert (=> b!5718594 m!6672186))

(assert (=> b!5718594 m!6672186))

(declare-fun m!6672194 () Bool)

(assert (=> b!5718594 m!6672194))

(assert (=> b!5718594 m!6672188))

(assert (=> b!5718594 m!6672194))

(assert (=> b!5718594 m!6672188))

(declare-fun m!6672196 () Bool)

(assert (=> b!5718594 m!6672196))

(assert (=> b!5718393 d!1803941))

(declare-fun d!1803967 () Bool)

(assert (=> d!1803967 (= (matchR!7900 r!7292 s!2326) (matchRSpec!2818 r!7292 s!2326))))

(declare-fun lt!2277771 () Unit!156392)

(declare-fun choose!43239 (Regex!15715 List!63444) Unit!156392)

(assert (=> d!1803967 (= lt!2277771 (choose!43239 r!7292 s!2326))))

(assert (=> d!1803967 (validRegex!7451 r!7292)))

(assert (=> d!1803967 (= (mainMatchTheorem!2818 r!7292 s!2326) lt!2277771)))

(declare-fun bs!1336809 () Bool)

(assert (= bs!1336809 d!1803967))

(assert (=> bs!1336809 m!6672028))

(assert (=> bs!1336809 m!6672026))

(declare-fun m!6672214 () Bool)

(assert (=> bs!1336809 m!6672214))

(assert (=> bs!1336809 m!6672064))

(assert (=> b!5718393 d!1803967))

(declare-fun d!1803977 () Bool)

(declare-fun lambda!308976 () Int)

(declare-fun forall!14850 (List!63445 Int) Bool)

(assert (=> d!1803977 (= (inv!82534 setElem!38305) (forall!14850 (exprs!5599 setElem!38305) lambda!308976))))

(declare-fun bs!1336810 () Bool)

(assert (= bs!1336810 d!1803977))

(declare-fun m!6672216 () Bool)

(assert (=> bs!1336810 m!6672216))

(assert (=> setNonEmpty!38305 d!1803977))

(declare-fun d!1803979 () Bool)

(declare-fun c!1008360 () Bool)

(assert (=> d!1803979 (= c!1008360 (isEmpty!35197 (t!376766 s!2326)))))

(declare-fun e!3516698 () Bool)

(assert (=> d!1803979 (= (matchZipper!1853 lt!2277735 (t!376766 s!2326)) e!3516698)))

(declare-fun b!5718655 () Bool)

(declare-fun nullableZipper!1665 ((InoxSet Context!10198)) Bool)

(assert (=> b!5718655 (= e!3516698 (nullableZipper!1665 lt!2277735))))

(declare-fun b!5718656 () Bool)

(assert (=> b!5718656 (= e!3516698 (matchZipper!1853 (derivationStepZipper!1798 lt!2277735 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))))))

(assert (= (and d!1803979 c!1008360) b!5718655))

(assert (= (and d!1803979 (not c!1008360)) b!5718656))

(declare-fun m!6672224 () Bool)

(assert (=> d!1803979 m!6672224))

(declare-fun m!6672226 () Bool)

(assert (=> b!5718655 m!6672226))

(declare-fun m!6672228 () Bool)

(assert (=> b!5718656 m!6672228))

(assert (=> b!5718656 m!6672228))

(declare-fun m!6672230 () Bool)

(assert (=> b!5718656 m!6672230))

(declare-fun m!6672232 () Bool)

(assert (=> b!5718656 m!6672232))

(assert (=> b!5718656 m!6672230))

(assert (=> b!5718656 m!6672232))

(declare-fun m!6672234 () Bool)

(assert (=> b!5718656 m!6672234))

(assert (=> b!5718384 d!1803979))

(declare-fun call!436725 () Bool)

(declare-fun c!1008374 () Bool)

(declare-fun c!1008375 () Bool)

(declare-fun bm!436720 () Bool)

(assert (=> bm!436720 (= call!436725 (validRegex!7451 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))

(declare-fun b!5718717 () Bool)

(declare-fun res!2414587 () Bool)

(declare-fun e!3516737 () Bool)

(assert (=> b!5718717 (=> (not res!2414587) (not e!3516737))))

(declare-fun call!436726 () Bool)

(assert (=> b!5718717 (= res!2414587 call!436726)))

(declare-fun e!3516735 () Bool)

(assert (=> b!5718717 (= e!3516735 e!3516737)))

(declare-fun b!5718718 () Bool)

(declare-fun e!3516734 () Bool)

(declare-fun call!436727 () Bool)

(assert (=> b!5718718 (= e!3516734 call!436727)))

(declare-fun b!5718719 () Bool)

(assert (=> b!5718719 (= e!3516737 call!436727)))

(declare-fun b!5718720 () Bool)

(declare-fun e!3516738 () Bool)

(declare-fun e!3516739 () Bool)

(assert (=> b!5718720 (= e!3516738 e!3516739)))

(assert (=> b!5718720 (= c!1008374 ((_ is Star!15715) r!7292))))

(declare-fun b!5718721 () Bool)

(declare-fun e!3516740 () Bool)

(assert (=> b!5718721 (= e!3516739 e!3516740)))

(declare-fun res!2414584 () Bool)

(assert (=> b!5718721 (= res!2414584 (not (nullable!5747 (reg!16044 r!7292))))))

(assert (=> b!5718721 (=> (not res!2414584) (not e!3516740))))

(declare-fun bm!436721 () Bool)

(assert (=> bm!436721 (= call!436726 call!436725)))

(declare-fun b!5718723 () Bool)

(declare-fun e!3516736 () Bool)

(assert (=> b!5718723 (= e!3516736 e!3516734)))

(declare-fun res!2414583 () Bool)

(assert (=> b!5718723 (=> (not res!2414583) (not e!3516734))))

(assert (=> b!5718723 (= res!2414583 call!436726)))

(declare-fun bm!436722 () Bool)

(assert (=> bm!436722 (= call!436727 (validRegex!7451 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))

(declare-fun b!5718724 () Bool)

(declare-fun res!2414585 () Bool)

(assert (=> b!5718724 (=> res!2414585 e!3516736)))

(assert (=> b!5718724 (= res!2414585 (not ((_ is Concat!24560) r!7292)))))

(assert (=> b!5718724 (= e!3516735 e!3516736)))

(declare-fun b!5718725 () Bool)

(assert (=> b!5718725 (= e!3516739 e!3516735)))

(assert (=> b!5718725 (= c!1008375 ((_ is Union!15715) r!7292))))

(declare-fun d!1803983 () Bool)

(declare-fun res!2414586 () Bool)

(assert (=> d!1803983 (=> res!2414586 e!3516738)))

(assert (=> d!1803983 (= res!2414586 ((_ is ElementMatch!15715) r!7292))))

(assert (=> d!1803983 (= (validRegex!7451 r!7292) e!3516738)))

(declare-fun b!5718722 () Bool)

(assert (=> b!5718722 (= e!3516740 call!436725)))

(assert (= (and d!1803983 (not res!2414586)) b!5718720))

(assert (= (and b!5718720 c!1008374) b!5718721))

(assert (= (and b!5718720 (not c!1008374)) b!5718725))

(assert (= (and b!5718721 res!2414584) b!5718722))

(assert (= (and b!5718725 c!1008375) b!5718717))

(assert (= (and b!5718725 (not c!1008375)) b!5718724))

(assert (= (and b!5718717 res!2414587) b!5718719))

(assert (= (and b!5718724 (not res!2414585)) b!5718723))

(assert (= (and b!5718723 res!2414583) b!5718718))

(assert (= (or b!5718719 b!5718718) bm!436722))

(assert (= (or b!5718717 b!5718723) bm!436721))

(assert (= (or b!5718722 bm!436721) bm!436720))

(declare-fun m!6672244 () Bool)

(assert (=> bm!436720 m!6672244))

(declare-fun m!6672246 () Bool)

(assert (=> b!5718721 m!6672246))

(declare-fun m!6672248 () Bool)

(assert (=> bm!436722 m!6672248))

(assert (=> start!588656 d!1803983))

(declare-fun bs!1336818 () Bool)

(declare-fun d!1803987 () Bool)

(assert (= bs!1336818 (and d!1803987 d!1803977)))

(declare-fun lambda!308981 () Int)

(assert (=> bs!1336818 (= lambda!308981 lambda!308976)))

(assert (=> d!1803987 (= (inv!82534 (h!69770 zl!343)) (forall!14850 (exprs!5599 (h!69770 zl!343)) lambda!308981))))

(declare-fun bs!1336819 () Bool)

(assert (= bs!1336819 d!1803987))

(declare-fun m!6672250 () Bool)

(assert (=> bs!1336819 m!6672250))

(assert (=> b!5718403 d!1803987))

(declare-fun d!1803989 () Bool)

(declare-fun c!1008376 () Bool)

(assert (=> d!1803989 (= c!1008376 (isEmpty!35197 s!2326))))

(declare-fun e!3516741 () Bool)

(assert (=> d!1803989 (= (matchZipper!1853 lt!2277730 s!2326) e!3516741)))

(declare-fun b!5718726 () Bool)

(assert (=> b!5718726 (= e!3516741 (nullableZipper!1665 lt!2277730))))

(declare-fun b!5718727 () Bool)

(assert (=> b!5718727 (= e!3516741 (matchZipper!1853 (derivationStepZipper!1798 lt!2277730 (head!12109 s!2326)) (tail!11204 s!2326)))))

(assert (= (and d!1803989 c!1008376) b!5718726))

(assert (= (and d!1803989 (not c!1008376)) b!5718727))

(assert (=> d!1803989 m!6672120))

(declare-fun m!6672252 () Bool)

(assert (=> b!5718726 m!6672252))

(assert (=> b!5718727 m!6672186))

(assert (=> b!5718727 m!6672186))

(declare-fun m!6672254 () Bool)

(assert (=> b!5718727 m!6672254))

(assert (=> b!5718727 m!6672188))

(assert (=> b!5718727 m!6672254))

(assert (=> b!5718727 m!6672188))

(declare-fun m!6672256 () Bool)

(assert (=> b!5718727 m!6672256))

(assert (=> b!5718401 d!1803989))

(declare-fun d!1803991 () Bool)

(declare-fun c!1008377 () Bool)

(assert (=> d!1803991 (= c!1008377 (isEmpty!35197 (t!376766 s!2326)))))

(declare-fun e!3516742 () Bool)

(assert (=> d!1803991 (= (matchZipper!1853 lt!2277729 (t!376766 s!2326)) e!3516742)))

(declare-fun b!5718728 () Bool)

(assert (=> b!5718728 (= e!3516742 (nullableZipper!1665 lt!2277729))))

(declare-fun b!5718729 () Bool)

(assert (=> b!5718729 (= e!3516742 (matchZipper!1853 (derivationStepZipper!1798 lt!2277729 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))))))

(assert (= (and d!1803991 c!1008377) b!5718728))

(assert (= (and d!1803991 (not c!1008377)) b!5718729))

(assert (=> d!1803991 m!6672224))

(declare-fun m!6672260 () Bool)

(assert (=> b!5718728 m!6672260))

(assert (=> b!5718729 m!6672228))

(assert (=> b!5718729 m!6672228))

(declare-fun m!6672262 () Bool)

(assert (=> b!5718729 m!6672262))

(assert (=> b!5718729 m!6672232))

(assert (=> b!5718729 m!6672262))

(assert (=> b!5718729 m!6672232))

(declare-fun m!6672264 () Bool)

(assert (=> b!5718729 m!6672264))

(assert (=> b!5718401 d!1803991))

(declare-fun e!3516763 () Bool)

(declare-fun d!1803997 () Bool)

(assert (=> d!1803997 (= (matchZipper!1853 ((_ map or) lt!2277712 lt!2277735) (t!376766 s!2326)) e!3516763)))

(declare-fun res!2414595 () Bool)

(assert (=> d!1803997 (=> res!2414595 e!3516763)))

(assert (=> d!1803997 (= res!2414595 (matchZipper!1853 lt!2277712 (t!376766 s!2326)))))

(declare-fun lt!2277783 () Unit!156392)

(declare-fun choose!43240 ((InoxSet Context!10198) (InoxSet Context!10198) List!63444) Unit!156392)

(assert (=> d!1803997 (= lt!2277783 (choose!43240 lt!2277712 lt!2277735 (t!376766 s!2326)))))

(assert (=> d!1803997 (= (lemmaZipperConcatMatchesSameAsBothZippers!740 lt!2277712 lt!2277735 (t!376766 s!2326)) lt!2277783)))

(declare-fun b!5718765 () Bool)

(assert (=> b!5718765 (= e!3516763 (matchZipper!1853 lt!2277735 (t!376766 s!2326)))))

(assert (= (and d!1803997 (not res!2414595)) b!5718765))

(assert (=> d!1803997 m!6671984))

(assert (=> d!1803997 m!6671982))

(declare-fun m!6672318 () Bool)

(assert (=> d!1803997 m!6672318))

(assert (=> b!5718765 m!6672032))

(assert (=> b!5718409 d!1803997))

(declare-fun d!1804023 () Bool)

(declare-fun c!1008393 () Bool)

(assert (=> d!1804023 (= c!1008393 (isEmpty!35197 (t!376766 s!2326)))))

(declare-fun e!3516764 () Bool)

(assert (=> d!1804023 (= (matchZipper!1853 lt!2277712 (t!376766 s!2326)) e!3516764)))

(declare-fun b!5718766 () Bool)

(assert (=> b!5718766 (= e!3516764 (nullableZipper!1665 lt!2277712))))

(declare-fun b!5718767 () Bool)

(assert (=> b!5718767 (= e!3516764 (matchZipper!1853 (derivationStepZipper!1798 lt!2277712 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))))))

(assert (= (and d!1804023 c!1008393) b!5718766))

(assert (= (and d!1804023 (not c!1008393)) b!5718767))

(assert (=> d!1804023 m!6672224))

(declare-fun m!6672320 () Bool)

(assert (=> b!5718766 m!6672320))

(assert (=> b!5718767 m!6672228))

(assert (=> b!5718767 m!6672228))

(declare-fun m!6672322 () Bool)

(assert (=> b!5718767 m!6672322))

(assert (=> b!5718767 m!6672232))

(assert (=> b!5718767 m!6672322))

(assert (=> b!5718767 m!6672232))

(declare-fun m!6672324 () Bool)

(assert (=> b!5718767 m!6672324))

(assert (=> b!5718409 d!1804023))

(declare-fun d!1804025 () Bool)

(declare-fun c!1008394 () Bool)

(assert (=> d!1804025 (= c!1008394 (isEmpty!35197 (t!376766 s!2326)))))

(declare-fun e!3516765 () Bool)

(assert (=> d!1804025 (= (matchZipper!1853 ((_ map or) lt!2277712 lt!2277735) (t!376766 s!2326)) e!3516765)))

(declare-fun b!5718768 () Bool)

(assert (=> b!5718768 (= e!3516765 (nullableZipper!1665 ((_ map or) lt!2277712 lt!2277735)))))

(declare-fun b!5718769 () Bool)

(assert (=> b!5718769 (= e!3516765 (matchZipper!1853 (derivationStepZipper!1798 ((_ map or) lt!2277712 lt!2277735) (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))))))

(assert (= (and d!1804025 c!1008394) b!5718768))

(assert (= (and d!1804025 (not c!1008394)) b!5718769))

(assert (=> d!1804025 m!6672224))

(declare-fun m!6672326 () Bool)

(assert (=> b!5718768 m!6672326))

(assert (=> b!5718769 m!6672228))

(assert (=> b!5718769 m!6672228))

(declare-fun m!6672328 () Bool)

(assert (=> b!5718769 m!6672328))

(assert (=> b!5718769 m!6672232))

(assert (=> b!5718769 m!6672328))

(assert (=> b!5718769 m!6672232))

(declare-fun m!6672330 () Bool)

(assert (=> b!5718769 m!6672330))

(assert (=> b!5718409 d!1804025))

(declare-fun d!1804027 () Bool)

(declare-fun c!1008395 () Bool)

(assert (=> d!1804027 (= c!1008395 (isEmpty!35197 s!2326))))

(declare-fun e!3516766 () Bool)

(assert (=> d!1804027 (= (matchZipper!1853 z!1189 s!2326) e!3516766)))

(declare-fun b!5718770 () Bool)

(assert (=> b!5718770 (= e!3516766 (nullableZipper!1665 z!1189))))

(declare-fun b!5718771 () Bool)

(assert (=> b!5718771 (= e!3516766 (matchZipper!1853 (derivationStepZipper!1798 z!1189 (head!12109 s!2326)) (tail!11204 s!2326)))))

(assert (= (and d!1804027 c!1008395) b!5718770))

(assert (= (and d!1804027 (not c!1008395)) b!5718771))

(assert (=> d!1804027 m!6672120))

(declare-fun m!6672332 () Bool)

(assert (=> b!5718770 m!6672332))

(assert (=> b!5718771 m!6672186))

(assert (=> b!5718771 m!6672186))

(declare-fun m!6672334 () Bool)

(assert (=> b!5718771 m!6672334))

(assert (=> b!5718771 m!6672188))

(assert (=> b!5718771 m!6672334))

(assert (=> b!5718771 m!6672188))

(declare-fun m!6672336 () Bool)

(assert (=> b!5718771 m!6672336))

(assert (=> b!5718392 d!1804027))

(declare-fun call!436740 () (InoxSet Context!10198))

(declare-fun e!3516795 () (InoxSet Context!10198))

(declare-fun b!5718816 () Bool)

(assert (=> b!5718816 (= e!3516795 ((_ map or) call!436740 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (h!69768 s!2326))))))

(declare-fun b!5718817 () Bool)

(declare-fun e!3516794 () (InoxSet Context!10198))

(assert (=> b!5718817 (= e!3516795 e!3516794)))

(declare-fun c!1008414 () Bool)

(assert (=> b!5718817 (= c!1008414 ((_ is Cons!63321) (exprs!5599 lt!2277736)))))

(declare-fun d!1804029 () Bool)

(declare-fun c!1008415 () Bool)

(declare-fun e!3516793 () Bool)

(assert (=> d!1804029 (= c!1008415 e!3516793)))

(declare-fun res!2414604 () Bool)

(assert (=> d!1804029 (=> (not res!2414604) (not e!3516793))))

(assert (=> d!1804029 (= res!2414604 ((_ is Cons!63321) (exprs!5599 lt!2277736)))))

(assert (=> d!1804029 (= (derivationStepZipperUp!983 lt!2277736 (h!69768 s!2326)) e!3516795)))

(declare-fun b!5718818 () Bool)

(assert (=> b!5718818 (= e!3516794 call!436740)))

(declare-fun b!5718819 () Bool)

(assert (=> b!5718819 (= e!3516794 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436735 () Bool)

(assert (=> bm!436735 (= call!436740 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277736)) (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (h!69768 s!2326)))))

(declare-fun b!5718820 () Bool)

(assert (=> b!5718820 (= e!3516793 (nullable!5747 (h!69769 (exprs!5599 lt!2277736))))))

(assert (= (and d!1804029 res!2414604) b!5718820))

(assert (= (and d!1804029 c!1008415) b!5718816))

(assert (= (and d!1804029 (not c!1008415)) b!5718817))

(assert (= (and b!5718817 c!1008414) b!5718818))

(assert (= (and b!5718817 (not c!1008414)) b!5718819))

(assert (= (or b!5718816 b!5718818) bm!436735))

(declare-fun m!6672358 () Bool)

(assert (=> b!5718816 m!6672358))

(declare-fun m!6672360 () Bool)

(assert (=> bm!436735 m!6672360))

(declare-fun m!6672362 () Bool)

(assert (=> b!5718820 m!6672362))

(assert (=> b!5718391 d!1804029))

(declare-fun d!1804033 () Bool)

(declare-fun dynLambda!24776 (Int Context!10198) (InoxSet Context!10198))

(assert (=> d!1804033 (= (flatMap!1328 z!1189 lambda!308953) (dynLambda!24776 lambda!308953 (h!69770 zl!343)))))

(declare-fun lt!2277795 () Unit!156392)

(declare-fun choose!43241 ((InoxSet Context!10198) Context!10198 Int) Unit!156392)

(assert (=> d!1804033 (= lt!2277795 (choose!43241 z!1189 (h!69770 zl!343) lambda!308953))))

(assert (=> d!1804033 (= z!1189 (store ((as const (Array Context!10198 Bool)) false) (h!69770 zl!343) true))))

(assert (=> d!1804033 (= (lemmaFlatMapOnSingletonSet!860 z!1189 (h!69770 zl!343) lambda!308953) lt!2277795)))

(declare-fun b_lambda!216071 () Bool)

(assert (=> (not b_lambda!216071) (not d!1804033)))

(declare-fun bs!1336839 () Bool)

(assert (= bs!1336839 d!1804033))

(assert (=> bs!1336839 m!6671976))

(declare-fun m!6672388 () Bool)

(assert (=> bs!1336839 m!6672388))

(declare-fun m!6672390 () Bool)

(assert (=> bs!1336839 m!6672390))

(declare-fun m!6672392 () Bool)

(assert (=> bs!1336839 m!6672392))

(assert (=> b!5718391 d!1804033))

(declare-fun d!1804043 () Bool)

(declare-fun nullableFct!1811 (Regex!15715) Bool)

(assert (=> d!1804043 (= (nullable!5747 (h!69769 (exprs!5599 (h!69770 zl!343)))) (nullableFct!1811 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun bs!1336846 () Bool)

(assert (= bs!1336846 d!1804043))

(declare-fun m!6672394 () Bool)

(assert (=> bs!1336846 m!6672394))

(assert (=> b!5718391 d!1804043))

(declare-fun b!5718944 () Bool)

(declare-fun c!1008456 () Bool)

(declare-fun e!3516877 () Bool)

(assert (=> b!5718944 (= c!1008456 e!3516877)))

(declare-fun res!2414642 () Bool)

(assert (=> b!5718944 (=> (not res!2414642) (not e!3516877))))

(assert (=> b!5718944 (= res!2414642 ((_ is Concat!24560) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun e!3516875 () (InoxSet Context!10198))

(declare-fun e!3516878 () (InoxSet Context!10198))

(assert (=> b!5718944 (= e!3516875 e!3516878)))

(declare-fun c!1008454 () Bool)

(declare-fun c!1008455 () Bool)

(declare-fun call!436768 () (InoxSet Context!10198))

(declare-fun call!436770 () List!63445)

(declare-fun bm!436760 () Bool)

(assert (=> bm!436760 (= call!436768 (derivationStepZipperDown!1057 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))) (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770)) (h!69768 s!2326)))))

(declare-fun call!436766 () (InoxSet Context!10198))

(declare-fun call!436765 () List!63445)

(declare-fun bm!436761 () Bool)

(assert (=> bm!436761 (= call!436766 (derivationStepZipperDown!1057 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))) (ite c!1008455 lt!2277736 (Context!10199 call!436765)) (h!69768 s!2326)))))

(declare-fun bm!436762 () Bool)

(declare-fun call!436769 () (InoxSet Context!10198))

(assert (=> bm!436762 (= call!436769 call!436768)))

(declare-fun b!5718947 () Bool)

(declare-fun e!3516876 () (InoxSet Context!10198))

(declare-fun call!436767 () (InoxSet Context!10198))

(assert (=> b!5718947 (= e!3516876 call!436767)))

(declare-fun b!5718948 () Bool)

(declare-fun e!3516874 () (InoxSet Context!10198))

(assert (=> b!5718948 (= e!3516874 (store ((as const (Array Context!10198 Bool)) false) lt!2277736 true))))

(declare-fun b!5718951 () Bool)

(assert (=> b!5718951 (= e!3516874 e!3516875)))

(assert (=> b!5718951 (= c!1008455 ((_ is Union!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5718952 () Bool)

(assert (=> b!5718952 (= e!3516878 ((_ map or) call!436766 call!436769))))

(declare-fun b!5718953 () Bool)

(assert (=> b!5718953 (= e!3516877 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5718956 () Bool)

(declare-fun e!3516873 () (InoxSet Context!10198))

(assert (=> b!5718956 (= e!3516873 call!436767)))

(declare-fun b!5718957 () Bool)

(assert (=> b!5718957 (= e!3516875 ((_ map or) call!436768 call!436766))))

(declare-fun b!5718958 () Bool)

(assert (=> b!5718958 (= e!3516873 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5718959 () Bool)

(declare-fun c!1008457 () Bool)

(assert (=> b!5718959 (= c!1008457 ((_ is Star!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5718959 (= e!3516876 e!3516873)))

(declare-fun d!1804045 () Bool)

(declare-fun c!1008458 () Bool)

(assert (=> d!1804045 (= c!1008458 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))) (= (c!1008289 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326))))))

(assert (=> d!1804045 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (h!69770 zl!343))) lt!2277736 (h!69768 s!2326)) e!3516874)))

(declare-fun bm!436763 () Bool)

(declare-fun $colon$colon!1732 (List!63445 Regex!15715) List!63445)

(assert (=> bm!436763 (= call!436765 ($colon$colon!1732 (exprs!5599 lt!2277736) (ite (or c!1008456 c!1008454) (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69769 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun bm!436764 () Bool)

(assert (=> bm!436764 (= call!436770 call!436765)))

(declare-fun bm!436765 () Bool)

(assert (=> bm!436765 (= call!436767 call!436769)))

(declare-fun b!5718960 () Bool)

(assert (=> b!5718960 (= e!3516878 e!3516876)))

(assert (=> b!5718960 (= c!1008454 ((_ is Concat!24560) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (= (and d!1804045 c!1008458) b!5718948))

(assert (= (and d!1804045 (not c!1008458)) b!5718951))

(assert (= (and b!5718951 c!1008455) b!5718957))

(assert (= (and b!5718951 (not c!1008455)) b!5718944))

(assert (= (and b!5718944 res!2414642) b!5718953))

(assert (= (and b!5718944 c!1008456) b!5718952))

(assert (= (and b!5718944 (not c!1008456)) b!5718960))

(assert (= (and b!5718960 c!1008454) b!5718947))

(assert (= (and b!5718960 (not c!1008454)) b!5718959))

(assert (= (and b!5718959 c!1008457) b!5718956))

(assert (= (and b!5718959 (not c!1008457)) b!5718958))

(assert (= (or b!5718947 b!5718956) bm!436764))

(assert (= (or b!5718947 b!5718956) bm!436765))

(assert (= (or b!5718952 bm!436764) bm!436763))

(assert (= (or b!5718952 bm!436765) bm!436762))

(assert (= (or b!5718957 b!5718952) bm!436761))

(assert (= (or b!5718957 bm!436762) bm!436760))

(declare-fun m!6672448 () Bool)

(assert (=> bm!436760 m!6672448))

(declare-fun m!6672450 () Bool)

(assert (=> b!5718948 m!6672450))

(declare-fun m!6672452 () Bool)

(assert (=> bm!436763 m!6672452))

(declare-fun m!6672454 () Bool)

(assert (=> b!5718953 m!6672454))

(declare-fun m!6672456 () Bool)

(assert (=> bm!436761 m!6672456))

(assert (=> b!5718391 d!1804045))

(declare-fun e!3516888 () (InoxSet Context!10198))

(declare-fun b!5718978 () Bool)

(declare-fun call!436771 () (InoxSet Context!10198))

(assert (=> b!5718978 (= e!3516888 ((_ map or) call!436771 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326))))))

(declare-fun b!5718979 () Bool)

(declare-fun e!3516887 () (InoxSet Context!10198))

(assert (=> b!5718979 (= e!3516888 e!3516887)))

(declare-fun c!1008459 () Bool)

(assert (=> b!5718979 (= c!1008459 ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343))))))

(declare-fun d!1804061 () Bool)

(declare-fun c!1008460 () Bool)

(declare-fun e!3516886 () Bool)

(assert (=> d!1804061 (= c!1008460 e!3516886)))

(declare-fun res!2414643 () Bool)

(assert (=> d!1804061 (=> (not res!2414643) (not e!3516886))))

(assert (=> d!1804061 (= res!2414643 ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (=> d!1804061 (= (derivationStepZipperUp!983 (h!69770 zl!343) (h!69768 s!2326)) e!3516888)))

(declare-fun b!5718980 () Bool)

(assert (=> b!5718980 (= e!3516887 call!436771)))

(declare-fun b!5718981 () Bool)

(assert (=> b!5718981 (= e!3516887 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436766 () Bool)

(assert (=> bm!436766 (= call!436771 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (h!69770 zl!343))) (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326)))))

(declare-fun b!5718982 () Bool)

(assert (=> b!5718982 (= e!3516886 (nullable!5747 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (= (and d!1804061 res!2414643) b!5718982))

(assert (= (and d!1804061 c!1008460) b!5718978))

(assert (= (and d!1804061 (not c!1008460)) b!5718979))

(assert (= (and b!5718979 c!1008459) b!5718980))

(assert (= (and b!5718979 (not c!1008459)) b!5718981))

(assert (= (or b!5718978 b!5718980) bm!436766))

(declare-fun m!6672460 () Bool)

(assert (=> b!5718978 m!6672460))

(declare-fun m!6672462 () Bool)

(assert (=> bm!436766 m!6672462))

(assert (=> b!5718982 m!6671978))

(assert (=> b!5718391 d!1804061))

(declare-fun d!1804063 () Bool)

(declare-fun choose!43242 ((InoxSet Context!10198) Int) (InoxSet Context!10198))

(assert (=> d!1804063 (= (flatMap!1328 z!1189 lambda!308953) (choose!43242 z!1189 lambda!308953))))

(declare-fun bs!1336859 () Bool)

(assert (= bs!1336859 d!1804063))

(declare-fun m!6672466 () Bool)

(assert (=> bs!1336859 m!6672466))

(assert (=> b!5718391 d!1804063))

(declare-fun b!5719004 () Bool)

(declare-fun e!3516901 () (InoxSet Context!10198))

(declare-fun call!436772 () (InoxSet Context!10198))

(assert (=> b!5719004 (= e!3516901 ((_ map or) call!436772 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326))))))

(declare-fun b!5719005 () Bool)

(declare-fun e!3516900 () (InoxSet Context!10198))

(assert (=> b!5719005 (= e!3516901 e!3516900)))

(declare-fun c!1008461 () Bool)

(assert (=> b!5719005 (= c!1008461 ((_ is Cons!63321) (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))

(declare-fun d!1804073 () Bool)

(declare-fun c!1008462 () Bool)

(declare-fun e!3516899 () Bool)

(assert (=> d!1804073 (= c!1008462 e!3516899)))

(declare-fun res!2414644 () Bool)

(assert (=> d!1804073 (=> (not res!2414644) (not e!3516899))))

(assert (=> d!1804073 (= res!2414644 ((_ is Cons!63321) (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))

(assert (=> d!1804073 (= (derivationStepZipperUp!983 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))) (h!69768 s!2326)) e!3516901)))

(declare-fun b!5719006 () Bool)

(assert (=> b!5719006 (= e!3516900 call!436772)))

(declare-fun b!5719007 () Bool)

(assert (=> b!5719007 (= e!3516900 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436767 () Bool)

(assert (=> bm!436767 (= call!436772 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326)))))

(declare-fun b!5719008 () Bool)

(assert (=> b!5719008 (= e!3516899 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(assert (= (and d!1804073 res!2414644) b!5719008))

(assert (= (and d!1804073 c!1008462) b!5719004))

(assert (= (and d!1804073 (not c!1008462)) b!5719005))

(assert (= (and b!5719005 c!1008461) b!5719006))

(assert (= (and b!5719005 (not c!1008461)) b!5719007))

(assert (= (or b!5719004 b!5719006) bm!436767))

(declare-fun m!6672468 () Bool)

(assert (=> b!5719004 m!6672468))

(declare-fun m!6672470 () Bool)

(assert (=> bm!436767 m!6672470))

(declare-fun m!6672472 () Bool)

(assert (=> b!5719008 m!6672472))

(assert (=> b!5718391 d!1804073))

(declare-fun d!1804075 () Bool)

(declare-fun lt!2277805 () Regex!15715)

(assert (=> d!1804075 (validRegex!7451 lt!2277805)))

(assert (=> d!1804075 (= lt!2277805 (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))

(assert (=> d!1804075 (= (unfocusZipper!1457 (Cons!63322 lt!2277710 Nil!63322)) lt!2277805)))

(declare-fun bs!1336861 () Bool)

(assert (= bs!1336861 d!1804075))

(declare-fun m!6672474 () Bool)

(assert (=> bs!1336861 m!6672474))

(declare-fun m!6672476 () Bool)

(assert (=> bs!1336861 m!6672476))

(assert (=> bs!1336861 m!6672476))

(declare-fun m!6672478 () Bool)

(assert (=> bs!1336861 m!6672478))

(assert (=> b!5718377 d!1804075))

(declare-fun bs!1336862 () Bool)

(declare-fun d!1804077 () Bool)

(assert (= bs!1336862 (and d!1804077 d!1803977)))

(declare-fun lambda!308999 () Int)

(assert (=> bs!1336862 (= lambda!308999 lambda!308976)))

(declare-fun bs!1336863 () Bool)

(assert (= bs!1336863 (and d!1804077 d!1803987)))

(assert (=> bs!1336863 (= lambda!308999 lambda!308981)))

(declare-fun e!3516916 () Bool)

(assert (=> d!1804077 e!3516916))

(declare-fun res!2414649 () Bool)

(assert (=> d!1804077 (=> (not res!2414649) (not e!3516916))))

(declare-fun lt!2277808 () Regex!15715)

(assert (=> d!1804077 (= res!2414649 (validRegex!7451 lt!2277808))))

(declare-fun e!3516914 () Regex!15715)

(assert (=> d!1804077 (= lt!2277808 e!3516914)))

(declare-fun c!1008472 () Bool)

(declare-fun e!3516919 () Bool)

(assert (=> d!1804077 (= c!1008472 e!3516919)))

(declare-fun res!2414650 () Bool)

(assert (=> d!1804077 (=> (not res!2414650) (not e!3516919))))

(assert (=> d!1804077 (= res!2414650 ((_ is Cons!63321) (unfocusZipperList!1143 zl!343)))))

(assert (=> d!1804077 (forall!14850 (unfocusZipperList!1143 zl!343) lambda!308999)))

(assert (=> d!1804077 (= (generalisedUnion!1578 (unfocusZipperList!1143 zl!343)) lt!2277808)))

(declare-fun b!5719029 () Bool)

(declare-fun e!3516918 () Regex!15715)

(assert (=> b!5719029 (= e!3516918 EmptyLang!15715)))

(declare-fun b!5719030 () Bool)

(assert (=> b!5719030 (= e!3516914 (h!69769 (unfocusZipperList!1143 zl!343)))))

(declare-fun b!5719031 () Bool)

(assert (=> b!5719031 (= e!3516918 (Union!15715 (h!69769 (unfocusZipperList!1143 zl!343)) (generalisedUnion!1578 (t!376767 (unfocusZipperList!1143 zl!343)))))))

(declare-fun b!5719032 () Bool)

(declare-fun e!3516917 () Bool)

(declare-fun isUnion!664 (Regex!15715) Bool)

(assert (=> b!5719032 (= e!3516917 (isUnion!664 lt!2277808))))

(declare-fun b!5719033 () Bool)

(assert (=> b!5719033 (= e!3516919 (isEmpty!35194 (t!376767 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5719034 () Bool)

(declare-fun e!3516915 () Bool)

(declare-fun isEmptyLang!1234 (Regex!15715) Bool)

(assert (=> b!5719034 (= e!3516915 (isEmptyLang!1234 lt!2277808))))

(declare-fun b!5719035 () Bool)

(assert (=> b!5719035 (= e!3516916 e!3516915)))

(declare-fun c!1008473 () Bool)

(assert (=> b!5719035 (= c!1008473 (isEmpty!35194 (unfocusZipperList!1143 zl!343)))))

(declare-fun b!5719036 () Bool)

(assert (=> b!5719036 (= e!3516914 e!3516918)))

(declare-fun c!1008474 () Bool)

(assert (=> b!5719036 (= c!1008474 ((_ is Cons!63321) (unfocusZipperList!1143 zl!343)))))

(declare-fun b!5719037 () Bool)

(declare-fun head!12111 (List!63445) Regex!15715)

(assert (=> b!5719037 (= e!3516917 (= lt!2277808 (head!12111 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5719038 () Bool)

(assert (=> b!5719038 (= e!3516915 e!3516917)))

(declare-fun c!1008471 () Bool)

(declare-fun tail!11206 (List!63445) List!63445)

(assert (=> b!5719038 (= c!1008471 (isEmpty!35194 (tail!11206 (unfocusZipperList!1143 zl!343))))))

(assert (= (and d!1804077 res!2414650) b!5719033))

(assert (= (and d!1804077 c!1008472) b!5719030))

(assert (= (and d!1804077 (not c!1008472)) b!5719036))

(assert (= (and b!5719036 c!1008474) b!5719031))

(assert (= (and b!5719036 (not c!1008474)) b!5719029))

(assert (= (and d!1804077 res!2414649) b!5719035))

(assert (= (and b!5719035 c!1008473) b!5719034))

(assert (= (and b!5719035 (not c!1008473)) b!5719038))

(assert (= (and b!5719038 c!1008471) b!5719037))

(assert (= (and b!5719038 (not c!1008471)) b!5719032))

(declare-fun m!6672480 () Bool)

(assert (=> b!5719034 m!6672480))

(declare-fun m!6672482 () Bool)

(assert (=> b!5719033 m!6672482))

(assert (=> b!5719035 m!6671998))

(declare-fun m!6672484 () Bool)

(assert (=> b!5719035 m!6672484))

(assert (=> b!5719037 m!6671998))

(declare-fun m!6672486 () Bool)

(assert (=> b!5719037 m!6672486))

(declare-fun m!6672488 () Bool)

(assert (=> d!1804077 m!6672488))

(assert (=> d!1804077 m!6671998))

(declare-fun m!6672490 () Bool)

(assert (=> d!1804077 m!6672490))

(declare-fun m!6672492 () Bool)

(assert (=> b!5719031 m!6672492))

(assert (=> b!5719038 m!6671998))

(declare-fun m!6672494 () Bool)

(assert (=> b!5719038 m!6672494))

(assert (=> b!5719038 m!6672494))

(declare-fun m!6672496 () Bool)

(assert (=> b!5719038 m!6672496))

(declare-fun m!6672498 () Bool)

(assert (=> b!5719032 m!6672498))

(assert (=> b!5718398 d!1804077))

(declare-fun bs!1336864 () Bool)

(declare-fun d!1804079 () Bool)

(assert (= bs!1336864 (and d!1804079 d!1803977)))

(declare-fun lambda!309002 () Int)

(assert (=> bs!1336864 (= lambda!309002 lambda!308976)))

(declare-fun bs!1336865 () Bool)

(assert (= bs!1336865 (and d!1804079 d!1803987)))

(assert (=> bs!1336865 (= lambda!309002 lambda!308981)))

(declare-fun bs!1336866 () Bool)

(assert (= bs!1336866 (and d!1804079 d!1804077)))

(assert (=> bs!1336866 (= lambda!309002 lambda!308999)))

(declare-fun lt!2277811 () List!63445)

(assert (=> d!1804079 (forall!14850 lt!2277811 lambda!309002)))

(declare-fun e!3516922 () List!63445)

(assert (=> d!1804079 (= lt!2277811 e!3516922)))

(declare-fun c!1008477 () Bool)

(assert (=> d!1804079 (= c!1008477 ((_ is Cons!63322) zl!343))))

(assert (=> d!1804079 (= (unfocusZipperList!1143 zl!343) lt!2277811)))

(declare-fun b!5719043 () Bool)

(assert (=> b!5719043 (= e!3516922 (Cons!63321 (generalisedConcat!1330 (exprs!5599 (h!69770 zl!343))) (unfocusZipperList!1143 (t!376768 zl!343))))))

(declare-fun b!5719044 () Bool)

(assert (=> b!5719044 (= e!3516922 Nil!63321)))

(assert (= (and d!1804079 c!1008477) b!5719043))

(assert (= (and d!1804079 (not c!1008477)) b!5719044))

(declare-fun m!6672500 () Bool)

(assert (=> d!1804079 m!6672500))

(assert (=> b!5719043 m!6672022))

(declare-fun m!6672502 () Bool)

(assert (=> b!5719043 m!6672502))

(assert (=> b!5718398 d!1804079))

(declare-fun d!1804081 () Bool)

(assert (=> d!1804081 (= (isEmpty!35194 (t!376767 (exprs!5599 (h!69770 zl!343)))) ((_ is Nil!63321) (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5718400 d!1804081))

(declare-fun d!1804083 () Bool)

(assert (=> d!1804083 (= (flatMap!1328 lt!2277730 lambda!308953) (choose!43242 lt!2277730 lambda!308953))))

(declare-fun bs!1336867 () Bool)

(assert (= bs!1336867 d!1804083))

(declare-fun m!6672504 () Bool)

(assert (=> bs!1336867 m!6672504))

(assert (=> b!5718389 d!1804083))

(declare-fun e!3516925 () (InoxSet Context!10198))

(declare-fun call!436773 () (InoxSet Context!10198))

(declare-fun b!5719045 () Bool)

(assert (=> b!5719045 (= e!3516925 ((_ map or) call!436773 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (h!69768 s!2326))))))

(declare-fun b!5719046 () Bool)

(declare-fun e!3516924 () (InoxSet Context!10198))

(assert (=> b!5719046 (= e!3516925 e!3516924)))

(declare-fun c!1008478 () Bool)

(assert (=> b!5719046 (= c!1008478 ((_ is Cons!63321) (exprs!5599 lt!2277710)))))

(declare-fun d!1804085 () Bool)

(declare-fun c!1008479 () Bool)

(declare-fun e!3516923 () Bool)

(assert (=> d!1804085 (= c!1008479 e!3516923)))

(declare-fun res!2414651 () Bool)

(assert (=> d!1804085 (=> (not res!2414651) (not e!3516923))))

(assert (=> d!1804085 (= res!2414651 ((_ is Cons!63321) (exprs!5599 lt!2277710)))))

(assert (=> d!1804085 (= (derivationStepZipperUp!983 lt!2277710 (h!69768 s!2326)) e!3516925)))

(declare-fun b!5719047 () Bool)

(assert (=> b!5719047 (= e!3516924 call!436773)))

(declare-fun b!5719048 () Bool)

(assert (=> b!5719048 (= e!3516924 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436768 () Bool)

(assert (=> bm!436768 (= call!436773 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277710)) (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (h!69768 s!2326)))))

(declare-fun b!5719049 () Bool)

(assert (=> b!5719049 (= e!3516923 (nullable!5747 (h!69769 (exprs!5599 lt!2277710))))))

(assert (= (and d!1804085 res!2414651) b!5719049))

(assert (= (and d!1804085 c!1008479) b!5719045))

(assert (= (and d!1804085 (not c!1008479)) b!5719046))

(assert (= (and b!5719046 c!1008478) b!5719047))

(assert (= (and b!5719046 (not c!1008478)) b!5719048))

(assert (= (or b!5719045 b!5719047) bm!436768))

(declare-fun m!6672506 () Bool)

(assert (=> b!5719045 m!6672506))

(declare-fun m!6672508 () Bool)

(assert (=> bm!436768 m!6672508))

(declare-fun m!6672510 () Bool)

(assert (=> b!5719049 m!6672510))

(assert (=> b!5718389 d!1804085))

(declare-fun d!1804087 () Bool)

(assert (=> d!1804087 (= (flatMap!1328 lt!2277730 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277710))))

(declare-fun lt!2277812 () Unit!156392)

(assert (=> d!1804087 (= lt!2277812 (choose!43241 lt!2277730 lt!2277710 lambda!308953))))

(assert (=> d!1804087 (= lt!2277730 (store ((as const (Array Context!10198 Bool)) false) lt!2277710 true))))

(assert (=> d!1804087 (= (lemmaFlatMapOnSingletonSet!860 lt!2277730 lt!2277710 lambda!308953) lt!2277812)))

(declare-fun b_lambda!216081 () Bool)

(assert (=> (not b_lambda!216081) (not d!1804087)))

(declare-fun bs!1336868 () Bool)

(assert (= bs!1336868 d!1804087))

(assert (=> bs!1336868 m!6672054))

(declare-fun m!6672512 () Bool)

(assert (=> bs!1336868 m!6672512))

(declare-fun m!6672514 () Bool)

(assert (=> bs!1336868 m!6672514))

(assert (=> bs!1336868 m!6672050))

(assert (=> b!5718389 d!1804087))

(declare-fun bs!1336869 () Bool)

(declare-fun d!1804089 () Bool)

(assert (= bs!1336869 (and d!1804089 b!5718391)))

(declare-fun lambda!309005 () Int)

(assert (=> bs!1336869 (= lambda!309005 lambda!308953)))

(assert (=> d!1804089 true))

(assert (=> d!1804089 (= (derivationStepZipper!1798 lt!2277730 (h!69768 s!2326)) (flatMap!1328 lt!2277730 lambda!309005))))

(declare-fun bs!1336870 () Bool)

(assert (= bs!1336870 d!1804089))

(declare-fun m!6672516 () Bool)

(assert (=> bs!1336870 m!6672516))

(assert (=> b!5718389 d!1804089))

(declare-fun d!1804091 () Bool)

(declare-fun lt!2277813 () Regex!15715)

(assert (=> d!1804091 (validRegex!7451 lt!2277813)))

(assert (=> d!1804091 (= lt!2277813 (generalisedUnion!1578 (unfocusZipperList!1143 zl!343)))))

(assert (=> d!1804091 (= (unfocusZipper!1457 zl!343) lt!2277813)))

(declare-fun bs!1336871 () Bool)

(assert (= bs!1336871 d!1804091))

(declare-fun m!6672518 () Bool)

(assert (=> bs!1336871 m!6672518))

(assert (=> bs!1336871 m!6671998))

(assert (=> bs!1336871 m!6671998))

(assert (=> bs!1336871 m!6672000))

(assert (=> b!5718378 d!1804091))

(declare-fun d!1804093 () Bool)

(declare-fun lt!2277814 () Regex!15715)

(assert (=> d!1804093 (validRegex!7451 lt!2277814)))

(assert (=> d!1804093 (= lt!2277814 (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))

(assert (=> d!1804093 (= (unfocusZipper!1457 (Cons!63322 lt!2277732 Nil!63322)) lt!2277814)))

(declare-fun bs!1336872 () Bool)

(assert (= bs!1336872 d!1804093))

(declare-fun m!6672520 () Bool)

(assert (=> bs!1336872 m!6672520))

(declare-fun m!6672522 () Bool)

(assert (=> bs!1336872 m!6672522))

(assert (=> bs!1336872 m!6672522))

(declare-fun m!6672524 () Bool)

(assert (=> bs!1336872 m!6672524))

(assert (=> b!5718399 d!1804093))

(declare-fun d!1804095 () Bool)

(assert (=> d!1804095 (= (flatMap!1328 lt!2277718 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277732))))

(declare-fun lt!2277815 () Unit!156392)

(assert (=> d!1804095 (= lt!2277815 (choose!43241 lt!2277718 lt!2277732 lambda!308953))))

(assert (=> d!1804095 (= lt!2277718 (store ((as const (Array Context!10198 Bool)) false) lt!2277732 true))))

(assert (=> d!1804095 (= (lemmaFlatMapOnSingletonSet!860 lt!2277718 lt!2277732 lambda!308953) lt!2277815)))

(declare-fun b_lambda!216083 () Bool)

(assert (=> (not b_lambda!216083) (not d!1804095)))

(declare-fun bs!1336873 () Bool)

(assert (= bs!1336873 d!1804095))

(assert (=> bs!1336873 m!6672004))

(declare-fun m!6672526 () Bool)

(assert (=> bs!1336873 m!6672526))

(declare-fun m!6672528 () Bool)

(assert (=> bs!1336873 m!6672528))

(assert (=> bs!1336873 m!6672012))

(assert (=> b!5718385 d!1804095))

(declare-fun e!3516928 () (InoxSet Context!10198))

(declare-fun b!5719052 () Bool)

(declare-fun call!436774 () (InoxSet Context!10198))

(assert (=> b!5719052 (= e!3516928 ((_ map or) call!436774 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (h!69768 s!2326))))))

(declare-fun b!5719053 () Bool)

(declare-fun e!3516927 () (InoxSet Context!10198))

(assert (=> b!5719053 (= e!3516928 e!3516927)))

(declare-fun c!1008482 () Bool)

(assert (=> b!5719053 (= c!1008482 ((_ is Cons!63321) (exprs!5599 lt!2277713)))))

(declare-fun d!1804097 () Bool)

(declare-fun c!1008483 () Bool)

(declare-fun e!3516926 () Bool)

(assert (=> d!1804097 (= c!1008483 e!3516926)))

(declare-fun res!2414652 () Bool)

(assert (=> d!1804097 (=> (not res!2414652) (not e!3516926))))

(assert (=> d!1804097 (= res!2414652 ((_ is Cons!63321) (exprs!5599 lt!2277713)))))

(assert (=> d!1804097 (= (derivationStepZipperUp!983 lt!2277713 (h!69768 s!2326)) e!3516928)))

(declare-fun b!5719054 () Bool)

(assert (=> b!5719054 (= e!3516927 call!436774)))

(declare-fun b!5719055 () Bool)

(assert (=> b!5719055 (= e!3516927 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436769 () Bool)

(assert (=> bm!436769 (= call!436774 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277713)) (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (h!69768 s!2326)))))

(declare-fun b!5719056 () Bool)

(assert (=> b!5719056 (= e!3516926 (nullable!5747 (h!69769 (exprs!5599 lt!2277713))))))

(assert (= (and d!1804097 res!2414652) b!5719056))

(assert (= (and d!1804097 c!1008483) b!5719052))

(assert (= (and d!1804097 (not c!1008483)) b!5719053))

(assert (= (and b!5719053 c!1008482) b!5719054))

(assert (= (and b!5719053 (not c!1008482)) b!5719055))

(assert (= (or b!5719052 b!5719054) bm!436769))

(declare-fun m!6672530 () Bool)

(assert (=> b!5719052 m!6672530))

(declare-fun m!6672532 () Bool)

(assert (=> bm!436769 m!6672532))

(declare-fun m!6672534 () Bool)

(assert (=> b!5719056 m!6672534))

(assert (=> b!5718385 d!1804097))

(declare-fun d!1804099 () Bool)

(assert (=> d!1804099 (= (flatMap!1328 lt!2277725 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277713))))

(declare-fun lt!2277816 () Unit!156392)

(assert (=> d!1804099 (= lt!2277816 (choose!43241 lt!2277725 lt!2277713 lambda!308953))))

(assert (=> d!1804099 (= lt!2277725 (store ((as const (Array Context!10198 Bool)) false) lt!2277713 true))))

(assert (=> d!1804099 (= (lemmaFlatMapOnSingletonSet!860 lt!2277725 lt!2277713 lambda!308953) lt!2277816)))

(declare-fun b_lambda!216085 () Bool)

(assert (=> (not b_lambda!216085) (not d!1804099)))

(declare-fun bs!1336874 () Bool)

(assert (= bs!1336874 d!1804099))

(assert (=> bs!1336874 m!6672008))

(declare-fun m!6672536 () Bool)

(assert (=> bs!1336874 m!6672536))

(declare-fun m!6672538 () Bool)

(assert (=> bs!1336874 m!6672538))

(assert (=> bs!1336874 m!6672002))

(assert (=> b!5718385 d!1804099))

(declare-fun d!1804101 () Bool)

(declare-fun lt!2277817 () Regex!15715)

(assert (=> d!1804101 (validRegex!7451 lt!2277817)))

(assert (=> d!1804101 (= lt!2277817 (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))

(assert (=> d!1804101 (= (unfocusZipper!1457 (Cons!63322 lt!2277713 Nil!63322)) lt!2277817)))

(declare-fun bs!1336875 () Bool)

(assert (= bs!1336875 d!1804101))

(declare-fun m!6672540 () Bool)

(assert (=> bs!1336875 m!6672540))

(declare-fun m!6672542 () Bool)

(assert (=> bs!1336875 m!6672542))

(assert (=> bs!1336875 m!6672542))

(declare-fun m!6672544 () Bool)

(assert (=> bs!1336875 m!6672544))

(assert (=> b!5718385 d!1804101))

(declare-fun d!1804103 () Bool)

(assert (=> d!1804103 (= (flatMap!1328 lt!2277725 lambda!308953) (choose!43242 lt!2277725 lambda!308953))))

(declare-fun bs!1336876 () Bool)

(assert (= bs!1336876 d!1804103))

(declare-fun m!6672546 () Bool)

(assert (=> bs!1336876 m!6672546))

(assert (=> b!5718385 d!1804103))

(declare-fun b!5719057 () Bool)

(declare-fun call!436775 () (InoxSet Context!10198))

(declare-fun e!3516931 () (InoxSet Context!10198))

(assert (=> b!5719057 (= e!3516931 ((_ map or) call!436775 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (h!69768 s!2326))))))

(declare-fun b!5719058 () Bool)

(declare-fun e!3516930 () (InoxSet Context!10198))

(assert (=> b!5719058 (= e!3516931 e!3516930)))

(declare-fun c!1008484 () Bool)

(assert (=> b!5719058 (= c!1008484 ((_ is Cons!63321) (exprs!5599 lt!2277732)))))

(declare-fun d!1804105 () Bool)

(declare-fun c!1008485 () Bool)

(declare-fun e!3516929 () Bool)

(assert (=> d!1804105 (= c!1008485 e!3516929)))

(declare-fun res!2414653 () Bool)

(assert (=> d!1804105 (=> (not res!2414653) (not e!3516929))))

(assert (=> d!1804105 (= res!2414653 ((_ is Cons!63321) (exprs!5599 lt!2277732)))))

(assert (=> d!1804105 (= (derivationStepZipperUp!983 lt!2277732 (h!69768 s!2326)) e!3516931)))

(declare-fun b!5719059 () Bool)

(assert (=> b!5719059 (= e!3516930 call!436775)))

(declare-fun b!5719060 () Bool)

(assert (=> b!5719060 (= e!3516930 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436770 () Bool)

(assert (=> bm!436770 (= call!436775 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277732)) (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (h!69768 s!2326)))))

(declare-fun b!5719061 () Bool)

(assert (=> b!5719061 (= e!3516929 (nullable!5747 (h!69769 (exprs!5599 lt!2277732))))))

(assert (= (and d!1804105 res!2414653) b!5719061))

(assert (= (and d!1804105 c!1008485) b!5719057))

(assert (= (and d!1804105 (not c!1008485)) b!5719058))

(assert (= (and b!5719058 c!1008484) b!5719059))

(assert (= (and b!5719058 (not c!1008484)) b!5719060))

(assert (= (or b!5719057 b!5719059) bm!436770))

(declare-fun m!6672548 () Bool)

(assert (=> b!5719057 m!6672548))

(declare-fun m!6672550 () Bool)

(assert (=> bm!436770 m!6672550))

(declare-fun m!6672552 () Bool)

(assert (=> b!5719061 m!6672552))

(assert (=> b!5718385 d!1804105))

(declare-fun d!1804107 () Bool)

(assert (=> d!1804107 (= (flatMap!1328 lt!2277718 lambda!308953) (choose!43242 lt!2277718 lambda!308953))))

(declare-fun bs!1336877 () Bool)

(assert (= bs!1336877 d!1804107))

(declare-fun m!6672554 () Bool)

(assert (=> bs!1336877 m!6672554))

(assert (=> b!5718385 d!1804107))

(declare-fun d!1804109 () Bool)

(declare-fun e!3516934 () Bool)

(assert (=> d!1804109 e!3516934))

(declare-fun res!2414656 () Bool)

(assert (=> d!1804109 (=> (not res!2414656) (not e!3516934))))

(declare-fun lt!2277820 () List!63446)

(declare-fun noDuplicate!1645 (List!63446) Bool)

(assert (=> d!1804109 (= res!2414656 (noDuplicate!1645 lt!2277820))))

(declare-fun choose!43244 ((InoxSet Context!10198)) List!63446)

(assert (=> d!1804109 (= lt!2277820 (choose!43244 z!1189))))

(assert (=> d!1804109 (= (toList!9499 z!1189) lt!2277820)))

(declare-fun b!5719064 () Bool)

(declare-fun content!11504 (List!63446) (InoxSet Context!10198))

(assert (=> b!5719064 (= e!3516934 (= (content!11504 lt!2277820) z!1189))))

(assert (= (and d!1804109 res!2414656) b!5719064))

(declare-fun m!6672556 () Bool)

(assert (=> d!1804109 m!6672556))

(declare-fun m!6672558 () Bool)

(assert (=> d!1804109 m!6672558))

(declare-fun m!6672560 () Bool)

(assert (=> b!5719064 m!6672560))

(assert (=> b!5718404 d!1804109))

(declare-fun b!5719065 () Bool)

(declare-fun e!3516936 () Bool)

(declare-fun e!3516935 () Bool)

(assert (=> b!5719065 (= e!3516936 e!3516935)))

(declare-fun c!1008487 () Bool)

(assert (=> b!5719065 (= c!1008487 ((_ is EmptyLang!15715) lt!2277714))))

(declare-fun b!5719066 () Bool)

(declare-fun lt!2277821 () Bool)

(assert (=> b!5719066 (= e!3516935 (not lt!2277821))))

(declare-fun b!5719067 () Bool)

(declare-fun e!3516939 () Bool)

(assert (=> b!5719067 (= e!3516939 (not (= (head!12109 s!2326) (c!1008289 lt!2277714))))))

(declare-fun b!5719068 () Bool)

(declare-fun e!3516938 () Bool)

(assert (=> b!5719068 (= e!3516938 (= (head!12109 s!2326) (c!1008289 lt!2277714)))))

(declare-fun b!5719069 () Bool)

(declare-fun res!2414660 () Bool)

(assert (=> b!5719069 (=> (not res!2414660) (not e!3516938))))

(assert (=> b!5719069 (= res!2414660 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun b!5719070 () Bool)

(declare-fun e!3516941 () Bool)

(assert (=> b!5719070 (= e!3516941 e!3516939)))

(declare-fun res!2414659 () Bool)

(assert (=> b!5719070 (=> res!2414659 e!3516939)))

(declare-fun call!436776 () Bool)

(assert (=> b!5719070 (= res!2414659 call!436776)))

(declare-fun b!5719071 () Bool)

(assert (=> b!5719071 (= e!3516936 (= lt!2277821 call!436776))))

(declare-fun b!5719072 () Bool)

(declare-fun e!3516940 () Bool)

(assert (=> b!5719072 (= e!3516940 (matchR!7900 (derivativeStep!4518 lt!2277714 (head!12109 s!2326)) (tail!11204 s!2326)))))

(declare-fun d!1804111 () Bool)

(assert (=> d!1804111 e!3516936))

(declare-fun c!1008486 () Bool)

(assert (=> d!1804111 (= c!1008486 ((_ is EmptyExpr!15715) lt!2277714))))

(assert (=> d!1804111 (= lt!2277821 e!3516940)))

(declare-fun c!1008488 () Bool)

(assert (=> d!1804111 (= c!1008488 (isEmpty!35197 s!2326))))

(assert (=> d!1804111 (validRegex!7451 lt!2277714)))

(assert (=> d!1804111 (= (matchR!7900 lt!2277714 s!2326) lt!2277821)))

(declare-fun b!5719073 () Bool)

(declare-fun res!2414657 () Bool)

(assert (=> b!5719073 (=> (not res!2414657) (not e!3516938))))

(assert (=> b!5719073 (= res!2414657 (not call!436776))))

(declare-fun b!5719074 () Bool)

(declare-fun res!2414663 () Bool)

(declare-fun e!3516937 () Bool)

(assert (=> b!5719074 (=> res!2414663 e!3516937)))

(assert (=> b!5719074 (= res!2414663 e!3516938)))

(declare-fun res!2414661 () Bool)

(assert (=> b!5719074 (=> (not res!2414661) (not e!3516938))))

(assert (=> b!5719074 (= res!2414661 lt!2277821)))

(declare-fun b!5719075 () Bool)

(assert (=> b!5719075 (= e!3516940 (nullable!5747 lt!2277714))))

(declare-fun bm!436771 () Bool)

(assert (=> bm!436771 (= call!436776 (isEmpty!35197 s!2326))))

(declare-fun b!5719076 () Bool)

(declare-fun res!2414664 () Bool)

(assert (=> b!5719076 (=> res!2414664 e!3516939)))

(assert (=> b!5719076 (= res!2414664 (not (isEmpty!35197 (tail!11204 s!2326))))))

(declare-fun b!5719077 () Bool)

(assert (=> b!5719077 (= e!3516937 e!3516941)))

(declare-fun res!2414662 () Bool)

(assert (=> b!5719077 (=> (not res!2414662) (not e!3516941))))

(assert (=> b!5719077 (= res!2414662 (not lt!2277821))))

(declare-fun b!5719078 () Bool)

(declare-fun res!2414658 () Bool)

(assert (=> b!5719078 (=> res!2414658 e!3516937)))

(assert (=> b!5719078 (= res!2414658 (not ((_ is ElementMatch!15715) lt!2277714)))))

(assert (=> b!5719078 (= e!3516935 e!3516937)))

(assert (= (and d!1804111 c!1008488) b!5719075))

(assert (= (and d!1804111 (not c!1008488)) b!5719072))

(assert (= (and d!1804111 c!1008486) b!5719071))

(assert (= (and d!1804111 (not c!1008486)) b!5719065))

(assert (= (and b!5719065 c!1008487) b!5719066))

(assert (= (and b!5719065 (not c!1008487)) b!5719078))

(assert (= (and b!5719078 (not res!2414658)) b!5719074))

(assert (= (and b!5719074 res!2414661) b!5719073))

(assert (= (and b!5719073 res!2414657) b!5719069))

(assert (= (and b!5719069 res!2414660) b!5719068))

(assert (= (and b!5719074 (not res!2414663)) b!5719077))

(assert (= (and b!5719077 res!2414662) b!5719070))

(assert (= (and b!5719070 (not res!2414659)) b!5719076))

(assert (= (and b!5719076 (not res!2414664)) b!5719067))

(assert (= (or b!5719071 b!5719070 b!5719073) bm!436771))

(assert (=> b!5719068 m!6672186))

(assert (=> b!5719069 m!6672188))

(assert (=> b!5719069 m!6672188))

(assert (=> b!5719069 m!6672190))

(declare-fun m!6672562 () Bool)

(assert (=> b!5719075 m!6672562))

(assert (=> b!5719067 m!6672186))

(assert (=> b!5719076 m!6672188))

(assert (=> b!5719076 m!6672188))

(assert (=> b!5719076 m!6672190))

(assert (=> bm!436771 m!6672120))

(assert (=> d!1804111 m!6672120))

(declare-fun m!6672564 () Bool)

(assert (=> d!1804111 m!6672564))

(assert (=> b!5719072 m!6672186))

(assert (=> b!5719072 m!6672186))

(declare-fun m!6672566 () Bool)

(assert (=> b!5719072 m!6672566))

(assert (=> b!5719072 m!6672188))

(assert (=> b!5719072 m!6672566))

(assert (=> b!5719072 m!6672188))

(declare-fun m!6672568 () Bool)

(assert (=> b!5719072 m!6672568))

(assert (=> b!5718374 d!1804111))

(declare-fun bs!1336878 () Bool)

(declare-fun b!5719084 () Bool)

(assert (= bs!1336878 (and b!5719084 b!5718386)))

(declare-fun lambda!309006 () Int)

(assert (=> bs!1336878 (not (= lambda!309006 lambda!308951))))

(assert (=> bs!1336878 (not (= lambda!309006 lambda!308952))))

(declare-fun bs!1336879 () Bool)

(assert (= bs!1336879 (and b!5719084 b!5718492)))

(assert (=> bs!1336879 (= (and (= (reg!16044 lt!2277714) (reg!16044 r!7292)) (= lt!2277714 r!7292)) (= lambda!309006 lambda!308967))))

(declare-fun bs!1336880 () Bool)

(assert (= bs!1336880 (and b!5719084 b!5718490)))

(assert (=> bs!1336880 (not (= lambda!309006 lambda!308968))))

(assert (=> b!5719084 true))

(assert (=> b!5719084 true))

(declare-fun bs!1336881 () Bool)

(declare-fun b!5719082 () Bool)

(assert (= bs!1336881 (and b!5719082 b!5718386)))

(declare-fun lambda!309007 () Int)

(assert (=> bs!1336881 (= (and (= (regOne!31942 lt!2277714) (regOne!31942 r!7292)) (= (regTwo!31942 lt!2277714) (regTwo!31942 r!7292))) (= lambda!309007 lambda!308952))))

(assert (=> bs!1336881 (not (= lambda!309007 lambda!308951))))

(declare-fun bs!1336882 () Bool)

(assert (= bs!1336882 (and b!5719082 b!5718490)))

(assert (=> bs!1336882 (= (and (= (regOne!31942 lt!2277714) (regOne!31942 r!7292)) (= (regTwo!31942 lt!2277714) (regTwo!31942 r!7292))) (= lambda!309007 lambda!308968))))

(declare-fun bs!1336883 () Bool)

(assert (= bs!1336883 (and b!5719082 b!5719084)))

(assert (=> bs!1336883 (not (= lambda!309007 lambda!309006))))

(declare-fun bs!1336884 () Bool)

(assert (= bs!1336884 (and b!5719082 b!5718492)))

(assert (=> bs!1336884 (not (= lambda!309007 lambda!308967))))

(assert (=> b!5719082 true))

(assert (=> b!5719082 true))

(declare-fun b!5719079 () Bool)

(declare-fun c!1008489 () Bool)

(assert (=> b!5719079 (= c!1008489 ((_ is Union!15715) lt!2277714))))

(declare-fun e!3516948 () Bool)

(declare-fun e!3516943 () Bool)

(assert (=> b!5719079 (= e!3516948 e!3516943)))

(declare-fun b!5719080 () Bool)

(declare-fun e!3516945 () Bool)

(declare-fun call!436778 () Bool)

(assert (=> b!5719080 (= e!3516945 call!436778)))

(declare-fun b!5719081 () Bool)

(declare-fun e!3516947 () Bool)

(assert (=> b!5719081 (= e!3516945 e!3516947)))

(declare-fun res!2414667 () Bool)

(assert (=> b!5719081 (= res!2414667 (not ((_ is EmptyLang!15715) lt!2277714)))))

(assert (=> b!5719081 (=> (not res!2414667) (not e!3516947))))

(declare-fun c!1008492 () Bool)

(declare-fun call!436777 () Bool)

(declare-fun bm!436772 () Bool)

(assert (=> bm!436772 (= call!436777 (Exists!2815 (ite c!1008492 lambda!309006 lambda!309007)))))

(declare-fun e!3516946 () Bool)

(assert (=> b!5719082 (= e!3516946 call!436777)))

(declare-fun b!5719083 () Bool)

(declare-fun c!1008491 () Bool)

(assert (=> b!5719083 (= c!1008491 ((_ is ElementMatch!15715) lt!2277714))))

(assert (=> b!5719083 (= e!3516947 e!3516948)))

(declare-fun e!3516942 () Bool)

(assert (=> b!5719084 (= e!3516942 call!436777)))

(declare-fun d!1804113 () Bool)

(declare-fun c!1008490 () Bool)

(assert (=> d!1804113 (= c!1008490 ((_ is EmptyExpr!15715) lt!2277714))))

(assert (=> d!1804113 (= (matchRSpec!2818 lt!2277714 s!2326) e!3516945)))

(declare-fun b!5719085 () Bool)

(declare-fun e!3516944 () Bool)

(assert (=> b!5719085 (= e!3516943 e!3516944)))

(declare-fun res!2414666 () Bool)

(assert (=> b!5719085 (= res!2414666 (matchRSpec!2818 (regOne!31943 lt!2277714) s!2326))))

(assert (=> b!5719085 (=> res!2414666 e!3516944)))

(declare-fun b!5719086 () Bool)

(assert (=> b!5719086 (= e!3516944 (matchRSpec!2818 (regTwo!31943 lt!2277714) s!2326))))

(declare-fun b!5719087 () Bool)

(assert (=> b!5719087 (= e!3516948 (= s!2326 (Cons!63320 (c!1008289 lt!2277714) Nil!63320)))))

(declare-fun b!5719088 () Bool)

(assert (=> b!5719088 (= e!3516943 e!3516946)))

(assert (=> b!5719088 (= c!1008492 ((_ is Star!15715) lt!2277714))))

(declare-fun bm!436773 () Bool)

(assert (=> bm!436773 (= call!436778 (isEmpty!35197 s!2326))))

(declare-fun b!5719089 () Bool)

(declare-fun res!2414665 () Bool)

(assert (=> b!5719089 (=> res!2414665 e!3516942)))

(assert (=> b!5719089 (= res!2414665 call!436778)))

(assert (=> b!5719089 (= e!3516946 e!3516942)))

(assert (= (and d!1804113 c!1008490) b!5719080))

(assert (= (and d!1804113 (not c!1008490)) b!5719081))

(assert (= (and b!5719081 res!2414667) b!5719083))

(assert (= (and b!5719083 c!1008491) b!5719087))

(assert (= (and b!5719083 (not c!1008491)) b!5719079))

(assert (= (and b!5719079 c!1008489) b!5719085))

(assert (= (and b!5719079 (not c!1008489)) b!5719088))

(assert (= (and b!5719085 (not res!2414666)) b!5719086))

(assert (= (and b!5719088 c!1008492) b!5719089))

(assert (= (and b!5719088 (not c!1008492)) b!5719082))

(assert (= (and b!5719089 (not res!2414665)) b!5719084))

(assert (= (or b!5719084 b!5719082) bm!436772))

(assert (= (or b!5719080 b!5719089) bm!436773))

(declare-fun m!6672570 () Bool)

(assert (=> bm!436772 m!6672570))

(declare-fun m!6672572 () Bool)

(assert (=> b!5719085 m!6672572))

(declare-fun m!6672574 () Bool)

(assert (=> b!5719086 m!6672574))

(assert (=> bm!436773 m!6672120))

(assert (=> b!5718374 d!1804113))

(declare-fun d!1804115 () Bool)

(assert (=> d!1804115 (= (matchR!7900 lt!2277714 s!2326) (matchRSpec!2818 lt!2277714 s!2326))))

(declare-fun lt!2277822 () Unit!156392)

(assert (=> d!1804115 (= lt!2277822 (choose!43239 lt!2277714 s!2326))))

(assert (=> d!1804115 (validRegex!7451 lt!2277714)))

(assert (=> d!1804115 (= (mainMatchTheorem!2818 lt!2277714 s!2326) lt!2277822)))

(declare-fun bs!1336885 () Bool)

(assert (= bs!1336885 d!1804115))

(assert (=> bs!1336885 m!6671990))

(assert (=> bs!1336885 m!6671992))

(declare-fun m!6672576 () Bool)

(assert (=> bs!1336885 m!6672576))

(assert (=> bs!1336885 m!6672564))

(assert (=> b!5718374 d!1804115))

(declare-fun b!5719090 () Bool)

(declare-fun c!1008495 () Bool)

(declare-fun e!3516953 () Bool)

(assert (=> b!5719090 (= c!1008495 e!3516953)))

(declare-fun res!2414668 () Bool)

(assert (=> b!5719090 (=> (not res!2414668) (not e!3516953))))

(assert (=> b!5719090 (= res!2414668 ((_ is Concat!24560) (reg!16044 (regOne!31942 r!7292))))))

(declare-fun e!3516951 () (InoxSet Context!10198))

(declare-fun e!3516954 () (InoxSet Context!10198))

(assert (=> b!5719090 (= e!3516951 e!3516954)))

(declare-fun call!436784 () List!63445)

(declare-fun call!436782 () (InoxSet Context!10198))

(declare-fun bm!436774 () Bool)

(declare-fun c!1008494 () Bool)

(declare-fun c!1008493 () Bool)

(assert (=> bm!436774 (= call!436782 (derivationStepZipperDown!1057 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))) (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784)) (h!69768 s!2326)))))

(declare-fun bm!436775 () Bool)

(declare-fun call!436780 () (InoxSet Context!10198))

(declare-fun call!436779 () List!63445)

(assert (=> bm!436775 (= call!436780 (derivationStepZipperDown!1057 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))) (ite c!1008494 lt!2277732 (Context!10199 call!436779)) (h!69768 s!2326)))))

(declare-fun bm!436776 () Bool)

(declare-fun call!436783 () (InoxSet Context!10198))

(assert (=> bm!436776 (= call!436783 call!436782)))

(declare-fun b!5719091 () Bool)

(declare-fun e!3516952 () (InoxSet Context!10198))

(declare-fun call!436781 () (InoxSet Context!10198))

(assert (=> b!5719091 (= e!3516952 call!436781)))

(declare-fun b!5719092 () Bool)

(declare-fun e!3516950 () (InoxSet Context!10198))

(assert (=> b!5719092 (= e!3516950 (store ((as const (Array Context!10198 Bool)) false) lt!2277732 true))))

(declare-fun b!5719093 () Bool)

(assert (=> b!5719093 (= e!3516950 e!3516951)))

(assert (=> b!5719093 (= c!1008494 ((_ is Union!15715) (reg!16044 (regOne!31942 r!7292))))))

(declare-fun b!5719094 () Bool)

(assert (=> b!5719094 (= e!3516954 ((_ map or) call!436780 call!436783))))

(declare-fun b!5719095 () Bool)

(assert (=> b!5719095 (= e!3516953 (nullable!5747 (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))))

(declare-fun b!5719096 () Bool)

(declare-fun e!3516949 () (InoxSet Context!10198))

(assert (=> b!5719096 (= e!3516949 call!436781)))

(declare-fun b!5719097 () Bool)

(assert (=> b!5719097 (= e!3516951 ((_ map or) call!436782 call!436780))))

(declare-fun b!5719098 () Bool)

(assert (=> b!5719098 (= e!3516949 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719099 () Bool)

(declare-fun c!1008496 () Bool)

(assert (=> b!5719099 (= c!1008496 ((_ is Star!15715) (reg!16044 (regOne!31942 r!7292))))))

(assert (=> b!5719099 (= e!3516952 e!3516949)))

(declare-fun d!1804117 () Bool)

(declare-fun c!1008497 () Bool)

(assert (=> d!1804117 (= c!1008497 (and ((_ is ElementMatch!15715) (reg!16044 (regOne!31942 r!7292))) (= (c!1008289 (reg!16044 (regOne!31942 r!7292))) (h!69768 s!2326))))))

(assert (=> d!1804117 (= (derivationStepZipperDown!1057 (reg!16044 (regOne!31942 r!7292)) lt!2277732 (h!69768 s!2326)) e!3516950)))

(declare-fun bm!436777 () Bool)

(assert (=> bm!436777 (= call!436779 ($colon$colon!1732 (exprs!5599 lt!2277732) (ite (or c!1008495 c!1008493) (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (regOne!31942 r!7292)))))))

(declare-fun bm!436778 () Bool)

(assert (=> bm!436778 (= call!436784 call!436779)))

(declare-fun bm!436779 () Bool)

(assert (=> bm!436779 (= call!436781 call!436783)))

(declare-fun b!5719100 () Bool)

(assert (=> b!5719100 (= e!3516954 e!3516952)))

(assert (=> b!5719100 (= c!1008493 ((_ is Concat!24560) (reg!16044 (regOne!31942 r!7292))))))

(assert (= (and d!1804117 c!1008497) b!5719092))

(assert (= (and d!1804117 (not c!1008497)) b!5719093))

(assert (= (and b!5719093 c!1008494) b!5719097))

(assert (= (and b!5719093 (not c!1008494)) b!5719090))

(assert (= (and b!5719090 res!2414668) b!5719095))

(assert (= (and b!5719090 c!1008495) b!5719094))

(assert (= (and b!5719090 (not c!1008495)) b!5719100))

(assert (= (and b!5719100 c!1008493) b!5719091))

(assert (= (and b!5719100 (not c!1008493)) b!5719099))

(assert (= (and b!5719099 c!1008496) b!5719096))

(assert (= (and b!5719099 (not c!1008496)) b!5719098))

(assert (= (or b!5719091 b!5719096) bm!436778))

(assert (= (or b!5719091 b!5719096) bm!436779))

(assert (= (or b!5719094 bm!436778) bm!436777))

(assert (= (or b!5719094 bm!436779) bm!436776))

(assert (= (or b!5719097 b!5719094) bm!436775))

(assert (= (or b!5719097 bm!436776) bm!436774))

(declare-fun m!6672578 () Bool)

(assert (=> bm!436774 m!6672578))

(assert (=> b!5719092 m!6672012))

(declare-fun m!6672580 () Bool)

(assert (=> bm!436777 m!6672580))

(declare-fun m!6672582 () Bool)

(assert (=> b!5719095 m!6672582))

(declare-fun m!6672584 () Bool)

(assert (=> bm!436775 m!6672584))

(assert (=> b!5718376 d!1804117))

(declare-fun bs!1336886 () Bool)

(declare-fun d!1804119 () Bool)

(assert (= bs!1336886 (and d!1804119 d!1803977)))

(declare-fun lambda!309010 () Int)

(assert (=> bs!1336886 (= lambda!309010 lambda!308976)))

(declare-fun bs!1336887 () Bool)

(assert (= bs!1336887 (and d!1804119 d!1803987)))

(assert (=> bs!1336887 (= lambda!309010 lambda!308981)))

(declare-fun bs!1336888 () Bool)

(assert (= bs!1336888 (and d!1804119 d!1804077)))

(assert (=> bs!1336888 (= lambda!309010 lambda!308999)))

(declare-fun bs!1336889 () Bool)

(assert (= bs!1336889 (and d!1804119 d!1804079)))

(assert (=> bs!1336889 (= lambda!309010 lambda!309002)))

(declare-fun b!5719121 () Bool)

(declare-fun e!3516969 () Regex!15715)

(assert (=> b!5719121 (= e!3516969 (h!69769 (exprs!5599 (h!69770 zl!343))))))

(declare-fun e!3516968 () Bool)

(assert (=> d!1804119 e!3516968))

(declare-fun res!2414673 () Bool)

(assert (=> d!1804119 (=> (not res!2414673) (not e!3516968))))

(declare-fun lt!2277825 () Regex!15715)

(assert (=> d!1804119 (= res!2414673 (validRegex!7451 lt!2277825))))

(assert (=> d!1804119 (= lt!2277825 e!3516969)))

(declare-fun c!1008507 () Bool)

(declare-fun e!3516971 () Bool)

(assert (=> d!1804119 (= c!1008507 e!3516971)))

(declare-fun res!2414674 () Bool)

(assert (=> d!1804119 (=> (not res!2414674) (not e!3516971))))

(assert (=> d!1804119 (= res!2414674 ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (=> d!1804119 (forall!14850 (exprs!5599 (h!69770 zl!343)) lambda!309010)))

(assert (=> d!1804119 (= (generalisedConcat!1330 (exprs!5599 (h!69770 zl!343))) lt!2277825)))

(declare-fun b!5719122 () Bool)

(declare-fun e!3516970 () Regex!15715)

(assert (=> b!5719122 (= e!3516970 (Concat!24560 (h!69769 (exprs!5599 (h!69770 zl!343))) (generalisedConcat!1330 (t!376767 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5719123 () Bool)

(declare-fun e!3516972 () Bool)

(assert (=> b!5719123 (= e!3516972 (= lt!2277825 (head!12111 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5719124 () Bool)

(assert (=> b!5719124 (= e!3516970 EmptyExpr!15715)))

(declare-fun b!5719125 () Bool)

(declare-fun e!3516967 () Bool)

(assert (=> b!5719125 (= e!3516968 e!3516967)))

(declare-fun c!1008508 () Bool)

(assert (=> b!5719125 (= c!1008508 (isEmpty!35194 (exprs!5599 (h!69770 zl!343))))))

(declare-fun b!5719126 () Bool)

(declare-fun isEmptyExpr!1223 (Regex!15715) Bool)

(assert (=> b!5719126 (= e!3516967 (isEmptyExpr!1223 lt!2277825))))

(declare-fun b!5719127 () Bool)

(assert (=> b!5719127 (= e!3516967 e!3516972)))

(declare-fun c!1008506 () Bool)

(assert (=> b!5719127 (= c!1008506 (isEmpty!35194 (tail!11206 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5719128 () Bool)

(declare-fun isConcat!746 (Regex!15715) Bool)

(assert (=> b!5719128 (= e!3516972 (isConcat!746 lt!2277825))))

(declare-fun b!5719129 () Bool)

(assert (=> b!5719129 (= e!3516971 (isEmpty!35194 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5719130 () Bool)

(assert (=> b!5719130 (= e!3516969 e!3516970)))

(declare-fun c!1008509 () Bool)

(assert (=> b!5719130 (= c!1008509 ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (= (and d!1804119 res!2414674) b!5719129))

(assert (= (and d!1804119 c!1008507) b!5719121))

(assert (= (and d!1804119 (not c!1008507)) b!5719130))

(assert (= (and b!5719130 c!1008509) b!5719122))

(assert (= (and b!5719130 (not c!1008509)) b!5719124))

(assert (= (and d!1804119 res!2414673) b!5719125))

(assert (= (and b!5719125 c!1008508) b!5719126))

(assert (= (and b!5719125 (not c!1008508)) b!5719127))

(assert (= (and b!5719127 c!1008506) b!5719123))

(assert (= (and b!5719127 (not c!1008506)) b!5719128))

(declare-fun m!6672586 () Bool)

(assert (=> b!5719126 m!6672586))

(assert (=> b!5719129 m!6672058))

(declare-fun m!6672588 () Bool)

(assert (=> b!5719122 m!6672588))

(declare-fun m!6672590 () Bool)

(assert (=> b!5719128 m!6672590))

(declare-fun m!6672592 () Bool)

(assert (=> d!1804119 m!6672592))

(declare-fun m!6672594 () Bool)

(assert (=> d!1804119 m!6672594))

(declare-fun m!6672596 () Bool)

(assert (=> b!5719125 m!6672596))

(declare-fun m!6672598 () Bool)

(assert (=> b!5719123 m!6672598))

(declare-fun m!6672600 () Bool)

(assert (=> b!5719127 m!6672600))

(assert (=> b!5719127 m!6672600))

(declare-fun m!6672602 () Bool)

(assert (=> b!5719127 m!6672602))

(assert (=> b!5718397 d!1804119))

(declare-fun b!5719149 () Bool)

(declare-fun e!3516985 () Bool)

(assert (=> b!5719149 (= e!3516985 (matchR!7900 (regTwo!31942 r!7292) s!2326))))

(declare-fun b!5719150 () Bool)

(declare-fun e!3516986 () Option!15724)

(assert (=> b!5719150 (= e!3516986 None!15723)))

(declare-fun b!5719151 () Bool)

(declare-fun e!3516984 () Option!15724)

(assert (=> b!5719151 (= e!3516984 (Some!15723 (tuple2!65625 Nil!63320 s!2326)))))

(declare-fun b!5719152 () Bool)

(declare-fun e!3516983 () Bool)

(declare-fun lt!2277832 () Option!15724)

(assert (=> b!5719152 (= e!3516983 (not (isDefined!12427 lt!2277832)))))

(declare-fun b!5719153 () Bool)

(declare-fun res!2414685 () Bool)

(declare-fun e!3516987 () Bool)

(assert (=> b!5719153 (=> (not res!2414685) (not e!3516987))))

(declare-fun get!21832 (Option!15724) tuple2!65624)

(assert (=> b!5719153 (= res!2414685 (matchR!7900 (regOne!31942 r!7292) (_1!36115 (get!21832 lt!2277832))))))

(declare-fun b!5719154 () Bool)

(declare-fun ++!13911 (List!63444 List!63444) List!63444)

(assert (=> b!5719154 (= e!3516987 (= (++!13911 (_1!36115 (get!21832 lt!2277832)) (_2!36115 (get!21832 lt!2277832))) s!2326))))

(declare-fun b!5719155 () Bool)

(assert (=> b!5719155 (= e!3516984 e!3516986)))

(declare-fun c!1008514 () Bool)

(assert (=> b!5719155 (= c!1008514 ((_ is Nil!63320) s!2326))))

(declare-fun b!5719156 () Bool)

(declare-fun res!2414689 () Bool)

(assert (=> b!5719156 (=> (not res!2414689) (not e!3516987))))

(assert (=> b!5719156 (= res!2414689 (matchR!7900 (regTwo!31942 r!7292) (_2!36115 (get!21832 lt!2277832))))))

(declare-fun d!1804121 () Bool)

(assert (=> d!1804121 e!3516983))

(declare-fun res!2414686 () Bool)

(assert (=> d!1804121 (=> res!2414686 e!3516983)))

(assert (=> d!1804121 (= res!2414686 e!3516987)))

(declare-fun res!2414687 () Bool)

(assert (=> d!1804121 (=> (not res!2414687) (not e!3516987))))

(assert (=> d!1804121 (= res!2414687 (isDefined!12427 lt!2277832))))

(assert (=> d!1804121 (= lt!2277832 e!3516984)))

(declare-fun c!1008515 () Bool)

(assert (=> d!1804121 (= c!1008515 e!3516985)))

(declare-fun res!2414688 () Bool)

(assert (=> d!1804121 (=> (not res!2414688) (not e!3516985))))

(assert (=> d!1804121 (= res!2414688 (matchR!7900 (regOne!31942 r!7292) Nil!63320))))

(assert (=> d!1804121 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804121 (= (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326) lt!2277832)))

(declare-fun b!5719157 () Bool)

(declare-fun lt!2277833 () Unit!156392)

(declare-fun lt!2277834 () Unit!156392)

(assert (=> b!5719157 (= lt!2277833 lt!2277834)))

(assert (=> b!5719157 (= (++!13911 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2068 (List!63444 C!31700 List!63444 List!63444) Unit!156392)

(assert (=> b!5719157 (= lt!2277834 (lemmaMoveElementToOtherListKeepsConcatEq!2068 Nil!63320 (h!69768 s!2326) (t!376766 s!2326) s!2326))))

(assert (=> b!5719157 (= e!3516986 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326) s!2326))))

(assert (= (and d!1804121 res!2414688) b!5719149))

(assert (= (and d!1804121 c!1008515) b!5719151))

(assert (= (and d!1804121 (not c!1008515)) b!5719155))

(assert (= (and b!5719155 c!1008514) b!5719150))

(assert (= (and b!5719155 (not c!1008514)) b!5719157))

(assert (= (and d!1804121 res!2414687) b!5719153))

(assert (= (and b!5719153 res!2414685) b!5719156))

(assert (= (and b!5719156 res!2414689) b!5719154))

(assert (= (and d!1804121 (not res!2414686)) b!5719152))

(declare-fun m!6672604 () Bool)

(assert (=> b!5719154 m!6672604))

(declare-fun m!6672606 () Bool)

(assert (=> b!5719154 m!6672606))

(declare-fun m!6672608 () Bool)

(assert (=> b!5719157 m!6672608))

(assert (=> b!5719157 m!6672608))

(declare-fun m!6672610 () Bool)

(assert (=> b!5719157 m!6672610))

(declare-fun m!6672612 () Bool)

(assert (=> b!5719157 m!6672612))

(assert (=> b!5719157 m!6672608))

(declare-fun m!6672614 () Bool)

(assert (=> b!5719157 m!6672614))

(assert (=> b!5719153 m!6672604))

(declare-fun m!6672616 () Bool)

(assert (=> b!5719153 m!6672616))

(declare-fun m!6672618 () Bool)

(assert (=> b!5719149 m!6672618))

(declare-fun m!6672620 () Bool)

(assert (=> b!5719152 m!6672620))

(assert (=> d!1804121 m!6672620))

(declare-fun m!6672622 () Bool)

(assert (=> d!1804121 m!6672622))

(declare-fun m!6672624 () Bool)

(assert (=> d!1804121 m!6672624))

(assert (=> b!5719156 m!6672604))

(declare-fun m!6672626 () Bool)

(assert (=> b!5719156 m!6672626))

(assert (=> b!5718386 d!1804121))

(declare-fun d!1804123 () Bool)

(declare-fun choose!43245 (Int) Bool)

(assert (=> d!1804123 (= (Exists!2815 lambda!308951) (choose!43245 lambda!308951))))

(declare-fun bs!1336890 () Bool)

(assert (= bs!1336890 d!1804123))

(declare-fun m!6672628 () Bool)

(assert (=> bs!1336890 m!6672628))

(assert (=> b!5718386 d!1804123))

(declare-fun bs!1336891 () Bool)

(declare-fun d!1804125 () Bool)

(assert (= bs!1336891 (and d!1804125 b!5718386)))

(declare-fun lambda!309015 () Int)

(assert (=> bs!1336891 (not (= lambda!309015 lambda!308952))))

(assert (=> bs!1336891 (= lambda!309015 lambda!308951)))

(declare-fun bs!1336892 () Bool)

(assert (= bs!1336892 (and d!1804125 b!5718490)))

(assert (=> bs!1336892 (not (= lambda!309015 lambda!308968))))

(declare-fun bs!1336893 () Bool)

(assert (= bs!1336893 (and d!1804125 b!5719082)))

(assert (=> bs!1336893 (not (= lambda!309015 lambda!309007))))

(declare-fun bs!1336894 () Bool)

(assert (= bs!1336894 (and d!1804125 b!5719084)))

(assert (=> bs!1336894 (not (= lambda!309015 lambda!309006))))

(declare-fun bs!1336895 () Bool)

(assert (= bs!1336895 (and d!1804125 b!5718492)))

(assert (=> bs!1336895 (not (= lambda!309015 lambda!308967))))

(assert (=> d!1804125 true))

(assert (=> d!1804125 true))

(assert (=> d!1804125 true))

(declare-fun bs!1336896 () Bool)

(assert (= bs!1336896 d!1804125))

(declare-fun lambda!309016 () Int)

(assert (=> bs!1336896 (not (= lambda!309016 lambda!309015))))

(assert (=> bs!1336891 (= lambda!309016 lambda!308952)))

(assert (=> bs!1336891 (not (= lambda!309016 lambda!308951))))

(assert (=> bs!1336892 (= lambda!309016 lambda!308968)))

(assert (=> bs!1336893 (= (and (= (regOne!31942 r!7292) (regOne!31942 lt!2277714)) (= (regTwo!31942 r!7292) (regTwo!31942 lt!2277714))) (= lambda!309016 lambda!309007))))

(assert (=> bs!1336894 (not (= lambda!309016 lambda!309006))))

(assert (=> bs!1336895 (not (= lambda!309016 lambda!308967))))

(assert (=> d!1804125 true))

(assert (=> d!1804125 true))

(assert (=> d!1804125 true))

(assert (=> d!1804125 (= (Exists!2815 lambda!309015) (Exists!2815 lambda!309016))))

(declare-fun lt!2277837 () Unit!156392)

(declare-fun choose!43246 (Regex!15715 Regex!15715 List!63444) Unit!156392)

(assert (=> d!1804125 (= lt!2277837 (choose!43246 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326))))

(assert (=> d!1804125 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804125 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1444 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326) lt!2277837)))

(declare-fun m!6672630 () Bool)

(assert (=> bs!1336896 m!6672630))

(declare-fun m!6672632 () Bool)

(assert (=> bs!1336896 m!6672632))

(declare-fun m!6672634 () Bool)

(assert (=> bs!1336896 m!6672634))

(assert (=> bs!1336896 m!6672624))

(assert (=> b!5718386 d!1804125))

(declare-fun d!1804127 () Bool)

(declare-fun isEmpty!35198 (Option!15724) Bool)

(assert (=> d!1804127 (= (isDefined!12427 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326)) (not (isEmpty!35198 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326))))))

(declare-fun bs!1336897 () Bool)

(assert (= bs!1336897 d!1804127))

(assert (=> bs!1336897 m!6672038))

(declare-fun m!6672636 () Bool)

(assert (=> bs!1336897 m!6672636))

(assert (=> b!5718386 d!1804127))

(declare-fun bs!1336898 () Bool)

(declare-fun d!1804129 () Bool)

(assert (= bs!1336898 (and d!1804129 d!1804125)))

(declare-fun lambda!309019 () Int)

(assert (=> bs!1336898 (= lambda!309019 lambda!309015)))

(declare-fun bs!1336899 () Bool)

(assert (= bs!1336899 (and d!1804129 b!5718386)))

(assert (=> bs!1336899 (not (= lambda!309019 lambda!308952))))

(assert (=> bs!1336899 (= lambda!309019 lambda!308951)))

(declare-fun bs!1336900 () Bool)

(assert (= bs!1336900 (and d!1804129 b!5718490)))

(assert (=> bs!1336900 (not (= lambda!309019 lambda!308968))))

(declare-fun bs!1336901 () Bool)

(assert (= bs!1336901 (and d!1804129 b!5719082)))

(assert (=> bs!1336901 (not (= lambda!309019 lambda!309007))))

(declare-fun bs!1336902 () Bool)

(assert (= bs!1336902 (and d!1804129 b!5719084)))

(assert (=> bs!1336902 (not (= lambda!309019 lambda!309006))))

(declare-fun bs!1336903 () Bool)

(assert (= bs!1336903 (and d!1804129 b!5718492)))

(assert (=> bs!1336903 (not (= lambda!309019 lambda!308967))))

(assert (=> bs!1336898 (not (= lambda!309019 lambda!309016))))

(assert (=> d!1804129 true))

(assert (=> d!1804129 true))

(assert (=> d!1804129 true))

(assert (=> d!1804129 (= (isDefined!12427 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326)) (Exists!2815 lambda!309019))))

(declare-fun lt!2277840 () Unit!156392)

(declare-fun choose!43247 (Regex!15715 Regex!15715 List!63444) Unit!156392)

(assert (=> d!1804129 (= lt!2277840 (choose!43247 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326))))

(assert (=> d!1804129 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804129 (= (lemmaFindConcatSeparationEquivalentToExists!1902 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326) lt!2277840)))

(declare-fun bs!1336904 () Bool)

(assert (= bs!1336904 d!1804129))

(declare-fun m!6672638 () Bool)

(assert (=> bs!1336904 m!6672638))

(assert (=> bs!1336904 m!6672038))

(declare-fun m!6672640 () Bool)

(assert (=> bs!1336904 m!6672640))

(assert (=> bs!1336904 m!6672038))

(assert (=> bs!1336904 m!6672040))

(assert (=> bs!1336904 m!6672624))

(assert (=> b!5718386 d!1804129))

(declare-fun d!1804131 () Bool)

(assert (=> d!1804131 (= (Exists!2815 lambda!308952) (choose!43245 lambda!308952))))

(declare-fun bs!1336905 () Bool)

(assert (= bs!1336905 d!1804131))

(declare-fun m!6672642 () Bool)

(assert (=> bs!1336905 m!6672642))

(assert (=> b!5718386 d!1804131))

(declare-fun d!1804133 () Bool)

(assert (=> d!1804133 (= (nullable!5747 (regOne!31942 (regOne!31942 r!7292))) (nullableFct!1811 (regOne!31942 (regOne!31942 r!7292))))))

(declare-fun bs!1336906 () Bool)

(assert (= bs!1336906 d!1804133))

(declare-fun m!6672644 () Bool)

(assert (=> bs!1336906 m!6672644))

(assert (=> b!5718405 d!1804133))

(declare-fun d!1804135 () Bool)

(assert (=> d!1804135 (= (isEmpty!35193 (t!376768 zl!343)) ((_ is Nil!63322) (t!376768 zl!343)))))

(assert (=> b!5718375 d!1804135))

(declare-fun b!5719183 () Bool)

(declare-fun e!3516996 () Bool)

(declare-fun tp!1583995 () Bool)

(declare-fun tp!1583991 () Bool)

(assert (=> b!5719183 (= e!3516996 (and tp!1583995 tp!1583991))))

(declare-fun b!5719180 () Bool)

(assert (=> b!5719180 (= e!3516996 tp_is_empty!40683)))

(declare-fun b!5719182 () Bool)

(declare-fun tp!1583993 () Bool)

(assert (=> b!5719182 (= e!3516996 tp!1583993)))

(assert (=> b!5718402 (= tp!1583919 e!3516996)))

(declare-fun b!5719181 () Bool)

(declare-fun tp!1583994 () Bool)

(declare-fun tp!1583992 () Bool)

(assert (=> b!5719181 (= e!3516996 (and tp!1583994 tp!1583992))))

(assert (= (and b!5718402 ((_ is ElementMatch!15715) (regOne!31943 r!7292))) b!5719180))

(assert (= (and b!5718402 ((_ is Concat!24560) (regOne!31943 r!7292))) b!5719181))

(assert (= (and b!5718402 ((_ is Star!15715) (regOne!31943 r!7292))) b!5719182))

(assert (= (and b!5718402 ((_ is Union!15715) (regOne!31943 r!7292))) b!5719183))

(declare-fun b!5719187 () Bool)

(declare-fun e!3516997 () Bool)

(declare-fun tp!1584000 () Bool)

(declare-fun tp!1583996 () Bool)

(assert (=> b!5719187 (= e!3516997 (and tp!1584000 tp!1583996))))

(declare-fun b!5719184 () Bool)

(assert (=> b!5719184 (= e!3516997 tp_is_empty!40683)))

(declare-fun b!5719186 () Bool)

(declare-fun tp!1583998 () Bool)

(assert (=> b!5719186 (= e!3516997 tp!1583998)))

(assert (=> b!5718402 (= tp!1583921 e!3516997)))

(declare-fun b!5719185 () Bool)

(declare-fun tp!1583999 () Bool)

(declare-fun tp!1583997 () Bool)

(assert (=> b!5719185 (= e!3516997 (and tp!1583999 tp!1583997))))

(assert (= (and b!5718402 ((_ is ElementMatch!15715) (regTwo!31943 r!7292))) b!5719184))

(assert (= (and b!5718402 ((_ is Concat!24560) (regTwo!31943 r!7292))) b!5719185))

(assert (= (and b!5718402 ((_ is Star!15715) (regTwo!31943 r!7292))) b!5719186))

(assert (= (and b!5718402 ((_ is Union!15715) (regTwo!31943 r!7292))) b!5719187))

(declare-fun condSetEmpty!38311 () Bool)

(assert (=> setNonEmpty!38305 (= condSetEmpty!38311 (= setRest!38305 ((as const (Array Context!10198 Bool)) false)))))

(declare-fun setRes!38311 () Bool)

(assert (=> setNonEmpty!38305 (= tp!1583915 setRes!38311)))

(declare-fun setIsEmpty!38311 () Bool)

(assert (=> setIsEmpty!38311 setRes!38311))

(declare-fun setElem!38311 () Context!10198)

(declare-fun e!3517000 () Bool)

(declare-fun tp!1584006 () Bool)

(declare-fun setNonEmpty!38311 () Bool)

(assert (=> setNonEmpty!38311 (= setRes!38311 (and tp!1584006 (inv!82534 setElem!38311) e!3517000))))

(declare-fun setRest!38311 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38311 (= setRest!38305 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38311 true) setRest!38311))))

(declare-fun b!5719192 () Bool)

(declare-fun tp!1584005 () Bool)

(assert (=> b!5719192 (= e!3517000 tp!1584005)))

(assert (= (and setNonEmpty!38305 condSetEmpty!38311) setIsEmpty!38311))

(assert (= (and setNonEmpty!38305 (not condSetEmpty!38311)) setNonEmpty!38311))

(assert (= setNonEmpty!38311 b!5719192))

(declare-fun m!6672646 () Bool)

(assert (=> setNonEmpty!38311 m!6672646))

(declare-fun b!5719200 () Bool)

(declare-fun e!3517006 () Bool)

(declare-fun tp!1584011 () Bool)

(assert (=> b!5719200 (= e!3517006 tp!1584011)))

(declare-fun e!3517005 () Bool)

(declare-fun b!5719199 () Bool)

(declare-fun tp!1584012 () Bool)

(assert (=> b!5719199 (= e!3517005 (and (inv!82534 (h!69770 (t!376768 zl!343))) e!3517006 tp!1584012))))

(assert (=> b!5718403 (= tp!1583914 e!3517005)))

(assert (= b!5719199 b!5719200))

(assert (= (and b!5718403 ((_ is Cons!63322) (t!376768 zl!343))) b!5719199))

(declare-fun m!6672648 () Bool)

(assert (=> b!5719199 m!6672648))

(declare-fun b!5719204 () Bool)

(declare-fun e!3517007 () Bool)

(declare-fun tp!1584017 () Bool)

(declare-fun tp!1584013 () Bool)

(assert (=> b!5719204 (= e!3517007 (and tp!1584017 tp!1584013))))

(declare-fun b!5719201 () Bool)

(assert (=> b!5719201 (= e!3517007 tp_is_empty!40683)))

(declare-fun b!5719203 () Bool)

(declare-fun tp!1584015 () Bool)

(assert (=> b!5719203 (= e!3517007 tp!1584015)))

(assert (=> b!5718408 (= tp!1583920 e!3517007)))

(declare-fun b!5719202 () Bool)

(declare-fun tp!1584016 () Bool)

(declare-fun tp!1584014 () Bool)

(assert (=> b!5719202 (= e!3517007 (and tp!1584016 tp!1584014))))

(assert (= (and b!5718408 ((_ is ElementMatch!15715) (reg!16044 r!7292))) b!5719201))

(assert (= (and b!5718408 ((_ is Concat!24560) (reg!16044 r!7292))) b!5719202))

(assert (= (and b!5718408 ((_ is Star!15715) (reg!16044 r!7292))) b!5719203))

(assert (= (and b!5718408 ((_ is Union!15715) (reg!16044 r!7292))) b!5719204))

(declare-fun b!5719209 () Bool)

(declare-fun e!3517010 () Bool)

(declare-fun tp!1584022 () Bool)

(declare-fun tp!1584023 () Bool)

(assert (=> b!5719209 (= e!3517010 (and tp!1584022 tp!1584023))))

(assert (=> b!5718383 (= tp!1583922 e!3517010)))

(assert (= (and b!5718383 ((_ is Cons!63321) (exprs!5599 setElem!38305))) b!5719209))

(declare-fun b!5719210 () Bool)

(declare-fun e!3517011 () Bool)

(declare-fun tp!1584024 () Bool)

(declare-fun tp!1584025 () Bool)

(assert (=> b!5719210 (= e!3517011 (and tp!1584024 tp!1584025))))

(assert (=> b!5718396 (= tp!1583918 e!3517011)))

(assert (= (and b!5718396 ((_ is Cons!63321) (exprs!5599 (h!69770 zl!343)))) b!5719210))

(declare-fun b!5719214 () Bool)

(declare-fun e!3517012 () Bool)

(declare-fun tp!1584030 () Bool)

(declare-fun tp!1584026 () Bool)

(assert (=> b!5719214 (= e!3517012 (and tp!1584030 tp!1584026))))

(declare-fun b!5719211 () Bool)

(assert (=> b!5719211 (= e!3517012 tp_is_empty!40683)))

(declare-fun b!5719213 () Bool)

(declare-fun tp!1584028 () Bool)

(assert (=> b!5719213 (= e!3517012 tp!1584028)))

(assert (=> b!5718380 (= tp!1583913 e!3517012)))

(declare-fun b!5719212 () Bool)

(declare-fun tp!1584029 () Bool)

(declare-fun tp!1584027 () Bool)

(assert (=> b!5719212 (= e!3517012 (and tp!1584029 tp!1584027))))

(assert (= (and b!5718380 ((_ is ElementMatch!15715) (regOne!31942 r!7292))) b!5719211))

(assert (= (and b!5718380 ((_ is Concat!24560) (regOne!31942 r!7292))) b!5719212))

(assert (= (and b!5718380 ((_ is Star!15715) (regOne!31942 r!7292))) b!5719213))

(assert (= (and b!5718380 ((_ is Union!15715) (regOne!31942 r!7292))) b!5719214))

(declare-fun b!5719218 () Bool)

(declare-fun e!3517013 () Bool)

(declare-fun tp!1584035 () Bool)

(declare-fun tp!1584031 () Bool)

(assert (=> b!5719218 (= e!3517013 (and tp!1584035 tp!1584031))))

(declare-fun b!5719215 () Bool)

(assert (=> b!5719215 (= e!3517013 tp_is_empty!40683)))

(declare-fun b!5719217 () Bool)

(declare-fun tp!1584033 () Bool)

(assert (=> b!5719217 (= e!3517013 tp!1584033)))

(assert (=> b!5718380 (= tp!1583916 e!3517013)))

(declare-fun b!5719216 () Bool)

(declare-fun tp!1584034 () Bool)

(declare-fun tp!1584032 () Bool)

(assert (=> b!5719216 (= e!3517013 (and tp!1584034 tp!1584032))))

(assert (= (and b!5718380 ((_ is ElementMatch!15715) (regTwo!31942 r!7292))) b!5719215))

(assert (= (and b!5718380 ((_ is Concat!24560) (regTwo!31942 r!7292))) b!5719216))

(assert (= (and b!5718380 ((_ is Star!15715) (regTwo!31942 r!7292))) b!5719217))

(assert (= (and b!5718380 ((_ is Union!15715) (regTwo!31942 r!7292))) b!5719218))

(declare-fun b!5719223 () Bool)

(declare-fun e!3517016 () Bool)

(declare-fun tp!1584038 () Bool)

(assert (=> b!5719223 (= e!3517016 (and tp_is_empty!40683 tp!1584038))))

(assert (=> b!5718379 (= tp!1583917 e!3517016)))

(assert (= (and b!5718379 ((_ is Cons!63320) (t!376766 s!2326))) b!5719223))

(declare-fun b_lambda!216087 () Bool)

(assert (= b_lambda!216071 (or b!5718391 b_lambda!216087)))

(declare-fun bs!1336907 () Bool)

(declare-fun d!1804137 () Bool)

(assert (= bs!1336907 (and d!1804137 b!5718391)))

(assert (=> bs!1336907 (= (dynLambda!24776 lambda!308953 (h!69770 zl!343)) (derivationStepZipperUp!983 (h!69770 zl!343) (h!69768 s!2326)))))

(assert (=> bs!1336907 m!6671972))

(assert (=> d!1804033 d!1804137))

(declare-fun b_lambda!216089 () Bool)

(assert (= b_lambda!216083 (or b!5718391 b_lambda!216089)))

(declare-fun bs!1336908 () Bool)

(declare-fun d!1804139 () Bool)

(assert (= bs!1336908 (and d!1804139 b!5718391)))

(assert (=> bs!1336908 (= (dynLambda!24776 lambda!308953 lt!2277732) (derivationStepZipperUp!983 lt!2277732 (h!69768 s!2326)))))

(assert (=> bs!1336908 m!6672014))

(assert (=> d!1804095 d!1804139))

(declare-fun b_lambda!216091 () Bool)

(assert (= b_lambda!216081 (or b!5718391 b_lambda!216091)))

(declare-fun bs!1336909 () Bool)

(declare-fun d!1804141 () Bool)

(assert (= bs!1336909 (and d!1804141 b!5718391)))

(assert (=> bs!1336909 (= (dynLambda!24776 lambda!308953 lt!2277710) (derivationStepZipperUp!983 lt!2277710 (h!69768 s!2326)))))

(assert (=> bs!1336909 m!6672052))

(assert (=> d!1804087 d!1804141))

(declare-fun b_lambda!216093 () Bool)

(assert (= b_lambda!216085 (or b!5718391 b_lambda!216093)))

(declare-fun bs!1336910 () Bool)

(declare-fun d!1804143 () Bool)

(assert (= bs!1336910 (and d!1804143 b!5718391)))

(assert (=> bs!1336910 (= (dynLambda!24776 lambda!308953 lt!2277713) (derivationStepZipperUp!983 lt!2277713 (h!69768 s!2326)))))

(assert (=> bs!1336910 m!6672006))

(assert (=> d!1804099 d!1804143))

(check-sat (not d!1804111) (not bm!436777) (not bm!436775) (not b!5718766) (not b!5719183) (not b!5718729) (not b!5719216) (not d!1804127) (not bs!1336908) (not b!5718820) (not b!5718978) (not b!5719067) (not b!5719212) (not b!5718728) (not bm!436761) (not b!5718598) (not b!5719185) (not b!5719064) (not d!1804121) (not bs!1336909) (not b!5719223) (not b!5718590) (not b!5718765) (not b!5719203) (not b!5718656) (not b!5719095) (not b!5718771) (not d!1803967) (not b!5719187) (not d!1804093) (not bm!436773) (not b!5719075) (not d!1803997) (not b!5719213) (not b!5719204) (not b!5718816) (not setNonEmpty!38311) (not b!5719056) (not bm!436772) (not b!5718655) (not b!5719052) (not b!5718597) (not b!5718591) (not b!5719156) (not b_lambda!216093) (not bm!436767) (not d!1804075) (not d!1804131) (not b!5718493) (not b!5719152) (not b!5719181) (not b!5719033) (not b!5718494) (not d!1804023) (not d!1804033) (not d!1803941) (not d!1803977) (not bm!436735) (not b_lambda!216087) (not b!5718768) (not b!5719038) (not d!1804099) (not b!5719128) (not b!5719122) (not b!5719037) (not b!5719199) (not b!5719035) (not b!5718589) (not b!5719210) (not d!1804123) (not b!5718767) (not b_lambda!216089) (not d!1803987) (not bm!436766) (not b!5718982) (not d!1804089) (not b!5718726) (not bm!436769) (not d!1804125) (not d!1804109) (not b!5719126) (not d!1804119) (not b!5719209) (not d!1804115) (not b!5719123) (not b!5719069) (not bm!436704) (not b_lambda!216091) (not b!5719153) (not bm!436768) (not d!1803979) (not b!5718769) (not d!1804025) (not b!5718727) (not bs!1336910) (not d!1804063) (not b!5718594) (not bm!436720) (not b!5719218) (not b!5719049) (not b!5718953) (not bm!436722) (not b!5719129) (not bm!436771) (not b!5718721) (not b!5719192) (not d!1803989) (not b!5719034) (not b!5719202) (not b!5719032) (not b!5719217) (not bm!436679) (not d!1804091) (not d!1803991) (not d!1804133) (not b!5718770) (not d!1804027) (not d!1804095) (not d!1804077) (not d!1804079) tp_is_empty!40683 (not b!5719086) (not d!1804107) (not bs!1336907) (not d!1804101) (not bm!436763) (not b!5719045) (not b!5719008) (not b!5719200) (not d!1804043) (not d!1804083) (not bm!436774) (not d!1804103) (not b!5719125) (not b!5719031) (not b!5719154) (not b!5719068) (not d!1804087) (not b!5719182) (not b!5719186) (not b!5719004) (not b!5719043) (not b!5719127) (not bm!436760) (not bm!436678) (not b!5719214) (not b!5719072) (not b!5719061) (not bm!436770) (not d!1804129) (not b!5719157) (not b!5719076) (not b!5719057) (not b!5719149) (not b!5719085))
(check-sat)
(get-model)

(declare-fun d!1804217 () Bool)

(assert (=> d!1804217 (= (head!12109 s!2326) (h!69768 s!2326))))

(assert (=> b!5719067 d!1804217))

(declare-fun d!1804219 () Bool)

(assert (=> d!1804219 (= (isEmpty!35197 s!2326) ((_ is Nil!63320) s!2326))))

(assert (=> bm!436704 d!1804219))

(declare-fun bm!436817 () Bool)

(declare-fun c!1008562 () Bool)

(declare-fun call!436822 () Bool)

(declare-fun c!1008561 () Bool)

(assert (=> bm!436817 (= call!436822 (validRegex!7451 (ite c!1008561 (reg!16044 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))) (ite c!1008562 (regOne!31943 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))) (regOne!31942 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292)))))))))

(declare-fun b!5719386 () Bool)

(declare-fun res!2414782 () Bool)

(declare-fun e!3517129 () Bool)

(assert (=> b!5719386 (=> (not res!2414782) (not e!3517129))))

(declare-fun call!436823 () Bool)

(assert (=> b!5719386 (= res!2414782 call!436823)))

(declare-fun e!3517127 () Bool)

(assert (=> b!5719386 (= e!3517127 e!3517129)))

(declare-fun b!5719387 () Bool)

(declare-fun e!3517126 () Bool)

(declare-fun call!436824 () Bool)

(assert (=> b!5719387 (= e!3517126 call!436824)))

(declare-fun b!5719388 () Bool)

(assert (=> b!5719388 (= e!3517129 call!436824)))

(declare-fun b!5719389 () Bool)

(declare-fun e!3517130 () Bool)

(declare-fun e!3517131 () Bool)

(assert (=> b!5719389 (= e!3517130 e!3517131)))

(assert (=> b!5719389 (= c!1008561 ((_ is Star!15715) (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))

(declare-fun b!5719390 () Bool)

(declare-fun e!3517132 () Bool)

(assert (=> b!5719390 (= e!3517131 e!3517132)))

(declare-fun res!2414779 () Bool)

(assert (=> b!5719390 (= res!2414779 (not (nullable!5747 (reg!16044 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))))

(assert (=> b!5719390 (=> (not res!2414779) (not e!3517132))))

(declare-fun bm!436818 () Bool)

(assert (=> bm!436818 (= call!436823 call!436822)))

(declare-fun b!5719392 () Bool)

(declare-fun e!3517128 () Bool)

(assert (=> b!5719392 (= e!3517128 e!3517126)))

(declare-fun res!2414778 () Bool)

(assert (=> b!5719392 (=> (not res!2414778) (not e!3517126))))

(assert (=> b!5719392 (= res!2414778 call!436823)))

(declare-fun bm!436819 () Bool)

(assert (=> bm!436819 (= call!436824 (validRegex!7451 (ite c!1008562 (regTwo!31943 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))) (regTwo!31942 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))))

(declare-fun b!5719393 () Bool)

(declare-fun res!2414780 () Bool)

(assert (=> b!5719393 (=> res!2414780 e!3517128)))

(assert (=> b!5719393 (= res!2414780 (not ((_ is Concat!24560) (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292)))))))

(assert (=> b!5719393 (= e!3517127 e!3517128)))

(declare-fun b!5719394 () Bool)

(assert (=> b!5719394 (= e!3517131 e!3517127)))

(assert (=> b!5719394 (= c!1008562 ((_ is Union!15715) (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))

(declare-fun d!1804221 () Bool)

(declare-fun res!2414781 () Bool)

(assert (=> d!1804221 (=> res!2414781 e!3517130)))

(assert (=> d!1804221 (= res!2414781 ((_ is ElementMatch!15715) (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))))))

(assert (=> d!1804221 (= (validRegex!7451 (ite c!1008375 (regTwo!31943 r!7292) (regTwo!31942 r!7292))) e!3517130)))

(declare-fun b!5719391 () Bool)

(assert (=> b!5719391 (= e!3517132 call!436822)))

(assert (= (and d!1804221 (not res!2414781)) b!5719389))

(assert (= (and b!5719389 c!1008561) b!5719390))

(assert (= (and b!5719389 (not c!1008561)) b!5719394))

(assert (= (and b!5719390 res!2414779) b!5719391))

(assert (= (and b!5719394 c!1008562) b!5719386))

(assert (= (and b!5719394 (not c!1008562)) b!5719393))

(assert (= (and b!5719386 res!2414782) b!5719388))

(assert (= (and b!5719393 (not res!2414780)) b!5719392))

(assert (= (and b!5719392 res!2414778) b!5719387))

(assert (= (or b!5719388 b!5719387) bm!436819))

(assert (= (or b!5719386 b!5719392) bm!436818))

(assert (= (or b!5719391 bm!436818) bm!436817))

(declare-fun m!6672816 () Bool)

(assert (=> bm!436817 m!6672816))

(declare-fun m!6672818 () Bool)

(assert (=> b!5719390 m!6672818))

(declare-fun m!6672820 () Bool)

(assert (=> bm!436819 m!6672820))

(assert (=> bm!436722 d!1804221))

(declare-fun d!1804225 () Bool)

(assert (=> d!1804225 (= (isEmpty!35194 (exprs!5599 (h!69770 zl!343))) ((_ is Nil!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (=> b!5719125 d!1804225))

(declare-fun d!1804227 () Bool)

(declare-fun c!1008564 () Bool)

(assert (=> d!1804227 (= c!1008564 (isEmpty!35197 (tail!11204 (t!376766 s!2326))))))

(declare-fun e!3517134 () Bool)

(assert (=> d!1804227 (= (matchZipper!1853 (derivationStepZipper!1798 lt!2277712 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))) e!3517134)))

(declare-fun b!5719397 () Bool)

(assert (=> b!5719397 (= e!3517134 (nullableZipper!1665 (derivationStepZipper!1798 lt!2277712 (head!12109 (t!376766 s!2326)))))))

(declare-fun b!5719398 () Bool)

(assert (=> b!5719398 (= e!3517134 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 lt!2277712 (head!12109 (t!376766 s!2326))) (head!12109 (tail!11204 (t!376766 s!2326)))) (tail!11204 (tail!11204 (t!376766 s!2326)))))))

(assert (= (and d!1804227 c!1008564) b!5719397))

(assert (= (and d!1804227 (not c!1008564)) b!5719398))

(assert (=> d!1804227 m!6672232))

(declare-fun m!6672824 () Bool)

(assert (=> d!1804227 m!6672824))

(assert (=> b!5719397 m!6672322))

(declare-fun m!6672826 () Bool)

(assert (=> b!5719397 m!6672826))

(assert (=> b!5719398 m!6672232))

(declare-fun m!6672828 () Bool)

(assert (=> b!5719398 m!6672828))

(assert (=> b!5719398 m!6672322))

(assert (=> b!5719398 m!6672828))

(declare-fun m!6672830 () Bool)

(assert (=> b!5719398 m!6672830))

(assert (=> b!5719398 m!6672232))

(declare-fun m!6672832 () Bool)

(assert (=> b!5719398 m!6672832))

(assert (=> b!5719398 m!6672830))

(assert (=> b!5719398 m!6672832))

(declare-fun m!6672834 () Bool)

(assert (=> b!5719398 m!6672834))

(assert (=> b!5718767 d!1804227))

(declare-fun bs!1336944 () Bool)

(declare-fun d!1804231 () Bool)

(assert (= bs!1336944 (and d!1804231 b!5718391)))

(declare-fun lambda!309031 () Int)

(assert (=> bs!1336944 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309031 lambda!308953))))

(declare-fun bs!1336945 () Bool)

(assert (= bs!1336945 (and d!1804231 d!1804089)))

(assert (=> bs!1336945 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309031 lambda!309005))))

(assert (=> d!1804231 true))

(assert (=> d!1804231 (= (derivationStepZipper!1798 lt!2277712 (head!12109 (t!376766 s!2326))) (flatMap!1328 lt!2277712 lambda!309031))))

(declare-fun bs!1336947 () Bool)

(assert (= bs!1336947 d!1804231))

(declare-fun m!6672838 () Bool)

(assert (=> bs!1336947 m!6672838))

(assert (=> b!5718767 d!1804231))

(declare-fun d!1804235 () Bool)

(assert (=> d!1804235 (= (head!12109 (t!376766 s!2326)) (h!69768 (t!376766 s!2326)))))

(assert (=> b!5718767 d!1804235))

(declare-fun d!1804237 () Bool)

(assert (=> d!1804237 (= (tail!11204 (t!376766 s!2326)) (t!376766 (t!376766 s!2326)))))

(assert (=> b!5718767 d!1804237))

(declare-fun b!5719408 () Bool)

(declare-fun e!3517143 () Bool)

(declare-fun e!3517142 () Bool)

(assert (=> b!5719408 (= e!3517143 e!3517142)))

(declare-fun c!1008568 () Bool)

(assert (=> b!5719408 (= c!1008568 ((_ is EmptyLang!15715) (derivativeStep!4518 r!7292 (head!12109 s!2326))))))

(declare-fun b!5719409 () Bool)

(declare-fun lt!2277845 () Bool)

(assert (=> b!5719409 (= e!3517142 (not lt!2277845))))

(declare-fun b!5719410 () Bool)

(declare-fun e!3517146 () Bool)

(assert (=> b!5719410 (= e!3517146 (not (= (head!12109 (tail!11204 s!2326)) (c!1008289 (derivativeStep!4518 r!7292 (head!12109 s!2326))))))))

(declare-fun b!5719411 () Bool)

(declare-fun e!3517145 () Bool)

(assert (=> b!5719411 (= e!3517145 (= (head!12109 (tail!11204 s!2326)) (c!1008289 (derivativeStep!4518 r!7292 (head!12109 s!2326)))))))

(declare-fun b!5719412 () Bool)

(declare-fun res!2414791 () Bool)

(assert (=> b!5719412 (=> (not res!2414791) (not e!3517145))))

(assert (=> b!5719412 (= res!2414791 (isEmpty!35197 (tail!11204 (tail!11204 s!2326))))))

(declare-fun b!5719413 () Bool)

(declare-fun e!3517148 () Bool)

(assert (=> b!5719413 (= e!3517148 e!3517146)))

(declare-fun res!2414790 () Bool)

(assert (=> b!5719413 (=> res!2414790 e!3517146)))

(declare-fun call!436828 () Bool)

(assert (=> b!5719413 (= res!2414790 call!436828)))

(declare-fun b!5719414 () Bool)

(assert (=> b!5719414 (= e!3517143 (= lt!2277845 call!436828))))

(declare-fun b!5719415 () Bool)

(declare-fun e!3517147 () Bool)

(assert (=> b!5719415 (= e!3517147 (matchR!7900 (derivativeStep!4518 (derivativeStep!4518 r!7292 (head!12109 s!2326)) (head!12109 (tail!11204 s!2326))) (tail!11204 (tail!11204 s!2326))))))

(declare-fun d!1804239 () Bool)

(assert (=> d!1804239 e!3517143))

(declare-fun c!1008567 () Bool)

(assert (=> d!1804239 (= c!1008567 ((_ is EmptyExpr!15715) (derivativeStep!4518 r!7292 (head!12109 s!2326))))))

(assert (=> d!1804239 (= lt!2277845 e!3517147)))

(declare-fun c!1008569 () Bool)

(assert (=> d!1804239 (= c!1008569 (isEmpty!35197 (tail!11204 s!2326)))))

(assert (=> d!1804239 (validRegex!7451 (derivativeStep!4518 r!7292 (head!12109 s!2326)))))

(assert (=> d!1804239 (= (matchR!7900 (derivativeStep!4518 r!7292 (head!12109 s!2326)) (tail!11204 s!2326)) lt!2277845)))

(declare-fun b!5719416 () Bool)

(declare-fun res!2414788 () Bool)

(assert (=> b!5719416 (=> (not res!2414788) (not e!3517145))))

(assert (=> b!5719416 (= res!2414788 (not call!436828))))

(declare-fun b!5719417 () Bool)

(declare-fun res!2414794 () Bool)

(declare-fun e!3517144 () Bool)

(assert (=> b!5719417 (=> res!2414794 e!3517144)))

(assert (=> b!5719417 (= res!2414794 e!3517145)))

(declare-fun res!2414792 () Bool)

(assert (=> b!5719417 (=> (not res!2414792) (not e!3517145))))

(assert (=> b!5719417 (= res!2414792 lt!2277845)))

(declare-fun b!5719418 () Bool)

(assert (=> b!5719418 (= e!3517147 (nullable!5747 (derivativeStep!4518 r!7292 (head!12109 s!2326))))))

(declare-fun bm!436823 () Bool)

(assert (=> bm!436823 (= call!436828 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun b!5719419 () Bool)

(declare-fun res!2414795 () Bool)

(assert (=> b!5719419 (=> res!2414795 e!3517146)))

(assert (=> b!5719419 (= res!2414795 (not (isEmpty!35197 (tail!11204 (tail!11204 s!2326)))))))

(declare-fun b!5719420 () Bool)

(assert (=> b!5719420 (= e!3517144 e!3517148)))

(declare-fun res!2414793 () Bool)

(assert (=> b!5719420 (=> (not res!2414793) (not e!3517148))))

(assert (=> b!5719420 (= res!2414793 (not lt!2277845))))

(declare-fun b!5719421 () Bool)

(declare-fun res!2414789 () Bool)

(assert (=> b!5719421 (=> res!2414789 e!3517144)))

(assert (=> b!5719421 (= res!2414789 (not ((_ is ElementMatch!15715) (derivativeStep!4518 r!7292 (head!12109 s!2326)))))))

(assert (=> b!5719421 (= e!3517142 e!3517144)))

(assert (= (and d!1804239 c!1008569) b!5719418))

(assert (= (and d!1804239 (not c!1008569)) b!5719415))

(assert (= (and d!1804239 c!1008567) b!5719414))

(assert (= (and d!1804239 (not c!1008567)) b!5719408))

(assert (= (and b!5719408 c!1008568) b!5719409))

(assert (= (and b!5719408 (not c!1008568)) b!5719421))

(assert (= (and b!5719421 (not res!2414789)) b!5719417))

(assert (= (and b!5719417 res!2414792) b!5719416))

(assert (= (and b!5719416 res!2414788) b!5719412))

(assert (= (and b!5719412 res!2414791) b!5719411))

(assert (= (and b!5719417 (not res!2414794)) b!5719420))

(assert (= (and b!5719420 res!2414793) b!5719413))

(assert (= (and b!5719413 (not res!2414790)) b!5719419))

(assert (= (and b!5719419 (not res!2414795)) b!5719410))

(assert (= (or b!5719414 b!5719413 b!5719416) bm!436823))

(assert (=> b!5719411 m!6672188))

(declare-fun m!6672846 () Bool)

(assert (=> b!5719411 m!6672846))

(assert (=> b!5719412 m!6672188))

(declare-fun m!6672848 () Bool)

(assert (=> b!5719412 m!6672848))

(assert (=> b!5719412 m!6672848))

(declare-fun m!6672850 () Bool)

(assert (=> b!5719412 m!6672850))

(assert (=> b!5719418 m!6672194))

(declare-fun m!6672852 () Bool)

(assert (=> b!5719418 m!6672852))

(assert (=> b!5719410 m!6672188))

(assert (=> b!5719410 m!6672846))

(assert (=> b!5719419 m!6672188))

(assert (=> b!5719419 m!6672848))

(assert (=> b!5719419 m!6672848))

(assert (=> b!5719419 m!6672850))

(assert (=> bm!436823 m!6672188))

(assert (=> bm!436823 m!6672190))

(assert (=> d!1804239 m!6672188))

(assert (=> d!1804239 m!6672190))

(assert (=> d!1804239 m!6672194))

(declare-fun m!6672854 () Bool)

(assert (=> d!1804239 m!6672854))

(assert (=> b!5719415 m!6672188))

(assert (=> b!5719415 m!6672846))

(assert (=> b!5719415 m!6672194))

(assert (=> b!5719415 m!6672846))

(declare-fun m!6672856 () Bool)

(assert (=> b!5719415 m!6672856))

(assert (=> b!5719415 m!6672188))

(assert (=> b!5719415 m!6672848))

(assert (=> b!5719415 m!6672856))

(assert (=> b!5719415 m!6672848))

(declare-fun m!6672858 () Bool)

(assert (=> b!5719415 m!6672858))

(assert (=> b!5718594 d!1804239))

(declare-fun d!1804245 () Bool)

(declare-fun lt!2277848 () Regex!15715)

(assert (=> d!1804245 (validRegex!7451 lt!2277848)))

(declare-fun e!3517188 () Regex!15715)

(assert (=> d!1804245 (= lt!2277848 e!3517188)))

(declare-fun c!1008599 () Bool)

(assert (=> d!1804245 (= c!1008599 (or ((_ is EmptyExpr!15715) r!7292) ((_ is EmptyLang!15715) r!7292)))))

(assert (=> d!1804245 (validRegex!7451 r!7292)))

(assert (=> d!1804245 (= (derivativeStep!4518 r!7292 (head!12109 s!2326)) lt!2277848)))

(declare-fun call!436848 () Regex!15715)

(declare-fun call!436851 () Regex!15715)

(declare-fun b!5719482 () Bool)

(declare-fun e!3517187 () Regex!15715)

(assert (=> b!5719482 (= e!3517187 (Union!15715 (Concat!24560 call!436851 (regTwo!31942 r!7292)) call!436848))))

(declare-fun b!5719483 () Bool)

(declare-fun c!1008597 () Bool)

(assert (=> b!5719483 (= c!1008597 (nullable!5747 (regOne!31942 r!7292)))))

(declare-fun e!3517185 () Regex!15715)

(assert (=> b!5719483 (= e!3517185 e!3517187)))

(declare-fun bm!436843 () Bool)

(declare-fun call!436850 () Regex!15715)

(assert (=> bm!436843 (= call!436848 call!436850)))

(declare-fun b!5719484 () Bool)

(assert (=> b!5719484 (= e!3517188 EmptyLang!15715)))

(declare-fun b!5719485 () Bool)

(declare-fun e!3517186 () Regex!15715)

(assert (=> b!5719485 (= e!3517188 e!3517186)))

(declare-fun c!1008598 () Bool)

(assert (=> b!5719485 (= c!1008598 ((_ is ElementMatch!15715) r!7292))))

(declare-fun bm!436844 () Bool)

(declare-fun call!436849 () Regex!15715)

(assert (=> bm!436844 (= call!436851 call!436849)))

(declare-fun c!1008596 () Bool)

(declare-fun bm!436845 () Bool)

(declare-fun c!1008595 () Bool)

(assert (=> bm!436845 (= call!436849 (derivativeStep!4518 (ite c!1008596 (regTwo!31943 r!7292) (ite c!1008595 (reg!16044 r!7292) (regOne!31942 r!7292))) (head!12109 s!2326)))))

(declare-fun b!5719486 () Bool)

(assert (=> b!5719486 (= e!3517186 (ite (= (head!12109 s!2326) (c!1008289 r!7292)) EmptyExpr!15715 EmptyLang!15715))))

(declare-fun b!5719487 () Bool)

(declare-fun e!3517184 () Regex!15715)

(assert (=> b!5719487 (= e!3517184 (Union!15715 call!436850 call!436849))))

(declare-fun bm!436846 () Bool)

(assert (=> bm!436846 (= call!436850 (derivativeStep!4518 (ite c!1008596 (regOne!31943 r!7292) (ite c!1008597 (regTwo!31942 r!7292) (regOne!31942 r!7292))) (head!12109 s!2326)))))

(declare-fun b!5719488 () Bool)

(assert (=> b!5719488 (= e!3517184 e!3517185)))

(assert (=> b!5719488 (= c!1008595 ((_ is Star!15715) r!7292))))

(declare-fun b!5719489 () Bool)

(assert (=> b!5719489 (= e!3517187 (Union!15715 (Concat!24560 call!436848 (regTwo!31942 r!7292)) EmptyLang!15715))))

(declare-fun b!5719490 () Bool)

(assert (=> b!5719490 (= e!3517185 (Concat!24560 call!436851 r!7292))))

(declare-fun b!5719491 () Bool)

(assert (=> b!5719491 (= c!1008596 ((_ is Union!15715) r!7292))))

(assert (=> b!5719491 (= e!3517186 e!3517184)))

(assert (= (and d!1804245 c!1008599) b!5719484))

(assert (= (and d!1804245 (not c!1008599)) b!5719485))

(assert (= (and b!5719485 c!1008598) b!5719486))

(assert (= (and b!5719485 (not c!1008598)) b!5719491))

(assert (= (and b!5719491 c!1008596) b!5719487))

(assert (= (and b!5719491 (not c!1008596)) b!5719488))

(assert (= (and b!5719488 c!1008595) b!5719490))

(assert (= (and b!5719488 (not c!1008595)) b!5719483))

(assert (= (and b!5719483 c!1008597) b!5719482))

(assert (= (and b!5719483 (not c!1008597)) b!5719489))

(assert (= (or b!5719482 b!5719489) bm!436843))

(assert (= (or b!5719490 b!5719482) bm!436844))

(assert (= (or b!5719487 bm!436844) bm!436845))

(assert (= (or b!5719487 bm!436843) bm!436846))

(declare-fun m!6672896 () Bool)

(assert (=> d!1804245 m!6672896))

(assert (=> d!1804245 m!6672064))

(declare-fun m!6672898 () Bool)

(assert (=> b!5719483 m!6672898))

(assert (=> bm!436845 m!6672186))

(declare-fun m!6672900 () Bool)

(assert (=> bm!436845 m!6672900))

(assert (=> bm!436846 m!6672186))

(declare-fun m!6672902 () Bool)

(assert (=> bm!436846 m!6672902))

(assert (=> b!5718594 d!1804245))

(assert (=> b!5718594 d!1804217))

(declare-fun d!1804271 () Bool)

(assert (=> d!1804271 (= (tail!11204 s!2326) (t!376766 s!2326))))

(assert (=> b!5718594 d!1804271))

(assert (=> d!1803989 d!1804219))

(declare-fun d!1804273 () Bool)

(assert (=> d!1804273 (= (nullable!5747 (reg!16044 r!7292)) (nullableFct!1811 (reg!16044 r!7292)))))

(declare-fun bs!1336981 () Bool)

(assert (= bs!1336981 d!1804273))

(declare-fun m!6672904 () Bool)

(assert (=> bs!1336981 m!6672904))

(assert (=> b!5718721 d!1804273))

(declare-fun d!1804275 () Bool)

(declare-fun res!2414813 () Bool)

(declare-fun e!3517193 () Bool)

(assert (=> d!1804275 (=> res!2414813 e!3517193)))

(assert (=> d!1804275 (= res!2414813 ((_ is Nil!63322) lt!2277820))))

(assert (=> d!1804275 (= (noDuplicate!1645 lt!2277820) e!3517193)))

(declare-fun b!5719496 () Bool)

(declare-fun e!3517194 () Bool)

(assert (=> b!5719496 (= e!3517193 e!3517194)))

(declare-fun res!2414814 () Bool)

(assert (=> b!5719496 (=> (not res!2414814) (not e!3517194))))

(declare-fun contains!19854 (List!63446 Context!10198) Bool)

(assert (=> b!5719496 (= res!2414814 (not (contains!19854 (t!376768 lt!2277820) (h!69770 lt!2277820))))))

(declare-fun b!5719497 () Bool)

(assert (=> b!5719497 (= e!3517194 (noDuplicate!1645 (t!376768 lt!2277820)))))

(assert (= (and d!1804275 (not res!2414813)) b!5719496))

(assert (= (and b!5719496 res!2414814) b!5719497))

(declare-fun m!6672912 () Bool)

(assert (=> b!5719496 m!6672912))

(declare-fun m!6672914 () Bool)

(assert (=> b!5719497 m!6672914))

(assert (=> d!1804109 d!1804275))

(declare-fun d!1804279 () Bool)

(declare-fun e!3517201 () Bool)

(assert (=> d!1804279 e!3517201))

(declare-fun res!2414820 () Bool)

(assert (=> d!1804279 (=> (not res!2414820) (not e!3517201))))

(declare-fun res!2414819 () List!63446)

(assert (=> d!1804279 (= res!2414820 (noDuplicate!1645 res!2414819))))

(declare-fun e!3517202 () Bool)

(assert (=> d!1804279 e!3517202))

(assert (=> d!1804279 (= (choose!43244 z!1189) res!2414819)))

(declare-fun b!5719505 () Bool)

(declare-fun e!3517203 () Bool)

(declare-fun tp!1584052 () Bool)

(assert (=> b!5719505 (= e!3517203 tp!1584052)))

(declare-fun tp!1584051 () Bool)

(declare-fun b!5719504 () Bool)

(assert (=> b!5719504 (= e!3517202 (and (inv!82534 (h!69770 res!2414819)) e!3517203 tp!1584051))))

(declare-fun b!5719506 () Bool)

(assert (=> b!5719506 (= e!3517201 (= (content!11504 res!2414819) z!1189))))

(assert (= b!5719504 b!5719505))

(assert (= (and d!1804279 ((_ is Cons!63322) res!2414819)) b!5719504))

(assert (= (and d!1804279 res!2414820) b!5719506))

(declare-fun m!6672916 () Bool)

(assert (=> d!1804279 m!6672916))

(declare-fun m!6672918 () Bool)

(assert (=> b!5719504 m!6672918))

(declare-fun m!6672920 () Bool)

(assert (=> b!5719506 m!6672920))

(assert (=> d!1804109 d!1804279))

(declare-fun b!5719507 () Bool)

(declare-fun c!1008602 () Bool)

(declare-fun e!3517208 () Bool)

(assert (=> b!5719507 (= c!1008602 e!3517208)))

(declare-fun res!2414821 () Bool)

(assert (=> b!5719507 (=> (not res!2414821) (not e!3517208))))

(assert (=> b!5719507 (= res!2414821 ((_ is Concat!24560) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))))

(declare-fun e!3517206 () (InoxSet Context!10198))

(declare-fun e!3517209 () (InoxSet Context!10198))

(assert (=> b!5719507 (= e!3517206 e!3517209)))

(declare-fun c!1008601 () Bool)

(declare-fun bm!436847 () Bool)

(declare-fun call!436857 () List!63445)

(declare-fun call!436855 () (InoxSet Context!10198))

(declare-fun c!1008600 () Bool)

(assert (=> bm!436847 (= call!436855 (derivationStepZipperDown!1057 (ite c!1008601 (regOne!31943 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (ite c!1008602 (regTwo!31942 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (ite c!1008600 (regOne!31942 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (reg!16044 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))))))) (ite (or c!1008601 c!1008602) (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770)) (Context!10199 call!436857)) (h!69768 s!2326)))))

(declare-fun call!436853 () (InoxSet Context!10198))

(declare-fun call!436852 () List!63445)

(declare-fun bm!436848 () Bool)

(assert (=> bm!436848 (= call!436853 (derivationStepZipperDown!1057 (ite c!1008601 (regTwo!31943 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (regOne!31942 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))))) (ite c!1008601 (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770)) (Context!10199 call!436852)) (h!69768 s!2326)))))

(declare-fun bm!436849 () Bool)

(declare-fun call!436856 () (InoxSet Context!10198))

(assert (=> bm!436849 (= call!436856 call!436855)))

(declare-fun b!5719508 () Bool)

(declare-fun e!3517207 () (InoxSet Context!10198))

(declare-fun call!436854 () (InoxSet Context!10198))

(assert (=> b!5719508 (= e!3517207 call!436854)))

(declare-fun e!3517205 () (InoxSet Context!10198))

(declare-fun b!5719509 () Bool)

(assert (=> b!5719509 (= e!3517205 (store ((as const (Array Context!10198 Bool)) false) (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770)) true))))

(declare-fun b!5719510 () Bool)

(assert (=> b!5719510 (= e!3517205 e!3517206)))

(assert (=> b!5719510 (= c!1008601 ((_ is Union!15715) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))))

(declare-fun b!5719511 () Bool)

(assert (=> b!5719511 (= e!3517209 ((_ map or) call!436853 call!436856))))

(declare-fun b!5719512 () Bool)

(assert (=> b!5719512 (= e!3517208 (nullable!5747 (regOne!31942 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))))))))

(declare-fun b!5719513 () Bool)

(declare-fun e!3517204 () (InoxSet Context!10198))

(assert (=> b!5719513 (= e!3517204 call!436854)))

(declare-fun b!5719514 () Bool)

(assert (=> b!5719514 (= e!3517206 ((_ map or) call!436855 call!436853))))

(declare-fun b!5719515 () Bool)

(assert (=> b!5719515 (= e!3517204 ((as const (Array Context!10198 Bool)) false))))

(declare-fun c!1008603 () Bool)

(declare-fun b!5719516 () Bool)

(assert (=> b!5719516 (= c!1008603 ((_ is Star!15715) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))))

(assert (=> b!5719516 (= e!3517207 e!3517204)))

(declare-fun d!1804287 () Bool)

(declare-fun c!1008604 () Bool)

(assert (=> d!1804287 (= c!1008604 (and ((_ is ElementMatch!15715) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (= (c!1008289 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326))))))

(assert (=> d!1804287 (= (derivationStepZipperDown!1057 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))) (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770)) (h!69768 s!2326)) e!3517205)))

(declare-fun bm!436850 () Bool)

(assert (=> bm!436850 (= call!436852 ($colon$colon!1732 (exprs!5599 (ite (or c!1008455 c!1008456) lt!2277736 (Context!10199 call!436770))) (ite (or c!1008602 c!1008600) (regTwo!31942 (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))))))))

(declare-fun bm!436851 () Bool)

(assert (=> bm!436851 (= call!436857 call!436852)))

(declare-fun bm!436852 () Bool)

(assert (=> bm!436852 (= call!436854 call!436856)))

(declare-fun b!5719517 () Bool)

(assert (=> b!5719517 (= e!3517209 e!3517207)))

(assert (=> b!5719517 (= c!1008600 ((_ is Concat!24560) (ite c!1008455 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008456 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008454 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))))

(assert (= (and d!1804287 c!1008604) b!5719509))

(assert (= (and d!1804287 (not c!1008604)) b!5719510))

(assert (= (and b!5719510 c!1008601) b!5719514))

(assert (= (and b!5719510 (not c!1008601)) b!5719507))

(assert (= (and b!5719507 res!2414821) b!5719512))

(assert (= (and b!5719507 c!1008602) b!5719511))

(assert (= (and b!5719507 (not c!1008602)) b!5719517))

(assert (= (and b!5719517 c!1008600) b!5719508))

(assert (= (and b!5719517 (not c!1008600)) b!5719516))

(assert (= (and b!5719516 c!1008603) b!5719513))

(assert (= (and b!5719516 (not c!1008603)) b!5719515))

(assert (= (or b!5719508 b!5719513) bm!436851))

(assert (= (or b!5719508 b!5719513) bm!436852))

(assert (= (or b!5719511 bm!436851) bm!436850))

(assert (= (or b!5719511 bm!436852) bm!436849))

(assert (= (or b!5719514 b!5719511) bm!436848))

(assert (= (or b!5719514 bm!436849) bm!436847))

(declare-fun m!6672928 () Bool)

(assert (=> bm!436847 m!6672928))

(declare-fun m!6672930 () Bool)

(assert (=> b!5719509 m!6672930))

(declare-fun m!6672932 () Bool)

(assert (=> bm!436850 m!6672932))

(declare-fun m!6672934 () Bool)

(assert (=> b!5719512 m!6672934))

(declare-fun m!6672936 () Bool)

(assert (=> bm!436848 m!6672936))

(assert (=> bm!436760 d!1804287))

(declare-fun d!1804299 () Bool)

(assert (=> d!1804299 (= (isEmpty!35197 (t!376766 s!2326)) ((_ is Nil!63320) (t!376766 s!2326)))))

(assert (=> d!1804023 d!1804299))

(declare-fun c!1008610 () Bool)

(declare-fun bm!436855 () Bool)

(declare-fun c!1008609 () Bool)

(declare-fun call!436860 () Bool)

(assert (=> bm!436855 (= call!436860 (validRegex!7451 (ite c!1008609 (reg!16044 lt!2277808) (ite c!1008610 (regOne!31943 lt!2277808) (regOne!31942 lt!2277808)))))))

(declare-fun b!5719529 () Bool)

(declare-fun res!2414829 () Bool)

(declare-fun e!3517220 () Bool)

(assert (=> b!5719529 (=> (not res!2414829) (not e!3517220))))

(declare-fun call!436861 () Bool)

(assert (=> b!5719529 (= res!2414829 call!436861)))

(declare-fun e!3517218 () Bool)

(assert (=> b!5719529 (= e!3517218 e!3517220)))

(declare-fun b!5719530 () Bool)

(declare-fun e!3517217 () Bool)

(declare-fun call!436862 () Bool)

(assert (=> b!5719530 (= e!3517217 call!436862)))

(declare-fun b!5719531 () Bool)

(assert (=> b!5719531 (= e!3517220 call!436862)))

(declare-fun b!5719532 () Bool)

(declare-fun e!3517221 () Bool)

(declare-fun e!3517222 () Bool)

(assert (=> b!5719532 (= e!3517221 e!3517222)))

(assert (=> b!5719532 (= c!1008609 ((_ is Star!15715) lt!2277808))))

(declare-fun b!5719533 () Bool)

(declare-fun e!3517223 () Bool)

(assert (=> b!5719533 (= e!3517222 e!3517223)))

(declare-fun res!2414826 () Bool)

(assert (=> b!5719533 (= res!2414826 (not (nullable!5747 (reg!16044 lt!2277808))))))

(assert (=> b!5719533 (=> (not res!2414826) (not e!3517223))))

(declare-fun bm!436856 () Bool)

(assert (=> bm!436856 (= call!436861 call!436860)))

(declare-fun b!5719535 () Bool)

(declare-fun e!3517219 () Bool)

(assert (=> b!5719535 (= e!3517219 e!3517217)))

(declare-fun res!2414825 () Bool)

(assert (=> b!5719535 (=> (not res!2414825) (not e!3517217))))

(assert (=> b!5719535 (= res!2414825 call!436861)))

(declare-fun bm!436857 () Bool)

(assert (=> bm!436857 (= call!436862 (validRegex!7451 (ite c!1008610 (regTwo!31943 lt!2277808) (regTwo!31942 lt!2277808))))))

(declare-fun b!5719536 () Bool)

(declare-fun res!2414827 () Bool)

(assert (=> b!5719536 (=> res!2414827 e!3517219)))

(assert (=> b!5719536 (= res!2414827 (not ((_ is Concat!24560) lt!2277808)))))

(assert (=> b!5719536 (= e!3517218 e!3517219)))

(declare-fun b!5719537 () Bool)

(assert (=> b!5719537 (= e!3517222 e!3517218)))

(assert (=> b!5719537 (= c!1008610 ((_ is Union!15715) lt!2277808))))

(declare-fun d!1804301 () Bool)

(declare-fun res!2414828 () Bool)

(assert (=> d!1804301 (=> res!2414828 e!3517221)))

(assert (=> d!1804301 (= res!2414828 ((_ is ElementMatch!15715) lt!2277808))))

(assert (=> d!1804301 (= (validRegex!7451 lt!2277808) e!3517221)))

(declare-fun b!5719534 () Bool)

(assert (=> b!5719534 (= e!3517223 call!436860)))

(assert (= (and d!1804301 (not res!2414828)) b!5719532))

(assert (= (and b!5719532 c!1008609) b!5719533))

(assert (= (and b!5719532 (not c!1008609)) b!5719537))

(assert (= (and b!5719533 res!2414826) b!5719534))

(assert (= (and b!5719537 c!1008610) b!5719529))

(assert (= (and b!5719537 (not c!1008610)) b!5719536))

(assert (= (and b!5719529 res!2414829) b!5719531))

(assert (= (and b!5719536 (not res!2414827)) b!5719535))

(assert (= (and b!5719535 res!2414825) b!5719530))

(assert (= (or b!5719531 b!5719530) bm!436857))

(assert (= (or b!5719529 b!5719535) bm!436856))

(assert (= (or b!5719534 bm!436856) bm!436855))

(declare-fun m!6672938 () Bool)

(assert (=> bm!436855 m!6672938))

(declare-fun m!6672940 () Bool)

(assert (=> b!5719533 m!6672940))

(declare-fun m!6672942 () Bool)

(assert (=> bm!436857 m!6672942))

(assert (=> d!1804077 d!1804301))

(declare-fun d!1804303 () Bool)

(declare-fun res!2414834 () Bool)

(declare-fun e!3517228 () Bool)

(assert (=> d!1804303 (=> res!2414834 e!3517228)))

(assert (=> d!1804303 (= res!2414834 ((_ is Nil!63321) (unfocusZipperList!1143 zl!343)))))

(assert (=> d!1804303 (= (forall!14850 (unfocusZipperList!1143 zl!343) lambda!308999) e!3517228)))

(declare-fun b!5719542 () Bool)

(declare-fun e!3517229 () Bool)

(assert (=> b!5719542 (= e!3517228 e!3517229)))

(declare-fun res!2414835 () Bool)

(assert (=> b!5719542 (=> (not res!2414835) (not e!3517229))))

(declare-fun dynLambda!24777 (Int Regex!15715) Bool)

(assert (=> b!5719542 (= res!2414835 (dynLambda!24777 lambda!308999 (h!69769 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5719543 () Bool)

(assert (=> b!5719543 (= e!3517229 (forall!14850 (t!376767 (unfocusZipperList!1143 zl!343)) lambda!308999))))

(assert (= (and d!1804303 (not res!2414834)) b!5719542))

(assert (= (and b!5719542 res!2414835) b!5719543))

(declare-fun b_lambda!216103 () Bool)

(assert (=> (not b_lambda!216103) (not b!5719542)))

(declare-fun m!6672944 () Bool)

(assert (=> b!5719542 m!6672944))

(declare-fun m!6672946 () Bool)

(assert (=> b!5719543 m!6672946))

(assert (=> d!1804077 d!1804303))

(declare-fun b!5719544 () Bool)

(declare-fun c!1008613 () Bool)

(declare-fun e!3517234 () Bool)

(assert (=> b!5719544 (= c!1008613 e!3517234)))

(declare-fun res!2414836 () Bool)

(assert (=> b!5719544 (=> (not res!2414836) (not e!3517234))))

(assert (=> b!5719544 (= res!2414836 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277736))))))

(declare-fun e!3517232 () (InoxSet Context!10198))

(declare-fun e!3517235 () (InoxSet Context!10198))

(assert (=> b!5719544 (= e!3517232 e!3517235)))

(declare-fun call!436866 () (InoxSet Context!10198))

(declare-fun call!436868 () List!63445)

(declare-fun c!1008611 () Bool)

(declare-fun c!1008612 () Bool)

(declare-fun bm!436858 () Bool)

(assert (=> bm!436858 (= call!436866 (derivationStepZipperDown!1057 (ite c!1008612 (regOne!31943 (h!69769 (exprs!5599 lt!2277736))) (ite c!1008613 (regTwo!31942 (h!69769 (exprs!5599 lt!2277736))) (ite c!1008611 (regOne!31942 (h!69769 (exprs!5599 lt!2277736))) (reg!16044 (h!69769 (exprs!5599 lt!2277736)))))) (ite (or c!1008612 c!1008613) (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (Context!10199 call!436868)) (h!69768 s!2326)))))

(declare-fun bm!436859 () Bool)

(declare-fun call!436863 () List!63445)

(declare-fun call!436864 () (InoxSet Context!10198))

(assert (=> bm!436859 (= call!436864 (derivationStepZipperDown!1057 (ite c!1008612 (regTwo!31943 (h!69769 (exprs!5599 lt!2277736))) (regOne!31942 (h!69769 (exprs!5599 lt!2277736)))) (ite c!1008612 (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (Context!10199 call!436863)) (h!69768 s!2326)))))

(declare-fun bm!436860 () Bool)

(declare-fun call!436867 () (InoxSet Context!10198))

(assert (=> bm!436860 (= call!436867 call!436866)))

(declare-fun b!5719545 () Bool)

(declare-fun e!3517233 () (InoxSet Context!10198))

(declare-fun call!436865 () (InoxSet Context!10198))

(assert (=> b!5719545 (= e!3517233 call!436865)))

(declare-fun b!5719546 () Bool)

(declare-fun e!3517231 () (InoxSet Context!10198))

(assert (=> b!5719546 (= e!3517231 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 lt!2277736))) true))))

(declare-fun b!5719547 () Bool)

(assert (=> b!5719547 (= e!3517231 e!3517232)))

(assert (=> b!5719547 (= c!1008612 ((_ is Union!15715) (h!69769 (exprs!5599 lt!2277736))))))

(declare-fun b!5719548 () Bool)

(assert (=> b!5719548 (= e!3517235 ((_ map or) call!436864 call!436867))))

(declare-fun b!5719549 () Bool)

(assert (=> b!5719549 (= e!3517234 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 lt!2277736)))))))

(declare-fun b!5719550 () Bool)

(declare-fun e!3517230 () (InoxSet Context!10198))

(assert (=> b!5719550 (= e!3517230 call!436865)))

(declare-fun b!5719551 () Bool)

(assert (=> b!5719551 (= e!3517232 ((_ map or) call!436866 call!436864))))

(declare-fun b!5719552 () Bool)

(assert (=> b!5719552 (= e!3517230 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719553 () Bool)

(declare-fun c!1008614 () Bool)

(assert (=> b!5719553 (= c!1008614 ((_ is Star!15715) (h!69769 (exprs!5599 lt!2277736))))))

(assert (=> b!5719553 (= e!3517233 e!3517230)))

(declare-fun d!1804305 () Bool)

(declare-fun c!1008615 () Bool)

(assert (=> d!1804305 (= c!1008615 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 lt!2277736))) (= (c!1008289 (h!69769 (exprs!5599 lt!2277736))) (h!69768 s!2326))))))

(assert (=> d!1804305 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277736)) (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (h!69768 s!2326)) e!3517231)))

(declare-fun bm!436861 () Bool)

(assert (=> bm!436861 (= call!436863 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736)))) (ite (or c!1008613 c!1008611) (regTwo!31942 (h!69769 (exprs!5599 lt!2277736))) (h!69769 (exprs!5599 lt!2277736)))))))

(declare-fun bm!436862 () Bool)

(assert (=> bm!436862 (= call!436868 call!436863)))

(declare-fun bm!436863 () Bool)

(assert (=> bm!436863 (= call!436865 call!436867)))

(declare-fun b!5719554 () Bool)

(assert (=> b!5719554 (= e!3517235 e!3517233)))

(assert (=> b!5719554 (= c!1008611 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277736))))))

(assert (= (and d!1804305 c!1008615) b!5719546))

(assert (= (and d!1804305 (not c!1008615)) b!5719547))

(assert (= (and b!5719547 c!1008612) b!5719551))

(assert (= (and b!5719547 (not c!1008612)) b!5719544))

(assert (= (and b!5719544 res!2414836) b!5719549))

(assert (= (and b!5719544 c!1008613) b!5719548))

(assert (= (and b!5719544 (not c!1008613)) b!5719554))

(assert (= (and b!5719554 c!1008611) b!5719545))

(assert (= (and b!5719554 (not c!1008611)) b!5719553))

(assert (= (and b!5719553 c!1008614) b!5719550))

(assert (= (and b!5719553 (not c!1008614)) b!5719552))

(assert (= (or b!5719545 b!5719550) bm!436862))

(assert (= (or b!5719545 b!5719550) bm!436863))

(assert (= (or b!5719548 bm!436862) bm!436861))

(assert (= (or b!5719548 bm!436863) bm!436860))

(assert (= (or b!5719551 b!5719548) bm!436859))

(assert (= (or b!5719551 bm!436860) bm!436858))

(declare-fun m!6672948 () Bool)

(assert (=> bm!436858 m!6672948))

(declare-fun m!6672950 () Bool)

(assert (=> b!5719546 m!6672950))

(declare-fun m!6672952 () Bool)

(assert (=> bm!436861 m!6672952))

(declare-fun m!6672954 () Bool)

(assert (=> b!5719549 m!6672954))

(declare-fun m!6672956 () Bool)

(assert (=> bm!436859 m!6672956))

(assert (=> bm!436735 d!1804305))

(declare-fun d!1804307 () Bool)

(assert (=> d!1804307 (= (nullable!5747 (h!69769 (exprs!5599 lt!2277732))) (nullableFct!1811 (h!69769 (exprs!5599 lt!2277732))))))

(declare-fun bs!1337029 () Bool)

(assert (= bs!1337029 d!1804307))

(declare-fun m!6672962 () Bool)

(assert (=> bs!1337029 m!6672962))

(assert (=> b!5719061 d!1804307))

(assert (=> b!5719129 d!1804081))

(declare-fun d!1804309 () Bool)

(assert (=> d!1804309 (= (nullable!5747 (h!69769 (exprs!5599 lt!2277713))) (nullableFct!1811 (h!69769 (exprs!5599 lt!2277713))))))

(declare-fun bs!1337030 () Bool)

(assert (= bs!1337030 d!1804309))

(declare-fun m!6672966 () Bool)

(assert (=> bs!1337030 m!6672966))

(assert (=> b!5719056 d!1804309))

(declare-fun d!1804313 () Bool)

(assert (=> d!1804313 (= ($colon$colon!1732 (exprs!5599 lt!2277732) (ite (or c!1008495 c!1008493) (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (regOne!31942 r!7292)))) (Cons!63321 (ite (or c!1008495 c!1008493) (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (regOne!31942 r!7292))) (exprs!5599 lt!2277732)))))

(assert (=> bm!436777 d!1804313))

(declare-fun d!1804315 () Bool)

(assert (=> d!1804315 (= (Exists!2815 lambda!309015) (choose!43245 lambda!309015))))

(declare-fun bs!1337031 () Bool)

(assert (= bs!1337031 d!1804315))

(declare-fun m!6672968 () Bool)

(assert (=> bs!1337031 m!6672968))

(assert (=> d!1804125 d!1804315))

(declare-fun d!1804317 () Bool)

(assert (=> d!1804317 (= (Exists!2815 lambda!309016) (choose!43245 lambda!309016))))

(declare-fun bs!1337032 () Bool)

(assert (= bs!1337032 d!1804317))

(declare-fun m!6672970 () Bool)

(assert (=> bs!1337032 m!6672970))

(assert (=> d!1804125 d!1804317))

(declare-fun bs!1337047 () Bool)

(declare-fun d!1804319 () Bool)

(assert (= bs!1337047 (and d!1804319 d!1804125)))

(declare-fun lambda!309047 () Int)

(assert (=> bs!1337047 (= lambda!309047 lambda!309015)))

(declare-fun bs!1337048 () Bool)

(assert (= bs!1337048 (and d!1804319 d!1804129)))

(assert (=> bs!1337048 (= lambda!309047 lambda!309019)))

(declare-fun bs!1337049 () Bool)

(assert (= bs!1337049 (and d!1804319 b!5718386)))

(assert (=> bs!1337049 (not (= lambda!309047 lambda!308952))))

(assert (=> bs!1337049 (= lambda!309047 lambda!308951)))

(declare-fun bs!1337050 () Bool)

(assert (= bs!1337050 (and d!1804319 b!5718490)))

(assert (=> bs!1337050 (not (= lambda!309047 lambda!308968))))

(declare-fun bs!1337051 () Bool)

(assert (= bs!1337051 (and d!1804319 b!5719082)))

(assert (=> bs!1337051 (not (= lambda!309047 lambda!309007))))

(declare-fun bs!1337052 () Bool)

(assert (= bs!1337052 (and d!1804319 b!5719084)))

(assert (=> bs!1337052 (not (= lambda!309047 lambda!309006))))

(declare-fun bs!1337053 () Bool)

(assert (= bs!1337053 (and d!1804319 b!5718492)))

(assert (=> bs!1337053 (not (= lambda!309047 lambda!308967))))

(assert (=> bs!1337047 (not (= lambda!309047 lambda!309016))))

(assert (=> d!1804319 true))

(assert (=> d!1804319 true))

(assert (=> d!1804319 true))

(declare-fun lambda!309048 () Int)

(assert (=> bs!1337048 (not (= lambda!309048 lambda!309019))))

(assert (=> bs!1337049 (= lambda!309048 lambda!308952)))

(assert (=> bs!1337049 (not (= lambda!309048 lambda!308951))))

(assert (=> bs!1337050 (= lambda!309048 lambda!308968)))

(assert (=> bs!1337051 (= (and (= (regOne!31942 r!7292) (regOne!31942 lt!2277714)) (= (regTwo!31942 r!7292) (regTwo!31942 lt!2277714))) (= lambda!309048 lambda!309007))))

(assert (=> bs!1337052 (not (= lambda!309048 lambda!309006))))

(assert (=> bs!1337053 (not (= lambda!309048 lambda!308967))))

(assert (=> bs!1337047 (= lambda!309048 lambda!309016)))

(declare-fun bs!1337054 () Bool)

(assert (= bs!1337054 d!1804319))

(assert (=> bs!1337054 (not (= lambda!309048 lambda!309047))))

(assert (=> bs!1337047 (not (= lambda!309048 lambda!309015))))

(assert (=> d!1804319 true))

(assert (=> d!1804319 true))

(assert (=> d!1804319 true))

(assert (=> d!1804319 (= (Exists!2815 lambda!309047) (Exists!2815 lambda!309048))))

(assert (=> d!1804319 true))

(declare-fun _$90!1468 () Unit!156392)

(assert (=> d!1804319 (= (choose!43246 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326) _$90!1468)))

(declare-fun m!6673016 () Bool)

(assert (=> bs!1337054 m!6673016))

(declare-fun m!6673018 () Bool)

(assert (=> bs!1337054 m!6673018))

(assert (=> d!1804125 d!1804319))

(declare-fun call!436880 () Bool)

(declare-fun c!1008637 () Bool)

(declare-fun c!1008636 () Bool)

(declare-fun bm!436875 () Bool)

(assert (=> bm!436875 (= call!436880 (validRegex!7451 (ite c!1008636 (reg!16044 (regOne!31942 r!7292)) (ite c!1008637 (regOne!31943 (regOne!31942 r!7292)) (regOne!31942 (regOne!31942 r!7292))))))))

(declare-fun b!5719614 () Bool)

(declare-fun res!2414860 () Bool)

(declare-fun e!3517270 () Bool)

(assert (=> b!5719614 (=> (not res!2414860) (not e!3517270))))

(declare-fun call!436881 () Bool)

(assert (=> b!5719614 (= res!2414860 call!436881)))

(declare-fun e!3517268 () Bool)

(assert (=> b!5719614 (= e!3517268 e!3517270)))

(declare-fun b!5719615 () Bool)

(declare-fun e!3517267 () Bool)

(declare-fun call!436882 () Bool)

(assert (=> b!5719615 (= e!3517267 call!436882)))

(declare-fun b!5719616 () Bool)

(assert (=> b!5719616 (= e!3517270 call!436882)))

(declare-fun b!5719617 () Bool)

(declare-fun e!3517271 () Bool)

(declare-fun e!3517272 () Bool)

(assert (=> b!5719617 (= e!3517271 e!3517272)))

(assert (=> b!5719617 (= c!1008636 ((_ is Star!15715) (regOne!31942 r!7292)))))

(declare-fun b!5719618 () Bool)

(declare-fun e!3517273 () Bool)

(assert (=> b!5719618 (= e!3517272 e!3517273)))

(declare-fun res!2414857 () Bool)

(assert (=> b!5719618 (= res!2414857 (not (nullable!5747 (reg!16044 (regOne!31942 r!7292)))))))

(assert (=> b!5719618 (=> (not res!2414857) (not e!3517273))))

(declare-fun bm!436876 () Bool)

(assert (=> bm!436876 (= call!436881 call!436880)))

(declare-fun b!5719620 () Bool)

(declare-fun e!3517269 () Bool)

(assert (=> b!5719620 (= e!3517269 e!3517267)))

(declare-fun res!2414856 () Bool)

(assert (=> b!5719620 (=> (not res!2414856) (not e!3517267))))

(assert (=> b!5719620 (= res!2414856 call!436881)))

(declare-fun bm!436877 () Bool)

(assert (=> bm!436877 (= call!436882 (validRegex!7451 (ite c!1008637 (regTwo!31943 (regOne!31942 r!7292)) (regTwo!31942 (regOne!31942 r!7292)))))))

(declare-fun b!5719621 () Bool)

(declare-fun res!2414858 () Bool)

(assert (=> b!5719621 (=> res!2414858 e!3517269)))

(assert (=> b!5719621 (= res!2414858 (not ((_ is Concat!24560) (regOne!31942 r!7292))))))

(assert (=> b!5719621 (= e!3517268 e!3517269)))

(declare-fun b!5719622 () Bool)

(assert (=> b!5719622 (= e!3517272 e!3517268)))

(assert (=> b!5719622 (= c!1008637 ((_ is Union!15715) (regOne!31942 r!7292)))))

(declare-fun d!1804339 () Bool)

(declare-fun res!2414859 () Bool)

(assert (=> d!1804339 (=> res!2414859 e!3517271)))

(assert (=> d!1804339 (= res!2414859 ((_ is ElementMatch!15715) (regOne!31942 r!7292)))))

(assert (=> d!1804339 (= (validRegex!7451 (regOne!31942 r!7292)) e!3517271)))

(declare-fun b!5719619 () Bool)

(assert (=> b!5719619 (= e!3517273 call!436880)))

(assert (= (and d!1804339 (not res!2414859)) b!5719617))

(assert (= (and b!5719617 c!1008636) b!5719618))

(assert (= (and b!5719617 (not c!1008636)) b!5719622))

(assert (= (and b!5719618 res!2414857) b!5719619))

(assert (= (and b!5719622 c!1008637) b!5719614))

(assert (= (and b!5719622 (not c!1008637)) b!5719621))

(assert (= (and b!5719614 res!2414860) b!5719616))

(assert (= (and b!5719621 (not res!2414858)) b!5719620))

(assert (= (and b!5719620 res!2414856) b!5719615))

(assert (= (or b!5719616 b!5719615) bm!436877))

(assert (= (or b!5719614 b!5719620) bm!436876))

(assert (= (or b!5719619 bm!436876) bm!436875))

(declare-fun m!6673020 () Bool)

(assert (=> bm!436875 m!6673020))

(declare-fun m!6673022 () Bool)

(assert (=> b!5719618 m!6673022))

(declare-fun m!6673024 () Bool)

(assert (=> bm!436877 m!6673024))

(assert (=> d!1804125 d!1804339))

(assert (=> d!1804099 d!1804103))

(declare-fun d!1804341 () Bool)

(assert (=> d!1804341 (= (flatMap!1328 lt!2277725 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277713))))

(assert (=> d!1804341 true))

(declare-fun _$13!2394 () Unit!156392)

(assert (=> d!1804341 (= (choose!43241 lt!2277725 lt!2277713 lambda!308953) _$13!2394)))

(declare-fun b_lambda!216107 () Bool)

(assert (=> (not b_lambda!216107) (not d!1804341)))

(declare-fun bs!1337055 () Bool)

(assert (= bs!1337055 d!1804341))

(assert (=> bs!1337055 m!6672008))

(assert (=> bs!1337055 m!6672536))

(assert (=> d!1804099 d!1804341))

(declare-fun bs!1337056 () Bool)

(declare-fun d!1804343 () Bool)

(assert (= bs!1337056 (and d!1804343 d!1803977)))

(declare-fun lambda!309049 () Int)

(assert (=> bs!1337056 (= lambda!309049 lambda!308976)))

(declare-fun bs!1337057 () Bool)

(assert (= bs!1337057 (and d!1804343 d!1804077)))

(assert (=> bs!1337057 (= lambda!309049 lambda!308999)))

(declare-fun bs!1337058 () Bool)

(assert (= bs!1337058 (and d!1804343 d!1804079)))

(assert (=> bs!1337058 (= lambda!309049 lambda!309002)))

(declare-fun bs!1337059 () Bool)

(assert (= bs!1337059 (and d!1804343 d!1804119)))

(assert (=> bs!1337059 (= lambda!309049 lambda!309010)))

(declare-fun bs!1337060 () Bool)

(assert (= bs!1337060 (and d!1804343 d!1803987)))

(assert (=> bs!1337060 (= lambda!309049 lambda!308981)))

(assert (=> d!1804343 (= (inv!82534 setElem!38311) (forall!14850 (exprs!5599 setElem!38311) lambda!309049))))

(declare-fun bs!1337061 () Bool)

(assert (= bs!1337061 d!1804343))

(declare-fun m!6673026 () Bool)

(assert (=> bs!1337061 m!6673026))

(assert (=> setNonEmpty!38311 d!1804343))

(declare-fun b!5719623 () Bool)

(declare-fun c!1008640 () Bool)

(declare-fun e!3517278 () Bool)

(assert (=> b!5719623 (= c!1008640 e!3517278)))

(declare-fun res!2414861 () Bool)

(assert (=> b!5719623 (=> (not res!2414861) (not e!3517278))))

(assert (=> b!5719623 (= res!2414861 ((_ is Concat!24560) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun e!3517276 () (InoxSet Context!10198))

(declare-fun e!3517279 () (InoxSet Context!10198))

(assert (=> b!5719623 (= e!3517276 e!3517279)))

(declare-fun call!436892 () List!63445)

(declare-fun c!1008639 () Bool)

(declare-fun bm!436882 () Bool)

(declare-fun c!1008638 () Bool)

(declare-fun call!436890 () (InoxSet Context!10198))

(assert (=> bm!436882 (= call!436890 (derivationStepZipperDown!1057 (ite c!1008639 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008640 (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (ite c!1008638 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (reg!16044 (h!69769 (exprs!5599 (h!69770 zl!343))))))) (ite (or c!1008639 c!1008640) (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (Context!10199 call!436892)) (h!69768 s!2326)))))

(declare-fun bm!436883 () Bool)

(declare-fun call!436887 () List!63445)

(declare-fun call!436888 () (InoxSet Context!10198))

(assert (=> bm!436883 (= call!436888 (derivationStepZipperDown!1057 (ite c!1008639 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))) (ite c!1008639 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (Context!10199 call!436887)) (h!69768 s!2326)))))

(declare-fun bm!436884 () Bool)

(declare-fun call!436891 () (InoxSet Context!10198))

(assert (=> bm!436884 (= call!436891 call!436890)))

(declare-fun b!5719624 () Bool)

(declare-fun e!3517277 () (InoxSet Context!10198))

(declare-fun call!436889 () (InoxSet Context!10198))

(assert (=> b!5719624 (= e!3517277 call!436889)))

(declare-fun b!5719625 () Bool)

(declare-fun e!3517275 () (InoxSet Context!10198))

(assert (=> b!5719625 (= e!3517275 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) true))))

(declare-fun b!5719626 () Bool)

(assert (=> b!5719626 (= e!3517275 e!3517276)))

(assert (=> b!5719626 (= c!1008639 ((_ is Union!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5719627 () Bool)

(assert (=> b!5719627 (= e!3517279 ((_ map or) call!436888 call!436891))))

(declare-fun b!5719628 () Bool)

(assert (=> b!5719628 (= e!3517278 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5719629 () Bool)

(declare-fun e!3517274 () (InoxSet Context!10198))

(assert (=> b!5719629 (= e!3517274 call!436889)))

(declare-fun b!5719630 () Bool)

(assert (=> b!5719630 (= e!3517276 ((_ map or) call!436890 call!436888))))

(declare-fun b!5719631 () Bool)

(assert (=> b!5719631 (= e!3517274 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719632 () Bool)

(declare-fun c!1008641 () Bool)

(assert (=> b!5719632 (= c!1008641 ((_ is Star!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5719632 (= e!3517277 e!3517274)))

(declare-fun d!1804345 () Bool)

(declare-fun c!1008642 () Bool)

(assert (=> d!1804345 (= c!1008642 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))) (= (c!1008289 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326))))))

(assert (=> d!1804345 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (h!69770 zl!343))) (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326)) e!3517275)))

(declare-fun bm!436885 () Bool)

(assert (=> bm!436885 (= call!436887 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343))))) (ite (or c!1008640 c!1008638) (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69769 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun bm!436886 () Bool)

(assert (=> bm!436886 (= call!436892 call!436887)))

(declare-fun bm!436887 () Bool)

(assert (=> bm!436887 (= call!436889 call!436891)))

(declare-fun b!5719633 () Bool)

(assert (=> b!5719633 (= e!3517279 e!3517277)))

(assert (=> b!5719633 (= c!1008638 ((_ is Concat!24560) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (= (and d!1804345 c!1008642) b!5719625))

(assert (= (and d!1804345 (not c!1008642)) b!5719626))

(assert (= (and b!5719626 c!1008639) b!5719630))

(assert (= (and b!5719626 (not c!1008639)) b!5719623))

(assert (= (and b!5719623 res!2414861) b!5719628))

(assert (= (and b!5719623 c!1008640) b!5719627))

(assert (= (and b!5719623 (not c!1008640)) b!5719633))

(assert (= (and b!5719633 c!1008638) b!5719624))

(assert (= (and b!5719633 (not c!1008638)) b!5719632))

(assert (= (and b!5719632 c!1008641) b!5719629))

(assert (= (and b!5719632 (not c!1008641)) b!5719631))

(assert (= (or b!5719624 b!5719629) bm!436886))

(assert (= (or b!5719624 b!5719629) bm!436887))

(assert (= (or b!5719627 bm!436886) bm!436885))

(assert (= (or b!5719627 bm!436887) bm!436884))

(assert (= (or b!5719630 b!5719627) bm!436883))

(assert (= (or b!5719630 bm!436884) bm!436882))

(declare-fun m!6673028 () Bool)

(assert (=> bm!436882 m!6673028))

(declare-fun m!6673030 () Bool)

(assert (=> b!5719625 m!6673030))

(declare-fun m!6673032 () Bool)

(assert (=> bm!436885 m!6673032))

(assert (=> b!5719628 m!6672454))

(declare-fun m!6673034 () Bool)

(assert (=> bm!436883 m!6673034))

(assert (=> bm!436766 d!1804345))

(declare-fun d!1804347 () Bool)

(assert (=> d!1804347 (= (nullable!5747 (h!69769 (exprs!5599 lt!2277710))) (nullableFct!1811 (h!69769 (exprs!5599 lt!2277710))))))

(declare-fun bs!1337062 () Bool)

(assert (= bs!1337062 d!1804347))

(declare-fun m!6673036 () Bool)

(assert (=> bs!1337062 m!6673036))

(assert (=> b!5719049 d!1804347))

(declare-fun b!5719652 () Bool)

(declare-fun e!3517290 () List!63444)

(assert (=> b!5719652 (= e!3517290 (_2!36115 (get!21832 lt!2277832)))))

(declare-fun d!1804349 () Bool)

(declare-fun e!3517289 () Bool)

(assert (=> d!1804349 e!3517289))

(declare-fun res!2414866 () Bool)

(assert (=> d!1804349 (=> (not res!2414866) (not e!3517289))))

(declare-fun lt!2277856 () List!63444)

(declare-fun content!11505 (List!63444) (InoxSet C!31700))

(assert (=> d!1804349 (= res!2414866 (= (content!11505 lt!2277856) ((_ map or) (content!11505 (_1!36115 (get!21832 lt!2277832))) (content!11505 (_2!36115 (get!21832 lt!2277832))))))))

(assert (=> d!1804349 (= lt!2277856 e!3517290)))

(declare-fun c!1008650 () Bool)

(assert (=> d!1804349 (= c!1008650 ((_ is Nil!63320) (_1!36115 (get!21832 lt!2277832))))))

(assert (=> d!1804349 (= (++!13911 (_1!36115 (get!21832 lt!2277832)) (_2!36115 (get!21832 lt!2277832))) lt!2277856)))

(declare-fun b!5719654 () Bool)

(declare-fun res!2414867 () Bool)

(assert (=> b!5719654 (=> (not res!2414867) (not e!3517289))))

(declare-fun size!40026 (List!63444) Int)

(assert (=> b!5719654 (= res!2414867 (= (size!40026 lt!2277856) (+ (size!40026 (_1!36115 (get!21832 lt!2277832))) (size!40026 (_2!36115 (get!21832 lt!2277832))))))))

(declare-fun b!5719655 () Bool)

(assert (=> b!5719655 (= e!3517289 (or (not (= (_2!36115 (get!21832 lt!2277832)) Nil!63320)) (= lt!2277856 (_1!36115 (get!21832 lt!2277832)))))))

(declare-fun b!5719653 () Bool)

(assert (=> b!5719653 (= e!3517290 (Cons!63320 (h!69768 (_1!36115 (get!21832 lt!2277832))) (++!13911 (t!376766 (_1!36115 (get!21832 lt!2277832))) (_2!36115 (get!21832 lt!2277832)))))))

(assert (= (and d!1804349 c!1008650) b!5719652))

(assert (= (and d!1804349 (not c!1008650)) b!5719653))

(assert (= (and d!1804349 res!2414866) b!5719654))

(assert (= (and b!5719654 res!2414867) b!5719655))

(declare-fun m!6673048 () Bool)

(assert (=> d!1804349 m!6673048))

(declare-fun m!6673050 () Bool)

(assert (=> d!1804349 m!6673050))

(declare-fun m!6673052 () Bool)

(assert (=> d!1804349 m!6673052))

(declare-fun m!6673054 () Bool)

(assert (=> b!5719654 m!6673054))

(declare-fun m!6673056 () Bool)

(assert (=> b!5719654 m!6673056))

(declare-fun m!6673058 () Bool)

(assert (=> b!5719654 m!6673058))

(declare-fun m!6673060 () Bool)

(assert (=> b!5719653 m!6673060))

(assert (=> b!5719154 d!1804349))

(declare-fun d!1804357 () Bool)

(assert (=> d!1804357 (= (get!21832 lt!2277832) (v!51778 lt!2277832))))

(assert (=> b!5719154 d!1804357))

(declare-fun b!5719656 () Bool)

(declare-fun e!3517295 () (InoxSet Context!10198))

(declare-fun call!436897 () (InoxSet Context!10198))

(assert (=> b!5719656 (= e!3517295 ((_ map or) call!436897 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343))))))) (h!69768 s!2326))))))

(declare-fun b!5719657 () Bool)

(declare-fun e!3517294 () (InoxSet Context!10198))

(assert (=> b!5719657 (= e!3517295 e!3517294)))

(declare-fun c!1008651 () Bool)

(assert (=> b!5719657 (= c!1008651 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun d!1804359 () Bool)

(declare-fun c!1008652 () Bool)

(declare-fun e!3517293 () Bool)

(assert (=> d!1804359 (= c!1008652 e!3517293)))

(declare-fun res!2414870 () Bool)

(assert (=> d!1804359 (=> (not res!2414870) (not e!3517293))))

(assert (=> d!1804359 (= res!2414870 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))))))))

(assert (=> d!1804359 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))) (h!69768 s!2326)) e!3517295)))

(declare-fun b!5719660 () Bool)

(assert (=> b!5719660 (= e!3517294 call!436897)))

(declare-fun b!5719661 () Bool)

(assert (=> b!5719661 (= e!3517294 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436892 () Bool)

(assert (=> bm!436892 (= call!436897 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343)))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343))))))) (h!69768 s!2326)))))

(declare-fun b!5719662 () Bool)

(assert (=> b!5719662 (= e!3517293 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (h!69770 zl!343))))))))))

(assert (= (and d!1804359 res!2414870) b!5719662))

(assert (= (and d!1804359 c!1008652) b!5719656))

(assert (= (and d!1804359 (not c!1008652)) b!5719657))

(assert (= (and b!5719657 c!1008651) b!5719660))

(assert (= (and b!5719657 (not c!1008651)) b!5719661))

(assert (= (or b!5719656 b!5719660) bm!436892))

(declare-fun m!6673062 () Bool)

(assert (=> b!5719656 m!6673062))

(declare-fun m!6673064 () Bool)

(assert (=> bm!436892 m!6673064))

(declare-fun m!6673066 () Bool)

(assert (=> b!5719662 m!6673066))

(assert (=> b!5718978 d!1804359))

(declare-fun d!1804361 () Bool)

(assert (=> d!1804361 (= (nullable!5747 lt!2277714) (nullableFct!1811 lt!2277714))))

(declare-fun bs!1337065 () Bool)

(assert (= bs!1337065 d!1804361))

(declare-fun m!6673068 () Bool)

(assert (=> bs!1337065 m!6673068))

(assert (=> b!5719075 d!1804361))

(declare-fun d!1804363 () Bool)

(assert (=> d!1804363 (= (isEmptyLang!1234 lt!2277808) ((_ is EmptyLang!15715) lt!2277808))))

(assert (=> b!5719034 d!1804363))

(assert (=> d!1804025 d!1804299))

(assert (=> d!1804087 d!1804083))

(declare-fun d!1804365 () Bool)

(assert (=> d!1804365 (= (flatMap!1328 lt!2277730 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277710))))

(assert (=> d!1804365 true))

(declare-fun _$13!2395 () Unit!156392)

(assert (=> d!1804365 (= (choose!43241 lt!2277730 lt!2277710 lambda!308953) _$13!2395)))

(declare-fun b_lambda!216109 () Bool)

(assert (=> (not b_lambda!216109) (not d!1804365)))

(declare-fun bs!1337066 () Bool)

(assert (= bs!1337066 d!1804365))

(assert (=> bs!1337066 m!6672054))

(assert (=> bs!1337066 m!6672512))

(assert (=> d!1804087 d!1804365))

(assert (=> b!5719043 d!1804119))

(declare-fun bs!1337067 () Bool)

(declare-fun d!1804367 () Bool)

(assert (= bs!1337067 (and d!1804367 d!1803977)))

(declare-fun lambda!309052 () Int)

(assert (=> bs!1337067 (= lambda!309052 lambda!308976)))

(declare-fun bs!1337068 () Bool)

(assert (= bs!1337068 (and d!1804367 d!1804343)))

(assert (=> bs!1337068 (= lambda!309052 lambda!309049)))

(declare-fun bs!1337069 () Bool)

(assert (= bs!1337069 (and d!1804367 d!1804077)))

(assert (=> bs!1337069 (= lambda!309052 lambda!308999)))

(declare-fun bs!1337070 () Bool)

(assert (= bs!1337070 (and d!1804367 d!1804079)))

(assert (=> bs!1337070 (= lambda!309052 lambda!309002)))

(declare-fun bs!1337071 () Bool)

(assert (= bs!1337071 (and d!1804367 d!1804119)))

(assert (=> bs!1337071 (= lambda!309052 lambda!309010)))

(declare-fun bs!1337072 () Bool)

(assert (= bs!1337072 (and d!1804367 d!1803987)))

(assert (=> bs!1337072 (= lambda!309052 lambda!308981)))

(declare-fun lt!2277857 () List!63445)

(assert (=> d!1804367 (forall!14850 lt!2277857 lambda!309052)))

(declare-fun e!3517296 () List!63445)

(assert (=> d!1804367 (= lt!2277857 e!3517296)))

(declare-fun c!1008653 () Bool)

(assert (=> d!1804367 (= c!1008653 ((_ is Cons!63322) (t!376768 zl!343)))))

(assert (=> d!1804367 (= (unfocusZipperList!1143 (t!376768 zl!343)) lt!2277857)))

(declare-fun b!5719665 () Bool)

(assert (=> b!5719665 (= e!3517296 (Cons!63321 (generalisedConcat!1330 (exprs!5599 (h!69770 (t!376768 zl!343)))) (unfocusZipperList!1143 (t!376768 (t!376768 zl!343)))))))

(declare-fun b!5719666 () Bool)

(assert (=> b!5719666 (= e!3517296 Nil!63321)))

(assert (= (and d!1804367 c!1008653) b!5719665))

(assert (= (and d!1804367 (not c!1008653)) b!5719666))

(declare-fun m!6673070 () Bool)

(assert (=> d!1804367 m!6673070))

(declare-fun m!6673072 () Bool)

(assert (=> b!5719665 m!6673072))

(declare-fun m!6673074 () Bool)

(assert (=> b!5719665 m!6673074))

(assert (=> b!5719043 d!1804367))

(declare-fun d!1804369 () Bool)

(declare-fun res!2414877 () Bool)

(declare-fun e!3517299 () Bool)

(assert (=> d!1804369 (=> res!2414877 e!3517299)))

(assert (=> d!1804369 (= res!2414877 ((_ is Nil!63321) lt!2277811))))

(assert (=> d!1804369 (= (forall!14850 lt!2277811 lambda!309002) e!3517299)))

(declare-fun b!5719671 () Bool)

(declare-fun e!3517300 () Bool)

(assert (=> b!5719671 (= e!3517299 e!3517300)))

(declare-fun res!2414878 () Bool)

(assert (=> b!5719671 (=> (not res!2414878) (not e!3517300))))

(assert (=> b!5719671 (= res!2414878 (dynLambda!24777 lambda!309002 (h!69769 lt!2277811)))))

(declare-fun b!5719672 () Bool)

(assert (=> b!5719672 (= e!3517300 (forall!14850 (t!376767 lt!2277811) lambda!309002))))

(assert (= (and d!1804369 (not res!2414877)) b!5719671))

(assert (= (and b!5719671 res!2414878) b!5719672))

(declare-fun b_lambda!216111 () Bool)

(assert (=> (not b_lambda!216111) (not b!5719671)))

(declare-fun m!6673076 () Bool)

(assert (=> b!5719671 m!6673076))

(declare-fun m!6673078 () Bool)

(assert (=> b!5719672 m!6673078))

(assert (=> d!1804079 d!1804369))

(declare-fun d!1804371 () Bool)

(assert (=> d!1804371 (= (isEmpty!35194 (tail!11206 (unfocusZipperList!1143 zl!343))) ((_ is Nil!63321) (tail!11206 (unfocusZipperList!1143 zl!343))))))

(assert (=> b!5719038 d!1804371))

(declare-fun d!1804373 () Bool)

(assert (=> d!1804373 (= (tail!11206 (unfocusZipperList!1143 zl!343)) (t!376767 (unfocusZipperList!1143 zl!343)))))

(assert (=> b!5719038 d!1804373))

(assert (=> b!5718589 d!1804217))

(declare-fun d!1804375 () Bool)

(assert (=> d!1804375 true))

(declare-fun setRes!38318 () Bool)

(assert (=> d!1804375 setRes!38318))

(declare-fun condSetEmpty!38318 () Bool)

(declare-fun res!2414881 () (InoxSet Context!10198))

(assert (=> d!1804375 (= condSetEmpty!38318 (= res!2414881 ((as const (Array Context!10198 Bool)) false)))))

(assert (=> d!1804375 (= (choose!43242 lt!2277718 lambda!308953) res!2414881)))

(declare-fun setIsEmpty!38318 () Bool)

(assert (=> setIsEmpty!38318 setRes!38318))

(declare-fun setElem!38318 () Context!10198)

(declare-fun e!3517303 () Bool)

(declare-fun setNonEmpty!38318 () Bool)

(declare-fun tp!1584058 () Bool)

(assert (=> setNonEmpty!38318 (= setRes!38318 (and tp!1584058 (inv!82534 setElem!38318) e!3517303))))

(declare-fun setRest!38318 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38318 (= res!2414881 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38318 true) setRest!38318))))

(declare-fun b!5719675 () Bool)

(declare-fun tp!1584057 () Bool)

(assert (=> b!5719675 (= e!3517303 tp!1584057)))

(assert (= (and d!1804375 condSetEmpty!38318) setIsEmpty!38318))

(assert (= (and d!1804375 (not condSetEmpty!38318)) setNonEmpty!38318))

(assert (= setNonEmpty!38318 b!5719675))

(declare-fun m!6673080 () Bool)

(assert (=> setNonEmpty!38318 m!6673080))

(assert (=> d!1804107 d!1804375))

(declare-fun d!1804377 () Bool)

(declare-fun c!1008654 () Bool)

(assert (=> d!1804377 (= c!1008654 (isEmpty!35197 (tail!11204 (t!376766 s!2326))))))

(declare-fun e!3517304 () Bool)

(assert (=> d!1804377 (= (matchZipper!1853 (derivationStepZipper!1798 ((_ map or) lt!2277712 lt!2277735) (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))) e!3517304)))

(declare-fun b!5719676 () Bool)

(assert (=> b!5719676 (= e!3517304 (nullableZipper!1665 (derivationStepZipper!1798 ((_ map or) lt!2277712 lt!2277735) (head!12109 (t!376766 s!2326)))))))

(declare-fun b!5719677 () Bool)

(assert (=> b!5719677 (= e!3517304 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 ((_ map or) lt!2277712 lt!2277735) (head!12109 (t!376766 s!2326))) (head!12109 (tail!11204 (t!376766 s!2326)))) (tail!11204 (tail!11204 (t!376766 s!2326)))))))

(assert (= (and d!1804377 c!1008654) b!5719676))

(assert (= (and d!1804377 (not c!1008654)) b!5719677))

(assert (=> d!1804377 m!6672232))

(assert (=> d!1804377 m!6672824))

(assert (=> b!5719676 m!6672328))

(declare-fun m!6673082 () Bool)

(assert (=> b!5719676 m!6673082))

(assert (=> b!5719677 m!6672232))

(assert (=> b!5719677 m!6672828))

(assert (=> b!5719677 m!6672328))

(assert (=> b!5719677 m!6672828))

(declare-fun m!6673084 () Bool)

(assert (=> b!5719677 m!6673084))

(assert (=> b!5719677 m!6672232))

(assert (=> b!5719677 m!6672832))

(assert (=> b!5719677 m!6673084))

(assert (=> b!5719677 m!6672832))

(declare-fun m!6673086 () Bool)

(assert (=> b!5719677 m!6673086))

(assert (=> b!5718769 d!1804377))

(declare-fun bs!1337087 () Bool)

(declare-fun d!1804379 () Bool)

(assert (= bs!1337087 (and d!1804379 b!5718391)))

(declare-fun lambda!309057 () Int)

(assert (=> bs!1337087 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309057 lambda!308953))))

(declare-fun bs!1337088 () Bool)

(assert (= bs!1337088 (and d!1804379 d!1804089)))

(assert (=> bs!1337088 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309057 lambda!309005))))

(declare-fun bs!1337089 () Bool)

(assert (= bs!1337089 (and d!1804379 d!1804231)))

(assert (=> bs!1337089 (= lambda!309057 lambda!309031)))

(assert (=> d!1804379 true))

(assert (=> d!1804379 (= (derivationStepZipper!1798 ((_ map or) lt!2277712 lt!2277735) (head!12109 (t!376766 s!2326))) (flatMap!1328 ((_ map or) lt!2277712 lt!2277735) lambda!309057))))

(declare-fun bs!1337090 () Bool)

(assert (= bs!1337090 d!1804379))

(declare-fun m!6673088 () Bool)

(assert (=> bs!1337090 m!6673088))

(assert (=> b!5718769 d!1804379))

(assert (=> b!5718769 d!1804235))

(assert (=> b!5718769 d!1804237))

(declare-fun c!1008655 () Bool)

(declare-fun c!1008656 () Bool)

(declare-fun call!436898 () Bool)

(declare-fun bm!436893 () Bool)

(assert (=> bm!436893 (= call!436898 (validRegex!7451 (ite c!1008655 (reg!16044 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))) (ite c!1008656 (regOne!31943 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))) (regOne!31942 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292))))))))))

(declare-fun b!5719678 () Bool)

(declare-fun res!2414886 () Bool)

(declare-fun e!3517308 () Bool)

(assert (=> b!5719678 (=> (not res!2414886) (not e!3517308))))

(declare-fun call!436899 () Bool)

(assert (=> b!5719678 (= res!2414886 call!436899)))

(declare-fun e!3517306 () Bool)

(assert (=> b!5719678 (= e!3517306 e!3517308)))

(declare-fun b!5719679 () Bool)

(declare-fun e!3517305 () Bool)

(declare-fun call!436900 () Bool)

(assert (=> b!5719679 (= e!3517305 call!436900)))

(declare-fun b!5719680 () Bool)

(assert (=> b!5719680 (= e!3517308 call!436900)))

(declare-fun b!5719681 () Bool)

(declare-fun e!3517309 () Bool)

(declare-fun e!3517310 () Bool)

(assert (=> b!5719681 (= e!3517309 e!3517310)))

(assert (=> b!5719681 (= c!1008655 ((_ is Star!15715) (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))

(declare-fun b!5719682 () Bool)

(declare-fun e!3517311 () Bool)

(assert (=> b!5719682 (= e!3517310 e!3517311)))

(declare-fun res!2414883 () Bool)

(assert (=> b!5719682 (= res!2414883 (not (nullable!5747 (reg!16044 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))))

(assert (=> b!5719682 (=> (not res!2414883) (not e!3517311))))

(declare-fun bm!436894 () Bool)

(assert (=> bm!436894 (= call!436899 call!436898)))

(declare-fun b!5719684 () Bool)

(declare-fun e!3517307 () Bool)

(assert (=> b!5719684 (= e!3517307 e!3517305)))

(declare-fun res!2414882 () Bool)

(assert (=> b!5719684 (=> (not res!2414882) (not e!3517305))))

(assert (=> b!5719684 (= res!2414882 call!436899)))

(declare-fun bm!436895 () Bool)

(assert (=> bm!436895 (= call!436900 (validRegex!7451 (ite c!1008656 (regTwo!31943 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))) (regTwo!31942 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))))

(declare-fun b!5719685 () Bool)

(declare-fun res!2414884 () Bool)

(assert (=> b!5719685 (=> res!2414884 e!3517307)))

(assert (=> b!5719685 (= res!2414884 (not ((_ is Concat!24560) (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292))))))))

(assert (=> b!5719685 (= e!3517306 e!3517307)))

(declare-fun b!5719686 () Bool)

(assert (=> b!5719686 (= e!3517310 e!3517306)))

(assert (=> b!5719686 (= c!1008656 ((_ is Union!15715) (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))

(declare-fun d!1804381 () Bool)

(declare-fun res!2414885 () Bool)

(assert (=> d!1804381 (=> res!2414885 e!3517309)))

(assert (=> d!1804381 (= res!2414885 ((_ is ElementMatch!15715) (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))))))

(assert (=> d!1804381 (= (validRegex!7451 (ite c!1008374 (reg!16044 r!7292) (ite c!1008375 (regOne!31943 r!7292) (regOne!31942 r!7292)))) e!3517309)))

(declare-fun b!5719683 () Bool)

(assert (=> b!5719683 (= e!3517311 call!436898)))

(assert (= (and d!1804381 (not res!2414885)) b!5719681))

(assert (= (and b!5719681 c!1008655) b!5719682))

(assert (= (and b!5719681 (not c!1008655)) b!5719686))

(assert (= (and b!5719682 res!2414883) b!5719683))

(assert (= (and b!5719686 c!1008656) b!5719678))

(assert (= (and b!5719686 (not c!1008656)) b!5719685))

(assert (= (and b!5719678 res!2414886) b!5719680))

(assert (= (and b!5719685 (not res!2414884)) b!5719684))

(assert (= (and b!5719684 res!2414882) b!5719679))

(assert (= (or b!5719680 b!5719679) bm!436895))

(assert (= (or b!5719678 b!5719684) bm!436894))

(assert (= (or b!5719683 bm!436894) bm!436893))

(declare-fun m!6673090 () Bool)

(assert (=> bm!436893 m!6673090))

(declare-fun m!6673092 () Bool)

(assert (=> b!5719682 m!6673092))

(declare-fun m!6673094 () Bool)

(assert (=> bm!436895 m!6673094))

(assert (=> bm!436720 d!1804381))

(declare-fun d!1804383 () Bool)

(assert (=> d!1804383 (= (nullable!5747 r!7292) (nullableFct!1811 r!7292))))

(declare-fun bs!1337092 () Bool)

(assert (= bs!1337092 d!1804383))

(declare-fun m!6673096 () Bool)

(assert (=> bs!1337092 m!6673096))

(assert (=> b!5718597 d!1804383))

(declare-fun d!1804385 () Bool)

(declare-fun lambda!309060 () Int)

(declare-fun exists!2225 ((InoxSet Context!10198) Int) Bool)

(assert (=> d!1804385 (= (nullableZipper!1665 lt!2277712) (exists!2225 lt!2277712 lambda!309060))))

(declare-fun bs!1337095 () Bool)

(assert (= bs!1337095 d!1804385))

(declare-fun m!6673114 () Bool)

(assert (=> bs!1337095 m!6673114))

(assert (=> b!5718766 d!1804385))

(assert (=> d!1803997 d!1804025))

(assert (=> d!1803997 d!1804023))

(declare-fun d!1804393 () Bool)

(declare-fun e!3517335 () Bool)

(assert (=> d!1804393 (= (matchZipper!1853 ((_ map or) lt!2277712 lt!2277735) (t!376766 s!2326)) e!3517335)))

(declare-fun res!2414902 () Bool)

(assert (=> d!1804393 (=> res!2414902 e!3517335)))

(assert (=> d!1804393 (= res!2414902 (matchZipper!1853 lt!2277712 (t!376766 s!2326)))))

(assert (=> d!1804393 true))

(declare-fun _$48!1350 () Unit!156392)

(assert (=> d!1804393 (= (choose!43240 lt!2277712 lt!2277735 (t!376766 s!2326)) _$48!1350)))

(declare-fun b!5719726 () Bool)

(assert (=> b!5719726 (= e!3517335 (matchZipper!1853 lt!2277735 (t!376766 s!2326)))))

(assert (= (and d!1804393 (not res!2414902)) b!5719726))

(assert (=> d!1804393 m!6671984))

(assert (=> d!1804393 m!6671982))

(assert (=> b!5719726 m!6672032))

(assert (=> d!1803997 d!1804393))

(assert (=> d!1804027 d!1804219))

(declare-fun call!436908 () (InoxSet Context!10198))

(declare-fun b!5719727 () Bool)

(declare-fun e!3517338 () (InoxSet Context!10198))

(assert (=> b!5719727 (= e!3517338 ((_ map or) call!436908 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732)))))) (h!69768 s!2326))))))

(declare-fun b!5719728 () Bool)

(declare-fun e!3517337 () (InoxSet Context!10198))

(assert (=> b!5719728 (= e!3517338 e!3517337)))

(declare-fun c!1008671 () Bool)

(assert (=> b!5719728 (= c!1008671 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732))))))))

(declare-fun d!1804401 () Bool)

(declare-fun c!1008672 () Bool)

(declare-fun e!3517336 () Bool)

(assert (=> d!1804401 (= c!1008672 e!3517336)))

(declare-fun res!2414903 () Bool)

(assert (=> d!1804401 (=> (not res!2414903) (not e!3517336))))

(assert (=> d!1804401 (= res!2414903 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732))))))))

(assert (=> d!1804401 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (h!69768 s!2326)) e!3517338)))

(declare-fun b!5719729 () Bool)

(assert (=> b!5719729 (= e!3517337 call!436908)))

(declare-fun b!5719730 () Bool)

(assert (=> b!5719730 (= e!3517337 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436903 () Bool)

(assert (=> bm!436903 (= call!436908 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732)))))) (h!69768 s!2326)))))

(declare-fun b!5719731 () Bool)

(assert (=> b!5719731 (= e!3517336 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732)))))))))

(assert (= (and d!1804401 res!2414903) b!5719731))

(assert (= (and d!1804401 c!1008672) b!5719727))

(assert (= (and d!1804401 (not c!1008672)) b!5719728))

(assert (= (and b!5719728 c!1008671) b!5719729))

(assert (= (and b!5719728 (not c!1008671)) b!5719730))

(assert (= (or b!5719727 b!5719729) bm!436903))

(declare-fun m!6673152 () Bool)

(assert (=> b!5719727 m!6673152))

(declare-fun m!6673154 () Bool)

(assert (=> bm!436903 m!6673154))

(declare-fun m!6673156 () Bool)

(assert (=> b!5719731 m!6673156))

(assert (=> b!5719057 d!1804401))

(declare-fun b!5719732 () Bool)

(declare-fun c!1008675 () Bool)

(declare-fun e!3517343 () Bool)

(assert (=> b!5719732 (= c!1008675 e!3517343)))

(declare-fun res!2414904 () Bool)

(assert (=> b!5719732 (=> (not res!2414904) (not e!3517343))))

(assert (=> b!5719732 (= res!2414904 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277713))))))

(declare-fun e!3517341 () (InoxSet Context!10198))

(declare-fun e!3517344 () (InoxSet Context!10198))

(assert (=> b!5719732 (= e!3517341 e!3517344)))

(declare-fun call!436914 () List!63445)

(declare-fun c!1008673 () Bool)

(declare-fun bm!436904 () Bool)

(declare-fun c!1008674 () Bool)

(declare-fun call!436912 () (InoxSet Context!10198))

(assert (=> bm!436904 (= call!436912 (derivationStepZipperDown!1057 (ite c!1008674 (regOne!31943 (h!69769 (exprs!5599 lt!2277713))) (ite c!1008675 (regTwo!31942 (h!69769 (exprs!5599 lt!2277713))) (ite c!1008673 (regOne!31942 (h!69769 (exprs!5599 lt!2277713))) (reg!16044 (h!69769 (exprs!5599 lt!2277713)))))) (ite (or c!1008674 c!1008675) (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (Context!10199 call!436914)) (h!69768 s!2326)))))

(declare-fun call!436910 () (InoxSet Context!10198))

(declare-fun call!436909 () List!63445)

(declare-fun bm!436905 () Bool)

(assert (=> bm!436905 (= call!436910 (derivationStepZipperDown!1057 (ite c!1008674 (regTwo!31943 (h!69769 (exprs!5599 lt!2277713))) (regOne!31942 (h!69769 (exprs!5599 lt!2277713)))) (ite c!1008674 (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (Context!10199 call!436909)) (h!69768 s!2326)))))

(declare-fun bm!436906 () Bool)

(declare-fun call!436913 () (InoxSet Context!10198))

(assert (=> bm!436906 (= call!436913 call!436912)))

(declare-fun b!5719733 () Bool)

(declare-fun e!3517342 () (InoxSet Context!10198))

(declare-fun call!436911 () (InoxSet Context!10198))

(assert (=> b!5719733 (= e!3517342 call!436911)))

(declare-fun b!5719734 () Bool)

(declare-fun e!3517340 () (InoxSet Context!10198))

(assert (=> b!5719734 (= e!3517340 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 lt!2277713))) true))))

(declare-fun b!5719735 () Bool)

(assert (=> b!5719735 (= e!3517340 e!3517341)))

(assert (=> b!5719735 (= c!1008674 ((_ is Union!15715) (h!69769 (exprs!5599 lt!2277713))))))

(declare-fun b!5719736 () Bool)

(assert (=> b!5719736 (= e!3517344 ((_ map or) call!436910 call!436913))))

(declare-fun b!5719737 () Bool)

(assert (=> b!5719737 (= e!3517343 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 lt!2277713)))))))

(declare-fun b!5719738 () Bool)

(declare-fun e!3517339 () (InoxSet Context!10198))

(assert (=> b!5719738 (= e!3517339 call!436911)))

(declare-fun b!5719739 () Bool)

(assert (=> b!5719739 (= e!3517341 ((_ map or) call!436912 call!436910))))

(declare-fun b!5719740 () Bool)

(assert (=> b!5719740 (= e!3517339 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719741 () Bool)

(declare-fun c!1008676 () Bool)

(assert (=> b!5719741 (= c!1008676 ((_ is Star!15715) (h!69769 (exprs!5599 lt!2277713))))))

(assert (=> b!5719741 (= e!3517342 e!3517339)))

(declare-fun d!1804405 () Bool)

(declare-fun c!1008677 () Bool)

(assert (=> d!1804405 (= c!1008677 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 lt!2277713))) (= (c!1008289 (h!69769 (exprs!5599 lt!2277713))) (h!69768 s!2326))))))

(assert (=> d!1804405 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277713)) (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (h!69768 s!2326)) e!3517340)))

(declare-fun bm!436907 () Bool)

(assert (=> bm!436907 (= call!436909 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713)))) (ite (or c!1008675 c!1008673) (regTwo!31942 (h!69769 (exprs!5599 lt!2277713))) (h!69769 (exprs!5599 lt!2277713)))))))

(declare-fun bm!436908 () Bool)

(assert (=> bm!436908 (= call!436914 call!436909)))

(declare-fun bm!436909 () Bool)

(assert (=> bm!436909 (= call!436911 call!436913)))

(declare-fun b!5719742 () Bool)

(assert (=> b!5719742 (= e!3517344 e!3517342)))

(assert (=> b!5719742 (= c!1008673 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277713))))))

(assert (= (and d!1804405 c!1008677) b!5719734))

(assert (= (and d!1804405 (not c!1008677)) b!5719735))

(assert (= (and b!5719735 c!1008674) b!5719739))

(assert (= (and b!5719735 (not c!1008674)) b!5719732))

(assert (= (and b!5719732 res!2414904) b!5719737))

(assert (= (and b!5719732 c!1008675) b!5719736))

(assert (= (and b!5719732 (not c!1008675)) b!5719742))

(assert (= (and b!5719742 c!1008673) b!5719733))

(assert (= (and b!5719742 (not c!1008673)) b!5719741))

(assert (= (and b!5719741 c!1008676) b!5719738))

(assert (= (and b!5719741 (not c!1008676)) b!5719740))

(assert (= (or b!5719733 b!5719738) bm!436908))

(assert (= (or b!5719733 b!5719738) bm!436909))

(assert (= (or b!5719736 bm!436908) bm!436907))

(assert (= (or b!5719736 bm!436909) bm!436906))

(assert (= (or b!5719739 b!5719736) bm!436905))

(assert (= (or b!5719739 bm!436906) bm!436904))

(declare-fun m!6673160 () Bool)

(assert (=> bm!436904 m!6673160))

(declare-fun m!6673162 () Bool)

(assert (=> b!5719734 m!6673162))

(declare-fun m!6673164 () Bool)

(assert (=> bm!436907 m!6673164))

(declare-fun m!6673166 () Bool)

(assert (=> b!5719737 m!6673166))

(declare-fun m!6673168 () Bool)

(assert (=> bm!436905 m!6673168))

(assert (=> bm!436769 d!1804405))

(declare-fun b!5719750 () Bool)

(declare-fun call!436917 () (InoxSet Context!10198))

(declare-fun e!3517353 () (InoxSet Context!10198))

(assert (=> b!5719750 (= e!3517353 ((_ map or) call!436917 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713)))))) (h!69768 s!2326))))))

(declare-fun b!5719751 () Bool)

(declare-fun e!3517352 () (InoxSet Context!10198))

(assert (=> b!5719751 (= e!3517353 e!3517352)))

(declare-fun c!1008679 () Bool)

(assert (=> b!5719751 (= c!1008679 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713))))))))

(declare-fun d!1804409 () Bool)

(declare-fun c!1008680 () Bool)

(declare-fun e!3517351 () Bool)

(assert (=> d!1804409 (= c!1008680 e!3517351)))

(declare-fun res!2414910 () Bool)

(assert (=> d!1804409 (=> (not res!2414910) (not e!3517351))))

(assert (=> d!1804409 (= res!2414910 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713))))))))

(assert (=> d!1804409 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277713))) (h!69768 s!2326)) e!3517353)))

(declare-fun b!5719752 () Bool)

(assert (=> b!5719752 (= e!3517352 call!436917)))

(declare-fun b!5719753 () Bool)

(assert (=> b!5719753 (= e!3517352 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436912 () Bool)

(assert (=> bm!436912 (= call!436917 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713)))))) (h!69768 s!2326)))))

(declare-fun b!5719754 () Bool)

(assert (=> b!5719754 (= e!3517351 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277713)))))))))

(assert (= (and d!1804409 res!2414910) b!5719754))

(assert (= (and d!1804409 c!1008680) b!5719750))

(assert (= (and d!1804409 (not c!1008680)) b!5719751))

(assert (= (and b!5719751 c!1008679) b!5719752))

(assert (= (and b!5719751 (not c!1008679)) b!5719753))

(assert (= (or b!5719750 b!5719752) bm!436912))

(declare-fun m!6673174 () Bool)

(assert (=> b!5719750 m!6673174))

(declare-fun m!6673176 () Bool)

(assert (=> bm!436912 m!6673176))

(declare-fun m!6673178 () Bool)

(assert (=> b!5719754 m!6673178))

(assert (=> b!5719052 d!1804409))

(assert (=> bs!1336909 d!1804085))

(declare-fun d!1804413 () Bool)

(assert (=> d!1804413 (= (isEmpty!35198 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326)) (not ((_ is Some!15723) (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326))))))

(assert (=> d!1804127 d!1804413))

(declare-fun d!1804415 () Bool)

(assert (=> d!1804415 (= (nullable!5747 (regOne!31942 (reg!16044 (regOne!31942 r!7292)))) (nullableFct!1811 (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))))

(declare-fun bs!1337116 () Bool)

(assert (= bs!1337116 d!1804415))

(declare-fun m!6673180 () Bool)

(assert (=> bs!1337116 m!6673180))

(assert (=> b!5719095 d!1804415))

(assert (=> d!1804129 d!1804121))

(declare-fun d!1804417 () Bool)

(assert (=> d!1804417 (= (Exists!2815 lambda!309019) (choose!43245 lambda!309019))))

(declare-fun bs!1337119 () Bool)

(assert (= bs!1337119 d!1804417))

(declare-fun m!6673182 () Bool)

(assert (=> bs!1337119 m!6673182))

(assert (=> d!1804129 d!1804417))

(assert (=> d!1804129 d!1804339))

(assert (=> d!1804129 d!1804127))

(declare-fun bs!1337149 () Bool)

(declare-fun d!1804419 () Bool)

(assert (= bs!1337149 (and d!1804419 d!1804129)))

(declare-fun lambda!309067 () Int)

(assert (=> bs!1337149 (= lambda!309067 lambda!309019)))

(declare-fun bs!1337150 () Bool)

(assert (= bs!1337150 (and d!1804419 b!5718386)))

(assert (=> bs!1337150 (not (= lambda!309067 lambda!308952))))

(assert (=> bs!1337150 (= lambda!309067 lambda!308951)))

(declare-fun bs!1337151 () Bool)

(assert (= bs!1337151 (and d!1804419 b!5718490)))

(assert (=> bs!1337151 (not (= lambda!309067 lambda!308968))))

(declare-fun bs!1337152 () Bool)

(assert (= bs!1337152 (and d!1804419 d!1804319)))

(assert (=> bs!1337152 (not (= lambda!309067 lambda!309048))))

(declare-fun bs!1337153 () Bool)

(assert (= bs!1337153 (and d!1804419 b!5719082)))

(assert (=> bs!1337153 (not (= lambda!309067 lambda!309007))))

(declare-fun bs!1337154 () Bool)

(assert (= bs!1337154 (and d!1804419 b!5719084)))

(assert (=> bs!1337154 (not (= lambda!309067 lambda!309006))))

(declare-fun bs!1337155 () Bool)

(assert (= bs!1337155 (and d!1804419 b!5718492)))

(assert (=> bs!1337155 (not (= lambda!309067 lambda!308967))))

(declare-fun bs!1337156 () Bool)

(assert (= bs!1337156 (and d!1804419 d!1804125)))

(assert (=> bs!1337156 (not (= lambda!309067 lambda!309016))))

(assert (=> bs!1337152 (= lambda!309067 lambda!309047)))

(assert (=> bs!1337156 (= lambda!309067 lambda!309015)))

(assert (=> d!1804419 true))

(assert (=> d!1804419 true))

(assert (=> d!1804419 true))

(assert (=> d!1804419 (= (isDefined!12427 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) Nil!63320 s!2326 s!2326)) (Exists!2815 lambda!309067))))

(assert (=> d!1804419 true))

(declare-fun _$89!1847 () Unit!156392)

(assert (=> d!1804419 (= (choose!43247 (regOne!31942 r!7292) (regTwo!31942 r!7292) s!2326) _$89!1847)))

(declare-fun bs!1337157 () Bool)

(assert (= bs!1337157 d!1804419))

(assert (=> bs!1337157 m!6672038))

(assert (=> bs!1337157 m!6672038))

(assert (=> bs!1337157 m!6672040))

(declare-fun m!6673194 () Bool)

(assert (=> bs!1337157 m!6673194))

(assert (=> d!1804129 d!1804419))

(declare-fun c!1008686 () Bool)

(declare-fun bm!436915 () Bool)

(declare-fun call!436920 () Bool)

(declare-fun c!1008685 () Bool)

(assert (=> bm!436915 (= call!436920 (validRegex!7451 (ite c!1008685 (reg!16044 lt!2277813) (ite c!1008686 (regOne!31943 lt!2277813) (regOne!31942 lt!2277813)))))))

(declare-fun b!5719770 () Bool)

(declare-fun res!2414922 () Bool)

(declare-fun e!3517366 () Bool)

(assert (=> b!5719770 (=> (not res!2414922) (not e!3517366))))

(declare-fun call!436921 () Bool)

(assert (=> b!5719770 (= res!2414922 call!436921)))

(declare-fun e!3517364 () Bool)

(assert (=> b!5719770 (= e!3517364 e!3517366)))

(declare-fun b!5719771 () Bool)

(declare-fun e!3517363 () Bool)

(declare-fun call!436922 () Bool)

(assert (=> b!5719771 (= e!3517363 call!436922)))

(declare-fun b!5719772 () Bool)

(assert (=> b!5719772 (= e!3517366 call!436922)))

(declare-fun b!5719773 () Bool)

(declare-fun e!3517367 () Bool)

(declare-fun e!3517368 () Bool)

(assert (=> b!5719773 (= e!3517367 e!3517368)))

(assert (=> b!5719773 (= c!1008685 ((_ is Star!15715) lt!2277813))))

(declare-fun b!5719774 () Bool)

(declare-fun e!3517369 () Bool)

(assert (=> b!5719774 (= e!3517368 e!3517369)))

(declare-fun res!2414919 () Bool)

(assert (=> b!5719774 (= res!2414919 (not (nullable!5747 (reg!16044 lt!2277813))))))

(assert (=> b!5719774 (=> (not res!2414919) (not e!3517369))))

(declare-fun bm!436916 () Bool)

(assert (=> bm!436916 (= call!436921 call!436920)))

(declare-fun b!5719776 () Bool)

(declare-fun e!3517365 () Bool)

(assert (=> b!5719776 (= e!3517365 e!3517363)))

(declare-fun res!2414918 () Bool)

(assert (=> b!5719776 (=> (not res!2414918) (not e!3517363))))

(assert (=> b!5719776 (= res!2414918 call!436921)))

(declare-fun bm!436917 () Bool)

(assert (=> bm!436917 (= call!436922 (validRegex!7451 (ite c!1008686 (regTwo!31943 lt!2277813) (regTwo!31942 lt!2277813))))))

(declare-fun b!5719777 () Bool)

(declare-fun res!2414920 () Bool)

(assert (=> b!5719777 (=> res!2414920 e!3517365)))

(assert (=> b!5719777 (= res!2414920 (not ((_ is Concat!24560) lt!2277813)))))

(assert (=> b!5719777 (= e!3517364 e!3517365)))

(declare-fun b!5719778 () Bool)

(assert (=> b!5719778 (= e!3517368 e!3517364)))

(assert (=> b!5719778 (= c!1008686 ((_ is Union!15715) lt!2277813))))

(declare-fun d!1804427 () Bool)

(declare-fun res!2414921 () Bool)

(assert (=> d!1804427 (=> res!2414921 e!3517367)))

(assert (=> d!1804427 (= res!2414921 ((_ is ElementMatch!15715) lt!2277813))))

(assert (=> d!1804427 (= (validRegex!7451 lt!2277813) e!3517367)))

(declare-fun b!5719775 () Bool)

(assert (=> b!5719775 (= e!3517369 call!436920)))

(assert (= (and d!1804427 (not res!2414921)) b!5719773))

(assert (= (and b!5719773 c!1008685) b!5719774))

(assert (= (and b!5719773 (not c!1008685)) b!5719778))

(assert (= (and b!5719774 res!2414919) b!5719775))

(assert (= (and b!5719778 c!1008686) b!5719770))

(assert (= (and b!5719778 (not c!1008686)) b!5719777))

(assert (= (and b!5719770 res!2414922) b!5719772))

(assert (= (and b!5719777 (not res!2414920)) b!5719776))

(assert (= (and b!5719776 res!2414918) b!5719771))

(assert (= (or b!5719772 b!5719771) bm!436917))

(assert (= (or b!5719770 b!5719776) bm!436916))

(assert (= (or b!5719775 bm!436916) bm!436915))

(declare-fun m!6673196 () Bool)

(assert (=> bm!436915 m!6673196))

(declare-fun m!6673198 () Bool)

(assert (=> b!5719774 m!6673198))

(declare-fun m!6673200 () Bool)

(assert (=> bm!436917 m!6673200))

(assert (=> d!1804091 d!1804427))

(assert (=> d!1804091 d!1804077))

(assert (=> d!1804091 d!1804079))

(assert (=> d!1804115 d!1804111))

(assert (=> d!1804115 d!1804113))

(declare-fun d!1804429 () Bool)

(assert (=> d!1804429 (= (matchR!7900 lt!2277714 s!2326) (matchRSpec!2818 lt!2277714 s!2326))))

(assert (=> d!1804429 true))

(declare-fun _$88!4018 () Unit!156392)

(assert (=> d!1804429 (= (choose!43239 lt!2277714 s!2326) _$88!4018)))

(declare-fun bs!1337163 () Bool)

(assert (= bs!1337163 d!1804429))

(assert (=> bs!1337163 m!6671990))

(assert (=> bs!1337163 m!6671992))

(assert (=> d!1804115 d!1804429))

(declare-fun c!1008694 () Bool)

(declare-fun call!436926 () Bool)

(declare-fun bm!436921 () Bool)

(declare-fun c!1008693 () Bool)

(assert (=> bm!436921 (= call!436926 (validRegex!7451 (ite c!1008693 (reg!16044 lt!2277714) (ite c!1008694 (regOne!31943 lt!2277714) (regOne!31942 lt!2277714)))))))

(declare-fun b!5719801 () Bool)

(declare-fun res!2414937 () Bool)

(declare-fun e!3517389 () Bool)

(assert (=> b!5719801 (=> (not res!2414937) (not e!3517389))))

(declare-fun call!436927 () Bool)

(assert (=> b!5719801 (= res!2414937 call!436927)))

(declare-fun e!3517387 () Bool)

(assert (=> b!5719801 (= e!3517387 e!3517389)))

(declare-fun b!5719802 () Bool)

(declare-fun e!3517386 () Bool)

(declare-fun call!436928 () Bool)

(assert (=> b!5719802 (= e!3517386 call!436928)))

(declare-fun b!5719803 () Bool)

(assert (=> b!5719803 (= e!3517389 call!436928)))

(declare-fun b!5719804 () Bool)

(declare-fun e!3517390 () Bool)

(declare-fun e!3517391 () Bool)

(assert (=> b!5719804 (= e!3517390 e!3517391)))

(assert (=> b!5719804 (= c!1008693 ((_ is Star!15715) lt!2277714))))

(declare-fun b!5719805 () Bool)

(declare-fun e!3517392 () Bool)

(assert (=> b!5719805 (= e!3517391 e!3517392)))

(declare-fun res!2414934 () Bool)

(assert (=> b!5719805 (= res!2414934 (not (nullable!5747 (reg!16044 lt!2277714))))))

(assert (=> b!5719805 (=> (not res!2414934) (not e!3517392))))

(declare-fun bm!436922 () Bool)

(assert (=> bm!436922 (= call!436927 call!436926)))

(declare-fun b!5719807 () Bool)

(declare-fun e!3517388 () Bool)

(assert (=> b!5719807 (= e!3517388 e!3517386)))

(declare-fun res!2414933 () Bool)

(assert (=> b!5719807 (=> (not res!2414933) (not e!3517386))))

(assert (=> b!5719807 (= res!2414933 call!436927)))

(declare-fun bm!436923 () Bool)

(assert (=> bm!436923 (= call!436928 (validRegex!7451 (ite c!1008694 (regTwo!31943 lt!2277714) (regTwo!31942 lt!2277714))))))

(declare-fun b!5719808 () Bool)

(declare-fun res!2414935 () Bool)

(assert (=> b!5719808 (=> res!2414935 e!3517388)))

(assert (=> b!5719808 (= res!2414935 (not ((_ is Concat!24560) lt!2277714)))))

(assert (=> b!5719808 (= e!3517387 e!3517388)))

(declare-fun b!5719809 () Bool)

(assert (=> b!5719809 (= e!3517391 e!3517387)))

(assert (=> b!5719809 (= c!1008694 ((_ is Union!15715) lt!2277714))))

(declare-fun d!1804437 () Bool)

(declare-fun res!2414936 () Bool)

(assert (=> d!1804437 (=> res!2414936 e!3517390)))

(assert (=> d!1804437 (= res!2414936 ((_ is ElementMatch!15715) lt!2277714))))

(assert (=> d!1804437 (= (validRegex!7451 lt!2277714) e!3517390)))

(declare-fun b!5719806 () Bool)

(assert (=> b!5719806 (= e!3517392 call!436926)))

(assert (= (and d!1804437 (not res!2414936)) b!5719804))

(assert (= (and b!5719804 c!1008693) b!5719805))

(assert (= (and b!5719804 (not c!1008693)) b!5719809))

(assert (= (and b!5719805 res!2414934) b!5719806))

(assert (= (and b!5719809 c!1008694) b!5719801))

(assert (= (and b!5719809 (not c!1008694)) b!5719808))

(assert (= (and b!5719801 res!2414937) b!5719803))

(assert (= (and b!5719808 (not res!2414935)) b!5719807))

(assert (= (and b!5719807 res!2414933) b!5719802))

(assert (= (or b!5719803 b!5719802) bm!436923))

(assert (= (or b!5719801 b!5719807) bm!436922))

(assert (= (or b!5719806 bm!436922) bm!436921))

(declare-fun m!6673210 () Bool)

(assert (=> bm!436921 m!6673210))

(declare-fun m!6673212 () Bool)

(assert (=> b!5719805 m!6673212))

(declare-fun m!6673214 () Bool)

(assert (=> bm!436923 m!6673214))

(assert (=> d!1804115 d!1804437))

(declare-fun b!5719810 () Bool)

(declare-fun c!1008697 () Bool)

(declare-fun e!3517397 () Bool)

(assert (=> b!5719810 (= c!1008697 e!3517397)))

(declare-fun res!2414938 () Bool)

(assert (=> b!5719810 (=> (not res!2414938) (not e!3517397))))

(assert (=> b!5719810 (= res!2414938 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277710))))))

(declare-fun e!3517395 () (InoxSet Context!10198))

(declare-fun e!3517398 () (InoxSet Context!10198))

(assert (=> b!5719810 (= e!3517395 e!3517398)))

(declare-fun bm!436924 () Bool)

(declare-fun c!1008696 () Bool)

(declare-fun c!1008695 () Bool)

(declare-fun call!436932 () (InoxSet Context!10198))

(declare-fun call!436934 () List!63445)

(assert (=> bm!436924 (= call!436932 (derivationStepZipperDown!1057 (ite c!1008696 (regOne!31943 (h!69769 (exprs!5599 lt!2277710))) (ite c!1008697 (regTwo!31942 (h!69769 (exprs!5599 lt!2277710))) (ite c!1008695 (regOne!31942 (h!69769 (exprs!5599 lt!2277710))) (reg!16044 (h!69769 (exprs!5599 lt!2277710)))))) (ite (or c!1008696 c!1008697) (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (Context!10199 call!436934)) (h!69768 s!2326)))))

(declare-fun call!436930 () (InoxSet Context!10198))

(declare-fun bm!436925 () Bool)

(declare-fun call!436929 () List!63445)

(assert (=> bm!436925 (= call!436930 (derivationStepZipperDown!1057 (ite c!1008696 (regTwo!31943 (h!69769 (exprs!5599 lt!2277710))) (regOne!31942 (h!69769 (exprs!5599 lt!2277710)))) (ite c!1008696 (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (Context!10199 call!436929)) (h!69768 s!2326)))))

(declare-fun bm!436926 () Bool)

(declare-fun call!436933 () (InoxSet Context!10198))

(assert (=> bm!436926 (= call!436933 call!436932)))

(declare-fun b!5719811 () Bool)

(declare-fun e!3517396 () (InoxSet Context!10198))

(declare-fun call!436931 () (InoxSet Context!10198))

(assert (=> b!5719811 (= e!3517396 call!436931)))

(declare-fun b!5719812 () Bool)

(declare-fun e!3517394 () (InoxSet Context!10198))

(assert (=> b!5719812 (= e!3517394 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 lt!2277710))) true))))

(declare-fun b!5719813 () Bool)

(assert (=> b!5719813 (= e!3517394 e!3517395)))

(assert (=> b!5719813 (= c!1008696 ((_ is Union!15715) (h!69769 (exprs!5599 lt!2277710))))))

(declare-fun b!5719814 () Bool)

(assert (=> b!5719814 (= e!3517398 ((_ map or) call!436930 call!436933))))

(declare-fun b!5719815 () Bool)

(assert (=> b!5719815 (= e!3517397 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 lt!2277710)))))))

(declare-fun b!5719816 () Bool)

(declare-fun e!3517393 () (InoxSet Context!10198))

(assert (=> b!5719816 (= e!3517393 call!436931)))

(declare-fun b!5719817 () Bool)

(assert (=> b!5719817 (= e!3517395 ((_ map or) call!436932 call!436930))))

(declare-fun b!5719818 () Bool)

(assert (=> b!5719818 (= e!3517393 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719819 () Bool)

(declare-fun c!1008698 () Bool)

(assert (=> b!5719819 (= c!1008698 ((_ is Star!15715) (h!69769 (exprs!5599 lt!2277710))))))

(assert (=> b!5719819 (= e!3517396 e!3517393)))

(declare-fun d!1804439 () Bool)

(declare-fun c!1008699 () Bool)

(assert (=> d!1804439 (= c!1008699 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 lt!2277710))) (= (c!1008289 (h!69769 (exprs!5599 lt!2277710))) (h!69768 s!2326))))))

(assert (=> d!1804439 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277710)) (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (h!69768 s!2326)) e!3517394)))

(declare-fun bm!436927 () Bool)

(assert (=> bm!436927 (= call!436929 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710)))) (ite (or c!1008697 c!1008695) (regTwo!31942 (h!69769 (exprs!5599 lt!2277710))) (h!69769 (exprs!5599 lt!2277710)))))))

(declare-fun bm!436928 () Bool)

(assert (=> bm!436928 (= call!436934 call!436929)))

(declare-fun bm!436929 () Bool)

(assert (=> bm!436929 (= call!436931 call!436933)))

(declare-fun b!5719820 () Bool)

(assert (=> b!5719820 (= e!3517398 e!3517396)))

(assert (=> b!5719820 (= c!1008695 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277710))))))

(assert (= (and d!1804439 c!1008699) b!5719812))

(assert (= (and d!1804439 (not c!1008699)) b!5719813))

(assert (= (and b!5719813 c!1008696) b!5719817))

(assert (= (and b!5719813 (not c!1008696)) b!5719810))

(assert (= (and b!5719810 res!2414938) b!5719815))

(assert (= (and b!5719810 c!1008697) b!5719814))

(assert (= (and b!5719810 (not c!1008697)) b!5719820))

(assert (= (and b!5719820 c!1008695) b!5719811))

(assert (= (and b!5719820 (not c!1008695)) b!5719819))

(assert (= (and b!5719819 c!1008698) b!5719816))

(assert (= (and b!5719819 (not c!1008698)) b!5719818))

(assert (= (or b!5719811 b!5719816) bm!436928))

(assert (= (or b!5719811 b!5719816) bm!436929))

(assert (= (or b!5719814 bm!436928) bm!436927))

(assert (= (or b!5719814 bm!436929) bm!436926))

(assert (= (or b!5719817 b!5719814) bm!436925))

(assert (= (or b!5719817 bm!436926) bm!436924))

(declare-fun m!6673236 () Bool)

(assert (=> bm!436924 m!6673236))

(declare-fun m!6673238 () Bool)

(assert (=> b!5719812 m!6673238))

(declare-fun m!6673240 () Bool)

(assert (=> bm!436927 m!6673240))

(declare-fun m!6673242 () Bool)

(assert (=> b!5719815 m!6673242))

(declare-fun m!6673244 () Bool)

(assert (=> bm!436925 m!6673244))

(assert (=> bm!436768 d!1804439))

(declare-fun b!5719823 () Bool)

(declare-fun e!3517401 () Bool)

(declare-fun e!3517400 () Bool)

(assert (=> b!5719823 (= e!3517401 e!3517400)))

(declare-fun c!1008702 () Bool)

(assert (=> b!5719823 (= c!1008702 ((_ is EmptyLang!15715) (regOne!31942 r!7292)))))

(declare-fun b!5719824 () Bool)

(declare-fun lt!2277862 () Bool)

(assert (=> b!5719824 (= e!3517400 (not lt!2277862))))

(declare-fun b!5719825 () Bool)

(declare-fun e!3517404 () Bool)

(assert (=> b!5719825 (= e!3517404 (not (= (head!12109 (_1!36115 (get!21832 lt!2277832))) (c!1008289 (regOne!31942 r!7292)))))))

(declare-fun b!5719826 () Bool)

(declare-fun e!3517403 () Bool)

(assert (=> b!5719826 (= e!3517403 (= (head!12109 (_1!36115 (get!21832 lt!2277832))) (c!1008289 (regOne!31942 r!7292))))))

(declare-fun b!5719827 () Bool)

(declare-fun res!2414942 () Bool)

(assert (=> b!5719827 (=> (not res!2414942) (not e!3517403))))

(assert (=> b!5719827 (= res!2414942 (isEmpty!35197 (tail!11204 (_1!36115 (get!21832 lt!2277832)))))))

(declare-fun b!5719828 () Bool)

(declare-fun e!3517406 () Bool)

(assert (=> b!5719828 (= e!3517406 e!3517404)))

(declare-fun res!2414941 () Bool)

(assert (=> b!5719828 (=> res!2414941 e!3517404)))

(declare-fun call!436935 () Bool)

(assert (=> b!5719828 (= res!2414941 call!436935)))

(declare-fun b!5719829 () Bool)

(assert (=> b!5719829 (= e!3517401 (= lt!2277862 call!436935))))

(declare-fun b!5719830 () Bool)

(declare-fun e!3517405 () Bool)

(assert (=> b!5719830 (= e!3517405 (matchR!7900 (derivativeStep!4518 (regOne!31942 r!7292) (head!12109 (_1!36115 (get!21832 lt!2277832)))) (tail!11204 (_1!36115 (get!21832 lt!2277832)))))))

(declare-fun d!1804443 () Bool)

(assert (=> d!1804443 e!3517401))

(declare-fun c!1008701 () Bool)

(assert (=> d!1804443 (= c!1008701 ((_ is EmptyExpr!15715) (regOne!31942 r!7292)))))

(assert (=> d!1804443 (= lt!2277862 e!3517405)))

(declare-fun c!1008703 () Bool)

(assert (=> d!1804443 (= c!1008703 (isEmpty!35197 (_1!36115 (get!21832 lt!2277832))))))

(assert (=> d!1804443 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804443 (= (matchR!7900 (regOne!31942 r!7292) (_1!36115 (get!21832 lt!2277832))) lt!2277862)))

(declare-fun b!5719831 () Bool)

(declare-fun res!2414939 () Bool)

(assert (=> b!5719831 (=> (not res!2414939) (not e!3517403))))

(assert (=> b!5719831 (= res!2414939 (not call!436935))))

(declare-fun b!5719832 () Bool)

(declare-fun res!2414945 () Bool)

(declare-fun e!3517402 () Bool)

(assert (=> b!5719832 (=> res!2414945 e!3517402)))

(assert (=> b!5719832 (= res!2414945 e!3517403)))

(declare-fun res!2414943 () Bool)

(assert (=> b!5719832 (=> (not res!2414943) (not e!3517403))))

(assert (=> b!5719832 (= res!2414943 lt!2277862)))

(declare-fun b!5719833 () Bool)

(assert (=> b!5719833 (= e!3517405 (nullable!5747 (regOne!31942 r!7292)))))

(declare-fun bm!436930 () Bool)

(assert (=> bm!436930 (= call!436935 (isEmpty!35197 (_1!36115 (get!21832 lt!2277832))))))

(declare-fun b!5719834 () Bool)

(declare-fun res!2414946 () Bool)

(assert (=> b!5719834 (=> res!2414946 e!3517404)))

(assert (=> b!5719834 (= res!2414946 (not (isEmpty!35197 (tail!11204 (_1!36115 (get!21832 lt!2277832))))))))

(declare-fun b!5719835 () Bool)

(assert (=> b!5719835 (= e!3517402 e!3517406)))

(declare-fun res!2414944 () Bool)

(assert (=> b!5719835 (=> (not res!2414944) (not e!3517406))))

(assert (=> b!5719835 (= res!2414944 (not lt!2277862))))

(declare-fun b!5719836 () Bool)

(declare-fun res!2414940 () Bool)

(assert (=> b!5719836 (=> res!2414940 e!3517402)))

(assert (=> b!5719836 (= res!2414940 (not ((_ is ElementMatch!15715) (regOne!31942 r!7292))))))

(assert (=> b!5719836 (= e!3517400 e!3517402)))

(assert (= (and d!1804443 c!1008703) b!5719833))

(assert (= (and d!1804443 (not c!1008703)) b!5719830))

(assert (= (and d!1804443 c!1008701) b!5719829))

(assert (= (and d!1804443 (not c!1008701)) b!5719823))

(assert (= (and b!5719823 c!1008702) b!5719824))

(assert (= (and b!5719823 (not c!1008702)) b!5719836))

(assert (= (and b!5719836 (not res!2414940)) b!5719832))

(assert (= (and b!5719832 res!2414943) b!5719831))

(assert (= (and b!5719831 res!2414939) b!5719827))

(assert (= (and b!5719827 res!2414942) b!5719826))

(assert (= (and b!5719832 (not res!2414945)) b!5719835))

(assert (= (and b!5719835 res!2414944) b!5719828))

(assert (= (and b!5719828 (not res!2414941)) b!5719834))

(assert (= (and b!5719834 (not res!2414946)) b!5719825))

(assert (= (or b!5719829 b!5719828 b!5719831) bm!436930))

(declare-fun m!6673252 () Bool)

(assert (=> b!5719826 m!6673252))

(declare-fun m!6673254 () Bool)

(assert (=> b!5719827 m!6673254))

(assert (=> b!5719827 m!6673254))

(declare-fun m!6673256 () Bool)

(assert (=> b!5719827 m!6673256))

(assert (=> b!5719833 m!6672898))

(assert (=> b!5719825 m!6673252))

(assert (=> b!5719834 m!6673254))

(assert (=> b!5719834 m!6673254))

(assert (=> b!5719834 m!6673256))

(declare-fun m!6673258 () Bool)

(assert (=> bm!436930 m!6673258))

(assert (=> d!1804443 m!6673258))

(assert (=> d!1804443 m!6672624))

(assert (=> b!5719830 m!6673252))

(assert (=> b!5719830 m!6673252))

(declare-fun m!6673260 () Bool)

(assert (=> b!5719830 m!6673260))

(assert (=> b!5719830 m!6673254))

(assert (=> b!5719830 m!6673260))

(assert (=> b!5719830 m!6673254))

(declare-fun m!6673262 () Bool)

(assert (=> b!5719830 m!6673262))

(assert (=> b!5719153 d!1804443))

(assert (=> b!5719153 d!1804357))

(declare-fun e!3517410 () (InoxSet Context!10198))

(declare-fun b!5719839 () Bool)

(declare-fun call!436936 () (InoxSet Context!10198))

(assert (=> b!5719839 (= e!3517410 ((_ map or) call!436936 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710)))))) (h!69768 s!2326))))))

(declare-fun b!5719840 () Bool)

(declare-fun e!3517409 () (InoxSet Context!10198))

(assert (=> b!5719840 (= e!3517410 e!3517409)))

(declare-fun c!1008705 () Bool)

(assert (=> b!5719840 (= c!1008705 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710))))))))

(declare-fun d!1804447 () Bool)

(declare-fun c!1008706 () Bool)

(declare-fun e!3517408 () Bool)

(assert (=> d!1804447 (= c!1008706 e!3517408)))

(declare-fun res!2414947 () Bool)

(assert (=> d!1804447 (=> (not res!2414947) (not e!3517408))))

(assert (=> d!1804447 (= res!2414947 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710))))))))

(assert (=> d!1804447 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277710))) (h!69768 s!2326)) e!3517410)))

(declare-fun b!5719841 () Bool)

(assert (=> b!5719841 (= e!3517409 call!436936)))

(declare-fun b!5719842 () Bool)

(assert (=> b!5719842 (= e!3517409 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!436931 () Bool)

(assert (=> bm!436931 (= call!436936 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710)))))) (h!69768 s!2326)))))

(declare-fun b!5719843 () Bool)

(assert (=> b!5719843 (= e!3517408 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277710)))))))))

(assert (= (and d!1804447 res!2414947) b!5719843))

(assert (= (and d!1804447 c!1008706) b!5719839))

(assert (= (and d!1804447 (not c!1008706)) b!5719840))

(assert (= (and b!5719840 c!1008705) b!5719841))

(assert (= (and b!5719840 (not c!1008705)) b!5719842))

(assert (= (or b!5719839 b!5719841) bm!436931))

(declare-fun m!6673270 () Bool)

(assert (=> b!5719839 m!6673270))

(declare-fun m!6673272 () Bool)

(assert (=> bm!436931 m!6673272))

(declare-fun m!6673274 () Bool)

(assert (=> b!5719843 m!6673274))

(assert (=> b!5719045 d!1804447))

(declare-fun b!5719844 () Bool)

(declare-fun e!3517412 () Bool)

(declare-fun e!3517411 () Bool)

(assert (=> b!5719844 (= e!3517412 e!3517411)))

(declare-fun c!1008708 () Bool)

(assert (=> b!5719844 (= c!1008708 ((_ is EmptyLang!15715) (regTwo!31942 r!7292)))))

(declare-fun b!5719845 () Bool)

(declare-fun lt!2277863 () Bool)

(assert (=> b!5719845 (= e!3517411 (not lt!2277863))))

(declare-fun b!5719846 () Bool)

(declare-fun e!3517415 () Bool)

(assert (=> b!5719846 (= e!3517415 (not (= (head!12109 s!2326) (c!1008289 (regTwo!31942 r!7292)))))))

(declare-fun b!5719847 () Bool)

(declare-fun e!3517414 () Bool)

(assert (=> b!5719847 (= e!3517414 (= (head!12109 s!2326) (c!1008289 (regTwo!31942 r!7292))))))

(declare-fun b!5719848 () Bool)

(declare-fun res!2414951 () Bool)

(assert (=> b!5719848 (=> (not res!2414951) (not e!3517414))))

(assert (=> b!5719848 (= res!2414951 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun b!5719849 () Bool)

(declare-fun e!3517417 () Bool)

(assert (=> b!5719849 (= e!3517417 e!3517415)))

(declare-fun res!2414950 () Bool)

(assert (=> b!5719849 (=> res!2414950 e!3517415)))

(declare-fun call!436937 () Bool)

(assert (=> b!5719849 (= res!2414950 call!436937)))

(declare-fun b!5719850 () Bool)

(assert (=> b!5719850 (= e!3517412 (= lt!2277863 call!436937))))

(declare-fun b!5719851 () Bool)

(declare-fun e!3517416 () Bool)

(assert (=> b!5719851 (= e!3517416 (matchR!7900 (derivativeStep!4518 (regTwo!31942 r!7292) (head!12109 s!2326)) (tail!11204 s!2326)))))

(declare-fun d!1804451 () Bool)

(assert (=> d!1804451 e!3517412))

(declare-fun c!1008707 () Bool)

(assert (=> d!1804451 (= c!1008707 ((_ is EmptyExpr!15715) (regTwo!31942 r!7292)))))

(assert (=> d!1804451 (= lt!2277863 e!3517416)))

(declare-fun c!1008709 () Bool)

(assert (=> d!1804451 (= c!1008709 (isEmpty!35197 s!2326))))

(assert (=> d!1804451 (validRegex!7451 (regTwo!31942 r!7292))))

(assert (=> d!1804451 (= (matchR!7900 (regTwo!31942 r!7292) s!2326) lt!2277863)))

(declare-fun b!5719852 () Bool)

(declare-fun res!2414948 () Bool)

(assert (=> b!5719852 (=> (not res!2414948) (not e!3517414))))

(assert (=> b!5719852 (= res!2414948 (not call!436937))))

(declare-fun b!5719853 () Bool)

(declare-fun res!2414954 () Bool)

(declare-fun e!3517413 () Bool)

(assert (=> b!5719853 (=> res!2414954 e!3517413)))

(assert (=> b!5719853 (= res!2414954 e!3517414)))

(declare-fun res!2414952 () Bool)

(assert (=> b!5719853 (=> (not res!2414952) (not e!3517414))))

(assert (=> b!5719853 (= res!2414952 lt!2277863)))

(declare-fun b!5719854 () Bool)

(assert (=> b!5719854 (= e!3517416 (nullable!5747 (regTwo!31942 r!7292)))))

(declare-fun bm!436932 () Bool)

(assert (=> bm!436932 (= call!436937 (isEmpty!35197 s!2326))))

(declare-fun b!5719855 () Bool)

(declare-fun res!2414955 () Bool)

(assert (=> b!5719855 (=> res!2414955 e!3517415)))

(assert (=> b!5719855 (= res!2414955 (not (isEmpty!35197 (tail!11204 s!2326))))))

(declare-fun b!5719856 () Bool)

(assert (=> b!5719856 (= e!3517413 e!3517417)))

(declare-fun res!2414953 () Bool)

(assert (=> b!5719856 (=> (not res!2414953) (not e!3517417))))

(assert (=> b!5719856 (= res!2414953 (not lt!2277863))))

(declare-fun b!5719857 () Bool)

(declare-fun res!2414949 () Bool)

(assert (=> b!5719857 (=> res!2414949 e!3517413)))

(assert (=> b!5719857 (= res!2414949 (not ((_ is ElementMatch!15715) (regTwo!31942 r!7292))))))

(assert (=> b!5719857 (= e!3517411 e!3517413)))

(assert (= (and d!1804451 c!1008709) b!5719854))

(assert (= (and d!1804451 (not c!1008709)) b!5719851))

(assert (= (and d!1804451 c!1008707) b!5719850))

(assert (= (and d!1804451 (not c!1008707)) b!5719844))

(assert (= (and b!5719844 c!1008708) b!5719845))

(assert (= (and b!5719844 (not c!1008708)) b!5719857))

(assert (= (and b!5719857 (not res!2414949)) b!5719853))

(assert (= (and b!5719853 res!2414952) b!5719852))

(assert (= (and b!5719852 res!2414948) b!5719848))

(assert (= (and b!5719848 res!2414951) b!5719847))

(assert (= (and b!5719853 (not res!2414954)) b!5719856))

(assert (= (and b!5719856 res!2414953) b!5719849))

(assert (= (and b!5719849 (not res!2414950)) b!5719855))

(assert (= (and b!5719855 (not res!2414955)) b!5719846))

(assert (= (or b!5719850 b!5719849 b!5719852) bm!436932))

(assert (=> b!5719847 m!6672186))

(assert (=> b!5719848 m!6672188))

(assert (=> b!5719848 m!6672188))

(assert (=> b!5719848 m!6672190))

(declare-fun m!6673278 () Bool)

(assert (=> b!5719854 m!6673278))

(assert (=> b!5719846 m!6672186))

(assert (=> b!5719855 m!6672188))

(assert (=> b!5719855 m!6672188))

(assert (=> b!5719855 m!6672190))

(assert (=> bm!436932 m!6672120))

(assert (=> d!1804451 m!6672120))

(declare-fun m!6673280 () Bool)

(assert (=> d!1804451 m!6673280))

(assert (=> b!5719851 m!6672186))

(assert (=> b!5719851 m!6672186))

(declare-fun m!6673282 () Bool)

(assert (=> b!5719851 m!6673282))

(assert (=> b!5719851 m!6672188))

(assert (=> b!5719851 m!6673282))

(assert (=> b!5719851 m!6672188))

(declare-fun m!6673284 () Bool)

(assert (=> b!5719851 m!6673284))

(assert (=> b!5719149 d!1804451))

(declare-fun d!1804455 () Bool)

(declare-fun c!1008713 () Bool)

(assert (=> d!1804455 (= c!1008713 (isEmpty!35197 (tail!11204 (t!376766 s!2326))))))

(declare-fun e!3517425 () Bool)

(assert (=> d!1804455 (= (matchZipper!1853 (derivationStepZipper!1798 lt!2277729 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))) e!3517425)))

(declare-fun b!5719872 () Bool)

(assert (=> b!5719872 (= e!3517425 (nullableZipper!1665 (derivationStepZipper!1798 lt!2277729 (head!12109 (t!376766 s!2326)))))))

(declare-fun b!5719873 () Bool)

(assert (=> b!5719873 (= e!3517425 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 lt!2277729 (head!12109 (t!376766 s!2326))) (head!12109 (tail!11204 (t!376766 s!2326)))) (tail!11204 (tail!11204 (t!376766 s!2326)))))))

(assert (= (and d!1804455 c!1008713) b!5719872))

(assert (= (and d!1804455 (not c!1008713)) b!5719873))

(assert (=> d!1804455 m!6672232))

(assert (=> d!1804455 m!6672824))

(assert (=> b!5719872 m!6672262))

(declare-fun m!6673288 () Bool)

(assert (=> b!5719872 m!6673288))

(assert (=> b!5719873 m!6672232))

(assert (=> b!5719873 m!6672828))

(assert (=> b!5719873 m!6672262))

(assert (=> b!5719873 m!6672828))

(declare-fun m!6673290 () Bool)

(assert (=> b!5719873 m!6673290))

(assert (=> b!5719873 m!6672232))

(assert (=> b!5719873 m!6672832))

(assert (=> b!5719873 m!6673290))

(assert (=> b!5719873 m!6672832))

(declare-fun m!6673294 () Bool)

(assert (=> b!5719873 m!6673294))

(assert (=> b!5718729 d!1804455))

(declare-fun bs!1337192 () Bool)

(declare-fun d!1804457 () Bool)

(assert (= bs!1337192 (and d!1804457 b!5718391)))

(declare-fun lambda!309072 () Int)

(assert (=> bs!1337192 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309072 lambda!308953))))

(declare-fun bs!1337193 () Bool)

(assert (= bs!1337193 (and d!1804457 d!1804089)))

(assert (=> bs!1337193 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309072 lambda!309005))))

(declare-fun bs!1337194 () Bool)

(assert (= bs!1337194 (and d!1804457 d!1804231)))

(assert (=> bs!1337194 (= lambda!309072 lambda!309031)))

(declare-fun bs!1337195 () Bool)

(assert (= bs!1337195 (and d!1804457 d!1804379)))

(assert (=> bs!1337195 (= lambda!309072 lambda!309057)))

(assert (=> d!1804457 true))

(assert (=> d!1804457 (= (derivationStepZipper!1798 lt!2277729 (head!12109 (t!376766 s!2326))) (flatMap!1328 lt!2277729 lambda!309072))))

(declare-fun bs!1337196 () Bool)

(assert (= bs!1337196 d!1804457))

(declare-fun m!6673300 () Bool)

(assert (=> bs!1337196 m!6673300))

(assert (=> b!5718729 d!1804457))

(assert (=> b!5718729 d!1804235))

(assert (=> b!5718729 d!1804237))

(declare-fun bs!1337197 () Bool)

(declare-fun d!1804461 () Bool)

(assert (= bs!1337197 (and d!1804461 d!1804385)))

(declare-fun lambda!309073 () Int)

(assert (=> bs!1337197 (= lambda!309073 lambda!309060)))

(assert (=> d!1804461 (= (nullableZipper!1665 lt!2277730) (exists!2225 lt!2277730 lambda!309073))))

(declare-fun bs!1337198 () Bool)

(assert (= bs!1337198 d!1804461))

(declare-fun m!6673304 () Bool)

(assert (=> bs!1337198 m!6673304))

(assert (=> b!5718726 d!1804461))

(declare-fun d!1804463 () Bool)

(declare-fun c!1008719 () Bool)

(assert (=> d!1804463 (= c!1008719 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun e!3517431 () Bool)

(assert (=> d!1804463 (= (matchZipper!1853 (derivationStepZipper!1798 z!1189 (head!12109 s!2326)) (tail!11204 s!2326)) e!3517431)))

(declare-fun b!5719884 () Bool)

(assert (=> b!5719884 (= e!3517431 (nullableZipper!1665 (derivationStepZipper!1798 z!1189 (head!12109 s!2326))))))

(declare-fun b!5719885 () Bool)

(assert (=> b!5719885 (= e!3517431 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 z!1189 (head!12109 s!2326)) (head!12109 (tail!11204 s!2326))) (tail!11204 (tail!11204 s!2326))))))

(assert (= (and d!1804463 c!1008719) b!5719884))

(assert (= (and d!1804463 (not c!1008719)) b!5719885))

(assert (=> d!1804463 m!6672188))

(assert (=> d!1804463 m!6672190))

(assert (=> b!5719884 m!6672334))

(declare-fun m!6673312 () Bool)

(assert (=> b!5719884 m!6673312))

(assert (=> b!5719885 m!6672188))

(assert (=> b!5719885 m!6672846))

(assert (=> b!5719885 m!6672334))

(assert (=> b!5719885 m!6672846))

(declare-fun m!6673314 () Bool)

(assert (=> b!5719885 m!6673314))

(assert (=> b!5719885 m!6672188))

(assert (=> b!5719885 m!6672848))

(assert (=> b!5719885 m!6673314))

(assert (=> b!5719885 m!6672848))

(declare-fun m!6673316 () Bool)

(assert (=> b!5719885 m!6673316))

(assert (=> b!5718771 d!1804463))

(declare-fun bs!1337200 () Bool)

(declare-fun d!1804467 () Bool)

(assert (= bs!1337200 (and d!1804467 d!1804379)))

(declare-fun lambda!309074 () Int)

(assert (=> bs!1337200 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309074 lambda!309057))))

(declare-fun bs!1337201 () Bool)

(assert (= bs!1337201 (and d!1804467 b!5718391)))

(assert (=> bs!1337201 (= (= (head!12109 s!2326) (h!69768 s!2326)) (= lambda!309074 lambda!308953))))

(declare-fun bs!1337202 () Bool)

(assert (= bs!1337202 (and d!1804467 d!1804089)))

(assert (=> bs!1337202 (= (= (head!12109 s!2326) (h!69768 s!2326)) (= lambda!309074 lambda!309005))))

(declare-fun bs!1337203 () Bool)

(assert (= bs!1337203 (and d!1804467 d!1804231)))

(assert (=> bs!1337203 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309074 lambda!309031))))

(declare-fun bs!1337204 () Bool)

(assert (= bs!1337204 (and d!1804467 d!1804457)))

(assert (=> bs!1337204 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309074 lambda!309072))))

(assert (=> d!1804467 true))

(assert (=> d!1804467 (= (derivationStepZipper!1798 z!1189 (head!12109 s!2326)) (flatMap!1328 z!1189 lambda!309074))))

(declare-fun bs!1337205 () Bool)

(assert (= bs!1337205 d!1804467))

(declare-fun m!6673318 () Bool)

(assert (=> bs!1337205 m!6673318))

(assert (=> b!5718771 d!1804467))

(assert (=> b!5718771 d!1804217))

(assert (=> b!5718771 d!1804271))

(declare-fun b!5719897 () Bool)

(declare-fun c!1008727 () Bool)

(declare-fun e!3517442 () Bool)

(assert (=> b!5719897 (= c!1008727 e!3517442)))

(declare-fun res!2414965 () Bool)

(assert (=> b!5719897 (=> (not res!2414965) (not e!3517442))))

(assert (=> b!5719897 (= res!2414965 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277732))))))

(declare-fun e!3517440 () (InoxSet Context!10198))

(declare-fun e!3517443 () (InoxSet Context!10198))

(assert (=> b!5719897 (= e!3517440 e!3517443)))

(declare-fun bm!436944 () Bool)

(declare-fun call!436952 () (InoxSet Context!10198))

(declare-fun call!436954 () List!63445)

(declare-fun c!1008726 () Bool)

(declare-fun c!1008725 () Bool)

(assert (=> bm!436944 (= call!436952 (derivationStepZipperDown!1057 (ite c!1008726 (regOne!31943 (h!69769 (exprs!5599 lt!2277732))) (ite c!1008727 (regTwo!31942 (h!69769 (exprs!5599 lt!2277732))) (ite c!1008725 (regOne!31942 (h!69769 (exprs!5599 lt!2277732))) (reg!16044 (h!69769 (exprs!5599 lt!2277732)))))) (ite (or c!1008726 c!1008727) (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (Context!10199 call!436954)) (h!69768 s!2326)))))

(declare-fun call!436950 () (InoxSet Context!10198))

(declare-fun bm!436945 () Bool)

(declare-fun call!436949 () List!63445)

(assert (=> bm!436945 (= call!436950 (derivationStepZipperDown!1057 (ite c!1008726 (regTwo!31943 (h!69769 (exprs!5599 lt!2277732))) (regOne!31942 (h!69769 (exprs!5599 lt!2277732)))) (ite c!1008726 (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (Context!10199 call!436949)) (h!69768 s!2326)))))

(declare-fun bm!436946 () Bool)

(declare-fun call!436953 () (InoxSet Context!10198))

(assert (=> bm!436946 (= call!436953 call!436952)))

(declare-fun b!5719898 () Bool)

(declare-fun e!3517441 () (InoxSet Context!10198))

(declare-fun call!436951 () (InoxSet Context!10198))

(assert (=> b!5719898 (= e!3517441 call!436951)))

(declare-fun b!5719899 () Bool)

(declare-fun e!3517439 () (InoxSet Context!10198))

(assert (=> b!5719899 (= e!3517439 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 lt!2277732))) true))))

(declare-fun b!5719900 () Bool)

(assert (=> b!5719900 (= e!3517439 e!3517440)))

(assert (=> b!5719900 (= c!1008726 ((_ is Union!15715) (h!69769 (exprs!5599 lt!2277732))))))

(declare-fun b!5719901 () Bool)

(assert (=> b!5719901 (= e!3517443 ((_ map or) call!436950 call!436953))))

(declare-fun b!5719902 () Bool)

(assert (=> b!5719902 (= e!3517442 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 lt!2277732)))))))

(declare-fun b!5719903 () Bool)

(declare-fun e!3517438 () (InoxSet Context!10198))

(assert (=> b!5719903 (= e!3517438 call!436951)))

(declare-fun b!5719904 () Bool)

(assert (=> b!5719904 (= e!3517440 ((_ map or) call!436952 call!436950))))

(declare-fun b!5719905 () Bool)

(assert (=> b!5719905 (= e!3517438 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719906 () Bool)

(declare-fun c!1008728 () Bool)

(assert (=> b!5719906 (= c!1008728 ((_ is Star!15715) (h!69769 (exprs!5599 lt!2277732))))))

(assert (=> b!5719906 (= e!3517441 e!3517438)))

(declare-fun d!1804471 () Bool)

(declare-fun c!1008729 () Bool)

(assert (=> d!1804471 (= c!1008729 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 lt!2277732))) (= (c!1008289 (h!69769 (exprs!5599 lt!2277732))) (h!69768 s!2326))))))

(assert (=> d!1804471 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 lt!2277732)) (Context!10199 (t!376767 (exprs!5599 lt!2277732))) (h!69768 s!2326)) e!3517439)))

(declare-fun bm!436947 () Bool)

(assert (=> bm!436947 (= call!436949 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277732)))) (ite (or c!1008727 c!1008725) (regTwo!31942 (h!69769 (exprs!5599 lt!2277732))) (h!69769 (exprs!5599 lt!2277732)))))))

(declare-fun bm!436948 () Bool)

(assert (=> bm!436948 (= call!436954 call!436949)))

(declare-fun bm!436949 () Bool)

(assert (=> bm!436949 (= call!436951 call!436953)))

(declare-fun b!5719907 () Bool)

(assert (=> b!5719907 (= e!3517443 e!3517441)))

(assert (=> b!5719907 (= c!1008725 ((_ is Concat!24560) (h!69769 (exprs!5599 lt!2277732))))))

(assert (= (and d!1804471 c!1008729) b!5719899))

(assert (= (and d!1804471 (not c!1008729)) b!5719900))

(assert (= (and b!5719900 c!1008726) b!5719904))

(assert (= (and b!5719900 (not c!1008726)) b!5719897))

(assert (= (and b!5719897 res!2414965) b!5719902))

(assert (= (and b!5719897 c!1008727) b!5719901))

(assert (= (and b!5719897 (not c!1008727)) b!5719907))

(assert (= (and b!5719907 c!1008725) b!5719898))

(assert (= (and b!5719907 (not c!1008725)) b!5719906))

(assert (= (and b!5719906 c!1008728) b!5719903))

(assert (= (and b!5719906 (not c!1008728)) b!5719905))

(assert (= (or b!5719898 b!5719903) bm!436948))

(assert (= (or b!5719898 b!5719903) bm!436949))

(assert (= (or b!5719901 bm!436948) bm!436947))

(assert (= (or b!5719901 bm!436949) bm!436946))

(assert (= (or b!5719904 b!5719901) bm!436945))

(assert (= (or b!5719904 bm!436946) bm!436944))

(declare-fun m!6673328 () Bool)

(assert (=> bm!436944 m!6673328))

(declare-fun m!6673330 () Bool)

(assert (=> b!5719899 m!6673330))

(declare-fun m!6673332 () Bool)

(assert (=> bm!436947 m!6673332))

(declare-fun m!6673334 () Bool)

(assert (=> b!5719902 m!6673334))

(declare-fun m!6673336 () Bool)

(assert (=> bm!436945 m!6673336))

(assert (=> bm!436770 d!1804471))

(declare-fun d!1804475 () Bool)

(assert (=> d!1804475 (= (isConcat!746 lt!2277825) ((_ is Concat!24560) lt!2277825))))

(assert (=> b!5719128 d!1804475))

(declare-fun d!1804477 () Bool)

(assert (=> d!1804477 true))

(declare-fun setRes!38319 () Bool)

(assert (=> d!1804477 setRes!38319))

(declare-fun condSetEmpty!38319 () Bool)

(declare-fun res!2414967 () (InoxSet Context!10198))

(assert (=> d!1804477 (= condSetEmpty!38319 (= res!2414967 ((as const (Array Context!10198 Bool)) false)))))

(assert (=> d!1804477 (= (choose!43242 lt!2277730 lambda!308953) res!2414967)))

(declare-fun setIsEmpty!38319 () Bool)

(assert (=> setIsEmpty!38319 setRes!38319))

(declare-fun setNonEmpty!38319 () Bool)

(declare-fun setElem!38319 () Context!10198)

(declare-fun e!3517450 () Bool)

(declare-fun tp!1584060 () Bool)

(assert (=> setNonEmpty!38319 (= setRes!38319 (and tp!1584060 (inv!82534 setElem!38319) e!3517450))))

(declare-fun setRest!38319 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38319 (= res!2414967 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38319 true) setRest!38319))))

(declare-fun b!5719919 () Bool)

(declare-fun tp!1584059 () Bool)

(assert (=> b!5719919 (= e!3517450 tp!1584059)))

(assert (= (and d!1804477 condSetEmpty!38319) setIsEmpty!38319))

(assert (= (and d!1804477 (not condSetEmpty!38319)) setNonEmpty!38319))

(assert (= setNonEmpty!38319 b!5719919))

(declare-fun m!6673348 () Bool)

(assert (=> setNonEmpty!38319 m!6673348))

(assert (=> d!1804083 d!1804477))

(declare-fun b!5719931 () Bool)

(declare-fun e!3517458 () List!63444)

(assert (=> b!5719931 (= e!3517458 (t!376766 s!2326))))

(declare-fun d!1804481 () Bool)

(declare-fun e!3517457 () Bool)

(assert (=> d!1804481 e!3517457))

(declare-fun res!2414969 () Bool)

(assert (=> d!1804481 (=> (not res!2414969) (not e!3517457))))

(declare-fun lt!2277866 () List!63444)

(assert (=> d!1804481 (= res!2414969 (= (content!11505 lt!2277866) ((_ map or) (content!11505 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))) (content!11505 (t!376766 s!2326)))))))

(assert (=> d!1804481 (= lt!2277866 e!3517458)))

(declare-fun c!1008740 () Bool)

(assert (=> d!1804481 (= c!1008740 ((_ is Nil!63320) (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))))))

(assert (=> d!1804481 (= (++!13911 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326)) lt!2277866)))

(declare-fun b!5719933 () Bool)

(declare-fun res!2414970 () Bool)

(assert (=> b!5719933 (=> (not res!2414970) (not e!3517457))))

(assert (=> b!5719933 (= res!2414970 (= (size!40026 lt!2277866) (+ (size!40026 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))) (size!40026 (t!376766 s!2326)))))))

(declare-fun b!5719934 () Bool)

(assert (=> b!5719934 (= e!3517457 (or (not (= (t!376766 s!2326) Nil!63320)) (= lt!2277866 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)))))))

(declare-fun b!5719932 () Bool)

(assert (=> b!5719932 (= e!3517458 (Cons!63320 (h!69768 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))) (++!13911 (t!376766 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))) (t!376766 s!2326))))))

(assert (= (and d!1804481 c!1008740) b!5719931))

(assert (= (and d!1804481 (not c!1008740)) b!5719932))

(assert (= (and d!1804481 res!2414969) b!5719933))

(assert (= (and b!5719933 res!2414970) b!5719934))

(declare-fun m!6673350 () Bool)

(assert (=> d!1804481 m!6673350))

(assert (=> d!1804481 m!6672608))

(declare-fun m!6673352 () Bool)

(assert (=> d!1804481 m!6673352))

(declare-fun m!6673354 () Bool)

(assert (=> d!1804481 m!6673354))

(declare-fun m!6673356 () Bool)

(assert (=> b!5719933 m!6673356))

(assert (=> b!5719933 m!6672608))

(declare-fun m!6673360 () Bool)

(assert (=> b!5719933 m!6673360))

(declare-fun m!6673364 () Bool)

(assert (=> b!5719933 m!6673364))

(declare-fun m!6673368 () Bool)

(assert (=> b!5719932 m!6673368))

(assert (=> b!5719157 d!1804481))

(declare-fun b!5719935 () Bool)

(declare-fun e!3517460 () List!63444)

(assert (=> b!5719935 (= e!3517460 (Cons!63320 (h!69768 s!2326) Nil!63320))))

(declare-fun d!1804483 () Bool)

(declare-fun e!3517459 () Bool)

(assert (=> d!1804483 e!3517459))

(declare-fun res!2414971 () Bool)

(assert (=> d!1804483 (=> (not res!2414971) (not e!3517459))))

(declare-fun lt!2277867 () List!63444)

(assert (=> d!1804483 (= res!2414971 (= (content!11505 lt!2277867) ((_ map or) (content!11505 Nil!63320) (content!11505 (Cons!63320 (h!69768 s!2326) Nil!63320)))))))

(assert (=> d!1804483 (= lt!2277867 e!3517460)))

(declare-fun c!1008741 () Bool)

(assert (=> d!1804483 (= c!1008741 ((_ is Nil!63320) Nil!63320))))

(assert (=> d!1804483 (= (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) lt!2277867)))

(declare-fun b!5719937 () Bool)

(declare-fun res!2414972 () Bool)

(assert (=> b!5719937 (=> (not res!2414972) (not e!3517459))))

(assert (=> b!5719937 (= res!2414972 (= (size!40026 lt!2277867) (+ (size!40026 Nil!63320) (size!40026 (Cons!63320 (h!69768 s!2326) Nil!63320)))))))

(declare-fun b!5719938 () Bool)

(assert (=> b!5719938 (= e!3517459 (or (not (= (Cons!63320 (h!69768 s!2326) Nil!63320) Nil!63320)) (= lt!2277867 Nil!63320)))))

(declare-fun b!5719936 () Bool)

(assert (=> b!5719936 (= e!3517460 (Cons!63320 (h!69768 Nil!63320) (++!13911 (t!376766 Nil!63320) (Cons!63320 (h!69768 s!2326) Nil!63320))))))

(assert (= (and d!1804483 c!1008741) b!5719935))

(assert (= (and d!1804483 (not c!1008741)) b!5719936))

(assert (= (and d!1804483 res!2414971) b!5719937))

(assert (= (and b!5719937 res!2414972) b!5719938))

(declare-fun m!6673374 () Bool)

(assert (=> d!1804483 m!6673374))

(declare-fun m!6673376 () Bool)

(assert (=> d!1804483 m!6673376))

(declare-fun m!6673378 () Bool)

(assert (=> d!1804483 m!6673378))

(declare-fun m!6673380 () Bool)

(assert (=> b!5719937 m!6673380))

(declare-fun m!6673382 () Bool)

(assert (=> b!5719937 m!6673382))

(declare-fun m!6673384 () Bool)

(assert (=> b!5719937 m!6673384))

(declare-fun m!6673386 () Bool)

(assert (=> b!5719936 m!6673386))

(assert (=> b!5719157 d!1804483))

(declare-fun d!1804491 () Bool)

(assert (=> d!1804491 (= (++!13911 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326)) s!2326)))

(declare-fun lt!2277870 () Unit!156392)

(declare-fun choose!43248 (List!63444 C!31700 List!63444 List!63444) Unit!156392)

(assert (=> d!1804491 (= lt!2277870 (choose!43248 Nil!63320 (h!69768 s!2326) (t!376766 s!2326) s!2326))))

(assert (=> d!1804491 (= (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) (t!376766 s!2326))) s!2326)))

(assert (=> d!1804491 (= (lemmaMoveElementToOtherListKeepsConcatEq!2068 Nil!63320 (h!69768 s!2326) (t!376766 s!2326) s!2326) lt!2277870)))

(declare-fun bs!1337207 () Bool)

(assert (= bs!1337207 d!1804491))

(assert (=> bs!1337207 m!6672608))

(assert (=> bs!1337207 m!6672608))

(assert (=> bs!1337207 m!6672610))

(declare-fun m!6673390 () Bool)

(assert (=> bs!1337207 m!6673390))

(declare-fun m!6673392 () Bool)

(assert (=> bs!1337207 m!6673392))

(assert (=> b!5719157 d!1804491))

(declare-fun b!5719947 () Bool)

(declare-fun e!3517467 () Bool)

(assert (=> b!5719947 (= e!3517467 (matchR!7900 (regTwo!31942 r!7292) (t!376766 s!2326)))))

(declare-fun b!5719948 () Bool)

(declare-fun e!3517468 () Option!15724)

(assert (=> b!5719948 (= e!3517468 None!15723)))

(declare-fun b!5719949 () Bool)

(declare-fun e!3517466 () Option!15724)

(assert (=> b!5719949 (= e!3517466 (Some!15723 (tuple2!65625 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326))))))

(declare-fun b!5719950 () Bool)

(declare-fun e!3517465 () Bool)

(declare-fun lt!2277873 () Option!15724)

(assert (=> b!5719950 (= e!3517465 (not (isDefined!12427 lt!2277873)))))

(declare-fun b!5719951 () Bool)

(declare-fun res!2414977 () Bool)

(declare-fun e!3517469 () Bool)

(assert (=> b!5719951 (=> (not res!2414977) (not e!3517469))))

(assert (=> b!5719951 (= res!2414977 (matchR!7900 (regOne!31942 r!7292) (_1!36115 (get!21832 lt!2277873))))))

(declare-fun b!5719952 () Bool)

(assert (=> b!5719952 (= e!3517469 (= (++!13911 (_1!36115 (get!21832 lt!2277873)) (_2!36115 (get!21832 lt!2277873))) s!2326))))

(declare-fun b!5719953 () Bool)

(assert (=> b!5719953 (= e!3517466 e!3517468)))

(declare-fun c!1008744 () Bool)

(assert (=> b!5719953 (= c!1008744 ((_ is Nil!63320) (t!376766 s!2326)))))

(declare-fun b!5719954 () Bool)

(declare-fun res!2414981 () Bool)

(assert (=> b!5719954 (=> (not res!2414981) (not e!3517469))))

(assert (=> b!5719954 (= res!2414981 (matchR!7900 (regTwo!31942 r!7292) (_2!36115 (get!21832 lt!2277873))))))

(declare-fun d!1804499 () Bool)

(assert (=> d!1804499 e!3517465))

(declare-fun res!2414978 () Bool)

(assert (=> d!1804499 (=> res!2414978 e!3517465)))

(assert (=> d!1804499 (= res!2414978 e!3517469)))

(declare-fun res!2414979 () Bool)

(assert (=> d!1804499 (=> (not res!2414979) (not e!3517469))))

(assert (=> d!1804499 (= res!2414979 (isDefined!12427 lt!2277873))))

(assert (=> d!1804499 (= lt!2277873 e!3517466)))

(declare-fun c!1008745 () Bool)

(assert (=> d!1804499 (= c!1008745 e!3517467)))

(declare-fun res!2414980 () Bool)

(assert (=> d!1804499 (=> (not res!2414980) (not e!3517467))))

(assert (=> d!1804499 (= res!2414980 (matchR!7900 (regOne!31942 r!7292) (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320))))))

(assert (=> d!1804499 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804499 (= (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (t!376766 s!2326) s!2326) lt!2277873)))

(declare-fun b!5719955 () Bool)

(declare-fun lt!2277874 () Unit!156392)

(declare-fun lt!2277875 () Unit!156392)

(assert (=> b!5719955 (= lt!2277874 lt!2277875)))

(assert (=> b!5719955 (= (++!13911 (++!13911 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (Cons!63320 (h!69768 (t!376766 s!2326)) Nil!63320)) (t!376766 (t!376766 s!2326))) s!2326)))

(assert (=> b!5719955 (= lt!2277875 (lemmaMoveElementToOtherListKeepsConcatEq!2068 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (h!69768 (t!376766 s!2326)) (t!376766 (t!376766 s!2326)) s!2326))))

(assert (=> b!5719955 (= e!3517468 (findConcatSeparation!2138 (regOne!31942 r!7292) (regTwo!31942 r!7292) (++!13911 (++!13911 Nil!63320 (Cons!63320 (h!69768 s!2326) Nil!63320)) (Cons!63320 (h!69768 (t!376766 s!2326)) Nil!63320)) (t!376766 (t!376766 s!2326)) s!2326))))

(assert (= (and d!1804499 res!2414980) b!5719947))

(assert (= (and d!1804499 c!1008745) b!5719949))

(assert (= (and d!1804499 (not c!1008745)) b!5719953))

(assert (= (and b!5719953 c!1008744) b!5719948))

(assert (= (and b!5719953 (not c!1008744)) b!5719955))

(assert (= (and d!1804499 res!2414979) b!5719951))

(assert (= (and b!5719951 res!2414977) b!5719954))

(assert (= (and b!5719954 res!2414981) b!5719952))

(assert (= (and d!1804499 (not res!2414978)) b!5719950))

(declare-fun m!6673394 () Bool)

(assert (=> b!5719952 m!6673394))

(declare-fun m!6673396 () Bool)

(assert (=> b!5719952 m!6673396))

(assert (=> b!5719955 m!6672608))

(declare-fun m!6673398 () Bool)

(assert (=> b!5719955 m!6673398))

(assert (=> b!5719955 m!6673398))

(declare-fun m!6673400 () Bool)

(assert (=> b!5719955 m!6673400))

(assert (=> b!5719955 m!6672608))

(declare-fun m!6673402 () Bool)

(assert (=> b!5719955 m!6673402))

(assert (=> b!5719955 m!6673398))

(declare-fun m!6673404 () Bool)

(assert (=> b!5719955 m!6673404))

(assert (=> b!5719951 m!6673394))

(declare-fun m!6673406 () Bool)

(assert (=> b!5719951 m!6673406))

(declare-fun m!6673408 () Bool)

(assert (=> b!5719947 m!6673408))

(declare-fun m!6673410 () Bool)

(assert (=> b!5719950 m!6673410))

(assert (=> d!1804499 m!6673410))

(assert (=> d!1804499 m!6672608))

(declare-fun m!6673412 () Bool)

(assert (=> d!1804499 m!6673412))

(assert (=> d!1804499 m!6672624))

(assert (=> b!5719954 m!6673394))

(declare-fun m!6673414 () Bool)

(assert (=> b!5719954 m!6673414))

(assert (=> b!5719157 d!1804499))

(declare-fun d!1804501 () Bool)

(assert (=> d!1804501 (= (head!12111 (unfocusZipperList!1143 zl!343)) (h!69769 (unfocusZipperList!1143 zl!343)))))

(assert (=> b!5719037 d!1804501))

(declare-fun bs!1337208 () Bool)

(declare-fun d!1804505 () Bool)

(assert (= bs!1337208 (and d!1804505 d!1804385)))

(declare-fun lambda!309075 () Int)

(assert (=> bs!1337208 (= lambda!309075 lambda!309060)))

(declare-fun bs!1337209 () Bool)

(assert (= bs!1337209 (and d!1804505 d!1804461)))

(assert (=> bs!1337209 (= lambda!309075 lambda!309073)))

(assert (=> d!1804505 (= (nullableZipper!1665 ((_ map or) lt!2277712 lt!2277735)) (exists!2225 ((_ map or) lt!2277712 lt!2277735) lambda!309075))))

(declare-fun bs!1337210 () Bool)

(assert (= bs!1337210 d!1804505))

(declare-fun m!6673434 () Bool)

(assert (=> bs!1337210 m!6673434))

(assert (=> b!5718768 d!1804505))

(declare-fun d!1804507 () Bool)

(declare-fun c!1008750 () Bool)

(assert (=> d!1804507 (= c!1008750 ((_ is Nil!63322) lt!2277820))))

(declare-fun e!3517476 () (InoxSet Context!10198))

(assert (=> d!1804507 (= (content!11504 lt!2277820) e!3517476)))

(declare-fun b!5719968 () Bool)

(assert (=> b!5719968 (= e!3517476 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5719969 () Bool)

(assert (=> b!5719969 (= e!3517476 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) (h!69770 lt!2277820) true) (content!11504 (t!376768 lt!2277820))))))

(assert (= (and d!1804507 c!1008750) b!5719968))

(assert (= (and d!1804507 (not c!1008750)) b!5719969))

(declare-fun m!6673446 () Bool)

(assert (=> b!5719969 m!6673446))

(declare-fun m!6673448 () Bool)

(assert (=> b!5719969 m!6673448))

(assert (=> b!5719064 d!1804507))

(declare-fun d!1804511 () Bool)

(assert (=> d!1804511 (= (isEmpty!35194 (t!376767 (unfocusZipperList!1143 zl!343))) ((_ is Nil!63321) (t!376767 (unfocusZipperList!1143 zl!343))))))

(assert (=> b!5719033 d!1804511))

(assert (=> d!1803979 d!1804299))

(declare-fun d!1804513 () Bool)

(assert (=> d!1804513 true))

(declare-fun setRes!38320 () Bool)

(assert (=> d!1804513 setRes!38320))

(declare-fun condSetEmpty!38320 () Bool)

(declare-fun res!2414986 () (InoxSet Context!10198))

(assert (=> d!1804513 (= condSetEmpty!38320 (= res!2414986 ((as const (Array Context!10198 Bool)) false)))))

(assert (=> d!1804513 (= (choose!43242 lt!2277725 lambda!308953) res!2414986)))

(declare-fun setIsEmpty!38320 () Bool)

(assert (=> setIsEmpty!38320 setRes!38320))

(declare-fun e!3517477 () Bool)

(declare-fun tp!1584062 () Bool)

(declare-fun setNonEmpty!38320 () Bool)

(declare-fun setElem!38320 () Context!10198)

(assert (=> setNonEmpty!38320 (= setRes!38320 (and tp!1584062 (inv!82534 setElem!38320) e!3517477))))

(declare-fun setRest!38320 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38320 (= res!2414986 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38320 true) setRest!38320))))

(declare-fun b!5719970 () Bool)

(declare-fun tp!1584061 () Bool)

(assert (=> b!5719970 (= e!3517477 tp!1584061)))

(assert (= (and d!1804513 condSetEmpty!38320) setIsEmpty!38320))

(assert (= (and d!1804513 (not condSetEmpty!38320)) setNonEmpty!38320))

(assert (= setNonEmpty!38320 b!5719970))

(declare-fun m!6673450 () Bool)

(assert (=> setNonEmpty!38320 m!6673450))

(assert (=> d!1804103 d!1804513))

(assert (=> d!1804033 d!1804063))

(declare-fun d!1804515 () Bool)

(assert (=> d!1804515 (= (flatMap!1328 z!1189 lambda!308953) (dynLambda!24776 lambda!308953 (h!69770 zl!343)))))

(assert (=> d!1804515 true))

(declare-fun _$13!2397 () Unit!156392)

(assert (=> d!1804515 (= (choose!43241 z!1189 (h!69770 zl!343) lambda!308953) _$13!2397)))

(declare-fun b_lambda!216117 () Bool)

(assert (=> (not b_lambda!216117) (not d!1804515)))

(declare-fun bs!1337211 () Bool)

(assert (= bs!1337211 d!1804515))

(assert (=> bs!1337211 m!6671976))

(assert (=> bs!1337211 m!6672388))

(assert (=> d!1804033 d!1804515))

(assert (=> b!5718982 d!1804043))

(declare-fun d!1804517 () Bool)

(assert (=> d!1804517 (= (head!12111 (exprs!5599 (h!69770 zl!343))) (h!69769 (exprs!5599 (h!69770 zl!343))))))

(assert (=> b!5719123 d!1804517))

(assert (=> bs!1336910 d!1804097))

(assert (=> d!1804095 d!1804107))

(declare-fun d!1804519 () Bool)

(assert (=> d!1804519 (= (flatMap!1328 lt!2277718 lambda!308953) (dynLambda!24776 lambda!308953 lt!2277732))))

(assert (=> d!1804519 true))

(declare-fun _$13!2398 () Unit!156392)

(assert (=> d!1804519 (= (choose!43241 lt!2277718 lt!2277732 lambda!308953) _$13!2398)))

(declare-fun b_lambda!216119 () Bool)

(assert (=> (not b_lambda!216119) (not d!1804519)))

(declare-fun bs!1337212 () Bool)

(assert (= bs!1337212 d!1804519))

(assert (=> bs!1337212 m!6672004))

(assert (=> bs!1337212 m!6672526))

(assert (=> d!1804095 d!1804519))

(assert (=> d!1804111 d!1804219))

(assert (=> d!1804111 d!1804437))

(declare-fun bs!1337214 () Bool)

(declare-fun b!5719976 () Bool)

(assert (= bs!1337214 (and b!5719976 d!1804129)))

(declare-fun lambda!309076 () Int)

(assert (=> bs!1337214 (not (= lambda!309076 lambda!309019))))

(declare-fun bs!1337215 () Bool)

(assert (= bs!1337215 (and b!5719976 b!5718386)))

(assert (=> bs!1337215 (not (= lambda!309076 lambda!308952))))

(assert (=> bs!1337215 (not (= lambda!309076 lambda!308951))))

(declare-fun bs!1337216 () Bool)

(assert (= bs!1337216 (and b!5719976 b!5718490)))

(assert (=> bs!1337216 (not (= lambda!309076 lambda!308968))))

(declare-fun bs!1337217 () Bool)

(assert (= bs!1337217 (and b!5719976 d!1804319)))

(assert (=> bs!1337217 (not (= lambda!309076 lambda!309048))))

(declare-fun bs!1337218 () Bool)

(assert (= bs!1337218 (and b!5719976 b!5719082)))

(assert (=> bs!1337218 (not (= lambda!309076 lambda!309007))))

(declare-fun bs!1337219 () Bool)

(assert (= bs!1337219 (and b!5719976 b!5719084)))

(assert (=> bs!1337219 (= (and (= (reg!16044 (regTwo!31943 lt!2277714)) (reg!16044 lt!2277714)) (= (regTwo!31943 lt!2277714) lt!2277714)) (= lambda!309076 lambda!309006))))

(declare-fun bs!1337220 () Bool)

(assert (= bs!1337220 (and b!5719976 b!5718492)))

(assert (=> bs!1337220 (= (and (= (reg!16044 (regTwo!31943 lt!2277714)) (reg!16044 r!7292)) (= (regTwo!31943 lt!2277714) r!7292)) (= lambda!309076 lambda!308967))))

(declare-fun bs!1337221 () Bool)

(assert (= bs!1337221 (and b!5719976 d!1804419)))

(assert (=> bs!1337221 (not (= lambda!309076 lambda!309067))))

(declare-fun bs!1337222 () Bool)

(assert (= bs!1337222 (and b!5719976 d!1804125)))

(assert (=> bs!1337222 (not (= lambda!309076 lambda!309016))))

(assert (=> bs!1337217 (not (= lambda!309076 lambda!309047))))

(assert (=> bs!1337222 (not (= lambda!309076 lambda!309015))))

(assert (=> b!5719976 true))

(assert (=> b!5719976 true))

(declare-fun bs!1337223 () Bool)

(declare-fun b!5719974 () Bool)

(assert (= bs!1337223 (and b!5719974 d!1804129)))

(declare-fun lambda!309077 () Int)

(assert (=> bs!1337223 (not (= lambda!309077 lambda!309019))))

(declare-fun bs!1337224 () Bool)

(assert (= bs!1337224 (and b!5719974 b!5718386)))

(assert (=> bs!1337224 (= (and (= (regOne!31942 (regTwo!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309077 lambda!308952))))

(assert (=> bs!1337224 (not (= lambda!309077 lambda!308951))))

(declare-fun bs!1337227 () Bool)

(assert (= bs!1337227 (and b!5719974 b!5718490)))

(assert (=> bs!1337227 (= (and (= (regOne!31942 (regTwo!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309077 lambda!308968))))

(declare-fun bs!1337230 () Bool)

(assert (= bs!1337230 (and b!5719974 d!1804319)))

(assert (=> bs!1337230 (= (and (= (regOne!31942 (regTwo!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309077 lambda!309048))))

(declare-fun bs!1337233 () Bool)

(assert (= bs!1337233 (and b!5719974 b!5719082)))

(assert (=> bs!1337233 (= (and (= (regOne!31942 (regTwo!31943 lt!2277714)) (regOne!31942 lt!2277714)) (= (regTwo!31942 (regTwo!31943 lt!2277714)) (regTwo!31942 lt!2277714))) (= lambda!309077 lambda!309007))))

(declare-fun bs!1337235 () Bool)

(assert (= bs!1337235 (and b!5719974 b!5719976)))

(assert (=> bs!1337235 (not (= lambda!309077 lambda!309076))))

(declare-fun bs!1337238 () Bool)

(assert (= bs!1337238 (and b!5719974 b!5719084)))

(assert (=> bs!1337238 (not (= lambda!309077 lambda!309006))))

(declare-fun bs!1337241 () Bool)

(assert (= bs!1337241 (and b!5719974 b!5718492)))

(assert (=> bs!1337241 (not (= lambda!309077 lambda!308967))))

(declare-fun bs!1337243 () Bool)

(assert (= bs!1337243 (and b!5719974 d!1804419)))

(assert (=> bs!1337243 (not (= lambda!309077 lambda!309067))))

(declare-fun bs!1337245 () Bool)

(assert (= bs!1337245 (and b!5719974 d!1804125)))

(assert (=> bs!1337245 (= (and (= (regOne!31942 (regTwo!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309077 lambda!309016))))

(assert (=> bs!1337230 (not (= lambda!309077 lambda!309047))))

(assert (=> bs!1337245 (not (= lambda!309077 lambda!309015))))

(assert (=> b!5719974 true))

(assert (=> b!5719974 true))

(declare-fun b!5719971 () Bool)

(declare-fun c!1008751 () Bool)

(assert (=> b!5719971 (= c!1008751 ((_ is Union!15715) (regTwo!31943 lt!2277714)))))

(declare-fun e!3517484 () Bool)

(declare-fun e!3517479 () Bool)

(assert (=> b!5719971 (= e!3517484 e!3517479)))

(declare-fun b!5719972 () Bool)

(declare-fun e!3517481 () Bool)

(declare-fun call!436968 () Bool)

(assert (=> b!5719972 (= e!3517481 call!436968)))

(declare-fun b!5719973 () Bool)

(declare-fun e!3517483 () Bool)

(assert (=> b!5719973 (= e!3517481 e!3517483)))

(declare-fun res!2414989 () Bool)

(assert (=> b!5719973 (= res!2414989 (not ((_ is EmptyLang!15715) (regTwo!31943 lt!2277714))))))

(assert (=> b!5719973 (=> (not res!2414989) (not e!3517483))))

(declare-fun c!1008754 () Bool)

(declare-fun bm!436962 () Bool)

(declare-fun call!436967 () Bool)

(assert (=> bm!436962 (= call!436967 (Exists!2815 (ite c!1008754 lambda!309076 lambda!309077)))))

(declare-fun e!3517482 () Bool)

(assert (=> b!5719974 (= e!3517482 call!436967)))

(declare-fun b!5719975 () Bool)

(declare-fun c!1008753 () Bool)

(assert (=> b!5719975 (= c!1008753 ((_ is ElementMatch!15715) (regTwo!31943 lt!2277714)))))

(assert (=> b!5719975 (= e!3517483 e!3517484)))

(declare-fun e!3517478 () Bool)

(assert (=> b!5719976 (= e!3517478 call!436967)))

(declare-fun d!1804521 () Bool)

(declare-fun c!1008752 () Bool)

(assert (=> d!1804521 (= c!1008752 ((_ is EmptyExpr!15715) (regTwo!31943 lt!2277714)))))

(assert (=> d!1804521 (= (matchRSpec!2818 (regTwo!31943 lt!2277714) s!2326) e!3517481)))

(declare-fun b!5719977 () Bool)

(declare-fun e!3517480 () Bool)

(assert (=> b!5719977 (= e!3517479 e!3517480)))

(declare-fun res!2414988 () Bool)

(assert (=> b!5719977 (= res!2414988 (matchRSpec!2818 (regOne!31943 (regTwo!31943 lt!2277714)) s!2326))))

(assert (=> b!5719977 (=> res!2414988 e!3517480)))

(declare-fun b!5719978 () Bool)

(assert (=> b!5719978 (= e!3517480 (matchRSpec!2818 (regTwo!31943 (regTwo!31943 lt!2277714)) s!2326))))

(declare-fun b!5719979 () Bool)

(assert (=> b!5719979 (= e!3517484 (= s!2326 (Cons!63320 (c!1008289 (regTwo!31943 lt!2277714)) Nil!63320)))))

(declare-fun b!5719980 () Bool)

(assert (=> b!5719980 (= e!3517479 e!3517482)))

(assert (=> b!5719980 (= c!1008754 ((_ is Star!15715) (regTwo!31943 lt!2277714)))))

(declare-fun bm!436963 () Bool)

(assert (=> bm!436963 (= call!436968 (isEmpty!35197 s!2326))))

(declare-fun b!5719981 () Bool)

(declare-fun res!2414987 () Bool)

(assert (=> b!5719981 (=> res!2414987 e!3517478)))

(assert (=> b!5719981 (= res!2414987 call!436968)))

(assert (=> b!5719981 (= e!3517482 e!3517478)))

(assert (= (and d!1804521 c!1008752) b!5719972))

(assert (= (and d!1804521 (not c!1008752)) b!5719973))

(assert (= (and b!5719973 res!2414989) b!5719975))

(assert (= (and b!5719975 c!1008753) b!5719979))

(assert (= (and b!5719975 (not c!1008753)) b!5719971))

(assert (= (and b!5719971 c!1008751) b!5719977))

(assert (= (and b!5719971 (not c!1008751)) b!5719980))

(assert (= (and b!5719977 (not res!2414988)) b!5719978))

(assert (= (and b!5719980 c!1008754) b!5719981))

(assert (= (and b!5719980 (not c!1008754)) b!5719974))

(assert (= (and b!5719981 (not res!2414987)) b!5719976))

(assert (= (or b!5719976 b!5719974) bm!436962))

(assert (= (or b!5719972 b!5719981) bm!436963))

(declare-fun m!6673486 () Bool)

(assert (=> bm!436962 m!6673486))

(declare-fun m!6673488 () Bool)

(assert (=> b!5719977 m!6673488))

(declare-fun m!6673490 () Bool)

(assert (=> b!5719978 m!6673490))

(assert (=> bm!436963 m!6672120))

(assert (=> b!5719086 d!1804521))

(declare-fun d!1804531 () Bool)

(assert (=> d!1804531 (= (isDefined!12427 lt!2277832) (not (isEmpty!35198 lt!2277832)))))

(declare-fun bs!1337246 () Bool)

(assert (= bs!1337246 d!1804531))

(declare-fun m!6673494 () Bool)

(assert (=> bs!1337246 m!6673494))

(assert (=> b!5719152 d!1804531))

(declare-fun d!1804533 () Bool)

(assert (=> d!1804533 (= (isUnion!664 lt!2277808) ((_ is Union!15715) lt!2277808))))

(assert (=> b!5719032 d!1804533))

(declare-fun bs!1337248 () Bool)

(declare-fun d!1804539 () Bool)

(assert (= bs!1337248 (and d!1804539 d!1804385)))

(declare-fun lambda!309079 () Int)

(assert (=> bs!1337248 (= lambda!309079 lambda!309060)))

(declare-fun bs!1337249 () Bool)

(assert (= bs!1337249 (and d!1804539 d!1804461)))

(assert (=> bs!1337249 (= lambda!309079 lambda!309073)))

(declare-fun bs!1337250 () Bool)

(assert (= bs!1337250 (and d!1804539 d!1804505)))

(assert (=> bs!1337250 (= lambda!309079 lambda!309075)))

(assert (=> d!1804539 (= (nullableZipper!1665 lt!2277729) (exists!2225 lt!2277729 lambda!309079))))

(declare-fun bs!1337251 () Bool)

(assert (= bs!1337251 d!1804539))

(declare-fun m!6673500 () Bool)

(assert (=> bs!1337251 m!6673500))

(assert (=> b!5718728 d!1804539))

(declare-fun d!1804541 () Bool)

(assert (=> d!1804541 (= (isEmpty!35197 (tail!11204 s!2326)) ((_ is Nil!63320) (tail!11204 s!2326)))))

(assert (=> b!5719069 d!1804541))

(assert (=> b!5719069 d!1804271))

(declare-fun bs!1337252 () Bool)

(declare-fun d!1804543 () Bool)

(assert (= bs!1337252 (and d!1804543 d!1804385)))

(declare-fun lambda!309080 () Int)

(assert (=> bs!1337252 (= lambda!309080 lambda!309060)))

(declare-fun bs!1337253 () Bool)

(assert (= bs!1337253 (and d!1804543 d!1804461)))

(assert (=> bs!1337253 (= lambda!309080 lambda!309073)))

(declare-fun bs!1337254 () Bool)

(assert (= bs!1337254 (and d!1804543 d!1804505)))

(assert (=> bs!1337254 (= lambda!309080 lambda!309075)))

(declare-fun bs!1337255 () Bool)

(assert (= bs!1337255 (and d!1804543 d!1804539)))

(assert (=> bs!1337255 (= lambda!309080 lambda!309079)))

(assert (=> d!1804543 (= (nullableZipper!1665 z!1189) (exists!2225 z!1189 lambda!309080))))

(declare-fun bs!1337256 () Bool)

(assert (= bs!1337256 d!1804543))

(declare-fun m!6673512 () Bool)

(assert (=> bs!1337256 m!6673512))

(assert (=> b!5718770 d!1804543))

(declare-fun d!1804547 () Bool)

(assert (=> d!1804547 (= (isEmpty!35194 (tail!11206 (exprs!5599 (h!69770 zl!343)))) ((_ is Nil!63321) (tail!11206 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> b!5719127 d!1804547))

(declare-fun d!1804549 () Bool)

(assert (=> d!1804549 (= (tail!11206 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))

(assert (=> b!5719127 d!1804549))

(assert (=> b!5719076 d!1804541))

(assert (=> b!5719076 d!1804271))

(declare-fun bs!1337265 () Bool)

(declare-fun b!5720026 () Bool)

(assert (= bs!1337265 (and b!5720026 d!1804129)))

(declare-fun lambda!309082 () Int)

(assert (=> bs!1337265 (not (= lambda!309082 lambda!309019))))

(declare-fun bs!1337266 () Bool)

(assert (= bs!1337266 (and b!5720026 b!5718386)))

(assert (=> bs!1337266 (not (= lambda!309082 lambda!308952))))

(assert (=> bs!1337266 (not (= lambda!309082 lambda!308951))))

(declare-fun bs!1337267 () Bool)

(assert (= bs!1337267 (and b!5720026 b!5719974)))

(assert (=> bs!1337267 (not (= lambda!309082 lambda!309077))))

(declare-fun bs!1337268 () Bool)

(assert (= bs!1337268 (and b!5720026 b!5718490)))

(assert (=> bs!1337268 (not (= lambda!309082 lambda!308968))))

(declare-fun bs!1337269 () Bool)

(assert (= bs!1337269 (and b!5720026 d!1804319)))

(assert (=> bs!1337269 (not (= lambda!309082 lambda!309048))))

(declare-fun bs!1337270 () Bool)

(assert (= bs!1337270 (and b!5720026 b!5719082)))

(assert (=> bs!1337270 (not (= lambda!309082 lambda!309007))))

(declare-fun bs!1337271 () Bool)

(assert (= bs!1337271 (and b!5720026 b!5719976)))

(assert (=> bs!1337271 (= (and (= (reg!16044 (regTwo!31943 r!7292)) (reg!16044 (regTwo!31943 lt!2277714))) (= (regTwo!31943 r!7292) (regTwo!31943 lt!2277714))) (= lambda!309082 lambda!309076))))

(declare-fun bs!1337274 () Bool)

(assert (= bs!1337274 (and b!5720026 b!5719084)))

(assert (=> bs!1337274 (= (and (= (reg!16044 (regTwo!31943 r!7292)) (reg!16044 lt!2277714)) (= (regTwo!31943 r!7292) lt!2277714)) (= lambda!309082 lambda!309006))))

(declare-fun bs!1337276 () Bool)

(assert (= bs!1337276 (and b!5720026 b!5718492)))

(assert (=> bs!1337276 (= (and (= (reg!16044 (regTwo!31943 r!7292)) (reg!16044 r!7292)) (= (regTwo!31943 r!7292) r!7292)) (= lambda!309082 lambda!308967))))

(declare-fun bs!1337279 () Bool)

(assert (= bs!1337279 (and b!5720026 d!1804419)))

(assert (=> bs!1337279 (not (= lambda!309082 lambda!309067))))

(declare-fun bs!1337282 () Bool)

(assert (= bs!1337282 (and b!5720026 d!1804125)))

(assert (=> bs!1337282 (not (= lambda!309082 lambda!309016))))

(assert (=> bs!1337269 (not (= lambda!309082 lambda!309047))))

(assert (=> bs!1337282 (not (= lambda!309082 lambda!309015))))

(assert (=> b!5720026 true))

(assert (=> b!5720026 true))

(declare-fun bs!1337284 () Bool)

(declare-fun b!5720024 () Bool)

(assert (= bs!1337284 (and b!5720024 d!1804129)))

(declare-fun lambda!309084 () Int)

(assert (=> bs!1337284 (not (= lambda!309084 lambda!309019))))

(declare-fun bs!1337285 () Bool)

(assert (= bs!1337285 (and b!5720024 b!5720026)))

(assert (=> bs!1337285 (not (= lambda!309084 lambda!309082))))

(declare-fun bs!1337286 () Bool)

(assert (= bs!1337286 (and b!5720024 b!5718386)))

(assert (=> bs!1337286 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309084 lambda!308952))))

(assert (=> bs!1337286 (not (= lambda!309084 lambda!308951))))

(declare-fun bs!1337287 () Bool)

(assert (= bs!1337287 (and b!5720024 b!5719974)))

(assert (=> bs!1337287 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 (regTwo!31943 lt!2277714))) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 (regTwo!31943 lt!2277714)))) (= lambda!309084 lambda!309077))))

(declare-fun bs!1337288 () Bool)

(assert (= bs!1337288 (and b!5720024 b!5718490)))

(assert (=> bs!1337288 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309084 lambda!308968))))

(declare-fun bs!1337289 () Bool)

(assert (= bs!1337289 (and b!5720024 d!1804319)))

(assert (=> bs!1337289 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309084 lambda!309048))))

(declare-fun bs!1337290 () Bool)

(assert (= bs!1337290 (and b!5720024 b!5719082)))

(assert (=> bs!1337290 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 lt!2277714)) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 lt!2277714))) (= lambda!309084 lambda!309007))))

(declare-fun bs!1337291 () Bool)

(assert (= bs!1337291 (and b!5720024 b!5719976)))

(assert (=> bs!1337291 (not (= lambda!309084 lambda!309076))))

(declare-fun bs!1337292 () Bool)

(assert (= bs!1337292 (and b!5720024 b!5719084)))

(assert (=> bs!1337292 (not (= lambda!309084 lambda!309006))))

(declare-fun bs!1337293 () Bool)

(assert (= bs!1337293 (and b!5720024 b!5718492)))

(assert (=> bs!1337293 (not (= lambda!309084 lambda!308967))))

(declare-fun bs!1337294 () Bool)

(assert (= bs!1337294 (and b!5720024 d!1804419)))

(assert (=> bs!1337294 (not (= lambda!309084 lambda!309067))))

(declare-fun bs!1337295 () Bool)

(assert (= bs!1337295 (and b!5720024 d!1804125)))

(assert (=> bs!1337295 (= (and (= (regOne!31942 (regTwo!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regTwo!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309084 lambda!309016))))

(assert (=> bs!1337289 (not (= lambda!309084 lambda!309047))))

(assert (=> bs!1337295 (not (= lambda!309084 lambda!309015))))

(assert (=> b!5720024 true))

(assert (=> b!5720024 true))

(declare-fun b!5720021 () Bool)

(declare-fun c!1008767 () Bool)

(assert (=> b!5720021 (= c!1008767 ((_ is Union!15715) (regTwo!31943 r!7292)))))

(declare-fun e!3517512 () Bool)

(declare-fun e!3517507 () Bool)

(assert (=> b!5720021 (= e!3517512 e!3517507)))

(declare-fun b!5720022 () Bool)

(declare-fun e!3517509 () Bool)

(declare-fun call!436978 () Bool)

(assert (=> b!5720022 (= e!3517509 call!436978)))

(declare-fun b!5720023 () Bool)

(declare-fun e!3517511 () Bool)

(assert (=> b!5720023 (= e!3517509 e!3517511)))

(declare-fun res!2415007 () Bool)

(assert (=> b!5720023 (= res!2415007 (not ((_ is EmptyLang!15715) (regTwo!31943 r!7292))))))

(assert (=> b!5720023 (=> (not res!2415007) (not e!3517511))))

(declare-fun c!1008770 () Bool)

(declare-fun call!436977 () Bool)

(declare-fun bm!436972 () Bool)

(assert (=> bm!436972 (= call!436977 (Exists!2815 (ite c!1008770 lambda!309082 lambda!309084)))))

(declare-fun e!3517510 () Bool)

(assert (=> b!5720024 (= e!3517510 call!436977)))

(declare-fun b!5720025 () Bool)

(declare-fun c!1008769 () Bool)

(assert (=> b!5720025 (= c!1008769 ((_ is ElementMatch!15715) (regTwo!31943 r!7292)))))

(assert (=> b!5720025 (= e!3517511 e!3517512)))

(declare-fun e!3517506 () Bool)

(assert (=> b!5720026 (= e!3517506 call!436977)))

(declare-fun d!1804553 () Bool)

(declare-fun c!1008768 () Bool)

(assert (=> d!1804553 (= c!1008768 ((_ is EmptyExpr!15715) (regTwo!31943 r!7292)))))

(assert (=> d!1804553 (= (matchRSpec!2818 (regTwo!31943 r!7292) s!2326) e!3517509)))

(declare-fun b!5720027 () Bool)

(declare-fun e!3517508 () Bool)

(assert (=> b!5720027 (= e!3517507 e!3517508)))

(declare-fun res!2415006 () Bool)

(assert (=> b!5720027 (= res!2415006 (matchRSpec!2818 (regOne!31943 (regTwo!31943 r!7292)) s!2326))))

(assert (=> b!5720027 (=> res!2415006 e!3517508)))

(declare-fun b!5720028 () Bool)

(assert (=> b!5720028 (= e!3517508 (matchRSpec!2818 (regTwo!31943 (regTwo!31943 r!7292)) s!2326))))

(declare-fun b!5720029 () Bool)

(assert (=> b!5720029 (= e!3517512 (= s!2326 (Cons!63320 (c!1008289 (regTwo!31943 r!7292)) Nil!63320)))))

(declare-fun b!5720030 () Bool)

(assert (=> b!5720030 (= e!3517507 e!3517510)))

(assert (=> b!5720030 (= c!1008770 ((_ is Star!15715) (regTwo!31943 r!7292)))))

(declare-fun bm!436973 () Bool)

(assert (=> bm!436973 (= call!436978 (isEmpty!35197 s!2326))))

(declare-fun b!5720031 () Bool)

(declare-fun res!2415005 () Bool)

(assert (=> b!5720031 (=> res!2415005 e!3517506)))

(assert (=> b!5720031 (= res!2415005 call!436978)))

(assert (=> b!5720031 (= e!3517510 e!3517506)))

(assert (= (and d!1804553 c!1008768) b!5720022))

(assert (= (and d!1804553 (not c!1008768)) b!5720023))

(assert (= (and b!5720023 res!2415007) b!5720025))

(assert (= (and b!5720025 c!1008769) b!5720029))

(assert (= (and b!5720025 (not c!1008769)) b!5720021))

(assert (= (and b!5720021 c!1008767) b!5720027))

(assert (= (and b!5720021 (not c!1008767)) b!5720030))

(assert (= (and b!5720027 (not res!2415006)) b!5720028))

(assert (= (and b!5720030 c!1008770) b!5720031))

(assert (= (and b!5720030 (not c!1008770)) b!5720024))

(assert (= (and b!5720031 (not res!2415005)) b!5720026))

(assert (= (or b!5720026 b!5720024) bm!436972))

(assert (= (or b!5720022 b!5720031) bm!436973))

(declare-fun m!6673546 () Bool)

(assert (=> bm!436972 m!6673546))

(declare-fun m!6673548 () Bool)

(assert (=> b!5720027 m!6673548))

(declare-fun m!6673550 () Bool)

(assert (=> b!5720028 m!6673550))

(assert (=> bm!436973 m!6672120))

(assert (=> b!5718494 d!1804553))

(declare-fun d!1804579 () Bool)

(declare-fun res!2415023 () Bool)

(declare-fun e!3517534 () Bool)

(assert (=> d!1804579 (=> res!2415023 e!3517534)))

(assert (=> d!1804579 (= res!2415023 ((_ is Nil!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (=> d!1804579 (= (forall!14850 (exprs!5599 (h!69770 zl!343)) lambda!308981) e!3517534)))

(declare-fun b!5720060 () Bool)

(declare-fun e!3517535 () Bool)

(assert (=> b!5720060 (= e!3517534 e!3517535)))

(declare-fun res!2415024 () Bool)

(assert (=> b!5720060 (=> (not res!2415024) (not e!3517535))))

(assert (=> b!5720060 (= res!2415024 (dynLambda!24777 lambda!308981 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5720061 () Bool)

(assert (=> b!5720061 (= e!3517535 (forall!14850 (t!376767 (exprs!5599 (h!69770 zl!343))) lambda!308981))))

(assert (= (and d!1804579 (not res!2415023)) b!5720060))

(assert (= (and b!5720060 res!2415024) b!5720061))

(declare-fun b_lambda!216125 () Bool)

(assert (=> (not b_lambda!216125) (not b!5720060)))

(declare-fun m!6673558 () Bool)

(assert (=> b!5720060 m!6673558))

(declare-fun m!6673560 () Bool)

(assert (=> b!5720061 m!6673560))

(assert (=> d!1803987 d!1804579))

(assert (=> bs!1336907 d!1804061))

(declare-fun b!5720107 () Bool)

(declare-fun e!3517567 () Bool)

(declare-fun call!436997 () Bool)

(assert (=> b!5720107 (= e!3517567 call!436997)))

(declare-fun b!5720108 () Bool)

(declare-fun e!3517571 () Bool)

(declare-fun e!3517568 () Bool)

(assert (=> b!5720108 (= e!3517571 e!3517568)))

(declare-fun c!1008792 () Bool)

(assert (=> b!5720108 (= c!1008792 ((_ is Union!15715) (regOne!31942 (regOne!31942 r!7292))))))

(declare-fun bm!436992 () Bool)

(declare-fun call!436998 () Bool)

(assert (=> bm!436992 (= call!436998 (nullable!5747 (ite c!1008792 (regOne!31943 (regOne!31942 (regOne!31942 r!7292))) (regOne!31942 (regOne!31942 (regOne!31942 r!7292))))))))

(declare-fun bm!436993 () Bool)

(assert (=> bm!436993 (= call!436997 (nullable!5747 (ite c!1008792 (regTwo!31943 (regOne!31942 (regOne!31942 r!7292))) (regTwo!31942 (regOne!31942 (regOne!31942 r!7292))))))))

(declare-fun b!5720109 () Bool)

(declare-fun e!3517570 () Bool)

(assert (=> b!5720109 (= e!3517570 call!436997)))

(declare-fun b!5720110 () Bool)

(assert (=> b!5720110 (= e!3517568 e!3517570)))

(declare-fun res!2415042 () Bool)

(assert (=> b!5720110 (= res!2415042 call!436998)))

(assert (=> b!5720110 (=> res!2415042 e!3517570)))

(declare-fun b!5720111 () Bool)

(declare-fun e!3517566 () Bool)

(declare-fun e!3517569 () Bool)

(assert (=> b!5720111 (= e!3517566 e!3517569)))

(declare-fun res!2415046 () Bool)

(assert (=> b!5720111 (=> (not res!2415046) (not e!3517569))))

(assert (=> b!5720111 (= res!2415046 (and (not ((_ is EmptyLang!15715) (regOne!31942 (regOne!31942 r!7292)))) (not ((_ is ElementMatch!15715) (regOne!31942 (regOne!31942 r!7292))))))))

(declare-fun d!1804583 () Bool)

(declare-fun res!2415045 () Bool)

(assert (=> d!1804583 (=> res!2415045 e!3517566)))

(assert (=> d!1804583 (= res!2415045 ((_ is EmptyExpr!15715) (regOne!31942 (regOne!31942 r!7292))))))

(assert (=> d!1804583 (= (nullableFct!1811 (regOne!31942 (regOne!31942 r!7292))) e!3517566)))

(declare-fun b!5720112 () Bool)

(assert (=> b!5720112 (= e!3517568 e!3517567)))

(declare-fun res!2415043 () Bool)

(assert (=> b!5720112 (= res!2415043 call!436998)))

(assert (=> b!5720112 (=> (not res!2415043) (not e!3517567))))

(declare-fun b!5720113 () Bool)

(assert (=> b!5720113 (= e!3517569 e!3517571)))

(declare-fun res!2415044 () Bool)

(assert (=> b!5720113 (=> res!2415044 e!3517571)))

(assert (=> b!5720113 (= res!2415044 ((_ is Star!15715) (regOne!31942 (regOne!31942 r!7292))))))

(assert (= (and d!1804583 (not res!2415045)) b!5720111))

(assert (= (and b!5720111 res!2415046) b!5720113))

(assert (= (and b!5720113 (not res!2415044)) b!5720108))

(assert (= (and b!5720108 c!1008792) b!5720110))

(assert (= (and b!5720108 (not c!1008792)) b!5720112))

(assert (= (and b!5720110 (not res!2415042)) b!5720109))

(assert (= (and b!5720112 res!2415043) b!5720107))

(assert (= (or b!5720109 b!5720107) bm!436993))

(assert (= (or b!5720110 b!5720112) bm!436992))

(declare-fun m!6673612 () Bool)

(assert (=> bm!436992 m!6673612))

(declare-fun m!6673614 () Bool)

(assert (=> bm!436993 m!6673614))

(assert (=> d!1804133 d!1804583))

(declare-fun d!1804597 () Bool)

(declare-fun c!1008795 () Bool)

(assert (=> d!1804597 (= c!1008795 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun e!3517579 () Bool)

(assert (=> d!1804597 (= (matchZipper!1853 (derivationStepZipper!1798 lt!2277730 (head!12109 s!2326)) (tail!11204 s!2326)) e!3517579)))

(declare-fun b!5720123 () Bool)

(assert (=> b!5720123 (= e!3517579 (nullableZipper!1665 (derivationStepZipper!1798 lt!2277730 (head!12109 s!2326))))))

(declare-fun b!5720124 () Bool)

(assert (=> b!5720124 (= e!3517579 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 lt!2277730 (head!12109 s!2326)) (head!12109 (tail!11204 s!2326))) (tail!11204 (tail!11204 s!2326))))))

(assert (= (and d!1804597 c!1008795) b!5720123))

(assert (= (and d!1804597 (not c!1008795)) b!5720124))

(assert (=> d!1804597 m!6672188))

(assert (=> d!1804597 m!6672190))

(assert (=> b!5720123 m!6672254))

(declare-fun m!6673622 () Bool)

(assert (=> b!5720123 m!6673622))

(assert (=> b!5720124 m!6672188))

(assert (=> b!5720124 m!6672846))

(assert (=> b!5720124 m!6672254))

(assert (=> b!5720124 m!6672846))

(declare-fun m!6673624 () Bool)

(assert (=> b!5720124 m!6673624))

(assert (=> b!5720124 m!6672188))

(assert (=> b!5720124 m!6672848))

(assert (=> b!5720124 m!6673624))

(assert (=> b!5720124 m!6672848))

(declare-fun m!6673626 () Bool)

(assert (=> b!5720124 m!6673626))

(assert (=> b!5718727 d!1804597))

(declare-fun bs!1337313 () Bool)

(declare-fun d!1804601 () Bool)

(assert (= bs!1337313 (and d!1804601 d!1804467)))

(declare-fun lambda!309087 () Int)

(assert (=> bs!1337313 (= lambda!309087 lambda!309074)))

(declare-fun bs!1337316 () Bool)

(assert (= bs!1337316 (and d!1804601 d!1804379)))

(assert (=> bs!1337316 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309087 lambda!309057))))

(declare-fun bs!1337318 () Bool)

(assert (= bs!1337318 (and d!1804601 b!5718391)))

(assert (=> bs!1337318 (= (= (head!12109 s!2326) (h!69768 s!2326)) (= lambda!309087 lambda!308953))))

(declare-fun bs!1337320 () Bool)

(assert (= bs!1337320 (and d!1804601 d!1804089)))

(assert (=> bs!1337320 (= (= (head!12109 s!2326) (h!69768 s!2326)) (= lambda!309087 lambda!309005))))

(declare-fun bs!1337321 () Bool)

(assert (= bs!1337321 (and d!1804601 d!1804231)))

(assert (=> bs!1337321 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309087 lambda!309031))))

(declare-fun bs!1337323 () Bool)

(assert (= bs!1337323 (and d!1804601 d!1804457)))

(assert (=> bs!1337323 (= (= (head!12109 s!2326) (head!12109 (t!376766 s!2326))) (= lambda!309087 lambda!309072))))

(assert (=> d!1804601 true))

(assert (=> d!1804601 (= (derivationStepZipper!1798 lt!2277730 (head!12109 s!2326)) (flatMap!1328 lt!2277730 lambda!309087))))

(declare-fun bs!1337327 () Bool)

(assert (= bs!1337327 d!1804601))

(declare-fun m!6673628 () Bool)

(assert (=> bs!1337327 m!6673628))

(assert (=> b!5718727 d!1804601))

(assert (=> b!5718727 d!1804217))

(assert (=> b!5718727 d!1804271))

(declare-fun d!1804603 () Bool)

(declare-fun c!1008800 () Bool)

(assert (=> d!1804603 (= c!1008800 (isEmpty!35197 (tail!11204 (t!376766 s!2326))))))

(declare-fun e!3517586 () Bool)

(assert (=> d!1804603 (= (matchZipper!1853 (derivationStepZipper!1798 lt!2277735 (head!12109 (t!376766 s!2326))) (tail!11204 (t!376766 s!2326))) e!3517586)))

(declare-fun b!5720135 () Bool)

(assert (=> b!5720135 (= e!3517586 (nullableZipper!1665 (derivationStepZipper!1798 lt!2277735 (head!12109 (t!376766 s!2326)))))))

(declare-fun b!5720136 () Bool)

(assert (=> b!5720136 (= e!3517586 (matchZipper!1853 (derivationStepZipper!1798 (derivationStepZipper!1798 lt!2277735 (head!12109 (t!376766 s!2326))) (head!12109 (tail!11204 (t!376766 s!2326)))) (tail!11204 (tail!11204 (t!376766 s!2326)))))))

(assert (= (and d!1804603 c!1008800) b!5720135))

(assert (= (and d!1804603 (not c!1008800)) b!5720136))

(assert (=> d!1804603 m!6672232))

(assert (=> d!1804603 m!6672824))

(assert (=> b!5720135 m!6672230))

(declare-fun m!6673630 () Bool)

(assert (=> b!5720135 m!6673630))

(assert (=> b!5720136 m!6672232))

(assert (=> b!5720136 m!6672828))

(assert (=> b!5720136 m!6672230))

(assert (=> b!5720136 m!6672828))

(declare-fun m!6673632 () Bool)

(assert (=> b!5720136 m!6673632))

(assert (=> b!5720136 m!6672232))

(assert (=> b!5720136 m!6672832))

(assert (=> b!5720136 m!6673632))

(assert (=> b!5720136 m!6672832))

(declare-fun m!6673634 () Bool)

(assert (=> b!5720136 m!6673634))

(assert (=> b!5718656 d!1804603))

(declare-fun bs!1337331 () Bool)

(declare-fun d!1804605 () Bool)

(assert (= bs!1337331 (and d!1804605 d!1804467)))

(declare-fun lambda!309088 () Int)

(assert (=> bs!1337331 (= (= (head!12109 (t!376766 s!2326)) (head!12109 s!2326)) (= lambda!309088 lambda!309074))))

(declare-fun bs!1337332 () Bool)

(assert (= bs!1337332 (and d!1804605 d!1804601)))

(assert (=> bs!1337332 (= (= (head!12109 (t!376766 s!2326)) (head!12109 s!2326)) (= lambda!309088 lambda!309087))))

(declare-fun bs!1337333 () Bool)

(assert (= bs!1337333 (and d!1804605 d!1804379)))

(assert (=> bs!1337333 (= lambda!309088 lambda!309057)))

(declare-fun bs!1337334 () Bool)

(assert (= bs!1337334 (and d!1804605 b!5718391)))

(assert (=> bs!1337334 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309088 lambda!308953))))

(declare-fun bs!1337335 () Bool)

(assert (= bs!1337335 (and d!1804605 d!1804089)))

(assert (=> bs!1337335 (= (= (head!12109 (t!376766 s!2326)) (h!69768 s!2326)) (= lambda!309088 lambda!309005))))

(declare-fun bs!1337336 () Bool)

(assert (= bs!1337336 (and d!1804605 d!1804231)))

(assert (=> bs!1337336 (= lambda!309088 lambda!309031)))

(declare-fun bs!1337338 () Bool)

(assert (= bs!1337338 (and d!1804605 d!1804457)))

(assert (=> bs!1337338 (= lambda!309088 lambda!309072)))

(assert (=> d!1804605 true))

(assert (=> d!1804605 (= (derivationStepZipper!1798 lt!2277735 (head!12109 (t!376766 s!2326))) (flatMap!1328 lt!2277735 lambda!309088))))

(declare-fun bs!1337341 () Bool)

(assert (= bs!1337341 d!1804605))

(declare-fun m!6673656 () Bool)

(assert (=> bs!1337341 m!6673656))

(assert (=> b!5718656 d!1804605))

(assert (=> b!5718656 d!1804235))

(assert (=> b!5718656 d!1804237))

(declare-fun b!5720139 () Bool)

(declare-fun e!3517589 () Bool)

(declare-fun e!3517588 () Bool)

(assert (=> b!5720139 (= e!3517589 e!3517588)))

(declare-fun c!1008803 () Bool)

(assert (=> b!5720139 (= c!1008803 ((_ is EmptyLang!15715) (regTwo!31942 r!7292)))))

(declare-fun b!5720140 () Bool)

(declare-fun lt!2277889 () Bool)

(assert (=> b!5720140 (= e!3517588 (not lt!2277889))))

(declare-fun b!5720141 () Bool)

(declare-fun e!3517592 () Bool)

(assert (=> b!5720141 (= e!3517592 (not (= (head!12109 (_2!36115 (get!21832 lt!2277832))) (c!1008289 (regTwo!31942 r!7292)))))))

(declare-fun b!5720142 () Bool)

(declare-fun e!3517591 () Bool)

(assert (=> b!5720142 (= e!3517591 (= (head!12109 (_2!36115 (get!21832 lt!2277832))) (c!1008289 (regTwo!31942 r!7292))))))

(declare-fun b!5720143 () Bool)

(declare-fun res!2415057 () Bool)

(assert (=> b!5720143 (=> (not res!2415057) (not e!3517591))))

(assert (=> b!5720143 (= res!2415057 (isEmpty!35197 (tail!11204 (_2!36115 (get!21832 lt!2277832)))))))

(declare-fun b!5720144 () Bool)

(declare-fun e!3517594 () Bool)

(assert (=> b!5720144 (= e!3517594 e!3517592)))

(declare-fun res!2415056 () Bool)

(assert (=> b!5720144 (=> res!2415056 e!3517592)))

(declare-fun call!437002 () Bool)

(assert (=> b!5720144 (= res!2415056 call!437002)))

(declare-fun b!5720145 () Bool)

(assert (=> b!5720145 (= e!3517589 (= lt!2277889 call!437002))))

(declare-fun b!5720146 () Bool)

(declare-fun e!3517593 () Bool)

(assert (=> b!5720146 (= e!3517593 (matchR!7900 (derivativeStep!4518 (regTwo!31942 r!7292) (head!12109 (_2!36115 (get!21832 lt!2277832)))) (tail!11204 (_2!36115 (get!21832 lt!2277832)))))))

(declare-fun d!1804609 () Bool)

(assert (=> d!1804609 e!3517589))

(declare-fun c!1008802 () Bool)

(assert (=> d!1804609 (= c!1008802 ((_ is EmptyExpr!15715) (regTwo!31942 r!7292)))))

(assert (=> d!1804609 (= lt!2277889 e!3517593)))

(declare-fun c!1008804 () Bool)

(assert (=> d!1804609 (= c!1008804 (isEmpty!35197 (_2!36115 (get!21832 lt!2277832))))))

(assert (=> d!1804609 (validRegex!7451 (regTwo!31942 r!7292))))

(assert (=> d!1804609 (= (matchR!7900 (regTwo!31942 r!7292) (_2!36115 (get!21832 lt!2277832))) lt!2277889)))

(declare-fun b!5720147 () Bool)

(declare-fun res!2415054 () Bool)

(assert (=> b!5720147 (=> (not res!2415054) (not e!3517591))))

(assert (=> b!5720147 (= res!2415054 (not call!437002))))

(declare-fun b!5720148 () Bool)

(declare-fun res!2415060 () Bool)

(declare-fun e!3517590 () Bool)

(assert (=> b!5720148 (=> res!2415060 e!3517590)))

(assert (=> b!5720148 (= res!2415060 e!3517591)))

(declare-fun res!2415058 () Bool)

(assert (=> b!5720148 (=> (not res!2415058) (not e!3517591))))

(assert (=> b!5720148 (= res!2415058 lt!2277889)))

(declare-fun b!5720149 () Bool)

(assert (=> b!5720149 (= e!3517593 (nullable!5747 (regTwo!31942 r!7292)))))

(declare-fun bm!436997 () Bool)

(assert (=> bm!436997 (= call!437002 (isEmpty!35197 (_2!36115 (get!21832 lt!2277832))))))

(declare-fun b!5720150 () Bool)

(declare-fun res!2415061 () Bool)

(assert (=> b!5720150 (=> res!2415061 e!3517592)))

(assert (=> b!5720150 (= res!2415061 (not (isEmpty!35197 (tail!11204 (_2!36115 (get!21832 lt!2277832))))))))

(declare-fun b!5720151 () Bool)

(assert (=> b!5720151 (= e!3517590 e!3517594)))

(declare-fun res!2415059 () Bool)

(assert (=> b!5720151 (=> (not res!2415059) (not e!3517594))))

(assert (=> b!5720151 (= res!2415059 (not lt!2277889))))

(declare-fun b!5720152 () Bool)

(declare-fun res!2415055 () Bool)

(assert (=> b!5720152 (=> res!2415055 e!3517590)))

(assert (=> b!5720152 (= res!2415055 (not ((_ is ElementMatch!15715) (regTwo!31942 r!7292))))))

(assert (=> b!5720152 (= e!3517588 e!3517590)))

(assert (= (and d!1804609 c!1008804) b!5720149))

(assert (= (and d!1804609 (not c!1008804)) b!5720146))

(assert (= (and d!1804609 c!1008802) b!5720145))

(assert (= (and d!1804609 (not c!1008802)) b!5720139))

(assert (= (and b!5720139 c!1008803) b!5720140))

(assert (= (and b!5720139 (not c!1008803)) b!5720152))

(assert (= (and b!5720152 (not res!2415055)) b!5720148))

(assert (= (and b!5720148 res!2415058) b!5720147))

(assert (= (and b!5720147 res!2415054) b!5720143))

(assert (= (and b!5720143 res!2415057) b!5720142))

(assert (= (and b!5720148 (not res!2415060)) b!5720151))

(assert (= (and b!5720151 res!2415059) b!5720144))

(assert (= (and b!5720144 (not res!2415056)) b!5720150))

(assert (= (and b!5720150 (not res!2415061)) b!5720141))

(assert (= (or b!5720145 b!5720144 b!5720147) bm!436997))

(declare-fun m!6673660 () Bool)

(assert (=> b!5720142 m!6673660))

(declare-fun m!6673664 () Bool)

(assert (=> b!5720143 m!6673664))

(assert (=> b!5720143 m!6673664))

(declare-fun m!6673668 () Bool)

(assert (=> b!5720143 m!6673668))

(assert (=> b!5720149 m!6673278))

(assert (=> b!5720141 m!6673660))

(assert (=> b!5720150 m!6673664))

(assert (=> b!5720150 m!6673664))

(assert (=> b!5720150 m!6673668))

(declare-fun m!6673670 () Bool)

(assert (=> bm!436997 m!6673670))

(assert (=> d!1804609 m!6673670))

(assert (=> d!1804609 m!6673280))

(assert (=> b!5720146 m!6673660))

(assert (=> b!5720146 m!6673660))

(declare-fun m!6673672 () Bool)

(assert (=> b!5720146 m!6673672))

(assert (=> b!5720146 m!6673664))

(assert (=> b!5720146 m!6673672))

(assert (=> b!5720146 m!6673664))

(declare-fun m!6673674 () Bool)

(assert (=> b!5720146 m!6673674))

(assert (=> b!5719156 d!1804609))

(assert (=> b!5719156 d!1804357))

(assert (=> b!5718591 d!1804541))

(assert (=> b!5718591 d!1804271))

(declare-fun d!1804613 () Bool)

(assert (=> d!1804613 (= (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (nullableFct!1811 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(declare-fun bs!1337354 () Bool)

(assert (= bs!1337354 d!1804613))

(declare-fun m!6673676 () Bool)

(assert (=> bs!1337354 m!6673676))

(assert (=> b!5719008 d!1804613))

(declare-fun b!5720153 () Bool)

(declare-fun c!1008807 () Bool)

(declare-fun e!3517599 () Bool)

(assert (=> b!5720153 (= c!1008807 e!3517599)))

(declare-fun res!2415062 () Bool)

(assert (=> b!5720153 (=> (not res!2415062) (not e!3517599))))

(assert (=> b!5720153 (= res!2415062 ((_ is Concat!24560) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))))))

(declare-fun e!3517597 () (InoxSet Context!10198))

(declare-fun e!3517600 () (InoxSet Context!10198))

(assert (=> b!5720153 (= e!3517597 e!3517600)))

(declare-fun c!1008806 () Bool)

(declare-fun call!437008 () List!63445)

(declare-fun bm!436998 () Bool)

(declare-fun c!1008805 () Bool)

(declare-fun call!437006 () (InoxSet Context!10198))

(assert (=> bm!436998 (= call!437006 (derivationStepZipperDown!1057 (ite c!1008806 (regOne!31943 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (ite c!1008807 (regTwo!31942 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (ite c!1008805 (regOne!31942 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (reg!16044 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))))) (ite (or c!1008806 c!1008807) (ite c!1008494 lt!2277732 (Context!10199 call!436779)) (Context!10199 call!437008)) (h!69768 s!2326)))))

(declare-fun call!437004 () (InoxSet Context!10198))

(declare-fun bm!436999 () Bool)

(declare-fun call!437003 () List!63445)

(assert (=> bm!436999 (= call!437004 (derivationStepZipperDown!1057 (ite c!1008806 (regTwo!31943 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (regOne!31942 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))) (ite c!1008806 (ite c!1008494 lt!2277732 (Context!10199 call!436779)) (Context!10199 call!437003)) (h!69768 s!2326)))))

(declare-fun bm!437000 () Bool)

(declare-fun call!437007 () (InoxSet Context!10198))

(assert (=> bm!437000 (= call!437007 call!437006)))

(declare-fun b!5720154 () Bool)

(declare-fun e!3517598 () (InoxSet Context!10198))

(declare-fun call!437005 () (InoxSet Context!10198))

(assert (=> b!5720154 (= e!3517598 call!437005)))

(declare-fun b!5720155 () Bool)

(declare-fun e!3517596 () (InoxSet Context!10198))

(assert (=> b!5720155 (= e!3517596 (store ((as const (Array Context!10198 Bool)) false) (ite c!1008494 lt!2277732 (Context!10199 call!436779)) true))))

(declare-fun b!5720156 () Bool)

(assert (=> b!5720156 (= e!3517596 e!3517597)))

(assert (=> b!5720156 (= c!1008806 ((_ is Union!15715) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))))))

(declare-fun b!5720157 () Bool)

(assert (=> b!5720157 (= e!3517600 ((_ map or) call!437004 call!437007))))

(declare-fun b!5720158 () Bool)

(assert (=> b!5720158 (= e!3517599 (nullable!5747 (regOne!31942 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))))))

(declare-fun b!5720159 () Bool)

(declare-fun e!3517595 () (InoxSet Context!10198))

(assert (=> b!5720159 (= e!3517595 call!437005)))

(declare-fun b!5720160 () Bool)

(assert (=> b!5720160 (= e!3517597 ((_ map or) call!437006 call!437004))))

(declare-fun b!5720161 () Bool)

(assert (=> b!5720161 (= e!3517595 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5720162 () Bool)

(declare-fun c!1008808 () Bool)

(assert (=> b!5720162 (= c!1008808 ((_ is Star!15715) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))))))

(assert (=> b!5720162 (= e!3517598 e!3517595)))

(declare-fun c!1008809 () Bool)

(declare-fun d!1804615 () Bool)

(assert (=> d!1804615 (= c!1008809 (and ((_ is ElementMatch!15715) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (= (c!1008289 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (h!69768 s!2326))))))

(assert (=> d!1804615 (= (derivationStepZipperDown!1057 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))) (ite c!1008494 lt!2277732 (Context!10199 call!436779)) (h!69768 s!2326)) e!3517596)))

(declare-fun bm!437001 () Bool)

(assert (=> bm!437001 (= call!437003 ($colon$colon!1732 (exprs!5599 (ite c!1008494 lt!2277732 (Context!10199 call!436779))) (ite (or c!1008807 c!1008805) (regTwo!31942 (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292)))))))))

(declare-fun bm!437002 () Bool)

(assert (=> bm!437002 (= call!437008 call!437003)))

(declare-fun bm!437003 () Bool)

(assert (=> bm!437003 (= call!437005 call!437007)))

(declare-fun b!5720163 () Bool)

(assert (=> b!5720163 (= e!3517600 e!3517598)))

(assert (=> b!5720163 (= c!1008805 ((_ is Concat!24560) (ite c!1008494 (regTwo!31943 (reg!16044 (regOne!31942 r!7292))) (regOne!31942 (reg!16044 (regOne!31942 r!7292))))))))

(assert (= (and d!1804615 c!1008809) b!5720155))

(assert (= (and d!1804615 (not c!1008809)) b!5720156))

(assert (= (and b!5720156 c!1008806) b!5720160))

(assert (= (and b!5720156 (not c!1008806)) b!5720153))

(assert (= (and b!5720153 res!2415062) b!5720158))

(assert (= (and b!5720153 c!1008807) b!5720157))

(assert (= (and b!5720153 (not c!1008807)) b!5720163))

(assert (= (and b!5720163 c!1008805) b!5720154))

(assert (= (and b!5720163 (not c!1008805)) b!5720162))

(assert (= (and b!5720162 c!1008808) b!5720159))

(assert (= (and b!5720162 (not c!1008808)) b!5720161))

(assert (= (or b!5720154 b!5720159) bm!437002))

(assert (= (or b!5720154 b!5720159) bm!437003))

(assert (= (or b!5720157 bm!437002) bm!437001))

(assert (= (or b!5720157 bm!437003) bm!437000))

(assert (= (or b!5720160 b!5720157) bm!436999))

(assert (= (or b!5720160 bm!437000) bm!436998))

(declare-fun m!6673678 () Bool)

(assert (=> bm!436998 m!6673678))

(declare-fun m!6673680 () Bool)

(assert (=> b!5720155 m!6673680))

(declare-fun m!6673682 () Bool)

(assert (=> bm!437001 m!6673682))

(declare-fun m!6673684 () Bool)

(assert (=> b!5720158 m!6673684))

(declare-fun m!6673686 () Bool)

(assert (=> bm!436999 m!6673686))

(assert (=> bm!436775 d!1804615))

(declare-fun d!1804617 () Bool)

(assert (=> d!1804617 (= (nullable!5747 (h!69769 (exprs!5599 lt!2277736))) (nullableFct!1811 (h!69769 (exprs!5599 lt!2277736))))))

(declare-fun bs!1337355 () Bool)

(assert (= bs!1337355 d!1804617))

(declare-fun m!6673688 () Bool)

(assert (=> bs!1337355 m!6673688))

(assert (=> b!5718820 d!1804617))

(declare-fun d!1804619 () Bool)

(assert (=> d!1804619 (= (Exists!2815 (ite c!1008492 lambda!309006 lambda!309007)) (choose!43245 (ite c!1008492 lambda!309006 lambda!309007)))))

(declare-fun bs!1337356 () Bool)

(assert (= bs!1337356 d!1804619))

(declare-fun m!6673690 () Bool)

(assert (=> bs!1337356 m!6673690))

(assert (=> bm!436772 d!1804619))

(assert (=> b!5719068 d!1804217))

(declare-fun bs!1337357 () Bool)

(declare-fun d!1804621 () Bool)

(assert (= bs!1337357 (and d!1804621 d!1803977)))

(declare-fun lambda!309090 () Int)

(assert (=> bs!1337357 (= lambda!309090 lambda!308976)))

(declare-fun bs!1337358 () Bool)

(assert (= bs!1337358 (and d!1804621 d!1804343)))

(assert (=> bs!1337358 (= lambda!309090 lambda!309049)))

(declare-fun bs!1337359 () Bool)

(assert (= bs!1337359 (and d!1804621 d!1804077)))

(assert (=> bs!1337359 (= lambda!309090 lambda!308999)))

(declare-fun bs!1337360 () Bool)

(assert (= bs!1337360 (and d!1804621 d!1804079)))

(assert (=> bs!1337360 (= lambda!309090 lambda!309002)))

(declare-fun bs!1337361 () Bool)

(assert (= bs!1337361 (and d!1804621 d!1804119)))

(assert (=> bs!1337361 (= lambda!309090 lambda!309010)))

(declare-fun bs!1337362 () Bool)

(assert (= bs!1337362 (and d!1804621 d!1804367)))

(assert (=> bs!1337362 (= lambda!309090 lambda!309052)))

(declare-fun bs!1337363 () Bool)

(assert (= bs!1337363 (and d!1804621 d!1803987)))

(assert (=> bs!1337363 (= lambda!309090 lambda!308981)))

(declare-fun b!5720170 () Bool)

(declare-fun e!3517609 () Regex!15715)

(assert (=> b!5720170 (= e!3517609 (h!69769 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun e!3517608 () Bool)

(assert (=> d!1804621 e!3517608))

(declare-fun res!2415069 () Bool)

(assert (=> d!1804621 (=> (not res!2415069) (not e!3517608))))

(declare-fun lt!2277890 () Regex!15715)

(assert (=> d!1804621 (= res!2415069 (validRegex!7451 lt!2277890))))

(assert (=> d!1804621 (= lt!2277890 e!3517609)))

(declare-fun c!1008811 () Bool)

(declare-fun e!3517611 () Bool)

(assert (=> d!1804621 (= c!1008811 e!3517611)))

(declare-fun res!2415070 () Bool)

(assert (=> d!1804621 (=> (not res!2415070) (not e!3517611))))

(assert (=> d!1804621 (= res!2415070 ((_ is Cons!63321) (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> d!1804621 (forall!14850 (t!376767 (exprs!5599 (h!69770 zl!343))) lambda!309090)))

(assert (=> d!1804621 (= (generalisedConcat!1330 (t!376767 (exprs!5599 (h!69770 zl!343)))) lt!2277890)))

(declare-fun b!5720171 () Bool)

(declare-fun e!3517610 () Regex!15715)

(assert (=> b!5720171 (= e!3517610 (Concat!24560 (h!69769 (t!376767 (exprs!5599 (h!69770 zl!343)))) (generalisedConcat!1330 (t!376767 (t!376767 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun b!5720172 () Bool)

(declare-fun e!3517612 () Bool)

(assert (=> b!5720172 (= e!3517612 (= lt!2277890 (head!12111 (t!376767 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5720173 () Bool)

(assert (=> b!5720173 (= e!3517610 EmptyExpr!15715)))

(declare-fun b!5720174 () Bool)

(declare-fun e!3517607 () Bool)

(assert (=> b!5720174 (= e!3517608 e!3517607)))

(declare-fun c!1008812 () Bool)

(assert (=> b!5720174 (= c!1008812 (isEmpty!35194 (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5720175 () Bool)

(assert (=> b!5720175 (= e!3517607 (isEmptyExpr!1223 lt!2277890))))

(declare-fun b!5720176 () Bool)

(assert (=> b!5720176 (= e!3517607 e!3517612)))

(declare-fun c!1008810 () Bool)

(assert (=> b!5720176 (= c!1008810 (isEmpty!35194 (tail!11206 (t!376767 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5720177 () Bool)

(assert (=> b!5720177 (= e!3517612 (isConcat!746 lt!2277890))))

(declare-fun b!5720178 () Bool)

(assert (=> b!5720178 (= e!3517611 (isEmpty!35194 (t!376767 (t!376767 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun b!5720179 () Bool)

(assert (=> b!5720179 (= e!3517609 e!3517610)))

(declare-fun c!1008813 () Bool)

(assert (=> b!5720179 (= c!1008813 ((_ is Cons!63321) (t!376767 (exprs!5599 (h!69770 zl!343)))))))

(assert (= (and d!1804621 res!2415070) b!5720178))

(assert (= (and d!1804621 c!1008811) b!5720170))

(assert (= (and d!1804621 (not c!1008811)) b!5720179))

(assert (= (and b!5720179 c!1008813) b!5720171))

(assert (= (and b!5720179 (not c!1008813)) b!5720173))

(assert (= (and d!1804621 res!2415069) b!5720174))

(assert (= (and b!5720174 c!1008812) b!5720175))

(assert (= (and b!5720174 (not c!1008812)) b!5720176))

(assert (= (and b!5720176 c!1008810) b!5720172))

(assert (= (and b!5720176 (not c!1008810)) b!5720177))

(declare-fun m!6673696 () Bool)

(assert (=> b!5720175 m!6673696))

(declare-fun m!6673698 () Bool)

(assert (=> b!5720178 m!6673698))

(declare-fun m!6673700 () Bool)

(assert (=> b!5720171 m!6673700))

(declare-fun m!6673702 () Bool)

(assert (=> b!5720177 m!6673702))

(declare-fun m!6673704 () Bool)

(assert (=> d!1804621 m!6673704))

(declare-fun m!6673706 () Bool)

(assert (=> d!1804621 m!6673706))

(assert (=> b!5720174 m!6672058))

(declare-fun m!6673708 () Bool)

(assert (=> b!5720172 m!6673708))

(declare-fun m!6673710 () Bool)

(assert (=> b!5720176 m!6673710))

(assert (=> b!5720176 m!6673710))

(declare-fun m!6673712 () Bool)

(assert (=> b!5720176 m!6673712))

(assert (=> b!5719122 d!1804621))

(assert (=> d!1803991 d!1804299))

(declare-fun c!1008814 () Bool)

(declare-fun bm!437004 () Bool)

(declare-fun c!1008815 () Bool)

(declare-fun call!437009 () Bool)

(assert (=> bm!437004 (= call!437009 (validRegex!7451 (ite c!1008814 (reg!16044 lt!2277817) (ite c!1008815 (regOne!31943 lt!2277817) (regOne!31942 lt!2277817)))))))

(declare-fun b!5720186 () Bool)

(declare-fun res!2415079 () Bool)

(declare-fun e!3517622 () Bool)

(assert (=> b!5720186 (=> (not res!2415079) (not e!3517622))))

(declare-fun call!437010 () Bool)

(assert (=> b!5720186 (= res!2415079 call!437010)))

(declare-fun e!3517620 () Bool)

(assert (=> b!5720186 (= e!3517620 e!3517622)))

(declare-fun b!5720187 () Bool)

(declare-fun e!3517619 () Bool)

(declare-fun call!437011 () Bool)

(assert (=> b!5720187 (= e!3517619 call!437011)))

(declare-fun b!5720188 () Bool)

(assert (=> b!5720188 (= e!3517622 call!437011)))

(declare-fun b!5720189 () Bool)

(declare-fun e!3517623 () Bool)

(declare-fun e!3517624 () Bool)

(assert (=> b!5720189 (= e!3517623 e!3517624)))

(assert (=> b!5720189 (= c!1008814 ((_ is Star!15715) lt!2277817))))

(declare-fun b!5720190 () Bool)

(declare-fun e!3517625 () Bool)

(assert (=> b!5720190 (= e!3517624 e!3517625)))

(declare-fun res!2415076 () Bool)

(assert (=> b!5720190 (= res!2415076 (not (nullable!5747 (reg!16044 lt!2277817))))))

(assert (=> b!5720190 (=> (not res!2415076) (not e!3517625))))

(declare-fun bm!437005 () Bool)

(assert (=> bm!437005 (= call!437010 call!437009)))

(declare-fun b!5720192 () Bool)

(declare-fun e!3517621 () Bool)

(assert (=> b!5720192 (= e!3517621 e!3517619)))

(declare-fun res!2415075 () Bool)

(assert (=> b!5720192 (=> (not res!2415075) (not e!3517619))))

(assert (=> b!5720192 (= res!2415075 call!437010)))

(declare-fun bm!437006 () Bool)

(assert (=> bm!437006 (= call!437011 (validRegex!7451 (ite c!1008815 (regTwo!31943 lt!2277817) (regTwo!31942 lt!2277817))))))

(declare-fun b!5720193 () Bool)

(declare-fun res!2415077 () Bool)

(assert (=> b!5720193 (=> res!2415077 e!3517621)))

(assert (=> b!5720193 (= res!2415077 (not ((_ is Concat!24560) lt!2277817)))))

(assert (=> b!5720193 (= e!3517620 e!3517621)))

(declare-fun b!5720194 () Bool)

(assert (=> b!5720194 (= e!3517624 e!3517620)))

(assert (=> b!5720194 (= c!1008815 ((_ is Union!15715) lt!2277817))))

(declare-fun d!1804625 () Bool)

(declare-fun res!2415078 () Bool)

(assert (=> d!1804625 (=> res!2415078 e!3517623)))

(assert (=> d!1804625 (= res!2415078 ((_ is ElementMatch!15715) lt!2277817))))

(assert (=> d!1804625 (= (validRegex!7451 lt!2277817) e!3517623)))

(declare-fun b!5720191 () Bool)

(assert (=> b!5720191 (= e!3517625 call!437009)))

(assert (= (and d!1804625 (not res!2415078)) b!5720189))

(assert (= (and b!5720189 c!1008814) b!5720190))

(assert (= (and b!5720189 (not c!1008814)) b!5720194))

(assert (= (and b!5720190 res!2415076) b!5720191))

(assert (= (and b!5720194 c!1008815) b!5720186))

(assert (= (and b!5720194 (not c!1008815)) b!5720193))

(assert (= (and b!5720186 res!2415079) b!5720188))

(assert (= (and b!5720193 (not res!2415077)) b!5720192))

(assert (= (and b!5720192 res!2415075) b!5720187))

(assert (= (or b!5720188 b!5720187) bm!437006))

(assert (= (or b!5720186 b!5720192) bm!437005))

(assert (= (or b!5720191 bm!437005) bm!437004))

(declare-fun m!6673714 () Bool)

(assert (=> bm!437004 m!6673714))

(declare-fun m!6673716 () Bool)

(assert (=> b!5720190 m!6673716))

(declare-fun m!6673720 () Bool)

(assert (=> bm!437006 m!6673720))

(assert (=> d!1804101 d!1804625))

(declare-fun bs!1337364 () Bool)

(declare-fun d!1804627 () Bool)

(assert (= bs!1337364 (and d!1804627 d!1803977)))

(declare-fun lambda!309091 () Int)

(assert (=> bs!1337364 (= lambda!309091 lambda!308976)))

(declare-fun bs!1337365 () Bool)

(assert (= bs!1337365 (and d!1804627 d!1804621)))

(assert (=> bs!1337365 (= lambda!309091 lambda!309090)))

(declare-fun bs!1337366 () Bool)

(assert (= bs!1337366 (and d!1804627 d!1804343)))

(assert (=> bs!1337366 (= lambda!309091 lambda!309049)))

(declare-fun bs!1337367 () Bool)

(assert (= bs!1337367 (and d!1804627 d!1804077)))

(assert (=> bs!1337367 (= lambda!309091 lambda!308999)))

(declare-fun bs!1337368 () Bool)

(assert (= bs!1337368 (and d!1804627 d!1804079)))

(assert (=> bs!1337368 (= lambda!309091 lambda!309002)))

(declare-fun bs!1337369 () Bool)

(assert (= bs!1337369 (and d!1804627 d!1804119)))

(assert (=> bs!1337369 (= lambda!309091 lambda!309010)))

(declare-fun bs!1337370 () Bool)

(assert (= bs!1337370 (and d!1804627 d!1804367)))

(assert (=> bs!1337370 (= lambda!309091 lambda!309052)))

(declare-fun bs!1337371 () Bool)

(assert (= bs!1337371 (and d!1804627 d!1803987)))

(assert (=> bs!1337371 (= lambda!309091 lambda!308981)))

(declare-fun e!3517631 () Bool)

(assert (=> d!1804627 e!3517631))

(declare-fun res!2415082 () Bool)

(assert (=> d!1804627 (=> (not res!2415082) (not e!3517631))))

(declare-fun lt!2277891 () Regex!15715)

(assert (=> d!1804627 (= res!2415082 (validRegex!7451 lt!2277891))))

(declare-fun e!3517629 () Regex!15715)

(assert (=> d!1804627 (= lt!2277891 e!3517629)))

(declare-fun c!1008817 () Bool)

(declare-fun e!3517634 () Bool)

(assert (=> d!1804627 (= c!1008817 e!3517634)))

(declare-fun res!2415083 () Bool)

(assert (=> d!1804627 (=> (not res!2415083) (not e!3517634))))

(assert (=> d!1804627 (= res!2415083 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))

(assert (=> d!1804627 (forall!14850 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322)) lambda!309091)))

(assert (=> d!1804627 (= (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))) lt!2277891)))

(declare-fun b!5720198 () Bool)

(declare-fun e!3517633 () Regex!15715)

(assert (=> b!5720198 (= e!3517633 EmptyLang!15715)))

(declare-fun b!5720199 () Bool)

(assert (=> b!5720199 (= e!3517629 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))

(declare-fun b!5720200 () Bool)

(assert (=> b!5720200 (= e!3517633 (Union!15715 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))) (generalisedUnion!1578 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))))

(declare-fun b!5720201 () Bool)

(declare-fun e!3517632 () Bool)

(assert (=> b!5720201 (= e!3517632 (isUnion!664 lt!2277891))))

(declare-fun b!5720202 () Bool)

(assert (=> b!5720202 (= e!3517634 (isEmpty!35194 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322)))))))

(declare-fun b!5720203 () Bool)

(declare-fun e!3517630 () Bool)

(assert (=> b!5720203 (= e!3517630 (isEmptyLang!1234 lt!2277891))))

(declare-fun b!5720204 () Bool)

(assert (=> b!5720204 (= e!3517631 e!3517630)))

(declare-fun c!1008818 () Bool)

(assert (=> b!5720204 (= c!1008818 (isEmpty!35194 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))

(declare-fun b!5720205 () Bool)

(assert (=> b!5720205 (= e!3517629 e!3517633)))

(declare-fun c!1008819 () Bool)

(assert (=> b!5720205 (= c!1008819 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322))))))

(declare-fun b!5720206 () Bool)

(assert (=> b!5720206 (= e!3517632 (= lt!2277891 (head!12111 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322)))))))

(declare-fun b!5720207 () Bool)

(assert (=> b!5720207 (= e!3517630 e!3517632)))

(declare-fun c!1008816 () Bool)

(assert (=> b!5720207 (= c!1008816 (isEmpty!35194 (tail!11206 (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322)))))))

(assert (= (and d!1804627 res!2415083) b!5720202))

(assert (= (and d!1804627 c!1008817) b!5720199))

(assert (= (and d!1804627 (not c!1008817)) b!5720205))

(assert (= (and b!5720205 c!1008819) b!5720200))

(assert (= (and b!5720205 (not c!1008819)) b!5720198))

(assert (= (and d!1804627 res!2415082) b!5720204))

(assert (= (and b!5720204 c!1008818) b!5720203))

(assert (= (and b!5720204 (not c!1008818)) b!5720207))

(assert (= (and b!5720207 c!1008816) b!5720206))

(assert (= (and b!5720207 (not c!1008816)) b!5720201))

(declare-fun m!6673730 () Bool)

(assert (=> b!5720203 m!6673730))

(declare-fun m!6673732 () Bool)

(assert (=> b!5720202 m!6673732))

(assert (=> b!5720204 m!6672542))

(declare-fun m!6673734 () Bool)

(assert (=> b!5720204 m!6673734))

(assert (=> b!5720206 m!6672542))

(declare-fun m!6673736 () Bool)

(assert (=> b!5720206 m!6673736))

(declare-fun m!6673738 () Bool)

(assert (=> d!1804627 m!6673738))

(assert (=> d!1804627 m!6672542))

(declare-fun m!6673740 () Bool)

(assert (=> d!1804627 m!6673740))

(declare-fun m!6673742 () Bool)

(assert (=> b!5720200 m!6673742))

(assert (=> b!5720207 m!6672542))

(declare-fun m!6673744 () Bool)

(assert (=> b!5720207 m!6673744))

(assert (=> b!5720207 m!6673744))

(declare-fun m!6673746 () Bool)

(assert (=> b!5720207 m!6673746))

(declare-fun m!6673748 () Bool)

(assert (=> b!5720201 m!6673748))

(assert (=> d!1804101 d!1804627))

(declare-fun bs!1337372 () Bool)

(declare-fun d!1804629 () Bool)

(assert (= bs!1337372 (and d!1804629 d!1803977)))

(declare-fun lambda!309092 () Int)

(assert (=> bs!1337372 (= lambda!309092 lambda!308976)))

(declare-fun bs!1337373 () Bool)

(assert (= bs!1337373 (and d!1804629 d!1804621)))

(assert (=> bs!1337373 (= lambda!309092 lambda!309090)))

(declare-fun bs!1337374 () Bool)

(assert (= bs!1337374 (and d!1804629 d!1804343)))

(assert (=> bs!1337374 (= lambda!309092 lambda!309049)))

(declare-fun bs!1337375 () Bool)

(assert (= bs!1337375 (and d!1804629 d!1804077)))

(assert (=> bs!1337375 (= lambda!309092 lambda!308999)))

(declare-fun bs!1337376 () Bool)

(assert (= bs!1337376 (and d!1804629 d!1804079)))

(assert (=> bs!1337376 (= lambda!309092 lambda!309002)))

(declare-fun bs!1337377 () Bool)

(assert (= bs!1337377 (and d!1804629 d!1804627)))

(assert (=> bs!1337377 (= lambda!309092 lambda!309091)))

(declare-fun bs!1337378 () Bool)

(assert (= bs!1337378 (and d!1804629 d!1804119)))

(assert (=> bs!1337378 (= lambda!309092 lambda!309010)))

(declare-fun bs!1337379 () Bool)

(assert (= bs!1337379 (and d!1804629 d!1804367)))

(assert (=> bs!1337379 (= lambda!309092 lambda!309052)))

(declare-fun bs!1337380 () Bool)

(assert (= bs!1337380 (and d!1804629 d!1803987)))

(assert (=> bs!1337380 (= lambda!309092 lambda!308981)))

(declare-fun lt!2277892 () List!63445)

(assert (=> d!1804629 (forall!14850 lt!2277892 lambda!309092)))

(declare-fun e!3517645 () List!63445)

(assert (=> d!1804629 (= lt!2277892 e!3517645)))

(declare-fun c!1008820 () Bool)

(assert (=> d!1804629 (= c!1008820 ((_ is Cons!63322) (Cons!63322 lt!2277713 Nil!63322)))))

(assert (=> d!1804629 (= (unfocusZipperList!1143 (Cons!63322 lt!2277713 Nil!63322)) lt!2277892)))

(declare-fun b!5720230 () Bool)

(assert (=> b!5720230 (= e!3517645 (Cons!63321 (generalisedConcat!1330 (exprs!5599 (h!69770 (Cons!63322 lt!2277713 Nil!63322)))) (unfocusZipperList!1143 (t!376768 (Cons!63322 lt!2277713 Nil!63322)))))))

(declare-fun b!5720231 () Bool)

(assert (=> b!5720231 (= e!3517645 Nil!63321)))

(assert (= (and d!1804629 c!1008820) b!5720230))

(assert (= (and d!1804629 (not c!1008820)) b!5720231))

(declare-fun m!6673750 () Bool)

(assert (=> d!1804629 m!6673750))

(declare-fun m!6673752 () Bool)

(assert (=> b!5720230 m!6673752))

(declare-fun m!6673754 () Bool)

(assert (=> b!5720230 m!6673754))

(assert (=> d!1804101 d!1804629))

(declare-fun b!5720261 () Bool)

(declare-fun c!1008823 () Bool)

(declare-fun e!3517658 () Bool)

(assert (=> b!5720261 (= c!1008823 e!3517658)))

(declare-fun res!2415084 () Bool)

(assert (=> b!5720261 (=> (not res!2415084) (not e!3517658))))

(assert (=> b!5720261 (= res!2415084 ((_ is Concat!24560) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun e!3517656 () (InoxSet Context!10198))

(declare-fun e!3517659 () (InoxSet Context!10198))

(assert (=> b!5720261 (= e!3517656 e!3517659)))

(declare-fun bm!437007 () Bool)

(declare-fun c!1008821 () Bool)

(declare-fun c!1008822 () Bool)

(declare-fun call!437017 () List!63445)

(declare-fun call!437015 () (InoxSet Context!10198))

(assert (=> bm!437007 (= call!437015 (derivationStepZipperDown!1057 (ite c!1008822 (regOne!31943 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (ite c!1008823 (regTwo!31942 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (ite c!1008821 (regOne!31942 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (reg!16044 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))) (ite (or c!1008822 c!1008823) (ite c!1008455 lt!2277736 (Context!10199 call!436765)) (Context!10199 call!437017)) (h!69768 s!2326)))))

(declare-fun bm!437008 () Bool)

(declare-fun call!437012 () List!63445)

(declare-fun call!437013 () (InoxSet Context!10198))

(assert (=> bm!437008 (= call!437013 (derivationStepZipperDown!1057 (ite c!1008822 (regTwo!31943 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (regOne!31942 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))) (ite c!1008822 (ite c!1008455 lt!2277736 (Context!10199 call!436765)) (Context!10199 call!437012)) (h!69768 s!2326)))))

(declare-fun bm!437009 () Bool)

(declare-fun call!437016 () (InoxSet Context!10198))

(assert (=> bm!437009 (= call!437016 call!437015)))

(declare-fun b!5720262 () Bool)

(declare-fun e!3517657 () (InoxSet Context!10198))

(declare-fun call!437014 () (InoxSet Context!10198))

(assert (=> b!5720262 (= e!3517657 call!437014)))

(declare-fun e!3517655 () (InoxSet Context!10198))

(declare-fun b!5720263 () Bool)

(assert (=> b!5720263 (= e!3517655 (store ((as const (Array Context!10198 Bool)) false) (ite c!1008455 lt!2277736 (Context!10199 call!436765)) true))))

(declare-fun b!5720264 () Bool)

(assert (=> b!5720264 (= e!3517655 e!3517656)))

(assert (=> b!5720264 (= c!1008822 ((_ is Union!15715) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun b!5720265 () Bool)

(assert (=> b!5720265 (= e!3517659 ((_ map or) call!437013 call!437016))))

(declare-fun b!5720266 () Bool)

(assert (=> b!5720266 (= e!3517658 (nullable!5747 (regOne!31942 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))))

(declare-fun b!5720267 () Bool)

(declare-fun e!3517654 () (InoxSet Context!10198))

(assert (=> b!5720267 (= e!3517654 call!437014)))

(declare-fun b!5720268 () Bool)

(assert (=> b!5720268 (= e!3517656 ((_ map or) call!437015 call!437013))))

(declare-fun b!5720269 () Bool)

(assert (=> b!5720269 (= e!3517654 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5720270 () Bool)

(declare-fun c!1008824 () Bool)

(assert (=> b!5720270 (= c!1008824 ((_ is Star!15715) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(assert (=> b!5720270 (= e!3517657 e!3517654)))

(declare-fun d!1804631 () Bool)

(declare-fun c!1008825 () Bool)

(assert (=> d!1804631 (= c!1008825 (and ((_ is ElementMatch!15715) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (= (c!1008289 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (h!69768 s!2326))))))

(assert (=> d!1804631 (= (derivationStepZipperDown!1057 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))) (ite c!1008455 lt!2277736 (Context!10199 call!436765)) (h!69768 s!2326)) e!3517655)))

(declare-fun bm!437010 () Bool)

(assert (=> bm!437010 (= call!437012 ($colon$colon!1732 (exprs!5599 (ite c!1008455 lt!2277736 (Context!10199 call!436765))) (ite (or c!1008823 c!1008821) (regTwo!31942 (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))))

(declare-fun bm!437011 () Bool)

(assert (=> bm!437011 (= call!437017 call!437012)))

(declare-fun bm!437012 () Bool)

(assert (=> bm!437012 (= call!437014 call!437016)))

(declare-fun b!5720271 () Bool)

(assert (=> b!5720271 (= e!3517659 e!3517657)))

(assert (=> b!5720271 (= c!1008821 ((_ is Concat!24560) (ite c!1008455 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(assert (= (and d!1804631 c!1008825) b!5720263))

(assert (= (and d!1804631 (not c!1008825)) b!5720264))

(assert (= (and b!5720264 c!1008822) b!5720268))

(assert (= (and b!5720264 (not c!1008822)) b!5720261))

(assert (= (and b!5720261 res!2415084) b!5720266))

(assert (= (and b!5720261 c!1008823) b!5720265))

(assert (= (and b!5720261 (not c!1008823)) b!5720271))

(assert (= (and b!5720271 c!1008821) b!5720262))

(assert (= (and b!5720271 (not c!1008821)) b!5720270))

(assert (= (and b!5720270 c!1008824) b!5720267))

(assert (= (and b!5720270 (not c!1008824)) b!5720269))

(assert (= (or b!5720262 b!5720267) bm!437011))

(assert (= (or b!5720262 b!5720267) bm!437012))

(assert (= (or b!5720265 bm!437011) bm!437010))

(assert (= (or b!5720265 bm!437012) bm!437009))

(assert (= (or b!5720268 b!5720265) bm!437008))

(assert (= (or b!5720268 bm!437009) bm!437007))

(declare-fun m!6673756 () Bool)

(assert (=> bm!437007 m!6673756))

(declare-fun m!6673758 () Bool)

(assert (=> b!5720263 m!6673758))

(declare-fun m!6673760 () Bool)

(assert (=> bm!437010 m!6673760))

(declare-fun m!6673762 () Bool)

(assert (=> b!5720266 m!6673762))

(declare-fun m!6673764 () Bool)

(assert (=> bm!437008 m!6673764))

(assert (=> bm!436761 d!1804631))

(declare-fun bs!1337381 () Bool)

(declare-fun b!5720306 () Bool)

(assert (= bs!1337381 (and b!5720306 d!1804129)))

(declare-fun lambda!309093 () Int)

(assert (=> bs!1337381 (not (= lambda!309093 lambda!309019))))

(declare-fun bs!1337382 () Bool)

(assert (= bs!1337382 (and b!5720306 b!5720026)))

(assert (=> bs!1337382 (= (and (= (reg!16044 (regOne!31943 lt!2277714)) (reg!16044 (regTwo!31943 r!7292))) (= (regOne!31943 lt!2277714) (regTwo!31943 r!7292))) (= lambda!309093 lambda!309082))))

(declare-fun bs!1337383 () Bool)

(assert (= bs!1337383 (and b!5720306 b!5718386)))

(assert (=> bs!1337383 (not (= lambda!309093 lambda!308952))))

(assert (=> bs!1337383 (not (= lambda!309093 lambda!308951))))

(declare-fun bs!1337384 () Bool)

(assert (= bs!1337384 (and b!5720306 b!5719974)))

(assert (=> bs!1337384 (not (= lambda!309093 lambda!309077))))

(declare-fun bs!1337385 () Bool)

(assert (= bs!1337385 (and b!5720306 b!5718490)))

(assert (=> bs!1337385 (not (= lambda!309093 lambda!308968))))

(declare-fun bs!1337386 () Bool)

(assert (= bs!1337386 (and b!5720306 d!1804319)))

(assert (=> bs!1337386 (not (= lambda!309093 lambda!309048))))

(declare-fun bs!1337387 () Bool)

(assert (= bs!1337387 (and b!5720306 b!5719082)))

(assert (=> bs!1337387 (not (= lambda!309093 lambda!309007))))

(declare-fun bs!1337388 () Bool)

(assert (= bs!1337388 (and b!5720306 b!5719976)))

(assert (=> bs!1337388 (= (and (= (reg!16044 (regOne!31943 lt!2277714)) (reg!16044 (regTwo!31943 lt!2277714))) (= (regOne!31943 lt!2277714) (regTwo!31943 lt!2277714))) (= lambda!309093 lambda!309076))))

(declare-fun bs!1337389 () Bool)

(assert (= bs!1337389 (and b!5720306 b!5719084)))

(assert (=> bs!1337389 (= (and (= (reg!16044 (regOne!31943 lt!2277714)) (reg!16044 lt!2277714)) (= (regOne!31943 lt!2277714) lt!2277714)) (= lambda!309093 lambda!309006))))

(declare-fun bs!1337390 () Bool)

(assert (= bs!1337390 (and b!5720306 b!5718492)))

(assert (=> bs!1337390 (= (and (= (reg!16044 (regOne!31943 lt!2277714)) (reg!16044 r!7292)) (= (regOne!31943 lt!2277714) r!7292)) (= lambda!309093 lambda!308967))))

(declare-fun bs!1337391 () Bool)

(assert (= bs!1337391 (and b!5720306 d!1804125)))

(assert (=> bs!1337391 (not (= lambda!309093 lambda!309016))))

(assert (=> bs!1337386 (not (= lambda!309093 lambda!309047))))

(assert (=> bs!1337391 (not (= lambda!309093 lambda!309015))))

(declare-fun bs!1337395 () Bool)

(assert (= bs!1337395 (and b!5720306 b!5720024)))

(assert (=> bs!1337395 (not (= lambda!309093 lambda!309084))))

(declare-fun bs!1337397 () Bool)

(assert (= bs!1337397 (and b!5720306 d!1804419)))

(assert (=> bs!1337397 (not (= lambda!309093 lambda!309067))))

(assert (=> b!5720306 true))

(assert (=> b!5720306 true))

(declare-fun bs!1337399 () Bool)

(declare-fun b!5720304 () Bool)

(assert (= bs!1337399 (and b!5720304 d!1804129)))

(declare-fun lambda!309094 () Int)

(assert (=> bs!1337399 (not (= lambda!309094 lambda!309019))))

(declare-fun bs!1337400 () Bool)

(assert (= bs!1337400 (and b!5720304 b!5720026)))

(assert (=> bs!1337400 (not (= lambda!309094 lambda!309082))))

(declare-fun bs!1337401 () Bool)

(assert (= bs!1337401 (and b!5720304 b!5718386)))

(assert (=> bs!1337401 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309094 lambda!308952))))

(assert (=> bs!1337401 (not (= lambda!309094 lambda!308951))))

(declare-fun bs!1337402 () Bool)

(assert (= bs!1337402 (and b!5720304 b!5719974)))

(assert (=> bs!1337402 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 (regTwo!31943 lt!2277714))) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 (regTwo!31943 lt!2277714)))) (= lambda!309094 lambda!309077))))

(declare-fun bs!1337403 () Bool)

(assert (= bs!1337403 (and b!5720304 b!5720306)))

(assert (=> bs!1337403 (not (= lambda!309094 lambda!309093))))

(declare-fun bs!1337404 () Bool)

(assert (= bs!1337404 (and b!5720304 b!5718490)))

(assert (=> bs!1337404 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309094 lambda!308968))))

(declare-fun bs!1337405 () Bool)

(assert (= bs!1337405 (and b!5720304 d!1804319)))

(assert (=> bs!1337405 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309094 lambda!309048))))

(declare-fun bs!1337406 () Bool)

(assert (= bs!1337406 (and b!5720304 b!5719082)))

(assert (=> bs!1337406 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 lt!2277714)) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 lt!2277714))) (= lambda!309094 lambda!309007))))

(declare-fun bs!1337407 () Bool)

(assert (= bs!1337407 (and b!5720304 b!5719976)))

(assert (=> bs!1337407 (not (= lambda!309094 lambda!309076))))

(declare-fun bs!1337408 () Bool)

(assert (= bs!1337408 (and b!5720304 b!5719084)))

(assert (=> bs!1337408 (not (= lambda!309094 lambda!309006))))

(declare-fun bs!1337409 () Bool)

(assert (= bs!1337409 (and b!5720304 b!5718492)))

(assert (=> bs!1337409 (not (= lambda!309094 lambda!308967))))

(declare-fun bs!1337410 () Bool)

(assert (= bs!1337410 (and b!5720304 d!1804125)))

(assert (=> bs!1337410 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 r!7292))) (= lambda!309094 lambda!309016))))

(assert (=> bs!1337405 (not (= lambda!309094 lambda!309047))))

(assert (=> bs!1337410 (not (= lambda!309094 lambda!309015))))

(declare-fun bs!1337411 () Bool)

(assert (= bs!1337411 (and b!5720304 b!5720024)))

(assert (=> bs!1337411 (= (and (= (regOne!31942 (regOne!31943 lt!2277714)) (regOne!31942 (regTwo!31943 r!7292))) (= (regTwo!31942 (regOne!31943 lt!2277714)) (regTwo!31942 (regTwo!31943 r!7292)))) (= lambda!309094 lambda!309084))))

(declare-fun bs!1337412 () Bool)

(assert (= bs!1337412 (and b!5720304 d!1804419)))

(assert (=> bs!1337412 (not (= lambda!309094 lambda!309067))))

(assert (=> b!5720304 true))

(assert (=> b!5720304 true))

(declare-fun b!5720301 () Bool)

(declare-fun c!1008826 () Bool)

(assert (=> b!5720301 (= c!1008826 ((_ is Union!15715) (regOne!31943 lt!2277714)))))

(declare-fun e!3517674 () Bool)

(declare-fun e!3517669 () Bool)

(assert (=> b!5720301 (= e!3517674 e!3517669)))

(declare-fun b!5720302 () Bool)

(declare-fun e!3517671 () Bool)

(declare-fun call!437019 () Bool)

(assert (=> b!5720302 (= e!3517671 call!437019)))

(declare-fun b!5720303 () Bool)

(declare-fun e!3517673 () Bool)

(assert (=> b!5720303 (= e!3517671 e!3517673)))

(declare-fun res!2415087 () Bool)

(assert (=> b!5720303 (= res!2415087 (not ((_ is EmptyLang!15715) (regOne!31943 lt!2277714))))))

(assert (=> b!5720303 (=> (not res!2415087) (not e!3517673))))

(declare-fun bm!437013 () Bool)

(declare-fun c!1008829 () Bool)

(declare-fun call!437018 () Bool)

(assert (=> bm!437013 (= call!437018 (Exists!2815 (ite c!1008829 lambda!309093 lambda!309094)))))

(declare-fun e!3517672 () Bool)

(assert (=> b!5720304 (= e!3517672 call!437018)))

(declare-fun b!5720305 () Bool)

(declare-fun c!1008828 () Bool)

(assert (=> b!5720305 (= c!1008828 ((_ is ElementMatch!15715) (regOne!31943 lt!2277714)))))

(assert (=> b!5720305 (= e!3517673 e!3517674)))

(declare-fun e!3517668 () Bool)

(assert (=> b!5720306 (= e!3517668 call!437018)))

(declare-fun d!1804633 () Bool)

(declare-fun c!1008827 () Bool)

(assert (=> d!1804633 (= c!1008827 ((_ is EmptyExpr!15715) (regOne!31943 lt!2277714)))))

(assert (=> d!1804633 (= (matchRSpec!2818 (regOne!31943 lt!2277714) s!2326) e!3517671)))

(declare-fun b!5720307 () Bool)

(declare-fun e!3517670 () Bool)

(assert (=> b!5720307 (= e!3517669 e!3517670)))

(declare-fun res!2415086 () Bool)

(assert (=> b!5720307 (= res!2415086 (matchRSpec!2818 (regOne!31943 (regOne!31943 lt!2277714)) s!2326))))

(assert (=> b!5720307 (=> res!2415086 e!3517670)))

(declare-fun b!5720308 () Bool)

(assert (=> b!5720308 (= e!3517670 (matchRSpec!2818 (regTwo!31943 (regOne!31943 lt!2277714)) s!2326))))

(declare-fun b!5720309 () Bool)

(assert (=> b!5720309 (= e!3517674 (= s!2326 (Cons!63320 (c!1008289 (regOne!31943 lt!2277714)) Nil!63320)))))

(declare-fun b!5720310 () Bool)

(assert (=> b!5720310 (= e!3517669 e!3517672)))

(assert (=> b!5720310 (= c!1008829 ((_ is Star!15715) (regOne!31943 lt!2277714)))))

(declare-fun bm!437014 () Bool)

(assert (=> bm!437014 (= call!437019 (isEmpty!35197 s!2326))))

(declare-fun b!5720311 () Bool)

(declare-fun res!2415085 () Bool)

(assert (=> b!5720311 (=> res!2415085 e!3517668)))

(assert (=> b!5720311 (= res!2415085 call!437019)))

(assert (=> b!5720311 (= e!3517672 e!3517668)))

(assert (= (and d!1804633 c!1008827) b!5720302))

(assert (= (and d!1804633 (not c!1008827)) b!5720303))

(assert (= (and b!5720303 res!2415087) b!5720305))

(assert (= (and b!5720305 c!1008828) b!5720309))

(assert (= (and b!5720305 (not c!1008828)) b!5720301))

(assert (= (and b!5720301 c!1008826) b!5720307))

(assert (= (and b!5720301 (not c!1008826)) b!5720310))

(assert (= (and b!5720307 (not res!2415086)) b!5720308))

(assert (= (and b!5720310 c!1008829) b!5720311))

(assert (= (and b!5720310 (not c!1008829)) b!5720304))

(assert (= (and b!5720311 (not res!2415085)) b!5720306))

(assert (= (or b!5720306 b!5720304) bm!437013))

(assert (= (or b!5720302 b!5720311) bm!437014))

(declare-fun m!6673774 () Bool)

(assert (=> bm!437013 m!6673774))

(declare-fun m!6673776 () Bool)

(assert (=> b!5720307 m!6673776))

(declare-fun m!6673778 () Bool)

(assert (=> b!5720308 m!6673778))

(assert (=> bm!437014 m!6672120))

(assert (=> b!5719085 d!1804633))

(declare-fun d!1804645 () Bool)

(assert (=> d!1804645 (= (Exists!2815 (ite c!1008307 lambda!308967 lambda!308968)) (choose!43245 (ite c!1008307 lambda!308967 lambda!308968)))))

(declare-fun bs!1337413 () Bool)

(assert (= bs!1337413 d!1804645))

(declare-fun m!6673780 () Bool)

(assert (=> bs!1337413 m!6673780))

(assert (=> bm!436678 d!1804645))

(declare-fun b!5720348 () Bool)

(declare-fun e!3517685 () Bool)

(declare-fun e!3517684 () Bool)

(assert (=> b!5720348 (= e!3517685 e!3517684)))

(declare-fun c!1008831 () Bool)

(assert (=> b!5720348 (= c!1008831 ((_ is EmptyLang!15715) (derivativeStep!4518 lt!2277714 (head!12109 s!2326))))))

(declare-fun b!5720349 () Bool)

(declare-fun lt!2277893 () Bool)

(assert (=> b!5720349 (= e!3517684 (not lt!2277893))))

(declare-fun b!5720350 () Bool)

(declare-fun e!3517688 () Bool)

(assert (=> b!5720350 (= e!3517688 (not (= (head!12109 (tail!11204 s!2326)) (c!1008289 (derivativeStep!4518 lt!2277714 (head!12109 s!2326))))))))

(declare-fun b!5720351 () Bool)

(declare-fun e!3517687 () Bool)

(assert (=> b!5720351 (= e!3517687 (= (head!12109 (tail!11204 s!2326)) (c!1008289 (derivativeStep!4518 lt!2277714 (head!12109 s!2326)))))))

(declare-fun b!5720352 () Bool)

(declare-fun res!2415091 () Bool)

(assert (=> b!5720352 (=> (not res!2415091) (not e!3517687))))

(assert (=> b!5720352 (= res!2415091 (isEmpty!35197 (tail!11204 (tail!11204 s!2326))))))

(declare-fun b!5720353 () Bool)

(declare-fun e!3517690 () Bool)

(assert (=> b!5720353 (= e!3517690 e!3517688)))

(declare-fun res!2415090 () Bool)

(assert (=> b!5720353 (=> res!2415090 e!3517688)))

(declare-fun call!437020 () Bool)

(assert (=> b!5720353 (= res!2415090 call!437020)))

(declare-fun b!5720354 () Bool)

(assert (=> b!5720354 (= e!3517685 (= lt!2277893 call!437020))))

(declare-fun b!5720355 () Bool)

(declare-fun e!3517689 () Bool)

(assert (=> b!5720355 (= e!3517689 (matchR!7900 (derivativeStep!4518 (derivativeStep!4518 lt!2277714 (head!12109 s!2326)) (head!12109 (tail!11204 s!2326))) (tail!11204 (tail!11204 s!2326))))))

(declare-fun d!1804647 () Bool)

(assert (=> d!1804647 e!3517685))

(declare-fun c!1008830 () Bool)

(assert (=> d!1804647 (= c!1008830 ((_ is EmptyExpr!15715) (derivativeStep!4518 lt!2277714 (head!12109 s!2326))))))

(assert (=> d!1804647 (= lt!2277893 e!3517689)))

(declare-fun c!1008832 () Bool)

(assert (=> d!1804647 (= c!1008832 (isEmpty!35197 (tail!11204 s!2326)))))

(assert (=> d!1804647 (validRegex!7451 (derivativeStep!4518 lt!2277714 (head!12109 s!2326)))))

(assert (=> d!1804647 (= (matchR!7900 (derivativeStep!4518 lt!2277714 (head!12109 s!2326)) (tail!11204 s!2326)) lt!2277893)))

(declare-fun b!5720356 () Bool)

(declare-fun res!2415088 () Bool)

(assert (=> b!5720356 (=> (not res!2415088) (not e!3517687))))

(assert (=> b!5720356 (= res!2415088 (not call!437020))))

(declare-fun b!5720357 () Bool)

(declare-fun res!2415094 () Bool)

(declare-fun e!3517686 () Bool)

(assert (=> b!5720357 (=> res!2415094 e!3517686)))

(assert (=> b!5720357 (= res!2415094 e!3517687)))

(declare-fun res!2415092 () Bool)

(assert (=> b!5720357 (=> (not res!2415092) (not e!3517687))))

(assert (=> b!5720357 (= res!2415092 lt!2277893)))

(declare-fun b!5720358 () Bool)

(assert (=> b!5720358 (= e!3517689 (nullable!5747 (derivativeStep!4518 lt!2277714 (head!12109 s!2326))))))

(declare-fun bm!437015 () Bool)

(assert (=> bm!437015 (= call!437020 (isEmpty!35197 (tail!11204 s!2326)))))

(declare-fun b!5720359 () Bool)

(declare-fun res!2415095 () Bool)

(assert (=> b!5720359 (=> res!2415095 e!3517688)))

(assert (=> b!5720359 (= res!2415095 (not (isEmpty!35197 (tail!11204 (tail!11204 s!2326)))))))

(declare-fun b!5720360 () Bool)

(assert (=> b!5720360 (= e!3517686 e!3517690)))

(declare-fun res!2415093 () Bool)

(assert (=> b!5720360 (=> (not res!2415093) (not e!3517690))))

(assert (=> b!5720360 (= res!2415093 (not lt!2277893))))

(declare-fun b!5720361 () Bool)

(declare-fun res!2415089 () Bool)

(assert (=> b!5720361 (=> res!2415089 e!3517686)))

(assert (=> b!5720361 (= res!2415089 (not ((_ is ElementMatch!15715) (derivativeStep!4518 lt!2277714 (head!12109 s!2326)))))))

(assert (=> b!5720361 (= e!3517684 e!3517686)))

(assert (= (and d!1804647 c!1008832) b!5720358))

(assert (= (and d!1804647 (not c!1008832)) b!5720355))

(assert (= (and d!1804647 c!1008830) b!5720354))

(assert (= (and d!1804647 (not c!1008830)) b!5720348))

(assert (= (and b!5720348 c!1008831) b!5720349))

(assert (= (and b!5720348 (not c!1008831)) b!5720361))

(assert (= (and b!5720361 (not res!2415089)) b!5720357))

(assert (= (and b!5720357 res!2415092) b!5720356))

(assert (= (and b!5720356 res!2415088) b!5720352))

(assert (= (and b!5720352 res!2415091) b!5720351))

(assert (= (and b!5720357 (not res!2415094)) b!5720360))

(assert (= (and b!5720360 res!2415093) b!5720353))

(assert (= (and b!5720353 (not res!2415090)) b!5720359))

(assert (= (and b!5720359 (not res!2415095)) b!5720350))

(assert (= (or b!5720354 b!5720353 b!5720356) bm!437015))

(assert (=> b!5720351 m!6672188))

(assert (=> b!5720351 m!6672846))

(assert (=> b!5720352 m!6672188))

(assert (=> b!5720352 m!6672848))

(assert (=> b!5720352 m!6672848))

(assert (=> b!5720352 m!6672850))

(assert (=> b!5720358 m!6672566))

(declare-fun m!6673782 () Bool)

(assert (=> b!5720358 m!6673782))

(assert (=> b!5720350 m!6672188))

(assert (=> b!5720350 m!6672846))

(assert (=> b!5720359 m!6672188))

(assert (=> b!5720359 m!6672848))

(assert (=> b!5720359 m!6672848))

(assert (=> b!5720359 m!6672850))

(assert (=> bm!437015 m!6672188))

(assert (=> bm!437015 m!6672190))

(assert (=> d!1804647 m!6672188))

(assert (=> d!1804647 m!6672190))

(assert (=> d!1804647 m!6672566))

(declare-fun m!6673784 () Bool)

(assert (=> d!1804647 m!6673784))

(assert (=> b!5720355 m!6672188))

(assert (=> b!5720355 m!6672846))

(assert (=> b!5720355 m!6672566))

(assert (=> b!5720355 m!6672846))

(declare-fun m!6673786 () Bool)

(assert (=> b!5720355 m!6673786))

(assert (=> b!5720355 m!6672188))

(assert (=> b!5720355 m!6672848))

(assert (=> b!5720355 m!6673786))

(assert (=> b!5720355 m!6672848))

(declare-fun m!6673788 () Bool)

(assert (=> b!5720355 m!6673788))

(assert (=> b!5719072 d!1804647))

(declare-fun d!1804649 () Bool)

(declare-fun lt!2277894 () Regex!15715)

(assert (=> d!1804649 (validRegex!7451 lt!2277894)))

(declare-fun e!3517695 () Regex!15715)

(assert (=> d!1804649 (= lt!2277894 e!3517695)))

(declare-fun c!1008837 () Bool)

(assert (=> d!1804649 (= c!1008837 (or ((_ is EmptyExpr!15715) lt!2277714) ((_ is EmptyLang!15715) lt!2277714)))))

(assert (=> d!1804649 (validRegex!7451 lt!2277714)))

(assert (=> d!1804649 (= (derivativeStep!4518 lt!2277714 (head!12109 s!2326)) lt!2277894)))

(declare-fun b!5720362 () Bool)

(declare-fun e!3517694 () Regex!15715)

(declare-fun call!437024 () Regex!15715)

(declare-fun call!437021 () Regex!15715)

(assert (=> b!5720362 (= e!3517694 (Union!15715 (Concat!24560 call!437024 (regTwo!31942 lt!2277714)) call!437021))))

(declare-fun b!5720363 () Bool)

(declare-fun c!1008835 () Bool)

(assert (=> b!5720363 (= c!1008835 (nullable!5747 (regOne!31942 lt!2277714)))))

(declare-fun e!3517692 () Regex!15715)

(assert (=> b!5720363 (= e!3517692 e!3517694)))

(declare-fun bm!437016 () Bool)

(declare-fun call!437023 () Regex!15715)

(assert (=> bm!437016 (= call!437021 call!437023)))

(declare-fun b!5720364 () Bool)

(assert (=> b!5720364 (= e!3517695 EmptyLang!15715)))

(declare-fun b!5720365 () Bool)

(declare-fun e!3517693 () Regex!15715)

(assert (=> b!5720365 (= e!3517695 e!3517693)))

(declare-fun c!1008836 () Bool)

(assert (=> b!5720365 (= c!1008836 ((_ is ElementMatch!15715) lt!2277714))))

(declare-fun bm!437017 () Bool)

(declare-fun call!437022 () Regex!15715)

(assert (=> bm!437017 (= call!437024 call!437022)))

(declare-fun bm!437018 () Bool)

(declare-fun c!1008834 () Bool)

(declare-fun c!1008833 () Bool)

(assert (=> bm!437018 (= call!437022 (derivativeStep!4518 (ite c!1008834 (regTwo!31943 lt!2277714) (ite c!1008833 (reg!16044 lt!2277714) (regOne!31942 lt!2277714))) (head!12109 s!2326)))))

(declare-fun b!5720366 () Bool)

(assert (=> b!5720366 (= e!3517693 (ite (= (head!12109 s!2326) (c!1008289 lt!2277714)) EmptyExpr!15715 EmptyLang!15715))))

(declare-fun b!5720367 () Bool)

(declare-fun e!3517691 () Regex!15715)

(assert (=> b!5720367 (= e!3517691 (Union!15715 call!437023 call!437022))))

(declare-fun bm!437019 () Bool)

(assert (=> bm!437019 (= call!437023 (derivativeStep!4518 (ite c!1008834 (regOne!31943 lt!2277714) (ite c!1008835 (regTwo!31942 lt!2277714) (regOne!31942 lt!2277714))) (head!12109 s!2326)))))

(declare-fun b!5720368 () Bool)

(assert (=> b!5720368 (= e!3517691 e!3517692)))

(assert (=> b!5720368 (= c!1008833 ((_ is Star!15715) lt!2277714))))

(declare-fun b!5720369 () Bool)

(assert (=> b!5720369 (= e!3517694 (Union!15715 (Concat!24560 call!437021 (regTwo!31942 lt!2277714)) EmptyLang!15715))))

(declare-fun b!5720370 () Bool)

(assert (=> b!5720370 (= e!3517692 (Concat!24560 call!437024 lt!2277714))))

(declare-fun b!5720371 () Bool)

(assert (=> b!5720371 (= c!1008834 ((_ is Union!15715) lt!2277714))))

(assert (=> b!5720371 (= e!3517693 e!3517691)))

(assert (= (and d!1804649 c!1008837) b!5720364))

(assert (= (and d!1804649 (not c!1008837)) b!5720365))

(assert (= (and b!5720365 c!1008836) b!5720366))

(assert (= (and b!5720365 (not c!1008836)) b!5720371))

(assert (= (and b!5720371 c!1008834) b!5720367))

(assert (= (and b!5720371 (not c!1008834)) b!5720368))

(assert (= (and b!5720368 c!1008833) b!5720370))

(assert (= (and b!5720368 (not c!1008833)) b!5720363))

(assert (= (and b!5720363 c!1008835) b!5720362))

(assert (= (and b!5720363 (not c!1008835)) b!5720369))

(assert (= (or b!5720362 b!5720369) bm!437016))

(assert (= (or b!5720370 b!5720362) bm!437017))

(assert (= (or b!5720367 bm!437017) bm!437018))

(assert (= (or b!5720367 bm!437016) bm!437019))

(declare-fun m!6673790 () Bool)

(assert (=> d!1804649 m!6673790))

(assert (=> d!1804649 m!6672564))

(declare-fun m!6673792 () Bool)

(assert (=> b!5720363 m!6673792))

(assert (=> bm!437018 m!6672186))

(declare-fun m!6673794 () Bool)

(assert (=> bm!437018 m!6673794))

(assert (=> bm!437019 m!6672186))

(declare-fun m!6673796 () Bool)

(assert (=> bm!437019 m!6673796))

(assert (=> b!5719072 d!1804649))

(assert (=> b!5719072 d!1804217))

(assert (=> b!5719072 d!1804271))

(declare-fun bs!1337414 () Bool)

(declare-fun d!1804651 () Bool)

(assert (= bs!1337414 (and d!1804651 d!1803977)))

(declare-fun lambda!309095 () Int)

(assert (=> bs!1337414 (= lambda!309095 lambda!308976)))

(declare-fun bs!1337415 () Bool)

(assert (= bs!1337415 (and d!1804651 d!1804621)))

(assert (=> bs!1337415 (= lambda!309095 lambda!309090)))

(declare-fun bs!1337416 () Bool)

(assert (= bs!1337416 (and d!1804651 d!1804343)))

(assert (=> bs!1337416 (= lambda!309095 lambda!309049)))

(declare-fun bs!1337417 () Bool)

(assert (= bs!1337417 (and d!1804651 d!1804077)))

(assert (=> bs!1337417 (= lambda!309095 lambda!308999)))

(declare-fun bs!1337418 () Bool)

(assert (= bs!1337418 (and d!1804651 d!1804079)))

(assert (=> bs!1337418 (= lambda!309095 lambda!309002)))

(declare-fun bs!1337419 () Bool)

(assert (= bs!1337419 (and d!1804651 d!1804627)))

(assert (=> bs!1337419 (= lambda!309095 lambda!309091)))

(declare-fun bs!1337420 () Bool)

(assert (= bs!1337420 (and d!1804651 d!1804629)))

(assert (=> bs!1337420 (= lambda!309095 lambda!309092)))

(declare-fun bs!1337421 () Bool)

(assert (= bs!1337421 (and d!1804651 d!1804119)))

(assert (=> bs!1337421 (= lambda!309095 lambda!309010)))

(declare-fun bs!1337422 () Bool)

(assert (= bs!1337422 (and d!1804651 d!1804367)))

(assert (=> bs!1337422 (= lambda!309095 lambda!309052)))

(declare-fun bs!1337423 () Bool)

(assert (= bs!1337423 (and d!1804651 d!1803987)))

(assert (=> bs!1337423 (= lambda!309095 lambda!308981)))

(declare-fun e!3517698 () Bool)

(assert (=> d!1804651 e!3517698))

(declare-fun res!2415096 () Bool)

(assert (=> d!1804651 (=> (not res!2415096) (not e!3517698))))

(declare-fun lt!2277895 () Regex!15715)

(assert (=> d!1804651 (= res!2415096 (validRegex!7451 lt!2277895))))

(declare-fun e!3517696 () Regex!15715)

(assert (=> d!1804651 (= lt!2277895 e!3517696)))

(declare-fun c!1008839 () Bool)

(declare-fun e!3517701 () Bool)

(assert (=> d!1804651 (= c!1008839 e!3517701)))

(declare-fun res!2415097 () Bool)

(assert (=> d!1804651 (=> (not res!2415097) (not e!3517701))))

(assert (=> d!1804651 (= res!2415097 ((_ is Cons!63321) (t!376767 (unfocusZipperList!1143 zl!343))))))

(assert (=> d!1804651 (forall!14850 (t!376767 (unfocusZipperList!1143 zl!343)) lambda!309095)))

(assert (=> d!1804651 (= (generalisedUnion!1578 (t!376767 (unfocusZipperList!1143 zl!343))) lt!2277895)))

(declare-fun b!5720372 () Bool)

(declare-fun e!3517700 () Regex!15715)

(assert (=> b!5720372 (= e!3517700 EmptyLang!15715)))

(declare-fun b!5720373 () Bool)

(assert (=> b!5720373 (= e!3517696 (h!69769 (t!376767 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5720374 () Bool)

(assert (=> b!5720374 (= e!3517700 (Union!15715 (h!69769 (t!376767 (unfocusZipperList!1143 zl!343))) (generalisedUnion!1578 (t!376767 (t!376767 (unfocusZipperList!1143 zl!343))))))))

(declare-fun b!5720375 () Bool)

(declare-fun e!3517699 () Bool)

(assert (=> b!5720375 (= e!3517699 (isUnion!664 lt!2277895))))

(declare-fun b!5720376 () Bool)

(assert (=> b!5720376 (= e!3517701 (isEmpty!35194 (t!376767 (t!376767 (unfocusZipperList!1143 zl!343)))))))

(declare-fun b!5720377 () Bool)

(declare-fun e!3517697 () Bool)

(assert (=> b!5720377 (= e!3517697 (isEmptyLang!1234 lt!2277895))))

(declare-fun b!5720378 () Bool)

(assert (=> b!5720378 (= e!3517698 e!3517697)))

(declare-fun c!1008840 () Bool)

(assert (=> b!5720378 (= c!1008840 (isEmpty!35194 (t!376767 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5720379 () Bool)

(assert (=> b!5720379 (= e!3517696 e!3517700)))

(declare-fun c!1008841 () Bool)

(assert (=> b!5720379 (= c!1008841 ((_ is Cons!63321) (t!376767 (unfocusZipperList!1143 zl!343))))))

(declare-fun b!5720380 () Bool)

(assert (=> b!5720380 (= e!3517699 (= lt!2277895 (head!12111 (t!376767 (unfocusZipperList!1143 zl!343)))))))

(declare-fun b!5720381 () Bool)

(assert (=> b!5720381 (= e!3517697 e!3517699)))

(declare-fun c!1008838 () Bool)

(assert (=> b!5720381 (= c!1008838 (isEmpty!35194 (tail!11206 (t!376767 (unfocusZipperList!1143 zl!343)))))))

(assert (= (and d!1804651 res!2415097) b!5720376))

(assert (= (and d!1804651 c!1008839) b!5720373))

(assert (= (and d!1804651 (not c!1008839)) b!5720379))

(assert (= (and b!5720379 c!1008841) b!5720374))

(assert (= (and b!5720379 (not c!1008841)) b!5720372))

(assert (= (and d!1804651 res!2415096) b!5720378))

(assert (= (and b!5720378 c!1008840) b!5720377))

(assert (= (and b!5720378 (not c!1008840)) b!5720381))

(assert (= (and b!5720381 c!1008838) b!5720380))

(assert (= (and b!5720381 (not c!1008838)) b!5720375))

(declare-fun m!6673798 () Bool)

(assert (=> b!5720377 m!6673798))

(declare-fun m!6673800 () Bool)

(assert (=> b!5720376 m!6673800))

(assert (=> b!5720378 m!6672482))

(declare-fun m!6673802 () Bool)

(assert (=> b!5720380 m!6673802))

(declare-fun m!6673804 () Bool)

(assert (=> d!1804651 m!6673804))

(declare-fun m!6673806 () Bool)

(assert (=> d!1804651 m!6673806))

(declare-fun m!6673808 () Bool)

(assert (=> b!5720374 m!6673808))

(declare-fun m!6673810 () Bool)

(assert (=> b!5720381 m!6673810))

(assert (=> b!5720381 m!6673810))

(declare-fun m!6673812 () Bool)

(assert (=> b!5720381 m!6673812))

(declare-fun m!6673814 () Bool)

(assert (=> b!5720375 m!6673814))

(assert (=> b!5719031 d!1804651))

(declare-fun bs!1337424 () Bool)

(declare-fun d!1804653 () Bool)

(assert (= bs!1337424 (and d!1804653 d!1804543)))

(declare-fun lambda!309096 () Int)

(assert (=> bs!1337424 (= lambda!309096 lambda!309080)))

(declare-fun bs!1337425 () Bool)

(assert (= bs!1337425 (and d!1804653 d!1804461)))

(assert (=> bs!1337425 (= lambda!309096 lambda!309073)))

(declare-fun bs!1337426 () Bool)

(assert (= bs!1337426 (and d!1804653 d!1804385)))

(assert (=> bs!1337426 (= lambda!309096 lambda!309060)))

(declare-fun bs!1337427 () Bool)

(assert (= bs!1337427 (and d!1804653 d!1804539)))

(assert (=> bs!1337427 (= lambda!309096 lambda!309079)))

(declare-fun bs!1337428 () Bool)

(assert (= bs!1337428 (and d!1804653 d!1804505)))

(assert (=> bs!1337428 (= lambda!309096 lambda!309075)))

(assert (=> d!1804653 (= (nullableZipper!1665 lt!2277735) (exists!2225 lt!2277735 lambda!309096))))

(declare-fun bs!1337429 () Bool)

(assert (= bs!1337429 d!1804653))

(declare-fun m!6673816 () Bool)

(assert (=> bs!1337429 m!6673816))

(assert (=> b!5718655 d!1804653))

(declare-fun d!1804655 () Bool)

(assert (=> d!1804655 (= ($colon$colon!1732 (exprs!5599 lt!2277736) (ite (or c!1008456 c!1008454) (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69769 (exprs!5599 (h!69770 zl!343))))) (Cons!63321 (ite (or c!1008456 c!1008454) (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))) (h!69769 (exprs!5599 (h!69770 zl!343)))) (exprs!5599 lt!2277736)))))

(assert (=> bm!436763 d!1804655))

(declare-fun d!1804657 () Bool)

(assert (=> d!1804657 true))

(assert (=> d!1804657 true))

(declare-fun res!2415100 () Bool)

(assert (=> d!1804657 (= (choose!43245 lambda!308952) res!2415100)))

(assert (=> d!1804131 d!1804657))

(declare-fun d!1804659 () Bool)

(assert (=> d!1804659 (= (isEmptyExpr!1223 lt!2277825) ((_ is EmptyExpr!15715) lt!2277825))))

(assert (=> b!5719126 d!1804659))

(assert (=> b!5718598 d!1804541))

(assert (=> b!5718598 d!1804271))

(declare-fun c!1008843 () Bool)

(declare-fun c!1008842 () Bool)

(declare-fun bm!437020 () Bool)

(declare-fun call!437025 () Bool)

(assert (=> bm!437020 (= call!437025 (validRegex!7451 (ite c!1008842 (reg!16044 lt!2277805) (ite c!1008843 (regOne!31943 lt!2277805) (regOne!31942 lt!2277805)))))))

(declare-fun b!5720382 () Bool)

(declare-fun res!2415105 () Bool)

(declare-fun e!3517705 () Bool)

(assert (=> b!5720382 (=> (not res!2415105) (not e!3517705))))

(declare-fun call!437026 () Bool)

(assert (=> b!5720382 (= res!2415105 call!437026)))

(declare-fun e!3517703 () Bool)

(assert (=> b!5720382 (= e!3517703 e!3517705)))

(declare-fun b!5720383 () Bool)

(declare-fun e!3517702 () Bool)

(declare-fun call!437027 () Bool)

(assert (=> b!5720383 (= e!3517702 call!437027)))

(declare-fun b!5720384 () Bool)

(assert (=> b!5720384 (= e!3517705 call!437027)))

(declare-fun b!5720385 () Bool)

(declare-fun e!3517706 () Bool)

(declare-fun e!3517707 () Bool)

(assert (=> b!5720385 (= e!3517706 e!3517707)))

(assert (=> b!5720385 (= c!1008842 ((_ is Star!15715) lt!2277805))))

(declare-fun b!5720386 () Bool)

(declare-fun e!3517708 () Bool)

(assert (=> b!5720386 (= e!3517707 e!3517708)))

(declare-fun res!2415102 () Bool)

(assert (=> b!5720386 (= res!2415102 (not (nullable!5747 (reg!16044 lt!2277805))))))

(assert (=> b!5720386 (=> (not res!2415102) (not e!3517708))))

(declare-fun bm!437021 () Bool)

(assert (=> bm!437021 (= call!437026 call!437025)))

(declare-fun b!5720388 () Bool)

(declare-fun e!3517704 () Bool)

(assert (=> b!5720388 (= e!3517704 e!3517702)))

(declare-fun res!2415101 () Bool)

(assert (=> b!5720388 (=> (not res!2415101) (not e!3517702))))

(assert (=> b!5720388 (= res!2415101 call!437026)))

(declare-fun bm!437022 () Bool)

(assert (=> bm!437022 (= call!437027 (validRegex!7451 (ite c!1008843 (regTwo!31943 lt!2277805) (regTwo!31942 lt!2277805))))))

(declare-fun b!5720389 () Bool)

(declare-fun res!2415103 () Bool)

(assert (=> b!5720389 (=> res!2415103 e!3517704)))

(assert (=> b!5720389 (= res!2415103 (not ((_ is Concat!24560) lt!2277805)))))

(assert (=> b!5720389 (= e!3517703 e!3517704)))

(declare-fun b!5720390 () Bool)

(assert (=> b!5720390 (= e!3517707 e!3517703)))

(assert (=> b!5720390 (= c!1008843 ((_ is Union!15715) lt!2277805))))

(declare-fun d!1804661 () Bool)

(declare-fun res!2415104 () Bool)

(assert (=> d!1804661 (=> res!2415104 e!3517706)))

(assert (=> d!1804661 (= res!2415104 ((_ is ElementMatch!15715) lt!2277805))))

(assert (=> d!1804661 (= (validRegex!7451 lt!2277805) e!3517706)))

(declare-fun b!5720387 () Bool)

(assert (=> b!5720387 (= e!3517708 call!437025)))

(assert (= (and d!1804661 (not res!2415104)) b!5720385))

(assert (= (and b!5720385 c!1008842) b!5720386))

(assert (= (and b!5720385 (not c!1008842)) b!5720390))

(assert (= (and b!5720386 res!2415102) b!5720387))

(assert (= (and b!5720390 c!1008843) b!5720382))

(assert (= (and b!5720390 (not c!1008843)) b!5720389))

(assert (= (and b!5720382 res!2415105) b!5720384))

(assert (= (and b!5720389 (not res!2415103)) b!5720388))

(assert (= (and b!5720388 res!2415101) b!5720383))

(assert (= (or b!5720384 b!5720383) bm!437022))

(assert (= (or b!5720382 b!5720388) bm!437021))

(assert (= (or b!5720387 bm!437021) bm!437020))

(declare-fun m!6673818 () Bool)

(assert (=> bm!437020 m!6673818))

(declare-fun m!6673820 () Bool)

(assert (=> b!5720386 m!6673820))

(declare-fun m!6673822 () Bool)

(assert (=> bm!437022 m!6673822))

(assert (=> d!1804075 d!1804661))

(declare-fun bs!1337430 () Bool)

(declare-fun d!1804663 () Bool)

(assert (= bs!1337430 (and d!1804663 d!1803977)))

(declare-fun lambda!309097 () Int)

(assert (=> bs!1337430 (= lambda!309097 lambda!308976)))

(declare-fun bs!1337431 () Bool)

(assert (= bs!1337431 (and d!1804663 d!1804621)))

(assert (=> bs!1337431 (= lambda!309097 lambda!309090)))

(declare-fun bs!1337432 () Bool)

(assert (= bs!1337432 (and d!1804663 d!1804343)))

(assert (=> bs!1337432 (= lambda!309097 lambda!309049)))

(declare-fun bs!1337433 () Bool)

(assert (= bs!1337433 (and d!1804663 d!1804079)))

(assert (=> bs!1337433 (= lambda!309097 lambda!309002)))

(declare-fun bs!1337434 () Bool)

(assert (= bs!1337434 (and d!1804663 d!1804627)))

(assert (=> bs!1337434 (= lambda!309097 lambda!309091)))

(declare-fun bs!1337435 () Bool)

(assert (= bs!1337435 (and d!1804663 d!1804629)))

(assert (=> bs!1337435 (= lambda!309097 lambda!309092)))

(declare-fun bs!1337436 () Bool)

(assert (= bs!1337436 (and d!1804663 d!1804119)))

(assert (=> bs!1337436 (= lambda!309097 lambda!309010)))

(declare-fun bs!1337437 () Bool)

(assert (= bs!1337437 (and d!1804663 d!1804367)))

(assert (=> bs!1337437 (= lambda!309097 lambda!309052)))

(declare-fun bs!1337438 () Bool)

(assert (= bs!1337438 (and d!1804663 d!1803987)))

(assert (=> bs!1337438 (= lambda!309097 lambda!308981)))

(declare-fun bs!1337439 () Bool)

(assert (= bs!1337439 (and d!1804663 d!1804651)))

(assert (=> bs!1337439 (= lambda!309097 lambda!309095)))

(declare-fun bs!1337440 () Bool)

(assert (= bs!1337440 (and d!1804663 d!1804077)))

(assert (=> bs!1337440 (= lambda!309097 lambda!308999)))

(declare-fun e!3517711 () Bool)

(assert (=> d!1804663 e!3517711))

(declare-fun res!2415106 () Bool)

(assert (=> d!1804663 (=> (not res!2415106) (not e!3517711))))

(declare-fun lt!2277896 () Regex!15715)

(assert (=> d!1804663 (= res!2415106 (validRegex!7451 lt!2277896))))

(declare-fun e!3517709 () Regex!15715)

(assert (=> d!1804663 (= lt!2277896 e!3517709)))

(declare-fun c!1008845 () Bool)

(declare-fun e!3517714 () Bool)

(assert (=> d!1804663 (= c!1008845 e!3517714)))

(declare-fun res!2415107 () Bool)

(assert (=> d!1804663 (=> (not res!2415107) (not e!3517714))))

(assert (=> d!1804663 (= res!2415107 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))

(assert (=> d!1804663 (forall!14850 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322)) lambda!309097)))

(assert (=> d!1804663 (= (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))) lt!2277896)))

(declare-fun b!5720391 () Bool)

(declare-fun e!3517713 () Regex!15715)

(assert (=> b!5720391 (= e!3517713 EmptyLang!15715)))

(declare-fun b!5720392 () Bool)

(assert (=> b!5720392 (= e!3517709 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))

(declare-fun b!5720393 () Bool)

(assert (=> b!5720393 (= e!3517713 (Union!15715 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))) (generalisedUnion!1578 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))))

(declare-fun b!5720394 () Bool)

(declare-fun e!3517712 () Bool)

(assert (=> b!5720394 (= e!3517712 (isUnion!664 lt!2277896))))

(declare-fun b!5720395 () Bool)

(assert (=> b!5720395 (= e!3517714 (isEmpty!35194 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322)))))))

(declare-fun b!5720396 () Bool)

(declare-fun e!3517710 () Bool)

(assert (=> b!5720396 (= e!3517710 (isEmptyLang!1234 lt!2277896))))

(declare-fun b!5720397 () Bool)

(assert (=> b!5720397 (= e!3517711 e!3517710)))

(declare-fun c!1008846 () Bool)

(assert (=> b!5720397 (= c!1008846 (isEmpty!35194 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))

(declare-fun b!5720398 () Bool)

(assert (=> b!5720398 (= e!3517709 e!3517713)))

(declare-fun c!1008847 () Bool)

(assert (=> b!5720398 (= c!1008847 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322))))))

(declare-fun b!5720399 () Bool)

(assert (=> b!5720399 (= e!3517712 (= lt!2277896 (head!12111 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322)))))))

(declare-fun b!5720400 () Bool)

(assert (=> b!5720400 (= e!3517710 e!3517712)))

(declare-fun c!1008844 () Bool)

(assert (=> b!5720400 (= c!1008844 (isEmpty!35194 (tail!11206 (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322)))))))

(assert (= (and d!1804663 res!2415107) b!5720395))

(assert (= (and d!1804663 c!1008845) b!5720392))

(assert (= (and d!1804663 (not c!1008845)) b!5720398))

(assert (= (and b!5720398 c!1008847) b!5720393))

(assert (= (and b!5720398 (not c!1008847)) b!5720391))

(assert (= (and d!1804663 res!2415106) b!5720397))

(assert (= (and b!5720397 c!1008846) b!5720396))

(assert (= (and b!5720397 (not c!1008846)) b!5720400))

(assert (= (and b!5720400 c!1008844) b!5720399))

(assert (= (and b!5720400 (not c!1008844)) b!5720394))

(declare-fun m!6673824 () Bool)

(assert (=> b!5720396 m!6673824))

(declare-fun m!6673826 () Bool)

(assert (=> b!5720395 m!6673826))

(assert (=> b!5720397 m!6672476))

(declare-fun m!6673828 () Bool)

(assert (=> b!5720397 m!6673828))

(assert (=> b!5720399 m!6672476))

(declare-fun m!6673830 () Bool)

(assert (=> b!5720399 m!6673830))

(declare-fun m!6673832 () Bool)

(assert (=> d!1804663 m!6673832))

(assert (=> d!1804663 m!6672476))

(declare-fun m!6673834 () Bool)

(assert (=> d!1804663 m!6673834))

(declare-fun m!6673836 () Bool)

(assert (=> b!5720393 m!6673836))

(assert (=> b!5720400 m!6672476))

(declare-fun m!6673838 () Bool)

(assert (=> b!5720400 m!6673838))

(assert (=> b!5720400 m!6673838))

(declare-fun m!6673840 () Bool)

(assert (=> b!5720400 m!6673840))

(declare-fun m!6673842 () Bool)

(assert (=> b!5720394 m!6673842))

(assert (=> d!1804075 d!1804663))

(declare-fun bs!1337441 () Bool)

(declare-fun d!1804665 () Bool)

(assert (= bs!1337441 (and d!1804665 d!1803977)))

(declare-fun lambda!309098 () Int)

(assert (=> bs!1337441 (= lambda!309098 lambda!308976)))

(declare-fun bs!1337442 () Bool)

(assert (= bs!1337442 (and d!1804665 d!1804621)))

(assert (=> bs!1337442 (= lambda!309098 lambda!309090)))

(declare-fun bs!1337443 () Bool)

(assert (= bs!1337443 (and d!1804665 d!1804343)))

(assert (=> bs!1337443 (= lambda!309098 lambda!309049)))

(declare-fun bs!1337444 () Bool)

(assert (= bs!1337444 (and d!1804665 d!1804627)))

(assert (=> bs!1337444 (= lambda!309098 lambda!309091)))

(declare-fun bs!1337445 () Bool)

(assert (= bs!1337445 (and d!1804665 d!1804629)))

(assert (=> bs!1337445 (= lambda!309098 lambda!309092)))

(declare-fun bs!1337446 () Bool)

(assert (= bs!1337446 (and d!1804665 d!1804119)))

(assert (=> bs!1337446 (= lambda!309098 lambda!309010)))

(declare-fun bs!1337447 () Bool)

(assert (= bs!1337447 (and d!1804665 d!1804367)))

(assert (=> bs!1337447 (= lambda!309098 lambda!309052)))

(declare-fun bs!1337448 () Bool)

(assert (= bs!1337448 (and d!1804665 d!1803987)))

(assert (=> bs!1337448 (= lambda!309098 lambda!308981)))

(declare-fun bs!1337449 () Bool)

(assert (= bs!1337449 (and d!1804665 d!1804651)))

(assert (=> bs!1337449 (= lambda!309098 lambda!309095)))

(declare-fun bs!1337450 () Bool)

(assert (= bs!1337450 (and d!1804665 d!1804077)))

(assert (=> bs!1337450 (= lambda!309098 lambda!308999)))

(declare-fun bs!1337451 () Bool)

(assert (= bs!1337451 (and d!1804665 d!1804663)))

(assert (=> bs!1337451 (= lambda!309098 lambda!309097)))

(declare-fun bs!1337452 () Bool)

(assert (= bs!1337452 (and d!1804665 d!1804079)))

(assert (=> bs!1337452 (= lambda!309098 lambda!309002)))

(declare-fun lt!2277897 () List!63445)

(assert (=> d!1804665 (forall!14850 lt!2277897 lambda!309098)))

(declare-fun e!3517715 () List!63445)

(assert (=> d!1804665 (= lt!2277897 e!3517715)))

(declare-fun c!1008848 () Bool)

(assert (=> d!1804665 (= c!1008848 ((_ is Cons!63322) (Cons!63322 lt!2277710 Nil!63322)))))

(assert (=> d!1804665 (= (unfocusZipperList!1143 (Cons!63322 lt!2277710 Nil!63322)) lt!2277897)))

(declare-fun b!5720401 () Bool)

(assert (=> b!5720401 (= e!3517715 (Cons!63321 (generalisedConcat!1330 (exprs!5599 (h!69770 (Cons!63322 lt!2277710 Nil!63322)))) (unfocusZipperList!1143 (t!376768 (Cons!63322 lt!2277710 Nil!63322)))))))

(declare-fun b!5720402 () Bool)

(assert (=> b!5720402 (= e!3517715 Nil!63321)))

(assert (= (and d!1804665 c!1008848) b!5720401))

(assert (= (and d!1804665 (not c!1008848)) b!5720402))

(declare-fun m!6673844 () Bool)

(assert (=> d!1804665 m!6673844))

(declare-fun m!6673846 () Bool)

(assert (=> b!5720401 m!6673846))

(declare-fun m!6673848 () Bool)

(assert (=> b!5720401 m!6673848))

(assert (=> d!1804075 d!1804665))

(declare-fun d!1804667 () Bool)

(declare-fun res!2415108 () Bool)

(declare-fun e!3517716 () Bool)

(assert (=> d!1804667 (=> res!2415108 e!3517716)))

(assert (=> d!1804667 (= res!2415108 ((_ is Nil!63321) (exprs!5599 setElem!38305)))))

(assert (=> d!1804667 (= (forall!14850 (exprs!5599 setElem!38305) lambda!308976) e!3517716)))

(declare-fun b!5720403 () Bool)

(declare-fun e!3517717 () Bool)

(assert (=> b!5720403 (= e!3517716 e!3517717)))

(declare-fun res!2415109 () Bool)

(assert (=> b!5720403 (=> (not res!2415109) (not e!3517717))))

(assert (=> b!5720403 (= res!2415109 (dynLambda!24777 lambda!308976 (h!69769 (exprs!5599 setElem!38305))))))

(declare-fun b!5720404 () Bool)

(assert (=> b!5720404 (= e!3517717 (forall!14850 (t!376767 (exprs!5599 setElem!38305)) lambda!308976))))

(assert (= (and d!1804667 (not res!2415108)) b!5720403))

(assert (= (and b!5720403 res!2415109) b!5720404))

(declare-fun b_lambda!216145 () Bool)

(assert (=> (not b_lambda!216145) (not b!5720403)))

(declare-fun m!6673850 () Bool)

(assert (=> b!5720403 m!6673850))

(declare-fun m!6673852 () Bool)

(assert (=> b!5720404 m!6673852))

(assert (=> d!1803977 d!1804667))

(declare-fun d!1804669 () Bool)

(assert (=> d!1804669 true))

(declare-fun setRes!38324 () Bool)

(assert (=> d!1804669 setRes!38324))

(declare-fun condSetEmpty!38324 () Bool)

(declare-fun res!2415110 () (InoxSet Context!10198))

(assert (=> d!1804669 (= condSetEmpty!38324 (= res!2415110 ((as const (Array Context!10198 Bool)) false)))))

(assert (=> d!1804669 (= (choose!43242 z!1189 lambda!308953) res!2415110)))

(declare-fun setIsEmpty!38324 () Bool)

(assert (=> setIsEmpty!38324 setRes!38324))

(declare-fun setNonEmpty!38324 () Bool)

(declare-fun e!3517718 () Bool)

(declare-fun tp!1584222 () Bool)

(declare-fun setElem!38324 () Context!10198)

(assert (=> setNonEmpty!38324 (= setRes!38324 (and tp!1584222 (inv!82534 setElem!38324) e!3517718))))

(declare-fun setRest!38324 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38324 (= res!2415110 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38324 true) setRest!38324))))

(declare-fun b!5720405 () Bool)

(declare-fun tp!1584221 () Bool)

(assert (=> b!5720405 (= e!3517718 tp!1584221)))

(assert (= (and d!1804669 condSetEmpty!38324) setIsEmpty!38324))

(assert (= (and d!1804669 (not condSetEmpty!38324)) setNonEmpty!38324))

(assert (= setNonEmpty!38324 b!5720405))

(declare-fun m!6673854 () Bool)

(assert (=> setNonEmpty!38324 m!6673854))

(assert (=> d!1804063 d!1804669))

(declare-fun d!1804671 () Bool)

(assert (=> d!1804671 (= (flatMap!1328 lt!2277730 lambda!309005) (choose!43242 lt!2277730 lambda!309005))))

(declare-fun bs!1337453 () Bool)

(assert (= bs!1337453 d!1804671))

(declare-fun m!6673856 () Bool)

(assert (=> bs!1337453 m!6673856))

(assert (=> d!1804089 d!1804671))

(assert (=> d!1804121 d!1804531))

(declare-fun b!5720406 () Bool)

(declare-fun e!3517720 () Bool)

(declare-fun e!3517719 () Bool)

(assert (=> b!5720406 (= e!3517720 e!3517719)))

(declare-fun c!1008850 () Bool)

(assert (=> b!5720406 (= c!1008850 ((_ is EmptyLang!15715) (regOne!31942 r!7292)))))

(declare-fun b!5720407 () Bool)

(declare-fun lt!2277898 () Bool)

(assert (=> b!5720407 (= e!3517719 (not lt!2277898))))

(declare-fun b!5720408 () Bool)

(declare-fun e!3517723 () Bool)

(assert (=> b!5720408 (= e!3517723 (not (= (head!12109 Nil!63320) (c!1008289 (regOne!31942 r!7292)))))))

(declare-fun b!5720409 () Bool)

(declare-fun e!3517722 () Bool)

(assert (=> b!5720409 (= e!3517722 (= (head!12109 Nil!63320) (c!1008289 (regOne!31942 r!7292))))))

(declare-fun b!5720410 () Bool)

(declare-fun res!2415114 () Bool)

(assert (=> b!5720410 (=> (not res!2415114) (not e!3517722))))

(assert (=> b!5720410 (= res!2415114 (isEmpty!35197 (tail!11204 Nil!63320)))))

(declare-fun b!5720411 () Bool)

(declare-fun e!3517725 () Bool)

(assert (=> b!5720411 (= e!3517725 e!3517723)))

(declare-fun res!2415113 () Bool)

(assert (=> b!5720411 (=> res!2415113 e!3517723)))

(declare-fun call!437028 () Bool)

(assert (=> b!5720411 (= res!2415113 call!437028)))

(declare-fun b!5720412 () Bool)

(assert (=> b!5720412 (= e!3517720 (= lt!2277898 call!437028))))

(declare-fun b!5720413 () Bool)

(declare-fun e!3517724 () Bool)

(assert (=> b!5720413 (= e!3517724 (matchR!7900 (derivativeStep!4518 (regOne!31942 r!7292) (head!12109 Nil!63320)) (tail!11204 Nil!63320)))))

(declare-fun d!1804673 () Bool)

(assert (=> d!1804673 e!3517720))

(declare-fun c!1008849 () Bool)

(assert (=> d!1804673 (= c!1008849 ((_ is EmptyExpr!15715) (regOne!31942 r!7292)))))

(assert (=> d!1804673 (= lt!2277898 e!3517724)))

(declare-fun c!1008851 () Bool)

(assert (=> d!1804673 (= c!1008851 (isEmpty!35197 Nil!63320))))

(assert (=> d!1804673 (validRegex!7451 (regOne!31942 r!7292))))

(assert (=> d!1804673 (= (matchR!7900 (regOne!31942 r!7292) Nil!63320) lt!2277898)))

(declare-fun b!5720414 () Bool)

(declare-fun res!2415111 () Bool)

(assert (=> b!5720414 (=> (not res!2415111) (not e!3517722))))

(assert (=> b!5720414 (= res!2415111 (not call!437028))))

(declare-fun b!5720415 () Bool)

(declare-fun res!2415117 () Bool)

(declare-fun e!3517721 () Bool)

(assert (=> b!5720415 (=> res!2415117 e!3517721)))

(assert (=> b!5720415 (= res!2415117 e!3517722)))

(declare-fun res!2415115 () Bool)

(assert (=> b!5720415 (=> (not res!2415115) (not e!3517722))))

(assert (=> b!5720415 (= res!2415115 lt!2277898)))

(declare-fun b!5720416 () Bool)

(assert (=> b!5720416 (= e!3517724 (nullable!5747 (regOne!31942 r!7292)))))

(declare-fun bm!437023 () Bool)

(assert (=> bm!437023 (= call!437028 (isEmpty!35197 Nil!63320))))

(declare-fun b!5720417 () Bool)

(declare-fun res!2415118 () Bool)

(assert (=> b!5720417 (=> res!2415118 e!3517723)))

(assert (=> b!5720417 (= res!2415118 (not (isEmpty!35197 (tail!11204 Nil!63320))))))

(declare-fun b!5720418 () Bool)

(assert (=> b!5720418 (= e!3517721 e!3517725)))

(declare-fun res!2415116 () Bool)

(assert (=> b!5720418 (=> (not res!2415116) (not e!3517725))))

(assert (=> b!5720418 (= res!2415116 (not lt!2277898))))

(declare-fun b!5720419 () Bool)

(declare-fun res!2415112 () Bool)

(assert (=> b!5720419 (=> res!2415112 e!3517721)))

(assert (=> b!5720419 (= res!2415112 (not ((_ is ElementMatch!15715) (regOne!31942 r!7292))))))

(assert (=> b!5720419 (= e!3517719 e!3517721)))

(assert (= (and d!1804673 c!1008851) b!5720416))

(assert (= (and d!1804673 (not c!1008851)) b!5720413))

(assert (= (and d!1804673 c!1008849) b!5720412))

(assert (= (and d!1804673 (not c!1008849)) b!5720406))

(assert (= (and b!5720406 c!1008850) b!5720407))

(assert (= (and b!5720406 (not c!1008850)) b!5720419))

(assert (= (and b!5720419 (not res!2415112)) b!5720415))

(assert (= (and b!5720415 res!2415115) b!5720414))

(assert (= (and b!5720414 res!2415111) b!5720410))

(assert (= (and b!5720410 res!2415114) b!5720409))

(assert (= (and b!5720415 (not res!2415117)) b!5720418))

(assert (= (and b!5720418 res!2415116) b!5720411))

(assert (= (and b!5720411 (not res!2415113)) b!5720417))

(assert (= (and b!5720417 (not res!2415118)) b!5720408))

(assert (= (or b!5720412 b!5720411 b!5720414) bm!437023))

(declare-fun m!6673858 () Bool)

(assert (=> b!5720409 m!6673858))

(declare-fun m!6673860 () Bool)

(assert (=> b!5720410 m!6673860))

(assert (=> b!5720410 m!6673860))

(declare-fun m!6673862 () Bool)

(assert (=> b!5720410 m!6673862))

(assert (=> b!5720416 m!6672898))

(assert (=> b!5720408 m!6673858))

(assert (=> b!5720417 m!6673860))

(assert (=> b!5720417 m!6673860))

(assert (=> b!5720417 m!6673862))

(declare-fun m!6673864 () Bool)

(assert (=> bm!437023 m!6673864))

(assert (=> d!1804673 m!6673864))

(assert (=> d!1804673 m!6672624))

(assert (=> b!5720413 m!6673858))

(assert (=> b!5720413 m!6673858))

(declare-fun m!6673866 () Bool)

(assert (=> b!5720413 m!6673866))

(assert (=> b!5720413 m!6673860))

(assert (=> b!5720413 m!6673866))

(assert (=> b!5720413 m!6673860))

(declare-fun m!6673868 () Bool)

(assert (=> b!5720413 m!6673868))

(assert (=> d!1804121 d!1804673))

(assert (=> d!1804121 d!1804339))

(declare-fun call!437029 () (InoxSet Context!10198))

(declare-fun e!3517728 () (InoxSet Context!10198))

(declare-fun b!5720420 () Bool)

(assert (=> b!5720420 (= e!3517728 ((_ map or) call!437029 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))) (h!69768 s!2326))))))

(declare-fun b!5720421 () Bool)

(declare-fun e!3517727 () (InoxSet Context!10198))

(assert (=> b!5720421 (= e!3517728 e!3517727)))

(declare-fun c!1008852 () Bool)

(assert (=> b!5720421 (= c!1008852 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))))

(declare-fun d!1804675 () Bool)

(declare-fun c!1008853 () Bool)

(declare-fun e!3517726 () Bool)

(assert (=> d!1804675 (= c!1008853 e!3517726)))

(declare-fun res!2415119 () Bool)

(assert (=> d!1804675 (=> (not res!2415119) (not e!3517726))))

(assert (=> d!1804675 (= res!2415119 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))))

(assert (=> d!1804675 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326)) e!3517728)))

(declare-fun b!5720422 () Bool)

(assert (=> b!5720422 (= e!3517727 call!437029)))

(declare-fun b!5720423 () Bool)

(assert (=> b!5720423 (= e!3517727 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!437024 () Bool)

(assert (=> bm!437024 (= call!437029 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))) (h!69768 s!2326)))))

(declare-fun b!5720424 () Bool)

(assert (=> b!5720424 (= e!3517726 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))))))

(assert (= (and d!1804675 res!2415119) b!5720424))

(assert (= (and d!1804675 c!1008853) b!5720420))

(assert (= (and d!1804675 (not c!1008853)) b!5720421))

(assert (= (and b!5720421 c!1008852) b!5720422))

(assert (= (and b!5720421 (not c!1008852)) b!5720423))

(assert (= (or b!5720420 b!5720422) bm!437024))

(declare-fun m!6673870 () Bool)

(assert (=> b!5720420 m!6673870))

(declare-fun m!6673872 () Bool)

(assert (=> bm!437024 m!6673872))

(declare-fun m!6673874 () Bool)

(assert (=> b!5720424 m!6673874))

(assert (=> b!5719004 d!1804675))

(declare-fun bm!437025 () Bool)

(declare-fun c!1008854 () Bool)

(declare-fun call!437030 () Bool)

(declare-fun c!1008855 () Bool)

(assert (=> bm!437025 (= call!437030 (validRegex!7451 (ite c!1008854 (reg!16044 lt!2277814) (ite c!1008855 (regOne!31943 lt!2277814) (regOne!31942 lt!2277814)))))))

(declare-fun b!5720425 () Bool)

(declare-fun res!2415124 () Bool)

(declare-fun e!3517732 () Bool)

(assert (=> b!5720425 (=> (not res!2415124) (not e!3517732))))

(declare-fun call!437031 () Bool)

(assert (=> b!5720425 (= res!2415124 call!437031)))

(declare-fun e!3517730 () Bool)

(assert (=> b!5720425 (= e!3517730 e!3517732)))

(declare-fun b!5720426 () Bool)

(declare-fun e!3517729 () Bool)

(declare-fun call!437032 () Bool)

(assert (=> b!5720426 (= e!3517729 call!437032)))

(declare-fun b!5720427 () Bool)

(assert (=> b!5720427 (= e!3517732 call!437032)))

(declare-fun b!5720428 () Bool)

(declare-fun e!3517733 () Bool)

(declare-fun e!3517734 () Bool)

(assert (=> b!5720428 (= e!3517733 e!3517734)))

(assert (=> b!5720428 (= c!1008854 ((_ is Star!15715) lt!2277814))))

(declare-fun b!5720429 () Bool)

(declare-fun e!3517735 () Bool)

(assert (=> b!5720429 (= e!3517734 e!3517735)))

(declare-fun res!2415121 () Bool)

(assert (=> b!5720429 (= res!2415121 (not (nullable!5747 (reg!16044 lt!2277814))))))

(assert (=> b!5720429 (=> (not res!2415121) (not e!3517735))))

(declare-fun bm!437026 () Bool)

(assert (=> bm!437026 (= call!437031 call!437030)))

(declare-fun b!5720431 () Bool)

(declare-fun e!3517731 () Bool)

(assert (=> b!5720431 (= e!3517731 e!3517729)))

(declare-fun res!2415120 () Bool)

(assert (=> b!5720431 (=> (not res!2415120) (not e!3517729))))

(assert (=> b!5720431 (= res!2415120 call!437031)))

(declare-fun bm!437027 () Bool)

(assert (=> bm!437027 (= call!437032 (validRegex!7451 (ite c!1008855 (regTwo!31943 lt!2277814) (regTwo!31942 lt!2277814))))))

(declare-fun b!5720432 () Bool)

(declare-fun res!2415122 () Bool)

(assert (=> b!5720432 (=> res!2415122 e!3517731)))

(assert (=> b!5720432 (= res!2415122 (not ((_ is Concat!24560) lt!2277814)))))

(assert (=> b!5720432 (= e!3517730 e!3517731)))

(declare-fun b!5720433 () Bool)

(assert (=> b!5720433 (= e!3517734 e!3517730)))

(assert (=> b!5720433 (= c!1008855 ((_ is Union!15715) lt!2277814))))

(declare-fun d!1804677 () Bool)

(declare-fun res!2415123 () Bool)

(assert (=> d!1804677 (=> res!2415123 e!3517733)))

(assert (=> d!1804677 (= res!2415123 ((_ is ElementMatch!15715) lt!2277814))))

(assert (=> d!1804677 (= (validRegex!7451 lt!2277814) e!3517733)))

(declare-fun b!5720430 () Bool)

(assert (=> b!5720430 (= e!3517735 call!437030)))

(assert (= (and d!1804677 (not res!2415123)) b!5720428))

(assert (= (and b!5720428 c!1008854) b!5720429))

(assert (= (and b!5720428 (not c!1008854)) b!5720433))

(assert (= (and b!5720429 res!2415121) b!5720430))

(assert (= (and b!5720433 c!1008855) b!5720425))

(assert (= (and b!5720433 (not c!1008855)) b!5720432))

(assert (= (and b!5720425 res!2415124) b!5720427))

(assert (= (and b!5720432 (not res!2415122)) b!5720431))

(assert (= (and b!5720431 res!2415120) b!5720426))

(assert (= (or b!5720427 b!5720426) bm!437027))

(assert (= (or b!5720425 b!5720431) bm!437026))

(assert (= (or b!5720430 bm!437026) bm!437025))

(declare-fun m!6673876 () Bool)

(assert (=> bm!437025 m!6673876))

(declare-fun m!6673878 () Bool)

(assert (=> b!5720429 m!6673878))

(declare-fun m!6673880 () Bool)

(assert (=> bm!437027 m!6673880))

(assert (=> d!1804093 d!1804677))

(declare-fun bs!1337454 () Bool)

(declare-fun d!1804679 () Bool)

(assert (= bs!1337454 (and d!1804679 d!1803977)))

(declare-fun lambda!309099 () Int)

(assert (=> bs!1337454 (= lambda!309099 lambda!308976)))

(declare-fun bs!1337455 () Bool)

(assert (= bs!1337455 (and d!1804679 d!1804621)))

(assert (=> bs!1337455 (= lambda!309099 lambda!309090)))

(declare-fun bs!1337456 () Bool)

(assert (= bs!1337456 (and d!1804679 d!1804343)))

(assert (=> bs!1337456 (= lambda!309099 lambda!309049)))

(declare-fun bs!1337457 () Bool)

(assert (= bs!1337457 (and d!1804679 d!1804665)))

(assert (=> bs!1337457 (= lambda!309099 lambda!309098)))

(declare-fun bs!1337458 () Bool)

(assert (= bs!1337458 (and d!1804679 d!1804627)))

(assert (=> bs!1337458 (= lambda!309099 lambda!309091)))

(declare-fun bs!1337459 () Bool)

(assert (= bs!1337459 (and d!1804679 d!1804629)))

(assert (=> bs!1337459 (= lambda!309099 lambda!309092)))

(declare-fun bs!1337460 () Bool)

(assert (= bs!1337460 (and d!1804679 d!1804119)))

(assert (=> bs!1337460 (= lambda!309099 lambda!309010)))

(declare-fun bs!1337461 () Bool)

(assert (= bs!1337461 (and d!1804679 d!1804367)))

(assert (=> bs!1337461 (= lambda!309099 lambda!309052)))

(declare-fun bs!1337462 () Bool)

(assert (= bs!1337462 (and d!1804679 d!1803987)))

(assert (=> bs!1337462 (= lambda!309099 lambda!308981)))

(declare-fun bs!1337463 () Bool)

(assert (= bs!1337463 (and d!1804679 d!1804651)))

(assert (=> bs!1337463 (= lambda!309099 lambda!309095)))

(declare-fun bs!1337464 () Bool)

(assert (= bs!1337464 (and d!1804679 d!1804077)))

(assert (=> bs!1337464 (= lambda!309099 lambda!308999)))

(declare-fun bs!1337465 () Bool)

(assert (= bs!1337465 (and d!1804679 d!1804663)))

(assert (=> bs!1337465 (= lambda!309099 lambda!309097)))

(declare-fun bs!1337466 () Bool)

(assert (= bs!1337466 (and d!1804679 d!1804079)))

(assert (=> bs!1337466 (= lambda!309099 lambda!309002)))

(declare-fun e!3517738 () Bool)

(assert (=> d!1804679 e!3517738))

(declare-fun res!2415125 () Bool)

(assert (=> d!1804679 (=> (not res!2415125) (not e!3517738))))

(declare-fun lt!2277899 () Regex!15715)

(assert (=> d!1804679 (= res!2415125 (validRegex!7451 lt!2277899))))

(declare-fun e!3517736 () Regex!15715)

(assert (=> d!1804679 (= lt!2277899 e!3517736)))

(declare-fun c!1008857 () Bool)

(declare-fun e!3517741 () Bool)

(assert (=> d!1804679 (= c!1008857 e!3517741)))

(declare-fun res!2415126 () Bool)

(assert (=> d!1804679 (=> (not res!2415126) (not e!3517741))))

(assert (=> d!1804679 (= res!2415126 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))

(assert (=> d!1804679 (forall!14850 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322)) lambda!309099)))

(assert (=> d!1804679 (= (generalisedUnion!1578 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))) lt!2277899)))

(declare-fun b!5720434 () Bool)

(declare-fun e!3517740 () Regex!15715)

(assert (=> b!5720434 (= e!3517740 EmptyLang!15715)))

(declare-fun b!5720435 () Bool)

(assert (=> b!5720435 (= e!3517736 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))

(declare-fun b!5720436 () Bool)

(assert (=> b!5720436 (= e!3517740 (Union!15715 (h!69769 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))) (generalisedUnion!1578 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))))

(declare-fun b!5720437 () Bool)

(declare-fun e!3517739 () Bool)

(assert (=> b!5720437 (= e!3517739 (isUnion!664 lt!2277899))))

(declare-fun b!5720438 () Bool)

(assert (=> b!5720438 (= e!3517741 (isEmpty!35194 (t!376767 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322)))))))

(declare-fun b!5720439 () Bool)

(declare-fun e!3517737 () Bool)

(assert (=> b!5720439 (= e!3517737 (isEmptyLang!1234 lt!2277899))))

(declare-fun b!5720440 () Bool)

(assert (=> b!5720440 (= e!3517738 e!3517737)))

(declare-fun c!1008858 () Bool)

(assert (=> b!5720440 (= c!1008858 (isEmpty!35194 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))

(declare-fun b!5720441 () Bool)

(assert (=> b!5720441 (= e!3517736 e!3517740)))

(declare-fun c!1008859 () Bool)

(assert (=> b!5720441 (= c!1008859 ((_ is Cons!63321) (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322))))))

(declare-fun b!5720442 () Bool)

(assert (=> b!5720442 (= e!3517739 (= lt!2277899 (head!12111 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322)))))))

(declare-fun b!5720443 () Bool)

(assert (=> b!5720443 (= e!3517737 e!3517739)))

(declare-fun c!1008856 () Bool)

(assert (=> b!5720443 (= c!1008856 (isEmpty!35194 (tail!11206 (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322)))))))

(assert (= (and d!1804679 res!2415126) b!5720438))

(assert (= (and d!1804679 c!1008857) b!5720435))

(assert (= (and d!1804679 (not c!1008857)) b!5720441))

(assert (= (and b!5720441 c!1008859) b!5720436))

(assert (= (and b!5720441 (not c!1008859)) b!5720434))

(assert (= (and d!1804679 res!2415125) b!5720440))

(assert (= (and b!5720440 c!1008858) b!5720439))

(assert (= (and b!5720440 (not c!1008858)) b!5720443))

(assert (= (and b!5720443 c!1008856) b!5720442))

(assert (= (and b!5720443 (not c!1008856)) b!5720437))

(declare-fun m!6673882 () Bool)

(assert (=> b!5720439 m!6673882))

(declare-fun m!6673884 () Bool)

(assert (=> b!5720438 m!6673884))

(assert (=> b!5720440 m!6672522))

(declare-fun m!6673886 () Bool)

(assert (=> b!5720440 m!6673886))

(assert (=> b!5720442 m!6672522))

(declare-fun m!6673888 () Bool)

(assert (=> b!5720442 m!6673888))

(declare-fun m!6673890 () Bool)

(assert (=> d!1804679 m!6673890))

(assert (=> d!1804679 m!6672522))

(declare-fun m!6673892 () Bool)

(assert (=> d!1804679 m!6673892))

(declare-fun m!6673894 () Bool)

(assert (=> b!5720436 m!6673894))

(assert (=> b!5720443 m!6672522))

(declare-fun m!6673896 () Bool)

(assert (=> b!5720443 m!6673896))

(assert (=> b!5720443 m!6673896))

(declare-fun m!6673898 () Bool)

(assert (=> b!5720443 m!6673898))

(declare-fun m!6673900 () Bool)

(assert (=> b!5720437 m!6673900))

(assert (=> d!1804093 d!1804679))

(declare-fun bs!1337467 () Bool)

(declare-fun d!1804681 () Bool)

(assert (= bs!1337467 (and d!1804681 d!1804621)))

(declare-fun lambda!309100 () Int)

(assert (=> bs!1337467 (= lambda!309100 lambda!309090)))

(declare-fun bs!1337468 () Bool)

(assert (= bs!1337468 (and d!1804681 d!1804343)))

(assert (=> bs!1337468 (= lambda!309100 lambda!309049)))

(declare-fun bs!1337469 () Bool)

(assert (= bs!1337469 (and d!1804681 d!1804665)))

(assert (=> bs!1337469 (= lambda!309100 lambda!309098)))

(declare-fun bs!1337470 () Bool)

(assert (= bs!1337470 (and d!1804681 d!1804627)))

(assert (=> bs!1337470 (= lambda!309100 lambda!309091)))

(declare-fun bs!1337471 () Bool)

(assert (= bs!1337471 (and d!1804681 d!1804629)))

(assert (=> bs!1337471 (= lambda!309100 lambda!309092)))

(declare-fun bs!1337472 () Bool)

(assert (= bs!1337472 (and d!1804681 d!1804119)))

(assert (=> bs!1337472 (= lambda!309100 lambda!309010)))

(declare-fun bs!1337473 () Bool)

(assert (= bs!1337473 (and d!1804681 d!1804367)))

(assert (=> bs!1337473 (= lambda!309100 lambda!309052)))

(declare-fun bs!1337474 () Bool)

(assert (= bs!1337474 (and d!1804681 d!1803987)))

(assert (=> bs!1337474 (= lambda!309100 lambda!308981)))

(declare-fun bs!1337475 () Bool)

(assert (= bs!1337475 (and d!1804681 d!1804679)))

(assert (=> bs!1337475 (= lambda!309100 lambda!309099)))

(declare-fun bs!1337476 () Bool)

(assert (= bs!1337476 (and d!1804681 d!1803977)))

(assert (=> bs!1337476 (= lambda!309100 lambda!308976)))

(declare-fun bs!1337477 () Bool)

(assert (= bs!1337477 (and d!1804681 d!1804651)))

(assert (=> bs!1337477 (= lambda!309100 lambda!309095)))

(declare-fun bs!1337478 () Bool)

(assert (= bs!1337478 (and d!1804681 d!1804077)))

(assert (=> bs!1337478 (= lambda!309100 lambda!308999)))

(declare-fun bs!1337479 () Bool)

(assert (= bs!1337479 (and d!1804681 d!1804663)))

(assert (=> bs!1337479 (= lambda!309100 lambda!309097)))

(declare-fun bs!1337480 () Bool)

(assert (= bs!1337480 (and d!1804681 d!1804079)))

(assert (=> bs!1337480 (= lambda!309100 lambda!309002)))

(declare-fun lt!2277900 () List!63445)

(assert (=> d!1804681 (forall!14850 lt!2277900 lambda!309100)))

(declare-fun e!3517742 () List!63445)

(assert (=> d!1804681 (= lt!2277900 e!3517742)))

(declare-fun c!1008860 () Bool)

(assert (=> d!1804681 (= c!1008860 ((_ is Cons!63322) (Cons!63322 lt!2277732 Nil!63322)))))

(assert (=> d!1804681 (= (unfocusZipperList!1143 (Cons!63322 lt!2277732 Nil!63322)) lt!2277900)))

(declare-fun b!5720444 () Bool)

(assert (=> b!5720444 (= e!3517742 (Cons!63321 (generalisedConcat!1330 (exprs!5599 (h!69770 (Cons!63322 lt!2277732 Nil!63322)))) (unfocusZipperList!1143 (t!376768 (Cons!63322 lt!2277732 Nil!63322)))))))

(declare-fun b!5720445 () Bool)

(assert (=> b!5720445 (= e!3517742 Nil!63321)))

(assert (= (and d!1804681 c!1008860) b!5720444))

(assert (= (and d!1804681 (not c!1008860)) b!5720445))

(declare-fun m!6673902 () Bool)

(assert (=> d!1804681 m!6673902))

(declare-fun m!6673904 () Bool)

(assert (=> b!5720444 m!6673904))

(declare-fun m!6673906 () Bool)

(assert (=> b!5720444 m!6673906))

(assert (=> d!1804093 d!1804681))

(declare-fun b!5720446 () Bool)

(declare-fun c!1008863 () Bool)

(declare-fun e!3517747 () Bool)

(assert (=> b!5720446 (= c!1008863 e!3517747)))

(declare-fun res!2415127 () Bool)

(assert (=> b!5720446 (=> (not res!2415127) (not e!3517747))))

(assert (=> b!5720446 (= res!2415127 ((_ is Concat!24560) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))))))

(declare-fun e!3517745 () (InoxSet Context!10198))

(declare-fun e!3517748 () (InoxSet Context!10198))

(assert (=> b!5720446 (= e!3517745 e!3517748)))

(declare-fun call!437036 () (InoxSet Context!10198))

(declare-fun bm!437028 () Bool)

(declare-fun c!1008861 () Bool)

(declare-fun c!1008862 () Bool)

(declare-fun call!437038 () List!63445)

(assert (=> bm!437028 (= call!437036 (derivationStepZipperDown!1057 (ite c!1008862 (regOne!31943 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (ite c!1008863 (regTwo!31942 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (ite c!1008861 (regOne!31942 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (reg!16044 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))))))) (ite (or c!1008862 c!1008863) (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784)) (Context!10199 call!437038)) (h!69768 s!2326)))))

(declare-fun bm!437029 () Bool)

(declare-fun call!437033 () List!63445)

(declare-fun call!437034 () (InoxSet Context!10198))

(assert (=> bm!437029 (= call!437034 (derivationStepZipperDown!1057 (ite c!1008862 (regTwo!31943 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (regOne!31942 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))))) (ite c!1008862 (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784)) (Context!10199 call!437033)) (h!69768 s!2326)))))

(declare-fun bm!437030 () Bool)

(declare-fun call!437037 () (InoxSet Context!10198))

(assert (=> bm!437030 (= call!437037 call!437036)))

(declare-fun b!5720447 () Bool)

(declare-fun e!3517746 () (InoxSet Context!10198))

(declare-fun call!437035 () (InoxSet Context!10198))

(assert (=> b!5720447 (= e!3517746 call!437035)))

(declare-fun e!3517744 () (InoxSet Context!10198))

(declare-fun b!5720448 () Bool)

(assert (=> b!5720448 (= e!3517744 (store ((as const (Array Context!10198 Bool)) false) (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784)) true))))

(declare-fun b!5720449 () Bool)

(assert (=> b!5720449 (= e!3517744 e!3517745)))

(assert (=> b!5720449 (= c!1008862 ((_ is Union!15715) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))))))

(declare-fun b!5720450 () Bool)

(assert (=> b!5720450 (= e!3517748 ((_ map or) call!437034 call!437037))))

(declare-fun b!5720451 () Bool)

(assert (=> b!5720451 (= e!3517747 (nullable!5747 (regOne!31942 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))))))))

(declare-fun b!5720452 () Bool)

(declare-fun e!3517743 () (InoxSet Context!10198))

(assert (=> b!5720452 (= e!3517743 call!437035)))

(declare-fun b!5720453 () Bool)

(assert (=> b!5720453 (= e!3517745 ((_ map or) call!437036 call!437034))))

(declare-fun b!5720454 () Bool)

(assert (=> b!5720454 (= e!3517743 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5720455 () Bool)

(declare-fun c!1008864 () Bool)

(assert (=> b!5720455 (= c!1008864 ((_ is Star!15715) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))))))

(assert (=> b!5720455 (= e!3517746 e!3517743)))

(declare-fun c!1008865 () Bool)

(declare-fun d!1804683 () Bool)

(assert (=> d!1804683 (= c!1008865 (and ((_ is ElementMatch!15715) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (= (c!1008289 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (h!69768 s!2326))))))

(assert (=> d!1804683 (= (derivationStepZipperDown!1057 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))) (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784)) (h!69768 s!2326)) e!3517744)))

(declare-fun bm!437031 () Bool)

(assert (=> bm!437031 (= call!437033 ($colon$colon!1732 (exprs!5599 (ite (or c!1008494 c!1008495) lt!2277732 (Context!10199 call!436784))) (ite (or c!1008863 c!1008861) (regTwo!31942 (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292)))))))))))

(declare-fun bm!437032 () Bool)

(assert (=> bm!437032 (= call!437038 call!437033)))

(declare-fun bm!437033 () Bool)

(assert (=> bm!437033 (= call!437035 call!437037)))

(declare-fun b!5720456 () Bool)

(assert (=> b!5720456 (= e!3517748 e!3517746)))

(assert (=> b!5720456 (= c!1008861 ((_ is Concat!24560) (ite c!1008494 (regOne!31943 (reg!16044 (regOne!31942 r!7292))) (ite c!1008495 (regTwo!31942 (reg!16044 (regOne!31942 r!7292))) (ite c!1008493 (regOne!31942 (reg!16044 (regOne!31942 r!7292))) (reg!16044 (reg!16044 (regOne!31942 r!7292))))))))))

(assert (= (and d!1804683 c!1008865) b!5720448))

(assert (= (and d!1804683 (not c!1008865)) b!5720449))

(assert (= (and b!5720449 c!1008862) b!5720453))

(assert (= (and b!5720449 (not c!1008862)) b!5720446))

(assert (= (and b!5720446 res!2415127) b!5720451))

(assert (= (and b!5720446 c!1008863) b!5720450))

(assert (= (and b!5720446 (not c!1008863)) b!5720456))

(assert (= (and b!5720456 c!1008861) b!5720447))

(assert (= (and b!5720456 (not c!1008861)) b!5720455))

(assert (= (and b!5720455 c!1008864) b!5720452))

(assert (= (and b!5720455 (not c!1008864)) b!5720454))

(assert (= (or b!5720447 b!5720452) bm!437032))

(assert (= (or b!5720447 b!5720452) bm!437033))

(assert (= (or b!5720450 bm!437032) bm!437031))

(assert (= (or b!5720450 bm!437033) bm!437030))

(assert (= (or b!5720453 b!5720450) bm!437029))

(assert (= (or b!5720453 bm!437030) bm!437028))

(declare-fun m!6673908 () Bool)

(assert (=> bm!437028 m!6673908))

(declare-fun m!6673910 () Bool)

(assert (=> b!5720448 m!6673910))

(declare-fun m!6673912 () Bool)

(assert (=> bm!437031 m!6673912))

(declare-fun m!6673914 () Bool)

(assert (=> b!5720451 m!6673914))

(declare-fun m!6673916 () Bool)

(assert (=> bm!437029 m!6673916))

(assert (=> bm!436774 d!1804683))

(assert (=> bm!436773 d!1804219))

(declare-fun bs!1337481 () Bool)

(declare-fun b!5720462 () Bool)

(assert (= bs!1337481 (and b!5720462 d!1804129)))

(declare-fun lambda!309101 () Int)

(assert (=> bs!1337481 (not (= lambda!309101 lambda!309019))))

(declare-fun bs!1337482 () Bool)

(assert (= bs!1337482 (and b!5720462 b!5720026)))

(assert (=> bs!1337482 (= (and (= (reg!16044 (regOne!31943 r!7292)) (reg!16044 (regTwo!31943 r!7292))) (= (regOne!31943 r!7292) (regTwo!31943 r!7292))) (= lambda!309101 lambda!309082))))

(declare-fun bs!1337483 () Bool)

(assert (= bs!1337483 (and b!5720462 b!5718386)))

(assert (=> bs!1337483 (not (= lambda!309101 lambda!308952))))

(assert (=> bs!1337483 (not (= lambda!309101 lambda!308951))))

(declare-fun bs!1337484 () Bool)

(assert (= bs!1337484 (and b!5720462 b!5719974)))

(assert (=> bs!1337484 (not (= lambda!309101 lambda!309077))))

(declare-fun bs!1337485 () Bool)

(assert (= bs!1337485 (and b!5720462 b!5720306)))

(assert (=> bs!1337485 (= (and (= (reg!16044 (regOne!31943 r!7292)) (reg!16044 (regOne!31943 lt!2277714))) (= (regOne!31943 r!7292) (regOne!31943 lt!2277714))) (= lambda!309101 lambda!309093))))

(declare-fun bs!1337486 () Bool)

(assert (= bs!1337486 (and b!5720462 b!5718490)))

(assert (=> bs!1337486 (not (= lambda!309101 lambda!308968))))

(declare-fun bs!1337487 () Bool)

(assert (= bs!1337487 (and b!5720462 d!1804319)))

(assert (=> bs!1337487 (not (= lambda!309101 lambda!309048))))

(declare-fun bs!1337488 () Bool)

(assert (= bs!1337488 (and b!5720462 b!5719082)))

(assert (=> bs!1337488 (not (= lambda!309101 lambda!309007))))

(declare-fun bs!1337489 () Bool)

(assert (= bs!1337489 (and b!5720462 b!5719084)))

(assert (=> bs!1337489 (= (and (= (reg!16044 (regOne!31943 r!7292)) (reg!16044 lt!2277714)) (= (regOne!31943 r!7292) lt!2277714)) (= lambda!309101 lambda!309006))))

(declare-fun bs!1337490 () Bool)

(assert (= bs!1337490 (and b!5720462 b!5718492)))

(assert (=> bs!1337490 (= (and (= (reg!16044 (regOne!31943 r!7292)) (reg!16044 r!7292)) (= (regOne!31943 r!7292) r!7292)) (= lambda!309101 lambda!308967))))

(declare-fun bs!1337491 () Bool)

(assert (= bs!1337491 (and b!5720462 d!1804125)))

(assert (=> bs!1337491 (not (= lambda!309101 lambda!309016))))

(assert (=> bs!1337487 (not (= lambda!309101 lambda!309047))))

(assert (=> bs!1337491 (not (= lambda!309101 lambda!309015))))

(declare-fun bs!1337492 () Bool)

(assert (= bs!1337492 (and b!5720462 b!5720304)))

(assert (=> bs!1337492 (not (= lambda!309101 lambda!309094))))

(declare-fun bs!1337493 () Bool)

(assert (= bs!1337493 (and b!5720462 b!5719976)))

(assert (=> bs!1337493 (= (and (= (reg!16044 (regOne!31943 r!7292)) (reg!16044 (regTwo!31943 lt!2277714))) (= (regOne!31943 r!7292) (regTwo!31943 lt!2277714))) (= lambda!309101 lambda!309076))))

(declare-fun bs!1337494 () Bool)

(assert (= bs!1337494 (and b!5720462 b!5720024)))

(assert (=> bs!1337494 (not (= lambda!309101 lambda!309084))))

(declare-fun bs!1337495 () Bool)

(assert (= bs!1337495 (and b!5720462 d!1804419)))

(assert (=> bs!1337495 (not (= lambda!309101 lambda!309067))))

(assert (=> b!5720462 true))

(assert (=> b!5720462 true))

(declare-fun bs!1337496 () Bool)

(declare-fun b!5720460 () Bool)

(assert (= bs!1337496 (and b!5720460 b!5720026)))

(declare-fun lambda!309102 () Int)

(assert (=> bs!1337496 (not (= lambda!309102 lambda!309082))))

(declare-fun bs!1337497 () Bool)

(assert (= bs!1337497 (and b!5720460 b!5718386)))

(assert (=> bs!1337497 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309102 lambda!308952))))

(assert (=> bs!1337497 (not (= lambda!309102 lambda!308951))))

(declare-fun bs!1337498 () Bool)

(assert (= bs!1337498 (and b!5720460 b!5719974)))

(assert (=> bs!1337498 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 (regTwo!31943 lt!2277714))) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 (regTwo!31943 lt!2277714)))) (= lambda!309102 lambda!309077))))

(declare-fun bs!1337499 () Bool)

(assert (= bs!1337499 (and b!5720460 b!5720306)))

(assert (=> bs!1337499 (not (= lambda!309102 lambda!309093))))

(declare-fun bs!1337500 () Bool)

(assert (= bs!1337500 (and b!5720460 b!5718490)))

(assert (=> bs!1337500 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309102 lambda!308968))))

(declare-fun bs!1337501 () Bool)

(assert (= bs!1337501 (and b!5720460 d!1804319)))

(assert (=> bs!1337501 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309102 lambda!309048))))

(declare-fun bs!1337502 () Bool)

(assert (= bs!1337502 (and b!5720460 b!5719082)))

(assert (=> bs!1337502 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 lt!2277714)) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 lt!2277714))) (= lambda!309102 lambda!309007))))

(declare-fun bs!1337503 () Bool)

(assert (= bs!1337503 (and b!5720460 b!5719084)))

(assert (=> bs!1337503 (not (= lambda!309102 lambda!309006))))

(declare-fun bs!1337504 () Bool)

(assert (= bs!1337504 (and b!5720460 b!5718492)))

(assert (=> bs!1337504 (not (= lambda!309102 lambda!308967))))

(declare-fun bs!1337505 () Bool)

(assert (= bs!1337505 (and b!5720460 d!1804125)))

(assert (=> bs!1337505 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 r!7292)) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 r!7292))) (= lambda!309102 lambda!309016))))

(assert (=> bs!1337501 (not (= lambda!309102 lambda!309047))))

(assert (=> bs!1337505 (not (= lambda!309102 lambda!309015))))

(declare-fun bs!1337506 () Bool)

(assert (= bs!1337506 (and b!5720460 d!1804129)))

(assert (=> bs!1337506 (not (= lambda!309102 lambda!309019))))

(declare-fun bs!1337507 () Bool)

(assert (= bs!1337507 (and b!5720460 b!5720462)))

(assert (=> bs!1337507 (not (= lambda!309102 lambda!309101))))

(declare-fun bs!1337508 () Bool)

(assert (= bs!1337508 (and b!5720460 b!5720304)))

(assert (=> bs!1337508 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 (regOne!31943 lt!2277714))) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 (regOne!31943 lt!2277714)))) (= lambda!309102 lambda!309094))))

(declare-fun bs!1337509 () Bool)

(assert (= bs!1337509 (and b!5720460 b!5719976)))

(assert (=> bs!1337509 (not (= lambda!309102 lambda!309076))))

(declare-fun bs!1337510 () Bool)

(assert (= bs!1337510 (and b!5720460 b!5720024)))

(assert (=> bs!1337510 (= (and (= (regOne!31942 (regOne!31943 r!7292)) (regOne!31942 (regTwo!31943 r!7292))) (= (regTwo!31942 (regOne!31943 r!7292)) (regTwo!31942 (regTwo!31943 r!7292)))) (= lambda!309102 lambda!309084))))

(declare-fun bs!1337511 () Bool)

(assert (= bs!1337511 (and b!5720460 d!1804419)))

(assert (=> bs!1337511 (not (= lambda!309102 lambda!309067))))

(assert (=> b!5720460 true))

(assert (=> b!5720460 true))

(declare-fun b!5720457 () Bool)

(declare-fun c!1008866 () Bool)

(assert (=> b!5720457 (= c!1008866 ((_ is Union!15715) (regOne!31943 r!7292)))))

(declare-fun e!3517755 () Bool)

(declare-fun e!3517750 () Bool)

(assert (=> b!5720457 (= e!3517755 e!3517750)))

(declare-fun b!5720458 () Bool)

(declare-fun e!3517752 () Bool)

(declare-fun call!437040 () Bool)

(assert (=> b!5720458 (= e!3517752 call!437040)))

(declare-fun b!5720459 () Bool)

(declare-fun e!3517754 () Bool)

(assert (=> b!5720459 (= e!3517752 e!3517754)))

(declare-fun res!2415130 () Bool)

(assert (=> b!5720459 (= res!2415130 (not ((_ is EmptyLang!15715) (regOne!31943 r!7292))))))

(assert (=> b!5720459 (=> (not res!2415130) (not e!3517754))))

(declare-fun c!1008869 () Bool)

(declare-fun bm!437034 () Bool)

(declare-fun call!437039 () Bool)

(assert (=> bm!437034 (= call!437039 (Exists!2815 (ite c!1008869 lambda!309101 lambda!309102)))))

(declare-fun e!3517753 () Bool)

(assert (=> b!5720460 (= e!3517753 call!437039)))

(declare-fun b!5720461 () Bool)

(declare-fun c!1008868 () Bool)

(assert (=> b!5720461 (= c!1008868 ((_ is ElementMatch!15715) (regOne!31943 r!7292)))))

(assert (=> b!5720461 (= e!3517754 e!3517755)))

(declare-fun e!3517749 () Bool)

(assert (=> b!5720462 (= e!3517749 call!437039)))

(declare-fun d!1804685 () Bool)

(declare-fun c!1008867 () Bool)

(assert (=> d!1804685 (= c!1008867 ((_ is EmptyExpr!15715) (regOne!31943 r!7292)))))

(assert (=> d!1804685 (= (matchRSpec!2818 (regOne!31943 r!7292) s!2326) e!3517752)))

(declare-fun b!5720463 () Bool)

(declare-fun e!3517751 () Bool)

(assert (=> b!5720463 (= e!3517750 e!3517751)))

(declare-fun res!2415129 () Bool)

(assert (=> b!5720463 (= res!2415129 (matchRSpec!2818 (regOne!31943 (regOne!31943 r!7292)) s!2326))))

(assert (=> b!5720463 (=> res!2415129 e!3517751)))

(declare-fun b!5720464 () Bool)

(assert (=> b!5720464 (= e!3517751 (matchRSpec!2818 (regTwo!31943 (regOne!31943 r!7292)) s!2326))))

(declare-fun b!5720465 () Bool)

(assert (=> b!5720465 (= e!3517755 (= s!2326 (Cons!63320 (c!1008289 (regOne!31943 r!7292)) Nil!63320)))))

(declare-fun b!5720466 () Bool)

(assert (=> b!5720466 (= e!3517750 e!3517753)))

(assert (=> b!5720466 (= c!1008869 ((_ is Star!15715) (regOne!31943 r!7292)))))

(declare-fun bm!437035 () Bool)

(assert (=> bm!437035 (= call!437040 (isEmpty!35197 s!2326))))

(declare-fun b!5720467 () Bool)

(declare-fun res!2415128 () Bool)

(assert (=> b!5720467 (=> res!2415128 e!3517749)))

(assert (=> b!5720467 (= res!2415128 call!437040)))

(assert (=> b!5720467 (= e!3517753 e!3517749)))

(assert (= (and d!1804685 c!1008867) b!5720458))

(assert (= (and d!1804685 (not c!1008867)) b!5720459))

(assert (= (and b!5720459 res!2415130) b!5720461))

(assert (= (and b!5720461 c!1008868) b!5720465))

(assert (= (and b!5720461 (not c!1008868)) b!5720457))

(assert (= (and b!5720457 c!1008866) b!5720463))

(assert (= (and b!5720457 (not c!1008866)) b!5720466))

(assert (= (and b!5720463 (not res!2415129)) b!5720464))

(assert (= (and b!5720466 c!1008869) b!5720467))

(assert (= (and b!5720466 (not c!1008869)) b!5720460))

(assert (= (and b!5720467 (not res!2415128)) b!5720462))

(assert (= (or b!5720462 b!5720460) bm!437034))

(assert (= (or b!5720458 b!5720467) bm!437035))

(declare-fun m!6673918 () Bool)

(assert (=> bm!437034 m!6673918))

(declare-fun m!6673920 () Bool)

(assert (=> b!5720463 m!6673920))

(declare-fun m!6673922 () Bool)

(assert (=> b!5720464 m!6673922))

(assert (=> bm!437035 m!6672120))

(assert (=> b!5718493 d!1804685))

(assert (=> bm!436771 d!1804219))

(declare-fun d!1804687 () Bool)

(assert (=> d!1804687 (= (isEmpty!35194 (unfocusZipperList!1143 zl!343)) ((_ is Nil!63321) (unfocusZipperList!1143 zl!343)))))

(assert (=> b!5719035 d!1804687))

(assert (=> d!1803941 d!1804219))

(assert (=> d!1803941 d!1803983))

(declare-fun e!3517758 () (InoxSet Context!10198))

(declare-fun call!437041 () (InoxSet Context!10198))

(declare-fun b!5720468 () Bool)

(assert (=> b!5720468 (= e!3517758 ((_ map or) call!437041 (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736)))))) (h!69768 s!2326))))))

(declare-fun b!5720469 () Bool)

(declare-fun e!3517757 () (InoxSet Context!10198))

(assert (=> b!5720469 (= e!3517758 e!3517757)))

(declare-fun c!1008870 () Bool)

(assert (=> b!5720469 (= c!1008870 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736))))))))

(declare-fun d!1804689 () Bool)

(declare-fun c!1008871 () Bool)

(declare-fun e!3517756 () Bool)

(assert (=> d!1804689 (= c!1008871 e!3517756)))

(declare-fun res!2415131 () Bool)

(assert (=> d!1804689 (=> (not res!2415131) (not e!3517756))))

(assert (=> d!1804689 (= res!2415131 ((_ is Cons!63321) (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736))))))))

(assert (=> d!1804689 (= (derivationStepZipperUp!983 (Context!10199 (t!376767 (exprs!5599 lt!2277736))) (h!69768 s!2326)) e!3517758)))

(declare-fun b!5720470 () Bool)

(assert (=> b!5720470 (= e!3517757 call!437041)))

(declare-fun b!5720471 () Bool)

(assert (=> b!5720471 (= e!3517757 ((as const (Array Context!10198 Bool)) false))))

(declare-fun bm!437036 () Bool)

(assert (=> bm!437036 (= call!437041 (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736)))))) (h!69768 s!2326)))))

(declare-fun b!5720472 () Bool)

(assert (=> b!5720472 (= e!3517756 (nullable!5747 (h!69769 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 lt!2277736)))))))))

(assert (= (and d!1804689 res!2415131) b!5720472))

(assert (= (and d!1804689 c!1008871) b!5720468))

(assert (= (and d!1804689 (not c!1008871)) b!5720469))

(assert (= (and b!5720469 c!1008870) b!5720470))

(assert (= (and b!5720469 (not c!1008870)) b!5720471))

(assert (= (or b!5720468 b!5720470) bm!437036))

(declare-fun m!6673924 () Bool)

(assert (=> b!5720468 m!6673924))

(declare-fun m!6673926 () Bool)

(assert (=> bm!437036 m!6673926))

(declare-fun m!6673928 () Bool)

(assert (=> b!5720472 m!6673928))

(assert (=> b!5718816 d!1804689))

(declare-fun b!5720473 () Bool)

(declare-fun c!1008874 () Bool)

(declare-fun e!3517763 () Bool)

(assert (=> b!5720473 (= c!1008874 e!3517763)))

(declare-fun res!2415132 () Bool)

(assert (=> b!5720473 (=> (not res!2415132) (not e!3517763))))

(assert (=> b!5720473 (= res!2415132 ((_ is Concat!24560) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(declare-fun e!3517761 () (InoxSet Context!10198))

(declare-fun e!3517764 () (InoxSet Context!10198))

(assert (=> b!5720473 (= e!3517761 e!3517764)))

(declare-fun c!1008872 () Bool)

(declare-fun call!437047 () List!63445)

(declare-fun c!1008873 () Bool)

(declare-fun bm!437037 () Bool)

(declare-fun call!437045 () (InoxSet Context!10198))

(assert (=> bm!437037 (= call!437045 (derivationStepZipperDown!1057 (ite c!1008873 (regOne!31943 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (ite c!1008874 (regTwo!31942 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (ite c!1008872 (regOne!31942 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (reg!16044 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))) (ite (or c!1008873 c!1008874) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (Context!10199 call!437047)) (h!69768 s!2326)))))

(declare-fun call!437043 () (InoxSet Context!10198))

(declare-fun bm!437038 () Bool)

(declare-fun call!437042 () List!63445)

(assert (=> bm!437038 (= call!437043 (derivationStepZipperDown!1057 (ite c!1008873 (regTwo!31943 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (regOne!31942 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))) (ite c!1008873 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (Context!10199 call!437042)) (h!69768 s!2326)))))

(declare-fun bm!437039 () Bool)

(declare-fun call!437046 () (InoxSet Context!10198))

(assert (=> bm!437039 (= call!437046 call!437045)))

(declare-fun b!5720474 () Bool)

(declare-fun e!3517762 () (InoxSet Context!10198))

(declare-fun call!437044 () (InoxSet Context!10198))

(assert (=> b!5720474 (= e!3517762 call!437044)))

(declare-fun b!5720475 () Bool)

(declare-fun e!3517760 () (InoxSet Context!10198))

(assert (=> b!5720475 (= e!3517760 (store ((as const (Array Context!10198 Bool)) false) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) true))))

(declare-fun b!5720476 () Bool)

(assert (=> b!5720476 (= e!3517760 e!3517761)))

(assert (=> b!5720476 (= c!1008873 ((_ is Union!15715) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(declare-fun b!5720477 () Bool)

(assert (=> b!5720477 (= e!3517764 ((_ map or) call!437043 call!437046))))

(declare-fun b!5720478 () Bool)

(assert (=> b!5720478 (= e!3517763 (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))))

(declare-fun b!5720479 () Bool)

(declare-fun e!3517759 () (InoxSet Context!10198))

(assert (=> b!5720479 (= e!3517759 call!437044)))

(declare-fun b!5720480 () Bool)

(assert (=> b!5720480 (= e!3517761 ((_ map or) call!437045 call!437043))))

(declare-fun b!5720481 () Bool)

(assert (=> b!5720481 (= e!3517759 ((as const (Array Context!10198 Bool)) false))))

(declare-fun b!5720482 () Bool)

(declare-fun c!1008875 () Bool)

(assert (=> b!5720482 (= c!1008875 ((_ is Star!15715) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(assert (=> b!5720482 (= e!3517762 e!3517759)))

(declare-fun d!1804691 () Bool)

(declare-fun c!1008876 () Bool)

(assert (=> d!1804691 (= c!1008876 (and ((_ is ElementMatch!15715) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (= (c!1008289 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326))))))

(assert (=> d!1804691 (= (derivationStepZipperDown!1057 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))) (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69768 s!2326)) e!3517760)))

(declare-fun bm!437040 () Bool)

(assert (=> bm!437040 (= call!437042 ($colon$colon!1732 (exprs!5599 (Context!10199 (t!376767 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))) (ite (or c!1008874 c!1008872) (regTwo!31942 (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343))))))))))))

(declare-fun bm!437041 () Bool)

(assert (=> bm!437041 (= call!437047 call!437042)))

(declare-fun bm!437042 () Bool)

(assert (=> bm!437042 (= call!437044 call!437046)))

(declare-fun b!5720483 () Bool)

(assert (=> b!5720483 (= e!3517764 e!3517762)))

(assert (=> b!5720483 (= c!1008872 ((_ is Concat!24560) (h!69769 (exprs!5599 (Context!10199 (Cons!63321 (h!69769 (exprs!5599 (h!69770 zl!343))) (t!376767 (exprs!5599 (h!69770 zl!343)))))))))))

(assert (= (and d!1804691 c!1008876) b!5720475))

(assert (= (and d!1804691 (not c!1008876)) b!5720476))

(assert (= (and b!5720476 c!1008873) b!5720480))

(assert (= (and b!5720476 (not c!1008873)) b!5720473))

(assert (= (and b!5720473 res!2415132) b!5720478))

(assert (= (and b!5720473 c!1008874) b!5720477))

(assert (= (and b!5720473 (not c!1008874)) b!5720483))

(assert (= (and b!5720483 c!1008872) b!5720474))

(assert (= (and b!5720483 (not c!1008872)) b!5720482))

(assert (= (and b!5720482 c!1008875) b!5720479))

(assert (= (and b!5720482 (not c!1008875)) b!5720481))

(assert (= (or b!5720474 b!5720479) bm!437041))

(assert (= (or b!5720474 b!5720479) bm!437042))

(assert (= (or b!5720477 bm!437041) bm!437040))

(assert (= (or b!5720477 bm!437042) bm!437039))

(assert (= (or b!5720480 b!5720477) bm!437038))

(assert (= (or b!5720480 bm!437039) bm!437037))

(declare-fun m!6673930 () Bool)

(assert (=> bm!437037 m!6673930))

(declare-fun m!6673932 () Bool)

(assert (=> b!5720475 m!6673932))

(declare-fun m!6673934 () Bool)

(assert (=> bm!437040 m!6673934))

(declare-fun m!6673936 () Bool)

(assert (=> b!5720478 m!6673936))

(declare-fun m!6673938 () Bool)

(assert (=> bm!437038 m!6673938))

(assert (=> bm!436767 d!1804691))

(assert (=> bs!1336908 d!1804105))

(declare-fun bm!437043 () Bool)

(declare-fun c!1008878 () Bool)

(declare-fun c!1008877 () Bool)

(declare-fun call!437048 () Bool)

(assert (=> bm!437043 (= call!437048 (validRegex!7451 (ite c!1008877 (reg!16044 lt!2277825) (ite c!1008878 (regOne!31943 lt!2277825) (regOne!31942 lt!2277825)))))))

(declare-fun b!5720484 () Bool)

(declare-fun res!2415137 () Bool)

(declare-fun e!3517768 () Bool)

(assert (=> b!5720484 (=> (not res!2415137) (not e!3517768))))

(declare-fun call!437049 () Bool)

(assert (=> b!5720484 (= res!2415137 call!437049)))

(declare-fun e!3517766 () Bool)

(assert (=> b!5720484 (= e!3517766 e!3517768)))

(declare-fun b!5720485 () Bool)

(declare-fun e!3517765 () Bool)

(declare-fun call!437050 () Bool)

(assert (=> b!5720485 (= e!3517765 call!437050)))

(declare-fun b!5720486 () Bool)

(assert (=> b!5720486 (= e!3517768 call!437050)))

(declare-fun b!5720487 () Bool)

(declare-fun e!3517769 () Bool)

(declare-fun e!3517770 () Bool)

(assert (=> b!5720487 (= e!3517769 e!3517770)))

(assert (=> b!5720487 (= c!1008877 ((_ is Star!15715) lt!2277825))))

(declare-fun b!5720488 () Bool)

(declare-fun e!3517771 () Bool)

(assert (=> b!5720488 (= e!3517770 e!3517771)))

(declare-fun res!2415134 () Bool)

(assert (=> b!5720488 (= res!2415134 (not (nullable!5747 (reg!16044 lt!2277825))))))

(assert (=> b!5720488 (=> (not res!2415134) (not e!3517771))))

(declare-fun bm!437044 () Bool)

(assert (=> bm!437044 (= call!437049 call!437048)))

(declare-fun b!5720490 () Bool)

(declare-fun e!3517767 () Bool)

(assert (=> b!5720490 (= e!3517767 e!3517765)))

(declare-fun res!2415133 () Bool)

(assert (=> b!5720490 (=> (not res!2415133) (not e!3517765))))

(assert (=> b!5720490 (= res!2415133 call!437049)))

(declare-fun bm!437045 () Bool)

(assert (=> bm!437045 (= call!437050 (validRegex!7451 (ite c!1008878 (regTwo!31943 lt!2277825) (regTwo!31942 lt!2277825))))))

(declare-fun b!5720491 () Bool)

(declare-fun res!2415135 () Bool)

(assert (=> b!5720491 (=> res!2415135 e!3517767)))

(assert (=> b!5720491 (= res!2415135 (not ((_ is Concat!24560) lt!2277825)))))

(assert (=> b!5720491 (= e!3517766 e!3517767)))

(declare-fun b!5720492 () Bool)

(assert (=> b!5720492 (= e!3517770 e!3517766)))

(assert (=> b!5720492 (= c!1008878 ((_ is Union!15715) lt!2277825))))

(declare-fun d!1804693 () Bool)

(declare-fun res!2415136 () Bool)

(assert (=> d!1804693 (=> res!2415136 e!3517769)))

(assert (=> d!1804693 (= res!2415136 ((_ is ElementMatch!15715) lt!2277825))))

(assert (=> d!1804693 (= (validRegex!7451 lt!2277825) e!3517769)))

(declare-fun b!5720489 () Bool)

(assert (=> b!5720489 (= e!3517771 call!437048)))

(assert (= (and d!1804693 (not res!2415136)) b!5720487))

(assert (= (and b!5720487 c!1008877) b!5720488))

(assert (= (and b!5720487 (not c!1008877)) b!5720492))

(assert (= (and b!5720488 res!2415134) b!5720489))

(assert (= (and b!5720492 c!1008878) b!5720484))

(assert (= (and b!5720492 (not c!1008878)) b!5720491))

(assert (= (and b!5720484 res!2415137) b!5720486))

(assert (= (and b!5720491 (not res!2415135)) b!5720490))

(assert (= (and b!5720490 res!2415133) b!5720485))

(assert (= (or b!5720486 b!5720485) bm!437045))

(assert (= (or b!5720484 b!5720490) bm!437044))

(assert (= (or b!5720489 bm!437044) bm!437043))

(declare-fun m!6673940 () Bool)

(assert (=> bm!437043 m!6673940))

(declare-fun m!6673942 () Bool)

(assert (=> b!5720488 m!6673942))

(declare-fun m!6673944 () Bool)

(assert (=> bm!437045 m!6673944))

(assert (=> d!1804119 d!1804693))

(declare-fun d!1804695 () Bool)

(declare-fun res!2415138 () Bool)

(declare-fun e!3517772 () Bool)

(assert (=> d!1804695 (=> res!2415138 e!3517772)))

(assert (=> d!1804695 (= res!2415138 ((_ is Nil!63321) (exprs!5599 (h!69770 zl!343))))))

(assert (=> d!1804695 (= (forall!14850 (exprs!5599 (h!69770 zl!343)) lambda!309010) e!3517772)))

(declare-fun b!5720493 () Bool)

(declare-fun e!3517773 () Bool)

(assert (=> b!5720493 (= e!3517772 e!3517773)))

(declare-fun res!2415139 () Bool)

(assert (=> b!5720493 (=> (not res!2415139) (not e!3517773))))

(assert (=> b!5720493 (= res!2415139 (dynLambda!24777 lambda!309010 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun b!5720494 () Bool)

(assert (=> b!5720494 (= e!3517773 (forall!14850 (t!376767 (exprs!5599 (h!69770 zl!343))) lambda!309010))))

(assert (= (and d!1804695 (not res!2415138)) b!5720493))

(assert (= (and b!5720493 res!2415139) b!5720494))

(declare-fun b_lambda!216147 () Bool)

(assert (=> (not b_lambda!216147) (not b!5720493)))

(declare-fun m!6673946 () Bool)

(assert (=> b!5720493 m!6673946))

(declare-fun m!6673948 () Bool)

(assert (=> b!5720494 m!6673948))

(assert (=> d!1804119 d!1804695))

(declare-fun d!1804697 () Bool)

(assert (=> d!1804697 true))

(assert (=> d!1804697 true))

(declare-fun res!2415140 () Bool)

(assert (=> d!1804697 (= (choose!43245 lambda!308951) res!2415140)))

(assert (=> d!1804123 d!1804697))

(declare-fun bs!1337512 () Bool)

(declare-fun d!1804699 () Bool)

(assert (= bs!1337512 (and d!1804699 d!1804621)))

(declare-fun lambda!309103 () Int)

(assert (=> bs!1337512 (= lambda!309103 lambda!309090)))

(declare-fun bs!1337513 () Bool)

(assert (= bs!1337513 (and d!1804699 d!1804343)))

(assert (=> bs!1337513 (= lambda!309103 lambda!309049)))

(declare-fun bs!1337514 () Bool)

(assert (= bs!1337514 (and d!1804699 d!1804665)))

(assert (=> bs!1337514 (= lambda!309103 lambda!309098)))

(declare-fun bs!1337515 () Bool)

(assert (= bs!1337515 (and d!1804699 d!1804627)))

(assert (=> bs!1337515 (= lambda!309103 lambda!309091)))

(declare-fun bs!1337516 () Bool)

(assert (= bs!1337516 (and d!1804699 d!1804681)))

(assert (=> bs!1337516 (= lambda!309103 lambda!309100)))

(declare-fun bs!1337517 () Bool)

(assert (= bs!1337517 (and d!1804699 d!1804629)))

(assert (=> bs!1337517 (= lambda!309103 lambda!309092)))

(declare-fun bs!1337518 () Bool)

(assert (= bs!1337518 (and d!1804699 d!1804119)))

(assert (=> bs!1337518 (= lambda!309103 lambda!309010)))

(declare-fun bs!1337519 () Bool)

(assert (= bs!1337519 (and d!1804699 d!1804367)))

(assert (=> bs!1337519 (= lambda!309103 lambda!309052)))

(declare-fun bs!1337520 () Bool)

(assert (= bs!1337520 (and d!1804699 d!1803987)))

(assert (=> bs!1337520 (= lambda!309103 lambda!308981)))

(declare-fun bs!1337521 () Bool)

(assert (= bs!1337521 (and d!1804699 d!1804679)))

(assert (=> bs!1337521 (= lambda!309103 lambda!309099)))

(declare-fun bs!1337522 () Bool)

(assert (= bs!1337522 (and d!1804699 d!1803977)))

(assert (=> bs!1337522 (= lambda!309103 lambda!308976)))

(declare-fun bs!1337523 () Bool)

(assert (= bs!1337523 (and d!1804699 d!1804651)))

(assert (=> bs!1337523 (= lambda!309103 lambda!309095)))

(declare-fun bs!1337524 () Bool)

(assert (= bs!1337524 (and d!1804699 d!1804077)))

(assert (=> bs!1337524 (= lambda!309103 lambda!308999)))

(declare-fun bs!1337525 () Bool)

(assert (= bs!1337525 (and d!1804699 d!1804663)))

(assert (=> bs!1337525 (= lambda!309103 lambda!309097)))

(declare-fun bs!1337526 () Bool)

(assert (= bs!1337526 (and d!1804699 d!1804079)))

(assert (=> bs!1337526 (= lambda!309103 lambda!309002)))

(assert (=> d!1804699 (= (inv!82534 (h!69770 (t!376768 zl!343))) (forall!14850 (exprs!5599 (h!69770 (t!376768 zl!343))) lambda!309103))))

(declare-fun bs!1337527 () Bool)

(assert (= bs!1337527 d!1804699))

(declare-fun m!6673950 () Bool)

(assert (=> bs!1337527 m!6673950))

(assert (=> b!5719199 d!1804699))

(declare-fun b!5720495 () Bool)

(declare-fun e!3517775 () Bool)

(declare-fun call!437051 () Bool)

(assert (=> b!5720495 (= e!3517775 call!437051)))

(declare-fun b!5720496 () Bool)

(declare-fun e!3517779 () Bool)

(declare-fun e!3517776 () Bool)

(assert (=> b!5720496 (= e!3517779 e!3517776)))

(declare-fun c!1008879 () Bool)

(assert (=> b!5720496 (= c!1008879 ((_ is Union!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun bm!437046 () Bool)

(declare-fun call!437052 () Bool)

(assert (=> bm!437046 (= call!437052 (nullable!5747 (ite c!1008879 (regOne!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun bm!437047 () Bool)

(assert (=> bm!437047 (= call!437051 (nullable!5747 (ite c!1008879 (regTwo!31943 (h!69769 (exprs!5599 (h!69770 zl!343)))) (regTwo!31942 (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun b!5720497 () Bool)

(declare-fun e!3517778 () Bool)

(assert (=> b!5720497 (= e!3517778 call!437051)))

(declare-fun b!5720498 () Bool)

(assert (=> b!5720498 (= e!3517776 e!3517778)))

(declare-fun res!2415141 () Bool)

(assert (=> b!5720498 (= res!2415141 call!437052)))

(assert (=> b!5720498 (=> res!2415141 e!3517778)))

(declare-fun b!5720499 () Bool)

(declare-fun e!3517774 () Bool)

(declare-fun e!3517777 () Bool)

(assert (=> b!5720499 (= e!3517774 e!3517777)))

(declare-fun res!2415145 () Bool)

(assert (=> b!5720499 (=> (not res!2415145) (not e!3517777))))

(assert (=> b!5720499 (= res!2415145 (and (not ((_ is EmptyLang!15715) (h!69769 (exprs!5599 (h!69770 zl!343))))) (not ((_ is ElementMatch!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))))

(declare-fun d!1804701 () Bool)

(declare-fun res!2415144 () Bool)

(assert (=> d!1804701 (=> res!2415144 e!3517774)))

(assert (=> d!1804701 (= res!2415144 ((_ is EmptyExpr!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> d!1804701 (= (nullableFct!1811 (h!69769 (exprs!5599 (h!69770 zl!343)))) e!3517774)))

(declare-fun b!5720500 () Bool)

(assert (=> b!5720500 (= e!3517776 e!3517775)))

(declare-fun res!2415142 () Bool)

(assert (=> b!5720500 (= res!2415142 call!437052)))

(assert (=> b!5720500 (=> (not res!2415142) (not e!3517775))))

(declare-fun b!5720501 () Bool)

(assert (=> b!5720501 (= e!3517777 e!3517779)))

(declare-fun res!2415143 () Bool)

(assert (=> b!5720501 (=> res!2415143 e!3517779)))

(assert (=> b!5720501 (= res!2415143 ((_ is Star!15715) (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (= (and d!1804701 (not res!2415144)) b!5720499))

(assert (= (and b!5720499 res!2415145) b!5720501))

(assert (= (and b!5720501 (not res!2415143)) b!5720496))

(assert (= (and b!5720496 c!1008879) b!5720498))

(assert (= (and b!5720496 (not c!1008879)) b!5720500))

(assert (= (and b!5720498 (not res!2415141)) b!5720497))

(assert (= (and b!5720500 res!2415142) b!5720495))

(assert (= (or b!5720497 b!5720495) bm!437047))

(assert (= (or b!5720498 b!5720500) bm!437046))

(declare-fun m!6673952 () Bool)

(assert (=> bm!437046 m!6673952))

(declare-fun m!6673954 () Bool)

(assert (=> bm!437047 m!6673954))

(assert (=> d!1804043 d!1804701))

(assert (=> bm!436679 d!1804219))

(assert (=> b!5718590 d!1804217))

(assert (=> d!1803967 d!1803941))

(assert (=> d!1803967 d!1803929))

(declare-fun d!1804703 () Bool)

(assert (=> d!1804703 (= (matchR!7900 r!7292 s!2326) (matchRSpec!2818 r!7292 s!2326))))

(assert (=> d!1804703 true))

(declare-fun _$88!4019 () Unit!156392)

(assert (=> d!1804703 (= (choose!43239 r!7292 s!2326) _$88!4019)))

(declare-fun bs!1337528 () Bool)

(assert (= bs!1337528 d!1804703))

(assert (=> bs!1337528 m!6672028))

(assert (=> bs!1337528 m!6672026))

(assert (=> d!1803967 d!1804703))

(assert (=> d!1803967 d!1803983))

(assert (=> b!5718765 d!1803979))

(declare-fun d!1804705 () Bool)

(assert (=> d!1804705 (= (nullable!5747 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))) (nullableFct!1811 (regOne!31942 (h!69769 (exprs!5599 (h!69770 zl!343))))))))

(declare-fun bs!1337529 () Bool)

(assert (= bs!1337529 d!1804705))

(declare-fun m!6673956 () Bool)

(assert (=> bs!1337529 m!6673956))

(assert (=> b!5718953 d!1804705))

(declare-fun b!5720502 () Bool)

(declare-fun e!3517780 () Bool)

(declare-fun tp!1584223 () Bool)

(assert (=> b!5720502 (= e!3517780 (and tp_is_empty!40683 tp!1584223))))

(assert (=> b!5719223 (= tp!1584038 e!3517780)))

(assert (= (and b!5719223 ((_ is Cons!63320) (t!376766 (t!376766 s!2326)))) b!5720502))

(declare-fun b!5720506 () Bool)

(declare-fun e!3517781 () Bool)

(declare-fun tp!1584228 () Bool)

(declare-fun tp!1584224 () Bool)

(assert (=> b!5720506 (= e!3517781 (and tp!1584228 tp!1584224))))

(declare-fun b!5720503 () Bool)

(assert (=> b!5720503 (= e!3517781 tp_is_empty!40683)))

(declare-fun b!5720505 () Bool)

(declare-fun tp!1584226 () Bool)

(assert (=> b!5720505 (= e!3517781 tp!1584226)))

(assert (=> b!5719213 (= tp!1584028 e!3517781)))

(declare-fun b!5720504 () Bool)

(declare-fun tp!1584227 () Bool)

(declare-fun tp!1584225 () Bool)

(assert (=> b!5720504 (= e!3517781 (and tp!1584227 tp!1584225))))

(assert (= (and b!5719213 ((_ is ElementMatch!15715) (reg!16044 (regOne!31942 r!7292)))) b!5720503))

(assert (= (and b!5719213 ((_ is Concat!24560) (reg!16044 (regOne!31942 r!7292)))) b!5720504))

(assert (= (and b!5719213 ((_ is Star!15715) (reg!16044 (regOne!31942 r!7292)))) b!5720505))

(assert (= (and b!5719213 ((_ is Union!15715) (reg!16044 (regOne!31942 r!7292)))) b!5720506))

(declare-fun b!5720510 () Bool)

(declare-fun e!3517782 () Bool)

(declare-fun tp!1584233 () Bool)

(declare-fun tp!1584229 () Bool)

(assert (=> b!5720510 (= e!3517782 (and tp!1584233 tp!1584229))))

(declare-fun b!5720507 () Bool)

(assert (=> b!5720507 (= e!3517782 tp_is_empty!40683)))

(declare-fun b!5720509 () Bool)

(declare-fun tp!1584231 () Bool)

(assert (=> b!5720509 (= e!3517782 tp!1584231)))

(assert (=> b!5719187 (= tp!1584000 e!3517782)))

(declare-fun b!5720508 () Bool)

(declare-fun tp!1584232 () Bool)

(declare-fun tp!1584230 () Bool)

(assert (=> b!5720508 (= e!3517782 (and tp!1584232 tp!1584230))))

(assert (= (and b!5719187 ((_ is ElementMatch!15715) (regOne!31943 (regTwo!31943 r!7292)))) b!5720507))

(assert (= (and b!5719187 ((_ is Concat!24560) (regOne!31943 (regTwo!31943 r!7292)))) b!5720508))

(assert (= (and b!5719187 ((_ is Star!15715) (regOne!31943 (regTwo!31943 r!7292)))) b!5720509))

(assert (= (and b!5719187 ((_ is Union!15715) (regOne!31943 (regTwo!31943 r!7292)))) b!5720510))

(declare-fun b!5720514 () Bool)

(declare-fun e!3517783 () Bool)

(declare-fun tp!1584238 () Bool)

(declare-fun tp!1584234 () Bool)

(assert (=> b!5720514 (= e!3517783 (and tp!1584238 tp!1584234))))

(declare-fun b!5720511 () Bool)

(assert (=> b!5720511 (= e!3517783 tp_is_empty!40683)))

(declare-fun b!5720513 () Bool)

(declare-fun tp!1584236 () Bool)

(assert (=> b!5720513 (= e!3517783 tp!1584236)))

(assert (=> b!5719187 (= tp!1583996 e!3517783)))

(declare-fun b!5720512 () Bool)

(declare-fun tp!1584237 () Bool)

(declare-fun tp!1584235 () Bool)

(assert (=> b!5720512 (= e!3517783 (and tp!1584237 tp!1584235))))

(assert (= (and b!5719187 ((_ is ElementMatch!15715) (regTwo!31943 (regTwo!31943 r!7292)))) b!5720511))

(assert (= (and b!5719187 ((_ is Concat!24560) (regTwo!31943 (regTwo!31943 r!7292)))) b!5720512))

(assert (= (and b!5719187 ((_ is Star!15715) (regTwo!31943 (regTwo!31943 r!7292)))) b!5720513))

(assert (= (and b!5719187 ((_ is Union!15715) (regTwo!31943 (regTwo!31943 r!7292)))) b!5720514))

(declare-fun b!5720518 () Bool)

(declare-fun e!3517784 () Bool)

(declare-fun tp!1584243 () Bool)

(declare-fun tp!1584239 () Bool)

(assert (=> b!5720518 (= e!3517784 (and tp!1584243 tp!1584239))))

(declare-fun b!5720515 () Bool)

(assert (=> b!5720515 (= e!3517784 tp_is_empty!40683)))

(declare-fun b!5720517 () Bool)

(declare-fun tp!1584241 () Bool)

(assert (=> b!5720517 (= e!3517784 tp!1584241)))

(assert (=> b!5719214 (= tp!1584030 e!3517784)))

(declare-fun b!5720516 () Bool)

(declare-fun tp!1584242 () Bool)

(declare-fun tp!1584240 () Bool)

(assert (=> b!5720516 (= e!3517784 (and tp!1584242 tp!1584240))))

(assert (= (and b!5719214 ((_ is ElementMatch!15715) (regOne!31943 (regOne!31942 r!7292)))) b!5720515))

(assert (= (and b!5719214 ((_ is Concat!24560) (regOne!31943 (regOne!31942 r!7292)))) b!5720516))

(assert (= (and b!5719214 ((_ is Star!15715) (regOne!31943 (regOne!31942 r!7292)))) b!5720517))

(assert (= (and b!5719214 ((_ is Union!15715) (regOne!31943 (regOne!31942 r!7292)))) b!5720518))

(declare-fun b!5720522 () Bool)

(declare-fun e!3517785 () Bool)

(declare-fun tp!1584248 () Bool)

(declare-fun tp!1584244 () Bool)

(assert (=> b!5720522 (= e!3517785 (and tp!1584248 tp!1584244))))

(declare-fun b!5720519 () Bool)

(assert (=> b!5720519 (= e!3517785 tp_is_empty!40683)))

(declare-fun b!5720521 () Bool)

(declare-fun tp!1584246 () Bool)

(assert (=> b!5720521 (= e!3517785 tp!1584246)))

(assert (=> b!5719214 (= tp!1584026 e!3517785)))

(declare-fun b!5720520 () Bool)

(declare-fun tp!1584247 () Bool)

(declare-fun tp!1584245 () Bool)

(assert (=> b!5720520 (= e!3517785 (and tp!1584247 tp!1584245))))

(assert (= (and b!5719214 ((_ is ElementMatch!15715) (regTwo!31943 (regOne!31942 r!7292)))) b!5720519))

(assert (= (and b!5719214 ((_ is Concat!24560) (regTwo!31943 (regOne!31942 r!7292)))) b!5720520))

(assert (= (and b!5719214 ((_ is Star!15715) (regTwo!31943 (regOne!31942 r!7292)))) b!5720521))

(assert (= (and b!5719214 ((_ is Union!15715) (regTwo!31943 (regOne!31942 r!7292)))) b!5720522))

(declare-fun b!5720526 () Bool)

(declare-fun e!3517786 () Bool)

(declare-fun tp!1584253 () Bool)

(declare-fun tp!1584249 () Bool)

(assert (=> b!5720526 (= e!3517786 (and tp!1584253 tp!1584249))))

(declare-fun b!5720523 () Bool)

(assert (=> b!5720523 (= e!3517786 tp_is_empty!40683)))

(declare-fun b!5720525 () Bool)

(declare-fun tp!1584251 () Bool)

(assert (=> b!5720525 (= e!3517786 tp!1584251)))

(assert (=> b!5719209 (= tp!1584022 e!3517786)))

(declare-fun b!5720524 () Bool)

(declare-fun tp!1584252 () Bool)

(declare-fun tp!1584250 () Bool)

(assert (=> b!5720524 (= e!3517786 (and tp!1584252 tp!1584250))))

(assert (= (and b!5719209 ((_ is ElementMatch!15715) (h!69769 (exprs!5599 setElem!38305)))) b!5720523))

(assert (= (and b!5719209 ((_ is Concat!24560) (h!69769 (exprs!5599 setElem!38305)))) b!5720524))

(assert (= (and b!5719209 ((_ is Star!15715) (h!69769 (exprs!5599 setElem!38305)))) b!5720525))

(assert (= (and b!5719209 ((_ is Union!15715) (h!69769 (exprs!5599 setElem!38305)))) b!5720526))

(declare-fun b!5720527 () Bool)

(declare-fun e!3517787 () Bool)

(declare-fun tp!1584254 () Bool)

(declare-fun tp!1584255 () Bool)

(assert (=> b!5720527 (= e!3517787 (and tp!1584254 tp!1584255))))

(assert (=> b!5719209 (= tp!1584023 e!3517787)))

(assert (= (and b!5719209 ((_ is Cons!63321) (t!376767 (exprs!5599 setElem!38305)))) b!5720527))

(declare-fun b!5720531 () Bool)

(declare-fun e!3517788 () Bool)

(declare-fun tp!1584260 () Bool)

(declare-fun tp!1584256 () Bool)

(assert (=> b!5720531 (= e!3517788 (and tp!1584260 tp!1584256))))

(declare-fun b!5720528 () Bool)

(assert (=> b!5720528 (= e!3517788 tp_is_empty!40683)))

(declare-fun b!5720530 () Bool)

(declare-fun tp!1584258 () Bool)

(assert (=> b!5720530 (= e!3517788 tp!1584258)))

(assert (=> b!5719216 (= tp!1584034 e!3517788)))

(declare-fun b!5720529 () Bool)

(declare-fun tp!1584259 () Bool)

(declare-fun tp!1584257 () Bool)

(assert (=> b!5720529 (= e!3517788 (and tp!1584259 tp!1584257))))

(assert (= (and b!5719216 ((_ is ElementMatch!15715) (regOne!31942 (regTwo!31942 r!7292)))) b!5720528))

(assert (= (and b!5719216 ((_ is Concat!24560) (regOne!31942 (regTwo!31942 r!7292)))) b!5720529))

(assert (= (and b!5719216 ((_ is Star!15715) (regOne!31942 (regTwo!31942 r!7292)))) b!5720530))

(assert (= (and b!5719216 ((_ is Union!15715) (regOne!31942 (regTwo!31942 r!7292)))) b!5720531))

(declare-fun b!5720535 () Bool)

(declare-fun e!3517789 () Bool)

(declare-fun tp!1584265 () Bool)

(declare-fun tp!1584261 () Bool)

(assert (=> b!5720535 (= e!3517789 (and tp!1584265 tp!1584261))))

(declare-fun b!5720532 () Bool)

(assert (=> b!5720532 (= e!3517789 tp_is_empty!40683)))

(declare-fun b!5720534 () Bool)

(declare-fun tp!1584263 () Bool)

(assert (=> b!5720534 (= e!3517789 tp!1584263)))

(assert (=> b!5719216 (= tp!1584032 e!3517789)))

(declare-fun b!5720533 () Bool)

(declare-fun tp!1584264 () Bool)

(declare-fun tp!1584262 () Bool)

(assert (=> b!5720533 (= e!3517789 (and tp!1584264 tp!1584262))))

(assert (= (and b!5719216 ((_ is ElementMatch!15715) (regTwo!31942 (regTwo!31942 r!7292)))) b!5720532))

(assert (= (and b!5719216 ((_ is Concat!24560) (regTwo!31942 (regTwo!31942 r!7292)))) b!5720533))

(assert (= (and b!5719216 ((_ is Star!15715) (regTwo!31942 (regTwo!31942 r!7292)))) b!5720534))

(assert (= (and b!5719216 ((_ is Union!15715) (regTwo!31942 (regTwo!31942 r!7292)))) b!5720535))

(declare-fun b!5720539 () Bool)

(declare-fun e!3517790 () Bool)

(declare-fun tp!1584270 () Bool)

(declare-fun tp!1584266 () Bool)

(assert (=> b!5720539 (= e!3517790 (and tp!1584270 tp!1584266))))

(declare-fun b!5720536 () Bool)

(assert (=> b!5720536 (= e!3517790 tp_is_empty!40683)))

(declare-fun b!5720538 () Bool)

(declare-fun tp!1584268 () Bool)

(assert (=> b!5720538 (= e!3517790 tp!1584268)))

(assert (=> b!5719202 (= tp!1584016 e!3517790)))

(declare-fun b!5720537 () Bool)

(declare-fun tp!1584269 () Bool)

(declare-fun tp!1584267 () Bool)

(assert (=> b!5720537 (= e!3517790 (and tp!1584269 tp!1584267))))

(assert (= (and b!5719202 ((_ is ElementMatch!15715) (regOne!31942 (reg!16044 r!7292)))) b!5720536))

(assert (= (and b!5719202 ((_ is Concat!24560) (regOne!31942 (reg!16044 r!7292)))) b!5720537))

(assert (= (and b!5719202 ((_ is Star!15715) (regOne!31942 (reg!16044 r!7292)))) b!5720538))

(assert (= (and b!5719202 ((_ is Union!15715) (regOne!31942 (reg!16044 r!7292)))) b!5720539))

(declare-fun b!5720543 () Bool)

(declare-fun e!3517791 () Bool)

(declare-fun tp!1584275 () Bool)

(declare-fun tp!1584271 () Bool)

(assert (=> b!5720543 (= e!3517791 (and tp!1584275 tp!1584271))))

(declare-fun b!5720540 () Bool)

(assert (=> b!5720540 (= e!3517791 tp_is_empty!40683)))

(declare-fun b!5720542 () Bool)

(declare-fun tp!1584273 () Bool)

(assert (=> b!5720542 (= e!3517791 tp!1584273)))

(assert (=> b!5719202 (= tp!1584014 e!3517791)))

(declare-fun b!5720541 () Bool)

(declare-fun tp!1584274 () Bool)

(declare-fun tp!1584272 () Bool)

(assert (=> b!5720541 (= e!3517791 (and tp!1584274 tp!1584272))))

(assert (= (and b!5719202 ((_ is ElementMatch!15715) (regTwo!31942 (reg!16044 r!7292)))) b!5720540))

(assert (= (and b!5719202 ((_ is Concat!24560) (regTwo!31942 (reg!16044 r!7292)))) b!5720541))

(assert (= (and b!5719202 ((_ is Star!15715) (regTwo!31942 (reg!16044 r!7292)))) b!5720542))

(assert (= (and b!5719202 ((_ is Union!15715) (regTwo!31942 (reg!16044 r!7292)))) b!5720543))

(declare-fun b!5720547 () Bool)

(declare-fun e!3517792 () Bool)

(declare-fun tp!1584280 () Bool)

(declare-fun tp!1584276 () Bool)

(assert (=> b!5720547 (= e!3517792 (and tp!1584280 tp!1584276))))

(declare-fun b!5720544 () Bool)

(assert (=> b!5720544 (= e!3517792 tp_is_empty!40683)))

(declare-fun b!5720546 () Bool)

(declare-fun tp!1584278 () Bool)

(assert (=> b!5720546 (= e!3517792 tp!1584278)))

(assert (=> b!5719217 (= tp!1584033 e!3517792)))

(declare-fun b!5720545 () Bool)

(declare-fun tp!1584279 () Bool)

(declare-fun tp!1584277 () Bool)

(assert (=> b!5720545 (= e!3517792 (and tp!1584279 tp!1584277))))

(assert (= (and b!5719217 ((_ is ElementMatch!15715) (reg!16044 (regTwo!31942 r!7292)))) b!5720544))

(assert (= (and b!5719217 ((_ is Concat!24560) (reg!16044 (regTwo!31942 r!7292)))) b!5720545))

(assert (= (and b!5719217 ((_ is Star!15715) (reg!16044 (regTwo!31942 r!7292)))) b!5720546))

(assert (= (and b!5719217 ((_ is Union!15715) (reg!16044 (regTwo!31942 r!7292)))) b!5720547))

(declare-fun b!5720551 () Bool)

(declare-fun e!3517793 () Bool)

(declare-fun tp!1584285 () Bool)

(declare-fun tp!1584281 () Bool)

(assert (=> b!5720551 (= e!3517793 (and tp!1584285 tp!1584281))))

(declare-fun b!5720548 () Bool)

(assert (=> b!5720548 (= e!3517793 tp_is_empty!40683)))

(declare-fun b!5720550 () Bool)

(declare-fun tp!1584283 () Bool)

(assert (=> b!5720550 (= e!3517793 tp!1584283)))

(assert (=> b!5719181 (= tp!1583994 e!3517793)))

(declare-fun b!5720549 () Bool)

(declare-fun tp!1584284 () Bool)

(declare-fun tp!1584282 () Bool)

(assert (=> b!5720549 (= e!3517793 (and tp!1584284 tp!1584282))))

(assert (= (and b!5719181 ((_ is ElementMatch!15715) (regOne!31942 (regOne!31943 r!7292)))) b!5720548))

(assert (= (and b!5719181 ((_ is Concat!24560) (regOne!31942 (regOne!31943 r!7292)))) b!5720549))

(assert (= (and b!5719181 ((_ is Star!15715) (regOne!31942 (regOne!31943 r!7292)))) b!5720550))

(assert (= (and b!5719181 ((_ is Union!15715) (regOne!31942 (regOne!31943 r!7292)))) b!5720551))

(declare-fun b!5720555 () Bool)

(declare-fun e!3517794 () Bool)

(declare-fun tp!1584290 () Bool)

(declare-fun tp!1584286 () Bool)

(assert (=> b!5720555 (= e!3517794 (and tp!1584290 tp!1584286))))

(declare-fun b!5720552 () Bool)

(assert (=> b!5720552 (= e!3517794 tp_is_empty!40683)))

(declare-fun b!5720554 () Bool)

(declare-fun tp!1584288 () Bool)

(assert (=> b!5720554 (= e!3517794 tp!1584288)))

(assert (=> b!5719181 (= tp!1583992 e!3517794)))

(declare-fun b!5720553 () Bool)

(declare-fun tp!1584289 () Bool)

(declare-fun tp!1584287 () Bool)

(assert (=> b!5720553 (= e!3517794 (and tp!1584289 tp!1584287))))

(assert (= (and b!5719181 ((_ is ElementMatch!15715) (regTwo!31942 (regOne!31943 r!7292)))) b!5720552))

(assert (= (and b!5719181 ((_ is Concat!24560) (regTwo!31942 (regOne!31943 r!7292)))) b!5720553))

(assert (= (and b!5719181 ((_ is Star!15715) (regTwo!31942 (regOne!31943 r!7292)))) b!5720554))

(assert (= (and b!5719181 ((_ is Union!15715) (regTwo!31942 (regOne!31943 r!7292)))) b!5720555))

(declare-fun condSetEmpty!38325 () Bool)

(assert (=> setNonEmpty!38311 (= condSetEmpty!38325 (= setRest!38311 ((as const (Array Context!10198 Bool)) false)))))

(declare-fun setRes!38325 () Bool)

(assert (=> setNonEmpty!38311 (= tp!1584006 setRes!38325)))

(declare-fun setIsEmpty!38325 () Bool)

(assert (=> setIsEmpty!38325 setRes!38325))

(declare-fun e!3517795 () Bool)

(declare-fun setNonEmpty!38325 () Bool)

(declare-fun tp!1584292 () Bool)

(declare-fun setElem!38325 () Context!10198)

(assert (=> setNonEmpty!38325 (= setRes!38325 (and tp!1584292 (inv!82534 setElem!38325) e!3517795))))

(declare-fun setRest!38325 () (InoxSet Context!10198))

(assert (=> setNonEmpty!38325 (= setRest!38311 ((_ map or) (store ((as const (Array Context!10198 Bool)) false) setElem!38325 true) setRest!38325))))

(declare-fun b!5720556 () Bool)

(declare-fun tp!1584291 () Bool)

(assert (=> b!5720556 (= e!3517795 tp!1584291)))

(assert (= (and setNonEmpty!38311 condSetEmpty!38325) setIsEmpty!38325))

(assert (= (and setNonEmpty!38311 (not condSetEmpty!38325)) setNonEmpty!38325))

(assert (= setNonEmpty!38325 b!5720556))

(declare-fun m!6673958 () Bool)

(assert (=> setNonEmpty!38325 m!6673958))

(declare-fun b!5720560 () Bool)

(declare-fun e!3517796 () Bool)

(declare-fun tp!1584297 () Bool)

(declare-fun tp!1584293 () Bool)

(assert (=> b!5720560 (= e!3517796 (and tp!1584297 tp!1584293))))

(declare-fun b!5720557 () Bool)

(assert (=> b!5720557 (= e!3517796 tp_is_empty!40683)))

(declare-fun b!5720559 () Bool)

(declare-fun tp!1584295 () Bool)

(assert (=> b!5720559 (= e!3517796 tp!1584295)))

(assert (=> b!5719203 (= tp!1584015 e!3517796)))

(declare-fun b!5720558 () Bool)

(declare-fun tp!1584296 () Bool)

(declare-fun tp!1584294 () Bool)

(assert (=> b!5720558 (= e!3517796 (and tp!1584296 tp!1584294))))

(assert (= (and b!5719203 ((_ is ElementMatch!15715) (reg!16044 (reg!16044 r!7292)))) b!5720557))

(assert (= (and b!5719203 ((_ is Concat!24560) (reg!16044 (reg!16044 r!7292)))) b!5720558))

(assert (= (and b!5719203 ((_ is Star!15715) (reg!16044 (reg!16044 r!7292)))) b!5720559))

(assert (= (and b!5719203 ((_ is Union!15715) (reg!16044 (reg!16044 r!7292)))) b!5720560))

(declare-fun b!5720564 () Bool)

(declare-fun e!3517797 () Bool)

(declare-fun tp!1584302 () Bool)

(declare-fun tp!1584298 () Bool)

(assert (=> b!5720564 (= e!3517797 (and tp!1584302 tp!1584298))))

(declare-fun b!5720561 () Bool)

(assert (=> b!5720561 (= e!3517797 tp_is_empty!40683)))

(declare-fun b!5720563 () Bool)

(declare-fun tp!1584300 () Bool)

(assert (=> b!5720563 (= e!3517797 tp!1584300)))

(assert (=> b!5719218 (= tp!1584035 e!3517797)))

(declare-fun b!5720562 () Bool)

(declare-fun tp!1584301 () Bool)

(declare-fun tp!1584299 () Bool)

(assert (=> b!5720562 (= e!3517797 (and tp!1584301 tp!1584299))))

(assert (= (and b!5719218 ((_ is ElementMatch!15715) (regOne!31943 (regTwo!31942 r!7292)))) b!5720561))

(assert (= (and b!5719218 ((_ is Concat!24560) (regOne!31943 (regTwo!31942 r!7292)))) b!5720562))

(assert (= (and b!5719218 ((_ is Star!15715) (regOne!31943 (regTwo!31942 r!7292)))) b!5720563))

(assert (= (and b!5719218 ((_ is Union!15715) (regOne!31943 (regTwo!31942 r!7292)))) b!5720564))

(declare-fun b!5720568 () Bool)

(declare-fun e!3517798 () Bool)

(declare-fun tp!1584307 () Bool)

(declare-fun tp!1584303 () Bool)

(assert (=> b!5720568 (= e!3517798 (and tp!1584307 tp!1584303))))

(declare-fun b!5720565 () Bool)

(assert (=> b!5720565 (= e!3517798 tp_is_empty!40683)))

(declare-fun b!5720567 () Bool)

(declare-fun tp!1584305 () Bool)

(assert (=> b!5720567 (= e!3517798 tp!1584305)))

(assert (=> b!5719218 (= tp!1584031 e!3517798)))

(declare-fun b!5720566 () Bool)

(declare-fun tp!1584306 () Bool)

(declare-fun tp!1584304 () Bool)

(assert (=> b!5720566 (= e!3517798 (and tp!1584306 tp!1584304))))

(assert (= (and b!5719218 ((_ is ElementMatch!15715) (regTwo!31943 (regTwo!31942 r!7292)))) b!5720565))

(assert (= (and b!5719218 ((_ is Concat!24560) (regTwo!31943 (regTwo!31942 r!7292)))) b!5720566))

(assert (= (and b!5719218 ((_ is Star!15715) (regTwo!31943 (regTwo!31942 r!7292)))) b!5720567))

(assert (= (and b!5719218 ((_ is Union!15715) (regTwo!31943 (regTwo!31942 r!7292)))) b!5720568))

(declare-fun b!5720572 () Bool)

(declare-fun e!3517799 () Bool)

(declare-fun tp!1584312 () Bool)

(declare-fun tp!1584308 () Bool)

(assert (=> b!5720572 (= e!3517799 (and tp!1584312 tp!1584308))))

(declare-fun b!5720569 () Bool)

(assert (=> b!5720569 (= e!3517799 tp_is_empty!40683)))

(declare-fun b!5720571 () Bool)

(declare-fun tp!1584310 () Bool)

(assert (=> b!5720571 (= e!3517799 tp!1584310)))

(assert (=> b!5719182 (= tp!1583993 e!3517799)))

(declare-fun b!5720570 () Bool)

(declare-fun tp!1584311 () Bool)

(declare-fun tp!1584309 () Bool)

(assert (=> b!5720570 (= e!3517799 (and tp!1584311 tp!1584309))))

(assert (= (and b!5719182 ((_ is ElementMatch!15715) (reg!16044 (regOne!31943 r!7292)))) b!5720569))

(assert (= (and b!5719182 ((_ is Concat!24560) (reg!16044 (regOne!31943 r!7292)))) b!5720570))

(assert (= (and b!5719182 ((_ is Star!15715) (reg!16044 (regOne!31943 r!7292)))) b!5720571))

(assert (= (and b!5719182 ((_ is Union!15715) (reg!16044 (regOne!31943 r!7292)))) b!5720572))

(declare-fun b!5720576 () Bool)

(declare-fun e!3517800 () Bool)

(declare-fun tp!1584317 () Bool)

(declare-fun tp!1584313 () Bool)

(assert (=> b!5720576 (= e!3517800 (and tp!1584317 tp!1584313))))

(declare-fun b!5720573 () Bool)

(assert (=> b!5720573 (= e!3517800 tp_is_empty!40683)))

(declare-fun b!5720575 () Bool)

(declare-fun tp!1584315 () Bool)

(assert (=> b!5720575 (= e!3517800 tp!1584315)))

(assert (=> b!5719204 (= tp!1584017 e!3517800)))

(declare-fun b!5720574 () Bool)

(declare-fun tp!1584316 () Bool)

(declare-fun tp!1584314 () Bool)

(assert (=> b!5720574 (= e!3517800 (and tp!1584316 tp!1584314))))

(assert (= (and b!5719204 ((_ is ElementMatch!15715) (regOne!31943 (reg!16044 r!7292)))) b!5720573))

(assert (= (and b!5719204 ((_ is Concat!24560) (regOne!31943 (reg!16044 r!7292)))) b!5720574))

(assert (= (and b!5719204 ((_ is Star!15715) (regOne!31943 (reg!16044 r!7292)))) b!5720575))

(assert (= (and b!5719204 ((_ is Union!15715) (regOne!31943 (reg!16044 r!7292)))) b!5720576))

(declare-fun b!5720580 () Bool)

(declare-fun e!3517801 () Bool)

(declare-fun tp!1584322 () Bool)

(declare-fun tp!1584318 () Bool)

(assert (=> b!5720580 (= e!3517801 (and tp!1584322 tp!1584318))))

(declare-fun b!5720577 () Bool)

(assert (=> b!5720577 (= e!3517801 tp_is_empty!40683)))

(declare-fun b!5720579 () Bool)

(declare-fun tp!1584320 () Bool)

(assert (=> b!5720579 (= e!3517801 tp!1584320)))

(assert (=> b!5719204 (= tp!1584013 e!3517801)))

(declare-fun b!5720578 () Bool)

(declare-fun tp!1584321 () Bool)

(declare-fun tp!1584319 () Bool)

(assert (=> b!5720578 (= e!3517801 (and tp!1584321 tp!1584319))))

(assert (= (and b!5719204 ((_ is ElementMatch!15715) (regTwo!31943 (reg!16044 r!7292)))) b!5720577))

(assert (= (and b!5719204 ((_ is Concat!24560) (regTwo!31943 (reg!16044 r!7292)))) b!5720578))

(assert (= (and b!5719204 ((_ is Star!15715) (regTwo!31943 (reg!16044 r!7292)))) b!5720579))

(assert (= (and b!5719204 ((_ is Union!15715) (regTwo!31943 (reg!16044 r!7292)))) b!5720580))

(declare-fun b!5720584 () Bool)

(declare-fun e!3517802 () Bool)

(declare-fun tp!1584327 () Bool)

(declare-fun tp!1584323 () Bool)

(assert (=> b!5720584 (= e!3517802 (and tp!1584327 tp!1584323))))

(declare-fun b!5720581 () Bool)

(assert (=> b!5720581 (= e!3517802 tp_is_empty!40683)))

(declare-fun b!5720583 () Bool)

(declare-fun tp!1584325 () Bool)

(assert (=> b!5720583 (= e!3517802 tp!1584325)))

(assert (=> b!5719183 (= tp!1583995 e!3517802)))

(declare-fun b!5720582 () Bool)

(declare-fun tp!1584326 () Bool)

(declare-fun tp!1584324 () Bool)

(assert (=> b!5720582 (= e!3517802 (and tp!1584326 tp!1584324))))

(assert (= (and b!5719183 ((_ is ElementMatch!15715) (regOne!31943 (regOne!31943 r!7292)))) b!5720581))

(assert (= (and b!5719183 ((_ is Concat!24560) (regOne!31943 (regOne!31943 r!7292)))) b!5720582))

(assert (= (and b!5719183 ((_ is Star!15715) (regOne!31943 (regOne!31943 r!7292)))) b!5720583))

(assert (= (and b!5719183 ((_ is Union!15715) (regOne!31943 (regOne!31943 r!7292)))) b!5720584))

(declare-fun b!5720588 () Bool)

(declare-fun e!3517803 () Bool)

(declare-fun tp!1584332 () Bool)

(declare-fun tp!1584328 () Bool)

(assert (=> b!5720588 (= e!3517803 (and tp!1584332 tp!1584328))))

(declare-fun b!5720585 () Bool)

(assert (=> b!5720585 (= e!3517803 tp_is_empty!40683)))

(declare-fun b!5720587 () Bool)

(declare-fun tp!1584330 () Bool)

(assert (=> b!5720587 (= e!3517803 tp!1584330)))

(assert (=> b!5719183 (= tp!1583991 e!3517803)))

(declare-fun b!5720586 () Bool)

(declare-fun tp!1584331 () Bool)

(declare-fun tp!1584329 () Bool)

(assert (=> b!5720586 (= e!3517803 (and tp!1584331 tp!1584329))))

(assert (= (and b!5719183 ((_ is ElementMatch!15715) (regTwo!31943 (regOne!31943 r!7292)))) b!5720585))

(assert (= (and b!5719183 ((_ is Concat!24560) (regTwo!31943 (regOne!31943 r!7292)))) b!5720586))

(assert (= (and b!5719183 ((_ is Star!15715) (regTwo!31943 (regOne!31943 r!7292)))) b!5720587))

(assert (= (and b!5719183 ((_ is Union!15715) (regTwo!31943 (regOne!31943 r!7292)))) b!5720588))

(declare-fun b!5720592 () Bool)

(declare-fun e!3517804 () Bool)

(declare-fun tp!1584337 () Bool)

(declare-fun tp!1584333 () Bool)

(assert (=> b!5720592 (= e!3517804 (and tp!1584337 tp!1584333))))

(declare-fun b!5720589 () Bool)

(assert (=> b!5720589 (= e!3517804 tp_is_empty!40683)))

(declare-fun b!5720591 () Bool)

(declare-fun tp!1584335 () Bool)

(assert (=> b!5720591 (= e!3517804 tp!1584335)))

(assert (=> b!5719210 (= tp!1584024 e!3517804)))

(declare-fun b!5720590 () Bool)

(declare-fun tp!1584336 () Bool)

(declare-fun tp!1584334 () Bool)

(assert (=> b!5720590 (= e!3517804 (and tp!1584336 tp!1584334))))

(assert (= (and b!5719210 ((_ is ElementMatch!15715) (h!69769 (exprs!5599 (h!69770 zl!343))))) b!5720589))

(assert (= (and b!5719210 ((_ is Concat!24560) (h!69769 (exprs!5599 (h!69770 zl!343))))) b!5720590))

(assert (= (and b!5719210 ((_ is Star!15715) (h!69769 (exprs!5599 (h!69770 zl!343))))) b!5720591))

(assert (= (and b!5719210 ((_ is Union!15715) (h!69769 (exprs!5599 (h!69770 zl!343))))) b!5720592))

(declare-fun b!5720593 () Bool)

(declare-fun e!3517805 () Bool)

(declare-fun tp!1584338 () Bool)

(declare-fun tp!1584339 () Bool)

(assert (=> b!5720593 (= e!3517805 (and tp!1584338 tp!1584339))))

(assert (=> b!5719210 (= tp!1584025 e!3517805)))

(assert (= (and b!5719210 ((_ is Cons!63321) (t!376767 (exprs!5599 (h!69770 zl!343))))) b!5720593))

(declare-fun b!5720595 () Bool)

(declare-fun e!3517807 () Bool)

(declare-fun tp!1584340 () Bool)

(assert (=> b!5720595 (= e!3517807 tp!1584340)))

(declare-fun tp!1584341 () Bool)

(declare-fun e!3517806 () Bool)

(declare-fun b!5720594 () Bool)

(assert (=> b!5720594 (= e!3517806 (and (inv!82534 (h!69770 (t!376768 (t!376768 zl!343)))) e!3517807 tp!1584341))))

(assert (=> b!5719199 (= tp!1584012 e!3517806)))

(assert (= b!5720594 b!5720595))

(assert (= (and b!5719199 ((_ is Cons!63322) (t!376768 (t!376768 zl!343)))) b!5720594))

(declare-fun m!6673960 () Bool)

(assert (=> b!5720594 m!6673960))

(declare-fun b!5720599 () Bool)

(declare-fun e!3517808 () Bool)

(declare-fun tp!1584346 () Bool)

(declare-fun tp!1584342 () Bool)

(assert (=> b!5720599 (= e!3517808 (and tp!1584346 tp!1584342))))

(declare-fun b!5720596 () Bool)

(assert (=> b!5720596 (= e!3517808 tp_is_empty!40683)))

(declare-fun b!5720598 () Bool)

(declare-fun tp!1584344 () Bool)

(assert (=> b!5720598 (= e!3517808 tp!1584344)))

(assert (=> b!5719185 (= tp!1583999 e!3517808)))

(declare-fun b!5720597 () Bool)

(declare-fun tp!1584345 () Bool)

(declare-fun tp!1584343 () Bool)

(assert (=> b!5720597 (= e!3517808 (and tp!1584345 tp!1584343))))

(assert (= (and b!5719185 ((_ is ElementMatch!15715) (regOne!31942 (regTwo!31943 r!7292)))) b!5720596))

(assert (= (and b!5719185 ((_ is Concat!24560) (regOne!31942 (regTwo!31943 r!7292)))) b!5720597))

(assert (= (and b!5719185 ((_ is Star!15715) (regOne!31942 (regTwo!31943 r!7292)))) b!5720598))

(assert (= (and b!5719185 ((_ is Union!15715) (regOne!31942 (regTwo!31943 r!7292)))) b!5720599))

(declare-fun b!5720603 () Bool)

(declare-fun e!3517809 () Bool)

(declare-fun tp!1584351 () Bool)

(declare-fun tp!1584347 () Bool)

(assert (=> b!5720603 (= e!3517809 (and tp!1584351 tp!1584347))))

(declare-fun b!5720600 () Bool)

(assert (=> b!5720600 (= e!3517809 tp_is_empty!40683)))

(declare-fun b!5720602 () Bool)

(declare-fun tp!1584349 () Bool)

(assert (=> b!5720602 (= e!3517809 tp!1584349)))

(assert (=> b!5719185 (= tp!1583997 e!3517809)))

(declare-fun b!5720601 () Bool)

(declare-fun tp!1584350 () Bool)

(declare-fun tp!1584348 () Bool)

(assert (=> b!5720601 (= e!3517809 (and tp!1584350 tp!1584348))))

(assert (= (and b!5719185 ((_ is ElementMatch!15715) (regTwo!31942 (regTwo!31943 r!7292)))) b!5720600))

(assert (= (and b!5719185 ((_ is Concat!24560) (regTwo!31942 (regTwo!31943 r!7292)))) b!5720601))

(assert (= (and b!5719185 ((_ is Star!15715) (regTwo!31942 (regTwo!31943 r!7292)))) b!5720602))

(assert (= (and b!5719185 ((_ is Union!15715) (regTwo!31942 (regTwo!31943 r!7292)))) b!5720603))

(declare-fun b!5720607 () Bool)

(declare-fun e!3517810 () Bool)

(declare-fun tp!1584356 () Bool)

(declare-fun tp!1584352 () Bool)

(assert (=> b!5720607 (= e!3517810 (and tp!1584356 tp!1584352))))

(declare-fun b!5720604 () Bool)

(assert (=> b!5720604 (= e!3517810 tp_is_empty!40683)))

(declare-fun b!5720606 () Bool)

(declare-fun tp!1584354 () Bool)

(assert (=> b!5720606 (= e!3517810 tp!1584354)))

(assert (=> b!5719212 (= tp!1584029 e!3517810)))

(declare-fun b!5720605 () Bool)

(declare-fun tp!1584355 () Bool)

(declare-fun tp!1584353 () Bool)

(assert (=> b!5720605 (= e!3517810 (and tp!1584355 tp!1584353))))

(assert (= (and b!5719212 ((_ is ElementMatch!15715) (regOne!31942 (regOne!31942 r!7292)))) b!5720604))

(assert (= (and b!5719212 ((_ is Concat!24560) (regOne!31942 (regOne!31942 r!7292)))) b!5720605))

(assert (= (and b!5719212 ((_ is Star!15715) (regOne!31942 (regOne!31942 r!7292)))) b!5720606))

(assert (= (and b!5719212 ((_ is Union!15715) (regOne!31942 (regOne!31942 r!7292)))) b!5720607))

(declare-fun b!5720611 () Bool)

(declare-fun e!3517811 () Bool)

(declare-fun tp!1584361 () Bool)

(declare-fun tp!1584357 () Bool)

(assert (=> b!5720611 (= e!3517811 (and tp!1584361 tp!1584357))))

(declare-fun b!5720608 () Bool)

(assert (=> b!5720608 (= e!3517811 tp_is_empty!40683)))

(declare-fun b!5720610 () Bool)

(declare-fun tp!1584359 () Bool)

(assert (=> b!5720610 (= e!3517811 tp!1584359)))

(assert (=> b!5719212 (= tp!1584027 e!3517811)))

(declare-fun b!5720609 () Bool)

(declare-fun tp!1584360 () Bool)

(declare-fun tp!1584358 () Bool)

(assert (=> b!5720609 (= e!3517811 (and tp!1584360 tp!1584358))))

(assert (= (and b!5719212 ((_ is ElementMatch!15715) (regTwo!31942 (regOne!31942 r!7292)))) b!5720608))

(assert (= (and b!5719212 ((_ is Concat!24560) (regTwo!31942 (regOne!31942 r!7292)))) b!5720609))

(assert (= (and b!5719212 ((_ is Star!15715) (regTwo!31942 (regOne!31942 r!7292)))) b!5720610))

(assert (= (and b!5719212 ((_ is Union!15715) (regTwo!31942 (regOne!31942 r!7292)))) b!5720611))

(declare-fun b!5720612 () Bool)

(declare-fun e!3517812 () Bool)

(declare-fun tp!1584362 () Bool)

(declare-fun tp!1584363 () Bool)

(assert (=> b!5720612 (= e!3517812 (and tp!1584362 tp!1584363))))

(assert (=> b!5719200 (= tp!1584011 e!3517812)))

(assert (= (and b!5719200 ((_ is Cons!63321) (exprs!5599 (h!69770 (t!376768 zl!343))))) b!5720612))

(declare-fun b!5720616 () Bool)

(declare-fun e!3517813 () Bool)

(declare-fun tp!1584368 () Bool)

(declare-fun tp!1584364 () Bool)

(assert (=> b!5720616 (= e!3517813 (and tp!1584368 tp!1584364))))

(declare-fun b!5720613 () Bool)

(assert (=> b!5720613 (= e!3517813 tp_is_empty!40683)))

(declare-fun b!5720615 () Bool)

(declare-fun tp!1584366 () Bool)

(assert (=> b!5720615 (= e!3517813 tp!1584366)))

(assert (=> b!5719186 (= tp!1583998 e!3517813)))

(declare-fun b!5720614 () Bool)

(declare-fun tp!1584367 () Bool)

(declare-fun tp!1584365 () Bool)

(assert (=> b!5720614 (= e!3517813 (and tp!1584367 tp!1584365))))

(assert (= (and b!5719186 ((_ is ElementMatch!15715) (reg!16044 (regTwo!31943 r!7292)))) b!5720613))

(assert (= (and b!5719186 ((_ is Concat!24560) (reg!16044 (regTwo!31943 r!7292)))) b!5720614))

(assert (= (and b!5719186 ((_ is Star!15715) (reg!16044 (regTwo!31943 r!7292)))) b!5720615))

(assert (= (and b!5719186 ((_ is Union!15715) (reg!16044 (regTwo!31943 r!7292)))) b!5720616))

(declare-fun b!5720617 () Bool)

(declare-fun e!3517814 () Bool)

(declare-fun tp!1584369 () Bool)

(declare-fun tp!1584370 () Bool)

(assert (=> b!5720617 (= e!3517814 (and tp!1584369 tp!1584370))))

(assert (=> b!5719192 (= tp!1584005 e!3517814)))

(assert (= (and b!5719192 ((_ is Cons!63321) (exprs!5599 setElem!38311))) b!5720617))

(declare-fun b_lambda!216149 () Bool)

(assert (= b_lambda!216125 (or d!1803987 b_lambda!216149)))

(declare-fun bs!1337530 () Bool)

(declare-fun d!1804707 () Bool)

(assert (= bs!1337530 (and d!1804707 d!1803987)))

(assert (=> bs!1337530 (= (dynLambda!24777 lambda!308981 (h!69769 (exprs!5599 (h!69770 zl!343)))) (validRegex!7451 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(declare-fun m!6673962 () Bool)

(assert (=> bs!1337530 m!6673962))

(assert (=> b!5720060 d!1804707))

(declare-fun b_lambda!216151 () Bool)

(assert (= b_lambda!216111 (or d!1804079 b_lambda!216151)))

(declare-fun bs!1337531 () Bool)

(declare-fun d!1804709 () Bool)

(assert (= bs!1337531 (and d!1804709 d!1804079)))

(assert (=> bs!1337531 (= (dynLambda!24777 lambda!309002 (h!69769 lt!2277811)) (validRegex!7451 (h!69769 lt!2277811)))))

(declare-fun m!6673964 () Bool)

(assert (=> bs!1337531 m!6673964))

(assert (=> b!5719671 d!1804709))

(declare-fun b_lambda!216153 () Bool)

(assert (= b_lambda!216119 (or b!5718391 b_lambda!216153)))

(assert (=> d!1804519 d!1804139))

(declare-fun b_lambda!216155 () Bool)

(assert (= b_lambda!216117 (or b!5718391 b_lambda!216155)))

(assert (=> d!1804515 d!1804137))

(declare-fun b_lambda!216157 () Bool)

(assert (= b_lambda!216103 (or d!1804077 b_lambda!216157)))

(declare-fun bs!1337532 () Bool)

(declare-fun d!1804711 () Bool)

(assert (= bs!1337532 (and d!1804711 d!1804077)))

(assert (=> bs!1337532 (= (dynLambda!24777 lambda!308999 (h!69769 (unfocusZipperList!1143 zl!343))) (validRegex!7451 (h!69769 (unfocusZipperList!1143 zl!343))))))

(declare-fun m!6673966 () Bool)

(assert (=> bs!1337532 m!6673966))

(assert (=> b!5719542 d!1804711))

(declare-fun b_lambda!216159 () Bool)

(assert (= b_lambda!216147 (or d!1804119 b_lambda!216159)))

(declare-fun bs!1337533 () Bool)

(declare-fun d!1804713 () Bool)

(assert (= bs!1337533 (and d!1804713 d!1804119)))

(assert (=> bs!1337533 (= (dynLambda!24777 lambda!309010 (h!69769 (exprs!5599 (h!69770 zl!343)))) (validRegex!7451 (h!69769 (exprs!5599 (h!69770 zl!343)))))))

(assert (=> bs!1337533 m!6673962))

(assert (=> b!5720493 d!1804713))

(declare-fun b_lambda!216161 () Bool)

(assert (= b_lambda!216107 (or b!5718391 b_lambda!216161)))

(assert (=> d!1804341 d!1804143))

(declare-fun b_lambda!216163 () Bool)

(assert (= b_lambda!216109 (or b!5718391 b_lambda!216163)))

(assert (=> d!1804365 d!1804141))

(declare-fun b_lambda!216165 () Bool)

(assert (= b_lambda!216145 (or d!1803977 b_lambda!216165)))

(declare-fun bs!1337534 () Bool)

(declare-fun d!1804715 () Bool)

(assert (= bs!1337534 (and d!1804715 d!1803977)))

(assert (=> bs!1337534 (= (dynLambda!24777 lambda!308976 (h!69769 (exprs!5599 setElem!38305))) (validRegex!7451 (h!69769 (exprs!5599 setElem!38305))))))

(declare-fun m!6673968 () Bool)

(assert (=> bs!1337534 m!6673968))

(assert (=> b!5720403 d!1804715))

(check-sat (not bm!437022) (not b!5719737) (not b!5720413) (not b!5719390) (not b!5720408) (not d!1804605) (not bm!436892) (not b!5720605) (not b!5719533) (not bm!437036) (not b!5720524) (not b!5719504) (not bm!437015) (not bm!436992) (not b!5719815) (not bm!436993) (not d!1804601) (not b!5719412) (not b!5719826) (not b!5720509) (not bm!436924) (not d!1804481) (not b!5720124) (not d!1804419) (not bm!436973) (not b!5720395) (not b!5719497) (not d!1804319) (not b!5720439) (not b!5720478) (not b!5720141) (not b!5720513) (not bm!436848) (not d!1804649) (not d!1804367) (not d!1804665) (not d!1804629) (not b!5720570) (not b!5720575) (not bm!436947) (not b!5719955) (not b!5720363) (not d!1804231) (not b!5719682) (not d!1804515) (not b!5720429) (not setNonEmpty!38320) (not bm!437035) (not b!5720027) (not d!1804385) (not bm!437014) (not setNonEmpty!38318) (not bm!436883) (not d!1804647) (not b!5720190) (not d!1804393) (not b!5720504) (not b!5720203) (not bm!436921) (not b!5720572) (not b!5720587) (not b!5719947) (not b!5720514) (not b!5720527) (not bm!437004) (not d!1804619) (not b!5720549) (not b!5720204) (not b!5720206) (not b!5720588) (not b_lambda!216161) (not b!5720143) (not d!1804671) (not b!5720543) (not b!5720541) (not b!5720502) (not b!5720526) (not b!5720400) (not b!5720560) (not bm!436923) (not b!5720424) (not b!5720590) (not b!5720359) (not b!5720416) (not b!5719970) (not b!5720571) (not bm!436875) (not bm!436997) (not b!5719846) (not bm!436885) (not b_lambda!216159) (not bm!436850) (not b!5720178) (not b!5720546) (not b!5720521) (not b!5719415) (not d!1804603) (not b!5720533) (not b!5720601) (not bm!437027) (not b!5720396) (not bm!436945) (not d!1804415) (not b!5720401) (not bm!436861) (not d!1804341) (not d!1804443) (not b_lambda!216149) (not b!5720612) (not d!1804457) (not b_lambda!216093) (not d!1804463) (not b!5720399) (not d!1804309) (not b!5719932) (not b!5719505) (not d!1804543) (not b!5719628) (not bm!436905) (not b!5719726) (not d!1804417) (not bm!436859) (not d!1804505) (not b!5719952) (not bm!437008) (not d!1804617) (not d!1804679) (not b!5720149) (not b!5720375) (not bm!437007) (not d!1804239) (not d!1804317) (not b!5719774) (not b_lambda!216157) (not bm!436932) (not b!5720518) (not b!5720584) (not b!5719954) (not b!5720611) (not b!5720394) (not b!5720061) (not b!5720602) (not b!5719830) (not b!5720583) (not b!5720616) (not b!5720592) (not b!5720150) (not bm!436999) (not setNonEmpty!38324) (not bm!437019) (not b!5720564) (not b!5720563) (not d!1804613) (not bm!436893) (not b!5720538) (not bm!437031) (not b!5720355) (not bm!436817) (not b!5720562) (not b!5720593) (not b!5720545) (not b!5720553) (not b!5720378) (not bm!436895) (not b!5720207) (not b_lambda!216087) (not b!5719419) (not b!5720472) (not bm!437006) (not b!5720522) (not bm!436877) (not b_lambda!216163) (not bm!436917) (not b!5720442) (not b!5719506) (not b!5720417) (not bm!437037) (not b!5720555) (not d!1804467) (not bm!436998) (not b!5720591) (not b!5720464) (not b_lambda!216089) (not bm!437020) (not b!5720230) (not bm!437001) (not d!1804499) (not b!5719653) (not b!5719977) (not b!5720136) (not b!5719833) (not b!5719937) (not b!5719950) (not b!5719902) (not d!1804279) (not b!5720374) (not bm!436847) (not b!5720420) (not b!5719656) (not d!1804531) (not b!5720617) (not b!5719919) (not b!5719418) (not b!5720539) (not b!5720610) (not bm!436925) (not d!1804483) (not b!5719839) (not b!5720534) (not b!5719727) (not b!5720437) (not b!5720607) (not b!5720568) (not b!5720410) (not b!5719411) (not b_lambda!216091) (not b!5720576) (not b_lambda!216155) (not b!5719884) (not b!5720443) (not d!1804451) (not b!5720177) (not bm!437013) (not bm!437038) (not d!1804379) (not b!5719885) (not d!1804273) (not d!1804347) (not b!5720444) (not b!5720123) (not bs!1337530) (not bm!436930) (not bm!436904) (not b!5720535) (not b!5720505) (not bm!437040) (not b!5720488) (not b!5719496) (not b!5720377) (not d!1804429) (not b!5719665) (not b!5719750) (not b!5720525) (not d!1804245) (not bm!436857) (not b!5720200) (not b!5720451) (not b!5720550) (not d!1804491) (not b!5720598) (not bm!436972) (not b!5720307) (not b!5719854) (not b!5720597) (not b!5720386) (not b!5720135) (not b!5719834) (not b!5719676) (not b!5719410) (not b!5719843) (not b!5719936) (not b!5720404) (not b!5720512) (not bm!437010) (not b!5720614) (not b!5720574) (not b!5719951) (not b!5720409) (not bm!436927) (not b!5720599) (not d!1804227) (not bm!437029) (not d!1804343) (not b!5720506) (not b!5720171) (not d!1804681) (not bm!437043) (not b!5720380) (not b!5720405) (not b!5719675) (not d!1804653) (not b!5719672) (not b!5720556) (not d!1804621) (not b!5720376) (not b!5720350) (not bm!436858) (not b!5720508) (not b!5719662) (not b!5720554) (not d!1804377) (not d!1804519) (not setNonEmpty!38319) (not bm!437047) (not b!5720615) (not d!1804651) (not b!5719397) (not d!1804455) (not d!1804645) (not b!5720582) (not b!5720542) (not d!1804315) (not b!5720531) (not d!1804461) (not b!5720580) (not bm!436963) (not b!5719677) (not b!5720440) tp_is_empty!40683 (not b!5720559) (not bs!1337534) (not d!1804627) (not b!5720594) (not b!5720567) (not bm!436944) (not b!5720595) (not bm!436845) (not b!5720578) (not b!5719847) (not b!5720463) (not b!5720510) (not d!1804663) (not bm!436846) (not bm!437024) (not b!5719512) (not b_lambda!216165) (not b!5719618) (not b!5720609) (not bm!437018) (not b!5720176) (not d!1804609) (not b!5720494) (not b!5719848) (not b!5720579) (not bm!436907) (not b!5720436) (not d!1804349) (not b!5720381) (not bs!1337533) (not d!1804705) (not b!5720468) (not d!1804383) (not bm!436962) (not b!5720146) (not b!5719978) (not b!5720142) (not b!5719483) (not b!5719933) (not b!5719827) (not b!5720566) (not bm!436819) (not bm!437028) (not b!5720551) (not b!5719731) (not b!5719872) (not b!5720028) (not b!5720586) (not b!5720547) (not b!5720352) (not b!5719969) (not b!5719654) (not b!5720520) (not b!5719805) (not b!5719398) (not d!1804703) (not bs!1337532) (not b!5720308) (not bm!437034) (not b!5719873) (not d!1804597) (not bm!436915) (not setNonEmpty!38325) (not b!5720438) (not b!5720174) (not b!5720172) (not b!5719543) (not b!5720266) (not b!5720397) (not d!1804539) (not b!5720202) (not bm!437023) (not bm!436855) (not bm!436823) (not b!5720517) (not b!5720358) (not bm!437025) (not b!5719851) (not d!1804361) (not bm!436931) (not b!5720351) (not bs!1337531) (not b!5720530) (not b!5720175) (not bm!437046) (not b!5720558) (not b!5720529) (not b!5720158) (not b!5719825) (not b!5719549) (not b!5720606) (not bm!436882) (not b!5720603) (not b_lambda!216151) (not b!5720537) (not bm!436912) (not d!1804673) (not d!1804699) (not b!5720201) (not bm!437045) (not bm!436903) (not b!5720516) (not b!5719754) (not d!1804365) (not b_lambda!216153) (not b!5720393) (not b!5719855) (not d!1804307))
(check-sat)
