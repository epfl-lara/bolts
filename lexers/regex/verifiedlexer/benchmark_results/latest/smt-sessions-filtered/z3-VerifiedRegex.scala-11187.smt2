; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!583128 () Bool)

(assert start!583128)

(declare-fun b!5628348 () Bool)

(assert (=> b!5628348 true))

(assert (=> b!5628348 true))

(declare-fun lambda!302399 () Int)

(declare-fun lambda!302398 () Int)

(assert (=> b!5628348 (not (= lambda!302399 lambda!302398))))

(assert (=> b!5628348 true))

(assert (=> b!5628348 true))

(declare-fun b!5628366 () Bool)

(assert (=> b!5628366 true))

(declare-fun e!3469134 () Bool)

(declare-fun e!3469140 () Bool)

(assert (=> b!5628348 (= e!3469134 e!3469140)))

(declare-fun res!2383738 () Bool)

(assert (=> b!5628348 (=> res!2383738 e!3469140)))

(declare-fun lt!2262069 () Bool)

(declare-fun lt!2262065 () Bool)

(declare-datatypes ((C!31512 0))(
  ( (C!31513 (val!25458 Int)) )
))
(declare-datatypes ((List!63162 0))(
  ( (Nil!63038) (Cons!63038 (h!69486 C!31512) (t!376454 List!63162)) )
))
(declare-fun s!2326 () List!63162)

(get-info :version)

(assert (=> b!5628348 (= res!2383738 (or (not (= lt!2262065 lt!2262069)) ((_ is Nil!63038) s!2326)))))

(declare-fun Exists!2721 (Int) Bool)

(assert (=> b!5628348 (= (Exists!2721 lambda!302398) (Exists!2721 lambda!302399))))

(declare-datatypes ((Unit!156016 0))(
  ( (Unit!156017) )
))
(declare-fun lt!2262071 () Unit!156016)

(declare-datatypes ((Regex!15621 0))(
  ( (ElementMatch!15621 (c!988159 C!31512)) (Concat!24466 (regOne!31754 Regex!15621) (regTwo!31754 Regex!15621)) (EmptyExpr!15621) (Star!15621 (reg!15950 Regex!15621)) (EmptyLang!15621) (Union!15621 (regOne!31755 Regex!15621) (regTwo!31755 Regex!15621)) )
))
(declare-fun r!7292 () Regex!15621)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1350 (Regex!15621 Regex!15621 List!63162) Unit!156016)

(assert (=> b!5628348 (= lt!2262071 (lemmaExistCutMatchRandMatchRSpecEquivalent!1350 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326))))

(assert (=> b!5628348 (= lt!2262069 (Exists!2721 lambda!302398))))

(declare-datatypes ((tuple2!65436 0))(
  ( (tuple2!65437 (_1!36021 List!63162) (_2!36021 List!63162)) )
))
(declare-datatypes ((Option!15630 0))(
  ( (None!15629) (Some!15629 (v!51674 tuple2!65436)) )
))
(declare-fun isDefined!12333 (Option!15630) Bool)

(declare-fun findConcatSeparation!2044 (Regex!15621 Regex!15621 List!63162 List!63162 List!63162) Option!15630)

(assert (=> b!5628348 (= lt!2262069 (isDefined!12333 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326)))))

(declare-fun lt!2262079 () Unit!156016)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1808 (Regex!15621 Regex!15621 List!63162) Unit!156016)

(assert (=> b!5628348 (= lt!2262079 (lemmaFindConcatSeparationEquivalentToExists!1808 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326))))

(declare-fun b!5628349 () Bool)

(declare-fun res!2383744 () Bool)

(assert (=> b!5628349 (=> res!2383744 e!3469134)))

(declare-datatypes ((List!63163 0))(
  ( (Nil!63039) (Cons!63039 (h!69487 Regex!15621) (t!376455 List!63163)) )
))
(declare-datatypes ((Context!10010 0))(
  ( (Context!10011 (exprs!5505 List!63163)) )
))
(declare-datatypes ((List!63164 0))(
  ( (Nil!63040) (Cons!63040 (h!69488 Context!10010) (t!376456 List!63164)) )
))
(declare-fun zl!343 () List!63164)

(declare-fun generalisedUnion!1484 (List!63163) Regex!15621)

(declare-fun unfocusZipperList!1049 (List!63164) List!63163)

(assert (=> b!5628349 (= res!2383744 (not (= r!7292 (generalisedUnion!1484 (unfocusZipperList!1049 zl!343)))))))

(declare-fun b!5628351 () Bool)

(declare-fun e!3469137 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2262072 () (InoxSet Context!10010))

(declare-fun matchZipper!1759 ((InoxSet Context!10010) List!63162) Bool)

(declare-fun derivationStepZipper!1708 ((InoxSet Context!10010) C!31512) (InoxSet Context!10010))

(assert (=> b!5628351 (= e!3469137 (matchZipper!1759 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (t!376454 s!2326)))))

(declare-fun b!5628352 () Bool)

(declare-fun e!3469129 () Bool)

(declare-fun e!3469143 () Bool)

(assert (=> b!5628352 (= e!3469129 e!3469143)))

(declare-fun res!2383745 () Bool)

(assert (=> b!5628352 (=> res!2383745 e!3469143)))

(declare-fun lt!2262073 () (InoxSet Context!10010))

(declare-fun lt!2262075 () (InoxSet Context!10010))

(assert (=> b!5628352 (= res!2383745 (not (= lt!2262073 lt!2262075)))))

(declare-fun lt!2262080 () (InoxSet Context!10010))

(declare-fun lt!2262090 () (InoxSet Context!10010))

(assert (=> b!5628352 (= lt!2262075 ((_ map or) lt!2262080 lt!2262090))))

(declare-fun lt!2262088 () Context!10010)

(declare-fun derivationStepZipperDown!963 (Regex!15621 Context!10010 C!31512) (InoxSet Context!10010))

(assert (=> b!5628352 (= lt!2262090 (derivationStepZipperDown!963 (regTwo!31754 (regOne!31754 r!7292)) lt!2262088 (h!69486 s!2326)))))

(declare-fun lt!2262089 () Context!10010)

(assert (=> b!5628352 (= lt!2262080 (derivationStepZipperDown!963 (regOne!31754 (regOne!31754 r!7292)) lt!2262089 (h!69486 s!2326)))))

(declare-fun lt!2262066 () List!63163)

(assert (=> b!5628352 (= lt!2262089 (Context!10011 lt!2262066))))

(assert (=> b!5628352 (= lt!2262066 (Cons!63039 (regTwo!31754 (regOne!31754 r!7292)) (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5628353 () Bool)

(declare-fun e!3469138 () Bool)

(assert (=> b!5628353 (= e!3469138 (not (matchZipper!1759 lt!2262090 (t!376454 s!2326))))))

(declare-fun b!5628354 () Bool)

(declare-fun res!2383748 () Bool)

(declare-fun e!3469133 () Bool)

(assert (=> b!5628354 (=> (not res!2383748) (not e!3469133))))

(declare-fun unfocusZipper!1363 (List!63164) Regex!15621)

(assert (=> b!5628354 (= res!2383748 (= r!7292 (unfocusZipper!1363 zl!343)))))

(declare-fun b!5628355 () Bool)

(declare-fun e!3469142 () Bool)

(declare-fun tp!1558114 () Bool)

(assert (=> b!5628355 (= e!3469142 tp!1558114)))

(declare-fun b!5628356 () Bool)

(declare-fun e!3469132 () Bool)

(declare-fun tp!1558117 () Bool)

(declare-fun tp!1558118 () Bool)

(assert (=> b!5628356 (= e!3469132 (and tp!1558117 tp!1558118))))

(declare-fun b!5628357 () Bool)

(declare-fun e!3469135 () Bool)

(declare-fun e!3469144 () Bool)

(assert (=> b!5628357 (= e!3469135 e!3469144)))

(declare-fun res!2383750 () Bool)

(assert (=> b!5628357 (=> res!2383750 e!3469144)))

(declare-fun lt!2262068 () (InoxSet Context!10010))

(declare-fun lt!2262087 () (InoxSet Context!10010))

(assert (=> b!5628357 (= res!2383750 (not (= lt!2262068 lt!2262087)))))

(declare-fun lt!2262067 () (InoxSet Context!10010))

(assert (=> b!5628357 (= lt!2262087 ((_ map or) lt!2262080 lt!2262067))))

(declare-fun derivationStepZipperUp!889 (Context!10010 C!31512) (InoxSet Context!10010))

(assert (=> b!5628357 (= lt!2262067 (derivationStepZipperUp!889 lt!2262089 (h!69486 s!2326)))))

(declare-fun lt!2262093 () (InoxSet Context!10010))

(declare-fun lt!2262076 () Context!10010)

(declare-fun lambda!302400 () Int)

(declare-fun flatMap!1234 ((InoxSet Context!10010) Int) (InoxSet Context!10010))

(assert (=> b!5628357 (= (flatMap!1234 lt!2262093 lambda!302400) (derivationStepZipperUp!889 lt!2262076 (h!69486 s!2326)))))

(declare-fun lt!2262077 () Unit!156016)

(declare-fun lemmaFlatMapOnSingletonSet!766 ((InoxSet Context!10010) Context!10010 Int) Unit!156016)

(assert (=> b!5628357 (= lt!2262077 (lemmaFlatMapOnSingletonSet!766 lt!2262093 lt!2262076 lambda!302400))))

(declare-fun lt!2262074 () (InoxSet Context!10010))

(assert (=> b!5628357 (= lt!2262074 (derivationStepZipperUp!889 lt!2262076 (h!69486 s!2326)))))

(assert (=> b!5628357 (= lt!2262068 (derivationStepZipper!1708 lt!2262093 (h!69486 s!2326)))))

(assert (=> b!5628357 (= lt!2262072 (store ((as const (Array Context!10010 Bool)) false) lt!2262089 true))))

(assert (=> b!5628357 (= lt!2262093 (store ((as const (Array Context!10010 Bool)) false) lt!2262076 true))))

(assert (=> b!5628357 (= lt!2262076 (Context!10011 (Cons!63039 (regOne!31754 (regOne!31754 r!7292)) lt!2262066)))))

(declare-fun b!5628358 () Bool)

(declare-fun e!3469139 () Bool)

(declare-fun lt!2262094 () (InoxSet Context!10010))

(assert (=> b!5628358 (= e!3469139 (matchZipper!1759 lt!2262094 (t!376454 s!2326)))))

(declare-fun b!5628359 () Bool)

(declare-fun tp_is_empty!40495 () Bool)

(assert (=> b!5628359 (= e!3469132 tp_is_empty!40495)))

(declare-fun b!5628360 () Bool)

(declare-fun e!3469128 () Bool)

(declare-fun tp!1558122 () Bool)

(assert (=> b!5628360 (= e!3469128 tp!1558122)))

(declare-fun b!5628361 () Bool)

(declare-fun res!2383743 () Bool)

(assert (=> b!5628361 (=> res!2383743 e!3469134)))

(assert (=> b!5628361 (= res!2383743 (or ((_ is EmptyExpr!15621) r!7292) ((_ is EmptyLang!15621) r!7292) ((_ is ElementMatch!15621) r!7292) ((_ is Union!15621) r!7292) (not ((_ is Concat!24466) r!7292))))))

(declare-fun tp!1558119 () Bool)

(declare-fun setRes!37588 () Bool)

(declare-fun setElem!37588 () Context!10010)

(declare-fun setNonEmpty!37588 () Bool)

(declare-fun inv!82299 (Context!10010) Bool)

(assert (=> setNonEmpty!37588 (= setRes!37588 (and tp!1558119 (inv!82299 setElem!37588) e!3469128))))

(declare-fun z!1189 () (InoxSet Context!10010))

(declare-fun setRest!37588 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37588 (= z!1189 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37588 true) setRest!37588))))

(declare-fun b!5628362 () Bool)

(assert (=> b!5628362 (= e!3469133 (not e!3469134))))

(declare-fun res!2383749 () Bool)

(assert (=> b!5628362 (=> res!2383749 e!3469134)))

(assert (=> b!5628362 (= res!2383749 (not ((_ is Cons!63040) zl!343)))))

(declare-fun matchRSpec!2724 (Regex!15621 List!63162) Bool)

(assert (=> b!5628362 (= lt!2262065 (matchRSpec!2724 r!7292 s!2326))))

(declare-fun matchR!7806 (Regex!15621 List!63162) Bool)

(assert (=> b!5628362 (= lt!2262065 (matchR!7806 r!7292 s!2326))))

(declare-fun lt!2262091 () Unit!156016)

(declare-fun mainMatchTheorem!2724 (Regex!15621 List!63162) Unit!156016)

(assert (=> b!5628362 (= lt!2262091 (mainMatchTheorem!2724 r!7292 s!2326))))

(declare-fun b!5628363 () Bool)

(declare-fun tp!1558115 () Bool)

(declare-fun tp!1558120 () Bool)

(assert (=> b!5628363 (= e!3469132 (and tp!1558115 tp!1558120))))

(declare-fun b!5628364 () Bool)

(assert (=> b!5628364 (= e!3469143 e!3469135)))

(declare-fun res!2383741 () Bool)

(assert (=> b!5628364 (=> res!2383741 e!3469135)))

(assert (=> b!5628364 (= res!2383741 e!3469138)))

(declare-fun res!2383737 () Bool)

(assert (=> b!5628364 (=> (not res!2383737) (not e!3469138))))

(declare-fun lt!2262078 () Bool)

(declare-fun lt!2262070 () Bool)

(assert (=> b!5628364 (= res!2383737 (not (= lt!2262078 lt!2262070)))))

(assert (=> b!5628364 (= lt!2262078 (matchZipper!1759 lt!2262073 (t!376454 s!2326)))))

(declare-fun e!3469141 () Bool)

(assert (=> b!5628364 (= (matchZipper!1759 lt!2262075 (t!376454 s!2326)) e!3469141)))

(declare-fun res!2383732 () Bool)

(assert (=> b!5628364 (=> res!2383732 e!3469141)))

(assert (=> b!5628364 (= res!2383732 lt!2262070)))

(assert (=> b!5628364 (= lt!2262070 (matchZipper!1759 lt!2262080 (t!376454 s!2326)))))

(declare-fun lt!2262082 () Unit!156016)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!646 ((InoxSet Context!10010) (InoxSet Context!10010) List!63162) Unit!156016)

(assert (=> b!5628364 (= lt!2262082 (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262080 lt!2262090 (t!376454 s!2326)))))

(declare-fun b!5628365 () Bool)

(declare-fun res!2383736 () Bool)

(assert (=> b!5628365 (=> res!2383736 e!3469134)))

(declare-fun isEmpty!34873 (List!63164) Bool)

(assert (=> b!5628365 (= res!2383736 (not (isEmpty!34873 (t!376456 zl!343))))))

(assert (=> b!5628366 (= e!3469140 e!3469129)))

(declare-fun res!2383742 () Bool)

(assert (=> b!5628366 (=> res!2383742 e!3469129)))

(assert (=> b!5628366 (= res!2383742 (or (and ((_ is ElementMatch!15621) (regOne!31754 r!7292)) (= (c!988159 (regOne!31754 r!7292)) (h!69486 s!2326))) ((_ is Union!15621) (regOne!31754 r!7292)) (not ((_ is Concat!24466) (regOne!31754 r!7292)))))))

(declare-fun lt!2262083 () Unit!156016)

(declare-fun e!3469131 () Unit!156016)

(assert (=> b!5628366 (= lt!2262083 e!3469131)))

(declare-fun c!988158 () Bool)

(declare-fun nullable!5653 (Regex!15621) Bool)

(assert (=> b!5628366 (= c!988158 (nullable!5653 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> b!5628366 (= (flatMap!1234 z!1189 lambda!302400) (derivationStepZipperUp!889 (h!69488 zl!343) (h!69486 s!2326)))))

(declare-fun lt!2262081 () Unit!156016)

(assert (=> b!5628366 (= lt!2262081 (lemmaFlatMapOnSingletonSet!766 z!1189 (h!69488 zl!343) lambda!302400))))

(assert (=> b!5628366 (= lt!2262094 (derivationStepZipperUp!889 lt!2262088 (h!69486 s!2326)))))

(assert (=> b!5628366 (= lt!2262073 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (h!69488 zl!343))) lt!2262088 (h!69486 s!2326)))))

(assert (=> b!5628366 (= lt!2262088 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun lt!2262084 () (InoxSet Context!10010))

(assert (=> b!5628366 (= lt!2262084 (derivationStepZipperUp!889 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))) (h!69486 s!2326)))))

(declare-fun b!5628367 () Bool)

(declare-fun res!2383735 () Bool)

(assert (=> b!5628367 (=> (not res!2383735) (not e!3469133))))

(declare-fun toList!9405 ((InoxSet Context!10010)) List!63164)

(assert (=> b!5628367 (= res!2383735 (= (toList!9405 z!1189) zl!343))))

(declare-fun b!5628368 () Bool)

(assert (=> b!5628368 (= e!3469141 (matchZipper!1759 lt!2262090 (t!376454 s!2326)))))

(declare-fun b!5628369 () Bool)

(declare-fun tp!1558116 () Bool)

(declare-fun e!3469136 () Bool)

(assert (=> b!5628369 (= e!3469136 (and (inv!82299 (h!69488 zl!343)) e!3469142 tp!1558116))))

(declare-fun setIsEmpty!37588 () Bool)

(assert (=> setIsEmpty!37588 setRes!37588))

(declare-fun b!5628370 () Bool)

(declare-fun tp!1558123 () Bool)

(assert (=> b!5628370 (= e!3469132 tp!1558123)))

(declare-fun b!5628371 () Bool)

(declare-fun res!2383746 () Bool)

(assert (=> b!5628371 (=> res!2383746 e!3469134)))

(assert (=> b!5628371 (= res!2383746 (not ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5628372 () Bool)

(declare-fun Unit!156018 () Unit!156016)

(assert (=> b!5628372 (= e!3469131 Unit!156018)))

(declare-fun b!5628373 () Bool)

(declare-fun res!2383747 () Bool)

(assert (=> b!5628373 (=> res!2383747 e!3469134)))

(declare-fun generalisedConcat!1236 (List!63163) Regex!15621)

(assert (=> b!5628373 (= res!2383747 (not (= r!7292 (generalisedConcat!1236 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5628374 () Bool)

(declare-fun Unit!156019 () Unit!156016)

(assert (=> b!5628374 (= e!3469131 Unit!156019)))

(declare-fun lt!2262092 () Unit!156016)

(assert (=> b!5628374 (= lt!2262092 (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262073 lt!2262094 (t!376454 s!2326)))))

(declare-fun res!2383731 () Bool)

(assert (=> b!5628374 (= res!2383731 (matchZipper!1759 lt!2262073 (t!376454 s!2326)))))

(assert (=> b!5628374 (=> res!2383731 e!3469139)))

(assert (=> b!5628374 (= (matchZipper!1759 ((_ map or) lt!2262073 lt!2262094) (t!376454 s!2326)) e!3469139)))

(declare-fun b!5628375 () Bool)

(declare-fun res!2383733 () Bool)

(assert (=> b!5628375 (=> res!2383733 e!3469140)))

(declare-fun isEmpty!34874 (List!63163) Bool)

(assert (=> b!5628375 (= res!2383733 (isEmpty!34874 (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun res!2383730 () Bool)

(assert (=> start!583128 (=> (not res!2383730) (not e!3469133))))

(declare-fun validRegex!7357 (Regex!15621) Bool)

(assert (=> start!583128 (= res!2383730 (validRegex!7357 r!7292))))

(assert (=> start!583128 e!3469133))

(assert (=> start!583128 e!3469132))

(declare-fun condSetEmpty!37588 () Bool)

(assert (=> start!583128 (= condSetEmpty!37588 (= z!1189 ((as const (Array Context!10010 Bool)) false)))))

(assert (=> start!583128 setRes!37588))

(assert (=> start!583128 e!3469136))

(declare-fun e!3469130 () Bool)

(assert (=> start!583128 e!3469130))

(declare-fun b!5628350 () Bool)

(declare-fun res!2383734 () Bool)

(assert (=> b!5628350 (=> res!2383734 e!3469129)))

(assert (=> b!5628350 (= res!2383734 (not (nullable!5653 (regOne!31754 (regOne!31754 r!7292)))))))

(declare-fun b!5628376 () Bool)

(declare-fun tp!1558121 () Bool)

(assert (=> b!5628376 (= e!3469130 (and tp_is_empty!40495 tp!1558121))))

(declare-fun b!5628377 () Bool)

(declare-fun e!3469127 () Bool)

(assert (=> b!5628377 (= e!3469127 (matchZipper!1759 lt!2262067 (t!376454 s!2326)))))

(declare-fun b!5628378 () Bool)

(assert (=> b!5628378 (= e!3469144 e!3469137)))

(declare-fun res!2383739 () Bool)

(assert (=> b!5628378 (=> res!2383739 e!3469137)))

(assert (=> b!5628378 (= res!2383739 (= lt!2262078 (matchZipper!1759 lt!2262068 (t!376454 s!2326))))))

(assert (=> b!5628378 (= (matchZipper!1759 lt!2262087 (t!376454 s!2326)) e!3469127)))

(declare-fun res!2383740 () Bool)

(assert (=> b!5628378 (=> res!2383740 e!3469127)))

(assert (=> b!5628378 (= res!2383740 lt!2262070)))

(declare-fun lt!2262085 () Unit!156016)

(assert (=> b!5628378 (= lt!2262085 (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262080 lt!2262067 (t!376454 s!2326)))))

(assert (=> b!5628378 (= (flatMap!1234 lt!2262072 lambda!302400) (derivationStepZipperUp!889 lt!2262089 (h!69486 s!2326)))))

(declare-fun lt!2262086 () Unit!156016)

(assert (=> b!5628378 (= lt!2262086 (lemmaFlatMapOnSingletonSet!766 lt!2262072 lt!2262089 lambda!302400))))

(assert (= (and start!583128 res!2383730) b!5628367))

(assert (= (and b!5628367 res!2383735) b!5628354))

(assert (= (and b!5628354 res!2383748) b!5628362))

(assert (= (and b!5628362 (not res!2383749)) b!5628365))

(assert (= (and b!5628365 (not res!2383736)) b!5628373))

(assert (= (and b!5628373 (not res!2383747)) b!5628371))

(assert (= (and b!5628371 (not res!2383746)) b!5628349))

(assert (= (and b!5628349 (not res!2383744)) b!5628361))

(assert (= (and b!5628361 (not res!2383743)) b!5628348))

(assert (= (and b!5628348 (not res!2383738)) b!5628375))

(assert (= (and b!5628375 (not res!2383733)) b!5628366))

(assert (= (and b!5628366 c!988158) b!5628374))

(assert (= (and b!5628366 (not c!988158)) b!5628372))

(assert (= (and b!5628374 (not res!2383731)) b!5628358))

(assert (= (and b!5628366 (not res!2383742)) b!5628350))

(assert (= (and b!5628350 (not res!2383734)) b!5628352))

(assert (= (and b!5628352 (not res!2383745)) b!5628364))

(assert (= (and b!5628364 (not res!2383732)) b!5628368))

(assert (= (and b!5628364 res!2383737) b!5628353))

(assert (= (and b!5628364 (not res!2383741)) b!5628357))

(assert (= (and b!5628357 (not res!2383750)) b!5628378))

(assert (= (and b!5628378 (not res!2383740)) b!5628377))

(assert (= (and b!5628378 (not res!2383739)) b!5628351))

(assert (= (and start!583128 ((_ is ElementMatch!15621) r!7292)) b!5628359))

(assert (= (and start!583128 ((_ is Concat!24466) r!7292)) b!5628363))

(assert (= (and start!583128 ((_ is Star!15621) r!7292)) b!5628370))

(assert (= (and start!583128 ((_ is Union!15621) r!7292)) b!5628356))

(assert (= (and start!583128 condSetEmpty!37588) setIsEmpty!37588))

(assert (= (and start!583128 (not condSetEmpty!37588)) setNonEmpty!37588))

(assert (= setNonEmpty!37588 b!5628360))

(assert (= b!5628369 b!5628355))

(assert (= (and start!583128 ((_ is Cons!63040) zl!343)) b!5628369))

(assert (= (and start!583128 ((_ is Cons!63038) s!2326)) b!5628376))

(declare-fun m!6599980 () Bool)

(assert (=> b!5628375 m!6599980))

(declare-fun m!6599982 () Bool)

(assert (=> b!5628365 m!6599982))

(declare-fun m!6599984 () Bool)

(assert (=> b!5628378 m!6599984))

(declare-fun m!6599986 () Bool)

(assert (=> b!5628378 m!6599986))

(declare-fun m!6599988 () Bool)

(assert (=> b!5628378 m!6599988))

(declare-fun m!6599990 () Bool)

(assert (=> b!5628378 m!6599990))

(declare-fun m!6599992 () Bool)

(assert (=> b!5628378 m!6599992))

(declare-fun m!6599994 () Bool)

(assert (=> b!5628378 m!6599994))

(declare-fun m!6599996 () Bool)

(assert (=> setNonEmpty!37588 m!6599996))

(declare-fun m!6599998 () Bool)

(assert (=> b!5628367 m!6599998))

(declare-fun m!6600000 () Bool)

(assert (=> b!5628350 m!6600000))

(declare-fun m!6600002 () Bool)

(assert (=> b!5628373 m!6600002))

(declare-fun m!6600004 () Bool)

(assert (=> b!5628364 m!6600004))

(declare-fun m!6600006 () Bool)

(assert (=> b!5628364 m!6600006))

(declare-fun m!6600008 () Bool)

(assert (=> b!5628364 m!6600008))

(declare-fun m!6600010 () Bool)

(assert (=> b!5628364 m!6600010))

(declare-fun m!6600012 () Bool)

(assert (=> b!5628358 m!6600012))

(declare-fun m!6600014 () Bool)

(assert (=> b!5628352 m!6600014))

(declare-fun m!6600016 () Bool)

(assert (=> b!5628352 m!6600016))

(declare-fun m!6600018 () Bool)

(assert (=> b!5628369 m!6600018))

(declare-fun m!6600020 () Bool)

(assert (=> b!5628353 m!6600020))

(declare-fun m!6600022 () Bool)

(assert (=> b!5628366 m!6600022))

(declare-fun m!6600024 () Bool)

(assert (=> b!5628366 m!6600024))

(declare-fun m!6600026 () Bool)

(assert (=> b!5628366 m!6600026))

(declare-fun m!6600028 () Bool)

(assert (=> b!5628366 m!6600028))

(declare-fun m!6600030 () Bool)

(assert (=> b!5628366 m!6600030))

(declare-fun m!6600032 () Bool)

(assert (=> b!5628366 m!6600032))

(declare-fun m!6600034 () Bool)

(assert (=> b!5628366 m!6600034))

(declare-fun m!6600036 () Bool)

(assert (=> b!5628377 m!6600036))

(declare-fun m!6600038 () Bool)

(assert (=> b!5628349 m!6600038))

(assert (=> b!5628349 m!6600038))

(declare-fun m!6600040 () Bool)

(assert (=> b!5628349 m!6600040))

(declare-fun m!6600042 () Bool)

(assert (=> b!5628362 m!6600042))

(declare-fun m!6600044 () Bool)

(assert (=> b!5628362 m!6600044))

(declare-fun m!6600046 () Bool)

(assert (=> b!5628362 m!6600046))

(assert (=> b!5628368 m!6600020))

(declare-fun m!6600048 () Bool)

(assert (=> b!5628354 m!6600048))

(declare-fun m!6600050 () Bool)

(assert (=> b!5628357 m!6600050))

(declare-fun m!6600052 () Bool)

(assert (=> b!5628357 m!6600052))

(declare-fun m!6600054 () Bool)

(assert (=> b!5628357 m!6600054))

(declare-fun m!6600056 () Bool)

(assert (=> b!5628357 m!6600056))

(declare-fun m!6600058 () Bool)

(assert (=> b!5628357 m!6600058))

(declare-fun m!6600060 () Bool)

(assert (=> b!5628357 m!6600060))

(assert (=> b!5628357 m!6599984))

(declare-fun m!6600062 () Bool)

(assert (=> start!583128 m!6600062))

(declare-fun m!6600064 () Bool)

(assert (=> b!5628351 m!6600064))

(assert (=> b!5628351 m!6600064))

(declare-fun m!6600066 () Bool)

(assert (=> b!5628351 m!6600066))

(declare-fun m!6600068 () Bool)

(assert (=> b!5628374 m!6600068))

(assert (=> b!5628374 m!6600004))

(declare-fun m!6600070 () Bool)

(assert (=> b!5628374 m!6600070))

(declare-fun m!6600072 () Bool)

(assert (=> b!5628348 m!6600072))

(declare-fun m!6600074 () Bool)

(assert (=> b!5628348 m!6600074))

(declare-fun m!6600076 () Bool)

(assert (=> b!5628348 m!6600076))

(declare-fun m!6600078 () Bool)

(assert (=> b!5628348 m!6600078))

(assert (=> b!5628348 m!6600074))

(declare-fun m!6600080 () Bool)

(assert (=> b!5628348 m!6600080))

(declare-fun m!6600082 () Bool)

(assert (=> b!5628348 m!6600082))

(assert (=> b!5628348 m!6600072))

(check-sat (not b!5628365) (not b!5628354) (not b!5628353) (not start!583128) (not b!5628369) (not b!5628357) (not b!5628367) (not b!5628351) (not b!5628368) (not b!5628358) (not b!5628377) (not b!5628348) (not b!5628374) (not b!5628373) (not b!5628355) (not b!5628350) (not b!5628376) (not b!5628364) (not b!5628360) (not b!5628375) (not b!5628363) (not b!5628366) (not setNonEmpty!37588) (not b!5628352) (not b!5628370) tp_is_empty!40495 (not b!5628349) (not b!5628378) (not b!5628362) (not b!5628356))
(check-sat)
(get-model)

(declare-fun bs!1302546 () Bool)

(declare-fun b!5628564 () Bool)

(assert (= bs!1302546 (and b!5628564 b!5628348)))

(declare-fun lambda!302419 () Int)

(assert (=> bs!1302546 (not (= lambda!302419 lambda!302398))))

(assert (=> bs!1302546 (not (= lambda!302419 lambda!302399))))

(assert (=> b!5628564 true))

(assert (=> b!5628564 true))

(declare-fun bs!1302549 () Bool)

(declare-fun b!5628570 () Bool)

(assert (= bs!1302549 (and b!5628570 b!5628348)))

(declare-fun lambda!302421 () Int)

(assert (=> bs!1302549 (not (= lambda!302421 lambda!302398))))

(assert (=> bs!1302549 (= lambda!302421 lambda!302399)))

(declare-fun bs!1302550 () Bool)

(assert (= bs!1302550 (and b!5628570 b!5628564)))

(assert (=> bs!1302550 (not (= lambda!302421 lambda!302419))))

(assert (=> b!5628570 true))

(assert (=> b!5628570 true))

(declare-fun b!5628560 () Bool)

(declare-fun c!988221 () Bool)

(assert (=> b!5628560 (= c!988221 ((_ is Union!15621) r!7292))))

(declare-fun e!3469249 () Bool)

(declare-fun e!3469247 () Bool)

(assert (=> b!5628560 (= e!3469249 e!3469247)))

(declare-fun b!5628561 () Bool)

(declare-fun e!3469248 () Bool)

(declare-fun call!424097 () Bool)

(assert (=> b!5628561 (= e!3469248 call!424097)))

(declare-fun b!5628562 () Bool)

(declare-fun res!2383808 () Bool)

(declare-fun e!3469243 () Bool)

(assert (=> b!5628562 (=> res!2383808 e!3469243)))

(assert (=> b!5628562 (= res!2383808 call!424097)))

(declare-fun e!3469244 () Bool)

(assert (=> b!5628562 (= e!3469244 e!3469243)))

(declare-fun b!5628563 () Bool)

(assert (=> b!5628563 (= e!3469249 (= s!2326 (Cons!63038 (c!988159 r!7292) Nil!63038)))))

(declare-fun bm!424091 () Bool)

(declare-fun isEmpty!34877 (List!63162) Bool)

(assert (=> bm!424091 (= call!424097 (isEmpty!34877 s!2326))))

(declare-fun call!424096 () Bool)

(assert (=> b!5628564 (= e!3469243 call!424096)))

(declare-fun bm!424092 () Bool)

(declare-fun c!988219 () Bool)

(assert (=> bm!424092 (= call!424096 (Exists!2721 (ite c!988219 lambda!302419 lambda!302421)))))

(declare-fun b!5628565 () Bool)

(declare-fun e!3469246 () Bool)

(assert (=> b!5628565 (= e!3469247 e!3469246)))

(declare-fun res!2383809 () Bool)

(assert (=> b!5628565 (= res!2383809 (matchRSpec!2724 (regOne!31755 r!7292) s!2326))))

(assert (=> b!5628565 (=> res!2383809 e!3469246)))

(declare-fun d!1777802 () Bool)

(declare-fun c!988222 () Bool)

(assert (=> d!1777802 (= c!988222 ((_ is EmptyExpr!15621) r!7292))))

(assert (=> d!1777802 (= (matchRSpec!2724 r!7292 s!2326) e!3469248)))

(declare-fun b!5628566 () Bool)

(assert (=> b!5628566 (= e!3469246 (matchRSpec!2724 (regTwo!31755 r!7292) s!2326))))

(declare-fun b!5628567 () Bool)

(declare-fun c!988220 () Bool)

(assert (=> b!5628567 (= c!988220 ((_ is ElementMatch!15621) r!7292))))

(declare-fun e!3469245 () Bool)

(assert (=> b!5628567 (= e!3469245 e!3469249)))

(declare-fun b!5628568 () Bool)

(assert (=> b!5628568 (= e!3469248 e!3469245)))

(declare-fun res!2383810 () Bool)

(assert (=> b!5628568 (= res!2383810 (not ((_ is EmptyLang!15621) r!7292)))))

(assert (=> b!5628568 (=> (not res!2383810) (not e!3469245))))

(declare-fun b!5628569 () Bool)

(assert (=> b!5628569 (= e!3469247 e!3469244)))

(assert (=> b!5628569 (= c!988219 ((_ is Star!15621) r!7292))))

(assert (=> b!5628570 (= e!3469244 call!424096)))

(assert (= (and d!1777802 c!988222) b!5628561))

(assert (= (and d!1777802 (not c!988222)) b!5628568))

(assert (= (and b!5628568 res!2383810) b!5628567))

(assert (= (and b!5628567 c!988220) b!5628563))

(assert (= (and b!5628567 (not c!988220)) b!5628560))

(assert (= (and b!5628560 c!988221) b!5628565))

(assert (= (and b!5628560 (not c!988221)) b!5628569))

(assert (= (and b!5628565 (not res!2383809)) b!5628566))

(assert (= (and b!5628569 c!988219) b!5628562))

(assert (= (and b!5628569 (not c!988219)) b!5628570))

(assert (= (and b!5628562 (not res!2383808)) b!5628564))

(assert (= (or b!5628564 b!5628570) bm!424092))

(assert (= (or b!5628561 b!5628562) bm!424091))

(declare-fun m!6600222 () Bool)

(assert (=> bm!424091 m!6600222))

(declare-fun m!6600224 () Bool)

(assert (=> bm!424092 m!6600224))

(declare-fun m!6600226 () Bool)

(assert (=> b!5628565 m!6600226))

(declare-fun m!6600228 () Bool)

(assert (=> b!5628566 m!6600228))

(assert (=> b!5628362 d!1777802))

(declare-fun b!5628648 () Bool)

(declare-fun e!3469296 () Bool)

(declare-fun head!11986 (List!63162) C!31512)

(assert (=> b!5628648 (= e!3469296 (not (= (head!11986 s!2326) (c!988159 r!7292))))))

(declare-fun b!5628649 () Bool)

(declare-fun res!2383840 () Bool)

(declare-fun e!3469293 () Bool)

(assert (=> b!5628649 (=> (not res!2383840) (not e!3469293))))

(declare-fun call!424100 () Bool)

(assert (=> b!5628649 (= res!2383840 (not call!424100))))

(declare-fun b!5628650 () Bool)

(declare-fun res!2383838 () Bool)

(assert (=> b!5628650 (=> (not res!2383838) (not e!3469293))))

(declare-fun tail!11081 (List!63162) List!63162)

(assert (=> b!5628650 (= res!2383838 (isEmpty!34877 (tail!11081 s!2326)))))

(declare-fun b!5628651 () Bool)

(declare-fun e!3469298 () Bool)

(assert (=> b!5628651 (= e!3469298 (nullable!5653 r!7292))))

(declare-fun b!5628652 () Bool)

(declare-fun res!2383839 () Bool)

(declare-fun e!3469295 () Bool)

(assert (=> b!5628652 (=> res!2383839 e!3469295)))

(assert (=> b!5628652 (= res!2383839 e!3469293)))

(declare-fun res!2383843 () Bool)

(assert (=> b!5628652 (=> (not res!2383843) (not e!3469293))))

(declare-fun lt!2262127 () Bool)

(assert (=> b!5628652 (= res!2383843 lt!2262127)))

(declare-fun b!5628653 () Bool)

(declare-fun e!3469297 () Bool)

(assert (=> b!5628653 (= e!3469297 e!3469296)))

(declare-fun res!2383842 () Bool)

(assert (=> b!5628653 (=> res!2383842 e!3469296)))

(assert (=> b!5628653 (= res!2383842 call!424100)))

(declare-fun b!5628655 () Bool)

(declare-fun res!2383841 () Bool)

(assert (=> b!5628655 (=> res!2383841 e!3469296)))

(assert (=> b!5628655 (= res!2383841 (not (isEmpty!34877 (tail!11081 s!2326))))))

(declare-fun b!5628656 () Bool)

(declare-fun e!3469294 () Bool)

(declare-fun e!3469292 () Bool)

(assert (=> b!5628656 (= e!3469294 e!3469292)))

(declare-fun c!988251 () Bool)

(assert (=> b!5628656 (= c!988251 ((_ is EmptyLang!15621) r!7292))))

(declare-fun bm!424095 () Bool)

(assert (=> bm!424095 (= call!424100 (isEmpty!34877 s!2326))))

(declare-fun b!5628657 () Bool)

(declare-fun res!2383837 () Bool)

(assert (=> b!5628657 (=> res!2383837 e!3469295)))

(assert (=> b!5628657 (= res!2383837 (not ((_ is ElementMatch!15621) r!7292)))))

(assert (=> b!5628657 (= e!3469292 e!3469295)))

(declare-fun b!5628658 () Bool)

(assert (=> b!5628658 (= e!3469293 (= (head!11986 s!2326) (c!988159 r!7292)))))

(declare-fun b!5628659 () Bool)

(assert (=> b!5628659 (= e!3469294 (= lt!2262127 call!424100))))

(declare-fun b!5628660 () Bool)

(declare-fun derivativeStep!4456 (Regex!15621 C!31512) Regex!15621)

(assert (=> b!5628660 (= e!3469298 (matchR!7806 (derivativeStep!4456 r!7292 (head!11986 s!2326)) (tail!11081 s!2326)))))

(declare-fun b!5628661 () Bool)

(assert (=> b!5628661 (= e!3469295 e!3469297)))

(declare-fun res!2383836 () Bool)

(assert (=> b!5628661 (=> (not res!2383836) (not e!3469297))))

(assert (=> b!5628661 (= res!2383836 (not lt!2262127))))

(declare-fun b!5628654 () Bool)

(assert (=> b!5628654 (= e!3469292 (not lt!2262127))))

(declare-fun d!1777826 () Bool)

(assert (=> d!1777826 e!3469294))

(declare-fun c!988252 () Bool)

(assert (=> d!1777826 (= c!988252 ((_ is EmptyExpr!15621) r!7292))))

(assert (=> d!1777826 (= lt!2262127 e!3469298)))

(declare-fun c!988250 () Bool)

(assert (=> d!1777826 (= c!988250 (isEmpty!34877 s!2326))))

(assert (=> d!1777826 (validRegex!7357 r!7292)))

(assert (=> d!1777826 (= (matchR!7806 r!7292 s!2326) lt!2262127)))

(assert (= (and d!1777826 c!988250) b!5628651))

(assert (= (and d!1777826 (not c!988250)) b!5628660))

(assert (= (and d!1777826 c!988252) b!5628659))

(assert (= (and d!1777826 (not c!988252)) b!5628656))

(assert (= (and b!5628656 c!988251) b!5628654))

(assert (= (and b!5628656 (not c!988251)) b!5628657))

(assert (= (and b!5628657 (not res!2383837)) b!5628652))

(assert (= (and b!5628652 res!2383843) b!5628649))

(assert (= (and b!5628649 res!2383840) b!5628650))

(assert (= (and b!5628650 res!2383838) b!5628658))

(assert (= (and b!5628652 (not res!2383839)) b!5628661))

(assert (= (and b!5628661 res!2383836) b!5628653))

(assert (= (and b!5628653 (not res!2383842)) b!5628655))

(assert (= (and b!5628655 (not res!2383841)) b!5628648))

(assert (= (or b!5628659 b!5628649 b!5628653) bm!424095))

(declare-fun m!6600268 () Bool)

(assert (=> b!5628648 m!6600268))

(declare-fun m!6600270 () Bool)

(assert (=> b!5628650 m!6600270))

(assert (=> b!5628650 m!6600270))

(declare-fun m!6600272 () Bool)

(assert (=> b!5628650 m!6600272))

(assert (=> b!5628658 m!6600268))

(declare-fun m!6600274 () Bool)

(assert (=> b!5628651 m!6600274))

(assert (=> bm!424095 m!6600222))

(assert (=> b!5628660 m!6600268))

(assert (=> b!5628660 m!6600268))

(declare-fun m!6600276 () Bool)

(assert (=> b!5628660 m!6600276))

(assert (=> b!5628660 m!6600270))

(assert (=> b!5628660 m!6600276))

(assert (=> b!5628660 m!6600270))

(declare-fun m!6600278 () Bool)

(assert (=> b!5628660 m!6600278))

(assert (=> d!1777826 m!6600222))

(assert (=> d!1777826 m!6600062))

(assert (=> b!5628655 m!6600270))

(assert (=> b!5628655 m!6600270))

(assert (=> b!5628655 m!6600272))

(assert (=> b!5628362 d!1777826))

(declare-fun d!1777840 () Bool)

(assert (=> d!1777840 (= (matchR!7806 r!7292 s!2326) (matchRSpec!2724 r!7292 s!2326))))

(declare-fun lt!2262133 () Unit!156016)

(declare-fun choose!42660 (Regex!15621 List!63162) Unit!156016)

(assert (=> d!1777840 (= lt!2262133 (choose!42660 r!7292 s!2326))))

(assert (=> d!1777840 (validRegex!7357 r!7292)))

(assert (=> d!1777840 (= (mainMatchTheorem!2724 r!7292 s!2326) lt!2262133)))

(declare-fun bs!1302558 () Bool)

(assert (= bs!1302558 d!1777840))

(assert (=> bs!1302558 m!6600044))

(assert (=> bs!1302558 m!6600042))

(declare-fun m!6600280 () Bool)

(assert (=> bs!1302558 m!6600280))

(assert (=> bs!1302558 m!6600062))

(assert (=> b!5628362 d!1777840))

(declare-fun d!1777842 () Bool)

(declare-fun lambda!302435 () Int)

(declare-fun forall!14775 (List!63163 Int) Bool)

(assert (=> d!1777842 (= (inv!82299 setElem!37588) (forall!14775 (exprs!5505 setElem!37588) lambda!302435))))

(declare-fun bs!1302559 () Bool)

(assert (= bs!1302559 d!1777842))

(declare-fun m!6600282 () Bool)

(assert (=> bs!1302559 m!6600282))

(assert (=> setNonEmpty!37588 d!1777842))

(declare-fun d!1777844 () Bool)

(assert (=> d!1777844 (= (isEmpty!34873 (t!376456 zl!343)) ((_ is Nil!63040) (t!376456 zl!343)))))

(assert (=> b!5628365 d!1777844))

(declare-fun d!1777846 () Bool)

(declare-fun c!988267 () Bool)

(assert (=> d!1777846 (= c!988267 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469326 () Bool)

(assert (=> d!1777846 (= (matchZipper!1759 lt!2262073 (t!376454 s!2326)) e!3469326)))

(declare-fun b!5628709 () Bool)

(declare-fun nullableZipper!1603 ((InoxSet Context!10010)) Bool)

(assert (=> b!5628709 (= e!3469326 (nullableZipper!1603 lt!2262073))))

(declare-fun b!5628710 () Bool)

(assert (=> b!5628710 (= e!3469326 (matchZipper!1759 (derivationStepZipper!1708 lt!2262073 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777846 c!988267) b!5628709))

(assert (= (and d!1777846 (not c!988267)) b!5628710))

(declare-fun m!6600284 () Bool)

(assert (=> d!1777846 m!6600284))

(declare-fun m!6600286 () Bool)

(assert (=> b!5628709 m!6600286))

(declare-fun m!6600288 () Bool)

(assert (=> b!5628710 m!6600288))

(assert (=> b!5628710 m!6600288))

(declare-fun m!6600290 () Bool)

(assert (=> b!5628710 m!6600290))

(declare-fun m!6600292 () Bool)

(assert (=> b!5628710 m!6600292))

(assert (=> b!5628710 m!6600290))

(assert (=> b!5628710 m!6600292))

(declare-fun m!6600294 () Bool)

(assert (=> b!5628710 m!6600294))

(assert (=> b!5628364 d!1777846))

(declare-fun d!1777848 () Bool)

(declare-fun c!988268 () Bool)

(assert (=> d!1777848 (= c!988268 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469327 () Bool)

(assert (=> d!1777848 (= (matchZipper!1759 lt!2262075 (t!376454 s!2326)) e!3469327)))

(declare-fun b!5628711 () Bool)

(assert (=> b!5628711 (= e!3469327 (nullableZipper!1603 lt!2262075))))

(declare-fun b!5628712 () Bool)

(assert (=> b!5628712 (= e!3469327 (matchZipper!1759 (derivationStepZipper!1708 lt!2262075 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777848 c!988268) b!5628711))

(assert (= (and d!1777848 (not c!988268)) b!5628712))

(assert (=> d!1777848 m!6600284))

(declare-fun m!6600296 () Bool)

(assert (=> b!5628711 m!6600296))

(assert (=> b!5628712 m!6600288))

(assert (=> b!5628712 m!6600288))

(declare-fun m!6600298 () Bool)

(assert (=> b!5628712 m!6600298))

(assert (=> b!5628712 m!6600292))

(assert (=> b!5628712 m!6600298))

(assert (=> b!5628712 m!6600292))

(declare-fun m!6600300 () Bool)

(assert (=> b!5628712 m!6600300))

(assert (=> b!5628364 d!1777848))

(declare-fun d!1777850 () Bool)

(declare-fun c!988269 () Bool)

(assert (=> d!1777850 (= c!988269 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469328 () Bool)

(assert (=> d!1777850 (= (matchZipper!1759 lt!2262080 (t!376454 s!2326)) e!3469328)))

(declare-fun b!5628713 () Bool)

(assert (=> b!5628713 (= e!3469328 (nullableZipper!1603 lt!2262080))))

(declare-fun b!5628714 () Bool)

(assert (=> b!5628714 (= e!3469328 (matchZipper!1759 (derivationStepZipper!1708 lt!2262080 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777850 c!988269) b!5628713))

(assert (= (and d!1777850 (not c!988269)) b!5628714))

(assert (=> d!1777850 m!6600284))

(declare-fun m!6600302 () Bool)

(assert (=> b!5628713 m!6600302))

(assert (=> b!5628714 m!6600288))

(assert (=> b!5628714 m!6600288))

(declare-fun m!6600304 () Bool)

(assert (=> b!5628714 m!6600304))

(assert (=> b!5628714 m!6600292))

(assert (=> b!5628714 m!6600304))

(assert (=> b!5628714 m!6600292))

(declare-fun m!6600306 () Bool)

(assert (=> b!5628714 m!6600306))

(assert (=> b!5628364 d!1777850))

(declare-fun d!1777852 () Bool)

(declare-fun e!3469331 () Bool)

(assert (=> d!1777852 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262090) (t!376454 s!2326)) e!3469331)))

(declare-fun res!2383865 () Bool)

(assert (=> d!1777852 (=> res!2383865 e!3469331)))

(assert (=> d!1777852 (= res!2383865 (matchZipper!1759 lt!2262080 (t!376454 s!2326)))))

(declare-fun lt!2262136 () Unit!156016)

(declare-fun choose!42661 ((InoxSet Context!10010) (InoxSet Context!10010) List!63162) Unit!156016)

(assert (=> d!1777852 (= lt!2262136 (choose!42661 lt!2262080 lt!2262090 (t!376454 s!2326)))))

(assert (=> d!1777852 (= (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262080 lt!2262090 (t!376454 s!2326)) lt!2262136)))

(declare-fun b!5628717 () Bool)

(assert (=> b!5628717 (= e!3469331 (matchZipper!1759 lt!2262090 (t!376454 s!2326)))))

(assert (= (and d!1777852 (not res!2383865)) b!5628717))

(declare-fun m!6600316 () Bool)

(assert (=> d!1777852 m!6600316))

(assert (=> d!1777852 m!6600008))

(declare-fun m!6600318 () Bool)

(assert (=> d!1777852 m!6600318))

(assert (=> b!5628717 m!6600020))

(assert (=> b!5628364 d!1777852))

(declare-fun b!5628781 () Bool)

(declare-fun e!3469369 () Bool)

(declare-fun lt!2262150 () Option!15630)

(assert (=> b!5628781 (= e!3469369 (not (isDefined!12333 lt!2262150)))))

(declare-fun b!5628782 () Bool)

(declare-fun e!3469368 () Option!15630)

(declare-fun e!3469367 () Option!15630)

(assert (=> b!5628782 (= e!3469368 e!3469367)))

(declare-fun c!988285 () Bool)

(assert (=> b!5628782 (= c!988285 ((_ is Nil!63038) s!2326))))

(declare-fun d!1777856 () Bool)

(assert (=> d!1777856 e!3469369))

(declare-fun res!2383901 () Bool)

(assert (=> d!1777856 (=> res!2383901 e!3469369)))

(declare-fun e!3469365 () Bool)

(assert (=> d!1777856 (= res!2383901 e!3469365)))

(declare-fun res!2383904 () Bool)

(assert (=> d!1777856 (=> (not res!2383904) (not e!3469365))))

(assert (=> d!1777856 (= res!2383904 (isDefined!12333 lt!2262150))))

(assert (=> d!1777856 (= lt!2262150 e!3469368)))

(declare-fun c!988284 () Bool)

(declare-fun e!3469366 () Bool)

(assert (=> d!1777856 (= c!988284 e!3469366)))

(declare-fun res!2383905 () Bool)

(assert (=> d!1777856 (=> (not res!2383905) (not e!3469366))))

(assert (=> d!1777856 (= res!2383905 (matchR!7806 (regOne!31754 r!7292) Nil!63038))))

(assert (=> d!1777856 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1777856 (= (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326) lt!2262150)))

(declare-fun b!5628783 () Bool)

(declare-fun lt!2262152 () Unit!156016)

(declare-fun lt!2262151 () Unit!156016)

(assert (=> b!5628783 (= lt!2262152 lt!2262151)))

(declare-fun ++!13837 (List!63162 List!63162) List!63162)

(assert (=> b!5628783 (= (++!13837 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2006 (List!63162 C!31512 List!63162 List!63162) Unit!156016)

(assert (=> b!5628783 (= lt!2262151 (lemmaMoveElementToOtherListKeepsConcatEq!2006 Nil!63038 (h!69486 s!2326) (t!376454 s!2326) s!2326))))

(assert (=> b!5628783 (= e!3469367 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326) s!2326))))

(declare-fun b!5628784 () Bool)

(declare-fun get!21715 (Option!15630) tuple2!65436)

(assert (=> b!5628784 (= e!3469365 (= (++!13837 (_1!36021 (get!21715 lt!2262150)) (_2!36021 (get!21715 lt!2262150))) s!2326))))

(declare-fun b!5628785 () Bool)

(declare-fun res!2383902 () Bool)

(assert (=> b!5628785 (=> (not res!2383902) (not e!3469365))))

(assert (=> b!5628785 (= res!2383902 (matchR!7806 (regOne!31754 r!7292) (_1!36021 (get!21715 lt!2262150))))))

(declare-fun b!5628786 () Bool)

(assert (=> b!5628786 (= e!3469367 None!15629)))

(declare-fun b!5628787 () Bool)

(declare-fun res!2383903 () Bool)

(assert (=> b!5628787 (=> (not res!2383903) (not e!3469365))))

(assert (=> b!5628787 (= res!2383903 (matchR!7806 (regTwo!31754 r!7292) (_2!36021 (get!21715 lt!2262150))))))

(declare-fun b!5628788 () Bool)

(assert (=> b!5628788 (= e!3469366 (matchR!7806 (regTwo!31754 r!7292) s!2326))))

(declare-fun b!5628789 () Bool)

(assert (=> b!5628789 (= e!3469368 (Some!15629 (tuple2!65437 Nil!63038 s!2326)))))

(assert (= (and d!1777856 res!2383905) b!5628788))

(assert (= (and d!1777856 c!988284) b!5628789))

(assert (= (and d!1777856 (not c!988284)) b!5628782))

(assert (= (and b!5628782 c!988285) b!5628786))

(assert (= (and b!5628782 (not c!988285)) b!5628783))

(assert (= (and d!1777856 res!2383904) b!5628785))

(assert (= (and b!5628785 res!2383902) b!5628787))

(assert (= (and b!5628787 res!2383903) b!5628784))

(assert (= (and d!1777856 (not res!2383901)) b!5628781))

(declare-fun m!6600344 () Bool)

(assert (=> b!5628781 m!6600344))

(assert (=> d!1777856 m!6600344))

(declare-fun m!6600346 () Bool)

(assert (=> d!1777856 m!6600346))

(declare-fun m!6600348 () Bool)

(assert (=> d!1777856 m!6600348))

(declare-fun m!6600350 () Bool)

(assert (=> b!5628787 m!6600350))

(declare-fun m!6600352 () Bool)

(assert (=> b!5628787 m!6600352))

(declare-fun m!6600354 () Bool)

(assert (=> b!5628783 m!6600354))

(assert (=> b!5628783 m!6600354))

(declare-fun m!6600356 () Bool)

(assert (=> b!5628783 m!6600356))

(declare-fun m!6600358 () Bool)

(assert (=> b!5628783 m!6600358))

(assert (=> b!5628783 m!6600354))

(declare-fun m!6600360 () Bool)

(assert (=> b!5628783 m!6600360))

(declare-fun m!6600362 () Bool)

(assert (=> b!5628788 m!6600362))

(assert (=> b!5628785 m!6600350))

(declare-fun m!6600364 () Bool)

(assert (=> b!5628785 m!6600364))

(assert (=> b!5628784 m!6600350))

(declare-fun m!6600366 () Bool)

(assert (=> b!5628784 m!6600366))

(assert (=> b!5628348 d!1777856))

(declare-fun d!1777868 () Bool)

(declare-fun choose!42663 (Int) Bool)

(assert (=> d!1777868 (= (Exists!2721 lambda!302398) (choose!42663 lambda!302398))))

(declare-fun bs!1302572 () Bool)

(assert (= bs!1302572 d!1777868))

(declare-fun m!6600368 () Bool)

(assert (=> bs!1302572 m!6600368))

(assert (=> b!5628348 d!1777868))

(declare-fun d!1777870 () Bool)

(assert (=> d!1777870 (= (Exists!2721 lambda!302399) (choose!42663 lambda!302399))))

(declare-fun bs!1302573 () Bool)

(assert (= bs!1302573 d!1777870))

(declare-fun m!6600370 () Bool)

(assert (=> bs!1302573 m!6600370))

(assert (=> b!5628348 d!1777870))

(declare-fun bs!1302576 () Bool)

(declare-fun d!1777872 () Bool)

(assert (= bs!1302576 (and d!1777872 b!5628348)))

(declare-fun lambda!302443 () Int)

(assert (=> bs!1302576 (= lambda!302443 lambda!302398)))

(assert (=> bs!1302576 (not (= lambda!302443 lambda!302399))))

(declare-fun bs!1302577 () Bool)

(assert (= bs!1302577 (and d!1777872 b!5628564)))

(assert (=> bs!1302577 (not (= lambda!302443 lambda!302419))))

(declare-fun bs!1302578 () Bool)

(assert (= bs!1302578 (and d!1777872 b!5628570)))

(assert (=> bs!1302578 (not (= lambda!302443 lambda!302421))))

(assert (=> d!1777872 true))

(assert (=> d!1777872 true))

(assert (=> d!1777872 true))

(assert (=> d!1777872 (= (isDefined!12333 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326)) (Exists!2721 lambda!302443))))

(declare-fun lt!2262155 () Unit!156016)

(declare-fun choose!42664 (Regex!15621 Regex!15621 List!63162) Unit!156016)

(assert (=> d!1777872 (= lt!2262155 (choose!42664 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326))))

(assert (=> d!1777872 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1777872 (= (lemmaFindConcatSeparationEquivalentToExists!1808 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326) lt!2262155)))

(declare-fun bs!1302581 () Bool)

(assert (= bs!1302581 d!1777872))

(assert (=> bs!1302581 m!6600074))

(declare-fun m!6600414 () Bool)

(assert (=> bs!1302581 m!6600414))

(assert (=> bs!1302581 m!6600348))

(declare-fun m!6600416 () Bool)

(assert (=> bs!1302581 m!6600416))

(assert (=> bs!1302581 m!6600074))

(assert (=> bs!1302581 m!6600076))

(assert (=> b!5628348 d!1777872))

(declare-fun bs!1302592 () Bool)

(declare-fun d!1777892 () Bool)

(assert (= bs!1302592 (and d!1777892 b!5628570)))

(declare-fun lambda!302449 () Int)

(assert (=> bs!1302592 (not (= lambda!302449 lambda!302421))))

(declare-fun bs!1302593 () Bool)

(assert (= bs!1302593 (and d!1777892 b!5628564)))

(assert (=> bs!1302593 (not (= lambda!302449 lambda!302419))))

(declare-fun bs!1302594 () Bool)

(assert (= bs!1302594 (and d!1777892 b!5628348)))

(assert (=> bs!1302594 (not (= lambda!302449 lambda!302399))))

(declare-fun bs!1302595 () Bool)

(assert (= bs!1302595 (and d!1777892 d!1777872)))

(assert (=> bs!1302595 (= lambda!302449 lambda!302443)))

(assert (=> bs!1302594 (= lambda!302449 lambda!302398)))

(assert (=> d!1777892 true))

(assert (=> d!1777892 true))

(assert (=> d!1777892 true))

(declare-fun lambda!302450 () Int)

(assert (=> bs!1302592 (= lambda!302450 lambda!302421)))

(assert (=> bs!1302593 (not (= lambda!302450 lambda!302419))))

(assert (=> bs!1302594 (= lambda!302450 lambda!302399)))

(assert (=> bs!1302595 (not (= lambda!302450 lambda!302443))))

(declare-fun bs!1302596 () Bool)

(assert (= bs!1302596 d!1777892))

(assert (=> bs!1302596 (not (= lambda!302450 lambda!302449))))

(assert (=> bs!1302594 (not (= lambda!302450 lambda!302398))))

(assert (=> d!1777892 true))

(assert (=> d!1777892 true))

(assert (=> d!1777892 true))

(assert (=> d!1777892 (= (Exists!2721 lambda!302449) (Exists!2721 lambda!302450))))

(declare-fun lt!2262164 () Unit!156016)

(declare-fun choose!42665 (Regex!15621 Regex!15621 List!63162) Unit!156016)

(assert (=> d!1777892 (= lt!2262164 (choose!42665 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326))))

(assert (=> d!1777892 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1777892 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1350 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326) lt!2262164)))

(declare-fun m!6600452 () Bool)

(assert (=> bs!1302596 m!6600452))

(declare-fun m!6600454 () Bool)

(assert (=> bs!1302596 m!6600454))

(declare-fun m!6600456 () Bool)

(assert (=> bs!1302596 m!6600456))

(assert (=> bs!1302596 m!6600348))

(assert (=> b!5628348 d!1777892))

(declare-fun d!1777912 () Bool)

(declare-fun isEmpty!34878 (Option!15630) Bool)

(assert (=> d!1777912 (= (isDefined!12333 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326)) (not (isEmpty!34878 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326))))))

(declare-fun bs!1302597 () Bool)

(assert (= bs!1302597 d!1777912))

(assert (=> bs!1302597 m!6600074))

(declare-fun m!6600458 () Bool)

(assert (=> bs!1302597 m!6600458))

(assert (=> b!5628348 d!1777912))

(declare-fun d!1777914 () Bool)

(declare-fun c!988305 () Bool)

(assert (=> d!1777914 (= c!988305 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469441 () Bool)

(assert (=> d!1777914 (= (matchZipper!1759 lt!2262090 (t!376454 s!2326)) e!3469441)))

(declare-fun b!5628917 () Bool)

(assert (=> b!5628917 (= e!3469441 (nullableZipper!1603 lt!2262090))))

(declare-fun b!5628918 () Bool)

(assert (=> b!5628918 (= e!3469441 (matchZipper!1759 (derivationStepZipper!1708 lt!2262090 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777914 c!988305) b!5628917))

(assert (= (and d!1777914 (not c!988305)) b!5628918))

(assert (=> d!1777914 m!6600284))

(declare-fun m!6600460 () Bool)

(assert (=> b!5628917 m!6600460))

(assert (=> b!5628918 m!6600288))

(assert (=> b!5628918 m!6600288))

(declare-fun m!6600462 () Bool)

(assert (=> b!5628918 m!6600462))

(assert (=> b!5628918 m!6600292))

(assert (=> b!5628918 m!6600462))

(assert (=> b!5628918 m!6600292))

(declare-fun m!6600464 () Bool)

(assert (=> b!5628918 m!6600464))

(assert (=> b!5628368 d!1777914))

(declare-fun d!1777916 () Bool)

(declare-fun e!3469444 () Bool)

(assert (=> d!1777916 e!3469444))

(declare-fun res!2383943 () Bool)

(assert (=> d!1777916 (=> (not res!2383943) (not e!3469444))))

(declare-fun lt!2262167 () List!63164)

(declare-fun noDuplicate!1583 (List!63164) Bool)

(assert (=> d!1777916 (= res!2383943 (noDuplicate!1583 lt!2262167))))

(declare-fun choose!42666 ((InoxSet Context!10010)) List!63164)

(assert (=> d!1777916 (= lt!2262167 (choose!42666 z!1189))))

(assert (=> d!1777916 (= (toList!9405 z!1189) lt!2262167)))

(declare-fun b!5628921 () Bool)

(declare-fun content!11394 (List!63164) (InoxSet Context!10010))

(assert (=> b!5628921 (= e!3469444 (= (content!11394 lt!2262167) z!1189))))

(assert (= (and d!1777916 res!2383943) b!5628921))

(declare-fun m!6600466 () Bool)

(assert (=> d!1777916 m!6600466))

(declare-fun m!6600468 () Bool)

(assert (=> d!1777916 m!6600468))

(declare-fun m!6600470 () Bool)

(assert (=> b!5628921 m!6600470))

(assert (=> b!5628367 d!1777916))

(declare-fun b!5628944 () Bool)

(declare-fun e!3469459 () (InoxSet Context!10010))

(declare-fun e!3469461 () (InoxSet Context!10010))

(assert (=> b!5628944 (= e!3469459 e!3469461)))

(declare-fun c!988316 () Bool)

(assert (=> b!5628944 (= c!988316 ((_ is Union!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5628945 () Bool)

(declare-fun e!3469457 () (InoxSet Context!10010))

(declare-fun e!3469462 () (InoxSet Context!10010))

(assert (=> b!5628945 (= e!3469457 e!3469462)))

(declare-fun c!988320 () Bool)

(assert (=> b!5628945 (= c!988320 ((_ is Concat!24466) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5628946 () Bool)

(declare-fun call!424143 () (InoxSet Context!10010))

(declare-fun call!424142 () (InoxSet Context!10010))

(assert (=> b!5628946 (= e!3469461 ((_ map or) call!424143 call!424142))))

(declare-fun bm!424135 () Bool)

(declare-fun call!424145 () (InoxSet Context!10010))

(declare-fun call!424144 () (InoxSet Context!10010))

(assert (=> bm!424135 (= call!424145 call!424144)))

(declare-fun d!1777918 () Bool)

(declare-fun c!988318 () Bool)

(assert (=> d!1777918 (= c!988318 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))) (= (c!988159 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326))))))

(assert (=> d!1777918 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 (h!69488 zl!343))) lt!2262088 (h!69486 s!2326)) e!3469459)))

(declare-fun b!5628947 () Bool)

(declare-fun c!988319 () Bool)

(declare-fun e!3469458 () Bool)

(assert (=> b!5628947 (= c!988319 e!3469458)))

(declare-fun res!2383946 () Bool)

(assert (=> b!5628947 (=> (not res!2383946) (not e!3469458))))

(assert (=> b!5628947 (= res!2383946 ((_ is Concat!24466) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> b!5628947 (= e!3469461 e!3469457)))

(declare-fun call!424140 () List!63163)

(declare-fun bm!424136 () Bool)

(assert (=> bm!424136 (= call!424143 (derivationStepZipperDown!963 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))) (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140)) (h!69486 s!2326)))))

(declare-fun bm!424137 () Bool)

(assert (=> bm!424137 (= call!424144 call!424143)))

(declare-fun call!424141 () List!63163)

(declare-fun bm!424138 () Bool)

(assert (=> bm!424138 (= call!424142 (derivationStepZipperDown!963 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))) (ite c!988316 lt!2262088 (Context!10011 call!424141)) (h!69486 s!2326)))))

(declare-fun bm!424139 () Bool)

(declare-fun $colon$colon!1671 (List!63163 Regex!15621) List!63163)

(assert (=> bm!424139 (= call!424141 ($colon$colon!1671 (exprs!5505 lt!2262088) (ite (or c!988319 c!988320) (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69487 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5628948 () Bool)

(assert (=> b!5628948 (= e!3469457 ((_ map or) call!424142 call!424144))))

(declare-fun b!5628949 () Bool)

(assert (=> b!5628949 (= e!3469459 (store ((as const (Array Context!10010 Bool)) false) lt!2262088 true))))

(declare-fun b!5628950 () Bool)

(assert (=> b!5628950 (= e!3469462 call!424145)))

(declare-fun b!5628951 () Bool)

(assert (=> b!5628951 (= e!3469458 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun bm!424140 () Bool)

(assert (=> bm!424140 (= call!424140 call!424141)))

(declare-fun b!5628952 () Bool)

(declare-fun c!988317 () Bool)

(assert (=> b!5628952 (= c!988317 ((_ is Star!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun e!3469460 () (InoxSet Context!10010))

(assert (=> b!5628952 (= e!3469462 e!3469460)))

(declare-fun b!5628953 () Bool)

(assert (=> b!5628953 (= e!3469460 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5628954 () Bool)

(assert (=> b!5628954 (= e!3469460 call!424145)))

(assert (= (and d!1777918 c!988318) b!5628949))

(assert (= (and d!1777918 (not c!988318)) b!5628944))

(assert (= (and b!5628944 c!988316) b!5628946))

(assert (= (and b!5628944 (not c!988316)) b!5628947))

(assert (= (and b!5628947 res!2383946) b!5628951))

(assert (= (and b!5628947 c!988319) b!5628948))

(assert (= (and b!5628947 (not c!988319)) b!5628945))

(assert (= (and b!5628945 c!988320) b!5628950))

(assert (= (and b!5628945 (not c!988320)) b!5628952))

(assert (= (and b!5628952 c!988317) b!5628954))

(assert (= (and b!5628952 (not c!988317)) b!5628953))

(assert (= (or b!5628950 b!5628954) bm!424140))

(assert (= (or b!5628950 b!5628954) bm!424135))

(assert (= (or b!5628948 bm!424140) bm!424139))

(assert (= (or b!5628948 bm!424135) bm!424137))

(assert (= (or b!5628946 b!5628948) bm!424138))

(assert (= (or b!5628946 bm!424137) bm!424136))

(declare-fun m!6600472 () Bool)

(assert (=> bm!424139 m!6600472))

(declare-fun m!6600474 () Bool)

(assert (=> bm!424138 m!6600474))

(declare-fun m!6600476 () Bool)

(assert (=> b!5628951 m!6600476))

(declare-fun m!6600478 () Bool)

(assert (=> bm!424136 m!6600478))

(declare-fun m!6600480 () Bool)

(assert (=> b!5628949 m!6600480))

(assert (=> b!5628366 d!1777918))

(declare-fun d!1777920 () Bool)

(declare-fun nullableFct!1749 (Regex!15621) Bool)

(assert (=> d!1777920 (= (nullable!5653 (h!69487 (exprs!5505 (h!69488 zl!343)))) (nullableFct!1749 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun bs!1302598 () Bool)

(assert (= bs!1302598 d!1777920))

(declare-fun m!6600482 () Bool)

(assert (=> bs!1302598 m!6600482))

(assert (=> b!5628366 d!1777920))

(declare-fun b!5628965 () Bool)

(declare-fun e!3469470 () (InoxSet Context!10010))

(assert (=> b!5628965 (= e!3469470 ((as const (Array Context!10010 Bool)) false))))

(declare-fun e!3469471 () (InoxSet Context!10010))

(declare-fun call!424148 () (InoxSet Context!10010))

(declare-fun b!5628966 () Bool)

(assert (=> b!5628966 (= e!3469471 ((_ map or) call!424148 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326))))))

(declare-fun b!5628967 () Bool)

(assert (=> b!5628967 (= e!3469471 e!3469470)))

(declare-fun c!988326 () Bool)

(assert (=> b!5628967 (= c!988326 ((_ is Cons!63039) (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))

(declare-fun b!5628968 () Bool)

(assert (=> b!5628968 (= e!3469470 call!424148)))

(declare-fun b!5628969 () Bool)

(declare-fun e!3469469 () Bool)

(assert (=> b!5628969 (= e!3469469 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun d!1777922 () Bool)

(declare-fun c!988325 () Bool)

(assert (=> d!1777922 (= c!988325 e!3469469)))

(declare-fun res!2383949 () Bool)

(assert (=> d!1777922 (=> (not res!2383949) (not e!3469469))))

(assert (=> d!1777922 (= res!2383949 ((_ is Cons!63039) (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))

(assert (=> d!1777922 (= (derivationStepZipperUp!889 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))) (h!69486 s!2326)) e!3469471)))

(declare-fun bm!424143 () Bool)

(assert (=> bm!424143 (= call!424148 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326)))))

(assert (= (and d!1777922 res!2383949) b!5628969))

(assert (= (and d!1777922 c!988325) b!5628966))

(assert (= (and d!1777922 (not c!988325)) b!5628967))

(assert (= (and b!5628967 c!988326) b!5628968))

(assert (= (and b!5628967 (not c!988326)) b!5628965))

(assert (= (or b!5628966 b!5628968) bm!424143))

(declare-fun m!6600484 () Bool)

(assert (=> b!5628966 m!6600484))

(declare-fun m!6600486 () Bool)

(assert (=> b!5628969 m!6600486))

(declare-fun m!6600488 () Bool)

(assert (=> bm!424143 m!6600488))

(assert (=> b!5628366 d!1777922))

(declare-fun d!1777924 () Bool)

(declare-fun choose!42667 ((InoxSet Context!10010) Int) (InoxSet Context!10010))

(assert (=> d!1777924 (= (flatMap!1234 z!1189 lambda!302400) (choose!42667 z!1189 lambda!302400))))

(declare-fun bs!1302599 () Bool)

(assert (= bs!1302599 d!1777924))

(declare-fun m!6600490 () Bool)

(assert (=> bs!1302599 m!6600490))

(assert (=> b!5628366 d!1777924))

(declare-fun b!5628970 () Bool)

(declare-fun e!3469473 () (InoxSet Context!10010))

(assert (=> b!5628970 (= e!3469473 ((as const (Array Context!10010 Bool)) false))))

(declare-fun e!3469474 () (InoxSet Context!10010))

(declare-fun call!424149 () (InoxSet Context!10010))

(declare-fun b!5628971 () Bool)

(assert (=> b!5628971 (= e!3469474 ((_ map or) call!424149 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326))))))

(declare-fun b!5628972 () Bool)

(assert (=> b!5628972 (= e!3469474 e!3469473)))

(declare-fun c!988328 () Bool)

(assert (=> b!5628972 (= c!988328 ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343))))))

(declare-fun b!5628973 () Bool)

(assert (=> b!5628973 (= e!3469473 call!424149)))

(declare-fun b!5628974 () Bool)

(declare-fun e!3469472 () Bool)

(assert (=> b!5628974 (= e!3469472 (nullable!5653 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun d!1777926 () Bool)

(declare-fun c!988327 () Bool)

(assert (=> d!1777926 (= c!988327 e!3469472)))

(declare-fun res!2383950 () Bool)

(assert (=> d!1777926 (=> (not res!2383950) (not e!3469472))))

(assert (=> d!1777926 (= res!2383950 ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343))))))

(assert (=> d!1777926 (= (derivationStepZipperUp!889 (h!69488 zl!343) (h!69486 s!2326)) e!3469474)))

(declare-fun bm!424144 () Bool)

(assert (=> bm!424144 (= call!424149 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (h!69488 zl!343))) (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326)))))

(assert (= (and d!1777926 res!2383950) b!5628974))

(assert (= (and d!1777926 c!988327) b!5628971))

(assert (= (and d!1777926 (not c!988327)) b!5628972))

(assert (= (and b!5628972 c!988328) b!5628973))

(assert (= (and b!5628972 (not c!988328)) b!5628970))

(assert (= (or b!5628971 b!5628973) bm!424144))

(declare-fun m!6600492 () Bool)

(assert (=> b!5628971 m!6600492))

(assert (=> b!5628974 m!6600028))

(declare-fun m!6600494 () Bool)

(assert (=> bm!424144 m!6600494))

(assert (=> b!5628366 d!1777926))

(declare-fun b!5628975 () Bool)

(declare-fun e!3469476 () (InoxSet Context!10010))

(assert (=> b!5628975 (= e!3469476 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5628976 () Bool)

(declare-fun e!3469477 () (InoxSet Context!10010))

(declare-fun call!424150 () (InoxSet Context!10010))

(assert (=> b!5628976 (= e!3469477 ((_ map or) call!424150 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (h!69486 s!2326))))))

(declare-fun b!5628977 () Bool)

(assert (=> b!5628977 (= e!3469477 e!3469476)))

(declare-fun c!988330 () Bool)

(assert (=> b!5628977 (= c!988330 ((_ is Cons!63039) (exprs!5505 lt!2262088)))))

(declare-fun b!5628978 () Bool)

(assert (=> b!5628978 (= e!3469476 call!424150)))

(declare-fun b!5628979 () Bool)

(declare-fun e!3469475 () Bool)

(assert (=> b!5628979 (= e!3469475 (nullable!5653 (h!69487 (exprs!5505 lt!2262088))))))

(declare-fun d!1777928 () Bool)

(declare-fun c!988329 () Bool)

(assert (=> d!1777928 (= c!988329 e!3469475)))

(declare-fun res!2383951 () Bool)

(assert (=> d!1777928 (=> (not res!2383951) (not e!3469475))))

(assert (=> d!1777928 (= res!2383951 ((_ is Cons!63039) (exprs!5505 lt!2262088)))))

(assert (=> d!1777928 (= (derivationStepZipperUp!889 lt!2262088 (h!69486 s!2326)) e!3469477)))

(declare-fun bm!424145 () Bool)

(assert (=> bm!424145 (= call!424150 (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262088)) (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (h!69486 s!2326)))))

(assert (= (and d!1777928 res!2383951) b!5628979))

(assert (= (and d!1777928 c!988329) b!5628976))

(assert (= (and d!1777928 (not c!988329)) b!5628977))

(assert (= (and b!5628977 c!988330) b!5628978))

(assert (= (and b!5628977 (not c!988330)) b!5628975))

(assert (= (or b!5628976 b!5628978) bm!424145))

(declare-fun m!6600496 () Bool)

(assert (=> b!5628976 m!6600496))

(declare-fun m!6600498 () Bool)

(assert (=> b!5628979 m!6600498))

(declare-fun m!6600500 () Bool)

(assert (=> bm!424145 m!6600500))

(assert (=> b!5628366 d!1777928))

(declare-fun d!1777930 () Bool)

(declare-fun dynLambda!24650 (Int Context!10010) (InoxSet Context!10010))

(assert (=> d!1777930 (= (flatMap!1234 z!1189 lambda!302400) (dynLambda!24650 lambda!302400 (h!69488 zl!343)))))

(declare-fun lt!2262170 () Unit!156016)

(declare-fun choose!42668 ((InoxSet Context!10010) Context!10010 Int) Unit!156016)

(assert (=> d!1777930 (= lt!2262170 (choose!42668 z!1189 (h!69488 zl!343) lambda!302400))))

(assert (=> d!1777930 (= z!1189 (store ((as const (Array Context!10010 Bool)) false) (h!69488 zl!343) true))))

(assert (=> d!1777930 (= (lemmaFlatMapOnSingletonSet!766 z!1189 (h!69488 zl!343) lambda!302400) lt!2262170)))

(declare-fun b_lambda!212871 () Bool)

(assert (=> (not b_lambda!212871) (not d!1777930)))

(declare-fun bs!1302600 () Bool)

(assert (= bs!1302600 d!1777930))

(assert (=> bs!1302600 m!6600034))

(declare-fun m!6600502 () Bool)

(assert (=> bs!1302600 m!6600502))

(declare-fun m!6600504 () Bool)

(assert (=> bs!1302600 m!6600504))

(declare-fun m!6600506 () Bool)

(assert (=> bs!1302600 m!6600506))

(assert (=> b!5628366 d!1777930))

(declare-fun d!1777932 () Bool)

(assert (=> d!1777932 (= (nullable!5653 (regOne!31754 (regOne!31754 r!7292))) (nullableFct!1749 (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun bs!1302601 () Bool)

(assert (= bs!1302601 d!1777932))

(declare-fun m!6600508 () Bool)

(assert (=> bs!1302601 m!6600508))

(assert (=> b!5628350 d!1777932))

(declare-fun bs!1302602 () Bool)

(declare-fun d!1777934 () Bool)

(assert (= bs!1302602 (and d!1777934 d!1777842)))

(declare-fun lambda!302453 () Int)

(assert (=> bs!1302602 (= lambda!302453 lambda!302435)))

(declare-fun e!3469490 () Bool)

(assert (=> d!1777934 e!3469490))

(declare-fun res!2383956 () Bool)

(assert (=> d!1777934 (=> (not res!2383956) (not e!3469490))))

(declare-fun lt!2262173 () Regex!15621)

(assert (=> d!1777934 (= res!2383956 (validRegex!7357 lt!2262173))))

(declare-fun e!3469492 () Regex!15621)

(assert (=> d!1777934 (= lt!2262173 e!3469492)))

(declare-fun c!988341 () Bool)

(declare-fun e!3469493 () Bool)

(assert (=> d!1777934 (= c!988341 e!3469493)))

(declare-fun res!2383957 () Bool)

(assert (=> d!1777934 (=> (not res!2383957) (not e!3469493))))

(assert (=> d!1777934 (= res!2383957 ((_ is Cons!63039) (unfocusZipperList!1049 zl!343)))))

(assert (=> d!1777934 (forall!14775 (unfocusZipperList!1049 zl!343) lambda!302453)))

(assert (=> d!1777934 (= (generalisedUnion!1484 (unfocusZipperList!1049 zl!343)) lt!2262173)))

(declare-fun b!5629000 () Bool)

(declare-fun e!3469495 () Bool)

(declare-fun head!11987 (List!63163) Regex!15621)

(assert (=> b!5629000 (= e!3469495 (= lt!2262173 (head!11987 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5629001 () Bool)

(assert (=> b!5629001 (= e!3469493 (isEmpty!34874 (t!376455 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5629002 () Bool)

(declare-fun e!3469494 () Regex!15621)

(assert (=> b!5629002 (= e!3469494 (Union!15621 (h!69487 (unfocusZipperList!1049 zl!343)) (generalisedUnion!1484 (t!376455 (unfocusZipperList!1049 zl!343)))))))

(declare-fun b!5629003 () Bool)

(declare-fun e!3469491 () Bool)

(assert (=> b!5629003 (= e!3469490 e!3469491)))

(declare-fun c!988339 () Bool)

(assert (=> b!5629003 (= c!988339 (isEmpty!34874 (unfocusZipperList!1049 zl!343)))))

(declare-fun b!5629004 () Bool)

(assert (=> b!5629004 (= e!3469491 e!3469495)))

(declare-fun c!988342 () Bool)

(declare-fun tail!11082 (List!63163) List!63163)

(assert (=> b!5629004 (= c!988342 (isEmpty!34874 (tail!11082 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5629005 () Bool)

(assert (=> b!5629005 (= e!3469492 e!3469494)))

(declare-fun c!988340 () Bool)

(assert (=> b!5629005 (= c!988340 ((_ is Cons!63039) (unfocusZipperList!1049 zl!343)))))

(declare-fun b!5629006 () Bool)

(assert (=> b!5629006 (= e!3469492 (h!69487 (unfocusZipperList!1049 zl!343)))))

(declare-fun b!5629007 () Bool)

(assert (=> b!5629007 (= e!3469494 EmptyLang!15621)))

(declare-fun b!5629008 () Bool)

(declare-fun isEmptyLang!1172 (Regex!15621) Bool)

(assert (=> b!5629008 (= e!3469491 (isEmptyLang!1172 lt!2262173))))

(declare-fun b!5629009 () Bool)

(declare-fun isUnion!602 (Regex!15621) Bool)

(assert (=> b!5629009 (= e!3469495 (isUnion!602 lt!2262173))))

(assert (= (and d!1777934 res!2383957) b!5629001))

(assert (= (and d!1777934 c!988341) b!5629006))

(assert (= (and d!1777934 (not c!988341)) b!5629005))

(assert (= (and b!5629005 c!988340) b!5629002))

(assert (= (and b!5629005 (not c!988340)) b!5629007))

(assert (= (and d!1777934 res!2383956) b!5629003))

(assert (= (and b!5629003 c!988339) b!5629008))

(assert (= (and b!5629003 (not c!988339)) b!5629004))

(assert (= (and b!5629004 c!988342) b!5629000))

(assert (= (and b!5629004 (not c!988342)) b!5629009))

(assert (=> b!5629003 m!6600038))

(declare-fun m!6600510 () Bool)

(assert (=> b!5629003 m!6600510))

(declare-fun m!6600512 () Bool)

(assert (=> b!5629002 m!6600512))

(declare-fun m!6600514 () Bool)

(assert (=> b!5629008 m!6600514))

(assert (=> b!5629004 m!6600038))

(declare-fun m!6600516 () Bool)

(assert (=> b!5629004 m!6600516))

(assert (=> b!5629004 m!6600516))

(declare-fun m!6600518 () Bool)

(assert (=> b!5629004 m!6600518))

(declare-fun m!6600520 () Bool)

(assert (=> b!5629009 m!6600520))

(assert (=> b!5629000 m!6600038))

(declare-fun m!6600522 () Bool)

(assert (=> b!5629000 m!6600522))

(declare-fun m!6600524 () Bool)

(assert (=> b!5629001 m!6600524))

(declare-fun m!6600526 () Bool)

(assert (=> d!1777934 m!6600526))

(assert (=> d!1777934 m!6600038))

(declare-fun m!6600528 () Bool)

(assert (=> d!1777934 m!6600528))

(assert (=> b!5628349 d!1777934))

(declare-fun bs!1302603 () Bool)

(declare-fun d!1777936 () Bool)

(assert (= bs!1302603 (and d!1777936 d!1777842)))

(declare-fun lambda!302456 () Int)

(assert (=> bs!1302603 (= lambda!302456 lambda!302435)))

(declare-fun bs!1302604 () Bool)

(assert (= bs!1302604 (and d!1777936 d!1777934)))

(assert (=> bs!1302604 (= lambda!302456 lambda!302453)))

(declare-fun lt!2262176 () List!63163)

(assert (=> d!1777936 (forall!14775 lt!2262176 lambda!302456)))

(declare-fun e!3469498 () List!63163)

(assert (=> d!1777936 (= lt!2262176 e!3469498)))

(declare-fun c!988345 () Bool)

(assert (=> d!1777936 (= c!988345 ((_ is Cons!63040) zl!343))))

(assert (=> d!1777936 (= (unfocusZipperList!1049 zl!343) lt!2262176)))

(declare-fun b!5629014 () Bool)

(assert (=> b!5629014 (= e!3469498 (Cons!63039 (generalisedConcat!1236 (exprs!5505 (h!69488 zl!343))) (unfocusZipperList!1049 (t!376456 zl!343))))))

(declare-fun b!5629015 () Bool)

(assert (=> b!5629015 (= e!3469498 Nil!63039)))

(assert (= (and d!1777936 c!988345) b!5629014))

(assert (= (and d!1777936 (not c!988345)) b!5629015))

(declare-fun m!6600530 () Bool)

(assert (=> d!1777936 m!6600530))

(assert (=> b!5629014 m!6600002))

(declare-fun m!6600532 () Bool)

(assert (=> b!5629014 m!6600532))

(assert (=> b!5628349 d!1777936))

(declare-fun bs!1302605 () Bool)

(declare-fun d!1777938 () Bool)

(assert (= bs!1302605 (and d!1777938 d!1777842)))

(declare-fun lambda!302457 () Int)

(assert (=> bs!1302605 (= lambda!302457 lambda!302435)))

(declare-fun bs!1302606 () Bool)

(assert (= bs!1302606 (and d!1777938 d!1777934)))

(assert (=> bs!1302606 (= lambda!302457 lambda!302453)))

(declare-fun bs!1302607 () Bool)

(assert (= bs!1302607 (and d!1777938 d!1777936)))

(assert (=> bs!1302607 (= lambda!302457 lambda!302456)))

(assert (=> d!1777938 (= (inv!82299 (h!69488 zl!343)) (forall!14775 (exprs!5505 (h!69488 zl!343)) lambda!302457))))

(declare-fun bs!1302608 () Bool)

(assert (= bs!1302608 d!1777938))

(declare-fun m!6600534 () Bool)

(assert (=> bs!1302608 m!6600534))

(assert (=> b!5628369 d!1777938))

(assert (=> b!5628353 d!1777914))

(declare-fun b!5629016 () Bool)

(declare-fun e!3469501 () (InoxSet Context!10010))

(declare-fun e!3469503 () (InoxSet Context!10010))

(assert (=> b!5629016 (= e!3469501 e!3469503)))

(declare-fun c!988346 () Bool)

(assert (=> b!5629016 (= c!988346 ((_ is Union!15621) (regTwo!31754 (regOne!31754 r!7292))))))

(declare-fun b!5629017 () Bool)

(declare-fun e!3469499 () (InoxSet Context!10010))

(declare-fun e!3469504 () (InoxSet Context!10010))

(assert (=> b!5629017 (= e!3469499 e!3469504)))

(declare-fun c!988350 () Bool)

(assert (=> b!5629017 (= c!988350 ((_ is Concat!24466) (regTwo!31754 (regOne!31754 r!7292))))))

(declare-fun b!5629018 () Bool)

(declare-fun call!424154 () (InoxSet Context!10010))

(declare-fun call!424153 () (InoxSet Context!10010))

(assert (=> b!5629018 (= e!3469503 ((_ map or) call!424154 call!424153))))

(declare-fun bm!424146 () Bool)

(declare-fun call!424156 () (InoxSet Context!10010))

(declare-fun call!424155 () (InoxSet Context!10010))

(assert (=> bm!424146 (= call!424156 call!424155)))

(declare-fun d!1777940 () Bool)

(declare-fun c!988348 () Bool)

(assert (=> d!1777940 (= c!988348 (and ((_ is ElementMatch!15621) (regTwo!31754 (regOne!31754 r!7292))) (= (c!988159 (regTwo!31754 (regOne!31754 r!7292))) (h!69486 s!2326))))))

(assert (=> d!1777940 (= (derivationStepZipperDown!963 (regTwo!31754 (regOne!31754 r!7292)) lt!2262088 (h!69486 s!2326)) e!3469501)))

(declare-fun b!5629019 () Bool)

(declare-fun c!988349 () Bool)

(declare-fun e!3469500 () Bool)

(assert (=> b!5629019 (= c!988349 e!3469500)))

(declare-fun res!2383958 () Bool)

(assert (=> b!5629019 (=> (not res!2383958) (not e!3469500))))

(assert (=> b!5629019 (= res!2383958 ((_ is Concat!24466) (regTwo!31754 (regOne!31754 r!7292))))))

(assert (=> b!5629019 (= e!3469503 e!3469499)))

(declare-fun bm!424147 () Bool)

(declare-fun call!424151 () List!63163)

(assert (=> bm!424147 (= call!424154 (derivationStepZipperDown!963 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))) (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151)) (h!69486 s!2326)))))

(declare-fun bm!424148 () Bool)

(assert (=> bm!424148 (= call!424155 call!424154)))

(declare-fun bm!424149 () Bool)

(declare-fun call!424152 () List!63163)

(assert (=> bm!424149 (= call!424153 (derivationStepZipperDown!963 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))) (ite c!988346 lt!2262088 (Context!10011 call!424152)) (h!69486 s!2326)))))

(declare-fun bm!424150 () Bool)

(assert (=> bm!424150 (= call!424152 ($colon$colon!1671 (exprs!5505 lt!2262088) (ite (or c!988349 c!988350) (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (regTwo!31754 (regOne!31754 r!7292)))))))

(declare-fun b!5629020 () Bool)

(assert (=> b!5629020 (= e!3469499 ((_ map or) call!424153 call!424155))))

(declare-fun b!5629021 () Bool)

(assert (=> b!5629021 (= e!3469501 (store ((as const (Array Context!10010 Bool)) false) lt!2262088 true))))

(declare-fun b!5629022 () Bool)

(assert (=> b!5629022 (= e!3469504 call!424156)))

(declare-fun b!5629023 () Bool)

(assert (=> b!5629023 (= e!3469500 (nullable!5653 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))))

(declare-fun bm!424151 () Bool)

(assert (=> bm!424151 (= call!424151 call!424152)))

(declare-fun b!5629024 () Bool)

(declare-fun c!988347 () Bool)

(assert (=> b!5629024 (= c!988347 ((_ is Star!15621) (regTwo!31754 (regOne!31754 r!7292))))))

(declare-fun e!3469502 () (InoxSet Context!10010))

(assert (=> b!5629024 (= e!3469504 e!3469502)))

(declare-fun b!5629025 () Bool)

(assert (=> b!5629025 (= e!3469502 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629026 () Bool)

(assert (=> b!5629026 (= e!3469502 call!424156)))

(assert (= (and d!1777940 c!988348) b!5629021))

(assert (= (and d!1777940 (not c!988348)) b!5629016))

(assert (= (and b!5629016 c!988346) b!5629018))

(assert (= (and b!5629016 (not c!988346)) b!5629019))

(assert (= (and b!5629019 res!2383958) b!5629023))

(assert (= (and b!5629019 c!988349) b!5629020))

(assert (= (and b!5629019 (not c!988349)) b!5629017))

(assert (= (and b!5629017 c!988350) b!5629022))

(assert (= (and b!5629017 (not c!988350)) b!5629024))

(assert (= (and b!5629024 c!988347) b!5629026))

(assert (= (and b!5629024 (not c!988347)) b!5629025))

(assert (= (or b!5629022 b!5629026) bm!424151))

(assert (= (or b!5629022 b!5629026) bm!424146))

(assert (= (or b!5629020 bm!424151) bm!424150))

(assert (= (or b!5629020 bm!424146) bm!424148))

(assert (= (or b!5629018 b!5629020) bm!424149))

(assert (= (or b!5629018 bm!424148) bm!424147))

(declare-fun m!6600536 () Bool)

(assert (=> bm!424150 m!6600536))

(declare-fun m!6600538 () Bool)

(assert (=> bm!424149 m!6600538))

(declare-fun m!6600540 () Bool)

(assert (=> b!5629023 m!6600540))

(declare-fun m!6600542 () Bool)

(assert (=> bm!424147 m!6600542))

(assert (=> b!5629021 m!6600480))

(assert (=> b!5628352 d!1777940))

(declare-fun b!5629027 () Bool)

(declare-fun e!3469507 () (InoxSet Context!10010))

(declare-fun e!3469509 () (InoxSet Context!10010))

(assert (=> b!5629027 (= e!3469507 e!3469509)))

(declare-fun c!988351 () Bool)

(assert (=> b!5629027 (= c!988351 ((_ is Union!15621) (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun b!5629028 () Bool)

(declare-fun e!3469505 () (InoxSet Context!10010))

(declare-fun e!3469510 () (InoxSet Context!10010))

(assert (=> b!5629028 (= e!3469505 e!3469510)))

(declare-fun c!988355 () Bool)

(assert (=> b!5629028 (= c!988355 ((_ is Concat!24466) (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun b!5629029 () Bool)

(declare-fun call!424160 () (InoxSet Context!10010))

(declare-fun call!424159 () (InoxSet Context!10010))

(assert (=> b!5629029 (= e!3469509 ((_ map or) call!424160 call!424159))))

(declare-fun bm!424152 () Bool)

(declare-fun call!424162 () (InoxSet Context!10010))

(declare-fun call!424161 () (InoxSet Context!10010))

(assert (=> bm!424152 (= call!424162 call!424161)))

(declare-fun d!1777942 () Bool)

(declare-fun c!988353 () Bool)

(assert (=> d!1777942 (= c!988353 (and ((_ is ElementMatch!15621) (regOne!31754 (regOne!31754 r!7292))) (= (c!988159 (regOne!31754 (regOne!31754 r!7292))) (h!69486 s!2326))))))

(assert (=> d!1777942 (= (derivationStepZipperDown!963 (regOne!31754 (regOne!31754 r!7292)) lt!2262089 (h!69486 s!2326)) e!3469507)))

(declare-fun b!5629030 () Bool)

(declare-fun c!988354 () Bool)

(declare-fun e!3469506 () Bool)

(assert (=> b!5629030 (= c!988354 e!3469506)))

(declare-fun res!2383959 () Bool)

(assert (=> b!5629030 (=> (not res!2383959) (not e!3469506))))

(assert (=> b!5629030 (= res!2383959 ((_ is Concat!24466) (regOne!31754 (regOne!31754 r!7292))))))

(assert (=> b!5629030 (= e!3469509 e!3469505)))

(declare-fun bm!424153 () Bool)

(declare-fun call!424157 () List!63163)

(assert (=> bm!424153 (= call!424160 (derivationStepZipperDown!963 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))) (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157)) (h!69486 s!2326)))))

(declare-fun bm!424154 () Bool)

(assert (=> bm!424154 (= call!424161 call!424160)))

(declare-fun bm!424155 () Bool)

(declare-fun call!424158 () List!63163)

(assert (=> bm!424155 (= call!424159 (derivationStepZipperDown!963 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))) (ite c!988351 lt!2262089 (Context!10011 call!424158)) (h!69486 s!2326)))))

(declare-fun bm!424156 () Bool)

(assert (=> bm!424156 (= call!424158 ($colon$colon!1671 (exprs!5505 lt!2262089) (ite (or c!988354 c!988355) (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 r!7292)))))))

(declare-fun b!5629031 () Bool)

(assert (=> b!5629031 (= e!3469505 ((_ map or) call!424159 call!424161))))

(declare-fun b!5629032 () Bool)

(assert (=> b!5629032 (= e!3469507 (store ((as const (Array Context!10010 Bool)) false) lt!2262089 true))))

(declare-fun b!5629033 () Bool)

(assert (=> b!5629033 (= e!3469510 call!424162)))

(declare-fun b!5629034 () Bool)

(assert (=> b!5629034 (= e!3469506 (nullable!5653 (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))))

(declare-fun bm!424157 () Bool)

(assert (=> bm!424157 (= call!424157 call!424158)))

(declare-fun b!5629035 () Bool)

(declare-fun c!988352 () Bool)

(assert (=> b!5629035 (= c!988352 ((_ is Star!15621) (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun e!3469508 () (InoxSet Context!10010))

(assert (=> b!5629035 (= e!3469510 e!3469508)))

(declare-fun b!5629036 () Bool)

(assert (=> b!5629036 (= e!3469508 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629037 () Bool)

(assert (=> b!5629037 (= e!3469508 call!424162)))

(assert (= (and d!1777942 c!988353) b!5629032))

(assert (= (and d!1777942 (not c!988353)) b!5629027))

(assert (= (and b!5629027 c!988351) b!5629029))

(assert (= (and b!5629027 (not c!988351)) b!5629030))

(assert (= (and b!5629030 res!2383959) b!5629034))

(assert (= (and b!5629030 c!988354) b!5629031))

(assert (= (and b!5629030 (not c!988354)) b!5629028))

(assert (= (and b!5629028 c!988355) b!5629033))

(assert (= (and b!5629028 (not c!988355)) b!5629035))

(assert (= (and b!5629035 c!988352) b!5629037))

(assert (= (and b!5629035 (not c!988352)) b!5629036))

(assert (= (or b!5629033 b!5629037) bm!424157))

(assert (= (or b!5629033 b!5629037) bm!424152))

(assert (= (or b!5629031 bm!424157) bm!424156))

(assert (= (or b!5629031 bm!424152) bm!424154))

(assert (= (or b!5629029 b!5629031) bm!424155))

(assert (= (or b!5629029 bm!424154) bm!424153))

(declare-fun m!6600544 () Bool)

(assert (=> bm!424156 m!6600544))

(declare-fun m!6600546 () Bool)

(assert (=> bm!424155 m!6600546))

(declare-fun m!6600548 () Bool)

(assert (=> b!5629034 m!6600548))

(declare-fun m!6600550 () Bool)

(assert (=> bm!424153 m!6600550))

(assert (=> b!5629032 m!6600060))

(assert (=> b!5628352 d!1777942))

(declare-fun d!1777944 () Bool)

(declare-fun c!988356 () Bool)

(assert (=> d!1777944 (= c!988356 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469511 () Bool)

(assert (=> d!1777944 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (t!376454 s!2326)) e!3469511)))

(declare-fun b!5629038 () Bool)

(assert (=> b!5629038 (= e!3469511 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326))))))

(declare-fun b!5629039 () Bool)

(assert (=> b!5629039 (= e!3469511 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777944 c!988356) b!5629038))

(assert (= (and d!1777944 (not c!988356)) b!5629039))

(assert (=> d!1777944 m!6600284))

(assert (=> b!5629038 m!6600064))

(declare-fun m!6600552 () Bool)

(assert (=> b!5629038 m!6600552))

(assert (=> b!5629039 m!6600288))

(assert (=> b!5629039 m!6600064))

(assert (=> b!5629039 m!6600288))

(declare-fun m!6600554 () Bool)

(assert (=> b!5629039 m!6600554))

(assert (=> b!5629039 m!6600292))

(assert (=> b!5629039 m!6600554))

(assert (=> b!5629039 m!6600292))

(declare-fun m!6600556 () Bool)

(assert (=> b!5629039 m!6600556))

(assert (=> b!5628351 d!1777944))

(declare-fun bs!1302609 () Bool)

(declare-fun d!1777946 () Bool)

(assert (= bs!1302609 (and d!1777946 b!5628366)))

(declare-fun lambda!302460 () Int)

(assert (=> bs!1302609 (= lambda!302460 lambda!302400)))

(assert (=> d!1777946 true))

(assert (=> d!1777946 (= (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (flatMap!1234 lt!2262072 lambda!302460))))

(declare-fun bs!1302610 () Bool)

(assert (= bs!1302610 d!1777946))

(declare-fun m!6600558 () Bool)

(assert (=> bs!1302610 m!6600558))

(assert (=> b!5628351 d!1777946))

(declare-fun d!1777948 () Bool)

(assert (=> d!1777948 (= (isEmpty!34874 (t!376455 (exprs!5505 (h!69488 zl!343)))) ((_ is Nil!63039) (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> b!5628375 d!1777948))

(declare-fun e!3469512 () Bool)

(declare-fun d!1777950 () Bool)

(assert (=> d!1777950 (= (matchZipper!1759 ((_ map or) lt!2262073 lt!2262094) (t!376454 s!2326)) e!3469512)))

(declare-fun res!2383960 () Bool)

(assert (=> d!1777950 (=> res!2383960 e!3469512)))

(assert (=> d!1777950 (= res!2383960 (matchZipper!1759 lt!2262073 (t!376454 s!2326)))))

(declare-fun lt!2262177 () Unit!156016)

(assert (=> d!1777950 (= lt!2262177 (choose!42661 lt!2262073 lt!2262094 (t!376454 s!2326)))))

(assert (=> d!1777950 (= (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262073 lt!2262094 (t!376454 s!2326)) lt!2262177)))

(declare-fun b!5629042 () Bool)

(assert (=> b!5629042 (= e!3469512 (matchZipper!1759 lt!2262094 (t!376454 s!2326)))))

(assert (= (and d!1777950 (not res!2383960)) b!5629042))

(assert (=> d!1777950 m!6600070))

(assert (=> d!1777950 m!6600004))

(declare-fun m!6600560 () Bool)

(assert (=> d!1777950 m!6600560))

(assert (=> b!5629042 m!6600012))

(assert (=> b!5628374 d!1777950))

(assert (=> b!5628374 d!1777846))

(declare-fun d!1777952 () Bool)

(declare-fun c!988359 () Bool)

(assert (=> d!1777952 (= c!988359 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469513 () Bool)

(assert (=> d!1777952 (= (matchZipper!1759 ((_ map or) lt!2262073 lt!2262094) (t!376454 s!2326)) e!3469513)))

(declare-fun b!5629043 () Bool)

(assert (=> b!5629043 (= e!3469513 (nullableZipper!1603 ((_ map or) lt!2262073 lt!2262094)))))

(declare-fun b!5629044 () Bool)

(assert (=> b!5629044 (= e!3469513 (matchZipper!1759 (derivationStepZipper!1708 ((_ map or) lt!2262073 lt!2262094) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777952 c!988359) b!5629043))

(assert (= (and d!1777952 (not c!988359)) b!5629044))

(assert (=> d!1777952 m!6600284))

(declare-fun m!6600562 () Bool)

(assert (=> b!5629043 m!6600562))

(assert (=> b!5629044 m!6600288))

(assert (=> b!5629044 m!6600288))

(declare-fun m!6600564 () Bool)

(assert (=> b!5629044 m!6600564))

(assert (=> b!5629044 m!6600292))

(assert (=> b!5629044 m!6600564))

(assert (=> b!5629044 m!6600292))

(declare-fun m!6600566 () Bool)

(assert (=> b!5629044 m!6600566))

(assert (=> b!5628374 d!1777952))

(declare-fun d!1777954 () Bool)

(declare-fun lt!2262180 () Regex!15621)

(assert (=> d!1777954 (validRegex!7357 lt!2262180)))

(assert (=> d!1777954 (= lt!2262180 (generalisedUnion!1484 (unfocusZipperList!1049 zl!343)))))

(assert (=> d!1777954 (= (unfocusZipper!1363 zl!343) lt!2262180)))

(declare-fun bs!1302611 () Bool)

(assert (= bs!1302611 d!1777954))

(declare-fun m!6600568 () Bool)

(assert (=> bs!1302611 m!6600568))

(assert (=> bs!1302611 m!6600038))

(assert (=> bs!1302611 m!6600038))

(assert (=> bs!1302611 m!6600040))

(assert (=> b!5628354 d!1777954))

(declare-fun bs!1302612 () Bool)

(declare-fun d!1777956 () Bool)

(assert (= bs!1302612 (and d!1777956 d!1777842)))

(declare-fun lambda!302463 () Int)

(assert (=> bs!1302612 (= lambda!302463 lambda!302435)))

(declare-fun bs!1302613 () Bool)

(assert (= bs!1302613 (and d!1777956 d!1777934)))

(assert (=> bs!1302613 (= lambda!302463 lambda!302453)))

(declare-fun bs!1302614 () Bool)

(assert (= bs!1302614 (and d!1777956 d!1777936)))

(assert (=> bs!1302614 (= lambda!302463 lambda!302456)))

(declare-fun bs!1302615 () Bool)

(assert (= bs!1302615 (and d!1777956 d!1777938)))

(assert (=> bs!1302615 (= lambda!302463 lambda!302457)))

(declare-fun b!5629065 () Bool)

(declare-fun e!3469529 () Bool)

(declare-fun lt!2262183 () Regex!15621)

(assert (=> b!5629065 (= e!3469529 (= lt!2262183 (head!11987 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629066 () Bool)

(declare-fun e!3469526 () Regex!15621)

(assert (=> b!5629066 (= e!3469526 (h!69487 (exprs!5505 (h!69488 zl!343))))))

(declare-fun b!5629067 () Bool)

(declare-fun e!3469531 () Regex!15621)

(assert (=> b!5629067 (= e!3469531 EmptyExpr!15621)))

(declare-fun e!3469527 () Bool)

(assert (=> d!1777956 e!3469527))

(declare-fun res!2383965 () Bool)

(assert (=> d!1777956 (=> (not res!2383965) (not e!3469527))))

(assert (=> d!1777956 (= res!2383965 (validRegex!7357 lt!2262183))))

(assert (=> d!1777956 (= lt!2262183 e!3469526)))

(declare-fun c!988368 () Bool)

(declare-fun e!3469530 () Bool)

(assert (=> d!1777956 (= c!988368 e!3469530)))

(declare-fun res!2383966 () Bool)

(assert (=> d!1777956 (=> (not res!2383966) (not e!3469530))))

(assert (=> d!1777956 (= res!2383966 ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343))))))

(assert (=> d!1777956 (forall!14775 (exprs!5505 (h!69488 zl!343)) lambda!302463)))

(assert (=> d!1777956 (= (generalisedConcat!1236 (exprs!5505 (h!69488 zl!343))) lt!2262183)))

(declare-fun b!5629068 () Bool)

(assert (=> b!5629068 (= e!3469530 (isEmpty!34874 (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629069 () Bool)

(declare-fun e!3469528 () Bool)

(assert (=> b!5629069 (= e!3469528 e!3469529)))

(declare-fun c!988371 () Bool)

(assert (=> b!5629069 (= c!988371 (isEmpty!34874 (tail!11082 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629070 () Bool)

(assert (=> b!5629070 (= e!3469531 (Concat!24466 (h!69487 (exprs!5505 (h!69488 zl!343))) (generalisedConcat!1236 (t!376455 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5629071 () Bool)

(assert (=> b!5629071 (= e!3469527 e!3469528)))

(declare-fun c!988369 () Bool)

(assert (=> b!5629071 (= c!988369 (isEmpty!34874 (exprs!5505 (h!69488 zl!343))))))

(declare-fun b!5629072 () Bool)

(declare-fun isConcat!685 (Regex!15621) Bool)

(assert (=> b!5629072 (= e!3469529 (isConcat!685 lt!2262183))))

(declare-fun b!5629073 () Bool)

(assert (=> b!5629073 (= e!3469526 e!3469531)))

(declare-fun c!988370 () Bool)

(assert (=> b!5629073 (= c!988370 ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343))))))

(declare-fun b!5629074 () Bool)

(declare-fun isEmptyExpr!1162 (Regex!15621) Bool)

(assert (=> b!5629074 (= e!3469528 (isEmptyExpr!1162 lt!2262183))))

(assert (= (and d!1777956 res!2383966) b!5629068))

(assert (= (and d!1777956 c!988368) b!5629066))

(assert (= (and d!1777956 (not c!988368)) b!5629073))

(assert (= (and b!5629073 c!988370) b!5629070))

(assert (= (and b!5629073 (not c!988370)) b!5629067))

(assert (= (and d!1777956 res!2383965) b!5629071))

(assert (= (and b!5629071 c!988369) b!5629074))

(assert (= (and b!5629071 (not c!988369)) b!5629069))

(assert (= (and b!5629069 c!988371) b!5629065))

(assert (= (and b!5629069 (not c!988371)) b!5629072))

(declare-fun m!6600570 () Bool)

(assert (=> b!5629074 m!6600570))

(declare-fun m!6600572 () Bool)

(assert (=> d!1777956 m!6600572))

(declare-fun m!6600574 () Bool)

(assert (=> d!1777956 m!6600574))

(declare-fun m!6600576 () Bool)

(assert (=> b!5629071 m!6600576))

(declare-fun m!6600578 () Bool)

(assert (=> b!5629065 m!6600578))

(declare-fun m!6600580 () Bool)

(assert (=> b!5629069 m!6600580))

(assert (=> b!5629069 m!6600580))

(declare-fun m!6600582 () Bool)

(assert (=> b!5629069 m!6600582))

(declare-fun m!6600584 () Bool)

(assert (=> b!5629070 m!6600584))

(declare-fun m!6600586 () Bool)

(assert (=> b!5629072 m!6600586))

(assert (=> b!5629068 m!6599980))

(assert (=> b!5628373 d!1777956))

(declare-fun d!1777958 () Bool)

(assert (=> d!1777958 (= (flatMap!1234 lt!2262072 lambda!302400) (choose!42667 lt!2262072 lambda!302400))))

(declare-fun bs!1302616 () Bool)

(assert (= bs!1302616 d!1777958))

(declare-fun m!6600588 () Bool)

(assert (=> bs!1302616 m!6600588))

(assert (=> b!5628378 d!1777958))

(declare-fun b!5629075 () Bool)

(declare-fun e!3469533 () (InoxSet Context!10010))

(assert (=> b!5629075 (= e!3469533 ((as const (Array Context!10010 Bool)) false))))

(declare-fun call!424163 () (InoxSet Context!10010))

(declare-fun e!3469534 () (InoxSet Context!10010))

(declare-fun b!5629076 () Bool)

(assert (=> b!5629076 (= e!3469534 ((_ map or) call!424163 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (h!69486 s!2326))))))

(declare-fun b!5629077 () Bool)

(assert (=> b!5629077 (= e!3469534 e!3469533)))

(declare-fun c!988373 () Bool)

(assert (=> b!5629077 (= c!988373 ((_ is Cons!63039) (exprs!5505 lt!2262089)))))

(declare-fun b!5629078 () Bool)

(assert (=> b!5629078 (= e!3469533 call!424163)))

(declare-fun b!5629079 () Bool)

(declare-fun e!3469532 () Bool)

(assert (=> b!5629079 (= e!3469532 (nullable!5653 (h!69487 (exprs!5505 lt!2262089))))))

(declare-fun d!1777960 () Bool)

(declare-fun c!988372 () Bool)

(assert (=> d!1777960 (= c!988372 e!3469532)))

(declare-fun res!2383967 () Bool)

(assert (=> d!1777960 (=> (not res!2383967) (not e!3469532))))

(assert (=> d!1777960 (= res!2383967 ((_ is Cons!63039) (exprs!5505 lt!2262089)))))

(assert (=> d!1777960 (= (derivationStepZipperUp!889 lt!2262089 (h!69486 s!2326)) e!3469534)))

(declare-fun bm!424158 () Bool)

(assert (=> bm!424158 (= call!424163 (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262089)) (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (h!69486 s!2326)))))

(assert (= (and d!1777960 res!2383967) b!5629079))

(assert (= (and d!1777960 c!988372) b!5629076))

(assert (= (and d!1777960 (not c!988372)) b!5629077))

(assert (= (and b!5629077 c!988373) b!5629078))

(assert (= (and b!5629077 (not c!988373)) b!5629075))

(assert (= (or b!5629076 b!5629078) bm!424158))

(declare-fun m!6600590 () Bool)

(assert (=> b!5629076 m!6600590))

(declare-fun m!6600592 () Bool)

(assert (=> b!5629079 m!6600592))

(declare-fun m!6600594 () Bool)

(assert (=> bm!424158 m!6600594))

(assert (=> b!5628378 d!1777960))

(declare-fun d!1777962 () Bool)

(declare-fun e!3469535 () Bool)

(assert (=> d!1777962 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262067) (t!376454 s!2326)) e!3469535)))

(declare-fun res!2383968 () Bool)

(assert (=> d!1777962 (=> res!2383968 e!3469535)))

(assert (=> d!1777962 (= res!2383968 (matchZipper!1759 lt!2262080 (t!376454 s!2326)))))

(declare-fun lt!2262184 () Unit!156016)

(assert (=> d!1777962 (= lt!2262184 (choose!42661 lt!2262080 lt!2262067 (t!376454 s!2326)))))

(assert (=> d!1777962 (= (lemmaZipperConcatMatchesSameAsBothZippers!646 lt!2262080 lt!2262067 (t!376454 s!2326)) lt!2262184)))

(declare-fun b!5629080 () Bool)

(assert (=> b!5629080 (= e!3469535 (matchZipper!1759 lt!2262067 (t!376454 s!2326)))))

(assert (= (and d!1777962 (not res!2383968)) b!5629080))

(declare-fun m!6600596 () Bool)

(assert (=> d!1777962 m!6600596))

(assert (=> d!1777962 m!6600008))

(declare-fun m!6600598 () Bool)

(assert (=> d!1777962 m!6600598))

(assert (=> b!5629080 m!6600036))

(assert (=> b!5628378 d!1777962))

(declare-fun d!1777964 () Bool)

(declare-fun c!988374 () Bool)

(assert (=> d!1777964 (= c!988374 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469536 () Bool)

(assert (=> d!1777964 (= (matchZipper!1759 lt!2262068 (t!376454 s!2326)) e!3469536)))

(declare-fun b!5629081 () Bool)

(assert (=> b!5629081 (= e!3469536 (nullableZipper!1603 lt!2262068))))

(declare-fun b!5629082 () Bool)

(assert (=> b!5629082 (= e!3469536 (matchZipper!1759 (derivationStepZipper!1708 lt!2262068 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777964 c!988374) b!5629081))

(assert (= (and d!1777964 (not c!988374)) b!5629082))

(assert (=> d!1777964 m!6600284))

(declare-fun m!6600600 () Bool)

(assert (=> b!5629081 m!6600600))

(assert (=> b!5629082 m!6600288))

(assert (=> b!5629082 m!6600288))

(declare-fun m!6600602 () Bool)

(assert (=> b!5629082 m!6600602))

(assert (=> b!5629082 m!6600292))

(assert (=> b!5629082 m!6600602))

(assert (=> b!5629082 m!6600292))

(declare-fun m!6600604 () Bool)

(assert (=> b!5629082 m!6600604))

(assert (=> b!5628378 d!1777964))

(declare-fun d!1777966 () Bool)

(assert (=> d!1777966 (= (flatMap!1234 lt!2262072 lambda!302400) (dynLambda!24650 lambda!302400 lt!2262089))))

(declare-fun lt!2262185 () Unit!156016)

(assert (=> d!1777966 (= lt!2262185 (choose!42668 lt!2262072 lt!2262089 lambda!302400))))

(assert (=> d!1777966 (= lt!2262072 (store ((as const (Array Context!10010 Bool)) false) lt!2262089 true))))

(assert (=> d!1777966 (= (lemmaFlatMapOnSingletonSet!766 lt!2262072 lt!2262089 lambda!302400) lt!2262185)))

(declare-fun b_lambda!212873 () Bool)

(assert (=> (not b_lambda!212873) (not d!1777966)))

(declare-fun bs!1302617 () Bool)

(assert (= bs!1302617 d!1777966))

(assert (=> bs!1302617 m!6599988))

(declare-fun m!6600606 () Bool)

(assert (=> bs!1302617 m!6600606))

(declare-fun m!6600608 () Bool)

(assert (=> bs!1302617 m!6600608))

(assert (=> bs!1302617 m!6600060))

(assert (=> b!5628378 d!1777966))

(declare-fun d!1777968 () Bool)

(declare-fun c!988375 () Bool)

(assert (=> d!1777968 (= c!988375 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469537 () Bool)

(assert (=> d!1777968 (= (matchZipper!1759 lt!2262087 (t!376454 s!2326)) e!3469537)))

(declare-fun b!5629083 () Bool)

(assert (=> b!5629083 (= e!3469537 (nullableZipper!1603 lt!2262087))))

(declare-fun b!5629084 () Bool)

(assert (=> b!5629084 (= e!3469537 (matchZipper!1759 (derivationStepZipper!1708 lt!2262087 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777968 c!988375) b!5629083))

(assert (= (and d!1777968 (not c!988375)) b!5629084))

(assert (=> d!1777968 m!6600284))

(declare-fun m!6600610 () Bool)

(assert (=> b!5629083 m!6600610))

(assert (=> b!5629084 m!6600288))

(assert (=> b!5629084 m!6600288))

(declare-fun m!6600612 () Bool)

(assert (=> b!5629084 m!6600612))

(assert (=> b!5629084 m!6600292))

(assert (=> b!5629084 m!6600612))

(assert (=> b!5629084 m!6600292))

(declare-fun m!6600614 () Bool)

(assert (=> b!5629084 m!6600614))

(assert (=> b!5628378 d!1777968))

(declare-fun d!1777970 () Bool)

(declare-fun c!988376 () Bool)

(assert (=> d!1777970 (= c!988376 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469538 () Bool)

(assert (=> d!1777970 (= (matchZipper!1759 lt!2262094 (t!376454 s!2326)) e!3469538)))

(declare-fun b!5629085 () Bool)

(assert (=> b!5629085 (= e!3469538 (nullableZipper!1603 lt!2262094))))

(declare-fun b!5629086 () Bool)

(assert (=> b!5629086 (= e!3469538 (matchZipper!1759 (derivationStepZipper!1708 lt!2262094 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777970 c!988376) b!5629085))

(assert (= (and d!1777970 (not c!988376)) b!5629086))

(assert (=> d!1777970 m!6600284))

(declare-fun m!6600616 () Bool)

(assert (=> b!5629085 m!6600616))

(assert (=> b!5629086 m!6600288))

(assert (=> b!5629086 m!6600288))

(declare-fun m!6600618 () Bool)

(assert (=> b!5629086 m!6600618))

(assert (=> b!5629086 m!6600292))

(assert (=> b!5629086 m!6600618))

(assert (=> b!5629086 m!6600292))

(declare-fun m!6600620 () Bool)

(assert (=> b!5629086 m!6600620))

(assert (=> b!5628358 d!1777970))

(declare-fun d!1777972 () Bool)

(declare-fun c!988377 () Bool)

(assert (=> d!1777972 (= c!988377 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3469539 () Bool)

(assert (=> d!1777972 (= (matchZipper!1759 lt!2262067 (t!376454 s!2326)) e!3469539)))

(declare-fun b!5629087 () Bool)

(assert (=> b!5629087 (= e!3469539 (nullableZipper!1603 lt!2262067))))

(declare-fun b!5629088 () Bool)

(assert (=> b!5629088 (= e!3469539 (matchZipper!1759 (derivationStepZipper!1708 lt!2262067 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1777972 c!988377) b!5629087))

(assert (= (and d!1777972 (not c!988377)) b!5629088))

(assert (=> d!1777972 m!6600284))

(declare-fun m!6600622 () Bool)

(assert (=> b!5629087 m!6600622))

(assert (=> b!5629088 m!6600288))

(assert (=> b!5629088 m!6600288))

(declare-fun m!6600624 () Bool)

(assert (=> b!5629088 m!6600624))

(assert (=> b!5629088 m!6600292))

(assert (=> b!5629088 m!6600624))

(assert (=> b!5629088 m!6600292))

(declare-fun m!6600626 () Bool)

(assert (=> b!5629088 m!6600626))

(assert (=> b!5628377 d!1777972))

(assert (=> b!5628357 d!1777960))

(declare-fun b!5629089 () Bool)

(declare-fun e!3469541 () (InoxSet Context!10010))

(assert (=> b!5629089 (= e!3469541 ((as const (Array Context!10010 Bool)) false))))

(declare-fun e!3469542 () (InoxSet Context!10010))

(declare-fun call!424164 () (InoxSet Context!10010))

(declare-fun b!5629090 () Bool)

(assert (=> b!5629090 (= e!3469542 ((_ map or) call!424164 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (h!69486 s!2326))))))

(declare-fun b!5629091 () Bool)

(assert (=> b!5629091 (= e!3469542 e!3469541)))

(declare-fun c!988379 () Bool)

(assert (=> b!5629091 (= c!988379 ((_ is Cons!63039) (exprs!5505 lt!2262076)))))

(declare-fun b!5629092 () Bool)

(assert (=> b!5629092 (= e!3469541 call!424164)))

(declare-fun b!5629093 () Bool)

(declare-fun e!3469540 () Bool)

(assert (=> b!5629093 (= e!3469540 (nullable!5653 (h!69487 (exprs!5505 lt!2262076))))))

(declare-fun d!1777974 () Bool)

(declare-fun c!988378 () Bool)

(assert (=> d!1777974 (= c!988378 e!3469540)))

(declare-fun res!2383969 () Bool)

(assert (=> d!1777974 (=> (not res!2383969) (not e!3469540))))

(assert (=> d!1777974 (= res!2383969 ((_ is Cons!63039) (exprs!5505 lt!2262076)))))

(assert (=> d!1777974 (= (derivationStepZipperUp!889 lt!2262076 (h!69486 s!2326)) e!3469542)))

(declare-fun bm!424159 () Bool)

(assert (=> bm!424159 (= call!424164 (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262076)) (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (h!69486 s!2326)))))

(assert (= (and d!1777974 res!2383969) b!5629093))

(assert (= (and d!1777974 c!988378) b!5629090))

(assert (= (and d!1777974 (not c!988378)) b!5629091))

(assert (= (and b!5629091 c!988379) b!5629092))

(assert (= (and b!5629091 (not c!988379)) b!5629089))

(assert (= (or b!5629090 b!5629092) bm!424159))

(declare-fun m!6600628 () Bool)

(assert (=> b!5629090 m!6600628))

(declare-fun m!6600630 () Bool)

(assert (=> b!5629093 m!6600630))

(declare-fun m!6600632 () Bool)

(assert (=> bm!424159 m!6600632))

(assert (=> b!5628357 d!1777974))

(declare-fun d!1777976 () Bool)

(assert (=> d!1777976 (= (flatMap!1234 lt!2262093 lambda!302400) (choose!42667 lt!2262093 lambda!302400))))

(declare-fun bs!1302618 () Bool)

(assert (= bs!1302618 d!1777976))

(declare-fun m!6600634 () Bool)

(assert (=> bs!1302618 m!6600634))

(assert (=> b!5628357 d!1777976))

(declare-fun d!1777978 () Bool)

(assert (=> d!1777978 (= (flatMap!1234 lt!2262093 lambda!302400) (dynLambda!24650 lambda!302400 lt!2262076))))

(declare-fun lt!2262186 () Unit!156016)

(assert (=> d!1777978 (= lt!2262186 (choose!42668 lt!2262093 lt!2262076 lambda!302400))))

(assert (=> d!1777978 (= lt!2262093 (store ((as const (Array Context!10010 Bool)) false) lt!2262076 true))))

(assert (=> d!1777978 (= (lemmaFlatMapOnSingletonSet!766 lt!2262093 lt!2262076 lambda!302400) lt!2262186)))

(declare-fun b_lambda!212875 () Bool)

(assert (=> (not b_lambda!212875) (not d!1777978)))

(declare-fun bs!1302619 () Bool)

(assert (= bs!1302619 d!1777978))

(assert (=> bs!1302619 m!6600054))

(declare-fun m!6600636 () Bool)

(assert (=> bs!1302619 m!6600636))

(declare-fun m!6600638 () Bool)

(assert (=> bs!1302619 m!6600638))

(assert (=> bs!1302619 m!6600052))

(assert (=> b!5628357 d!1777978))

(declare-fun bs!1302620 () Bool)

(declare-fun d!1777980 () Bool)

(assert (= bs!1302620 (and d!1777980 b!5628366)))

(declare-fun lambda!302464 () Int)

(assert (=> bs!1302620 (= lambda!302464 lambda!302400)))

(declare-fun bs!1302621 () Bool)

(assert (= bs!1302621 (and d!1777980 d!1777946)))

(assert (=> bs!1302621 (= lambda!302464 lambda!302460)))

(assert (=> d!1777980 true))

(assert (=> d!1777980 (= (derivationStepZipper!1708 lt!2262093 (h!69486 s!2326)) (flatMap!1234 lt!2262093 lambda!302464))))

(declare-fun bs!1302622 () Bool)

(assert (= bs!1302622 d!1777980))

(declare-fun m!6600640 () Bool)

(assert (=> bs!1302622 m!6600640))

(assert (=> b!5628357 d!1777980))

(declare-fun b!5629112 () Bool)

(declare-fun res!2383984 () Bool)

(declare-fun e!3469560 () Bool)

(assert (=> b!5629112 (=> (not res!2383984) (not e!3469560))))

(declare-fun call!424171 () Bool)

(assert (=> b!5629112 (= res!2383984 call!424171)))

(declare-fun e!3469562 () Bool)

(assert (=> b!5629112 (= e!3469562 e!3469560)))

(declare-fun b!5629113 () Bool)

(declare-fun e!3469563 () Bool)

(declare-fun call!424172 () Bool)

(assert (=> b!5629113 (= e!3469563 call!424172)))

(declare-fun b!5629114 () Bool)

(declare-fun e!3469558 () Bool)

(declare-fun call!424173 () Bool)

(assert (=> b!5629114 (= e!3469558 call!424173)))

(declare-fun bm!424166 () Bool)

(declare-fun c!988384 () Bool)

(declare-fun c!988385 () Bool)

(assert (=> bm!424166 (= call!424172 (validRegex!7357 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))

(declare-fun b!5629115 () Bool)

(declare-fun e!3469561 () Bool)

(assert (=> b!5629115 (= e!3469561 e!3469562)))

(assert (=> b!5629115 (= c!988385 ((_ is Union!15621) r!7292))))

(declare-fun b!5629116 () Bool)

(assert (=> b!5629116 (= e!3469561 e!3469563)))

(declare-fun res!2383982 () Bool)

(assert (=> b!5629116 (= res!2383982 (not (nullable!5653 (reg!15950 r!7292))))))

(assert (=> b!5629116 (=> (not res!2383982) (not e!3469563))))

(declare-fun b!5629117 () Bool)

(assert (=> b!5629117 (= e!3469560 call!424173)))

(declare-fun b!5629118 () Bool)

(declare-fun e!3469559 () Bool)

(assert (=> b!5629118 (= e!3469559 e!3469558)))

(declare-fun res!2383980 () Bool)

(assert (=> b!5629118 (=> (not res!2383980) (not e!3469558))))

(assert (=> b!5629118 (= res!2383980 call!424171)))

(declare-fun b!5629119 () Bool)

(declare-fun e!3469557 () Bool)

(assert (=> b!5629119 (= e!3469557 e!3469561)))

(assert (=> b!5629119 (= c!988384 ((_ is Star!15621) r!7292))))

(declare-fun b!5629120 () Bool)

(declare-fun res!2383983 () Bool)

(assert (=> b!5629120 (=> res!2383983 e!3469559)))

(assert (=> b!5629120 (= res!2383983 (not ((_ is Concat!24466) r!7292)))))

(assert (=> b!5629120 (= e!3469562 e!3469559)))

(declare-fun bm!424168 () Bool)

(assert (=> bm!424168 (= call!424171 (validRegex!7357 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))

(declare-fun bm!424167 () Bool)

(assert (=> bm!424167 (= call!424173 call!424172)))

(declare-fun d!1777982 () Bool)

(declare-fun res!2383981 () Bool)

(assert (=> d!1777982 (=> res!2383981 e!3469557)))

(assert (=> d!1777982 (= res!2383981 ((_ is ElementMatch!15621) r!7292))))

(assert (=> d!1777982 (= (validRegex!7357 r!7292) e!3469557)))

(assert (= (and d!1777982 (not res!2383981)) b!5629119))

(assert (= (and b!5629119 c!988384) b!5629116))

(assert (= (and b!5629119 (not c!988384)) b!5629115))

(assert (= (and b!5629116 res!2383982) b!5629113))

(assert (= (and b!5629115 c!988385) b!5629112))

(assert (= (and b!5629115 (not c!988385)) b!5629120))

(assert (= (and b!5629112 res!2383984) b!5629117))

(assert (= (and b!5629120 (not res!2383983)) b!5629118))

(assert (= (and b!5629118 res!2383980) b!5629114))

(assert (= (or b!5629117 b!5629114) bm!424167))

(assert (= (or b!5629112 b!5629118) bm!424168))

(assert (= (or b!5629113 bm!424167) bm!424166))

(declare-fun m!6600642 () Bool)

(assert (=> bm!424166 m!6600642))

(declare-fun m!6600644 () Bool)

(assert (=> b!5629116 m!6600644))

(declare-fun m!6600646 () Bool)

(assert (=> bm!424168 m!6600646))

(assert (=> start!583128 d!1777982))

(declare-fun b!5629133 () Bool)

(declare-fun e!3469566 () Bool)

(declare-fun tp!1558194 () Bool)

(assert (=> b!5629133 (= e!3469566 tp!1558194)))

(assert (=> b!5628363 (= tp!1558115 e!3469566)))

(declare-fun b!5629132 () Bool)

(declare-fun tp!1558196 () Bool)

(declare-fun tp!1558195 () Bool)

(assert (=> b!5629132 (= e!3469566 (and tp!1558196 tp!1558195))))

(declare-fun b!5629134 () Bool)

(declare-fun tp!1558192 () Bool)

(declare-fun tp!1558193 () Bool)

(assert (=> b!5629134 (= e!3469566 (and tp!1558192 tp!1558193))))

(declare-fun b!5629131 () Bool)

(assert (=> b!5629131 (= e!3469566 tp_is_empty!40495)))

(assert (= (and b!5628363 ((_ is ElementMatch!15621) (regOne!31754 r!7292))) b!5629131))

(assert (= (and b!5628363 ((_ is Concat!24466) (regOne!31754 r!7292))) b!5629132))

(assert (= (and b!5628363 ((_ is Star!15621) (regOne!31754 r!7292))) b!5629133))

(assert (= (and b!5628363 ((_ is Union!15621) (regOne!31754 r!7292))) b!5629134))

(declare-fun b!5629137 () Bool)

(declare-fun e!3469567 () Bool)

(declare-fun tp!1558199 () Bool)

(assert (=> b!5629137 (= e!3469567 tp!1558199)))

(assert (=> b!5628363 (= tp!1558120 e!3469567)))

(declare-fun b!5629136 () Bool)

(declare-fun tp!1558201 () Bool)

(declare-fun tp!1558200 () Bool)

(assert (=> b!5629136 (= e!3469567 (and tp!1558201 tp!1558200))))

(declare-fun b!5629138 () Bool)

(declare-fun tp!1558197 () Bool)

(declare-fun tp!1558198 () Bool)

(assert (=> b!5629138 (= e!3469567 (and tp!1558197 tp!1558198))))

(declare-fun b!5629135 () Bool)

(assert (=> b!5629135 (= e!3469567 tp_is_empty!40495)))

(assert (= (and b!5628363 ((_ is ElementMatch!15621) (regTwo!31754 r!7292))) b!5629135))

(assert (= (and b!5628363 ((_ is Concat!24466) (regTwo!31754 r!7292))) b!5629136))

(assert (= (and b!5628363 ((_ is Star!15621) (regTwo!31754 r!7292))) b!5629137))

(assert (= (and b!5628363 ((_ is Union!15621) (regTwo!31754 r!7292))) b!5629138))

(declare-fun b!5629143 () Bool)

(declare-fun e!3469570 () Bool)

(declare-fun tp!1558204 () Bool)

(assert (=> b!5629143 (= e!3469570 (and tp_is_empty!40495 tp!1558204))))

(assert (=> b!5628376 (= tp!1558121 e!3469570)))

(assert (= (and b!5628376 ((_ is Cons!63038) (t!376454 s!2326))) b!5629143))

(declare-fun condSetEmpty!37594 () Bool)

(assert (=> setNonEmpty!37588 (= condSetEmpty!37594 (= setRest!37588 ((as const (Array Context!10010 Bool)) false)))))

(declare-fun setRes!37594 () Bool)

(assert (=> setNonEmpty!37588 (= tp!1558119 setRes!37594)))

(declare-fun setIsEmpty!37594 () Bool)

(assert (=> setIsEmpty!37594 setRes!37594))

(declare-fun tp!1558209 () Bool)

(declare-fun setElem!37594 () Context!10010)

(declare-fun e!3469573 () Bool)

(declare-fun setNonEmpty!37594 () Bool)

(assert (=> setNonEmpty!37594 (= setRes!37594 (and tp!1558209 (inv!82299 setElem!37594) e!3469573))))

(declare-fun setRest!37594 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37594 (= setRest!37588 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37594 true) setRest!37594))))

(declare-fun b!5629148 () Bool)

(declare-fun tp!1558210 () Bool)

(assert (=> b!5629148 (= e!3469573 tp!1558210)))

(assert (= (and setNonEmpty!37588 condSetEmpty!37594) setIsEmpty!37594))

(assert (= (and setNonEmpty!37588 (not condSetEmpty!37594)) setNonEmpty!37594))

(assert (= setNonEmpty!37594 b!5629148))

(declare-fun m!6600648 () Bool)

(assert (=> setNonEmpty!37594 m!6600648))

(declare-fun b!5629151 () Bool)

(declare-fun e!3469574 () Bool)

(declare-fun tp!1558213 () Bool)

(assert (=> b!5629151 (= e!3469574 tp!1558213)))

(assert (=> b!5628370 (= tp!1558123 e!3469574)))

(declare-fun b!5629150 () Bool)

(declare-fun tp!1558215 () Bool)

(declare-fun tp!1558214 () Bool)

(assert (=> b!5629150 (= e!3469574 (and tp!1558215 tp!1558214))))

(declare-fun b!5629152 () Bool)

(declare-fun tp!1558211 () Bool)

(declare-fun tp!1558212 () Bool)

(assert (=> b!5629152 (= e!3469574 (and tp!1558211 tp!1558212))))

(declare-fun b!5629149 () Bool)

(assert (=> b!5629149 (= e!3469574 tp_is_empty!40495)))

(assert (= (and b!5628370 ((_ is ElementMatch!15621) (reg!15950 r!7292))) b!5629149))

(assert (= (and b!5628370 ((_ is Concat!24466) (reg!15950 r!7292))) b!5629150))

(assert (= (and b!5628370 ((_ is Star!15621) (reg!15950 r!7292))) b!5629151))

(assert (= (and b!5628370 ((_ is Union!15621) (reg!15950 r!7292))) b!5629152))

(declare-fun b!5629155 () Bool)

(declare-fun e!3469575 () Bool)

(declare-fun tp!1558218 () Bool)

(assert (=> b!5629155 (= e!3469575 tp!1558218)))

(assert (=> b!5628356 (= tp!1558117 e!3469575)))

(declare-fun b!5629154 () Bool)

(declare-fun tp!1558220 () Bool)

(declare-fun tp!1558219 () Bool)

(assert (=> b!5629154 (= e!3469575 (and tp!1558220 tp!1558219))))

(declare-fun b!5629156 () Bool)

(declare-fun tp!1558216 () Bool)

(declare-fun tp!1558217 () Bool)

(assert (=> b!5629156 (= e!3469575 (and tp!1558216 tp!1558217))))

(declare-fun b!5629153 () Bool)

(assert (=> b!5629153 (= e!3469575 tp_is_empty!40495)))

(assert (= (and b!5628356 ((_ is ElementMatch!15621) (regOne!31755 r!7292))) b!5629153))

(assert (= (and b!5628356 ((_ is Concat!24466) (regOne!31755 r!7292))) b!5629154))

(assert (= (and b!5628356 ((_ is Star!15621) (regOne!31755 r!7292))) b!5629155))

(assert (= (and b!5628356 ((_ is Union!15621) (regOne!31755 r!7292))) b!5629156))

(declare-fun b!5629159 () Bool)

(declare-fun e!3469576 () Bool)

(declare-fun tp!1558223 () Bool)

(assert (=> b!5629159 (= e!3469576 tp!1558223)))

(assert (=> b!5628356 (= tp!1558118 e!3469576)))

(declare-fun b!5629158 () Bool)

(declare-fun tp!1558225 () Bool)

(declare-fun tp!1558224 () Bool)

(assert (=> b!5629158 (= e!3469576 (and tp!1558225 tp!1558224))))

(declare-fun b!5629160 () Bool)

(declare-fun tp!1558221 () Bool)

(declare-fun tp!1558222 () Bool)

(assert (=> b!5629160 (= e!3469576 (and tp!1558221 tp!1558222))))

(declare-fun b!5629157 () Bool)

(assert (=> b!5629157 (= e!3469576 tp_is_empty!40495)))

(assert (= (and b!5628356 ((_ is ElementMatch!15621) (regTwo!31755 r!7292))) b!5629157))

(assert (= (and b!5628356 ((_ is Concat!24466) (regTwo!31755 r!7292))) b!5629158))

(assert (= (and b!5628356 ((_ is Star!15621) (regTwo!31755 r!7292))) b!5629159))

(assert (= (and b!5628356 ((_ is Union!15621) (regTwo!31755 r!7292))) b!5629160))

(declare-fun b!5629165 () Bool)

(declare-fun e!3469579 () Bool)

(declare-fun tp!1558230 () Bool)

(declare-fun tp!1558231 () Bool)

(assert (=> b!5629165 (= e!3469579 (and tp!1558230 tp!1558231))))

(assert (=> b!5628355 (= tp!1558114 e!3469579)))

(assert (= (and b!5628355 ((_ is Cons!63039) (exprs!5505 (h!69488 zl!343)))) b!5629165))

(declare-fun b!5629166 () Bool)

(declare-fun e!3469580 () Bool)

(declare-fun tp!1558232 () Bool)

(declare-fun tp!1558233 () Bool)

(assert (=> b!5629166 (= e!3469580 (and tp!1558232 tp!1558233))))

(assert (=> b!5628360 (= tp!1558122 e!3469580)))

(assert (= (and b!5628360 ((_ is Cons!63039) (exprs!5505 setElem!37588))) b!5629166))

(declare-fun b!5629174 () Bool)

(declare-fun e!3469586 () Bool)

(declare-fun tp!1558238 () Bool)

(assert (=> b!5629174 (= e!3469586 tp!1558238)))

(declare-fun tp!1558239 () Bool)

(declare-fun b!5629173 () Bool)

(declare-fun e!3469585 () Bool)

(assert (=> b!5629173 (= e!3469585 (and (inv!82299 (h!69488 (t!376456 zl!343))) e!3469586 tp!1558239))))

(assert (=> b!5628369 (= tp!1558116 e!3469585)))

(assert (= b!5629173 b!5629174))

(assert (= (and b!5628369 ((_ is Cons!63040) (t!376456 zl!343))) b!5629173))

(declare-fun m!6600650 () Bool)

(assert (=> b!5629173 m!6600650))

(declare-fun b_lambda!212877 () Bool)

(assert (= b_lambda!212871 (or b!5628366 b_lambda!212877)))

(declare-fun bs!1302623 () Bool)

(declare-fun d!1777984 () Bool)

(assert (= bs!1302623 (and d!1777984 b!5628366)))

(assert (=> bs!1302623 (= (dynLambda!24650 lambda!302400 (h!69488 zl!343)) (derivationStepZipperUp!889 (h!69488 zl!343) (h!69486 s!2326)))))

(assert (=> bs!1302623 m!6600024))

(assert (=> d!1777930 d!1777984))

(declare-fun b_lambda!212879 () Bool)

(assert (= b_lambda!212875 (or b!5628366 b_lambda!212879)))

(declare-fun bs!1302624 () Bool)

(declare-fun d!1777986 () Bool)

(assert (= bs!1302624 (and d!1777986 b!5628366)))

(assert (=> bs!1302624 (= (dynLambda!24650 lambda!302400 lt!2262076) (derivationStepZipperUp!889 lt!2262076 (h!69486 s!2326)))))

(assert (=> bs!1302624 m!6600058))

(assert (=> d!1777978 d!1777986))

(declare-fun b_lambda!212881 () Bool)

(assert (= b_lambda!212873 (or b!5628366 b_lambda!212881)))

(declare-fun bs!1302625 () Bool)

(declare-fun d!1777988 () Bool)

(assert (= bs!1302625 (and d!1777988 b!5628366)))

(assert (=> bs!1302625 (= (dynLambda!24650 lambda!302400 lt!2262089) (derivationStepZipperUp!889 lt!2262089 (h!69486 s!2326)))))

(assert (=> bs!1302625 m!6599984))

(assert (=> d!1777966 d!1777988))

(check-sat (not d!1777934) (not d!1777938) (not bm!424145) (not d!1777946) (not bm!424158) (not b!5629150) (not d!1777848) (not d!1777856) (not d!1777912) (not b!5628969) (not bm!424136) (not b!5628783) (not b!5629143) (not b!5629152) (not b!5628785) (not bm!424159) (not b!5628710) (not d!1777978) (not d!1777950) (not b!5629008) (not b!5629076) (not b!5629174) (not b!5628979) (not b!5629160) (not b!5629014) (not b!5628648) (not d!1777916) (not d!1777872) (not b!5629155) (not b!5629080) (not b!5629137) (not d!1777980) (not b!5629133) (not b!5629002) (not d!1777852) (not bm!424139) (not d!1777920) (not b!5628714) (not b!5629166) (not b!5628709) (not b!5628918) (not b!5629084) (not d!1777966) (not d!1777956) (not b!5628976) (not b!5629043) (not bm!424144) (not b!5628787) (not d!1777840) (not b_lambda!212881) (not b!5629132) (not b!5629093) (not b!5629151) (not b!5629154) (not b!5629090) (not b!5629079) (not b!5628713) (not b!5629068) (not b!5629173) (not d!1777952) (not b!5629038) (not d!1777936) (not b!5629003) (not bm!424153) (not bm!424155) (not b!5629082) (not d!1777970) (not b!5628917) (not b!5629065) (not b!5629071) (not bm!424166) (not b!5629000) (not b!5629085) (not b!5629001) (not b!5628974) (not b!5628966) (not d!1777930) (not b!5629156) (not b!5629081) (not d!1777826) (not b!5628788) (not d!1777976) (not b!5628784) (not bm!424168) (not d!1777962) (not b!5629086) (not b!5629039) (not b!5628660) (not b!5628712) (not b!5629159) (not d!1777958) (not bm!424138) (not bm!424150) (not b_lambda!212877) (not d!1777842) (not b!5629136) (not d!1777924) (not b!5628781) (not b!5629034) (not b!5629088) (not bm!424149) (not d!1777972) (not b!5628658) (not b!5629074) (not b!5628566) (not bm!424143) (not d!1777964) (not b!5629044) (not b!5629004) (not b!5629138) (not b!5629148) (not d!1777954) (not b!5629072) (not d!1777870) (not b!5628711) (not b!5628565) (not bm!424147) (not b!5629023) (not b!5629070) (not d!1777932) (not d!1777868) (not bm!424092) (not d!1777850) (not b!5629087) (not d!1777944) (not bm!424091) (not d!1777892) (not b!5629083) (not b!5629116) (not b!5628951) (not b!5628650) (not b_lambda!212879) tp_is_empty!40495 (not bs!1302625) (not d!1777968) (not b!5629165) (not b!5628655) (not d!1777846) (not b!5629158) (not b!5628971) (not b!5629134) (not b!5628651) (not b!5628921) (not setNonEmpty!37594) (not b!5629042) (not bm!424095) (not b!5629069) (not bm!424156) (not bs!1302624) (not b!5629009) (not d!1777914) (not bs!1302623) (not b!5628717))
(check-sat)
(get-model)

(declare-fun d!1778274 () Bool)

(assert (=> d!1778274 true))

(declare-fun setRes!37603 () Bool)

(assert (=> d!1778274 setRes!37603))

(declare-fun condSetEmpty!37603 () Bool)

(declare-fun res!2384170 () (InoxSet Context!10010))

(assert (=> d!1778274 (= condSetEmpty!37603 (= res!2384170 ((as const (Array Context!10010 Bool)) false)))))

(assert (=> d!1778274 (= (choose!42667 lt!2262093 lambda!302400) res!2384170)))

(declare-fun setIsEmpty!37603 () Bool)

(assert (=> setIsEmpty!37603 setRes!37603))

(declare-fun tp!1558409 () Bool)

(declare-fun setElem!37603 () Context!10010)

(declare-fun e!3469923 () Bool)

(declare-fun setNonEmpty!37603 () Bool)

(assert (=> setNonEmpty!37603 (= setRes!37603 (and tp!1558409 (inv!82299 setElem!37603) e!3469923))))

(declare-fun setRest!37603 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37603 (= res!2384170 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37603 true) setRest!37603))))

(declare-fun b!5629775 () Bool)

(declare-fun tp!1558408 () Bool)

(assert (=> b!5629775 (= e!3469923 tp!1558408)))

(assert (= (and d!1778274 condSetEmpty!37603) setIsEmpty!37603))

(assert (= (and d!1778274 (not condSetEmpty!37603)) setNonEmpty!37603))

(assert (= setNonEmpty!37603 b!5629775))

(declare-fun m!6601234 () Bool)

(assert (=> setNonEmpty!37603 m!6601234))

(assert (=> d!1777976 d!1778274))

(assert (=> d!1777930 d!1777924))

(declare-fun d!1778276 () Bool)

(assert (=> d!1778276 (= (flatMap!1234 z!1189 lambda!302400) (dynLambda!24650 lambda!302400 (h!69488 zl!343)))))

(assert (=> d!1778276 true))

(declare-fun _$13!2257 () Unit!156016)

(assert (=> d!1778276 (= (choose!42668 z!1189 (h!69488 zl!343) lambda!302400) _$13!2257)))

(declare-fun b_lambda!212915 () Bool)

(assert (=> (not b_lambda!212915) (not d!1778276)))

(declare-fun bs!1302876 () Bool)

(assert (= bs!1302876 d!1778276))

(assert (=> bs!1302876 m!6600034))

(assert (=> bs!1302876 m!6600502))

(assert (=> d!1777930 d!1778276))

(declare-fun d!1778278 () Bool)

(declare-fun lambda!302507 () Int)

(declare-fun exists!2186 ((InoxSet Context!10010) Int) Bool)

(assert (=> d!1778278 (= (nullableZipper!1603 lt!2262094) (exists!2186 lt!2262094 lambda!302507))))

(declare-fun bs!1302877 () Bool)

(assert (= bs!1302877 d!1778278))

(declare-fun m!6601236 () Bool)

(assert (=> bs!1302877 m!6601236))

(assert (=> b!5629085 d!1778278))

(declare-fun d!1778280 () Bool)

(assert (=> d!1778280 (= (nullable!5653 (reg!15950 r!7292)) (nullableFct!1749 (reg!15950 r!7292)))))

(declare-fun bs!1302878 () Bool)

(assert (= bs!1302878 d!1778280))

(declare-fun m!6601238 () Bool)

(assert (=> bs!1302878 m!6601238))

(assert (=> b!5629116 d!1778280))

(declare-fun d!1778282 () Bool)

(assert (=> d!1778282 (= (head!11986 s!2326) (h!69486 s!2326))))

(assert (=> b!5628658 d!1778282))

(declare-fun d!1778284 () Bool)

(assert (=> d!1778284 (= (isEmpty!34874 (exprs!5505 (h!69488 zl!343))) ((_ is Nil!63039) (exprs!5505 (h!69488 zl!343))))))

(assert (=> b!5629071 d!1778284))

(declare-fun d!1778286 () Bool)

(assert (=> d!1778286 true))

(assert (=> d!1778286 true))

(declare-fun res!2384173 () Bool)

(assert (=> d!1778286 (= (choose!42663 lambda!302398) res!2384173)))

(assert (=> d!1777868 d!1778286))

(assert (=> bs!1302623 d!1777926))

(declare-fun b!5629776 () Bool)

(declare-fun e!3469925 () (InoxSet Context!10010))

(assert (=> b!5629776 (= e!3469925 ((as const (Array Context!10010 Bool)) false))))

(declare-fun call!424292 () (InoxSet Context!10010))

(declare-fun b!5629777 () Bool)

(declare-fun e!3469926 () (InoxSet Context!10010))

(assert (=> b!5629777 (= e!3469926 ((_ map or) call!424292 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089)))))) (h!69486 s!2326))))))

(declare-fun b!5629778 () Bool)

(assert (=> b!5629778 (= e!3469926 e!3469925)))

(declare-fun c!988541 () Bool)

(assert (=> b!5629778 (= c!988541 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089))))))))

(declare-fun b!5629779 () Bool)

(assert (=> b!5629779 (= e!3469925 call!424292)))

(declare-fun b!5629780 () Bool)

(declare-fun e!3469924 () Bool)

(assert (=> b!5629780 (= e!3469924 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089)))))))))

(declare-fun d!1778288 () Bool)

(declare-fun c!988540 () Bool)

(assert (=> d!1778288 (= c!988540 e!3469924)))

(declare-fun res!2384174 () Bool)

(assert (=> d!1778288 (=> (not res!2384174) (not e!3469924))))

(assert (=> d!1778288 (= res!2384174 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089))))))))

(assert (=> d!1778288 (= (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (h!69486 s!2326)) e!3469926)))

(declare-fun bm!424287 () Bool)

(assert (=> bm!424287 (= call!424292 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089)))))) (h!69486 s!2326)))))

(assert (= (and d!1778288 res!2384174) b!5629780))

(assert (= (and d!1778288 c!988540) b!5629777))

(assert (= (and d!1778288 (not c!988540)) b!5629778))

(assert (= (and b!5629778 c!988541) b!5629779))

(assert (= (and b!5629778 (not c!988541)) b!5629776))

(assert (= (or b!5629777 b!5629779) bm!424287))

(declare-fun m!6601240 () Bool)

(assert (=> b!5629777 m!6601240))

(declare-fun m!6601242 () Bool)

(assert (=> b!5629780 m!6601242))

(declare-fun m!6601244 () Bool)

(assert (=> bm!424287 m!6601244))

(assert (=> b!5629076 d!1778288))

(declare-fun b!5629781 () Bool)

(declare-fun e!3469929 () (InoxSet Context!10010))

(declare-fun e!3469931 () (InoxSet Context!10010))

(assert (=> b!5629781 (= e!3469929 e!3469931)))

(declare-fun c!988542 () Bool)

(assert (=> b!5629781 (= c!988542 ((_ is Union!15621) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5629782 () Bool)

(declare-fun e!3469927 () (InoxSet Context!10010))

(declare-fun e!3469932 () (InoxSet Context!10010))

(assert (=> b!5629782 (= e!3469927 e!3469932)))

(declare-fun c!988546 () Bool)

(assert (=> b!5629782 (= c!988546 ((_ is Concat!24466) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5629783 () Bool)

(declare-fun call!424296 () (InoxSet Context!10010))

(declare-fun call!424295 () (InoxSet Context!10010))

(assert (=> b!5629783 (= e!3469931 ((_ map or) call!424296 call!424295))))

(declare-fun bm!424288 () Bool)

(declare-fun call!424298 () (InoxSet Context!10010))

(declare-fun call!424297 () (InoxSet Context!10010))

(assert (=> bm!424288 (= call!424298 call!424297)))

(declare-fun c!988544 () Bool)

(declare-fun d!1778290 () Bool)

(assert (=> d!1778290 (= c!988544 (and ((_ is ElementMatch!15621) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (= (c!988159 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (h!69486 s!2326))))))

(assert (=> d!1778290 (= (derivationStepZipperDown!963 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))) (ite c!988351 lt!2262089 (Context!10011 call!424158)) (h!69486 s!2326)) e!3469929)))

(declare-fun b!5629784 () Bool)

(declare-fun c!988545 () Bool)

(declare-fun e!3469928 () Bool)

(assert (=> b!5629784 (= c!988545 e!3469928)))

(declare-fun res!2384175 () Bool)

(assert (=> b!5629784 (=> (not res!2384175) (not e!3469928))))

(assert (=> b!5629784 (= res!2384175 ((_ is Concat!24466) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(assert (=> b!5629784 (= e!3469931 e!3469927)))

(declare-fun call!424293 () List!63163)

(declare-fun bm!424289 () Bool)

(assert (=> bm!424289 (= call!424296 (derivationStepZipperDown!963 (ite c!988542 (regOne!31755 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (ite c!988545 (regTwo!31754 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (ite c!988546 (regOne!31754 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (reg!15950 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))))) (ite (or c!988542 c!988545) (ite c!988351 lt!2262089 (Context!10011 call!424158)) (Context!10011 call!424293)) (h!69486 s!2326)))))

(declare-fun bm!424290 () Bool)

(assert (=> bm!424290 (= call!424297 call!424296)))

(declare-fun call!424294 () List!63163)

(declare-fun bm!424291 () Bool)

(assert (=> bm!424291 (= call!424295 (derivationStepZipperDown!963 (ite c!988542 (regTwo!31755 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (regOne!31754 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))) (ite c!988542 (ite c!988351 lt!2262089 (Context!10011 call!424158)) (Context!10011 call!424294)) (h!69486 s!2326)))))

(declare-fun bm!424292 () Bool)

(assert (=> bm!424292 (= call!424294 ($colon$colon!1671 (exprs!5505 (ite c!988351 lt!2262089 (Context!10011 call!424158))) (ite (or c!988545 c!988546) (regTwo!31754 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))))))

(declare-fun b!5629785 () Bool)

(assert (=> b!5629785 (= e!3469927 ((_ map or) call!424295 call!424297))))

(declare-fun b!5629786 () Bool)

(assert (=> b!5629786 (= e!3469929 (store ((as const (Array Context!10010 Bool)) false) (ite c!988351 lt!2262089 (Context!10011 call!424158)) true))))

(declare-fun b!5629787 () Bool)

(assert (=> b!5629787 (= e!3469932 call!424298)))

(declare-fun b!5629788 () Bool)

(assert (=> b!5629788 (= e!3469928 (nullable!5653 (regOne!31754 (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))))))

(declare-fun bm!424293 () Bool)

(assert (=> bm!424293 (= call!424293 call!424294)))

(declare-fun b!5629789 () Bool)

(declare-fun c!988543 () Bool)

(assert (=> b!5629789 (= c!988543 ((_ is Star!15621) (ite c!988351 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun e!3469930 () (InoxSet Context!10010))

(assert (=> b!5629789 (= e!3469932 e!3469930)))

(declare-fun b!5629790 () Bool)

(assert (=> b!5629790 (= e!3469930 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629791 () Bool)

(assert (=> b!5629791 (= e!3469930 call!424298)))

(assert (= (and d!1778290 c!988544) b!5629786))

(assert (= (and d!1778290 (not c!988544)) b!5629781))

(assert (= (and b!5629781 c!988542) b!5629783))

(assert (= (and b!5629781 (not c!988542)) b!5629784))

(assert (= (and b!5629784 res!2384175) b!5629788))

(assert (= (and b!5629784 c!988545) b!5629785))

(assert (= (and b!5629784 (not c!988545)) b!5629782))

(assert (= (and b!5629782 c!988546) b!5629787))

(assert (= (and b!5629782 (not c!988546)) b!5629789))

(assert (= (and b!5629789 c!988543) b!5629791))

(assert (= (and b!5629789 (not c!988543)) b!5629790))

(assert (= (or b!5629787 b!5629791) bm!424293))

(assert (= (or b!5629787 b!5629791) bm!424288))

(assert (= (or b!5629785 bm!424293) bm!424292))

(assert (= (or b!5629785 bm!424288) bm!424290))

(assert (= (or b!5629783 b!5629785) bm!424291))

(assert (= (or b!5629783 bm!424290) bm!424289))

(declare-fun m!6601246 () Bool)

(assert (=> bm!424292 m!6601246))

(declare-fun m!6601248 () Bool)

(assert (=> bm!424291 m!6601248))

(declare-fun m!6601250 () Bool)

(assert (=> b!5629788 m!6601250))

(declare-fun m!6601252 () Bool)

(assert (=> bm!424289 m!6601252))

(declare-fun m!6601254 () Bool)

(assert (=> b!5629786 m!6601254))

(assert (=> bm!424155 d!1778290))

(declare-fun bs!1302879 () Bool)

(declare-fun d!1778292 () Bool)

(assert (= bs!1302879 (and d!1778292 d!1778278)))

(declare-fun lambda!302508 () Int)

(assert (=> bs!1302879 (= lambda!302508 lambda!302507)))

(assert (=> d!1778292 (= (nullableZipper!1603 lt!2262068) (exists!2186 lt!2262068 lambda!302508))))

(declare-fun bs!1302880 () Bool)

(assert (= bs!1302880 d!1778292))

(declare-fun m!6601256 () Bool)

(assert (=> bs!1302880 m!6601256))

(assert (=> b!5629081 d!1778292))

(declare-fun b!5629792 () Bool)

(declare-fun e!3469935 () (InoxSet Context!10010))

(declare-fun e!3469937 () (InoxSet Context!10010))

(assert (=> b!5629792 (= e!3469935 e!3469937)))

(declare-fun c!988547 () Bool)

(assert (=> b!5629792 (= c!988547 ((_ is Union!15621) (h!69487 (exprs!5505 lt!2262089))))))

(declare-fun b!5629793 () Bool)

(declare-fun e!3469933 () (InoxSet Context!10010))

(declare-fun e!3469938 () (InoxSet Context!10010))

(assert (=> b!5629793 (= e!3469933 e!3469938)))

(declare-fun c!988551 () Bool)

(assert (=> b!5629793 (= c!988551 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262089))))))

(declare-fun b!5629794 () Bool)

(declare-fun call!424302 () (InoxSet Context!10010))

(declare-fun call!424301 () (InoxSet Context!10010))

(assert (=> b!5629794 (= e!3469937 ((_ map or) call!424302 call!424301))))

(declare-fun bm!424294 () Bool)

(declare-fun call!424304 () (InoxSet Context!10010))

(declare-fun call!424303 () (InoxSet Context!10010))

(assert (=> bm!424294 (= call!424304 call!424303)))

(declare-fun d!1778294 () Bool)

(declare-fun c!988549 () Bool)

(assert (=> d!1778294 (= c!988549 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 lt!2262089))) (= (c!988159 (h!69487 (exprs!5505 lt!2262089))) (h!69486 s!2326))))))

(assert (=> d!1778294 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262089)) (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (h!69486 s!2326)) e!3469935)))

(declare-fun b!5629795 () Bool)

(declare-fun c!988550 () Bool)

(declare-fun e!3469934 () Bool)

(assert (=> b!5629795 (= c!988550 e!3469934)))

(declare-fun res!2384176 () Bool)

(assert (=> b!5629795 (=> (not res!2384176) (not e!3469934))))

(assert (=> b!5629795 (= res!2384176 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262089))))))

(assert (=> b!5629795 (= e!3469937 e!3469933)))

(declare-fun call!424299 () List!63163)

(declare-fun bm!424295 () Bool)

(assert (=> bm!424295 (= call!424302 (derivationStepZipperDown!963 (ite c!988547 (regOne!31755 (h!69487 (exprs!5505 lt!2262089))) (ite c!988550 (regTwo!31754 (h!69487 (exprs!5505 lt!2262089))) (ite c!988551 (regOne!31754 (h!69487 (exprs!5505 lt!2262089))) (reg!15950 (h!69487 (exprs!5505 lt!2262089)))))) (ite (or c!988547 c!988550) (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (Context!10011 call!424299)) (h!69486 s!2326)))))

(declare-fun bm!424296 () Bool)

(assert (=> bm!424296 (= call!424303 call!424302)))

(declare-fun bm!424297 () Bool)

(declare-fun call!424300 () List!63163)

(assert (=> bm!424297 (= call!424301 (derivationStepZipperDown!963 (ite c!988547 (regTwo!31755 (h!69487 (exprs!5505 lt!2262089))) (regOne!31754 (h!69487 (exprs!5505 lt!2262089)))) (ite c!988547 (Context!10011 (t!376455 (exprs!5505 lt!2262089))) (Context!10011 call!424300)) (h!69486 s!2326)))))

(declare-fun bm!424298 () Bool)

(assert (=> bm!424298 (= call!424300 ($colon$colon!1671 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262089)))) (ite (or c!988550 c!988551) (regTwo!31754 (h!69487 (exprs!5505 lt!2262089))) (h!69487 (exprs!5505 lt!2262089)))))))

(declare-fun b!5629796 () Bool)

(assert (=> b!5629796 (= e!3469933 ((_ map or) call!424301 call!424303))))

(declare-fun b!5629797 () Bool)

(assert (=> b!5629797 (= e!3469935 (store ((as const (Array Context!10010 Bool)) false) (Context!10011 (t!376455 (exprs!5505 lt!2262089))) true))))

(declare-fun b!5629798 () Bool)

(assert (=> b!5629798 (= e!3469938 call!424304)))

(declare-fun b!5629799 () Bool)

(assert (=> b!5629799 (= e!3469934 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 lt!2262089)))))))

(declare-fun bm!424299 () Bool)

(assert (=> bm!424299 (= call!424299 call!424300)))

(declare-fun b!5629800 () Bool)

(declare-fun c!988548 () Bool)

(assert (=> b!5629800 (= c!988548 ((_ is Star!15621) (h!69487 (exprs!5505 lt!2262089))))))

(declare-fun e!3469936 () (InoxSet Context!10010))

(assert (=> b!5629800 (= e!3469938 e!3469936)))

(declare-fun b!5629801 () Bool)

(assert (=> b!5629801 (= e!3469936 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629802 () Bool)

(assert (=> b!5629802 (= e!3469936 call!424304)))

(assert (= (and d!1778294 c!988549) b!5629797))

(assert (= (and d!1778294 (not c!988549)) b!5629792))

(assert (= (and b!5629792 c!988547) b!5629794))

(assert (= (and b!5629792 (not c!988547)) b!5629795))

(assert (= (and b!5629795 res!2384176) b!5629799))

(assert (= (and b!5629795 c!988550) b!5629796))

(assert (= (and b!5629795 (not c!988550)) b!5629793))

(assert (= (and b!5629793 c!988551) b!5629798))

(assert (= (and b!5629793 (not c!988551)) b!5629800))

(assert (= (and b!5629800 c!988548) b!5629802))

(assert (= (and b!5629800 (not c!988548)) b!5629801))

(assert (= (or b!5629798 b!5629802) bm!424299))

(assert (= (or b!5629798 b!5629802) bm!424294))

(assert (= (or b!5629796 bm!424299) bm!424298))

(assert (= (or b!5629796 bm!424294) bm!424296))

(assert (= (or b!5629794 b!5629796) bm!424297))

(assert (= (or b!5629794 bm!424296) bm!424295))

(declare-fun m!6601258 () Bool)

(assert (=> bm!424298 m!6601258))

(declare-fun m!6601260 () Bool)

(assert (=> bm!424297 m!6601260))

(declare-fun m!6601262 () Bool)

(assert (=> b!5629799 m!6601262))

(declare-fun m!6601264 () Bool)

(assert (=> bm!424295 m!6601264))

(declare-fun m!6601266 () Bool)

(assert (=> b!5629797 m!6601266))

(assert (=> bm!424158 d!1778294))

(declare-fun bs!1302881 () Bool)

(declare-fun d!1778296 () Bool)

(assert (= bs!1302881 (and d!1778296 d!1778278)))

(declare-fun lambda!302509 () Int)

(assert (=> bs!1302881 (= lambda!302509 lambda!302507)))

(declare-fun bs!1302882 () Bool)

(assert (= bs!1302882 (and d!1778296 d!1778292)))

(assert (=> bs!1302882 (= lambda!302509 lambda!302508)))

(assert (=> d!1778296 (= (nullableZipper!1603 lt!2262080) (exists!2186 lt!2262080 lambda!302509))))

(declare-fun bs!1302883 () Bool)

(assert (= bs!1302883 d!1778296))

(declare-fun m!6601268 () Bool)

(assert (=> bs!1302883 m!6601268))

(assert (=> b!5628713 d!1778296))

(declare-fun d!1778298 () Bool)

(declare-fun e!3469943 () Bool)

(assert (=> d!1778298 e!3469943))

(declare-fun res!2384181 () Bool)

(assert (=> d!1778298 (=> (not res!2384181) (not e!3469943))))

(declare-fun lt!2262211 () List!63162)

(declare-fun content!11397 (List!63162) (InoxSet C!31512))

(assert (=> d!1778298 (= res!2384181 (= (content!11397 lt!2262211) ((_ map or) (content!11397 (_1!36021 (get!21715 lt!2262150))) (content!11397 (_2!36021 (get!21715 lt!2262150))))))))

(declare-fun e!3469944 () List!63162)

(assert (=> d!1778298 (= lt!2262211 e!3469944)))

(declare-fun c!988554 () Bool)

(assert (=> d!1778298 (= c!988554 ((_ is Nil!63038) (_1!36021 (get!21715 lt!2262150))))))

(assert (=> d!1778298 (= (++!13837 (_1!36021 (get!21715 lt!2262150)) (_2!36021 (get!21715 lt!2262150))) lt!2262211)))

(declare-fun b!5629811 () Bool)

(assert (=> b!5629811 (= e!3469944 (_2!36021 (get!21715 lt!2262150)))))

(declare-fun b!5629812 () Bool)

(assert (=> b!5629812 (= e!3469944 (Cons!63038 (h!69486 (_1!36021 (get!21715 lt!2262150))) (++!13837 (t!376454 (_1!36021 (get!21715 lt!2262150))) (_2!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5629814 () Bool)

(assert (=> b!5629814 (= e!3469943 (or (not (= (_2!36021 (get!21715 lt!2262150)) Nil!63038)) (= lt!2262211 (_1!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5629813 () Bool)

(declare-fun res!2384182 () Bool)

(assert (=> b!5629813 (=> (not res!2384182) (not e!3469943))))

(declare-fun size!39979 (List!63162) Int)

(assert (=> b!5629813 (= res!2384182 (= (size!39979 lt!2262211) (+ (size!39979 (_1!36021 (get!21715 lt!2262150))) (size!39979 (_2!36021 (get!21715 lt!2262150))))))))

(assert (= (and d!1778298 c!988554) b!5629811))

(assert (= (and d!1778298 (not c!988554)) b!5629812))

(assert (= (and d!1778298 res!2384181) b!5629813))

(assert (= (and b!5629813 res!2384182) b!5629814))

(declare-fun m!6601270 () Bool)

(assert (=> d!1778298 m!6601270))

(declare-fun m!6601272 () Bool)

(assert (=> d!1778298 m!6601272))

(declare-fun m!6601274 () Bool)

(assert (=> d!1778298 m!6601274))

(declare-fun m!6601276 () Bool)

(assert (=> b!5629812 m!6601276))

(declare-fun m!6601278 () Bool)

(assert (=> b!5629813 m!6601278))

(declare-fun m!6601280 () Bool)

(assert (=> b!5629813 m!6601280))

(declare-fun m!6601282 () Bool)

(assert (=> b!5629813 m!6601282))

(assert (=> b!5628784 d!1778298))

(declare-fun d!1778300 () Bool)

(assert (=> d!1778300 (= (get!21715 lt!2262150) (v!51674 lt!2262150))))

(assert (=> b!5628784 d!1778300))

(declare-fun d!1778302 () Bool)

(assert (=> d!1778302 (= (isEmpty!34874 (t!376455 (unfocusZipperList!1049 zl!343))) ((_ is Nil!63039) (t!376455 (unfocusZipperList!1049 zl!343))))))

(assert (=> b!5629001 d!1778302))

(declare-fun d!1778304 () Bool)

(declare-fun c!988555 () Bool)

(assert (=> d!1778304 (= c!988555 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3469945 () Bool)

(assert (=> d!1778304 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262068 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3469945)))

(declare-fun b!5629815 () Bool)

(assert (=> b!5629815 (= e!3469945 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262068 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5629816 () Bool)

(assert (=> b!5629816 (= e!3469945 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262068 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778304 c!988555) b!5629815))

(assert (= (and d!1778304 (not c!988555)) b!5629816))

(assert (=> d!1778304 m!6600292))

(declare-fun m!6601284 () Bool)

(assert (=> d!1778304 m!6601284))

(assert (=> b!5629815 m!6600602))

(declare-fun m!6601286 () Bool)

(assert (=> b!5629815 m!6601286))

(assert (=> b!5629816 m!6600292))

(declare-fun m!6601288 () Bool)

(assert (=> b!5629816 m!6601288))

(assert (=> b!5629816 m!6600602))

(assert (=> b!5629816 m!6601288))

(declare-fun m!6601290 () Bool)

(assert (=> b!5629816 m!6601290))

(assert (=> b!5629816 m!6600292))

(declare-fun m!6601292 () Bool)

(assert (=> b!5629816 m!6601292))

(assert (=> b!5629816 m!6601290))

(assert (=> b!5629816 m!6601292))

(declare-fun m!6601294 () Bool)

(assert (=> b!5629816 m!6601294))

(assert (=> b!5629082 d!1778304))

(declare-fun bs!1302884 () Bool)

(declare-fun d!1778306 () Bool)

(assert (= bs!1302884 (and d!1778306 b!5628366)))

(declare-fun lambda!302510 () Int)

(assert (=> bs!1302884 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302510 lambda!302400))))

(declare-fun bs!1302885 () Bool)

(assert (= bs!1302885 (and d!1778306 d!1777946)))

(assert (=> bs!1302885 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302510 lambda!302460))))

(declare-fun bs!1302886 () Bool)

(assert (= bs!1302886 (and d!1778306 d!1777980)))

(assert (=> bs!1302886 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302510 lambda!302464))))

(assert (=> d!1778306 true))

(assert (=> d!1778306 (= (derivationStepZipper!1708 lt!2262068 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262068 lambda!302510))))

(declare-fun bs!1302887 () Bool)

(assert (= bs!1302887 d!1778306))

(declare-fun m!6601296 () Bool)

(assert (=> bs!1302887 m!6601296))

(assert (=> b!5629082 d!1778306))

(declare-fun d!1778308 () Bool)

(assert (=> d!1778308 (= (head!11986 (t!376454 s!2326)) (h!69486 (t!376454 s!2326)))))

(assert (=> b!5629082 d!1778308))

(declare-fun d!1778310 () Bool)

(assert (=> d!1778310 (= (tail!11081 (t!376454 s!2326)) (t!376454 (t!376454 s!2326)))))

(assert (=> b!5629082 d!1778310))

(declare-fun b!5629817 () Bool)

(declare-fun e!3469948 () (InoxSet Context!10010))

(declare-fun e!3469950 () (InoxSet Context!10010))

(assert (=> b!5629817 (= e!3469948 e!3469950)))

(declare-fun c!988556 () Bool)

(assert (=> b!5629817 (= c!988556 ((_ is Union!15621) (h!69487 (exprs!5505 lt!2262076))))))

(declare-fun b!5629818 () Bool)

(declare-fun e!3469946 () (InoxSet Context!10010))

(declare-fun e!3469951 () (InoxSet Context!10010))

(assert (=> b!5629818 (= e!3469946 e!3469951)))

(declare-fun c!988560 () Bool)

(assert (=> b!5629818 (= c!988560 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262076))))))

(declare-fun b!5629819 () Bool)

(declare-fun call!424308 () (InoxSet Context!10010))

(declare-fun call!424307 () (InoxSet Context!10010))

(assert (=> b!5629819 (= e!3469950 ((_ map or) call!424308 call!424307))))

(declare-fun bm!424300 () Bool)

(declare-fun call!424310 () (InoxSet Context!10010))

(declare-fun call!424309 () (InoxSet Context!10010))

(assert (=> bm!424300 (= call!424310 call!424309)))

(declare-fun d!1778312 () Bool)

(declare-fun c!988558 () Bool)

(assert (=> d!1778312 (= c!988558 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 lt!2262076))) (= (c!988159 (h!69487 (exprs!5505 lt!2262076))) (h!69486 s!2326))))))

(assert (=> d!1778312 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262076)) (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (h!69486 s!2326)) e!3469948)))

(declare-fun b!5629820 () Bool)

(declare-fun c!988559 () Bool)

(declare-fun e!3469947 () Bool)

(assert (=> b!5629820 (= c!988559 e!3469947)))

(declare-fun res!2384183 () Bool)

(assert (=> b!5629820 (=> (not res!2384183) (not e!3469947))))

(assert (=> b!5629820 (= res!2384183 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262076))))))

(assert (=> b!5629820 (= e!3469950 e!3469946)))

(declare-fun call!424305 () List!63163)

(declare-fun bm!424301 () Bool)

(assert (=> bm!424301 (= call!424308 (derivationStepZipperDown!963 (ite c!988556 (regOne!31755 (h!69487 (exprs!5505 lt!2262076))) (ite c!988559 (regTwo!31754 (h!69487 (exprs!5505 lt!2262076))) (ite c!988560 (regOne!31754 (h!69487 (exprs!5505 lt!2262076))) (reg!15950 (h!69487 (exprs!5505 lt!2262076)))))) (ite (or c!988556 c!988559) (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (Context!10011 call!424305)) (h!69486 s!2326)))))

(declare-fun bm!424302 () Bool)

(assert (=> bm!424302 (= call!424309 call!424308)))

(declare-fun call!424306 () List!63163)

(declare-fun bm!424303 () Bool)

(assert (=> bm!424303 (= call!424307 (derivationStepZipperDown!963 (ite c!988556 (regTwo!31755 (h!69487 (exprs!5505 lt!2262076))) (regOne!31754 (h!69487 (exprs!5505 lt!2262076)))) (ite c!988556 (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (Context!10011 call!424306)) (h!69486 s!2326)))))

(declare-fun bm!424304 () Bool)

(assert (=> bm!424304 (= call!424306 ($colon$colon!1671 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076)))) (ite (or c!988559 c!988560) (regTwo!31754 (h!69487 (exprs!5505 lt!2262076))) (h!69487 (exprs!5505 lt!2262076)))))))

(declare-fun b!5629821 () Bool)

(assert (=> b!5629821 (= e!3469946 ((_ map or) call!424307 call!424309))))

(declare-fun b!5629822 () Bool)

(assert (=> b!5629822 (= e!3469948 (store ((as const (Array Context!10010 Bool)) false) (Context!10011 (t!376455 (exprs!5505 lt!2262076))) true))))

(declare-fun b!5629823 () Bool)

(assert (=> b!5629823 (= e!3469951 call!424310)))

(declare-fun b!5629824 () Bool)

(assert (=> b!5629824 (= e!3469947 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 lt!2262076)))))))

(declare-fun bm!424305 () Bool)

(assert (=> bm!424305 (= call!424305 call!424306)))

(declare-fun b!5629825 () Bool)

(declare-fun c!988557 () Bool)

(assert (=> b!5629825 (= c!988557 ((_ is Star!15621) (h!69487 (exprs!5505 lt!2262076))))))

(declare-fun e!3469949 () (InoxSet Context!10010))

(assert (=> b!5629825 (= e!3469951 e!3469949)))

(declare-fun b!5629826 () Bool)

(assert (=> b!5629826 (= e!3469949 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629827 () Bool)

(assert (=> b!5629827 (= e!3469949 call!424310)))

(assert (= (and d!1778312 c!988558) b!5629822))

(assert (= (and d!1778312 (not c!988558)) b!5629817))

(assert (= (and b!5629817 c!988556) b!5629819))

(assert (= (and b!5629817 (not c!988556)) b!5629820))

(assert (= (and b!5629820 res!2384183) b!5629824))

(assert (= (and b!5629820 c!988559) b!5629821))

(assert (= (and b!5629820 (not c!988559)) b!5629818))

(assert (= (and b!5629818 c!988560) b!5629823))

(assert (= (and b!5629818 (not c!988560)) b!5629825))

(assert (= (and b!5629825 c!988557) b!5629827))

(assert (= (and b!5629825 (not c!988557)) b!5629826))

(assert (= (or b!5629823 b!5629827) bm!424305))

(assert (= (or b!5629823 b!5629827) bm!424300))

(assert (= (or b!5629821 bm!424305) bm!424304))

(assert (= (or b!5629821 bm!424300) bm!424302))

(assert (= (or b!5629819 b!5629821) bm!424303))

(assert (= (or b!5629819 bm!424302) bm!424301))

(declare-fun m!6601298 () Bool)

(assert (=> bm!424304 m!6601298))

(declare-fun m!6601300 () Bool)

(assert (=> bm!424303 m!6601300))

(declare-fun m!6601302 () Bool)

(assert (=> b!5629824 m!6601302))

(declare-fun m!6601304 () Bool)

(assert (=> bm!424301 m!6601304))

(declare-fun m!6601306 () Bool)

(assert (=> b!5629822 m!6601306))

(assert (=> bm!424159 d!1778312))

(declare-fun b!5629828 () Bool)

(declare-fun e!3469954 () (InoxSet Context!10010))

(declare-fun e!3469956 () (InoxSet Context!10010))

(assert (=> b!5629828 (= e!3469954 e!3469956)))

(declare-fun c!988561 () Bool)

(assert (=> b!5629828 (= c!988561 ((_ is Union!15621) (h!69487 (exprs!5505 lt!2262088))))))

(declare-fun b!5629829 () Bool)

(declare-fun e!3469952 () (InoxSet Context!10010))

(declare-fun e!3469957 () (InoxSet Context!10010))

(assert (=> b!5629829 (= e!3469952 e!3469957)))

(declare-fun c!988565 () Bool)

(assert (=> b!5629829 (= c!988565 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262088))))))

(declare-fun b!5629830 () Bool)

(declare-fun call!424314 () (InoxSet Context!10010))

(declare-fun call!424313 () (InoxSet Context!10010))

(assert (=> b!5629830 (= e!3469956 ((_ map or) call!424314 call!424313))))

(declare-fun bm!424306 () Bool)

(declare-fun call!424316 () (InoxSet Context!10010))

(declare-fun call!424315 () (InoxSet Context!10010))

(assert (=> bm!424306 (= call!424316 call!424315)))

(declare-fun d!1778314 () Bool)

(declare-fun c!988563 () Bool)

(assert (=> d!1778314 (= c!988563 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 lt!2262088))) (= (c!988159 (h!69487 (exprs!5505 lt!2262088))) (h!69486 s!2326))))))

(assert (=> d!1778314 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 lt!2262088)) (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (h!69486 s!2326)) e!3469954)))

(declare-fun b!5629831 () Bool)

(declare-fun c!988564 () Bool)

(declare-fun e!3469953 () Bool)

(assert (=> b!5629831 (= c!988564 e!3469953)))

(declare-fun res!2384184 () Bool)

(assert (=> b!5629831 (=> (not res!2384184) (not e!3469953))))

(assert (=> b!5629831 (= res!2384184 ((_ is Concat!24466) (h!69487 (exprs!5505 lt!2262088))))))

(assert (=> b!5629831 (= e!3469956 e!3469952)))

(declare-fun call!424311 () List!63163)

(declare-fun bm!424307 () Bool)

(assert (=> bm!424307 (= call!424314 (derivationStepZipperDown!963 (ite c!988561 (regOne!31755 (h!69487 (exprs!5505 lt!2262088))) (ite c!988564 (regTwo!31754 (h!69487 (exprs!5505 lt!2262088))) (ite c!988565 (regOne!31754 (h!69487 (exprs!5505 lt!2262088))) (reg!15950 (h!69487 (exprs!5505 lt!2262088)))))) (ite (or c!988561 c!988564) (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (Context!10011 call!424311)) (h!69486 s!2326)))))

(declare-fun bm!424308 () Bool)

(assert (=> bm!424308 (= call!424315 call!424314)))

(declare-fun bm!424309 () Bool)

(declare-fun call!424312 () List!63163)

(assert (=> bm!424309 (= call!424313 (derivationStepZipperDown!963 (ite c!988561 (regTwo!31755 (h!69487 (exprs!5505 lt!2262088))) (regOne!31754 (h!69487 (exprs!5505 lt!2262088)))) (ite c!988561 (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (Context!10011 call!424312)) (h!69486 s!2326)))))

(declare-fun bm!424310 () Bool)

(assert (=> bm!424310 (= call!424312 ($colon$colon!1671 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088)))) (ite (or c!988564 c!988565) (regTwo!31754 (h!69487 (exprs!5505 lt!2262088))) (h!69487 (exprs!5505 lt!2262088)))))))

(declare-fun b!5629832 () Bool)

(assert (=> b!5629832 (= e!3469952 ((_ map or) call!424313 call!424315))))

(declare-fun b!5629833 () Bool)

(assert (=> b!5629833 (= e!3469954 (store ((as const (Array Context!10010 Bool)) false) (Context!10011 (t!376455 (exprs!5505 lt!2262088))) true))))

(declare-fun b!5629834 () Bool)

(assert (=> b!5629834 (= e!3469957 call!424316)))

(declare-fun b!5629835 () Bool)

(assert (=> b!5629835 (= e!3469953 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 lt!2262088)))))))

(declare-fun bm!424311 () Bool)

(assert (=> bm!424311 (= call!424311 call!424312)))

(declare-fun b!5629836 () Bool)

(declare-fun c!988562 () Bool)

(assert (=> b!5629836 (= c!988562 ((_ is Star!15621) (h!69487 (exprs!5505 lt!2262088))))))

(declare-fun e!3469955 () (InoxSet Context!10010))

(assert (=> b!5629836 (= e!3469957 e!3469955)))

(declare-fun b!5629837 () Bool)

(assert (=> b!5629837 (= e!3469955 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629838 () Bool)

(assert (=> b!5629838 (= e!3469955 call!424316)))

(assert (= (and d!1778314 c!988563) b!5629833))

(assert (= (and d!1778314 (not c!988563)) b!5629828))

(assert (= (and b!5629828 c!988561) b!5629830))

(assert (= (and b!5629828 (not c!988561)) b!5629831))

(assert (= (and b!5629831 res!2384184) b!5629835))

(assert (= (and b!5629831 c!988564) b!5629832))

(assert (= (and b!5629831 (not c!988564)) b!5629829))

(assert (= (and b!5629829 c!988565) b!5629834))

(assert (= (and b!5629829 (not c!988565)) b!5629836))

(assert (= (and b!5629836 c!988562) b!5629838))

(assert (= (and b!5629836 (not c!988562)) b!5629837))

(assert (= (or b!5629834 b!5629838) bm!424311))

(assert (= (or b!5629834 b!5629838) bm!424306))

(assert (= (or b!5629832 bm!424311) bm!424310))

(assert (= (or b!5629832 bm!424306) bm!424308))

(assert (= (or b!5629830 b!5629832) bm!424309))

(assert (= (or b!5629830 bm!424308) bm!424307))

(declare-fun m!6601308 () Bool)

(assert (=> bm!424310 m!6601308))

(declare-fun m!6601310 () Bool)

(assert (=> bm!424309 m!6601310))

(declare-fun m!6601312 () Bool)

(assert (=> b!5629835 m!6601312))

(declare-fun m!6601314 () Bool)

(assert (=> bm!424307 m!6601314))

(declare-fun m!6601316 () Bool)

(assert (=> b!5629833 m!6601316))

(assert (=> bm!424145 d!1778314))

(declare-fun d!1778316 () Bool)

(declare-fun c!988566 () Bool)

(assert (=> d!1778316 (= c!988566 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3469958 () Bool)

(assert (=> d!1778316 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262067 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3469958)))

(declare-fun b!5629839 () Bool)

(assert (=> b!5629839 (= e!3469958 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262067 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5629840 () Bool)

(assert (=> b!5629840 (= e!3469958 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262067 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778316 c!988566) b!5629839))

(assert (= (and d!1778316 (not c!988566)) b!5629840))

(assert (=> d!1778316 m!6600292))

(assert (=> d!1778316 m!6601284))

(assert (=> b!5629839 m!6600624))

(declare-fun m!6601318 () Bool)

(assert (=> b!5629839 m!6601318))

(assert (=> b!5629840 m!6600292))

(assert (=> b!5629840 m!6601288))

(assert (=> b!5629840 m!6600624))

(assert (=> b!5629840 m!6601288))

(declare-fun m!6601320 () Bool)

(assert (=> b!5629840 m!6601320))

(assert (=> b!5629840 m!6600292))

(assert (=> b!5629840 m!6601292))

(assert (=> b!5629840 m!6601320))

(assert (=> b!5629840 m!6601292))

(declare-fun m!6601322 () Bool)

(assert (=> b!5629840 m!6601322))

(assert (=> b!5629088 d!1778316))

(declare-fun bs!1302888 () Bool)

(declare-fun d!1778318 () Bool)

(assert (= bs!1302888 (and d!1778318 b!5628366)))

(declare-fun lambda!302511 () Int)

(assert (=> bs!1302888 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302511 lambda!302400))))

(declare-fun bs!1302889 () Bool)

(assert (= bs!1302889 (and d!1778318 d!1777946)))

(assert (=> bs!1302889 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302511 lambda!302460))))

(declare-fun bs!1302890 () Bool)

(assert (= bs!1302890 (and d!1778318 d!1777980)))

(assert (=> bs!1302890 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302511 lambda!302464))))

(declare-fun bs!1302891 () Bool)

(assert (= bs!1302891 (and d!1778318 d!1778306)))

(assert (=> bs!1302891 (= lambda!302511 lambda!302510)))

(assert (=> d!1778318 true))

(assert (=> d!1778318 (= (derivationStepZipper!1708 lt!2262067 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262067 lambda!302511))))

(declare-fun bs!1302892 () Bool)

(assert (= bs!1302892 d!1778318))

(declare-fun m!6601324 () Bool)

(assert (=> bs!1302892 m!6601324))

(assert (=> b!5629088 d!1778318))

(assert (=> b!5629088 d!1778308))

(assert (=> b!5629088 d!1778310))

(declare-fun d!1778320 () Bool)

(assert (=> d!1778320 (= (nullable!5653 (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))) (nullableFct!1749 (regOne!31754 (regOne!31754 (regOne!31754 r!7292)))))))

(declare-fun bs!1302893 () Bool)

(assert (= bs!1302893 d!1778320))

(declare-fun m!6601326 () Bool)

(assert (=> bs!1302893 m!6601326))

(assert (=> b!5629034 d!1778320))

(declare-fun d!1778322 () Bool)

(assert (=> d!1778322 (= (isEmpty!34877 s!2326) ((_ is Nil!63038) s!2326))))

(assert (=> d!1777826 d!1778322))

(assert (=> d!1777826 d!1777982))

(declare-fun d!1778324 () Bool)

(declare-fun c!988567 () Bool)

(assert (=> d!1778324 (= c!988567 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3469959 () Bool)

(assert (=> d!1778324 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262073 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3469959)))

(declare-fun b!5629841 () Bool)

(assert (=> b!5629841 (= e!3469959 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262073 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5629842 () Bool)

(assert (=> b!5629842 (= e!3469959 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262073 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778324 c!988567) b!5629841))

(assert (= (and d!1778324 (not c!988567)) b!5629842))

(assert (=> d!1778324 m!6600292))

(assert (=> d!1778324 m!6601284))

(assert (=> b!5629841 m!6600290))

(declare-fun m!6601328 () Bool)

(assert (=> b!5629841 m!6601328))

(assert (=> b!5629842 m!6600292))

(assert (=> b!5629842 m!6601288))

(assert (=> b!5629842 m!6600290))

(assert (=> b!5629842 m!6601288))

(declare-fun m!6601330 () Bool)

(assert (=> b!5629842 m!6601330))

(assert (=> b!5629842 m!6600292))

(assert (=> b!5629842 m!6601292))

(assert (=> b!5629842 m!6601330))

(assert (=> b!5629842 m!6601292))

(declare-fun m!6601332 () Bool)

(assert (=> b!5629842 m!6601332))

(assert (=> b!5628710 d!1778324))

(declare-fun bs!1302894 () Bool)

(declare-fun d!1778326 () Bool)

(assert (= bs!1302894 (and d!1778326 d!1777980)))

(declare-fun lambda!302512 () Int)

(assert (=> bs!1302894 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302512 lambda!302464))))

(declare-fun bs!1302895 () Bool)

(assert (= bs!1302895 (and d!1778326 d!1777946)))

(assert (=> bs!1302895 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302512 lambda!302460))))

(declare-fun bs!1302896 () Bool)

(assert (= bs!1302896 (and d!1778326 d!1778306)))

(assert (=> bs!1302896 (= lambda!302512 lambda!302510)))

(declare-fun bs!1302897 () Bool)

(assert (= bs!1302897 (and d!1778326 b!5628366)))

(assert (=> bs!1302897 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302512 lambda!302400))))

(declare-fun bs!1302898 () Bool)

(assert (= bs!1302898 (and d!1778326 d!1778318)))

(assert (=> bs!1302898 (= lambda!302512 lambda!302511)))

(assert (=> d!1778326 true))

(assert (=> d!1778326 (= (derivationStepZipper!1708 lt!2262073 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262073 lambda!302512))))

(declare-fun bs!1302899 () Bool)

(assert (= bs!1302899 d!1778326))

(declare-fun m!6601334 () Bool)

(assert (=> bs!1302899 m!6601334))

(assert (=> b!5628710 d!1778326))

(assert (=> b!5628710 d!1778308))

(assert (=> b!5628710 d!1778310))

(declare-fun d!1778328 () Bool)

(declare-fun c!988570 () Bool)

(assert (=> d!1778328 (= c!988570 ((_ is Nil!63040) lt!2262167))))

(declare-fun e!3469962 () (InoxSet Context!10010))

(assert (=> d!1778328 (= (content!11394 lt!2262167) e!3469962)))

(declare-fun b!5629847 () Bool)

(assert (=> b!5629847 (= e!3469962 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629848 () Bool)

(assert (=> b!5629848 (= e!3469962 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) (h!69488 lt!2262167) true) (content!11394 (t!376456 lt!2262167))))))

(assert (= (and d!1778328 c!988570) b!5629847))

(assert (= (and d!1778328 (not c!988570)) b!5629848))

(declare-fun m!6601336 () Bool)

(assert (=> b!5629848 m!6601336))

(declare-fun m!6601338 () Bool)

(assert (=> b!5629848 m!6601338))

(assert (=> b!5628921 d!1778328))

(declare-fun b!5629849 () Bool)

(declare-fun e!3469967 () Bool)

(assert (=> b!5629849 (= e!3469967 (not (= (head!11986 s!2326) (c!988159 (regTwo!31754 r!7292)))))))

(declare-fun b!5629850 () Bool)

(declare-fun res!2384189 () Bool)

(declare-fun e!3469964 () Bool)

(assert (=> b!5629850 (=> (not res!2384189) (not e!3469964))))

(declare-fun call!424317 () Bool)

(assert (=> b!5629850 (= res!2384189 (not call!424317))))

(declare-fun b!5629851 () Bool)

(declare-fun res!2384187 () Bool)

(assert (=> b!5629851 (=> (not res!2384187) (not e!3469964))))

(assert (=> b!5629851 (= res!2384187 (isEmpty!34877 (tail!11081 s!2326)))))

(declare-fun b!5629852 () Bool)

(declare-fun e!3469969 () Bool)

(assert (=> b!5629852 (= e!3469969 (nullable!5653 (regTwo!31754 r!7292)))))

(declare-fun b!5629853 () Bool)

(declare-fun res!2384188 () Bool)

(declare-fun e!3469966 () Bool)

(assert (=> b!5629853 (=> res!2384188 e!3469966)))

(assert (=> b!5629853 (= res!2384188 e!3469964)))

(declare-fun res!2384192 () Bool)

(assert (=> b!5629853 (=> (not res!2384192) (not e!3469964))))

(declare-fun lt!2262212 () Bool)

(assert (=> b!5629853 (= res!2384192 lt!2262212)))

(declare-fun b!5629854 () Bool)

(declare-fun e!3469968 () Bool)

(assert (=> b!5629854 (= e!3469968 e!3469967)))

(declare-fun res!2384191 () Bool)

(assert (=> b!5629854 (=> res!2384191 e!3469967)))

(assert (=> b!5629854 (= res!2384191 call!424317)))

(declare-fun b!5629856 () Bool)

(declare-fun res!2384190 () Bool)

(assert (=> b!5629856 (=> res!2384190 e!3469967)))

(assert (=> b!5629856 (= res!2384190 (not (isEmpty!34877 (tail!11081 s!2326))))))

(declare-fun b!5629857 () Bool)

(declare-fun e!3469965 () Bool)

(declare-fun e!3469963 () Bool)

(assert (=> b!5629857 (= e!3469965 e!3469963)))

(declare-fun c!988572 () Bool)

(assert (=> b!5629857 (= c!988572 ((_ is EmptyLang!15621) (regTwo!31754 r!7292)))))

(declare-fun bm!424312 () Bool)

(assert (=> bm!424312 (= call!424317 (isEmpty!34877 s!2326))))

(declare-fun b!5629858 () Bool)

(declare-fun res!2384186 () Bool)

(assert (=> b!5629858 (=> res!2384186 e!3469966)))

(assert (=> b!5629858 (= res!2384186 (not ((_ is ElementMatch!15621) (regTwo!31754 r!7292))))))

(assert (=> b!5629858 (= e!3469963 e!3469966)))

(declare-fun b!5629859 () Bool)

(assert (=> b!5629859 (= e!3469964 (= (head!11986 s!2326) (c!988159 (regTwo!31754 r!7292))))))

(declare-fun b!5629860 () Bool)

(assert (=> b!5629860 (= e!3469965 (= lt!2262212 call!424317))))

(declare-fun b!5629861 () Bool)

(assert (=> b!5629861 (= e!3469969 (matchR!7806 (derivativeStep!4456 (regTwo!31754 r!7292) (head!11986 s!2326)) (tail!11081 s!2326)))))

(declare-fun b!5629862 () Bool)

(assert (=> b!5629862 (= e!3469966 e!3469968)))

(declare-fun res!2384185 () Bool)

(assert (=> b!5629862 (=> (not res!2384185) (not e!3469968))))

(assert (=> b!5629862 (= res!2384185 (not lt!2262212))))

(declare-fun b!5629855 () Bool)

(assert (=> b!5629855 (= e!3469963 (not lt!2262212))))

(declare-fun d!1778330 () Bool)

(assert (=> d!1778330 e!3469965))

(declare-fun c!988573 () Bool)

(assert (=> d!1778330 (= c!988573 ((_ is EmptyExpr!15621) (regTwo!31754 r!7292)))))

(assert (=> d!1778330 (= lt!2262212 e!3469969)))

(declare-fun c!988571 () Bool)

(assert (=> d!1778330 (= c!988571 (isEmpty!34877 s!2326))))

(assert (=> d!1778330 (validRegex!7357 (regTwo!31754 r!7292))))

(assert (=> d!1778330 (= (matchR!7806 (regTwo!31754 r!7292) s!2326) lt!2262212)))

(assert (= (and d!1778330 c!988571) b!5629852))

(assert (= (and d!1778330 (not c!988571)) b!5629861))

(assert (= (and d!1778330 c!988573) b!5629860))

(assert (= (and d!1778330 (not c!988573)) b!5629857))

(assert (= (and b!5629857 c!988572) b!5629855))

(assert (= (and b!5629857 (not c!988572)) b!5629858))

(assert (= (and b!5629858 (not res!2384186)) b!5629853))

(assert (= (and b!5629853 res!2384192) b!5629850))

(assert (= (and b!5629850 res!2384189) b!5629851))

(assert (= (and b!5629851 res!2384187) b!5629859))

(assert (= (and b!5629853 (not res!2384188)) b!5629862))

(assert (= (and b!5629862 res!2384185) b!5629854))

(assert (= (and b!5629854 (not res!2384191)) b!5629856))

(assert (= (and b!5629856 (not res!2384190)) b!5629849))

(assert (= (or b!5629860 b!5629850 b!5629854) bm!424312))

(assert (=> b!5629849 m!6600268))

(assert (=> b!5629851 m!6600270))

(assert (=> b!5629851 m!6600270))

(assert (=> b!5629851 m!6600272))

(assert (=> b!5629859 m!6600268))

(declare-fun m!6601340 () Bool)

(assert (=> b!5629852 m!6601340))

(assert (=> bm!424312 m!6600222))

(assert (=> b!5629861 m!6600268))

(assert (=> b!5629861 m!6600268))

(declare-fun m!6601342 () Bool)

(assert (=> b!5629861 m!6601342))

(assert (=> b!5629861 m!6600270))

(assert (=> b!5629861 m!6601342))

(assert (=> b!5629861 m!6600270))

(declare-fun m!6601344 () Bool)

(assert (=> b!5629861 m!6601344))

(assert (=> d!1778330 m!6600222))

(declare-fun m!6601346 () Bool)

(assert (=> d!1778330 m!6601346))

(assert (=> b!5629856 m!6600270))

(assert (=> b!5629856 m!6600270))

(assert (=> b!5629856 m!6600272))

(assert (=> b!5628788 d!1778330))

(declare-fun d!1778332 () Bool)

(assert (=> d!1778332 (= (nullable!5653 r!7292) (nullableFct!1749 r!7292))))

(declare-fun bs!1302900 () Bool)

(assert (= bs!1302900 d!1778332))

(declare-fun m!6601348 () Bool)

(assert (=> bs!1302900 m!6601348))

(assert (=> b!5628651 d!1778332))

(declare-fun bs!1302901 () Bool)

(declare-fun d!1778334 () Bool)

(assert (= bs!1302901 (and d!1778334 d!1777938)))

(declare-fun lambda!302513 () Int)

(assert (=> bs!1302901 (= lambda!302513 lambda!302457)))

(declare-fun bs!1302902 () Bool)

(assert (= bs!1302902 (and d!1778334 d!1777956)))

(assert (=> bs!1302902 (= lambda!302513 lambda!302463)))

(declare-fun bs!1302903 () Bool)

(assert (= bs!1302903 (and d!1778334 d!1777842)))

(assert (=> bs!1302903 (= lambda!302513 lambda!302435)))

(declare-fun bs!1302904 () Bool)

(assert (= bs!1302904 (and d!1778334 d!1777934)))

(assert (=> bs!1302904 (= lambda!302513 lambda!302453)))

(declare-fun bs!1302905 () Bool)

(assert (= bs!1302905 (and d!1778334 d!1777936)))

(assert (=> bs!1302905 (= lambda!302513 lambda!302456)))

(assert (=> d!1778334 (= (inv!82299 (h!69488 (t!376456 zl!343))) (forall!14775 (exprs!5505 (h!69488 (t!376456 zl!343))) lambda!302513))))

(declare-fun bs!1302906 () Bool)

(assert (= bs!1302906 d!1778334))

(declare-fun m!6601350 () Bool)

(assert (=> bs!1302906 m!6601350))

(assert (=> b!5629173 d!1778334))

(declare-fun d!1778336 () Bool)

(assert (=> d!1778336 (= (isEmpty!34877 (tail!11081 s!2326)) ((_ is Nil!63038) (tail!11081 s!2326)))))

(assert (=> b!5628655 d!1778336))

(declare-fun d!1778338 () Bool)

(assert (=> d!1778338 (= (tail!11081 s!2326) (t!376454 s!2326))))

(assert (=> b!5628655 d!1778338))

(declare-fun d!1778340 () Bool)

(assert (=> d!1778340 (= (isUnion!602 lt!2262173) ((_ is Union!15621) lt!2262173))))

(assert (=> b!5629009 d!1778340))

(assert (=> d!1777966 d!1777958))

(declare-fun d!1778342 () Bool)

(assert (=> d!1778342 (= (flatMap!1234 lt!2262072 lambda!302400) (dynLambda!24650 lambda!302400 lt!2262089))))

(assert (=> d!1778342 true))

(declare-fun _$13!2258 () Unit!156016)

(assert (=> d!1778342 (= (choose!42668 lt!2262072 lt!2262089 lambda!302400) _$13!2258)))

(declare-fun b_lambda!212917 () Bool)

(assert (=> (not b_lambda!212917) (not d!1778342)))

(declare-fun bs!1302907 () Bool)

(assert (= bs!1302907 d!1778342))

(assert (=> bs!1302907 m!6599988))

(assert (=> bs!1302907 m!6600606))

(assert (=> d!1777966 d!1778342))

(assert (=> b!5628717 d!1777914))

(declare-fun d!1778344 () Bool)

(declare-fun res!2384197 () Bool)

(declare-fun e!3469974 () Bool)

(assert (=> d!1778344 (=> res!2384197 e!3469974)))

(assert (=> d!1778344 (= res!2384197 ((_ is Nil!63039) lt!2262176))))

(assert (=> d!1778344 (= (forall!14775 lt!2262176 lambda!302456) e!3469974)))

(declare-fun b!5629867 () Bool)

(declare-fun e!3469975 () Bool)

(assert (=> b!5629867 (= e!3469974 e!3469975)))

(declare-fun res!2384198 () Bool)

(assert (=> b!5629867 (=> (not res!2384198) (not e!3469975))))

(declare-fun dynLambda!24652 (Int Regex!15621) Bool)

(assert (=> b!5629867 (= res!2384198 (dynLambda!24652 lambda!302456 (h!69487 lt!2262176)))))

(declare-fun b!5629868 () Bool)

(assert (=> b!5629868 (= e!3469975 (forall!14775 (t!376455 lt!2262176) lambda!302456))))

(assert (= (and d!1778344 (not res!2384197)) b!5629867))

(assert (= (and b!5629867 res!2384198) b!5629868))

(declare-fun b_lambda!212919 () Bool)

(assert (=> (not b_lambda!212919) (not b!5629867)))

(declare-fun m!6601352 () Bool)

(assert (=> b!5629867 m!6601352))

(declare-fun m!6601354 () Bool)

(assert (=> b!5629868 m!6601354))

(assert (=> d!1777936 d!1778344))

(assert (=> b!5629080 d!1777972))

(assert (=> bm!424091 d!1778322))

(declare-fun d!1778346 () Bool)

(assert (=> d!1778346 (= (isEmpty!34878 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326)) (not ((_ is Some!15629) (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326))))))

(assert (=> d!1777912 d!1778346))

(declare-fun b!5629869 () Bool)

(declare-fun e!3469978 () (InoxSet Context!10010))

(declare-fun e!3469980 () (InoxSet Context!10010))

(assert (=> b!5629869 (= e!3469978 e!3469980)))

(declare-fun c!988574 () Bool)

(assert (=> b!5629869 (= c!988574 ((_ is Union!15621) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))))))

(declare-fun b!5629870 () Bool)

(declare-fun e!3469976 () (InoxSet Context!10010))

(declare-fun e!3469981 () (InoxSet Context!10010))

(assert (=> b!5629870 (= e!3469976 e!3469981)))

(declare-fun c!988578 () Bool)

(assert (=> b!5629870 (= c!988578 ((_ is Concat!24466) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))))))

(declare-fun b!5629871 () Bool)

(declare-fun call!424321 () (InoxSet Context!10010))

(declare-fun call!424320 () (InoxSet Context!10010))

(assert (=> b!5629871 (= e!3469980 ((_ map or) call!424321 call!424320))))

(declare-fun bm!424313 () Bool)

(declare-fun call!424323 () (InoxSet Context!10010))

(declare-fun call!424322 () (InoxSet Context!10010))

(assert (=> bm!424313 (= call!424323 call!424322)))

(declare-fun d!1778348 () Bool)

(declare-fun c!988576 () Bool)

(assert (=> d!1778348 (= c!988576 (and ((_ is ElementMatch!15621) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (= (c!988159 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (h!69486 s!2326))))))

(assert (=> d!1778348 (= (derivationStepZipperDown!963 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))) (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151)) (h!69486 s!2326)) e!3469978)))

(declare-fun b!5629872 () Bool)

(declare-fun c!988577 () Bool)

(declare-fun e!3469977 () Bool)

(assert (=> b!5629872 (= c!988577 e!3469977)))

(declare-fun res!2384199 () Bool)

(assert (=> b!5629872 (=> (not res!2384199) (not e!3469977))))

(assert (=> b!5629872 (= res!2384199 ((_ is Concat!24466) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))))))

(assert (=> b!5629872 (= e!3469980 e!3469976)))

(declare-fun bm!424314 () Bool)

(declare-fun call!424318 () List!63163)

(assert (=> bm!424314 (= call!424321 (derivationStepZipperDown!963 (ite c!988574 (regOne!31755 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (ite c!988577 (regTwo!31754 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (ite c!988578 (regOne!31754 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (reg!15950 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))))))) (ite (or c!988574 c!988577) (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151)) (Context!10011 call!424318)) (h!69486 s!2326)))))

(declare-fun bm!424315 () Bool)

(assert (=> bm!424315 (= call!424322 call!424321)))

(declare-fun call!424319 () List!63163)

(declare-fun bm!424316 () Bool)

(assert (=> bm!424316 (= call!424320 (derivationStepZipperDown!963 (ite c!988574 (regTwo!31755 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (regOne!31754 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))))) (ite c!988574 (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151)) (Context!10011 call!424319)) (h!69486 s!2326)))))

(declare-fun bm!424317 () Bool)

(assert (=> bm!424317 (= call!424319 ($colon$colon!1671 (exprs!5505 (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151))) (ite (or c!988577 c!988578) (regTwo!31754 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))))))))

(declare-fun b!5629873 () Bool)

(assert (=> b!5629873 (= e!3469976 ((_ map or) call!424320 call!424322))))

(declare-fun b!5629874 () Bool)

(assert (=> b!5629874 (= e!3469978 (store ((as const (Array Context!10010 Bool)) false) (ite (or c!988346 c!988349) lt!2262088 (Context!10011 call!424151)) true))))

(declare-fun b!5629875 () Bool)

(assert (=> b!5629875 (= e!3469981 call!424323)))

(declare-fun b!5629876 () Bool)

(assert (=> b!5629876 (= e!3469977 (nullable!5653 (regOne!31754 (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292)))))))))))

(declare-fun bm!424318 () Bool)

(assert (=> bm!424318 (= call!424318 call!424319)))

(declare-fun b!5629877 () Bool)

(declare-fun c!988575 () Bool)

(assert (=> b!5629877 (= c!988575 ((_ is Star!15621) (ite c!988346 (regOne!31755 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988349 (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (ite c!988350 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))) (reg!15950 (regTwo!31754 (regOne!31754 r!7292))))))))))

(declare-fun e!3469979 () (InoxSet Context!10010))

(assert (=> b!5629877 (= e!3469981 e!3469979)))

(declare-fun b!5629878 () Bool)

(assert (=> b!5629878 (= e!3469979 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629879 () Bool)

(assert (=> b!5629879 (= e!3469979 call!424323)))

(assert (= (and d!1778348 c!988576) b!5629874))

(assert (= (and d!1778348 (not c!988576)) b!5629869))

(assert (= (and b!5629869 c!988574) b!5629871))

(assert (= (and b!5629869 (not c!988574)) b!5629872))

(assert (= (and b!5629872 res!2384199) b!5629876))

(assert (= (and b!5629872 c!988577) b!5629873))

(assert (= (and b!5629872 (not c!988577)) b!5629870))

(assert (= (and b!5629870 c!988578) b!5629875))

(assert (= (and b!5629870 (not c!988578)) b!5629877))

(assert (= (and b!5629877 c!988575) b!5629879))

(assert (= (and b!5629877 (not c!988575)) b!5629878))

(assert (= (or b!5629875 b!5629879) bm!424318))

(assert (= (or b!5629875 b!5629879) bm!424313))

(assert (= (or b!5629873 bm!424318) bm!424317))

(assert (= (or b!5629873 bm!424313) bm!424315))

(assert (= (or b!5629871 b!5629873) bm!424316))

(assert (= (or b!5629871 bm!424315) bm!424314))

(declare-fun m!6601356 () Bool)

(assert (=> bm!424317 m!6601356))

(declare-fun m!6601358 () Bool)

(assert (=> bm!424316 m!6601358))

(declare-fun m!6601360 () Bool)

(assert (=> b!5629876 m!6601360))

(declare-fun m!6601362 () Bool)

(assert (=> bm!424314 m!6601362))

(declare-fun m!6601364 () Bool)

(assert (=> b!5629874 m!6601364))

(assert (=> bm!424147 d!1778348))

(declare-fun bs!1302908 () Bool)

(declare-fun b!5629884 () Bool)

(assert (= bs!1302908 (and b!5629884 b!5628570)))

(declare-fun lambda!302514 () Int)

(assert (=> bs!1302908 (not (= lambda!302514 lambda!302421))))

(declare-fun bs!1302909 () Bool)

(assert (= bs!1302909 (and b!5629884 b!5628564)))

(assert (=> bs!1302909 (= (and (= (reg!15950 (regTwo!31755 r!7292)) (reg!15950 r!7292)) (= (regTwo!31755 r!7292) r!7292)) (= lambda!302514 lambda!302419))))

(declare-fun bs!1302910 () Bool)

(assert (= bs!1302910 (and b!5629884 b!5628348)))

(assert (=> bs!1302910 (not (= lambda!302514 lambda!302399))))

(declare-fun bs!1302911 () Bool)

(assert (= bs!1302911 (and b!5629884 d!1777872)))

(assert (=> bs!1302911 (not (= lambda!302514 lambda!302443))))

(declare-fun bs!1302912 () Bool)

(assert (= bs!1302912 (and b!5629884 d!1777892)))

(assert (=> bs!1302912 (not (= lambda!302514 lambda!302449))))

(assert (=> bs!1302910 (not (= lambda!302514 lambda!302398))))

(assert (=> bs!1302912 (not (= lambda!302514 lambda!302450))))

(assert (=> b!5629884 true))

(assert (=> b!5629884 true))

(declare-fun bs!1302913 () Bool)

(declare-fun b!5629890 () Bool)

(assert (= bs!1302913 (and b!5629890 b!5628570)))

(declare-fun lambda!302515 () Int)

(assert (=> bs!1302913 (= (and (= (regOne!31754 (regTwo!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regTwo!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302515 lambda!302421))))

(declare-fun bs!1302914 () Bool)

(assert (= bs!1302914 (and b!5629890 b!5628564)))

(assert (=> bs!1302914 (not (= lambda!302515 lambda!302419))))

(declare-fun bs!1302915 () Bool)

(assert (= bs!1302915 (and b!5629890 b!5628348)))

(assert (=> bs!1302915 (= (and (= (regOne!31754 (regTwo!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regTwo!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302515 lambda!302399))))

(declare-fun bs!1302916 () Bool)

(assert (= bs!1302916 (and b!5629890 d!1777872)))

(assert (=> bs!1302916 (not (= lambda!302515 lambda!302443))))

(declare-fun bs!1302917 () Bool)

(assert (= bs!1302917 (and b!5629890 d!1777892)))

(assert (=> bs!1302917 (not (= lambda!302515 lambda!302449))))

(declare-fun bs!1302918 () Bool)

(assert (= bs!1302918 (and b!5629890 b!5629884)))

(assert (=> bs!1302918 (not (= lambda!302515 lambda!302514))))

(assert (=> bs!1302915 (not (= lambda!302515 lambda!302398))))

(assert (=> bs!1302917 (= (and (= (regOne!31754 (regTwo!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regTwo!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302515 lambda!302450))))

(assert (=> b!5629890 true))

(assert (=> b!5629890 true))

(declare-fun b!5629880 () Bool)

(declare-fun c!988581 () Bool)

(assert (=> b!5629880 (= c!988581 ((_ is Union!15621) (regTwo!31755 r!7292)))))

(declare-fun e!3469988 () Bool)

(declare-fun e!3469986 () Bool)

(assert (=> b!5629880 (= e!3469988 e!3469986)))

(declare-fun b!5629881 () Bool)

(declare-fun e!3469987 () Bool)

(declare-fun call!424325 () Bool)

(assert (=> b!5629881 (= e!3469987 call!424325)))

(declare-fun b!5629882 () Bool)

(declare-fun res!2384200 () Bool)

(declare-fun e!3469982 () Bool)

(assert (=> b!5629882 (=> res!2384200 e!3469982)))

(assert (=> b!5629882 (= res!2384200 call!424325)))

(declare-fun e!3469983 () Bool)

(assert (=> b!5629882 (= e!3469983 e!3469982)))

(declare-fun b!5629883 () Bool)

(assert (=> b!5629883 (= e!3469988 (= s!2326 (Cons!63038 (c!988159 (regTwo!31755 r!7292)) Nil!63038)))))

(declare-fun bm!424319 () Bool)

(assert (=> bm!424319 (= call!424325 (isEmpty!34877 s!2326))))

(declare-fun call!424324 () Bool)

(assert (=> b!5629884 (= e!3469982 call!424324)))

(declare-fun c!988579 () Bool)

(declare-fun bm!424320 () Bool)

(assert (=> bm!424320 (= call!424324 (Exists!2721 (ite c!988579 lambda!302514 lambda!302515)))))

(declare-fun b!5629885 () Bool)

(declare-fun e!3469985 () Bool)

(assert (=> b!5629885 (= e!3469986 e!3469985)))

(declare-fun res!2384201 () Bool)

(assert (=> b!5629885 (= res!2384201 (matchRSpec!2724 (regOne!31755 (regTwo!31755 r!7292)) s!2326))))

(assert (=> b!5629885 (=> res!2384201 e!3469985)))

(declare-fun d!1778350 () Bool)

(declare-fun c!988582 () Bool)

(assert (=> d!1778350 (= c!988582 ((_ is EmptyExpr!15621) (regTwo!31755 r!7292)))))

(assert (=> d!1778350 (= (matchRSpec!2724 (regTwo!31755 r!7292) s!2326) e!3469987)))

(declare-fun b!5629886 () Bool)

(assert (=> b!5629886 (= e!3469985 (matchRSpec!2724 (regTwo!31755 (regTwo!31755 r!7292)) s!2326))))

(declare-fun b!5629887 () Bool)

(declare-fun c!988580 () Bool)

(assert (=> b!5629887 (= c!988580 ((_ is ElementMatch!15621) (regTwo!31755 r!7292)))))

(declare-fun e!3469984 () Bool)

(assert (=> b!5629887 (= e!3469984 e!3469988)))

(declare-fun b!5629888 () Bool)

(assert (=> b!5629888 (= e!3469987 e!3469984)))

(declare-fun res!2384202 () Bool)

(assert (=> b!5629888 (= res!2384202 (not ((_ is EmptyLang!15621) (regTwo!31755 r!7292))))))

(assert (=> b!5629888 (=> (not res!2384202) (not e!3469984))))

(declare-fun b!5629889 () Bool)

(assert (=> b!5629889 (= e!3469986 e!3469983)))

(assert (=> b!5629889 (= c!988579 ((_ is Star!15621) (regTwo!31755 r!7292)))))

(assert (=> b!5629890 (= e!3469983 call!424324)))

(assert (= (and d!1778350 c!988582) b!5629881))

(assert (= (and d!1778350 (not c!988582)) b!5629888))

(assert (= (and b!5629888 res!2384202) b!5629887))

(assert (= (and b!5629887 c!988580) b!5629883))

(assert (= (and b!5629887 (not c!988580)) b!5629880))

(assert (= (and b!5629880 c!988581) b!5629885))

(assert (= (and b!5629880 (not c!988581)) b!5629889))

(assert (= (and b!5629885 (not res!2384201)) b!5629886))

(assert (= (and b!5629889 c!988579) b!5629882))

(assert (= (and b!5629889 (not c!988579)) b!5629890))

(assert (= (and b!5629882 (not res!2384200)) b!5629884))

(assert (= (or b!5629884 b!5629890) bm!424320))

(assert (= (or b!5629881 b!5629882) bm!424319))

(assert (=> bm!424319 m!6600222))

(declare-fun m!6601366 () Bool)

(assert (=> bm!424320 m!6601366))

(declare-fun m!6601368 () Bool)

(assert (=> b!5629885 m!6601368))

(declare-fun m!6601370 () Bool)

(assert (=> b!5629886 m!6601370))

(assert (=> b!5628566 d!1778350))

(declare-fun b!5629891 () Bool)

(declare-fun res!2384207 () Bool)

(declare-fun e!3469992 () Bool)

(assert (=> b!5629891 (=> (not res!2384207) (not e!3469992))))

(declare-fun call!424326 () Bool)

(assert (=> b!5629891 (= res!2384207 call!424326)))

(declare-fun e!3469994 () Bool)

(assert (=> b!5629891 (= e!3469994 e!3469992)))

(declare-fun b!5629892 () Bool)

(declare-fun e!3469995 () Bool)

(declare-fun call!424327 () Bool)

(assert (=> b!5629892 (= e!3469995 call!424327)))

(declare-fun b!5629893 () Bool)

(declare-fun e!3469990 () Bool)

(declare-fun call!424328 () Bool)

(assert (=> b!5629893 (= e!3469990 call!424328)))

(declare-fun c!988584 () Bool)

(declare-fun bm!424321 () Bool)

(declare-fun c!988583 () Bool)

(assert (=> bm!424321 (= call!424327 (validRegex!7357 (ite c!988583 (reg!15950 lt!2262180) (ite c!988584 (regTwo!31755 lt!2262180) (regTwo!31754 lt!2262180)))))))

(declare-fun b!5629894 () Bool)

(declare-fun e!3469993 () Bool)

(assert (=> b!5629894 (= e!3469993 e!3469994)))

(assert (=> b!5629894 (= c!988584 ((_ is Union!15621) lt!2262180))))

(declare-fun b!5629895 () Bool)

(assert (=> b!5629895 (= e!3469993 e!3469995)))

(declare-fun res!2384205 () Bool)

(assert (=> b!5629895 (= res!2384205 (not (nullable!5653 (reg!15950 lt!2262180))))))

(assert (=> b!5629895 (=> (not res!2384205) (not e!3469995))))

(declare-fun b!5629896 () Bool)

(assert (=> b!5629896 (= e!3469992 call!424328)))

(declare-fun b!5629897 () Bool)

(declare-fun e!3469991 () Bool)

(assert (=> b!5629897 (= e!3469991 e!3469990)))

(declare-fun res!2384203 () Bool)

(assert (=> b!5629897 (=> (not res!2384203) (not e!3469990))))

(assert (=> b!5629897 (= res!2384203 call!424326)))

(declare-fun b!5629898 () Bool)

(declare-fun e!3469989 () Bool)

(assert (=> b!5629898 (= e!3469989 e!3469993)))

(assert (=> b!5629898 (= c!988583 ((_ is Star!15621) lt!2262180))))

(declare-fun b!5629899 () Bool)

(declare-fun res!2384206 () Bool)

(assert (=> b!5629899 (=> res!2384206 e!3469991)))

(assert (=> b!5629899 (= res!2384206 (not ((_ is Concat!24466) lt!2262180)))))

(assert (=> b!5629899 (= e!3469994 e!3469991)))

(declare-fun bm!424323 () Bool)

(assert (=> bm!424323 (= call!424326 (validRegex!7357 (ite c!988584 (regOne!31755 lt!2262180) (regOne!31754 lt!2262180))))))

(declare-fun bm!424322 () Bool)

(assert (=> bm!424322 (= call!424328 call!424327)))

(declare-fun d!1778352 () Bool)

(declare-fun res!2384204 () Bool)

(assert (=> d!1778352 (=> res!2384204 e!3469989)))

(assert (=> d!1778352 (= res!2384204 ((_ is ElementMatch!15621) lt!2262180))))

(assert (=> d!1778352 (= (validRegex!7357 lt!2262180) e!3469989)))

(assert (= (and d!1778352 (not res!2384204)) b!5629898))

(assert (= (and b!5629898 c!988583) b!5629895))

(assert (= (and b!5629898 (not c!988583)) b!5629894))

(assert (= (and b!5629895 res!2384205) b!5629892))

(assert (= (and b!5629894 c!988584) b!5629891))

(assert (= (and b!5629894 (not c!988584)) b!5629899))

(assert (= (and b!5629891 res!2384207) b!5629896))

(assert (= (and b!5629899 (not res!2384206)) b!5629897))

(assert (= (and b!5629897 res!2384203) b!5629893))

(assert (= (or b!5629896 b!5629893) bm!424322))

(assert (= (or b!5629891 b!5629897) bm!424323))

(assert (= (or b!5629892 bm!424322) bm!424321))

(declare-fun m!6601372 () Bool)

(assert (=> bm!424321 m!6601372))

(declare-fun m!6601374 () Bool)

(assert (=> b!5629895 m!6601374))

(declare-fun m!6601376 () Bool)

(assert (=> bm!424323 m!6601376))

(assert (=> d!1777954 d!1778352))

(assert (=> d!1777954 d!1777934))

(assert (=> d!1777954 d!1777936))

(declare-fun b!5629900 () Bool)

(declare-fun res!2384212 () Bool)

(declare-fun e!3469999 () Bool)

(assert (=> b!5629900 (=> (not res!2384212) (not e!3469999))))

(declare-fun call!424329 () Bool)

(assert (=> b!5629900 (= res!2384212 call!424329)))

(declare-fun e!3470001 () Bool)

(assert (=> b!5629900 (= e!3470001 e!3469999)))

(declare-fun b!5629901 () Bool)

(declare-fun e!3470002 () Bool)

(declare-fun call!424330 () Bool)

(assert (=> b!5629901 (= e!3470002 call!424330)))

(declare-fun b!5629902 () Bool)

(declare-fun e!3469997 () Bool)

(declare-fun call!424331 () Bool)

(assert (=> b!5629902 (= e!3469997 call!424331)))

(declare-fun c!988585 () Bool)

(declare-fun c!988586 () Bool)

(declare-fun bm!424324 () Bool)

(assert (=> bm!424324 (= call!424330 (validRegex!7357 (ite c!988585 (reg!15950 lt!2262173) (ite c!988586 (regTwo!31755 lt!2262173) (regTwo!31754 lt!2262173)))))))

(declare-fun b!5629903 () Bool)

(declare-fun e!3470000 () Bool)

(assert (=> b!5629903 (= e!3470000 e!3470001)))

(assert (=> b!5629903 (= c!988586 ((_ is Union!15621) lt!2262173))))

(declare-fun b!5629904 () Bool)

(assert (=> b!5629904 (= e!3470000 e!3470002)))

(declare-fun res!2384210 () Bool)

(assert (=> b!5629904 (= res!2384210 (not (nullable!5653 (reg!15950 lt!2262173))))))

(assert (=> b!5629904 (=> (not res!2384210) (not e!3470002))))

(declare-fun b!5629905 () Bool)

(assert (=> b!5629905 (= e!3469999 call!424331)))

(declare-fun b!5629906 () Bool)

(declare-fun e!3469998 () Bool)

(assert (=> b!5629906 (= e!3469998 e!3469997)))

(declare-fun res!2384208 () Bool)

(assert (=> b!5629906 (=> (not res!2384208) (not e!3469997))))

(assert (=> b!5629906 (= res!2384208 call!424329)))

(declare-fun b!5629907 () Bool)

(declare-fun e!3469996 () Bool)

(assert (=> b!5629907 (= e!3469996 e!3470000)))

(assert (=> b!5629907 (= c!988585 ((_ is Star!15621) lt!2262173))))

(declare-fun b!5629908 () Bool)

(declare-fun res!2384211 () Bool)

(assert (=> b!5629908 (=> res!2384211 e!3469998)))

(assert (=> b!5629908 (= res!2384211 (not ((_ is Concat!24466) lt!2262173)))))

(assert (=> b!5629908 (= e!3470001 e!3469998)))

(declare-fun bm!424326 () Bool)

(assert (=> bm!424326 (= call!424329 (validRegex!7357 (ite c!988586 (regOne!31755 lt!2262173) (regOne!31754 lt!2262173))))))

(declare-fun bm!424325 () Bool)

(assert (=> bm!424325 (= call!424331 call!424330)))

(declare-fun d!1778354 () Bool)

(declare-fun res!2384209 () Bool)

(assert (=> d!1778354 (=> res!2384209 e!3469996)))

(assert (=> d!1778354 (= res!2384209 ((_ is ElementMatch!15621) lt!2262173))))

(assert (=> d!1778354 (= (validRegex!7357 lt!2262173) e!3469996)))

(assert (= (and d!1778354 (not res!2384209)) b!5629907))

(assert (= (and b!5629907 c!988585) b!5629904))

(assert (= (and b!5629907 (not c!988585)) b!5629903))

(assert (= (and b!5629904 res!2384210) b!5629901))

(assert (= (and b!5629903 c!988586) b!5629900))

(assert (= (and b!5629903 (not c!988586)) b!5629908))

(assert (= (and b!5629900 res!2384212) b!5629905))

(assert (= (and b!5629908 (not res!2384211)) b!5629906))

(assert (= (and b!5629906 res!2384208) b!5629902))

(assert (= (or b!5629905 b!5629902) bm!424325))

(assert (= (or b!5629900 b!5629906) bm!424326))

(assert (= (or b!5629901 bm!424325) bm!424324))

(declare-fun m!6601378 () Bool)

(assert (=> bm!424324 m!6601378))

(declare-fun m!6601380 () Bool)

(assert (=> b!5629904 m!6601380))

(declare-fun m!6601382 () Bool)

(assert (=> bm!424326 m!6601382))

(assert (=> d!1777934 d!1778354))

(declare-fun d!1778356 () Bool)

(declare-fun res!2384213 () Bool)

(declare-fun e!3470003 () Bool)

(assert (=> d!1778356 (=> res!2384213 e!3470003)))

(assert (=> d!1778356 (= res!2384213 ((_ is Nil!63039) (unfocusZipperList!1049 zl!343)))))

(assert (=> d!1778356 (= (forall!14775 (unfocusZipperList!1049 zl!343) lambda!302453) e!3470003)))

(declare-fun b!5629909 () Bool)

(declare-fun e!3470004 () Bool)

(assert (=> b!5629909 (= e!3470003 e!3470004)))

(declare-fun res!2384214 () Bool)

(assert (=> b!5629909 (=> (not res!2384214) (not e!3470004))))

(assert (=> b!5629909 (= res!2384214 (dynLambda!24652 lambda!302453 (h!69487 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5629910 () Bool)

(assert (=> b!5629910 (= e!3470004 (forall!14775 (t!376455 (unfocusZipperList!1049 zl!343)) lambda!302453))))

(assert (= (and d!1778356 (not res!2384213)) b!5629909))

(assert (= (and b!5629909 res!2384214) b!5629910))

(declare-fun b_lambda!212921 () Bool)

(assert (=> (not b_lambda!212921) (not b!5629909)))

(declare-fun m!6601384 () Bool)

(assert (=> b!5629909 m!6601384))

(declare-fun m!6601386 () Bool)

(assert (=> b!5629910 m!6601386))

(assert (=> d!1777934 d!1778356))

(assert (=> d!1777950 d!1777952))

(assert (=> d!1777950 d!1777846))

(declare-fun d!1778358 () Bool)

(declare-fun e!3470007 () Bool)

(assert (=> d!1778358 (= (matchZipper!1759 ((_ map or) lt!2262073 lt!2262094) (t!376454 s!2326)) e!3470007)))

(declare-fun res!2384217 () Bool)

(assert (=> d!1778358 (=> res!2384217 e!3470007)))

(assert (=> d!1778358 (= res!2384217 (matchZipper!1759 lt!2262073 (t!376454 s!2326)))))

(assert (=> d!1778358 true))

(declare-fun _$48!1249 () Unit!156016)

(assert (=> d!1778358 (= (choose!42661 lt!2262073 lt!2262094 (t!376454 s!2326)) _$48!1249)))

(declare-fun b!5629913 () Bool)

(assert (=> b!5629913 (= e!3470007 (matchZipper!1759 lt!2262094 (t!376454 s!2326)))))

(assert (= (and d!1778358 (not res!2384217)) b!5629913))

(assert (=> d!1778358 m!6600070))

(assert (=> d!1778358 m!6600004))

(assert (=> b!5629913 m!6600012))

(assert (=> d!1777950 d!1778358))

(assert (=> b!5629042 d!1777970))

(declare-fun bs!1302919 () Bool)

(declare-fun d!1778360 () Bool)

(assert (= bs!1302919 (and d!1778360 d!1777938)))

(declare-fun lambda!302516 () Int)

(assert (=> bs!1302919 (= lambda!302516 lambda!302457)))

(declare-fun bs!1302920 () Bool)

(assert (= bs!1302920 (and d!1778360 d!1777956)))

(assert (=> bs!1302920 (= lambda!302516 lambda!302463)))

(declare-fun bs!1302921 () Bool)

(assert (= bs!1302921 (and d!1778360 d!1777842)))

(assert (=> bs!1302921 (= lambda!302516 lambda!302435)))

(declare-fun bs!1302922 () Bool)

(assert (= bs!1302922 (and d!1778360 d!1777934)))

(assert (=> bs!1302922 (= lambda!302516 lambda!302453)))

(declare-fun bs!1302923 () Bool)

(assert (= bs!1302923 (and d!1778360 d!1778334)))

(assert (=> bs!1302923 (= lambda!302516 lambda!302513)))

(declare-fun bs!1302924 () Bool)

(assert (= bs!1302924 (and d!1778360 d!1777936)))

(assert (=> bs!1302924 (= lambda!302516 lambda!302456)))

(declare-fun b!5629914 () Bool)

(declare-fun e!3470011 () Bool)

(declare-fun lt!2262213 () Regex!15621)

(assert (=> b!5629914 (= e!3470011 (= lt!2262213 (head!11987 (t!376455 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5629915 () Bool)

(declare-fun e!3470008 () Regex!15621)

(assert (=> b!5629915 (= e!3470008 (h!69487 (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629916 () Bool)

(declare-fun e!3470013 () Regex!15621)

(assert (=> b!5629916 (= e!3470013 EmptyExpr!15621)))

(declare-fun e!3470009 () Bool)

(assert (=> d!1778360 e!3470009))

(declare-fun res!2384218 () Bool)

(assert (=> d!1778360 (=> (not res!2384218) (not e!3470009))))

(assert (=> d!1778360 (= res!2384218 (validRegex!7357 lt!2262213))))

(assert (=> d!1778360 (= lt!2262213 e!3470008)))

(declare-fun c!988587 () Bool)

(declare-fun e!3470012 () Bool)

(assert (=> d!1778360 (= c!988587 e!3470012)))

(declare-fun res!2384219 () Bool)

(assert (=> d!1778360 (=> (not res!2384219) (not e!3470012))))

(assert (=> d!1778360 (= res!2384219 ((_ is Cons!63039) (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> d!1778360 (forall!14775 (t!376455 (exprs!5505 (h!69488 zl!343))) lambda!302516)))

(assert (=> d!1778360 (= (generalisedConcat!1236 (t!376455 (exprs!5505 (h!69488 zl!343)))) lt!2262213)))

(declare-fun b!5629917 () Bool)

(assert (=> b!5629917 (= e!3470012 (isEmpty!34874 (t!376455 (t!376455 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5629918 () Bool)

(declare-fun e!3470010 () Bool)

(assert (=> b!5629918 (= e!3470010 e!3470011)))

(declare-fun c!988590 () Bool)

(assert (=> b!5629918 (= c!988590 (isEmpty!34874 (tail!11082 (t!376455 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5629919 () Bool)

(assert (=> b!5629919 (= e!3470013 (Concat!24466 (h!69487 (t!376455 (exprs!5505 (h!69488 zl!343)))) (generalisedConcat!1236 (t!376455 (t!376455 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5629920 () Bool)

(assert (=> b!5629920 (= e!3470009 e!3470010)))

(declare-fun c!988588 () Bool)

(assert (=> b!5629920 (= c!988588 (isEmpty!34874 (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629921 () Bool)

(assert (=> b!5629921 (= e!3470011 (isConcat!685 lt!2262213))))

(declare-fun b!5629922 () Bool)

(assert (=> b!5629922 (= e!3470008 e!3470013)))

(declare-fun c!988589 () Bool)

(assert (=> b!5629922 (= c!988589 ((_ is Cons!63039) (t!376455 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629923 () Bool)

(assert (=> b!5629923 (= e!3470010 (isEmptyExpr!1162 lt!2262213))))

(assert (= (and d!1778360 res!2384219) b!5629917))

(assert (= (and d!1778360 c!988587) b!5629915))

(assert (= (and d!1778360 (not c!988587)) b!5629922))

(assert (= (and b!5629922 c!988589) b!5629919))

(assert (= (and b!5629922 (not c!988589)) b!5629916))

(assert (= (and d!1778360 res!2384218) b!5629920))

(assert (= (and b!5629920 c!988588) b!5629923))

(assert (= (and b!5629920 (not c!988588)) b!5629918))

(assert (= (and b!5629918 c!988590) b!5629914))

(assert (= (and b!5629918 (not c!988590)) b!5629921))

(declare-fun m!6601388 () Bool)

(assert (=> b!5629923 m!6601388))

(declare-fun m!6601390 () Bool)

(assert (=> d!1778360 m!6601390))

(declare-fun m!6601392 () Bool)

(assert (=> d!1778360 m!6601392))

(assert (=> b!5629920 m!6599980))

(declare-fun m!6601394 () Bool)

(assert (=> b!5629914 m!6601394))

(declare-fun m!6601396 () Bool)

(assert (=> b!5629918 m!6601396))

(assert (=> b!5629918 m!6601396))

(declare-fun m!6601398 () Bool)

(assert (=> b!5629918 m!6601398))

(declare-fun m!6601400 () Bool)

(assert (=> b!5629919 m!6601400))

(declare-fun m!6601402 () Bool)

(assert (=> b!5629921 m!6601402))

(declare-fun m!6601404 () Bool)

(assert (=> b!5629917 m!6601404))

(assert (=> b!5629070 d!1778360))

(declare-fun d!1778362 () Bool)

(assert (=> d!1778362 (= (isEmptyExpr!1162 lt!2262183) ((_ is EmptyExpr!15621) lt!2262183))))

(assert (=> b!5629074 d!1778362))

(declare-fun d!1778364 () Bool)

(assert (=> d!1778364 (= (nullable!5653 (h!69487 (exprs!5505 lt!2262089))) (nullableFct!1749 (h!69487 (exprs!5505 lt!2262089))))))

(declare-fun bs!1302925 () Bool)

(assert (= bs!1302925 d!1778364))

(declare-fun m!6601406 () Bool)

(assert (=> bs!1302925 m!6601406))

(assert (=> b!5629079 d!1778364))

(declare-fun d!1778366 () Bool)

(assert (=> d!1778366 (= (nullable!5653 (h!69487 (exprs!5505 lt!2262076))) (nullableFct!1749 (h!69487 (exprs!5505 lt!2262076))))))

(declare-fun bs!1302926 () Bool)

(assert (= bs!1302926 d!1778366))

(declare-fun m!6601408 () Bool)

(assert (=> bs!1302926 m!6601408))

(assert (=> b!5629093 d!1778366))

(declare-fun bs!1302927 () Bool)

(declare-fun d!1778368 () Bool)

(assert (= bs!1302927 (and d!1778368 d!1778278)))

(declare-fun lambda!302517 () Int)

(assert (=> bs!1302927 (= lambda!302517 lambda!302507)))

(declare-fun bs!1302928 () Bool)

(assert (= bs!1302928 (and d!1778368 d!1778292)))

(assert (=> bs!1302928 (= lambda!302517 lambda!302508)))

(declare-fun bs!1302929 () Bool)

(assert (= bs!1302929 (and d!1778368 d!1778296)))

(assert (=> bs!1302929 (= lambda!302517 lambda!302509)))

(assert (=> d!1778368 (= (nullableZipper!1603 lt!2262067) (exists!2186 lt!2262067 lambda!302517))))

(declare-fun bs!1302930 () Bool)

(assert (= bs!1302930 d!1778368))

(declare-fun m!6601410 () Bool)

(assert (=> bs!1302930 m!6601410))

(assert (=> b!5629087 d!1778368))

(declare-fun d!1778370 () Bool)

(declare-fun e!3470014 () Bool)

(assert (=> d!1778370 e!3470014))

(declare-fun res!2384220 () Bool)

(assert (=> d!1778370 (=> (not res!2384220) (not e!3470014))))

(declare-fun lt!2262214 () List!63162)

(assert (=> d!1778370 (= res!2384220 (= (content!11397 lt!2262214) ((_ map or) (content!11397 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))) (content!11397 (t!376454 s!2326)))))))

(declare-fun e!3470015 () List!63162)

(assert (=> d!1778370 (= lt!2262214 e!3470015)))

(declare-fun c!988591 () Bool)

(assert (=> d!1778370 (= c!988591 ((_ is Nil!63038) (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))))))

(assert (=> d!1778370 (= (++!13837 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326)) lt!2262214)))

(declare-fun b!5629924 () Bool)

(assert (=> b!5629924 (= e!3470015 (t!376454 s!2326))))

(declare-fun b!5629925 () Bool)

(assert (=> b!5629925 (= e!3470015 (Cons!63038 (h!69486 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))) (++!13837 (t!376454 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))) (t!376454 s!2326))))))

(declare-fun b!5629927 () Bool)

(assert (=> b!5629927 (= e!3470014 (or (not (= (t!376454 s!2326) Nil!63038)) (= lt!2262214 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)))))))

(declare-fun b!5629926 () Bool)

(declare-fun res!2384221 () Bool)

(assert (=> b!5629926 (=> (not res!2384221) (not e!3470014))))

(assert (=> b!5629926 (= res!2384221 (= (size!39979 lt!2262214) (+ (size!39979 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))) (size!39979 (t!376454 s!2326)))))))

(assert (= (and d!1778370 c!988591) b!5629924))

(assert (= (and d!1778370 (not c!988591)) b!5629925))

(assert (= (and d!1778370 res!2384220) b!5629926))

(assert (= (and b!5629926 res!2384221) b!5629927))

(declare-fun m!6601412 () Bool)

(assert (=> d!1778370 m!6601412))

(assert (=> d!1778370 m!6600354))

(declare-fun m!6601414 () Bool)

(assert (=> d!1778370 m!6601414))

(declare-fun m!6601416 () Bool)

(assert (=> d!1778370 m!6601416))

(declare-fun m!6601418 () Bool)

(assert (=> b!5629925 m!6601418))

(declare-fun m!6601420 () Bool)

(assert (=> b!5629926 m!6601420))

(assert (=> b!5629926 m!6600354))

(declare-fun m!6601422 () Bool)

(assert (=> b!5629926 m!6601422))

(declare-fun m!6601424 () Bool)

(assert (=> b!5629926 m!6601424))

(assert (=> b!5628783 d!1778370))

(declare-fun d!1778372 () Bool)

(declare-fun e!3470016 () Bool)

(assert (=> d!1778372 e!3470016))

(declare-fun res!2384222 () Bool)

(assert (=> d!1778372 (=> (not res!2384222) (not e!3470016))))

(declare-fun lt!2262215 () List!63162)

(assert (=> d!1778372 (= res!2384222 (= (content!11397 lt!2262215) ((_ map or) (content!11397 Nil!63038) (content!11397 (Cons!63038 (h!69486 s!2326) Nil!63038)))))))

(declare-fun e!3470017 () List!63162)

(assert (=> d!1778372 (= lt!2262215 e!3470017)))

(declare-fun c!988592 () Bool)

(assert (=> d!1778372 (= c!988592 ((_ is Nil!63038) Nil!63038))))

(assert (=> d!1778372 (= (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) lt!2262215)))

(declare-fun b!5629928 () Bool)

(assert (=> b!5629928 (= e!3470017 (Cons!63038 (h!69486 s!2326) Nil!63038))))

(declare-fun b!5629929 () Bool)

(assert (=> b!5629929 (= e!3470017 (Cons!63038 (h!69486 Nil!63038) (++!13837 (t!376454 Nil!63038) (Cons!63038 (h!69486 s!2326) Nil!63038))))))

(declare-fun b!5629931 () Bool)

(assert (=> b!5629931 (= e!3470016 (or (not (= (Cons!63038 (h!69486 s!2326) Nil!63038) Nil!63038)) (= lt!2262215 Nil!63038)))))

(declare-fun b!5629930 () Bool)

(declare-fun res!2384223 () Bool)

(assert (=> b!5629930 (=> (not res!2384223) (not e!3470016))))

(assert (=> b!5629930 (= res!2384223 (= (size!39979 lt!2262215) (+ (size!39979 Nil!63038) (size!39979 (Cons!63038 (h!69486 s!2326) Nil!63038)))))))

(assert (= (and d!1778372 c!988592) b!5629928))

(assert (= (and d!1778372 (not c!988592)) b!5629929))

(assert (= (and d!1778372 res!2384222) b!5629930))

(assert (= (and b!5629930 res!2384223) b!5629931))

(declare-fun m!6601426 () Bool)

(assert (=> d!1778372 m!6601426))

(declare-fun m!6601428 () Bool)

(assert (=> d!1778372 m!6601428))

(declare-fun m!6601430 () Bool)

(assert (=> d!1778372 m!6601430))

(declare-fun m!6601432 () Bool)

(assert (=> b!5629929 m!6601432))

(declare-fun m!6601434 () Bool)

(assert (=> b!5629930 m!6601434))

(declare-fun m!6601436 () Bool)

(assert (=> b!5629930 m!6601436))

(declare-fun m!6601438 () Bool)

(assert (=> b!5629930 m!6601438))

(assert (=> b!5628783 d!1778372))

(declare-fun d!1778374 () Bool)

(assert (=> d!1778374 (= (++!13837 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326)) s!2326)))

(declare-fun lt!2262218 () Unit!156016)

(declare-fun choose!42671 (List!63162 C!31512 List!63162 List!63162) Unit!156016)

(assert (=> d!1778374 (= lt!2262218 (choose!42671 Nil!63038 (h!69486 s!2326) (t!376454 s!2326) s!2326))))

(assert (=> d!1778374 (= (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) (t!376454 s!2326))) s!2326)))

(assert (=> d!1778374 (= (lemmaMoveElementToOtherListKeepsConcatEq!2006 Nil!63038 (h!69486 s!2326) (t!376454 s!2326) s!2326) lt!2262218)))

(declare-fun bs!1302931 () Bool)

(assert (= bs!1302931 d!1778374))

(assert (=> bs!1302931 m!6600354))

(assert (=> bs!1302931 m!6600354))

(assert (=> bs!1302931 m!6600356))

(declare-fun m!6601440 () Bool)

(assert (=> bs!1302931 m!6601440))

(declare-fun m!6601442 () Bool)

(assert (=> bs!1302931 m!6601442))

(assert (=> b!5628783 d!1778374))

(declare-fun b!5629932 () Bool)

(declare-fun e!3470022 () Bool)

(declare-fun lt!2262219 () Option!15630)

(assert (=> b!5629932 (= e!3470022 (not (isDefined!12333 lt!2262219)))))

(declare-fun b!5629933 () Bool)

(declare-fun e!3470021 () Option!15630)

(declare-fun e!3470020 () Option!15630)

(assert (=> b!5629933 (= e!3470021 e!3470020)))

(declare-fun c!988594 () Bool)

(assert (=> b!5629933 (= c!988594 ((_ is Nil!63038) (t!376454 s!2326)))))

(declare-fun d!1778376 () Bool)

(assert (=> d!1778376 e!3470022))

(declare-fun res!2384224 () Bool)

(assert (=> d!1778376 (=> res!2384224 e!3470022)))

(declare-fun e!3470018 () Bool)

(assert (=> d!1778376 (= res!2384224 e!3470018)))

(declare-fun res!2384227 () Bool)

(assert (=> d!1778376 (=> (not res!2384227) (not e!3470018))))

(assert (=> d!1778376 (= res!2384227 (isDefined!12333 lt!2262219))))

(assert (=> d!1778376 (= lt!2262219 e!3470021)))

(declare-fun c!988593 () Bool)

(declare-fun e!3470019 () Bool)

(assert (=> d!1778376 (= c!988593 e!3470019)))

(declare-fun res!2384228 () Bool)

(assert (=> d!1778376 (=> (not res!2384228) (not e!3470019))))

(assert (=> d!1778376 (= res!2384228 (matchR!7806 (regOne!31754 r!7292) (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038))))))

(assert (=> d!1778376 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1778376 (= (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326) s!2326) lt!2262219)))

(declare-fun b!5629934 () Bool)

(declare-fun lt!2262221 () Unit!156016)

(declare-fun lt!2262220 () Unit!156016)

(assert (=> b!5629934 (= lt!2262221 lt!2262220)))

(assert (=> b!5629934 (= (++!13837 (++!13837 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (Cons!63038 (h!69486 (t!376454 s!2326)) Nil!63038)) (t!376454 (t!376454 s!2326))) s!2326)))

(assert (=> b!5629934 (= lt!2262220 (lemmaMoveElementToOtherListKeepsConcatEq!2006 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (h!69486 (t!376454 s!2326)) (t!376454 (t!376454 s!2326)) s!2326))))

(assert (=> b!5629934 (= e!3470020 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) (++!13837 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (Cons!63038 (h!69486 (t!376454 s!2326)) Nil!63038)) (t!376454 (t!376454 s!2326)) s!2326))))

(declare-fun b!5629935 () Bool)

(assert (=> b!5629935 (= e!3470018 (= (++!13837 (_1!36021 (get!21715 lt!2262219)) (_2!36021 (get!21715 lt!2262219))) s!2326))))

(declare-fun b!5629936 () Bool)

(declare-fun res!2384225 () Bool)

(assert (=> b!5629936 (=> (not res!2384225) (not e!3470018))))

(assert (=> b!5629936 (= res!2384225 (matchR!7806 (regOne!31754 r!7292) (_1!36021 (get!21715 lt!2262219))))))

(declare-fun b!5629937 () Bool)

(assert (=> b!5629937 (= e!3470020 None!15629)))

(declare-fun b!5629938 () Bool)

(declare-fun res!2384226 () Bool)

(assert (=> b!5629938 (=> (not res!2384226) (not e!3470018))))

(assert (=> b!5629938 (= res!2384226 (matchR!7806 (regTwo!31754 r!7292) (_2!36021 (get!21715 lt!2262219))))))

(declare-fun b!5629939 () Bool)

(assert (=> b!5629939 (= e!3470019 (matchR!7806 (regTwo!31754 r!7292) (t!376454 s!2326)))))

(declare-fun b!5629940 () Bool)

(assert (=> b!5629940 (= e!3470021 (Some!15629 (tuple2!65437 (++!13837 Nil!63038 (Cons!63038 (h!69486 s!2326) Nil!63038)) (t!376454 s!2326))))))

(assert (= (and d!1778376 res!2384228) b!5629939))

(assert (= (and d!1778376 c!988593) b!5629940))

(assert (= (and d!1778376 (not c!988593)) b!5629933))

(assert (= (and b!5629933 c!988594) b!5629937))

(assert (= (and b!5629933 (not c!988594)) b!5629934))

(assert (= (and d!1778376 res!2384227) b!5629936))

(assert (= (and b!5629936 res!2384225) b!5629938))

(assert (= (and b!5629938 res!2384226) b!5629935))

(assert (= (and d!1778376 (not res!2384224)) b!5629932))

(declare-fun m!6601444 () Bool)

(assert (=> b!5629932 m!6601444))

(assert (=> d!1778376 m!6601444))

(assert (=> d!1778376 m!6600354))

(declare-fun m!6601446 () Bool)

(assert (=> d!1778376 m!6601446))

(assert (=> d!1778376 m!6600348))

(declare-fun m!6601448 () Bool)

(assert (=> b!5629938 m!6601448))

(declare-fun m!6601450 () Bool)

(assert (=> b!5629938 m!6601450))

(assert (=> b!5629934 m!6600354))

(declare-fun m!6601452 () Bool)

(assert (=> b!5629934 m!6601452))

(assert (=> b!5629934 m!6601452))

(declare-fun m!6601454 () Bool)

(assert (=> b!5629934 m!6601454))

(assert (=> b!5629934 m!6600354))

(declare-fun m!6601456 () Bool)

(assert (=> b!5629934 m!6601456))

(assert (=> b!5629934 m!6601452))

(declare-fun m!6601458 () Bool)

(assert (=> b!5629934 m!6601458))

(declare-fun m!6601460 () Bool)

(assert (=> b!5629939 m!6601460))

(assert (=> b!5629936 m!6601448))

(declare-fun m!6601462 () Bool)

(assert (=> b!5629936 m!6601462))

(assert (=> b!5629935 m!6601448))

(declare-fun m!6601464 () Bool)

(assert (=> b!5629935 m!6601464))

(assert (=> b!5628783 d!1778376))

(declare-fun d!1778378 () Bool)

(assert (=> d!1778378 (= (head!11987 (unfocusZipperList!1049 zl!343)) (h!69487 (unfocusZipperList!1049 zl!343)))))

(assert (=> b!5629000 d!1778378))

(declare-fun b!5629941 () Bool)

(declare-fun e!3470027 () Bool)

(assert (=> b!5629941 (= e!3470027 (not (= (head!11986 (_2!36021 (get!21715 lt!2262150))) (c!988159 (regTwo!31754 r!7292)))))))

(declare-fun b!5629942 () Bool)

(declare-fun res!2384233 () Bool)

(declare-fun e!3470024 () Bool)

(assert (=> b!5629942 (=> (not res!2384233) (not e!3470024))))

(declare-fun call!424332 () Bool)

(assert (=> b!5629942 (= res!2384233 (not call!424332))))

(declare-fun b!5629943 () Bool)

(declare-fun res!2384231 () Bool)

(assert (=> b!5629943 (=> (not res!2384231) (not e!3470024))))

(assert (=> b!5629943 (= res!2384231 (isEmpty!34877 (tail!11081 (_2!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5629944 () Bool)

(declare-fun e!3470029 () Bool)

(assert (=> b!5629944 (= e!3470029 (nullable!5653 (regTwo!31754 r!7292)))))

(declare-fun b!5629945 () Bool)

(declare-fun res!2384232 () Bool)

(declare-fun e!3470026 () Bool)

(assert (=> b!5629945 (=> res!2384232 e!3470026)))

(assert (=> b!5629945 (= res!2384232 e!3470024)))

(declare-fun res!2384236 () Bool)

(assert (=> b!5629945 (=> (not res!2384236) (not e!3470024))))

(declare-fun lt!2262222 () Bool)

(assert (=> b!5629945 (= res!2384236 lt!2262222)))

(declare-fun b!5629946 () Bool)

(declare-fun e!3470028 () Bool)

(assert (=> b!5629946 (= e!3470028 e!3470027)))

(declare-fun res!2384235 () Bool)

(assert (=> b!5629946 (=> res!2384235 e!3470027)))

(assert (=> b!5629946 (= res!2384235 call!424332)))

(declare-fun b!5629948 () Bool)

(declare-fun res!2384234 () Bool)

(assert (=> b!5629948 (=> res!2384234 e!3470027)))

(assert (=> b!5629948 (= res!2384234 (not (isEmpty!34877 (tail!11081 (_2!36021 (get!21715 lt!2262150))))))))

(declare-fun b!5629949 () Bool)

(declare-fun e!3470025 () Bool)

(declare-fun e!3470023 () Bool)

(assert (=> b!5629949 (= e!3470025 e!3470023)))

(declare-fun c!988596 () Bool)

(assert (=> b!5629949 (= c!988596 ((_ is EmptyLang!15621) (regTwo!31754 r!7292)))))

(declare-fun bm!424327 () Bool)

(assert (=> bm!424327 (= call!424332 (isEmpty!34877 (_2!36021 (get!21715 lt!2262150))))))

(declare-fun b!5629950 () Bool)

(declare-fun res!2384230 () Bool)

(assert (=> b!5629950 (=> res!2384230 e!3470026)))

(assert (=> b!5629950 (= res!2384230 (not ((_ is ElementMatch!15621) (regTwo!31754 r!7292))))))

(assert (=> b!5629950 (= e!3470023 e!3470026)))

(declare-fun b!5629951 () Bool)

(assert (=> b!5629951 (= e!3470024 (= (head!11986 (_2!36021 (get!21715 lt!2262150))) (c!988159 (regTwo!31754 r!7292))))))

(declare-fun b!5629952 () Bool)

(assert (=> b!5629952 (= e!3470025 (= lt!2262222 call!424332))))

(declare-fun b!5629953 () Bool)

(assert (=> b!5629953 (= e!3470029 (matchR!7806 (derivativeStep!4456 (regTwo!31754 r!7292) (head!11986 (_2!36021 (get!21715 lt!2262150)))) (tail!11081 (_2!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5629954 () Bool)

(assert (=> b!5629954 (= e!3470026 e!3470028)))

(declare-fun res!2384229 () Bool)

(assert (=> b!5629954 (=> (not res!2384229) (not e!3470028))))

(assert (=> b!5629954 (= res!2384229 (not lt!2262222))))

(declare-fun b!5629947 () Bool)

(assert (=> b!5629947 (= e!3470023 (not lt!2262222))))

(declare-fun d!1778380 () Bool)

(assert (=> d!1778380 e!3470025))

(declare-fun c!988597 () Bool)

(assert (=> d!1778380 (= c!988597 ((_ is EmptyExpr!15621) (regTwo!31754 r!7292)))))

(assert (=> d!1778380 (= lt!2262222 e!3470029)))

(declare-fun c!988595 () Bool)

(assert (=> d!1778380 (= c!988595 (isEmpty!34877 (_2!36021 (get!21715 lt!2262150))))))

(assert (=> d!1778380 (validRegex!7357 (regTwo!31754 r!7292))))

(assert (=> d!1778380 (= (matchR!7806 (regTwo!31754 r!7292) (_2!36021 (get!21715 lt!2262150))) lt!2262222)))

(assert (= (and d!1778380 c!988595) b!5629944))

(assert (= (and d!1778380 (not c!988595)) b!5629953))

(assert (= (and d!1778380 c!988597) b!5629952))

(assert (= (and d!1778380 (not c!988597)) b!5629949))

(assert (= (and b!5629949 c!988596) b!5629947))

(assert (= (and b!5629949 (not c!988596)) b!5629950))

(assert (= (and b!5629950 (not res!2384230)) b!5629945))

(assert (= (and b!5629945 res!2384236) b!5629942))

(assert (= (and b!5629942 res!2384233) b!5629943))

(assert (= (and b!5629943 res!2384231) b!5629951))

(assert (= (and b!5629945 (not res!2384232)) b!5629954))

(assert (= (and b!5629954 res!2384229) b!5629946))

(assert (= (and b!5629946 (not res!2384235)) b!5629948))

(assert (= (and b!5629948 (not res!2384234)) b!5629941))

(assert (= (or b!5629952 b!5629942 b!5629946) bm!424327))

(declare-fun m!6601466 () Bool)

(assert (=> b!5629941 m!6601466))

(declare-fun m!6601468 () Bool)

(assert (=> b!5629943 m!6601468))

(assert (=> b!5629943 m!6601468))

(declare-fun m!6601470 () Bool)

(assert (=> b!5629943 m!6601470))

(assert (=> b!5629951 m!6601466))

(assert (=> b!5629944 m!6601340))

(declare-fun m!6601472 () Bool)

(assert (=> bm!424327 m!6601472))

(assert (=> b!5629953 m!6601466))

(assert (=> b!5629953 m!6601466))

(declare-fun m!6601474 () Bool)

(assert (=> b!5629953 m!6601474))

(assert (=> b!5629953 m!6601468))

(assert (=> b!5629953 m!6601474))

(assert (=> b!5629953 m!6601468))

(declare-fun m!6601476 () Bool)

(assert (=> b!5629953 m!6601476))

(assert (=> d!1778380 m!6601472))

(assert (=> d!1778380 m!6601346))

(assert (=> b!5629948 m!6601468))

(assert (=> b!5629948 m!6601468))

(assert (=> b!5629948 m!6601470))

(assert (=> b!5628787 d!1778380))

(assert (=> b!5628787 d!1778300))

(declare-fun d!1778382 () Bool)

(assert (=> d!1778382 (= (Exists!2721 lambda!302449) (choose!42663 lambda!302449))))

(declare-fun bs!1302932 () Bool)

(assert (= bs!1302932 d!1778382))

(declare-fun m!6601478 () Bool)

(assert (=> bs!1302932 m!6601478))

(assert (=> d!1777892 d!1778382))

(declare-fun d!1778384 () Bool)

(assert (=> d!1778384 (= (Exists!2721 lambda!302450) (choose!42663 lambda!302450))))

(declare-fun bs!1302933 () Bool)

(assert (= bs!1302933 d!1778384))

(declare-fun m!6601480 () Bool)

(assert (=> bs!1302933 m!6601480))

(assert (=> d!1777892 d!1778384))

(declare-fun bs!1302934 () Bool)

(declare-fun d!1778386 () Bool)

(assert (= bs!1302934 (and d!1778386 b!5628570)))

(declare-fun lambda!302522 () Int)

(assert (=> bs!1302934 (not (= lambda!302522 lambda!302421))))

(declare-fun bs!1302935 () Bool)

(assert (= bs!1302935 (and d!1778386 b!5628564)))

(assert (=> bs!1302935 (not (= lambda!302522 lambda!302419))))

(declare-fun bs!1302936 () Bool)

(assert (= bs!1302936 (and d!1778386 b!5628348)))

(assert (=> bs!1302936 (not (= lambda!302522 lambda!302399))))

(declare-fun bs!1302937 () Bool)

(assert (= bs!1302937 (and d!1778386 b!5629890)))

(assert (=> bs!1302937 (not (= lambda!302522 lambda!302515))))

(declare-fun bs!1302938 () Bool)

(assert (= bs!1302938 (and d!1778386 d!1777872)))

(assert (=> bs!1302938 (= lambda!302522 lambda!302443)))

(declare-fun bs!1302939 () Bool)

(assert (= bs!1302939 (and d!1778386 d!1777892)))

(assert (=> bs!1302939 (= lambda!302522 lambda!302449)))

(declare-fun bs!1302940 () Bool)

(assert (= bs!1302940 (and d!1778386 b!5629884)))

(assert (=> bs!1302940 (not (= lambda!302522 lambda!302514))))

(assert (=> bs!1302936 (= lambda!302522 lambda!302398)))

(assert (=> bs!1302939 (not (= lambda!302522 lambda!302450))))

(assert (=> d!1778386 true))

(assert (=> d!1778386 true))

(assert (=> d!1778386 true))

(declare-fun lambda!302523 () Int)

(assert (=> bs!1302934 (= lambda!302523 lambda!302421)))

(assert (=> bs!1302935 (not (= lambda!302523 lambda!302419))))

(assert (=> bs!1302936 (= lambda!302523 lambda!302399)))

(assert (=> bs!1302937 (= (and (= (regOne!31754 r!7292) (regOne!31754 (regTwo!31755 r!7292))) (= (regTwo!31754 r!7292) (regTwo!31754 (regTwo!31755 r!7292)))) (= lambda!302523 lambda!302515))))

(assert (=> bs!1302938 (not (= lambda!302523 lambda!302443))))

(declare-fun bs!1302941 () Bool)

(assert (= bs!1302941 d!1778386))

(assert (=> bs!1302941 (not (= lambda!302523 lambda!302522))))

(assert (=> bs!1302939 (not (= lambda!302523 lambda!302449))))

(assert (=> bs!1302940 (not (= lambda!302523 lambda!302514))))

(assert (=> bs!1302936 (not (= lambda!302523 lambda!302398))))

(assert (=> bs!1302939 (= lambda!302523 lambda!302450)))

(assert (=> d!1778386 true))

(assert (=> d!1778386 true))

(assert (=> d!1778386 true))

(assert (=> d!1778386 (= (Exists!2721 lambda!302522) (Exists!2721 lambda!302523))))

(assert (=> d!1778386 true))

(declare-fun _$90!1367 () Unit!156016)

(assert (=> d!1778386 (= (choose!42665 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326) _$90!1367)))

(declare-fun m!6601482 () Bool)

(assert (=> bs!1302941 m!6601482))

(declare-fun m!6601484 () Bool)

(assert (=> bs!1302941 m!6601484))

(assert (=> d!1777892 d!1778386))

(declare-fun b!5629963 () Bool)

(declare-fun res!2384249 () Bool)

(declare-fun e!3470037 () Bool)

(assert (=> b!5629963 (=> (not res!2384249) (not e!3470037))))

(declare-fun call!424333 () Bool)

(assert (=> b!5629963 (= res!2384249 call!424333)))

(declare-fun e!3470039 () Bool)

(assert (=> b!5629963 (= e!3470039 e!3470037)))

(declare-fun b!5629964 () Bool)

(declare-fun e!3470040 () Bool)

(declare-fun call!424334 () Bool)

(assert (=> b!5629964 (= e!3470040 call!424334)))

(declare-fun b!5629965 () Bool)

(declare-fun e!3470035 () Bool)

(declare-fun call!424335 () Bool)

(assert (=> b!5629965 (= e!3470035 call!424335)))

(declare-fun c!988599 () Bool)

(declare-fun bm!424328 () Bool)

(declare-fun c!988598 () Bool)

(assert (=> bm!424328 (= call!424334 (validRegex!7357 (ite c!988598 (reg!15950 (regOne!31754 r!7292)) (ite c!988599 (regTwo!31755 (regOne!31754 r!7292)) (regTwo!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5629966 () Bool)

(declare-fun e!3470038 () Bool)

(assert (=> b!5629966 (= e!3470038 e!3470039)))

(assert (=> b!5629966 (= c!988599 ((_ is Union!15621) (regOne!31754 r!7292)))))

(declare-fun b!5629967 () Bool)

(assert (=> b!5629967 (= e!3470038 e!3470040)))

(declare-fun res!2384247 () Bool)

(assert (=> b!5629967 (= res!2384247 (not (nullable!5653 (reg!15950 (regOne!31754 r!7292)))))))

(assert (=> b!5629967 (=> (not res!2384247) (not e!3470040))))

(declare-fun b!5629968 () Bool)

(assert (=> b!5629968 (= e!3470037 call!424335)))

(declare-fun b!5629969 () Bool)

(declare-fun e!3470036 () Bool)

(assert (=> b!5629969 (= e!3470036 e!3470035)))

(declare-fun res!2384245 () Bool)

(assert (=> b!5629969 (=> (not res!2384245) (not e!3470035))))

(assert (=> b!5629969 (= res!2384245 call!424333)))

(declare-fun b!5629970 () Bool)

(declare-fun e!3470034 () Bool)

(assert (=> b!5629970 (= e!3470034 e!3470038)))

(assert (=> b!5629970 (= c!988598 ((_ is Star!15621) (regOne!31754 r!7292)))))

(declare-fun b!5629971 () Bool)

(declare-fun res!2384248 () Bool)

(assert (=> b!5629971 (=> res!2384248 e!3470036)))

(assert (=> b!5629971 (= res!2384248 (not ((_ is Concat!24466) (regOne!31754 r!7292))))))

(assert (=> b!5629971 (= e!3470039 e!3470036)))

(declare-fun bm!424330 () Bool)

(assert (=> bm!424330 (= call!424333 (validRegex!7357 (ite c!988599 (regOne!31755 (regOne!31754 r!7292)) (regOne!31754 (regOne!31754 r!7292)))))))

(declare-fun bm!424329 () Bool)

(assert (=> bm!424329 (= call!424335 call!424334)))

(declare-fun d!1778388 () Bool)

(declare-fun res!2384246 () Bool)

(assert (=> d!1778388 (=> res!2384246 e!3470034)))

(assert (=> d!1778388 (= res!2384246 ((_ is ElementMatch!15621) (regOne!31754 r!7292)))))

(assert (=> d!1778388 (= (validRegex!7357 (regOne!31754 r!7292)) e!3470034)))

(assert (= (and d!1778388 (not res!2384246)) b!5629970))

(assert (= (and b!5629970 c!988598) b!5629967))

(assert (= (and b!5629970 (not c!988598)) b!5629966))

(assert (= (and b!5629967 res!2384247) b!5629964))

(assert (= (and b!5629966 c!988599) b!5629963))

(assert (= (and b!5629966 (not c!988599)) b!5629971))

(assert (= (and b!5629963 res!2384249) b!5629968))

(assert (= (and b!5629971 (not res!2384248)) b!5629969))

(assert (= (and b!5629969 res!2384245) b!5629965))

(assert (= (or b!5629968 b!5629965) bm!424329))

(assert (= (or b!5629963 b!5629969) bm!424330))

(assert (= (or b!5629964 bm!424329) bm!424328))

(declare-fun m!6601486 () Bool)

(assert (=> bm!424328 m!6601486))

(declare-fun m!6601488 () Bool)

(assert (=> b!5629967 m!6601488))

(declare-fun m!6601490 () Bool)

(assert (=> bm!424330 m!6601490))

(assert (=> d!1777892 d!1778388))

(declare-fun d!1778390 () Bool)

(declare-fun res!2384250 () Bool)

(declare-fun e!3470041 () Bool)

(assert (=> d!1778390 (=> res!2384250 e!3470041)))

(assert (=> d!1778390 (= res!2384250 ((_ is Nil!63039) (exprs!5505 (h!69488 zl!343))))))

(assert (=> d!1778390 (= (forall!14775 (exprs!5505 (h!69488 zl!343)) lambda!302457) e!3470041)))

(declare-fun b!5629972 () Bool)

(declare-fun e!3470042 () Bool)

(assert (=> b!5629972 (= e!3470041 e!3470042)))

(declare-fun res!2384251 () Bool)

(assert (=> b!5629972 (=> (not res!2384251) (not e!3470042))))

(assert (=> b!5629972 (= res!2384251 (dynLambda!24652 lambda!302457 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5629973 () Bool)

(assert (=> b!5629973 (= e!3470042 (forall!14775 (t!376455 (exprs!5505 (h!69488 zl!343))) lambda!302457))))

(assert (= (and d!1778390 (not res!2384250)) b!5629972))

(assert (= (and b!5629972 res!2384251) b!5629973))

(declare-fun b_lambda!212923 () Bool)

(assert (=> (not b_lambda!212923) (not b!5629972)))

(declare-fun m!6601492 () Bool)

(assert (=> b!5629972 m!6601492))

(declare-fun m!6601494 () Bool)

(assert (=> b!5629973 m!6601494))

(assert (=> d!1777938 d!1778390))

(declare-fun d!1778392 () Bool)

(assert (=> d!1778392 (= (isEmpty!34874 (tail!11082 (unfocusZipperList!1049 zl!343))) ((_ is Nil!63039) (tail!11082 (unfocusZipperList!1049 zl!343))))))

(assert (=> b!5629004 d!1778392))

(declare-fun d!1778394 () Bool)

(assert (=> d!1778394 (= (tail!11082 (unfocusZipperList!1049 zl!343)) (t!376455 (unfocusZipperList!1049 zl!343)))))

(assert (=> b!5629004 d!1778394))

(declare-fun d!1778396 () Bool)

(assert (=> d!1778396 (= (nullable!5653 (h!69487 (exprs!5505 lt!2262088))) (nullableFct!1749 (h!69487 (exprs!5505 lt!2262088))))))

(declare-fun bs!1302942 () Bool)

(assert (= bs!1302942 d!1778396))

(declare-fun m!6601496 () Bool)

(assert (=> bs!1302942 m!6601496))

(assert (=> b!5628979 d!1778396))

(declare-fun d!1778398 () Bool)

(declare-fun c!988600 () Bool)

(assert (=> d!1778398 (= c!988600 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3470043 () Bool)

(assert (=> d!1778398 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262067) (t!376454 s!2326)) e!3470043)))

(declare-fun b!5629974 () Bool)

(assert (=> b!5629974 (= e!3470043 (nullableZipper!1603 ((_ map or) lt!2262080 lt!2262067)))))

(declare-fun b!5629975 () Bool)

(assert (=> b!5629975 (= e!3470043 (matchZipper!1759 (derivationStepZipper!1708 ((_ map or) lt!2262080 lt!2262067) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1778398 c!988600) b!5629974))

(assert (= (and d!1778398 (not c!988600)) b!5629975))

(assert (=> d!1778398 m!6600284))

(declare-fun m!6601498 () Bool)

(assert (=> b!5629974 m!6601498))

(assert (=> b!5629975 m!6600288))

(assert (=> b!5629975 m!6600288))

(declare-fun m!6601500 () Bool)

(assert (=> b!5629975 m!6601500))

(assert (=> b!5629975 m!6600292))

(assert (=> b!5629975 m!6601500))

(assert (=> b!5629975 m!6600292))

(declare-fun m!6601502 () Bool)

(assert (=> b!5629975 m!6601502))

(assert (=> d!1777962 d!1778398))

(assert (=> d!1777962 d!1777850))

(declare-fun e!3470044 () Bool)

(declare-fun d!1778400 () Bool)

(assert (=> d!1778400 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262067) (t!376454 s!2326)) e!3470044)))

(declare-fun res!2384252 () Bool)

(assert (=> d!1778400 (=> res!2384252 e!3470044)))

(assert (=> d!1778400 (= res!2384252 (matchZipper!1759 lt!2262080 (t!376454 s!2326)))))

(assert (=> d!1778400 true))

(declare-fun _$48!1250 () Unit!156016)

(assert (=> d!1778400 (= (choose!42661 lt!2262080 lt!2262067 (t!376454 s!2326)) _$48!1250)))

(declare-fun b!5629976 () Bool)

(assert (=> b!5629976 (= e!3470044 (matchZipper!1759 lt!2262067 (t!376454 s!2326)))))

(assert (= (and d!1778400 (not res!2384252)) b!5629976))

(assert (=> d!1778400 m!6600596))

(assert (=> d!1778400 m!6600008))

(assert (=> b!5629976 m!6600036))

(assert (=> d!1777962 d!1778400))

(declare-fun bs!1302943 () Bool)

(declare-fun d!1778402 () Bool)

(assert (= bs!1302943 (and d!1778402 d!1778278)))

(declare-fun lambda!302524 () Int)

(assert (=> bs!1302943 (= lambda!302524 lambda!302507)))

(declare-fun bs!1302944 () Bool)

(assert (= bs!1302944 (and d!1778402 d!1778292)))

(assert (=> bs!1302944 (= lambda!302524 lambda!302508)))

(declare-fun bs!1302945 () Bool)

(assert (= bs!1302945 (and d!1778402 d!1778296)))

(assert (=> bs!1302945 (= lambda!302524 lambda!302509)))

(declare-fun bs!1302946 () Bool)

(assert (= bs!1302946 (and d!1778402 d!1778368)))

(assert (=> bs!1302946 (= lambda!302524 lambda!302517)))

(assert (=> d!1778402 (= (nullableZipper!1603 lt!2262073) (exists!2186 lt!2262073 lambda!302524))))

(declare-fun bs!1302947 () Bool)

(assert (= bs!1302947 d!1778402))

(declare-fun m!6601504 () Bool)

(assert (=> bs!1302947 m!6601504))

(assert (=> b!5628709 d!1778402))

(assert (=> b!5628650 d!1778336))

(assert (=> b!5628650 d!1778338))

(declare-fun d!1778404 () Bool)

(declare-fun c!988601 () Bool)

(assert (=> d!1778404 (= c!988601 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470045 () Bool)

(assert (=> d!1778404 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262075 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470045)))

(declare-fun b!5629977 () Bool)

(assert (=> b!5629977 (= e!3470045 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262075 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5629978 () Bool)

(assert (=> b!5629978 (= e!3470045 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262075 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778404 c!988601) b!5629977))

(assert (= (and d!1778404 (not c!988601)) b!5629978))

(assert (=> d!1778404 m!6600292))

(assert (=> d!1778404 m!6601284))

(assert (=> b!5629977 m!6600298))

(declare-fun m!6601506 () Bool)

(assert (=> b!5629977 m!6601506))

(assert (=> b!5629978 m!6600292))

(assert (=> b!5629978 m!6601288))

(assert (=> b!5629978 m!6600298))

(assert (=> b!5629978 m!6601288))

(declare-fun m!6601508 () Bool)

(assert (=> b!5629978 m!6601508))

(assert (=> b!5629978 m!6600292))

(assert (=> b!5629978 m!6601292))

(assert (=> b!5629978 m!6601508))

(assert (=> b!5629978 m!6601292))

(declare-fun m!6601510 () Bool)

(assert (=> b!5629978 m!6601510))

(assert (=> b!5628712 d!1778404))

(declare-fun bs!1302948 () Bool)

(declare-fun d!1778406 () Bool)

(assert (= bs!1302948 (and d!1778406 d!1777980)))

(declare-fun lambda!302525 () Int)

(assert (=> bs!1302948 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302525 lambda!302464))))

(declare-fun bs!1302949 () Bool)

(assert (= bs!1302949 (and d!1778406 d!1778326)))

(assert (=> bs!1302949 (= lambda!302525 lambda!302512)))

(declare-fun bs!1302950 () Bool)

(assert (= bs!1302950 (and d!1778406 d!1777946)))

(assert (=> bs!1302950 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302525 lambda!302460))))

(declare-fun bs!1302951 () Bool)

(assert (= bs!1302951 (and d!1778406 d!1778306)))

(assert (=> bs!1302951 (= lambda!302525 lambda!302510)))

(declare-fun bs!1302952 () Bool)

(assert (= bs!1302952 (and d!1778406 b!5628366)))

(assert (=> bs!1302952 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302525 lambda!302400))))

(declare-fun bs!1302953 () Bool)

(assert (= bs!1302953 (and d!1778406 d!1778318)))

(assert (=> bs!1302953 (= lambda!302525 lambda!302511)))

(assert (=> d!1778406 true))

(assert (=> d!1778406 (= (derivationStepZipper!1708 lt!2262075 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262075 lambda!302525))))

(declare-fun bs!1302954 () Bool)

(assert (= bs!1302954 d!1778406))

(declare-fun m!6601512 () Bool)

(assert (=> bs!1302954 m!6601512))

(assert (=> b!5628712 d!1778406))

(assert (=> b!5628712 d!1778308))

(assert (=> b!5628712 d!1778310))

(declare-fun d!1778408 () Bool)

(assert (=> d!1778408 (= (isEmptyLang!1172 lt!2262173) ((_ is EmptyLang!15621) lt!2262173))))

(assert (=> b!5629008 d!1778408))

(declare-fun b!5629979 () Bool)

(declare-fun e!3470048 () (InoxSet Context!10010))

(declare-fun e!3470050 () (InoxSet Context!10010))

(assert (=> b!5629979 (= e!3470048 e!3470050)))

(declare-fun c!988602 () Bool)

(assert (=> b!5629979 (= c!988602 ((_ is Union!15621) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun b!5629980 () Bool)

(declare-fun e!3470046 () (InoxSet Context!10010))

(declare-fun e!3470051 () (InoxSet Context!10010))

(assert (=> b!5629980 (= e!3470046 e!3470051)))

(declare-fun c!988606 () Bool)

(assert (=> b!5629980 (= c!988606 ((_ is Concat!24466) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun b!5629981 () Bool)

(declare-fun call!424339 () (InoxSet Context!10010))

(declare-fun call!424338 () (InoxSet Context!10010))

(assert (=> b!5629981 (= e!3470050 ((_ map or) call!424339 call!424338))))

(declare-fun bm!424331 () Bool)

(declare-fun call!424341 () (InoxSet Context!10010))

(declare-fun call!424340 () (InoxSet Context!10010))

(assert (=> bm!424331 (= call!424341 call!424340)))

(declare-fun c!988604 () Bool)

(declare-fun d!1778410 () Bool)

(assert (=> d!1778410 (= c!988604 (and ((_ is ElementMatch!15621) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (= (c!988159 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326))))))

(assert (=> d!1778410 (= (derivationStepZipperDown!963 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))) (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140)) (h!69486 s!2326)) e!3470048)))

(declare-fun b!5629982 () Bool)

(declare-fun c!988605 () Bool)

(declare-fun e!3470047 () Bool)

(assert (=> b!5629982 (= c!988605 e!3470047)))

(declare-fun res!2384253 () Bool)

(assert (=> b!5629982 (=> (not res!2384253) (not e!3470047))))

(assert (=> b!5629982 (= res!2384253 ((_ is Concat!24466) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))))

(assert (=> b!5629982 (= e!3470050 e!3470046)))

(declare-fun call!424336 () List!63163)

(declare-fun bm!424332 () Bool)

(assert (=> bm!424332 (= call!424339 (derivationStepZipperDown!963 (ite c!988602 (regOne!31755 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (ite c!988605 (regTwo!31754 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (ite c!988606 (regOne!31754 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (reg!15950 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))))))) (ite (or c!988602 c!988605) (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140)) (Context!10011 call!424336)) (h!69486 s!2326)))))

(declare-fun bm!424333 () Bool)

(assert (=> bm!424333 (= call!424340 call!424339)))

(declare-fun bm!424334 () Bool)

(declare-fun call!424337 () List!63163)

(assert (=> bm!424334 (= call!424338 (derivationStepZipperDown!963 (ite c!988602 (regTwo!31755 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (regOne!31754 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))))) (ite c!988602 (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140)) (Context!10011 call!424337)) (h!69486 s!2326)))))

(declare-fun bm!424335 () Bool)

(assert (=> bm!424335 (= call!424337 ($colon$colon!1671 (exprs!5505 (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140))) (ite (or c!988605 c!988606) (regTwo!31754 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))))))))

(declare-fun b!5629983 () Bool)

(assert (=> b!5629983 (= e!3470046 ((_ map or) call!424338 call!424340))))

(declare-fun b!5629984 () Bool)

(assert (=> b!5629984 (= e!3470048 (store ((as const (Array Context!10010 Bool)) false) (ite (or c!988316 c!988319) lt!2262088 (Context!10011 call!424140)) true))))

(declare-fun b!5629985 () Bool)

(assert (=> b!5629985 (= e!3470051 call!424341)))

(declare-fun b!5629986 () Bool)

(assert (=> b!5629986 (= e!3470047 (nullable!5653 (regOne!31754 (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))))))))

(declare-fun bm!424336 () Bool)

(assert (=> bm!424336 (= call!424336 call!424337)))

(declare-fun c!988603 () Bool)

(declare-fun b!5629987 () Bool)

(assert (=> b!5629987 (= c!988603 ((_ is Star!15621) (ite c!988316 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988319 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988320 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun e!3470049 () (InoxSet Context!10010))

(assert (=> b!5629987 (= e!3470051 e!3470049)))

(declare-fun b!5629988 () Bool)

(assert (=> b!5629988 (= e!3470049 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5629989 () Bool)

(assert (=> b!5629989 (= e!3470049 call!424341)))

(assert (= (and d!1778410 c!988604) b!5629984))

(assert (= (and d!1778410 (not c!988604)) b!5629979))

(assert (= (and b!5629979 c!988602) b!5629981))

(assert (= (and b!5629979 (not c!988602)) b!5629982))

(assert (= (and b!5629982 res!2384253) b!5629986))

(assert (= (and b!5629982 c!988605) b!5629983))

(assert (= (and b!5629982 (not c!988605)) b!5629980))

(assert (= (and b!5629980 c!988606) b!5629985))

(assert (= (and b!5629980 (not c!988606)) b!5629987))

(assert (= (and b!5629987 c!988603) b!5629989))

(assert (= (and b!5629987 (not c!988603)) b!5629988))

(assert (= (or b!5629985 b!5629989) bm!424336))

(assert (= (or b!5629985 b!5629989) bm!424331))

(assert (= (or b!5629983 bm!424336) bm!424335))

(assert (= (or b!5629983 bm!424331) bm!424333))

(assert (= (or b!5629981 b!5629983) bm!424334))

(assert (= (or b!5629981 bm!424333) bm!424332))

(declare-fun m!6601514 () Bool)

(assert (=> bm!424335 m!6601514))

(declare-fun m!6601516 () Bool)

(assert (=> bm!424334 m!6601516))

(declare-fun m!6601518 () Bool)

(assert (=> b!5629986 m!6601518))

(declare-fun m!6601520 () Bool)

(assert (=> bm!424332 m!6601520))

(declare-fun m!6601522 () Bool)

(assert (=> b!5629984 m!6601522))

(assert (=> bm!424136 d!1778410))

(assert (=> bm!424095 d!1778322))

(declare-fun d!1778412 () Bool)

(assert (=> d!1778412 (= ($colon$colon!1671 (exprs!5505 lt!2262088) (ite (or c!988319 c!988320) (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69487 (exprs!5505 (h!69488 zl!343))))) (Cons!63039 (ite (or c!988319 c!988320) (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69487 (exprs!5505 (h!69488 zl!343)))) (exprs!5505 lt!2262088)))))

(assert (=> bm!424139 d!1778412))

(declare-fun d!1778414 () Bool)

(assert (=> d!1778414 (= (head!11987 (exprs!5505 (h!69488 zl!343))) (h!69487 (exprs!5505 (h!69488 zl!343))))))

(assert (=> b!5629065 d!1778414))

(declare-fun b!5629990 () Bool)

(declare-fun e!3470053 () (InoxSet Context!10010))

(assert (=> b!5629990 (= e!3470053 ((as const (Array Context!10010 Bool)) false))))

(declare-fun e!3470054 () (InoxSet Context!10010))

(declare-fun b!5629991 () Bool)

(declare-fun call!424342 () (InoxSet Context!10010))

(assert (=> b!5629991 (= e!3470054 ((_ map or) call!424342 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))) (h!69486 s!2326))))))

(declare-fun b!5629992 () Bool)

(assert (=> b!5629992 (= e!3470054 e!3470053)))

(declare-fun c!988608 () Bool)

(assert (=> b!5629992 (= c!988608 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))))

(declare-fun b!5629993 () Bool)

(assert (=> b!5629993 (= e!3470053 call!424342)))

(declare-fun b!5629994 () Bool)

(declare-fun e!3470052 () Bool)

(assert (=> b!5629994 (= e!3470052 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))))))

(declare-fun d!1778416 () Bool)

(declare-fun c!988607 () Bool)

(assert (=> d!1778416 (= c!988607 e!3470052)))

(declare-fun res!2384254 () Bool)

(assert (=> d!1778416 (=> (not res!2384254) (not e!3470052))))

(assert (=> d!1778416 (= res!2384254 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))))

(assert (=> d!1778416 (= (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326)) e!3470054)))

(declare-fun bm!424337 () Bool)

(assert (=> bm!424337 (= call!424342 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))) (h!69486 s!2326)))))

(assert (= (and d!1778416 res!2384254) b!5629994))

(assert (= (and d!1778416 c!988607) b!5629991))

(assert (= (and d!1778416 (not c!988607)) b!5629992))

(assert (= (and b!5629992 c!988608) b!5629993))

(assert (= (and b!5629992 (not c!988608)) b!5629990))

(assert (= (or b!5629991 b!5629993) bm!424337))

(declare-fun m!6601524 () Bool)

(assert (=> b!5629991 m!6601524))

(declare-fun m!6601526 () Bool)

(assert (=> b!5629994 m!6601526))

(declare-fun m!6601528 () Bool)

(assert (=> bm!424337 m!6601528))

(assert (=> b!5628966 d!1778416))

(declare-fun d!1778418 () Bool)

(assert (=> d!1778418 (= (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))) (nullableFct!1749 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun bs!1302955 () Bool)

(assert (= bs!1302955 d!1778418))

(declare-fun m!6601530 () Bool)

(assert (=> bs!1302955 m!6601530))

(assert (=> b!5628951 d!1778418))

(declare-fun d!1778420 () Bool)

(assert (=> d!1778420 (= (isEmpty!34874 (tail!11082 (exprs!5505 (h!69488 zl!343)))) ((_ is Nil!63039) (tail!11082 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> b!5629069 d!1778420))

(declare-fun d!1778422 () Bool)

(assert (=> d!1778422 (= (tail!11082 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))

(assert (=> b!5629069 d!1778422))

(declare-fun bs!1302956 () Bool)

(declare-fun b!5629999 () Bool)

(assert (= bs!1302956 (and b!5629999 b!5628570)))

(declare-fun lambda!302526 () Int)

(assert (=> bs!1302956 (not (= lambda!302526 lambda!302421))))

(declare-fun bs!1302957 () Bool)

(assert (= bs!1302957 (and b!5629999 b!5628564)))

(assert (=> bs!1302957 (= (and (= (reg!15950 (regOne!31755 r!7292)) (reg!15950 r!7292)) (= (regOne!31755 r!7292) r!7292)) (= lambda!302526 lambda!302419))))

(declare-fun bs!1302958 () Bool)

(assert (= bs!1302958 (and b!5629999 b!5628348)))

(assert (=> bs!1302958 (not (= lambda!302526 lambda!302399))))

(declare-fun bs!1302959 () Bool)

(assert (= bs!1302959 (and b!5629999 b!5629890)))

(assert (=> bs!1302959 (not (= lambda!302526 lambda!302515))))

(declare-fun bs!1302960 () Bool)

(assert (= bs!1302960 (and b!5629999 d!1777872)))

(assert (=> bs!1302960 (not (= lambda!302526 lambda!302443))))

(declare-fun bs!1302961 () Bool)

(assert (= bs!1302961 (and b!5629999 d!1778386)))

(assert (=> bs!1302961 (not (= lambda!302526 lambda!302522))))

(declare-fun bs!1302962 () Bool)

(assert (= bs!1302962 (and b!5629999 d!1777892)))

(assert (=> bs!1302962 (not (= lambda!302526 lambda!302449))))

(declare-fun bs!1302963 () Bool)

(assert (= bs!1302963 (and b!5629999 b!5629884)))

(assert (=> bs!1302963 (= (and (= (reg!15950 (regOne!31755 r!7292)) (reg!15950 (regTwo!31755 r!7292))) (= (regOne!31755 r!7292) (regTwo!31755 r!7292))) (= lambda!302526 lambda!302514))))

(assert (=> bs!1302958 (not (= lambda!302526 lambda!302398))))

(assert (=> bs!1302961 (not (= lambda!302526 lambda!302523))))

(assert (=> bs!1302962 (not (= lambda!302526 lambda!302450))))

(assert (=> b!5629999 true))

(assert (=> b!5629999 true))

(declare-fun bs!1302964 () Bool)

(declare-fun b!5630005 () Bool)

(assert (= bs!1302964 (and b!5630005 b!5629999)))

(declare-fun lambda!302527 () Int)

(assert (=> bs!1302964 (not (= lambda!302527 lambda!302526))))

(declare-fun bs!1302965 () Bool)

(assert (= bs!1302965 (and b!5630005 b!5628570)))

(assert (=> bs!1302965 (= (and (= (regOne!31754 (regOne!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regOne!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302527 lambda!302421))))

(declare-fun bs!1302966 () Bool)

(assert (= bs!1302966 (and b!5630005 b!5628564)))

(assert (=> bs!1302966 (not (= lambda!302527 lambda!302419))))

(declare-fun bs!1302967 () Bool)

(assert (= bs!1302967 (and b!5630005 b!5628348)))

(assert (=> bs!1302967 (= (and (= (regOne!31754 (regOne!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regOne!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302527 lambda!302399))))

(declare-fun bs!1302968 () Bool)

(assert (= bs!1302968 (and b!5630005 b!5629890)))

(assert (=> bs!1302968 (= (and (= (regOne!31754 (regOne!31755 r!7292)) (regOne!31754 (regTwo!31755 r!7292))) (= (regTwo!31754 (regOne!31755 r!7292)) (regTwo!31754 (regTwo!31755 r!7292)))) (= lambda!302527 lambda!302515))))

(declare-fun bs!1302969 () Bool)

(assert (= bs!1302969 (and b!5630005 d!1777872)))

(assert (=> bs!1302969 (not (= lambda!302527 lambda!302443))))

(declare-fun bs!1302970 () Bool)

(assert (= bs!1302970 (and b!5630005 d!1778386)))

(assert (=> bs!1302970 (not (= lambda!302527 lambda!302522))))

(declare-fun bs!1302971 () Bool)

(assert (= bs!1302971 (and b!5630005 d!1777892)))

(assert (=> bs!1302971 (not (= lambda!302527 lambda!302449))))

(declare-fun bs!1302972 () Bool)

(assert (= bs!1302972 (and b!5630005 b!5629884)))

(assert (=> bs!1302972 (not (= lambda!302527 lambda!302514))))

(assert (=> bs!1302967 (not (= lambda!302527 lambda!302398))))

(assert (=> bs!1302970 (= (and (= (regOne!31754 (regOne!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regOne!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302527 lambda!302523))))

(assert (=> bs!1302971 (= (and (= (regOne!31754 (regOne!31755 r!7292)) (regOne!31754 r!7292)) (= (regTwo!31754 (regOne!31755 r!7292)) (regTwo!31754 r!7292))) (= lambda!302527 lambda!302450))))

(assert (=> b!5630005 true))

(assert (=> b!5630005 true))

(declare-fun b!5629995 () Bool)

(declare-fun c!988611 () Bool)

(assert (=> b!5629995 (= c!988611 ((_ is Union!15621) (regOne!31755 r!7292)))))

(declare-fun e!3470061 () Bool)

(declare-fun e!3470059 () Bool)

(assert (=> b!5629995 (= e!3470061 e!3470059)))

(declare-fun b!5629996 () Bool)

(declare-fun e!3470060 () Bool)

(declare-fun call!424344 () Bool)

(assert (=> b!5629996 (= e!3470060 call!424344)))

(declare-fun b!5629997 () Bool)

(declare-fun res!2384255 () Bool)

(declare-fun e!3470055 () Bool)

(assert (=> b!5629997 (=> res!2384255 e!3470055)))

(assert (=> b!5629997 (= res!2384255 call!424344)))

(declare-fun e!3470056 () Bool)

(assert (=> b!5629997 (= e!3470056 e!3470055)))

(declare-fun b!5629998 () Bool)

(assert (=> b!5629998 (= e!3470061 (= s!2326 (Cons!63038 (c!988159 (regOne!31755 r!7292)) Nil!63038)))))

(declare-fun bm!424338 () Bool)

(assert (=> bm!424338 (= call!424344 (isEmpty!34877 s!2326))))

(declare-fun call!424343 () Bool)

(assert (=> b!5629999 (= e!3470055 call!424343)))

(declare-fun bm!424339 () Bool)

(declare-fun c!988609 () Bool)

(assert (=> bm!424339 (= call!424343 (Exists!2721 (ite c!988609 lambda!302526 lambda!302527)))))

(declare-fun b!5630000 () Bool)

(declare-fun e!3470058 () Bool)

(assert (=> b!5630000 (= e!3470059 e!3470058)))

(declare-fun res!2384256 () Bool)

(assert (=> b!5630000 (= res!2384256 (matchRSpec!2724 (regOne!31755 (regOne!31755 r!7292)) s!2326))))

(assert (=> b!5630000 (=> res!2384256 e!3470058)))

(declare-fun d!1778424 () Bool)

(declare-fun c!988612 () Bool)

(assert (=> d!1778424 (= c!988612 ((_ is EmptyExpr!15621) (regOne!31755 r!7292)))))

(assert (=> d!1778424 (= (matchRSpec!2724 (regOne!31755 r!7292) s!2326) e!3470060)))

(declare-fun b!5630001 () Bool)

(assert (=> b!5630001 (= e!3470058 (matchRSpec!2724 (regTwo!31755 (regOne!31755 r!7292)) s!2326))))

(declare-fun b!5630002 () Bool)

(declare-fun c!988610 () Bool)

(assert (=> b!5630002 (= c!988610 ((_ is ElementMatch!15621) (regOne!31755 r!7292)))))

(declare-fun e!3470057 () Bool)

(assert (=> b!5630002 (= e!3470057 e!3470061)))

(declare-fun b!5630003 () Bool)

(assert (=> b!5630003 (= e!3470060 e!3470057)))

(declare-fun res!2384257 () Bool)

(assert (=> b!5630003 (= res!2384257 (not ((_ is EmptyLang!15621) (regOne!31755 r!7292))))))

(assert (=> b!5630003 (=> (not res!2384257) (not e!3470057))))

(declare-fun b!5630004 () Bool)

(assert (=> b!5630004 (= e!3470059 e!3470056)))

(assert (=> b!5630004 (= c!988609 ((_ is Star!15621) (regOne!31755 r!7292)))))

(assert (=> b!5630005 (= e!3470056 call!424343)))

(assert (= (and d!1778424 c!988612) b!5629996))

(assert (= (and d!1778424 (not c!988612)) b!5630003))

(assert (= (and b!5630003 res!2384257) b!5630002))

(assert (= (and b!5630002 c!988610) b!5629998))

(assert (= (and b!5630002 (not c!988610)) b!5629995))

(assert (= (and b!5629995 c!988611) b!5630000))

(assert (= (and b!5629995 (not c!988611)) b!5630004))

(assert (= (and b!5630000 (not res!2384256)) b!5630001))

(assert (= (and b!5630004 c!988609) b!5629997))

(assert (= (and b!5630004 (not c!988609)) b!5630005))

(assert (= (and b!5629997 (not res!2384255)) b!5629999))

(assert (= (or b!5629999 b!5630005) bm!424339))

(assert (= (or b!5629996 b!5629997) bm!424338))

(assert (=> bm!424338 m!6600222))

(declare-fun m!6601532 () Bool)

(assert (=> bm!424339 m!6601532))

(declare-fun m!6601534 () Bool)

(assert (=> b!5630000 m!6601534))

(declare-fun m!6601536 () Bool)

(assert (=> b!5630001 m!6601536))

(assert (=> b!5628565 d!1778424))

(declare-fun d!1778426 () Bool)

(declare-fun res!2384262 () Bool)

(declare-fun e!3470066 () Bool)

(assert (=> d!1778426 (=> res!2384262 e!3470066)))

(assert (=> d!1778426 (= res!2384262 ((_ is Nil!63040) lt!2262167))))

(assert (=> d!1778426 (= (noDuplicate!1583 lt!2262167) e!3470066)))

(declare-fun b!5630010 () Bool)

(declare-fun e!3470067 () Bool)

(assert (=> b!5630010 (= e!3470066 e!3470067)))

(declare-fun res!2384263 () Bool)

(assert (=> b!5630010 (=> (not res!2384263) (not e!3470067))))

(declare-fun contains!19826 (List!63164 Context!10010) Bool)

(assert (=> b!5630010 (= res!2384263 (not (contains!19826 (t!376456 lt!2262167) (h!69488 lt!2262167))))))

(declare-fun b!5630011 () Bool)

(assert (=> b!5630011 (= e!3470067 (noDuplicate!1583 (t!376456 lt!2262167)))))

(assert (= (and d!1778426 (not res!2384262)) b!5630010))

(assert (= (and b!5630010 res!2384263) b!5630011))

(declare-fun m!6601538 () Bool)

(assert (=> b!5630010 m!6601538))

(declare-fun m!6601540 () Bool)

(assert (=> b!5630011 m!6601540))

(assert (=> d!1777916 d!1778426))

(declare-fun d!1778428 () Bool)

(declare-fun e!3470075 () Bool)

(assert (=> d!1778428 e!3470075))

(declare-fun res!2384269 () Bool)

(assert (=> d!1778428 (=> (not res!2384269) (not e!3470075))))

(declare-fun res!2384268 () List!63164)

(assert (=> d!1778428 (= res!2384269 (noDuplicate!1583 res!2384268))))

(declare-fun e!3470076 () Bool)

(assert (=> d!1778428 e!3470076))

(assert (=> d!1778428 (= (choose!42666 z!1189) res!2384268)))

(declare-fun b!5630019 () Bool)

(declare-fun e!3470074 () Bool)

(declare-fun tp!1558414 () Bool)

(assert (=> b!5630019 (= e!3470074 tp!1558414)))

(declare-fun b!5630018 () Bool)

(declare-fun tp!1558415 () Bool)

(assert (=> b!5630018 (= e!3470076 (and (inv!82299 (h!69488 res!2384268)) e!3470074 tp!1558415))))

(declare-fun b!5630020 () Bool)

(assert (=> b!5630020 (= e!3470075 (= (content!11394 res!2384268) z!1189))))

(assert (= b!5630018 b!5630019))

(assert (= (and d!1778428 ((_ is Cons!63040) res!2384268)) b!5630018))

(assert (= (and d!1778428 res!2384269) b!5630020))

(declare-fun m!6601542 () Bool)

(assert (=> d!1778428 m!6601542))

(declare-fun m!6601544 () Bool)

(assert (=> b!5630018 m!6601544))

(declare-fun m!6601546 () Bool)

(assert (=> b!5630020 m!6601546))

(assert (=> d!1777916 d!1778428))

(declare-fun bs!1302973 () Bool)

(declare-fun d!1778430 () Bool)

(assert (= bs!1302973 (and d!1778430 d!1777938)))

(declare-fun lambda!302528 () Int)

(assert (=> bs!1302973 (= lambda!302528 lambda!302457)))

(declare-fun bs!1302974 () Bool)

(assert (= bs!1302974 (and d!1778430 d!1777956)))

(assert (=> bs!1302974 (= lambda!302528 lambda!302463)))

(declare-fun bs!1302975 () Bool)

(assert (= bs!1302975 (and d!1778430 d!1777842)))

(assert (=> bs!1302975 (= lambda!302528 lambda!302435)))

(declare-fun bs!1302976 () Bool)

(assert (= bs!1302976 (and d!1778430 d!1778334)))

(assert (=> bs!1302976 (= lambda!302528 lambda!302513)))

(declare-fun bs!1302977 () Bool)

(assert (= bs!1302977 (and d!1778430 d!1777936)))

(assert (=> bs!1302977 (= lambda!302528 lambda!302456)))

(declare-fun bs!1302978 () Bool)

(assert (= bs!1302978 (and d!1778430 d!1777934)))

(assert (=> bs!1302978 (= lambda!302528 lambda!302453)))

(declare-fun bs!1302979 () Bool)

(assert (= bs!1302979 (and d!1778430 d!1778360)))

(assert (=> bs!1302979 (= lambda!302528 lambda!302516)))

(assert (=> d!1778430 (= (inv!82299 setElem!37594) (forall!14775 (exprs!5505 setElem!37594) lambda!302528))))

(declare-fun bs!1302980 () Bool)

(assert (= bs!1302980 d!1778430))

(declare-fun m!6601548 () Bool)

(assert (=> bs!1302980 m!6601548))

(assert (=> setNonEmpty!37594 d!1778430))

(declare-fun d!1778432 () Bool)

(assert (=> d!1778432 (= (isEmpty!34877 (t!376454 s!2326)) ((_ is Nil!63038) (t!376454 s!2326)))))

(assert (=> d!1777846 d!1778432))

(assert (=> d!1777944 d!1778432))

(assert (=> d!1777968 d!1778432))

(declare-fun b!5630021 () Bool)

(declare-fun e!3470079 () (InoxSet Context!10010))

(declare-fun e!3470081 () (InoxSet Context!10010))

(assert (=> b!5630021 (= e!3470079 e!3470081)))

(declare-fun c!988613 () Bool)

(assert (=> b!5630021 (= c!988613 ((_ is Union!15621) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))))))

(declare-fun b!5630022 () Bool)

(declare-fun e!3470077 () (InoxSet Context!10010))

(declare-fun e!3470082 () (InoxSet Context!10010))

(assert (=> b!5630022 (= e!3470077 e!3470082)))

(declare-fun c!988617 () Bool)

(assert (=> b!5630022 (= c!988617 ((_ is Concat!24466) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))))))

(declare-fun b!5630023 () Bool)

(declare-fun call!424348 () (InoxSet Context!10010))

(declare-fun call!424347 () (InoxSet Context!10010))

(assert (=> b!5630023 (= e!3470081 ((_ map or) call!424348 call!424347))))

(declare-fun bm!424340 () Bool)

(declare-fun call!424350 () (InoxSet Context!10010))

(declare-fun call!424349 () (InoxSet Context!10010))

(assert (=> bm!424340 (= call!424350 call!424349)))

(declare-fun c!988615 () Bool)

(declare-fun d!1778434 () Bool)

(assert (=> d!1778434 (= c!988615 (and ((_ is ElementMatch!15621) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (= (c!988159 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (h!69486 s!2326))))))

(assert (=> d!1778434 (= (derivationStepZipperDown!963 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))) (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157)) (h!69486 s!2326)) e!3470079)))

(declare-fun b!5630024 () Bool)

(declare-fun c!988616 () Bool)

(declare-fun e!3470078 () Bool)

(assert (=> b!5630024 (= c!988616 e!3470078)))

(declare-fun res!2384270 () Bool)

(assert (=> b!5630024 (=> (not res!2384270) (not e!3470078))))

(assert (=> b!5630024 (= res!2384270 ((_ is Concat!24466) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))))))

(assert (=> b!5630024 (= e!3470081 e!3470077)))

(declare-fun call!424345 () List!63163)

(declare-fun bm!424341 () Bool)

(assert (=> bm!424341 (= call!424348 (derivationStepZipperDown!963 (ite c!988613 (regOne!31755 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (ite c!988616 (regTwo!31754 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (ite c!988617 (regOne!31754 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (reg!15950 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))))))) (ite (or c!988613 c!988616) (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157)) (Context!10011 call!424345)) (h!69486 s!2326)))))

(declare-fun bm!424342 () Bool)

(assert (=> bm!424342 (= call!424349 call!424348)))

(declare-fun bm!424343 () Bool)

(declare-fun call!424346 () List!63163)

(assert (=> bm!424343 (= call!424347 (derivationStepZipperDown!963 (ite c!988613 (regTwo!31755 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (regOne!31754 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))))) (ite c!988613 (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157)) (Context!10011 call!424346)) (h!69486 s!2326)))))

(declare-fun bm!424344 () Bool)

(assert (=> bm!424344 (= call!424346 ($colon$colon!1671 (exprs!5505 (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157))) (ite (or c!988616 c!988617) (regTwo!31754 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))))))))

(declare-fun b!5630025 () Bool)

(assert (=> b!5630025 (= e!3470077 ((_ map or) call!424347 call!424349))))

(declare-fun b!5630026 () Bool)

(assert (=> b!5630026 (= e!3470079 (store ((as const (Array Context!10010 Bool)) false) (ite (or c!988351 c!988354) lt!2262089 (Context!10011 call!424157)) true))))

(declare-fun b!5630027 () Bool)

(assert (=> b!5630027 (= e!3470082 call!424350)))

(declare-fun b!5630028 () Bool)

(assert (=> b!5630028 (= e!3470078 (nullable!5653 (regOne!31754 (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292)))))))))))

(declare-fun bm!424345 () Bool)

(assert (=> bm!424345 (= call!424345 call!424346)))

(declare-fun c!988614 () Bool)

(declare-fun b!5630029 () Bool)

(assert (=> b!5630029 (= c!988614 ((_ is Star!15621) (ite c!988351 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (ite c!988354 (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (ite c!988355 (regOne!31754 (regOne!31754 (regOne!31754 r!7292))) (reg!15950 (regOne!31754 (regOne!31754 r!7292))))))))))

(declare-fun e!3470080 () (InoxSet Context!10010))

(assert (=> b!5630029 (= e!3470082 e!3470080)))

(declare-fun b!5630030 () Bool)

(assert (=> b!5630030 (= e!3470080 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630031 () Bool)

(assert (=> b!5630031 (= e!3470080 call!424350)))

(assert (= (and d!1778434 c!988615) b!5630026))

(assert (= (and d!1778434 (not c!988615)) b!5630021))

(assert (= (and b!5630021 c!988613) b!5630023))

(assert (= (and b!5630021 (not c!988613)) b!5630024))

(assert (= (and b!5630024 res!2384270) b!5630028))

(assert (= (and b!5630024 c!988616) b!5630025))

(assert (= (and b!5630024 (not c!988616)) b!5630022))

(assert (= (and b!5630022 c!988617) b!5630027))

(assert (= (and b!5630022 (not c!988617)) b!5630029))

(assert (= (and b!5630029 c!988614) b!5630031))

(assert (= (and b!5630029 (not c!988614)) b!5630030))

(assert (= (or b!5630027 b!5630031) bm!424345))

(assert (= (or b!5630027 b!5630031) bm!424340))

(assert (= (or b!5630025 bm!424345) bm!424344))

(assert (= (or b!5630025 bm!424340) bm!424342))

(assert (= (or b!5630023 b!5630025) bm!424343))

(assert (= (or b!5630023 bm!424342) bm!424341))

(declare-fun m!6601550 () Bool)

(assert (=> bm!424344 m!6601550))

(declare-fun m!6601552 () Bool)

(assert (=> bm!424343 m!6601552))

(declare-fun m!6601554 () Bool)

(assert (=> b!5630028 m!6601554))

(declare-fun m!6601556 () Bool)

(assert (=> bm!424341 m!6601556))

(declare-fun m!6601558 () Bool)

(assert (=> b!5630026 m!6601558))

(assert (=> bm!424153 d!1778434))

(assert (=> d!1777840 d!1777826))

(assert (=> d!1777840 d!1777802))

(declare-fun d!1778436 () Bool)

(assert (=> d!1778436 (= (matchR!7806 r!7292 s!2326) (matchRSpec!2724 r!7292 s!2326))))

(assert (=> d!1778436 true))

(declare-fun _$88!3913 () Unit!156016)

(assert (=> d!1778436 (= (choose!42660 r!7292 s!2326) _$88!3913)))

(declare-fun bs!1302981 () Bool)

(assert (= bs!1302981 d!1778436))

(assert (=> bs!1302981 m!6600044))

(assert (=> bs!1302981 m!6600042))

(assert (=> d!1777840 d!1778436))

(assert (=> d!1777840 d!1777982))

(declare-fun b!5630032 () Bool)

(declare-fun e!3470087 () Bool)

(assert (=> b!5630032 (= e!3470087 (not (= (head!11986 (tail!11081 s!2326)) (c!988159 (derivativeStep!4456 r!7292 (head!11986 s!2326))))))))

(declare-fun b!5630033 () Bool)

(declare-fun res!2384275 () Bool)

(declare-fun e!3470084 () Bool)

(assert (=> b!5630033 (=> (not res!2384275) (not e!3470084))))

(declare-fun call!424351 () Bool)

(assert (=> b!5630033 (= res!2384275 (not call!424351))))

(declare-fun b!5630034 () Bool)

(declare-fun res!2384273 () Bool)

(assert (=> b!5630034 (=> (not res!2384273) (not e!3470084))))

(assert (=> b!5630034 (= res!2384273 (isEmpty!34877 (tail!11081 (tail!11081 s!2326))))))

(declare-fun b!5630035 () Bool)

(declare-fun e!3470089 () Bool)

(assert (=> b!5630035 (= e!3470089 (nullable!5653 (derivativeStep!4456 r!7292 (head!11986 s!2326))))))

(declare-fun b!5630036 () Bool)

(declare-fun res!2384274 () Bool)

(declare-fun e!3470086 () Bool)

(assert (=> b!5630036 (=> res!2384274 e!3470086)))

(assert (=> b!5630036 (= res!2384274 e!3470084)))

(declare-fun res!2384278 () Bool)

(assert (=> b!5630036 (=> (not res!2384278) (not e!3470084))))

(declare-fun lt!2262223 () Bool)

(assert (=> b!5630036 (= res!2384278 lt!2262223)))

(declare-fun b!5630037 () Bool)

(declare-fun e!3470088 () Bool)

(assert (=> b!5630037 (= e!3470088 e!3470087)))

(declare-fun res!2384277 () Bool)

(assert (=> b!5630037 (=> res!2384277 e!3470087)))

(assert (=> b!5630037 (= res!2384277 call!424351)))

(declare-fun b!5630039 () Bool)

(declare-fun res!2384276 () Bool)

(assert (=> b!5630039 (=> res!2384276 e!3470087)))

(assert (=> b!5630039 (= res!2384276 (not (isEmpty!34877 (tail!11081 (tail!11081 s!2326)))))))

(declare-fun b!5630040 () Bool)

(declare-fun e!3470085 () Bool)

(declare-fun e!3470083 () Bool)

(assert (=> b!5630040 (= e!3470085 e!3470083)))

(declare-fun c!988619 () Bool)

(assert (=> b!5630040 (= c!988619 ((_ is EmptyLang!15621) (derivativeStep!4456 r!7292 (head!11986 s!2326))))))

(declare-fun bm!424346 () Bool)

(assert (=> bm!424346 (= call!424351 (isEmpty!34877 (tail!11081 s!2326)))))

(declare-fun b!5630041 () Bool)

(declare-fun res!2384272 () Bool)

(assert (=> b!5630041 (=> res!2384272 e!3470086)))

(assert (=> b!5630041 (= res!2384272 (not ((_ is ElementMatch!15621) (derivativeStep!4456 r!7292 (head!11986 s!2326)))))))

(assert (=> b!5630041 (= e!3470083 e!3470086)))

(declare-fun b!5630042 () Bool)

(assert (=> b!5630042 (= e!3470084 (= (head!11986 (tail!11081 s!2326)) (c!988159 (derivativeStep!4456 r!7292 (head!11986 s!2326)))))))

(declare-fun b!5630043 () Bool)

(assert (=> b!5630043 (= e!3470085 (= lt!2262223 call!424351))))

(declare-fun b!5630044 () Bool)

(assert (=> b!5630044 (= e!3470089 (matchR!7806 (derivativeStep!4456 (derivativeStep!4456 r!7292 (head!11986 s!2326)) (head!11986 (tail!11081 s!2326))) (tail!11081 (tail!11081 s!2326))))))

(declare-fun b!5630045 () Bool)

(assert (=> b!5630045 (= e!3470086 e!3470088)))

(declare-fun res!2384271 () Bool)

(assert (=> b!5630045 (=> (not res!2384271) (not e!3470088))))

(assert (=> b!5630045 (= res!2384271 (not lt!2262223))))

(declare-fun b!5630038 () Bool)

(assert (=> b!5630038 (= e!3470083 (not lt!2262223))))

(declare-fun d!1778438 () Bool)

(assert (=> d!1778438 e!3470085))

(declare-fun c!988620 () Bool)

(assert (=> d!1778438 (= c!988620 ((_ is EmptyExpr!15621) (derivativeStep!4456 r!7292 (head!11986 s!2326))))))

(assert (=> d!1778438 (= lt!2262223 e!3470089)))

(declare-fun c!988618 () Bool)

(assert (=> d!1778438 (= c!988618 (isEmpty!34877 (tail!11081 s!2326)))))

(assert (=> d!1778438 (validRegex!7357 (derivativeStep!4456 r!7292 (head!11986 s!2326)))))

(assert (=> d!1778438 (= (matchR!7806 (derivativeStep!4456 r!7292 (head!11986 s!2326)) (tail!11081 s!2326)) lt!2262223)))

(assert (= (and d!1778438 c!988618) b!5630035))

(assert (= (and d!1778438 (not c!988618)) b!5630044))

(assert (= (and d!1778438 c!988620) b!5630043))

(assert (= (and d!1778438 (not c!988620)) b!5630040))

(assert (= (and b!5630040 c!988619) b!5630038))

(assert (= (and b!5630040 (not c!988619)) b!5630041))

(assert (= (and b!5630041 (not res!2384272)) b!5630036))

(assert (= (and b!5630036 res!2384278) b!5630033))

(assert (= (and b!5630033 res!2384275) b!5630034))

(assert (= (and b!5630034 res!2384273) b!5630042))

(assert (= (and b!5630036 (not res!2384274)) b!5630045))

(assert (= (and b!5630045 res!2384271) b!5630037))

(assert (= (and b!5630037 (not res!2384277)) b!5630039))

(assert (= (and b!5630039 (not res!2384276)) b!5630032))

(assert (= (or b!5630043 b!5630033 b!5630037) bm!424346))

(assert (=> b!5630032 m!6600270))

(declare-fun m!6601560 () Bool)

(assert (=> b!5630032 m!6601560))

(assert (=> b!5630034 m!6600270))

(declare-fun m!6601562 () Bool)

(assert (=> b!5630034 m!6601562))

(assert (=> b!5630034 m!6601562))

(declare-fun m!6601564 () Bool)

(assert (=> b!5630034 m!6601564))

(assert (=> b!5630042 m!6600270))

(assert (=> b!5630042 m!6601560))

(assert (=> b!5630035 m!6600276))

(declare-fun m!6601566 () Bool)

(assert (=> b!5630035 m!6601566))

(assert (=> bm!424346 m!6600270))

(assert (=> bm!424346 m!6600272))

(assert (=> b!5630044 m!6600270))

(assert (=> b!5630044 m!6601560))

(assert (=> b!5630044 m!6600276))

(assert (=> b!5630044 m!6601560))

(declare-fun m!6601568 () Bool)

(assert (=> b!5630044 m!6601568))

(assert (=> b!5630044 m!6600270))

(assert (=> b!5630044 m!6601562))

(assert (=> b!5630044 m!6601568))

(assert (=> b!5630044 m!6601562))

(declare-fun m!6601570 () Bool)

(assert (=> b!5630044 m!6601570))

(assert (=> d!1778438 m!6600270))

(assert (=> d!1778438 m!6600272))

(assert (=> d!1778438 m!6600276))

(declare-fun m!6601572 () Bool)

(assert (=> d!1778438 m!6601572))

(assert (=> b!5630039 m!6600270))

(assert (=> b!5630039 m!6601562))

(assert (=> b!5630039 m!6601562))

(assert (=> b!5630039 m!6601564))

(assert (=> b!5628660 d!1778438))

(declare-fun b!5630066 () Bool)

(declare-fun c!988631 () Bool)

(assert (=> b!5630066 (= c!988631 ((_ is Union!15621) r!7292))))

(declare-fun e!3470100 () Regex!15621)

(declare-fun e!3470103 () Regex!15621)

(assert (=> b!5630066 (= e!3470100 e!3470103)))

(declare-fun b!5630067 () Bool)

(declare-fun e!3470102 () Regex!15621)

(assert (=> b!5630067 (= e!3470102 EmptyLang!15621)))

(declare-fun b!5630068 () Bool)

(declare-fun call!424363 () Regex!15621)

(declare-fun call!424361 () Regex!15621)

(assert (=> b!5630068 (= e!3470103 (Union!15621 call!424363 call!424361))))

(declare-fun b!5630069 () Bool)

(assert (=> b!5630069 (= e!3470100 (ite (= (head!11986 s!2326) (c!988159 r!7292)) EmptyExpr!15621 EmptyLang!15621))))

(declare-fun b!5630070 () Bool)

(assert (=> b!5630070 (= e!3470102 e!3470100)))

(declare-fun c!988635 () Bool)

(assert (=> b!5630070 (= c!988635 ((_ is ElementMatch!15621) r!7292))))

(declare-fun call!424360 () Regex!15621)

(declare-fun e!3470101 () Regex!15621)

(declare-fun b!5630071 () Bool)

(assert (=> b!5630071 (= e!3470101 (Union!15621 (Concat!24466 call!424361 (regTwo!31754 r!7292)) call!424360))))

(declare-fun b!5630072 () Bool)

(declare-fun c!988634 () Bool)

(assert (=> b!5630072 (= c!988634 (nullable!5653 (regOne!31754 r!7292)))))

(declare-fun e!3470104 () Regex!15621)

(assert (=> b!5630072 (= e!3470104 e!3470101)))

(declare-fun b!5630073 () Bool)

(declare-fun call!424362 () Regex!15621)

(assert (=> b!5630073 (= e!3470104 (Concat!24466 call!424362 r!7292))))

(declare-fun bm!424356 () Bool)

(assert (=> bm!424356 (= call!424360 call!424362)))

(declare-fun b!5630074 () Bool)

(assert (=> b!5630074 (= e!3470103 e!3470104)))

(declare-fun c!988633 () Bool)

(assert (=> b!5630074 (= c!988633 ((_ is Star!15621) r!7292))))

(declare-fun d!1778440 () Bool)

(declare-fun lt!2262226 () Regex!15621)

(assert (=> d!1778440 (validRegex!7357 lt!2262226)))

(assert (=> d!1778440 (= lt!2262226 e!3470102)))

(declare-fun c!988632 () Bool)

(assert (=> d!1778440 (= c!988632 (or ((_ is EmptyExpr!15621) r!7292) ((_ is EmptyLang!15621) r!7292)))))

(assert (=> d!1778440 (validRegex!7357 r!7292)))

(assert (=> d!1778440 (= (derivativeStep!4456 r!7292 (head!11986 s!2326)) lt!2262226)))

(declare-fun bm!424355 () Bool)

(assert (=> bm!424355 (= call!424361 (derivativeStep!4456 (ite c!988631 (regTwo!31755 r!7292) (regOne!31754 r!7292)) (head!11986 s!2326)))))

(declare-fun b!5630075 () Bool)

(assert (=> b!5630075 (= e!3470101 (Union!15621 (Concat!24466 call!424360 (regTwo!31754 r!7292)) EmptyLang!15621))))

(declare-fun bm!424357 () Bool)

(assert (=> bm!424357 (= call!424362 call!424363)))

(declare-fun bm!424358 () Bool)

(assert (=> bm!424358 (= call!424363 (derivativeStep!4456 (ite c!988631 (regOne!31755 r!7292) (ite c!988633 (reg!15950 r!7292) (ite c!988634 (regTwo!31754 r!7292) (regOne!31754 r!7292)))) (head!11986 s!2326)))))

(assert (= (and d!1778440 c!988632) b!5630067))

(assert (= (and d!1778440 (not c!988632)) b!5630070))

(assert (= (and b!5630070 c!988635) b!5630069))

(assert (= (and b!5630070 (not c!988635)) b!5630066))

(assert (= (and b!5630066 c!988631) b!5630068))

(assert (= (and b!5630066 (not c!988631)) b!5630074))

(assert (= (and b!5630074 c!988633) b!5630073))

(assert (= (and b!5630074 (not c!988633)) b!5630072))

(assert (= (and b!5630072 c!988634) b!5630071))

(assert (= (and b!5630072 (not c!988634)) b!5630075))

(assert (= (or b!5630071 b!5630075) bm!424356))

(assert (= (or b!5630073 bm!424356) bm!424357))

(assert (= (or b!5630068 b!5630071) bm!424355))

(assert (= (or b!5630068 bm!424357) bm!424358))

(declare-fun m!6601574 () Bool)

(assert (=> b!5630072 m!6601574))

(declare-fun m!6601576 () Bool)

(assert (=> d!1778440 m!6601576))

(assert (=> d!1778440 m!6600062))

(assert (=> bm!424355 m!6600268))

(declare-fun m!6601578 () Bool)

(assert (=> bm!424355 m!6601578))

(assert (=> bm!424358 m!6600268))

(declare-fun m!6601580 () Bool)

(assert (=> bm!424358 m!6601580))

(assert (=> b!5628660 d!1778440))

(assert (=> b!5628660 d!1778282))

(assert (=> b!5628660 d!1778338))

(declare-fun d!1778442 () Bool)

(assert (=> d!1778442 (= (isDefined!12333 lt!2262150) (not (isEmpty!34878 lt!2262150)))))

(declare-fun bs!1302982 () Bool)

(assert (= bs!1302982 d!1778442))

(declare-fun m!6601582 () Bool)

(assert (=> bs!1302982 m!6601582))

(assert (=> b!5628781 d!1778442))

(declare-fun d!1778444 () Bool)

(assert (=> d!1778444 (= ($colon$colon!1671 (exprs!5505 lt!2262088) (ite (or c!988349 c!988350) (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (regTwo!31754 (regOne!31754 r!7292)))) (Cons!63039 (ite (or c!988349 c!988350) (regTwo!31754 (regTwo!31754 (regOne!31754 r!7292))) (regTwo!31754 (regOne!31754 r!7292))) (exprs!5505 lt!2262088)))))

(assert (=> bm!424150 d!1778444))

(declare-fun b!5630076 () Bool)

(declare-fun e!3470107 () (InoxSet Context!10010))

(declare-fun e!3470109 () (InoxSet Context!10010))

(assert (=> b!5630076 (= e!3470107 e!3470109)))

(declare-fun c!988636 () Bool)

(assert (=> b!5630076 (= c!988636 ((_ is Union!15621) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun b!5630077 () Bool)

(declare-fun e!3470105 () (InoxSet Context!10010))

(declare-fun e!3470110 () (InoxSet Context!10010))

(assert (=> b!5630077 (= e!3470105 e!3470110)))

(declare-fun c!988640 () Bool)

(assert (=> b!5630077 (= c!988640 ((_ is Concat!24466) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun b!5630078 () Bool)

(declare-fun call!424367 () (InoxSet Context!10010))

(declare-fun call!424366 () (InoxSet Context!10010))

(assert (=> b!5630078 (= e!3470109 ((_ map or) call!424367 call!424366))))

(declare-fun bm!424359 () Bool)

(declare-fun call!424369 () (InoxSet Context!10010))

(declare-fun call!424368 () (InoxSet Context!10010))

(assert (=> bm!424359 (= call!424369 call!424368)))

(declare-fun d!1778446 () Bool)

(declare-fun c!988638 () Bool)

(assert (=> d!1778446 (= c!988638 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (= (c!988159 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326))))))

(assert (=> d!1778446 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69486 s!2326)) e!3470107)))

(declare-fun b!5630079 () Bool)

(declare-fun c!988639 () Bool)

(declare-fun e!3470106 () Bool)

(assert (=> b!5630079 (= c!988639 e!3470106)))

(declare-fun res!2384279 () Bool)

(assert (=> b!5630079 (=> (not res!2384279) (not e!3470106))))

(assert (=> b!5630079 (= res!2384279 ((_ is Concat!24466) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(assert (=> b!5630079 (= e!3470109 e!3470105)))

(declare-fun call!424364 () List!63163)

(declare-fun bm!424360 () Bool)

(assert (=> bm!424360 (= call!424367 (derivationStepZipperDown!963 (ite c!988636 (regOne!31755 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (ite c!988639 (regTwo!31754 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (ite c!988640 (regOne!31754 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (reg!15950 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))) (ite (or c!988636 c!988639) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (Context!10011 call!424364)) (h!69486 s!2326)))))

(declare-fun bm!424361 () Bool)

(assert (=> bm!424361 (= call!424368 call!424367)))

(declare-fun call!424365 () List!63163)

(declare-fun bm!424362 () Bool)

(assert (=> bm!424362 (= call!424366 (derivationStepZipperDown!963 (ite c!988636 (regTwo!31755 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (regOne!31754 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))) (ite c!988636 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (Context!10011 call!424365)) (h!69486 s!2326)))))

(declare-fun bm!424363 () Bool)

(assert (=> bm!424363 (= call!424365 ($colon$colon!1671 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))) (ite (or c!988639 c!988640) (regTwo!31754 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))))

(declare-fun b!5630080 () Bool)

(assert (=> b!5630080 (= e!3470105 ((_ map or) call!424366 call!424368))))

(declare-fun b!5630081 () Bool)

(assert (=> b!5630081 (= e!3470107 (store ((as const (Array Context!10010 Bool)) false) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) true))))

(declare-fun b!5630082 () Bool)

(assert (=> b!5630082 (= e!3470110 call!424369)))

(declare-fun b!5630083 () Bool)

(assert (=> b!5630083 (= e!3470106 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343))))))))))))

(declare-fun bm!424364 () Bool)

(assert (=> bm!424364 (= call!424364 call!424365)))

(declare-fun b!5630084 () Bool)

(declare-fun c!988637 () Bool)

(assert (=> b!5630084 (= c!988637 ((_ is Star!15621) (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun e!3470108 () (InoxSet Context!10010))

(assert (=> b!5630084 (= e!3470110 e!3470108)))

(declare-fun b!5630085 () Bool)

(assert (=> b!5630085 (= e!3470108 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630086 () Bool)

(assert (=> b!5630086 (= e!3470108 call!424369)))

(assert (= (and d!1778446 c!988638) b!5630081))

(assert (= (and d!1778446 (not c!988638)) b!5630076))

(assert (= (and b!5630076 c!988636) b!5630078))

(assert (= (and b!5630076 (not c!988636)) b!5630079))

(assert (= (and b!5630079 res!2384279) b!5630083))

(assert (= (and b!5630079 c!988639) b!5630080))

(assert (= (and b!5630079 (not c!988639)) b!5630077))

(assert (= (and b!5630077 c!988640) b!5630082))

(assert (= (and b!5630077 (not c!988640)) b!5630084))

(assert (= (and b!5630084 c!988637) b!5630086))

(assert (= (and b!5630084 (not c!988637)) b!5630085))

(assert (= (or b!5630082 b!5630086) bm!424364))

(assert (= (or b!5630082 b!5630086) bm!424359))

(assert (= (or b!5630080 bm!424364) bm!424363))

(assert (= (or b!5630080 bm!424359) bm!424361))

(assert (= (or b!5630078 b!5630080) bm!424362))

(assert (= (or b!5630078 bm!424361) bm!424360))

(declare-fun m!6601584 () Bool)

(assert (=> bm!424363 m!6601584))

(declare-fun m!6601586 () Bool)

(assert (=> bm!424362 m!6601586))

(declare-fun m!6601588 () Bool)

(assert (=> b!5630083 m!6601588))

(declare-fun m!6601590 () Bool)

(assert (=> bm!424360 m!6601590))

(declare-fun m!6601592 () Bool)

(assert (=> b!5630081 m!6601592))

(assert (=> bm!424143 d!1778446))

(assert (=> d!1777914 d!1778432))

(declare-fun b!5630087 () Bool)

(declare-fun e!3470112 () (InoxSet Context!10010))

(assert (=> b!5630087 (= e!3470112 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630088 () Bool)

(declare-fun e!3470113 () (InoxSet Context!10010))

(declare-fun call!424370 () (InoxSet Context!10010))

(assert (=> b!5630088 (= e!3470113 ((_ map or) call!424370 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343))))))) (h!69486 s!2326))))))

(declare-fun b!5630089 () Bool)

(assert (=> b!5630089 (= e!3470113 e!3470112)))

(declare-fun c!988642 () Bool)

(assert (=> b!5630089 (= c!988642 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630090 () Bool)

(assert (=> b!5630090 (= e!3470112 call!424370)))

(declare-fun b!5630091 () Bool)

(declare-fun e!3470111 () Bool)

(assert (=> b!5630091 (= e!3470111 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343))))))))))

(declare-fun d!1778448 () Bool)

(declare-fun c!988641 () Bool)

(assert (=> d!1778448 (= c!988641 e!3470111)))

(declare-fun res!2384280 () Bool)

(assert (=> d!1778448 (=> (not res!2384280) (not e!3470111))))

(assert (=> d!1778448 (= res!2384280 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))))))))

(assert (=> d!1778448 (= (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326)) e!3470113)))

(declare-fun bm!424365 () Bool)

(assert (=> bm!424365 (= call!424370 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343))))))) (h!69486 s!2326)))))

(assert (= (and d!1778448 res!2384280) b!5630091))

(assert (= (and d!1778448 c!988641) b!5630088))

(assert (= (and d!1778448 (not c!988641)) b!5630089))

(assert (= (and b!5630089 c!988642) b!5630090))

(assert (= (and b!5630089 (not c!988642)) b!5630087))

(assert (= (or b!5630088 b!5630090) bm!424365))

(declare-fun m!6601594 () Bool)

(assert (=> b!5630088 m!6601594))

(declare-fun m!6601596 () Bool)

(assert (=> b!5630091 m!6601596))

(declare-fun m!6601598 () Bool)

(assert (=> bm!424365 m!6601598))

(assert (=> b!5628971 d!1778448))

(assert (=> d!1777848 d!1778432))

(assert (=> bs!1302624 d!1777974))

(assert (=> d!1777952 d!1778432))

(declare-fun bs!1302983 () Bool)

(declare-fun d!1778450 () Bool)

(assert (= bs!1302983 (and d!1778450 d!1778368)))

(declare-fun lambda!302529 () Int)

(assert (=> bs!1302983 (= lambda!302529 lambda!302517)))

(declare-fun bs!1302984 () Bool)

(assert (= bs!1302984 (and d!1778450 d!1778292)))

(assert (=> bs!1302984 (= lambda!302529 lambda!302508)))

(declare-fun bs!1302985 () Bool)

(assert (= bs!1302985 (and d!1778450 d!1778402)))

(assert (=> bs!1302985 (= lambda!302529 lambda!302524)))

(declare-fun bs!1302986 () Bool)

(assert (= bs!1302986 (and d!1778450 d!1778296)))

(assert (=> bs!1302986 (= lambda!302529 lambda!302509)))

(declare-fun bs!1302987 () Bool)

(assert (= bs!1302987 (and d!1778450 d!1778278)))

(assert (=> bs!1302987 (= lambda!302529 lambda!302507)))

(assert (=> d!1778450 (= (nullableZipper!1603 lt!2262075) (exists!2186 lt!2262075 lambda!302529))))

(declare-fun bs!1302988 () Bool)

(assert (= bs!1302988 d!1778450))

(declare-fun m!6601600 () Bool)

(assert (=> bs!1302988 m!6601600))

(assert (=> b!5628711 d!1778450))

(declare-fun d!1778452 () Bool)

(assert (=> d!1778452 (= (isEmpty!34874 (unfocusZipperList!1049 zl!343)) ((_ is Nil!63039) (unfocusZipperList!1049 zl!343)))))

(assert (=> b!5629003 d!1778452))

(declare-fun d!1778454 () Bool)

(assert (=> d!1778454 (= (flatMap!1234 lt!2262093 lambda!302464) (choose!42667 lt!2262093 lambda!302464))))

(declare-fun bs!1302989 () Bool)

(assert (= bs!1302989 d!1778454))

(declare-fun m!6601602 () Bool)

(assert (=> bs!1302989 m!6601602))

(assert (=> d!1777980 d!1778454))

(declare-fun d!1778456 () Bool)

(declare-fun c!988643 () Bool)

(assert (=> d!1778456 (= c!988643 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470114 () Bool)

(assert (=> d!1778456 (= (matchZipper!1759 (derivationStepZipper!1708 ((_ map or) lt!2262073 lt!2262094) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470114)))

(declare-fun b!5630092 () Bool)

(assert (=> b!5630092 (= e!3470114 (nullableZipper!1603 (derivationStepZipper!1708 ((_ map or) lt!2262073 lt!2262094) (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630093 () Bool)

(assert (=> b!5630093 (= e!3470114 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 ((_ map or) lt!2262073 lt!2262094) (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778456 c!988643) b!5630092))

(assert (= (and d!1778456 (not c!988643)) b!5630093))

(assert (=> d!1778456 m!6600292))

(assert (=> d!1778456 m!6601284))

(assert (=> b!5630092 m!6600564))

(declare-fun m!6601604 () Bool)

(assert (=> b!5630092 m!6601604))

(assert (=> b!5630093 m!6600292))

(assert (=> b!5630093 m!6601288))

(assert (=> b!5630093 m!6600564))

(assert (=> b!5630093 m!6601288))

(declare-fun m!6601606 () Bool)

(assert (=> b!5630093 m!6601606))

(assert (=> b!5630093 m!6600292))

(assert (=> b!5630093 m!6601292))

(assert (=> b!5630093 m!6601606))

(assert (=> b!5630093 m!6601292))

(declare-fun m!6601608 () Bool)

(assert (=> b!5630093 m!6601608))

(assert (=> b!5629044 d!1778456))

(declare-fun bs!1302990 () Bool)

(declare-fun d!1778458 () Bool)

(assert (= bs!1302990 (and d!1778458 d!1777980)))

(declare-fun lambda!302530 () Int)

(assert (=> bs!1302990 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302530 lambda!302464))))

(declare-fun bs!1302991 () Bool)

(assert (= bs!1302991 (and d!1778458 d!1778326)))

(assert (=> bs!1302991 (= lambda!302530 lambda!302512)))

(declare-fun bs!1302992 () Bool)

(assert (= bs!1302992 (and d!1778458 d!1777946)))

(assert (=> bs!1302992 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302530 lambda!302460))))

(declare-fun bs!1302993 () Bool)

(assert (= bs!1302993 (and d!1778458 d!1778306)))

(assert (=> bs!1302993 (= lambda!302530 lambda!302510)))

(declare-fun bs!1302994 () Bool)

(assert (= bs!1302994 (and d!1778458 b!5628366)))

(assert (=> bs!1302994 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302530 lambda!302400))))

(declare-fun bs!1302995 () Bool)

(assert (= bs!1302995 (and d!1778458 d!1778406)))

(assert (=> bs!1302995 (= lambda!302530 lambda!302525)))

(declare-fun bs!1302996 () Bool)

(assert (= bs!1302996 (and d!1778458 d!1778318)))

(assert (=> bs!1302996 (= lambda!302530 lambda!302511)))

(assert (=> d!1778458 true))

(assert (=> d!1778458 (= (derivationStepZipper!1708 ((_ map or) lt!2262073 lt!2262094) (head!11986 (t!376454 s!2326))) (flatMap!1234 ((_ map or) lt!2262073 lt!2262094) lambda!302530))))

(declare-fun bs!1302997 () Bool)

(assert (= bs!1302997 d!1778458))

(declare-fun m!6601610 () Bool)

(assert (=> bs!1302997 m!6601610))

(assert (=> b!5629044 d!1778458))

(assert (=> b!5629044 d!1778308))

(assert (=> b!5629044 d!1778310))

(declare-fun d!1778460 () Bool)

(assert (=> d!1778460 true))

(declare-fun setRes!37604 () Bool)

(assert (=> d!1778460 setRes!37604))

(declare-fun condSetEmpty!37604 () Bool)

(declare-fun res!2384281 () (InoxSet Context!10010))

(assert (=> d!1778460 (= condSetEmpty!37604 (= res!2384281 ((as const (Array Context!10010 Bool)) false)))))

(assert (=> d!1778460 (= (choose!42667 lt!2262072 lambda!302400) res!2384281)))

(declare-fun setIsEmpty!37604 () Bool)

(assert (=> setIsEmpty!37604 setRes!37604))

(declare-fun setElem!37604 () Context!10010)

(declare-fun tp!1558417 () Bool)

(declare-fun e!3470115 () Bool)

(declare-fun setNonEmpty!37604 () Bool)

(assert (=> setNonEmpty!37604 (= setRes!37604 (and tp!1558417 (inv!82299 setElem!37604) e!3470115))))

(declare-fun setRest!37604 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37604 (= res!2384281 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37604 true) setRest!37604))))

(declare-fun b!5630094 () Bool)

(declare-fun tp!1558416 () Bool)

(assert (=> b!5630094 (= e!3470115 tp!1558416)))

(assert (= (and d!1778460 condSetEmpty!37604) setIsEmpty!37604))

(assert (= (and d!1778460 (not condSetEmpty!37604)) setNonEmpty!37604))

(assert (= setNonEmpty!37604 b!5630094))

(declare-fun m!6601612 () Bool)

(assert (=> setNonEmpty!37604 m!6601612))

(assert (=> d!1777958 d!1778460))

(declare-fun d!1778462 () Bool)

(declare-fun c!988644 () Bool)

(assert (=> d!1778462 (= c!988644 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470116 () Bool)

(assert (=> d!1778462 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262090 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470116)))

(declare-fun b!5630095 () Bool)

(assert (=> b!5630095 (= e!3470116 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262090 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630096 () Bool)

(assert (=> b!5630096 (= e!3470116 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262090 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778462 c!988644) b!5630095))

(assert (= (and d!1778462 (not c!988644)) b!5630096))

(assert (=> d!1778462 m!6600292))

(assert (=> d!1778462 m!6601284))

(assert (=> b!5630095 m!6600462))

(declare-fun m!6601614 () Bool)

(assert (=> b!5630095 m!6601614))

(assert (=> b!5630096 m!6600292))

(assert (=> b!5630096 m!6601288))

(assert (=> b!5630096 m!6600462))

(assert (=> b!5630096 m!6601288))

(declare-fun m!6601616 () Bool)

(assert (=> b!5630096 m!6601616))

(assert (=> b!5630096 m!6600292))

(assert (=> b!5630096 m!6601292))

(assert (=> b!5630096 m!6601616))

(assert (=> b!5630096 m!6601292))

(declare-fun m!6601618 () Bool)

(assert (=> b!5630096 m!6601618))

(assert (=> b!5628918 d!1778462))

(declare-fun bs!1302998 () Bool)

(declare-fun d!1778464 () Bool)

(assert (= bs!1302998 (and d!1778464 d!1777980)))

(declare-fun lambda!302531 () Int)

(assert (=> bs!1302998 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302531 lambda!302464))))

(declare-fun bs!1302999 () Bool)

(assert (= bs!1302999 (and d!1778464 d!1778326)))

(assert (=> bs!1302999 (= lambda!302531 lambda!302512)))

(declare-fun bs!1303000 () Bool)

(assert (= bs!1303000 (and d!1778464 d!1778458)))

(assert (=> bs!1303000 (= lambda!302531 lambda!302530)))

(declare-fun bs!1303001 () Bool)

(assert (= bs!1303001 (and d!1778464 d!1777946)))

(assert (=> bs!1303001 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302531 lambda!302460))))

(declare-fun bs!1303002 () Bool)

(assert (= bs!1303002 (and d!1778464 d!1778306)))

(assert (=> bs!1303002 (= lambda!302531 lambda!302510)))

(declare-fun bs!1303003 () Bool)

(assert (= bs!1303003 (and d!1778464 b!5628366)))

(assert (=> bs!1303003 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302531 lambda!302400))))

(declare-fun bs!1303004 () Bool)

(assert (= bs!1303004 (and d!1778464 d!1778406)))

(assert (=> bs!1303004 (= lambda!302531 lambda!302525)))

(declare-fun bs!1303005 () Bool)

(assert (= bs!1303005 (and d!1778464 d!1778318)))

(assert (=> bs!1303005 (= lambda!302531 lambda!302511)))

(assert (=> d!1778464 true))

(assert (=> d!1778464 (= (derivationStepZipper!1708 lt!2262090 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262090 lambda!302531))))

(declare-fun bs!1303006 () Bool)

(assert (= bs!1303006 d!1778464))

(declare-fun m!6601620 () Bool)

(assert (=> bs!1303006 m!6601620))

(assert (=> b!5628918 d!1778464))

(assert (=> b!5628918 d!1778308))

(assert (=> b!5628918 d!1778310))

(declare-fun b!5630097 () Bool)

(declare-fun e!3470119 () (InoxSet Context!10010))

(declare-fun e!3470121 () (InoxSet Context!10010))

(assert (=> b!5630097 (= e!3470119 e!3470121)))

(declare-fun c!988645 () Bool)

(assert (=> b!5630097 (= c!988645 ((_ is Union!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5630098 () Bool)

(declare-fun e!3470117 () (InoxSet Context!10010))

(declare-fun e!3470122 () (InoxSet Context!10010))

(assert (=> b!5630098 (= e!3470117 e!3470122)))

(declare-fun c!988649 () Bool)

(assert (=> b!5630098 (= c!988649 ((_ is Concat!24466) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5630099 () Bool)

(declare-fun call!424374 () (InoxSet Context!10010))

(declare-fun call!424373 () (InoxSet Context!10010))

(assert (=> b!5630099 (= e!3470121 ((_ map or) call!424374 call!424373))))

(declare-fun bm!424366 () Bool)

(declare-fun call!424376 () (InoxSet Context!10010))

(declare-fun call!424375 () (InoxSet Context!10010))

(assert (=> bm!424366 (= call!424376 call!424375)))

(declare-fun d!1778466 () Bool)

(declare-fun c!988647 () Bool)

(assert (=> d!1778466 (= c!988647 (and ((_ is ElementMatch!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))) (= (c!988159 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326))))))

(assert (=> d!1778466 (= (derivationStepZipperDown!963 (h!69487 (exprs!5505 (h!69488 zl!343))) (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (h!69486 s!2326)) e!3470119)))

(declare-fun b!5630100 () Bool)

(declare-fun c!988648 () Bool)

(declare-fun e!3470118 () Bool)

(assert (=> b!5630100 (= c!988648 e!3470118)))

(declare-fun res!2384282 () Bool)

(assert (=> b!5630100 (=> (not res!2384282) (not e!3470118))))

(assert (=> b!5630100 (= res!2384282 ((_ is Concat!24466) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> b!5630100 (= e!3470121 e!3470117)))

(declare-fun call!424371 () List!63163)

(declare-fun bm!424367 () Bool)

(assert (=> bm!424367 (= call!424374 (derivationStepZipperDown!963 (ite c!988645 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988648 (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (ite c!988649 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (reg!15950 (h!69487 (exprs!5505 (h!69488 zl!343))))))) (ite (or c!988645 c!988648) (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (Context!10011 call!424371)) (h!69486 s!2326)))))

(declare-fun bm!424368 () Bool)

(assert (=> bm!424368 (= call!424375 call!424374)))

(declare-fun bm!424369 () Bool)

(declare-fun call!424372 () List!63163)

(assert (=> bm!424369 (= call!424373 (derivationStepZipperDown!963 (ite c!988645 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))) (ite c!988645 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) (Context!10011 call!424372)) (h!69486 s!2326)))))

(declare-fun bm!424370 () Bool)

(assert (=> bm!424370 (= call!424372 ($colon$colon!1671 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343))))) (ite (or c!988648 c!988649) (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))) (h!69487 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun b!5630101 () Bool)

(assert (=> b!5630101 (= e!3470117 ((_ map or) call!424373 call!424375))))

(declare-fun b!5630102 () Bool)

(assert (=> b!5630102 (= e!3470119 (store ((as const (Array Context!10010 Bool)) false) (Context!10011 (t!376455 (exprs!5505 (h!69488 zl!343)))) true))))

(declare-fun b!5630103 () Bool)

(assert (=> b!5630103 (= e!3470122 call!424376)))

(declare-fun b!5630104 () Bool)

(assert (=> b!5630104 (= e!3470118 (nullable!5653 (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))

(declare-fun bm!424371 () Bool)

(assert (=> bm!424371 (= call!424371 call!424372)))

(declare-fun b!5630105 () Bool)

(declare-fun c!988646 () Bool)

(assert (=> b!5630105 (= c!988646 ((_ is Star!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun e!3470120 () (InoxSet Context!10010))

(assert (=> b!5630105 (= e!3470122 e!3470120)))

(declare-fun b!5630106 () Bool)

(assert (=> b!5630106 (= e!3470120 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630107 () Bool)

(assert (=> b!5630107 (= e!3470120 call!424376)))

(assert (= (and d!1778466 c!988647) b!5630102))

(assert (= (and d!1778466 (not c!988647)) b!5630097))

(assert (= (and b!5630097 c!988645) b!5630099))

(assert (= (and b!5630097 (not c!988645)) b!5630100))

(assert (= (and b!5630100 res!2384282) b!5630104))

(assert (= (and b!5630100 c!988648) b!5630101))

(assert (= (and b!5630100 (not c!988648)) b!5630098))

(assert (= (and b!5630098 c!988649) b!5630103))

(assert (= (and b!5630098 (not c!988649)) b!5630105))

(assert (= (and b!5630105 c!988646) b!5630107))

(assert (= (and b!5630105 (not c!988646)) b!5630106))

(assert (= (or b!5630103 b!5630107) bm!424371))

(assert (= (or b!5630103 b!5630107) bm!424366))

(assert (= (or b!5630101 bm!424371) bm!424370))

(assert (= (or b!5630101 bm!424366) bm!424368))

(assert (= (or b!5630099 b!5630101) bm!424369))

(assert (= (or b!5630099 bm!424368) bm!424367))

(declare-fun m!6601622 () Bool)

(assert (=> bm!424370 m!6601622))

(declare-fun m!6601624 () Bool)

(assert (=> bm!424369 m!6601624))

(assert (=> b!5630104 m!6600476))

(declare-fun m!6601626 () Bool)

(assert (=> bm!424367 m!6601626))

(declare-fun m!6601628 () Bool)

(assert (=> b!5630102 m!6601628))

(assert (=> bm!424144 d!1778466))

(declare-fun bm!424376 () Bool)

(declare-fun call!424382 () Bool)

(declare-fun c!988652 () Bool)

(assert (=> bm!424376 (= call!424382 (nullable!5653 (ite c!988652 (regTwo!31755 (regOne!31754 (regOne!31754 r!7292))) (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5630122 () Bool)

(declare-fun e!3470135 () Bool)

(assert (=> b!5630122 (= e!3470135 call!424382)))

(declare-fun bm!424377 () Bool)

(declare-fun call!424381 () Bool)

(assert (=> bm!424377 (= call!424381 (nullable!5653 (ite c!988652 (regOne!31755 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5630123 () Bool)

(declare-fun e!3470140 () Bool)

(declare-fun e!3470138 () Bool)

(assert (=> b!5630123 (= e!3470140 e!3470138)))

(declare-fun res!2384293 () Bool)

(assert (=> b!5630123 (=> (not res!2384293) (not e!3470138))))

(assert (=> b!5630123 (= res!2384293 (and (not ((_ is EmptyLang!15621) (regOne!31754 (regOne!31754 r!7292)))) (not ((_ is ElementMatch!15621) (regOne!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5630124 () Bool)

(declare-fun e!3470139 () Bool)

(assert (=> b!5630124 (= e!3470139 e!3470135)))

(declare-fun res!2384297 () Bool)

(assert (=> b!5630124 (= res!2384297 call!424381)))

(assert (=> b!5630124 (=> (not res!2384297) (not e!3470135))))

(declare-fun b!5630125 () Bool)

(declare-fun e!3470136 () Bool)

(assert (=> b!5630125 (= e!3470139 e!3470136)))

(declare-fun res!2384296 () Bool)

(assert (=> b!5630125 (= res!2384296 call!424381)))

(assert (=> b!5630125 (=> res!2384296 e!3470136)))

(declare-fun b!5630126 () Bool)

(declare-fun e!3470137 () Bool)

(assert (=> b!5630126 (= e!3470137 e!3470139)))

(assert (=> b!5630126 (= c!988652 ((_ is Union!15621) (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun b!5630127 () Bool)

(assert (=> b!5630127 (= e!3470138 e!3470137)))

(declare-fun res!2384295 () Bool)

(assert (=> b!5630127 (=> res!2384295 e!3470137)))

(assert (=> b!5630127 (= res!2384295 ((_ is Star!15621) (regOne!31754 (regOne!31754 r!7292))))))

(declare-fun b!5630128 () Bool)

(assert (=> b!5630128 (= e!3470136 call!424382)))

(declare-fun d!1778468 () Bool)

(declare-fun res!2384294 () Bool)

(assert (=> d!1778468 (=> res!2384294 e!3470140)))

(assert (=> d!1778468 (= res!2384294 ((_ is EmptyExpr!15621) (regOne!31754 (regOne!31754 r!7292))))))

(assert (=> d!1778468 (= (nullableFct!1749 (regOne!31754 (regOne!31754 r!7292))) e!3470140)))

(assert (= (and d!1778468 (not res!2384294)) b!5630123))

(assert (= (and b!5630123 res!2384293) b!5630127))

(assert (= (and b!5630127 (not res!2384295)) b!5630126))

(assert (= (and b!5630126 c!988652) b!5630125))

(assert (= (and b!5630126 (not c!988652)) b!5630124))

(assert (= (and b!5630125 (not res!2384296)) b!5630128))

(assert (= (and b!5630124 res!2384297) b!5630122))

(assert (= (or b!5630128 b!5630122) bm!424376))

(assert (= (or b!5630125 b!5630124) bm!424377))

(declare-fun m!6601630 () Bool)

(assert (=> bm!424376 m!6601630))

(declare-fun m!6601632 () Bool)

(assert (=> bm!424377 m!6601632))

(assert (=> d!1777932 d!1778468))

(declare-fun d!1778470 () Bool)

(assert (=> d!1778470 (= (Exists!2721 (ite c!988219 lambda!302419 lambda!302421)) (choose!42663 (ite c!988219 lambda!302419 lambda!302421)))))

(declare-fun bs!1303007 () Bool)

(assert (= bs!1303007 d!1778470))

(declare-fun m!6601634 () Bool)

(assert (=> bs!1303007 m!6601634))

(assert (=> bm!424092 d!1778470))

(declare-fun d!1778472 () Bool)

(declare-fun c!988653 () Bool)

(assert (=> d!1778472 (= c!988653 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470141 () Bool)

(assert (=> d!1778472 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262094 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470141)))

(declare-fun b!5630129 () Bool)

(assert (=> b!5630129 (= e!3470141 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262094 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630130 () Bool)

(assert (=> b!5630130 (= e!3470141 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262094 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778472 c!988653) b!5630129))

(assert (= (and d!1778472 (not c!988653)) b!5630130))

(assert (=> d!1778472 m!6600292))

(assert (=> d!1778472 m!6601284))

(assert (=> b!5630129 m!6600618))

(declare-fun m!6601636 () Bool)

(assert (=> b!5630129 m!6601636))

(assert (=> b!5630130 m!6600292))

(assert (=> b!5630130 m!6601288))

(assert (=> b!5630130 m!6600618))

(assert (=> b!5630130 m!6601288))

(declare-fun m!6601638 () Bool)

(assert (=> b!5630130 m!6601638))

(assert (=> b!5630130 m!6600292))

(assert (=> b!5630130 m!6601292))

(assert (=> b!5630130 m!6601638))

(assert (=> b!5630130 m!6601292))

(declare-fun m!6601640 () Bool)

(assert (=> b!5630130 m!6601640))

(assert (=> b!5629086 d!1778472))

(declare-fun bs!1303008 () Bool)

(declare-fun d!1778474 () Bool)

(assert (= bs!1303008 (and d!1778474 d!1777980)))

(declare-fun lambda!302532 () Int)

(assert (=> bs!1303008 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302532 lambda!302464))))

(declare-fun bs!1303009 () Bool)

(assert (= bs!1303009 (and d!1778474 d!1778326)))

(assert (=> bs!1303009 (= lambda!302532 lambda!302512)))

(declare-fun bs!1303010 () Bool)

(assert (= bs!1303010 (and d!1778474 d!1778458)))

(assert (=> bs!1303010 (= lambda!302532 lambda!302530)))

(declare-fun bs!1303011 () Bool)

(assert (= bs!1303011 (and d!1778474 d!1777946)))

(assert (=> bs!1303011 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302532 lambda!302460))))

(declare-fun bs!1303012 () Bool)

(assert (= bs!1303012 (and d!1778474 d!1778306)))

(assert (=> bs!1303012 (= lambda!302532 lambda!302510)))

(declare-fun bs!1303013 () Bool)

(assert (= bs!1303013 (and d!1778474 d!1778464)))

(assert (=> bs!1303013 (= lambda!302532 lambda!302531)))

(declare-fun bs!1303014 () Bool)

(assert (= bs!1303014 (and d!1778474 b!5628366)))

(assert (=> bs!1303014 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302532 lambda!302400))))

(declare-fun bs!1303015 () Bool)

(assert (= bs!1303015 (and d!1778474 d!1778406)))

(assert (=> bs!1303015 (= lambda!302532 lambda!302525)))

(declare-fun bs!1303016 () Bool)

(assert (= bs!1303016 (and d!1778474 d!1778318)))

(assert (=> bs!1303016 (= lambda!302532 lambda!302511)))

(assert (=> d!1778474 true))

(assert (=> d!1778474 (= (derivationStepZipper!1708 lt!2262094 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262094 lambda!302532))))

(declare-fun bs!1303017 () Bool)

(assert (= bs!1303017 d!1778474))

(declare-fun m!6601642 () Bool)

(assert (=> bs!1303017 m!6601642))

(assert (=> b!5629086 d!1778474))

(assert (=> b!5629086 d!1778308))

(assert (=> b!5629086 d!1778310))

(declare-fun b!5630131 () Bool)

(declare-fun e!3470144 () (InoxSet Context!10010))

(declare-fun e!3470146 () (InoxSet Context!10010))

(assert (=> b!5630131 (= e!3470144 e!3470146)))

(declare-fun c!988654 () Bool)

(assert (=> b!5630131 (= c!988654 ((_ is Union!15621) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630132 () Bool)

(declare-fun e!3470142 () (InoxSet Context!10010))

(declare-fun e!3470147 () (InoxSet Context!10010))

(assert (=> b!5630132 (= e!3470142 e!3470147)))

(declare-fun c!988658 () Bool)

(assert (=> b!5630132 (= c!988658 ((_ is Concat!24466) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630133 () Bool)

(declare-fun call!424386 () (InoxSet Context!10010))

(declare-fun call!424385 () (InoxSet Context!10010))

(assert (=> b!5630133 (= e!3470146 ((_ map or) call!424386 call!424385))))

(declare-fun bm!424378 () Bool)

(declare-fun call!424388 () (InoxSet Context!10010))

(declare-fun call!424387 () (InoxSet Context!10010))

(assert (=> bm!424378 (= call!424388 call!424387)))

(declare-fun c!988656 () Bool)

(declare-fun d!1778476 () Bool)

(assert (=> d!1778476 (= c!988656 (and ((_ is ElementMatch!15621) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (= (c!988159 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (h!69486 s!2326))))))

(assert (=> d!1778476 (= (derivationStepZipperDown!963 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))) (ite c!988316 lt!2262088 (Context!10011 call!424141)) (h!69486 s!2326)) e!3470144)))

(declare-fun b!5630134 () Bool)

(declare-fun c!988657 () Bool)

(declare-fun e!3470143 () Bool)

(assert (=> b!5630134 (= c!988657 e!3470143)))

(declare-fun res!2384298 () Bool)

(assert (=> b!5630134 (=> (not res!2384298) (not e!3470143))))

(assert (=> b!5630134 (= res!2384298 ((_ is Concat!24466) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(assert (=> b!5630134 (= e!3470146 e!3470142)))

(declare-fun bm!424379 () Bool)

(declare-fun call!424383 () List!63163)

(assert (=> bm!424379 (= call!424386 (derivationStepZipperDown!963 (ite c!988654 (regOne!31755 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (ite c!988657 (regTwo!31754 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (ite c!988658 (regOne!31754 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (reg!15950 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))) (ite (or c!988654 c!988657) (ite c!988316 lt!2262088 (Context!10011 call!424141)) (Context!10011 call!424383)) (h!69486 s!2326)))))

(declare-fun bm!424380 () Bool)

(assert (=> bm!424380 (= call!424387 call!424386)))

(declare-fun bm!424381 () Bool)

(declare-fun call!424384 () List!63163)

(assert (=> bm!424381 (= call!424385 (derivationStepZipperDown!963 (ite c!988654 (regTwo!31755 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (regOne!31754 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))) (ite c!988654 (ite c!988316 lt!2262088 (Context!10011 call!424141)) (Context!10011 call!424384)) (h!69486 s!2326)))))

(declare-fun bm!424382 () Bool)

(assert (=> bm!424382 (= call!424384 ($colon$colon!1671 (exprs!5505 (ite c!988316 lt!2262088 (Context!10011 call!424141))) (ite (or c!988657 c!988658) (regTwo!31754 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))))

(declare-fun b!5630135 () Bool)

(assert (=> b!5630135 (= e!3470142 ((_ map or) call!424385 call!424387))))

(declare-fun b!5630136 () Bool)

(assert (=> b!5630136 (= e!3470144 (store ((as const (Array Context!10010 Bool)) false) (ite c!988316 lt!2262088 (Context!10011 call!424141)) true))))

(declare-fun b!5630137 () Bool)

(assert (=> b!5630137 (= e!3470147 call!424388)))

(declare-fun b!5630138 () Bool)

(assert (=> b!5630138 (= e!3470143 (nullable!5653 (regOne!31754 (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343))))))))))

(declare-fun bm!424383 () Bool)

(assert (=> bm!424383 (= call!424383 call!424384)))

(declare-fun b!5630139 () Bool)

(declare-fun c!988655 () Bool)

(assert (=> b!5630139 (= c!988655 ((_ is Star!15621) (ite c!988316 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun e!3470145 () (InoxSet Context!10010))

(assert (=> b!5630139 (= e!3470147 e!3470145)))

(declare-fun b!5630140 () Bool)

(assert (=> b!5630140 (= e!3470145 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630141 () Bool)

(assert (=> b!5630141 (= e!3470145 call!424388)))

(assert (= (and d!1778476 c!988656) b!5630136))

(assert (= (and d!1778476 (not c!988656)) b!5630131))

(assert (= (and b!5630131 c!988654) b!5630133))

(assert (= (and b!5630131 (not c!988654)) b!5630134))

(assert (= (and b!5630134 res!2384298) b!5630138))

(assert (= (and b!5630134 c!988657) b!5630135))

(assert (= (and b!5630134 (not c!988657)) b!5630132))

(assert (= (and b!5630132 c!988658) b!5630137))

(assert (= (and b!5630132 (not c!988658)) b!5630139))

(assert (= (and b!5630139 c!988655) b!5630141))

(assert (= (and b!5630139 (not c!988655)) b!5630140))

(assert (= (or b!5630137 b!5630141) bm!424383))

(assert (= (or b!5630137 b!5630141) bm!424378))

(assert (= (or b!5630135 bm!424383) bm!424382))

(assert (= (or b!5630135 bm!424378) bm!424380))

(assert (= (or b!5630133 b!5630135) bm!424381))

(assert (= (or b!5630133 bm!424380) bm!424379))

(declare-fun m!6601644 () Bool)

(assert (=> bm!424382 m!6601644))

(declare-fun m!6601646 () Bool)

(assert (=> bm!424381 m!6601646))

(declare-fun m!6601648 () Bool)

(assert (=> b!5630138 m!6601648))

(declare-fun m!6601650 () Bool)

(assert (=> bm!424379 m!6601650))

(declare-fun m!6601652 () Bool)

(assert (=> b!5630136 m!6601652))

(assert (=> bm!424138 d!1778476))

(assert (=> d!1777850 d!1778432))

(declare-fun d!1778478 () Bool)

(assert (=> d!1778478 true))

(assert (=> d!1778478 true))

(declare-fun res!2384299 () Bool)

(assert (=> d!1778478 (= (choose!42663 lambda!302399) res!2384299)))

(assert (=> d!1777870 d!1778478))

(assert (=> b!5629014 d!1777956))

(declare-fun bs!1303018 () Bool)

(declare-fun d!1778480 () Bool)

(assert (= bs!1303018 (and d!1778480 d!1777938)))

(declare-fun lambda!302533 () Int)

(assert (=> bs!1303018 (= lambda!302533 lambda!302457)))

(declare-fun bs!1303019 () Bool)

(assert (= bs!1303019 (and d!1778480 d!1777956)))

(assert (=> bs!1303019 (= lambda!302533 lambda!302463)))

(declare-fun bs!1303020 () Bool)

(assert (= bs!1303020 (and d!1778480 d!1777842)))

(assert (=> bs!1303020 (= lambda!302533 lambda!302435)))

(declare-fun bs!1303021 () Bool)

(assert (= bs!1303021 (and d!1778480 d!1778334)))

(assert (=> bs!1303021 (= lambda!302533 lambda!302513)))

(declare-fun bs!1303022 () Bool)

(assert (= bs!1303022 (and d!1778480 d!1777936)))

(assert (=> bs!1303022 (= lambda!302533 lambda!302456)))

(declare-fun bs!1303023 () Bool)

(assert (= bs!1303023 (and d!1778480 d!1778430)))

(assert (=> bs!1303023 (= lambda!302533 lambda!302528)))

(declare-fun bs!1303024 () Bool)

(assert (= bs!1303024 (and d!1778480 d!1777934)))

(assert (=> bs!1303024 (= lambda!302533 lambda!302453)))

(declare-fun bs!1303025 () Bool)

(assert (= bs!1303025 (and d!1778480 d!1778360)))

(assert (=> bs!1303025 (= lambda!302533 lambda!302516)))

(declare-fun lt!2262227 () List!63163)

(assert (=> d!1778480 (forall!14775 lt!2262227 lambda!302533)))

(declare-fun e!3470148 () List!63163)

(assert (=> d!1778480 (= lt!2262227 e!3470148)))

(declare-fun c!988659 () Bool)

(assert (=> d!1778480 (= c!988659 ((_ is Cons!63040) (t!376456 zl!343)))))

(assert (=> d!1778480 (= (unfocusZipperList!1049 (t!376456 zl!343)) lt!2262227)))

(declare-fun b!5630142 () Bool)

(assert (=> b!5630142 (= e!3470148 (Cons!63039 (generalisedConcat!1236 (exprs!5505 (h!69488 (t!376456 zl!343)))) (unfocusZipperList!1049 (t!376456 (t!376456 zl!343)))))))

(declare-fun b!5630143 () Bool)

(assert (=> b!5630143 (= e!3470148 Nil!63039)))

(assert (= (and d!1778480 c!988659) b!5630142))

(assert (= (and d!1778480 (not c!988659)) b!5630143))

(declare-fun m!6601654 () Bool)

(assert (=> d!1778480 m!6601654))

(declare-fun m!6601656 () Bool)

(assert (=> b!5630142 m!6601656))

(declare-fun m!6601658 () Bool)

(assert (=> b!5630142 m!6601658))

(assert (=> b!5629014 d!1778480))

(assert (=> b!5629068 d!1777948))

(declare-fun b!5630144 () Bool)

(declare-fun e!3470151 () (InoxSet Context!10010))

(declare-fun e!3470153 () (InoxSet Context!10010))

(assert (=> b!5630144 (= e!3470151 e!3470153)))

(declare-fun c!988660 () Bool)

(assert (=> b!5630144 (= c!988660 ((_ is Union!15621) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5630145 () Bool)

(declare-fun e!3470149 () (InoxSet Context!10010))

(declare-fun e!3470154 () (InoxSet Context!10010))

(assert (=> b!5630145 (= e!3470149 e!3470154)))

(declare-fun c!988664 () Bool)

(assert (=> b!5630145 (= c!988664 ((_ is Concat!24466) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))))))

(declare-fun b!5630146 () Bool)

(declare-fun call!424392 () (InoxSet Context!10010))

(declare-fun call!424391 () (InoxSet Context!10010))

(assert (=> b!5630146 (= e!3470153 ((_ map or) call!424392 call!424391))))

(declare-fun bm!424384 () Bool)

(declare-fun call!424394 () (InoxSet Context!10010))

(declare-fun call!424393 () (InoxSet Context!10010))

(assert (=> bm!424384 (= call!424394 call!424393)))

(declare-fun d!1778482 () Bool)

(declare-fun c!988662 () Bool)

(assert (=> d!1778482 (= c!988662 (and ((_ is ElementMatch!15621) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (= (c!988159 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (h!69486 s!2326))))))

(assert (=> d!1778482 (= (derivationStepZipperDown!963 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))) (ite c!988346 lt!2262088 (Context!10011 call!424152)) (h!69486 s!2326)) e!3470151)))

(declare-fun b!5630147 () Bool)

(declare-fun c!988663 () Bool)

(declare-fun e!3470150 () Bool)

(assert (=> b!5630147 (= c!988663 e!3470150)))

(declare-fun res!2384300 () Bool)

(assert (=> b!5630147 (=> (not res!2384300) (not e!3470150))))

(assert (=> b!5630147 (= res!2384300 ((_ is Concat!24466) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))))))

(assert (=> b!5630147 (= e!3470153 e!3470149)))

(declare-fun bm!424385 () Bool)

(declare-fun call!424389 () List!63163)

(assert (=> bm!424385 (= call!424392 (derivationStepZipperDown!963 (ite c!988660 (regOne!31755 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (ite c!988663 (regTwo!31754 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (ite c!988664 (regOne!31754 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (reg!15950 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))))) (ite (or c!988660 c!988663) (ite c!988346 lt!2262088 (Context!10011 call!424152)) (Context!10011 call!424389)) (h!69486 s!2326)))))

(declare-fun bm!424386 () Bool)

(assert (=> bm!424386 (= call!424393 call!424392)))

(declare-fun call!424390 () List!63163)

(declare-fun bm!424387 () Bool)

(assert (=> bm!424387 (= call!424391 (derivationStepZipperDown!963 (ite c!988660 (regTwo!31755 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (regOne!31754 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))) (ite c!988660 (ite c!988346 lt!2262088 (Context!10011 call!424152)) (Context!10011 call!424390)) (h!69486 s!2326)))))

(declare-fun bm!424388 () Bool)

(assert (=> bm!424388 (= call!424390 ($colon$colon!1671 (exprs!5505 (ite c!988346 lt!2262088 (Context!10011 call!424152))) (ite (or c!988663 c!988664) (regTwo!31754 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))))))

(declare-fun b!5630148 () Bool)

(assert (=> b!5630148 (= e!3470149 ((_ map or) call!424391 call!424393))))

(declare-fun b!5630149 () Bool)

(assert (=> b!5630149 (= e!3470151 (store ((as const (Array Context!10010 Bool)) false) (ite c!988346 lt!2262088 (Context!10011 call!424152)) true))))

(declare-fun b!5630150 () Bool)

(assert (=> b!5630150 (= e!3470154 call!424394)))

(declare-fun b!5630151 () Bool)

(assert (=> b!5630151 (= e!3470150 (nullable!5653 (regOne!31754 (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))))))

(declare-fun bm!424389 () Bool)

(assert (=> bm!424389 (= call!424389 call!424390)))

(declare-fun b!5630152 () Bool)

(declare-fun c!988661 () Bool)

(assert (=> b!5630152 (= c!988661 ((_ is Star!15621) (ite c!988346 (regTwo!31755 (regTwo!31754 (regOne!31754 r!7292))) (regOne!31754 (regTwo!31754 (regOne!31754 r!7292))))))))

(declare-fun e!3470152 () (InoxSet Context!10010))

(assert (=> b!5630152 (= e!3470154 e!3470152)))

(declare-fun b!5630153 () Bool)

(assert (=> b!5630153 (= e!3470152 ((as const (Array Context!10010 Bool)) false))))

(declare-fun b!5630154 () Bool)

(assert (=> b!5630154 (= e!3470152 call!424394)))

(assert (= (and d!1778482 c!988662) b!5630149))

(assert (= (and d!1778482 (not c!988662)) b!5630144))

(assert (= (and b!5630144 c!988660) b!5630146))

(assert (= (and b!5630144 (not c!988660)) b!5630147))

(assert (= (and b!5630147 res!2384300) b!5630151))

(assert (= (and b!5630147 c!988663) b!5630148))

(assert (= (and b!5630147 (not c!988663)) b!5630145))

(assert (= (and b!5630145 c!988664) b!5630150))

(assert (= (and b!5630145 (not c!988664)) b!5630152))

(assert (= (and b!5630152 c!988661) b!5630154))

(assert (= (and b!5630152 (not c!988661)) b!5630153))

(assert (= (or b!5630150 b!5630154) bm!424389))

(assert (= (or b!5630150 b!5630154) bm!424384))

(assert (= (or b!5630148 bm!424389) bm!424388))

(assert (= (or b!5630148 bm!424384) bm!424386))

(assert (= (or b!5630146 b!5630148) bm!424387))

(assert (= (or b!5630146 bm!424386) bm!424385))

(declare-fun m!6601660 () Bool)

(assert (=> bm!424388 m!6601660))

(declare-fun m!6601662 () Bool)

(assert (=> bm!424387 m!6601662))

(declare-fun m!6601664 () Bool)

(assert (=> b!5630151 m!6601664))

(declare-fun m!6601666 () Bool)

(assert (=> bm!424385 m!6601666))

(declare-fun m!6601668 () Bool)

(assert (=> b!5630149 m!6601668))

(assert (=> bm!424149 d!1778482))

(declare-fun d!1778484 () Bool)

(assert (=> d!1778484 (= (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))) (nullableFct!1749 (h!69487 (exprs!5505 (Context!10011 (Cons!63039 (h!69487 (exprs!5505 (h!69488 zl!343))) (t!376455 (exprs!5505 (h!69488 zl!343)))))))))))

(declare-fun bs!1303026 () Bool)

(assert (= bs!1303026 d!1778484))

(declare-fun m!6601670 () Bool)

(assert (=> bs!1303026 m!6601670))

(assert (=> b!5628969 d!1778484))

(assert (=> d!1777964 d!1778432))

(declare-fun d!1778486 () Bool)

(declare-fun res!2384301 () Bool)

(declare-fun e!3470155 () Bool)

(assert (=> d!1778486 (=> res!2384301 e!3470155)))

(assert (=> d!1778486 (= res!2384301 ((_ is Nil!63039) (exprs!5505 setElem!37588)))))

(assert (=> d!1778486 (= (forall!14775 (exprs!5505 setElem!37588) lambda!302435) e!3470155)))

(declare-fun b!5630155 () Bool)

(declare-fun e!3470156 () Bool)

(assert (=> b!5630155 (= e!3470155 e!3470156)))

(declare-fun res!2384302 () Bool)

(assert (=> b!5630155 (=> (not res!2384302) (not e!3470156))))

(assert (=> b!5630155 (= res!2384302 (dynLambda!24652 lambda!302435 (h!69487 (exprs!5505 setElem!37588))))))

(declare-fun b!5630156 () Bool)

(assert (=> b!5630156 (= e!3470156 (forall!14775 (t!376455 (exprs!5505 setElem!37588)) lambda!302435))))

(assert (= (and d!1778486 (not res!2384301)) b!5630155))

(assert (= (and b!5630155 res!2384302) b!5630156))

(declare-fun b_lambda!212925 () Bool)

(assert (=> (not b_lambda!212925) (not b!5630155)))

(declare-fun m!6601672 () Bool)

(assert (=> b!5630155 m!6601672))

(declare-fun m!6601674 () Bool)

(assert (=> b!5630156 m!6601674))

(assert (=> d!1777842 d!1778486))

(declare-fun b!5630157 () Bool)

(declare-fun res!2384307 () Bool)

(declare-fun e!3470160 () Bool)

(assert (=> b!5630157 (=> (not res!2384307) (not e!3470160))))

(declare-fun call!424395 () Bool)

(assert (=> b!5630157 (= res!2384307 call!424395)))

(declare-fun e!3470162 () Bool)

(assert (=> b!5630157 (= e!3470162 e!3470160)))

(declare-fun b!5630158 () Bool)

(declare-fun e!3470163 () Bool)

(declare-fun call!424396 () Bool)

(assert (=> b!5630158 (= e!3470163 call!424396)))

(declare-fun b!5630159 () Bool)

(declare-fun e!3470158 () Bool)

(declare-fun call!424397 () Bool)

(assert (=> b!5630159 (= e!3470158 call!424397)))

(declare-fun c!988666 () Bool)

(declare-fun bm!424390 () Bool)

(declare-fun c!988665 () Bool)

(assert (=> bm!424390 (= call!424396 (validRegex!7357 (ite c!988665 (reg!15950 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))) (ite c!988666 (regTwo!31755 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))) (regTwo!31754 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292)))))))))

(declare-fun b!5630160 () Bool)

(declare-fun e!3470161 () Bool)

(assert (=> b!5630160 (= e!3470161 e!3470162)))

(assert (=> b!5630160 (= c!988666 ((_ is Union!15621) (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))

(declare-fun b!5630161 () Bool)

(assert (=> b!5630161 (= e!3470161 e!3470163)))

(declare-fun res!2384305 () Bool)

(assert (=> b!5630161 (= res!2384305 (not (nullable!5653 (reg!15950 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))))

(assert (=> b!5630161 (=> (not res!2384305) (not e!3470163))))

(declare-fun b!5630162 () Bool)

(assert (=> b!5630162 (= e!3470160 call!424397)))

(declare-fun b!5630163 () Bool)

(declare-fun e!3470159 () Bool)

(assert (=> b!5630163 (= e!3470159 e!3470158)))

(declare-fun res!2384303 () Bool)

(assert (=> b!5630163 (=> (not res!2384303) (not e!3470158))))

(assert (=> b!5630163 (= res!2384303 call!424395)))

(declare-fun b!5630164 () Bool)

(declare-fun e!3470157 () Bool)

(assert (=> b!5630164 (= e!3470157 e!3470161)))

(assert (=> b!5630164 (= c!988665 ((_ is Star!15621) (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))

(declare-fun b!5630165 () Bool)

(declare-fun res!2384306 () Bool)

(assert (=> b!5630165 (=> res!2384306 e!3470159)))

(assert (=> b!5630165 (= res!2384306 (not ((_ is Concat!24466) (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292)))))))

(assert (=> b!5630165 (= e!3470162 e!3470159)))

(declare-fun bm!424392 () Bool)

(assert (=> bm!424392 (= call!424395 (validRegex!7357 (ite c!988666 (regOne!31755 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))) (regOne!31754 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))))

(declare-fun bm!424391 () Bool)

(assert (=> bm!424391 (= call!424397 call!424396)))

(declare-fun d!1778488 () Bool)

(declare-fun res!2384304 () Bool)

(assert (=> d!1778488 (=> res!2384304 e!3470157)))

(assert (=> d!1778488 (= res!2384304 ((_ is ElementMatch!15621) (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))))))

(assert (=> d!1778488 (= (validRegex!7357 (ite c!988385 (regOne!31755 r!7292) (regOne!31754 r!7292))) e!3470157)))

(assert (= (and d!1778488 (not res!2384304)) b!5630164))

(assert (= (and b!5630164 c!988665) b!5630161))

(assert (= (and b!5630164 (not c!988665)) b!5630160))

(assert (= (and b!5630161 res!2384305) b!5630158))

(assert (= (and b!5630160 c!988666) b!5630157))

(assert (= (and b!5630160 (not c!988666)) b!5630165))

(assert (= (and b!5630157 res!2384307) b!5630162))

(assert (= (and b!5630165 (not res!2384306)) b!5630163))

(assert (= (and b!5630163 res!2384303) b!5630159))

(assert (= (or b!5630162 b!5630159) bm!424391))

(assert (= (or b!5630157 b!5630163) bm!424392))

(assert (= (or b!5630158 bm!424391) bm!424390))

(declare-fun m!6601676 () Bool)

(assert (=> bm!424390 m!6601676))

(declare-fun m!6601678 () Bool)

(assert (=> b!5630161 m!6601678))

(declare-fun m!6601680 () Bool)

(assert (=> bm!424392 m!6601680))

(assert (=> bm!424168 d!1778488))

(declare-fun d!1778490 () Bool)

(assert (=> d!1778490 (= (isConcat!685 lt!2262183) ((_ is Concat!24466) lt!2262183))))

(assert (=> b!5629072 d!1778490))

(assert (=> d!1777978 d!1777976))

(declare-fun d!1778492 () Bool)

(assert (=> d!1778492 (= (flatMap!1234 lt!2262093 lambda!302400) (dynLambda!24650 lambda!302400 lt!2262076))))

(assert (=> d!1778492 true))

(declare-fun _$13!2259 () Unit!156016)

(assert (=> d!1778492 (= (choose!42668 lt!2262093 lt!2262076 lambda!302400) _$13!2259)))

(declare-fun b_lambda!212927 () Bool)

(assert (=> (not b_lambda!212927) (not d!1778492)))

(declare-fun bs!1303027 () Bool)

(assert (= bs!1303027 d!1778492))

(assert (=> bs!1303027 m!6600054))

(assert (=> bs!1303027 m!6600636))

(assert (=> d!1777978 d!1778492))

(declare-fun b!5630166 () Bool)

(declare-fun e!3470165 () (InoxSet Context!10010))

(assert (=> b!5630166 (= e!3470165 ((as const (Array Context!10010 Bool)) false))))

(declare-fun call!424398 () (InoxSet Context!10010))

(declare-fun b!5630167 () Bool)

(declare-fun e!3470166 () (InoxSet Context!10010))

(assert (=> b!5630167 (= e!3470166 ((_ map or) call!424398 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076)))))) (h!69486 s!2326))))))

(declare-fun b!5630168 () Bool)

(assert (=> b!5630168 (= e!3470166 e!3470165)))

(declare-fun c!988668 () Bool)

(assert (=> b!5630168 (= c!988668 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076))))))))

(declare-fun b!5630169 () Bool)

(assert (=> b!5630169 (= e!3470165 call!424398)))

(declare-fun b!5630170 () Bool)

(declare-fun e!3470164 () Bool)

(assert (=> b!5630170 (= e!3470164 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076)))))))))

(declare-fun d!1778494 () Bool)

(declare-fun c!988667 () Bool)

(assert (=> d!1778494 (= c!988667 e!3470164)))

(declare-fun res!2384308 () Bool)

(assert (=> d!1778494 (=> (not res!2384308) (not e!3470164))))

(assert (=> d!1778494 (= res!2384308 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076))))))))

(assert (=> d!1778494 (= (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262076))) (h!69486 s!2326)) e!3470166)))

(declare-fun bm!424393 () Bool)

(assert (=> bm!424393 (= call!424398 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262076)))))) (h!69486 s!2326)))))

(assert (= (and d!1778494 res!2384308) b!5630170))

(assert (= (and d!1778494 c!988667) b!5630167))

(assert (= (and d!1778494 (not c!988667)) b!5630168))

(assert (= (and b!5630168 c!988668) b!5630169))

(assert (= (and b!5630168 (not c!988668)) b!5630166))

(assert (= (or b!5630167 b!5630169) bm!424393))

(declare-fun m!6601682 () Bool)

(assert (=> b!5630167 m!6601682))

(declare-fun m!6601684 () Bool)

(assert (=> b!5630170 m!6601684))

(declare-fun m!6601686 () Bool)

(assert (=> bm!424393 m!6601686))

(assert (=> b!5629090 d!1778494))

(declare-fun b!5630171 () Bool)

(declare-fun e!3470168 () (InoxSet Context!10010))

(assert (=> b!5630171 (= e!3470168 ((as const (Array Context!10010 Bool)) false))))

(declare-fun e!3470169 () (InoxSet Context!10010))

(declare-fun b!5630172 () Bool)

(declare-fun call!424399 () (InoxSet Context!10010))

(assert (=> b!5630172 (= e!3470169 ((_ map or) call!424399 (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088)))))) (h!69486 s!2326))))))

(declare-fun b!5630173 () Bool)

(assert (=> b!5630173 (= e!3470169 e!3470168)))

(declare-fun c!988670 () Bool)

(assert (=> b!5630173 (= c!988670 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088))))))))

(declare-fun b!5630174 () Bool)

(assert (=> b!5630174 (= e!3470168 call!424399)))

(declare-fun b!5630175 () Bool)

(declare-fun e!3470167 () Bool)

(assert (=> b!5630175 (= e!3470167 (nullable!5653 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088)))))))))

(declare-fun d!1778496 () Bool)

(declare-fun c!988669 () Bool)

(assert (=> d!1778496 (= c!988669 e!3470167)))

(declare-fun res!2384309 () Bool)

(assert (=> d!1778496 (=> (not res!2384309) (not e!3470167))))

(assert (=> d!1778496 (= res!2384309 ((_ is Cons!63039) (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088))))))))

(assert (=> d!1778496 (= (derivationStepZipperUp!889 (Context!10011 (t!376455 (exprs!5505 lt!2262088))) (h!69486 s!2326)) e!3470169)))

(declare-fun bm!424394 () Bool)

(assert (=> bm!424394 (= call!424399 (derivationStepZipperDown!963 (h!69487 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088))))) (Context!10011 (t!376455 (exprs!5505 (Context!10011 (t!376455 (exprs!5505 lt!2262088)))))) (h!69486 s!2326)))))

(assert (= (and d!1778496 res!2384309) b!5630175))

(assert (= (and d!1778496 c!988669) b!5630172))

(assert (= (and d!1778496 (not c!988669)) b!5630173))

(assert (= (and b!5630173 c!988670) b!5630174))

(assert (= (and b!5630173 (not c!988670)) b!5630171))

(assert (= (or b!5630172 b!5630174) bm!424394))

(declare-fun m!6601688 () Bool)

(assert (=> b!5630172 m!6601688))

(declare-fun m!6601690 () Bool)

(assert (=> b!5630175 m!6601690))

(declare-fun m!6601692 () Bool)

(assert (=> bm!424394 m!6601692))

(assert (=> b!5628976 d!1778496))

(assert (=> d!1777972 d!1778432))

(declare-fun bs!1303028 () Bool)

(declare-fun d!1778498 () Bool)

(assert (= bs!1303028 (and d!1778498 d!1778368)))

(declare-fun lambda!302534 () Int)

(assert (=> bs!1303028 (= lambda!302534 lambda!302517)))

(declare-fun bs!1303029 () Bool)

(assert (= bs!1303029 (and d!1778498 d!1778292)))

(assert (=> bs!1303029 (= lambda!302534 lambda!302508)))

(declare-fun bs!1303030 () Bool)

(assert (= bs!1303030 (and d!1778498 d!1778450)))

(assert (=> bs!1303030 (= lambda!302534 lambda!302529)))

(declare-fun bs!1303031 () Bool)

(assert (= bs!1303031 (and d!1778498 d!1778402)))

(assert (=> bs!1303031 (= lambda!302534 lambda!302524)))

(declare-fun bs!1303032 () Bool)

(assert (= bs!1303032 (and d!1778498 d!1778296)))

(assert (=> bs!1303032 (= lambda!302534 lambda!302509)))

(declare-fun bs!1303033 () Bool)

(assert (= bs!1303033 (and d!1778498 d!1778278)))

(assert (=> bs!1303033 (= lambda!302534 lambda!302507)))

(assert (=> d!1778498 (= (nullableZipper!1603 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326))) (exists!2186 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) lambda!302534))))

(declare-fun bs!1303034 () Bool)

(assert (= bs!1303034 d!1778498))

(assert (=> bs!1303034 m!6600064))

(declare-fun m!6601694 () Bool)

(assert (=> bs!1303034 m!6601694))

(assert (=> b!5629038 d!1778498))

(declare-fun bs!1303035 () Bool)

(declare-fun d!1778500 () Bool)

(assert (= bs!1303035 (and d!1778500 d!1778368)))

(declare-fun lambda!302535 () Int)

(assert (=> bs!1303035 (= lambda!302535 lambda!302517)))

(declare-fun bs!1303036 () Bool)

(assert (= bs!1303036 (and d!1778500 d!1778292)))

(assert (=> bs!1303036 (= lambda!302535 lambda!302508)))

(declare-fun bs!1303037 () Bool)

(assert (= bs!1303037 (and d!1778500 d!1778450)))

(assert (=> bs!1303037 (= lambda!302535 lambda!302529)))

(declare-fun bs!1303038 () Bool)

(assert (= bs!1303038 (and d!1778500 d!1778402)))

(assert (=> bs!1303038 (= lambda!302535 lambda!302524)))

(declare-fun bs!1303039 () Bool)

(assert (= bs!1303039 (and d!1778500 d!1778296)))

(assert (=> bs!1303039 (= lambda!302535 lambda!302509)))

(declare-fun bs!1303040 () Bool)

(assert (= bs!1303040 (and d!1778500 d!1778498)))

(assert (=> bs!1303040 (= lambda!302535 lambda!302534)))

(declare-fun bs!1303041 () Bool)

(assert (= bs!1303041 (and d!1778500 d!1778278)))

(assert (=> bs!1303041 (= lambda!302535 lambda!302507)))

(assert (=> d!1778500 (= (nullableZipper!1603 lt!2262087) (exists!2186 lt!2262087 lambda!302535))))

(declare-fun bs!1303042 () Bool)

(assert (= bs!1303042 d!1778500))

(declare-fun m!6601696 () Bool)

(assert (=> bs!1303042 m!6601696))

(assert (=> b!5629083 d!1778500))

(declare-fun d!1778502 () Bool)

(assert (=> d!1778502 (= ($colon$colon!1671 (exprs!5505 lt!2262089) (ite (or c!988354 c!988355) (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 r!7292)))) (Cons!63039 (ite (or c!988354 c!988355) (regTwo!31754 (regOne!31754 (regOne!31754 r!7292))) (regOne!31754 (regOne!31754 r!7292))) (exprs!5505 lt!2262089)))))

(assert (=> bm!424156 d!1778502))

(declare-fun d!1778504 () Bool)

(declare-fun c!988671 () Bool)

(assert (=> d!1778504 (= c!988671 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470170 () Bool)

(assert (=> d!1778504 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262080 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470170)))

(declare-fun b!5630176 () Bool)

(assert (=> b!5630176 (= e!3470170 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262080 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630177 () Bool)

(assert (=> b!5630177 (= e!3470170 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262080 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778504 c!988671) b!5630176))

(assert (= (and d!1778504 (not c!988671)) b!5630177))

(assert (=> d!1778504 m!6600292))

(assert (=> d!1778504 m!6601284))

(assert (=> b!5630176 m!6600304))

(declare-fun m!6601698 () Bool)

(assert (=> b!5630176 m!6601698))

(assert (=> b!5630177 m!6600292))

(assert (=> b!5630177 m!6601288))

(assert (=> b!5630177 m!6600304))

(assert (=> b!5630177 m!6601288))

(declare-fun m!6601700 () Bool)

(assert (=> b!5630177 m!6601700))

(assert (=> b!5630177 m!6600292))

(assert (=> b!5630177 m!6601292))

(assert (=> b!5630177 m!6601700))

(assert (=> b!5630177 m!6601292))

(declare-fun m!6601702 () Bool)

(assert (=> b!5630177 m!6601702))

(assert (=> b!5628714 d!1778504))

(declare-fun bs!1303043 () Bool)

(declare-fun d!1778506 () Bool)

(assert (= bs!1303043 (and d!1778506 d!1777980)))

(declare-fun lambda!302536 () Int)

(assert (=> bs!1303043 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302536 lambda!302464))))

(declare-fun bs!1303044 () Bool)

(assert (= bs!1303044 (and d!1778506 d!1778326)))

(assert (=> bs!1303044 (= lambda!302536 lambda!302512)))

(declare-fun bs!1303045 () Bool)

(assert (= bs!1303045 (and d!1778506 d!1778474)))

(assert (=> bs!1303045 (= lambda!302536 lambda!302532)))

(declare-fun bs!1303046 () Bool)

(assert (= bs!1303046 (and d!1778506 d!1778458)))

(assert (=> bs!1303046 (= lambda!302536 lambda!302530)))

(declare-fun bs!1303047 () Bool)

(assert (= bs!1303047 (and d!1778506 d!1777946)))

(assert (=> bs!1303047 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302536 lambda!302460))))

(declare-fun bs!1303048 () Bool)

(assert (= bs!1303048 (and d!1778506 d!1778306)))

(assert (=> bs!1303048 (= lambda!302536 lambda!302510)))

(declare-fun bs!1303049 () Bool)

(assert (= bs!1303049 (and d!1778506 d!1778464)))

(assert (=> bs!1303049 (= lambda!302536 lambda!302531)))

(declare-fun bs!1303050 () Bool)

(assert (= bs!1303050 (and d!1778506 b!5628366)))

(assert (=> bs!1303050 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302536 lambda!302400))))

(declare-fun bs!1303051 () Bool)

(assert (= bs!1303051 (and d!1778506 d!1778406)))

(assert (=> bs!1303051 (= lambda!302536 lambda!302525)))

(declare-fun bs!1303052 () Bool)

(assert (= bs!1303052 (and d!1778506 d!1778318)))

(assert (=> bs!1303052 (= lambda!302536 lambda!302511)))

(assert (=> d!1778506 true))

(assert (=> d!1778506 (= (derivationStepZipper!1708 lt!2262080 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262080 lambda!302536))))

(declare-fun bs!1303053 () Bool)

(assert (= bs!1303053 d!1778506))

(declare-fun m!6601704 () Bool)

(assert (=> bs!1303053 m!6601704))

(assert (=> b!5628714 d!1778506))

(assert (=> b!5628714 d!1778308))

(assert (=> b!5628714 d!1778310))

(assert (=> d!1777856 d!1778442))

(declare-fun b!5630178 () Bool)

(declare-fun e!3470175 () Bool)

(assert (=> b!5630178 (= e!3470175 (not (= (head!11986 Nil!63038) (c!988159 (regOne!31754 r!7292)))))))

(declare-fun b!5630179 () Bool)

(declare-fun res!2384314 () Bool)

(declare-fun e!3470172 () Bool)

(assert (=> b!5630179 (=> (not res!2384314) (not e!3470172))))

(declare-fun call!424400 () Bool)

(assert (=> b!5630179 (= res!2384314 (not call!424400))))

(declare-fun b!5630180 () Bool)

(declare-fun res!2384312 () Bool)

(assert (=> b!5630180 (=> (not res!2384312) (not e!3470172))))

(assert (=> b!5630180 (= res!2384312 (isEmpty!34877 (tail!11081 Nil!63038)))))

(declare-fun b!5630181 () Bool)

(declare-fun e!3470177 () Bool)

(assert (=> b!5630181 (= e!3470177 (nullable!5653 (regOne!31754 r!7292)))))

(declare-fun b!5630182 () Bool)

(declare-fun res!2384313 () Bool)

(declare-fun e!3470174 () Bool)

(assert (=> b!5630182 (=> res!2384313 e!3470174)))

(assert (=> b!5630182 (= res!2384313 e!3470172)))

(declare-fun res!2384317 () Bool)

(assert (=> b!5630182 (=> (not res!2384317) (not e!3470172))))

(declare-fun lt!2262228 () Bool)

(assert (=> b!5630182 (= res!2384317 lt!2262228)))

(declare-fun b!5630183 () Bool)

(declare-fun e!3470176 () Bool)

(assert (=> b!5630183 (= e!3470176 e!3470175)))

(declare-fun res!2384316 () Bool)

(assert (=> b!5630183 (=> res!2384316 e!3470175)))

(assert (=> b!5630183 (= res!2384316 call!424400)))

(declare-fun b!5630185 () Bool)

(declare-fun res!2384315 () Bool)

(assert (=> b!5630185 (=> res!2384315 e!3470175)))

(assert (=> b!5630185 (= res!2384315 (not (isEmpty!34877 (tail!11081 Nil!63038))))))

(declare-fun b!5630186 () Bool)

(declare-fun e!3470173 () Bool)

(declare-fun e!3470171 () Bool)

(assert (=> b!5630186 (= e!3470173 e!3470171)))

(declare-fun c!988673 () Bool)

(assert (=> b!5630186 (= c!988673 ((_ is EmptyLang!15621) (regOne!31754 r!7292)))))

(declare-fun bm!424395 () Bool)

(assert (=> bm!424395 (= call!424400 (isEmpty!34877 Nil!63038))))

(declare-fun b!5630187 () Bool)

(declare-fun res!2384311 () Bool)

(assert (=> b!5630187 (=> res!2384311 e!3470174)))

(assert (=> b!5630187 (= res!2384311 (not ((_ is ElementMatch!15621) (regOne!31754 r!7292))))))

(assert (=> b!5630187 (= e!3470171 e!3470174)))

(declare-fun b!5630188 () Bool)

(assert (=> b!5630188 (= e!3470172 (= (head!11986 Nil!63038) (c!988159 (regOne!31754 r!7292))))))

(declare-fun b!5630189 () Bool)

(assert (=> b!5630189 (= e!3470173 (= lt!2262228 call!424400))))

(declare-fun b!5630190 () Bool)

(assert (=> b!5630190 (= e!3470177 (matchR!7806 (derivativeStep!4456 (regOne!31754 r!7292) (head!11986 Nil!63038)) (tail!11081 Nil!63038)))))

(declare-fun b!5630191 () Bool)

(assert (=> b!5630191 (= e!3470174 e!3470176)))

(declare-fun res!2384310 () Bool)

(assert (=> b!5630191 (=> (not res!2384310) (not e!3470176))))

(assert (=> b!5630191 (= res!2384310 (not lt!2262228))))

(declare-fun b!5630184 () Bool)

(assert (=> b!5630184 (= e!3470171 (not lt!2262228))))

(declare-fun d!1778508 () Bool)

(assert (=> d!1778508 e!3470173))

(declare-fun c!988674 () Bool)

(assert (=> d!1778508 (= c!988674 ((_ is EmptyExpr!15621) (regOne!31754 r!7292)))))

(assert (=> d!1778508 (= lt!2262228 e!3470177)))

(declare-fun c!988672 () Bool)

(assert (=> d!1778508 (= c!988672 (isEmpty!34877 Nil!63038))))

(assert (=> d!1778508 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1778508 (= (matchR!7806 (regOne!31754 r!7292) Nil!63038) lt!2262228)))

(assert (= (and d!1778508 c!988672) b!5630181))

(assert (= (and d!1778508 (not c!988672)) b!5630190))

(assert (= (and d!1778508 c!988674) b!5630189))

(assert (= (and d!1778508 (not c!988674)) b!5630186))

(assert (= (and b!5630186 c!988673) b!5630184))

(assert (= (and b!5630186 (not c!988673)) b!5630187))

(assert (= (and b!5630187 (not res!2384311)) b!5630182))

(assert (= (and b!5630182 res!2384317) b!5630179))

(assert (= (and b!5630179 res!2384314) b!5630180))

(assert (= (and b!5630180 res!2384312) b!5630188))

(assert (= (and b!5630182 (not res!2384313)) b!5630191))

(assert (= (and b!5630191 res!2384310) b!5630183))

(assert (= (and b!5630183 (not res!2384316)) b!5630185))

(assert (= (and b!5630185 (not res!2384315)) b!5630178))

(assert (= (or b!5630189 b!5630179 b!5630183) bm!424395))

(declare-fun m!6601706 () Bool)

(assert (=> b!5630178 m!6601706))

(declare-fun m!6601708 () Bool)

(assert (=> b!5630180 m!6601708))

(assert (=> b!5630180 m!6601708))

(declare-fun m!6601710 () Bool)

(assert (=> b!5630180 m!6601710))

(assert (=> b!5630188 m!6601706))

(assert (=> b!5630181 m!6601574))

(declare-fun m!6601712 () Bool)

(assert (=> bm!424395 m!6601712))

(assert (=> b!5630190 m!6601706))

(assert (=> b!5630190 m!6601706))

(declare-fun m!6601714 () Bool)

(assert (=> b!5630190 m!6601714))

(assert (=> b!5630190 m!6601708))

(assert (=> b!5630190 m!6601714))

(assert (=> b!5630190 m!6601708))

(declare-fun m!6601716 () Bool)

(assert (=> b!5630190 m!6601716))

(assert (=> d!1778508 m!6601712))

(assert (=> d!1778508 m!6600348))

(assert (=> b!5630185 m!6601708))

(assert (=> b!5630185 m!6601708))

(assert (=> b!5630185 m!6601710))

(assert (=> d!1777856 d!1778508))

(assert (=> d!1777856 d!1778388))

(declare-fun d!1778510 () Bool)

(assert (=> d!1778510 (= (nullable!5653 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))) (nullableFct!1749 (regOne!31754 (regTwo!31754 (regOne!31754 r!7292)))))))

(declare-fun bs!1303054 () Bool)

(assert (= bs!1303054 d!1778510))

(declare-fun m!6601718 () Bool)

(assert (=> bs!1303054 m!6601718))

(assert (=> b!5629023 d!1778510))

(declare-fun d!1778512 () Bool)

(declare-fun c!988675 () Bool)

(assert (=> d!1778512 (= c!988675 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470178 () Bool)

(assert (=> d!1778512 (= (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470178)))

(declare-fun b!5630192 () Bool)

(assert (=> b!5630192 (= e!3470178 (nullableZipper!1603 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630193 () Bool)

(assert (=> b!5630193 (= e!3470178 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778512 c!988675) b!5630192))

(assert (= (and d!1778512 (not c!988675)) b!5630193))

(assert (=> d!1778512 m!6600292))

(assert (=> d!1778512 m!6601284))

(assert (=> b!5630192 m!6600554))

(declare-fun m!6601720 () Bool)

(assert (=> b!5630192 m!6601720))

(assert (=> b!5630193 m!6600292))

(assert (=> b!5630193 m!6601288))

(assert (=> b!5630193 m!6600554))

(assert (=> b!5630193 m!6601288))

(declare-fun m!6601722 () Bool)

(assert (=> b!5630193 m!6601722))

(assert (=> b!5630193 m!6600292))

(assert (=> b!5630193 m!6601292))

(assert (=> b!5630193 m!6601722))

(assert (=> b!5630193 m!6601292))

(declare-fun m!6601724 () Bool)

(assert (=> b!5630193 m!6601724))

(assert (=> b!5629039 d!1778512))

(declare-fun bs!1303055 () Bool)

(declare-fun d!1778514 () Bool)

(assert (= bs!1303055 (and d!1778514 d!1777980)))

(declare-fun lambda!302537 () Int)

(assert (=> bs!1303055 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302537 lambda!302464))))

(declare-fun bs!1303056 () Bool)

(assert (= bs!1303056 (and d!1778514 d!1778474)))

(assert (=> bs!1303056 (= lambda!302537 lambda!302532)))

(declare-fun bs!1303057 () Bool)

(assert (= bs!1303057 (and d!1778514 d!1778458)))

(assert (=> bs!1303057 (= lambda!302537 lambda!302530)))

(declare-fun bs!1303058 () Bool)

(assert (= bs!1303058 (and d!1778514 d!1777946)))

(assert (=> bs!1303058 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302537 lambda!302460))))

(declare-fun bs!1303059 () Bool)

(assert (= bs!1303059 (and d!1778514 d!1778306)))

(assert (=> bs!1303059 (= lambda!302537 lambda!302510)))

(declare-fun bs!1303060 () Bool)

(assert (= bs!1303060 (and d!1778514 d!1778464)))

(assert (=> bs!1303060 (= lambda!302537 lambda!302531)))

(declare-fun bs!1303061 () Bool)

(assert (= bs!1303061 (and d!1778514 b!5628366)))

(assert (=> bs!1303061 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302537 lambda!302400))))

(declare-fun bs!1303062 () Bool)

(assert (= bs!1303062 (and d!1778514 d!1778406)))

(assert (=> bs!1303062 (= lambda!302537 lambda!302525)))

(declare-fun bs!1303063 () Bool)

(assert (= bs!1303063 (and d!1778514 d!1778318)))

(assert (=> bs!1303063 (= lambda!302537 lambda!302511)))

(declare-fun bs!1303064 () Bool)

(assert (= bs!1303064 (and d!1778514 d!1778326)))

(assert (=> bs!1303064 (= lambda!302537 lambda!302512)))

(declare-fun bs!1303065 () Bool)

(assert (= bs!1303065 (and d!1778514 d!1778506)))

(assert (=> bs!1303065 (= lambda!302537 lambda!302536)))

(assert (=> d!1778514 true))

(assert (=> d!1778514 (= (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) (head!11986 (t!376454 s!2326))) (flatMap!1234 (derivationStepZipper!1708 lt!2262072 (h!69486 s!2326)) lambda!302537))))

(declare-fun bs!1303066 () Bool)

(assert (= bs!1303066 d!1778514))

(assert (=> bs!1303066 m!6600064))

(declare-fun m!6601726 () Bool)

(assert (=> bs!1303066 m!6601726))

(assert (=> b!5629039 d!1778514))

(assert (=> b!5629039 d!1778308))

(assert (=> b!5629039 d!1778310))

(declare-fun d!1778516 () Bool)

(declare-fun c!988676 () Bool)

(assert (=> d!1778516 (= c!988676 (isEmpty!34877 (tail!11081 (t!376454 s!2326))))))

(declare-fun e!3470179 () Bool)

(assert (=> d!1778516 (= (matchZipper!1759 (derivationStepZipper!1708 lt!2262087 (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))) e!3470179)))

(declare-fun b!5630194 () Bool)

(assert (=> b!5630194 (= e!3470179 (nullableZipper!1603 (derivationStepZipper!1708 lt!2262087 (head!11986 (t!376454 s!2326)))))))

(declare-fun b!5630195 () Bool)

(assert (=> b!5630195 (= e!3470179 (matchZipper!1759 (derivationStepZipper!1708 (derivationStepZipper!1708 lt!2262087 (head!11986 (t!376454 s!2326))) (head!11986 (tail!11081 (t!376454 s!2326)))) (tail!11081 (tail!11081 (t!376454 s!2326)))))))

(assert (= (and d!1778516 c!988676) b!5630194))

(assert (= (and d!1778516 (not c!988676)) b!5630195))

(assert (=> d!1778516 m!6600292))

(assert (=> d!1778516 m!6601284))

(assert (=> b!5630194 m!6600612))

(declare-fun m!6601728 () Bool)

(assert (=> b!5630194 m!6601728))

(assert (=> b!5630195 m!6600292))

(assert (=> b!5630195 m!6601288))

(assert (=> b!5630195 m!6600612))

(assert (=> b!5630195 m!6601288))

(declare-fun m!6601730 () Bool)

(assert (=> b!5630195 m!6601730))

(assert (=> b!5630195 m!6600292))

(assert (=> b!5630195 m!6601292))

(assert (=> b!5630195 m!6601730))

(assert (=> b!5630195 m!6601292))

(declare-fun m!6601732 () Bool)

(assert (=> b!5630195 m!6601732))

(assert (=> b!5629084 d!1778516))

(declare-fun bs!1303067 () Bool)

(declare-fun d!1778518 () Bool)

(assert (= bs!1303067 (and d!1778518 d!1777980)))

(declare-fun lambda!302538 () Int)

(assert (=> bs!1303067 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302538 lambda!302464))))

(declare-fun bs!1303068 () Bool)

(assert (= bs!1303068 (and d!1778518 d!1778474)))

(assert (=> bs!1303068 (= lambda!302538 lambda!302532)))

(declare-fun bs!1303069 () Bool)

(assert (= bs!1303069 (and d!1778518 d!1778458)))

(assert (=> bs!1303069 (= lambda!302538 lambda!302530)))

(declare-fun bs!1303070 () Bool)

(assert (= bs!1303070 (and d!1778518 d!1777946)))

(assert (=> bs!1303070 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302538 lambda!302460))))

(declare-fun bs!1303071 () Bool)

(assert (= bs!1303071 (and d!1778518 d!1778306)))

(assert (=> bs!1303071 (= lambda!302538 lambda!302510)))

(declare-fun bs!1303072 () Bool)

(assert (= bs!1303072 (and d!1778518 d!1778464)))

(assert (=> bs!1303072 (= lambda!302538 lambda!302531)))

(declare-fun bs!1303073 () Bool)

(assert (= bs!1303073 (and d!1778518 d!1778406)))

(assert (=> bs!1303073 (= lambda!302538 lambda!302525)))

(declare-fun bs!1303074 () Bool)

(assert (= bs!1303074 (and d!1778518 d!1778318)))

(assert (=> bs!1303074 (= lambda!302538 lambda!302511)))

(declare-fun bs!1303075 () Bool)

(assert (= bs!1303075 (and d!1778518 d!1778326)))

(assert (=> bs!1303075 (= lambda!302538 lambda!302512)))

(declare-fun bs!1303076 () Bool)

(assert (= bs!1303076 (and d!1778518 d!1778506)))

(assert (=> bs!1303076 (= lambda!302538 lambda!302536)))

(declare-fun bs!1303077 () Bool)

(assert (= bs!1303077 (and d!1778518 d!1778514)))

(assert (=> bs!1303077 (= lambda!302538 lambda!302537)))

(declare-fun bs!1303078 () Bool)

(assert (= bs!1303078 (and d!1778518 b!5628366)))

(assert (=> bs!1303078 (= (= (head!11986 (t!376454 s!2326)) (h!69486 s!2326)) (= lambda!302538 lambda!302400))))

(assert (=> d!1778518 true))

(assert (=> d!1778518 (= (derivationStepZipper!1708 lt!2262087 (head!11986 (t!376454 s!2326))) (flatMap!1234 lt!2262087 lambda!302538))))

(declare-fun bs!1303079 () Bool)

(assert (= bs!1303079 d!1778518))

(declare-fun m!6601734 () Bool)

(assert (=> bs!1303079 m!6601734))

(assert (=> b!5629084 d!1778518))

(assert (=> b!5629084 d!1778308))

(assert (=> b!5629084 d!1778310))

(assert (=> b!5628974 d!1777920))

(declare-fun bs!1303080 () Bool)

(declare-fun d!1778520 () Bool)

(assert (= bs!1303080 (and d!1778520 d!1778500)))

(declare-fun lambda!302539 () Int)

(assert (=> bs!1303080 (= lambda!302539 lambda!302535)))

(declare-fun bs!1303081 () Bool)

(assert (= bs!1303081 (and d!1778520 d!1778368)))

(assert (=> bs!1303081 (= lambda!302539 lambda!302517)))

(declare-fun bs!1303082 () Bool)

(assert (= bs!1303082 (and d!1778520 d!1778292)))

(assert (=> bs!1303082 (= lambda!302539 lambda!302508)))

(declare-fun bs!1303083 () Bool)

(assert (= bs!1303083 (and d!1778520 d!1778450)))

(assert (=> bs!1303083 (= lambda!302539 lambda!302529)))

(declare-fun bs!1303084 () Bool)

(assert (= bs!1303084 (and d!1778520 d!1778402)))

(assert (=> bs!1303084 (= lambda!302539 lambda!302524)))

(declare-fun bs!1303085 () Bool)

(assert (= bs!1303085 (and d!1778520 d!1778296)))

(assert (=> bs!1303085 (= lambda!302539 lambda!302509)))

(declare-fun bs!1303086 () Bool)

(assert (= bs!1303086 (and d!1778520 d!1778498)))

(assert (=> bs!1303086 (= lambda!302539 lambda!302534)))

(declare-fun bs!1303087 () Bool)

(assert (= bs!1303087 (and d!1778520 d!1778278)))

(assert (=> bs!1303087 (= lambda!302539 lambda!302507)))

(assert (=> d!1778520 (= (nullableZipper!1603 lt!2262090) (exists!2186 lt!2262090 lambda!302539))))

(declare-fun bs!1303088 () Bool)

(assert (= bs!1303088 d!1778520))

(declare-fun m!6601736 () Bool)

(assert (=> bs!1303088 m!6601736))

(assert (=> b!5628917 d!1778520))

(assert (=> b!5628648 d!1778282))

(declare-fun bs!1303089 () Bool)

(declare-fun d!1778522 () Bool)

(assert (= bs!1303089 (and d!1778522 d!1777956)))

(declare-fun lambda!302540 () Int)

(assert (=> bs!1303089 (= lambda!302540 lambda!302463)))

(declare-fun bs!1303090 () Bool)

(assert (= bs!1303090 (and d!1778522 d!1777842)))

(assert (=> bs!1303090 (= lambda!302540 lambda!302435)))

(declare-fun bs!1303091 () Bool)

(assert (= bs!1303091 (and d!1778522 d!1778334)))

(assert (=> bs!1303091 (= lambda!302540 lambda!302513)))

(declare-fun bs!1303092 () Bool)

(assert (= bs!1303092 (and d!1778522 d!1777936)))

(assert (=> bs!1303092 (= lambda!302540 lambda!302456)))

(declare-fun bs!1303093 () Bool)

(assert (= bs!1303093 (and d!1778522 d!1778430)))

(assert (=> bs!1303093 (= lambda!302540 lambda!302528)))

(declare-fun bs!1303094 () Bool)

(assert (= bs!1303094 (and d!1778522 d!1777938)))

(assert (=> bs!1303094 (= lambda!302540 lambda!302457)))

(declare-fun bs!1303095 () Bool)

(assert (= bs!1303095 (and d!1778522 d!1778480)))

(assert (=> bs!1303095 (= lambda!302540 lambda!302533)))

(declare-fun bs!1303096 () Bool)

(assert (= bs!1303096 (and d!1778522 d!1777934)))

(assert (=> bs!1303096 (= lambda!302540 lambda!302453)))

(declare-fun bs!1303097 () Bool)

(assert (= bs!1303097 (and d!1778522 d!1778360)))

(assert (=> bs!1303097 (= lambda!302540 lambda!302516)))

(declare-fun e!3470180 () Bool)

(assert (=> d!1778522 e!3470180))

(declare-fun res!2384318 () Bool)

(assert (=> d!1778522 (=> (not res!2384318) (not e!3470180))))

(declare-fun lt!2262229 () Regex!15621)

(assert (=> d!1778522 (= res!2384318 (validRegex!7357 lt!2262229))))

(declare-fun e!3470182 () Regex!15621)

(assert (=> d!1778522 (= lt!2262229 e!3470182)))

(declare-fun c!988679 () Bool)

(declare-fun e!3470183 () Bool)

(assert (=> d!1778522 (= c!988679 e!3470183)))

(declare-fun res!2384319 () Bool)

(assert (=> d!1778522 (=> (not res!2384319) (not e!3470183))))

(assert (=> d!1778522 (= res!2384319 ((_ is Cons!63039) (t!376455 (unfocusZipperList!1049 zl!343))))))

(assert (=> d!1778522 (forall!14775 (t!376455 (unfocusZipperList!1049 zl!343)) lambda!302540)))

(assert (=> d!1778522 (= (generalisedUnion!1484 (t!376455 (unfocusZipperList!1049 zl!343))) lt!2262229)))

(declare-fun b!5630196 () Bool)

(declare-fun e!3470185 () Bool)

(assert (=> b!5630196 (= e!3470185 (= lt!2262229 (head!11987 (t!376455 (unfocusZipperList!1049 zl!343)))))))

(declare-fun b!5630197 () Bool)

(assert (=> b!5630197 (= e!3470183 (isEmpty!34874 (t!376455 (t!376455 (unfocusZipperList!1049 zl!343)))))))

(declare-fun b!5630198 () Bool)

(declare-fun e!3470184 () Regex!15621)

(assert (=> b!5630198 (= e!3470184 (Union!15621 (h!69487 (t!376455 (unfocusZipperList!1049 zl!343))) (generalisedUnion!1484 (t!376455 (t!376455 (unfocusZipperList!1049 zl!343))))))))

(declare-fun b!5630199 () Bool)

(declare-fun e!3470181 () Bool)

(assert (=> b!5630199 (= e!3470180 e!3470181)))

(declare-fun c!988677 () Bool)

(assert (=> b!5630199 (= c!988677 (isEmpty!34874 (t!376455 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5630200 () Bool)

(assert (=> b!5630200 (= e!3470181 e!3470185)))

(declare-fun c!988680 () Bool)

(assert (=> b!5630200 (= c!988680 (isEmpty!34874 (tail!11082 (t!376455 (unfocusZipperList!1049 zl!343)))))))

(declare-fun b!5630201 () Bool)

(assert (=> b!5630201 (= e!3470182 e!3470184)))

(declare-fun c!988678 () Bool)

(assert (=> b!5630201 (= c!988678 ((_ is Cons!63039) (t!376455 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5630202 () Bool)

(assert (=> b!5630202 (= e!3470182 (h!69487 (t!376455 (unfocusZipperList!1049 zl!343))))))

(declare-fun b!5630203 () Bool)

(assert (=> b!5630203 (= e!3470184 EmptyLang!15621)))

(declare-fun b!5630204 () Bool)

(assert (=> b!5630204 (= e!3470181 (isEmptyLang!1172 lt!2262229))))

(declare-fun b!5630205 () Bool)

(assert (=> b!5630205 (= e!3470185 (isUnion!602 lt!2262229))))

(assert (= (and d!1778522 res!2384319) b!5630197))

(assert (= (and d!1778522 c!988679) b!5630202))

(assert (= (and d!1778522 (not c!988679)) b!5630201))

(assert (= (and b!5630201 c!988678) b!5630198))

(assert (= (and b!5630201 (not c!988678)) b!5630203))

(assert (= (and d!1778522 res!2384318) b!5630199))

(assert (= (and b!5630199 c!988677) b!5630204))

(assert (= (and b!5630199 (not c!988677)) b!5630200))

(assert (= (and b!5630200 c!988680) b!5630196))

(assert (= (and b!5630200 (not c!988680)) b!5630205))

(assert (=> b!5630199 m!6600524))

(declare-fun m!6601738 () Bool)

(assert (=> b!5630198 m!6601738))

(declare-fun m!6601740 () Bool)

(assert (=> b!5630204 m!6601740))

(declare-fun m!6601742 () Bool)

(assert (=> b!5630200 m!6601742))

(assert (=> b!5630200 m!6601742))

(declare-fun m!6601744 () Bool)

(assert (=> b!5630200 m!6601744))

(declare-fun m!6601746 () Bool)

(assert (=> b!5630205 m!6601746))

(declare-fun m!6601748 () Bool)

(assert (=> b!5630196 m!6601748))

(declare-fun m!6601750 () Bool)

(assert (=> b!5630197 m!6601750))

(declare-fun m!6601752 () Bool)

(assert (=> d!1778522 m!6601752))

(declare-fun m!6601754 () Bool)

(assert (=> d!1778522 m!6601754))

(assert (=> b!5629002 d!1778522))

(assert (=> bs!1302625 d!1777960))

(declare-fun b!5630206 () Bool)

(declare-fun res!2384324 () Bool)

(declare-fun e!3470189 () Bool)

(assert (=> b!5630206 (=> (not res!2384324) (not e!3470189))))

(declare-fun call!424401 () Bool)

(assert (=> b!5630206 (= res!2384324 call!424401)))

(declare-fun e!3470191 () Bool)

(assert (=> b!5630206 (= e!3470191 e!3470189)))

(declare-fun b!5630207 () Bool)

(declare-fun e!3470192 () Bool)

(declare-fun call!424402 () Bool)

(assert (=> b!5630207 (= e!3470192 call!424402)))

(declare-fun b!5630208 () Bool)

(declare-fun e!3470187 () Bool)

(declare-fun call!424403 () Bool)

(assert (=> b!5630208 (= e!3470187 call!424403)))

(declare-fun c!988681 () Bool)

(declare-fun c!988682 () Bool)

(declare-fun bm!424396 () Bool)

(assert (=> bm!424396 (= call!424402 (validRegex!7357 (ite c!988681 (reg!15950 lt!2262183) (ite c!988682 (regTwo!31755 lt!2262183) (regTwo!31754 lt!2262183)))))))

(declare-fun b!5630209 () Bool)

(declare-fun e!3470190 () Bool)

(assert (=> b!5630209 (= e!3470190 e!3470191)))

(assert (=> b!5630209 (= c!988682 ((_ is Union!15621) lt!2262183))))

(declare-fun b!5630210 () Bool)

(assert (=> b!5630210 (= e!3470190 e!3470192)))

(declare-fun res!2384322 () Bool)

(assert (=> b!5630210 (= res!2384322 (not (nullable!5653 (reg!15950 lt!2262183))))))

(assert (=> b!5630210 (=> (not res!2384322) (not e!3470192))))

(declare-fun b!5630211 () Bool)

(assert (=> b!5630211 (= e!3470189 call!424403)))

(declare-fun b!5630212 () Bool)

(declare-fun e!3470188 () Bool)

(assert (=> b!5630212 (= e!3470188 e!3470187)))

(declare-fun res!2384320 () Bool)

(assert (=> b!5630212 (=> (not res!2384320) (not e!3470187))))

(assert (=> b!5630212 (= res!2384320 call!424401)))

(declare-fun b!5630213 () Bool)

(declare-fun e!3470186 () Bool)

(assert (=> b!5630213 (= e!3470186 e!3470190)))

(assert (=> b!5630213 (= c!988681 ((_ is Star!15621) lt!2262183))))

(declare-fun b!5630214 () Bool)

(declare-fun res!2384323 () Bool)

(assert (=> b!5630214 (=> res!2384323 e!3470188)))

(assert (=> b!5630214 (= res!2384323 (not ((_ is Concat!24466) lt!2262183)))))

(assert (=> b!5630214 (= e!3470191 e!3470188)))

(declare-fun bm!424398 () Bool)

(assert (=> bm!424398 (= call!424401 (validRegex!7357 (ite c!988682 (regOne!31755 lt!2262183) (regOne!31754 lt!2262183))))))

(declare-fun bm!424397 () Bool)

(assert (=> bm!424397 (= call!424403 call!424402)))

(declare-fun d!1778524 () Bool)

(declare-fun res!2384321 () Bool)

(assert (=> d!1778524 (=> res!2384321 e!3470186)))

(assert (=> d!1778524 (= res!2384321 ((_ is ElementMatch!15621) lt!2262183))))

(assert (=> d!1778524 (= (validRegex!7357 lt!2262183) e!3470186)))

(assert (= (and d!1778524 (not res!2384321)) b!5630213))

(assert (= (and b!5630213 c!988681) b!5630210))

(assert (= (and b!5630213 (not c!988681)) b!5630209))

(assert (= (and b!5630210 res!2384322) b!5630207))

(assert (= (and b!5630209 c!988682) b!5630206))

(assert (= (and b!5630209 (not c!988682)) b!5630214))

(assert (= (and b!5630206 res!2384324) b!5630211))

(assert (= (and b!5630214 (not res!2384323)) b!5630212))

(assert (= (and b!5630212 res!2384320) b!5630208))

(assert (= (or b!5630211 b!5630208) bm!424397))

(assert (= (or b!5630206 b!5630212) bm!424398))

(assert (= (or b!5630207 bm!424397) bm!424396))

(declare-fun m!6601756 () Bool)

(assert (=> bm!424396 m!6601756))

(declare-fun m!6601758 () Bool)

(assert (=> b!5630210 m!6601758))

(declare-fun m!6601760 () Bool)

(assert (=> bm!424398 m!6601760))

(assert (=> d!1777956 d!1778524))

(declare-fun d!1778526 () Bool)

(declare-fun res!2384325 () Bool)

(declare-fun e!3470193 () Bool)

(assert (=> d!1778526 (=> res!2384325 e!3470193)))

(assert (=> d!1778526 (= res!2384325 ((_ is Nil!63039) (exprs!5505 (h!69488 zl!343))))))

(assert (=> d!1778526 (= (forall!14775 (exprs!5505 (h!69488 zl!343)) lambda!302463) e!3470193)))

(declare-fun b!5630215 () Bool)

(declare-fun e!3470194 () Bool)

(assert (=> b!5630215 (= e!3470193 e!3470194)))

(declare-fun res!2384326 () Bool)

(assert (=> b!5630215 (=> (not res!2384326) (not e!3470194))))

(assert (=> b!5630215 (= res!2384326 (dynLambda!24652 lambda!302463 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5630216 () Bool)

(assert (=> b!5630216 (= e!3470194 (forall!14775 (t!376455 (exprs!5505 (h!69488 zl!343))) lambda!302463))))

(assert (= (and d!1778526 (not res!2384325)) b!5630215))

(assert (= (and b!5630215 res!2384326) b!5630216))

(declare-fun b_lambda!212929 () Bool)

(assert (=> (not b_lambda!212929) (not b!5630215)))

(declare-fun m!6601762 () Bool)

(assert (=> b!5630215 m!6601762))

(declare-fun m!6601764 () Bool)

(assert (=> b!5630216 m!6601764))

(assert (=> d!1777956 d!1778526))

(declare-fun b!5630217 () Bool)

(declare-fun e!3470199 () Bool)

(assert (=> b!5630217 (= e!3470199 (not (= (head!11986 (_1!36021 (get!21715 lt!2262150))) (c!988159 (regOne!31754 r!7292)))))))

(declare-fun b!5630218 () Bool)

(declare-fun res!2384331 () Bool)

(declare-fun e!3470196 () Bool)

(assert (=> b!5630218 (=> (not res!2384331) (not e!3470196))))

(declare-fun call!424404 () Bool)

(assert (=> b!5630218 (= res!2384331 (not call!424404))))

(declare-fun b!5630219 () Bool)

(declare-fun res!2384329 () Bool)

(assert (=> b!5630219 (=> (not res!2384329) (not e!3470196))))

(assert (=> b!5630219 (= res!2384329 (isEmpty!34877 (tail!11081 (_1!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5630220 () Bool)

(declare-fun e!3470201 () Bool)

(assert (=> b!5630220 (= e!3470201 (nullable!5653 (regOne!31754 r!7292)))))

(declare-fun b!5630221 () Bool)

(declare-fun res!2384330 () Bool)

(declare-fun e!3470198 () Bool)

(assert (=> b!5630221 (=> res!2384330 e!3470198)))

(assert (=> b!5630221 (= res!2384330 e!3470196)))

(declare-fun res!2384334 () Bool)

(assert (=> b!5630221 (=> (not res!2384334) (not e!3470196))))

(declare-fun lt!2262230 () Bool)

(assert (=> b!5630221 (= res!2384334 lt!2262230)))

(declare-fun b!5630222 () Bool)

(declare-fun e!3470200 () Bool)

(assert (=> b!5630222 (= e!3470200 e!3470199)))

(declare-fun res!2384333 () Bool)

(assert (=> b!5630222 (=> res!2384333 e!3470199)))

(assert (=> b!5630222 (= res!2384333 call!424404)))

(declare-fun b!5630224 () Bool)

(declare-fun res!2384332 () Bool)

(assert (=> b!5630224 (=> res!2384332 e!3470199)))

(assert (=> b!5630224 (= res!2384332 (not (isEmpty!34877 (tail!11081 (_1!36021 (get!21715 lt!2262150))))))))

(declare-fun b!5630225 () Bool)

(declare-fun e!3470197 () Bool)

(declare-fun e!3470195 () Bool)

(assert (=> b!5630225 (= e!3470197 e!3470195)))

(declare-fun c!988684 () Bool)

(assert (=> b!5630225 (= c!988684 ((_ is EmptyLang!15621) (regOne!31754 r!7292)))))

(declare-fun bm!424399 () Bool)

(assert (=> bm!424399 (= call!424404 (isEmpty!34877 (_1!36021 (get!21715 lt!2262150))))))

(declare-fun b!5630226 () Bool)

(declare-fun res!2384328 () Bool)

(assert (=> b!5630226 (=> res!2384328 e!3470198)))

(assert (=> b!5630226 (= res!2384328 (not ((_ is ElementMatch!15621) (regOne!31754 r!7292))))))

(assert (=> b!5630226 (= e!3470195 e!3470198)))

(declare-fun b!5630227 () Bool)

(assert (=> b!5630227 (= e!3470196 (= (head!11986 (_1!36021 (get!21715 lt!2262150))) (c!988159 (regOne!31754 r!7292))))))

(declare-fun b!5630228 () Bool)

(assert (=> b!5630228 (= e!3470197 (= lt!2262230 call!424404))))

(declare-fun b!5630229 () Bool)

(assert (=> b!5630229 (= e!3470201 (matchR!7806 (derivativeStep!4456 (regOne!31754 r!7292) (head!11986 (_1!36021 (get!21715 lt!2262150)))) (tail!11081 (_1!36021 (get!21715 lt!2262150)))))))

(declare-fun b!5630230 () Bool)

(assert (=> b!5630230 (= e!3470198 e!3470200)))

(declare-fun res!2384327 () Bool)

(assert (=> b!5630230 (=> (not res!2384327) (not e!3470200))))

(assert (=> b!5630230 (= res!2384327 (not lt!2262230))))

(declare-fun b!5630223 () Bool)

(assert (=> b!5630223 (= e!3470195 (not lt!2262230))))

(declare-fun d!1778528 () Bool)

(assert (=> d!1778528 e!3470197))

(declare-fun c!988685 () Bool)

(assert (=> d!1778528 (= c!988685 ((_ is EmptyExpr!15621) (regOne!31754 r!7292)))))

(assert (=> d!1778528 (= lt!2262230 e!3470201)))

(declare-fun c!988683 () Bool)

(assert (=> d!1778528 (= c!988683 (isEmpty!34877 (_1!36021 (get!21715 lt!2262150))))))

(assert (=> d!1778528 (validRegex!7357 (regOne!31754 r!7292))))

(assert (=> d!1778528 (= (matchR!7806 (regOne!31754 r!7292) (_1!36021 (get!21715 lt!2262150))) lt!2262230)))

(assert (= (and d!1778528 c!988683) b!5630220))

(assert (= (and d!1778528 (not c!988683)) b!5630229))

(assert (= (and d!1778528 c!988685) b!5630228))

(assert (= (and d!1778528 (not c!988685)) b!5630225))

(assert (= (and b!5630225 c!988684) b!5630223))

(assert (= (and b!5630225 (not c!988684)) b!5630226))

(assert (= (and b!5630226 (not res!2384328)) b!5630221))

(assert (= (and b!5630221 res!2384334) b!5630218))

(assert (= (and b!5630218 res!2384331) b!5630219))

(assert (= (and b!5630219 res!2384329) b!5630227))

(assert (= (and b!5630221 (not res!2384330)) b!5630230))

(assert (= (and b!5630230 res!2384327) b!5630222))

(assert (= (and b!5630222 (not res!2384333)) b!5630224))

(assert (= (and b!5630224 (not res!2384332)) b!5630217))

(assert (= (or b!5630228 b!5630218 b!5630222) bm!424399))

(declare-fun m!6601766 () Bool)

(assert (=> b!5630217 m!6601766))

(declare-fun m!6601768 () Bool)

(assert (=> b!5630219 m!6601768))

(assert (=> b!5630219 m!6601768))

(declare-fun m!6601770 () Bool)

(assert (=> b!5630219 m!6601770))

(assert (=> b!5630227 m!6601766))

(assert (=> b!5630220 m!6601574))

(declare-fun m!6601772 () Bool)

(assert (=> bm!424399 m!6601772))

(assert (=> b!5630229 m!6601766))

(assert (=> b!5630229 m!6601766))

(declare-fun m!6601774 () Bool)

(assert (=> b!5630229 m!6601774))

(assert (=> b!5630229 m!6601768))

(assert (=> b!5630229 m!6601774))

(assert (=> b!5630229 m!6601768))

(declare-fun m!6601776 () Bool)

(assert (=> b!5630229 m!6601776))

(assert (=> d!1778528 m!6601772))

(assert (=> d!1778528 m!6600348))

(assert (=> b!5630224 m!6601768))

(assert (=> b!5630224 m!6601768))

(assert (=> b!5630224 m!6601770))

(assert (=> b!5628785 d!1778528))

(assert (=> b!5628785 d!1778300))

(declare-fun bs!1303098 () Bool)

(declare-fun d!1778530 () Bool)

(assert (= bs!1303098 (and d!1778530 d!1778500)))

(declare-fun lambda!302541 () Int)

(assert (=> bs!1303098 (= lambda!302541 lambda!302535)))

(declare-fun bs!1303099 () Bool)

(assert (= bs!1303099 (and d!1778530 d!1778368)))

(assert (=> bs!1303099 (= lambda!302541 lambda!302517)))

(declare-fun bs!1303100 () Bool)

(assert (= bs!1303100 (and d!1778530 d!1778292)))

(assert (=> bs!1303100 (= lambda!302541 lambda!302508)))

(declare-fun bs!1303101 () Bool)

(assert (= bs!1303101 (and d!1778530 d!1778450)))

(assert (=> bs!1303101 (= lambda!302541 lambda!302529)))

(declare-fun bs!1303102 () Bool)

(assert (= bs!1303102 (and d!1778530 d!1778402)))

(assert (=> bs!1303102 (= lambda!302541 lambda!302524)))

(declare-fun bs!1303103 () Bool)

(assert (= bs!1303103 (and d!1778530 d!1778296)))

(assert (=> bs!1303103 (= lambda!302541 lambda!302509)))

(declare-fun bs!1303104 () Bool)

(assert (= bs!1303104 (and d!1778530 d!1778498)))

(assert (=> bs!1303104 (= lambda!302541 lambda!302534)))

(declare-fun bs!1303105 () Bool)

(assert (= bs!1303105 (and d!1778530 d!1778278)))

(assert (=> bs!1303105 (= lambda!302541 lambda!302507)))

(declare-fun bs!1303106 () Bool)

(assert (= bs!1303106 (and d!1778530 d!1778520)))

(assert (=> bs!1303106 (= lambda!302541 lambda!302539)))

(assert (=> d!1778530 (= (nullableZipper!1603 ((_ map or) lt!2262073 lt!2262094)) (exists!2186 ((_ map or) lt!2262073 lt!2262094) lambda!302541))))

(declare-fun bs!1303107 () Bool)

(assert (= bs!1303107 d!1778530))

(declare-fun m!6601778 () Bool)

(assert (=> bs!1303107 m!6601778))

(assert (=> b!5629043 d!1778530))

(declare-fun d!1778532 () Bool)

(declare-fun c!988686 () Bool)

(assert (=> d!1778532 (= c!988686 (isEmpty!34877 (t!376454 s!2326)))))

(declare-fun e!3470202 () Bool)

(assert (=> d!1778532 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262090) (t!376454 s!2326)) e!3470202)))

(declare-fun b!5630231 () Bool)

(assert (=> b!5630231 (= e!3470202 (nullableZipper!1603 ((_ map or) lt!2262080 lt!2262090)))))

(declare-fun b!5630232 () Bool)

(assert (=> b!5630232 (= e!3470202 (matchZipper!1759 (derivationStepZipper!1708 ((_ map or) lt!2262080 lt!2262090) (head!11986 (t!376454 s!2326))) (tail!11081 (t!376454 s!2326))))))

(assert (= (and d!1778532 c!988686) b!5630231))

(assert (= (and d!1778532 (not c!988686)) b!5630232))

(assert (=> d!1778532 m!6600284))

(declare-fun m!6601780 () Bool)

(assert (=> b!5630231 m!6601780))

(assert (=> b!5630232 m!6600288))

(assert (=> b!5630232 m!6600288))

(declare-fun m!6601782 () Bool)

(assert (=> b!5630232 m!6601782))

(assert (=> b!5630232 m!6600292))

(assert (=> b!5630232 m!6601782))

(assert (=> b!5630232 m!6600292))

(declare-fun m!6601784 () Bool)

(assert (=> b!5630232 m!6601784))

(assert (=> d!1777852 d!1778532))

(assert (=> d!1777852 d!1777850))

(declare-fun d!1778534 () Bool)

(declare-fun e!3470203 () Bool)

(assert (=> d!1778534 (= (matchZipper!1759 ((_ map or) lt!2262080 lt!2262090) (t!376454 s!2326)) e!3470203)))

(declare-fun res!2384335 () Bool)

(assert (=> d!1778534 (=> res!2384335 e!3470203)))

(assert (=> d!1778534 (= res!2384335 (matchZipper!1759 lt!2262080 (t!376454 s!2326)))))

(assert (=> d!1778534 true))

(declare-fun _$48!1251 () Unit!156016)

(assert (=> d!1778534 (= (choose!42661 lt!2262080 lt!2262090 (t!376454 s!2326)) _$48!1251)))

(declare-fun b!5630233 () Bool)

(assert (=> b!5630233 (= e!3470203 (matchZipper!1759 lt!2262090 (t!376454 s!2326)))))

(assert (= (and d!1778534 (not res!2384335)) b!5630233))

(assert (=> d!1778534 m!6600316))

(assert (=> d!1778534 m!6600008))

(assert (=> b!5630233 m!6600020))

(assert (=> d!1777852 d!1778534))

(declare-fun d!1778536 () Bool)

(assert (=> d!1778536 true))

(declare-fun setRes!37605 () Bool)

(assert (=> d!1778536 setRes!37605))

(declare-fun condSetEmpty!37605 () Bool)

(declare-fun res!2384336 () (InoxSet Context!10010))

(assert (=> d!1778536 (= condSetEmpty!37605 (= res!2384336 ((as const (Array Context!10010 Bool)) false)))))

(assert (=> d!1778536 (= (choose!42667 z!1189 lambda!302400) res!2384336)))

(declare-fun setIsEmpty!37605 () Bool)

(assert (=> setIsEmpty!37605 setRes!37605))

(declare-fun tp!1558419 () Bool)

(declare-fun setElem!37605 () Context!10010)

(declare-fun setNonEmpty!37605 () Bool)

(declare-fun e!3470204 () Bool)

(assert (=> setNonEmpty!37605 (= setRes!37605 (and tp!1558419 (inv!82299 setElem!37605) e!3470204))))

(declare-fun setRest!37605 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37605 (= res!2384336 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37605 true) setRest!37605))))

(declare-fun b!5630234 () Bool)

(declare-fun tp!1558418 () Bool)

(assert (=> b!5630234 (= e!3470204 tp!1558418)))

(assert (= (and d!1778536 condSetEmpty!37605) setIsEmpty!37605))

(assert (= (and d!1778536 (not condSetEmpty!37605)) setNonEmpty!37605))

(assert (= setNonEmpty!37605 b!5630234))

(declare-fun m!6601786 () Bool)

(assert (=> setNonEmpty!37605 m!6601786))

(assert (=> d!1777924 d!1778536))

(declare-fun d!1778538 () Bool)

(assert (=> d!1778538 (= (Exists!2721 lambda!302443) (choose!42663 lambda!302443))))

(declare-fun bs!1303108 () Bool)

(assert (= bs!1303108 d!1778538))

(declare-fun m!6601788 () Bool)

(assert (=> bs!1303108 m!6601788))

(assert (=> d!1777872 d!1778538))

(assert (=> d!1777872 d!1777856))

(assert (=> d!1777872 d!1778388))

(assert (=> d!1777872 d!1777912))

(declare-fun bs!1303109 () Bool)

(declare-fun d!1778540 () Bool)

(assert (= bs!1303109 (and d!1778540 b!5630005)))

(declare-fun lambda!302544 () Int)

(assert (=> bs!1303109 (not (= lambda!302544 lambda!302527))))

(declare-fun bs!1303110 () Bool)

(assert (= bs!1303110 (and d!1778540 b!5629999)))

(assert (=> bs!1303110 (not (= lambda!302544 lambda!302526))))

(declare-fun bs!1303111 () Bool)

(assert (= bs!1303111 (and d!1778540 b!5628570)))

(assert (=> bs!1303111 (not (= lambda!302544 lambda!302421))))

(declare-fun bs!1303112 () Bool)

(assert (= bs!1303112 (and d!1778540 b!5628564)))

(assert (=> bs!1303112 (not (= lambda!302544 lambda!302419))))

(declare-fun bs!1303113 () Bool)

(assert (= bs!1303113 (and d!1778540 b!5628348)))

(assert (=> bs!1303113 (not (= lambda!302544 lambda!302399))))

(declare-fun bs!1303114 () Bool)

(assert (= bs!1303114 (and d!1778540 b!5629890)))

(assert (=> bs!1303114 (not (= lambda!302544 lambda!302515))))

(declare-fun bs!1303115 () Bool)

(assert (= bs!1303115 (and d!1778540 d!1777872)))

(assert (=> bs!1303115 (= lambda!302544 lambda!302443)))

(declare-fun bs!1303116 () Bool)

(assert (= bs!1303116 (and d!1778540 d!1778386)))

(assert (=> bs!1303116 (= lambda!302544 lambda!302522)))

(declare-fun bs!1303117 () Bool)

(assert (= bs!1303117 (and d!1778540 d!1777892)))

(assert (=> bs!1303117 (= lambda!302544 lambda!302449)))

(declare-fun bs!1303118 () Bool)

(assert (= bs!1303118 (and d!1778540 b!5629884)))

(assert (=> bs!1303118 (not (= lambda!302544 lambda!302514))))

(assert (=> bs!1303113 (= lambda!302544 lambda!302398)))

(assert (=> bs!1303116 (not (= lambda!302544 lambda!302523))))

(assert (=> bs!1303117 (not (= lambda!302544 lambda!302450))))

(assert (=> d!1778540 true))

(assert (=> d!1778540 true))

(assert (=> d!1778540 true))

(assert (=> d!1778540 (= (isDefined!12333 (findConcatSeparation!2044 (regOne!31754 r!7292) (regTwo!31754 r!7292) Nil!63038 s!2326 s!2326)) (Exists!2721 lambda!302544))))

(assert (=> d!1778540 true))

(declare-fun _$89!1743 () Unit!156016)

(assert (=> d!1778540 (= (choose!42664 (regOne!31754 r!7292) (regTwo!31754 r!7292) s!2326) _$89!1743)))

(declare-fun bs!1303119 () Bool)

(assert (= bs!1303119 d!1778540))

(assert (=> bs!1303119 m!6600074))

(assert (=> bs!1303119 m!6600074))

(assert (=> bs!1303119 m!6600076))

(declare-fun m!6601790 () Bool)

(assert (=> bs!1303119 m!6601790))

(assert (=> d!1777872 d!1778540))

(declare-fun bm!424400 () Bool)

(declare-fun call!424406 () Bool)

(declare-fun c!988687 () Bool)

(assert (=> bm!424400 (= call!424406 (nullable!5653 (ite c!988687 (regTwo!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regTwo!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630239 () Bool)

(declare-fun e!3470207 () Bool)

(assert (=> b!5630239 (= e!3470207 call!424406)))

(declare-fun bm!424401 () Bool)

(declare-fun call!424405 () Bool)

(assert (=> bm!424401 (= call!424405 (nullable!5653 (ite c!988687 (regOne!31755 (h!69487 (exprs!5505 (h!69488 zl!343)))) (regOne!31754 (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630240 () Bool)

(declare-fun e!3470212 () Bool)

(declare-fun e!3470210 () Bool)

(assert (=> b!5630240 (= e!3470212 e!3470210)))

(declare-fun res!2384341 () Bool)

(assert (=> b!5630240 (=> (not res!2384341) (not e!3470210))))

(assert (=> b!5630240 (= res!2384341 (and (not ((_ is EmptyLang!15621) (h!69487 (exprs!5505 (h!69488 zl!343))))) (not ((_ is ElementMatch!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))))

(declare-fun b!5630241 () Bool)

(declare-fun e!3470211 () Bool)

(assert (=> b!5630241 (= e!3470211 e!3470207)))

(declare-fun res!2384345 () Bool)

(assert (=> b!5630241 (= res!2384345 call!424405)))

(assert (=> b!5630241 (=> (not res!2384345) (not e!3470207))))

(declare-fun b!5630242 () Bool)

(declare-fun e!3470208 () Bool)

(assert (=> b!5630242 (= e!3470211 e!3470208)))

(declare-fun res!2384344 () Bool)

(assert (=> b!5630242 (= res!2384344 call!424405)))

(assert (=> b!5630242 (=> res!2384344 e!3470208)))

(declare-fun b!5630243 () Bool)

(declare-fun e!3470209 () Bool)

(assert (=> b!5630243 (= e!3470209 e!3470211)))

(assert (=> b!5630243 (= c!988687 ((_ is Union!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5630244 () Bool)

(assert (=> b!5630244 (= e!3470210 e!3470209)))

(declare-fun res!2384343 () Bool)

(assert (=> b!5630244 (=> res!2384343 e!3470209)))

(assert (=> b!5630244 (= res!2384343 ((_ is Star!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun b!5630245 () Bool)

(assert (=> b!5630245 (= e!3470208 call!424406)))

(declare-fun d!1778542 () Bool)

(declare-fun res!2384342 () Bool)

(assert (=> d!1778542 (=> res!2384342 e!3470212)))

(assert (=> d!1778542 (= res!2384342 ((_ is EmptyExpr!15621) (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> d!1778542 (= (nullableFct!1749 (h!69487 (exprs!5505 (h!69488 zl!343)))) e!3470212)))

(assert (= (and d!1778542 (not res!2384342)) b!5630240))

(assert (= (and b!5630240 res!2384341) b!5630244))

(assert (= (and b!5630244 (not res!2384343)) b!5630243))

(assert (= (and b!5630243 c!988687) b!5630242))

(assert (= (and b!5630243 (not c!988687)) b!5630241))

(assert (= (and b!5630242 (not res!2384344)) b!5630245))

(assert (= (and b!5630241 res!2384345) b!5630239))

(assert (= (or b!5630245 b!5630239) bm!424400))

(assert (= (or b!5630242 b!5630241) bm!424401))

(declare-fun m!6601792 () Bool)

(assert (=> bm!424400 m!6601792))

(declare-fun m!6601794 () Bool)

(assert (=> bm!424401 m!6601794))

(assert (=> d!1777920 d!1778542))

(declare-fun b!5630246 () Bool)

(declare-fun res!2384350 () Bool)

(declare-fun e!3470216 () Bool)

(assert (=> b!5630246 (=> (not res!2384350) (not e!3470216))))

(declare-fun call!424407 () Bool)

(assert (=> b!5630246 (= res!2384350 call!424407)))

(declare-fun e!3470218 () Bool)

(assert (=> b!5630246 (= e!3470218 e!3470216)))

(declare-fun b!5630247 () Bool)

(declare-fun e!3470219 () Bool)

(declare-fun call!424408 () Bool)

(assert (=> b!5630247 (= e!3470219 call!424408)))

(declare-fun b!5630248 () Bool)

(declare-fun e!3470214 () Bool)

(declare-fun call!424409 () Bool)

(assert (=> b!5630248 (= e!3470214 call!424409)))

(declare-fun bm!424402 () Bool)

(declare-fun c!988689 () Bool)

(declare-fun c!988688 () Bool)

(assert (=> bm!424402 (= call!424408 (validRegex!7357 (ite c!988688 (reg!15950 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))) (ite c!988689 (regTwo!31755 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))) (regTwo!31754 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292))))))))))

(declare-fun b!5630249 () Bool)

(declare-fun e!3470217 () Bool)

(assert (=> b!5630249 (= e!3470217 e!3470218)))

(assert (=> b!5630249 (= c!988689 ((_ is Union!15621) (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))

(declare-fun b!5630250 () Bool)

(assert (=> b!5630250 (= e!3470217 e!3470219)))

(declare-fun res!2384348 () Bool)

(assert (=> b!5630250 (= res!2384348 (not (nullable!5653 (reg!15950 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))))

(assert (=> b!5630250 (=> (not res!2384348) (not e!3470219))))

(declare-fun b!5630251 () Bool)

(assert (=> b!5630251 (= e!3470216 call!424409)))

(declare-fun b!5630252 () Bool)

(declare-fun e!3470215 () Bool)

(assert (=> b!5630252 (= e!3470215 e!3470214)))

(declare-fun res!2384346 () Bool)

(assert (=> b!5630252 (=> (not res!2384346) (not e!3470214))))

(assert (=> b!5630252 (= res!2384346 call!424407)))

(declare-fun b!5630253 () Bool)

(declare-fun e!3470213 () Bool)

(assert (=> b!5630253 (= e!3470213 e!3470217)))

(assert (=> b!5630253 (= c!988688 ((_ is Star!15621) (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))

(declare-fun b!5630254 () Bool)

(declare-fun res!2384349 () Bool)

(assert (=> b!5630254 (=> res!2384349 e!3470215)))

(assert (=> b!5630254 (= res!2384349 (not ((_ is Concat!24466) (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292))))))))

(assert (=> b!5630254 (= e!3470218 e!3470215)))

(declare-fun bm!424404 () Bool)

(assert (=> bm!424404 (= call!424407 (validRegex!7357 (ite c!988689 (regOne!31755 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))) (regOne!31754 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))))

(declare-fun bm!424403 () Bool)

(assert (=> bm!424403 (= call!424409 call!424408)))

(declare-fun d!1778544 () Bool)

(declare-fun res!2384347 () Bool)

(assert (=> d!1778544 (=> res!2384347 e!3470213)))

(assert (=> d!1778544 (= res!2384347 ((_ is ElementMatch!15621) (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))))))

(assert (=> d!1778544 (= (validRegex!7357 (ite c!988384 (reg!15950 r!7292) (ite c!988385 (regTwo!31755 r!7292) (regTwo!31754 r!7292)))) e!3470213)))

(assert (= (and d!1778544 (not res!2384347)) b!5630253))

(assert (= (and b!5630253 c!988688) b!5630250))

(assert (= (and b!5630253 (not c!988688)) b!5630249))

(assert (= (and b!5630250 res!2384348) b!5630247))

(assert (= (and b!5630249 c!988689) b!5630246))

(assert (= (and b!5630249 (not c!988689)) b!5630254))

(assert (= (and b!5630246 res!2384350) b!5630251))

(assert (= (and b!5630254 (not res!2384349)) b!5630252))

(assert (= (and b!5630252 res!2384346) b!5630248))

(assert (= (or b!5630251 b!5630248) bm!424403))

(assert (= (or b!5630246 b!5630252) bm!424404))

(assert (= (or b!5630247 bm!424403) bm!424402))

(declare-fun m!6601796 () Bool)

(assert (=> bm!424402 m!6601796))

(declare-fun m!6601798 () Bool)

(assert (=> b!5630250 m!6601798))

(declare-fun m!6601800 () Bool)

(assert (=> bm!424404 m!6601800))

(assert (=> bm!424166 d!1778544))

(declare-fun d!1778546 () Bool)

(assert (=> d!1778546 (= (flatMap!1234 lt!2262072 lambda!302460) (choose!42667 lt!2262072 lambda!302460))))

(declare-fun bs!1303120 () Bool)

(assert (= bs!1303120 d!1778546))

(declare-fun m!6601802 () Bool)

(assert (=> bs!1303120 m!6601802))

(assert (=> d!1777946 d!1778546))

(assert (=> d!1777970 d!1778432))

(declare-fun b!5630255 () Bool)

(declare-fun e!3470220 () Bool)

(declare-fun tp!1558420 () Bool)

(declare-fun tp!1558421 () Bool)

(assert (=> b!5630255 (= e!3470220 (and tp!1558420 tp!1558421))))

(assert (=> b!5629148 (= tp!1558210 e!3470220)))

(assert (= (and b!5629148 ((_ is Cons!63039) (exprs!5505 setElem!37594))) b!5630255))

(declare-fun b!5630258 () Bool)

(declare-fun e!3470221 () Bool)

(declare-fun tp!1558424 () Bool)

(assert (=> b!5630258 (= e!3470221 tp!1558424)))

(assert (=> b!5629156 (= tp!1558216 e!3470221)))

(declare-fun b!5630257 () Bool)

(declare-fun tp!1558426 () Bool)

(declare-fun tp!1558425 () Bool)

(assert (=> b!5630257 (= e!3470221 (and tp!1558426 tp!1558425))))

(declare-fun b!5630259 () Bool)

(declare-fun tp!1558422 () Bool)

(declare-fun tp!1558423 () Bool)

(assert (=> b!5630259 (= e!3470221 (and tp!1558422 tp!1558423))))

(declare-fun b!5630256 () Bool)

(assert (=> b!5630256 (= e!3470221 tp_is_empty!40495)))

(assert (= (and b!5629156 ((_ is ElementMatch!15621) (regOne!31755 (regOne!31755 r!7292)))) b!5630256))

(assert (= (and b!5629156 ((_ is Concat!24466) (regOne!31755 (regOne!31755 r!7292)))) b!5630257))

(assert (= (and b!5629156 ((_ is Star!15621) (regOne!31755 (regOne!31755 r!7292)))) b!5630258))

(assert (= (and b!5629156 ((_ is Union!15621) (regOne!31755 (regOne!31755 r!7292)))) b!5630259))

(declare-fun b!5630262 () Bool)

(declare-fun e!3470222 () Bool)

(declare-fun tp!1558429 () Bool)

(assert (=> b!5630262 (= e!3470222 tp!1558429)))

(assert (=> b!5629156 (= tp!1558217 e!3470222)))

(declare-fun b!5630261 () Bool)

(declare-fun tp!1558431 () Bool)

(declare-fun tp!1558430 () Bool)

(assert (=> b!5630261 (= e!3470222 (and tp!1558431 tp!1558430))))

(declare-fun b!5630263 () Bool)

(declare-fun tp!1558427 () Bool)

(declare-fun tp!1558428 () Bool)

(assert (=> b!5630263 (= e!3470222 (and tp!1558427 tp!1558428))))

(declare-fun b!5630260 () Bool)

(assert (=> b!5630260 (= e!3470222 tp_is_empty!40495)))

(assert (= (and b!5629156 ((_ is ElementMatch!15621) (regTwo!31755 (regOne!31755 r!7292)))) b!5630260))

(assert (= (and b!5629156 ((_ is Concat!24466) (regTwo!31755 (regOne!31755 r!7292)))) b!5630261))

(assert (= (and b!5629156 ((_ is Star!15621) (regTwo!31755 (regOne!31755 r!7292)))) b!5630262))

(assert (= (and b!5629156 ((_ is Union!15621) (regTwo!31755 (regOne!31755 r!7292)))) b!5630263))

(declare-fun b!5630266 () Bool)

(declare-fun e!3470223 () Bool)

(declare-fun tp!1558434 () Bool)

(assert (=> b!5630266 (= e!3470223 tp!1558434)))

(assert (=> b!5629132 (= tp!1558196 e!3470223)))

(declare-fun b!5630265 () Bool)

(declare-fun tp!1558436 () Bool)

(declare-fun tp!1558435 () Bool)

(assert (=> b!5630265 (= e!3470223 (and tp!1558436 tp!1558435))))

(declare-fun b!5630267 () Bool)

(declare-fun tp!1558432 () Bool)

(declare-fun tp!1558433 () Bool)

(assert (=> b!5630267 (= e!3470223 (and tp!1558432 tp!1558433))))

(declare-fun b!5630264 () Bool)

(assert (=> b!5630264 (= e!3470223 tp_is_empty!40495)))

(assert (= (and b!5629132 ((_ is ElementMatch!15621) (regOne!31754 (regOne!31754 r!7292)))) b!5630264))

(assert (= (and b!5629132 ((_ is Concat!24466) (regOne!31754 (regOne!31754 r!7292)))) b!5630265))

(assert (= (and b!5629132 ((_ is Star!15621) (regOne!31754 (regOne!31754 r!7292)))) b!5630266))

(assert (= (and b!5629132 ((_ is Union!15621) (regOne!31754 (regOne!31754 r!7292)))) b!5630267))

(declare-fun b!5630270 () Bool)

(declare-fun e!3470224 () Bool)

(declare-fun tp!1558439 () Bool)

(assert (=> b!5630270 (= e!3470224 tp!1558439)))

(assert (=> b!5629132 (= tp!1558195 e!3470224)))

(declare-fun b!5630269 () Bool)

(declare-fun tp!1558441 () Bool)

(declare-fun tp!1558440 () Bool)

(assert (=> b!5630269 (= e!3470224 (and tp!1558441 tp!1558440))))

(declare-fun b!5630271 () Bool)

(declare-fun tp!1558437 () Bool)

(declare-fun tp!1558438 () Bool)

(assert (=> b!5630271 (= e!3470224 (and tp!1558437 tp!1558438))))

(declare-fun b!5630268 () Bool)

(assert (=> b!5630268 (= e!3470224 tp_is_empty!40495)))

(assert (= (and b!5629132 ((_ is ElementMatch!15621) (regTwo!31754 (regOne!31754 r!7292)))) b!5630268))

(assert (= (and b!5629132 ((_ is Concat!24466) (regTwo!31754 (regOne!31754 r!7292)))) b!5630269))

(assert (= (and b!5629132 ((_ is Star!15621) (regTwo!31754 (regOne!31754 r!7292)))) b!5630270))

(assert (= (and b!5629132 ((_ is Union!15621) (regTwo!31754 (regOne!31754 r!7292)))) b!5630271))

(declare-fun b!5630274 () Bool)

(declare-fun e!3470225 () Bool)

(declare-fun tp!1558444 () Bool)

(assert (=> b!5630274 (= e!3470225 tp!1558444)))

(assert (=> b!5629154 (= tp!1558220 e!3470225)))

(declare-fun b!5630273 () Bool)

(declare-fun tp!1558446 () Bool)

(declare-fun tp!1558445 () Bool)

(assert (=> b!5630273 (= e!3470225 (and tp!1558446 tp!1558445))))

(declare-fun b!5630275 () Bool)

(declare-fun tp!1558442 () Bool)

(declare-fun tp!1558443 () Bool)

(assert (=> b!5630275 (= e!3470225 (and tp!1558442 tp!1558443))))

(declare-fun b!5630272 () Bool)

(assert (=> b!5630272 (= e!3470225 tp_is_empty!40495)))

(assert (= (and b!5629154 ((_ is ElementMatch!15621) (regOne!31754 (regOne!31755 r!7292)))) b!5630272))

(assert (= (and b!5629154 ((_ is Concat!24466) (regOne!31754 (regOne!31755 r!7292)))) b!5630273))

(assert (= (and b!5629154 ((_ is Star!15621) (regOne!31754 (regOne!31755 r!7292)))) b!5630274))

(assert (= (and b!5629154 ((_ is Union!15621) (regOne!31754 (regOne!31755 r!7292)))) b!5630275))

(declare-fun b!5630278 () Bool)

(declare-fun e!3470226 () Bool)

(declare-fun tp!1558449 () Bool)

(assert (=> b!5630278 (= e!3470226 tp!1558449)))

(assert (=> b!5629154 (= tp!1558219 e!3470226)))

(declare-fun b!5630277 () Bool)

(declare-fun tp!1558451 () Bool)

(declare-fun tp!1558450 () Bool)

(assert (=> b!5630277 (= e!3470226 (and tp!1558451 tp!1558450))))

(declare-fun b!5630279 () Bool)

(declare-fun tp!1558447 () Bool)

(declare-fun tp!1558448 () Bool)

(assert (=> b!5630279 (= e!3470226 (and tp!1558447 tp!1558448))))

(declare-fun b!5630276 () Bool)

(assert (=> b!5630276 (= e!3470226 tp_is_empty!40495)))

(assert (= (and b!5629154 ((_ is ElementMatch!15621) (regTwo!31754 (regOne!31755 r!7292)))) b!5630276))

(assert (= (and b!5629154 ((_ is Concat!24466) (regTwo!31754 (regOne!31755 r!7292)))) b!5630277))

(assert (= (and b!5629154 ((_ is Star!15621) (regTwo!31754 (regOne!31755 r!7292)))) b!5630278))

(assert (= (and b!5629154 ((_ is Union!15621) (regTwo!31754 (regOne!31755 r!7292)))) b!5630279))

(declare-fun condSetEmpty!37606 () Bool)

(assert (=> setNonEmpty!37594 (= condSetEmpty!37606 (= setRest!37594 ((as const (Array Context!10010 Bool)) false)))))

(declare-fun setRes!37606 () Bool)

(assert (=> setNonEmpty!37594 (= tp!1558209 setRes!37606)))

(declare-fun setIsEmpty!37606 () Bool)

(assert (=> setIsEmpty!37606 setRes!37606))

(declare-fun setNonEmpty!37606 () Bool)

(declare-fun e!3470227 () Bool)

(declare-fun setElem!37606 () Context!10010)

(declare-fun tp!1558452 () Bool)

(assert (=> setNonEmpty!37606 (= setRes!37606 (and tp!1558452 (inv!82299 setElem!37606) e!3470227))))

(declare-fun setRest!37606 () (InoxSet Context!10010))

(assert (=> setNonEmpty!37606 (= setRest!37594 ((_ map or) (store ((as const (Array Context!10010 Bool)) false) setElem!37606 true) setRest!37606))))

(declare-fun b!5630280 () Bool)

(declare-fun tp!1558453 () Bool)

(assert (=> b!5630280 (= e!3470227 tp!1558453)))

(assert (= (and setNonEmpty!37594 condSetEmpty!37606) setIsEmpty!37606))

(assert (= (and setNonEmpty!37594 (not condSetEmpty!37606)) setNonEmpty!37606))

(assert (= setNonEmpty!37606 b!5630280))

(declare-fun m!6601804 () Bool)

(assert (=> setNonEmpty!37606 m!6601804))

(declare-fun b!5630283 () Bool)

(declare-fun e!3470228 () Bool)

(declare-fun tp!1558456 () Bool)

(assert (=> b!5630283 (= e!3470228 tp!1558456)))

(assert (=> b!5629155 (= tp!1558218 e!3470228)))

(declare-fun b!5630282 () Bool)

(declare-fun tp!1558458 () Bool)

(declare-fun tp!1558457 () Bool)

(assert (=> b!5630282 (= e!3470228 (and tp!1558458 tp!1558457))))

(declare-fun b!5630284 () Bool)

(declare-fun tp!1558454 () Bool)

(declare-fun tp!1558455 () Bool)

(assert (=> b!5630284 (= e!3470228 (and tp!1558454 tp!1558455))))

(declare-fun b!5630281 () Bool)

(assert (=> b!5630281 (= e!3470228 tp_is_empty!40495)))

(assert (= (and b!5629155 ((_ is ElementMatch!15621) (reg!15950 (regOne!31755 r!7292)))) b!5630281))

(assert (= (and b!5629155 ((_ is Concat!24466) (reg!15950 (regOne!31755 r!7292)))) b!5630282))

(assert (= (and b!5629155 ((_ is Star!15621) (reg!15950 (regOne!31755 r!7292)))) b!5630283))

(assert (= (and b!5629155 ((_ is Union!15621) (reg!15950 (regOne!31755 r!7292)))) b!5630284))

(declare-fun b!5630287 () Bool)

(declare-fun e!3470229 () Bool)

(declare-fun tp!1558461 () Bool)

(assert (=> b!5630287 (= e!3470229 tp!1558461)))

(assert (=> b!5629134 (= tp!1558192 e!3470229)))

(declare-fun b!5630286 () Bool)

(declare-fun tp!1558463 () Bool)

(declare-fun tp!1558462 () Bool)

(assert (=> b!5630286 (= e!3470229 (and tp!1558463 tp!1558462))))

(declare-fun b!5630288 () Bool)

(declare-fun tp!1558459 () Bool)

(declare-fun tp!1558460 () Bool)

(assert (=> b!5630288 (= e!3470229 (and tp!1558459 tp!1558460))))

(declare-fun b!5630285 () Bool)

(assert (=> b!5630285 (= e!3470229 tp_is_empty!40495)))

(assert (= (and b!5629134 ((_ is ElementMatch!15621) (regOne!31755 (regOne!31754 r!7292)))) b!5630285))

(assert (= (and b!5629134 ((_ is Concat!24466) (regOne!31755 (regOne!31754 r!7292)))) b!5630286))

(assert (= (and b!5629134 ((_ is Star!15621) (regOne!31755 (regOne!31754 r!7292)))) b!5630287))

(assert (= (and b!5629134 ((_ is Union!15621) (regOne!31755 (regOne!31754 r!7292)))) b!5630288))

(declare-fun b!5630291 () Bool)

(declare-fun e!3470230 () Bool)

(declare-fun tp!1558466 () Bool)

(assert (=> b!5630291 (= e!3470230 tp!1558466)))

(assert (=> b!5629134 (= tp!1558193 e!3470230)))

(declare-fun b!5630290 () Bool)

(declare-fun tp!1558468 () Bool)

(declare-fun tp!1558467 () Bool)

(assert (=> b!5630290 (= e!3470230 (and tp!1558468 tp!1558467))))

(declare-fun b!5630292 () Bool)

(declare-fun tp!1558464 () Bool)

(declare-fun tp!1558465 () Bool)

(assert (=> b!5630292 (= e!3470230 (and tp!1558464 tp!1558465))))

(declare-fun b!5630289 () Bool)

(assert (=> b!5630289 (= e!3470230 tp_is_empty!40495)))

(assert (= (and b!5629134 ((_ is ElementMatch!15621) (regTwo!31755 (regOne!31754 r!7292)))) b!5630289))

(assert (= (and b!5629134 ((_ is Concat!24466) (regTwo!31755 (regOne!31754 r!7292)))) b!5630290))

(assert (= (and b!5629134 ((_ is Star!15621) (regTwo!31755 (regOne!31754 r!7292)))) b!5630291))

(assert (= (and b!5629134 ((_ is Union!15621) (regTwo!31755 (regOne!31754 r!7292)))) b!5630292))

(declare-fun b!5630295 () Bool)

(declare-fun e!3470231 () Bool)

(declare-fun tp!1558471 () Bool)

(assert (=> b!5630295 (= e!3470231 tp!1558471)))

(assert (=> b!5629133 (= tp!1558194 e!3470231)))

(declare-fun b!5630294 () Bool)

(declare-fun tp!1558473 () Bool)

(declare-fun tp!1558472 () Bool)

(assert (=> b!5630294 (= e!3470231 (and tp!1558473 tp!1558472))))

(declare-fun b!5630296 () Bool)

(declare-fun tp!1558469 () Bool)

(declare-fun tp!1558470 () Bool)

(assert (=> b!5630296 (= e!3470231 (and tp!1558469 tp!1558470))))

(declare-fun b!5630293 () Bool)

(assert (=> b!5630293 (= e!3470231 tp_is_empty!40495)))

(assert (= (and b!5629133 ((_ is ElementMatch!15621) (reg!15950 (regOne!31754 r!7292)))) b!5630293))

(assert (= (and b!5629133 ((_ is Concat!24466) (reg!15950 (regOne!31754 r!7292)))) b!5630294))

(assert (= (and b!5629133 ((_ is Star!15621) (reg!15950 (regOne!31754 r!7292)))) b!5630295))

(assert (= (and b!5629133 ((_ is Union!15621) (reg!15950 (regOne!31754 r!7292)))) b!5630296))

(declare-fun b!5630299 () Bool)

(declare-fun e!3470232 () Bool)

(declare-fun tp!1558476 () Bool)

(assert (=> b!5630299 (= e!3470232 tp!1558476)))

(assert (=> b!5629158 (= tp!1558225 e!3470232)))

(declare-fun b!5630298 () Bool)

(declare-fun tp!1558478 () Bool)

(declare-fun tp!1558477 () Bool)

(assert (=> b!5630298 (= e!3470232 (and tp!1558478 tp!1558477))))

(declare-fun b!5630300 () Bool)

(declare-fun tp!1558474 () Bool)

(declare-fun tp!1558475 () Bool)

(assert (=> b!5630300 (= e!3470232 (and tp!1558474 tp!1558475))))

(declare-fun b!5630297 () Bool)

(assert (=> b!5630297 (= e!3470232 tp_is_empty!40495)))

(assert (= (and b!5629158 ((_ is ElementMatch!15621) (regOne!31754 (regTwo!31755 r!7292)))) b!5630297))

(assert (= (and b!5629158 ((_ is Concat!24466) (regOne!31754 (regTwo!31755 r!7292)))) b!5630298))

(assert (= (and b!5629158 ((_ is Star!15621) (regOne!31754 (regTwo!31755 r!7292)))) b!5630299))

(assert (= (and b!5629158 ((_ is Union!15621) (regOne!31754 (regTwo!31755 r!7292)))) b!5630300))

(declare-fun b!5630303 () Bool)

(declare-fun e!3470233 () Bool)

(declare-fun tp!1558481 () Bool)

(assert (=> b!5630303 (= e!3470233 tp!1558481)))

(assert (=> b!5629158 (= tp!1558224 e!3470233)))

(declare-fun b!5630302 () Bool)

(declare-fun tp!1558483 () Bool)

(declare-fun tp!1558482 () Bool)

(assert (=> b!5630302 (= e!3470233 (and tp!1558483 tp!1558482))))

(declare-fun b!5630304 () Bool)

(declare-fun tp!1558479 () Bool)

(declare-fun tp!1558480 () Bool)

(assert (=> b!5630304 (= e!3470233 (and tp!1558479 tp!1558480))))

(declare-fun b!5630301 () Bool)

(assert (=> b!5630301 (= e!3470233 tp_is_empty!40495)))

(assert (= (and b!5629158 ((_ is ElementMatch!15621) (regTwo!31754 (regTwo!31755 r!7292)))) b!5630301))

(assert (= (and b!5629158 ((_ is Concat!24466) (regTwo!31754 (regTwo!31755 r!7292)))) b!5630302))

(assert (= (and b!5629158 ((_ is Star!15621) (regTwo!31754 (regTwo!31755 r!7292)))) b!5630303))

(assert (= (and b!5629158 ((_ is Union!15621) (regTwo!31754 (regTwo!31755 r!7292)))) b!5630304))

(declare-fun b!5630305 () Bool)

(declare-fun e!3470234 () Bool)

(declare-fun tp!1558484 () Bool)

(assert (=> b!5630305 (= e!3470234 (and tp_is_empty!40495 tp!1558484))))

(assert (=> b!5629143 (= tp!1558204 e!3470234)))

(assert (= (and b!5629143 ((_ is Cons!63038) (t!376454 (t!376454 s!2326)))) b!5630305))

(declare-fun b!5630308 () Bool)

(declare-fun e!3470235 () Bool)

(declare-fun tp!1558487 () Bool)

(assert (=> b!5630308 (= e!3470235 tp!1558487)))

(assert (=> b!5629165 (= tp!1558230 e!3470235)))

(declare-fun b!5630307 () Bool)

(declare-fun tp!1558489 () Bool)

(declare-fun tp!1558488 () Bool)

(assert (=> b!5630307 (= e!3470235 (and tp!1558489 tp!1558488))))

(declare-fun b!5630309 () Bool)

(declare-fun tp!1558485 () Bool)

(declare-fun tp!1558486 () Bool)

(assert (=> b!5630309 (= e!3470235 (and tp!1558485 tp!1558486))))

(declare-fun b!5630306 () Bool)

(assert (=> b!5630306 (= e!3470235 tp_is_empty!40495)))

(assert (= (and b!5629165 ((_ is ElementMatch!15621) (h!69487 (exprs!5505 (h!69488 zl!343))))) b!5630306))

(assert (= (and b!5629165 ((_ is Concat!24466) (h!69487 (exprs!5505 (h!69488 zl!343))))) b!5630307))

(assert (= (and b!5629165 ((_ is Star!15621) (h!69487 (exprs!5505 (h!69488 zl!343))))) b!5630308))

(assert (= (and b!5629165 ((_ is Union!15621) (h!69487 (exprs!5505 (h!69488 zl!343))))) b!5630309))

(declare-fun b!5630310 () Bool)

(declare-fun e!3470236 () Bool)

(declare-fun tp!1558490 () Bool)

(declare-fun tp!1558491 () Bool)

(assert (=> b!5630310 (= e!3470236 (and tp!1558490 tp!1558491))))

(assert (=> b!5629165 (= tp!1558231 e!3470236)))

(assert (= (and b!5629165 ((_ is Cons!63039) (t!376455 (exprs!5505 (h!69488 zl!343))))) b!5630310))

(declare-fun b!5630313 () Bool)

(declare-fun e!3470237 () Bool)

(declare-fun tp!1558494 () Bool)

(assert (=> b!5630313 (= e!3470237 tp!1558494)))

(assert (=> b!5629160 (= tp!1558221 e!3470237)))

(declare-fun b!5630312 () Bool)

(declare-fun tp!1558496 () Bool)

(declare-fun tp!1558495 () Bool)

(assert (=> b!5630312 (= e!3470237 (and tp!1558496 tp!1558495))))

(declare-fun b!5630314 () Bool)

(declare-fun tp!1558492 () Bool)

(declare-fun tp!1558493 () Bool)

(assert (=> b!5630314 (= e!3470237 (and tp!1558492 tp!1558493))))

(declare-fun b!5630311 () Bool)

(assert (=> b!5630311 (= e!3470237 tp_is_empty!40495)))

(assert (= (and b!5629160 ((_ is ElementMatch!15621) (regOne!31755 (regTwo!31755 r!7292)))) b!5630311))

(assert (= (and b!5629160 ((_ is Concat!24466) (regOne!31755 (regTwo!31755 r!7292)))) b!5630312))

(assert (= (and b!5629160 ((_ is Star!15621) (regOne!31755 (regTwo!31755 r!7292)))) b!5630313))

(assert (= (and b!5629160 ((_ is Union!15621) (regOne!31755 (regTwo!31755 r!7292)))) b!5630314))

(declare-fun b!5630317 () Bool)

(declare-fun e!3470238 () Bool)

(declare-fun tp!1558499 () Bool)

(assert (=> b!5630317 (= e!3470238 tp!1558499)))

(assert (=> b!5629160 (= tp!1558222 e!3470238)))

(declare-fun b!5630316 () Bool)

(declare-fun tp!1558501 () Bool)

(declare-fun tp!1558500 () Bool)

(assert (=> b!5630316 (= e!3470238 (and tp!1558501 tp!1558500))))

(declare-fun b!5630318 () Bool)

(declare-fun tp!1558497 () Bool)

(declare-fun tp!1558498 () Bool)

(assert (=> b!5630318 (= e!3470238 (and tp!1558497 tp!1558498))))

(declare-fun b!5630315 () Bool)

(assert (=> b!5630315 (= e!3470238 tp_is_empty!40495)))

(assert (= (and b!5629160 ((_ is ElementMatch!15621) (regTwo!31755 (regTwo!31755 r!7292)))) b!5630315))

(assert (= (and b!5629160 ((_ is Concat!24466) (regTwo!31755 (regTwo!31755 r!7292)))) b!5630316))

(assert (= (and b!5629160 ((_ is Star!15621) (regTwo!31755 (regTwo!31755 r!7292)))) b!5630317))

(assert (= (and b!5629160 ((_ is Union!15621) (regTwo!31755 (regTwo!31755 r!7292)))) b!5630318))

(declare-fun b!5630321 () Bool)

(declare-fun e!3470239 () Bool)

(declare-fun tp!1558504 () Bool)

(assert (=> b!5630321 (= e!3470239 tp!1558504)))

(assert (=> b!5629136 (= tp!1558201 e!3470239)))

(declare-fun b!5630320 () Bool)

(declare-fun tp!1558506 () Bool)

(declare-fun tp!1558505 () Bool)

(assert (=> b!5630320 (= e!3470239 (and tp!1558506 tp!1558505))))

(declare-fun b!5630322 () Bool)

(declare-fun tp!1558502 () Bool)

(declare-fun tp!1558503 () Bool)

(assert (=> b!5630322 (= e!3470239 (and tp!1558502 tp!1558503))))

(declare-fun b!5630319 () Bool)

(assert (=> b!5630319 (= e!3470239 tp_is_empty!40495)))

(assert (= (and b!5629136 ((_ is ElementMatch!15621) (regOne!31754 (regTwo!31754 r!7292)))) b!5630319))

(assert (= (and b!5629136 ((_ is Concat!24466) (regOne!31754 (regTwo!31754 r!7292)))) b!5630320))

(assert (= (and b!5629136 ((_ is Star!15621) (regOne!31754 (regTwo!31754 r!7292)))) b!5630321))

(assert (= (and b!5629136 ((_ is Union!15621) (regOne!31754 (regTwo!31754 r!7292)))) b!5630322))

(declare-fun b!5630325 () Bool)

(declare-fun e!3470240 () Bool)

(declare-fun tp!1558509 () Bool)

(assert (=> b!5630325 (= e!3470240 tp!1558509)))

(assert (=> b!5629136 (= tp!1558200 e!3470240)))

(declare-fun b!5630324 () Bool)

(declare-fun tp!1558511 () Bool)

(declare-fun tp!1558510 () Bool)

(assert (=> b!5630324 (= e!3470240 (and tp!1558511 tp!1558510))))

(declare-fun b!5630326 () Bool)

(declare-fun tp!1558507 () Bool)

(declare-fun tp!1558508 () Bool)

(assert (=> b!5630326 (= e!3470240 (and tp!1558507 tp!1558508))))

(declare-fun b!5630323 () Bool)

(assert (=> b!5630323 (= e!3470240 tp_is_empty!40495)))

(assert (= (and b!5629136 ((_ is ElementMatch!15621) (regTwo!31754 (regTwo!31754 r!7292)))) b!5630323))

(assert (= (and b!5629136 ((_ is Concat!24466) (regTwo!31754 (regTwo!31754 r!7292)))) b!5630324))

(assert (= (and b!5629136 ((_ is Star!15621) (regTwo!31754 (regTwo!31754 r!7292)))) b!5630325))

(assert (= (and b!5629136 ((_ is Union!15621) (regTwo!31754 (regTwo!31754 r!7292)))) b!5630326))

(declare-fun b!5630329 () Bool)

(declare-fun e!3470241 () Bool)

(declare-fun tp!1558514 () Bool)

(assert (=> b!5630329 (= e!3470241 tp!1558514)))

(assert (=> b!5629151 (= tp!1558213 e!3470241)))

(declare-fun b!5630328 () Bool)

(declare-fun tp!1558516 () Bool)

(declare-fun tp!1558515 () Bool)

(assert (=> b!5630328 (= e!3470241 (and tp!1558516 tp!1558515))))

(declare-fun b!5630330 () Bool)

(declare-fun tp!1558512 () Bool)

(declare-fun tp!1558513 () Bool)

(assert (=> b!5630330 (= e!3470241 (and tp!1558512 tp!1558513))))

(declare-fun b!5630327 () Bool)

(assert (=> b!5630327 (= e!3470241 tp_is_empty!40495)))

(assert (= (and b!5629151 ((_ is ElementMatch!15621) (reg!15950 (reg!15950 r!7292)))) b!5630327))

(assert (= (and b!5629151 ((_ is Concat!24466) (reg!15950 (reg!15950 r!7292)))) b!5630328))

(assert (= (and b!5629151 ((_ is Star!15621) (reg!15950 (reg!15950 r!7292)))) b!5630329))

(assert (= (and b!5629151 ((_ is Union!15621) (reg!15950 (reg!15950 r!7292)))) b!5630330))

(declare-fun b!5630333 () Bool)

(declare-fun e!3470242 () Bool)

(declare-fun tp!1558519 () Bool)

(assert (=> b!5630333 (= e!3470242 tp!1558519)))

(assert (=> b!5629166 (= tp!1558232 e!3470242)))

(declare-fun b!5630332 () Bool)

(declare-fun tp!1558521 () Bool)

(declare-fun tp!1558520 () Bool)

(assert (=> b!5630332 (= e!3470242 (and tp!1558521 tp!1558520))))

(declare-fun b!5630334 () Bool)

(declare-fun tp!1558517 () Bool)

(declare-fun tp!1558518 () Bool)

(assert (=> b!5630334 (= e!3470242 (and tp!1558517 tp!1558518))))

(declare-fun b!5630331 () Bool)

(assert (=> b!5630331 (= e!3470242 tp_is_empty!40495)))

(assert (= (and b!5629166 ((_ is ElementMatch!15621) (h!69487 (exprs!5505 setElem!37588)))) b!5630331))

(assert (= (and b!5629166 ((_ is Concat!24466) (h!69487 (exprs!5505 setElem!37588)))) b!5630332))

(assert (= (and b!5629166 ((_ is Star!15621) (h!69487 (exprs!5505 setElem!37588)))) b!5630333))

(assert (= (and b!5629166 ((_ is Union!15621) (h!69487 (exprs!5505 setElem!37588)))) b!5630334))

(declare-fun b!5630335 () Bool)

(declare-fun e!3470243 () Bool)

(declare-fun tp!1558522 () Bool)

(declare-fun tp!1558523 () Bool)

(assert (=> b!5630335 (= e!3470243 (and tp!1558522 tp!1558523))))

(assert (=> b!5629166 (= tp!1558233 e!3470243)))

(assert (= (and b!5629166 ((_ is Cons!63039) (t!376455 (exprs!5505 setElem!37588)))) b!5630335))

(declare-fun b!5630338 () Bool)

(declare-fun e!3470244 () Bool)

(declare-fun tp!1558526 () Bool)

(assert (=> b!5630338 (= e!3470244 tp!1558526)))

(assert (=> b!5629159 (= tp!1558223 e!3470244)))

(declare-fun b!5630337 () Bool)

(declare-fun tp!1558528 () Bool)

(declare-fun tp!1558527 () Bool)

(assert (=> b!5630337 (= e!3470244 (and tp!1558528 tp!1558527))))

(declare-fun b!5630339 () Bool)

(declare-fun tp!1558524 () Bool)

(declare-fun tp!1558525 () Bool)

(assert (=> b!5630339 (= e!3470244 (and tp!1558524 tp!1558525))))

(declare-fun b!5630336 () Bool)

(assert (=> b!5630336 (= e!3470244 tp_is_empty!40495)))

(assert (= (and b!5629159 ((_ is ElementMatch!15621) (reg!15950 (regTwo!31755 r!7292)))) b!5630336))

(assert (= (and b!5629159 ((_ is Concat!24466) (reg!15950 (regTwo!31755 r!7292)))) b!5630337))

(assert (= (and b!5629159 ((_ is Star!15621) (reg!15950 (regTwo!31755 r!7292)))) b!5630338))

(assert (= (and b!5629159 ((_ is Union!15621) (reg!15950 (regTwo!31755 r!7292)))) b!5630339))

(declare-fun b!5630342 () Bool)

(declare-fun e!3470245 () Bool)

(declare-fun tp!1558531 () Bool)

(assert (=> b!5630342 (= e!3470245 tp!1558531)))

(assert (=> b!5629150 (= tp!1558215 e!3470245)))

(declare-fun b!5630341 () Bool)

(declare-fun tp!1558533 () Bool)

(declare-fun tp!1558532 () Bool)

(assert (=> b!5630341 (= e!3470245 (and tp!1558533 tp!1558532))))

(declare-fun b!5630343 () Bool)

(declare-fun tp!1558529 () Bool)

(declare-fun tp!1558530 () Bool)

(assert (=> b!5630343 (= e!3470245 (and tp!1558529 tp!1558530))))

(declare-fun b!5630340 () Bool)

(assert (=> b!5630340 (= e!3470245 tp_is_empty!40495)))

(assert (= (and b!5629150 ((_ is ElementMatch!15621) (regOne!31754 (reg!15950 r!7292)))) b!5630340))

(assert (= (and b!5629150 ((_ is Concat!24466) (regOne!31754 (reg!15950 r!7292)))) b!5630341))

(assert (= (and b!5629150 ((_ is Star!15621) (regOne!31754 (reg!15950 r!7292)))) b!5630342))

(assert (= (and b!5629150 ((_ is Union!15621) (regOne!31754 (reg!15950 r!7292)))) b!5630343))

(declare-fun b!5630346 () Bool)

(declare-fun e!3470246 () Bool)

(declare-fun tp!1558536 () Bool)

(assert (=> b!5630346 (= e!3470246 tp!1558536)))

(assert (=> b!5629150 (= tp!1558214 e!3470246)))

(declare-fun b!5630345 () Bool)

(declare-fun tp!1558538 () Bool)

(declare-fun tp!1558537 () Bool)

(assert (=> b!5630345 (= e!3470246 (and tp!1558538 tp!1558537))))

(declare-fun b!5630347 () Bool)

(declare-fun tp!1558534 () Bool)

(declare-fun tp!1558535 () Bool)

(assert (=> b!5630347 (= e!3470246 (and tp!1558534 tp!1558535))))

(declare-fun b!5630344 () Bool)

(assert (=> b!5630344 (= e!3470246 tp_is_empty!40495)))

(assert (= (and b!5629150 ((_ is ElementMatch!15621) (regTwo!31754 (reg!15950 r!7292)))) b!5630344))

(assert (= (and b!5629150 ((_ is Concat!24466) (regTwo!31754 (reg!15950 r!7292)))) b!5630345))

(assert (= (and b!5629150 ((_ is Star!15621) (regTwo!31754 (reg!15950 r!7292)))) b!5630346))

(assert (= (and b!5629150 ((_ is Union!15621) (regTwo!31754 (reg!15950 r!7292)))) b!5630347))

(declare-fun b!5630348 () Bool)

(declare-fun e!3470247 () Bool)

(declare-fun tp!1558539 () Bool)

(declare-fun tp!1558540 () Bool)

(assert (=> b!5630348 (= e!3470247 (and tp!1558539 tp!1558540))))

(assert (=> b!5629174 (= tp!1558238 e!3470247)))

(assert (= (and b!5629174 ((_ is Cons!63039) (exprs!5505 (h!69488 (t!376456 zl!343))))) b!5630348))

(declare-fun b!5630351 () Bool)

(declare-fun e!3470248 () Bool)

(declare-fun tp!1558543 () Bool)

(assert (=> b!5630351 (= e!3470248 tp!1558543)))

(assert (=> b!5629137 (= tp!1558199 e!3470248)))

(declare-fun b!5630350 () Bool)

(declare-fun tp!1558545 () Bool)

(declare-fun tp!1558544 () Bool)

(assert (=> b!5630350 (= e!3470248 (and tp!1558545 tp!1558544))))

(declare-fun b!5630352 () Bool)

(declare-fun tp!1558541 () Bool)

(declare-fun tp!1558542 () Bool)

(assert (=> b!5630352 (= e!3470248 (and tp!1558541 tp!1558542))))

(declare-fun b!5630349 () Bool)

(assert (=> b!5630349 (= e!3470248 tp_is_empty!40495)))

(assert (= (and b!5629137 ((_ is ElementMatch!15621) (reg!15950 (regTwo!31754 r!7292)))) b!5630349))

(assert (= (and b!5629137 ((_ is Concat!24466) (reg!15950 (regTwo!31754 r!7292)))) b!5630350))

(assert (= (and b!5629137 ((_ is Star!15621) (reg!15950 (regTwo!31754 r!7292)))) b!5630351))

(assert (= (and b!5629137 ((_ is Union!15621) (reg!15950 (regTwo!31754 r!7292)))) b!5630352))

(declare-fun b!5630355 () Bool)

(declare-fun e!3470249 () Bool)

(declare-fun tp!1558548 () Bool)

(assert (=> b!5630355 (= e!3470249 tp!1558548)))

(assert (=> b!5629152 (= tp!1558211 e!3470249)))

(declare-fun b!5630354 () Bool)

(declare-fun tp!1558550 () Bool)

(declare-fun tp!1558549 () Bool)

(assert (=> b!5630354 (= e!3470249 (and tp!1558550 tp!1558549))))

(declare-fun b!5630356 () Bool)

(declare-fun tp!1558546 () Bool)

(declare-fun tp!1558547 () Bool)

(assert (=> b!5630356 (= e!3470249 (and tp!1558546 tp!1558547))))

(declare-fun b!5630353 () Bool)

(assert (=> b!5630353 (= e!3470249 tp_is_empty!40495)))

(assert (= (and b!5629152 ((_ is ElementMatch!15621) (regOne!31755 (reg!15950 r!7292)))) b!5630353))

(assert (= (and b!5629152 ((_ is Concat!24466) (regOne!31755 (reg!15950 r!7292)))) b!5630354))

(assert (= (and b!5629152 ((_ is Star!15621) (regOne!31755 (reg!15950 r!7292)))) b!5630355))

(assert (= (and b!5629152 ((_ is Union!15621) (regOne!31755 (reg!15950 r!7292)))) b!5630356))

(declare-fun b!5630359 () Bool)

(declare-fun e!3470250 () Bool)

(declare-fun tp!1558553 () Bool)

(assert (=> b!5630359 (= e!3470250 tp!1558553)))

(assert (=> b!5629152 (= tp!1558212 e!3470250)))

(declare-fun b!5630358 () Bool)

(declare-fun tp!1558555 () Bool)

(declare-fun tp!1558554 () Bool)

(assert (=> b!5630358 (= e!3470250 (and tp!1558555 tp!1558554))))

(declare-fun b!5630360 () Bool)

(declare-fun tp!1558551 () Bool)

(declare-fun tp!1558552 () Bool)

(assert (=> b!5630360 (= e!3470250 (and tp!1558551 tp!1558552))))

(declare-fun b!5630357 () Bool)

(assert (=> b!5630357 (= e!3470250 tp_is_empty!40495)))

(assert (= (and b!5629152 ((_ is ElementMatch!15621) (regTwo!31755 (reg!15950 r!7292)))) b!5630357))

(assert (= (and b!5629152 ((_ is Concat!24466) (regTwo!31755 (reg!15950 r!7292)))) b!5630358))

(assert (= (and b!5629152 ((_ is Star!15621) (regTwo!31755 (reg!15950 r!7292)))) b!5630359))

(assert (= (and b!5629152 ((_ is Union!15621) (regTwo!31755 (reg!15950 r!7292)))) b!5630360))

(declare-fun b!5630363 () Bool)

(declare-fun e!3470251 () Bool)

(declare-fun tp!1558558 () Bool)

(assert (=> b!5630363 (= e!3470251 tp!1558558)))

(assert (=> b!5629138 (= tp!1558197 e!3470251)))

(declare-fun b!5630362 () Bool)

(declare-fun tp!1558560 () Bool)

(declare-fun tp!1558559 () Bool)

(assert (=> b!5630362 (= e!3470251 (and tp!1558560 tp!1558559))))

(declare-fun b!5630364 () Bool)

(declare-fun tp!1558556 () Bool)

(declare-fun tp!1558557 () Bool)

(assert (=> b!5630364 (= e!3470251 (and tp!1558556 tp!1558557))))

(declare-fun b!5630361 () Bool)

(assert (=> b!5630361 (= e!3470251 tp_is_empty!40495)))

(assert (= (and b!5629138 ((_ is ElementMatch!15621) (regOne!31755 (regTwo!31754 r!7292)))) b!5630361))

(assert (= (and b!5629138 ((_ is Concat!24466) (regOne!31755 (regTwo!31754 r!7292)))) b!5630362))

(assert (= (and b!5629138 ((_ is Star!15621) (regOne!31755 (regTwo!31754 r!7292)))) b!5630363))

(assert (= (and b!5629138 ((_ is Union!15621) (regOne!31755 (regTwo!31754 r!7292)))) b!5630364))

(declare-fun b!5630367 () Bool)

(declare-fun e!3470252 () Bool)

(declare-fun tp!1558563 () Bool)

(assert (=> b!5630367 (= e!3470252 tp!1558563)))

(assert (=> b!5629138 (= tp!1558198 e!3470252)))

(declare-fun b!5630366 () Bool)

(declare-fun tp!1558565 () Bool)

(declare-fun tp!1558564 () Bool)

(assert (=> b!5630366 (= e!3470252 (and tp!1558565 tp!1558564))))

(declare-fun b!5630368 () Bool)

(declare-fun tp!1558561 () Bool)

(declare-fun tp!1558562 () Bool)

(assert (=> b!5630368 (= e!3470252 (and tp!1558561 tp!1558562))))

(declare-fun b!5630365 () Bool)

(assert (=> b!5630365 (= e!3470252 tp_is_empty!40495)))

(assert (= (and b!5629138 ((_ is ElementMatch!15621) (regTwo!31755 (regTwo!31754 r!7292)))) b!5630365))

(assert (= (and b!5629138 ((_ is Concat!24466) (regTwo!31755 (regTwo!31754 r!7292)))) b!5630366))

(assert (= (and b!5629138 ((_ is Star!15621) (regTwo!31755 (regTwo!31754 r!7292)))) b!5630367))

(assert (= (and b!5629138 ((_ is Union!15621) (regTwo!31755 (regTwo!31754 r!7292)))) b!5630368))

(declare-fun b!5630370 () Bool)

(declare-fun e!3470254 () Bool)

(declare-fun tp!1558566 () Bool)

(assert (=> b!5630370 (= e!3470254 tp!1558566)))

(declare-fun tp!1558567 () Bool)

(declare-fun e!3470253 () Bool)

(declare-fun b!5630369 () Bool)

(assert (=> b!5630369 (= e!3470253 (and (inv!82299 (h!69488 (t!376456 (t!376456 zl!343)))) e!3470254 tp!1558567))))

(assert (=> b!5629173 (= tp!1558239 e!3470253)))

(assert (= b!5630369 b!5630370))

(assert (= (and b!5629173 ((_ is Cons!63040) (t!376456 (t!376456 zl!343)))) b!5630369))

(declare-fun m!6601806 () Bool)

(assert (=> b!5630369 m!6601806))

(declare-fun b_lambda!212931 () Bool)

(assert (= b_lambda!212925 (or d!1777842 b_lambda!212931)))

(declare-fun bs!1303121 () Bool)

(declare-fun d!1778548 () Bool)

(assert (= bs!1303121 (and d!1778548 d!1777842)))

(assert (=> bs!1303121 (= (dynLambda!24652 lambda!302435 (h!69487 (exprs!5505 setElem!37588))) (validRegex!7357 (h!69487 (exprs!5505 setElem!37588))))))

(declare-fun m!6601808 () Bool)

(assert (=> bs!1303121 m!6601808))

(assert (=> b!5630155 d!1778548))

(declare-fun b_lambda!212933 () Bool)

(assert (= b_lambda!212923 (or d!1777938 b_lambda!212933)))

(declare-fun bs!1303122 () Bool)

(declare-fun d!1778550 () Bool)

(assert (= bs!1303122 (and d!1778550 d!1777938)))

(assert (=> bs!1303122 (= (dynLambda!24652 lambda!302457 (h!69487 (exprs!5505 (h!69488 zl!343)))) (validRegex!7357 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(declare-fun m!6601810 () Bool)

(assert (=> bs!1303122 m!6601810))

(assert (=> b!5629972 d!1778550))

(declare-fun b_lambda!212935 () Bool)

(assert (= b_lambda!212915 (or b!5628366 b_lambda!212935)))

(assert (=> d!1778276 d!1777984))

(declare-fun b_lambda!212937 () Bool)

(assert (= b_lambda!212927 (or b!5628366 b_lambda!212937)))

(assert (=> d!1778492 d!1777986))

(declare-fun b_lambda!212939 () Bool)

(assert (= b_lambda!212921 (or d!1777934 b_lambda!212939)))

(declare-fun bs!1303123 () Bool)

(declare-fun d!1778552 () Bool)

(assert (= bs!1303123 (and d!1778552 d!1777934)))

(assert (=> bs!1303123 (= (dynLambda!24652 lambda!302453 (h!69487 (unfocusZipperList!1049 zl!343))) (validRegex!7357 (h!69487 (unfocusZipperList!1049 zl!343))))))

(declare-fun m!6601812 () Bool)

(assert (=> bs!1303123 m!6601812))

(assert (=> b!5629909 d!1778552))

(declare-fun b_lambda!212941 () Bool)

(assert (= b_lambda!212917 (or b!5628366 b_lambda!212941)))

(assert (=> d!1778342 d!1777988))

(declare-fun b_lambda!212943 () Bool)

(assert (= b_lambda!212919 (or d!1777936 b_lambda!212943)))

(declare-fun bs!1303124 () Bool)

(declare-fun d!1778554 () Bool)

(assert (= bs!1303124 (and d!1778554 d!1777936)))

(assert (=> bs!1303124 (= (dynLambda!24652 lambda!302456 (h!69487 lt!2262176)) (validRegex!7357 (h!69487 lt!2262176)))))

(declare-fun m!6601814 () Bool)

(assert (=> bs!1303124 m!6601814))

(assert (=> b!5629867 d!1778554))

(declare-fun b_lambda!212945 () Bool)

(assert (= b_lambda!212929 (or d!1777956 b_lambda!212945)))

(declare-fun bs!1303125 () Bool)

(declare-fun d!1778556 () Bool)

(assert (= bs!1303125 (and d!1778556 d!1777956)))

(assert (=> bs!1303125 (= (dynLambda!24652 lambda!302463 (h!69487 (exprs!5505 (h!69488 zl!343)))) (validRegex!7357 (h!69487 (exprs!5505 (h!69488 zl!343)))))))

(assert (=> bs!1303125 m!6601810))

(assert (=> b!5630215 d!1778556))

(check-sat (not b!5630176) (not b!5629840) (not d!1778528) (not b!5630266) (not b!5630205) (not d!1778304) (not bm!424394) (not b!5630335) (not setNonEmpty!37604) (not bm!424304) (not b!5629910) (not d!1778400) (not b!5630322) (not d!1778296) (not b!5629975) (not b!5629967) (not b!5630286) (not b!5630094) (not b!5630234) (not b!5630366) (not bm!424338) (not b!5630337) (not d!1778464) (not b_lambda!212941) (not d!1778358) (not d!1778534) (not b!5630328) (not bm!424404) (not bm!424317) (not d!1778382) (not bm!424369) (not b!5629886) (not bm!424377) (not b!5630217) (not bm!424320) (not b!5629941) (not b!5629974) (not b!5630042) (not b!5630175) (not bm!424309) (not b!5630258) (not b!5630304) (not bm!424346) (not b!5630345) (not b!5630190) (not d!1778436) (not setNonEmpty!37606) (not d!1778402) (not b!5630261) (not b!5629918) (not b!5630369) (not bm!424289) (not b!5630320) (not bm!424392) (not d!1778522) (not b!5630138) (not d!1778418) (not d!1778470) (not b!5630278) (not b!5630178) (not b!5630314) (not bm!424363) (not d!1778480) (not d!1778532) (not bm!424402) (not d!1778278) (not b!5629919) (not bs!1303123) (not b!5629780) (not b!5630299) (not bm!424355) (not d!1778450) (not bs!1303125) (not b!5630346) (not b_lambda!212881) (not b!5630267) (not bm!424337) (not b_lambda!212939) (not b!5630316) (not b!5630161) (not b!5630220) (not b!5629920) (not b!5630233) (not b!5630259) (not d!1778376) (not b!5630330) (not setNonEmpty!37603) (not bm!424316) (not d!1778404) (not b!5629856) (not d!1778364) (not bm!424327) (not b!5630219) (not b!5629953) (not b!5629816) (not b!5629849) (not bm!424385) (not b!5630355) (not d!1778280) (not b!5629788) (not d!1778492) (not d!1778320) (not d!1778372) (not bm!424314) (not b!5630172) (not b!5630083) (not d!1778428) (not b!5630156) (not d!1778374) (not b!5630363) (not b!5630305) (not b!5629944) (not bm!424321) (not bm!424341) (not b!5629936) (not b!5629934) (not b!5630288) (not b!5630231) (not d!1778334) (not b!5630284) (not b!5630262) (not b!5630321) (not b!5630296) (not b!5630196) (not b!5629917) (not b!5630282) (not b!5630290) (not b!5630348) (not b!5630362) (not d!1778380) (not b!5630093) (not b_lambda!212935) (not d!1778472) (not b!5630130) (not d!1778498) (not b!5630192) (not d!1778292) (not d!1778510) (not b!5629923) (not b!5630198) (not b!5629868) (not d!1778474) (not bs!1303124) (not bm!424360) (not b!5630341) (not b!5630151) (not b!5630180) (not b!5629824) (not b!5630308) (not b!5629925) (not b!5630204) (not b!5630307) (not bm!424295) (not b!5630200) (not b!5630300) (not d!1778384) (not b!5630167) (not b_lambda!212945) (not bm!424362) (not b!5629914) (not d!1778546) (not d!1778438) (not bm!424334) (not b!5630195) (not b!5630001) (not bm!424390) (not bm!424388) (not b!5630193) (not d!1778508) (not b!5630312) (not b!5630294) (not bm!424326) (not b!5630332) (not b!5630044) (not b!5630271) (not b!5630310) (not bm!424343) (not b!5630343) (not d!1778370) (not b!5629994) (not b!5630292) (not b!5629859) (not d!1778324) (not d!1778276) (not b!5629813) (not b!5630095) (not d!1778516) (not d!1778500) (not b!5630250) (not b!5630309) (not b_lambda!212931) (not b!5630265) (not b!5630325) (not b!5630034) (not bm!424367) (not b!5630032) (not b!5630317) (not bm!424382) (not b!5629904) (not d!1778484) (not b!5629861) (not bm!424307) (not b!5630255) (not b!5630354) (not bm!424399) (not b!5630280) (not bm!424323) (not d!1778360) (not b!5630257) (not b!5630359) (not bs!1303121) (not bm!424310) (not b!5630129) (not bm!424312) (not b!5629852) (not b!5630334) (not b!5630170) (not d!1778506) (not b!5630360) (not d!1778520) (not b!5629938) (not b!5629986) (not d!1778540) (not b!5630092) (not d!1778316) (not b!5629885) (not b_lambda!212877) (not bm!424344) (not d!1778386) (not bm!424287) (not bm!424292) (not b!5629839) (not bm!424297) (not bm!424358) (not b!5630367) (not b!5630197) (not b!5630039) (not b!5630010) (not d!1778406) (not b!5630224) (not b!5629976) (not d!1778462) (not b!5629948) (not b!5630269) (not d!1778342) (not bm!424335) (not b!5629932) (not bm!424376) (not bm!424328) (not b!5630368) (not b!5629775) (not d!1778512) (not b!5630096) (not b!5629926) (not b!5630263) (not b!5629812) (not bm!424381) (not b!5629921) (not b!5630210) (not d!1778368) (not b!5629943) (not b!5629929) (not d!1778442) (not b!5630302) (not b!5630020) (not d!1778514) (not b!5630142) (not b!5629841) (not b!5630342) (not b!5630232) (not b_lambda!212933) (not bm!424395) (not d!1778454) (not bm!424396) (not b!5630277) (not b!5630291) (not b!5629851) (not d!1778538) (not b_lambda!212937) (not b!5630303) (not d!1778306) (not b!5630324) (not b!5630270) (not b!5630352) (not b!5630333) (not b!5629913) (not b!5630338) (not d!1778318) (not d!1778366) (not d!1778298) (not b!5630177) (not bm!424332) (not d!1778458) (not b!5629930) (not b_lambda!212879) (not d!1778326) (not b!5630227) tp_is_empty!40495 (not b!5630028) (not bm!424298) (not setNonEmpty!37605) (not b!5629973) (not b!5630199) (not b!5630358) (not bs!1303122) (not b!5629815) (not d!1778332) (not b_lambda!212943) (not d!1778456) (not bm!424339) (not b!5630339) (not b!5629895) (not b!5629977) (not b!5630364) (not b!5629939) (not b!5630088) (not bm!424365) (not b!5630318) (not bm!424303) (not d!1778504) (not b!5629951) (not bm!424319) (not b!5630329) (not bm!424291) (not b!5630018) (not b!5629777) (not b!5630351) (not b!5630104) (not b!5630347) (not b!5630356) (not b!5629876) (not b!5630370) (not b!5630035) (not bm!424301) (not b!5630275) (not b!5630229) (not b!5630350) (not b!5630181) (not b!5630287) (not d!1778330) (not bm!424330) (not b!5630188) (not bm!424379) (not bm!424398) (not b!5629935) (not b!5629835) (not b!5629799) (not b!5629978) (not d!1778396) (not b!5630091) (not b!5630298) (not d!1778398) (not b!5630185) (not b!5629991) (not bm!424387) (not b!5630000) (not b!5630216) (not bm!424400) (not b!5629842) (not b!5630313) (not b!5630072) (not b!5630295) (not d!1778518) (not b!5630194) (not b!5630274) (not bm!424324) (not bm!424401) (not b!5630019) (not b!5630326) (not d!1778440) (not b!5630273) (not b!5630283) (not bm!424393) (not d!1778530) (not b!5630279) (not bm!424370) (not b!5630011) (not d!1778430) (not b!5629848))
(check-sat)
