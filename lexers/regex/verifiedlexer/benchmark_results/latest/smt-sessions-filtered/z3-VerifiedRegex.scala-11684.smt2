; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!657528 () Bool)

(assert start!657528)

(declare-fun b!6793723 () Bool)

(assert (=> b!6793723 true))

(assert (=> b!6793723 true))

(declare-fun lambda!382885 () Int)

(declare-fun lambda!382884 () Int)

(assert (=> b!6793723 (not (= lambda!382885 lambda!382884))))

(assert (=> b!6793723 true))

(assert (=> b!6793723 true))

(declare-fun lambda!382886 () Int)

(assert (=> b!6793723 (not (= lambda!382886 lambda!382884))))

(assert (=> b!6793723 (not (= lambda!382886 lambda!382885))))

(assert (=> b!6793723 true))

(assert (=> b!6793723 true))

(declare-fun b!6793705 () Bool)

(assert (=> b!6793705 true))

(declare-fun b!6793734 () Bool)

(assert (=> b!6793734 true))

(declare-fun e!4100390 () Bool)

(declare-fun e!4100378 () Bool)

(assert (=> b!6793705 (= e!4100390 e!4100378)))

(declare-fun res!2776573 () Bool)

(assert (=> b!6793705 (=> res!2776573 e!4100378)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33500 0))(
  ( (C!33501 (val!26452 Int)) )
))
(declare-datatypes ((Regex!16615 0))(
  ( (ElementMatch!16615 (c!1262803 C!33500)) (Concat!25460 (regOne!33742 Regex!16615) (regTwo!33742 Regex!16615)) (EmptyExpr!16615) (Star!16615 (reg!16944 Regex!16615)) (EmptyLang!16615) (Union!16615 (regOne!33743 Regex!16615) (regTwo!33743 Regex!16615)) )
))
(declare-datatypes ((List!66144 0))(
  ( (Nil!66020) (Cons!66020 (h!72468 Regex!16615) (t!379869 List!66144)) )
))
(declare-datatypes ((Context!11998 0))(
  ( (Context!11999 (exprs!6499 List!66144)) )
))
(declare-fun lt!2446895 () (InoxSet Context!11998))

(declare-fun lt!2446897 () (InoxSet Context!11998))

(assert (=> b!6793705 (= res!2776573 (not (= lt!2446895 lt!2446897)))))

(declare-datatypes ((List!66145 0))(
  ( (Nil!66021) (Cons!66021 (h!72469 C!33500) (t!379870 List!66145)) )
))
(declare-fun s!2326 () List!66145)

(declare-fun z!1189 () (InoxSet Context!11998))

(declare-fun lambda!382887 () Int)

(declare-datatypes ((List!66146 0))(
  ( (Nil!66022) (Cons!66022 (h!72470 Context!11998) (t!379871 List!66146)) )
))
(declare-fun zl!343 () List!66146)

(declare-fun flatMap!2096 ((InoxSet Context!11998) Int) (InoxSet Context!11998))

(declare-fun derivationStepZipperUp!1769 (Context!11998 C!33500) (InoxSet Context!11998))

(assert (=> b!6793705 (= (flatMap!2096 z!1189 lambda!382887) (derivationStepZipperUp!1769 (h!72470 zl!343) (h!72469 s!2326)))))

(declare-datatypes ((Unit!159921 0))(
  ( (Unit!159922) )
))
(declare-fun lt!2446896 () Unit!159921)

(declare-fun lemmaFlatMapOnSingletonSet!1622 ((InoxSet Context!11998) Context!11998 Int) Unit!159921)

(assert (=> b!6793705 (= lt!2446896 (lemmaFlatMapOnSingletonSet!1622 z!1189 (h!72470 zl!343) lambda!382887))))

(declare-fun b!6793706 () Bool)

(declare-fun res!2776565 () Bool)

(declare-fun e!4100375 () Bool)

(assert (=> b!6793706 (=> res!2776565 e!4100375)))

(declare-fun r!7292 () Regex!16615)

(declare-fun generalisedConcat!2212 (List!66144) Regex!16615)

(assert (=> b!6793706 (= res!2776565 (not (= r!7292 (generalisedConcat!2212 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6793707 () Bool)

(declare-fun e!4100381 () Bool)

(declare-fun tp!1860555 () Bool)

(assert (=> b!6793707 (= e!4100381 tp!1860555)))

(declare-fun b!6793708 () Bool)

(declare-fun res!2776564 () Bool)

(declare-fun e!4100384 () Bool)

(assert (=> b!6793708 (=> (not res!2776564) (not e!4100384))))

(declare-fun toList!10399 ((InoxSet Context!11998)) List!66146)

(assert (=> b!6793708 (= res!2776564 (= (toList!10399 z!1189) zl!343))))

(declare-fun b!6793709 () Bool)

(declare-fun e!4100377 () Bool)

(declare-fun tp!1860550 () Bool)

(declare-fun tp!1860546 () Bool)

(assert (=> b!6793709 (= e!4100377 (and tp!1860550 tp!1860546))))

(declare-fun b!6793710 () Bool)

(declare-fun res!2776577 () Bool)

(declare-fun e!4100379 () Bool)

(assert (=> b!6793710 (=> res!2776577 e!4100379)))

(declare-fun matchZipper!2601 ((InoxSet Context!11998) List!66145) Bool)

(assert (=> b!6793710 (= res!2776577 (not (matchZipper!2601 z!1189 s!2326)))))

(declare-fun b!6793711 () Bool)

(declare-fun res!2776571 () Bool)

(declare-fun e!4100389 () Bool)

(assert (=> b!6793711 (=> res!2776571 e!4100389)))

(declare-fun lt!2446891 () Context!11998)

(declare-fun unfocusZipper!2357 (List!66146) Regex!16615)

(assert (=> b!6793711 (= res!2776571 (not (= (unfocusZipper!2357 (Cons!66022 lt!2446891 Nil!66022)) (reg!16944 r!7292))))))

(declare-fun b!6793712 () Bool)

(declare-fun res!2776561 () Bool)

(assert (=> b!6793712 (=> res!2776561 e!4100375)))

(declare-fun isEmpty!38393 (List!66146) Bool)

(assert (=> b!6793712 (= res!2776561 (not (isEmpty!38393 (t!379871 zl!343))))))

(declare-fun b!6793713 () Bool)

(declare-fun e!4100387 () Bool)

(assert (=> b!6793713 (= e!4100378 e!4100387)))

(declare-fun res!2776576 () Bool)

(assert (=> b!6793713 (=> res!2776576 e!4100387)))

(declare-fun lt!2446908 () Context!11998)

(declare-fun derivationStepZipperDown!1843 (Regex!16615 Context!11998 C!33500) (InoxSet Context!11998))

(assert (=> b!6793713 (= res!2776576 (not (= lt!2446895 (derivationStepZipperDown!1843 (reg!16944 r!7292) lt!2446908 (h!72469 s!2326)))))))

(declare-fun lt!2446904 () List!66144)

(assert (=> b!6793713 (= lt!2446908 (Context!11999 lt!2446904))))

(declare-fun lt!2446885 () Context!11998)

(declare-fun lt!2446903 () (InoxSet Context!11998))

(assert (=> b!6793713 (= (flatMap!2096 lt!2446903 lambda!382887) (derivationStepZipperUp!1769 lt!2446885 (h!72469 s!2326)))))

(declare-fun lt!2446898 () Unit!159921)

(assert (=> b!6793713 (= lt!2446898 (lemmaFlatMapOnSingletonSet!1622 lt!2446903 lt!2446885 lambda!382887))))

(declare-fun lt!2446888 () (InoxSet Context!11998))

(assert (=> b!6793713 (= lt!2446888 (derivationStepZipperUp!1769 lt!2446885 (h!72469 s!2326)))))

(assert (=> b!6793713 (= lt!2446903 (store ((as const (Array Context!11998 Bool)) false) lt!2446885 true))))

(assert (=> b!6793713 (= lt!2446885 (Context!11999 (Cons!66020 (reg!16944 r!7292) lt!2446904)))))

(assert (=> b!6793713 (= lt!2446904 (Cons!66020 r!7292 Nil!66020))))

(declare-fun b!6793714 () Bool)

(declare-fun res!2776556 () Bool)

(assert (=> b!6793714 (=> res!2776556 e!4100375)))

(declare-fun generalisedUnion!2459 (List!66144) Regex!16615)

(declare-fun unfocusZipperList!2036 (List!66146) List!66144)

(assert (=> b!6793714 (= res!2776556 (not (= r!7292 (generalisedUnion!2459 (unfocusZipperList!2036 zl!343)))))))

(declare-fun setIsEmpty!46525 () Bool)

(declare-fun setRes!46525 () Bool)

(assert (=> setIsEmpty!46525 setRes!46525))

(declare-fun b!6793715 () Bool)

(declare-fun res!2776558 () Bool)

(assert (=> b!6793715 (=> res!2776558 e!4100387)))

(declare-fun lt!2446890 () Regex!16615)

(assert (=> b!6793715 (= res!2776558 (or (not (= lt!2446890 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun setNonEmpty!46525 () Bool)

(declare-fun setElem!46525 () Context!11998)

(declare-fun tp!1860547 () Bool)

(declare-fun inv!84784 (Context!11998) Bool)

(assert (=> setNonEmpty!46525 (= setRes!46525 (and tp!1860547 (inv!84784 setElem!46525) e!4100381))))

(declare-fun setRest!46525 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46525 (= z!1189 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46525 true) setRest!46525))))

(declare-fun b!6793716 () Bool)

(declare-fun e!4100386 () Bool)

(declare-fun lt!2446907 () Bool)

(assert (=> b!6793716 (= e!4100386 lt!2446907)))

(declare-fun b!6793717 () Bool)

(declare-fun res!2776567 () Bool)

(assert (=> b!6793717 (=> res!2776567 e!4100375)))

(get-info :version)

(assert (=> b!6793717 (= res!2776567 (not ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6793718 () Bool)

(declare-fun e!4100385 () Bool)

(assert (=> b!6793718 (= e!4100384 e!4100385)))

(declare-fun res!2776570 () Bool)

(assert (=> b!6793718 (=> (not res!2776570) (not e!4100385))))

(assert (=> b!6793718 (= res!2776570 (= r!7292 lt!2446890))))

(assert (=> b!6793718 (= lt!2446890 (unfocusZipper!2357 zl!343))))

(declare-fun res!2776566 () Bool)

(assert (=> start!657528 (=> (not res!2776566) (not e!4100384))))

(declare-fun validRegex!8351 (Regex!16615) Bool)

(assert (=> start!657528 (= res!2776566 (validRegex!8351 r!7292))))

(assert (=> start!657528 e!4100384))

(assert (=> start!657528 e!4100377))

(declare-fun condSetEmpty!46525 () Bool)

(assert (=> start!657528 (= condSetEmpty!46525 (= z!1189 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> start!657528 setRes!46525))

(declare-fun e!4100380 () Bool)

(assert (=> start!657528 e!4100380))

(declare-fun e!4100382 () Bool)

(assert (=> start!657528 e!4100382))

(declare-fun tp!1860554 () Bool)

(declare-fun e!4100388 () Bool)

(declare-fun b!6793719 () Bool)

(assert (=> b!6793719 (= e!4100380 (and (inv!84784 (h!72470 zl!343)) e!4100388 tp!1860554))))

(declare-fun b!6793720 () Bool)

(declare-fun e!4100383 () Bool)

(assert (=> b!6793720 (= e!4100387 e!4100383)))

(declare-fun res!2776568 () Bool)

(assert (=> b!6793720 (=> res!2776568 e!4100383)))

(declare-fun lt!2446884 () Regex!16615)

(assert (=> b!6793720 (= res!2776568 (not (= (unfocusZipper!2357 (Cons!66022 lt!2446885 Nil!66022)) lt!2446884)))))

(assert (=> b!6793720 (= lt!2446884 (Concat!25460 (reg!16944 r!7292) r!7292))))

(declare-fun b!6793721 () Bool)

(assert (=> b!6793721 (= e!4100383 e!4100389)))

(declare-fun res!2776557 () Bool)

(assert (=> b!6793721 (=> res!2776557 e!4100389)))

(declare-fun lt!2446892 () (InoxSet Context!11998))

(declare-fun derivationStepZipper!2559 ((InoxSet Context!11998) C!33500) (InoxSet Context!11998))

(assert (=> b!6793721 (= res!2776557 (not (= lt!2446895 (derivationStepZipper!2559 lt!2446892 (h!72469 s!2326)))))))

(assert (=> b!6793721 (= (flatMap!2096 lt!2446892 lambda!382887) (derivationStepZipperUp!1769 lt!2446908 (h!72469 s!2326)))))

(declare-fun lt!2446910 () Unit!159921)

(assert (=> b!6793721 (= lt!2446910 (lemmaFlatMapOnSingletonSet!1622 lt!2446892 lt!2446908 lambda!382887))))

(declare-fun lt!2446905 () (InoxSet Context!11998))

(assert (=> b!6793721 (= (flatMap!2096 lt!2446905 lambda!382887) (derivationStepZipperUp!1769 lt!2446891 (h!72469 s!2326)))))

(declare-fun lt!2446906 () Unit!159921)

(assert (=> b!6793721 (= lt!2446906 (lemmaFlatMapOnSingletonSet!1622 lt!2446905 lt!2446891 lambda!382887))))

(declare-fun lt!2446894 () (InoxSet Context!11998))

(assert (=> b!6793721 (= lt!2446894 (derivationStepZipperUp!1769 lt!2446908 (h!72469 s!2326)))))

(declare-fun lt!2446899 () (InoxSet Context!11998))

(assert (=> b!6793721 (= lt!2446899 (derivationStepZipperUp!1769 lt!2446891 (h!72469 s!2326)))))

(assert (=> b!6793721 (= lt!2446892 (store ((as const (Array Context!11998 Bool)) false) lt!2446908 true))))

(assert (=> b!6793721 (= lt!2446905 (store ((as const (Array Context!11998 Bool)) false) lt!2446891 true))))

(assert (=> b!6793721 (= lt!2446891 (Context!11999 (Cons!66020 (reg!16944 r!7292) Nil!66020)))))

(declare-fun b!6793722 () Bool)

(declare-fun res!2776575 () Bool)

(assert (=> b!6793722 (=> res!2776575 e!4100389)))

(assert (=> b!6793722 (= res!2776575 (not (= (unfocusZipper!2357 (Cons!66022 lt!2446908 Nil!66022)) r!7292)))))

(declare-fun e!4100376 () Bool)

(assert (=> b!6793723 (= e!4100375 e!4100376)))

(declare-fun res!2776559 () Bool)

(assert (=> b!6793723 (=> res!2776559 e!4100376)))

(declare-fun lt!2446900 () Bool)

(assert (=> b!6793723 (= res!2776559 (not (= lt!2446900 e!4100386)))))

(declare-fun res!2776560 () Bool)

(assert (=> b!6793723 (=> res!2776560 e!4100386)))

(declare-fun isEmpty!38394 (List!66145) Bool)

(assert (=> b!6793723 (= res!2776560 (isEmpty!38394 s!2326))))

(declare-fun Exists!3683 (Int) Bool)

(assert (=> b!6793723 (= (Exists!3683 lambda!382884) (Exists!3683 lambda!382886))))

(declare-fun lt!2446889 () Unit!159921)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2210 (Regex!16615 Regex!16615 List!66145) Unit!159921)

(assert (=> b!6793723 (= lt!2446889 (lemmaExistCutMatchRandMatchRSpecEquivalent!2210 (reg!16944 r!7292) r!7292 s!2326))))

(assert (=> b!6793723 (= (Exists!3683 lambda!382884) (Exists!3683 lambda!382885))))

(declare-fun lt!2446882 () Unit!159921)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!774 (Regex!16615 List!66145) Unit!159921)

(assert (=> b!6793723 (= lt!2446882 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!774 (reg!16944 r!7292) s!2326))))

(assert (=> b!6793723 (= lt!2446907 (Exists!3683 lambda!382884))))

(declare-datatypes ((tuple2!67180 0))(
  ( (tuple2!67181 (_1!36893 List!66145) (_2!36893 List!66145)) )
))
(declare-datatypes ((Option!16502 0))(
  ( (None!16501) (Some!16501 (v!52707 tuple2!67180)) )
))
(declare-fun isDefined!13205 (Option!16502) Bool)

(declare-fun findConcatSeparation!2916 (Regex!16615 Regex!16615 List!66145 List!66145 List!66145) Option!16502)

(assert (=> b!6793723 (= lt!2446907 (isDefined!13205 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326)))))

(declare-fun lt!2446909 () Unit!159921)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2680 (Regex!16615 Regex!16615 List!66145) Unit!159921)

(assert (=> b!6793723 (= lt!2446909 (lemmaFindConcatSeparationEquivalentToExists!2680 (reg!16944 r!7292) r!7292 s!2326))))

(declare-fun b!6793724 () Bool)

(declare-fun tp!1860548 () Bool)

(declare-fun tp!1860553 () Bool)

(assert (=> b!6793724 (= e!4100377 (and tp!1860548 tp!1860553))))

(declare-fun b!6793725 () Bool)

(declare-fun tp!1860551 () Bool)

(assert (=> b!6793725 (= e!4100388 tp!1860551)))

(declare-fun b!6793726 () Bool)

(assert (=> b!6793726 (= e!4100376 e!4100390)))

(declare-fun res!2776574 () Bool)

(assert (=> b!6793726 (=> res!2776574 e!4100390)))

(declare-fun lt!2446901 () (InoxSet Context!11998))

(assert (=> b!6793726 (= res!2776574 (not (= lt!2446901 lt!2446897)))))

(assert (=> b!6793726 (= lt!2446897 (derivationStepZipperDown!1843 r!7292 (Context!11999 Nil!66020) (h!72469 s!2326)))))

(assert (=> b!6793726 (= lt!2446901 (derivationStepZipperUp!1769 (Context!11999 (Cons!66020 r!7292 Nil!66020)) (h!72469 s!2326)))))

(assert (=> b!6793726 (= lt!2446895 (derivationStepZipper!2559 z!1189 (h!72469 s!2326)))))

(declare-fun b!6793727 () Bool)

(declare-fun res!2776563 () Bool)

(assert (=> b!6793727 (=> res!2776563 e!4100387)))

(assert (=> b!6793727 (= res!2776563 (not (= (matchZipper!2601 lt!2446903 s!2326) (matchZipper!2601 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (t!379870 s!2326)))))))

(declare-fun b!6793728 () Bool)

(declare-fun tp_is_empty!42483 () Bool)

(assert (=> b!6793728 (= e!4100377 tp_is_empty!42483)))

(declare-fun b!6793729 () Bool)

(declare-fun res!2776578 () Bool)

(assert (=> b!6793729 (=> res!2776578 e!4100375)))

(assert (=> b!6793729 (= res!2776578 (or ((_ is EmptyExpr!16615) r!7292) ((_ is EmptyLang!16615) r!7292) ((_ is ElementMatch!16615) r!7292) ((_ is Union!16615) r!7292) ((_ is Concat!25460) r!7292)))))

(declare-fun b!6793730 () Bool)

(declare-fun res!2776562 () Bool)

(assert (=> b!6793730 (=> res!2776562 e!4100376)))

(assert (=> b!6793730 (= res!2776562 ((_ is Nil!66021) s!2326))))

(declare-fun b!6793731 () Bool)

(assert (=> b!6793731 (= e!4100385 (not e!4100375))))

(declare-fun res!2776569 () Bool)

(assert (=> b!6793731 (=> res!2776569 e!4100375)))

(assert (=> b!6793731 (= res!2776569 (not ((_ is Cons!66022) zl!343)))))

(declare-fun matchRSpec!3716 (Regex!16615 List!66145) Bool)

(assert (=> b!6793731 (= lt!2446900 (matchRSpec!3716 r!7292 s!2326))))

(declare-fun matchR!8798 (Regex!16615 List!66145) Bool)

(assert (=> b!6793731 (= lt!2446900 (matchR!8798 r!7292 s!2326))))

(declare-fun lt!2446893 () Unit!159921)

(declare-fun mainMatchTheorem!3716 (Regex!16615 List!66145) Unit!159921)

(assert (=> b!6793731 (= lt!2446893 (mainMatchTheorem!3716 r!7292 s!2326))))

(declare-fun b!6793732 () Bool)

(assert (=> b!6793732 (= e!4100389 e!4100379)))

(declare-fun res!2776572 () Bool)

(assert (=> b!6793732 (=> res!2776572 e!4100379)))

(declare-fun lt!2446886 () Bool)

(assert (=> b!6793732 (= res!2776572 lt!2446886)))

(assert (=> b!6793732 (= lt!2446886 (matchRSpec!3716 lt!2446884 s!2326))))

(assert (=> b!6793732 (= lt!2446886 (matchR!8798 lt!2446884 s!2326))))

(declare-fun lt!2446883 () Unit!159921)

(assert (=> b!6793732 (= lt!2446883 (mainMatchTheorem!3716 lt!2446884 s!2326))))

(declare-fun b!6793733 () Bool)

(declare-fun tp!1860552 () Bool)

(assert (=> b!6793733 (= e!4100377 tp!1860552)))

(assert (=> b!6793734 (= e!4100379 (inv!84784 lt!2446885))))

(declare-fun lambda!382888 () Int)

(declare-fun map!15083 ((InoxSet Context!11998) Int) (InoxSet Context!11998))

(declare-fun ++!14775 (List!66144 List!66144) List!66144)

(assert (=> b!6793734 (= (map!15083 lt!2446905 lambda!382888) (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904)) true))))

(declare-fun lambda!382889 () Int)

(declare-fun lt!2446902 () Unit!159921)

(declare-fun lemmaConcatPreservesForall!444 (List!66144 List!66144 Int) Unit!159921)

(assert (=> b!6793734 (= lt!2446902 (lemmaConcatPreservesForall!444 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904 lambda!382889))))

(declare-fun lt!2446887 () Unit!159921)

(declare-fun lemmaMapOnSingletonSet!250 ((InoxSet Context!11998) Context!11998 Int) Unit!159921)

(assert (=> b!6793734 (= lt!2446887 (lemmaMapOnSingletonSet!250 lt!2446905 lt!2446891 lambda!382888))))

(declare-fun b!6793735 () Bool)

(declare-fun tp!1860549 () Bool)

(assert (=> b!6793735 (= e!4100382 (and tp_is_empty!42483 tp!1860549))))

(assert (= (and start!657528 res!2776566) b!6793708))

(assert (= (and b!6793708 res!2776564) b!6793718))

(assert (= (and b!6793718 res!2776570) b!6793731))

(assert (= (and b!6793731 (not res!2776569)) b!6793712))

(assert (= (and b!6793712 (not res!2776561)) b!6793706))

(assert (= (and b!6793706 (not res!2776565)) b!6793717))

(assert (= (and b!6793717 (not res!2776567)) b!6793714))

(assert (= (and b!6793714 (not res!2776556)) b!6793729))

(assert (= (and b!6793729 (not res!2776578)) b!6793723))

(assert (= (and b!6793723 (not res!2776560)) b!6793716))

(assert (= (and b!6793723 (not res!2776559)) b!6793730))

(assert (= (and b!6793730 (not res!2776562)) b!6793726))

(assert (= (and b!6793726 (not res!2776574)) b!6793705))

(assert (= (and b!6793705 (not res!2776573)) b!6793713))

(assert (= (and b!6793713 (not res!2776576)) b!6793727))

(assert (= (and b!6793727 (not res!2776563)) b!6793715))

(assert (= (and b!6793715 (not res!2776558)) b!6793720))

(assert (= (and b!6793720 (not res!2776568)) b!6793721))

(assert (= (and b!6793721 (not res!2776557)) b!6793711))

(assert (= (and b!6793711 (not res!2776571)) b!6793722))

(assert (= (and b!6793722 (not res!2776575)) b!6793732))

(assert (= (and b!6793732 (not res!2776572)) b!6793710))

(assert (= (and b!6793710 (not res!2776577)) b!6793734))

(assert (= (and start!657528 ((_ is ElementMatch!16615) r!7292)) b!6793728))

(assert (= (and start!657528 ((_ is Concat!25460) r!7292)) b!6793709))

(assert (= (and start!657528 ((_ is Star!16615) r!7292)) b!6793733))

(assert (= (and start!657528 ((_ is Union!16615) r!7292)) b!6793724))

(assert (= (and start!657528 condSetEmpty!46525) setIsEmpty!46525))

(assert (= (and start!657528 (not condSetEmpty!46525)) setNonEmpty!46525))

(assert (= setNonEmpty!46525 b!6793707))

(assert (= b!6793719 b!6793725))

(assert (= (and start!657528 ((_ is Cons!66022) zl!343)) b!6793719))

(assert (= (and start!657528 ((_ is Cons!66021) s!2326)) b!6793735))

(declare-fun m!7540830 () Bool)

(assert (=> b!6793732 m!7540830))

(declare-fun m!7540832 () Bool)

(assert (=> b!6793732 m!7540832))

(declare-fun m!7540834 () Bool)

(assert (=> b!6793732 m!7540834))

(declare-fun m!7540836 () Bool)

(assert (=> start!657528 m!7540836))

(declare-fun m!7540838 () Bool)

(assert (=> b!6793706 m!7540838))

(declare-fun m!7540840 () Bool)

(assert (=> b!6793731 m!7540840))

(declare-fun m!7540842 () Bool)

(assert (=> b!6793731 m!7540842))

(declare-fun m!7540844 () Bool)

(assert (=> b!6793731 m!7540844))

(declare-fun m!7540846 () Bool)

(assert (=> b!6793727 m!7540846))

(declare-fun m!7540848 () Bool)

(assert (=> b!6793727 m!7540848))

(assert (=> b!6793727 m!7540848))

(declare-fun m!7540850 () Bool)

(assert (=> b!6793727 m!7540850))

(declare-fun m!7540852 () Bool)

(assert (=> b!6793726 m!7540852))

(declare-fun m!7540854 () Bool)

(assert (=> b!6793726 m!7540854))

(declare-fun m!7540856 () Bool)

(assert (=> b!6793726 m!7540856))

(declare-fun m!7540858 () Bool)

(assert (=> b!6793710 m!7540858))

(declare-fun m!7540860 () Bool)

(assert (=> setNonEmpty!46525 m!7540860))

(declare-fun m!7540862 () Bool)

(assert (=> b!6793718 m!7540862))

(declare-fun m!7540864 () Bool)

(assert (=> b!6793721 m!7540864))

(declare-fun m!7540866 () Bool)

(assert (=> b!6793721 m!7540866))

(declare-fun m!7540868 () Bool)

(assert (=> b!6793721 m!7540868))

(declare-fun m!7540870 () Bool)

(assert (=> b!6793721 m!7540870))

(declare-fun m!7540872 () Bool)

(assert (=> b!6793721 m!7540872))

(declare-fun m!7540874 () Bool)

(assert (=> b!6793721 m!7540874))

(declare-fun m!7540876 () Bool)

(assert (=> b!6793721 m!7540876))

(declare-fun m!7540878 () Bool)

(assert (=> b!6793721 m!7540878))

(declare-fun m!7540880 () Bool)

(assert (=> b!6793721 m!7540880))

(declare-fun m!7540882 () Bool)

(assert (=> b!6793714 m!7540882))

(assert (=> b!6793714 m!7540882))

(declare-fun m!7540884 () Bool)

(assert (=> b!6793714 m!7540884))

(declare-fun m!7540886 () Bool)

(assert (=> b!6793722 m!7540886))

(declare-fun m!7540888 () Bool)

(assert (=> b!6793720 m!7540888))

(declare-fun m!7540890 () Bool)

(assert (=> b!6793719 m!7540890))

(declare-fun m!7540892 () Bool)

(assert (=> b!6793712 m!7540892))

(declare-fun m!7540894 () Bool)

(assert (=> b!6793723 m!7540894))

(declare-fun m!7540896 () Bool)

(assert (=> b!6793723 m!7540896))

(declare-fun m!7540898 () Bool)

(assert (=> b!6793723 m!7540898))

(assert (=> b!6793723 m!7540898))

(declare-fun m!7540900 () Bool)

(assert (=> b!6793723 m!7540900))

(declare-fun m!7540902 () Bool)

(assert (=> b!6793723 m!7540902))

(declare-fun m!7540904 () Bool)

(assert (=> b!6793723 m!7540904))

(assert (=> b!6793723 m!7540902))

(declare-fun m!7540906 () Bool)

(assert (=> b!6793723 m!7540906))

(declare-fun m!7540908 () Bool)

(assert (=> b!6793723 m!7540908))

(declare-fun m!7540910 () Bool)

(assert (=> b!6793723 m!7540910))

(assert (=> b!6793723 m!7540898))

(declare-fun m!7540912 () Bool)

(assert (=> b!6793713 m!7540912))

(declare-fun m!7540914 () Bool)

(assert (=> b!6793713 m!7540914))

(declare-fun m!7540916 () Bool)

(assert (=> b!6793713 m!7540916))

(declare-fun m!7540918 () Bool)

(assert (=> b!6793713 m!7540918))

(declare-fun m!7540920 () Bool)

(assert (=> b!6793713 m!7540920))

(declare-fun m!7540922 () Bool)

(assert (=> b!6793734 m!7540922))

(declare-fun m!7540924 () Bool)

(assert (=> b!6793734 m!7540924))

(declare-fun m!7540926 () Bool)

(assert (=> b!6793734 m!7540926))

(declare-fun m!7540928 () Bool)

(assert (=> b!6793734 m!7540928))

(declare-fun m!7540930 () Bool)

(assert (=> b!6793734 m!7540930))

(declare-fun m!7540932 () Bool)

(assert (=> b!6793734 m!7540932))

(declare-fun m!7540934 () Bool)

(assert (=> b!6793711 m!7540934))

(declare-fun m!7540936 () Bool)

(assert (=> b!6793705 m!7540936))

(declare-fun m!7540938 () Bool)

(assert (=> b!6793705 m!7540938))

(declare-fun m!7540940 () Bool)

(assert (=> b!6793705 m!7540940))

(declare-fun m!7540942 () Bool)

(assert (=> b!6793708 m!7540942))

(check-sat (not b!6793707) (not b!6793712) tp_is_empty!42483 (not b!6793720) (not b!6793705) (not b!6793711) (not b!6793710) (not b!6793731) (not b!6793718) (not b!6793721) (not b!6793708) (not b!6793727) (not start!657528) (not b!6793719) (not b!6793713) (not b!6793733) (not b!6793726) (not b!6793706) (not b!6793734) (not b!6793714) (not b!6793709) (not b!6793735) (not b!6793724) (not b!6793725) (not setNonEmpty!46525) (not b!6793723) (not b!6793732) (not b!6793722))
(check-sat)
(get-model)

(declare-fun b!6793837 () Bool)

(declare-fun e!4100439 () (InoxSet Context!11998))

(declare-fun e!4100440 () (InoxSet Context!11998))

(assert (=> b!6793837 (= e!4100439 e!4100440)))

(declare-fun c!1262831 () Bool)

(assert (=> b!6793837 (= c!1262831 ((_ is Union!16615) r!7292))))

(declare-fun b!6793838 () Bool)

(declare-fun call!616968 () (InoxSet Context!11998))

(declare-fun call!616966 () (InoxSet Context!11998))

(assert (=> b!6793838 (= e!4100440 ((_ map or) call!616968 call!616966))))

(declare-fun b!6793839 () Bool)

(declare-fun e!4100442 () (InoxSet Context!11998))

(declare-fun call!616971 () (InoxSet Context!11998))

(assert (=> b!6793839 (= e!4100442 call!616971)))

(declare-fun c!1262830 () Bool)

(declare-fun bm!616961 () Bool)

(declare-fun c!1262829 () Bool)

(declare-fun call!616969 () List!66144)

(assert (=> bm!616961 (= call!616966 (derivationStepZipperDown!1843 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))) (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969)) (h!72469 s!2326)))))

(declare-fun b!6793840 () Bool)

(declare-fun e!4100441 () (InoxSet Context!11998))

(declare-fun e!4100438 () (InoxSet Context!11998))

(assert (=> b!6793840 (= e!4100441 e!4100438)))

(assert (=> b!6793840 (= c!1262829 ((_ is Concat!25460) r!7292))))

(declare-fun bm!616962 () Bool)

(declare-fun call!616967 () (InoxSet Context!11998))

(assert (=> bm!616962 (= call!616967 call!616966)))

(declare-fun bm!616963 () Bool)

(declare-fun call!616970 () List!66144)

(assert (=> bm!616963 (= call!616969 call!616970)))

(declare-fun bm!616964 () Bool)

(assert (=> bm!616964 (= call!616968 (derivationStepZipperDown!1843 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)) (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970)) (h!72469 s!2326)))))

(declare-fun d!2134635 () Bool)

(declare-fun c!1262833 () Bool)

(assert (=> d!2134635 (= c!1262833 (and ((_ is ElementMatch!16615) r!7292) (= (c!1262803 r!7292) (h!72469 s!2326))))))

(assert (=> d!2134635 (= (derivationStepZipperDown!1843 r!7292 (Context!11999 Nil!66020) (h!72469 s!2326)) e!4100439)))

(declare-fun b!6793841 () Bool)

(assert (=> b!6793841 (= e!4100442 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6793842 () Bool)

(assert (=> b!6793842 (= e!4100439 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 Nil!66020) true))))

(declare-fun bm!616965 () Bool)

(assert (=> bm!616965 (= call!616971 call!616967)))

(declare-fun bm!616966 () Bool)

(declare-fun $colon$colon!2424 (List!66144 Regex!16615) List!66144)

(assert (=> bm!616966 (= call!616970 ($colon$colon!2424 (exprs!6499 (Context!11999 Nil!66020)) (ite (or c!1262830 c!1262829) (regTwo!33742 r!7292) r!7292)))))

(declare-fun b!6793843 () Bool)

(assert (=> b!6793843 (= e!4100441 ((_ map or) call!616968 call!616967))))

(declare-fun b!6793844 () Bool)

(assert (=> b!6793844 (= e!4100438 call!616971)))

(declare-fun b!6793845 () Bool)

(declare-fun e!4100443 () Bool)

(assert (=> b!6793845 (= c!1262830 e!4100443)))

(declare-fun res!2776626 () Bool)

(assert (=> b!6793845 (=> (not res!2776626) (not e!4100443))))

(assert (=> b!6793845 (= res!2776626 ((_ is Concat!25460) r!7292))))

(assert (=> b!6793845 (= e!4100440 e!4100441)))

(declare-fun b!6793846 () Bool)

(declare-fun nullable!6594 (Regex!16615) Bool)

(assert (=> b!6793846 (= e!4100443 (nullable!6594 (regOne!33742 r!7292)))))

(declare-fun b!6793847 () Bool)

(declare-fun c!1262832 () Bool)

(assert (=> b!6793847 (= c!1262832 ((_ is Star!16615) r!7292))))

(assert (=> b!6793847 (= e!4100438 e!4100442)))

(assert (= (and d!2134635 c!1262833) b!6793842))

(assert (= (and d!2134635 (not c!1262833)) b!6793837))

(assert (= (and b!6793837 c!1262831) b!6793838))

(assert (= (and b!6793837 (not c!1262831)) b!6793845))

(assert (= (and b!6793845 res!2776626) b!6793846))

(assert (= (and b!6793845 c!1262830) b!6793843))

(assert (= (and b!6793845 (not c!1262830)) b!6793840))

(assert (= (and b!6793840 c!1262829) b!6793844))

(assert (= (and b!6793840 (not c!1262829)) b!6793847))

(assert (= (and b!6793847 c!1262832) b!6793839))

(assert (= (and b!6793847 (not c!1262832)) b!6793841))

(assert (= (or b!6793844 b!6793839) bm!616963))

(assert (= (or b!6793844 b!6793839) bm!616965))

(assert (= (or b!6793843 bm!616963) bm!616966))

(assert (= (or b!6793843 bm!616965) bm!616962))

(assert (= (or b!6793838 bm!616962) bm!616961))

(assert (= (or b!6793838 b!6793843) bm!616964))

(declare-fun m!7541046 () Bool)

(assert (=> b!6793842 m!7541046))

(declare-fun m!7541048 () Bool)

(assert (=> b!6793846 m!7541048))

(declare-fun m!7541050 () Bool)

(assert (=> bm!616964 m!7541050))

(declare-fun m!7541052 () Bool)

(assert (=> bm!616961 m!7541052))

(declare-fun m!7541054 () Bool)

(assert (=> bm!616966 m!7541054))

(assert (=> b!6793726 d!2134635))

(declare-fun b!6793883 () Bool)

(declare-fun call!616986 () (InoxSet Context!11998))

(declare-fun e!4100467 () (InoxSet Context!11998))

(assert (=> b!6793883 (= e!4100467 ((_ map or) call!616986 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72469 s!2326))))))

(declare-fun b!6793884 () Bool)

(declare-fun e!4100466 () Bool)

(assert (=> b!6793884 (= e!4100466 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(declare-fun b!6793885 () Bool)

(declare-fun e!4100465 () (InoxSet Context!11998))

(assert (=> b!6793885 (= e!4100467 e!4100465)))

(declare-fun c!1262848 () Bool)

(assert (=> b!6793885 (= c!1262848 ((_ is Cons!66020) (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))

(declare-fun b!6793886 () Bool)

(assert (=> b!6793886 (= e!4100465 call!616986)))

(declare-fun b!6793887 () Bool)

(assert (=> b!6793887 (= e!4100465 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!616981 () Bool)

(assert (=> bm!616981 (= call!616986 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72469 s!2326)))))

(declare-fun d!2134653 () Bool)

(declare-fun c!1262849 () Bool)

(assert (=> d!2134653 (= c!1262849 e!4100466)))

(declare-fun res!2776634 () Bool)

(assert (=> d!2134653 (=> (not res!2776634) (not e!4100466))))

(assert (=> d!2134653 (= res!2776634 ((_ is Cons!66020) (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))

(assert (=> d!2134653 (= (derivationStepZipperUp!1769 (Context!11999 (Cons!66020 r!7292 Nil!66020)) (h!72469 s!2326)) e!4100467)))

(assert (= (and d!2134653 res!2776634) b!6793884))

(assert (= (and d!2134653 c!1262849) b!6793883))

(assert (= (and d!2134653 (not c!1262849)) b!6793885))

(assert (= (and b!6793885 c!1262848) b!6793886))

(assert (= (and b!6793885 (not c!1262848)) b!6793887))

(assert (= (or b!6793883 b!6793886) bm!616981))

(declare-fun m!7541062 () Bool)

(assert (=> b!6793883 m!7541062))

(declare-fun m!7541064 () Bool)

(assert (=> b!6793884 m!7541064))

(declare-fun m!7541066 () Bool)

(assert (=> bm!616981 m!7541066))

(assert (=> b!6793726 d!2134653))

(declare-fun bs!1810325 () Bool)

(declare-fun d!2134657 () Bool)

(assert (= bs!1810325 (and d!2134657 b!6793705)))

(declare-fun lambda!382914 () Int)

(assert (=> bs!1810325 (= lambda!382914 lambda!382887)))

(assert (=> d!2134657 true))

(assert (=> d!2134657 (= (derivationStepZipper!2559 z!1189 (h!72469 s!2326)) (flatMap!2096 z!1189 lambda!382914))))

(declare-fun bs!1810326 () Bool)

(assert (= bs!1810326 d!2134657))

(declare-fun m!7541084 () Bool)

(assert (=> bs!1810326 m!7541084))

(assert (=> b!6793726 d!2134657))

(declare-fun d!2134663 () Bool)

(declare-fun c!1262871 () Bool)

(assert (=> d!2134663 (= c!1262871 (isEmpty!38394 s!2326))))

(declare-fun e!4100506 () Bool)

(assert (=> d!2134663 (= (matchZipper!2601 lt!2446903 s!2326) e!4100506)))

(declare-fun b!6793947 () Bool)

(declare-fun nullableZipper!2322 ((InoxSet Context!11998)) Bool)

(assert (=> b!6793947 (= e!4100506 (nullableZipper!2322 lt!2446903))))

(declare-fun b!6793948 () Bool)

(declare-fun head!13641 (List!66145) C!33500)

(declare-fun tail!12726 (List!66145) List!66145)

(assert (=> b!6793948 (= e!4100506 (matchZipper!2601 (derivationStepZipper!2559 lt!2446903 (head!13641 s!2326)) (tail!12726 s!2326)))))

(assert (= (and d!2134663 c!1262871) b!6793947))

(assert (= (and d!2134663 (not c!1262871)) b!6793948))

(assert (=> d!2134663 m!7540894))

(declare-fun m!7541100 () Bool)

(assert (=> b!6793947 m!7541100))

(declare-fun m!7541102 () Bool)

(assert (=> b!6793948 m!7541102))

(assert (=> b!6793948 m!7541102))

(declare-fun m!7541104 () Bool)

(assert (=> b!6793948 m!7541104))

(declare-fun m!7541106 () Bool)

(assert (=> b!6793948 m!7541106))

(assert (=> b!6793948 m!7541104))

(assert (=> b!6793948 m!7541106))

(declare-fun m!7541108 () Bool)

(assert (=> b!6793948 m!7541108))

(assert (=> b!6793727 d!2134663))

(declare-fun d!2134671 () Bool)

(declare-fun c!1262872 () Bool)

(assert (=> d!2134671 (= c!1262872 (isEmpty!38394 (t!379870 s!2326)))))

(declare-fun e!4100507 () Bool)

(assert (=> d!2134671 (= (matchZipper!2601 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (t!379870 s!2326)) e!4100507)))

(declare-fun b!6793949 () Bool)

(assert (=> b!6793949 (= e!4100507 (nullableZipper!2322 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326))))))

(declare-fun b!6793950 () Bool)

(assert (=> b!6793950 (= e!4100507 (matchZipper!2601 (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (head!13641 (t!379870 s!2326))) (tail!12726 (t!379870 s!2326))))))

(assert (= (and d!2134671 c!1262872) b!6793949))

(assert (= (and d!2134671 (not c!1262872)) b!6793950))

(declare-fun m!7541110 () Bool)

(assert (=> d!2134671 m!7541110))

(assert (=> b!6793949 m!7540848))

(declare-fun m!7541112 () Bool)

(assert (=> b!6793949 m!7541112))

(declare-fun m!7541114 () Bool)

(assert (=> b!6793950 m!7541114))

(assert (=> b!6793950 m!7540848))

(assert (=> b!6793950 m!7541114))

(declare-fun m!7541116 () Bool)

(assert (=> b!6793950 m!7541116))

(declare-fun m!7541118 () Bool)

(assert (=> b!6793950 m!7541118))

(assert (=> b!6793950 m!7541116))

(assert (=> b!6793950 m!7541118))

(declare-fun m!7541120 () Bool)

(assert (=> b!6793950 m!7541120))

(assert (=> b!6793727 d!2134671))

(declare-fun bs!1810331 () Bool)

(declare-fun d!2134673 () Bool)

(assert (= bs!1810331 (and d!2134673 b!6793705)))

(declare-fun lambda!382916 () Int)

(assert (=> bs!1810331 (= lambda!382916 lambda!382887)))

(declare-fun bs!1810332 () Bool)

(assert (= bs!1810332 (and d!2134673 d!2134657)))

(assert (=> bs!1810332 (= lambda!382916 lambda!382914)))

(assert (=> d!2134673 true))

(assert (=> d!2134673 (= (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (flatMap!2096 lt!2446903 lambda!382916))))

(declare-fun bs!1810333 () Bool)

(assert (= bs!1810333 d!2134673))

(declare-fun m!7541122 () Bool)

(assert (=> bs!1810333 m!7541122))

(assert (=> b!6793727 d!2134673))

(declare-fun bs!1810334 () Bool)

(declare-fun d!2134675 () Bool)

(assert (= bs!1810334 (and d!2134675 b!6793734)))

(declare-fun lambda!382921 () Int)

(assert (=> bs!1810334 (= lambda!382921 lambda!382889)))

(declare-fun forall!15807 (List!66144 Int) Bool)

(assert (=> d!2134675 (= (inv!84784 setElem!46525) (forall!15807 (exprs!6499 setElem!46525) lambda!382921))))

(declare-fun bs!1810335 () Bool)

(assert (= bs!1810335 d!2134675))

(declare-fun m!7541124 () Bool)

(assert (=> bs!1810335 m!7541124))

(assert (=> setNonEmpty!46525 d!2134675))

(declare-fun bs!1810345 () Bool)

(declare-fun d!2134677 () Bool)

(assert (= bs!1810345 (and d!2134677 b!6793734)))

(declare-fun lambda!382930 () Int)

(assert (=> bs!1810345 (= lambda!382930 lambda!382889)))

(declare-fun bs!1810346 () Bool)

(assert (= bs!1810346 (and d!2134677 d!2134675)))

(assert (=> bs!1810346 (= lambda!382930 lambda!382921)))

(declare-fun b!6794046 () Bool)

(declare-fun e!4100565 () Regex!16615)

(assert (=> b!6794046 (= e!4100565 (Concat!25460 (h!72468 (exprs!6499 (h!72470 zl!343))) (generalisedConcat!2212 (t!379869 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6794047 () Bool)

(declare-fun e!4100564 () Bool)

(declare-fun e!4100568 () Bool)

(assert (=> b!6794047 (= e!4100564 e!4100568)))

(declare-fun c!1262906 () Bool)

(declare-fun isEmpty!38397 (List!66144) Bool)

(declare-fun tail!12727 (List!66144) List!66144)

(assert (=> b!6794047 (= c!1262906 (isEmpty!38397 (tail!12727 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6794048 () Bool)

(assert (=> b!6794048 (= e!4100565 EmptyExpr!16615)))

(declare-fun b!6794049 () Bool)

(declare-fun e!4100569 () Regex!16615)

(assert (=> b!6794049 (= e!4100569 e!4100565)))

(declare-fun c!1262908 () Bool)

(assert (=> b!6794049 (= c!1262908 ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343))))))

(declare-fun b!6794050 () Bool)

(declare-fun lt!2446951 () Regex!16615)

(declare-fun isConcat!1496 (Regex!16615) Bool)

(assert (=> b!6794050 (= e!4100568 (isConcat!1496 lt!2446951))))

(declare-fun e!4100566 () Bool)

(assert (=> d!2134677 e!4100566))

(declare-fun res!2776684 () Bool)

(assert (=> d!2134677 (=> (not res!2776684) (not e!4100566))))

(assert (=> d!2134677 (= res!2776684 (validRegex!8351 lt!2446951))))

(assert (=> d!2134677 (= lt!2446951 e!4100569)))

(declare-fun c!1262909 () Bool)

(declare-fun e!4100567 () Bool)

(assert (=> d!2134677 (= c!1262909 e!4100567)))

(declare-fun res!2776683 () Bool)

(assert (=> d!2134677 (=> (not res!2776683) (not e!4100567))))

(assert (=> d!2134677 (= res!2776683 ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343))))))

(assert (=> d!2134677 (forall!15807 (exprs!6499 (h!72470 zl!343)) lambda!382930)))

(assert (=> d!2134677 (= (generalisedConcat!2212 (exprs!6499 (h!72470 zl!343))) lt!2446951)))

(declare-fun b!6794051 () Bool)

(declare-fun head!13642 (List!66144) Regex!16615)

(assert (=> b!6794051 (= e!4100568 (= lt!2446951 (head!13642 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6794052 () Bool)

(assert (=> b!6794052 (= e!4100566 e!4100564)))

(declare-fun c!1262907 () Bool)

(assert (=> b!6794052 (= c!1262907 (isEmpty!38397 (exprs!6499 (h!72470 zl!343))))))

(declare-fun b!6794053 () Bool)

(assert (=> b!6794053 (= e!4100567 (isEmpty!38397 (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6794054 () Bool)

(declare-fun isEmptyExpr!1973 (Regex!16615) Bool)

(assert (=> b!6794054 (= e!4100564 (isEmptyExpr!1973 lt!2446951))))

(declare-fun b!6794055 () Bool)

(assert (=> b!6794055 (= e!4100569 (h!72468 (exprs!6499 (h!72470 zl!343))))))

(assert (= (and d!2134677 res!2776683) b!6794053))

(assert (= (and d!2134677 c!1262909) b!6794055))

(assert (= (and d!2134677 (not c!1262909)) b!6794049))

(assert (= (and b!6794049 c!1262908) b!6794046))

(assert (= (and b!6794049 (not c!1262908)) b!6794048))

(assert (= (and d!2134677 res!2776684) b!6794052))

(assert (= (and b!6794052 c!1262907) b!6794054))

(assert (= (and b!6794052 (not c!1262907)) b!6794047))

(assert (= (and b!6794047 c!1262906) b!6794051))

(assert (= (and b!6794047 (not c!1262906)) b!6794050))

(declare-fun m!7541160 () Bool)

(assert (=> b!6794053 m!7541160))

(declare-fun m!7541162 () Bool)

(assert (=> b!6794047 m!7541162))

(assert (=> b!6794047 m!7541162))

(declare-fun m!7541164 () Bool)

(assert (=> b!6794047 m!7541164))

(declare-fun m!7541166 () Bool)

(assert (=> b!6794046 m!7541166))

(declare-fun m!7541168 () Bool)

(assert (=> b!6794051 m!7541168))

(declare-fun m!7541170 () Bool)

(assert (=> b!6794050 m!7541170))

(declare-fun m!7541172 () Bool)

(assert (=> d!2134677 m!7541172))

(declare-fun m!7541174 () Bool)

(assert (=> d!2134677 m!7541174))

(declare-fun m!7541176 () Bool)

(assert (=> b!6794054 m!7541176))

(declare-fun m!7541178 () Bool)

(assert (=> b!6794052 m!7541178))

(assert (=> b!6793706 d!2134677))

(declare-fun bs!1810352 () Bool)

(declare-fun d!2134689 () Bool)

(assert (= bs!1810352 (and d!2134689 b!6793734)))

(declare-fun lambda!382932 () Int)

(assert (=> bs!1810352 (= lambda!382932 lambda!382889)))

(declare-fun bs!1810353 () Bool)

(assert (= bs!1810353 (and d!2134689 d!2134675)))

(assert (=> bs!1810353 (= lambda!382932 lambda!382921)))

(declare-fun bs!1810354 () Bool)

(assert (= bs!1810354 (and d!2134689 d!2134677)))

(assert (=> bs!1810354 (= lambda!382932 lambda!382930)))

(assert (=> d!2134689 (= (inv!84784 lt!2446885) (forall!15807 (exprs!6499 lt!2446885) lambda!382932))))

(declare-fun bs!1810355 () Bool)

(assert (= bs!1810355 d!2134689))

(declare-fun m!7541184 () Bool)

(assert (=> bs!1810355 m!7541184))

(assert (=> b!6793734 d!2134689))

(declare-fun d!2134693 () Bool)

(declare-fun dynLambda!26355 (Int Context!11998) Context!11998)

(assert (=> d!2134693 (= (map!15083 lt!2446905 lambda!382888) (store ((as const (Array Context!11998 Bool)) false) (dynLambda!26355 lambda!382888 lt!2446891) true))))

(declare-fun lt!2446954 () Unit!159921)

(declare-fun choose!50623 ((InoxSet Context!11998) Context!11998 Int) Unit!159921)

(assert (=> d!2134693 (= lt!2446954 (choose!50623 lt!2446905 lt!2446891 lambda!382888))))

(assert (=> d!2134693 (= lt!2446905 (store ((as const (Array Context!11998 Bool)) false) lt!2446891 true))))

(assert (=> d!2134693 (= (lemmaMapOnSingletonSet!250 lt!2446905 lt!2446891 lambda!382888) lt!2446954)))

(declare-fun b_lambda!255941 () Bool)

(assert (=> (not b_lambda!255941) (not d!2134693)))

(declare-fun bs!1810356 () Bool)

(assert (= bs!1810356 d!2134693))

(declare-fun m!7541188 () Bool)

(assert (=> bs!1810356 m!7541188))

(assert (=> bs!1810356 m!7540876))

(assert (=> bs!1810356 m!7540924))

(assert (=> bs!1810356 m!7541188))

(declare-fun m!7541190 () Bool)

(assert (=> bs!1810356 m!7541190))

(declare-fun m!7541192 () Bool)

(assert (=> bs!1810356 m!7541192))

(assert (=> b!6793734 d!2134693))

(declare-fun d!2134695 () Bool)

(assert (=> d!2134695 (forall!15807 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904) lambda!382889)))

(declare-fun lt!2446959 () Unit!159921)

(declare-fun choose!50624 (List!66144 List!66144 Int) Unit!159921)

(assert (=> d!2134695 (= lt!2446959 (choose!50624 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904 lambda!382889))))

(assert (=> d!2134695 (forall!15807 (Cons!66020 (reg!16944 r!7292) Nil!66020) lambda!382889)))

(assert (=> d!2134695 (= (lemmaConcatPreservesForall!444 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904 lambda!382889) lt!2446959)))

(declare-fun bs!1810357 () Bool)

(assert (= bs!1810357 d!2134695))

(assert (=> bs!1810357 m!7540926))

(assert (=> bs!1810357 m!7540926))

(declare-fun m!7541194 () Bool)

(assert (=> bs!1810357 m!7541194))

(declare-fun m!7541196 () Bool)

(assert (=> bs!1810357 m!7541196))

(declare-fun m!7541198 () Bool)

(assert (=> bs!1810357 m!7541198))

(assert (=> b!6793734 d!2134695))

(declare-fun d!2134697 () Bool)

(declare-fun choose!50625 ((InoxSet Context!11998) Int) (InoxSet Context!11998))

(assert (=> d!2134697 (= (map!15083 lt!2446905 lambda!382888) (choose!50625 lt!2446905 lambda!382888))))

(declare-fun bs!1810358 () Bool)

(assert (= bs!1810358 d!2134697))

(declare-fun m!7541200 () Bool)

(assert (=> bs!1810358 m!7541200))

(assert (=> b!6793734 d!2134697))

(declare-fun b!6794125 () Bool)

(declare-fun lt!2446966 () List!66144)

(declare-fun e!4100605 () Bool)

(assert (=> b!6794125 (= e!4100605 (or (not (= lt!2446904 Nil!66020)) (= lt!2446966 (Cons!66020 (reg!16944 r!7292) Nil!66020))))))

(declare-fun b!6794124 () Bool)

(declare-fun res!2776715 () Bool)

(assert (=> b!6794124 (=> (not res!2776715) (not e!4100605))))

(declare-fun size!40653 (List!66144) Int)

(assert (=> b!6794124 (= res!2776715 (= (size!40653 lt!2446966) (+ (size!40653 (Cons!66020 (reg!16944 r!7292) Nil!66020)) (size!40653 lt!2446904))))))

(declare-fun b!6794123 () Bool)

(declare-fun e!4100604 () List!66144)

(assert (=> b!6794123 (= e!4100604 (Cons!66020 (h!72468 (Cons!66020 (reg!16944 r!7292) Nil!66020)) (++!14775 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)) lt!2446904)))))

(declare-fun d!2134699 () Bool)

(assert (=> d!2134699 e!4100605))

(declare-fun res!2776716 () Bool)

(assert (=> d!2134699 (=> (not res!2776716) (not e!4100605))))

(declare-fun content!12880 (List!66144) (InoxSet Regex!16615))

(assert (=> d!2134699 (= res!2776716 (= (content!12880 lt!2446966) ((_ map or) (content!12880 (Cons!66020 (reg!16944 r!7292) Nil!66020)) (content!12880 lt!2446904))))))

(assert (=> d!2134699 (= lt!2446966 e!4100604)))

(declare-fun c!1262928 () Bool)

(assert (=> d!2134699 (= c!1262928 ((_ is Nil!66020) (Cons!66020 (reg!16944 r!7292) Nil!66020)))))

(assert (=> d!2134699 (= (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904) lt!2446966)))

(declare-fun b!6794122 () Bool)

(assert (=> b!6794122 (= e!4100604 lt!2446904)))

(assert (= (and d!2134699 c!1262928) b!6794122))

(assert (= (and d!2134699 (not c!1262928)) b!6794123))

(assert (= (and d!2134699 res!2776716) b!6794124))

(assert (= (and b!6794124 res!2776715) b!6794125))

(declare-fun m!7541230 () Bool)

(assert (=> b!6794124 m!7541230))

(declare-fun m!7541232 () Bool)

(assert (=> b!6794124 m!7541232))

(declare-fun m!7541234 () Bool)

(assert (=> b!6794124 m!7541234))

(declare-fun m!7541236 () Bool)

(assert (=> b!6794123 m!7541236))

(declare-fun m!7541238 () Bool)

(assert (=> d!2134699 m!7541238))

(declare-fun m!7541240 () Bool)

(assert (=> d!2134699 m!7541240))

(declare-fun m!7541242 () Bool)

(assert (=> d!2134699 m!7541242))

(assert (=> b!6793734 d!2134699))

(declare-fun d!2134711 () Bool)

(declare-fun choose!50626 ((InoxSet Context!11998) Int) (InoxSet Context!11998))

(assert (=> d!2134711 (= (flatMap!2096 z!1189 lambda!382887) (choose!50626 z!1189 lambda!382887))))

(declare-fun bs!1810366 () Bool)

(assert (= bs!1810366 d!2134711))

(declare-fun m!7541248 () Bool)

(assert (=> bs!1810366 m!7541248))

(assert (=> b!6793705 d!2134711))

(declare-fun call!617021 () (InoxSet Context!11998))

(declare-fun b!6794126 () Bool)

(declare-fun e!4100608 () (InoxSet Context!11998))

(assert (=> b!6794126 (= e!4100608 ((_ map or) call!617021 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (h!72469 s!2326))))))

(declare-fun b!6794127 () Bool)

(declare-fun e!4100607 () Bool)

(assert (=> b!6794127 (= e!4100607 (nullable!6594 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6794128 () Bool)

(declare-fun e!4100606 () (InoxSet Context!11998))

(assert (=> b!6794128 (= e!4100608 e!4100606)))

(declare-fun c!1262929 () Bool)

(assert (=> b!6794128 (= c!1262929 ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343))))))

(declare-fun b!6794129 () Bool)

(assert (=> b!6794129 (= e!4100606 call!617021)))

(declare-fun b!6794130 () Bool)

(assert (=> b!6794130 (= e!4100606 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617016 () Bool)

(assert (=> bm!617016 (= call!617021 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (h!72470 zl!343))) (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (h!72469 s!2326)))))

(declare-fun d!2134715 () Bool)

(declare-fun c!1262930 () Bool)

(assert (=> d!2134715 (= c!1262930 e!4100607)))

(declare-fun res!2776717 () Bool)

(assert (=> d!2134715 (=> (not res!2776717) (not e!4100607))))

(assert (=> d!2134715 (= res!2776717 ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343))))))

(assert (=> d!2134715 (= (derivationStepZipperUp!1769 (h!72470 zl!343) (h!72469 s!2326)) e!4100608)))

(assert (= (and d!2134715 res!2776717) b!6794127))

(assert (= (and d!2134715 c!1262930) b!6794126))

(assert (= (and d!2134715 (not c!1262930)) b!6794128))

(assert (= (and b!6794128 c!1262929) b!6794129))

(assert (= (and b!6794128 (not c!1262929)) b!6794130))

(assert (= (or b!6794126 b!6794129) bm!617016))

(declare-fun m!7541260 () Bool)

(assert (=> b!6794126 m!7541260))

(declare-fun m!7541262 () Bool)

(assert (=> b!6794127 m!7541262))

(declare-fun m!7541264 () Bool)

(assert (=> bm!617016 m!7541264))

(assert (=> b!6793705 d!2134715))

(declare-fun d!2134723 () Bool)

(declare-fun dynLambda!26356 (Int Context!11998) (InoxSet Context!11998))

(assert (=> d!2134723 (= (flatMap!2096 z!1189 lambda!382887) (dynLambda!26356 lambda!382887 (h!72470 zl!343)))))

(declare-fun lt!2446975 () Unit!159921)

(declare-fun choose!50627 ((InoxSet Context!11998) Context!11998 Int) Unit!159921)

(assert (=> d!2134723 (= lt!2446975 (choose!50627 z!1189 (h!72470 zl!343) lambda!382887))))

(assert (=> d!2134723 (= z!1189 (store ((as const (Array Context!11998 Bool)) false) (h!72470 zl!343) true))))

(assert (=> d!2134723 (= (lemmaFlatMapOnSingletonSet!1622 z!1189 (h!72470 zl!343) lambda!382887) lt!2446975)))

(declare-fun b_lambda!255951 () Bool)

(assert (=> (not b_lambda!255951) (not d!2134723)))

(declare-fun bs!1810378 () Bool)

(assert (= bs!1810378 d!2134723))

(assert (=> bs!1810378 m!7540936))

(declare-fun m!7541298 () Bool)

(assert (=> bs!1810378 m!7541298))

(declare-fun m!7541300 () Bool)

(assert (=> bs!1810378 m!7541300))

(declare-fun m!7541302 () Bool)

(assert (=> bs!1810378 m!7541302))

(assert (=> b!6793705 d!2134723))

(declare-fun b!6794198 () Bool)

(declare-fun e!4100654 () Bool)

(declare-fun call!617032 () Bool)

(assert (=> b!6794198 (= e!4100654 call!617032)))

(declare-fun b!6794199 () Bool)

(declare-fun e!4100655 () Bool)

(declare-fun call!617033 () Bool)

(assert (=> b!6794199 (= e!4100655 call!617033)))

(declare-fun b!6794200 () Bool)

(declare-fun e!4100653 () Bool)

(assert (=> b!6794200 (= e!4100653 e!4100655)))

(declare-fun res!2776737 () Bool)

(assert (=> b!6794200 (=> (not res!2776737) (not e!4100655))))

(declare-fun call!617031 () Bool)

(assert (=> b!6794200 (= res!2776737 call!617031)))

(declare-fun b!6794201 () Bool)

(declare-fun res!2776739 () Bool)

(declare-fun e!4100652 () Bool)

(assert (=> b!6794201 (=> (not res!2776739) (not e!4100652))))

(assert (=> b!6794201 (= res!2776739 call!617031)))

(declare-fun e!4100657 () Bool)

(assert (=> b!6794201 (= e!4100657 e!4100652)))

(declare-fun b!6794202 () Bool)

(declare-fun e!4100656 () Bool)

(assert (=> b!6794202 (= e!4100656 e!4100657)))

(declare-fun c!1262956 () Bool)

(assert (=> b!6794202 (= c!1262956 ((_ is Union!16615) r!7292))))

(declare-fun b!6794203 () Bool)

(assert (=> b!6794203 (= e!4100652 call!617033)))

(declare-fun b!6794204 () Bool)

(assert (=> b!6794204 (= e!4100656 e!4100654)))

(declare-fun res!2776740 () Bool)

(assert (=> b!6794204 (= res!2776740 (not (nullable!6594 (reg!16944 r!7292))))))

(assert (=> b!6794204 (=> (not res!2776740) (not e!4100654))))

(declare-fun d!2134741 () Bool)

(declare-fun res!2776738 () Bool)

(declare-fun e!4100658 () Bool)

(assert (=> d!2134741 (=> res!2776738 e!4100658)))

(assert (=> d!2134741 (= res!2776738 ((_ is ElementMatch!16615) r!7292))))

(assert (=> d!2134741 (= (validRegex!8351 r!7292) e!4100658)))

(declare-fun c!1262955 () Bool)

(declare-fun bm!617026 () Bool)

(assert (=> bm!617026 (= call!617032 (validRegex!8351 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(declare-fun b!6794205 () Bool)

(assert (=> b!6794205 (= e!4100658 e!4100656)))

(assert (=> b!6794205 (= c!1262955 ((_ is Star!16615) r!7292))))

(declare-fun bm!617027 () Bool)

(assert (=> bm!617027 (= call!617031 call!617032)))

(declare-fun b!6794206 () Bool)

(declare-fun res!2776741 () Bool)

(assert (=> b!6794206 (=> res!2776741 e!4100653)))

(assert (=> b!6794206 (= res!2776741 (not ((_ is Concat!25460) r!7292)))))

(assert (=> b!6794206 (= e!4100657 e!4100653)))

(declare-fun bm!617028 () Bool)

(assert (=> bm!617028 (= call!617033 (validRegex!8351 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))

(assert (= (and d!2134741 (not res!2776738)) b!6794205))

(assert (= (and b!6794205 c!1262955) b!6794204))

(assert (= (and b!6794205 (not c!1262955)) b!6794202))

(assert (= (and b!6794204 res!2776740) b!6794198))

(assert (= (and b!6794202 c!1262956) b!6794201))

(assert (= (and b!6794202 (not c!1262956)) b!6794206))

(assert (= (and b!6794201 res!2776739) b!6794203))

(assert (= (and b!6794206 (not res!2776741)) b!6794200))

(assert (= (and b!6794200 res!2776737) b!6794199))

(assert (= (or b!6794203 b!6794199) bm!617028))

(assert (= (or b!6794201 b!6794200) bm!617027))

(assert (= (or b!6794198 bm!617027) bm!617026))

(declare-fun m!7541324 () Bool)

(assert (=> b!6794204 m!7541324))

(declare-fun m!7541326 () Bool)

(assert (=> bm!617026 m!7541326))

(declare-fun m!7541328 () Bool)

(assert (=> bm!617028 m!7541328))

(assert (=> start!657528 d!2134741))

(declare-fun d!2134745 () Bool)

(declare-fun lt!2446985 () Regex!16615)

(assert (=> d!2134745 (validRegex!8351 lt!2446985)))

(assert (=> d!2134745 (= lt!2446985 (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))

(assert (=> d!2134745 (= (unfocusZipper!2357 (Cons!66022 lt!2446908 Nil!66022)) lt!2446985)))

(declare-fun bs!1810398 () Bool)

(assert (= bs!1810398 d!2134745))

(declare-fun m!7541340 () Bool)

(assert (=> bs!1810398 m!7541340))

(declare-fun m!7541342 () Bool)

(assert (=> bs!1810398 m!7541342))

(assert (=> bs!1810398 m!7541342))

(declare-fun m!7541344 () Bool)

(assert (=> bs!1810398 m!7541344))

(assert (=> b!6793722 d!2134745))

(declare-fun d!2134751 () Bool)

(declare-fun isEmpty!38398 (Option!16502) Bool)

(assert (=> d!2134751 (= (isDefined!13205 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326)) (not (isEmpty!38398 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326))))))

(declare-fun bs!1810405 () Bool)

(assert (= bs!1810405 d!2134751))

(assert (=> bs!1810405 m!7540902))

(declare-fun m!7541346 () Bool)

(assert (=> bs!1810405 m!7541346))

(assert (=> b!6793723 d!2134751))

(declare-fun bs!1810412 () Bool)

(declare-fun d!2134753 () Bool)

(assert (= bs!1810412 (and d!2134753 b!6793723)))

(declare-fun lambda!382947 () Int)

(assert (=> bs!1810412 (= lambda!382947 lambda!382884)))

(assert (=> bs!1810412 (not (= lambda!382947 lambda!382885))))

(assert (=> bs!1810412 (not (= lambda!382947 lambda!382886))))

(assert (=> d!2134753 true))

(assert (=> d!2134753 true))

(assert (=> d!2134753 true))

(declare-fun lambda!382948 () Int)

(assert (=> bs!1810412 (not (= lambda!382948 lambda!382884))))

(assert (=> bs!1810412 (not (= lambda!382948 lambda!382885))))

(assert (=> bs!1810412 (= lambda!382948 lambda!382886)))

(declare-fun bs!1810413 () Bool)

(assert (= bs!1810413 d!2134753))

(assert (=> bs!1810413 (not (= lambda!382948 lambda!382947))))

(assert (=> d!2134753 true))

(assert (=> d!2134753 true))

(assert (=> d!2134753 true))

(assert (=> d!2134753 (= (Exists!3683 lambda!382947) (Exists!3683 lambda!382948))))

(declare-fun lt!2446991 () Unit!159921)

(declare-fun choose!50628 (Regex!16615 Regex!16615 List!66145) Unit!159921)

(assert (=> d!2134753 (= lt!2446991 (choose!50628 (reg!16944 r!7292) r!7292 s!2326))))

(assert (=> d!2134753 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2134753 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2210 (reg!16944 r!7292) r!7292 s!2326) lt!2446991)))

(declare-fun m!7541370 () Bool)

(assert (=> bs!1810413 m!7541370))

(declare-fun m!7541372 () Bool)

(assert (=> bs!1810413 m!7541372))

(declare-fun m!7541374 () Bool)

(assert (=> bs!1810413 m!7541374))

(declare-fun m!7541376 () Bool)

(assert (=> bs!1810413 m!7541376))

(assert (=> b!6793723 d!2134753))

(declare-fun bs!1810414 () Bool)

(declare-fun d!2134769 () Bool)

(assert (= bs!1810414 (and d!2134769 b!6793723)))

(declare-fun lambda!382953 () Int)

(assert (=> bs!1810414 (not (= lambda!382953 lambda!382885))))

(assert (=> bs!1810414 (not (= lambda!382953 lambda!382886))))

(declare-fun bs!1810415 () Bool)

(assert (= bs!1810415 (and d!2134769 d!2134753)))

(assert (=> bs!1810415 (not (= lambda!382953 lambda!382948))))

(assert (=> bs!1810414 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!382953 lambda!382884))))

(assert (=> bs!1810415 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!382953 lambda!382947))))

(assert (=> d!2134769 true))

(assert (=> d!2134769 true))

(declare-fun lambda!382954 () Int)

(assert (=> bs!1810414 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!382954 lambda!382885))))

(declare-fun bs!1810416 () Bool)

(assert (= bs!1810416 d!2134769))

(assert (=> bs!1810416 (not (= lambda!382954 lambda!382953))))

(assert (=> bs!1810414 (not (= lambda!382954 lambda!382886))))

(assert (=> bs!1810415 (not (= lambda!382954 lambda!382948))))

(assert (=> bs!1810414 (not (= lambda!382954 lambda!382884))))

(assert (=> bs!1810415 (not (= lambda!382954 lambda!382947))))

(assert (=> d!2134769 true))

(assert (=> d!2134769 true))

(assert (=> d!2134769 (= (Exists!3683 lambda!382953) (Exists!3683 lambda!382954))))

(declare-fun lt!2446994 () Unit!159921)

(declare-fun choose!50629 (Regex!16615 List!66145) Unit!159921)

(assert (=> d!2134769 (= lt!2446994 (choose!50629 (reg!16944 r!7292) s!2326))))

(assert (=> d!2134769 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2134769 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!774 (reg!16944 r!7292) s!2326) lt!2446994)))

(declare-fun m!7541378 () Bool)

(assert (=> bs!1810416 m!7541378))

(declare-fun m!7541380 () Bool)

(assert (=> bs!1810416 m!7541380))

(declare-fun m!7541382 () Bool)

(assert (=> bs!1810416 m!7541382))

(assert (=> bs!1810416 m!7541376))

(assert (=> b!6793723 d!2134769))

(declare-fun d!2134771 () Bool)

(declare-fun choose!50630 (Int) Bool)

(assert (=> d!2134771 (= (Exists!3683 lambda!382885) (choose!50630 lambda!382885))))

(declare-fun bs!1810417 () Bool)

(assert (= bs!1810417 d!2134771))

(declare-fun m!7541384 () Bool)

(assert (=> bs!1810417 m!7541384))

(assert (=> b!6793723 d!2134771))

(declare-fun d!2134773 () Bool)

(assert (=> d!2134773 (= (Exists!3683 lambda!382886) (choose!50630 lambda!382886))))

(declare-fun bs!1810418 () Bool)

(assert (= bs!1810418 d!2134773))

(declare-fun m!7541386 () Bool)

(assert (=> bs!1810418 m!7541386))

(assert (=> b!6793723 d!2134773))

(declare-fun d!2134775 () Bool)

(assert (=> d!2134775 (= (isEmpty!38394 s!2326) ((_ is Nil!66021) s!2326))))

(assert (=> b!6793723 d!2134775))

(declare-fun d!2134777 () Bool)

(assert (=> d!2134777 (= (Exists!3683 lambda!382884) (choose!50630 lambda!382884))))

(declare-fun bs!1810419 () Bool)

(assert (= bs!1810419 d!2134777))

(declare-fun m!7541388 () Bool)

(assert (=> bs!1810419 m!7541388))

(assert (=> b!6793723 d!2134777))

(declare-fun d!2134779 () Bool)

(declare-fun e!4100717 () Bool)

(assert (=> d!2134779 e!4100717))

(declare-fun res!2776785 () Bool)

(assert (=> d!2134779 (=> res!2776785 e!4100717)))

(declare-fun e!4100716 () Bool)

(assert (=> d!2134779 (= res!2776785 e!4100716)))

(declare-fun res!2776783 () Bool)

(assert (=> d!2134779 (=> (not res!2776783) (not e!4100716))))

(declare-fun lt!2447002 () Option!16502)

(assert (=> d!2134779 (= res!2776783 (isDefined!13205 lt!2447002))))

(declare-fun e!4100718 () Option!16502)

(assert (=> d!2134779 (= lt!2447002 e!4100718)))

(declare-fun c!1262969 () Bool)

(declare-fun e!4100715 () Bool)

(assert (=> d!2134779 (= c!1262969 e!4100715)))

(declare-fun res!2776781 () Bool)

(assert (=> d!2134779 (=> (not res!2776781) (not e!4100715))))

(assert (=> d!2134779 (= res!2776781 (matchR!8798 (reg!16944 r!7292) Nil!66021))))

(assert (=> d!2134779 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2134779 (= (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326) lt!2447002)))

(declare-fun b!6794324 () Bool)

(declare-fun e!4100719 () Option!16502)

(assert (=> b!6794324 (= e!4100719 None!16501)))

(declare-fun b!6794325 () Bool)

(declare-fun ++!14777 (List!66145 List!66145) List!66145)

(declare-fun get!22992 (Option!16502) tuple2!67180)

(assert (=> b!6794325 (= e!4100716 (= (++!14777 (_1!36893 (get!22992 lt!2447002)) (_2!36893 (get!22992 lt!2447002))) s!2326))))

(declare-fun b!6794326 () Bool)

(declare-fun lt!2447003 () Unit!159921)

(declare-fun lt!2447001 () Unit!159921)

(assert (=> b!6794326 (= lt!2447003 lt!2447001)))

(assert (=> b!6794326 (= (++!14777 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2736 (List!66145 C!33500 List!66145 List!66145) Unit!159921)

(assert (=> b!6794326 (= lt!2447001 (lemmaMoveElementToOtherListKeepsConcatEq!2736 Nil!66021 (h!72469 s!2326) (t!379870 s!2326) s!2326))))

(assert (=> b!6794326 (= e!4100719 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326) s!2326))))

(declare-fun b!6794327 () Bool)

(declare-fun res!2776784 () Bool)

(assert (=> b!6794327 (=> (not res!2776784) (not e!4100716))))

(assert (=> b!6794327 (= res!2776784 (matchR!8798 r!7292 (_2!36893 (get!22992 lt!2447002))))))

(declare-fun b!6794328 () Bool)

(assert (=> b!6794328 (= e!4100717 (not (isDefined!13205 lt!2447002)))))

(declare-fun b!6794329 () Bool)

(assert (=> b!6794329 (= e!4100718 (Some!16501 (tuple2!67181 Nil!66021 s!2326)))))

(declare-fun b!6794330 () Bool)

(assert (=> b!6794330 (= e!4100718 e!4100719)))

(declare-fun c!1262970 () Bool)

(assert (=> b!6794330 (= c!1262970 ((_ is Nil!66021) s!2326))))

(declare-fun b!6794331 () Bool)

(assert (=> b!6794331 (= e!4100715 (matchR!8798 r!7292 s!2326))))

(declare-fun b!6794332 () Bool)

(declare-fun res!2776782 () Bool)

(assert (=> b!6794332 (=> (not res!2776782) (not e!4100716))))

(assert (=> b!6794332 (= res!2776782 (matchR!8798 (reg!16944 r!7292) (_1!36893 (get!22992 lt!2447002))))))

(assert (= (and d!2134779 res!2776781) b!6794331))

(assert (= (and d!2134779 c!1262969) b!6794329))

(assert (= (and d!2134779 (not c!1262969)) b!6794330))

(assert (= (and b!6794330 c!1262970) b!6794324))

(assert (= (and b!6794330 (not c!1262970)) b!6794326))

(assert (= (and d!2134779 res!2776783) b!6794332))

(assert (= (and b!6794332 res!2776782) b!6794327))

(assert (= (and b!6794327 res!2776784) b!6794325))

(assert (= (and d!2134779 (not res!2776785)) b!6794328))

(declare-fun m!7541390 () Bool)

(assert (=> b!6794327 m!7541390))

(declare-fun m!7541392 () Bool)

(assert (=> b!6794327 m!7541392))

(assert (=> b!6794332 m!7541390))

(declare-fun m!7541394 () Bool)

(assert (=> b!6794332 m!7541394))

(declare-fun m!7541396 () Bool)

(assert (=> b!6794328 m!7541396))

(assert (=> b!6794331 m!7540842))

(assert (=> b!6794325 m!7541390))

(declare-fun m!7541398 () Bool)

(assert (=> b!6794325 m!7541398))

(declare-fun m!7541400 () Bool)

(assert (=> b!6794326 m!7541400))

(assert (=> b!6794326 m!7541400))

(declare-fun m!7541402 () Bool)

(assert (=> b!6794326 m!7541402))

(declare-fun m!7541404 () Bool)

(assert (=> b!6794326 m!7541404))

(assert (=> b!6794326 m!7541400))

(declare-fun m!7541406 () Bool)

(assert (=> b!6794326 m!7541406))

(assert (=> d!2134779 m!7541396))

(declare-fun m!7541408 () Bool)

(assert (=> d!2134779 m!7541408))

(assert (=> d!2134779 m!7541376))

(assert (=> b!6793723 d!2134779))

(declare-fun bs!1810420 () Bool)

(declare-fun d!2134781 () Bool)

(assert (= bs!1810420 (and d!2134781 d!2134769)))

(declare-fun lambda!382957 () Int)

(assert (=> bs!1810420 (not (= lambda!382957 lambda!382954))))

(declare-fun bs!1810421 () Bool)

(assert (= bs!1810421 (and d!2134781 b!6793723)))

(assert (=> bs!1810421 (not (= lambda!382957 lambda!382885))))

(assert (=> bs!1810420 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!382957 lambda!382953))))

(assert (=> bs!1810421 (not (= lambda!382957 lambda!382886))))

(declare-fun bs!1810422 () Bool)

(assert (= bs!1810422 (and d!2134781 d!2134753)))

(assert (=> bs!1810422 (not (= lambda!382957 lambda!382948))))

(assert (=> bs!1810421 (= lambda!382957 lambda!382884)))

(assert (=> bs!1810422 (= lambda!382957 lambda!382947)))

(assert (=> d!2134781 true))

(assert (=> d!2134781 true))

(assert (=> d!2134781 true))

(assert (=> d!2134781 (= (isDefined!13205 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326)) (Exists!3683 lambda!382957))))

(declare-fun lt!2447006 () Unit!159921)

(declare-fun choose!50631 (Regex!16615 Regex!16615 List!66145) Unit!159921)

(assert (=> d!2134781 (= lt!2447006 (choose!50631 (reg!16944 r!7292) r!7292 s!2326))))

(assert (=> d!2134781 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2134781 (= (lemmaFindConcatSeparationEquivalentToExists!2680 (reg!16944 r!7292) r!7292 s!2326) lt!2447006)))

(declare-fun bs!1810423 () Bool)

(assert (= bs!1810423 d!2134781))

(assert (=> bs!1810423 m!7540902))

(assert (=> bs!1810423 m!7540906))

(declare-fun m!7541410 () Bool)

(assert (=> bs!1810423 m!7541410))

(assert (=> bs!1810423 m!7540902))

(assert (=> bs!1810423 m!7541376))

(declare-fun m!7541412 () Bool)

(assert (=> bs!1810423 m!7541412))

(assert (=> b!6793723 d!2134781))

(declare-fun bs!1810424 () Bool)

(declare-fun d!2134783 () Bool)

(assert (= bs!1810424 (and d!2134783 b!6793734)))

(declare-fun lambda!382960 () Int)

(assert (=> bs!1810424 (= lambda!382960 lambda!382889)))

(declare-fun bs!1810425 () Bool)

(assert (= bs!1810425 (and d!2134783 d!2134675)))

(assert (=> bs!1810425 (= lambda!382960 lambda!382921)))

(declare-fun bs!1810426 () Bool)

(assert (= bs!1810426 (and d!2134783 d!2134677)))

(assert (=> bs!1810426 (= lambda!382960 lambda!382930)))

(declare-fun bs!1810427 () Bool)

(assert (= bs!1810427 (and d!2134783 d!2134689)))

(assert (=> bs!1810427 (= lambda!382960 lambda!382932)))

(declare-fun b!6794357 () Bool)

(declare-fun e!4100737 () Bool)

(declare-fun e!4100738 () Bool)

(assert (=> b!6794357 (= e!4100737 e!4100738)))

(declare-fun c!1262982 () Bool)

(assert (=> b!6794357 (= c!1262982 (isEmpty!38397 (tail!12727 (unfocusZipperList!2036 zl!343))))))

(declare-fun b!6794358 () Bool)

(declare-fun lt!2447009 () Regex!16615)

(assert (=> b!6794358 (= e!4100738 (= lt!2447009 (head!13642 (unfocusZipperList!2036 zl!343))))))

(declare-fun b!6794359 () Bool)

(declare-fun e!4100736 () Regex!16615)

(assert (=> b!6794359 (= e!4100736 (h!72468 (unfocusZipperList!2036 zl!343)))))

(declare-fun b!6794360 () Bool)

(declare-fun e!4100735 () Bool)

(assert (=> b!6794360 (= e!4100735 e!4100737)))

(declare-fun c!1262979 () Bool)

(assert (=> b!6794360 (= c!1262979 (isEmpty!38397 (unfocusZipperList!2036 zl!343)))))

(assert (=> d!2134783 e!4100735))

(declare-fun res!2776794 () Bool)

(assert (=> d!2134783 (=> (not res!2776794) (not e!4100735))))

(assert (=> d!2134783 (= res!2776794 (validRegex!8351 lt!2447009))))

(assert (=> d!2134783 (= lt!2447009 e!4100736)))

(declare-fun c!1262981 () Bool)

(declare-fun e!4100739 () Bool)

(assert (=> d!2134783 (= c!1262981 e!4100739)))

(declare-fun res!2776795 () Bool)

(assert (=> d!2134783 (=> (not res!2776795) (not e!4100739))))

(assert (=> d!2134783 (= res!2776795 ((_ is Cons!66020) (unfocusZipperList!2036 zl!343)))))

(assert (=> d!2134783 (forall!15807 (unfocusZipperList!2036 zl!343) lambda!382960)))

(assert (=> d!2134783 (= (generalisedUnion!2459 (unfocusZipperList!2036 zl!343)) lt!2447009)))

(declare-fun b!6794361 () Bool)

(declare-fun e!4100734 () Regex!16615)

(assert (=> b!6794361 (= e!4100734 EmptyLang!16615)))

(declare-fun b!6794362 () Bool)

(declare-fun isUnion!1411 (Regex!16615) Bool)

(assert (=> b!6794362 (= e!4100738 (isUnion!1411 lt!2447009))))

(declare-fun b!6794363 () Bool)

(assert (=> b!6794363 (= e!4100736 e!4100734)))

(declare-fun c!1262980 () Bool)

(assert (=> b!6794363 (= c!1262980 ((_ is Cons!66020) (unfocusZipperList!2036 zl!343)))))

(declare-fun b!6794364 () Bool)

(declare-fun isEmptyLang!1981 (Regex!16615) Bool)

(assert (=> b!6794364 (= e!4100737 (isEmptyLang!1981 lt!2447009))))

(declare-fun b!6794365 () Bool)

(assert (=> b!6794365 (= e!4100734 (Union!16615 (h!72468 (unfocusZipperList!2036 zl!343)) (generalisedUnion!2459 (t!379869 (unfocusZipperList!2036 zl!343)))))))

(declare-fun b!6794366 () Bool)

(assert (=> b!6794366 (= e!4100739 (isEmpty!38397 (t!379869 (unfocusZipperList!2036 zl!343))))))

(assert (= (and d!2134783 res!2776795) b!6794366))

(assert (= (and d!2134783 c!1262981) b!6794359))

(assert (= (and d!2134783 (not c!1262981)) b!6794363))

(assert (= (and b!6794363 c!1262980) b!6794365))

(assert (= (and b!6794363 (not c!1262980)) b!6794361))

(assert (= (and d!2134783 res!2776794) b!6794360))

(assert (= (and b!6794360 c!1262979) b!6794364))

(assert (= (and b!6794360 (not c!1262979)) b!6794357))

(assert (= (and b!6794357 c!1262982) b!6794358))

(assert (= (and b!6794357 (not c!1262982)) b!6794362))

(assert (=> b!6794357 m!7540882))

(declare-fun m!7541414 () Bool)

(assert (=> b!6794357 m!7541414))

(assert (=> b!6794357 m!7541414))

(declare-fun m!7541416 () Bool)

(assert (=> b!6794357 m!7541416))

(declare-fun m!7541418 () Bool)

(assert (=> b!6794362 m!7541418))

(assert (=> b!6794358 m!7540882))

(declare-fun m!7541420 () Bool)

(assert (=> b!6794358 m!7541420))

(declare-fun m!7541422 () Bool)

(assert (=> b!6794366 m!7541422))

(assert (=> b!6794360 m!7540882))

(declare-fun m!7541424 () Bool)

(assert (=> b!6794360 m!7541424))

(declare-fun m!7541426 () Bool)

(assert (=> d!2134783 m!7541426))

(assert (=> d!2134783 m!7540882))

(declare-fun m!7541428 () Bool)

(assert (=> d!2134783 m!7541428))

(declare-fun m!7541430 () Bool)

(assert (=> b!6794364 m!7541430))

(declare-fun m!7541432 () Bool)

(assert (=> b!6794365 m!7541432))

(assert (=> b!6793714 d!2134783))

(declare-fun bs!1810428 () Bool)

(declare-fun d!2134785 () Bool)

(assert (= bs!1810428 (and d!2134785 b!6793734)))

(declare-fun lambda!382963 () Int)

(assert (=> bs!1810428 (= lambda!382963 lambda!382889)))

(declare-fun bs!1810429 () Bool)

(assert (= bs!1810429 (and d!2134785 d!2134677)))

(assert (=> bs!1810429 (= lambda!382963 lambda!382930)))

(declare-fun bs!1810430 () Bool)

(assert (= bs!1810430 (and d!2134785 d!2134689)))

(assert (=> bs!1810430 (= lambda!382963 lambda!382932)))

(declare-fun bs!1810431 () Bool)

(assert (= bs!1810431 (and d!2134785 d!2134783)))

(assert (=> bs!1810431 (= lambda!382963 lambda!382960)))

(declare-fun bs!1810432 () Bool)

(assert (= bs!1810432 (and d!2134785 d!2134675)))

(assert (=> bs!1810432 (= lambda!382963 lambda!382921)))

(declare-fun lt!2447012 () List!66144)

(assert (=> d!2134785 (forall!15807 lt!2447012 lambda!382963)))

(declare-fun e!4100742 () List!66144)

(assert (=> d!2134785 (= lt!2447012 e!4100742)))

(declare-fun c!1262985 () Bool)

(assert (=> d!2134785 (= c!1262985 ((_ is Cons!66022) zl!343))))

(assert (=> d!2134785 (= (unfocusZipperList!2036 zl!343) lt!2447012)))

(declare-fun b!6794371 () Bool)

(assert (=> b!6794371 (= e!4100742 (Cons!66020 (generalisedConcat!2212 (exprs!6499 (h!72470 zl!343))) (unfocusZipperList!2036 (t!379871 zl!343))))))

(declare-fun b!6794372 () Bool)

(assert (=> b!6794372 (= e!4100742 Nil!66020)))

(assert (= (and d!2134785 c!1262985) b!6794371))

(assert (= (and d!2134785 (not c!1262985)) b!6794372))

(declare-fun m!7541434 () Bool)

(assert (=> d!2134785 m!7541434))

(assert (=> b!6794371 m!7540838))

(declare-fun m!7541436 () Bool)

(assert (=> b!6794371 m!7541436))

(assert (=> b!6793714 d!2134785))

(declare-fun bs!1810433 () Bool)

(declare-fun d!2134787 () Bool)

(assert (= bs!1810433 (and d!2134787 b!6793705)))

(declare-fun lambda!382964 () Int)

(assert (=> bs!1810433 (= lambda!382964 lambda!382887)))

(declare-fun bs!1810434 () Bool)

(assert (= bs!1810434 (and d!2134787 d!2134657)))

(assert (=> bs!1810434 (= lambda!382964 lambda!382914)))

(declare-fun bs!1810435 () Bool)

(assert (= bs!1810435 (and d!2134787 d!2134673)))

(assert (=> bs!1810435 (= lambda!382964 lambda!382916)))

(assert (=> d!2134787 true))

(assert (=> d!2134787 (= (derivationStepZipper!2559 lt!2446892 (h!72469 s!2326)) (flatMap!2096 lt!2446892 lambda!382964))))

(declare-fun bs!1810436 () Bool)

(assert (= bs!1810436 d!2134787))

(declare-fun m!7541438 () Bool)

(assert (=> bs!1810436 m!7541438))

(assert (=> b!6793721 d!2134787))

(declare-fun d!2134789 () Bool)

(assert (=> d!2134789 (= (flatMap!2096 lt!2446892 lambda!382887) (choose!50626 lt!2446892 lambda!382887))))

(declare-fun bs!1810437 () Bool)

(assert (= bs!1810437 d!2134789))

(declare-fun m!7541440 () Bool)

(assert (=> bs!1810437 m!7541440))

(assert (=> b!6793721 d!2134789))

(declare-fun d!2134791 () Bool)

(assert (=> d!2134791 (= (flatMap!2096 lt!2446892 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446908))))

(declare-fun lt!2447013 () Unit!159921)

(assert (=> d!2134791 (= lt!2447013 (choose!50627 lt!2446892 lt!2446908 lambda!382887))))

(assert (=> d!2134791 (= lt!2446892 (store ((as const (Array Context!11998 Bool)) false) lt!2446908 true))))

(assert (=> d!2134791 (= (lemmaFlatMapOnSingletonSet!1622 lt!2446892 lt!2446908 lambda!382887) lt!2447013)))

(declare-fun b_lambda!255963 () Bool)

(assert (=> (not b_lambda!255963) (not d!2134791)))

(declare-fun bs!1810438 () Bool)

(assert (= bs!1810438 d!2134791))

(assert (=> bs!1810438 m!7540880))

(declare-fun m!7541442 () Bool)

(assert (=> bs!1810438 m!7541442))

(declare-fun m!7541444 () Bool)

(assert (=> bs!1810438 m!7541444))

(assert (=> bs!1810438 m!7540872))

(assert (=> b!6793721 d!2134791))

(declare-fun d!2134793 () Bool)

(assert (=> d!2134793 (= (flatMap!2096 lt!2446905 lambda!382887) (choose!50626 lt!2446905 lambda!382887))))

(declare-fun bs!1810439 () Bool)

(assert (= bs!1810439 d!2134793))

(declare-fun m!7541446 () Bool)

(assert (=> bs!1810439 m!7541446))

(assert (=> b!6793721 d!2134793))

(declare-fun e!4100745 () (InoxSet Context!11998))

(declare-fun call!617037 () (InoxSet Context!11998))

(declare-fun b!6794373 () Bool)

(assert (=> b!6794373 (= e!4100745 ((_ map or) call!617037 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (h!72469 s!2326))))))

(declare-fun b!6794374 () Bool)

(declare-fun e!4100744 () Bool)

(assert (=> b!6794374 (= e!4100744 (nullable!6594 (h!72468 (exprs!6499 lt!2446908))))))

(declare-fun b!6794375 () Bool)

(declare-fun e!4100743 () (InoxSet Context!11998))

(assert (=> b!6794375 (= e!4100745 e!4100743)))

(declare-fun c!1262986 () Bool)

(assert (=> b!6794375 (= c!1262986 ((_ is Cons!66020) (exprs!6499 lt!2446908)))))

(declare-fun b!6794376 () Bool)

(assert (=> b!6794376 (= e!4100743 call!617037)))

(declare-fun b!6794377 () Bool)

(assert (=> b!6794377 (= e!4100743 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617032 () Bool)

(assert (=> bm!617032 (= call!617037 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446908)) (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (h!72469 s!2326)))))

(declare-fun d!2134795 () Bool)

(declare-fun c!1262987 () Bool)

(assert (=> d!2134795 (= c!1262987 e!4100744)))

(declare-fun res!2776796 () Bool)

(assert (=> d!2134795 (=> (not res!2776796) (not e!4100744))))

(assert (=> d!2134795 (= res!2776796 ((_ is Cons!66020) (exprs!6499 lt!2446908)))))

(assert (=> d!2134795 (= (derivationStepZipperUp!1769 lt!2446908 (h!72469 s!2326)) e!4100745)))

(assert (= (and d!2134795 res!2776796) b!6794374))

(assert (= (and d!2134795 c!1262987) b!6794373))

(assert (= (and d!2134795 (not c!1262987)) b!6794375))

(assert (= (and b!6794375 c!1262986) b!6794376))

(assert (= (and b!6794375 (not c!1262986)) b!6794377))

(assert (= (or b!6794373 b!6794376) bm!617032))

(declare-fun m!7541448 () Bool)

(assert (=> b!6794373 m!7541448))

(declare-fun m!7541450 () Bool)

(assert (=> b!6794374 m!7541450))

(declare-fun m!7541452 () Bool)

(assert (=> bm!617032 m!7541452))

(assert (=> b!6793721 d!2134795))

(declare-fun e!4100748 () (InoxSet Context!11998))

(declare-fun b!6794378 () Bool)

(declare-fun call!617038 () (InoxSet Context!11998))

(assert (=> b!6794378 (= e!4100748 ((_ map or) call!617038 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (h!72469 s!2326))))))

(declare-fun b!6794379 () Bool)

(declare-fun e!4100747 () Bool)

(assert (=> b!6794379 (= e!4100747 (nullable!6594 (h!72468 (exprs!6499 lt!2446891))))))

(declare-fun b!6794380 () Bool)

(declare-fun e!4100746 () (InoxSet Context!11998))

(assert (=> b!6794380 (= e!4100748 e!4100746)))

(declare-fun c!1262988 () Bool)

(assert (=> b!6794380 (= c!1262988 ((_ is Cons!66020) (exprs!6499 lt!2446891)))))

(declare-fun b!6794381 () Bool)

(assert (=> b!6794381 (= e!4100746 call!617038)))

(declare-fun b!6794382 () Bool)

(assert (=> b!6794382 (= e!4100746 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617033 () Bool)

(assert (=> bm!617033 (= call!617038 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446891)) (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (h!72469 s!2326)))))

(declare-fun d!2134797 () Bool)

(declare-fun c!1262989 () Bool)

(assert (=> d!2134797 (= c!1262989 e!4100747)))

(declare-fun res!2776797 () Bool)

(assert (=> d!2134797 (=> (not res!2776797) (not e!4100747))))

(assert (=> d!2134797 (= res!2776797 ((_ is Cons!66020) (exprs!6499 lt!2446891)))))

(assert (=> d!2134797 (= (derivationStepZipperUp!1769 lt!2446891 (h!72469 s!2326)) e!4100748)))

(assert (= (and d!2134797 res!2776797) b!6794379))

(assert (= (and d!2134797 c!1262989) b!6794378))

(assert (= (and d!2134797 (not c!1262989)) b!6794380))

(assert (= (and b!6794380 c!1262988) b!6794381))

(assert (= (and b!6794380 (not c!1262988)) b!6794382))

(assert (= (or b!6794378 b!6794381) bm!617033))

(declare-fun m!7541454 () Bool)

(assert (=> b!6794378 m!7541454))

(declare-fun m!7541456 () Bool)

(assert (=> b!6794379 m!7541456))

(declare-fun m!7541458 () Bool)

(assert (=> bm!617033 m!7541458))

(assert (=> b!6793721 d!2134797))

(declare-fun d!2134799 () Bool)

(assert (=> d!2134799 (= (flatMap!2096 lt!2446905 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446891))))

(declare-fun lt!2447014 () Unit!159921)

(assert (=> d!2134799 (= lt!2447014 (choose!50627 lt!2446905 lt!2446891 lambda!382887))))

(assert (=> d!2134799 (= lt!2446905 (store ((as const (Array Context!11998 Bool)) false) lt!2446891 true))))

(assert (=> d!2134799 (= (lemmaFlatMapOnSingletonSet!1622 lt!2446905 lt!2446891 lambda!382887) lt!2447014)))

(declare-fun b_lambda!255965 () Bool)

(assert (=> (not b_lambda!255965) (not d!2134799)))

(declare-fun bs!1810440 () Bool)

(assert (= bs!1810440 d!2134799))

(assert (=> bs!1810440 m!7540864))

(declare-fun m!7541460 () Bool)

(assert (=> bs!1810440 m!7541460))

(declare-fun m!7541462 () Bool)

(assert (=> bs!1810440 m!7541462))

(assert (=> bs!1810440 m!7540876))

(assert (=> b!6793721 d!2134799))

(declare-fun d!2134801 () Bool)

(assert (=> d!2134801 (= (isEmpty!38393 (t!379871 zl!343)) ((_ is Nil!66022) (t!379871 zl!343)))))

(assert (=> b!6793712 d!2134801))

(declare-fun b!6794383 () Bool)

(declare-fun e!4100750 () (InoxSet Context!11998))

(declare-fun e!4100751 () (InoxSet Context!11998))

(assert (=> b!6794383 (= e!4100750 e!4100751)))

(declare-fun c!1262992 () Bool)

(assert (=> b!6794383 (= c!1262992 ((_ is Union!16615) (reg!16944 r!7292)))))

(declare-fun b!6794384 () Bool)

(declare-fun call!617041 () (InoxSet Context!11998))

(declare-fun call!617039 () (InoxSet Context!11998))

(assert (=> b!6794384 (= e!4100751 ((_ map or) call!617041 call!617039))))

(declare-fun b!6794385 () Bool)

(declare-fun e!4100753 () (InoxSet Context!11998))

(declare-fun call!617044 () (InoxSet Context!11998))

(assert (=> b!6794385 (= e!4100753 call!617044)))

(declare-fun call!617042 () List!66144)

(declare-fun bm!617034 () Bool)

(declare-fun c!1262991 () Bool)

(declare-fun c!1262990 () Bool)

(assert (=> bm!617034 (= call!617039 (derivationStepZipperDown!1843 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))) (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042)) (h!72469 s!2326)))))

(declare-fun b!6794386 () Bool)

(declare-fun e!4100752 () (InoxSet Context!11998))

(declare-fun e!4100749 () (InoxSet Context!11998))

(assert (=> b!6794386 (= e!4100752 e!4100749)))

(assert (=> b!6794386 (= c!1262990 ((_ is Concat!25460) (reg!16944 r!7292)))))

(declare-fun bm!617035 () Bool)

(declare-fun call!617040 () (InoxSet Context!11998))

(assert (=> bm!617035 (= call!617040 call!617039)))

(declare-fun bm!617036 () Bool)

(declare-fun call!617043 () List!66144)

(assert (=> bm!617036 (= call!617042 call!617043)))

(declare-fun bm!617037 () Bool)

(assert (=> bm!617037 (= call!617041 (derivationStepZipperDown!1843 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))) (ite c!1262992 lt!2446908 (Context!11999 call!617043)) (h!72469 s!2326)))))

(declare-fun d!2134803 () Bool)

(declare-fun c!1262994 () Bool)

(assert (=> d!2134803 (= c!1262994 (and ((_ is ElementMatch!16615) (reg!16944 r!7292)) (= (c!1262803 (reg!16944 r!7292)) (h!72469 s!2326))))))

(assert (=> d!2134803 (= (derivationStepZipperDown!1843 (reg!16944 r!7292) lt!2446908 (h!72469 s!2326)) e!4100750)))

(declare-fun b!6794387 () Bool)

(assert (=> b!6794387 (= e!4100753 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6794388 () Bool)

(assert (=> b!6794388 (= e!4100750 (store ((as const (Array Context!11998 Bool)) false) lt!2446908 true))))

(declare-fun bm!617038 () Bool)

(assert (=> bm!617038 (= call!617044 call!617040)))

(declare-fun bm!617039 () Bool)

(assert (=> bm!617039 (= call!617043 ($colon$colon!2424 (exprs!6499 lt!2446908) (ite (or c!1262991 c!1262990) (regTwo!33742 (reg!16944 r!7292)) (reg!16944 r!7292))))))

(declare-fun b!6794389 () Bool)

(assert (=> b!6794389 (= e!4100752 ((_ map or) call!617041 call!617040))))

(declare-fun b!6794390 () Bool)

(assert (=> b!6794390 (= e!4100749 call!617044)))

(declare-fun b!6794391 () Bool)

(declare-fun e!4100754 () Bool)

(assert (=> b!6794391 (= c!1262991 e!4100754)))

(declare-fun res!2776798 () Bool)

(assert (=> b!6794391 (=> (not res!2776798) (not e!4100754))))

(assert (=> b!6794391 (= res!2776798 ((_ is Concat!25460) (reg!16944 r!7292)))))

(assert (=> b!6794391 (= e!4100751 e!4100752)))

(declare-fun b!6794392 () Bool)

(assert (=> b!6794392 (= e!4100754 (nullable!6594 (regOne!33742 (reg!16944 r!7292))))))

(declare-fun b!6794393 () Bool)

(declare-fun c!1262993 () Bool)

(assert (=> b!6794393 (= c!1262993 ((_ is Star!16615) (reg!16944 r!7292)))))

(assert (=> b!6794393 (= e!4100749 e!4100753)))

(assert (= (and d!2134803 c!1262994) b!6794388))

(assert (= (and d!2134803 (not c!1262994)) b!6794383))

(assert (= (and b!6794383 c!1262992) b!6794384))

(assert (= (and b!6794383 (not c!1262992)) b!6794391))

(assert (= (and b!6794391 res!2776798) b!6794392))

(assert (= (and b!6794391 c!1262991) b!6794389))

(assert (= (and b!6794391 (not c!1262991)) b!6794386))

(assert (= (and b!6794386 c!1262990) b!6794390))

(assert (= (and b!6794386 (not c!1262990)) b!6794393))

(assert (= (and b!6794393 c!1262993) b!6794385))

(assert (= (and b!6794393 (not c!1262993)) b!6794387))

(assert (= (or b!6794390 b!6794385) bm!617036))

(assert (= (or b!6794390 b!6794385) bm!617038))

(assert (= (or b!6794389 bm!617036) bm!617039))

(assert (= (or b!6794389 bm!617038) bm!617035))

(assert (= (or b!6794384 bm!617035) bm!617034))

(assert (= (or b!6794384 b!6794389) bm!617037))

(assert (=> b!6794388 m!7540872))

(declare-fun m!7541464 () Bool)

(assert (=> b!6794392 m!7541464))

(declare-fun m!7541466 () Bool)

(assert (=> bm!617037 m!7541466))

(declare-fun m!7541468 () Bool)

(assert (=> bm!617034 m!7541468))

(declare-fun m!7541470 () Bool)

(assert (=> bm!617039 m!7541470))

(assert (=> b!6793713 d!2134803))

(declare-fun d!2134805 () Bool)

(assert (=> d!2134805 (= (flatMap!2096 lt!2446903 lambda!382887) (choose!50626 lt!2446903 lambda!382887))))

(declare-fun bs!1810441 () Bool)

(assert (= bs!1810441 d!2134805))

(declare-fun m!7541472 () Bool)

(assert (=> bs!1810441 m!7541472))

(assert (=> b!6793713 d!2134805))

(declare-fun e!4100757 () (InoxSet Context!11998))

(declare-fun call!617045 () (InoxSet Context!11998))

(declare-fun b!6794394 () Bool)

(assert (=> b!6794394 (= e!4100757 ((_ map or) call!617045 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (h!72469 s!2326))))))

(declare-fun b!6794395 () Bool)

(declare-fun e!4100756 () Bool)

(assert (=> b!6794395 (= e!4100756 (nullable!6594 (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun b!6794396 () Bool)

(declare-fun e!4100755 () (InoxSet Context!11998))

(assert (=> b!6794396 (= e!4100757 e!4100755)))

(declare-fun c!1262995 () Bool)

(assert (=> b!6794396 (= c!1262995 ((_ is Cons!66020) (exprs!6499 lt!2446885)))))

(declare-fun b!6794397 () Bool)

(assert (=> b!6794397 (= e!4100755 call!617045)))

(declare-fun b!6794398 () Bool)

(assert (=> b!6794398 (= e!4100755 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617040 () Bool)

(assert (=> bm!617040 (= call!617045 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446885)) (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (h!72469 s!2326)))))

(declare-fun d!2134807 () Bool)

(declare-fun c!1262996 () Bool)

(assert (=> d!2134807 (= c!1262996 e!4100756)))

(declare-fun res!2776799 () Bool)

(assert (=> d!2134807 (=> (not res!2776799) (not e!4100756))))

(assert (=> d!2134807 (= res!2776799 ((_ is Cons!66020) (exprs!6499 lt!2446885)))))

(assert (=> d!2134807 (= (derivationStepZipperUp!1769 lt!2446885 (h!72469 s!2326)) e!4100757)))

(assert (= (and d!2134807 res!2776799) b!6794395))

(assert (= (and d!2134807 c!1262996) b!6794394))

(assert (= (and d!2134807 (not c!1262996)) b!6794396))

(assert (= (and b!6794396 c!1262995) b!6794397))

(assert (= (and b!6794396 (not c!1262995)) b!6794398))

(assert (= (or b!6794394 b!6794397) bm!617040))

(declare-fun m!7541474 () Bool)

(assert (=> b!6794394 m!7541474))

(declare-fun m!7541476 () Bool)

(assert (=> b!6794395 m!7541476))

(declare-fun m!7541478 () Bool)

(assert (=> bm!617040 m!7541478))

(assert (=> b!6793713 d!2134807))

(declare-fun d!2134809 () Bool)

(assert (=> d!2134809 (= (flatMap!2096 lt!2446903 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446885))))

(declare-fun lt!2447015 () Unit!159921)

(assert (=> d!2134809 (= lt!2447015 (choose!50627 lt!2446903 lt!2446885 lambda!382887))))

(assert (=> d!2134809 (= lt!2446903 (store ((as const (Array Context!11998 Bool)) false) lt!2446885 true))))

(assert (=> d!2134809 (= (lemmaFlatMapOnSingletonSet!1622 lt!2446903 lt!2446885 lambda!382887) lt!2447015)))

(declare-fun b_lambda!255967 () Bool)

(assert (=> (not b_lambda!255967) (not d!2134809)))

(declare-fun bs!1810442 () Bool)

(assert (= bs!1810442 d!2134809))

(assert (=> bs!1810442 m!7540920))

(declare-fun m!7541480 () Bool)

(assert (=> bs!1810442 m!7541480))

(declare-fun m!7541482 () Bool)

(assert (=> bs!1810442 m!7541482))

(assert (=> bs!1810442 m!7540914))

(assert (=> b!6793713 d!2134809))

(declare-fun bs!1810443 () Bool)

(declare-fun b!6794432 () Bool)

(assert (= bs!1810443 (and b!6794432 d!2134769)))

(declare-fun lambda!382969 () Int)

(assert (=> bs!1810443 (= (and (= (reg!16944 lt!2446884) (reg!16944 r!7292)) (= lt!2446884 (Star!16615 (reg!16944 r!7292)))) (= lambda!382969 lambda!382954))))

(assert (=> bs!1810443 (not (= lambda!382969 lambda!382953))))

(declare-fun bs!1810444 () Bool)

(assert (= bs!1810444 (and b!6794432 b!6793723)))

(assert (=> bs!1810444 (not (= lambda!382969 lambda!382886))))

(declare-fun bs!1810445 () Bool)

(assert (= bs!1810445 (and b!6794432 d!2134753)))

(assert (=> bs!1810445 (not (= lambda!382969 lambda!382948))))

(assert (=> bs!1810444 (not (= lambda!382969 lambda!382884))))

(assert (=> bs!1810445 (not (= lambda!382969 lambda!382947))))

(assert (=> bs!1810444 (= (and (= (reg!16944 lt!2446884) (reg!16944 r!7292)) (= lt!2446884 r!7292)) (= lambda!382969 lambda!382885))))

(declare-fun bs!1810446 () Bool)

(assert (= bs!1810446 (and b!6794432 d!2134781)))

(assert (=> bs!1810446 (not (= lambda!382969 lambda!382957))))

(assert (=> b!6794432 true))

(assert (=> b!6794432 true))

(declare-fun bs!1810447 () Bool)

(declare-fun b!6794436 () Bool)

(assert (= bs!1810447 (and b!6794436 d!2134769)))

(declare-fun lambda!382970 () Int)

(assert (=> bs!1810447 (not (= lambda!382970 lambda!382954))))

(assert (=> bs!1810447 (not (= lambda!382970 lambda!382953))))

(declare-fun bs!1810448 () Bool)

(assert (= bs!1810448 (and b!6794436 b!6793723)))

(assert (=> bs!1810448 (= (and (= (regOne!33742 lt!2446884) (reg!16944 r!7292)) (= (regTwo!33742 lt!2446884) r!7292)) (= lambda!382970 lambda!382886))))

(declare-fun bs!1810449 () Bool)

(assert (= bs!1810449 (and b!6794436 d!2134753)))

(assert (=> bs!1810449 (= (and (= (regOne!33742 lt!2446884) (reg!16944 r!7292)) (= (regTwo!33742 lt!2446884) r!7292)) (= lambda!382970 lambda!382948))))

(assert (=> bs!1810448 (not (= lambda!382970 lambda!382884))))

(assert (=> bs!1810449 (not (= lambda!382970 lambda!382947))))

(declare-fun bs!1810450 () Bool)

(assert (= bs!1810450 (and b!6794436 b!6794432)))

(assert (=> bs!1810450 (not (= lambda!382970 lambda!382969))))

(assert (=> bs!1810448 (not (= lambda!382970 lambda!382885))))

(declare-fun bs!1810451 () Bool)

(assert (= bs!1810451 (and b!6794436 d!2134781)))

(assert (=> bs!1810451 (not (= lambda!382970 lambda!382957))))

(assert (=> b!6794436 true))

(assert (=> b!6794436 true))

(declare-fun b!6794431 () Bool)

(declare-fun e!4100779 () Bool)

(assert (=> b!6794431 (= e!4100779 (= s!2326 (Cons!66021 (c!1262803 lt!2446884) Nil!66021)))))

(declare-fun e!4100781 () Bool)

(declare-fun call!617050 () Bool)

(assert (=> b!6794432 (= e!4100781 call!617050)))

(declare-fun b!6794433 () Bool)

(declare-fun e!4100780 () Bool)

(declare-fun e!4100782 () Bool)

(assert (=> b!6794433 (= e!4100780 e!4100782)))

(declare-fun c!1263006 () Bool)

(assert (=> b!6794433 (= c!1263006 ((_ is Star!16615) lt!2446884))))

(declare-fun d!2134811 () Bool)

(declare-fun c!1263008 () Bool)

(assert (=> d!2134811 (= c!1263008 ((_ is EmptyExpr!16615) lt!2446884))))

(declare-fun e!4100776 () Bool)

(assert (=> d!2134811 (= (matchRSpec!3716 lt!2446884 s!2326) e!4100776)))

(declare-fun b!6794434 () Bool)

(declare-fun call!617051 () Bool)

(assert (=> b!6794434 (= e!4100776 call!617051)))

(declare-fun bm!617045 () Bool)

(assert (=> bm!617045 (= call!617050 (Exists!3683 (ite c!1263006 lambda!382969 lambda!382970)))))

(declare-fun b!6794435 () Bool)

(declare-fun c!1263007 () Bool)

(assert (=> b!6794435 (= c!1263007 ((_ is Union!16615) lt!2446884))))

(assert (=> b!6794435 (= e!4100779 e!4100780)))

(assert (=> b!6794436 (= e!4100782 call!617050)))

(declare-fun b!6794437 () Bool)

(declare-fun c!1263005 () Bool)

(assert (=> b!6794437 (= c!1263005 ((_ is ElementMatch!16615) lt!2446884))))

(declare-fun e!4100778 () Bool)

(assert (=> b!6794437 (= e!4100778 e!4100779)))

(declare-fun b!6794438 () Bool)

(declare-fun e!4100777 () Bool)

(assert (=> b!6794438 (= e!4100780 e!4100777)))

(declare-fun res!2776817 () Bool)

(assert (=> b!6794438 (= res!2776817 (matchRSpec!3716 (regOne!33743 lt!2446884) s!2326))))

(assert (=> b!6794438 (=> res!2776817 e!4100777)))

(declare-fun b!6794439 () Bool)

(declare-fun res!2776816 () Bool)

(assert (=> b!6794439 (=> res!2776816 e!4100781)))

(assert (=> b!6794439 (= res!2776816 call!617051)))

(assert (=> b!6794439 (= e!4100782 e!4100781)))

(declare-fun b!6794440 () Bool)

(assert (=> b!6794440 (= e!4100777 (matchRSpec!3716 (regTwo!33743 lt!2446884) s!2326))))

(declare-fun bm!617046 () Bool)

(assert (=> bm!617046 (= call!617051 (isEmpty!38394 s!2326))))

(declare-fun b!6794441 () Bool)

(assert (=> b!6794441 (= e!4100776 e!4100778)))

(declare-fun res!2776818 () Bool)

(assert (=> b!6794441 (= res!2776818 (not ((_ is EmptyLang!16615) lt!2446884)))))

(assert (=> b!6794441 (=> (not res!2776818) (not e!4100778))))

(assert (= (and d!2134811 c!1263008) b!6794434))

(assert (= (and d!2134811 (not c!1263008)) b!6794441))

(assert (= (and b!6794441 res!2776818) b!6794437))

(assert (= (and b!6794437 c!1263005) b!6794431))

(assert (= (and b!6794437 (not c!1263005)) b!6794435))

(assert (= (and b!6794435 c!1263007) b!6794438))

(assert (= (and b!6794435 (not c!1263007)) b!6794433))

(assert (= (and b!6794438 (not res!2776817)) b!6794440))

(assert (= (and b!6794433 c!1263006) b!6794439))

(assert (= (and b!6794433 (not c!1263006)) b!6794436))

(assert (= (and b!6794439 (not res!2776816)) b!6794432))

(assert (= (or b!6794432 b!6794436) bm!617045))

(assert (= (or b!6794434 b!6794439) bm!617046))

(declare-fun m!7541484 () Bool)

(assert (=> bm!617045 m!7541484))

(declare-fun m!7541486 () Bool)

(assert (=> b!6794438 m!7541486))

(declare-fun m!7541488 () Bool)

(assert (=> b!6794440 m!7541488))

(assert (=> bm!617046 m!7540894))

(assert (=> b!6793732 d!2134811))

(declare-fun b!6794470 () Bool)

(declare-fun e!4100800 () Bool)

(declare-fun e!4100797 () Bool)

(assert (=> b!6794470 (= e!4100800 e!4100797)))

(declare-fun res!2776841 () Bool)

(assert (=> b!6794470 (=> res!2776841 e!4100797)))

(declare-fun call!617054 () Bool)

(assert (=> b!6794470 (= res!2776841 call!617054)))

(declare-fun b!6794471 () Bool)

(declare-fun e!4100802 () Bool)

(declare-fun lt!2447018 () Bool)

(assert (=> b!6794471 (= e!4100802 (= lt!2447018 call!617054))))

(declare-fun b!6794472 () Bool)

(declare-fun e!4100798 () Bool)

(assert (=> b!6794472 (= e!4100798 (nullable!6594 lt!2446884))))

(declare-fun b!6794473 () Bool)

(declare-fun res!2776836 () Bool)

(declare-fun e!4100801 () Bool)

(assert (=> b!6794473 (=> res!2776836 e!4100801)))

(assert (=> b!6794473 (= res!2776836 (not ((_ is ElementMatch!16615) lt!2446884)))))

(declare-fun e!4100799 () Bool)

(assert (=> b!6794473 (= e!4100799 e!4100801)))

(declare-fun b!6794474 () Bool)

(assert (=> b!6794474 (= e!4100802 e!4100799)))

(declare-fun c!1263015 () Bool)

(assert (=> b!6794474 (= c!1263015 ((_ is EmptyLang!16615) lt!2446884))))

(declare-fun bm!617049 () Bool)

(assert (=> bm!617049 (= call!617054 (isEmpty!38394 s!2326))))

(declare-fun b!6794476 () Bool)

(assert (=> b!6794476 (= e!4100799 (not lt!2447018))))

(declare-fun b!6794477 () Bool)

(declare-fun res!2776837 () Bool)

(assert (=> b!6794477 (=> res!2776837 e!4100797)))

(assert (=> b!6794477 (= res!2776837 (not (isEmpty!38394 (tail!12726 s!2326))))))

(declare-fun b!6794478 () Bool)

(assert (=> b!6794478 (= e!4100797 (not (= (head!13641 s!2326) (c!1262803 lt!2446884))))))

(declare-fun b!6794479 () Bool)

(declare-fun e!4100803 () Bool)

(assert (=> b!6794479 (= e!4100803 (= (head!13641 s!2326) (c!1262803 lt!2446884)))))

(declare-fun b!6794480 () Bool)

(declare-fun res!2776842 () Bool)

(assert (=> b!6794480 (=> res!2776842 e!4100801)))

(assert (=> b!6794480 (= res!2776842 e!4100803)))

(declare-fun res!2776835 () Bool)

(assert (=> b!6794480 (=> (not res!2776835) (not e!4100803))))

(assert (=> b!6794480 (= res!2776835 lt!2447018)))

(declare-fun b!6794481 () Bool)

(declare-fun res!2776839 () Bool)

(assert (=> b!6794481 (=> (not res!2776839) (not e!4100803))))

(assert (=> b!6794481 (= res!2776839 (not call!617054))))

(declare-fun b!6794482 () Bool)

(assert (=> b!6794482 (= e!4100801 e!4100800)))

(declare-fun res!2776838 () Bool)

(assert (=> b!6794482 (=> (not res!2776838) (not e!4100800))))

(assert (=> b!6794482 (= res!2776838 (not lt!2447018))))

(declare-fun b!6794483 () Bool)

(declare-fun derivativeStep!5279 (Regex!16615 C!33500) Regex!16615)

(assert (=> b!6794483 (= e!4100798 (matchR!8798 (derivativeStep!5279 lt!2446884 (head!13641 s!2326)) (tail!12726 s!2326)))))

(declare-fun b!6794475 () Bool)

(declare-fun res!2776840 () Bool)

(assert (=> b!6794475 (=> (not res!2776840) (not e!4100803))))

(assert (=> b!6794475 (= res!2776840 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun d!2134813 () Bool)

(assert (=> d!2134813 e!4100802))

(declare-fun c!1263017 () Bool)

(assert (=> d!2134813 (= c!1263017 ((_ is EmptyExpr!16615) lt!2446884))))

(assert (=> d!2134813 (= lt!2447018 e!4100798)))

(declare-fun c!1263016 () Bool)

(assert (=> d!2134813 (= c!1263016 (isEmpty!38394 s!2326))))

(assert (=> d!2134813 (validRegex!8351 lt!2446884)))

(assert (=> d!2134813 (= (matchR!8798 lt!2446884 s!2326) lt!2447018)))

(assert (= (and d!2134813 c!1263016) b!6794472))

(assert (= (and d!2134813 (not c!1263016)) b!6794483))

(assert (= (and d!2134813 c!1263017) b!6794471))

(assert (= (and d!2134813 (not c!1263017)) b!6794474))

(assert (= (and b!6794474 c!1263015) b!6794476))

(assert (= (and b!6794474 (not c!1263015)) b!6794473))

(assert (= (and b!6794473 (not res!2776836)) b!6794480))

(assert (= (and b!6794480 res!2776835) b!6794481))

(assert (= (and b!6794481 res!2776839) b!6794475))

(assert (= (and b!6794475 res!2776840) b!6794479))

(assert (= (and b!6794480 (not res!2776842)) b!6794482))

(assert (= (and b!6794482 res!2776838) b!6794470))

(assert (= (and b!6794470 (not res!2776841)) b!6794477))

(assert (= (and b!6794477 (not res!2776837)) b!6794478))

(assert (= (or b!6794471 b!6794470 b!6794481) bm!617049))

(assert (=> b!6794478 m!7541102))

(assert (=> b!6794479 m!7541102))

(assert (=> d!2134813 m!7540894))

(declare-fun m!7541490 () Bool)

(assert (=> d!2134813 m!7541490))

(assert (=> b!6794477 m!7541106))

(assert (=> b!6794477 m!7541106))

(declare-fun m!7541492 () Bool)

(assert (=> b!6794477 m!7541492))

(declare-fun m!7541494 () Bool)

(assert (=> b!6794472 m!7541494))

(assert (=> b!6794483 m!7541102))

(assert (=> b!6794483 m!7541102))

(declare-fun m!7541496 () Bool)

(assert (=> b!6794483 m!7541496))

(assert (=> b!6794483 m!7541106))

(assert (=> b!6794483 m!7541496))

(assert (=> b!6794483 m!7541106))

(declare-fun m!7541498 () Bool)

(assert (=> b!6794483 m!7541498))

(assert (=> b!6794475 m!7541106))

(assert (=> b!6794475 m!7541106))

(assert (=> b!6794475 m!7541492))

(assert (=> bm!617049 m!7540894))

(assert (=> b!6793732 d!2134813))

(declare-fun d!2134815 () Bool)

(assert (=> d!2134815 (= (matchR!8798 lt!2446884 s!2326) (matchRSpec!3716 lt!2446884 s!2326))))

(declare-fun lt!2447021 () Unit!159921)

(declare-fun choose!50632 (Regex!16615 List!66145) Unit!159921)

(assert (=> d!2134815 (= lt!2447021 (choose!50632 lt!2446884 s!2326))))

(assert (=> d!2134815 (validRegex!8351 lt!2446884)))

(assert (=> d!2134815 (= (mainMatchTheorem!3716 lt!2446884 s!2326) lt!2447021)))

(declare-fun bs!1810452 () Bool)

(assert (= bs!1810452 d!2134815))

(assert (=> bs!1810452 m!7540832))

(assert (=> bs!1810452 m!7540830))

(declare-fun m!7541500 () Bool)

(assert (=> bs!1810452 m!7541500))

(assert (=> bs!1810452 m!7541490))

(assert (=> b!6793732 d!2134815))

(declare-fun d!2134817 () Bool)

(declare-fun lt!2447022 () Regex!16615)

(assert (=> d!2134817 (validRegex!8351 lt!2447022)))

(assert (=> d!2134817 (= lt!2447022 (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))

(assert (=> d!2134817 (= (unfocusZipper!2357 (Cons!66022 lt!2446891 Nil!66022)) lt!2447022)))

(declare-fun bs!1810453 () Bool)

(assert (= bs!1810453 d!2134817))

(declare-fun m!7541502 () Bool)

(assert (=> bs!1810453 m!7541502))

(declare-fun m!7541504 () Bool)

(assert (=> bs!1810453 m!7541504))

(assert (=> bs!1810453 m!7541504))

(declare-fun m!7541506 () Bool)

(assert (=> bs!1810453 m!7541506))

(assert (=> b!6793711 d!2134817))

(declare-fun bs!1810454 () Bool)

(declare-fun b!6794485 () Bool)

(assert (= bs!1810454 (and b!6794485 d!2134769)))

(declare-fun lambda!382971 () Int)

(assert (=> bs!1810454 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!382971 lambda!382954))))

(assert (=> bs!1810454 (not (= lambda!382971 lambda!382953))))

(declare-fun bs!1810455 () Bool)

(assert (= bs!1810455 (and b!6794485 b!6794436)))

(assert (=> bs!1810455 (not (= lambda!382971 lambda!382970))))

(declare-fun bs!1810456 () Bool)

(assert (= bs!1810456 (and b!6794485 b!6793723)))

(assert (=> bs!1810456 (not (= lambda!382971 lambda!382886))))

(declare-fun bs!1810457 () Bool)

(assert (= bs!1810457 (and b!6794485 d!2134753)))

(assert (=> bs!1810457 (not (= lambda!382971 lambda!382948))))

(assert (=> bs!1810456 (not (= lambda!382971 lambda!382884))))

(assert (=> bs!1810457 (not (= lambda!382971 lambda!382947))))

(declare-fun bs!1810458 () Bool)

(assert (= bs!1810458 (and b!6794485 b!6794432)))

(assert (=> bs!1810458 (= (and (= (reg!16944 r!7292) (reg!16944 lt!2446884)) (= r!7292 lt!2446884)) (= lambda!382971 lambda!382969))))

(assert (=> bs!1810456 (= lambda!382971 lambda!382885)))

(declare-fun bs!1810459 () Bool)

(assert (= bs!1810459 (and b!6794485 d!2134781)))

(assert (=> bs!1810459 (not (= lambda!382971 lambda!382957))))

(assert (=> b!6794485 true))

(assert (=> b!6794485 true))

(declare-fun bs!1810460 () Bool)

(declare-fun b!6794489 () Bool)

(assert (= bs!1810460 (and b!6794489 d!2134769)))

(declare-fun lambda!382972 () Int)

(assert (=> bs!1810460 (not (= lambda!382972 lambda!382954))))

(assert (=> bs!1810460 (not (= lambda!382972 lambda!382953))))

(declare-fun bs!1810461 () Bool)

(assert (= bs!1810461 (and b!6794489 b!6794436)))

(assert (=> bs!1810461 (= (and (= (regOne!33742 r!7292) (regOne!33742 lt!2446884)) (= (regTwo!33742 r!7292) (regTwo!33742 lt!2446884))) (= lambda!382972 lambda!382970))))

(declare-fun bs!1810462 () Bool)

(assert (= bs!1810462 (and b!6794489 b!6793723)))

(assert (=> bs!1810462 (= (and (= (regOne!33742 r!7292) (reg!16944 r!7292)) (= (regTwo!33742 r!7292) r!7292)) (= lambda!382972 lambda!382886))))

(declare-fun bs!1810463 () Bool)

(assert (= bs!1810463 (and b!6794489 d!2134753)))

(assert (=> bs!1810463 (= (and (= (regOne!33742 r!7292) (reg!16944 r!7292)) (= (regTwo!33742 r!7292) r!7292)) (= lambda!382972 lambda!382948))))

(assert (=> bs!1810462 (not (= lambda!382972 lambda!382884))))

(declare-fun bs!1810464 () Bool)

(assert (= bs!1810464 (and b!6794489 b!6794485)))

(assert (=> bs!1810464 (not (= lambda!382972 lambda!382971))))

(assert (=> bs!1810463 (not (= lambda!382972 lambda!382947))))

(declare-fun bs!1810465 () Bool)

(assert (= bs!1810465 (and b!6794489 b!6794432)))

(assert (=> bs!1810465 (not (= lambda!382972 lambda!382969))))

(assert (=> bs!1810462 (not (= lambda!382972 lambda!382885))))

(declare-fun bs!1810466 () Bool)

(assert (= bs!1810466 (and b!6794489 d!2134781)))

(assert (=> bs!1810466 (not (= lambda!382972 lambda!382957))))

(assert (=> b!6794489 true))

(assert (=> b!6794489 true))

(declare-fun b!6794484 () Bool)

(declare-fun e!4100807 () Bool)

(assert (=> b!6794484 (= e!4100807 (= s!2326 (Cons!66021 (c!1262803 r!7292) Nil!66021)))))

(declare-fun e!4100809 () Bool)

(declare-fun call!617055 () Bool)

(assert (=> b!6794485 (= e!4100809 call!617055)))

(declare-fun b!6794486 () Bool)

(declare-fun e!4100808 () Bool)

(declare-fun e!4100810 () Bool)

(assert (=> b!6794486 (= e!4100808 e!4100810)))

(declare-fun c!1263019 () Bool)

(assert (=> b!6794486 (= c!1263019 ((_ is Star!16615) r!7292))))

(declare-fun d!2134819 () Bool)

(declare-fun c!1263021 () Bool)

(assert (=> d!2134819 (= c!1263021 ((_ is EmptyExpr!16615) r!7292))))

(declare-fun e!4100804 () Bool)

(assert (=> d!2134819 (= (matchRSpec!3716 r!7292 s!2326) e!4100804)))

(declare-fun b!6794487 () Bool)

(declare-fun call!617056 () Bool)

(assert (=> b!6794487 (= e!4100804 call!617056)))

(declare-fun bm!617050 () Bool)

(assert (=> bm!617050 (= call!617055 (Exists!3683 (ite c!1263019 lambda!382971 lambda!382972)))))

(declare-fun b!6794488 () Bool)

(declare-fun c!1263020 () Bool)

(assert (=> b!6794488 (= c!1263020 ((_ is Union!16615) r!7292))))

(assert (=> b!6794488 (= e!4100807 e!4100808)))

(assert (=> b!6794489 (= e!4100810 call!617055)))

(declare-fun b!6794490 () Bool)

(declare-fun c!1263018 () Bool)

(assert (=> b!6794490 (= c!1263018 ((_ is ElementMatch!16615) r!7292))))

(declare-fun e!4100806 () Bool)

(assert (=> b!6794490 (= e!4100806 e!4100807)))

(declare-fun b!6794491 () Bool)

(declare-fun e!4100805 () Bool)

(assert (=> b!6794491 (= e!4100808 e!4100805)))

(declare-fun res!2776844 () Bool)

(assert (=> b!6794491 (= res!2776844 (matchRSpec!3716 (regOne!33743 r!7292) s!2326))))

(assert (=> b!6794491 (=> res!2776844 e!4100805)))

(declare-fun b!6794492 () Bool)

(declare-fun res!2776843 () Bool)

(assert (=> b!6794492 (=> res!2776843 e!4100809)))

(assert (=> b!6794492 (= res!2776843 call!617056)))

(assert (=> b!6794492 (= e!4100810 e!4100809)))

(declare-fun b!6794493 () Bool)

(assert (=> b!6794493 (= e!4100805 (matchRSpec!3716 (regTwo!33743 r!7292) s!2326))))

(declare-fun bm!617051 () Bool)

(assert (=> bm!617051 (= call!617056 (isEmpty!38394 s!2326))))

(declare-fun b!6794494 () Bool)

(assert (=> b!6794494 (= e!4100804 e!4100806)))

(declare-fun res!2776845 () Bool)

(assert (=> b!6794494 (= res!2776845 (not ((_ is EmptyLang!16615) r!7292)))))

(assert (=> b!6794494 (=> (not res!2776845) (not e!4100806))))

(assert (= (and d!2134819 c!1263021) b!6794487))

(assert (= (and d!2134819 (not c!1263021)) b!6794494))

(assert (= (and b!6794494 res!2776845) b!6794490))

(assert (= (and b!6794490 c!1263018) b!6794484))

(assert (= (and b!6794490 (not c!1263018)) b!6794488))

(assert (= (and b!6794488 c!1263020) b!6794491))

(assert (= (and b!6794488 (not c!1263020)) b!6794486))

(assert (= (and b!6794491 (not res!2776844)) b!6794493))

(assert (= (and b!6794486 c!1263019) b!6794492))

(assert (= (and b!6794486 (not c!1263019)) b!6794489))

(assert (= (and b!6794492 (not res!2776843)) b!6794485))

(assert (= (or b!6794485 b!6794489) bm!617050))

(assert (= (or b!6794487 b!6794492) bm!617051))

(declare-fun m!7541508 () Bool)

(assert (=> bm!617050 m!7541508))

(declare-fun m!7541510 () Bool)

(assert (=> b!6794491 m!7541510))

(declare-fun m!7541512 () Bool)

(assert (=> b!6794493 m!7541512))

(assert (=> bm!617051 m!7540894))

(assert (=> b!6793731 d!2134819))

(declare-fun b!6794495 () Bool)

(declare-fun e!4100814 () Bool)

(declare-fun e!4100811 () Bool)

(assert (=> b!6794495 (= e!4100814 e!4100811)))

(declare-fun res!2776852 () Bool)

(assert (=> b!6794495 (=> res!2776852 e!4100811)))

(declare-fun call!617057 () Bool)

(assert (=> b!6794495 (= res!2776852 call!617057)))

(declare-fun b!6794496 () Bool)

(declare-fun e!4100816 () Bool)

(declare-fun lt!2447023 () Bool)

(assert (=> b!6794496 (= e!4100816 (= lt!2447023 call!617057))))

(declare-fun b!6794497 () Bool)

(declare-fun e!4100812 () Bool)

(assert (=> b!6794497 (= e!4100812 (nullable!6594 r!7292))))

(declare-fun b!6794498 () Bool)

(declare-fun res!2776847 () Bool)

(declare-fun e!4100815 () Bool)

(assert (=> b!6794498 (=> res!2776847 e!4100815)))

(assert (=> b!6794498 (= res!2776847 (not ((_ is ElementMatch!16615) r!7292)))))

(declare-fun e!4100813 () Bool)

(assert (=> b!6794498 (= e!4100813 e!4100815)))

(declare-fun b!6794499 () Bool)

(assert (=> b!6794499 (= e!4100816 e!4100813)))

(declare-fun c!1263022 () Bool)

(assert (=> b!6794499 (= c!1263022 ((_ is EmptyLang!16615) r!7292))))

(declare-fun bm!617052 () Bool)

(assert (=> bm!617052 (= call!617057 (isEmpty!38394 s!2326))))

(declare-fun b!6794501 () Bool)

(assert (=> b!6794501 (= e!4100813 (not lt!2447023))))

(declare-fun b!6794502 () Bool)

(declare-fun res!2776848 () Bool)

(assert (=> b!6794502 (=> res!2776848 e!4100811)))

(assert (=> b!6794502 (= res!2776848 (not (isEmpty!38394 (tail!12726 s!2326))))))

(declare-fun b!6794503 () Bool)

(assert (=> b!6794503 (= e!4100811 (not (= (head!13641 s!2326) (c!1262803 r!7292))))))

(declare-fun b!6794504 () Bool)

(declare-fun e!4100817 () Bool)

(assert (=> b!6794504 (= e!4100817 (= (head!13641 s!2326) (c!1262803 r!7292)))))

(declare-fun b!6794505 () Bool)

(declare-fun res!2776853 () Bool)

(assert (=> b!6794505 (=> res!2776853 e!4100815)))

(assert (=> b!6794505 (= res!2776853 e!4100817)))

(declare-fun res!2776846 () Bool)

(assert (=> b!6794505 (=> (not res!2776846) (not e!4100817))))

(assert (=> b!6794505 (= res!2776846 lt!2447023)))

(declare-fun b!6794506 () Bool)

(declare-fun res!2776850 () Bool)

(assert (=> b!6794506 (=> (not res!2776850) (not e!4100817))))

(assert (=> b!6794506 (= res!2776850 (not call!617057))))

(declare-fun b!6794507 () Bool)

(assert (=> b!6794507 (= e!4100815 e!4100814)))

(declare-fun res!2776849 () Bool)

(assert (=> b!6794507 (=> (not res!2776849) (not e!4100814))))

(assert (=> b!6794507 (= res!2776849 (not lt!2447023))))

(declare-fun b!6794508 () Bool)

(assert (=> b!6794508 (= e!4100812 (matchR!8798 (derivativeStep!5279 r!7292 (head!13641 s!2326)) (tail!12726 s!2326)))))

(declare-fun b!6794500 () Bool)

(declare-fun res!2776851 () Bool)

(assert (=> b!6794500 (=> (not res!2776851) (not e!4100817))))

(assert (=> b!6794500 (= res!2776851 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun d!2134821 () Bool)

(assert (=> d!2134821 e!4100816))

(declare-fun c!1263024 () Bool)

(assert (=> d!2134821 (= c!1263024 ((_ is EmptyExpr!16615) r!7292))))

(assert (=> d!2134821 (= lt!2447023 e!4100812)))

(declare-fun c!1263023 () Bool)

(assert (=> d!2134821 (= c!1263023 (isEmpty!38394 s!2326))))

(assert (=> d!2134821 (validRegex!8351 r!7292)))

(assert (=> d!2134821 (= (matchR!8798 r!7292 s!2326) lt!2447023)))

(assert (= (and d!2134821 c!1263023) b!6794497))

(assert (= (and d!2134821 (not c!1263023)) b!6794508))

(assert (= (and d!2134821 c!1263024) b!6794496))

(assert (= (and d!2134821 (not c!1263024)) b!6794499))

(assert (= (and b!6794499 c!1263022) b!6794501))

(assert (= (and b!6794499 (not c!1263022)) b!6794498))

(assert (= (and b!6794498 (not res!2776847)) b!6794505))

(assert (= (and b!6794505 res!2776846) b!6794506))

(assert (= (and b!6794506 res!2776850) b!6794500))

(assert (= (and b!6794500 res!2776851) b!6794504))

(assert (= (and b!6794505 (not res!2776853)) b!6794507))

(assert (= (and b!6794507 res!2776849) b!6794495))

(assert (= (and b!6794495 (not res!2776852)) b!6794502))

(assert (= (and b!6794502 (not res!2776848)) b!6794503))

(assert (= (or b!6794496 b!6794495 b!6794506) bm!617052))

(assert (=> b!6794503 m!7541102))

(assert (=> b!6794504 m!7541102))

(assert (=> d!2134821 m!7540894))

(assert (=> d!2134821 m!7540836))

(assert (=> b!6794502 m!7541106))

(assert (=> b!6794502 m!7541106))

(assert (=> b!6794502 m!7541492))

(declare-fun m!7541514 () Bool)

(assert (=> b!6794497 m!7541514))

(assert (=> b!6794508 m!7541102))

(assert (=> b!6794508 m!7541102))

(declare-fun m!7541516 () Bool)

(assert (=> b!6794508 m!7541516))

(assert (=> b!6794508 m!7541106))

(assert (=> b!6794508 m!7541516))

(assert (=> b!6794508 m!7541106))

(declare-fun m!7541518 () Bool)

(assert (=> b!6794508 m!7541518))

(assert (=> b!6794500 m!7541106))

(assert (=> b!6794500 m!7541106))

(assert (=> b!6794500 m!7541492))

(assert (=> bm!617052 m!7540894))

(assert (=> b!6793731 d!2134821))

(declare-fun d!2134823 () Bool)

(assert (=> d!2134823 (= (matchR!8798 r!7292 s!2326) (matchRSpec!3716 r!7292 s!2326))))

(declare-fun lt!2447024 () Unit!159921)

(assert (=> d!2134823 (= lt!2447024 (choose!50632 r!7292 s!2326))))

(assert (=> d!2134823 (validRegex!8351 r!7292)))

(assert (=> d!2134823 (= (mainMatchTheorem!3716 r!7292 s!2326) lt!2447024)))

(declare-fun bs!1810467 () Bool)

(assert (= bs!1810467 d!2134823))

(assert (=> bs!1810467 m!7540842))

(assert (=> bs!1810467 m!7540840))

(declare-fun m!7541520 () Bool)

(assert (=> bs!1810467 m!7541520))

(assert (=> bs!1810467 m!7540836))

(assert (=> b!6793731 d!2134823))

(declare-fun d!2134825 () Bool)

(declare-fun lt!2447025 () Regex!16615)

(assert (=> d!2134825 (validRegex!8351 lt!2447025)))

(assert (=> d!2134825 (= lt!2447025 (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))

(assert (=> d!2134825 (= (unfocusZipper!2357 (Cons!66022 lt!2446885 Nil!66022)) lt!2447025)))

(declare-fun bs!1810468 () Bool)

(assert (= bs!1810468 d!2134825))

(declare-fun m!7541522 () Bool)

(assert (=> bs!1810468 m!7541522))

(declare-fun m!7541524 () Bool)

(assert (=> bs!1810468 m!7541524))

(assert (=> bs!1810468 m!7541524))

(declare-fun m!7541526 () Bool)

(assert (=> bs!1810468 m!7541526))

(assert (=> b!6793720 d!2134825))

(declare-fun d!2134827 () Bool)

(declare-fun lt!2447026 () Regex!16615)

(assert (=> d!2134827 (validRegex!8351 lt!2447026)))

(assert (=> d!2134827 (= lt!2447026 (generalisedUnion!2459 (unfocusZipperList!2036 zl!343)))))

(assert (=> d!2134827 (= (unfocusZipper!2357 zl!343) lt!2447026)))

(declare-fun bs!1810469 () Bool)

(assert (= bs!1810469 d!2134827))

(declare-fun m!7541528 () Bool)

(assert (=> bs!1810469 m!7541528))

(assert (=> bs!1810469 m!7540882))

(assert (=> bs!1810469 m!7540882))

(assert (=> bs!1810469 m!7540884))

(assert (=> b!6793718 d!2134827))

(declare-fun bs!1810470 () Bool)

(declare-fun d!2134829 () Bool)

(assert (= bs!1810470 (and d!2134829 b!6793734)))

(declare-fun lambda!382973 () Int)

(assert (=> bs!1810470 (= lambda!382973 lambda!382889)))

(declare-fun bs!1810471 () Bool)

(assert (= bs!1810471 (and d!2134829 d!2134677)))

(assert (=> bs!1810471 (= lambda!382973 lambda!382930)))

(declare-fun bs!1810472 () Bool)

(assert (= bs!1810472 (and d!2134829 d!2134689)))

(assert (=> bs!1810472 (= lambda!382973 lambda!382932)))

(declare-fun bs!1810473 () Bool)

(assert (= bs!1810473 (and d!2134829 d!2134785)))

(assert (=> bs!1810473 (= lambda!382973 lambda!382963)))

(declare-fun bs!1810474 () Bool)

(assert (= bs!1810474 (and d!2134829 d!2134783)))

(assert (=> bs!1810474 (= lambda!382973 lambda!382960)))

(declare-fun bs!1810475 () Bool)

(assert (= bs!1810475 (and d!2134829 d!2134675)))

(assert (=> bs!1810475 (= lambda!382973 lambda!382921)))

(assert (=> d!2134829 (= (inv!84784 (h!72470 zl!343)) (forall!15807 (exprs!6499 (h!72470 zl!343)) lambda!382973))))

(declare-fun bs!1810476 () Bool)

(assert (= bs!1810476 d!2134829))

(declare-fun m!7541530 () Bool)

(assert (=> bs!1810476 m!7541530))

(assert (=> b!6793719 d!2134829))

(declare-fun d!2134831 () Bool)

(declare-fun c!1263025 () Bool)

(assert (=> d!2134831 (= c!1263025 (isEmpty!38394 s!2326))))

(declare-fun e!4100818 () Bool)

(assert (=> d!2134831 (= (matchZipper!2601 z!1189 s!2326) e!4100818)))

(declare-fun b!6794509 () Bool)

(assert (=> b!6794509 (= e!4100818 (nullableZipper!2322 z!1189))))

(declare-fun b!6794510 () Bool)

(assert (=> b!6794510 (= e!4100818 (matchZipper!2601 (derivationStepZipper!2559 z!1189 (head!13641 s!2326)) (tail!12726 s!2326)))))

(assert (= (and d!2134831 c!1263025) b!6794509))

(assert (= (and d!2134831 (not c!1263025)) b!6794510))

(assert (=> d!2134831 m!7540894))

(declare-fun m!7541532 () Bool)

(assert (=> b!6794509 m!7541532))

(assert (=> b!6794510 m!7541102))

(assert (=> b!6794510 m!7541102))

(declare-fun m!7541534 () Bool)

(assert (=> b!6794510 m!7541534))

(assert (=> b!6794510 m!7541106))

(assert (=> b!6794510 m!7541534))

(assert (=> b!6794510 m!7541106))

(declare-fun m!7541536 () Bool)

(assert (=> b!6794510 m!7541536))

(assert (=> b!6793710 d!2134831))

(declare-fun d!2134833 () Bool)

(declare-fun e!4100821 () Bool)

(assert (=> d!2134833 e!4100821))

(declare-fun res!2776856 () Bool)

(assert (=> d!2134833 (=> (not res!2776856) (not e!4100821))))

(declare-fun lt!2447029 () List!66146)

(declare-fun noDuplicate!2400 (List!66146) Bool)

(assert (=> d!2134833 (= res!2776856 (noDuplicate!2400 lt!2447029))))

(declare-fun choose!50633 ((InoxSet Context!11998)) List!66146)

(assert (=> d!2134833 (= lt!2447029 (choose!50633 z!1189))))

(assert (=> d!2134833 (= (toList!10399 z!1189) lt!2447029)))

(declare-fun b!6794513 () Bool)

(declare-fun content!12881 (List!66146) (InoxSet Context!11998))

(assert (=> b!6794513 (= e!4100821 (= (content!12881 lt!2447029) z!1189))))

(assert (= (and d!2134833 res!2776856) b!6794513))

(declare-fun m!7541538 () Bool)

(assert (=> d!2134833 m!7541538))

(declare-fun m!7541540 () Bool)

(assert (=> d!2134833 m!7541540))

(declare-fun m!7541542 () Bool)

(assert (=> b!6794513 m!7541542))

(assert (=> b!6793708 d!2134833))

(declare-fun b!6794518 () Bool)

(declare-fun e!4100824 () Bool)

(declare-fun tp!1860618 () Bool)

(declare-fun tp!1860619 () Bool)

(assert (=> b!6794518 (= e!4100824 (and tp!1860618 tp!1860619))))

(assert (=> b!6793707 (= tp!1860555 e!4100824)))

(assert (= (and b!6793707 ((_ is Cons!66020) (exprs!6499 setElem!46525))) b!6794518))

(declare-fun b!6794519 () Bool)

(declare-fun e!4100825 () Bool)

(declare-fun tp!1860620 () Bool)

(declare-fun tp!1860621 () Bool)

(assert (=> b!6794519 (= e!4100825 (and tp!1860620 tp!1860621))))

(assert (=> b!6793725 (= tp!1860551 e!4100825)))

(assert (= (and b!6793725 ((_ is Cons!66020) (exprs!6499 (h!72470 zl!343)))) b!6794519))

(declare-fun condSetEmpty!46531 () Bool)

(assert (=> setNonEmpty!46525 (= condSetEmpty!46531 (= setRest!46525 ((as const (Array Context!11998 Bool)) false)))))

(declare-fun setRes!46531 () Bool)

(assert (=> setNonEmpty!46525 (= tp!1860547 setRes!46531)))

(declare-fun setIsEmpty!46531 () Bool)

(assert (=> setIsEmpty!46531 setRes!46531))

(declare-fun tp!1860627 () Bool)

(declare-fun setElem!46531 () Context!11998)

(declare-fun e!4100828 () Bool)

(declare-fun setNonEmpty!46531 () Bool)

(assert (=> setNonEmpty!46531 (= setRes!46531 (and tp!1860627 (inv!84784 setElem!46531) e!4100828))))

(declare-fun setRest!46531 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46531 (= setRest!46525 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46531 true) setRest!46531))))

(declare-fun b!6794524 () Bool)

(declare-fun tp!1860626 () Bool)

(assert (=> b!6794524 (= e!4100828 tp!1860626)))

(assert (= (and setNonEmpty!46525 condSetEmpty!46531) setIsEmpty!46531))

(assert (= (and setNonEmpty!46525 (not condSetEmpty!46531)) setNonEmpty!46531))

(assert (= setNonEmpty!46531 b!6794524))

(declare-fun m!7541544 () Bool)

(assert (=> setNonEmpty!46531 m!7541544))

(declare-fun b!6794529 () Bool)

(declare-fun e!4100831 () Bool)

(declare-fun tp!1860630 () Bool)

(assert (=> b!6794529 (= e!4100831 (and tp_is_empty!42483 tp!1860630))))

(assert (=> b!6793735 (= tp!1860549 e!4100831)))

(assert (= (and b!6793735 ((_ is Cons!66021) (t!379870 s!2326))) b!6794529))

(declare-fun b!6794537 () Bool)

(declare-fun e!4100837 () Bool)

(declare-fun tp!1860635 () Bool)

(assert (=> b!6794537 (= e!4100837 tp!1860635)))

(declare-fun b!6794536 () Bool)

(declare-fun tp!1860636 () Bool)

(declare-fun e!4100836 () Bool)

(assert (=> b!6794536 (= e!4100836 (and (inv!84784 (h!72470 (t!379871 zl!343))) e!4100837 tp!1860636))))

(assert (=> b!6793719 (= tp!1860554 e!4100836)))

(assert (= b!6794536 b!6794537))

(assert (= (and b!6793719 ((_ is Cons!66022) (t!379871 zl!343))) b!6794536))

(declare-fun m!7541546 () Bool)

(assert (=> b!6794536 m!7541546))

(declare-fun b!6794548 () Bool)

(declare-fun e!4100840 () Bool)

(assert (=> b!6794548 (= e!4100840 tp_is_empty!42483)))

(declare-fun b!6794549 () Bool)

(declare-fun tp!1860650 () Bool)

(declare-fun tp!1860648 () Bool)

(assert (=> b!6794549 (= e!4100840 (and tp!1860650 tp!1860648))))

(declare-fun b!6794551 () Bool)

(declare-fun tp!1860647 () Bool)

(declare-fun tp!1860651 () Bool)

(assert (=> b!6794551 (= e!4100840 (and tp!1860647 tp!1860651))))

(assert (=> b!6793724 (= tp!1860548 e!4100840)))

(declare-fun b!6794550 () Bool)

(declare-fun tp!1860649 () Bool)

(assert (=> b!6794550 (= e!4100840 tp!1860649)))

(assert (= (and b!6793724 ((_ is ElementMatch!16615) (regOne!33743 r!7292))) b!6794548))

(assert (= (and b!6793724 ((_ is Concat!25460) (regOne!33743 r!7292))) b!6794549))

(assert (= (and b!6793724 ((_ is Star!16615) (regOne!33743 r!7292))) b!6794550))

(assert (= (and b!6793724 ((_ is Union!16615) (regOne!33743 r!7292))) b!6794551))

(declare-fun b!6794552 () Bool)

(declare-fun e!4100841 () Bool)

(assert (=> b!6794552 (= e!4100841 tp_is_empty!42483)))

(declare-fun b!6794553 () Bool)

(declare-fun tp!1860655 () Bool)

(declare-fun tp!1860653 () Bool)

(assert (=> b!6794553 (= e!4100841 (and tp!1860655 tp!1860653))))

(declare-fun b!6794555 () Bool)

(declare-fun tp!1860652 () Bool)

(declare-fun tp!1860656 () Bool)

(assert (=> b!6794555 (= e!4100841 (and tp!1860652 tp!1860656))))

(assert (=> b!6793724 (= tp!1860553 e!4100841)))

(declare-fun b!6794554 () Bool)

(declare-fun tp!1860654 () Bool)

(assert (=> b!6794554 (= e!4100841 tp!1860654)))

(assert (= (and b!6793724 ((_ is ElementMatch!16615) (regTwo!33743 r!7292))) b!6794552))

(assert (= (and b!6793724 ((_ is Concat!25460) (regTwo!33743 r!7292))) b!6794553))

(assert (= (and b!6793724 ((_ is Star!16615) (regTwo!33743 r!7292))) b!6794554))

(assert (= (and b!6793724 ((_ is Union!16615) (regTwo!33743 r!7292))) b!6794555))

(declare-fun b!6794556 () Bool)

(declare-fun e!4100842 () Bool)

(assert (=> b!6794556 (= e!4100842 tp_is_empty!42483)))

(declare-fun b!6794557 () Bool)

(declare-fun tp!1860660 () Bool)

(declare-fun tp!1860658 () Bool)

(assert (=> b!6794557 (= e!4100842 (and tp!1860660 tp!1860658))))

(declare-fun b!6794559 () Bool)

(declare-fun tp!1860657 () Bool)

(declare-fun tp!1860661 () Bool)

(assert (=> b!6794559 (= e!4100842 (and tp!1860657 tp!1860661))))

(assert (=> b!6793733 (= tp!1860552 e!4100842)))

(declare-fun b!6794558 () Bool)

(declare-fun tp!1860659 () Bool)

(assert (=> b!6794558 (= e!4100842 tp!1860659)))

(assert (= (and b!6793733 ((_ is ElementMatch!16615) (reg!16944 r!7292))) b!6794556))

(assert (= (and b!6793733 ((_ is Concat!25460) (reg!16944 r!7292))) b!6794557))

(assert (= (and b!6793733 ((_ is Star!16615) (reg!16944 r!7292))) b!6794558))

(assert (= (and b!6793733 ((_ is Union!16615) (reg!16944 r!7292))) b!6794559))

(declare-fun b!6794560 () Bool)

(declare-fun e!4100843 () Bool)

(assert (=> b!6794560 (= e!4100843 tp_is_empty!42483)))

(declare-fun b!6794561 () Bool)

(declare-fun tp!1860665 () Bool)

(declare-fun tp!1860663 () Bool)

(assert (=> b!6794561 (= e!4100843 (and tp!1860665 tp!1860663))))

(declare-fun b!6794563 () Bool)

(declare-fun tp!1860662 () Bool)

(declare-fun tp!1860666 () Bool)

(assert (=> b!6794563 (= e!4100843 (and tp!1860662 tp!1860666))))

(assert (=> b!6793709 (= tp!1860550 e!4100843)))

(declare-fun b!6794562 () Bool)

(declare-fun tp!1860664 () Bool)

(assert (=> b!6794562 (= e!4100843 tp!1860664)))

(assert (= (and b!6793709 ((_ is ElementMatch!16615) (regOne!33742 r!7292))) b!6794560))

(assert (= (and b!6793709 ((_ is Concat!25460) (regOne!33742 r!7292))) b!6794561))

(assert (= (and b!6793709 ((_ is Star!16615) (regOne!33742 r!7292))) b!6794562))

(assert (= (and b!6793709 ((_ is Union!16615) (regOne!33742 r!7292))) b!6794563))

(declare-fun b!6794564 () Bool)

(declare-fun e!4100844 () Bool)

(assert (=> b!6794564 (= e!4100844 tp_is_empty!42483)))

(declare-fun b!6794565 () Bool)

(declare-fun tp!1860670 () Bool)

(declare-fun tp!1860668 () Bool)

(assert (=> b!6794565 (= e!4100844 (and tp!1860670 tp!1860668))))

(declare-fun b!6794567 () Bool)

(declare-fun tp!1860667 () Bool)

(declare-fun tp!1860671 () Bool)

(assert (=> b!6794567 (= e!4100844 (and tp!1860667 tp!1860671))))

(assert (=> b!6793709 (= tp!1860546 e!4100844)))

(declare-fun b!6794566 () Bool)

(declare-fun tp!1860669 () Bool)

(assert (=> b!6794566 (= e!4100844 tp!1860669)))

(assert (= (and b!6793709 ((_ is ElementMatch!16615) (regTwo!33742 r!7292))) b!6794564))

(assert (= (and b!6793709 ((_ is Concat!25460) (regTwo!33742 r!7292))) b!6794565))

(assert (= (and b!6793709 ((_ is Star!16615) (regTwo!33742 r!7292))) b!6794566))

(assert (= (and b!6793709 ((_ is Union!16615) (regTwo!33742 r!7292))) b!6794567))

(declare-fun b_lambda!255969 () Bool)

(assert (= b_lambda!255963 (or b!6793705 b_lambda!255969)))

(declare-fun bs!1810477 () Bool)

(declare-fun d!2134835 () Bool)

(assert (= bs!1810477 (and d!2134835 b!6793705)))

(assert (=> bs!1810477 (= (dynLambda!26356 lambda!382887 lt!2446908) (derivationStepZipperUp!1769 lt!2446908 (h!72469 s!2326)))))

(assert (=> bs!1810477 m!7540866))

(assert (=> d!2134791 d!2134835))

(declare-fun b_lambda!255971 () Bool)

(assert (= b_lambda!255965 (or b!6793705 b_lambda!255971)))

(declare-fun bs!1810478 () Bool)

(declare-fun d!2134837 () Bool)

(assert (= bs!1810478 (and d!2134837 b!6793705)))

(assert (=> bs!1810478 (= (dynLambda!26356 lambda!382887 lt!2446891) (derivationStepZipperUp!1769 lt!2446891 (h!72469 s!2326)))))

(assert (=> bs!1810478 m!7540870))

(assert (=> d!2134799 d!2134837))

(declare-fun b_lambda!255973 () Bool)

(assert (= b_lambda!255951 (or b!6793705 b_lambda!255973)))

(declare-fun bs!1810479 () Bool)

(declare-fun d!2134839 () Bool)

(assert (= bs!1810479 (and d!2134839 b!6793705)))

(assert (=> bs!1810479 (= (dynLambda!26356 lambda!382887 (h!72470 zl!343)) (derivationStepZipperUp!1769 (h!72470 zl!343) (h!72469 s!2326)))))

(assert (=> bs!1810479 m!7540938))

(assert (=> d!2134723 d!2134839))

(declare-fun b_lambda!255975 () Bool)

(assert (= b_lambda!255941 (or b!6793734 b_lambda!255975)))

(declare-fun bs!1810480 () Bool)

(declare-fun d!2134841 () Bool)

(assert (= bs!1810480 (and d!2134841 b!6793734)))

(declare-fun lt!2447030 () Unit!159921)

(assert (=> bs!1810480 (= lt!2447030 (lemmaConcatPreservesForall!444 (exprs!6499 lt!2446891) lt!2446904 lambda!382889))))

(assert (=> bs!1810480 (= (dynLambda!26355 lambda!382888 lt!2446891) (Context!11999 (++!14775 (exprs!6499 lt!2446891) lt!2446904)))))

(declare-fun m!7541548 () Bool)

(assert (=> bs!1810480 m!7541548))

(declare-fun m!7541550 () Bool)

(assert (=> bs!1810480 m!7541550))

(assert (=> d!2134693 d!2134841))

(declare-fun b_lambda!255977 () Bool)

(assert (= b_lambda!255967 (or b!6793705 b_lambda!255977)))

(declare-fun bs!1810481 () Bool)

(declare-fun d!2134843 () Bool)

(assert (= bs!1810481 (and d!2134843 b!6793705)))

(assert (=> bs!1810481 (= (dynLambda!26356 lambda!382887 lt!2446885) (derivationStepZipperUp!1769 lt!2446885 (h!72469 s!2326)))))

(assert (=> bs!1810481 m!7540918))

(assert (=> d!2134809 d!2134843))

(check-sat (not b!6794555) (not b!6794331) (not b!6794554) (not b!6794559) (not d!2134785) (not b!6794537) (not b!6794046) (not b!6794550) (not d!2134805) (not b!6794504) (not bm!616961) (not b!6794326) (not b!6794438) (not b!6793948) (not b!6794358) (not b!6793950) (not b!6794328) (not b!6793884) (not d!2134799) (not b!6794362) (not bm!617028) (not d!2134711) (not b!6794392) (not d!2134815) (not b!6794562) (not b!6794503) (not b!6794519) (not b!6794493) (not b!6794500) (not bm!617032) tp_is_empty!42483 (not b!6794536) (not bs!1810478) (not b!6794472) (not b!6794549) (not b!6794551) (not b!6794357) (not d!2134779) (not d!2134689) (not b!6794124) (not b!6794529) (not b!6794052) (not bm!617033) (not bs!1810480) (not d!2134675) (not b!6794497) (not b!6794204) (not b!6794566) (not b!6794332) (not d!2134789) (not b!6794567) (not bm!617050) (not b!6794051) (not b!6794510) (not b!6794364) (not b!6794518) (not b_lambda!255971) (not bm!617045) (not d!2134723) (not b!6794524) (not b!6794054) (not bs!1810479) (not b!6794378) (not b!6794379) (not b!6794127) (not bm!617034) (not b!6794561) (not d!2134827) (not d!2134787) (not setNonEmpty!46531) (not b!6794509) (not bm!617037) (not b!6793947) (not b!6794374) (not b!6794565) (not d!2134825) (not b!6793949) (not d!2134697) (not d!2134821) (not b!6794360) (not b!6794126) (not b!6793883) (not b!6794365) (not bm!617039) (not d!2134673) (not bm!617051) (not d!2134833) (not b!6794475) (not bm!616981) (not b!6794502) (not d!2134693) (not b!6794479) (not b!6794395) (not d!2134695) (not b_lambda!255975) (not b_lambda!255977) (not bm!617026) (not b!6794478) (not d!2134781) (not b!6794123) (not b!6794053) (not bm!617046) (not d!2134809) (not b!6794553) (not d!2134769) (not bm!616964) (not b_lambda!255969) (not bm!617016) (not bm!617049) (not b!6794558) (not d!2134783) (not d!2134671) (not d!2134823) (not b!6793846) (not b!6794047) (not d!2134791) (not bs!1810481) (not d!2134813) (not b!6794557) (not d!2134773) (not d!2134751) (not bm!617052) (not bs!1810477) (not b!6794491) (not d!2134677) (not bm!616966) (not d!2134829) (not b!6794563) (not b!6794394) (not b!6794508) (not d!2134745) (not b!6794440) (not d!2134657) (not bm!617040) (not d!2134699) (not d!2134771) (not d!2134753) (not b!6794325) (not b!6794483) (not b!6794373) (not b!6794513) (not d!2134663) (not d!2134793) (not d!2134831) (not b!6794371) (not b!6794327) (not b!6794366) (not b_lambda!255973) (not d!2134817) (not b!6794477) (not b!6794050) (not d!2134777))
(check-sat)
(get-model)

(declare-fun d!2135149 () Bool)

(declare-fun c!1263205 () Bool)

(assert (=> d!2135149 (= c!1263205 ((_ is Nil!66022) lt!2447029))))

(declare-fun e!4101227 () (InoxSet Context!11998))

(assert (=> d!2135149 (= (content!12881 lt!2447029) e!4101227)))

(declare-fun b!6795249 () Bool)

(assert (=> b!6795249 (= e!4101227 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795250 () Bool)

(assert (=> b!6795250 (= e!4101227 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) (h!72470 lt!2447029) true) (content!12881 (t!379871 lt!2447029))))))

(assert (= (and d!2135149 c!1263205) b!6795249))

(assert (= (and d!2135149 (not c!1263205)) b!6795250))

(declare-fun m!7542222 () Bool)

(assert (=> b!6795250 m!7542222))

(declare-fun m!7542224 () Bool)

(assert (=> b!6795250 m!7542224))

(assert (=> b!6794513 d!2135149))

(declare-fun d!2135151 () Bool)

(assert (=> d!2135151 (= (isEmpty!38394 (t!379870 s!2326)) ((_ is Nil!66021) (t!379870 s!2326)))))

(assert (=> d!2134671 d!2135151))

(declare-fun b!6795251 () Bool)

(declare-fun e!4101229 () (InoxSet Context!11998))

(declare-fun e!4101230 () (InoxSet Context!11998))

(assert (=> b!6795251 (= e!4101229 e!4101230)))

(declare-fun c!1263208 () Bool)

(assert (=> b!6795251 (= c!1263208 ((_ is Union!16615) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(declare-fun b!6795252 () Bool)

(declare-fun call!617178 () (InoxSet Context!11998))

(declare-fun call!617176 () (InoxSet Context!11998))

(assert (=> b!6795252 (= e!4101230 ((_ map or) call!617178 call!617176))))

(declare-fun b!6795253 () Bool)

(declare-fun e!4101232 () (InoxSet Context!11998))

(declare-fun call!617181 () (InoxSet Context!11998))

(assert (=> b!6795253 (= e!4101232 call!617181)))

(declare-fun call!617179 () List!66144)

(declare-fun c!1263206 () Bool)

(declare-fun c!1263207 () Bool)

(declare-fun bm!617171 () Bool)

(assert (=> bm!617171 (= call!617176 (derivationStepZipperDown!1843 (ite c!1263208 (regTwo!33743 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (ite c!1263207 (regTwo!33742 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (ite c!1263206 (regOne!33742 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (reg!16944 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))) (ite (or c!1263208 c!1263207) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (Context!11999 call!617179)) (h!72469 s!2326)))))

(declare-fun b!6795254 () Bool)

(declare-fun e!4101231 () (InoxSet Context!11998))

(declare-fun e!4101228 () (InoxSet Context!11998))

(assert (=> b!6795254 (= e!4101231 e!4101228)))

(assert (=> b!6795254 (= c!1263206 ((_ is Concat!25460) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(declare-fun bm!617172 () Bool)

(declare-fun call!617177 () (InoxSet Context!11998))

(assert (=> bm!617172 (= call!617177 call!617176)))

(declare-fun bm!617173 () Bool)

(declare-fun call!617180 () List!66144)

(assert (=> bm!617173 (= call!617179 call!617180)))

(declare-fun bm!617174 () Bool)

(assert (=> bm!617174 (= call!617178 (derivationStepZipperDown!1843 (ite c!1263208 (regOne!33743 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (regOne!33742 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))) (ite c!1263208 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (Context!11999 call!617180)) (h!72469 s!2326)))))

(declare-fun d!2135153 () Bool)

(declare-fun c!1263210 () Bool)

(assert (=> d!2135153 (= c!1263210 (and ((_ is ElementMatch!16615) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (= (c!1262803 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72469 s!2326))))))

(assert (=> d!2135153 (= (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72469 s!2326)) e!4101229)))

(declare-fun b!6795255 () Bool)

(assert (=> b!6795255 (= e!4101232 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795256 () Bool)

(assert (=> b!6795256 (= e!4101229 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) true))))

(declare-fun bm!617175 () Bool)

(assert (=> bm!617175 (= call!617181 call!617177)))

(declare-fun bm!617176 () Bool)

(assert (=> bm!617176 (= call!617180 ($colon$colon!2424 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))) (ite (or c!1263207 c!1263206) (regTwo!33742 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))))

(declare-fun b!6795257 () Bool)

(assert (=> b!6795257 (= e!4101231 ((_ map or) call!617178 call!617177))))

(declare-fun b!6795258 () Bool)

(assert (=> b!6795258 (= e!4101228 call!617181)))

(declare-fun b!6795259 () Bool)

(declare-fun e!4101233 () Bool)

(assert (=> b!6795259 (= c!1263207 e!4101233)))

(declare-fun res!2777070 () Bool)

(assert (=> b!6795259 (=> (not res!2777070) (not e!4101233))))

(assert (=> b!6795259 (= res!2777070 ((_ is Concat!25460) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(assert (=> b!6795259 (= e!4101230 e!4101231)))

(declare-fun b!6795260 () Bool)

(assert (=> b!6795260 (= e!4101233 (nullable!6594 (regOne!33742 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))))

(declare-fun b!6795261 () Bool)

(declare-fun c!1263209 () Bool)

(assert (=> b!6795261 (= c!1263209 ((_ is Star!16615) (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(assert (=> b!6795261 (= e!4101228 e!4101232)))

(assert (= (and d!2135153 c!1263210) b!6795256))

(assert (= (and d!2135153 (not c!1263210)) b!6795251))

(assert (= (and b!6795251 c!1263208) b!6795252))

(assert (= (and b!6795251 (not c!1263208)) b!6795259))

(assert (= (and b!6795259 res!2777070) b!6795260))

(assert (= (and b!6795259 c!1263207) b!6795257))

(assert (= (and b!6795259 (not c!1263207)) b!6795254))

(assert (= (and b!6795254 c!1263206) b!6795258))

(assert (= (and b!6795254 (not c!1263206)) b!6795261))

(assert (= (and b!6795261 c!1263209) b!6795253))

(assert (= (and b!6795261 (not c!1263209)) b!6795255))

(assert (= (or b!6795258 b!6795253) bm!617173))

(assert (= (or b!6795258 b!6795253) bm!617175))

(assert (= (or b!6795257 bm!617173) bm!617176))

(assert (= (or b!6795257 bm!617175) bm!617172))

(assert (= (or b!6795252 bm!617172) bm!617171))

(assert (= (or b!6795252 b!6795257) bm!617174))

(declare-fun m!7542226 () Bool)

(assert (=> b!6795256 m!7542226))

(declare-fun m!7542228 () Bool)

(assert (=> b!6795260 m!7542228))

(declare-fun m!7542230 () Bool)

(assert (=> bm!617174 m!7542230))

(declare-fun m!7542232 () Bool)

(assert (=> bm!617171 m!7542232))

(declare-fun m!7542234 () Bool)

(assert (=> bm!617176 m!7542234))

(assert (=> bm!616981 d!2135153))

(declare-fun d!2135155 () Bool)

(assert (=> d!2135155 (= (isDefined!13205 lt!2447002) (not (isEmpty!38398 lt!2447002)))))

(declare-fun bs!1810825 () Bool)

(assert (= bs!1810825 d!2135155))

(declare-fun m!7542236 () Bool)

(assert (=> bs!1810825 m!7542236))

(assert (=> b!6794328 d!2135155))

(declare-fun d!2135157 () Bool)

(assert (=> d!2135157 (= (flatMap!2096 lt!2446892 lambda!382964) (choose!50626 lt!2446892 lambda!382964))))

(declare-fun bs!1810826 () Bool)

(assert (= bs!1810826 d!2135157))

(declare-fun m!7542238 () Bool)

(assert (=> bs!1810826 m!7542238))

(assert (=> d!2134787 d!2135157))

(declare-fun b!6795262 () Bool)

(declare-fun e!4101235 () (InoxSet Context!11998))

(declare-fun e!4101236 () (InoxSet Context!11998))

(assert (=> b!6795262 (= e!4101235 e!4101236)))

(declare-fun c!1263213 () Bool)

(assert (=> b!6795262 (= c!1263213 ((_ is Union!16615) (h!72468 (exprs!6499 lt!2446891))))))

(declare-fun b!6795263 () Bool)

(declare-fun call!617184 () (InoxSet Context!11998))

(declare-fun call!617182 () (InoxSet Context!11998))

(assert (=> b!6795263 (= e!4101236 ((_ map or) call!617184 call!617182))))

(declare-fun b!6795264 () Bool)

(declare-fun e!4101238 () (InoxSet Context!11998))

(declare-fun call!617187 () (InoxSet Context!11998))

(assert (=> b!6795264 (= e!4101238 call!617187)))

(declare-fun call!617185 () List!66144)

(declare-fun bm!617177 () Bool)

(declare-fun c!1263212 () Bool)

(declare-fun c!1263211 () Bool)

(assert (=> bm!617177 (= call!617182 (derivationStepZipperDown!1843 (ite c!1263213 (regTwo!33743 (h!72468 (exprs!6499 lt!2446891))) (ite c!1263212 (regTwo!33742 (h!72468 (exprs!6499 lt!2446891))) (ite c!1263211 (regOne!33742 (h!72468 (exprs!6499 lt!2446891))) (reg!16944 (h!72468 (exprs!6499 lt!2446891)))))) (ite (or c!1263213 c!1263212) (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (Context!11999 call!617185)) (h!72469 s!2326)))))

(declare-fun b!6795265 () Bool)

(declare-fun e!4101237 () (InoxSet Context!11998))

(declare-fun e!4101234 () (InoxSet Context!11998))

(assert (=> b!6795265 (= e!4101237 e!4101234)))

(assert (=> b!6795265 (= c!1263211 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446891))))))

(declare-fun bm!617178 () Bool)

(declare-fun call!617183 () (InoxSet Context!11998))

(assert (=> bm!617178 (= call!617183 call!617182)))

(declare-fun bm!617179 () Bool)

(declare-fun call!617186 () List!66144)

(assert (=> bm!617179 (= call!617185 call!617186)))

(declare-fun bm!617180 () Bool)

(assert (=> bm!617180 (= call!617184 (derivationStepZipperDown!1843 (ite c!1263213 (regOne!33743 (h!72468 (exprs!6499 lt!2446891))) (regOne!33742 (h!72468 (exprs!6499 lt!2446891)))) (ite c!1263213 (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (Context!11999 call!617186)) (h!72469 s!2326)))))

(declare-fun d!2135159 () Bool)

(declare-fun c!1263215 () Bool)

(assert (=> d!2135159 (= c!1263215 (and ((_ is ElementMatch!16615) (h!72468 (exprs!6499 lt!2446891))) (= (c!1262803 (h!72468 (exprs!6499 lt!2446891))) (h!72469 s!2326))))))

(assert (=> d!2135159 (= (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446891)) (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (h!72469 s!2326)) e!4101235)))

(declare-fun b!6795266 () Bool)

(assert (=> b!6795266 (= e!4101238 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795267 () Bool)

(assert (=> b!6795267 (= e!4101235 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (t!379869 (exprs!6499 lt!2446891))) true))))

(declare-fun bm!617181 () Bool)

(assert (=> bm!617181 (= call!617187 call!617183)))

(declare-fun bm!617182 () Bool)

(assert (=> bm!617182 (= call!617186 ($colon$colon!2424 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891)))) (ite (or c!1263212 c!1263211) (regTwo!33742 (h!72468 (exprs!6499 lt!2446891))) (h!72468 (exprs!6499 lt!2446891)))))))

(declare-fun b!6795268 () Bool)

(assert (=> b!6795268 (= e!4101237 ((_ map or) call!617184 call!617183))))

(declare-fun b!6795269 () Bool)

(assert (=> b!6795269 (= e!4101234 call!617187)))

(declare-fun b!6795270 () Bool)

(declare-fun e!4101239 () Bool)

(assert (=> b!6795270 (= c!1263212 e!4101239)))

(declare-fun res!2777071 () Bool)

(assert (=> b!6795270 (=> (not res!2777071) (not e!4101239))))

(assert (=> b!6795270 (= res!2777071 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446891))))))

(assert (=> b!6795270 (= e!4101236 e!4101237)))

(declare-fun b!6795271 () Bool)

(assert (=> b!6795271 (= e!4101239 (nullable!6594 (regOne!33742 (h!72468 (exprs!6499 lt!2446891)))))))

(declare-fun b!6795272 () Bool)

(declare-fun c!1263214 () Bool)

(assert (=> b!6795272 (= c!1263214 ((_ is Star!16615) (h!72468 (exprs!6499 lt!2446891))))))

(assert (=> b!6795272 (= e!4101234 e!4101238)))

(assert (= (and d!2135159 c!1263215) b!6795267))

(assert (= (and d!2135159 (not c!1263215)) b!6795262))

(assert (= (and b!6795262 c!1263213) b!6795263))

(assert (= (and b!6795262 (not c!1263213)) b!6795270))

(assert (= (and b!6795270 res!2777071) b!6795271))

(assert (= (and b!6795270 c!1263212) b!6795268))

(assert (= (and b!6795270 (not c!1263212)) b!6795265))

(assert (= (and b!6795265 c!1263211) b!6795269))

(assert (= (and b!6795265 (not c!1263211)) b!6795272))

(assert (= (and b!6795272 c!1263214) b!6795264))

(assert (= (and b!6795272 (not c!1263214)) b!6795266))

(assert (= (or b!6795269 b!6795264) bm!617179))

(assert (= (or b!6795269 b!6795264) bm!617181))

(assert (= (or b!6795268 bm!617179) bm!617182))

(assert (= (or b!6795268 bm!617181) bm!617178))

(assert (= (or b!6795263 bm!617178) bm!617177))

(assert (= (or b!6795263 b!6795268) bm!617180))

(declare-fun m!7542240 () Bool)

(assert (=> b!6795267 m!7542240))

(declare-fun m!7542242 () Bool)

(assert (=> b!6795271 m!7542242))

(declare-fun m!7542244 () Bool)

(assert (=> bm!617180 m!7542244))

(declare-fun m!7542246 () Bool)

(assert (=> bm!617177 m!7542246))

(declare-fun m!7542248 () Bool)

(assert (=> bm!617182 m!7542248))

(assert (=> bm!617033 d!2135159))

(declare-fun d!2135161 () Bool)

(declare-fun res!2777076 () Bool)

(declare-fun e!4101244 () Bool)

(assert (=> d!2135161 (=> res!2777076 e!4101244)))

(assert (=> d!2135161 (= res!2777076 ((_ is Nil!66020) (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904)))))

(assert (=> d!2135161 (= (forall!15807 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904) lambda!382889) e!4101244)))

(declare-fun b!6795277 () Bool)

(declare-fun e!4101245 () Bool)

(assert (=> b!6795277 (= e!4101244 e!4101245)))

(declare-fun res!2777077 () Bool)

(assert (=> b!6795277 (=> (not res!2777077) (not e!4101245))))

(declare-fun dynLambda!26358 (Int Regex!16615) Bool)

(assert (=> b!6795277 (= res!2777077 (dynLambda!26358 lambda!382889 (h!72468 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904))))))

(declare-fun b!6795278 () Bool)

(assert (=> b!6795278 (= e!4101245 (forall!15807 (t!379869 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904)) lambda!382889))))

(assert (= (and d!2135161 (not res!2777076)) b!6795277))

(assert (= (and b!6795277 res!2777077) b!6795278))

(declare-fun b_lambda!256031 () Bool)

(assert (=> (not b_lambda!256031) (not b!6795277)))

(declare-fun m!7542250 () Bool)

(assert (=> b!6795277 m!7542250))

(declare-fun m!7542252 () Bool)

(assert (=> b!6795278 m!7542252))

(assert (=> d!2134695 d!2135161))

(assert (=> d!2134695 d!2134699))

(declare-fun d!2135163 () Bool)

(assert (=> d!2135163 (forall!15807 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904) lambda!382889)))

(assert (=> d!2135163 true))

(declare-fun _$78!402 () Unit!159921)

(assert (=> d!2135163 (= (choose!50624 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904 lambda!382889) _$78!402)))

(declare-fun bs!1810827 () Bool)

(assert (= bs!1810827 d!2135163))

(assert (=> bs!1810827 m!7540926))

(assert (=> bs!1810827 m!7540926))

(assert (=> bs!1810827 m!7541194))

(assert (=> d!2134695 d!2135163))

(declare-fun d!2135165 () Bool)

(declare-fun res!2777078 () Bool)

(declare-fun e!4101246 () Bool)

(assert (=> d!2135165 (=> res!2777078 e!4101246)))

(assert (=> d!2135165 (= res!2777078 ((_ is Nil!66020) (Cons!66020 (reg!16944 r!7292) Nil!66020)))))

(assert (=> d!2135165 (= (forall!15807 (Cons!66020 (reg!16944 r!7292) Nil!66020) lambda!382889) e!4101246)))

(declare-fun b!6795279 () Bool)

(declare-fun e!4101247 () Bool)

(assert (=> b!6795279 (= e!4101246 e!4101247)))

(declare-fun res!2777079 () Bool)

(assert (=> b!6795279 (=> (not res!2777079) (not e!4101247))))

(assert (=> b!6795279 (= res!2777079 (dynLambda!26358 lambda!382889 (h!72468 (Cons!66020 (reg!16944 r!7292) Nil!66020))))))

(declare-fun b!6795280 () Bool)

(assert (=> b!6795280 (= e!4101247 (forall!15807 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)) lambda!382889))))

(assert (= (and d!2135165 (not res!2777078)) b!6795279))

(assert (= (and b!6795279 res!2777079) b!6795280))

(declare-fun b_lambda!256033 () Bool)

(assert (=> (not b_lambda!256033) (not b!6795279)))

(declare-fun m!7542254 () Bool)

(assert (=> b!6795279 m!7542254))

(declare-fun m!7542256 () Bool)

(assert (=> b!6795280 m!7542256))

(assert (=> d!2134695 d!2135165))

(declare-fun b!6795281 () Bool)

(declare-fun e!4101249 () (InoxSet Context!11998))

(declare-fun e!4101250 () (InoxSet Context!11998))

(assert (=> b!6795281 (= e!4101249 e!4101250)))

(declare-fun c!1263218 () Bool)

(assert (=> b!6795281 (= c!1263218 ((_ is Union!16615) (h!72468 (exprs!6499 lt!2446908))))))

(declare-fun b!6795282 () Bool)

(declare-fun call!617190 () (InoxSet Context!11998))

(declare-fun call!617188 () (InoxSet Context!11998))

(assert (=> b!6795282 (= e!4101250 ((_ map or) call!617190 call!617188))))

(declare-fun b!6795283 () Bool)

(declare-fun e!4101252 () (InoxSet Context!11998))

(declare-fun call!617193 () (InoxSet Context!11998))

(assert (=> b!6795283 (= e!4101252 call!617193)))

(declare-fun c!1263217 () Bool)

(declare-fun c!1263216 () Bool)

(declare-fun call!617191 () List!66144)

(declare-fun bm!617183 () Bool)

(assert (=> bm!617183 (= call!617188 (derivationStepZipperDown!1843 (ite c!1263218 (regTwo!33743 (h!72468 (exprs!6499 lt!2446908))) (ite c!1263217 (regTwo!33742 (h!72468 (exprs!6499 lt!2446908))) (ite c!1263216 (regOne!33742 (h!72468 (exprs!6499 lt!2446908))) (reg!16944 (h!72468 (exprs!6499 lt!2446908)))))) (ite (or c!1263218 c!1263217) (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (Context!11999 call!617191)) (h!72469 s!2326)))))

(declare-fun b!6795284 () Bool)

(declare-fun e!4101251 () (InoxSet Context!11998))

(declare-fun e!4101248 () (InoxSet Context!11998))

(assert (=> b!6795284 (= e!4101251 e!4101248)))

(assert (=> b!6795284 (= c!1263216 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446908))))))

(declare-fun bm!617184 () Bool)

(declare-fun call!617189 () (InoxSet Context!11998))

(assert (=> bm!617184 (= call!617189 call!617188)))

(declare-fun bm!617185 () Bool)

(declare-fun call!617192 () List!66144)

(assert (=> bm!617185 (= call!617191 call!617192)))

(declare-fun bm!617186 () Bool)

(assert (=> bm!617186 (= call!617190 (derivationStepZipperDown!1843 (ite c!1263218 (regOne!33743 (h!72468 (exprs!6499 lt!2446908))) (regOne!33742 (h!72468 (exprs!6499 lt!2446908)))) (ite c!1263218 (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (Context!11999 call!617192)) (h!72469 s!2326)))))

(declare-fun d!2135167 () Bool)

(declare-fun c!1263220 () Bool)

(assert (=> d!2135167 (= c!1263220 (and ((_ is ElementMatch!16615) (h!72468 (exprs!6499 lt!2446908))) (= (c!1262803 (h!72468 (exprs!6499 lt!2446908))) (h!72469 s!2326))))))

(assert (=> d!2135167 (= (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446908)) (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (h!72469 s!2326)) e!4101249)))

(declare-fun b!6795285 () Bool)

(assert (=> b!6795285 (= e!4101252 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795286 () Bool)

(assert (=> b!6795286 (= e!4101249 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (t!379869 (exprs!6499 lt!2446908))) true))))

(declare-fun bm!617187 () Bool)

(assert (=> bm!617187 (= call!617193 call!617189)))

(declare-fun bm!617188 () Bool)

(assert (=> bm!617188 (= call!617192 ($colon$colon!2424 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908)))) (ite (or c!1263217 c!1263216) (regTwo!33742 (h!72468 (exprs!6499 lt!2446908))) (h!72468 (exprs!6499 lt!2446908)))))))

(declare-fun b!6795287 () Bool)

(assert (=> b!6795287 (= e!4101251 ((_ map or) call!617190 call!617189))))

(declare-fun b!6795288 () Bool)

(assert (=> b!6795288 (= e!4101248 call!617193)))

(declare-fun b!6795289 () Bool)

(declare-fun e!4101253 () Bool)

(assert (=> b!6795289 (= c!1263217 e!4101253)))

(declare-fun res!2777080 () Bool)

(assert (=> b!6795289 (=> (not res!2777080) (not e!4101253))))

(assert (=> b!6795289 (= res!2777080 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446908))))))

(assert (=> b!6795289 (= e!4101250 e!4101251)))

(declare-fun b!6795290 () Bool)

(assert (=> b!6795290 (= e!4101253 (nullable!6594 (regOne!33742 (h!72468 (exprs!6499 lt!2446908)))))))

(declare-fun b!6795291 () Bool)

(declare-fun c!1263219 () Bool)

(assert (=> b!6795291 (= c!1263219 ((_ is Star!16615) (h!72468 (exprs!6499 lt!2446908))))))

(assert (=> b!6795291 (= e!4101248 e!4101252)))

(assert (= (and d!2135167 c!1263220) b!6795286))

(assert (= (and d!2135167 (not c!1263220)) b!6795281))

(assert (= (and b!6795281 c!1263218) b!6795282))

(assert (= (and b!6795281 (not c!1263218)) b!6795289))

(assert (= (and b!6795289 res!2777080) b!6795290))

(assert (= (and b!6795289 c!1263217) b!6795287))

(assert (= (and b!6795289 (not c!1263217)) b!6795284))

(assert (= (and b!6795284 c!1263216) b!6795288))

(assert (= (and b!6795284 (not c!1263216)) b!6795291))

(assert (= (and b!6795291 c!1263219) b!6795283))

(assert (= (and b!6795291 (not c!1263219)) b!6795285))

(assert (= (or b!6795288 b!6795283) bm!617185))

(assert (= (or b!6795288 b!6795283) bm!617187))

(assert (= (or b!6795287 bm!617185) bm!617188))

(assert (= (or b!6795287 bm!617187) bm!617184))

(assert (= (or b!6795282 bm!617184) bm!617183))

(assert (= (or b!6795282 b!6795287) bm!617186))

(declare-fun m!7542258 () Bool)

(assert (=> b!6795286 m!7542258))

(declare-fun m!7542260 () Bool)

(assert (=> b!6795290 m!7542260))

(declare-fun m!7542262 () Bool)

(assert (=> bm!617186 m!7542262))

(declare-fun m!7542264 () Bool)

(assert (=> bm!617183 m!7542264))

(declare-fun m!7542266 () Bool)

(assert (=> bm!617188 m!7542266))

(assert (=> bm!617032 d!2135167))

(declare-fun bs!1810828 () Bool)

(declare-fun d!2135169 () Bool)

(assert (= bs!1810828 (and d!2135169 d!2134829)))

(declare-fun lambda!383016 () Int)

(assert (=> bs!1810828 (= lambda!383016 lambda!382973)))

(declare-fun bs!1810829 () Bool)

(assert (= bs!1810829 (and d!2135169 b!6793734)))

(assert (=> bs!1810829 (= lambda!383016 lambda!382889)))

(declare-fun bs!1810830 () Bool)

(assert (= bs!1810830 (and d!2135169 d!2134677)))

(assert (=> bs!1810830 (= lambda!383016 lambda!382930)))

(declare-fun bs!1810831 () Bool)

(assert (= bs!1810831 (and d!2135169 d!2134689)))

(assert (=> bs!1810831 (= lambda!383016 lambda!382932)))

(declare-fun bs!1810832 () Bool)

(assert (= bs!1810832 (and d!2135169 d!2134785)))

(assert (=> bs!1810832 (= lambda!383016 lambda!382963)))

(declare-fun bs!1810833 () Bool)

(assert (= bs!1810833 (and d!2135169 d!2134783)))

(assert (=> bs!1810833 (= lambda!383016 lambda!382960)))

(declare-fun bs!1810834 () Bool)

(assert (= bs!1810834 (and d!2135169 d!2134675)))

(assert (=> bs!1810834 (= lambda!383016 lambda!382921)))

(assert (=> d!2135169 (= (inv!84784 setElem!46531) (forall!15807 (exprs!6499 setElem!46531) lambda!383016))))

(declare-fun bs!1810835 () Bool)

(assert (= bs!1810835 d!2135169))

(declare-fun m!7542268 () Bool)

(assert (=> bs!1810835 m!7542268))

(assert (=> setNonEmpty!46531 d!2135169))

(declare-fun d!2135171 () Bool)

(assert (=> d!2135171 (= (isEmptyExpr!1973 lt!2446951) ((_ is EmptyExpr!16615) lt!2446951))))

(assert (=> b!6794054 d!2135171))

(declare-fun bs!1810836 () Bool)

(declare-fun d!2135173 () Bool)

(assert (= bs!1810836 (and d!2135173 d!2134829)))

(declare-fun lambda!383017 () Int)

(assert (=> bs!1810836 (= lambda!383017 lambda!382973)))

(declare-fun bs!1810837 () Bool)

(assert (= bs!1810837 (and d!2135173 b!6793734)))

(assert (=> bs!1810837 (= lambda!383017 lambda!382889)))

(declare-fun bs!1810838 () Bool)

(assert (= bs!1810838 (and d!2135173 d!2134677)))

(assert (=> bs!1810838 (= lambda!383017 lambda!382930)))

(declare-fun bs!1810839 () Bool)

(assert (= bs!1810839 (and d!2135173 d!2134689)))

(assert (=> bs!1810839 (= lambda!383017 lambda!382932)))

(declare-fun bs!1810840 () Bool)

(assert (= bs!1810840 (and d!2135173 d!2134785)))

(assert (=> bs!1810840 (= lambda!383017 lambda!382963)))

(declare-fun bs!1810841 () Bool)

(assert (= bs!1810841 (and d!2135173 d!2134783)))

(assert (=> bs!1810841 (= lambda!383017 lambda!382960)))

(declare-fun bs!1810842 () Bool)

(assert (= bs!1810842 (and d!2135173 d!2134675)))

(assert (=> bs!1810842 (= lambda!383017 lambda!382921)))

(declare-fun bs!1810843 () Bool)

(assert (= bs!1810843 (and d!2135173 d!2135169)))

(assert (=> bs!1810843 (= lambda!383017 lambda!383016)))

(declare-fun b!6795292 () Bool)

(declare-fun e!4101257 () Bool)

(declare-fun e!4101258 () Bool)

(assert (=> b!6795292 (= e!4101257 e!4101258)))

(declare-fun c!1263224 () Bool)

(assert (=> b!6795292 (= c!1263224 (isEmpty!38397 (tail!12727 (t!379869 (unfocusZipperList!2036 zl!343)))))))

(declare-fun b!6795293 () Bool)

(declare-fun lt!2447068 () Regex!16615)

(assert (=> b!6795293 (= e!4101258 (= lt!2447068 (head!13642 (t!379869 (unfocusZipperList!2036 zl!343)))))))

(declare-fun b!6795294 () Bool)

(declare-fun e!4101256 () Regex!16615)

(assert (=> b!6795294 (= e!4101256 (h!72468 (t!379869 (unfocusZipperList!2036 zl!343))))))

(declare-fun b!6795295 () Bool)

(declare-fun e!4101255 () Bool)

(assert (=> b!6795295 (= e!4101255 e!4101257)))

(declare-fun c!1263221 () Bool)

(assert (=> b!6795295 (= c!1263221 (isEmpty!38397 (t!379869 (unfocusZipperList!2036 zl!343))))))

(assert (=> d!2135173 e!4101255))

(declare-fun res!2777081 () Bool)

(assert (=> d!2135173 (=> (not res!2777081) (not e!4101255))))

(assert (=> d!2135173 (= res!2777081 (validRegex!8351 lt!2447068))))

(assert (=> d!2135173 (= lt!2447068 e!4101256)))

(declare-fun c!1263223 () Bool)

(declare-fun e!4101259 () Bool)

(assert (=> d!2135173 (= c!1263223 e!4101259)))

(declare-fun res!2777082 () Bool)

(assert (=> d!2135173 (=> (not res!2777082) (not e!4101259))))

(assert (=> d!2135173 (= res!2777082 ((_ is Cons!66020) (t!379869 (unfocusZipperList!2036 zl!343))))))

(assert (=> d!2135173 (forall!15807 (t!379869 (unfocusZipperList!2036 zl!343)) lambda!383017)))

(assert (=> d!2135173 (= (generalisedUnion!2459 (t!379869 (unfocusZipperList!2036 zl!343))) lt!2447068)))

(declare-fun b!6795296 () Bool)

(declare-fun e!4101254 () Regex!16615)

(assert (=> b!6795296 (= e!4101254 EmptyLang!16615)))

(declare-fun b!6795297 () Bool)

(assert (=> b!6795297 (= e!4101258 (isUnion!1411 lt!2447068))))

(declare-fun b!6795298 () Bool)

(assert (=> b!6795298 (= e!4101256 e!4101254)))

(declare-fun c!1263222 () Bool)

(assert (=> b!6795298 (= c!1263222 ((_ is Cons!66020) (t!379869 (unfocusZipperList!2036 zl!343))))))

(declare-fun b!6795299 () Bool)

(assert (=> b!6795299 (= e!4101257 (isEmptyLang!1981 lt!2447068))))

(declare-fun b!6795300 () Bool)

(assert (=> b!6795300 (= e!4101254 (Union!16615 (h!72468 (t!379869 (unfocusZipperList!2036 zl!343))) (generalisedUnion!2459 (t!379869 (t!379869 (unfocusZipperList!2036 zl!343))))))))

(declare-fun b!6795301 () Bool)

(assert (=> b!6795301 (= e!4101259 (isEmpty!38397 (t!379869 (t!379869 (unfocusZipperList!2036 zl!343)))))))

(assert (= (and d!2135173 res!2777082) b!6795301))

(assert (= (and d!2135173 c!1263223) b!6795294))

(assert (= (and d!2135173 (not c!1263223)) b!6795298))

(assert (= (and b!6795298 c!1263222) b!6795300))

(assert (= (and b!6795298 (not c!1263222)) b!6795296))

(assert (= (and d!2135173 res!2777081) b!6795295))

(assert (= (and b!6795295 c!1263221) b!6795299))

(assert (= (and b!6795295 (not c!1263221)) b!6795292))

(assert (= (and b!6795292 c!1263224) b!6795293))

(assert (= (and b!6795292 (not c!1263224)) b!6795297))

(declare-fun m!7542270 () Bool)

(assert (=> b!6795292 m!7542270))

(assert (=> b!6795292 m!7542270))

(declare-fun m!7542272 () Bool)

(assert (=> b!6795292 m!7542272))

(declare-fun m!7542274 () Bool)

(assert (=> b!6795297 m!7542274))

(declare-fun m!7542276 () Bool)

(assert (=> b!6795293 m!7542276))

(declare-fun m!7542278 () Bool)

(assert (=> b!6795301 m!7542278))

(assert (=> b!6795295 m!7541422))

(declare-fun m!7542280 () Bool)

(assert (=> d!2135173 m!7542280))

(declare-fun m!7542282 () Bool)

(assert (=> d!2135173 m!7542282))

(declare-fun m!7542284 () Bool)

(assert (=> b!6795299 m!7542284))

(declare-fun m!7542286 () Bool)

(assert (=> b!6795300 m!7542286))

(assert (=> b!6794365 d!2135173))

(declare-fun d!2135175 () Bool)

(assert (=> d!2135175 (= (isEmpty!38394 (tail!12726 s!2326)) ((_ is Nil!66021) (tail!12726 s!2326)))))

(assert (=> b!6794477 d!2135175))

(declare-fun d!2135177 () Bool)

(assert (=> d!2135177 (= (tail!12726 s!2326) (t!379870 s!2326))))

(assert (=> b!6794477 d!2135177))

(declare-fun d!2135179 () Bool)

(declare-fun nullableFct!2498 (Regex!16615) Bool)

(assert (=> d!2135179 (= (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (nullableFct!2498 (h!72468 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))

(declare-fun bs!1810844 () Bool)

(assert (= bs!1810844 d!2135179))

(declare-fun m!7542288 () Bool)

(assert (=> bs!1810844 m!7542288))

(assert (=> b!6793884 d!2135179))

(declare-fun d!2135181 () Bool)

(assert (=> d!2135181 (= (isConcat!1496 lt!2446951) ((_ is Concat!25460) lt!2446951))))

(assert (=> b!6794050 d!2135181))

(declare-fun d!2135183 () Bool)

(assert (=> d!2135183 true))

(declare-fun setRes!46544 () Bool)

(assert (=> d!2135183 setRes!46544))

(declare-fun condSetEmpty!46544 () Bool)

(declare-fun res!2777085 () (InoxSet Context!11998))

(assert (=> d!2135183 (= condSetEmpty!46544 (= res!2777085 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> d!2135183 (= (choose!50626 z!1189 lambda!382887) res!2777085)))

(declare-fun setIsEmpty!46544 () Bool)

(assert (=> setIsEmpty!46544 setRes!46544))

(declare-fun e!4101262 () Bool)

(declare-fun setElem!46544 () Context!11998)

(declare-fun setNonEmpty!46544 () Bool)

(declare-fun tp!1860849 () Bool)

(assert (=> setNonEmpty!46544 (= setRes!46544 (and tp!1860849 (inv!84784 setElem!46544) e!4101262))))

(declare-fun setRest!46544 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46544 (= res!2777085 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46544 true) setRest!46544))))

(declare-fun b!6795304 () Bool)

(declare-fun tp!1860848 () Bool)

(assert (=> b!6795304 (= e!4101262 tp!1860848)))

(assert (= (and d!2135183 condSetEmpty!46544) setIsEmpty!46544))

(assert (= (and d!2135183 (not condSetEmpty!46544)) setNonEmpty!46544))

(assert (= setNonEmpty!46544 b!6795304))

(declare-fun m!7542290 () Bool)

(assert (=> setNonEmpty!46544 m!7542290))

(assert (=> d!2134711 d!2135183))

(declare-fun b!6795305 () Bool)

(declare-fun e!4101264 () (InoxSet Context!11998))

(declare-fun e!4101265 () (InoxSet Context!11998))

(assert (=> b!6795305 (= e!4101264 e!4101265)))

(declare-fun c!1263227 () Bool)

(assert (=> b!6795305 (= c!1263227 ((_ is Union!16615) (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6795306 () Bool)

(declare-fun call!617196 () (InoxSet Context!11998))

(declare-fun call!617194 () (InoxSet Context!11998))

(assert (=> b!6795306 (= e!4101265 ((_ map or) call!617196 call!617194))))

(declare-fun b!6795307 () Bool)

(declare-fun e!4101267 () (InoxSet Context!11998))

(declare-fun call!617199 () (InoxSet Context!11998))

(assert (=> b!6795307 (= e!4101267 call!617199)))

(declare-fun c!1263226 () Bool)

(declare-fun bm!617189 () Bool)

(declare-fun c!1263225 () Bool)

(declare-fun call!617197 () List!66144)

(assert (=> bm!617189 (= call!617194 (derivationStepZipperDown!1843 (ite c!1263227 (regTwo!33743 (h!72468 (exprs!6499 (h!72470 zl!343)))) (ite c!1263226 (regTwo!33742 (h!72468 (exprs!6499 (h!72470 zl!343)))) (ite c!1263225 (regOne!33742 (h!72468 (exprs!6499 (h!72470 zl!343)))) (reg!16944 (h!72468 (exprs!6499 (h!72470 zl!343))))))) (ite (or c!1263227 c!1263226) (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (Context!11999 call!617197)) (h!72469 s!2326)))))

(declare-fun b!6795308 () Bool)

(declare-fun e!4101266 () (InoxSet Context!11998))

(declare-fun e!4101263 () (InoxSet Context!11998))

(assert (=> b!6795308 (= e!4101266 e!4101263)))

(assert (=> b!6795308 (= c!1263225 ((_ is Concat!25460) (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun bm!617190 () Bool)

(declare-fun call!617195 () (InoxSet Context!11998))

(assert (=> bm!617190 (= call!617195 call!617194)))

(declare-fun bm!617191 () Bool)

(declare-fun call!617198 () List!66144)

(assert (=> bm!617191 (= call!617197 call!617198)))

(declare-fun bm!617192 () Bool)

(assert (=> bm!617192 (= call!617196 (derivationStepZipperDown!1843 (ite c!1263227 (regOne!33743 (h!72468 (exprs!6499 (h!72470 zl!343)))) (regOne!33742 (h!72468 (exprs!6499 (h!72470 zl!343))))) (ite c!1263227 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (Context!11999 call!617198)) (h!72469 s!2326)))))

(declare-fun d!2135185 () Bool)

(declare-fun c!1263229 () Bool)

(assert (=> d!2135185 (= c!1263229 (and ((_ is ElementMatch!16615) (h!72468 (exprs!6499 (h!72470 zl!343)))) (= (c!1262803 (h!72468 (exprs!6499 (h!72470 zl!343)))) (h!72469 s!2326))))))

(assert (=> d!2135185 (= (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (h!72470 zl!343))) (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (h!72469 s!2326)) e!4101264)))

(declare-fun b!6795309 () Bool)

(assert (=> b!6795309 (= e!4101267 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795310 () Bool)

(assert (=> b!6795310 (= e!4101264 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) true))))

(declare-fun bm!617193 () Bool)

(assert (=> bm!617193 (= call!617199 call!617195)))

(declare-fun bm!617194 () Bool)

(assert (=> bm!617194 (= call!617198 ($colon$colon!2424 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343))))) (ite (or c!1263226 c!1263225) (regTwo!33742 (h!72468 (exprs!6499 (h!72470 zl!343)))) (h!72468 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6795311 () Bool)

(assert (=> b!6795311 (= e!4101266 ((_ map or) call!617196 call!617195))))

(declare-fun b!6795312 () Bool)

(assert (=> b!6795312 (= e!4101263 call!617199)))

(declare-fun b!6795313 () Bool)

(declare-fun e!4101268 () Bool)

(assert (=> b!6795313 (= c!1263226 e!4101268)))

(declare-fun res!2777086 () Bool)

(assert (=> b!6795313 (=> (not res!2777086) (not e!4101268))))

(assert (=> b!6795313 (= res!2777086 ((_ is Concat!25460) (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> b!6795313 (= e!4101265 e!4101266)))

(declare-fun b!6795314 () Bool)

(assert (=> b!6795314 (= e!4101268 (nullable!6594 (regOne!33742 (h!72468 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6795315 () Bool)

(declare-fun c!1263228 () Bool)

(assert (=> b!6795315 (= c!1263228 ((_ is Star!16615) (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> b!6795315 (= e!4101263 e!4101267)))

(assert (= (and d!2135185 c!1263229) b!6795310))

(assert (= (and d!2135185 (not c!1263229)) b!6795305))

(assert (= (and b!6795305 c!1263227) b!6795306))

(assert (= (and b!6795305 (not c!1263227)) b!6795313))

(assert (= (and b!6795313 res!2777086) b!6795314))

(assert (= (and b!6795313 c!1263226) b!6795311))

(assert (= (and b!6795313 (not c!1263226)) b!6795308))

(assert (= (and b!6795308 c!1263225) b!6795312))

(assert (= (and b!6795308 (not c!1263225)) b!6795315))

(assert (= (and b!6795315 c!1263228) b!6795307))

(assert (= (and b!6795315 (not c!1263228)) b!6795309))

(assert (= (or b!6795312 b!6795307) bm!617191))

(assert (= (or b!6795312 b!6795307) bm!617193))

(assert (= (or b!6795311 bm!617191) bm!617194))

(assert (= (or b!6795311 bm!617193) bm!617190))

(assert (= (or b!6795306 bm!617190) bm!617189))

(assert (= (or b!6795306 b!6795311) bm!617192))

(declare-fun m!7542292 () Bool)

(assert (=> b!6795310 m!7542292))

(declare-fun m!7542294 () Bool)

(assert (=> b!6795314 m!7542294))

(declare-fun m!7542296 () Bool)

(assert (=> bm!617192 m!7542296))

(declare-fun m!7542298 () Bool)

(assert (=> bm!617189 m!7542298))

(declare-fun m!7542300 () Bool)

(assert (=> bm!617194 m!7542300))

(assert (=> bm!617016 d!2135185))

(declare-fun d!2135187 () Bool)

(assert (=> d!2135187 (= (nullable!6594 (h!72468 (exprs!6499 (h!72470 zl!343)))) (nullableFct!2498 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun bs!1810845 () Bool)

(assert (= bs!1810845 d!2135187))

(declare-fun m!7542302 () Bool)

(assert (=> bs!1810845 m!7542302))

(assert (=> b!6794127 d!2135187))

(declare-fun d!2135189 () Bool)

(assert (=> d!2135189 (= (nullable!6594 (h!72468 (exprs!6499 lt!2446891))) (nullableFct!2498 (h!72468 (exprs!6499 lt!2446891))))))

(declare-fun bs!1810846 () Bool)

(assert (= bs!1810846 d!2135189))

(declare-fun m!7542304 () Bool)

(assert (=> bs!1810846 m!7542304))

(assert (=> b!6794379 d!2135189))

(declare-fun e!4101270 () Bool)

(declare-fun lt!2447069 () List!66144)

(declare-fun b!6795319 () Bool)

(assert (=> b!6795319 (= e!4101270 (or (not (= lt!2446904 Nil!66020)) (= lt!2447069 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)))))))

(declare-fun b!6795318 () Bool)

(declare-fun res!2777087 () Bool)

(assert (=> b!6795318 (=> (not res!2777087) (not e!4101270))))

(assert (=> b!6795318 (= res!2777087 (= (size!40653 lt!2447069) (+ (size!40653 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020))) (size!40653 lt!2446904))))))

(declare-fun b!6795317 () Bool)

(declare-fun e!4101269 () List!66144)

(assert (=> b!6795317 (= e!4101269 (Cons!66020 (h!72468 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020))) (++!14775 (t!379869 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020))) lt!2446904)))))

(declare-fun d!2135191 () Bool)

(assert (=> d!2135191 e!4101270))

(declare-fun res!2777088 () Bool)

(assert (=> d!2135191 (=> (not res!2777088) (not e!4101270))))

(assert (=> d!2135191 (= res!2777088 (= (content!12880 lt!2447069) ((_ map or) (content!12880 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020))) (content!12880 lt!2446904))))))

(assert (=> d!2135191 (= lt!2447069 e!4101269)))

(declare-fun c!1263230 () Bool)

(assert (=> d!2135191 (= c!1263230 ((_ is Nil!66020) (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020))))))

(assert (=> d!2135191 (= (++!14775 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)) lt!2446904) lt!2447069)))

(declare-fun b!6795316 () Bool)

(assert (=> b!6795316 (= e!4101269 lt!2446904)))

(assert (= (and d!2135191 c!1263230) b!6795316))

(assert (= (and d!2135191 (not c!1263230)) b!6795317))

(assert (= (and d!2135191 res!2777088) b!6795318))

(assert (= (and b!6795318 res!2777087) b!6795319))

(declare-fun m!7542306 () Bool)

(assert (=> b!6795318 m!7542306))

(declare-fun m!7542308 () Bool)

(assert (=> b!6795318 m!7542308))

(assert (=> b!6795318 m!7541234))

(declare-fun m!7542310 () Bool)

(assert (=> b!6795317 m!7542310))

(declare-fun m!7542312 () Bool)

(assert (=> d!2135191 m!7542312))

(declare-fun m!7542314 () Bool)

(assert (=> d!2135191 m!7542314))

(assert (=> d!2135191 m!7541242))

(assert (=> b!6794123 d!2135191))

(declare-fun d!2135193 () Bool)

(assert (=> d!2135193 (= (nullable!6594 (h!72468 (exprs!6499 lt!2446908))) (nullableFct!2498 (h!72468 (exprs!6499 lt!2446908))))))

(declare-fun bs!1810847 () Bool)

(assert (= bs!1810847 d!2135193))

(declare-fun m!7542316 () Bool)

(assert (=> bs!1810847 m!7542316))

(assert (=> b!6794374 d!2135193))

(declare-fun bs!1810848 () Bool)

(declare-fun b!6795321 () Bool)

(assert (= bs!1810848 (and b!6795321 d!2134769)))

(declare-fun lambda!383018 () Int)

(assert (=> bs!1810848 (= (and (= (reg!16944 (regOne!33743 lt!2446884)) (reg!16944 r!7292)) (= (regOne!33743 lt!2446884) (Star!16615 (reg!16944 r!7292)))) (= lambda!383018 lambda!382954))))

(assert (=> bs!1810848 (not (= lambda!383018 lambda!382953))))

(declare-fun bs!1810849 () Bool)

(assert (= bs!1810849 (and b!6795321 b!6794436)))

(assert (=> bs!1810849 (not (= lambda!383018 lambda!382970))))

(declare-fun bs!1810850 () Bool)

(assert (= bs!1810850 (and b!6795321 b!6793723)))

(assert (=> bs!1810850 (not (= lambda!383018 lambda!382886))))

(declare-fun bs!1810851 () Bool)

(assert (= bs!1810851 (and b!6795321 d!2134753)))

(assert (=> bs!1810851 (not (= lambda!383018 lambda!382948))))

(assert (=> bs!1810850 (not (= lambda!383018 lambda!382884))))

(declare-fun bs!1810852 () Bool)

(assert (= bs!1810852 (and b!6795321 b!6794485)))

(assert (=> bs!1810852 (= (and (= (reg!16944 (regOne!33743 lt!2446884)) (reg!16944 r!7292)) (= (regOne!33743 lt!2446884) r!7292)) (= lambda!383018 lambda!382971))))

(assert (=> bs!1810851 (not (= lambda!383018 lambda!382947))))

(declare-fun bs!1810853 () Bool)

(assert (= bs!1810853 (and b!6795321 b!6794489)))

(assert (=> bs!1810853 (not (= lambda!383018 lambda!382972))))

(declare-fun bs!1810854 () Bool)

(assert (= bs!1810854 (and b!6795321 b!6794432)))

(assert (=> bs!1810854 (= (and (= (reg!16944 (regOne!33743 lt!2446884)) (reg!16944 lt!2446884)) (= (regOne!33743 lt!2446884) lt!2446884)) (= lambda!383018 lambda!382969))))

(assert (=> bs!1810850 (= (and (= (reg!16944 (regOne!33743 lt!2446884)) (reg!16944 r!7292)) (= (regOne!33743 lt!2446884) r!7292)) (= lambda!383018 lambda!382885))))

(declare-fun bs!1810855 () Bool)

(assert (= bs!1810855 (and b!6795321 d!2134781)))

(assert (=> bs!1810855 (not (= lambda!383018 lambda!382957))))

(assert (=> b!6795321 true))

(assert (=> b!6795321 true))

(declare-fun bs!1810856 () Bool)

(declare-fun b!6795325 () Bool)

(assert (= bs!1810856 (and b!6795325 d!2134769)))

(declare-fun lambda!383019 () Int)

(assert (=> bs!1810856 (not (= lambda!383019 lambda!382954))))

(assert (=> bs!1810856 (not (= lambda!383019 lambda!382953))))

(declare-fun bs!1810857 () Bool)

(assert (= bs!1810857 (and b!6795325 b!6794436)))

(assert (=> bs!1810857 (= (and (= (regOne!33742 (regOne!33743 lt!2446884)) (regOne!33742 lt!2446884)) (= (regTwo!33742 (regOne!33743 lt!2446884)) (regTwo!33742 lt!2446884))) (= lambda!383019 lambda!382970))))

(declare-fun bs!1810858 () Bool)

(assert (= bs!1810858 (and b!6795325 b!6793723)))

(assert (=> bs!1810858 (= (and (= (regOne!33742 (regOne!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33742 (regOne!33743 lt!2446884)) r!7292)) (= lambda!383019 lambda!382886))))

(declare-fun bs!1810859 () Bool)

(assert (= bs!1810859 (and b!6795325 d!2134753)))

(assert (=> bs!1810859 (= (and (= (regOne!33742 (regOne!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33742 (regOne!33743 lt!2446884)) r!7292)) (= lambda!383019 lambda!382948))))

(assert (=> bs!1810858 (not (= lambda!383019 lambda!382884))))

(declare-fun bs!1810860 () Bool)

(assert (= bs!1810860 (and b!6795325 b!6794485)))

(assert (=> bs!1810860 (not (= lambda!383019 lambda!382971))))

(assert (=> bs!1810859 (not (= lambda!383019 lambda!382947))))

(declare-fun bs!1810861 () Bool)

(assert (= bs!1810861 (and b!6795325 b!6794432)))

(assert (=> bs!1810861 (not (= lambda!383019 lambda!382969))))

(assert (=> bs!1810858 (not (= lambda!383019 lambda!382885))))

(declare-fun bs!1810862 () Bool)

(assert (= bs!1810862 (and b!6795325 d!2134781)))

(assert (=> bs!1810862 (not (= lambda!383019 lambda!382957))))

(declare-fun bs!1810863 () Bool)

(assert (= bs!1810863 (and b!6795325 b!6794489)))

(assert (=> bs!1810863 (= (and (= (regOne!33742 (regOne!33743 lt!2446884)) (regOne!33742 r!7292)) (= (regTwo!33742 (regOne!33743 lt!2446884)) (regTwo!33742 r!7292))) (= lambda!383019 lambda!382972))))

(declare-fun bs!1810864 () Bool)

(assert (= bs!1810864 (and b!6795325 b!6795321)))

(assert (=> bs!1810864 (not (= lambda!383019 lambda!383018))))

(assert (=> b!6795325 true))

(assert (=> b!6795325 true))

(declare-fun b!6795320 () Bool)

(declare-fun e!4101274 () Bool)

(assert (=> b!6795320 (= e!4101274 (= s!2326 (Cons!66021 (c!1262803 (regOne!33743 lt!2446884)) Nil!66021)))))

(declare-fun e!4101276 () Bool)

(declare-fun call!617200 () Bool)

(assert (=> b!6795321 (= e!4101276 call!617200)))

(declare-fun b!6795322 () Bool)

(declare-fun e!4101275 () Bool)

(declare-fun e!4101277 () Bool)

(assert (=> b!6795322 (= e!4101275 e!4101277)))

(declare-fun c!1263232 () Bool)

(assert (=> b!6795322 (= c!1263232 ((_ is Star!16615) (regOne!33743 lt!2446884)))))

(declare-fun d!2135195 () Bool)

(declare-fun c!1263234 () Bool)

(assert (=> d!2135195 (= c!1263234 ((_ is EmptyExpr!16615) (regOne!33743 lt!2446884)))))

(declare-fun e!4101271 () Bool)

(assert (=> d!2135195 (= (matchRSpec!3716 (regOne!33743 lt!2446884) s!2326) e!4101271)))

(declare-fun b!6795323 () Bool)

(declare-fun call!617201 () Bool)

(assert (=> b!6795323 (= e!4101271 call!617201)))

(declare-fun bm!617195 () Bool)

(assert (=> bm!617195 (= call!617200 (Exists!3683 (ite c!1263232 lambda!383018 lambda!383019)))))

(declare-fun b!6795324 () Bool)

(declare-fun c!1263233 () Bool)

(assert (=> b!6795324 (= c!1263233 ((_ is Union!16615) (regOne!33743 lt!2446884)))))

(assert (=> b!6795324 (= e!4101274 e!4101275)))

(assert (=> b!6795325 (= e!4101277 call!617200)))

(declare-fun b!6795326 () Bool)

(declare-fun c!1263231 () Bool)

(assert (=> b!6795326 (= c!1263231 ((_ is ElementMatch!16615) (regOne!33743 lt!2446884)))))

(declare-fun e!4101273 () Bool)

(assert (=> b!6795326 (= e!4101273 e!4101274)))

(declare-fun b!6795327 () Bool)

(declare-fun e!4101272 () Bool)

(assert (=> b!6795327 (= e!4101275 e!4101272)))

(declare-fun res!2777090 () Bool)

(assert (=> b!6795327 (= res!2777090 (matchRSpec!3716 (regOne!33743 (regOne!33743 lt!2446884)) s!2326))))

(assert (=> b!6795327 (=> res!2777090 e!4101272)))

(declare-fun b!6795328 () Bool)

(declare-fun res!2777089 () Bool)

(assert (=> b!6795328 (=> res!2777089 e!4101276)))

(assert (=> b!6795328 (= res!2777089 call!617201)))

(assert (=> b!6795328 (= e!4101277 e!4101276)))

(declare-fun b!6795329 () Bool)

(assert (=> b!6795329 (= e!4101272 (matchRSpec!3716 (regTwo!33743 (regOne!33743 lt!2446884)) s!2326))))

(declare-fun bm!617196 () Bool)

(assert (=> bm!617196 (= call!617201 (isEmpty!38394 s!2326))))

(declare-fun b!6795330 () Bool)

(assert (=> b!6795330 (= e!4101271 e!4101273)))

(declare-fun res!2777091 () Bool)

(assert (=> b!6795330 (= res!2777091 (not ((_ is EmptyLang!16615) (regOne!33743 lt!2446884))))))

(assert (=> b!6795330 (=> (not res!2777091) (not e!4101273))))

(assert (= (and d!2135195 c!1263234) b!6795323))

(assert (= (and d!2135195 (not c!1263234)) b!6795330))

(assert (= (and b!6795330 res!2777091) b!6795326))

(assert (= (and b!6795326 c!1263231) b!6795320))

(assert (= (and b!6795326 (not c!1263231)) b!6795324))

(assert (= (and b!6795324 c!1263233) b!6795327))

(assert (= (and b!6795324 (not c!1263233)) b!6795322))

(assert (= (and b!6795327 (not res!2777090)) b!6795329))

(assert (= (and b!6795322 c!1263232) b!6795328))

(assert (= (and b!6795322 (not c!1263232)) b!6795325))

(assert (= (and b!6795328 (not res!2777089)) b!6795321))

(assert (= (or b!6795321 b!6795325) bm!617195))

(assert (= (or b!6795323 b!6795328) bm!617196))

(declare-fun m!7542318 () Bool)

(assert (=> bm!617195 m!7542318))

(declare-fun m!7542320 () Bool)

(assert (=> b!6795327 m!7542320))

(declare-fun m!7542322 () Bool)

(assert (=> b!6795329 m!7542322))

(assert (=> bm!617196 m!7540894))

(assert (=> b!6794438 d!2135195))

(assert (=> b!6794502 d!2135175))

(assert (=> b!6794502 d!2135177))

(declare-fun d!2135197 () Bool)

(declare-fun res!2777092 () Bool)

(declare-fun e!4101278 () Bool)

(assert (=> d!2135197 (=> res!2777092 e!4101278)))

(assert (=> d!2135197 (= res!2777092 ((_ is Nil!66020) (exprs!6499 lt!2446885)))))

(assert (=> d!2135197 (= (forall!15807 (exprs!6499 lt!2446885) lambda!382932) e!4101278)))

(declare-fun b!6795331 () Bool)

(declare-fun e!4101279 () Bool)

(assert (=> b!6795331 (= e!4101278 e!4101279)))

(declare-fun res!2777093 () Bool)

(assert (=> b!6795331 (=> (not res!2777093) (not e!4101279))))

(assert (=> b!6795331 (= res!2777093 (dynLambda!26358 lambda!382932 (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun b!6795332 () Bool)

(assert (=> b!6795332 (= e!4101279 (forall!15807 (t!379869 (exprs!6499 lt!2446885)) lambda!382932))))

(assert (= (and d!2135197 (not res!2777092)) b!6795331))

(assert (= (and b!6795331 res!2777093) b!6795332))

(declare-fun b_lambda!256035 () Bool)

(assert (=> (not b_lambda!256035) (not b!6795331)))

(declare-fun m!7542324 () Bool)

(assert (=> b!6795331 m!7542324))

(declare-fun m!7542326 () Bool)

(assert (=> b!6795332 m!7542326))

(assert (=> d!2134689 d!2135197))

(assert (=> bs!1810479 d!2134715))

(declare-fun d!2135199 () Bool)

(assert (=> d!2135199 (= (Exists!3683 (ite c!1263006 lambda!382969 lambda!382970)) (choose!50630 (ite c!1263006 lambda!382969 lambda!382970)))))

(declare-fun bs!1810865 () Bool)

(assert (= bs!1810865 d!2135199))

(declare-fun m!7542328 () Bool)

(assert (=> bs!1810865 m!7542328))

(assert (=> bm!617045 d!2135199))

(declare-fun b!6795333 () Bool)

(declare-fun e!4101282 () Bool)

(declare-fun call!617203 () Bool)

(assert (=> b!6795333 (= e!4101282 call!617203)))

(declare-fun b!6795334 () Bool)

(declare-fun e!4101283 () Bool)

(declare-fun call!617204 () Bool)

(assert (=> b!6795334 (= e!4101283 call!617204)))

(declare-fun b!6795335 () Bool)

(declare-fun e!4101281 () Bool)

(assert (=> b!6795335 (= e!4101281 e!4101283)))

(declare-fun res!2777094 () Bool)

(assert (=> b!6795335 (=> (not res!2777094) (not e!4101283))))

(declare-fun call!617202 () Bool)

(assert (=> b!6795335 (= res!2777094 call!617202)))

(declare-fun b!6795336 () Bool)

(declare-fun res!2777096 () Bool)

(declare-fun e!4101280 () Bool)

(assert (=> b!6795336 (=> (not res!2777096) (not e!4101280))))

(assert (=> b!6795336 (= res!2777096 call!617202)))

(declare-fun e!4101285 () Bool)

(assert (=> b!6795336 (= e!4101285 e!4101280)))

(declare-fun b!6795337 () Bool)

(declare-fun e!4101284 () Bool)

(assert (=> b!6795337 (= e!4101284 e!4101285)))

(declare-fun c!1263236 () Bool)

(assert (=> b!6795337 (= c!1263236 ((_ is Union!16615) (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))

(declare-fun b!6795338 () Bool)

(assert (=> b!6795338 (= e!4101280 call!617204)))

(declare-fun b!6795339 () Bool)

(assert (=> b!6795339 (= e!4101284 e!4101282)))

(declare-fun res!2777097 () Bool)

(assert (=> b!6795339 (= res!2777097 (not (nullable!6594 (reg!16944 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))))

(assert (=> b!6795339 (=> (not res!2777097) (not e!4101282))))

(declare-fun d!2135201 () Bool)

(declare-fun res!2777095 () Bool)

(declare-fun e!4101286 () Bool)

(assert (=> d!2135201 (=> res!2777095 e!4101286)))

(assert (=> d!2135201 (= res!2777095 ((_ is ElementMatch!16615) (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))

(assert (=> d!2135201 (= (validRegex!8351 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))) e!4101286)))

(declare-fun bm!617197 () Bool)

(declare-fun c!1263235 () Bool)

(assert (=> bm!617197 (= call!617203 (validRegex!8351 (ite c!1263235 (reg!16944 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))) (ite c!1263236 (regOne!33743 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))) (regOne!33742 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292)))))))))

(declare-fun b!6795340 () Bool)

(assert (=> b!6795340 (= e!4101286 e!4101284)))

(assert (=> b!6795340 (= c!1263235 ((_ is Star!16615) (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))

(declare-fun bm!617198 () Bool)

(assert (=> bm!617198 (= call!617202 call!617203)))

(declare-fun b!6795341 () Bool)

(declare-fun res!2777098 () Bool)

(assert (=> b!6795341 (=> res!2777098 e!4101281)))

(assert (=> b!6795341 (= res!2777098 (not ((_ is Concat!25460) (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292)))))))

(assert (=> b!6795341 (= e!4101285 e!4101281)))

(declare-fun bm!617199 () Bool)

(assert (=> bm!617199 (= call!617204 (validRegex!8351 (ite c!1263236 (regTwo!33743 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))) (regTwo!33742 (ite c!1262956 (regTwo!33743 r!7292) (regTwo!33742 r!7292))))))))

(assert (= (and d!2135201 (not res!2777095)) b!6795340))

(assert (= (and b!6795340 c!1263235) b!6795339))

(assert (= (and b!6795340 (not c!1263235)) b!6795337))

(assert (= (and b!6795339 res!2777097) b!6795333))

(assert (= (and b!6795337 c!1263236) b!6795336))

(assert (= (and b!6795337 (not c!1263236)) b!6795341))

(assert (= (and b!6795336 res!2777096) b!6795338))

(assert (= (and b!6795341 (not res!2777098)) b!6795335))

(assert (= (and b!6795335 res!2777094) b!6795334))

(assert (= (or b!6795338 b!6795334) bm!617199))

(assert (= (or b!6795336 b!6795335) bm!617198))

(assert (= (or b!6795333 bm!617198) bm!617197))

(declare-fun m!7542330 () Bool)

(assert (=> b!6795339 m!7542330))

(declare-fun m!7542332 () Bool)

(assert (=> bm!617197 m!7542332))

(declare-fun m!7542334 () Bool)

(assert (=> bm!617199 m!7542334))

(assert (=> bm!617028 d!2135201))

(declare-fun bs!1810866 () Bool)

(declare-fun d!2135203 () Bool)

(assert (= bs!1810866 (and d!2135203 d!2134829)))

(declare-fun lambda!383020 () Int)

(assert (=> bs!1810866 (= lambda!383020 lambda!382973)))

(declare-fun bs!1810867 () Bool)

(assert (= bs!1810867 (and d!2135203 b!6793734)))

(assert (=> bs!1810867 (= lambda!383020 lambda!382889)))

(declare-fun bs!1810868 () Bool)

(assert (= bs!1810868 (and d!2135203 d!2134677)))

(assert (=> bs!1810868 (= lambda!383020 lambda!382930)))

(declare-fun bs!1810869 () Bool)

(assert (= bs!1810869 (and d!2135203 d!2134689)))

(assert (=> bs!1810869 (= lambda!383020 lambda!382932)))

(declare-fun bs!1810870 () Bool)

(assert (= bs!1810870 (and d!2135203 d!2134785)))

(assert (=> bs!1810870 (= lambda!383020 lambda!382963)))

(declare-fun bs!1810871 () Bool)

(assert (= bs!1810871 (and d!2135203 d!2135173)))

(assert (=> bs!1810871 (= lambda!383020 lambda!383017)))

(declare-fun bs!1810872 () Bool)

(assert (= bs!1810872 (and d!2135203 d!2134783)))

(assert (=> bs!1810872 (= lambda!383020 lambda!382960)))

(declare-fun bs!1810873 () Bool)

(assert (= bs!1810873 (and d!2135203 d!2134675)))

(assert (=> bs!1810873 (= lambda!383020 lambda!382921)))

(declare-fun bs!1810874 () Bool)

(assert (= bs!1810874 (and d!2135203 d!2135169)))

(assert (=> bs!1810874 (= lambda!383020 lambda!383016)))

(declare-fun b!6795342 () Bool)

(declare-fun e!4101288 () Regex!16615)

(assert (=> b!6795342 (= e!4101288 (Concat!25460 (h!72468 (t!379869 (exprs!6499 (h!72470 zl!343)))) (generalisedConcat!2212 (t!379869 (t!379869 (exprs!6499 (h!72470 zl!343)))))))))

(declare-fun b!6795343 () Bool)

(declare-fun e!4101287 () Bool)

(declare-fun e!4101291 () Bool)

(assert (=> b!6795343 (= e!4101287 e!4101291)))

(declare-fun c!1263237 () Bool)

(assert (=> b!6795343 (= c!1263237 (isEmpty!38397 (tail!12727 (t!379869 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6795344 () Bool)

(assert (=> b!6795344 (= e!4101288 EmptyExpr!16615)))

(declare-fun b!6795345 () Bool)

(declare-fun e!4101292 () Regex!16615)

(assert (=> b!6795345 (= e!4101292 e!4101288)))

(declare-fun c!1263239 () Bool)

(assert (=> b!6795345 (= c!1263239 ((_ is Cons!66020) (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6795346 () Bool)

(declare-fun lt!2447070 () Regex!16615)

(assert (=> b!6795346 (= e!4101291 (isConcat!1496 lt!2447070))))

(declare-fun e!4101289 () Bool)

(assert (=> d!2135203 e!4101289))

(declare-fun res!2777100 () Bool)

(assert (=> d!2135203 (=> (not res!2777100) (not e!4101289))))

(assert (=> d!2135203 (= res!2777100 (validRegex!8351 lt!2447070))))

(assert (=> d!2135203 (= lt!2447070 e!4101292)))

(declare-fun c!1263240 () Bool)

(declare-fun e!4101290 () Bool)

(assert (=> d!2135203 (= c!1263240 e!4101290)))

(declare-fun res!2777099 () Bool)

(assert (=> d!2135203 (=> (not res!2777099) (not e!4101290))))

(assert (=> d!2135203 (= res!2777099 ((_ is Cons!66020) (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> d!2135203 (forall!15807 (t!379869 (exprs!6499 (h!72470 zl!343))) lambda!383020)))

(assert (=> d!2135203 (= (generalisedConcat!2212 (t!379869 (exprs!6499 (h!72470 zl!343)))) lt!2447070)))

(declare-fun b!6795347 () Bool)

(assert (=> b!6795347 (= e!4101291 (= lt!2447070 (head!13642 (t!379869 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6795348 () Bool)

(assert (=> b!6795348 (= e!4101289 e!4101287)))

(declare-fun c!1263238 () Bool)

(assert (=> b!6795348 (= c!1263238 (isEmpty!38397 (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6795349 () Bool)

(assert (=> b!6795349 (= e!4101290 (isEmpty!38397 (t!379869 (t!379869 (exprs!6499 (h!72470 zl!343))))))))

(declare-fun b!6795350 () Bool)

(assert (=> b!6795350 (= e!4101287 (isEmptyExpr!1973 lt!2447070))))

(declare-fun b!6795351 () Bool)

(assert (=> b!6795351 (= e!4101292 (h!72468 (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(assert (= (and d!2135203 res!2777099) b!6795349))

(assert (= (and d!2135203 c!1263240) b!6795351))

(assert (= (and d!2135203 (not c!1263240)) b!6795345))

(assert (= (and b!6795345 c!1263239) b!6795342))

(assert (= (and b!6795345 (not c!1263239)) b!6795344))

(assert (= (and d!2135203 res!2777100) b!6795348))

(assert (= (and b!6795348 c!1263238) b!6795350))

(assert (= (and b!6795348 (not c!1263238)) b!6795343))

(assert (= (and b!6795343 c!1263237) b!6795347))

(assert (= (and b!6795343 (not c!1263237)) b!6795346))

(declare-fun m!7542336 () Bool)

(assert (=> b!6795349 m!7542336))

(declare-fun m!7542338 () Bool)

(assert (=> b!6795343 m!7542338))

(assert (=> b!6795343 m!7542338))

(declare-fun m!7542340 () Bool)

(assert (=> b!6795343 m!7542340))

(declare-fun m!7542342 () Bool)

(assert (=> b!6795342 m!7542342))

(declare-fun m!7542344 () Bool)

(assert (=> b!6795347 m!7542344))

(declare-fun m!7542346 () Bool)

(assert (=> b!6795346 m!7542346))

(declare-fun m!7542348 () Bool)

(assert (=> d!2135203 m!7542348))

(declare-fun m!7542350 () Bool)

(assert (=> d!2135203 m!7542350))

(declare-fun m!7542352 () Bool)

(assert (=> b!6795350 m!7542352))

(assert (=> b!6795348 m!7541160))

(assert (=> b!6794046 d!2135203))

(declare-fun d!2135205 () Bool)

(assert (=> d!2135205 (= (isEmpty!38397 (tail!12727 (unfocusZipperList!2036 zl!343))) ((_ is Nil!66020) (tail!12727 (unfocusZipperList!2036 zl!343))))))

(assert (=> b!6794357 d!2135205))

(declare-fun d!2135207 () Bool)

(assert (=> d!2135207 (= (tail!12727 (unfocusZipperList!2036 zl!343)) (t!379869 (unfocusZipperList!2036 zl!343)))))

(assert (=> b!6794357 d!2135207))

(assert (=> d!2134779 d!2135155))

(declare-fun b!6795352 () Bool)

(declare-fun e!4101296 () Bool)

(declare-fun e!4101293 () Bool)

(assert (=> b!6795352 (= e!4101296 e!4101293)))

(declare-fun res!2777107 () Bool)

(assert (=> b!6795352 (=> res!2777107 e!4101293)))

(declare-fun call!617205 () Bool)

(assert (=> b!6795352 (= res!2777107 call!617205)))

(declare-fun b!6795353 () Bool)

(declare-fun e!4101298 () Bool)

(declare-fun lt!2447071 () Bool)

(assert (=> b!6795353 (= e!4101298 (= lt!2447071 call!617205))))

(declare-fun b!6795354 () Bool)

(declare-fun e!4101294 () Bool)

(assert (=> b!6795354 (= e!4101294 (nullable!6594 (reg!16944 r!7292)))))

(declare-fun b!6795355 () Bool)

(declare-fun res!2777102 () Bool)

(declare-fun e!4101297 () Bool)

(assert (=> b!6795355 (=> res!2777102 e!4101297)))

(assert (=> b!6795355 (= res!2777102 (not ((_ is ElementMatch!16615) (reg!16944 r!7292))))))

(declare-fun e!4101295 () Bool)

(assert (=> b!6795355 (= e!4101295 e!4101297)))

(declare-fun b!6795356 () Bool)

(assert (=> b!6795356 (= e!4101298 e!4101295)))

(declare-fun c!1263241 () Bool)

(assert (=> b!6795356 (= c!1263241 ((_ is EmptyLang!16615) (reg!16944 r!7292)))))

(declare-fun bm!617200 () Bool)

(assert (=> bm!617200 (= call!617205 (isEmpty!38394 Nil!66021))))

(declare-fun b!6795358 () Bool)

(assert (=> b!6795358 (= e!4101295 (not lt!2447071))))

(declare-fun b!6795359 () Bool)

(declare-fun res!2777103 () Bool)

(assert (=> b!6795359 (=> res!2777103 e!4101293)))

(assert (=> b!6795359 (= res!2777103 (not (isEmpty!38394 (tail!12726 Nil!66021))))))

(declare-fun b!6795360 () Bool)

(assert (=> b!6795360 (= e!4101293 (not (= (head!13641 Nil!66021) (c!1262803 (reg!16944 r!7292)))))))

(declare-fun b!6795361 () Bool)

(declare-fun e!4101299 () Bool)

(assert (=> b!6795361 (= e!4101299 (= (head!13641 Nil!66021) (c!1262803 (reg!16944 r!7292))))))

(declare-fun b!6795362 () Bool)

(declare-fun res!2777108 () Bool)

(assert (=> b!6795362 (=> res!2777108 e!4101297)))

(assert (=> b!6795362 (= res!2777108 e!4101299)))

(declare-fun res!2777101 () Bool)

(assert (=> b!6795362 (=> (not res!2777101) (not e!4101299))))

(assert (=> b!6795362 (= res!2777101 lt!2447071)))

(declare-fun b!6795363 () Bool)

(declare-fun res!2777105 () Bool)

(assert (=> b!6795363 (=> (not res!2777105) (not e!4101299))))

(assert (=> b!6795363 (= res!2777105 (not call!617205))))

(declare-fun b!6795364 () Bool)

(assert (=> b!6795364 (= e!4101297 e!4101296)))

(declare-fun res!2777104 () Bool)

(assert (=> b!6795364 (=> (not res!2777104) (not e!4101296))))

(assert (=> b!6795364 (= res!2777104 (not lt!2447071))))

(declare-fun b!6795365 () Bool)

(assert (=> b!6795365 (= e!4101294 (matchR!8798 (derivativeStep!5279 (reg!16944 r!7292) (head!13641 Nil!66021)) (tail!12726 Nil!66021)))))

(declare-fun b!6795357 () Bool)

(declare-fun res!2777106 () Bool)

(assert (=> b!6795357 (=> (not res!2777106) (not e!4101299))))

(assert (=> b!6795357 (= res!2777106 (isEmpty!38394 (tail!12726 Nil!66021)))))

(declare-fun d!2135209 () Bool)

(assert (=> d!2135209 e!4101298))

(declare-fun c!1263243 () Bool)

(assert (=> d!2135209 (= c!1263243 ((_ is EmptyExpr!16615) (reg!16944 r!7292)))))

(assert (=> d!2135209 (= lt!2447071 e!4101294)))

(declare-fun c!1263242 () Bool)

(assert (=> d!2135209 (= c!1263242 (isEmpty!38394 Nil!66021))))

(assert (=> d!2135209 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2135209 (= (matchR!8798 (reg!16944 r!7292) Nil!66021) lt!2447071)))

(assert (= (and d!2135209 c!1263242) b!6795354))

(assert (= (and d!2135209 (not c!1263242)) b!6795365))

(assert (= (and d!2135209 c!1263243) b!6795353))

(assert (= (and d!2135209 (not c!1263243)) b!6795356))

(assert (= (and b!6795356 c!1263241) b!6795358))

(assert (= (and b!6795356 (not c!1263241)) b!6795355))

(assert (= (and b!6795355 (not res!2777102)) b!6795362))

(assert (= (and b!6795362 res!2777101) b!6795363))

(assert (= (and b!6795363 res!2777105) b!6795357))

(assert (= (and b!6795357 res!2777106) b!6795361))

(assert (= (and b!6795362 (not res!2777108)) b!6795364))

(assert (= (and b!6795364 res!2777104) b!6795352))

(assert (= (and b!6795352 (not res!2777107)) b!6795359))

(assert (= (and b!6795359 (not res!2777103)) b!6795360))

(assert (= (or b!6795353 b!6795352 b!6795363) bm!617200))

(declare-fun m!7542354 () Bool)

(assert (=> b!6795360 m!7542354))

(assert (=> b!6795361 m!7542354))

(declare-fun m!7542356 () Bool)

(assert (=> d!2135209 m!7542356))

(assert (=> d!2135209 m!7541376))

(declare-fun m!7542358 () Bool)

(assert (=> b!6795359 m!7542358))

(assert (=> b!6795359 m!7542358))

(declare-fun m!7542360 () Bool)

(assert (=> b!6795359 m!7542360))

(assert (=> b!6795354 m!7541324))

(assert (=> b!6795365 m!7542354))

(assert (=> b!6795365 m!7542354))

(declare-fun m!7542362 () Bool)

(assert (=> b!6795365 m!7542362))

(assert (=> b!6795365 m!7542358))

(assert (=> b!6795365 m!7542362))

(assert (=> b!6795365 m!7542358))

(declare-fun m!7542364 () Bool)

(assert (=> b!6795365 m!7542364))

(assert (=> b!6795357 m!7542358))

(assert (=> b!6795357 m!7542358))

(assert (=> b!6795357 m!7542360))

(assert (=> bm!617200 m!7542356))

(assert (=> d!2134779 d!2135209))

(declare-fun b!6795366 () Bool)

(declare-fun e!4101302 () Bool)

(declare-fun call!617207 () Bool)

(assert (=> b!6795366 (= e!4101302 call!617207)))

(declare-fun b!6795367 () Bool)

(declare-fun e!4101303 () Bool)

(declare-fun call!617208 () Bool)

(assert (=> b!6795367 (= e!4101303 call!617208)))

(declare-fun b!6795368 () Bool)

(declare-fun e!4101301 () Bool)

(assert (=> b!6795368 (= e!4101301 e!4101303)))

(declare-fun res!2777109 () Bool)

(assert (=> b!6795368 (=> (not res!2777109) (not e!4101303))))

(declare-fun call!617206 () Bool)

(assert (=> b!6795368 (= res!2777109 call!617206)))

(declare-fun b!6795369 () Bool)

(declare-fun res!2777111 () Bool)

(declare-fun e!4101300 () Bool)

(assert (=> b!6795369 (=> (not res!2777111) (not e!4101300))))

(assert (=> b!6795369 (= res!2777111 call!617206)))

(declare-fun e!4101305 () Bool)

(assert (=> b!6795369 (= e!4101305 e!4101300)))

(declare-fun b!6795370 () Bool)

(declare-fun e!4101304 () Bool)

(assert (=> b!6795370 (= e!4101304 e!4101305)))

(declare-fun c!1263245 () Bool)

(assert (=> b!6795370 (= c!1263245 ((_ is Union!16615) (reg!16944 r!7292)))))

(declare-fun b!6795371 () Bool)

(assert (=> b!6795371 (= e!4101300 call!617208)))

(declare-fun b!6795372 () Bool)

(assert (=> b!6795372 (= e!4101304 e!4101302)))

(declare-fun res!2777112 () Bool)

(assert (=> b!6795372 (= res!2777112 (not (nullable!6594 (reg!16944 (reg!16944 r!7292)))))))

(assert (=> b!6795372 (=> (not res!2777112) (not e!4101302))))

(declare-fun d!2135211 () Bool)

(declare-fun res!2777110 () Bool)

(declare-fun e!4101306 () Bool)

(assert (=> d!2135211 (=> res!2777110 e!4101306)))

(assert (=> d!2135211 (= res!2777110 ((_ is ElementMatch!16615) (reg!16944 r!7292)))))

(assert (=> d!2135211 (= (validRegex!8351 (reg!16944 r!7292)) e!4101306)))

(declare-fun bm!617201 () Bool)

(declare-fun c!1263244 () Bool)

(assert (=> bm!617201 (= call!617207 (validRegex!8351 (ite c!1263244 (reg!16944 (reg!16944 r!7292)) (ite c!1263245 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))))))))

(declare-fun b!6795373 () Bool)

(assert (=> b!6795373 (= e!4101306 e!4101304)))

(assert (=> b!6795373 (= c!1263244 ((_ is Star!16615) (reg!16944 r!7292)))))

(declare-fun bm!617202 () Bool)

(assert (=> bm!617202 (= call!617206 call!617207)))

(declare-fun b!6795374 () Bool)

(declare-fun res!2777113 () Bool)

(assert (=> b!6795374 (=> res!2777113 e!4101301)))

(assert (=> b!6795374 (= res!2777113 (not ((_ is Concat!25460) (reg!16944 r!7292))))))

(assert (=> b!6795374 (= e!4101305 e!4101301)))

(declare-fun bm!617203 () Bool)

(assert (=> bm!617203 (= call!617208 (validRegex!8351 (ite c!1263245 (regTwo!33743 (reg!16944 r!7292)) (regTwo!33742 (reg!16944 r!7292)))))))

(assert (= (and d!2135211 (not res!2777110)) b!6795373))

(assert (= (and b!6795373 c!1263244) b!6795372))

(assert (= (and b!6795373 (not c!1263244)) b!6795370))

(assert (= (and b!6795372 res!2777112) b!6795366))

(assert (= (and b!6795370 c!1263245) b!6795369))

(assert (= (and b!6795370 (not c!1263245)) b!6795374))

(assert (= (and b!6795369 res!2777111) b!6795371))

(assert (= (and b!6795374 (not res!2777113)) b!6795368))

(assert (= (and b!6795368 res!2777109) b!6795367))

(assert (= (or b!6795371 b!6795367) bm!617203))

(assert (= (or b!6795369 b!6795368) bm!617202))

(assert (= (or b!6795366 bm!617202) bm!617201))

(declare-fun m!7542366 () Bool)

(assert (=> b!6795372 m!7542366))

(declare-fun m!7542368 () Bool)

(assert (=> bm!617201 m!7542368))

(declare-fun m!7542370 () Bool)

(assert (=> bm!617203 m!7542370))

(assert (=> d!2134779 d!2135211))

(declare-fun b!6795375 () Bool)

(declare-fun e!4101309 () Bool)

(declare-fun call!617210 () Bool)

(assert (=> b!6795375 (= e!4101309 call!617210)))

(declare-fun b!6795376 () Bool)

(declare-fun e!4101310 () Bool)

(declare-fun call!617211 () Bool)

(assert (=> b!6795376 (= e!4101310 call!617211)))

(declare-fun b!6795377 () Bool)

(declare-fun e!4101308 () Bool)

(assert (=> b!6795377 (= e!4101308 e!4101310)))

(declare-fun res!2777114 () Bool)

(assert (=> b!6795377 (=> (not res!2777114) (not e!4101310))))

(declare-fun call!617209 () Bool)

(assert (=> b!6795377 (= res!2777114 call!617209)))

(declare-fun b!6795378 () Bool)

(declare-fun res!2777116 () Bool)

(declare-fun e!4101307 () Bool)

(assert (=> b!6795378 (=> (not res!2777116) (not e!4101307))))

(assert (=> b!6795378 (= res!2777116 call!617209)))

(declare-fun e!4101312 () Bool)

(assert (=> b!6795378 (= e!4101312 e!4101307)))

(declare-fun b!6795379 () Bool)

(declare-fun e!4101311 () Bool)

(assert (=> b!6795379 (= e!4101311 e!4101312)))

(declare-fun c!1263247 () Bool)

(assert (=> b!6795379 (= c!1263247 ((_ is Union!16615) (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(declare-fun b!6795380 () Bool)

(assert (=> b!6795380 (= e!4101307 call!617211)))

(declare-fun b!6795381 () Bool)

(assert (=> b!6795381 (= e!4101311 e!4101309)))

(declare-fun res!2777117 () Bool)

(assert (=> b!6795381 (= res!2777117 (not (nullable!6594 (reg!16944 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))))

(assert (=> b!6795381 (=> (not res!2777117) (not e!4101309))))

(declare-fun d!2135213 () Bool)

(declare-fun res!2777115 () Bool)

(declare-fun e!4101313 () Bool)

(assert (=> d!2135213 (=> res!2777115 e!4101313)))

(assert (=> d!2135213 (= res!2777115 ((_ is ElementMatch!16615) (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(assert (=> d!2135213 (= (validRegex!8351 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))) e!4101313)))

(declare-fun bm!617204 () Bool)

(declare-fun c!1263246 () Bool)

(assert (=> bm!617204 (= call!617210 (validRegex!8351 (ite c!1263246 (reg!16944 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))) (ite c!1263247 (regOne!33743 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))) (regOne!33742 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292))))))))))

(declare-fun b!6795382 () Bool)

(assert (=> b!6795382 (= e!4101313 e!4101311)))

(assert (=> b!6795382 (= c!1263246 ((_ is Star!16615) (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(declare-fun bm!617205 () Bool)

(assert (=> bm!617205 (= call!617209 call!617210)))

(declare-fun b!6795383 () Bool)

(declare-fun res!2777118 () Bool)

(assert (=> b!6795383 (=> res!2777118 e!4101308)))

(assert (=> b!6795383 (= res!2777118 (not ((_ is Concat!25460) (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292))))))))

(assert (=> b!6795383 (= e!4101312 e!4101308)))

(declare-fun bm!617206 () Bool)

(assert (=> bm!617206 (= call!617211 (validRegex!8351 (ite c!1263247 (regTwo!33743 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))) (regTwo!33742 (ite c!1262955 (reg!16944 r!7292) (ite c!1262956 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))))

(assert (= (and d!2135213 (not res!2777115)) b!6795382))

(assert (= (and b!6795382 c!1263246) b!6795381))

(assert (= (and b!6795382 (not c!1263246)) b!6795379))

(assert (= (and b!6795381 res!2777117) b!6795375))

(assert (= (and b!6795379 c!1263247) b!6795378))

(assert (= (and b!6795379 (not c!1263247)) b!6795383))

(assert (= (and b!6795378 res!2777116) b!6795380))

(assert (= (and b!6795383 (not res!2777118)) b!6795377))

(assert (= (and b!6795377 res!2777114) b!6795376))

(assert (= (or b!6795380 b!6795376) bm!617206))

(assert (= (or b!6795378 b!6795377) bm!617205))

(assert (= (or b!6795375 bm!617205) bm!617204))

(declare-fun m!7542372 () Bool)

(assert (=> b!6795381 m!7542372))

(declare-fun m!7542374 () Bool)

(assert (=> bm!617204 m!7542374))

(declare-fun m!7542376 () Bool)

(assert (=> bm!617206 m!7542376))

(assert (=> bm!617026 d!2135213))

(declare-fun d!2135215 () Bool)

(assert (=> d!2135215 (= (Exists!3683 lambda!382953) (choose!50630 lambda!382953))))

(declare-fun bs!1810875 () Bool)

(assert (= bs!1810875 d!2135215))

(declare-fun m!7542378 () Bool)

(assert (=> bs!1810875 m!7542378))

(assert (=> d!2134769 d!2135215))

(declare-fun d!2135217 () Bool)

(assert (=> d!2135217 (= (Exists!3683 lambda!382954) (choose!50630 lambda!382954))))

(declare-fun bs!1810876 () Bool)

(assert (= bs!1810876 d!2135217))

(declare-fun m!7542380 () Bool)

(assert (=> bs!1810876 m!7542380))

(assert (=> d!2134769 d!2135217))

(declare-fun bs!1810877 () Bool)

(declare-fun d!2135219 () Bool)

(assert (= bs!1810877 (and d!2135219 d!2134769)))

(declare-fun lambda!383025 () Int)

(assert (=> bs!1810877 (not (= lambda!383025 lambda!382954))))

(assert (=> bs!1810877 (= lambda!383025 lambda!382953)))

(declare-fun bs!1810878 () Bool)

(assert (= bs!1810878 (and d!2135219 b!6794436)))

(assert (=> bs!1810878 (not (= lambda!383025 lambda!382970))))

(declare-fun bs!1810879 () Bool)

(assert (= bs!1810879 (and d!2135219 b!6793723)))

(assert (=> bs!1810879 (not (= lambda!383025 lambda!382886))))

(declare-fun bs!1810880 () Bool)

(assert (= bs!1810880 (and d!2135219 d!2134753)))

(assert (=> bs!1810880 (not (= lambda!383025 lambda!382948))))

(declare-fun bs!1810881 () Bool)

(assert (= bs!1810881 (and d!2135219 b!6795325)))

(assert (=> bs!1810881 (not (= lambda!383025 lambda!383019))))

(assert (=> bs!1810879 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!383025 lambda!382884))))

(declare-fun bs!1810882 () Bool)

(assert (= bs!1810882 (and d!2135219 b!6794485)))

(assert (=> bs!1810882 (not (= lambda!383025 lambda!382971))))

(assert (=> bs!1810880 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!383025 lambda!382947))))

(declare-fun bs!1810883 () Bool)

(assert (= bs!1810883 (and d!2135219 b!6794432)))

(assert (=> bs!1810883 (not (= lambda!383025 lambda!382969))))

(assert (=> bs!1810879 (not (= lambda!383025 lambda!382885))))

(declare-fun bs!1810884 () Bool)

(assert (= bs!1810884 (and d!2135219 d!2134781)))

(assert (=> bs!1810884 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!383025 lambda!382957))))

(declare-fun bs!1810885 () Bool)

(assert (= bs!1810885 (and d!2135219 b!6794489)))

(assert (=> bs!1810885 (not (= lambda!383025 lambda!382972))))

(declare-fun bs!1810886 () Bool)

(assert (= bs!1810886 (and d!2135219 b!6795321)))

(assert (=> bs!1810886 (not (= lambda!383025 lambda!383018))))

(assert (=> d!2135219 true))

(assert (=> d!2135219 true))

(declare-fun lambda!383026 () Int)

(assert (=> bs!1810877 (= lambda!383026 lambda!382954)))

(assert (=> bs!1810877 (not (= lambda!383026 lambda!382953))))

(assert (=> bs!1810878 (not (= lambda!383026 lambda!382970))))

(assert (=> bs!1810879 (not (= lambda!383026 lambda!382886))))

(assert (=> bs!1810880 (not (= lambda!383026 lambda!382948))))

(assert (=> bs!1810881 (not (= lambda!383026 lambda!383019))))

(assert (=> bs!1810879 (not (= lambda!383026 lambda!382884))))

(assert (=> bs!1810882 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!383026 lambda!382971))))

(declare-fun bs!1810887 () Bool)

(assert (= bs!1810887 d!2135219))

(assert (=> bs!1810887 (not (= lambda!383026 lambda!383025))))

(assert (=> bs!1810880 (not (= lambda!383026 lambda!382947))))

(assert (=> bs!1810883 (= (and (= (reg!16944 r!7292) (reg!16944 lt!2446884)) (= (Star!16615 (reg!16944 r!7292)) lt!2446884)) (= lambda!383026 lambda!382969))))

(assert (=> bs!1810879 (= (= (Star!16615 (reg!16944 r!7292)) r!7292) (= lambda!383026 lambda!382885))))

(assert (=> bs!1810884 (not (= lambda!383026 lambda!382957))))

(assert (=> bs!1810885 (not (= lambda!383026 lambda!382972))))

(assert (=> bs!1810886 (= (and (= (reg!16944 r!7292) (reg!16944 (regOne!33743 lt!2446884))) (= (Star!16615 (reg!16944 r!7292)) (regOne!33743 lt!2446884))) (= lambda!383026 lambda!383018))))

(assert (=> d!2135219 true))

(assert (=> d!2135219 true))

(assert (=> d!2135219 (= (Exists!3683 lambda!383025) (Exists!3683 lambda!383026))))

(assert (=> d!2135219 true))

(declare-fun _$91!806 () Unit!159921)

(assert (=> d!2135219 (= (choose!50629 (reg!16944 r!7292) s!2326) _$91!806)))

(declare-fun m!7542382 () Bool)

(assert (=> bs!1810887 m!7542382))

(declare-fun m!7542384 () Bool)

(assert (=> bs!1810887 m!7542384))

(assert (=> d!2134769 d!2135219))

(assert (=> d!2134769 d!2135211))

(assert (=> d!2134781 d!2134751))

(declare-fun bs!1810888 () Bool)

(declare-fun d!2135221 () Bool)

(assert (= bs!1810888 (and d!2135221 d!2134769)))

(declare-fun lambda!383029 () Int)

(assert (=> bs!1810888 (not (= lambda!383029 lambda!382954))))

(assert (=> bs!1810888 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!383029 lambda!382953))))

(declare-fun bs!1810889 () Bool)

(assert (= bs!1810889 (and d!2135221 b!6794436)))

(assert (=> bs!1810889 (not (= lambda!383029 lambda!382970))))

(declare-fun bs!1810890 () Bool)

(assert (= bs!1810890 (and d!2135221 b!6793723)))

(assert (=> bs!1810890 (not (= lambda!383029 lambda!382886))))

(declare-fun bs!1810891 () Bool)

(assert (= bs!1810891 (and d!2135221 d!2134753)))

(assert (=> bs!1810891 (not (= lambda!383029 lambda!382948))))

(declare-fun bs!1810892 () Bool)

(assert (= bs!1810892 (and d!2135221 b!6795325)))

(assert (=> bs!1810892 (not (= lambda!383029 lambda!383019))))

(declare-fun bs!1810893 () Bool)

(assert (= bs!1810893 (and d!2135221 d!2135219)))

(assert (=> bs!1810893 (not (= lambda!383029 lambda!383026))))

(assert (=> bs!1810890 (= lambda!383029 lambda!382884)))

(declare-fun bs!1810894 () Bool)

(assert (= bs!1810894 (and d!2135221 b!6794485)))

(assert (=> bs!1810894 (not (= lambda!383029 lambda!382971))))

(assert (=> bs!1810893 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!383029 lambda!383025))))

(assert (=> bs!1810891 (= lambda!383029 lambda!382947)))

(declare-fun bs!1810895 () Bool)

(assert (= bs!1810895 (and d!2135221 b!6794432)))

(assert (=> bs!1810895 (not (= lambda!383029 lambda!382969))))

(assert (=> bs!1810890 (not (= lambda!383029 lambda!382885))))

(declare-fun bs!1810896 () Bool)

(assert (= bs!1810896 (and d!2135221 d!2134781)))

(assert (=> bs!1810896 (= lambda!383029 lambda!382957)))

(declare-fun bs!1810897 () Bool)

(assert (= bs!1810897 (and d!2135221 b!6794489)))

(assert (=> bs!1810897 (not (= lambda!383029 lambda!382972))))

(declare-fun bs!1810898 () Bool)

(assert (= bs!1810898 (and d!2135221 b!6795321)))

(assert (=> bs!1810898 (not (= lambda!383029 lambda!383018))))

(assert (=> d!2135221 true))

(assert (=> d!2135221 true))

(assert (=> d!2135221 true))

(assert (=> d!2135221 (= (isDefined!13205 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326)) (Exists!3683 lambda!383029))))

(assert (=> d!2135221 true))

(declare-fun _$89!3064 () Unit!159921)

(assert (=> d!2135221 (= (choose!50631 (reg!16944 r!7292) r!7292 s!2326) _$89!3064)))

(declare-fun bs!1810899 () Bool)

(assert (= bs!1810899 d!2135221))

(assert (=> bs!1810899 m!7540902))

(assert (=> bs!1810899 m!7540902))

(assert (=> bs!1810899 m!7540906))

(declare-fun m!7542386 () Bool)

(assert (=> bs!1810899 m!7542386))

(assert (=> d!2134781 d!2135221))

(declare-fun d!2135223 () Bool)

(assert (=> d!2135223 (= (Exists!3683 lambda!382957) (choose!50630 lambda!382957))))

(declare-fun bs!1810900 () Bool)

(assert (= bs!1810900 d!2135223))

(declare-fun m!7542388 () Bool)

(assert (=> bs!1810900 m!7542388))

(assert (=> d!2134781 d!2135223))

(assert (=> d!2134781 d!2134779))

(assert (=> d!2134781 d!2135211))

(declare-fun d!2135225 () Bool)

(declare-fun res!2777133 () Bool)

(declare-fun e!4101320 () Bool)

(assert (=> d!2135225 (=> res!2777133 e!4101320)))

(assert (=> d!2135225 (= res!2777133 ((_ is Nil!66020) (exprs!6499 setElem!46525)))))

(assert (=> d!2135225 (= (forall!15807 (exprs!6499 setElem!46525) lambda!382921) e!4101320)))

(declare-fun b!6795398 () Bool)

(declare-fun e!4101321 () Bool)

(assert (=> b!6795398 (= e!4101320 e!4101321)))

(declare-fun res!2777134 () Bool)

(assert (=> b!6795398 (=> (not res!2777134) (not e!4101321))))

(assert (=> b!6795398 (= res!2777134 (dynLambda!26358 lambda!382921 (h!72468 (exprs!6499 setElem!46525))))))

(declare-fun b!6795399 () Bool)

(assert (=> b!6795399 (= e!4101321 (forall!15807 (t!379869 (exprs!6499 setElem!46525)) lambda!382921))))

(assert (= (and d!2135225 (not res!2777133)) b!6795398))

(assert (= (and b!6795398 res!2777134) b!6795399))

(declare-fun b_lambda!256037 () Bool)

(assert (=> (not b_lambda!256037) (not b!6795398)))

(declare-fun m!7542390 () Bool)

(assert (=> b!6795398 m!7542390))

(declare-fun m!7542392 () Bool)

(assert (=> b!6795399 m!7542392))

(assert (=> d!2134675 d!2135225))

(declare-fun d!2135227 () Bool)

(assert (=> d!2135227 true))

(declare-fun setRes!46545 () Bool)

(assert (=> d!2135227 setRes!46545))

(declare-fun condSetEmpty!46545 () Bool)

(declare-fun res!2777135 () (InoxSet Context!11998))

(assert (=> d!2135227 (= condSetEmpty!46545 (= res!2777135 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> d!2135227 (= (choose!50626 lt!2446892 lambda!382887) res!2777135)))

(declare-fun setIsEmpty!46545 () Bool)

(assert (=> setIsEmpty!46545 setRes!46545))

(declare-fun e!4101322 () Bool)

(declare-fun setElem!46545 () Context!11998)

(declare-fun tp!1860851 () Bool)

(declare-fun setNonEmpty!46545 () Bool)

(assert (=> setNonEmpty!46545 (= setRes!46545 (and tp!1860851 (inv!84784 setElem!46545) e!4101322))))

(declare-fun setRest!46545 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46545 (= res!2777135 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46545 true) setRest!46545))))

(declare-fun b!6795400 () Bool)

(declare-fun tp!1860850 () Bool)

(assert (=> b!6795400 (= e!4101322 tp!1860850)))

(assert (= (and d!2135227 condSetEmpty!46545) setIsEmpty!46545))

(assert (= (and d!2135227 (not condSetEmpty!46545)) setNonEmpty!46545))

(assert (= setNonEmpty!46545 b!6795400))

(declare-fun m!7542394 () Bool)

(assert (=> setNonEmpty!46545 m!7542394))

(assert (=> d!2134789 d!2135227))

(assert (=> d!2134693 d!2134697))

(declare-fun d!2135229 () Bool)

(assert (=> d!2135229 (= (map!15083 lt!2446905 lambda!382888) (store ((as const (Array Context!11998 Bool)) false) (dynLambda!26355 lambda!382888 lt!2446891) true))))

(assert (=> d!2135229 true))

(declare-fun _$12!1717 () Unit!159921)

(assert (=> d!2135229 (= (choose!50623 lt!2446905 lt!2446891 lambda!382888) _$12!1717)))

(declare-fun b_lambda!256039 () Bool)

(assert (=> (not b_lambda!256039) (not d!2135229)))

(declare-fun bs!1810901 () Bool)

(assert (= bs!1810901 d!2135229))

(assert (=> bs!1810901 m!7540924))

(assert (=> bs!1810901 m!7541188))

(assert (=> bs!1810901 m!7541188))

(assert (=> bs!1810901 m!7541190))

(assert (=> d!2134693 d!2135229))

(assert (=> d!2134821 d!2134775))

(assert (=> d!2134821 d!2134741))

(declare-fun d!2135231 () Bool)

(assert (=> d!2135231 (= (flatMap!2096 z!1189 lambda!382914) (choose!50626 z!1189 lambda!382914))))

(declare-fun bs!1810902 () Bool)

(assert (= bs!1810902 d!2135231))

(declare-fun m!7542396 () Bool)

(assert (=> bs!1810902 m!7542396))

(assert (=> d!2134657 d!2135231))

(declare-fun d!2135233 () Bool)

(assert (=> d!2135233 true))

(declare-fun setRes!46546 () Bool)

(assert (=> d!2135233 setRes!46546))

(declare-fun condSetEmpty!46546 () Bool)

(declare-fun res!2777136 () (InoxSet Context!11998))

(assert (=> d!2135233 (= condSetEmpty!46546 (= res!2777136 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> d!2135233 (= (choose!50626 lt!2446903 lambda!382887) res!2777136)))

(declare-fun setIsEmpty!46546 () Bool)

(assert (=> setIsEmpty!46546 setRes!46546))

(declare-fun setElem!46546 () Context!11998)

(declare-fun tp!1860853 () Bool)

(declare-fun e!4101323 () Bool)

(declare-fun setNonEmpty!46546 () Bool)

(assert (=> setNonEmpty!46546 (= setRes!46546 (and tp!1860853 (inv!84784 setElem!46546) e!4101323))))

(declare-fun setRest!46546 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46546 (= res!2777136 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46546 true) setRest!46546))))

(declare-fun b!6795401 () Bool)

(declare-fun tp!1860852 () Bool)

(assert (=> b!6795401 (= e!4101323 tp!1860852)))

(assert (= (and d!2135233 condSetEmpty!46546) setIsEmpty!46546))

(assert (= (and d!2135233 (not condSetEmpty!46546)) setNonEmpty!46546))

(assert (= setNonEmpty!46546 b!6795401))

(declare-fun m!7542398 () Bool)

(assert (=> setNonEmpty!46546 m!7542398))

(assert (=> d!2134805 d!2135233))

(declare-fun b!6795402 () Bool)

(declare-fun e!4101326 () Bool)

(declare-fun call!617213 () Bool)

(assert (=> b!6795402 (= e!4101326 call!617213)))

(declare-fun b!6795403 () Bool)

(declare-fun e!4101327 () Bool)

(declare-fun call!617214 () Bool)

(assert (=> b!6795403 (= e!4101327 call!617214)))

(declare-fun b!6795404 () Bool)

(declare-fun e!4101325 () Bool)

(assert (=> b!6795404 (= e!4101325 e!4101327)))

(declare-fun res!2777137 () Bool)

(assert (=> b!6795404 (=> (not res!2777137) (not e!4101327))))

(declare-fun call!617212 () Bool)

(assert (=> b!6795404 (= res!2777137 call!617212)))

(declare-fun b!6795405 () Bool)

(declare-fun res!2777139 () Bool)

(declare-fun e!4101324 () Bool)

(assert (=> b!6795405 (=> (not res!2777139) (not e!4101324))))

(assert (=> b!6795405 (= res!2777139 call!617212)))

(declare-fun e!4101329 () Bool)

(assert (=> b!6795405 (= e!4101329 e!4101324)))

(declare-fun b!6795406 () Bool)

(declare-fun e!4101328 () Bool)

(assert (=> b!6795406 (= e!4101328 e!4101329)))

(declare-fun c!1263249 () Bool)

(assert (=> b!6795406 (= c!1263249 ((_ is Union!16615) lt!2447026))))

(declare-fun b!6795407 () Bool)

(assert (=> b!6795407 (= e!4101324 call!617214)))

(declare-fun b!6795408 () Bool)

(assert (=> b!6795408 (= e!4101328 e!4101326)))

(declare-fun res!2777140 () Bool)

(assert (=> b!6795408 (= res!2777140 (not (nullable!6594 (reg!16944 lt!2447026))))))

(assert (=> b!6795408 (=> (not res!2777140) (not e!4101326))))

(declare-fun d!2135235 () Bool)

(declare-fun res!2777138 () Bool)

(declare-fun e!4101330 () Bool)

(assert (=> d!2135235 (=> res!2777138 e!4101330)))

(assert (=> d!2135235 (= res!2777138 ((_ is ElementMatch!16615) lt!2447026))))

(assert (=> d!2135235 (= (validRegex!8351 lt!2447026) e!4101330)))

(declare-fun bm!617207 () Bool)

(declare-fun c!1263248 () Bool)

(assert (=> bm!617207 (= call!617213 (validRegex!8351 (ite c!1263248 (reg!16944 lt!2447026) (ite c!1263249 (regOne!33743 lt!2447026) (regOne!33742 lt!2447026)))))))

(declare-fun b!6795409 () Bool)

(assert (=> b!6795409 (= e!4101330 e!4101328)))

(assert (=> b!6795409 (= c!1263248 ((_ is Star!16615) lt!2447026))))

(declare-fun bm!617208 () Bool)

(assert (=> bm!617208 (= call!617212 call!617213)))

(declare-fun b!6795410 () Bool)

(declare-fun res!2777141 () Bool)

(assert (=> b!6795410 (=> res!2777141 e!4101325)))

(assert (=> b!6795410 (= res!2777141 (not ((_ is Concat!25460) lt!2447026)))))

(assert (=> b!6795410 (= e!4101329 e!4101325)))

(declare-fun bm!617209 () Bool)

(assert (=> bm!617209 (= call!617214 (validRegex!8351 (ite c!1263249 (regTwo!33743 lt!2447026) (regTwo!33742 lt!2447026))))))

(assert (= (and d!2135235 (not res!2777138)) b!6795409))

(assert (= (and b!6795409 c!1263248) b!6795408))

(assert (= (and b!6795409 (not c!1263248)) b!6795406))

(assert (= (and b!6795408 res!2777140) b!6795402))

(assert (= (and b!6795406 c!1263249) b!6795405))

(assert (= (and b!6795406 (not c!1263249)) b!6795410))

(assert (= (and b!6795405 res!2777139) b!6795407))

(assert (= (and b!6795410 (not res!2777141)) b!6795404))

(assert (= (and b!6795404 res!2777137) b!6795403))

(assert (= (or b!6795407 b!6795403) bm!617209))

(assert (= (or b!6795405 b!6795404) bm!617208))

(assert (= (or b!6795402 bm!617208) bm!617207))

(declare-fun m!7542400 () Bool)

(assert (=> b!6795408 m!7542400))

(declare-fun m!7542402 () Bool)

(assert (=> bm!617207 m!7542402))

(declare-fun m!7542404 () Bool)

(assert (=> bm!617209 m!7542404))

(assert (=> d!2134827 d!2135235))

(assert (=> d!2134827 d!2134783))

(assert (=> d!2134827 d!2134785))

(declare-fun d!2135237 () Bool)

(declare-fun lambda!383032 () Int)

(declare-fun exists!2734 ((InoxSet Context!11998) Int) Bool)

(assert (=> d!2135237 (= (nullableZipper!2322 z!1189) (exists!2734 z!1189 lambda!383032))))

(declare-fun bs!1810903 () Bool)

(assert (= bs!1810903 d!2135237))

(declare-fun m!7542406 () Bool)

(assert (=> bs!1810903 m!7542406))

(assert (=> b!6794509 d!2135237))

(declare-fun d!2135239 () Bool)

(assert (=> d!2135239 (= (flatMap!2096 lt!2446903 lambda!382916) (choose!50626 lt!2446903 lambda!382916))))

(declare-fun bs!1810904 () Bool)

(assert (= bs!1810904 d!2135239))

(declare-fun m!7542408 () Bool)

(assert (=> bs!1810904 m!7542408))

(assert (=> d!2134673 d!2135239))

(declare-fun bs!1810905 () Bool)

(declare-fun b!6795412 () Bool)

(assert (= bs!1810905 (and b!6795412 d!2134769)))

(declare-fun lambda!383033 () Int)

(assert (=> bs!1810905 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33743 r!7292) (Star!16615 (reg!16944 r!7292)))) (= lambda!383033 lambda!382954))))

(assert (=> bs!1810905 (not (= lambda!383033 lambda!382953))))

(declare-fun bs!1810906 () Bool)

(assert (= bs!1810906 (and b!6795412 b!6794436)))

(assert (=> bs!1810906 (not (= lambda!383033 lambda!382970))))

(declare-fun bs!1810907 () Bool)

(assert (= bs!1810907 (and b!6795412 b!6793723)))

(assert (=> bs!1810907 (not (= lambda!383033 lambda!382886))))

(declare-fun bs!1810908 () Bool)

(assert (= bs!1810908 (and b!6795412 d!2134753)))

(assert (=> bs!1810908 (not (= lambda!383033 lambda!382948))))

(declare-fun bs!1810909 () Bool)

(assert (= bs!1810909 (and b!6795412 b!6795325)))

(assert (=> bs!1810909 (not (= lambda!383033 lambda!383019))))

(declare-fun bs!1810910 () Bool)

(assert (= bs!1810910 (and b!6795412 d!2135219)))

(assert (=> bs!1810910 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33743 r!7292) (Star!16615 (reg!16944 r!7292)))) (= lambda!383033 lambda!383026))))

(assert (=> bs!1810907 (not (= lambda!383033 lambda!382884))))

(declare-fun bs!1810911 () Bool)

(assert (= bs!1810911 (and b!6795412 b!6794485)))

(assert (=> bs!1810911 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33743 r!7292) r!7292)) (= lambda!383033 lambda!382971))))

(assert (=> bs!1810910 (not (= lambda!383033 lambda!383025))))

(assert (=> bs!1810908 (not (= lambda!383033 lambda!382947))))

(declare-fun bs!1810912 () Bool)

(assert (= bs!1810912 (and b!6795412 d!2135221)))

(assert (=> bs!1810912 (not (= lambda!383033 lambda!383029))))

(declare-fun bs!1810913 () Bool)

(assert (= bs!1810913 (and b!6795412 b!6794432)))

(assert (=> bs!1810913 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 lt!2446884)) (= (regTwo!33743 r!7292) lt!2446884)) (= lambda!383033 lambda!382969))))

(assert (=> bs!1810907 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33743 r!7292) r!7292)) (= lambda!383033 lambda!382885))))

(declare-fun bs!1810914 () Bool)

(assert (= bs!1810914 (and b!6795412 d!2134781)))

(assert (=> bs!1810914 (not (= lambda!383033 lambda!382957))))

(declare-fun bs!1810915 () Bool)

(assert (= bs!1810915 (and b!6795412 b!6794489)))

(assert (=> bs!1810915 (not (= lambda!383033 lambda!382972))))

(declare-fun bs!1810916 () Bool)

(assert (= bs!1810916 (and b!6795412 b!6795321)))

(assert (=> bs!1810916 (= (and (= (reg!16944 (regTwo!33743 r!7292)) (reg!16944 (regOne!33743 lt!2446884))) (= (regTwo!33743 r!7292) (regOne!33743 lt!2446884))) (= lambda!383033 lambda!383018))))

(assert (=> b!6795412 true))

(assert (=> b!6795412 true))

(declare-fun bs!1810917 () Bool)

(declare-fun b!6795416 () Bool)

(assert (= bs!1810917 (and b!6795416 d!2134769)))

(declare-fun lambda!383034 () Int)

(assert (=> bs!1810917 (not (= lambda!383034 lambda!382954))))

(assert (=> bs!1810917 (not (= lambda!383034 lambda!382953))))

(declare-fun bs!1810918 () Bool)

(assert (= bs!1810918 (and b!6795416 b!6794436)))

(assert (=> bs!1810918 (= (and (= (regOne!33742 (regTwo!33743 r!7292)) (regOne!33742 lt!2446884)) (= (regTwo!33742 (regTwo!33743 r!7292)) (regTwo!33742 lt!2446884))) (= lambda!383034 lambda!382970))))

(declare-fun bs!1810919 () Bool)

(assert (= bs!1810919 (and b!6795416 b!6793723)))

(assert (=> bs!1810919 (= (and (= (regOne!33742 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33742 (regTwo!33743 r!7292)) r!7292)) (= lambda!383034 lambda!382886))))

(declare-fun bs!1810920 () Bool)

(assert (= bs!1810920 (and b!6795416 d!2134753)))

(assert (=> bs!1810920 (= (and (= (regOne!33742 (regTwo!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33742 (regTwo!33743 r!7292)) r!7292)) (= lambda!383034 lambda!382948))))

(declare-fun bs!1810921 () Bool)

(assert (= bs!1810921 (and b!6795416 b!6795325)))

(assert (=> bs!1810921 (= (and (= (regOne!33742 (regTwo!33743 r!7292)) (regOne!33742 (regOne!33743 lt!2446884))) (= (regTwo!33742 (regTwo!33743 r!7292)) (regTwo!33742 (regOne!33743 lt!2446884)))) (= lambda!383034 lambda!383019))))

(declare-fun bs!1810922 () Bool)

(assert (= bs!1810922 (and b!6795416 d!2135219)))

(assert (=> bs!1810922 (not (= lambda!383034 lambda!383026))))

(declare-fun bs!1810923 () Bool)

(assert (= bs!1810923 (and b!6795416 b!6795412)))

(assert (=> bs!1810923 (not (= lambda!383034 lambda!383033))))

(assert (=> bs!1810919 (not (= lambda!383034 lambda!382884))))

(declare-fun bs!1810924 () Bool)

(assert (= bs!1810924 (and b!6795416 b!6794485)))

(assert (=> bs!1810924 (not (= lambda!383034 lambda!382971))))

(assert (=> bs!1810922 (not (= lambda!383034 lambda!383025))))

(assert (=> bs!1810920 (not (= lambda!383034 lambda!382947))))

(declare-fun bs!1810925 () Bool)

(assert (= bs!1810925 (and b!6795416 d!2135221)))

(assert (=> bs!1810925 (not (= lambda!383034 lambda!383029))))

(declare-fun bs!1810926 () Bool)

(assert (= bs!1810926 (and b!6795416 b!6794432)))

(assert (=> bs!1810926 (not (= lambda!383034 lambda!382969))))

(assert (=> bs!1810919 (not (= lambda!383034 lambda!382885))))

(declare-fun bs!1810927 () Bool)

(assert (= bs!1810927 (and b!6795416 d!2134781)))

(assert (=> bs!1810927 (not (= lambda!383034 lambda!382957))))

(declare-fun bs!1810928 () Bool)

(assert (= bs!1810928 (and b!6795416 b!6794489)))

(assert (=> bs!1810928 (= (and (= (regOne!33742 (regTwo!33743 r!7292)) (regOne!33742 r!7292)) (= (regTwo!33742 (regTwo!33743 r!7292)) (regTwo!33742 r!7292))) (= lambda!383034 lambda!382972))))

(declare-fun bs!1810929 () Bool)

(assert (= bs!1810929 (and b!6795416 b!6795321)))

(assert (=> bs!1810929 (not (= lambda!383034 lambda!383018))))

(assert (=> b!6795416 true))

(assert (=> b!6795416 true))

(declare-fun b!6795411 () Bool)

(declare-fun e!4101334 () Bool)

(assert (=> b!6795411 (= e!4101334 (= s!2326 (Cons!66021 (c!1262803 (regTwo!33743 r!7292)) Nil!66021)))))

(declare-fun e!4101336 () Bool)

(declare-fun call!617215 () Bool)

(assert (=> b!6795412 (= e!4101336 call!617215)))

(declare-fun b!6795413 () Bool)

(declare-fun e!4101335 () Bool)

(declare-fun e!4101337 () Bool)

(assert (=> b!6795413 (= e!4101335 e!4101337)))

(declare-fun c!1263253 () Bool)

(assert (=> b!6795413 (= c!1263253 ((_ is Star!16615) (regTwo!33743 r!7292)))))

(declare-fun d!2135241 () Bool)

(declare-fun c!1263255 () Bool)

(assert (=> d!2135241 (= c!1263255 ((_ is EmptyExpr!16615) (regTwo!33743 r!7292)))))

(declare-fun e!4101331 () Bool)

(assert (=> d!2135241 (= (matchRSpec!3716 (regTwo!33743 r!7292) s!2326) e!4101331)))

(declare-fun b!6795414 () Bool)

(declare-fun call!617216 () Bool)

(assert (=> b!6795414 (= e!4101331 call!617216)))

(declare-fun bm!617210 () Bool)

(assert (=> bm!617210 (= call!617215 (Exists!3683 (ite c!1263253 lambda!383033 lambda!383034)))))

(declare-fun b!6795415 () Bool)

(declare-fun c!1263254 () Bool)

(assert (=> b!6795415 (= c!1263254 ((_ is Union!16615) (regTwo!33743 r!7292)))))

(assert (=> b!6795415 (= e!4101334 e!4101335)))

(assert (=> b!6795416 (= e!4101337 call!617215)))

(declare-fun b!6795417 () Bool)

(declare-fun c!1263252 () Bool)

(assert (=> b!6795417 (= c!1263252 ((_ is ElementMatch!16615) (regTwo!33743 r!7292)))))

(declare-fun e!4101333 () Bool)

(assert (=> b!6795417 (= e!4101333 e!4101334)))

(declare-fun b!6795418 () Bool)

(declare-fun e!4101332 () Bool)

(assert (=> b!6795418 (= e!4101335 e!4101332)))

(declare-fun res!2777143 () Bool)

(assert (=> b!6795418 (= res!2777143 (matchRSpec!3716 (regOne!33743 (regTwo!33743 r!7292)) s!2326))))

(assert (=> b!6795418 (=> res!2777143 e!4101332)))

(declare-fun b!6795419 () Bool)

(declare-fun res!2777142 () Bool)

(assert (=> b!6795419 (=> res!2777142 e!4101336)))

(assert (=> b!6795419 (= res!2777142 call!617216)))

(assert (=> b!6795419 (= e!4101337 e!4101336)))

(declare-fun b!6795420 () Bool)

(assert (=> b!6795420 (= e!4101332 (matchRSpec!3716 (regTwo!33743 (regTwo!33743 r!7292)) s!2326))))

(declare-fun bm!617211 () Bool)

(assert (=> bm!617211 (= call!617216 (isEmpty!38394 s!2326))))

(declare-fun b!6795421 () Bool)

(assert (=> b!6795421 (= e!4101331 e!4101333)))

(declare-fun res!2777144 () Bool)

(assert (=> b!6795421 (= res!2777144 (not ((_ is EmptyLang!16615) (regTwo!33743 r!7292))))))

(assert (=> b!6795421 (=> (not res!2777144) (not e!4101333))))

(assert (= (and d!2135241 c!1263255) b!6795414))

(assert (= (and d!2135241 (not c!1263255)) b!6795421))

(assert (= (and b!6795421 res!2777144) b!6795417))

(assert (= (and b!6795417 c!1263252) b!6795411))

(assert (= (and b!6795417 (not c!1263252)) b!6795415))

(assert (= (and b!6795415 c!1263254) b!6795418))

(assert (= (and b!6795415 (not c!1263254)) b!6795413))

(assert (= (and b!6795418 (not res!2777143)) b!6795420))

(assert (= (and b!6795413 c!1263253) b!6795419))

(assert (= (and b!6795413 (not c!1263253)) b!6795416))

(assert (= (and b!6795419 (not res!2777142)) b!6795412))

(assert (= (or b!6795412 b!6795416) bm!617210))

(assert (= (or b!6795414 b!6795419) bm!617211))

(declare-fun m!7542410 () Bool)

(assert (=> bm!617210 m!7542410))

(declare-fun m!7542412 () Bool)

(assert (=> b!6795418 m!7542412))

(declare-fun m!7542414 () Bool)

(assert (=> b!6795420 m!7542414))

(assert (=> bm!617211 m!7540894))

(assert (=> b!6794493 d!2135241))

(declare-fun b!6795432 () Bool)

(declare-fun res!2777150 () Bool)

(declare-fun e!4101342 () Bool)

(assert (=> b!6795432 (=> (not res!2777150) (not e!4101342))))

(declare-fun lt!2447074 () List!66145)

(declare-fun size!40655 (List!66145) Int)

(assert (=> b!6795432 (= res!2777150 (= (size!40655 lt!2447074) (+ (size!40655 (_1!36893 (get!22992 lt!2447002))) (size!40655 (_2!36893 (get!22992 lt!2447002))))))))

(declare-fun b!6795433 () Bool)

(assert (=> b!6795433 (= e!4101342 (or (not (= (_2!36893 (get!22992 lt!2447002)) Nil!66021)) (= lt!2447074 (_1!36893 (get!22992 lt!2447002)))))))

(declare-fun b!6795430 () Bool)

(declare-fun e!4101343 () List!66145)

(assert (=> b!6795430 (= e!4101343 (_2!36893 (get!22992 lt!2447002)))))

(declare-fun b!6795431 () Bool)

(assert (=> b!6795431 (= e!4101343 (Cons!66021 (h!72469 (_1!36893 (get!22992 lt!2447002))) (++!14777 (t!379870 (_1!36893 (get!22992 lt!2447002))) (_2!36893 (get!22992 lt!2447002)))))))

(declare-fun d!2135243 () Bool)

(assert (=> d!2135243 e!4101342))

(declare-fun res!2777149 () Bool)

(assert (=> d!2135243 (=> (not res!2777149) (not e!4101342))))

(declare-fun content!12883 (List!66145) (InoxSet C!33500))

(assert (=> d!2135243 (= res!2777149 (= (content!12883 lt!2447074) ((_ map or) (content!12883 (_1!36893 (get!22992 lt!2447002))) (content!12883 (_2!36893 (get!22992 lt!2447002))))))))

(assert (=> d!2135243 (= lt!2447074 e!4101343)))

(declare-fun c!1263258 () Bool)

(assert (=> d!2135243 (= c!1263258 ((_ is Nil!66021) (_1!36893 (get!22992 lt!2447002))))))

(assert (=> d!2135243 (= (++!14777 (_1!36893 (get!22992 lt!2447002)) (_2!36893 (get!22992 lt!2447002))) lt!2447074)))

(assert (= (and d!2135243 c!1263258) b!6795430))

(assert (= (and d!2135243 (not c!1263258)) b!6795431))

(assert (= (and d!2135243 res!2777149) b!6795432))

(assert (= (and b!6795432 res!2777150) b!6795433))

(declare-fun m!7542416 () Bool)

(assert (=> b!6795432 m!7542416))

(declare-fun m!7542418 () Bool)

(assert (=> b!6795432 m!7542418))

(declare-fun m!7542420 () Bool)

(assert (=> b!6795432 m!7542420))

(declare-fun m!7542422 () Bool)

(assert (=> b!6795431 m!7542422))

(declare-fun m!7542424 () Bool)

(assert (=> d!2135243 m!7542424))

(declare-fun m!7542426 () Bool)

(assert (=> d!2135243 m!7542426))

(declare-fun m!7542428 () Bool)

(assert (=> d!2135243 m!7542428))

(assert (=> b!6794325 d!2135243))

(declare-fun d!2135245 () Bool)

(assert (=> d!2135245 (= (get!22992 lt!2447002) (v!52707 lt!2447002))))

(assert (=> b!6794325 d!2135245))

(declare-fun d!2135247 () Bool)

(assert (=> d!2135247 (= (head!13642 (exprs!6499 (h!72470 zl!343))) (h!72468 (exprs!6499 (h!72470 zl!343))))))

(assert (=> b!6794051 d!2135247))

(declare-fun d!2135249 () Bool)

(assert (=> d!2135249 (= (head!13641 s!2326) (h!72469 s!2326))))

(assert (=> b!6794478 d!2135249))

(declare-fun d!2135251 () Bool)

(assert (=> d!2135251 (= (isEmpty!38397 (t!379869 (unfocusZipperList!2036 zl!343))) ((_ is Nil!66020) (t!379869 (unfocusZipperList!2036 zl!343))))))

(assert (=> b!6794366 d!2135251))

(assert (=> b!6794475 d!2135175))

(assert (=> b!6794475 d!2135177))

(declare-fun e!4101346 () (InoxSet Context!11998))

(declare-fun b!6795434 () Bool)

(declare-fun call!617217 () (InoxSet Context!11998))

(assert (=> b!6795434 (= e!4101346 ((_ map or) call!617217 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885)))))) (h!72469 s!2326))))))

(declare-fun b!6795435 () Bool)

(declare-fun e!4101345 () Bool)

(assert (=> b!6795435 (= e!4101345 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885)))))))))

(declare-fun b!6795436 () Bool)

(declare-fun e!4101344 () (InoxSet Context!11998))

(assert (=> b!6795436 (= e!4101346 e!4101344)))

(declare-fun c!1263259 () Bool)

(assert (=> b!6795436 (= c!1263259 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885))))))))

(declare-fun b!6795437 () Bool)

(assert (=> b!6795437 (= e!4101344 call!617217)))

(declare-fun b!6795438 () Bool)

(assert (=> b!6795438 (= e!4101344 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617212 () Bool)

(assert (=> bm!617212 (= call!617217 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885))))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885)))))) (h!72469 s!2326)))))

(declare-fun d!2135253 () Bool)

(declare-fun c!1263260 () Bool)

(assert (=> d!2135253 (= c!1263260 e!4101345)))

(declare-fun res!2777151 () Bool)

(assert (=> d!2135253 (=> (not res!2777151) (not e!4101345))))

(assert (=> d!2135253 (= res!2777151 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885))))))))

(assert (=> d!2135253 (= (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (h!72469 s!2326)) e!4101346)))

(assert (= (and d!2135253 res!2777151) b!6795435))

(assert (= (and d!2135253 c!1263260) b!6795434))

(assert (= (and d!2135253 (not c!1263260)) b!6795436))

(assert (= (and b!6795436 c!1263259) b!6795437))

(assert (= (and b!6795436 (not c!1263259)) b!6795438))

(assert (= (or b!6795434 b!6795437) bm!617212))

(declare-fun m!7542430 () Bool)

(assert (=> b!6795434 m!7542430))

(declare-fun m!7542432 () Bool)

(assert (=> b!6795435 m!7542432))

(declare-fun m!7542434 () Bool)

(assert (=> bm!617212 m!7542434))

(assert (=> b!6794394 d!2135253))

(declare-fun d!2135255 () Bool)

(assert (=> d!2135255 (= (isUnion!1411 lt!2447009) ((_ is Union!16615) lt!2447009))))

(assert (=> b!6794362 d!2135255))

(declare-fun d!2135257 () Bool)

(declare-fun lt!2447077 () Int)

(assert (=> d!2135257 (>= lt!2447077 0)))

(declare-fun e!4101349 () Int)

(assert (=> d!2135257 (= lt!2447077 e!4101349)))

(declare-fun c!1263263 () Bool)

(assert (=> d!2135257 (= c!1263263 ((_ is Nil!66020) lt!2446966))))

(assert (=> d!2135257 (= (size!40653 lt!2446966) lt!2447077)))

(declare-fun b!6795443 () Bool)

(assert (=> b!6795443 (= e!4101349 0)))

(declare-fun b!6795444 () Bool)

(assert (=> b!6795444 (= e!4101349 (+ 1 (size!40653 (t!379869 lt!2446966))))))

(assert (= (and d!2135257 c!1263263) b!6795443))

(assert (= (and d!2135257 (not c!1263263)) b!6795444))

(declare-fun m!7542436 () Bool)

(assert (=> b!6795444 m!7542436))

(assert (=> b!6794124 d!2135257))

(declare-fun d!2135259 () Bool)

(declare-fun lt!2447078 () Int)

(assert (=> d!2135259 (>= lt!2447078 0)))

(declare-fun e!4101350 () Int)

(assert (=> d!2135259 (= lt!2447078 e!4101350)))

(declare-fun c!1263264 () Bool)

(assert (=> d!2135259 (= c!1263264 ((_ is Nil!66020) (Cons!66020 (reg!16944 r!7292) Nil!66020)))))

(assert (=> d!2135259 (= (size!40653 (Cons!66020 (reg!16944 r!7292) Nil!66020)) lt!2447078)))

(declare-fun b!6795445 () Bool)

(assert (=> b!6795445 (= e!4101350 0)))

(declare-fun b!6795446 () Bool)

(assert (=> b!6795446 (= e!4101350 (+ 1 (size!40653 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)))))))

(assert (= (and d!2135259 c!1263264) b!6795445))

(assert (= (and d!2135259 (not c!1263264)) b!6795446))

(assert (=> b!6795446 m!7542308))

(assert (=> b!6794124 d!2135259))

(declare-fun d!2135261 () Bool)

(declare-fun lt!2447079 () Int)

(assert (=> d!2135261 (>= lt!2447079 0)))

(declare-fun e!4101351 () Int)

(assert (=> d!2135261 (= lt!2447079 e!4101351)))

(declare-fun c!1263265 () Bool)

(assert (=> d!2135261 (= c!1263265 ((_ is Nil!66020) lt!2446904))))

(assert (=> d!2135261 (= (size!40653 lt!2446904) lt!2447079)))

(declare-fun b!6795447 () Bool)

(assert (=> b!6795447 (= e!4101351 0)))

(declare-fun b!6795448 () Bool)

(assert (=> b!6795448 (= e!4101351 (+ 1 (size!40653 (t!379869 lt!2446904))))))

(assert (= (and d!2135261 c!1263265) b!6795447))

(assert (= (and d!2135261 (not c!1263265)) b!6795448))

(declare-fun m!7542438 () Bool)

(assert (=> b!6795448 m!7542438))

(assert (=> b!6794124 d!2135261))

(declare-fun d!2135263 () Bool)

(assert (=> d!2135263 (= (isEmpty!38397 (tail!12727 (exprs!6499 (h!72470 zl!343)))) ((_ is Nil!66020) (tail!12727 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> b!6794047 d!2135263))

(declare-fun d!2135265 () Bool)

(assert (=> d!2135265 (= (tail!12727 (exprs!6499 (h!72470 zl!343))) (t!379869 (exprs!6499 (h!72470 zl!343))))))

(assert (=> b!6794047 d!2135265))

(assert (=> b!6794503 d!2135249))

(assert (=> d!2134791 d!2134789))

(declare-fun d!2135267 () Bool)

(assert (=> d!2135267 (= (flatMap!2096 lt!2446892 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446908))))

(assert (=> d!2135267 true))

(declare-fun _$13!4250 () Unit!159921)

(assert (=> d!2135267 (= (choose!50627 lt!2446892 lt!2446908 lambda!382887) _$13!4250)))

(declare-fun b_lambda!256041 () Bool)

(assert (=> (not b_lambda!256041) (not d!2135267)))

(declare-fun bs!1810930 () Bool)

(assert (= bs!1810930 d!2135267))

(assert (=> bs!1810930 m!7540880))

(assert (=> bs!1810930 m!7541442))

(assert (=> d!2134791 d!2135267))

(assert (=> b!6794500 d!2135175))

(assert (=> b!6794500 d!2135177))

(declare-fun d!2135269 () Bool)

(assert (=> d!2135269 true))

(declare-fun setRes!46549 () Bool)

(assert (=> d!2135269 setRes!46549))

(declare-fun condSetEmpty!46549 () Bool)

(declare-fun res!2777154 () (InoxSet Context!11998))

(assert (=> d!2135269 (= condSetEmpty!46549 (= res!2777154 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> d!2135269 (= (choose!50625 lt!2446905 lambda!382888) res!2777154)))

(declare-fun setIsEmpty!46549 () Bool)

(assert (=> setIsEmpty!46549 setRes!46549))

(declare-fun e!4101354 () Bool)

(declare-fun setElem!46549 () Context!11998)

(declare-fun tp!1860859 () Bool)

(declare-fun setNonEmpty!46549 () Bool)

(assert (=> setNonEmpty!46549 (= setRes!46549 (and tp!1860859 (inv!84784 setElem!46549) e!4101354))))

(declare-fun setRest!46549 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46549 (= res!2777154 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46549 true) setRest!46549))))

(declare-fun b!6795451 () Bool)

(declare-fun tp!1860858 () Bool)

(assert (=> b!6795451 (= e!4101354 tp!1860858)))

(assert (= (and d!2135269 condSetEmpty!46549) setIsEmpty!46549))

(assert (= (and d!2135269 (not condSetEmpty!46549)) setNonEmpty!46549))

(assert (= setNonEmpty!46549 b!6795451))

(declare-fun m!7542440 () Bool)

(assert (=> setNonEmpty!46549 m!7542440))

(assert (=> d!2134697 d!2135269))

(declare-fun d!2135271 () Bool)

(assert (=> d!2135271 (= (head!13642 (unfocusZipperList!2036 zl!343)) (h!72468 (unfocusZipperList!2036 zl!343)))))

(assert (=> b!6794358 d!2135271))

(assert (=> d!2134809 d!2134805))

(declare-fun d!2135273 () Bool)

(assert (=> d!2135273 (= (flatMap!2096 lt!2446903 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446885))))

(assert (=> d!2135273 true))

(declare-fun _$13!4251 () Unit!159921)

(assert (=> d!2135273 (= (choose!50627 lt!2446903 lt!2446885 lambda!382887) _$13!4251)))

(declare-fun b_lambda!256043 () Bool)

(assert (=> (not b_lambda!256043) (not d!2135273)))

(declare-fun bs!1810931 () Bool)

(assert (= bs!1810931 d!2135273))

(assert (=> bs!1810931 m!7540920))

(assert (=> bs!1810931 m!7541480))

(assert (=> d!2134809 d!2135273))

(declare-fun b!6795452 () Bool)

(declare-fun e!4101357 () Bool)

(declare-fun call!617219 () Bool)

(assert (=> b!6795452 (= e!4101357 call!617219)))

(declare-fun b!6795453 () Bool)

(declare-fun e!4101358 () Bool)

(declare-fun call!617220 () Bool)

(assert (=> b!6795453 (= e!4101358 call!617220)))

(declare-fun b!6795454 () Bool)

(declare-fun e!4101356 () Bool)

(assert (=> b!6795454 (= e!4101356 e!4101358)))

(declare-fun res!2777155 () Bool)

(assert (=> b!6795454 (=> (not res!2777155) (not e!4101358))))

(declare-fun call!617218 () Bool)

(assert (=> b!6795454 (= res!2777155 call!617218)))

(declare-fun b!6795455 () Bool)

(declare-fun res!2777157 () Bool)

(declare-fun e!4101355 () Bool)

(assert (=> b!6795455 (=> (not res!2777157) (not e!4101355))))

(assert (=> b!6795455 (= res!2777157 call!617218)))

(declare-fun e!4101360 () Bool)

(assert (=> b!6795455 (= e!4101360 e!4101355)))

(declare-fun b!6795456 () Bool)

(declare-fun e!4101359 () Bool)

(assert (=> b!6795456 (= e!4101359 e!4101360)))

(declare-fun c!1263267 () Bool)

(assert (=> b!6795456 (= c!1263267 ((_ is Union!16615) lt!2447022))))

(declare-fun b!6795457 () Bool)

(assert (=> b!6795457 (= e!4101355 call!617220)))

(declare-fun b!6795458 () Bool)

(assert (=> b!6795458 (= e!4101359 e!4101357)))

(declare-fun res!2777158 () Bool)

(assert (=> b!6795458 (= res!2777158 (not (nullable!6594 (reg!16944 lt!2447022))))))

(assert (=> b!6795458 (=> (not res!2777158) (not e!4101357))))

(declare-fun d!2135275 () Bool)

(declare-fun res!2777156 () Bool)

(declare-fun e!4101361 () Bool)

(assert (=> d!2135275 (=> res!2777156 e!4101361)))

(assert (=> d!2135275 (= res!2777156 ((_ is ElementMatch!16615) lt!2447022))))

(assert (=> d!2135275 (= (validRegex!8351 lt!2447022) e!4101361)))

(declare-fun c!1263266 () Bool)

(declare-fun bm!617213 () Bool)

(assert (=> bm!617213 (= call!617219 (validRegex!8351 (ite c!1263266 (reg!16944 lt!2447022) (ite c!1263267 (regOne!33743 lt!2447022) (regOne!33742 lt!2447022)))))))

(declare-fun b!6795459 () Bool)

(assert (=> b!6795459 (= e!4101361 e!4101359)))

(assert (=> b!6795459 (= c!1263266 ((_ is Star!16615) lt!2447022))))

(declare-fun bm!617214 () Bool)

(assert (=> bm!617214 (= call!617218 call!617219)))

(declare-fun b!6795460 () Bool)

(declare-fun res!2777159 () Bool)

(assert (=> b!6795460 (=> res!2777159 e!4101356)))

(assert (=> b!6795460 (= res!2777159 (not ((_ is Concat!25460) lt!2447022)))))

(assert (=> b!6795460 (= e!4101360 e!4101356)))

(declare-fun bm!617215 () Bool)

(assert (=> bm!617215 (= call!617220 (validRegex!8351 (ite c!1263267 (regTwo!33743 lt!2447022) (regTwo!33742 lt!2447022))))))

(assert (= (and d!2135275 (not res!2777156)) b!6795459))

(assert (= (and b!6795459 c!1263266) b!6795458))

(assert (= (and b!6795459 (not c!1263266)) b!6795456))

(assert (= (and b!6795458 res!2777158) b!6795452))

(assert (= (and b!6795456 c!1263267) b!6795455))

(assert (= (and b!6795456 (not c!1263267)) b!6795460))

(assert (= (and b!6795455 res!2777157) b!6795457))

(assert (= (and b!6795460 (not res!2777159)) b!6795454))

(assert (= (and b!6795454 res!2777155) b!6795453))

(assert (= (or b!6795457 b!6795453) bm!617215))

(assert (= (or b!6795455 b!6795454) bm!617214))

(assert (= (or b!6795452 bm!617214) bm!617213))

(declare-fun m!7542442 () Bool)

(assert (=> b!6795458 m!7542442))

(declare-fun m!7542444 () Bool)

(assert (=> bm!617213 m!7542444))

(declare-fun m!7542446 () Bool)

(assert (=> bm!617215 m!7542446))

(assert (=> d!2134817 d!2135275))

(declare-fun bs!1810932 () Bool)

(declare-fun d!2135277 () Bool)

(assert (= bs!1810932 (and d!2135277 d!2134829)))

(declare-fun lambda!383035 () Int)

(assert (=> bs!1810932 (= lambda!383035 lambda!382973)))

(declare-fun bs!1810933 () Bool)

(assert (= bs!1810933 (and d!2135277 b!6793734)))

(assert (=> bs!1810933 (= lambda!383035 lambda!382889)))

(declare-fun bs!1810934 () Bool)

(assert (= bs!1810934 (and d!2135277 d!2134677)))

(assert (=> bs!1810934 (= lambda!383035 lambda!382930)))

(declare-fun bs!1810935 () Bool)

(assert (= bs!1810935 (and d!2135277 d!2134689)))

(assert (=> bs!1810935 (= lambda!383035 lambda!382932)))

(declare-fun bs!1810936 () Bool)

(assert (= bs!1810936 (and d!2135277 d!2134785)))

(assert (=> bs!1810936 (= lambda!383035 lambda!382963)))

(declare-fun bs!1810937 () Bool)

(assert (= bs!1810937 (and d!2135277 d!2135203)))

(assert (=> bs!1810937 (= lambda!383035 lambda!383020)))

(declare-fun bs!1810938 () Bool)

(assert (= bs!1810938 (and d!2135277 d!2135173)))

(assert (=> bs!1810938 (= lambda!383035 lambda!383017)))

(declare-fun bs!1810939 () Bool)

(assert (= bs!1810939 (and d!2135277 d!2134783)))

(assert (=> bs!1810939 (= lambda!383035 lambda!382960)))

(declare-fun bs!1810940 () Bool)

(assert (= bs!1810940 (and d!2135277 d!2134675)))

(assert (=> bs!1810940 (= lambda!383035 lambda!382921)))

(declare-fun bs!1810941 () Bool)

(assert (= bs!1810941 (and d!2135277 d!2135169)))

(assert (=> bs!1810941 (= lambda!383035 lambda!383016)))

(declare-fun b!6795461 () Bool)

(declare-fun e!4101365 () Bool)

(declare-fun e!4101366 () Bool)

(assert (=> b!6795461 (= e!4101365 e!4101366)))

(declare-fun c!1263271 () Bool)

(assert (=> b!6795461 (= c!1263271 (isEmpty!38397 (tail!12727 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022)))))))

(declare-fun b!6795462 () Bool)

(declare-fun lt!2447080 () Regex!16615)

(assert (=> b!6795462 (= e!4101366 (= lt!2447080 (head!13642 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022)))))))

(declare-fun b!6795463 () Bool)

(declare-fun e!4101364 () Regex!16615)

(assert (=> b!6795463 (= e!4101364 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))

(declare-fun b!6795464 () Bool)

(declare-fun e!4101363 () Bool)

(assert (=> b!6795464 (= e!4101363 e!4101365)))

(declare-fun c!1263268 () Bool)

(assert (=> b!6795464 (= c!1263268 (isEmpty!38397 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))

(assert (=> d!2135277 e!4101363))

(declare-fun res!2777160 () Bool)

(assert (=> d!2135277 (=> (not res!2777160) (not e!4101363))))

(assert (=> d!2135277 (= res!2777160 (validRegex!8351 lt!2447080))))

(assert (=> d!2135277 (= lt!2447080 e!4101364)))

(declare-fun c!1263270 () Bool)

(declare-fun e!4101367 () Bool)

(assert (=> d!2135277 (= c!1263270 e!4101367)))

(declare-fun res!2777161 () Bool)

(assert (=> d!2135277 (=> (not res!2777161) (not e!4101367))))

(assert (=> d!2135277 (= res!2777161 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))

(assert (=> d!2135277 (forall!15807 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022)) lambda!383035)))

(assert (=> d!2135277 (= (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))) lt!2447080)))

(declare-fun b!6795465 () Bool)

(declare-fun e!4101362 () Regex!16615)

(assert (=> b!6795465 (= e!4101362 EmptyLang!16615)))

(declare-fun b!6795466 () Bool)

(assert (=> b!6795466 (= e!4101366 (isUnion!1411 lt!2447080))))

(declare-fun b!6795467 () Bool)

(assert (=> b!6795467 (= e!4101364 e!4101362)))

(declare-fun c!1263269 () Bool)

(assert (=> b!6795467 (= c!1263269 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))

(declare-fun b!6795468 () Bool)

(assert (=> b!6795468 (= e!4101365 (isEmptyLang!1981 lt!2447080))))

(declare-fun b!6795469 () Bool)

(assert (=> b!6795469 (= e!4101362 (Union!16615 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))) (generalisedUnion!2459 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022))))))))

(declare-fun b!6795470 () Bool)

(assert (=> b!6795470 (= e!4101367 (isEmpty!38397 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022)))))))

(assert (= (and d!2135277 res!2777161) b!6795470))

(assert (= (and d!2135277 c!1263270) b!6795463))

(assert (= (and d!2135277 (not c!1263270)) b!6795467))

(assert (= (and b!6795467 c!1263269) b!6795469))

(assert (= (and b!6795467 (not c!1263269)) b!6795465))

(assert (= (and d!2135277 res!2777160) b!6795464))

(assert (= (and b!6795464 c!1263268) b!6795468))

(assert (= (and b!6795464 (not c!1263268)) b!6795461))

(assert (= (and b!6795461 c!1263271) b!6795462))

(assert (= (and b!6795461 (not c!1263271)) b!6795466))

(assert (=> b!6795461 m!7541504))

(declare-fun m!7542448 () Bool)

(assert (=> b!6795461 m!7542448))

(assert (=> b!6795461 m!7542448))

(declare-fun m!7542450 () Bool)

(assert (=> b!6795461 m!7542450))

(declare-fun m!7542452 () Bool)

(assert (=> b!6795466 m!7542452))

(assert (=> b!6795462 m!7541504))

(declare-fun m!7542454 () Bool)

(assert (=> b!6795462 m!7542454))

(declare-fun m!7542456 () Bool)

(assert (=> b!6795470 m!7542456))

(assert (=> b!6795464 m!7541504))

(declare-fun m!7542458 () Bool)

(assert (=> b!6795464 m!7542458))

(declare-fun m!7542460 () Bool)

(assert (=> d!2135277 m!7542460))

(assert (=> d!2135277 m!7541504))

(declare-fun m!7542462 () Bool)

(assert (=> d!2135277 m!7542462))

(declare-fun m!7542464 () Bool)

(assert (=> b!6795468 m!7542464))

(declare-fun m!7542466 () Bool)

(assert (=> b!6795469 m!7542466))

(assert (=> d!2134817 d!2135277))

(declare-fun bs!1810942 () Bool)

(declare-fun d!2135279 () Bool)

(assert (= bs!1810942 (and d!2135279 d!2134829)))

(declare-fun lambda!383036 () Int)

(assert (=> bs!1810942 (= lambda!383036 lambda!382973)))

(declare-fun bs!1810943 () Bool)

(assert (= bs!1810943 (and d!2135279 b!6793734)))

(assert (=> bs!1810943 (= lambda!383036 lambda!382889)))

(declare-fun bs!1810944 () Bool)

(assert (= bs!1810944 (and d!2135279 d!2134677)))

(assert (=> bs!1810944 (= lambda!383036 lambda!382930)))

(declare-fun bs!1810945 () Bool)

(assert (= bs!1810945 (and d!2135279 d!2134689)))

(assert (=> bs!1810945 (= lambda!383036 lambda!382932)))

(declare-fun bs!1810946 () Bool)

(assert (= bs!1810946 (and d!2135279 d!2134785)))

(assert (=> bs!1810946 (= lambda!383036 lambda!382963)))

(declare-fun bs!1810947 () Bool)

(assert (= bs!1810947 (and d!2135279 d!2135203)))

(assert (=> bs!1810947 (= lambda!383036 lambda!383020)))

(declare-fun bs!1810948 () Bool)

(assert (= bs!1810948 (and d!2135279 d!2134783)))

(assert (=> bs!1810948 (= lambda!383036 lambda!382960)))

(declare-fun bs!1810949 () Bool)

(assert (= bs!1810949 (and d!2135279 d!2134675)))

(assert (=> bs!1810949 (= lambda!383036 lambda!382921)))

(declare-fun bs!1810950 () Bool)

(assert (= bs!1810950 (and d!2135279 d!2135169)))

(assert (=> bs!1810950 (= lambda!383036 lambda!383016)))

(declare-fun bs!1810951 () Bool)

(assert (= bs!1810951 (and d!2135279 d!2135173)))

(assert (=> bs!1810951 (= lambda!383036 lambda!383017)))

(declare-fun bs!1810952 () Bool)

(assert (= bs!1810952 (and d!2135279 d!2135277)))

(assert (=> bs!1810952 (= lambda!383036 lambda!383035)))

(declare-fun lt!2447081 () List!66144)

(assert (=> d!2135279 (forall!15807 lt!2447081 lambda!383036)))

(declare-fun e!4101368 () List!66144)

(assert (=> d!2135279 (= lt!2447081 e!4101368)))

(declare-fun c!1263272 () Bool)

(assert (=> d!2135279 (= c!1263272 ((_ is Cons!66022) (Cons!66022 lt!2446891 Nil!66022)))))

(assert (=> d!2135279 (= (unfocusZipperList!2036 (Cons!66022 lt!2446891 Nil!66022)) lt!2447081)))

(declare-fun b!6795471 () Bool)

(assert (=> b!6795471 (= e!4101368 (Cons!66020 (generalisedConcat!2212 (exprs!6499 (h!72470 (Cons!66022 lt!2446891 Nil!66022)))) (unfocusZipperList!2036 (t!379871 (Cons!66022 lt!2446891 Nil!66022)))))))

(declare-fun b!6795472 () Bool)

(assert (=> b!6795472 (= e!4101368 Nil!66020)))

(assert (= (and d!2135279 c!1263272) b!6795471))

(assert (= (and d!2135279 (not c!1263272)) b!6795472))

(declare-fun m!7542468 () Bool)

(assert (=> d!2135279 m!7542468))

(declare-fun m!7542470 () Bool)

(assert (=> b!6795471 m!7542470))

(declare-fun m!7542472 () Bool)

(assert (=> b!6795471 m!7542472))

(assert (=> d!2134817 d!2135279))

(declare-fun d!2135281 () Bool)

(declare-fun res!2777166 () Bool)

(declare-fun e!4101373 () Bool)

(assert (=> d!2135281 (=> res!2777166 e!4101373)))

(assert (=> d!2135281 (= res!2777166 ((_ is Nil!66022) lt!2447029))))

(assert (=> d!2135281 (= (noDuplicate!2400 lt!2447029) e!4101373)))

(declare-fun b!6795477 () Bool)

(declare-fun e!4101374 () Bool)

(assert (=> b!6795477 (= e!4101373 e!4101374)))

(declare-fun res!2777167 () Bool)

(assert (=> b!6795477 (=> (not res!2777167) (not e!4101374))))

(declare-fun contains!20293 (List!66146 Context!11998) Bool)

(assert (=> b!6795477 (= res!2777167 (not (contains!20293 (t!379871 lt!2447029) (h!72470 lt!2447029))))))

(declare-fun b!6795478 () Bool)

(assert (=> b!6795478 (= e!4101374 (noDuplicate!2400 (t!379871 lt!2447029)))))

(assert (= (and d!2135281 (not res!2777166)) b!6795477))

(assert (= (and b!6795477 res!2777167) b!6795478))

(declare-fun m!7542474 () Bool)

(assert (=> b!6795477 m!7542474))

(declare-fun m!7542476 () Bool)

(assert (=> b!6795478 m!7542476))

(assert (=> d!2134833 d!2135281))

(declare-fun d!2135283 () Bool)

(declare-fun e!4101383 () Bool)

(assert (=> d!2135283 e!4101383))

(declare-fun res!2777173 () Bool)

(assert (=> d!2135283 (=> (not res!2777173) (not e!4101383))))

(declare-fun res!2777172 () List!66146)

(assert (=> d!2135283 (= res!2777173 (noDuplicate!2400 res!2777172))))

(declare-fun e!4101381 () Bool)

(assert (=> d!2135283 e!4101381))

(assert (=> d!2135283 (= (choose!50633 z!1189) res!2777172)))

(declare-fun b!6795486 () Bool)

(declare-fun e!4101382 () Bool)

(declare-fun tp!1860865 () Bool)

(assert (=> b!6795486 (= e!4101382 tp!1860865)))

(declare-fun tp!1860864 () Bool)

(declare-fun b!6795485 () Bool)

(assert (=> b!6795485 (= e!4101381 (and (inv!84784 (h!72470 res!2777172)) e!4101382 tp!1860864))))

(declare-fun b!6795487 () Bool)

(assert (=> b!6795487 (= e!4101383 (= (content!12881 res!2777172) z!1189))))

(assert (= b!6795485 b!6795486))

(assert (= (and d!2135283 ((_ is Cons!66022) res!2777172)) b!6795485))

(assert (= (and d!2135283 res!2777173) b!6795487))

(declare-fun m!7542478 () Bool)

(assert (=> d!2135283 m!7542478))

(declare-fun m!7542480 () Bool)

(assert (=> b!6795485 m!7542480))

(declare-fun m!7542482 () Bool)

(assert (=> b!6795487 m!7542482))

(assert (=> d!2134833 d!2135283))

(assert (=> bs!1810478 d!2134797))

(declare-fun b!6795488 () Bool)

(declare-fun e!4101386 () Bool)

(declare-fun call!617222 () Bool)

(assert (=> b!6795488 (= e!4101386 call!617222)))

(declare-fun b!6795489 () Bool)

(declare-fun e!4101387 () Bool)

(declare-fun call!617223 () Bool)

(assert (=> b!6795489 (= e!4101387 call!617223)))

(declare-fun b!6795490 () Bool)

(declare-fun e!4101385 () Bool)

(assert (=> b!6795490 (= e!4101385 e!4101387)))

(declare-fun res!2777174 () Bool)

(assert (=> b!6795490 (=> (not res!2777174) (not e!4101387))))

(declare-fun call!617221 () Bool)

(assert (=> b!6795490 (= res!2777174 call!617221)))

(declare-fun b!6795491 () Bool)

(declare-fun res!2777176 () Bool)

(declare-fun e!4101384 () Bool)

(assert (=> b!6795491 (=> (not res!2777176) (not e!4101384))))

(assert (=> b!6795491 (= res!2777176 call!617221)))

(declare-fun e!4101389 () Bool)

(assert (=> b!6795491 (= e!4101389 e!4101384)))

(declare-fun b!6795492 () Bool)

(declare-fun e!4101388 () Bool)

(assert (=> b!6795492 (= e!4101388 e!4101389)))

(declare-fun c!1263274 () Bool)

(assert (=> b!6795492 (= c!1263274 ((_ is Union!16615) lt!2447009))))

(declare-fun b!6795493 () Bool)

(assert (=> b!6795493 (= e!4101384 call!617223)))

(declare-fun b!6795494 () Bool)

(assert (=> b!6795494 (= e!4101388 e!4101386)))

(declare-fun res!2777177 () Bool)

(assert (=> b!6795494 (= res!2777177 (not (nullable!6594 (reg!16944 lt!2447009))))))

(assert (=> b!6795494 (=> (not res!2777177) (not e!4101386))))

(declare-fun d!2135285 () Bool)

(declare-fun res!2777175 () Bool)

(declare-fun e!4101390 () Bool)

(assert (=> d!2135285 (=> res!2777175 e!4101390)))

(assert (=> d!2135285 (= res!2777175 ((_ is ElementMatch!16615) lt!2447009))))

(assert (=> d!2135285 (= (validRegex!8351 lt!2447009) e!4101390)))

(declare-fun c!1263273 () Bool)

(declare-fun bm!617216 () Bool)

(assert (=> bm!617216 (= call!617222 (validRegex!8351 (ite c!1263273 (reg!16944 lt!2447009) (ite c!1263274 (regOne!33743 lt!2447009) (regOne!33742 lt!2447009)))))))

(declare-fun b!6795495 () Bool)

(assert (=> b!6795495 (= e!4101390 e!4101388)))

(assert (=> b!6795495 (= c!1263273 ((_ is Star!16615) lt!2447009))))

(declare-fun bm!617217 () Bool)

(assert (=> bm!617217 (= call!617221 call!617222)))

(declare-fun b!6795496 () Bool)

(declare-fun res!2777178 () Bool)

(assert (=> b!6795496 (=> res!2777178 e!4101385)))

(assert (=> b!6795496 (= res!2777178 (not ((_ is Concat!25460) lt!2447009)))))

(assert (=> b!6795496 (= e!4101389 e!4101385)))

(declare-fun bm!617218 () Bool)

(assert (=> bm!617218 (= call!617223 (validRegex!8351 (ite c!1263274 (regTwo!33743 lt!2447009) (regTwo!33742 lt!2447009))))))

(assert (= (and d!2135285 (not res!2777175)) b!6795495))

(assert (= (and b!6795495 c!1263273) b!6795494))

(assert (= (and b!6795495 (not c!1263273)) b!6795492))

(assert (= (and b!6795494 res!2777177) b!6795488))

(assert (= (and b!6795492 c!1263274) b!6795491))

(assert (= (and b!6795492 (not c!1263274)) b!6795496))

(assert (= (and b!6795491 res!2777176) b!6795493))

(assert (= (and b!6795496 (not res!2777178)) b!6795490))

(assert (= (and b!6795490 res!2777174) b!6795489))

(assert (= (or b!6795493 b!6795489) bm!617218))

(assert (= (or b!6795491 b!6795490) bm!617217))

(assert (= (or b!6795488 bm!617217) bm!617216))

(declare-fun m!7542484 () Bool)

(assert (=> b!6795494 m!7542484))

(declare-fun m!7542486 () Bool)

(assert (=> bm!617216 m!7542486))

(declare-fun m!7542488 () Bool)

(assert (=> bm!617218 m!7542488))

(assert (=> d!2134783 d!2135285))

(declare-fun d!2135287 () Bool)

(declare-fun res!2777179 () Bool)

(declare-fun e!4101391 () Bool)

(assert (=> d!2135287 (=> res!2777179 e!4101391)))

(assert (=> d!2135287 (= res!2777179 ((_ is Nil!66020) (unfocusZipperList!2036 zl!343)))))

(assert (=> d!2135287 (= (forall!15807 (unfocusZipperList!2036 zl!343) lambda!382960) e!4101391)))

(declare-fun b!6795497 () Bool)

(declare-fun e!4101392 () Bool)

(assert (=> b!6795497 (= e!4101391 e!4101392)))

(declare-fun res!2777180 () Bool)

(assert (=> b!6795497 (=> (not res!2777180) (not e!4101392))))

(assert (=> b!6795497 (= res!2777180 (dynLambda!26358 lambda!382960 (h!72468 (unfocusZipperList!2036 zl!343))))))

(declare-fun b!6795498 () Bool)

(assert (=> b!6795498 (= e!4101392 (forall!15807 (t!379869 (unfocusZipperList!2036 zl!343)) lambda!382960))))

(assert (= (and d!2135287 (not res!2777179)) b!6795497))

(assert (= (and b!6795497 res!2777180) b!6795498))

(declare-fun b_lambda!256045 () Bool)

(assert (=> (not b_lambda!256045) (not b!6795497)))

(declare-fun m!7542490 () Bool)

(assert (=> b!6795497 m!7542490))

(declare-fun m!7542492 () Bool)

(assert (=> b!6795498 m!7542492))

(assert (=> d!2134783 d!2135287))

(assert (=> d!2134823 d!2134821))

(assert (=> d!2134823 d!2134819))

(declare-fun d!2135289 () Bool)

(assert (=> d!2135289 (= (matchR!8798 r!7292 s!2326) (matchRSpec!3716 r!7292 s!2326))))

(assert (=> d!2135289 true))

(declare-fun _$88!5613 () Unit!159921)

(assert (=> d!2135289 (= (choose!50632 r!7292 s!2326) _$88!5613)))

(declare-fun bs!1810953 () Bool)

(assert (= bs!1810953 d!2135289))

(assert (=> bs!1810953 m!7540842))

(assert (=> bs!1810953 m!7540840))

(assert (=> d!2134823 d!2135289))

(assert (=> d!2134823 d!2134741))

(declare-fun bs!1810954 () Bool)

(declare-fun d!2135291 () Bool)

(assert (= bs!1810954 (and d!2135291 d!2135237)))

(declare-fun lambda!383037 () Int)

(assert (=> bs!1810954 (= lambda!383037 lambda!383032)))

(assert (=> d!2135291 (= (nullableZipper!2322 lt!2446903) (exists!2734 lt!2446903 lambda!383037))))

(declare-fun bs!1810955 () Bool)

(assert (= bs!1810955 d!2135291))

(declare-fun m!7542494 () Bool)

(assert (=> bs!1810955 m!7542494))

(assert (=> b!6793947 d!2135291))

(assert (=> bm!617051 d!2134775))

(declare-fun b!6795499 () Bool)

(declare-fun e!4101396 () Bool)

(declare-fun e!4101393 () Bool)

(assert (=> b!6795499 (= e!4101396 e!4101393)))

(declare-fun res!2777187 () Bool)

(assert (=> b!6795499 (=> res!2777187 e!4101393)))

(declare-fun call!617224 () Bool)

(assert (=> b!6795499 (= res!2777187 call!617224)))

(declare-fun b!6795500 () Bool)

(declare-fun e!4101398 () Bool)

(declare-fun lt!2447082 () Bool)

(assert (=> b!6795500 (= e!4101398 (= lt!2447082 call!617224))))

(declare-fun b!6795501 () Bool)

(declare-fun e!4101394 () Bool)

(assert (=> b!6795501 (= e!4101394 (nullable!6594 (derivativeStep!5279 lt!2446884 (head!13641 s!2326))))))

(declare-fun b!6795502 () Bool)

(declare-fun res!2777182 () Bool)

(declare-fun e!4101397 () Bool)

(assert (=> b!6795502 (=> res!2777182 e!4101397)))

(assert (=> b!6795502 (= res!2777182 (not ((_ is ElementMatch!16615) (derivativeStep!5279 lt!2446884 (head!13641 s!2326)))))))

(declare-fun e!4101395 () Bool)

(assert (=> b!6795502 (= e!4101395 e!4101397)))

(declare-fun b!6795503 () Bool)

(assert (=> b!6795503 (= e!4101398 e!4101395)))

(declare-fun c!1263275 () Bool)

(assert (=> b!6795503 (= c!1263275 ((_ is EmptyLang!16615) (derivativeStep!5279 lt!2446884 (head!13641 s!2326))))))

(declare-fun bm!617219 () Bool)

(assert (=> bm!617219 (= call!617224 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun b!6795505 () Bool)

(assert (=> b!6795505 (= e!4101395 (not lt!2447082))))

(declare-fun b!6795506 () Bool)

(declare-fun res!2777183 () Bool)

(assert (=> b!6795506 (=> res!2777183 e!4101393)))

(assert (=> b!6795506 (= res!2777183 (not (isEmpty!38394 (tail!12726 (tail!12726 s!2326)))))))

(declare-fun b!6795507 () Bool)

(assert (=> b!6795507 (= e!4101393 (not (= (head!13641 (tail!12726 s!2326)) (c!1262803 (derivativeStep!5279 lt!2446884 (head!13641 s!2326))))))))

(declare-fun b!6795508 () Bool)

(declare-fun e!4101399 () Bool)

(assert (=> b!6795508 (= e!4101399 (= (head!13641 (tail!12726 s!2326)) (c!1262803 (derivativeStep!5279 lt!2446884 (head!13641 s!2326)))))))

(declare-fun b!6795509 () Bool)

(declare-fun res!2777188 () Bool)

(assert (=> b!6795509 (=> res!2777188 e!4101397)))

(assert (=> b!6795509 (= res!2777188 e!4101399)))

(declare-fun res!2777181 () Bool)

(assert (=> b!6795509 (=> (not res!2777181) (not e!4101399))))

(assert (=> b!6795509 (= res!2777181 lt!2447082)))

(declare-fun b!6795510 () Bool)

(declare-fun res!2777185 () Bool)

(assert (=> b!6795510 (=> (not res!2777185) (not e!4101399))))

(assert (=> b!6795510 (= res!2777185 (not call!617224))))

(declare-fun b!6795511 () Bool)

(assert (=> b!6795511 (= e!4101397 e!4101396)))

(declare-fun res!2777184 () Bool)

(assert (=> b!6795511 (=> (not res!2777184) (not e!4101396))))

(assert (=> b!6795511 (= res!2777184 (not lt!2447082))))

(declare-fun b!6795512 () Bool)

(assert (=> b!6795512 (= e!4101394 (matchR!8798 (derivativeStep!5279 (derivativeStep!5279 lt!2446884 (head!13641 s!2326)) (head!13641 (tail!12726 s!2326))) (tail!12726 (tail!12726 s!2326))))))

(declare-fun b!6795504 () Bool)

(declare-fun res!2777186 () Bool)

(assert (=> b!6795504 (=> (not res!2777186) (not e!4101399))))

(assert (=> b!6795504 (= res!2777186 (isEmpty!38394 (tail!12726 (tail!12726 s!2326))))))

(declare-fun d!2135293 () Bool)

(assert (=> d!2135293 e!4101398))

(declare-fun c!1263277 () Bool)

(assert (=> d!2135293 (= c!1263277 ((_ is EmptyExpr!16615) (derivativeStep!5279 lt!2446884 (head!13641 s!2326))))))

(assert (=> d!2135293 (= lt!2447082 e!4101394)))

(declare-fun c!1263276 () Bool)

(assert (=> d!2135293 (= c!1263276 (isEmpty!38394 (tail!12726 s!2326)))))

(assert (=> d!2135293 (validRegex!8351 (derivativeStep!5279 lt!2446884 (head!13641 s!2326)))))

(assert (=> d!2135293 (= (matchR!8798 (derivativeStep!5279 lt!2446884 (head!13641 s!2326)) (tail!12726 s!2326)) lt!2447082)))

(assert (= (and d!2135293 c!1263276) b!6795501))

(assert (= (and d!2135293 (not c!1263276)) b!6795512))

(assert (= (and d!2135293 c!1263277) b!6795500))

(assert (= (and d!2135293 (not c!1263277)) b!6795503))

(assert (= (and b!6795503 c!1263275) b!6795505))

(assert (= (and b!6795503 (not c!1263275)) b!6795502))

(assert (= (and b!6795502 (not res!2777182)) b!6795509))

(assert (= (and b!6795509 res!2777181) b!6795510))

(assert (= (and b!6795510 res!2777185) b!6795504))

(assert (= (and b!6795504 res!2777186) b!6795508))

(assert (= (and b!6795509 (not res!2777188)) b!6795511))

(assert (= (and b!6795511 res!2777184) b!6795499))

(assert (= (and b!6795499 (not res!2777187)) b!6795506))

(assert (= (and b!6795506 (not res!2777183)) b!6795507))

(assert (= (or b!6795500 b!6795499 b!6795510) bm!617219))

(assert (=> b!6795507 m!7541106))

(declare-fun m!7542496 () Bool)

(assert (=> b!6795507 m!7542496))

(assert (=> b!6795508 m!7541106))

(assert (=> b!6795508 m!7542496))

(assert (=> d!2135293 m!7541106))

(assert (=> d!2135293 m!7541492))

(assert (=> d!2135293 m!7541496))

(declare-fun m!7542498 () Bool)

(assert (=> d!2135293 m!7542498))

(assert (=> b!6795506 m!7541106))

(declare-fun m!7542500 () Bool)

(assert (=> b!6795506 m!7542500))

(assert (=> b!6795506 m!7542500))

(declare-fun m!7542502 () Bool)

(assert (=> b!6795506 m!7542502))

(assert (=> b!6795501 m!7541496))

(declare-fun m!7542504 () Bool)

(assert (=> b!6795501 m!7542504))

(assert (=> b!6795512 m!7541106))

(assert (=> b!6795512 m!7542496))

(assert (=> b!6795512 m!7541496))

(assert (=> b!6795512 m!7542496))

(declare-fun m!7542506 () Bool)

(assert (=> b!6795512 m!7542506))

(assert (=> b!6795512 m!7541106))

(assert (=> b!6795512 m!7542500))

(assert (=> b!6795512 m!7542506))

(assert (=> b!6795512 m!7542500))

(declare-fun m!7542508 () Bool)

(assert (=> b!6795512 m!7542508))

(assert (=> b!6795504 m!7541106))

(assert (=> b!6795504 m!7542500))

(assert (=> b!6795504 m!7542500))

(assert (=> b!6795504 m!7542502))

(assert (=> bm!617219 m!7541106))

(assert (=> bm!617219 m!7541492))

(assert (=> b!6794483 d!2135293))

(declare-fun b!6795533 () Bool)

(declare-fun e!4101410 () Regex!16615)

(declare-fun e!4101414 () Regex!16615)

(assert (=> b!6795533 (= e!4101410 e!4101414)))

(declare-fun c!1263288 () Bool)

(assert (=> b!6795533 (= c!1263288 ((_ is ElementMatch!16615) lt!2446884))))

(declare-fun b!6795534 () Bool)

(declare-fun e!4101411 () Regex!16615)

(declare-fun call!617234 () Regex!16615)

(assert (=> b!6795534 (= e!4101411 (Union!16615 (Concat!25460 call!617234 (regTwo!33742 lt!2446884)) EmptyLang!16615))))

(declare-fun call!617233 () Regex!16615)

(declare-fun b!6795535 () Bool)

(assert (=> b!6795535 (= e!4101411 (Union!16615 (Concat!25460 call!617233 (regTwo!33742 lt!2446884)) call!617234))))

(declare-fun d!2135295 () Bool)

(declare-fun lt!2447085 () Regex!16615)

(assert (=> d!2135295 (validRegex!8351 lt!2447085)))

(assert (=> d!2135295 (= lt!2447085 e!4101410)))

(declare-fun c!1263292 () Bool)

(assert (=> d!2135295 (= c!1263292 (or ((_ is EmptyExpr!16615) lt!2446884) ((_ is EmptyLang!16615) lt!2446884)))))

(assert (=> d!2135295 (validRegex!8351 lt!2446884)))

(assert (=> d!2135295 (= (derivativeStep!5279 lt!2446884 (head!13641 s!2326)) lt!2447085)))

(declare-fun b!6795536 () Bool)

(declare-fun e!4101412 () Regex!16615)

(assert (=> b!6795536 (= e!4101412 (Concat!25460 call!617233 lt!2446884))))

(declare-fun bm!617228 () Bool)

(declare-fun call!617235 () Regex!16615)

(assert (=> bm!617228 (= call!617234 call!617235)))

(declare-fun bm!617229 () Bool)

(declare-fun c!1263291 () Bool)

(declare-fun c!1263289 () Bool)

(assert (=> bm!617229 (= call!617235 (derivativeStep!5279 (ite c!1263289 (regOne!33743 lt!2446884) (ite c!1263291 (regTwo!33742 lt!2446884) (regOne!33742 lt!2446884))) (head!13641 s!2326)))))

(declare-fun bm!617230 () Bool)

(declare-fun call!617236 () Regex!16615)

(declare-fun c!1263290 () Bool)

(assert (=> bm!617230 (= call!617236 (derivativeStep!5279 (ite c!1263289 (regTwo!33743 lt!2446884) (ite c!1263290 (reg!16944 lt!2446884) (regOne!33742 lt!2446884))) (head!13641 s!2326)))))

(declare-fun b!6795537 () Bool)

(assert (=> b!6795537 (= c!1263291 (nullable!6594 (regOne!33742 lt!2446884)))))

(assert (=> b!6795537 (= e!4101412 e!4101411)))

(declare-fun b!6795538 () Bool)

(assert (=> b!6795538 (= e!4101414 (ite (= (head!13641 s!2326) (c!1262803 lt!2446884)) EmptyExpr!16615 EmptyLang!16615))))

(declare-fun b!6795539 () Bool)

(declare-fun e!4101413 () Regex!16615)

(assert (=> b!6795539 (= e!4101413 e!4101412)))

(assert (=> b!6795539 (= c!1263290 ((_ is Star!16615) lt!2446884))))

(declare-fun b!6795540 () Bool)

(assert (=> b!6795540 (= e!4101410 EmptyLang!16615)))

(declare-fun bm!617231 () Bool)

(assert (=> bm!617231 (= call!617233 call!617236)))

(declare-fun b!6795541 () Bool)

(assert (=> b!6795541 (= c!1263289 ((_ is Union!16615) lt!2446884))))

(assert (=> b!6795541 (= e!4101414 e!4101413)))

(declare-fun b!6795542 () Bool)

(assert (=> b!6795542 (= e!4101413 (Union!16615 call!617235 call!617236))))

(assert (= (and d!2135295 c!1263292) b!6795540))

(assert (= (and d!2135295 (not c!1263292)) b!6795533))

(assert (= (and b!6795533 c!1263288) b!6795538))

(assert (= (and b!6795533 (not c!1263288)) b!6795541))

(assert (= (and b!6795541 c!1263289) b!6795542))

(assert (= (and b!6795541 (not c!1263289)) b!6795539))

(assert (= (and b!6795539 c!1263290) b!6795536))

(assert (= (and b!6795539 (not c!1263290)) b!6795537))

(assert (= (and b!6795537 c!1263291) b!6795535))

(assert (= (and b!6795537 (not c!1263291)) b!6795534))

(assert (= (or b!6795535 b!6795534) bm!617228))

(assert (= (or b!6795536 b!6795535) bm!617231))

(assert (= (or b!6795542 bm!617231) bm!617230))

(assert (= (or b!6795542 bm!617228) bm!617229))

(declare-fun m!7542510 () Bool)

(assert (=> d!2135295 m!7542510))

(assert (=> d!2135295 m!7541490))

(assert (=> bm!617229 m!7541102))

(declare-fun m!7542512 () Bool)

(assert (=> bm!617229 m!7542512))

(assert (=> bm!617230 m!7541102))

(declare-fun m!7542514 () Bool)

(assert (=> bm!617230 m!7542514))

(declare-fun m!7542516 () Bool)

(assert (=> b!6795537 m!7542516))

(assert (=> b!6794483 d!2135295))

(assert (=> b!6794483 d!2135249))

(assert (=> b!6794483 d!2135177))

(declare-fun b!6795543 () Bool)

(declare-fun e!4101416 () (InoxSet Context!11998))

(declare-fun e!4101417 () (InoxSet Context!11998))

(assert (=> b!6795543 (= e!4101416 e!4101417)))

(declare-fun c!1263295 () Bool)

(assert (=> b!6795543 (= c!1263295 ((_ is Union!16615) (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun b!6795544 () Bool)

(declare-fun call!617239 () (InoxSet Context!11998))

(declare-fun call!617237 () (InoxSet Context!11998))

(assert (=> b!6795544 (= e!4101417 ((_ map or) call!617239 call!617237))))

(declare-fun b!6795545 () Bool)

(declare-fun e!4101419 () (InoxSet Context!11998))

(declare-fun call!617242 () (InoxSet Context!11998))

(assert (=> b!6795545 (= e!4101419 call!617242)))

(declare-fun c!1263293 () Bool)

(declare-fun c!1263294 () Bool)

(declare-fun call!617240 () List!66144)

(declare-fun bm!617232 () Bool)

(assert (=> bm!617232 (= call!617237 (derivationStepZipperDown!1843 (ite c!1263295 (regTwo!33743 (h!72468 (exprs!6499 lt!2446885))) (ite c!1263294 (regTwo!33742 (h!72468 (exprs!6499 lt!2446885))) (ite c!1263293 (regOne!33742 (h!72468 (exprs!6499 lt!2446885))) (reg!16944 (h!72468 (exprs!6499 lt!2446885)))))) (ite (or c!1263295 c!1263294) (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (Context!11999 call!617240)) (h!72469 s!2326)))))

(declare-fun b!6795546 () Bool)

(declare-fun e!4101418 () (InoxSet Context!11998))

(declare-fun e!4101415 () (InoxSet Context!11998))

(assert (=> b!6795546 (= e!4101418 e!4101415)))

(assert (=> b!6795546 (= c!1263293 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun bm!617233 () Bool)

(declare-fun call!617238 () (InoxSet Context!11998))

(assert (=> bm!617233 (= call!617238 call!617237)))

(declare-fun bm!617234 () Bool)

(declare-fun call!617241 () List!66144)

(assert (=> bm!617234 (= call!617240 call!617241)))

(declare-fun bm!617235 () Bool)

(assert (=> bm!617235 (= call!617239 (derivationStepZipperDown!1843 (ite c!1263295 (regOne!33743 (h!72468 (exprs!6499 lt!2446885))) (regOne!33742 (h!72468 (exprs!6499 lt!2446885)))) (ite c!1263295 (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (Context!11999 call!617241)) (h!72469 s!2326)))))

(declare-fun d!2135297 () Bool)

(declare-fun c!1263297 () Bool)

(assert (=> d!2135297 (= c!1263297 (and ((_ is ElementMatch!16615) (h!72468 (exprs!6499 lt!2446885))) (= (c!1262803 (h!72468 (exprs!6499 lt!2446885))) (h!72469 s!2326))))))

(assert (=> d!2135297 (= (derivationStepZipperDown!1843 (h!72468 (exprs!6499 lt!2446885)) (Context!11999 (t!379869 (exprs!6499 lt!2446885))) (h!72469 s!2326)) e!4101416)))

(declare-fun b!6795547 () Bool)

(assert (=> b!6795547 (= e!4101419 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795548 () Bool)

(assert (=> b!6795548 (= e!4101416 (store ((as const (Array Context!11998 Bool)) false) (Context!11999 (t!379869 (exprs!6499 lt!2446885))) true))))

(declare-fun bm!617236 () Bool)

(assert (=> bm!617236 (= call!617242 call!617238)))

(declare-fun bm!617237 () Bool)

(assert (=> bm!617237 (= call!617241 ($colon$colon!2424 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446885)))) (ite (or c!1263294 c!1263293) (regTwo!33742 (h!72468 (exprs!6499 lt!2446885))) (h!72468 (exprs!6499 lt!2446885)))))))

(declare-fun b!6795549 () Bool)

(assert (=> b!6795549 (= e!4101418 ((_ map or) call!617239 call!617238))))

(declare-fun b!6795550 () Bool)

(assert (=> b!6795550 (= e!4101415 call!617242)))

(declare-fun b!6795551 () Bool)

(declare-fun e!4101420 () Bool)

(assert (=> b!6795551 (= c!1263294 e!4101420)))

(declare-fun res!2777189 () Bool)

(assert (=> b!6795551 (=> (not res!2777189) (not e!4101420))))

(assert (=> b!6795551 (= res!2777189 ((_ is Concat!25460) (h!72468 (exprs!6499 lt!2446885))))))

(assert (=> b!6795551 (= e!4101417 e!4101418)))

(declare-fun b!6795552 () Bool)

(assert (=> b!6795552 (= e!4101420 (nullable!6594 (regOne!33742 (h!72468 (exprs!6499 lt!2446885)))))))

(declare-fun b!6795553 () Bool)

(declare-fun c!1263296 () Bool)

(assert (=> b!6795553 (= c!1263296 ((_ is Star!16615) (h!72468 (exprs!6499 lt!2446885))))))

(assert (=> b!6795553 (= e!4101415 e!4101419)))

(assert (= (and d!2135297 c!1263297) b!6795548))

(assert (= (and d!2135297 (not c!1263297)) b!6795543))

(assert (= (and b!6795543 c!1263295) b!6795544))

(assert (= (and b!6795543 (not c!1263295)) b!6795551))

(assert (= (and b!6795551 res!2777189) b!6795552))

(assert (= (and b!6795551 c!1263294) b!6795549))

(assert (= (and b!6795551 (not c!1263294)) b!6795546))

(assert (= (and b!6795546 c!1263293) b!6795550))

(assert (= (and b!6795546 (not c!1263293)) b!6795553))

(assert (= (and b!6795553 c!1263296) b!6795545))

(assert (= (and b!6795553 (not c!1263296)) b!6795547))

(assert (= (or b!6795550 b!6795545) bm!617234))

(assert (= (or b!6795550 b!6795545) bm!617236))

(assert (= (or b!6795549 bm!617234) bm!617237))

(assert (= (or b!6795549 bm!617236) bm!617233))

(assert (= (or b!6795544 bm!617233) bm!617232))

(assert (= (or b!6795544 b!6795549) bm!617235))

(declare-fun m!7542518 () Bool)

(assert (=> b!6795548 m!7542518))

(declare-fun m!7542520 () Bool)

(assert (=> b!6795552 m!7542520))

(declare-fun m!7542522 () Bool)

(assert (=> bm!617235 m!7542522))

(declare-fun m!7542524 () Bool)

(assert (=> bm!617232 m!7542524))

(declare-fun m!7542526 () Bool)

(assert (=> bm!617237 m!7542526))

(assert (=> bm!617040 d!2135297))

(assert (=> b!6794479 d!2135249))

(declare-fun d!2135299 () Bool)

(declare-fun c!1263298 () Bool)

(assert (=> d!2135299 (= c!1263298 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun e!4101421 () Bool)

(assert (=> d!2135299 (= (matchZipper!2601 (derivationStepZipper!2559 z!1189 (head!13641 s!2326)) (tail!12726 s!2326)) e!4101421)))

(declare-fun b!6795554 () Bool)

(assert (=> b!6795554 (= e!4101421 (nullableZipper!2322 (derivationStepZipper!2559 z!1189 (head!13641 s!2326))))))

(declare-fun b!6795555 () Bool)

(assert (=> b!6795555 (= e!4101421 (matchZipper!2601 (derivationStepZipper!2559 (derivationStepZipper!2559 z!1189 (head!13641 s!2326)) (head!13641 (tail!12726 s!2326))) (tail!12726 (tail!12726 s!2326))))))

(assert (= (and d!2135299 c!1263298) b!6795554))

(assert (= (and d!2135299 (not c!1263298)) b!6795555))

(assert (=> d!2135299 m!7541106))

(assert (=> d!2135299 m!7541492))

(assert (=> b!6795554 m!7541534))

(declare-fun m!7542528 () Bool)

(assert (=> b!6795554 m!7542528))

(assert (=> b!6795555 m!7541106))

(assert (=> b!6795555 m!7542496))

(assert (=> b!6795555 m!7541534))

(assert (=> b!6795555 m!7542496))

(declare-fun m!7542530 () Bool)

(assert (=> b!6795555 m!7542530))

(assert (=> b!6795555 m!7541106))

(assert (=> b!6795555 m!7542500))

(assert (=> b!6795555 m!7542530))

(assert (=> b!6795555 m!7542500))

(declare-fun m!7542532 () Bool)

(assert (=> b!6795555 m!7542532))

(assert (=> b!6794510 d!2135299))

(declare-fun bs!1810956 () Bool)

(declare-fun d!2135301 () Bool)

(assert (= bs!1810956 (and d!2135301 b!6793705)))

(declare-fun lambda!383038 () Int)

(assert (=> bs!1810956 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383038 lambda!382887))))

(declare-fun bs!1810957 () Bool)

(assert (= bs!1810957 (and d!2135301 d!2134657)))

(assert (=> bs!1810957 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383038 lambda!382914))))

(declare-fun bs!1810958 () Bool)

(assert (= bs!1810958 (and d!2135301 d!2134673)))

(assert (=> bs!1810958 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383038 lambda!382916))))

(declare-fun bs!1810959 () Bool)

(assert (= bs!1810959 (and d!2135301 d!2134787)))

(assert (=> bs!1810959 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383038 lambda!382964))))

(assert (=> d!2135301 true))

(assert (=> d!2135301 (= (derivationStepZipper!2559 z!1189 (head!13641 s!2326)) (flatMap!2096 z!1189 lambda!383038))))

(declare-fun bs!1810960 () Bool)

(assert (= bs!1810960 d!2135301))

(declare-fun m!7542534 () Bool)

(assert (=> bs!1810960 m!7542534))

(assert (=> b!6794510 d!2135301))

(assert (=> b!6794510 d!2135249))

(assert (=> b!6794510 d!2135177))

(declare-fun b!6795558 () Bool)

(declare-fun res!2777191 () Bool)

(declare-fun e!4101422 () Bool)

(assert (=> b!6795558 (=> (not res!2777191) (not e!4101422))))

(declare-fun lt!2447086 () List!66145)

(assert (=> b!6795558 (= res!2777191 (= (size!40655 lt!2447086) (+ (size!40655 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))) (size!40655 (t!379870 s!2326)))))))

(declare-fun b!6795559 () Bool)

(assert (=> b!6795559 (= e!4101422 (or (not (= (t!379870 s!2326) Nil!66021)) (= lt!2447086 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)))))))

(declare-fun b!6795556 () Bool)

(declare-fun e!4101423 () List!66145)

(assert (=> b!6795556 (= e!4101423 (t!379870 s!2326))))

(declare-fun b!6795557 () Bool)

(assert (=> b!6795557 (= e!4101423 (Cons!66021 (h!72469 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))) (++!14777 (t!379870 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))) (t!379870 s!2326))))))

(declare-fun d!2135303 () Bool)

(assert (=> d!2135303 e!4101422))

(declare-fun res!2777190 () Bool)

(assert (=> d!2135303 (=> (not res!2777190) (not e!4101422))))

(assert (=> d!2135303 (= res!2777190 (= (content!12883 lt!2447086) ((_ map or) (content!12883 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))) (content!12883 (t!379870 s!2326)))))))

(assert (=> d!2135303 (= lt!2447086 e!4101423)))

(declare-fun c!1263299 () Bool)

(assert (=> d!2135303 (= c!1263299 ((_ is Nil!66021) (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))))))

(assert (=> d!2135303 (= (++!14777 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326)) lt!2447086)))

(assert (= (and d!2135303 c!1263299) b!6795556))

(assert (= (and d!2135303 (not c!1263299)) b!6795557))

(assert (= (and d!2135303 res!2777190) b!6795558))

(assert (= (and b!6795558 res!2777191) b!6795559))

(declare-fun m!7542536 () Bool)

(assert (=> b!6795558 m!7542536))

(assert (=> b!6795558 m!7541400))

(declare-fun m!7542538 () Bool)

(assert (=> b!6795558 m!7542538))

(declare-fun m!7542540 () Bool)

(assert (=> b!6795558 m!7542540))

(declare-fun m!7542542 () Bool)

(assert (=> b!6795557 m!7542542))

(declare-fun m!7542544 () Bool)

(assert (=> d!2135303 m!7542544))

(assert (=> d!2135303 m!7541400))

(declare-fun m!7542546 () Bool)

(assert (=> d!2135303 m!7542546))

(declare-fun m!7542548 () Bool)

(assert (=> d!2135303 m!7542548))

(assert (=> b!6794326 d!2135303))

(declare-fun b!6795562 () Bool)

(declare-fun res!2777193 () Bool)

(declare-fun e!4101424 () Bool)

(assert (=> b!6795562 (=> (not res!2777193) (not e!4101424))))

(declare-fun lt!2447087 () List!66145)

(assert (=> b!6795562 (= res!2777193 (= (size!40655 lt!2447087) (+ (size!40655 Nil!66021) (size!40655 (Cons!66021 (h!72469 s!2326) Nil!66021)))))))

(declare-fun b!6795563 () Bool)

(assert (=> b!6795563 (= e!4101424 (or (not (= (Cons!66021 (h!72469 s!2326) Nil!66021) Nil!66021)) (= lt!2447087 Nil!66021)))))

(declare-fun b!6795560 () Bool)

(declare-fun e!4101425 () List!66145)

(assert (=> b!6795560 (= e!4101425 (Cons!66021 (h!72469 s!2326) Nil!66021))))

(declare-fun b!6795561 () Bool)

(assert (=> b!6795561 (= e!4101425 (Cons!66021 (h!72469 Nil!66021) (++!14777 (t!379870 Nil!66021) (Cons!66021 (h!72469 s!2326) Nil!66021))))))

(declare-fun d!2135305 () Bool)

(assert (=> d!2135305 e!4101424))

(declare-fun res!2777192 () Bool)

(assert (=> d!2135305 (=> (not res!2777192) (not e!4101424))))

(assert (=> d!2135305 (= res!2777192 (= (content!12883 lt!2447087) ((_ map or) (content!12883 Nil!66021) (content!12883 (Cons!66021 (h!72469 s!2326) Nil!66021)))))))

(assert (=> d!2135305 (= lt!2447087 e!4101425)))

(declare-fun c!1263300 () Bool)

(assert (=> d!2135305 (= c!1263300 ((_ is Nil!66021) Nil!66021))))

(assert (=> d!2135305 (= (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) lt!2447087)))

(assert (= (and d!2135305 c!1263300) b!6795560))

(assert (= (and d!2135305 (not c!1263300)) b!6795561))

(assert (= (and d!2135305 res!2777192) b!6795562))

(assert (= (and b!6795562 res!2777193) b!6795563))

(declare-fun m!7542550 () Bool)

(assert (=> b!6795562 m!7542550))

(declare-fun m!7542552 () Bool)

(assert (=> b!6795562 m!7542552))

(declare-fun m!7542554 () Bool)

(assert (=> b!6795562 m!7542554))

(declare-fun m!7542556 () Bool)

(assert (=> b!6795561 m!7542556))

(declare-fun m!7542558 () Bool)

(assert (=> d!2135305 m!7542558))

(declare-fun m!7542560 () Bool)

(assert (=> d!2135305 m!7542560))

(declare-fun m!7542562 () Bool)

(assert (=> d!2135305 m!7542562))

(assert (=> b!6794326 d!2135305))

(declare-fun d!2135307 () Bool)

(assert (=> d!2135307 (= (++!14777 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326)) s!2326)))

(declare-fun lt!2447090 () Unit!159921)

(declare-fun choose!50635 (List!66145 C!33500 List!66145 List!66145) Unit!159921)

(assert (=> d!2135307 (= lt!2447090 (choose!50635 Nil!66021 (h!72469 s!2326) (t!379870 s!2326) s!2326))))

(assert (=> d!2135307 (= (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) (t!379870 s!2326))) s!2326)))

(assert (=> d!2135307 (= (lemmaMoveElementToOtherListKeepsConcatEq!2736 Nil!66021 (h!72469 s!2326) (t!379870 s!2326) s!2326) lt!2447090)))

(declare-fun bs!1810961 () Bool)

(assert (= bs!1810961 d!2135307))

(assert (=> bs!1810961 m!7541400))

(assert (=> bs!1810961 m!7541400))

(assert (=> bs!1810961 m!7541402))

(declare-fun m!7542564 () Bool)

(assert (=> bs!1810961 m!7542564))

(declare-fun m!7542566 () Bool)

(assert (=> bs!1810961 m!7542566))

(assert (=> b!6794326 d!2135307))

(declare-fun d!2135309 () Bool)

(declare-fun e!4101428 () Bool)

(assert (=> d!2135309 e!4101428))

(declare-fun res!2777198 () Bool)

(assert (=> d!2135309 (=> res!2777198 e!4101428)))

(declare-fun e!4101427 () Bool)

(assert (=> d!2135309 (= res!2777198 e!4101427)))

(declare-fun res!2777196 () Bool)

(assert (=> d!2135309 (=> (not res!2777196) (not e!4101427))))

(declare-fun lt!2447092 () Option!16502)

(assert (=> d!2135309 (= res!2777196 (isDefined!13205 lt!2447092))))

(declare-fun e!4101429 () Option!16502)

(assert (=> d!2135309 (= lt!2447092 e!4101429)))

(declare-fun c!1263301 () Bool)

(declare-fun e!4101426 () Bool)

(assert (=> d!2135309 (= c!1263301 e!4101426)))

(declare-fun res!2777194 () Bool)

(assert (=> d!2135309 (=> (not res!2777194) (not e!4101426))))

(assert (=> d!2135309 (= res!2777194 (matchR!8798 (reg!16944 r!7292) (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021))))))

(assert (=> d!2135309 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2135309 (= (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326) s!2326) lt!2447092)))

(declare-fun b!6795564 () Bool)

(declare-fun e!4101430 () Option!16502)

(assert (=> b!6795564 (= e!4101430 None!16501)))

(declare-fun b!6795565 () Bool)

(assert (=> b!6795565 (= e!4101427 (= (++!14777 (_1!36893 (get!22992 lt!2447092)) (_2!36893 (get!22992 lt!2447092))) s!2326))))

(declare-fun b!6795566 () Bool)

(declare-fun lt!2447093 () Unit!159921)

(declare-fun lt!2447091 () Unit!159921)

(assert (=> b!6795566 (= lt!2447093 lt!2447091)))

(assert (=> b!6795566 (= (++!14777 (++!14777 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (Cons!66021 (h!72469 (t!379870 s!2326)) Nil!66021)) (t!379870 (t!379870 s!2326))) s!2326)))

(assert (=> b!6795566 (= lt!2447091 (lemmaMoveElementToOtherListKeepsConcatEq!2736 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (h!72469 (t!379870 s!2326)) (t!379870 (t!379870 s!2326)) s!2326))))

(assert (=> b!6795566 (= e!4101430 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 (++!14777 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (Cons!66021 (h!72469 (t!379870 s!2326)) Nil!66021)) (t!379870 (t!379870 s!2326)) s!2326))))

(declare-fun b!6795567 () Bool)

(declare-fun res!2777197 () Bool)

(assert (=> b!6795567 (=> (not res!2777197) (not e!4101427))))

(assert (=> b!6795567 (= res!2777197 (matchR!8798 r!7292 (_2!36893 (get!22992 lt!2447092))))))

(declare-fun b!6795568 () Bool)

(assert (=> b!6795568 (= e!4101428 (not (isDefined!13205 lt!2447092)))))

(declare-fun b!6795569 () Bool)

(assert (=> b!6795569 (= e!4101429 (Some!16501 (tuple2!67181 (++!14777 Nil!66021 (Cons!66021 (h!72469 s!2326) Nil!66021)) (t!379870 s!2326))))))

(declare-fun b!6795570 () Bool)

(assert (=> b!6795570 (= e!4101429 e!4101430)))

(declare-fun c!1263302 () Bool)

(assert (=> b!6795570 (= c!1263302 ((_ is Nil!66021) (t!379870 s!2326)))))

(declare-fun b!6795571 () Bool)

(assert (=> b!6795571 (= e!4101426 (matchR!8798 r!7292 (t!379870 s!2326)))))

(declare-fun b!6795572 () Bool)

(declare-fun res!2777195 () Bool)

(assert (=> b!6795572 (=> (not res!2777195) (not e!4101427))))

(assert (=> b!6795572 (= res!2777195 (matchR!8798 (reg!16944 r!7292) (_1!36893 (get!22992 lt!2447092))))))

(assert (= (and d!2135309 res!2777194) b!6795571))

(assert (= (and d!2135309 c!1263301) b!6795569))

(assert (= (and d!2135309 (not c!1263301)) b!6795570))

(assert (= (and b!6795570 c!1263302) b!6795564))

(assert (= (and b!6795570 (not c!1263302)) b!6795566))

(assert (= (and d!2135309 res!2777196) b!6795572))

(assert (= (and b!6795572 res!2777195) b!6795567))

(assert (= (and b!6795567 res!2777197) b!6795565))

(assert (= (and d!2135309 (not res!2777198)) b!6795568))

(declare-fun m!7542568 () Bool)

(assert (=> b!6795567 m!7542568))

(declare-fun m!7542570 () Bool)

(assert (=> b!6795567 m!7542570))

(assert (=> b!6795572 m!7542568))

(declare-fun m!7542572 () Bool)

(assert (=> b!6795572 m!7542572))

(declare-fun m!7542574 () Bool)

(assert (=> b!6795568 m!7542574))

(declare-fun m!7542576 () Bool)

(assert (=> b!6795571 m!7542576))

(assert (=> b!6795565 m!7542568))

(declare-fun m!7542578 () Bool)

(assert (=> b!6795565 m!7542578))

(assert (=> b!6795566 m!7541400))

(declare-fun m!7542580 () Bool)

(assert (=> b!6795566 m!7542580))

(assert (=> b!6795566 m!7542580))

(declare-fun m!7542582 () Bool)

(assert (=> b!6795566 m!7542582))

(assert (=> b!6795566 m!7541400))

(declare-fun m!7542584 () Bool)

(assert (=> b!6795566 m!7542584))

(assert (=> b!6795566 m!7542580))

(declare-fun m!7542586 () Bool)

(assert (=> b!6795566 m!7542586))

(assert (=> d!2135309 m!7542574))

(assert (=> d!2135309 m!7541400))

(declare-fun m!7542588 () Bool)

(assert (=> d!2135309 m!7542588))

(assert (=> d!2135309 m!7541376))

(assert (=> b!6794326 d!2135309))

(assert (=> d!2134813 d!2134775))

(declare-fun b!6795573 () Bool)

(declare-fun e!4101433 () Bool)

(declare-fun call!617244 () Bool)

(assert (=> b!6795573 (= e!4101433 call!617244)))

(declare-fun b!6795574 () Bool)

(declare-fun e!4101434 () Bool)

(declare-fun call!617245 () Bool)

(assert (=> b!6795574 (= e!4101434 call!617245)))

(declare-fun b!6795575 () Bool)

(declare-fun e!4101432 () Bool)

(assert (=> b!6795575 (= e!4101432 e!4101434)))

(declare-fun res!2777199 () Bool)

(assert (=> b!6795575 (=> (not res!2777199) (not e!4101434))))

(declare-fun call!617243 () Bool)

(assert (=> b!6795575 (= res!2777199 call!617243)))

(declare-fun b!6795576 () Bool)

(declare-fun res!2777201 () Bool)

(declare-fun e!4101431 () Bool)

(assert (=> b!6795576 (=> (not res!2777201) (not e!4101431))))

(assert (=> b!6795576 (= res!2777201 call!617243)))

(declare-fun e!4101436 () Bool)

(assert (=> b!6795576 (= e!4101436 e!4101431)))

(declare-fun b!6795577 () Bool)

(declare-fun e!4101435 () Bool)

(assert (=> b!6795577 (= e!4101435 e!4101436)))

(declare-fun c!1263304 () Bool)

(assert (=> b!6795577 (= c!1263304 ((_ is Union!16615) lt!2446884))))

(declare-fun b!6795578 () Bool)

(assert (=> b!6795578 (= e!4101431 call!617245)))

(declare-fun b!6795579 () Bool)

(assert (=> b!6795579 (= e!4101435 e!4101433)))

(declare-fun res!2777202 () Bool)

(assert (=> b!6795579 (= res!2777202 (not (nullable!6594 (reg!16944 lt!2446884))))))

(assert (=> b!6795579 (=> (not res!2777202) (not e!4101433))))

(declare-fun d!2135311 () Bool)

(declare-fun res!2777200 () Bool)

(declare-fun e!4101437 () Bool)

(assert (=> d!2135311 (=> res!2777200 e!4101437)))

(assert (=> d!2135311 (= res!2777200 ((_ is ElementMatch!16615) lt!2446884))))

(assert (=> d!2135311 (= (validRegex!8351 lt!2446884) e!4101437)))

(declare-fun bm!617238 () Bool)

(declare-fun c!1263303 () Bool)

(assert (=> bm!617238 (= call!617244 (validRegex!8351 (ite c!1263303 (reg!16944 lt!2446884) (ite c!1263304 (regOne!33743 lt!2446884) (regOne!33742 lt!2446884)))))))

(declare-fun b!6795580 () Bool)

(assert (=> b!6795580 (= e!4101437 e!4101435)))

(assert (=> b!6795580 (= c!1263303 ((_ is Star!16615) lt!2446884))))

(declare-fun bm!617239 () Bool)

(assert (=> bm!617239 (= call!617243 call!617244)))

(declare-fun b!6795581 () Bool)

(declare-fun res!2777203 () Bool)

(assert (=> b!6795581 (=> res!2777203 e!4101432)))

(assert (=> b!6795581 (= res!2777203 (not ((_ is Concat!25460) lt!2446884)))))

(assert (=> b!6795581 (= e!4101436 e!4101432)))

(declare-fun bm!617240 () Bool)

(assert (=> bm!617240 (= call!617245 (validRegex!8351 (ite c!1263304 (regTwo!33743 lt!2446884) (regTwo!33742 lt!2446884))))))

(assert (= (and d!2135311 (not res!2777200)) b!6795580))

(assert (= (and b!6795580 c!1263303) b!6795579))

(assert (= (and b!6795580 (not c!1263303)) b!6795577))

(assert (= (and b!6795579 res!2777202) b!6795573))

(assert (= (and b!6795577 c!1263304) b!6795576))

(assert (= (and b!6795577 (not c!1263304)) b!6795581))

(assert (= (and b!6795576 res!2777201) b!6795578))

(assert (= (and b!6795581 (not res!2777203)) b!6795575))

(assert (= (and b!6795575 res!2777199) b!6795574))

(assert (= (or b!6795578 b!6795574) bm!617240))

(assert (= (or b!6795576 b!6795575) bm!617239))

(assert (= (or b!6795573 bm!617239) bm!617238))

(declare-fun m!7542590 () Bool)

(assert (=> b!6795579 m!7542590))

(declare-fun m!7542592 () Bool)

(assert (=> bm!617238 m!7542592))

(declare-fun m!7542594 () Bool)

(assert (=> bm!617240 m!7542594))

(assert (=> d!2134813 d!2135311))

(assert (=> d!2134831 d!2134775))

(declare-fun d!2135313 () Bool)

(assert (=> d!2135313 (= (isEmpty!38398 (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326)) (not ((_ is Some!16501) (findConcatSeparation!2916 (reg!16944 r!7292) r!7292 Nil!66021 s!2326 s!2326))))))

(assert (=> d!2134751 d!2135313))

(declare-fun bs!1810962 () Bool)

(declare-fun b!6795583 () Bool)

(assert (= bs!1810962 (and b!6795583 d!2134769)))

(declare-fun lambda!383039 () Int)

(assert (=> bs!1810962 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33743 lt!2446884) (Star!16615 (reg!16944 r!7292)))) (= lambda!383039 lambda!382954))))

(assert (=> bs!1810962 (not (= lambda!383039 lambda!382953))))

(declare-fun bs!1810963 () Bool)

(assert (= bs!1810963 (and b!6795583 b!6794436)))

(assert (=> bs!1810963 (not (= lambda!383039 lambda!382970))))

(declare-fun bs!1810964 () Bool)

(assert (= bs!1810964 (and b!6795583 b!6793723)))

(assert (=> bs!1810964 (not (= lambda!383039 lambda!382886))))

(declare-fun bs!1810965 () Bool)

(assert (= bs!1810965 (and b!6795583 d!2134753)))

(assert (=> bs!1810965 (not (= lambda!383039 lambda!382948))))

(declare-fun bs!1810966 () Bool)

(assert (= bs!1810966 (and b!6795583 d!2135219)))

(assert (=> bs!1810966 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33743 lt!2446884) (Star!16615 (reg!16944 r!7292)))) (= lambda!383039 lambda!383026))))

(declare-fun bs!1810967 () Bool)

(assert (= bs!1810967 (and b!6795583 b!6795412)))

(assert (=> bs!1810967 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 (regTwo!33743 r!7292))) (= (regTwo!33743 lt!2446884) (regTwo!33743 r!7292))) (= lambda!383039 lambda!383033))))

(assert (=> bs!1810964 (not (= lambda!383039 lambda!382884))))

(declare-fun bs!1810968 () Bool)

(assert (= bs!1810968 (and b!6795583 b!6794485)))

(assert (=> bs!1810968 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33743 lt!2446884) r!7292)) (= lambda!383039 lambda!382971))))

(assert (=> bs!1810966 (not (= lambda!383039 lambda!383025))))

(assert (=> bs!1810965 (not (= lambda!383039 lambda!382947))))

(declare-fun bs!1810969 () Bool)

(assert (= bs!1810969 (and b!6795583 d!2135221)))

(assert (=> bs!1810969 (not (= lambda!383039 lambda!383029))))

(declare-fun bs!1810970 () Bool)

(assert (= bs!1810970 (and b!6795583 b!6794432)))

(assert (=> bs!1810970 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 lt!2446884)) (= (regTwo!33743 lt!2446884) lt!2446884)) (= lambda!383039 lambda!382969))))

(assert (=> bs!1810964 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33743 lt!2446884) r!7292)) (= lambda!383039 lambda!382885))))

(declare-fun bs!1810971 () Bool)

(assert (= bs!1810971 (and b!6795583 d!2134781)))

(assert (=> bs!1810971 (not (= lambda!383039 lambda!382957))))

(declare-fun bs!1810972 () Bool)

(assert (= bs!1810972 (and b!6795583 b!6795325)))

(assert (=> bs!1810972 (not (= lambda!383039 lambda!383019))))

(declare-fun bs!1810973 () Bool)

(assert (= bs!1810973 (and b!6795583 b!6795416)))

(assert (=> bs!1810973 (not (= lambda!383039 lambda!383034))))

(declare-fun bs!1810974 () Bool)

(assert (= bs!1810974 (and b!6795583 b!6794489)))

(assert (=> bs!1810974 (not (= lambda!383039 lambda!382972))))

(declare-fun bs!1810975 () Bool)

(assert (= bs!1810975 (and b!6795583 b!6795321)))

(assert (=> bs!1810975 (= (and (= (reg!16944 (regTwo!33743 lt!2446884)) (reg!16944 (regOne!33743 lt!2446884))) (= (regTwo!33743 lt!2446884) (regOne!33743 lt!2446884))) (= lambda!383039 lambda!383018))))

(assert (=> b!6795583 true))

(assert (=> b!6795583 true))

(declare-fun bs!1810976 () Bool)

(declare-fun b!6795587 () Bool)

(assert (= bs!1810976 (and b!6795587 d!2134769)))

(declare-fun lambda!383040 () Int)

(assert (=> bs!1810976 (not (= lambda!383040 lambda!382954))))

(assert (=> bs!1810976 (not (= lambda!383040 lambda!382953))))

(declare-fun bs!1810977 () Bool)

(assert (= bs!1810977 (and b!6795587 b!6794436)))

(assert (=> bs!1810977 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (regOne!33742 lt!2446884)) (= (regTwo!33742 (regTwo!33743 lt!2446884)) (regTwo!33742 lt!2446884))) (= lambda!383040 lambda!382970))))

(declare-fun bs!1810978 () Bool)

(assert (= bs!1810978 (and b!6795587 b!6793723)))

(assert (=> bs!1810978 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33742 (regTwo!33743 lt!2446884)) r!7292)) (= lambda!383040 lambda!382886))))

(declare-fun bs!1810979 () Bool)

(assert (= bs!1810979 (and b!6795587 d!2135219)))

(assert (=> bs!1810979 (not (= lambda!383040 lambda!383026))))

(declare-fun bs!1810980 () Bool)

(assert (= bs!1810980 (and b!6795587 b!6795412)))

(assert (=> bs!1810980 (not (= lambda!383040 lambda!383033))))

(assert (=> bs!1810978 (not (= lambda!383040 lambda!382884))))

(declare-fun bs!1810981 () Bool)

(assert (= bs!1810981 (and b!6795587 b!6794485)))

(assert (=> bs!1810981 (not (= lambda!383040 lambda!382971))))

(assert (=> bs!1810979 (not (= lambda!383040 lambda!383025))))

(declare-fun bs!1810982 () Bool)

(assert (= bs!1810982 (and b!6795587 d!2134753)))

(assert (=> bs!1810982 (not (= lambda!383040 lambda!382947))))

(declare-fun bs!1810983 () Bool)

(assert (= bs!1810983 (and b!6795587 d!2135221)))

(assert (=> bs!1810983 (not (= lambda!383040 lambda!383029))))

(declare-fun bs!1810984 () Bool)

(assert (= bs!1810984 (and b!6795587 b!6794432)))

(assert (=> bs!1810984 (not (= lambda!383040 lambda!382969))))

(assert (=> bs!1810978 (not (= lambda!383040 lambda!382885))))

(declare-fun bs!1810985 () Bool)

(assert (= bs!1810985 (and b!6795587 d!2134781)))

(assert (=> bs!1810985 (not (= lambda!383040 lambda!382957))))

(assert (=> bs!1810982 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (reg!16944 r!7292)) (= (regTwo!33742 (regTwo!33743 lt!2446884)) r!7292)) (= lambda!383040 lambda!382948))))

(declare-fun bs!1810986 () Bool)

(assert (= bs!1810986 (and b!6795587 b!6795583)))

(assert (=> bs!1810986 (not (= lambda!383040 lambda!383039))))

(declare-fun bs!1810987 () Bool)

(assert (= bs!1810987 (and b!6795587 b!6795325)))

(assert (=> bs!1810987 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (regOne!33742 (regOne!33743 lt!2446884))) (= (regTwo!33742 (regTwo!33743 lt!2446884)) (regTwo!33742 (regOne!33743 lt!2446884)))) (= lambda!383040 lambda!383019))))

(declare-fun bs!1810988 () Bool)

(assert (= bs!1810988 (and b!6795587 b!6795416)))

(assert (=> bs!1810988 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (regOne!33742 (regTwo!33743 r!7292))) (= (regTwo!33742 (regTwo!33743 lt!2446884)) (regTwo!33742 (regTwo!33743 r!7292)))) (= lambda!383040 lambda!383034))))

(declare-fun bs!1810989 () Bool)

(assert (= bs!1810989 (and b!6795587 b!6794489)))

(assert (=> bs!1810989 (= (and (= (regOne!33742 (regTwo!33743 lt!2446884)) (regOne!33742 r!7292)) (= (regTwo!33742 (regTwo!33743 lt!2446884)) (regTwo!33742 r!7292))) (= lambda!383040 lambda!382972))))

(declare-fun bs!1810990 () Bool)

(assert (= bs!1810990 (and b!6795587 b!6795321)))

(assert (=> bs!1810990 (not (= lambda!383040 lambda!383018))))

(assert (=> b!6795587 true))

(assert (=> b!6795587 true))

(declare-fun b!6795582 () Bool)

(declare-fun e!4101441 () Bool)

(assert (=> b!6795582 (= e!4101441 (= s!2326 (Cons!66021 (c!1262803 (regTwo!33743 lt!2446884)) Nil!66021)))))

(declare-fun e!4101443 () Bool)

(declare-fun call!617246 () Bool)

(assert (=> b!6795583 (= e!4101443 call!617246)))

(declare-fun b!6795584 () Bool)

(declare-fun e!4101442 () Bool)

(declare-fun e!4101444 () Bool)

(assert (=> b!6795584 (= e!4101442 e!4101444)))

(declare-fun c!1263306 () Bool)

(assert (=> b!6795584 (= c!1263306 ((_ is Star!16615) (regTwo!33743 lt!2446884)))))

(declare-fun d!2135315 () Bool)

(declare-fun c!1263308 () Bool)

(assert (=> d!2135315 (= c!1263308 ((_ is EmptyExpr!16615) (regTwo!33743 lt!2446884)))))

(declare-fun e!4101438 () Bool)

(assert (=> d!2135315 (= (matchRSpec!3716 (regTwo!33743 lt!2446884) s!2326) e!4101438)))

(declare-fun b!6795585 () Bool)

(declare-fun call!617247 () Bool)

(assert (=> b!6795585 (= e!4101438 call!617247)))

(declare-fun bm!617241 () Bool)

(assert (=> bm!617241 (= call!617246 (Exists!3683 (ite c!1263306 lambda!383039 lambda!383040)))))

(declare-fun b!6795586 () Bool)

(declare-fun c!1263307 () Bool)

(assert (=> b!6795586 (= c!1263307 ((_ is Union!16615) (regTwo!33743 lt!2446884)))))

(assert (=> b!6795586 (= e!4101441 e!4101442)))

(assert (=> b!6795587 (= e!4101444 call!617246)))

(declare-fun b!6795588 () Bool)

(declare-fun c!1263305 () Bool)

(assert (=> b!6795588 (= c!1263305 ((_ is ElementMatch!16615) (regTwo!33743 lt!2446884)))))

(declare-fun e!4101440 () Bool)

(assert (=> b!6795588 (= e!4101440 e!4101441)))

(declare-fun b!6795589 () Bool)

(declare-fun e!4101439 () Bool)

(assert (=> b!6795589 (= e!4101442 e!4101439)))

(declare-fun res!2777205 () Bool)

(assert (=> b!6795589 (= res!2777205 (matchRSpec!3716 (regOne!33743 (regTwo!33743 lt!2446884)) s!2326))))

(assert (=> b!6795589 (=> res!2777205 e!4101439)))

(declare-fun b!6795590 () Bool)

(declare-fun res!2777204 () Bool)

(assert (=> b!6795590 (=> res!2777204 e!4101443)))

(assert (=> b!6795590 (= res!2777204 call!617247)))

(assert (=> b!6795590 (= e!4101444 e!4101443)))

(declare-fun b!6795591 () Bool)

(assert (=> b!6795591 (= e!4101439 (matchRSpec!3716 (regTwo!33743 (regTwo!33743 lt!2446884)) s!2326))))

(declare-fun bm!617242 () Bool)

(assert (=> bm!617242 (= call!617247 (isEmpty!38394 s!2326))))

(declare-fun b!6795592 () Bool)

(assert (=> b!6795592 (= e!4101438 e!4101440)))

(declare-fun res!2777206 () Bool)

(assert (=> b!6795592 (= res!2777206 (not ((_ is EmptyLang!16615) (regTwo!33743 lt!2446884))))))

(assert (=> b!6795592 (=> (not res!2777206) (not e!4101440))))

(assert (= (and d!2135315 c!1263308) b!6795585))

(assert (= (and d!2135315 (not c!1263308)) b!6795592))

(assert (= (and b!6795592 res!2777206) b!6795588))

(assert (= (and b!6795588 c!1263305) b!6795582))

(assert (= (and b!6795588 (not c!1263305)) b!6795586))

(assert (= (and b!6795586 c!1263307) b!6795589))

(assert (= (and b!6795586 (not c!1263307)) b!6795584))

(assert (= (and b!6795589 (not res!2777205)) b!6795591))

(assert (= (and b!6795584 c!1263306) b!6795590))

(assert (= (and b!6795584 (not c!1263306)) b!6795587))

(assert (= (and b!6795590 (not res!2777204)) b!6795583))

(assert (= (or b!6795583 b!6795587) bm!617241))

(assert (= (or b!6795585 b!6795590) bm!617242))

(declare-fun m!7542596 () Bool)

(assert (=> bm!617241 m!7542596))

(declare-fun m!7542598 () Bool)

(assert (=> b!6795589 m!7542598))

(declare-fun m!7542600 () Bool)

(assert (=> b!6795591 m!7542600))

(assert (=> bm!617242 m!7540894))

(assert (=> b!6794440 d!2135315))

(declare-fun b!6795593 () Bool)

(declare-fun e!4101448 () Bool)

(declare-fun e!4101445 () Bool)

(assert (=> b!6795593 (= e!4101448 e!4101445)))

(declare-fun res!2777213 () Bool)

(assert (=> b!6795593 (=> res!2777213 e!4101445)))

(declare-fun call!617248 () Bool)

(assert (=> b!6795593 (= res!2777213 call!617248)))

(declare-fun b!6795594 () Bool)

(declare-fun e!4101450 () Bool)

(declare-fun lt!2447094 () Bool)

(assert (=> b!6795594 (= e!4101450 (= lt!2447094 call!617248))))

(declare-fun b!6795595 () Bool)

(declare-fun e!4101446 () Bool)

(assert (=> b!6795595 (= e!4101446 (nullable!6594 (derivativeStep!5279 r!7292 (head!13641 s!2326))))))

(declare-fun b!6795596 () Bool)

(declare-fun res!2777208 () Bool)

(declare-fun e!4101449 () Bool)

(assert (=> b!6795596 (=> res!2777208 e!4101449)))

(assert (=> b!6795596 (= res!2777208 (not ((_ is ElementMatch!16615) (derivativeStep!5279 r!7292 (head!13641 s!2326)))))))

(declare-fun e!4101447 () Bool)

(assert (=> b!6795596 (= e!4101447 e!4101449)))

(declare-fun b!6795597 () Bool)

(assert (=> b!6795597 (= e!4101450 e!4101447)))

(declare-fun c!1263309 () Bool)

(assert (=> b!6795597 (= c!1263309 ((_ is EmptyLang!16615) (derivativeStep!5279 r!7292 (head!13641 s!2326))))))

(declare-fun bm!617243 () Bool)

(assert (=> bm!617243 (= call!617248 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun b!6795599 () Bool)

(assert (=> b!6795599 (= e!4101447 (not lt!2447094))))

(declare-fun b!6795600 () Bool)

(declare-fun res!2777209 () Bool)

(assert (=> b!6795600 (=> res!2777209 e!4101445)))

(assert (=> b!6795600 (= res!2777209 (not (isEmpty!38394 (tail!12726 (tail!12726 s!2326)))))))

(declare-fun b!6795601 () Bool)

(assert (=> b!6795601 (= e!4101445 (not (= (head!13641 (tail!12726 s!2326)) (c!1262803 (derivativeStep!5279 r!7292 (head!13641 s!2326))))))))

(declare-fun b!6795602 () Bool)

(declare-fun e!4101451 () Bool)

(assert (=> b!6795602 (= e!4101451 (= (head!13641 (tail!12726 s!2326)) (c!1262803 (derivativeStep!5279 r!7292 (head!13641 s!2326)))))))

(declare-fun b!6795603 () Bool)

(declare-fun res!2777214 () Bool)

(assert (=> b!6795603 (=> res!2777214 e!4101449)))

(assert (=> b!6795603 (= res!2777214 e!4101451)))

(declare-fun res!2777207 () Bool)

(assert (=> b!6795603 (=> (not res!2777207) (not e!4101451))))

(assert (=> b!6795603 (= res!2777207 lt!2447094)))

(declare-fun b!6795604 () Bool)

(declare-fun res!2777211 () Bool)

(assert (=> b!6795604 (=> (not res!2777211) (not e!4101451))))

(assert (=> b!6795604 (= res!2777211 (not call!617248))))

(declare-fun b!6795605 () Bool)

(assert (=> b!6795605 (= e!4101449 e!4101448)))

(declare-fun res!2777210 () Bool)

(assert (=> b!6795605 (=> (not res!2777210) (not e!4101448))))

(assert (=> b!6795605 (= res!2777210 (not lt!2447094))))

(declare-fun b!6795606 () Bool)

(assert (=> b!6795606 (= e!4101446 (matchR!8798 (derivativeStep!5279 (derivativeStep!5279 r!7292 (head!13641 s!2326)) (head!13641 (tail!12726 s!2326))) (tail!12726 (tail!12726 s!2326))))))

(declare-fun b!6795598 () Bool)

(declare-fun res!2777212 () Bool)

(assert (=> b!6795598 (=> (not res!2777212) (not e!4101451))))

(assert (=> b!6795598 (= res!2777212 (isEmpty!38394 (tail!12726 (tail!12726 s!2326))))))

(declare-fun d!2135317 () Bool)

(assert (=> d!2135317 e!4101450))

(declare-fun c!1263311 () Bool)

(assert (=> d!2135317 (= c!1263311 ((_ is EmptyExpr!16615) (derivativeStep!5279 r!7292 (head!13641 s!2326))))))

(assert (=> d!2135317 (= lt!2447094 e!4101446)))

(declare-fun c!1263310 () Bool)

(assert (=> d!2135317 (= c!1263310 (isEmpty!38394 (tail!12726 s!2326)))))

(assert (=> d!2135317 (validRegex!8351 (derivativeStep!5279 r!7292 (head!13641 s!2326)))))

(assert (=> d!2135317 (= (matchR!8798 (derivativeStep!5279 r!7292 (head!13641 s!2326)) (tail!12726 s!2326)) lt!2447094)))

(assert (= (and d!2135317 c!1263310) b!6795595))

(assert (= (and d!2135317 (not c!1263310)) b!6795606))

(assert (= (and d!2135317 c!1263311) b!6795594))

(assert (= (and d!2135317 (not c!1263311)) b!6795597))

(assert (= (and b!6795597 c!1263309) b!6795599))

(assert (= (and b!6795597 (not c!1263309)) b!6795596))

(assert (= (and b!6795596 (not res!2777208)) b!6795603))

(assert (= (and b!6795603 res!2777207) b!6795604))

(assert (= (and b!6795604 res!2777211) b!6795598))

(assert (= (and b!6795598 res!2777212) b!6795602))

(assert (= (and b!6795603 (not res!2777214)) b!6795605))

(assert (= (and b!6795605 res!2777210) b!6795593))

(assert (= (and b!6795593 (not res!2777213)) b!6795600))

(assert (= (and b!6795600 (not res!2777209)) b!6795601))

(assert (= (or b!6795594 b!6795593 b!6795604) bm!617243))

(assert (=> b!6795601 m!7541106))

(assert (=> b!6795601 m!7542496))

(assert (=> b!6795602 m!7541106))

(assert (=> b!6795602 m!7542496))

(assert (=> d!2135317 m!7541106))

(assert (=> d!2135317 m!7541492))

(assert (=> d!2135317 m!7541516))

(declare-fun m!7542602 () Bool)

(assert (=> d!2135317 m!7542602))

(assert (=> b!6795600 m!7541106))

(assert (=> b!6795600 m!7542500))

(assert (=> b!6795600 m!7542500))

(assert (=> b!6795600 m!7542502))

(assert (=> b!6795595 m!7541516))

(declare-fun m!7542604 () Bool)

(assert (=> b!6795595 m!7542604))

(assert (=> b!6795606 m!7541106))

(assert (=> b!6795606 m!7542496))

(assert (=> b!6795606 m!7541516))

(assert (=> b!6795606 m!7542496))

(declare-fun m!7542606 () Bool)

(assert (=> b!6795606 m!7542606))

(assert (=> b!6795606 m!7541106))

(assert (=> b!6795606 m!7542500))

(assert (=> b!6795606 m!7542606))

(assert (=> b!6795606 m!7542500))

(declare-fun m!7542608 () Bool)

(assert (=> b!6795606 m!7542608))

(assert (=> b!6795598 m!7541106))

(assert (=> b!6795598 m!7542500))

(assert (=> b!6795598 m!7542500))

(assert (=> b!6795598 m!7542502))

(assert (=> bm!617243 m!7541106))

(assert (=> bm!617243 m!7541492))

(assert (=> b!6794508 d!2135317))

(declare-fun b!6795607 () Bool)

(declare-fun e!4101452 () Regex!16615)

(declare-fun e!4101456 () Regex!16615)

(assert (=> b!6795607 (= e!4101452 e!4101456)))

(declare-fun c!1263312 () Bool)

(assert (=> b!6795607 (= c!1263312 ((_ is ElementMatch!16615) r!7292))))

(declare-fun b!6795608 () Bool)

(declare-fun e!4101453 () Regex!16615)

(declare-fun call!617250 () Regex!16615)

(assert (=> b!6795608 (= e!4101453 (Union!16615 (Concat!25460 call!617250 (regTwo!33742 r!7292)) EmptyLang!16615))))

(declare-fun b!6795609 () Bool)

(declare-fun call!617249 () Regex!16615)

(assert (=> b!6795609 (= e!4101453 (Union!16615 (Concat!25460 call!617249 (regTwo!33742 r!7292)) call!617250))))

(declare-fun d!2135319 () Bool)

(declare-fun lt!2447095 () Regex!16615)

(assert (=> d!2135319 (validRegex!8351 lt!2447095)))

(assert (=> d!2135319 (= lt!2447095 e!4101452)))

(declare-fun c!1263316 () Bool)

(assert (=> d!2135319 (= c!1263316 (or ((_ is EmptyExpr!16615) r!7292) ((_ is EmptyLang!16615) r!7292)))))

(assert (=> d!2135319 (validRegex!8351 r!7292)))

(assert (=> d!2135319 (= (derivativeStep!5279 r!7292 (head!13641 s!2326)) lt!2447095)))

(declare-fun b!6795610 () Bool)

(declare-fun e!4101454 () Regex!16615)

(assert (=> b!6795610 (= e!4101454 (Concat!25460 call!617249 r!7292))))

(declare-fun bm!617244 () Bool)

(declare-fun call!617251 () Regex!16615)

(assert (=> bm!617244 (= call!617250 call!617251)))

(declare-fun bm!617245 () Bool)

(declare-fun c!1263313 () Bool)

(declare-fun c!1263315 () Bool)

(assert (=> bm!617245 (= call!617251 (derivativeStep!5279 (ite c!1263313 (regOne!33743 r!7292) (ite c!1263315 (regTwo!33742 r!7292) (regOne!33742 r!7292))) (head!13641 s!2326)))))

(declare-fun bm!617246 () Bool)

(declare-fun call!617252 () Regex!16615)

(declare-fun c!1263314 () Bool)

(assert (=> bm!617246 (= call!617252 (derivativeStep!5279 (ite c!1263313 (regTwo!33743 r!7292) (ite c!1263314 (reg!16944 r!7292) (regOne!33742 r!7292))) (head!13641 s!2326)))))

(declare-fun b!6795611 () Bool)

(assert (=> b!6795611 (= c!1263315 (nullable!6594 (regOne!33742 r!7292)))))

(assert (=> b!6795611 (= e!4101454 e!4101453)))

(declare-fun b!6795612 () Bool)

(assert (=> b!6795612 (= e!4101456 (ite (= (head!13641 s!2326) (c!1262803 r!7292)) EmptyExpr!16615 EmptyLang!16615))))

(declare-fun b!6795613 () Bool)

(declare-fun e!4101455 () Regex!16615)

(assert (=> b!6795613 (= e!4101455 e!4101454)))

(assert (=> b!6795613 (= c!1263314 ((_ is Star!16615) r!7292))))

(declare-fun b!6795614 () Bool)

(assert (=> b!6795614 (= e!4101452 EmptyLang!16615)))

(declare-fun bm!617247 () Bool)

(assert (=> bm!617247 (= call!617249 call!617252)))

(declare-fun b!6795615 () Bool)

(assert (=> b!6795615 (= c!1263313 ((_ is Union!16615) r!7292))))

(assert (=> b!6795615 (= e!4101456 e!4101455)))

(declare-fun b!6795616 () Bool)

(assert (=> b!6795616 (= e!4101455 (Union!16615 call!617251 call!617252))))

(assert (= (and d!2135319 c!1263316) b!6795614))

(assert (= (and d!2135319 (not c!1263316)) b!6795607))

(assert (= (and b!6795607 c!1263312) b!6795612))

(assert (= (and b!6795607 (not c!1263312)) b!6795615))

(assert (= (and b!6795615 c!1263313) b!6795616))

(assert (= (and b!6795615 (not c!1263313)) b!6795613))

(assert (= (and b!6795613 c!1263314) b!6795610))

(assert (= (and b!6795613 (not c!1263314)) b!6795611))

(assert (= (and b!6795611 c!1263315) b!6795609))

(assert (= (and b!6795611 (not c!1263315)) b!6795608))

(assert (= (or b!6795609 b!6795608) bm!617244))

(assert (= (or b!6795610 b!6795609) bm!617247))

(assert (= (or b!6795616 bm!617247) bm!617246))

(assert (= (or b!6795616 bm!617244) bm!617245))

(declare-fun m!7542610 () Bool)

(assert (=> d!2135319 m!7542610))

(assert (=> d!2135319 m!7540836))

(assert (=> bm!617245 m!7541102))

(declare-fun m!7542612 () Bool)

(assert (=> bm!617245 m!7542612))

(assert (=> bm!617246 m!7541102))

(declare-fun m!7542614 () Bool)

(assert (=> bm!617246 m!7542614))

(assert (=> b!6795611 m!7541048))

(assert (=> b!6794508 d!2135319))

(assert (=> b!6794508 d!2135249))

(assert (=> b!6794508 d!2135177))

(declare-fun d!2135321 () Bool)

(assert (=> d!2135321 (= (isEmpty!38397 (exprs!6499 (h!72470 zl!343))) ((_ is Nil!66020) (exprs!6499 (h!72470 zl!343))))))

(assert (=> b!6794052 d!2135321))

(declare-fun d!2135323 () Bool)

(assert (=> d!2135323 (= (nullable!6594 (regOne!33742 r!7292)) (nullableFct!2498 (regOne!33742 r!7292)))))

(declare-fun bs!1810991 () Bool)

(assert (= bs!1810991 d!2135323))

(declare-fun m!7542616 () Bool)

(assert (=> bs!1810991 m!7542616))

(assert (=> b!6793846 d!2135323))

(declare-fun d!2135325 () Bool)

(assert (=> d!2135325 true))

(assert (=> d!2135325 true))

(declare-fun res!2777217 () Bool)

(assert (=> d!2135325 (= (choose!50630 lambda!382886) res!2777217)))

(assert (=> d!2134773 d!2135325))

(declare-fun d!2135327 () Bool)

(assert (=> d!2135327 (= (nullable!6594 (h!72468 (exprs!6499 lt!2446885))) (nullableFct!2498 (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun bs!1810992 () Bool)

(assert (= bs!1810992 d!2135327))

(declare-fun m!7542618 () Bool)

(assert (=> bs!1810992 m!7542618))

(assert (=> b!6794395 d!2135327))

(assert (=> d!2134815 d!2134813))

(assert (=> d!2134815 d!2134811))

(declare-fun d!2135329 () Bool)

(assert (=> d!2135329 (= (matchR!8798 lt!2446884 s!2326) (matchRSpec!3716 lt!2446884 s!2326))))

(assert (=> d!2135329 true))

(declare-fun _$88!5614 () Unit!159921)

(assert (=> d!2135329 (= (choose!50632 lt!2446884 s!2326) _$88!5614)))

(declare-fun bs!1810993 () Bool)

(assert (= bs!1810993 d!2135329))

(assert (=> bs!1810993 m!7540832))

(assert (=> bs!1810993 m!7540830))

(assert (=> d!2134815 d!2135329))

(assert (=> d!2134815 d!2135311))

(assert (=> bm!617049 d!2134775))

(declare-fun d!2135331 () Bool)

(assert (=> d!2135331 (= (nullable!6594 (regOne!33742 (reg!16944 r!7292))) (nullableFct!2498 (regOne!33742 (reg!16944 r!7292))))))

(declare-fun bs!1810994 () Bool)

(assert (= bs!1810994 d!2135331))

(declare-fun m!7542620 () Bool)

(assert (=> bs!1810994 m!7542620))

(assert (=> b!6794392 d!2135331))

(declare-fun d!2135333 () Bool)

(assert (=> d!2135333 (= (nullable!6594 lt!2446884) (nullableFct!2498 lt!2446884))))

(declare-fun bs!1810995 () Bool)

(assert (= bs!1810995 d!2135333))

(declare-fun m!7542622 () Bool)

(assert (=> bs!1810995 m!7542622))

(assert (=> b!6794472 d!2135333))

(declare-fun d!2135335 () Bool)

(assert (=> d!2135335 (= ($colon$colon!2424 (exprs!6499 (Context!11999 Nil!66020)) (ite (or c!1262830 c!1262829) (regTwo!33742 r!7292) r!7292)) (Cons!66020 (ite (or c!1262830 c!1262829) (regTwo!33742 r!7292) r!7292) (exprs!6499 (Context!11999 Nil!66020))))))

(assert (=> bm!616966 d!2135335))

(assert (=> b!6794504 d!2135249))

(declare-fun d!2135337 () Bool)

(assert (=> d!2135337 (= (Exists!3683 lambda!382947) (choose!50630 lambda!382947))))

(declare-fun bs!1810996 () Bool)

(assert (= bs!1810996 d!2135337))

(declare-fun m!7542624 () Bool)

(assert (=> bs!1810996 m!7542624))

(assert (=> d!2134753 d!2135337))

(declare-fun d!2135339 () Bool)

(assert (=> d!2135339 (= (Exists!3683 lambda!382948) (choose!50630 lambda!382948))))

(declare-fun bs!1810997 () Bool)

(assert (= bs!1810997 d!2135339))

(declare-fun m!7542626 () Bool)

(assert (=> bs!1810997 m!7542626))

(assert (=> d!2134753 d!2135339))

(declare-fun bs!1810998 () Bool)

(declare-fun d!2135341 () Bool)

(assert (= bs!1810998 (and d!2135341 d!2134769)))

(declare-fun lambda!383045 () Int)

(assert (=> bs!1810998 (not (= lambda!383045 lambda!382954))))

(assert (=> bs!1810998 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!383045 lambda!382953))))

(declare-fun bs!1810999 () Bool)

(assert (= bs!1810999 (and d!2135341 b!6794436)))

(assert (=> bs!1810999 (not (= lambda!383045 lambda!382970))))

(declare-fun bs!1811000 () Bool)

(assert (= bs!1811000 (and d!2135341 b!6793723)))

(assert (=> bs!1811000 (not (= lambda!383045 lambda!382886))))

(declare-fun bs!1811001 () Bool)

(assert (= bs!1811001 (and d!2135341 d!2135219)))

(assert (=> bs!1811001 (not (= lambda!383045 lambda!383026))))

(declare-fun bs!1811002 () Bool)

(assert (= bs!1811002 (and d!2135341 b!6795412)))

(assert (=> bs!1811002 (not (= lambda!383045 lambda!383033))))

(assert (=> bs!1811000 (= lambda!383045 lambda!382884)))

(declare-fun bs!1811003 () Bool)

(assert (= bs!1811003 (and d!2135341 b!6794485)))

(assert (=> bs!1811003 (not (= lambda!383045 lambda!382971))))

(assert (=> bs!1811001 (= (= r!7292 (Star!16615 (reg!16944 r!7292))) (= lambda!383045 lambda!383025))))

(declare-fun bs!1811004 () Bool)

(assert (= bs!1811004 (and d!2135341 d!2134753)))

(assert (=> bs!1811004 (= lambda!383045 lambda!382947)))

(declare-fun bs!1811005 () Bool)

(assert (= bs!1811005 (and d!2135341 d!2135221)))

(assert (=> bs!1811005 (= lambda!383045 lambda!383029)))

(declare-fun bs!1811006 () Bool)

(assert (= bs!1811006 (and d!2135341 b!6794432)))

(assert (=> bs!1811006 (not (= lambda!383045 lambda!382969))))

(assert (=> bs!1811000 (not (= lambda!383045 lambda!382885))))

(declare-fun bs!1811007 () Bool)

(assert (= bs!1811007 (and d!2135341 d!2134781)))

(assert (=> bs!1811007 (= lambda!383045 lambda!382957)))

(declare-fun bs!1811008 () Bool)

(assert (= bs!1811008 (and d!2135341 b!6795587)))

(assert (=> bs!1811008 (not (= lambda!383045 lambda!383040))))

(assert (=> bs!1811004 (not (= lambda!383045 lambda!382948))))

(declare-fun bs!1811009 () Bool)

(assert (= bs!1811009 (and d!2135341 b!6795583)))

(assert (=> bs!1811009 (not (= lambda!383045 lambda!383039))))

(declare-fun bs!1811010 () Bool)

(assert (= bs!1811010 (and d!2135341 b!6795325)))

(assert (=> bs!1811010 (not (= lambda!383045 lambda!383019))))

(declare-fun bs!1811011 () Bool)

(assert (= bs!1811011 (and d!2135341 b!6795416)))

(assert (=> bs!1811011 (not (= lambda!383045 lambda!383034))))

(declare-fun bs!1811012 () Bool)

(assert (= bs!1811012 (and d!2135341 b!6794489)))

(assert (=> bs!1811012 (not (= lambda!383045 lambda!382972))))

(declare-fun bs!1811013 () Bool)

(assert (= bs!1811013 (and d!2135341 b!6795321)))

(assert (=> bs!1811013 (not (= lambda!383045 lambda!383018))))

(assert (=> d!2135341 true))

(assert (=> d!2135341 true))

(assert (=> d!2135341 true))

(declare-fun lambda!383046 () Int)

(assert (=> bs!1810998 (not (= lambda!383046 lambda!382954))))

(assert (=> bs!1810998 (not (= lambda!383046 lambda!382953))))

(assert (=> bs!1810999 (= (and (= (reg!16944 r!7292) (regOne!33742 lt!2446884)) (= r!7292 (regTwo!33742 lt!2446884))) (= lambda!383046 lambda!382970))))

(assert (=> bs!1811000 (= lambda!383046 lambda!382886)))

(assert (=> bs!1811001 (not (= lambda!383046 lambda!383026))))

(assert (=> bs!1811002 (not (= lambda!383046 lambda!383033))))

(assert (=> bs!1811000 (not (= lambda!383046 lambda!382884))))

(assert (=> bs!1811003 (not (= lambda!383046 lambda!382971))))

(assert (=> bs!1811001 (not (= lambda!383046 lambda!383025))))

(assert (=> bs!1811004 (not (= lambda!383046 lambda!382947))))

(assert (=> bs!1811005 (not (= lambda!383046 lambda!383029))))

(assert (=> bs!1811006 (not (= lambda!383046 lambda!382969))))

(assert (=> bs!1811000 (not (= lambda!383046 lambda!382885))))

(assert (=> bs!1811007 (not (= lambda!383046 lambda!382957))))

(assert (=> bs!1811008 (= (and (= (reg!16944 r!7292) (regOne!33742 (regTwo!33743 lt!2446884))) (= r!7292 (regTwo!33742 (regTwo!33743 lt!2446884)))) (= lambda!383046 lambda!383040))))

(assert (=> bs!1811004 (= lambda!383046 lambda!382948)))

(assert (=> bs!1811009 (not (= lambda!383046 lambda!383039))))

(assert (=> bs!1811010 (= (and (= (reg!16944 r!7292) (regOne!33742 (regOne!33743 lt!2446884))) (= r!7292 (regTwo!33742 (regOne!33743 lt!2446884)))) (= lambda!383046 lambda!383019))))

(assert (=> bs!1811011 (= (and (= (reg!16944 r!7292) (regOne!33742 (regTwo!33743 r!7292))) (= r!7292 (regTwo!33742 (regTwo!33743 r!7292)))) (= lambda!383046 lambda!383034))))

(declare-fun bs!1811014 () Bool)

(assert (= bs!1811014 d!2135341))

(assert (=> bs!1811014 (not (= lambda!383046 lambda!383045))))

(assert (=> bs!1811012 (= (and (= (reg!16944 r!7292) (regOne!33742 r!7292)) (= r!7292 (regTwo!33742 r!7292))) (= lambda!383046 lambda!382972))))

(assert (=> bs!1811013 (not (= lambda!383046 lambda!383018))))

(assert (=> d!2135341 true))

(assert (=> d!2135341 true))

(assert (=> d!2135341 true))

(assert (=> d!2135341 (= (Exists!3683 lambda!383045) (Exists!3683 lambda!383046))))

(assert (=> d!2135341 true))

(declare-fun _$90!2686 () Unit!159921)

(assert (=> d!2135341 (= (choose!50628 (reg!16944 r!7292) r!7292 s!2326) _$90!2686)))

(declare-fun m!7542628 () Bool)

(assert (=> bs!1811014 m!7542628))

(declare-fun m!7542630 () Bool)

(assert (=> bs!1811014 m!7542630))

(assert (=> d!2134753 d!2135341))

(assert (=> d!2134753 d!2135211))

(assert (=> bm!617052 d!2134775))

(declare-fun b!6795625 () Bool)

(declare-fun e!4101463 () Bool)

(declare-fun call!617254 () Bool)

(assert (=> b!6795625 (= e!4101463 call!617254)))

(declare-fun b!6795626 () Bool)

(declare-fun e!4101464 () Bool)

(declare-fun call!617255 () Bool)

(assert (=> b!6795626 (= e!4101464 call!617255)))

(declare-fun b!6795627 () Bool)

(declare-fun e!4101462 () Bool)

(assert (=> b!6795627 (= e!4101462 e!4101464)))

(declare-fun res!2777226 () Bool)

(assert (=> b!6795627 (=> (not res!2777226) (not e!4101464))))

(declare-fun call!617253 () Bool)

(assert (=> b!6795627 (= res!2777226 call!617253)))

(declare-fun b!6795628 () Bool)

(declare-fun res!2777228 () Bool)

(declare-fun e!4101461 () Bool)

(assert (=> b!6795628 (=> (not res!2777228) (not e!4101461))))

(assert (=> b!6795628 (= res!2777228 call!617253)))

(declare-fun e!4101466 () Bool)

(assert (=> b!6795628 (= e!4101466 e!4101461)))

(declare-fun b!6795629 () Bool)

(declare-fun e!4101465 () Bool)

(assert (=> b!6795629 (= e!4101465 e!4101466)))

(declare-fun c!1263318 () Bool)

(assert (=> b!6795629 (= c!1263318 ((_ is Union!16615) lt!2446951))))

(declare-fun b!6795630 () Bool)

(assert (=> b!6795630 (= e!4101461 call!617255)))

(declare-fun b!6795631 () Bool)

(assert (=> b!6795631 (= e!4101465 e!4101463)))

(declare-fun res!2777229 () Bool)

(assert (=> b!6795631 (= res!2777229 (not (nullable!6594 (reg!16944 lt!2446951))))))

(assert (=> b!6795631 (=> (not res!2777229) (not e!4101463))))

(declare-fun d!2135343 () Bool)

(declare-fun res!2777227 () Bool)

(declare-fun e!4101467 () Bool)

(assert (=> d!2135343 (=> res!2777227 e!4101467)))

(assert (=> d!2135343 (= res!2777227 ((_ is ElementMatch!16615) lt!2446951))))

(assert (=> d!2135343 (= (validRegex!8351 lt!2446951) e!4101467)))

(declare-fun c!1263317 () Bool)

(declare-fun bm!617248 () Bool)

(assert (=> bm!617248 (= call!617254 (validRegex!8351 (ite c!1263317 (reg!16944 lt!2446951) (ite c!1263318 (regOne!33743 lt!2446951) (regOne!33742 lt!2446951)))))))

(declare-fun b!6795632 () Bool)

(assert (=> b!6795632 (= e!4101467 e!4101465)))

(assert (=> b!6795632 (= c!1263317 ((_ is Star!16615) lt!2446951))))

(declare-fun bm!617249 () Bool)

(assert (=> bm!617249 (= call!617253 call!617254)))

(declare-fun b!6795633 () Bool)

(declare-fun res!2777230 () Bool)

(assert (=> b!6795633 (=> res!2777230 e!4101462)))

(assert (=> b!6795633 (= res!2777230 (not ((_ is Concat!25460) lt!2446951)))))

(assert (=> b!6795633 (= e!4101466 e!4101462)))

(declare-fun bm!617250 () Bool)

(assert (=> bm!617250 (= call!617255 (validRegex!8351 (ite c!1263318 (regTwo!33743 lt!2446951) (regTwo!33742 lt!2446951))))))

(assert (= (and d!2135343 (not res!2777227)) b!6795632))

(assert (= (and b!6795632 c!1263317) b!6795631))

(assert (= (and b!6795632 (not c!1263317)) b!6795629))

(assert (= (and b!6795631 res!2777229) b!6795625))

(assert (= (and b!6795629 c!1263318) b!6795628))

(assert (= (and b!6795629 (not c!1263318)) b!6795633))

(assert (= (and b!6795628 res!2777228) b!6795630))

(assert (= (and b!6795633 (not res!2777230)) b!6795627))

(assert (= (and b!6795627 res!2777226) b!6795626))

(assert (= (or b!6795630 b!6795626) bm!617250))

(assert (= (or b!6795628 b!6795627) bm!617249))

(assert (= (or b!6795625 bm!617249) bm!617248))

(declare-fun m!7542632 () Bool)

(assert (=> b!6795631 m!7542632))

(declare-fun m!7542634 () Bool)

(assert (=> bm!617248 m!7542634))

(declare-fun m!7542636 () Bool)

(assert (=> bm!617250 m!7542636))

(assert (=> d!2134677 d!2135343))

(declare-fun d!2135345 () Bool)

(declare-fun res!2777231 () Bool)

(declare-fun e!4101468 () Bool)

(assert (=> d!2135345 (=> res!2777231 e!4101468)))

(assert (=> d!2135345 (= res!2777231 ((_ is Nil!66020) (exprs!6499 (h!72470 zl!343))))))

(assert (=> d!2135345 (= (forall!15807 (exprs!6499 (h!72470 zl!343)) lambda!382930) e!4101468)))

(declare-fun b!6795634 () Bool)

(declare-fun e!4101469 () Bool)

(assert (=> b!6795634 (= e!4101468 e!4101469)))

(declare-fun res!2777232 () Bool)

(assert (=> b!6795634 (=> (not res!2777232) (not e!4101469))))

(assert (=> b!6795634 (= res!2777232 (dynLambda!26358 lambda!382930 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6795635 () Bool)

(assert (=> b!6795635 (= e!4101469 (forall!15807 (t!379869 (exprs!6499 (h!72470 zl!343))) lambda!382930))))

(assert (= (and d!2135345 (not res!2777231)) b!6795634))

(assert (= (and b!6795634 res!2777232) b!6795635))

(declare-fun b_lambda!256047 () Bool)

(assert (=> (not b_lambda!256047) (not b!6795634)))

(declare-fun m!7542638 () Bool)

(assert (=> b!6795634 m!7542638))

(declare-fun m!7542640 () Bool)

(assert (=> b!6795635 m!7542640))

(assert (=> d!2134677 d!2135345))

(declare-fun b!6795636 () Bool)

(declare-fun e!4101471 () (InoxSet Context!11998))

(declare-fun e!4101472 () (InoxSet Context!11998))

(assert (=> b!6795636 (= e!4101471 e!4101472)))

(declare-fun c!1263321 () Bool)

(assert (=> b!6795636 (= c!1263321 ((_ is Union!16615) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))))))

(declare-fun b!6795637 () Bool)

(declare-fun call!617258 () (InoxSet Context!11998))

(declare-fun call!617256 () (InoxSet Context!11998))

(assert (=> b!6795637 (= e!4101472 ((_ map or) call!617258 call!617256))))

(declare-fun b!6795638 () Bool)

(declare-fun e!4101474 () (InoxSet Context!11998))

(declare-fun call!617261 () (InoxSet Context!11998))

(assert (=> b!6795638 (= e!4101474 call!617261)))

(declare-fun call!617259 () List!66144)

(declare-fun bm!617251 () Bool)

(declare-fun c!1263320 () Bool)

(declare-fun c!1263319 () Bool)

(assert (=> bm!617251 (= call!617256 (derivationStepZipperDown!1843 (ite c!1263321 (regTwo!33743 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (ite c!1263320 (regTwo!33742 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (ite c!1263319 (regOne!33742 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (reg!16944 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)))))) (ite (or c!1263321 c!1263320) (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970)) (Context!11999 call!617259)) (h!72469 s!2326)))))

(declare-fun b!6795639 () Bool)

(declare-fun e!4101473 () (InoxSet Context!11998))

(declare-fun e!4101470 () (InoxSet Context!11998))

(assert (=> b!6795639 (= e!4101473 e!4101470)))

(assert (=> b!6795639 (= c!1263319 ((_ is Concat!25460) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))))))

(declare-fun bm!617252 () Bool)

(declare-fun call!617257 () (InoxSet Context!11998))

(assert (=> bm!617252 (= call!617257 call!617256)))

(declare-fun bm!617253 () Bool)

(declare-fun call!617260 () List!66144)

(assert (=> bm!617253 (= call!617259 call!617260)))

(declare-fun bm!617254 () Bool)

(assert (=> bm!617254 (= call!617258 (derivationStepZipperDown!1843 (ite c!1263321 (regOne!33743 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (regOne!33742 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)))) (ite c!1263321 (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970)) (Context!11999 call!617260)) (h!72469 s!2326)))))

(declare-fun c!1263323 () Bool)

(declare-fun d!2135347 () Bool)

(assert (=> d!2135347 (= c!1263323 (and ((_ is ElementMatch!16615) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (= (c!1262803 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (h!72469 s!2326))))))

(assert (=> d!2135347 (= (derivationStepZipperDown!1843 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)) (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970)) (h!72469 s!2326)) e!4101471)))

(declare-fun b!6795640 () Bool)

(assert (=> b!6795640 (= e!4101474 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795641 () Bool)

(assert (=> b!6795641 (= e!4101471 (store ((as const (Array Context!11998 Bool)) false) (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970)) true))))

(declare-fun bm!617255 () Bool)

(assert (=> bm!617255 (= call!617261 call!617257)))

(declare-fun bm!617256 () Bool)

(assert (=> bm!617256 (= call!617260 ($colon$colon!2424 (exprs!6499 (ite c!1262831 (Context!11999 Nil!66020) (Context!11999 call!616970))) (ite (or c!1263320 c!1263319) (regTwo!33742 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(declare-fun b!6795642 () Bool)

(assert (=> b!6795642 (= e!4101473 ((_ map or) call!617258 call!617257))))

(declare-fun b!6795643 () Bool)

(assert (=> b!6795643 (= e!4101470 call!617261)))

(declare-fun b!6795644 () Bool)

(declare-fun e!4101475 () Bool)

(assert (=> b!6795644 (= c!1263320 e!4101475)))

(declare-fun res!2777233 () Bool)

(assert (=> b!6795644 (=> (not res!2777233) (not e!4101475))))

(assert (=> b!6795644 (= res!2777233 ((_ is Concat!25460) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))))))

(assert (=> b!6795644 (= e!4101472 e!4101473)))

(declare-fun b!6795645 () Bool)

(assert (=> b!6795645 (= e!4101475 (nullable!6594 (regOne!33742 (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292)))))))

(declare-fun b!6795646 () Bool)

(declare-fun c!1263322 () Bool)

(assert (=> b!6795646 (= c!1263322 ((_ is Star!16615) (ite c!1262831 (regOne!33743 r!7292) (regOne!33742 r!7292))))))

(assert (=> b!6795646 (= e!4101470 e!4101474)))

(assert (= (and d!2135347 c!1263323) b!6795641))

(assert (= (and d!2135347 (not c!1263323)) b!6795636))

(assert (= (and b!6795636 c!1263321) b!6795637))

(assert (= (and b!6795636 (not c!1263321)) b!6795644))

(assert (= (and b!6795644 res!2777233) b!6795645))

(assert (= (and b!6795644 c!1263320) b!6795642))

(assert (= (and b!6795644 (not c!1263320)) b!6795639))

(assert (= (and b!6795639 c!1263319) b!6795643))

(assert (= (and b!6795639 (not c!1263319)) b!6795646))

(assert (= (and b!6795646 c!1263322) b!6795638))

(assert (= (and b!6795646 (not c!1263322)) b!6795640))

(assert (= (or b!6795643 b!6795638) bm!617253))

(assert (= (or b!6795643 b!6795638) bm!617255))

(assert (= (or b!6795642 bm!617253) bm!617256))

(assert (= (or b!6795642 bm!617255) bm!617252))

(assert (= (or b!6795637 bm!617252) bm!617251))

(assert (= (or b!6795637 b!6795642) bm!617254))

(declare-fun m!7542642 () Bool)

(assert (=> b!6795641 m!7542642))

(declare-fun m!7542644 () Bool)

(assert (=> b!6795645 m!7542644))

(declare-fun m!7542646 () Bool)

(assert (=> bm!617254 m!7542646))

(declare-fun m!7542648 () Bool)

(assert (=> bm!617251 m!7542648))

(declare-fun m!7542650 () Bool)

(assert (=> bm!617256 m!7542650))

(assert (=> bm!616964 d!2135347))

(declare-fun d!2135349 () Bool)

(assert (=> d!2135349 true))

(assert (=> d!2135349 true))

(declare-fun res!2777234 () Bool)

(assert (=> d!2135349 (= (choose!50630 lambda!382885) res!2777234)))

(assert (=> d!2134771 d!2135349))

(declare-fun b!6795647 () Bool)

(declare-fun e!4101478 () Bool)

(declare-fun call!617263 () Bool)

(assert (=> b!6795647 (= e!4101478 call!617263)))

(declare-fun b!6795648 () Bool)

(declare-fun e!4101479 () Bool)

(declare-fun call!617264 () Bool)

(assert (=> b!6795648 (= e!4101479 call!617264)))

(declare-fun b!6795649 () Bool)

(declare-fun e!4101477 () Bool)

(assert (=> b!6795649 (= e!4101477 e!4101479)))

(declare-fun res!2777235 () Bool)

(assert (=> b!6795649 (=> (not res!2777235) (not e!4101479))))

(declare-fun call!617262 () Bool)

(assert (=> b!6795649 (= res!2777235 call!617262)))

(declare-fun b!6795650 () Bool)

(declare-fun res!2777237 () Bool)

(declare-fun e!4101476 () Bool)

(assert (=> b!6795650 (=> (not res!2777237) (not e!4101476))))

(assert (=> b!6795650 (= res!2777237 call!617262)))

(declare-fun e!4101481 () Bool)

(assert (=> b!6795650 (= e!4101481 e!4101476)))

(declare-fun b!6795651 () Bool)

(declare-fun e!4101480 () Bool)

(assert (=> b!6795651 (= e!4101480 e!4101481)))

(declare-fun c!1263325 () Bool)

(assert (=> b!6795651 (= c!1263325 ((_ is Union!16615) lt!2446985))))

(declare-fun b!6795652 () Bool)

(assert (=> b!6795652 (= e!4101476 call!617264)))

(declare-fun b!6795653 () Bool)

(assert (=> b!6795653 (= e!4101480 e!4101478)))

(declare-fun res!2777238 () Bool)

(assert (=> b!6795653 (= res!2777238 (not (nullable!6594 (reg!16944 lt!2446985))))))

(assert (=> b!6795653 (=> (not res!2777238) (not e!4101478))))

(declare-fun d!2135351 () Bool)

(declare-fun res!2777236 () Bool)

(declare-fun e!4101482 () Bool)

(assert (=> d!2135351 (=> res!2777236 e!4101482)))

(assert (=> d!2135351 (= res!2777236 ((_ is ElementMatch!16615) lt!2446985))))

(assert (=> d!2135351 (= (validRegex!8351 lt!2446985) e!4101482)))

(declare-fun c!1263324 () Bool)

(declare-fun bm!617257 () Bool)

(assert (=> bm!617257 (= call!617263 (validRegex!8351 (ite c!1263324 (reg!16944 lt!2446985) (ite c!1263325 (regOne!33743 lt!2446985) (regOne!33742 lt!2446985)))))))

(declare-fun b!6795654 () Bool)

(assert (=> b!6795654 (= e!4101482 e!4101480)))

(assert (=> b!6795654 (= c!1263324 ((_ is Star!16615) lt!2446985))))

(declare-fun bm!617258 () Bool)

(assert (=> bm!617258 (= call!617262 call!617263)))

(declare-fun b!6795655 () Bool)

(declare-fun res!2777239 () Bool)

(assert (=> b!6795655 (=> res!2777239 e!4101477)))

(assert (=> b!6795655 (= res!2777239 (not ((_ is Concat!25460) lt!2446985)))))

(assert (=> b!6795655 (= e!4101481 e!4101477)))

(declare-fun bm!617259 () Bool)

(assert (=> bm!617259 (= call!617264 (validRegex!8351 (ite c!1263325 (regTwo!33743 lt!2446985) (regTwo!33742 lt!2446985))))))

(assert (= (and d!2135351 (not res!2777236)) b!6795654))

(assert (= (and b!6795654 c!1263324) b!6795653))

(assert (= (and b!6795654 (not c!1263324)) b!6795651))

(assert (= (and b!6795653 res!2777238) b!6795647))

(assert (= (and b!6795651 c!1263325) b!6795650))

(assert (= (and b!6795651 (not c!1263325)) b!6795655))

(assert (= (and b!6795650 res!2777237) b!6795652))

(assert (= (and b!6795655 (not res!2777239)) b!6795649))

(assert (= (and b!6795649 res!2777235) b!6795648))

(assert (= (or b!6795652 b!6795648) bm!617259))

(assert (= (or b!6795650 b!6795649) bm!617258))

(assert (= (or b!6795647 bm!617258) bm!617257))

(declare-fun m!7542652 () Bool)

(assert (=> b!6795653 m!7542652))

(declare-fun m!7542654 () Bool)

(assert (=> bm!617257 m!7542654))

(declare-fun m!7542656 () Bool)

(assert (=> bm!617259 m!7542656))

(assert (=> d!2134745 d!2135351))

(declare-fun bs!1811015 () Bool)

(declare-fun d!2135353 () Bool)

(assert (= bs!1811015 (and d!2135353 d!2134829)))

(declare-fun lambda!383047 () Int)

(assert (=> bs!1811015 (= lambda!383047 lambda!382973)))

(declare-fun bs!1811016 () Bool)

(assert (= bs!1811016 (and d!2135353 b!6793734)))

(assert (=> bs!1811016 (= lambda!383047 lambda!382889)))

(declare-fun bs!1811017 () Bool)

(assert (= bs!1811017 (and d!2135353 d!2134677)))

(assert (=> bs!1811017 (= lambda!383047 lambda!382930)))

(declare-fun bs!1811018 () Bool)

(assert (= bs!1811018 (and d!2135353 d!2134689)))

(assert (=> bs!1811018 (= lambda!383047 lambda!382932)))

(declare-fun bs!1811019 () Bool)

(assert (= bs!1811019 (and d!2135353 d!2134785)))

(assert (=> bs!1811019 (= lambda!383047 lambda!382963)))

(declare-fun bs!1811020 () Bool)

(assert (= bs!1811020 (and d!2135353 d!2135203)))

(assert (=> bs!1811020 (= lambda!383047 lambda!383020)))

(declare-fun bs!1811021 () Bool)

(assert (= bs!1811021 (and d!2135353 d!2134783)))

(assert (=> bs!1811021 (= lambda!383047 lambda!382960)))

(declare-fun bs!1811022 () Bool)

(assert (= bs!1811022 (and d!2135353 d!2134675)))

(assert (=> bs!1811022 (= lambda!383047 lambda!382921)))

(declare-fun bs!1811023 () Bool)

(assert (= bs!1811023 (and d!2135353 d!2135169)))

(assert (=> bs!1811023 (= lambda!383047 lambda!383016)))

(declare-fun bs!1811024 () Bool)

(assert (= bs!1811024 (and d!2135353 d!2135279)))

(assert (=> bs!1811024 (= lambda!383047 lambda!383036)))

(declare-fun bs!1811025 () Bool)

(assert (= bs!1811025 (and d!2135353 d!2135173)))

(assert (=> bs!1811025 (= lambda!383047 lambda!383017)))

(declare-fun bs!1811026 () Bool)

(assert (= bs!1811026 (and d!2135353 d!2135277)))

(assert (=> bs!1811026 (= lambda!383047 lambda!383035)))

(declare-fun b!6795656 () Bool)

(declare-fun e!4101486 () Bool)

(declare-fun e!4101487 () Bool)

(assert (=> b!6795656 (= e!4101486 e!4101487)))

(declare-fun c!1263329 () Bool)

(assert (=> b!6795656 (= c!1263329 (isEmpty!38397 (tail!12727 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022)))))))

(declare-fun b!6795657 () Bool)

(declare-fun lt!2447096 () Regex!16615)

(assert (=> b!6795657 (= e!4101487 (= lt!2447096 (head!13642 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022)))))))

(declare-fun b!6795658 () Bool)

(declare-fun e!4101485 () Regex!16615)

(assert (=> b!6795658 (= e!4101485 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))

(declare-fun b!6795659 () Bool)

(declare-fun e!4101484 () Bool)

(assert (=> b!6795659 (= e!4101484 e!4101486)))

(declare-fun c!1263326 () Bool)

(assert (=> b!6795659 (= c!1263326 (isEmpty!38397 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))

(assert (=> d!2135353 e!4101484))

(declare-fun res!2777240 () Bool)

(assert (=> d!2135353 (=> (not res!2777240) (not e!4101484))))

(assert (=> d!2135353 (= res!2777240 (validRegex!8351 lt!2447096))))

(assert (=> d!2135353 (= lt!2447096 e!4101485)))

(declare-fun c!1263328 () Bool)

(declare-fun e!4101488 () Bool)

(assert (=> d!2135353 (= c!1263328 e!4101488)))

(declare-fun res!2777241 () Bool)

(assert (=> d!2135353 (=> (not res!2777241) (not e!4101488))))

(assert (=> d!2135353 (= res!2777241 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))

(assert (=> d!2135353 (forall!15807 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022)) lambda!383047)))

(assert (=> d!2135353 (= (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))) lt!2447096)))

(declare-fun b!6795660 () Bool)

(declare-fun e!4101483 () Regex!16615)

(assert (=> b!6795660 (= e!4101483 EmptyLang!16615)))

(declare-fun b!6795661 () Bool)

(assert (=> b!6795661 (= e!4101487 (isUnion!1411 lt!2447096))))

(declare-fun b!6795662 () Bool)

(assert (=> b!6795662 (= e!4101485 e!4101483)))

(declare-fun c!1263327 () Bool)

(assert (=> b!6795662 (= c!1263327 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))

(declare-fun b!6795663 () Bool)

(assert (=> b!6795663 (= e!4101486 (isEmptyLang!1981 lt!2447096))))

(declare-fun b!6795664 () Bool)

(assert (=> b!6795664 (= e!4101483 (Union!16615 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))) (generalisedUnion!2459 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022))))))))

(declare-fun b!6795665 () Bool)

(assert (=> b!6795665 (= e!4101488 (isEmpty!38397 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022)))))))

(assert (= (and d!2135353 res!2777241) b!6795665))

(assert (= (and d!2135353 c!1263328) b!6795658))

(assert (= (and d!2135353 (not c!1263328)) b!6795662))

(assert (= (and b!6795662 c!1263327) b!6795664))

(assert (= (and b!6795662 (not c!1263327)) b!6795660))

(assert (= (and d!2135353 res!2777240) b!6795659))

(assert (= (and b!6795659 c!1263326) b!6795663))

(assert (= (and b!6795659 (not c!1263326)) b!6795656))

(assert (= (and b!6795656 c!1263329) b!6795657))

(assert (= (and b!6795656 (not c!1263329)) b!6795661))

(assert (=> b!6795656 m!7541342))

(declare-fun m!7542658 () Bool)

(assert (=> b!6795656 m!7542658))

(assert (=> b!6795656 m!7542658))

(declare-fun m!7542660 () Bool)

(assert (=> b!6795656 m!7542660))

(declare-fun m!7542662 () Bool)

(assert (=> b!6795661 m!7542662))

(assert (=> b!6795657 m!7541342))

(declare-fun m!7542664 () Bool)

(assert (=> b!6795657 m!7542664))

(declare-fun m!7542666 () Bool)

(assert (=> b!6795665 m!7542666))

(assert (=> b!6795659 m!7541342))

(declare-fun m!7542668 () Bool)

(assert (=> b!6795659 m!7542668))

(declare-fun m!7542670 () Bool)

(assert (=> d!2135353 m!7542670))

(assert (=> d!2135353 m!7541342))

(declare-fun m!7542672 () Bool)

(assert (=> d!2135353 m!7542672))

(declare-fun m!7542674 () Bool)

(assert (=> b!6795663 m!7542674))

(declare-fun m!7542676 () Bool)

(assert (=> b!6795664 m!7542676))

(assert (=> d!2134745 d!2135353))

(declare-fun bs!1811027 () Bool)

(declare-fun d!2135355 () Bool)

(assert (= bs!1811027 (and d!2135355 d!2134829)))

(declare-fun lambda!383048 () Int)

(assert (=> bs!1811027 (= lambda!383048 lambda!382973)))

(declare-fun bs!1811028 () Bool)

(assert (= bs!1811028 (and d!2135355 b!6793734)))

(assert (=> bs!1811028 (= lambda!383048 lambda!382889)))

(declare-fun bs!1811029 () Bool)

(assert (= bs!1811029 (and d!2135355 d!2134677)))

(assert (=> bs!1811029 (= lambda!383048 lambda!382930)))

(declare-fun bs!1811030 () Bool)

(assert (= bs!1811030 (and d!2135355 d!2134689)))

(assert (=> bs!1811030 (= lambda!383048 lambda!382932)))

(declare-fun bs!1811031 () Bool)

(assert (= bs!1811031 (and d!2135355 d!2135203)))

(assert (=> bs!1811031 (= lambda!383048 lambda!383020)))

(declare-fun bs!1811032 () Bool)

(assert (= bs!1811032 (and d!2135355 d!2134783)))

(assert (=> bs!1811032 (= lambda!383048 lambda!382960)))

(declare-fun bs!1811033 () Bool)

(assert (= bs!1811033 (and d!2135355 d!2134675)))

(assert (=> bs!1811033 (= lambda!383048 lambda!382921)))

(declare-fun bs!1811034 () Bool)

(assert (= bs!1811034 (and d!2135355 d!2135169)))

(assert (=> bs!1811034 (= lambda!383048 lambda!383016)))

(declare-fun bs!1811035 () Bool)

(assert (= bs!1811035 (and d!2135355 d!2135279)))

(assert (=> bs!1811035 (= lambda!383048 lambda!383036)))

(declare-fun bs!1811036 () Bool)

(assert (= bs!1811036 (and d!2135355 d!2134785)))

(assert (=> bs!1811036 (= lambda!383048 lambda!382963)))

(declare-fun bs!1811037 () Bool)

(assert (= bs!1811037 (and d!2135355 d!2135353)))

(assert (=> bs!1811037 (= lambda!383048 lambda!383047)))

(declare-fun bs!1811038 () Bool)

(assert (= bs!1811038 (and d!2135355 d!2135173)))

(assert (=> bs!1811038 (= lambda!383048 lambda!383017)))

(declare-fun bs!1811039 () Bool)

(assert (= bs!1811039 (and d!2135355 d!2135277)))

(assert (=> bs!1811039 (= lambda!383048 lambda!383035)))

(declare-fun lt!2447097 () List!66144)

(assert (=> d!2135355 (forall!15807 lt!2447097 lambda!383048)))

(declare-fun e!4101489 () List!66144)

(assert (=> d!2135355 (= lt!2447097 e!4101489)))

(declare-fun c!1263330 () Bool)

(assert (=> d!2135355 (= c!1263330 ((_ is Cons!66022) (Cons!66022 lt!2446908 Nil!66022)))))

(assert (=> d!2135355 (= (unfocusZipperList!2036 (Cons!66022 lt!2446908 Nil!66022)) lt!2447097)))

(declare-fun b!6795666 () Bool)

(assert (=> b!6795666 (= e!4101489 (Cons!66020 (generalisedConcat!2212 (exprs!6499 (h!72470 (Cons!66022 lt!2446908 Nil!66022)))) (unfocusZipperList!2036 (t!379871 (Cons!66022 lt!2446908 Nil!66022)))))))

(declare-fun b!6795667 () Bool)

(assert (=> b!6795667 (= e!4101489 Nil!66020)))

(assert (= (and d!2135355 c!1263330) b!6795666))

(assert (= (and d!2135355 (not c!1263330)) b!6795667))

(declare-fun m!7542678 () Bool)

(assert (=> d!2135355 m!7542678))

(declare-fun m!7542680 () Bool)

(assert (=> b!6795666 m!7542680))

(declare-fun m!7542682 () Bool)

(assert (=> b!6795666 m!7542682))

(assert (=> d!2134745 d!2135355))

(declare-fun d!2135357 () Bool)

(assert (=> d!2135357 (= ($colon$colon!2424 (exprs!6499 lt!2446908) (ite (or c!1262991 c!1262990) (regTwo!33742 (reg!16944 r!7292)) (reg!16944 r!7292))) (Cons!66020 (ite (or c!1262991 c!1262990) (regTwo!33742 (reg!16944 r!7292)) (reg!16944 r!7292)) (exprs!6499 lt!2446908)))))

(assert (=> bm!617039 d!2135357))

(declare-fun d!2135359 () Bool)

(declare-fun c!1263331 () Bool)

(assert (=> d!2135359 (= c!1263331 (isEmpty!38394 (tail!12726 s!2326)))))

(declare-fun e!4101490 () Bool)

(assert (=> d!2135359 (= (matchZipper!2601 (derivationStepZipper!2559 lt!2446903 (head!13641 s!2326)) (tail!12726 s!2326)) e!4101490)))

(declare-fun b!6795668 () Bool)

(assert (=> b!6795668 (= e!4101490 (nullableZipper!2322 (derivationStepZipper!2559 lt!2446903 (head!13641 s!2326))))))

(declare-fun b!6795669 () Bool)

(assert (=> b!6795669 (= e!4101490 (matchZipper!2601 (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (head!13641 s!2326)) (head!13641 (tail!12726 s!2326))) (tail!12726 (tail!12726 s!2326))))))

(assert (= (and d!2135359 c!1263331) b!6795668))

(assert (= (and d!2135359 (not c!1263331)) b!6795669))

(assert (=> d!2135359 m!7541106))

(assert (=> d!2135359 m!7541492))

(assert (=> b!6795668 m!7541104))

(declare-fun m!7542684 () Bool)

(assert (=> b!6795668 m!7542684))

(assert (=> b!6795669 m!7541106))

(assert (=> b!6795669 m!7542496))

(assert (=> b!6795669 m!7541104))

(assert (=> b!6795669 m!7542496))

(declare-fun m!7542686 () Bool)

(assert (=> b!6795669 m!7542686))

(assert (=> b!6795669 m!7541106))

(assert (=> b!6795669 m!7542500))

(assert (=> b!6795669 m!7542686))

(assert (=> b!6795669 m!7542500))

(declare-fun m!7542688 () Bool)

(assert (=> b!6795669 m!7542688))

(assert (=> b!6793948 d!2135359))

(declare-fun bs!1811040 () Bool)

(declare-fun d!2135361 () Bool)

(assert (= bs!1811040 (and d!2135361 d!2134787)))

(declare-fun lambda!383049 () Int)

(assert (=> bs!1811040 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383049 lambda!382964))))

(declare-fun bs!1811041 () Bool)

(assert (= bs!1811041 (and d!2135361 d!2135301)))

(assert (=> bs!1811041 (= lambda!383049 lambda!383038)))

(declare-fun bs!1811042 () Bool)

(assert (= bs!1811042 (and d!2135361 b!6793705)))

(assert (=> bs!1811042 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383049 lambda!382887))))

(declare-fun bs!1811043 () Bool)

(assert (= bs!1811043 (and d!2135361 d!2134673)))

(assert (=> bs!1811043 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383049 lambda!382916))))

(declare-fun bs!1811044 () Bool)

(assert (= bs!1811044 (and d!2135361 d!2134657)))

(assert (=> bs!1811044 (= (= (head!13641 s!2326) (h!72469 s!2326)) (= lambda!383049 lambda!382914))))

(assert (=> d!2135361 true))

(assert (=> d!2135361 (= (derivationStepZipper!2559 lt!2446903 (head!13641 s!2326)) (flatMap!2096 lt!2446903 lambda!383049))))

(declare-fun bs!1811045 () Bool)

(assert (= bs!1811045 d!2135361))

(declare-fun m!7542690 () Bool)

(assert (=> bs!1811045 m!7542690))

(assert (=> b!6793948 d!2135361))

(assert (=> b!6793948 d!2135249))

(assert (=> b!6793948 d!2135177))

(declare-fun b!6795670 () Bool)

(declare-fun e!4101492 () (InoxSet Context!11998))

(declare-fun e!4101493 () (InoxSet Context!11998))

(assert (=> b!6795670 (= e!4101492 e!4101493)))

(declare-fun c!1263334 () Bool)

(assert (=> b!6795670 (= c!1263334 ((_ is Union!16615) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))))))

(declare-fun b!6795671 () Bool)

(declare-fun call!617267 () (InoxSet Context!11998))

(declare-fun call!617265 () (InoxSet Context!11998))

(assert (=> b!6795671 (= e!4101493 ((_ map or) call!617267 call!617265))))

(declare-fun b!6795672 () Bool)

(declare-fun e!4101495 () (InoxSet Context!11998))

(declare-fun call!617270 () (InoxSet Context!11998))

(assert (=> b!6795672 (= e!4101495 call!617270)))

(declare-fun c!1263332 () Bool)

(declare-fun bm!617260 () Bool)

(declare-fun c!1263333 () Bool)

(declare-fun call!617268 () List!66144)

(assert (=> bm!617260 (= call!617265 (derivationStepZipperDown!1843 (ite c!1263334 (regTwo!33743 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (ite c!1263333 (regTwo!33742 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (ite c!1263332 (regOne!33742 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (reg!16944 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))))))) (ite (or c!1263334 c!1263333) (ite c!1262992 lt!2446908 (Context!11999 call!617043)) (Context!11999 call!617268)) (h!72469 s!2326)))))

(declare-fun b!6795673 () Bool)

(declare-fun e!4101494 () (InoxSet Context!11998))

(declare-fun e!4101491 () (InoxSet Context!11998))

(assert (=> b!6795673 (= e!4101494 e!4101491)))

(assert (=> b!6795673 (= c!1263332 ((_ is Concat!25460) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))))))

(declare-fun bm!617261 () Bool)

(declare-fun call!617266 () (InoxSet Context!11998))

(assert (=> bm!617261 (= call!617266 call!617265)))

(declare-fun bm!617262 () Bool)

(declare-fun call!617269 () List!66144)

(assert (=> bm!617262 (= call!617268 call!617269)))

(declare-fun bm!617263 () Bool)

(assert (=> bm!617263 (= call!617267 (derivationStepZipperDown!1843 (ite c!1263334 (regOne!33743 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (regOne!33742 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))))) (ite c!1263334 (ite c!1262992 lt!2446908 (Context!11999 call!617043)) (Context!11999 call!617269)) (h!72469 s!2326)))))

(declare-fun d!2135363 () Bool)

(declare-fun c!1263336 () Bool)

(assert (=> d!2135363 (= c!1263336 (and ((_ is ElementMatch!16615) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (= (c!1262803 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (h!72469 s!2326))))))

(assert (=> d!2135363 (= (derivationStepZipperDown!1843 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))) (ite c!1262992 lt!2446908 (Context!11999 call!617043)) (h!72469 s!2326)) e!4101492)))

(declare-fun b!6795674 () Bool)

(assert (=> b!6795674 (= e!4101495 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795675 () Bool)

(assert (=> b!6795675 (= e!4101492 (store ((as const (Array Context!11998 Bool)) false) (ite c!1262992 lt!2446908 (Context!11999 call!617043)) true))))

(declare-fun bm!617264 () Bool)

(assert (=> bm!617264 (= call!617270 call!617266)))

(declare-fun bm!617265 () Bool)

(assert (=> bm!617265 (= call!617269 ($colon$colon!2424 (exprs!6499 (ite c!1262992 lt!2446908 (Context!11999 call!617043))) (ite (or c!1263333 c!1263332) (regTwo!33742 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))))))))

(declare-fun b!6795676 () Bool)

(assert (=> b!6795676 (= e!4101494 ((_ map or) call!617267 call!617266))))

(declare-fun b!6795677 () Bool)

(assert (=> b!6795677 (= e!4101491 call!617270)))

(declare-fun b!6795678 () Bool)

(declare-fun e!4101496 () Bool)

(assert (=> b!6795678 (= c!1263333 e!4101496)))

(declare-fun res!2777242 () Bool)

(assert (=> b!6795678 (=> (not res!2777242) (not e!4101496))))

(assert (=> b!6795678 (= res!2777242 ((_ is Concat!25460) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))))))

(assert (=> b!6795678 (= e!4101493 e!4101494)))

(declare-fun b!6795679 () Bool)

(assert (=> b!6795679 (= e!4101496 (nullable!6594 (regOne!33742 (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292))))))))

(declare-fun b!6795680 () Bool)

(declare-fun c!1263335 () Bool)

(assert (=> b!6795680 (= c!1263335 ((_ is Star!16615) (ite c!1262992 (regOne!33743 (reg!16944 r!7292)) (regOne!33742 (reg!16944 r!7292)))))))

(assert (=> b!6795680 (= e!4101491 e!4101495)))

(assert (= (and d!2135363 c!1263336) b!6795675))

(assert (= (and d!2135363 (not c!1263336)) b!6795670))

(assert (= (and b!6795670 c!1263334) b!6795671))

(assert (= (and b!6795670 (not c!1263334)) b!6795678))

(assert (= (and b!6795678 res!2777242) b!6795679))

(assert (= (and b!6795678 c!1263333) b!6795676))

(assert (= (and b!6795678 (not c!1263333)) b!6795673))

(assert (= (and b!6795673 c!1263332) b!6795677))

(assert (= (and b!6795673 (not c!1263332)) b!6795680))

(assert (= (and b!6795680 c!1263335) b!6795672))

(assert (= (and b!6795680 (not c!1263335)) b!6795674))

(assert (= (or b!6795677 b!6795672) bm!617262))

(assert (= (or b!6795677 b!6795672) bm!617264))

(assert (= (or b!6795676 bm!617262) bm!617265))

(assert (= (or b!6795676 bm!617264) bm!617261))

(assert (= (or b!6795671 bm!617261) bm!617260))

(assert (= (or b!6795671 b!6795676) bm!617263))

(declare-fun m!7542692 () Bool)

(assert (=> b!6795675 m!7542692))

(declare-fun m!7542694 () Bool)

(assert (=> b!6795679 m!7542694))

(declare-fun m!7542696 () Bool)

(assert (=> bm!617263 m!7542696))

(declare-fun m!7542698 () Bool)

(assert (=> bm!617260 m!7542698))

(declare-fun m!7542700 () Bool)

(assert (=> bm!617265 m!7542700))

(assert (=> bm!617037 d!2135363))

(assert (=> b!6794331 d!2134821))

(declare-fun d!2135365 () Bool)

(declare-fun res!2777243 () Bool)

(declare-fun e!4101497 () Bool)

(assert (=> d!2135365 (=> res!2777243 e!4101497)))

(assert (=> d!2135365 (= res!2777243 ((_ is Nil!66020) (exprs!6499 (h!72470 zl!343))))))

(assert (=> d!2135365 (= (forall!15807 (exprs!6499 (h!72470 zl!343)) lambda!382973) e!4101497)))

(declare-fun b!6795681 () Bool)

(declare-fun e!4101498 () Bool)

(assert (=> b!6795681 (= e!4101497 e!4101498)))

(declare-fun res!2777244 () Bool)

(assert (=> b!6795681 (=> (not res!2777244) (not e!4101498))))

(assert (=> b!6795681 (= res!2777244 (dynLambda!26358 lambda!382973 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun b!6795682 () Bool)

(assert (=> b!6795682 (= e!4101498 (forall!15807 (t!379869 (exprs!6499 (h!72470 zl!343))) lambda!382973))))

(assert (= (and d!2135365 (not res!2777243)) b!6795681))

(assert (= (and b!6795681 res!2777244) b!6795682))

(declare-fun b_lambda!256049 () Bool)

(assert (=> (not b_lambda!256049) (not b!6795681)))

(declare-fun m!7542702 () Bool)

(assert (=> b!6795681 m!7542702))

(declare-fun m!7542704 () Bool)

(assert (=> b!6795682 m!7542704))

(assert (=> d!2134829 d!2135365))

(declare-fun b!6795683 () Bool)

(declare-fun e!4101500 () (InoxSet Context!11998))

(declare-fun e!4101501 () (InoxSet Context!11998))

(assert (=> b!6795683 (= e!4101500 e!4101501)))

(declare-fun c!1263339 () Bool)

(assert (=> b!6795683 (= c!1263339 ((_ is Union!16615) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))))))

(declare-fun b!6795684 () Bool)

(declare-fun call!617273 () (InoxSet Context!11998))

(declare-fun call!617271 () (InoxSet Context!11998))

(assert (=> b!6795684 (= e!4101501 ((_ map or) call!617273 call!617271))))

(declare-fun b!6795685 () Bool)

(declare-fun e!4101503 () (InoxSet Context!11998))

(declare-fun call!617276 () (InoxSet Context!11998))

(assert (=> b!6795685 (= e!4101503 call!617276)))

(declare-fun bm!617266 () Bool)

(declare-fun c!1263338 () Bool)

(declare-fun c!1263337 () Bool)

(declare-fun call!617274 () List!66144)

(assert (=> bm!617266 (= call!617271 (derivationStepZipperDown!1843 (ite c!1263339 (regTwo!33743 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (ite c!1263338 (regTwo!33742 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (ite c!1263337 (regOne!33742 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (reg!16944 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))))))) (ite (or c!1263339 c!1263338) (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969)) (Context!11999 call!617274)) (h!72469 s!2326)))))

(declare-fun b!6795686 () Bool)

(declare-fun e!4101502 () (InoxSet Context!11998))

(declare-fun e!4101499 () (InoxSet Context!11998))

(assert (=> b!6795686 (= e!4101502 e!4101499)))

(assert (=> b!6795686 (= c!1263337 ((_ is Concat!25460) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))))))

(declare-fun bm!617267 () Bool)

(declare-fun call!617272 () (InoxSet Context!11998))

(assert (=> bm!617267 (= call!617272 call!617271)))

(declare-fun bm!617268 () Bool)

(declare-fun call!617275 () List!66144)

(assert (=> bm!617268 (= call!617274 call!617275)))

(declare-fun bm!617269 () Bool)

(assert (=> bm!617269 (= call!617273 (derivationStepZipperDown!1843 (ite c!1263339 (regOne!33743 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (regOne!33742 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))))) (ite c!1263339 (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969)) (Context!11999 call!617275)) (h!72469 s!2326)))))

(declare-fun d!2135367 () Bool)

(declare-fun c!1263341 () Bool)

(assert (=> d!2135367 (= c!1263341 (and ((_ is ElementMatch!16615) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (= (c!1262803 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (h!72469 s!2326))))))

(assert (=> d!2135367 (= (derivationStepZipperDown!1843 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))) (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969)) (h!72469 s!2326)) e!4101500)))

(declare-fun b!6795687 () Bool)

(assert (=> b!6795687 (= e!4101503 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795688 () Bool)

(assert (=> b!6795688 (= e!4101500 (store ((as const (Array Context!11998 Bool)) false) (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969)) true))))

(declare-fun bm!617270 () Bool)

(assert (=> bm!617270 (= call!617276 call!617272)))

(declare-fun bm!617271 () Bool)

(assert (=> bm!617271 (= call!617275 ($colon$colon!2424 (exprs!6499 (ite (or c!1262831 c!1262830) (Context!11999 Nil!66020) (Context!11999 call!616969))) (ite (or c!1263338 c!1263337) (regTwo!33742 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))))))))

(declare-fun b!6795689 () Bool)

(assert (=> b!6795689 (= e!4101502 ((_ map or) call!617273 call!617272))))

(declare-fun b!6795690 () Bool)

(assert (=> b!6795690 (= e!4101499 call!617276)))

(declare-fun b!6795691 () Bool)

(declare-fun e!4101504 () Bool)

(assert (=> b!6795691 (= c!1263338 e!4101504)))

(declare-fun res!2777245 () Bool)

(assert (=> b!6795691 (=> (not res!2777245) (not e!4101504))))

(assert (=> b!6795691 (= res!2777245 ((_ is Concat!25460) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))))))

(assert (=> b!6795691 (= e!4101501 e!4101502)))

(declare-fun b!6795692 () Bool)

(assert (=> b!6795692 (= e!4101504 (nullable!6594 (regOne!33742 (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292)))))))))

(declare-fun c!1263340 () Bool)

(declare-fun b!6795693 () Bool)

(assert (=> b!6795693 (= c!1263340 ((_ is Star!16615) (ite c!1262831 (regTwo!33743 r!7292) (ite c!1262830 (regTwo!33742 r!7292) (ite c!1262829 (regOne!33742 r!7292) (reg!16944 r!7292))))))))

(assert (=> b!6795693 (= e!4101499 e!4101503)))

(assert (= (and d!2135367 c!1263341) b!6795688))

(assert (= (and d!2135367 (not c!1263341)) b!6795683))

(assert (= (and b!6795683 c!1263339) b!6795684))

(assert (= (and b!6795683 (not c!1263339)) b!6795691))

(assert (= (and b!6795691 res!2777245) b!6795692))

(assert (= (and b!6795691 c!1263338) b!6795689))

(assert (= (and b!6795691 (not c!1263338)) b!6795686))

(assert (= (and b!6795686 c!1263337) b!6795690))

(assert (= (and b!6795686 (not c!1263337)) b!6795693))

(assert (= (and b!6795693 c!1263340) b!6795685))

(assert (= (and b!6795693 (not c!1263340)) b!6795687))

(assert (= (or b!6795690 b!6795685) bm!617268))

(assert (= (or b!6795690 b!6795685) bm!617270))

(assert (= (or b!6795689 bm!617268) bm!617271))

(assert (= (or b!6795689 bm!617270) bm!617267))

(assert (= (or b!6795684 bm!617267) bm!617266))

(assert (= (or b!6795684 b!6795689) bm!617269))

(declare-fun m!7542706 () Bool)

(assert (=> b!6795688 m!7542706))

(declare-fun m!7542708 () Bool)

(assert (=> b!6795692 m!7542708))

(declare-fun m!7542710 () Bool)

(assert (=> bm!617269 m!7542710))

(declare-fun m!7542712 () Bool)

(assert (=> bm!617266 m!7542712))

(declare-fun m!7542714 () Bool)

(assert (=> bm!617271 m!7542714))

(assert (=> bm!616961 d!2135367))

(declare-fun d!2135369 () Bool)

(assert (=> d!2135369 (= (nullable!6594 r!7292) (nullableFct!2498 r!7292))))

(declare-fun bs!1811046 () Bool)

(assert (= bs!1811046 d!2135369))

(declare-fun m!7542716 () Bool)

(assert (=> bs!1811046 m!7542716))

(assert (=> b!6794497 d!2135369))

(declare-fun bs!1811047 () Bool)

(declare-fun d!2135371 () Bool)

(assert (= bs!1811047 (and d!2135371 d!2135237)))

(declare-fun lambda!383050 () Int)

(assert (=> bs!1811047 (= lambda!383050 lambda!383032)))

(declare-fun bs!1811048 () Bool)

(assert (= bs!1811048 (and d!2135371 d!2135291)))

(assert (=> bs!1811048 (= lambda!383050 lambda!383037)))

(assert (=> d!2135371 (= (nullableZipper!2322 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326))) (exists!2734 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) lambda!383050))))

(declare-fun bs!1811049 () Bool)

(assert (= bs!1811049 d!2135371))

(assert (=> bs!1811049 m!7540848))

(declare-fun m!7542718 () Bool)

(assert (=> bs!1811049 m!7542718))

(assert (=> b!6793949 d!2135371))

(assert (=> bs!1810477 d!2134795))

(declare-fun b!6795694 () Bool)

(declare-fun e!4101508 () Bool)

(declare-fun e!4101505 () Bool)

(assert (=> b!6795694 (= e!4101508 e!4101505)))

(declare-fun res!2777252 () Bool)

(assert (=> b!6795694 (=> res!2777252 e!4101505)))

(declare-fun call!617277 () Bool)

(assert (=> b!6795694 (= res!2777252 call!617277)))

(declare-fun b!6795695 () Bool)

(declare-fun e!4101510 () Bool)

(declare-fun lt!2447098 () Bool)

(assert (=> b!6795695 (= e!4101510 (= lt!2447098 call!617277))))

(declare-fun b!6795696 () Bool)

(declare-fun e!4101506 () Bool)

(assert (=> b!6795696 (= e!4101506 (nullable!6594 r!7292))))

(declare-fun b!6795697 () Bool)

(declare-fun res!2777247 () Bool)

(declare-fun e!4101509 () Bool)

(assert (=> b!6795697 (=> res!2777247 e!4101509)))

(assert (=> b!6795697 (= res!2777247 (not ((_ is ElementMatch!16615) r!7292)))))

(declare-fun e!4101507 () Bool)

(assert (=> b!6795697 (= e!4101507 e!4101509)))

(declare-fun b!6795698 () Bool)

(assert (=> b!6795698 (= e!4101510 e!4101507)))

(declare-fun c!1263342 () Bool)

(assert (=> b!6795698 (= c!1263342 ((_ is EmptyLang!16615) r!7292))))

(declare-fun bm!617272 () Bool)

(assert (=> bm!617272 (= call!617277 (isEmpty!38394 (_2!36893 (get!22992 lt!2447002))))))

(declare-fun b!6795700 () Bool)

(assert (=> b!6795700 (= e!4101507 (not lt!2447098))))

(declare-fun b!6795701 () Bool)

(declare-fun res!2777248 () Bool)

(assert (=> b!6795701 (=> res!2777248 e!4101505)))

(assert (=> b!6795701 (= res!2777248 (not (isEmpty!38394 (tail!12726 (_2!36893 (get!22992 lt!2447002))))))))

(declare-fun b!6795702 () Bool)

(assert (=> b!6795702 (= e!4101505 (not (= (head!13641 (_2!36893 (get!22992 lt!2447002))) (c!1262803 r!7292))))))

(declare-fun b!6795703 () Bool)

(declare-fun e!4101511 () Bool)

(assert (=> b!6795703 (= e!4101511 (= (head!13641 (_2!36893 (get!22992 lt!2447002))) (c!1262803 r!7292)))))

(declare-fun b!6795704 () Bool)

(declare-fun res!2777253 () Bool)

(assert (=> b!6795704 (=> res!2777253 e!4101509)))

(assert (=> b!6795704 (= res!2777253 e!4101511)))

(declare-fun res!2777246 () Bool)

(assert (=> b!6795704 (=> (not res!2777246) (not e!4101511))))

(assert (=> b!6795704 (= res!2777246 lt!2447098)))

(declare-fun b!6795705 () Bool)

(declare-fun res!2777250 () Bool)

(assert (=> b!6795705 (=> (not res!2777250) (not e!4101511))))

(assert (=> b!6795705 (= res!2777250 (not call!617277))))

(declare-fun b!6795706 () Bool)

(assert (=> b!6795706 (= e!4101509 e!4101508)))

(declare-fun res!2777249 () Bool)

(assert (=> b!6795706 (=> (not res!2777249) (not e!4101508))))

(assert (=> b!6795706 (= res!2777249 (not lt!2447098))))

(declare-fun b!6795707 () Bool)

(assert (=> b!6795707 (= e!4101506 (matchR!8798 (derivativeStep!5279 r!7292 (head!13641 (_2!36893 (get!22992 lt!2447002)))) (tail!12726 (_2!36893 (get!22992 lt!2447002)))))))

(declare-fun b!6795699 () Bool)

(declare-fun res!2777251 () Bool)

(assert (=> b!6795699 (=> (not res!2777251) (not e!4101511))))

(assert (=> b!6795699 (= res!2777251 (isEmpty!38394 (tail!12726 (_2!36893 (get!22992 lt!2447002)))))))

(declare-fun d!2135373 () Bool)

(assert (=> d!2135373 e!4101510))

(declare-fun c!1263344 () Bool)

(assert (=> d!2135373 (= c!1263344 ((_ is EmptyExpr!16615) r!7292))))

(assert (=> d!2135373 (= lt!2447098 e!4101506)))

(declare-fun c!1263343 () Bool)

(assert (=> d!2135373 (= c!1263343 (isEmpty!38394 (_2!36893 (get!22992 lt!2447002))))))

(assert (=> d!2135373 (validRegex!8351 r!7292)))

(assert (=> d!2135373 (= (matchR!8798 r!7292 (_2!36893 (get!22992 lt!2447002))) lt!2447098)))

(assert (= (and d!2135373 c!1263343) b!6795696))

(assert (= (and d!2135373 (not c!1263343)) b!6795707))

(assert (= (and d!2135373 c!1263344) b!6795695))

(assert (= (and d!2135373 (not c!1263344)) b!6795698))

(assert (= (and b!6795698 c!1263342) b!6795700))

(assert (= (and b!6795698 (not c!1263342)) b!6795697))

(assert (= (and b!6795697 (not res!2777247)) b!6795704))

(assert (= (and b!6795704 res!2777246) b!6795705))

(assert (= (and b!6795705 res!2777250) b!6795699))

(assert (= (and b!6795699 res!2777251) b!6795703))

(assert (= (and b!6795704 (not res!2777253)) b!6795706))

(assert (= (and b!6795706 res!2777249) b!6795694))

(assert (= (and b!6795694 (not res!2777252)) b!6795701))

(assert (= (and b!6795701 (not res!2777248)) b!6795702))

(assert (= (or b!6795695 b!6795694 b!6795705) bm!617272))

(declare-fun m!7542720 () Bool)

(assert (=> b!6795702 m!7542720))

(assert (=> b!6795703 m!7542720))

(declare-fun m!7542722 () Bool)

(assert (=> d!2135373 m!7542722))

(assert (=> d!2135373 m!7540836))

(declare-fun m!7542724 () Bool)

(assert (=> b!6795701 m!7542724))

(assert (=> b!6795701 m!7542724))

(declare-fun m!7542726 () Bool)

(assert (=> b!6795701 m!7542726))

(assert (=> b!6795696 m!7541514))

(assert (=> b!6795707 m!7542720))

(assert (=> b!6795707 m!7542720))

(declare-fun m!7542728 () Bool)

(assert (=> b!6795707 m!7542728))

(assert (=> b!6795707 m!7542724))

(assert (=> b!6795707 m!7542728))

(assert (=> b!6795707 m!7542724))

(declare-fun m!7542730 () Bool)

(assert (=> b!6795707 m!7542730))

(assert (=> b!6795699 m!7542724))

(assert (=> b!6795699 m!7542724))

(assert (=> b!6795699 m!7542726))

(assert (=> bm!617272 m!7542722))

(assert (=> b!6794327 d!2135373))

(assert (=> b!6794327 d!2135245))

(assert (=> bs!1810481 d!2134807))

(declare-fun d!2135375 () Bool)

(assert (=> d!2135375 true))

(declare-fun setRes!46550 () Bool)

(assert (=> d!2135375 setRes!46550))

(declare-fun condSetEmpty!46550 () Bool)

(declare-fun res!2777254 () (InoxSet Context!11998))

(assert (=> d!2135375 (= condSetEmpty!46550 (= res!2777254 ((as const (Array Context!11998 Bool)) false)))))

(assert (=> d!2135375 (= (choose!50626 lt!2446905 lambda!382887) res!2777254)))

(declare-fun setIsEmpty!46550 () Bool)

(assert (=> setIsEmpty!46550 setRes!46550))

(declare-fun tp!1860867 () Bool)

(declare-fun e!4101512 () Bool)

(declare-fun setNonEmpty!46550 () Bool)

(declare-fun setElem!46550 () Context!11998)

(assert (=> setNonEmpty!46550 (= setRes!46550 (and tp!1860867 (inv!84784 setElem!46550) e!4101512))))

(declare-fun setRest!46550 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46550 (= res!2777254 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46550 true) setRest!46550))))

(declare-fun b!6795708 () Bool)

(declare-fun tp!1860866 () Bool)

(assert (=> b!6795708 (= e!4101512 tp!1860866)))

(assert (= (and d!2135375 condSetEmpty!46550) setIsEmpty!46550))

(assert (= (and d!2135375 (not condSetEmpty!46550)) setNonEmpty!46550))

(assert (= setNonEmpty!46550 b!6795708))

(declare-fun m!7542732 () Bool)

(assert (=> setNonEmpty!46550 m!7542732))

(assert (=> d!2134793 d!2135375))

(assert (=> d!2134663 d!2134775))

(declare-fun d!2135377 () Bool)

(assert (=> d!2135377 (= (isEmpty!38397 (t!379869 (exprs!6499 (h!72470 zl!343)))) ((_ is Nil!66020) (t!379869 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> b!6794053 d!2135377))

(declare-fun bs!1811050 () Bool)

(declare-fun b!6795710 () Bool)

(assert (= bs!1811050 (and b!6795710 d!2134769)))

(declare-fun lambda!383051 () Int)

(assert (=> bs!1811050 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regOne!33743 r!7292) (Star!16615 (reg!16944 r!7292)))) (= lambda!383051 lambda!382954))))

(assert (=> bs!1811050 (not (= lambda!383051 lambda!382953))))

(declare-fun bs!1811051 () Bool)

(assert (= bs!1811051 (and b!6795710 b!6794436)))

(assert (=> bs!1811051 (not (= lambda!383051 lambda!382970))))

(declare-fun bs!1811052 () Bool)

(assert (= bs!1811052 (and b!6795710 b!6793723)))

(assert (=> bs!1811052 (not (= lambda!383051 lambda!382886))))

(declare-fun bs!1811053 () Bool)

(assert (= bs!1811053 (and b!6795710 d!2135341)))

(assert (=> bs!1811053 (not (= lambda!383051 lambda!383046))))

(declare-fun bs!1811054 () Bool)

(assert (= bs!1811054 (and b!6795710 d!2135219)))

(assert (=> bs!1811054 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regOne!33743 r!7292) (Star!16615 (reg!16944 r!7292)))) (= lambda!383051 lambda!383026))))

(declare-fun bs!1811055 () Bool)

(assert (= bs!1811055 (and b!6795710 b!6795412)))

(assert (=> bs!1811055 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 (regTwo!33743 r!7292))) (= (regOne!33743 r!7292) (regTwo!33743 r!7292))) (= lambda!383051 lambda!383033))))

(assert (=> bs!1811052 (not (= lambda!383051 lambda!382884))))

(declare-fun bs!1811056 () Bool)

(assert (= bs!1811056 (and b!6795710 b!6794485)))

(assert (=> bs!1811056 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regOne!33743 r!7292) r!7292)) (= lambda!383051 lambda!382971))))

(assert (=> bs!1811054 (not (= lambda!383051 lambda!383025))))

(declare-fun bs!1811057 () Bool)

(assert (= bs!1811057 (and b!6795710 d!2134753)))

(assert (=> bs!1811057 (not (= lambda!383051 lambda!382947))))

(declare-fun bs!1811058 () Bool)

(assert (= bs!1811058 (and b!6795710 d!2135221)))

(assert (=> bs!1811058 (not (= lambda!383051 lambda!383029))))

(declare-fun bs!1811059 () Bool)

(assert (= bs!1811059 (and b!6795710 b!6794432)))

(assert (=> bs!1811059 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 lt!2446884)) (= (regOne!33743 r!7292) lt!2446884)) (= lambda!383051 lambda!382969))))

(assert (=> bs!1811052 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regOne!33743 r!7292) r!7292)) (= lambda!383051 lambda!382885))))

(declare-fun bs!1811060 () Bool)

(assert (= bs!1811060 (and b!6795710 d!2134781)))

(assert (=> bs!1811060 (not (= lambda!383051 lambda!382957))))

(declare-fun bs!1811061 () Bool)

(assert (= bs!1811061 (and b!6795710 b!6795587)))

(assert (=> bs!1811061 (not (= lambda!383051 lambda!383040))))

(assert (=> bs!1811057 (not (= lambda!383051 lambda!382948))))

(declare-fun bs!1811062 () Bool)

(assert (= bs!1811062 (and b!6795710 b!6795583)))

(assert (=> bs!1811062 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 (regTwo!33743 lt!2446884))) (= (regOne!33743 r!7292) (regTwo!33743 lt!2446884))) (= lambda!383051 lambda!383039))))

(declare-fun bs!1811063 () Bool)

(assert (= bs!1811063 (and b!6795710 b!6795325)))

(assert (=> bs!1811063 (not (= lambda!383051 lambda!383019))))

(declare-fun bs!1811064 () Bool)

(assert (= bs!1811064 (and b!6795710 b!6795416)))

(assert (=> bs!1811064 (not (= lambda!383051 lambda!383034))))

(assert (=> bs!1811053 (not (= lambda!383051 lambda!383045))))

(declare-fun bs!1811065 () Bool)

(assert (= bs!1811065 (and b!6795710 b!6794489)))

(assert (=> bs!1811065 (not (= lambda!383051 lambda!382972))))

(declare-fun bs!1811066 () Bool)

(assert (= bs!1811066 (and b!6795710 b!6795321)))

(assert (=> bs!1811066 (= (and (= (reg!16944 (regOne!33743 r!7292)) (reg!16944 (regOne!33743 lt!2446884))) (= (regOne!33743 r!7292) (regOne!33743 lt!2446884))) (= lambda!383051 lambda!383018))))

(assert (=> b!6795710 true))

(assert (=> b!6795710 true))

(declare-fun bs!1811067 () Bool)

(declare-fun b!6795714 () Bool)

(assert (= bs!1811067 (and b!6795714 d!2134769)))

(declare-fun lambda!383052 () Int)

(assert (=> bs!1811067 (not (= lambda!383052 lambda!382954))))

(assert (=> bs!1811067 (not (= lambda!383052 lambda!382953))))

(declare-fun bs!1811068 () Bool)

(assert (= bs!1811068 (and b!6795714 b!6794436)))

(assert (=> bs!1811068 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (regOne!33742 lt!2446884)) (= (regTwo!33742 (regOne!33743 r!7292)) (regTwo!33742 lt!2446884))) (= lambda!383052 lambda!382970))))

(declare-fun bs!1811069 () Bool)

(assert (= bs!1811069 (and b!6795714 b!6793723)))

(assert (=> bs!1811069 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33742 (regOne!33743 r!7292)) r!7292)) (= lambda!383052 lambda!382886))))

(declare-fun bs!1811070 () Bool)

(assert (= bs!1811070 (and b!6795714 d!2135341)))

(assert (=> bs!1811070 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33742 (regOne!33743 r!7292)) r!7292)) (= lambda!383052 lambda!383046))))

(declare-fun bs!1811071 () Bool)

(assert (= bs!1811071 (and b!6795714 b!6795710)))

(assert (=> bs!1811071 (not (= lambda!383052 lambda!383051))))

(declare-fun bs!1811072 () Bool)

(assert (= bs!1811072 (and b!6795714 d!2135219)))

(assert (=> bs!1811072 (not (= lambda!383052 lambda!383026))))

(declare-fun bs!1811073 () Bool)

(assert (= bs!1811073 (and b!6795714 b!6795412)))

(assert (=> bs!1811073 (not (= lambda!383052 lambda!383033))))

(assert (=> bs!1811069 (not (= lambda!383052 lambda!382884))))

(declare-fun bs!1811074 () Bool)

(assert (= bs!1811074 (and b!6795714 b!6794485)))

(assert (=> bs!1811074 (not (= lambda!383052 lambda!382971))))

(assert (=> bs!1811072 (not (= lambda!383052 lambda!383025))))

(declare-fun bs!1811075 () Bool)

(assert (= bs!1811075 (and b!6795714 d!2134753)))

(assert (=> bs!1811075 (not (= lambda!383052 lambda!382947))))

(declare-fun bs!1811076 () Bool)

(assert (= bs!1811076 (and b!6795714 d!2135221)))

(assert (=> bs!1811076 (not (= lambda!383052 lambda!383029))))

(declare-fun bs!1811077 () Bool)

(assert (= bs!1811077 (and b!6795714 b!6794432)))

(assert (=> bs!1811077 (not (= lambda!383052 lambda!382969))))

(assert (=> bs!1811069 (not (= lambda!383052 lambda!382885))))

(declare-fun bs!1811078 () Bool)

(assert (= bs!1811078 (and b!6795714 d!2134781)))

(assert (=> bs!1811078 (not (= lambda!383052 lambda!382957))))

(declare-fun bs!1811079 () Bool)

(assert (= bs!1811079 (and b!6795714 b!6795587)))

(assert (=> bs!1811079 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (regOne!33742 (regTwo!33743 lt!2446884))) (= (regTwo!33742 (regOne!33743 r!7292)) (regTwo!33742 (regTwo!33743 lt!2446884)))) (= lambda!383052 lambda!383040))))

(assert (=> bs!1811075 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (reg!16944 r!7292)) (= (regTwo!33742 (regOne!33743 r!7292)) r!7292)) (= lambda!383052 lambda!382948))))

(declare-fun bs!1811080 () Bool)

(assert (= bs!1811080 (and b!6795714 b!6795583)))

(assert (=> bs!1811080 (not (= lambda!383052 lambda!383039))))

(declare-fun bs!1811081 () Bool)

(assert (= bs!1811081 (and b!6795714 b!6795325)))

(assert (=> bs!1811081 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (regOne!33742 (regOne!33743 lt!2446884))) (= (regTwo!33742 (regOne!33743 r!7292)) (regTwo!33742 (regOne!33743 lt!2446884)))) (= lambda!383052 lambda!383019))))

(declare-fun bs!1811082 () Bool)

(assert (= bs!1811082 (and b!6795714 b!6795416)))

(assert (=> bs!1811082 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (regOne!33742 (regTwo!33743 r!7292))) (= (regTwo!33742 (regOne!33743 r!7292)) (regTwo!33742 (regTwo!33743 r!7292)))) (= lambda!383052 lambda!383034))))

(assert (=> bs!1811070 (not (= lambda!383052 lambda!383045))))

(declare-fun bs!1811083 () Bool)

(assert (= bs!1811083 (and b!6795714 b!6794489)))

(assert (=> bs!1811083 (= (and (= (regOne!33742 (regOne!33743 r!7292)) (regOne!33742 r!7292)) (= (regTwo!33742 (regOne!33743 r!7292)) (regTwo!33742 r!7292))) (= lambda!383052 lambda!382972))))

(declare-fun bs!1811084 () Bool)

(assert (= bs!1811084 (and b!6795714 b!6795321)))

(assert (=> bs!1811084 (not (= lambda!383052 lambda!383018))))

(assert (=> b!6795714 true))

(assert (=> b!6795714 true))

(declare-fun b!6795709 () Bool)

(declare-fun e!4101516 () Bool)

(assert (=> b!6795709 (= e!4101516 (= s!2326 (Cons!66021 (c!1262803 (regOne!33743 r!7292)) Nil!66021)))))

(declare-fun e!4101518 () Bool)

(declare-fun call!617278 () Bool)

(assert (=> b!6795710 (= e!4101518 call!617278)))

(declare-fun b!6795711 () Bool)

(declare-fun e!4101517 () Bool)

(declare-fun e!4101519 () Bool)

(assert (=> b!6795711 (= e!4101517 e!4101519)))

(declare-fun c!1263346 () Bool)

(assert (=> b!6795711 (= c!1263346 ((_ is Star!16615) (regOne!33743 r!7292)))))

(declare-fun d!2135379 () Bool)

(declare-fun c!1263348 () Bool)

(assert (=> d!2135379 (= c!1263348 ((_ is EmptyExpr!16615) (regOne!33743 r!7292)))))

(declare-fun e!4101513 () Bool)

(assert (=> d!2135379 (= (matchRSpec!3716 (regOne!33743 r!7292) s!2326) e!4101513)))

(declare-fun b!6795712 () Bool)

(declare-fun call!617279 () Bool)

(assert (=> b!6795712 (= e!4101513 call!617279)))

(declare-fun bm!617273 () Bool)

(assert (=> bm!617273 (= call!617278 (Exists!3683 (ite c!1263346 lambda!383051 lambda!383052)))))

(declare-fun b!6795713 () Bool)

(declare-fun c!1263347 () Bool)

(assert (=> b!6795713 (= c!1263347 ((_ is Union!16615) (regOne!33743 r!7292)))))

(assert (=> b!6795713 (= e!4101516 e!4101517)))

(assert (=> b!6795714 (= e!4101519 call!617278)))

(declare-fun b!6795715 () Bool)

(declare-fun c!1263345 () Bool)

(assert (=> b!6795715 (= c!1263345 ((_ is ElementMatch!16615) (regOne!33743 r!7292)))))

(declare-fun e!4101515 () Bool)

(assert (=> b!6795715 (= e!4101515 e!4101516)))

(declare-fun b!6795716 () Bool)

(declare-fun e!4101514 () Bool)

(assert (=> b!6795716 (= e!4101517 e!4101514)))

(declare-fun res!2777256 () Bool)

(assert (=> b!6795716 (= res!2777256 (matchRSpec!3716 (regOne!33743 (regOne!33743 r!7292)) s!2326))))

(assert (=> b!6795716 (=> res!2777256 e!4101514)))

(declare-fun b!6795717 () Bool)

(declare-fun res!2777255 () Bool)

(assert (=> b!6795717 (=> res!2777255 e!4101518)))

(assert (=> b!6795717 (= res!2777255 call!617279)))

(assert (=> b!6795717 (= e!4101519 e!4101518)))

(declare-fun b!6795718 () Bool)

(assert (=> b!6795718 (= e!4101514 (matchRSpec!3716 (regTwo!33743 (regOne!33743 r!7292)) s!2326))))

(declare-fun bm!617274 () Bool)

(assert (=> bm!617274 (= call!617279 (isEmpty!38394 s!2326))))

(declare-fun b!6795719 () Bool)

(assert (=> b!6795719 (= e!4101513 e!4101515)))

(declare-fun res!2777257 () Bool)

(assert (=> b!6795719 (= res!2777257 (not ((_ is EmptyLang!16615) (regOne!33743 r!7292))))))

(assert (=> b!6795719 (=> (not res!2777257) (not e!4101515))))

(assert (= (and d!2135379 c!1263348) b!6795712))

(assert (= (and d!2135379 (not c!1263348)) b!6795719))

(assert (= (and b!6795719 res!2777257) b!6795715))

(assert (= (and b!6795715 c!1263345) b!6795709))

(assert (= (and b!6795715 (not c!1263345)) b!6795713))

(assert (= (and b!6795713 c!1263347) b!6795716))

(assert (= (and b!6795713 (not c!1263347)) b!6795711))

(assert (= (and b!6795716 (not res!2777256)) b!6795718))

(assert (= (and b!6795711 c!1263346) b!6795717))

(assert (= (and b!6795711 (not c!1263346)) b!6795714))

(assert (= (and b!6795717 (not res!2777255)) b!6795710))

(assert (= (or b!6795710 b!6795714) bm!617273))

(assert (= (or b!6795712 b!6795717) bm!617274))

(declare-fun m!7542734 () Bool)

(assert (=> bm!617273 m!7542734))

(declare-fun m!7542736 () Bool)

(assert (=> b!6795716 m!7542736))

(declare-fun m!7542738 () Bool)

(assert (=> b!6795718 m!7542738))

(assert (=> bm!617274 m!7540894))

(assert (=> b!6794491 d!2135379))

(declare-fun bs!1811085 () Bool)

(declare-fun d!2135381 () Bool)

(assert (= bs!1811085 (and d!2135381 d!2134829)))

(declare-fun lambda!383053 () Int)

(assert (=> bs!1811085 (= lambda!383053 lambda!382973)))

(declare-fun bs!1811086 () Bool)

(assert (= bs!1811086 (and d!2135381 b!6793734)))

(assert (=> bs!1811086 (= lambda!383053 lambda!382889)))

(declare-fun bs!1811087 () Bool)

(assert (= bs!1811087 (and d!2135381 d!2134677)))

(assert (=> bs!1811087 (= lambda!383053 lambda!382930)))

(declare-fun bs!1811088 () Bool)

(assert (= bs!1811088 (and d!2135381 d!2134689)))

(assert (=> bs!1811088 (= lambda!383053 lambda!382932)))

(declare-fun bs!1811089 () Bool)

(assert (= bs!1811089 (and d!2135381 d!2135355)))

(assert (=> bs!1811089 (= lambda!383053 lambda!383048)))

(declare-fun bs!1811090 () Bool)

(assert (= bs!1811090 (and d!2135381 d!2135203)))

(assert (=> bs!1811090 (= lambda!383053 lambda!383020)))

(declare-fun bs!1811091 () Bool)

(assert (= bs!1811091 (and d!2135381 d!2134783)))

(assert (=> bs!1811091 (= lambda!383053 lambda!382960)))

(declare-fun bs!1811092 () Bool)

(assert (= bs!1811092 (and d!2135381 d!2134675)))

(assert (=> bs!1811092 (= lambda!383053 lambda!382921)))

(declare-fun bs!1811093 () Bool)

(assert (= bs!1811093 (and d!2135381 d!2135169)))

(assert (=> bs!1811093 (= lambda!383053 lambda!383016)))

(declare-fun bs!1811094 () Bool)

(assert (= bs!1811094 (and d!2135381 d!2135279)))

(assert (=> bs!1811094 (= lambda!383053 lambda!383036)))

(declare-fun bs!1811095 () Bool)

(assert (= bs!1811095 (and d!2135381 d!2134785)))

(assert (=> bs!1811095 (= lambda!383053 lambda!382963)))

(declare-fun bs!1811096 () Bool)

(assert (= bs!1811096 (and d!2135381 d!2135353)))

(assert (=> bs!1811096 (= lambda!383053 lambda!383047)))

(declare-fun bs!1811097 () Bool)

(assert (= bs!1811097 (and d!2135381 d!2135173)))

(assert (=> bs!1811097 (= lambda!383053 lambda!383017)))

(declare-fun bs!1811098 () Bool)

(assert (= bs!1811098 (and d!2135381 d!2135277)))

(assert (=> bs!1811098 (= lambda!383053 lambda!383035)))

(assert (=> d!2135381 (= (inv!84784 (h!72470 (t!379871 zl!343))) (forall!15807 (exprs!6499 (h!72470 (t!379871 zl!343))) lambda!383053))))

(declare-fun bs!1811099 () Bool)

(assert (= bs!1811099 d!2135381))

(declare-fun m!7542740 () Bool)

(assert (=> bs!1811099 m!7542740))

(assert (=> b!6794536 d!2135381))

(declare-fun b!6795720 () Bool)

(declare-fun e!4101521 () (InoxSet Context!11998))

(declare-fun e!4101522 () (InoxSet Context!11998))

(assert (=> b!6795720 (= e!4101521 e!4101522)))

(declare-fun c!1263351 () Bool)

(assert (=> b!6795720 (= c!1263351 ((_ is Union!16615) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))))))

(declare-fun b!6795721 () Bool)

(declare-fun call!617282 () (InoxSet Context!11998))

(declare-fun call!617280 () (InoxSet Context!11998))

(assert (=> b!6795721 (= e!4101522 ((_ map or) call!617282 call!617280))))

(declare-fun b!6795722 () Bool)

(declare-fun e!4101524 () (InoxSet Context!11998))

(declare-fun call!617285 () (InoxSet Context!11998))

(assert (=> b!6795722 (= e!4101524 call!617285)))

(declare-fun bm!617275 () Bool)

(declare-fun c!1263350 () Bool)

(declare-fun call!617283 () List!66144)

(declare-fun c!1263349 () Bool)

(assert (=> bm!617275 (= call!617280 (derivationStepZipperDown!1843 (ite c!1263351 (regTwo!33743 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (ite c!1263350 (regTwo!33742 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (ite c!1263349 (regOne!33742 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (reg!16944 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))))))) (ite (or c!1263351 c!1263350) (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042)) (Context!11999 call!617283)) (h!72469 s!2326)))))

(declare-fun b!6795723 () Bool)

(declare-fun e!4101523 () (InoxSet Context!11998))

(declare-fun e!4101520 () (InoxSet Context!11998))

(assert (=> b!6795723 (= e!4101523 e!4101520)))

(assert (=> b!6795723 (= c!1263349 ((_ is Concat!25460) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))))))

(declare-fun bm!617276 () Bool)

(declare-fun call!617281 () (InoxSet Context!11998))

(assert (=> bm!617276 (= call!617281 call!617280)))

(declare-fun bm!617277 () Bool)

(declare-fun call!617284 () List!66144)

(assert (=> bm!617277 (= call!617283 call!617284)))

(declare-fun bm!617278 () Bool)

(assert (=> bm!617278 (= call!617282 (derivationStepZipperDown!1843 (ite c!1263351 (regOne!33743 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (regOne!33742 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))))) (ite c!1263351 (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042)) (Context!11999 call!617284)) (h!72469 s!2326)))))

(declare-fun c!1263353 () Bool)

(declare-fun d!2135383 () Bool)

(assert (=> d!2135383 (= c!1263353 (and ((_ is ElementMatch!16615) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (= (c!1262803 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (h!72469 s!2326))))))

(assert (=> d!2135383 (= (derivationStepZipperDown!1843 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))) (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042)) (h!72469 s!2326)) e!4101521)))

(declare-fun b!6795724 () Bool)

(assert (=> b!6795724 (= e!4101524 ((as const (Array Context!11998 Bool)) false))))

(declare-fun b!6795725 () Bool)

(assert (=> b!6795725 (= e!4101521 (store ((as const (Array Context!11998 Bool)) false) (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042)) true))))

(declare-fun bm!617279 () Bool)

(assert (=> bm!617279 (= call!617285 call!617281)))

(declare-fun bm!617280 () Bool)

(assert (=> bm!617280 (= call!617284 ($colon$colon!2424 (exprs!6499 (ite (or c!1262992 c!1262991) lt!2446908 (Context!11999 call!617042))) (ite (or c!1263350 c!1263349) (regTwo!33742 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))))))))

(declare-fun b!6795726 () Bool)

(assert (=> b!6795726 (= e!4101523 ((_ map or) call!617282 call!617281))))

(declare-fun b!6795727 () Bool)

(assert (=> b!6795727 (= e!4101520 call!617285)))

(declare-fun b!6795728 () Bool)

(declare-fun e!4101525 () Bool)

(assert (=> b!6795728 (= c!1263350 e!4101525)))

(declare-fun res!2777258 () Bool)

(assert (=> b!6795728 (=> (not res!2777258) (not e!4101525))))

(assert (=> b!6795728 (= res!2777258 ((_ is Concat!25460) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))))))

(assert (=> b!6795728 (= e!4101522 e!4101523)))

(declare-fun b!6795729 () Bool)

(assert (=> b!6795729 (= e!4101525 (nullable!6594 (regOne!33742 (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292))))))))))

(declare-fun c!1263352 () Bool)

(declare-fun b!6795730 () Bool)

(assert (=> b!6795730 (= c!1263352 ((_ is Star!16615) (ite c!1262992 (regTwo!33743 (reg!16944 r!7292)) (ite c!1262991 (regTwo!33742 (reg!16944 r!7292)) (ite c!1262990 (regOne!33742 (reg!16944 r!7292)) (reg!16944 (reg!16944 r!7292)))))))))

(assert (=> b!6795730 (= e!4101520 e!4101524)))

(assert (= (and d!2135383 c!1263353) b!6795725))

(assert (= (and d!2135383 (not c!1263353)) b!6795720))

(assert (= (and b!6795720 c!1263351) b!6795721))

(assert (= (and b!6795720 (not c!1263351)) b!6795728))

(assert (= (and b!6795728 res!2777258) b!6795729))

(assert (= (and b!6795728 c!1263350) b!6795726))

(assert (= (and b!6795728 (not c!1263350)) b!6795723))

(assert (= (and b!6795723 c!1263349) b!6795727))

(assert (= (and b!6795723 (not c!1263349)) b!6795730))

(assert (= (and b!6795730 c!1263352) b!6795722))

(assert (= (and b!6795730 (not c!1263352)) b!6795724))

(assert (= (or b!6795727 b!6795722) bm!617277))

(assert (= (or b!6795727 b!6795722) bm!617279))

(assert (= (or b!6795726 bm!617277) bm!617280))

(assert (= (or b!6795726 bm!617279) bm!617276))

(assert (= (or b!6795721 bm!617276) bm!617275))

(assert (= (or b!6795721 b!6795726) bm!617278))

(declare-fun m!7542742 () Bool)

(assert (=> b!6795725 m!7542742))

(declare-fun m!7542744 () Bool)

(assert (=> b!6795729 m!7542744))

(declare-fun m!7542746 () Bool)

(assert (=> bm!617278 m!7542746))

(declare-fun m!7542748 () Bool)

(assert (=> bm!617275 m!7542748))

(declare-fun m!7542750 () Bool)

(assert (=> bm!617280 m!7542750))

(assert (=> bm!617034 d!2135383))

(declare-fun b!6795731 () Bool)

(declare-fun e!4101528 () (InoxSet Context!11998))

(declare-fun call!617286 () (InoxSet Context!11998))

(assert (=> b!6795731 (= e!4101528 ((_ map or) call!617286 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))) (h!72469 s!2326))))))

(declare-fun b!6795732 () Bool)

(declare-fun e!4101527 () Bool)

(assert (=> b!6795732 (= e!4101527 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))))))

(declare-fun b!6795733 () Bool)

(declare-fun e!4101526 () (InoxSet Context!11998))

(assert (=> b!6795733 (= e!4101528 e!4101526)))

(declare-fun c!1263354 () Bool)

(assert (=> b!6795733 (= c!1263354 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))))

(declare-fun b!6795734 () Bool)

(assert (=> b!6795734 (= e!4101526 call!617286)))

(declare-fun b!6795735 () Bool)

(assert (=> b!6795735 (= e!4101526 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617281 () Bool)

(assert (=> bm!617281 (= call!617286 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020)))))))) (h!72469 s!2326)))))

(declare-fun d!2135385 () Bool)

(declare-fun c!1263355 () Bool)

(assert (=> d!2135385 (= c!1263355 e!4101527)))

(declare-fun res!2777259 () Bool)

(assert (=> d!2135385 (=> (not res!2777259) (not e!4101527))))

(assert (=> d!2135385 (= res!2777259 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))))))))

(assert (=> d!2135385 (= (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (Cons!66020 r!7292 Nil!66020))))) (h!72469 s!2326)) e!4101528)))

(assert (= (and d!2135385 res!2777259) b!6795732))

(assert (= (and d!2135385 c!1263355) b!6795731))

(assert (= (and d!2135385 (not c!1263355)) b!6795733))

(assert (= (and b!6795733 c!1263354) b!6795734))

(assert (= (and b!6795733 (not c!1263354)) b!6795735))

(assert (= (or b!6795731 b!6795734) bm!617281))

(declare-fun m!7542752 () Bool)

(assert (=> b!6795731 m!7542752))

(declare-fun m!7542754 () Bool)

(assert (=> b!6795732 m!7542754))

(declare-fun m!7542756 () Bool)

(assert (=> bm!617281 m!7542756))

(assert (=> b!6793883 d!2135385))

(assert (=> bm!617046 d!2134775))

(declare-fun call!617287 () (InoxSet Context!11998))

(declare-fun b!6795736 () Bool)

(declare-fun e!4101531 () (InoxSet Context!11998))

(assert (=> b!6795736 (= e!4101531 ((_ map or) call!617287 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908)))))) (h!72469 s!2326))))))

(declare-fun b!6795737 () Bool)

(declare-fun e!4101530 () Bool)

(assert (=> b!6795737 (= e!4101530 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908)))))))))

(declare-fun b!6795738 () Bool)

(declare-fun e!4101529 () (InoxSet Context!11998))

(assert (=> b!6795738 (= e!4101531 e!4101529)))

(declare-fun c!1263356 () Bool)

(assert (=> b!6795738 (= c!1263356 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908))))))))

(declare-fun b!6795739 () Bool)

(assert (=> b!6795739 (= e!4101529 call!617287)))

(declare-fun b!6795740 () Bool)

(assert (=> b!6795740 (= e!4101529 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617282 () Bool)

(assert (=> bm!617282 (= call!617287 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908))))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908)))))) (h!72469 s!2326)))))

(declare-fun d!2135387 () Bool)

(declare-fun c!1263357 () Bool)

(assert (=> d!2135387 (= c!1263357 e!4101530)))

(declare-fun res!2777260 () Bool)

(assert (=> d!2135387 (=> (not res!2777260) (not e!4101530))))

(assert (=> d!2135387 (= res!2777260 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446908))))))))

(assert (=> d!2135387 (= (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446908))) (h!72469 s!2326)) e!4101531)))

(assert (= (and d!2135387 res!2777260) b!6795737))

(assert (= (and d!2135387 c!1263357) b!6795736))

(assert (= (and d!2135387 (not c!1263357)) b!6795738))

(assert (= (and b!6795738 c!1263356) b!6795739))

(assert (= (and b!6795738 (not c!1263356)) b!6795740))

(assert (= (or b!6795736 b!6795739) bm!617282))

(declare-fun m!7542758 () Bool)

(assert (=> b!6795736 m!7542758))

(declare-fun m!7542760 () Bool)

(assert (=> b!6795737 m!7542760))

(declare-fun m!7542762 () Bool)

(assert (=> bm!617282 m!7542762))

(assert (=> b!6794373 d!2135387))

(declare-fun d!2135389 () Bool)

(assert (=> d!2135389 (forall!15807 (++!14775 (exprs!6499 lt!2446891) lt!2446904) lambda!382889)))

(declare-fun lt!2447099 () Unit!159921)

(assert (=> d!2135389 (= lt!2447099 (choose!50624 (exprs!6499 lt!2446891) lt!2446904 lambda!382889))))

(assert (=> d!2135389 (forall!15807 (exprs!6499 lt!2446891) lambda!382889)))

(assert (=> d!2135389 (= (lemmaConcatPreservesForall!444 (exprs!6499 lt!2446891) lt!2446904 lambda!382889) lt!2447099)))

(declare-fun bs!1811100 () Bool)

(assert (= bs!1811100 d!2135389))

(assert (=> bs!1811100 m!7541550))

(assert (=> bs!1811100 m!7541550))

(declare-fun m!7542764 () Bool)

(assert (=> bs!1811100 m!7542764))

(declare-fun m!7542766 () Bool)

(assert (=> bs!1811100 m!7542766))

(declare-fun m!7542768 () Bool)

(assert (=> bs!1811100 m!7542768))

(assert (=> bs!1810480 d!2135389))

(declare-fun b!6795744 () Bool)

(declare-fun e!4101533 () Bool)

(declare-fun lt!2447100 () List!66144)

(assert (=> b!6795744 (= e!4101533 (or (not (= lt!2446904 Nil!66020)) (= lt!2447100 (exprs!6499 lt!2446891))))))

(declare-fun b!6795743 () Bool)

(declare-fun res!2777261 () Bool)

(assert (=> b!6795743 (=> (not res!2777261) (not e!4101533))))

(assert (=> b!6795743 (= res!2777261 (= (size!40653 lt!2447100) (+ (size!40653 (exprs!6499 lt!2446891)) (size!40653 lt!2446904))))))

(declare-fun b!6795742 () Bool)

(declare-fun e!4101532 () List!66144)

(assert (=> b!6795742 (= e!4101532 (Cons!66020 (h!72468 (exprs!6499 lt!2446891)) (++!14775 (t!379869 (exprs!6499 lt!2446891)) lt!2446904)))))

(declare-fun d!2135391 () Bool)

(assert (=> d!2135391 e!4101533))

(declare-fun res!2777262 () Bool)

(assert (=> d!2135391 (=> (not res!2777262) (not e!4101533))))

(assert (=> d!2135391 (= res!2777262 (= (content!12880 lt!2447100) ((_ map or) (content!12880 (exprs!6499 lt!2446891)) (content!12880 lt!2446904))))))

(assert (=> d!2135391 (= lt!2447100 e!4101532)))

(declare-fun c!1263358 () Bool)

(assert (=> d!2135391 (= c!1263358 ((_ is Nil!66020) (exprs!6499 lt!2446891)))))

(assert (=> d!2135391 (= (++!14775 (exprs!6499 lt!2446891) lt!2446904) lt!2447100)))

(declare-fun b!6795741 () Bool)

(assert (=> b!6795741 (= e!4101532 lt!2446904)))

(assert (= (and d!2135391 c!1263358) b!6795741))

(assert (= (and d!2135391 (not c!1263358)) b!6795742))

(assert (= (and d!2135391 res!2777262) b!6795743))

(assert (= (and b!6795743 res!2777261) b!6795744))

(declare-fun m!7542770 () Bool)

(assert (=> b!6795743 m!7542770))

(declare-fun m!7542772 () Bool)

(assert (=> b!6795743 m!7542772))

(assert (=> b!6795743 m!7541234))

(declare-fun m!7542774 () Bool)

(assert (=> b!6795742 m!7542774))

(declare-fun m!7542776 () Bool)

(assert (=> d!2135391 m!7542776))

(declare-fun m!7542778 () Bool)

(assert (=> d!2135391 m!7542778))

(assert (=> d!2135391 m!7541242))

(assert (=> bs!1810480 d!2135391))

(declare-fun b!6795745 () Bool)

(declare-fun call!617288 () (InoxSet Context!11998))

(declare-fun e!4101536 () (InoxSet Context!11998))

(assert (=> b!6795745 (= e!4101536 ((_ map or) call!617288 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891)))))) (h!72469 s!2326))))))

(declare-fun b!6795746 () Bool)

(declare-fun e!4101535 () Bool)

(assert (=> b!6795746 (= e!4101535 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891)))))))))

(declare-fun b!6795747 () Bool)

(declare-fun e!4101534 () (InoxSet Context!11998))

(assert (=> b!6795747 (= e!4101536 e!4101534)))

(declare-fun c!1263359 () Bool)

(assert (=> b!6795747 (= c!1263359 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891))))))))

(declare-fun b!6795748 () Bool)

(assert (=> b!6795748 (= e!4101534 call!617288)))

(declare-fun b!6795749 () Bool)

(assert (=> b!6795749 (= e!4101534 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617283 () Bool)

(assert (=> bm!617283 (= call!617288 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891))))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891)))))) (h!72469 s!2326)))))

(declare-fun d!2135393 () Bool)

(declare-fun c!1263360 () Bool)

(assert (=> d!2135393 (= c!1263360 e!4101535)))

(declare-fun res!2777263 () Bool)

(assert (=> d!2135393 (=> (not res!2777263) (not e!4101535))))

(assert (=> d!2135393 (= res!2777263 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 lt!2446891))))))))

(assert (=> d!2135393 (= (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 lt!2446891))) (h!72469 s!2326)) e!4101536)))

(assert (= (and d!2135393 res!2777263) b!6795746))

(assert (= (and d!2135393 c!1263360) b!6795745))

(assert (= (and d!2135393 (not c!1263360)) b!6795747))

(assert (= (and b!6795747 c!1263359) b!6795748))

(assert (= (and b!6795747 (not c!1263359)) b!6795749))

(assert (= (or b!6795745 b!6795748) bm!617283))

(declare-fun m!7542780 () Bool)

(assert (=> b!6795745 m!7542780))

(declare-fun m!7542782 () Bool)

(assert (=> b!6795746 m!7542782))

(declare-fun m!7542784 () Bool)

(assert (=> bm!617283 m!7542784))

(assert (=> b!6794378 d!2135393))

(declare-fun d!2135395 () Bool)

(assert (=> d!2135395 (= (isEmptyLang!1981 lt!2447009) ((_ is EmptyLang!16615) lt!2447009))))

(assert (=> b!6794364 d!2135395))

(declare-fun d!2135397 () Bool)

(assert (=> d!2135397 (= (Exists!3683 (ite c!1263019 lambda!382971 lambda!382972)) (choose!50630 (ite c!1263019 lambda!382971 lambda!382972)))))

(declare-fun bs!1811101 () Bool)

(assert (= bs!1811101 d!2135397))

(declare-fun m!7542786 () Bool)

(assert (=> bs!1811101 m!7542786))

(assert (=> bm!617050 d!2135397))

(declare-fun d!2135399 () Bool)

(declare-fun c!1263363 () Bool)

(assert (=> d!2135399 (= c!1263363 ((_ is Nil!66020) lt!2446966))))

(declare-fun e!4101539 () (InoxSet Regex!16615))

(assert (=> d!2135399 (= (content!12880 lt!2446966) e!4101539)))

(declare-fun b!6795754 () Bool)

(assert (=> b!6795754 (= e!4101539 ((as const (Array Regex!16615 Bool)) false))))

(declare-fun b!6795755 () Bool)

(assert (=> b!6795755 (= e!4101539 ((_ map or) (store ((as const (Array Regex!16615 Bool)) false) (h!72468 lt!2446966) true) (content!12880 (t!379869 lt!2446966))))))

(assert (= (and d!2135399 c!1263363) b!6795754))

(assert (= (and d!2135399 (not c!1263363)) b!6795755))

(declare-fun m!7542788 () Bool)

(assert (=> b!6795755 m!7542788))

(declare-fun m!7542790 () Bool)

(assert (=> b!6795755 m!7542790))

(assert (=> d!2134699 d!2135399))

(declare-fun d!2135401 () Bool)

(declare-fun c!1263364 () Bool)

(assert (=> d!2135401 (= c!1263364 ((_ is Nil!66020) (Cons!66020 (reg!16944 r!7292) Nil!66020)))))

(declare-fun e!4101540 () (InoxSet Regex!16615))

(assert (=> d!2135401 (= (content!12880 (Cons!66020 (reg!16944 r!7292) Nil!66020)) e!4101540)))

(declare-fun b!6795756 () Bool)

(assert (=> b!6795756 (= e!4101540 ((as const (Array Regex!16615 Bool)) false))))

(declare-fun b!6795757 () Bool)

(assert (=> b!6795757 (= e!4101540 ((_ map or) (store ((as const (Array Regex!16615 Bool)) false) (h!72468 (Cons!66020 (reg!16944 r!7292) Nil!66020)) true) (content!12880 (t!379869 (Cons!66020 (reg!16944 r!7292) Nil!66020)))))))

(assert (= (and d!2135401 c!1263364) b!6795756))

(assert (= (and d!2135401 (not c!1263364)) b!6795757))

(declare-fun m!7542792 () Bool)

(assert (=> b!6795757 m!7542792))

(assert (=> b!6795757 m!7542314))

(assert (=> d!2134699 d!2135401))

(declare-fun d!2135403 () Bool)

(declare-fun c!1263365 () Bool)

(assert (=> d!2135403 (= c!1263365 ((_ is Nil!66020) lt!2446904))))

(declare-fun e!4101541 () (InoxSet Regex!16615))

(assert (=> d!2135403 (= (content!12880 lt!2446904) e!4101541)))

(declare-fun b!6795758 () Bool)

(assert (=> b!6795758 (= e!4101541 ((as const (Array Regex!16615 Bool)) false))))

(declare-fun b!6795759 () Bool)

(assert (=> b!6795759 (= e!4101541 ((_ map or) (store ((as const (Array Regex!16615 Bool)) false) (h!72468 lt!2446904) true) (content!12880 (t!379869 lt!2446904))))))

(assert (= (and d!2135403 c!1263365) b!6795758))

(assert (= (and d!2135403 (not c!1263365)) b!6795759))

(declare-fun m!7542794 () Bool)

(assert (=> b!6795759 m!7542794))

(declare-fun m!7542796 () Bool)

(assert (=> b!6795759 m!7542796))

(assert (=> d!2134699 d!2135403))

(declare-fun d!2135405 () Bool)

(assert (=> d!2135405 (= (isEmpty!38397 (unfocusZipperList!2036 zl!343)) ((_ is Nil!66020) (unfocusZipperList!2036 zl!343)))))

(assert (=> b!6794360 d!2135405))

(declare-fun call!617289 () (InoxSet Context!11998))

(declare-fun e!4101544 () (InoxSet Context!11998))

(declare-fun b!6795760 () Bool)

(assert (=> b!6795760 (= e!4101544 ((_ map or) call!617289 (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343))))))) (h!72469 s!2326))))))

(declare-fun b!6795761 () Bool)

(declare-fun e!4101543 () Bool)

(assert (=> b!6795761 (= e!4101543 (nullable!6594 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343))))))))))

(declare-fun b!6795762 () Bool)

(declare-fun e!4101542 () (InoxSet Context!11998))

(assert (=> b!6795762 (= e!4101544 e!4101542)))

(declare-fun c!1263366 () Bool)

(assert (=> b!6795762 (= c!1263366 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))))))))

(declare-fun b!6795763 () Bool)

(assert (=> b!6795763 (= e!4101542 call!617289)))

(declare-fun b!6795764 () Bool)

(assert (=> b!6795764 (= e!4101542 ((as const (Array Context!11998 Bool)) false))))

(declare-fun bm!617284 () Bool)

(assert (=> bm!617284 (= call!617289 (derivationStepZipperDown!1843 (h!72468 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))))) (Context!11999 (t!379869 (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343))))))) (h!72469 s!2326)))))

(declare-fun d!2135407 () Bool)

(declare-fun c!1263367 () Bool)

(assert (=> d!2135407 (= c!1263367 e!4101543)))

(declare-fun res!2777264 () Bool)

(assert (=> d!2135407 (=> (not res!2777264) (not e!4101543))))

(assert (=> d!2135407 (= res!2777264 ((_ is Cons!66020) (exprs!6499 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))))))))

(assert (=> d!2135407 (= (derivationStepZipperUp!1769 (Context!11999 (t!379869 (exprs!6499 (h!72470 zl!343)))) (h!72469 s!2326)) e!4101544)))

(assert (= (and d!2135407 res!2777264) b!6795761))

(assert (= (and d!2135407 c!1263367) b!6795760))

(assert (= (and d!2135407 (not c!1263367)) b!6795762))

(assert (= (and b!6795762 c!1263366) b!6795763))

(assert (= (and b!6795762 (not c!1263366)) b!6795764))

(assert (= (or b!6795760 b!6795763) bm!617284))

(declare-fun m!7542798 () Bool)

(assert (=> b!6795760 m!7542798))

(declare-fun m!7542800 () Bool)

(assert (=> b!6795761 m!7542800))

(declare-fun m!7542802 () Bool)

(assert (=> bm!617284 m!7542802))

(assert (=> b!6794126 d!2135407))

(assert (=> d!2134723 d!2134711))

(declare-fun d!2135409 () Bool)

(assert (=> d!2135409 (= (flatMap!2096 z!1189 lambda!382887) (dynLambda!26356 lambda!382887 (h!72470 zl!343)))))

(assert (=> d!2135409 true))

(declare-fun _$13!4252 () Unit!159921)

(assert (=> d!2135409 (= (choose!50627 z!1189 (h!72470 zl!343) lambda!382887) _$13!4252)))

(declare-fun b_lambda!256051 () Bool)

(assert (=> (not b_lambda!256051) (not d!2135409)))

(declare-fun bs!1811102 () Bool)

(assert (= bs!1811102 d!2135409))

(assert (=> bs!1811102 m!7540936))

(assert (=> bs!1811102 m!7541298))

(assert (=> d!2134723 d!2135409))

(declare-fun b!6795765 () Bool)

(declare-fun e!4101547 () Bool)

(declare-fun call!617291 () Bool)

(assert (=> b!6795765 (= e!4101547 call!617291)))

(declare-fun b!6795766 () Bool)

(declare-fun e!4101548 () Bool)

(declare-fun call!617292 () Bool)

(assert (=> b!6795766 (= e!4101548 call!617292)))

(declare-fun b!6795767 () Bool)

(declare-fun e!4101546 () Bool)

(assert (=> b!6795767 (= e!4101546 e!4101548)))

(declare-fun res!2777265 () Bool)

(assert (=> b!6795767 (=> (not res!2777265) (not e!4101548))))

(declare-fun call!617290 () Bool)

(assert (=> b!6795767 (= res!2777265 call!617290)))

(declare-fun b!6795768 () Bool)

(declare-fun res!2777267 () Bool)

(declare-fun e!4101545 () Bool)

(assert (=> b!6795768 (=> (not res!2777267) (not e!4101545))))

(assert (=> b!6795768 (= res!2777267 call!617290)))

(declare-fun e!4101550 () Bool)

(assert (=> b!6795768 (= e!4101550 e!4101545)))

(declare-fun b!6795769 () Bool)

(declare-fun e!4101549 () Bool)

(assert (=> b!6795769 (= e!4101549 e!4101550)))

(declare-fun c!1263369 () Bool)

(assert (=> b!6795769 (= c!1263369 ((_ is Union!16615) lt!2447025))))

(declare-fun b!6795770 () Bool)

(assert (=> b!6795770 (= e!4101545 call!617292)))

(declare-fun b!6795771 () Bool)

(assert (=> b!6795771 (= e!4101549 e!4101547)))

(declare-fun res!2777268 () Bool)

(assert (=> b!6795771 (= res!2777268 (not (nullable!6594 (reg!16944 lt!2447025))))))

(assert (=> b!6795771 (=> (not res!2777268) (not e!4101547))))

(declare-fun d!2135411 () Bool)

(declare-fun res!2777266 () Bool)

(declare-fun e!4101551 () Bool)

(assert (=> d!2135411 (=> res!2777266 e!4101551)))

(assert (=> d!2135411 (= res!2777266 ((_ is ElementMatch!16615) lt!2447025))))

(assert (=> d!2135411 (= (validRegex!8351 lt!2447025) e!4101551)))

(declare-fun bm!617285 () Bool)

(declare-fun c!1263368 () Bool)

(assert (=> bm!617285 (= call!617291 (validRegex!8351 (ite c!1263368 (reg!16944 lt!2447025) (ite c!1263369 (regOne!33743 lt!2447025) (regOne!33742 lt!2447025)))))))

(declare-fun b!6795772 () Bool)

(assert (=> b!6795772 (= e!4101551 e!4101549)))

(assert (=> b!6795772 (= c!1263368 ((_ is Star!16615) lt!2447025))))

(declare-fun bm!617286 () Bool)

(assert (=> bm!617286 (= call!617290 call!617291)))

(declare-fun b!6795773 () Bool)

(declare-fun res!2777269 () Bool)

(assert (=> b!6795773 (=> res!2777269 e!4101546)))

(assert (=> b!6795773 (= res!2777269 (not ((_ is Concat!25460) lt!2447025)))))

(assert (=> b!6795773 (= e!4101550 e!4101546)))

(declare-fun bm!617287 () Bool)

(assert (=> bm!617287 (= call!617292 (validRegex!8351 (ite c!1263369 (regTwo!33743 lt!2447025) (regTwo!33742 lt!2447025))))))

(assert (= (and d!2135411 (not res!2777266)) b!6795772))

(assert (= (and b!6795772 c!1263368) b!6795771))

(assert (= (and b!6795772 (not c!1263368)) b!6795769))

(assert (= (and b!6795771 res!2777268) b!6795765))

(assert (= (and b!6795769 c!1263369) b!6795768))

(assert (= (and b!6795769 (not c!1263369)) b!6795773))

(assert (= (and b!6795768 res!2777267) b!6795770))

(assert (= (and b!6795773 (not res!2777269)) b!6795767))

(assert (= (and b!6795767 res!2777265) b!6795766))

(assert (= (or b!6795770 b!6795766) bm!617287))

(assert (= (or b!6795768 b!6795767) bm!617286))

(assert (= (or b!6795765 bm!617286) bm!617285))

(declare-fun m!7542804 () Bool)

(assert (=> b!6795771 m!7542804))

(declare-fun m!7542806 () Bool)

(assert (=> bm!617285 m!7542806))

(declare-fun m!7542808 () Bool)

(assert (=> bm!617287 m!7542808))

(assert (=> d!2134825 d!2135411))

(declare-fun bs!1811103 () Bool)

(declare-fun d!2135413 () Bool)

(assert (= bs!1811103 (and d!2135413 d!2134829)))

(declare-fun lambda!383054 () Int)

(assert (=> bs!1811103 (= lambda!383054 lambda!382973)))

(declare-fun bs!1811104 () Bool)

(assert (= bs!1811104 (and d!2135413 b!6793734)))

(assert (=> bs!1811104 (= lambda!383054 lambda!382889)))

(declare-fun bs!1811105 () Bool)

(assert (= bs!1811105 (and d!2135413 d!2134677)))

(assert (=> bs!1811105 (= lambda!383054 lambda!382930)))

(declare-fun bs!1811106 () Bool)

(assert (= bs!1811106 (and d!2135413 d!2134689)))

(assert (=> bs!1811106 (= lambda!383054 lambda!382932)))

(declare-fun bs!1811107 () Bool)

(assert (= bs!1811107 (and d!2135413 d!2135355)))

(assert (=> bs!1811107 (= lambda!383054 lambda!383048)))

(declare-fun bs!1811108 () Bool)

(assert (= bs!1811108 (and d!2135413 d!2135203)))

(assert (=> bs!1811108 (= lambda!383054 lambda!383020)))

(declare-fun bs!1811109 () Bool)

(assert (= bs!1811109 (and d!2135413 d!2134783)))

(assert (=> bs!1811109 (= lambda!383054 lambda!382960)))

(declare-fun bs!1811110 () Bool)

(assert (= bs!1811110 (and d!2135413 d!2134675)))

(assert (=> bs!1811110 (= lambda!383054 lambda!382921)))

(declare-fun bs!1811111 () Bool)

(assert (= bs!1811111 (and d!2135413 d!2135169)))

(assert (=> bs!1811111 (= lambda!383054 lambda!383016)))

(declare-fun bs!1811112 () Bool)

(assert (= bs!1811112 (and d!2135413 d!2135279)))

(assert (=> bs!1811112 (= lambda!383054 lambda!383036)))

(declare-fun bs!1811113 () Bool)

(assert (= bs!1811113 (and d!2135413 d!2135381)))

(assert (=> bs!1811113 (= lambda!383054 lambda!383053)))

(declare-fun bs!1811114 () Bool)

(assert (= bs!1811114 (and d!2135413 d!2134785)))

(assert (=> bs!1811114 (= lambda!383054 lambda!382963)))

(declare-fun bs!1811115 () Bool)

(assert (= bs!1811115 (and d!2135413 d!2135353)))

(assert (=> bs!1811115 (= lambda!383054 lambda!383047)))

(declare-fun bs!1811116 () Bool)

(assert (= bs!1811116 (and d!2135413 d!2135173)))

(assert (=> bs!1811116 (= lambda!383054 lambda!383017)))

(declare-fun bs!1811117 () Bool)

(assert (= bs!1811117 (and d!2135413 d!2135277)))

(assert (=> bs!1811117 (= lambda!383054 lambda!383035)))

(declare-fun b!6795774 () Bool)

(declare-fun e!4101555 () Bool)

(declare-fun e!4101556 () Bool)

(assert (=> b!6795774 (= e!4101555 e!4101556)))

(declare-fun c!1263373 () Bool)

(assert (=> b!6795774 (= c!1263373 (isEmpty!38397 (tail!12727 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022)))))))

(declare-fun b!6795775 () Bool)

(declare-fun lt!2447101 () Regex!16615)

(assert (=> b!6795775 (= e!4101556 (= lt!2447101 (head!13642 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022)))))))

(declare-fun b!6795776 () Bool)

(declare-fun e!4101554 () Regex!16615)

(assert (=> b!6795776 (= e!4101554 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))

(declare-fun b!6795777 () Bool)

(declare-fun e!4101553 () Bool)

(assert (=> b!6795777 (= e!4101553 e!4101555)))

(declare-fun c!1263370 () Bool)

(assert (=> b!6795777 (= c!1263370 (isEmpty!38397 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))

(assert (=> d!2135413 e!4101553))

(declare-fun res!2777270 () Bool)

(assert (=> d!2135413 (=> (not res!2777270) (not e!4101553))))

(assert (=> d!2135413 (= res!2777270 (validRegex!8351 lt!2447101))))

(assert (=> d!2135413 (= lt!2447101 e!4101554)))

(declare-fun c!1263372 () Bool)

(declare-fun e!4101557 () Bool)

(assert (=> d!2135413 (= c!1263372 e!4101557)))

(declare-fun res!2777271 () Bool)

(assert (=> d!2135413 (=> (not res!2777271) (not e!4101557))))

(assert (=> d!2135413 (= res!2777271 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))

(assert (=> d!2135413 (forall!15807 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022)) lambda!383054)))

(assert (=> d!2135413 (= (generalisedUnion!2459 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))) lt!2447101)))

(declare-fun b!6795778 () Bool)

(declare-fun e!4101552 () Regex!16615)

(assert (=> b!6795778 (= e!4101552 EmptyLang!16615)))

(declare-fun b!6795779 () Bool)

(assert (=> b!6795779 (= e!4101556 (isUnion!1411 lt!2447101))))

(declare-fun b!6795780 () Bool)

(assert (=> b!6795780 (= e!4101554 e!4101552)))

(declare-fun c!1263371 () Bool)

(assert (=> b!6795780 (= c!1263371 ((_ is Cons!66020) (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))

(declare-fun b!6795781 () Bool)

(assert (=> b!6795781 (= e!4101555 (isEmptyLang!1981 lt!2447101))))

(declare-fun b!6795782 () Bool)

(assert (=> b!6795782 (= e!4101552 (Union!16615 (h!72468 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))) (generalisedUnion!2459 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022))))))))

(declare-fun b!6795783 () Bool)

(assert (=> b!6795783 (= e!4101557 (isEmpty!38397 (t!379869 (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022)))))))

(assert (= (and d!2135413 res!2777271) b!6795783))

(assert (= (and d!2135413 c!1263372) b!6795776))

(assert (= (and d!2135413 (not c!1263372)) b!6795780))

(assert (= (and b!6795780 c!1263371) b!6795782))

(assert (= (and b!6795780 (not c!1263371)) b!6795778))

(assert (= (and d!2135413 res!2777270) b!6795777))

(assert (= (and b!6795777 c!1263370) b!6795781))

(assert (= (and b!6795777 (not c!1263370)) b!6795774))

(assert (= (and b!6795774 c!1263373) b!6795775))

(assert (= (and b!6795774 (not c!1263373)) b!6795779))

(assert (=> b!6795774 m!7541524))

(declare-fun m!7542810 () Bool)

(assert (=> b!6795774 m!7542810))

(assert (=> b!6795774 m!7542810))

(declare-fun m!7542812 () Bool)

(assert (=> b!6795774 m!7542812))

(declare-fun m!7542814 () Bool)

(assert (=> b!6795779 m!7542814))

(assert (=> b!6795775 m!7541524))

(declare-fun m!7542816 () Bool)

(assert (=> b!6795775 m!7542816))

(declare-fun m!7542818 () Bool)

(assert (=> b!6795783 m!7542818))

(assert (=> b!6795777 m!7541524))

(declare-fun m!7542820 () Bool)

(assert (=> b!6795777 m!7542820))

(declare-fun m!7542822 () Bool)

(assert (=> d!2135413 m!7542822))

(assert (=> d!2135413 m!7541524))

(declare-fun m!7542824 () Bool)

(assert (=> d!2135413 m!7542824))

(declare-fun m!7542826 () Bool)

(assert (=> b!6795781 m!7542826))

(declare-fun m!7542828 () Bool)

(assert (=> b!6795782 m!7542828))

(assert (=> d!2134825 d!2135413))

(declare-fun bs!1811118 () Bool)

(declare-fun d!2135415 () Bool)

(assert (= bs!1811118 (and d!2135415 d!2134829)))

(declare-fun lambda!383055 () Int)

(assert (=> bs!1811118 (= lambda!383055 lambda!382973)))

(declare-fun bs!1811119 () Bool)

(assert (= bs!1811119 (and d!2135415 d!2134677)))

(assert (=> bs!1811119 (= lambda!383055 lambda!382930)))

(declare-fun bs!1811120 () Bool)

(assert (= bs!1811120 (and d!2135415 d!2134689)))

(assert (=> bs!1811120 (= lambda!383055 lambda!382932)))

(declare-fun bs!1811121 () Bool)

(assert (= bs!1811121 (and d!2135415 d!2135355)))

(assert (=> bs!1811121 (= lambda!383055 lambda!383048)))

(declare-fun bs!1811122 () Bool)

(assert (= bs!1811122 (and d!2135415 d!2135203)))

(assert (=> bs!1811122 (= lambda!383055 lambda!383020)))

(declare-fun bs!1811123 () Bool)

(assert (= bs!1811123 (and d!2135415 d!2134783)))

(assert (=> bs!1811123 (= lambda!383055 lambda!382960)))

(declare-fun bs!1811124 () Bool)

(assert (= bs!1811124 (and d!2135415 d!2134675)))

(assert (=> bs!1811124 (= lambda!383055 lambda!382921)))

(declare-fun bs!1811125 () Bool)

(assert (= bs!1811125 (and d!2135415 d!2135169)))

(assert (=> bs!1811125 (= lambda!383055 lambda!383016)))

(declare-fun bs!1811126 () Bool)

(assert (= bs!1811126 (and d!2135415 d!2135279)))

(assert (=> bs!1811126 (= lambda!383055 lambda!383036)))

(declare-fun bs!1811127 () Bool)

(assert (= bs!1811127 (and d!2135415 d!2135381)))

(assert (=> bs!1811127 (= lambda!383055 lambda!383053)))

(declare-fun bs!1811128 () Bool)

(assert (= bs!1811128 (and d!2135415 d!2135413)))

(assert (=> bs!1811128 (= lambda!383055 lambda!383054)))

(declare-fun bs!1811129 () Bool)

(assert (= bs!1811129 (and d!2135415 b!6793734)))

(assert (=> bs!1811129 (= lambda!383055 lambda!382889)))

(declare-fun bs!1811130 () Bool)

(assert (= bs!1811130 (and d!2135415 d!2134785)))

(assert (=> bs!1811130 (= lambda!383055 lambda!382963)))

(declare-fun bs!1811131 () Bool)

(assert (= bs!1811131 (and d!2135415 d!2135353)))

(assert (=> bs!1811131 (= lambda!383055 lambda!383047)))

(declare-fun bs!1811132 () Bool)

(assert (= bs!1811132 (and d!2135415 d!2135173)))

(assert (=> bs!1811132 (= lambda!383055 lambda!383017)))

(declare-fun bs!1811133 () Bool)

(assert (= bs!1811133 (and d!2135415 d!2135277)))

(assert (=> bs!1811133 (= lambda!383055 lambda!383035)))

(declare-fun lt!2447102 () List!66144)

(assert (=> d!2135415 (forall!15807 lt!2447102 lambda!383055)))

(declare-fun e!4101558 () List!66144)

(assert (=> d!2135415 (= lt!2447102 e!4101558)))

(declare-fun c!1263374 () Bool)

(assert (=> d!2135415 (= c!1263374 ((_ is Cons!66022) (Cons!66022 lt!2446885 Nil!66022)))))

(assert (=> d!2135415 (= (unfocusZipperList!2036 (Cons!66022 lt!2446885 Nil!66022)) lt!2447102)))

(declare-fun b!6795784 () Bool)

(assert (=> b!6795784 (= e!4101558 (Cons!66020 (generalisedConcat!2212 (exprs!6499 (h!72470 (Cons!66022 lt!2446885 Nil!66022)))) (unfocusZipperList!2036 (t!379871 (Cons!66022 lt!2446885 Nil!66022)))))))

(declare-fun b!6795785 () Bool)

(assert (=> b!6795785 (= e!4101558 Nil!66020)))

(assert (= (and d!2135415 c!1263374) b!6795784))

(assert (= (and d!2135415 (not c!1263374)) b!6795785))

(declare-fun m!7542830 () Bool)

(assert (=> d!2135415 m!7542830))

(declare-fun m!7542832 () Bool)

(assert (=> b!6795784 m!7542832))

(declare-fun m!7542834 () Bool)

(assert (=> b!6795784 m!7542834))

(assert (=> d!2134825 d!2135415))

(assert (=> d!2134799 d!2134793))

(declare-fun d!2135417 () Bool)

(assert (=> d!2135417 (= (flatMap!2096 lt!2446905 lambda!382887) (dynLambda!26356 lambda!382887 lt!2446891))))

(assert (=> d!2135417 true))

(declare-fun _$13!4253 () Unit!159921)

(assert (=> d!2135417 (= (choose!50627 lt!2446905 lt!2446891 lambda!382887) _$13!4253)))

(declare-fun b_lambda!256053 () Bool)

(assert (=> (not b_lambda!256053) (not d!2135417)))

(declare-fun bs!1811134 () Bool)

(assert (= bs!1811134 d!2135417))

(assert (=> bs!1811134 m!7540864))

(assert (=> bs!1811134 m!7541460))

(assert (=> d!2134799 d!2135417))

(declare-fun b!6795786 () Bool)

(declare-fun e!4101562 () Bool)

(declare-fun e!4101559 () Bool)

(assert (=> b!6795786 (= e!4101562 e!4101559)))

(declare-fun res!2777278 () Bool)

(assert (=> b!6795786 (=> res!2777278 e!4101559)))

(declare-fun call!617293 () Bool)

(assert (=> b!6795786 (= res!2777278 call!617293)))

(declare-fun b!6795787 () Bool)

(declare-fun e!4101564 () Bool)

(declare-fun lt!2447103 () Bool)

(assert (=> b!6795787 (= e!4101564 (= lt!2447103 call!617293))))

(declare-fun b!6795788 () Bool)

(declare-fun e!4101560 () Bool)

(assert (=> b!6795788 (= e!4101560 (nullable!6594 (reg!16944 r!7292)))))

(declare-fun b!6795789 () Bool)

(declare-fun res!2777273 () Bool)

(declare-fun e!4101563 () Bool)

(assert (=> b!6795789 (=> res!2777273 e!4101563)))

(assert (=> b!6795789 (= res!2777273 (not ((_ is ElementMatch!16615) (reg!16944 r!7292))))))

(declare-fun e!4101561 () Bool)

(assert (=> b!6795789 (= e!4101561 e!4101563)))

(declare-fun b!6795790 () Bool)

(assert (=> b!6795790 (= e!4101564 e!4101561)))

(declare-fun c!1263375 () Bool)

(assert (=> b!6795790 (= c!1263375 ((_ is EmptyLang!16615) (reg!16944 r!7292)))))

(declare-fun bm!617288 () Bool)

(assert (=> bm!617288 (= call!617293 (isEmpty!38394 (_1!36893 (get!22992 lt!2447002))))))

(declare-fun b!6795792 () Bool)

(assert (=> b!6795792 (= e!4101561 (not lt!2447103))))

(declare-fun b!6795793 () Bool)

(declare-fun res!2777274 () Bool)

(assert (=> b!6795793 (=> res!2777274 e!4101559)))

(assert (=> b!6795793 (= res!2777274 (not (isEmpty!38394 (tail!12726 (_1!36893 (get!22992 lt!2447002))))))))

(declare-fun b!6795794 () Bool)

(assert (=> b!6795794 (= e!4101559 (not (= (head!13641 (_1!36893 (get!22992 lt!2447002))) (c!1262803 (reg!16944 r!7292)))))))

(declare-fun b!6795795 () Bool)

(declare-fun e!4101565 () Bool)

(assert (=> b!6795795 (= e!4101565 (= (head!13641 (_1!36893 (get!22992 lt!2447002))) (c!1262803 (reg!16944 r!7292))))))

(declare-fun b!6795796 () Bool)

(declare-fun res!2777279 () Bool)

(assert (=> b!6795796 (=> res!2777279 e!4101563)))

(assert (=> b!6795796 (= res!2777279 e!4101565)))

(declare-fun res!2777272 () Bool)

(assert (=> b!6795796 (=> (not res!2777272) (not e!4101565))))

(assert (=> b!6795796 (= res!2777272 lt!2447103)))

(declare-fun b!6795797 () Bool)

(declare-fun res!2777276 () Bool)

(assert (=> b!6795797 (=> (not res!2777276) (not e!4101565))))

(assert (=> b!6795797 (= res!2777276 (not call!617293))))

(declare-fun b!6795798 () Bool)

(assert (=> b!6795798 (= e!4101563 e!4101562)))

(declare-fun res!2777275 () Bool)

(assert (=> b!6795798 (=> (not res!2777275) (not e!4101562))))

(assert (=> b!6795798 (= res!2777275 (not lt!2447103))))

(declare-fun b!6795799 () Bool)

(assert (=> b!6795799 (= e!4101560 (matchR!8798 (derivativeStep!5279 (reg!16944 r!7292) (head!13641 (_1!36893 (get!22992 lt!2447002)))) (tail!12726 (_1!36893 (get!22992 lt!2447002)))))))

(declare-fun b!6795791 () Bool)

(declare-fun res!2777277 () Bool)

(assert (=> b!6795791 (=> (not res!2777277) (not e!4101565))))

(assert (=> b!6795791 (= res!2777277 (isEmpty!38394 (tail!12726 (_1!36893 (get!22992 lt!2447002)))))))

(declare-fun d!2135419 () Bool)

(assert (=> d!2135419 e!4101564))

(declare-fun c!1263377 () Bool)

(assert (=> d!2135419 (= c!1263377 ((_ is EmptyExpr!16615) (reg!16944 r!7292)))))

(assert (=> d!2135419 (= lt!2447103 e!4101560)))

(declare-fun c!1263376 () Bool)

(assert (=> d!2135419 (= c!1263376 (isEmpty!38394 (_1!36893 (get!22992 lt!2447002))))))

(assert (=> d!2135419 (validRegex!8351 (reg!16944 r!7292))))

(assert (=> d!2135419 (= (matchR!8798 (reg!16944 r!7292) (_1!36893 (get!22992 lt!2447002))) lt!2447103)))

(assert (= (and d!2135419 c!1263376) b!6795788))

(assert (= (and d!2135419 (not c!1263376)) b!6795799))

(assert (= (and d!2135419 c!1263377) b!6795787))

(assert (= (and d!2135419 (not c!1263377)) b!6795790))

(assert (= (and b!6795790 c!1263375) b!6795792))

(assert (= (and b!6795790 (not c!1263375)) b!6795789))

(assert (= (and b!6795789 (not res!2777273)) b!6795796))

(assert (= (and b!6795796 res!2777272) b!6795797))

(assert (= (and b!6795797 res!2777276) b!6795791))

(assert (= (and b!6795791 res!2777277) b!6795795))

(assert (= (and b!6795796 (not res!2777279)) b!6795798))

(assert (= (and b!6795798 res!2777275) b!6795786))

(assert (= (and b!6795786 (not res!2777278)) b!6795793))

(assert (= (and b!6795793 (not res!2777274)) b!6795794))

(assert (= (or b!6795787 b!6795786 b!6795797) bm!617288))

(declare-fun m!7542836 () Bool)

(assert (=> b!6795794 m!7542836))

(assert (=> b!6795795 m!7542836))

(declare-fun m!7542838 () Bool)

(assert (=> d!2135419 m!7542838))

(assert (=> d!2135419 m!7541376))

(declare-fun m!7542840 () Bool)

(assert (=> b!6795793 m!7542840))

(assert (=> b!6795793 m!7542840))

(declare-fun m!7542842 () Bool)

(assert (=> b!6795793 m!7542842))

(assert (=> b!6795788 m!7541324))

(assert (=> b!6795799 m!7542836))

(assert (=> b!6795799 m!7542836))

(declare-fun m!7542844 () Bool)

(assert (=> b!6795799 m!7542844))

(assert (=> b!6795799 m!7542840))

(assert (=> b!6795799 m!7542844))

(assert (=> b!6795799 m!7542840))

(declare-fun m!7542846 () Bool)

(assert (=> b!6795799 m!7542846))

(assert (=> b!6795791 m!7542840))

(assert (=> b!6795791 m!7542840))

(assert (=> b!6795791 m!7542842))

(assert (=> bm!617288 m!7542838))

(assert (=> b!6794332 d!2135419))

(assert (=> b!6794332 d!2135245))

(declare-fun d!2135421 () Bool)

(assert (=> d!2135421 (= (nullable!6594 (reg!16944 r!7292)) (nullableFct!2498 (reg!16944 r!7292)))))

(declare-fun bs!1811135 () Bool)

(assert (= bs!1811135 d!2135421))

(declare-fun m!7542848 () Bool)

(assert (=> bs!1811135 m!7542848))

(assert (=> b!6794204 d!2135421))

(assert (=> b!6794371 d!2134677))

(declare-fun bs!1811136 () Bool)

(declare-fun d!2135423 () Bool)

(assert (= bs!1811136 (and d!2135423 d!2134829)))

(declare-fun lambda!383056 () Int)

(assert (=> bs!1811136 (= lambda!383056 lambda!382973)))

(declare-fun bs!1811137 () Bool)

(assert (= bs!1811137 (and d!2135423 d!2134677)))

(assert (=> bs!1811137 (= lambda!383056 lambda!382930)))

(declare-fun bs!1811138 () Bool)

(assert (= bs!1811138 (and d!2135423 d!2134689)))

(assert (=> bs!1811138 (= lambda!383056 lambda!382932)))

(declare-fun bs!1811139 () Bool)

(assert (= bs!1811139 (and d!2135423 d!2135355)))

(assert (=> bs!1811139 (= lambda!383056 lambda!383048)))

(declare-fun bs!1811140 () Bool)

(assert (= bs!1811140 (and d!2135423 d!2134783)))

(assert (=> bs!1811140 (= lambda!383056 lambda!382960)))

(declare-fun bs!1811141 () Bool)

(assert (= bs!1811141 (and d!2135423 d!2134675)))

(assert (=> bs!1811141 (= lambda!383056 lambda!382921)))

(declare-fun bs!1811142 () Bool)

(assert (= bs!1811142 (and d!2135423 d!2135169)))

(assert (=> bs!1811142 (= lambda!383056 lambda!383016)))

(declare-fun bs!1811143 () Bool)

(assert (= bs!1811143 (and d!2135423 d!2135279)))

(assert (=> bs!1811143 (= lambda!383056 lambda!383036)))

(declare-fun bs!1811144 () Bool)

(assert (= bs!1811144 (and d!2135423 d!2135381)))

(assert (=> bs!1811144 (= lambda!383056 lambda!383053)))

(declare-fun bs!1811145 () Bool)

(assert (= bs!1811145 (and d!2135423 d!2135413)))

(assert (=> bs!1811145 (= lambda!383056 lambda!383054)))

(declare-fun bs!1811146 () Bool)

(assert (= bs!1811146 (and d!2135423 b!6793734)))

(assert (=> bs!1811146 (= lambda!383056 lambda!382889)))

(declare-fun bs!1811147 () Bool)

(assert (= bs!1811147 (and d!2135423 d!2134785)))

(assert (=> bs!1811147 (= lambda!383056 lambda!382963)))

(declare-fun bs!1811148 () Bool)

(assert (= bs!1811148 (and d!2135423 d!2135353)))

(assert (=> bs!1811148 (= lambda!383056 lambda!383047)))

(declare-fun bs!1811149 () Bool)

(assert (= bs!1811149 (and d!2135423 d!2135415)))

(assert (=> bs!1811149 (= lambda!383056 lambda!383055)))

(declare-fun bs!1811150 () Bool)

(assert (= bs!1811150 (and d!2135423 d!2135203)))

(assert (=> bs!1811150 (= lambda!383056 lambda!383020)))

(declare-fun bs!1811151 () Bool)

(assert (= bs!1811151 (and d!2135423 d!2135173)))

(assert (=> bs!1811151 (= lambda!383056 lambda!383017)))

(declare-fun bs!1811152 () Bool)

(assert (= bs!1811152 (and d!2135423 d!2135277)))

(assert (=> bs!1811152 (= lambda!383056 lambda!383035)))

(declare-fun lt!2447104 () List!66144)

(assert (=> d!2135423 (forall!15807 lt!2447104 lambda!383056)))

(declare-fun e!4101566 () List!66144)

(assert (=> d!2135423 (= lt!2447104 e!4101566)))

(declare-fun c!1263378 () Bool)

(assert (=> d!2135423 (= c!1263378 ((_ is Cons!66022) (t!379871 zl!343)))))

(assert (=> d!2135423 (= (unfocusZipperList!2036 (t!379871 zl!343)) lt!2447104)))

(declare-fun b!6795800 () Bool)

(assert (=> b!6795800 (= e!4101566 (Cons!66020 (generalisedConcat!2212 (exprs!6499 (h!72470 (t!379871 zl!343)))) (unfocusZipperList!2036 (t!379871 (t!379871 zl!343)))))))

(declare-fun b!6795801 () Bool)

(assert (=> b!6795801 (= e!4101566 Nil!66020)))

(assert (= (and d!2135423 c!1263378) b!6795800))

(assert (= (and d!2135423 (not c!1263378)) b!6795801))

(declare-fun m!7542850 () Bool)

(assert (=> d!2135423 m!7542850))

(declare-fun m!7542852 () Bool)

(assert (=> b!6795800 m!7542852))

(declare-fun m!7542854 () Bool)

(assert (=> b!6795800 m!7542854))

(assert (=> b!6794371 d!2135423))

(declare-fun d!2135425 () Bool)

(declare-fun c!1263379 () Bool)

(assert (=> d!2135425 (= c!1263379 (isEmpty!38394 (tail!12726 (t!379870 s!2326))))))

(declare-fun e!4101567 () Bool)

(assert (=> d!2135425 (= (matchZipper!2601 (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (head!13641 (t!379870 s!2326))) (tail!12726 (t!379870 s!2326))) e!4101567)))

(declare-fun b!6795802 () Bool)

(assert (=> b!6795802 (= e!4101567 (nullableZipper!2322 (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (head!13641 (t!379870 s!2326)))))))

(declare-fun b!6795803 () Bool)

(assert (=> b!6795803 (= e!4101567 (matchZipper!2601 (derivationStepZipper!2559 (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (head!13641 (t!379870 s!2326))) (head!13641 (tail!12726 (t!379870 s!2326)))) (tail!12726 (tail!12726 (t!379870 s!2326)))))))

(assert (= (and d!2135425 c!1263379) b!6795802))

(assert (= (and d!2135425 (not c!1263379)) b!6795803))

(assert (=> d!2135425 m!7541118))

(declare-fun m!7542856 () Bool)

(assert (=> d!2135425 m!7542856))

(assert (=> b!6795802 m!7541116))

(declare-fun m!7542858 () Bool)

(assert (=> b!6795802 m!7542858))

(assert (=> b!6795803 m!7541118))

(declare-fun m!7542860 () Bool)

(assert (=> b!6795803 m!7542860))

(assert (=> b!6795803 m!7541116))

(assert (=> b!6795803 m!7542860))

(declare-fun m!7542862 () Bool)

(assert (=> b!6795803 m!7542862))

(assert (=> b!6795803 m!7541118))

(declare-fun m!7542864 () Bool)

(assert (=> b!6795803 m!7542864))

(assert (=> b!6795803 m!7542862))

(assert (=> b!6795803 m!7542864))

(declare-fun m!7542866 () Bool)

(assert (=> b!6795803 m!7542866))

(assert (=> b!6793950 d!2135425))

(declare-fun bs!1811153 () Bool)

(declare-fun d!2135427 () Bool)

(assert (= bs!1811153 (and d!2135427 d!2134787)))

(declare-fun lambda!383057 () Int)

(assert (=> bs!1811153 (= (= (head!13641 (t!379870 s!2326)) (h!72469 s!2326)) (= lambda!383057 lambda!382964))))

(declare-fun bs!1811154 () Bool)

(assert (= bs!1811154 (and d!2135427 d!2135301)))

(assert (=> bs!1811154 (= (= (head!13641 (t!379870 s!2326)) (head!13641 s!2326)) (= lambda!383057 lambda!383038))))

(declare-fun bs!1811155 () Bool)

(assert (= bs!1811155 (and d!2135427 b!6793705)))

(assert (=> bs!1811155 (= (= (head!13641 (t!379870 s!2326)) (h!72469 s!2326)) (= lambda!383057 lambda!382887))))

(declare-fun bs!1811156 () Bool)

(assert (= bs!1811156 (and d!2135427 d!2134673)))

(assert (=> bs!1811156 (= (= (head!13641 (t!379870 s!2326)) (h!72469 s!2326)) (= lambda!383057 lambda!382916))))

(declare-fun bs!1811157 () Bool)

(assert (= bs!1811157 (and d!2135427 d!2134657)))

(assert (=> bs!1811157 (= (= (head!13641 (t!379870 s!2326)) (h!72469 s!2326)) (= lambda!383057 lambda!382914))))

(declare-fun bs!1811158 () Bool)

(assert (= bs!1811158 (and d!2135427 d!2135361)))

(assert (=> bs!1811158 (= (= (head!13641 (t!379870 s!2326)) (head!13641 s!2326)) (= lambda!383057 lambda!383049))))

(assert (=> d!2135427 true))

(assert (=> d!2135427 (= (derivationStepZipper!2559 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) (head!13641 (t!379870 s!2326))) (flatMap!2096 (derivationStepZipper!2559 lt!2446903 (h!72469 s!2326)) lambda!383057))))

(declare-fun bs!1811159 () Bool)

(assert (= bs!1811159 d!2135427))

(assert (=> bs!1811159 m!7540848))

(declare-fun m!7542868 () Bool)

(assert (=> bs!1811159 m!7542868))

(assert (=> b!6793950 d!2135427))

(declare-fun d!2135429 () Bool)

(assert (=> d!2135429 (= (head!13641 (t!379870 s!2326)) (h!72469 (t!379870 s!2326)))))

(assert (=> b!6793950 d!2135429))

(declare-fun d!2135431 () Bool)

(assert (=> d!2135431 (= (tail!12726 (t!379870 s!2326)) (t!379870 (t!379870 s!2326)))))

(assert (=> b!6793950 d!2135431))

(declare-fun d!2135433 () Bool)

(assert (=> d!2135433 true))

(assert (=> d!2135433 true))

(declare-fun res!2777280 () Bool)

(assert (=> d!2135433 (= (choose!50630 lambda!382884) res!2777280)))

(assert (=> d!2134777 d!2135433))

(declare-fun d!2135435 () Bool)

(declare-fun res!2777281 () Bool)

(declare-fun e!4101568 () Bool)

(assert (=> d!2135435 (=> res!2777281 e!4101568)))

(assert (=> d!2135435 (= res!2777281 ((_ is Nil!66020) lt!2447012))))

(assert (=> d!2135435 (= (forall!15807 lt!2447012 lambda!382963) e!4101568)))

(declare-fun b!6795804 () Bool)

(declare-fun e!4101569 () Bool)

(assert (=> b!6795804 (= e!4101568 e!4101569)))

(declare-fun res!2777282 () Bool)

(assert (=> b!6795804 (=> (not res!2777282) (not e!4101569))))

(assert (=> b!6795804 (= res!2777282 (dynLambda!26358 lambda!382963 (h!72468 lt!2447012)))))

(declare-fun b!6795805 () Bool)

(assert (=> b!6795805 (= e!4101569 (forall!15807 (t!379869 lt!2447012) lambda!382963))))

(assert (= (and d!2135435 (not res!2777281)) b!6795804))

(assert (= (and b!6795804 res!2777282) b!6795805))

(declare-fun b_lambda!256055 () Bool)

(assert (=> (not b_lambda!256055) (not b!6795804)))

(declare-fun m!7542870 () Bool)

(assert (=> b!6795804 m!7542870))

(declare-fun m!7542872 () Bool)

(assert (=> b!6795805 m!7542872))

(assert (=> d!2134785 d!2135435))

(declare-fun b!6795806 () Bool)

(declare-fun e!4101570 () Bool)

(assert (=> b!6795806 (= e!4101570 tp_is_empty!42483)))

(declare-fun b!6795807 () Bool)

(declare-fun tp!1860871 () Bool)

(declare-fun tp!1860869 () Bool)

(assert (=> b!6795807 (= e!4101570 (and tp!1860871 tp!1860869))))

(declare-fun b!6795809 () Bool)

(declare-fun tp!1860868 () Bool)

(declare-fun tp!1860872 () Bool)

(assert (=> b!6795809 (= e!4101570 (and tp!1860868 tp!1860872))))

(assert (=> b!6794561 (= tp!1860665 e!4101570)))

(declare-fun b!6795808 () Bool)

(declare-fun tp!1860870 () Bool)

(assert (=> b!6795808 (= e!4101570 tp!1860870)))

(assert (= (and b!6794561 ((_ is ElementMatch!16615) (regOne!33742 (regOne!33742 r!7292)))) b!6795806))

(assert (= (and b!6794561 ((_ is Concat!25460) (regOne!33742 (regOne!33742 r!7292)))) b!6795807))

(assert (= (and b!6794561 ((_ is Star!16615) (regOne!33742 (regOne!33742 r!7292)))) b!6795808))

(assert (= (and b!6794561 ((_ is Union!16615) (regOne!33742 (regOne!33742 r!7292)))) b!6795809))

(declare-fun b!6795810 () Bool)

(declare-fun e!4101571 () Bool)

(assert (=> b!6795810 (= e!4101571 tp_is_empty!42483)))

(declare-fun b!6795811 () Bool)

(declare-fun tp!1860876 () Bool)

(declare-fun tp!1860874 () Bool)

(assert (=> b!6795811 (= e!4101571 (and tp!1860876 tp!1860874))))

(declare-fun b!6795813 () Bool)

(declare-fun tp!1860873 () Bool)

(declare-fun tp!1860877 () Bool)

(assert (=> b!6795813 (= e!4101571 (and tp!1860873 tp!1860877))))

(assert (=> b!6794561 (= tp!1860663 e!4101571)))

(declare-fun b!6795812 () Bool)

(declare-fun tp!1860875 () Bool)

(assert (=> b!6795812 (= e!4101571 tp!1860875)))

(assert (= (and b!6794561 ((_ is ElementMatch!16615) (regTwo!33742 (regOne!33742 r!7292)))) b!6795810))

(assert (= (and b!6794561 ((_ is Concat!25460) (regTwo!33742 (regOne!33742 r!7292)))) b!6795811))

(assert (= (and b!6794561 ((_ is Star!16615) (regTwo!33742 (regOne!33742 r!7292)))) b!6795812))

(assert (= (and b!6794561 ((_ is Union!16615) (regTwo!33742 (regOne!33742 r!7292)))) b!6795813))

(declare-fun b!6795814 () Bool)

(declare-fun e!4101572 () Bool)

(declare-fun tp!1860878 () Bool)

(declare-fun tp!1860879 () Bool)

(assert (=> b!6795814 (= e!4101572 (and tp!1860878 tp!1860879))))

(assert (=> b!6794524 (= tp!1860626 e!4101572)))

(assert (= (and b!6794524 ((_ is Cons!66020) (exprs!6499 setElem!46531))) b!6795814))

(declare-fun b!6795815 () Bool)

(declare-fun e!4101573 () Bool)

(assert (=> b!6795815 (= e!4101573 tp_is_empty!42483)))

(declare-fun b!6795816 () Bool)

(declare-fun tp!1860883 () Bool)

(declare-fun tp!1860881 () Bool)

(assert (=> b!6795816 (= e!4101573 (and tp!1860883 tp!1860881))))

(declare-fun b!6795818 () Bool)

(declare-fun tp!1860880 () Bool)

(declare-fun tp!1860884 () Bool)

(assert (=> b!6795818 (= e!4101573 (and tp!1860880 tp!1860884))))

(assert (=> b!6794553 (= tp!1860655 e!4101573)))

(declare-fun b!6795817 () Bool)

(declare-fun tp!1860882 () Bool)

(assert (=> b!6795817 (= e!4101573 tp!1860882)))

(assert (= (and b!6794553 ((_ is ElementMatch!16615) (regOne!33742 (regTwo!33743 r!7292)))) b!6795815))

(assert (= (and b!6794553 ((_ is Concat!25460) (regOne!33742 (regTwo!33743 r!7292)))) b!6795816))

(assert (= (and b!6794553 ((_ is Star!16615) (regOne!33742 (regTwo!33743 r!7292)))) b!6795817))

(assert (= (and b!6794553 ((_ is Union!16615) (regOne!33742 (regTwo!33743 r!7292)))) b!6795818))

(declare-fun b!6795819 () Bool)

(declare-fun e!4101574 () Bool)

(assert (=> b!6795819 (= e!4101574 tp_is_empty!42483)))

(declare-fun b!6795820 () Bool)

(declare-fun tp!1860888 () Bool)

(declare-fun tp!1860886 () Bool)

(assert (=> b!6795820 (= e!4101574 (and tp!1860888 tp!1860886))))

(declare-fun b!6795822 () Bool)

(declare-fun tp!1860885 () Bool)

(declare-fun tp!1860889 () Bool)

(assert (=> b!6795822 (= e!4101574 (and tp!1860885 tp!1860889))))

(assert (=> b!6794553 (= tp!1860653 e!4101574)))

(declare-fun b!6795821 () Bool)

(declare-fun tp!1860887 () Bool)

(assert (=> b!6795821 (= e!4101574 tp!1860887)))

(assert (= (and b!6794553 ((_ is ElementMatch!16615) (regTwo!33742 (regTwo!33743 r!7292)))) b!6795819))

(assert (= (and b!6794553 ((_ is Concat!25460) (regTwo!33742 (regTwo!33743 r!7292)))) b!6795820))

(assert (= (and b!6794553 ((_ is Star!16615) (regTwo!33742 (regTwo!33743 r!7292)))) b!6795821))

(assert (= (and b!6794553 ((_ is Union!16615) (regTwo!33742 (regTwo!33743 r!7292)))) b!6795822))

(declare-fun b!6795823 () Bool)

(declare-fun e!4101575 () Bool)

(assert (=> b!6795823 (= e!4101575 tp_is_empty!42483)))

(declare-fun b!6795824 () Bool)

(declare-fun tp!1860893 () Bool)

(declare-fun tp!1860891 () Bool)

(assert (=> b!6795824 (= e!4101575 (and tp!1860893 tp!1860891))))

(declare-fun b!6795826 () Bool)

(declare-fun tp!1860890 () Bool)

(declare-fun tp!1860894 () Bool)

(assert (=> b!6795826 (= e!4101575 (and tp!1860890 tp!1860894))))

(assert (=> b!6794562 (= tp!1860664 e!4101575)))

(declare-fun b!6795825 () Bool)

(declare-fun tp!1860892 () Bool)

(assert (=> b!6795825 (= e!4101575 tp!1860892)))

(assert (= (and b!6794562 ((_ is ElementMatch!16615) (reg!16944 (regOne!33742 r!7292)))) b!6795823))

(assert (= (and b!6794562 ((_ is Concat!25460) (reg!16944 (regOne!33742 r!7292)))) b!6795824))

(assert (= (and b!6794562 ((_ is Star!16615) (reg!16944 (regOne!33742 r!7292)))) b!6795825))

(assert (= (and b!6794562 ((_ is Union!16615) (reg!16944 (regOne!33742 r!7292)))) b!6795826))

(declare-fun b!6795828 () Bool)

(declare-fun e!4101577 () Bool)

(declare-fun tp!1860895 () Bool)

(assert (=> b!6795828 (= e!4101577 tp!1860895)))

(declare-fun tp!1860896 () Bool)

(declare-fun e!4101576 () Bool)

(declare-fun b!6795827 () Bool)

(assert (=> b!6795827 (= e!4101576 (and (inv!84784 (h!72470 (t!379871 (t!379871 zl!343)))) e!4101577 tp!1860896))))

(assert (=> b!6794536 (= tp!1860636 e!4101576)))

(assert (= b!6795827 b!6795828))

(assert (= (and b!6794536 ((_ is Cons!66022) (t!379871 (t!379871 zl!343)))) b!6795827))

(declare-fun m!7542874 () Bool)

(assert (=> b!6795827 m!7542874))

(declare-fun b!6795829 () Bool)

(declare-fun e!4101578 () Bool)

(declare-fun tp!1860897 () Bool)

(declare-fun tp!1860898 () Bool)

(assert (=> b!6795829 (= e!4101578 (and tp!1860897 tp!1860898))))

(assert (=> b!6794537 (= tp!1860635 e!4101578)))

(assert (= (and b!6794537 ((_ is Cons!66020) (exprs!6499 (h!72470 (t!379871 zl!343))))) b!6795829))

(declare-fun condSetEmpty!46551 () Bool)

(assert (=> setNonEmpty!46531 (= condSetEmpty!46551 (= setRest!46531 ((as const (Array Context!11998 Bool)) false)))))

(declare-fun setRes!46551 () Bool)

(assert (=> setNonEmpty!46531 (= tp!1860627 setRes!46551)))

(declare-fun setIsEmpty!46551 () Bool)

(assert (=> setIsEmpty!46551 setRes!46551))

(declare-fun setElem!46551 () Context!11998)

(declare-fun setNonEmpty!46551 () Bool)

(declare-fun e!4101579 () Bool)

(declare-fun tp!1860900 () Bool)

(assert (=> setNonEmpty!46551 (= setRes!46551 (and tp!1860900 (inv!84784 setElem!46551) e!4101579))))

(declare-fun setRest!46551 () (InoxSet Context!11998))

(assert (=> setNonEmpty!46551 (= setRest!46531 ((_ map or) (store ((as const (Array Context!11998 Bool)) false) setElem!46551 true) setRest!46551))))

(declare-fun b!6795830 () Bool)

(declare-fun tp!1860899 () Bool)

(assert (=> b!6795830 (= e!4101579 tp!1860899)))

(assert (= (and setNonEmpty!46531 condSetEmpty!46551) setIsEmpty!46551))

(assert (= (and setNonEmpty!46531 (not condSetEmpty!46551)) setNonEmpty!46551))

(assert (= setNonEmpty!46551 b!6795830))

(declare-fun m!7542876 () Bool)

(assert (=> setNonEmpty!46551 m!7542876))

(declare-fun b!6795831 () Bool)

(declare-fun e!4101580 () Bool)

(declare-fun tp!1860901 () Bool)

(assert (=> b!6795831 (= e!4101580 (and tp_is_empty!42483 tp!1860901))))

(assert (=> b!6794529 (= tp!1860630 e!4101580)))

(assert (= (and b!6794529 ((_ is Cons!66021) (t!379870 (t!379870 s!2326)))) b!6795831))

(declare-fun b!6795832 () Bool)

(declare-fun e!4101581 () Bool)

(assert (=> b!6795832 (= e!4101581 tp_is_empty!42483)))

(declare-fun b!6795833 () Bool)

(declare-fun tp!1860905 () Bool)

(declare-fun tp!1860903 () Bool)

(assert (=> b!6795833 (= e!4101581 (and tp!1860905 tp!1860903))))

(declare-fun b!6795835 () Bool)

(declare-fun tp!1860902 () Bool)

(declare-fun tp!1860906 () Bool)

(assert (=> b!6795835 (= e!4101581 (and tp!1860902 tp!1860906))))

(assert (=> b!6794549 (= tp!1860650 e!4101581)))

(declare-fun b!6795834 () Bool)

(declare-fun tp!1860904 () Bool)

(assert (=> b!6795834 (= e!4101581 tp!1860904)))

(assert (= (and b!6794549 ((_ is ElementMatch!16615) (regOne!33742 (regOne!33743 r!7292)))) b!6795832))

(assert (= (and b!6794549 ((_ is Concat!25460) (regOne!33742 (regOne!33743 r!7292)))) b!6795833))

(assert (= (and b!6794549 ((_ is Star!16615) (regOne!33742 (regOne!33743 r!7292)))) b!6795834))

(assert (= (and b!6794549 ((_ is Union!16615) (regOne!33742 (regOne!33743 r!7292)))) b!6795835))

(declare-fun b!6795836 () Bool)

(declare-fun e!4101582 () Bool)

(assert (=> b!6795836 (= e!4101582 tp_is_empty!42483)))

(declare-fun b!6795837 () Bool)

(declare-fun tp!1860910 () Bool)

(declare-fun tp!1860908 () Bool)

(assert (=> b!6795837 (= e!4101582 (and tp!1860910 tp!1860908))))

(declare-fun b!6795839 () Bool)

(declare-fun tp!1860907 () Bool)

(declare-fun tp!1860911 () Bool)

(assert (=> b!6795839 (= e!4101582 (and tp!1860907 tp!1860911))))

(assert (=> b!6794549 (= tp!1860648 e!4101582)))

(declare-fun b!6795838 () Bool)

(declare-fun tp!1860909 () Bool)

(assert (=> b!6795838 (= e!4101582 tp!1860909)))

(assert (= (and b!6794549 ((_ is ElementMatch!16615) (regTwo!33742 (regOne!33743 r!7292)))) b!6795836))

(assert (= (and b!6794549 ((_ is Concat!25460) (regTwo!33742 (regOne!33743 r!7292)))) b!6795837))

(assert (= (and b!6794549 ((_ is Star!16615) (regTwo!33742 (regOne!33743 r!7292)))) b!6795838))

(assert (= (and b!6794549 ((_ is Union!16615) (regTwo!33742 (regOne!33743 r!7292)))) b!6795839))

(declare-fun b!6795840 () Bool)

(declare-fun e!4101583 () Bool)

(assert (=> b!6795840 (= e!4101583 tp_is_empty!42483)))

(declare-fun b!6795841 () Bool)

(declare-fun tp!1860915 () Bool)

(declare-fun tp!1860913 () Bool)

(assert (=> b!6795841 (= e!4101583 (and tp!1860915 tp!1860913))))

(declare-fun b!6795843 () Bool)

(declare-fun tp!1860912 () Bool)

(declare-fun tp!1860916 () Bool)

(assert (=> b!6795843 (= e!4101583 (and tp!1860912 tp!1860916))))

(assert (=> b!6794558 (= tp!1860659 e!4101583)))

(declare-fun b!6795842 () Bool)

(declare-fun tp!1860914 () Bool)

(assert (=> b!6795842 (= e!4101583 tp!1860914)))

(assert (= (and b!6794558 ((_ is ElementMatch!16615) (reg!16944 (reg!16944 r!7292)))) b!6795840))

(assert (= (and b!6794558 ((_ is Concat!25460) (reg!16944 (reg!16944 r!7292)))) b!6795841))

(assert (= (and b!6794558 ((_ is Star!16615) (reg!16944 (reg!16944 r!7292)))) b!6795842))

(assert (= (and b!6794558 ((_ is Union!16615) (reg!16944 (reg!16944 r!7292)))) b!6795843))

(declare-fun b!6795844 () Bool)

(declare-fun e!4101584 () Bool)

(assert (=> b!6795844 (= e!4101584 tp_is_empty!42483)))

(declare-fun b!6795845 () Bool)

(declare-fun tp!1860920 () Bool)

(declare-fun tp!1860918 () Bool)

(assert (=> b!6795845 (= e!4101584 (and tp!1860920 tp!1860918))))

(declare-fun b!6795847 () Bool)

(declare-fun tp!1860917 () Bool)

(declare-fun tp!1860921 () Bool)

(assert (=> b!6795847 (= e!4101584 (and tp!1860917 tp!1860921))))

(assert (=> b!6794559 (= tp!1860657 e!4101584)))

(declare-fun b!6795846 () Bool)

(declare-fun tp!1860919 () Bool)

(assert (=> b!6795846 (= e!4101584 tp!1860919)))

(assert (= (and b!6794559 ((_ is ElementMatch!16615) (regOne!33743 (reg!16944 r!7292)))) b!6795844))

(assert (= (and b!6794559 ((_ is Concat!25460) (regOne!33743 (reg!16944 r!7292)))) b!6795845))

(assert (= (and b!6794559 ((_ is Star!16615) (regOne!33743 (reg!16944 r!7292)))) b!6795846))

(assert (= (and b!6794559 ((_ is Union!16615) (regOne!33743 (reg!16944 r!7292)))) b!6795847))

(declare-fun b!6795848 () Bool)

(declare-fun e!4101585 () Bool)

(assert (=> b!6795848 (= e!4101585 tp_is_empty!42483)))

(declare-fun b!6795849 () Bool)

(declare-fun tp!1860925 () Bool)

(declare-fun tp!1860923 () Bool)

(assert (=> b!6795849 (= e!4101585 (and tp!1860925 tp!1860923))))

(declare-fun b!6795851 () Bool)

(declare-fun tp!1860922 () Bool)

(declare-fun tp!1860926 () Bool)

(assert (=> b!6795851 (= e!4101585 (and tp!1860922 tp!1860926))))

(assert (=> b!6794559 (= tp!1860661 e!4101585)))

(declare-fun b!6795850 () Bool)

(declare-fun tp!1860924 () Bool)

(assert (=> b!6795850 (= e!4101585 tp!1860924)))

(assert (= (and b!6794559 ((_ is ElementMatch!16615) (regTwo!33743 (reg!16944 r!7292)))) b!6795848))

(assert (= (and b!6794559 ((_ is Concat!25460) (regTwo!33743 (reg!16944 r!7292)))) b!6795849))

(assert (= (and b!6794559 ((_ is Star!16615) (regTwo!33743 (reg!16944 r!7292)))) b!6795850))

(assert (= (and b!6794559 ((_ is Union!16615) (regTwo!33743 (reg!16944 r!7292)))) b!6795851))

(declare-fun b!6795852 () Bool)

(declare-fun e!4101586 () Bool)

(assert (=> b!6795852 (= e!4101586 tp_is_empty!42483)))

(declare-fun b!6795853 () Bool)

(declare-fun tp!1860930 () Bool)

(declare-fun tp!1860928 () Bool)

(assert (=> b!6795853 (= e!4101586 (and tp!1860930 tp!1860928))))

(declare-fun b!6795855 () Bool)

(declare-fun tp!1860927 () Bool)

(declare-fun tp!1860931 () Bool)

(assert (=> b!6795855 (= e!4101586 (and tp!1860927 tp!1860931))))

(assert (=> b!6794550 (= tp!1860649 e!4101586)))

(declare-fun b!6795854 () Bool)

(declare-fun tp!1860929 () Bool)

(assert (=> b!6795854 (= e!4101586 tp!1860929)))

(assert (= (and b!6794550 ((_ is ElementMatch!16615) (reg!16944 (regOne!33743 r!7292)))) b!6795852))

(assert (= (and b!6794550 ((_ is Concat!25460) (reg!16944 (regOne!33743 r!7292)))) b!6795853))

(assert (= (and b!6794550 ((_ is Star!16615) (reg!16944 (regOne!33743 r!7292)))) b!6795854))

(assert (= (and b!6794550 ((_ is Union!16615) (reg!16944 (regOne!33743 r!7292)))) b!6795855))

(declare-fun b!6795856 () Bool)

(declare-fun e!4101587 () Bool)

(assert (=> b!6795856 (= e!4101587 tp_is_empty!42483)))

(declare-fun b!6795857 () Bool)

(declare-fun tp!1860935 () Bool)

(declare-fun tp!1860933 () Bool)

(assert (=> b!6795857 (= e!4101587 (and tp!1860935 tp!1860933))))

(declare-fun b!6795859 () Bool)

(declare-fun tp!1860932 () Bool)

(declare-fun tp!1860936 () Bool)

(assert (=> b!6795859 (= e!4101587 (and tp!1860932 tp!1860936))))

(assert (=> b!6794551 (= tp!1860647 e!4101587)))

(declare-fun b!6795858 () Bool)

(declare-fun tp!1860934 () Bool)

(assert (=> b!6795858 (= e!4101587 tp!1860934)))

(assert (= (and b!6794551 ((_ is ElementMatch!16615) (regOne!33743 (regOne!33743 r!7292)))) b!6795856))

(assert (= (and b!6794551 ((_ is Concat!25460) (regOne!33743 (regOne!33743 r!7292)))) b!6795857))

(assert (= (and b!6794551 ((_ is Star!16615) (regOne!33743 (regOne!33743 r!7292)))) b!6795858))

(assert (= (and b!6794551 ((_ is Union!16615) (regOne!33743 (regOne!33743 r!7292)))) b!6795859))

(declare-fun b!6795860 () Bool)

(declare-fun e!4101588 () Bool)

(assert (=> b!6795860 (= e!4101588 tp_is_empty!42483)))

(declare-fun b!6795861 () Bool)

(declare-fun tp!1860940 () Bool)

(declare-fun tp!1860938 () Bool)

(assert (=> b!6795861 (= e!4101588 (and tp!1860940 tp!1860938))))

(declare-fun b!6795863 () Bool)

(declare-fun tp!1860937 () Bool)

(declare-fun tp!1860941 () Bool)

(assert (=> b!6795863 (= e!4101588 (and tp!1860937 tp!1860941))))

(assert (=> b!6794551 (= tp!1860651 e!4101588)))

(declare-fun b!6795862 () Bool)

(declare-fun tp!1860939 () Bool)

(assert (=> b!6795862 (= e!4101588 tp!1860939)))

(assert (= (and b!6794551 ((_ is ElementMatch!16615) (regTwo!33743 (regOne!33743 r!7292)))) b!6795860))

(assert (= (and b!6794551 ((_ is Concat!25460) (regTwo!33743 (regOne!33743 r!7292)))) b!6795861))

(assert (= (and b!6794551 ((_ is Star!16615) (regTwo!33743 (regOne!33743 r!7292)))) b!6795862))

(assert (= (and b!6794551 ((_ is Union!16615) (regTwo!33743 (regOne!33743 r!7292)))) b!6795863))

(declare-fun b!6795864 () Bool)

(declare-fun e!4101589 () Bool)

(assert (=> b!6795864 (= e!4101589 tp_is_empty!42483)))

(declare-fun b!6795865 () Bool)

(declare-fun tp!1860945 () Bool)

(declare-fun tp!1860943 () Bool)

(assert (=> b!6795865 (= e!4101589 (and tp!1860945 tp!1860943))))

(declare-fun b!6795867 () Bool)

(declare-fun tp!1860942 () Bool)

(declare-fun tp!1860946 () Bool)

(assert (=> b!6795867 (= e!4101589 (and tp!1860942 tp!1860946))))

(assert (=> b!6794565 (= tp!1860670 e!4101589)))

(declare-fun b!6795866 () Bool)

(declare-fun tp!1860944 () Bool)

(assert (=> b!6795866 (= e!4101589 tp!1860944)))

(assert (= (and b!6794565 ((_ is ElementMatch!16615) (regOne!33742 (regTwo!33742 r!7292)))) b!6795864))

(assert (= (and b!6794565 ((_ is Concat!25460) (regOne!33742 (regTwo!33742 r!7292)))) b!6795865))

(assert (= (and b!6794565 ((_ is Star!16615) (regOne!33742 (regTwo!33742 r!7292)))) b!6795866))

(assert (= (and b!6794565 ((_ is Union!16615) (regOne!33742 (regTwo!33742 r!7292)))) b!6795867))

(declare-fun b!6795868 () Bool)

(declare-fun e!4101590 () Bool)

(assert (=> b!6795868 (= e!4101590 tp_is_empty!42483)))

(declare-fun b!6795869 () Bool)

(declare-fun tp!1860950 () Bool)

(declare-fun tp!1860948 () Bool)

(assert (=> b!6795869 (= e!4101590 (and tp!1860950 tp!1860948))))

(declare-fun b!6795871 () Bool)

(declare-fun tp!1860947 () Bool)

(declare-fun tp!1860951 () Bool)

(assert (=> b!6795871 (= e!4101590 (and tp!1860947 tp!1860951))))

(assert (=> b!6794565 (= tp!1860668 e!4101590)))

(declare-fun b!6795870 () Bool)

(declare-fun tp!1860949 () Bool)

(assert (=> b!6795870 (= e!4101590 tp!1860949)))

(assert (= (and b!6794565 ((_ is ElementMatch!16615) (regTwo!33742 (regTwo!33742 r!7292)))) b!6795868))

(assert (= (and b!6794565 ((_ is Concat!25460) (regTwo!33742 (regTwo!33742 r!7292)))) b!6795869))

(assert (= (and b!6794565 ((_ is Star!16615) (regTwo!33742 (regTwo!33742 r!7292)))) b!6795870))

(assert (= (and b!6794565 ((_ is Union!16615) (regTwo!33742 (regTwo!33742 r!7292)))) b!6795871))

(declare-fun b!6795872 () Bool)

(declare-fun e!4101591 () Bool)

(assert (=> b!6795872 (= e!4101591 tp_is_empty!42483)))

(declare-fun b!6795873 () Bool)

(declare-fun tp!1860955 () Bool)

(declare-fun tp!1860953 () Bool)

(assert (=> b!6795873 (= e!4101591 (and tp!1860955 tp!1860953))))

(declare-fun b!6795875 () Bool)

(declare-fun tp!1860952 () Bool)

(declare-fun tp!1860956 () Bool)

(assert (=> b!6795875 (= e!4101591 (and tp!1860952 tp!1860956))))

(assert (=> b!6794557 (= tp!1860660 e!4101591)))

(declare-fun b!6795874 () Bool)

(declare-fun tp!1860954 () Bool)

(assert (=> b!6795874 (= e!4101591 tp!1860954)))

(assert (= (and b!6794557 ((_ is ElementMatch!16615) (regOne!33742 (reg!16944 r!7292)))) b!6795872))

(assert (= (and b!6794557 ((_ is Concat!25460) (regOne!33742 (reg!16944 r!7292)))) b!6795873))

(assert (= (and b!6794557 ((_ is Star!16615) (regOne!33742 (reg!16944 r!7292)))) b!6795874))

(assert (= (and b!6794557 ((_ is Union!16615) (regOne!33742 (reg!16944 r!7292)))) b!6795875))

(declare-fun b!6795876 () Bool)

(declare-fun e!4101592 () Bool)

(assert (=> b!6795876 (= e!4101592 tp_is_empty!42483)))

(declare-fun b!6795877 () Bool)

(declare-fun tp!1860960 () Bool)

(declare-fun tp!1860958 () Bool)

(assert (=> b!6795877 (= e!4101592 (and tp!1860960 tp!1860958))))

(declare-fun b!6795879 () Bool)

(declare-fun tp!1860957 () Bool)

(declare-fun tp!1860961 () Bool)

(assert (=> b!6795879 (= e!4101592 (and tp!1860957 tp!1860961))))

(assert (=> b!6794557 (= tp!1860658 e!4101592)))

(declare-fun b!6795878 () Bool)

(declare-fun tp!1860959 () Bool)

(assert (=> b!6795878 (= e!4101592 tp!1860959)))

(assert (= (and b!6794557 ((_ is ElementMatch!16615) (regTwo!33742 (reg!16944 r!7292)))) b!6795876))

(assert (= (and b!6794557 ((_ is Concat!25460) (regTwo!33742 (reg!16944 r!7292)))) b!6795877))

(assert (= (and b!6794557 ((_ is Star!16615) (regTwo!33742 (reg!16944 r!7292)))) b!6795878))

(assert (= (and b!6794557 ((_ is Union!16615) (regTwo!33742 (reg!16944 r!7292)))) b!6795879))

(declare-fun b!6795880 () Bool)

(declare-fun e!4101593 () Bool)

(assert (=> b!6795880 (= e!4101593 tp_is_empty!42483)))

(declare-fun b!6795881 () Bool)

(declare-fun tp!1860965 () Bool)

(declare-fun tp!1860963 () Bool)

(assert (=> b!6795881 (= e!4101593 (and tp!1860965 tp!1860963))))

(declare-fun b!6795883 () Bool)

(declare-fun tp!1860962 () Bool)

(declare-fun tp!1860966 () Bool)

(assert (=> b!6795883 (= e!4101593 (and tp!1860962 tp!1860966))))

(assert (=> b!6794566 (= tp!1860669 e!4101593)))

(declare-fun b!6795882 () Bool)

(declare-fun tp!1860964 () Bool)

(assert (=> b!6795882 (= e!4101593 tp!1860964)))

(assert (= (and b!6794566 ((_ is ElementMatch!16615) (reg!16944 (regTwo!33742 r!7292)))) b!6795880))

(assert (= (and b!6794566 ((_ is Concat!25460) (reg!16944 (regTwo!33742 r!7292)))) b!6795881))

(assert (= (and b!6794566 ((_ is Star!16615) (reg!16944 (regTwo!33742 r!7292)))) b!6795882))

(assert (= (and b!6794566 ((_ is Union!16615) (reg!16944 (regTwo!33742 r!7292)))) b!6795883))

(declare-fun b!6795884 () Bool)

(declare-fun e!4101594 () Bool)

(assert (=> b!6795884 (= e!4101594 tp_is_empty!42483)))

(declare-fun b!6795885 () Bool)

(declare-fun tp!1860970 () Bool)

(declare-fun tp!1860968 () Bool)

(assert (=> b!6795885 (= e!4101594 (and tp!1860970 tp!1860968))))

(declare-fun b!6795887 () Bool)

(declare-fun tp!1860967 () Bool)

(declare-fun tp!1860971 () Bool)

(assert (=> b!6795887 (= e!4101594 (and tp!1860967 tp!1860971))))

(assert (=> b!6794567 (= tp!1860667 e!4101594)))

(declare-fun b!6795886 () Bool)

(declare-fun tp!1860969 () Bool)

(assert (=> b!6795886 (= e!4101594 tp!1860969)))

(assert (= (and b!6794567 ((_ is ElementMatch!16615) (regOne!33743 (regTwo!33742 r!7292)))) b!6795884))

(assert (= (and b!6794567 ((_ is Concat!25460) (regOne!33743 (regTwo!33742 r!7292)))) b!6795885))

(assert (= (and b!6794567 ((_ is Star!16615) (regOne!33743 (regTwo!33742 r!7292)))) b!6795886))

(assert (= (and b!6794567 ((_ is Union!16615) (regOne!33743 (regTwo!33742 r!7292)))) b!6795887))

(declare-fun b!6795888 () Bool)

(declare-fun e!4101595 () Bool)

(assert (=> b!6795888 (= e!4101595 tp_is_empty!42483)))

(declare-fun b!6795889 () Bool)

(declare-fun tp!1860975 () Bool)

(declare-fun tp!1860973 () Bool)

(assert (=> b!6795889 (= e!4101595 (and tp!1860975 tp!1860973))))

(declare-fun b!6795891 () Bool)

(declare-fun tp!1860972 () Bool)

(declare-fun tp!1860976 () Bool)

(assert (=> b!6795891 (= e!4101595 (and tp!1860972 tp!1860976))))

(assert (=> b!6794567 (= tp!1860671 e!4101595)))

(declare-fun b!6795890 () Bool)

(declare-fun tp!1860974 () Bool)

(assert (=> b!6795890 (= e!4101595 tp!1860974)))

(assert (= (and b!6794567 ((_ is ElementMatch!16615) (regTwo!33743 (regTwo!33742 r!7292)))) b!6795888))

(assert (= (and b!6794567 ((_ is Concat!25460) (regTwo!33743 (regTwo!33742 r!7292)))) b!6795889))

(assert (= (and b!6794567 ((_ is Star!16615) (regTwo!33743 (regTwo!33742 r!7292)))) b!6795890))

(assert (= (and b!6794567 ((_ is Union!16615) (regTwo!33743 (regTwo!33742 r!7292)))) b!6795891))

(declare-fun b!6795892 () Bool)

(declare-fun e!4101596 () Bool)

(assert (=> b!6795892 (= e!4101596 tp_is_empty!42483)))

(declare-fun b!6795893 () Bool)

(declare-fun tp!1860980 () Bool)

(declare-fun tp!1860978 () Bool)

(assert (=> b!6795893 (= e!4101596 (and tp!1860980 tp!1860978))))

(declare-fun b!6795895 () Bool)

(declare-fun tp!1860977 () Bool)

(declare-fun tp!1860981 () Bool)

(assert (=> b!6795895 (= e!4101596 (and tp!1860977 tp!1860981))))

(assert (=> b!6794519 (= tp!1860620 e!4101596)))

(declare-fun b!6795894 () Bool)

(declare-fun tp!1860979 () Bool)

(assert (=> b!6795894 (= e!4101596 tp!1860979)))

(assert (= (and b!6794519 ((_ is ElementMatch!16615) (h!72468 (exprs!6499 (h!72470 zl!343))))) b!6795892))

(assert (= (and b!6794519 ((_ is Concat!25460) (h!72468 (exprs!6499 (h!72470 zl!343))))) b!6795893))

(assert (= (and b!6794519 ((_ is Star!16615) (h!72468 (exprs!6499 (h!72470 zl!343))))) b!6795894))

(assert (= (and b!6794519 ((_ is Union!16615) (h!72468 (exprs!6499 (h!72470 zl!343))))) b!6795895))

(declare-fun b!6795896 () Bool)

(declare-fun e!4101597 () Bool)

(declare-fun tp!1860982 () Bool)

(declare-fun tp!1860983 () Bool)

(assert (=> b!6795896 (= e!4101597 (and tp!1860982 tp!1860983))))

(assert (=> b!6794519 (= tp!1860621 e!4101597)))

(assert (= (and b!6794519 ((_ is Cons!66020) (t!379869 (exprs!6499 (h!72470 zl!343))))) b!6795896))

(declare-fun b!6795897 () Bool)

(declare-fun e!4101598 () Bool)

(assert (=> b!6795897 (= e!4101598 tp_is_empty!42483)))

(declare-fun b!6795898 () Bool)

(declare-fun tp!1860987 () Bool)

(declare-fun tp!1860985 () Bool)

(assert (=> b!6795898 (= e!4101598 (and tp!1860987 tp!1860985))))

(declare-fun b!6795900 () Bool)

(declare-fun tp!1860984 () Bool)

(declare-fun tp!1860988 () Bool)

(assert (=> b!6795900 (= e!4101598 (and tp!1860984 tp!1860988))))

(assert (=> b!6794563 (= tp!1860662 e!4101598)))

(declare-fun b!6795899 () Bool)

(declare-fun tp!1860986 () Bool)

(assert (=> b!6795899 (= e!4101598 tp!1860986)))

(assert (= (and b!6794563 ((_ is ElementMatch!16615) (regOne!33743 (regOne!33742 r!7292)))) b!6795897))

(assert (= (and b!6794563 ((_ is Concat!25460) (regOne!33743 (regOne!33742 r!7292)))) b!6795898))

(assert (= (and b!6794563 ((_ is Star!16615) (regOne!33743 (regOne!33742 r!7292)))) b!6795899))

(assert (= (and b!6794563 ((_ is Union!16615) (regOne!33743 (regOne!33742 r!7292)))) b!6795900))

(declare-fun b!6795901 () Bool)

(declare-fun e!4101599 () Bool)

(assert (=> b!6795901 (= e!4101599 tp_is_empty!42483)))

(declare-fun b!6795902 () Bool)

(declare-fun tp!1860992 () Bool)

(declare-fun tp!1860990 () Bool)

(assert (=> b!6795902 (= e!4101599 (and tp!1860992 tp!1860990))))

(declare-fun b!6795904 () Bool)

(declare-fun tp!1860989 () Bool)

(declare-fun tp!1860993 () Bool)

(assert (=> b!6795904 (= e!4101599 (and tp!1860989 tp!1860993))))

(assert (=> b!6794563 (= tp!1860666 e!4101599)))

(declare-fun b!6795903 () Bool)

(declare-fun tp!1860991 () Bool)

(assert (=> b!6795903 (= e!4101599 tp!1860991)))

(assert (= (and b!6794563 ((_ is ElementMatch!16615) (regTwo!33743 (regOne!33742 r!7292)))) b!6795901))

(assert (= (and b!6794563 ((_ is Concat!25460) (regTwo!33743 (regOne!33742 r!7292)))) b!6795902))

(assert (= (and b!6794563 ((_ is Star!16615) (regTwo!33743 (regOne!33742 r!7292)))) b!6795903))

(assert (= (and b!6794563 ((_ is Union!16615) (regTwo!33743 (regOne!33742 r!7292)))) b!6795904))

(declare-fun b!6795905 () Bool)

(declare-fun e!4101600 () Bool)

(assert (=> b!6795905 (= e!4101600 tp_is_empty!42483)))

(declare-fun b!6795906 () Bool)

(declare-fun tp!1860997 () Bool)

(declare-fun tp!1860995 () Bool)

(assert (=> b!6795906 (= e!4101600 (and tp!1860997 tp!1860995))))

(declare-fun b!6795908 () Bool)

(declare-fun tp!1860994 () Bool)

(declare-fun tp!1860998 () Bool)

(assert (=> b!6795908 (= e!4101600 (and tp!1860994 tp!1860998))))

(assert (=> b!6794518 (= tp!1860618 e!4101600)))

(declare-fun b!6795907 () Bool)

(declare-fun tp!1860996 () Bool)

(assert (=> b!6795907 (= e!4101600 tp!1860996)))

(assert (= (and b!6794518 ((_ is ElementMatch!16615) (h!72468 (exprs!6499 setElem!46525)))) b!6795905))

(assert (= (and b!6794518 ((_ is Concat!25460) (h!72468 (exprs!6499 setElem!46525)))) b!6795906))

(assert (= (and b!6794518 ((_ is Star!16615) (h!72468 (exprs!6499 setElem!46525)))) b!6795907))

(assert (= (and b!6794518 ((_ is Union!16615) (h!72468 (exprs!6499 setElem!46525)))) b!6795908))

(declare-fun b!6795909 () Bool)

(declare-fun e!4101601 () Bool)

(declare-fun tp!1860999 () Bool)

(declare-fun tp!1861000 () Bool)

(assert (=> b!6795909 (= e!4101601 (and tp!1860999 tp!1861000))))

(assert (=> b!6794518 (= tp!1860619 e!4101601)))

(assert (= (and b!6794518 ((_ is Cons!66020) (t!379869 (exprs!6499 setElem!46525)))) b!6795909))

(declare-fun b!6795910 () Bool)

(declare-fun e!4101602 () Bool)

(assert (=> b!6795910 (= e!4101602 tp_is_empty!42483)))

(declare-fun b!6795911 () Bool)

(declare-fun tp!1861004 () Bool)

(declare-fun tp!1861002 () Bool)

(assert (=> b!6795911 (= e!4101602 (and tp!1861004 tp!1861002))))

(declare-fun b!6795913 () Bool)

(declare-fun tp!1861001 () Bool)

(declare-fun tp!1861005 () Bool)

(assert (=> b!6795913 (= e!4101602 (and tp!1861001 tp!1861005))))

(assert (=> b!6794554 (= tp!1860654 e!4101602)))

(declare-fun b!6795912 () Bool)

(declare-fun tp!1861003 () Bool)

(assert (=> b!6795912 (= e!4101602 tp!1861003)))

(assert (= (and b!6794554 ((_ is ElementMatch!16615) (reg!16944 (regTwo!33743 r!7292)))) b!6795910))

(assert (= (and b!6794554 ((_ is Concat!25460) (reg!16944 (regTwo!33743 r!7292)))) b!6795911))

(assert (= (and b!6794554 ((_ is Star!16615) (reg!16944 (regTwo!33743 r!7292)))) b!6795912))

(assert (= (and b!6794554 ((_ is Union!16615) (reg!16944 (regTwo!33743 r!7292)))) b!6795913))

(declare-fun b!6795914 () Bool)

(declare-fun e!4101603 () Bool)

(assert (=> b!6795914 (= e!4101603 tp_is_empty!42483)))

(declare-fun b!6795915 () Bool)

(declare-fun tp!1861009 () Bool)

(declare-fun tp!1861007 () Bool)

(assert (=> b!6795915 (= e!4101603 (and tp!1861009 tp!1861007))))

(declare-fun b!6795917 () Bool)

(declare-fun tp!1861006 () Bool)

(declare-fun tp!1861010 () Bool)

(assert (=> b!6795917 (= e!4101603 (and tp!1861006 tp!1861010))))

(assert (=> b!6794555 (= tp!1860652 e!4101603)))

(declare-fun b!6795916 () Bool)

(declare-fun tp!1861008 () Bool)

(assert (=> b!6795916 (= e!4101603 tp!1861008)))

(assert (= (and b!6794555 ((_ is ElementMatch!16615) (regOne!33743 (regTwo!33743 r!7292)))) b!6795914))

(assert (= (and b!6794555 ((_ is Concat!25460) (regOne!33743 (regTwo!33743 r!7292)))) b!6795915))

(assert (= (and b!6794555 ((_ is Star!16615) (regOne!33743 (regTwo!33743 r!7292)))) b!6795916))

(assert (= (and b!6794555 ((_ is Union!16615) (regOne!33743 (regTwo!33743 r!7292)))) b!6795917))

(declare-fun b!6795918 () Bool)

(declare-fun e!4101604 () Bool)

(assert (=> b!6795918 (= e!4101604 tp_is_empty!42483)))

(declare-fun b!6795919 () Bool)

(declare-fun tp!1861014 () Bool)

(declare-fun tp!1861012 () Bool)

(assert (=> b!6795919 (= e!4101604 (and tp!1861014 tp!1861012))))

(declare-fun b!6795921 () Bool)

(declare-fun tp!1861011 () Bool)

(declare-fun tp!1861015 () Bool)

(assert (=> b!6795921 (= e!4101604 (and tp!1861011 tp!1861015))))

(assert (=> b!6794555 (= tp!1860656 e!4101604)))

(declare-fun b!6795920 () Bool)

(declare-fun tp!1861013 () Bool)

(assert (=> b!6795920 (= e!4101604 tp!1861013)))

(assert (= (and b!6794555 ((_ is ElementMatch!16615) (regTwo!33743 (regTwo!33743 r!7292)))) b!6795918))

(assert (= (and b!6794555 ((_ is Concat!25460) (regTwo!33743 (regTwo!33743 r!7292)))) b!6795919))

(assert (= (and b!6794555 ((_ is Star!16615) (regTwo!33743 (regTwo!33743 r!7292)))) b!6795920))

(assert (= (and b!6794555 ((_ is Union!16615) (regTwo!33743 (regTwo!33743 r!7292)))) b!6795921))

(declare-fun b_lambda!256057 () Bool)

(assert (= b_lambda!256031 (or b!6793734 b_lambda!256057)))

(declare-fun bs!1811160 () Bool)

(declare-fun d!2135437 () Bool)

(assert (= bs!1811160 (and d!2135437 b!6793734)))

(assert (=> bs!1811160 (= (dynLambda!26358 lambda!382889 (h!72468 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904))) (validRegex!8351 (h!72468 (++!14775 (Cons!66020 (reg!16944 r!7292) Nil!66020) lt!2446904))))))

(declare-fun m!7542878 () Bool)

(assert (=> bs!1811160 m!7542878))

(assert (=> b!6795277 d!2135437))

(declare-fun b_lambda!256059 () Bool)

(assert (= b_lambda!256037 (or d!2134675 b_lambda!256059)))

(declare-fun bs!1811161 () Bool)

(declare-fun d!2135439 () Bool)

(assert (= bs!1811161 (and d!2135439 d!2134675)))

(assert (=> bs!1811161 (= (dynLambda!26358 lambda!382921 (h!72468 (exprs!6499 setElem!46525))) (validRegex!8351 (h!72468 (exprs!6499 setElem!46525))))))

(declare-fun m!7542880 () Bool)

(assert (=> bs!1811161 m!7542880))

(assert (=> b!6795398 d!2135439))

(declare-fun b_lambda!256061 () Bool)

(assert (= b_lambda!256051 (or b!6793705 b_lambda!256061)))

(assert (=> d!2135409 d!2134839))

(declare-fun b_lambda!256063 () Bool)

(assert (= b_lambda!256055 (or d!2134785 b_lambda!256063)))

(declare-fun bs!1811162 () Bool)

(declare-fun d!2135441 () Bool)

(assert (= bs!1811162 (and d!2135441 d!2134785)))

(assert (=> bs!1811162 (= (dynLambda!26358 lambda!382963 (h!72468 lt!2447012)) (validRegex!8351 (h!72468 lt!2447012)))))

(declare-fun m!7542882 () Bool)

(assert (=> bs!1811162 m!7542882))

(assert (=> b!6795804 d!2135441))

(declare-fun b_lambda!256065 () Bool)

(assert (= b_lambda!256033 (or b!6793734 b_lambda!256065)))

(declare-fun bs!1811163 () Bool)

(declare-fun d!2135443 () Bool)

(assert (= bs!1811163 (and d!2135443 b!6793734)))

(assert (=> bs!1811163 (= (dynLambda!26358 lambda!382889 (h!72468 (Cons!66020 (reg!16944 r!7292) Nil!66020))) (validRegex!8351 (h!72468 (Cons!66020 (reg!16944 r!7292) Nil!66020))))))

(declare-fun m!7542884 () Bool)

(assert (=> bs!1811163 m!7542884))

(assert (=> b!6795279 d!2135443))

(declare-fun b_lambda!256067 () Bool)

(assert (= b_lambda!256035 (or d!2134689 b_lambda!256067)))

(declare-fun bs!1811164 () Bool)

(declare-fun d!2135445 () Bool)

(assert (= bs!1811164 (and d!2135445 d!2134689)))

(assert (=> bs!1811164 (= (dynLambda!26358 lambda!382932 (h!72468 (exprs!6499 lt!2446885))) (validRegex!8351 (h!72468 (exprs!6499 lt!2446885))))))

(declare-fun m!7542886 () Bool)

(assert (=> bs!1811164 m!7542886))

(assert (=> b!6795331 d!2135445))

(declare-fun b_lambda!256069 () Bool)

(assert (= b_lambda!256053 (or b!6793705 b_lambda!256069)))

(assert (=> d!2135417 d!2134837))

(declare-fun b_lambda!256071 () Bool)

(assert (= b_lambda!256049 (or d!2134829 b_lambda!256071)))

(declare-fun bs!1811165 () Bool)

(declare-fun d!2135447 () Bool)

(assert (= bs!1811165 (and d!2135447 d!2134829)))

(assert (=> bs!1811165 (= (dynLambda!26358 lambda!382973 (h!72468 (exprs!6499 (h!72470 zl!343)))) (validRegex!8351 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(declare-fun m!7542888 () Bool)

(assert (=> bs!1811165 m!7542888))

(assert (=> b!6795681 d!2135447))

(declare-fun b_lambda!256073 () Bool)

(assert (= b_lambda!256045 (or d!2134783 b_lambda!256073)))

(declare-fun bs!1811166 () Bool)

(declare-fun d!2135449 () Bool)

(assert (= bs!1811166 (and d!2135449 d!2134783)))

(assert (=> bs!1811166 (= (dynLambda!26358 lambda!382960 (h!72468 (unfocusZipperList!2036 zl!343))) (validRegex!8351 (h!72468 (unfocusZipperList!2036 zl!343))))))

(declare-fun m!7542890 () Bool)

(assert (=> bs!1811166 m!7542890))

(assert (=> b!6795497 d!2135449))

(declare-fun b_lambda!256075 () Bool)

(assert (= b_lambda!256047 (or d!2134677 b_lambda!256075)))

(declare-fun bs!1811167 () Bool)

(declare-fun d!2135451 () Bool)

(assert (= bs!1811167 (and d!2135451 d!2134677)))

(assert (=> bs!1811167 (= (dynLambda!26358 lambda!382930 (h!72468 (exprs!6499 (h!72470 zl!343)))) (validRegex!8351 (h!72468 (exprs!6499 (h!72470 zl!343)))))))

(assert (=> bs!1811167 m!7542888))

(assert (=> b!6795634 d!2135451))

(declare-fun b_lambda!256077 () Bool)

(assert (= b_lambda!256039 (or b!6793734 b_lambda!256077)))

(assert (=> d!2135229 d!2134841))

(declare-fun b_lambda!256079 () Bool)

(assert (= b_lambda!256043 (or b!6793705 b_lambda!256079)))

(assert (=> d!2135273 d!2134843))

(declare-fun b_lambda!256081 () Bool)

(assert (= b_lambda!256041 (or b!6793705 b_lambda!256081)))

(assert (=> d!2135267 d!2134835))

(check-sat (not b!6795260) (not b!6795853) (not b!6795899) (not bm!617218) (not b!6795271) (not b!6795327) (not b!6795342) (not b!6795558) (not d!2135427) (not b!6795299) (not b!6795401) (not b!6795793) (not d!2135243) (not b!6795755) (not d!2135373) (not b!6795903) (not b!6795879) (not d!2135239) (not bm!617176) (not bm!617250) (not bs!1811164) (not b!6795858) (not bm!617200) (not b!6795729) (not b!6795354) (not b!6795811) (not b!6795916) (not b!6795682) (not b!6795898) (not b!6795893) (not bm!617273) (not bm!617186) (not b!6795900) (not bs!1811166) (not b!6795873) (not b!6795703) (not bm!617229) (not b_lambda!256075) (not b!6795920) (not b_lambda!256063) (not b!6795839) (not bm!617275) (not bm!617213) (not b!6795757) (not bm!617284) (not d!2135199) (not b!6795435) (not b!6795869) (not b!6795809) (not b!6795361) (not b!6795329) (not b!6795487) (not d!2135267) (not bm!617240) (not b!6795464) (not bm!617254) (not b!6795761) (not b!6795907) (not b!6795701) (not d!2135155) (not b!6795702) (not bm!617278) (not bm!617271) (not bm!617211) (not bm!617246) (not b!6795827) (not b!6795743) tp_is_empty!42483 (not b!6795589) (not bm!617274) (not bm!617210) (not b!6795579) (not bm!617266) (not d!2135369) (not bm!617265) (not bm!617195) (not b_lambda!256069) (not b!6795606) (not b!6795818) (not b!6795909) (not b!6795314) (not b!6795742) (not b!6795477) (not b!6795444) (not b!6795537) (not b!6795913) (not bm!617260) (not bm!617183) (not b!6795895) (not b!6795906) (not bm!617197) (not b_lambda!256073) (not b!6795877) (not bm!617203) (not d!2135193) (not b!6795552) (not b!6795250) (not d!2135329) (not b!6795732) (not d!2135381) (not b!6795795) (not b!6795466) (not b!6795431) (not b!6795664) (not b!6795834) (not b_lambda!256081) (not b!6795669) (not b!6795835) (not b!6795814) (not d!2135223) (not d!2135189) (not b!6795657) (not b!6795699) (not b!6795696) (not b!6795595) (not b!6795847) (not d!2135299) (not bm!617206) (not setNonEmpty!46546) (not b!6795812) (not b!6795420) (not d!2135293) (not b!6795817) (not b!6795887) (not bm!617283) (not b!6795846) (not b!6795635) (not b_lambda!256057) (not b!6795803) (not d!2135169) (not b!6795737) (not bm!617281) (not b!6795912) (not b!6795469) (not setNonEmpty!46549) (not d!2135301) (not b!6795432) (not b!6795461) (not b!6795568) (not d!2135371) (not d!2135307) (not b!6795501) (not b!6795679) (not b!6795807) (not d!2135309) (not b!6795849) (not b!6795833) (not b!6795601) (not b!6795775) (not bm!617237) (not setNonEmpty!46545) (not b!6795602) (not b!6795562) (not b!6795350) (not d!2135339) (not bm!617188) (not b!6795863) (not b!6795512) (not d!2135425) (not bm!617171) (not d!2135203) (not b!6795663) (not b!6795571) (not d!2135215) (not b!6795802) (not d!2135187) (not b!6795759) (not b!6795736) (not bm!617287) (not b!6795494) (not b_lambda!255971) (not b!6795478) (not b!6795346) (not d!2135413) (not b!6795837) (not b!6795896) (not b!6795565) (not b!6795486) (not b!6795506) (not b!6795745) (not b!6795399) (not d!2135179) (not b!6795300) (not b!6795805) (not b!6795808) (not b!6795902) (not d!2135295) (not bs!1811160) (not b!6795845) (not d!2135323) (not d!2135305) (not b!6795820) (not b!6795718) (not b!6795921) (not b!6795816) (not b!6795799) (not bs!1811165) (not bm!617177) (not b!6795561) (not bs!1811167) (not bs!1811161) (not b!6795828) (not b!6795859) (not b!6795365) (not bm!617215) (not bm!617269) (not b!6795434) (not d!2135415) (not d!2135157) (not b!6795885) (not d!2135273) (not b!6795883) (not b!6795343) (not b!6795915) (not b!6795760) (not b!6795470) (not b!6795418) (not b!6795348) (not bm!617219) (not d!2135231) (not b!6795882) (not b!6795290) (not bm!617256) (not bm!617216) (not b!6795645) (not b!6795862) (not b!6795821) (not b!6795600) (not b!6795870) (not bm!617282) (not b!6795829) (not d!2135353) (not b_lambda!256067) (not d!2135191) (not d!2135409) (not bs!1811163) (not b!6795653) (not b!6795278) (not d!2135291) (not b!6795665) (not b!6795349) (not b!6795566) (not b!6795339) (not bm!617272) (not bm!617196) (not b!6795825) (not b!6795400) (not d!2135279) (not b!6795794) (not b!6795857) (not d!2135319) (not d!2135337) (not b!6795917) (not d!2135277) (not d!2135421) (not b!6795631) (not d!2135419) (not b!6795458) (not bm!617251) (not b!6795598) (not b!6795666) (not b!6795854) (not d!2135341) (not b!6795668) (not b!6795468) (not b!6795280) (not b_lambda!256071) (not b_lambda!255975) (not bm!617207) (not d!2135361) (not b!6795555) (not b_lambda!255977) (not b!6795908) (not b!6795813) (not d!2135317) (not b!6795779) (not b!6795347) (not b!6795851) (not bm!617204) (not bm!617192) (not b!6795707) (not b!6795746) (not b!6795297) (not d!2135333) (not b!6795360) (not bm!617230) (not bm!617199) (not d!2135283) (not bm!617238) (not b!6795919) (not b_lambda!255969) (not b!6795656) (not b!6795317) (not b!6795448) (not b!6795485) (not b!6795841) (not bm!617194) (not b!6795774) (not b!6795293) (not d!2135391) (not bm!617242) (not d!2135355) (not b!6795867) (not b!6795777) (not b!6795782) (not d!2135219) (not b_lambda!256065) (not b!6795292) (not b!6795554) (not b!6795471) (not d!2135417) (not d!2135217) (not b!6795716) (not b!6795498) (not b!6795788) (not b_lambda!256077) (not b!6795890) (not bm!617232) (not b!6795731) (not b!6795878) (not b!6795855) (not d!2135423) (not b!6795843) (not bm!617201) (not b!6795871) (not bm!617257) (not b!6795826) (not b!6795462) (not bm!617189) (not bm!617263) (not b!6795446) (not d!2135389) (not b!6795783) (not setNonEmpty!46550) (not bm!617288) (not b!6795866) (not b!6795557) (not bm!617241) (not bm!617235) (not b!6795301) (not b!6795304) (not b!6795508) (not b!6795771) (not b!6795781) (not bs!1811162) (not b!6795824) (not b!6795842) (not b!6795611) (not bm!617212) (not b!6795692) (not b!6795318) (not d!2135173) (not b!6795661) (not bm!617280) (not d!2135229) (not b!6795875) (not d!2135163) (not b!6795507) (not d!2135327) (not b!6795659) (not d!2135331) (not b!6795865) (not b!6795838) (not b_lambda!256061) (not setNonEmpty!46551) (not b!6795295) (not b!6795572) (not b!6795874) (not d!2135289) (not bm!617209) (not b!6795894) (not b_lambda!256059) (not bm!617180) (not b!6795408) (not d!2135303) (not b!6795791) (not d!2135237) (not bm!617259) (not b_lambda!255973) (not b!6795591) (not b!6795886) (not b!6795911) (not b!6795822) (not b!6795381) (not bm!617182) (not b!6795861) (not b!6795357) (not b!6795831) (not bm!617248) (not b!6795567) (not b!6795504) (not b!6795451) (not b!6795830) (not d!2135359) (not b!6795359) (not b_lambda!256079) (not setNonEmpty!46544) (not d!2135209) (not b!6795800) (not b!6795708) (not bm!617243) (not b!6795784) (not d!2135221) (not b!6795904) (not b!6795891) (not b!6795881) (not b!6795889) (not b!6795372) (not bm!617245) (not b!6795332) (not bm!617285) (not d!2135397) (not b!6795850) (not bm!617174))
(check-sat)
